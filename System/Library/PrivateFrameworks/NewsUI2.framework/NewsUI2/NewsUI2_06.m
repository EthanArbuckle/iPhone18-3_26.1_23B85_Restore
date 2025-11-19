void sub_2187602F8()
{
  sub_2187603DC(319, &qword_280E90470, MEMORY[0x277D338C0]);
  if (v0 <= 0x3F)
  {
    sub_2186E3374();
    if (v1 <= 0x3F)
    {
      sub_2187603DC(319, &qword_280EAF498, sub_218760430);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2187603DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_218760430()
{
  result = qword_280EAF4A0[0];
  if (!qword_280EAF4A0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280EAF4A0);
  }

  return result;
}

void sub_218760490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21876053C(uint64_t a1, uint64_t a2)
{
  result = sub_218760594(qword_280EA2760, a2, type metadata accessor for PuzzleGameCenterActivitiesHandler);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218760594(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2187605DC(uint64_t a1)
{
  sub_218760638();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218760638()
{
  if (!qword_280E8EAA0)
  {
    sub_219BF5BF4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EAA0);
    }
  }
}

void *sub_218760690(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &unk_280E8E210);
  result = sub_219BE1E24();
  if (result)
  {
    [result addObserver_];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218760724(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2187607DC(a1, v4);
}

uint64_t sub_2187607DC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609CC;

  return v6(a1);
}

uint64_t sub_2187608D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2187609D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_218760AC8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1DB4();
  if (result)
  {
    return result;
  }

  sub_219BDCD74();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDCF54();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_219BDCE84();

  sub_219BDCD74();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDD024();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_219BDCE84();
}

void *sub_218760C48(void *a1, void *a2)
{
  v5 = a1[3];
  v4 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186DC92C();
  v8 = v7;
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v77 = v8;
  v78 = &off_282A9FE70;
  v75 = result;
  v72 = xmmword_219C0A870;
  v74[0] = xmmword_219C0A870;
  v10 = *(v4 + 8);
  v65 = v6;
  v66 = v4;
  v67 = v10;
  v70 = v4 + 8;
  (v10)(&v75, v74, v5, v4);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = type metadata accessor for TodayFeedOfflineFeedUpdater();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v77 = v13;
  v78 = &off_282A49960;
  v75 = result;
  v74[0] = v72;
  (*(v12 + 16))(&v75, v74, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14 = type metadata accessor for PuzzleHubOfflineFeedBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v77 = v14;
  v78 = &off_282A750A0;
  v75 = result;
  v74[0] = xmmword_219C43500;
  v15 = v66;
  (v67)(&v75, v74, v5, v66);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v16 = type metadata accessor for SportsFeedOfflineFeedBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v77 = v16;
  v78 = &off_282A5C8C0;
  v75 = result;
  v74[0] = xmmword_219C43510;
  (v67)(&v75, v74, v5, v66);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186F9F20();
  v18 = v17;
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v59 = a1;
  v77 = v18;
  v78 = &off_282A9FE70;
  v75 = result;
  v74[0] = xmmword_219C43520;
  (v67)(&v75, v74, v5, v66);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186E879C();
  v20 = v19;
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v77 = v20;
  v78 = &off_282A981A8;
  v75 = result;
  v74[0] = 0uLL;
  (v67)(&v75, v74, v5, v66);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186E9710();
  v22 = v21;
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v77 = v22;
  v78 = &off_282A981A8;
  v75 = result;
  v74[0] = xmmword_219C43530;
  (v67)(&v75, v74, v5, v66);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186E9E4C();
  v24 = v23;
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v77 = v24;
  v78 = &off_282A981A8;
  v75 = result;
  v74[0] = xmmword_219C14A10;
  (v67)(&v75, v74, v5, v66);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = type metadata accessor for RecipeBoxFeedOfflineFeedBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v77 = v25;
  v78 = &off_282A6EFE8;
  v75 = result;
  v74[0] = xmmword_219C43540;
  (v67)(&v75, v74, v5, v66);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v26 = type metadata accessor for FoodHubOfflineFeedBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v77 = v26;
  v78 = &off_282A90058;
  v75 = result;
  v74[0] = xmmword_219C43550;
  (v67)(&v75, v74, v5, v66);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v27 = type metadata accessor for RecipeCatalogOfflineFeedBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v77 = v27;
  v78 = &off_282A91478;
  v75 = result;
  v74[0] = xmmword_219C43560;
  v28 = v5;
  (v67)(&v75, v74, v5, v66);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  if (qword_280EA25A0 != -1)
  {
LABEL_32:
    swift_once();
  }

  swift_beginAccess();
  v64 = off_280EA25A8;

  sub_219BE2E84();

  v29 = v75;
  if (!v75)
  {
    v29 = MEMORY[0x277D84F90];
  }

  v68 = v29;
  v63 = *(v29 + 16);
  if (v63)
  {
    sub_2186D6034();
    v62 = v30;
    v31 = 0;
    v69 = 0;
    v60 = "puzzle-hub-feed-offline-db";
    v32 = (v68 + 40);
    v61 = v28;
    while (1)
    {
      if (v31 >= *(v68 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v33 = *(v32 - 1);
      v34 = *v32;
      *&v72 = v32;

      sub_219BE2E84();

      v36 = v75;
      if (v75)
      {
        v75 = v33;
        v76 = v34;
        MEMORY[0x28223BE20](v35);
        v58[2] = &v75;
        v37 = v69;
        v38 = sub_2186D128C(sub_2186D1338, v58, v36);
        v69 = v37;

        if (v38)
        {
          v75 = 0;
          v76 = 0xE000000000000000;
          sub_219BF7314();

          v75 = v33;
          v76 = v34;

          MEMORY[0x21CECC330](0xD000000000000010, v60 | 0x8000000000000000);
        }
      }

      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      result = sub_219BE1DE4();
      if (!result)
      {
        break;
      }

      v39 = result;
      v40 = a2[3];
      v71 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v40);
      v41 = type metadata accessor for PuzzleTypeOfflineFeedBuilder();
      v42 = swift_allocObject();
      v42[2] = v33;
      v42[3] = v34;
      v42[4] = v39;

      v43 = sub_219BE1E04();

      if (!v43)
      {
        goto LABEL_34;
      }

      ++v31;

      v77 = v41;
      v78 = &off_282A9F1A0;
      v75 = v43;
      *&v73 = v33;
      *(&v73 + 1) = v34;
      v28 = v61;
      v15 = v66;
      v67(&v75, &v73);

      sub_218720434(v73, *(&v73 + 1));
      __swift_destroy_boxed_opaque_existential_1(&v75);
      v32 = (v72 + 16);
      if (v63 == v31)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_24:

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v44 = [result narrativeAudio];
  v45 = v59;
  if ((v44 & 1) == 0)
  {
LABEL_29:
    v51 = v45[3];
    v52 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v51);
    (*(v52 + 24))(v51, v52);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BE2A24();
    result = sub_219BE1E24();
    if (result)
    {
      v53 = result;
      v54 = v45;
      v55 = v45[3];
      v56 = v54[4];
      __swift_project_boxed_opaque_existential_1(v54, v55);
      (*(v56 + 96))(v55, v56);
      *(swift_allocObject() + 16) = v53;
      v57 = v53;
      sub_219BE2104();

      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_1(&v75);
    }

    goto LABEL_47;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186F6930();
  v47 = v46;
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v77 = v47;
  v78 = &off_282A9FE70;
  v75 = result;
  v72 = xmmword_219C43570;
  v73 = xmmword_219C43570;
  (v67)(&v75, &v73, v28, v15);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v48 = v45[3];
  v49 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v48);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v50 = type metadata accessor for AudioFeedOfflineFeedUpdater();
  result = sub_219BE1E24();
  if (result)
  {
    v77 = v50;
    v78 = &off_282A37930;
    v75 = result;
    v73 = v72;
    (*(v49 + 16))(&v75, &v73, v48, v49);
    __swift_destroy_boxed_opaque_existential_1(&v75);
    goto LABEL_29;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_218761838()
{

  return swift_deallocObject();
}

uint64_t sub_218761870()
{

  return swift_deallocObject();
}

uint64_t sub_2187618B4(void *a1)
{
  v2 = sub_219BE5434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEE544();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEDA24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925C0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F618A8);
  (*(v9 + 16))(v11, v12, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218712FE4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  v24 = v5;
  v25 = v3;
  v26 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v16 = v30;
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  v17 = v27;
  sub_219BEE534();
  v18 = v26;
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v18, qword_280F626B8);
  v21 = v24;
  v20 = v25;
  (*(v25 + 16))(v24, v19, v18);
  sub_2186DC92C();
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + qword_280ED32C0, v11, v8);
  *(v22 + qword_280ED32C8) = v23;
  *(v22 + *(*v22 + 160)) = v15;
  *(v22 + *(*v22 + 168)) = v16;
  (*(v28 + 32))(v22 + *(*v22 + 176), v17, v29);
  (*(v20 + 32))(v22 + *(*v22 + 184), v21, v18);
  return v22;
}

id sub_218761D5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 todayFeedRules];
  *a2 = result;
  return result;
}

uint64_t sub_218761D9C()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_280F618A8);
  __swift_project_value_buffer(v0, qword_280F618A8);
  if (qword_280E8D8A8 != -1)
  {
    swift_once();
  }

  v1 = qword_280E8D880;
  v2 = qword_280F61770;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_280F61758;
  return sub_219BED9F4();
}

uint64_t sub_218761E94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61770 = result;
  return result;
}

uint64_t sub_218761F6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61758 = result;
  return result;
}

uint64_t sub_218762044(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925C0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F618A8);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E1EB4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186F7F18();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEDE24();
  result = sub_219BE1E24();
  if (result)
  {
    v12[2] = v9;
    v12[3] = v8;
    v12[0] = v11;
    v12[1] = v10;
    sub_218712FE4();
    swift_allocObject();
    return sub_219BF0C74();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2187622D0(void *a1)
{
  if (qword_280E8D880 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61758;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E1CDC();
  v3 = v2;
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for TodayFeedDatabaseGroupProcessor();
  v5 = swift_allocObject();
  sub_2186CB1F0(&v6, v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718850(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2314();
  result = sub_219BE1E24();
  if (result)
  {
    *&v6 = v5;
    sub_2186E1EB4();
    swift_allocObject();
    return sub_219BF0DF4();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218762500(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E1DEC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D8A8 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61770;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_2186E1CDC();
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2187627E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBDB60);
  result = sub_219BE1E34();
  if (!v295)
  {
    __break(1u);
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE14A0);
  result = sub_219BE1E34();
  if (!v293)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510);
  result = sub_219BE1E34();
  if (!v291)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0);
  result = sub_219BE1E34();
  if (!v289)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v287)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E270);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FEBD4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v285)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (!v283)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBFE30);
  result = sub_219BE1E34();
  if (!v281)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedCurationService();
  result = sub_219BE1E24();
  v197 = result;
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E92678);
  result = sub_219BE1E34();
  if (!v279)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DBD0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v195 = v6;
  v196 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E808);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_219BF0144();
  swift_allocObject();
  v7 = sub_219BF0124();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE1810);
  result = sub_219BE1E34();
  if (!v277)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBC190);
  result = sub_219BE1E34();
  if (!v275)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570);
  result = sub_219BE1E34();
  if (!v273)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9C090);
  result = sub_219BE1E34();
  if (!v271)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65A0);
  result = sub_219BE1E34();
  if (!v268)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v194 = v269;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90260);
  result = sub_219BE1E34();
  if (!v267)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsTopicClusteringService();
  result = sub_219BE1E24();
  v193 = result;
  if (!result)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90250);
  result = sub_219BE1E34();
  v192 = v264;
  if (!v264)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v191 = v265;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBA370);
  result = sub_219BE1E34();
  if (!v263)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8010);
  result = sub_219BE1E34();
  if (!v261)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (!v259)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20);
  result = sub_219BE1E34();
  if (!v257)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsSectionService();
  result = sub_219BE1E24();
  v190 = result;
  if (!result)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsScoreSorter();
  result = sub_219BE1E24();
  v189 = result;
  if (!result)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7670);
  result = sub_219BE1E34();
  if (!v255)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3940);
  result = sub_219BE1E34();
  if (!v253)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD40);
  result = sub_219BE1E34();
  if (!v251)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA48C0);
  result = sub_219BE1E34();
  v188 = v248;
  if (!v248)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v187 = v249;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (!v247)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E915D0);
  result = sub_219BE1E34();
  if (!v245)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAD3B0);
  result = sub_219BE1E34();
  if (!v243)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6100);
  result = sub_219BE1E34();
  if (!v241)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EDA4F0);
  result = sub_219BE1E34();
  if (!v239)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBE990);
  result = sub_219BE1E34();
  if (!v237)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (!v235)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v182 = v268;
  v183 = v8;
  v184 = v7;
  v185 = v4;
  v186 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6160);
  result = sub_219BE1E34();
  if (v233)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v294, v295);
    v181 = &v142;
    MEMORY[0x28223BE20](v9);
    v11 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v292, v293);
    v180 = &v142;
    MEMORY[0x28223BE20](v13);
    v15 = (&v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v280, v281);
    v179 = &v142;
    MEMORY[0x28223BE20](v17);
    v169 = (&v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v276, v277);
    v178 = &v142;
    MEMORY[0x28223BE20](v20);
    v168 = (&v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))();
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v274, v275);
    v177 = &v142;
    MEMORY[0x28223BE20](v23);
    v25 = (&v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v270, v271);
    v176 = &v142;
    MEMORY[0x28223BE20](v27);
    v167 = (&v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))();
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v262, v263);
    v175 = &v142;
    MEMORY[0x28223BE20](v30);
    v166 = (&v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))();
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v260, v261);
    v174 = &v142;
    MEMORY[0x28223BE20](v33);
    v35 = (&v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v254, v255);
    v173 = &v142;
    MEMORY[0x28223BE20](v37);
    v39 = (&v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    v41 = __swift_mutable_project_boxed_opaque_existential_1(v252, v253);
    v172 = &v142;
    MEMORY[0x28223BE20](v41);
    v43 = (&v142 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43);
    v45 = __swift_mutable_project_boxed_opaque_existential_1(v242, v243);
    v171 = &v142;
    MEMORY[0x28223BE20](v45);
    v47 = (&v142 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47);
    v49 = __swift_mutable_project_boxed_opaque_existential_1(v236, v237);
    v170 = &v142;
    MEMORY[0x28223BE20](v49);
    v51 = (&v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v52 + 16))(v51);
    v53 = *v15;
    v54 = *v169;
    v163 = *v168;
    v55 = *v166;
    v168 = *v167;
    v169 = v55;
    v56 = *v35;
    v57 = *v39;
    v58 = *v43;
    v59 = *v47;
    v60 = *v51;
    v231[3] = &type metadata for NewspaperGroupService;
    v231[4] = &off_282A6B020;
    v61 = swift_allocObject();
    v231[0] = v61;
    v62 = *(v11 + 11);
    *(v61 + 176) = *(v11 + 10);
    *(v61 + 192) = v62;
    *(v61 + 208) = *(v11 + 24);
    v63 = *(v11 + 7);
    *(v61 + 112) = *(v11 + 6);
    *(v61 + 128) = v63;
    v64 = *(v11 + 9);
    *(v61 + 144) = *(v11 + 8);
    *(v61 + 160) = v64;
    v65 = *(v11 + 3);
    *(v61 + 48) = *(v11 + 2);
    *(v61 + 64) = v65;
    v66 = *(v11 + 5);
    *(v61 + 80) = *(v11 + 4);
    *(v61 + 96) = v66;
    v67 = *(v11 + 1);
    *(v61 + 16) = *v11;
    *(v61 + 32) = v67;
    v166 = type metadata accessor for LocalNewsTodayFeedGroupService();
    v230 = &off_282A43098;
    v229 = v166;
    v228[0] = v53;
    v165 = type metadata accessor for TagHighlightsService();
    v227 = &off_282A90268;
    v226 = v165;
    v225[0] = v54;
    v164 = type metadata accessor for LocalNewsChannelService();
    v224 = &off_282A6E848;
    v223 = v164;
    v222[0] = v163;
    v220 = &type metadata for ChannelHeadlineService;
    v221 = &off_282A6B468;
    v68 = swift_allocObject();
    v219[0] = v68;
    v69 = v25[7];
    v68[7] = v25[6];
    v68[8] = v69;
    v70 = v25[9];
    v68[9] = v25[8];
    v68[10] = v70;
    v71 = v25[3];
    v68[3] = v25[2];
    v68[4] = v71;
    v72 = v25[5];
    v68[5] = v25[4];
    v68[6] = v72;
    v73 = v25[1];
    v68[1] = *v25;
    v68[2] = v73;
    v163 = type metadata accessor for TodayFeedEngagementEventHandler();
    v218 = &off_282A6F2F0;
    v217 = v163;
    v216[0] = v168;
    v162 = type metadata accessor for SportsFavoritesService();
    v215 = &off_282A62438;
    v214 = v162;
    v213[0] = v169;
    v160 = type metadata accessor for SportsRecommendationManager();
    v212 = &off_282A790B8;
    v211 = v160;
    v210[0] = v56;
    v159 = type metadata accessor for MySportsTagService();
    v209 = &off_282A97430;
    v208 = v159;
    v207[0] = v57;
    v158 = type metadata accessor for HistoryService();
    v206 = &off_282A6F3B0;
    v205 = v158;
    v204[0] = v58;
    v157 = type metadata accessor for ChannelPickerConfigManager();
    v203 = &off_282A45268;
    v202 = v157;
    v201[0] = v59;
    v156 = type metadata accessor for FoodClusteringService();
    v199 = v156;
    v200 = &off_282A75BE8;
    v198[0] = v60;
    type metadata accessor for TodayFeedGroupEmitterFactory();
    v74 = swift_allocObject();
    v75 = __swift_mutable_project_boxed_opaque_existential_1(v231, &type metadata for NewspaperGroupService);
    v169 = &v142;
    MEMORY[0x28223BE20](v75);
    v77 = &v142 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v78 + 16))(v77);
    v79 = __swift_mutable_project_boxed_opaque_existential_1(v228, v229);
    v168 = &v142;
    MEMORY[0x28223BE20](v79);
    v81 = (&v142 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v82 + 16))(v81);
    v83 = __swift_mutable_project_boxed_opaque_existential_1(v225, v226);
    v167 = &v142;
    MEMORY[0x28223BE20](v83);
    v149 = (&v142 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v85 + 16))();
    v86 = __swift_mutable_project_boxed_opaque_existential_1(v222, v223);
    v161 = &v142;
    MEMORY[0x28223BE20](v86);
    v147 = (&v142 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))();
    v89 = __swift_mutable_project_boxed_opaque_existential_1(v219, v220);
    v155 = &v142;
    MEMORY[0x28223BE20](v89);
    v91 = (&v142 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v92 + 16))(v91);
    v93 = __swift_mutable_project_boxed_opaque_existential_1(v216, v217);
    v154 = &v142;
    MEMORY[0x28223BE20](v93);
    v145 = (&v142 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v95 + 16))();
    v96 = __swift_mutable_project_boxed_opaque_existential_1(v213, v214);
    v153 = &v142;
    MEMORY[0x28223BE20](v96);
    v144 = (&v142 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v98 + 16))();
    v99 = __swift_mutable_project_boxed_opaque_existential_1(v210, v211);
    v152 = &v142;
    MEMORY[0x28223BE20](v99);
    v143 = (&v142 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v101 + 16))();
    v102 = __swift_mutable_project_boxed_opaque_existential_1(v207, v208);
    v151 = &v142;
    MEMORY[0x28223BE20](v102);
    v104 = (&v142 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v105 + 16))(v104);
    v106 = __swift_mutable_project_boxed_opaque_existential_1(v204, v205);
    v150 = &v142;
    MEMORY[0x28223BE20](v106);
    v108 = (&v142 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v109 + 16))(v108);
    v110 = __swift_mutable_project_boxed_opaque_existential_1(v201, v202);
    v148 = &v142;
    MEMORY[0x28223BE20](v110);
    v112 = (&v142 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v113 + 16))(v112);
    v114 = __swift_mutable_project_boxed_opaque_existential_1(v198, v199);
    v146 = &v142;
    MEMORY[0x28223BE20](v114);
    v116 = (&v142 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v117 + 16))(v116);
    v118 = *v81;
    v119 = *v149;
    v142 = *v147;
    v145 = *v145;
    v147 = *v144;
    v149 = *v143;
    v120 = *v104;
    v121 = *v108;
    v122 = *v112;
    v123 = *v116;
    v74[5] = &type metadata for NewspaperGroupService;
    v74[6] = &off_282A6B020;
    v124 = swift_allocObject();
    v74[2] = v124;
    v125 = *(v77 + 11);
    *(v124 + 176) = *(v77 + 10);
    *(v124 + 192) = v125;
    *(v124 + 208) = *(v77 + 24);
    v126 = *(v77 + 7);
    *(v124 + 112) = *(v77 + 6);
    *(v124 + 128) = v126;
    v127 = *(v77 + 9);
    *(v124 + 144) = *(v77 + 8);
    *(v124 + 160) = v127;
    v128 = *(v77 + 3);
    *(v124 + 48) = *(v77 + 2);
    *(v124 + 64) = v128;
    v129 = *(v77 + 5);
    *(v124 + 80) = *(v77 + 4);
    *(v124 + 96) = v129;
    v130 = *(v77 + 1);
    *(v124 + 16) = *v77;
    *(v124 + 32) = v130;
    v74[10] = v166;
    v74[11] = &off_282A43098;
    v74[7] = v118;
    v74[44] = v165;
    v74[45] = &off_282A90268;
    v74[41] = v119;
    v74[56] = v164;
    v74[57] = &off_282A6E848;
    v74[53] = v142;
    v74[62] = &type metadata for ChannelHeadlineService;
    v74[63] = &off_282A6B468;
    v131 = swift_allocObject();
    v74[59] = v131;
    v132 = v91[7];
    v131[7] = v91[6];
    v131[8] = v132;
    v133 = v91[9];
    v131[9] = v91[8];
    v131[10] = v133;
    v134 = v91[3];
    v131[3] = v91[2];
    v131[4] = v134;
    v135 = v91[5];
    v131[5] = v91[4];
    v131[6] = v135;
    v136 = v91[1];
    v131[1] = *v91;
    v131[2] = v136;
    v74[72] = v163;
    v74[73] = &off_282A6F2F0;
    v74[69] = v145;
    v74[87] = v162;
    v74[88] = &off_282A62438;
    v74[84] = v147;
    v74[92] = v160;
    v74[93] = &off_282A790B8;
    v74[89] = v149;
    v74[109] = v159;
    v74[110] = &off_282A97430;
    v74[106] = v120;
    v74[114] = v158;
    v74[115] = &off_282A6F3B0;
    v74[111] = v121;
    v74[136] = v157;
    v74[137] = &off_282A45268;
    v74[133] = v122;
    v74[151] = v156;
    v74[152] = &off_282A75BE8;
    v74[148] = v123;
    sub_2186CB1F0(&v290, (v74 + 12));
    sub_2186CB1F0(&v288, (v74 + 17));
    sub_2186CB1F0(&v286, (v74 + 22));
    v137 = v185;
    v74[27] = v186;
    v74[28] = v137;
    v74[29] = v196;
    sub_2186CB1F0(&v284, (v74 + 30));
    v74[35] = v195;
    sub_2186CB1F0(&v282, (v74 + 36));
    v74[46] = v197;
    sub_2186CB1F0(&v278, (v74 + 47));
    v138 = v183;
    v74[52] = v184;
    v74[58] = v138;
    sub_2186CB1F0(&v272, (v74 + 64));
    v74[74] = v182;
    v74[75] = v194;
    sub_2186CB1F0(&v266, (v74 + 76));
    v139 = v192;
    v74[81] = v193;
    v74[82] = v139;
    v74[83] = v191;
    sub_2186CB1F0(&v258, (v74 + 94));
    sub_2186CB1F0(&v256, (v74 + 99));
    v140 = v189;
    v74[104] = v190;
    v74[105] = v140;
    sub_2186CB1F0(&v250, (v74 + 116));
    v141 = v187;
    v74[121] = v188;
    v74[122] = v141;
    sub_2186CB1F0(&v246, (v74 + 123));
    sub_2186CB1F0(&v244, (v74 + 128));
    sub_2186CB1F0(&v240, (v74 + 138));
    sub_2186CB1F0(&v238, (v74 + 143));
    sub_2186CB1F0(&v234, (v74 + 153));
    sub_2186CB1F0(&v232, (v74 + 158));
    __swift_destroy_boxed_opaque_existential_1(v198);
    __swift_destroy_boxed_opaque_existential_1(v201);
    __swift_destroy_boxed_opaque_existential_1(v204);
    __swift_destroy_boxed_opaque_existential_1(v207);
    __swift_destroy_boxed_opaque_existential_1(v210);
    __swift_destroy_boxed_opaque_existential_1(v213);
    __swift_destroy_boxed_opaque_existential_1(v216);
    __swift_destroy_boxed_opaque_existential_1(v219);
    __swift_destroy_boxed_opaque_existential_1(v222);
    __swift_destroy_boxed_opaque_existential_1(v225);
    __swift_destroy_boxed_opaque_existential_1(v228);
    __swift_destroy_boxed_opaque_existential_1(v231);
    __swift_destroy_boxed_opaque_existential_1(v236);
    __swift_destroy_boxed_opaque_existential_1(v242);
    __swift_destroy_boxed_opaque_existential_1(v252);
    __swift_destroy_boxed_opaque_existential_1(v254);
    __swift_destroy_boxed_opaque_existential_1(v260);
    __swift_destroy_boxed_opaque_existential_1(v262);
    __swift_destroy_boxed_opaque_existential_1(v270);
    __swift_destroy_boxed_opaque_existential_1(v274);
    __swift_destroy_boxed_opaque_existential_1(v276);
    __swift_destroy_boxed_opaque_existential_1(v280);
    __swift_destroy_boxed_opaque_existential_1(v292);
    __swift_destroy_boxed_opaque_existential_1(v294);
    return v74;
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_218764BFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA0D68);
  result = sub_219BE1E34();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB7A98);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9BB10);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC8918);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510);
  result = sub_219BE1E34();
  if (v7)
  {
    a2[3] = &type metadata for NewspaperGroupService;
    a2[4] = &off_282A6B020;
    v5 = swift_allocObject();
    *a2 = v5;
    sub_2186CB1F0(&v14, v5 + 16);
    sub_2186CB1F0(&v12, v5 + 56);
    sub_2186CB1F0(&v10, v5 + 96);
    sub_2186CB1F0(&v8, v5 + 136);
    return sub_2186CB1F0(&v6, v5 + 176);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218764E30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);

  return swift_deallocObject();
}

uint64_t sub_218764EB8@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, a2);
  result = sub_219BE1E24();
  if (result)
  {
    v10 = result;
    v11 = a3(0);
    result = swift_allocObject();
    *(result + 16) = v10;
    a5[3] = v11;
    a5[4] = a4;
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218764F8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8E270);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for PromotedHeadlineService();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282A3E1A8;
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

uint64_t sub_21876509C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (v7)
  {
    v4 = type metadata accessor for ChannelSectionsGroupPersonalizer();
    v5 = swift_allocObject();
    result = sub_2186CB1F0(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_282AA2B18;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218765174@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9BB10);
  result = sub_219BE1E34();
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &unk_280E8DF40);
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for ChannelSectionsGroupPersonalizer();
      v19[3] = v11;
      v19[4] = &off_282AA2B18;
      v19[0] = v10;
      v12 = type metadata accessor for ChannelHeroService();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      MEMORY[0x28223BE20](v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_282AA2B18;
      v13[2] = v18;
      v13[7] = v5;
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v12;
      a2[4] = &off_282A7A460;
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

uint64_t sub_218765420@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA0D68);
  result = sub_219BE1E34();
  if (!v93)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB7A98);
  result = sub_219BE1E34();
  if (!v91)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9BB10);
  result = sub_219BE1E34();
  if (!v89)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC8918);
  result = sub_219BE1E34();
  if (!v87)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E915D0);
  result = sub_219BE1E34();
  if (!v85)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510);
  result = sub_219BE1E34();
  if (!v83)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E250);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EA4AF0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  v71 = result;
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v66 = v8;
  v67 = v7;
  v68 = v6;
  v69 = v5;
  v70 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  v65 = result;
  if (result)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
    v64 = &v55;
    MEMORY[0x28223BE20](v9);
    v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
    v63 = &v55;
    MEMORY[0x28223BE20](v13);
    v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
    v62 = &v55;
    MEMORY[0x28223BE20](v17);
    v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
    v61 = &v55;
    MEMORY[0x28223BE20](v21);
    v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = *v11;
    v26 = *v15;
    v27 = *v19;
    v28 = *v23;
    v29 = type metadata accessor for ChannelSectionHeadlinesService();
    v81[3] = v29;
    v81[4] = &off_282A34C28;
    v81[0] = v25;
    v58 = type metadata accessor for PromotedHeadlineService();
    v79 = v58;
    v80 = &off_282A3E1A8;
    v78[0] = v26;
    v57 = type metadata accessor for ChannelSectionsGroupPersonalizer();
    v76 = v57;
    v77 = &off_282AA2B18;
    v75[0] = v27;
    v56 = type metadata accessor for ChannelHeroService();
    v73 = v56;
    v74 = &off_282A7A460;
    v72[0] = v28;
    v60 = type metadata accessor for LocalNewsTodayFeedGroupService();
    v30 = swift_allocObject();
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v81, v29);
    v59 = &v55;
    MEMORY[0x28223BE20](v31);
    v33 = (&v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    v55 = &v55;
    MEMORY[0x28223BE20](v35);
    v37 = (&v55 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
    MEMORY[0x28223BE20](v39);
    v41 = (&v55 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    MEMORY[0x28223BE20](v43);
    v45 = (&v55 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45);
    v47 = *v33;
    v48 = *v37;
    v49 = *v41;
    v50 = *v45;
    v30[5] = v29;
    v30[6] = &off_282A34C28;
    v30[2] = v47;
    v30[10] = v58;
    v30[11] = &off_282A3E1A8;
    v30[7] = v48;
    v30[15] = v57;
    v30[16] = &off_282AA2B18;
    v30[12] = v49;
    v30[20] = v56;
    v30[21] = &off_282A7A460;
    v30[17] = v50;
    sub_2186CB1F0(&v84, (v30 + 22));
    sub_2186CB1F0(&v82, (v30 + 27));
    v51 = v68;
    v30[32] = v69;
    v30[33] = v51;
    v52 = v66;
    v30[34] = v67;
    v30[35] = v52;
    v53 = v65;
    v30[36] = v71;
    v30[37] = v53;
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(v81);
    __swift_destroy_boxed_opaque_existential_1(v86);
    __swift_destroy_boxed_opaque_existential_1(v88);
    __swift_destroy_boxed_opaque_existential_1(v90);
    result = __swift_destroy_boxed_opaque_existential_1(v92);
    v54 = v70;
    v70[3] = v60;
    v54[4] = &off_282A43098;
    *v54 = v30;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_218765EC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4(0, a2, a3);
  result = sub_219BE1E24();
  if (result)
  {
    v10 = result;
    a5(0);
    result = swift_allocObject();
    *(result + 16) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218765FF0(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E92598 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61860);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E65A0();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    v10 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v14[3] = v8;
    v14[4] = *(v9 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    sub_2186FEBD4();
    swift_allocObject();
    v12 = sub_219BF0CF4();
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218766268()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_280F61860);
  __swift_project_value_buffer(v0, qword_280F61860);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v1 = qword_280F617C8;
  return sub_219BED9E4();
}

uint64_t sub_21876631C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617C8 = result;
  return result;
}

uint64_t sub_2187663F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E668C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v7 = qword_280F617C8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_2186E65A0();
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2187666D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v180)
  {
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v179)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E270);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEFF74();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v177)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA3480);
  result = sub_219BE1E34();
  if (!v175)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB84C0);
  result = sub_219BE1E34();
  if (!v173)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E0A0);
  result = sub_219BE1E24();
  v128 = result;
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E370);
  result = sub_219BE1E24();
  v127 = result;
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  v126 = result;
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1DF4();
  if (v171)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v6 = v170;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990);
  result = sub_219BE1E34();
  if (!v169)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90590);
  result = sub_219BE1E34();
  if (!v167)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3940);
  result = sub_219BE1E34();
  if (!v165)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA0D68);
  result = sub_219BE1E34();
  if (!v163)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBDB60);
  result = sub_219BE1E34();
  if (!v161)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510);
  result = sub_219BE1E34();
  if (!v159)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB4590);
  result = sub_219BE1E34();
  if (!v157)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  v125 = v154;
  if (!v154)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v124 = v155;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECE3A0);
  result = sub_219BE1E34();
  if (!v153)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350);
  result = sub_219BE1E24();
  v123 = result;
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A3F8(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v122 = result;
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6148);
  result = sub_219BE1E34();
  if (!v151)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v117 = v5;
  v118 = v4;
  v119 = v3;
  v120 = v181;
  v121 = v180;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6160);
  result = sub_219BE1E34();
  if (v149)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
    v116 = v98;
    MEMORY[0x28223BE20](v7);
    v9 = (v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v172, v173);
    v115 = v98;
    MEMORY[0x28223BE20](v11);
    v13 = (v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v168, v169);
    v114 = v98;
    MEMORY[0x28223BE20](v15);
    v17 = (v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v164, v165);
    v113 = v98;
    MEMORY[0x28223BE20](v19);
    v21 = (v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v162, v163);
    v112 = v98;
    MEMORY[0x28223BE20](v23);
    v25 = (v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v160, v161);
    v111 = v98;
    MEMORY[0x28223BE20](v27);
    v29 = v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v156, v157);
    v110 = v98;
    MEMORY[0x28223BE20](v31);
    v33 = (v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = *v9;
    v36 = *v13;
    v37 = *v17;
    v38 = *v21;
    v39 = *v25;
    v40 = *v33;
    v41 = type metadata accessor for MagazineCategoryConfigService();
    v147[4] = &off_282A6EDE8;
    v147[3] = v41;
    v147[0] = v35;
    v108 = type metadata accessor for MagazineCategoryService();
    v145 = v108;
    v146 = &off_282A649E8;
    v144[0] = v36;
    v107 = type metadata accessor for IssueModelFactory();
    v142 = v107;
    v143 = &off_282A725A8;
    v141[0] = v37;
    v105 = type metadata accessor for HistoryService();
    v139 = v105;
    v140 = &off_282A6F3B0;
    v138[0] = v38;
    v104 = type metadata accessor for ChannelSectionHeadlinesService();
    v136 = v104;
    v137 = &off_282A34C28;
    v135[0] = v39;
    v133 = &type metadata for NewspaperGroupService;
    v134 = &off_282A6B020;
    v42 = swift_allocObject();
    v132[0] = v42;
    v43 = *(v29 + 11);
    *(v42 + 176) = *(v29 + 10);
    *(v42 + 192) = v43;
    *(v42 + 208) = *(v29 + 24);
    v44 = *(v29 + 7);
    *(v42 + 112) = *(v29 + 6);
    *(v42 + 128) = v44;
    v45 = *(v29 + 9);
    *(v42 + 144) = *(v29 + 8);
    *(v42 + 160) = v45;
    v46 = *(v29 + 3);
    *(v42 + 48) = *(v29 + 2);
    *(v42 + 64) = v46;
    v47 = *(v29 + 5);
    *(v42 + 80) = *(v29 + 4);
    *(v42 + 96) = v47;
    v48 = *(v29 + 1);
    *(v42 + 16) = *v29;
    *(v42 + 32) = v48;
    v103 = type metadata accessor for FeedPaywallConfigFactory();
    v130 = v103;
    v131 = &off_282A9D640;
    v129[0] = v40;
    type metadata accessor for MagazineFeedGroupEmitterFactory();
    v49 = swift_allocObject();
    v50 = __swift_mutable_project_boxed_opaque_existential_1(v147, v41);
    v109 = v98;
    v99 = v41;
    MEMORY[0x28223BE20](v50);
    v52 = (v98 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52);
    v54 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
    v106 = v98;
    MEMORY[0x28223BE20](v54);
    v56 = (v98 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
    v102 = v98;
    MEMORY[0x28223BE20](v58);
    v60 = (v98 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v61 + 16))(v60);
    v62 = __swift_mutable_project_boxed_opaque_existential_1(v138, v139);
    v101 = v98;
    MEMORY[0x28223BE20](v62);
    v64 = (v98 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v65 + 16))(v64);
    v66 = __swift_mutable_project_boxed_opaque_existential_1(v135, v136);
    v100 = v98;
    MEMORY[0x28223BE20](v66);
    v68 = (v98 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v69 + 16))(v68);
    v70 = __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
    v98[1] = v98;
    MEMORY[0x28223BE20](v70);
    v72 = v98 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v72);
    v74 = __swift_mutable_project_boxed_opaque_existential_1(v129, v130);
    v98[0] = v98;
    MEMORY[0x28223BE20](v74);
    v76 = (v98 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v77 + 16))(v76);
    v78 = *v52;
    v79 = *v56;
    v80 = *v60;
    v81 = *v64;
    v82 = *v68;
    v83 = *v76;
    v49[24] = v99;
    v49[25] = &off_282A6EDE8;
    v49[21] = v78;
    v49[19] = v108;
    v49[20] = &off_282A649E8;
    v49[16] = v79;
    v49[34] = v107;
    v49[35] = &off_282A725A8;
    v49[31] = v80;
    v49[44] = v105;
    v49[45] = &off_282A6F3B0;
    v49[41] = v81;
    v49[49] = v104;
    v49[50] = &off_282A34C28;
    v49[46] = v82;
    v49[54] = &type metadata for NewspaperGroupService;
    v49[55] = &off_282A6B020;
    v84 = swift_allocObject();
    v49[51] = v84;
    v85 = *(v72 + 11);
    *(v84 + 176) = *(v72 + 10);
    *(v84 + 192) = v85;
    *(v84 + 208) = *(v72 + 24);
    v86 = *(v72 + 7);
    *(v84 + 112) = *(v72 + 6);
    *(v84 + 128) = v86;
    v87 = *(v72 + 9);
    *(v84 + 144) = *(v72 + 8);
    *(v84 + 160) = v87;
    v88 = *(v72 + 3);
    *(v84 + 48) = *(v72 + 2);
    *(v84 + 64) = v88;
    v89 = *(v72 + 5);
    *(v84 + 80) = *(v72 + 4);
    *(v84 + 96) = v89;
    v90 = *(v72 + 1);
    *(v84 + 16) = *v72;
    *(v84 + 32) = v90;
    v49[64] = v103;
    v49[65] = &off_282A9D640;
    v49[61] = v83;
    v91 = v120;
    v49[2] = v121;
    v49[3] = v91;
    sub_2186CB1F0(&v178, (v49 + 4));
    v92 = v118;
    v49[9] = v119;
    v49[10] = v92;
    sub_2186CB1F0(&v176, (v49 + 11));
    v94 = v127;
    v93 = v128;
    v49[26] = v117;
    v49[27] = v93;
    v95 = v126;
    v49[28] = v94;
    v49[29] = v95;
    v49[30] = v6;
    sub_2186CB1F0(&v166, (v49 + 36));
    sub_2186CB1F0(&v158, (v49 + 56));
    v96 = v124;
    v49[66] = v125;
    v49[67] = v96;
    sub_2186CB1F0(&v152, (v49 + 68));
    v97 = v122;
    v49[73] = v123;
    v49[74] = v97;
    sub_2186CB1F0(&v150, (v49 + 75));
    sub_2186CB1F0(&v148, (v49 + 80));
    __swift_destroy_boxed_opaque_existential_1(v129);
    __swift_destroy_boxed_opaque_existential_1(v132);
    __swift_destroy_boxed_opaque_existential_1(v135);
    __swift_destroy_boxed_opaque_existential_1(v138);
    __swift_destroy_boxed_opaque_existential_1(v141);
    __swift_destroy_boxed_opaque_existential_1(v144);
    __swift_destroy_boxed_opaque_existential_1(v147);
    __swift_destroy_boxed_opaque_existential_1(v156);
    __swift_destroy_boxed_opaque_existential_1(v160);
    __swift_destroy_boxed_opaque_existential_1(v162);
    __swift_destroy_boxed_opaque_existential_1(v164);
    __swift_destroy_boxed_opaque_existential_1(v168);
    __swift_destroy_boxed_opaque_existential_1(v172);
    __swift_destroy_boxed_opaque_existential_1(v174);
    return v49;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_218767B9C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA61A0);
  result = sub_219BE1E34();
  if (v6)
  {
    type metadata accessor for MagazineCategoryConfigService();
    v2 = swift_allocObject();
    v3 = OBJC_IVAR____TtC7NewsUI229MagazineCategoryConfigService____lazy_storage___appVersion;
    sub_218718850(0, &qword_280EE68E0, MEMORY[0x277D6CF38], MEMORY[0x277D83D88]);
    (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
    sub_2186CB1F0(&v5, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_218767CB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718850(0, &qword_280EE68E0, MEMORY[0x277D6CF38], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9B4A8);
  result = sub_219BE1E34();
  if (v12)
  {
    result = FCBundle();
    if (result)
    {
      sub_219BE3194();
      v8 = type metadata accessor for MagazineConfigurationService();
      v9 = swift_allocObject();
      sub_2186CB1F0(&v11, v9 + 16);
      result = sub_218735700(v6, v9 + OBJC_IVAR____TtC7NewsUI228MagazineConfigurationService_bundleVersion, &qword_280EE68E0, MEMORY[0x277D6CF38]);
      a2[3] = v8;
      a2[4] = &off_282A391B0;
      *a2 = v9;
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

uint64_t sub_218767E34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DC10);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E8FFD0);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for MagazineConfigurationDataService();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_2186CB1F0(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_282A39188;
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

uint64_t type metadata accessor for MagazineConfigurationService()
{
  result = qword_280EB4008;
  if (!qword_280EB4008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218767FB0()
{
  sub_21876807C(319, &qword_280EE68E0, MEMORY[0x277D6CF38], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21876807C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2187680E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_218768134(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_218768188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21876820C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90230);
  result = sub_219BE1E34();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0);
  result = sub_219BE1E34();
  if (v6)
  {
    type metadata accessor for MagazineCategoryService();
    v4 = swift_allocObject();
    sub_2186CB1F0(&v9, v4 + 16);
    *(v4 + 56) = v7;
    *(v4 + 64) = v3;
    sub_2186CB1F0(&v5, v4 + 72);
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218768374@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v33)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = v9;
  v28 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC51E0);
  result = sub_219BE1E34();
  if (v31)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    v26 = &v26;
    MEMORY[0x28223BE20](v10);
    v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for FinanceURLSanitizer();
    v29[3] = v15;
    v29[4] = &off_282A36FF0;
    v29[0] = v14;
    v16 = type metadata accessor for PurchaseTransactionTracker();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v29, v15);
    MEMORY[0x28223BE20](v18);
    v20 = (&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v17[12] = v15;
    v17[13] = &off_282A36FF0;
    v17[9] = v22;
    (*(v5 + 104))(v7, *MEMORY[0x277D2F4F8], v4);
    v23 = sub_219BDD0F4();

    (*(v5 + 8))(v7, v4);
    v24 = v27;
    v17[2] = v23;
    v17[3] = v24;
    sub_2186CB1F0(&v32, (v17 + 4));
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v25 = v28;
    v28[3] = v16;
    result = sub_21871C950(&qword_280EBAC38, type metadata accessor for PurchaseTransactionTracker);
    v25[4] = result;
    *v25 = v17;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187687A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_218768804(a1);
  v5 = v4;
  v6 = type metadata accessor for FinanceURLSanitizer();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  a2[3] = v6;
  a2[4] = &off_282A36FF0;
  *a2 = result;
  return result;
}

uint64_t sub_218768804(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  v1 = sub_219BE1E24();
  if (v1)
  {
    v2 = [v1 possiblyUnfetchedAppConfiguration];
    if ([v2 respondsToSelector_])
    {
      v3 = [v2 financeURLAnalyticsAllowLists];
      swift_unknownObjectRelease();
      if (v3)
      {
        sub_2186D0BA8();
        v4 = sub_219BF5214();

        sub_2187689F8(v4);

        sub_218768D54();
        sub_219BF5D24();
        v5 = v7;
        if (!v7)
        {
          if (qword_27CC07D68 != -1)
          {
            swift_once();
          }

          v5 = qword_27CCD8408;
        }

        swift_unknownObjectRelease();
        return v5;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (qword_27CC07D68 != -1)
  {
    swift_once();
  }

  v5 = qword_27CCD8408;

  return v5;
}

uint64_t sub_2187689F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_218768CF4(0, &qword_280E8D020, MEMORY[0x277D84030], MEMORY[0x277D84038], MEMORY[0x277D84460]);
    v2 = sub_219BF75B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    sub_2186D0C98(0, &qword_280E8EE20, MEMORY[0x277D83940]);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_218751558(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_218751558(v29, v30);
    result = sub_219BF7284();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_218751558(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_218768CF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, MEMORY[0x277D84F70] + 8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218768D54()
{
  result = qword_280EB0AB0;
  if (!qword_280EB0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0AB0);
  }

  return result;
}

uint64_t sub_218768DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218768DE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

void sub_218768E2C()
{
  if (!qword_280E8CBB8)
  {
    sub_2187690B8();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CBB8);
    }
  }
}

uint64_t sub_218768E88(void *a1)
{
  sub_218768E2C();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2187690B8();
  sub_219BF7B34();
  if (!v1)
  {
    sub_2186D0BA8();
    v11 = 0;
    sub_2187691BC();
    sub_219BF7734();
    v8 = v12;
    v11 = 1;
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_21876908C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218768E88(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_2187690B8()
{
  result = qword_280EB0AC8;
  if (!qword_280EB0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0AC8);
  }

  return result;
}

unint64_t sub_218769110()
{
  result = qword_280EB0AB8;
  if (!qword_280EB0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0AB8);
  }

  return result;
}

unint64_t sub_218769168()
{
  result = qword_280EB0AC0;
  if (!qword_280EB0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0AC0);
  }

  return result;
}

unint64_t sub_2187691BC()
{
  result = qword_280E8EDD0;
  if (!qword_280E8EDD0)
  {
    sub_2186D0BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EDD0);
  }

  return result;
}

uint64_t sub_21876922C()
{
  if (*v0)
  {
    return 0x6574497972657571;
  }

  else
  {
    return 0x734C525565736162;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2187692C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = type metadata accessor for PostPurchaseOnboardingPresenter();
    v5 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();

    a2[3] = v4;
    result = sub_21871C950(qword_280EA88F8, type metadata accessor for PostPurchaseOnboardingPresenter);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187693C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v6);
  v3 = type metadata accessor for PostPurchaseOnboardingViewControllerFactory();
  v4 = swift_allocObject();
  sub_2186CB1F0(v6, v4 + 16);
  a2[3] = v3;
  result = sub_21871C950(qword_280E94360, type metadata accessor for PostPurchaseOnboardingViewControllerFactory);
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_218769488@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6290);
  result = sub_219BE1E34();
  if (v7)
  {
    v4 = type metadata accessor for PurchaseTransactionTrackerProvider();
    v5 = swift_allocObject();
    sub_2186CB1F0(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_21871C950(qword_280E9F908, type metadata accessor for PurchaseTransactionTrackerProvider);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218769590(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  v3 = sub_219BE1E24();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 appConfigurationManager];

    v6 = [v5 possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();
    v7 = [v6 personalizationTreatment];
    swift_unknownObjectRelease();
    [v7 publisherDiversificationPenalty];
    v9 = v8;

    *a2 = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_218769684(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  v4 = sub_219BE1E24();
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 readingHistory];
  v7 = [objc_allocWithZone(MEMORY[0x277D31280]) initWithReadingHistory_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540);
  v8 = sub_219BE1E24();
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDE0);
  v10 = sub_219BE1E24();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v49 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC2520);
  sub_219BE1E34();
  if (!v64)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = [v7 latestHeadlineResultsWithContext_];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  sub_219BE1E34();
  if (!v62)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v44 = v12;
  v45 = v11;
  v46 = v7;
  v47 = v5;
  v48 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE9E50);
  sub_219BE1E34();
  if (v60)
  {
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v43[3] = v43;
    MEMORY[0x28223BE20](v13);
    v15 = (v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
    v43[2] = v43;
    MEMORY[0x28223BE20](v17);
    v19 = (v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v15;
    v22 = *v19;
    v23 = type metadata accessor for HeadlineModelFactory();
    v57 = v23;
    v58 = &off_282A8B8E8;
    v56[0] = v21;
    v24 = type metadata accessor for HeadlineService();
    v54 = v24;
    v55 = &off_282A7FE28;
    v53[0] = v22;
    v25 = type metadata accessor for HistoryService();
    v26 = objc_allocWithZone(v25);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    v43[1] = v43;
    MEMORY[0x28223BE20](v27);
    v29 = (v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
    MEMORY[0x28223BE20](v31);
    v33 = (v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = *v29;
    v36 = *v33;
    v52[3] = v23;
    v52[4] = &off_282A8B8E8;
    v51[4] = &off_282A7FE28;
    v52[0] = v35;
    v51[3] = v24;
    v51[0] = v36;
    *&v26[OBJC_IVAR____TtC7NewsUI214HistoryService_observers] = MEMORY[0x277D84F90];
    v37 = v49;
    *&v26[OBJC_IVAR____TtC7NewsUI214HistoryService_readingHistory] = v49;
    *&v26[OBJC_IVAR____TtC7NewsUI214HistoryService_issueReadingHistory] = v45;
    sub_218718690(v63, &v26[OBJC_IVAR____TtC7NewsUI214HistoryService_clearUserDataManager]);
    v38 = v44;
    *&v26[OBJC_IVAR____TtC7NewsUI214HistoryService_headlineStreamingResults] = v44;
    sub_218718690(v52, &v26[OBJC_IVAR____TtC7NewsUI214HistoryService_headlineModelFactory]);
    sub_218718690(v51, &v26[OBJC_IVAR____TtC7NewsUI214HistoryService_headlineService]);
    v50.receiver = v26;
    v50.super_class = v25;
    v39 = v37;
    swift_unknownObjectRetain();
    v40 = v38;
    v41 = objc_msgSendSuper2(&v50, sel_init);
    [*&v41[OBJC_IVAR____TtC7NewsUI214HistoryService_readingHistory] addObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v42 = v48;
    v48[3] = v25;
    v42[4] = &off_282A6F3B0;

    *v42 = v41;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_218769D6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6330);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  if (v7)
  {
    v6 = type metadata accessor for FeedPaywallConfigFactory();
    swift_allocObject();
    result = sub_21876A0DC(v5, &v9, v7, v8);
    a2[3] = v6;
    a2[4] = &off_282A9D640;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FeedPaywallConfigFactory()
{
  result = qword_280EC1F18;
  if (!qword_280EC1F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218769F20()
{
  result = sub_219BE4584();
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

void sub_218769FD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_21876A024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21876A088(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21876A0DC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  sub_21876A088(0, &qword_280EE6350, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_219BE3C44();
  MEMORY[0x28223BE20](v12);
  *(v4 + 16) = 0x7D65636972707B24;
  *(v4 + 24) = 0xE800000000000000;
  strcpy((v4 + 32), "${priceDelta}");
  *(v4 + 46) = -4864;
  v14 = OBJC_IVAR____TtC7NewsUI224FeedPaywallConfigFactory_defaultSubscribeButtonDestination;
  (*(v15 + 104))(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D34CB8]);
  v16 = sub_219BE4394();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_219BE4534();
  v17 = *MEMORY[0x277D35208];
  v18 = sub_219BE4584();
  (*(*(v18 - 8) + 104))(v4 + v14, v17, v18);
  *(v4 + OBJC_IVAR____TtC7NewsUI224FeedPaywallConfigFactory_configurationManager) = a1;
  sub_2186CB1F0(a2, v4 + OBJC_IVAR____TtC7NewsUI224FeedPaywallConfigFactory_offerOverrideProvider);
  v19 = (v4 + OBJC_IVAR____TtC7NewsUI224FeedPaywallConfigFactory_offerManager);
  *v19 = a3;
  v19[1] = a4;
  return v4;
}

void sub_21876A328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_21876A390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_21876A3F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_21876A460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_21876A4F0(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E92598 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61860);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91E10, type metadata accessor for MagazineFeedPoolService, sub_2186D54CC);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21876A680(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90590);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3940);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6B0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v5);
    v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for HistoryService();
    v17[3] = v10;
    v17[4] = &off_282A6F3B0;
    v17[0] = v9;
    type metadata accessor for MagazineFeedPoolService();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v10);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[11] = v10;
    v11[12] = &off_282A6F3B0;
    v11[8] = v16;
    v11[2] = v3;
    sub_2186CB1F0(&v22, (v11 + 3));
    sub_2186CB1F0(&v20, (v11 + 13));
    v11[18] = v4;
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v11;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21876AAA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v30)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (!v28)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_2186C6148(0, &unk_280E8DF20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v5;
  v26 = MEMORY[0x277D34748];
  *&v24 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBCF88);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v8);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for SportsHeadlinesSorter();
    v21[4] = &off_282A75768;
    v21[3] = v13;
    v21[0] = v12;
    v14 = type metadata accessor for TagHighlightsService();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    MEMORY[0x28223BE20](v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[21] = v13;
    v15[22] = &off_282A75768;
    v15[18] = v20;
    sub_2186CB1F0(&v29, (v15 + 2));
    sub_2186CB1F0(&v27, (v15 + 7));
    sub_2186CB1F0(&v24, (v15 + 12));
    v15[17] = v6;
    v15[23] = v7;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a2[3] = v14;
    a2[4] = &off_282A90268;
    *a2 = v15;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21876AEC0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_21876AF58(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6D0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    type metadata accessor for TagFeedCurationService();
    v6 = swift_allocObject();
    sub_2186CB1F0(&v13, (v6 + 2));
    sub_2186CB1F0(&v11, (v6 + 7));
    sub_2186CB1F0(&v9, (v6 + 12));
    v6[17] = v3;
    v6[18] = v4;
    sub_2186CB1F0(&v7, (v6 + 19));
    v6[24] = v5;
    return v6;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21876B1E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBFF28);
  result = sub_219BE1E34();
  v4 = v15;
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90250);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    type metadata accessor for TagFeedServiceConfigFetcher();
    v8 = swift_allocObject();
    v8[2] = 0x64656546676154;
    v8[3] = 0xE700000000000000;
    v8[4] = v3;
    v8[5] = v4;
    v8[6] = v5;
    sub_2186CB1F0(&v13, (v8 + 7));
    sub_2186CB1F0(&v11, (v8 + 12));
    v8[19] = v9;
    v8[20] = v10;
    v8[17] = v7;
    v8[18] = v6;
    return v8;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21876B4A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90330);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    type metadata accessor for TagFeedConfigManager();
    v7 = swift_allocObject();
    sub_219BEE324();
    swift_allocObject();
    v7[2] = sub_219BEE314();
    v7[3] = v5;
    result = sub_2186CB1F0(&v8, (v7 + 4));
    v7[9] = v6;
    *a2 = v7;
    a2[1] = &off_282A69740;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21876B658(void *a1)
{
  v20 = sub_219BF6694();
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF6674();
  MEMORY[0x28223BE20](v5);
  v6 = sub_219BED1D4();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v8 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350);
  result = sub_219BE1E24();
  v18 = result;
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E250);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  type metadata accessor for LocalNewsChannelService();
  v9 = swift_allocObject();
  sub_2186C6148(0, &qword_280E8E3B0);
  sub_219BED1C4();
  v21 = MEMORY[0x277D84F90];
  sub_2186D5C14(&qword_280E8E3C0, MEMORY[0x277D85230]);
  sub_218718850(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_21872CCAC();
  sub_219BF7164();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v20);
  v9[12] = sub_219BF66D4();
  if (qword_280EE9B40 != -1)
  {
    swift_once();
  }

  sub_21876BF4C();
  swift_allocObject();

  v9[13] = sub_219BDC914();
  v10 = v17;
  if (qword_280EE9B58 != -1)
  {
    swift_once();
  }

  sub_218726B70(0, &qword_280EE90D0, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8], MEMORY[0x277D6D070]);
  swift_allocObject();

  v9[14] = sub_219BDC914();
  v11 = v15;
  if (qword_280EE9B10 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v9[15] = sub_219BDC914();
  if (qword_280EE9B28 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v9[16] = sub_219BDC914();
  v13 = v18;
  v12 = v19;
  v9[2] = v10;
  v9[3] = v12;
  v14 = v16;
  v9[4] = v13;
  v9[5] = v14;
  v9[6] = v11;
  sub_2186CB1F0(&v22, (v9 + 7));
  return v9;
}

uint64_t sub_21876BC3C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = MEMORY[0x277D84F90];
  sub_21876BDF8();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9B48 = result;
  return result;
}

void sub_21876BDF8()
{
  if (!qword_280EE9080)
  {
    sub_21876BEFC(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_21876BE80();
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE9080);
    }
  }
}

unint64_t sub_21876BE80()
{
  result = qword_280E8EE10;
  if (!qword_280E8EE10)
  {
    sub_21876BEFC(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EE10);
  }

  return result;
}

void sub_21876BEFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21876BF4C()
{
  if (!qword_280EE90D8)
  {
    sub_21876BFD4(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_21876BE80();
    v0 = sub_219BDC904();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE90D8);
    }
  }
}

void sub_21876BFD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21876C024()
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
  sub_21876C204(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8], MEMORY[0x277D6D0B8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9B60 = result;
  return result;
}

void sub_21876C204(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21876C258()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = MEMORY[0x277D84F90];
  sub_21876BDF8();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9B18 = result;
  return result;
}

uint64_t sub_21876C414()
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
  sub_21876C204(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8], MEMORY[0x277D6D0B8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9B30 = result;
  return result;
}

uint64_t sub_21876C5F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB7A98);
  result = sub_219BE1E34();
  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA0D68);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9BB10);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC8918);
  result = sub_219BE1E34();
  if (v7)
  {
    a2[3] = &type metadata for ChannelHeadlineService;
    a2[4] = &off_282A6B468;
    v5 = swift_allocObject();
    *a2 = v5;
    sub_2186CB1F0(&v12, v5 + 16);
    sub_2186CB1F0(&v10, v5 + 56);
    sub_2186CB1F0(&v8, v5 + 96);
    return sub_2186CB1F0(&v6, v5 + 136);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21876C7CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_21876C81C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65A0);
  result = sub_219BE1E34();
  v5 = v23;
  if (!v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA6BB0);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E97530);
  result = sub_219BE1E34();
  if (!v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6210);
  result = sub_219BE1E34();
  if (v18)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v7);
    v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = sub_21876DF58(v5, v6, *v9, *v13, &v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = type metadata accessor for EngagementUpsellBannerPropertiesProvider();
    result = sub_21875A3B0(&qword_280E96590, type metadata accessor for EngagementUpsellBannerPropertiesProvider);
    a2[4] = result;
    *a2 = v15;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21876CB54@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  v6 = v17;
  if (!v17)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9DE18);
  result = sub_219BE1E34();
  if (v16)
  {
    v8 = type metadata accessor for EngagementUpsellOfferManager(0);
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_offerEntry;
    v11 = type metadata accessor for EngagementUpsellOfferEntry(0);
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *&v9[OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_bundleSubscriptionManager] = v5;
    v12 = &v9[OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_offerManager];
    *v12 = v6;
    *(v12 + 1) = v7;
    sub_218718690(v15, &v9[OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store]);
    v14.receiver = v9;
    v14.super_class = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = objc_msgSendSuper2(&v14, sel_init);
    [*&v13[OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_bundleSubscriptionManager] addObserver_];
    __swift_destroy_boxed_opaque_existential_1(v15);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    a2[3] = v8;
    a2[4] = &off_282A5DA78;
    *a2 = v13;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21876CD78@<X0>(uint64_t *a1@<X8>)
{
  sub_218759E68(0, &qword_280EE5F00, MEMORY[0x277D85B28]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for EngagementUpsellOfferEntryStore();
  v6 = swift_allocObject();
  v7 = sub_219BE5434();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_21876CF04();
  swift_allocObject();
  result = sub_219BE2374();
  *(v6 + 16) = result;
  a1[3] = v5;
  a1[4] = &off_282A43078;
  *a1 = v6;
  return result;
}

void sub_21876CF04()
{
  if (!qword_280EE75B0)
  {
    type metadata accessor for EngagementUpsellOfferEntry(255);
    sub_21875A3B0(&qword_280EBB7A8, type metadata accessor for EngagementUpsellOfferEntry);
    sub_21875A3B0(&qword_280EBB7B0, type metadata accessor for EngagementUpsellOfferEntry);
    v0 = sub_219BE2384();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE75B0);
    }
  }
}

void sub_21876CFD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_21876D044()
{
  sub_21876CFD0(319, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  if (v0 <= 0x3F)
  {
    sub_219BDBD34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21876D0F4()
{
  result = sub_219BE4944();
  if (v1 <= 0x3F)
  {
    result = sub_219BE4144();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_21876D194(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_21876CFD0(0, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 24)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_219BDBD34();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 28)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_21876D2F0()
{
  sub_21876CFD0(319, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21876D3B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_218759E68(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  sub_219BE3124();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65A0);
  result = sub_219BE1E34();
  v9 = v47;
  if (!v47)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v48;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED8A00);
  result = sub_219BE1E34();
  if (!v46)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E99B90);
  result = sub_219BE1E34();
  if (!v44)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE3F60);
  result = sub_219BE1E34();
  v11 = v41;
  if (!v41)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v32 = v10;
  v33 = v9;
  v34 = a2;
  v31 = v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6550);
  result = sub_219BE1E34();
  if (v40)
  {
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    MEMORY[0x28223BE20](v12);
    v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v17 = type metadata accessor for DateProvider();
    v38[3] = v17;
    v38[4] = &off_282A89620;
    v38[0] = v16;
    v18 = type metadata accessor for EngagementUpsellTriggerStateManager(0);
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v38, v17);
    MEMORY[0x28223BE20](v20);
    v22 = (&v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v22;
    v37 = &off_282A89620;
    v36 = v17;
    *&v35 = v24;
    v25 = OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_lock;
    sub_219BE1AD4();
    sub_219BE1B04();
    swift_allocObject();
    *(v19 + v25) = sub_219BE1AF4();
    *(v19 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager__triggerVersions) = MEMORY[0x277D84F98];
    sub_21876DEC4(v7, v19 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_appVersion);
    v26 = (v19 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_featureSettings);
    v27 = v32;
    *v26 = v33;
    v26[1] = v27;
    sub_2186CB1F0(&v35, v19 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_dateProvider);
    sub_2186CB1F0(&v43, v19 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store);
    v28 = (v19 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_presentationOperationManager);
    v29 = v31;
    *v28 = v11;
    v28[1] = v29;
    sub_2186CB1F0(&v39, v19 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_conditionEvaluator);
    __swift_destroy_boxed_opaque_existential_1(v38);
    result = __swift_destroy_boxed_opaque_existential_1(v45);
    v30 = v34;
    v34[3] = v18;
    v30[4] = &off_282A647D8;
    *v30 = v19;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21876D8F4@<X0>(uint64_t *a1@<X8>)
{
  sub_218759E68(0, &qword_280EE5F00, MEMORY[0x277D85B28]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for EngagementUpsellTriggerStateStore();
  v6 = swift_allocObject();
  v7 = sub_219BE5434();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_218759EE0(0, &qword_280EE7598, sub_21876DAAC, sub_21876DB00);
  swift_allocObject();
  result = sub_219BE2374();
  *(v6 + 16) = result;
  a1[3] = v5;
  a1[4] = &off_282A7DD90;
  *a1 = v6;
  return result;
}

unint64_t sub_21876DAAC()
{
  result = qword_280EA3860;
  if (!qword_280EA3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3860);
  }

  return result;
}

unint64_t sub_21876DB00()
{
  result = qword_280EA3868;
  if (!qword_280EA3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3868);
  }

  return result;
}

uint64_t sub_21876DB54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EACF68);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for EngagementDataController();
    v17[3] = v9;
    v17[4] = &off_282A788E0;
    v17[0] = v8;
    v10 = type metadata accessor for EngagementUpsellConditionEvaluator();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A788E0;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    result = sub_21875A3B0(&qword_280EA09F8, type metadata accessor for EngagementUpsellConditionEvaluator);
    a2[4] = result;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21876DE00()
{
  sub_2187089D4(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21876DEC4(uint64_t a1, uint64_t a2)
{
  sub_21876807C(0, &qword_280EE68E0, MEMORY[0x277D6CF38], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21876DF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = type metadata accessor for EngagementUpsellOfferManager(0);
  v27[3] = v10;
  v27[4] = &off_282A5DA78;
  v27[0] = a3;
  v11 = type metadata accessor for EngagementUpsellTriggerStateManager(0);
  v25 = v11;
  v26 = &off_282A647D8;
  v24[0] = a4;
  type metadata accessor for EngagementUpsellBannerPropertiesProvider();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  MEMORY[0x28223BE20](v17);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v12[7] = v10;
  v12[8] = &off_282A5DA78;
  v12[9] = v22;
  v12[3] = a2;
  v12[4] = v21;
  v12[12] = v11;
  v12[13] = &off_282A647D8;
  v12[2] = a1;
  sub_2186CB1F0(a5, (v12 + 14));
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v12;
}

uint64_t sub_21876E198(uint64_t a1, uint64_t a2)
{
  sub_219BE1AB4();
  v5 = OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_observers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_21876E624(a1), (v8 & 1) != 0))
  {
    sub_218F6F250(*(v6 + 56) + 16 * v7, &v11);
  }

  else
  {
    v11 = xmmword_219C14A10;
  }

  swift_endAccess();
  v9 = v11;
  sub_21876E2C0(&v11, sub_21876E320);
  if (v9 == __PAIR128__(1, 0))
  {
    *(&v11 + 1) = a2;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    sub_21876E3BC(&v11, a1);
    swift_endAccess();
  }

  return sub_219BE1AC4();
}

uint64_t sub_21876E2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21876E320()
{
  if (!qword_280EBEF60)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EBEF60);
    }
  }
}

uint64_t sub_21876E370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21876E3BC(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_21874618C(a1, &qword_280EBEF60, &type metadata for EngagementFeatureSettings.Observation);
    v8 = sub_21876E624(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21949394C();
        v12 = v14;
      }

      sub_21876E4CC(*(v12 + 56) + 16 * v10, &v15);
      sub_21948A1C4(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_219C14A10;
    }

    return sub_21874618C(&v15, &qword_280EBEF60, &type metadata for EngagementFeatureSettings.Observation);
  }

  else
  {
    sub_21876E4CC(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_21876E504(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}

uint64_t sub_21876E504(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_21876E624(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_21949394C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_21876E6CC(v14, a3 & 1);
    v9 = sub_21876E624(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_219BF79A4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 16 * v9;

    return sub_2194B61B0(a1, v20);
  }

  else
  {

    return sub_21876E998(v9, a2, a1, v19);
  }
}

unint64_t sub_21876E660(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_21876E6CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_21876E938();
  result = sub_219BF7594();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(v5 + 56) + 16 * v19;
      if (a2)
      {
        sub_21876E4CC(v21, v31);
      }

      else
      {
        sub_218F6F250(v21, v31);
      }

      result = sub_219BF7A94();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_21876E4CC(v31, *(v7 + 56) + 16 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_21876E938()
{
  if (!qword_280E8D378)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D378);
    }
  }
}

uint64_t sub_21876E998(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_21876E4CC(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_21876EA00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65F0);
  result = sub_219BE1E34();
  if (v6)
  {
    v4 = type metadata accessor for TodayFeedEngagementEventHandler();
    swift_allocObject();
    result = sub_21876EAD4(v5);
    a2[3] = v4;
    a2[4] = &off_282A6F2F0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21876EAD4(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_218718690(a1, v1 + 32);
  sub_21876EF48(&qword_280EA7768);
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 32, *(v2 + 56));

  sub_219BE38B4();
  swift_endAccess();
  sub_21876EF88();
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C79280;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x277D31460], v4);
  v10(v9 + v6, *MEMORY[0x277D31450], v4);
  v10(v9 + 2 * v6, *MEMORY[0x277D31458], v4);
  v10(v9 + 3 * v6, *MEMORY[0x277D31500], v4);
  v10(v9 + 4 * v6, *MEMORY[0x277D31520], v4);
  v10(v9 + 5 * v6, *MEMORY[0x277D31530], v4);
  v10(v9 + 6 * v6, *MEMORY[0x277D31508], v4);
  v10(v9 + 7 * v6, *MEMORY[0x277D31538], v4);
  v10(v9 + 8 * v6, *MEMORY[0x277D31518], v4);
  v10(v9 + 9 * v6, *MEMORY[0x277D31548], v4);
  v10(v9 + 10 * v6, *MEMORY[0x277D31510], v4);
  v10(v9 + 11 * v6, *MEMORY[0x277D31528], v4);
  v10(v9 + 12 * v6, *MEMORY[0x277D31540], v4);
  v11 = sub_21876EFE0(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v11;
  v16[4] = sub_2193EB940;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_218793E0C;
  v16[3] = &block_descriptor_122;
  v14 = _Block_copy(v16);

  [v12 scheduleLowPriorityBlockForMainThread_];
  _Block_release(v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_21876EF08()
{

  return swift_deallocObject();
}

uint64_t sub_21876EF48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TodayFeedEngagementEventHandler();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21876EF88()
{
  if (!qword_280E8C060)
  {
    sub_219BE3514();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8C060);
    }
  }
}

uint64_t sub_21876EFE0(uint64_t a1)
{
  v2 = sub_219BE3514();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_21876F2F4();
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_280EE66A0, MEMORY[0x277D31550]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&unk_280EE6690, MEMORY[0x277D31550]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_21876F2F4()
{
  if (!qword_280E8D730)
  {
    sub_219BE3514();
    sub_218751238(&qword_280EE66A0, MEMORY[0x277D31550]);
    v0 = sub_219BF72F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D730);
    }
  }
}

uint64_t sub_21876F388(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    type metadata accessor for SportsTopicClusteringService();
    v4 = swift_allocObject();
    sub_2186CB1F0(&v9, v4 + 16);
    sub_2186CB1F0(&v7, v4 + 56);
    sub_2186CB1F0(&v5, v4 + 96);
    *(v4 + 136) = v3;
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21876F530@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DCA0);
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for SportsFavoritesService();
      v7 = swift_allocObject();
      result = sub_2186CB1F0(&v8, v7 + 16);
      *(v7 + 56) = v5;
      a2[3] = v6;
      a2[4] = &off_282A62438;
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

uint64_t sub_21876F660@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21876FC78(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v30 = &v23 - v11;
  v12 = sub_219BE27F4();
  MEMORY[0x28223BE20](v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6120);
  result = sub_219BE1E34();
  if (!v35)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (!v33)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v25 = result;
  v26 = v10;
  v27 = v4;
  v28 = v6;
  v29 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D95F8(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (result)
  {
    v24 = type metadata accessor for SportsRecommendationManager();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D84F90];
    v31 = MEMORY[0x277D84F90];
    sub_2186D5C5C(&qword_280EE73D0, MEMORY[0x277D6CD10]);
    v16 = MEMORY[0x277D6CD10];
    v23 = MEMORY[0x277D83940];
    sub_2186D95F8(0, &qword_280E8F5E0, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
    sub_218744378(&qword_280E8F5D0, &qword_280E8F5E0, v16);
    sub_219BF7164();
    sub_21876FCF0();
    swift_allocObject();
    v14[13] = sub_219BE2004();
    v31 = v15;
    sub_219BF7164();
    swift_allocObject();
    v14[14] = sub_219BE2004();
    v17 = sub_219BE4F14();
    v18 = v30;
    (*(*(v17 - 8) + 56))(v30, 1, 1, v17);
    sub_21876FD58(v18, v26, sub_21876FC78);
    sub_2186D95F8(0, &unk_280EE70A0, sub_21876FC78, MEMORY[0x277D6CF18]);
    swift_allocObject();
    v19 = sub_219BE2E64();
    sub_21876FDC0(v18, sub_21876FC78);
    v14[15] = v19;
    sub_218718690(v34, (v14 + 2));
    sub_218718690(v32, (v14 + 7));
    v14[12] = v25;
    v31 = v15;
    sub_2186D5C5C(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    v20 = MEMORY[0x277D6CA70];
    sub_2186D95F8(0, &qword_280E8F610, MEMORY[0x277D6CA70], v23);
    sub_218744378(&qword_280E8F600, &qword_280E8F610, v20);

    sub_219BF7164();
    sub_21876FE20();
    swift_allocObject();
    v21 = sub_219BE2D14();

    __swift_destroy_boxed_opaque_existential_1(v32);
    result = __swift_destroy_boxed_opaque_existential_1(v34);
    v14[16] = v21;
    v22 = v29;
    v29[3] = v24;
    v22[4] = &off_282A790B8;
    *v22 = v14;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_21876FCF0()
{
  if (!qword_280EE7C28)
  {
    sub_219BE4F14();
    v0 = sub_219BE2034();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7C28);
    }
  }
}

uint64_t sub_21876FD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21876FDC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21876FE20()
{
  if (!qword_280EE7278)
  {
    sub_21876FF18(255, &unk_280EE5E30, sub_21876FF80, &type metadata for SportsRecommendationManager.StoreDescriptor, MEMORY[0x277D6C8E8]);
    v0 = sub_219BE2D24();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7278);
    }
  }
}

void sub_21876FEB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_21876FF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_21876FF80()
{
  result = qword_280EB6A18[0];
  if (!qword_280EB6A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB6A18);
  }

  return result;
}

uint64_t sub_21876FFD4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for TagFeedCurationService();
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for SportsSectionService();
      v4 = swift_allocObject();
      sub_2186CB1F0(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187700B4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (v20)
  {
    v3 = type metadata accessor for SportsScoreSorterPersonalizer();
    v4 = swift_allocObject();
    sub_2186CB1F0(&v19, v4 + 16);
    v20 = v3;
    v21 = &off_282A3ABC8;
    *&v19 = v4;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8DE40);
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      v6 = __swift_mutable_project_boxed_opaque_existential_1(&v19, v20);
      MEMORY[0x28223BE20](v6);
      v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v18[3] = v3;
      v18[4] = &off_282A3ABC8;
      v18[0] = v10;
      type metadata accessor for SportsScoreSorter();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v3);
      MEMORY[0x28223BE20](v12);
      v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v11[7] = v3;
      v11[8] = &off_282A3ABC8;
      v11[4] = v16;
      v17 = swift_allocObject();
      *(v17 + 16) = v5;
      v11[2] = sub_2193EB078;
      v11[3] = v17;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(&v19);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21877036C()
{

  return swift_deallocObject();
}

uint64_t sub_2187703CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBA370);
  result = sub_219BE1E34();
  if (!v53)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8010);
  result = sub_219BE1E34();
  if (!v51)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v48)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20);
  result = sub_219BE1E34();
  if (!v47)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v35 = result;
  v36 = v5;
  v37 = v49;
  v38 = v48;
  v39 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (v45)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    v34[1] = v34;
    MEMORY[0x28223BE20](v6);
    v8 = (v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
    v34[0] = v34;
    MEMORY[0x28223BE20](v10);
    v12 = (v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v8;
    v15 = *v12;
    v16 = type metadata accessor for SportsFavoritesService();
    v43[3] = v16;
    v43[4] = &off_282A62438;
    v43[0] = v14;
    v17 = type metadata accessor for SportsRecommendationManager();
    v41 = v17;
    v42 = &off_282A790B8;
    v40[0] = v15;
    v18 = type metadata accessor for MySportsTagService();
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v43, v16);
    MEMORY[0x28223BE20](v20);
    v22 = (v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
    MEMORY[0x28223BE20](v24);
    v26 = (v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = *v22;
    v29 = *v26;
    v19[5] = v16;
    v19[6] = &off_282A62438;
    v19[2] = v28;
    v19[10] = v17;
    v19[7] = v29;
    v31 = v37;
    v30 = v38;
    v19[11] = &off_282A790B8;
    v19[12] = v30;
    v32 = v36;
    v19[13] = v31;
    v19[14] = v32;
    sub_2186CB1F0(&v46, (v19 + 15));
    v19[20] = v35;
    sub_2186CB1F0(&v44, (v19 + 21));
    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v50);
    result = __swift_destroy_boxed_opaque_existential_1(v52);
    v33 = v39;
    v39[3] = v18;
    v33[4] = &off_282A97430;
    *v33 = v19;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2187709E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90250);
  result = sub_219BE1E34();
  if (v9)
  {
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E8FD40);
    result = sub_219BE1E34();
    if (v8)
    {
      type metadata accessor for SportsConfiguringDataService();
      v6 = swift_allocObject();
      *(v6 + 16) = v9;
      *(v6 + 24) = v5;
      result = sub_2186CB1F0(&v7, v6 + 32);
      *a2 = v6;
      a2[1] = &protocol witness table for SportsConfiguringDataService;
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

uint64_t sub_218770B1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E90330);
    result = sub_219BE1E34();
    if (v10)
    {
      v6 = type metadata accessor for ChannelPickerConfigManager();
      v7 = swift_allocObject();
      sub_219BEE324();
      swift_allocObject();
      v8 = sub_219BEE314();
      v7[9] = &unk_282A241B0;
      v7[2] = v8;
      v7[3] = v5;
      result = sub_2186CB1F0(&v9, (v7 + 4));
      a2[3] = v6;
      a2[4] = &off_282A45268;
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

uint64_t sub_218770C74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v49)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE1810);
  result = sub_219BE1E34();
  if (!v47)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (!v45)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v42)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  v27 = v43;
  v28 = v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E92788);
  result = sub_219BE1E34();
  if (!v41)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_219BED3F4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = v8;
  v39 = MEMORY[0x277D30488];
  *&v37 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_219BED404();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v6;
  v35 = v9;
  v36 = MEMORY[0x277D30490];
  *&v34 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v33)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6170);
  result = sub_219BE1E34();
  if (v31)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    MEMORY[0x28223BE20](v10);
    v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for LocalNewsChannelService();
    v29[3] = v15;
    v29[4] = &off_282A6E848;
    v29[0] = v14;
    v16 = type metadata accessor for FoodService();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v29, v15);
    MEMORY[0x28223BE20](v18);
    v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v17[11] = v15;
    v17[12] = &off_282A6E848;
    v17[8] = v22;
    v17[2] = v5;
    sub_2186CB1F0(&v48, (v17 + 3));
    sub_2186CB1F0(&v44, (v17 + 13));
    v23 = v27;
    v17[18] = v28;
    v17[19] = v23;
    v17[20] = v26;
    v17[21] = v7;
    sub_2186CB1F0(&v40, (v17 + 22));
    sub_2186CB1F0(&v37, (v17 + 27));
    sub_2186CB1F0(&v34, (v17 + 32));
    sub_2186CB1F0(&v32, (v17 + 37));
    sub_2186CB1F0(&v30, (v17 + 42));
    __swift_destroy_boxed_opaque_existential_1(v29);
    result = __swift_destroy_boxed_opaque_existential_1(v46);
    v24 = v25;
    v25[3] = v16;
    v24[4] = &off_282A7A580;
    *v24 = v17;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21877127C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for LocalNewsChannelService();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    a2[3] = v3;
    result = sub_2186D5C14(qword_280EE1A48, type metadata accessor for LocalNewsChannelService);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218771348@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEFD34();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E900F0);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E270);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC68);
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for FoodClusteringService();
    v10 = swift_allocObject();
    sub_2186CB1F0(&v17, (v10 + 2));
    v10[7] = v5;
    v10[8] = v6;
    sub_2186CB1F0(&v15, (v10 + 9));
    v10[14] = v7;
    sub_2186CB1F0(&v13, (v10 + 15));
    result = sub_2186CB1F0(&v11, (v10 + 20));
    v10[25] = v8;
    a2[3] = v9;
    a2[4] = &off_282A75BE8;
    *a2 = v10;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218771664(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925C0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F618A8);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayFeedPoolService();
  result = sub_219BE1E24();
  if (result)
  {
    v8[1] = result;
    sub_2186D5438(0, &qword_280E91E60, type metadata accessor for TodayFeedPoolService, sub_2186D5548);
    swift_allocObject();
    return sub_219BEDE94();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187717F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E270);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6B0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DF68);
  sub_219BED3B4();
  v6 = sub_219BE1DE4();

  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DF70);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = result;
  v43 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20);
  result = sub_219BE1E34();
  if (!v61)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (!v59)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEFF74();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v57)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBFE18);
  result = sub_219BE1E34();
  if (!v55)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE1810);
  result = sub_219BE1E34();
  if (!v53)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E92778);
  result = sub_219BE1E34();
  if (!v51)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v37 = v9;
  v38 = v8;
  v39 = v7;
  v40 = v6;
  v41 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E92790);
  result = sub_219BE1E34();
  if (v49)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v36[1] = v36;
    MEMORY[0x28223BE20](v10);
    v12 = (v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    v36[0] = v36;
    MEMORY[0x28223BE20](v14);
    v16 = (v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v12;
    v19 = *v16;
    v20 = type metadata accessor for TodayFeedPoolTracker();
    v47[3] = v20;
    v47[4] = &off_282A72E70;
    v47[0] = v18;
    v21 = type metadata accessor for LocalNewsChannelService();
    v45 = v21;
    v46 = &off_282A6E848;
    v44[0] = v19;
    type metadata accessor for TodayFeedPoolService();
    v22 = swift_allocObject();
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v47, v20);
    MEMORY[0x28223BE20](v23);
    v25 = (v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    MEMORY[0x28223BE20](v27);
    v29 = (v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = *v25;
    v32 = *v29;
    v22[32] = v20;
    v22[33] = &off_282A72E70;
    v22[34] = v32;
    v22[29] = v31;
    v22[37] = v21;
    v22[38] = &off_282A6E848;
    v33 = v42;
    v22[2] = v43;
    v22[3] = v33;
    v34 = v40;
    v22[4] = v41;
    v22[5] = v34;
    v35 = v38;
    v22[6] = v39;
    v22[7] = v35;
    sub_2186CB1F0(&v62, (v22 + 8));
    sub_2186CB1F0(&v60, (v22 + 19));
    sub_2186CB1F0(&v58, (v22 + 24));
    v22[13] = v37;
    sub_2186CB1F0(&v56, (v22 + 14));
    sub_2186CB1F0(&v50, (v22 + 39));
    sub_2186CB1F0(&v48, (v22 + 44));
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return v22;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21877205C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA61A0);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE62C0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    type metadata accessor for MagazineFeedServiceConfigFetcher();
    v5 = swift_allocObject();
    v5[2] = 0x6B726F7774654ELL;
    v5[3] = 0xE700000000000000;
    v5[4] = v3;
    sub_2186CB1F0(&v8, (v5 + 5));
    v5[10] = v6;
    v5[11] = v7;
    v5[12] = v4;
    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218772218@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TodayFeedPoolTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A72E70;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TodayFeedPool()
{
  result = qword_280EDD078;
  if (!qword_280EDD078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218772358()
{
  result = sub_219BDF6C4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_21877249C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280E90590);
  result = sub_219BE1E34();
  if (!v30)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280ECA990);
  result = sub_219BE1E34();
  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  MEMORY[0x28223BE20](v4);
  v6 = (&v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v9 = type metadata accessor for IssueModelFactory();
  v26[3] = v9;
  v26[4] = &off_282A725A8;
  v26[0] = v8;
  v10 = type metadata accessor for IssueModelReferenceService();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v26, v9);
  MEMORY[0x28223BE20](v12);
  v14 = (&v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v11[10] = v9;
  v11[11] = &off_282A725A8;
  v11[7] = v16;
  sub_2186CB1F0(&v29, (v11 + 2));
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  v30 = v10;
  v31 = sub_2186D5C14(qword_280EBB5E8, type metadata accessor for IssueModelReferenceService);
  *&v29 = v11;
  sub_219BE2304();
  __swift_destroy_boxed_opaque_existential_1(&v29);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &unk_280E8DF20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  v18 = type metadata accessor for FCSportsEventReferenceService();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v30 = v18;
  v31 = sub_2186D5C14(qword_280EB0D18, type metadata accessor for FCSportsEventReferenceService);
  *&v29 = v19;
  sub_219BE2304();
  __swift_destroy_boxed_opaque_existential_1(&v29);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = result;
  v21 = type metadata accessor for FeatureAvailabilityReferenceService();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v30 = v21;
  v31 = sub_2186D5C14(qword_280E9DC28, type metadata accessor for FeatureAvailabilityReferenceService);
  *&v29 = v22;
  sub_219BE2304();
  __swift_destroy_boxed_opaque_existential_1(&v29);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280EB8CD0);
  result = sub_219BE1E34();
  if (v30)
  {
    v23 = type metadata accessor for FeedDescriptorReferenceService();
    v24 = swift_allocObject();
    sub_2186CB1F0(&v29, v24 + 16);
    v30 = v23;
    v31 = sub_2186D5C14(qword_280EACEB0, type metadata accessor for FeedDescriptorReferenceService);
    *&v29 = v24;
    sub_219BE2304();
    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218772A04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_219BE1EF4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_219BE1EE4();
}

uint64_t sub_218772A64@<X0>(uint64_t a1@<X8>)
{
  if (qword_280EE7CB0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE1EF4();
  v3 = __swift_project_value_buffer(v2, qword_280EE7CB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_218772B58@<X0>(uint64_t a1@<X8>)
{
  if (qword_280EE7C88 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE1EF4();
  v3 = __swift_project_value_buffer(v2, qword_280EE7C90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_218772C24@<X0>(uint64_t a1@<X8>)
{
  if (qword_280EE7C40 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE1EF4();
  v3 = __swift_project_value_buffer(v2, qword_280EE7C48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_218772CCC()
{
  v0 = sub_219BE1EF4();
  __swift_allocate_value_buffer(v0, qword_280EE7C48);
  __swift_project_value_buffer(v0, qword_280EE7C48);
  return sub_219BE1EE4();
}

uint64_t sub_218772D30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE32E8);
  result = sub_219BE1E34();
  if (!v9)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(v8, v9);
  v5 = sub_219BEC464();
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E6C0);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for PPTFeedAvailabilityService();
      result = swift_allocObject();
      *(result + 16) = v6;
      *(a2 + 24) = v7;
      *(a2 + 32) = &off_282A909E8;
      *a2 = result;
      return result;
    }

    goto LABEL_8;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_218772E74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E5E0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8DF20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E010);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA30F0);
  result = sub_219BE1E34();
  if (v13)
  {
    v10 = type metadata accessor for FeedAvailabilityService();
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = v8;
    v11[6] = v9;
    result = sub_2186CB1F0(&v12, (v11 + 7));
    a2[3] = v10;
    a2[4] = &off_282A3CB98;
    *a2 = v11;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21877312C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280EE7C68 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE1EF4();
  v3 = __swift_project_value_buffer(v2, qword_280EE7C70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21877321C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TodayFeedConfig();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187732DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218773324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187733B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187735D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BEE754();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218773688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BEE754();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218773734(void *a1)
{
  if (qword_280E8D838 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61730;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E1CDC();
  v3 = v2;
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for TodayFeedDatabaseGroupProcessor();
  v5 = swift_allocObject();
  sub_2186CB1F0(&v6, v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718850(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2314();
  result = sub_219BE1E24();
  if (result)
  {
    *&v6 = v5;
    sub_2186E1EB4();
    swift_allocObject();
    return sub_219BF0DF4();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21877395C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61730 = result;
  return result;
}

uint64_t sub_218773A58(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925C0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F618A8);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E1CDC();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    v10 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v14[3] = v8;
    v14[4] = *(v9 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    sub_2186F7F18();
    swift_allocObject();
    v12 = sub_219BF0CF4();
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218773CD0(void *a1)
{
  sub_218718850(0, qword_280EC6638, type metadata accessor for TodayConfigFetchResult, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-1] - v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC65C8);
  result = sub_219BE1E34();
  if (!v31)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9BC0);
  sub_219BE1E34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0);
  result = sub_219BE1E34();
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (!v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayConfigFetchResult();
  sub_219BE1E34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    MEMORY[0x28223BE20](v8);
    v10 = (&v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for TodayConfigManager();
    v22[3] = v13;
    v22[4] = &off_282A4A780;
    v22[0] = v12;
    type metadata accessor for TodayFeedServiceConfigFetcher();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v13);
    MEMORY[0x28223BE20](v15);
    v17 = (&v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    *(v14 + 56) = v13;
    *(v14 + 64) = &off_282A4A780;
    *(v14 + 16) = 0x6B726F7774654ELL;
    *(v14 + 24) = 0xE700000000000000;
    *(v14 + 32) = v19;
    v20 = v28;
    *(v14 + 72) = v27;
    *(v14 + 88) = v20;
    *(v14 + 104) = v29;
    sub_2186CB1F0(&v25, v14 + 112);
    *(v14 + 152) = v6;
    sub_2186CB1F0(&v23, v14 + 160);
    sub_218735700(v4, v14 + OBJC_IVAR____TtC7NewsUI229TodayFeedServiceConfigFetcher_prefetchedTodayConfigFetchResult, qword_280EC6638, type metadata accessor for TodayConfigFetchResult);
    *(v14 + OBJC_IVAR____TtC7NewsUI229TodayFeedServiceConfigFetcher_featureAvailability) = v7;
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v14;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218774198@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6D0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE1810);
  result = sub_219BE1E34();
  if (!v39)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE32E8);
  result = sub_219BE1E34();
  if (!v37)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v30 = &v27;
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v14 = type metadata accessor for LocalNewsChannelService();
  v35[3] = v14;
  v35[4] = &off_282A6E848;
  v35[0] = v13;
  v15 = type metadata accessor for TodayConfigManager();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v35, v14);
  v29 = &v27;
  MEMORY[0x28223BE20](v17);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v34[3] = v14;
  v34[4] = &off_282A6E848;
  v34[0] = v21;
  sub_219BEE324();
  swift_allocObject();
  v16[2] = sub_219BEE314();
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v7;
  v16[6] = v8;
  sub_218718690(v34, (v16 + 7));
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v28 = v5;
  swift_unknownObjectRetain();
  v22 = v7;
  swift_unknownObjectRetain();
  sub_219BEC474();
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  sub_2187754E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_219BF7484();
  v24 = v32;
  v25 = v33;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_2186FC3BC();
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  sub_219BF6214();
  sub_219BE5314();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v35);
  result = __swift_destroy_boxed_opaque_existential_1(v38);
  v26 = v31;
  v31[3] = v15;
  v26[4] = &off_282A4A780;
  *v26 = v16;
  return result;
}

uint64_t type metadata accessor for TodayConfigManager()
{
  result = qword_280ED24A8;
  if (!qword_280ED24A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218774794()
{
  result = sub_219BEC374();
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

uint64_t PPT.Test.todayConfigOverrides.getter()
{
  v1 = *v0;
  if ((v1 - 7) >= 0x16)
  {
    if (*v0 <= 4u)
    {
      if ((v1 - 1) < 4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (*v0 > 0x1Du)
      {
        goto LABEL_2;
      }

      if ((v1 - 5) < 2)
      {
        sub_219BDC8D4();
        sub_219BDC8B4();
        if (qword_27CC086E8 != -1)
        {
          swift_once();
        }

        sub_219BDC8A4();

        if (v11)
        {
          v2 = NewsCoreUserDefaults();
          v3 = [v2 stringForKey_];

          if (v3)
          {
            v4 = sub_219BF5414();
            v6 = v5;
          }

          else
          {
            v4 = 0;
            v6 = 0;
          }

          if (qword_280E8D830 != -1)
          {
            swift_once();
          }

          sub_2186F20D4();
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_219C09BA0;
          *(v7 + 56) = MEMORY[0x277D837D0];
          *(v7 + 64) = sub_2186FC3BC();
          v8 = 0x3E656E6F6E3CLL;
          if (v6)
          {
            v8 = v4;
          }

          v9 = 0xE600000000000000;
          if (v6)
          {
            v9 = v6;
          }

          *(v7 + 32) = v8;
          *(v7 + 40) = v9;

          sub_219BF6214();
          sub_219BE5314();
        }

        else
        {
          if (qword_280E8D830 != -1)
          {
            swift_once();
          }

          sub_219BF6214();
          sub_219BE5314();
          sub_218775038(v1);
        }

        return sub_219BEC334();
      }
    }

    return sub_219BEC334();
  }

LABEL_2:

  return MEMORY[0x28218C278]();
}

uint64_t sub_218774B6C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v10[15] = 0;
  sub_218774D40();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CCD8DC8 = result;
  return result;
}

void sub_218774D40()
{
  if (!qword_27CC1DBF8)
  {
    sub_218774D9C();
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1DBF8);
    }
  }
}

unint64_t sub_218774D9C()
{
  result = qword_27CC1DC00;
  if (!qword_27CC1DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DC00);
  }

  return result;
}

unint64_t sub_218774DF8()
{
  result = qword_27CC1DC10;
  if (!qword_27CC1DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DC10);
  }

  return result;
}

uint64_t sub_218774E4C(uint64_t a1)
{
  v2 = sub_218774EA0();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

unint64_t sub_218774EA0()
{
  result = qword_27CC1DC18;
  if (!qword_27CC1DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DC18);
  }

  return result;
}

void sub_218774EF4(uint64_t *a1@<X8>)
{
  v2 = 0x656C646E7562;
  if (*v1)
  {
    v2 = 0x6F43756F59726F66;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEC0000006769666ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_218774F40()
{
  sub_218774F78(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for PuzzleArchiveTagFeedGroupConfigData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_218775038(char a1)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-v7];
  type metadata accessor for RootTestSuite();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_219BF53D4();
  v12 = sub_219BF53D4();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    sub_219BDB8B4();

    (*(v3 + 32))(v8, v6, v2);
    v18 = sub_219BDB974();
    (*(v3 + 8))(v8, v2);
    return v18;
  }

  else
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v20[15] = a1;
    v15 = PPT.Test.rawValue.getter();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_219BE5314();

    return 0;
  }
}

uint64_t sub_218775408()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617A0 = result;
  return result;
}

void sub_2187754E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t PPT.Test.rawValue.getter()
{
  result = 0x4D656C6369747241;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
    case 0xC:
    case 0x20:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0x464E4165736F6C43;
      break;
    case 4:
      result = 0x62655765736F6C43;
      break;
    case 5:
      result = 0x6465646E65747845;
      break;
    case 6:
    case 0x1E:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x41464E416E65704FLL;
      break;
    case 8:
      result = 0x416265576E65704FLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 0xA:
      result = 0xD000000000000015;
      break;
    case 0xB:
    case 0x1A:
      result = 0xD000000000000020;
      break;
    case 0xD:
    case 0x17:
      result = 0xD000000000000024;
      break;
    case 0xE:
    case 0x1C:
      result = 0xD000000000000018;
      break;
    case 0xF:
    case 0x16:
    case 0x18:
      result = 0xD000000000000023;
      break;
    case 0x10:
      result = 0xD000000000000011;
      break;
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 0x12:
      result = 0x61536C6C6F726353;
      break;
    case 0x13:
      result = 0x6F546C6C6F726353;
      break;
    case 0x14:
      result = 0xD00000000000001ALL;
      break;
    case 0x15:
      result = 0xD00000000000001ELL;
      break;
    case 0x19:
      result = 0xD000000000000032;
      break;
    case 0x1B:
      result = 0x61546C6C6F726353;
      break;
    case 0x1D:
      result = 0x6565467961646F54;
      break;
    case 0x1F:
      result = 0x794D6C6C6F726353;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2187759A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TodayConfig();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_218775A74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TodayFeedConfig();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_218775B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DCF58();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_2186DD750(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_218775CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TodayConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_218775D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TodayFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_218775E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DCF58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2186DD750(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_218775F9C()
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v0 = qword_280F616D8;
  sub_219BEDE24();
  swift_allocObject();
  v1 = v0;
  return sub_219BEDDE4();
}

uint64_t sub_218776094@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2186EF32C(0, &qword_280E8B9B0, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C12A40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for OfflineFeedGroupRootItemsProcessor();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v4 + 56) = v5;
  *(v4 + 64) = &off_282A2F4C8;
  *(v4 + 32) = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = type metadata accessor for OfflineFeedGroupPackagesProcessor();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v4 + 96) = v7;
  *(v4 + 104) = &off_282A98470;
  *(v4 + 72) = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = type metadata accessor for OfflineFeedGroupReferencesProcessor();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v4 + 136) = v8;
  *(v4 + 144) = &off_282A7AC20;
  *(v4 + 112) = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for OfflineFeedGroupThumbnailsProcessor();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v4 + 176) = v9;
  *(v4 + 184) = &off_282A5A128;
  *(v4 + 152) = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = type metadata accessor for OfflineFeedGroupTagImagesProcessor();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v4 + 216) = v10;
  *(v4 + 224) = &off_282A544C0;
  *(v4 + 192) = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = type metadata accessor for OfflineFeedGroupContentsProcessor();
  result = sub_219BE1E24();
  if (result)
  {
    *(v4 + 256) = v11;
    *(v4 + 264) = &off_282A96440;
    *(v4 + 232) = result;
    *a2 = v4;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2187762D4()
{
  type metadata accessor for OfflineFeedGroupRootItemsProcessor();

  return swift_allocObject();
}

uint64_t sub_218776308()
{
  type metadata accessor for OfflineFeedGroupPackagesProcessor();

  return swift_allocObject();
}

uint64_t sub_21877633C()
{
  type metadata accessor for OfflineFeedGroupReferencesProcessor();

  return swift_allocObject();
}

uint64_t sub_218776370(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, a2);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    a4(0);
    result = swift_allocObject();
    *(result + 16) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21877642C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for OfflineFeedGroupTagImagesProcessor();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218776518()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F626B8);
  __swift_project_value_buffer(v0, qword_280F626B8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_218776608(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_218718690(a1, v5);
  swift_beginAccess();
  sub_218720448(v2, v3);
  sub_218776680(v5, v2, v3);
  return swift_endAccess();
}

uint64_t sub_218776680(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2186CB1F0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_218776768(v9, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_218720434(a2, a3);
    *v3 = v8;
  }

  else
  {
    sub_2199DCA48(a1, &qword_280EC7398, &unk_280EC73A0, &protocol descriptor for OfflineFeedBuilderType);
    sub_2195EA81C(a2, a3, v9);
    sub_218720434(a2, a3);
    return sub_2199DCA48(v9, &qword_280EC7398, &unk_280EC73A0, &protocol descriptor for OfflineFeedBuilderType);
  }

  return result;
}

uint64_t sub_218776768(__int128 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2187539B8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_219493628(&qword_280E8D400, &unk_280EC73A0, &protocol descriptor for OfflineFeedBuilderType, sub_21875F93C);
      v11 = v19;
      goto LABEL_8;
    }

    sub_218776930(v16, a4 & 1, &qword_280E8D400, &unk_280EC73A0, &protocol descriptor for OfflineFeedBuilderType, sub_21875F93C);
    v11 = sub_2187539B8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_219BF79A4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_2186CB1F0(a1, v22);
  }

  else
  {
    sub_218776D84(v11, a2, a3, a1, v21, sub_21875F93C);

    return sub_218720448(a2, a3);
  }
}

uint64_t sub_218776930(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v7 = v6;
  v9 = *v6;
  sub_218776D0C(0, a3, a4);
  result = sub_219BF7594();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (1)
    {
      if (!v16)
      {
        v22 = v12;
        while (1)
        {
          v12 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_61;
          }

          if (v12 >= v17)
          {
            break;
          }

          v23 = v13[v12];
          ++v22;
          if (v23)
          {
            v21 = __clz(__rbit64(v23));
            v16 = (v23 - 1) & v23;
            goto LABEL_15;
          }
        }

        if ((a2 & 1) == 0)
        {

          v7 = v6;
          goto LABEL_59;
        }

        v36 = 1 << *(v9 + 32);
        v7 = v6;
        if (v36 >= 64)
        {
          bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v13 = -1 << v36;
        }

        *(v9 + 16) = 0;
        break;
      }

      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v26 = *(v9 + 56) + 40 * v24;
      v27 = *(v25 + 16 * v24 + 8);
      v38 = *(v25 + 16 * v24);
      if (a2)
      {
        a6(v26, v39);
      }

      else
      {
        sub_218718690(v26, v39);
        sub_218720448(v38, v27);
      }

      sub_219BF7AA4();
      if (v27 <= 4)
      {
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v28 = 2;
          }

          else if (v27 == 3)
          {
            v28 = 3;
          }

          else
          {
            v28 = 5;
          }

          goto LABEL_41;
        }

        if (!v27)
        {
          v28 = 0;
          goto LABEL_41;
        }

        if (v27 == 1)
        {
          v28 = 1;
          goto LABEL_41;
        }
      }

      else
      {
        if (v27 <= 7)
        {
          if (v27 == 5)
          {
            v28 = 6;
          }

          else if (v27 == 6)
          {
            v28 = 7;
          }

          else
          {
            v28 = 8;
          }

          goto LABEL_41;
        }

        switch(v27)
        {
          case 8:
            v28 = 9;
            goto LABEL_41;
          case 9:
            v28 = 10;
            goto LABEL_41;
          case 10:
            v28 = 11;
LABEL_41:
            MEMORY[0x21CECE850](v28);
            goto LABEL_42;
        }
      }

      MEMORY[0x21CECE850](4);
      sub_219BF5524();
LABEL_42:
      result = sub_219BF7AE4();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v20 = v38;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_61:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v20 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 16 * v19) = v20;
      result = (a6)(v39, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }
  }

LABEL_59:
  *v7 = v11;
  return result;
}

void sub_218776D0C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2186C709C(255, a3);
    sub_218754424();
    v4 = sub_219BF75C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218776D84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = a6(a4, a5[7] + 40 * a1);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

void *sub_218776DF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB874(0, &qword_280E90B50, sub_2186E1CDC, sub_2186E1E80, MEMORY[0x277D33010]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayFeedServiceConfigFetcher();
  result = sub_219BE1E04();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E1EB4();
  result = sub_219BE1DE4();
  if (result)
  {
    v6 = result;
    type metadata accessor for TodayFeedOfflineFeedUpdater();
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v4;
    result[4] = v5;
    result[5] = v7;
    result[6] = v6;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218777010(void *a1, uint64_t (*a2)(void), uint64_t a3, unint64_t *a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8[3] = a2(0);
  v8[4] = a3;
  v8[0] = swift_allocObject();
  sub_2186C709C(0, a4);
  sub_219BE1BA4();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_21877711C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_218718690(a1, v5);
  swift_beginAccess();
  sub_218720448(v2, v3);
  sub_21877735C(v5, v2, v3);
  return swift_endAccess();
}

uint64_t sub_218777194(__int128 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2187539B8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_219493628(&unk_280E8D3F0, &qword_280EC7390, &protocol descriptor for OfflineFeedUpdaterType, sub_21875F93C);
      v11 = v19;
      goto LABEL_8;
    }

    sub_218776930(v16, a4 & 1, &unk_280E8D3F0, &qword_280EC7390, &protocol descriptor for OfflineFeedUpdaterType, sub_21875F93C);
    v11 = sub_2187539B8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_219BF79A4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_2186CB1F0(a1, v22);
  }

  else
  {
    sub_218776D84(v11, a2, a3, a1, v21, sub_21875F93C);

    return sub_218720448(a2, a3);
  }
}

uint64_t sub_21877735C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2186CB1F0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_218777194(v9, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_218720434(a2, a3);
    *v3 = v8;
  }

  else
  {
    sub_2199DCA48(a1, &qword_27CC220E8, &qword_280EC7390, &protocol descriptor for OfflineFeedUpdaterType);
    sub_2195EA85C(a2, a3, v9);
    sub_218720434(a2, a3);
    return sub_2199DCA48(v9, &qword_27CC220E8, &qword_280EC7390, &protocol descriptor for OfflineFeedUpdaterType);
  }

  return result;
}

uint64_t sub_218777444(void *a1)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8CD0);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6034();
  result = sub_219BE1DE4();
  if (result)
  {
    v5 = result;
    type metadata accessor for PuzzleHubOfflineFeedBuilder();
    v6 = swift_allocObject();
    sub_2186CB1F0(v9, (v6 + 2));
    v6[7] = v3;
    v6[8] = v4;
    sub_2186CB1F0(&v7, (v6 + 9));
    v6[14] = v5;
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187775F0(void *a1)
{
  if (qword_280E8D8F8 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617B0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB8F4();
  v3 = v2;
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for TagFeedDatabaseGroupProcessor();
  v5 = swift_allocObject();
  sub_2186CB1F0(&v6, v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718850(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE2314();
  result = sub_219BE1E24();
  if (result)
  {
    *&v6 = v5;
    sub_2186D6034();
    swift_allocObject();
    return sub_219BF0DF4();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218777818()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617B0 = result;
  return result;
}

uint64_t sub_2187778F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21877A078();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61708;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_2186DB8F4();
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_218777BD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_39;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6430);
  result = sub_219BE1E34();
  if (!v225)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510);
  result = sub_219BE1E34();
  if (!v223)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E915D0);
  result = sub_219BE1E34();
  if (!v221)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBC100);
  result = sub_219BE1E34();
  if (!v219)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9BB10);
  result = sub_219BE1E34();
  if (!v217)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v214)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v213)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90250);
  result = sub_219BE1E34();
  if (!v210)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsTopicClusteringService();
  result = sub_219BE1E24();
  v136 = result;
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBA370);
  result = sub_219BE1E34();
  if (!v209)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20);
  result = sub_219BE1E34();
  if (!v207)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAEBF0);
  result = sub_219BE1E34();
  if (!v205)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBFE30);
  result = sub_219BE1E34();
  if (!v203)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FED0);
  result = sub_219BE1E34();
  if (!v201)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v199)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB7A98);
  result = sub_219BE1E34();
  if (!v197)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsScoreSorter();
  result = sub_219BE1E24();
  v135 = result;
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD40);
  result = sub_219BE1E34();
  if (!v195)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E97BA0);
  result = sub_219BE1E34();
  if (!v193)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedCurationService();
  result = sub_219BE1E24();
  v134 = result;
  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8010);
  result = sub_219BE1E34();
  if (!v191)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7670);
  result = sub_219BE1E34();
  if (!v189)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  v133 = result;
  if (!result)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90130);
  result = sub_219BE1E34();
  if (!v187)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC0C00);
  result = sub_219BE1E34();
  if (!v185)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E901D0);
  result = sub_219BE1E34();
  if (!v183)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90500);
  result = sub_219BE1E34();
  if (!v181)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E270);
  result = sub_219BE1E24();
  v132 = result;
  if (!result)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E99080);
  result = sub_219BE1E34();
  if (!v179)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA48C0);
  result = sub_219BE1E34();
  v131 = v176;
  if (!v176)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v130 = v177;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBE990);
  result = sub_219BE1E34();
  if (!v175)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91100);
  result = sub_219BE1E34();
  if (!v173)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6160);
  result = sub_219BE1E34();
  if (!v171)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (!v169)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v125 = v211;
  v126 = v210;
  v127 = v215;
  v128 = v214;
  v129 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  v124 = v166;
  if (v166)
  {
    v120 = v167;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v218, v219);
    v123 = v94;
    MEMORY[0x28223BE20](v4);
    v137 = (v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))();
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v216, v217);
    v122 = v94;
    MEMORY[0x28223BE20](v7);
    v112 = (v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v208, v209);
    v121 = v94;
    MEMORY[0x28223BE20](v10);
    v12 = (v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v204, v205);
    v119 = v94;
    MEMORY[0x28223BE20](v14);
    v16 = (v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v202, v203);
    v118 = v94;
    MEMORY[0x28223BE20](v18);
    v20 = (v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v196, v197);
    v117 = v94;
    MEMORY[0x28223BE20](v22);
    v24 = (v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v190, v191);
    v116 = v94;
    MEMORY[0x28223BE20](v26);
    v28 = (v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v188, v189);
    v115 = v94;
    MEMORY[0x28223BE20](v30);
    v32 = (v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32);
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v178, v179);
    v114 = v94;
    MEMORY[0x28223BE20](v34);
    v36 = (v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36);
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
    v113 = v94;
    MEMORY[0x28223BE20](v38);
    v40 = (v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40);
    v42 = *v112;
    v43 = *v12;
    v44 = *v16;
    v45 = *v20;
    v46 = *v24;
    v47 = *v28;
    v48 = *v32;
    v49 = *v36;
    v50 = *v40;
    v164 = &type metadata for ChannelLocationService;
    v165 = &off_282A33058;
    v163 = *v137;
    v137 = type metadata accessor for ChannelSectionsGroupPersonalizer();
    v162[4] = &off_282AA2B18;
    v162[3] = v137;
    v162[0] = v42;
    v109 = type metadata accessor for SportsFavoritesService();
    v161 = &off_282A62438;
    v160 = v109;
    v159[0] = v43;
    v108 = type metadata accessor for SportsScoreSectionService();
    v158 = &off_282A8D370;
    v157 = v108;
    v156[0] = v44;
    v107 = type metadata accessor for TagHighlightsService();
    v155 = &off_282A90268;
    v154 = v107;
    v153[0] = v45;
    v106 = type metadata accessor for PromotedHeadlineService();
    v152 = &off_282A3E1A8;
    v151 = v106;
    v150[0] = v46;
    v105 = type metadata accessor for SportsRecommendationManager();
    v149 = &off_282A790B8;
    v148 = v105;
    v147[0] = v47;
    v103 = type metadata accessor for MySportsTagService();
    v145 = v103;
    v146 = &off_282A97430;
    v144[0] = v48;
    v102 = type metadata accessor for PuzzleArchiveFilterOptionsManager();
    v142 = v102;
    v143 = &off_282A79210;
    v141[0] = v49;
    v101 = type metadata accessor for FoodClusteringService();
    v139 = v101;
    v140 = &off_282A75BE8;
    v138[0] = v50;
    type metadata accessor for TagFeedGroupEmitterFactory();
    v51 = swift_allocObject();
    v52 = __swift_mutable_project_boxed_opaque_existential_1(&v163, &type metadata for ChannelLocationService);
    v112 = v94;
    MEMORY[0x28223BE20](v52);
    v98 = (v94 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v54 + 16))();
    v55 = __swift_mutable_project_boxed_opaque_existential_1(v162, v137);
    v111 = v94;
    MEMORY[0x28223BE20](v55);
    v96 = (v94 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))();
    v58 = __swift_mutable_project_boxed_opaque_existential_1(v159, v160);
    v110 = v94;
    MEMORY[0x28223BE20](v58);
    v95 = (v94 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v60 + 16))();
    v61 = __swift_mutable_project_boxed_opaque_existential_1(v156, v157);
    v104 = v94;
    MEMORY[0x28223BE20](v61);
    v63 = (v94 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v64 + 16))(v63);
    v65 = __swift_mutable_project_boxed_opaque_existential_1(v153, v154);
    v100 = v94;
    MEMORY[0x28223BE20](v65);
    v67 = (v94 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67);
    v69 = __swift_mutable_project_boxed_opaque_existential_1(v150, v151);
    v99 = v94;
    MEMORY[0x28223BE20](v69);
    v71 = (v94 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v72 + 16))(v71);
    v73 = __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
    v97 = v94;
    MEMORY[0x28223BE20](v73);
    v75 = (v94 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v76 + 16))(v75);
    v77 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
    v94[3] = v94;
    MEMORY[0x28223BE20](v77);
    v79 = (v94 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v80 + 16))(v79);
    v81 = __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
    v94[2] = v94;
    MEMORY[0x28223BE20](v81);
    v83 = (v94 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v84 + 16))(v83);
    v85 = __swift_mutable_project_boxed_opaque_existential_1(v138, v139);
    v94[1] = v94;
    MEMORY[0x28223BE20](v85);
    v87 = (v94 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))(v87);
    *(v51 + 168) = &type metadata for ChannelLocationService;
    *(v51 + 176) = &off_282A33058;
    v89 = *v98;
    *(v51 + 208) = v137;
    *(v51 + 216) = &off_282AA2B18;
    *(v51 + 184) = *v96;
    *(v51 + 448) = v109;
    *(v51 + 456) = &off_282A62438;
    *(v51 + 424) = *v95;
    *(v51 + 368) = v108;
    *(v51 + 376) = &off_282A8D370;
    *(v51 + 344) = *v63;
    *(v51 + 408) = v107;
    *(v51 + 416) = &off_282A90268;
    *(v51 + 384) = *v67;
    *(v51 + 568) = v106;
    *(v51 + 576) = &off_282A3E1A8;
    *(v51 + 544) = *v71;
    *(v51 + 704) = v105;
    *(v51 + 712) = &off_282A790B8;
    *(v51 + 680) = *v75;
    *(v51 + 904) = v103;
    *(v51 + 912) = &off_282A97430;
    *(v51 + 880) = *v79;
    *(v51 + 960) = v102;
    *(v51 + 968) = &off_282A79210;
    *(v51 + 936) = *v83;
    *(v51 + 1016) = v101;
    *(v51 + 1024) = &off_282A75BE8;
    *(v51 + 992) = *v87;
    *(v51 + 16) = v129;
    *(v51 + 144) = v89;
    sub_2186CB1F0(&v224, v51 + 24);
    sub_2186CB1F0(&v222, v51 + 64);
    sub_2186CB1F0(&v220, v51 + 104);
    v90 = v127;
    *(v51 + 224) = v128;
    *(v51 + 232) = v90;
    sub_2186CB1F0(&v212, v51 + 240);
    v91 = v125;
    *(v51 + 280) = v126;
    *(v51 + 288) = v91;
    *(v51 + 296) = v136;
    sub_2186CB1F0(&v206, v51 + 304);
    sub_2186CB1F0(&v200, v51 + 464);
    sub_2186CB1F0(&v198, v51 + 504);
    *(v51 + 584) = v135;
    sub_2186CB1F0(&v194, v51 + 592);
    sub_2186CB1F0(&v192, v51 + 632);
    v92 = v133;
    *(v51 + 672) = v134;
    *(v51 + 920) = v92;
    sub_2186CB1F0(&v186, v51 + 720);
    sub_2186CB1F0(&v184, v51 + 760);
    sub_2186CB1F0(&v182, v51 + 800);
    sub_2186CB1F0(&v180, v51 + 840);
    v93 = v131;
    *(v51 + 928) = v132;
    *(v51 + 976) = v93;
    *(v51 + 984) = v130;
    sub_2186CB1F0(&v172, v51 + 1032);
    sub_2186CB1F0(&v170, v51 + 1072);
    sub_2186CB1F0(&v168, v51 + 1112);
    *(v51 + 1152) = v124;
    *(v51 + 1160) = v120;
    __swift_destroy_boxed_opaque_existential_1(v138);
    __swift_destroy_boxed_opaque_existential_1(v141);
    __swift_destroy_boxed_opaque_existential_1(v144);
    __swift_destroy_boxed_opaque_existential_1(v147);
    __swift_destroy_boxed_opaque_existential_1(v150);
    __swift_destroy_boxed_opaque_existential_1(v153);
    __swift_destroy_boxed_opaque_existential_1(v156);
    __swift_destroy_boxed_opaque_existential_1(v159);
    __swift_destroy_boxed_opaque_existential_1(v162);
    __swift_destroy_boxed_opaque_existential_1(&v163);
    __swift_destroy_boxed_opaque_existential_1(v174);
    __swift_destroy_boxed_opaque_existential_1(v178);
    __swift_destroy_boxed_opaque_existential_1(v188);
    __swift_destroy_boxed_opaque_existential_1(v190);
    __swift_destroy_boxed_opaque_existential_1(v196);
    __swift_destroy_boxed_opaque_existential_1(v202);
    __swift_destroy_boxed_opaque_existential_1(v204);
    __swift_destroy_boxed_opaque_existential_1(v208);
    __swift_destroy_boxed_opaque_existential_1(v216);
    __swift_destroy_boxed_opaque_existential_1(v218);
    return v51;
  }

LABEL_73:
  __break(1u);
  return result;
}