uint64_t sub_1D7A73668(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D7A7368C, 0, 0);
}

uint64_t sub_1D7A7368C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1D7A73164();
    v3 = (v1 + 40);
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = *(v3 - 1);
      v5 = *v3;

      v7 = sub_1D7D2913C();
      if (*(v7 + 16))
      {
        v8 = sub_1D7A18FFC(v6, v5);
        v10 = v9;

        if (v10)
        {
          v11 = (*(v7 + 56) + 16 * v8);
          v13 = *v11;
          v12 = v11[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D79A8020(0, *(v4 + 2) + 1, 1, v4);
          }

          v15 = *(v4 + 2);
          v14 = *(v4 + 3);
          if (v15 >= v14 >> 1)
          {
            v4 = sub_1D79A8020((v14 > 1), v15 + 1, 1, v4);
          }

          *(v4 + 2) = v15 + 1;
          v16 = &v4[16 * v15];
          *(v16 + 4) = v13;
          *(v16 + 5) = v12;
          goto LABEL_5;
        }
      }

      else
      {
      }

LABEL_5:
      v3 += 2;
      if (!--v2)
      {
        goto LABEL_15;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v0[5] = v4;
  v17 = v0[4];
  v18 = v17[5];
  v19 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v18);
  v20 = swift_task_alloc();
  v0[6] = v20;
  *v20 = v0;
  v20[1] = sub_1D7A73884;

  return MEMORY[0x1EEE22178](v4, v18, v19);
}

uint64_t sub_1D7A73884(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D7A739DC, 0, 0);
  }
}

uint64_t sub_1D7A739DC()
{
  v1 = sub_1D7A6BE48(*(v0 + 64));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D7A73A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D7A73A90, 0, 0);
}

uint64_t sub_1D7A73A90()
{
  v20 = v0;
  v1 = sub_1D7A734D0(*(v0 + 40), *(v0 + 32));
  *(v0 + 56) = v1;
  if (v1)
  {
    v4 = v1;
    *(v0 + 128) = v3;
    *(v0 + 64) = v2;
    if (qword_1EC9DFDA0 != -1)
    {
      swift_once();
    }

    v5 = sub_1D7D29AFC();
    *(v0 + 72) = __swift_project_value_buffer(v5, qword_1ECA0BB60);

    v6 = sub_1D7D29ADC();
    v7 = sub_1D7D30C2C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136446210;

      v11 = MEMORY[0x1DA70E0B0](v10, MEMORY[0x1E69E6158]);
      v13 = v12;

      v14 = sub_1D7B06D4C(v11, v13, &v19);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1D7987000, v6, v7, "RecipeRecirculationService using recipe source selection rule using recipe list types=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1DA7102E0](v9, -1, -1);
      MEMORY[0x1DA7102E0](v8, -1, -1);
    }

    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = sub_1D7A73CF0;
    v16 = *(v0 + 40);

    return sub_1D7A73668(v4, v16);
  }

  else
  {
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1D7A73CF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1D7A73FF4;
  }

  else
  {
    v4 = sub_1D7A73E04;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7A73E04()
{
  v15 = v0;

  v1 = sub_1D7D29ADC();
  v2 = sub_1D7D30C2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[11];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 134218242;
    if (v4 >> 62)
    {
      v7 = sub_1D7D3167C();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v0[2];
    v8 = v0[3];
    *(v5 + 4) = v7;

    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1D7B06D4C(v9, v8, &v14);
    _os_log_impl(&dword_1D7987000, v1, v2, "RecipeRecirculationService fetched %ld recipes for recipe recircuiation section=%{public}s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA7102E0](v6, -1, -1);
    MEMORY[0x1DA7102E0](v5, -1, -1);
  }

  else
  {
  }

  v10 = v0[8];
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1D7A74060;
  v12 = v0[11];

  return sub_1D7A6FB44(v12, v10);
}

uint64_t sub_1D7A73FF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A74060(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_1D7A74560;
  }

  else
  {

    v4 = sub_1D7A7417C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7A7417C()
{
  v24 = v0;
  v1 = *(v0 + 120);
  v2 = sub_1D7A70934(*(v0 + 112), *(v0 + 128) & 1);

  if (v1)
  {

    v3 = v1;
    v4 = sub_1D7D29ADC();
    v5 = sub_1D7D30C2C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 16);
      v6 = *(v0 + 24);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23[0] = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_1D7B06D4C(v7, v6, v23);
      *(v8 + 12) = 2114;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v12;
      *v9 = v12;
      _os_log_impl(&dword_1D7987000, v4, v5, "RecipeRecirculationService failed to order recipes for section=%{public}s; falling back to unordered list; error=%{public}@", v8, 0x16u);
      sub_1D7A72BA8(v9);
      MEMORY[0x1DA7102E0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1DA7102E0](v10, -1, -1);
      MEMORY[0x1DA7102E0](v8, -1, -1);
    }

    else
    {
    }

    v2 = *(v0 + 112);
  }

  else
  {
  }

  swift_bridgeObjectRetain_n();

  v13 = sub_1D7D29ADC();
  v14 = sub_1D7D30C2C();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_1D7B06D4C(v16, v15, v23);
    *(v17 + 12) = 2048;
    if (v2 >> 62)
    {
      v19 = sub_1D7D3167C();
    }

    else
    {
      v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 14) = v19;

    _os_log_impl(&dword_1D7987000, v13, v14, "RecipeRecirculationService returning recirculation section=%{public}s with %ld recipes after filtering and ordering", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1DA7102E0](v18, -1, -1);
    MEMORY[0x1DA7102E0](v17, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  if (*(v0 + 16) == 0x52646574616C6572 && *(v0 + 24) == 0xEE00736570696365 || (sub_1D7D3197C() & 1) != 0 || *(v0 + 16) == 0x656B694C65726F6DLL && *(v0 + 24) == 0xEC00000073696854 || (sub_1D7D3197C() & 1) != 0)
  {
    v20 = 2;
  }

  else
  {

    v2 = 0;
    v20 = 255;
  }

  v21 = *(v0 + 8);

  return v21(v2, v20);
}

uint64_t sub_1D7A74560()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D7A745D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7992EFC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7A74640(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D798E9DC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7A7469C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7A745D8(255, &qword_1EE0BB0B0, &qword_1EE0BECC0, 0x1E69B5578, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7A7470C()
{
  result = qword_1EC9E3158;
  if (!qword_1EC9E3158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3158);
  }

  return result;
}

uint64_t sub_1D7A74760(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7A747BC()
{
  result = qword_1EC9E3178;
  if (!qword_1EC9E3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3178);
  }

  return result;
}

uint64_t sub_1D7A74810(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A08700(a1, v5, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

LABEL_7:
    v12 = type metadata accessor for ArticleViewerPage;
    v13 = v5;
    return sub_1D7A74EFC(v13, v12);
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_7;
  }

  sub_1D799A6BC();
  sub_1D79DA510(*&v5[*(v11 + 48)], *&v5[*(v11 + 48) + 8], *&v5[*(v11 + 48) + 16]);
LABEL_6:
  sub_1D7A74E98(v5, v9);
  sub_1D7A74988(v9);
  v12 = type metadata accessor for ArticleViewerArticlePage;
  v13 = v9;
  return sub_1D7A74EFC(v13, v12);
}

uint64_t sub_1D7A74988(uint64_t a1)
{
  v3 = type metadata accessor for ArticleViewerArticlePage(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_1D7A74F5C();
  sub_1D7A08700(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArticleViewerArticlePage);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1D7A74E98(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_1D7D28D0C();

  sub_1D7A74FC0(v15, v12);
  v9 = v13;
  if (v13)
  {
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v10 + 152))(v9, v10);
    sub_1D7A35108(v15);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1D7A35108(v15);
    return sub_1D7A35108(v12);
  }
}

uint64_t sub_1D7A74B48(uint64_t a1)
{
  v3 = type metadata accessor for ArticleViewerArticlePage(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_1D7A74F5C();
  sub_1D7A08700(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArticleViewerArticlePage);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1D7A74E98(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_1D7D28D0C();

  sub_1D7A74FC0(v15, v12);
  v9 = v13;
  if (v13)
  {
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v10 + 160))(v9, v10);
    sub_1D7A35108(v15);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1D7A35108(v15);
    return sub_1D7A35108(v12);
  }
}

uint64_t sub_1D7A74D08(void *a1, _OWORD *a2)
{
  v4 = type metadata accessor for ArticleModel();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7996048();
  v8 = a2[1];
  v13[0] = *a2;
  v13[1] = v8;
  v9 = a2[3];
  v14 = a2[2];
  v10 = v14;
  v15 = v9;
  *v7 = v13[0];
  v7[1] = v8;
  v7[2] = v10;
  v7[3] = v9;
  type metadata accessor for ArticleNavigationAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1D79F5B54(v13, v12);
  sub_1D7D28BFC();
  sub_1D7A74EFC(v7, type metadata accessor for ArticleModel);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

uint64_t sub_1D7A74E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerArticlePage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A74EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7A74F5C()
{
  result = qword_1EE0C7830;
  if (!qword_1EE0C7830)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0C7830);
  }

  return result;
}

uint64_t sub_1D7A74FC0(uint64_t a1, uint64_t a2)
{
  sub_1D7A75054(0, &unk_1EE0C7820, sub_1D7A74F5C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7A75054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for ArticleViewerArticlePage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 72);
  v6 = v1[7];
  v7 = sub_1D7D295CC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = (v0 + v3 + v1[8]);
  if (*v8 >= 2)
  {
  }

  v9 = (v5 + v1[9]);
  type metadata accessor for ArticleNavigationAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_1D7A75054(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
      (*(*(v11 - 8) + 8))(v9, v11);
      break;
    case 1:

      break;
    case 0:

      break;
  }

  v12 = (v5 + v1[10]);
  v13 = v12[2];
  if ((~v13 & 0xF000000000000007) != 0)
  {
    sub_1D7A1ECF8(*v12, v12[1], v13);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7A75338(uint64_t a1)
{
  type metadata accessor for EndOfArticleFeedPool();
  sub_1D7D294BC();
  v3 = sub_1D7D2934C();
  sub_1D7A77F38(0, &unk_1EE0BF1D0, sub_1D799621C, MEMORY[0x1E69E62F8]);
  sub_1D7D293BC();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;

  v5 = sub_1D7D2934C();
  sub_1D7D2F05C();
  sub_1D7D293BC();

  v6 = sub_1D7D2934C();
  sub_1D7A18F80(0);
  sub_1D7D293BC();

  v7 = sub_1D7D2934C();
  v8 = sub_1D7D2943C();

  return v8;
}

uint64_t sub_1D7A75560(uint64_t *a1)
{
  result = sub_1D7A7811C(a1);
  if (!v1)
  {
  }

  return result;
}

size_t sub_1D7A75588(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a4;
  v7 = MEMORY[0x1E69E6720];
  sub_1D7A77F38(0, &unk_1EE0BF640, MEMORY[0x1E69B6380], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v118 = v99 - v10;
  sub_1D7A77F38(0, &qword_1EE0BF5C0, MEMORY[0x1E69B6570], v7);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v113 = v99 - v13;
  sub_1D7A77F38(0, &qword_1EE0BF988, sub_1D7990AB0, v7);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v110 = v99 - v16;
  v106 = sub_1D7D2F6AC();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v17);
  v117 = v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A77F38(0, &unk_1EE0BF530, sub_1D7A78030, v7);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v108 = v99 - v21;
  EndOfArticleFeedGroupConfigData = type metadata accessor for MoreToReadEndOfArticleFeedGroupConfigData();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroupConfigData - 8, v23);
  v107 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1D7D2F06C();
  v125 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v25);
  v114 = v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A77F38(0, &unk_1EE0BFB00, MEMORY[0x1E69B40B8], v7);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v120 = v99 - v29;
  v104 = sub_1D7D2F31C();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v30);
  v112 = v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1D7D2FC7C();
  v129 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v32);
  v101 = v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D7D2FD3C();
  v122 = *(v34 - 8);
  v123 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v121 = v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1D7D2EC6C();
  v37 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v38);
  v40 = v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for EndOfArticleFeedServiceConfig();
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = (v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = *a1;
  sub_1D7D2E5FC();
  v45 = *v44;
  swift_unknownObjectRetain();
  sub_1D7A78400(v44, type metadata accessor for EndOfArticleFeedServiceConfig);
  v109 = a2;
  type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs();
  v46 = a3;
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  v47 = *(v37 + 8);
  v48 = v128;
  v47(v40, v128);
  v127 = v130;
  v116 = v46;
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  v47(v40, v48);
  v49 = v45;
  v50 = v130;
  v51 = [v45 sourceChannel];
  if (!v51)
  {
    i = sub_1D7D2E4EC();
    sub_1D798F878(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
    swift_allocError();
    (*(*(i - 8) + 104))(v59, *MEMORY[0x1E69B5AC0], i);
    swift_willThrow();
LABEL_7:
    swift_unknownObjectRelease();
    return i;
  }

  v52 = v51;
  v53 = v124;
  v54 = v124 >> 62;
  if (v124 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7D3167C())
  {
    v56 = v127;
    if (i < v127)
    {
      v57 = sub_1D7D2E4EC();
      sub_1D798F878(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
      swift_allocError();
      *v58 = v56;
      v58[1] = i;
      (*(*(v57 - 8) + 104))(v58, *MEMORY[0x1E69B5AE0], v57);
      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    if (v50 < 0)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      swift_once();
      goto LABEL_49;
    }

    if (v54)
    {
      v62 = sub_1D7D3167C();
      result = sub_1D7D3167C();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v62 >= v50)
      {
        v64 = v50;
      }

      else
      {
        v64 = v62;
      }

      if (v62 < 0)
      {
        v64 = v50;
      }

      if (v50)
      {
        v56 = v64;
      }

      else
      {
        v56 = 0;
      }

      v60 = sub_1D7D3167C();
    }

    else
    {
      v60 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v60 >= v50)
      {
        v61 = v50;
      }

      else
      {
        v61 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v50)
      {
        v56 = v61;
      }

      else
      {
        v56 = 0;
      }
    }

    if (v60 < v56)
    {
      goto LABEL_56;
    }

    if ((v53 & 0xC000000000000001) != 0 && v56)
    {
      sub_1D799621C();

      v65 = 0;
      do
      {
        v66 = v65 + 1;
        sub_1D7D3147C();
        v65 = v66;
      }

      while (v56 != v66);
      if (!v54)
      {
LABEL_32:
        v67 = 0;
        v68 = v53 & 0xFFFFFFFFFFFFFF8;
        v50 = (v53 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_35;
      }
    }

    else
    {

      if (!v54)
      {
        goto LABEL_32;
      }
    }

    v68 = sub_1D7D3168C();
    v50 = v69;
    v67 = v70;
    v56 = (v71 >> 1);
LABEL_35:
    v54 = &v56[-v67];
    if (__OFSUB__(v56, v67))
    {
      goto LABEL_57;
    }

    v99[2] = v49;
    v100 = v52;
    if (!v54)
    {
      break;
    }

    v99[1] = v68;
    v130 = MEMORY[0x1E69E7CC0];
    result = sub_1D7A5BFDC(0, v54 & ~(v54 >> 63), 0);
    if (v54 < 0)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      return result;
    }

    v72 = v130;
    LODWORD(v128) = *MEMORY[0x1E69B6698];
    v126 = v129 + 32;
    v127 = (v129 + 104);
    if (v56 <= v67)
    {
      v73 = v67;
    }

    else
    {
      v73 = v56;
    }

    v53 = v73 - v67;
    v50 += 8 * v67;
    v52 = v102;
    v49 = v101;
    while (v53)
    {
      *v49 = *v50;
      (*v127)(v49, v128, v52);
      v130 = v72;
      v48 = *(v72 + 2);
      v74 = *(v72 + 3);
      swift_unknownObjectRetain();
      if (v48 >= v74 >> 1)
      {
        sub_1D7A5BFDC(v74 > 1, v48 + 1, 1);
        v72 = v130;
      }

      *(v72 + 2) = v48 + 1;
      (*(v129 + 32))(&v72[((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v48], v49, v52);
      --v53;
      v50 += 8;
      if (!--v54)
      {
        swift_unknownObjectRelease();
        v52 = v100;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_54:
    ;
  }

  swift_unknownObjectRelease();
LABEL_48:
  v75 = MEMORY[0x1E69E7CC0];
  sub_1D7A1912C(MEMORY[0x1E69E7CC0]);
  sub_1D7A19144(v75);
  sub_1D7A1915C(v75);
  v76 = v121;
  sub_1D7D2FD2C();
  sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v77 = swift_allocObject();
  v129 = v77;
  *(v77 + 16) = xmmword_1D7D3C670;
  *(v77 + 32) = v52;
  sub_1D7A77F38(0, &qword_1EE0BE8A0, MEMORY[0x1E69B66E0], MEMORY[0x1E69E6F90]);
  v78 = v122;
  v79 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1D7D3B4D0;
  (*(v78 + 16))(v80 + v79, v76, v123);
  v126 = sub_1D7D2CE6C();
  v81 = *(v126 - 8);
  v124 = *(v81 + 56);
  v127 = (v81 + 56);
  (v124)(v120, 1, 1, v126);

  swift_unknownObjectRetain();
  v128 = sub_1D7A191A4(v75);
  sub_1D7A191A4(v75);
  sub_1D7A191BC(v75);
  sub_1D7A191D4(v75);
  sub_1D7A192E8(v75);
  sub_1D7A19300(v75);
  sub_1D7A19414(v75);
  v50 = v112;
  sub_1D7D2F30C();
  v82 = *(v109 + OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_formatService + 24);
  v129 = *(v109 + OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_formatService + 32);
  v128 = __swift_project_boxed_opaque_existential_1((v109 + OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_formatService), v82);
  sub_1D798EFC8();
  v83 = v107;
  sub_1D7D2DF2C();
  v84 = [v100 identifier];
  sub_1D7D3034C();

  v85 = v120;
  (v124)(v120, 1, 1, v126);
  sub_1D7A78030(0);
  v87 = v108;
  (*(*(v86 - 8) + 56))(v108, 1, 1, v86);
  v54 = v114;
  sub_1D7D2F01C();

  sub_1D7A780AC(v87, &unk_1EE0BF530, sub_1D7A78030);
  sub_1D7A780AC(v85, &unk_1EE0BFB00, MEMORY[0x1E69B40B8]);
  v56 = *(v125 + 8);
  v48 = v115;
  v125 += 8;
  (v56)(v83, v115);
  v88 = OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_knobs;
  sub_1D7990AB0(0);
  v90 = v89;
  v91 = *(v89 - 8);
  v92 = v110;
  (*(v91 + 16))(v110, v111 + v88, v89);
  (*(v91 + 56))(v92, 0, 1, v90);
  v93 = sub_1D7D2FAFC();
  (*(*(v93 - 8) + 56))(v113, 1, 1, v93);
  LOBYTE(v130) = 3;
  sub_1D798FB8C(0, &unk_1EE0BF580, type metadata accessor for EndOfArticleFeedServiceConfig, sub_1D7990AF8, MEMORY[0x1E69B65B8]);
  swift_allocObject();

  sub_1D7D2FB8C();
  v94 = sub_1D7D2F59C();
  (*(*(v94 - 8) + 56))(v118, 1, 1, v94);
  v95 = qword_1EE0CA130;
  *MEMORY[0x1E69B5080];
  if (v95 != -1)
  {
    goto LABEL_58;
  }

LABEL_49:
  qword_1EE0CA138;
  v96 = v117;
  sub_1D7D2F69C();
  i = v128;
  v97 = v119;
  v98 = sub_1D7D2F36C();
  if (!v97)
  {
    i = v98;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v105 + 8))(v96, v106);
  (v56)(v54, v48);
  (*(v103 + 8))(v50, v104);
  (*(v122 + 8))(v121, v123);
  return i;
}

uint64_t sub_1D7A767D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7A18F80(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup - 8, v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2F03C();
  if (v13 >> 62)
  {
    v16 = sub_1D7D3167C();

    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = sub_1D7D2E4EC();
    sub_1D798F878(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69B5AD0], v15);
    swift_willThrow();
    return v15;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7A76A68(a1, a3, v12);
  sub_1D7A78310(v12, v8, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
  type metadata accessor for EndOfArticleFeedGroup();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1D7A77F38(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v15 = sub_1D7D2940C();
  sub_1D7A78400(v12, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
  return v15;
}

uint64_t sub_1D7A76A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v99 = a2;
  v94 = a3;
  v81 = *v4;
  v84 = sub_1D7D2EC6C();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v6);
  v82 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D7D2EA6C();
  v100 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v8);
  v93 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EndOfArticleFeedServiceConfig();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v92 = (&v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2836C();
  v90 = *(v13 - 8);
  v91 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v89 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D7D2855C();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v16);
  v77 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E6720];
  sub_1D7A77F38(0, &qword_1EE0BF828, MEMORY[0x1E69B5D58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v97 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v86 = &v76 - v24;
  sub_1D7A77F38(0, &qword_1EE0BF9B0, MEMORY[0x1E69B59D8], v18);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v76 - v27;
  v29 = sub_1D7D2E73C();
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v33 = sub_1D7D2F05C();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D7D2DE2C();
  v95 = *(v38 - 8);
  v96 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v98 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v45 = &v76 - v44;
  (*(v34 + 16))(v37, a1, v33, v43);
  sub_1D798EFC8();
  v85 = sub_1D7D2DF0C();
  sub_1D7D2DF1C();
  sub_1D7D2DF1C();
  v80 = v4;
  v46 = v4 + OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_knobs;
  sub_1D7990AB0(0);
  sub_1D7D2E35C();
  sub_1D7D2E34C();
  v47 = sub_1D7D2E1CC();
  (*(*(v47 - 8) + 56))(v28, 1, 1, v47);
  v48 = v86;
  v88 = v45;
  v49 = v87;
  sub_1D7D2DDDC();
  v50 = *(v100 + 56);
  v50(v48, 1, 1, v49);
  sub_1D7D2856C();
  LOBYTE(v34) = sub_1D7D2860C();

  if (v34)
  {
    sub_1D7D2856C();
    sub_1D7D2854C();

    sub_1D798F878(&unk_1EC9E3180, type metadata accessor for MoreToReadEndOfArticleFeedGroupEmitter);
    v51 = v77;
    sub_1D7D285AC();

    v52 = (*(v78 + 88))(v51, v79);
    if (v52 == *MEMORY[0x1E69B3DD0])
    {
      v53 = MEMORY[0x1E69B5D40];
    }

    else if (v52 == *MEMORY[0x1E69B3DD8])
    {
      v53 = MEMORY[0x1E69B5D48];
    }

    else
    {
      if (v52 != *MEMORY[0x1E69B3DE0])
      {
        result = sub_1D7D3196C();
        __break(1u);
        return result;
      }

      v53 = MEMORY[0x1E69B5D50];
    }

    sub_1D7A780AC(v48, &qword_1EE0BF828, MEMORY[0x1E69B5D58]);
    (*(v100 + 104))(v48, *v53, v49);
    v50(v48, 0, 1, v49);
  }

  v85 = v46;
  strcpy(v101, "moreToRead::");
  BYTE5(v101[1]) = 0;
  HIWORD(v101[1]) = -5120;
  v54 = v89;
  sub_1D7D2835C();
  v55 = sub_1D7D2834C();
  v57 = v56;
  (*(v90 + 8))(v54, v91);
  MEMORY[0x1DA70DE90](v55, v57);

  v90 = v101[1];
  v91 = v101[0];
  v59 = v95;
  v58 = v96;
  v60 = v88;
  (*(v95 + 16))(v98, v88, v96);
  v61 = v92;
  sub_1D7D2E5FC();
  v62 = *v61;
  swift_unknownObjectRetain();
  sub_1D7A78400(v61, type metadata accessor for EndOfArticleFeedServiceConfig);
  v63 = [v62 sourceChannel];
  swift_unknownObjectRelease();
  v64 = v97;
  sub_1D7A77F9C(v48, v97);
  v65 = *(v100 + 48);
  if (v65(v64, 1, v49) == 1)
  {
    type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs();
    v66 = v82;
    sub_1D7D2E61C();
    v67 = v48;
    v68 = v93;
    v69 = v97;
    sub_1D7D2E70C();
    v70 = v66;
    v58 = v96;
    (*(v83 + 8))(v70, v84);
    v71 = v67;
    v59 = v95;
    sub_1D7A780AC(v71, &qword_1EE0BF828, MEMORY[0x1E69B5D58]);
    (*(v59 + 8))(v60, v58);
    if (v65(v69, 1, v49) != 1)
    {
      sub_1D7A780AC(v69, &qword_1EE0BF828, MEMORY[0x1E69B5D58]);
    }
  }

  else
  {
    sub_1D7A780AC(v48, &qword_1EE0BF828, MEMORY[0x1E69B5D58]);
    (*(v59 + 8))(v60, v58);
    v68 = v93;
    (*(v100 + 32))(v93, v64, v49);
  }

  v72 = v94;
  v73 = v90;
  *v94 = v91;
  *(v72 + 1) = v73;
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  (*(v59 + 32))(&v72[EndOfArticleFeedGroup[5]], v98, v58);
  *&v72[EndOfArticleFeedGroup[6]] = v63;
  return (*(v100 + 32))(&v72[EndOfArticleFeedGroup[7]], v68, v49);
}

uint64_t sub_1D7A77598(uint64_t a1)
{
  sub_1D7A18F80(0);
  v11 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7D30C4C();
  sub_1D79F3AB0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4D0;
  v12 = 0;
  v13 = 0xE000000000000000;
  v14 = a1;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  sub_1D7D315DC();
  v8 = v12;
  v7 = v13;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D79D6AE0();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  sub_1D7D29AAC();

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1D7D3145C();
  MEMORY[0x1DA70DE90](0xD00000000000002CLL, 0x80000001D7D6D310);
  v14 = a1;
  sub_1D7D315DC();
  v9 = v13;
  *v5 = v12;
  v5[1] = v9;
  swift_storeEnumTagMultiPayload();
  sub_1D7A77F38(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7A777EC()
{
  v1 = OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_config;
  sub_1D798EFC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D7A78400(v0 + OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MoreToReadEndOfArticleFeedGroupEmitter()
{
  result = qword_1EE0BBB70;
  if (!qword_1EE0BBB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7A77910()
{
  sub_1D798EFC8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D7A779E4()
{
  sub_1D7A78240();
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7A77A54@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_config;
  sub_1D798EFC8();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for EndOfArticleFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7A77AE8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles38MoreToReadEndOfArticleFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs();
  a1[4] = sub_1D798F878(qword_1EE0C1818, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
  a1[5] = sub_1D798F878(&unk_1EC9E3190, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7A78310(v3 + v4, boxed_opaque_existential_1, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
}

uint64_t sub_1D7A77BB4@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7A77F38(0, &qword_1EE0BE860, sub_1D7A19AB4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 40) = 0xEA00000000007265;
  sub_1D798EFC8();
  v3 = sub_1D7D2DEFC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7A78400(inited + 32, sub_1D7A19AB4);
  sub_1D7A77F38(0, &qword_1EE0BB428, type metadata accessor for MoreToReadEndOfArticleFeedGroupEmitter, MEMORY[0x1E69D65D0]);
  a1[3] = v5;
  a1[4] = sub_1D7A78378();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7D28FEC();
}

uint64_t sub_1D7A77D3C(uint64_t a1)
{
  v2 = sub_1D798F878(&qword_1EE0BBB90, type metadata accessor for MoreToReadEndOfArticleFeedGroupEmitter);

  return MEMORY[0x1EEE44678](a1, v2);
}

void sub_1D7A77F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7A77F9C(uint64_t a1, uint64_t a2)
{
  sub_1D7A77F38(0, &qword_1EE0BF828, MEMORY[0x1E69B5D58], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A780AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7A77F38(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7A7811C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (([v2 respondsToSelector_] & 1) == 0 || objc_msgSend(v2, sel_role) != 5)
  {
    return *(v1 + 48);
  }

  v3 = sub_1D7D2E4EC();
  sub_1D798F878(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
  swift_allocError();
  *v4 = 0xD000000000000038;
  v4[1] = 0x80000001D7D6D340;
  (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E69B5AC8], v3);
  return swift_willThrow();
}

void sub_1D7A78240()
{
  if (!qword_1EE0C0250)
  {
    sub_1D7A782C0(255, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0250);
    }
  }
}

void sub_1D7A782C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7A78310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7A78378()
{
  result = qword_1EE0BB430[0];
  if (!qword_1EE0BB430[0])
  {
    sub_1D7A77F38(255, &qword_1EE0BB428, type metadata accessor for MoreToReadEndOfArticleFeedGroupEmitter, MEMORY[0x1E69D65D0]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0BB430);
  }

  return result;
}

uint64_t sub_1D7A78400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A784BC()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC12NewsArticles37ANFIssueTableOfContentsViewController_viewController];
  v4 = [v3 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v2 addSubview_];

  [v0 addChildViewController_];
  v6 = [v3 view];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 setAutoresizingMask_];

  v8 = [v3 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame_];
  [v3 didMoveToParentViewController_];
  v20 = [v0 view];
  if (v20)
  {
    v22 = v20;
    MEMORY[0x1EEE9AC00](v20, v21);
    sub_1D7A78C10();
    sub_1D7A78D38(&unk_1EC9E3240, sub_1D7A78C10);
    sub_1D7D310AC();

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1D7A78718(uint64_t a1)
{
  sub_1D7A78CA4();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + OBJC_IVAR____TtC12NewsArticles37ANFIssueTableOfContentsViewController_issue);
  sub_1D7D2F1FC();
  sub_1D7D2F20C();
  sub_1D7A78D38(&qword_1EC9E3230, MEMORY[0x1E69B6198]);
  *v5 = sub_1D7D2A03C();
  v5[1] = v7;
  sub_1D7A78D38(&qword_1EC9E3238, sub_1D7A78CA4);
  return sub_1D7D2F18C();
}

uint64_t sub_1D7A78B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(*v4 + OBJC_IVAR____TtC12NewsArticles37ANFIssueTableOfContentsViewController_viewController + 8);
  ObjectType = swift_getObjectType();
  return a4(a1, ObjectType, v7);
}

id sub_1D7A78B74(uint64_t a1, uint64_t a2, uint64_t a3, Class a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(a4);
  v12 = &v11[OBJC_IVAR____TtC12NewsArticles37ANFIssueTableOfContentsViewController_viewController];
  *v12 = a1;
  *(v12 + 1) = a6;
  *&v11[OBJC_IVAR____TtC12NewsArticles37ANFIssueTableOfContentsViewController_issue] = a2;
  *&v11[OBJC_IVAR____TtC12NewsArticles37ANFIssueTableOfContentsViewController_commandContainer] = a3;
  v14.receiver = v11;
  v14.super_class = a4;
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D7A78C10()
{
  if (!qword_1EC9E3220)
  {
    sub_1D7A78CA4();
    sub_1D7A78D38(&qword_1EC9E3238, sub_1D7A78CA4);
    v0 = sub_1D7D2F19C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3220);
    }
  }
}

void sub_1D7A78CA4()
{
  if (!qword_1EC9E3228)
  {
    sub_1D7D2F20C();
    sub_1D7A78D38(&qword_1EC9E3230, MEMORY[0x1E69B6198]);
    v0 = type metadata accessor for TableOfContentsAutomation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3228);
    }
  }
}

uint64_t sub_1D7A78D38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NoPlayingAudioInfoProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t EndOfArticleCellStyle.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

__n128 EndOfArticleStyle.init(headerStyle:cellStyle:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(a3 + 41) = result;
  *(a3 + 64) = a2;
  return result;
}

uint64_t sub_1D7A78FB8()
{
  v1 = &v7;
  sub_1D7A78EB8(v0, &v7);
  if (v10[8] == 1)
  {
    v2 = v10;
    swift_unknownObjectRelease();
    v1 = &v8;
  }

  else
  {
    v2 = &v9;
  }

  sub_1D799D69C(v1, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v5;
}

uint64_t EndOfArticleStyleType.title.getter(uint64_t a1, uint64_t a2)
{
  sub_1D7A795E0(a2, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1D7A790F4()
{
  v1 = &v7;
  sub_1D7A78EB8(v0, &v7);
  if (v10[8] == 1)
  {
    v2 = v10;
    swift_unknownObjectRelease();
    v1 = &v8;
  }

  else
  {
    v2 = &v9;
  }

  sub_1D799D69C(v1, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v5;
}

uint64_t EndOfArticleStyleType.titleColor.getter(uint64_t a1, uint64_t a2)
{
  sub_1D7A795E0(a2, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 16))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

double sub_1D7A79220()
{
  v1 = &v7;
  sub_1D7A78EB8(v0, &v7);
  if (v10[8] == 1)
  {
    v2 = v10;
    swift_unknownObjectRelease();
    v1 = &v8;
  }

  else
  {
    v2 = &v9;
  }

  sub_1D799D69C(v1, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = (*(v4 + 24))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v5;
}

double EndOfArticleStyleType.fontSize.getter(uint64_t a1, uint64_t a2)
{
  sub_1D7A795E0(a2, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 24))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

double sub_1D7A7935C()
{
  v1 = &v7;
  sub_1D7A78EB8(v0, &v7);
  if (v10[8] == 1)
  {
    v2 = v10;
    swift_unknownObjectRelease();
    v1 = &v8;
  }

  else
  {
    v2 = &v9;
  }

  sub_1D799D69C(v1, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v5;
}

double EndOfArticleStyleType.fontSizeiPad.getter(uint64_t a1, uint64_t a2)
{
  sub_1D7A795E0(a2, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1D7A79498(double a1)
{
  v3 = &v9;
  sub_1D7A78EB8(v1, &v9);
  if (v12[8] == 1)
  {
    v4 = v12;
    swift_unknownObjectRelease();
    v3 = &v10;
  }

  else
  {
    v4 = &v11;
  }

  sub_1D799D69C(v3, v13);
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = (*(v6 + 40))(v5, v6, a1);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v7;
}

uint64_t EndOfArticleStyleType.font(size:)(double a1, uint64_t a2, uint64_t a3)
{
  sub_1D7A795E0(a3, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 40))(v4, v5, a1);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1D7A795E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = &v6;
  (*(a1 + 16))(&v6);
  if (v9[8] == 1)
  {
    v4 = v9;
    swift_unknownObjectRelease();
    v3 = &v7;
  }

  else
  {
    v4 = &v8;
  }

  return sub_1D799D69C(v3, a2);
}

unint64_t sub_1D7A79668()
{
  result = qword_1EC9E32B0;
  if (!qword_1EC9E32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E32B0);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D7A79748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7A79784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7A797D4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D7A7986C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D7A798B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7A79918(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v3[5] = type metadata accessor for EndOfRecipeFeedContentConfig();
  v3[6] = swift_task_alloc();
  v5 = sub_1D7D2824C();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_1D7A7AD10();
  v3[11] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[12] = v6;
  *v6 = v3;
  v6[1] = sub_1D7A79A7C;

  return sub_1D7A7A170(a2);
}

uint64_t sub_1D7A79A7C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D7A79BEC, 0, 0);
  }
}

uint64_t sub_1D7A79BEC()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1((v0[4] + 32), *(v0[4] + 56));
  sub_1D7D3095C();
  *v1 = v2;
  v3 = *MEMORY[0x1E69D63E0];
  v4 = sub_1D7D28B8C();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v0[15] = sub_1D7D2F65C();

  sub_1D79EB04C(v1);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1D7A79D90;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1D7A79D90()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1D7A7A0DC;
  }

  else
  {

    v2 = sub_1D7A79EAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A79EAC()
{
  v1 = v0[2];
  v2 = [v1 fileURL];
  if (v2)
  {
    v3 = v0[17];
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v2;
    sub_1D7D281EC();

    (*(v7 + 32))(v4, v5, v6);
    v9 = sub_1D7D2825C();
    if (!v3)
    {
      v12 = v9;
      v13 = v10;
      sub_1D7A7AC54();
      sub_1D7D28A7C();
      v15 = v0[6];
      v16 = v0[3];
      (*(v0[8] + 8))(v0[10], v0[7]);
      sub_1D79EA2E4(v12, v13);

      sub_1D7A7ACAC(v15, v16);

      v17 = v0[1];
      goto LABEL_7;
    }

    (*(v0[8] + 8))(v0[10], v0[7]);
  }

  else
  {
    sub_1D7A7AD68();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  v17 = v0[1];
LABEL_7:

  return v17();
}

uint64_t sub_1D7A7A0DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A7A170(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D7A7A190, 0, 0);
}

uint64_t sub_1D7A7A190()
{
  v17 = v0;
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BB60);
  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C6C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = [v6 identifier];
    v10 = sub_1D7D3034C();
    v12 = v11;

    v13 = sub_1D7B06D4C(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1D7987000, v4, v5, "EndOfRecipeFeedConfigManager resolving resource identifier for recipe id=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1DA7102E0](v8, -1, -1);
    MEMORY[0x1DA7102E0](v7, -1, -1);
  }

  swift_getObjectType();
  v0[5] = sub_1D7D30F6C();
  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = sub_1D7A7A3AC;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1D7A7A3AC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D7A7A600;
  }

  else
  {

    v2 = sub_1D7A7A4C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A7A4C8()
{
  v1 = *(v0 + 16);
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_endOfRecipeFeedConfigurationResourceId)) != 0)
  {
    v3 = v2;
    v4 = sub_1D7D3034C();
    v6 = v5;

    swift_unknownObjectRelease();
    v7 = *(v0 + 8);

    return v7(v4, v6);
  }

  else
  {
    sub_1D7A7AD68();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D7A7A600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A7A664(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = type metadata accessor for EndOfRecipeFeedContentConfig();
  v3[8] = swift_task_alloc();
  v4 = sub_1D7D2824C();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_1D7D27F2C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A7A7B4, 0, 0);
}

uint64_t sub_1D7A7A7B4()
{
  (*(v0[10] + 16))(v0[11], v0[5], v0[9]);
  sub_1D7D27F1C();
  v1 = [objc_opt_self() sharedSession];
  v0[15] = sub_1D7D2933C();

  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1D7A7A8C0;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1D7A7A8C0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1D7A7AB44;
  }

  else
  {
    v2 = sub_1D7A7A9F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A7A9F4()
{
  v1 = v0[17];
  v2 = v0[2];
  v3 = v0[3];
  sub_1D7A7AC54();
  sub_1D7D28A7C();
  v4 = v0[13];
  if (v1)
  {
    (*(v4 + 8))(v0[14], v0[12]);
    sub_1D79EA2E4(v2, v3);
  }

  else
  {
    v6 = v0[8];
    v7 = v0[4];
    (*(v4 + 8))();
    sub_1D79EA2E4(v2, v3);
    sub_1D7A7ACAC(v6, v7);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D7A7AB44()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D7A7ABE0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7A7AC54()
{
  result = qword_1EC9E32B8;
  if (!qword_1EC9E32B8)
  {
    type metadata accessor for EndOfRecipeFeedContentConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E32B8);
  }

  return result;
}

uint64_t sub_1D7A7ACAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeFeedContentConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7A7AD10()
{
  if (!qword_1EE0C04E0)
  {
    sub_1D7D28B8C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C04E0);
    }
  }
}

unint64_t sub_1D7A7AD68()
{
  result = qword_1EC9E32C8;
  if (!qword_1EC9E32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E32C8);
  }

  return result;
}

unint64_t sub_1D7A7ADD0()
{
  result = qword_1EC9E32D0;
  if (!qword_1EC9E32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E32D0);
  }

  return result;
}

void sub_1D7A7AE48(char a1)
{
  v3 = [v1 layer];
  v4 = sub_1D7D3031C();
  v17 = [v3 animationForKey_];

  v5 = v17;
  if (!v17)
  {
    v6 = sub_1D7D3031C();
    v7 = [objc_opt_self() animationWithKeyPath_];

    [v7 setDamping_];
    [v7 setStiffness_];
    [v7 setMass_];
    [v7 setInitialVelocity_];
    v8 = [v1 layer];
    [v8 setAnchorPointWithoutChangingPositionWithNewAnchorPoint_];

    v18 = v7;
    if (a1)
    {
      v9 = sub_1D7D28A4C();
      [v18 setFromValue_];

      v10 = sub_1D7D309DC();
      [v18 setToValue_];

      v11 = [v1 layer];
      v12 = sub_1D7D3031C();
      [v11 addAnimation:v18 forKey:v12];
    }

    else
    {
      v13 = sub_1D7D309DC();
      [v18 setFromValue_];

      v14 = sub_1D7D28A4C();
      [v18 setToValue_];

      v15 = [v1 layer];
      v16 = sub_1D7D3031C();
      [v15 addAnimation:v18 forKey:v16];

      v12 = [v1 layer];
      [v12 position];
      [v12 setPosition_];
    }

    v5 = v18;
  }
}

uint64_t sub_1D7A7B218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7A7B260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReportConcernDetailLayoutSectionDescriptor();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7A7C9C4();
  sub_1D7D2A43C();
  v9 = v17;
  if (v17)
  {
    v10 = v16;
  }

  else
  {
    if (qword_1EC9DFD10 != -1)
    {
      swift_once();
    }

    v10 = qword_1ECA0BA88;
  }

  *v8 = v10;
  v8[1] = v9;
  sub_1D7D2A43C();
  if (v15)
  {
  }

  sub_1D7A2AD80(0, &qword_1EC9E2640);
  v11 = sub_1D7D2B14C();
  MEMORY[0x1EEE9AC00](v11, v12);
  *&v14[-16] = a2;
  *&v14[-8] = a3;
  sub_1D7A285C8(sub_1D7A7CA40, &v14[-32]);
  type metadata accessor for ReportConcernDetailLayoutModel();
  sub_1D7A7B218(&unk_1EC9E7FF0, type metadata accessor for ReportConcernDetailLayoutSectionDescriptor);
  sub_1D7A7B218(&unk_1EC9E26C0, type metadata accessor for ReportConcernDetailLayoutModel);
  return sub_1D7D2B03C();
}

uint64_t sub_1D7A7B4B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v127 = a2;
  v125 = a1;
  v146 = a3;
  v120 = sub_1D7D2B15C();
  v119 = *(v120 - 1);
  MEMORY[0x1EEE9AC00](v120, v3);
  v118 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for ReportConcernDetailLayoutModel();
  MEMORY[0x1EEE9AC00](v145, v5);
  v7 = (v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = sub_1D7D2F3FC();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v8);
  v141 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1D7A2ADEC(0, &unk_1EC9E2660, MEMORY[0x1E69D7358], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v140 = v99 - v13;
  v135 = sub_1D7D2F41C();
  MEMORY[0x1EEE9AC00](v135, v14);
  v137 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1D7D2F46C();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139, v16);
  v136 = v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1D7D301FC();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v18);
  v128 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7D2ECFC();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v126 = v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1D7D2EB4C();
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v23);
  v124 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2ADEC(0, &unk_1EE0BF9F8, MEMORY[0x1E69B58F8], v10);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v117 = v99 - v27;
  sub_1D7A2ADEC(0, &unk_1EE0BF9D0, MEMORY[0x1E69B59B8], v10);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v116 = v99 - v30;
  sub_1D7A2ADEC(0, &qword_1EE0BFC08, MEMORY[0x1E69B3E58], v10);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v115 = v99 - v33;
  v34 = sub_1D7D2ED3C();
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v122 = v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1D7D2F44C();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v37);
  v144 = v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1D7D2F00C();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v39);
  v112 = v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D7D288EC();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = v99 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1D7D2889C();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v46);
  v148 = v99 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A13800();
  sub_1D7D29EEC();
  v48 = v153;
  v147 = v152;
  v49 = v154;
  v50 = v155;
  v52 = v156;
  v51 = v157;
  if (v158)
  {
    v53 = v118;
    sub_1D7D2B14C();
    sub_1D7A2AD80(0, &qword_1EC9E5EF0);
    v55 = *(v54 + 48);
    *v7 = v147;
    v7[1] = v48;
    v7[2] = v49;
    v7[3] = v50;
    v7[4] = v52;
    v7[5] = v51;
    v56 = v119;
    v57 = v120;
    (*(v119 + 16))(v7 + v55, v53, v120);
    swift_storeEnumTagMultiPayload();
    sub_1D7A7B218(&unk_1EC9E26C0, type metadata accessor for ReportConcernDetailLayoutModel);
    sub_1D7D2ABAC();
    return (*(v56 + 8))(v53, v57);
  }

  else
  {
    v109 = v153;
    v110 = v154;
    v111 = v155;
    v118 = v156;
    v119 = v157;
    v120 = v7;
    sub_1D7D2AF9C();
    sub_1D7D3100C();
    v108 = v59;
    v107 = v60;
    sub_1D7D2AF9C();
    v106 = v61;
    v105 = v62;
    sub_1D7D2AFDC();
    v104 = v63;
    v103 = v64;
    sub_1D7D2AF7C();
    v102 = v65;
    v101 = v66;
    sub_1D7D2AFEC();
    v99[1] = v67;
    v99[0] = v68;
    sub_1D7D2AFCC();
    sub_1D7D2AF8C();
    sub_1D7D2AFBC();
    sub_1D7D2AFFC();
    sub_1D7D2AFAC();
    v69 = *MEMORY[0x1E69D7278];
    v70 = *(v42 + 104);
    v100 = v41;
    v70(v45, v69, v41);
    sub_1D7D2886C();
    __swift_project_boxed_opaque_existential_1((v127 + 16), *(v127 + 40));
    v71 = v113;
    v72 = v112;
    v73 = v114;
    (*(v113 + 104))(v112, *MEMORY[0x1E69B6110], v114);
    sub_1D7D2887C();
    sub_1D7D2F54C();
    (*(v42 + 8))(v45, v100);
    (*(v71 + 8))(v72, v73);
    sub_1D7D2F0BC();
    sub_1D7D2F0AC();
    v74 = sub_1D7D2CB2C();
    (*(*(v74 - 8) + 56))(v115, 1, 1, v74);
    v75 = sub_1D7D2E11C();
    (*(*(v75 - 8) + 56))(v116, 1, 1, v75);
    v76 = sub_1D7D2DEAC();
    (*(*(v76 - 8) + 56))(v117, 1, 1, v76);
    (*(v121 + 104))(v124, *MEMORY[0x1E69B5E08], v123);
    swift_unknownObjectRetain();
    sub_1D7D2ECEC();
    sub_1D7D2ECAC();
    sub_1D799CC84(v151, &v150);
    v149[3] = sub_1D7D2EF4C();
    v149[4] = MEMORY[0x1E69B60C8];
    __swift_allocate_boxed_opaque_existential_1(v149);
    sub_1D7D2EF3C();
    sub_1D7D2E87C();
    swift_allocObject();
    sub_1D7D2E85C();
    v77 = v129;
    v78 = v128;
    v79 = v130;
    (*(v129 + 104))(v128, *MEMORY[0x1E69B68A8], v130);
    sub_1D7D2E86C();

    (*(v77 + 8))(v78, v79);
    v80 = v144;
    sub_1D7D2F42C();
    v150 = MEMORY[0x1E69E7CC0];
    sub_1D7A7B218(&unk_1EC9E3300, MEMORY[0x1E69B62A8]);
    sub_1D7A2ADEC(0, &unk_1EC9E2680, MEMORY[0x1E69B62A8], MEMORY[0x1E69E62F8]);
    sub_1D7A2AE50();
    sub_1D7D313AC();
    v81 = *MEMORY[0x1E69D7348];
    v82 = sub_1D7D2895C();
    v83 = *(v82 - 8);
    v84 = v140;
    (*(v83 + 104))(v140, v81, v82);
    (*(v83 + 56))(v84, 0, 1, v82);
    v85 = *MEMORY[0x1E69DDC70];
    v86 = v136;
    sub_1D7D2F45C();
    MEMORY[0x1DA70CE70](v80, v86, 16.0, 16.0, 16.0, -16.0);
    (*(v138 + 8))(v86, v139);
    v87 = v141;
    v88 = v159;
    sub_1D7D289AC();
    v159 = v88;
    if (v88)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      sub_1D7A2AED8();
      v90 = *(v89 + 48);
      v91 = *(v89 + 64);
      v92 = v120;
      v93 = v147;
      *v120 = v147;
      v94 = v133;
      v95 = v80;
      v96 = v134;
      (*(v133 + 16))(&v92[v90], v95, v134);
      v97 = v142;
      v98 = v143;
      (*(v142 + 16))(&v92[v91], v87, v143);
      swift_storeEnumTagMultiPayload();
      sub_1D7A7B218(&unk_1EC9E26C0, type metadata accessor for ReportConcernDetailLayoutModel);
      swift_unknownObjectRetain();
      sub_1D7D2ABAC();

      sub_1D7A1385C(v93, v109, v110, v111, v118, v119, 0);
      (*(v97 + 8))(v87, v98);
      (*(v94 + 8))(v144, v96);
      __swift_destroy_boxed_opaque_existential_1(v151);
      return (*(v131 + 8))(v148, v132);
    }
  }

  return result;
}

uint64_t sub_1D7A7C694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_1D7D2B02C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_1D7D288EC();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[10] = v7;
  v4[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D7A7C7B8, 0, 0);
}

uint64_t sub_1D7A7C7B8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v11 = v0[11];
  sub_1D7D2E1FC();
  sub_1D7D2E1EC();
  sub_1D7D2E1DC();

  sub_1D7D288DC();
  (*(v3 + 8))(v1, v2);
  (*(v5 + 16))(v4, v7, v6);
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v11;
  sub_1D7A281FC(sub_1D7A7C9A4, v8);

  type metadata accessor for ReportConcernDetailLayoutSectionDescriptor();
  type metadata accessor for ReportConcernDetailLayoutModel();
  sub_1D7A7B218(&unk_1EC9E7FF0, type metadata accessor for ReportConcernDetailLayoutSectionDescriptor);
  sub_1D7A7B218(&unk_1EC9E26C0, type metadata accessor for ReportConcernDetailLayoutModel);
  sub_1D7D2A21C();

  v9 = v0[1];

  return v9();
}

void sub_1D7A7C9C4()
{
  if (!qword_1EC9E32E0)
  {
    sub_1D7A133E8();
    sub_1D7A13440();
    v0 = sub_1D7D2A49C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E32E0);
    }
  }
}

uint64_t type metadata accessor for ToolbarIssueCover()
{
  result = qword_1EC9E3318;
  if (!qword_1EC9E3318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D7A7CAD4()
{
  result = sub_1D7D2EEBC();
  if (v1 <= 0x3F)
  {
    result = sub_1D79EB250();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id static OS_os_log.audio.getter()
{
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0C05E8;

  return v1;
}

uint64_t sub_1D7A7CC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  *a4 = result;
  return result;
}

uint64_t sub_1D7A7CCE0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  qword_1EE0CABE8 = result;
  return result;
}

uint64_t sub_1D7A7CDB4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  qword_1EE0C9560 = result;
  return result;
}

uint64_t sub_1D7A7CE90()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  qword_1EE0CA138 = result;
  return result;
}

uint64_t sub_1D7A7CF68()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  qword_1EC9E3328 = result;
  return result;
}

uint64_t sub_1D7A7D040()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  qword_1EC9E3330 = result;
  return result;
}

uint64_t sub_1D7A7D10C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  qword_1EC9E3338 = result;
  return result;
}

uint64_t sub_1D7A7D1E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  qword_1EC9E3340 = result;
  return result;
}

uint64_t sub_1D7A7D2AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  qword_1EC9E3348 = result;
  return result;
}

uint64_t sub_1D7A7D384()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  qword_1EC9E3350 = result;
  return result;
}

uint64_t sub_1D7A7D454()
{
  v0 = sub_1D7D29AFC();
  __swift_allocate_value_buffer(v0, qword_1ECA0BAD0);
  __swift_project_value_buffer(v0, qword_1ECA0BAD0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1D7D3034C();
  }

  return sub_1D7D29AEC();
}

uint64_t sub_1D7A7D590()
{
  v0 = sub_1D7D29AFC();
  __swift_allocate_value_buffer(v0, qword_1ECA0BB18);
  __swift_project_value_buffer(v0, qword_1ECA0BB18);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1D7D3034C();
  }

  return sub_1D7D29AEC();
}

uint64_t sub_1D7A7D77C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D7D29AFC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    sub_1D7D3034C();
  }

  return sub_1D7D29AEC();
}

Swift::Void __swiftcall CancelHandlerType.cancel()()
{
  v1 = (*(v0 + 16))();
  if (v1)
  {
    v2 = v1;
    v1();

    sub_1D79AD740(v2);
  }
}

uint64_t sub_1D7A7D8D4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D7A7DE38;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D79C9398(v4);
}

uint64_t sub_1D7A7D968(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D7A7DE10;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1D79C9398(v3);
  return sub_1D79AD740(v8);
}

uint64_t CancelHandler.onCancel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1D79C9398(v1);
  return v1;
}

uint64_t CancelHandler.onCancel.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1D79AD740(v5);
}

uint64_t CancelHandler.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t CancelHandler.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t CancelHandler.__deallocating_deinit()
{
  sub_1D79AD740(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A7DBA4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_1D79C9398(v2);
  return v2;
}

uint64_t sub_1D7A7DBF8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return sub_1D79AD740(v6);
}

unint64_t sub_1D7A7DCA4(uint64_t a1)
{
  result = sub_1D7A7DCCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7A7DCCC()
{
  result = qword_1EC9E3358;
  if (!qword_1EC9E3358)
  {
    type metadata accessor for CancelHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3358);
  }

  return result;
}

uint64_t sub_1D7A7DD44()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3)
  {

    v3(v4);
    return sub_1D79AD740(v3);
  }

  return result;
}

uint64_t sub_1D7A7DE48(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A7DF14();
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798F168(0, &qword_1EE0CBB60);
    result = sub_1D7D28D2C();
    if (v3)
    {
      return sub_1D7D2FCEC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D7A7DF14()
{
  result = qword_1EE0BF0D0;
  if (!qword_1EE0BF0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BF0D0);
  }

  return result;
}

uint64_t ProxyConfiguration.usePrivateRelay.getter()
{
  swift_getObjectType();
  if (qword_1EE0CB550 != -1)
  {
    swift_once();
  }

  sub_1D7A7E6C4();
  sub_1D7D285AC();
  if (v4 == 1)
  {
    if (qword_1EE0CB538 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles18ProxyConfiguration_embedProxyConfiguration);
    if (v1)
    {
      [v1 usePrivateRelay];
    }

    v2 = sub_1D7D285CC();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t ProxyConfiguration.proxyAutoConfigScript.getter()
{
  swift_getObjectType();
  if (qword_1EE0CB550 != -1)
  {
    swift_once();
  }

  sub_1D7A7E6C4();
  sub_1D7D285AC();
  if (v7 == 1)
  {
    if (qword_1EE0CB5D8 != -1)
    {
      swift_once();
    }

    if (sub_1D7D2860C())
    {

      sub_1D7D285AC();

      sub_1D7D3145C();
      MEMORY[0x1DA70DE90](0xD000000000000034, 0x80000001D7D6D8C0);
      MEMORY[0x1DA70DE90]();

      MEMORY[0x1DA70DE90](2099264295, 0xE400000000000000);
      return 0;
    }

    v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles18ProxyConfiguration_embedProxyConfiguration);
    if (v2)
    {
      v3 = v2;
      v4 = [v3 proxyAutoConfig];
      if (v4)
      {
        v5 = v4;
        v6 = sub_1D7D3034C();

        return v6;
      }
    }
  }

  return 0xD000000000000038;
}

id ProxyConfiguration.proxyHost.getter()
{
  swift_getObjectType();
  sub_1D7A7E73C();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0CB550 != -1)
  {
    swift_once();
  }

  sub_1D7A7E6C4();
  sub_1D7D285AC();
  if (v10 != 1)
  {
    return 0;
  }

  if (qword_1EE0CB5D8 != -1)
  {
    swift_once();
  }

  if (sub_1D7D2860C())
  {

    sub_1D7D285AC();

    sub_1D7D280CC();

    v5 = sub_1D7D280DC();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1D7A7E794(v4);
      return 0;
    }

    v9 = sub_1D7D2809C();
    (*(v6 + 8))(v4, v5);
    return v9;
  }

  result = *(v0 + OBJC_IVAR____TtC12NewsArticles18ProxyConfiguration_embedProxyConfiguration);
  if (result)
  {
    result = [result proxyHost];
    if (result)
    {
      v8 = result;
      v9 = sub_1D7D3034C();

      return v9;
    }
  }

  return result;
}

id ProxyConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProxyConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D7A7E6C4()
{
  result = qword_1EE0C9180;
  if (!qword_1EE0C9180)
  {
    type metadata accessor for ProxyConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C9180);
  }

  return result;
}

void sub_1D7A7E73C()
{
  if (!qword_1EE0BDEC0)
  {
    sub_1D7D280DC();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BDEC0);
    }
  }
}

uint64_t sub_1D7A7E794(uint64_t a1)
{
  sub_1D7A7E73C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A7E830@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = type metadata accessor for EndOfArticleFeedConfig();
  MEMORY[0x1EEE9AC00](v44, v3);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1D798EA30(0, &qword_1EE0BF9B8, MEMORY[0x1E69B59C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v46 = &v43 - v8;
  sub_1D798EA30(0, &qword_1EE0C04A0, sub_1D7A7F478, v5);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v43 - v11;
  sub_1D798EA30(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v43 - v15;
  sub_1D7A7F700(0, &qword_1EE0C0358, MEMORY[0x1E69D6990]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v43 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A7F544();
  v23 = v48;
  sub_1D7D31ADC();
  if (v23)
  {
    v36 = a1;
  }

  else
  {
    v24 = v19;
    v48 = a1;
    v25 = v47;
    sub_1D7D2833C();
    v51 = 0;
    sub_1D7A7F83C(&qword_1EE0CB748, MEMORY[0x1E6969530]);
    v26 = v22;
    sub_1D7D2926C();
    v43 = v16;
    sub_1D7A7F478();
    v28 = v27;
    v50 = 1;
    sub_1D7A7F83C(&qword_1EE0C04B0, sub_1D7A7F478);
    v29 = v12;
    sub_1D7D2926C();
    v30 = v24;
    v31 = *(v28 - 8);
    if ((*(v31 + 48))(v29, 1, v28) == 1)
    {
      sub_1D7A7F598(v29, &qword_1EE0C04A0, sub_1D7A7F478);
      v32 = 0;
    }

    else
    {
      v33 = sub_1D7D28D3C();
      v34 = v29;
      v32 = v33;
      (*(v31 + 8))(v34, v28);
    }

    v35 = v45;
    sub_1D7D2E1BC();
    v49 = 2;
    sub_1D7A7F83C(&qword_1EE0BF9C0, MEMORY[0x1E69B59C0]);
    sub_1D7D2926C();
    v38 = MEMORY[0x1E6969530];
    v39 = v32;
    v40 = v43;
    sub_1D7A7F3F8(v43, v35, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
    if (!v39)
    {
      v39 = MEMORY[0x1E69E7CC0];
    }

    sub_1D7A7F598(v40, &qword_1EE0CFC20, v38);
    (*(v30 + 8))(v26, v18);
    v41 = v25;
    v42 = v44;
    *(v35 + *(v44 + 20)) = v39;
    sub_1D7A7F608(v46, v35 + *(v42 + 24));
    sub_1D7A7F69C(v35, v41);
    v36 = v48;
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_1D7A7EE24(void *a1)
{
  v3 = v1;
  sub_1D7A7F700(0, &qword_1EC9E3370, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A7F544();
  sub_1D7D31B1C();
  v14 = 0;
  sub_1D7D2833C();
  sub_1D7A7F83C(&qword_1EC9E3378, MEMORY[0x1E6969530]);
  sub_1D7D3186C();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for EndOfArticleFeedConfig() + 20));
    v12[15] = 1;
    sub_1D798EA30(0, &qword_1EE0CBAF0, type metadata accessor for EndOfArticleFeedGroupConfig, MEMORY[0x1E69E62F8]);
    sub_1D7A7F764();
    sub_1D7D318BC();
    v12[14] = 2;
    sub_1D7D2E1BC();
    sub_1D7A7F83C(&qword_1EC9E3388, MEMORY[0x1E69B59C0]);
    sub_1D7D3186C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7A7F0B4()
{
  v1 = 0x7370756F7267;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x446873696C627570;
  }
}

uint64_t sub_1D7A7F114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7A7F99C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7A7F13C(uint64_t a1)
{
  v2 = sub_1D7A7F544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A7F178(uint64_t a1)
{
  v2 = sub_1D7A7F544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7A7F248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = MEMORY[0x1E6969530];
  sub_1D798EA30(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v14 - v11;
  sub_1D7A7F3F8(v5, &v14 - v11, &qword_1EE0CFC20, v8);
  sub_1D7A7F3F8(v5 + *(a2 + 24), a3 + *(a2 + 24), &qword_1EE0BF9B8, MEMORY[0x1E69B59C0]);
  sub_1D7A7F3F8(v12, a3, &qword_1EE0CFC20, v8);

  result = sub_1D7A7F598(v12, &qword_1EE0CFC20, v8);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

uint64_t sub_1D7A7F3F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D798EA30(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D7A7F478()
{
  if (!qword_1EE0C04A8)
  {
    type metadata accessor for EndOfArticleFeedGroupConfig();
    sub_1D7A7F83C(&qword_1EE0C5110, type metadata accessor for EndOfArticleFeedGroupConfig);
    sub_1D7A7F83C(&qword_1EE0C5120, type metadata accessor for EndOfArticleFeedGroupConfig);
    v0 = sub_1D7D28D4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C04A8);
    }
  }
}

unint64_t sub_1D7A7F544()
{
  result = qword_1EE0C72F8[0];
  if (!qword_1EE0C72F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C72F8);
  }

  return result;
}

uint64_t sub_1D7A7F598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D798EA30(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7A7F608(uint64_t a1, uint64_t a2)
{
  sub_1D798EA30(0, &qword_1EE0BF9B8, MEMORY[0x1E69B59C0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A7F69C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7A7F700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7A7F544();
    v7 = a3(a1, &type metadata for EndOfArticleFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7A7F764()
{
  result = qword_1EC9E3380;
  if (!qword_1EC9E3380)
  {
    sub_1D798EA30(255, &qword_1EE0CBAF0, type metadata accessor for EndOfArticleFeedGroupConfig, MEMORY[0x1E69E62F8]);
    sub_1D7A7F83C(&qword_1EE0C5120, type metadata accessor for EndOfArticleFeedGroupConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3380);
  }

  return result;
}

uint64_t sub_1D7A7F83C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7A7F898()
{
  result = qword_1EC9E3390;
  if (!qword_1EC9E3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3390);
  }

  return result;
}

unint64_t sub_1D7A7F8F0()
{
  result = qword_1EE0C72E8;
  if (!qword_1EE0C72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C72E8);
  }

  return result;
}

unint64_t sub_1D7A7F948()
{
  result = qword_1EE0C72F0;
  if (!qword_1EE0C72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C72F0);
  }

  return result;
}

uint64_t sub_1D7A7F99C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446873696C627570 && a2 == 0xEB00000000657461;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7D3197C();

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

id sub_1D7A7FAB4(void *a1, void *a2)
{
  v3 = [a1 userInterfaceStyle];
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
      result = sub_1D7D3160C();
      __break(1u);
      return result;
    }

    v8 = [objc_opt_self() systemBackgroundColor];
  }

  else
  {
    if (a2)
    {
      v4 = [a2 backgroundColor];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 ne_color];

        return v6;
      }
    }

    v8 = [objc_opt_self() whiteColor];
  }

  return v8;
}

id sub_1D7A7FC04(void *a1, id a2)
{
  if (!a1 || (v3 = [a1 sourceChannel]) == 0 || (v4 = objc_msgSend(v3, sel_theme), swift_unknownObjectRelease(), !v4))
  {
    if (a2)
    {
      v4 = [objc_msgSend(a2 sourceChannel)];
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = 0;
    }
  }

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = sub_1D7D3034C();
  v9 = v8;

  if (v7 == 0xD000000000000010 && 0x80000001D7D6D9F0 == v9)
  {
  }

  else
  {
    v11 = sub_1D7D3197C();

    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (!v13)
  {
    v19 = [objc_opt_self() blackColor];
    swift_unknownObjectRelease();
    return v19;
  }

LABEL_16:
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v20[4] = sub_1D7A7FEA0;
  v20[5] = v14;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1D7B5C448;
  v20[3] = &block_descriptor_9;
  v16 = _Block_copy(v20);
  v17 = [v15 initWithDynamicProvider_];
  _Block_release(v16);

  return v17;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7A7FF20(uint64_t a1)
{
  v2 = sub_1D7D2CBAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69B3ED8])
  {
    (*(v3 + 96))(v6, v2);
    sub_1D79E14FC(v6, v14);
    v12 = 0;
    v13 = 0xE000000000000000;
    MEMORY[0x1DA70DE90](0x69666C75662E6461, 0xED00002E64656C6CLL);
    sub_1D7A80344();
    sub_1D7D315DC();
    v8 = v12;
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else if (v7 == *MEMORY[0x1E69B3E98])
  {
    (*(v3 + 96))(v6, v2);
    v9 = sub_1D7D2CB9C();
    (*(*(v9 - 8) + 8))(v6, v9);
    return 0x656C6961662E6461;
  }

  else
  {
    v8 = 0x6974696E692E6461;
    if (v7 != *MEMORY[0x1E69B3EC8])
    {
      if (v7 == *MEMORY[0x1E69B3ED0])
      {
        return 0x69646E65702E6461;
      }

      else
      {
        (*(v3 + 8))(v6, v2);
      }
    }
  }

  return v8;
}

uint64_t type metadata accessor for AdComponentState()
{
  result = qword_1EE0CA120;
  if (!qword_1EE0CA120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A802A8()
{
  result = sub_1D7D2CBAC();
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

unint64_t sub_1D7A80344()
{
  result = qword_1EE0BFB10;
  if (!qword_1EE0BFB10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BFB10);
  }

  return result;
}

uint64_t sub_1D7A803A8()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A80414@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, qword_1EE0CF6D0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for ColorPalette();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52B57D8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A804C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &unk_1EE0CBEC0);
  result = sub_1D7D28D2C();
  if (v8)
  {
    v4 = objc_opt_self();
    v5 = [v4 labelColor];
    a2[3] = &type metadata for BaseStyler;
    a2[4] = &protocol witness table for BaseStyler;
    v6 = swift_allocObject();
    *a2 = v6;
    v6[7] = [v4 labelColor];
    v6[8] = [v4 systemBackgroundColor];
    sub_1D79F85FC();
    v6[9] = sub_1D7D3115C();
    result = sub_1D799D69C(&v7, (v6 + 2));
    v6[10] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A805F4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_1D7D2839C();
  a1[4] = sub_1D7A807D0();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7D2838C();
}

uint64_t sub_1D7A80678@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &unk_1EE0CE570);
  result = sub_1D7D28D2C();
  if (v11)
  {
    v8 = a2(0);
    v9 = swift_allocObject();
    result = sub_1D799D69C(&v10, v9 + 16);
    a4[3] = v8;
    a4[4] = a3;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A80734(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &unk_1EE0CE570);
  result = sub_1D7D28D2C();
  if (v4)
  {
    type metadata accessor for ReplicaAdvertisementStyler();
    v2 = swift_allocObject();
    sub_1D799D69C(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7A807D0()
{
  result = qword_1EE0BDEA0;
  if (!qword_1EE0BDEA0)
  {
    sub_1D7D2839C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BDEA0);
  }

  return result;
}

id sub_1D7A808C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagePresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7A80940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v51 = a3;
  sub_1D7A819CC(0, &qword_1EE0C5A48, type metadata accessor for EndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v45 = &v44 - v6;
  sub_1D7A819CC(0, &qword_1EE0C50E0, type metadata accessor for EndOfArticleFeedKnobsConfig);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for EndOfArticleFeedKnobsConfig();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v49 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A819CC(0, &qword_1EE0BF9B8, MEMORY[0x1E69B59C0]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v44 - v16;
  sub_1D7A819CC(0, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v44 - v20;
  sub_1D7A819CC(0, &qword_1EE0C72D0, type metadata accessor for EndOfArticleFeedConfig);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v44 - v24;
  v26 = type metadata accessor for EndOfArticleFeedConfig();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  sub_1D7A81A20(a1, v25, &qword_1EE0C72D0, type metadata accessor for EndOfArticleFeedConfig);
  v31 = *(v27 + 48);
  if (v31(v25, 1, v26) == 1)
  {
    v32 = sub_1D7D2833C();
    (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
    v33 = sub_1D7D2E1BC();
    (*(*(v33 - 8) + 56))(v17, 1, 1, v33);
    sub_1D7A81A8C(v21, v30, &qword_1EE0CFC20, MEMORY[0x1E6969530]);
    *&v30[*(v26 + 20)] = MEMORY[0x1E69E7CC0];
    sub_1D7A81A8C(v17, &v30[*(v26 + 24)], &qword_1EE0BF9B8, MEMORY[0x1E69B59C0]);
    if (v31(v25, 1, v26) != 1)
    {
      sub_1D7A81B60(v25, &qword_1EE0C72D0, type metadata accessor for EndOfArticleFeedConfig);
    }
  }

  else
  {
    sub_1D7A81AF8(v25, v30, type metadata accessor for EndOfArticleFeedConfig);
  }

  v34 = v51;
  sub_1D7A81AF8(v30, v51, type metadata accessor for EndOfArticleFeedConfig);
  v35 = v48;
  sub_1D7A81A20(v48, v10, &qword_1EE0C50E0, type metadata accessor for EndOfArticleFeedKnobsConfig);
  v36 = v47;
  v37 = *(v46 + 48);
  v38 = v37(v10, 1, v47);
  v39 = v49;
  if (v38 == 1)
  {
    v40 = type metadata accessor for EndOfArticleFeedGroupKnobs();
    v41 = v45;
    (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
    sub_1D7AD70A4(v41, 0, 1, v39);
    sub_1D7A81B60(v35, &qword_1EE0C50E0, type metadata accessor for EndOfArticleFeedKnobsConfig);
    sub_1D7A81B60(v50, &qword_1EE0C72D0, type metadata accessor for EndOfArticleFeedConfig);
    if (v37(v10, 1, v36) != 1)
    {
      sub_1D7A81B60(v10, &qword_1EE0C50E0, type metadata accessor for EndOfArticleFeedKnobsConfig);
    }
  }

  else
  {
    sub_1D7A81B60(v35, &qword_1EE0C50E0, type metadata accessor for EndOfArticleFeedKnobsConfig);
    sub_1D7A81B60(v50, &qword_1EE0C72D0, type metadata accessor for EndOfArticleFeedConfig);
    sub_1D7A81AF8(v10, v39, type metadata accessor for EndOfArticleFeedKnobsConfig);
  }

  v42 = type metadata accessor for EndOfArticleFeedContentConfig();
  return sub_1D7A81AF8(v39, v34 + *(v42 + 20), type metadata accessor for EndOfArticleFeedKnobsConfig);
}

uint64_t sub_1D7A80FD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1D7A819CC(0, &qword_1EE0C50E0, type metadata accessor for EndOfArticleFeedKnobsConfig);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - v6;
  sub_1D7A819CC(0, &qword_1EE0C72D0, type metadata accessor for EndOfArticleFeedConfig);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v18 - v10;
  sub_1D7A81C10(0, &qword_1EE0BEB20, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v18 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A81BBC();
  sub_1D7D31AFC();
  if (!v2)
  {
    type metadata accessor for EndOfArticleFeedConfig();
    v21 = 0;
    sub_1D7A81C74(&qword_1EE0C72D8, type metadata accessor for EndOfArticleFeedConfig);
    sub_1D7D3173C();
    type metadata accessor for EndOfArticleFeedKnobsConfig();
    v20 = 1;
    sub_1D7A81C74(&qword_1EE0C50E8, type metadata accessor for EndOfArticleFeedKnobsConfig);
    sub_1D7D3173C();
    sub_1D7A80940(v11, v7, v19);
    (*(v18 + 8))(v16, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7A812B8()
{
  if (*v0)
  {
    return 0x6E6F4373626F6E6BLL;
  }

  else
  {
    return 0x666E6F4364656566;
  }
}

uint64_t sub_1D7A81300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x666E6F4364656566 && a2 == 0xEA00000000006769;
  if (v6 || (sub_1D7D3197C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F4373626F6E6BLL && a2 == 0xEB00000000676966)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7D3197C();

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

uint64_t sub_1D7A813E8(uint64_t a1)
{
  v2 = sub_1D7A81BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A81424(uint64_t a1)
{
  v2 = sub_1D7A81BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7A81460(void *a1)
{
  sub_1D7A81C10(0, &qword_1EC9E3410, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A81BBC();
  sub_1D7D31B1C();
  v10[15] = 0;
  type metadata accessor for EndOfArticleFeedConfig();
  sub_1D7A81C74(&qword_1EC9E3418, type metadata accessor for EndOfArticleFeedConfig);
  sub_1D7D318BC();
  if (!v1)
  {
    type metadata accessor for EndOfArticleFeedContentConfig();
    v10[14] = 1;
    type metadata accessor for EndOfArticleFeedKnobsConfig();
    sub_1D7A81C74(&qword_1EC9E3420, type metadata accessor for EndOfArticleFeedKnobsConfig);
    sub_1D7D318BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7A816DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7A819CC(0, &qword_1EE0C50E0, type metadata accessor for EndOfArticleFeedKnobsConfig);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  sub_1D7A819CC(0, &qword_1EE0C72D0, type metadata accessor for EndOfArticleFeedConfig);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v18 - v13;
  sub_1D7A81964(a1, &v18 - v13, type metadata accessor for EndOfArticleFeedConfig);
  v15 = type metadata accessor for EndOfArticleFeedConfig();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_1D7A81964(v3 + *(a2 + 20), v10, type metadata accessor for EndOfArticleFeedKnobsConfig);
  v16 = type metadata accessor for EndOfArticleFeedKnobsConfig();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  return sub_1D7A80940(v14, v10, a3);
}

uint64_t sub_1D7A81964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7A819CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D7A81A20(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7A819CC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7A81A8C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7A819CC(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7A81AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7A81B60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7A819CC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D7A81BBC()
{
  result = qword_1EE0C4888;
  if (!qword_1EE0C4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4888);
  }

  return result;
}

void sub_1D7A81C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7A81BBC();
    v7 = a3(a1, &type metadata for EndOfArticleFeedContentConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7A81C74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7A81CD0()
{
  result = qword_1EC9E3428;
  if (!qword_1EC9E3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3428);
  }

  return result;
}

unint64_t sub_1D7A81D28()
{
  result = qword_1EE0C4878;
  if (!qword_1EE0C4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4878);
  }

  return result;
}

unint64_t sub_1D7A81D80()
{
  result = qword_1EE0C4880;
  if (!qword_1EE0C4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4880);
  }

  return result;
}

uint64_t sub_1D7A81DF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  sub_1D799CC84(v4 + 16, v9);
  v6 = type metadata accessor for PDFReplicaPagePrewarmer();
  v7 = swift_allocObject();
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0;
  *(v7 + 16) = v5;
  sub_1D799D69C(v9, v7 + 24);
  a2[3] = v6;
  a2[4] = sub_1D7A81E8C();
  *a2 = v7;
}

unint64_t sub_1D7A81E8C()
{
  result = qword_1EC9E1EB8;
  if (!qword_1EC9E1EB8)
  {
    type metadata accessor for PDFReplicaPagePrewarmer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1EB8);
  }

  return result;
}

uint64_t RecipeViewerRecipe.dynamicDataIdentifier.getter()
{
  v1 = type metadata accessor for RecipeRouteContext();
  MEMORY[0x1EEE9AC00](v1, v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[6];
  if (v6)
  {
    v8 = v0[4];
    v7 = v0[5];
    if (v8)
    {
      *v5 = v0[3];
      *(v5 + 1) = v8;
      *(v5 + 2) = v7;
      *(v5 + 3) = v6;
      v5[32] = 1;
      v9 = *(v3 + 20);
      v10 = type metadata accessor for ArticleRouteModel();
      (*(*(v10 - 8) + 56))(&v5[v9], 1, 1, v10);

      goto LABEL_7;
    }

    *v5 = v7;
    *(v5 + 1) = v6;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    v5[32] = 0;
  }

  else
  {
    *v5 = 0u;
    *(v5 + 1) = 0u;
    v5[32] = 2;
  }

  v11 = *(v3 + 20);
  v12 = type metadata accessor for ArticleRouteModel();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
LABEL_7:
  v13 = *v5;
  v14 = *(v5 + 1);
  v15 = *(v5 + 2);
  v16 = *(v5 + 3);
  v17 = v5[32];
  sub_1D7A822E4(*v5, v14, v15, v16, v5[32]);

  sub_1D7A08A8C(v5);
  if (v17)
  {
    if (v17 == 1)
    {

      sub_1D7A82348(v13, v14, v15, v16, 1);
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

uint64_t RecipeViewerRecipe.init(recipe:identifier:feedItemIdentifier:pluginIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a2;
  a8[1] = a3;
  a8[2] = result;
  a8[3] = a6;
  a8[4] = a7;
  a8[5] = a4;
  a8[6] = a5;
  return result;
}

uint64_t RecipeViewerRecipe.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeViewerRecipe.pluginIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RecipeViewerRecipe.feedItemIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RecipeViewerRecipe.routeContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[6];
  if (v3)
  {
    v5 = v1[4];
    v4 = v1[5];
    if (v5)
    {
      *a1 = v1[3];
      *(a1 + 8) = v5;
      *(a1 + 16) = v4;
      *(a1 + 24) = v3;
      *(a1 + 32) = 1;
      v6 = *(type metadata accessor for RecipeRouteContext() + 20);
      v7 = type metadata accessor for ArticleRouteModel();
      (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);

      goto LABEL_7;
    }

    *a1 = v4;
    *(a1 + 8) = v3;
    v8 = type metadata accessor for RecipeRouteContext();
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 2;
    v8 = type metadata accessor for RecipeRouteContext();
  }

  v9 = *(v8 + 20);
  v10 = type metadata accessor for ArticleRouteModel();
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
LABEL_7:
}

uint64_t sub_1D7A822E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1D7A82348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t _s12NewsArticles012RecipeViewerC0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v7 = a2[3];
  v6 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D7D3197C() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v6 || (v2 != v7 || v3 != v6) && (sub_1D7D3197C() & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  result = (v5 | v9) == 0;
  if (v5 && v9)
  {
    if (v4 == v8 && v5 == v9)
    {
      return 1;
    }

    else
    {

      return sub_1D7D3197C();
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D7A824E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D7A82530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RecipeRouteContext.init(identifier:fallbackArticleRoute:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7A8290C(a2, sub_1D79AC334);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v5;
  v7 = *(type metadata accessor for RecipeRouteContext() + 20);
  v8 = type metadata accessor for ArticleRouteModel();
  v9 = *(*(v8 - 8) + 56);

  return v9(a3 + v7, 1, 1, v8);
}

uint64_t sub_1D7A82658()
{
  v0 = type metadata accessor for RecipeRouteContext();
  __swift_allocate_value_buffer(v0, qword_1EC9E3430);
  v1 = __swift_project_value_buffer(v0, qword_1EC9E3430);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 2;
  v2 = *(v0 + 20);
  v3 = type metadata accessor for ArticleRouteModel();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t static RecipeRouteContext.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC9DFDC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RecipeRouteContext();
  v3 = __swift_project_value_buffer(v2, qword_1EC9E3430);

  return sub_1D7A82778(v3, a1);
}

uint64_t sub_1D7A82778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeRouteContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RecipeRouteContext.init(article:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v12 = a1[2];
  v13 = v3;
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  if (*(&v11[0] + 1))
  {
    v5 = *(&v12 + 1);
    v6 = v13;
    if (*(&v12 + 1))
    {
      v7 = v12;

      sub_1D7A8290C(v11, sub_1D7A35D50);
      *a2 = v7;
      *(a2 + 8) = v5;
      *(a2 + 16) = v6;
      *(a2 + 32) = 1;
    }

    else
    {

      sub_1D7A8290C(v11, sub_1D7A35D50);
      *a2 = v6;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
    }
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 2;
  }

  v8 = *(type metadata accessor for RecipeRouteContext() + 20);
  v9 = type metadata accessor for ArticleRouteModel();
  return (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
}

uint64_t sub_1D7A8290C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles21RecipeRouteIdentifierO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1D7A82988(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D7A829D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7A82A18(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void *sub_1D7A82B6C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D7A14880();
  sub_1D7D2841C();

  swift_beginAccess();
  v5 = *(v2 + 48);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_1D7A18FFC(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1D7A82C48@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1D7A82C54(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 56);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1D7A84520(v12, v14) & 1;
}

void *sub_1D7A82CD8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1D7A14880();
  sub_1D7D2841C();

  v1 = *(v0 + 16);
  sub_1D7A84654(v1, *(v3 + 24));
  return v1;
}

void sub_1D7A82D60(uint64_t a1, void *a2, char a3)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = a2;
  v4 = *(a1 + 24);
  *(a1 + 24) = a3;
  sub_1D7A84654(a2, a3);
  sub_1D7A84670(v3, v4);
}

uint64_t sub_1D7A82DB4()
{
  swift_getKeyPath();
  sub_1D7A14880();
  sub_1D7D2841C();

  v1 = *(v0 + 32);
  sub_1D79C9398(v1);
  return v1;
}

uint64_t sub_1D7A82E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_1D79C9398(a2);
  return sub_1D79AD740(v3);
}

uint64_t sub_1D7A82E84()
{
  swift_getKeyPath();
  sub_1D7A14880();
  sub_1D7D2841C();

  swift_beginAccess();
}

uint64_t sub_1D7A82F0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D7A14880();
  sub_1D7D2841C();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D7A82F9C(uint64_t a1)
{
  swift_beginAccess();

  sub_1D7A843A0(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1D7A14880();
    sub_1D7D2840C();
  }
}

uint64_t sub_1D7A830B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

uint64_t sub_1D7A8311C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v8 = swift_task_alloc();
  v6[28] = v8;
  sub_1D7A67B64(0, &qword_1EE0BB0B0, &qword_1EE0BECC0, 0x1E69B5578, MEMORY[0x1E69E62F8]);
  v10 = v9;
  v11 = sub_1D79AC5C4();
  *v8 = v6;
  v8[1] = sub_1D7A83218;
  v12 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v6 + 20, a4, v10, v11, v12);
}

uint64_t sub_1D7A83218()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1D7A83734;
  }

  else
  {
    v2 = sub_1D7A8332C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

char *sub_1D7A8332C()
{
  v1 = *(v0 + 160);
  v35 = v0 + 160;
  if (v1 >> 62)
  {
    v27 = *(v0 + 160);
    v2 = sub_1D7D3167C();
    v1 = v27;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = v1;
  v41 = MEMORY[0x1E69E7CC0];
  result = sub_1D7A5C1FC(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = (v35 - 144);
  v7 = v41;
  v8 = v3;
  v32 = v3 & 0xC000000000000001;
  v31 = v36[26];
  v33 = v2;
  v34 = v3;
  v9 = v31;
  do
  {
    v40 = v5;
    if (v32)
    {
      v10 = MEMORY[0x1DA70EF00](v5);
    }

    else
    {
      v10 = *(v8 + 8 * v5 + 32);
    }

    v11 = v10;
    v12 = v36[26];
    v39 = v36[27];
    v13 = [v10 identifier];
    v14 = sub_1D7D3034C();
    v37 = v15;
    v38 = v14;

    swift_getKeyPath();
    v36[22] = v12;
    sub_1D7A14880();
    v16 = v11;
    sub_1D7D2841C();

    v36[23] = v12;
    swift_getKeyPath();
    sub_1D7D2843C();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v9 + 48);
    *(v9 + 48) = 0x8000000000000000;
    sub_1D7B95AC8(v16, v38, v37, isUniquelyReferenced_nonNull_native);

    *(v9 + 48) = v42;
    swift_endAccess();
    v36[24] = v12;
    swift_getKeyPath();
    sub_1D7D2842C();

    LOBYTE(v13) = [v39 canGetBundleSubscriptionToChannel_];
    swift_unknownObjectRelease();
    sub_1D7A846A8(v16, v13, v6);

    v19 = *(v41 + 16);
    v18 = *(v41 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1D7A5C1FC((v18 > 1), v19 + 1, 1);
    }

    v5 = v40 + 1;
    *(v41 + 16) = v19 + 1;
    v20 = v41 + 120 * v19;
    v21 = *v6;
    v22 = *(v35 - 128);
    v23 = *(v35 - 96);
    *(v20 + 64) = *(v35 - 112);
    *(v20 + 80) = v23;
    *(v20 + 32) = v21;
    *(v20 + 48) = v22;
    v24 = *(v35 - 80);
    v25 = *(v35 - 64);
    v26 = *(v35 - 48);
    *(v20 + 144) = *(v35 - 32);
    *(v20 + 112) = v25;
    *(v20 + 128) = v26;
    *(v20 + 96) = v24;
    v8 = v34;
  }

  while (v33 != v40 + 1);

LABEL_14:
  v28 = v36[26];
  swift_getKeyPath();
  v29 = swift_task_alloc();
  *(v29 + 16) = v28;
  *(v29 + 24) = v7;
  *(v29 + 32) = 0;
  v36[25] = v28;
  sub_1D7A14880();
  sub_1D7D2840C();

  v30 = v36[1];

  return v30();
}

uint64_t sub_1D7A83734()
{
  v1 = v0[29];
  v2 = v0[26];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 1;
  v0[21] = v2;
  sub_1D7A14880();
  sub_1D7D2840C();

  v4 = v0[1];

  return v4();
}

id sub_1D7A8383C()
{
  v0 = sub_1D7D311AC();
  v1 = [v0 thumbnailAssetHandle];

  return v1;
}

uint64_t sub_1D7A83884(double a1, double a2, double a3, double a4)
{
  *(v5 + 256) = v4;
  *(v5 + 240) = a3;
  *(v5 + 248) = a4;
  *(v5 + 224) = a1;
  *(v5 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D7A838AC, 0, 0);
}

uint64_t sub_1D7A838AC()
{
  v13 = v0;
  v1 = (*(*(v0 + 256) + 48))(*(v0 + 224), *(v0 + 232), *(v0 + 240));
  *(v0 + 264) = v1;
  if (v1)
  {
    *(v0 + 272) = sub_1D7D30BEC();
    v2 = swift_task_alloc();
    *(v0 + 280) = v2;
    *v2 = v0;
    v2[1] = sub_1D7A83AD4;

    return MEMORY[0x1EEE44EE0](v0 + 208);
  }

  else
  {
    if (qword_1EC9DFDB0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 256);
    v4 = sub_1D7D29AFC();
    __swift_project_value_buffer(v4, qword_1ECA0BB78);
    sub_1D7A84B40(v3, v0 + 16);
    v5 = sub_1D7D29ADC();
    v6 = sub_1D7D30C6C();
    sub_1D7A84B78(v3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 256);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1D7B06D4C(*v7, *(v7 + 8), &v12);
      _os_log_impl(&dword_1D7987000, v5, v6, "Recipe has no thumbnail asset, identifier=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1DA7102E0](v9, -1, -1);
      MEMORY[0x1DA7102E0](v8, -1, -1);
    }

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_1D7A83AD4()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1D7A83E08;
  }

  else
  {

    v2 = sub_1D7A83BF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A83BF0()
{
  v18 = v0;
  v1 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v2 = sub_1D7D3031C();

  v3 = [v1 initWithContentsOfFile_];

  if (v3)
  {
    v4 = v0[33];
    v5 = sub_1D7D3117C();
  }

  else
  {
    if (qword_1EC9DFDB0 != -1)
    {
      swift_once();
    }

    v6 = v0[32];
    v7 = sub_1D7D29AFC();
    __swift_project_value_buffer(v7, qword_1ECA0BB78);
    sub_1D7A84B40(v6, (v0 + 18));
    v8 = sub_1D7D29ADC();
    v9 = sub_1D7D30C4C();
    sub_1D7A84B78(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[33];
    if (v10)
    {
      v12 = v0[32];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1D7B06D4C(*v12, *(v12 + 8), &v17);
      _os_log_impl(&dword_1D7987000, v8, v9, "Recipe thumbnail image from asset is invalid, identifier=%{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1DA7102E0](v14, -1, -1);
      MEMORY[0x1DA7102E0](v13, -1, -1);
    }

    else
    {
    }

    v5 = 0;
  }

  v15 = v0[1];

  return v15(v5);
}

uint64_t sub_1D7A83E08()
{
  v19 = v0;
  v1 = v0[33];

  if (qword_1EC9DFDB0 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = v0[32];
  v4 = sub_1D7D29AFC();
  __swift_project_value_buffer(v4, qword_1ECA0BB78);
  sub_1D7A84B40(v3, (v0 + 10));
  v5 = v2;
  v6 = sub_1D7D29ADC();
  v7 = sub_1D7D30C4C();
  sub_1D7A84B78(v3);

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[36];
  if (v8)
  {
    v10 = v0[32];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_1D7B06D4C(*v10, *(v10 + 8), &v18);
    *(v11 + 12) = 2114;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_1D7987000, v6, v7, "Recipe failed to download thumbnail, identifier=%{public}s, error=%{public}@", v11, 0x16u);
    sub_1D7A72BA8(v12);
    MEMORY[0x1DA7102E0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA7102E0](v13, -1, -1);
    MEMORY[0x1DA7102E0](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16(0);
}

BOOL sub_1D7A84014(double *a1, double *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) || (v10 = sub_1D7D3197C(), result = 0, (v10 & 1) != 0))
  {
    v12.origin.x = v2;
    v12.origin.y = v3;
    v12.size.width = v4;
    v12.size.height = v5;
    v13.origin.x = v6;
    v13.origin.y = v7;
    v13.size.width = v8;
    v13.size.height = v9;
    return CGRectEqualToRect(v12, v13);
  }

  return result;
}

uint64_t sub_1D7A840B4()
{
  sub_1D7A84670(*(v0 + 16), *(v0 + 24));
  sub_1D79AD740(*(v0 + 32));

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12NewsArticles28RecipeArticleDrawerViewModel___observationRegistrar;
  v2 = sub_1D7D2845C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeArticleDrawerViewModel()
{
  result = qword_1EC9E3450;
  if (!qword_1EC9E3450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A841C8()
{
  result = sub_1D7D2845C();
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

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D7A842B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_1D7A842F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles28RecipeArticleDrawerViewModelC0cE5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_1D7A843A0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_1D7A18FFC(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_1D7992EFC(0, &qword_1EE0BECC0);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_1D7D311DC();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D7A84520(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_1D7D3197C()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (sub_1D7D3197C()) && (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (sub_1D7D3197C())) && ((v6 = *(a1 + 64), v7 = *(a1 + 72), v8 = *(a1 + 80), v9 = *(a1 + 88), v10 = *(a2 + 64), v11 = *(a2 + 72), v12 = *(a2 + 80), v13 = *(a2 + 88), *(a1 + 48) == *(a2 + 48)) && *(a1 + 56) == *(a2 + 56) || (sub_1D7D3197C()) && (v16.origin.x = v6, v16.origin.y = v7, v16.size.width = v8, v16.size.height = v9, v17.origin.x = v10, v17.origin.y = v11, v17.size.width = v12, v17.size.height = v13, CGRectEqualToRect(v16, v17)) && ((*(a1 + 112) ^ *(a2 + 112)) & 1) == 0)
  {
    v14 = *(a1 + 113) ^ *(a2 + 113) ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

id sub_1D7A84654(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_1D7A84670(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_1D7A846A8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = [a1 identifier];
  v31 = sub_1D7D3034C();
  v7 = v6;

  v8 = [a1 title];
  v9 = sub_1D7D3034C();
  v11 = v10;

  v12 = [a1 totalTime];
  v13 = sub_1D7D3034C();
  v15 = v14;

  v16 = a1;
  v17 = [v16 identifier];
  v18 = sub_1D7D3034C();
  v20 = v19;

  [v16 thumbnailFocalFrame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = v16;
  result = [v16 isPaid];
  *a3 = v31;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 40) = v15;
  *(a3 + 48) = v18;
  *(a3 + 56) = v20;
  *(a3 + 64) = v22;
  *(a3 + 72) = v24;
  *(a3 + 80) = v26;
  *(a3 + 88) = v28;
  *(a3 + 96) = sub_1D7A84B28;
  *(a3 + 104) = v29;
  *(a3 + 112) = result;
  *(a3 + 113) = a2;
  return result;
}

uint64_t sub_1D7A8483C(uint64_t a1, uint64_t a2)
{
  sub_1D7A8499C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = sub_1D7A512B8(MEMORY[0x1E69E7CC0]);
  sub_1D7D2844C();
  *(v2 + 56) = a2;
  v9 = sub_1D7D3087C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = v2;
  v10[6] = a2;
  swift_unknownObjectRetain_n();

  sub_1D7AF94C0(0, 0, v8, &unk_1D7D45000, v10);

  return v2;
}

void sub_1D7A8499C()
{
  if (!qword_1EE0BF1B0)
  {
    sub_1D7D3087C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF1B0);
    }
  }
}

uint64_t sub_1D7A849F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D7A4E2D8;

  return sub_1D7A8311C(a1, v4, v5, v6, v7, v8);
}

void sub_1D7A84AD4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = *(v0 + 32);
  *(v2 + 16) = v1;
  v5 = *(v2 + 24);
  *(v2 + 24) = v4;
  sub_1D7A84654(v1, v4);
  sub_1D7A84670(v3, v5);
}

id sub_1D7A84CD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7A84D38()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7A84E28()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7A84F04()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7A84FF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7A87294();
  *a1 = result;
  return result;
}

void sub_1D7A85020(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00004449747369;
  v4 = 0x4C656C6369747261;
  v5 = 0xE900000000000065;
  v6 = 0x7079547972657571;
  v7 = 0xE500000000000000;
  v8 = 0x4449676174;
  if (v2 != 3)
  {
    v8 = 0x4C656C6369747261;
    v7 = 0xEE00734449747369;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x49656C6369747261;
    v3 = 0xEA00000000007344;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D7A850DC()
{
  v1 = 0x4C656C6369747261;
  v2 = *v0;
  v3 = 0x7079547972657571;
  v4 = 0x4449676174;
  if (v2 != 3)
  {
    v4 = 0x4C656C6369747261;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0x49656C6369747261;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7A85184@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7A87294();
  *a1 = result;
  return result;
}

uint64_t sub_1D7A851AC(uint64_t a1)
{
  v2 = sub_1D7A86A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A851E8(uint64_t a1)
{
  v2 = sub_1D7A86A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7A85224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_1D7A86C2C(0, &qword_1EE0BEB68, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - v7;
  v9 = _s15ArticleProviderOMa();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A86A74();
  sub_1D7D31AFC();
  if (!v2)
  {
    v36 = v9;
    v37 = a1;
    v14 = v38;
    v13 = v39;
    LOBYTE(v40) = 0;
    v15 = sub_1D7D3174C();
    if (v16)
    {
      v19 = v15;
      v20 = v16;
      (*(v14 + 8))(v8, v5);
      *v12 = v19;
      v12[1] = v20;
LABEL_8:
      swift_storeEnumTagMultiPayload();
      sub_1D7A86BC4(v12, v13, _s15ArticleProviderOMa);
      v17 = v37;
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }

    sub_1D7A869EC();
    v42 = 4;
    sub_1D7A86D38(&qword_1EE0BF238);
    sub_1D7D3178C();
    v21 = v40;
    if (v40)
    {
      (*(v14 + 8))(v8, v5);
      *v12 = v21;
      goto LABEL_8;
    }

    v42 = 1;
    sub_1D7A86AC8();
    sub_1D7D3178C();
    v22 = v41;
    if (v41 != 255)
    {
      v23 = v40;
      (*(v14 + 8))(v8, v5);
      *v12 = v23;
      *(v12 + 8) = v22 & 1;
      goto LABEL_8;
    }

    v42 = 2;
    sub_1D7A86B1C();
    sub_1D7D3178C();
    v24 = v40;
    if (v40 != 15)
    {
      (*(v14 + 8))(v8, v5);
      *v12 = v24;
      goto LABEL_8;
    }

    LOBYTE(v40) = 3;
    v25 = sub_1D7D3174C();
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      (*(v14 + 8))(v8, v5);
      sub_1D7A60644();
      v30 = *(v29 + 48);
      *v12 = v27;
      v12[1] = v28;
      v31 = *MEMORY[0x1E69B5980];
      v32 = sub_1D7D2DFAC();
      (*(*(v32 - 8) + 104))(v12 + v30, v31, v32);
      goto LABEL_8;
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1D7D3145C();
    MEMORY[0x1DA70DE90](0xD00000000000002FLL, 0x80000001D7D6DDC0);
    sub_1D7D315DC();
    v33 = v40;
    v34 = v41;
    sub_1D7A86B70();
    swift_allocError();
    *v35 = v33;
    v35[1] = v34;
    swift_willThrow();
    (*(v14 + 8))(v8, v5);
    a1 = v37;
  }

  v17 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1D7A856F0(void *a1)
{
  v2 = v1;
  v4 = _s15ArticleProviderOMa();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A86C2C(0, &qword_1EE0BEAE0, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A86A74();
  sub_1D7D31B1C();
  sub_1D7A86890(v2, v7, _s15ArticleProviderOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v19 = v7[8];
      v21 = *v7;
      v22 = v19;
      v23 = 1;
      sub_1D7A86CE4();
      sub_1D7D318BC();
      (*(v10 + 8))(v13, v9);
    }

    LOBYTE(v21) = 0;
    sub_1D7D3188C();
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v21) = *v7;
      v23 = 2;
      sub_1D7A86C90();
      sub_1D7D318BC();
      return (*(v10 + 8))(v13, v9);
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D7A60644();
      v16 = *(v15 + 48);
      LOBYTE(v21) = 3;
      sub_1D7D3188C();
      (*(v10 + 8))(v13, v9);

      v17 = sub_1D7D2DFAC();
      return (*(*(v17 - 8) + 8))(&v7[v16], v17);
    }

    v21 = *v7;
    v23 = 4;
    sub_1D7A869EC();
    sub_1D7A86D38(&qword_1EE0BB0D0);
    sub_1D7D318BC();
  }

  (*(v10 + 8))(v13, v9);
}

BOOL sub_1D7A85A9C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v120 = a2;
  v112 = a3;
  v113 = a4;
  v5 = sub_1D7D2833C();
  v122 = *(v5 - 8);
  v123 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v118 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v117 = &v110 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v111 = &v110 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v119 = &v110 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v110 = &v110 - v19;
  sub_1D7A86838();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v110 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v110 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v110 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v115 = &v110 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v110 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v116 = &v110 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v110 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v110 - v52;
  MEMORY[0x1EEE9AC00](v54, v55);
  v114 = &v110 - v56;
  v57 = _s15ArticleProviderOMa();
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v110 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    return 1;
  }

  v62 = *(a1 + 16);
  sub_1D7A86890(v121, v60, _s15ArticleProviderOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {

      sub_1D7A60644();
      v65 = *(v64 + 48);
      v66 = sub_1D7D2DFAC();
      (*(*(v66 - 8) + 8))(&v60[v65], v66);
LABEL_8:
      v68 = v122;
      v67 = v123;
      v69 = [v120 publishDate];
      if (v69)
      {
        v70 = v69;
        sub_1D7D2830C();

        v71 = 0;
      }

      else
      {
        v71 = 1;
      }

      (*(v68 + 56))(v27, v71, 1, v67);
      sub_1D7A86890(v27, v23, sub_1D7A86838);
      if ((*(v68 + 48))(v23, 1, v67) == 1)
      {
        sub_1D7A868F8(v27, sub_1D7A86838);
        v72 = v23;
LABEL_13:
        sub_1D7A868F8(v72, sub_1D7A86838);
        return 0;
      }

      v73 = v118;
      (*(v68 + 32))(v118, v23, v67);
      v74 = v119;
      sub_1D7D2832C();
      sub_1D7D282AC();
      v76 = v75;
      v77 = *(v68 + 8);
      v77(v74, v67);
      v77(v73, v67);
      v78 = v27;
      goto LABEL_15;
    }

LABEL_7:
    sub_1D7A868F8(v60, _s15ArticleProviderOMa);
    goto LABEL_8;
  }

  v79 = *v60;
  if (((1 << v79) & 0x7F3F) != 0)
  {
    v80 = [v120 publishDate];
    if (v80)
    {
      v81 = v80;
      sub_1D7D2830C();

      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v84 = v122;
    v83 = v123;
    (*(v122 + 56))(v35, v82, 1, v123);
    sub_1D7A86890(v35, v31, sub_1D7A86838);
    if ((*(v84 + 48))(v31, 1, v83) == 1)
    {
      sub_1D7A868F8(v35, sub_1D7A86838);
      v72 = v31;
      goto LABEL_13;
    }

    v85 = v117;
    (*(v84 + 32))(v117, v31, v83);
    v86 = v119;
    sub_1D7D2832C();
    sub_1D7D282AC();
    v76 = v87;
    v88 = *(v84 + 8);
    v88(v86, v83);
    v88(v85, v83);
    v78 = v35;
  }

  else if (v79 == 6)
  {
    if (v113)
    {
      v89 = [v113 publisherSpecifiedArticleIDsModifiedDate];
      v91 = v122;
      v90 = v123;
      v92 = v114;
      if (v89)
      {
        v93 = v89;
        sub_1D7D2830C();

        v94 = 0;
      }

      else
      {
        v94 = 1;
      }

      (*(v91 + 56))(v53, v94, 1, v90);
      sub_1D7A86BC4(v53, v92, sub_1D7A86838);
    }

    else
    {
      v91 = v122;
      v90 = v123;
      v92 = v114;
      (*(v122 + 56))(v114, 1, 1, v123);
    }

    sub_1D7A86890(v92, v49, sub_1D7A86838);
    if ((*(v91 + 48))(v49, 1, v90) == 1)
    {
      sub_1D7A868F8(v92, sub_1D7A86838);
      v72 = v49;
      goto LABEL_13;
    }

    v102 = v110;
    (*(v91 + 32))(v110, v49, v90);
    v103 = v119;
    sub_1D7D2832C();
    sub_1D7D282AC();
    v76 = v104;
    v105 = *(v91 + 8);
    v105(v103, v90);
    v105(v102, v90);
    v78 = v92;
  }

  else
  {
    if (v112)
    {
      v95 = [v112 publisherSpecifiedArticleIDsModifiedDate];
      v96 = v115;
      v97 = v116;
      if (v95)
      {
        v98 = v95;
        sub_1D7D2830C();

        v99 = 0;
      }

      else
      {
        v99 = 1;
      }

      v101 = v122;
      v100 = v123;
      (*(v122 + 56))(v42, v99, 1, v123);
      sub_1D7A86BC4(v42, v97, sub_1D7A86838);
    }

    else
    {
      v101 = v122;
      v100 = v123;
      v97 = v116;
      (*(v122 + 56))(v116, 1, 1, v123);
      v96 = v115;
    }

    sub_1D7A86890(v97, v96, sub_1D7A86838);
    if ((*(v101 + 48))(v96, 1, v100) == 1)
    {
      sub_1D7A868F8(v97, sub_1D7A86838);
      v72 = v96;
      goto LABEL_13;
    }

    v106 = v111;
    (*(v101 + 32))(v111, v96, v100);
    v107 = v119;
    sub_1D7D2832C();
    sub_1D7D282AC();
    v76 = v108;
    v109 = *(v101 + 8);
    v109(v107, v100);
    v109(v106, v100);
    v78 = v97;
  }

LABEL_15:
  sub_1D7A868F8(v78, sub_1D7A86838);
  return v76 < v62;
}

uint64_t sub_1D7A864A8()
{
  v1 = v0;
  v2 = sub_1D7D2DFAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15ArticleProviderOMa();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A86890(v1, v10, _s15ArticleProviderOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v25 = *v10;
      v26 = v10[8];
      v29[0] = 0;
      v29[1] = 0xE000000000000000;
      sub_1D7D3145C();

      v29[0] = 0xD000000000000012;
      v29[1] = 0x80000001D7D6DDA0;
      v23 = sub_1D7A0B61C(v25, v26);
LABEL_10:
      v27 = v23;
      v28 = v24;

      MEMORY[0x1DA70DE90](v27, v28);
      goto LABEL_11;
    }

    v18 = *v10;
    v19 = *(v10 + 1);
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_1D7D3145C();

    strcpy(v29, "articleListID:");
    HIBYTE(v29[1]) = -18;
    MEMORY[0x1DA70DE90](v18, v19);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v12 = *v10;
        v13 = *(v10 + 1);
        sub_1D7A60644();
        (*(v3 + 32))(v6, &v10[*(v14 + 48)], v2);
        v29[0] = 0x3A4449676174;
        v29[1] = 0xE600000000000000;
        MEMORY[0x1DA70DE90](v12, v13);

        MEMORY[0x1DA70DE90](45, 0xE100000000000000);
        v15 = sub_1D7D2DF9C();
        MEMORY[0x1DA70DE90](v15);

        v16 = v29[0];
        (*(v3 + 8))(v6, v2);
        return v16;
      }

      v22 = *v10;
      v29[0] = 0;
      v29[1] = 0xE000000000000000;
      sub_1D7D3145C();

      v29[0] = 0x4C656C6369747261;
      v29[1] = 0xEF3A734449747369;
      v23 = MEMORY[0x1DA70E0B0](v22, MEMORY[0x1E69E6158]);
      goto LABEL_10;
    }

    v20 = *v10;
    v29[0] = 0x3A7972657571;
    v29[1] = 0xE600000000000000;
    v21 = sub_1D7C68230(v20);
    MEMORY[0x1DA70DE90](v21);
  }

LABEL_11:

  return v29[0];
}

uint64_t _s15ArticleProviderOMa()
{
  result = qword_1EE0C5E00;
  if (!qword_1EE0C5E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7A86838()
{
  if (!qword_1EE0CFC20)
  {
    sub_1D7D2833C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CFC20);
    }
  }
}

uint64_t sub_1D7A86890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7A868F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A86958()
{
  sub_1D7A60644();
  if (v0 <= 0x3F)
  {
    sub_1D7A869EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D7A869EC()
{
  if (!qword_1EE0BF240[0])
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0BF240);
    }
  }
}

unint64_t sub_1D7A86A74()
{
  result = qword_1EE0C5E30;
  if (!qword_1EE0C5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5E30);
  }

  return result;
}

unint64_t sub_1D7A86AC8()
{
  result = qword_1EE0C5E38;
  if (!qword_1EE0C5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5E38);
  }

  return result;
}

unint64_t sub_1D7A86B1C()
{
  result = qword_1EE0C5C88;
  if (!qword_1EE0C5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C88);
  }

  return result;
}

unint64_t sub_1D7A86B70()
{
  result = qword_1EE0BCBA0;
  if (!qword_1EE0BCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BCBA0);
  }

  return result;
}

uint64_t sub_1D7A86BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7A86C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7A86A74();
    v7 = a3(a1, &_s15ArticleProviderO10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7A86C90()
{
  result = qword_1EE0C5C98;
  if (!qword_1EE0C5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C98);
  }

  return result;
}

unint64_t sub_1D7A86CE4()
{
  result = qword_1EE0C5E40;
  if (!qword_1EE0C5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5E40);
  }

  return result;
}

uint64_t sub_1D7A86D38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7A869EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7A86D98(uint64_t a1, uint64_t a2)
{
  sub_1D7A87108();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v7[*(v8 + 56)];
  sub_1D7A86890(a1, v7, _s15ArticleProviderOMa);
  sub_1D7A86890(a2, v9, _s15ArticleProviderOMa);
  _s15ArticleProviderOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v30 = *v7;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v7[8])
        {
          if (v9[8])
          {
            v29 = sub_1D7A59818(v30, *v9);
            goto LABEL_25;
          }
        }

        else if ((v9[8] & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_33;
      }

LABEL_31:

      goto LABEL_32;
    }

    v19 = *v7;
    v18 = *(v7 + 1);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_31;
    }

    v20 = *v9;
    v21 = *(v9 + 1);
    if (v19 != v20 || v18 != v21)
    {
LABEL_22:
      v29 = sub_1D7D3197C();
LABEL_25:
      v17 = v29;

      return v17 & 1;
    }

LABEL_35:

    v17 = 1;
    return v17 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_32:
      sub_1D7A868F8(v9, _s15ArticleProviderOMa);
LABEL_33:
      v17 = 0;
      return v17 & 1;
    }

    v23 = *v9;
    v24 = sub_1D7C69770(*v7);
    v26 = v25;
    if (v24 != sub_1D7C69770(v23) || v26 != v27)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v30 = *v7;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_24:
      v29 = sub_1D7A59788(v30, *v9);
      goto LABEL_25;
    }

    goto LABEL_31;
  }

  v12 = *v7;
  v11 = *(v7 + 1);
  sub_1D7A60644();
  v14 = v13;
  v15 = *(v13 + 48);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v31 = sub_1D7D2DFAC();
    (*(*(v31 - 8) + 8))(&v7[v15], v31);
    goto LABEL_31;
  }

  if (v12 == *v9 && v11 == *(v9 + 1))
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1D7D3197C();
  }

  v33 = *(v14 + 48);
  v34 = sub_1D7D2DFAC();
  v35 = *(*(v34 - 8) + 8);
  v35(&v9[v33], v34);
  v35(&v7[v15], v34);
  return v17 & 1;
}

void sub_1D7A87108()
{
  if (!qword_1EC9E2E80)
  {
    _s15ArticleProviderOMa();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2E80);
    }
  }
}

unint64_t sub_1D7A87190()
{
  result = qword_1EC9E3468;
  if (!qword_1EC9E3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3468);
  }

  return result;
}

unint64_t sub_1D7A871E8()
{
  result = qword_1EE0C5E20;
  if (!qword_1EE0C5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5E20);
  }

  return result;
}

unint64_t sub_1D7A87240()
{
  result = qword_1EE0C5E28;
  if (!qword_1EE0C5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5E28);
  }

  return result;
}

uint64_t sub_1D7A87294()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D7A872E0(uint64_t a1)
{
  type metadata accessor for EndOfArticleFeedPool();
  sub_1D7D294BC();
  v3 = sub_1D7D2934C();
  sub_1D7A89D64(0, &unk_1EE0BF1D0, sub_1D799621C, MEMORY[0x1E69E62F8]);
  sub_1D7D293BC();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;

  v5 = sub_1D7D2934C();
  sub_1D7D2F05C();
  sub_1D7D293BC();

  v6 = sub_1D7D2934C();
  sub_1D7A18F80(0);
  sub_1D7D293BC();

  v7 = sub_1D7D2934C();
  v8 = sub_1D7D2943C();

  return v8;
}

size_t sub_1D7A87528(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v7 = MEMORY[0x1E69E6720];
  sub_1D7A89D64(0, &unk_1EE0BF640, MEMORY[0x1E69B6380], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v113 = v96 - v10;
  sub_1D7A89D64(0, &qword_1EE0BF5C0, MEMORY[0x1E69B6570], v7);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v108 = v96 - v13;
  sub_1D7A89D64(0, &qword_1EE0BF988, sub_1D7990AB0, v7);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v106 = v96 - v16;
  v102 = sub_1D7D2F6AC();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v17);
  v112 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A89D64(0, &unk_1EE0BF530, sub_1D7A78030, v7);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v104 = v96 - v21;
  v22 = type metadata accessor for MoreFromEndOfArticleFeedGroupConfigData();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v103 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1D7D2F06C();
  v110 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v25);
  v109 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A89D64(0, &unk_1EE0BFB00, MEMORY[0x1E69B40B8], v7);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v116 = v96 - v29;
  v100 = sub_1D7D2F31C();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v30);
  v120 = v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1D7D2FC7C();
  v126 = *(v98 - 1);
  MEMORY[0x1EEE9AC00](v98, v32);
  v97 = v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D7D2FD3C();
  v118 = *(v34 - 8);
  v119 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v117 = v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D7D2EC6C();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for EndOfArticleFeedServiceConfig();
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v45 = (v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = *a1;
  sub_1D7D2E5FC();
  v122 = *v45;
  swift_unknownObjectRetain();
  sub_1D7A89F28(v45, type metadata accessor for EndOfArticleFeedServiceConfig);
  v105 = a2;
  type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs();
  v111 = a3;
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  (*(v38 + 8))(v41, v37);
  v47 = v127;
  v48 = v46 >> 62;
  if (v46 >> 62)
  {
    goto LABEL_47;
  }

  v49 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49 >= v127)
  {
    do
    {
      v115 = [v122 sourceChannel];
      if (!v115)
      {
        break;
      }

      if (v47 < 0)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v48)
      {
        v53 = sub_1D7D3167C();
        result = sub_1D7D3167C();
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        if (v53 >= v47)
        {
          v55 = v47;
        }

        else
        {
          v55 = v53;
        }

        if (v53 < 0)
        {
          v55 = v47;
        }

        if (v47)
        {
          v52 = v55;
        }

        else
        {
          v52 = 0;
        }

        v50 = sub_1D7D3167C();
      }

      else
      {
        v50 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v50 >= v47)
        {
          v51 = v47;
        }

        else
        {
          v51 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v47)
        {
          v52 = v51;
        }

        else
        {
          v52 = 0;
        }
      }

      if (v50 < v52)
      {
        goto LABEL_51;
      }

      if ((v46 & 0xC000000000000001) != 0 && v52)
      {
        sub_1D799621C();

        v56 = 0;
        do
        {
          v57 = v56 + 1;
          sub_1D7D3147C();
          v56 = v57;
        }

        while (v52 != v57);
        if (!v48)
        {
LABEL_28:
          v58 = 0;
          v59 = v46 & 0xFFFFFFFFFFFFFF8;
          v48 = (v46 & 0xFFFFFFFFFFFFFF8) + 32;
          goto LABEL_31;
        }
      }

      else
      {

        if (!v48)
        {
          goto LABEL_28;
        }
      }

      v59 = sub_1D7D3168C();
      v48 = v60;
      v58 = v61;
      v52 = v62 >> 1;
LABEL_31:
      v47 = v52 - v58;
      if (__OFSUB__(v52, v58))
      {
        goto LABEL_52;
      }

      v96[2] = v46;
      if (!v47)
      {
LABEL_42:
        swift_unknownObjectRelease();
        v69 = MEMORY[0x1E69E7CC0];
        sub_1D7A1912C(MEMORY[0x1E69E7CC0]);
        sub_1D7A19144(v69);
        sub_1D7A1915C(v69);
        v70 = v117;
        sub_1D7D2FD2C();
        sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v71 = swift_allocObject();
        v126 = v71;
        *(v71 + 16) = xmmword_1D7D3C670;
        *(v71 + 32) = v115;
        sub_1D7A89D64(0, &qword_1EE0BE8A0, MEMORY[0x1E69B66E0], MEMORY[0x1E69E6F90]);
        v72 = v118;
        v73 = (*(v118 + 80) + 32) & ~*(v118 + 80);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1D7D3B4D0;
        (*(v72 + 16))(v74 + v73, v70, v119);
        v123 = sub_1D7D2CE6C();
        v75 = *(v123 - 8);
        v98 = *(v75 + 56);
        v124 = (v75 + 56);
        v98(v116, 1, 1, v123);

        swift_unknownObjectRetain();
        v125 = sub_1D7A191A4(v69);
        sub_1D7A191A4(v69);
        sub_1D7A191BC(v69);
        sub_1D7A191D4(v69);
        sub_1D7A192E8(v69);
        sub_1D7A19300(v69);
        sub_1D7A19414(v69);
        sub_1D7D2F30C();
        v76 = *(v105 + OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_formatService + 24);
        v126 = *(v105 + OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_formatService + 32);
        v125 = __swift_project_boxed_opaque_existential_1((v105 + OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_formatService), v76);
        sub_1D798F63C();
        v77 = v103;
        sub_1D7D2DF2C();
        v78 = [v115 identifier];
        sub_1D7D3034C();

        v79 = v116;
        v98(v116, 1, 1, v123);
        sub_1D7A78030(0);
        v81 = v104;
        (*(*(v80 - 8) + 56))(v104, 1, 1, v80);
        v47 = v109;
        sub_1D7D2F01C();

        sub_1D7A89DC8(v81, &unk_1EE0BF530, sub_1D7A78030);
        sub_1D7A89DC8(v79, &unk_1EE0BFB00, MEMORY[0x1E69B40B8]);
        v48 = *(v110 + 8);
        (v48)(v77, v121);
        v82 = OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_knobs;
        sub_1D7990AB0(0);
        v84 = v83;
        v85 = *(v83 - 8);
        v86 = v106;
        (*(v85 + 16))(v106, v107 + v82, v83);
        (*(v85 + 56))(v86, 0, 1, v84);
        v87 = sub_1D7D2FAFC();
        (*(*(v87 - 8) + 56))(v108, 1, 1, v87);
        LOBYTE(v127) = 0;
        sub_1D798FB8C(0, &unk_1EE0BF580, type metadata accessor for EndOfArticleFeedServiceConfig, sub_1D7990AF8, MEMORY[0x1E69B65B8]);
        swift_allocObject();

        sub_1D7D2FB8C();
        v88 = sub_1D7D2F59C();
        (*(*(v88 - 8) + 56))(v113, 1, 1, v88);
        v89 = qword_1EE0CA130;
        *MEMORY[0x1E69B5080];
        if (v89 == -1)
        {
LABEL_43:
          qword_1EE0CA138;
          v90 = v112;
          sub_1D7D2F69C();
          v91 = v120;
          v49 = v125;
          v92 = v114;
          v93 = sub_1D7D2F36C();
          if (!v92)
          {
            v49 = v93;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          (*(v101 + 8))(v90, v102);
          (v48)(v47, v121);
          (*(v99 + 8))(v91, v100);
          (*(v118 + 8))(v117, v119);
          return v49;
        }

LABEL_53:
        swift_once();
        goto LABEL_43;
      }

      v96[1] = v59;
      v127 = MEMORY[0x1E69E7CC0];
      result = sub_1D7A5BFDC(0, v47 & ~(v47 >> 63), 0);
      if (v47 < 0)
      {
        __break(1u);
LABEL_55:
        __break(1u);
        return result;
      }

      v63 = v127;
      LODWORD(v125) = *MEMORY[0x1E69B6698];
      v123 = v126 + 32;
      v124 = (v126 + 104);
      if (v52 <= v58)
      {
        v64 = v58;
      }

      else
      {
        v64 = v52;
      }

      v46 = v64 - v58;
      v65 = (v48 + 8 * v58);
      v66 = v98;
      v67 = v97;
      while (v46)
      {
        *v67 = *v65;
        (*v124)(v67, v125, v66);
        v127 = v63;
        v48 = *(v63 + 16);
        v68 = *(v63 + 24);
        swift_unknownObjectRetain();
        if (v48 >= v68 >> 1)
        {
          sub_1D7A5BFDC(v68 > 1, v48 + 1, 1);
          v63 = v127;
        }

        *(v63 + 16) = v48 + 1;
        (*(v126 + 32))(v63 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v48, v67, v66);
        --v46;
        ++v65;
        if (!--v47)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_47:
      v49 = sub_1D7D3167C();
    }

    while (v49 >= v47);
  }

  v94 = sub_1D7D2E4EC();
  sub_1D798F708(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
  swift_allocError();
  *v95 = v47;
  v95[1] = v49;
  (*(*(v94 - 8) + 104))(v95, *MEMORY[0x1E69B5AE0], v94);
  swift_willThrow();
  swift_unknownObjectRelease();
  return v49;
}

uint64_t sub_1D7A88654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7A18F80(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2F03C();
  if (v13 >> 62)
  {
    v16 = sub_1D7D3167C();

    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = sub_1D7D2E4EC();
    sub_1D798F708(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69B5AD0], v15);
    swift_willThrow();
    return v15;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7A888EC(a1, a3, v12);
  sub_1D7A89E38(v12, v8, type metadata accessor for MoreFromEndOfArticleFeedGroup);
  type metadata accessor for EndOfArticleFeedGroup();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1D7A89D64(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v15 = sub_1D7D2940C();
  sub_1D7A89F28(v12, type metadata accessor for MoreFromEndOfArticleFeedGroup);
  return v15;
}

uint64_t sub_1D7A888EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v99 = a2;
  v94 = a3;
  v81 = *v4;
  v84 = sub_1D7D2EC6C();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v6);
  v82 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D7D2EA6C();
  v100 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v8);
  v93 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EndOfArticleFeedServiceConfig();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v92 = (&v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2836C();
  v90 = *(v13 - 8);
  v91 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v89 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D7D2855C();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v16);
  v77 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E6720];
  sub_1D7A89D64(0, &qword_1EE0BF828, MEMORY[0x1E69B5D58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v97 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v86 = &v76 - v24;
  sub_1D7A89D64(0, &qword_1EE0BF9B0, MEMORY[0x1E69B59D8], v18);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v76 - v27;
  v29 = sub_1D7D2E73C();
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v33 = sub_1D7D2F05C();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D7D2DE2C();
  v95 = *(v38 - 8);
  v96 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v98 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v45 = &v76 - v44;
  (*(v34 + 16))(v37, a1, v33, v43);
  sub_1D798F63C();
  v85 = sub_1D7D2DF0C();
  sub_1D7D2DF1C();
  sub_1D7D2DF1C();
  v80 = v4;
  v46 = v4 + OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_knobs;
  sub_1D7990AB0(0);
  sub_1D7D2E35C();
  sub_1D7D2E34C();
  v47 = sub_1D7D2E1CC();
  (*(*(v47 - 8) + 56))(v28, 1, 1, v47);
  v48 = v86;
  v88 = v45;
  v49 = v87;
  sub_1D7D2DDDC();
  v50 = *(v100 + 56);
  v50(v48, 1, 1, v49);
  sub_1D7D2856C();
  LOBYTE(v34) = sub_1D7D2860C();

  if (v34)
  {
    sub_1D7D2856C();
    sub_1D7D2854C();

    sub_1D798F708(&unk_1EC9E3470, type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter);
    v51 = v77;
    sub_1D7D285AC();

    v52 = (*(v78 + 88))(v51, v79);
    if (v52 == *MEMORY[0x1E69B3DD0])
    {
      v53 = MEMORY[0x1E69B5D40];
    }

    else if (v52 == *MEMORY[0x1E69B3DD8])
    {
      v53 = MEMORY[0x1E69B5D48];
    }

    else
    {
      if (v52 != *MEMORY[0x1E69B3DE0])
      {
        result = sub_1D7D3196C();
        __break(1u);
        return result;
      }

      v53 = MEMORY[0x1E69B5D50];
    }

    sub_1D7A89DC8(v48, &qword_1EE0BF828, MEMORY[0x1E69B5D58]);
    (*(v100 + 104))(v48, *v53, v49);
    v50(v48, 0, 1, v49);
  }

  v85 = v46;
  v101 = 0x6D6F724665726F6DLL;
  v102 = 0xEA00000000003A3ALL;
  v54 = v89;
  sub_1D7D2835C();
  v55 = sub_1D7D2834C();
  v57 = v56;
  (*(v90 + 8))(v54, v91);
  MEMORY[0x1DA70DE90](v55, v57);

  v90 = v102;
  v91 = v101;
  v59 = v95;
  v58 = v96;
  v60 = v88;
  (*(v95 + 16))(v98, v88, v96);
  v61 = v92;
  sub_1D7D2E5FC();
  v62 = *v61;
  swift_unknownObjectRetain();
  sub_1D7A89F28(v61, type metadata accessor for EndOfArticleFeedServiceConfig);
  v63 = [v62 sourceChannel];
  swift_unknownObjectRelease();
  v64 = v97;
  sub_1D7A77F9C(v48, v97);
  v65 = *(v100 + 48);
  if (v65(v64, 1, v49) == 1)
  {
    type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs();
    v66 = v82;
    sub_1D7D2E61C();
    v67 = v48;
    v68 = v93;
    v69 = v97;
    sub_1D7D2E70C();
    v70 = v66;
    v58 = v96;
    (*(v83 + 8))(v70, v84);
    v71 = v67;
    v59 = v95;
    sub_1D7A89DC8(v71, &qword_1EE0BF828, MEMORY[0x1E69B5D58]);
    (*(v59 + 8))(v60, v58);
    if (v65(v69, 1, v49) != 1)
    {
      sub_1D7A89DC8(v69, &qword_1EE0BF828, MEMORY[0x1E69B5D58]);
    }
  }

  else
  {
    sub_1D7A89DC8(v48, &qword_1EE0BF828, MEMORY[0x1E69B5D58]);
    (*(v59 + 8))(v60, v58);
    v68 = v93;
    (*(v100 + 32))(v93, v64, v49);
  }

  v72 = v94;
  v73 = v90;
  *v94 = v91;
  *(v72 + 1) = v73;
  v74 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  (*(v59 + 32))(&v72[v74[5]], v98, v58);
  *&v72[v74[6]] = v63;
  return (*(v100 + 32))(&v72[v74[7]], v68, v49);
}

uint64_t sub_1D7A89418(uint64_t a1)
{
  sub_1D7A18F80(0);
  v11 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7D30C4C();
  sub_1D79F3AB0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4D0;
  v12 = 0;
  v13 = 0xE000000000000000;
  v14 = a1;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  sub_1D7D315DC();
  v8 = v12;
  v7 = v13;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D79D6AE0();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  sub_1D7D29AAC();

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1D7D3145C();
  MEMORY[0x1DA70DE90](0xD000000000000029, 0x80000001D7D6DE70);
  v14 = a1;
  sub_1D7D315DC();
  v9 = v13;
  *v5 = v12;
  v5[1] = v9;
  swift_storeEnumTagMultiPayload();
  sub_1D7A89D64(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7A8966C()
{
  v1 = OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_config;
  sub_1D798F63C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D7A89F28(v0 + OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter()
{
  result = qword_1EE0C18E0;
  if (!qword_1EE0C18E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7A89790()
{
  sub_1D798F63C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D7A89888@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_config;
  sub_1D798F63C();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for EndOfArticleFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7A8991C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles36MoreFromEndOfArticleFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs();
  a1[4] = sub_1D798F708(&qword_1EE0C2418, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
  a1[5] = sub_1D798F708(&unk_1EC9E3480, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7A89E38(v3 + v4, boxed_opaque_existential_1, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
}

uint64_t sub_1D7A899E8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7A89D64(0, &qword_1EE0BE860, sub_1D7A19AB4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_1D798F63C();
  v3 = sub_1D7D2DEFC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7A89F28(inited + 32, sub_1D7A19AB4);
  sub_1D7A89D64(0, &unk_1EE0C03C0, type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter, MEMORY[0x1E69D65D0]);
  a1[3] = v5;
  a1[4] = sub_1D7A89EA0();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7D28FEC();
}

uint64_t sub_1D7A89B68(uint64_t a1)
{
  v2 = sub_1D798F708(&qword_1EE0C1900, type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter);

  return MEMORY[0x1EEE44678](a1, v2);
}

void sub_1D7A89D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7A89DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7A89D64(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7A89E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7A89EA0()
{
  result = qword_1EE0C03D0[0];
  if (!qword_1EE0C03D0[0])
  {
    sub_1D7A89D64(255, &unk_1EE0C03C0, type metadata accessor for MoreFromEndOfArticleFeedGroupEmitter, MEMORY[0x1E69D65D0]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C03D0);
  }

  return result;
}

uint64_t sub_1D7A89F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupEmitter()
{
  result = qword_1EC9E3490;
  if (!qword_1EC9E3490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7A89FFC()
{
  sub_1D79911A0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_1D7A8A0A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D7A8A0A0()
{
  result = qword_1EE0BF6B0;
  if (!qword_1EE0BF6B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BF6B0);
  }

  return result;
}

double sub_1D7A8A104@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D7A8A110(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_1D7D2F31C();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[7] = v6;
  v7 = swift_task_alloc();
  v3[8] = v7;
  *v7 = v3;
  v7[1] = sub_1D7A8A21C;

  return sub_1D7A8ADFC(v6, a2);
}

uint64_t sub_1D7A8A21C()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D7A8A518, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_1D7A8A390;
    v4 = v2[7];
    v5 = v2[3];

    return sub_1D7A8BA78(v5, v4);
  }
}

uint64_t sub_1D7A8A390(uint64_t a1)
{
  v4 = *v2;
  v4[11] = v1;

  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1D7A8A624;
  }

  else
  {
    v4[12] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1D7A8A57C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D7A8A518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A8A57C()
{
  sub_1D7A8C52C(v0[12], v0[2]);

  sub_1D7A8C830();
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D7A8A624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A8A688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D7A4E2D8;

  return MEMORY[0x1EEE21408](a1, a2, a3, a4, a5);
}

uint64_t sub_1D7A8A754(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_1D7A8A78C@<X0>(uint64_t a1@<X8>)
{
  sub_1D79911A0();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for EndOfRecipeFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7A8A80C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
  a2[4] = sub_1D79952A4(&qword_1EC9E34F8, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
  a2[5] = sub_1D79952A4(&qword_1EC9E3500, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_1D7A8CB7C(v2 + v4, boxed_opaque_existential_1);
}

uint64_t sub_1D7A8A8CC()
{
  type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupEmitter();
  sub_1D7995698();
  v0 = sub_1D7D2E32C();
  sub_1D7A8C8C4(0, qword_1EC9E1AE0, sub_1D79E7118, MEMORY[0x1E69E6F90]);
  sub_1D79E7118(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  sub_1D7A8CAE8();
  swift_allocObject();
  *(v5 + v4) = sub_1D7D2E92C();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x1E69B5AA0], v2);
  sub_1D79E2DC8(v5);
  return v0;
}

uint64_t sub_1D7A8AA78()
{
  sub_1D79911A0();

  return sub_1D7D2DEFC();
}

uint64_t sub_1D7A8AAA4@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7A8C8C4(0, &qword_1EE0BE860, sub_1D7A19AB4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_1D79911A0();

  v3 = sub_1D7D2DEFC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7A8C990(inited + 32, sub_1D7A19AB4);
  sub_1D7A8CBE0(0);
  a1[3] = v5;
  a1[4] = sub_1D79952A4(&unk_1EC9E3510, sub_1D7A8CBE0);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7D28FEC();
}

uint64_t sub_1D7A8AC28(uint64_t a1)
{
  v2 = sub_1D79952A4(&unk_1EC9E34B8, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupEmitter);

  return MEMORY[0x1EEE44678](a1, v2);
}

uint64_t sub_1D7A8ADFC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  sub_1D7A8C95C(0);
  v3[13] = swift_task_alloc();
  v4 = sub_1D7D2FC7C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_1D7D2EC6C();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  type metadata accessor for EndOfRecipeFeedServiceConfig();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A8AF74, 0, 0);
}

uint64_t sub_1D7A8AF74()
{
  sub_1D7D2E62C();
  v0[21] = v0[7];
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_1D7A8B090;

  return sub_1D79FF5C4();
}

uint64_t sub_1D7A8B090(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1D7A8B9E4;
  }

  else
  {
    v4 = sub_1D7A8B1A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7A8B1A4()
{
  v53 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[12];

  sub_1D7D2E5FC();
  v50 = *v2;
  sub_1D7A8C990(v2, type metadata accessor for EndOfRecipeFeedServiceConfig);
  v7 = v6 + *(type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupEmitter() + 20);
  v8 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  v9 = *(v4 + 8);
  v9(v3, v5);
  v10 = v0[8];
  v11 = v1 >> 62;
  if (v1 >> 62)
  {
    v12 = sub_1D7D3167C();
    if (v12 < v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 < v10)
    {
LABEL_3:

      v13 = sub_1D7D2E4EC();
      sub_1D79952A4(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
      swift_allocError();
      *v14 = v10;
      v14[1] = v12;
      (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E69B5AE0], v13);
      swift_willThrow();

      v15 = v0[1];
      goto LABEL_57;
    }
  }

  v16 = v0[19];
  v17 = v0[17];
  v18 = *(v7 + *(v8 + 24));
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  v9(v16, v17);
  i = v0[9];
  if (i < 0)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v11)
  {
    if (v1 < 0)
    {
      v22 = v0[23];
    }

    else
    {
      v22 = (v1 & 0xFFFFFFFFFFFFFF8);
    }

    v18 = sub_1D7D3167C();
    if (sub_1D7D3167C() < 0)
    {
      goto LABEL_64;
    }

    if (v18 >= i)
    {
      v23 = i;
    }

    else
    {
      v23 = v18;
    }

    if (v18 < 0)
    {
      v23 = i;
    }

    if (i)
    {
      v18 = v23;
    }

    else
    {
      v18 = 0;
    }

    v20 = sub_1D7D3167C();
  }

  else
  {
    v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= i)
    {
      v21 = v0[9];
    }

    else
    {
      v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i)
    {
      v18 = v21;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v20 < v18)
  {
    goto LABEL_61;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {

    if (v18)
    {
      sub_1D7A8CA84();
      v24 = 0;
      do
      {
        v25 = v24 + 1;
        sub_1D7D3147C();
        v24 = v25;
      }

      while (v18 != v25);
    }

    if (!v11)
    {
LABEL_32:
      i = 0;
      v22 = (v1 & 0xFFFFFFFFFFFFFF8);
      v17 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
      v18 = (2 * v18) | 1;
      if ((v18 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }
  }

  else
  {

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  v22 = sub_1D7D3168C();
  v17 = v26;
  i = v27;
  v18 = v28;

  if ((v18 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  sub_1D7D319DC();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v18 >> 1, i))
  {
    goto LABEL_65;
  }

  if (v31 != (v18 >> 1) - i)
  {
    goto LABEL_66;
  }

  v32 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  i = v32;
  if (v32)
  {
    goto LABEL_44;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v29)
  {
    swift_unknownObjectRelease();
LABEL_44:
    sub_1D79EB1FC();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7D3C670;
    *(inited + 32) = [v50 sourceChannel];
    v52 = i;

    sub_1D79E2CA8(inited);
    v18 = v52;
    sub_1D7A8C8C4(0, &qword_1EE0BE8A0, MEMORY[0x1E69B66E0], MEMORY[0x1E69E6F90]);
    sub_1D7D2FD3C();
    *(swift_allocObject() + 16) = xmmword_1D7D3B4D0;
    if (i < 0 || (i & 0x4000000000000000) != 0)
    {
LABEL_62:
      v34 = sub_1D7D3167C();
    }

    else
    {
      v34 = *(i + 16);
    }

    if (!v34)
    {
      break;
    }

    v52 = MEMORY[0x1E69E7CC0];
    v22 = &v52;
    sub_1D7A5BFDC(0, v34 & ~(v34 >> 63), 0);
    if ((v34 & 0x8000000000000000) == 0)
    {
      v35 = 0;
      v36 = v0[15];
      v37 = v52;
      v38 = i;
      v51 = *MEMORY[0x1E69B6670];
      do
      {
        if ((i & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x1DA70EF00](v35, v38);
        }

        else
        {
          v39 = swift_unknownObjectRetain();
        }

        v40 = v0[16];
        v41 = v0[14];
        *v40 = v39;
        (*(v36 + 104))(v40, v51, v41);
        v52 = v37;
        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1D7A5BFDC(v42 > 1, v43 + 1, 1);
          v37 = v52;
        }

        v44 = v0[16];
        v45 = v0[14];
        ++v35;
        *(v37 + 16) = v43 + 1;
        (*(v36 + 32))(v37 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v43, v44, v45);
        v38 = i;
      }

      while (v34 != v35);
      break;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_unknownObjectRelease_n();
LABEL_36:
    sub_1D7B0FDB4(v22, v17, i, v18);
  }

  v46 = v0[13];
  v47 = MEMORY[0x1E69E7CC0];
  sub_1D7A1912C(MEMORY[0x1E69E7CC0]);
  sub_1D7A19144(v47);
  sub_1D7A1915C(v47);
  sub_1D7D2FD2C();
  v48 = sub_1D7D2CE6C();
  (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
  sub_1D7A191A4(v47);
  sub_1D7A191A4(v47);
  sub_1D7A191BC(v47);
  sub_1D7A191D4(v47);
  sub_1D7A192E8(v47);
  sub_1D7A19300(v47);
  sub_1D7A19414(v47);
  sub_1D7D2F30C();

  v15 = v0[1];
LABEL_57:

  return v15();
}

uint64_t sub_1D7A8B9E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A8BA78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D7A8C8C4(0, &unk_1EE0BF640, MEMORY[0x1E69B6380], MEMORY[0x1E69E6720]);
  v3[5] = swift_task_alloc();
  sub_1D7A8C8C4(0, &qword_1EE0BF5C0, MEMORY[0x1E69B6570], v4);
  v3[6] = swift_task_alloc();
  sub_1D7A8C8C4(0, &qword_1EC9E34E0, sub_1D7995698, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_1D7D2F6AC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_1D7A8C928(0);
  v3[11] = swift_task_alloc();
  sub_1D7A8C95C(0);
  v3[12] = swift_task_alloc();
  type metadata accessor for EndOfRecipeFeedServiceConfig();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData();
  v3[15] = swift_task_alloc();
  v6 = sub_1D7D2F06C();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A8BD44, 0, 0);
}

uint64_t sub_1D7A8BD44()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v28 = *(v0 + 128);
  v29 = *(v0 + 56);
  v7 = *(v0 + 32);
  v30 = *(v0 + 48);
  v31 = *(v0 + 40);
  v27 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupEmitter();
  v8 = (v7 + *(v27 + 24));
  v32 = v8[4];
  v33 = v8[3];
  __swift_project_boxed_opaque_existential_1(v8, v33);
  sub_1D79911A0();
  sub_1D7D2DF2C();
  v26 = *(v4 + 20);
  sub_1D7D2E5FC();
  v9 = *v3;
  sub_1D7A8C990(v3, type metadata accessor for EndOfRecipeFeedServiceConfig);
  v10 = [v9 identifier];

  sub_1D7D3034C();
  v11 = sub_1D7D2CE6C();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1D7A78030(0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1D7D2F01C();

  sub_1D7A8C990(v6, sub_1D7A8C928);
  sub_1D7A8C990(v5, sub_1D7A8C95C);
  v13 = *(v1 + 8);
  *(v0 + 152) = v13;
  *(v0 + 160) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v2 + v26, v28);
  v14 = *(v27 + 20);
  sub_1D7995698();
  v16 = v15;
  v17 = *(v15 - 8);
  (*(v17 + 16))(v29, v7 + v14, v15);
  (*(v17 + 56))(v29, 0, 1, v16);
  v18 = sub_1D7D2FAFC();
  (*(*(v18 - 8) + 56))(v30, 1, 1, v18);
  *(v0 + 184) = 0;
  sub_1D7A8C9F0();
  swift_allocObject();

  sub_1D7D2FB8C();
  v19 = sub_1D7D2F59C();
  (*(*(v19 - 8) + 56))(v31, 1, 1, v19);
  v20 = qword_1EC9DFD38;
  *MEMORY[0x1E69B5088];
  if (v20 != -1)
  {
    swift_once();
  }

  qword_1EC9E3328;
  sub_1D7D2F69C();
  v21 = swift_task_alloc();
  *(v0 + 168) = v21;
  *v21 = v0;
  v21[1] = sub_1D7A8C1E8;
  v22 = *(v0 + 144);
  v23 = *(v0 + 80);
  v24 = *(v0 + 24);

  return MEMORY[0x1EEE22148](v22, v24, v23, v33, v32);
}

uint64_t sub_1D7A8C1E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[22] = v1;

  v6 = v4[19];
  v7 = v4[18];
  v8 = v4[16];
  if (v1)
  {
    (*(v4[9] + 8))(v4[10], v4[8]);
    v6(v7, v8);

    return MEMORY[0x1EEE6DFA0](sub_1D7A8C45C, 0, 0);
  }

  else
  {
    (*(v4[9] + 8))(v4[10], v4[8]);
    v6(v7, v8);

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_1D7A8C45C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A8C52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v18 = a2;
  sub_1D7A8C8C4(0, &qword_1EE0BF9B0, MEMORY[0x1E69B59D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v16 = &v15 - v4;
  v5 = sub_1D7D2E73C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v17 = sub_1D7D2DE2C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79911A0();

  sub_1D7D2DF1C();
  sub_1D7D2DF1C();
  type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupEmitter();
  sub_1D7995698();
  sub_1D7D2E35C();
  sub_1D7D2E34C();
  sub_1D7D2E36C();
  v13 = sub_1D7D2E1CC();
  (*(*(v13 - 8) + 56))(v16, 1, 1, v13);
  sub_1D7D2DDCC();
  (*(v9 + 32))(v18, v12, v17);
  type metadata accessor for EndOfRecipeFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

void sub_1D7A8C830()
{
  if (!qword_1EC9E34D0)
  {
    type metadata accessor for EndOfRecipeFeedGroup();
    sub_1D79952A4(&qword_1EC9E1F70, type metadata accessor for EndOfRecipeFeedGroup);
    v0 = sub_1D7D2E63C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E34D0);
    }
  }
}

void sub_1D7A8C8C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7A8C990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A8C9F0()
{
  if (!qword_1EC9E34E8)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D79952A4(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    v0 = sub_1D7D2FB9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E34E8);
    }
  }
}

unint64_t sub_1D7A8CA84()
{
  result = qword_1EE0BF070;
  if (!qword_1EE0BF070)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BF070);
  }

  return result;
}

void sub_1D7A8CAE8()
{
  if (!qword_1EC9E34F0)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D79952A4(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    v0 = sub_1D7D2E93C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E34F0);
    }
  }
}

uint64_t sub_1D7A8CB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A8CC3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_1D7995698();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A8D62C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v55 = &v44 - v15;
  sub_1D7A8D7FC(0, &qword_1EC9E3520, MEMORY[0x1E69E6F48]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A8D684();
  v22 = v57;
  sub_1D7D31AFC();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = 0;
  v48 = v18;
  v49 = a1;
  v57 = v9;
  LOBYTE(v60) = 0;
  sub_1D7995380(&qword_1EC9E3530, sub_1D7995698);
  v24 = v55;
  v25 = v52;
  sub_1D7D3173C();
  sub_1D7994BB0();
  LOBYTE(v59) = 1;
  sub_1D7995380(&qword_1EE0BF8C8, sub_1D7994BB0);
  sub_1D7D3173C();
  v45 = v60;
  LOBYTE(v58) = 2;
  v26 = v17;
  v50 = v21;
  sub_1D7D3173C();
  v46 = v59;
  v27 = v24;
  v28 = v56;
  sub_1D7A8D6D8(v27, v56);
  v29 = v51;
  v30 = *(v51 + 48);
  v31 = v30(v28, 1, v25);
  v32 = v25;
  if (v31 == 1)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D7995380(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    v33 = v53;
    sub_1D7D2E33C();
    v34 = v30(v56, 1, v25);
    v35 = v33;
    v36 = v48;
    v37 = v49;
    if (v34 != 1)
    {
      sub_1D7A8D73C(v56);
    }
  }

  else
  {
    v35 = v53;
    (*(v29 + 32))(v53, v56, v25);
    v36 = v48;
    v37 = v49;
  }

  v38 = v57;
  (*(v29 + 32))(v57, v35, v32);
  v39 = v45;
  if (!v45)
  {
    v58 = 3;
    swift_allocObject();
    v39 = sub_1D7D2E71C();
  }

  v40 = v50;
  *(v38 + *(v6 + 20)) = v39;
  v41 = v54;
  v42 = v46;
  if (v46)
  {
    sub_1D7A8D73C(v55);
    (*(v36 + 8))(v40, v26);
  }

  else
  {
    v58 = 10;
    v43 = v55;
    swift_allocObject();
    v42 = sub_1D7D2E71C();
    sub_1D7A8D73C(v43);
    (*(v36 + 8))(v50, v26);
  }

  *(v38 + *(v6 + 24)) = v42;
  sub_1D7A8D798(v38, v41);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D7A8D1D4(void *a1)
{
  v3 = v1;
  sub_1D7A8D7FC(0, &qword_1EC9E3538, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A8D684();
  sub_1D7D31B1C();
  LOBYTE(v15) = 0;
  sub_1D7995698();
  sub_1D7995380(&qword_1EC9E3540, sub_1D7995698);
  sub_1D7D318BC();
  if (!v2)
  {
    v11 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
    v15 = *(v3 + *(v11 + 20));
    v14 = 1;
    sub_1D7994BB0();
    sub_1D7995380(&qword_1EC9E3548, sub_1D7994BB0);
    sub_1D7D318BC();
    v15 = *(v3 + *(v11 + 24));
    v14 = 2;
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7A8D438()
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

uint64_t sub_1D7A8D498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7A8D978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7A8D4C0(uint64_t a1)
{
  v2 = sub_1D7A8D684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A8D4FC(uint64_t a1)
{
  v2 = sub_1D7A8D684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7A8D568()
{
  type metadata accessor for EndOfRecipeFeedServiceConfig();
  sub_1D7995380(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
  if (sub_1D7D2E37C() & 1) != 0 && (sub_1D7994BB0(), (sub_1D7D2E6FC()))
  {
    return sub_1D7D2E6FC() & 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D7A8D62C()
{
  if (!qword_1EC9E34E0)
  {
    sub_1D7995698();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E34E0);
    }
  }
}

unint64_t sub_1D7A8D684()
{
  result = qword_1EC9E3528;
  if (!qword_1EC9E3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3528);
  }

  return result;
}

uint64_t sub_1D7A8D6D8(uint64_t a1, uint64_t a2)
{
  sub_1D7A8D62C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A8D73C(uint64_t a1)
{
  sub_1D7A8D62C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A8D798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7A8D7FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7A8D684();
    v7 = a3(a1, &type metadata for RecipeTopicsEndOfRecipeFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7A8D874()
{
  result = qword_1EC9E3550;
  if (!qword_1EC9E3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3550);
  }

  return result;
}

unint64_t sub_1D7A8D8CC()
{
  result = qword_1EC9E3558;
  if (!qword_1EC9E3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3558);
  }

  return result;
}

unint64_t sub_1D7A8D924()
{
  result = qword_1EC9E3560;
  if (!qword_1EC9E3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3560);
  }

  return result;
}

uint64_t sub_1D7A8D978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7D6DEA0 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7D6DEC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7D3197C();

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

uint64_t sub_1D7A8DABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D7D3197C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7A8DB48(uint64_t a1)
{
  v2 = sub_1D7A8DD48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A8DB84(uint64_t a1)
{
  v2 = sub_1D7A8DD48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecipeTopicsEndOfRecipeFeedGroup.encode(to:)(void *a1)
{
  sub_1D7A8E048(0, &qword_1EC9E3568, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A8DD48();
  sub_1D7D31B1C();
  sub_1D7D2DE2C();
  sub_1D7A8E5CC(&qword_1EC9E3578, MEMORY[0x1E69B5888]);
  sub_1D7D318BC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D7A8DD48()
{
  result = qword_1EC9E3570;
  if (!qword_1EC9E3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E3570);
  }

  return result;
}

uint64_t RecipeTopicsEndOfRecipeFeedGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1D7D2DE2C();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A8E048(0, &qword_1EC9E3580, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A8DD48();
  sub_1D7D31AFC();
  if (!v2)
  {
    v16 = v21;
    v17 = v22;
    sub_1D7A8E5CC(&qword_1EC9E3588, MEMORY[0x1E69B5888]);
    sub_1D7D317DC();
    (*(v16 + 8))(v11, v8);
    (*(v17 + 32))(v15, v23, v4);
    sub_1D7A8E0AC(v15, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7A8E048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7A8DD48();
    v7 = a3(a1, &type metadata for RecipeTopicsEndOfRecipeFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7A8E0AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A8E150(void *a1)
{
  sub_1D7A8E048(0, &qword_1EC9E3568, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A8DD48();
  sub_1D7D31B1C();
  sub_1D7D2DE2C();
  sub_1D7A8E5CC(&qword_1EC9E3578, MEMORY[0x1E69B5888]);
  sub_1D7D318BC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D7A8E2E8(uint64_t a1)
{
  v2 = sub_1D7A8E5CC(&qword_1EC9E35C0, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);

  return MEMORY[0x1EEE21E00](a1, v2);
}

unint64_t sub_1D7A8E4C8()
{
  result = qword_1EC9E35A8;
  if (!qword_1EC9E35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E35A8);
  }

  return result;
}

unint64_t sub_1D7A8E520()
{
  result = qword_1EC9E35B0;
  if (!qword_1EC9E35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E35B0);
  }

  return result;
}

unint64_t sub_1D7A8E578()
{
  result = qword_1EC9E35B8;
  if (!qword_1EC9E35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E35B8);
  }

  return result;
}

uint64_t sub_1D7A8E5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7A8E63C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v19 = a2;
  v4 = sub_1D7D2F06C();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v20 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A8EC78(0, &qword_1EC9E35C8, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A8EC24();
  sub_1D7D31AFC();
  if (!v2)
  {
    v14 = v18;
    v13 = v19;
    v21 = 1;
    sub_1D79EB9CC(&qword_1EE0BF738);
    sub_1D7D317DC();
    (*(v9 + 8))(v12, v8);
    *v13 = 0;
    v15 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData();
    (*(v14 + 32))(&v13[*(v15 + 20)], v20, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7A8E8A0(void *a1)
{
  v3 = v1;
  sub_1D7A8EC78(0, &qword_1EC9E35D8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A8EC24();
  sub_1D7D31B1C();
  v12[15] = *v3;
  v12[14] = 0;
  sub_1D7A8ECDC();
  sub_1D7D318BC();
  if (!v2)
  {
    type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData();
    v12[13] = 1;
    sub_1D7D2F06C();
    sub_1D79EB9CC(&qword_1EC9E1BE8);
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7A8EA6C()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_1D7A8EAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D7D3197C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7D3197C();

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

uint64_t sub_1D7A8EB7C(uint64_t a1)
{
  v2 = sub_1D7A8EC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A8EBB8(uint64_t a1)
{
  v2 = sub_1D7A8EC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7A8EC24()
{
  result = qword_1EC9E35D0;
  if (!qword_1EC9E35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E35D0);
  }

  return result;
}

void sub_1D7A8EC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7A8EC24();
    v7 = a3(a1, &type metadata for RecipeTopicsEndOfRecipeFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7A8ECDC()
{
  result = qword_1EC9E35E0;
  if (!qword_1EC9E35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E35E0);
  }

  return result;
}

unint64_t sub_1D7A8ED44()
{
  result = qword_1EC9E35E8;
  if (!qword_1EC9E35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E35E8);
  }

  return result;
}

unint64_t sub_1D7A8ED9C()
{
  result = qword_1EC9E35F0;
  if (!qword_1EC9E35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E35F0);
  }

  return result;
}

unint64_t sub_1D7A8EDF4()
{
  result = qword_1EC9E35F8;
  if (!qword_1EC9E35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E35F8);
  }

  return result;
}

uint64_t type metadata accessor for RecipeContentPrefetchOperation()
{
  result = qword_1EE0BC3E8;
  if (!qword_1EE0BC3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A8EEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D7A9061C(0, &unk_1EE0BB400, type metadata accessor for RecipeContentPrefetchItem, MEMORY[0x1E69D6AF8]);
  v6[5] = v7;
  v6[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A8EFC4, 0, 0);
}

uint64_t sub_1D7A8EFC4()
{
  v1 = v0[2] + qword_1EE0BC400;
  v2 = *v1;
  v0[7] = *v1;
  v3 = *(v1 + 8);
  v0[8] = v3;
  if (*(v1 + 16))
  {
    v4 = v2;
    v5 = [v4 source];
    if (v5 != 1)
    {
      if (v5)
      {
        v14 = v0[6];
        v15 = v0[3];
        *v14 = v4;
        type metadata accessor for RecipeContentPrefetchItem();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v16 = v4;
        v15(v14);
        sub_1D7A90544(v2, v3, 1);
        sub_1D7A90680(v14);

        v17 = v0[1];

        return v17();
      }

      else
      {
        v6 = swift_task_alloc();
        v0[10] = v6;
        *v6 = v0;
        v6[1] = sub_1D7A8F414;
        v7 = v0[6];

        return sub_1D7A8FEB0(v7, v4);
      }
    }

    v11 = [v4 identifier];
    v2 = sub_1D7D3034C();
    v3 = v12;

    v0[11] = v3;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v10 = sub_1D7A8F5A8;
  }

  else
  {

    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v10 = sub_1D7A8F264;
  }

  v9[1] = v10;
  v13 = v0[6];

  return sub_1D7A8F6C0(v13, v2, v3);
}

uint64_t sub_1D7A8F264()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);

  sub_1D7A90544(v2, v1, 0);

  return MEMORY[0x1EEE6DFA0](sub_1D7A8F398, 0, 0);
}

uint64_t sub_1D7A8F398()
{
  v1 = *(v0 + 48);
  (*(v0 + 24))(v1);
  sub_1D7A90680(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D7A8F414()
{

  return MEMORY[0x1EEE6DFA0](sub_1D7A8F510, 0, 0);
}

uint64_t sub_1D7A8F510()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  (*(v0 + 24))(v3);
  sub_1D7A90544(v2, v1, 1);
  sub_1D7A90680(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D7A8F5A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D7A90810, 0, 0);
}

uint64_t sub_1D7A8F6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1D7D27D2C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A8F784, 0, 0);
}

uint64_t sub_1D7A8F784()
{
  v1 = (v0[5] + qword_1EE0BC3F8);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_opt_self() defaultCachePolicy];
  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1D7A8F878;
  v7 = v0[3];
  v6 = v0[4];

  return MEMORY[0x1EEE22160](v7, v6, v4, v2, v3);
}

uint64_t sub_1D7A8F878(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1D7A8FD38;
  }

  else
  {

    v4 = sub_1D7A8F994;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7A8F994()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = (v0[5] + qword_1EE0BC408);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1D7A8FB2C;
    v6 = v0[8];

    return MEMORY[0x1EEE22618](v6, v1, v3, v4);
  }

  else
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];
    sub_1D7A9070C();
    v10 = swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v7;
    *(v11 + 16) = 0;
    *v9 = v10;
    sub_1D7A9061C(0, &unk_1EE0BB400, type metadata accessor for RecipeContentPrefetchItem, MEMORY[0x1E69D6AF8]);
    swift_storeEnumTagMultiPayload();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1D7A8FB2C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D7A8FDF4;
  }

  else
  {
    v2 = sub_1D7A8FC40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A8FC40()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  (*(v2 + 32))(v4, v1, v3);
  type metadata accessor for RecipeContentPrefetchItem();
  swift_storeEnumTagMultiPayload();
  sub_1D7A9061C(0, &unk_1EE0BB400, type metadata accessor for RecipeContentPrefetchItem, MEMORY[0x1E69D6AF8]);
  swift_storeEnumTagMultiPayload();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D7A8FD38()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);

  *v2 = v1;
  sub_1D7A9061C(0, &unk_1EE0BB400, type metadata accessor for RecipeContentPrefetchItem, MEMORY[0x1E69D6AF8]);
  swift_storeEnumTagMultiPayload();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D7A8FDF4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);

  *v2 = v1;
  sub_1D7A9061C(0, &unk_1EE0BB400, type metadata accessor for RecipeContentPrefetchItem, MEMORY[0x1E69D6AF8]);
  swift_storeEnumTagMultiPayload();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D7A8FEB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D7D27D2C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A8FF74, 0, 0);
}

uint64_t sub_1D7A8FF74()
{
  v1 = (v0[4] + qword_1EE0BC408);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1D7A90040;
  v5 = v0[7];
  v6 = v0[3];

  return MEMORY[0x1EEE22618](v5, v6, v2, v3);
}

uint64_t sub_1D7A90040()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D7A90234;
  }

  else
  {
    v2 = sub_1D7A90154;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A90154()
{
  (*(v0[6] + 32))(v0[2], v0[7], v0[5]);
  type metadata accessor for RecipeContentPrefetchItem();
  swift_storeEnumTagMultiPayload();
  sub_1D7A9061C(0, &unk_1EE0BB400, type metadata accessor for RecipeContentPrefetchItem, MEMORY[0x1E69D6AF8]);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D7A90234()
{
  **(v0 + 16) = *(v0 + 72);
  sub_1D7A9061C(0, &unk_1EE0BB400, type metadata accessor for RecipeContentPrefetchItem, MEMORY[0x1E69D6AF8]);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A90318()
{
  sub_1D7A90544(*(v0 + qword_1EE0BC400), *(v0 + qword_1EE0BC400 + 8), *(v0 + qword_1EE0BC400 + 16));
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_1EE0BC3F8);
  v1 = v0 + qword_1EE0BC408;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_1D7A90370(uint64_t a1)
{
  sub_1D7A90544(*(a1 + qword_1EE0BC400), *(a1 + qword_1EE0BC400 + 8), *(a1 + qword_1EE0BC400 + 16));
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_1EE0BC3F8);
  v2 = a1 + qword_1EE0BC408;

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1D7A903D4(uint64_t a1, uint64_t a2)
{
  sub_1D7A9061C(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_1D7D3087C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  sub_1D7AF94C0(0, 0, v8, &unk_1D7D45DD0, v10);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}