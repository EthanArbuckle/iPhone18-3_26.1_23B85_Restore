uint64_t sub_1CFB75B5C(uint64_t a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1CFB8FA90();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v4[4] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_1CFB75C50;

  return MPContactSearchManager.search(for:shouldRefreshResult:)(a1, v9, a2 & 1);
}

uint64_t sub_1CFB75C50()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v0)
  {
    if (v6)
    {
      v9 = *(v3 + 24);
      v10 = sub_1CFB8F630();

      v9[2](v9, 0, v10);
      v11 = v9;
LABEL_6:
      _Block_release(v11);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v12 = *(v3 + 24);
      sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
      v10 = sub_1CFB8FB20();

      v12[2](v12, v10, 0);
      v11 = v12;
      goto LABEL_6;
    }
  }

LABEL_9:
  v13 = *(v8 + 8);

  return v13();
}

void sub_1CFB75E58()
{
  if (qword_1EE04BDB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v1, qword_1EE04C210);
  v2 = v0;
  oslog = sub_1CFB8F7A0();
  v3 = sub_1CFB8FCB0();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = MPContactSearchManager.searchString.getter();
    v8 = sub_1CFB8C3D8(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1CFB5B000, oslog, v3, "Search cancelled for %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1D386E190](v5, -1, -1);
    MEMORY[0x1D386E190](v4, -1, -1);
  }
}

uint64_t sub_1CFB76000(void *a1)
{
  v2 = [a1 matchedProperties];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1CFB8FA40();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 contactSearchType];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (!v4)
      {
        return v4 & 1;
      }

      v25 = 1 << *(v4 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & *(v4 + 64);
      v28 = (v25 + 63) >> 6;

      v29 = 0;
      v30 = MEMORY[0x1E69E7CC0];
      while (v27)
      {
LABEL_38:
        v32 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        sub_1CFB76B00(*(v4 + 48) + 40 * (v32 | (v29 << 6)), &v56);
        v51 = v56;
        v52 = v57;
        v53 = v58;
        if (swift_dynamicCast())
        {
          v33 = v55;
          if (v55)
          {
            v50 = v54;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_1CFB65A0C(0, *(v30 + 2) + 1, 1, v30);
            }

            v35 = *(v30 + 2);
            v34 = *(v30 + 3);
            v36 = v35 + 1;
            if (v35 >= v34 >> 1)
            {
              v49 = v35 + 1;
              v38 = v30;
              v39 = v35;
              v40 = sub_1CFB65A0C((v34 > 1), v35 + 1, 1, v38);
              v35 = v39;
              v36 = v49;
              v30 = v40;
            }

            *(v30 + 2) = v36;
            v37 = &v30[16 * v35];
            *(v37 + 4) = v50;
            *(v37 + 5) = v33;
          }
        }
      }

      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v28)
        {

          v44 = *MEMORY[0x1E695C330];
          *&v56 = sub_1CFB8FA90();
          *(&v56 + 1) = v45;
          MEMORY[0x1EEE9AC00](v56);
          v48 = &v56;
          LOBYTE(v4) = sub_1CFB76B5C(sub_1CFB76C08, v47, v30);

          return v4 & 1;
        }

        v27 = *(v4 + 64 + 8 * v31);
        ++v29;
        if (v27)
        {
          v29 = v31;
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_25;
      }

      if (!v4)
      {
        return v4 & 1;
      }

      v6 = 1 << *(v4 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v4 + 64);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (v8)
      {
LABEL_18:
        v13 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        sub_1CFB76B00(*(v4 + 48) + 40 * (v13 | (v10 << 6)), &v56);
        v51 = v56;
        v52 = v57;
        v53 = v58;
        if (swift_dynamicCast())
        {
          v14 = v55;
          if (v55)
          {
            v50 = v54;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_1CFB65A0C(0, *(v11 + 2) + 1, 1, v11);
            }

            v16 = *(v11 + 2);
            v15 = *(v11 + 3);
            v17 = v16 + 1;
            if (v16 >= v15 >> 1)
            {
              v49 = v16 + 1;
              v19 = v11;
              v20 = v16;
              v21 = sub_1CFB65A0C((v15 > 1), v16 + 1, 1, v19);
              v16 = v20;
              v17 = v49;
              v11 = v21;
            }

            *(v11 + 2) = v17;
            v18 = &v11[16 * v16];
            *(v18 + 4) = v50;
            *(v18 + 5) = v14;
          }
        }
      }

      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          v41 = *MEMORY[0x1E695C330];
          *&v56 = sub_1CFB8FA90();
          *(&v56 + 1) = v42;
          MEMORY[0x1EEE9AC00](v56);
          v48 = &v56;
          v43 = sub_1CFB76B5C(sub_1CFB77480, v47, v11);

          LOBYTE(v4) = v43 ^ 1;
          return v4 & 1;
        }

        v8 = *(v4 + 64 + 8 * v12);
        ++v10;
        if (v8)
        {
          v10 = v12;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_50;
  }

  if (v5 <= 1)
  {

    LOBYTE(v4) = 1;
    return v4 & 1;
  }

LABEL_25:

  if (qword_1EE04BDB0 != -1)
  {
LABEL_50:
    swift_once();
  }

  v22 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v22, qword_1EE04C210);
  v4 = sub_1CFB8F7A0();
  v23 = sub_1CFB8FCA0();
  if (os_log_type_enabled(v4, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1CFB5B000, v4, v23, "Unknown contact search type", v24, 2u);
    MEMORY[0x1D386E190](v24, -1, -1);
  }

  LOBYTE(v4) = 0;
  return v4 & 1;
}

id MPContactSearchManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1CFB76708()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v1 = [v0 contactStore];
  v2 = sub_1CFB8FA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CFB920F0;
  *(v3 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC7B0, &unk_1CFB921D0);
  v4 = sub_1CFB8FB20();

  v15[0] = 0;
  v5 = [v1 unifiedContactWithIdentifier:v2 keysToFetch:v4 error:v15];

  v6 = v15[0];
  if (!v5)
  {
    v7 = v6;
    v8 = sub_1CFB8F640();

    swift_willThrow();
    if (qword_1EE04BDB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v9, qword_1EE04C210);
    v10 = sub_1CFB8F7A0();
    v11 = sub_1CFB8FC90();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1CFB5B000, v10, v11, "Error fetching contact for ContactViewController", v12, 2u);
      MEMORY[0x1D386E190](v12, -1, -1);
    }

    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1CFB76974()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = sub_1CFB8FA80();
  [v2 set:v4 searchString:?];
}

unint64_t sub_1CFB769E8()
{
  result = qword_1EC4EC7B8;
  if (!qword_1EC4EC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EC7B8);
  }

  return result;
}

uint64_t objectdestroy_61Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1CFB76AAC()
{
  result = qword_1EC4EC808;
  if (!qword_1EC4EC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EC808);
  }

  return result;
}

uint64_t sub_1CFB76B5C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1CFB76C24(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CFB90010() & 1;
  }
}

uint64_t sub_1CFB76C7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CFB77444;

  return sub_1CFB75B5C(v2, v3, v5, v4);
}

uint64_t sub_1CFB76D40()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CFB77444;

  return sub_1CFB8BF1C(v2, v3, v5);
}

uint64_t objectdestroy_103Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFB76E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFB66AE0;

  return sub_1CFB8C004(a1, v4, v5, v7);
}

id sub_1CFB76F14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v24 = sub_1CFB8FD70();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFB8FD20();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1CFB8F9E0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = OBJC_IVAR___MPContactSearchManager_featureFlags;
  v23 = OBJC_IVAR___MPContactSearchManager_featureFlags;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v22 = OBJC_IVAR___MPContactSearchManager_accessQueue;
  sub_1CFB5D38C(0, &unk_1EE04BD10, 0x1E69E9610);
  sub_1CFB8F9C0();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1CFB77258();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5D8, &qword_1CFB922D0);
  sub_1CFB772B0();
  sub_1CFB8FE50();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8090], v24);
  *&v4[v22] = sub_1CFB8FDC0();
  v15 = &v4[OBJC_IVAR___MPContactSearchManager__searchString];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR___MPContactSearchManager__contactSearchResults] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___MPContactSearchManager_contactSearchType] = v25;
  v16 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  if ([*&v5[v23] junkFilteringEnabled])
  {
    [v16 setIncludeAcceptedIntroductions_];
  }

  if (v26)
  {
    v17 = v26;
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  }

  v18 = v17;

  *&v5[OBJC_IVAR___MPContactSearchManager_contactStore] = v18;
  v19 = &v5[OBJC_IVAR___MPContactSearchManager_ranker];
  v20 = v28;
  *v19 = v27;
  *(v19 + 1) = v20;
  v29.receiver = v5;
  v29.super_class = MPContactSearchManager;
  return objc_msgSendSuper2(&v29, sel_init);
}

unint64_t sub_1CFB77258()
{
  result = qword_1EE04BD30;
  if (!qword_1EE04BD30)
  {
    sub_1CFB8FD20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04BD30);
  }

  return result;
}

unint64_t sub_1CFB772B0()
{
  result = qword_1EE04BD60;
  if (!qword_1EE04BD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EC5D8, &qword_1CFB922D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04BD60);
  }

  return result;
}

uint64_t sub_1CFB7731C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFB920E0;
  v1 = *MEMORY[0x1E695C1F8];
  v2 = *MEMORY[0x1E695C2C8];
  *(v0 + 32) = *MEMORY[0x1E695C1F8];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C320];
  v4 = *MEMORY[0x1E695C360];
  *(v0 + 48) = *MEMORY[0x1E695C320];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C418];
  v6 = *MEMORY[0x1E695C3A8];
  *(v0 + 64) = *MEMORY[0x1E695C418];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C3D0];
  v8 = *MEMORY[0x1E695C2B0];
  *(v0 + 80) = *MEMORY[0x1E695C3D0];
  *(v0 + 88) = v8;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return v0;
}

uint64_t sub_1CFB7749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1CFB8FF50();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1CFB7759C, 0, 0);
}

uint64_t sub_1CFB7759C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1CFB8FF70();
  v7 = sub_1CFB7AF48(&qword_1EE04BCD8, MEMORY[0x1E69E8820]);
  sub_1CFB90060();
  sub_1CFB7AF48(&qword_1EE04BCE0, MEMORY[0x1E69E87E8]);
  sub_1CFB8FF80();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1CFB7772C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1CFB7772C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CFB778E8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1CFB778E8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_1CFB77954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CFB8F770();
  v7 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v8 = *(a4 + v7);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v14 = *(a4 + v7);
    }

    if (v6 < sub_1CFB8FFB0())
    {
      goto LABEL_3;
    }

LABEL_11:
    v15 = sub_1CFB8F7A0();
    v16 = sub_1CFB8FC90();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1CFB5B000, v15, v16, "SearchTableDataSource: Asked to provide cell for section we don't have!", v17, 2u);
      MEMORY[0x1D386E190](v17, -1, -1);
    }

    return 0;
  }

  if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  result = sub_1CFB8F770();
  v10 = *(a4 + v7);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v18 = result;

    v11 = MEMORY[0x1D386D910](v18, v10);

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 8 * result + 32);
    swift_unknownObjectRetain();
LABEL_7:
    v12 = sub_1CFB8F740();
    v13 = [v11 tableView:a1 cellForRowAt:v12];
    swift_unknownObjectRelease();

    return v13;
  }

  __break(1u);
  return result;
}

void sub_1CFB77B0C(uint64_t a1)
{
  v2 = sub_1CFB8F7A0();
  v3 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1CFB5B000, v2, v3, "SearchTableDataSource: Cancelling old search task", v4, 2u);
    MEMORY[0x1D386E190](v4, -1, -1);
  }

  if (a1)
  {

    sub_1CFB8FC00();
  }
}

uint64_t sub_1CFB77BF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1CFB8FFB0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D386D910](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_12;
        }
      }

      [v4 setDelegate_];
      [v4 setSectionIndex_];
      swift_unknownObjectRelease();
      ++v3;
    }

    while (v5 != v2);
  }
}

void sub_1CFB77D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - v10;
  v12 = &v3[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_text];
  v13 = *&v3[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_text + 8];
  if (a2)
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = *v12 == a1 && v13 == a2;
    if (!v14 && (sub_1CFB90010() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v13)
  {
LABEL_16:
    v22 = *(v12 + 1);
    *v12 = a1;
    *(v12 + 1) = a2;

    v23 = *&v4[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTokens];
    *&v4[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTokens] = a3;

    v24 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchCompleteControllerSet;
    swift_beginAccess();
    v25 = *&v4[v24];
    *&v4[v24] = MEMORY[0x1E69E7CD0];

    v26 = sub_1CFB8F7A0();
    v27 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1CFB5B000, v26, v27, "SearchTableDataSource: Setting new search task", v28, 2u);
      MEMORY[0x1D386E190](v28, -1, -1);
    }

    v29 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v30 = *&v4[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_lastSearchStartTime];
    *&v4[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_lastSearchStartTime] = v29;

    sub_1CFB8FBD0();
    v31 = sub_1CFB8FBF0();
    (*(*(v31 - 8) + 56))(v11, 0, 1, v31);
    sub_1CFB8FBC0();

    v32 = v4;
    v33 = sub_1CFB8FBB0();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v32;
    v34[5] = a1;
    v34[6] = a2;
    v34[7] = a3;
    v36 = sub_1CFB80934(0, 0, v11, &unk_1CFB923A8, v34);
    v37 = *&v32[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTask];
    *&v32[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTask] = v36;

    sub_1CFB77B0C(v37);

    return;
  }

  v15 = *&v3[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTokens];
  v16 = *&v4[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTokens];

  v18 = sub_1CFB843A0(v17, a3);

  if ((v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  v38 = sub_1CFB8F7A0();
  v19 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v38, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1CFB5B000, v38, v19, "SearchTableDataSource: Aborting new search as text and tokens unchanged", v20, 2u);
    MEMORY[0x1D386E190](v20, -1, -1);
  }

  v21 = v38;
}

uint64_t sub_1CFB780CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = sub_1CFB8FBC0();
  v7[8] = sub_1CFB8FBB0();
  v9 = sub_1CFB8FB80();
  v7[9] = v9;
  v7[10] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CFB78170, v9, v8);
}

uint64_t sub_1CFB78170()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v14 = *(v0 + 24);
  v4 = sub_1CFB8FBB0();
  *(v0 + 88) = v4;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *(v5 + 16) = v14;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = *(MEMORY[0x1E69E87D8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1CFB78290;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7CA8] + 8;
  v10 = MEMORY[0x1E69E85E0];
  v11 = MEMORY[0x1E69E7CA8] + 8;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v8, v9, v11, v4, v10, &unk_1CFB923B8, v5, v12);
}

uint64_t sub_1CFB78290()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v8 = *v0;

  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1CFB783F0, v6, v5);
}

uint64_t sub_1CFB783F0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFB78450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  sub_1CFB8FBC0();
  v6[16] = sub_1CFB8FBB0();
  v9 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB78534, v9, v8);
}

uint64_t sub_1CFB78534()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);

  v4 = *(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v30 = *(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
    }

    v31 = *(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
    result = sub_1CFB8FFB0();
    v4 = v31;
    v5 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v33 = *(v0 + 96);
  v34 = **(v0 + 72);
  v32 = v4 & 0xC000000000000001;
  v6 = v4;

  v7 = v6;
  v8 = 0;
  v35 = v5;
  v36 = v6;
  do
  {
    v38 = v8;
    if (v32)
    {
      v11 = MEMORY[0x1D386D910](v8, v7);
    }

    else
    {
      v11 = *(v7 + 8 * v8 + 32);
      swift_unknownObjectRetain();
    }

    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 104);
    v37 = *(v0 + 96);
    v15 = *(v0 + 88);
    v16 = sub_1CFB8FBF0();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v12, 1, 1, v16);
    v18 = swift_allocObject();
    *(v18 + 16) = 0u;
    v19 = (v18 + 16);
    *(v18 + 32) = v11;
    *(v18 + 40) = v15;
    *(v18 + 48) = v37;
    *(v18 + 56) = v14;
    sub_1CFB7AE70(v12, v13);
    LODWORD(v12) = (*(v17 + 48))(v13, 1, v16);
    swift_unknownObjectRetain();

    v20 = *(v0 + 112);
    if (v12 == 1)
    {
      sub_1CFB7AEE0(*(v0 + 112));
    }

    else
    {
      sub_1CFB8FBE0();
      (*(v17 + 8))(v20, v16);
    }

    if (*v19)
    {
      v21 = *(v18 + 24);
      v22 = *v19;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = sub_1CFB8FB80();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v26 = swift_allocObject();
    *(v26 + 16) = &unk_1CFB923D0;
    *(v26 + 24) = v18;

    if (v25 | v23)
    {
      v9 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v23;
      *(v0 + 40) = v25;
    }

    else
    {
      v9 = 0;
    }

    v8 = v38 + 1;
    v10 = *(v0 + 120);
    *(v0 + 48) = 1;
    *(v0 + 56) = v9;
    *(v0 + 64) = v34;
    swift_task_create();

    swift_unknownObjectRelease();

    sub_1CFB7AEE0(v10);
    v7 = v36;
  }

  while (v35 != v38 + 1);

LABEL_19:
  v28 = *(v0 + 112);
  v27 = *(v0 + 120);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1CFB788BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1CFB788E0, 0, 0);
}

uint64_t sub_1CFB788E0()
{
  sub_1CFB8FBC0();
  *(v0 + 176) = sub_1CFB8FBB0();
  v2 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB78974, v2, v1);
}

uint64_t sub_1CFB78974()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  [v2 cancelPreviousSearchRequests];

  return MEMORY[0x1EEE6DFA0](sub_1CFB789F0, 0, 0);
}

uint64_t sub_1CFB789F0()
{
  if (v0[20])
  {
    v1 = v0[19];
    v2 = sub_1CFB8FA80();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v3 = v0[21];
  v4 = v0[18];
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v5 = sub_1CFB8FB20();
  v0[24] = v5;
  v0[2] = v0;
  v0[3] = sub_1CFB78B60;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC8B0, &qword_1CFB923E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CFB78CA4;
  v0[13] = &block_descriptor_4;
  v0[14] = v6;
  [v4 searchWith:v2 searchTokens:v5 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CFB78B60()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1CFB78C40, 0, 0);
}

uint64_t sub_1CFB78C40()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFB78CA4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1CFB78CD8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC890, &unk_1CFB92370);
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - v9;
  v11 = [a1 sectionTitle];
  v12 = sub_1CFB8FA90();
  v14 = v13;

  v15 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_logger;

  v56 = v15;
  v16 = sub_1CFB8F7A0();
  v17 = sub_1CFB8FCB0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v57 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1CFB8C3D8(v12, v14, &v57);
    _os_log_impl(&dword_1CFB5B000, v16, v17, "SearchTableDataSource: Search completed for controller of section: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1D386E190](v19, -1, -1);
    MEMORY[0x1D386E190](v18, -1, -1);
  }

  v20 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchCompleteControllerSet;
  swift_beginAccess();
  sub_1CFB7DEC0(&v58, v12, v14);
  swift_endAccess();

  v21 = [objc_opt_self() shared];
  v22 = [a1 sectionType];
  v23 = *(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_lastSearchStartTime);
  if (*(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_text + 8))
  {
    v24 = *(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_text);
    v25 = v23;

    v26 = sub_1CFB8FAD0();
  }

  else
  {
    v25 = v23;
    v26 = -1;
  }

  v27 = [a1 results];
  v28 = sub_1CFB8FB30();

  v29 = *(v28 + 16);

  [v21 searchFinishedForController:v22 startTime:v25 searchLength:v26 resultsCount:v29];

  v30 = *(*(v2 + v20) + 16);
  v31 = *(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
  if (v31 >> 62)
  {
    if (v31 < 0)
    {
      v48 = *(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
    }

    if (v30 == sub_1CFB8FFB0())
    {
      goto LABEL_16;
    }
  }

  else if (v30 == *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  v32 = sub_1CFB5F084();
  sub_1CFB8F8E0();

  v33 = v55;
  v34 = sub_1CFB8F890();
  result = (*(v54 + 8))(v10, v33);
  if (v34)
  {
    v36 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableViewReloadTask;
    if (!*(v2 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableViewReloadTask))
    {
      v37 = sub_1CFB8F7A0();
      v38 = sub_1CFB8FCB0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1CFB5B000, v37, v38, "SearchTableDataSource: Not all controllers completed search. Delaying tableView reload", v39, 2u);
        MEMORY[0x1D386E190](v39, -1, -1);
      }

      v40 = sub_1CFB8FBF0();
      v41 = v53;
      (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1CFB8FBC0();

      v43 = sub_1CFB8FBB0();
      v44 = swift_allocObject();
      v45 = MEMORY[0x1E69E85E0];
      v44[2] = v43;
      v44[3] = v45;
      v44[4] = v42;

      v46 = sub_1CFB79748(0, 0, v41, &unk_1CFB92390, v44);
      v47 = *(v2 + v36);
      *(v2 + v36) = v46;
    }

    return result;
  }

LABEL_16:
  v49 = sub_1CFB8F7A0();
  v50 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1CFB5B000, v49, v50, "SearchTableDataSource: All controllers completed search. Reloading tableView", v51, 2u);
    MEMORY[0x1D386E190](v51, -1, -1);
  }

  return sub_1CFB5E3F4();
}

uint64_t sub_1CFB792B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1CFB8FF70();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_1CFB8FBC0();
  v4[9] = sub_1CFB8FBB0();
  v9 = sub_1CFB8FB80();
  v4[10] = v9;
  v4[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CFB793A4, v9, v8);
}

uint64_t sub_1CFB793A4()
{
  v1 = *(v0 + 64);
  sub_1CFB8FF60();
  v2 = sub_1CFB90100();
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1CFB7947C;
  v6 = *(v0 + 64);

  return sub_1CFB7749C(v2, v4, 0, 0, 1);
}

uint64_t sub_1CFB7947C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_1CFB796DC;
  }

  else
  {
    v10 = sub_1CFB79614;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1CFB79614()
{
  v1 = v0[13];
  v2 = v0[9];

  sub_1CFB8FC20();
  if (!v1)
  {
    v3 = v0[5];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      sub_1CFB5E3F4();
    }
  }

  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1CFB796DC()
{
  v1 = v0[9];

  v2 = v0[13];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CFB79748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1CFB7AE70(a3, v24 - v10);
  v12 = sub_1CFB8FBF0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CFB7AEE0(v11);
  }

  else
  {
    sub_1CFB8FBE0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1CFB8FB80();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1CFB8FAB0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1CFB7AEE0(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CFB7AEE0(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_1CFB79A64(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchCompleteControllerSet;
  swift_beginAccess();
  v7 = *(a2 + v6);

  v8 = [v5 sectionTitle];
  v9 = sub_1CFB8FA90();
  v11 = v10;

  LOBYTE(v8) = sub_1CFB79E40(v9, v11, v7);

  if ((v8 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v15 = sub_1CFB8F7A0();
    v16 = sub_1CFB8FCB0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      v27 = [v5 sectionTitle];
      v28 = sub_1CFB8FA90();
      v30 = v29;

      v31 = sub_1CFB8C3D8(v28, v30, &v38);

      *(v25 + 4) = v31;
      v32 = "SearchTableDataSource: %s has not completed";
LABEL_10:
      _os_log_impl(&dword_1CFB5B000, v15, v16, v32, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1D386E190](v26, -1, -1);
      MEMORY[0x1D386E190](v25, -1, -1);
    }

LABEL_11:

    *a3 = 0;
    return;
  }

  v12 = [v5 results];
  v13 = sub_1CFB8FB30();

  v14 = *(v13 + 16);

  swift_unknownObjectRetain();
  v15 = sub_1CFB8F7A0();
  v16 = sub_1CFB8FCB0();
  swift_unknownObjectRelease();
  v17 = os_log_type_enabled(v15, v16);
  if (!v14)
  {
    if (v17)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      v33 = [v5 sectionTitle];
      v34 = sub_1CFB8FA90();
      v36 = v35;

      v37 = sub_1CFB8C3D8(v34, v36, &v38);

      *(v25 + 4) = v37;
      v32 = "SearchTableDataSource: %s has no results";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v20 = [v5 sectionTitle];
    v21 = sub_1CFB8FA90();
    v23 = v22;

    v24 = sub_1CFB8C3D8(v21, v23, &v38);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1CFB5B000, v15, v16, "SearchTableDataSource: adding %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1D386E190](v19, -1, -1);
    MEMORY[0x1D386E190](v18, -1, -1);
  }

  *a3 = v5;
  swift_unknownObjectRetain();
}

uint64_t sub_1CFB79E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1CFB900D0();
  sub_1CFB8FAC0();
  v7 = sub_1CFB900F0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1CFB90010() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1CFB79F68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchTableViewDiffableDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFB7A0C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFB7A1C0;

  return v7(a1);
}

uint64_t sub_1CFB7A1C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1CFB7A2B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v15 = v7;
    v16 = v6;
    while (1)
    {
      v9 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = [v8 sectionIndex];
      v11 = [v9 sectionIndex];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v10 >= v11)
      {
LABEL_4:
        ++v4;
        v6 = v16 + 8;
        v7 = v15 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v12 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v12;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CFB7A3B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1CFB7ADA8(v8);
      v8 = result;
    }

    v87 = *(v8 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = v8;
        v8 = (v87 - 1);
        v89 = *&v88[16 * v87];
        v90 = *&v88[16 * v87 + 24];
        sub_1CFB7AA38((*a3 + 8 * v89), (*a3 + 8 * *&v88[16 * v87 + 16]), (*a3 + 8 * v90), v7);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_1CFB7ADA8(v88);
        }

        if (v87 - 2 >= *(v88 + 2))
        {
          goto LABEL_116;
        }

        v91 = &v88[16 * v87];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_1CFB7AD1C(v87 - 1);
        v8 = v88;
        v87 = *(v88 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v97 = v5;
      v10 = *(*a3 + 8 * v7);
      v93 = 8 * v9;
      v11 = (*a3 + 8 * v9);
      v13 = *v11;
      v12 = v11 + 2;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v102 = [v10 sectionIndex];
      v100 = [v13 sectionIndex];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v95 = v9;
      v14 = v9 + 2;
      while (v6 != v14)
      {
        v16 = *(v12 - 1);
        v15 = *v12;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v17 = v8;
        v18 = [v15 sectionIndex];
        v7 = [v16 sectionIndex];
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v19 = v18 < v7;
        v8 = v17;
        v20 = !v19;
        ++v14;
        ++v12;
        if ((((v102 < v100) ^ v20) & 1) == 0)
        {
          v6 = v14 - 1;
          break;
        }
      }

      v9 = v95;
      v5 = v97;
      v21 = v93;
      if (v102 < v100)
      {
        if (v6 < v95)
        {
          goto LABEL_119;
        }

        if (v95 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v95;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v25 = *(v26 + v21);
              *(v26 + v21) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v21 += 8;
          }

          while (v24 < v23);
        }
      }

      v7 = v6;
    }

    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v28 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CFB65908(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_1CFB65908((v40 > 1), v41 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v42;
    v43 = &v8[16 * v41];
    *(v43 + 4) = v9;
    *(v43 + 5) = v7;
    v44 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_59:
          if (v49)
          {
            goto LABEL_106;
          }

          v62 = &v8[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_109;
          }

          v68 = &v8[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_113;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v72 = &v8[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_73:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = &v8[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_111;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_80:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = *&v8[16 * v83 + 32];
        v85 = *&v8[16 * v45 + 40];
        sub_1CFB7AA38((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v45 + 32]), (*a3 + 8 * v85), v44);
        if (v5)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1CFB7ADA8(v8);
        }

        if (v83 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v86 = &v8[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_1CFB7AD1C(v45);
        v42 = *(v8 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v8[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_104;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_105;
      }

      v57 = &v8[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_107;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_110;
      }

      if (v61 >= v53)
      {
        v79 = &v8[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_114;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v94 = v8;
  v96 = v9;
  v98 = v5;
  v29 = *a3;
  v30 = *a3 + 8 * v7 - 8;
  v31 = v9 - v7;
  v101 = v28;
LABEL_32:
  v103 = v7;
  v32 = *(v29 + 8 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v36 = [v32 sectionIndex];
    v37 = [v35 sectionIndex];
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v36 >= v37)
    {
LABEL_31:
      v7 = v103 + 1;
      v30 += 8;
      --v31;
      if ((v103 + 1) != v101)
      {
        goto LABEL_32;
      }

      v7 = v101;
      v9 = v96;
      v5 = v98;
      v8 = v94;
      goto LABEL_39;
    }

    if (!v29)
    {
      break;
    }

    v38 = *v34;
    v32 = *(v34 + 8);
    *v34 = v32;
    *(v34 + 8) = v38;
    v34 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_31;
    }
  }

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
  return result;
}

uint64_t sub_1CFB7AA38(char *__dst, void **a2, void **a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v22 = a2;
      v23 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v23;
      a2 = v22;
    }

    v37 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v35 = v5;
LABEL_27:
        v36 = a2;
        v24 = a2 - 1;
        --v4;
        v25 = v14;
        v26 = v14;
        do
        {
          v27 = v4 + 1;
          v28 = *--v26;
          v29 = v24;
          v30 = *v24;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v31 = [v28 sectionIndex];
          v32 = [v30 sectionIndex];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v31 < v32)
          {
            v33 = v29;
            if (v27 != v36)
            {
              *v4 = *v29;
            }

            v13 = v37;
            v14 = v25;
            if (v25 <= v37 || (a2 = v33, v33 <= v35))
            {
              a2 = v33;
              goto LABEL_39;
            }

            goto LABEL_27;
          }

          if (v27 != v25)
          {
            *v4 = *v26;
          }

          --v4;
          v25 = v26;
          v13 = v37;
          v24 = v29;
        }

        while (v26 > v37);
        v14 = v26;
        a2 = v36;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v15;
        v17 = *v13;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = [v16 sectionIndex];
        v19 = [v17 sectionIndex];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v18 >= v19)
        {
          break;
        }

        v20 = v15;
        v21 = v5 == v15++;
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v13 >= v14 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v21 = v5 == v13++;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    a2 = v5;
  }

LABEL_39:
  if (a2 != v13 || a2 >= (v13 + ((v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

uint64_t sub_1CFB7AD1C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CFB7ADA8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1CFB7ADBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFB66AE0;

  return sub_1CFB792B0(a1, v4, v5, v6);
}

uint64_t sub_1CFB7AE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFB7AEE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFB7AF48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFB7AF90(uint64_t a1)
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
  v10[1] = sub_1CFB66AE0;

  return sub_1CFB780CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1CFB7B064(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1CFB77444;

  return sub_1CFB78450(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1CFB7B12C(uint64_t a1)
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
  v10[1] = sub_1CFB77444;

  return sub_1CFB788BC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1CFB7B200(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CFB77444;

  return sub_1CFB7A0C8(a1, v5);
}

MPAnalyticsLogger __swiftcall MPAnalyticsLogger.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

Swift::Void __swiftcall MPAnalyticsLogger.logEvent(_:)(Swift::String a1)
{
  sub_1CFB5D38C(0, &qword_1EE04C150, 0x1E69E9BF8);
  v1 = sub_1CFB8FE10();
  sub_1CFB8FCB0();
  sub_1CFB8F790();

  v2 = sub_1CFB8FA80();
  v4[4] = sub_1CFB7B410;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1CFB5DF28;
  v4[3] = &block_descriptor_5;
  v3 = _Block_copy(v4);
  AnalyticsSendEventLazy();
  _Block_release(v3);
}

Swift::Void __swiftcall MPAnalyticsLogger.logCustomGreetingUpdated()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC578, &qword_1CFB92040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFB91E60;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x80000001CFB93CB0;
  sub_1CFB5D38C(0, &qword_1EC4EC8C8, 0x1E696AD98);
  *(inited + 48) = sub_1CFB8FDF0();
  v3 = sub_1CFB6AEF4(inited);
  swift_setDeallocating();
  sub_1CFB7B8B4(inited + 32);
  v4 = sub_1CFB8FA80();
  sub_1CFB690A4(v3);

  sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
  v5 = sub_1CFB8FA30();

  [v1 logEvent:v4 withCoreAnalyticsDictionary:v5];
}

Swift::Void __swiftcall MPAnalyticsLogger.logSIMLineSelection(_:)(Swift::Bool a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC578, &qword_1CFB92040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFB91E60;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CFB93D00;
  sub_1CFB5D38C(0, &qword_1EC4EC8C8, 0x1E696AD98);
  *(inited + 48) = sub_1CFB8FDF0();
  v4 = sub_1CFB6AEF4(inited);
  swift_setDeallocating();
  sub_1CFB7B8B4(inited + 32);
  v5 = sub_1CFB8FA80();
  sub_1CFB690A4(v4);

  sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
  v6 = sub_1CFB8FA30();

  [v2 logEvent:v5 withCoreAnalyticsDictionary:v6];
}

uint64_t sub_1CFB7B8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC580, &qword_1CFB92048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CFB7B938()
{
  v1 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___contactAvatarCardController;
  v2 = *&v0[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___contactAvatarCardController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___contactAvatarCardController];
  }

  else
  {
    v4 = sub_1CFB7BAF0();
    v5 = objc_allocWithZone(type metadata accessor for ContactAvatarCardController());
    v6 = sub_1CFB67C98(v0, v4, v5);
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1CFB7B9BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults);
    }

    v2 = sub_1CFB8FFB0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];

    result = sub_1CFB8FF20();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D386D910](v4, v1);
        }

        else
        {
          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        v7 = [v5 contact];

        sub_1CFB8FF00();
        v8 = *(v10 + 16);
        sub_1CFB8FF30();
        sub_1CFB8FF40();
        sub_1CFB8FF10();
      }

      while (v2 != v4);

      return v10;
    }
  }

  return result;
}

id sub_1CFB7BAF0()
{
  v1 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView;
  v2 = *&v0[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView];
  }

  else
  {
    v4 = sub_1CFB7BB54(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1CFB7BB54(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CFB920D0;
  v6 = [v2 widthAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v8 = [result widthAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v9;
  v10 = [v2 heightAnchor];
  result = [a1 view];
  if (result)
  {
    v11 = result;
    v12 = objc_opt_self();
    v13 = [v11 heightAnchor];

    v14 = [v10 constraintEqualToAnchor_];
    *(v5 + 40) = v14;
    sub_1CFB5D38C(0, &qword_1EE04BD00, 0x1E696ACD8);
    v15 = sub_1CFB8FB20();

    [v12 activateConstraints_];

    type metadata accessor for ContactSearchViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = sub_1CFB8FA80();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

    v18 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    [v2 setSeparatorInsetReference_];
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1CFB7BE40()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ContactSearchTableViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = sub_1CFB7BAF0();
    [v4 setDataSource_];

    return [*&v0[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView] setDelegate_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CFB7BF6C(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ContactSearchTableViewController();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v4 = sub_1CFB7B938();
  v5 = ContactAvatarCardController.cardController.getter();

  v6 = [v2 view];
  [v5 setSourceView_];

  v7 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_dataSourceNeedsReload;
  if (*(v2 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_dataSourceNeedsReload) == 1)
  {
    v8 = sub_1CFB7BAF0();
    [v8 reloadData];

    *(v2 + v7) = 0;
  }
}

unint64_t sub_1CFB7C12C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFB8FA80();
  v12 = sub_1CFB8F740();
  v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:v12];

  type metadata accessor for ContactSearchViewCell();
  v14 = swift_dynamicCastClassUnconditional();
  [*&v14[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callButton] addTarget:v3 action:sel_callButtonTapped forControlEvents:64];
  [*&v14[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoButton] addTarget:v3 action:sel_callButtonTapped forControlEvents:64];
  v15 = v13;
  v16 = [v3 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  LOBYTE(v16) = sub_1CFB8FDE0();
  v18 = 0.0;
  if ((v16 & 1) == 0)
  {
    v18 = 55.0;
  }

  [v14 setSeparatorInset_];
  v19 = sub_1CFB8F760();
  v20 = sub_1CFB7B9BC();
  if (v20 >> 62)
  {
    v21 = sub_1CFB8FFB0();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 >= v21)
  {
    (*(v7 + 16))(v10, a2, v6);
    v41 = sub_1CFB8F7A0();
    v42 = sub_1CFB8FC90();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      v44 = sub_1CFB8F760();
      (*(v7 + 8))(v10, v6);
      *(v43 + 4) = v44;
      _os_log_impl(&dword_1CFB5B000, v41, v42, "ContactSearchTableViewController: Failed to get the contact at index: %ld", v43, 0xCu);
      MEMORY[0x1D386E190](v43, -1, -1);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    goto LABEL_15;
  }

  result = sub_1CFB8F760();
  v23 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults];
  v46[0] = v15;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v45 = result;

    v24 = MEMORY[0x1D386D910](v45, v23);

    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v23 + 8 * result + 32);
LABEL_10:
    v25 = &v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];
    v26 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];
    v27 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText + 8];
    v46[1] = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactIDSQuerySubject];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC940, &qword_1CFB92070);
    sub_1CFB7E98C(&qword_1EE04BD80);
    v28 = sub_1CFB8F970();
    v29 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchType];
    sub_1CFB6F954(v24, v26, v27, v28, v29);

    v30 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_callProviderManagerProvider + 8];
    v31 = &v14[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callProviderManager];
    v32 = *&v14[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callProviderManager];
    v33 = *&v14[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callProviderManager + 8];
    *v31 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_callProviderManagerProvider];
    *(v31 + 1) = v30;

    sub_1CFB5F258(v32);
    v34 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_senderIdentityProvider + 8];
    v35 = &v14[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_senderIdentityProvider];
    v36 = *&v14[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_senderIdentityProvider];
    v37 = *&v14[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_senderIdentityProvider + 8];
    *v35 = *&v3[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_senderIdentityProvider];
    *(v35 + 1) = v34;

    sub_1CFB5F258(v36);
    v38 = sub_1CFB8F760();
    sub_1CFB7CF0C(v38);
    v39 = v25[1];
    v15 = v46[0];
    if (!v39)
    {
LABEL_16:

      return v14;
    }

    v40 = *v25;
    v41 = v46[0];

    sub_1CFB70600(v40, v39, v29);

LABEL_15:

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CFB7C780(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1CFB8F780();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v55 - v13;
  v15 = sub_1CFB8F760();
  v16 = sub_1CFB7B9BC();
  if (v16 >> 62)
  {
    v3 = v16;
    v17 = sub_1CFB8FFB0();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 >= v17)
  {
    (*(v8 + 16))(v12, a2, v7);
    v31 = sub_1CFB8F7A0();
    v32 = sub_1CFB8FC90();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      v34 = sub_1CFB8F760();
      (*(v8 + 8))(v12, v7);
      *(v33 + 4) = v34;
      _os_log_impl(&dword_1CFB5B000, v31, v32, "ContactSearchTableViewController: Cannot find contact at index: %ld", v33, 0xCu);
      MEMORY[0x1D386E190](v33, -1, -1);
    }

    else
    {
      (*(v8 + 8))(v12, v7);
    }

LABEL_32:

    return;
  }

  v18 = *&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate];
  v57 = a1;
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = sub_1CFB7B9BC();
  v21 = sub_1CFB8F760();
  if ((v20 & 0xC000000000000001) == 0)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(v20 + 8 * v21 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_37:
    v39 = MEMORY[0x1D386D910]();
    goto LABEL_19;
  }

  v22 = MEMORY[0x1D386D910](v21, v20);
LABEL_9:
  v23 = v22;

  v24 = [v23 identifier];

  sub_1CFB8FA90();
  v25 = [v19 searchManager];
  v26 = sub_1CFB76708();

  a1 = v57;
  if (v26)
  {
    v27 = *&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactViewControllerProvider + 8];
    v28 = (*&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactViewControllerProvider])(v26);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      [Strong pushViewController:v28 animated:1];
    }

    else
    {
      v47 = sub_1CFB8F7A0();
      v48 = sub_1CFB8FC90();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1CFB5B000, v47, v48, "ContactSearchTableViewController: missing navigation controller", v49, 2u);
        MEMORY[0x1D386E190](v49, -1, -1);
      }
    }

    goto LABEL_26;
  }

LABEL_14:
  (*(v8 + 16))(v14, a2, v7);
  v35 = v4;
  v12 = sub_1CFB8F7A0();
  v36 = sub_1CFB8FC90();

  if (!os_log_type_enabled(v12, v36))
  {

    (*(v8 + 8))(v14, v7);
    goto LABEL_26;
  }

  v56 = v36;
  v3 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v58 = v55;
  *v3 = 136315138;
  v37 = sub_1CFB7B9BC();
  v38 = sub_1CFB8F760();
  if ((v37 & 0xC000000000000001) != 0)
  {
    goto LABEL_37;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v38 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v37 + 8 * v38 + 32);
LABEL_19:
    v40 = v39;

    v41 = [v40 identifier];

    v42 = sub_1CFB8FA90();
    v44 = v43;

    (*(v8 + 8))(v14, v7);
    v45 = sub_1CFB8C3D8(v42, v44, &v58);

    *(v3 + 4) = v45;
    _os_log_impl(&dword_1CFB5B000, v12, v56, "ContactSearchTableViewController: Cannot find contact for identifier: %s", v3, 0xCu);
    v46 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x1D386E190](v46, -1, -1);
    MEMORY[0x1D386E190](v3, -1, -1);

    a1 = v57;
LABEL_26:
    v50 = sub_1CFB8F740();
    [a1 deselectRowAtIndexPath:v50 animated:0];

    v51 = 0;
    v52 = *&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchType];
    if (v52 <= 3)
    {
      v51 = dword_1CFB92100[v52];
    }

    v31 = [objc_opt_self() shared];
    if (*&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText + 8])
    {
      v53 = *&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];

      v54 = sub_1CFB8FAD0();
    }

    else
    {
      v54 = -1;
    }

    [v31 logSearchResultInteraction:1 cellType:v51 searchLength:v54];
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_1CFB7CF0C(uint64_t result)
{
  v8 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_currentIDSStatusPage;
  v9 = *(v2 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_currentIDSStatusPage);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_49;
  }

  v3 = 20 * v10;
  if ((v10 * 20) >> 64 != (20 * v10) >> 63)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (__OFSUB__(v3, result))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v3 - result > 4)
  {
    return result;
  }

  v1 = v2;
  result = sub_1CFB7B9BC();
  if (!(result >> 62))
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

LABEL_51:
  v4 = result;
  v11 = sub_1CFB8FFB0();
LABEL_7:

  v12 = 20 * (v10 + 1);
  if (((v10 + 1) * 20) >> 64 != v12 >> 63)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v12 >= v11)
  {
    v5 = v11;
  }

  else
  {
    v5 = 20 * (v10 + 1);
  }

  v4 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    goto LABEL_53;
  }

  if (v3 >= v4)
  {
    return result;
  }

  v11 = v1;
  v13 = sub_1CFB7B9BC();
  v6 = v5;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_54;
  }

  v11 = v13;
  v7 = v13 >> 62;
  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v3)
    {
      goto LABEL_16;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_55:
  if (sub_1CFB8FFB0() < v3)
  {
    goto LABEL_56;
  }

LABEL_16:
  if (v3 < 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v7)
  {
    result = sub_1CFB8FFB0();
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v6)
  {
    goto LABEL_58;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if ((v11 & 0xC000000000000001) == 0)
  {
LABEL_26:

    goto LABEL_30;
  }

  if (v6 < v3)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v3 == v6)
  {
    goto LABEL_26;
  }

  if (v3 >= v6)
  {
    __break(1u);
    return result;
  }

  sub_1CFB5D38C(0, &qword_1EC4EC820, 0x1E695CD58);

  v14 = v3;
  do
  {
    v15 = v14 + 1;
    sub_1CFB8FEB0();
    v14 = v15;
  }

  while (v5 != v15);
LABEL_30:

  if (v7)
  {
    v4 = sub_1CFB8FFC0();
    v5 = v16;
    v3 = v17;
    v6 = v18;
  }

  else
  {
    v4 = v11 & 0xFFFFFFFFFFFFFF8;
    v5 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
    v6 = (2 * v6) | 1;
  }

  *(v1 + v8) = v10;
  v19 = sub_1CFB8F7A0();
  v20 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v10;
    _os_log_impl(&dword_1CFB5B000, v19, v20, "ContactSearchTableViewController: Fetching FaceTime status from IDS for page %ld", v21, 0xCu);
    MEMORY[0x1D386E190](v21, -1, -1);
  }

  if ((v6 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_37:
    sub_1CFB7DDCC(v4, v5, v3, v6);
    v23 = v22;
LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  sub_1CFB90020();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v6 >> 1, v3))
  {
    goto LABEL_61;
  }

  if (v25 != (v6 >> 1) - v3)
  {
LABEL_62:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v23)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

LABEL_45:
  sub_1CFB7D2CC(v23);
  swift_unknownObjectRelease();
}

void sub_1CFB7D2CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
      return;
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x1D386D910](v4, a1) : *(a1 + 8 * v4 + 32);
      v7 = v6;
      v8 = [v6 idsCanonicalDestinations];
      v9 = sub_1CFB8FB30();

      v10 = *(v9 + 16);
      v1 = *(v5 + 2);
      v11 = &v1[v10];
      if (__OFADD__(v1, v10))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v13 = *(v5 + 3) >> 1, v13 >= v11))
      {
        if (*(v9 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v1 <= v11)
        {
          v14 = &v1[v10];
        }

        else
        {
          v14 = v1;
        }

        v5 = sub_1CFB65A0C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
        v13 = *(v5 + 3) >> 1;
        if (*(v9 + 16))
        {
LABEL_19:
          if (v13 - *(v5 + 2) < v10)
          {
            goto LABEL_25;
          }

          swift_arrayInitWithCopy();

          if (v10)
          {
            v15 = *(v5 + 2);
            v16 = __OFADD__(v15, v10);
            v17 = v15 + v10;
            if (v16)
            {
              goto LABEL_26;
            }

            *(v5 + 2) = v17;
          }

          goto LABEL_6;
        }
      }

      if (v10)
      {
        goto LABEL_24;
      }

LABEL_6:
      ++v4;

      if (v3 == v4)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v3 = sub_1CFB8FFB0();
    v29 = v1;
  }

LABEL_28:
  v18 = sub_1CFB8F7A0();
  v19 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136642819;

    v23 = MEMORY[0x1D386D590](v22, MEMORY[0x1E69E6158]);
    v25 = v24;

    v26 = sub_1CFB8C3D8(v23, v25, &v31);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1CFB5B000, v18, v19, "ContactSearchTableViewController: Fetching FaceTime status from IDS for destinations %{sensitive}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1D386E190](v21, -1, -1);
    MEMORY[0x1D386E190](v20, -1, -1);
  }

  v27 = [objc_opt_self() sharedManager];

  sub_1CFB7E8F4(v28);

  v30 = sub_1CFB8FC30();

  [v27 beginQueryWithDestinations:v30 services:2];
}

uint64_t sub_1CFB7D624()
{
  v1 = v0;
  v2 = sub_1CFB8F7A0();
  v3 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1CFB5B000, v2, v3, "ContactSearchTableViewController: Handling TUIDSLookupManagerStatusChanged Notification", v4, 2u);
    MEMORY[0x1D386E190](v4, -1, -1);
  }

  v5 = *(v1 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactIDSQuerySubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC940, &qword_1CFB92070);
  sub_1CFB7E98C(&unk_1EE04BD88);
  return sub_1CFB8F960();
}

unint64_t sub_1CFB7D75C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate);
  if (!v2)
  {
    return 2;
  }

  v4 = v2;
  v5 = sub_1CFB7B9BC();
  result = sub_1CFB8F760();
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D386D910](result, v5);
LABEL_6:
    v8 = v7;

    v9 = [v8 identifier];

    sub_1CFB8FA90();
    v10 = [v4 searchManager];
    v11 = sub_1CFB76708();

    if (v11)
    {
      v12 = v11;
      [a1 setContact_];
      [a1 setMessage_];

      return 0;
    }

    return 2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 8 * result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1CFB7D9C0()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong presentingViewController];

      if (v4)
      {
        v5 = [v4 presentingViewController];

        if (v5)
        {
          [v5 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

id sub_1CFB7DB2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactSearchTableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ContactSearchTableViewController()
{
  result = qword_1EE04C040;
  if (!qword_1EE04C040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFB7DCD4()
{
  result = sub_1CFB8F7C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1CFB7DDCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1CFB5D38C(0, &qword_1EC4EC820, 0x1E695CD58);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1CFB7DEC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1CFB900D0();
  sub_1CFB8FAC0();
  v9 = sub_1CFB900F0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1CFB90010() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1CFB7E270(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1CFB7E010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC950, &unk_1CFB924A0);
  result = sub_1CFB8FE80();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1CFB900D0();
      sub_1CFB8FAC0();
      result = sub_1CFB900F0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CFB7E270(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1CFB7E010(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1CFB7E3F0();
      goto LABEL_16;
    }

    sub_1CFB7E54C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1CFB900D0();
  sub_1CFB8FAC0();
  result = sub_1CFB900F0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1CFB90010();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1CFB90040();
  __break(1u);
  return result;
}

void *sub_1CFB7E3F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC950, &unk_1CFB924A0);
  v2 = *v0;
  v3 = sub_1CFB8FE70();
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

uint64_t sub_1CFB7E54C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC950, &unk_1CFB924A0);
  result = sub_1CFB8FE80();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1CFB900D0();

      sub_1CFB8FAC0();
      result = sub_1CFB900F0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_1CFB7E788()
{
  sub_1CFB8F7B0();
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_idsQueryPageSize) = 20;
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_currentIDSStatusPage) = -1;
  v1 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactIDSQuerySubject;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC940, &qword_1CFB92070);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + v1) = sub_1CFB8F950();
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___contactAvatarCardController) = 0;
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_dataSourceNeedsReload) = 1;
  *(v0 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView) = 0;
  sub_1CFB8FFA0();
  __break(1u);
}

uint64_t sub_1CFB7E8F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D386D690](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1CFB7DEC0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1CFB7E98C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4EC940, &qword_1CFB92070);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFB7E9DC(void *a1)
{
  v2 = v1;
  v4 = sub_1CFB8F610();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1CFB7F024(a1);
  v7 = *(v2 + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage);
  *(v2 + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage) = v6;

  sub_1CFB7F148();
  sub_1CFB8FC80();
  v8 = sub_1CFB8FDD0();
  v9 = [v8 string];

  v10 = sub_1CFB8FA90();
  v12 = v11;

  v13 = (v2 + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText);
  v14 = *(v2 + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText + 8);
  *v13 = v10;
  v13[1] = v12;
}

uint64_t sub_1CFB7EAD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1CFB8F870();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1D386D720](v8);
  v11 = *&v2[OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage];
  if (v11)
  {
    if (*&v3[OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText + 8])
    {
      v12 = a2 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *&v3[OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText];
      v27 = v11;

      sub_1CFB8F860();
      v14 = sub_1CFB8FA80();

      v15 = sub_1CFB8FA80();
      v16 = [v14 attributedStringToHighlightText_];

      sub_1CFB8F810();
      v17 = objc_opt_self();
      [v17 labelFontSize];
      v18 = [v17 systemFontOfSize_];
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      v20 = [v19 scaledFontForFont_];

      v21 = [objc_opt_self() configurationWithFont_];
      v22 = sub_1CFB8F840();
      sub_1CFB8F820();
      v22(v28, 0);
      v23 = [objc_opt_self() labelColor];
      v24 = sub_1CFB8F840();
      sub_1CFB8F830();
      v24(v28, 0);
      sub_1CFB8F850();
      v28[3] = v5;
      v28[4] = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(v6 + 16))(boxed_opaque_existential_1, v10, v5);
      MEMORY[0x1D386D710](v28);
      [v3 setSeparatorInset_];
    }
  }

  return (*(v6 + 8))(v10, v5);
}

id sub_1CFB7EF78()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CFB7F024(void *a1)
{
  v1 = [a1 currentToken];
  if (v1)
  {
    v2 = v1;
    [v1 tokenKind];
  }

  v3 = sub_1CFB8FA80();
  v4 = [objc_opt_self() systemImageNamed_];

  return v4;
}

unint64_t sub_1CFB7F148()
{
  result = qword_1EC4EC700;
  if (!qword_1EC4EC700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4EC700);
  }

  return result;
}

char *VoicemailUnreadIndicator.init(diameter:)(double a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11CallsSearch24VoicemailUnreadIndicator_diameter] = a1;
  v4 = [objc_opt_self() telephonyUIUnreadIndicatorGlyphImage];
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v20, sel_initWithImage_, v4);

  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v6 layer];
  [v7 setMasksToBounds_];

  v8 = [v6 layer];
  [v8 setCornerRadius_];

  v9 = [objc_opt_self() systemBlueColor];
  [v6 setTintColor_];

  LODWORD(v10) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v10];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CFB920D0;
  v13 = [v6 widthAnchor];
  v14 = OBJC_IVAR____TtC11CallsSearch24VoicemailUnreadIndicator_diameter;
  v15 = [v13 constraintEqualToConstant_];

  *(v12 + 32) = v15;
  v16 = [v6 heightAnchor];
  v17 = [v16 constraintEqualToConstant_];

  *(v12 + 40) = v17;
  sub_1CFB672F0();
  v18 = sub_1CFB8FB20();

  [v11 activateConstraints_];

  return v6;
}

void VoicemailUnreadIndicator.configureBorder(borderWidth:borderColor:)(uint64_t a1, double a2)
{
  v5 = [v2 layer];
  [v5 setBorderWidth_];

  v6 = [v2 layer];
  [v6 setBorderColor_];
}

id VoicemailUnreadIndicator.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id VoicemailUnreadIndicator.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id VoicemailUnreadIndicator.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VoicemailUnreadIndicator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CFB7F7F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v0 setOpaque_];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_1CFB8F620();

  v3 = sub_1CFB8FA80();

  [v0 setTitle:v3 forState:{0, 0xE000000000000000}];

  v4 = [v0 titleLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() preferredFontForTextStyle_];
    [v5 setFont_];
  }

  v7 = [objc_opt_self() systemBlueColor];
  [v0 setTitleColor:v7 forState:0];

  [v0 setContentHorizontalAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 sizeToFit];
  [v0 setUserInteractionEnabled_];

  return v0;
}

uint64_t sub_1CFB7FA18()
{
  v1 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell____lazy_storage___nonAXConstraints;
  if (*(v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell____lazy_storage___nonAXConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell____lazy_storage___nonAXConstraints);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1CFB920F0;
    v3 = [*(v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllButton) lastBaselineAnchor];
    v4 = [*(v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleLabel) lastBaselineAnchor];
    v5 = [v3 constraintEqualToAnchor_];

    *(v2 + 32) = v5;
    v6 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1CFB7FB20(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC998, &qword_1CFB92518);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleStackView;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v10 setSpacing_];
  [v10 setDistribution_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v9] = v10;
  v11 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleLabel;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllButton;
  *&v2[v12] = sub_1CFB7F7F8();
  *&v2[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell____lazy_storage___nonAXConstraints] = 0;
  v13 = &v2[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllTapHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  if (a2)
  {
    v14 = sub_1CFB8FA80();
  }

  else
  {
    v14 = 0;
  }

  v19.receiver = v2;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, sel_initWithReuseIdentifier_, v14);

  v16 = v15;
  [v16 setPreservesSuperviewLayoutMargins_];
  sub_1CFB7FD70();
  sub_1CFB8F7F0();
  v17 = sub_1CFB8F800();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  MEMORY[0x1D386D6B0](v8);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CFB8FC70();

  return v16;
}

void sub_1CFB7FD70()
{
  v1 = *&v0[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleLabel];
  v2 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v1 setFont_];

  v3 = [objc_opt_self() dynamicLabelColor];
  [v1 setTextColor_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *&v0[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleStackView];
  [v4 addArrangedSubview_];
  v5 = *&v0[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllButton];
  [v5 addTarget:v0 action:sel_didSelectSeeAllButton forControlEvents:64];
  [v4 addArrangedSubview_];
  [v0 addSubview_];
  sub_1CFB7FF2C();

  sub_1CFB801BC();
}

void sub_1CFB7FF2C()
{
  v1 = v0;
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CFB91E70;
  v4 = *&v1[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleStackView];
  v5 = [v4 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:8.0];

  *(v3 + 32) = v7;
  v8 = [v4 leadingAnchor];
  v9 = [v1 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v3 + 40) = v11;
  v12 = [v4 trailingAnchor];
  v13 = [v1 layoutMarginsGuide];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v3 + 48) = v15;
  v16 = [v4 bottomAnchor];
  v17 = [v1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-8.0];

  *(v3 + 56) = v18;
  sub_1CFB672F0();
  v19 = sub_1CFB8FB20();

  [v2 activateConstraints_];
}

void sub_1CFB801BC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1CFB8FDE0();
  v4 = *&v0[OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleStackView];
  [v4 setAxis_];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (v3)
  {
    v6 = &selRef_deactivateConstraints_;
  }

  else
  {
    v6 = &selRef_activateConstraints_;
  }

  [v4 setAlignment_];
  v7 = objc_opt_self();
  sub_1CFB7FA18();
  sub_1CFB672F0();
  v8 = sub_1CFB8FB20();

  [v7 *v6];
}

void sub_1CFB802DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC998, &qword_1CFB92518);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v17 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  if (sub_1CFB8F7D0())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      MEMORY[0x1D386D6A0]();
      v12 = sub_1CFB8F800();
      if ((*(*(v12 - 8) + 48))(v9, 1, v12))
      {
        sub_1CFB808C4(v9, v7);
        MEMORY[0x1D386D6B0](v7);

        sub_1CFB5DDDC(v9, &qword_1EC4EC998, &qword_1CFB92518);
      }

      else
      {
        v16 = [objc_opt_self() effectWithStyle_];
        sub_1CFB8F7E0();
        MEMORY[0x1D386D6B0](v9);
      }
    }
  }

  else
  {
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      MEMORY[0x1D386D6A0]();
      v15 = sub_1CFB8F800();
      if ((*(*(v15 - 8) + 48))(v4, 1, v15))
      {
        sub_1CFB808C4(v4, v7);
        MEMORY[0x1D386D6B0](v7);

        sub_1CFB5DDDC(v4, &qword_1EC4EC998, &qword_1CFB92518);
      }

      else
      {
        sub_1CFB8F7E0();
        MEMORY[0x1D386D6B0](v4);
      }
    }
  }
}

void sub_1CFB807AC()
{
  v1 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleStackView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v2 setSpacing_];
  [v2 setDistribution_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllButton;
  *(v0 + v4) = sub_1CFB7F7F8();
  *(v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell____lazy_storage___nonAXConstraints) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllTapHandler);
  *v5 = 0;
  v5[1] = 0;
  sub_1CFB8FFA0();
  __break(1u);
}

uint64_t sub_1CFB808C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC998, &qword_1CFB92518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFB80934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1CFB7AE70(a3, v27 - v11);
  v13 = sub_1CFB8FBF0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1CFB5DDDC(v12, &qword_1EC4EC4B0, &qword_1CFB91F10);
  }

  else
  {
    sub_1CFB8FBE0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1CFB8FB80();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1CFB8FAB0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1CFB5DDDC(a3, &qword_1EC4EC4B0, &qword_1CFB91F10);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CFB5DDDC(a3, &qword_1EC4EC4B0, &qword_1CFB91F10);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1CFB80C30(uint64_t a1, uint64_t a2)
{
  sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
  v3 = sub_1CFB8FB20();
  v4 = (*(a2 + 16))(a2, v3);

  v5 = sub_1CFB8FB30();
  return v5;
}

uint64_t sub_1CFB80DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_1CFB8FB30();
  v8 = *(a1 + *a5);
  *(a1 + *a5) = v7;
}

id sub_1CFB81140(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id sub_1CFB811A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

id sub_1CFB811F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  v15 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v16 = [v15 junkFilteringEnabled];

  if (v16)
  {
    [v14 setIncludeAcceptedIntroductions_];
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  v18 = objc_allocWithZone(MPContactSearchManager);
  v37 = a4;
  v38 = a5;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CFB72F7C;
  v36 = &block_descriptor_44;
  v19 = _Block_copy(&aBlock);

  v20 = v18;
  v21 = a1;
  v28 = [v20 initWithType:a1 contactStore:v17 searchResultsRanker:v19];

  _Block_release(v19);

  v22 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v37 = a2;
  v38 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CFB81140;
  v36 = &block_descriptor_47;
  v23 = _Block_copy(&aBlock);

  v37 = a6;
  v38 = a7;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CFB81140;
  v36 = &block_descriptor_50;
  v24 = _Block_copy(&aBlock);

  v37 = a8;
  v38 = a9;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CFB811A8;
  v36 = &block_descriptor_53;
  v25 = _Block_copy(&aBlock);

  v26 = [v31 initWithContactSearchType:v21 searchManager:v28 featureFlags:v22 contactViewControllerProvider:v23 senderIdentityProvider:v24 callProviderManagerProvider:v25];

  _Block_release(v25);
  _Block_release(v24);
  _Block_release(v23);

  return v26;
}

uint64_t sub_1CFB81698(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  *&v10[OBJC_IVAR___MPContactsSearchController_sectionIndex] = 0x7FFFFFFFFFFFFFFFLL;
  v15 = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR___MPContactsSearchController_resultIDs] = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR___MPContactsSearchController_results] = v15;
  v16 = v15;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v17 = &v10[OBJC_IVAR___MPContactsSearchController_searchText];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v10[OBJC_IVAR___MPContactsSearchController_searchTokens] = v16;
  *&v10[OBJC_IVAR___MPContactsSearchController_searchManager] = a2;
  *&v10[OBJC_IVAR___MPContactsSearchController_featureFlags] = a3;
  *&v10[OBJC_IVAR___MPContactsSearchController_contactSearchType] = a1;
  v18 = type metadata accessor for ContactSearchTableViewController();
  v19 = objc_allocWithZone(v18);
  v54 = a2;
  v53 = a3;

  sub_1CFB8F7B0();
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_idsQueryPageSize] = 20;
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_currentIDSStatusPage] = -1;
  v20 = OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactIDSQuerySubject;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC940, &qword_1CFB92070);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *&v19[v20] = sub_1CFB8F950();
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___contactAvatarCardController] = 0;
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate] = 0;
  v24 = &v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];
  *v24 = 0;
  v24[1] = 0;
  v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_dataSourceNeedsReload] = 1;
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController____lazy_storage___tableView] = 0;
  *&v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchType] = a1;
  v25 = &v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactViewControllerProvider];
  *v25 = a4;
  v25[1] = a5;
  v26 = &v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_senderIdentityProvider];
  *v26 = a6;
  v26[1] = a7;
  v27 = &v19[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_callProviderManagerProvider];
  *v27 = a8;
  v27[1] = a9;
  v56.receiver = v19;
  v56.super_class = v18;

  v28 = objc_msgSendSuper2(&v56, sel_initWithNibName_bundle_, 0, 0);
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 defaultCenter];
  [v31 addObserver:v30 selector:sel_handleTUIDSLookupManagerStatusChanged name:*MEMORY[0x1E69D8FA0] object:0];

  *&v10[OBJC_IVAR___MPContactsSearchController_contactsTableViewController] = v30;
  if (a1 < 2)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v34 = sub_1CFB8F620();
    v36 = v35;
    v37 = 4;
LABEL_7:

    v42 = &v10[OBJC_IVAR___MPContactsSearchController_sectionTitle];
    *v42 = v34;
    v42[1] = v36;
    *&v10[OBJC_IVAR___MPContactsSearchController_sectionType] = v37;
    v55.receiver = v10;
    v55.super_class = MPContactsSearchController;
    v43 = objc_msgSendSuper2(&v55, sel_init, 0xE000000000000000);

    v44 = *&v43[OBJC_IVAR___MPContactsSearchController_contactsTableViewController];
    v45 = *(v44 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate);
    *(v44 + OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_delegate) = v43;
    v46 = v43;

    return v46;
  }

  if (a1 == 2)
  {
    type metadata accessor for BundleClass();
    v38 = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v34 = sub_1CFB8F620();
    v36 = v39;
    v37 = 6;
    goto LABEL_7;
  }

  if (a1 == 3)
  {
    type metadata accessor for BundleClass();
    v40 = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v34 = sub_1CFB8F620();
    v36 = v41;
    v37 = 5;
    goto LABEL_7;
  }

  sub_1CFB8FEA0();
  MEMORY[0x1D386D530](0xD00000000000001ALL, 0x80000001CFB944E0);
  type metadata accessor for ContactSearchType(0);
  sub_1CFB8FF90();
  result = sub_1CFB8FFA0();
  __break(1u);
  return result;
}

uint64_t sub_1CFB81E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v8[4] = sub_1CFB8FBC0();
  v8[5] = sub_1CFB8FBB0();
  v12 = swift_task_alloc();
  v8[6] = v12;
  *v12 = v8;
  v12[1] = sub_1CFB6BDF4;

  return sub_1CFB81F14(a5, a6, a7);
}

uint64_t sub_1CFB81F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v5 = *(*(sub_1CFB8F610() - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  sub_1CFB8FBC0();
  v4[33] = sub_1CFB8FBB0();
  v7 = sub_1CFB8FB80();
  v4[34] = v7;
  v4[35] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFB81FDC, v7, v6);
}

uint64_t sub_1CFB81FDC()
{
  v1 = [*(v0 + 248) featureFlags];
  v2 = [v1 callHistorySearchEnabled];

  if (!v2 || !*(v0 + 232))
  {
    v14 = *(v0 + 264);

    goto LABEL_11;
  }

  v3 = [*(v0 + 248) searchText];
  if (v3)
  {
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = v3;
    v7 = sub_1CFB8FA90();
    v9 = v8;

    if (v7 == v5 && v4 == v9)
    {
    }

    else
    {
      v11 = *(v0 + 224);
      v12 = *(v0 + 232);
      v13 = sub_1CFB90010();

      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v18 = *(v0 + 240);
    v19 = [*(v0 + 248) searchTokens];
    sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
    v20 = sub_1CFB8FB30();

    LOBYTE(v18) = sub_1CFB843A0(v20, v18);

    if (v18)
    {
      v21 = *(v0 + 264);
      v22 = *(v0 + 248);

      v23 = [v22 delegate];
      if (!v23)
      {
        goto LABEL_11;
      }

      goto LABEL_93;
    }
  }

LABEL_18:
  v25 = *(v0 + 240);
  v24 = *(v0 + 248);
  v27 = *(v0 + 224);
  v26 = *(v0 + 232);
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v28 = sub_1CFB8FB20();
  [v24 setSearchTokens_];

  if (sub_1CFB8FAD0() <= 0)
  {
    v29 = *(v0 + 240);
    if (v29 >> 62)
    {
      goto LABEL_91;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
LABEL_92:
      v91 = *(v0 + 264);
      v92 = *(v0 + 248);
      v93 = *(v0 + 224);

      v94 = sub_1CFB8FB20();
      [v92 setResults_];

      v95 = sub_1CFB8FB20();
      [v92 setResultIDs_];

      v96 = sub_1CFB8FA80();
      [v92 setSearchText_];

      v23 = [v92 delegate];
      if (v23)
      {
LABEL_93:
        [v23 didCompleteSearchFor_];
        swift_unknownObjectRelease();
      }

LABEL_11:
      v15 = *(v0 + 256);

      v16 = *(v0 + 8);

      return v16();
    }
  }

  while (1)
  {
    v30 = [*(v0 + 248) contactSearchType];
    if ((v30 - 1) < 3)
    {
      v31 = [*(v0 + 248) featureFlags];
      v32 = [v31 phoneLargeFormatUIEnabled];

      if (v32)
      {
        v33 = *(v0 + 232);
        if ((v33 & 0x2000000000000000) != 0)
        {
          v34 = HIBYTE(v33) & 0xF;
        }

        else
        {
          v34 = *(v0 + 224) & 0xFFFFFFFFFFFFLL;
        }

        *&v97 = *(v0 + 224);
        *(&v97 + 1) = v26;
        *&v98 = 0;
        *(&v98 + 1) = v34;

        sub_1CFB8FAF0();
        if (v35)
        {
          do
          {
            if (sub_1CFB8FA60())
            {
            }

            else
            {
              v37 = sub_1CFB8FA70();

              if ((v37 & 1) == 0)
              {
                v38 = *(v0 + 248);
                v39 = *(v0 + 224);

                goto LABEL_35;
              }
            }

            sub_1CFB8FAF0();
          }

          while (v36);
        }
      }

      v38 = *(v0 + 248);
      v42 = *(v0 + 224);
      v43 = sub_1CFB8FA80();
      v41 = [v43 unformattedNumberInLatin];

      goto LABEL_38;
    }

    if (!v30)
    {
      v38 = *(v0 + 248);
      v40 = *(v0 + 224);
LABEL_35:
      v41 = sub_1CFB8FA80();
LABEL_38:
      [v38 setSearchText_];
      goto LABEL_39;
    }

    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v65 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v65, qword_1EE04C228);
    v41 = sub_1CFB8F7A0();
    v66 = sub_1CFB8FCA0();
    if (os_log_type_enabled(v41, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1CFB5B000, v41, v66, "Unknown contactSearchType", v67, 2u);
      MEMORY[0x1D386E190](v67, -1, -1);
    }

LABEL_39:
    v44 = *(v0 + 240);

    if (v44 >> 62)
    {
      if (*(v0 + 240) < 0)
      {
        v90 = *(v0 + 240);
      }

      v45 = sub_1CFB8FFB0();
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 288) = v45;
    if (v45 < 1)
    {
      goto LABEL_83;
    }

    if ((v44 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v46 = *(*(v0 + 240) + 32);
      goto LABEL_45;
    }

    __break(1u);
LABEL_91:
    if (sub_1CFB8FFB0() < 1)
    {
      goto LABEL_92;
    }
  }

  v46 = MEMORY[0x1D386D910](0, *(v0 + 240));
LABEL_45:
  v47 = v46;
  v48 = [v46 representedObject];

  if (v48)
  {
    sub_1CFB8FE40();
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
  }

  *(v0 + 176) = v97;
  *(v0 + 192) = v98;
  if (!*(v0 + 200))
  {
    v64 = *(v0 + 264);

    sub_1CFB5DDDC(v0 + 176, &unk_1EC4ECA20, &qword_1CFB91F00);
LABEL_65:
    v69 = *(v0 + 248);
    v70 = sub_1CFB8FB20();
    [v69 setResults_];

    v71 = sub_1CFB8FB20();
    [v69 setResultIDs_];

    v72 = [v69 delegate];
    if (v72)
    {
      [v72 didCompleteSearchFor_];
      swift_unknownObjectRelease();
    }

    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v73 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v73, qword_1EE04C228);
    v74 = sub_1CFB8F7A0();
    v75 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1CFB5B000, v74, v75, "ContactsSearchController: Could not extract suggestion object from search token", v76, 2u);
      MEMORY[0x1D386E190](v76, -1, -1);
    }

    goto LABEL_11;
  }

  sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v68 = *(v0 + 264);

    goto LABEL_65;
  }

  v49 = *(v0 + 216);
  v50 = [v49 currentToken];
  if (!v50 || (v51 = v50, v52 = [v50 tokenKind], v51, v52 != 16))
  {
    v77 = *(v0 + 264);
    v78 = *(v0 + 248);

    v79 = sub_1CFB8FB20();
    [v78 setResults_];

    v80 = sub_1CFB8FB20();
    [v78 setResultIDs_];

    v81 = [v78 delegate];
    if (v81)
    {
      [v81 didCompleteSearchFor_];
      swift_unknownObjectRelease();
    }

    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v82 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v82, qword_1EE04C228);
    v60 = sub_1CFB8F7A0();
    v61 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "ContactsSearchController: Aborting contacts search because search token doesn't contain person suggestion";
LABEL_78:
      _os_log_impl(&dword_1CFB5B000, v60, v61, v63, v62, 2u);
      MEMORY[0x1D386E190](v62, -1, -1);
    }

LABEL_79:

    goto LABEL_11;
  }

  v53 = *(v0 + 224);
  if (sub_1CFB8FAD0() >= 1)
  {
    v54 = *(v0 + 264);
    v55 = *(v0 + 248);

    v56 = sub_1CFB8FB20();
    [v55 setResults_];

    v57 = sub_1CFB8FB20();
    [v55 setResultIDs_];

    v58 = [v55 delegate];
    if (v58)
    {
      [v58 didCompleteSearchFor_];
      swift_unknownObjectRelease();
    }

    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v59 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v59, qword_1EE04C228);
    v60 = sub_1CFB8F7A0();
    v61 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "ContactsSearchController: Aborting contacts search because both searchtoken and text are present";
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  v83 = *(v0 + 256);
  sub_1CFB5D38C(0, &qword_1EC4EC700, 0x1E696AAB0);
  sub_1CFB8FC80();
  v84 = sub_1CFB8FDD0();
  v85 = [v84 string];

  if (!v85)
  {
    sub_1CFB8FA90();
    v85 = sub_1CFB8FA80();
  }

  [*(v0 + 248) setSearchText_];

LABEL_83:
  v86 = *(v0 + 248);
  v87 = [v86 searchManager];
  *(v0 + 296) = v87;
  v88 = [v86 searchText];
  *(v0 + 304) = v88;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 208;
  *(v0 + 24) = sub_1CFB82C34;
  v89 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECA18, &qword_1CFB92550);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CFB837BC;
  *(v0 + 104) = &block_descriptor_6;
  *(v0 + 112) = v89;
  [v87 searchFor:v88 shouldRefreshResult:0 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1CFB82C34()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 312) = v3;
  v4 = *(v1 + 280);
  v5 = *(v1 + 272);
  if (v3)
  {
    v6 = sub_1CFB83414;
  }

  else
  {
    v6 = sub_1CFB82D64;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

char *sub_1CFB82D64()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[33];

  v71 = v0;
  v5 = v0[26];

  if (v3 >= 1)
  {
    v72 = MEMORY[0x1E69E7CC0];
    if (v5 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CFB8FFB0())
    {
      v7 = 0;
      v69 = v5 & 0xFFFFFFFFFFFFFF8;
      v70 = v5 & 0xC000000000000001;
      while (1)
      {
        if (v70)
        {
          v9 = MEMORY[0x1D386D910](v7, v5);
        }

        else
        {
          if (v7 >= *(v69 + 16))
          {
            goto LABEL_29;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = [v9 contact];
        v13 = [v12 displayName];

        if (v13)
        {
          v14 = sub_1CFB8FA90();
          v16 = v15;
        }

        else
        {
          v14 = 0;
          v16 = 0;
        }

        v17 = [v71[31] searchText];
        if (v17)
        {
          v18 = v5;
          v19 = v17;
          v20 = sub_1CFB8FA90();
          v22 = v21;

          v5 = v18;
          if (v16)
          {
            if (!v22)
            {
              goto LABEL_25;
            }

            if (v14 == v20 && v16 == v22)
            {
            }

            else
            {
              v23 = sub_1CFB90010();

              if ((v23 & 1) == 0)
              {

                goto LABEL_7;
              }
            }
          }

          else if (v22)
          {
LABEL_25:

            goto LABEL_7;
          }
        }

        else if (v16)
        {
          goto LABEL_25;
        }

        sub_1CFB8FF00();
        v8 = *(v72 + 16);
        sub_1CFB8FF30();
        sub_1CFB8FF40();
        sub_1CFB8FF10();
LABEL_7:
        ++v7;
        if (v11 == i)
        {
          v24 = v72;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_32:

    v5 = v24;
  }

  v25 = v71;
  if (v5 >> 62)
  {
    v26 = sub_1CFB8FFB0();
    v25 = v71;
  }

  else
  {
    v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    v73 = MEMORY[0x1E69E7CC0];
    result = sub_1CFB8E10C(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = 0;
    v29 = v5;
    v30 = v5 & 0xC000000000000001;
    do
    {
      if (v30)
      {
        v31 = MEMORY[0x1D386D910](v28, v29);
      }

      else
      {
        v31 = *(v29 + 8 * v28 + 32);
      }

      v32 = v31;
      v33 = [v31 contact];
      v34 = v71;
      v71[21] = sub_1CFB5D38C(0, &qword_1EC4EC820, 0x1E695CD58);

      v71[18] = v33;
      v36 = *(v73 + 16);
      v35 = *(v73 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1CFB8E10C((v35 > 1), v36 + 1, 1);
        v34 = v71;
      }

      ++v28;
      *(v73 + 16) = v36 + 1;
      sub_1CFB66A0C(v34 + 9, (v73 + 32 * v36 + 32));
    }

    while (v26 != v28);
    v37 = v71[31];
    v38 = sub_1CFB8FB20();

    [v37 setResults_];

    v74 = MEMORY[0x1E69E7CC0];
    sub_1CFB8E0EC(0, v26 & ~(v26 >> 63), 0);
    v39 = 0;
    do
    {
      if (v30)
      {
        v40 = MEMORY[0x1D386D910](v39, v29);
      }

      else
      {
        v40 = *(v29 + 8 * v39 + 32);
      }

      v41 = v40;
      v42 = [v40 contact];
      v43 = [v42 identifier];

      v44 = sub_1CFB8FA90();
      v46 = v45;

      v48 = *(v74 + 16);
      v47 = *(v74 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1CFB8E0EC((v47 > 1), v48 + 1, 1);
      }

      ++v39;
      *(v74 + 16) = v48 + 1;
      v49 = v74 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
    }

    while (v26 != v39);
    v5 = v29;
    v50 = v71;
  }

  else
  {
    v51 = v25[31];
    v50 = v25;
    v52 = sub_1CFB8FB20();

    [v51 setResults_];
  }

  v53 = v50[31];
  v54 = sub_1CFB8FB20();

  [v53 setResultIDs_];

  v55 = [v53 contactsTableViewController];
  v56 = [v53 searchText];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1CFB8FA90();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  v61 = v71[31];
  v62 = &v55[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];
  v63 = *&v55[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText + 8];
  *v62 = v58;
  v62[1] = v60;

  v64 = [v61 contactsTableViewController];
  v65 = *&v64[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults];
  *&v64[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchResults] = v5;

  v64[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_dataSourceNeedsReload] = 1;
  *&v64[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_currentIDSStatusPage] = -1;

  v66 = [v61 delegate];
  if (v66)
  {
    [v66 didCompleteSearchFor_];
    swift_unknownObjectRelease();
  }

  v67 = v71[32];

  v68 = v71[1];

  return v68();
}

uint64_t sub_1CFB83414()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[33];

  swift_willThrow();

  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v5 = v0[39];
  v6 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v6, qword_1EE04C228);
  v7 = v5;
  v8 = sub_1CFB8F7A0();
  v9 = sub_1CFB8FC90();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[39];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1CFB5B000, v8, v9, "ContactsSearchController: Error searching contacts: %@", v12, 0xCu);
    sub_1CFB5DDDC(v13, &unk_1EC4EC6F0, &unk_1CFB920C0);
    MEMORY[0x1D386E190](v13, -1, -1);
    MEMORY[0x1D386E190](v12, -1, -1);
  }

  else
  {
  }

  v16 = v0[32];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1CFB837BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC8C0, &qword_1CFB923F0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
    **(*(v4 + 64) + 40) = sub_1CFB8FB30();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

void sub_1CFB838AC()
{
  v1 = v0;
  v2 = [v0 featureFlags];
  v3 = [v2 callHistorySearchEnabled];

  if (v3)
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v4 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v4, qword_1EE04C228);
    v5 = sub_1CFB8F7A0();
    v6 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1CFB5B000, v5, v6, "ContactsSearchController: cancelling previous search requests", v7, 2u);
      MEMORY[0x1D386E190](v7, -1, -1);
    }

    v8 = [v1 searchManager];
    [v8 cancelPreviousSearch];
  }
}

void sub_1CFB83E68(void *a1)
{
  v2 = v1;
  v4 = [v2 contactsTableViewController];
  v5 = *&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText + 8];
  if (v5)
  {
    v6 = *&v4[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_searchText];
    v10 = v4;
    type metadata accessor for ContactSearchViewCell();
    v7 = swift_dynamicCastClass();
    v4 = v10;
    if (v7)
    {
      v8 = *&v10[OBJC_IVAR____TtC11CallsSearch32ContactSearchTableViewController_contactSearchType];
      v9 = a1;

      sub_1CFB70600(v6, v5, v8);

      v4 = v10;
    }
  }
}

id MPContactsSearchController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1CFB842B4(uint64_t a1)
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
  v12[1] = sub_1CFB66AE0;

  return sub_1CFB81E34(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1CFB843A0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1D386D910](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1D386D910](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1CFB8FE00();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1CFB8FE00();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1CFB8FFB0();
  }

  result = sub_1CFB8FFB0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1CFB845F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CFB77444;

  return sub_1CFB7A0C8(a1, v5);
}

uint64_t sub_1CFB846A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CFB66AE0;

  return sub_1CFB7A0C8(a1, v5);
}

id sub_1CFB84760()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id sub_1CFB8479C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CFB84820(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + 16);
  sub_1CFB8FF20();
  if (!v6)
  {
    return v11;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1CFB6E0B0(i, v10);
    sub_1CFB5D38C(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1CFB8FF00();
    v8 = *(v11 + 16);
    sub_1CFB8FF30();
    sub_1CFB8FF40();
    sub_1CFB8FF10();
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

Swift::Void __swiftcall MPSearchManager.cancelPreviousSearch()()
{
  if ([*&v0[OBJC_IVAR___MPSearchManager_featureFlags] callHistorySearchEnabled])
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v1 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v1, qword_1EE04C228);
    v2 = v0;
    v3 = sub_1CFB8F7A0();
    v4 = sub_1CFB8FCB0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136315138;
      v7 = [v2 logPrefix];
      v8 = sub_1CFB8FA90();
      v10 = v9;

      v11 = sub_1CFB8C3D8(v8, v10, &v16);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_1CFB5B000, v3, v4, "%s Cancelling current search query", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1D386E190](v6, -1, -1);
      MEMORY[0x1D386E190](v5, -1, -1);
    }

    v12 = [v2 serialQueue];
    MEMORY[0x1EEE9AC00](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECA38, &qword_1CFB92560);
    sub_1CFB8FD90();

    v13 = *&v2[OBJC_IVAR___MPSearchManager_query];
    *&v2[OBJC_IVAR___MPSearchManager_query] = 0;

    v14 = [v2 serialQueue];
    MEMORY[0x1EEE9AC00](v14);
    sub_1CFB8FD90();

    v15 = *&v2[OBJC_IVAR___MPSearchManager_userQuery];
    *&v2[OBJC_IVAR___MPSearchManager_userQuery] = 0;
  }
}

uint64_t sub_1CFB84BDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1CFB8FFB0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1CFB8FFB0();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1CFB8E348(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1CFB8E3E8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1CFB84CCC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1CFB65A0C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CFB84DC0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1CFB8FFB0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1CFB8FFB0();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1CFB8E348(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1CFB8E598(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1CFB84EC8()
{
  v1 = *v0;
  sub_1CFB900D0();
  MEMORY[0x1D386DB30](v1);
  return sub_1CFB900F0();
}

uint64_t sub_1CFB84F3C()
{
  v1 = *v0;
  sub_1CFB900D0();
  MEMORY[0x1D386DB30](v1);
  return sub_1CFB900F0();
}

id sub_1CFB85014()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB30, &qword_1CFB91EF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFB91E60;
  v3 = *MEMORY[0x1E69935F8];
  *(v2 + 32) = sub_1CFB8FA90();
  *(v2 + 40) = v4;
  v5 = sub_1CFB8FB20();

  [v1 setBundleIDs_];

  if (*(v0 + OBJC_IVAR___MPSearchManager_searchItemType))
  {
    v6 = MEMORY[0x1E6993608];
  }

  else
  {
    v6 = MEMORY[0x1E6993600];
  }

  v7 = *v6;
  v8 = sub_1CFB8FA90();
  v10 = v9;
  v11 = *MEMORY[0x1E6963EA0];
  v16 = sub_1CFB8FA90();
  v17 = v12;
  MEMORY[0x1D386D530](540884256, 0xE400000000000000);
  MEMORY[0x1D386D530](v8, v10);

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CFB91E60;
  *(v13 + 32) = v16;
  *(v13 + 40) = v17;
  v14 = sub_1CFB8FB20();

  [v1 setFilterQueries_];

  return v1;
}

char *sub_1CFB85338(uint64_t a1, void *a2)
{
  v29 = a1;
  v30 = a2;
  v28 = sub_1CFB8FD70();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFB8FD20();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1CFB8F9E0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v27 = OBJC_IVAR___MPSearchManager_serialQueue;
  v11 = sub_1CFB5D38C(0, &unk_1EE04BD10, 0x1E69E9610);
  v26[1] = "search(withQueryString:)";
  v26[2] = v11;
  sub_1CFB8F9D0();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1CFB6B23C(&qword_1EE04BD30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5D8, &qword_1CFB922D0);
  sub_1CFB5DD2C(&qword_1EE04BD60, &qword_1EC4EC5D8, &qword_1CFB922D0);
  sub_1CFB8FE50();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v28);
  *&v2[v27] = sub_1CFB8FDC0();
  v12 = &v2[OBJC_IVAR___MPSearchManager_kCSQueryFlags];
  *v12 = 1952741219;
  *(v12 + 1) = 0xE400000000000000;
  *&v2[OBJC_IVAR___MPSearchManager_query] = 0;
  *&v2[OBJC_IVAR___MPSearchManager_userQuery] = 0;
  v13 = OBJC_IVAR___MPSearchManager_featureFlags;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v14 = OBJC_IVAR___MPSearchManager_userQueryContext;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x1E6964ED0]) init];
  v15 = &v2[OBJC_IVAR___MPSearchManager_text];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR___MPSearchManager_subscriptionsLabelIDByLabel;
  *&v2[v16] = sub_1CFB6B128(MEMORY[0x1E69E7CC0]);
  v17 = OBJC_IVAR___MPSearchManager_suggestion;
  *&v2[v17] = [objc_opt_self() emptySuggestion];
  v18 = v30;
  *&v2[OBJC_IVAR___MPSearchManager_searchItemType] = v29;
  *&v2[OBJC_IVAR___MPSearchManager_callProviderManager] = v18;
  v31.receiver = v2;
  v31.super_class = MPSearchManager;
  v19 = v18;
  v20 = objc_msgSendSuper2(&v31, sel_init);
  v21 = [v20 fetchSubscriptionsInUseMap];
  v22 = sub_1CFB8FA40();

  v23 = *&v20[OBJC_IVAR___MPSearchManager_subscriptionsLabelIDByLabel];
  *&v20[OBJC_IVAR___MPSearchManager_subscriptionsLabelIDByLabel] = v22;

  v24 = sub_1CFB8FD80();
  [v19 addDelegate:v20 queue:v24];

  return v20;
}

uint64_t sub_1CFB8578C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1CFB8FBC0();
  v3[7] = sub_1CFB8FBB0();
  v5 = sub_1CFB8FB80();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFB8582C, v5, v4);
}

uint64_t sub_1CFB8582C()
{
  if ([*(v0[5] + OBJC_IVAR___MPSearchManager_featureFlags) callHistorySearchEnabled])
  {
    v1 = v0[5];
    v3 = v0[3];
    v2 = v0[4];
    v4 = [v1 queryContext];
    v5 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v6 = sub_1CFB8FA80();
    v7 = [v5 initWithQueryString:v6 queryContext:v4];
    v0[10] = v7;

    v8 = v7;
    v9 = [v1 serialQueue];
    *(swift_task_alloc() + 16) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECA38, &qword_1CFB92560);
    sub_1CFB8FD90();

    v10 = *&v1[OBJC_IVAR___MPSearchManager_query];
    *&v1[OBJC_IVAR___MPSearchManager_query] = v7;

    v11 = sub_1CFB8FBB0();
    v0[11] = v11;
    v12 = swift_task_alloc();
    v0[12] = v12;
    v12[2] = v8;
    v12[3] = v1;
    v12[4] = v3;
    v12[5] = v2;
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v0[13] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB80, &qword_1CFB92610);
    *v14 = v0;
    v14[1] = sub_1CFB85AD0;
    v16 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 2, v11, v16, 0xD000000000000018, 0x80000001CFB94860, sub_1CFB8F17C, v12, v15);
  }

  else
  {
    v17 = v0[7];

    v18 = v0[1];
    v19 = MEMORY[0x1E69E7CC0];

    return v18(v19);
  }
}

uint64_t sub_1CFB85AD0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1CFB85C68;
  }

  else
  {
    v7 = v2[11];
    v8 = v2[12];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1CFB85BF4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CFB85BF4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1CFB85C68()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_1CFB85CF0(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v49 = a3;
  v50 = a5;
  v8 = sub_1CFB8F9A0();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1CFB8F9E0();
  v53 = *(v55 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB88, &qword_1CFB92618);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v63 = sub_1CFB8F188;
  v64 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v51 = &v61;
  v61 = sub_1CFB863F4;
  v62 = &block_descriptor_121;
  v19 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v19);
  (*(v14 + 16))(v17, a1, v13);
  v20 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  v23 = a2;
  v24 = v49;
  *(v22 + 3) = v49;
  *(v22 + 4) = a4;
  v48 = a4;
  v25 = v50;
  *(v22 + 5) = v50;
  (*(v14 + 32))(&v22[v20], v17, v13);
  *&v22[v21] = v18;
  v63 = sub_1CFB8F2B0;
  v64 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1CFB86408;
  v62 = &block_descriptor_127;
  v26 = _Block_copy(&aBlock);
  v51 = v18;

  v27 = v23;
  v28 = v24;

  [v27 setCompletionHandler_];
  _Block_release(v26);
  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v29 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v29, qword_1EE04C228);
  v30 = v28;

  v31 = sub_1CFB8F7A0();
  v32 = sub_1CFB8FCB0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock = v34;
    *v33 = 136315394;
    v35 = [v30 logPrefix];
    v36 = sub_1CFB8FA90();
    v38 = v37;

    v39 = sub_1CFB8C3D8(v36, v38, &aBlock);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_1CFB8C3D8(v48, v25, &aBlock);
    _os_log_impl(&dword_1CFB5B000, v31, v32, "%s Beginning search query for queryString %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386E190](v34, -1, -1);
    MEMORY[0x1D386E190](v33, -1, -1);
  }

  v40 = [v30 serialQueue];
  v41 = swift_allocObject();
  *(v41 + 16) = v27;
  v63 = sub_1CFB8F578;
  v64 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1CFB623CC;
  v62 = &block_descriptor_133;
  v42 = _Block_copy(&aBlock);
  v43 = v27;
  v44 = v52;
  sub_1CFB8F9B0();
  v58 = MEMORY[0x1E69E7CC0];
  sub_1CFB6B23C(&qword_1EE04BD78, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC290, &qword_1CFB91EA8);
  sub_1CFB5DD2C(&unk_1EE04BD68, &unk_1EC4EC290, &qword_1CFB91EA8);
  v45 = v54;
  v46 = v57;
  sub_1CFB8FE50();
  MEMORY[0x1D386D7F0](0, v44, v45, v42);
  _Block_release(v42);

  (*(v56 + 8))(v45, v46);
  (*(v53 + 8))(v44, v55);
}

void sub_1CFB86408(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1CFB865FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CFB8FBC0();
  v3[5] = sub_1CFB8FBB0();
  v5 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB86698, v5, v4);
}

uint64_t sub_1CFB86698()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v4);
  v5 = sub_1CFB8FA90();
  v7 = v6;
  v0[7] = v6;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1CFB86774;
  v10 = v0[4];

  return sub_1CFB8578C(v5, v7);
}

uint64_t sub_1CFB86774()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 32);
  v8 = *v1;

  if (v0)
  {
    if (v6)
    {
      v9 = *(v3 + 48);
      v10 = sub_1CFB8F630();

      v9[2](v9, 0, v10);
      v11 = v9;
LABEL_6:
      _Block_release(v11);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v12 = *(v3 + 48);
      v10 = sub_1CFB8FB20();

      v12[2](v12, v10, 0);
      v11 = v12;
      goto LABEL_6;
    }
  }

LABEL_9:
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1CFB86968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[34] = sub_1CFB8FBC0();
  v4[35] = sub_1CFB8FBB0();
  v6 = sub_1CFB8FB80();
  v4[36] = v6;
  v4[37] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFB86A08, v6, v5);
}

uint64_t sub_1CFB86A08()
{
  if (![*(*(v0 + 264) + OBJC_IVAR___MPSearchManager_featureFlags) callHistorySearchEnabled])
  {
    v24 = *(v0 + 280);

    v25 = *(v0 + 8);
    v26 = MEMORY[0x1E69E7CC0];

    return v25(v26);
  }

  v1 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 256);
  *(v0 + 208) = MEMORY[0x1E69E7CC0];
  v80 = v2 >> 62;
  v81 = v2;
  if (v2 >> 62)
  {
LABEL_59:
    v85 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_1CFB8FFB0();
    v2 = *(v0 + 256);
  }

  else
  {
    v85 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 304) = v1;
  v84 = v0;
  if (v3)
  {
    v4 = 0;
    v83 = v2 + 32;
    v82 = v3;
    while (1)
    {
      if ((v81 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D386D910](v4, *(v0 + 256));
      }

      else
      {
        v2 = *(v85 + 16);
        if (v4 >= v2)
        {
          goto LABEL_58;
        }

        v5 = *(v83 + 8 * v4);
      }

      v6 = v5;
      if (__OFADD__(v4++, 1))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v8 = [v5 representedObject];
      if (!v8)
      {
        __break(1u);
        return MEMORY[0x1EEE6DE38](v8, v9, v10, v11, v12, v13, v14, v15);
      }

      sub_1CFB8FE40();
      swift_unknownObjectRelease();
      sub_1CFB66A0C((v0 + 176), (v0 + 144));
      sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
      swift_dynamicCast();
      v16 = *(v0 + 216);
      v17 = [v16 suggestionTokens];
      sub_1CFB5D38C(0, &qword_1EC4ECB40, 0x1E6964EF0);
      v1 = sub_1CFB8FB30();

      v87 = v6;
      if (v1 >> 62)
      {
        v18 = sub_1CFB8FFB0();
        if (!v18)
        {
          goto LABEL_6;
        }

LABEL_14:
        v19 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1D386D910](v19, v1);
          }

          else
          {
            v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v19 >= v2)
            {
              goto LABEL_56;
            }

            v20 = *(v1 + 8 * v19 + 32);
          }

          v21 = v20;
          v0 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          if ([v20 tokenKind])
          {
            break;
          }

          ++v19;
          if (v0 == v18)
          {
            goto LABEL_6;
          }
        }

        v22 = v21;
        v0 = v84;
        MEMORY[0x1D386D560]();
        if (*((*(v0 + 208) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 208) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((*(v84 + 208) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CFB8FB50();
        }

        v1 = v84 + 208;
        sub_1CFB8FB70();

        *(v84 + 304) = *(v84 + 208);
        if (v4 == v82)
        {
          break;
        }
      }

      else
      {
        v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_14;
        }

LABEL_6:

        v0 = v84;
        if (v4 == v82)
        {
          break;
        }
      }
    }
  }

  v28 = *(v0 + 264);
  v30 = *(v0 + 240);
  v29 = *(v0 + 248);
  v31 = OBJC_IVAR___MPSearchManager_text;
  *(v0 + 312) = OBJC_IVAR___MPSearchManager_text;
  v32 = &v28[v31];
  v33 = *&v28[v31 + 8];
  *v32 = v30;
  *(v32 + 1) = v29;

  v34 = swift_allocObject();
  *(v0 + 320) = v34;
  *(v34 + 16) = MEMORY[0x1E69E7CC0];

  v35 = sub_1CFB8FA80();
  v36 = [v28 queryStringForSimSearchWithSearchText_];

  if (v36)
  {
    v37 = sub_1CFB8FA90();
    v39 = v38;

    if (v80)
    {
      v46 = *(v0 + 256);
      if (v81 < 0)
      {
        v47 = *(v0 + 256);
      }

      if (sub_1CFB8FFB0())
      {
        goto LABEL_36;
      }
    }

    else if (*(v85 + 16))
    {
LABEL_36:
      v40 = *(v32 + 1);
      *v32 = xmmword_1CFB922E0;

      goto LABEL_38;
    }

    v48 = *(v0 + 264);
    v50 = *(v0 + 240);
    v49 = *(v0 + 248);

    v51 = sub_1CFB8FA80();
    *(v0 + 328) = v51;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_1CFB87390;
    v52 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB10, &qword_1CFB925A8);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1CFB87B24;
    *(v0 + 104) = &block_descriptor_84;
    *(v0 + 112) = v52;
    [v48 fetchResultsForSimSearchWithSearchText:v51 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  v37 = 0;
  v39 = 0;
LABEL_38:
  v41 = *(v0 + 264);
  v42 = &v41[*(v0 + 312)];
  v43 = [v41 suggestion];
  if (*(v42 + 1))
  {
    v44 = *(*(v0 + 264) + *(v0 + 312));

    v45 = sub_1CFB8FA80();
  }

  else
  {
    v45 = 0;
  }

  v53 = *(v0 + 304);
  v54 = *(v0 + 264);
  v55 = objc_opt_self();
  sub_1CFB5D38C(0, &qword_1EC4ECB40, 0x1E6964EF0);
  v56 = sub_1CFB8FB20();

  v57 = [v55 updatedSuggestionWithCurrentSuggestion:v43 userString:v45 tokens:v56];

  [v54 setSuggestion_];
  v58 = [v54 suggestion];
  v59 = [v54 userQueryContextFor_];

  [v54 setUserQueryContext_];
  if (v39)
  {
    v60 = [*(v84 + 264) userQueryContext];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB30, &qword_1CFB91EF0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1CFB91E60;
    *(v61 + 32) = v37;
    *(v61 + 40) = v39;
    v62 = sub_1CFB8FB20();

    [v60 setFilterQueries_];
  }

  v63 = *(v84 + 264);
  v64 = &v63[*(v84 + 312)];
  v66 = *v64;
  v65 = *(v64 + 1);

  v67 = [v63 userQueryContext];
  if (v65)
  {
    v68 = sub_1CFB8FA80();
  }

  else
  {
    v68 = 0;
  }

  v69 = *(v84 + 264);
  v70 = *(v84 + 272);
  v71 = *(v84 + 240);
  v86 = *(v84 + 248);
  v88 = *(v84 + 320);
  v72 = [objc_allocWithZone(MEMORY[0x1E6964EC8]) initWithUserQueryString:v68 userQueryContext:v67];
  *(v84 + 344) = v72;

  v73 = v72;
  v74 = [v69 serialQueue];
  *(swift_task_alloc() + 16) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECA38, &qword_1CFB92560);
  sub_1CFB8FD90();

  v75 = *&v69[OBJC_IVAR___MPSearchManager_userQuery];
  *&v69[OBJC_IVAR___MPSearchManager_userQuery] = v72;

  v76 = sub_1CFB8FBB0();
  *(v84 + 352) = v76;
  v77 = swift_task_alloc();
  *(v84 + 360) = v77;
  v77[2] = v73;
  v77[3] = v88;
  v77[4] = v69;
  v77[5] = v71;
  v77[6] = v86;
  v78 = *(MEMORY[0x1E69E8920] + 4);
  v79 = swift_task_alloc();
  *(v84 + 368) = v79;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB80, &qword_1CFB92610);
  *v79 = v84;
  v79[1] = sub_1CFB87868;
  v10 = MEMORY[0x1E69E85E0];
  v13 = sub_1CFB8EFDC;
  v8 = (v84 + 224);
  v12 = 0x80000001CFB94840;
  v9 = v76;
  v11 = 0xD00000000000001ALL;
  v14 = v77;

  return MEMORY[0x1EEE6DE38](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1CFB87390()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  if (v3)
  {
    v4 = v1[38];

    v5 = v1[36];
    v6 = v1[37];
    v7 = sub_1CFB87A0C;
  }

  else
  {
    v5 = v1[36];
    v6 = v1[37];
    v7 = sub_1CFB874A8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1CFB874A8()
{
  v1 = v0[41];
  v2 = v0[40] + 16;
  sub_1CFB84CCC(v0[29]);

  v3 = v0[33];
  v4 = &v3[v0[39]];
  v5 = [v3 suggestion];
  if (*(v4 + 1))
  {
    v6 = *(v0[33] + v0[39]);

    v7 = sub_1CFB8FA80();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[38];
  v9 = v0[33];
  v10 = objc_opt_self();
  sub_1CFB5D38C(0, &qword_1EC4ECB40, 0x1E6964EF0);
  v11 = sub_1CFB8FB20();

  v12 = [v10 updatedSuggestionWithCurrentSuggestion:v5 userString:v7 tokens:v11];

  [v9 setSuggestion_];
  v13 = [v9 suggestion];
  v14 = [v9 userQueryContextFor_];

  [v9 setUserQueryContext_];
  v15 = v0[33];
  v16 = &v15[v0[39]];
  v18 = *v16;
  v17 = *(v16 + 1);

  v19 = [v15 userQueryContext];
  if (v17)
  {
    v20 = sub_1CFB8FA80();
  }

  else
  {
    v20 = 0;
  }

  v36 = v0[40];
  v21 = v0[33];
  v22 = v0[34];
  v23 = v0[30];
  v24 = v0[31];
  v25 = [objc_allocWithZone(MEMORY[0x1E6964EC8]) initWithUserQueryString:v20 userQueryContext:v19];
  v0[43] = v25;

  v26 = v25;
  v27 = [v21 serialQueue];
  *(swift_task_alloc() + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECA38, &qword_1CFB92560);
  sub_1CFB8FD90();

  v28 = *&v21[OBJC_IVAR___MPSearchManager_userQuery];
  *&v21[OBJC_IVAR___MPSearchManager_userQuery] = v25;

  v29 = sub_1CFB8FBB0();
  v0[44] = v29;
  v30 = swift_task_alloc();
  v0[45] = v30;
  v30[2] = v26;
  v30[3] = v36;
  v30[4] = v21;
  v30[5] = v23;
  v30[6] = v24;
  v31 = *(MEMORY[0x1E69E8920] + 4);
  v32 = swift_task_alloc();
  v0[46] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB80, &qword_1CFB92610);
  *v32 = v0;
  v32[1] = sub_1CFB87868;
  v34 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 28, v29, v34, 0xD00000000000001ALL, 0x80000001CFB94840, sub_1CFB8EFDC, v30, v33);
}

uint64_t sub_1CFB87868()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v10 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_1CFB87A90;
  }

  else
  {
    v7 = v2[44];
    v8 = v2[45];

    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_1CFB8798C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CFB8798C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);

  v3 = *(v0 + 224);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1CFB87A0C()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[35];

  swift_willThrow();

  v5 = v0[42];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1CFB87A90()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[35];

  v6 = v0[47];
  v7 = v0[1];

  return v7();
}

uint64_t sub_1CFB87B24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC8C0, &qword_1CFB923F0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1CFB8FB30();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1CFB87C00(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v50 = a4;
  v51 = a6;
  v58 = a5;
  v9 = sub_1CFB8F9A0();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1CFB8F9E0();
  v53 = *(v55 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB88, &qword_1CFB92618);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  v64 = sub_1CFB8F59C;
  v65 = a3;
  v49 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1CFB863F4;
  v63 = &block_descriptor_87;
  v19 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v19);
  (*(v15 + 16))(v18, a1, v14);
  v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  v23 = a2;
  v24 = v50;
  v25 = v51;
  v26 = v58;
  *(v22 + 3) = v50;
  *(v22 + 4) = v26;
  *(v22 + 5) = v25;
  (*(v15 + 32))(&v22[v20], v18, v14);
  *&v22[v21] = v49;
  v64 = sub_1CFB8EFEC;
  v65 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1CFB86408;
  v63 = &block_descriptor_93;
  v27 = _Block_copy(&aBlock);

  v28 = v23;
  v29 = v24;

  [v28 setCompletionHandler_];
  _Block_release(v27);
  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v30 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v30, qword_1EE04C228);
  v31 = v29;

  v32 = sub_1CFB8F7A0();
  v33 = sub_1CFB8FCB0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock = v35;
    *v34 = 136315394;
    v36 = [v31 logPrefix];
    v37 = sub_1CFB8FA90();
    v39 = v38;

    v40 = sub_1CFB8C3D8(v37, v39, &aBlock);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1CFB8C3D8(v58, v25, &aBlock);
    _os_log_impl(&dword_1CFB5B000, v32, v33, "%s Beginning search query for text %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386E190](v35, -1, -1);
    MEMORY[0x1D386E190](v34, -1, -1);
  }

  v41 = [v31 serialQueue];
  v42 = swift_allocObject();
  *(v42 + 16) = v31;
  v64 = sub_1CFB8F000;
  v65 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1CFB623CC;
  v63 = &block_descriptor_99;
  v43 = _Block_copy(&aBlock);
  v44 = v31;
  v45 = v52;
  sub_1CFB8F9B0();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1CFB6B23C(&qword_1EE04BD78, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC290, &qword_1CFB91EA8);
  sub_1CFB5DD2C(&unk_1EE04BD68, &unk_1EC4EC290, &qword_1CFB91EA8);
  v46 = v54;
  v47 = v57;
  sub_1CFB8FE50();
  MEMORY[0x1D386D7F0](0, v45, v46, v43);
  _Block_release(v43);

  (*(v56 + 8))(v46, v47);
  (*(v53 + 8))(v45, v55);
}

char *sub_1CFB882D0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1CFB8FFB0();
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
    sub_1CFB84CCC(v5);
    return swift_endAccess();
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1CFB8E0EC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v17 = a2;
    v7 = 0;
    v5 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D386D910](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 uniqueIdentifier];
      v11 = sub_1CFB8FA90();
      v13 = v12;

      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1CFB8E0EC((v14 > 1), v15 + 1, 1);
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

void sub_1CFB8844C(void *a1, id a2, void *a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, char *a8, const char *a9)
{
  if ([a2 isCancelled])
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v15 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v15, qword_1EE04C228);
    v16 = a3;

    v17 = sub_1CFB8F7A0();
    v18 = sub_1CFB8FCB0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v60[0] = v20;
      *v19 = 136315394;
      v21 = [v16 logPrefix];
      v22 = sub_1CFB8FA90();
      format = a8;
      v24 = v23;

      v25 = sub_1CFB8C3D8(v22, v24, v60);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1CFB8C3D8(a4, a5, v60);
      _os_log_impl(&dword_1CFB5B000, v17, v18, format, v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386E190](v20, -1, -1);
      MEMORY[0x1D386E190](v19, -1, -1);
    }

    sub_1CFB8EEC8();
    v26 = swift_allocError();
    *v27 = 1;
    v60[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB88, &qword_1CFB92618);
    sub_1CFB8FB90();
  }

  else if (a1)
  {
    v28 = a1;
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v29 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v29, qword_1EE04C228);
    v30 = a3;
    v31 = a1;
    v32 = sub_1CFB8F7A0();
    v33 = sub_1CFB8FC90();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v60[0] = v36;
      *v34 = 136315394;
      v37 = [v30 logPrefix];
      v38 = sub_1CFB8FA90();
      v40 = v39;

      v41 = sub_1CFB8C3D8(v38, v40, v60);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2112;
      v42 = a1;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v43;
      *v35 = v43;
      _os_log_impl(&dword_1CFB5B000, v32, v33, "%s Fetching search results from Spotlight failed with error: %@", v34, 0x16u);
      sub_1CFB5DDDC(v35, &unk_1EC4EC6F0, &unk_1CFB920C0);
      MEMORY[0x1D386E190](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1D386E190](v36, -1, -1);
      MEMORY[0x1D386E190](v34, -1, -1);
    }

    sub_1CFB8EEC8();
    v44 = swift_allocError();
    *v45 = 0;
    v60[0] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB88, &qword_1CFB92618);
    sub_1CFB8FB90();
  }

  else
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v46 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v46, qword_1EE04C228);
    swift_retain_n();
    v47 = a3;

    v48 = sub_1CFB8F7A0();
    v49 = sub_1CFB8FCB0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v60[0] = v51;
      *v50 = 136315650;
      v52 = [v47 logPrefix];
      v53 = sub_1CFB8FA90();
      v55 = v54;

      v56 = sub_1CFB8C3D8(v53, v55, v60);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2048;
      swift_beginAccess();
      v57 = *(*(a7 + 16) + 16);

      *(v50 + 14) = v57;

      *(v50 + 22) = 2080;
      *(v50 + 24) = sub_1CFB8C3D8(a4, a5, v60);
      _os_log_impl(&dword_1CFB5B000, v48, v49, a9, v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386E190](v51, -1, -1);
      MEMORY[0x1D386E190](v50, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v59 = *(a7 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB88, &qword_1CFB92618);
    sub_1CFB8FBA0();
  }
}

uint64_t sub_1CFB88C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1CFB8FBC0();
  v4[6] = sub_1CFB8FBB0();
  v6 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB88CFC, v6, v5);
}

uint64_t sub_1CFB88CFC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v4);
  v6 = sub_1CFB8FA90();
  v8 = v7;
  v0[8] = v7;
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v9 = sub_1CFB8FB30();
  v0[9] = v9;
  v10 = v2;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1CFB88E0C;
  v12 = v0[5];

  return sub_1CFB86968(v6, v8, v9);
}

uint64_t sub_1CFB88E0C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 40);
  v9 = *v1;

  if (v0)
  {
    if (v7)
    {
      v10 = *(v3 + 56);
      v11 = sub_1CFB8F630();

      v10[2](v10, 0, v11);
      v12 = v10;
LABEL_6:
      _Block_release(v12);

      goto LABEL_9;
    }
  }

  else
  {
    if (v7)
    {
      v13 = *(v3 + 56);
      v11 = sub_1CFB8FB20();

      v13[2](v13, v11, 0);
      v12 = v13;
      goto LABEL_6;
    }
  }

LABEL_9:
  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_1CFB89024(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1CFB8F7C0();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = sub_1CFB8FBC0();
  v3[10] = sub_1CFB8FBB0();
  v8 = sub_1CFB8FB80();
  v3[11] = v8;
  v3[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CFB89120, v8, v7);
}

uint64_t sub_1CFB89120()
{
  if ([*(v0[5] + OBJC_IVAR___MPSearchManager_featureFlags) callHistorySearchEnabled])
  {
    v1 = v0[4];
    v2 = v0[5];
    v3 = v0[3];
    v4 = objc_opt_self();
    v5 = [v2 suggestion];
    v6 = sub_1CFB8FA80();
    sub_1CFB5D38C(0, &qword_1EC4ECB40, 0x1E6964EF0);
    v7 = sub_1CFB8FB20();
    v8 = [v4 updatedSuggestionWithCurrentSuggestion:v5 userString:v6 tokens:v7];
    v0[13] = v8;

    if (qword_1EE04BDB8 != -1)
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
    v16 = __swift_project_value_buffer(v11, qword_1EE04C228);
    (*(v12 + 16))(v9, v16, v11);
    v17 = [v13 userQueryContextFor_];
    v0[14] = v17;
    v18 = objc_allocWithZone(MEMORY[0x1E6964EC8]);
    v19 = v17;
    v20 = sub_1CFB8FA80();
    v21 = [v18 initWithUserQueryString:v20 userQueryContext:v19];
    v0[15] = v21;

    v22 = sub_1CFB8FBB0();
    v0[16] = v22;
    v23 = swift_task_alloc();
    v0[17] = v23;
    v23[2] = v21;
    v23[3] = v9;
    v23[4] = v13;
    v24 = *(MEMORY[0x1E69E8920] + 4);
    v25 = swift_task_alloc();
    v0[18] = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB48, &qword_1CFB925D8);
    *v25 = v0;
    v25[1] = sub_1CFB89448;
    v27 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 2, v22, v27, 0xD00000000000001CLL, 0x80000001CFB947E0, sub_1CFB8ED88, v23, v26);
  }

  else
  {
    v28 = v0[10];

    v29 = v0[8];

    v30 = v0[1];
    v31 = MEMORY[0x1E69E7CC0];

    return v30(v31);
  }
}

uint64_t sub_1CFB89448()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1CFB89628;
  }

  else
  {
    v7 = v2[16];
    v8 = v2[17];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1CFB8956C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CFB8956C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);

  v7 = *(v0 + 16);
  (*(v5 + 8))(v4, v6);
  v8 = *(v0 + 64);

  v9 = *(v0 + 8);

  return v9(v7);
}

uint64_t sub_1CFB89628()
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

uint64_t sub_1CFB896F8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v44 = a1;
  v45 = a4;
  v43 = a3;
  v52 = a2;
  v48 = sub_1CFB8F9A0();
  v51 = *(v48 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFB8F9E0();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CFB8F7C0();
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB50, &qword_1CFB925E0);
  v38 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v39 = &v37 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v58 = sub_1CFB8ED94;
  v59 = v16;
  v40 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v41 = &v56;
  v56 = sub_1CFB89DB4;
  v57 = &block_descriptor_48;
  v17 = _Block_copy(&aBlock);

  v18 = v52;
  [v52 setFoundSuggestionsHandler_];
  _Block_release(v17);
  (*(v12 + 16))(v15, v44, v11);
  v19 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v42;
  (*(v9 + 16))(v19, v43, v42);
  v21 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v22 = (v13 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  (*(v12 + 32))(v24 + v21, v39, v38);
  (*(v9 + 32))(v24 + v22, v19, v20);
  v25 = v45;
  *(v24 + v23) = v45;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
  v58 = sub_1CFB8ED9C;
  v59 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1CFB86408;
  v57 = &block_descriptor_54;
  v26 = _Block_copy(&aBlock);

  v27 = v52;
  v28 = v25;

  [v27 setCompletionHandler_];
  _Block_release(v26);
  v29 = [v28 serialQueue];
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  v58 = sub_1CFB8EEB8;
  v59 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1CFB623CC;
  v57 = &block_descriptor_60;
  v31 = _Block_copy(&aBlock);
  v32 = v27;
  v33 = v46;
  sub_1CFB8F9B0();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1CFB6B23C(&qword_1EE04BD78, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC290, &qword_1CFB91EA8);
  sub_1CFB5DD2C(&unk_1EE04BD68, &unk_1EC4EC290, &qword_1CFB91EA8);
  v35 = v47;
  v34 = v48;
  sub_1CFB8FE50();
  MEMORY[0x1D386D7F0](0, v33, v35, v31);
  _Block_release(v31);

  (*(v51 + 8))(v35, v34);
  (*(v49 + 8))(v33, v50);
}

uint64_t sub_1CFB89D54()
{
  swift_beginAccess();

  sub_1CFB84DC0(v0);
  return swift_endAccess();
}

uint64_t sub_1CFB89DC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1CFB5D38C(0, a3, a4);
  v6 = sub_1CFB8FB30();

  v5(v6);
}

void sub_1CFB89E44(void *a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if ([a2 isCancelled])
  {
    sub_1CFB8EEC8();
    v9 = swift_allocError();
    *v10 = 1;
    v28[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB50, &qword_1CFB925E0);
    sub_1CFB8FB90();
  }

  else if (a1)
  {
    v11 = a1;
    v12 = a5;
    v13 = sub_1CFB8F7A0();
    v14 = sub_1CFB8FC90();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v15 = 136315394;
      v18 = [v12 logPrefix];
      v19 = sub_1CFB8FA90();
      v21 = v20;

      v22 = sub_1CFB8C3D8(v19, v21, v28);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2112;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v24;
      *v16 = v24;
      _os_log_impl(&dword_1CFB5B000, v13, v14, "%s Fetching suggestions failed with error: %@", v15, 0x16u);
      sub_1CFB5DDDC(v16, &unk_1EC4EC6F0, &unk_1CFB920C0);
      MEMORY[0x1D386E190](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1D386E190](v17, -1, -1);
      MEMORY[0x1D386E190](v15, -1, -1);
    }

    sub_1CFB8EEC8();
    v25 = swift_allocError();
    *v26 = 0;
    v28[0] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB50, &qword_1CFB925E0);
    sub_1CFB8FB90();
  }

  else
  {
    swift_beginAccess();
    v27 = *(a6 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB50, &qword_1CFB925E0);
    sub_1CFB8FBA0();
  }
}

uint64_t sub_1CFB8A284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CFB8FBC0();
  v3[5] = sub_1CFB8FBB0();
  v5 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB8A320, v5, v4);
}

uint64_t sub_1CFB8A320()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v4);
  v5 = sub_1CFB8FA90();
  v7 = v6;
  v0[7] = v6;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1CFB8A3FC;
  v10 = v0[4];

  return sub_1CFB89024(v5, v7);
}

uint64_t sub_1CFB8A3FC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 32);
  v8 = *v1;

  if (v0)
  {
    if (v6)
    {
      v9 = *(v3 + 48);
      v10 = sub_1CFB8F630();

      v9[2](v9, 0, v10);
      v11 = v9;
LABEL_6:
      _Block_release(v11);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v12 = *(v3 + 48);
      sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
      v10 = sub_1CFB8FB20();

      v12[2](v12, v10, 0);
      v11 = v12;
      goto LABEL_6;
    }
  }

LABEL_9:
  v13 = *(v8 + 8);

  return v13();
}

id sub_1CFB8A604(uint64_t a1)
{
  v2 = [objc_opt_self() userQueryContextWithCurrentSuggestion_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB30, &qword_1CFB91EF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CFB91E60;
  v4 = *MEMORY[0x1E69935F8];
  *(v3 + 32) = sub_1CFB8FA90();
  *(v3 + 40) = v5;
  v6 = v2;
  v7 = sub_1CFB8FB20();

  [v6 setBundleIDs_];

  if (*(v1 + OBJC_IVAR___MPSearchManager_searchItemType))
  {
    v8 = MEMORY[0x1E6993608];
  }

  else
  {
    v8 = MEMORY[0x1E6993600];
  }

  v9 = *v8;
  v10 = sub_1CFB8FA90();
  v12 = v11;
  v13 = *MEMORY[0x1E6963EA0];
  v18 = sub_1CFB8FA90();
  v19 = v14;
  MEMORY[0x1D386D530](540884256, 0xE400000000000000);
  MEMORY[0x1D386D530](v10, v12);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1CFB91E60;
  *(v15 + 32) = v18;
  *(v15 + 40) = v19;
  v16 = sub_1CFB8FB20();

  [v6 setFilterQueries_];

  [v6 setEnableSuggestionTokens_];
  return v6;
}

unint64_t sub_1CFB8A830()
{
  v1 = sub_1CFB8F730();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*&v0[OBJC_IVAR___MPSearchManager_featureFlags] callHistorySearchEnabled])
  {
    v6 = [v0 callProviderManager];
    v7 = [v6 telephonyProvider];

    v8 = [v7 prioritizedSenderIdentities];
    v9 = [v8 array];

    v10 = sub_1CFB8FB30();
    v11 = sub_1CFB84820(v10, &qword_1EC4ECB28, 0x1E69D8CD8);

    if (!v11)
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v71 = v1;
    v68 = v5;
    if (v11 >> 62)
    {
      if (sub_1CFB8FFB0() >= 2)
      {
        v62 = sub_1CFB8FFB0();
        if (!v62)
        {

          v72 = MEMORY[0x1E69E7CC8];
LABEL_19:
          if (qword_1EE04BDB8 != -1)
          {
            swift_once();
          }

          v45 = sub_1CFB8F7C0();
          __swift_project_value_buffer(v45, qword_1EE04C228);
          v46 = v0;
          v47 = sub_1CFB8F7A0();
          v48 = sub_1CFB8FCB0();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v73 = v50;
            *v49 = 136315394;
            v51 = [v46 logPrefix];
            v52 = sub_1CFB8FA90();
            v54 = v53;

            v55 = sub_1CFB8C3D8(v52, v54, &v73);

            *(v49 + 4) = v55;
            *(v49 + 12) = 2080;
            v56 = v72;

            v57 = sub_1CFB8FA50();
            v59 = v58;

            v60 = sub_1CFB8C3D8(v57, v59, &v73);

            *(v49 + 14) = v60;
            _os_log_impl(&dword_1CFB5B000, v47, v48, "%s Updating subscriptions to %s", v49, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386E190](v50, -1, -1);
            MEMORY[0x1D386E190](v49, -1, -1);
          }

          else
          {

            return v72;
          }

          return v56;
        }

        if (v62 >= 1)
        {
          v12 = v62;
LABEL_6:
          v65 = v0;
          v13 = 0;
          v70 = v11 & 0xC000000000000001;
          v14 = (v2 + 8);
          v72 = MEMORY[0x1E69E7CC8];
          v15 = &selRef_deselectRowAtIndexPath_animated_;
          v16 = &selRef_deselectRowAtIndexPath_animated_;
          v66 = v12;
          v67 = v11;
          do
          {
            if (v70)
            {
              v17 = MEMORY[0x1D386D910](v13, v11);
            }

            else
            {
              v17 = *(v11 + 8 * v13 + 32);
            }

            v18 = v17;
            v19 = [v17 v15[190]];
            v20 = sub_1CFB8FA90();
            v22 = v21;

            v23 = HIBYTE(v22) & 0xF;
            if ((v22 & 0x2000000000000000) == 0)
            {
              v23 = v20 & 0xFFFFFFFFFFFFLL;
            }

            if (v23)
            {
              v24 = [v18 v15[190]];
              v25 = sub_1CFB8FA90();
              v27 = v26;

              v28 = [v18 v16[59]];
              v29 = v68;
              sub_1CFB8F720();

              v30 = sub_1CFB8F700();
              v32 = v31;
              v69 = *v14;
              v69(v29, v71);
              v33 = v72;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v73 = v33;
              sub_1CFB8D9C8(v30, v32, v25, v27, isUniquelyReferenced_nonNull_native);

              v35 = v73;
              sub_1CFB8FD10();
              v36 = [v18 v15[190]];
              sub_1CFB8FA90();

              v37 = sub_1CFB8FD00();
              v39 = v38;

              if (v39)
              {
                v72 = v37;
                v40 = [v18 accountUUID];
                sub_1CFB8F720();

                v41 = sub_1CFB8F700();
                v43 = v42;
                v69(v29, v71);
                v44 = swift_isUniquelyReferenced_nonNull_native();
                v73 = v35;
                sub_1CFB8D9C8(v41, v43, v72, v39, v44);

                v72 = v73;
                v12 = v66;
                v11 = v67;
                v15 = &selRef_deselectRowAtIndexPath_animated_;
                v16 = &selRef_deselectRowAtIndexPath_animated_;
              }

              else
              {
                v72 = v35;

                v12 = v66;
                v11 = v67;
                v15 = &selRef_deselectRowAtIndexPath_animated_;
                v16 = &selRef_deselectRowAtIndexPath_animated_;
              }
            }

            else
            {
            }

            ++v13;
          }

          while (v12 != v13);

          v0 = v65;
          goto LABEL_19;
        }

        __break(1u);
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 > 1)
      {
        goto LABEL_6;
      }
    }
  }

  v63 = MEMORY[0x1E69E7CC0];

  return sub_1CFB6B128(v63);
}

uint64_t sub_1CFB8AF24(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  sub_1CFB8FBC0();
  v3[23] = sub_1CFB8FBB0();
  v5 = sub_1CFB8FB80();
  v3[24] = v5;
  v3[25] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFB8AFC0, v5, v4);
}

uint64_t sub_1CFB8AFC0()
{
  v0[18] = MEMORY[0x1E69E7CC0];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_1CFB8FA80();
  v5 = [v2 queryStringForSimSearchWithSearchText_];
  v0[26] = v5;

  if (v5)
  {
    v6 = v0[22];
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_1CFB8B178;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB10, &qword_1CFB925A8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CFB87B24;
    v0[13] = &block_descriptor_7;
    v0[14] = v7;
    [v6 searchWithQueryString:v5 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v8 = v0[23];

    v9 = v0[1];
    v10 = MEMORY[0x1E69E7CC0];

    return v9(v10);
  }
}

uint64_t sub_1CFB8B178()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);
  if (v3)
  {
    v6 = sub_1CFB8B324;
  }

  else
  {
    v6 = sub_1CFB8B2A8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1CFB8B2A8()
{
  v1 = v0[26];
  v2 = v0[23];

  sub_1CFB84CCC(v0[19]);

  v3 = v0[18];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1CFB8B324()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[23];

  swift_willThrow();

  v4 = v0[1];
  v5 = v0[27];

  return v4();
}

uint64_t sub_1CFB8B524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CFB8FBC0();
  v3[5] = sub_1CFB8FBB0();
  v5 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB8B5C0, v5, v4);
}

uint64_t sub_1CFB8B5C0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v4);
  v5 = sub_1CFB8FA90();
  v7 = v6;
  v0[7] = v6;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1CFB8B69C;
  v10 = v0[4];

  return sub_1CFB8AF24(v5, v7);
}

uint64_t sub_1CFB8B69C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 32);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1CFB8F630();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = sub_1CFB8FB20();

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

void sub_1CFB8B848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CFB8F5E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 subscriptionsLabelIDByLabel];
  v12 = sub_1CFB8FA40();

  v13 = *(v12 + 16);

  if (v13 >= 2)
  {
    v37 = a1;
    v38 = a2;
    sub_1CFB8F5D0();
    sub_1CFB8E990();
    v34 = sub_1CFB8FE20();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    v33 = v3;
    v16 = [v3 subscriptionsLabelIDByLabel];
    v17 = sub_1CFB8FA40();

    v18 = 0;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v17 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      while (1)
      {
        v23 = v18;
LABEL_9:
        v24 = (v23 << 10) | (16 * __clz(__rbit64(v21)));
        v25 = (*(v17 + 48) + v24);
        v27 = *v25;
        v26 = v25[1];
        v28 = (*(v17 + 56) + v24);
        v30 = *v28;
        v29 = v28[1];
        v37 = v27;
        v38 = v26;
        v35 = v34;
        v36 = v15;

        if (!sub_1CFB8FE30())
        {
          break;
        }

        v21 &= v21 - 1;

        v18 = v23;
        if (!v21)
        {
          goto LABEL_6;
        }
      }

      v31 = *MEMORY[0x1E6964730];
      v37 = sub_1CFB8FA90();
      v38 = v32;
      MEMORY[0x1D386D530](8765, 0xE200000000000000);
      MEMORY[0x1D386D530](v30, v29);

      MEMORY[0x1D386D530](34, 0xE100000000000000);
      MEMORY[0x1D386D530](*&v33[OBJC_IVAR___MPSearchManager_kCSQueryFlags], *&v33[OBJC_IVAR___MPSearchManager_kCSQueryFlags + 8]);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v23 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v23 >= v22)
        {

          return;
        }

        v21 = *(v17 + 64 + 8 * v23);
        ++v18;
        if (v21)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1CFB8BCB4()
{
  v1 = *(v0 + OBJC_IVAR___MPSearchManager_searchItemType);
  if (v1 == 2)
  {
    v3 = 0x747365676775535BLL;
  }

  else if (v1 == 1)
  {
    v3 = 0x616D6563696F565BLL;
  }

  else if (v1)
  {
    v3 = 0x6E776F6E6B6E555BLL;
  }

  else
  {
    v3 = 0x205D736C6C61435BLL;
  }

  MEMORY[0x1D386D530](0x614D686372616553, 0xEE003A726567616ELL);
  return v3;
}

id MPSearchManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1CFB8BF1C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1CFB77444;

  return v7();
}

uint64_t sub_1CFB8C004(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CFB66AE0;

  return v8();
}

uint64_t sub_1CFB8C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1CFB7AE70(a3, v25 - v11);
  v13 = sub_1CFB8FBF0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CFB5DDDC(v12, &qword_1EC4EC4B0, &qword_1CFB91F10);
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

  sub_1CFB8FBE0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1CFB8FB80();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1CFB8FAB0() + 32;
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

    sub_1CFB5DDDC(a3, &qword_1EC4EC4B0, &qword_1CFB91F10);

    return v23;
  }

LABEL_8:
  sub_1CFB5DDDC(a3, &qword_1EC4EC4B0, &qword_1CFB91F10);
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

uint64_t sub_1CFB8C3D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CFB8C4A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1CFB6E0B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1CFB8C4A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1CFB8C5B0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1CFB8FEE0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1CFB8C5B0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CFB8C5FC(a1, a2);
  sub_1CFB8C72C(&unk_1F4C63638);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1CFB8C5FC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CFB8C818(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1CFB8FEE0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1CFB8FB00();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CFB8C818(v10, 0);
        result = sub_1CFB8FE90();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1CFB8C72C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1CFB8C88C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1CFB8C818(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECBB0, &qword_1CFB92658);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1CFB8C88C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECBB0, &qword_1CFB92658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1CFB8C994(unsigned int a1)
{
  v3 = MEMORY[0x1D386DB10](*(v1 + 40), a1, 4);

  return sub_1CFB8CA54(a1, v3);
}

unint64_t sub_1CFB8C9DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1CFB900D0();
  sub_1CFB8FAC0();
  v6 = sub_1CFB900F0();

  return sub_1CFB8CAC0(a1, a2, v6);
}

unint64_t sub_1CFB8CA54(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CFB8CAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1CFB90010())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1CFB8CB78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC5F0, &qword_1CFB92090);
  v39 = a2;
  result = sub_1CFB8FFE0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1CFB900D0();
      sub_1CFB8FAC0();
      result = sub_1CFB900F0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1CFB8CE1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5E0, &qword_1CFB92080);
  result = sub_1CFB8FFE0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = MEMORY[0x1D386DB10](*(v8 + 40), v21, 4);
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}