uint64_t sub_2191A548C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191A54EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2191A5530(uint64_t a1)
{
  v12 = *(v1 + 3);
  v13 = *(v1 + 2);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = *(v1 + 8);
  v9 = v1[11];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187609C8;

  return sub_21919F244(v9, a1, v13, v12, v4, v5, v6, v7, v8);
}

uint64_t sub_2191A5634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2191A5678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_2191A1654(a1, v4, v5, v6);
}

uint64_t sub_2191A572C(uint64_t a1, char a2)
{
  (*(*(*v2 + 88) + 80))(a1, a2 & 1, *(*v2 + 80));
  sub_21917FAB4();
  sub_2186EF6FC(&qword_27CC16EE0, sub_21917FAB4);
  sub_219BE6EF4();
}

void sub_2191A5838(uint64_t a1)
{
  v2 = sub_219BEB384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB394();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19[1] = *(a1 + OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_blueprintViewController);
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v10 = sub_219BF01B4();
  v11 = __swift_project_value_buffer(v10, qword_280F61940);
  v9[3] = v10;
  v9[4] = sub_2186EF6FC(&qword_280E91000, MEMORY[0x277D32BC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v15 = sub_219BF54E4();
  v17 = v16;

  v9[5] = v15;
  v9[6] = v17;
  (*(v7 + 104))(v9, *MEMORY[0x277D6EC80], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D6ECB0], v2);
  sub_219BE6BD4();

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  sub_219BE8664();
  v18 = sub_219BE7BC4();

  [v18 ts:0 scrollToTop:?];
}

uint64_t sub_2191A5BC8()
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

uint64_t sub_2191A5DEC()
{
  v0 = sub_219BF1584();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A6024();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF1B74();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (qword_27CC08478 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v0, qword_27CCD88F8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_2191A5BC8();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_2191A5BC8();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_2191A6024()
{
  if (!qword_27CC16EE8)
  {
    sub_2186F1708();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC16EE8);
    }
  }
}

uint64_t sub_2191A6080(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RecipeBoxExpandRequest() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for RecipeBoxGapLocation(0) - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2187609C8;

  return sub_21919D560(a1, v10, v11, v12, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t type metadata accessor for RecipeBoxFailedData()
{
  result = qword_27CC16EF8;
  if (!qword_27CC16EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2191A623C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187608D4;

  return sub_21919BC14(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2191A6308(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187609C8;

  return sub_219199F28(a1, v4, v5, v6, v7);
}

uint64_t sub_2191A63DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_21919B304(a1, v4, v5, v6);
}

uint64_t sub_2191A64C4(uint64_t a1)
{
  v4 = *(type metadata accessor for RecipeFilterConfigFetchResult() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_21919B924(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_10Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2191A6608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_21919A7D4(a1, v4, v5, v6);
}

uint64_t sub_2191A66BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RecipeBoxRefreshRequest() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2187608D4;

  return sub_2191A2694(a1, v7, v8, v9, v10, v1 + v6, v11);
}

void sub_2191A67F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE3774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE3514();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F627F0);
  (*(v10 + 16))(v12, a3, v9);
  (*(v6 + 16))(v8, a2, v5);
  v14 = sub_219BE5414();
  v15 = sub_219BF61F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315394;
    v17 = sub_219BE34B4();
    v27 = v5;
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    v20 = sub_2186D1058(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_219BE3764();
    v23 = v22;
    (*(v6 + 8))(v8, v27);
    v24 = sub_2186D1058(v21, v23, &v29);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_2186C1000, v14, v15, "Handle engagement placement=%s, failed with error=%s", v16, 0x16u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v25, -1, -1);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2191A6B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191A6BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191A6C44(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementDismissal() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2191989F0(a1, v4);
}

void sub_2191A6CB4(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = [v2 indexPathsForVisibleItems];

  sub_219BDC104();
  v4 = sub_219BF5924();

  LOBYTE(v3) = sub_2190890C0(a1, v4);

  if ((v3 & 1) == 0)
  {
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v6 = sub_219BDC094();
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];
  }
}

uint64_t sub_2191A6DD4(uint64_t a1, uint64_t a2, int a3)
{
  v30 = a3;
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDC104();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F938B8(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897EC04();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v31 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953C5C();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDEBD4();
  sub_219BDD344();
  if (v19)
  {
    sub_219BEB1C4();

    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      (*(v16 + 8))(v18, v15);
      v20 = sub_218F938B8;
      return sub_2191A548C(v9, v20);
    }

    v22 = v31;
    (*(v12 + 32))(v31, v9, v11);
    if ((v30 & 1) != 0 || (sub_219BDEB84() & 1) == 0)
    {
      (*(v12 + 8))(v22, v11);
    }

    else
    {
      v9 = v26;
      sub_219BEB2F4();
      v23 = v22;
      v25 = v27;
      v24 = v28;
      if ((*(v27 + 48))(v9, 1, v28) == 1)
      {
        (*(v12 + 8))(v23, v11);
        (*(v16 + 8))(v18, v15);
        v20 = sub_218747BDC;
        return sub_2191A548C(v9, v20);
      }

      (*(v25 + 32))(v29, v9, v24);
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_2191A6CB4(v29);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v25 + 8))(v29, v24);
      (*(v12 + 8))(v31, v11);
    }
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_2191A726C(uint64_t a1)
{
  sub_21896FA3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = *(v1 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = v11 | 0x7000000000000004;
  v13 = *(v1 + 72);
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27[5] = v10;
  sub_219BDC8D4();

  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v27[4] = v12;
  v27[3] = sub_219BDD274();
  v27[0] = v13;
  sub_2189B4E2C(v9, v7);
  v15 = MEMORY[0x277D2D578];
  sub_2187B14CC(v28, v25, &qword_280EE33A0, &qword_280EE33B0);
  v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  sub_2189B4EAC(v7, v18 + v16);
  v19 = v18 + v17;
  v20 = v25[1];
  *v19 = v25[0];
  *(v19 + 16) = v20;
  *(v19 + 32) = v26;
  v21 = (v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v21 = 0;
  v21[1] = 0;
  sub_2186CF94C();
  sub_2189B4DD4();
  swift_retain_n();
  v22 = sub_219BEB454();

  sub_21874504C(v28, &qword_280EE33A0, &qword_280EE33B0, v15, sub_2186C6F70);
  sub_218A42D80(v9);
  sub_21874504C(v27, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return v22;
}

uint64_t sub_2191A75E4(uint64_t a1)
{
  sub_21896FA3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(v1 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v30 = v11;
  v12 = v11 | 0x7000000000000004;
  v13 = *(v1 + 72);
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v10;
  sub_2187B14CC(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0);
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    v15 = qword_280ED32D0;

    if (v15 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {

    sub_21874504C(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = v12;
  v33 = sub_219BDD274();
  *&v32 = v13;
  sub_2189B4E2C(v9, v7);
  sub_2187B14CC(v39, v34, &qword_280EE33A0, &qword_280EE33B0);
  v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = v13;
  sub_2189B4EAC(v7, v22 + v19);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v17;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v16);
  sub_21874504C(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_21874504C(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v29);
  sub_21874504C(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_2191A7BB4()
{
  MEMORY[0x21CECFA80](v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2191A7C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v27 = a1;
  sub_21897EC04();
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_219BEF2A4();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEF974();
  v25 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RecipeBoxLayoutModel();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F02C();
  sub_219BE75E4();
  (*(v12 + 32))(v14, v17, v11);
  v24[2] = *(v4 + 80);
  v24[1] = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v26;
  (*(v6 + 16))(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v26);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v6 + 32))(v21 + v20, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19);

  sub_219BEECF4();

  v22 = sub_219BEF294();
  (*(v28 + 8))(v10, v29);
  (*(v12 + 8))(v14, v25);
  return v22;
}

uint64_t sub_2191A7F54()
{
  v0 = sub_219BF0894();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDF44();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D32F88])
  {
    return (*(v1 + 8))(v3, v0);
  }

  (*(v1 + 96))(v3, v0);
  v4 = sub_219BF13B4();
  v5 = *(v4 - 8);
  if ((*(v5 + 88))(v3, v4) != *MEMORY[0x277D33338])
  {
    return (*(v5 + 8))(v3, v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2191A81C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_2191A7C04(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2191A81F8()
{
  sub_21897EC04();

  return sub_2191A7F54();
}

uint64_t sub_2191A8270()
{
  v1 = v0;
  sub_2186EB308();
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
  v13 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191A9E74(v1, v15, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218799AB4();
      v19 = v23;
      (*(v23 + 32))(v8, v15 + *(v18 + 48), v6);
      v17 = sub_219BF1524();
      (*(v19 + 8))(v8, v6);
      sub_2191A9EDC(v15, type metadata accessor for RecipeBoxGapLocation);
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
    sub_2187998B0();
    sub_2191A9EDC(v15 + *(v20 + 48), type metadata accessor for RecipeBoxGapLocation);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v17 = sub_219BEEBE4();
    (*(v10 + 8))(v12, v9);
  }

  return v17;
}

uint64_t sub_2191A85F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2186EF744(&qword_280EDBEE0, type metadata accessor for RecipeBoxModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2191A8674()
{
  v1 = type metadata accessor for RecipeBoxGapLocation(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191A9E74(v0, v3, type metadata accessor for RecipeBoxGapLocation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2191A9EDC(v3, type metadata accessor for RecipeBoxGapLocation);
    return 0x726F73727563;
  }

  else
  {
    v5 = *v3;
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_219BF7314();

    v9 = 0xD000000000000016;
    v10 = 0x8000000219D0EF20;
    v6 = MEMORY[0x21CECC6D0](v5, MEMORY[0x277D837D0]);
    v8 = v7;

    MEMORY[0x21CECC330](v6, v8);

    return v9;
  }
}

uint64_t sub_2191A87CC()
{
  v1 = sub_219BF0614();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEEC14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v0, v11, type metadata accessor for RecipeBoxModel);
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

    sub_2187998B0();
    v18 = &v11[*(v19 + 48)];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218799AB4();
    v16 = *(v15 + 48);
    v17 = sub_219BF1584();
    (*(*(v17 - 8) + 8))(&v11[v16], v17);
    v18 = v11;
LABEL_7:
    sub_2191A9EDC(v18, type metadata accessor for RecipeBoxGapLocation);
    return 0;
  }

  sub_2191A8ACC(v4);
  v20 = sub_219BF05A4();
  (*(v2 + 8))(v4, v1);
  sub_2191A9EDC(v11, type metadata accessor for RecipeBoxModel);
  return v20;
}

uint64_t sub_2191A8ACC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2186EB308();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF1584();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v2, v15, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218799AB4();
      (*(v10 + 32))(v12, &v15[*(v19 + 48)], v9);
      sub_219BF1524();
      sub_219BF1554();
      sub_219BF1534();
      sub_219BEDB14();
      (*(v10 + 8))(v12, v9);
      v20 = *MEMORY[0x277D32D10];
      v21 = sub_219BF0614();
      (*(*(v21 - 8) + 104))(a1, v20, v21);
      return sub_2191A9EDC(v15, type metadata accessor for RecipeBoxGapLocation);
    }

    (*(v6 + 32))(v8, v15, v5);
    sub_219BF07D4();
    (*(v6 + 8))(v8, v5);
    v18 = MEMORY[0x277D32DF0];
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_2187998B0();
      v24 = *(v23 + 48);
      sub_219BF03C4();
      v25 = *MEMORY[0x277D32DB8];
      v26 = sub_219BF0614();
      (*(*(v26 - 8) + 104))(a1, v25, v26);
      return sub_2191A9EDC(&v15[v24], type metadata accessor for RecipeBoxGapLocation);
    }

    v17 = sub_219BEEC14();
    (*(*(v17 - 8) + 32))(a1, v15, v17);
    v18 = MEMORY[0x277D32DB0];
  }

  v27 = *v18;
  v28 = sub_219BF0614();
  return (*(*(v28 - 8) + 104))(a1, v27, v28);
}

uint64_t sub_2191A8EE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BF0B74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v2, v15, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_2187998B0();
      v21 = type metadata accessor for RecipeBoxGapLocation;
      v22 = &v15[*(v23 + 48)];
      goto LABEL_8;
    }

    v17 = type metadata accessor for RecipeBoxModel;
LABEL_6:
    v21 = v17;
    v22 = v15;
LABEL_8:
    sub_2191A9EDC(v22, v21);
    v24 = sub_219BEAF84();
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218799AB4();
    v19 = *(v18 + 48);
    v20 = sub_219BF1584();
    (*(*(v20 - 8) + 8))(&v15[v19], v20);
    v17 = type metadata accessor for RecipeBoxGapLocation;
    goto LABEL_6;
  }

  (*(v10 + 32))(v12, v15, v9);
  sub_219BF07D4();
  sub_219BF0B54();
  (*(v5 + 8))(v7, v4);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2191A91FC()
{
  v1 = v0;
  v2 = sub_219BF0B74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v1, v13, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_2187998B0();
      v19 = type metadata accessor for RecipeBoxGapLocation;
      v20 = &v13[*(v21 + 48)];
      goto LABEL_8;
    }

    v15 = type metadata accessor for RecipeBoxModel;
LABEL_6:
    v19 = v15;
    v20 = v13;
LABEL_8:
    sub_2191A9EDC(v20, v19);
    return MEMORY[0x277D84F90];
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218799AB4();
    v17 = *(v16 + 48);
    v18 = sub_219BF1584();
    (*(*(v18 - 8) + 8))(&v13[v17], v18);
    v15 = type metadata accessor for RecipeBoxGapLocation;
    goto LABEL_6;
  }

  (*(v8 + 32))(v10, v13, v7);
  sub_219BF07D4();
  v23 = sub_219BF0B44();
  (*(v3 + 8))(v5, v2);
  sub_2191A9F3C(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  sub_219BE6364();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C0B8C0;
  sub_219BE6354();
  sub_219BE62D4();
  sub_219BE6304();

  (*(v8 + 8))(v10, v7);
  return v24;
}

uint64_t sub_2191A95C4()
{
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v1, v3, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_2187998B0();
      sub_2191A9EDC(&v3[*(v5 + 48)], type metadata accessor for RecipeBoxGapLocation);
      return 1;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_6:
    v10 = type metadata accessor for RecipeBoxModel;
    goto LABEL_7;
  }

  sub_218799AB4();
  v8 = *(v7 + 48);
  v9 = sub_219BF1584();
  (*(*(v9 - 8) + 8))(&v3[v8], v9);
  v10 = type metadata accessor for RecipeBoxGapLocation;
LABEL_7:
  sub_2191A9EDC(v3, v10);
  return 0;
}

uint64_t sub_2191A9720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v38 = a1;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a9;
  v11 = sub_219BE57D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  sub_2186EB308();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v10, v25, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_2187998B0();
      v31 = type metadata accessor for RecipeBoxGapLocation;
      v32 = &v25[*(v33 + 48)];
      goto LABEL_8;
    }

    v27 = type metadata accessor for RecipeBoxModel;
LABEL_6:
    v31 = v27;
    v32 = v25;
LABEL_8:
    sub_2191A9EDC(v32, v31);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218799AB4();
    v29 = *(v28 + 48);
    v30 = sub_219BF1584();
    (*(*(v30 - 8) + 8))(&v25[v29], v30);
    v27 = type metadata accessor for RecipeBoxGapLocation;
    goto LABEL_6;
  }

  (*(v17 + 32))(v22, v25, v16);
  (*(v17 + 16))(v20, v22, v16);
  (*(v12 + 16))(v14, v38, v11);
  WitnessTable = swift_getWitnessTable();
  v36 = sub_219876610(v20, v14, v11, WitnessTable);
  (*(v17 + 8))(v22, v16);
  return v36;
}

uint64_t sub_2191A9A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v11 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191A9E74(v9, v13, type metadata accessor for RecipeBoxModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_2187998B0();
      v19 = type metadata accessor for RecipeBoxGapLocation;
      v20 = &v13[*(v21 + 48)];
      goto LABEL_8;
    }

    v15 = type metadata accessor for RecipeBoxModel;
LABEL_6:
    v19 = v15;
    v20 = v13;
LABEL_8:
    sub_2191A9EDC(v20, v19);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218799AB4();
    v17 = *(v16 + 48);
    v18 = sub_219BF1584();
    (*(*(v18 - 8) + 8))(&v13[v17], v18);
    v15 = type metadata accessor for RecipeBoxGapLocation;
    goto LABEL_6;
  }

  v37 = a7;
  sub_2191A9F3C(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C09BA0;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C0EE20;
  v24 = sub_219BE6684();
  v39 = a9;
  v25 = sub_219BE6654();
  if (v25)
  {
    v26 = MEMORY[0x277D6D630];
    v27 = v24;
  }

  else
  {
    v27 = 0;
    v26 = 0;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
  }

  *(v23 + 32) = v25;
  *(v23 + 56) = v27;
  *(v23 + 64) = v26;
  v28 = sub_219BE6634();
  if (v28)
  {
    v29 = MEMORY[0x277D6D630];
    v30 = v24;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    *(v23 + 80) = 0;
    *(v23 + 88) = 0;
  }

  *(v23 + 72) = v28;
  *(v23 + 96) = v30;
  *(v23 + 104) = v29;
  v31 = sub_219BE6614();
  if (v31)
  {
    v32 = MEMORY[0x277D6D630];
    v33 = v24;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    *(v23 + 120) = 0;
    *(v23 + 128) = 0;
  }

  *(v23 + 112) = v31;
  *(v23 + 136) = v33;
  *(v23 + 144) = v32;
  v34 = sub_219BE6664();
  if (v34)
  {
    v35 = MEMORY[0x277D6D630];
  }

  else
  {
    v24 = 0;
    v35 = 0;
    *(v23 + 160) = 0;
    *(v23 + 168) = 0;
  }

  *(v23 + 152) = v34;
  *(v23 + 176) = v24;
  *(v23 + 184) = v35;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v36 = sub_219BE59D4();
  sub_2191A9EDC(v13, type metadata accessor for RecipeBoxModel);
  return v36;
}

uint64_t sub_2191A9E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191A9EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2191A9F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2191A9FA0(uint64_t a1, uint64_t a2)
{
  sub_21879991C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_2191AA974(0, &qword_27CC16F10, type metadata accessor for RecipeBoxGapLocation);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v22 - v14);
  v16 = *(v13 + 56);
  sub_2191A9E74(a1, &v22 - v14, type metadata accessor for RecipeBoxGapLocation);
  sub_2191A9E74(a2, v15 + v16, type metadata accessor for RecipeBoxGapLocation);
  type metadata accessor for RecipeBoxGapLocation(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = *v15;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v18 = sub_219417FCC(v20, *(v15 + v16));

      return v18 & 1;
    }

    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(v15, v5);
LABEL_7:
    sub_2191A9EDC(v15 + v16, type metadata accessor for RecipeBoxGapLocation);
    v18 = 0;
    return v18 & 1;
  }

  v17 = *(v6 + 32);
  v17(v11, v15, v5);
  v17(v9, (v15 + v16), v5);
  type metadata accessor for RecipeBoxFeedServiceConfig();
  sub_2186EF744(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
  v18 = sub_219BF0F64();
  v19 = *(v6 + 8);
  v19(v9, v5);
  v19(v11, v5);
  return v18 & 1;
}

uint64_t sub_2191AA290(uint64_t a1, uint64_t a2)
{
  sub_2186EB308();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - v7;
  v8 = type metadata accessor for RecipeBoxGapLocation(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v49 - v12;
  v13 = sub_219BEEC14();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  sub_2191AA974(0, &qword_27CC16F08, type metadata accessor for RecipeBoxModel);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v49 - v22;
  v24 = &v49 + *(v21 + 56) - v22;
  sub_2191A9E74(a1, &v49 - v22, type metadata accessor for RecipeBoxModel);
  sub_2191A9E74(a2, v24, type metadata accessor for RecipeBoxModel);
  type metadata accessor for RecipeBoxModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        v47 = *(v14 + 32);
        v47(v19, v23, v13);
        v47(v17, v24, v13);
        v29 = sub_219BEEC04();
        v48 = *(v14 + 8);
        v48(v17, v13);
        v48(v19, v13);
        return v29 & 1;
      }

      (*(v14 + 8))(v23, v13);
      goto LABEL_15;
    }

    sub_2187998B0();
    v33 = v32;
    v34 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v35 = *(v33 + 48);
      v36 = &v23[v34];
      v37 = v52;
      sub_2191AA910(v36, v52);
      sub_2191AA910(&v24[v35], v11);
      v29 = sub_2191A9FA0(v37, v11);
      sub_2191A9EDC(v11, type metadata accessor for RecipeBoxGapLocation);
      sub_2191A9EDC(v37, type metadata accessor for RecipeBoxGapLocation);
      return v29 & 1;
    }

    sub_2191A9EDC(&v23[v34], type metadata accessor for RecipeBoxGapLocation);
LABEL_15:
    sub_2191A9EDC(v24, type metadata accessor for RecipeBoxModel);
    v29 = 0;
    return v29 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v39 = v53;
      v38 = v54;
      v40 = *(v53 + 32);
      v41 = v50;
      v40(v50, v23, v54);
      v42 = v51;
      v40(v51, v24, v38);
      sub_219BF0B74();
      v43 = MEMORY[0x277D32FD0];
      sub_2186EF744(&unk_280E90C70, MEMORY[0x277D32FD0]);
      sub_2186EF744(&unk_280E90C80, v43);
      v29 = sub_219BF07C4();
      v44 = *(v39 + 8);
      v44(v42, v38);
      v44(v41, v38);
      return v29 & 1;
    }

    (*(v53 + 8))(v23, v54);
    goto LABEL_15;
  }

  sub_218799AB4();
  v27 = *(v26 + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v45 = sub_219BF1584();
    (*(*(v45 - 8) + 8))(&v23[v27], v45);
    sub_2191A9EDC(v23, type metadata accessor for RecipeBoxGapLocation);
    goto LABEL_15;
  }

  v28 = v52;
  sub_2191AA910(v23, v52);
  sub_2191AA910(v24, v11);
  v29 = sub_2191A9FA0(v28, v11);
  sub_2191A9EDC(v11, type metadata accessor for RecipeBoxGapLocation);
  sub_2191A9EDC(v28, type metadata accessor for RecipeBoxGapLocation);
  v30 = sub_219BF1584();
  v31 = *(*(v30 - 8) + 8);
  v31(&v24[v27], v30);
  v31(&v23[v27], v30);
  return v29 & 1;
}

uint64_t sub_2191AA910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxGapLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2191AA974(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void __swiftcall RecipeBoxModule.createViewController(presentedAsL2:)(UIViewController *__return_ptr retstr, Swift::Bool presentedAsL2)
{
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D2F578], v4);
  v8 = sub_219BDD0F4();
  (*(v5 + 8))(v7, v4);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for RecipeBoxViewController();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = presentedAsL2;

  v10 = sub_219BE1E04();

  if (v10)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191AAB80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_219BE1B84();
}

uint64_t RecipeBoxModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t RecipeBoxModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2191AAD2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2191AAD74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2191AADD8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v71 = a3;
  v72 = a2;
  v67 = a1;
  sub_2191ABA84(0, &qword_27CC0B708, MEMORY[0x277D6DF88]);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v55 - v6;
  v59 = type metadata accessor for RecipeBoxGapLocation(0);
  MEMORY[0x28223BE20](v59);
  v60 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_219BF0BD4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecipeBoxFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897ED8C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953B70();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v61 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  sub_218E49B5C();
  MEMORY[0x28223BE20](v21 - 8);
  sub_2191ABA84(0, &qword_27CC0B150, MEMORY[0x277D6EC60]);
  v74 = v22;
  v66 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  v25 = sub_218701C74(&qword_27CC12A18, sub_218953B70);
  v26 = sub_218701C74(&qword_27CC12A20, sub_218953B70);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v15, v25, v26);
  v27 = type metadata accessor for RecipeBoxSectionDescriptor();
  v28 = type metadata accessor for RecipeBoxModel(0);
  v29 = sub_218701C74(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
  v30 = sub_218701C74(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
  v64 = v28;
  v65 = v27;
  v62 = v30;
  v63 = v29;
  v31 = v16;
  sub_219BEB2D4();
  v32 = *(v3 + 16);
  __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
  sub_2199CFD84(v13);
  v33 = *(v16 + 48);
  v73 = v15;
  if (v33(v13, 1, v15) == 1)
  {
    sub_2191ABC14(v13, sub_21897ED8C);
  }

  else
  {
    (*(v16 + 32))(v20, v13, v73);
    if (*(v3 + 64) == 1)
    {
      type metadata accessor for RecipeBoxFeedServiceConfig();
      sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
      v34 = *(sub_219BEF3E4() + 16);

      if (v34)
      {
        sub_219BEB1E4();
      }
    }

    (*(v16 + 8))(v20, v73);
  }

  if ((v32 >> 61) <= 2 && v32 >> 61 != 1)
  {
    sub_218C571D4();
    v35 = swift_projectBox();
    v36 = v56;
    sub_218A5D7D4(v35, v56);
    __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
    type metadata accessor for RecipeBoxFeedServiceConfig();
    sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);

    v37 = v55;
    sub_219BEE7A4();
    v38 = v61;
    sub_2199D0AE0(v36, v37, v61);
    (*(v57 + 8))(v37, v58);
    sub_219BEB1E4();

    (*(v31 + 8))(v38, v73);
    sub_2191ABC14(v36, type metadata accessor for RecipeBoxFeedGroup);
  }

  type metadata accessor for RecipeBoxFeedServiceConfig();
  sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
  v39 = sub_219BEF3D4();
  if (sub_219BEF394())
  {
    if ((sub_219BEE854() & 1) == 0)
    {
      goto LABEL_18;
    }

    if (v39 < 0)
    {
      goto LABEL_18;
    }

    sub_219BF09A4();
    if (!v75[0])
    {
      goto LABEL_18;
    }

    v40 = *(v75[0] + 24);

    v41 = *(v40 + 16);

    if (!v41)
    {
      goto LABEL_18;
    }

    v42 = swift_allocObject();
    sub_2191ABB78(0, &qword_27CC16F20, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v42 + 16) = sub_219BEE874();
    v43 = v60;
    *v60 = v42;
    v44 = MEMORY[0x277D33068];
  }

  else
  {
    v45 = swift_allocObject();
    sub_2191ABB78(0, &qword_27CC16F20, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v45 + 16) = sub_219BEE874();
    v43 = v60;
    *v60 = v45;
    v44 = MEMORY[0x277D33090];
  }

  v46 = *v44;
  sub_2191ABB78(0, &qword_280E909D8, MEMORY[0x277D33098]);
  (*(*(v47 - 8) + 104))(v43, v46, v47);
  swift_storeEnumTagMultiPayload();
  v48 = v61;
  sub_21912EE84(v43, v61);
  sub_2191ABC14(v43, type metadata accessor for RecipeBoxGapLocation);
  sub_219BEB1E4();
  (*(v31 + 8))(v48, v73);
LABEL_18:
  sub_219BEEFF4();

  sub_219BEEFE4();
  v49 = sub_219BEEFC4();

  v50 = 0;
  if (v49)
  {
    v50 = sub_219BEDC74();
  }

  else
  {
    v75[1] = 0;
    v75[2] = 0;
  }

  v51 = v68;
  v75[0] = v49;
  v76 = v50;
  sub_219BEB2C4();

  sub_218701C74(&qword_27CC0B740, type metadata accessor for RecipeBoxSectionDescriptor);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v75, v76);
  if (sub_219BE6E54())
  {
    v53 = v69;
    v52 = v70;
    (*(v69 + 104))(v51, *MEMORY[0x277D6DF80], v70);
  }

  else
  {
    sub_219BE85C4();
    v53 = v69;
    v52 = v70;
  }

  v72(v51);

  (*(v53 + 8))(v51, v52);
  (*(v66 + 8))(v24, v74);
  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_2191AB960(uint64_t a1)
{
  v2 = sub_21917FF24();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2191AB9A0()
{
  result = qword_27CC16F18;
  if (!qword_27CC16F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16F18);
  }

  return result;
}

void sub_2191ABA84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for RecipeBoxSectionDescriptor();
    v8[1] = type metadata accessor for RecipeBoxModel(255);
    v8[2] = sub_218701C74(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    v8[3] = sub_218701C74(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2191ABB78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RecipeBoxFeedServiceConfig();
    v7 = sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2191ABC14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191ABC74(char a1)
{
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  BYTE8(v8) = 0;
  *&v8 = a1 & 1;
  sub_219BF7484();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = *(&v8 + 1);
  *(v2 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  if (a1)
  {
    sub_2191AD734();
    sub_219BE3204();
    v3 = sub_219BE2E54();
    sub_2191AD7CC();
    sub_219BE2F84();

    v4 = sub_219BE2E54();
    v5 = sub_219BE2F64();
  }

  else
  {
    sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420);
    sub_219BE3204();
    v4 = sub_219BE2E54();
    v5 = sub_219BE2F74();
  }

  v6 = v5;

  return v6;
}

uint64_t sub_2191ABEF0()
{
  sub_2186C6148(0, &qword_280E8E530);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420);
  v1 = sub_219BE2F74();

  return v1;
}

uint64_t sub_2191ABFBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  a2[1] = v2;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_2191ABFF0()
{
  sub_2186C6148(0, &qword_280E8E530);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420);
  sub_219BE2F74();

  swift_getObjectType();
  sub_219BF6A64();
  v1 = sub_219BE31C4();

  return v1;
}

uint64_t sub_2191AC100(int64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  swift_unknownObjectRetain();
  sub_2191AC1D8(v1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_unknownObjectRetain();
  v4 = sub_219BE2E54();
  sub_2191AD7CC();
  v5 = sub_219BE2F74();
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_2191AC1D8(int64_t a1, id a2)
{
  if (([a2 respondsToSelector_] & 1) != 0 && (v4 = objc_msgSend(a2, sel_editorialTopicEventMapping)) != 0)
  {
    v5 = v4;
    sub_2191AD930(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v6 = sub_219BF5214();
  }

  else
  {
    v6 = sub_2194B11A4(MEMORY[0x277D84F90]);
  }

  if (a1 >> 62)
  {
    goto LABEL_52;
  }

  v43 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_53:
    v10 = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D84F90] + 16);
    if (!v24)
    {
      goto LABEL_54;
    }

LABEL_28:
    v25 = 0;
    v26 = v10 + 4;
    v27 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v25 >= v10[2])
      {
        goto LABEL_47;
      }

      v28 = v26[v25];
      v29 = *(v28 + 16);
      a1 = *(v27 + 2);
      v30 = a1 + v29;
      if (__OFADD__(a1, v29))
      {
        goto LABEL_48;
      }

      v31 = v10;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v30 <= *(v27 + 3) >> 1)
      {
        if (!*(v28 + 16))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (a1 <= v30)
        {
          v33 = a1 + v29;
        }

        else
        {
          v33 = a1;
        }

        v27 = sub_218840D24(isUniquelyReferenced_nonNull_native, v33, 1, v27);
        if (!*(v28 + 16))
        {
LABEL_29:

          if (v29)
          {
            goto LABEL_49;
          }

          goto LABEL_30;
        }
      }

      if ((*(v27 + 3) >> 1) - *(v27 + 2) < v29)
      {
        goto LABEL_50;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v34 = *(v27 + 2);
        v35 = __OFADD__(v34, v29);
        v36 = v34 + v29;
        if (v35)
        {
          goto LABEL_51;
        }

        *(v27 + 2) = v36;
      }

LABEL_30:
      ++v25;
      v10 = v31;
      if (v24 == v25)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_7:
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v42 = v10;
    v11 = v8;
    while (1)
    {
      if (v9)
      {
        v12 = MEMORY[0x21CECE0F0](v11, a1);
        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v11 >= *(v43 + 16))
        {
          goto LABEL_46;
        }

        v12 = *(a1 + 8 * v11 + 32);
        swift_unknownObjectRetain();
        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          v43 = a1 & 0xFFFFFFFFFFFFFF8;
          v7 = sub_219BF7214();
          if (!v7)
          {
            goto LABEL_53;
          }

          goto LABEL_7;
        }
      }

      v13 = a1;
      v14 = [v12 identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      if (*(v6 + 16))
      {
        break;
      }

      swift_unknownObjectRelease();

LABEL_10:
      ++v11;
      a1 = v13;
      if (v8 == v7)
      {
        v10 = v42;
        goto LABEL_27;
      }
    }

    v18 = sub_21870F700(v15, v17);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    v21 = *(*(v6 + 56) + 8 * v18);

    swift_unknownObjectRelease();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_2191FA158(0, v42[2] + 1, 1, v42);
    }

    a1 = v13;
    v23 = v42[2];
    v22 = v42[3];
    if (v23 >= v22 >> 1)
    {
      v42 = sub_2191FA158((v22 > 1), v23 + 1, 1, v42);
    }

    v10 = v42;
    v42[2] = v23 + 1;
    v42[v23 + 4] = v21;
  }

  while (v8 != v7);
LABEL_27:
  v24 = v10[2];
  if (v24)
  {
    goto LABEL_28;
  }

LABEL_54:
  v27 = MEMORY[0x277D84F90];
LABEL_55:

  if (*(v27 + 2))
  {
    MEMORY[0x28223BE20](v37);
    sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680);
    sub_219BE3204();

    *(swift_allocObject() + 16) = v6;
    v38 = sub_219BE2E54();
    sub_219BE2F64();

    v39 = sub_219BE2E54();
    v40 = sub_219BE3054();

    return v40;
  }

  else
  {

    if (qword_280EC6B48 != -1)
    {
      swift_once();
    }

    sub_2191AD930(0, &unk_280EE6DD0, &type metadata for SportsFavoritesService.SportsFavoritesMapping, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_219BE3014();
  }
}

uint64_t sub_2191AC778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a4 = a2;
  a4[1] = v4;
  a4[2] = v5;
  a4[3] = a3;

  return swift_unknownObjectRetain();
}

uint64_t sub_2191AC7CC(unint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v7 = [a4 respondsToSelector_];
  v8 = MEMORY[0x277D84F90];
  if ((v7 & 1) != 0 && (v9 = [a4 editorialTopicEventMappingProperties]) != 0)
  {
    v10 = v9;
    sub_2186C6148(0, &unk_280E8DBA0);
    v11 = sub_219BF5214();
  }

  else
  {
    v11 = sub_2194B12F4(MEMORY[0x277D84F90]);
  }

  v59 = v8;
  v60 = v8;
  if (a1 >> 62)
  {
LABEL_65:
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    goto LABEL_60;
  }

  v13 = 0;
  v53 = a1;
  v54 = a1 & 0xC000000000000001;
  v50 = a1 + 32;
  v51 = a1 & 0xFFFFFFFFFFFFFF8;
  v56 = v11;
  v49 = a3;
  v52 = v12;
  do
  {
    if (v54)
    {
      v14 = MEMORY[0x21CECE0F0](v13, a1);
      v15 = __OFADD__(v13, 1);
      v16 = v13 + 1;
      if (v15)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v13 >= *(v51 + 16))
      {
        goto LABEL_63;
      }

      v14 = *(v50 + 8 * v13);
      swift_unknownObjectRetain();
      v15 = __OFADD__(v13, 1);
      v16 = v13 + 1;
      if (v15)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    v55 = v16;
    v17 = [v14 identifier];
    v18 = sub_219BF5414();
    v20 = v19;

    if (!*(a3 + 16))
    {
      goto LABEL_52;
    }

    v21 = sub_21870F700(v18, v20);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_53;
    }

    v24 = *(*(a3 + 56) + 8 * v21);
    v25 = MEMORY[0x277D84F90];
    v58 = MEMORY[0x277D84F90];
    v11 = *(v24 + 16);

    if (!v11)
    {
      goto LABEL_28;
    }

    v26 = 0;
    a1 = v24 + 40;
    do
    {
      a3 = a1 + 16 * v26;
      v27 = v26;
      while (1)
      {
        if (v27 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        if (*(a2 + 16))
        {
          break;
        }

LABEL_21:
        ++v27;
        a3 += 16;
        if (v11 == v27)
        {
          goto LABEL_28;
        }
      }

      v28 = *(a3 - 8);
      v29 = *a3;

      sub_21870F700(v28, v29);
      if ((v30 & 1) == 0)
      {

        goto LABEL_21;
      }

      swift_unknownObjectRetain();

      MEMORY[0x21CECC690](v31);
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      v26 = v27 + 1;
      sub_219BF5A54();
      v25 = v58;
    }

    while (v11 - 1 != v27);
LABEL_28:

    if (v25 >> 62)
    {
      a3 = sub_219BF7214();
    }

    else
    {
      a3 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v52;
    a1 = v53;
    v11 = v56;
    if (!a3)
    {
      a3 = v49;
      goto LABEL_52;
    }

    if (a3 < 1)
    {
      goto LABEL_64;
    }

    v32 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v32, v25);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v33 = [v14 identifier];
      v34 = sub_219BF5414();
      v36 = v35;

      if (*(v11 + 16))
      {
        v37 = sub_21870F700(v34, v36);
        v39 = v38;

        if (v39)
        {
          v40 = [*(*(v56 + 56) + 8 * v37) mappingType];
          sub_219BF5414();
        }
      }

      else
      {
      }

      v41 = sub_219BF7614();

      v42 = swift_unknownObjectRetain();
      MEMORY[0x21CECC690](v42);
      v44 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v43 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (v41)
      {
        if (v43 >> 1 <= v44)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v45 = swift_unknownObjectRetain();
        MEMORY[0x21CECC690](v45);
        v11 = v56;
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
          v11 = v56;
        }

        sub_219BF5A54();
      }

      else
      {
        if (v43 >> 1 <= v44)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v11 = v56;
      }

      v32 = (v32 + 1);
      swift_unknownObjectRelease();
    }

    while (a3 != v32);
    a3 = v49;
    v12 = v52;
    a1 = v53;
LABEL_52:

LABEL_53:
    v46 = swift_unknownObjectRetain();
    MEMORY[0x21CECC690](v46);
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v47 = swift_unknownObjectRetain();
    MEMORY[0x21CECC690](v47);
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
      v11 = v56;
    }

    sub_219BF5A54();
    swift_unknownObjectRelease();
    v13 = v55;
  }

  while (v55 != v12);
LABEL_60:

  sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420);
  sub_218ACCA38();

  sub_219BF56E4();

  sub_219BF56E4();

  swift_bridgeObjectRelease_n();
  sub_2191AD930(0, &qword_280EE6EE8, &type metadata for SportsFavorites, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

unint64_t sub_2191ACF58()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_2194B12D8(MEMORY[0x277D84F90]);
  result = sub_2194B11A4(v0);
  qword_280EC6B50 = v1;
  unk_280EC6B58 = result;
  return result;
}

uint64_t sub_2191ACF9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v2 = [*a1 subscribedTags];
  sub_2186D6710(0, &qword_280E8E680);
  v3 = sub_219BF5924();

  v13 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CECE0F0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v8 = [v6 asSports];
    v9 = swift_unknownObjectRelease();
    ++v5;
    if (v8)
    {
      MEMORY[0x21CECC690](v9);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v12 = v13;
      v5 = v7;
    }
  }

  *a2 = v12;
  return result;
}

uint64_t sub_2191AD160(uint64_t *a1)
{
  v1 = *a1;
  v34 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = *a1 & 0xFFFFFFFFFFFFFF8;
  if (*a1 >> 62)
  {
LABEL_43:
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v33 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](v4, v1);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v4 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        goto LABEL_38;
      }

      v5 = *(v1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    v7 = [v5 asSports];
    v8 = swift_unknownObjectRelease();
    ++v4;
    if (v7)
    {
      MEMORY[0x21CECC690](v8);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v33 = v34;
      v4 = v6;
    }
  }

  v9 = v33;
  if (v33 >> 62)
  {
    v1 = sub_219BF7214();
    v9 = v33;
    if (v1)
    {
      goto LABEL_17;
    }

LABEL_45:

    sub_2191AD930(0, &unk_280EE6DD0, &type metadata for SportsFavoritesService.SportsFavoritesMapping, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_219BE3014();
  }

  v1 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_45;
  }

LABEL_17:
  v10 = 0;
  v31 = v9 & 0xFFFFFFFFFFFFFF8;
  v32 = v9 & 0xC000000000000001;
  v11 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v32)
    {
      v12 = MEMORY[0x21CECE0F0](v10, v9);
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v10 >= *(v31 + 16))
      {
        goto LABEL_40;
      }

      v12 = *(v9 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_39;
      }
    }

    v35 = v13;
    v14 = [v12 identifier];
    v15 = sub_219BF5414();
    v17 = v16;

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v11;
    v19 = sub_21870F700(v15, v17);
    v20 = v11[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_41;
    }

    v23 = v18;
    if (v11[3] < v22)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v18)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_219494534();
      if (v23)
      {
LABEL_18:

        *(v11[7] + 8 * v19) = v12;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

LABEL_30:
    v11[(v19 >> 6) + 8] |= 1 << v19;
    v26 = (v11[6] + 16 * v19);
    *v26 = v15;
    v26[1] = v17;
    *(v11[7] + 8 * v19) = v12;
    swift_unknownObjectRelease();
    v27 = v11[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_42;
    }

    v11[2] = v29;
LABEL_19:
    ++v10;
    v9 = v33;
    if (v35 == v1)
    {
      goto LABEL_45;
    }
  }

  sub_219484640(v22, isUniquelyReferenced_nonNull_native);
  v24 = sub_21870F700(v15, v17);
  if ((v23 & 1) == (v25 & 1))
  {
    v19 = v24;
    if (v23)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_2191AD54C()
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

  if (qword_280EC6B48 != -1)
  {
    swift_once();
  }

  sub_2191AD930(0, &unk_280EE6DD0, &type metadata for SportsFavoritesService.SportsFavoritesMapping, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

void sub_2191AD734()
{
  if (!qword_280E8EC60)
  {
    sub_218A4247C(255, &qword_280E8EC90, &qword_280E8E420);
    sub_2186D6710(255, &qword_280E8E080);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8EC60);
    }
  }
}

void sub_2191AD7CC()
{
  if (!qword_280E8EC70)
  {
    sub_218A4247C(255, &qword_280E8EC90, &qword_280E8E420);
    sub_2186D6710(255, &qword_280E8E080);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8EC70);
    }
  }
}

void sub_2191AD930(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2191ADA04()
{
  result = qword_27CC16F28;
  if (!qword_27CC16F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16F28);
  }

  return result;
}

uint64_t sub_2191ADA78()
{
  v1 = v0;
  v2 = sub_219BDE454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_219BDE404();
    (*(v3 + 8))(v5, v2);

    sub_219BDE6F4();

    swift_unknownObjectRelease();
  }

  sub_2191B2F50(v1 + v6, &qword_280EE8C60, MEMORY[0x277D2FFF0]);

  return v1;
}

uint64_t sub_2191ADC4C()
{
  sub_2191ADA78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeCoordinator()
{
  result = qword_280ED5688;
  if (!qword_280ED5688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2191ADCF8()
{
  sub_2191B326C(319, &qword_280EE8C60, MEMORY[0x277D2FFF0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2191ADDDC(uint64_t a1)
{
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_219BDE454();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  swift_beginAccess();
  sub_2191B32D0(v5, v1 + v8);
  swift_endAccess();
  sub_2191B3364(&qword_280ED5698, type metadata accessor for RecipeCoordinator);
  sub_219BDDF64();
  swift_allocObject();

  sub_219BDDF54();
  sub_219BDE404();
  sub_219BDE6E4();
}

void sub_2191ADFE0(uint64_t a1)
{
  v2 = v1;
  v161 = a1;
  v143 = sub_219BDD804();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v144 = (&v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = sub_219BEF9C4();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_219BDFFE4();
  v145 = *(v160 - 8);
  v5 = MEMORY[0x28223BE20](v160);
  v153 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v6;
  MEMORY[0x28223BE20](v5);
  v158 = &v119 - v7;
  v159 = sub_219BDF104();
  v157 = *(v159 - 8);
  v8 = MEMORY[0x28223BE20](v159);
  v148 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v9;
  MEMORY[0x28223BE20](v8);
  v155 = &v119 - v10;
  v11 = MEMORY[0x277D83D88];
  sub_2191B326C(0, &unk_280EE8200, MEMORY[0x277D2EB90], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v134 = &v119 - v13;
  v131 = sub_219BDF194();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v132 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BE4914();
  v128 = *(v129 - 8);
  v15 = MEMORY[0x28223BE20](v129);
  v127 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v126 = &v119 - v17;
  v156 = sub_219BDF184();
  v154 = *(v156 - 8);
  v18 = MEMORY[0x28223BE20](v156);
  v147 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v19;
  MEMORY[0x28223BE20](v18);
  v163 = &v119 - v20;
  v125 = sub_219BE1544();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_219BE1524();
  v152 = *(v164 - 8);
  v22 = MEMORY[0x28223BE20](v164);
  v146 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v23;
  MEMORY[0x28223BE20](v22);
  v162 = &v119 - v24;
  v25 = sub_219BDF074();
  v150 = *(v25 - 8);
  v151 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v122 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v149 = &v119 - v28;
  v29 = sub_219BDD634();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v121 = &v119 - v34;
  sub_2191B326C(0, &qword_27CC16F40, MEMORY[0x277D2FA28], v11);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v119 - v36;
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], v11);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v119 - v39;
  v41 = sub_219BDE454();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  swift_beginAccess();
  v165 = v2;
  v46 = v2 + v45;
  v47 = v41;
  v48 = v42;
  sub_2191B2FC0(v46, v40);
  if ((*(v42 + 48))(v40, 1, v47) == 1)
  {
    v49 = v161;
    sub_2191B2F50(v40, &qword_280EE8C60, MEMORY[0x277D2FFF0]);
    if (qword_27CC08618 != -1)
    {
      swift_once();
    }

    v50 = sub_219BE5434();
    __swift_project_value_buffer(v50, qword_27CCD8B88);
    (*(v30 + 16))(v33, v49, v29);
    v51 = sub_219BE5414();
    v52 = sub_219BF61F4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v166 = v54;
      *v53 = 136315138;
      v55 = sub_219BDD624();
      v57 = v56;
      (*(v30 + 8))(v33, v29);
      v58 = sub_2186D1058(v55, v57, &v166);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_2186C1000, v51, v52, "Failed to start recipe view session=%s, reason='context is nil'", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x21CECF960](v54, -1, -1);
      MEMORY[0x21CECF960](v53, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v33, v29);
    }
  }

  else
  {
    v59 = *(v42 + 32);
    v120 = v47;
    v59(v44, v40, v47);
    v60 = *(v30 + 16);
    v61 = v161;
    v60(v37, v161, v29);
    (*(v30 + 56))(v37, 0, 1, v29);
    sub_219BDE444();
    v136 = v44;
    sub_2191ADDDC(v44);
    if (qword_27CC08618 != -1)
    {
      swift_once();
    }

    v62 = sub_219BE5434();
    __swift_project_value_buffer(v62, qword_27CCD8B88);
    v63 = v121;
    v60(v121, v61, v29);
    v64 = sub_219BE5414();
    v65 = sub_219BF6214();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v166 = v67;
      *v66 = 136315138;
      v68 = sub_219BDD624();
      v70 = v69;
      (*(v30 + 8))(v63, v29);
      v71 = sub_2186D1058(v68, v70, &v166);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_2186C1000, v64, v65, "Starting view session=%s...", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x21CECF960](v67, -1, -1);
      MEMORY[0x21CECF960](v66, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v63, v29);
    }

    v72 = v127;
    v73 = v149;
    sub_2191AF47C(v165, v149);
    sub_219BDD624();
    (*(v123 + 104))(v124, *MEMORY[0x277D2F3D0], v125);
    (*(v150 + 16))(v122, v73, v151);
    sub_219BE1514();
    v74 = v126;
    sub_219BDE424();
    v75 = v128;
    v76 = v129;
    (*(v128 + 32))(v72, v74, v129);
    v77 = (*(v75 + 88))(v72, v76);
    v78 = v77 == *MEMORY[0x277D353A0];
    v119 = v48;
    if (v78)
    {
      (*(v75 + 96))(v72, v76);
      (*(v130 + 104))(v132, *MEMORY[0x277D2D930], v131);
      __swift_destroy_boxed_opaque_existential_1(v72);
    }

    else if (v77 == *MEMORY[0x277D353B0])
    {
      (*(v75 + 8))(v72, v76);
      (*(v130 + 104))(v132, *MEMORY[0x277D2D938], v131);
    }

    else
    {
      v79 = *MEMORY[0x277D353A8];
      v80 = v77;
      (*(v130 + 104))(v132, *MEMORY[0x277D2D940], v131);
      if (v80 != v79)
      {
        (*(v75 + 8))(v72, v76);
      }
    }

    v81 = *MEMORY[0x277D2EB88];
    v82 = sub_219BE0BC4();
    v83 = *(v82 - 8);
    v84 = v134;
    (*(v83 + 104))(v134, v81, v82);
    (*(v83 + 56))(v84, 0, 1, v82);
    sub_219BDF174();
    v85 = v165;
    v86 = sub_219BDE414();
    v87 = [v86 sourceChannel];

    v88 = v155;
    sub_219BE01F4();
    swift_unknownObjectRelease();
    v89 = sub_219BDE414();
    v90 = v139;
    v91 = v137;
    v92 = v140;
    (*(v139 + 104))(v137, *MEMORY[0x277D32840], v140);
    v93 = v158;
    sub_219BE02B4();

    (*(v90 + 8))(v91, v92);
    v161 = *(v85 + 16);
    v140 = sub_219BDE414();
    v94 = v152;
    (*(v152 + 16))(v146, v162, v164);
    v95 = v157;
    (*(v157 + 16))(v148, v88, v159);
    v96 = v154;
    (*(v154 + 16))(v147, v163, v156);
    v97 = v145;
    (*(v145 + 16))(v153, v93, v160);
    v98 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v99 = (v133 + *(v95 + 80) + v98) & ~*(v95 + 80);
    v100 = (v138 + *(v96 + 80) + v99) & ~*(v96 + 80);
    v101 = (v135 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = (*(v97 + 80) + v101 + 8) & ~*(v97 + 80);
    v103 = swift_allocObject();
    (*(v94 + 32))(v103 + v98, v146, v164);
    v104 = *(v95 + 32);
    v105 = v159;
    v104(v103 + v99, v148, v159);
    v106 = *(v96 + 32);
    v107 = v156;
    v106(v103 + v100, v147, v156);
    v108 = v140;
    *(v103 + v101) = v140;
    v109 = v97;
    v110 = v160;
    (*(v97 + 32))(v103 + v102, v153, v160);
    v111 = v108;
    sub_219BDD154();

    v112 = v136;
    v113 = sub_219BDE414();
    v114 = [v113 identifier];

    sub_219BF5414();
    sub_2191B3054();
    v115 = sub_219BDE414();
    v116 = v144;
    *v144 = v115;
    sub_219BDE3F4();
    (*(v142 + 104))(v116, *MEMORY[0x277D2FAF8], v143);
    sub_219BDE674();
    swift_allocObject();
    v117 = sub_219BDE614();
    v118 = swift_allocObject();
    *(v118 + 16) = v117;
    v166 = v118 | 0x7000000000000004;

    sub_219BE7884();

    (*(v109 + 8))(v158, v110);
    (*(v157 + 8))(v155, v105);
    (*(v154 + 8))(v163, v107);
    (*(v152 + 8))(v162, v164);
    (*(v150 + 8))(v149, v151);
    (*(v119 + 8))(v112, v120);
  }
}

uint64_t sub_2191AF47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_219BDCD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a1 + 16);
  sub_219BDD184();
  sub_2191B326C(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
  v8 = v7;
  v9 = sub_219BDD0A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v37 = v8;
  v35 = v12 + 2 * v11;
  v13 = swift_allocObject();
  v34 = xmmword_219C09EC0;
  *(v13 + 16) = xmmword_219C09EC0;
  v36 = v12;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  (v15)(v13 + v12, *MEMORY[0x277CEAE38], v9);
  v41 = v11;
  v16 = (v14 + v11);
  *v16 = 0x657069636572;
  v16[1] = 0xE600000000000000;
  v17 = *MEMORY[0x277CEAE50];
  v39 = v9;
  v40 = v15;
  v15();
  LOBYTE(v14) = sub_219BDCD14();

  v18 = *(v4 + 8);
  v42 = v3;
  v18(v6, v3);
  if (v14)
  {
    v19 = MEMORY[0x277D2D7F0];
LABEL_5:
    v23 = *v19;
    v24 = sub_219BDF074();
    return (*(*(v24 - 8) + 104))(v43, v23, v24);
  }

  v33[3] = v17;
  sub_219BDD184();
  v20 = v36;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09BA0;
  (v40)(v21 + v20, *MEMORY[0x277CEAE58], v39);
  v22 = sub_219BDCD14();

  v18(v6, v42);
  if (v22)
  {
    v19 = MEMORY[0x277D2D858];
    goto LABEL_5;
  }

  sub_219BDD184();
  v26 = swift_allocObject();
  *(v26 + 16) = v34;
  v27 = (v26 + v20);
  *v27 = 0x657069636572;
  v27[1] = 0xE600000000000000;
  v28 = v26 + v20;
  v29 = v40;
  (v40)(v28, *MEMORY[0x277CEAE48], v39);
  v30 = (v27 + v41);
  *v30 = 0x657069636572;
  v30[1] = 0xE600000000000000;
  v29();
  LOBYTE(v27) = sub_219BDCD14();

  v18(v6, v42);
  v31 = sub_219BDF074();
  if (v27)
  {
    v32 = MEMORY[0x277D2D848];
  }

  else
  {
    v32 = MEMORY[0x277D2D850];
  }

  return (*(*(v31 - 8) + 104))(v43, *v32, v31);
}

uint64_t sub_2191AF898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v14[1] = a6;
  v14[0] = sub_219BDEFE4();
  v7 = *(v14[0] - 8);
  MEMORY[0x28223BE20](v14[0]);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE1524();
  sub_2191B3364(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  sub_219BDCCC4();
  sub_219BDF104();
  sub_2191B3364(&unk_280EE8890, MEMORY[0x277D2D8B8]);
  sub_219BDCCC4();
  sub_219BDF184();
  sub_2191B3364(&qword_280EE8860, MEMORY[0x277D2D928]);
  sub_219BDCCC4();
  v10 = [a5 identifier];
  sub_219BF5414();

  [a5 isPaid];
  v11 = [a5 totalTime];
  sub_219BF5414();

  sub_219BDEFB4();
  sub_2191B3364(&qword_280EE8900, MEMORY[0x277D2D798]);
  v12 = v14[0];
  sub_219BDCCC4();
  (*(v7 + 8))(v9, v12);
  sub_219BDFFE4();
  sub_2191B3364(&unk_280EE84E0, MEMORY[0x277D2E2C0]);
  sub_219BDCCC4();
  sub_219BDF964();
  sub_2191B3364(&qword_27CC16F48, MEMORY[0x277D2DEB0]);
  return sub_219BDCCD4();
}

void sub_2191AFC68(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_219BDD804();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BDD634();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v58 - v10;
  v11 = MEMORY[0x277D83D88];
  sub_2191B326C(0, &qword_27CC16F40, MEMORY[0x277D2FA28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v58 - v13;
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], v11);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - v16;
  v18 = sub_219BDE454();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  swift_beginAccess();
  v23 = &v2[v22];
  v24 = v18;
  v25 = v19;
  sub_2191B2FC0(v23, v17);
  if ((*(v19 + 48))(v17, 1, v24) == 1)
  {
    v26 = v65;
    v27 = v6;
    sub_2191B2F50(v17, &qword_280EE8C60, MEMORY[0x277D2FFF0]);
    if (qword_27CC08618 != -1)
    {
      swift_once();
    }

    v28 = sub_219BE5434();
    __swift_project_value_buffer(v28, qword_27CCD8B88);
    v29 = v61;
    (*(v7 + 16))(v61, v26, v6);
    v30 = sub_219BE5414();
    v31 = sub_219BF61F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v66 = v33;
      *v32 = 136315138;
      v34 = sub_219BDD624();
      v36 = v35;
      (*(v7 + 8))(v29, v27);
      v37 = sub_2186D1058(v34, v36, &v66);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2186C1000, v30, v31, "Failed to cancel recipe view session=%s, reason='context is nil'", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x21CECF960](v33, -1, -1);
      MEMORY[0x21CECF960](v32, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v29, v6);
    }
  }

  else
  {
    v60 = v5;
    v61 = v2;
    v38 = *(v19 + 32);
    v59 = v24;
    v38(v21, v17, v24);
    v39 = *(v7 + 16);
    v40 = v65;
    v39(v14, v65, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
    sub_219BDE444();
    v58 = v21;
    if (qword_27CC08618 != -1)
    {
      swift_once();
    }

    v41 = sub_219BE5434();
    __swift_project_value_buffer(v41, qword_27CCD8B88);
    v42 = v62;
    v39(v62, v40, v6);
    v43 = sub_219BE5414();
    v44 = sub_219BF6214();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66 = v46;
      *v45 = 136315138;
      v47 = sub_219BDD624();
      v49 = v48;
      (*(v7 + 8))(v42, v6);
      v50 = sub_2186D1058(v47, v49, &v66);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_2186C1000, v43, v44, "Canceling recipe view session=%s...", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x21CECF960](v46, -1, -1);
      MEMORY[0x21CECF960](v45, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v42, v6);
    }

    v51 = v58;
    v52 = sub_219BDE414();
    v53 = [v52 identifier];

    sub_219BF5414();
    sub_2191B3054();
    v54 = sub_219BDE414();
    v55 = v60;
    *v60 = v54;
    sub_219BDE3F4();
    (*(v63 + 104))(v55, *MEMORY[0x277D2FAF8], v64);
    sub_219BDE674();
    swift_allocObject();
    v56 = sub_219BDE614();
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    v66 = v57 | 0x7000000000000004;

    sub_219BE7864();

    (*(v25 + 8))(v51, v59);
  }
}

void sub_2191B0450()
{
  v1 = v0;
  v2 = sub_219BDD804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x277D83D88];
  sub_2191B326C(0, &qword_27CC16F40, MEMORY[0x277D2FA28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], v6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_219BDE454();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  swift_beginAccess();
  sub_2191B2FC0(v1 + v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2191B2F50(v12, &qword_280EE8C60, MEMORY[0x277D2FFF0]);
    if (qword_27CC08618 != -1)
    {
      swift_once();
    }

    v18 = sub_219BE5434();
    __swift_project_value_buffer(v18, qword_27CCD8B88);
    v19 = sub_219BE5414();
    v20 = sub_219BF61F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      MEMORY[0x21CECF960](v21, -1, -1);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v22 = sub_219BDD634();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    sub_219BDE444();
    v23 = sub_219BDE414();
    *(swift_allocObject() + 16) = v23;
    v24 = v23;
    v31 = v2;
    v25 = v24;
    sub_219BDD154();

    v26 = sub_219BDE414();
    v27 = [v26 identifier];

    sub_219BF5414();
    sub_2191B3054();
    *v5 = sub_219BDE414();
    sub_219BDDBE4();
    (*(v3 + 104))(v5, *MEMORY[0x277D2FAF8], v31);
    sub_219BDE674();
    swift_allocObject();
    v28 = sub_219BDE614();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    v32 = v29 | 0x7000000000000004;

    sub_219BE7864();

    (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_2191B09A0(int a1, id a2)
{
  v2 = [a2 eventAggregationPersonalizationData];
  if (v2)
  {
    v3 = v2;
    sub_219BDBA04();
  }

  sub_219BDF964();
  v5[3] = sub_219BE04B4();
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_219BE04A4();
  sub_2191B3364(&qword_27CC16F48, MEMORY[0x277D2DEB0]);
  sub_219BDCCE4();
  return sub_218806FD0(v5);
}

uint64_t sub_2191B0A9C(uint64_t a1, const char *a2)
{
  v53 = a2;
  v3 = v2;
  sub_2191B326C(0, &qword_27CC16F40, MEMORY[0x277D2FA28], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = sub_219BDD634();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  if (qword_27CC08618 != -1)
  {
    swift_once();
  }

  v17 = sub_219BE5434();
  __swift_project_value_buffer(v17, qword_27CCD8B88);
  v51 = *(v12 + 16);
  v51(v16, a1, v11);

  v18 = sub_219BE5414();
  v19 = sub_219BF6214();

  v52 = v19;
  v20 = os_log_type_enabled(v18, v19);
  v21 = qword_280ED5000;
  if (v20)
  {
    v45 = v10;
    v47 = v8;
    v48 = a1;
    v22 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v54[0] = v46;
    *v22 = 136315394;
    v23 = sub_219BDD624();
    v25 = v24;
    v50 = v12;
    v26 = v16;
    v27 = *(v12 + 8);
    v27(v26, v11);
    v28 = sub_2186D1058(v23, v25, v54);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
    swift_beginAccess();
    v30 = sub_219BDE454();
    if (!(*(*(v30 - 8) + 48))(v3 + v29, 1, v30))
    {
      v31 = v45;
      sub_219BDE434();
      if (!(*(v50 + 48))(v31, 1, v11))
      {
        v41 = v49;
        v51(v49, v31, v11);
        sub_2191B2F50(v31, &qword_27CC16F40, MEMORY[0x277D2FA28]);
        swift_endAccess();
        v32 = sub_219BDD624();
        v42 = v27;
        v33 = v43;
        v42(v41, v11);
        goto LABEL_8;
      }

      sub_2191B2F50(v31, &qword_27CC16F40, MEMORY[0x277D2FA28]);
    }

    swift_endAccess();
    v32 = 0;
    v33 = 0;
LABEL_8:
    v54[1] = v32;
    v54[2] = v33;
    sub_2186DEEA0(0, &qword_280E8F860);
    v34 = sub_219BF5484();
    v36 = sub_2186D1058(v34, v35, v54);

    *(v22 + 14) = v36;
    _os_log_impl(&dword_2186C1000, v18, v52, v53, v22, 0x16u);
    v37 = v46;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v37, -1, -1);
    MEMORY[0x21CECF960](v22, -1, -1);

    v8 = v47;
    a1 = v48;
    v12 = v50;
    v21 = qword_280ED5000;
    goto LABEL_10;
  }

  (*(v12 + 8))(v16, v11);
LABEL_10:
  v38 = v21[212];
  swift_beginAccess();
  v39 = sub_219BDE454();
  if (!(*(*(v39 - 8) + 48))(v3 + v38, 1, v39))
  {
    v51(v8, a1, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_219BDE444();
  }

  return swift_endAccess();
}

uint64_t sub_2191B100C(void *a1)
{
  v2 = sub_219BDF104();
  v89 = *(v2 - 8);
  v90 = v2;
  MEMORY[0x28223BE20](v2);
  v88 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDEFE4();
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x28223BE20](v4);
  v85 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BDF774();
  v6 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v84 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDF074();
  v82 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BE1544();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BE1524();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BDBD64();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDD634();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191B326C(0, &qword_27CC16F40, MEMORY[0x277D2FA28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v70 = &v67 - v18;
  if (qword_27CC08618 != -1)
  {
    swift_once();
  }

  v19 = sub_219BE5434();
  v20 = __swift_project_value_buffer(v19, qword_27CCD8B88);
  v21 = a1;
  v71 = v20;
  v22 = sub_219BE5414();
  v23 = sub_219BF6214();

  v24 = os_log_type_enabled(v22, v23);
  v91 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v67 = v16;
    v26 = v25;
    v27 = swift_slowAlloc();
    v69 = v13;
    v28 = v27;
    v93[0] = v27;
    *v26 = 136315138;
    v29 = [v21 identifier];
    v68 = v14;
    v30 = v29;
    v31 = v8;
    v32 = sub_219BF5414();
    v34 = v33;

    v35 = v32;
    v8 = v31;
    v36 = sub_2186D1058(v35, v34, v93);
    v21 = v91;

    *(v26 + 4) = v36;
    v14 = v68;
    _os_log_impl(&dword_2186C1000, v22, v23, "Pushing view data for recipe=%s...", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v37 = v28;
    v13 = v69;
    MEMORY[0x21CECF960](v37, -1, -1);
    v38 = v26;
    v16 = v67;
    MEMORY[0x21CECF960](v38, -1, -1);
  }

  v39 = OBJC_IVAR____TtC7NewsUI217RecipeCoordinator_context;
  v40 = v92;
  swift_beginAccess();
  v41 = sub_219BDE454();
  if (!(*(*(v41 - 8) + 48))(v40 + v39, 1, v41))
  {
    v42 = v70;
    sub_219BDE434();
    if (!(*(v14 + 48))(v42, 1, v13))
    {
      (*(v14 + 16))(v16, v42, v13);
      sub_2191B2F50(v42, &qword_27CC16F40, MEMORY[0x277D2FA28]);
      swift_endAccess();
      sub_219BDD624();
      (*(v14 + 8))(v16, v13);
      goto LABEL_11;
    }

    sub_2191B2F50(v42, &qword_27CC16F40, MEMORY[0x277D2FA28]);
  }

  swift_endAccess();
  v43 = v21;
  v44 = sub_219BE5414();
  v45 = sub_219BF61F4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v93[0] = v47;
    *v46 = 136315138;
    v48 = [v43 identifier];
    v49 = sub_219BF5414();
    v51 = v50;

    v52 = sub_2186D1058(v49, v51, v93);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_2186C1000, v44, v45, "Failed to obtain current view session id when pushing data, for recipe=%s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x21CECF960](v47, -1, -1);
    MEMORY[0x21CECF960](v46, -1, -1);
  }

  v53 = v72;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v73 + 8))(v53, v74);
LABEL_11:

  (*(v76 + 104))(v77, *MEMORY[0x277D2F3D0], v78);
  (*(v82 + 104))(v80, *MEMORY[0x277D2D800], v8);
  v54 = v79;
  sub_219BE1514();
  sub_2191B3364(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v55 = v83;
  sub_219BDD1F4();
  (*(v81 + 8))(v54, v55);
  v56 = v84;
  sub_219BDF764();
  sub_2191B3364(&qword_27CC0EC58, MEMORY[0x277D2DD38]);
  v57 = v75;
  sub_219BDD1F4();
  (*(v6 + 8))(v56, v57);
  v58 = v91;
  v59 = [v91 identifier];
  sub_219BF5414();

  [v58 isPaid];
  v60 = [v58 totalTime];
  sub_219BF5414();

  v61 = v85;
  sub_219BDEFB4();
  sub_2191B3364(&qword_280EE8900, MEMORY[0x277D2D798]);
  v62 = v87;
  sub_219BDD1F4();
  (*(v86 + 8))(v61, v62);
  v63 = [v58 sourceChannel];
  v64 = v88;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  sub_2191B3364(&unk_280EE8890, MEMORY[0x277D2D8B8]);
  v65 = v90;
  sub_219BDD1F4();
  return (*(v89 + 8))(v64, v65);
}

uint64_t sub_2191B1C1C(void *a1)
{
  if (qword_27CC08618 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B88);
  v3 = a1;
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = [v3 identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    v12 = sub_2186D1058(v9, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v4, v5, "Beginning to track add to grocery list event for recipe=%{public}s...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  sub_219BE0CB4();
  sub_2191B3364(&qword_27CC16F38, MEMORY[0x277D2EC48]);
  return sub_219BDD214();
}

uint64_t sub_2191B1DFC(void *a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v5 = sub_219BDEFE4();
  v90 = *(v5 - 8);
  v91 = v5;
  MEMORY[0x28223BE20](v5);
  v89 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BDAEC4();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_219BDF014();
  v85 = *(v95 - 8);
  v8 = MEMORY[0x28223BE20](v95);
  v84 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = &v72 - v10;
  v11 = sub_219BDF004();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x28223BE20](v11);
  v86 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_219BDAED4();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  *&v74 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1044();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v72 - v19;
  v20 = sub_219BE0D64();
  v79 = *(v20 - 8);
  v80 = v20;
  MEMORY[0x28223BE20](v20);
  v78 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08618 != -1)
  {
    swift_once();
  }

  v22 = sub_219BE5434();
  __swift_project_value_buffer(v22, qword_27CCD8B88);
  v23 = a1;
  v24 = sub_219BE5414();
  v25 = sub_219BF6214();

  v26 = os_log_type_enabled(v24, v25);
  v81 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v73 = v14;
    v28 = v27;
    v72 = swift_slowAlloc();
    v96 = v72;
    *v28 = 136446210;
    v29 = [v23 identifier];
    v30 = a2;
    v31 = sub_219BF5414();
    v33 = v32;

    v34 = v31;
    a2 = v30;
    v35 = sub_2186D1058(v34, v33, &v96);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_2186C1000, v24, v25, "Pushing add to grocery list event for recipe=%{public}s...", v28, 0xCu);
    v36 = v72;
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x21CECF960](v36, -1, -1);
    v37 = v28;
    v14 = v73;
    MEMORY[0x21CECF960](v37, -1, -1);
  }

  v38 = v76;
  v39 = v75;
  v40 = v74;
  (*(v75 + 16))(v74, a2, v76);
  v41 = (*(v39 + 88))(v40, v38);
  if (v41 == *MEMORY[0x277CFCD60])
  {
    v42 = MEMORY[0x277D2EE70];
LABEL_13:
    v43 = *v42;
    v44 = *(v15 + 104);
LABEL_14:
    v44(v18, v43, v14);
    goto LABEL_15;
  }

  if (v41 == *MEMORY[0x277CFCD68])
  {
    v42 = MEMORY[0x277D2EE78];
    goto LABEL_13;
  }

  if (v41 == *MEMORY[0x277CFCD58])
  {
    v42 = MEMORY[0x277D2EE68];
    goto LABEL_13;
  }

  if (v41 == *MEMORY[0x277CFCD50])
  {
    v42 = MEMORY[0x277D2EE88];
    goto LABEL_13;
  }

  v44 = *(v15 + 104);
  if (v41 == *MEMORY[0x277CFCD70])
  {
    v43 = *MEMORY[0x277D2EE80];
    goto LABEL_14;
  }

  v44(v18, *MEMORY[0x277D2EE90], v14);
  (*(v39 + 8))(v40, v38);
LABEL_15:
  (*(v15 + 32))(v77, v18, v14);
  v45 = v78;
  sub_219BE0D54();
  sub_2191B326C(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v47 = v46;
  v48 = sub_219BDCD44();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v75 = *(v49 + 72);
  v76 = v47;
  v51 = swift_allocObject();
  v74 = xmmword_219C09BA0;
  *(v51 + 16) = xmmword_219C09BA0;
  v52 = *MEMORY[0x277CEAD18];
  v53 = *(v49 + 104);
  v53(v51 + v50, v52, v48);
  sub_2191B3364(&qword_27CC16F30, MEMORY[0x277D2ECB0]);
  v77 = "x-apple-reminderkit://";
  v54 = v80;
  sub_219BDD1F4();

  (*(v79 + 8))(v45, v54);
  v56 = v93;
  v55 = v94;
  v57 = v92;
  (*(v94 + 16))(v93, v82, v92);
  v58 = (*(v55 + 88))(v56, v57);
  if (v58 == *MEMORY[0x277CFCD48])
  {
    v59 = *MEMORY[0x277D2D7B8];
    v61 = v84;
    v60 = v85;
LABEL_19:
    v62 = *(v60 + 104);
    goto LABEL_20;
  }

  v61 = v84;
  v60 = v85;
  if (v58 == *MEMORY[0x277CFCD40])
  {
    v59 = *MEMORY[0x277D2D7C0];
    goto LABEL_19;
  }

  v62 = *(v85 + 104);
  if (v58 != *MEMORY[0x277CFCD38])
  {
    v62(v84, *MEMORY[0x277D2D7C8], v95);
    (*(v94 + 8))(v93, v92);
    goto LABEL_21;
  }

  v59 = *MEMORY[0x277D2D7B0];
LABEL_20:
  v62(v61, v59, v95);
LABEL_21:
  (*(v60 + 32))(v83, v61, v95);
  v63 = v86;
  sub_219BDEFF4();
  v64 = swift_allocObject();
  *(v64 + 16) = v74;
  v53(v64 + v50, v52, v48);
  sub_2191B3364(&qword_27CC152C8, MEMORY[0x277D2D7A8]);
  v65 = v88;
  sub_219BDD1F4();

  (*(v87 + 8))(v63, v65);
  v66 = v81;
  v67 = [v81 identifier];
  sub_219BF5414();

  [v66 isPaid];
  v68 = [v66 totalTime];
  sub_219BF5414();

  v69 = v89;
  sub_219BDEFB4();
  sub_2191B3364(&qword_280EE8900, MEMORY[0x277D2D798]);
  v70 = v91;
  sub_219BDD1F4();
  (*(v90 + 8))(v69, v70);
  return sub_219BDD154();
}

uint64_t sub_2191B29B0()
{
  sub_219BE0CB4();
  sub_2191B3364(&qword_27CC16F38, MEMORY[0x277D2EC48]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_218806FD0(v1);
}

uint64_t sub_2191B2A48(void *a1)
{
  if (qword_27CC08618 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B88);
  v3 = a1;
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = [v3 identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    v12 = sub_2186D1058(v9, v11, &v15);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v4, v5, "Pushing open grocery list event for recipe=%{public}s)...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000016;
  *(v13 + 24) = 0x8000000219D0F050;
  sub_219BDD154();
}

uint64_t sub_2191B2C38()
{
  v0 = sub_219BE1464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE1454();
  sub_2191B326C(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v4 = sub_219BDCD44();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CEAD18], v4);
  sub_2191B3364(&qword_280EE8020, MEMORY[0x277D2F270]);
  sub_219BDCCC4();

  (*(v1 + 8))(v3, v0);
  sub_219BDF334();
  sub_2191B3364(&qword_280EE87E8, MEMORY[0x277D2DA10]);
  memset(v9, 0, sizeof(v9));
  sub_219BDCCE4();
  return sub_218806FD0(v9);
}

uint64_t sub_2191B2F50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2191B326C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2191B2FC0(uint64_t a1, uint64_t a2)
{
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2191B3054()
{
  if (!qword_27CC0CD20)
  {
    sub_218799788();
    sub_219BDDBF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0CD20);
    }
  }
}

uint64_t sub_2191B30C8(uint64_t a1)
{
  v3 = *(sub_219BE1524() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDF104() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BDF184() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_219BDFFE4() - 8);
  v13 = *(v1 + v11);
  v14 = v1 + ((v11 + *(v12 + 80) + 8) & ~*(v12 + 80));

  return sub_2191AF898(a1, v1 + v4, v1 + v7, v1 + v10, v13, v14);
}

void sub_2191B326C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2191B32D0(uint64_t a1, uint64_t a2)
{
  sub_2191B326C(0, &qword_280EE8C60, MEMORY[0x277D2FFF0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2191B3364(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2191B33E8(uint64_t a1, uint64_t a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  sub_21906D640(&v47);
  if (*(a1 + 32) == 2)
  {

    v14 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v14 setAlignment_];
    sub_21899E550();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C0B8C0;
    v16 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v17 = sub_2186C6148(0, &qword_280E8DB00);
    v18 = v16;
    *(inited + 40) = sub_219BF6BD4();
    v19 = *MEMORY[0x277D740C0];
    *(inited + 64) = v17;
    *(inited + 72) = v19;
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 secondaryLabelColor];
    v23 = sub_2186C6148(0, &qword_280E8DA80);
    *(inited + 80) = v22;
    v24 = *MEMORY[0x277D74118];
    *(inited + 104) = v23;
    *(inited + 112) = v24;
    *(inited + 144) = sub_2186C6148(0, &qword_280E8DED8);
    *(inited + 120) = v14;
    v25 = v24;
    v26 = v14;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_218819588();
    swift_arrayDestroy();
    v27 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v28 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_21899E604();
    v29 = sub_219BF5204();

    v30 = [v27 initWithString:v28 attributes:v29];

    v52[0] = v47;
    sub_2189AD3D8(v52);
    v51 = v48;
    sub_2189AD3D8(&v51);

    v53.origin.x = a4;
    v53.origin.y = a5;
    v53.size.width = a6;
    v53.size.height = a7;
    MinX = CGRectGetMinX(v53);
    v54.size.height = a7;
    v45 = a7;
    v32 = a3 - MinX;
    v54.origin.x = a4;
    v54.origin.y = a5;
    v54.size.width = a6;
    v33 = v32 - CGRectGetWidth(v54);
    v46 = a6;
    v34 = *(a2 + *(type metadata accessor for MagazineGridSectionHeaderViewLayoutOptions() + 20) + 24);
    [v30 boundingRectWithSize:3 options:0 context:{v33 - v34, 1.79769313e308}];
    v36 = v35;
    y = v55.origin.y;
    width = v55.size.width;
    v39 = a3;
    height = v55.size.height;
    v41 = v39 - v34;
    v55.origin.x = v36;
    v42 = v41 - CGRectGetWidth(v55);
    v56.origin.x = a4;
    v56.origin.y = a5;
    v56.size.height = v45;
    v56.size.width = v46;
    MinY = CGRectGetMinY(v56);
    v57.origin.x = v36;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    v44 = ceil(CGRectGetWidth(v57));
    v58.origin.x = v36;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v59.size.height = ceil(CGRectGetHeight(v58));
    v59.origin.x = v42;
    v59.origin.y = MinY;
    v59.size.width = v44;
    CGRectIntegral(v59);
  }

  else
  {
    v52[0] = v47;
    sub_2189AD3D8(v52);
    v51 = v48;
    sub_2189AD3D8(&v51);
    v50 = v49;
    sub_2189AD3D8(&v50);
  }
}

double sub_2191B3814@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21906D640(&v82);
  sub_219BE8154();
  v6 = v5;
  sub_219BE8014();
  sub_219BF6034();
  v8 = v6 - v7;
  rect_8 = v6 - v7;
  v75 = sub_219BE8034();
  v9 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v9 setAlignment_];
  [v75 horizontalSizeClass];
  v10 = sub_2186C6148(0, &qword_280E8DB00);
  v11 = sub_219BF6BD4();
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  v13 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 40) = v11;
  v14 = *MEMORY[0x277D740C0];
  *(inited + 64) = v10;
  *(inited + 72) = v14;
  v15 = objc_opt_self();
  v16 = v13;
  v17 = v11;
  v18 = v14;
  v19 = [v15 labelColor];
  v20 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D74118];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  *(inited + 144) = sub_2186C6148(0, &qword_280E8DED8);
  *(inited + 120) = v9;
  v22 = v21;
  v23 = v9;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v26 = sub_219BF5204();

  v27 = [v24 initWithString:v25 attributes:v26];

  v86 = v83;
  sub_2189AD3D8(&v86);
  v85 = v84;
  sub_2189AD3D8(&v85);
  [v27 boundingRectWithSize:3 options:0 context:{v8, 1.79769313e308}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_219BE8014();
  v37 = v36;
  v38 = type metadata accessor for MagazineGridSectionHeaderViewLayoutOptions();
  v39 = *(a2 + v38[6]);
  v87.origin.x = v29;
  v87.origin.y = v31;
  v87.size.width = v33;
  v87.size.height = v35;
  Height = CGRectGetHeight(v87);
  v41 = a2 + v38[5];
  v42 = *(v41 + 16);
  v43 = Height + v42;
  if (v39 <= v43)
  {
    v39 = v43;
  }

  v44 = sub_219BE8034();
  [v44 horizontalSizeClass];
  v45 = sub_219BF6BD4();

  v46 = *(v41 + 8);
  v79 = 0;
  rect = v37;
  v88.origin.y = 0.0;
  v88.origin.x = v37;
  v88.size.width = rect_8;
  v76 = v39;
  v88.size.height = v39;
  v73 = v42;
  v47 = CGRectGetHeight(v88) - v42;
  v89.origin.x = v29;
  v89.origin.y = v31;
  v89.size.width = v33;
  v89.size.height = v35;
  v48 = v47 - CGRectGetHeight(v89);
  [v45 descender];
  v90.origin.y = v48 - v49;
  v90.origin.x = v46;
  v90.size.width = v33;
  v90.size.height = v35;
  v91 = CGRectIntegral(v90);
  x = v91.origin.x;
  y = v91.origin.y;
  width = v91.size.width;
  v53 = v91.size.height;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (((1 << *(a1 + 32)) & 0xB) != 0)
  {
    v57 = *(a2 + v38[7]);
    v58 = rect_8 - *(a2 + v38[8]) - v57;
    v59 = rect;
    v60 = rect_8;
    v61 = v76;
    v92.origin.y = CGRectGetHeight(*(&v54 - 1)) - v73 - v57 + 4.0;
    v92.origin.x = v58;
    v92.size.width = v57;
    v92.size.height = v57;
    *(&v54 - 1) = CGRectIntegral(v92);
    v79 = v62;
  }

  v71 = v56;
  v72 = v55;
  v74 = v54;
  sub_2191B33E8(a1, a2, rect_8, x, y, width, v53);
  v64 = v63;
  v78 = v65;
  v67 = v66;
  v70 = v68;

  result = *(a2 + v38[7]);
  *a3 = rect;
  *(a3 + 8) = 0;
  *(a3 + 16) = rect_8;
  *(a3 + 24) = v76;
  *(a3 + 32) = x;
  *(a3 + 40) = y;
  *(a3 + 48) = width;
  *(a3 + 56) = v53;
  *(a3 + 64) = v79;
  *(a3 + 72) = v74;
  *(a3 + 80) = v72;
  *(a3 + 88) = v71;
  *(a3 + 96) = v64;
  *(a3 + 104) = v78;
  *(a3 + 112) = v67;
  *(a3 + 120) = v70;
  *(a3 + 128) = result;
  return result;
}

uint64_t sub_2191B3D64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDBF94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  if (a1 >> 62)
  {
    result = sub_219BF7214();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_8;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, a1, v11);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_6:
    swift_getObjectType();
    sub_219BF6884();
    swift_unknownObjectRelease();
    v15 = sub_219BDBD34();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v13, 1, v15) != 1)
    {
      sub_219BDBF34();
      sub_219BDBE64();
      (*(v7 + 8))(v9, v6);
      (*(v16 + 8))(v13, v15);
      (*(v16 + 56))(a3, 0, 1, v15);
      goto LABEL_10;
    }

    sub_2189DD39C(v13);
LABEL_8:
    v17 = sub_219BDBD34();
    (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
LABEL_10:
    sub_2191B6B18();
    *(a3 + *(v18 + 48)) = a2;
    type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
    swift_storeEnumTagMultiPayload();
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t sub_2191B4058@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_219BDBF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  swift_getObjectType();
  sub_219BF6884();
  v11 = sub_219BDBD34();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2189DD39C(v10);
    v13 = 1;
  }

  else
  {
    sub_219BDBF34();
    sub_219BDBE64();
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v10, v11);
    v13 = 0;
  }

  (*(v12 + 56))(a2, v13, 1, v11);
  sub_2191B6C98();
  *(a2 + *(v14 + 48)) = a1;
  type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  swift_storeEnumTagMultiPayload();
  return swift_unknownObjectRetain();
}

uint64_t sub_2191B42A4(void **a1, void **a2)
{
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v61 - v8;
  v10 = sub_219BDBD34();
  v65 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v63 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v61 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = [v15 videoType];
  v64 = v6;
  if (v17)
  {
    v18 = v17;
    v19 = sub_219BF5414();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v62 = v14;
  v61[1] = swift_getObjectType();
  v22 = v16;
  v23 = [v16 videoType];
  if (!v23)
  {
    if (!v21)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v24 = v23;
  v25 = sub_219BF5414();
  v27 = v26;

  v16 = v22;
  if (!v21)
  {
    if (!v27)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (!v27)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (v19 == v25 && v21 == v27)
  {

LABEL_25:
    sub_219BF6884();
    v37 = v65;
    v38 = *(v65 + 48);
    if (v38(v9, 1, v10) == 1)
    {
      v39 = v62;
      sub_219BDBBB4();
      v40 = v38(v9, 1, v10);
      v41 = v64;
      if (v40 != 1)
      {
        sub_2189DD39C(v9);
      }
    }

    else
    {
      v39 = v62;
      (*(v37 + 32))(v62, v9, v10);
      v41 = v64;
    }

    sub_219BF6884();
    if (v38(v41, 1, v10) == 1)
    {
      v42 = v63;
      sub_219BDBBB4();
      if (v38(v41, 1, v10) != 1)
      {
        sub_2189DD39C(v41);
      }
    }

    else
    {
      v42 = v63;
      (*(v37 + 32))(v63, v41, v10);
    }

    v43 = sub_219BDBC14();
    v44 = *(v37 + 8);
    v44(v42, v10);
    v44(v39, v10);
    return v43 & 1;
  }

  v36 = sub_219BF78F4();

  if (v36)
  {
    goto LABEL_25;
  }

LABEL_14:
  v28 = [v15 videoType];
  if (v28)
  {
    v29 = v28;
    v30 = sub_219BF5414();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = sub_218E277C4(v30, v32);
  if (v34 > 1)
  {
    if (v34 == 3)
    {
      v35 = 2;
      goto LABEL_39;
    }

    if (v34 == 2)
    {
      v35 = 1;
      goto LABEL_39;
    }
  }

  else
  {
    if (!v34)
    {
      sub_2191B7954(v33, 0);
      v35 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_39;
    }

    if (v34 == 1)
    {
      v35 = 0;
      goto LABEL_39;
    }
  }

  v45 = v33;
  v46 = v34;
  v47 = MEMORY[0x21CECC3E0]();
  result = sub_2191B7954(v45, v46);
  if (v47 < 0)
  {
    v49 = __OFSUB__(0, v47);
    v47 = -v47;
    if (v49)
    {
      __break(1u);
      goto LABEL_57;
    }
  }

  v35 = v47 % 2000000000 + 1000;
LABEL_39:
  v50 = [v16 videoType];
  if (v50)
  {
    v51 = v50;
    v52 = sub_219BF5414();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = sub_218E277C4(v52, v54);
  if (v56 > 1)
  {
    if (v56 == 3)
    {
      v57 = 2;
      goto LABEL_54;
    }

    if (v56 == 2)
    {
      v57 = 1;
      goto LABEL_54;
    }
  }

  else
  {
    if (!v56)
    {
      sub_2191B7954(v55, 0);
      v57 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    if (v56 == 1)
    {
      v57 = 0;
LABEL_54:
      v43 = v35 < v57;
      return v43 & 1;
    }
  }

  v58 = v55;
  v59 = v56;
  v60 = MEMORY[0x21CECC3E0]();
  result = sub_2191B7954(v58, v59);
  if ((v60 & 0x8000000000000000) == 0 || (v49 = __OFSUB__(0, v60), v60 = -v60, !v49))
  {
    v57 = v60 % 2000000000 + 1000;
    goto LABEL_54;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_2191B4878@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_219BDBF94();
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  sub_2191B6AB4(v2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2191B6C98();
    }

    else
    {
      sub_2191B6B18();
    }

    v28 = v41;
    swift_unknownObjectRelease();
    sub_218A5DD60(v8, v23);
    sub_218A5DD60(v23, v11);
    v29 = sub_219BDBD34();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (v31(v11, 1, v29) != 1)
    {
      return (*(v30 + 32))(v28, v11, v29);
    }

    sub_219BDBBB4();
    result = (v31)(v11, 1, v29);
    if (result == 1)
    {
      return result;
    }

    v33 = v11;
    return sub_2189DD39C(v33);
  }

  v39 = *v8;
  v25 = [v39 sportsEventStartTime];
  if (v25)
  {
    v26 = v25;
    sub_219BDBCA4();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v34 = sub_219BDBD34();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v36(v14, v27, 1, v34);
  sub_218A5DD60(v14, v17);
  v37 = *(v35 + 48);
  if (v37(v17, 1, v34) == 1)
  {
    sub_2189DD39C(v17);
    v36(v20, 1, 1, v34);
    sub_219BDBBB4();
    swift_unknownObjectRelease();
    result = v37(v20, 1, v34);
    if (result == 1)
    {
      return result;
    }

    v33 = v20;
    return sub_2189DD39C(v33);
  }

  sub_219BDBF34();
  sub_219BDBE64();
  swift_unknownObjectRelease();
  (*(v40 + 8))(v5, v3);
  (*(v35 + 8))(v17, v34);
  v36(v20, 0, 1, v34);
  return (*(v35 + 32))(v41, v20, v34);
}

uint64_t sub_2191B4D54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v15);
  v53 = &v51 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191B6AB4(v1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v61 = v11;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2191B6C98();
    }

    else
    {
      sub_2191B6B18();
    }

    swift_unknownObjectRelease();
    sub_2189DD39C(v22);
    v30 = *(v1 + *(type metadata accessor for SportsHighlights(0) + 20));
    if (v30 >> 62)
    {
      goto LABEL_39;
    }

    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    v32 = v54;
    v52 = a1;
    if (v31)
    {
      v33 = 0;
      v59 = v30 & 0xFFFFFFFFFFFFFF8;
      v60 = v30 & 0xC000000000000001;
      v58 = (v55 + 56);
      v34 = (v55 + 48);
      v56 = (v55 + 32);
      v35 = MEMORY[0x277D84F90];
      v57 = v31;
      while (1)
      {
        if (v60)
        {
          v36 = MEMORY[0x21CECE0F0](v33, v30);
          v37 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v33 >= *(v59 + 16))
          {
            goto LABEL_38;
          }

          v36 = *(v30 + 8 * v33 + 32);
          swift_unknownObjectRetain();
          v37 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v31 = sub_219BF7214();
            goto LABEL_9;
          }
        }

        v38 = [v36 publishDate];
        if (v38)
        {
          a1 = v61;
          v39 = v38;
          sub_219BDBCA4();

          v40 = 0;
        }

        else
        {
          v40 = 1;
          a1 = v61;
        }

        swift_unknownObjectRelease();
        (*v58)(a1, v40, 1, v32);
        sub_218A5DD60(a1, v14);
        if ((*v34)(v14, 1, v32) == 1)
        {
          sub_2189DD39C(v14);
        }

        else
        {
          v41 = *v56;
          (*v56)(v62, v14, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_2191FA298(0, v35[2] + 1, 1, v35);
          }

          v43 = v35[2];
          v42 = v35[3];
          if (v43 >= v42 >> 1)
          {
            v35 = sub_2191FA298(v42 > 1, v43 + 1, 1, v35);
          }

          v35[2] = v43 + 1;
          v44 = v35 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v43;
          v32 = v54;
          v41(v44, v62, v54);
        }

        ++v33;
        if (v37 == v57)
        {
          goto LABEL_29;
        }
      }
    }

    v35 = MEMORY[0x277D84F90];
LABEL_29:
    v45 = v53;
    sub_2191B537C(v35, v53);

    v46 = v55;
    v47 = *(v55 + 48);
    if (v47(v45, 1, v32) != 1)
    {
      return (*(v46 + 32))(v52, v45, v32);
    }

    sub_219BDBBB4();
    result = (v47)(v45, 1, v32);
    if (result != 1)
    {
      v48 = v45;
      return sub_2189DD39C(v48);
    }
  }

  else
  {
    v24 = [*v22 sportsEventStartTime];
    if (v24)
    {
      v25 = v24;
      sub_219BDBCA4();

      swift_unknownObjectRelease();
      v26 = v54;
      v27 = v55;
      v28 = *(v55 + 32);
      v28(v19, v8, v54);
      (*(v27 + 56))(v19, 0, 1, v26);
      return (v28)(a1, v19, v26);
    }

    v49 = v54;
    v50 = v55;
    (*(v55 + 56))(v19, 1, 1, v54);
    sub_219BDBBB4();
    swift_unknownObjectRelease();
    result = (*(v50 + 48))(v19, 1, v49);
    if (result != 1)
    {
      v48 = v19;
      return sub_2189DD39C(v48);
    }
  }

  return result;
}

uint64_t sub_2191B537C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BDBD34();
  MEMORY[0x28223BE20](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_2191B6C50(&qword_280EE9C90, MEMORY[0x277CC9578]);
        v21 = sub_219BF5334();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_2191B562C(int a1)
{
  v2 = v1;
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (v42 - v8);
  v10 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191B6AB4(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v17 = *v12;
    v18 = sub_2191B59FC(*v12);
    v20 = v19;
    v21 = [objc_msgSend(v17 eventLeagueTag)];
    swift_unknownObjectRelease();
    v22 = [v17 eventLeagueTag];
    if (v21 == 2)
    {
      v23 = [v22 sportsNameAbbreviation];
    }

    else
    {
      v23 = [v22 sportsPrimaryName];
    }

    v33 = v23;
    swift_unknownObjectRelease();
    if (v33)
    {
      v34 = sub_219BF5414();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = [v17 sportsEventStartTime];
    if (v37)
    {
      v38 = v37;
      sub_219BDBCA4();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = sub_219BDBD34();
    (*(*(v40 - 8) + 56))(v9, v39, 1, v40);
    v16 = sub_2191B5E50(a1, v34, v36, v18, v20, v9);
    swift_unknownObjectRelease();

LABEL_20:

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v9 = v6;
    sub_2191B6B18();
    v25 = *(v12 + *(v24 + 48));
    sub_218A5DD60(v12, v6);
    if (v25 && (v42[1] = &unk_282B68F08, (v26 = swift_dynamicCastObjCProtocolConditional()) != 0) && (v27 = [v26 sportsPrimaryName]) != 0)
    {
      v28 = v27;
      v29 = sub_219BF5414();
      v31 = v30;

      v32 = v29;
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }

    v16 = sub_2191B5E50(a1, v32, v31, 0, 0, v9);
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  sub_2191B6C98();
  v15 = [*(v12 + *(v14 + 48)) name];
  v16 = sub_219BF5414();
  swift_unknownObjectRelease();

  v9 = v12;
LABEL_21:
  sub_2189DD39C(v9);
  return v16;
}

id sub_2191B59FC(void *a1)
{
  v2 = sub_219BED484();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v30 - v8;
  result = [a1 eventCompetitorTags];
  if (result)
  {
    v11 = result;
    sub_2186D6710(0, &qword_280E8E420);
    v12 = sub_219BF5924();

    if (v12 >> 62)
    {
      result = sub_219BF7214();
      if (result != 2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result != 2)
      {
LABEL_4:
        if (result != 1)
        {
LABEL_10:

          return 0;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CECE0F0](0, v12);
LABEL_8:
          v14 = [v13 sportsNickname];
          swift_unknownObjectRelease();
          if (v14)
          {

            v15 = sub_219BF5414();

            return v15;
          }

          goto LABEL_10;
        }

        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v12 + 32);
          swift_unknownObjectRetain();
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    v16 = *MEMORY[0x277D31B78];
    v17 = *(v3 + 104);
    result = v17(v9, v16, v2);
    v31 = v12 & 0xC000000000000001;
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CECE0F0](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      swift_unknownObjectRetain();
    }

    v30 = sub_219BED474();
    v19 = v18;
    swift_unknownObjectRelease();
    v20 = *(v3 + 8);
    v20(v9, v2);
    result = v17(v5, v16, v2);
    if (v31)
    {
      MEMORY[0x21CECE0F0](1, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      swift_unknownObjectRetain();
    }

    v21 = v30;

    v22 = sub_219BED474();
    v24 = v23;
    swift_unknownObjectRelease();
    v20(v5, v2);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2186DD8D0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_219C09EC0;
    v28 = MEMORY[0x277D837D0];
    *(v27 + 56) = MEMORY[0x277D837D0];
    v29 = sub_2186FC3BC();
    *(v27 + 32) = v21;
    *(v27 + 40) = v19;
    *(v27 + 96) = v28;
    *(v27 + 104) = v29;
    *(v27 + 64) = v29;
    *(v27 + 72) = v22;
    *(v27 + 80) = v24;
    v15 = sub_219BF5454();

    return v15;
  }

  return result;
}

uint64_t sub_2191B5E50(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a4;
  v57 = a5;
  v58 = a3;
  v55 = a2;
  v54 = a1;
  v7 = sub_219BDBB74();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBB24();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDBB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v50 - v24;
  sub_2187D96F4(a6, &v50 - v24);
  v26 = sub_219BDBD34();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_2189DD39C(v25);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    MEMORY[0x21CEB1D10]();
    sub_219BDBB14();
    sub_219BDBAE4();
    (*(v50 + 8))(v12, v51);
    v30 = *(v14 + 8);
    v30(v16, v13);
    sub_219BDBB54();
    sub_219BDBB04();
    (*(v52 + 8))(v9, v53);
    v30(v19, v13);
    sub_2191B6C50(&unk_27CC16F88, MEMORY[0x277CC9428]);
    sub_219BDBD14();
    v30(v22, v13);
    (*(v27 + 8))(v25, v26);
    v28 = v66;
    v29 = v67;
  }

  v60 = v55;
  v61 = v58;
  v62 = v56;
  v63 = v57;
  v64 = v28;
  v65 = v29;

  v32 = 0;
  v33 = MEMORY[0x277D84F90];
LABEL_5:
  if (v32 <= 3)
  {
    v34 = 3;
  }

  else
  {
    v34 = v32;
  }

  v35 = v34 + 1;
  v36 = 16 * v32 + 40;
  while (v32 != 3)
  {
    if (v35 == ++v32)
    {
      __break(1u);
      return result;
    }

    v37 = v36 + 16;
    v38 = *&v59[v36];
    v36 += 16;
    if (v38)
    {
      v39 = *(&v56 + v37);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218840D24(0, *(v33 + 16) + 1, 1, v33);
        v33 = result;
      }

      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_218840D24((v40 > 1), v41 + 1, 1, v33);
        v33 = result;
      }

      *(v33 + 16) = v41 + 1;
      v42 = v33 + 16 * v41;
      *(v42 + 32) = v39;
      *(v42 + 40) = v38;
      goto LABEL_5;
    }
  }

  sub_2186DEEEC(0, &qword_280E8F860, MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  v66 = v33;
  sub_2186DEEEC(0, &qword_280E8EE20, MEMORY[0x277D83940]);
  sub_2189DD328();
  v43 = sub_219BF5324();
  v45 = v44;

  if (v54)
  {
    if (v54 != 1)
    {
      goto LABEL_22;
    }

    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {
LABEL_22:

      return 0;
    }
  }

  else
  {
    v47 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v47 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v47)
    {

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v49 = [objc_opt_self() bundleForClass_];
      v43 = sub_219BDB5E4();
    }
  }

  return v43;
}

uint64_t sub_2191B64BC(uint64_t a1)
{
  v2 = v1;
  v32[1] = a1;
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v32 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v32 - v17;
  v19 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v19);
  v21 = (v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191B6AB4(v2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = [*v21 identifier];
    sub_219BF5414();

    sub_219BF5524();

    return swift_unknownObjectRelease();
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2191B6C98();
    v24 = *(v21 + *(v23 + 48));
    sub_218A5DD60(v21, v18);
    sub_2187D96F4(v18, v16);
    if ((*(v4 + 48))(v16, 1, v3) == 1)
    {
      sub_219BF7AC4();
    }

    else
    {
      (*(v4 + 32))(v6, v16, v3);
      sub_219BF7AC4();
      sub_2191B6C50(&qword_27CC1AD70, MEMORY[0x277CC9578]);
      sub_219BF52F4();
      (*(v4 + 8))(v6, v3);
    }

    v30 = [v24 identifier];
    sub_219BF5414();

    sub_219BF5524();
    swift_unknownObjectRelease();

    v31 = v18;
    return sub_2189DD39C(v31);
  }

  sub_2191B6B18();
  v28 = *(v21 + *(v27 + 48));
  sub_218A5DD60(v21, v13);
  sub_2187D96F4(v13, v10);
  if ((*(v4 + 48))(v10, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_219BF7AC4();
    sub_2191B6C50(&qword_27CC1AD70, MEMORY[0x277CC9578]);
    sub_219BF52F4();
    (*(v4 + 8))(v6, v3);
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_12:
    sub_219BF7AC4();
    goto LABEL_13;
  }

  sub_219BF7AC4();
  if (!v28)
  {
    goto LABEL_12;
  }

LABEL_8:
  v29 = [v28 identifier];
  sub_219BF5414();

  sub_219BF7AC4();
  sub_219BF5524();
  swift_unknownObjectRelease();

LABEL_13:
  v31 = v13;
  return sub_2189DD39C(v31);
}

uint64_t sub_2191B69C8()
{
  sub_219BF7AA4();
  sub_2191B64BC(v1);
  return sub_219BF7AE4();
}

uint64_t sub_2191B6A0C()
{
  sub_219BF7AA4();
  sub_2191B64BC(v1);
  return sub_219BF7AE4();
}

uint64_t sub_2191B6AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2191B6B18()
{
  if (!qword_27CC16F60)
  {
    sub_2186DD8D0(255, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_2191B6BE8(255, &qword_280E8E670, &qword_280E8E680, &protocolRef_FCTagProviding, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC16F60);
    }
  }
}

void sub_2191B6BE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186D6710(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2191B6C50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2191B6C98()
{
  if (!qword_27CC16F70)
  {
    sub_2186DD8D0(255, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_2186D6710(255, &qword_280E8E420);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC16F70);
    }
  }
}

uint64_t sub_2191B6D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v116 = v4;
  v117 = v5;
  MEMORY[0x28223BE20](v4);
  v108 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C82694();
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v108 - v11;
  sub_2186DD8D0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v110 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v108 - v16;
  MEMORY[0x28223BE20](v17);
  v115 = &v108 - v18;
  MEMORY[0x28223BE20](v19);
  v109 = &v108 - v20;
  MEMORY[0x28223BE20](v21);
  v112 = &v108 - v22;
  MEMORY[0x28223BE20](v23);
  v111 = &v108 - v24;
  v25 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v108 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = (&v108 - v32);
  sub_2191B7890();
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = &v36[*(v37 + 56)];
  sub_2191B6AB4(a1, v36);
  sub_2191B6AB4(a2, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2191B6AB4(v36, v30);
      sub_2191B6C98();
      v41 = *(v40 + 48);
      v42 = *&v30[v41];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v115 = v36;
        v43 = *(v38 + v41);
        v44 = v30;
        v45 = v111;
        sub_218A5DD60(v44, v111);
        v46 = v38;
        v47 = v112;
        sub_218A5DD60(v46, v112);
        v48 = *(v8 + 48);
        sub_2187D96F4(v45, v12);
        sub_2187D96F4(v47, &v12[v48]);
        v49 = v116;
        v50 = *(v117 + 48);
        if (v50(v12, 1, v116) == 1)
        {
          if (v50(&v12[v48], 1, v49) == 1)
          {
            sub_2189DD39C(v12);
            goto LABEL_30;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v74 = v109;
          sub_2187D96F4(v12, v109);
          if (v50(&v12[v48], 1, v49) != 1)
          {
            v77 = v117;
            v78 = *(v117 + 32);
            v114 = v43;
            v79 = v74;
            v80 = v108;
            v78(v108, &v12[v48], v49);
            sub_2191B6C50(&qword_280EE9C80, MEMORY[0x277CC9578]);
            v81 = sub_219BF53A4();
            v82 = *(v77 + 8);
            v82(v80, v49);
            v83 = v79;
            v43 = v114;
            v82(v83, v49);
            sub_2189DD39C(v12);
            if (v81)
            {
LABEL_30:
              v84 = [v42 identifier];
              v85 = sub_219BF5414();
              v87 = v86;

              v88 = [v43 identifier];
              v89 = sub_219BF5414();
              v91 = v90;

              if (v85 == v89 && v87 == v91)
              {
                v63 = 1;
              }

              else
              {
                v63 = sub_219BF78F4();
              }

              v36 = v115;

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_52;
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v63 = 0;
            v36 = v115;
LABEL_52:
            sub_2189DD39C(v47);
            v106 = v45;
LABEL_53:
            sub_2189DD39C(v106);
            goto LABEL_54;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          (*(v117 + 8))(v74, v49);
        }

        v36 = v115;
        sub_2191B78F4(v12, sub_218C82694);
        v63 = 0;
        goto LABEL_52;
      }

      swift_unknownObjectRelease();
      v62 = v30;
      goto LABEL_15;
    }

    sub_2191B6AB4(v36, v27);
    sub_2191B6B18();
    v53 = *(v52 + 48);
    v54 = *&v27[v53];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      swift_unknownObjectRelease();
      v62 = v27;
LABEL_15:
      sub_2189DD39C(v62);
      goto LABEL_16;
    }

    v55 = *(v38 + v53);
    v56 = v115;
    sub_218A5DD60(v27, v115);
    v57 = v113;
    sub_218A5DD60(v38, v113);
    v58 = *(v8 + 48);
    v59 = v114;
    sub_2187D96F4(v56, v114);
    sub_2187D96F4(v57, v59 + v58);
    v60 = v116;
    v61 = *(v117 + 48);
    if (v61(v59, 1, v116) == 1)
    {
      if (v61(v59 + v58, 1, v60) == 1)
      {
        sub_2189DD39C(v59);
        goto LABEL_37;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = v55;
      v76 = v110;
      sub_2187D96F4(v59, v110);
      if (v61(v59 + v58, 1, v60) != 1)
      {
        v92 = v117;
        v93 = v59 + v58;
        v94 = v108;
        (*(v117 + 32))(v108, v93, v60);
        sub_2191B6C50(&qword_280EE9C80, MEMORY[0x277CC9578]);
        v95 = sub_219BF53A4();
        v96 = *(v92 + 8);
        v96(v94, v60);
        v96(v76, v60);
        sub_2189DD39C(v114);
        v55 = v75;
        v56 = v115;
        if (v95)
        {
LABEL_37:
          v97 = v36;
          if (v54)
          {
            v98 = [v54 identifier];
            v99 = sub_219BF5414();
            v101 = v100;

            if (!v55)
            {
              if (!v101)
              {
                v102 = 0;
LABEL_49:
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                sub_2189DD39C(v57);
                sub_2189DD39C(v56);
                if (!v102)
                {
                  v63 = 1;
                  v36 = v97;
                  goto LABEL_54;
                }

LABEL_58:
                v63 = 0;
                v36 = v97;
                goto LABEL_54;
              }

LABEL_57:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              sub_2189DD39C(v57);
              sub_2189DD39C(v56);
              goto LABEL_58;
            }
          }

          else
          {
            v101 = 0;
            v99 = 0;
            v102 = 0;
            if (!v55)
            {
              goto LABEL_49;
            }
          }

          v103 = [v55 identifier];
          v104 = sub_219BF5414();
          v102 = v105;

          if (!v101)
          {
            goto LABEL_49;
          }

          if (v102)
          {
            if (v99 == v104 && v101 == v102)
            {
              v63 = 1;
            }

            else
            {
              v63 = sub_219BF78F4();
            }

            v36 = v97;
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            sub_2189DD39C(v57);
            v106 = v56;
            goto LABEL_53;
          }

          goto LABEL_57;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_35:
        sub_2189DD39C(v57);
        sub_2189DD39C(v56);
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v117 + 8))(v76, v60);
      v56 = v115;
    }

    sub_2191B78F4(v59, sub_218C82694);
    goto LABEL_35;
  }

  sub_2191B6AB4(v36, v33);
  v51 = *v33;
  if (swift_getEnumCaseMultiPayload())
  {
    swift_unknownObjectRelease();
LABEL_16:
    sub_2191B78F4(v38, type metadata accessor for SportsHighlights.SubsectionDescriptor);
LABEL_17:
    v63 = 0;
    goto LABEL_54;
  }

  v64 = v36;
  v65 = *v38;
  v66 = [v51 identifier];
  v67 = sub_219BF5414();
  v69 = v68;

  v70 = [v65 identifier];
  v71 = sub_219BF5414();
  v73 = v72;

  if (v67 == v71 && v69 == v73)
  {
    v63 = 1;
  }

  else
  {
    v63 = sub_219BF78F4();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v36 = v64;
LABEL_54:
  sub_2191B78F4(v36, type metadata accessor for SportsHighlights.SubsectionDescriptor);
  return v63 & 1;
}

void sub_2191B7890()
{
  if (!qword_27CC16F78)
  {
    type metadata accessor for SportsHighlights.SubsectionDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC16F78);
    }
  }
}

uint64_t sub_2191B78F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191B7954(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

void sub_2191B79B4()
{
  type metadata accessor for SportsHighlights.SubsectionDescriptor(319);
  if (v0 <= 0x3F)
  {
    sub_2191B6BE8(319, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2191B7A64()
{
  sub_2186D6710(319, &qword_280E8DFF0);
  if (v0 <= 0x3F)
  {
    sub_2191B6C98();
    if (v1 <= 0x3F)
    {
      sub_2191B6B18();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

id sub_2191B7B28(void *a1, char a2)
{
  v5 = sub_219BDCAF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0CD4();
  v9 = *(v2 + 16);
  v10 = [objc_opt_self() systemFontOfSize:20.0 weight:*MEMORY[0x277D74400]];
  v11 = [v9 scaledFontForFont:v10 maximumPointSize:48.0];

  (*(v6 + 104))(v8, *MEMORY[0x277D6D198], v5);
  v12 = sub_219BF0CB4();

  (*(v6 + 8))(v8, v5);
  [a1 setFont_];

  v13 = [objc_opt_self() labelColor];
  [a1 setTextColor_];

  [a1 setNumberOfLines_];
  if (a2)
  {
    LODWORD(v14) = 1036831949;
    [a1 ts:v14 setHyphenationFactor:?];
  }

  return [a1 setLineBreakMode_];
}

uint64_t sub_2191B7D4C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2191B7DB8()
{
  v1 = [*(v0 + 24) appConfiguration];
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_savedFeedConfigurationResourceId)) != 0)
  {
    v3 = v2;
    sub_219BF5414();

    MEMORY[0x28223BE20](v4);
    sub_2186E9518();
    sub_219BE3204();

    v5 = sub_219BE2E54();
    type metadata accessor for SavedFeedConfigFetchResult();
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    sub_2191B8A5C();
    swift_allocError();
    *v9 = 1;
    sub_2191B8B98(0, &unk_280EE6D40, type metadata accessor for SavedFeedConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_219BE2FF4();
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t sub_2191B7FFC(uint64_t a1)
{
  sub_2191B8B98(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v11 - v3);
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_219BF5CE4();
  *v4 = v5;
  v6 = *MEMORY[0x277D6CA48];
  v7 = sub_219BE1B34();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = sub_219BF2954();
  sub_21897DAD8(v4);
  return v9;
}

char *sub_2191B81A4(void **a1, unint64_t a2)
{
  v35 = a2;
  v33 = type metadata accessor for SavedFeedConfigFetchResult();
  v4 = MEMORY[0x28223BE20](v33);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for SavedFeedContentConfig();
  MEMORY[0x28223BE20](v8);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = [v17 fileURL];
  if (v18)
  {
    v19 = v18;
    sub_219BDB8B4();

    (*(v11 + 32))(v16, v14, v10);
    v20 = sub_219BDB974();
    if (!v2)
    {
      v31 = v7;
      v23 = v21;
      v24 = v20;
      sub_2191B89A0();
      v32 = v24;
      v35 = v23;
      sub_219BE1974();
      v26 = v36;
      v27 = v31;
      sub_2191B8AD0(v36, v31, type metadata accessor for SavedFeedContentConfig);
      v28 = v34;
      *(v27 + *(v33 + 20)) = v17;
      sub_2191B8AD0(v27, v28, type metadata accessor for SavedFeedConfigFetchResult);
      sub_2191B8B98(0, &unk_280EE6D40, type metadata accessor for SavedFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v29 = v17;
      v7 = sub_219BE3014();
      sub_2186C6190(v32, v35);
      sub_2191B8B38(v27, type metadata accessor for SavedFeedConfigFetchResult);
      sub_2191B8B38(v26, type metadata accessor for SavedFeedContentConfig);
    }

    (*(v11 + 8))(v16, v10);
  }

  else
  {
    sub_2191B8A5C();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2191B8584()
{
  if (qword_280E8D7A8 != -1)
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

uint64_t sub_2191B86B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SavedFeedContentConfig();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191B89A0();
  result = sub_219BE1974();
  if (!v1)
  {
    sub_2191B89F8(v5, a1);
    result = type metadata accessor for SavedFeedConfigFetchResult();
    *(a1 + *(result + 20)) = 0;
  }

  return result;
}

uint64_t sub_2191B8798(uint64_t a1)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BDAF64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5, a1, v2);
  sub_219BDAF44();
  v14 = v9;
  sub_219BE3204();
  v10 = sub_219BE2E54();
  type metadata accessor for SavedFeedConfigFetchResult();
  v11 = sub_219BE2F94();

  (*(v7 + 8))(v9, v6);
  return v11;
}

unint64_t sub_2191B89A0()
{
  result = qword_280EC6ED0;
  if (!qword_280EC6ED0)
  {
    type metadata accessor for SavedFeedContentConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6ED0);
  }

  return result;
}

uint64_t sub_2191B89F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedContentConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2191B8A5C()
{
  result = qword_27CC16F98;
  if (!qword_27CC16F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16F98);
  }

  return result;
}

uint64_t sub_2191B8AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191B8B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2191B8B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2191B8C10()
{
  result = qword_27CC16FA8;
  if (!qword_27CC16FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FA8);
  }

  return result;
}

uint64_t sub_2191B8C64()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x4973646E6F636573;
  }
}

uint64_t sub_2191B8CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4973646E6F636573 && a2 == 0xED0000747361506ELL;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2)
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

uint64_t sub_2191B8D9C(uint64_t a1)
{
  v2 = sub_2191B8F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191B8DD8(uint64_t a1)
{
  v2 = sub_2191B8F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleContinuePlayingKnobConfiguration.encode(to:)(void *a1)
{
  sub_2191B91A8(0, &qword_280E8C1F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191B8F94();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF7814();
  if (!v1)
  {
    v9[14] = 1;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2191B8F94()
{
  result = qword_280E98280;
  if (!qword_280E98280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98280);
  }

  return result;
}

uint64_t PuzzleContinuePlayingKnobConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2191B91A8(0, &qword_27CC16FB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191B8F94();
  sub_219BF7B34();
  if (!v2)
  {
    v14[15] = 0;
    sub_219BF7714();
    v11 = v10;
    v14[14] = 1;
    v13 = sub_219BF7724();
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2191B91A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2191B8F94();
    v7 = a3(a1, &type metadata for PuzzleContinuePlayingKnobConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2191B9260()
{
  result = qword_27CC16FB8;
  if (!qword_27CC16FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FB8);
  }

  return result;
}

unint64_t sub_2191B92B8()
{
  result = qword_280E98270;
  if (!qword_280E98270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98270);
  }

  return result;
}

unint64_t sub_2191B9310()
{
  result = qword_280E98278;
  if (!qword_280E98278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98278);
  }

  return result;
}

uint64_t sub_2191B93B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2191B9A88();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872F4C4();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191B9B34(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for AudioHistoryFeedServiceConfig();
    sub_218700598(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);
    sub_219BEE974();
    sub_2191B9B98(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2191B9B98(v6);
    }
  }

  else
  {
    sub_2191B9B98(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_2191B95F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2191B9A88();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191B9BF4(0, &qword_27CC16FC0, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191B9AE0();
  sub_219BF7B34();
  if (!v2)
  {
    sub_21872F4C4();
    sub_218700598(&qword_27CC16FD0, sub_21872F4C4);
    sub_219BF7674();
    sub_2191B93B0(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2191B97E4(uint64_t a1)
{
  v2 = sub_2191B9AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191B9820(uint64_t a1)
{
  v2 = sub_2191B9AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2191B9874(void *a1)
{
  sub_2191B9BF4(0, &qword_27CC16FD8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191B9AE0();
  sub_219BF7B44();
  sub_21872F4C4();
  sub_218700598(&qword_27CC16FE0, sub_21872F4C4);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2191B99FC()
{
  type metadata accessor for AudioHistoryFeedServiceConfig();
  sub_218700598(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);

  return sub_219BEE9F4();
}

void sub_2191B9A88()
{
  if (!qword_280E91AA0)
  {
    sub_21872F4C4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91AA0);
    }
  }
}

unint64_t sub_2191B9AE0()
{
  result = qword_27CC16FC8;
  if (!qword_27CC16FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FC8);
  }

  return result;
}

uint64_t sub_2191B9B34(uint64_t a1, uint64_t a2)
{
  sub_2191B9A88();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2191B9B98(uint64_t a1)
{
  sub_2191B9A88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2191B9BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2191B9AE0();
    v7 = a3(a1, &type metadata for ArticleListAudioHistoryFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2191B9C6C()
{
  result = qword_27CC16FE8;
  if (!qword_27CC16FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FE8);
  }

  return result;
}

unint64_t sub_2191B9CC4()
{
  result = qword_27CC16FF0;
  if (!qword_27CC16FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FF0);
  }

  return result;
}

unint64_t sub_2191B9D1C()
{
  result = qword_27CC16FF8;
  if (!qword_27CC16FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16FF8);
  }

  return result;
}

uint64_t sub_2191B9D70()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2191B9E38()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2191B9F00()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2191B9FD0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t type metadata accessor for SportsManagementDetailViewController()
{
  result = qword_27CC17030;
  if (!qword_27CC17030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2191BA228()
{
  result = type metadata accessor for SportsDetailModel();
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

void sub_2191BA2E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v6 = *&v0[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_blueprintViewController];
  [v1 addChildViewController_];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  [v8 addSubview_];

  [v6 didMoveToParentViewController_];
  v11 = [v6 view];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = [v0 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v12 setFrame_];
  sub_218A3A494(&v0[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_model], v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2191BBAA0(v5);
  if (EnumCaseMultiPayload == 1)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v1 action:sel_dismissVC];
    v25 = sub_219BF65B4();
    [v25 setRightBarButtonItem_];
  }

  sub_219BE8654();
  sub_219BE8664();
  v26 = sub_219BE7BC4();

  [v26 setAllowsSelectionDuringEditing_];

  v27 = [v1 traitCollection];
  sub_2191BB8C4();
}

uint64_t sub_2191BA63C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2191BBA4C(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v8 = sub_219BDC104();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_219BEA2C4();
    swift_unknownObjectRelease();
  }

  sub_219BE8664();
  v9 = sub_219BE7BC4();

  v10 = sub_219BDC104();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_219BF5F84();

  return sub_218A1C0F4(v7);
}

uint64_t sub_2191BAA64()
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
  v12 = *MEMORY[0x277D6D9C8];
  v13 = sub_219BE73A4();
  (*(*(v13 - 8) + 104))(&v6[v11], v12, v13);
  v14 = sub_219BE6C74();
  v15 = MEMORY[0x277D6D7C0];
  v10[3] = v14;
  v10[4] = v15;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C24();
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2191BAD78()
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

uint64_t sub_2191BAF54()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_27CC08A20 != -1)
  {
    swift_once();
  }

  v7 = qword_27CCD9078;
  v8 = sub_219BE9334();
  v9 = MEMORY[0x277D6E550];
  v6[3] = v8;
  v6[4] = v9;
  *v6 = v7;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v6[5] = v13;
  v6[6] = v15;
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC80], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECB0], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

void sub_2191BB250()
{
  sub_2191BBA4C(0, &qword_280EE9D90, MEMORY[0x277CC8C40]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_219BF65B4();
  sub_218A3A21C();
  v4 = sub_21933D408(195.0);

  v5 = v4;
  sub_219BDB5D4();
  v6 = sub_219BDB5A4();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  sub_219BF64C4();

  v7 = sub_219BF65B4();
  sub_218A3A21C();
  v8 = sub_219BF53D4();

  [v7 setBackButtonTitle_];
}

uint64_t sub_2191BB3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  result = (*(v6 + 88))(v8, v5);
  if (result == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v10 + 40))(ObjectType, v10);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_eventHandler) + 40);
    v13 = swift_getObjectType();
    return (*(v12 + 32))(v13, v12);
  }

  else
  {
    if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x277D6E958])
    {
      if (result == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_2191BB5B4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_2191BB87C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2191BB8C4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_styler], v10);
  v3 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v10);
    v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setBackgroundColor_];
    [v8 setSeparatorStyle_];

    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v9 = [v1 navigationItem];
    sub_218ADD96C(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191BBA4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2191BBAA0(uint64_t a1)
{
  v2 = type metadata accessor for SportsDetailModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2191BBAFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_280EDDC30);
  *(a1 + qword_280EDDC30) = a3;
  v3 = a3;
}

id sub_2191BBB44(void *a1)
{
  v1 = a1;
  sub_2187B13AC(v5);
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v7[3] = v2;
  __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v2 - 8) + 16))();

  __swift_destroy_boxed_opaque_existential_1(v5);
  v3 = sub_219BF78D4();
  __swift_destroy_boxed_opaque_existential_1(v7);

  return v3;
}

uint64_t sub_2191BBC0C()
{
  v1 = v0 + qword_280EDDD60;
  v2 = *(v0 + qword_280EDDD60);
  if (v2)
  {
    v3 = *(v0 + qword_280EDDD60);
LABEL_5:
    v6 = v2;
    return v3;
  }

  sub_2187B13AC(v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2186C709C(0, &qword_280EE59F0);
  result = sub_219BE1DF4();
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    v5 = *v1;
    *v1 = v7;
    *(v1 + 8) = v8;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2191BBCEC()
{
  v1 = (v0 + qword_280EDDD48);
  if (*(v0 + qword_280EDDD48))
  {
    v2 = *(v0 + qword_280EDDD48);
LABEL_5:
    swift_unknownObjectRetain();
    return v2;
  }

  sub_2187B13AC(v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v2 = v4;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    *v1 = v4;
    v1[1] = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2191BBDC4()
{
  v1 = qword_280EDDCB0;
  if (*(v0 + qword_280EDDCB0))
  {
    v2 = *(v0 + qword_280EDDCB0);
LABEL_5:

    return v2;
  }

  sub_2187B13AC(v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2186DD934(0, &unk_280EE7420, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    __swift_destroy_boxed_opaque_existential_1(v4);
    *(v0 + v1) = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2191BBEB0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280EDDC38;
  swift_beginAccess();
  sub_2187B190C(v1 + v3, &v7, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
  if (v8)
  {
    return sub_2186CB1F0(&v7, a1);
  }

  sub_2187B1DA0(&v7, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
  sub_2187B13AC(&v7);
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  sub_2186C709C(0, &unk_280EE3F50);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, a1);
    __swift_destroy_boxed_opaque_existential_1(&v7);
    sub_218718690(a1, &v7);
    swift_beginAccess();
    sub_2187B20EC(&v7, v1 + v3, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191BC024@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280EDDC80;
  swift_beginAccess();
  sub_2187B190C(v1 + v3, &v7, &qword_280E936A8, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType);
  if (v8)
  {
    return sub_2186CB1F0(&v7, a1);
  }

  sub_2187B1DA0(&v7, &qword_280E936A8, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType);
  sub_2187B13AC(&v7);
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  sub_2186C709C(0, qword_280E936B0);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, a1);
    __swift_destroy_boxed_opaque_existential_1(&v7);
    sub_218718690(a1, &v7);
    swift_beginAccess();
    sub_2187B20EC(&v7, v1 + v3, &qword_280E936A8, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191BC198@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280EDDC40;
  swift_beginAccess();
  sub_2187B190C(v1 + v3, &v7, &qword_27CC17108, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType);
  if (v8)
  {
    return sub_2186CB1F0(&v7, a1);
  }

  sub_2187B1DA0(&v7, &qword_27CC17108, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType);
  sub_2187B13AC(&v7);
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  sub_2186C709C(0, qword_280E9BF00);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, a1);
    __swift_destroy_boxed_opaque_existential_1(&v7);
    sub_218718690(a1, &v7);
    swift_beginAccess();
    sub_2187B20EC(&v7, v1 + v3, &qword_27CC17108, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191BC30C(uint64_t (*a1)(void))
{
  sub_2187B7D90(&qword_280EDDC68, MEMORY[0x277D6E420]);
  v2 = sub_219BE9144();

  return a1(v2 & 1);
}

void sub_2191BC388(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = sub_219BED174();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED1D4();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED214();
  v25 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  sub_2187B13AC(v37);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_2186C709C(0, qword_280EBF670);
  sub_219BE1E34();
  if (v36)
  {
    sub_2186CB1F0(&v35, aBlock);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_project_boxed_opaque_existential_1(aBlock, v32);
    sub_2187B9A9C(v37);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (LOBYTE(v37[0]) == 2 && (sub_2191BC198(aBlock), __swift_project_boxed_opaque_existential_1(aBlock, v32), v14 = sub_219646AEC(), __swift_destroy_boxed_opaque_existential_1(aBlock), (v14 & 1) != 0))
    {
      sub_2186C6148(0, &qword_280E8E3B0);
      v24 = sub_219BF66A4();
      sub_219BED1F4();
      if (qword_27CC07CE0 != -1)
      {
        swift_once();
      }

      v15 = sub_219BED164();
      v16 = __swift_project_value_buffer(v15, qword_27CCD81D0);
      MEMORY[0x21CEC3FD0](v11, v16);
      v17 = *(v25 + 8);
      v17(v11, v8);
      v18 = swift_allocObject();
      v19 = v30;
      *(v18 + 16) = v29;
      *(v18 + 24) = v19;
      v33 = sub_218807D28;
      v34 = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218793E0C;
      v32 = &block_descriptor_103;
      v20 = _Block_copy(aBlock);

      sub_219BED1A4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2187BB0F4(&qword_280E927E0, MEMORY[0x277D85198]);
      sub_2186DD934(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21874EB68();
      sub_219BF7164();
      v21 = v24;
      MEMORY[0x21CECD420](v13, v7, v4, v20);
      _Block_release(v20);

      (*(v28 + 8))(v4, v2);
      (*(v26 + 8))(v7, v27);
      v17(v13, v8);
    }

    else
    {
      v22 = sub_2187BB13C(&qword_280EDDD58, MEMORY[0x277D6D360]);
      v23 = sub_219BE1C44();
      sub_219BE5D34();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2191BC8BC(void *a1, int a2, int a3, void *a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  v9[2] = sub_2191C2D6C;
  v9[3] = v8;
  v9[4] = a1;
  v9[5] = a4;
  v10 = a4;
  v12 = a1;
  v11 = v10;

  sub_2191BC388(sub_2191C2D74, v9);
}

uint64_t sub_2191BC9B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_219BED594();

    sub_219BEDDF4();
  }

  return result;
}

id sub_2191BCA38(void *a1)
{
  v1 = a1;
  v2 = [sub_2187B72A8() isStateRestorationFeatureEnabled];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_2191BBEB0(v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v3 = sub_219BE9B44();

    __swift_destroy_boxed_opaque_existential_1(v6);
    v4 = v3;
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

uint64_t sub_2191BCAF0()
{

  sub_2187B1DA0(v0 + qword_280EDDD90, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_2187B1DA0(v0 + qword_280EDDCC8, &unk_280EE7390, &unk_280EE73A0, MEMORY[0x277D6CD90]);

  swift_unknownObjectRelease();
  sub_2187B1DA0(v0 + qword_280EDDD40, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908]);
  sub_2187B1DA0(v0 + qword_280EDDC38, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
  swift_unknownObjectRelease();

  sub_2187B1DA0(v0 + qword_280EDDC80, &qword_280E936A8, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType);
  swift_unknownObjectRelease();
  sub_2187B1DA0(v0 + qword_280EDDC40, &qword_27CC17108, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType);

  sub_2187B1DA0(v0 + qword_280EDDDC0, &qword_280EC99A8, &qword_280EC99B0, &protocol descriptor for SportsSyncManagerType);

  swift_unknownObjectRelease();

  v1 = MEMORY[0x277CC9578];
  v2 = MEMORY[0x277D83D88];
  sub_2187455EC(v0 + qword_280F621E0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186DD934);
  sub_2187455EC(v0 + qword_280F621D8, &qword_280EE9C40, v1, v2, sub_2186DD934);

  sub_218970170(*(v0 + qword_280EDDDD0));
}

id sub_2191BCE84()
{
  ObjectType = swift_getObjectType();
  sub_2187B13AC(v6);
  sub_218718690(v6, v5);
  v2 = swift_allocObject();
  sub_2186CB1F0(v5, v2 + 16);
  sub_219BE3494();

  __swift_destroy_boxed_opaque_existential_1(v6);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2191BCF34(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDCF14();
  if (sub_219BE1E24())
  {
    sub_219BDCF04();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5A54();
  v2 = sub_219BE1E24();
  if (v2)
  {
    v3 = v2;
    sub_219BE5A44();
  }
}

id sub_2191BD00C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  sub_2187B13AC(v8);
  sub_218718690(v8, v7);
  v4 = swift_allocObject();
  sub_2186CB1F0(v7, v4 + 16);
  sub_219BE3494();

  __swift_destroy_boxed_opaque_existential_1(v8);
  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_2191BD0C4(uint64_t a1)
{

  sub_2187B1DA0(a1 + qword_280EDDD90, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_2187B1DA0(a1 + qword_280EDDCC8, &unk_280EE7390, &unk_280EE73A0, MEMORY[0x277D6CD90]);

  swift_unknownObjectRelease();
  sub_2187B1DA0(a1 + qword_280EDDD40, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908]);
  sub_2187B1DA0(a1 + qword_280EDDC38, &qword_280EE3F48, &unk_280EE3F50, MEMORY[0x277D6E818]);
  swift_unknownObjectRelease();

  sub_2187B1DA0(a1 + qword_280EDDC80, &qword_280E936A8, qword_280E936B0, &protocol descriptor for AppDiscardedStateRestorationActivityHandlerType);
  swift_unknownObjectRelease();
  sub_2187B1DA0(a1 + qword_280EDDC40, &qword_27CC17108, qword_280E9BF00, &protocol descriptor for ArticleLinkBehaviorConfigManagerType);

  sub_2187B1DA0(a1 + qword_280EDDDC0, &qword_280EC99A8, &qword_280EC99B0, &protocol descriptor for SportsSyncManagerType);

  swift_unknownObjectRelease();

  v2 = MEMORY[0x277CC9578];
  v3 = MEMORY[0x277D83D88];
  sub_2187455EC(a1 + qword_280F621E0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186DD934);
  sub_2187455EC(a1 + qword_280F621D8, &qword_280EE9C40, v2, v3, sub_2186DD934);

  sub_218970170(*(a1 + qword_280EDDDD0));
}

void sub_2191BD45C(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = NewsActivity2.identifier.getter();
    v6 = v5;
    if ((~*&v3[qword_280EDDDD0] & 0xF000000000000007) != 0)
    {
      if (v4 == NewsActivity2.identifier.getter() && v6 == v12)
      {

        return;
      }

      v13 = sub_219BF78F4();

      if (v13)
      {

        return;
      }
    }

    else
    {
    }

    v7 = (v1 >> 58) & 0x3C | (v1 >> 1) & 3;
    v8 = v7 > 0x37;
    v9 = (1 << v7) & 0x98000800000001;
    if (v8 || v9 == 0)
    {
      [sub_2187B72A8() navigationDidHappen];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_2186C6148(0, &qword_280E8D790);
      v11 = sub_219BF6F44();
      sub_219BF6214();
      sub_219BE5314();
    }
  }
}

uint64_t sub_2191BD614(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_219BF7484();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_2186C6148(0, &qword_280E8D790);
  v5 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  sub_2186C6148(0, &qword_280E8D9B0);
  result = sub_219BF6F04();
  if ((result & 1) == 0)
  {
    return [a3 _extendStateRestoration];
  }

  return result;
}

uint64_t sub_2191BD774(uint64_t a1, void *a2)
{
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v4 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v4;
  *(v3 + 32) = v5;
  sub_2186C6148(0, &qword_280E8D790);
  v6 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  sub_2186C6148(0, &qword_280E8D9B0);
  result = sub_219BF6F04();
  if ((result & 1) == 0)
  {
    return [a2 _completeStateRestoration];
  }

  return result;
}

uint64_t sub_2191BD8B0(unint64_t *a1)
{
  v1 = *a1;
  v2 = NewsActivity2.identifier.getter();
  v4 = v3;
  if (v2 == NewsActivity2.identifier.getter() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_219BF78F4();

    if ((v7 & 1) == 0)
    {
      v9 = (v1 >> 58) & 0x3C | (v1 >> 1) & 3;
      v10 = v9 > 0x37;
      v11 = (1 << v9) & 0x98000800000001;
      if (v10 || v11 == 0)
      {
        sub_2186C6148(0, &qword_280E8D790);
        v13 = sub_219BF6F44();
        sub_219BF6214();
        sub_219BE5314();

        sub_2187B7D90(&qword_280EDDC88, sub_2186CD650);
        sub_219BE1E74();
      }
    }
  }

  return result;
}

char *sub_2191BDA3C(unsigned __int8 *a1, id a2)
{
  v2 = *a1;
  result = [a2 activationState];
  if (v2 == 1 && (result == 2 || result + 1 == 0))
  {
    sub_2186C6148(0, &qword_280E8D790);
    v5 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    sub_2187B7D90(&qword_280EDDC88, sub_2186CD650);
    sub_219BE1E74();
  }

  return result;
}

void sub_2191BDB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_2187BB13C(&qword_280EDDD58, MEMORY[0x277D6D360]);
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = sub_2187A913C;
  v12[5] = v10;
  v13 = a5;
  v14 = a6;
  v15 = sub_219BE1C44();
  sub_219BE5D34();
}

uint64_t sub_2191BDC58(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2186C6148(0, &qword_280E8D790);
  v7 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  v23 = 0;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  v9[2] = &v23;
  v9[3] = a1;
  v9[4] = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2191C2CAC;
  *(v10 + 24) = v9;
  aBlock[4] = sub_218807CE0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218807CE4;
  aBlock[3] = &block_descriptor_87_0;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;

  [v8 performWithoutAnimation_];
  _Block_release(v11);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    sub_219BE3204();
    *(swift_allocObject() + 16) = v12;
    v15 = v12;
    v16 = sub_219BE2E54();
    sub_219BE2F74();

    sub_2186C6148(0, &qword_280E8E3B0);
    v17 = sub_219BF66A4();
    *(swift_allocObject() + 16) = v15;
    v18 = v15;
    sub_219BE2FD4();

    v19 = sub_219BF66A4();
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a4;

    sub_219BE3024();
  }

  return result;
}

uint64_t sub_2191BE004(uint64_t *a1)
{
  sub_2187B7D90(&qword_280EDDC60, MEMORY[0x277D6E428]);
  v2 = sub_219BE9184();

  *a1 = v2;
}

uint64_t sub_2191BE084(void *a1)
{
  v2 = sub_219BED214();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_219BED1F4();
  sub_219BED244();
  v9 = *(v3 + 8);
  result = v9(v6, v2);
  if (*a1)
  {
    sub_2186F85E8(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);

    v11 = sub_219BE2E54();
    v12 = sub_219BE30A4();

    v9(v8, v2);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191BE21C()
{
  sub_2186C6148(0, &qword_280E8D790);
  v1 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  sub_2187B7D90(&qword_280EDDC88, sub_2186CD650);
  sub_219BE1E74();
  if (v0)
  {
  }
}

uint64_t sub_2191BE2FC(void *a1)
{
  sub_2186DD934(0, &qword_280EE7DC8, MEMORY[0x277D6CAF0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v20 = a1;
  v5 = a1;
  sub_2186C709C(0, &qword_280E8B580);
  v6 = sub_219BE1D94();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (!v7)
  {
    v8(v4, 1, 1, v6);
    sub_2187455EC(v4, &qword_280EE7DC8, MEMORY[0x277D6CAF0], MEMORY[0x277D83D88], sub_2186DD934);
    goto LABEL_5;
  }

  v9 = *(v6 - 8);
  v8(v4, 0, 1, v6);
  v10 = (*(v9 + 88))(v4, v6);
  v11 = *MEMORY[0x277D6CAD8];
  (*(v9 + 8))(v4, v6);
  if (v10 != v11)
  {
LABEL_5:
    sub_219BF61F4();
    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    v20 = a1;
    v14 = a1;
    v15 = sub_219BF5484();
    v17 = v16;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_2186FC3BC();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    sub_2186C6148(0, &qword_280E8D790);
    v12 = sub_219BF6F44();
    sub_219BE5314();

    goto LABEL_6;
  }

  sub_219BF6204();
  sub_2186C6148(0, &qword_280E8D790);
  v12 = sub_219BF6F44();
  sub_219BE5314();
LABEL_6:

  sub_2187B7D90(&qword_280EDDC88, sub_2186CD650);
  LOBYTE(v20) = 2;
  sub_219BE1E74();
}

uint64_t sub_2191BE698(uint64_t a1, void *a2)
{
  v3 = sub_219BE6914();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191BBDC4();
  v11 = [a2 URL];
  sub_219BDB8B4();

  v12 = [a2 options];
  (*(v4 + 104))(v6, *MEMORY[0x277D6D6E8], v3);
  sub_219BE25B4();

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_2191BE898(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_2191BE93C(a3, v8, a4);

      v7 = v9;
    }
  }
}

void sub_2191BE93C(void *a1, id a2, void *a3)
{
  if (![a2 isKeyWindow])
  {
    if (qword_280EE6018 != -1)
    {
      swift_once();
    }

    v14 = sub_219BE5434();
    __swift_project_value_buffer(v14, qword_280F62700);
    v15 = a1;
    oslog = sub_219BE5414();
    v9 = sub_219BF6214();

    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v15;
    *v11 = v15;
    v16 = v15;
    v13 = "Window is not key - not handling discarded user activity : %@";
    goto LABEL_11;
  }

  v6 = [a3 notificationResponse];
  if (v6)
  {

    if (qword_280EE6018 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62700);
    v8 = a1;
    oslog = sub_219BE5414();
    v9 = sub_219BF6214();

    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    v13 = "App was launched from a user notification - not handling discarded user activity: %@";
LABEL_11:
    _os_log_impl(&dword_2186C1000, oslog, v9, v13, v10, 0xCu);
    sub_2187455EC(v11, &qword_280E8D9F0, &qword_280E8DA00, 0x277D82BB8, sub_2186E5128);
    MEMORY[0x21CECF960](v11, -1, -1);
    MEMORY[0x21CECF960](v10, -1, -1);
LABEL_12:

    return;
  }

  sub_2191BC024(v24);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v17 = *(v3 + qword_280EDDC30);
  if (v17 && (v18 = [v17 rootViewController]) != 0)
  {
    v19 = v18;
    sub_2186C6148(0, &qword_280E8E2F0);
    sub_219BF6584();

    v20 = v23;
  }

  else
  {
    v20 = 0;
  }

  v21 = off_282A5BC28[0];
  type metadata accessor for AppDiscardedStateRestorationActivityHandler();
  v21(a1);

  __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_2191BEC88(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v43 = a4;
  v44 = a3;
  v5 = sub_219BE84F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_219BE6914();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v38 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD934(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    if (a2 & 1) != 0 || (sub_219BE84E4())
    {
      swift_beginAccess();
      sub_2187DB308(v18, v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
      sub_2191BBDC4();
      v21 = [v43 activityType];
      v22 = sub_219BF5414();
      v24 = v23;

      if (sub_219BF5414() == v22 && v25 == v24)
      {

        v26 = v42;
        goto LABEL_8;
      }

      v27 = sub_219BF78F4();

      v26 = v42;
      if (v27)
      {
LABEL_8:
        sub_2187DB308(v17, v15, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
        if ((*(v26 + 48))(v15, 1, v10) == 1)
        {

          sub_2187455EC(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
          v17 = v15;
        }

        else
        {
          v28 = v38;
          (*(v26 + 32))(v38, v15, v10);
          v30 = v39;
          v29 = v40;
          v31 = v41;
          (*(v40 + 104))(v39, *MEMORY[0x277D6D6F0], v41);
          sub_219BE25B4();

          (*(v29 + 8))(v30, v31);
          (*(v26 + 8))(v28, v10);
        }

        return sub_2187455EC(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
      }
    }

    else
    {
      v17 = objc_opt_self();
      (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v5);
      v32 = (*(v6 + 80) + 40) & ~*(v6 + 80);
      v33 = swift_allocObject();
      v34 = v43;
      *(v33 + 2) = v20;
      *(v33 + 3) = v34;
      *(v33 + 4) = v18;
      (*(v6 + 32))(&v33[v32], &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      v35 = swift_allocObject();
      *(v35 + 16) = sub_2191C2690;
      *(v35 + 24) = v33;
      aBlock[4] = sub_218807D50;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218807CE4;
      aBlock[3] = &block_descriptor_16_2;
      v36 = _Block_copy(aBlock);
      v20 = v20;
      v37 = v34;

      [v17 performWithoutAnimation_];

      _Block_release(v36);
      LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

      if ((v36 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    sub_2187B7D90(&qword_280EDDC60, MEMORY[0x277D6E428]);
    sub_219BE91A4();

    return sub_2187455EC(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
  }

  return result;
}

uint64_t sub_2191BF3C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = sub_219BE6914();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB954();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277CC9260];
  v11 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  swift_beginAccess();
  sub_2187DB308(a3, v17, &unk_280EE9D00, v10, v11, sub_2186DD934);
  v35 = sub_2191BBDC4();
  v18 = [a2 activityType];
  v19 = sub_219BF5414();
  v21 = v20;

  if (sub_219BF5414() == v19 && v22 == v21)
  {
  }

  else
  {
    v23 = sub_219BF78F4();

    if ((v23 & 1) == 0)
    {
      sub_2187B7D90(&qword_280EDDC60, MEMORY[0x277D6E428]);
      sub_219BE91A4();

      return sub_2187455EC(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    }
  }

  sub_2187DB308(v17, v15, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
  v24 = v34;
  if ((*(v34 + 48))(v15, 1, v7) == 1)
  {

    sub_2187455EC(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    v17 = v15;
  }

  else
  {
    (*(v24 + 32))(v9, v15, v7);
    v26 = v30;
    v25 = v31;
    v27 = v33;
    (*(v31 + 104))(v30, *MEMORY[0x277D6D6F0], v33);
    sub_219BE25B4();

    (*(v25 + 8))(v26, v27);
    (*(v24 + 8))(v9, v7);
  }

  return sub_2187455EC(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
}

uint64_t sub_2191BF88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = [objc_opt_self() ams_shieldSignInOrCreateFlows];
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2186FC3BC();
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  sub_2186C6148(0, &qword_280E8D790);

  v11 = sub_219BF6F44();
  sub_219BF6214();
  if (v9)
  {
    sub_219BE5314();

    exit(0);
  }

  sub_219BE5314();

  *(swift_allocObject() + 16) = a6;
  v12 = a6;
  sub_219BE3494();
}

uint64_t sub_2191BFA3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2191C2874();
    v4 = sub_219BF5214();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_2191BFAE8(void *a1)
{
  v2 = v1;
  v3 = [a1 session];
  v4 = [v3 persistentIdentifier];

  v5 = sub_219BF5414();
  v7 = v6;

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2186FC3BC();
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  sub_2186C6148(0, &qword_280E8D790);

  v9 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  sub_2191BBEB0(v26);
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v10 = sub_219BE9B44();
  __swift_destroy_boxed_opaque_existential_1(v26);
  v11 = qword_280EDDCF8;
  v12 = *&v2[qword_280EDDCF8];
  *&v2[qword_280EDDCF8] = v10;

  if (qword_280EE6018 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F62700);

  v14 = v2;
  v15 = sub_219BE5414();
  v16 = sub_219BF6214();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_2186D1058(v5, v7, v26);
    *(v17 + 12) = 2080;
    v25 = *&v2[v11];
    sub_2186E5128(0, &unk_280E8E640, &qword_280E8E650);
    v19 = v25;
    v20 = sub_219BF5484();
    v22 = sub_2186D1058(v20, v21, v26);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_2186C1000, v15, v16, "Backgrounding scene (ID: %s with user activity :%s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v18, -1, -1);
    MEMORY[0x21CECF960](v17, -1, -1);
  }

  sub_2187B5F14(v26);
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_219BE2964();
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_2187B5F14(v26);
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_219BE2954();

  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_2187D85B0();
  [v23 sceneDidEnterBackground];
  swift_unknownObjectRelease();
  [sub_2187B72A8() sceneDidEnterBackground];
  return swift_unknownObjectRelease();
}

void sub_2191BFEC8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2191BFAE8(v4);
}

void sub_2191BFF30(void *a1)
{
  v2 = [a1 session];
  v3 = [v2 persistentIdentifier];

  v4 = sub_219BF5414();
  v6 = v5;

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  sub_2186C6148(0, &qword_280E8D790);

  v8 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  sub_2187B5F14(v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_219BE2944();

  __swift_destroy_boxed_opaque_existential_1(v10);
  if ([a1 activationState] == -1)
  {
    v9 = [a1 session];
    [v9 setStateRestorationActivity_];
  }
}

void sub_2191C0110(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2191BFF30(v4);
}

uint64_t sub_2191C0178(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277CC9578];
  sub_2186DD934(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-1] - v6;
  v8 = [a1 session];
  v9 = [v8 persistentIdentifier];

  v10 = sub_219BF5414();
  v12 = v11;

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_2186FC3BC();
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  sub_2186C6148(0, &qword_280E8D790);
  v14 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  objc_opt_self();
  sub_2187B5F14(v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_219BE2974();
  __swift_destroy_boxed_opaque_existential_1(v19);
  v15 = sub_219BDBD34();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = qword_280F621E0;
  swift_beginAccess();
  sub_2187B132C(v7, v2 + v16, &qword_280EE9C40, v4);
  return swift_endAccess();
}

void sub_2191C03FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2191C0178(v4);
}

uint64_t sub_2191C0494(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = a1;
  sub_2187B5F14(v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  a3(v5, v6);

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_2191C0510(void *a1, uint64_t a2)
{
  v74 = a1;
  sub_2187B0408();
  v73 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v61 - v6;
  v80 = sub_219BDB954();
  v75 = *(v80 - 8);
  v7 = *(v75 + 64);
  v8 = MEMORY[0x28223BE20](v80);
  v69 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_219BF71C4();
    sub_2186C6148(0, &unk_280E8E4A0);
    sub_21879FA10(&qword_280E8E498, &unk_280E8E4A0);
    result = sub_219BF5D94();
    a2 = v84;
    v12 = v85;
    v14 = v86;
    v13 = v87;
    v15 = v88;
  }

  else
  {
    v16 = -1 << *(a2 + 32);
    v12 = a2 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a2 + 56);

    v13 = 0;
  }

  v61 = v14;
  v19 = (v14 + 64) >> 6;
  v79 = (v75 + 16);
  v66 = v7 + 7;
  v65 = v75 + 32;
  v64 = v75 + 8;
  v63 = xmmword_219C09BA0;
  v68 = v12;
  v67 = v19;
  v71 = a2;
  v62 = v10;
  while (a2 < 0)
  {
    v48 = sub_219BF7244();
    if (!v48)
    {
      return sub_21892DE98();
    }

    v82 = v48;
    sub_2186C6148(0, &unk_280E8E4A0);
    swift_dynamicCast();
    v47 = v83;
    v45 = v13;
    v46 = v15;
    if (!v83)
    {
      return sub_21892DE98();
    }

LABEL_19:
    v49 = v47;
    v50 = [v47 URL];
    sub_219BDB8B4();

    v51 = [v74 session];
    v52 = [v51 persistentIdentifier];

    v53 = sub_219BF5414();
    v55 = v54;

    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v56 = swift_allocObject();
    *(v56 + 16) = v63;
    *(v56 + 56) = MEMORY[0x277D837D0];
    *(v56 + 64) = sub_2186FC3BC();
    *(v56 + 32) = v53;
    *(v56 + 40) = v55;
    sub_2186C6148(0, &qword_280E8D790);

    v57 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    v58 = *v79;
    (*v79)(v81, v10, v80);
    v77 = v49;
    v59 = [v49 options];
    v60 = [v59 sourceApplication];

    v78 = v46;
    if (v60)
    {
      v20 = sub_219BF5414();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v23 = v81;
    v24 = &v81[*(v73 + 48)];
    *v24 = v20;
    v24[1] = v22;
    v25 = qword_280EDDDA0;
    v26 = v70;
    swift_beginAccess();
    v27 = v23;
    v28 = v72;
    sub_2191C26F8(v27, v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *&v26[v25];
    *&v26[v25] = 0x8000000000000000;
    sub_21948DC84(v28, v53, v55, isUniquelyReferenced_nonNull_native);
    *&v26[v25] = v82;
    swift_endAccess();
    v76 = v55;
    v30 = v53;
    v31 = v69;
    v32 = v80;
    v58(v69, v10, v80);
    v33 = v75;
    v34 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v35 = (v66 + v34) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 16) = v26;
    (*(v33 + 32))(v36 + v34, v31, v32);
    v37 = v76;
    v38 = v77;
    *(v36 + v35) = v77;
    v39 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v39 = v30;
    v39[1] = v37;
    v40 = v26;
    v41 = v38;
    sub_2191BC388(sub_2191C275C, v36);

    v42 = *(v33 + 8);
    v10 = v62;
    result = v42(v62, v32);
    v13 = v45;
    v15 = v78;
    a2 = v71;
    v12 = v68;
    v19 = v67;
  }

  v43 = v13;
  v44 = v15;
  v45 = v13;
  if (v15)
  {
LABEL_15:
    v46 = (v44 - 1) & v44;
    v47 = *(*(a2 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));
    if (!v47)
    {
      return sub_21892DE98();
    }

    goto LABEL_19;
  }

  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v19)
    {
      return sub_21892DE98();
    }

    v44 = *(v12 + 8 * v45);
    ++v43;
    if (v44)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_2191C0BD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v7 = sub_219BE84F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE6914();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191BBDC4();
  v15 = [a3 options];
  (*(v12 + 104))(v14, *MEMORY[0x277D6D6F8], v11);
  sub_219BE84D4();
  sub_219BE25B4();

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09EC0;
  v17 = sub_219BDB804();
  v19 = v18;
  v20 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v21 = sub_2186FC3BC();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *(v16 + 96) = v20;
  *(v16 + 104) = v21;
  v22 = v25;
  *(v16 + 64) = v21;
  *(v16 + 72) = v22;
  *(v16 + 80) = a5;
  sub_2186C6148(0, &qword_280E8D790);

  v23 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_2191C0EAC(void *a1, uint64_t a2, void *a3)
{
  sub_2186C6148(0, &unk_280E8E4A0);
  sub_21879FA10(&qword_280E8E498, &unk_280E8E4A0);
  v5 = sub_219BF5D44();
  v6 = a3;
  v7 = a1;
  sub_2191C0510(v6, v5);
}

void sub_2191C0F68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [a1 session];
  v8 = [v7 persistentIdentifier];

  v9 = sub_219BF5414();
  v11 = v10;

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2186FC3BC();
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = a2;
  *(v12 + 80) = a3;
  sub_2186C6148(0, &qword_280E8D790);

  v15 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  if (sub_219BF5414() == a2 && v16 == a3)
  {
  }

  else
  {
    v17 = sub_219BF78F4();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v18 = qword_280EDDC30;
  v19 = *(v4 + qword_280EDDC30);
  if (v19)
  {
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 systemBackgroundColor];
    [v21 setBackgroundColor_];

    v23 = *(v4 + v18);
    if (v23)
    {
      v24 = [v23 rootViewController];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 view];

        if (v26)
        {

          [v26 setHidden_];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }

LABEL_12:
}

uint64_t sub_2191C1230(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_219BF5414();
  v7 = v6;
  v8 = a3;
  v9 = a1;
  sub_2191C0F68(v8, v5, v7);
}

void sub_2191C12A8(void *a1, id a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &unk_280EE9D60, sub_2187B0408, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v119 = v113 - v6;
  sub_2186DD934(0, &unk_280EE9D00, MEMORY[0x277CC9260], v4);
  v8 = MEMORY[0x28223BE20](v7);
  v124 = v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v123 = v113 - v10;
  v128 = sub_219BDB954();
  v131 = *(v128 - 8);
  v11 = MEMORY[0x28223BE20](v128);
  v118 = v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v120 = v113 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v122 = v113 - v16;
  MEMORY[0x28223BE20](v15);
  v127 = v113 - v17;
  v18 = sub_219BE84F4();
  v132 = *(v18 - 8);
  v133 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v125 = v20;
  v126 = v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v113 - v21;
  v23 = [a1 session];
  v24 = [v23 persistentIdentifier];

  v25 = sub_219BF5414();
  v27 = v26;

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v116 = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C09EC0;
  v30 = MEMORY[0x277D837D0];
  *(v29 + 56) = MEMORY[0x277D837D0];
  v31 = sub_2186FC3BC();
  *(v29 + 64) = v31;
  v117 = v25;
  *(v29 + 32) = v25;
  *(v29 + 40) = v27;
  v135 = v27;

  v32 = [a2 activityType];
  v33 = sub_219BF5414();
  v35 = v34;

  *(v29 + 96) = v30;
  *(v29 + 104) = v31;
  v115 = v31;
  *(v29 + 72) = v33;
  *(v29 + 80) = v35;
  v36 = sub_2186C6148(0, &qword_280E8D790);
  v37 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  v38 = [a2 ts_sourceApplication];
  if (v38)
  {
    v39 = v38;
    v40 = sub_219BF5414();
    v134 = v41;
  }

  else
  {
    v40 = 0;
    v134 = 0;
  }

  v137 = v22;
  sub_219BE84D4();
  v129 = swift_allocBox();
  v43 = v42;
  v44 = v131;
  v45 = v128;
  v121 = *(v131 + 56);
  v121(v42, 1, 1, v128);
  v46 = [a2 activityType];
  v47 = sub_219BF5414();
  v49 = v48;

  v130 = *MEMORY[0x277CCA850];
  if (sub_219BF5414() == v47 && v50 == v49)
  {

    v51 = v136;
  }

  else
  {
    v52 = sub_219BF78F4();

    v51 = v136;
    if ((v52 & 1) == 0)
    {
LABEL_20:
      v92 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v67 = v132;
      v66 = v133;
      v93 = v51;
      v94 = v126;
      (*(v132 + 16))(v126, v137, v133);
      v95 = (*(v67 + 80) + 25) & ~*(v67 + 80);
      v96 = a2;
      v97 = (v125 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
      v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
      v99 = swift_allocObject();
      *(v99 + 16) = v92;
      *(v99 + 24) = 1;
      (*(v67 + 32))(v99 + v95, v94, v66);
      *(v99 + v97) = v96;
      a2 = v96;
      *(v99 + v98) = v129;

      v100 = v96;

      v65 = v93;
      sub_2191BC388(sub_2191C268C, v99);

      v68 = v137;

      goto LABEL_21;
    }
  }

  v53 = [a2 webpageURL];
  if (v53)
  {
    v113[1] = v36;
    v113[0] = v40;
    v114 = a2;
    v54 = v122;
    v55 = v53;
    sub_219BDB8B4();

    v56 = v45;
    v57 = v127;
    v58 = v54;
    v59 = *(v44 + 32);
    v59(v127, v58, v45);
    v60 = sub_2187B5DEC(&qword_280EDDD18, &qword_280E8DD50);
    v61 = sub_219BDB854();
    v62 = [v60 destinationURLForURL_];

    if (v62)
    {
      v63 = v120;
      sub_219BDB8B4();

      v64 = v123;
      v59(v123, v63, v56);
    }

    else
    {
      v64 = v123;
      (*(v44 + 16))(v123, v57, v56);
    }

    v69 = v56;
    v121(v64, 0, 1, v56);
    v70 = MEMORY[0x277CC9260];
    sub_2187B132C(v64, v43, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v71 = v43;
    v72 = v124;
    sub_2187DB308(v71, v124, &unk_280EE9D00, v70, MEMORY[0x277D83D88], sub_2186DD934);
    v73 = (*(v44 + 48))(v72, 1, v56);
    v51 = v136;
    if (v73 == 1)
    {
      (*(v44 + 8))(v127, v56);
      sub_2187455EC(v72, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    }

    else
    {
      v74 = v118;
      v59(v118, v72, v56);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_219C09BA0;
      v76 = v115;
      *(v75 + 56) = MEMORY[0x277D837D0];
      *(v75 + 64) = v76;
      v77 = v117;
      *(v75 + 32) = v117;
      *(v75 + 40) = v135;

      v78 = sub_219BF6F44();
      sub_219BF6214();
      sub_219BE5314();

      sub_2187B0408();
      v80 = v79;
      v81 = v119;
      v82 = &v119[*(v79 + 48)];
      (*(v44 + 16))(v119, v74, v69);
      v83 = [v114 ts_sourceApplication];
      if (v83)
      {
        v84 = v83;
        v85 = sub_219BF5414();
        v87 = v86;
      }

      else
      {
        v87 = v134;

        v85 = v113[0];
      }

      *v82 = v85;
      v82[1] = v87;
      (*(*(v80 - 8) + 56))(v81, 0, 1, v80);
      v88 = v136;
      swift_beginAccess();
      v89 = v135;

      sub_2199D63A8(v81, v77, v89);
      swift_endAccess();
      v90 = *(v44 + 8);
      v91 = v74;
      v51 = v88;
      v90(v91, v69);
      v90(v127, v69);
    }

    a2 = v114;
    goto LABEL_20;
  }

  v65 = v51;
  v67 = v132;
  v66 = v133;
  v68 = v137;
LABEL_21:

  (*(v67 + 8))(v68, v66);
  v101 = [a2 activityType];
  v102 = sub_219BF5414();
  v104 = v103;

  if (sub_219BF5414() == v102 && v105 == v104)
  {
  }

  else
  {
    v106 = sub_219BF78F4();

    if ((v106 & 1) == 0)
    {
LABEL_30:

      return;
    }
  }

  v107 = qword_280EDDC30;
  v108 = *(v65 + qword_280EDDC30);
  if (!v108)
  {
    goto LABEL_30;
  }

  [v108 setBackgroundColor_];
  v109 = *(v65 + v107);
  if (!v109)
  {
    goto LABEL_30;
  }

  v110 = [v109 rootViewController];
  if (!v110)
  {
    goto LABEL_30;
  }

  v111 = v110;
  v112 = [v110 view];

  if (v112)
  {

    [v112 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2191C1EE0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_2191C12A8(v6, v7);
}

uint64_t sub_2191C1F8C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_219BF70B4();
  swift_unknownObjectRelease();
  v7 = sub_2191BBC0C();
  v9 = v8;
  ObjectType = swift_getObjectType();
  a4(v12, ObjectType, v9);

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_2191C2020(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_2191BBC0C();
  swift_getObjectType();
  sub_2191BBCEC();
  v7 = sub_2187B7D90(&qword_280EDDDA8, MEMORY[0x277CEAEA8]);
  v9[3] = sub_219BDD274();
  v9[4] = sub_2187BB0F4(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  v9[0] = v7;
  sub_219BE6734();

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_2191C2140(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_2191BBC0C();
  v6 = MEMORY[0x277D84F70];
  sub_2187DB308(a2, v25, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F85E8);
  v7 = v26;
  if (v26)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_219BF78D4();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 canPerformAction:a1 withSender:v12];

  swift_unknownObjectRelease();
  if (v13)
  {
    return 1;
  }

  sub_2187DB308(a2, v25, &qword_280E8B4F0, v6 + 8, MEMORY[0x277D83D88], sub_2186F85E8);
  v15 = v26;
  if (v26)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v17 = *(v15 - 8);
    MEMORY[0x28223BE20](v16);
    v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = sub_219BF78D4();
    (*(v17 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v20 = 0;
  }

  v24.receiver = v2;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, sel_canPerformAction_withSender_, a1, v20);
  swift_unknownObjectRelease();
  return v21;
}

uint64_t sub_2191C2448(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = sub_2191C2140(a3, v10);

  sub_2187455EC(v10, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F85E8);
  return v8 & 1;
}

uint64_t sub_2191C25CC()
{
  sub_2187B13AC(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_219BE8C44();
  result = sub_219BE1E24();
  if (result)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(v2);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2191C2690()
{
  v1 = *(sub_219BE84F4() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_2191BF3C4(v2, v3, v4, v5);
}

uint64_t sub_2191C26F8(uint64_t a1, uint64_t a2)
{
  sub_2187B0408();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2191C275C()
{
  v1 = *(sub_219BDB954() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_2191C0BD4(v4, v0 + v2, v5, v7, v8);
}

uint64_t sub_2191C27FC(uint64_t a1, uint64_t a2)
{
  sub_2187B0408();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2191C2874()
{
  result = qword_27CC17110;
  if (!qword_27CC17110)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC17110);
  }

  return result;
}

uint64_t objectdestroy_3Tm_8()
{
  v1 = sub_219BE84F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2191C29F0()
{
  v1 = *(sub_219BE84F4() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v0 + 24);

  return sub_2191BEC88(v3, v5, v0 + v2, v4);
}

uint64_t sub_2191C2A90()
{
  sub_219BE84F4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_2191BE698(v1, v2);
}

void sub_2191C2AF4()
{
  if (!qword_280EE7370)
  {
    sub_2191C2B70();
    sub_2186D679C();
    v0 = sub_219BE2AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7370);
    }
  }
}

unint64_t sub_2191C2B70()
{
  result = qword_280ED7F38;
  if (!qword_280ED7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED7F38);
  }

  return result;
}

unint64_t sub_2191C2BCC(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_2189EB264(result);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{
  sub_218932F9C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2191C2D00()
{
  sub_2187B7D90(&qword_280EDDC68, MEMORY[0x277D6E420]);
  sub_219BE9144();
}

uint64_t sub_2191C2DAC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v78 = a3;
  v79 = a2;
  sub_2191C3BA0(0, &qword_280EE4B18, MEMORY[0x277D6DF88]);
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v68 - v6;
  v7 = type metadata accessor for AudioFeedGapLocation(0);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = sub_219BF0BD4();
  v68 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904();
  v12 = v11;
  v81 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AudioFeedGroup();
  v82 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v84 = &v68 - v22;
  sub_218BE3944();
  MEMORY[0x28223BE20](v23 - 8);
  sub_2191C3BA0(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v88 = v24;
  v74 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v68 - v25;
  v27 = sub_2191C3B58(&qword_280EE57F0, sub_218953904);
  v28 = sub_2191C3B58(&qword_280EE5800, sub_218953904);
  v86 = v12;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v12, v27, v28);
  v29 = type metadata accessor for AudioFeedSectionDescriptor();
  v30 = type metadata accessor for AudioFeedModel(0);
  v31 = sub_2191C3B58(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
  v70 = sub_2191C3B58(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
  sub_219BEB2D4();
  v32 = v4[2];
  v33 = v4[3];
  v34 = v32 >> 61;
  v87 = v26;
  v72 = v30;
  v73 = v29;
  v71 = v31;
  v80 = v32;
  if ((v32 >> 61) > 1)
  {
    if (v34 != 2)
    {
      v35 = v86;
      v84 = v33;
      if (v34 == 3)
      {
        v36 = *((v80 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v37 = *(v36 + 16);
        if (v37)
        {
          v83 = *((v80 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v38 = v36 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
          v82 = *(v82 + 72);
          v39 = (v68 + 8);
          v40 = (v81 + 8);
          do
          {
            sub_21909E61C(v38, v18);
            __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
            type metadata accessor for AudioFeedServiceConfig();
            sub_2191C3B58(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
            sub_219BEE7A4();
            sub_218AB609C(v18, v84, v10, v14);
            sub_21911C360(v18, type metadata accessor for AudioFeedGroup);
            (*v39)(v10, v85);
            sub_219BEB1E4();
            v35 = v86;
            (*v40)(v14, v86);
            v38 += v82;
            --v37;
          }

          while (v37);
        }
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_21911C3C0();
    v47 = swift_projectBox();
    v48 = v84;
    sub_21909E61C(v47, v84);
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    type metadata accessor for AudioFeedServiceConfig();
    sub_2191C3B58(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);

    sub_219BEE7A4();
    sub_218AB609C(v48, v33, v10, v14);
    (*(v68 + 8))(v10, v85);
    sub_219BEB1E4();

    v35 = v86;
    (*(v81 + 8))(v14, v86);
    sub_21911C360(v48, type metadata accessor for AudioFeedGroup);
    goto LABEL_14;
  }

  if (!v34)
  {
    goto LABEL_13;
  }

  v41 = v32 & 0x1FFFFFFFFFFFFFFFLL;
  v42 = *(v41 + 16);
  v43 = *(v42 + 16);
  v35 = v86;
  v84 = v33;
  if (v43)
  {
    v83 = *(v41 + 24);
    v44 = v42 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v82 = *(v82 + 72);
    v45 = (v68 + 8);
    v46 = (v81 + 8);
    do
    {
      sub_21909E61C(v44, v21);
      __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
      type metadata accessor for AudioFeedServiceConfig();
      sub_2191C3B58(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
      sub_219BEE7A4();
      sub_218AB609C(v21, v84, v10, v14);
      sub_21911C360(v21, type metadata accessor for AudioFeedGroup);
      (*v45)(v10, v85);
      sub_219BEB1E4();
      v35 = v86;
      (*v46)(v14, v86);
      v44 += v82;
      --v43;
    }

    while (v43);
  }

LABEL_14:
  type metadata accessor for AudioFeedServiceConfig();
  sub_2191C3B58(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
  sub_219BEF3D4();
  if (sub_219BEF394())
  {
    v49 = sub_219BEE854();
    v51 = v75;
    v50 = v76;
    if (v49)
    {
      v52 = swift_allocObject();
      sub_2191C3C94(0, &qword_280E91AF0, MEMORY[0x277D32188]);
      swift_allocObject();

      *(v52 + 16) = sub_219BEE874();
      v53 = v69;
      *v69 = v52;
      v54 = *MEMORY[0x277D33068];
      sub_2191C3C94(0, &qword_280E90A18, MEMORY[0x277D33098]);
      (*(*(v55 - 8) + 104))(v53, v54, v55);
      sub_219AD0160(v53, v14);
      sub_21911C360(v53, type metadata accessor for AudioFeedGapLocation);
      sub_219BEB1E4();
      (*(v81 + 8))(v14, v86);
    }

    v61 = v77;
  }

  else
  {
    v56 = swift_allocObject();
    sub_2191C3C94(0, &qword_280E91AF0, MEMORY[0x277D32188]);
    swift_allocObject();
    v57 = v35;

    *(v56 + 16) = sub_219BEE874();
    v58 = v69;
    *v69 = v56;
    v59 = *MEMORY[0x277D33090];
    sub_2191C3C94(0, &qword_280E90A18, MEMORY[0x277D33098]);
    (*(*(v60 - 8) + 104))(v58, v59, v60);
    sub_219AD0160(v58, v14);
    sub_21911C360(v58, type metadata accessor for AudioFeedGapLocation);
    sub_219BEB1E4();
    (*(v81 + 8))(v14, v57);
    v61 = v77;
    v51 = v75;
    v50 = v76;
  }

  sub_219BEEFF4();

  sub_219BEEFE4();
  v62 = sub_219BEEFC4();

  v63 = 0;
  if (v62)
  {
    v63 = sub_219BEDC74();
  }

  else
  {
    v90 = 0;
    v91 = 0;
  }

  v64 = v79;
  v65 = v88;
  v89 = v62;
  v92 = v63;
  v66 = v87;
  sub_219BEB2C4();

  sub_219BE85C4();
  v64(v51);

  (*(v50 + 8))(v51, v61);
  return (*(v74 + 8))(v66, v65);
}