void sub_1D3371984()
{
  sub_1D3371B10();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D33DE464();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D3371B10()
{
  if (!qword_1EDEC0010)
  {
    sub_1D33DDD34();
    v0 = sub_1D33DECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC0010);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D3371B7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D3371BC4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D3371C3C()
{
  result = sub_1D33DE464();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D3371CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3371D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D334D4B4;

  return sub_1D336EC58(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1D3371E50(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D334D4B4;

  return sub_1D336EFF4(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1D3371F2C(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D334D4B4;

  return sub_1D336F430(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t objectdestroy_45Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D3372088(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D334D4B4;

  return sub_1D336F9AC(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1D337217C(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D334D4B4;

  return sub_1D336FD20(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t objectdestroy_2Tm(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[4]);
  a2(v2[5]);

  return MEMORY[0x1EEE6BDD0](v2, 48, 7);
}

uint64_t sub_1D33722D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334CF9C;

  return sub_1D336E7A8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D3372394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D33723DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D337244C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D334CF9C;

  return sub_1D331E8E0(a1, v5);
}

unint64_t sub_1D3372504()
{
  result = qword_1EDEBEED8;
  if (!qword_1EDEBEED8)
  {
    sub_1D331DA18(255, &qword_1EDEBEEC8, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEED8);
  }

  return result;
}

uint64_t CallsSearchManager.results.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_results;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t CallsSearchManager.searchText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchText);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t CallsSearchManager.searchText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchText);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id sub_1D33726D4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_results] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_resultIDs] = v5;
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs] = v5;
  v6 = &v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchText];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchTokens] = v5;
  v7 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_featureFlags;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v8 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_logger;
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1D33DE464();
  v10 = __swift_project_value_buffer(v9, qword_1EC762160);
  (*(*(v9 - 8) + 16))(&v2[v8], v10, v9);
  v11 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsUpdatedContinuation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761560, &qword_1D33E2CC0);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsController] = a1;
  v13 = a1;
  v14 = [v13 callProviderManager];
  v15 = objc_allocWithZone(type metadata accessor for SpotlightSearchDataSource());
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_dataSource] = sub_1D3376320(0, v14);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v17 = v16;
  v18 = sub_1D33DEB94();
  [v13 addDelegate:v17 queue:v18];

  return v17;
}

uint64_t sub_1D3372928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761568, &qword_1D33E2CC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761560, &qword_1D33E2CC0);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsUpdatedContinuation;
  swift_beginAccess();
  sub_1D3375E04(v7, a2 + v10);
  return swift_endAccess();
}

uint64_t CallsSearchManager.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D33DE944();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = sub_1D33DE974();
  v4[17] = sub_1D33DE964();
  v9 = sub_1D33DE914();
  v4[18] = v9;
  v4[19] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D3372B5C, v9, v8);
}

uint64_t sub_1D3372B5C()
{
  v1 = v0[10];
  if (!v1)
  {
    goto LABEL_22;
  }

  v2 = v0[9];
  v3 = v0[10];
  if (sub_1D33DE834() > 0)
  {
    goto LABEL_5;
  }

  v4 = v0[11];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v23 = v0[11];
    }

    if (sub_1D33DEE14() >= 1)
    {
      goto LABEL_5;
    }

LABEL_22:
    v24 = v0[16];
    v25 = v0[12];
    v26 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_results;
    swift_beginAccess();
    v27 = *(v25 + v26);
    v28 = MEMORY[0x1E69E7CC0];
    *(v25 + v26) = MEMORY[0x1E69E7CC0];

    v29 = *(v25 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_resultIDs);
    *(v25 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_resultIDs) = v28;

    v30 = *(v25 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs);
    *(v25 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs) = v28;

    v0[30] = sub_1D33DE964();
    v32 = sub_1D33DE914();
    v0[31] = v32;
    v0[32] = v31;

    return MEMORY[0x1EEE6DFA0](sub_1D33739F0, v32, v31);
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_22;
  }

LABEL_5:
  v5 = (v0[12] + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchText);
  swift_beginAccess();
  v6 = v5[1];
  if (v6 && (*v5 == v0[9] ? (v7 = v6 == v0[10]) : (v7 = 0), v7 || (sub_1D33DF1B4() & 1) != 0))
  {
    v8 = v0[11];
    v9 = *(v0[12] + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchTokens);

    LOBYTE(v8) = sub_1D3374168(v10, v8, &unk_1EC761570, 0x1E69DCF30);

    if (v8)
    {
      v11 = v0[17];

      v12 = v0[15];

      v13 = v0[1];

      return v13();
    }
  }

  else
  {
  }

  v15 = v0[11];
  v16 = v0[12];
  v17 = v5[1];
  *v5 = *(v0 + 9);

  v18 = *(v16 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchTokens);
  *(v16 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchTokens) = v15;

  v19 = *(v16 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_dataSource);
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_1D3372E50;
  v21 = v0[11];
  v22 = v0[9];

  return sub_1D3377A10(v22, v1, v21);
}

uint64_t sub_1D3372E50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);
  v8 = *(v3 + 144);
  if (v1)
  {
    v9 = sub_1D3373D40;
  }

  else
  {
    v9 = sub_1D3372F94;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D3372F94()
{
  v65 = v0;
  v1 = *(v0 + 176);
  sub_1D33DEA04();
  v2 = *(v0 + 168);
  if (v1)
  {
    v3 = *(v0 + 136);

    v4 = *(v0 + 120);
    v5 = *(v0 + 104);
    *(v0 + 64) = v1;
    v6 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v7 = swift_dynamicCast();
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);
    if (v7)
    {

      v10 = sub_1D33DE444();
      v11 = sub_1D33DEAD4();

      if (os_log_type_enabled(v10, v11))
      {
        v13 = *(v0 + 72);
        v12 = *(v0 + 80);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v64[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1D3328B48(v13, v12, v64);
        _os_log_impl(&dword_1D331A000, v10, v11, "CallsSearchController: Search cancelled for '%s'", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1D38B81C0](v15, -1, -1);
        MEMORY[0x1D38B81C0](v14, -1, -1);
      }

      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      goto LABEL_12;
    }

    v26 = sub_1D33DE444();
    v27 = sub_1D33DEAD4();

    if (os_log_type_enabled(v26, v27))
    {
      v29 = *(v0 + 72);
      v28 = *(v0 + 80);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v64[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1D3328B48(v29, v28, v64);
      _os_log_impl(&dword_1D331A000, v26, v27, "CallsSearchController: Failed to search for %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1D38B81C0](v31, -1, -1);
      MEMORY[0x1D38B81C0](v30, -1, -1);
    }

LABEL_11:
LABEL_12:
    v32 = *(v0 + 120);

    v33 = *(v0 + 8);

    return v33();
  }

  v16 = *(v0 + 96);
  v17 = *(v0 + 80);

  v18 = sub_1D33DE444();
  v19 = sub_1D33DEAF4();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 168);
  if (v20)
  {
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v24 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    v25 = v64[0];
    *v24 = 136315394;
    *(v24 + 4) = sub_1D3328B48(v23, v22, v64);
    *(v24 + 12) = 2048;
    *(v24 + 14) = *(v21 + 16);

    _os_log_impl(&dword_1D331A000, v18, v19, "CallsSearchController: Completed search for %s. Got %ld results", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1D38B81C0](v25, -1, -1);
    MEMORY[0x1D38B81C0](v24, -1, -1);
  }

  else
  {
    v35 = *(v0 + 168);
  }

  v36 = *(v0 + 168);
  if (*(v36 + 16))
  {
    v64[0] = *(v0 + 168);

    sub_1D3375198(v64);
    v37 = *(v0 + 96);
    v38 = v64[0];
    v39 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs;
    v64[0] = *(v37 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs);
    swift_bridgeObjectRetain_n();
    sub_1D3375198(v64);

    v48 = sub_1D33743D0(v38, v64[0]);

    v49 = *(v0 + 168);
    if (v48)
    {
      v50 = *(v0 + 136);

      v26 = sub_1D33DE444();
      v51 = sub_1D33DEAF4();
      if (os_log_type_enabled(v26, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1D331A000, v26, v51, "CallsSearchController: Search calls did not change for calls search controller.", v52, 2u);
        MEMORY[0x1D38B81C0](v52, -1, -1);
      }

      goto LABEL_11;
    }

    v53 = *(v0 + 168);

    v54 = sub_1D33DE444();
    v55 = sub_1D33DEAF4();
    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 168);
    if (v56)
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = *(v36 + 16);

      _os_log_impl(&dword_1D331A000, v54, v55, "CallsSearchController: Search calls did changed! Search results count: %ld", v58, 0xCu);
      MEMORY[0x1D38B81C0](v58, -1, -1);
    }

    else
    {
      v59 = *(v0 + 168);
    }

    v60 = *(v37 + v39);
    *(v37 + v39) = *(v0 + 168);

    v61 = objc_opt_self();

    v62 = sub_1D33DE8A4();

    v63 = [v61 predicateForCallsWithAnyUniqueIDs_];

    v44 = v63;
  }

  else
  {
    v40 = *(v0 + 96);
    v41 = *(v0 + 168);

    v42 = [objc_opt_self() predicateWithValue_];
    v43 = *(v40 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs);
    *(v40 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs) = MEMORY[0x1E69E7CC0];
    v44 = v42;
  }

  *(v0 + 184) = v44;
  v45 = *(v0 + 128);
  *(v0 + 192) = sub_1D33DE964();
  v47 = sub_1D33DE914();
  *(v0 + 200) = v47;
  *(v0 + 208) = v46;

  return MEMORY[0x1EEE6DFA0](sub_1D337368C, v47, v46);
}

uint64_t sub_1D337368C()
{
  v1 = v0[16];
  v2 = v0[12];
  [*(v2 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsController) setPreFetchingPredicate_];
  v0[27] = sub_1D33DE964();
  v3 = swift_task_alloc();
  v0[28] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1D33737B0;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1D33737B0()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 216);
  v8 = *v0;

  v5 = *(v1 + 208);
  v6 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1D3373910, v6, v5);
}

uint64_t sub_1D3373910()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D337397C, v2, v3);
}

uint64_t sub_1D337397C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D33739F0()
{
  v1 = v0[16];
  v2 = v0[12];
  [*(v2 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsController) setPreFetchingPredicate_];
  v0[33] = sub_1D33DE964();
  v3 = swift_task_alloc();
  v0[34] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_1D3373B14;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1D3373B14()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 264);
  v8 = *v0;

  v5 = *(v1 + 256);
  v6 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D3373C74, v6, v5);
}

uint64_t sub_1D3373C74()
{
  v1 = v0[30];

  v2 = v0[18];
  v3 = v0[19];

  return MEMORY[0x1EEE6DFA0](sub_1D3373CD8, v2, v3);
}

uint64_t sub_1D3373CD8()
{
  v1 = v0[17];

  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D3373D40()
{
  v25 = v0;
  v1 = *(v0 + 136);

  v2 = *(v0 + 176);
  *(v0 + 64) = v2;
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);
  if (v6)
  {

    v9 = sub_1D33DE444();
    v10 = sub_1D33DEAD4();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 72);
      v11 = *(v0 + 80);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D3328B48(v12, v11, &v24);
      _os_log_impl(&dword_1D331A000, v9, v10, "CallsSearchController: Search cancelled for '%s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1D38B81C0](v14, -1, -1);
      MEMORY[0x1D38B81C0](v13, -1, -1);
    }

    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  }

  else
  {

    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAD4();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 72);
      v17 = *(v0 + 80);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1D3328B48(v18, v17, &v24);
      _os_log_impl(&dword_1D331A000, v15, v16, "CallsSearchController: Failed to search for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1D38B81C0](v20, -1, -1);
      MEMORY[0x1D38B81C0](v19, -1, -1);
    }
  }

  v21 = *(v0 + 120);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D3374000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
      v5 = (a2 + 48);
      v6 = (a1 + 48);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v16 = *(v6 - 2);
        v9 = *(v5 - 2);
        v10 = *(v5 - 1);
        v11 = *v5;

        v12 = v7;

        v13 = v10;

        v14 = sub_1D33DEC74();

        if ((v14 & 1) == 0)
        {
          break;
        }

        v5 += 3;
        v6 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D3374168(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1D331DA18(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1D38B75D0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1D38B75D0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1D33DEC74();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1D33DEC74();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1D33DEE14();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1D33DEE14();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D33743D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D33DF1B4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

char *sub_1D3374460(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761568, &qword_1D33E2CC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761560, &qword_1D33E2CC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v62 - v10;
  v11 = type metadata accessor for RecentsItem(0);
  v73 = *(v11 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    v64 = v8;
    v67 = v7;
    v74 = v2;
    v76 = a1;
    if (!i)
    {
      break;
    }

    v16 = 0;
    v68 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsController;
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v72 = a1 & 0xC000000000000001;
    v17 = MEMORY[0x1E69E7CC0];
    v69 = i;
    v70 = v14;
    while (1)
    {
      if (v72)
      {
        v18 = MEMORY[0x1D38B75D0](v16, a1);
      }

      else
      {
        if (v16 >= *(v71 + 16))
        {
          goto LABEL_48;
        }

        v18 = *(a1 + 8 * v16 + 32);
      }

      a1 = v18;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = *(v2 + v68);
      v21 = [v20 itemForRecentCall_];
      if (qword_1EDEBFC30 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
      v22 = sub_1D33DE8A4();
      v23 = [v20 contactByHandleForRecentCall:a1 keyDescriptors:v22];

      if (v23)
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
        sub_1D331F514();
        v24 = sub_1D33DE6F4();
      }

      else
      {
        v24 = sub_1D3320188(MEMORY[0x1E69E7CC0]);
      }

      v25 = [a1 validRemoteParticipantHandles];
      if (v25)
      {
        v26 = v25;
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        sub_1D331F514();
        v27 = sub_1D33DEA54();

        v28 = a1;
        v29 = v20;
        v75 = a1;
        v30 = v21;
        v31 = v29;
        v32 = sub_1D336C398(v27, v24, v28);

        swift_bridgeObjectRelease_n();

        v21 = v30;
        v19 = v16 + 1;
        a1 = v75;
      }

      else
      {

        v32 = MEMORY[0x1E69E7CC0];
      }

      v14 = v70;
      RecentsItem.init(from:recentsItem:contacts:)(a1, v21, v32, v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v69;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1D33226AC(0, v17[2] + 1, 1, v17);
      }

      v2 = v74;
      a1 = v76;
      v8 = v17[2];
      v35 = v17[3];
      v7 = v8 + 1;
      if (v8 >= v35 >> 1)
      {
        v17 = sub_1D33226AC(v35 > 1, v8 + 1, 1, v17);
      }

      v17[2] = v7;
      sub_1D33302BC(v14, v17 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v8);
      ++v16;
      if (v19 == v34)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v36 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_results;
  swift_beginAccess();
  v37 = *(v2 + v36);
  *(v2 + v36) = v17;

  if (v66)
  {
    v38 = sub_1D33DEE14();
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v67;
  v40 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v77 = MEMORY[0x1E69E7CC0];
    result = sub_1D334A9E0(0, v38 & ~(v38 >> 63), 0);
    if (v38 < 0)
    {
      __break(1u);
      return result;
    }

    v42 = 0;
    v40 = v77;
    v43 = a1 & 0xC000000000000001;
    do
    {
      if (v43)
      {
        v44 = MEMORY[0x1D38B75D0](v42, a1);
      }

      else
      {
        v44 = *(a1 + 8 * v42 + 32);
      }

      v45 = v44;
      v46 = [v44 uniqueId];
      v47 = sub_1D33DE7B4();
      v49 = v48;

      v77 = v40;
      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1D334A9E0((v50 > 1), v51 + 1, 1);
        v40 = v77;
      }

      ++v42;
      *(v40 + 16) = v51 + 1;
      v52 = v40 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
      a1 = v76;
    }

    while (v38 != v42);
    v2 = v74;
    v39 = v67;
  }

  v53 = *(v2 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_resultIDs);
  *(v2 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_resultIDs) = v40;

  v54 = sub_1D33DE444();
  v55 = sub_1D33DEAF4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    if (v66)
    {
      v57 = sub_1D33DEE14();
    }

    else
    {
      v57 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v56 + 4) = v57;

    _os_log_impl(&dword_1D331A000, v54, v55, "CallsSearchController: Fetched calls. Found %ld calls", v56, 0xCu);
    MEMORY[0x1D38B81C0](v56, -1, -1);

    v39 = v67;
  }

  else
  {
  }

  v58 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsUpdatedContinuation;
  swift_beginAccess();
  v59 = v64;
  if (!(*(v64 + 48))(v2 + v58, 1, v39))
  {
    v60 = v63;
    (*(v59 + 16))(v63, v2 + v58, v39);
    sub_1D33DE934();
    (*(v59 + 8))(v60, v39);
  }

  v61 = v65;
  (*(v59 + 56))(v65, 1, 1, v39);
  swift_beginAccess();
  sub_1D3375E04(v61, v2 + v58);
  return swift_endAccess();
}

id CallsSearchManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallsSearchManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D3374E58()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_results;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1D3374EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D334CF9C;

  return CallsSearchManager.search(with:searchTokens:)(a1, a2, a3);
}

uint64_t _s16CallsAppServices0A13SearchManagerC17recentsController_19didCompleteFetchingySo09PKRecentsG0C_SaySo12CHRecentCallCGtF_0(void *a1)
{
  v1 = [a1 recentCalls];
  if (v1)
  {
    v2 = v1;
    sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
    v3 = sub_1D33DE8B4();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1D3374460(v3);
}

uint64_t CallsSearchManager.recentsController(_:didChangeUnreadCallCount:)(void *a1)
{
  v1 = [a1 recentCalls];
  if (v1)
  {
    v2 = v1;
    sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
    v3 = sub_1D33DE8B4();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1D3374460(v3);
}

uint64_t sub_1D3375168@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D3375198(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D33A93EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D3375438(v5);
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for CallsSearchManager()
{
  result = qword_1EC761548;
  if (!qword_1EC761548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D3375258()
{
  v0 = sub_1D33DE464();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D337536C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D337536C()
{
  if (!qword_1EC761558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC761560, &qword_1D33E2CC0);
    v0 = sub_1D33DECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC761558);
    }
  }
}

uint64_t sub_1D33753D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761568, &qword_1D33E2CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3375438(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D33DF164();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D33DE8E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D3375600(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D3375530(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D3375530(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D33DF1B4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D3375600(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D33A9330(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D3375BDC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D33DF1B4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D33DF1B4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D3359A14(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D3359A14((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D3375BDC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D33A9330(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D33A92A4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D33DF1B4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1D3375BDC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D33DF1B4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D33DF1B4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D3375E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761568, &qword_1D33E2CC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D3375E8C()
{
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762160);
  v2 = v0;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = sub_1D337C5A0();
    v9 = sub_1D3328B48(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D331A000, v3, v4, "%s Cancelling current search query", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  v10 = *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_serialQueue];
  MEMORY[0x1EEE9AC00](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  sub_1D33DEBA4();
  v12 = *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_query];
  *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_query] = 0;

  MEMORY[0x1EEE9AC00](v13);
  sub_1D33DEBA4();
  v14 = *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery];
  *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery] = 0;
}

uint64_t _s16CallsAppServices12LoadingStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D33DF284();
  MEMORY[0x1D38B7920](v1);
  return sub_1D33DF2C4();
}

uint64_t sub_1D3376118()
{
  v1 = *v0;
  sub_1D33DF284();
  MEMORY[0x1D38B7920](v1);
  return sub_1D33DF2C4();
}

id sub_1D3376184()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761040, &qword_1D33E1B40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D33E2410;
  v3 = *MEMORY[0x1E69935F8];
  *(v2 + 32) = sub_1D33DE7B4();
  *(v2 + 40) = v4;
  v5 = sub_1D33DE8A4();

  [v1 setBundleIDs_];

  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_searchItemType))
  {
    v6 = MEMORY[0x1E6993608];
  }

  else
  {
    v6 = MEMORY[0x1E6993600];
  }

  v7 = *v6;
  v8 = sub_1D33DE7B4();
  v10 = v9;
  v11 = *MEMORY[0x1E6963EA0];
  v16 = sub_1D33DE7B4();
  v17 = v12;
  MEMORY[0x1D38B6ED0](540884256, 0xE400000000000000);
  MEMORY[0x1D38B6ED0](v8, v10);

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D33E2410;
  *(v13 + 32) = v16;
  *(v13 + 40) = v17;
  v14 = sub_1D33DE8A4();

  [v1 setFilterQueries_];

  return v1;
}

char *sub_1D3376320(int a1, void *a2)
{
  v3 = v2;
  v31 = a2;
  v30 = a1;
  v29 = sub_1D33DEB84();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D33DEB24();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1D33DE6A4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_serialQueue;
  v12 = sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v27[1] = "search(with:searchTokens:)";
  v27[2] = v12;
  sub_1D33DE694();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&qword_1EDEBEEE0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
  sub_1D337D8EC(&qword_1EDEBEF20, &unk_1EC760F10, &qword_1D33E2E40);
  sub_1D33DED64();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v29);
  *&v2[v28] = sub_1D33DEBD4();
  v13 = &v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_kCSQueryFlags];
  *v13 = 1952741219;
  v13[1] = 0xE400000000000000;
  *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_query] = 0;
  *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery] = 0;
  v14 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_featureFlags;
  *&v3[v14] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v15 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext;
  *&v3[v15] = [objc_allocWithZone(MEMORY[0x1E6964ED0]) init];
  v16 = &v3[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_text];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel;
  *&v3[v17] = sub_1D336BD10(MEMORY[0x1E69E7CC0]);
  v18 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion;
  *&v3[v18] = [objc_opt_self() emptySuggestion];
  v3[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_searchItemType] = v30;
  v19 = v31;
  *&v3[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_callProviderManager] = v31;
  v20 = type metadata accessor for SpotlightSearchDataSource();
  v32.receiver = v3;
  v32.super_class = v20;
  v21 = v19;
  v22 = objc_msgSendSuper2(&v32, sel_init);
  v23 = sub_1D337B6C4();
  v24 = *&v22[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel];
  *&v22[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel] = v23;

  v25 = sub_1D33DEB94();
  [v21 addDelegate:v22 queue:v25];

  return v22;
}

uint64_t sub_1D337670C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1D33DE974();
  v3[7] = sub_1D33DE964();
  v5 = sub_1D33DE914();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D33767AC, v5, v4);
}

uint64_t sub_1D33767AC()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_1D3376184();
  v6 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v7 = sub_1D33DE784();
  v8 = [v6 initWithQueryString:v7 queryContext:v5];
  v0[10] = v8;

  v9 = *(v1 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_serialQueue);
  *(swift_task_alloc() + 16) = v1;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  sub_1D33DEBA4();

  v11 = *(v1 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_query);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_query) = v8;

  v12 = sub_1D33DE964();
  v0[11] = v12;
  v13 = swift_task_alloc();
  v0[12] = v13;
  v13[2] = v10;
  v13[3] = v1;
  v13[4] = v4;
  v13[5] = v3;
  v14 = *(MEMORY[0x1E69E8920] + 4);
  v15 = swift_task_alloc();
  v0[13] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  *v15 = v0;
  v15[1] = sub_1D33769B8;
  v17 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v12, v17, 0xD000000000000018, 0x80000001D33E6960, sub_1D337CFEC, v13, v16);
}

uint64_t sub_1D33769B8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1D3376B50;
  }

  else
  {
    v7 = v2[11];
    v8 = v2[12];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1D3376ADC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D3376ADC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D3376B50()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_1D3376BD8(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v47 = a3;
  v48 = a5;
  v8 = sub_1D33DE664();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D33DE6A4();
  v51 = *(v53 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v61 = sub_1D337CFF8;
  v62 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v49 = &v59;
  v59 = sub_1D3377408;
  v60 = &block_descriptor_40;
  v19 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v19);
  (*(v14 + 16))(v17, a1, v13);
  v20 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  v23 = a2;
  v24 = v47;
  *(v22 + 3) = v47;
  *(v22 + 4) = a4;
  v46 = a4;
  v25 = v48;
  *(v22 + 5) = v48;
  (*(v14 + 32))(&v22[v20], v17, v13);
  *&v22[v21] = v18;
  v61 = sub_1D337D000;
  v62 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1D3352A4C;
  v60 = &block_descriptor_46;
  v26 = _Block_copy(&aBlock);
  v49 = v18;

  v27 = v23;
  v28 = v24;

  [v27 setCompletionHandler_];
  _Block_release(v26);
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D33DE464();
  __swift_project_value_buffer(v29, qword_1EC762160);
  v30 = v28;

  v31 = sub_1D33DE444();
  v32 = sub_1D33DEAF4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock = v34;
    *v33 = 136315394;
    v35 = sub_1D337C5A0();
    v37 = sub_1D3328B48(v35, v36, &aBlock);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_1D3328B48(v46, v25, &aBlock);
    _os_log_impl(&dword_1D331A000, v31, v32, "%s Beginning search query for queryString %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B81C0](v34, -1, -1);
    MEMORY[0x1D38B81C0](v33, -1, -1);
  }

  v38 = *&v30[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_serialQueue];
  v39 = swift_allocObject();
  *(v39 + 16) = v27;
  v61 = sub_1D337DB1C;
  v62 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1D3329468;
  v60 = &block_descriptor_52;
  v40 = _Block_copy(&aBlock);
  v41 = v27;
  v42 = v50;
  sub_1D33DE674();
  v56 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&unk_1EDEBEF50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D337D8EC(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  v43 = v52;
  v44 = v55;
  sub_1D33DED64();
  MEMORY[0x1D38B7240](0, v42, v43, v40);
  _Block_release(v40);
  (*(v54 + 8))(v43, v44);
  (*(v51 + 8))(v42, v53);
}

char *sub_1D337728C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1D33DEE14();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_12:
    swift_beginAccess();
    sub_1D33CC9C8(v5);
    return swift_endAccess();
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1D334A9E0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v17 = a2;
    v7 = 0;
    v5 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D38B75D0](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 uniqueIdentifier];
      v11 = sub_1D33DE7B4();
      v13 = v12;

      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D334A9E0((v14 > 1), v15 + 1, 1);
      }

      ++v7;
      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v4 != v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1D337741C(void *a1, id a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if ([a2 isCancelled])
  {
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D33DE464();
    __swift_project_value_buffer(v12, qword_1EC762160);
    v13 = a3;

    v14 = sub_1D33DE444();
    v15 = sub_1D33DEAF4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = v17;
      *v16 = 136315394;
      v18 = sub_1D337C5A0();
      v20 = sub_1D3328B48(v18, v19, v50);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D3328B48(a4, a5, v50);
      _os_log_impl(&dword_1D331A000, v14, v15, "%s search query is cancelled for queryString %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B81C0](v17, -1, -1);
      MEMORY[0x1D38B81C0](v16, -1, -1);
    }

    sub_1D337CF78();
    v21 = swift_allocError();
    *v22 = 1;
    v50[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE924();
  }

  else if (a1)
  {
    v23 = a1;
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D33DE464();
    __swift_project_value_buffer(v24, qword_1EC762160);
    v25 = a3;
    v26 = a1;
    v27 = sub_1D33DE444();
    v28 = sub_1D33DEAD4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v50[0] = v31;
      *v29 = 136315394;
      v32 = sub_1D337C5A0();
      v34 = sub_1D3328B48(v32, v33, v50);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2112;
      v35 = a1;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&dword_1D331A000, v27, v28, "%s Fetching search results from Spotlight failed with error: %@", v29, 0x16u);
      sub_1D331E880(v30, &qword_1EC761D90, &unk_1D33E4E90);
      MEMORY[0x1D38B81C0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1D38B81C0](v31, -1, -1);
      MEMORY[0x1D38B81C0](v29, -1, -1);
    }

    sub_1D337CF78();
    v37 = swift_allocError();
    *v38 = 0;
    v50[0] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE924();
  }

  else
  {
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D33DE464();
    __swift_project_value_buffer(v39, qword_1EC762160);
    swift_retain_n();
    v40 = a3;

    v41 = sub_1D33DE444();
    v42 = sub_1D33DEAF4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50[0] = v44;
      *v43 = 136315650;
      v45 = sub_1D337C5A0();
      v47 = sub_1D3328B48(v45, v46, v50);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2048;
      swift_beginAccess();
      v48 = *(*(a7 + 16) + 16);

      *(v43 + 14) = v48;

      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_1D3328B48(a4, a5, v50);
      _os_log_impl(&dword_1D331A000, v41, v42, "%s Got %ld search results for queryString %s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B81C0](v44, -1, -1);
      MEMORY[0x1D38B81C0](v43, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v49 = *(a7 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE934();
  }
}

uint64_t sub_1D3377A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[13] = sub_1D33DE974();
  v4[14] = sub_1D33DE964();
  v6 = sub_1D33DE914();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D3377AB0, v6, v5);
}

uint64_t sub_1D3377AB0()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  v2 = v0 + 48;
  v3 = *(v0 + 88);
  v92 = v1;
  v84 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_81:
    v89 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_1D33DEE14();
    v5 = *(v0 + 88);
  }

  else
  {
    v89 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = *(v0 + 88);
  }

  v85 = v2;
  v83 = v3;
  if (!v4)
  {
    v87 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v6 = 0;
  v7 = (v2 - 32);
  v0 = v3 & 0xC000000000000001;
  v8 = v5 + 32;
  v87 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v3 = v6;
    while (1)
    {
      if (v0)
      {
        v9 = MEMORY[0x1D38B75D0](v3, v91[11]);
      }

      else
      {
        if (v3 >= *(v89 + 16))
        {
          goto LABEL_78;
        }

        v9 = *(v8 + 8 * v3);
      }

      v10 = v9;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      if ([v9 representedObject])
      {
        sub_1D33DED44();

        swift_unknownObjectRelease();
      }

      else
      {

        v93 = 0u;
        v94 = 0u;
      }

      *v7 = v93;
      v7[1] = v94;
      if (v91[5])
      {
        break;
      }

      sub_1D331E880(v7, &qword_1EC7616D0, &unk_1D33E2890);
LABEL_7:
      ++v3;
      if (v6 == v4)
      {
        goto LABEL_25;
      }
    }

    sub_1D331DA18(0, &unk_1EC7616A0, 0x1E6964EA8);
    if ((swift_dynamicCast() & 1) == 0 || !*(v2 + 8))
    {
      goto LABEL_7;
    }

    MEMORY[0x1D38B6F20]();
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D33DE8D4();
      v2 = v85;
    }

    sub_1D33DE8F4();
    v87 = v92;
    if (v6 != v4)
    {
      continue;
    }

    break;
  }

LABEL_25:
  v3 = v87;
  if (v87 >> 62)
  {
    v2 = sub_1D33DEE14();
  }

  else
  {
    v2 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v12 = 0;
    v86 = MEMORY[0x1E69E7CC0];
    v88 = v2;
    while (1)
    {
      if ((v87 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1D38B75D0](v12, v87);
      }

      else
      {
        if (v12 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v13 = *(v87 + 32 + 8 * v12);
      }

      v14 = v13;
      if (__OFADD__(v12++, 1))
      {
        goto LABEL_79;
      }

      v16 = [v13 suggestionTokens];
      sub_1D331DA18(0, &unk_1EC761660, 0x1E6964EF0);
      v3 = sub_1D33DE8B4();

      if (v3 >> 62)
      {
        v17 = sub_1D33DEE14();
        if (!v17)
        {
          goto LABEL_29;
        }

LABEL_37:
        v18 = 0;
        v0 = v3 & 0xC000000000000001;
        while (1)
        {
          if (v0)
          {
            v19 = MEMORY[0x1D38B75D0](v18, v3);
          }

          else
          {
            if (v18 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_76;
            }

            v19 = *(v3 + 8 * v18 + 32);
          }

          v20 = v19;
          v2 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          if ([v19 tokenKind])
          {
            break;
          }

          ++v18;
          if (v2 == v17)
          {
            goto LABEL_29;
          }
        }

        v21 = v20;
        v3 = v85;
        MEMORY[0x1D38B6F20]();
        v2 = v88;
        if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v0 = *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D33DE8D4();
        }

        sub_1D33DE8F4();

        v86 = *v85;
        if (v12 == v88)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_37;
        }

LABEL_29:

        v2 = v88;
        if (v12 == v88)
        {
          goto LABEL_53;
        }
      }
    }
  }

  v86 = MEMORY[0x1E69E7CC0];
LABEL_53:
  v91[17] = v86;
  v91[18] = v86;
  v22 = v91[12];
  v24 = v91[9];
  v23 = v91[10];

  v25 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_text;
  v91[19] = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_text;
  v26 = (v22 + v25);
  v27 = *(v22 + v25 + 8);
  *v26 = v24;
  v26[1] = v23;

  v28 = swift_allocObject();
  v91[20] = v28;
  *(v28 + 16) = MEMORY[0x1E69E7CC0];

  v29 = sub_1D337C29C(v24, v23);
  v31 = v30;
  if (!v30)
  {
    v32 = 0;
LABEL_58:
    v34 = v91[12];
    v35 = (v34 + v91[19]);
    v36 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion;
    v37 = *(v34 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion);
    if (v35[1])
    {
      v38 = *v35;
      v39 = v37;

      v40 = sub_1D33DE784();

      v41 = v91[12];
    }

    else
    {
      v49 = v37;
      v40 = 0;
      v41 = v34;
    }

    v50 = v91[18];
    v51 = objc_opt_self();
    sub_1D331DA18(0, &unk_1EC761660, 0x1E6964EF0);
    v52 = sub_1D33DE8A4();

    v53 = [v51 updatedSuggestionWithCurrentSuggestion:v37 userString:v40 tokens:v52];

    v54 = *(v34 + v36);
    *(v34 + v36) = v53;
    v55 = v53;

    v56 = sub_1D337B4F8(v55);
    v57 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext;
    v58 = *(v41 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext);
    *(v41 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext) = v56;

    if (v31)
    {
      v59 = *(v41 + v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761040, &qword_1D33E1B40);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1D33E2410;
      *(v60 + 32) = v32;
      *(v60 + 40) = v31;
      v61 = v59;
      v62 = sub_1D33DE8A4();

      [v61 setFilterQueries_];
    }

    v63 = v91[12];
    v64 = (v63 + v91[19]);
    v65 = *(v41 + v57);
    if (v64[1])
    {
      v66 = *v64;
      v67 = v65;

      v68 = sub_1D33DE784();

      v63 = v91[12];
    }

    else
    {
      v69 = v65;
      v68 = 0;
    }

    v70 = v91[20];
    v71 = v91[13];
    v72 = v91[9];
    v90 = v91[10];
    v73 = [objc_allocWithZone(MEMORY[0x1E6964EC8]) initWithUserQueryString:v68 userQueryContext:v65];
    v91[24] = v73;

    v74 = *(v63 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_serialQueue);
    *(swift_task_alloc() + 16) = v63;
    v75 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
    sub_1D33DEBA4();

    v76 = *(v63 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery);
    *(v63 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery) = v73;

    v77 = sub_1D33DE964();
    v91[25] = v77;
    v78 = swift_task_alloc();
    v91[26] = v78;
    v78[2] = v75;
    v78[3] = v70;
    v78[4] = v63;
    v78[5] = v72;
    v78[6] = v90;
    v79 = *(MEMORY[0x1E69E8920] + 4);
    v80 = swift_task_alloc();
    v91[27] = v80;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
    *v80 = v91;
    v80[1] = sub_1D3378894;
    v82 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v91 + 8, v77, v82, 0xD00000000000001ALL, 0x80000001D33E69B0, sub_1D337D608, v78, v81);
  }

  v32 = v29;
  if (v84)
  {
    v42 = v91[11];
    if (v83 < 0)
    {
      v43 = v91[11];
    }

    if (!sub_1D33DEE14())
    {
      goto LABEL_63;
    }

LABEL_56:
    v33 = v26[1];
    *v26 = xmmword_1D33E2CE0;

    goto LABEL_58;
  }

  if (*(v89 + 16))
  {
    goto LABEL_56;
  }

LABEL_63:

  v44 = swift_task_alloc();
  v91[21] = v44;
  *v44 = v91;
  v44[1] = sub_1D3378404;
  v45 = v91[12];
  v46 = v91[10];
  v47 = v91[9];

  return sub_1D337BEC4(v47, v46);
}

uint64_t sub_1D3378404(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v11 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v6 = v4[17];

    v7 = v4[15];
    v8 = v4[16];
    v9 = sub_1D3378A38;
  }

  else
  {
    v4[23] = a1;
    v7 = v4[15];
    v8 = v4[16];
    v9 = sub_1D3378530;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D3378530()
{
  v1 = v0[20] + 16;
  sub_1D33CC9C8(v0[23]);
  v2 = v0[22];
  v3 = v0[12];
  v4 = (v3 + v0[19]);
  v5 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion;
  v6 = *(v3 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion);
  if (v4[1])
  {
    v7 = *v4;
    v8 = v6;

    v9 = sub_1D33DE784();

    v10 = v0[12];
  }

  else
  {
    v11 = v6;
    v9 = 0;
    v10 = v3;
  }

  v12 = v0[18];
  v13 = objc_opt_self();
  sub_1D331DA18(0, &unk_1EC761660, 0x1E6964EF0);
  v14 = sub_1D33DE8A4();

  v15 = [v13 updatedSuggestionWithCurrentSuggestion:v6 userString:v9 tokens:v14];

  v16 = *(v3 + v5);
  *(v3 + v5) = v15;
  v17 = v15;

  v18 = sub_1D337B4F8(v17);
  v19 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext;
  v20 = *(v10 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext);
  *(v10 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext) = v18;

  v21 = v0[12];
  v22 = (v21 + v0[19]);
  v23 = *(v10 + v19);
  if (v22[1])
  {
    v24 = *v22;
    v25 = v23;

    v26 = sub_1D33DE784();

    v21 = v0[12];
  }

  else
  {
    v27 = v23;
    v26 = 0;
  }

  v28 = v0[20];
  v29 = v0[13];
  v30 = v0[9];
  v42 = v0[10];
  v31 = [objc_allocWithZone(MEMORY[0x1E6964EC8]) initWithUserQueryString:v26 userQueryContext:v23];
  v0[24] = v31;

  v32 = *(v21 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_serialQueue);
  *(swift_task_alloc() + 16) = v21;
  v33 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  sub_1D33DEBA4();

  v34 = *(v21 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery);
  *(v21 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery) = v31;

  v35 = sub_1D33DE964();
  v0[25] = v35;
  v36 = swift_task_alloc();
  v0[26] = v36;
  v36[2] = v33;
  v36[3] = v28;
  v36[4] = v21;
  v36[5] = v30;
  v36[6] = v42;
  v37 = *(MEMORY[0x1E69E8920] + 4);
  v38 = swift_task_alloc();
  v0[27] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  *v38 = v0;
  v38[1] = sub_1D3378894;
  v40 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 8, v35, v40, 0xD00000000000001ALL, 0x80000001D33E69B0, sub_1D337D608, v36, v39);
}

uint64_t sub_1D3378894()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v10 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_1D3378AA8;
  }

  else
  {
    v7 = v2[25];
    v8 = v2[26];

    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_1D33789B8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D33789B8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);

  v3 = *(v0 + 64);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D3378A38()
{
  v1 = v0[20];
  v2 = v0[14];

  v3 = v0[22];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3378AA8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[14];

  v6 = v0[28];
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D3378B3C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v49 = a4;
  v50 = a6;
  v57 = a5;
  v9 = sub_1D33DE664();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D33DE6A4();
  v52 = *(v54 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  v63 = sub_1D337D618;
  v64 = a3;
  v48 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1D3377408;
  v62 = &block_descriptor_86;
  v19 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v19);
  (*(v15 + 16))(v18, a1, v14);
  v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  v23 = a2;
  v24 = v49;
  v25 = v50;
  v26 = v57;
  *(v22 + 3) = v49;
  *(v22 + 4) = v26;
  *(v22 + 5) = v25;
  (*(v15 + 32))(&v22[v20], v18, v14);
  *&v22[v21] = v48;
  v63 = sub_1D337D714;
  v64 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1D3352A4C;
  v62 = &block_descriptor_92;
  v27 = _Block_copy(&aBlock);

  v28 = v23;
  v29 = v24;

  [v28 setCompletionHandler_];
  _Block_release(v27);
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D33DE464();
  __swift_project_value_buffer(v30, qword_1EC762160);
  v31 = v29;

  v32 = sub_1D33DE444();
  v33 = sub_1D33DEAF4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock = v35;
    *v34 = 136315394;
    v36 = sub_1D337C5A0();
    v38 = sub_1D3328B48(v36, v37, &aBlock);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1D3328B48(v57, v25, &aBlock);
    _os_log_impl(&dword_1D331A000, v32, v33, "%s Beginning search query for text %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B81C0](v35, -1, -1);
    MEMORY[0x1D38B81C0](v34, -1, -1);
  }

  v39 = *&v31[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_serialQueue];
  v40 = *&v31[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery];
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  v63 = sub_1D337CF68;
  v64 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1D3329468;
  v62 = &block_descriptor_98;
  v42 = _Block_copy(&aBlock);
  v43 = v40;
  v44 = v51;
  sub_1D33DE674();
  v58 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&unk_1EDEBEF50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D337D8EC(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  v45 = v53;
  v46 = v56;
  sub_1D33DED64();
  MEMORY[0x1D38B7240](0, v44, v45, v42);
  _Block_release(v42);

  (*(v55 + 8))(v45, v46);
  (*(v52 + 8))(v44, v54);
}

uint64_t sub_1D33791D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D33DE664();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D33DE6A4();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v12 = sub_1D33DEB94();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1D337D89C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3329468;
  aBlock[3] = &block_descriptor_110;
  v14 = _Block_copy(aBlock);

  sub_1D33DE674();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&unk_1EDEBEF50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D337D8EC(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  sub_1D33DED64();
  MEMORY[0x1D38B7240](0, v11, v7, v14);
  _Block_release(v14);

  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

char *sub_1D33794C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_1D33DEE14();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_12:
    swift_beginAccess();
    sub_1D33CC9C8(v5);
    return swift_endAccess();
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1D334A9E0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v17 = a1;
    v7 = 0;
    v5 = v18;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D38B75D0](v7, a2);
      }

      else
      {
        v8 = *(a2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 uniqueIdentifier];
      v11 = sub_1D33DE7B4();
      v13 = v12;

      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D334A9E0((v14 > 1), v15 + 1, 1);
      }

      ++v7;
      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v4 != v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D337963C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v35 = a4;
  v36 = a1;
  v41 = sub_1D33DE664();
  v44 = *(v41 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D33DE6A4();
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v39 = sub_1D33DEB94();
  (*(v17 + 16))(v20, a6, v16);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  *(v23 + 4) = v35;
  *(v23 + 5) = a5;
  (*(v17 + 32))(&v23[v21], v20, v16);
  v24 = v36;
  *&v23[v22] = v36;
  *&v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8] = v38;
  aBlock[4] = sub_1D337D7F0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3329468;
  aBlock[3] = &block_descriptor_104;
  v25 = _Block_copy(aBlock);
  v26 = a2;
  v27 = a3;

  v28 = v24;

  v29 = v37;
  sub_1D33DE674();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&unk_1EDEBEF50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D337D8EC(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  v31 = v40;
  v30 = v41;
  sub_1D33DED64();
  v32 = v39;
  MEMORY[0x1D38B7240](0, v29, v31, v25);
  _Block_release(v25);

  (*(v44 + 8))(v31, v30);
  (*(v42 + 8))(v29, v43);
}

void sub_1D3379A50(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if ([a1 isCancelled])
  {
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D33DE464();
    __swift_project_value_buffer(v12, qword_1EC762160);
    v13 = a2;

    v14 = sub_1D33DE444();
    v15 = sub_1D33DEAF4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = v17;
      *v16 = 136315394;
      v18 = sub_1D337C5A0();
      v20 = sub_1D3328B48(v18, v19, v50);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D3328B48(a3, a4, v50);
      _os_log_impl(&dword_1D331A000, v14, v15, "%s search query is cancelled for text %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B81C0](v17, -1, -1);
      MEMORY[0x1D38B81C0](v16, -1, -1);
    }

    sub_1D337CF78();
    v21 = swift_allocError();
    *v22 = 1;
    v50[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE924();
  }

  else if (a6)
  {
    v23 = a6;
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D33DE464();
    __swift_project_value_buffer(v24, qword_1EC762160);
    v25 = a2;
    v26 = a6;
    v27 = sub_1D33DE444();
    v28 = sub_1D33DEAD4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v50[0] = v31;
      *v29 = 136315394;
      v32 = sub_1D337C5A0();
      v34 = sub_1D3328B48(v32, v33, v50);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2112;
      v35 = a6;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&dword_1D331A000, v27, v28, "%s Fetching search results from Spotlight failed with error: %@", v29, 0x16u);
      sub_1D331E880(v30, &qword_1EC761D90, &unk_1D33E4E90);
      MEMORY[0x1D38B81C0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1D38B81C0](v31, -1, -1);
      MEMORY[0x1D38B81C0](v29, -1, -1);
    }

    sub_1D337CF78();
    v37 = swift_allocError();
    *v38 = 0;
    v50[0] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE924();
  }

  else
  {
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D33DE464();
    __swift_project_value_buffer(v39, qword_1EC762160);
    swift_retain_n();
    v40 = a2;

    v41 = sub_1D33DE444();
    v42 = sub_1D33DEAF4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50[0] = v44;
      *v43 = 136315650;
      v45 = sub_1D337C5A0();
      v47 = sub_1D3328B48(v45, v46, v50);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2048;
      swift_beginAccess();
      v48 = *(*(a7 + 16) + 16);

      *(v43 + 14) = v48;

      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_1D3328B48(a3, a4, v50);
      _os_log_impl(&dword_1D331A000, v41, v42, "%s Got %ld search results for text %s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B81C0](v44, -1, -1);
      MEMORY[0x1D38B81C0](v43, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v49 = *(a7 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE934();
  }
}

uint64_t sub_1D337A03C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1D33DE464();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = sub_1D33DE974();
  v3[10] = sub_1D33DE964();
  v8 = sub_1D33DE914();
  v3[11] = v8;
  v3[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D337A138, v8, v7);
}

uint64_t sub_1D337A138()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = objc_opt_self();
  v5 = *(v1 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion);
  v6 = sub_1D33DE784();
  sub_1D331DA18(0, &unk_1EC761660, 0x1E6964EF0);
  v7 = sub_1D33DE8A4();
  v8 = [v4 updatedSuggestionWithCurrentSuggestion:v5 userString:v6 tokens:v7];
  v0[13] = v8;

  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v14 = v0[4];
  v13 = v0[5];
  v15 = v0[3];
  v16 = __swift_project_value_buffer(v11, qword_1EC762160);
  (*(v12 + 16))(v9, v16, v11);
  v17 = sub_1D337B4F8(v8);
  v0[14] = v17;
  v18 = objc_allocWithZone(MEMORY[0x1E6964EC8]);
  v19 = sub_1D33DE784();
  v20 = [v18 initWithUserQueryString:v19 userQueryContext:v17];
  v0[15] = v20;

  v21 = sub_1D33DE964();
  v0[16] = v21;
  v22 = swift_task_alloc();
  v0[17] = v22;
  v22[2] = v20;
  v22[3] = v9;
  v22[4] = v13;
  v23 = *(MEMORY[0x1E69E8920] + 4);
  v24 = swift_task_alloc();
  v0[18] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F70, &qword_1D33E2DD0);
  *v24 = v0;
  v24[1] = sub_1D337A3C8;
  v26 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v21, v26, 0xD00000000000001CLL, 0x80000001D33E6920, sub_1D337CE38, v22, v25);
}

uint64_t sub_1D337A3C8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1D337A5A8;
  }

  else
  {
    v7 = v2[16];
    v8 = v2[17];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1D337A4EC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D337A4EC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);

  v7 = *(v0 + 16);
  (*(v5 + 8))(v4, v6);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1D337A5A8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);

  (*(v7 + 8))(v6, v8);

  v9 = *(v0 + 8);
  v10 = *(v0 + 152);

  return v9();
}

uint64_t sub_1D337A678(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v43 = a1;
  v44 = a4;
  v42 = a3;
  v51 = a2;
  v48 = sub_1D33DE664();
  v50 = *(v48 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D33DE6A4();
  v47 = *(v49 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D33DE464();
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8);
  v37 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v38 = &v36 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x1E69E7CC0];
  v57 = sub_1D337CE44;
  v58 = v15;
  v39 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v40 = &v55;
  v55 = sub_1D337AD18;
  v56 = &block_descriptor_2;
  v16 = _Block_copy(&aBlock);

  v17 = v51;
  [v51 setFoundSuggestionsHandler_];
  _Block_release(v16);
  (*(v11 + 16))(v14, v43, v10);
  v18 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v41;
  (*(v8 + 16))(v18, v42, v41);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = (v12 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  (*(v11 + 32))(v23 + v20, v38, v37);
  (*(v8 + 32))(v23 + v21, v18, v19);
  v24 = v44;
  *(v23 + v22) = v44;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v57 = sub_1D337CE4C;
  v58 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1D3352A4C;
  v56 = &block_descriptor_26_0;
  v25 = _Block_copy(&aBlock);

  v26 = v51;
  v27 = v24;

  [v26 setCompletionHandler_];
  _Block_release(v25);
  v28 = *&v27[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_serialQueue];
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  v57 = sub_1D337CF68;
  v58 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1D3329468;
  v56 = &block_descriptor_32;
  v30 = _Block_copy(&aBlock);
  v31 = v26;
  v32 = v45;
  sub_1D33DE674();
  v52 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&unk_1EDEBEF50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D337D8EC(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  v33 = v46;
  v34 = v48;
  sub_1D33DED64();
  MEMORY[0x1D38B7240](0, v32, v33, v30);
  _Block_release(v30);
  (*(v50 + 8))(v33, v34);
  (*(v47 + 8))(v32, v49);
}

uint64_t sub_1D337ACB8()
{
  swift_beginAccess();

  sub_1D33CCBAC(v0);
  return swift_endAccess();
}

uint64_t sub_1D337AD2C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1D331DA18(0, a3, a4);
  v6 = sub_1D33DE8B4();

  v5(v6);
}

void sub_1D337ADA8(void *a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if ([a2 isCancelled])
  {
    sub_1D337CF78();
    v9 = swift_allocError();
    *v10 = 1;
    v26[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8);
    sub_1D33DE924();
  }

  else if (a1)
  {
    v11 = a1;
    v12 = a5;
    v13 = sub_1D33DE444();
    v14 = sub_1D33DEAD4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v15 = 136315394;
      v18 = sub_1D337C5A0();
      v20 = sub_1D3328B48(v18, v19, v26);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v22;
      *v16 = v22;
      _os_log_impl(&dword_1D331A000, v13, v14, "%s Fetching suggestions failed with error: %@", v15, 0x16u);
      sub_1D331E880(v16, &qword_1EC761D90, &unk_1D33E4E90);
      MEMORY[0x1D38B81C0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1D38B81C0](v17, -1, -1);
      MEMORY[0x1D38B81C0](v15, -1, -1);
    }

    sub_1D337CF78();
    v23 = swift_allocError();
    *v24 = 0;
    v26[0] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8);
    sub_1D33DE924();
  }

  else
  {
    swift_beginAccess();
    v25 = *(a6 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8);
    sub_1D33DE934();
  }
}

uint64_t sub_1D337B1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1D33DE974();
  v3[5] = sub_1D33DE964();
  v5 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D337B25C, v5, v4);
}

uint64_t sub_1D337B25C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v4);
  v5 = sub_1D33DE7B4();
  v7 = v6;
  v0[7] = v6;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1D337B338;
  v10 = v0[4];

  return sub_1D337A03C(v5, v7);
}

uint64_t sub_1D337B338()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 32);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1D33DDBD4();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_1D331DA18(0, &unk_1EC7616A0, 0x1E6964EA8);
    v11 = sub_1D33DE8A4();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 48);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id sub_1D337B4F8(uint64_t a1)
{
  v2 = [objc_opt_self() userQueryContextWithCurrentSuggestion_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761040, &qword_1D33E1B40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D33E2410;
  v4 = *MEMORY[0x1E69935F8];
  *(v3 + 32) = sub_1D33DE7B4();
  *(v3 + 40) = v5;
  v6 = v2;
  v7 = sub_1D33DE8A4();

  [v6 setBundleIDs_];

  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_searchItemType))
  {
    v8 = MEMORY[0x1E6993608];
  }

  else
  {
    v8 = MEMORY[0x1E6993600];
  }

  v9 = *v8;
  v10 = sub_1D33DE7B4();
  v12 = v11;
  v13 = *MEMORY[0x1E6963EA0];
  v18 = sub_1D33DE7B4();
  v19 = v14;
  MEMORY[0x1D38B6ED0](540884256, 0xE400000000000000);
  MEMORY[0x1D38B6ED0](v10, v12);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D33E2410;
  *(v15 + 32) = v18;
  *(v15 + 40) = v19;
  v16 = sub_1D33DE8A4();

  [v6 setFilterQueries_];

  [v6 setEnableSuggestionTokens_];
  return v6;
}

unint64_t sub_1D337B6C4()
{
  v63 = sub_1D33DDDB4();
  v1 = *(v63 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v0;
  v5 = [*&v0[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_callProviderManager] telephonyProvider];
  v6 = [v5 prioritizedSenderIdentities];

  v7 = [v6 array];
  v8 = sub_1D33DE8B4();

  v9 = sub_1D337BDB8(v8);

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v10 >> 62)
  {
    if (sub_1D33DEE14() >= 2)
    {
      v55 = sub_1D33DEE14();
      if (!v55)
      {

        v13 = MEMORY[0x1E69E7CC8];
LABEL_20:
        if (qword_1EC7609A0 != -1)
        {
          swift_once();
        }

        v41 = sub_1D33DE464();
        __swift_project_value_buffer(v41, qword_1EC762160);
        v42 = v57;
        v43 = sub_1D33DE444();
        v44 = sub_1D33DEAF4();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v64 = v46;
          *v45 = 136315394;
          v47 = sub_1D337C5A0();
          v49 = sub_1D3328B48(v47, v48, &v64);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;

          v50 = sub_1D33DE704();
          v52 = v51;

          v53 = sub_1D3328B48(v50, v52, &v64);

          *(v45 + 14) = v53;
          _os_log_impl(&dword_1D331A000, v43, v44, "%s Updating subscriptions to %s", v45, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D38B81C0](v46, -1, -1);
          MEMORY[0x1D38B81C0](v45, -1, -1);
        }

        return v13;
      }

      if (v55 >= 1)
      {
        v59 = v55;
LABEL_6:
        v11 = 0;
        v61 = v10 & 0xC000000000000001;
        v12 = (v1 + 8);
        v13 = MEMORY[0x1E69E7CC8];
        v14 = &selRef_setOriginatingUIType_;
        v15 = v59;
        v58 = v10;
        v62 = v12;
        do
        {
          if (v61)
          {
            v16 = MEMORY[0x1D38B75D0](v11, v10);
          }

          else
          {
            v16 = *(v10 + 8 * v11 + 32);
          }

          v17 = v16;
          v18 = [v16 v14[39]];
          v19 = sub_1D33DE7B4();
          v21 = v20;

          v22 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v22)
          {
            v23 = [v17 v14[39]];
            v24 = sub_1D33DE7B4();
            v26 = v25;

            v27 = [v17 accountUUID];
            sub_1D33DDD84();

            v28 = sub_1D33DDD54();
            v30 = v29;
            v60 = *v62;
            v60(v4, v63);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v64 = v13;
            sub_1D3398AC0(v28, v30, v24, v26, isUniquelyReferenced_nonNull_native);

            v13 = v64;
            sub_1D33DEB14();
            v32 = [v17 v14[39]];
            sub_1D33DE7B4();

            v33 = sub_1D33DEB04();
            v35 = v34;

            if (v35)
            {
              v36 = [v17 accountUUID];
              sub_1D33DDD84();

              v37 = sub_1D33DDD54();
              v39 = v38;
              v60(v4, v63);
              v40 = swift_isUniquelyReferenced_nonNull_native();
              v64 = v13;
              sub_1D3398AC0(v37, v39, v33, v35, v40);

              v13 = v64;
            }

            else
            {
            }

            v10 = v58;
            v15 = v59;
            v14 = &selRef_setOriginatingUIType_;
          }

          else
          {
          }

          ++v11;
        }

        while (v15 != v11);

        goto LABEL_20;
      }

      __break(1u);
    }
  }

  else
  {
    v59 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59 > 1)
    {
      goto LABEL_6;
    }
  }

  v56 = MEMORY[0x1E69E7CC0];

  return sub_1D336BD10(v56);
}

uint64_t sub_1D337BCA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D334A9E0(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D3328D20(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D334A9E0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1D337BDB8(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1D33DEFA4();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1D3328D20(i, v6);
    sub_1D331DA18(0, &unk_1EC761650, 0x1E69D8CD8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1D33DEF84();
    v4 = *(v7 + 16);
    sub_1D33DEFB4();
    sub_1D33DEFC4();
    sub_1D33DEF94();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_1D337BEC4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1D33DE974();
  v3[6] = sub_1D33DE964();
  v5 = sub_1D33DE914();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D337BF60, v5, v4);
}

uint64_t sub_1D337BF60()
{
  v0[2] = MEMORY[0x1E69E7CC0];
  v1 = v0[5];
  v2 = sub_1D337C29C(v0[3], v0[4]);
  v0[9] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1D337C074;
    v7 = v0[5];

    return sub_1D337670C(v4, v5);
  }

  else
  {
    v9 = v0[6];

    v10 = v0[1];
    v11 = MEMORY[0x1E69E7CC0];

    return v10(v11);
  }
}

uint64_t sub_1D337C074(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v8 = v4[7];
    v9 = v4[8];
    v10 = sub_1D337C238;
  }

  else
  {
    v4[12] = a1;
    v8 = v4[7];
    v9 = v4[8];
    v10 = sub_1D337C1C0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1D337C1C0()
{
  v1 = v0[12];
  v2 = v0[6];

  sub_1D33CC9C8(v1);
  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1D337C238()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1D337C29C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D33DDAA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v12 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel;
  if (*(*(v3 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel) + 16) >= 2uLL)
  {
    v35 = a1;
    v36 = a2;
    sub_1D33DDA94();
    sub_1D3328AF4();
    v32 = sub_1D33DED24();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    v31 = v3;
    v15 = *(v3 + v12);
    v16 = 1 << *(v15 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v15 + 64);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    if (v18)
    {
      while (1)
      {
        v21 = v20;
LABEL_9:
        v22 = (v21 << 10) | (16 * __clz(__rbit64(v18)));
        v23 = (*(v15 + 48) + v22);
        v25 = *v23;
        v24 = v23[1];
        v26 = (*(v15 + 56) + v22);
        v28 = *v26;
        v27 = v26[1];
        v35 = v25;
        v36 = v24;
        v33 = v32;
        v34 = v14;

        if (!sub_1D33DED34())
        {
          break;
        }

        v18 &= v18 - 1;

        v20 = v21;
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      v29 = *MEMORY[0x1E6964730];
      v35 = sub_1D33DE7B4();
      v36 = v30;
      MEMORY[0x1D38B6ED0](8765, 0xE200000000000000);
      MEMORY[0x1D38B6ED0](v28, v27);

      MEMORY[0x1D38B6ED0](34, 0xE100000000000000);
      MEMORY[0x1D38B6ED0](*(v31 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_kCSQueryFlags), *(v31 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_kCSQueryFlags + 8));

      return v35;
    }

    else
    {
LABEL_6:
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {

          return 0;
        }

        v18 = *(v15 + 64 + 8 * v21);
        ++v20;
        if (v18)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D337C5A0()
{
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_searchItemType))
  {
    if (*(v0 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_searchItemType) == 1)
    {
      v2 = 0x616D6563696F565BLL;
    }

    else
    {
      v2 = 0x747365676775535BLL;
    }
  }

  else
  {
    v2 = 0x205D736C6C61435BLL;
  }

  MEMORY[0x1D38B6ED0](0xD00000000000001ALL, 0x80000001D33E6900);
  return v2;
}

id sub_1D337C69C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightSearchDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ReminderStatus.ReminderState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReminderStatus.ReminderState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D337C928()
{
  result = qword_1EC761640;
  if (!qword_1EC761640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761640);
  }

  return result;
}

uint64_t sub_1D337C97C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D334D4B4;

  return v7();
}

uint64_t sub_1D337CA64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D334CF9C;

  return v8();
}

uint64_t sub_1D337CB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1D33723DC(a3, v25 - v11);
  v13 = sub_1D33DE9B4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D331E880(v12, &unk_1EC7610E0, &qword_1D33E16C0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D33DE9A4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1D33DE914();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1D33DE814() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);

    return v23;
  }

LABEL_8:
  sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1D337CE4C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D33DE464() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + v8);
  v11 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D337ADA8(a1, v9, v1 + v4, v1 + v7, v10, v11);
}

unint64_t sub_1D337CF78()
{
  result = qword_1EC761690;
  if (!qword_1EC761690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761690);
  }

  return result;
}

uint64_t sub_1D337D018()
{
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762160);
  v2 = v0;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_1D337C5A0();
    v9 = sub_1D3328B48(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D331A000, v3, v4, "%s Processing providers changed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  v10 = sub_1D337B6C4();
  v11 = *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel];
  *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel] = v10;
}

uint64_t sub_1D337D19C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D334CF9C;

  return sub_1D337B1C0(v2, v3, v4);
}

uint64_t sub_1D337D250()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D334D4B4;

  return sub_1D337C97C(v2, v3, v5);
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D337D350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334D4B4;

  return sub_1D337CA64(a1, v4, v5, v7);
}

uint64_t sub_1D337D41C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D334D4B4;

  return sub_1D331E8E0(a1, v5);
}

uint64_t sub_1D337D4D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D334CF9C;

  return sub_1D331E8E0(a1, v5);
}

void *sub_1D337D5AC@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v4 = *(*(v2 + 16) + *result);
  if (v4)
  {
    result = [v4 cancel];
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t objectdestroy_42Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D337D72C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v10 = *&v2[(*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a2(a1, v6, v7, v8, v9, &v2[v5], v10);
}

void sub_1D337D7F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + v3);
  v9 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D3379A50(v4, v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t sub_1D337D8A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D337D8EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpotlightSearchDataSource.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpotlightSearchDataSource.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D337DAA0()
{
  result = qword_1EC7616D8;
  if (!qword_1EC7616D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7616D8);
  }

  return result;
}

uint64_t sub_1D337DB9C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_totalUnreadCallCount;
  v3 = *&v0[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_totalUnreadCallCount];
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDEBFC50;
  v5 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount;
  v6 = *(qword_1EDEBFC50 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount);

  sub_1D33DE4F4();

  v7 = __OFSUB__(v3, v30);
  v8 = v3 - v30;
  if (v7)
  {
    __break(1u);
  }

  else if (qword_1EDEBFD70 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v9 = v8 & ~(v8 >> 63);
  v10 = sub_1D33DE464();
  __swift_project_value_buffer(v10, qword_1EDEC1480);
  v11 = v1;
  v12 = sub_1D33DE444();
  v13 = sub_1D33DEAF4();

  if (os_log_type_enabled(v12, v13))
  {
    v28 = v4;
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v14 = 136315650;
    v15 = sub_1D33DE804();
    v17 = sub_1D3328B48(v15, v16, &v30);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v29 = *&v1[v2];
    v18 = sub_1D33DE804();
    v20 = sub_1D3328B48(v18, v19, &v30);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = *(v28 + v5);

    sub_1D33DE4F4();

    v22 = sub_1D33DE804();
    v24 = sub_1D3328B48(v22, v23, &v30);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_1D331A000, v12, v13, "RecentsUnreadCountManager: Updating tabBarUnreadCallCount to %s total: %s unreadRequestCount: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B81C0](v27, -1, -1);
    MEMORY[0x1D38B81C0](v14, -1, -1);
  }

  v25 = *&v11[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_tabBarUnreadCallCount];
  v30 = v9;
  return sub_1D33DE4E4();
}

void sub_1D337DE48(uint64_t a1)
{
  v3 = sub_1D33DDFA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E6995A70])
  {
    v9 = OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_shouldMarkKnownCallsAsReadWhenReady;
    if ((*(v1 + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_shouldMarkKnownCallsAsReadWhenReady) & 1) == 0)
    {
      v10 = (v1 + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_requestsHandler);
      v11 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_requestsHandler), *(v1 + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_requestsHandler + 24));
      v12 = *(*v11 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isRequestsEnabledOverride);
      if (v12 == 2)
      {
        if (([*(*v11 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_featureFlags) junkFilteringEnabled] & 1) == 0 || !objc_msgSend(objc_opt_self(), sel_isFilterAsNewCallersEnabledForPhone))
        {
LABEL_6:
          if (qword_1EDEBFD70 != -1)
          {
            swift_once();
          }

          v13 = sub_1D33DE464();
          __swift_project_value_buffer(v13, qword_1EDEC1480);
          v14 = sub_1D33DE444();
          v15 = sub_1D33DEAF4();
          if (!os_log_type_enabled(v14, v15))
          {
            goto LABEL_16;
          }

          v16 = swift_slowAlloc();
          *v16 = 0;
          v17 = "RecentsUnreadCountManager: Requests is off, filter is calls, mark all as read.";
LABEL_15:
          _os_log_impl(&dword_1D331A000, v14, v15, v17, v16, 2u);
          MEMORY[0x1D38B81C0](v16, -1, -1);
LABEL_16:

          sub_1D337E5CC();
          return;
        }
      }

      else if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (*(*__swift_project_boxed_opaque_existential_1(v10, v10[3]) + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_hasFinishedFirstCacheUpdate) == 1)
      {
        sub_1D337E180();
      }

      else
      {
        *(v1 + v9) = 1;
      }
    }
  }

  else
  {
    if (v8 == *MEMORY[0x1E6995A90])
    {
      if (qword_1EDEBFD70 != -1)
      {
        swift_once();
      }

      v18 = sub_1D33DE464();
      __swift_project_value_buffer(v18, qword_1EDEC1480);
      v14 = sub_1D33DE444();
      v15 = sub_1D33DEAF4();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_16;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "RecentsUnreadCountManager: Requests is enabled, and we're in requests. Mark everything as read.";
      goto LABEL_15;
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_1D337E180()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v2 = sub_1D33DE464();
    __swift_project_value_buffer(v2, qword_1EDEC1480);
    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D331A000, v3, v4, "RecentsUnreadCountManager: markOnlyKnownCallsAsRead", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    if (qword_1EDEBFC40 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDEBFC50;
    v7 = sub_1D33CD460();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761718, &unk_1D33E2F50);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D33E2410;
    v29 = MEMORY[0x1E69E7CC0];
    v9 = (v6 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown);
    os_unfair_lock_lock((v6 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown));
    sub_1D33CD0E8(&v9[2], &v29);
    os_unfair_lock_unlock(v9);
    v10 = v29;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
    *(v8 + 32) = v10;
    v11 = sub_1D33DE784();
    v12 = sub_1D33DE8A4();

    v13 = [objc_opt_self() predicateWithFormat:v11 argumentArray:v12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D33E2400;
    *(v14 + 32) = v7;
    *(v14 + 40) = v13;
    sub_1D331DA18(0, &unk_1EC761720, 0x1E696AE18);
    v15 = v7;
    v16 = v13;
    v17 = sub_1D33DE8A4();

    v18 = objc_opt_self();
    v19 = [v18 andPredicateWithSubpredicates_];

    v20 = [v18 notPredicateWithSubpredicate_];
    v21 = *(v1 + 16);
    v22 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v24 = *(v22 + 88);
    swift_unknownObjectRetain();
    v28 = v20;
    v24(v20, ObjectType, v22);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v25 = sub_1D33DE464();
    __swift_project_value_buffer(v25, qword_1EDEC1480);
    v28 = sub_1D33DE444();
    v26 = sub_1D33DEAD4();
    if (os_log_type_enabled(v28, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D331A000, v28, v26, "RecentsUnreadCountManager: Failed to mark recent known audio calls as read. No recents controller instance found.", v27, 2u);
      MEMORY[0x1D38B81C0](v27, -1, -1);
    }
  }
}

void sub_1D337E5CC()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v2 = sub_1D33DE464();
    __swift_project_value_buffer(v2, qword_1EDEC1480);
    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D331A000, v3, v4, "RecentsUnreadCountManager: markAllCallsAsRead", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 80);
    swift_unknownObjectRetain();
    v9(ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v10 = sub_1D33DE464();
    __swift_project_value_buffer(v10, qword_1EDEC1480);
    oslog = sub_1D33DE444();
    v11 = sub_1D33DEAD4();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D331A000, oslog, v11, "RecentsUnreadCountManager: Failed to mark recent audio calls as read. No recents controller instance found.", v12, 2u);
      MEMORY[0x1D38B81C0](v12, -1, -1);
    }
  }
}

id RecentsUnreadCountManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecentsUnreadCountManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RecentsUnreadCountManager.recentsController(_:didChangeUnreadCallCount:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_totalUnreadCallCount) = a2;
    return sub_1D337DB9C();
  }

  return result;
}

uint64_t sub_1D337EA54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v22 - v2;
  v4 = sub_1D33DECB4();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761730, &unk_1D33E2F60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617F0, &unk_1D33E3220);
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v16 = &v22 - v15;
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v25 = *(qword_1EDEBFC50 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761740, &unk_1D33E2F70);
  sub_1D334CB54(&unk_1EDEBEF70, &qword_1EC761740, &unk_1D33E2F70);
  sub_1D33DE624();
  sub_1D33DECA4();
  v17 = [objc_opt_self() mainRunLoop];
  v25 = v17;
  v18 = sub_1D33DEC94();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_1D331DA18(0, &unk_1EDEBEE50, 0x1E695DFD0);
  sub_1D334CB54(&qword_1EDEBF040, &unk_1EC761730, &unk_1D33E2F60);
  sub_1D337EE98();
  sub_1D33DE614();
  sub_1D332B344(v3);

  (*(v23 + 8))(v7, v24);
  (*(v9 + 8))(v12, v8);
  sub_1D334CB54(&qword_1EDEBF000, &unk_1EC7617F0, &unk_1D33E3220);
  v19 = v22;
  v20 = sub_1D33DE5A4();
  (*(v13 + 8))(v16, v19);
  return v20;
}

unint64_t sub_1D337EE98()
{
  result = qword_1EDEBEE60;
  if (!qword_1EDEBEE60)
  {
    sub_1D331DA18(255, &unk_1EDEBEE50, 0x1E695DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEE60);
  }

  return result;
}

uint64_t VoicemailSearchManager.results.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

id sub_1D337EF48(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs] = v5;
  v6 = &v1[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchText];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchTokens] = v5;
  v7 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_featureFlags;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v8 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_logger;
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1D33DE464();
  v10 = __swift_project_value_buffer(v9, qword_1EC762160);
  (*(*(v9 - 8) + 16))(&v2[v8], v10, v9);
  v11 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_inbox;
  v12 = sub_1D33DE2A4();
  v33[3] = v12;
  v33[4] = &off_1F4EE4AF0;
  v33[0] = sub_1D33DE294();
  v13 = type metadata accessor for VideoMessageInboxController();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v33, v12);
  v18 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_1D3392828(*v20, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  *&v2[v11] = v22;
  v23 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_voicemailsById;
  *&v2[v23] = sub_1D336BE24(MEMORY[0x1E69E7CC0]);
  v24 = objc_allocWithZone(type metadata accessor for SpotlightSearchDataSource());
  v25 = a1;
  *&v2[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_dataSource] = sub_1D3376320(1, v25);
  v26 = *&v2[v11];

  sub_1D33220A8();

  v32.receiver = v2;
  v32.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v32, sel_init);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v28 = MEMORY[0x1EEE9AC00](v30);
  sub_1D33DDEB4();
  sub_1D337F298();

  return v28;
}

uint64_t sub_1D337F298()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DC8, &qword_1D33E1B50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - v5;
  v7 = *&v0[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_inbox];
  swift_getKeyPath();
  v33[0] = v7;
  sub_1D338547C();
  sub_1D33DDED4();

  v8 = v7 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v7 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  v9 = *(v8 + 8);

  os_unfair_lock_unlock(v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v32 = v0;
    v33[0] = MEMORY[0x1E69E7CC0];
    sub_1D334B46C(0, v10, 0);
    v11 = v33[0];
    v12 = *(type metadata accessor for RecentsItem(0) - 8);
    v13 = *(v12 + 80);
    v14 = *(v12 + 72);
    v31 = v9;
    v15 = v9 + ((v13 + 32) & ~v13);
    while (1)
    {
      v16 = &v6[*(v2 + 48)];
      sub_1D332A828(v15, v16);
      v17 = *v16;
      v18 = *(v16 + 32);
      v19 = 1;
      if (v18 <= 8)
      {
        if (((1 << v18) & 0x1B0) != 0)
        {
          goto LABEL_10;
        }

        v20 = *(v16 + 8);
        if (v18 == 3 || v18 == 6)
        {
          goto LABEL_9;
        }
      }

      if (v18 >= 2)
      {
        v20 = *v16;
LABEL_9:
        v21 = v20;
        sub_1D33DE0B4();

        v19 = 0;
      }

LABEL_10:
      v22 = sub_1D33DDDB4();
      (*(*(v22 - 8) + 56))(v6, v19, 1, v22);
      v33[0] = v11;
      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D334B46C(v23 > 1, v24 + 1, 1);
        v11 = v33[0];
      }

      *(v11 + 16) = v24 + 1;
      sub_1D333842C(v6, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, &qword_1EC760DC8, &qword_1D33E1B50);
      v15 += v14;
      if (!--v10)
      {

        v1 = v32;
        if (*(v11 + 16))
        {
          goto LABEL_14;
        }

LABEL_16:
        v25 = MEMORY[0x1E69E7CC8];
        goto LABEL_17;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_16;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761440, &unk_1D33E3050);
  v25 = sub_1D33DF124();
LABEL_17:
  v33[0] = v25;
  v26 = v1;
  sub_1D33854D4(v11, 1, v33, v26);

  v27 = v33[0];
  v28 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_voicemailsById;
  swift_beginAccess();
  v29 = *&v26[v28];
  *&v26[v28] = v27;
}

uint64_t sub_1D337F64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RecentsItem(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  sub_1D332A828(a1, &v34 - v11);
  sub_1D332A828(a2, v10);
  v13 = sub_1D33DE444();
  v14 = sub_1D33DEAE4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136315394;
    v17 = *v12;
    v18 = v12[32];
    v36 = v14;
    v35 = v16;
    if (v18 > 8)
    {
      goto LABEL_6;
    }

    if (((1 << v18) & 0x1B0) != 0)
    {
LABEL_7:
      v20 = a3;
      sub_1D33379F4(v12, type metadata accessor for RecentsItem);
      v21 = 0xE300000000000000;
      v22 = 7104878;
LABEL_11:
      v24 = sub_1D3328B48(v22, v21, &v38);

      *(v15 + 4) = v24;
      *(v15 + 12) = 2080;
      v25 = *v10;
      v26 = v10[32];
      a3 = v20;
      v27 = 7104878;
      if (v26 > 8)
      {
        goto LABEL_15;
      }

      if (((1 << v26) & 0x1B0) != 0)
      {
LABEL_16:
        sub_1D33379F4(v10, type metadata accessor for RecentsItem);
        v29 = 0xE300000000000000;
LABEL_19:
        v31 = sub_1D3328B48(v27, v29, &v38);

        *(v15 + 14) = v31;
        _os_log_impl(&dword_1D331A000, v13, v36, "VoicemailSearchManager: found duplicate messageUUID for messages: %s and %s", v15, 0x16u);
        v32 = v35;
        swift_arrayDestroy();
        MEMORY[0x1D38B81C0](v32, -1, -1);
        MEMORY[0x1D38B81C0](v15, -1, -1);

        return sub_1D332A828(a1, a3);
      }

      v28 = *(v10 + 1);
      if (v26 != 3 && v26 != 6)
      {
LABEL_15:
        if (v26 < 2)
        {
          goto LABEL_16;
        }

        v28 = *v10;
      }

      v37 = v28;
      sub_1D33DE1C4();
      v27 = sub_1D33DE804();
      v29 = v30;
      sub_1D33379F4(v10, type metadata accessor for RecentsItem);
      goto LABEL_19;
    }

    v19 = *(v12 + 1);
    if (v18 != 3 && v18 != 6)
    {
LABEL_6:
      if (v18 < 2)
      {
        goto LABEL_7;
      }

      v19 = v17;
    }

    v20 = a3;
    v37 = v19;
    sub_1D33DE1C4();
    v22 = sub_1D33DE804();
    v21 = v23;
    sub_1D33379F4(v12, type metadata accessor for RecentsItem);
    goto LABEL_11;
  }

  sub_1D33379F4(v10, type metadata accessor for RecentsItem);
  sub_1D33379F4(v12, type metadata accessor for RecentsItem);
  return sub_1D332A828(a1, a3);
}

void sub_1D337F9EC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_inbox);
  swift_getKeyPath();
  sub_1D338547C();
  sub_1D33DDED4();

  v2 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_1D337FA78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_1D33DE9B4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D33DE974();

  v7 = sub_1D33DE964();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_1D333DD88(0, 0, v5, &unk_1D33E3068, v8);
}

uint64_t sub_1D337FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1D33DE974();
  *(v4 + 72) = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D337FC34, v6, v5);
}

uint64_t sub_1D337FC34()
{
  v2 = v0[8];
  v1 = v0[9];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D337F298();
  }

  v5 = v0[8];
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    *(swift_task_alloc() + 16) = v6;
    *(swift_task_alloc() + 16) = v7;
    sub_1D33DDEB4();
  }

  v8 = v0[1];

  return v8();
}

uint64_t VoicemailSearchManager.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v5 = sub_1D33DE944();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = type metadata accessor for RecentsItem(0);
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v15 = sub_1D33DDDB4();
  v4[34] = v15;
  v16 = *(v15 - 8);
  v4[35] = v16;
  v17 = *(v16 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  sub_1D33DE974();
  v4[39] = sub_1D33DE964();
  v19 = sub_1D33DE914();
  v4[40] = v19;
  v4[41] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D3380048, v19, v18);
}

uint64_t sub_1D3380048()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = (v1 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchText);
  v4 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchText + 8);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (*v3 != v0[15] || v4 != v2)
    {
      v6 = v0[16];
      v7 = sub_1D33DF1B4();
      v1 = v0[18];
      if ((v7 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  else if (v4)
  {
    goto LABEL_13;
  }

  v8 = v0[17];
  v9 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchTokens);

  LOBYTE(v8) = sub_1D3374154(v10, v8);

  if (v8)
  {
    v11 = v0[39];

    goto LABEL_30;
  }

  v1 = v0[18];
LABEL_13:
  v12 = v0[16];
  v13 = v0[17];
  v14 = v3[1];
  *v3 = v0[15];
  v3[1] = v12;

  v15 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchTokens);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchTokens) = v13;

  if (v2)
  {
    v16 = v0[15];
    if (sub_1D33DE834() > 0)
    {
LABEL_17:
      v18 = *(v0[18] + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_dataSource);
      v19 = swift_task_alloc();
      v0[42] = v19;
      *v19 = v0;
      v19[1] = sub_1D3380430;
      v20 = v0[17];
      v21 = v0[15];

      return sub_1D3377A10(v21, v12, v20);
    }

    v17 = v0[17];
    if (v17 >> 62)
    {
      if (v17 < 0)
      {
        v23 = v0[17];
      }

      if (sub_1D33DEE14() >= 1)
      {
        goto LABEL_17;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_17;
    }
  }

  v24 = v0[39];
  v25 = v0[18];

  v26 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results;
  swift_beginAccess();
  v27 = *(v25 + v26);
  v28 = MEMORY[0x1E69E7CC0];
  *(v25 + v26) = MEMORY[0x1E69E7CC0];

  v29 = *(v25 + v26);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = v0[27];

    sub_1D334A9E0(0, v30, 0);
    v32 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v33 = *(v31 + 72);
    do
    {
      v34 = v0[28];
      sub_1D332A828(v32, v34);
      v35 = RecentsItem.dataSourceId.getter();
      v37 = v36;
      sub_1D33379F4(v34, type metadata accessor for RecentsItem);
      v39 = *(v28 + 16);
      v38 = *(v28 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D334A9E0((v38 > 1), v39 + 1, 1);
      }

      *(v28 + 16) = v39 + 1;
      v40 = v28 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v32 += v33;
      --v30;
    }

    while (v30);
  }

  v41 = v0[18];
  v42 = *(v41 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs);
  *(v41 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs) = v28;

LABEL_30:
  v44 = v0[37];
  v43 = v0[38];
  v45 = v0[36];
  v47 = v0[32];
  v46 = v0[33];
  v49 = v0[30];
  v48 = v0[31];
  v51 = v0[28];
  v50 = v0[29];
  v52 = v0[25];
  v54 = v0[24];
  v55 = v0[23];
  v56 = v0[22];
  v57 = v0[21];

  v53 = v0[1];

  return v53();
}

uint64_t sub_1D3380430(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v7 = *(v3 + 328);
  v8 = *(v3 + 320);
  if (v1)
  {
    v9 = sub_1D33815B4;
  }

  else
  {
    v9 = sub_1D3380574;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D3380574()
{
  v180 = v0;
  v1 = v0;
  v2 = v0[44];
  sub_1D33DEA04();
  v3 = v0[43];
  if (v2)
  {
    v4 = v0[39];

    v5 = v0[21];
    v6 = v0[19];
    v1[14] = v2;
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v8 = swift_dynamicCast();
    v9 = v1[18];
    v10 = v1[16];
    if (v8)
    {

      v11 = sub_1D33DE444();
      v12 = sub_1D33DEAD4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = v1[15];
        v14 = v1[16];
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v179[0] = v16;
        *v15 = 136315138;

        v17 = sub_1D3328B48(v13, v14, v179);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_1D331A000, v11, v12, "VoicemailsSearchController: Search cancelled for '%s'", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x1D38B81C0](v16, -1, -1);
        MEMORY[0x1D38B81C0](v15, -1, -1);
      }

      (*(v1[20] + 8))(v1[21], v1[19]);
    }

    else
    {

      v28 = sub_1D33DE444();
      v29 = sub_1D33DEAD4();

      if (os_log_type_enabled(v28, v29))
      {
        v31 = v1[15];
        v30 = v1[16];
        v32 = swift_slowAlloc();
        v33 = v1;
        v34 = swift_slowAlloc();
        v179[0] = v34;
        *v32 = 136315138;

        v35 = sub_1D3328B48(v31, v30, v179);

        *(v32 + 4) = v35;
        _os_log_impl(&dword_1D331A000, v28, v29, "VoicemailsSearchController: Failed to search for '%s'", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        v36 = v34;
        v1 = v33;
        MEMORY[0x1D38B81C0](v36, -1, -1);
        MEMORY[0x1D38B81C0](v32, -1, -1);
      }
    }

    goto LABEL_16;
  }

  v18 = v0[18];
  v19 = v0[16];

  v20 = sub_1D33DE444();
  v21 = sub_1D33DEAF4();

  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[43];
  if (v22)
  {
    v24 = v0[15];
    v25 = v1[16];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v179[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_1D3328B48(v24, v25, v179);
    *(v26 + 12) = 2048;
    *(v26 + 14) = *(v23 + 16);

    _os_log_impl(&dword_1D331A000, v20, v21, "VoicemailsSearchController: Completed search for %s. Got %ld results", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1D38B81C0](v27, -1, -1);
    MEMORY[0x1D38B81C0](v26, -1, -1);
  }

  else
  {
    v37 = v0[43];
  }

  v38 = v1[43];
  if (!*(v38 + 16))
  {
    v43 = v1[39];
    v44 = v1[18];

    v45 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results;
    swift_beginAccess();
    v46 = *(v44 + v45);
    v47 = MEMORY[0x1E69E7CC0];
    *(v44 + v45) = MEMORY[0x1E69E7CC0];

    v48 = *(v44 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs);
    *(v44 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs) = v47;
    goto LABEL_15;
  }

  v179[0] = *(v1 + 43);

  sub_1D3375198(v179);
  v39 = v1;
  v40 = v1[18];
  v41 = v179[0];
  v42 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs;
  v179[0] = *(v40 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs);
  swift_bridgeObjectRetain_n();
  sub_1D3375198(v179);
  v63 = v39[39];

  v64 = sub_1D33743D0(v41, v179[0]);

  v65 = v39[43];
  if (v64)
  {
    v1 = v39;

    v66 = sub_1D33DE444();
    v67 = sub_1D33DEAF4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1D331A000, v66, v67, "VoicemailsSearchController: Search voicemails did not change for voicemails search controller.", v68, 2u);
      MEMORY[0x1D38B81C0](v68, -1, -1);
    }

    goto LABEL_16;
  }

  v69 = sub_1D33DE444();
  v70 = sub_1D33DEAF4();
  v71 = os_log_type_enabled(v69, v70);
  v178 = v39;
  v72 = v39[43];
  if (v71)
  {
    v73 = swift_slowAlloc();
    *v73 = 134217984;
    *(v73 + 4) = *(v38 + 16);

    _os_log_impl(&dword_1D331A000, v69, v70, "VoicemailsSearchController: Search voicemails did changed! Search results count: %ld", v73, 0xCu);
    MEMORY[0x1D38B81C0](v73, -1, -1);
  }

  else
  {
    v74 = v39[43];
  }

  v75 = *(v40 + v42);
  *(v40 + v42) = v178[43];

  v76 = *(v38 + 16);

  v172 = v76;
  if (!v76)
  {
    v175 = MEMORY[0x1E69E7CC0];
    v1 = v178;
LABEL_38:
    v96 = v175[2];
    if (v96)
    {
      v97 = v1[35];
      v98 = v1[27];
      v165 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_voicemailsById;
      v169 = v1[18];
      v99 = *(v97 + 16);
      v97 += 16;
      v163 = v99;
      v100 = v175 + ((*(v97 + 64) + 32) & ~*(v97 + 64));
      v159 = (v98 + 56);
      v161 = (v97 + 40);
      v155 = v98;
      v157 = (v98 + 48);
      v158 = (v97 - 8);
      v101 = MEMORY[0x1E69E7CC0];
      v156 = *(v97 + 56);
      do
      {
        v102 = v1[37];
        v103 = v1[34];
        v104 = v1[32];
        v163(v102, v100, v103);
        v163(v104, v102, v103);
        v105 = 1;
        (*v161)(v104, 0, 1, v103);
        swift_beginAccess();
        v106 = *(v169 + v165);
        if (*(v106 + 16) && (v107 = sub_1D33B9390(v1[32]), (v108 & 1) != 0))
        {
          v109 = v101;
          sub_1D332A828(*(v106 + 56) + *(v155 + 72) * v107, v1[25]);
          v105 = 0;
        }

        else
        {
          v109 = v101;
        }

        v110 = v1[37];
        v111 = v1[34];
        v112 = v1[32];
        v113 = v1[25];
        v114 = v1[26];
        (*v159)(v113, v105, 1, v114);
        swift_endAccess();
        sub_1D331E880(v112, &qword_1EC7612B0, qword_1D33E2830);
        (*v158)(v110, v111);
        if ((*v157)(v113, 1, v114) == 1)
        {
          sub_1D331E880(v1[25], &unk_1EC760EE0, &qword_1D33E4CE0);
          v101 = v109;
        }

        else
        {
          sub_1D33302BC(v1[25], v1[31]);
          v101 = v109;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1D33226AC(0, v109[2] + 1, 1, v109);
          }

          v116 = v101[2];
          v115 = v101[3];
          if (v116 >= v115 >> 1)
          {
            v101 = sub_1D33226AC(v115 > 1, v116 + 1, 1, v101);
          }

          v117 = v1[31];
          v101[2] = v116 + 1;
          sub_1D33302BC(v117, v101 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v116);
        }

        v100 += v156;
        --v96;
      }

      while (v96);
    }

    else
    {

      v101 = MEMORY[0x1E69E7CC0];
    }

    v170 = v101[2];
    if (v170)
    {
      v118 = 0;
      v160 = v1[30];
      v119 = MEMORY[0x1E69E7CC0];
      v162 = v1[26];
      v164 = v1[27];
      v166 = v101;
      while (1)
      {
        if (v118 >= v101[2])
        {
          goto LABEL_80;
        }

        v120 = v1[30];
        v121 = v1[22];
        v176 = (*(v164 + 80) + 32) & ~*(v164 + 80);
        v173 = *(v164 + 72);
        sub_1D332A828(v101 + v176 + v173 * v118, v120);
        sub_1D331E818(v120 + *(v162 + 32), v121, &unk_1EC761DE0, &unk_1D33E50F0);
        v122 = type metadata accessor for CallInfo(0);
        v123 = (*(*(v122 - 8) + 48))(v121, 1, v122);
        v125 = v1[22];
        v124 = v1[23];
        if (v123 == 1)
        {
          break;
        }

        v133 = v178[24];
        v134 = *(v122 + 24);
        v127 = sub_1D33DDD34();
        v135 = *(v127 - 8);
        (*(v135 + 16))(v124, v125 + v134, v127);
        sub_1D33379F4(v125, type metadata accessor for CallInfo);
        v136 = *(v135 + 56);
        v136(v124, 0, 1, v127);
        (*(v135 + 32))(v133, v124, v127);
        v137 = v133;
        v1 = v178;
        v136(v137, 0, 1, v127);
LABEL_71:
        v142 = v1[24];
        sub_1D33DDD34();
        v143 = (*(*(v127 - 8) + 48))(v142, 1, v127);
        v144 = v1[30];
        if (v143 == 1)
        {
          sub_1D33379F4(v1[30], type metadata accessor for RecentsItem);
          result = sub_1D331E880(v142, &qword_1EC760E10, &unk_1D33E1A90);
          v101 = v166;
        }

        else
        {
          v145 = v1[29];
          sub_1D331E880(v142, &qword_1EC760E10, &unk_1D33E1A90);
          sub_1D33302BC(v144, v145);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v179[0] = v119;
          v101 = v166;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D3330B0C(0, v119[2] + 1, 1);
            v119 = v179[0];
          }

          v148 = v119[2];
          v147 = v119[3];
          v1 = v178;
          if (v148 >= v147 >> 1)
          {
            sub_1D3330B0C(v147 > 1, v148 + 1, 1);
            v119 = v179[0];
          }

          v149 = v178[29];
          v119[2] = v148 + 1;
          result = sub_1D33302BC(v149, v119 + v176 + v148 * v173);
        }

        if (v170 == ++v118)
        {
          goto LABEL_78;
        }
      }

      v126 = v1[30];
      sub_1D331E880(v125, &unk_1EC761DE0, &unk_1D33E50F0);
      v127 = sub_1D33DDD34();
      v128 = *(v127 - 8);
      v129 = *(v128 + 56);
      v130 = 1;
      v129(v124, 1, 1, v127);
      v131 = *v126;
      v132 = *(v160 + 32);
      if (v132 > 8)
      {
        goto LABEL_66;
      }

      if (((1 << v132) & 0x1B0) != 0)
      {
        v1 = v178;
        goto LABEL_69;
      }

      v138 = *(v160 + 8);
      if (v132 != 3 && v132 != 6)
      {
LABEL_66:
        v1 = v178;
        if (v132 < 2)
        {
          goto LABEL_69;
        }

        v138 = v131;
      }

      v139 = v178[24];
      v140 = v138;
      sub_1D33DE0C4();

      v1 = v178;
      v130 = 0;
LABEL_69:
      v141 = v1[23];
      v129(v1[24], v130, 1, v127);
      if ((*(v128 + 48))(v141, 1, v127) != 1)
      {
        sub_1D331E880(v1[23], &qword_1EC760E10, &unk_1D33E1A90);
      }

      goto LABEL_71;
    }

    v119 = MEMORY[0x1E69E7CC0];
LABEL_78:

    v179[0] = v119;

    sub_1D3381C3C(v179);
    v150 = v1[43];
    v151 = v1[18];

    v152 = v179[0];
    v153 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results;
    swift_beginAccess();
    v154 = *(v151 + v153);
    *(v151 + v153) = v152;
LABEL_15:

LABEL_16:
    v50 = v1[37];
    v49 = v1[38];
    v51 = v1[36];
    v53 = v1[32];
    v52 = v1[33];
    v54 = v1;
    v57 = v1 + 30;
    v56 = v1[30];
    v55 = v57[1];
    v59 = v54[28];
    v58 = v54[29];
    v60 = v54[25];
    v167 = v54[24];
    v171 = v54[23];
    v174 = v54[22];
    v177 = v54[21];

    v61 = v54[1];

    return v61();
  }

  v77 = 0;
  v78 = v178[35];
  v79 = (v78 + 48);
  v168 = v78;
  v80 = (v78 + 32);
  v81 = (v178[43] + 40);
  v175 = MEMORY[0x1E69E7CC0];
  v1 = v178;
  while (v77 < *(v38 + 16))
  {
    v83 = v1[33];
    v82 = v1[34];
    v85 = *(v81 - 1);
    v84 = *v81;

    sub_1D33DDD44();

    if ((*v79)(v83, 1, v82) == 1)
    {
      result = sub_1D331E880(v1[33], &qword_1EC7612B0, qword_1D33E2830);
    }

    else
    {
      v86 = v1[38];
      v87 = v1[36];
      v88 = v1[34];
      v89 = *v80;
      (*v80)(v86, v1[33], v88);
      v89(v87, v86, v88);
      v90 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_1D3338090(0, v175[2] + 1, 1, v175);
      }

      v92 = v90[2];
      v91 = v90[3];
      v175 = v90;
      if (v92 >= v91 >> 1)
      {
        v175 = sub_1D3338090(v91 > 1, v92 + 1, 1, v90);
      }

      v93 = v178[36];
      v94 = v178[34];
      v175[2] = v92 + 1;
      v95 = v175 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v92;
      v1 = v178;
      result = (v89)(v95, v93, v94);
    }

    ++v77;
    v81 += 2;
    if (v172 == v77)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_1D33815B4()
{
  v40 = v0;
  v1 = *(v0 + 312);

  v2 = *(v0 + 352);
  *(v0 + 112) = v2;
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  if (v6)
  {

    v9 = sub_1D33DE444();
    v10 = sub_1D33DEAD4();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 120);
      v11 = *(v0 + 128);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v39 = v14;
      *v13 = 136315138;

      v15 = sub_1D3328B48(v12, v11, &v39);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_1D331A000, v9, v10, "VoicemailsSearchController: Search cancelled for '%s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1D38B81C0](v14, -1, -1);
      MEMORY[0x1D38B81C0](v13, -1, -1);
    }

    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {

    v16 = sub_1D33DE444();
    v17 = sub_1D33DEAD4();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 120);
      v18 = *(v0 + 128);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315138;

      v22 = sub_1D3328B48(v19, v18, &v39);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_1D331A000, v16, v17, "VoicemailsSearchController: Failed to search for '%s'", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1D38B81C0](v21, -1, -1);
      MEMORY[0x1D38B81C0](v20, -1, -1);
    }
  }

  v24 = *(v0 + 296);
  v23 = *(v0 + 304);
  v25 = *(v0 + 288);
  v27 = *(v0 + 256);
  v26 = *(v0 + 264);
  v29 = *(v0 + 240);
  v28 = *(v0 + 248);
  v31 = *(v0 + 224);
  v30 = *(v0 + 232);
  v32 = *(v0 + 200);
  v35 = *(v0 + 192);
  v36 = *(v0 + 184);
  v37 = *(v0 + 176);
  v38 = *(v0 + 168);

  v33 = *(v0 + 8);

  return v33();
}

id VoicemailSearchManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoicemailSearchManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D3381B10()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1D3381B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D334CF9C;

  return VoicemailSearchManager.search(with:searchTokens:)(a1, a2, a3);
}

uint64_t sub_1D3381C3C(void **a1)
{
  v2 = *(type metadata accessor for RecentsItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D33A9400(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D3381E1C(v6);
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for VoicemailSearchManager()
{
  result = qword_1EC761790;
  if (!qword_1EC761790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3381D38()
{
  result = sub_1D33DE464();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D3381E1C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D33DF164();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for RecentsItem(0);
        v6 = sub_1D33DE8E4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RecentsItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D3382864(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D3381F48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D3381F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v80 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v80 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v94 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v80 - v23;
  v101 = type metadata accessor for RecentsItem(0);
  v24 = *(*(v101 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v101);
  v89 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v80 - v28;
  result = MEMORY[0x1EEE9AC00](v27);
  v92 = &v80 - v32;
  v82 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v33 = *a4;
  v34 = *(v31 + 72);
  v35 = *a4 + v34 * (a3 - 1);
  v87 = -v34;
  v88 = v33;
  v36 = a1 - a3;
  v81 = v34;
  v37 = v33 + v34 * a3;
  v90 = v13;
  v93 = v20;
  v100 = v29;
LABEL_5:
  v85 = v35;
  v86 = a3;
  v83 = v37;
  v84 = v36;
  v38 = v36;
  v102 = v35;
  v39 = v92;
  while (1)
  {
    v96 = v38;
    sub_1D332A828(v37, v39);
    sub_1D332A828(v102, v29);
    sub_1D331E818(v39 + *(v101 + 32), v13, &unk_1EC761DE0, &unk_1D33E50F0);
    v40 = type metadata accessor for CallInfo(0);
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    v97 = v41 + 48;
    v98 = v42;
    v43 = (v42)(v13, 1, v40);
    v99 = v37;
    if (v43 != 1)
    {
      v54 = *(v40 + 24);
      v44 = sub_1D33DDD34();
      v55 = *(v44 - 8);
      v56 = v103;
      v57 = v94;
      (*(v55 + 16))(v94, &v13[v54], v44);
      sub_1D33379F4(v13, type metadata accessor for CallInfo);
      v58 = *(v55 + 56);
      v58(v57, 0, 1, v44);
      (*(v55 + 32))(v56, v57, v44);
      v58(v56, 0, 1, v44);
      v53 = v91;
      goto LABEL_18;
    }

    sub_1D331E880(v13, &unk_1EC761DE0, &unk_1D33E50F0);
    v44 = sub_1D33DDD34();
    v45 = *(v44 - 8);
    v46 = *(v45 + 56);
    v47 = 1;
    v46(v94, 1, 1, v44);
    v48 = *v39;
    v49 = *(v39 + 32);
    if (v49 <= 8)
    {
      if (((1 << v49) & 0x1B0) != 0)
      {
        goto LABEL_14;
      }

      v50 = *(v39 + 8);
      if (v49 == 3 || v49 == 6)
      {
        goto LABEL_13;
      }
    }

    if (v49 >= 2)
    {
      v50 = *v39;
LABEL_13:
      v51 = v50;
      sub_1D33DE0C4();

      v47 = 0;
    }

LABEL_14:
    v46(v103, v47, 1, v44);
    v52 = v94;
    if ((*(v45 + 48))(v94, 1, v44) != 1)
    {
      sub_1D331E880(v52, &qword_1EC760E10, &unk_1D33E1A90);
    }

    v53 = v91;
LABEL_18:
    sub_1D33DDD34();
    v59 = *(v44 - 8);
    v60 = *(v59 + 48);
    result = v60(v103, 1, v44);
    if (result == 1)
    {
      break;
    }

    v61 = v100;
    sub_1D331E818(&v100[*(v101 + 32)], v53, &unk_1EC761DE0, &unk_1D33E50F0);
    if ((v98)(v53, 1, v40) == 1)
    {
      sub_1D331E880(v53, &unk_1EC761DE0, &unk_1D33E50F0);
      v62 = 1;
      v98 = *(v59 + 56);
      v98(v95, 1, 1, v44);
      v63 = *v61;
      v64 = *(v61 + 32);
      if (v64 > 8)
      {
        goto LABEL_24;
      }

      if (((1 << v64) & 0x1B0) == 0)
      {
        v65 = *(v100 + 1);
        if (v64 != 3 && v64 != 6)
        {
LABEL_24:
          v39 = v92;
          v66 = v99;
          if (v64 >= 2)
          {
            v65 = v63;
            goto LABEL_26;
          }

LABEL_28:
          v68 = v93;
          v98(v93, v62, 1, v44);
          if (v60(v95, 1, v44) != 1)
          {
            sub_1D331E880(v95, &qword_1EC760E10, &unk_1D33E1A90);
          }

          goto LABEL_31;
        }

LABEL_26:
        v67 = v65;
        sub_1D33DE0C4();

        v62 = 0;
      }

      v39 = v92;
      v66 = v99;
      goto LABEL_28;
    }

    v69 = v53 + *(v40 + 24);
    v70 = v95;
    (*(v59 + 16))(v95, v69, v44);
    sub_1D33379F4(v53, type metadata accessor for CallInfo);
    v71 = *(v59 + 56);
    v71(v70, 0, 1, v44);
    v68 = v93;
    (*(v59 + 32))();
    v71(v68, 0, 1, v44);
    v39 = v92;
    v66 = v99;
LABEL_31:
    result = v60(v68, 1, v44);
    if (result == 1)
    {
      goto LABEL_38;
    }

    v72 = v103;
    v73 = sub_1D33DDCA4();
    v74 = *(v59 + 8);
    v74(v68, v44);
    v74(v72, v44);
    v29 = v100;
    sub_1D33379F4(v100, type metadata accessor for RecentsItem);
    result = sub_1D33379F4(v39, type metadata accessor for RecentsItem);
    v13 = v90;
    if (v73)
    {
      if (!v88)
      {
        goto LABEL_39;
      }

      v75 = v89;
      sub_1D33302BC(v66, v89);
      v76 = v102;
      swift_arrayInitWithTakeFrontToBack();
      v77 = v75;
      v78 = v96;
      result = sub_1D33302BC(v77, v76);
      v102 = v76 + v87;
      v37 = v66 + v87;
      v79 = __CFADD__(v78, 1);
      v38 = v78 + 1;
      if (!v79)
      {
        continue;
      }
    }

    a3 = v86 + 1;
    v35 = v85 + v81;
    v36 = v84 - 1;
    v37 = v83 + v81;
    if (v86 + 1 == v82)
    {
      return result;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1D3382864(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v216 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v211 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v211 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v221 = &v211 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v225 = &v211 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v247 = &v211 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v245 = &v211 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v246 = &v211 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v211 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v234 = &v211 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v230 = &v211 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v232 = &v211 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v227 = &v211 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v212 = &v211 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v218 = &v211 - v38;
  v39 = type metadata accessor for RecentsItem(0);
  v231 = *(v39 - 8);
  v40 = *(v231 + 64);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v219 = &v211 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v241 = &v211 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v253 = &v211 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v244 = &v211 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v226 = &v211 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v213 = &v211 - v53;
  result = MEMORY[0x1EEE9AC00](v52);
  v214 = &v211 - v56;
  v57 = a3[1];
  if (v57 >= 1)
  {
    v58 = a3[1];
    v238 = v55;
    v59 = 0;
    v60 = MEMORY[0x1E69E7CC0];
    v211 = a3;
    v215 = a4;
    v242 = v10;
    v243 = v13;
    v254 = v39;
    v255 = v27;
    while (1)
    {
      v61 = v59;
      v220 = v60;
      if (v59 + 1 >= v57)
      {
        v103 = v59 + 1;
        v104 = v253;
        goto LABEL_52;
      }

      v236 = v57;
      v62 = *a3;
      v63 = *(v231 + 72);
      v64 = *a3 + v63 * (v59 + 1);
      sub_1D332A828(v64, v214);
      v217 = v61;
      v233 = v63;
      v251 = v62;
      v65 = v213;
      sub_1D332A828(v62 + v63 * v61, v213);
      v66 = v218;
      RecentsItem.date.getter(v218);
      v67 = sub_1D33DDD34();
      v229 = *(v67 - 8);
      v69 = v229 + 48;
      v68 = *(v229 + 6);
      result = v68(v66, 1, v67);
      if (result == 1)
      {
        break;
      }

      v70 = v212;
      RecentsItem.date.getter(v212);
      v71 = v70;
      v249 = v68;
      v250 = v69;
      result = v68(v70, 1, v67);
      v72 = v226;
      if (result == 1)
      {
        goto LABEL_193;
      }

      LODWORD(v228) = sub_1D33DDCA4();
      v73 = v229 + 8;
      v74 = *(v229 + 1);
      v74(v71, v67);
      v222 = v74;
      v74(v218, v67);
      sub_1D33379F4(v65, type metadata accessor for RecentsItem);
      sub_1D33379F4(v214, type metadata accessor for RecentsItem);
      v224 = (v73 + 8);
      v252 = (v73 + 48);
      v229 = v73;
      v223 = (v73 + 24);
      v75 = v217 + 2;
      result = v251 + v233 * (v217 + 2);
      v76 = v227;
      while (1)
      {
        v10 = v225;
        if (v236 == v75)
        {
          break;
        }

        v239 = v75;
        v235 = result;
        sub_1D332A828(result, v72);
        sub_1D332A828(v64, v238);
        sub_1D331E818(v72 + *(v39 + 32), v10, &unk_1EC761DE0, &unk_1D33E50F0);
        v77 = type metadata accessor for CallInfo(0);
        v78 = *(v77 - 8);
        v248 = *(v78 + 48);
        v240 = v78 + 48;
        if (v248(v10, 1, v77) != 1)
        {
          v89 = v232;
          (*v224)(v232, v10 + *(v77 + 24), v67);
          sub_1D33379F4(v10, type metadata accessor for CallInfo);
          v90 = *v252;
          (*v252)(v89, 0, 1, v67);
          v84 = v227;
          (*v223)(v227, v89, v67);
          v251 = v90;
          v90(v84, 0, 1, v67);
          v88 = v221;
          v86 = v249;
          goto LABEL_22;
        }

        sub_1D331E880(v10, &unk_1EC761DE0, &unk_1D33E50F0);
        v79 = *v252;
        v80 = 1;
        (*v252)(v232, 1, 1, v67);
        v81 = *(v72 + 32);
        if (v81 <= 8)
        {
          if (((1 << v81) & 0x1B0) != 0)
          {
            goto LABEL_18;
          }

          v82 = *(v72 + 8);
          if (v81 == 3 || v81 == 6)
          {
            goto LABEL_17;
          }
        }

        if (v81 >= 2)
        {
          v82 = *v72;
LABEL_17:
          v83 = v82;
          sub_1D33DE0C4();

          v80 = 0;
        }

LABEL_18:
        v84 = v76;
        v79(v76, v80, 1, v67);
        v85 = v232;
        v86 = v249;
        v87 = (v249)(v232, 1, v67);
        v251 = v79;
        if (v87 != 1)
        {
          sub_1D331E880(v85, &qword_1EC760E10, &unk_1D33E1A90);
        }

        v88 = v221;
LABEL_22:
        v91 = v64;
        v92 = v84;
        result = (v86)(v84, 1, v67);
        if (result == 1)
        {
          goto LABEL_187;
        }

        v93 = v238;
        sub_1D331E818(v238 + *(v254 + 32), v88, &unk_1EC761DE0, &unk_1D33E50F0);
        if (v248(v88, 1, v77) == 1)
        {
          sub_1D331E880(v88, &unk_1EC761DE0, &unk_1D33E50F0);
          (v251)(v234, 1, 1, v67);
          v94 = *(v93 + 32);
          v39 = v254;
          if (v94 > 8)
          {
            goto LABEL_28;
          }

          if (((1 << v94) & 0x1B0) == 0)
          {
            v95 = *(v93 + 8);
            if (v94 == 3 || v94 == 6)
            {
LABEL_30:
              v96 = v95;
              sub_1D33DE0C4();
            }

            else
            {
LABEL_28:
              if (v94 >= 2)
              {
                v95 = *v93;
                goto LABEL_30;
              }
            }
          }

          v97 = v230;
          v251();
          v98 = v249;
          if ((v249)(v234, 1, v67) != 1)
          {
            sub_1D331E880(v234, &qword_1EC760E10, &unk_1D33E1A90);
          }

          goto LABEL_34;
        }

        v99 = v234;
        (*v224)(v234, v88 + *(v77 + 24), v67);
        sub_1D33379F4(v88, type metadata accessor for CallInfo);
        v100 = v251;
        (v251)(v99, 0, 1, v67);
        v97 = v230;
        (*v223)(v230, v99, v67);
        (v100)(v97, 0, 1, v67);
        v39 = v254;
        v64 = v91;
        v98 = v249;
LABEL_34:
        result = (v98)(v97, 1, v67);
        v72 = v226;
        if (result == 1)
        {
          goto LABEL_186;
        }

        v76 = v92;
        v101 = sub_1D33DDCA4() & 1;
        v102 = v222;
        v222(v97, v67);
        v102(v76, v67);
        v10 = type metadata accessor for RecentsItem;
        sub_1D33379F4(v238, type metadata accessor for RecentsItem);
        sub_1D33379F4(v72, type metadata accessor for RecentsItem);
        v75 = v239 + 1;
        result = v235 + v233;
        v64 += v233;
        if ((v228 & 1) != v101)
        {
          v103 = v239;
          goto LABEL_38;
        }
      }

      v103 = v236;
LABEL_38:
      a3 = v211;
      a4 = v215;
      v104 = v253;
      v61 = v217;
      if (v228)
      {
        if (v103 < v217)
        {
          goto LABEL_179;
        }

        if (v217 < v103)
        {
          v10 = v233 * (v103 - 1);
          v105 = v103 * v233;
          v236 = v103;
          v106 = v103;
          v107 = v217;
          v108 = v217 * v233;
          do
          {
            if (v107 != --v106)
            {
              v109 = *a3;
              if (!*a3)
              {
                goto LABEL_189;
              }

              sub_1D33302BC(v109 + v108, v219);
              if (v108 < v10 || v109 + v108 >= (v109 + v105))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v108 != v10)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D33302BC(v219, v109 + v10);
            }

            ++v107;
            v10 -= v233;
            v105 -= v233;
            v108 += v233;
          }

          while (v107 < v106);
          a4 = v215;
          v104 = v253;
          v61 = v217;
          v103 = v236;
        }
      }

LABEL_52:
      v110 = a3[1];
      if (v103 >= v110)
      {
        goto LABEL_61;
      }

      if (__OFSUB__(v103, v61))
      {
        goto LABEL_178;
      }

      if (v103 - v61 >= a4)
      {
LABEL_61:
        v10 = v103;
        if (v103 < v61)
        {
          goto LABEL_177;
        }

        goto LABEL_62;
      }

      if (__OFADD__(v61, a4))
      {
        goto LABEL_180;
      }

      if (v61 + a4 >= v110)
      {
        v10 = a3[1];
      }

      else
      {
        v10 = v61 + a4;
      }

      a4 = v243;
      if (v10 < v61)
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      if (v103 == v10)
      {
        goto LABEL_61;
      }

      v158 = *a3;
      v159 = *(v231 + 72);
      v160 = *a3 + v159 * (v103 - 1);
      v239 = -v159;
      v217 = v61;
      v161 = v61 - v103;
      v240 = v158;
      v224 = v159;
      v162 = (v158 + v103 * v159);
      v163 = v244;
      v228 = v10;
      while (2)
      {
        v236 = v103;
        v229 = v162;
        v233 = v161;
        v164 = v161;
        v235 = v160;
        while (2)
        {
          v249 = v162;
          v250 = v164;
          sub_1D332A828(v162, v163);
          v248 = v160;
          sub_1D332A828(v160, v104);
          sub_1D331E818(v163 + *(v39 + 32), a4, &unk_1EC761DE0, &unk_1D33E50F0);
          v165 = v163;
          v166 = type metadata accessor for CallInfo(0);
          v167 = *(v166 - 8);
          v168 = *(v167 + 48);
          v251 = (v167 + 48);
          v252 = v168;
          if ((v168)(a4, 1, v166) == 1)
          {
            sub_1D331E880(a4, &unk_1EC761DE0, &unk_1D33E50F0);
            v169 = sub_1D33DDD34();
            v170 = *(v169 - 8);
            v171 = *(v170 + 56);
            v172 = 1;
            v171(v246, 1, 1, v169);
            v173 = *v165;
            v174 = *(v165 + 32);
            if (v174 > 8)
            {
              goto LABEL_120;
            }

            if (((1 << v174) & 0x1B0) == 0)
            {
              v175 = *(v244 + 8);
              if (v174 == 3 || v174 == 6)
              {
LABEL_122:
                v176 = v175;
                sub_1D33DE0C4();

                v172 = 0;
              }

              else
              {
LABEL_120:
                if (v174 >= 2)
                {
                  v175 = *v165;
                  goto LABEL_122;
                }
              }
            }

            v171(v255, v172, 1, v169);
            v177 = v246;
            if ((*(v170 + 48))(v246, 1, v169) != 1)
            {
              sub_1D331E880(v177, &qword_1EC760E10, &unk_1D33E1A90);
            }

            v178 = v242;
            v179 = v255;
          }

          else
          {
            v180 = *(v166 + 24);
            v169 = sub_1D33DDD34();
            v181 = *(v169 - 8);
            v182 = v246;
            (*(v181 + 16))(v246, a4 + v180, v169);
            sub_1D33379F4(a4, type metadata accessor for CallInfo);
            v183 = *(v181 + 56);
            v183(v182, 0, 1, v169);
            v179 = v255;
            (*(v181 + 32))(v255, v182, v169);
            v183(v179, 0, 1, v169);
            v178 = v242;
          }

          sub_1D33DDD34();
          v184 = *(v169 - 8);
          v185 = *(v184 + 48);
          result = v185(v179, 1, v169);
          if (result == 1)
          {
            goto LABEL_184;
          }

          v186 = v253;
          sub_1D331E818(&v253[*(v254 + 32)], v178, &unk_1EC761DE0, &unk_1D33E50F0);
          if ((v252)(v178, 1, v166) == 1)
          {
            sub_1D331E880(v178, &unk_1EC761DE0, &unk_1D33E50F0);
            v187 = *(v184 + 56);
            v188 = 1;
            v187(v247, 1, 1, v169);
            v189 = *v186;
            v190 = v186[32];
            if (v190 > 8)
            {
              goto LABEL_133;
            }

            if (((1 << v190) & 0x1B0) == 0)
            {
              v191 = *(v186 + 1);
              if (v190 == 3 || v190 == 6)
              {
LABEL_135:
                v192 = v191;
                sub_1D33DE0C4();

                v188 = 0;
              }

              else
              {
LABEL_133:
                if (v190 >= 2)
                {
                  v191 = *v186;
                  goto LABEL_135;
                }
              }
            }

            v193 = v245;
            v187(v245, v188, 1, v169);
            if (v185(v247, 1, v169) != 1)
            {
              sub_1D331E880(v247, &qword_1EC760E10, &unk_1D33E1A90);
            }
          }

          else
          {
            v194 = v178 + *(v166 + 24);
            v195 = v247;
            (*(v184 + 16))(v247, v194, v169);
            sub_1D33379F4(v178, type metadata accessor for CallInfo);
            v196 = *(v184 + 56);
            v196(v195, 0, 1, v169);
            v193 = v245;
            (*(v184 + 32))();
            v196(v193, 0, 1, v169);
          }

          result = v185(v193, 1, v169);
          if (result == 1)
          {
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          v197 = v255;
          v198 = sub_1D33DDCA4();
          v199 = *(v184 + 8);
          v199(v193, v169);
          v200 = v197;
          v104 = v253;
          v199(v200, v169);
          sub_1D33379F4(v104, type metadata accessor for RecentsItem);
          v163 = v244;
          result = sub_1D33379F4(v244, type metadata accessor for RecentsItem);
          if (v198)
          {
            a4 = v243;
            v39 = v254;
            v201 = v250;
            if (!v240)
            {
              goto LABEL_185;
            }

            v202 = v249;
            v203 = v241;
            sub_1D33302BC(v249, v241);
            v204 = v248;
            swift_arrayInitWithTakeFrontToBack();
            sub_1D33302BC(v203, v204);
            v160 = v204 + v239;
            v162 = &v202[v239];
            v205 = __CFADD__(v201, 1);
            v164 = (v201 + 1);
            if (v205)
            {
              goto LABEL_113;
            }

            continue;
          }

          break;
        }

        a4 = v243;
        v39 = v254;
LABEL_113:
        v103 = v236 + 1;
        v160 = v224 + v235;
        v161 = v233 - 1;
        v162 = v224 + v229;
        v10 = v228;
        if (v236 + 1 != v228)
        {
          continue;
        }

        break;
      }

      a3 = v211;
      v61 = v217;
      if (v228 < v217)
      {
        goto LABEL_177;
      }

LABEL_62:
      result = swift_isUniquelyReferenced_nonNull_native();
      v228 = v10;
      if (result)
      {
        v60 = v220;
      }

      else
      {
        result = sub_1D3359A14(0, *(v220 + 2) + 1, 1, v220);
        v60 = result;
      }

      v112 = *(v60 + 2);
      v111 = *(v60 + 3);
      v10 = v112 + 1;
      if (v112 >= v111 >> 1)
      {
        result = sub_1D3359A14((v111 > 1), v112 + 1, 1, v60);
        v60 = result;
      }

      *(v60 + 2) = v10;
      v113 = &v60[16 * v112];
      v114 = v228;
      *(v113 + 4) = v61;
      *(v113 + 5) = v114;
      a4 = *v216;
      if (!*v216)
      {
        goto LABEL_191;
      }

      if (v112)
      {
        while (1)
        {
          v115 = v10 - 1;
          if (v10 >= 4)
          {
            break;
          }

          if (v10 == 3)
          {
            v116 = *(v60 + 4);
            v117 = *(v60 + 5);
            v126 = __OFSUB__(v117, v116);
            v118 = v117 - v116;
            v119 = v126;
LABEL_81:
            if (v119)
            {
              goto LABEL_166;
            }

            v132 = &v60[16 * v10];
            v134 = *v132;
            v133 = *(v132 + 1);
            v135 = __OFSUB__(v133, v134);
            v136 = v133 - v134;
            v137 = v135;
            if (v135)
            {
              goto LABEL_169;
            }

            v138 = &v60[16 * v115 + 32];
            v140 = *v138;
            v139 = *(v138 + 1);
            v126 = __OFSUB__(v139, v140);
            v141 = v139 - v140;
            if (v126)
            {
              goto LABEL_172;
            }

            if (__OFADD__(v136, v141))
            {
              goto LABEL_173;
            }

            if (v136 + v141 >= v118)
            {
              if (v118 < v141)
              {
                v115 = v10 - 2;
              }

              goto LABEL_102;
            }

            goto LABEL_95;
          }

          v142 = &v60[16 * v10];
          v144 = *v142;
          v143 = *(v142 + 1);
          v126 = __OFSUB__(v143, v144);
          v136 = v143 - v144;
          v137 = v126;
LABEL_95:
          if (v137)
          {
            goto LABEL_168;
          }

          v145 = &v60[16 * v115];
          v147 = *(v145 + 4);
          v146 = *(v145 + 5);
          v126 = __OFSUB__(v146, v147);
          v148 = v146 - v147;
          if (v126)
          {
            goto LABEL_171;
          }

          if (v148 < v136)
          {
            goto LABEL_3;
          }

LABEL_102:
          v153 = v115 - 1;
          if (v115 - 1 >= v10)
          {
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
            goto LABEL_181;
          }

          if (!*a3)
          {
            goto LABEL_188;
          }

          v154 = v60;
          v10 = *&v60[16 * v153 + 32];
          v155 = *&v60[16 * v115 + 40];
          v156 = v237;
          sub_1D33840F8(*a3 + *(v231 + 72) * v10, *a3 + *(v231 + 72) * *&v60[16 * v115 + 32], *a3 + *(v231 + 72) * v155, a4);
          v237 = v156;
          if (v156)
          {
          }

          if (v155 < v10)
          {
            goto LABEL_162;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = sub_1D33A9330(v154);
          }

          if (v153 >= *(v154 + 2))
          {
            goto LABEL_163;
          }

          v157 = &v154[16 * v153];
          *(v157 + 4) = v10;
          *(v157 + 5) = v155;
          v256 = v154;
          result = sub_1D33A92A4(v115);
          v60 = v256;
          v10 = *(v256 + 16);
          if (v10 <= 1)
          {
            goto LABEL_3;
          }
        }

        v120 = &v60[16 * v10 + 32];
        v121 = *(v120 - 64);
        v122 = *(v120 - 56);
        v126 = __OFSUB__(v122, v121);
        v123 = v122 - v121;
        if (v126)
        {
          goto LABEL_164;
        }

        v125 = *(v120 - 48);
        v124 = *(v120 - 40);
        v126 = __OFSUB__(v124, v125);
        v118 = v124 - v125;
        v119 = v126;
        if (v126)
        {
          goto LABEL_165;
        }

        v127 = &v60[16 * v10];
        v129 = *v127;
        v128 = *(v127 + 1);
        v126 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v126)
        {
          goto LABEL_167;
        }

        v126 = __OFADD__(v118, v130);
        v131 = v118 + v130;
        if (v126)
        {
          goto LABEL_170;
        }

        if (v131 >= v123)
        {
          v149 = &v60[16 * v115 + 32];
          v151 = *v149;
          v150 = *(v149 + 1);
          v126 = __OFSUB__(v150, v151);
          v152 = v150 - v151;
          if (v126)
          {
            goto LABEL_174;
          }

          if (v118 < v152)
          {
            v115 = v10 - 2;
          }

          goto LABEL_102;
        }

        goto LABEL_81;
      }

LABEL_3:
      v57 = a3[1];
      v59 = v228;
      a4 = v215;
      if (v228 >= v57)
      {
        goto LABEL_149;
      }
    }

LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_149:
  a4 = *v216;
  if (*v216)
  {
    v10 = v60;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v10;
    }

    else
    {
LABEL_182:
      result = sub_1D33A9330(v10);
    }

    v256 = result;
    v10 = *(result + 16);
    if (v10 < 2)
    {
    }

    while (*a3)
    {
      v206 = *(result + 16 * v10);
      v207 = result;
      v208 = *(result + 16 * (v10 - 1) + 40);
      v209 = v237;
      sub_1D33840F8(*a3 + *(v231 + 72) * v206, *a3 + *(v231 + 72) * *(result + 16 * (v10 - 1) + 32), *a3 + *(v231 + 72) * v208, a4);
      v237 = v209;
      if (v209)
      {
      }

      if (v208 < v206)
      {
        goto LABEL_175;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v207 = sub_1D33A9330(v207);
      }

      if (v10 - 2 >= *(v207 + 2))
      {
        goto LABEL_176;
      }

      v210 = &v207[16 * v10];
      *v210 = v206;
      *(v210 + 1) = v208;
      v256 = v207;
      sub_1D33A92A4(v10 - 1);
      result = v256;
      v10 = *(v256 + 16);
      if (v10 <= 1)
      {
      }
    }

LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

LABEL_194:
  __break(1u);
  return result;
}

uint64_t sub_1D33840F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v141 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v137 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v148 = &v137 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v137 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v146 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v137 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v145 = &v137 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v154 = &v137 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v152 = &v137 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v149 = &v137 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v151 = &v137 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v159 = &v137 - v36;
  v160 = type metadata accessor for RecentsItem(0);
  v37 = *(*(v160 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v160);
  v153 = &v137 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v142 = &v137 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v155 = &v137 - v43;
  result = MEMORY[0x1EEE9AC00](v42);
  v150 = &v137 - v45;
  v47 = *(v46 + 72);
  if (!v47)
  {
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (a2 - a1 == 0x8000000000000000 && v47 == -1)
  {
    goto LABEL_110;
  }

  v48 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v47 != -1)
  {
    v49 = (a2 - a1) / v47;
    v163 = a1;
    v162 = a4;
    if (v49 < v48 / v47)
    {
      v50 = v49 * v47;
      if (a4 < a1 || a1 + v50 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        v51 = v150;
      }

      else
      {
        v51 = v150;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v147 = a4 + v50;
      v161 = a4 + v50;
      if (v50 >= 1 && a2 < a3)
      {
        v146 = v18;
        v143 = v47;
        v144 = a3;
        while (1)
        {
          v157 = a2;
          v158 = a1;
          sub_1D332A828(a2, v51);
          v156 = a4;
          v54 = v155;
          sub_1D332A828(a4, v155);
          sub_1D331E818(v51 + *(v160 + 32), v18, &unk_1EC761DE0, &unk_1D33E50F0);
          v55 = type metadata accessor for CallInfo(0);
          v56 = *(v55 - 8);
          v57 = *(v56 + 48);
          v153 = v56 + 48;
          v154 = v57;
          if ((v57)(v18, 1, v55) != 1)
          {
            v69 = *(v55 + 24);
            v58 = sub_1D33DDD34();
            v70 = *(v58 - 8);
            v71 = v151;
            (*(v70 + 16))(v151, &v18[v69], v58);
            sub_1D33379F4(v18, type metadata accessor for CallInfo);
            v72 = *(v70 + 56);
            v72(v71, 0, 1, v58);
            v68 = v159;
            (*(v70 + 32))(v159, v71, v58);
            v54 = v155;
            v72(v68, 0, 1, v58);
            v67 = v148;
            goto LABEL_33;
          }

          sub_1D331E880(v18, &unk_1EC761DE0, &unk_1D33E50F0);
          v58 = sub_1D33DDD34();
          v59 = *(v58 - 8);
          v60 = *(v59 + 56);
          v61 = 1;
          v60(v151, 1, 1, v58);
          v62 = *v51;
          v63 = *(v51 + 32);
          if (v63 <= 8)
          {
            if (((1 << v63) & 0x1B0) != 0)
            {
              goto LABEL_29;
            }

            v64 = *(v150 + 8);
            if (v63 == 3 || v63 == 6)
            {
              goto LABEL_28;
            }
          }

          if (v63 >= 2)
          {
            v64 = *v51;
LABEL_28:
            v65 = v64;
            sub_1D33DE0C4();

            v61 = 0;
          }

LABEL_29:
          v60(v159, v61, 1, v58);
          v66 = v151;
          if ((*(v59 + 48))(v151, 1, v58) != 1)
          {
            sub_1D331E880(v66, &qword_1EC760E10, &unk_1D33E1A90);
          }

          v67 = v148;
          v68 = v159;
LABEL_33:
          sub_1D33DDD34();
          v73 = *(v58 - 8);
          v74 = *(v73 + 48);
          result = v74(v68, 1, v58);
          if (result == 1)
          {
            goto LABEL_112;
          }

          sub_1D331E818(v54 + *(v160 + 32), v67, &unk_1EC761DE0, &unk_1D33E50F0);
          if ((v154)(v67, 1, v55) == 1)
          {
            sub_1D331E880(v67, &unk_1EC761DE0, &unk_1D33E50F0);
            v75 = *(v73 + 56);
            v76 = 1;
            v75(v152, 1, 1, v58);
            v77 = *v54;
            v78 = *(v54 + 32);
            if (v78 > 8)
            {
              goto LABEL_39;
            }

            if (((1 << v78) & 0x1B0) == 0)
            {
              v79 = *(v54 + 8);
              if (v78 != 3 && v78 != 6)
              {
LABEL_39:
                v80 = v158;
                if (v78 >= 2)
                {
                  v79 = v77;
                  goto LABEL_41;
                }

LABEL_43:
                v82 = v149;
                v75(v149, v76, 1, v58);
                v83 = v82;
                if (v74(v152, 1, v58) != 1)
                {
                  sub_1D331E880(v152, &qword_1EC760E10, &unk_1D33E1A90);
                }

                goto LABEL_46;
              }

LABEL_41:
              v81 = v79;
              sub_1D33DE0C4();

              v76 = 0;
            }

            v80 = v158;
            goto LABEL_43;
          }

          v84 = v152;
          (*(v73 + 16))(v152, v67 + *(v55 + 24), v58);
          sub_1D33379F4(v67, type metadata accessor for CallInfo);
          v85 = *(v73 + 56);
          v85(v84, 0, 1, v58);
          v83 = v149;
          (*(v73 + 32))(v149, v84, v58);
          v85(v83, 0, 1, v58);
          v80 = v158;
LABEL_46:
          result = v74(v83, 1, v58);
          v86 = v159;
          if (result == 1)
          {
            goto LABEL_113;
          }

          v87 = sub_1D33DDCA4();
          v88 = *(v73 + 8);
          v88(v83, v58);
          v88(v86, v58);
          sub_1D33379F4(v155, type metadata accessor for RecentsItem);
          v51 = v150;
          sub_1D33379F4(v150, type metadata accessor for RecentsItem);
          a4 = v156;
          v90 = v143;
          v89 = v144;
          if (v87)
          {
            a2 = &v143[v157];
            v18 = v146;
            if (v80 < v157 || v80 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v80 != v157)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            a2 = v157;
            v18 = v146;
            if (v80 < v156 || v80 >= &v143[v156])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v80 != v156)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v162 = &v90[a4];
            a4 += v90;
          }

          a1 = &v90[v80];
          v163 = a1;
          if (a4 >= v147 || a2 >= v89)
          {
            goto LABEL_108;
          }
        }
      }

      goto LABEL_108;
    }

    v52 = v48 / v47 * v47;
    if (a4 < a2 || a2 + v52 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v91 = a4 + v52;
    if (v52 < 1)
    {
LABEL_106:
      v163 = a2;
      v161 = v91;
LABEL_108:
      sub_1D3385388(&v163, &v162, &v161, type metadata accessor for RecentsItem);
      return 1;
    }

    v92 = -v47;
    v93 = (a4 + v52);
    v156 = a4;
    v143 = v14;
    v94 = v153;
    v95 = v142;
    v140 = v25;
    v155 = v92;
    v158 = a1;
LABEL_65:
    v138 = v91;
    v96 = a2 + v92;
    v157 = a2 + v92;
    v144 = a2;
    while (1)
    {
      if (a2 <= a1)
      {
        v163 = a2;
        v161 = v138;
        goto LABEL_108;
      }

      v147 = a3;
      v139 = v91;
      v148 = v93;
      v159 = &v93[v92];
      sub_1D332A828(&v93[v92], v95);
      sub_1D332A828(v96, v94);
      sub_1D331E818(v95 + *(v160 + 32), v14, &unk_1EC761DE0, &unk_1D33E50F0);
      v98 = type metadata accessor for CallInfo(0);
      v99 = *(v98 - 8);
      v100 = *(v99 + 48);
      v150 = v99 + 48;
      v151 = v100;
      v101 = (v100)(v14, 1, v98);
      v152 = v98;
      if (v101 == 1)
      {
        break;
      }

      v113 = *(v98 + 24);
      v102 = sub_1D33DDD34();
      v114 = *(v102 - 8);
      v115 = v145;
      (*(v114 + 16))(v145, &v14[v113], v102);
      sub_1D33379F4(v14, type metadata accessor for CallInfo);
      v116 = *(v114 + 56);
      v116(v115, 0, 1, v102);
      v112 = v154;
      (*(v114 + 32))(v154, v115, v102);
      v116(v112, 0, 1, v102);
      v111 = v141;
LABEL_82:
      sub_1D33DDD34();
      v117 = *(v102 - 8);
      v149 = *(v117 + 48);
      result = (v149)(v112, 1, v102);
      if (result == 1)
      {
        goto LABEL_114;
      }

      v118 = v153;
      sub_1D331E818(v153 + *(v160 + 32), v111, &unk_1EC761DE0, &unk_1D33E50F0);
      v119 = v152;
      if ((v151)(v111, 1, v152) != 1)
      {
        v128 = v146;
        (*(v117 + 16))(v146, v111 + *(v119 + 24), v102);
        sub_1D33379F4(v111, type metadata accessor for CallInfo);
        v129 = *(v117 + 56);
        v129(v128, 0, 1, v102);
        v124 = v140;
        (*(v117 + 32))(v140, v128, v102);
        v129(v124, 0, 1, v102);
        v127 = v149;
        goto LABEL_94;
      }

      sub_1D331E880(v111, &unk_1EC761DE0, &unk_1D33E50F0);
      v120 = *(v117 + 56);
      v121 = 1;
      v120(v146, 1, 1, v102);
      v122 = *v118;
      v123 = *(v118 + 32);
      v124 = v140;
      if (v123 > 8)
      {
        goto LABEL_88;
      }

      if (((1 << v123) & 0x1B0) != 0)
      {
        goto LABEL_91;
      }

      v125 = *(v153 + 8);
      if (v123 != 3 && v123 != 6)
      {
LABEL_88:
        if (v123 < 2)
        {
          goto LABEL_91;
        }

        v125 = *v118;
      }

      v126 = v125;
      sub_1D33DE0C4();

      v121 = 0;
LABEL_91:
      v120(v124, v121, 1, v102);
      v127 = v149;
      if ((v149)(v146, 1, v102) != 1)
      {
        sub_1D331E880(v146, &qword_1EC760E10, &unk_1D33E1A90);
      }

LABEL_94:
      result = (v127)(v124, 1, v102);
      v130 = v154;
      if (result == 1)
      {
        goto LABEL_115;
      }

      v131 = v124;
      v132 = v147;
      a3 = v147 + v155;
      v133 = sub_1D33DDCA4();
      v134 = *(v117 + 8);
      v134(v131, v102);
      v134(v130, v102);
      v94 = v153;
      sub_1D33379F4(v153, type metadata accessor for RecentsItem);
      v95 = v142;
      sub_1D33379F4(v142, type metadata accessor for RecentsItem);
      v14 = v143;
      if (v133)
      {
        v136 = v156;
        if (v132 < v144 || a3 >= v144)
        {
          a2 = v157;
          swift_arrayInitWithTakeFrontToBack();
          v91 = v139;
          v136 = v156;
        }

        else
        {
          a2 = v157;
          v91 = v139;
          if (v132 != v144)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v93 = v148;
        v92 = v155;
        a1 = v158;
        if (v148 <= v136)
        {
          goto LABEL_106;
        }

        goto LABEL_65;
      }

      v91 = v159;
      v135 = v156;
      if (v132 < v148 || a3 >= v148)
      {
        swift_arrayInitWithTakeFrontToBack();
        v96 = v157;
      }

      else
      {
        v96 = v157;
        if (v132 != v148)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v93 = v91;
      a1 = v158;
      v97 = v159 > v135;
      v92 = v155;
      a2 = v144;
      if (!v97)
      {
        goto LABEL_106;
      }
    }

    sub_1D331E880(v14, &unk_1EC761DE0, &unk_1D33E50F0);
    v102 = sub_1D33DDD34();
    v103 = *(v102 - 8);
    v104 = *(v103 + 56);
    v105 = 1;
    v104(v145, 1, 1, v102);
    v106 = *v95;
    v107 = *(v95 + 32);
    if (v107 <= 8)
    {
      if (((1 << v107) & 0x1B0) != 0)
      {
        goto LABEL_78;
      }

      v108 = *(v142 + 8);
      if (v107 == 3 || v107 == 6)
      {
        goto LABEL_77;
      }
    }

    if (v107 >= 2)
    {
      v108 = *v95;
LABEL_77:
      v109 = v108;
      sub_1D33DE0C4();

      v105 = 0;
    }

LABEL_78:
    v104(v154, v105, 1, v102);
    v110 = v145;
    if ((*(v103 + 48))(v145, 1, v102) != 1)
    {
      sub_1D331E880(v110, &qword_1EC760E10, &unk_1D33E1A90);
    }

    v111 = v141;
    v112 = v154;
    goto LABEL_82;
  }

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
  return result;
}

uint64_t sub_1D3385388(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1D338547C()
{
  result = qword_1EDEBF310;
  if (!qword_1EDEBF310)
  {
    type metadata accessor for VideoMessageInboxController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBF310);
  }

  return result;
}

void sub_1D33854D4(uint64_t a1, char a2, uint64_t *a3, void *a4)
{
  v53 = a4;
  v61 = a3;
  v7 = type metadata accessor for RecentsItem(0);
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v49 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v52 = *(v17 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DC8, &qword_1D33E1B50);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v59 = v49 - v25;
  v57 = *(a1 + 16);
  if (!v57)
  {
LABEL_16:

    return;
  }

  v50 = v20;
  v51 = v11;
  v49[1] = v17;
  v60 = v4;
  v26 = 0;
  v27 = *(v23 + 48);
  v55 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v56 = v27;
  v54 = v24;
  while (1)
  {
    if (v26 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:

      sub_1D33DF1E4();
      __break(1u);
      goto LABEL_24;
    }

    v28 = v59;
    sub_1D331E818(v55 + *(v24 + 72) * v26, v59, &qword_1EC760DC8, &qword_1D33E1B50);
    sub_1D333842C(v28, v20, &qword_1EC7612B0, qword_1D33E2830);
    v29 = v16;
    sub_1D33302BC(v28 + v56, v16);
    v30 = *v61;
    v32 = sub_1D33B9390(v20);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_21;
    }

    v36 = v31;
    if (*(v30 + 24) >= v35)
    {
      if ((a2 & 1) == 0)
      {
        sub_1D3399A84();
      }
    }

    else
    {
      v37 = v61;
      sub_1D33970D8(v35, a2 & 1);
      v38 = *v37;
      v39 = sub_1D33B9390(v20);
      if ((v36 & 1) != (v40 & 1))
      {
        goto LABEL_23;
      }

      v32 = v39;
    }

    v41 = *v61;
    if (v36)
    {
      break;
    }

    v41[(v32 >> 6) + 8] |= 1 << v32;
    sub_1D333842C(v20, v41[6] + *(v52 + 72) * v32, &qword_1EC7612B0, qword_1D33E2830);
    v16 = v29;
    sub_1D33302BC(v29, v41[7] + *(v58 + 72) * v32);
    v45 = v41[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_22;
    }

    v41[2] = v47;
LABEL_3:
    ++v26;
    a2 = 1;
    v24 = v54;
    if (v57 == v26)
    {
      goto LABEL_16;
    }
  }

  v42 = *(v58 + 72) * v32;
  v43 = v51;
  sub_1D332A828(v41[7] + v42, v51);
  v16 = v29;
  v44 = v60;
  sub_1D337F64C(v43, v29, v14);
  v60 = v44;
  if (!v44)
  {
    sub_1D33379F4(v43, type metadata accessor for RecentsItem);
    sub_1D33379F4(v29, type metadata accessor for RecentsItem);
    v20 = v50;
    sub_1D331E880(v50, &qword_1EC7612B0, qword_1D33E2830);
    sub_1D334C7C4(v14, v41[7] + v42);
    goto LABEL_3;
  }

  sub_1D33379F4(v43, type metadata accessor for RecentsItem);
  v64 = v60;
  v48 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D33379F4(v29, type metadata accessor for RecentsItem);
    sub_1D331E880(v50, &qword_1EC7612B0, qword_1D33E2830);

    return;
  }

LABEL_24:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1D33DEF24();
  MEMORY[0x1D38B6ED0](0xD00000000000001BLL, 0x80000001D33E6C30);
  sub_1D33DF004();
  MEMORY[0x1D38B6ED0](39, 0xE100000000000000);

  sub_1D33DF0D4();
  __break(1u);
}

uint64_t sub_1D3385ABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334CF9C;

  return sub_1D337FB9C(a1, v4, v5, v6);
}

uint64_t (*sub_1D3385B70())()
{
  v1 = *(v0 + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D3385AB4;
}

id ParticipantContactDetails.contact.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ParticipantContactDetails.displayName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ParticipantContactDetails.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ParticipantContactDetails.shortName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ParticipantContactDetails.shortName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ParticipantContactDetails.initials.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ParticipantContactDetails.initials.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

BOOL ParticipantContactDetails.usesMonogram.getter()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = v0[5];
  v2 = v0[6];
  return (sub_1D33DE834() - 1) < 2;
}

uint64_t static ParticipantContactDetails.defaultMeContactDetails.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D33DDB74();
  v6 = v5;

  *a1 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v4;
  a1[6] = v6;
  return swift_bridgeObjectRetain_n();
}

void sub_1D3385F00(char *a1@<X0>, void *a2@<X8>)
{
  v123 = a2;
  v136 = *MEMORY[0x1E69E9840];
  v4 = sub_1D33DDBC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v121 = (&v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Participant();
  v125 = *(v8 - 1);
  v9 = v125[8];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v113 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v113 - v16;
  v126 = a1;
  v17 = sub_1D33875E8(a1);
  v18 = v17;
  v124 = v17;
  v122 = v2;
  if (v17)
  {
    v19 = v17;
    os_unfair_lock_lock(v2 + 8);
    v20 = *&v2[10]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 8);
    v21 = [v20 objectForKey_];

    if (v21)
    {
      v119 = v5;
      v120 = v4;
      v22 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details];
      v23 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 8];
      v24 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 16];
      v116 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 24];
      v25 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 32];
      v115 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 40];
      v26 = *&v21[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 48];
      v117 = v22;
      v114 = v22;

      v27 = sub_1D33DE784();
      v28 = [v27 destinationIdIsTemporary];

      if (!v28 || !*&v126[v8[6] + 8])
      {

        v80 = v123;
        *v123 = v117;
        v80[1] = v23;
        v81 = v116;
        v80[2] = v24;
        v80[3] = v81;
        v82 = v115;
        v80[4] = v25;
        v80[5] = v82;
        v80[6] = v26;
        goto LABEL_45;
      }

      v19 = v114;
      v18 = v124;
      v2 = v122;
      v5 = v119;
      v4 = v120;
    }
  }

  v29 = *&v126[v8[5]];
  if (v29)
  {
    v119 = v5;
    v120 = v4;
    v117 = v29;
    v30 = [v117 value];
    if (!v30)
    {
      sub_1D33DE7B4();
      v2 = v31;
      v30 = sub_1D33DE784();
    }

    LODWORD(v116) = [v30 destinationIdIsPseudonym];

    v32 = *&v126[v8[7]];
    v33 = v32 + 56;
    v34 = 1 << *(v32 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v32 + 56);
    v37 = ((v34 + 63) >> 6);
    v38 = *&v126[v8[7]];

    v39 = 0;
    while (1)
    {
      if (!v36)
      {
        while (1)
        {
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            __break(1u);
            goto LABEL_55;
          }

          if (v40 >= v37)
          {
            break;
          }

          v36 = *(v33 + 8 * v40);
          ++v39;
          if (v36)
          {
            v39 = v40;
            goto LABEL_20;
          }
        }

        v43 = v124;
        if (v116)
        {
          goto LABEL_24;
        }

        v83 = 0;
        goto LABEL_33;
      }

LABEL_20:
      sub_1D33879C0(*(v32 + 48) + v125[9] * (__clz(__rbit64(v36)) | (v39 << 6)), v15);
      sub_1D3387A24(v15, v12);
      v41 = *&v12[v8[5]];
      if (v41)
      {
        v42 = [v41 value];
        if (!v42)
        {
          sub_1D33DE7B4();
          v42 = sub_1D33DE784();
        }

        v2 = [v42 destinationIdIsPseudonym];

        if ((v2 & 1) == 0)
        {
          break;
        }
      }

      v36 &= v36 - 1;
      sub_1D3387A88(v12);
    }

    v111 = v118;
    sub_1D3387A24(v12, v118);
    v83 = *(v111 + v8[5]);
    if (v83)
    {
      v112 = v83;
      sub_1D3387A88(v111);
      v43 = v124;
      if (v116)
      {
        sub_1D332786C(v112, 0, 0, &v129);

LABEL_34:
        v68 = 0;
        v69 = 0;
        v67 = v129;
        v33 = v130;
        v8 = v131;
        v12 = v132;
        v36 = v133;
        v64 = v134;
        v66 = v135;
        if (v43)
        {
          goto LABEL_41;
        }

        goto LABEL_43;
      }

LABEL_33:
      v84 = v117;
      sub_1D332786C(v117, *&v126[v8[6]], *&v126[v8[6] + 8], &v129);

      goto LABEL_34;
    }

    sub_1D3387A88(v111);
    v43 = v124;
    if ((v116 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_24:
    v44 = *&v126[v8[8]];
    if (v44)
    {
      v126 = v44;
      sub_1D332786C(v126, 0, 0, &v129);
      v45 = v130;
      v125 = v129;
      v46 = v131;
      v115 = v132;
      v114 = v133;
      v116 = v135;
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v48 = objc_opt_self();
      v49 = [v48 bundleForClass_];
      sub_1D33DDB74();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
      v50 = swift_allocObject();
      v113 = xmmword_1D33E2410;
      *(v50 + 16) = xmmword_1D33E2410;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      v51 = sub_1D3387AE4();
      *(v50 + 64) = v51;
      *(v50 + 32) = v45;
      *(v50 + 40) = v46;
      v118 = v46;

      v52 = v114;
      v33 = sub_1D33DE7D4();
      v8 = v53;

      v54 = [v48 bundleForClass_];
      sub_1D33DDB74();

      v55 = swift_allocObject();
      *(v55 + 16) = v113;
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 64) = v51;
      *(v55 + 32) = v115;
      *(v55 + 40) = v52;

      v12 = sub_1D33DE7D4();
      v36 = v56;

      v37 = MEMORY[0x1D38B7A70](v57);
      v2 = v121;
      sub_1D33DDBB4();
      sub_1D33DDB84();
      sub_1D33DDB94();
      if (qword_1EDEC0130 != -1)
      {
LABEL_55:
        swift_once();
      }

      v58 = qword_1EDEC1498;
      v59 = sub_1D33DDBA4();
      v60 = [v58 stringFromPersonNameComponents_];

      v61 = sub_1D33DE7B4();
      v63 = v62;

      (*(v119 + 8))(v2, v120);
      objc_autoreleasePoolPop(v37);
      v129 = v61;
      v130 = v63;
      sub_1D3328AF4();
      v64 = sub_1D33DED14();
      v66 = v65;

      v67 = 0;
      v68 = 0;
      v69 = 0;
      if (v124)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v110 = v117;
      sub_1D332786C(v117, *&v126[v8[6]], *&v126[v8[6] + 8], &v129);

      v67 = v129;
      v33 = v130;
      v8 = v131;
      v12 = v132;
      v36 = v133;
      v64 = v134;
      v66 = v135;
      if (v43)
      {
        v68 = 0;
        goto LABEL_42;
      }

      v69 = 0;
    }

    goto LABEL_43;
  }

  v70 = *&v2[4]._os_unfair_lock_opaque;
  v71 = [objc_opt_self() settingsWithContactStore_];
  v72 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];
  v73 = [v72 descriptorForRequiredKeys];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1D33E1DE0;
  *(v74 + 32) = v73;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v75 = sub_1D33DE8A4();

  v129 = 0;
  v67 = [v70 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v76 = v129;
  if (!v67)
  {
    v85 = v129;
    v86 = sub_1D33DDBE4();

    swift_willThrow();
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v87 = sub_1D33DE464();
    __swift_project_value_buffer(v87, qword_1EDEC1480);
    v88 = v86;
    v89 = sub_1D33DE444();
    v90 = sub_1D33DEAD4();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v129 = v92;
      *v91 = 136315138;
      v127 = v86;
      v93 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
      v94 = sub_1D33DE804();
      v96 = sub_1D3328B48(v94, v95, &v129);

      *(v91 + 4) = v96;
      _os_log_impl(&dword_1D331A000, v89, v90, "Could not fetch me card %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x1D38B81C0](v92, -1, -1);
      v97 = v91;
      v18 = v124;
      MEMORY[0x1D38B81C0](v97, -1, -1);
    }

    type metadata accessor for BundleClass();
    v98 = swift_getObjCClassFromMetadata();
    v99 = [objc_opt_self() bundleForClass_];
    v64 = sub_1D33DDB74();
    v66 = v100;

    v67 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    swift_unknownObjectRelease();
    swift_bridgeObjectRetain_n();
    v68 = 0;
    v69 = 0;
    v36 = v66;
    v12 = v64;
    v8 = v66;
    v33 = v64;
    if (!v18)
    {
      goto LABEL_43;
    }

LABEL_41:
    v101 = v122;
    os_unfair_lock_lock(v122 + 8);
    v102 = *&v101[10]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v101 + 8);
    v103 = type metadata accessor for ParticipantContactDetailsCache.BoxedDetails();
    v104 = objc_allocWithZone(v103);
    v105 = &v104[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details];
    *v105 = v67;
    *(v105 + 1) = v33;
    *(v105 + 2) = v8;
    *(v105 + 3) = v12;
    *(v105 + 4) = v36;
    *(v105 + 5) = v64;
    *(v105 + 6) = v66;
    v128.receiver = v104;
    v128.super_class = v103;
    v106 = v67;

    v107 = objc_msgSendSuper2(&v128, sel_init);
    [v102 setObject:v107 forKey:v124];

    v43 = v124;
LABEL_42:

    v69 = v68;
    goto LABEL_43;
  }

  v77 = v67;
  v78 = MEMORY[0x1D38B7A70](v76);
  sub_1D3328D7C(v67, &v129);
  objc_autoreleasePoolPop(v78);

  sub_1D3328AF4();
  v64 = sub_1D33DED14();
  v66 = v79;

  v126 = v77;

  swift_unknownObjectRelease();
  swift_bridgeObjectRetain_n();
  v68 = 1;
  v36 = v66;
  v12 = v64;
  v8 = v66;
  v33 = v64;
  v69 = 1;
  if (v18)
  {
    goto LABEL_41;
  }

LABEL_43:
  v108 = v123;
  *v123 = v67;
  v108[1] = v33;
  v108[2] = v8;
  v108[3] = v12;
  v108[4] = v36;
  v108[5] = v64;
  v108[6] = v66;
  if (v69)
  {
  }

LABEL_45:
  v109 = *MEMORY[0x1E69E9840];
}