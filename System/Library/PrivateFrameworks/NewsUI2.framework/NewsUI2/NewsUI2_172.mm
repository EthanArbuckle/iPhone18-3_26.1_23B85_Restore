void sub_219A14748(void *a1, void *a2)
{
  v4 = sub_219BF5154();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NewsAssetURLSchemeHandlerFactory();
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    sub_219BF5144();
    sub_219A14BB8();
    sub_219BF7894();
    v10 = *(v5 + 8);
    v10(v7, v4);
    v11 = sub_219BF53D4();

    [a1 registerFactory:v9 forScheme:v11];

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for NewsWebArchiveURLSchemeHandlerFactory();
    v12 = sub_219BE1E24();
    if (v12)
    {
      v13 = v12;
      sub_219BF5134();
      sub_219BF7894();
      v10(v7, v4);
      v14 = sub_219BF53D4();

      [a1 registerFactory:v13 forScheme:v14];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_219A1495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for WebEmbedRouter();
  v32[3] = v9;
  v32[4] = &off_282A58A50;
  v32[0] = a3;
  v30 = v8;
  v31 = &off_282A77528;
  v29[0] = a4;
  type metadata accessor for WebEmbedEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27 = v9;
  v28 = &off_282A58A50;
  v25 = &off_282A77528;
  *&v26 = v19;
  v24 = v8;
  *&v23 = v20;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v26, (v10 + 6));
  sub_2186CB1F0(&v23, (v10 + 11));
  *(a1 + 24) = &off_282A6FDB0;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v10;
}

unint64_t sub_219A14BB8()
{
  result = qword_280E8FCC8;
  if (!qword_280E8FCC8)
  {
    sub_219BF5154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FCC8);
  }

  return result;
}

void sub_219A14C10()
{
  if (!qword_27CC227F0)
  {
    type metadata accessor for WebEmbedResource();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC227F0);
    }
  }
}

uint64_t type metadata accessor for SharedWithYouFeedRefreshBlueprintModifier()
{
  result = qword_27CC22810;
  if (!qword_27CC22810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219A14CDC()
{
  result = type metadata accessor for SharedWithYouFeedRefreshResult();
  if (v1 <= 0x3F)
  {
    result = sub_219A14D60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_219A14D60()
{
  result = qword_27CC15C38;
  if (!qword_27CC15C38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC15C38);
  }

  return result;
}

uint64_t sub_219A14DC4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v54 = a3;
  v55 = a2;
  v4 = sub_219BE6DF4();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A15A20(0, &qword_27CC1DA28, MEMORY[0x277D6DF88]);
  v53 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v45 - v8);
  sub_219682348();
  MEMORY[0x28223BE20](v10 - 8);
  sub_219A15A20(0, &qword_27CC104F8, MEMORY[0x277D6EC60]);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  sub_218F93AE4(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SharedWithYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_218C87E5C(v16);
  sub_218C40594();
  v21 = v20;
  v22 = *(v20 - 8);
  if ((*(v22 + 48))(v16, 1, v20) == 1)
  {
    sub_219A15B84(v16, sub_218F93AE4);
LABEL_4:
    sub_219A15B14();
    *v9 = swift_allocError();
    v26 = v53;
    (*(v7 + 104))(v9, *MEMORY[0x277D6DF68], v53);
    v55(v9);
    return (*(v7 + 8))(v9, v26);
  }

  sub_219BE6934();
  (*(v22 + 8))(v16, v21);
  v23 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  v24 = (*(*(v23 - 8) + 48))(v19, 1, v23);
  v25 = sub_219A15B84(v19, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  if (v24 == 1)
  {
    goto LABEL_4;
  }

  MEMORY[0x28223BE20](v25);
  v43 = v46;
  v28 = sub_218F91E58(sub_219A15B68, v42);
  v29 = sub_219A15990(&qword_27CC1DA38, sub_218C40594);
  v30 = sub_219A15990(&qword_27CC1DA40, sub_218C40594);
  MEMORY[0x21CEB9170](v28, v21, v29, v30);
  v31 = type metadata accessor for SharedWithYouFeedModel(0);
  v32 = sub_219A15990(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  v33 = sub_219A15990(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
  v46 = v31;
  sub_219BEB2D4();
  v34 = sub_219462998();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for SharedWithYouFeedServiceConfig();
  sub_219A15990(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig);
  v35 = sub_219BEEFC4();

  v36 = 0;
  if (v35)
  {
    v36 = sub_219BEDC74();
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  v56 = v35;
  v59 = v36;
  v37 = v48;
  sub_219BEB2C4();
  sub_21885AB78(v34);
  v39 = v49;
  v38 = v50;
  v40 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277D6D868], v51);
  v41 = sub_219A15990(&qword_27CC203C0, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  v43 = v32;
  v44 = v33;
  v42[0] = v33;
  v42[1] = v41;
  sub_219BE85E4();
  (*(v38 + 8))(v39, v40);
  v55(v9);
  (*(v7 + 8))(v9, v53);
  return (*(v47 + 8))(v13, v37);
}

uint64_t sub_219A15520@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v4 = type metadata accessor for SharedWithYouFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for SharedWithYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40594();
  v18 = v17;
  sub_219BE6934();
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    v19 = *(v18 - 8);
    v20 = v34;
    (*(v19 + 16))(v34, a1, v18);
  }

  else
  {
    sub_218AC3514(v16, v13);
    v32 = v6;
    v21 = v33;
    v22 = *v33;
    v24 = *v13;
    v23 = *(v13 + 1);
    v25 = *(v7 + 20);
    v26 = sub_219BED8D4();
    (*(*(v26 - 8) + 16))(&v10[v25], &v13[v25], v26);
    *v10 = v24;
    *(v10 + 1) = v23;
    *&v10[*(v7 + 24)] = v22;
    refreshed = type metadata accessor for SharedWithYouFeedRefreshBlueprintModifier();
    __swift_project_boxed_opaque_existential_1((v21 + *(refreshed + 20)), *(v21 + *(refreshed + 20) + 24));
    v28 = v32;
    sub_218DED464(v10, v32);
    v29 = *(type metadata accessor for SharedWithYouFeedRefreshResult() + 20);

    v20 = v34;
    sub_21934DF3C(v28, v21 + v29, v34);
    sub_219A15B84(v28, type metadata accessor for SharedWithYouFeedGroup);
    sub_219A15B84(v10, type metadata accessor for ArticleListSharedWithYouFeedGroup);
    sub_219A15B84(v13, type metadata accessor for ArticleListSharedWithYouFeedGroup);
    v19 = *(v18 - 8);
  }

  return (*(v19 + 56))(v20, 0, 1, v18);
}

uint64_t sub_219A15894(uint64_t a1)
{
  v2 = sub_219A15990(&qword_27CC20778, type metadata accessor for SharedWithYouFeedRefreshBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_219A15990(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_219A15A20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_219A15990(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    v8[3] = sub_219A15990(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_219A15B14()
{
  result = qword_27CC22828;
  if (!qword_27CC22828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22828);
  }

  return result;
}

uint64_t sub_219A15B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219A15BF8()
{
  result = qword_27CC22830;
  if (!qword_27CC22830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22830);
  }

  return result;
}

uint64_t sub_219A15C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v48 = a2;
  v55 = a1;
  v4 = *v3;
  v50 = v3;
  v51 = v4;
  sub_21880B928();
  v47 = v5;
  v59 = *(v5 - 8);
  v49 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TodayPrewarmResult();
  v44 = *(v7 - 8);
  v60 = *(v44 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED184();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDBD34();
  v57 = v13;
  v52 = *(v13 - 8);
  v14 = v52;
  v45 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BDB184();
  v53 = *(v43 - 8);
  v17 = *(v53 + 64);
  v18 = MEMORY[0x28223BE20](v43);
  v58 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  sub_219BDBD24();
  v42 = v20;
  v56 = v16;
  sub_219BDB104();
  (*(v14 + 8))(v16, v13);
  sub_2187D9028();
  (*(v10 + 104))(v12, *MEMORY[0x277D851A8], v9);
  v21 = sub_219BF66E4();
  (*(v10 + 8))(v12, v9);
  v22 = v54;
  sub_219A1C6B0(v55, v54, type metadata accessor for TodayPrewarmResult);
  v23 = *(v44 + 80);
  v24 = swift_allocObject();
  v40 = type metadata accessor for TodayPrewarmResult;
  sub_219A1CDEC(v22, v24 + ((v23 + 16) & ~v23), type metadata accessor for TodayPrewarmResult);
  type metadata accessor for TodayFeedServiceConfig();
  v44 = sub_219BE31D4();

  v25 = v53;
  v26 = v43;
  (*(v53 + 16))(v58, v20, v43);
  v27 = v59;
  v29 = v46;
  v28 = v47;
  (*(v59 + 16))(v46, v48, v47);
  v30 = v52;
  (*(v52 + 16))(v56, v41, v57);
  sub_219A1C6B0(v55, v22, type metadata accessor for TodayPrewarmResult);
  v31 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v32 = (v17 + *(v27 + 80) + v31) & ~*(v27 + 80);
  v33 = (v49 + *(v30 + 80) + v32) & ~*(v30 + 80);
  v34 = (v45 + v23 + v33) & ~v23;
  v35 = swift_allocObject();
  v36 = *(v25 + 32);
  v37 = v26;
  v36(v35 + v31, v58, v26);
  (*(v59 + 32))(v35 + v32, v29, v28);
  (*(v52 + 32))(v35 + v33, v56, v57);
  sub_219A1CDEC(v54, v35 + v34, v40);
  v38 = sub_219BE2E54();
  sub_219BE2F94();

  return (*(v53 + 8))(v42, v37);
}

uint64_t sub_219A16284(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_219BDBD24();
  (*(v3 + 16))(v6, v8, v2);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v3 + 32))(v10 + v9, v6, v2);
  v11 = a1;
  sub_219BDD264();

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_219A16420(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v34 = a3;
  v35 = v7;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    sub_219A19A7C(v17, type metadata accessor for TodayModel);
    v27 = v4[5];
    ObjectType = swift_getObjectType();
    return (*(v27 + 64))(a1, a2, ObjectType, v27);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v30 = a1[3];
      v31 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v30);
      MEMORY[0x21CEC0B20](0, v30, v31);
      v25 = type metadata accessor for TodayModel;
      v26 = v17;
    }

    else
    {

      sub_2186EA920();
      v33 = *(v19 + 48);
      v20 = sub_219BDBD24();
      v32 = &v32;
      MEMORY[0x28223BE20](v20);
      *(&v32 - 4) = v4;
      *(&v32 - 3) = a1;
      v21 = v34;
      *(&v32 - 2) = a2;
      *(&v32 - 1) = v21;
      type metadata accessor for TodayExpandResult();
      sub_219BE3204();
      (*(v9 + 16))(v12, v14, v8);
      v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v23 = swift_allocObject();
      (*(v9 + 32))(v23 + v22, v12, v8);
      v24 = sub_219BE2E54();
      sub_219BE2F94();

      (*(v9 + 8))(v14, v8);
      v25 = type metadata accessor for TodayGapLocation;
      v26 = &v17[v33];
    }

    return sub_219A19A7C(v26, v25);
  }
}

uint64_t sub_219A167AC(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  sub_219A199D4(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  sub_218FBA648();
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  MEMORY[0x28223BE20](v6);
  v52 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TodayFeedGroup();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDBD34();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDB184();
  v43 = *(v17 - 8);
  v44 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD24();
  v53 = v19;
  sub_219BDB104();
  (*(v14 + 8))(v16, v13);
  v20 = *(a1 + 16);
  v21 = type metadata accessor for TodayFeedServiceConfig();
  v22 = sub_2187E1450(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
  v50 = v21;
  v51 = v20;
  v49 = v22;
  v23 = sub_219BEF3E4();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v48 + 88);
    v26 = *(v10 + 80);
    v42 = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v47 = *(v10 + 72);
    v48 = v25;
    v28 = v45;
    ++v46;
    while (1)
    {
      sub_219A1C6B0(v27, v12, type metadata accessor for TodayFeedGroup);
      sub_219BEF3D4();
      v33 = v52;
      sub_219BEE7B4();

      v34 = sub_219BF0C14();
      (*v46)(v33, v28);
      v35 = sub_218829720();
      if (!*(v34 + 16))
      {
        break;
      }

      v37 = sub_21870F700(v35, v36);
      v39 = v38;

      if ((v39 & 1) == 0)
      {
        goto LABEL_9;
      }

      v29 = *(v34 + 56);
      v30 = sub_219BEDFD4();
      v31 = v5;
      v32 = *(v30 - 8);
      (*(v32 + 16))(v31, v29 + *(v32 + 72) * v37, v30);

      (*(v32 + 56))(v31, 0, 1, v30);
      v5 = v31;
      v28 = v45;
LABEL_4:
      sub_2192B518C(v12, v53, v5);
      sub_219A1CD7C(v5, &qword_280E91DB0, MEMORY[0x277D31F08]);
      sub_219A19A7C(v12, type metadata accessor for TodayFeedGroup);
      v27 += v47;
      if (!--v24)
      {
        goto LABEL_10;
      }
    }

LABEL_9:

    v40 = sub_219BEDFD4();
    (*(*(v40 - 8) + 56))(v5, 1, 1, v40);
    goto LABEL_4;
  }

LABEL_10:

  return (*(v43 + 8))(v53, v44);
}

uint64_t sub_219A16D64(uint64_t a1)
{
  v2 = v1;
  sub_219A199D4(0, qword_280ED9010, type metadata accessor for TodayRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for TodayRouteModel();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[5];
  ObjectType = swift_getObjectType();
  sub_2196F5644(a1, ObjectType, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_219A1CD7C(v6, qword_280ED9010, type metadata accessor for TodayRouteModel);
    return 0;
  }

  else
  {
    sub_219A1CDEC(v6, v10, type metadata accessor for TodayRouteModel);
    __swift_project_boxed_opaque_existential_1(v2 + 6, v2[9]);
    v14 = sub_218F1DEA0(v10);
    sub_219A19A7C(v10, type metadata accessor for TodayRouteModel);
    return v14;
  }
}

uint64_t sub_219A16F5C(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v3 = type metadata accessor for EngagementAction();
  v63 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v64 = v5;
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - v6;
  v8 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v56 - v10;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v67 = sub_219BE3794();
  v61 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDBD64();
  v59 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A199D4(0, &unk_280EE6660, MEMORY[0x277D31550], v8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v56 - v19;
  v21 = sub_219BE3514();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE39E4();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_219A1CD7C(v20, &unk_280EE6660, MEMORY[0x277D31550]);
    v25 = v69;
  }

  else
  {
    v56 = v22;
    v26 = *(v22 + 32);
    v60 = v24;
    v62 = v21;
    v26(v24, v20, v21);
    v27 = sub_219BE39A4();
    if (v28)
    {
      v57 = v28;
      v58 = v27;
    }

    else
    {
      sub_219BDBD54();
      v58 = sub_219BDBD44();
      v57 = v29;
      (*(v59 + 8))(v17, v15);
    }

    v30 = v61;
    v31 = v66;
    v61 = a2;
    sub_219BE39C4();
    v32 = v30;
    v33 = *(v30 + 48);
    v34 = v67;
    v35 = v33(v13, 1, v67);
    v36 = v56;
    v37 = v3;
    if (v35 == 1)
    {
      (*(v32 + 104))(v31, *MEMORY[0x277D31670], v34);
      v38 = v33(v13, 1, v34);
      v39 = v32;
      if (v38 != 1)
      {
        sub_219A1CD7C(v13, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v32 + 32))(v31, v13, v34);
      v39 = v32;
    }

    v40 = sub_219BE39D4();
    v42 = v41;
    v43 = v68;
    sub_219BE39B4();
    (*(v36 + 16))(v7, v60, v62);
    v44 = v37[6];
    v45 = sub_219BDB954();
    (*(*(v45 - 8) + 16))(&v7[v44], v70, v45);
    v46 = v66;
    (*(v39 + 16))(&v7[v37[7]], v66, v34);
    v47 = MEMORY[0x277D318F8];
    sub_219A1CBA8(v43, &v7[v37[9]], &qword_280EE6510, MEMORY[0x277D318F8]);
    v48 = &v7[v37[5]];
    v49 = v57;
    *v48 = v58;
    v48[1] = v49;
    v50 = &v7[v37[8]];
    *v50 = v40;
    v50[1] = v42;
    v25 = v69;
    v51 = v65;
    sub_219A1C6B0(v7, v65, type metadata accessor for EngagementAction);
    v52 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v53 = swift_allocObject();
    sub_219A1CDEC(v51, v53 + v52, type metadata accessor for EngagementAction);
    sub_219BDD154();

    sub_219A19A7C(v7, type metadata accessor for EngagementAction);
    sub_219A1CD7C(v68, &qword_280EE6510, v47);
    (*(v39 + 8))(v46, v67);
    (*(v36 + 8))(v60, v62);
  }

  v54 = __swift_project_boxed_opaque_existential_1((v25 + 48), *(v25 + 72));
  __swift_project_boxed_opaque_existential_1((*v54 + 24), *(*v54 + 48));
  sub_2186CFDE4(0, &qword_280EE5700);
  result = sub_219BE1E34();
  if (v72)
  {
    sub_2186CB1F0(&v71, v73);
    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    sub_219BE6DC4();
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A17764(uint64_t a1)
{
  v50 = a1;
  v58 = sub_219BDBD34();
  v54 = *(v58 - 8);
  v1 = MEMORY[0x28223BE20](v58);
  v56 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v2;
  MEMORY[0x28223BE20](v1);
  v59 = &v46 - v3;
  v4 = type metadata accessor for EngagementPresentation();
  v51 = *(v4 - 1);
  v5 = MEMORY[0x28223BE20](v4);
  v52 = v6;
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v46 - v7;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = sub_219BE3794();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDBD64();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE39A4();
  if (v20)
  {
    v21 = v20;
    v48 = v19;
  }

  else
  {
    sub_219BDBD54();
    v48 = sub_219BDBD44();
    v21 = v22;
    (*(v16 + 8))(v18, v15);
  }

  sub_219BE39C4();
  v23 = *(v12 + 48);
  v24 = v11;
  if (v23(v10, 1, v11) == 1)
  {
    (*(v12 + 104))(v14, *MEMORY[0x277D31670], v11);
    if (v23(v10, 1, v11) != 1)
    {
      sub_219A1CD7C(v10, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v46 = v12;
  v47 = v14;
  v25 = sub_219BE39D4();
  v27 = v26;
  v28 = sub_219BE3514();
  v29 = v49;
  (*(*(v28 - 8) + 16))(v49, v50, v28);
  (*(v12 + 16))(v29 + v4[6], v14, v24);
  v30 = v4[8];
  v31 = sub_219BE3C04();
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  v32 = (v29 + v4[5]);
  *v32 = v48;
  v32[1] = v21;
  v33 = (v29 + v4[7]);
  *v33 = v25;
  v33[1] = v27;
  v34 = *(v55 + 88);
  v35 = v59;
  sub_219BDBD24();
  v55 = *(v34 + 32);
  v36 = v53;
  sub_219A1C6B0(v29, v53, type metadata accessor for EngagementPresentation);
  v37 = v54;
  v38 = v56;
  v39 = v58;
  (*(v54 + 16))(v56, v35, v58);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = (v52 + *(v37 + 80) + v40) & ~*(v37 + 80);
  v42 = v57 + v41 + 7;
  v57 = v24;
  v43 = v42 & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  sub_219A1CDEC(v36, v44 + v40, type metadata accessor for EngagementPresentation);
  (*(v37 + 32))(v44 + v41, v38, v39);
  *(v44 + v43) = v34;
  swift_unknownObjectRetain();
  sub_219BDD154();

  (*(v37 + 8))(v59, v39);
  sub_219A19A7C(v29, type metadata accessor for EngagementPresentation);
  return (*(v46 + 8))(v47, v57);
}

uint64_t sub_219A17DB8(uint64_t a1)
{
  v2 = type metadata accessor for EngagementDismissal();
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v8 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v59 = &v52 - v10;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  v63 = sub_219BE3794();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v64 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDBD64();
  v56 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v8;
  v19 = a1;
  sub_219A199D4(0, &unk_280EE6660, MEMORY[0x277D31550], v18);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v52 - v21;
  v23 = sub_219BE3514();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE39E4();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_219A1CD7C(v22, &unk_280EE6660, MEMORY[0x277D31550]);
  }

  v28 = *(v24 + 32);
  v57 = v26;
  v28(v26, v22, v23);
  v29 = sub_219BE39A4();
  v55 = v4;
  if (v30)
  {
    v53 = v30;
    v54 = v29;
  }

  else
  {
    sub_219BDBD54();
    v31 = sub_219BDBD44();
    v53 = v32;
    v54 = v31;
    (*(v56 + 8))(v17, v15);
  }

  v33 = v63;
  v56 = v19;
  sub_219BE39C4();
  v34 = v58;
  v35 = *(v58 + 48);
  v36 = v35(v13, 1, v33);
  v37 = v64;
  if (v36 == 1)
  {
    (*(v34 + 104))(v64, *MEMORY[0x277D31670], v33);
    v38 = v35(v13, 1, v33);
    v39 = v33;
    if (v38 != 1)
    {
      sub_219A1CD7C(v13, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v34 + 32))(v64, v13, v33);
    v39 = v33;
  }

  v40 = sub_219BE39D4();
  v42 = v41;
  v43 = v59;
  sub_219BE39B4();
  (*(v24 + 16))(v7, v57, v23);
  v44 = v60;
  (*(v34 + 16))(&v7[v60[6]], v37, v39);
  v45 = MEMORY[0x277D318F8];
  sub_219A1CBA8(v43, &v7[v44[8]], &qword_280EE6510, MEMORY[0x277D318F8]);
  v46 = &v7[v44[5]];
  v47 = v53;
  *v46 = v54;
  *(v46 + 1) = v47;
  v48 = &v7[v44[7]];
  *v48 = v40;
  v48[1] = v42;
  v49 = v62;
  sub_219A1C6B0(v7, v62, type metadata accessor for EngagementDismissal);
  v50 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v51 = swift_allocObject();
  sub_219A1CDEC(v49, v51 + v50, type metadata accessor for EngagementDismissal);
  sub_219BDD154();

  sub_219A19A7C(v7, type metadata accessor for EngagementDismissal);
  sub_219A1CD7C(v43, &qword_280EE6510, v45);
  (*(v34 + 8))(v64, v63);
  return (*(v24 + 8))(v57, v23);
}

void sub_219A18494(uint64_t a1)
{
  v2 = sub_219BDBD34();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  sub_219A199D4(0, qword_280EC88A0, type metadata accessor for EngagementPresentation, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for EngagementPresentation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;

  sub_21912FF50(v17, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_219A1CD7C(v9, qword_280EC88A0, type metadata accessor for EngagementPresentation);
    if (qword_280EE5F08 != -1)
    {
      swift_once();
    }

    v18 = sub_219BE5434();
    __swift_project_value_buffer(v18, qword_280F62520);

    v19 = sub_219BE5414();
    v20 = sub_219BF61F4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136315138;
      v23 = sub_219BE39F4();
      v24 = MEMORY[0x21CECC6D0](a1, v23);
      v26 = sub_2186D1058(v24, v25, &v41);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2186C1000, v19, v20, "requestEnqueuedImpression: Failed to create engagement presentation from options: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x21CECF960](v22, -1, -1);
      MEMORY[0x21CECF960](v21, -1, -1);
    }
  }

  else
  {
    v36 = type metadata accessor for EngagementPresentation;
    sub_219A1CDEC(v9, v16, type metadata accessor for EngagementPresentation);
    v27 = *(v38 + 88);
    v28 = v6;
    v37 = v6;
    sub_219BDBD24();
    v38 = *(v27 + 32);
    sub_219A1C6B0(v16, v14, type metadata accessor for EngagementPresentation);
    v29 = v39;
    v30 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v40;
    (*(v39 + 16))(v30, v28, v40);
    v32 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v33 = (v12 + *(v29 + 80) + v32) & ~*(v29 + 80);
    v34 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_219A1CDEC(v14, v35 + v32, v36);
    (*(v29 + 32))(v35 + v33, v30, v31);
    *(v35 + v34) = v27;
    swift_unknownObjectRetain();
    sub_219BDD154();

    (*(v29 + 8))(v37, v31);
    sub_219A19A7C(v16, type metadata accessor for EngagementPresentation);
  }
}

uint64_t sub_219A18974(void *a1)
{
  result = [a1 isBeingDismissed];
  if ((result & 1) == 0)
  {
    if (qword_280EE93E0 != -1)
    {
      swift_once();
    }

    sub_2187E1450(qword_280ED4780, v4, type metadata accessor for TodayEventHandler);
    sub_219BDC7D4();
    v5 = *v11;
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D839F8];
    *(v6 + 16) = xmmword_219C09BA0;
    v8 = MEMORY[0x277D83A80];
    *(v6 + 56) = v7;
    *(v6 + 64) = v8;
    *(v6 + 32) = v5;
    sub_219BF6214();
    sub_219BE5314();

    sub_218718690(v1 + 48, v11);
    v9 = swift_allocObject();
    sub_2186CB1F0(v11, v9 + 16);
    *(v9 + 56) = a1;
    v10 = a1;
    sub_219BE1B14();
  }

  return result;
}

uint64_t sub_219A18B74()
{
  sub_2193A4C80(0);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  type metadata accessor for TodayFeedServiceConfig();
  v1 = sub_219BE2F74();

  return v1;
}

void sub_219A18C20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a6;
  v97 = a5;
  v102 = a4;
  v103 = a3;
  v100 = a1;
  v7 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);
  v83 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v79 - v11;
  sub_218FBA648();
  v82 = v13;
  v80 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v79 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218811810(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v89 = v15;
  v87 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v106 = &v79 - v16;
  sub_218A1AC00();
  v88 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v105 = v20;
  v96 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v95 = v21;
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDB184();
  v94 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v93 = v23;
  v101 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A199D4(0, &qword_280EE9C40, MEMORY[0x277CC9578], v7);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v79 - v25;
  v27 = sub_219BDBD34();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a2 + 88);
  v99 = *v100;
  v100 = v31;
  sub_219BEDDD4();
  v32 = *(v28 + 48);
  v33 = v32(v26, 1, v27);
  v86 = v12;
  v98 = v22;
  if (v33 == 1)
  {
    sub_219BDBBD4();
    if (v32(v26, 1, v27) != 1)
    {
      sub_219A1CD7C(v26, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v28 + 32))(v30, v26, v27);
  }

  LODWORD(v97) = sub_219BDBC14();
  (*(v28 + 8))(v30, v27);
  v34 = v100;
  v35 = v94;
  v90 = *(v94 + 16);
  v36 = v101;
  v90(v101, v103, v104);
  v37 = *(v35 + 80);
  v38 = (v37 + 24) & ~v37;
  v91 = v38 + v93;
  v92 = v38;
  v93 = v37 | 7;
  v39 = swift_allocObject();
  *(v39 + 16) = v99;
  v94 = *(v35 + 32);
  v40 = v39 + v38;
  v41 = v36;
  v42 = v36;
  v43 = v104;
  (v94)(v40, v41, v104);

  sub_219BDD264();

  v44 = swift_allocObject();
  *(v44 + 24) = v34[49];
  swift_unknownObjectWeakInit();
  v90(v42, v103, v43);
  v45 = v96;
  v46 = *(v96 + 16);
  v47 = v98;
  v48 = v105;
  v103 = v96 + 16;
  v90 = v46;
  v46(v98, v102, v105);
  v49 = (v91 + *(v45 + 80)) & ~*(v45 + 80);
  v50 = v49 + v95;
  v51 = swift_allocObject();
  *(v51 + 16) = v44;
  (v94)(v51 + v92, v101, v104);
  v52 = v51 + v49;
  v53 = v48;
  v54 = v47;
  v55 = v102;
  (*(v45 + 32))(v52, v54, v53);
  *(v51 + v50) = v97 & 1;

  sub_219BE3494();

  sub_2187E1450(&qword_280EE3730, 255, sub_21880B928);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (v107[0] == v107[6])
  {
    sub_219BDD264();
    return;
  }

  v90(v54, v55, v53);
  sub_2187E1450(&qword_280EE3738, 255, sub_21880B928);
  sub_219BF56A4();
  v56 = *(v88 + 36);
  sub_219BF5E84();
  v57 = v89;
  if (*&v19[v56] == v107[0])
  {
LABEL_9:
    sub_219A19A7C(v19, sub_218A1AC00);
    v58 = NewsCoreUserDefaults();
    v59 = [v58 BOOLForKey_];

    if ((v59 & 1) == 0)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_2187E1450(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig);
      sub_219BEF3D4();
      v60 = v79;
      sub_219BEE7B4();

      v61 = v82;
      v62 = sub_219BF0C24();
      (*(v80 + 8))(v60, v61);
      if (*(v62 + 16))
      {
        v63 = sub_219BEDFD4();
        v64 = *(v63 - 8);
        v65 = v86;
        (*(v64 + 16))(v86, v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v63);

        (*(v64 + 56))(v65, 0, 1, v63);
      }

      else
      {

        v74 = sub_219BEDFD4();
        v65 = v86;
        (*(*(v74 - 8) + 56))(v86, 1, 1, v74);
      }

      v75 = MEMORY[0x277D31F08];
      v76 = v85;
      sub_219A1CBA8(v65, v85, &qword_280E91DB0, MEMORY[0x277D31F08]);
      v77 = (*(v83 + 80) + 24) & ~*(v83 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = v99;
      sub_219A1CC28(v76, v78 + v77);

      sub_219BDD264();

      sub_219A1CD7C(v65, &qword_280E91DB0, v75);
    }

    return;
  }

  v66 = (v87 + 16);
  v67 = (v87 + 8);
  while (1)
  {
    v68 = sub_219BF5EC4();
    v69 = v106;
    (*v66)(v106);
    v68(v107, 0);
    sub_219BF5E94();
    sub_219BE6934();
    if (((v107[0] >> 58) & 0x3C | (LODWORD(v107[0]) >> 1) & 3) != 1)
    {
      (*v67)(v69, v57);

      goto LABEL_13;
    }

    v70 = type metadata accessor for CuratedTodayFeedGroup();
    v71 = (swift_projectBox() + *(v70 + 20));
    if (*v71 == 0x69726F7453706F74 && v71[1] == 0xEA00000000007365)
    {
      break;
    }

    v73 = sub_219BF78F4();
    (*v67)(v106, v57);

    if (v73)
    {
      goto LABEL_24;
    }

LABEL_13:
    sub_219BF5E84();
    if (*&v19[v56] == v107[0])
    {
      goto LABEL_9;
    }
  }

  (*v67)(v106, v57);

LABEL_24:
  sub_219A19A7C(v19, sub_218A1AC00);
}

uint64_t sub_219A19964()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_219A199D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A19A7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A19B08(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v2 = sub_219BDBD34();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v74 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v4;
  MEMORY[0x28223BE20](v3);
  v77 = &v64 - v5;
  v6 = type metadata accessor for EngagementPresentation();
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v69 = v9;
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v64 - v10;
  v11 = sub_219BE3514();
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v84 = &v64 - v16;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], v14);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v64 - v18;
  v20 = sub_219BE3794();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A199D4(0, &unk_280EE6660, MEMORY[0x277D31550], v14);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v79 = &v64 - v28;
  sub_219BE39E4();
  v66 = sub_219BE39A4();
  v30 = v29;
  sub_219BE39C4();
  v31 = v21[6];
  v32 = v31(v19, 1, v20);
  v80 = v21;
  v81 = v20;
  v78 = v13;
  if (v32 == 1)
  {
    v33 = v21[13];
    v34 = v23;
    v33(v23, *MEMORY[0x277D31670], v20);
    if (v31(v19, 1, v20) != 1)
    {
      sub_219A1CD7C(v19, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    v35 = v21[4];
    v34 = v23;
    v35(v23, v19, v20);
  }

  v36 = sub_219BE39D4();
  v38 = v37;
  v39 = v84;
  sub_219BE39B4();
  v40 = v79;
  sub_219A1CBA8(v79, v27, &unk_280EE6660, MEMORY[0x277D31550]);
  v42 = v82;
  v41 = v83;
  if ((*(v82 + 48))(v27, 1, v83) == 1)
  {

    sub_219A1CD7C(v39, &qword_280EE6510, MEMORY[0x277D318F8]);
    (v80[1])(v34, v81);
    sub_219A1CD7C(v40, &unk_280EE6660, MEMORY[0x277D31550]);
    v40 = v27;
  }

  else
  {
    v43 = v78;
    (*(v42 + 32))(v78, v27, v41);
    v44 = v34;
    if (v30)
    {
      v45 = v43;
      v46 = v73;
      (*(v42 + 16))(v73, v45, v41);
      v47 = v67;
      (v80[2])(v46 + v67[6], v34, v81);
      v48 = v47[8];
      v65 = MEMORY[0x277D318F8];
      sub_219A1CBA8(v84, v46 + v48, &qword_280EE6510, MEMORY[0x277D318F8]);
      v49 = (v46 + v47[5]);
      *v49 = v66;
      v49[1] = v30;
      v50 = (v46 + v47[7]);
      *v50 = v36;
      v50[1] = v38;
      v51 = *(v71 + 88);
      v52 = v77;
      sub_219BDBD24();
      v71 = *(v51 + 32);
      v53 = v70;
      sub_219A1C6B0(v46, v70, type metadata accessor for EngagementPresentation);
      v54 = v74;
      v55 = v75;
      v56 = v76;
      (*(v75 + 16))(v74, v52, v76);
      v57 = (*(v68 + 80) + 16) & ~*(v68 + 80);
      v58 = (v69 + *(v55 + 80) + v57) & ~*(v55 + 80);
      v59 = &v72[v58 + 7] & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      v72 = v44;
      v61 = v60;
      sub_219A1CDEC(v53, v60 + v57, type metadata accessor for EngagementPresentation);
      v62 = v61 + v58;
      v40 = v79;
      (*(v55 + 32))(v62, v54, v56);
      *(v61 + v59) = v51;
      swift_unknownObjectRetain();
      sub_219BDD154();

      (*(v55 + 8))(v77, v56);
      sub_219A19A7C(v46, type metadata accessor for EngagementPresentation);
      (*(v82 + 8))(v78, v83);
      sub_219A1CD7C(v84, &qword_280EE6510, v65);
      (v80[1])(v72, v81);
    }

    else
    {

      (*(v42 + 8))(v43, v41);
      sub_219A1CD7C(v84, &qword_280EE6510, MEMORY[0x277D318F8]);
      (v80[1])(v34, v81);
    }
  }

  return sub_219A1CD7C(v40, &unk_280EE6660, MEMORY[0x277D31550]);
}

void sub_219A1A39C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    v7 = swift_getObjectType();
    v8 = sub_2187E1450(&qword_280ECFA70, 255, type metadata accessor for TodayViewController);
    (*(v6 + 24))(a2, v8, a1, v7, v6);
    swift_unknownObjectRelease();
  }

  v9 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_miniMastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    v11 = swift_getObjectType();
    v12 = sub_2187E1450(&qword_280ECFA70, 255, type metadata accessor for TodayViewController);
    (*(v10 + 24))(a2, v12, a1, v11, v10);
    swift_unknownObjectRelease();
  }

  v13 = sub_2187E1450(&qword_280ECFA70, 255, type metadata accessor for TodayViewController);
  v14 = MEMORY[0x21CEBCBD0](ObjectType, v13);
  if (v14)
  {
    v15 = v14;
    swift_getObjectType();
    sub_219BE9114();
  }

  if ((sub_219BED0C4() & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v5 + 8);
    v17 = swift_getObjectType();
    LOBYTE(v16) = (*(v16 + 48))(a2, v13, v17, v16);
    swift_unknownObjectRelease();
    if ((v16 & 1) == 0)
    {
      sub_219791074(1);
    }
  }
}

uint64_t sub_219A1A5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v72 = a1;
  v67 = sub_219BDBD34();
  v64 = *(v67 - 8);
  v3 = MEMORY[0x28223BE20](v67);
  v65 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v4;
  MEMORY[0x28223BE20](v3);
  v66 = &v56 - v5;
  v6 = type metadata accessor for EngagementPresentation();
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v60 = v9;
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v56 - v10;
  v11 = sub_219BE3514();
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x28223BE20](v11);
  v68 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v56 - v15;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], v13);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v56 - v17;
  v19 = sub_219BE3794();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A199D4(0, &unk_280EE6660, MEMORY[0x277D31550], v13);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  sub_219BE39E4();
  v57 = sub_219BE39A4();
  v30 = v29;
  sub_219BE39C4();
  v31 = *(v20 + 48);
  if (v31(v18, 1, v19) == 1)
  {
    (*(v20 + 104))(v22, *MEMORY[0x277D31670], v19);
    if (v31(v18, 1, v19) != 1)
    {
      sub_219A1CD7C(v18, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
  }

  v69 = v22;
  v32 = sub_219BE39D4();
  v34 = v33;
  v35 = v70;
  sub_219BE39B4();
  sub_219A1CBA8(v28, v26, &unk_280EE6660, MEMORY[0x277D31550]);
  v36 = v73;
  v37 = v74;
  if ((*(v73 + 48))(v26, 1, v74) == 1)
  {

    sub_219A1CD7C(v26, &unk_280EE6660, MEMORY[0x277D31550]);
    v38 = v72;
    goto LABEL_13;
  }

  v56 = v32;
  v39 = v68;
  (*(v36 + 32))(v68, v26, v37);
  v38 = v72;
  if (v72)
  {
    if (v30)
    {
      v40 = v63;
      (*(v73 + 16))(v63, v68, v74);
      v41 = v58;
      (*(v20 + 16))(v40 + v58[6], v69, v19);
      sub_219A1CBA8(v35, v40 + v41[8], &qword_280EE6510, MEMORY[0x277D318F8]);
      v42 = (v40 + v41[5]);
      v43 = v56;
      *v42 = v57;
      v42[1] = v30;
      v44 = (v40 + v41[7]);
      *v44 = v43;
      v44[1] = v34;
      v57 = *(v71 + 88);
      v45 = v57;
      v46 = v66;
      sub_219BDBD24();
      v58 = *(v45 + 32);
      v47 = v61;
      sub_219A1C6B0(v40, v61, type metadata accessor for EngagementPresentation);
      v48 = v64;
      (*(v64 + 16))(v65, v46, v67);
      v49 = (*(v59 + 80) + 16) & ~*(v59 + 80);
      v50 = (v60 + *(v48 + 80) + v49) & ~*(v48 + 80);
      v51 = (v62 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      sub_219A1CDEC(v47, v52 + v49, type metadata accessor for EngagementPresentation);
      v53 = v67;
      (*(v48 + 32))(v52 + v50, v65, v67);
      *(v52 + v51) = v57;
      v38 = v72;
      swift_unknownObjectRetain();
      sub_219BDD154();
      v35 = v70;

      (*(v48 + 8))(v66, v53);
      sub_219A19A7C(v40, type metadata accessor for EngagementPresentation);
      (*(v73 + 8))(v68, v74);
      goto LABEL_13;
    }

    (*(v73 + 8))(v68, v74);
  }

  else
  {
    (*(v36 + 8))(v39, v37);
  }

LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_219A1A39C(v38, Strong);
    swift_unknownObjectRelease();
  }

  sub_219A1CD7C(v35, &qword_280EE6510, MEMORY[0x277D318F8]);
  (*(v20 + 8))(v69, v19);
  return sub_219A1CD7C(v28, &unk_280EE6660, MEMORY[0x277D31550]);
}

uint64_t sub_219A1AE58(uint64_t a1, uint64_t a2)
{
  sub_219A199D4(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for TodayExpandContext();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE6DF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21978B8F4(result, a1, v13);
    (*(v11 + 16))(v6, v13, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    sub_218809CC0(v6, v9);
    sub_219A1CD7C(v6, &unk_280EE56F0, MEMORY[0x277D6D878]);
    v15 = *(a2 + 40);
    ObjectType = swift_getObjectType();
    (*(v15 + 72))(a1, v9, ObjectType, v15);
    swift_unknownObjectRelease();
    sub_219A19A7C(v9, type metadata accessor for TodayExpandContext);
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_219A1B0CC(uint64_t a1)
{
  sub_219A199D4(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TodayExpandContext();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = sub_219BE6DF4();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_218809CC0(v4, v7);
    sub_219A1CD7C(v4, &unk_280EE56F0, MEMORY[0x277D6D878]);
    v10 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 96))(v7, ObjectType, v10);
    swift_unknownObjectRelease();
    return sub_219A19A7C(v7, type metadata accessor for TodayExpandContext);
  }

  return result;
}

uint64_t sub_219A1B288(void *a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v107 = a1;
  v89 = type metadata accessor for EngagementAction();
  v90 = *(v89 - 8);
  v4 = MEMORY[0x28223BE20](v89);
  v92 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v5;
  MEMORY[0x28223BE20](v4);
  v94 = &v86 - v6;
  v7 = sub_219BDB954();
  v100 = *(v7 - 8);
  v101 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v88 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v86 - v10;
  v95 = type metadata accessor for EngagementDismissal();
  v96 = *(v95 - 8);
  v11 = *(v96 + 64);
  v12 = MEMORY[0x28223BE20](v95);
  v97 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = &v86 - v13;
  v14 = MEMORY[0x277D83D88];
  sub_219A199D4(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v108 = &v86 - v16;
  sub_219A199D4(0, &unk_280EE6610, MEMORY[0x277D31680], v14);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v86 - v18;
  v109 = sub_219BE3794();
  v106 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v110 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BDBD64();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A199D4(0, &unk_280EE6660, MEMORY[0x277D31550], v14);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v86 - v26;
  v28 = sub_219BE3514();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE39E4();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_219A1CD7C(v27, &unk_280EE6660, MEMORY[0x277D31550]);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C09BA0;
    sub_219A199D4(0, &qword_27CC22838, MEMORY[0x277D31800], MEMORY[0x277D83940]);
    *(v32 + 56) = v33;
    *(v32 + 64) = sub_219A1C0E4();
    *(v32 + 32) = a2;

    sub_219BE5314();
  }

  else
  {
    v99 = v29;
    v35 = *(v29 + 32);
    v103 = v28;
    v35(v31, v27, v28);
    v87 = sub_219BE39A4();
    v105 = v36;
    v102 = v31;
    if (!v36)
    {
      sub_219BDBD54();
      v87 = sub_219BDBD44();
      v105 = v37;
      (*(v22 + 8))(v24, v21);
    }

    v38 = v108;
    sub_219BE39C4();
    v39 = v106;
    v40 = *(v106 + 48);
    v41 = v109;
    v42 = v40(v19, 1, v109);
    v43 = v107;
    if (v42 == 1)
    {
      (*(v39 + 104))(v110, *MEMORY[0x277D31670], v41);
      if (v40(v19, 1, v41) != 1)
      {
        sub_219A1CD7C(v19, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v39 + 32))(v110, v19, v41);
    }

    v44 = sub_219BE39D4();
    v46 = v45;
    sub_219BE39B4();
    if ([v43 style] == 2)
    {
      v47 = v38;
      v48 = v110;
      v49 = v103;
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      sub_219BE5314();
      v50 = v98;
      (*(v99 + 16))(v98, v102, v49);
      v51 = v95;
      (*(v39 + 16))(v50 + *(v95 + 24), v48, v41);
      sub_219A1CBA8(v47, v50 + v51[8], &qword_280EE6510, MEMORY[0x277D318F8]);
      v52 = (v50 + v51[5]);
      v53 = v105;
      *v52 = v87;
      v52[1] = v53;
      v54 = (v50 + v51[7]);
      *v54 = v44;
      v54[1] = v46;
      v55 = v44;
      v56 = v46;
      v57 = v97;
      sub_219A1C6B0(v50, v97, type metadata accessor for EngagementDismissal);
      v58 = (*(v96 + 80) + 16) & ~*(v96 + 80);
      v59 = swift_allocObject() + v58;
      v60 = v57;
      v46 = v56;
      v44 = v55;
      sub_219A1CDEC(v60, v59, type metadata accessor for EngagementDismissal);

      v41 = v109;

      sub_219BDD154();

      v61 = v50;
      v38 = v108;
      sub_219A19A7C(v61, type metadata accessor for EngagementDismissal);
      v43 = v107;
    }

    if ([v43 style])
    {

      sub_219A1CD7C(v38, &qword_280EE6510, MEMORY[0x277D318F8]);
      (*(v39 + 8))(v110, v41);
      return (*(v99 + 8))(v102, v103);
    }

    else
    {
      v62 = [v43 deepLink];
      v63 = v110;
      v64 = v103;
      v65 = v99;
      if (v62)
      {
        v66 = v44;
        v107 = v46;
        v67 = v88;
        v68 = v62;
        sub_219BDB8B4();

        v69 = v93;
        (*(v100 + 32))(v93, v67, v101);
        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        sub_2186F20D4();
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_219C09BA0;
        v71 = sub_219BDB804();
        v73 = v72;
        *(v70 + 56) = MEMORY[0x277D837D0];
        *(v70 + 64) = sub_2186FC3BC();
        *(v70 + 32) = v71;
        *(v70 + 40) = v73;
        sub_219BF6214();
        sub_219BE5314();

        v74 = v94;
        (*(v65 + 16))(v94, v102, v64);
        v75 = v89;
        (*(v100 + 16))(v74 + *(v89 + 24), v69, v101);
        v76 = v106;
        (*(v106 + 16))(v74 + v75[7], v110, v41);
        sub_219A1CBA8(v38, v74 + v75[9], &qword_280EE6510, MEMORY[0x277D318F8]);
        v77 = (v74 + v75[5]);
        v79 = v104;
        v78 = v105;
        *v77 = v87;
        v77[1] = v78;
        v80 = (v74 + v75[8]);
        v81 = v107;
        *v80 = v66;
        v80[1] = v81;
        v82 = v92;
        sub_219A1C6B0(v74, v92, type metadata accessor for EngagementAction);
        v83 = (*(v90 + 80) + 16) & ~*(v90 + 80);
        v84 = swift_allocObject();
        sub_219A1CDEC(v82, v84 + v83, type metadata accessor for EngagementAction);
        sub_219BDD154();

        v85 = __swift_project_boxed_opaque_existential_1((v79 + 48), *(v79 + 72));
        __swift_project_boxed_opaque_existential_1((*v85 + 24), *(*v85 + 48));
        sub_2186CFDE4(0, &qword_280EE5700);
        result = sub_219BE1E34();
        if (v112)
        {
          sub_2186CB1F0(&v111, v113);
          __swift_project_boxed_opaque_existential_1(v113, v113[3]);
          sub_219BE6DC4();
          sub_219A19A7C(v74, type metadata accessor for EngagementAction);
          (*(v100 + 8))(v69, v101);
          sub_219A1CD7C(v38, &qword_280EE6510, MEMORY[0x277D318F8]);
          (*(v76 + 8))(v110, v109);
          (*(v65 + 8))(v102, v103);
          return __swift_destroy_boxed_opaque_existential_1(v113);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        sub_219A1CD7C(v38, &qword_280EE6510, MEMORY[0x277D318F8]);
        (*(v39 + 8))(v63, v41);
        return (*(v65 + 8))(v102, v64);
      }
    }
  }

  return result;
}

unint64_t sub_219A1C0E4()
{
  result = qword_27CC22840;
  if (!qword_27CC22840)
  {
    sub_219A199D4(255, &qword_27CC22838, MEMORY[0x277D31800], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22840);
  }

  return result;
}

uint64_t objectdestroy_65Tm_1()
{
  v1 = (type metadata accessor for EngagementAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BE3514();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
  v5 = sub_219BDB954();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = v1[9];
  v7 = sub_219BE3794();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  v8 = v1[11];
  v9 = sub_219BE3C04();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_219A1C35C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_219A1C3E4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for EngagementPresentation() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_219BDBD34() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v2 + v8, v9);
}

uint64_t sub_219A1C4F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  return (*(v5 + 56))(v2, v4, v3, ObjectType, v5);
}

uint64_t sub_219A1C5F0(uint64_t a1)
{
  v3 = *(sub_219BDBD34() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_21881DBDC(0);
  return sub_219A15C74(a1, a1 + *(v5 + 48), v1 + v4);
}

uint64_t sub_219A1C6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219A1C77C(void *a1, uint64_t a2)
{
  v5 = *(sub_219BDB184() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_21880B928();
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(sub_219BDBD34() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for TodayPrewarmResult() - 8);
  sub_219A18C20(a1, a2, v2 + v6, v2 + v9, v2 + v12, v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)));
}

uint64_t objectdestroy_93Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  a2(*(v2 + 16));
  (*(v5 + 8))(v2 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_219A1CA2C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_219A1CAB8()
{
  v1 = *(sub_219BDB184() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_21880B928();
  v5 = *(v4 - 8);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));
  v8 = *(v7 + *(v5 + 64));

  return sub_2192B41DC(v6, v0 + v2, v7, v8);
}

uint64_t sub_219A1CBA8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219A199D4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219A1CC28(uint64_t a1, uint64_t a2)
{
  sub_219A199D4(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A1CCBC(uint64_t a1)
{
  sub_219A199D4(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);

  return sub_2192B4834(a1);
}

uint64_t sub_219A1CD7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219A199D4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A1CDEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A1CE78()
{
  v0 = CACurrentMediaTime();
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Will rebuild offline feed", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  swift_getAssociatedTypeWitness();
  sub_219BE3204();
  v4 = sub_219BE2E54();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_219BF5B14();
  swift_getTupleTypeMetadata2();
  sub_219BE2F84();

  v5 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(255);
  swift_getTupleTypeMetadata2();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v0;
  v6 = sub_219BE2E54();
  sub_219BE2F94();

  v7 = sub_219BE2E54();
  v8 = sub_219BE2FE4();

  return v8;
}

uint64_t sub_219A1D1C0(uint64_t a1)
{
  v1 = *(*a1 + 104);
  v2 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v10 - v6;
  v11 = 1;
  (*(v1 + 24))(&v11, v2, v1, v5);
  v8 = sub_219BEFE64();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_219A1D374(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v2 = *a2;
  v3 = *(*a2 + 112);
  v24 = *(*a2 + 88);
  v25 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v23 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v19 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_219BF0F94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  sub_219BF0F44();
  v11 = v2[12];
  v20 = v2[15];
  sub_219BEDF14();
  (*(v8 + 8))(v10, v7);
  v12 = v21;
  (*(v5 + 16))(v21, v26, AssociatedTypeWitness);
  v13 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v2[10];
  *(v14 + 3) = v24;
  *(v14 + 4) = v11;
  *(v14 + 5) = v2[13];
  v15 = v20;
  *(v14 + 6) = v25;
  *(v14 + 7) = v15;
  *(v14 + 8) = v2[16];
  (*(v5 + 32))(&v14[v13], v12, AssociatedTypeWitness);
  v16 = sub_219BE2E54();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_219BF5B14();
  swift_getTupleTypeMetadata2();
  v17 = sub_219BE2F74();

  return v17;
}

uint64_t sub_219A1D748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_219BF5B14();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  *a3 = v5;
  (*(*(AssociatedTypeWitness - 8) + 16))(&a3[v7], a2, AssociatedTypeWitness);
}

uint64_t sub_219A1D8AC(uint64_t a1, void *a2)
{
  v28 = *a2;
  v29 = a1;
  v31 = v28[14];
  v30 = v28[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_219BF5B14();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v5 = &v26 - v4;
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  (*(v13 + 16))(v5, v29, TupleTypeMetadata2, v10);
  v14 = *(TupleTypeMetadata2 + 48);
  v15 = *(v6 + 32);
  v16 = &v5[v14];
  v17 = v12;
  v15(v12, v16, AssociatedTypeWitness);
  v29 = sub_219A1DCD0();

  v18 = v27;
  (*(v6 + 16))(v27, v17, AssociatedTypeWitness);
  v19 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  v22 = v28;
  *(v20 + 2) = v28[10];
  *(v20 + 3) = v30;
  *(v20 + 4) = v22[12];
  *(v20 + 5) = v21[13];
  *(v20 + 6) = v31;
  *(v20 + 7) = v21[15];
  *(v20 + 8) = v21[16];
  v15(&v20[v19], v18, AssociatedTypeWitness);
  v23 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(255);
  swift_getTupleTypeMetadata2();
  v24 = sub_219BE2F74();

  (*(v6 + 8))(v17, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_219A1DCD0()
{
  v1 = v0;
  v2 = CACurrentMediaTime();
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "Will process groups", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v6);
  type metadata accessor for OfflineFeedManifest(0);
  sub_219BE3204();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;

  v8 = sub_219BE2E54();
  sub_219BE2F74();

  v9 = sub_219BE2E54();
  v10 = sub_219BE2FD4();

  return v10;
}

uint64_t sub_219A1DEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for OfflineFeedManifest(255);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  sub_2187536A4(a1, a3);
  return (*(*(AssociatedTypeWitness - 8) + 16))(a3 + v7, a2, AssociatedTypeWitness);
}

uint64_t sub_219A1DF88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v3 = *a2;
  v37 = a1;
  v38 = v3;
  v4 = type metadata accessor for OfflineFeedManifest(255);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v35 - v8;
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = sub_219BE5414();
  v20 = sub_219BF6214();
  if (!os_log_type_enabled(v19, v20))
  {
    goto LABEL_6;
  }

  v36 = v9;
  v21 = swift_slowAlloc();
  *v21 = 134349056;
  result = sub_219BF5CD4();
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(v21 + 4) = v23;
  _os_log_impl(&dword_2186C1000, v19, v20, "Did rebuild offline feed, time=%{public}lldms", v21, 0xCu);
  MEMORY[0x21CECF960](v21, -1, -1);
  v9 = v36;
LABEL_6:

  (*(v7 + 16))(v9, v37, TupleTypeMetadata2);
  v24 = *(TupleTypeMetadata2 + 48);
  sub_2187538EC(v9, v18);
  v25 = v40;
  (*(v40 + 32))(v12, &v9[v24], AssociatedTypeWitness);
  v26 = sub_219BF2514();
  v27 = v25;
  if (!v26 || (v28 = v26, v29 = [v26 contentManifest], v28, (v30 = v29) == 0))
  {
    v30 = [objc_opt_self() empty];
  }

  OfflineFeedManifest.init(_:)(v30, v15);
  sub_2187382CC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v31 = *(v39 + 72);
  v32 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C09EC0;
  v34 = v33 + v32;
  sub_2187536A4(v18, v34);
  sub_2187536A4(v15, v34 + v31);
  OfflineFeedManifest.init(_:)(v33, v41);
  sub_219A1EB2C(v15);
  (*(v27 + 8))(v12, AssociatedTypeWitness);
  return sub_219A1EB2C(v18);
}

uint64_t sub_219A1E430(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  sub_2187382CC(0, &unk_280E8F028, sub_218B1A68C, MEMORY[0x277D83940]);
  v6 = v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_219A1ECB8();

  v9 = sub_2194F86DC(a2, a1 + v4, v6, AssociatedTypeWitness, v8);

  return v9;
}

uint64_t sub_219A1E600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_6;
  }

  v6 = swift_slowAlloc();
  *v6 = 134349056;
  result = sub_219BF5CD4();
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 < 9.22337204e18)
  {
    *(v6 + 4) = v8;
    _os_log_impl(&dword_2186C1000, v4, v5, "Did process groups, time=%{public}lldms", v6, 0xCu);
    MEMORY[0x21CECF960](v6, -1, -1);
LABEL_6:

    return sub_2187536A4(a1, a2);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_219A1E734(void *a1, uint64_t a2, const char *a3)
{
  v5 = a1;
  oslog = sub_219BE5414();
  v6 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2186C1000, oslog, v6, a3, v7, 0xCu);
    sub_218962D30(v8);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }
}

uint64_t sub_219A1E858()
{
  v1 = *v0;
  v2 = qword_280EC7460;
  v3 = sub_219BEDA24();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 144));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 152));
  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 160));

  v4 = *(*v0 + 176);
  v5 = sub_219BE5434();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_219A1EA28()
{
  sub_219A1E858();

  return swift_deallocClassInstance();
}

uint64_t sub_219A1EB2C(uint64_t a1)
{
  v2 = type metadata accessor for OfflineFeedManifest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_219A1ECB8()
{
  result = qword_27CC22848;
  if (!qword_27CC22848)
  {
    sub_2187382CC(255, &unk_280E8F028, sub_218B1A68C, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22848);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 72) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchHomeSectionTitleViewLayoutOptions()
{
  result = qword_27CC22850;
  if (!qword_27CC22850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ForYouTagFeedGroupConfigData()
{
  result = qword_280EB4330;
  if (!qword_280EB4330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219A1EF98@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A1F4C8(0, &qword_280E8CC30, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A1F474();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 26;
    v13 = type metadata accessor for ForYouTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219A1F200(void *a1)
{
  v3 = v1;
  sub_219A1F4C8(0, &qword_27CC22860, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A1F474();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for ForYouTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219A1F3CC(uint64_t a1)
{
  v2 = sub_219A1F474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A1F408(uint64_t a1)
{
  v2 = sub_219A1F474();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219A1F474()
{
  result = qword_280EB4368[0];
  if (!qword_280EB4368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB4368);
  }

  return result;
}

void sub_219A1F4C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A1F474();
    v7 = a3(a1, &type metadata for ForYouTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219A1F540()
{
  result = qword_27CC22868;
  if (!qword_27CC22868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22868);
  }

  return result;
}

unint64_t sub_219A1F598()
{
  result = qword_280EB4358;
  if (!qword_280EB4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4358);
  }

  return result;
}

unint64_t sub_219A1F5F0()
{
  result = qword_280EB4360;
  if (!qword_280EB4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4360);
  }

  return result;
}

uint64_t sub_219A1F644(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v147 = a3;
  v148 = a2;
  v6 = sub_219BE6DF4();
  v140 = *(v6 - 8);
  v141 = v6;
  MEMORY[0x28223BE20](v6);
  v139 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A20F54(0, &qword_280EE4B28, MEMORY[0x277D6DF88]);
  v145 = *(v8 - 8);
  v146 = v8;
  MEMORY[0x28223BE20](v8);
  v144 = &v121 - v9;
  v137 = type metadata accessor for SearchFeedGapLocation(0);
  MEMORY[0x28223BE20](v137);
  v138 = (&v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = sub_219BF0BD4();
  v136 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v142 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchFeedGroup();
  v134 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v121 - v16;
  MEMORY[0x28223BE20](v18);
  v149 = &v121 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v121 - v21;
  sub_219A20F54(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  v24 = v23;
  v143 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v153 = &v121 - v25;
  sub_218AF3BCC(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A20F54(0, &qword_280EE5890, MEMORY[0x277D6D710]);
  v30 = v29;
  v31 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v151 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v121 - v34;
  v152 = v4;
  sub_219BEB244();
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    sub_219A210E4(v28, sub_218AF3BCC);
LABEL_5:
    v39 = v144;
    v38 = v145;
    v40 = v146;
    (*(v145 + 104))(v144, *MEMORY[0x277D6DF80], v146);
    v148(v39);
    return (*(v38 + 8))(v39, v40);
  }

  (*(v31 + 32))(v35, v28, v30);
  v36 = sub_218E66BE8();
  if (v37)
  {
    (*(v31 + 8))(v35, v30);
    goto LABEL_5;
  }

  v122 = v36;
  v124 = v35;
  v125 = v31;
  v126 = v30;
  v42 = *(v143 + 16);
  v123 = a1;
  v43 = v24;
  v42(v153, a1, v24);
  v44 = v152;
  v45 = *(v152 + 16);
  v46 = v45 >> 61;
  if ((v45 >> 61) > 1)
  {
    v47 = v150;
    v48 = v142;
    if (v46 == 2)
    {
      sub_219536F24();
      v77 = swift_projectBox();
      v22 = v149;
      sub_218EDF938(v77, v149);
      __swift_project_boxed_opaque_existential_1((v44 + 80), *(v44 + 104));
      v78 = *(v44 + 72);
      v79 = type metadata accessor for SearchFeedServiceConfig();
      v80 = sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);

      v135 = v79;
      v134 = v80;
      sub_219BEE7A4();
      v81 = *(v44 + 32);
      v82 = *(v44 + 56);
      v83 = *(v44 + 64);
      v154 = *(v44 + 24);
      v155 = v81;
      v156 = *(v44 + 40);
      v157 = v82;
      v158 = v83;

      v84 = v48;
      v70 = v151;
      sub_219126E74(v22, v78, v84, &v154, v151);

      (*(v136 + 8))(v84, v47);
      sub_219BEB234();
      v71 = *(v125 + 8);
      v72 = v126;
      v71(v70, v126);
      v85 = swift_allocObject();
      sub_219A21048(0, &qword_27CC1B750, MEMORY[0x277D32188]);
      swift_allocObject();

      *(v85 + 16) = sub_219BEE874();
      v86 = v138;
      *v138 = v85;
      v87 = *MEMORY[0x277D33090];
      sub_219A21048(0, &qword_280E909F8, MEMORY[0x277D33098]);
      (*(*(v88 - 8) + 104))(v86, v87, v88);
      swift_storeEnumTagMultiPayload();
      sub_219B51140(v86, v70);
      result = sub_219A210E4(v86, type metadata accessor for SearchFeedGapLocation);
      if (!__OFADD__(v122, 1))
      {
LABEL_19:
        sub_219BEB1F4();
        v71(v70, v72);
        sub_219BEEFF4();
        sub_219BEEFE4();
        v89 = sub_219BEEFC4();

        v90 = 0;
        if (v89)
        {
          v90 = sub_219BEDC74();
        }

        else
        {
          v155 = 0;
          *&v156 = 0;
        }

        v92 = v144;
        v93 = v141;
        v154 = v89;
        *(&v156 + 1) = v90;
        v119 = v153;
        sub_219BEB2C4();

        sub_219A210E4(v22, type metadata accessor for SearchFeedGroup);
        v117 = v145;
        v94 = v140;
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_40;
    }

    if (v46 != 3)
    {
      type metadata accessor for SearchFeedServiceConfig();
      sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);

      v91 = sub_219BEE854();
      v92 = v144;
      v94 = v140;
      v93 = v141;
      if (v91)
      {
        v95 = swift_allocObject();
        sub_219A21048(0, &qword_27CC1B750, MEMORY[0x277D32188]);
        swift_allocObject();

        *(v95 + 16) = sub_219BEE874();
        v96 = v138;
        *v138 = v95;
        v97 = *MEMORY[0x277D33068];
        sub_219A21048(0, &qword_280E909F8, MEMORY[0x277D33098]);
        (*(*(v98 - 8) + 104))(v96, v97, v98);
        swift_storeEnumTagMultiPayload();
        v99 = v151;
        sub_219B51140(v96, v151);
        sub_219A210E4(v96, type metadata accessor for SearchFeedGapLocation);
        sub_219BEB234();
        (*(v125 + 8))(v99, v126);
      }

      else
      {
        sub_219BEB204();
      }

      sub_219BEEFF4();
      sub_219BEEFE4();
      v116 = sub_219BEEFC4();

      v118 = 0;
      if (v116)
      {
        v118 = sub_219BEDC74();
      }

      else
      {
        v155 = 0;
        *&v156 = 0;
      }

      v117 = v145;
      goto LABEL_37;
    }

    v22 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v135 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v17 = v126;
    sub_219BE6944();
    sub_219BEB214();

    v121 = v22;
    v49 = *(v22 + 2);
    v149 = v43;
    if (v49)
    {
      v50 = v48;
      v133 = *(v44 + 72);
      v51 = *(v44 + 32);
      v132 = *(v44 + 24);
      v131 = v51;
      v52 = *(v44 + 48);
      v130 = *(v44 + 40);
      v129 = v52;
      v128 = *(v44 + 56);
      v127 = *(v44 + 64);
      v53 = &v121[(*(v134 + 80) + 32) & ~*(v134 + 80)];
      v134 = *(v134 + 72);
      v54 = (v136 + 8);
      v55 = (v125 + 8);
      do
      {
        sub_218EDF938(v53, v14);
        __swift_project_boxed_opaque_existential_1((v44 + 80), *(v44 + 104));
        type metadata accessor for SearchFeedServiceConfig();
        sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
        v44 = v152;
        sub_219BEE7A4();
        v154 = v132;
        v155 = v131;
        *&v156 = v130;
        *(&v156 + 1) = v129;
        v157 = v128;
        v158 = v127;

        v22 = v17;
        v56 = v151;
        sub_219126E74(v14, v133, v50, &v154, v151);
        sub_219A210E4(v14, type metadata accessor for SearchFeedGroup);

        (*v54)(v50, v150);
        sub_219BEB1E4();
        v57 = v56;
        v17 = v22;
        (*v55)(v57, v22);
        v53 += v134;
        --v49;
      }

      while (v49);
    }

    v43 = v149;
    v58 = swift_allocObject();
    sub_219A21048(0, &qword_27CC1B750, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v58 + 16) = sub_219BEE874();
    v59 = v138;
    *v138 = v58;
    v60 = *MEMORY[0x277D33068];
    sub_219A21048(0, &qword_280E909F8, MEMORY[0x277D33098]);
    (*(*(v61 - 8) + 104))(v59, v60, v61);
    swift_storeEnumTagMultiPayload();
    v45 = v151;
    sub_219B51140(v59, v151);
    sub_219A210E4(v59, type metadata accessor for SearchFeedGapLocation);
    v46 = *(v121 + 2);
    if (!__OFADD__(v122, v46))
    {
LABEL_27:
      sub_219BEB1F4();
      (*(v125 + 8))(v45, v126);
      sub_219BEEFF4();

      sub_219BEEFE4();
      type metadata accessor for SearchFeedServiceConfig();
      sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
      v116 = sub_219BEEFC4();

      v92 = v144;
      v117 = v145;
      v94 = v140;
      v93 = v141;
      v118 = 0;
      if (v116)
      {
        v118 = sub_219BEDC74();
      }

      else
      {
        v155 = 0;
        *&v156 = 0;
      }

LABEL_37:
      v154 = v116;
      *(&v156 + 1) = v118;
      v119 = v153;
      sub_219BEB2C4();

LABEL_38:
      v120 = v139;
      (*(v94 + 104))(v139, *MEMORY[0x277D6D868], v93);
      type metadata accessor for SearchSectionDescriptor();
      type metadata accessor for SearchModel(0);
      sub_2186D78E0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
      sub_2186D78E0(&qword_280EDF480, type metadata accessor for SearchModel);
      sub_219BE85D4();
      (*(v94 + 8))(v120, v93);
      v148(v92);
      (*(v117 + 8))(v92, v146);
      (*(v143 + 8))(v119, v43);
      return (*(v125 + 8))(v124, v126);
    }

    __break(1u);
  }

  if (!v46)
  {
    sub_219536F24();
    v62 = swift_projectBox();
    sub_218EDF938(v62, v22);
    __swift_project_boxed_opaque_existential_1((v44 + 80), *(v44 + 104));
    v63 = *(v44 + 72);
    v64 = type metadata accessor for SearchFeedServiceConfig();
    v65 = sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);

    v66 = v142;
    v149 = v64;
    v135 = v65;
    sub_219BEE7A4();
    v67 = *(v44 + 32);
    v68 = *(v44 + 56);
    v69 = *(v44 + 64);
    v154 = *(v44 + 24);
    v155 = v67;
    v156 = *(v44 + 40);
    v157 = v68;
    v158 = v69;

    v70 = v151;
    sub_219126E74(v22, v63, v66, &v154, v151);

    (*(v136 + 8))(v66, v150);
    sub_219BEB234();
    v71 = *(v125 + 8);
    v72 = v126;
    v71(v70, v126);
    v73 = swift_allocObject();
    sub_219A21048(0, &qword_27CC1B750, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v73 + 16) = sub_219BEE874();
    v74 = v138;
    *v138 = v73;
    v75 = *MEMORY[0x277D33090];
    sub_219A21048(0, &qword_280E909F8, MEMORY[0x277D33098]);
    (*(*(v76 - 8) + 104))(v74, v75, v76);
    swift_storeEnumTagMultiPayload();
    sub_219B51140(v74, v70);
    result = sub_219A210E4(v74, type metadata accessor for SearchFeedGapLocation);
    if (!__OFADD__(v122, 1))
    {
      goto LABEL_19;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v100 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v135 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v101 = v126;
  sub_219BE6944();
  sub_219BEB214();

  v121 = v100;
  v102 = *(v100 + 2);
  v149 = v43;
  v103 = v142;
  if (v102)
  {
    v133 = *(v44 + 72);
    v104 = *(v44 + 32);
    v132 = *(v44 + 24);
    v131 = v104;
    v105 = *(v44 + 48);
    v130 = *(v44 + 40);
    v129 = v105;
    v128 = *(v44 + 56);
    v127 = *(v44 + 64);
    v106 = &v121[(*(v134 + 80) + 32) & ~*(v134 + 80)];
    v134 = *(v134 + 72);
    v107 = (v136 + 8);
    v108 = (v125 + 8);
    do
    {
      sub_218EDF938(v106, v17);
      __swift_project_boxed_opaque_existential_1((v44 + 80), *(v44 + 104));
      type metadata accessor for SearchFeedServiceConfig();
      sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
      v44 = v152;
      sub_219BEE7A4();
      v154 = v132;
      v155 = v131;
      *&v156 = v130;
      *(&v156 + 1) = v129;
      v157 = v128;
      v158 = v127;

      v109 = v101;
      v110 = v151;
      sub_219126E74(v17, v133, v103, &v154, v151);
      sub_219A210E4(v17, type metadata accessor for SearchFeedGroup);

      (*v107)(v103, v150);
      sub_219BEB1E4();
      v111 = v110;
      v101 = v109;
      (*v108)(v111, v109);
      v106 += v134;
      --v102;
    }

    while (v102);
  }

  v43 = v149;
  v112 = swift_allocObject();
  sub_219A21048(0, &qword_27CC1B750, MEMORY[0x277D32188]);
  swift_allocObject();

  *(v112 + 16) = sub_219BEE874();
  v113 = v138;
  *v138 = v112;
  v114 = *MEMORY[0x277D33090];
  sub_219A21048(0, &qword_280E909F8, MEMORY[0x277D33098]);
  (*(*(v115 - 8) + 104))(v113, v114, v115);
  swift_storeEnumTagMultiPayload();
  v45 = v151;
  sub_219B51140(v113, v151);
  result = sub_219A210E4(v113, type metadata accessor for SearchFeedGapLocation);
  if (!__OFADD__(v122, *(v121 + 2)))
  {
    goto LABEL_27;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_219A20E30(uint64_t a1)
{
  v2 = sub_218E15630();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219A20E70()
{
  result = qword_27CC22870;
  if (!qword_27CC22870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22870);
  }

  return result;
}

void sub_219A20F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor();
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D78E0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
    v8[3] = sub_2186D78E0(&qword_280EDF480, type metadata accessor for SearchModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219A21048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchFeedServiceConfig();
    v7 = sub_2186D78E0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_219A210E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A21150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_219A21198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219A21224()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_219476624(0, &qword_27CC1A888, MEMORY[0x277D33410], MEMORY[0x277D83940]);
  *v3 = v0;
  v3[1] = sub_2194755EC;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x2873746C75736572, 0xE900000000000029, sub_219A21494, v2, v4);
}

uint64_t sub_219A21348(uint64_t a1, void *a2)
{
  sub_219476494();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_2193EC1BC(0, sub_219A21D50, v10);
}

uint64_t sub_219A2149C(unint64_t a1, size_t a2, uint64_t a3)
{
  sub_219476624(0, &unk_280E90850, MEMORY[0x277D33410], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = sub_219BF1634();
  v57 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  if ((a2 & 0x100) != 0)
  {
    if (qword_27CC08648 != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_22;
  }

  v55 = a1;
  if (a2)
  {
    if (a2 != 1)
    {
      if (qword_27CC08648 != -1)
      {
        swift_once();
      }

      v47 = sub_219BE5434();
      __swift_project_value_buffer(v47, qword_27CCD8BE8);
      v29 = sub_219BE5414();
      v48 = sub_219BF61F4();
      if (os_log_type_enabled(v29, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2186C1000, v29, v48, "ArticleOptionsProvider could not fetch history. No Batch.", v49, 2u);
        v36 = v49;
LABEL_45:
        MEMORY[0x21CECF960](v36, -1, -1);
      }

      goto LABEL_46;
    }

    v52 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v18 = sub_219BF7214();
      v51 = a3;
      if (v18)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v51 = a3;
      if (v18)
      {
LABEL_6:
        v19 = 0;
        v54 = a1 & 0xC000000000000001;
        v20 = (v57 + 48);
        v21 = (v57 + 32);
        a2 = MEMORY[0x277D84F90];
        v22 = v52;
        v53 = v18;
        while (1)
        {
          if (v54)
          {
            MEMORY[0x21CECE0F0](v19, a1, v15);
            v23 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v19 >= *(v22 + 16))
            {
              goto LABEL_49;
            }

            v23 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }
          }

          swift_unknownObjectRetain();
          sub_219BF1624();

          if ((*v20)(v8, 1, v12) == 1)
          {
            sub_2194765B4(v8, &unk_280E90850, MEMORY[0x277D33410]);
          }

          else
          {
            v24 = *v21;
            (*v21)(v56, v8, v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_2191FA570(0, *(a2 + 16) + 1, 1, a2);
            }

            v26 = *(a2 + 16);
            v25 = *(a2 + 24);
            if (v26 >= v25 >> 1)
            {
              a2 = sub_2191FA570(v25 > 1, v26 + 1, 1, a2);
            }

            *(a2 + 16) = v26 + 1;
            v24((a2 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v26), v56, v12);
            a1 = v55;
            v22 = v52;
          }

          ++v19;
          if (v23 == v53)
          {
            goto LABEL_56;
          }
        }
      }
    }

LABEL_55:
    a2 = MEMORY[0x277D84F90];
LABEL_56:
    v58 = a2;
    sub_219476494();
    return sub_219BF5B64();
  }

  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v38 = sub_219BF7214();
    v51 = a3;
    if (!v38)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = a3;
    if (!v38)
    {
      goto LABEL_55;
    }
  }

  v39 = 0;
  v56 = (a1 & 0xC000000000000001);
  v40 = (v57 + 48);
  v41 = (v57 + 32);
  a2 = MEMORY[0x277D84F90];
  v52 = v17;
  v53 = a1 & 0xFFFFFFFFFFFFFF8;
  v54 = v38;
  while (1)
  {
    if (v56)
    {
      MEMORY[0x21CECE0F0](v39, a1, v15);
      v42 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      goto LABEL_32;
    }

    if (v39 >= *(v37 + 16))
    {
      goto LABEL_50;
    }

    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

LABEL_32:
    swift_unknownObjectRetain();
    sub_219BF1624();

    if ((*v40)(v11, 1, v12) == 1)
    {
      sub_2194765B4(v11, &unk_280E90850, MEMORY[0x277D33410]);
    }

    else
    {
      v43 = *v41;
      (*v41)(v17, v11, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_2191FA570(0, *(a2 + 16) + 1, 1, a2);
      }

      v45 = *(a2 + 16);
      v44 = *(a2 + 24);
      if (v45 >= v44 >> 1)
      {
        a2 = sub_2191FA570(v44 > 1, v45 + 1, 1, a2);
      }

      *(a2 + 16) = v45 + 1;
      v46 = a2 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v45;
      v17 = v52;
      v43(v46, v52, v12);
      a1 = v55;
    }

    v37 = v53;
    ++v39;
    if (v42 == v54)
    {
      goto LABEL_56;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_22:
  v27 = sub_219BE5434();
  __swift_project_value_buffer(v27, qword_27CCD8BE8);
  v28 = a1;
  v29 = sub_219BE5414();
  v30 = a1;
  v31 = sub_219BF61F4();
  sub_218BB6FA0(v30, a2, 1);
  if (os_log_type_enabled(v29, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = v30;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_2186C1000, v29, v31, "ArticleOptionsProvider could not fetch history. Error: %@", v32, 0xCu);
    sub_2194765B4(v33, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v33, -1, -1);
    v36 = v32;
    goto LABEL_45;
  }

LABEL_46:

  v58 = MEMORY[0x277D84F90];
  sub_219476494();
  return sub_219BF5B64();
}

uint64_t sub_219A21C1C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_219476624(0, &qword_27CC1A888, MEMORY[0x277D33410], MEMORY[0x277D83940]);
  *v3 = v0;
  v3[1] = sub_219476350;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x2873746C75736572, 0xE900000000000029, sub_219A21DD8, v2, v4);
}

uint64_t sub_219A21D50(unint64_t a1, __int16 a2)
{
  sub_219476494();
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));

  return sub_219A2149C(a1, a2 & 0x1FF, v6);
}

uint64_t sub_219A21E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v78 = a3;
  sub_219A230E0(0, &qword_27CC0FE98, sub_2186EF13C);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v62 - v5;
  v68 = type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A230E0(0, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  v72 = type metadata accessor for SharedWithYouFeedGroupKnobs();
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A230E0(0, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v62 - v16;
  sub_219A230E0(0, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v79 = type metadata accessor for SharedWithYouFeedKnobsConfig();
  v20 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v69 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v62 - v23;
  sub_219A230E0(0, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v62 - v25;
  v27 = type metadata accessor for SharedWithYouFeedConfig();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_219A23134(a1, v26, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
  v31 = *(v28 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    v32 = sub_219BDBD34();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = *(v27 + 24);
    v34 = sub_219BEE5B4();
    (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
    *&v30[*(v27 + 20)] = MEMORY[0x277D84F90];
    if (v31(v26, 1, v27) != 1)
    {
      sub_219A231A0(v26, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
    }
  }

  else
  {
    sub_219A231FC(v26, v30, type metadata accessor for SharedWithYouFeedConfig);
  }

  v35 = v78;
  sub_219A231FC(v30, v78, type metadata accessor for SharedWithYouFeedConfig);
  v36 = v74;
  sub_219A23134(v74, v19, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
  v37 = *(v20 + 48);
  v38 = v37(v19, 1, v79);
  v39 = v76;
  if (v38 == 1)
  {
    v63 = v37;
    v40 = v77;
    v41 = v72;
    (*(v77 + 56))(v76, 1, 1, v72);
    v42 = v70;
    sub_219A23134(v39, v70, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
    v43 = *(v40 + 48);
    v77 = v40 + 48;
    if (v43(v42, 1, v41) == 1)
    {
      v62 = v43;
      v44 = v65;
      v45 = v68;
      (*(v65 + 56))(v11, 1, 1, v68);
      v46 = v67;
      sub_219A23134(v11, v67, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
      v47 = *(v44 + 48);
      v48 = v47(v46, 1, v45);
      v49 = v71;
      if (v48 == 1)
      {
        sub_2186EF13C();
        v51 = v64;
        (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
        v52 = v66;
        v53 = v51;
        v54 = v67;
        sub_219BA5644(v53, 0, v66);
        sub_219A231A0(v11, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
        if (v47(v54, 1, v68) != 1)
        {
          sub_219A231A0(v54, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
        }
      }

      else
      {
        sub_219A231A0(v11, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
        v52 = v66;
        sub_219A231FC(v46, v66, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
      }

      sub_219A231FC(v52, v49, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
      sub_219A231A0(v36, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
      sub_219A231A0(v75, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
      sub_219A231A0(v76, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
      v56 = v62(v42, 1, v72);
      v35 = v78;
      if (v56 != 1)
      {
        sub_219A231A0(v42, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
      }
    }

    else
    {
      sub_219A231A0(v36, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
      sub_219A231A0(v75, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
      sub_219A231A0(v39, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
      v49 = v71;
      sub_219A231FC(v42, v71, type metadata accessor for SharedWithYouFeedGroupKnobs);
    }

    v57 = v69;
    sub_219A231FC(v49, v69, type metadata accessor for SharedWithYouFeedGroupKnobs);
    v58 = v79;
    *(v57 + *(v79 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    v59 = v57;
    v55 = v73;
    sub_219A231FC(v59, v73, type metadata accessor for SharedWithYouFeedKnobsConfig);
    if (v63(v19, 1, v58) != 1)
    {
      sub_219A231A0(v19, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
    }
  }

  else
  {
    sub_219A231A0(v36, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
    sub_219A231A0(v75, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
    v55 = v73;
    sub_219A231FC(v19, v73, type metadata accessor for SharedWithYouFeedKnobsConfig);
  }

  v60 = type metadata accessor for SharedWithYouFeedContentConfig();
  return sub_219A231FC(v55, v35 + *(v60 + 20), type metadata accessor for SharedWithYouFeedKnobsConfig);
}

uint64_t sub_219A22998@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_219A230E0(0, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_219A230E0(0, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_219A22FE8();
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A23044();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for SharedWithYouFeedConfig();
    v18 = 0;
    sub_219A23098(&qword_27CC228A8, type metadata accessor for SharedWithYouFeedConfig);
    sub_219BF7674();
    type metadata accessor for SharedWithYouFeedKnobsConfig();
    v17 = 1;
    sub_219A23098(&qword_27CC228B0, type metadata accessor for SharedWithYouFeedKnobsConfig);
    sub_219BF7674();
    sub_219A21E94(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219A22C60@<X0>(char *a1@<X8>)
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

uint64_t sub_219A22CC0@<X0>(char *a1@<X8>)
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

uint64_t sub_219A22D24(uint64_t a1)
{
  v2 = sub_219A23044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A22D60(uint64_t a1)
{
  v2 = sub_219A23044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A22E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_219A230E0(0, &qword_27CC22888, type metadata accessor for SharedWithYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_219A230E0(0, &qword_27CC22890, type metadata accessor for SharedWithYouFeedConfig);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_219A23264(a1, &v16 - v11, type metadata accessor for SharedWithYouFeedConfig);
  v13 = type metadata accessor for SharedWithYouFeedConfig();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_219A23264(v3 + *(a2 + 20), v9, type metadata accessor for SharedWithYouFeedKnobsConfig);
  v14 = type metadata accessor for SharedWithYouFeedKnobsConfig();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  return sub_219A21E94(v12, v9, a3);
}

void sub_219A22FE8()
{
  if (!qword_27CC22898)
  {
    sub_219A23044();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22898);
    }
  }
}

unint64_t sub_219A23044()
{
  result = qword_27CC228A0;
  if (!qword_27CC228A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC228A0);
  }

  return result;
}

uint64_t sub_219A23098(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_219A230E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_219A23134(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_219A230E0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219A231A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_219A230E0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A231FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A23264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219A232E0()
{
  result = qword_27CC228B8;
  if (!qword_27CC228B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC228B8);
  }

  return result;
}

unint64_t sub_219A23338()
{
  result = qword_27CC228C0;
  if (!qword_27CC228C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC228C0);
  }

  return result;
}

unint64_t sub_219A23390()
{
  result = qword_27CC228C8;
  if (!qword_27CC228C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC228C8);
  }

  return result;
}

uint64_t sub_219A2340C(void *a1)
{
  sub_219A23E6C(0, &qword_280E8C238, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A23D58();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2186EC3A4();
  sub_219A23ED0(&qword_27CC228D8, sub_2186EC3A4);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
    v9[14] = 1;
    sub_219BED8D4();
    sub_219A23ED0(&qword_280E92640, MEMORY[0x277D31C50]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A2361C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_219BED8D4();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4();
  v29 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A23E6C(0, &qword_280E8C810, MEMORY[0x277D844C8]);
  v30 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A23D58();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v14 = v13;
  v16 = v25;
  v15 = v26;
  v32 = 0;
  sub_219A23ED0(&qword_27CC228D0, sub_2186EC3A4);
  v17 = v27;
  sub_219BF7734();
  v18 = *(v16 + 32);
  v21 = v14;
  v18(v14, v17, v29);
  v31 = 1;
  sub_219A23ED0(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  (*(v28 + 8))(v10, v30);
  v19 = v21;
  (*(v23 + 32))(v21 + *(v22 + 20), v5, v15);
  sub_219A23DAC(v19, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219A23E10(v19);
}

uint64_t sub_219A23A4C(uint64_t a1)
{
  v2 = sub_219A23D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A23A88(uint64_t a1)
{
  v2 = sub_219A23D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A23AF4(uint64_t a1)
{
  v2 = sub_219A23ED0(&qword_280E99A70, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A23B7C(void *a1)
{
  a1[1] = sub_219A23ED0(&qword_280E99A70, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
  a1[2] = sub_219A23ED0(&qword_280E99A48, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
  result = sub_219A23ED0(&qword_280E99A58, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_219A23D00(uint64_t a1)
{
  result = sub_219A23ED0(&qword_27CC10E88, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_219A23D58()
{
  result = qword_280E99A88[0];
  if (!qword_280E99A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E99A88);
  }

  return result;
}

uint64_t sub_219A23DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A23E10(uint64_t a1)
{
  v2 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A23E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A23D58();
    v7 = a3(a1, &type metadata for FeaturedIssueArticleMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A23ED0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219A23F2C()
{
  result = qword_27CC228E0;
  if (!qword_27CC228E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC228E0);
  }

  return result;
}

unint64_t sub_219A23F84()
{
  result = qword_280E99A78;
  if (!qword_280E99A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99A78);
  }

  return result;
}

unint64_t sub_219A23FDC()
{
  result = qword_280E99A80;
  if (!qword_280E99A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99A80);
  }

  return result;
}

void sub_219A24030()
{
  v1 = sub_219BF53D4();
  [v0 markArticle:v1 withCompletedListening:0];

  v2 = sub_219BF53D4();
  [v0 markArticle:v2 withLastListened:0];

  v3 = sub_219BF53D4();
  [v0 markArticle:v3 withListeningProgress:0.0];

  v4 = sub_219BF53D4();
  [v0 markArticle:v4 withReadingPositionJSON:0];

  v5 = sub_219BF53D4();
  [v0 markArticle:v5 withRemovedFromAudio:1];
}

uint64_t sub_219A24148(char a1)
{
  v2 = sub_219BEE714();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E12B60();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEE704();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0644();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 104);
  v18 = (v10 + 104);
  if (a1)
  {
    v17(v15, *MEMORY[0x277D32EF8]);
    if (a1 == 1)
    {
      v19 = MEMORY[0x277D32110];
    }

    else
    {
      v19 = MEMORY[0x277D32118];
    }

    (*v18)(v12, *v19, v9);
    v23 = sub_219BEE734();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  }

  else
  {
    v17(v15, *MEMORY[0x277D32EF0]);
    (*v18)(v12, *MEMORY[0x277D32110], v9);
    v20 = *MEMORY[0x277D32140];
    v21 = sub_219BEE734();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v8, v20, v21);
    (*(v22 + 56))(v8, 0, 1, v21);
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D32130], v2);
  return sub_219BEE744();
}

unint64_t sub_219A24500()
{
  result = qword_280EBB368;
  if (!qword_280EBB368)
  {
    type metadata accessor for MagazineFeedServiceContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB368);
  }

  return result;
}

uint64_t sub_219A24558(char *a1)
{
  sub_219A24148(*a1);
  type metadata accessor for MagazineFeedServiceContext();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219A245AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 456))
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

uint64_t sub_219A245F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219A246B8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v78 = a3;
  v79 = a2;
  sub_219A259C4(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = &v65 - v5;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v65 - v9;
  MEMORY[0x28223BE20](v10);
  v71 = &v65 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  sub_219A259C4(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v68 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v80 = &v65 - v23;
  MEMORY[0x28223BE20](v24);
  v67 = &v65 - v25;
  MEMORY[0x28223BE20](v26);
  v66 = &v65 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v65 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v65 - v32;
  sub_219A259C4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v35 = v34;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v65 - v37;
  v74 = v39;
  v40 = *(v39 + 16);
  v83 = a1;
  v69 = v40;
  v70 = v39 + 16;
  (v40)(v38, a1, v35, v36);
  sub_219BEB214();
  sub_2198D068C(v17);
  v82 = *(v20 + 48);
  v41 = v82(v17, 1, v19);
  v81 = v20;
  if (v41 == 1)
  {
    sub_219A25AA4(v17, sub_218A2D984);
  }

  else
  {
    (*(v20 + 32))(v33, v17, v19);
    sub_218B0632C();
    sub_219BEB324();
    (*(v20 + 8))(v33, v19);
  }

  sub_219BEB214();
  v42 = *v84;
  sub_2198D09F4(*v84, v14);
  v43 = v82;
  if (v82(v14, 1, v19) == 1)
  {
    sub_219A25AA4(v14, sub_218A2D984);
  }

  else
  {
    v44 = v81;
    (*(v81 + 32))(v30, v14, v19);
    sub_218B0632C();
    sub_219BEB324();
    (*(v44 + 8))(v30, v19);
  }

  v45 = v80;
  sub_219BEB214();
  v46 = v71;
  sub_2198D0D0C(v42, v71);
  v47 = v46;
  v48 = v43(v46, 1, v19);
  v49 = v72;
  if (v48 == 1)
  {
    sub_219A25AA4(v47, sub_218A2D984);
    v50 = v81;
  }

  else
  {
    v50 = v81;
    v51 = v66;
    (*(v81 + 32))(v66, v47, v19);
    sub_218B0632C();
    sub_219BEB324();
    v52 = v51;
    v45 = v80;
    (*(v50 + 8))(v52, v19);
  }

  sub_219BEB214();
  sub_2198D1190(v42, v49);
  if (v43(v49, 1, v19) == 1)
  {
    sub_219A25AA4(v49, sub_218A2D984);
  }

  else
  {
    v53 = v67;
    (*(v50 + 32))(v67, v49, v19);
    sub_218B0632C();
    sub_219BEB324();
    (*(v50 + 8))(v53, v19);
  }

  sub_219BEB214();
  sub_2198D1458(v42);
  sub_218B0632C();
  sub_219BEB324();
  sub_219BEB214();
  v54 = v73;
  sub_219A25138(v73);
  if (v82(v54, 1, v19) == 1)
  {
    sub_219A25AA4(v54, sub_218A2D984);
  }

  else
  {
    v55 = v68;
    (*(v50 + 32))(v68, v54, v19);
    sub_219BEB324();
    (*(v50 + 8))(v55, v19);
  }

  v56 = v75;
  type metadata accessor for FollowingModel();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_2186D5A44(&qword_280EDC630, type metadata accessor for FollowingModel);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v85, v85[3]);
  if (sub_219BE6E54())
  {
    v57 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_218A2DA58();
    v59 = *(v58 + 48);
    v69(v56, v38, v35);
    v60 = *MEMORY[0x277D6D868];
    v61 = sub_219BE6DF4();
    (*(*(v61 - 8) + 104))(&v56[v59], v60, v61);
    v57 = MEMORY[0x277D6DF70];
  }

  v63 = v76;
  v62 = v77;
  (*(v76 + 104))(v56, *v57, v77);
  v79(v56);
  (*(v63 + 8))(v56, v62);
  (*(v50 + 8))(v45, v19);
  (*(v74 + 8))(v38, v35);
  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t sub_219A25138@<X0>(uint64_t a1@<X8>)
{
  sub_218B061E4();
  MEMORY[0x28223BE20](v3 - 8);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A259C4(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  sub_219A259C4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  sub_219BEB354();
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_219A25AA4(v6, sub_218A2D984);
    v12 = 1;
  }

  else
  {
    v13 = (*(v9 + 32))(v11, v6, v8);
    MEMORY[0x28223BE20](v13);
    *&v20[-1] = v1;
    v14 = sub_21894D1EC(sub_219A25A84, &v20[-2]);
    sub_219BE6934();
    v20[2] = v24;
    v20[3] = v25;
    v20[4] = v26;
    v21 = v27;
    v20[0] = v22;
    v20[1] = v23;
    sub_218950B84();
    v16 = v15;
    v17 = sub_2186D5A44(&unk_280EE5C80, sub_218950B84);
    v18 = sub_2186D5A44(&unk_280EE5C90, sub_218950B84);
    MEMORY[0x21CEB9170](v14, v16, v17, v18);
    type metadata accessor for FollowingModel();
    sub_2187490E4();
    sub_2186D5A44(&qword_280EDC630, type metadata accessor for FollowingModel);
    sub_219BE6924();
    (*(v9 + 8))(v11, v8);
    v12 = 0;
  }

  return (*(v9 + 56))(a1, v12, 1, v8);
}

uint64_t sub_219A25504@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_219BF2CB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_219BF2634();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v29);
  v28 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_218950B84();
  v17 = v16;
  sub_219BE5FC4();
  v18 = sub_218F37A90();
  sub_219A25AA4(v15, type metadata accessor for FollowingModel);
  v31 = v18;
  if (!v18)
  {
    return (*(*(v17 - 8) + 16))(v30, a1, v17);
  }

  v19 = a2[1];
  swift_getObjectType();
  v20 = swift_unknownObjectRetain();
  v21 = sub_218E97A64(v20, v19);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a2 + 52, a2[55]);
  *v8 = *(v21 + 2);
  (*(v6 + 104))(v8, *MEMORY[0x277D33B98], v5);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v6 + 8))(v8, v5);
  v22 = sub_219BF2614();
  (*(v26 + 8))(v11, v27);
  [*(v21 + 2) tagType];
  v23 = *(v31 + 16);
  type metadata accessor for FollowingTagModel();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22 & 1;
  *v28 = v24;
  swift_storeEnumTagMultiPayload();
  sub_2186D5A44(&qword_280EDC630, type metadata accessor for FollowingModel);

  sub_219BE5FB4();
}

uint64_t sub_219A258E8(uint64_t a1)
{
  v2 = sub_218B12B3C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219A25928()
{
  result = qword_280E98470;
  if (!qword_280E98470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98470);
  }

  return result;
}

void sub_219A259C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D5A44(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219A25AA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TagFeedViewerViewController()
{
  result = qword_280EB6360;
  if (!qword_280EB6360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A25B54()
{
  sub_21881CCEC(319, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);
  if (v0 <= 0x3F)
  {
    sub_21881CCEC(319, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_219A25D28()
{
  v1 = v0;
  sub_219A25E28(v9);
  if (v10)
  {
    v2 = v10;
    sub_2190459F8(v9);
    type metadata accessor for TagFeedViewController();
    sub_219BF6584();

    v3 = v11;
    if (v11)
    {
      v4 = *&v11[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
      swift_unknownObjectRetain();

      if (v4)
      {
        swift_unknownObjectRelease();
        v5 = (v1 + qword_280EB6470);
        v6 = *(v1 + qword_280EB6470);
        if (v6)
        {

          v6(v7);
          sub_2187FABEC(v6);
          v8 = *v5;
        }

        else
        {
          v8 = 0;
        }

        *v5 = 0;
        v5[1] = 0;
        sub_2187FABEC(v8);
      }
    }
  }

  else
  {
    sub_219A2FF6C(v9, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
  }
}

double sub_219A25E28@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_280EB6510);
  v4 = *(v1 + qword_280EB6510 + 8);
  v5 = *(v1 + qword_280EB6510 + 16);
  v6 = *(v1 + qword_280EB6510 + 25);
  if (v6 > 1)
  {
    if (v6 == 2)
    {

      goto LABEL_12;
    }

    if (v6 != 3)
    {
      v12 = v3;

      v4 = v5;
      goto LABEL_12;
    }

    v7 = v3;
LABEL_7:
    v9 = [v7 backingChannel];

    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = [v9 sectionIDs];
    if (!v10)
    {
      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    v11 = v10;
    v4 = sub_219BF5924();

    swift_unknownObjectRelease();
LABEL_12:
    v13 = *(v4 + 16);

    if (v13)
    {
      goto LABEL_13;
    }

LABEL_17:
    *(a1 + 64) = 0;
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (*(v1 + qword_280EB6510 + 25))
  {
    v8 = *(v1 + qword_280EB6510 + 24);
    v7 = v3;
    sub_218CC4CB8(v4, v5, v8);
    sub_218B083D0(v4, v5, v8);
    goto LABEL_7;
  }

LABEL_13:
  v14 = sub_219BE7DF4();

  sub_219A26504(v14, a1);
  return result;
}

uint64_t sub_219A25FA0()
{
  v20 = type metadata accessor for TagFeedViewerLinkPresentation;
  sub_21881CCEC(0, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v19 - v2);
  sub_21881CCEC(0, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v21 = &v19 - v8;
  v9 = *(v0 + qword_280EB6510);
  v10 = *(v0 + qword_280EB6510 + 8);
  v11 = *(v0 + qword_280EB6510 + 16);
  v12 = *(v0 + qword_280EB6510 + 24);
  v13 = qword_280EB6508;
  v14 = *(v0 + qword_280EB6510 + 25);
  swift_beginAccess();
  sub_219A2FFE4(v0 + v13, v3, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218CC4BB4(v9, v10, v11, v12, v14);

  v16 = sub_219046B48(v7, v3, sub_219A30F14, v15, v9, v10, v11, v12 | (v14 << 8));

  sub_218B09E88(v9, v10, v11, v12, v14);
  sub_219A30058(v3, qword_280EAE4D0, v20);

  if (sub_219A26F3C(v7, v16 & 1))
  {
    sub_219A30058(v7, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
    v17 = sub_219BE9CD4();
    (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  }

  else
  {
    sub_219A300B4(v7, v21);
  }

  return sub_219BE7E44();
}

id sub_219A2626C()
{
  v1 = qword_280EB63E0;
  v2 = *(v0 + qword_280EB63E0);
  v3 = v2;
  if (v2 == 1)
  {
    __swift_project_boxed_opaque_existential_1((v0 + qword_280EB6438), *(v0 + qword_280EB6438 + 24));
    v4 = *(v0 + qword_280EB6510);
    if ([v4 feedConfiguration] == 11)
    {
      v3 = sub_218F77878(v4);
    }

    else
    {
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

void *sub_219A26334(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    __swift_project_boxed_opaque_existential_1((v2 + qword_280EB6438), *(v2 + qword_280EB6438 + 24));
    v7 = *(v2 + qword_280EB6510);
    v8 = v2;
    v5 = a2();

    v9 = *(v2 + v3);
    *(v8 + v3) = v5;
    v10 = v5;
    sub_2190AAF44(v9);
  }

  sub_2190AB1E0(v4);
  return v5;
}

unint64_t sub_219A263E4()
{
  result = 0;
  v2 = *(v0 + qword_280EB6510);
  v3 = *(v0 + qword_280EB6510 + 8);
  v4 = *(v0 + qword_280EB6510 + 16);
  v5 = *(v0 + qword_280EB6510 + 25);
  if (v5 <= 1)
  {
    if (!*(v0 + qword_280EB6510 + 25))
    {
      return result;
    }

    v7 = *(v0 + qword_280EB6510 + 24);
    v8 = v2;
    sub_218CC4CB8(v3, v4, v7);

    sub_218B083D0(v3, v4, v7);
    return 0;
  }

  if (v5 == 2)
  {
  }

  else
  {
    if (v5 == 3)
    {
      return result;
    }

    v6 = v2;

    v3 = v4;
  }

  if (sub_219BE7DF4() >= *(v3 + 16))
  {

    return 0;
  }

  result = sub_219BE7DF4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v3 + 16))
  {
    v9 = v3 + 16 * result;
    v10 = *(v9 + 32);
    sub_2194B5588(v10, *(v9 + 40));

    return v10;
  }

  __break(1u);
  return result;
}

void sub_219A26504(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + qword_280EB6510;
  v5 = *(v2 + qword_280EB6510);
  v6 = *(v2 + qword_280EB6510 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 25);
  if (v8 <= 1)
  {
    if (*(v4 + 25))
    {
      v15 = *(v4 + 24);
      v11 = v5;
      sub_218CC4CB8(v6, v7, v15);
      sub_218B083D0(v6, v7, v15);
      goto LABEL_13;
    }
  }

  else
  {
    if (v8 == 2)
    {

LABEL_8:
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(v6 + 16) > a1)
      {
        v12 = v6 + 16 * a1;
        v13 = *(v12 + 32);
        v14 = *(v12 + 40);
        sub_2194B5588(v13, *(v12 + 40));

        sub_219B7D248(v13, v14);
        sub_219BE32A4();

        if (v21)
        {
          sub_218B09E7C(v13, v14);
LABEL_15:
          v16 = v23;
          *(a2 + 32) = v22;
          *(a2 + 48) = v16;
          *(a2 + 64) = v24;
          v17 = v21;
          *a2 = v20;
          *(a2 + 16) = v17;
          return;
        }

        sub_219A2FF6C(&v20, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
        sub_219A2E790(v13, v14, a2);
        *&v20 = sub_219B7D248(v13, v14);
        *(&v20 + 1) = v19;
        sub_219BE3254();
        sub_218B09E7C(v13, v14);

        return;
      }

      __break(1u);
      return;
    }

    if (v8 != 3)
    {
      v10 = v5;

      v6 = v7;
      goto LABEL_8;
    }
  }

  v11 = v5;
LABEL_13:
  sub_219B7D248(v11, 0);
  sub_219BE32A4();

  if (v21)
  {

    goto LABEL_15;
  }

  sub_219A2FF6C(&v20, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
  sub_219A2E790(v11, 0, a2);
  *&v20 = sub_219B7D248(v11, 0);
  *(&v20 + 1) = v18;
  sub_219BE3254();
}

id sub_219A26798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE7784();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v2[qword_280EB63A0];
  v8 = *&v2[qword_280EB63A0 + 24];
  v9 = *&v2[qword_280EB63A0 + 32];
  __swift_project_boxed_opaque_existential_1(&v2[qword_280EB63A0], v8);
  v10 = sub_219BF65B4();
  v11 = *(v9 + 8);
  v61 = a1;
  v11(v10, a1, v8, v9);

  sub_218718690(v7, v68);
  v12 = v69;
  v13 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  result = [v2 view];
  if (result)
  {
    v15 = result;
    v16 = qword_280EB6510;
    v17 = *(v13 + 16);
    v18 = *&v2[qword_280EB6510];
    v17(v15, v18, v12, v13);

    __swift_destroy_boxed_opaque_existential_1(v68);
    v19 = *(v7 + 3);
    v20 = *(v7 + 4);
    __swift_project_boxed_opaque_existential_1(v7, v19);
    v21 = *&v2[v16];
    v66 = v16;
    v67 = qword_280EB63E8;
    v22 = v2[qword_280EB63E8];
    v23 = *(v20 + 24);
    v24 = v21;
    v23(v2, v24, v22, v19, v20);

    v25 = *(v7 + 3);
    v26 = *(v7 + 4);
    v59 = __swift_project_boxed_opaque_existential_1(v7, v25);
    v27 = sub_219A26334(&qword_280EB63C8, sub_218F79300);
    v28 = *&v2[v16];
    v29 = v67;
    v30 = v2[v67];
    v31 = *(v26 + 32);
    v32 = v28;
    v31(v27, v32, v30, v25, v26);

    v33 = *(v7 + 3);
    v34 = *(v7 + 4);
    __swift_project_boxed_opaque_existential_1(v7, v33);
    v35 = *&v3[qword_280EB6410];
    v36 = *&v3[v66];
    v37 = v3[v29];
    v59 = *(v34 + 40);
    v58 = v35;
    v38 = v36;
    v59(v35, v38, v37, v33, v34);

    v39 = *(v7 + 3);
    v40 = *(v7 + 4);
    v41 = __swift_project_boxed_opaque_existential_1(v7, v39);
    v42 = *&v3[qword_280EB6458];
    v43 = v66;
    v44 = *&v3[v66];
    v45 = v3[v67];
    v58 = *(v40 + 48);
    v59 = v41;
    v57 = v42;
    v46 = v44;
    (v58)(v42, v46, v45, v39, v40);

    sub_218718690(v7, v68);
    v47 = v69;
    v48 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v49 = *&v3[v43];
    v50 = sub_219BE64F4();
    if (v50)
    {
      v51 = v50;
      v52 = [v50 navigationBar];
    }

    else
    {
      v52 = 0;
    }

    v53 = v63;
    (*(v48 + 56))(v49, v52, v61, v62, v3[v67], v47, v48);

    __swift_destroy_boxed_opaque_existential_1(v68);
    sub_219A30EC0(&qword_280EE5008, MEMORY[0x277D6DB58]);
    sub_219BE2114();
    v54 = *(v7 + 4);
    __swift_project_boxed_opaque_existential_1(v7, *(v7 + 3));
    v55 = *(v54 + 88);
    v56 = *&v3[v66];
    v55();

    sub_219BE7E84();
    sub_219A2773C(0);
    return (*(v64 + 8))(v53, v65);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A26CA4(char a1)
{
  v2 = v1;
  v4 = sub_219BE77D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2[qword_280EB63E8] = a1;
  v8 = [v2 traitCollection];
  v9 = [v2 tabBarController];
  v10 = MEMORY[0x277D6DBA8];
  if (v9)
  {
    v11 = v9;
    type metadata accessor for MainTabBarController();
    if (swift_dynamicCastClass())
    {
      v12 = v11;

      sub_219BE2734();

      if (v14[15])
      {
        v10 = MEMORY[0x277D6DBA0];
      }
    }

    else
    {
    }
  }

  (*(v5 + 104))(v7, *v10, v4);
  sub_219A26798(v8, v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A26E70(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_280EB64A8);
    v4 = *(result + qword_280EB64C0);
    v5 = result;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = sub_218E97A64(a1, v4);
    __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
    sub_21938E5E8(v6);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219A26F3C(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = MEMORY[0x277D6E8C0];
  sub_21881CCEC(0, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  sub_219A2FFE4(a1, &v45 - v8, &qword_280EE3E10, v6);
  v10 = sub_219BE9CD4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_219A30058(v9, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
LABEL_29:
    v26 = 0;
    return v26 & 1;
  }

  if ((*(v11 + 88))(v9, v10) != *MEMORY[0x277D6E8B0])
  {
    (*(v11 + 8))(v9, v10);
    goto LABEL_29;
  }

  (*(v11 + 96))(v9, v10);

  sub_2190473C0(0);
  v13 = *(v12 + 64);
  sub_2187FABEC(*&v9[*(v12 + 80)]);
  sub_219A30058(&v9[v13], &qword_280EE4FA8, MEMORY[0x277D6DC28]);
  if (a2)
  {
    goto LABEL_29;
  }

  v14 = [v3 navigationController];
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = v14;
  v16 = &selRef_moveShortcutWithIdentifier_toIndex_;
  v17 = [v15 childViewControllers];
  sub_2186C6148(0, &qword_280E8E480);
  v18 = sub_219BF5924();

  if (v18 >> 62)
  {
LABEL_35:
    v19 = sub_219BF7214();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 < 2)
  {

    goto LABEL_29;
  }

  v20 = [v15 v16[125]];

  v21 = sub_219BF5924();
  v48 = MEMORY[0x277D84F90];
  if (v21 >> 62)
  {
    v22 = sub_219BF7214();
    if (v22)
    {
      goto LABEL_11;
    }

LABEL_37:
    v46 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_37;
  }

LABEL_11:
  v23 = 0;
  v16 = (v21 & 0xC000000000000001);
  v45 = v15;
  v46 = MEMORY[0x277D84F90];
  do
  {
    v15 = v23;
    while (1)
    {
      if (v16)
      {
        v24 = MEMORY[0x21CECE0F0](v15, v21);
      }

      else
      {
        if (v15 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v24 = *(v21 + 8 * v15 + 32);
      }

      v25 = v24;
      v23 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_219BE7DC4();
      if (swift_dynamicCastClass())
      {
        sub_219BF6584();

        v25 = v47;
        if (!v47)
        {
          goto LABEL_14;
        }

        if (v47 != v3)
        {
          break;
        }
      }

LABEL_14:
      ++v15;
      if (v23 == v22)
      {
        v15 = v45;
        goto LABEL_38;
      }
    }

    MEMORY[0x21CECC690]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v46 = v48;
    v15 = v45;
  }

  while (v23 != v22);
LABEL_38:

  v28 = v46;
  if (v46 >> 62)
  {
    if (sub_219BF7214())
    {
      if (sub_219BF7214())
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    goto LABEL_53;
  }

  if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_53:

    goto LABEL_29;
  }

  if (swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    goto LABEL_42;
  }

  while (1)
  {
    v28 = sub_2194B7E54(v28);
LABEL_42:
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      break;
    }

    __break(1u);
LABEL_55:
    v28 = v46;
    swift_isUniquelyReferenced_nonNull_bridgeObject();
  }

  v30 = v29 - 1;
  v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20);
  *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) = v30;

  v32 = *&v31[qword_280EB6510];
  v33 = sub_219BF6394();

  v34 = [v33 identifier];
  swift_unknownObjectRelease();
  v35 = sub_219BF5414();
  v37 = v36;

  v38 = *&v3[qword_280EB6510];
  v39 = sub_219BF6394();

  v40 = [v39 identifier];
  swift_unknownObjectRelease();
  v41 = sub_219BF5414();
  v43 = v42;

  if (v35 == v41 && v37 == v43)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_219BF78F4();
  }

  return v26 & 1;
}

void sub_219A2751C()
{
  v0 = sub_219BE8DD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_219A30EC0(&qword_280EE4750, MEMORY[0x277D6E330]);
    if ((sub_219BF53A4() & 1) == 0)
    {
      if ([objc_opt_self() areAnimationsEnabled] && (v6 = *MEMORY[0x277D6E318], v11 = *(v1 + 104), v11(v3, v6, v0), v7 = sub_219BF53A4(), v8 = *(v1 + 8), v8(v3, v0), (v7 & 1) == 0))
      {
        v11(v3, v6, v0);
        v10 = sub_219BF53A4();
        v8(v3, v0);
        v9 = v10 ^ 1;
      }

      else
      {
        v9 = 0;
      }

      sub_219A2773C(v9 & 1);
    }
  }
}

id sub_219A2773C(int a1)
{
  v2 = v1;
  sub_21881CCEC(0, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v57[-v5];
  sub_21881CCEC(0, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v60 = &v57[-v10];
  MEMORY[0x28223BE20](v9);
  v66 = &v57[-v11];
  v12 = sub_219BE8DD4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v57[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v57[-v20];
  sub_219A2CED0(v1, &v57[-v20]);
  sub_219BE20C4();
  v22 = [v1 traitCollection];
  v23 = [v22 horizontalSizeClass];

  v67 = a1;
  v65 = v12;
  v64 = v13;
  v63 = v21;
  if (v23 == 1)
  {
    sub_219A25E28(v68);
    if (v69)
    {
      sub_219A30134(&v70, &v71);
      sub_2190459F8(v68);
      if (*(&v72 + 1))
      {
        sub_218CF6EB8(&v71, &qword_280EE47F0, &qword_280EE47F8);
        sub_219BE20E4();
        (*(v13 + 32))(v16, v19, v12);
        v24 = (*(v13 + 88))(v16, v12);
        if (v24 != *MEMORY[0x277D6E328] && v24 != *MEMORY[0x277D6E318] && v24 != *MEMORY[0x277D6E320] && v24 != *MEMORY[0x277D6E310])
        {
          (*(v13 + 8))(v16, v12);
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_219A2FF6C(v68, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
    }

    sub_218CF6EB8(&v71, &qword_280EE47F0, &qword_280EE47F8);
LABEL_14:
    sub_219BE7DE4();
    v58 = a1;
LABEL_15:
    v36 = *&v2[qword_280EB6510];
    v35 = *&v2[qword_280EB6510 + 8];
    v37 = *&v2[qword_280EB6510 + 16];
    v38 = v2[qword_280EB6510 + 24];
    v39 = qword_280EB6508;
    v40 = v2[qword_280EB6510 + 25];
    swift_beginAccess();
    v59 = type metadata accessor for TagFeedViewerLinkPresentation;
    v41 = v61;
    sub_219A2FFE4(&v2[v39], v61, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_218CC4BB4(v36, v35, v37, v38, v40);

    v43 = v60;
    v44 = sub_219046B48(v60, v41, sub_219A30050, v42, v36, v35, v37, v38 | (v40 << 8));

    sub_218B09E88(v36, v35, v37, v38, v40);
    sub_219A30058(v41, qword_280EAE4D0, v59);

    if (sub_219A26F3C(v43, v44 & 1))
    {
      sub_219A30058(v43, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
      v45 = sub_219BE9CD4();
      v46 = v66;
      (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
    }

    else
    {
      v46 = v66;
      sub_219A300B4(v43, v66);
    }

    v47 = v62;
    v48 = sub_219BE9CD4();
    v49 = *(v48 - 8);
    v50 = (*(v49 + 48))(v46, 1, v48);
    v51 = v65;
    v52 = v64;
    v53 = v63;
    if (v50 != 1)
    {
      sub_219A2FFE4(v46, v47, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
      if ((*(v49 + 88))(v47, v48) == *MEMORY[0x277D6E8B0])
      {
        (*(v49 + 96))(v47, v48);

        sub_2190473C0(0);
        v55 = v54;
        sub_2187FABEC(*(v47 + *(v54 + 80)));
        if ((v58 & 1) == 0 && sub_219BE7ED4())
        {
          swift_getObjectType();
          sub_219BEA334();
          swift_unknownObjectRelease();
        }

        if (sub_219BE7ED4())
        {
          swift_getObjectType();
          sub_219BEA344();
          swift_unknownObjectRelease();
        }

        v56 = *(v55 + 64);
        (*(v52 + 8))(v53, v51);
        sub_219A30058(v47 + v56, &qword_280EE4FA8, MEMORY[0x277D6DC28]);
        return sub_219A30058(v46, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
      }

      (*(v49 + 8))(v47, v48);
    }

    if (sub_219BE7ED4())
    {
      swift_getObjectType();
      sub_219BEA334();
      swift_unknownObjectRelease();
    }

    if (sub_219BE7ED4())
    {
      swift_getObjectType();
      sub_219BEA344();
      swift_unknownObjectRelease();
    }

    (*(v52 + 8))(v53, v51);
    return sub_219A30058(v46, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  }

  result = [v2 view];
  if (result)
  {
    v26 = result;
    [result frame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v74.origin.x = v28;
    v74.origin.y = v30;
    v74.size.width = v32;
    v74.size.height = v34;
    CGRectGetWidth(v74);
    sub_219BE7DE4();
    v58 = 0;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_219A2802C(void *a1)
{
  v1 = a1;
  sub_219A28094();

  v2 = sub_219BF53D4();

  return v2;
}

uint64_t sub_219A28094()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v10, sel_description);
  v2 = sub_219BF5414();

  v3 = *&v0[qword_280EB6510];
  v4 = sub_219BF6394();

  v5 = [v4 displayName];
  swift_unknownObjectRelease();
  v6 = sub_219BF5414();
  v8 = v7;

  MEMORY[0x21CECC330](v6, v8);

  MEMORY[0x21CECC330](8236, 0xE200000000000000);

  return v2;
}

uint64_t sub_219A281B0()
{

  sub_2187FABEC(*(v0 + qword_280EB6470));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_280EB63A0);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_280EB6500);
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_280EB6468);
  sub_218B09E88(*(v0 + qword_280EB6510), *(v0 + qword_280EB6510 + 8), *(v0 + qword_280EB6510 + 16), *(v0 + qword_280EB6510 + 24), *(v0 + qword_280EB6510 + 25));
  sub_219A30058(v0 + qword_280EB6508, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);

  __swift_destroy_boxed_opaque_existential_1(v0 + qword_280EB64D8);

  sub_2190AAF44(*(v0 + qword_280EB63E0));
  sub_2190AAF44(*(v0 + qword_280EB63D8));
  sub_2190AAF44(*(v0 + qword_280EB63D0));
  sub_2190AAF44(*(v0 + qword_280EB63C8));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_280EB6438);
  swift_unknownObjectRelease();
  sub_219A30058(v0 + qword_280EB6488, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
}

id sub_219A2844C()
{
  ObjectType = swift_getObjectType();

  sub_219BE58F4();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_219A284C0(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;

  sub_219BE58F4();

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_219A28538(uint64_t a1)
{

  sub_2187FABEC(*(a1 + qword_280EB6470));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_280EB63A0);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_280EB6500);
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_280EB6468);
  sub_218B09E88(*(a1 + qword_280EB6510), *(a1 + qword_280EB6510 + 8), *(a1 + qword_280EB6510 + 16), *(a1 + qword_280EB6510 + 24), *(a1 + qword_280EB6510 + 25));
  sub_219A30058(a1 + qword_280EB6508, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation);

  __swift_destroy_boxed_opaque_existential_1(a1 + qword_280EB64D8);

  sub_2190AAF44(*(a1 + qword_280EB63E0));
  sub_2190AAF44(*(a1 + qword_280EB63D8));
  sub_2190AAF44(*(a1 + qword_280EB63D0));
  sub_2190AAF44(*(a1 + qword_280EB63C8));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_280EB6438);
  swift_unknownObjectRelease();
  sub_219A30058(a1 + qword_280EB6488, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
}

id sub_219A287E0()
{
  sub_219BE7F04();
  v0 = sub_219BE7F14();
  v0();
  sub_219A2887C();
  sub_219A25FA0();
  if (qword_280EE5DA0 != -1)
  {
    swift_once();
  }

  sub_219BE7EC4();
  sub_219A2D03C();

  return sub_219A2D4B8();
}

uint64_t sub_219A2887C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v2 = qword_280EB6400;
  v3 = *(v0 + qword_280EB6400);
  *(v0 + qword_280EB6400) = v1;

  sub_219A25E28(v7);
  if (!v8)
  {
    return sub_219A2FF6C(v7, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
  }

  sub_2190459F8(v7);
  result = sub_219BE6BC4();
  v5 = *(v0 + v2);
  if (v5)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186C6148(0, &qword_280E8DA00);
    v6 = v5;
    sub_219BE2704();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A289BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_219BE77D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_219BE8DD4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 104))(v13, *MEMORY[0x277D6E318], v9, v11);
  sub_219A30EC0(&qword_280EE4750, MEMORY[0x277D6E330]);
  sub_219BE2114();
  (*(v10 + 8))(v13, v9);
  sub_219BE7F04();
  v14 = sub_219BE7F14();
  v14(a1, a2);
  v15 = [v2 traitCollection];
  v16 = [v2 tabBarController];
  v17 = MEMORY[0x277D6DBA8];
  if (v16)
  {
    v18 = v16;
    type metadata accessor for MainTabBarController();
    if (swift_dynamicCastClass())
    {
      v19 = v18;

      sub_219BE2734();

      if (v21[15])
      {
        v17 = MEMORY[0x277D6DBA0];
      }
    }

    else
    {
    }
  }

  (*(v6 + 104))(v8, *v17, v5);
  sub_219A26798(v15, v8);

  return (*(v6 + 8))(v8, v5);
}

void *sub_219A28CC0()
{
  sub_21881CCEC(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5 - 8];
  v7 = sub_219BED0C4();
  result = 0;
  if ((v7 & 1) == 0)
  {
    v16 = *(v0 + qword_280EB6510);
    v9 = sub_219A307C4();
    v10 = *(v0 + qword_280EB6478);

    sub_219A25E28(v17);
    v11 = *(v0 + qword_280EB6408);
    v12 = *(v0 + qword_280EB6460);
    v13 = MEMORY[0x277D2D4E0];
    sub_219A2FFE4(v0 + qword_280EB6488, v6, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    type metadata accessor for TagFeedViewerBarCompressionAnimating();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14[14] = 0;
    v14[3] = v9;
    swift_unknownObjectWeakAssign();
    v14[4] = v10;
    sub_219A30DF0(v17, (v14 + 5), &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
    sub_219A2FFE4(v6, v3, &qword_280EE33F0, v13);
    v15 = OBJC_IVAR____TtC7NewsUI236TagFeedViewerBarCompressionAnimating_mastheadModel;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_2192471FC(v16, v11, v12, v3, v14 + v15);
    sub_219A30058(v6, &qword_280EE33F0, v13);
    sub_219A2FF6C(v17, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
    return v14;
  }

  return result;
}

void sub_219A28EE4(uint64_t a1)
{
  sub_219BE7F04();
  v3 = sub_219BE7F14();
  v3(a1);
  sub_219A28FA4(0, a1 & 1);
  sub_219A29F1C(0, a1 & 1);
  if ((a1 & 1) == 0)
  {
    v4 = *(v1 + qword_280EB6510);
    sub_218F359E8(v4);
  }
}

void sub_219A28FA4(int a1, int a2)
{
  v3 = v2;
  LODWORD(v104) = a2;
  v101 = a1;
  sub_21881CCEC(0, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v102 = &v100[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v103 = &v100[-v7];
  v8 = &v2[qword_280EB6438];
  __swift_project_boxed_opaque_existential_1(&v2[qword_280EB6438], *&v2[qword_280EB6438 + 24]);
  v9 = qword_280EB6510;
  v10 = *&v2[qword_280EB6510];
  v11 = sub_218F750BC(v10);

  v12 = qword_280EB6410;
  v13 = *&v3[qword_280EB6410];
  *&v3[qword_280EB6410] = v11;

  __swift_project_boxed_opaque_existential_1(v8, *(v8 + 3));
  v14 = *&v3[v9];
  v15 = qword_280EB6458;
  v16 = *&v3[qword_280EB6458];
  v17 = v16;
  v18 = v14;
  v19 = v16;
  v20 = v15;
  v21 = sub_218F79704(v18, v19);

  v22 = *&v3[v15];
  *&v3[v15] = v21;

  if (sub_219BED0C4())
  {
    if (v104 == 2)
    {
      v23 = sub_219BF6564();
      v24 = v103;
      if (v23)
      {
        goto LABEL_15;
      }

LABEL_10:
      v29 = [v3 parentViewController];
      if (v29)
      {
        v30 = v29;
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v31 = sub_219BE6D14();

          if (v31)
          {
            v104 = sub_219BF65B4();
            [v104 setRightBarButtonItems:0 animated:v101 & 1];
LABEL_16:
            v33 = v104;

            return;
          }
        }

        else
        {
        }
      }

      sub_219BE7E34();
      v48 = sub_219BE9CD4();
      v49 = *(v48 - 8);
      v41 = 0;
      v50 = v9;
      v51 = v8;
      if ((*(v49 + 48))(v24, 1, v48) != 1)
      {
        v52 = v102;
        sub_219A2FFE4(v24, v102, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
        if ((*(v49 + 88))(v52, v48) == *MEMORY[0x277D6E8B0])
        {
          (*(v49 + 96))(v52, v48);

          v53 = v52[16];
          sub_2190473C0(0);
          v55 = *(v54 + 64);
          sub_2187FABEC(*&v52[*(v54 + 80)]);
          if (v53 == 1)
          {
            v41 = sub_219BE7E54();
            sub_219A30058(&v52[v55], &qword_280EE4FA8, MEMORY[0x277D6DC28]);
            goto LABEL_60;
          }

          sub_219A30058(&v52[v55], &qword_280EE4FA8, MEMORY[0x277D6DC28]);
        }

        else
        {
          (*(v49 + 8))(v52, v48);
        }

        v41 = 0;
      }

LABEL_60:
      sub_219A30058(v24, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
      if ([*&v3[v50] feedConfiguration] == 3)
      {
        sub_219A3060C();
        v35 = swift_allocObject();
        *(v35 + 1) = xmmword_219C09BA0;
        v35[4] = v41;
        v67 = v41;
        goto LABEL_69;
      }

      sub_219A25E28(v105);
      if (v106)
      {
        v68 = v106;
        sub_2190459F8(v105);
        type metadata accessor for TagFeedViewController();
        sub_219BF6584();

        v69 = v108;
        if (v108)
        {
          v70 = *(v108 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator);
          swift_unknownObjectRetain();

          if (v70)
          {
            v71 = sub_218ABA3DC();
            swift_unknownObjectRelease();
LABEL_68:
            v72 = sub_218ACDE38(v71);

            sub_219A3060C();
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_219C0D560;
            *(inited + 32) = sub_219A2626C();
            v74 = *&v3[v20];
            *(inited + 40) = v74;
            v75 = v74;
            *(inited + 48) = sub_219A26334(&qword_280EB63C8, sub_218F79300);
            *(inited + 56) = sub_219A26334(&qword_280EB63D8, sub_218F786E4);
            *(inited + 64) = sub_219A26334(&qword_280EB63D0, sub_218F7915C);
            v105[0] = v72;
            sub_2191EDADC(inited);
            v35 = v105[0];
LABEL_69:
            __swift_project_boxed_opaque_existential_1(v51, *(v51 + 3));
            v76 = *&v3[v50];
            v77 = sub_219BF65B4();
            v34 = sub_218F76D9C(v76, v77);

            if (v34)
            {
              v78 = sub_219BF65B4();
              [v78 setAdditionalOverflowItems_];
            }

            v79 = sub_219BF65B4();
            v80 = 0;
            v105[0] = MEMORY[0x277D84F90];
            v37 = v35[2];
            while (1)
            {
              if (v37 == v80)
              {

                sub_2186C6148(0, &qword_280E8E5D0);
                v82 = sub_219BF5904();

                [v79 setRightBarButtonItems_];

                goto LABEL_101;
              }

              if (v80 >= v35[2])
              {
                break;
              }

              v81 = v35[v80 + 4];
              v80 = (v80 + 1);
              if (v81)
              {
                v34 = v81;
                MEMORY[0x21CECC690]();
                if (*((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v20 = *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_219BF5A14();
                }

                sub_219BF5A54();
              }
            }

            __break(1u);
            goto LABEL_105;
          }
        }
      }

      else
      {
        sub_219A2FF6C(v105, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
      }

      v71 = MEMORY[0x277D84F90];
      goto LABEL_68;
    }

    v24 = v103;
    if ((v104 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v32 = sub_219BF65B4();
    sub_2186C6148(0, &qword_280E8E5D0);
    v104 = sub_219BF5904();
    [v32 setRightBarButtonItems_];

    goto LABEL_16;
  }

  v25 = v104;
  __swift_project_boxed_opaque_existential_1(v8, *(v8 + 3));
  v26 = *&v3[v9];
  v27 = sub_218F750BC(v26);

  v28 = *&v3[v12];
  *&v3[v12] = v27;

  if ([*&v3[v9] feedConfiguration] == 3)
  {
    return;
  }

  if (v25 == 2)
  {
    if (sub_219BF6564())
    {
      goto LABEL_15;
    }
  }

  else if (v25)
  {
    goto LABEL_15;
  }

  v108 = MEMORY[0x277D84F90];
  sub_219BE7274();
  v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:6 target:0 action:0];
  v35 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v36 = [v3 traitCollection];
  v37 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v38 = [v36 horizontalSizeClass];

  v39 = 4.0;
  if (v38 == 2)
  {
    v39 = 16.0;
  }

  [(__objc2_prot *)v34 setWidth:v39];
  v40 = *&v3[v12];
  if (v40)
  {
    v41 = v40;
    MEMORY[0x21CECC690]();
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_23:
      sub_219BF5A54();

      goto LABEL_24;
    }

LABEL_105:
    sub_219BF5A14();
    goto LABEL_23;
  }

LABEL_24:
  sub_219A25E28(v105);
  if (v106)
  {
    v42 = v106;
    sub_2190459F8(v105);
    type metadata accessor for TagFeedViewController();
    sub_219BF6584();

    v43 = v107;
    if (v107)
    {
      v44 = *&v107[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
      swift_unknownObjectRetain();

      if (v44)
      {
        v45 = sub_218ABA3DC();
        if (v45 >> 62)
        {
          v99 = sub_219BF7214();

          if (!v99)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v46)
          {
LABEL_30:
            swift_unknownObjectRelease();
            goto LABEL_38;
          }
        }

        v47 = sub_218ABA3DC();
        sub_2191EDAB0(v47);
        goto LABEL_30;
      }
    }
  }

  else
  {
    sub_219A2FF6C(v105, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
  }

LABEL_38:
  v56 = sub_219A2626C();
  if (!v56)
  {
    goto LABEL_45;
  }

  v57 = v56;
  if (v108 >> 62)
  {
    if (sub_219BF7214())
    {
LABEL_41:
      if ((sub_219BED0C4() & 1) == 0)
      {
        sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v83 = swift_initStackObject();
        *(v83 + 16) = xmmword_219C189F0;
        *(v83 + 32) = v34;
        *(v83 + 40) = v57;
        v84 = v34;
        sub_2191EDAB0(v83);
        v59 = *&v3[v20];
        if (!v59)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }
  }

  else if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

  v58 = v57;
  MEMORY[0x21CECC690]();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

LABEL_45:
  v59 = *&v3[v20];
  if (!v59)
  {
    goto LABEL_51;
  }

LABEL_46:
  v60 = v59;
  if (sub_219BED0C4())
  {
    v61 = v60;
    MEMORY[0x21CECC690]();
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
  }

  else
  {
    sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_219C189F0;
    *(v62 + 32) = v34;
    *(v62 + 40) = v60;
    v63 = v34;
    sub_2191EDAB0(v62);
  }

LABEL_51:
  v64 = sub_219A26334(&qword_280EB63C8, sub_218F79300);
  if (!v64)
  {
    goto LABEL_82;
  }

  v65 = v64;
  if (v108 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_55;
    }
  }

  else if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

  if ((sub_219BED0C4() & 1) == 0)
  {
    sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_219C189F0;
    *(v85 + 32) = v34;
    *(v85 + 40) = v65;
    v86 = v34;
    sub_2191EDAB0(v85);
    goto LABEL_82;
  }

LABEL_55:
  v66 = v65;
  MEMORY[0x21CECC690]();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

LABEL_82:
  v87 = sub_219A26334(&qword_280EB63D0, sub_218F7915C);
  if (!v87)
  {
    goto LABEL_90;
  }

  v88 = v87;
  if (v108 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_86;
    }
  }

  else if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_86;
  }

  if ((sub_219BED0C4() & 1) == 0)
  {
    sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v90 = swift_initStackObject();
    *(v90 + 16) = xmmword_219C189F0;
    *(v90 + 32) = v34;
    *(v90 + 40) = v88;
    v91 = v34;
    sub_2191EDAB0(v90);
    goto LABEL_90;
  }

LABEL_86:
  v89 = v88;
  MEMORY[0x21CECC690]();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

LABEL_90:
  v92 = sub_219A26334(&qword_280EB63D8, sub_218F786E4);
  if (!v92)
  {
LABEL_99:

    goto LABEL_100;
  }

  v93 = v92;
  v94 = [v3 v35[265]];
  v95 = [v94 v37[381]];

  if (v95 != 2)
  {

    goto LABEL_99;
  }

  if (v108 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_95;
    }
  }

  else if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_95;
  }

  if ((sub_219BED0C4() & 1) == 0)
  {
    sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v98 = swift_initStackObject();
    *(v98 + 16) = xmmword_219C189F0;
    *(v98 + 32) = v34;
    *(v98 + 40) = v93;
    sub_2191EDAB0(v98);
    goto LABEL_100;
  }

LABEL_95:

  v96 = v93;
  MEMORY[0x21CECC690]();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

LABEL_100:
  v97 = sub_219BF65B4();
  sub_2186C6148(0, &qword_280E8E5D0);
  v41 = sub_219BF5904();

  [v97 setRightBarButtonItems_];

LABEL_101:
}

void sub_219A29F1C(char a1, char a2)
{
  v3 = v2;
  if (a2 == 2)
  {
    if ((sub_219BF6564() & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = sub_219BF65B4();
    sub_2186C6148(0, &qword_280E8E5D0);
    v47 = sub_219BF5904();
    [v8 setLeftBarButtonItems_];

    goto LABEL_9;
  }

  if (a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = [v2 parentViewController];
  if (v5)
  {
    v6 = v5;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = sub_219BE6D14();

      if (v7)
      {
        v47 = sub_219BF65B4();
        [v47 setRightBarButtonItems:0 animated:a1 & 1];
LABEL_9:

        return;
      }
    }

    else
    {
    }
  }

  sub_219A25E28(v49);
  if (!v50)
  {
    sub_219A2FF6C(v49, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
LABEL_19:
    v15 = sub_219BF65B4();
    v16 = [v15 leftBarButtonItems];

    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      sub_2186C6148(0, &qword_280E8E5D0);
      v18 = sub_219BF5924();
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v49[0] = v18;
    v19 = sub_219A26334(&qword_280EB63D8, sub_218F786E4);
    if (!v19)
    {
LABEL_71:
      v44 = sub_219BF65B4();
      [v44 setLeftItemsSupplementBackButton_];

      v45 = sub_219BF65B4();
      sub_2186C6148(0, &qword_280E8E5D0);
      v46 = sub_219BF5904();

      [v45 setLeftBarButtonItems_];

      return;
    }

    v20 = v19;
    v21 = [v3 traitCollection];
    v22 = [v21 horizontalSizeClass];

    if (v22 == 1)
    {
      if (!(v18 >> 62))
      {
        v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
LABEL_26:
          v24 = 0;
          while (1)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x21CECE0F0](v24, v18);
              if (__OFADD__(v24++, 1))
              {
                __break(1u);
                return;
              }

              v27 = v25;
              swift_unknownObjectRelease();
              if (v27 == v20)
              {
                goto LABEL_68;
              }
            }

            else
            {
              if ((v24 & 0x8000000000000000) != 0)
              {
                goto LABEL_61;
              }

              if (v24 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_62;
              }

              if (*(v18 + 32 + 8 * v24) == v20)
              {
                goto LABEL_68;
              }

              ++v24;
            }

            if (v24 == v23)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_63:
      v23 = sub_219BF7214();
      if (v23)
      {
        goto LABEL_26;
      }

LABEL_64:
      sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C146A0;
      *(inited + 32) = v20;
      v42 = v20;
      sub_2191EDAB0(inited);
LABEL_68:
      if ((sub_219BED0C4() & 1) == 0)
      {
        v43 = [v3 traitCollection];
        [v43 horizontalSizeClass];

        sub_219BF5944();
      }

      goto LABEL_71;
    }

    v51 = v17;
    if (v18 >> 62)
    {
      v28 = sub_219BF7214();
      if (v28)
      {
LABEL_39:
        v48 = v3;
        v29 = 0;
        v3 = (v18 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x21CECE0F0](v29, v18);
          }

          else
          {
            if (v29 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v30 = *(v18 + 8 * v29 + 32);
          }

          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v30 == v20)
          {
          }

          else
          {
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
          }

          ++v29;
          if (v31 == v28)
          {
            v32 = v51;
            v3 = v48;
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    else
    {
      v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_39;
      }
    }

    v32 = MEMORY[0x277D84F90];
LABEL_67:

    v49[0] = v32;
    goto LABEL_68;
  }

  v9 = v50;
  sub_2190459F8(v49);
  type metadata accessor for TagFeedViewController();
  sub_219BF6584();

  v10 = v51;
  if (!v51)
  {
    goto LABEL_19;
  }

  v11 = *&v51[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
  swift_unknownObjectRetain();

  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = sub_219BF65B4();
  v13 = [v12 leftBarButtonItems];

  if (v13)
  {
    sub_2186C6148(0, &qword_280E8E5D0);
    v14 = sub_219BF5924();
  }

  else
  {
    v14 = 0;
  }

  v33 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_showSearchNavigationItems;
  if (*(v11 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_showSearchNavigationItems) != 1)
  {
    v34 = MEMORY[0x277D84F90];
    if (v14)
    {
      goto LABEL_53;
    }

LABEL_55:

    v36 = 1;
    goto LABEL_56;
  }

  sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_219C146A0;
  *(v34 + 32) = sub_218ABA354();
  if (!v14)
  {
    goto LABEL_55;
  }

LABEL_53:
  v35 = sub_21941AFD8(v14, v34);

  v36 = v35 ^ 1;
LABEL_56:
  v37 = sub_219BF65B4();
  [v37 setLeftItemsSupplementBackButton_];

  v38 = sub_219BF65B4();
  if (*(v11 + v33) == 1)
  {
    sub_219A30E70(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C146A0;
    *(v39 + 32) = sub_218ABA354();
  }

  sub_2186C6148(0, &qword_280E8E5D0);
  v40 = sub_219BF5904();

  [v38 setLeftBarButtonItems:v40 animated:v36 & 1];
  swift_unknownObjectRelease();
}

id sub_219A2A6FC()
{
  v1 = v0;
  v45.receiver = v0;
  v45.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v45, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    goto LABEL_23;
  }

  v3 = result;
  MEMORY[0x28223BE20](result);
  sub_218807578();
  sub_219A30EC0(&qword_280E90610, sub_218807578);
  sub_219BF6C74();

  sub_219BE6BF4();
  v4 = *&v1[qword_280EB64A8];
  v5 = &v1[qword_280EB6510];
  v6 = *&v1[qword_280EB6510];
  v39 = v4;
  sub_218F3586C(v6);

  sub_219BE7E14();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE2774();

  v7 = *v5;
  v8 = *(v5 + 1);
  v9 = *(v5 + 2);
  v10 = v5[24];
  v11 = v5[25];
  sub_218CC4BB4(*v5, v8, v9, v5[24], v5[25]);
  sub_21939A248(v7, v8, v9, v10 | (v11 << 8), v46);
  v12 = 0;
  v13 = v48;
  if (HIBYTE(v48) <= 0xFEu)
  {
    v49 = v46[0];
    v50 = v46[1];
    v51 = v47;
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v16 = v50;
    *(v15 + 24) = v49;
    *(v15 + 40) = v16;
    *(v15 + 56) = v51;
    *(v15 + 64) = v13;
    v17 = swift_allocObject();
    v12 = sub_219A30DB4;
    *(v17 + 16) = sub_219A30DB4;
    *(v17 + 24) = v15;
    v43 = sub_218807CE0;
    v44 = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218807CE4;
    v42 = &block_descriptor_50_1;
    v18 = _Block_copy(aBlock);
    v19 = v1;
    sub_219A30DF0(v46, v40, &qword_280EB2178, &type metadata for TagFeedViewerSectionsRequest);

    [v14 performWithoutAnimation_];
    sub_219A2FF6C(v46, &qword_280EB2178, &type metadata for TagFeedViewerSectionsRequest);
    _Block_release(v18);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }
  }

  v20 = *v5;
  v21 = *(v5 + 1);
  v22 = *(v5 + 2);
  v23 = v5[24];
  v24 = v5[25];
  sub_218CC4BB4(*v5, v21, v22, v23, v24);
  v25 = sub_2190478F8(v20);
  sub_218B09E88(v20, v21, v22, v23, v24);
  if ((v25 & 1) != 0 && [*v5 backingChannel])
  {
    sub_218B06EB0();
    swift_unknownObjectRelease();
  }

  sub_219A25FA0();
  sub_219A28FA4(0, 2);
  sub_219A29F1C(0, 2);
  v26 = [*v5 feedConfiguration];
  if (v26 == 13 || v26 == 11)
  {
    v27 = sub_219BF65B4();
    v28 = *v5;
    sub_219BF63C4();

    v29 = sub_219BF53D4();

    [v27 setTitle_];
  }

  v30 = sub_219BED0C4();
  v31 = sub_219BF65B4();
  v32 = [*v5 name];
  v33 = v32;
  if (v30)
  {
    if (!v32)
    {
      sub_219BF5414();
      v33 = sub_219BF53D4();
    }

    [v31 setBackButtonTitle_];

    v33 = sub_219BF65B4();
    [v33 setBackButtonDisplayMode_];
  }

  else
  {
    if (!v32)
    {
      sub_219BF5414();
      v33 = sub_219BF53D4();
    }

    [v31 setTitle_];
  }

  if (sub_219BE7ED4())
  {
    swift_getObjectType();
    sub_219A30EC0(&unk_280EB6378, type metadata accessor for TagFeedViewerViewController);
    v34 = v1;
    sub_219BEA354();
    swift_unknownObjectRelease();
  }

  v35 = *&v1[qword_280EB64F8];
  v36 = OBJC_IVAR___TSFeedViewContext_showSubscribedAlert;
  swift_beginAccess();
  if (*(v35 + v36) == 1)
  {
    v37 = *v5;
    sub_219BF6394();

    v42 = sub_219BE3C64();
    v43 = sub_219A30EC0(&qword_27CC22920, MEMORY[0x277D34CD0]);
    __swift_allocate_boxed_opaque_existential_1(aBlock);
    swift_unknownObjectRetain();
    sub_219BE3C54();
    sub_219BEA744();
    swift_allocObject();
    v38 = sub_219BEA6C4();
    __swift_project_boxed_opaque_existential_1((v39 + 48), *(v39 + 72));
    sub_21938E044(v38);
    swift_unknownObjectRelease();
  }

  sub_219A25D28();
  return sub_2187FABEC(v12);
}

uint64_t sub_219A2AE1C(uint64_t a1)
{
  v2 = sub_219BEDA44();
  *&v3 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v4 = qword_280EB6510;
  v5 = [objc_msgSend(*(a1 + qword_280EB6510) backingTag];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v6 = [*(a1 + v4) alternativeFeedDescriptor];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 backingTag];

    v9 = [v8 identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();
  }

  sub_219BEDA34();
  sub_219A30EC0(&qword_280E92580, MEMORY[0x277D31D00]);
  return sub_219BF1C54();
}

void sub_219A2B000()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() areAnimationsEnabled];
    sub_219A2773C(v2);
    sub_219A2887C();
  }
}

void sub_219A2B070(void *a1)
{
  v1 = a1;
  sub_219A2A6FC();
}

void sub_219A2B0B8(void *a1)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v1 = v6.receiver;
  objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[qword_280EB64D8 + 24];
    v5 = *&v1[qword_280EB64D8 + 32];
    __swift_project_boxed_opaque_existential_1(&v1[qword_280EB64D8], v4);
    (*(v5 + 16))(v3, v4, v5);
  }
}

void sub_219A2B178(char a1)
{
  v2 = v1;
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1 & 1);
  sub_219BE7E74();
  swift_getObjectType();
  sub_219BE7544();
  swift_unknownObjectRelease();
  sub_219A25FA0();
  if (qword_280EE5DA0 != -1)
  {
    swift_once();
  }

  sub_219BE7EC4();
  sub_219A2D03C();
  sub_219A2D4B8();
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_219A30D10;
  *(v6 + 24) = v5;
  v13[4] = sub_218807D50;
  v13[5] = v6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_218807CE4;
  v13[3] = &block_descriptor_202;
  v7 = _Block_copy(v13);
  v8 = v2;

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_219A2B5F4();
    sub_219BE20A4();
    v9 = [v8 tabBarController];
    if (v9)
    {
      v10 = v9;
      v11 = sub_219BF65B4();
      v12 = [v11 titleView];

      if (v12)
      {
        sub_219BE9C84();
        if (swift_dynamicCastClass())
        {
          sub_219BE9C74();
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

uint64_t sub_219A2B438(void *a1)
{
  v2 = sub_219BE77D4();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [a1 traitCollection];
  v8 = [a1 tabBarController];
  v9 = MEMORY[0x277D6DBA8];
  if (v8)
  {
    v10 = v8;
    type metadata accessor for MainTabBarController();
    if (swift_dynamicCastClass())
    {
      v11 = v10;

      sub_219BE2734();

      if (v13[15])
      {
        v9 = MEMORY[0x277D6DBA0];
      }
    }

    else
    {
    }
  }

  (*(v3 + 104))(v6, *v9, v2);
  sub_219A26798(v7, v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_219A2B5F4()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext();
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF4F84();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881CCEC(0, &unk_280E8FCE8, MEMORY[0x277D346D8]);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v64 - v9;
  v10 = sub_219BF25E4();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881CCEC(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v64 - v14;
  v16 = sub_219BE7394();
  v71 = *(v16 - 8);
  v72 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BF3344();
  v19 = *(v75 - 8);
  *&v20 = MEMORY[0x28223BE20](v75).n128_u64[0];
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = qword_280EB6510;
  v24 = [*(v1 + qword_280EB6510) feedConfiguration];
  v76 = v23;
  if (v24 != 11)
  {
    sub_219BEAF14();
    v25 = *(v1 + v23);
    sub_219BF6394();

    sub_219BF3324();
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    sub_219BE6A74();
    v23 = v76;

    sub_218CF6EB8(&v78, &qword_280EE5AD0, &qword_280EE5AE0);
    (*(v19 + 8))(v22, v75);
  }

  sub_219BEAEF4();
  v26 = v23;
  v27 = *(v1 + v23);
  v28 = sub_219BF6394();

  v77 = v28;
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  sub_219BE6A74();

  sub_218CF6EB8(&v78, &qword_280EE5AD0, &qword_280EE5AE0);
  swift_unknownObjectRelease();
  sub_219BEAF54();
  sub_219BEAF44();
  v29 = *(v1 + v26);
  sub_219BF63A4();

  v30 = sub_219BDB954();
  (*(*(v30 - 8) + 56))(v15, 0, 1, v30);
  *&v78 = *(v1 + v26);
  v31 = v78;
  sub_2186C6148(0, &qword_280E8E560);
  v32 = v31;
  sub_219BE7374();
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  sub_219BE6A74();

  sub_218CF6EB8(&v78, &qword_280EE5AD0, &qword_280EE5AE0);
  (*(v71 + 8))(v18, v72);
  sub_219BEAE24();
  v33 = *(v1 + v26);
  sub_219A30D18();
  v35 = *(v34 + 48);
  *v12 = v33;
  v36 = *MEMORY[0x277D33978];
  v37 = sub_219BF25F4();
  (*(*(v37 - 8) + 104))(&v12[v35], v36, v37);
  v39 = v73;
  v38 = v74;
  (*(v73 + 104))(v12, *MEMORY[0x277D33938], v74);
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v40 = v33;
  sub_219BE6A74();

  sub_218CF6EB8(&v78, &qword_280EE5AD0, &qword_280EE5AE0);
  (*(v39 + 8))(v12, v38);
  v41 = sub_219A26334(&qword_280EB63D8, sub_218F786E4);
  if (v41)
  {

    v42 = v76;
    v43 = [*(v1 + v76) feedConfiguration];
    if (v43 != 9)
    {
      v45 = v68;
      v44 = v69;
      v47 = v66;
      v46 = v67;
      if (v43 == 10)
      {
        v48 = [objc_msgSend(*(v1 + v42) backingTag)];
        swift_unknownObjectRelease();
        v49 = 1;
        if (v48)
        {
          v50 = [v48 identifier];
          v51 = sub_219BF5414();
          v53 = v52;
          swift_unknownObjectRelease();

          *v46 = v51;
          *(v46 + 8) = v53;
          *(v46 + 16) = 0;
          *(v46 + 24) = 1;
          v54 = MEMORY[0x277D346C8];
          v55 = v70;
LABEL_9:
          (*(v44 + 104))(v46, *v54, v55);
          v49 = 0;
LABEL_12:
          (*(v44 + 56))(v46, v49, 1, v55);
          sub_219A2FFE4(v46, v47, &unk_280E8FCE8, MEMORY[0x277D346D8]);
          if ((*(v44 + 48))(v47, 1, v55) == 1)
          {
            v56 = MEMORY[0x277D346D8];
            sub_219A30058(v46, &unk_280E8FCE8, MEMORY[0x277D346D8]);
            v57 = v47;
            v58 = v56;
          }

          else
          {
            (*(v44 + 32))(v45, v47, v55);
            if (qword_280EE38B8 != -1)
            {
              swift_once();
            }

            v59 = v65;
            (*(v44 + 16))(v65, v45, v55);
            v80 = 0;
            v78 = 0u;
            v79 = 0u;
            sub_219BE6A74();
            sub_218CF6EB8(&v78, &qword_280EE5AD0, &qword_280EE5AE0);
            sub_219A2FF04(v59, type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext);
            (*(v44 + 8))(v45, v55);
            v58 = MEMORY[0x277D346D8];
            v57 = v46;
          }

          sub_219A30058(v57, &unk_280E8FCE8, v58);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 1;
      }

      v55 = v70;
      goto LABEL_12;
    }

    v54 = MEMORY[0x277D346D0];
    v44 = v69;
    v55 = v70;
    v46 = v67;
    v45 = v68;
    v47 = v66;
    goto LABEL_9;
  }

LABEL_18:
  v60 = sub_219A26334(&qword_280EB63D0, sub_218F7915C);
  if (v60)
  {

    v61 = [*(v1 + v76) feedConfiguration];
    if ((v61 - 9) <= 1)
    {
      if (qword_280EE38A0 != -1)
      {
        v63 = v61;
        swift_once();
        v61 = v63;
      }

      v77 = v61;
      v80 = 0;
      v78 = 0u;
      v79 = 0u;
      sub_219BE6A74();
      sub_218CF6EB8(&v78, &qword_280EE5AD0, &qword_280EE5AE0);
    }
  }

  sub_219BE6AA4();
  swift_getObjectType();
  sub_219BEAF14();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218740ED4();
  sub_219BE7004();
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(&v78);
}

void sub_219A2C128(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_219A2B178(a3);
}

void sub_219A2C17C(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a3);
  sub_219BE7E74();
  swift_getObjectType();
  sub_219BE7534();
  swift_unknownObjectRelease();
  sub_219BE6AB4();
  sub_219BE5904();
}

uint64_t sub_219A2C22C(char a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1 & 1);
  sub_219BE1D04();
  if ((sub_219BF6564() & 1) == 0)
  {
    v4 = *&v2[qword_280EB6510];
    sub_218F359E8(v4);
  }

  return sub_219BE5964();
}

void sub_219A2C2D8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_219A2C22C(a3);
}

id sub_219A2C32C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE77D4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_traitCollectionDidChange_, a1, v7);
  sub_219A28FA4(0, 2);
  sub_219A29F1C(0, 2);
  v10 = [v2 traitCollection];
  v11 = [v2 tabBarController];
  v12 = MEMORY[0x277D6DBA8];
  if (v11)
  {
    v13 = v11;
    type metadata accessor for MainTabBarController();
    if (swift_dynamicCastClass())
    {
      v14 = v13;

      sub_219BE2734();

      if (v20[15])
      {
        v12 = MEMORY[0x277D6DBA0];
      }
    }

    else
    {
    }
  }

  (*(v6 + 104))(v9, *v12, v5);
  sub_219A26798(v10, v9);

  (*(v6 + 8))(v9, v5);
  v15 = [v2 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = *&v2[qword_280EB64D8 + 24];
    v18 = *&v2[qword_280EB64D8 + 32];
    __swift_project_boxed_opaque_existential_1(&v2[qword_280EB64D8], v17);
    (*(v18 + 16))(v16, v17, v18);
  }

  sub_219BE6B94();
  return sub_219A2773C(0);
}

void sub_219A2C5A8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_219A2C32C(a3);
}

void sub_219A2C614(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_didReceiveMemoryWarning);
  sub_219BE3264();
}

id sub_219A2C678(void *a1)
{
  v1 = a1;
  v2 = sub_219A307C4();

  return v2;
}

uint64_t sub_219A2C6BC()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v19 = v0;
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v10 = sub_219BF01B4();
    v11 = __swift_project_value_buffer(v10, qword_280F61940);
    v7[3] = v10;
    v7[4] = sub_219A30EC0(&qword_280E91000, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v15 = sub_219BF54E4();
    v17 = v16;

    v7[5] = v15;
    v7[6] = v17;
    (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
    v18 = v19;
    (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v19);
    sub_219BE6BD4();
    (*(v1 + 8))(v3, v18);

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_219A2CA34()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
    (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
    sub_219BE6BD4();
    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
  }
}

void sub_219A2CC2C()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    *v7 = sub_219BF1554();
    v7[1] = v10;
    v7[7] = sub_219BF1534();
    v7[8] = v11;
    v12 = sub_219BE5AA4();
    v13 = MEMORY[0x277D6D2E8];
    v7[5] = v12;
    v7[6] = v13;
    __swift_allocate_boxed_opaque_existential_1(v7 + 2);
    sub_219BE5A64();
    (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
    (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
    sub_219BE6BD4();
    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
  }
}

id sub_219A2CE74(uint64_t a1, unint64_t a2)
{
  sub_219A26504(a2, v4);
  v2 = v5;
  sub_2190459F8(v4);
  return v2;
}

uint64_t sub_219A2CED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219A25E28(v9);
  if (!v10)
  {
    sub_219A2FF6C(v9, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
LABEL_5:
    sub_218CF6EB8(&v12, &qword_280EE47F0, &qword_280EE47F8);
    v4 = qword_280EB6510;
    if ([*(a1 + qword_280EB6510) feedConfiguration] == 8)
    {
      v5 = [*(a1 + v4) alternativeFeedDescriptor];
      if (!v5)
      {
        return sub_219BE20E4();
      }
    }

    v6 = *MEMORY[0x277D6E310];
    v7 = sub_219BE8DD4();
    return (*(*(v7 - 8) + 104))(a2, v6, v7);
  }

  sub_219A30134(&v11, &v12);
  sub_2190459F8(v9);
  if (!*(&v13 + 1))
  {
    goto LABEL_5;
  }

  sub_218CF6EB8(&v12, &qword_280EE47F0, &qword_280EE47F8);
  return sub_219BE20E4();
}

uint64_t sub_219A2D03C()
{
  v1 = v0;
  v2 = qword_280EB6510;
  v3 = [*(v0 + qword_280EB6510) alternativeFeedDescriptor];
  if (!v3)
  {
    v3 = *(v0 + v2);
  }

  v4 = [v3 backingChannel];
  if (v4)
  {
    v5 = [v4 asChannel];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_msgSend(v3 backingTag)];
  swift_unknownObjectRelease();
  v7 = [objc_msgSend(*(v0 + v2) backingTag)];
  swift_unknownObjectRelease();
  [v3 feedConfiguration];
  v8 = [v3 feedConfiguration];
  if (!v5 && (!v6 ? (v9 = v7 == 0) : (v9 = 0), v9))
  {
    sub_219BE7E74();
    swift_getObjectType();
    sub_219BE5CC4();
    sub_219BE5C94();
    sub_219BE6D04();
    sub_219A30EC0(&unk_280EE5710, MEMORY[0x277D6D808]);
    sub_219BE7524();
  }

  else
  {
    v17 = v8;
    v16 = v8 == 11;
    sub_219BE7E74();
    swift_getObjectType();
    sub_219BE5CC4();
    sub_219BE5C94();
    sub_219BE6D04();
    v10 = sub_219BE7504();

    swift_unknownObjectRelease();
    v11 = sub_219A2DC84(v5, v3, v1, v10, v6, v7, v16);
    if (v7)
    {
      swift_unknownObjectRetain();
      v12 = sub_219BF4DB4();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = *(v1 + v2);
      v12 = sub_219BF4DC4();
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v12;
    sub_219BEA234();
    swift_allocObject();
    sub_219BEA244();
    if (v17 == 11)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_219BE7E74();
      swift_getObjectType();
      sub_219BE5C94();
      sub_219A30EC0(&unk_280EE5710, MEMORY[0x277D6D808]);
      sub_219BE7514();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

id sub_219A2D4B8()
{
  v1 = v0;
  v2 = sub_219BE7C14();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_219BE93F4();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE6904();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881CCEC(0, &qword_280EE4FE8, sub_218F7CC98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  sub_218F7CC98();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  __swift_project_boxed_opaque_existential_1((v0 + qword_280EB6438), *(v0 + qword_280EB6438 + 24));
  v20 = qword_280EB6510;
  v21 = *(v0 + qword_280EB6510);
  if ([v21 feedConfiguration] != 11)
  {

    (*(v14 + 56))(v11, 1, 1, v13);
    goto LABEL_10;
  }

  sub_218F7AFAC(v21, v11);

  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
LABEL_10:
    sub_219A30058(v11, &qword_280EE4FE8, sub_218F7CC98);
    goto LABEL_13;
  }

  sub_219A301B8(v11, v19, sub_218F7CC98);
  v22 = *(v0 + qword_280EB6430);
  sub_219A30220(v19, v17, sub_218F7CC98);
  v23 = &v17[*(v13 + 48)];
  v24 = *v23;
  v25 = v23[1];

  sub_219A2FEB4(v24, v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_2191F7B84(0, v22[2] + 1, 1, v22);
  }

  v26 = v47;
  v28 = v22[2];
  v27 = v22[3];
  if (v28 >= v27 >> 1)
  {
    v22 = sub_2191F7B84(v27 > 1, v28 + 1, 1, v22);
  }

  v22[2] = v28 + 1;
  v29 = sub_219BE7854();
  (*(*(v29 - 8) + 32))(v22 + ((*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80)) + *(*(v29 - 8) + 72) * v28, v17, v29);
  sub_219BE5CC4();
  sub_219BE5CA4();
  sub_219BE68F4();
  sub_219BE7E74();
  swift_getObjectType();
  sub_219BE7554();
  swift_unknownObjectRelease();
  v30 = &v19[*(v13 + 48)];
  v31 = *v30;
  v32 = v26;
  if (*v30 < 0)
  {
    sub_219BE7E74();
    swift_getObjectType();
    v52[5] = v31 & 0x7FFFFFFFFFFFFFFFLL;
    v52[3] = sub_219BE9634();
    v52[4] = MEMORY[0x277D6E6C0];
    __swift_allocate_boxed_opaque_existential_1(v52);
    sub_219BE9624();
    sub_219BE6FC4();
    sub_219A30EC0(&qword_27CC228F0, MEMORY[0x277D6D8D8]);
    sub_219BE7514();
    swift_unknownObjectRelease();
    (*(v48 + 8))(v26, v49);
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    v33 = v30[1];
    sub_219BE7E74();
    swift_getObjectType();
    v52[0] = v31;
    v34 = v33;
    v35 = v44;
    sub_219BE93E4();
    sub_219BE6774();
    sub_219A30EC0(&qword_27CC228F8, MEMORY[0x277D6D6B0]);
    sub_219BE7514();
    swift_unknownObjectRelease();
    (*(v45 + 8))(v35, v46);
    (*(v48 + 8))(v32, v49);
  }

  sub_219A2FF04(v19, sub_218F7CC98);
LABEL_13:
  result = [*(v1 + v20) feedConfiguration];
  if (result == 11)
  {
    sub_219BE7E74();
    sub_219BE5CC4();
    v52[0] = sub_219BE5CA4();
    v37 = *(v1 + v20);
    swift_getObjectType();
    v38 = v37;
    v39 = sub_219BF63C4();
    v41 = v40;

    *v4 = v39;
    v4[1] = v41;
    v43 = v50;
    v42 = v51;
    (*(v50 + 104))(v4, *MEMORY[0x277D6DCB0], v51);
    sub_219BE7C24();
    sub_219A30EC0(&qword_280EE4E50, MEMORY[0x277D6DCC8]);
    sub_219BE7514();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v4, v42);
  }

  return result;
}

uint64_t sub_219A2DC84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7)
{
  LODWORD(v92) = a7;
  v94 = a5;
  v95 = a6;
  v90 = a4;
  v93 = a3;
  v8 = sub_219BF3A74();
  v88 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF2BC4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF3154();
  v96 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v76 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v76 - v21;
  MEMORY[0x28223BE20](v20);
  v26 = v76 - v25;
  if (v23)
  {
    v27 = v23;
    swift_unknownObjectRetain();
    v28 = sub_21988E8A8([a2 feedConfiguration]);
    v98 = MEMORY[0x277D84F90];
    v29 = *(v28 + 16);
    if (v29)
    {
      v91 = qword_280EB63F8;
      v92 = v27;
      v30 = *(v96 + 16);
      v31 = *(v96 + 80);
      v85 = v28;
      v32 = v28 + ((v31 + 32) & ~v31);
      v95 = *(v96 + 72);
      v33 = (v96 + 88);
      LODWORD(v94) = *MEMORY[0x277D33D50];
      LODWORD(v88) = *MEMORY[0x277D33D40];
      LODWORD(v87) = *MEMORY[0x277D33D38];
      v86 = *MEMORY[0x277D33D48];
      v96 += 16;
      v34 = (v96 - 8);
      v89 = MEMORY[0x277D84F90];
      do
      {
        v30(v26, v32, v15);
        v30(v22, v26, v15);
        v36 = (*v33)(v22, v15);
        if (v36 == v94 || v36 == v88 || (v36 != v87 ? (v39 = v36 == v86) : (v39 = 1), v39))
        {
          v37 = sub_219BF4D94();
          v38 = (*v34)(v26, v15);
          if (v37)
          {
            MEMORY[0x21CECC690](v38);
            if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v89 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_219BF5A14();
            }

            sub_219BF5A54();
            v89 = v98;
          }
        }

        else
        {
          v35 = *v34;
          (*v34)(v26, v15);
          v35(v22, v15);
        }

        v32 += v95;
        --v29;
      }

      while (v29);
      swift_unknownObjectRelease();

      return v89;
    }

    else
    {
      swift_unknownObjectRelease();

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v91 = v10;
    if (v94)
    {
      v41 = *(v12 + 104);
      v41(v14, *MEMORY[0x277D33B08], v11);
      swift_unknownObjectRetain();
      v42 = sub_219BF4D84();
      v43 = *(v12 + 8);
      v43(v14, v11);
      v97[4] = v42;
      v41(v14, *MEMORY[0x277D33B00], v11);
      v44 = sub_219BF4D84();
      v43(v14, v11);
      v45 = 0;
      v97[5] = v44;
      v46 = MEMORY[0x277D84F90];
      v98 = MEMORY[0x277D84F90];
      while (v45 != 2)
      {
        v47 = v97[v45++ + 4];
        if (v47)
        {
          v48 = v47;
          MEMORY[0x21CECC690]();
          if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          v46 = v98;
        }
      }

      v49 = v46;
      swift_unknownObjectRelease();
      sub_2186E5128(0, &qword_280E8E878, &qword_280E8E880);
      swift_arrayDestroy();
      return v49;
    }

    else
    {
      result = MEMORY[0x277D84F90];
      if (v95 && (v92 & 1) == 0)
      {
        v94 = v24;
        v84 = v8;
        v50 = MEMORY[0x277D84F90];
        swift_unknownObjectRetain();
        v51 = sub_21988E8A8([a2 feedConfiguration]);
        v98 = v50;
        v52 = *(v51 + 16);
        if (v52)
        {
          v92 = *(v96 + 16);
          v83 = qword_280EB63F8;
          v53 = (*(v96 + 80) + 32) & ~*(v96 + 80);
          v76[1] = v51;
          v54 = v51 + v53;
          v87 = *(v96 + 72);
          v55 = (v96 + 88);
          v86 = *MEMORY[0x277D33D50];
          v80 = *MEMORY[0x277D33D40];
          v78 = *MEMORY[0x277D33D38];
          v77 = *MEMORY[0x277D33D48];
          v96 += 16;
          v56 = (v96 - 8);
          v79 = *MEMORY[0x277D34010];
          v82 = (v88 + 104);
          v81 = (v88 + 8);
          LODWORD(v85) = *MEMORY[0x277D34018];
          v89 = MEMORY[0x277D84F90];
          do
          {
            v57 = v92;
            v92(v19, v54, v15);
            v58 = v94;
            v57(v94, v19, v15);
            v59 = (*v55)(v58, v15);
            v60 = v85;
            if (v59 == v86 || (v60 = v79, v59 == v80))
            {
              v61 = v84;
              v62 = v91;
              (*v82)(v91, v60, v84);
              v63 = sub_219BF4DA4();
              (*v81)(v62, v61);
              v64 = (*v56)(v19, v15);
              if (v63)
              {
                MEMORY[0x21CECC690](v64);
                if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v89 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_219BF5A14();
                }

                sub_219BF5A54();
                v89 = v98;
              }
            }

            else
            {
              v65 = *v56;
              v66 = v59;
              (*v56)(v19, v15);
              if (v66 != v78 && v66 != v77)
              {
                v65(v94, v15);
              }
            }

            v54 += v87;
            --v52;
          }

          while (v52);

          v68 = v89;
        }

        else
        {

          v68 = MEMORY[0x277D84F90];
        }

        v69 = v68;
        v98 = v68;
        swift_getObjectType();
        v70 = sub_219BF68E4();
        v71 = v84;
        v72 = v88;
        v73 = v91;
        if ((v70 & 1) != 0 && ((*(v88 + 104))(v91, *MEMORY[0x277D34008], v84), v74 = sub_219BF4DA4(), (*(v72 + 8))(v73, v71), v74))
        {
          v75 = v74;
          MEMORY[0x21CECC690]();
          if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();

          swift_unknownObjectRelease();
          return v98;
        }

        else
        {
          swift_unknownObjectRelease();
          return v69;
        }
      }
    }
  }

  return result;
}

uint64_t sub_219A2E68C()
{
  objc_allocWithZone(sub_219BE8834());

  v0 = sub_219BE8824();
  v1 = sub_219BE9284();

  return v1;
}

void sub_219A2E720()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() areAnimationsEnabled];
    sub_219A28FA4(v2, 2);
  }
}

id sub_219A2E790@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_21881CCEC(0, &qword_280E90548, MEMORY[0x277D336D0]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v67 - v9;
  v11 = type metadata accessor for NameLogoMastheadModel();
  v71 = *(v11 - 8);
  v12 = *(v71 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  v16 = sub_219BF1FB4();
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x28223BE20](v16);
  v73 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881CCEC(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v67 - v19;
  sub_21881CCEC(0, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = (&v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  if (a2)
  {
    sub_21999A528(a1, &v78);
    v27 = *&v4[qword_280EB6510];
    v28 = __swift_project_boxed_opaque_existential_1(&v4[qword_280EB6468], *&v4[qword_280EB6468 + 24]);
    LOBYTE(v76) = 0;
    v77 = v27;
    v29 = *v28;
    v30 = *(&v79 + 1);
    v31 = v80;
    v32 = __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
    v33 = v27;
    v34 = sub_219A8BDA0(v32, &v76, v29, v30, v31);
    sub_219A2F1E4(v4, a3 + 32);
    v35 = sub_219A2F9E8(a3 + 32, v34, sub_219A30308);
    v36 = sub_219BE8644();

    __swift_destroy_boxed_opaque_existential_1(&v78);
    *a3 = a1;
    *(a3 + 8) = 1;
    *(a3 + 16) = v35;
LABEL_25:
    *(a3 + 24) = v36;
    return sub_2194B5588(a1, a2 & 1);
  }

  v67 = v10;
  v68 = v15;
  v70 = a2;
  __swift_project_boxed_opaque_existential_1(&v4[qword_280EB6500], *&v4[qword_280EB6500 + 24]);
  v37 = sub_219517A08(a1, *&v4[qword_280EB6440]);
  v38 = *&v37[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
  if (v38)
  {
    sub_218718690(&v4[qword_280EB64D8], &v78);
    v39 = OBJC_IVAR____TtC7NewsUI221TagFeedViewController_titleViewProvider;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_219A3028C(&v78, &v37[v39]);
    swift_endAccess();
    *(v38 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_delegate + 8) = &off_282A98720;
    swift_unknownObjectWeakAssign();
    sub_218ABB60C(v4);
    v40 = sub_219BF65B4();
    [v40 setHidesSearchBarWhenScrolling_];
    swift_unknownObjectRelease();
  }

  v69 = v37;
  v41 = *&v4[qword_280EB64C8];
  v42 = *&v4[qword_280EB6408];
  v43 = *&v4[qword_280EB6460];
  sub_219A2FFE4(&v4[qword_280EB6488], v20, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  sub_2194B5588(a1, 0);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2192471FC(a1, v42, v43, v20, v26);
  sub_219A2FFE4(v26, v24, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
  v44 = type metadata accessor for SuperfeedMastheadModel();
  if ((*(*(v44 - 8) + 48))(v24, 1, v44) == 1)
  {
    sub_219A30058(v26, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
LABEL_7:
    LOBYTE(a2) = v70;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
LABEL_24:
    v64 = v69;
    v65 = sub_219A2F9E8(&v78, v69, sub_219A30578);
    v36 = sub_219BE8644();

    *a3 = a1;
    *(a3 + 8) = 0;
    v66 = v79;
    *(a3 + 32) = v78;
    *(a3 + 48) = v66;
    *(a3 + 64) = v80;
    *(a3 + 16) = v65;
    goto LABEL_25;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v74;
  v46 = v75;
  v48 = v73;
  if (EnumCaseMultiPayload <= 8)
  {
    if (((1 << EnumCaseMultiPayload) & 0x1B4) != 0)
    {
      v49 = *v24;
      __swift_project_boxed_opaque_existential_1(v41 + 2, v41[5]);
      sub_2186C709C(0, &qword_280EE05D8);
      *(swift_allocObject() + 16) = v49;
      sub_219BE1E14();

      v50 = v76;
      if (v76)
      {
        v51 = v77;
        *(&v79 + 1) = swift_getObjectType();
        v80 = v51[2];
        *&v78 = v50;
LABEL_22:
        sub_219A30058(v26, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
        goto LABEL_23;
      }

      sub_219A30058(v26, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
      v78 = 0u;
      v79 = 0u;
      v80 = 0;
LABEL_23:
      LOBYTE(a2) = v70;
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_219A30058(v26, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
      v78 = 0u;
      v79 = 0u;
      v80 = 0;
      sub_219A2FF04(v24, type metadata accessor for SuperfeedMastheadModel);
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_219A30058(v26, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
      sub_219A2FF04(v24, type metadata accessor for SuperfeedMastheadModel);
      goto LABEL_7;
    }
  }

  if (EnumCaseMultiPayload)
  {
    v57 = v68;
    sub_219A301B8(v24, v68, type metadata accessor for NameLogoMastheadModel);
    v58 = v41[5];
    v75 = v41[6];
    v74 = __swift_project_boxed_opaque_existential_1(v41 + 2, v58);
    v59 = type metadata accessor for NameLogoMastheadViewProvider();
    v60 = v72;
    sub_219A30220(v57, v72, type metadata accessor for NameLogoMastheadModel);
    v61 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v62 = swift_allocObject();
    sub_219A301B8(v60, v62 + v61, type metadata accessor for NameLogoMastheadModel);
    v63 = sub_219BE1E04();

    if (v63)
    {
      *(&v79 + 1) = v59;
      v80 = sub_219A30EC0(&unk_27CC22900, type metadata accessor for NameLogoMastheadViewProvider);
      *&v78 = v63;
      sub_219A2FF04(v57, type metadata accessor for NameLogoMastheadModel);
      goto LABEL_22;
    }
  }

  else
  {
    (v74[4])(v73, v24, v75);
    __swift_project_boxed_opaque_existential_1(v41 + 2, v41[5]);
    v52 = v48;
    v53 = sub_219BF3514();
    result = sub_219BE1E24();
    if (result)
    {
      v55 = result;
      v56 = v67;
      (v47[2])(v67, v52, v46);
      (v47[7])(v56, 0, 1, v46);
      sub_219BF3504();
      *(&v79 + 1) = v53;
      v80 = sub_219A30EC0(&qword_280E90178, MEMORY[0x277D33E58]);
      *&v78 = v55;
      (v47[1])(v52, v46);
      goto LABEL_22;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219A2F1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21881CCEC(0, &qword_280E90548, MEMORY[0x277D336D0]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v7 = type metadata accessor for NameLogoMastheadModel();
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = sub_219BF1FB4();
  v14 = *(v13 - 8);
  v60 = v13;
  v61 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881CCEC(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v54 - v18;
  sub_21881CCEC(0, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  result = sub_219BED0C4();
  if ((result & 1) == 0)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v56 = v6;
  v57 = v12;
  v58 = a2;
  v55 = *(a1 + qword_280EB64C8);
  v27 = *(a1 + qword_280EB6510);
  v28 = *(a1 + qword_280EB6408);
  v29 = *(a1 + qword_280EB6460);
  sub_219A2FFE4(a1 + qword_280EB6488, v19, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v30 = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2192471FC(v30, v28, v29, v19, v25);
  sub_219A2FFE4(v25, v23, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
  v31 = type metadata accessor for SuperfeedMastheadModel();
  if ((*(*(v31 - 8) + 48))(v23, 1, v31) == 1)
  {
LABEL_3:

    result = sub_219A30058(v25, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
LABEL_4:
    v32 = v58;
    *(v58 + 32) = 0;
    *v32 = 0u;
    v32[1] = 0u;
    return result;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = v56;
  v34 = v57;
  v36 = v61;
  if (EnumCaseMultiPayload <= 8)
  {
    if (((1 << EnumCaseMultiPayload) & 0x1B4) != 0)
    {
      v37 = *v23;
      __swift_project_boxed_opaque_existential_1((v55 + 16), *(v55 + 40));
      sub_2186C709C(0, &qword_280EE05D8);
      *(swift_allocObject() + 16) = v37;
      sub_219BE1E14();

      v38 = v62;
      if (!v62)
      {
        goto LABEL_3;
      }

      v39 = v63;
      ObjectType = swift_getObjectType();
      v41 = *(v39 + 16);
      v42 = v58;
      *(v58 + 24) = ObjectType;
      v42[4] = v41;

      *v42 = v38;
      return sub_219A30058(v25, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
    }

    if (EnumCaseMultiPayload == 3)
    {

      sub_219A30058(v25, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
      v43 = v58;
      *v58 = 0u;
      *(v43 + 16) = 0u;
      *(v43 + 32) = 0;
      return sub_219A2FF04(v23, type metadata accessor for SuperfeedMastheadModel);
    }

    if (EnumCaseMultiPayload == 6)
    {

      sub_219A30058(v25, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
      result = sub_219A2FF04(v23, type metadata accessor for SuperfeedMastheadModel);
      goto LABEL_4;
    }
  }

  if (EnumCaseMultiPayload)
  {
    sub_219A301B8(v23, v57, type metadata accessor for NameLogoMastheadModel);
    v48 = v34;
    __swift_project_boxed_opaque_existential_1((v55 + 16), *(v55 + 40));
    v49 = type metadata accessor for NameLogoMastheadViewProvider();
    sub_219A30220(v48, v10, type metadata accessor for NameLogoMastheadModel);
    v50 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v51 = swift_allocObject();
    sub_219A301B8(v10, v51 + v50, type metadata accessor for NameLogoMastheadModel);
    v52 = sub_219BE1E04();

    if (v52)
    {
      v53 = v58;
      *(v58 + 24) = v49;
      v53[4] = sub_219A30EC0(&unk_27CC22900, type metadata accessor for NameLogoMastheadViewProvider);

      *v53 = v52;
      sub_219A2FF04(v57, type metadata accessor for NameLogoMastheadModel);
      return sub_219A30058(v25, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
    }
  }

  else
  {
    v44 = v60;
    (*(v61 + 32))(v16, v23, v60);
    __swift_project_boxed_opaque_existential_1((v55 + 16), *(v55 + 40));
    v45 = sub_219BF3514();
    result = sub_219BE1E24();
    if (result)
    {
      v46 = result;
      (*(v36 + 16))(v35, v16, v44);
      (*(v36 + 56))(v35, 0, 1, v44);
      sub_219BF3504();
      v47 = v58;
      *(v58 + 24) = v45;
      v47[4] = sub_219A30EC0(&qword_280E90178, MEMORY[0x277D33E58]);

      *v47 = v46;
      (*(v36 + 8))(v16, v44);
      return sub_219A30058(v25, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_219A2F9E8(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  sub_219A30134(a1, &v9);
  if (v10)
  {
    sub_2186CB1F0(&v9, v11);
    sub_218718690(v11, &v9);
    v4 = objc_allocWithZone(a3(0));
    v5 = a2;
    v6 = sub_219BE8344();
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }

  else
  {
    sub_218CF6EB8(&v9, &qword_280EE47F0, &qword_280EE47F8);

    return a2;
  }
}

void sub_219A2FAC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a2, v3);
    v9 = (*(v4 + 88))(v6, v3);
    v10 = *MEMORY[0x277D6EC88];
    v11 = v9 != *MEMORY[0x277D6EC88];
    (*(v4 + 8))(v6, v3);
    if (v11 != v8[qword_280EB63E8])
    {
      sub_219A26CA4(v9 != v10);
    }
  }
}

void sub_219A2FC34(void *a1)
{
  v1 = a1;
  sub_219A2D03C();
}

void sub_219A2FC7C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_219A307C4();
  [v4 ts:a3 scrollToTop:?];
}

unint64_t sub_219A2FCF4()
{
  result = qword_280EB63B0;
  if (!qword_280EB63B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB63B0);
  }

  return result;
}

void sub_219A2FD48(int a1)
{
  sub_219A29F1C(a1, 2);

  sub_219A28FA4(a1, 2);
}

void sub_219A2FD88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_219A25E28(v9);
  if (v10)
  {
    v4 = v10;
    sub_2190459F8(v9);
    type metadata accessor for TagFeedViewController();
    sub_219BF6584();

    v5 = v11;
    if (v11)
    {
      v6 = *&v11[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
      v7 = *&v11[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator + 8];
      swift_unknownObjectRetain();

      if (v6)
      {
        ObjectType = swift_getObjectType();
        v11 = v6;
        v9[0] = v1;
        v9[1] = v2;
        v10 = v3;
        (*(*(v7 + 8) + 8))(v9, ObjectType);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_219A2FF6C(v9, &qword_280EBCC30, &type metadata for TagFeedViewerSectionModel);
  }
}

void sub_219A2FEB4(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_219A2FF04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A2FF6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_219A30E70(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A2FFE4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21881CCEC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219A30058(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21881CCEC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A300B4(uint64_t a1, uint64_t a2)
{
  sub_21881CCEC(0, &qword_280EE3E10, MEMORY[0x277D6E8C0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A30134(uint64_t a1, uint64_t a2)
{
  sub_218809684(0, &qword_280EE47F0, &qword_280EE47F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A301B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A30220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A3028C(uint64_t a1, uint64_t a2)
{
  sub_218809684(0, &unk_280E9E5B0, qword_280E9E5C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_219A30308()
{
  if (!qword_27CC22910)
  {
    type metadata accessor for MagazineGridViewController();
    sub_219A30EC0(&qword_27CC1E408, type metadata accessor for MagazineGridViewController);
    v0 = sub_219BE8364();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22910);
    }
  }
}

uint64_t objectdestroy_18Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_21Tm_2()
{
  v1 = (type metadata accessor for NameLogoMastheadModel() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  swift_unknownObjectRelease();
  v3 = v1[8];
  v4 = sub_219BEC004();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_219A30508(void *a1)
{
  type metadata accessor for NameLogoMastheadModel();

  return sub_2197EE9C4(a1);
}

void sub_219A30578()
{
  if (!qword_280EE4D00)
  {
    type metadata accessor for TagFeedViewController();
    sub_219A30EC0(&unk_280EC9600, type metadata accessor for TagFeedViewController);
    v0 = sub_219BE8364();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4D00);
    }
  }
}

void sub_219A3060C()
{
  if (!qword_280E8B628)
  {
    sub_2186E5128(255, &unk_280E8E5C0, &qword_280E8E5D0);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B628);
    }
  }
}

uint64_t sub_219A3067C()
{
  v1 = v0 + qword_280EB6510;
  v2 = *(v0 + qword_280EB6510);
  v3 = *(v0 + qword_280EB6510 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 25);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
    }

    else
    {
      if (v5 == 3)
      {
        v6 = v2;
        goto LABEL_11;
      }

      v8 = v2;

      v3 = v4;
    }

    v7 = *(v3 + 16);
LABEL_14:

    return v7;
  }

  if (!*(v1 + 25))
  {
    return 1;
  }

  v9 = *(v1 + 24);
  v6 = v2;
  sub_218CC4CB8(v3, v4, v9);
  sub_218B083D0(v3, v4, v9);
LABEL_11:
  v7 = [v6 backingChannel];

  if (v7)
  {
    v10 = [v7 sectionIDs];
    if (!v10)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v11 = v10;
    v12 = sub_219BF5924();

    swift_unknownObjectRelease();
    v7 = *(v12 + 16);
    goto LABEL_14;
  }

  return v7;
}

uint64_t sub_219A307C4()
{
  v0 = sub_219BE74B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE7DD4();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D6DA10])
  {
    (*(v1 + 96))(v3, v0);
    return *v3;
  }

  else if (v4 == *MEMORY[0x277D6DA18])
  {
    (*(v1 + 96))(v3, v0);
    sub_219BE8384();
    sub_219BE20E4();

    return v6[1];
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

void sub_219A30938(unint64_t a1)
{
  v2 = v1 + qword_280EB6510;
  v3 = *(v1 + qword_280EB6510);
  v4 = *(v1 + qword_280EB6510 + 8);
  v5 = *(v1 + qword_280EB6510 + 16);
  v6 = *(v2 + 25);
  if (v6 <= 1)
  {
    if (*(v2 + 25))
    {
      v17 = *(v2 + 24);
      v12 = v3;
      sub_218CC4CB8(v4, v5, v17);
      sub_218B083D0(v4, v5, v17);
LABEL_15:
      if ([v12 feedConfiguration] == 3)
      {
        v18 = [v12 alternativeFeedDescriptor];
        if (!v18)
        {

          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v16 = [objc_opt_self() bundleForClass_];
          goto LABEL_20;
        }
      }

      v19 = [v12 name];

      sub_219BF5414();
      return;
    }

LABEL_9:
    v12 = v3;
    goto LABEL_15;
  }

  if (v6 == 2)
  {

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(v4 + 16) > a1)
      {
        v13 = v4 + 16 * a1;
        v10 = *(v13 + 32);
        v14 = *(v13 + 40);
        sub_2194B5588(v10, v14);

        if (v14)
        {
LABEL_13:
          sub_218B09E7C(v10, 1);
          type metadata accessor for Localized();
          v15 = swift_getObjCClassFromMetadata();
          v16 = [objc_opt_self() bundleForClass_];
LABEL_20:
          sub_219BDB5E4();

          return;
        }

LABEL_24:
        v24 = [v10 name];
        sub_219BF5414();

        sub_218B09E7C(v10, 0);
        return;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 == 3)
  {
    goto LABEL_9;
  }

  v8 = v3;

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (*(v5 + 16) > a1)
  {
    v9 = v5 + 16 * a1;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    sub_2194B5588(v10, v11);

    if (v11)
    {
      goto LABEL_13;
    }

    v21 = [v10 alternativeFeedDescriptor];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 name];

      sub_219BF5414();
      sub_218B09E7C(v10, 0);
      return;
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
}

void sub_219A30D18()
{
  if (!qword_280E8E570)
  {
    sub_2186C6148(255, &qword_280E8E560);
    sub_219BF25F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E570);
    }
  }
}

uint64_t sub_219A30DF0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_219A30E70(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_219A30E70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_219A30EC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219A30F4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  sub_2186F64EC(0);
  v103 = v3;
  v105 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v98 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v97 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14();
  v94 = v7;
  v93 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v95 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = v73 - v10;
  v102 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v102);
  v99 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v12 - 8);
  v101 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v107 = v73 - v18;
  sub_218CE8B24(0);
  MEMORY[0x28223BE20](v19 - 8);
  v92 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v104 = v73 - v22;
  sub_219A32860(0, &qword_280E8CBD0, sub_219A326E0, &type metadata for CuratedMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = v73 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A326E0();
  v28 = v106;
  sub_219BF7B34();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v83 = v16;
  v85 = 0;
  v86 = v25;
  v88 = a1;
  LOBYTE(v119) = 0;
  sub_2186EC9E0(&qword_280E919C8, sub_2186E3B14);
  v30 = v104;
  v31 = v94;
  sub_219BF7674();
  LOBYTE(v117) = 6;
  sub_219BF7674();
  v81 = v119;
  v80 = v120;
  LOBYTE(v115) = 7;
  sub_219BF7674();
  v79 = v117;
  v78 = v118;
  LOBYTE(v113) = 8;
  sub_219BF7674();
  v77 = v115;
  v76 = v116;
  LOBYTE(v121) = 9;
  sub_219BF7674();
  v75 = v113;
  v74 = v114;
  sub_2186F9548();
  LOBYTE(v112) = 2;
  sub_2186EC9E0(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v106 = v121;
  LOBYTE(v111) = 1;
  sub_219BF7674();
  v91 = v112;
  sub_2186F95C4();
  v33 = v32;
  LOBYTE(v110) = 3;
  sub_2186EC9E0(&qword_280E913F8, sub_2186F95C4);
  sub_219BF7674();
  v89 = v111;
  sub_2186ECA28();
  v35 = v34;
  LOBYTE(v109) = 4;
  sub_2186EC9E0(&qword_280E913D8, sub_2186ECA28);
  v73[0] = v35;
  sub_219BF7674();
  v90 = v110;
  LOBYTE(v109) = 5;
  sub_2186EC9E0(&qword_280E91838, sub_2186F64EC);
  sub_219BF7674();
  sub_219BEF814();
  LOBYTE(v109) = 10;
  sub_2186EC9E0(&qword_280E912E8, MEMORY[0x277D32720]);
  sub_219BF7674();
  LOBYTE(v108) = 11;
  v87 = v24;
  v73[1] = v33;
  sub_219BF7674();
  v82 = v109;
  v36 = v30;
  v37 = v92;
  sub_219A32794(v36, v92, sub_218CE8B24);
  v38 = v93;
  v39 = *(v93 + 48);
  v40 = v39(v37, 1, v31);
  v84 = v27;
  if (v40 == 1)
  {
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v31, qword_280F61818);
    v42 = v95;
    (*(v38 + 16))(v95, v41, v31);
    v43 = v39(v37, 1, v31);
    v44 = v42;
    v45 = v106;
    if (v43 != 1)
    {
      sub_219A32734(v37, sub_218CE8B24);
    }
  }

  else
  {
    v44 = v95;
    (*(v38 + 32))(v95, v37, v31);
    v45 = v106;
  }

  v46 = sub_219BEDB04();
  v47 = v97;
  (*(*(v46 - 8) + 56))(v97, 1, 1, v46);
  v48 = v96;
  sub_219BEEA04();
  sub_219A32734(v47, sub_218CE8A90);
  (*(v38 + 8))(v44, v31);
  v49 = v99;
  (*(v38 + 32))(v99, v48, v31);
  v50 = v102;
  if (v45)
  {
    v51 = v45;
  }

  else
  {
    v108 = 1;
    swift_allocObject();
    v51 = sub_219BEF534();
  }

  v52 = v91;
  v53 = v89;
  *(v49 + v50[6]) = v51;
  if (v52)
  {

    v54 = v52;
  }

  else
  {
    v108 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();

    v54 = sub_219BEF534();
  }

  v55 = v103;
  *(v49 + v50[7]) = v54;
  v56 = v90;
  if (v53)
  {

    v57 = v53;
  }

  else
  {
    LOBYTE(v108) = 1;
    swift_allocObject();

    v57 = sub_219BEF534();
  }

  *(v49 + v50[8]) = v57;
  v58 = v105;
  if (v56)
  {

    v59 = v56;
  }

  else
  {
    v108 = 0;
    swift_allocObject();

    v59 = sub_219BEF534();
  }

  *(v49 + v50[9]) = v59;
  v60 = v83;
  sub_219A32794(v107, v83, sub_218CE8AB0);
  v61 = *(v58 + 48);
  if (v61(v60, 1, v55) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186EC9E0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);

    v62 = v98;
    sub_219BEEC74();
    v63 = v61(v60, 1, v55);
    v64 = v62;
    v65 = v100;
    v66 = v101;
    v67 = v63 == 1;
    v68 = v60;
    v69 = v87;
    v70 = v86;
    if (!v67)
    {
      sub_219A32734(v68, sub_218CE8AB0);
    }
  }

  else
  {
    v64 = v98;
    (*(v58 + 32))(v98, v60, v55);

    v65 = v100;
    v66 = v101;
    v69 = v87;
    v70 = v86;
  }

  v71 = v102;
  (*(v105 + 32))(v49 + *(v102 + 20), v64, v55);
  sub_219A32794(v66, v49 + *(v71 + 40), sub_2186E4FBC);
  v72 = v82;
  if (!v82)
  {
    LOBYTE(v108) = 1;
    swift_allocObject();
    v72 = sub_219BEF534();
  }

  sub_219A32734(v66, sub_2186E4FBC);
  sub_219A32734(v107, sub_218CE8AB0);
  sub_219A32734(v104, sub_218CE8B24);
  (*(v70 + 8))(v84, v69);
  *(v49 + *(v71 + 44)) = v72;
  sub_219A327FC(v49, v65);
  return __swift_destroy_boxed_opaque_existential_1(v88);
}

unint64_t sub_219A31DC4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x726F635365736162;
    v6 = 0x6972657473756C63;
    if (a1 != 10)
    {
      v6 = 0x6F6C42776F6C6C61;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x727563634F78616DLL;
    v8 = 0x746C754D6B6E6172;
    if (a1 != 7)
    {
      v8 = 0x72685465726F6373;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x73656C7572;
    v2 = 0x6F43657269707865;
    v3 = 0xD000000000000016;
    if (a1 != 4)
    {
      v3 = 0x6C6F6F706572;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_219A31F94(void *a1)
{
  v3 = v1;
  sub_219A32860(0, &qword_280E8C410, sub_219A328C8, &type metadata for CuratedMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A328C8();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2186E3B14();
  sub_2186EC9E0(&qword_280E919D0, sub_2186E3B14);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
    LOBYTE(v14) = 1;
    sub_2186F64EC(0);
    sub_2186EC9E0(&unk_280E91840, sub_2186F64EC);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_2186F9548();
    sub_2186EC9E0(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186F95C4();
    sub_2186EC9E0(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_2186ECA28();
    sub_2186EC9E0(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    v12 = v10[10];
    LOBYTE(v14) = 6;
    sub_219BEF814();
    sub_2186EC9E0(&qword_280E912F0, MEMORY[0x277D32720]);
    sub_219BF77E4();
    v14 = *(v3 + v10[11]);
    v13 = 7;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219A32444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219A33814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219A3246C(uint64_t a1)
{
  v2 = sub_219A326E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A324A8(uint64_t a1)
{
  v2 = sub_219A326E0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219A324E4()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0x6972657473756C63;
  if (v1 != 6)
  {
    v3 = 0x6F6C42776F6C6C61;
  }

  v4 = 0x6F43657269707865;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6F6F706572;
  }

  if (*v0 > 1u)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_219A3260C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219A33C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219A32634(uint64_t a1)
{
  v2 = sub_219A328C8();

  return MEMORY[0x2821FE718](a1, v2);
}