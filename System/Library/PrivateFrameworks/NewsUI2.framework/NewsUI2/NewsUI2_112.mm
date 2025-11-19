void sub_219369CBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_219369D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219369DB0()
{
  v0 = sub_219BEF974();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TagFeedLayoutModel();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934();
  sub_219BE75E4();
  (*(v1 + 32))(v3, v6, v0);
  sub_219BEE5F4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_219369F1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219369F3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 160) = v3;
  return result;
}

uint64_t sub_219369FA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_218A450F0();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21936A060()
{
  v1 = *v0;
  sub_21870F4C4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_219BE2F54();
  v4 = sub_219BE2E54();
  v5 = sub_219BE2FD4();

  return v5;
}

uint64_t sub_21936A198()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (!Strong)
  {
LABEL_11:
    v11 = v0[1];

    return v11();
  }

  v2 = Strong;
  if (![*(Strong + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_featureAvailability) useFood])
  {
LABEL_10:

    goto LABEL_11;
  }

  v3 = OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_userInfo;
  v0[7] = OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_userInfo;
  v4 = [*(v2 + v3) importSavedToRecipeVersion];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 integerValue];

    if (v6 >= 1)
    {
      if (qword_280EE5F38 != -1)
      {
        swift_once();
      }

      v7 = sub_219BE5434();
      __swift_project_value_buffer(v7, qword_280F62568);
      v8 = sub_219BE5414();
      v9 = sub_219BF6214();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2186C1000, v8, v9, "No import required from saved feed to recipe box.", v10, 2u);
        MEMORY[0x21CECF960](v10, -1, -1);
      }

      goto LABEL_10;
    }
  }

  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_21936A3B4;

  return sub_21936A6B8();
}

uint64_t sub_21936A3B4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21936A654;
  }

  else
  {
    v2 = sub_21936A4C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21936A4C8()
{
  sub_219BF5BD4();
  *(v0 + 80) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_21936A55C, v2, v1);
}

uint64_t sub_21936A55C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = *(v1 + v2);
  v4 = sub_219BF5DC4();
  [v3 setImportSavedToRecipeVersion_];

  return MEMORY[0x2822009F8](sub_21936A5F0, 0, 0);
}

uint64_t sub_21936A5F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21936A654()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21936A6D8()
{
  v1 = *(v0[21] + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_readingList);
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21936A7F8;
  v2 = swift_continuation_init();
  sub_218BB1EA4();
  v0[17] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_219369FA0;
  v0[13] = &block_descriptor_116;
  v0[14] = v2;
  [v1 syncWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21936A7F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_21936B038;
  }

  else
  {
    v2 = sub_21936A908;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21936A908()
{
  if (v0[18] == 2)
  {
    sub_21936B418();
    swift_allocError();
    swift_willThrow();
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[22];
    __swift_project_boxed_opaque_existential_1((v0[21] + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_headlineService), *(v0[21] + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_headlineService + 24));
    v4 = [v3 allSortedArticleIDsInReadingList];
    sub_219BF5924();

    v5 = [objc_opt_self() ignoreCacheCachePolicy];
    v0[24] = sub_219BF2854();

    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_21936AAC0;

    return MEMORY[0x2821D23D8](v0 + 19);
  }
}

uint64_t sub_21936AAC0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_21936B0A4;
  }

  else
  {

    v2 = sub_21936ABDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21936ABDC()
{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
LABEL_22:
    v2 = sub_219BF7214();
    v31 = v0;
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      v0 = MEMORY[0x277D837D0];
      do
      {
        v5 = v3;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x21CECE0F0](v5, v1);
            v3 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v6 = *(v1 + 8 * v5 + 32);
            swift_unknownObjectRetain();
            v3 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_20:
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }
          }

          v7 = [v6 recipeIDs];
          if (v7)
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v5;
          if (v3 == v2)
          {
            goto LABEL_24;
          }
        }

        v8 = v7;
        v9 = sub_219BF5924();
        swift_unknownObjectRelease();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2191FA158(0, v4[2] + 1, 1, v4);
        }

        v11 = v4[2];
        v10 = v4[3];
        if (v11 >= v10 >> 1)
        {
          v4 = sub_2191FA158((v10 > 1), v11 + 1, 1, v4);
        }

        v4[2] = v11 + 1;
        v4[v11 + 4] = v9;
        v0 = MEMORY[0x277D837D0];
      }

      while (v3 != v2);
      goto LABEL_24;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_24:

  v12 = v4[2];
  if (!v12)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_43:
    v12 = v31;
    v24 = *(v31 + 168);

    *(v31 + 160) = v14;
    sub_21870F4C4(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218ACCAC0();
    sub_219BF56B4();

    __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_recipeBox), *(v24 + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_recipeBox + 24));
    sub_219BED2E4();

    if (qword_280EE5F38 != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v13 < v4[2])
  {
    v15 = v4[v13 + 4];
    v16 = *(v15 + 16);
    v17 = *(v14 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_50;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= *(v14 + 3) >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v14 = sub_218840D24(isUniquelyReferenced_nonNull_native, v20, 1, v14);
      if (*(v15 + 16))
      {
LABEL_38:
        if ((*(v14 + 3) >> 1) - *(v14 + 2) < v16)
        {
          goto LABEL_52;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v21 = *(v14 + 2);
          v22 = __OFADD__(v21, v16);
          v23 = v21 + v16;
          if (v22)
          {
            goto LABEL_53;
          }

          *(v14 + 2) = v23;
        }

        goto LABEL_27;
      }
    }

    if (v16)
    {
      goto LABEL_51;
    }

LABEL_27:
    if (v12 == ++v13)
    {
      goto LABEL_43;
    }
  }

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
  swift_once();
LABEL_44:
  v25 = sub_219BE5434();
  __swift_project_value_buffer(v25, qword_280F62568);
  v26 = sub_219BE5414();
  v27 = sub_219BF6214();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2186C1000, v26, v27, "Import complete from saved feed to recipe box", v28, 2u);
    MEMORY[0x21CECF960](v28, -1, -1);
  }

  v29 = *(v12 + 8);

  return v29();
}

uint64_t sub_21936B038()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21936B0A4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21936B108(void *a1)
{
  if (qword_280EE5F38 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62568);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "RecipeBoxInitialImportStartupTask failed to run with error=%@", v5, 0xCu);
    sub_218962D30(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

uint64_t sub_21936B254()
{
  v1 = OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_headlineService);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_recipeBox);

  return swift_deallocClassInstance();
}

uint64_t sub_21936B36C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_21936A178(a1, v4);
}

unint64_t sub_21936B418()
{
  result = qword_27CC19240;
  if (!qword_27CC19240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19240);
  }

  return result;
}

unint64_t sub_21936B480()
{
  result = qword_27CC19248;
  if (!qword_27CC19248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19248);
  }

  return result;
}

void sub_21936B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC7NewsUI230ConfigurationAdSegmentProvider_appConfigurationManager);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_2189EB59C;
  v12[5] = v10;
  v14[4] = sub_21936B8D0;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218C1CBB4;
  v14[3] = &block_descriptor_117;
  v13 = _Block_copy(v14);

  [v11 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v13);
}

void sub_21936B60C(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1)
  {
    v6 = [swift_unknownObjectRetain() iAdConfig];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 iAdSegmentIDs];

      if (v8)
      {
        v9 = sub_219BF5924();

        a5(v9);
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a2)
  {
    v11 = a2;
  }

  else
  {
    sub_21936B8DC();
    v12 = swift_allocError();
    a2 = 0;
    v11 = v12;
  }

  v13 = a2;
  a3(v11);
}

uint64_t sub_21936B800()
{
  sub_218A15E44();
  swift_allocObject();
  return sub_219BE30B4();
}

unint64_t sub_21936B8DC()
{
  result = qword_27CC19268;
  if (!qword_27CC19268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19268);
  }

  return result;
}

unint64_t sub_21936B944()
{
  result = qword_27CC19270;
  if (!qword_27CC19270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19270);
  }

  return result;
}

uint64_t sub_21936B9A8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v87 = a3;
  v88 = a2;
  v86 = sub_219BE6DF4();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21936C9A0(0, &qword_27CC152D8, MEMORY[0x277D6DF88]);
  v83 = v7;
  v82 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v81 = &v79 - v8;
  v9 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v9 - 8);
  v109 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for SearchMoreModel(0);
  v11 = MEMORY[0x28223BE20](v111);
  v108 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v121 = &v79 - v13;
  sub_218F40F48();
  v107 = v14;
  v117 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v106 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v105 = &v79 - v17;
  sub_21936C948();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834();
  v123 = v21;
  v115 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v104 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v120 = &v79 - v24;
  sub_21936C9A0(0, &qword_27CC13A90, MEMORY[0x277D6D710]);
  v113 = v25;
  v92 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v114 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v99 = &v79 - v29;
  MEMORY[0x28223BE20](v28);
  v95 = &v79 - v30;
  sub_218F937C4();
  v32 = v31;
  MEMORY[0x28223BE20](v31);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F936D8();
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v80 = v37;
  v39 = *(v37 + 16);
  v97 = &v79 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39();
  v40 = a4;
  v41 = *(a4 + 16);
  v42 = MEMORY[0x277D84F90];
  v122 = a1;
  v110 = v20;
  v96 = v34;
  if (v41)
  {
    v124 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v43 = v40 + 40;
    do
    {
      v43 += 16;
      j__swift_retain();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      --v41;
    }

    while (v41);
    v42 = v124;
    v20 = v110;
    v34 = v96;
  }

  (v39)(v34, v122, v36);
  v44 = *(v32 + 36);
  v45 = sub_21936CAF4(&qword_27CC13F70, sub_218F936D8);
  sub_219BF5DF4();
  v46 = v34;
  sub_219BF5E84();
  v47 = *&v34[v44];
  v48 = v113;
  if (v47 == v124)
  {
LABEL_6:
    sub_21936CA94(v46, sub_218F937C4);

    v49 = v85;
    v50 = v84;
    v51 = v86;
    (*(v85 + 104))(v84, *MEMORY[0x277D6D868], v86);
    type metadata accessor for SearchMoreSectionDescriptor();
    sub_21936CAF4(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    sub_21936CAF4(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    sub_21936CAF4(&qword_27CC19290, type metadata accessor for SearchMoreSectionDescriptor);
    v52 = v81;
    v53 = v97;
    sub_219BE85E4();
    (*(v49 + 8))(v50, v51);
    v88(v52);
    (*(v82 + 8))(v52, v83);
    return (*(v80 + 8))(v53, v36);
  }

  v94 = (v92 + 16);
  v93 = (v92 + 32);
  v55 = v42 & 0xFFFFFFFFFFFFFF8;
  v89 = v42 & 0xFFFFFFFFFFFFFF8;
  if (v42 < 0)
  {
    v55 = v42;
  }

  v79 = v55;
  v119 = v42 & 0xC000000000000001;
  v118 = (v115 + 6);
  v116 = (v115 + 4);
  ++v115;
  v102 = (v117 + 32);
  v101 = (v117 + 16);
  v100 = (v117 + 8);
  v90 = (v92 + 8);
  v92 = v42 >> 62;
  v103 = v36;
  v112 = v42;
  v91 = v44;
  v98 = v45;
  while (1)
  {
    v59 = sub_219BF5EC4();
    v117 = *v94;
    v60 = v95;
    v117(v95);
    v59(&v124, 0);
    sub_219BF5E94();
    v61 = v99;
    (*v93)(v99, v60, v48);
    result = (v117)(v114, v61, v48);
    if (v92)
    {
      break;
    }

    v62 = *(v89 + 16);
    v63 = v112;
    if (v62)
    {
      goto LABEL_13;
    }

LABEL_10:
    v56 = v99;
    v57 = v114;
    sub_219BEB234();
    v58 = *v90;
    v48 = v113;
    (*v90)(v57, v113);
    v58(v56, v48);
    v46 = v96;
    sub_219BF5E84();
    if (*(v46 + v91) == v124)
    {
      goto LABEL_6;
    }
  }

  result = sub_219BF7214();
  v62 = result;
  v63 = v112;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (v62 >= 1)
  {
    v64 = 0;
    v117 = v62;
    do
    {
      if (v119)
      {
        v65 = MEMORY[0x21CECE0F0](v64, v63);
      }

      else
      {
        v65 = *(v63 + 8 * v64 + 32);
      }

      v66 = [*(v65 + 16) identifier];
      sub_219BF5414();

      sub_219BEB1C4();

      v67 = v123;
      if ((*v118)(v20, 1, v123) == 1)
      {

        sub_21936CA94(v20, sub_21936C948);
      }

      else
      {
        v68 = v120;
        (*v116)(v120, v20, v67);
        sub_219BE5FC4();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v69 = v105;
          v70 = v107;
          (*v102)(v105, v121, v107);
          v124 = v65;

          sub_219BF07E4();
          sub_219BF0804();
          type metadata accessor for TagModel();
          sub_21936CAF4(&unk_280E92B30, type metadata accessor for TagModel);
          sub_21936CAF4(qword_280E92B40, type metadata accessor for TagModel);
          v71 = v106;
          v72 = v123;
          sub_219BF0844();
          (*v101)(v108, v71, v70);
          swift_storeEnumTagMultiPayload();
          sub_21936CAF4(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
          v73 = v104;
          sub_219BE5FB4();
          sub_219BE69E4();

          v74 = *v115;
          (*v115)(v73, v72);
          v75 = *v100;
          v76 = v71;
          v63 = v112;
          (*v100)(v76, v70);
          v77 = v69;
          v20 = v110;
          v78 = v70;
          v36 = v103;
          v75(v77, v78);
          v74(v120, v72);
        }

        else
        {
          (*v115)(v68, v67);

          sub_21936CA94(v121, type metadata accessor for SearchMoreModel);
        }

        v62 = v117;
      }

      ++v64;
    }

    while (v62 != v64);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21936C824(uint64_t a1)
{
  v2 = sub_218F9F8D8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21936C864()
{
  result = qword_27CC19280;
  if (!qword_27CC19280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19280);
  }

  return result;
}

void sub_21936C948()
{
  if (!qword_27CC19288)
  {
    sub_218C3F834();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC19288);
    }
  }
}

void sub_21936C9A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchMoreSectionDescriptor();
    v8[1] = type metadata accessor for SearchMoreModel(255);
    v8[2] = sub_21936CAF4(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    v8[3] = sub_21936CAF4(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21936CA94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21936CAF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21936CB4C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v93 = a3;
  v94 = a2;
  v95 = a1;
  v89 = sub_219BE6DF4();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849B78(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v75 - v7);
  sub_218849B78(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v10 = v9;
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v84 = &v75 - v11;
  sub_218855330();
  v79 = v12;
  v78 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for TodayModel(0);
  v14 = MEMORY[0x28223BE20](v98);
  v97 = (&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v100 = &v75 - v16;
  sub_218853400();
  v18 = v17;
  v101 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v105 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v104 = &v75 - v21;
  sub_218853494();
  v103 = v22;
  v82 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v83 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v75 - v25;
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849B78(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30);
  v90 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v75 - v35;
  sub_219BEA8B4();
  v86 = v10;
  sub_219BEB244();

  if ((*(v32 + 48))(v29, 1, v31) == 1)
  {
    sub_21936D9A4(v29, sub_2188118D4);
    sub_21936D950();
    *v8 = swift_allocError();
    v38 = v91;
    v37 = v92;
    (*(v91 + 104))(v8, *MEMORY[0x277D6DF68], v92);
    v94(v8);
    return (*(v38 + 8))(v8, v37);
  }

  v76 = v8;
  v75 = v32;
  (*(v32 + 32))(v36, v29, v31);
  sub_219BE6974();
  sub_2186EFA5C(&qword_280EE7588, sub_218853494);
  v40 = v103;
  v41 = sub_219BF5E44();
  v81 = v31;
  v80 = v36;
  if (v41)
  {
    v42 = v41;
    v107 = MEMORY[0x277D84F90];
    sub_21885760C(0, v41 & ~(v41 >> 63), 0);
    v43 = v107;
    v99 = v26;
    result = sub_219BF5DF4();
    if ((v42 & 0x8000000000000000) == 0)
    {
      v44 = (v101 + 16);
      v45 = (v101 + 32);
      v96 = (v101 + 8);
      while (1)
      {
        v46 = sub_219BF5EC4();
        (*v44)(v105);
        v46(&v106, 0);
        v47 = v100;
        sub_219BE5FC4();
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v48 = sub_219BE5B24();
          v50 = v49;

          if (v48 == sub_219BE5B24() && v50 == v51)
          {

LABEL_16:
            *v97 = v102;
            swift_storeEnumTagMultiPayload();
            sub_2186EFA5C(&qword_280EDF9E0, type metadata accessor for TodayModel);
            sub_219BE5FB4();

            (*v96)(v105, v18);
            goto LABEL_17;
          }

          v53 = sub_219BF78F4();

          if (v53)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_21936D9A4(v47, type metadata accessor for TodayModel);
        }

        (*v45)(v104, v105, v18);
LABEL_17:
        v107 = v43;
        v55 = *(v43 + 16);
        v54 = *(v43 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_21885760C(v54 > 1, v55 + 1, 1);
          v43 = v107;
        }

        *(v43 + 16) = v55 + 1;
        (*(v101 + 32))(v43 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v55, v104, v18);
        v56 = v99;
        v57 = v103;
        sub_219BF5E94();
        if (!--v42)
        {
          (*(v82 + 8))(v56, v57);
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  else
  {
    (*(v82 + 8))(v26, v40);
    v43 = MEMORY[0x277D84F90];
LABEL_22:
    sub_219BE6934();
    v58 = v106;
    sub_219BE5B94();
    if (((v58 >> 58) & 0x3C | (v58 >> 1) & 3) == 0xA)
    {
      v59 = swift_projectBox();
      v60 = v78;
      v61 = v77;
      v62 = v79;
      (*(v78 + 16))(v77, v59, v79);
      v63 = swift_allocBox();
      sub_219BEDE54();
      (*(v60 + 8))(v61, v62);

      v58 = v63 | 0x2000000000000004;
    }

    v106 = v58;
    v64 = sub_2186EFA5C(&qword_280EE5D38, sub_218853400);
    v65 = sub_2186EFA5C(&qword_280EE5D40, sub_218853400);
    MEMORY[0x21CEB9170](v43, v18, v64, v65);
    sub_2186EB3E8();
    sub_2186EFA5C(&qword_280EDF9E0, type metadata accessor for TodayModel);
    sub_219BE6924();
    v66 = v85;
    v67 = v84;
    v68 = v86;
    (*(v85 + 16))(v84, v95, v86);
    sub_219BEB234();
    v69 = v88;
    v70 = v87;
    v71 = v89;
    (*(v88 + 104))(v87, *MEMORY[0x277D6D868], v89);
    sub_2188552DC();
    v72 = v76;
    sub_219BE85A4();
    (*(v69 + 8))(v70, v71);
    v94(v72);
    (*(v91 + 8))(v72, v92);
    (*(v66 + 8))(v67, v68);
    v73 = *(v75 + 8);
    v74 = v81;
    v73(v90, v81);
    return (v73)(v80, v74);
  }

  return result;
}

uint64_t sub_21936D874(uint64_t a1)
{
  v2 = sub_218CD3724();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21936D8B4()
{
  result = qword_27CC19298;
  if (!qword_27CC19298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19298);
  }

  return result;
}

unint64_t sub_21936D950()
{
  result = qword_27CC192A0;
  if (!qword_27CC192A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC192A0);
  }

  return result;
}

uint64_t sub_21936D9A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21936DA18()
{
  result = qword_27CC192A8;
  if (!qword_27CC192A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC192A8);
  }

  return result;
}

void sub_21936DADC()
{
  if (!qword_280EE3748)
  {
    sub_21880B928();
    sub_219BE6DF4();
    sub_219BE72A4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280EE3748);
    }
  }
}

void sub_21936DB68()
{
  if (!qword_27CC197E0)
  {
    type metadata accessor for TodayFeedGroup();
    sub_218858D04(255, &qword_280E91B10, MEMORY[0x277D32170]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC197E0);
    }
  }
}

uint64_t type metadata accessor for ChannelSectionsGroupPersonalizerRequest()
{
  result = qword_280E975F8;
  if (!qword_280E975F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21936DC68()
{
  sub_218B8B7FC();
  if (v0 <= 0x3F)
  {
    sub_219BEFBD4();
    if (v1 <= 0x3F)
    {
      sub_2186E2394();
      if (v2 <= 0x3F)
      {
        sub_219BE5434();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21936DD30(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  if (sub_219614240(a5, a6))
  {
    sub_219372F64(0, &qword_280EE6F58, &_s4FeedVN, MEMORY[0x277D6CF30]);
    sub_218718690(a10, v38);
    sub_218718690(a11, v37);
    sub_218718690(a15, v36);
    v22 = swift_allocObject();
    v22[2] = a6;
    v22[3] = a7;
    v22[4] = a8;
    sub_2186CB1F0(v38, (v22 + 5));
    sub_2186CB1F0(v37, (v22 + 10));
    v22[15] = a12;
    v22[16] = a13;
    sub_2186CB1F0(v36, (v22 + 17));
    v22[22] = a14;
    v22[23] = a9;

    v23 = a8;
    v24 = a12;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_219BE2F54();
    sub_218718690(a16, v38);
    v25 = swift_allocObject();
    sub_2186CB1F0(v38, v25 + 16);
    v26 = sub_219BE2E54();
    sub_2193710E4();
    sub_219BE2F64();

    v27 = swift_allocObject();
    *(v27 + 16) = sub_219371170;
    *(v27 + 24) = a6;

    v28 = sub_219BE2E54();
    sub_219BE2F64();

    v29 = swift_allocObject();
    *(v29 + 16) = sub_218E1D118;
    *(v29 + 24) = v21;
    v30 = sub_219BE2E54();
    sub_219BE2F74();
  }

  else
  {

    v31 = sub_219BEEDD4();
    sub_218EA25D0();
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D323D0], v31);
    a3(v32);
  }
}

uint64_t sub_21936E118(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219372F64(0, &qword_280EE6F58, &_s4FeedVN, MEMORY[0x277D6CF30]);
  swift_allocObject();

  v4 = v3;

  sub_219BE3014();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2193C5240();
  v5 = sub_219BE2E54();
  sub_219BE3054();

  v6 = sub_219BE2E54();
  v7 = sub_219BE2E34();

  return v7;
}

uint64_t sub_21936E2BC()
{
  if (qword_280E8D910 != -1)
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

  sub_218A15E44();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21936E41C(unint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v21 = 0;
  v22 = 0;
  v10 = *(a5 + 16);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = 0;
  v15 = (a5 + 40);
  do
  {
    v17 = *v15;
    v29[0] = *(v15 - 1);
    v29[1] = v17;

    sub_21936E624(&v21, v29, a6, a1, a3, &v27);

    sub_218B007F8(v11);
    v11 = v27;
    v21 = v27;
    v22 = v28;
    v15 += 2;
    --v10;
  }

  while (v10);
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  if (v27)
  {
    v21 = a1;
    v22 = v8;
    v23 = v7;
    v24 = v6;
    v25 = v27;
    v26 = v28;
    sub_219372F64(0, &unk_280EE6F20, &_s13MissedStoriesVN, MEMORY[0x277D6CF30]);
  }

  else
  {
LABEL_6:
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
    v21 = v9;
    v22 = v8;
    v23 = v7;
    v24 = v6;
    sub_219372F64(0, &unk_280EE6F20, &_s13MissedStoriesVN, MEMORY[0x277D6CF30]);
    v25 = 0;
    v26 = 0;
  }

  swift_allocObject();

  v18 = v8;

  return sub_219BE3014();
}

uint64_t sub_21936E624@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X5>, void *a6@<X8>)
{
  v7 = *a1;
  if (v7)
  {
    v8 = a1[1];
    *a6 = v7;
    a6[1] = v8;
    swift_unknownObjectRetain();
  }

  v12 = *a2;
  v13 = *(a2 + 8);
  if (qword_280E8D910 != -1)
  {
    goto LABEL_38;
  }

LABEL_4:
  sub_2186F20D4();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  *(v14 + 56) = MEMORY[0x277D837D0];
  v51 = sub_2186FC3BC();
  *(v14 + 64) = v51;
  *(v14 + 32) = v12;
  *(v14 + 40) = v13;

  sub_219BF6214();
  sub_219BE5314();

  a3 = *(*(a3 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData) + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags);
  if (!*(a3 + 16))
  {
    goto LABEL_33;
  }

  v48 = v12;
  v15 = sub_21870F700(v12, v13);
  if ((v16 & 1) == 0)
  {

LABEL_33:
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_219C09BA0;
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = v51;
    *(v36 + 32) = v12;
    *(v36 + 40) = v13;

    sub_219BF6214();
    sub_219BE5314();

LABEL_50:
    *a6 = 0;
    a6[1] = 0;
    return result;
  }

  v12 = *(*(a3 + 56) + 8 * v15);
  swift_unknownObjectRetain();

  if (([v12 isLocal] & 1) == 0)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_219C09BA0;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = v51;
    *(v37 + 32) = v48;
    *(v37 + 40) = v13;

    sub_219BF6214();
    sub_219BE5314();

LABEL_49:
    result = swift_unknownObjectRelease();
    goto LABEL_50;
  }

  v47 = v12;
  v55 = MEMORY[0x277D84F90];
  if (!(a4 >> 62))
  {
    v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_9;
  }

  v17 = sub_219BF7214();
  if (v17)
  {
LABEL_9:
    v18 = 0;
    v54 = a4 & 0xC000000000000001;
    v53 = a4 & 0xFFFFFFFFFFFFFF8;
    v49 = a4;
    while (1)
    {
      if (v54)
      {
        v19 = MEMORY[0x21CECE0F0](v18, a4);
      }

      else
      {
        if (v18 >= *(v53 + 16))
        {
          goto LABEL_37;
        }

        v19 = *(a4 + 8 * v18 + 32);
      }

      v20 = v19;
      v12 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        swift_once();
        goto LABEL_4;
      }

      v21 = [v19 feedID];
      if (v21)
      {
        v22 = v21;
        v23 = v17;
        v24 = v13;
        v25 = sub_219BF5414();
        v27 = v26;

        a3 = a5;
        if (!*(a5 + 16))
        {

          goto LABEL_28;
        }

        a3 = sub_21870F700(v25, v27);
        v29 = v28;

        if ((v29 & 1) == 0 || (v30 = [*(*(a5 + 56) + 8 * a3) channelID]) == 0)
        {

LABEL_28:
          v13 = v24;
          v17 = v23;
          a4 = v49;
          goto LABEL_11;
        }

        v31 = v30;
        v32 = sub_219BF5414();
        a3 = v33;

        v34 = v32 == v48;
        v13 = v24;
        v34 = v34 && a3 == v24;
        if (v34)
        {

          v17 = v23;
LABEL_30:
          a3 = &v55;
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          a4 = v49;
          goto LABEL_11;
        }

        v35 = sub_219BF78F4();

        v17 = v23;
        if (v35)
        {
          goto LABEL_30;
        }

        a4 = v49;
      }

      else
      {
      }

LABEL_11:
      ++v18;
      if (v12 == v17)
      {
        v38 = v55;
        goto LABEL_41;
      }
    }
  }

LABEL_40:
  v38 = MEMORY[0x277D84F90];
LABEL_41:
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C09EC0;
  v40 = v38 < 0 || (v38 & 0x4000000000000000) != 0;
  if (v40)
  {
    v46 = v39;
    v41 = sub_219BF7214();
    v39 = v46;
  }

  else
  {
    v41 = *(v38 + 16);
  }

  v42 = MEMORY[0x277D83B88];
  v43 = MEMORY[0x277D83C10];
  *(v39 + 56) = MEMORY[0x277D83B88];
  *(v39 + 64) = v43;
  *(v39 + 32) = v41;
  *(v39 + 96) = MEMORY[0x277D837D0];
  *(v39 + 104) = v51;
  *(v39 + 72) = v48;
  *(v39 + 80) = v13;

  sub_219BF6214();
  sub_219BE5314();

  if (!v40)
  {
    if (*(v38 + 16))
    {
      goto LABEL_52;
    }

LABEL_48:

    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_219C09BA0;
    *(v44 + 56) = MEMORY[0x277D837D0];
    *(v44 + 64) = v51;
    *(v44 + 32) = v48;
    *(v44 + 40) = v13;

    sub_219BF6214();
    sub_219BE5314();

    goto LABEL_49;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_48;
  }

LABEL_52:
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_219C09EC0;
  *(v45 + 56) = v42;
  *(v45 + 64) = v43;
  *(v45 + 32) = v41;
  *(v45 + 96) = MEMORY[0x277D837D0];
  *(v45 + 104) = v51;
  *(v45 + 72) = v48;
  *(v45 + 80) = v13;

  sub_219BF6214();
  sub_219BE5314();

  *a6 = v47;
  a6[1] = v38;
  return result;
}

uint64_t sub_21936ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v15;
  *(v8 + 144) = v14;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a3;
  *(v8 + 104) = a4;
  *(v8 + 80) = a1;
  *(v8 + 88) = a2;
  v9 = sub_219BEDC04();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  v10 = sub_219BEE6F4();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  *(v8 + 224) = swift_task_alloc();
  sub_219371204(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v11 = sub_219BDBD34();
  *(v8 + 256) = v11;
  *(v8 + 264) = *(v11 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21936EF0C, 0, 0);
}

id sub_21936EF0C()
{
  v1 = v0[11];
  v2 = CACurrentMediaTime();
  v3 = MEMORY[0x277D84F98];
  v0[4] = MEMORY[0x277D84FA0];
  v0[5] = v3;
  v4 = [*(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context + 8) startDate];
  v5 = v0[36];
  if (v4)
  {
    v6 = v0[35];
    v7 = v0[32];
    v8 = v0[33];
    v9 = v0[31];
    v10 = v4;
    sub_219BDBCA4();

    v11 = *(v8 + 32);
    v11(v9, v6, v7);
    v34 = *(v8 + 56);
    v34(v9, 0, 1, v7);
    v11(v5, v9, v7);
  }

  else
  {
    v12 = v0[32];
    v13 = v0[33];
    v14 = v0[31];
    v15 = *(v13 + 56);
    v15(v14, 1, 1, v12);
    sub_219BDBD24();
    v34 = v15;
    if ((*(v13 + 48))(v14, 1, v12) != 1)
    {
      sub_2189DD39C(v0[31]);
    }
  }

  v16 = v0[36];
  v18 = v0[33];
  v17 = v0[34];
  v19 = v0[32];
  v20 = v0[29];
  v21 = v0[30];
  v22 = [*(v0[11] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) forYouGroupsConfiguration];
  [v22 weekendGreatStoriesYouMissedTimeRange];

  sub_219BDBC34();
  sub_2186C6148(0, &qword_280E8E860);
  v23 = *(v18 + 16);
  v23(v21, v16, v19);
  v34(v21, 0, 1, v19);
  v23(v20, v17, v19);
  v34(v20, 0, 1, v19);
  result = sub_2193707CC(v21, v20);
  v0[37] = result;
  if (result)
  {
    v25 = result;
    v26 = v0[28];
    v27 = v0[11] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
    v28 = type metadata accessor for TodayConfig();
    sub_219371268(*(v27 + *(v28 + 20)) + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_missedStoriesKnobs, v26);
    v29 = swift_task_alloc();
    v0[38] = v29;
    *v29 = v0;
    v29[1] = sub_21936F250;
    v30 = v0[14];
    v31 = v0[15];
    v32 = v0[13];
    v33 = v0[11];

    return sub_2193712CC(v32, v33, v30, v31, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21936F250(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 312) = v2;

  if (v2)
  {
    v7 = sub_21936F518;
  }

  else
  {
    *(v6 + 320) = a2;
    *(v6 + 328) = a1;
    v7 = sub_21936F384;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21936F384()
{
  v1 = *(v0 + 37);
  v2 = *(v0 + 28);
  v4 = *(v0 + 12);
  v3 = *(v0 + 13);
  v5 = *(v0 + 11);
  sub_218DDC028(*(v0 + 41));

  *(v0 + 42) = sub_2186C6148(0, &qword_280E8E760);
  sub_219BE2CA4();

  v6 = CACurrentMediaTime();
  v0[43] = v6;
  v7 = swift_task_alloc();
  *(v0 + 44) = v7;
  *(v7 + 2) = v5;
  *(v7 + 3) = v3;
  *(v7 + 4) = v1;
  *(v7 + 5) = v2;
  *(v7 + 6) = v4;
  v7[7] = v6;
  v8 = swift_task_alloc();
  *(v0 + 45) = v8;
  sub_2193726C0();
  *v8 = v0;
  v8[1] = sub_21936F7C4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD0000000000000B5, 0x8000000219D19710, sub_2193726AC, v7, v9);
}

uint64_t sub_21936F518()
{
  v1 = *(v0 + 39);
  sub_2186C6148(0, &qword_280E8D790);
  v2 = sub_219BF6F54();
  sub_2186F20D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  *(v0 + 6) = v1;
  v4 = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  v5 = sub_219BF5484();
  v7 = v6;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_219BF6214();
  sub_219BE5314();

  v8 = MEMORY[0x277D84F90];
  sub_2194AFD70(MEMORY[0x277D84F90]);

  v9 = *(v0 + 37);
  v10 = *(v0 + 28);
  v12 = *(v0 + 12);
  v11 = *(v0 + 13);
  v13 = *(v0 + 11);
  sub_218DDC028(v8);

  *(v0 + 42) = sub_2186C6148(0, &qword_280E8E760);
  sub_219BE2CA4();

  v14 = CACurrentMediaTime();
  v0[43] = v14;
  v15 = swift_task_alloc();
  *(v0 + 44) = v15;
  *(v15 + 2) = v13;
  *(v15 + 3) = v11;
  *(v15 + 4) = v9;
  *(v15 + 5) = v10;
  *(v15 + 6) = v12;
  v15[7] = v14;
  v16 = swift_task_alloc();
  *(v0 + 45) = v16;
  sub_2193726C0();
  *v16 = v0;
  v16[1] = sub_21936F7C4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD0000000000000B5, 0x8000000219D19710, sub_2193726AC, v15, v17);
}

uint64_t sub_21936F7C4()
{
  *(*v1 + 368) = v0;

  if (v0)
  {

    v2 = sub_2193706A4;
  }

  else
  {

    v2 = sub_21936F8FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21936F8FC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  sub_218DDC028(*(v0 + 16));

  sub_219BE2CA4();

  v3 = *(v2 + *(v1 + 60));
  v4 = MEMORY[0x277D83B88];
  v5 = MEMORY[0x277D83C10];
  if (v3 == 1)
  {
    v6 = [objc_msgSend(*(v0 + 128) globalInventory)];
    swift_unknownObjectRelease();
    sub_2186C6148(0, &qword_280E8E800);
    v7 = sub_219BF5924();

    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_219C09BA0;
    if (v7 >> 62)
    {
      v9 = sub_219BF7214();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 56) = v4;
    *(v8 + 64) = v5;
    *(v8 + 32) = v9;
    sub_219BF6214();
    sub_219BE5314();

    sub_218DDC028(v7);
  }

  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  if (*(v10 + *(v11 + 56)) == 1)
  {
    v12 = [*(v0 + 136) allFeedItems];
    sub_2186C6148(0, &qword_280E8E800);
    v13 = sub_219BF5924();

    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    if (v13 >> 62)
    {
      v15 = sub_219BF7214();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 56) = v4;
    *(v14 + 64) = v5;
    *(v14 + 32) = v15;
    sub_219BF6214();
    sub_219BE5314();

    sub_218DDC028(v13);

    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
  }

  if (*(v10 + *(v11 + 64)) == 1)
  {
    v16 = [objc_msgSend(*(v0 + 128) tagInventory)];
    swift_unknownObjectRelease();
    sub_2186C6148(0, &qword_280E8E800);
    v17 = sub_219BF5924();

    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C09BA0;
    if (v17 >> 62)
    {
      v19 = sub_219BF7214();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 56) = v4;
    *(v18 + 64) = v5;
    *(v18 + 32) = v19;
    sub_219BF6214();
    sub_219BE5314();

    sub_218DDC028(v17);
  }

  v20 = *(v0 + 32);
  if ((v20 & 0xC000000000000001) != 0)
  {
    if (sub_219BF7214())
    {
LABEL_21:
      __swift_project_boxed_opaque_existential_1(*(v0 + 144), *(*(v0 + 144) + 24));
      v21 = sub_218B673A4(v20);
      v89 = v20 & 0xC000000000000001;
      v90 = v20;
      if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
      {
        sub_2186D6710(0, &qword_280E8DF60);
        sub_219BF7534();
      }

      else
      {

        sub_219BF7924();
        sub_2186D6710(0, &qword_280E8DF60);
      }

      v22 = *(v0 + 368);
      v91 = v0;
      v23 = *(v0 + 208);
      v24 = *(v0 + 200);
      v25 = v91[24];

      v26 = *MEMORY[0x277D329D0];
      v27 = sub_219BEFBD4();
      (*(*(v27 - 8) + 104))(v23, v26, v27);
      (*(v24 + 104))(v23, *MEMORY[0x277D320E8], v25);
      v28 = v91;
      v29 = sub_219BF0004();
      (*(v28[25] + 8))(v28[26], v28[24]);
      v30 = v22;

      v31 = &unk_280E8D000;
      v32 = MEMORY[0x277D84F90];
      if (!v22)
      {
        v32 = MEMORY[0x277D83C10];
        v39 = v90;
        if (qword_280E8D910 == -1)
        {
LABEL_44:
          sub_2186F20D4();
          v60 = swift_allocObject();
          *(v60 + 16) = xmmword_219C09EC0;
          if (v89)
          {

            v61 = sub_219BF7214();
          }

          else
          {
            v61 = *(v39 + 16);
          }

          v62 = MEMORY[0x277D83B88];
          *(v60 + 56) = MEMORY[0x277D83B88];
          *(v60 + 64) = v32;
          *(v60 + 32) = v61;
          v63 = *(v29 + 16);
          *(v60 + 96) = v62;
          *(v60 + 104) = v32;
          *(v60 + 72) = v63;
          sub_219BF6214();
          sub_219BE5314();

          goto LABEL_54;
        }

LABEL_67:
        swift_once();
        goto LABEL_44;
      }

      if (qword_280E8D910 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_2186F20D4();
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_219C09BA0;
      v91[7] = v22;
      v34 = v22;
      sub_2186CFDE4(0, &qword_280E8B580);
      v35 = sub_219BF5484();
      v29 = v36;
      *(v33 + 56) = MEMORY[0x277D837D0];
      *(v33 + 64) = sub_2186FC3BC();
      *(v33 + 32) = v35;
      *(v33 + 40) = v29;
      sub_219BE5314();

      v38 = sub_218B673A4(v37);
      if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
      {
        v64 = v38;
        v39 = sub_219BF7214();
        v38 = v64;
        if (v39)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v39 = *(v38 + 16);
        if (v39)
        {
LABEL_30:
          v40 = v38;
          sub_218C34908(0, v39 & ~(v39 >> 63), 0);
          if ((v39 & 0x8000000000000000) == 0)
          {
            v41 = 0;
            v42 = v91[22];
            v29 = v32;
            v43 = v40;
            do
            {
              if ((v40 & 0xC000000000000001) != 0)
              {
                v44 = MEMORY[0x21CECE0F0](v41);
              }

              else
              {
                v44 = *(v43 + 8 * v41 + 32);
              }

              v45 = v44;
              v46 = objc_allocWithZone(MEMORY[0x277D30FD0]);
              v47 = v45;
              [v46 init];
              sub_219BEDBD4();

              v49 = *(v32 + 16);
              v48 = *(v32 + 24);
              if (v49 >= v48 >> 1)
              {
                sub_218C34908(v48 > 1, v49 + 1, 1);
              }

              v50 = v91[23];
              v51 = v91[21];
              ++v41;
              *(v32 + 16) = v49 + 1;
              (*(v42 + 32))(v32 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v49, v50, v51);
              v43 = v40;
            }

            while (v39 != v41);

            v28 = v91;
            v31 = &unk_280E8D000;
            goto LABEL_54;
          }

          __break(1u);
          goto LABEL_67;
        }
      }

      v29 = MEMORY[0x277D84F90];
LABEL_54:

      v66 = v28[19];
      v65 = v28[20];
      v67 = v28[13];
      v68 = v28[11];
      v28[8] = v29;
      sub_219371204(0, &unk_280E8EF90, MEMORY[0x277D31DF8], MEMORY[0x277D83940]);
      sub_218E5B3A8();
      v69 = sub_219BF5784();

      v70 = sub_21937278C(v69, v66, v67, v65, v68);

      if (v31[290] != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_219C0B8C0;

      if (v89)
      {
        v72 = sub_219BF7214();
      }

      else
      {
        v72 = *(v90 + 16);
      }

      v73 = MEMORY[0x277D83C10];

      *(v71 + 56) = MEMORY[0x277D83B88];
      *(v71 + 64) = v73;
      *(v71 + 32) = v72;
      if (v70 >> 62)
      {
        v74 = sub_219BF7214();
      }

      else
      {
        v74 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v75 = v28[36];
      v76 = v28[37];
      v77 = v28[34];
      v78 = v28[32];
      v79 = v28[33];
      v80 = v28;
      v88 = v28[28];
      v81 = v28[10];
      *(v71 + 96) = MEMORY[0x277D83B88];
      *(v71 + 104) = MEMORY[0x277D83C10];
      *(v71 + 72) = v74;
      sub_219BF5CD4();
      v82 = MEMORY[0x277D83A80];
      *(v71 + 136) = MEMORY[0x277D839F8];
      *(v71 + 144) = v82;
      *(v71 + 112) = v83;
      sub_219BF6214();
      sub_219BE5314();

      v80[9] = v29;
      v84 = sub_219BF5774();

      v85 = v80[5];

      v86 = *(v79 + 8);
      v86(v77, v78);
      v86(v75, v78);
      *v81 = v70;
      v81[1] = v84;
      v81[2] = v85;
      v81[3] = MEMORY[0x277D84F90];
      sub_219372730(v88);

      v59 = v80[1];
      goto LABEL_62;
    }
  }

  else if (*(v20 + 16))
  {
    goto LABEL_21;
  }

  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 288);
  v53 = *(v0 + 296);
  v55 = *(v0 + 264);
  v54 = *(v0 + 272);
  v56 = *(v0 + 256);
  sub_219BF6214();
  sub_219BE5314();
  sub_2189FE9D0();
  swift_allocError();
  *v57 = 3;
  swift_willThrow();

  v58 = *(v55 + 8);
  v58(v54, v56);
  v58(v52, v56);
  sub_219372730(*(v0 + 224));

  v59 = *(v0 + 8);
LABEL_62:

  return v59();
}

uint64_t sub_2193706A4()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);
  sub_219372730(*(v0 + 224));

  v6 = *(v0 + 8);

  return v6();
}

id sub_2193707CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = 0;
  if (v6(a1, 1, v4) != 1)
  {
    v7 = sub_219BDBC04();
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_219BDBC04();
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStartDate:v7 endDate:v8];

  return v9;
}

void sub_219370924(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v31 = a1;
  sub_219372E58();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = [objc_allocWithZone(MEMORY[0x277D31120]) init];
  [v15 setRelativePriority_];
  [v15 setPurpose_];
  [v15 setCachedOnly_];
  [v15 setContext_];
  v16 = [objc_opt_self() featureForAllArticles];
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v16;
  [v15 setFeature_];

  [v15 setDateRange_];
  if ((*(a5 + *(type metadata accessor for MissedStoriesTodayFeedGroupKnobs() + 36)) & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v15 setMaxFeedItems_];
  v18 = NewsCoreUserDefaults();
  v19 = [v18 BOOLForKey_];

  if (v19)
  {
    v20 = 0x6403251BELL;
  }

  else
  {
    v20 = 0x6403211BELL;
  }

  [v15 setFilterOptions_];
  v21 = [a3 tagController];
  v22 = [a3 localChannelsProvider];
  if (!v22)
  {
    goto LABEL_11;
  }

  v23 = v22;
  v24 = [a3 paidAccessChecker];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for TodayFeedQuerySidecar();
    v26 = swift_allocObject();
    v26[7] = 0;
    v26[8] = 0;
    v26[5] = a2;
    v26[6] = 0;
    v26[2] = v21;
    v26[3] = v23;
    v26[4] = v25;

    [v15 setSidecar_];

    (*(v13 + 16))(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v12);
    v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = a6;
    (*(v13 + 32))(v28 + v27, &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    aBlock[4] = sub_219372ED8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_219370EE0;
    aBlock[3] = &block_descriptor_118;
    v29 = _Block_copy(aBlock);

    [v15 setSearchCompletionHandler_];
    _Block_release(v29);
    [v15 start];

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_219370CF8(uint64_t a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09EC0;
    sub_219BF5CD4();
    v5 = MEMORY[0x277D83A80];
    *(v4 + 56) = MEMORY[0x277D839F8];
    *(v4 + 64) = v5;
    *(v4 + 32) = v6;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    *(v4 + 96) = MEMORY[0x277D837D0];
    *(v4 + 104) = sub_2186FC3BC();
    *(v4 + 72) = 0;
    *(v4 + 80) = 0xE000000000000000;
    sub_219BF6214();
    sub_219BE5314();
  }

  else
  {
    if (a1 && a2)
    {
      sub_219372E58();

      return sub_219BF5B64();
    }

    sub_218F00A5C();
    swift_allocError();
    *v8 = 1;
  }

  sub_219372E58();
  return sub_219BF5B54();
}

uint64_t sub_219370EE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_2186C6148(0, &qword_280E8E800);
    v6 = sub_219BF5924();
  }

  if (a3)
  {
    sub_2186C6148(0, &qword_280E8E760);
    a3 = sub_219BF5214();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t sub_219370FD0(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[15];
  v7 = v1[16];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_21936ECB8(a1, v11, v4, v5, (v1 + 5), (v1 + 10), v6, v7);
}

void sub_2193710E4()
{
  if (!qword_280EDD180)
  {
    sub_219372F64(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EDD180);
    }
  }
}

uint64_t sub_2193711B8(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

void sub_219371204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219371268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2193712CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[57] = a4;
  v5[58] = a5;
  v5[55] = a2;
  v5[56] = a3;
  v5[54] = a1;
  v6 = sub_219BED314();
  v5[59] = v6;
  v5[60] = *(v6 - 8);
  v5[61] = swift_task_alloc();
  sub_219371204(0, &unk_280E927B8, MEMORY[0x277D303F0], MEMORY[0x277D83D88]);
  v5[62] = swift_task_alloc();
  v5[63] = type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  v5[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219371420, 0, 0);
}

uint64_t sub_219371420()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);
  *(v0 + 520) = CACurrentMediaTime();
  type metadata accessor for FeedItemStream();
  inited = swift_initStackObject();
  *(v0 + 528) = inited;
  v6 = MEMORY[0x277D84F90];
  v7 = sub_2194AFD70(MEMORY[0x277D84F90]);
  *(v0 + 144) = v6;
  v8 = MEMORY[0x277D84FA0];
  *(v0 + 152) = v7;
  *(v0 + 160) = v8;
  *(v0 + 168) = v6;
  *(v0 + 176) = 0;
  sub_219372F64(0, &qword_280EE7AF0, &type metadata for FeedItemStream.State, MEMORY[0x277D6CB78]);
  swift_allocObject();
  inited[4] = sub_219BE2174();
  sub_219372F64(0, &qword_280EE7350, &type metadata for FeedItemStream.State, MEMORY[0x277D6CE00]);
  swift_allocObject();
  inited[5] = sub_219BE2B44();
  inited[2] = sub_21876836C;
  inited[3] = 0;
  v9 = v4 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  v10 = type metadata accessor for TodayConfig();
  sub_219371268(*(v9 + *(v10 + 20)) + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_missedStoriesKnobs, v1);
  v11 = *(v1 + *(v2 + 28));
  v12 = *(v1 + *(v2 + 32));
  v13 = [v3 subscriptionController];
  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v13;
  v22 = [v13 subscribedTagIDs];

  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = MEMORY[0x277D837D0];
  v24 = sub_219BF5924();

  v13 = FCClamp();
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  if (v25)
  {
    if (v12 != 0x8000000000000000 || v26 != -1)
    {
      v24 = v12 / v26;
      if (qword_280E8D910 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  swift_once();
LABEL_10:
  v27 = *(v0 + 464);
  v28 = *(v0 + 432);
  *(v0 + 536) = qword_280F617C0;
  sub_2186F20D4();
  *(v0 + 544) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C0B8C0;
  v31 = [v27 description];
  v32 = sub_219BF5414();
  v34 = v33;

  *(v30 + 56) = v23;
  v35 = sub_2186FC3BC();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  v36 = MEMORY[0x277D83B88];
  v37 = MEMORY[0x277D83C10];
  *(v30 + 96) = MEMORY[0x277D83B88];
  *(v30 + 104) = v37;
  *(v30 + 64) = v35;
  *(v30 + 72) = v11;
  *(v30 + 136) = v36;
  *(v30 + 144) = v37;
  *(v30 + 112) = v24;
  sub_219BF6214();
  sub_219BE5314();

  v38 = [v28 tagController];
  v13 = [v28 localChannelsProvider];
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = v13;
  v13 = [*(v0 + 432) paidAccessChecker];
  if (!v13)
  {
LABEL_24:
    __break(1u);
    return MEMORY[0x28218EB20](v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v40 = v13;
  v42 = *(v0 + 440);
  v41 = *(v0 + 448);
  type metadata accessor for TodayFeedQuerySidecar();
  v43 = swift_allocObject();
  *(v0 + 552) = v43;
  v43[7] = 0;
  v43[8] = 0;
  v43[5] = v42;
  v43[6] = 0;
  v43[2] = v38;
  v43[3] = v39;
  v43[4] = v40;
  v44 = v41[3];
  v45 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v44);
  v46 = *(v42 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  *(v0 + 560) = v46;

  swift_unknownObjectRetain();

  v47 = swift_task_alloc();
  *(v0 + 568) = v47;
  *v47 = v0;
  v47[1] = sub_2193718EC;
  v13 = *(v0 + 464);
  v14 = v46;
  v15 = v43;
  v16 = v11;
  v17 = v24;
  v18 = 1;
  v19 = v44;
  v20 = v45;

  return MEMORY[0x28218EB20](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_2193718EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v4 = sub_219372298;
  }

  else
  {

    swift_unknownObjectRelease();
    v4 = sub_219371A18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219371A18()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 456), *(*(v0 + 456) + 24));
  sub_219BED3C4();
  v1 = *(v0 + 128);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 104), v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  *(v0 + 88) = swift_getAssociatedTypeWitness();
  *(v0 + 96) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  sub_219BF5C84();

  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  *(v0 + 180) = *MEMORY[0x277D303E8];
  *(v0 + 220) = *MEMORY[0x277D303E0];
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 64, v5);
  v7 = swift_task_alloc();
  *(v0 + 592) = v7;
  *v7 = v0;
  v7[1] = sub_219371C2C;
  v8 = *(v0 + 496);

  return MEMORY[0x282200310](v8, 0, 0, v0 + 424, v5, v6);
}

uint64_t sub_219371C2C()
{

  if (v0)
  {
    v1 = sub_2193724A4;
  }

  else
  {
    v1 = sub_219371D3C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_219371D3C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  v3 = *(v0 + 480);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 64);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09EC0;
    sub_219BE2184();
    v5 = *(v0 + 224);

    if (v5 >> 62)
    {
      v6 = sub_219BF7214();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = *(v0 + 576);
    v7 = *(v0 + 512);

    v8 = MEMORY[0x277D83C10];
    *(v4 + 56) = MEMORY[0x277D83B88];
    *(v4 + 64) = v8;
    *(v4 + 32) = v6;
    sub_219BF5CD4();
    v9 = MEMORY[0x277D83A80];
    *(v4 + 96) = MEMORY[0x277D839F8];
    *(v4 + 104) = v9;
    *(v4 + 72) = v10;
    sub_219BF6214();
    sub_219BE5314();

    sub_219BE2194();
    sub_219BE2184();
    v11 = *(v0 + 272);
    v12 = *(v0 + 280);
    v13 = *(v0 + 288);
    v14 = *(v0 + 296);
    *(v0 + 304) = *(v0 + 264);
    *(v0 + 312) = v11;
    *(v0 + 320) = v12;
    *(v0 + 328) = v13;
    *(v0 + 336) = v14;
    sub_219BE2B34();

    sub_219BE2184();
    v15 = *(v0 + 344);

    sub_219BE2184();

    sub_219372730(v7);
    swift_setDeallocating();

    v16 = *(v0 + 392);

    v17 = *(v0 + 8);

    return v17(v15, v16);
  }

  v19 = *(v0 + 180);
  v20 = *(v0 + 488);
  (*(v3 + 32))(v20, v1, v2);
  v21 = (*(v3 + 88))(v20, v2);
  if (v21 != v19)
  {
    if (v21 != *(v0 + 220))
    {
      return sub_219BF7514();
    }

    v28 = *(v0 + 488);
    (*(*(v0 + 480) + 96))(v28, *(v0 + 472));
    v29 = *v28;
    if (*v28 >> 62)
    {
      if (sub_219BF7214())
      {
        goto LABEL_12;
      }
    }

    else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:
      *(swift_task_alloc() + 16) = v29;
      sub_219BE2194();

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v22 = *(v0 + 528);
  v23 = *(v0 + 488);
  (*(*(v0 + 480) + 96))(v23, *(v0 + 472));
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v22;
  v27[4] = v25;
  v27[5] = v26;
  sub_219BE2194();

LABEL_13:

LABEL_14:
  v30 = *(v0 + 88);
  v31 = *(v0 + 96);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 64, v30);
  v32 = swift_task_alloc();
  *(v0 + 592) = v32;
  *v32 = v0;
  v32[1] = sub_219371C2C;
  v33 = *(v0 + 496);

  return MEMORY[0x282200310](v33, 0, 0, v0 + 424, v30, v31);
}

uint64_t sub_219372298()
{

  swift_unknownObjectRelease();
  v1 = v0[73];
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  sub_219BE2184();
  v3 = v0[23];

  if (v3 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[64];

  v6 = MEMORY[0x277D83C10];
  *(v2 + 56) = MEMORY[0x277D83B88];
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  sub_219BF5CD4();
  v7 = MEMORY[0x277D83A80];
  *(v2 + 96) = MEMORY[0x277D839F8];
  *(v2 + 104) = v7;
  *(v2 + 72) = v8;
  sub_219BF6214();
  sub_219BE5314();

  v9 = v1;
  sub_219BE2B14();

  swift_willThrow();
  swift_setDeallocating();

  sub_219372730(v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2193724A4()
{
  v1 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  sub_219BE2184();
  v3 = *(v0 + 184);

  if (v3 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(v0 + 512);

  v6 = MEMORY[0x277D83C10];
  *(v2 + 56) = MEMORY[0x277D83B88];
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  sub_219BF5CD4();
  v7 = MEMORY[0x277D83A80];
  *(v2 + 96) = MEMORY[0x277D839F8];
  *(v2 + 104) = v7;
  *(v2 + 72) = v8;
  sub_219BF6214();
  sub_219BE5314();

  v9 = v1;
  sub_219BE2B14();

  swift_willThrow();
  swift_setDeallocating();

  sub_219372730(v5);

  v10 = *(v0 + 8);

  return v10();
}

void sub_2193726C0()
{
  if (!qword_280E8ED50)
  {
    sub_2189FE7E4();
    sub_218B00868();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8ED50);
    }
  }
}

uint64_t sub_219372730(uint64_t a1)
{
  v2 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21937278C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = MEMORY[0x277D84F90];
  result = [objc_opt_self() transformationWithPersonalizer_];
  if (!result)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  MEMORY[0x21CECC690]();
  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  v43 = a5;
  sub_219BF5A54();
  v9 = NewsCoreUserDefaults();
  v10 = [v9 BOOLForKey_];

  v11 = 0x64032113ELL;
  if (v10)
  {
    v11 = 0x64032513ELL;
  }

  v41 = v11;
  v42 = sub_219BF5D34();
  v12 = [a3 subscriptionList];
  v13 = [v12 subscribedTagIDs];

  if (v13)
  {
    sub_219BF5D44();

    v14 = sub_219BF5D34();
  }

  else
  {
    v14 = 0;
  }

  v15 = [a3 subscriptionList];
  v16 = [v15 mutedTagIDs];

  if (v16)
  {
    sub_219BF5D44();

    v17 = sub_219BF5D34();
  }

  else
  {
    v17 = 0;
  }

  v18 = [a3 readingHistory];
  v19 = [v18 readingHistoryItemsByArticleID];

  sub_2186D6710(0, &qword_280E8E1B0);
  sub_219BF5214();

  v20 = sub_219BF5204();

  v21 = [a3 audioPlaylist];
  v22 = [v21 articleIDs];

  if (!v22)
  {
    sub_219BF5924();
    v22 = sub_219BF5904();
  }

  v40 = a1;
  result = [a3 offlineArticleManager];
  if (!result)
  {
    goto LABEL_26;
  }

  v23 = v14;
  v24 = [result readableArticleIDs];
  swift_unknownObjectRelease();
  sub_219BF5D44();

  v25 = sub_219BF5D34();

  v26 = [*(v43 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) briefingsTagID];
  v27 = [a3 paidAccessChecker];
  result = [a3 bundleSubscriptionManager];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = objc_opt_self();
  v30 = [v28 cachedSubscription];
  swift_unknownObjectRelease();
  v31 = [v29 transformationWithFilterOptions:v41 otherArticleIDs:0 otherClusterIDs:v42 subscribedTagIDs:v23 mutedTagIDs:v17 readingHistoryItems:v20 playlistArticleIDs:v22 downloadedArticleIDs:v25 briefingsTagID:v26 paidAccessChecker:v27 bundleSubscription:v30 paywalledArticlesMaxCount:0];

  swift_unknownObjectRelease();
  MEMORY[0x21CECC690]();
  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v32 = objc_allocWithZone(MEMORY[0x277D30FF0]);
  sub_2186D6710(0, &unk_280E8E378);
  v33 = sub_219BF5904();

  v34 = [v32 initWithFeedTransformations_];

  v35 = v40;
  if (v40 >> 62)
  {
    sub_2186D6710(0, qword_280E8DE80);

    sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2186D6710(0, qword_280E8DE80);
  }

  sub_2186D6710(0, qword_280E8DE80);
  v36 = sub_219BF5904();

  v37 = [v34 transformFeedItems_];

  v38 = sub_219BF5924();
  v39 = sub_218B0C6F8(v38);

  if (v39)
  {
    return v39;
  }

  return v35;
}

void sub_219372E58()
{
  if (!qword_280E8EAD8)
  {
    sub_2193726C0();
    sub_2186CFDE4(255, &qword_280E8B580);
    v0 = sub_219BF5B74();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EAD8);
    }
  }
}

uint64_t sub_219372ED8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_219372E58();

  return sub_219370CF8(a1, a2, a3);
}

void sub_219372F64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_219372FF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_219BED8D4();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219373984();
  v32 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219373AF0(0, &qword_27CC192F8, MEMORY[0x277D844C8]);
  v33 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193739DC();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v5;
  v25 = a1;
  v23 = v11;
  v14 = v13;
  v15 = v29;
  v16 = v30;
  v36 = 0;
  sub_219373B54(&unk_27CC19308, sub_219373984);
  v18 = v31;
  v17 = v32;
  sub_219BF7734();
  sub_219BE3384();
  (*(v16 + 8))(v18, v17);
  v19 = v14;
  *v14 = v34;
  v35 = 1;
  sub_219373B54(&unk_280E92630, MEMORY[0x277D31C50]);
  v20 = v24;
  v21 = v28;
  sub_219BF7734();
  (*(v15 + 8))(v10, v33);
  (*(v26 + 32))(v19 + *(v23 + 20), v20, v21);
  sub_219373A30(v19, v27);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_219373A94(v19);
}

uint64_t sub_219373440(void *a1)
{
  sub_219373984();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219373AF0(0, &qword_27CC19318, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193739DC();
  sub_219BF7B44();
  sub_2186D85DC();
  swift_unknownObjectRetain();
  sub_219BE3404();
  v16 = 0;
  sub_219373B54(&unk_27CC19320, sub_219373984);
  v12 = v14[1];
  sub_219BF7834();
  (*(v4 + 8))(v6, v3);
  if (!v12)
  {
    type metadata accessor for SportsNavigationTagFeedGroup();
    v15 = 1;
    sub_219BED8D4();
    sub_219373B54(&qword_280E92640, MEMORY[0x277D31C50]);
    sub_219BF7834();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2193737F8(uint64_t a1)
{
  result = sub_219373B54(&qword_27CC192D0, type metadata accessor for SportsNavigationTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219373850(void *a1)
{
  a1[1] = sub_219373B54(&qword_27CC192D8, type metadata accessor for SportsNavigationTagFeedGroup);
  a1[2] = sub_219373B54(&unk_27CC192E0, type metadata accessor for SportsNavigationTagFeedGroup);
  result = sub_219373B54(&qword_27CC1C8A0, type metadata accessor for SportsNavigationTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_2193738FC(uint64_t a1)
{
  v2 = sub_219373B54(&qword_27CC192D8, type metadata accessor for SportsNavigationTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

void sub_219373984()
{
  if (!qword_27CC192F0)
  {
    sub_2186D85DC();
    v0 = sub_219BE3474();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC192F0);
    }
  }
}

unint64_t sub_2193739DC()
{
  result = qword_27CC19300;
  if (!qword_27CC19300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19300);
  }

  return result;
}

uint64_t sub_219373A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsNavigationTagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219373A94(uint64_t a1)
{
  v2 = type metadata accessor for SportsNavigationTagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219373AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193739DC();
    v7 = a3(a1, &type metadata for SportsNavigationTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219373B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219373BAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x724774616D726F66;
  }

  else
  {
    v3 = 0x54676E696B636162;
  }

  if (v2)
  {
    v4 = 0xEA00000000006761;
  }

  else
  {
    v4 = 0xEB0000000070756FLL;
  }

  if (*a2)
  {
    v5 = 0x724774616D726F66;
  }

  else
  {
    v5 = 0x54676E696B636162;
  }

  if (*a2)
  {
    v6 = 0xEB0000000070756FLL;
  }

  else
  {
    v6 = 0xEA00000000006761;
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

uint64_t sub_219373C60()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219373CF0()
{
  sub_219BF5524();
}

uint64_t sub_219373D6C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219373DF8@<X0>(char *a1@<X8>)
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

void sub_219373E58(uint64_t *a1@<X8>)
{
  v2 = 0x54676E696B636162;
  if (*v1)
  {
    v2 = 0x724774616D726F66;
  }

  v3 = 0xEA00000000006761;
  if (*v1)
  {
    v3 = 0xEB0000000070756FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_219373EA4()
{
  if (*v0)
  {
    return 0x724774616D726F66;
  }

  else
  {
    return 0x54676E696B636162;
  }
}

uint64_t sub_219373EEC@<X0>(char *a1@<X8>)
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

uint64_t sub_219373F50(uint64_t a1)
{
  v2 = sub_2193739DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219373F8C(uint64_t a1)
{
  v2 = sub_2193739DC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219373FCC()
{
  result = qword_27CC19330;
  if (!qword_27CC19330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19330);
  }

  return result;
}

unint64_t sub_219374024()
{
  result = qword_27CC19338;
  if (!qword_27CC19338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19338);
  }

  return result;
}

unint64_t sub_21937407C()
{
  result = qword_27CC19340;
  if (!qword_27CC19340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19340);
  }

  return result;
}

uint64_t sub_2193740F8()
{
  if (*(v0 + 56) == 1)
  {
    if (*(v0 + 48))
    {
      return 0x656546664F646E65;
    }

    else
    {
      return 0x656546664F706F74;
    }
  }

  else
  {
    v2 = sub_219BF7894();
    MEMORY[0x21CECC330](v2);

    return 0x3A3A726F73727563;
  }
}

uint64_t sub_2193741F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_219BEEA84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_219374288@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  sub_219374410(v3, a3);
  sub_21937446C(a1, a3 + a2[5], type metadata accessor for SearchMoreFeedContentConfig);
  v7 = a2[6];
  v8 = sub_219BEEA84();
  (*(*(v8 - 8) + 16))(a3 + v7, v3 + v7, v8);
  v9 = a2[8];
  v10 = *(v3 + v9);
  *(a3 + a2[7]) = *(v3 + a2[7]);
  *(a3 + v9) = v10;

  return swift_unknownObjectRetain();
}

uint64_t sub_21937446C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for MagazineGridSectionHeaderViewLayoutOptions()
{
  result = qword_27CC19360;
  if (!qword_27CC19360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219374548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_219BF7174();
    v5 = 0;
    v21 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v22 = *(a1 + 36);
      v8 = [swift_unknownObjectRetain() name];
      v23 = sub_219BF5414();
      v10 = v9;
      swift_unknownObjectRelease();

      v12 = *(v24 + 16);
      v11 = *(v24 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21870B65C((v11 > 1), v12 + 1, 1);
      }

      *(v24 + 16) = v12 + 1;
      v13 = v24 + 16 * v12;
      *(v13 + 32) = v23;
      *(v13 + 40) = v10;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v14 = *(a1 + 64 + 8 * v7);
      if ((v14 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v4 & 0x3F));
      if (v15)
      {
        v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v7 << 6;
        v17 = v7 + 1;
        v18 = (a1 + 72 + 8 * v7);
        while (v17 < (v6 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_2187BC250(v4, v22, 0);
            v6 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_2187BC250(v4, v22, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_219374790(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);

    v17 = [v16 asChannel];
    if (v17)
    {
      v30 = v17;
      v18 = *(v2 + 16);
      if (*(v2 + 24) <= v18)
      {
        sub_219485410(v18 + 1, 1);
        v2 = v31;
      }

      sub_219BF7AA4();
      sub_219BF5524();
      result = sub_219BF7AE4();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v20) >> 6;
        v24 = v30;
        while (++v22 != v26 || (v25 & 1) == 0)
        {
          v27 = v22 == v26;
          if (v22 == v26)
          {
            v22 = 0;
          }

          v25 |= v27;
          v28 = *(v19 + 8 * v22);
          if (v28 != -1)
          {
            v23 = __clz(__rbit64(~v28)) + (v22 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v24 = v30;
LABEL_23:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v29 = (*(v2 + 48) + 16 * v23);
      *v29 = v15;
      v29[1] = v14;
      *(*(v2 + 56) + 8 * v23) = v24;
      ++*(v2 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_2193749D8()
{
  v1 = *(v0 + 16);
  v2 = sub_219374D88();
  v3 = sub_219374DE8();
  v28 = v2;
  sub_2191ED3E8(v3);
  v4 = sub_219BF5904();

  v5 = [v1 slowCachedTagsForIDs_];

  if (!v5)
  {
    __break(1u);
    return;
  }

  sub_2186D6710(0, &qword_280E8E680);
  v6 = MEMORY[0x277D837D0];
  v7 = sub_219BF5214();

  v8 = sub_219374790(v7);

  sub_2186D6710(0, &qword_280E8E390);

  v9 = sub_219BF5264();

  v10 = &unk_280E8D000;
  if (*(v9 + 16))
  {
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    sub_219374548(v9);
    v13 = v12;

    v14 = MEMORY[0x21CECC6D0](v13, v6);
    v16 = v15;

    *(v11 + 56) = v6;
    *(v11 + 64) = sub_2186FC3BC();
    *(v11 + 32) = v14;
    *(v11 + 40) = v16;
    sub_219BF6214();
    sub_219BE5314();

    v10 = &unk_280E8D000;
  }

  else
  {
  }

  v17 = MEMORY[0x277D837D0];
  v18 = sub_219BF5264();

  if (*(v18 + 16))
  {
    if (v10[290] != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09BA0;
    sub_219374548(v18);
    v21 = v20;

    v22 = MEMORY[0x21CECC6D0](v21, v17);
    v24 = v23;

    *(v19 + 56) = v17;
    *(v19 + 64) = sub_2186FC3BC();
    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    sub_219BF6214();
    sub_219BE5314();
  }

  v25 = *(v8 + 16);
  if (v25)
  {
    v26 = sub_2194B7E58(*(v8 + 16), 0);
    v27 = sub_2194B7E40(&v28, v26 + 32, v25, v8);
    sub_21892DE98();
    if (v27 == v25)
    {
      return;
    }

    __break(1u);
  }
}

uint64_t sub_219374D88()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = sub_219375858(v0);
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t sub_219374DE8()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_219375CD0(v0);
    *(v0 + 56) = v1;
  }

  return v1;
}

void sub_219374E70(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 sectionIDs];
  v4 = [v2 slowCachedTagsForIDs_];

  if (!v4)
  {
    goto LABEL_53;
  }

  sub_2186D6710(0, &qword_280E8E680);
  v5 = sub_219BF5214();

  v6 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v7 = (v5 + 64);
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v52 = v5;

  v12 = 0;
  for (i = v6; v10; i = v54)
  {
LABEL_11:
    while (1)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v52 + 56) + ((v12 << 9) | (8 * v15)));
      v17 = [swift_unknownObjectRetain() supergroupKnobs];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 isEligible];

        if (v19)
        {
          if ([objc_opt_self() isTagAllowed_])
          {
            break;
          }
        }
      }

      swift_unknownObjectRelease();
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    MEMORY[0x21CECC690]();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
  }

  while (1)
  {
LABEL_7:
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_49:
      if (!sub_219BF7214())
      {
        goto LABEL_35;
      }

LABEL_20:
      if (qword_280E8D910 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_219C09EC0;
      v21 = [a1 name];
      v22 = sub_219BF5414();
      v24 = v23;

      *(v20 + 56) = MEMORY[0x277D837D0];
      v25 = sub_2186FC3BC();
      *(v20 + 64) = v25;
      *(v20 + 32) = v22;
      *(v20 + 40) = v24;
      v49 = v25;
      v51 = v20;
      if (v11)
      {
        v26 = sub_219BF7214();
      }

      else
      {
        v26 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = MEMORY[0x277D84F90];
      if (v26)
      {
        v53 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v26 & ~(v26 >> 63), 0);
        if (v26 < 0)
        {
          goto LABEL_52;
        }

        v28 = 0;
        v27 = v53;
        do
        {
          if ((i & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CECE0F0](v28, i);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          v29 = [swift_unknownObjectRetain() v7[278]];
          v30 = sub_219BF5414();
          v32 = v31;
          swift_unknownObjectRelease_n();

          v34 = *(v53 + 16);
          v33 = *(v53 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_21870B65C((v33 > 1), v34 + 1, 1);
          }

          ++v28;
          *(v53 + 16) = v34 + 1;
          v35 = v53 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
        }

        while (v26 != v28);
      }

      v36 = MEMORY[0x277D837D0];
      v37 = MEMORY[0x21CECC6D0](v27, MEMORY[0x277D837D0]);
      v39 = v38;

      MEMORY[0x21CECC330](v37, v39);

      v51[12] = v36;
      v51[13] = v49;
      v51[9] = 0;
      v51[10] = 0xE000000000000000;
      sub_219BF6214();
      sub_219BE5314();

      goto LABEL_35;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = v7[v14];
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  v11 = i >> 62;
  v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  if (i >> 62)
  {
    goto LABEL_49;
  }

  if (*((i & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_35:
  if (!v11)
  {
    v40 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_37;
    }

LABEL_45:

    return;
  }

  v40 = sub_219BF7214();
  if (!v40)
  {
    goto LABEL_45;
  }

LABEL_37:
  v55 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v40 & ~(v40 >> 63), 0);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    do
    {
      if ((i & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v41, i);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v42 = [swift_unknownObjectRetain() v7[278]];
      v43 = sub_219BF5414();
      v45 = v44;
      swift_unknownObjectRelease_n();

      v47 = *(v55 + 16);
      v46 = *(v55 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_21870B65C((v46 > 1), v47 + 1, 1);
      }

      ++v41;
      *(v55 + 16) = v47 + 1;
      v48 = v55 + 16 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
    }

    while (v40 != v41);
    goto LABEL_45;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_2193754D8()
{
  v1 = *(v0 + 16);
  sub_219375748();
  v2 = sub_219BF5904();

  v3 = [v1 slowCachedTagsForIDs_];

  if (v3)
  {
    sub_2186D6710(0, &qword_280E8E680);
    v4 = sub_219BF5214();
  }

  else
  {
    v4 = sub_2194AE5A0(MEMORY[0x277D84F90]);
  }

  sub_2186D6710(0, &qword_280E8E680);

  v5 = MEMORY[0x277D837D0];
  v6 = sub_219BF5264();

  if (*(v6 + 16))
  {
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_219C09BA0;
    sub_219374548(v6);
    v9 = v8;

    v10 = MEMORY[0x21CECC6D0](v9, v5);
    v12 = v11;

    *(v7 + 56) = v5;
    *(v7 + 64) = sub_2186FC3BC();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    sub_219BF6214();
    sub_219BE5314();
  }

  v13 = *(v4 + 16);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = sub_2194B7E58(*(v4 + 16), 0);
  v15 = sub_2194B7E40(&v17, v14 + 32, v13, v4);
  sub_21892DE98();
  if (v15 != v13)
  {
    __break(1u);
LABEL_11:

    return MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t sub_219375748()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_2193767FC(v0);
    *(v0 + 64) = v1;
  }

  return v1;
}

id sub_2193757D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), unint64_t *a4)
{

  a3(v6);

  sub_2186D6710(0, a4);
  v7 = sub_219BF5904();

  return v7;
}

uint64_t sub_219375858(uint64_t a1)
{
  v47 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v47);
  v46 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayFeedGroupConfig();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84FA0];
  v51 = MEMORY[0x277D84FA0];
  v48 = a1;
  v13 = *(a1 + 40) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  v14 = *(v13 + *(type metadata accessor for TodayFeedConfig() + 20));
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_16:
    v32 = *(v12 + 16);
    if (v32)
    {
      v33 = sub_21947D1C0(*(v12 + 16), 0);
      v34 = sub_2194ABD64(&v50, v33 + 4, v32, v12);
      sub_21892DE98();
      if (v34 == v32)
      {
        return v33;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  v16 = v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v41 = (v5 + 8);
  v42 = (v5 + 32);

  v18 = 0;
  v39 = v7;
  v40 = v4;
  v37 = v9;
  v38 = v8;
  v36 = v11;
  v44 = v15;
  v45 = v14;
  v43 = v16;
  while (v18 < *(v14 + 16))
  {
    sub_219377108(v16 + *(v9 + 72) * v18, v11);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*v42)(v7, v11, v4);
      v19 = [*(v48 + 24) lastKnownChannelIDs];
      v20 = sub_219BF5924();

      v49 = sub_218845F78(v20);

      v21 = v46;
      sub_219BEDD14();
      v22 = *(v21 + *(v47 + 28));

      sub_2193771A0(v21, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
      v23 = *(v22 + 16);
      if (v23)
      {
        v50 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v23, 0);
        v24 = v50;
        v25 = (v22 + 40);
        do
        {
          v26 = *(v25 - 1);
          v27 = *v25;
          v50 = v24;
          v28 = *(v24 + 16);
          v29 = *(v24 + 24);

          if (v28 >= v29 >> 1)
          {
            sub_21870B65C((v29 > 1), v28 + 1, 1);
            v24 = v50;
          }

          *(v24 + 16) = v28 + 1;
          v30 = v24 + 16 * v28;
          *(v30 + 32) = v26;
          *(v30 + 40) = v27;
          v25 += 2;
          --v23;
        }

        while (v23);

        v7 = v39;
        v4 = v40;
        v9 = v37;
        v11 = v36;
      }

      else
      {

        v24 = MEMORY[0x277D84F90];
      }

      v31 = sub_219376D88(v24, v49);

      sub_218DD88E0(v31);
      result = (*v41)(v7, v4);
      v15 = v44;
      v14 = v45;
      v16 = v43;
    }

    else
    {
      result = sub_2193771A0(v11, type metadata accessor for TodayFeedGroupConfig);
    }

    if (++v18 == v15)
    {

      v12 = v51;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219375CD0(uint64_t a1)
{
  v97 = type metadata accessor for NewspaperTodayFeedGroupConfigData();
  v2 = MEMORY[0x28223BE20](v97);
  v94 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v95 = &v84 - v4;
  sub_2186DE858();
  v99 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v98 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayFeedGroupConfig();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84FA0];
  v110 = MEMORY[0x277D84FA0];
  v85 = a1;
  v104 = *(a1 + 40);
  v13 = v104 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  v14 = *(v13 + *(type metadata accessor for TodayFeedConfig() + 20));
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_68:
    v81 = *(v12 + 16);
    if (v81)
    {
      v82 = sub_21947D1C0(*(v12 + 16), 0);
      v83 = sub_2194ABD64(&v108, v82 + 4, v81, v12);
      sub_21892DE98();
      if (v83 == v81)
      {
        return v82;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  v16 = v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v100 = OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController;
  v93 = (v6 + 32);
  v86 = (v6 + 8);

  v18 = 0;
  v92 = v8;
  v91 = v9;
  v90 = v11;
  v89 = v14;
  v88 = v15;
  v87 = v16;
  while (1)
  {
    if (v18 >= *(v14 + 16))
    {
      goto LABEL_74;
    }

    sub_219377108(v16 + *(v9 + 72) * v18, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    result = sub_2193771A0(v11, type metadata accessor for TodayFeedGroupConfig);
LABEL_4:
    if (++v18 == v15)
    {

      v12 = v110;
      goto LABEL_68;
    }
  }

  v96 = v18;
  (*v93)(v98, v11, v99);
  v19 = v95;
  sub_219BEDD14();
  v20 = *(v19 + *(v97 + 28));

  sub_2193771A0(v19, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v21 = *(v20 + 16);
  if (v21)
  {
    *&v108 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v21, 0);
    v22 = v108;
    v23 = (v20 + 40);
    do
    {
      v25 = *(v23 - 1);
      v24 = *v23;
      *&v108 = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);

      if (v27 >= v26 >> 1)
      {
        sub_21870B65C((v26 > 1), v27 + 1, 1);
        v22 = v108;
      }

      *(v22 + 16) = v27 + 1;
      v28 = v22 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      v23 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v102 = *(v22 + 16);
  if (!v102)
  {
LABEL_52:

    v58 = v94;
    sub_219BEDD14();
    v59 = *(v58 + *(v97 + 32));

    sub_2193771A0(v58, type metadata accessor for NewspaperTodayFeedGroupConfigData);
    v60 = *(v59 + 16);
    if (v60)
    {
      *&v108 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v60, 0);
      v61 = v108;
      v62 = (v59 + 40);
      do
      {
        v64 = *(v62 - 1);
        v63 = *v62;
        *&v108 = v61;
        v66 = v61[2];
        v65 = v61[3];

        if (v66 >= v65 >> 1)
        {
          sub_21870B65C((v65 > 1), v66 + 1, 1);
          v61 = v108;
        }

        v61[2] = v66 + 1;
        v67 = &v61[2 * v66];
        v67[4] = v64;
        v67[5] = v63;
        v62 += 2;
        --v60;
      }

      while (v60);

      v68 = v61[2];
      if (!v68)
      {
        goto LABEL_66;
      }
    }

    else
    {

      v61 = MEMORY[0x277D84F90];
      v68 = *(MEMORY[0x277D84F90] + 16);
      if (!v68)
      {
LABEL_66:

        result = (*v86)(v98, v99);
        v9 = v91;
        v11 = v90;
        v14 = v89;
        v15 = v88;
        v16 = v87;
        v18 = v96;
        goto LABEL_4;
      }
    }

    v69 = OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController;
    v70 = v61 + 5;
    do
    {
      v72 = *(v70 - 1);
      v71 = *v70;
      v73 = v104;
      v74 = *(v104 + v69);

      v75 = v74;
      v76 = sub_219BF53D4();
      v77 = [v75 hasSubscriptionToTagID_];

      v78 = *(v73 + v69);
      v79 = sub_219BF53D4();
      v80 = [v78 hasAutoFavoriteSubscriptionForTagID_];

      if ((v77 & 1) != 0 || v80)
      {
        sub_219497B60(&v108, v72, v71);
      }

      v70 += 2;
      --v68;
    }

    while (v68);
    goto LABEL_66;
  }

  v29 = 0;
  v30 = *(v85 + 32);
  v101 = v22 + 32;
  while (v29 < *(v22 + 16))
  {
    v31 = v100;
    v32 = (v101 + 16 * v29);
    v34 = *v32;
    v33 = v32[1];
    v35 = v104;
    v36 = *(v104 + v100);

    v37 = v36;
    v38 = sub_219BF53D4();
    v103 = [v37 hasSubscriptionToTagID_];

    v39 = *(v35 + v31);
    v40 = sub_219BF53D4();
    [v39 hasAutoFavoriteSubscriptionForTagID_];

    v41 = [objc_msgSend(v30 purchaseProvider)];
    v42 = sub_219BF5D44();

    if (*(v42 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v43 = sub_219BF7AE4();
      v44 = -1 << *(v42 + 32);
      v45 = v43 & ~v44;
      if ((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = (*(v42 + 48) + 16 * v45);
          v48 = *v47 == v34 && v47[1] == v33;
          if (v48 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        swift_unknownObjectRelease();

        if ((v103 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_51;
      }
    }

LABEL_27:
    swift_unknownObjectRelease();

    v49 = [objc_msgSend(v30 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v49, v49 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v106 = 0u;
      v107 = 0u;
    }

    v108 = v106;
    v109 = v107;
    if (!*(&v107 + 1))
    {
      sub_2193771A0(&v108, sub_21880702C);
LABEL_35:
      v50 = 0;
      v52 = 0;
      goto LABEL_36;
    }

    sub_21870AD58();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v50 = v105;
    v51 = [v105 integerValue];
    if (v51 == -1)
    {

LABEL_49:
      v55 = [objc_msgSend(v30 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v56 = sub_219BF53D4();
      v57 = [v55 containsTagID_];

      if ((v103 & 1) == 0 || (v57 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_51:
      sub_219497B60(&v108, v34, v33);
      goto LABEL_16;
    }

    v52 = v51;
LABEL_36:
    if (objc_getAssociatedObject(v49, ~v52))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v106 = 0u;
      v107 = 0u;
    }

    v108 = v106;
    v109 = v107;
    if (*(&v107 + 1))
    {
      sub_21870AD58();
      if (swift_dynamicCast())
      {
        v53 = v105;
        v54 = [v53 integerValue];

        if ((v54 ^ v52))
        {
          goto LABEL_49;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_2193771A0(&v108, sub_21880702C);
    }

    if (v52)
    {
      goto LABEL_49;
    }

LABEL_16:

    if (++v29 == v102)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_2193767FC(uint64_t a1)
{
  v2 = type metadata accessor for TodayFeedGroupConfig();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = *(a1 + 40);
  if (*(v9 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState))
  {
    return MEMORY[0x277D84F90];
  }

  v11 = v9 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  v12 = *(v11 + *(type metadata accessor for TodayFeedConfig() + 20));
  v13 = *(v12 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  v15 = 0;
  v18[1] = 0xE900000000000072;
  while (v15 < *(v12 + 16))
  {
    sub_219377108(v14 + *(v3 + 72) * v15++, v8);
    sub_219377108(v8, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_2193771A0(v6, type metadata accessor for TodayFeedGroupConfig);
    switch(EnumCaseMultiPayload)
    {
      case 17:

        sub_2193771A0(v8, type metadata accessor for TodayFeedGroupConfig);
        goto LABEL_12;
      default:
        v17 = sub_219BF78F4();

        result = sub_2193771A0(v8, type metadata accessor for TodayFeedGroupConfig);
        if (v17)
        {
LABEL_12:

          return sub_2197C79AC();
        }

        if (v13 == v15)
        {

          return MEMORY[0x277D84F90];
        }

        break;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219376CE0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_219376D30()
{
  sub_219376CE0();

  return swift_deallocClassInstance();
}

uint64_t sub_219376D88(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_219376F28(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_21937716C(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x21CECF960](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_219376F28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_219BF7AA4();

          sub_219BF5524();
          v13 = sub_219BF7AE4();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_219BF78F4() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_21987C7C8(v25, a2, v24, a4);
}

uint64_t sub_219377108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21937716C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_219376F28(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2193771A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219377220()
{
  sub_219BEEC14();
  if (v0 <= 0x3F)
  {
    sub_218E32330();
    if (v1 <= 0x3F)
    {
      sub_218A7535C();
      if (v2 <= 0x3F)
      {
        sub_218985EAC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2193772DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21937734C()
{
  sub_218A75088();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2193773A8()
{
  v1 = v0;
  sub_218985EAC();
  v3 = v2;
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF1584();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEEC14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21937B424(v1, v15, type metadata accessor for SavedFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218A7535C();
      v19 = v23;
      (*(v23 + 32))(v8, v15 + *(v18 + 48), v6);
      v17 = sub_219BF1524();
      (*(v19 + 8))(v8, v6);
      sub_21937AA24(v15, type metadata accessor for SavedFeedGapLocation);
    }

    else
    {
      v21 = v24;
      (*(v24 + 32))(v5, v15, v3);
      v17 = sub_219BF07B4();
      (*(v21 + 8))(v5, v3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v17 = *v15;
    sub_218E32330();
    sub_21937AA24(v15 + *(v20 + 48), type metadata accessor for SavedFeedGapLocation);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v17 = sub_219BEEBE4();
    (*(v10 + 8))(v12, v9);
  }

  return v17;
}

uint64_t sub_21937772C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2193772DC(&qword_280EDBC78, type metadata accessor for SavedFeedModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2193778D0()
{
  v1 = sub_219BF0614();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEEC14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937B424(v0, v11, type metadata accessor for SavedFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v8, v11, v5);
      v13 = sub_219BEEBF4();
      (*(v6 + 8))(v8, v5);
      return v13;
    }

    sub_218E32330();
    v18 = &v11[*(v19 + 48)];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218A7535C();
    v16 = *(v15 + 48);
    v17 = sub_219BF1584();
    (*(*(v17 - 8) + 8))(&v11[v16], v17);
    v18 = v11;
LABEL_7:
    sub_21937AA24(v18, type metadata accessor for SavedFeedGapLocation);
    return 0;
  }

  sub_219377BD0(v4);
  v20 = sub_219BF05A4();
  (*(v2 + 8))(v4, v1);
  sub_21937AA24(v11, type metadata accessor for SavedFeedModel);
  return v20;
}

uint64_t sub_219377BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_21937A9C0(0, &unk_280E92500, MEMORY[0x277D31DC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = v47 - v5;
  sub_21937A9C0(0, &qword_280E91C10, MEMORY[0x277D32010], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = v47 - v7;
  v8 = sub_219BF0EE4();
  MEMORY[0x28223BE20](v8 - 8);
  v52 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937A9C0(0, &unk_280EE34A0, MEMORY[0x277D2D148], v3);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = v47 - v11;
  v12 = sub_219BF0BD4();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0574();
  MEMORY[0x28223BE20](v15 - 8);
  v50 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v18 = v17;
  v55 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1584();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v25);
  v27 = v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937B424(v2, v27, type metadata accessor for SavedFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218A7535C();
      (*(v22 + 32))(v24, &v27[*(v32 + 48)], v21);
      sub_219BF1524();
      sub_219BF1554();
      sub_219BF1534();
      v33 = v56;
      sub_219BEDB14();
      (*(v22 + 8))(v24, v21);
      v34 = *MEMORY[0x277D32D10];
      v35 = sub_219BF0614();
      (*(*(v35 - 8) + 104))(v33, v34, v35);
      return sub_21937AA24(v27, type metadata accessor for SavedFeedGapLocation);
    }

    (*(v55 + 32))(v20, v27, v18);
    sub_2193773A8();
    v47[2] = v42;
    sub_219BF07D4();
    swift_unknownObjectRetain();

    sub_219BF07D4();
    v47[1] = v58;
    sub_219BF07E4();
    sub_219BF07D4();
    swift_unknownObjectRetain();

    sub_219BF07D4();

    sub_219BF0B94();
    swift_unknownObjectRelease();
    (*(v48 + 8))(v14, v49);
    v43 = sub_219BEBD44();
    (*(*(v43 - 8) + 56))(v51, 1, 1, v43);
    sub_219BF07D4();
    sub_21912D31C(v52);

    sub_219BF07D4();
    sub_218ED9B0C(v57 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, v53);

    v44 = sub_219BEDB44();
    (*(*(v44 - 8) + 56))(v54, 1, 1, v44);
    v30 = v56;
    sub_219BF0E34();
    (*(v55 + 8))(v20, v18);
    v31 = MEMORY[0x277D32E10];
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_218E32330();
      v38 = *(v37 + 48);
      v39 = v56;
      sub_219BF03C4();
      v40 = *MEMORY[0x277D32DB8];
      v41 = sub_219BF0614();
      (*(*(v41 - 8) + 104))(v39, v40, v41);
      return sub_21937AA24(&v27[v38], type metadata accessor for SavedFeedGapLocation);
    }

    v29 = sub_219BEEC14();
    v30 = v56;
    (*(*(v29 - 8) + 32))(v56, v27, v29);
    v31 = MEMORY[0x277D32DB0];
  }

  v45 = *v31;
  v46 = sub_219BF0614();
  return (*(*(v46 - 8) + 104))(v30, v45, v46);
}

uint64_t sub_21937842C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218985EAC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937B424(v2, v11, type metadata accessor for SavedFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_218E32330();
      v17 = type metadata accessor for SavedFeedGapLocation;
      v18 = &v11[*(v19 + 48)];
      goto LABEL_8;
    }

    v13 = type metadata accessor for SavedFeedModel;
LABEL_6:
    v17 = v13;
    v18 = v11;
LABEL_8:
    sub_21937AA24(v18, v17);
    v20 = sub_219BEAF84();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218A7535C();
    v15 = *(v14 + 48);
    v16 = sub_219BF1584();
    (*(*(v16 - 8) + 8))(&v11[v15], v16);
    v13 = type metadata accessor for SavedFeedGapLocation;
    goto LABEL_6;
  }

  (*(v6 + 32))(v8, v11, v5);
  sub_219BF07D4();
  sub_21912D94C(a1);

  return (*(v6 + 8))(v8, v5);
}

void *sub_2193786BC()
{
  sub_218ED9BA0(0);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE6364();
  v51 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v41 - v7;
  v8 = sub_219BF2B34();
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937B424(v0, v18, type metadata accessor for SavedFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_218E32330();
      v24 = type metadata accessor for SavedFeedGapLocation;
      v25 = &v18[*(v26 + 48)];
      goto LABEL_8;
    }

    v20 = type metadata accessor for SavedFeedModel;
LABEL_6:
    v24 = v20;
    v25 = v18;
LABEL_8:
    sub_21937AA24(v25, v24);
    return MEMORY[0x277D84F90];
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218A7535C();
    v22 = *(v21 + 48);
    v23 = sub_219BF1584();
    (*(*(v23 - 8) + 8))(&v18[v22], v23);
    v20 = type metadata accessor for SavedFeedGapLocation;
    goto LABEL_6;
  }

  v42 = v6;
  v45 = v13;
  (*(v13 + 32))(v15, v18, v12);
  v43 = v0;
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_21937A9C0(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  v28 = *(v51 + 72);
  v29 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v44 = 2 * v28;
  v41 = v29 + 3 * v28;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C0B8C0;
  v47 = v30;
  swift_unknownObjectRetain();
  sub_2193773A8();
  sub_219BF2B14();
  sub_219BE62F4();
  v46 = v3;
  v31 = *(v49 + 8);
  v31(v10, v8);
  swift_unknownObjectRetain();
  sub_2193773A8();
  sub_219BF2B14();
  sub_219BE6344();
  v31(v10, v8);
  v32 = v46;
  v33 = v51;
  sub_219BE6314();
  v34 = v50;
  sub_219BE62E4();
  if ((*(v33 + 48))(v34, 1, v32) == 1)
  {
    (*(v45 + 8))(v15, v12);
    swift_unknownObjectRelease();
    sub_21937AA24(v34, sub_218ED9BA0);
    return v47;
  }

  else
  {
    v35 = *(v33 + 32);
    v36 = v48;
    v35(v48, v34, v32);
    v37 = v35;
    v38 = v42;
    (*(v33 + 16))(v42, v36, v32);
    v39 = v33;
    v40 = sub_2191F976C(1uLL, 4, 1, v47);
    swift_unknownObjectRelease();
    (*(v39 + 8))(v36, v32);
    (*(v45 + 8))(v15, v12);
    *(v40 + 16) = 4;
    v37(v40 + v41, v38, v32);
    return v40;
  }
}

uint64_t sub_219378CEC()
{
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937B424(v1, v3, type metadata accessor for SavedFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_218E32330();
      sub_21937AA24(&v3[*(v5 + 48)], type metadata accessor for SavedFeedGapLocation);
      return 1;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_6:
    v10 = type metadata accessor for SavedFeedModel;
    goto LABEL_7;
  }

  sub_218A7535C();
  v8 = *(v7 + 48);
  v9 = sub_219BF1584();
  (*(*(v9 - 8) + 8))(&v3[v8], v9);
  v10 = type metadata accessor for SavedFeedGapLocation;
LABEL_7:
  sub_21937AA24(v3, v10);
  return 0;
}

uint64_t sub_219378E48()
{
  v1 = sub_219BE59F4();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = (&v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BE5A04();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  sub_218985EAC();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937B424(v0, v19, type metadata accessor for SavedFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_218E32330();
      v25 = type metadata accessor for SavedFeedGapLocation;
      v26 = &v19[*(v27 + 48)];
      goto LABEL_8;
    }

    v21 = type metadata accessor for SavedFeedModel;
LABEL_6:
    v25 = v21;
    v26 = v19;
LABEL_8:
    sub_21937AA24(v26, v25);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218A7535C();
    v23 = *(v22 + 48);
    v24 = sub_219BF1584();
    (*(*(v24 - 8) + 8))(&v19[v23], v24);
    v21 = type metadata accessor for SavedFeedGapLocation;
    goto LABEL_6;
  }

  v46 = v12;
  v47 = v0;
  v44 = *(v12 + 32);
  v45 = v12 + 32;
  v44(v16, v19, v11);
  sub_219BF07D4();
  v29 = *(v54 + 16);
  swift_unknownObjectRetain();

  v54 = MEMORY[0x277D84FA0];
  sub_219BF07D4();
  v30 = *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel);

  if (!v30)
  {
    v32 = v48;
    v31 = v49;
    (*(v48 + 104))(v7, *MEMORY[0x277D31AC0], v49);
    sub_219498044(v9, v7);
    (*(v32 + 8))(v9, v31);
  }

  sub_219BE5A14();
  swift_unknownObjectRetain();
  v33 = sub_2193773A8();
  *v3 = v29;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = v33;
  v3[4] = v34;
  v35 = v51;
  v36 = v29;
  v37 = v52;
  (*(v51 + 104))(v3, *MEMORY[0x277D31A58], v52);
  MEMORY[0x21CEBC780](v3, v54);

  (*(v35 + 8))(v3, v37);
  v38 = v46;
  v39 = v50;
  (*(v46 + 16))(v50, v16, v11);
  v40 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  v44((v41 + v40), v39, v11);
  swift_allocObject();
  v42 = sub_219BE59B4();
  (*(v38 + 8))(v16, v11);
  return v42;
}

uint64_t sub_219379398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a8;
  v54 = a4;
  v55 = a5;
  v56 = a2;
  v57 = a3;
  v58 = a6;
  v59 = a7;
  v15 = sub_219BEB334();
  v52 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937B424(v9, v20, type metadata accessor for SavedFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_218E32330();
      v26 = type metadata accessor for SavedFeedGapLocation;
      v27 = &v20[*(v28 + 48)];
      goto LABEL_8;
    }

    v22 = type metadata accessor for SavedFeedModel;
LABEL_6:
    v26 = v22;
    v27 = v20;
LABEL_8:
    sub_21937AA24(v27, v26);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218A7535C();
    v24 = *(v23 + 48);
    v25 = sub_219BF1584();
    (*(*(v25 - 8) + 8))(&v20[v24], v25);
    v22 = type metadata accessor for SavedFeedGapLocation;
    goto LABEL_6;
  }

  v48 = v15;
  sub_21937A9C0(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_219C09BA0;
  v30 = a1;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_219C0B8C0;
  v32 = sub_219BE6684();
  v50 = a9;
  v51 = v30;
  v33 = sub_219BE6654();
  if (v33)
  {
    v34 = MEMORY[0x277D6D630];
    v35 = v32;
  }

  else
  {
    v35 = 0;
    v34 = 0;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
  }

  *(v31 + 32) = v33;
  *(v31 + 56) = v35;
  *(v31 + 64) = v34;
  v36 = sub_219BE6634();
  v37 = v48;
  v47 = v32;
  if (v36)
  {
    v38 = MEMORY[0x277D6D630];
    v39 = v32;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    *(v31 + 80) = 0;
    *(v31 + 88) = 0;
  }

  *(v31 + 72) = v36;
  *(v31 + 96) = v39;
  *(v31 + 104) = v38;
  v56 = a2;
  v57 = a3;
  v58 = v54;
  v59 = v55;
  v60 = a6;
  v61 = a7;
  v62 = v53;
  v63 = v50;
  sub_219BE57D4();
  sub_219BE57C4();
  type metadata accessor for SavedFeedServiceConfig();
  sub_2193772DC(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
  v40 = sub_219BEB284();
  (*(v52 + 8))(v17, v37);
  sub_219BE57B4();
  v41 = v47;
  v42 = sub_219BE6624();

  sub_21885AB78(v40);
  if (v42)
  {
    v43 = v41;
    v44 = MEMORY[0x277D6D630];
  }

  else
  {
    v43 = 0;
    v44 = 0;
    *(v31 + 120) = 0;
    *(v31 + 128) = 0;
  }

  *(v31 + 112) = v42;
  *(v31 + 136) = v43;
  *(v31 + 144) = v44;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v45 = sub_219BE59D4();
  sub_21937AA24(v20, type metadata accessor for SavedFeedModel);
  return v45;
}

uint64_t sub_219379890@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = sub_219BF2B34();
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v50 = v3;
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0614();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  sub_219377BD0(v15);
  sub_219BF04E4();
  (*(v13 + 8))(v15, v12);
  if ((*(v9 + 88))(v11, v8) != *MEMORY[0x277D32070])
  {
    (*(v9 + 8))(v11, v8);
    v22 = v55;
    goto LABEL_6;
  }

  (*(v9 + 96))(v11, v8);
  v17 = sub_219BEECB4();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 88))(v11, v17);
  v20 = *MEMORY[0x277D32338];
  (*(v18 + 8))(v11, v17);
  v21 = v19 == v20;
  v22 = v55;
  if (!v21)
  {
LABEL_6:
    sub_21937B424(v16, v7, type metadata accessor for SavedFeedModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v32 = v50;
        (*(v53 + 32))();
        sub_21937A9C0(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
        sub_218C3F224(0);
        v34 = *(v33 - 8);
        v47 = *(v34 + 72);
        v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v36 = swift_allocObject();
        v48 = v36;
        *(v36 + 16) = xmmword_219C09EC0;
        v37 = v36 + v35;
        sub_219BF07D4();
        swift_unknownObjectRetain();

        v46[1] = v16;
        sub_2193773A8();
        v38 = v49;
        sub_219BF2B14();
        sub_219BE5C34();
        v51 = *(v51 + 8);
        (v51)(v38, v54);
        v39 = sub_219BE5C44();
        v40 = *(*(v39 - 8) + 56);
        v40(v37, 0, 1, v39);
        v41 = v52;
        sub_219BF07D4();
        swift_unknownObjectRetain();

        sub_2193773A8();
        sub_219BF2B14();
        v42 = v47;
        sub_219BE5C04();
        (v51)(v38, v54);
        v43 = v37 + v42;
        v22 = v55;
        v40(v43, 0, 1, v39);
        sub_219BE68A4();
        (*(v53 + 8))(v41, v32);
        v23 = 0;
        goto LABEL_15;
      }

      sub_218A7535C();
      v27 = *(v26 + 48);
      v28 = sub_219BF1584();
      (*(*(v28 - 8) + 8))(&v7[v27], v28);
      v25 = type metadata accessor for SavedFeedGapLocation;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {

        sub_218E32330();
        v29 = type metadata accessor for SavedFeedGapLocation;
        v30 = &v7[*(v31 + 48)];
        goto LABEL_13;
      }

      v25 = type metadata accessor for SavedFeedModel;
    }

    v29 = v25;
    v30 = v7;
LABEL_13:
    sub_21937AA24(v30, v29);
    v23 = 1;
    goto LABEL_15;
  }

  v23 = 1;
LABEL_15:
  v44 = sub_219BE6894();
  return (*(*(v44 - 8) + 56))(v22, v23, 1, v44);
}

uint64_t sub_219379FB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  sub_218985EAC();
  v41 = v3;
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0614();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219377BD0(v15);
  sub_219BF04E4();
  (*(v13 + 8))(v15, v12);
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D32070])
  {
    (*(v9 + 96))(v11, v8);
    v16 = sub_219BEECB4();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 88))(v11, v16);
    v19 = *MEMORY[0x277D32338];
    (*(v17 + 8))(v11, v16);
    if (v18 == v19)
    {
LABEL_10:
      v27 = 1;
      v21 = v44;
      goto LABEL_14;
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  sub_21937B424(v2, v7, type metadata accessor for SavedFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v29 = v41;
      (*(v43 + 32))();
      sub_21937A9C0(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v31 = *(*(v30 - 8) + 72);
      v32 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_219C09EC0;
      v34 = v33 + v32;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_2193773A8();
      sub_219BE5C24();
      swift_unknownObjectRelease();

      v35 = sub_219BE5C44();
      v36 = *(*(v35 - 8) + 56);
      v36(v34, 0, 1, v35);
      v37 = v42;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_219BE5C14();
      swift_unknownObjectRelease();
      v36(v34 + v31, 0, 1, v35);
      v21 = v44;
      sub_219BE68A4();
      (*(v43 + 8))(v37, v29);
      v27 = 0;
      goto LABEL_14;
    }

    sub_218A7535C();
    v25 = *(v24 + 48);
    v26 = sub_219BF1584();
    (*(*(v26 - 8) + 8))(&v7[v25], v26);
    sub_21937AA24(v7, type metadata accessor for SavedFeedGapLocation);
    goto LABEL_10;
  }

  v21 = v44;
  if (EnumCaseMultiPayload)
  {

    sub_218E32330();
    v22 = type metadata accessor for SavedFeedGapLocation;
    v23 = &v7[*(v28 + 48)];
  }

  else
  {
    v22 = type metadata accessor for SavedFeedModel;
    v23 = v7;
  }

  sub_21937AA24(v23, v22);
  v27 = 1;
LABEL_14:
  v38 = sub_219BE6894();
  return (*(*(v38 - 8) + 56))(v21, v27, 1, v38);
}

uint64_t sub_21937A618@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218AC1C94(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937B424(v2, v14, type metadata accessor for SavedFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_218E32330();
      v20 = type metadata accessor for SavedFeedGapLocation;
      v21 = &v14[*(v22 + 48)];
      goto LABEL_8;
    }

    v16 = type metadata accessor for SavedFeedModel;
LABEL_6:
    v20 = v16;
    v21 = v14;
LABEL_8:
    result = sub_21937AA24(v21, v20);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218A7535C();
    v18 = *(v17 + 48);
    v19 = sub_219BF1584();
    (*(*(v19 - 8) + 8))(&v14[v18], v19);
    v16 = type metadata accessor for SavedFeedGapLocation;
    goto LABEL_6;
  }

  (*(v9 + 32))(v11, v14, v8);
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_219BF1624();
  v24 = sub_219BF1634();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v6, 1, v24) == 1)
  {
    (*(v9 + 8))(v11, v8);
    result = sub_21937AA24(v6, sub_218AC1C94);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v24;
    *(a1 + 32) = sub_2193772DC(&qword_280E90860, MEMORY[0x277D33410]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(v25 + 32))(boxed_opaque_existential_1, v6, v24);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void sub_21937A9C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21937AA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21937AA84(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  sub_218985EAC();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v48 - v6;
  v7 = sub_219BF1584();
  v52 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = sub_219BEEC14();
  v51 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  sub_21937B3C4(0, qword_280EDBB98, type metadata accessor for SavedFeedModel);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v48 - v21;
  v23 = &v48 + *(v20 + 56) - v21;
  sub_21937B424(a1, &v48 - v21, type metadata accessor for SavedFeedModel);
  sub_21937B424(v55, v23, type metadata accessor for SavedFeedModel);
  type metadata accessor for SavedFeedModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        v44 = v51;
        v45 = *(v51 + 32);
        v45(v18, v22, v13);
        v45(v16, v23, v13);
        v29 = sub_219BEEC04();
        v46 = *(v44 + 8);
        v46(v16, v13);
        v46(v18, v13);
        return v29 & 1;
      }

      (*(v51 + 8))(v22, v13);
      goto LABEL_19;
    }

    v33 = *v22;
    v32 = *(v22 + 1);
    sub_218E32330();
    v35 = v34;
    v36 = *(v34 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v33 == *v23 && v32 == *(v23 + 1))
      {
        v29 = 1;
      }

      else
      {
        v29 = sub_219BF78F4();
      }

      sub_21937AA24(&v23[*(v35 + 48)], type metadata accessor for SavedFeedGapLocation);
      v31 = &v22[v36];
      goto LABEL_23;
    }

    sub_21937AA24(&v22[v36], type metadata accessor for SavedFeedGapLocation);

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218A7535C();
    v26 = *(v25 + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v27 = v52;
      v28 = *(v52 + 32);
      v28(v12, &v22[v26], v7);
      v28(v10, &v23[v26], v7);
      v29 = MEMORY[0x21CEC82E0](v12, v10);
      v30 = *(v27 + 8);
      v30(v10, v7);
      v30(v12, v7);
      sub_21937AA24(v23, type metadata accessor for SavedFeedGapLocation);
      v31 = v22;
LABEL_23:
      sub_21937AA24(v31, type metadata accessor for SavedFeedGapLocation);
      return v29 & 1;
    }

    (*(v52 + 8))(&v22[v26], v7);
    sub_21937AA24(v22, type metadata accessor for SavedFeedGapLocation);
LABEL_19:
    sub_21937AA24(v23, type metadata accessor for SavedFeedModel);
    v29 = 0;
    return v29 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v53 + 8))(v22, v54);
    goto LABEL_19;
  }

  v39 = v53;
  v38 = v54;
  v40 = *(v53 + 32);
  v41 = v49;
  v40(v49, v22, v54);
  v42 = v50;
  v40(v50, v23, v38);
  type metadata accessor for HeadlineModel(0);
  sub_2193772DC(&qword_280EDE358, type metadata accessor for HeadlineModel);
  sub_2193772DC(&qword_280EDE360, type metadata accessor for HeadlineModel);
  v29 = sub_219BF07C4();
  v43 = *(v39 + 8);
  v43(v42, v38);
  v43(v41, v38);
  return v29 & 1;
}

uint64_t sub_21937B108(uint64_t a1, uint64_t a2)
{
  sub_218A75088();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  sub_21937B3C4(0, &unk_27CC193E0, type metadata accessor for SavedFeedGapLocation);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = *(v13 + 56);
  sub_21937B424(a1, &v23 - v14, type metadata accessor for SavedFeedGapLocation);
  sub_21937B424(a2, &v15[v16], type metadata accessor for SavedFeedGapLocation);
  v17 = v6[6];
  LODWORD(a2) = v17(v15, 1, v5);
  v18 = v17(&v15[v16], 1, v5);
  if (a2 != 1)
  {
    if (v18 != 1)
    {
      v20 = v6[4];
      v20(v11, v15, v5);
      v20(v9, &v15[v16], v5);
      type metadata accessor for SavedFeedServiceConfig();
      sub_2193772DC(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
      v19 = sub_219BF0F64();
      v21 = v6[1];
      v21(v9, v5);
      v21(v11, v5);
      return v19 & 1;
    }

    (v6[1])(v15, v5);
    goto LABEL_6;
  }

  if (v18 != 1)
  {
LABEL_6:
    sub_21937AA24(&v15[v16], type metadata accessor for SavedFeedGapLocation);
    v19 = 0;
    return v19 & 1;
  }

  v19 = 1;
  return v19 & 1;
}

void sub_21937B3C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21937B424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21937B490(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (v9[6] = v2, v5 = sub_21947D1C0(v3, 0), v6 = sub_2194ABD64(v9, v5 + 4, v3, a2), , result = sub_21892DE98(), v6 != v3))
  {
    __break(1u);
  }

  else
  {
    v8 = sub_219BF69A4();

    return v8;
  }

  return result;
}

uint64_t sub_21937B578()
{
  sub_21937B7A8(0, &qword_280EE6718, MEMORY[0x277D6CF88]);
  MEMORY[0x28223BE20](v0 - 8);
  sub_21873F92C();
  swift_unknownObjectRetain();
  sub_219BE3434();
  return sub_219BE1C94();
}

uint64_t sub_21937B648()
{
  sub_21937B7A8(0, &unk_280E8EB90, MEMORY[0x277D83940]);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE1CA4();
  sub_21937B734();
  v1 = sub_219BE30D4();

  return v1;
}

unint64_t sub_21937B734()
{
  result = qword_280E8EB80;
  if (!qword_280E8EB80)
  {
    sub_21937B7A8(255, &unk_280E8EB90, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EB80);
  }

  return result;
}

void sub_21937B7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21873F92C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21937B808()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_218953E34();
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_21874570C(v2, sub_21880702C);
  }

  type metadata accessor for SavedFeedServiceConfig();
  sub_2186E8B04(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_21937B92C()
{
  v49 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v49);
  v47 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v48 = &v38 - v3;
  sub_218A74FF4();
  v5 = v4;
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937BED0();
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953D48();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v46 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F93A50();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953E34();
  v20 = v19;
  (*(*(v19 - 8) + 16))(v18, v0, v19);
  v21 = *(v16 + 44);
  v22 = sub_2186E8B04(&qword_280EE3670, sub_218953E34);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v18[v21] == v50[0])
  {
    v23 = 0;
  }

  else
  {
    v24 = v21;
    v25 = v20;
    v26 = (v13 + 16);
    v27 = (v13 + 8);
    v28 = (v42 + 16);
    v29 = (v42 + 8);
    v40 = v27;
    v41 = v18;
    v43 = v22;
    v44 = v25;
    v38 = v26;
    v39 = v24;
    do
    {
      v42 = sub_219BF5EC4();
      v30 = *v26;
      (*v26)(v46);
      (v42)(v50, 0);
      sub_219BF5E94();
      v31 = v46;
      (v30)(v10, v46, v12);
      v32 = *(v45 + 36);
      sub_2186E8B04(&qword_280EE5798, sub_218953D48);
      sub_219BF5DF4();
      (*v40)(v31, v12);
      while (1)
      {
        sub_219BF5E84();
        if (*&v10[v32] == v50[0])
        {
          break;
        }

        v33 = sub_219BF5EC4();
        (*v28)(v7);
        v33(v50, 0);
        sub_219BF5E94();
        v34 = v48;
        sub_219BE5FC4();
        (*v29)(v7, v5);
        v35 = v34;
        v36 = v47;
        sub_21937BF64(v35, v47);
        LODWORD(v33) = swift_getEnumCaseMultiPayload();
        sub_21874570C(v36, type metadata accessor for SavedFeedModel);
        if (v33 == 3)
        {
          sub_21874570C(v10, sub_21937BED0);
          v23 = 1;
          v18 = v41;
          goto LABEL_9;
        }
      }

      sub_21874570C(v10, sub_21937BED0);
      v18 = v41;
      sub_219BF5E84();
      v23 = 0;
      v26 = v38;
    }

    while (*&v18[v39] != v50[0]);
  }

LABEL_9:
  sub_21874570C(v18, sub_218F93A50);
  return v23;
}

void sub_21937BED0()
{
  if (!qword_280E8D4D8)
  {
    sub_218953D48();
    sub_2186E8B04(&qword_280EE5798, sub_218953D48);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D4D8);
    }
  }
}

uint64_t sub_21937BF64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21937C038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  sub_21937D1EC(0, qword_280EC7CD0, type metadata accessor for MagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v39 - v5;
  sub_21937D1EC(0, qword_280ED0FF8, type metadata accessor for MagazineKnobsConfig);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for MagazineKnobsConfig();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21937D1EC(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  sub_21937D1EC(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - v15;
  sub_21937D1EC(0, qword_280ED37B0, type metadata accessor for MagazineFeedConfig);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - v18;
  v20 = type metadata accessor for MagazineFeedConfig();
  v21 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v23 = (&v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = a1;
  sub_21937D2A8(a1, v19, qword_280ED37B0, type metadata accessor for MagazineFeedConfig);
  v24 = *(v21 + 48);
  if (v24(v19, 1, v20) == 1)
  {
    sub_219BDBD24();
    v25 = sub_219BDBD34();
    (*(*(v25 - 8) + 56))(v16, 0, 1, v25);
    v26 = sub_219BEE5B4();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    v27 = MEMORY[0x277D84F90];
    *v23 = MEMORY[0x277D84F90];
    sub_21870ECBC(v16, v23 + v20[5], &qword_280EE9C40, MEMORY[0x277CC9578]);
    v28 = (v23 + v20[6]);
    *v28 = v27;
    v28[1] = v27;
    sub_21870ECBC(v13, v23 + v20[7], &qword_280E91B80, MEMORY[0x277D32028]);
    if (v24(v19, 1, v20) != 1)
    {
      sub_21937D314(v19, qword_280ED37B0, type metadata accessor for MagazineFeedConfig);
    }
  }

  else
  {
    sub_21937D240(v19, v23, type metadata accessor for MagazineFeedConfig);
  }

  v29 = v46;
  sub_21937D240(v23, v46, type metadata accessor for MagazineFeedConfig);
  v30 = v43;
  sub_21937D2A8(v43, v8, qword_280ED0FF8, type metadata accessor for MagazineKnobsConfig);
  v31 = v42;
  v32 = *(v41 + 48);
  v33 = v32(v8, 1, v42);
  v34 = v44;
  if (v33 == 1)
  {
    v35 = type metadata accessor for MagazineFeedGroupKnobs();
    v36 = v40;
    (*(*(v35 - 8) + 56))(v40, 1, 1, v35);
    sub_218DC712C(0, 1, v36, v34);
    sub_21937D314(v30, qword_280ED0FF8, type metadata accessor for MagazineKnobsConfig);
    sub_21937D314(v45, qword_280ED37B0, type metadata accessor for MagazineFeedConfig);
    if (v32(v8, 1, v31) != 1)
    {
      sub_21937D314(v8, qword_280ED0FF8, type metadata accessor for MagazineKnobsConfig);
    }
  }

  else
  {
    sub_21937D314(v30, qword_280ED0FF8, type metadata accessor for MagazineKnobsConfig);
    sub_21937D314(v45, qword_280ED37B0, type metadata accessor for MagazineFeedConfig);
    sub_21937D240(v8, v34, type metadata accessor for MagazineKnobsConfig);
  }

  v37 = type metadata accessor for MagazineConfig();
  return sub_21937D240(v34, v29 + *(v37 + 20), type metadata accessor for MagazineKnobsConfig);
}

uint64_t sub_21937C6E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_21937D1EC(0, qword_280ED0FF8, type metadata accessor for MagazineKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_21937D1EC(0, qword_280ED37B0, type metadata accessor for MagazineFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_21937D3C4(0, &qword_280E8CF98, MEMORY[0x277D844C8]);
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21937D370();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for MagazineFeedConfig();
    v18 = 0;
    sub_21877E47C(&qword_280ED37F8, type metadata accessor for MagazineFeedConfig);
    sub_219BF7674();
    type metadata accessor for MagazineKnobsConfig();
    v17 = 1;
    sub_21877E47C(&qword_280ED1038, type metadata accessor for MagazineKnobsConfig);
    sub_219BF7674();
    sub_21937C038(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21937C9C4(void *a1)
{
  sub_21937D3C4(0, &qword_27CC193F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21937D370();
  sub_219BF7B44();
  v9[15] = 0;
  type metadata accessor for MagazineFeedConfig();
  sub_21877E47C(&qword_27CC193F8, type metadata accessor for MagazineFeedConfig);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for MagazineConfig();
    v9[14] = 1;
    type metadata accessor for MagazineKnobsConfig();
    sub_21877E47C(&qword_27CC19400, type metadata accessor for MagazineKnobsConfig);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21937CBD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "ignoreTagsForGrouping";
  }

  else
  {
    v4 = "magazinesFeedConfig";
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (*a2)
  {
    v6 = "magazinesFeedConfig";
  }

  else
  {
    v6 = "ignoreTagsForGrouping";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_21937CC7C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21937CCF8()
{
  sub_219BF5524();
}

uint64_t sub_21937CD60()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21937CDD8@<X0>(char *a1@<X8>)
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

void sub_21937CE38(unint64_t *a1@<X8>)
{
  v2 = "magazinesFeedConfig";
  v3 = 0xD000000000000013;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = "ignoreTagsForGrouping";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_21937CE74()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_21937CEAC@<X0>(char *a1@<X8>)
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

uint64_t sub_21937CF10(uint64_t a1)
{
  v2 = sub_21937D370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21937CF4C(uint64_t a1)
{
  v2 = sub_21937D370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21937D024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21937D1EC(0, qword_280ED0FF8, type metadata accessor for MagazineKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_21937D1EC(0, qword_280ED37B0, type metadata accessor for MagazineFeedConfig);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_21937D428(a1, &v16 - v11, type metadata accessor for MagazineFeedConfig);
  v13 = type metadata accessor for MagazineFeedConfig();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_21937D428(v3 + *(a2 + 20), v9, type metadata accessor for MagazineKnobsConfig);
  v14 = type metadata accessor for MagazineKnobsConfig();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  return sub_21937C038(v12, v9, a3);
}

void sub_21937D1EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21937D240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21937D2A8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21937D1EC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21937D314(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21937D1EC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21937D370()
{
  result = qword_280EDC560;
  if (!qword_280EDC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDC560);
  }

  return result;
}

void sub_21937D3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21937D370();
    v7 = a3(a1, &type metadata for MagazineConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21937D428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21937D4A4()
{
  result = qword_27CC19408;
  if (!qword_27CC19408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19408);
  }

  return result;
}

unint64_t sub_21937D4FC()
{
  result = qword_280EDC550;
  if (!qword_280EDC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDC550);
  }

  return result;
}

unint64_t sub_21937D554()
{
  result = qword_280EDC558;
  if (!qword_280EDC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDC558);
  }

  return result;
}

uint64_t sub_21937D5C8()
{
  v1 = *(*(v0 + 16) + 40);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 32) + **(v1 + 32));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_218B0699C;

  return v5(ObjectType, v1);
}

uint64_t sub_21937D70C()
{
  v1 = *(*(v0 + 16) + 40);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 40) + **(v1 + 40));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_218B0A340;

  return v5(ObjectType, v1);
}

uint64_t sub_21937D854(uint64_t a1)
{
  v2 = sub_219BE61B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  result = (*(v3 + 88))(v5, v2);
  if (result != *MEMORY[0x277D6D520])
  {
    if (result == *MEMORY[0x277D6D518])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        *(swift_allocObject() + 16) = result;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }
    }

    else if (result == *MEMORY[0x277D6D510])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_219A61440();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      result = sub_219BF7514();
      __break(1u);
    }
  }

  return result;
}

uint64_t CampaignRouteModel.init(routeTarget:postPurchaseBehavior:purchaseTraits:sourceChannelID:purchaseSessionID:paywallType:postPurchaseDestination:hidePostPurchaseOnboarding:routeFromSubscriptionURL:delegate:anfOverrides:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v49 = a5;
  v50 = a6;
  v47 = a4;
  v51 = a3;
  v57 = a15;
  v52 = a14;
  v53 = a7;
  v54 = a13;
  v55 = a8;
  v48 = a12;
  v18 = a10;
  sub_21876A024(0, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v56 = &v46 - v20;
  v21 = sub_219BDE924();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = a1[1];
  v27 = type metadata accessor for CampaignRouteModel();
  v28 = &a9[v27[14]];
  *(v28 + 1) = 0;
  swift_unknownObjectWeakInit();
  *a9 = v25;
  *(a9 + 1) = v26;
  v29 = *(v22 + 48);
  if (v29(a2, 1, v21) == 1)
  {
    v46 = a2;
    v30 = *MEMORY[0x277D301F8];
    v31 = sub_219BDE914();
    v32 = v30;
    v18 = a10;
    v33 = v46;
    (*(*(v31 - 8) + 104))(v24, v32, v31);
    (*(v22 + 104))(v24, *MEMORY[0x277D30200], v21);
    if (v29(v33, 1, v21) != 1)
    {
      sub_21937DF74(v33, &qword_280EE8AE0, MEMORY[0x277D30210]);
    }
  }

  else
  {
    (*(v22 + 32))(v24, a2, v21);
  }

  (*(v22 + 32))(&a9[v27[5]], v24, v21);
  v34 = &a9[v27[6]];
  v36 = v49;
  v35 = v50;
  *v34 = v47;
  *(v34 + 1) = v36;
  v37 = &a9[v27[7]];
  *v37 = v35;
  *(v37 + 1) = v53;
  *&a9[v27[8]] = v51;
  *&a9[v27[9]] = v55;
  a9[v27[11]] = v48 & 1;
  *(v28 + 1) = v52;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v38 = sub_219BE4394();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  if (v40(v18, 1, v38) == 1)
  {
    v41 = v18;
    v42 = *MEMORY[0x277D34D80];
    v43 = sub_219BE3D74();
    v44 = v56;
    (*(*(v43 - 8) + 104))(v56, v42, v43);
    (*(v39 + 104))(v44, *MEMORY[0x277D35068], v38);
    if (v40(v41, 1, v38) != 1)
    {
      sub_21937DF74(v41, &qword_280EE6350, MEMORY[0x277D35078]);
    }
  }

  else
  {
    v44 = v56;
    (*(v39 + 32))(v56, v18, v38);
  }

  (*(v39 + 56))(v44, 0, 1, v38);
  sub_21937DFE4(v44, &a9[v27[10]], &qword_280EE6350, MEMORY[0x277D35078]);
  a9[v27[13]] = a11 & 1;
  return sub_21937DFE4(v57, &a9[v27[12]], &unk_280EE8E70, MEMORY[0x277D2F9F0]);
}

uint64_t sub_21937DF74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21876A024(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21937DFE4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21876A024(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t CampaignRouteModel.identifier.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0xD000000000000012;
  }

  return v1;
}

unint64_t sub_21937E0B8()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0xD000000000000012;
  }

  return v1;
}

void sub_21937E158()
{
  if (!qword_280E92290)
  {
    type metadata accessor for TopicRecipesTagFeedGroupConfigData();
    sub_21937E224(&unk_280E9E310, type metadata accessor for TopicRecipesTagFeedGroupConfigData);
    sub_21937E224(&qword_280E9E320, type metadata accessor for TopicRecipesTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92290);
    }
  }
}

uint64_t sub_21937E224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TopicRecipesTagFeedGroupEmitter()
{
  result = qword_280EA76B0;
  if (!qword_280EA76B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21937E2CC()
{
  sub_21937E158();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TopicRecipesTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280EBE990);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, &qword_280EE9E00);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21937E3D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21937E478(a1, a2);
}

uint64_t sub_21937E478(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21937E49C, 0, 0);
}

uint64_t sub_21937E49C()
{
  v1 = type metadata accessor for TopicRecipesTagFeedGroupEmitterCursor();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21937E564;
  v3 = *(v0 + 32);

  return MEMORY[0x282190858](v0 + 16, v1, &unk_219C73CC0, v3, v1);
}

uint64_t sub_21937E564()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_21937E830;
  }

  else
  {
    v2 = sub_21937E678;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21937E678()
{
  v1 = v0[2];
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_21937E71C;
  v3 = v0[4];
  v4 = v0[3];

  return sub_21937EF8C(v4, v3, v1);
}

uint64_t sub_21937E71C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21937E8AC;
  }

  else
  {
    v2 = sub_21937E848;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21937E848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21937E8AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21937E910@<X0>(unint64_t *a1@<X8>)
{
  sub_21937E158();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0xB000000000000002;
  return result;
}

uint64_t sub_21937E990@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for TopicRecipesTagFeedGroupKnobs();
  a2[4] = sub_21937E224(&qword_280EADF90, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  a2[5] = sub_21937E224(&qword_27CC19430, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219382C10(v2 + v4, boxed_opaque_existential_1, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
}

uint64_t sub_21937EA58()
{
  type metadata accessor for TopicRecipesTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_219382BAC(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_218C6FAA0();
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_21937EC08()
{
  sub_21937E158();

  return sub_219BEDCA4();
}

uint64_t sub_21937EC34@<X0>(uint64_t *a1@<X8>)
{
  sub_219382BAC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21937E158();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219382B4C(inited + 32, sub_2188317B0);
  sub_219382C78(0);
  a1[3] = v5;
  a1[4] = sub_21937E224(&qword_27CC19440, sub_219382C78);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21937EDB8()
{
  sub_21937E224(&qword_27CC19420, type metadata accessor for TopicRecipesTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_21937EF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for TagFeedGroup();
  v4[6] = swift_task_alloc();
  v5 = sub_219BF2034();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_219BEF754();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21937F0FC, 0, 0);
}

uint64_t sub_21937F0FC()
{
  v67 = v0;
  *(v0 + 128) = sub_218EA2374(*(v0 + 120));
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = sub_219BE5434();
  *(v0 + 136) = __swift_project_value_buffer(v8, qword_280F62598);
  v9 = *(v7 + 16);
  *(v0 + 144) = v9;
  *(v0 + 152) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v3, v4, v6);
  v9(v5, v4, v6);
  v10 = sub_219BE5414();
  v11 = sub_219BF6214();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  if (v12)
  {
    v64 = v11;
    v17 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v66[0] = v62;
    *v17 = 136315394;
    v18 = [sub_219BEF744() identifier];
    swift_unknownObjectRelease();
    v19 = sub_219BF5414();
    v21 = v20;

    v22 = *(v15 + 8);
    v22(v13, v16);
    v23 = sub_2186D1058(v19, v21, v66);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2048;
    v24 = *(sub_219BEF734() + 16);

    v22(v14, v16);
    *(v17 + 14) = v24;
    _os_log_impl(&dword_2186C1000, v10, v64, "TopicRecipes emitter create content for next group topic=%s, recipes=%ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x21CECF960](v62, -1, -1);
    MEMORY[0x21CECF960](v17, -1, -1);
  }

  else
  {
    v22 = *(v15 + 8);
    v22(*(v0 + 104), *(v0 + 80));

    v22(v13, v16);
  }

  *(v0 + 160) = v22;
  v25 = *(sub_219BEF734() + 16);

  if (v25 && (v26 = *(sub_219BEF734() + 16), , v26 >= sub_219BEF724()))
  {
    v53 = *(v0 + 40);
    v54 = (v53 + *(type metadata accessor for TopicRecipesTagFeedGroupEmitter() + 32));
    v55 = v54[3];
    v56 = v54[4];
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v57 = sub_219BEF734();
    *(v0 + 168) = v57;
    v58 = swift_task_alloc();
    *(v0 + 176) = v58;
    v59 = sub_2186C6148(0, &qword_280E8E810);
    *v58 = v0;
    v58[1] = sub_21937F858;

    return MEMORY[0x282192290](v57, v55, v59, v56);
  }

  else
  {
    v27 = sub_219BEEDD4();
    sub_21937E224(&qword_280E917E0, MEMORY[0x277D32430]);
    v28 = swift_allocError();
    v30 = v29;
    v31 = sub_219BEF724();
    v32 = *(sub_219BEF734() + 16);

    *v30 = v31;
    v30[1] = v32;
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D32400], v27);
    swift_willThrow();
    v33 = v28;
    *(v0 + 232) = v28;
    (*(v0 + 144))(*(v0 + 96), *(v0 + 120), *(v0 + 80));
    v34 = v28;
    v35 = sub_219BE5414();
    v36 = sub_219BF61F4();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 160);
    v39 = *(v0 + 96);
    v40 = *(v0 + 80);
    if (v37)
    {
      v63 = v35;
      v41 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66[0] = v65;
      *v41 = 136315394;
      v60 = v36;
      v42 = [sub_219BEF744() identifier];
      swift_unknownObjectRelease();
      v43 = sub_219BF5414();
      v45 = v44;

      v38(v39, v40);
      v46 = sub_2186D1058(v43, v45, v66);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2114;
      v47 = v33;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v48;
      *v61 = v48;
      _os_log_impl(&dword_2186C1000, v63, v60, "TopicRecipes emitter failed to build next group topic=%s, error=%{public}@", v41, 0x16u);
      sub_219382B4C(v61, sub_2189B3F3C);
      MEMORY[0x21CECF960](v61, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x21CECF960](v65, -1, -1);
      MEMORY[0x21CECF960](v41, -1, -1);

      v49 = *(v0 + 128);
      if (v49)
      {
LABEL_14:
        v50 = swift_task_alloc();
        *(v0 + 240) = v50;
        *v50 = v0;
        v50[1] = sub_2193801F4;
        v51 = *(v0 + 16);
        v52 = *(v0 + 24);

        return sub_21937EF8C(v51, v52, v49);
      }
    }

    else
    {

      v38(v39, v40);
      v49 = *(v0 + 128);
      if (v49)
      {
        goto LABEL_14;
      }
    }

    swift_willThrow();
    (*(v0 + 160))(*(v0 + 120), *(v0 + 80));

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_21937F858(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_2193803E4;
  }

  else
  {

    v4 = sub_21937F974;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21937F974()
{
  v39 = v0;
  v1 = *(v0 + 184);
  if (v1 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_4;
    }

    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  if (v2 >= sub_219BEF724())
  {
    sub_219380B6C(*(v0 + 120), *(v0 + 184), *(v0 + 72));

    v30 = sub_219BEF744();
    *(v0 + 200) = v30;
    v31 = swift_task_alloc();
    *(v0 + 208) = v31;
    *v31 = v0;
    v31[1] = sub_21937FEA4;
    v32 = *(v0 + 72);
    v33 = *(v0 + 24);

    return sub_219381554(v33, v32, v30);
  }

LABEL_4:
  v3 = sub_219BEEDD4();
  sub_21937E224(&qword_280E917E0, MEMORY[0x277D32430]);
  v4 = swift_allocError();
  v6 = v5;
  v7 = sub_219BEF724();
  if (v1 >> 62)
  {
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *v6 = v7;
  v6[1] = v8;
  (*(*(v3 - 8) + 104))(v6, *MEMORY[0x277D32400], v3);
  swift_willThrow();
  *(v0 + 232) = v4;
  (*(v0 + 144))(*(v0 + 96), *(v0 + 120), *(v0 + 80));
  v9 = v4;
  v10 = sub_219BE5414();
  v11 = sub_219BF61F4();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 160);
  v14 = *(v0 + 96);
  v15 = *(v0 + 80);
  if (v12)
  {
    v36 = v10;
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v16 = 136315394;
    v34 = v11;
    v17 = [sub_219BEF744() identifier];
    swift_unknownObjectRelease();
    v18 = sub_219BF5414();
    v20 = v19;

    v13(v14, v15);
    v21 = sub_2186D1058(v18, v20, &v38);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2114;
    v22 = v4;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v35 = v23;
    _os_log_impl(&dword_2186C1000, v36, v34, "TopicRecipes emitter failed to build next group topic=%s, error=%{public}@", v16, 0x16u);
    sub_219382B4C(v35, sub_2189B3F3C);
    MEMORY[0x21CECF960](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x21CECF960](v37, -1, -1);
    MEMORY[0x21CECF960](v16, -1, -1);

    v24 = *(v0 + 128);
    if (v24)
    {
LABEL_9:
      v25 = swift_task_alloc();
      *(v0 + 240) = v25;
      *v25 = v0;
      v25[1] = sub_2193801F4;
      v26 = *(v0 + 16);
      v27 = *(v0 + 24);

      return sub_21937EF8C(v26, v27, v24);
    }
  }

  else
  {

    v13(v14, v15);
    v24 = *(v0 + 128);
    if (v24)
    {
      goto LABEL_9;
    }
  }

  swift_willThrow();
  (*(v0 + 160))(*(v0 + 120), *(v0 + 80));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_21937FEA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  swift_unknownObjectRelease();
  if (v1)
  {
    v4 = sub_219380734;
  }

  else
  {
    v4 = sub_21937FFE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21937FFE0()
{
  v1 = v0[16];
  sub_2193820B4(v0[27], v0[6]);
  v2 = v0[20];
  if (v1)
  {
    v3 = v0[16];
    v19 = v0[10];
    v20 = v0[15];
    v4 = v0[8];
    v5 = v0[9];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[2];
    sub_218ACC140();
    v10 = (v8 + *(v9 + 48));
    sub_219382C10(v7, v8, type metadata accessor for TagFeedGroup);
    v10[3] = type metadata accessor for TopicRecipesTagFeedGroupEmitterCursor();

    *v10 = v3;
    sub_219382B4C(v7, type metadata accessor for TagFeedGroup);
    (*(v4 + 8))(v5, v6);
    v2(v20, v19);
  }

  else
  {
    v21 = v0[15];
    v11 = v0[10];
    v12 = v0[8];
    v13 = v0[9];
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[2];

    (*(v12 + 8))(v13, v14);
    v2(v21, v11);
    sub_219382AE8(v15, v16);
  }

  sub_218A59C84();
  swift_storeEnumTagMultiPayload();

  v17 = v0[1];

  return v17();
}

uint64_t sub_2193801F4()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_219380A94;
  }

  else
  {
    v2 = sub_219380308;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219380308()
{
  v1 = v0[29];
  v2 = v0[20];
  v3 = v0[15];
  v4 = v0[10];

  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2193803E4()
{
  v28 = v0;

  v1 = *(v0 + 192);
  *(v0 + 232) = v1;
  (*(v0 + 144))(*(v0 + 96), *(v0 + 120), *(v0 + 80));
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);
  if (v5)
  {
    v25 = v3;
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v9 = 136315394;
    v23 = v4;
    v10 = [sub_219BEF744() identifier];
    swift_unknownObjectRelease();
    v11 = sub_219BF5414();
    v13 = v12;

    v6(v7, v8);
    v14 = sub_2186D1058(v11, v13, &v27);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v24 = v16;
    _os_log_impl(&dword_2186C1000, v25, v23, "TopicRecipes emitter failed to build next group topic=%s, error=%{public}@", v9, 0x16u);
    sub_219382B4C(v24, sub_2189B3F3C);
    MEMORY[0x21CECF960](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x21CECF960](v26, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);

    v17 = *(v0 + 128);
    if (v17)
    {
LABEL_3:
      v18 = swift_task_alloc();
      *(v0 + 240) = v18;
      *v18 = v0;
      v18[1] = sub_2193801F4;
      v19 = *(v0 + 16);
      v20 = *(v0 + 24);

      return sub_21937EF8C(v19, v20, v17);
    }
  }

  else
  {

    v6(v7, v8);
    v17 = *(v0 + 128);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  swift_willThrow();
  (*(v0 + 160))(*(v0 + 120), *(v0 + 80));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_219380734()
{
  v28 = v0;
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  v1 = *(v0 + 224);
  *(v0 + 232) = v1;
  (*(v0 + 144))(*(v0 + 96), *(v0 + 120), *(v0 + 80));
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);
  if (v5)
  {
    v25 = v3;
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v9 = 136315394;
    v23 = v4;
    v10 = [sub_219BEF744() identifier];
    swift_unknownObjectRelease();
    v11 = sub_219BF5414();
    v13 = v12;

    v6(v7, v8);
    v14 = sub_2186D1058(v11, v13, &v27);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v24 = v16;
    _os_log_impl(&dword_2186C1000, v25, v23, "TopicRecipes emitter failed to build next group topic=%s, error=%{public}@", v9, 0x16u);
    sub_219382B4C(v24, sub_2189B3F3C);
    MEMORY[0x21CECF960](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x21CECF960](v26, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);

    v17 = *(v0 + 128);
    if (v17)
    {
LABEL_3:
      v18 = swift_task_alloc();
      *(v0 + 240) = v18;
      *v18 = v0;
      v18[1] = sub_2193801F4;
      v19 = *(v0 + 16);
      v20 = *(v0 + 24);

      return sub_21937EF8C(v19, v20, v17);
    }
  }

  else
  {

    v6(v7, v8);
    v17 = *(v0 + 128);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  swift_willThrow();
  (*(v0 + 160))(*(v0 + 120), *(v0 + 80));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_219380A94()
{
  v1 = *(v0 + 232);

  (*(v0 + 160))(*(v0 + 120), *(v0 + 80));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_219380B6C@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v69 = a3;
  sub_2186FE720();
  MEMORY[0x28223BE20](v5 - 8);
  v68 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BF3C84();
  v72 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF2124();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_219BF14C4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v63 - v13;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDB954();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  sub_219BEF744();
  swift_getObjectType();
  sub_219BF6244();
  swift_unknownObjectRelease();
  v22 = (*(v19 + 48))(v17, 1, v18);
  v73 = a2;
  if (v22 != 1)
  {
    v28 = v10;
    (*(v19 + 32))(v21, v17, v18);
    sub_219BF20E4();
    v29 = v14;
    sub_219BF14A4();
    v30 = sub_2191F7664(0, 1, 1, MEMORY[0x277D84F90]);
    v32 = v30[2];
    v31 = v30[3];
    if (v32 >= v31 >> 1)
    {
      v30 = sub_2191F7664(v31 > 1, v32 + 1, 1, v30);
    }

    v30[2] = v32 + 1;
    v33 = v28 + 32;
    v34 = *(v28 + 32);
    v35 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v67 = v30;
    v36 = *(v33 + 40);
    v37 = v30 + v35 + v36 * v32;
    v38 = v9;
    v64 = v33;
    v34(v37, v29, v9);
    sub_219BF20E4();
    sub_219BF14A4();
    v39 = sub_2191F7664(0, 1, 1, MEMORY[0x277D84F90]);
    v41 = v39[2];
    v40 = v39[3];
    v42 = v39;
    if (v41 >= v40 >> 1)
    {
      v42 = sub_2191F7664(v40 > 1, v41 + 1, 1, v39);
    }

    (*(v19 + 8))(v21, v18);
    v27 = v42;
    *(v42 + 16) = v41 + 1;
    v34((v42 + v35 + v41 * v36), v70, v38);
    goto LABEL_11;
  }

  sub_219382B4C(v17, sub_21873F65C);
  if (qword_280EE5F50 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v23 = sub_219BE5434();
    __swift_project_value_buffer(v23, qword_280F62598);
    v24 = sub_219BE5414();
    v25 = sub_219BF61F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2186C1000, v24, v25, "TopicRecipes emitter failed to resolve recipe catalog search url for footer link", v26, 2u);
      MEMORY[0x21CECF960](v26, -1, -1);
    }

    v27 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84F90];
LABEL_11:
    sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_219C146A0;
    *(v43 + 32) = sub_219BEF744();
    sub_219382BAC(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v44 = *(sub_219BF3E84() - 8);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_219C0B8C0;
    v48 = v73 >> 62 ? sub_219BF7214() : *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = MEMORY[0x277D84F90];
    if (!v48)
    {
      break;
    }

    v74 = MEMORY[0x277D84F90];
    sub_218C34A88(0, v48 & ~(v48 >> 63), 0);
    if ((v48 & 0x8000000000000000) == 0)
    {
      v63[0] = v46;
      v63[1] = v45;
      v63[2] = v47;
      v64 = v43;
      v50 = 0;
      v51 = v73;
      v52 = v74;
      v70 = v27;
      v71 = v73 & 0xC000000000000001;
      v53 = *MEMORY[0x277D34120];
      v54 = (v72 + 104);
      v55 = v65;
      v56 = v66;
      v57 = v48;
      do
      {
        if (v71)
        {
          v58 = MEMORY[0x21CECE0F0](v50);
        }

        else
        {
          v58 = *(v51 + 8 * v50 + 32);
        }

        *v56 = v58;
        (*v54)(v56, v53, v55);
        v74 = v52;
        v60 = *(v52 + 16);
        v59 = *(v52 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_218C34A88(v59 > 1, v60 + 1, 1);
          v52 = v74;
        }

        ++v50;
        *(v52 + 16) = v60 + 1;
        (*(v72 + 32))(v52 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v60, v56, v55);
        v51 = v73;
      }

      while (v57 != v50);
      v49 = MEMORY[0x277D84F90];
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  sub_218F0B984(v49);
  sub_218F0BA7C(v49);
  sub_218F0BB90(v49);
  sub_219BF3E74();
  sub_218F0B984(v49);
  sub_218F0BA7C(v49);
  sub_218F0BB90(v49);
  sub_219BF3E74();
  sub_218F0B984(v49);
  sub_218F0BA7C(v49);
  sub_218F0BB90(v49);
  sub_219BF3E74();
  v61 = sub_219BEC004();
  (*(*(v61 - 8) + 56))(v68, 1, 1, v61);
  sub_219A95188(v49);
  sub_219A95188(v49);
  sub_219A951A0(v49);
  sub_219A951B8(v49);
  sub_219A952CC(v49);
  sub_219A952E4(v49);
  sub_219A953F8(v49);
  return sub_219BF2024();
}

uint64_t sub_219381554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_219382BAC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[9] = swift_task_alloc();
  sub_219382BAC(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[10] = swift_task_alloc();
  sub_219382BAC(0, &qword_280E91A70, sub_2189AD5C8, v5);
  v4[11] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_218A89A94(0);
  v4[15] = swift_task_alloc();
  sub_2186FE720();
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for TopicRecipesTagFeedGroupConfigData();
  v4[18] = swift_task_alloc();
  v7 = sub_219BF1934();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193817F4, 0, 0);
}

uint64_t sub_2193817F4()
{
  v1 = *(v0 + 160);
  v30 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v33 = *(v0 + 152);
  v34 = *(v0 + 88);
  v35 = *(v0 + 80);
  v36 = *(v0 + 72);
  v5 = *(v0 + 56);
  v31 = *(v0 + 64);
  v32 = type metadata accessor for TopicRecipesTagFeedGroupEmitter();
  v6 = (v31 + *(v32 + 24));
  v37 = v6[4];
  v38 = v6[3];
  __swift_project_boxed_opaque_existential_1(v6, v38);
  sub_21937E158();
  sub_219BEDD14();
  v7 = *(v3 + 20);
  v8 = [v5 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  MEMORY[0x21CECC330](v9, v11);

  v12 = [v5 identifier];
  sub_219BF5414();

  v13 = sub_219BEC004();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_218A42400(0);
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_219BF1764();

  sub_219382B4C(v4, sub_218A89A94);
  sub_219382B4C(v2, sub_2186FE720);
  v15 = *(v1 + 8);
  *(v0 + 176) = v15;
  *(v0 + 184) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v30 + v7, v33);
  v16 = *(v32 + 20);
  sub_2189AD5C8();
  v18 = v17;
  v19 = *(v17 - 8);
  (*(v19 + 16))(v34, v31 + v16, v17);
  (*(v19 + 56))(v34, 0, 1, v18);
  sub_219BEF0B4();
  v20 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v21 = sub_219BF35D4();
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  *(v0 + 208) = 45;
  sub_218C6F8FC();
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v22 = *(*(v0 + 32) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v23 = sub_219BF2774();
  (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  v24 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v24 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v25 = swift_task_alloc();
  *(v0 + 192) = v25;
  *v25 = v0;
  v25[1] = sub_219381D88;
  v26 = *(v0 + 168);
  v27 = *(v0 + 112);
  v28 = *(v0 + 48);

  return MEMORY[0x2821921B8](v26, v28, v27, v38, v37);
}

uint64_t sub_219381D88(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[25] = v1;

  v6 = v4[22];
  v7 = v4[21];
  v8 = v4[19];
  if (v1)
  {
    (*(v4[13] + 8))(v4[14], v4[12]);
    v6(v7, v8);

    return MEMORY[0x2822009F8](sub_219381FEC, 0, 0);
  }

  else
  {
    (*(v4[13] + 8))(v4[14], v4[12]);
    v6(v7, v8);

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_219381FEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193820B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a1;
  v14 = a2;
  sub_219382BAC(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v12 = &v11 - v3;
  v4 = sub_219BEF554();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v13 = sub_219BED8D4();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21937E158();

  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for TopicRecipesTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v9 = sub_219BEE5D4();
  (*(*(v9 - 8) + 56))(v12, 1, 1, v9);
  sub_219BED844();
  (*(v6 + 32))(v14, v8, v13);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2193823B8(uint64_t a1, uint64_t a2)
{
  v2[72] = a2;
  v2[71] = a1;
  v3 = sub_219BF0174();
  v2[73] = v3;
  v2[74] = *(v3 - 8);
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v4 = sub_219BEFC44();
  v2[77] = v4;
  v2[78] = *(v4 - 8);
  v2[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193824E4, 0, 0);
}

uint64_t sub_2193824E4()
{
  sub_219BEF164();
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  v2 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v2;
  v3 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v3;
  v4 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v4;
  v5 = *(v0 + 184);
  *(v0 + 640) = v5;

  sub_218A410EC(v0 + 144);
  v6 = swift_task_alloc();
  *(v0 + 648) = v6;
  v7 = sub_2186CFDE4(0, &qword_280E8B580);
  *v6 = v0;
  v6[1] = sub_219382654;
  v8 = *(v0 + 632);
  v9 = *(v0 + 616);
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v8, v5, v9, v7, v10);
}

uint64_t sub_219382654()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_2193829C0;
  }

  else
  {
    v2 = sub_219382768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219382768()
{
  v1 = *(v0 + 656);

  sub_219BEFC04();
  sub_219BEF164();
  if (v1)
  {
    v2 = *(v0 + 632);
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    (*(*(v0 + 592) + 8))(*(v0 + 608), *(v0 + 584));
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v6 = *(v0 + 632);
    v7 = *(v0 + 624);
    v8 = *(v0 + 616);
    v9 = *(v0 + 608);
    v10 = *(v0 + 600);
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    v23 = *(v0 + 568);
    v13 = *(v0 + 352);
    *(v0 + 464) = *(v0 + 336);
    *(v0 + 480) = v13;
    v14 = *(v0 + 384);
    *(v0 + 496) = *(v0 + 368);
    *(v0 + 512) = v14;
    v15 = *(v0 + 288);
    *(v0 + 400) = *(v0 + 272);
    *(v0 + 416) = v15;
    v16 = *(v0 + 320);
    *(v0 + 432) = *(v0 + 304);
    *(v0 + 448) = v16;
    v17 = *(v0 + 512);

    sub_218A410EC(v0 + 400);
    sub_2186E2394();
    *(v0 + 552) = v18;
    *(v0 + 560) = sub_21937E224(&qword_280E8E9B0, sub_2186E2394);
    *(v0 + 528) = v17;
    sub_219BF0154();
    __swift_destroy_boxed_opaque_existential_1(v0 + 528);
    v19 = sub_219BF0164();
    v20 = *(v11 + 8);
    v20(v10, v12);
    v20(v9, v12);
    (*(v7 + 8))(v6, v8);
    type metadata accessor for TopicRecipesTagFeedGroupEmitterCursor();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *v23 = v21;
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2193829C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219382A4C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_2193823B8(a1, v1);
}

uint64_t sub_219382AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219382B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219382BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219382C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219382CAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193834B4(0, &qword_27CC19468, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193833FC();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_219383518(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219383450(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219382F58(uint64_t a1)
{
  v2 = sub_2193833FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219382F94(uint64_t a1)
{
  v2 = sub_2193833FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219383010(void *a1)
{
  sub_2193834B4(0, &qword_27CC19478, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193833FC();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_219383518(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219383270(uint64_t a1)
{
  result = sub_219383518(&qword_27CC19458, type metadata accessor for SportsEventInfoTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2193832C8(void *a1)
{
  a1[1] = sub_219383518(&qword_27CC19460, type metadata accessor for SportsEventInfoTagFeedGroup);
  a1[2] = sub_219383518(&qword_27CC1C760, type metadata accessor for SportsEventInfoTagFeedGroup);
  result = sub_219383518(&qword_27CC1C870, type metadata accessor for SportsEventInfoTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_219383374(uint64_t a1)
{
  v2 = sub_219383518(&qword_27CC19460, type metadata accessor for SportsEventInfoTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_2193833FC()
{
  result = qword_27CC19470;
  if (!qword_27CC19470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19470);
  }

  return result;
}

uint64_t sub_219383450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventInfoTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2193834B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193833FC();
    v7 = a3(a1, &type metadata for SportsEventInfoTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219383518(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219383574()
{
  result = qword_27CC19480;
  if (!qword_27CC19480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19480);
  }

  return result;
}

unint64_t sub_2193835CC()
{
  result = qword_27CC19488;
  if (!qword_27CC19488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19488);
  }

  return result;
}

unint64_t sub_219383624()
{
  result = qword_27CC19490;
  if (!qword_27CC19490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19490);
  }

  return result;
}

void sub_2193836E0()
{
  sub_2186E3374();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SearchResponse.SearchResultGroups(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2193837A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2193837FC()
{
  sub_219219310();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_219383890()
{
  sub_2186E3374();
  if (v0 <= 0x3F)
  {
    sub_21921898C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21938393C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResponse(0);
  sub_219219310();
  result = sub_219BE21E4();
  v34 = *(result + 16);
  if (v34)
  {
    v32 = v4;
    v33 = a2;
    v8 = 0;
    v9 = 0x736C656E6E616843;
    v35 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v36 = result;
    v10 = a1;
    while (v8 < *(result + 16))
    {
      v11 = v37;
      sub_219385B98(v35 + *(v5 + 72) * v8, v37, type metadata accessor for SearchResponse.SearchResultsGroup);
      v12 = *v11;
      if (v12 > 3)
      {
        if (*v11 > 5u)
        {
          if (v12 == 6)
          {
            v17 = 0x6365526465766153;
            v18 = 0xEC00000073657069;
          }

          else
          {
            v18 = 0xE700000000000000;
            v17 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          if (v12 == 4)
          {
            v17 = 0x7374726F7053;
          }

          else
          {
            v17 = 0x73657069636552;
          }

          if (v12 == 4)
          {
            v18 = 0xE600000000000000;
          }

          else
          {
            v18 = 0xE700000000000000;
          }
        }
      }

      else
      {
        if (v12 == 2)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0x736369706F54;
        }

        if (v12 == 2)
        {
          v14 = 0xE800000000000000;
        }

        else
        {
          v14 = 0xE600000000000000;
        }

        if (*v11)
        {
          v15 = 0x736569726F7453;
        }

        else
        {
          v15 = 0x6C75736552706F54;
        }

        if (*v11)
        {
          v16 = 0xE700000000000000;
        }

        else
        {
          v16 = 0xE900000000000074;
        }

        if (*v11 <= 1u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }

        if (*v11 <= 1u)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }
      }

      ++v8;
      v19 = 0x6365526465766153;
      if (v10 != 6)
      {
        v19 = 0x6E776F6E6B6E75;
      }

      v20 = 0xEC00000073657069;
      if (v10 != 6)
      {
        v20 = 0xE700000000000000;
      }

      v21 = 0x73657069636552;
      if (v10 == 4)
      {
        v21 = 0x7374726F7053;
        v22 = 0xE600000000000000;
      }

      else
      {
        v22 = 0xE700000000000000;
      }

      if (v10 <= 5)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = v9;
      if (v10 == 2)
      {
        v24 = v9;
      }

      else
      {
        v24 = 0x736369706F54;
      }

      if (v10 == 2)
      {
        v25 = 0xE800000000000000;
      }

      else
      {
        v25 = 0xE600000000000000;
      }

      if (v10)
      {
        v26 = 0x736569726F7453;
      }

      else
      {
        v26 = 0x6C75736552706F54;
      }

      if (v10)
      {
        v27 = 0xE700000000000000;
      }

      else
      {
        v27 = 0xE900000000000074;
      }

      if (v10 <= 1)
      {
        v24 = v26;
        v25 = v27;
      }

      if (v10 <= 3)
      {
        v28 = v24;
      }

      else
      {
        v28 = v19;
      }

      if (v10 <= 3)
      {
        v29 = v25;
      }

      else
      {
        v29 = v20;
      }

      if (v17 == v28 && v18 == v29)
      {

LABEL_69:

        a2 = v33;
        sub_219385B30(v37, v33, type metadata accessor for SearchResponse.SearchResultsGroup);
        v31 = 0;
        v4 = v32;
        return (*(v5 + 56))(a2, v31, 1, v4);
      }

      v30 = sub_219BF78F4();

      if (v30)
      {
        goto LABEL_69;
      }

      sub_219385C00(v37, type metadata accessor for SearchResponse.SearchResultsGroup);
      v9 = v23;
      result = v36;
      if (v34 == v8)
      {

        v31 = 1;
        v4 = v32;
        a2 = v33;
        return (*(v5 + 56))(a2, v31, 1, v4);
      }
    }

    __break(1u);
  }

  else
  {

    v31 = 1;
    return (*(v5 + 56))(a2, v31, 1, v4);
  }

  return result;
}

uint64_t sub_219383D38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_219219310();
  v4 = v3;
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219385DB0(0, &qword_27CC19538, sub_219385D5C, &type metadata for SearchResponse.SearchResultGroups.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SearchResponse.SearchResultGroups(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219385D5C();
  v13 = v21;
  sub_219BF7B34();
  if (!v13)
  {
    v14 = v18;
    v15 = v19;
    sub_2193837A0(&qword_27CC19548, sub_219219310);
    sub_219BF7734();
    (*(v14 + 8))(v9, v7);
    (*(v15 + 32))(v12, v20, v4);
    sub_219385B30(v12, v17, type metadata accessor for SearchResponse.SearchResultGroups);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219384030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000219D19E80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_219BF78F4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2193840C4(uint64_t a1)
{
  v2 = sub_219385D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219384100(uint64_t a1)
{
  v2 = sub_219385D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219384154(void *a1)
{
  sub_219385DB0(0, &qword_27CC19550, sub_219385D5C, &type metadata for SearchResponse.SearchResultGroups.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219385D5C();
  sub_219BF7B44();
  sub_219219310();
  sub_2193837A0(&qword_27CC19558, sub_219219310);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219384328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2193857F0();
  *a1 = result;
  return result;
}

void sub_219384358(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x6C75736552706F54;
  v5 = 0xEC00000073657069;
  v6 = 0x6365526465766153;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7374726F7053;
  if (v2 != 4)
  {
    v8 = 0x73657069636552;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x736C656E6E616843;
  if (v2 != 2)
  {
    v10 = 0x736369706F54;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x736569726F7453;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_219384460()
{
  result = qword_27CC194C8;
  if (!qword_27CC194C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC194C8);
  }

  return result;
}

uint64_t sub_2193844C0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21938459C()
{
  sub_219BF5524();
}

uint64_t sub_219384664()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21938473C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21938583C();
  *a1 = result;
  return result;
}

void sub_21938476C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x444970756F7267;
  v4 = 0x8000000219CD8060;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x6552686372616573;
    v4 = 0xED000073746C7573;
  }

  if (*v1)
  {
    v3 = 0x72754370756F7267;
    v2 = 0xEB00000000726F73;
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

unint64_t sub_219384804()
{
  v1 = 0x444970756F7267;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x6552686372616573;
  }

  if (*v0)
  {
    v1 = 0x72754370756F7267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219384898@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21938583C();
  *a1 = result;
  return result;
}

uint64_t sub_2193848C0(uint64_t a1)
{
  v2 = sub_219385C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193848FC(uint64_t a1)
{
  v2 = sub_219385C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219384938@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x212uLL);
  v4 = sub_218CD47C0(__dst);
  if (v4 <= 2 || v4 == 4)
  {
    v5 = nullsub_1(__dst);
    v7 = *v5;
    v6 = v5[1];
  }

  else
  {
    v8 = nullsub_1(__dst);
    v7 = *v8;
    v6 = v8[1];
    memcpy(v10, __src, 0x212uLL);
    nullsub_1(v10);
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_219384A48(void *a1)
{
  v3 = v1;
  sub_219385DB0(0, &qword_27CC19520, sub_219385C60, &type metadata for SearchResponse.SearchResultsGroup.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219385C60();
  sub_219BF7B44();
  v16 = *v3;
  v15 = 0;
  sub_219385D08();
  sub_219BF7834();
  if (!v2)
  {
    v14 = 1;
    sub_219BF7794();
    v13 = 2;
    sub_219BF7824();
    type metadata accessor for SearchResponse.SearchResultsGroup(0);
    v12 = 3;
    sub_21921898C();
    sub_2193837A0(&qword_27CC19530, sub_21921898C);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219384C8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_21921898C();
  v24 = v3;
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219385DB0(0, &qword_27CC19500, sub_219385C60, &type metadata for SearchResponse.SearchResultsGroup.CodingKeys, MEMORY[0x277D844C8]);
  v25 = v5;
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219385C60();
  v11 = v26;
  sub_219BF7B34();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v8;
  v12 = v10;
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v30 = 0;
  sub_219385CB4();
  v16 = v25;
  sub_219BF7734();
  *v12 = v31;
  v29 = 1;
  *(v12 + 8) = sub_219BF7694();
  *(v12 + 16) = v17;
  v28 = 2;
  *(v12 + 24) = sub_219BF7724();
  v27 = 3;
  sub_2193837A0(&qword_27CC19518, sub_21921898C);
  sub_219BF7734();
  (*(v13 + 8))(v7, v16);
  (*(v20 + 32))(v12 + *(v26 + 28), v14, v15);
  sub_219385B98(v12, v21, type metadata accessor for SearchResponse.SearchResultsGroup);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219385C00(v12, type metadata accessor for SearchResponse.SearchResultsGroup);
}