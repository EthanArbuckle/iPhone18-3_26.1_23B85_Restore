uint64_t sub_219715170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_219BDE294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, qword_280ED9010, type metadata accessor for TodayRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v19 - v10);
  v12 = type metadata accessor for TodayRouteModel();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D2FF08], v5);
  sub_21970444C(a1, v8, a2, v20, v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_218817724(v11, qword_280ED9010, type metadata accessor for TodayRouteModel);
  }

  else
  {
    sub_21880BBE4(v11, v15, type metadata accessor for TodayRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v17 = sub_218F1DEA0(v15);
      sub_21880BA68(v15, type metadata accessor for TodayRouteModel);
      swift_unknownObjectRelease();
      return v17;
    }

    sub_21880BA68(v15, type metadata accessor for TodayRouteModel);
  }

  return 0;
}

uint64_t sub_219715480()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_218807610();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21971550C(uint64_t a1, uint64_t a2)
{
  (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 48))(a1, a2, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  v3 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v3);
  sub_219BE6EF4();
}

void sub_219715648(uint64_t a1)
{
  swift_getObjectType();
  sub_219BE3204();
  *(swift_allocObject() + 16) = a1;

  v2 = sub_219BE2E54();
  sub_219BE2F94();
}

uint64_t sub_21971571C()
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

uint64_t sub_219715940(uint64_t a1, int a2)
{
  v37 = a2;
  v34 = a1;
  v2 = sub_219BEFAD4();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - v5;
  v6 = type metadata accessor for TodayExpandContext();
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE93C4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  sub_219BE8674();
  v15 = *(v9 + 104);
  v15(v12, *MEMORY[0x277D6E578], v8);
  v16 = sub_219BE93B4();
  v17 = *(v9 + 8);
  v17(v12, v8);
  v17(v14, v8);
  if (v16 & 1) != 0 || (sub_219BE8674(), v15(v12, *MEMORY[0x277D6E570], v8), v18 = sub_219BE93B4(), v17(v12, v8), v17(v14, v8), (v18))
  {
    sub_219BE8664();
    v19 = sub_219BE7BC4();

    v20 = sub_219BF60A4();

    if (v37)
    {
      if (v20)
      {
        v21 = sub_219BE6DF4();
        v22 = v31;
        (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
        v23 = v32;
        sub_218809CC0(v22, v32);
        sub_218817724(v22, &unk_280EE56F0, MEMORY[0x277D6D878]);
        v25 = v35;
        v24 = v36;
        v26 = v33;
        (*(v35 + 104))(v33, *MEMORY[0x277D328C8], v36);
        v27 = *(v34 + 40);
        ObjectType = swift_getObjectType();
        (*(v27 + 88))(v23, v26, ObjectType, v27);
        (*(v25 + 8))(v26, v24);
        return sub_21880BA68(v23, type metadata accessor for TodayExpandContext);
      }

      goto LABEL_7;
    }

LABEL_8:
    v39 = 3;
    return sub_219BE1E74();
  }

  if ((v37 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v38 = 2;
  return sub_219BE1E74();
}

void sub_219715DE0(uint64_t a1)
{
  type metadata accessor for TodayExpandContext();

  sub_219703CC0(a1);
}

uint64_t sub_219715F24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_21970983C(a1, v4, v5, v6);
}

void sub_21971614C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    a5();
    v8 = sub_219BF0854();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2197161EC()
{
  result = qword_280EC6358;
  if (!qword_280EC6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6358);
  }

  return result;
}

uint64_t sub_219716240(uint64_t a1, uint64_t a2)
{
  sub_2187DD4F0(0, &qword_280ED2200, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_77Tm_0()
{
  v1 = sub_219BEE644();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_219716558(uint64_t a1, void *a2)
{
  v5 = *(sub_219BEE644() - 8);
  v6 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_2196FAE8C(a1, a2, v6);
}

id sub_2197165DC()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

uint64_t objectdestroy_71Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_219716814(uint64_t *a1, uint64_t a2)
{
  sub_218CD34B0();
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TodayExpandContext() - 8);
  return sub_21939FC50(a1, a2, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t sub_219716950(uint64_t a1, void *a2)
{
  sub_218853400();
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TodayGapLocation(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for TodayExpandContext() - 8);
  return sub_2196F88B4(a1, a2, v2 + v6, v2 + v9, v2 + v10, v2 + ((v10 + *(v11 + 80) + 40) & ~*(v11 + 80)));
}

uint64_t sub_219716A9C(uint64_t a1, void *a2)
{
  sub_218853400();
  v6 = (*(*(v5 - 8) + 80) + 72) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TodayGapLocation(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2196F9398(a1, a2, (v2 + 32), v2 + v6, v9);
}

uint64_t sub_219716B84()
{
  sub_219BE5384();

  return sub_2196F9624();
}

void sub_219716C10()
{
  if (!qword_280E91608)
  {
    sub_219717384(255, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
    sub_219BF0644();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E91608);
    }
  }
}

uint64_t objectdestroy_65Tm_0()
{
  v1 = (type metadata accessor for TodayExpandContext() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));
  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = sub_219BE6DF4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_219716E84(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TodayExpandContext() - 8);
  v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_219716FC8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_219BE9F74() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  v18 = *(v16 + 8);

  sub_2196F789C(a1, v10, v11, v12, v13, v1 + v6, v14, v15, v17, v18, v3, v4);
}

uint64_t sub_219717104()
{
  swift_getObjectType();
  v1 = sub_219BE3514();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D85000];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_219A1A5DC(0, MEMORY[0x277D84F90], Strong);
    swift_unknownObjectRelease();
  }

  sub_218718690(v0 + *((*v5 & *v0) + 0x110), v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  (*(v2 + 104))(v4, *MEMORY[0x277D314F8], v1);
  sub_219BE3A64();
  (*(v2 + 8))(v4, v1);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_2197172E4(uint64_t a1)
{
  sub_219717384(0, &qword_280E8D4A0, sub_21880B928, sub_2193A56A0, MEMORY[0x277D84310]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219717384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_219717404()
{
  result = qword_280EC6370;
  if (!qword_280EC6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6370);
  }

  return result;
}

uint64_t sub_219717458(uint64_t a1, uint64_t a2)
{
  sub_2187B1B90(0, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2197174E8(char a1, int a2, id a3)
{
  if ((a1 & 1) == 0)
  {
    return sub_219BE1E74();
  }

  result = [a3 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v5)
    {

      return sub_219BE1E74();
    }

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();

    return sub_219BE5314();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219717640()
{
  v0 = sub_219BE61B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D518], v0);
  v4 = sub_219BE61A4();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    sub_2196F6054();
    sub_219BEE434();
  }

  return result;
}

uint64_t sub_219717780(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementPresentationFailure() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2192BA1E0(a1, v4);
}

uint64_t sub_219717850(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_21971789C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI229SportsFavoritesSyncRouteModelO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219717938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21896FA3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v49 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v49 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = v49 - v18;
  if (a2)
  {
    if (a2 == 1)
    {
      v20 = *(a3 + 72);
      v21 = sub_219BDFA44();
      (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v56 = v20;
      sub_2187B14CC(&v57, &v51, &unk_280EE7DB0, &qword_280EE7DC0);
      if (*(&v52 + 1))
      {
        sub_21875F93C(&v51, &v53);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v23 = qword_280ED32D8;
        v22 = qword_280ED32E0;
        v24 = qword_280ED32E8;

        sub_2188202A8(v22);
        __swift_destroy_boxed_opaque_existential_1(&v53);
      }

      else
      {
        sub_2187448D0(&v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v23 = qword_280ED32D8;
        v22 = qword_280ED32E0;
        v24 = qword_280ED32E8;

        sub_2188202A8(v22);
      }

      v50 = 0xF000000000000050;
      v52 = 0u;
      v51 = 0u;
      sub_2189B4E2C(v19, v16);
      sub_2187B14CC(&v60, &v53, &qword_280EE33A0, &qword_280EE33B0);
      v33 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 47) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      sub_2189B4EAC(v16, v36 + v33);
      v37 = v36 + v34;
      v38 = v54;
      *v37 = v53;
      *(v37 + 16) = v38;
      *(v37 + 32) = v55;
      v39 = (v36 + v35);
      v40 = (v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v39 = 0;
      v39[1] = 0;
      *v40 = v23;
      v40[1] = v22;
      v40[2] = v24;

      sub_2188202A8(v22);
      sub_2186CF94C();
      sub_2189B4DD4();
      sub_219BEB464();

      sub_2187FABEC(v22);
      sub_2187448D0(&v57, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218A42D80(v19);
      return sub_2187448D0(&v51, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    }

    else
    {
      v25 = *(a3 + 72);
      v26 = swift_allocObject();
      *(v26 + 16) = a1;
      *(v26 + 24) = a2;
      v49[1] = v26;
      v27 = v26 | 0x9000000000000006;
      v28 = sub_219BDFA44();
      (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v56 = v25;
      sub_2187B14CC(&v57, &v51, &unk_280EE7DB0, &qword_280EE7DC0);
      if (*(&v52 + 1))
      {
        sub_21875F93C(&v51, &v53);
        v29 = qword_280ED32D0;

        if (v29 != -1)
        {
          swift_once();
        }

        v31 = qword_280ED32D8;
        v30 = qword_280ED32E0;
        v32 = qword_280ED32E8;

        sub_2188202A8(v30);
        __swift_destroy_boxed_opaque_existential_1(&v53);
      }

      else
      {

        sub_2187448D0(&v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v31 = qword_280ED32D8;
        v30 = qword_280ED32E0;
        v32 = qword_280ED32E8;

        sub_2188202A8(v30);
      }

      v50 = v27;
      v52 = 0u;
      v51 = 0u;
      sub_2189B4E2C(v13, v10);
      sub_2187B14CC(&v60, &v53, &qword_280EE33A0, &qword_280EE33B0);
      v41 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v42 = (v8 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = (v42 + 47) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      sub_2189B4EAC(v10, v44 + v41);
      v45 = v44 + v42;
      v46 = v54;
      *v45 = v53;
      *(v45 + 16) = v46;
      *(v45 + 32) = v55;
      v47 = (v44 + v43);
      v48 = (v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v47 = 0;
      v47[1] = 0;
      *v48 = v31;
      v48[1] = v30;
      v48[2] = v32;

      sub_2188202A8(v30);
      sub_2186CF94C();
      sub_2189B4DD4();
      sub_219BEB464();

      sub_2187FABEC(v30);
      sub_2187448D0(&v57, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218A42D80(v13);
      sub_2187448D0(&v51, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    }
  }

  return result;
}

uint64_t sub_2197183DC()
{
  sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  return v0;
}

uint64_t sub_219718928()
{
  v0 = sub_219BDD804();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BDE5F4();
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D2FAF8])
  {
    (*(v1 + 96))(v3, v0);
    v4 = *v3;
    sub_2191B3054();
    v6 = *(v5 + 48);
    v7 = sub_219BDDBF4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
    v8 = [v4 title];
    v9 = sub_219BF5414();
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_219BDB5E4();
  }

  return v9;
}

uint64_t sub_219718B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_218834EB8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v61 - v9;
  MEMORY[0x28223BE20](v8);
  v64 = &v61 - v10;
  v11 = sub_219BDB954();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v67 = &v61 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - v18;
  sub_218834EB8(0, &unk_280EE8C10, MEMORY[0x277D30048], v4);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v61 - v21;
  v23 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDD944();
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v61 - v30;
  v66 = a1;
  sub_219719558(a1, v25, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0();

  sub_218AAFD90(v25, v31, MEMORY[0x277D2FB40]);
  sub_219BDD934();
  sub_218790094(v31, MEMORY[0x277D2FB40]);
  v32 = sub_219BDE544();
  if ((*(*(v32 - 8) + 48))(v22, 1, v32) == 1)
  {
    return (*(v12 + 56))(a2, 1, 1, v11);
  }

  v68 = v11;
  v62 = a2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = *(v12 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v64 = v15;
    v36 = v67;
    v35(v67, v22, v68);
    v37 = objc_opt_self();
    v38 = sub_219BDB854();
    v61 = v37;
    v39 = [v37 nss:v38 NewsURLForWebLinkURL:?];

    if (v39)
    {
      v40 = v64;
      sub_219BDB8B4();

      v41 = v68;
      (*(v12 + 8))(v36, v68);
      v42 = v65;
      v35(v65, v40, v41);
      v43 = *(v12 + 56);
      v43(v42, 0, 1, v41);
      v44 = v62;
      v35(v62, v42, v41);
      return (v43)(v44, 0, 1, v41);
    }

    else
    {
      v52 = *(v12 + 56);
      v53 = 1;
      v54 = v65;
      v55 = v68;
      v52(v65, 1, 1, v68);
      sub_219719558(v66, v25, type metadata accessor for NewsActivity2.Article);

      sub_218AAFD90(v25, v29, MEMORY[0x277D2FB40]);
      sub_219BDD8A4();
      sub_218790094(v29, MEMORY[0x277D2FB40]);
      v56 = sub_219BF53D4();

      v57 = [v61 nss:v56 NewsURLForArticleID:?];

      if (v57)
      {
        v58 = v63;
        sub_219BDB8B4();

        v53 = 0;
        v59 = v62;
      }

      else
      {
        v59 = v62;
        v58 = v63;
      }

      (*(v12 + 8))(v67, v55);
      v52(v58, v53, 1, v55);
      sub_218AB007C(v58, v59);
      result = (*(v12 + 48))(v54, 1, v55);
      if (result != 1)
      {
        return sub_218838478(v54);
      }
    }
  }

  else
  {
    v35(v19, v22, v68);
    v45 = objc_opt_self();
    sub_219719558(v66, v25, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v25, v29, MEMORY[0x277D2FB40]);
    sub_219BDD8C4();
    sub_218790094(v29, MEMORY[0x277D2FB40]);
    v46 = sub_219BF53D4();

    v47 = sub_219BDB854();
    v48 = [v45 nss:v46 NewsURLForArticleID:v47 routeURL:?];

    if (v48)
    {
      v49 = v64;
      sub_219BDB8B4();

      v50 = 0;
      v51 = v62;
    }

    else
    {
      v50 = 1;
      v51 = v62;
      v49 = v64;
    }

    v60 = v68;
    (*(v12 + 8))(v19, v68);
    (*(v12 + 56))(v49, v50, 1, v60);
    return sub_218AB007C(v49, v51);
  }

  return result;
}

uint64_t sub_219719338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NewsActivitySerializer();

  return MEMORY[0x2821D46B0](a1, v5, a3);
}

uint64_t sub_21971938C()
{
  if ([v0 tagType] != 1)
  {
    return 0;
  }

  v1 = [v0 identifier];
  sub_219BF5414();

  LOBYTE(v1) = sub_219BF5624();

  return v1 & 1;
}

unint64_t sub_219719420(unint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  sub_218834EB8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v9 = v4;
  v6 = sub_218834F1C(&v9, a2);
  if (v2)
  {

    swift_setDeallocating();
    sub_2188317B0();
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 48) = v6;
    *(inited + 56) = v7;
    a2 = sub_218831A70(inited);
    swift_setDeallocating();
    sub_218790094(inited + 32, sub_2188317B0);
  }

  return a2;
}

uint64_t sub_219719558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2197195C0()
{
  if (!qword_27CC1E4D8)
  {
    sub_21971963C();
    sub_219BDDBF4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1E4D8);
    }
  }
}

void sub_21971963C()
{
  if (!qword_27CC1E4E0)
  {
    sub_2186C6148(255, &qword_280E8DA30);
    sub_2186CFDE4(255, &qword_280E8B580);
    v0 = sub_219BF5C24();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E4E0);
    }
  }
}

uint64_t sub_2197196CC(void *a1)
{
  sub_21971A0F0(0, &qword_27CC1E510, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219719FDC();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    type metadata accessor for ForYouTagFeedGroup();
    v9[14] = 1;
    sub_219BED8D4();
    sub_21971A154(&qword_280E92640, MEMORY[0x277D31C50]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219719894@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_219BED8D4();
  v17 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971A0F0(0, &qword_27CC1E500, MEMORY[0x277D844C8]);
  v21 = v6;
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219719FDC();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v9;
  v13 = v19;
  v12 = v20;
  v23 = 0;
  *v11 = sub_219BF76F4();
  v11[1] = v14;
  v22 = 1;
  sub_21971A154(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  (*(v13 + 8))(v8, v21);
  (*(v17 + 32))(v11 + *(v16 + 20), v5, v12);
  sub_21971A030(v11, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21971A094(v11);
}

uint64_t sub_219719BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL)
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

uint64_t sub_219719CB0(uint64_t a1)
{
  v2 = sub_219719FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219719CEC(uint64_t a1)
{
  v2 = sub_219719FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219719E58(uint64_t a1)
{
  result = sub_21971A154(&unk_27CC1C610, type metadata accessor for ForYouTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219719EB0(void *a1)
{
  a1[1] = sub_21971A154(&qword_27CC1E4F8, type metadata accessor for ForYouTagFeedGroup);
  a1[2] = sub_21971A154(&qword_27CC1C738, type metadata accessor for ForYouTagFeedGroup);
  result = sub_21971A154(&qword_27CC1C848, type metadata accessor for ForYouTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_219719F5C(uint64_t a1)
{
  v2 = sub_21971A154(&qword_27CC1E4F8, type metadata accessor for ForYouTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_219719FDC()
{
  result = qword_27CC1E508;
  if (!qword_27CC1E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E508);
  }

  return result;
}

uint64_t sub_21971A030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouTagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21971A094(uint64_t a1)
{
  v2 = type metadata accessor for ForYouTagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21971A0F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219719FDC();
    v7 = a3(a1, &type metadata for ForYouTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21971A154(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21971A1B0()
{
  result = qword_27CC1E518;
  if (!qword_27CC1E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E518);
  }

  return result;
}

unint64_t sub_21971A208()
{
  result = qword_27CC1E520;
  if (!qword_27CC1E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E520);
  }

  return result;
}

unint64_t sub_21971A260()
{
  result = qword_27CC1E528;
  if (!qword_27CC1E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E528);
  }

  return result;
}

uint64_t sub_21971A2B4()
{
  sub_21896FA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = sub_219BDFA44();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v28 = v9;
  sub_2187B14CC(v29, &v24, &unk_280EE7DB0, &qword_280EE7DC0);
  if (v25)
  {
    sub_21875F93C(&v24, v26);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_2187448D0(&v24, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
  }

  v23[2] = 0xF000000000000058;
  v25 = sub_219BDD274();
  *&v24 = v8;
  sub_2189B4E2C(v7, v5);
  sub_2187B14CC(v31, v26, &qword_280EE33A0, &qword_280EE33B0);
  v14 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23[0] = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  sub_2189B4EAC(v5, v17 + v14);
  v18 = v17 + v15;
  v19 = v26[1];
  *v18 = v26[0];
  *(v18 + 16) = v19;
  *(v18 + 32) = v27;
  v20 = (v17 + v16);
  v21 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v20 = 0;
  v20[1] = 0;
  *v21 = v12;
  v21[1] = v11;
  v21[2] = v13;
  swift_retain_n();

  sub_2188202A8(v11);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v11);
  sub_2187448D0(v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v23[0]);
  return sub_2187448D0(&v24, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_21971A87C()
{
  v5 = type metadata accessor for TopicsSearchFeedGroupConfigData();
  MEMORY[0x28223BE20](v5);
  v0 = sub_219BEF874();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2187089D4(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = sub_219BEF554();
  MEMORY[0x28223BE20](v3 - 8);
  sub_218713528();
  sub_219BEDD44();
  sub_219BEDCA4();

  sub_219BEDCC4();
  sub_219BEDC94();
  sub_219BEDC84();
  sub_219BEDCF4();
  sub_219BEDD04();
  sub_219BEDCD4();
  sub_219BEDCE4();
  sub_219BEDD74();
  sub_219BEDD14();
  sub_21971B0F8(&qword_280EA75F8, type metadata accessor for TopicsSearchFeedGroupConfigData);
  sub_21971B0F8(&qword_280EA7600, type metadata accessor for TopicsSearchFeedGroupConfigData);
  return sub_219BEDD34();
}

uint64_t sub_21971AB40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21971B094(0, &qword_280E8CA78, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21971B040();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_21971B0F8(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for TopicsSearchFeedGroupConfigData() + 20)) = 2;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21971ADB8(void *a1)
{
  v3 = v1;
  sub_21971B094(0, &qword_27CC1E530, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21971B040();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_21971B0F8(&qword_280E90810, MEMORY[0x277D33478]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for TopicsSearchFeedGroupConfigData() + 20));
    v11[13] = 1;
    sub_218C94574();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21971AF98(uint64_t a1)
{
  v2 = sub_21971B040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21971AFD4(uint64_t a1)
{
  v2 = sub_21971B040();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21971B040()
{
  result = qword_280EA7618[0];
  if (!qword_280EA7618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA7618);
  }

  return result;
}

void sub_21971B094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21971B040();
    v7 = a3(a1, &type metadata for TopicsSearchFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21971B0F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21971B154()
{
  result = qword_27CC1E538;
  if (!qword_27CC1E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E538);
  }

  return result;
}

unint64_t sub_21971B1AC()
{
  result = qword_280EA7608;
  if (!qword_280EA7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7608);
  }

  return result;
}

unint64_t sub_21971B204()
{
  result = qword_280EA7610;
  if (!qword_280EA7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7610);
  }

  return result;
}

void *sub_21971B258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218B803C4(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v7 = *(sub_219BE2644() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  v10 = (v9 + v8);
  *v10 = 12908;
  v10[1] = 0xE200000000000000;
  (*(v7 + 104))();
  sub_219897824(MEMORY[0x277D84F90]);
  v11 = sub_219BE2674();

  v3[2] = v11;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_21971B3D8(uint64_t a1)
{
  v2 = v1;
  sub_218B803C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v9 = sub_219BE22B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE22F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v2 + 40) puzzlesEnabled])
  {
    v50 = sub_218FA86C8(a1);
    sub_218B803C4(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
    sub_219BE2594();
    sub_219BE22D4();
    (*(v14 + 8))(v16, v13);
    v17 = sub_219BE22C4();
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    if (v19)
    {
      if (v17 == 1702195828 && v19 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
      {
        v20 = 1;
      }

      else
      {
        if (v17 != 0x65736C6166 || v19 != 0xE500000000000000)
        {
          sub_219BF78F4();
        }

        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v25 = v8;
    v26 = *(v2 + 24);
    v27 = swift_allocObject();
    *(v27 + 24) = 0;
    *(v27 + 32) = 0;
    v28 = v50;
    *(v27 + 16) = v50;
    *(v27 + 40) = v20;
    v29 = v27 | 0xE000000000000002;
    v30 = sub_219BDFA44();
    (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
    v60 = 0;
    memset(v59, 0, sizeof(v59));
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    v56 = v26;
    sub_2187B16A8(v57, &v52, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v53 + 1))
    {
      sub_21875F93C(&v52, v54);
      v31 = qword_280ED32D0;
      v32 = v28;
      if (v31 != -1)
      {
        swift_once();
      }

      v34 = qword_280ED32D8;
      v33 = qword_280ED32E0;
      v35 = qword_280ED32E8;

      sub_2188202A8(v33);
      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    else
    {
      v36 = v28;
      sub_218744C30(&v52, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v34 = qword_280ED32D8;
      v33 = qword_280ED32E0;
      v35 = qword_280ED32E8;

      sub_2188202A8(v33);
    }

    v51 = v29;
    v53 = 0u;
    v52 = 0u;
    v37 = v49;
    sub_2187B16A8(v25, v49, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
    sub_2187B16A8(v59, v54, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v38 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v39 = (v5 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + 47) & 0xFFFFFFFFFFFFFFF8;
    v48 = v25;
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    sub_2189B4EAC(v37, v41 + v38);
    v42 = v41 + v39;
    v43 = v54[1];
    *v42 = v54[0];
    *(v42 + 16) = v43;
    *(v42 + 32) = v55;
    v44 = (v41 + v40);
    v45 = (v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v44 = 0;
    v44[1] = 0;
    *v45 = v34;
    v45[1] = v33;
    v45[2] = v35;

    sub_2188202A8(v33);
    sub_2186CF94C();
    sub_21971BEAC(&qword_280EE5A90, 255, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v33);

    sub_218744C30(v57, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744C30(v59, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218744C30(v48, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
    sub_218744C30(&v52, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  else
  {
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v21 = sub_219BE5434();
    __swift_project_value_buffer(v21, qword_27CCD8BA0);
    v22 = sub_219BE5414();
    v23 = sub_219BF61F4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2186C1000, v22, v23, "Error while trying to navigate to PuzzleHub: Puzzles are not enabled.", v24, 2u);
      MEMORY[0x21CECF960](v24, -1, -1);
    }
  }

  return 1;
}

uint64_t sub_21971BEAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21971BEF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = sub_219BF5474();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197210B0(0, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v61 - v10;
  v12 = type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides();
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 possiblyUnfetchedAppConfiguration];
  if ([v18 respondsToSelector_])
  {
    v68 = v8;
    v19 = [v18 todayFeedGroupClusteringKnobOverrides];
    swift_unknownObjectRelease();
    if (v19)
    {
      v64 = v14;
      v65 = v11;
      v67 = v17;
      v70 = a3;
      v71 = a2;
      sub_219BF5214();

      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v20 = qword_280F616D8;
      sub_2186F20D4();
      v22 = v21;
      v23 = swift_allocObject();
      v63 = xmmword_219C09BA0;
      *(v23 + 16) = xmmword_219C09BA0;
      v24 = sub_219BF5224();
      v26 = v25;
      *(v23 + 56) = MEMORY[0x277D837D0];
      v69 = sub_2186FC3BC();
      *(v23 + 64) = v69;
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      v27 = v20;
      sub_219BF6214();
      sub_219BE5314();

      v28 = objc_opt_self();
      v29 = sub_219BF5204();
      v75 = 0;
      v30 = [v28 dataWithJSONObject:v29 options:0 error:&v75];

      v31 = v75;
      if (v30)
      {
        v66 = v22;
        v32 = v69;

        v33 = sub_219BDBA04();
        v35 = v34;

        sub_219BDAFF4();
        swift_allocObject();
        sub_219BDAFE4();
        sub_21972141C(&qword_280E98800, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
        v36 = v67;
        sub_219BDAFC4();
        a3 = v70;
        v61 = v33;
        v62 = v35;
        v68 = v27;

        v48 = v36;
        v49 = v65;
        sub_219721298(v36, v65, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
        v50 = (*(v72 + 48))(v49, 1, v73);
        a2 = v71;
        if (v50 != 1)
        {
          v54 = v64;
          sub_2197211C8(v49, v64, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_219C09EC0;
          v75 = 0;
          v76 = 0xE000000000000000;
          sub_219BF7484();
          v56 = v75;
          v57 = v76;
          v58 = MEMORY[0x277D837D0];
          *(v55 + 56) = MEMORY[0x277D837D0];
          *(v55 + 64) = v32;
          *(v55 + 32) = v56;
          *(v55 + 40) = v57;
          v75 = 0;
          v76 = 0xE000000000000000;
          type metadata accessor for ChannelTodayFeedGroupKnobs();
          sub_219BF7484();
          v59 = v75;
          v60 = v76;
          *(v55 + 96) = v58;
          *(v55 + 104) = v32;
          *(v55 + 72) = v59;
          *(v55 + 80) = v60;
          sub_219BF6214();
          sub_219BE5314();

          sub_218CC5018(v54, a3);
          sub_2186C6190(v61, v62);
          sub_2197214EC(v54, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
          return sub_2197214EC(v48, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
        }

        sub_219721318(v49, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
        v51 = swift_allocObject();
        *(v51 + 16) = v63;
        v75 = 0;
        v76 = 0xE000000000000000;
        sub_219BF7484();
        v52 = v75;
        v53 = v76;
        *(v51 + 56) = MEMORY[0x277D837D0];
        *(v51 + 64) = v32;
        *(v51 + 32) = v52;
        *(v51 + 40) = v53;
        sub_219BF6214();
        sub_219BE5314();
        sub_2186C6190(v61, v62);

        sub_2197214EC(v48, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
      }

      else
      {
        v38 = v31;
        v39 = sub_219BDB724();

        swift_willThrow();
        sub_219BF61F4();
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_219C09EC0;
        v41 = sub_219BF5224();
        v43 = v42;

        v44 = MEMORY[0x277D837D0];
        v45 = v69;
        *(v40 + 56) = MEMORY[0x277D837D0];
        *(v40 + 64) = v45;
        *(v40 + 32) = v41;
        *(v40 + 40) = v43;
        v75 = 0;
        v76 = 0xE000000000000000;
        v74 = v39;
        sub_2186CFDE4(0, &qword_280E8B580);
        sub_219BF7484();
        v46 = v75;
        v47 = v76;
        *(v40 + 96) = v44;
        *(v40 + 104) = v45;
        *(v40 + 72) = v46;
        *(v40 + 80) = v47;
        sub_219BE5314();

        a3 = v70;
        a2 = v71;
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return sub_219721230(a2, a3, type metadata accessor for ChannelTodayFeedGroupKnobs);
}

uint64_t sub_21971C8C0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  type metadata accessor for TodayFeedGroup();
  v3[6] = swift_task_alloc();
  sub_2197210B0(0, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor, MEMORY[0x277D83D88]);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = sub_219BEFCC4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for ChannelTodayFeedGroupEmitterCursor();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21971CA8C, 0, 0);
}

uint64_t sub_21971CA8C()
{
  sub_219BEF164();
  v1 = v0[1].i64[0];
  v0[8].i64[1] = v1;
  v2 = swift_task_alloc();
  v0[9].i64[0] = v2;
  v2[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[9].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_21971CC20;
  v4 = v0[8].i64[0];
  v5 = v0[6].i64[1];

  return MEMORY[0x282190858](v4, v5, &unk_219C9F628, v2, v5);
}

uint64_t sub_21971CC20()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_21971D3CC;
  }

  else
  {

    v2 = sub_21971CD3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21971CD3C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[4];
  sub_219721230(v0[16], v7, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  (*(v4 + 56))(v7, 0, 1, v3);
  sub_21971DCC4(v5, v6, v7, v2, v8);
  if (v1)
  {
    v9 = v0[16];
    v10 = v0[8];

    sub_219721318(v10, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_2197214EC(v9, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);

    v11 = v0[1];

    return v11();
  }

  else
  {
    sub_219721318(v0[8], &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_21971CF5C;
    v14 = v0[12];
    v15 = v0[4];

    return sub_21971E9F0(v15, v14);
  }
}

uint64_t sub_21971CF5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_21971D494;
  }

  else
  {
    v4 = sub_21971D070;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21971D070()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[7];
  sub_21972011C(v0[22], v0[6]);
  sub_219721298(v3, v4, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  v5 = (*(v2 + 48))(v4, 1, v1);
  v26 = v0[16];
  if (v5 == 1)
  {
    v6 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[3];

    sub_219721318(v9, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    (*(v6 + 8))(v7, v8);
    sub_2197214EC(v26, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_219721318(v10, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_2197211C8(v11, v12, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[11];
    v24 = v0[10];
    v25 = v0[12];
    v23 = v0[9];
    v16 = v0[6];
    v17 = v0[3];
    sub_2197211C8(v0[7], v13, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_218B8B468();
    v19 = (v17 + *(v18 + 48));
    sub_219721230(v16, v17, type metadata accessor for TodayFeedGroup);
    v19[3] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    sub_2197211C8(v13, boxed_opaque_existential_1, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);

    sub_2197214EC(v16, type metadata accessor for TodayFeedGroup);
    sub_219721318(v23, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    (*(v15 + 8))(v25, v24);
    sub_2197214EC(v26, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  }

  sub_21903485C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v21 = v0[1];

  return v21();
}

uint64_t sub_21971D3CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21971D494()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  sub_219721318(v5, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  (*(v3 + 8))(v2, v4);
  sub_2197214EC(v1, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21971D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2187608D4;

  return sub_21971D66C(a1, a3, a4);
}

uint64_t sub_21971D66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v4 = sub_219BF0334();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21971D72C, 0, 0);
}

uint64_t sub_21971D72C()
{
  sub_219BE2CF4();
  v0[10] = v0[3];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_21971D7E8;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_21971D7E8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21902F254;
  }

  else
  {

    v2 = sub_21971D904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21971D904()
{
  v0[13] = v0[2];

  sub_219BE2CF4();

  v1 = sub_219BE2E54();
  v0[14] = sub_219BE2F74();

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_21971DA1C;
  v3 = v0[9];

  return MEMORY[0x2821D23D8](v3);
}

uint64_t sub_21971DA1C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_21902F2C0;
  }

  else
  {

    v2 = sub_21971DB38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21971DB38()
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v12 = v0[7];
  v4 = v0[5];
  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  v6 = MEMORY[0x277D83B88];
  v7 = *(*(v1 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_scoredItems) + 16);
  v8 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v8;
  *(v5 + 32) = v7;
  v9 = *(sub_219BF0324() + 16);

  *(v5 + 96) = v6;
  *(v5 + 104) = v8;
  *(v5 + 72) = v9;
  sub_219BF6214();
  sub_219BE5314();

  (*(v3 + 32))(v4, v2, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21971DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v97 = a5;
  v94 = a4;
  v108 = a3;
  v93 = a2;
  v92 = a1;
  v5 = sub_219BEE6E4();
  v104 = *(v5 - 8);
  v105 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v107 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v109 = &v88 - v8;
  v9 = sub_219BEFCC4();
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x28223BE20](v9);
  v96 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2197210B0(0, &unk_280E91200, MEMORY[0x277D32A38], MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v88 - v16;
  sub_2197210B0(0, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor, v11);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v88 - v22;
  v24 = type metadata accessor for ChannelTodayFeedGroupEmitterCursor();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219721298(v108, v23, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_219721318(v23, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    v28 = sub_219BEEDD4();
    sub_21972141C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D323C8], v28);
    return swift_willThrow();
  }

  sub_2197211C8(v23, v27, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  sub_219BEDC44();

  sub_2198E40C8(v17, v21);

  sub_219721298(v17, v15, &unk_280E91200, MEMORY[0x277D32A38]);
  v32 = v98;
  v31 = v99;
  if ((*(v98 + 48))(v15, 1, v99) == 1)
  {
    v33 = MEMORY[0x277D32A38];
    sub_219721318(v15, &unk_280E91200, MEMORY[0x277D32A38]);
    v34 = sub_219BEEDD4();
    sub_21972141C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D32390], v34);
    swift_willThrow();
    sub_219721318(v21, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_219721318(v17, &unk_280E91200, v33);
    return sub_2197214EC(v27, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  }

  v36 = v31;
  v89 = v21;
  v90 = v27;
  v91 = v17;
  v37 = v96;
  (*(v32 + 32))(v96, v15, v36);
  v38 = sub_219BEFC74();
  v103 = *(v38 + 16);
  if (v103)
  {
    v39 = 0;
    v101 = v94 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v100 = v104 + 16;
    v95 = (v104 + 8);
    v106 = (v104 + 32);
    v40 = MEMORY[0x277D84F90];
    v41 = v105;
    v102 = v38;
    while (v39 < *(v38 + 16))
    {
      v108 = v40;
      v42 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v43 = *(v104 + 72);
      v37 = v109;
      v44 = (*(v104 + 16))(v109, v38 + v42 + v43 * v39, v41);
      v45 = *(v101 + 16);
      v46 = MEMORY[0x21CEC5420](v44);
      v48 = v47;
      if (*(v45 + 16) && (v49 = v46, sub_219BF7AA4(), sub_219BF5524(), v50 = sub_219BF7AE4(), v37 = (v45 + 56), v51 = -1 << *(v45 + 32), v52 = v50 & ~v51, ((*(v45 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0))
      {
        v53 = ~v51;
        while (1)
        {
          v54 = (*(v45 + 48) + 16 * v52);
          v55 = *v54 == v49 && v54[1] == v48;
          if (v55 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v52 = (v52 + 1) & v53;
          if (((*(v37 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v41 = v105;
        (*v95)(v109, v105);
        v40 = v108;
      }

      else
      {
LABEL_19:

        v56 = *v106;
        v41 = v105;
        (*v106)(v107, v109, v105);
        v40 = v108;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = &v110;
          sub_218C34B28(0, *(v40 + 16) + 1, 1);
          v40 = v110;
        }

        v59 = *(v40 + 16);
        v58 = *(v40 + 24);
        if (v59 >= v58 >> 1)
        {
          v37 = &v110;
          sub_218C34B28(v58 > 1, v59 + 1, 1);
          v40 = v110;
        }

        *(v40 + 16) = v59 + 1;
        v56((v40 + v42 + v59 * v43), v107, v41);
      }

      ++v39;
      v38 = v102;
      if (v39 == v103)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_39:
    v61 = sub_219BF7214();
    goto LABEL_27;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_25:

  v37 = v96;
  v60 = sub_219BEFCA4();
  if (v60 >> 62)
  {
    goto LABEL_39;
  }

  v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:

  v62 = *(v40 + 16);
  v63 = MEMORY[0x277D83B88];
  if (v61 != v62)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_219C0B8C0;
    v65 = [sub_219BEFC94() identifier];
    swift_unknownObjectRelease();
    v66 = sub_219BF5414();
    v68 = v67;

    *(v64 + 56) = MEMORY[0x277D837D0];
    *(v64 + 64) = sub_2186FC3BC();
    *(v64 + 32) = v66;
    *(v64 + 40) = v68;
    v69 = sub_219BEFCA4();
    if (v69 >> 62)
    {
      v70 = sub_219BF7214();
    }

    else
    {
      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = MEMORY[0x277D83B88];

    *(v64 + 96) = v63;
    v71 = MEMORY[0x277D83C10];
    *(v64 + 104) = MEMORY[0x277D83C10];
    *(v64 + 112) = v62;
    *(v64 + 72) = v70;
    *(v64 + 136) = v63;
    *(v64 + 144) = v71;
    sub_219BF6214();
    sub_219BE5314();
  }

  v72 = sub_219BEFC84();
  v73 = [v72 minClusterSize];

  if (v62 >= v73)
  {
    sub_219BEFCB4();

    (*(v98 + 8))(v37, v99);
    sub_219721318(v91, &unk_280E91200, MEMORY[0x277D32A38]);
    sub_2197214EC(v90, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    return sub_219721388(v89, v93);
  }

  else
  {
    v74 = v63;

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v109 = qword_280F616D8;
    sub_219BF6204();
    sub_2186F20D4();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_219C0B8C0;
    v76 = v96;
    v77 = [sub_219BEFC94() identifier];
    swift_unknownObjectRelease();
    v78 = sub_219BF5414();
    v80 = v79;

    *(v75 + 56) = MEMORY[0x277D837D0];
    v81 = sub_2186FC3BC();
    *(v75 + 32) = v78;
    *(v75 + 40) = v80;
    *(v75 + 96) = v74;
    *(v75 + 104) = MEMORY[0x277D83C10];
    *(v75 + 64) = v81;
    *(v75 + 72) = v62;
    v82 = sub_219BEFC84();
    v83 = [v82 minClusterSize];

    v84 = MEMORY[0x277D83ED0];
    *(v75 + 136) = MEMORY[0x277D83E88];
    *(v75 + 144) = v84;
    *(v75 + 112) = v83;
    sub_219BE5314();

    v85 = v89;
    sub_21971DCC4(v92, v93, v89, v94, v97);
    v86 = v91;
    v87 = v90;
    (*(v98 + 8))(v76, v99);
    sub_219721318(v85, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
    sub_219721318(v86, &unk_280E91200, MEMORY[0x277D32A38]);
    return sub_2197214EC(v87, type metadata accessor for ChannelTodayFeedGroupEmitterCursor);
  }
}

uint64_t sub_21971E9F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2197210B0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2197210B0(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  sub_2197210B0(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_2197210B0(0, &unk_280E8FF30, sub_218A42400, v4);
  v3[14] = swift_task_alloc();
  sub_2197210B0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  v3[15] = swift_task_alloc();
  v7 = sub_219BDBD64();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_219BF3C84();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v9 = sub_219BF26F4();
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();
  v10 = sub_219BF1364();
  v3[25] = v10;
  v3[26] = *(v10 - 8);
  v3[27] = swift_task_alloc();
  v11 = sub_219BF1214();
  v3[28] = v11;
  v3[29] = *(v11 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for ChannelTodayFeedGroupConfigData();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v12 = sub_219BF1934();
  v3[34] = v12;
  v3[35] = *(v12 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21971EF1C, 0, 0);
}

uint64_t sub_21971EF1C()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v82 = v0[30];
  v5 = v0[29];
  v76 = v0[31];
  v80 = v0[28];
  v73 = v0[37];
  sub_2186E12C4();
  sub_219BEDD14();
  (*(v2 + 16))(v73, v4, v1);
  sub_2197214EC(v4, type metadata accessor for ChannelTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v5 + 16))(v82, v3 + *(v76 + 20), v80);
  sub_2197214EC(v3, type metadata accessor for ChannelTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v64 = v0[37];
  v6 = v0[35];
  v68 = v0[34];
  v7 = v0[29];
  v8 = v0[30];
  v66 = v0[28];
  v70 = v0[27];
  v74 = v0[25];
  v75 = v0[26];
  v77 = v0[24];
  v81 = v0[23];
  v83 = v0[22];
  v9 = qword_280F616D8;
  sub_219BEFC94();
  v63 = v9;
  sub_219BF1774();
  swift_unknownObjectRelease();

  (*(v7 + 8))(v8, v66);
  v10 = *(v6 + 8);
  v0[39] = v10;
  v0[40] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v64, v68);
  sub_219BEFC94();
  swift_getObjectType();
  sub_2194F6464(v70);
  swift_unknownObjectRelease();
  v11 = MEMORY[0x277D84560];
  sub_2197210B0(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  v13 = swift_allocBox();
  (*(v75 + 16))(v14, v70, v74);
  *v77 = v13;
  v15 = *MEMORY[0x277D33748];
  v16 = sub_219BF2124();
  (*(*(v16 - 8) + 104))(v77, v15, v16);
  (*(v81 + 104))(v77, *MEMORY[0x277D339C8], v83);
  sub_219BF1A04();
  sub_2197210B0(0, &unk_280E8B790, MEMORY[0x277D34258], v11);
  sub_219BF3E84();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  v17 = sub_219BEFCA4();
  v18 = v0;
  if (v17 >> 62)
  {
    v58 = v17;
    v19 = sub_219BF7214();
    v17 = v58;
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = v12;
  if (v19)
  {
    v71 = v17;
    v86 = MEMORY[0x277D84F90];
    v20 = sub_218C34A88(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v20, v21, v22, v23, v24);
    }

    v25 = 0;
    v26 = v0[20];
    v27 = v71;
    v84 = v0;
    v78 = *MEMORY[0x277D34128];
    do
    {
      if ((v71 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x21CECE0F0](v25, v27);
      }

      else
      {
        v28 = swift_unknownObjectRetain();
      }

      v29 = v84[21];
      v30 = v84[19];
      *v29 = v28;
      (*(v26 + 104))(v29, v78, v30);
      v32 = *(v86 + 16);
      v31 = *(v86 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_218C34A88(v31 > 1, v32 + 1, 1);
        v27 = v71;
      }

      v33 = v84[21];
      v34 = v84[19];
      ++v25;
      *(v86 + 16) = v32 + 1;
      (*(v26 + 32))(v86 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v32, v33, v34);
    }

    while (v19 != v25);

    v18 = v84;
  }

  else
  {
  }

  v36 = v18[17];
  v35 = v18[18];
  v37 = v18[16];
  v61 = v18[15];
  v62 = v18[14];
  v65 = v18[7];
  v67 = v18[6];
  v38 = v18[4];
  v72 = v18[5];
  v39 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v39);
  sub_218F0BB90(v39);
  sub_219BF3E74();
  v79 = *(v38 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_formatService + 24);
  v85 = *(v38 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_formatService + 32);
  __swift_project_boxed_opaque_existential_1((v38 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_formatService), v79);
  v40 = [sub_219BEFC94() identifier];
  swift_unknownObjectRelease();
  v41 = sub_219BF5414();
  v43 = v42;

  MEMORY[0x21CECC330](v41, v43);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BDBD54();
  v44 = sub_219BDBD44();
  v46 = v45;
  (*(v36 + 8))(v35, v37);
  MEMORY[0x21CECC330](v44, v46);

  v47 = [sub_219BEFC94() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v48 = sub_219BEC004();
  v60 = *(*(v48 - 8) + 56);
  v60(v61, 1, 1, v48);
  sub_219BF1714();
  sub_2191EED30(v69);
  sub_218A42400(0);
  (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
  sub_219BF1764();

  sub_219721318(v62, &unk_280E8FF30, sub_218A42400);
  sub_219721318(v61, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  sub_2186DF210(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_219C146A0;
  *(v50 + 32) = sub_219BEFC94();
  v60(v61, 1, 1, v48);
  sub_219A95188(v39);
  sub_219A95188(v39);
  sub_219A951A0(v39);
  sub_219A951B8(v39);
  sub_219A952CC(v39);
  sub_219A952E4(v39);
  sub_219A953F8(v39);
  sub_219BF2024();
  v51 = OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v53 = v52;
  v54 = *(v52 - 8);
  (*(v54 + 16))(v65, v38 + v51, v52);
  (*(v54 + 56))(v65, 0, 1, v53);
  v55 = sub_219BF35D4();
  (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
  *(v18 + 352) = 21;
  sub_21903485C(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v56 = sub_219BF2774();
  (*(*(v56 - 8) + 56))(v72, 1, 1, v56);
  *MEMORY[0x277D30BC8];
  v63;
  sub_219BF2A84();
  v57 = swift_task_alloc();
  v18[41] = v57;
  *v57 = v18;
  v57[1] = sub_21971FBA8;
  v21 = v18[13];
  v22 = v18[10];
  v20 = v18[36];
  v23 = v79;
  v24 = v85;

  return MEMORY[0x2821921B8](v20, v21, v22, v23, v24);
}

uint64_t sub_21971FBA8(uint64_t a1)
{
  v3 = *v2;
  v3[42] = v1;

  v15 = v3[39];
  v4 = v3[36];
  v5 = v3[34];
  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[11];
  v9 = v3[10];
  v10 = v3[9];
  v11 = v3[8];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_21971FFA4;
  }

  else
  {
    v3[43] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_21971FE28;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_21971FE28()
{
  v1 = v0[39];
  v2 = v0[38];
  v3 = v0[34];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[43];

  return v4(v5);
}

uint64_t sub_21971FFA4()
{
  v1 = v0[39];
  v2 = v0[38];
  v3 = v0[34];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21972011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[3] = a1;
  v13 = a2;
  sub_2197210B0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_219BEF554();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v12 = sub_219BED8D4();
  v5 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E12C4();

  v8 = sub_219BEDCB4();
  v11[1] = v9;
  v11[2] = v8;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for ChannelTodayFeedGroupKnobs();
  sub_21903485C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v5 + 32))(v13, v7, v12);
  type metadata accessor for TodayFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219720464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2197210B0(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219720584, 0, 0);
}

uint64_t sub_219720584()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_21903485C(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_219721318(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_2197211C8(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_2197214EC(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219034698(*(v0 + 40), *(v0 + 24));
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2197207AC()
{
  v1 = OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_config;
  sub_2186E12C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2197214EC(v0 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_knobs, type metadata accessor for ChannelTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_formatService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_personalizationService);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChannelTodayFeedGroupEmitter()
{
  result = qword_280EB4FD0;
  if (!qword_280EB4FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219720904()
{
  sub_2186E12C4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChannelTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2197209F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21971C8C0(a1, a2);
}

uint64_t sub_219720A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187609C8;

  return sub_219720464(a1, a2, a3);
}

uint64_t sub_219720B4C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_219720B8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_config;
  sub_2186E12C4();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219720C20@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ChannelTodayFeedGroupKnobs();
  a1[4] = sub_21972141C(&unk_280EBBEE0, type metadata accessor for ChannelTodayFeedGroupKnobs);
  a1[5] = sub_21972141C(&qword_280EBBEF0, type metadata accessor for ChannelTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219721230(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ChannelTodayFeedGroupKnobs);
}

uint64_t sub_219720D84@<X0>(uint64_t *a1@<X8>)
{
  sub_2197210B0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E12C4();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2197214EC(inited + 32, sub_2188317B0);
  sub_2197210B0(0, &qword_280EE7960, type metadata accessor for ChannelTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_219721464();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219720F24()
{
  sub_21972141C(&qword_280EB4FF8, type metadata accessor for ChannelTodayFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_2197210B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219721114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_21971D5B4(a1, v4, v5, v6);
}

uint64_t sub_2197211C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219721230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219721298(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2197210B0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219721318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2197210B0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219721388(uint64_t a1, uint64_t a2)
{
  sub_2197210B0(0, &qword_280EA0D20, type metadata accessor for ChannelTodayFeedGroupEmitterCursor, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21972141C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219721464()
{
  result = qword_280EE7968;
  if (!qword_280EE7968)
  {
    sub_2197210B0(255, &qword_280EE7960, type metadata accessor for ChannelTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7968);
  }

  return result;
}

uint64_t sub_2197214EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_21972157C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PuzzleEmbedShowAlertMessageHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_219721630(uint64_t a1)
{
  v2 = sub_219BF3994();
  v9[3] = v2;
  v9[4] = MEMORY[0x277D33FF8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  v4 = objc_allocWithZone(sub_219BF2224());
  v5 = sub_219BF2214();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC7NewsUI234PuzzleEmbedShowAlertMessageHandler_scriptsManager);
    v8 = Strong;
    swift_unknownObjectRetain();

    [v7 executeScript:v5 completion:0];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_2197217BC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 presentViewController:a1 animated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_21972187C(void *a1)
{
  sub_219721C88();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF3704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 body];
  v10 = sub_219BF5214();

  v11 = sub_2187A1A2C(v10);

  if (!v11)
  {
    goto LABEL_4;
  }

  sub_219BF36F4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_219721CE0(v4);
LABEL_4:
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_280F625E0);
    swift_unknownObjectRetain();
    v13 = sub_219BE5414();
    v14 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = [a1 body];
      sub_219BF5214();

      v18 = sub_219BF5224();
      v20 = v19;

      v21 = sub_2186D1058(v18, v20, &v24);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_2186C1000, v13, v14, "PuzzleEmbedShowAlertMessageHandler received invalid message %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CECF960](v16, -1, -1);
      MEMORY[0x21CECF960](v15, -1, -1);
    }

    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v22 = sub_219BF4844();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2197217BC(v22);
    swift_unknownObjectRelease();
  }

  (*(v6 + 8))(v8, v5);
}

void sub_219721C88()
{
  if (!qword_27CC1E560)
  {
    sub_219BF3704();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E560);
    }
  }
}

uint64_t sub_219721CE0(uint64_t a1)
{
  sub_219721C88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PuzzleListTagFeedGroupKnobs()
{
  result = qword_280EB7688;
  if (!qword_280EB7688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219721DB8()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      sub_2186F95C4();
      if (v2 <= 0x3F)
      {
        sub_219723040(319, &qword_280E91680, sub_219721E88);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_219721E88()
{
  if (!qword_280E91688)
  {
    sub_219BF2934();
    v0 = MEMORY[0x277D33A28];
    sub_21877CCF0(&qword_280E90338, MEMORY[0x277D33A28]);
    sub_21877CCF0(&unk_280E90348, v0);
    sub_21877CCF0(&qword_280E90340, v0);
    v1 = sub_219BEF284();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91688);
    }
  }
}

uint64_t sub_219721F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a3;
  v31 = a5;
  v29 = a4;
  sub_219723040(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  sub_2189AD5C8();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v13);
  v19 = *(v16 + 48);
  if (v19(v13, 1, v15) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v28 = a7;
    sub_21877CCF0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a7 = v28;
    sub_219BEE974();
    if (v19(v13, 1, v15) != 1)
    {
      sub_2189ADEC8(v13);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v13, v15);
  }

  (*(v16 + 32))(a7, v18, v15);
  v20 = v31;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    v32 = 2;
    sub_2186F9548();
    swift_allocObject();
    v21 = sub_219BEF534();
  }

  v22 = v30;
  v23 = type metadata accessor for PuzzleListTagFeedGroupKnobs();
  *(a7 + v23[5]) = v21;
  if (v22)
  {

    v24 = v22;
  }

  else
  {
    v32 = 6;
    sub_2186F9548();
    swift_allocObject();

    v24 = sub_219BEF534();
  }

  *(a7 + v23[6]) = v24;
  v25 = v29;
  if (v29)
  {
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_2186F95C4();
    swift_allocObject();

    v25 = sub_219BEF534();
  }

  *(a7 + v23[7]) = v25;
  if (!v20)
  {
    LOBYTE(v32) = 0;
    sub_2186F95C4();
    swift_allocObject();
    v20 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a7 + v23[8]) = v20;
  *(a7 + v23[9]) = a6;
  return result;
}

uint64_t sub_21972236C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_2189AD5C8();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PuzzleListTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219723040(0, &qword_280E91A70, sub_2189AD5C8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v42 - v11;
  sub_21972314C(0, &qword_280E8CC98, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219723094();
  v17 = v59;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = 0;
  v47 = v14;
  v48 = v7;
  v49 = a1;
  v44 = v5;
  LOBYTE(v65) = 0;
  sub_21877CCF0(&qword_280E91A88, sub_2189AD5C8);
  v19 = v53;
  v20 = v57;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v64) = 1;
  sub_21877CCF0(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v59 = v65;
  LOBYTE(v63) = 2;
  sub_219BF7674();
  v52 = v64;
  sub_2186F95C4();
  LOBYTE(v62) = 3;
  sub_21877CCF0(&qword_280E913F8, sub_2186F95C4);
  sub_219BF7674();
  v50 = v63;
  LOBYTE(v61) = 4;
  sub_219BF7674();
  v51 = v62;
  sub_219721E88();
  LOBYTE(v60) = 5;
  sub_21877CCF0(&qword_280E91690, sub_219721E88);
  sub_219BF7674();
  v45 = v61;
  v21 = v58;
  sub_2189ADE64(v19, v58);
  v22 = *(v56 + 48);
  v23 = v22(v21, 1, v20);
  v43 = v13;
  v24 = v19;
  v25 = v16;
  if (v23 != 1)
  {
    v31 = v56;
    v27 = v57;
    v26 = v54;
    (*(v56 + 32))(v54, v58, v57);
    v29 = v44;
    goto LABEL_7;
  }

  type metadata accessor for TagFeedServiceConfig();
  sub_21877CCF0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  v26 = v54;
  sub_219BEE974();
  v27 = v57;
  v28 = v22(v58, 1, v57);
  v29 = v44;
  v30 = v27;
  v31 = v56;
  if (v28 != 1)
  {
    sub_2189ADEC8(v58);
LABEL_7:
    v30 = v27;
  }

  v32 = v25;
  v33 = v43;
  v34 = v48;
  (*(v31 + 32))(v48, v26, v30);
  if (v59)
  {
    v35 = v59;
  }

  else
  {
    v60 = 2;
    swift_allocObject();
    v35 = sub_219BEF534();
  }

  v36 = v55;
  *(v34 + v29[5]) = v35;
  v37 = v51;
  v38 = v52;
  if (v52)
  {

    v39 = v38;
  }

  else
  {
    v60 = 6;
    swift_allocObject();

    v39 = sub_219BEF534();
    v37 = v51;
  }

  v40 = v47;
  *(v34 + v29[6]) = v39;
  if (v50)
  {

    v41 = v50;
  }

  else
  {
    LOBYTE(v60) = 0;
    swift_allocObject();

    v41 = sub_219BEF534();
    v37 = v51;
  }

  *(v34 + v29[7]) = v41;
  if (!v37)
  {
    LOBYTE(v60) = 0;
    swift_allocObject();
    v37 = sub_219BEF534();
  }

  sub_2189ADEC8(v24);
  (*(v40 + 8))(v32, v33);
  *(v34 + v29[8]) = v37;
  *(v34 + v29[9]) = v45;
  sub_2197230E8(v34, v36);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_219722AFC(void *a1)
{
  v3 = v1;
  sub_21972314C(0, &qword_27CC1E570, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219723094();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877CCF0(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for PuzzleListTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186F9548();
    sub_21877CCF0(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186F95C4();
    sub_21877CCF0(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_219721E88();
    sub_21877CCF0(&qword_27CC1E578, sub_219721E88);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219722E98()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0xD000000000000011;
  if (v1 == 4)
  {
    v3 = 0x54646574696D696CLL;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000018;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_219722F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219723468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219722F94(uint64_t a1)
{
  v2 = sub_219723094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219722FD0(uint64_t a1)
{
  v2 = sub_219723094();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_219723040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_219723094()
{
  result = qword_280EB76B8[0];
  if (!qword_280EB76B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB76B8);
  }

  return result;
}

uint64_t sub_2197230E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleListTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21972314C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219723094();
    v7 = a3(a1, &type metadata for PuzzleListTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197231B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877CCF0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if (sub_219BEE9F4())
  {
    sub_2186F9548();
    v4 = type metadata accessor for PuzzleListTagFeedGroupKnobs();
    if (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
    {
      sub_2186F95C4();
      if (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
      {
        v5 = *(v4 + 36);
        v6 = *(a1 + v5);
        v7 = *(a2 + v5);
        if (v6)
        {
          if (v7)
          {
            sub_219721E88();
            sub_21877CCF0(&qword_27CC1E580, sub_219721E88);

            v8 = sub_219BF53A4();

            if (v8)
            {
              return 1;
            }
          }
        }

        else if (!v7)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_219723364()
{
  result = qword_27CC1E588;
  if (!qword_27CC1E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E588);
  }

  return result;
}

unint64_t sub_2197233BC()
{
  result = qword_280EB76A8;
  if (!qword_280EB76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB76A8);
  }

  return result;
}

unint64_t sub_219723414()
{
  result = qword_280EB76B0;
  if (!qword_280EB76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB76B0);
  }

  return result;
}

uint64_t sub_219723468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000219D32440 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54646574696D696CLL && a2 == 0xEE007961646F546FLL || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D32460 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_219723670(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsActivityManager();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    v3 = *(result + OBJC_IVAR____TtC7NewsUI219NewsActivityManager_newsUserActivityManager);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197236E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v3)
  {
    v2 = objc_allocWithZone(sub_219BE9654());
    return sub_219BE9644();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219723784()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainTabBarController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219726668(0, &qword_280EE7258, &unk_280EE4290, MEMORY[0x277D6E768], MEMORY[0x277D6CEE8]);
  sub_219BE2904();

  sub_2186C709C(0, &unk_280EDC358);
  sub_219BE2914();
  sub_219BE19D4();

  v4 = *MEMORY[0x277D6CF00];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_2186C709C(0, qword_280ECE5F0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ED3538);
  sub_219BE2914();
  sub_2186C709C(0, &unk_280EE7440);
  sub_219BE19C4();

  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_2186C709C(0, qword_280EDA288);
  sub_219BE2914();

  type metadata accessor for Router();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_2186C709C(0, &qword_280EDC350);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EA5FA8);
  sub_219BE2914();
  type metadata accessor for MainFloatingTabBarEngagementModifier();
  sub_219BE19C4();
}

uint64_t sub_219723C78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC350);
  result = sub_219BE1E34();
  if (!v45)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECE5F0);
  result = sub_219BE1E34();
  if (!v42)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v38[0])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v40 = v3;
  v41 = sub_21870D488(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  v39[0] = v4;
  sub_219BE6AE4();
  swift_allocObject();
  v5 = sub_219BE6AC4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingEngagementViewManager();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v36 = v5;
  v37 = result;
  if (sub_219BED0C4())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219726668(0, &qword_280EE7258, &unk_280EE4290, MEMORY[0x277D6E768], MEMORY[0x277D6CEE8]);
    v7 = sub_219BE1E24();
    v8 = v6;
    v9 = v43;
    v10 = v42;
    if (v7)
    {
      v11 = objc_allocWithZone(sub_219BEA164());
      v7 = sub_219BEA144();
    }
  }

  else
  {
    v8 = v6;
    v9 = v43;
    v10 = v42;
    v7 = 0;
  }

  v12 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v35 = &v32;
  MEMORY[0x28223BE20](v12);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v17 = type metadata accessor for MainStyler();
  v40 = v17;
  v18 = sub_21870D488(&qword_280EDFC58, type metadata accessor for MainStyler);
  v41 = v18;
  v39[0] = v16;
  v19 = objc_allocWithZone(type metadata accessor for MainTabBarController());
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v34 = &v32;
  MEMORY[0x28223BE20](v20);
  v22 = (&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v38[3] = v17;
  v38[4] = v18;
  v38[0] = v24;
  *&v19[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementView] = 0;
  sub_218718690(v38, &v19[OBJC_IVAR____TtC7NewsUI220MainTabBarController_styler]);
  v25 = &v19[OBJC_IVAR____TtC7NewsUI220MainTabBarController_eventHandler];
  *v25 = v10;
  *(v25 + 1) = v9;
  *&v19[OBJC_IVAR____TtC7NewsUI220MainTabBarController_tipManager] = v8;
  *&v19[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementViewManager] = v37;
  v33 = v7;
  swift_unknownObjectRetain();

  v27 = sub_2187C390C(v26, v7);
  v28 = *&v27[OBJC_IVAR____TtC7NewsUI220MainTabBarController_eventHandler + 8];
  ObjectType = swift_getObjectType();
  v30 = *(v28 + 16);
  v31 = v27;
  swift_unknownObjectRetain();
  v30(v27, &off_282A2F308, ObjectType, v28);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v38);
  *(*&v31[OBJC_IVAR____TtC7NewsUI220MainTabBarController_followingEngagementViewManager] + 24) = &off_282A2F2D8;
  swift_unknownObjectWeakAssign();

  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v31;
}

uint64_t sub_2197242BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MainTabManager();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v3 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate + 8) = &off_282A756F8;
  swift_unknownObjectWeakAssign();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186FB51C(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  type metadata accessor for RouterController();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for Router();

  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_21870D488(&qword_280E92DA0, type metadata accessor for Router);
  sub_219BE6464();

  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_219BE1A04();
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (v7)
  {
    sub_2186CB1F0(&v6, v8);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_21870D488(&qword_280ECE5B8, type metadata accessor for MainTabBarController);
    sub_219BE29A4();

    __swift_destroy_boxed_opaque_existential_1(&v6);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219724644(uint64_t a1)
{
  v2 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v2);
  sub_218718690(a1, v5);
  v3 = swift_allocObject();
  sub_2186CB1F0(v5, v3 + 16);
  *&v5[0] = MEMORY[0x277D84F90];
  sub_21870D488(&qword_280EE7E70, MEMORY[0x277D6CA70]);
  sub_218A4E214(0);
  sub_21870D488(&qword_280E8F600, sub_218A4E214);
  sub_219BF7164();
  sub_219726668(0, &qword_280EE7258, &unk_280EE4290, MEMORY[0x277D6E768], MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_2197247FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_219BE9654();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = MEMORY[0x277D6E6C8];
    a2[3] = v3;
    a2[4] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219724870@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB51C(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for MainRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A7AD50;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219724964(uint64_t a1, void *a2)
{
  sub_218718690(a1, v4);
  sub_2186C709C(0, &unk_280EDC358);
  type metadata accessor for MainRouter();
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for MainTabBarController();
    v3 = sub_219BE1E24();
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_219724A34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3538);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EDC358);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EDA288);
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
    v15 = sub_2187C3090(v5, v6, *v9, *v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A8ED40;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219724CDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED0F90);
  result = sub_219BE1E34();
  if (!v64)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187C2600();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  if (!v62)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v42 = v63;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65F0);
  result = sub_219BE1E34();
  if (!v61)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA5FA8);
  result = sub_219BE1E34();
  if (!v59)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6540);
  result = sub_219BE1E34();
  if (!v57)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E97530);
  result = sub_219BE1E34();
  if (!v55)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6410);
  result = sub_219BE1E34();
  if (!v53[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6470);
  result = sub_219BE1E34();
  if (!v51)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v65;
  v41 = a2;
  v44 = v64;
  v45 = v62;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = result;
  v43 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5D84();
  result = sub_219BE1E24();
  v39 = result;
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = v52;
  v38 = v6;
  v36 = v51;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6310);
  result = sub_219BE1E34();
  v35 = v49;
  if (v49)
  {
    v7 = v50;
    v34[0] = v50;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v34[2] = v34;
    MEMORY[0x28223BE20](v8);
    v10 = (v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for EngagementUpsellTriggerStateManager(0);
    v48[3] = v13;
    v48[4] = &off_282A647D8;
    v48[0] = v12;
    type metadata accessor for MainInteractor();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v48, v13);
    v34[1] = v34;
    MEMORY[0x28223BE20](v15);
    v17 = (v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v47[3] = v13;
    v47[4] = &off_282A647D8;
    v47[0] = v19;
    v14[3] = 0;
    swift_unknownObjectWeakInit();
    v21 = v43;
    v20 = v44;
    v22 = v40;
    v14[4] = v44;
    v14[5] = v22;
    v23 = v45;
    v14[6] = v21;
    v14[7] = v23;
    v14[8] = v42;
    sub_218718690(v60, (v14 + 14));
    sub_218718690(v58, (v14 + 9));
    sub_218718690(v56, (v14 + 19));
    sub_218718690(v47, (v14 + 24));
    sub_218718690(v53, (v14 + 29));
    v24 = v37;
    v14[34] = v36;
    v14[35] = v24;
    v25 = v39;
    v14[36] = v38;
    v14[37] = v25;
    v26 = v35;
    v14[38] = v35;
    v14[39] = v7;
    *(v20 + 24) = &off_282AA34F8;
    swift_unknownObjectWeakAssign();
    v42 = sub_21870D488(&qword_280EDC490, type metadata accessor for MainInteractor);
    swift_beginAccess();
    v27 = v14[17];
    v40 = v14[18];
    __swift_mutable_project_boxed_opaque_existential_1((v14 + 14), v27);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v28 = v25;
    swift_unknownObjectRetain();

    sub_219BE38B4();
    swift_endAccess();
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    v31 = v34[0];
    v30[2] = v26;
    v30[3] = v31;
    v30[4] = v14;
    v46[4] = sub_21972664C;
    v46[5] = v30;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 1107296256;
    v46[2] = sub_218793E0C;
    v46[3] = &block_descriptor_160;
    v32 = _Block_copy(v46);
    swift_unknownObjectRetain();

    [v29 scheduleLowPriorityBlockForMainThread_];
    _Block_release(v32);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    result = __swift_destroy_boxed_opaque_existential_1(v54);
    v33 = v41;
    *v41 = v14;
    v33[1] = &off_282AA3518;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_219725500(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_219BE29A4();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197255D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for MainTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282AA29E0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219725658(void *a1)
{
  sub_218718690(a1, v71);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RouterController();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB51C(0, &unk_280E906F0, sub_2186FB5EC, &type metadata for IssueOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB640();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  if (!v69)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB51C(0, &unk_280E906C0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v41 = result;
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB51C(0, &qword_280E90710, sub_2186F7720, &type metadata for TagFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v40 = result;
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB51C(0, &unk_280E90720, sub_2186FB77C, &type metadata for ContentUnavailableOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v39 = result;
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186F18AC(0);
  result = sub_219BE1E24();
  v38 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDA0);
  result = sub_219BE1E34();
  if (!v68)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E740);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v6 = result;
  v36 = v70;
  v37 = v69;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6410);
  result = sub_219BE1E34();
  if (!v66)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  v35 = v63;
  if (!v63)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v34 = v64;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE63C0);
  result = sub_219BE1E34();
  if (!v62)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6288);
  result = sub_219BE1E34();
  if (!v60)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6280);
  result = sub_219BE1E34();
  if (!v58)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v33 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA8020);
  result = sub_219BE1E34();
  if (!v56)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6398);
  result = sub_219BE1E34();
  if (!v54)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8CD0);
  result = sub_219BE1E34();
  if (!v52)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (!v50)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (!v48)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v32 = v45;
  if (!v45)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v30 = v7;
  v31 = v6;
  v29 = v46;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v9 = result;
  v28 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5700);
  result = sub_219BE1E34();
  if (v44)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    MEMORY[0x28223BE20](v10);
    v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for SportsOnboardingFlowManager(0);
    v42[3] = v15;
    v42[4] = &off_282A31BD0;
    v42[0] = v14;
    type metadata accessor for Router();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v42, v15);
    MEMORY[0x28223BE20](v17);
    v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v16[49] = v15;
    v16[50] = &off_282A31BD0;
    v16[46] = v21;
    sub_2186CB1F0(v71, (v16 + 2));
    v16[7] = v3;
    v16[8] = v4;
    v22 = v37;
    v16[9] = v33;
    v16[10] = v22;
    v23 = v40;
    v16[13] = v41;
    v16[14] = v23;
    v24 = v38;
    v25 = v39;
    v16[11] = v36;
    v16[12] = v25;
    v16[15] = v24;
    sub_2186CB1F0(&v67, (v16 + 16));
    v26 = v31;
    v16[21] = v30;
    v16[22] = v26;
    sub_2186CB1F0(&v65, (v16 + 23));
    v27 = v34;
    v16[28] = v35;
    v16[29] = v27;
    sub_2186CB1F0(&v61, (v16 + 40));
    sub_2186CB1F0(&v59, (v16 + 30));
    sub_2186CB1F0(&v57, (v16 + 35));
    v16[45] = v28;
    sub_2186CB1F0(&v53, (v16 + 51));
    sub_2186CB1F0(&v51, (v16 + 56));
    sub_2186CB1F0(&v49, (v16 + 61));
    sub_2186CB1F0(&v47, (v16 + 66));
    v16[71] = v32;
    v16[72] = v29;
    v16[73] = v9;
    sub_2186CB1F0(&v43, (v16 + 74));
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return v16;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_219726124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v24)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v4);
    v6 = (&v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v22[3] = v9;
    v10 = sub_21870D488(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v22[4] = v10;
    v22[0] = v8;
    v11 = type metadata accessor for MainStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (&v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v21[3] = v9;
    v21[4] = v10;
    v21[0] = v17;
    sub_218718690(v21, v12 + 16);
    sub_2186C6148(0, &unk_280E8E5B0);
    v18 = [swift_getObjCClassFromMetadata() appearance];
    v19 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    [v18 setShadowImage_];

    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    a2[3] = v11;
    result = sub_21870D488(&qword_280EDFC58, type metadata accessor for MainStyler);
    a2[4] = result;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219726434@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MainTabManager();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE5974();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for MainFloatingTabBarEngagementModifier();
      v8 = swift_allocObject();
      result = swift_unknownObjectWeakInit();
      *(v8 + 32) = 0;
      *(v8 + 24) = v5;
      *(v8 + 40) = v6;
      a2[3] = v7;
      a2[4] = &off_282A59F70;
      *a2 = v8;
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

void sub_219726518(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MainTabBarController();
  v4 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE5D84();
  v5 = sub_219BE1E24();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v6;

    v8 = v6;
    v9 = sub_219BE1C44();
    sub_219BE5D34();
  }

  else
  {
    __break(1u);
  }
}

void sub_219726668(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2197266D4()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_218A6C9A4(0);
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218806FD0(v2);
  }

  type metadata accessor for AudioPlaylistFeedServiceConfig();
  sub_218795DC8(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
  v0 = sub_219BEEFD4();

  return v0;
}

unint64_t sub_21972681C()
{
  result = qword_27CC1E590[0];
  if (!qword_27CC1E590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1E590);
  }

  return result;
}

uint64_t sub_219726870(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_219BEFF14();
  sub_219BEF524();

  if (v35 == 1)
  {
    if (qword_280E8D850 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      sub_219BF6214();
      sub_219BE5314();
      v4 = [a3 publisherSpecifiedArticleIDs];
      if (!v4)
      {
        sub_219BF6214();
        v33 = MEMORY[0x277D84F90];
        sub_219BE5314();
        v32 = v33;
        return sub_2194B0D40(v32);
      }

      v5 = MEMORY[0x277D837D0];
      v6 = v4;
      a3 = sub_219BF5924();

      sub_2186F20D4();
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_219C09BA0;
      v8 = MEMORY[0x21CECC6D0](a3, v5);
      v10 = v9;
      *(v7 + 56) = v5;
      *(v7 + 64) = sub_2186FC3BC();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      sub_219BF6214();
      sub_219BE5314();

      v11 = a3[2];
      if (!v11)
      {
        v14 = MEMORY[0x277D84F98];
LABEL_25:

        return v14;
      }

      v12 = 0;
      v13 = a3 + 5;
      v14 = MEMORY[0x277D84F98];
      while (v12 < a3[2])
      {
        v17 = *(v13 - 1);
        v16 = *v13;
        swift_bridgeObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = sub_21870F700(v17, v16);
        v21 = v14[2];
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_28;
        }

        v25 = v20;
        if (v14[3] < v24)
        {
          sub_2194815A0(v24, isUniquelyReferenced_nonNull_native);
          v19 = sub_21870F700(v17, v16);
          if ((v25 & 1) != (v26 & 1))
          {
            result = sub_219BF79A4();
            __break(1u);
            return result;
          }

LABEL_14:
          if (v25)
          {
            goto LABEL_6;
          }

          goto LABEL_15;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v30 = v19;
        sub_219492450();
        v19 = v30;
        if (v25)
        {
LABEL_6:
          v15 = v19;

          *(v14[7] + 8 * v15) = v12;

          goto LABEL_7;
        }

LABEL_15:
        v14[(v19 >> 6) + 8] |= 1 << v19;
        v27 = (v14[6] + 16 * v19);
        *v27 = v17;
        v27[1] = v16;
        *(v14[7] + 8 * v19) = v12;

        v28 = v14[2];
        v23 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v23)
        {
          goto LABEL_29;
        }

        v14[2] = v29;
LABEL_7:
        ++v12;
        v13 += 2;
        if (v11 == v12)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
    }
  }

  if (qword_280E8D850 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v31 = MEMORY[0x277D84F90];
  sub_219BE5314();
  v32 = v31;
  return sub_2194B0D40(v32);
}

BOOL sub_219726C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  sub_218C3EEF4();
  v51 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v49 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v47 = (&v46 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v46 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = (&v46 - v13);
  v48 = a1;
  sub_219728E60(a1, &v46 - v13);
  v15 = *v14;
  v16 = [*v14 identifier];

  v17 = sub_219BF5414();
  v19 = v18;

  if (*(a3 + 16))
  {
    v20 = sub_21870F700(v17, v19);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(a3 + 56) + 8 * v20);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v23 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
  v24 = *(v51 + 48);
  v25 = sub_219BEDC04();
  v26 = *(*(v25 - 8) + 8);
  v26(v14 + v24, v25);
  sub_219728E60(v50, v12);
  v27 = *v12;
  v28 = [*v12 identifier];

  v29 = sub_219BF5414();
  v31 = v30;

  if (*(a3 + 16))
  {
    v32 = sub_21870F700(v29, v31);
    v34 = v33;

    if (v34)
    {
      v35 = *(*(a3 + 56) + 8 * v32);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v35 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:
  v26(v12 + *(v51 + 48), v25);
  if (v23 < v35)
  {
    return 1;
  }

  if (v35 < v23)
  {
    return 0;
  }

  v37 = v47;
  sub_219728E60(v48, v47);

  v38 = v51;
  v39 = *(v51 + 48);
  sub_219BEDBF4();
  v41 = v40;
  v26(v37 + v39, v25);
  v42 = v49;
  sub_219728E60(v50, v49);

  v43 = *(v38 + 48);
  sub_219BEDBF4();
  v45 = v44;
  v26(v42 + v43, v25);
  return v45 < v41;
}

uint64_t sub_219726F4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_219BEFEC4();
  sub_219BEF524();

  v6 = *(a3 + 16);
  if (v14 < v6)
  {
    v7 = v6 - v14;
    if (__OFSUB__(v6, v14))
    {
      __break(1u);
      goto LABEL_13;
    }

    result = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
      return result;
    }

    __break(1u);
  }

  if (qword_280E8D850 != -1)
  {
LABEL_13:
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v11;
  *(v9 + 32) = v14;
  if (a4 >> 62)
  {
    v13 = v9;
    v12 = sub_219BF7214();
    v9 = v13;
  }

  else
  {
    v12 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v12;
  sub_219BE5314();

  if (v6)
  {
    return v6 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2197270D0()
{
  v0 = sub_219BEFD84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF524();
  sub_219BEFD74();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (v5 == 0.0)
  {
    return 2;
  }

  if (v5 == 1.0)
  {
    return 1;
  }

  if (v5 == -1.0)
  {
    return 0;
  }

  v7 = sub_218D34164(0x20000000000001);
  if (v7 == 0x20000000000000)
  {
    v8 = 1.0;
    if (v5 <= 0.0)
    {
LABEL_9:
      v9 = v8 > -v5;
      return !v9;
    }
  }

  else
  {
    v8 = vcvtd_n_f64_u64(v7, 0x35uLL) + 0.0;
    if (v5 <= 0.0)
    {
      goto LABEL_9;
    }
  }

  v9 = v8 > v5;
  return !v9;
}

uint64_t (*sub_219727238(uint64_t a1, id a2))()
{
  v3 = [a2 identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  if (*(a1 + 16))
  {
    sub_21870F700(v4, v6);
    v8 = v7;

    if (v8)
    {

      v10 = sub_218845F78(v9);

      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_219C09BA0;
      v12 = MEMORY[0x277D837D0];
      v13 = sub_219BF5D54();
      v15 = v14;
      *(v11 + 56) = v12;
      *(v11 + 64) = sub_2186FC3BC();
      *(v11 + 32) = v13;
      *(v11 + 40) = v15;
      sub_219BF6214();
      sub_219BE5314();

      *(swift_allocObject() + 16) = v10;
      return sub_219728E58;
    }
  }

  else
  {
  }

  if (qword_280E8D850 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return sub_21876836C;
}

BOOL sub_21972745C(uint64_t a1, uint64_t a2)
{

  v4 = sub_218845F78(v3);

  LOBYTE(a2) = sub_218C33480(a2, v4);

  return (a2 & 1) == 0;
}

uint64_t (*sub_2197274BC(uint64_t a1, void *a2))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_219BEFEA4();
  v4 = [a2 identifier];
  v5 = sub_219BF5414();
  v7 = v6;

  if (*(v3 + 16))
  {
    sub_21870F700(v5, v7);
    v9 = v8;

    if (v9)
    {

      sub_219BEF524();

      v10 = v45;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_6:
  v11 = sub_219BEFEF4();
  v12 = [a2 identifier];
  v13 = sub_219BF5414();
  v15 = v14;

  if (!*(v11 + 16))
  {

LABEL_11:

    v18 = MEMORY[0x277D84FA0];
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_21870F700(v13, v15);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_219BEF524();
  v18 = sub_218845F78(v46);

  if (!v10)
  {
LABEL_13:
    v19 = sub_219BF29C4();

    v21 = sub_218845F78(v20);

    v22 = sub_2194796A0(v21, v19);
    if (v10)
    {
      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C09EC0;
      v24 = [a2 identifier];
      v25 = sub_219BF5414();
      v27 = v26;

      v28 = MEMORY[0x277D837D0];
      *(v23 + 56) = MEMORY[0x277D837D0];
      v29 = sub_2186FC3BC();
      *(v23 + 64) = v29;
      *(v23 + 32) = v25;
      *(v23 + 40) = v27;
      v30 = sub_219BF5D54();
      *(v23 + 96) = v28;
      *(v23 + 104) = v29;
      *(v23 + 72) = v30;
      *(v23 + 80) = v31;
      sub_219BF6214();
      sub_219BE5314();

      v32 = swift_allocObject();
      *(v32 + 16) = v22;
      *(v32 + 24) = v18;
      return sub_219728E50;
    }

    else
    {

      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_219C09BA0;
      v35 = [a2 identifier];
      v36 = sub_219BF5414();
      v38 = v37;

      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = sub_2186FC3BC();
      *(v34 + 32) = v36;
      *(v34 + 40) = v38;
      sub_219BF6214();
      sub_219BE5314();

      *(swift_allocObject() + 16) = v22;
      return sub_219728E48;
    }
  }

LABEL_12:
  if (*(v18 + 16))
  {
    goto LABEL_13;
  }

  if (qword_280E8D850 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C09BA0;
  v40 = [a2 identifier];
  v41 = sub_219BF5414();
  v43 = v42;

  *(v39 + 56) = MEMORY[0x277D837D0];
  *(v39 + 64) = sub_2186FC3BC();
  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  sub_219BF6214();
  sub_219BE5314();

  return sub_21876836C;
}

uint64_t sub_2197279F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 16);

  if (!v8)
  {
LABEL_18:

    return 1;
  }

  v9 = 0;
  v10 = a3 + 32;
  v11 = a4 + 56;
  while (1)
  {
    if (!*(a4 + 16))
    {
      goto LABEL_4;
    }

    v12 = (v10 + 16 * v9);
    v14 = *v12;
    v13 = v12[1];
    sub_219BF7AA4();

    sub_219BF5524();
    v15 = sub_219BF7AE4();
    v16 = -1 << *(a4 + 32);
    v17 = v15 & ~v16;
    if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v9 == v8)
    {
      goto LABEL_18;
    }
  }

  v18 = ~v16;
  while (1)
  {
    v19 = (*(a4 + 48) + 16 * v17);
    v20 = *v19 == v14 && v19[1] == v13;
    if (v20 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return sub_2188537B8(a1, a2, a5);
}

uint64_t sub_219727B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);

  if (!v6)
  {
LABEL_16:
    v19 = 1;
    goto LABEL_17;
  }

  v7 = 0;
  v8 = a3 + 32;
  v9 = a4 + 56;
  while (1)
  {
    if (!*(a4 + 16))
    {
      goto LABEL_4;
    }

    v10 = (v8 + 16 * v7);
    v12 = *v10;
    v11 = v10[1];
    sub_219BF7AA4();

    sub_219BF5524();
    v13 = sub_219BF7AE4();
    v14 = -1 << *(a4 + 32);
    v15 = v13 & ~v14;
    if ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v7 == v6)
    {
      goto LABEL_16;
    }
  }

  v16 = ~v14;
  while (1)
  {
    v17 = (*(a4 + 48) + 16 * v15);
    v18 = *v17 == v12 && v17[1] == v11;
    if (v18 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_17:

  return v19;
}

uint64_t sub_219727CD0(void *a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t a6, void *a7, void (**a8)(char *, uint64_t, uint64_t), uint64_t (*a9)(uint64_t), uint64_t a10, uint64_t (*a11)(char *, uint64_t, uint64_t), char a12, uint64_t a13, uint64_t a14)
{
  v197 = a8;
  LOBYTE(v16) = a4;
  v199 = sub_219BDBD34();
  v196 = *(v199 - 8);
  v19 = MEMORY[0x28223BE20](v199);
  v195 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v194 = &v192 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v198 = &v192 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v192 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v192 - v28;
  v200 = a1;
  v30 = [a1 clusterID];
  if (v30)
  {
    v31 = v30;
    v32 = sub_219BF5414();
    v34 = v33;

    if (sub_2188537B8(v32, v34, a3))
    {
      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_219C09EC0;
      v36 = [v200 identifier];
      v37 = sub_219BF5414();
      v39 = v38;

      v40 = MEMORY[0x277D837D0];
      *(v35 + 56) = MEMORY[0x277D837D0];
      v41 = sub_2186FC3BC();
      *(v35 + 32) = v37;
      *(v35 + 40) = v39;
      *(v35 + 96) = v40;
      *(v35 + 104) = v41;
      *(v35 + 64) = v41;
      *(v35 + 72) = v32;
      *(v35 + 80) = v34;
      sub_219BF6214();
      goto LABEL_73;
    }
  }

  v42 = v200;
  if (v16 != 2)
  {
    v43 = [objc_msgSend(a5 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    LODWORD(a5) = [v43 containsItem_];

    if (a5 != (v16 & 1))
    {
      if (qword_280E8D850 != -1)
      {
LABEL_82:
        swift_once();
      }

      sub_2186F20D4();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_219C0B8C0;
      v45 = [v42 identifier];
      v46 = sub_219BF5414();
      v48 = v47;

      v49 = MEMORY[0x277D837D0];
      *(v44 + 56) = MEMORY[0x277D837D0];
      v50 = sub_2186FC3BC();
      *(v44 + 32) = v46;
      *(v44 + 40) = v48;
      v51 = 32;
      if (v16)
      {
        v52 = 32;
      }

      else
      {
        v52 = 0x20746F6E20;
      }

      *(v44 + 96) = v49;
      *(v44 + 104) = v50;
      if (v16)
      {
        v53 = 0xE100000000000000;
      }

      else
      {
        v53 = 0xE500000000000000;
      }

      *(v44 + 64) = v50;
      *(v44 + 72) = v52;
      *(v44 + 80) = v53;
      if (a5)
      {
        v54 = 0xE100000000000000;
      }

      else
      {
        v51 = 0x20746F6E20;
        v54 = 0xE500000000000000;
      }

      *(v44 + 136) = v49;
      *(v44 + 144) = v50;
      *(v44 + 112) = v51;
      *(v44 + 120) = v54;
      sub_219BF6214();
      goto LABEL_73;
    }
  }

  v55 = [v42 bodyTextLength];
  if (v55 < sub_219BEFF04())
  {
    if (qword_280E8D850 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_219C0B8C0;
    v57 = [v42 identifier];
    v58 = sub_219BF5414();
    v60 = v59;

    *(v56 + 56) = MEMORY[0x277D837D0];
    *(v56 + 64) = sub_2186FC3BC();
    *(v56 + 32) = v58;
    *(v56 + 40) = v60;
    v61 = [v42 bodyTextLength];
    v62 = MEMORY[0x277D84A90];
    *(v56 + 96) = MEMORY[0x277D84A28];
    *(v56 + 104) = v62;
    *(v56 + 72) = v61;
    v63 = sub_219BEFF04();
    v64 = MEMORY[0x277D83C10];
    *(v56 + 136) = MEMORY[0x277D83B88];
    *(v56 + 144) = v64;
    *(v56 + 112) = v63;
    sub_219BF6214();
    sub_219BE5314();
    goto LABEL_74;
  }

  v65 = sub_219BEFF34();
  v66 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v67 = [a7 identifier];
  v68 = sub_219BF5414();
  v70 = v69;

  if (!*(v65 + 16))
  {

    goto LABEL_30;
  }

  sub_21870F700(v68, v70);
  v72 = v71;

  if ((v72 & 1) == 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_219BEF524();

  v73 = v201;
  v74 = [v200 publishDate];
  if (v74)
  {
    v75 = v74;
    sub_219BDBCA4();

    v76 = v196;
    v77 = v199;
    (*(v196 + 4))(v29, v27, v199);
    v78 = v198;
    sub_219BDBD24();
    sub_219BDBBE4();
    v80 = v79;
    v81 = *(v76 + 1);
    v81(v78, v77);
    if (v80 >= v73)
    {
      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v153 = swift_allocObject();
      *(v153 + 16) = xmmword_219C0EE20;
      v154 = [v200 identifier];
      v155 = sub_219BF5414();
      v157 = v156;

      v158 = MEMORY[0x277D837D0];
      *(v153 + 56) = MEMORY[0x277D837D0];
      v159 = sub_2186FC3BC();
      *(v153 + 64) = v159;
      *(v153 + 32) = v155;
      *(v153 + 40) = v157;
      sub_219248E88();
      v160 = v199;
      v161 = sub_219BF7894();
      *(v153 + 96) = v158;
      *(v153 + 104) = v159;
      *(v153 + 72) = v161;
      *(v153 + 80) = v162;
      v201 = 0;
      v202 = 0xE000000000000000;
      v163 = v198;
      sub_219BDBD24();
      sub_219BDBBE4();
      v81(v163, v160);
      sub_219BF5CB4();
      v164 = v201;
      v165 = v202;
      *(v153 + 136) = v158;
      *(v153 + 144) = v159;
      v166 = MEMORY[0x277D83B88];
      *(v153 + 112) = v164;
      *(v153 + 120) = v165;
      v167 = MEMORY[0x277D83C10];
      *(v153 + 176) = v166;
      *(v153 + 184) = v167;
      *(v153 + 152) = v73;
      sub_219BF6214();
      sub_219BE5314();

      v81(v29, v160);
      return 0;
    }

    v81(v29, v77);
  }

LABEL_31:
  v82 = &selRef_filteredReasons;
  v83 = v200;
  v84 = [v200 publisherID];
  if (v84)
  {
    v85 = v84;
    a5 = sub_219BF5414();
    v87 = v86;

    v88 = [v83 topicIDs];
    if (!v88 || (v201 = 0, v89 = MEMORY[0x277D837D0], v90 = v88, sub_219BF5914(), v90, (v91 = v201) == 0))
    {
LABEL_46:

      goto LABEL_47;
    }

    if (a9(v201))
    {
      LOBYTE(v16) = a12;
      v92 = a11(a5, v87, v91);

      if (v92)
      {
        v93 = *(v91 + 16);
        v94 = v91;
        if (v93)
        {
          v95 = 0;
          v197 = (v196 + 32);
          v96 = (v196 + 8);
          v42 = (v91 + 40);
          v97 = v194;
          v193 = v94;
          while (1)
          {
            if (v95 >= *(v94 + 16))
            {
              __break(1u);
              goto LABEL_82;
            }

            a5 = *(v42 - 1);
            v98 = *v42;

            v16 = sub_219BEFEB4();
            if (*(v16 + 16) && (v99 = sub_21870F700(a5, v98), (v100 & 1) != 0))
            {
              v101 = *(*(v16 + 56) + 8 * v99);

              v102 = [v200 publishDate];
              if (v102)
              {
                v196 = a5;
                v103 = v93;
                v16 = v195;
                v104 = v102;
                sub_219BDBCA4();

                v105 = v199;
                (*v197)(v97, v16, v199);
                v106 = v96;
                v107 = v198;
                sub_219BDBD24();
                LOBYTE(v16) = v107;
                sub_219BDBBE4();
                v109 = v108;
                v110 = v107;
                v96 = v106;
                a5 = *v106;
                (a5)(v110, v105);
                if (v101 < v109)
                {
                  v198 = a5;

                  if (qword_280E8D850 != -1)
                  {
                    swift_once();
                  }

                  sub_2186F20D4();
                  v176 = swift_allocObject();
                  *(v176 + 16) = xmmword_219C0EE20;
                  v177 = [v200 identifier];
                  v178 = sub_219BF5414();
                  v180 = v179;

                  v181 = MEMORY[0x277D837D0];
                  *(v176 + 56) = MEMORY[0x277D837D0];
                  v182 = sub_2186FC3BC();
                  *(v176 + 64) = v182;
                  *(v176 + 32) = v178;
                  *(v176 + 40) = v180;
                  sub_219248E88();
                  v183 = v194;
                  v184 = v199;
                  v185 = sub_219BF7894();
                  *(v176 + 96) = v181;
                  *(v176 + 104) = v182;
                  *(v176 + 72) = v185;
                  *(v176 + 80) = v186;
                  v187 = swift_allocObject();
                  v188 = MEMORY[0x277D839F8];
                  *(v187 + 16) = xmmword_219C09BA0;
                  v189 = MEMORY[0x277D83A80];
                  *(v187 + 56) = v188;
                  *(v187 + 64) = v189;
                  *(v187 + 32) = v101;
                  v190 = sub_219BF5454();
                  *(v176 + 136) = v181;
                  *(v176 + 144) = v182;
                  *(v176 + 112) = v190;
                  *(v176 + 120) = v191;
                  *(v176 + 176) = v181;
                  *(v176 + 184) = v182;
                  *(v176 + 152) = v196;
                  *(v176 + 160) = v98;
                  sub_219BF6214();
                  sub_219BE5314();

                  (v198)(v183, v184);
                  return 0;
                }

                (a5)(v97, v105);
                v93 = v103;
                v94 = v193;
              }
            }

            else
            {
            }

            ++v95;

            v42 += 2;
            if (v93 == v95)
            {

              v83 = v200;
              v66 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
              v82 = &selRef_filteredReasons;
              goto LABEL_47;
            }
          }
        }

        goto LABEL_46;
      }

      if (qword_280E8D850 == -1)
      {
LABEL_72:
        sub_2186F20D4();
        v171 = swift_allocObject();
        *(v171 + 16) = xmmword_219C09BA0;
        v172 = [v83 identifier];
        v173 = sub_219BF5414();
        v175 = v174;

        *(v171 + 56) = v89;
        *(v171 + 64) = sub_2186FC3BC();
        *(v171 + 32) = v173;
        *(v171 + 40) = v175;
        sub_219BF6214();
LABEL_73:
        sub_219BE5314();
LABEL_74:

        return 0;
      }
    }

    else
    {

      if (qword_280E8D850 == -1)
      {
        goto LABEL_72;
      }
    }

    swift_once();
    goto LABEL_72;
  }

LABEL_47:
  v111 = [v83 v66[278]];
  v112 = sub_219BF5414();
  v114 = v113;

  v115 = sub_2188537B8(v112, v114, a13);

  if (v115)
  {
    if (qword_280E8D850 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_219C09BA0;
    v117 = [v83 v66[278]];
    v118 = sub_219BF5414();
    v120 = v119;

    *(v116 + 56) = MEMORY[0x277D837D0];
    *(v116 + 64) = sub_2186FC3BC();
    *(v116 + 32) = v118;
    *(v116 + 40) = v120;
    sub_219BF6214();
    goto LABEL_73;
  }

  v121 = [v83 clusterID];
  if (v121)
  {
    v122 = v121;
    v123 = sub_219BF5414();
    v125 = v124;

    if (sub_2188537B8(v123, v125, a14))
    {
      if (qword_280E8D850 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_219C09EC0;
      v127 = [v83 v66[278]];
      v128 = sub_219BF5414();
      v130 = v129;

      v131 = MEMORY[0x277D837D0];
      *(v126 + 56) = MEMORY[0x277D837D0];
      v132 = sub_2186FC3BC();
      *(v126 + 32) = v128;
      *(v126 + 40) = v130;
      *(v126 + 96) = v131;
      *(v126 + 104) = v132;
      *(v126 + 64) = v132;
      *(v126 + 72) = v123;
      *(v126 + 80) = v125;
      sub_219BF6214();
      goto LABEL_73;
    }
  }

  v133 = [v83 v82[87]];
  if (!v133 || (v134 = v133, v135 = sub_219BF5414(), v137 = v136, v134, v138 = sub_219BEFED4(), v201 = v135, v202 = v137, MEMORY[0x28223BE20](v138), *(&v192 - 2) = &v201, v139 = sub_2186D128C(sub_2186D1338, (&v192 - 4), v138), , , (v139 & 1) != 0))
  {
    if (qword_280E8D850 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_219C09EC0;
    v141 = [v83 v66[278]];
    v142 = sub_219BF5414();
    v144 = v143;

    v145 = v83;
    v146 = MEMORY[0x277D837D0];
    *(v140 + 56) = MEMORY[0x277D837D0];
    v147 = sub_2186FC3BC();
    *(v140 + 64) = v147;
    *(v140 + 32) = v142;
    *(v140 + 40) = v144;
    v148 = [v145 v82[87]];
    if (v148)
    {
      v149 = v148;
      v150 = sub_219BF5414();
      v152 = v151;
    }

    else
    {
      v150 = 0;
      v152 = 0;
    }

    v201 = v150;
    v202 = v152;
    sub_2186E3374();
    v169 = sub_219BF5484();
    *(v140 + 96) = v146;
    *(v140 + 104) = v147;
    *(v140 + 72) = v169;
    *(v140 + 80) = v170;
    sub_219BF6214();
    goto LABEL_73;
  }

  return 1;
}

uint64_t sub_219728E60(uint64_t a1, uint64_t a2)
{
  sub_218C3EEF4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result()
{
  result = qword_280E9C080;
  if (!qword_280E9C080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219728F48()
{
  result = sub_2186D8870();
  if (v1 <= 0x3F)
  {
    result = sub_219BEDC04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_219728FF8@<D0>(uint64_t a1@<X4>, void *a2@<X5>, uint64_t a3@<X8>)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [a2 userInterfaceIdiom];
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = sub_2186C6148(0, &qword_280E8DB00);
  v56 = v7;
  *(inited + 40) = sub_219BF6BD4();
  v9 = *MEMORY[0x277D74118];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = sub_2186C6148(0, &qword_280E8DED8);
  *(inited + 80) = v5;
  v11 = *MEMORY[0x277D740C0];
  *(inited + 104) = v10;
  *(inited + 112) = v11;
  v12 = objc_opt_self();
  v55 = v11;
  v13 = v9;
  v54 = v5;
  v14 = [v12 blackColor];
  v15 = [v12 whiteColor];
  v16 = [v12 ts:v14 dynamicColor:v15 withDarkStyleVariant:?];

  v17 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 144) = v17;
  *(inited + 120) = v16;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v20 = sub_219BF5204();

  v21 = [v18 initWithString:v19 attributes:v20];

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_219C09EC0;
  *(v22 + 32) = v56;
  *(v22 + 40) = sub_219BF6BD4();
  *(v22 + 64) = v8;
  *(v22 + 72) = v55;
  v23 = [v12 systemPinkColor];
  *(v22 + 104) = v17;
  *(v22 + 80) = v23;
  sub_2188195F4(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_219BF53D4();
  v26 = sub_219BF5204();

  v27 = [v24 initWithString:v25 attributes:v26];

  [v27 size];
  v29 = v28;
  v60 = v28;
  sub_219BE8004();
  v31 = v30;
  sub_219BE8014();
  sub_219BF6034();
  v33 = v31 - v32;
  v58 = v33 - v29;
  v59 = v33;
  sub_219BE7FF4();
  sub_219BF6034();
  [v21 boundingRectWithSize:33 options:0 context:{v58 - v34, 1.79769313e308}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_219BE7FF4();
  v57 = v43;
  v44 = type metadata accessor for SearchHomeSectionTitleViewLayoutOptions();
  v45 = *(a1 + *(v44 + 20));
  v64.origin.x = v36;
  v64.origin.y = v38;
  v64.size.width = v40;
  v64.size.height = v42;
  Width = CGRectGetWidth(v64);
  v65.origin.x = v36;
  v65.origin.y = v38;
  v65.size.width = v40;
  v65.size.height = v42;
  Height = CGRectGetHeight(v65);
  if ([a2 horizontalSizeClass] == 2)
  {
    v48 = 1.0;
  }

  else
  {
    v48 = 0.0;
  }

  sub_219BE7FF4();
  v63 = v58 - v49;
  v66.origin.x = v36;
  v66.origin.y = v38;
  v66.size.width = v40;
  v66.size.height = v42;
  v50 = CGRectGetHeight(v66);
  v67.origin.x = v57;
  v67.origin.y = v45;
  v67.size.width = Width;
  v67.size.height = Height;
  MaxY = CGRectGetMaxY(v67);

  v52 = MaxY + *(a1 + *(v44 + 24));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = v59;
  *(a3 + 24) = v52;
  *(a3 + 32) = v57;
  *(a3 + 40) = v45;
  *(a3 + 48) = Width;
  *(a3 + 56) = Height;
  *(a3 + 64) = v63;
  *(a3 + 72) = v45 + v48;
  result = v60;
  *(a3 + 80) = v60;
  *(a3 + 88) = v50;
  return result;
}

void sub_21972954C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_2197295E0()
{
  sub_219BE3204();
  v0 = sub_219BE1C44();
  sub_219BE3034();
}

uint64_t sub_2197296AC()
{
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 56))(ObjectType, v1);
}

uint64_t sub_219729700(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SportsManagementDetailModel();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952E24();
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for SportsManagementDetailModel;
    v13 = v11;
  }

  else
  {
    sub_218A3A4F8(v11, v8);
    if (*(*&v8[*(v6 + 20)] + 16))
    {
      __swift_project_boxed_opaque_existential_1((a2 + 48), *(a2 + 72));
      sub_218C95740(v8, v5);
      swift_storeEnumTagMultiPayload();
      sub_219623C40(v5);
      sub_2197298F0(v5, type metadata accessor for SportsDetailModel);
    }

    v12 = type metadata accessor for SportsModel;
    v13 = v8;
  }

  return sub_2197298F0(v13, v12);
}

uint64_t sub_2197298F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219729950()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2197299CC()
{
  v1 = *(*v0 + 88);

  return v1;
}

uint64_t sub_219729A00()
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

void sub_219729AB8()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BE3204();
  sub_2187D9028();
  v1 = sub_219BF66A4();
  sub_219BE2F94();

  v2 = sub_219BF66A4();
  sub_219BE2FE4();
}

uint64_t sub_219729C70(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v9 = *(a1 + 128);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v10 = (*(*(v2 + 88) + 40))(v8, *(v2 + 80));
  sub_218A35FA8();
  sub_21972A348(&qword_27CC1E618, sub_218A35FA8);

  sub_219BE6EF4();
}

uint64_t sub_219729DC4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219729E7C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219729F34(uint64_t a1)
{
  v2 = sub_219BE89F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219113A7C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218980A74(a1, v11);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_21972A240(v11, type metadata accessor for ChannelPickerElementModel);
  }

  v12 = v11[5];
  v22 = v11[4];
  v23[0] = v12;
  *(v23 + 9) = *(v11 + 89);
  v13 = v11[1];
  v18 = *v11;
  v19 = v13;
  v14 = v11[3];
  v20 = v11[2];
  v21 = v14;
  sub_219BEAF14();
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  swift_unknownObjectRetain();
  sub_219BF3324();
  v15 = sub_219BF3344();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  (*(v3 + 104))(v5, *MEMORY[0x277D6E0F8], v2);
  memset(&v23[2], 0, 32);
  v24 = 1;
  sub_219BE89D4();

  (*(v3 + 8))(v5, v2);
  sub_21972A240(v8, sub_219113A7C);
  return sub_218980BE4(&v18);
}

uint64_t sub_21972A240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21972A2A8()
{
  v0 = off_282A44680[0];
  type metadata accessor for ChannelPickerDetailDataManager();
  return v0();
}

uint64_t sub_21972A348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21972A398()
{
  (*(*(*v0 + 88) + 48))(*(*v0 + 80));
  sub_218A35FA8();
  sub_21972A348(&qword_27CC1E618, sub_218A35FA8);
  sub_219BE6EF4();
}

uint64_t sub_21972A48C(uint64_t a1)
{
  v2 = sub_21972A704(&qword_27CC1E620);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21972A504@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E850];
  v3 = sub_219BE9C14();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *MEMORY[0x277D6E858];
  v5 = sub_219BE9C24();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_21972A5E0@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes()
{
  result = qword_27CC1E630;
  if (!qword_27CC1E630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21972A704(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21972A770()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_219BDCAF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21972A7FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v53 = a6;
  v54 = a7;
  v51 = a4;
  v52 = a5;
  v49 = a2;
  v50 = a3;
  v58 = sub_219BF2094();
  v10 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2D74();
  if (*(a1 + 16))
  {
    v15 = sub_21870F700(v13, v14);
    v17 = v16;

    if (v17)
    {
      v18 = *(*(a1 + 56) + 8 * v15);
      sub_21972C350(0, &unk_280E8BBD0, type metadata accessor for MagazineFeedModel, MEMORY[0x277D84560]);
      v19 = *(type metadata accessor for MagazineFeedModel(0) - 8);
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_219C09BA0;
      *(v21 + v20) = v18;
      swift_storeEnumTagMultiPayload();
      *a8 = v21;
    }
  }

  else
  {
  }

  v48 = a8;
  v23 = sub_219BF2D94();
  v24 = *(v23 + 16);
  if (!v24)
  {

    v30 = MEMORY[0x277D84F90];
LABEL_24:
    MEMORY[0x28223BE20](v42);
    v43 = v50;
    *(&v47 - 6) = v49;
    *(&v47 - 5) = v43;
    v44 = v52;
    *(&v47 - 4) = v51;
    *(&v47 - 3) = v44;
    v45 = v54;
    *(&v47 - 2) = v53;
    *(&v47 - 1) = v45;
    v46 = sub_218F90F94(sub_21972C2E4, (&v47 - 8), v30);

    *v48 = v46;
    return result;
  }

  v26 = *(v10 + 16);
  v25 = v10 + 16;
  v27 = *(v25 + 64);
  v47 = v23;
  v28 = v23 + ((v27 + 32) & ~v27);
  v55 = *(v25 + 56);
  v56 = v26;
  v57 = v25;
  v29 = (v25 - 8);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    v31 = v58;
    v56(v12, v28, v58);
    v32 = sub_219BF2084();
    result = (*v29)(v12, v31);
    v33 = *(v32 + 16);
    v34 = v30[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v35 <= v30[3] >> 1)
    {
      if (*(v32 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v34 <= v35)
      {
        v37 = v34 + v33;
      }

      else
      {
        v37 = v34;
      }

      v30 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v37, 1, v30);
      if (*(v32 + 16))
      {
LABEL_18:
        v38 = (v30[3] >> 1) - v30[2];
        result = sub_219BF3C84();
        if (v38 < v33)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v33)
        {
          v39 = v30[2];
          v40 = __OFADD__(v39, v33);
          v41 = v39 + v33;
          if (v40)
          {
            goto LABEL_29;
          }

          v30[2] = v41;
        }

        goto LABEL_8;
      }
    }

    if (v33)
    {
      goto LABEL_27;
    }

LABEL_8:
    v28 += v55;
    if (!--v24)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_21972AC1C@<X0>(const char *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v70 = a6;
  v71 = a2;
  v72 = a3;
  v73 = a5;
  v74 = a7;
  v75 = a4;
  v8 = sub_219BF1DF4();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF1D54();
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x28223BE20](v11);
  v62 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F700C();
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x28223BE20](v13);
  v67 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF1AD4();
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D83D88];
  sub_21972C350(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v58 - v20;
  sub_21972C350(0, &unk_280EE34A0, MEMORY[0x277D2D148], v18);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v58 - v23;
  v25 = sub_219BF3C84();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = (v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v28, a1, v25);
  v29 = (*(v26 + 88))(v28, v25);
  if (v29 == *MEMORY[0x277D34128])
  {
    (*(v26 + 96))(v28, v25);
    v76 = v71;
    v77 = v72;
    v30 = sub_219BEBD44();
    (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
    sub_2195763E4();
    v31 = v74;
    sub_219BEE214();
    swift_unknownObjectRelease();
    sub_21972C3B4(v24, &unk_280EE34A0, MEMORY[0x277D2D148]);
    v32 = type metadata accessor for MagazineFeedModel(0);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  }

  v58[1] = a1;
  v59 = v10;
  v34 = v71;
  v35 = v72;
  if (v29 == *MEMORY[0x277D34108])
  {
    (*(v26 + 96))(v28, v25);
    v36 = *v28;
    v76 = v34;
    v77 = v35;
    v37 = sub_219BF0744();
    (*(*(v37 - 8) + 56))(v21, 1, 1, v37);
    sub_2195763E4();
    v38 = v74;
    sub_219BEE1A4();

    sub_21972C3B4(v21, &qword_280E90EB0, MEMORY[0x277D32F30]);
    v39 = type metadata accessor for MagazineFeedModel(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  }

  if (v29 == *MEMORY[0x277D34100])
  {
    (*(v26 + 96))(v28, v25);
    v31 = v74;
    sub_219BEE184();
    swift_unknownObjectRelease();
    v32 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_3;
  }

  if (v29 == *MEMORY[0x277D34130])
  {
    (*(v26 + 96))(v28, v25);
    v41 = v65;
    v40 = v66;
    (*(v65 + 32))(v17, v28, v66);
    v76 = v34;
    v77 = v35;
    sub_2195763E4();
    v42 = v67;
    sub_219BEE224();
    (*(v41 + 8))(v17, v40);
    v43 = v74;
    (*(v68 + 32))(v74, v42, v69);
    v44 = type metadata accessor for MagazineFeedModel(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  }

  if (v29 == *MEMORY[0x277D34118])
  {
    (*(v26 + 96))(v28, v25);
    v31 = v74;
    sub_219BEE1C4();
    swift_unknownObjectRelease();
    v32 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_3;
  }

  v45 = v74;
  if (v29 == *MEMORY[0x277D340E8])
  {
    (*(v26 + 96))(v28, v25);
    sub_219BEE134();
    swift_unknownObjectRelease();
    v46 = type metadata accessor for MagazineFeedModel(0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  }

  if (v29 == *MEMORY[0x277D340F8])
  {
    (*(v26 + 96))(v28, v25);
    v48 = v62;
    v47 = v63;
    v49 = v64;
    (*(v63 + 32))(v62, v28, v64);
    sub_219BEE154();
    (*(v47 + 8))(v48, v49);
    v46 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_21;
  }

  if (v29 == *MEMORY[0x277D34120])
  {
    (*(v26 + 96))(v28, v25);
    v50 = *v28;
    sub_219BEE1E4();

    v46 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_21;
  }

  if (v29 == *MEMORY[0x277D34110])
  {
    (*(v26 + 96))(v28, v25);
    v51 = v59;
    v52 = v60;
    v53 = v61;
    (*(v60 + 32))(v59, v28, v61);
    sub_219BEE114();
    (*(v52 + 8))(v51, v53);
    v46 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_21;
  }

  if (v29 != *MEMORY[0x277D340F0])
  {
    sub_21972C350(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_219C09BA0;
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_219BF7484();
    v55 = v76;
    v56 = v77;
    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 64) = sub_2186FC3BC();
    *(v54 + 32) = v55;
    *(v54 + 40) = v56;
    MEMORY[0x21CEB8D80]("Unknown format item %s encountered. Please update this switch statement to handle the new case.", v58[0]);
  }

  v57 = type metadata accessor for MagazineFeedModel(0);
  (*(*(v57 - 8) + 56))(v45, 1, 1, v57);
  return (*(v26 + 8))(v28, v25);
}

uint64_t sub_21972B784@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v7 = sub_219BF1D54();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF1DF4();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_21972C350(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  sub_2186F700C();
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF1AD4();
  v55 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972C350(0, &unk_280EE34A0, MEMORY[0x277D2D148], v11);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v48 - v22;
  v24 = sub_219BF3C84();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v27, a1, v24);
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 == *MEMORY[0x277D34128])
  {
    (*(v25 + 96))(v27, v24);
    v29 = sub_219BEBD44();
    v61 = 0;
    v62 = 0;
    (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
    sub_2195763E4();
    sub_219BEE214();
    swift_unknownObjectRelease();
    sub_21972C3B4(v23, &unk_280EE34A0, MEMORY[0x277D2D148]);
    v30 = type metadata accessor for MagazineFeedModel(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v30 - 8) + 56))(a5, 0, 1, v30);
  }

  v48 = a1;
  v32 = a5;
  if (v28 == *MEMORY[0x277D34108])
  {
    (*(v25 + 96))(v27, v24);
    v33 = *v27;
    v34 = sub_219BF0744();
    v61 = 0;
    v62 = 0;
    (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
    sub_2195763E4();
    sub_219BEE1A4();

    sub_21972C3B4(v14, &qword_280E90EB0, MEMORY[0x277D32F30]);
    v35 = type metadata accessor for MagazineFeedModel(0);
LABEL_19:
    swift_storeEnumTagMultiPayload();
    return (*(*(v35 - 8) + 56))(v32, 0, 1, v35);
  }

  if (v28 == *MEMORY[0x277D34100])
  {
    (*(v25 + 96))(v27, v24);
    sub_219BEE184();
    swift_unknownObjectRelease();
    v35 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v28 == *MEMORY[0x277D34130])
  {
    (*(v25 + 96))(v27, v24);
    v36 = v55;
    (*(v55 + 32))(v20, v27, v18);
    sub_2195763E4();
    v61 = 0;
    v62 = 0;
    sub_219BEE224();
    (*(v36 + 8))(v20, v18);
    (*(v56 + 32))(a5, v17, v57);
    v35 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v28 == *MEMORY[0x277D34118])
  {
    (*(v25 + 96))(v27, v24);
    sub_219BEE1C4();
    swift_unknownObjectRelease();
    v35 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v28 == *MEMORY[0x277D340E8])
  {
    (*(v25 + 96))(v27, v24);
    sub_219BEE134();
    swift_unknownObjectRelease();
    v35 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v28 == *MEMORY[0x277D340F8])
  {
    (*(v25 + 96))(v27, v24);
    v38 = v52;
    v37 = v53;
    v39 = v54;
    (*(v53 + 32))(v52, v27, v54);
    sub_219BEE154();
    (*(v37 + 8))(v38, v39);
    v35 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v28 == *MEMORY[0x277D34120])
  {
    (*(v25 + 96))(v27, v24);
    v40 = *v27;
    sub_219BEE1E4();

    v35 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v28 == *MEMORY[0x277D34110])
  {
    (*(v25 + 96))(v27, v24);
    v42 = v49;
    v41 = v50;
    v43 = v51;
    (*(v50 + 32))(v49, v27, v51);
    sub_219BEE114();
    (*(v41 + 8))(v42, v43);
    v35 = type metadata accessor for MagazineFeedModel(0);
    goto LABEL_19;
  }

  if (v28 != *MEMORY[0x277D340F0])
  {
    sub_21972C350(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_219C09BA0;
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_219BF7484();
    v45 = v61;
    v46 = v62;
    *(v44 + 56) = MEMORY[0x277D837D0];
    *(v44 + 64) = sub_2186FC3BC();
    *(v44 + 32) = v45;
    *(v44 + 40) = v46;
    MEMORY[0x21CEB8D80]("Unknown slot item %s encountered. Please update this switch statement to handle the new case.", v48);
  }

  v47 = type metadata accessor for MagazineFeedModel(0);
  (*(*(v47 - 8) + 56))(v32, 1, 1, v47);
  return (*(v25 + 8))(v27, v24);
}

uint64_t sub_21972C308(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21972C350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21972C3B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21972C350(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21972C434()
{
  v1 = v0[1];
  v2 = sub_21972CB10(*v0, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header);
  v3 = sub_21972CB10(v1, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer);
  sub_2191ED57C(v3);
  return v2;
}

uint64_t sub_21972C4CC(uint64_t a1)
{
  v2 = sub_21972CE80();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_21972C508(uint64_t a1)
{
  v2 = sub_218B201C0();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21972C54C(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer(0);
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE9834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v9 + 104;
  v13 = *(v9 + 104);
  v13(v11, *MEMORY[0x277D6E758], v8);
  v14 = sub_219BEE054();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v43 = v16;
  v16(v11, v8);
  v17 = *(v14 + 16);
  v45 = a1;
  if (v17)
  {
    v39[0] = v13;
    v39[1] = v12;
    v40 = v11;
    v41 = v15;
    v42 = v8;
    v49 = MEMORY[0x277D84F90];
    sub_218C35470(0, v17, 0);
    v18 = v14;
    v19 = v49;
    v47 = sub_219BF00D4();
    v20 = *(v47 - 8);
    v46 = *(v20 + 16);
    v21 = v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v22 = *(v20 + 72);
    do
    {
      v46(v7, v21, v47);
      v49 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_218C35470(v23 > 1, v24 + 1, 1);
        v19 = v49;
      }

      *(v19 + 16) = v24 + 1;
      sub_21972CAA8(v7, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header);
      v21 += v22;
      --v17;
    }

    while (v17);

    a1 = v45;
    v8 = v42;
    v11 = v40;
    (v39[0])(v40, *MEMORY[0x277D6E750], v42);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
    v13(v11, *MEMORY[0x277D6E750], v8);
  }

  v25 = sub_219BEE054();
  v43(v11, v8);
  v26 = *(v25 + 16);
  v27 = v44;
  if (v26)
  {
    v49 = MEMORY[0x277D84F90];
    sub_218C35420(0, v26, 0);
    v28 = v49;
    v47 = sub_219BF00D4();
    v29 = *(v47 - 8);
    v30 = *(v29 + 16);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v46 = v25;
    v32 = v25 + v31;
    v33 = *(v29 + 72);
    do
    {
      v30(v27, v32, v47);
      v49 = v28;
      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_218C35420(v34 > 1, v35 + 1, 1);
        v28 = v49;
      }

      *(v28 + 16) = v35 + 1;
      sub_21972CAA8(v27, v28 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v35, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer);
      v32 += v33;
      --v26;
    }

    while (v26);
    v36 = sub_219BEE074();
    (*(*(v36 - 8) + 8))(v45, v36);
  }

  else
  {

    v37 = sub_219BEE074();
    (*(*(v37 - 8) + 8))(a1, v37);
  }

  return v19;
}

uint64_t sub_21972CAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21972CB10(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = sub_219BF00D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_218C34270(0, v14, 0);
    v15 = v33;
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v26 = (v11 + 32);
    v27 = v17;
    v18 = (v11 + 16);
    v19 = (v11 + 8);
    do
    {
      v20 = v29;
      sub_21972CDB8(v16, v9, v29);
      v21 = v28;
      sub_21972CDB8(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_21972CE20(v9, v20);
      v33 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_218C34270((v22 > 1), v23 + 1, 1);
      }

      v31 = v10;
      v32 = sub_21897FB18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*v18)(boxed_opaque_existential_1, v13, v10);
      v15 = v33;
      *(v33 + 16) = v23 + 1;
      sub_2186CB1F0(&v30, v15 + 40 * v23 + 32);
      (*v19)(v13, v10);
      v16 += v27;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_21972CDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21972CE20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21972CE80()
{
  result = qword_27CC1E640;
  if (!qword_27CC1E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E640);
  }

  return result;
}

void sub_21972CF04()
{
  if (!qword_280E920E0)
  {
    type metadata accessor for SportsStandingsTagFeedGroupConfigData();
    sub_219730318(&qword_280E98A78, type metadata accessor for SportsStandingsTagFeedGroupConfigData);
    sub_219730318(&qword_280E98A80, type metadata accessor for SportsStandingsTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E920E0);
    }
  }
}

uint64_t type metadata accessor for SportsStandingsTagFeedGroupEmitter()
{
  result = qword_280E9E8B0;
  if (!qword_280E9E8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21972D030()
{
  sub_21972CF04();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsStandingsTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186C709C(319, qword_280EBA370);
        if (v3 <= 0x3F)
        {
          sub_2186C709C(319, &qword_280EE9F20);
          if (v4 <= 0x3F)
          {
            sub_2186C709C(319, qword_280EA48C0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21972D178(uint64_t a1)
{
  v3 = type metadata accessor for SportsStandingsTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  v26 = a1;
  sub_219BF43B4();
  sub_219BE3204();
  v22 = v1;
  v23 = type metadata accessor for SportsStandingsTagFeedGroupEmitter;
  sub_219730360(v1, v6, type metadata accessor for SportsStandingsTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_21972E0F4(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_21972FA98(0, &unk_280E8EE60, MEMORY[0x277D344C0], MEMORY[0x277D83940]);
  sub_219BE2F64();

  v11 = v23;
  sub_219730360(v1, v6, v23);
  v12 = swift_allocObject();
  sub_21972E0F4(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v14 = v22;
  sub_219730360(v22, v6, v11);
  v15 = swift_allocObject();
  sub_21972E0F4(v6, v15 + v7);
  *(v15 + v8) = a1;

  v16 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_219730360(v14, v6, v11);
  v17 = swift_allocObject();
  sub_21972E0F4(v6, v17 + v7);
  v18 = sub_219BE2E54();
  v19 = sub_219BE3064();

  return v19;
}

uint64_t sub_21972D4EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21972CF04();
  v6 = v5;
  v7 = swift_allocBox();
  result = (*(*(v6 - 8) + 16))(v8, v2 + *(a1 + 20), v6);
  *a2 = v7 | 0x4000000000000002;
  return result;
}

uint64_t sub_21972D57C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for SportsStandingsTagFeedGroupKnobs();
  a2[4] = sub_219730318(&qword_280EA4708, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
  a2[5] = sub_219730318(&qword_27CC1E680, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219730360(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
}

uint64_t sub_21972D644()
{
  type metadata accessor for SportsStandingsTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  v1 = MEMORY[0x277D84560];
  sub_21972FA98(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_21972FA98(0, &qword_280E8B8A0, MEMORY[0x277D32F00], v1);
  v7 = sub_219BF0644();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x277D32EF8], v7);
  v11 = sub_2194B3180(v10);
  swift_setDeallocating();
  (*(v8 + 8))(v10 + v9, v7);
  swift_deallocClassInstance();
  *(v6 + v5) = v11;
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D322C8], v3);
  sub_2191EDA0C(v6);
  return v0;
}

uint64_t sub_21972D8F4@<X0>(uint64_t *a1@<X8>)
{
  sub_21972FA98(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21972CF04();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218F6B68C(inited + 32, sub_2188317B0);
  sub_21972FA98(0, &qword_27CC1E688, type metadata accessor for SportsStandingsTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_2197303C8();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21972DA80()
{
  sub_219730318(&unk_27CC1E660, type metadata accessor for SportsStandingsTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_21972DC34()
{
  v1 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_219BF43B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BEF0B4();
  v6 = *(v19 + 16);

  v7 = *(v6 + 32);

  v8 = [v7 backingTag];

  v9 = [v8 asSports];
  swift_unknownObjectRelease();
  if (v9)
  {
    v18[1] = v0;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    v19 = 0;
    v20 = 0xE000000000000000;
    v21 = v9;
    sub_2186D85DC();
    sub_219BF7484();
    v12 = v19;
    v11 = v20;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2186FC3BC();
    *(v10 + 32) = v12;
    *(v10 + 40) = v11;
    sub_219BF6214();
    sub_219BE5314();

    sub_219BDC8D4();
    sub_219BDC8B4();
    sub_219BDC6B4();
    sub_219BDC8A4();

    if (v19 == 1)
    {
      sub_219BF6214();
      sub_219BE5314();
      swift_unknownObjectRetain();
      sub_219BF4CE4();
      sub_219BF49F4();
      swift_allocObject();
      *v5 = sub_219BF49D4();
      v13 = MEMORY[0x277D343F0];
    }

    else
    {
      sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_219C146A0;
      *(v16 + 32) = v9;
      swift_unknownObjectRetain();
      sub_219BF4CE4();
      sub_219BF4CA4();
      v13 = MEMORY[0x277D34400];
    }

    (*(v3 + 104))(v5, *v13, v2);
    sub_21972FA98(0, &qword_27CC176F8, MEMORY[0x277D34408], MEMORY[0x277D6CF30]);
    swift_allocObject();
    v14 = sub_219BE3014();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_219BEEDD4();
    sub_219730318(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D323A0], v14);
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_21972E0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsStandingsTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21972E1F8(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972FA98(0, &unk_280E8FE40, MEMORY[0x277D34408], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  v47 = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  MEMORY[0x28223BE20](v47);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0BD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SportsStandingsTagFeedGroupEmitter();
  v52 = v2;
  type metadata accessor for SportsStandingsTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v13 = *(v10 + 8);
  v13(v12, v9);
  v50 = v54;
  sub_219BEF134();
  sub_219BEF524();
  v13(v12, v9);
  v49 = v54;
  sub_219BEF0B4();
  v14 = *(v54 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v15 = [v14 alternativeFeedDescriptor];
  if (v15 && (v16 = v15, v17 = [v15 feedConfiguration], v16, v17 == 4))
  {
    v18 = 18;
  }

  else
  {
    v18 = 11;
  }

  v19 = sub_219BF43B4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v7, v51, v19);
  (*(v20 + 56))(v7, 0, 1, v19);
  v21 = sub_219BF4F64();
  v22 = v48;
  (*(*(v21 - 8) + 56))(v48, 5, 6, v21);
  v23 = sub_219BF6394();
  v24 = [v14 alternativeFeedDescriptor];
  v25 = v53;
  if (v24)
  {
    v26 = v24;
    v27 = [v24 feedConfiguration];
  }

  else
  {
    v27 = [v14 feedConfiguration];
  }

  sub_218F6B224(v7, v25);
  v28 = v47;
  sub_219730360(v22, v25 + *(v47 + 20), type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
  v29 = (v25 + *(v28 + 24));
  *v29 = v23;
  v29[1] = v27;
  v30 = sub_219975D48(v18);
  v32 = v31;
  sub_218F6B68C(v22, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
  sub_2197301F8(v7);
  v33 = (v25 + *(v28 + 28));
  *v33 = v30;
  v33[1] = v32;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_219C0B8C0;
  v35 = *(sub_219BF43A4() + 16);

  v36 = MEMORY[0x277D83B88];
  v37 = MEMORY[0x277D83C10];
  *(v34 + 56) = MEMORY[0x277D83B88];
  *(v34 + 64) = v37;
  *(v34 + 32) = v35;
  *(v34 + 96) = v36;
  *(v34 + 104) = v37;
  v39 = v49;
  v38 = v50;
  *(v34 + 72) = v50;
  *(v34 + 136) = v36;
  *(v34 + 144) = v37;
  *(v34 + 112) = v39;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v40);
  *(&v47 - 2) = v52;
  *(&v47 - 1) = v25;
  sub_219BF4264();
  sub_219BE3204();
  v41 = swift_allocObject();
  *(v41 + 16) = v14;
  *(v41 + 24) = v18;
  *(v41 + 32) = v39;
  *(v41 + 40) = v38;
  v42 = v14;
  v43 = sub_219BE2E54();
  sub_21972FA98(0, &unk_280E8EE60, MEMORY[0x277D344C0], MEMORY[0x277D83940]);
  sub_219BE2F74();

  v44 = sub_219BE2E54();
  v45 = sub_219BE2FD4();

  sub_218F6B68C(v25, type metadata accessor for SportsConfiguringDataVisualizationRequest);
  return v45;
}

uint64_t sub_21972E94C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v55 = a1;
  v6 = MEMORY[0x277D83D88];
  sub_21972FA98(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v51 - v8;
  sub_21972FA98(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v51 - v10;
  sub_21972FA98(0, &qword_280E91A70, sub_2189AD5C8, v6);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v51 - v12;
  v13 = sub_219BF2AB4();
  v73 = *(v13 - 8);
  v74 = v13;
  MEMORY[0x28223BE20](v13);
  v69 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972FA98(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v6);
  MEMORY[0x28223BE20](v15 - 8);
  v54 = &v51 - v16;
  v71 = sub_219BF2034();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SportsStandingsTagFeedGroupConfigData();
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_219BF4F04();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v24 = *(v77 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v25 = [v24 backingTag];

  v65 = v25;
  v26 = [v25 asSports];
  sub_219BF4EE4();
  sub_21972FA98(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  sub_219BF3E84();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_219C09BA0;
  v53 = v27;
  v67 = v23;
  v75[2] = v23;
  sub_21894BFA4(sub_2197301D8, v75, a2);
  v62 = v3;
  v28 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v28);
  sub_218F0BB90(v28);
  sub_219BF3E74();
  v29 = type metadata accessor for SportsStandingsTagFeedGroupEmitter();
  v30 = *(v29 + 28);
  v52 = v4;
  v31 = *(v4 + v30 + 24);
  v59 = *(v4 + v30 + 32);
  v60 = v31;
  v58 = __swift_project_boxed_opaque_existential_1((v4 + v30), v31);
  sub_21972CF04();
  v66 = v21;
  sub_219BEDD14();
  v57 = *(v19 + 28);
  v32 = sub_219BEC004();
  (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
  sub_219A95188(v28);
  sub_219A95188(v28);
  sub_219A951A0(v28);
  sub_219A951B8(v28);
  sub_219A952CC(v28);
  sub_219A952E4(v28);
  sub_219A953F8(v28);
  v33 = v56;
  v34 = v63;
  sub_219BF2024();
  v35 = *(v29 + 24);
  sub_2189AD5C8();
  v37 = v36;
  v38 = *(v36 - 8);
  v39 = v61;
  (*(v38 + 16))(v61, v52 + v35, v36);
  (*(v38 + 56))(v39, 0, 1, v37);
  sub_219BEF0B4();
  v40 = *(v77 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v41 = sub_219BF35D4();
  (*(*(v41 - 8) + 56))(v64, 1, 1, v41);
  LOBYTE(v76) = 18;
  sub_21972F5E8(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v42 = *(v76 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v43 = sub_219BF2774();
  (*(*(v43 - 8) + 56))(v34, 1, 1, v43);
  v44 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v44 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v45 = v69;
  sub_219BF2A84();
  v46 = v66;
  v47 = v57;
  v48 = sub_219BF2194();
  swift_unknownObjectRelease();
  (*(v73 + 8))(v45, v74);
  (*(v68 + 8))(v33, v71);
  v49 = sub_219BF1934();
  (*(*(v49 - 8) + 8))(&v46[v47], v49);
  (*(v70 + 8))(v67, v72);
  return v48;
}

uint64_t sub_21972F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21972F668(a1, a3, v10);
  sub_219730360(v10, v7, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_21972FA98(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v11 = sub_219BE3014();
  sub_218F6B68C(v10, type metadata accessor for TagFeedGroup);
  return v11;
}

uint64_t sub_21972F550(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsStandingsTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21972F3BC(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_21972F5E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_21972F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v24 = a3;
  sub_21972FA98(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v23 = v20 - v5;
  v6 = sub_219BEF554();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v20[1] = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_219BF1904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BED8D4();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  type metadata accessor for SportsStandingsTagFeedGroupEmitter();
  sub_21972CF04();
  v16 = sub_219BEDCB4();
  v20[2] = v17;
  v20[3] = v16;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v18 = sub_219BEE5D4();
  (*(*(v18 - 8) + 56))(v23, 1, 1, v18);
  sub_219BED854();
  (*(v13 + 32))(v24, v15, v21);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

void sub_21972FA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21972FAFC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = sub_219BF4254();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C0B8C0;
  v11 = v9 >> 62;
  v39 = a5;
  if (v9 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D83C10];
  *(v10 + 56) = MEMORY[0x277D83B88];
  *(v10 + 64) = v13;
  *(v10 + 32) = v12;
  v14 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  v15 = sub_219BF5414();
  v17 = v16;

  v18 = MEMORY[0x277D837D0];
  *(v10 + 96) = MEMORY[0x277D837D0];
  v19 = sub_2186FC3BC();
  *(v10 + 104) = v19;
  *(v10 + 72) = v15;
  *(v10 + 80) = v17;
  v20 = sub_2199765A8(a2);
  *(v10 + 136) = v18;
  *(v10 + 144) = v19;
  *(v10 + 112) = v20;
  *(v10 + 120) = v21;
  sub_219BF6214();
  sub_219BE5314();

  if (a3 < 0)
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v11)
  {
    if (v9 < 0)
    {
      v18 = v9;
    }

    else
    {
      v18 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
      goto LABEL_52;
    }

    if (a2 >= a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = a2;
    }

    if (a2 < 0)
    {
      v24 = a3;
    }

    if (a3)
    {
      v15 = v24;
    }

    else
    {
      v15 = 0;
    }

    v22 = sub_219BF7214();
  }

  else
  {
    v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22 >= a3)
    {
      v23 = a3;
    }

    else
    {
      v23 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a3)
    {
      v15 = v23;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v22 < v15)
  {
    goto LABEL_50;
  }

  if ((v9 & 0xC000000000000001) != 0 && v15)
  {
    sub_219BF46E4();

    v25 = 0;
    do
    {
      v26 = v25 + 1;
      sub_219BF7334();
      v25 = v26;
    }

    while (v15 != v26);
  }

  else
  {
  }

  if (v11)
  {
    a3 = sub_219BF7564();
    a2 = v27;
    v18 = v28;
    v15 = v29;
  }

  else
  {
    v18 = 0;
    a3 = v9 & 0xFFFFFFFFFFFFFF8;
    a2 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v15 = (2 * v15) | 1;
  }

  v30 = (v15 >> 1) - v18;
  if (__OFSUB__(v15 >> 1, v18))
  {
    goto LABEL_51;
  }

  if (v30 < a4)
  {
    v31 = sub_219BEEDD4();
    sub_219730318(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v32 = a4;
    v32[1] = v30;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D32400], v31);
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    swift_unknownObjectRelease();
    v37 = MEMORY[0x277D84F90];
  }

  v38 = *(v37 + 16);

  if (v38 != v30)
  {
LABEL_53:
    swift_unknownObjectRelease_n();
LABEL_40:
    sub_218B675D4(a3, a2, v18, v15);
    v35 = v34;
    v36 = v39;
LABEL_46:
    result = swift_unknownObjectRelease();
    goto LABEL_47;
  }

  v35 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  v36 = v39;
  if (!v35)
  {
    v35 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

LABEL_47:
  *v36 = v35;
  return result;
}

uint64_t sub_21972FF40()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_219730070@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BF3484();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = swift_allocObject();
  *(v6 + 16) = sub_219BF46B4();
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D33E08], v2);
  sub_219BF1AC4();
  v7 = *MEMORY[0x277D34130];
  v8 = sub_219BF3C84();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

uint64_t sub_2197301F8(uint64_t a1)
{
  sub_21972FA98(0, &unk_280E8FE40, MEMORY[0x277D34408], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219730284()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + *(type metadata accessor for SportsStandingsTagFeedGroupEmitter() + 40) + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 8))(v1, ObjectType, v3);
}

uint64_t sub_219730318(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219730360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2197303C8()
{
  result = qword_27CC1E690;
  if (!qword_27CC1E690)
  {
    sub_21972FA98(255, &qword_27CC1E688, type metadata accessor for SportsStandingsTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E690);
  }

  return result;
}

uint64_t sub_219730450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219730C5C(0, &qword_27CC1E6B8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219730BA4();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_219730CC0(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219730BF8(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2197306FC(uint64_t a1)
{
  v2 = sub_219730BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219730738(uint64_t a1)
{
  v2 = sub_219730BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197307B4(void *a1)
{
  sub_219730C5C(0, &qword_27CC1E6C8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219730BA4();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_219730CC0(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219730A14(uint64_t a1)
{
  result = sub_219730CC0(&unk_27CC1C660, type metadata accessor for SportsLinksTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219730A6C(void *a1)
{
  a1[1] = sub_219730CC0(&qword_27CC1E6B0, type metadata accessor for SportsLinksTagFeedGroup);
  a1[2] = sub_219730CC0(&qword_27CC1C778, type metadata accessor for SportsLinksTagFeedGroup);
  result = sub_219730CC0(&qword_27CC1C888, type metadata accessor for SportsLinksTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_219730B18(uint64_t a1)
{
  v2 = sub_219730CC0(&qword_27CC1E6B0, type metadata accessor for SportsLinksTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_219730BA4()
{
  result = qword_27CC1E6C0;
  if (!qword_27CC1E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E6C0);
  }

  return result;
}

uint64_t sub_219730BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsLinksTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219730C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219730BA4();
    v7 = a3(a1, &type metadata for SportsLinksTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219730CC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219730D1C()
{
  result = qword_27CC1E6D0;
  if (!qword_27CC1E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E6D0);
  }

  return result;
}

unint64_t sub_219730D74()
{
  result = qword_27CC1E6D8;
  if (!qword_27CC1E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E6D8);
  }

  return result;
}

unint64_t sub_219730DCC()
{
  result = qword_27CC1E6E0;
  if (!qword_27CC1E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E6E0);
  }

  return result;
}

uint64_t sub_219730E20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
      v6 = type metadata accessor for SearchMoreModule();
      v7 = swift_allocObject();
      sub_2186CB1F0(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_2186CB1F0(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &protocol witness table for SearchMoreModule;
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

uint64_t sub_219730F34()
{
  type metadata accessor for SearchMoreViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1E6E8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1E6F0);
  sub_219BE2914();
  type metadata accessor for SearchMoreRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC1E6F8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1E700);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1E708);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1E710);
  sub_219BE2914();

  sub_2189877E8();
  sub_219BE2904();

  type metadata accessor for SearchMoreBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1E718);
  sub_219BE2914();

  sub_219737054();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2197378EC();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219737AE0();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_219737140();
  sub_219BE2904();

  sub_219737A28();
  sub_219BE2904();

  sub_2197375C8();
  sub_219BE2904();

  type metadata accessor for SearchMoreBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_219737B74();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();

  sub_21973727C();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2197373F8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219737680();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219737800();
  sub_219BE2904();

  type metadata accessor for SearchMoreBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SearchMoreBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_219737CB0();
  sub_219BE2904();

  sub_219737D44();
  sub_219BE2904();

  sub_219737E30();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219737EC4();
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

  sub_219737FB0(0, &qword_27CC1E7F8, &qword_27CC1E800, &unk_219C6E4B0, MEMORY[0x277D30270]);
  sub_219BE2904();

  sub_219737FB0(0, &qword_27CC1E818, &qword_27CC1E820, &unk_219C6E488, MEMORY[0x277D2FF78]);
  sub_219BE2904();
}

uint64_t sub_219731B20(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v65)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v63 == 2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E6E8);
  result = sub_219BE1E34();
  if (!v62)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E6F8);
  result = sub_219BE1E34();
  if (!v59)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737B74();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150);
  result = sub_219BE1E34();
  v4 = v57;
  if (!v57)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v44 = v58;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v42 = v60;
  v43 = v63;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80);
  result = sub_219BE1E34();
  if (!v54)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = v3;
  sub_219BF4FF4();
  swift_allocObject();
  v5 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  v6 = v52;
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v64;
  v40 = v59;
  v34 = v51;
  v38 = v53;
  v37 = v54;
  v36 = v55;
  v35 = v56;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1DF4();
  v7 = v50;
  if (v50 != 2)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v33[2] = v33;
    MEMORY[0x28223BE20](v8);
    v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for SearchMoreStyler();
    v48 = v13;
    v49 = &off_282A610B8;
    v47[0] = v12;
    v14 = type metadata accessor for SearchMoreViewController();
    v15 = objc_allocWithZone(v14);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
    v33[1] = v33;
    MEMORY[0x28223BE20](v16);
    v18 = (v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v46[4] = &off_282A610B8;
    v46[3] = v13;
    v46[0] = v20;
    *&v15[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchContentType] = v39;
    v15[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchContentSource] = v43 & 1;
    sub_218718690(v46, &v15[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_styler]);
    v21 = &v15[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler];
    v22 = v42;
    *v21 = v40;
    v21[1] = v22;
    v23 = v41;
    *&v15[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_blueprintViewController] = v41;
    v24 = &v15[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_toolbarManager];
    v25 = v44;
    *v24 = v4;
    v24[1] = v25;
    *&v15[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_sharingActivityProviderFactory] = v5;
    v26 = &v15[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchRequestData];
    *v26 = v34;
    *(v26 + 1) = v6;
    v27 = v37;
    *(v26 + 2) = v38;
    *(v26 + 3) = v27;
    *(v26 + 4) = v36;
    v26[40] = v35 & 1;
    v15[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_refreshRecentSearch] = v7 & 1;
    v45.receiver = v15;
    v45.super_class = v14;
    swift_unknownObjectRetain();
    v28 = v23;
    swift_unknownObjectRetain();

    v29 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
    *(*&v29[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler] + 24) = &off_282A58B88;
    swift_unknownObjectWeakAssign();
    v30 = *&v29[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_blueprintViewController];
    v31 = v29;
    v32 = v30;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v61);
    return v31;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21973223C@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v10 = sub_2197386EC(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for SearchMoreStyler();
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
    a2[4] = &off_282A610B8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21973249C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for SearchMoreRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v11, v8 + 24);
    *(v8 + 64) = v5;
    result = sub_2186CB1F0(&v9, v8 + 72);
    *(v8 + 112) = v6;
    a2[3] = v7;
    a2[4] = &off_282A43390;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2197325F8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchMoreViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_219732678@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E700);
  result = sub_219BE1E34();
  v5 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC3D88);
  result = sub_219BE1E34();
  v7 = v22;
  if (!v22)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E6F0);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E708);
  result = sub_219BE1E34();
  if (v19)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v9);
    v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v13);
    v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v16 + 16))(v15);
    v17 = sub_219738734(v5, v6, v7, v8, *v11, *v15);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A57A88;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219732994@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1E710);
  result = sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737054();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchMoreBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737FB0(0, &qword_27CC1E7F8, &qword_27CC1E800, &unk_219C6E4B0, MEMORY[0x277D30270]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737FB0(0, &qword_27CC1E818, &qword_27CC1E820, &unk_219C6E488, MEMORY[0x277D2FF78]);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    sub_219738658();
    v10 = swift_allocObject();
    v10[3] = 0;
    swift_unknownObjectWeakInit();
    v10[6] = v11;
    v10[7] = v12;
    v10[4] = v5;
    v10[5] = v6;
    v10[8] = v7;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = v8;
    v10[12] = v9;
    *(v11 + OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_delegate + 8) = &off_282A945B8;
    result = swift_unknownObjectWeakAssign();
    *a2 = v10;
    a2[1] = &off_282A945D0;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_219732C2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BE14C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v34 = v5;
  v35 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = result;
  v29 = v13;
  v30 = v10;
  v31 = v8;
  v32 = v7;
  v33 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  v15 = v40;
  if (!v40)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v39;
  v17 = v41;
  v28 = v42;
  v18 = v43;
  v27 = v44;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (v38)
  {
    v19 = type metadata accessor for SearchMoreTracker();
    v20 = swift_allocObject();
    v21 = v28;
    v22 = v29;
    *(v20 + 16) = v12;
    *(v20 + 24) = v22;
    *(v20 + 32) = v14;
    *(v20 + 40) = v16;
    *(v20 + 48) = v15;
    *(v20 + 56) = v17;
    *(v20 + 64) = v21;
    *(v20 + 72) = v18;
    *(v20 + 80) = v27 & 1;
    sub_218718690(v37, v20 + 88);
    (*(v34 + 104))(v36, *MEMORY[0x277D2F318], v35);

    v23 = v30;
    sub_219BE1484();
    sub_2197386EC(&qword_280EE8010, MEMORY[0x277D2F280]);
    v24 = v32;
    sub_219BDD1F4();

    (*(v31 + 8))(v23, v24);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v25 = v33;
    v33[3] = v19;
    v25[4] = &off_282A52210;
    *v25 = v20;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_219733008@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v28[40] == 255)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v27)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v9 = v24;
  if (!v24)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FFB04();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v21 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218713E34();
  result = sub_219BE1E24();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for SearchMoreDataManager();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v14 = OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_accessQueue;
    sub_2186C6148(0, &qword_280E8E3B0);
    (*(v5 + 104))(v7, *MEMORY[0x277D851B8], v4);
    v15 = sub_219BF66E4();
    (*(v5 + 8))(v7, v4);
    *&v13[v14] = v15;
    sub_218EDA89C(v28, &v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_resultsStream]);
    sub_218718690(v26, &v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_headlineService]);
    v16 = &v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_subscriptionService];
    v17 = v22;
    *v16 = v9;
    *(v16 + 1) = v17;
    *&v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_feedService] = v10;
    *&v13[OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_feedServiceConfigFetcher] = v11;
    v23.receiver = v13;
    v23.super_class = v12;
    v18 = objc_msgSendSuper2(&v23, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v26);
    result = sub_2193341FC(v28);
    v19 = v21;
    *v21 = v18;
    v19[1] = &off_282A69F50;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_219733384(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_27CC1E718);
    result = sub_219BE1E34();
    if (v35)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29[2] = v29;
      MEMORY[0x28223BE20](v3);
      v5 = (v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v29[1] = v29;
      MEMORY[0x28223BE20](v7);
      v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v5;
      v12 = type metadata accessor for HeadlineModelFactory();
      v33[3] = v12;
      v33[4] = &off_282A8B8E8;
      v33[0] = v11;
      v31 = &type metadata for SearchMoreSectionFactory;
      v32 = &off_282A9B958;
      v13 = swift_allocObject();
      v30[0] = v13;
      v14 = v9[1];
      v13[1] = *v9;
      v13[2] = v14;
      v15 = v9[3];
      v13[3] = v9[2];
      v13[4] = v15;
      type metadata accessor for SearchMoreBlueprintModifierFactory();
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v33, v12);
      MEMORY[0x28223BE20](v17);
      v19 = (v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v20 + 16))(v19);
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x28223BE20](v21);
      v23 = (v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v24 + 16))(v23);
      v25 = *v19;
      v16[5] = v12;
      v16[6] = &off_282A8B8E8;
      v16[2] = v25;
      v16[10] = &type metadata for SearchMoreSectionFactory;
      v16[11] = &off_282A9B958;
      v26 = swift_allocObject();
      v16[7] = v26;
      v27 = v23[1];
      v26[1] = *v23;
      v26[2] = v27;
      v28 = v23[3];
      v26[3] = v23[2];
      v26[4] = v28;
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v36);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197337D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE244();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (v7)
  {
    a2[3] = &type metadata for SearchMoreSectionFactory;
    a2[4] = &off_282A9B958;
    v6 = swift_allocObject();
    *a2 = v6;
    result = sub_2186CB1F0(&v9, (v6 + 2));
    v6[7] = v5;
    v6[8] = v7;
    v6[9] = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219733930(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219737140();
    result = sub_219BE1E24();
    if (result)
    {
      sub_219737054();
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

uint64_t sub_219733A10(uint64_t a1, void *a2)
{
  sub_219738480();
  swift_allocObject();
  sub_219BE96E4();
  sub_21973856C();
  swift_allocObject();
  sub_2197386EC(&qword_27CC1E8B0, sub_219738480);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197378EC();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_2197386EC(&qword_27CC1E8B8, sub_2197378EC);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219733B8C(void *a1)
{
  sub_21973842C(0, &qword_280EE3A90, MEMORY[0x277D6EB30]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchMoreBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737A28();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737AE0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2197378EC();
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219733D0C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BE9534();
  result = sub_219BE1DE4();
  if (result)
  {
    v9 = v3;
    v10 = MEMORY[0x277D6E678];
    *&v8 = result;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v8);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v5 = sub_219BF0214();
    sub_218718690(a2, &v8);
    v6 = swift_allocObject();
    sub_2186CB1F0(&v8, v6 + 16);
    v7 = sub_219BE1E04();

    if (v7)
    {
      v9 = v5;
      v10 = sub_2197386EC(&unk_280E90FE0, MEMORY[0x277D32C00]);
      *&v8 = v7;
      sub_219BEA494();
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219733EA0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8();
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
    sub_219737AE0();
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}