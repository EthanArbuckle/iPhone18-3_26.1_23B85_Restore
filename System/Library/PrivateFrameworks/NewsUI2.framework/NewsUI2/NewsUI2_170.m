uint64_t sub_2199DB470(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  sub_218718690(a2, v7);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_2186CB1F0(v7, v4 + 32);
  sub_2187546D8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_218720448(v2, v3);
  v5 = sub_219BE30B4();

  return v5;
}

void sub_2199DB5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v18[4] = sub_2199DC9C4;
  v18[5] = v16;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2199DB944;
  v18[3] = &block_descriptor_74_1;
  v17 = _Block_copy(v18);

  [a5 fc:v17 addAsyncOperationWithBlock:?];
  _Block_release(v17);
}

void sub_2199DB714(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    sub_219BE3204();
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = a7;

    v16 = sub_219BE2E54();
    sub_219BE2F74();

    v17 = swift_allocObject();
    *(v17 + 16) = a8;
    *(v17 + 24) = a9;

    v18 = sub_219BE2E54();
    sub_219BE2FD4();

    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;

    v20 = sub_219BE2E54();
    sub_219BE3024();
  }

  else
  {
    a1();
  }
}

uint64_t sub_2199DB944(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_2187E8A64, v4);
}

uint64_t sub_2199DB9D8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33[3] = a6;
  v33[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a3, a6);
  v12 = *a1;
  v13 = a1[1];
  v14 = CACurrentMediaTime();
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v15 = sub_219BE5434();
  __swift_project_value_buffer(v15, qword_280F62790);
  sub_218720448(v12, v13);
  v16 = sub_219BE5414();
  v17 = sub_219BF6214();
  sub_218720434(v12, v13);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136446210;
    v31 = a4;
    if (v13 - 2 >= 9 && v13)
    {
      if (v13 == 1)
      {
        v22 = 0xED0000756F596874;
        v20 = 0x6957646572616853;
      }

      else
      {
        MEMORY[0x21CECC330](v12, v13);
        v20 = 0x7954656C7A7A7550;
        v22 = 0xEB000000005F6570;
      }
    }

    else
    {
      OfflineFeedKind.rawValue.getter();
      sub_2187F3BD4();
      v20 = sub_219BF6FF4();
      v22 = v21;
    }

    v23 = sub_2186D1058(v20, v22, &v32);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2186C1000, v16, v17, "Will rebuild offline %{public}s feed", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x21CECF960](v19, -1, -1);
    MEMORY[0x21CECF960](v18, -1, -1);

    a4 = v31;
  }

  else
  {
  }

  MEMORY[0x28223BE20](v24);
  type metadata accessor for OfflineFeedManifest(0);
  sub_219BE3204();
  v25 = swift_allocObject();
  *(v25 + 16) = v12;
  *(v25 + 24) = v13;
  *(v25 + 32) = v14;
  *(v25 + 40) = a4 & 1;
  sub_218720448(v12, v13);
  v26 = sub_219BE2E54();
  sub_219BE2F94();

  v27 = swift_allocObject();
  *(v27 + 16) = v12;
  *(v27 + 24) = v13;
  sub_218720448(v12, v13);
  v28 = sub_219BE2E54();
  sub_219BE2FE4();

  v29 = sub_219BE3044();

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v29;
}

void sub_2199DBE2C()
{
  if (!qword_27CC220C8)
  {
    sub_2187546D8(255, &qword_27CC220D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83940]);
    sub_2199DC320(255, &unk_280E8EB00, &qword_280E8B580, MEMORY[0x277D84948], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC220C8);
    }
  }
}

uint64_t sub_2199DBFD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2199DC128()
{
  sub_2199DC1F8();
  if (v0 <= 0x3F)
  {
    sub_2199DC228();
    if (v1 <= 0x3F)
    {
      sub_2199DC288(319, &qword_280EE9CB8);
      if (v2 <= 0x3F)
      {
        sub_2199DC288(319, &qword_280EE9CC0);
        if (v3 <= 0x3F)
        {
          sub_2199DC2F0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2199DC1F8()
{
  result = qword_280E8F8B8;
  if (!qword_280E8F8B8)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280E8F8B8);
  }

  return result;
}

void sub_2199DC228()
{
  if (!qword_280E8EA40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8EA40);
    }
  }
}

void sub_2199DC288(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_219BDBD34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *sub_2199DC2F0()
{
  result = qword_280EDA058;
  if (!qword_280EDA058)
  {
    result = &type metadata for OfflineFeedKind;
    atomic_store(&type metadata for OfflineFeedKind, &qword_280EDA058);
  }

  return result;
}

void sub_2199DC320(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186CFDE4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2199DC388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFeedManifest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_15Tm()
{
  if (*(v0 + 24) >= 0xBuLL)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm_5()
{
  v1 = *(type metadata accessor for OfflineFeedUpdateCondition(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  if (*(v0 + 24) >= 0xBuLL)
  {
  }

  if (swift_getEnumCaseMultiPayload() - 1 <= 1)
  {
    v4 = sub_219BDBD34();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_2199DC54C(uint64_t a1)
{
  v3 = *(type metadata accessor for OfflineFeedUpdateCondition(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v1 + 16);
  v6 = v5[3];
  v7 = v5[4];
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  return sub_2199DB9D8(&v10, v1 + v4, v8, 0, a1, v6, v7);
}

uint64_t objectdestroy_5Tm_3()
{
  v1 = *(type metadata accessor for OfflineFeedUpdateCondition(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 24) >= 0xBuLL)
  {
  }

  if (swift_getEnumCaseMultiPayload() - 1 <= 1)
  {
    v3 = sub_219BDBD34();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_2199DC7F8(uint64_t a1, uint64_t a2)
{
  sub_218750054(0, qword_280ED0BA0, type metadata accessor for OfflineFeedManifest);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2199DC878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2199DC8E0()
{
  result = qword_280ECE2B0;
  if (!qword_280ECE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE2B0);
  }

  return result;
}

uint64_t sub_2199DCA48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2199DC320(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2199DCB34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
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
    v7 = type metadata accessor for NewsArticlesRouter();
    v8 = swift_allocObject();
    v8[2] = v9;
    v8[3] = v10;
    v8[4] = v5;
    v8[5] = v6;
    a2[3] = v7;
    result = sub_2187A5700(qword_280EE0CB8, type metadata accessor for NewsArticlesRouter);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2199DCCAC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE8DF8);
  result = sub_219BE1E34();
  if (!v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DE20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8E30);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199DD2AC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v5 = v15;
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v14[3] = v7;
    v14[4] = sub_2187A5700(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    v14[0] = v8;
    v9 = type metadata accessor for LinkActionActivityProvider();
    v10 = objc_allocWithZone(v9);
    sub_218718690(v19, &v10[OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_router]);
    *&v10[OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_qualifier] = v3;
    sub_218718690(v17, &v10[OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_handler]);
    *&v10[OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_linkedContentProvider] = v4;
    v11 = &v10[OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_commandCenter];
    *v11 = v5;
    *(v11 + 1) = v6;
    sub_218718690(v14, &v10[OBJC_IVAR____TtC7NewsUI226LinkActionActivityProvider_tracker]);
    v13.receiver = v10;
    v13.super_class = v9;
    v12 = objc_msgSendSuper2(&v13, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v12;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_2199DCF84()
{
  v0 = objc_allocWithZone(type metadata accessor for LinkActionURLQualifier());

  return [v0 init];
}

void sub_2199DCFBC(void *a1, void *a2)
{
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2199DD2AC();
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BDD274();
    if (sub_219BE1E24())
    {
      (*(v5 + 104))(v7, *MEMORY[0x277D2F548], v4);
      v10 = sub_219BDD0F4();
      (*(v5 + 8))(v7, v4);
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      type metadata accessor for LinkActionActivityProvider();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = v9;

      v12 = v9;
      v13 = sub_219BE1E04();

      if (v13)
      {
        [a1 registerActionActivityProvider:v13 actionType:*MEMORY[0x277D55110]];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_2199DD20C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199DD2AC();
  return sub_219BE1B94();
}

unint64_t sub_2199DD2AC()
{
  result = qword_280E8DD40;
  if (!qword_280E8DD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DD40);
  }

  return result;
}

uint64_t type metadata accessor for SearchMoreRouteModel()
{
  result = qword_27CC22150;
  if (!qword_27CC22150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2199DD34C()
{
  sub_219BDD944();
  if (v0 <= 0x3F)
  {
    sub_219BDE674();
    if (v1 <= 0x3F)
    {
      sub_218D0E4AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for SportsRecordTagFeedGroupEmitter()
{
  result = qword_280EA8000;
  if (!qword_280EA8000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2199DD448()
{
  sub_2197B889C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsRecordTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186C709C(319, &unk_280E90250);
        if (v3 <= 0x3F)
        {
          sub_2186C709C(319, &qword_280E8FED0);
          if (v4 <= 0x3F)
          {
            sub_2186C709C(319, &qword_280E8FD40);
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

uint64_t sub_2199DD590(uint64_t a1)
{
  v3 = type metadata accessor for SportsRecordTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  v24 = a1;
  v20 = v1;
  sub_2186DBB60(0);
  sub_219BE3204();
  v22 = type metadata accessor for SportsRecordTagFeedGroupEmitter;
  sub_2199DFAF4(v1, v6, type metadata accessor for SportsRecordTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_2199DFB5C(v6, v9 + v7, type metadata accessor for SportsRecordTagFeedGroupEmitter);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_2199E10E0(0, &qword_27CC22188, MEMORY[0x277D33470], sub_2186DBB60);
  sub_219BE2F64();

  v11 = v20;
  sub_2199DFAF4(v20, v6, v22);
  v12 = swift_allocObject();
  sub_2199DFB5C(v6, v12 + v7, type metadata accessor for SportsRecordTagFeedGroupEmitter);
  *(v12 + v8) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2199DF94C;
  *(v13 + 24) = v12;

  v14 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_2199DFAF4(v11, v6, v22);
  v15 = swift_allocObject();
  sub_2199DFB5C(v6, v15 + v7, type metadata accessor for SportsRecordTagFeedGroupEmitter);
  v16 = sub_219BE2E54();
  v17 = sub_219BE3064();

  return v17;
}

uint64_t sub_2199DD8C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2197B889C();
  v6 = v5;
  v7 = swift_allocBox();
  result = (*(*(v6 - 8) + 16))(v8, v2 + *(a1 + 20), v6);
  *a2 = v7 | 0x2000000000000000;
  return result;
}

uint64_t sub_2199DD948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for SportsRecordTagFeedGroupKnobs();
  a2[4] = sub_2199E1488(qword_280EAEC90, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  a2[5] = sub_2199E1488(&qword_27CC1FA20, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2199DFAF4(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsRecordTagFeedGroupKnobs);
}

uint64_t sub_2199DDA0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsRecordTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2199DFAF4(v2 + *(a2 + 24), v6, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  v11[15] = 10;
  sub_2189AD5C8();
  v8 = v7;
  v9 = sub_219BEE964();
  (*(*(v8 - 8) + 8))(v6, v8);
  return v9;
}

uint64_t sub_2199DDB38@<X0>(uint64_t *a1@<X8>)
{
  sub_2186DBB94(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2197B889C();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2199E14D0(inited + 32, sub_2188317B0);
  sub_2186DBB94(0, &qword_27CC221E0, type metadata accessor for SportsRecordTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_2199E1530();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2199DDCC4()
{
  sub_2199E1488(&unk_27CC22170, type metadata accessor for SportsRecordTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2199DDE80()
{
  v1 = v0;
  sub_2186DBB60(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsRecordTagFeedGroupEmitter();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_219BEF0B4();
  v8 = *(v22 + 64);
  swift_unknownObjectRetain();

  if ([v8 respondsToSelector_])
  {
    v9 = [v8 sportsRecordEnabled];
    swift_unknownObjectRelease();
    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_219BEF0B4();
    v10 = *(v22 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v11 = [v10 backingTag];

    v12 = [v11 asSports];
    swift_unknownObjectRelease();
    if (!v12)
    {
      goto LABEL_7;
    }

    if ([v12 sportsType] == 3)
    {
      MEMORY[0x28223BE20](3);
      *(&v21 - 2) = v1;
      *(&v21 - 1) = v12;
      sub_2199E10E0(0, &qword_280E900E0, MEMORY[0x277D33F30], MEMORY[0x277D34368]);
      sub_219BE3204();
      sub_2199DFAF4(v1, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsRecordTagFeedGroupEmitter);
      v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      sub_2199DFB5C(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for SportsRecordTagFeedGroupEmitter);
      v15 = swift_allocObject();
      *(v15 + 16) = sub_2199E115C;
      *(v15 + 24) = v14;
      swift_unknownObjectRetain();
      v16 = sub_219BE2E54();
      sub_219BE2F64();

      v17 = sub_219BE2E54();
      v18 = sub_219BE3064();
      swift_unknownObjectRelease();

      return v18;
    }
  }

  swift_unknownObjectRelease();
LABEL_7:
  v20 = sub_219BF1614();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  sub_2186DBB94(0, &qword_27CC221B8, sub_2186DBB60, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

char *sub_2199DE2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DBB60(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199DE50C(a3, a1);
  if (!v3)
  {
    sub_2199DFAF4(a1, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2186DBB60);
    v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v11 = swift_allocObject();
    sub_2199DFB5C(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, sub_2186DBB60);
    v12 = sub_219BE2E54();
    sub_2199E10E0(0, &qword_27CC22188, MEMORY[0x277D33470], sub_2186DBB60);
    v9 = sub_219BE2F74();
  }

  return v9;
}

char *sub_2199DE474(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsRecordTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2199DE2B0(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2199DE50C(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2186DBB94(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v77 - v5;
  sub_2186DBB94(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v77 - v7;
  v8 = type metadata accessor for SportsRecordTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DBB94(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v84 = &v77 - v11;
  v12 = sub_219BF2AB4();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x28223BE20](v12);
  v90 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DBB94(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v14 - 8);
  v82 = &v77 - v15;
  v89 = sub_219BF2034();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for SportsRecordTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v78);
  v99 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF3E84();
  v97 = *(v18 - 8);
  v98 = v18;
  MEMORY[0x28223BE20](v18);
  v95 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v96 = &v77 - v21;
  v81 = sub_219BF14C4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = (&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186DBB60(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BF2124();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = (&v77 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = &v77 - v34;
  sub_2199DFAF4(a2, v25, sub_2186DBB60);
  v36 = sub_219BF1614();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v25, 1, v36);
  v39 = MEMORY[0x277D84F90];
  if (v38 == 1)
  {
    sub_2199E14D0(v25, sub_2186DBB60);
  }

  else
  {
    sub_2199E0844(v32);
    (*(v37 + 8))(v25, v36);
    (*(v27 + 32))(v35, v32, v26);
    (*(v27 + 16))(v29, v35, v26);
    v40 = v79;
    sub_219BF14A4();
    v41 = sub_2191F7664(0, 1, 1, MEMORY[0x277D84F90]);
    v43 = v41[2];
    v42 = v41[3];
    if (v43 >= v42 >> 1)
    {
      v41 = sub_2191F7664(v42 > 1, v43 + 1, 1, v41);
    }

    (*(v27 + 8))(v35, v26);
    v41[2] = v43 + 1;
    (*(v80 + 32))(v41 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v43, v40, v81);
  }

  sub_218F0B984(v39);
  sub_218F0BA7C(v39);
  sub_218F0BB90(v39);

  v44 = v96;
  sub_219BF3E74();
  sub_218F0B984(v39);
  sub_218F0BA7C(v39);
  sub_218F0BB90(v39);
  v45 = v95;
  sub_219BF3E74();
  v46 = type metadata accessor for SportsRecordTagFeedGroupEmitter();
  v47 = *(v46 + 28);
  v77 = v46;
  v48 = *(v94 + v47 + 24);
  v80 = *(v94 + v47 + 32);
  v81 = v48;
  v79 = __swift_project_boxed_opaque_existential_1((v94 + v47), v48);
  sub_2197B889C();
  sub_219BEDD14();
  v78 = *(v78 + 20);
  sub_2186DBB94(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v49 = v97;
  v50 = *(v97 + 72);
  v51 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_219C09EC0;
  v53 = v52 + v51;
  v54 = *(v49 + 16);
  v55 = v44;
  v56 = v98;
  v54(v53, v55, v98);
  v54(v53 + v50, v45, v56);
  v57 = sub_219BEC004();
  (*(*(v57 - 8) + 56))(v82, 1, 1, v57);
  sub_219A95188(v39);
  sub_219A95188(v39);
  sub_219A951A0(v39);
  sub_219A951B8(v39);
  sub_219A952CC(v39);
  sub_219A952E4(v39);
  sub_219A953F8(v39);
  v58 = v86;
  sub_219BF2024();
  v59 = v83;
  sub_2199DFAF4(v94 + *(v77 + 24), v83, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  sub_2189AD5C8();
  v61 = v60;
  v62 = *(v60 - 8);
  v63 = v84;
  (*(v62 + 32))(v84, v59, v60);
  (*(v62 + 56))(v63, 0, 1, v61);
  sub_219BEF0B4();
  v64 = *(v101 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v65 = sub_219BF35D4();
  (*(*(v65 - 8) + 56))(v85, 1, 1, v65);
  LOBYTE(v100) = 10;
  sub_218B017A4(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v66 = *(v100 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v67 = sub_219BF2774();
  (*(*(v67 - 8) + 56))(v93, 1, 1, v67);
  v68 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v68 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v69 = v90;
  sub_219BF2A84();
  v70 = v99;
  v71 = v78;
  v72 = sub_219BF2194();
  (*(v91 + 8))(v69, v92);
  (*(v87 + 8))(v58, v89);
  v73 = v98;
  v74 = *(v97 + 8);
  v74(v95, v98);
  v74(v96, v73);
  v75 = sub_219BF1934();
  (*(*(v75 - 8) + 8))(&v70[v71], v75);
  return v72;
}

uint64_t sub_2199DF310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2199E10E0(0, &qword_27CC22188, MEMORY[0x277D33470], sub_2186DBB60);
  v7 = *(v6 + 48);
  v8 = sub_219BF1904();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  return sub_2199DFAF4(a2, a3 + v7, sub_2186DBB60);
}

uint64_t sub_2199DF3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  sub_218A59C84();
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DBB94(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = v36 - v8;
  v9 = type metadata accessor for SportsRecordTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEF554();
  MEMORY[0x28223BE20](v12 - 8);
  v36[2] = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v36[3] = v36 - v15;
  v16 = sub_219BF1904();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[6] = v19;
  v37 = type metadata accessor for TagFeedGroup();
  v20 = MEMORY[0x28223BE20](v37);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, v16, v20);
  v23 = type metadata accessor for SportsRecordTagFeedGroupEmitter();
  sub_2197B889C();
  v24 = sub_219BEDCB4();
  v36[4] = v25;
  v36[5] = v24;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v26 = *(v23 + 24);
  sub_2199DFAF4(a3 + v26, v11, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  sub_2189AD5C8();
  v28 = v27;
  sub_219BEE9B4();
  v29 = *(*(v28 - 8) + 8);
  v29(v11, v28);
  sub_2199DFAF4(a3 + v26, v11, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  sub_219BEE984();
  v31 = v30;
  v29(v11, v28);
  v36[1] = v31;
  sub_2199DFAF4(a3 + v26, v11, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  sub_219BEE9D4();
  v29(v11, v28);
  v32 = sub_219BEE5D4();
  (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
  sub_219BED854();
  v33 = type metadata accessor for SportsRecordTagFeedGroup();
  sub_2199DFAF4(v40, &v22[*(v33 + 20)], sub_2186DBB60);
  swift_storeEnumTagMultiPayload();
  sub_2199DFAF4(v22, v39, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2186DBB94(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v34 = sub_219BE3014();
  sub_2199E14D0(v22, type metadata accessor for TagFeedGroup);
  return v34;
}

uint64_t sub_2199DF94C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SportsRecordTagFeedGroupEmitter() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2199DF3E8(a1, a2, v6);
}

uint64_t sub_2199DF9F8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2199E10E0(0, &qword_27CC22188, MEMORY[0x277D33470], sub_2186DBB60);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_2199DFAF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199DFB5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199DFC40(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v3 - 8);
  v17[1] = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF43B4();
  v17[0] = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF4684();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsRecordTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v11 + 40)), *(a1 + *(v11 + 40) + 24));
  (*(v8 + 104))(v10, *MEMORY[0x277D344A0], v7);
  sub_219BF4C14();
  (*(v8 + 8))(v10, v7);
  swift_getObjectType();
  sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C146A0;
  *(v12 + 32) = v19;
  swift_unknownObjectRetain();
  sub_219BF4CE4();
  sub_219BF4CA4();
  v13 = v17[0];
  v14 = v18;
  (*(v17[0] + 104))(v6, *MEMORY[0x277D34400], v18);
  sub_219BF2F74();
  (*(v13 + 8))(v6, v14);
  v15 = sub_219BE31C4();

  return v15;
}

uint64_t sub_2199DFF58(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a4;
  v47 = a1;
  v6 = type metadata accessor for SportsRecordTagFeedGroupEmitter();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = v7;
  v44 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DBB94(0, &qword_27CC221C0, MEMORY[0x277D34478], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v39 - v9;
  v49 = sub_219BF4674();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[2] = v11;
  MEMORY[0x28223BE20](v12);
  v46 = v39 - v13;
  v14 = sub_219BF4254();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09EC0;
  v43 = v4;
  if (v14 >> 62)
  {
    v16 = sub_219BF7214();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D83C10];
  *(v15 + 56) = MEMORY[0x277D83B88];
  *(v15 + 64) = v17;
  *(v15 + 32) = v16;
  v18 = a3;
  v19 = [a3 identifier];
  v20 = sub_219BF5414();
  v22 = v21;

  *(v15 + 96) = MEMORY[0x277D837D0];
  *(v15 + 104) = sub_2186FC3BC();
  *(v15 + 72) = v20;
  *(v15 + 80) = v22;
  sub_219BF6214();
  sub_219BE5314();

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_13:

    sub_2199E12CC();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
    return v14;
  }

  result = sub_219BF7214();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_7:
  v24 = v18;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x21CECE0F0](0, v14);
    v25 = v10;
LABEL_10:

    v27 = [v24 identifier];
    sub_219BF5414();

    sub_219BF3814();

    v28 = v48;
    v14 = 1;
    v29 = v49;
    if ((*(v48 + 48))(v25, 1, v49) == 1)
    {
      sub_2199E125C(v25, &qword_27CC221C0, MEMORY[0x277D34478]);
      sub_2199E12CC();
      swift_allocError();
      *v30 = 1;
      swift_willThrow();
    }

    else
    {
      v47 = *(v28 + 32);
      v32 = v46;
      v47(v46, v25, v29);
      sub_2186DBB94(0, &unk_27CC221D0, MEMORY[0x277D333E0], MEMORY[0x277D6CF30]);
      v39[1] = v33;
      sub_2199DFAF4(v42, v44, type metadata accessor for SportsRecordTagFeedGroupEmitter);
      (*(v28 + 16))(v45, v32, v29);
      v34 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v35 = (v41 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = v24;
      v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
      v37 = (*(v28 + 80) + v36 + 8) & ~*(v28 + 80);
      v38 = swift_allocObject();
      sub_2199DFB5C(v44, v38 + v34, type metadata accessor for SportsRecordTagFeedGroupEmitter);
      *(v38 + v35) = v42;
      *(v38 + v36) = v26;
      v47((v38 + v37), v45, v29);

      swift_unknownObjectRetain();
      sub_219BE2F54();
      v14 = sub_219BE2F04();

      (*(v28 + 8))(v46, v29);
    }

    return v14;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = v10;
    v26 = *(v14 + 32);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2199E05C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2199E05EC, 0, 0);
}

uint64_t sub_2199E05EC()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for SportsRecordTagFeedGroupEmitter() + 36));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_218FC7518;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v9 = v0[2];

  return MEMORY[0x282193390](v9, v8, v6, v7, v3, v4);
}

uint64_t sub_2199E06C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_219BE5314();

  v3 = sub_219BF1614();
  return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
}

uint64_t sub_2199E0844@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BF1AB4();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2186DBB94(0, &unk_27CC22190, MEMORY[0x277D336C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v26 - v4;
  sub_219BF15D4();
  v6 = sub_219BF1F94();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2199E125C(v5, &unk_27CC22190, MEMORY[0x277D336C8]);
  }

  else
  {
    v8 = sub_219BF1F84();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    if (v10)
    {
      if (sub_2199E0CA0())
      {
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass_];
        sub_219BDB5E4();

        sub_2186F20D4();
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_219C09EC0;
        v14 = sub_219BF15C4();
        v16 = v15;
        v17 = MEMORY[0x277D837D0];
        *(v13 + 56) = MEMORY[0x277D837D0];
        v18 = sub_2186FC3BC();
        *(v13 + 32) = v14;
        *(v13 + 40) = v16;
        *(v13 + 96) = v17;
        *(v13 + 104) = v18;
        *(v13 + 64) = v18;
        *(v13 + 72) = v8;
        *(v13 + 80) = v10;
        v19 = sub_219BF5454();
        v21 = v20;

        sub_2199E1064(0, &qword_27CC221A0, MEMORY[0x277D339E8]);
        v22 = swift_allocBox();
        v26[2] = 0;
        v26[3] = 0xE000000000000000;
        sub_2199E0FF0();
        sub_2199E1064(0, &qword_27CC221B0, MEMORY[0x277D31B80]);
        *(swift_allocObject() + 16) = xmmword_219C09BA0;
        sub_219BF1A84();
        v26[0] = v19;
        v26[1] = v21;
        sub_219BED494();
        sub_219BF2704();
        *a1 = v22;
        v23 = *MEMORY[0x277D33750];
        v24 = sub_219BF2124();
        return (*(*(v24 - 8) + 104))(a1, v23, v24);
      }
    }
  }

  return sub_219BF20F4();
}

uint64_t sub_2199E0CA0()
{
  result = sub_219BF15F4();
  v2 = HIBYTE(v1) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 1;
  }

  if ((v1 & 0x1000000000000000) == 0)
  {
    if ((v1 & 0x2000000000000000) != 0)
    {
      v37[0] = result;
      v37[1] = v1 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v37 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_77:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v37;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v37 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_219BF73B4();
        v3 = v36;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_76;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
LABEL_62:
        v38 = v3;
        v24 = v3;

        if (v24)
        {
          return 1;
        }

        goto LABEL_63;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v38 = 0;
  v6 = sub_218C8BAF0(result, v1, 10);
  v35 = v34;

  if (v35)
  {
    return 1;
  }

LABEL_63:
  v25 = sub_219BF1604();
  v27 = sub_218DF5B60(v25, v26);
  if (v28)
  {
    return 1;
  }

  v29 = v27;
  v30 = sub_219BF15E4();
  if (!v31)
  {
    v30 = 48;
    v31 = 0xE100000000000000;
  }

  v32 = (v6 | v29 | sub_218DF5B60(v30, v31)) != 0;
  return (v33 & 1) != 0 || v32;
}

void sub_2199E0FF0()
{
  if (!qword_27CC221A8)
  {
    sub_2199E1064(255, &qword_27CC221B0, MEMORY[0x277D31B80]);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC221A8);
    }
  }
}

void sub_2199E1064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D34728]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2199E10E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2199E11DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2199E10E0(0, &qword_280E900E0, MEMORY[0x277D33F30], MEMORY[0x277D34368]);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_2199E125C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186DBB94(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2199E12CC()
{
  result = qword_27CC221C8;
  if (!qword_27CC221C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC221C8);
  }

  return result;
}

uint64_t sub_2199E1320(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SportsRecordTagFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_219BF4674() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2187608D4;

  return sub_2199E05C4(a1, v1 + v6, v11, v12, v1 + v10);
}

uint64_t sub_2199E1488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2199E14D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2199E1530()
{
  result = qword_27CC221E8;
  if (!qword_27CC221E8)
  {
    sub_2186DBB94(255, &qword_27CC221E0, type metadata accessor for SportsRecordTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC221E8);
  }

  return result;
}

unint64_t sub_2199E15CC()
{
  result = qword_27CC221F0;
  if (!qword_27CC221F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC221F0);
  }

  return result;
}

uint64_t sub_2199E1620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[3] = a2;
  v3 = sub_219BF0444();
  MEMORY[0x28223BE20](v3);
  sub_2199E195C(0, &unk_280E90F30, MEMORY[0x277D32CD8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_219BF19D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218972E2C();
  v12 = v11;
  v13 = sub_219BF07B4();
  v17[1] = v14;
  v17[2] = v13;
  sub_219BF07D4();
  (*(v8 + 104))(v10, *MEMORY[0x277D334C8], v7);
  v15 = sub_219BF0494();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v17[4] = MEMORY[0x277D84F90];
  sub_2199E1904();
  sub_2199E195C(0, &qword_280E8EF18, MEMORY[0x277D32CB0], MEMORY[0x277D83940]);
  sub_218CD482C();
  sub_219BF7164();
  sub_219BF03D4();
  return (*(*(v12 - 8) + 8))(a1, v12);
}

unint64_t sub_2199E1904()
{
  result = qword_280E90F40;
  if (!qword_280E90F40)
  {
    sub_219BF0444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90F40);
  }

  return result;
}

void sub_2199E195C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2199E19C0()
{
  v1 = [*(v0 + 16) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_17;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -42;
    return (v6 ^ v3) & 1;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 42;
  return (v6 ^ v3) & 1;
}

uint64_t sub_2199E1B70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v4 = sub_219BF2634();
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF2624();
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0614();
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF2CB4();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v2 + 160) useOfflineMode] && (v55 = v6, __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56)), v16 = v55, (sub_219BEED44() & 1) != 0))
  {
    (*(v12 + 16))(v15, v59, v11);
    v17 = (*(v12 + 88))(v15, v11);
    if (v17 == *MEMORY[0x277D33B88])
    {
      (*(v12 + 96))(v15, v11);
      v19 = *(v15 + 1);
      v18 = *(v15 + 2);
      if (v18 <= 0xD && ((1 << v18) & 0x360F) != 0)
      {
        v20 = *v15;
LABEL_7:
        sub_2199E2484(v20, v19, a2);
      }

      goto LABEL_18;
    }

    if (v17 == *MEMORY[0x277D33BC0])
    {
      (*(v12 + 96))(v15, v11);
      v24 = *v15;
      swift_getObjectType();
      if (![v24 hasVideo] || (sub_219BF6854() & 1) == 0)
      {
        v26 = [v24 identifier];
        v27 = sub_219BF5414();
        v29 = v28;

        sub_2199E2484(v27, v29, a2);

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
LABEL_18:
      (*(v58 + 104))(a2, *MEMORY[0x277D33988], v16);
      v25 = MEMORY[0x277D33980];
      return (*(v60 + 104))(a2, *v25, v4);
    }

    if (v17 == *MEMORY[0x277D33B98] || v17 == *MEMORY[0x277D33BA8] || v17 == *MEMORY[0x277D33B78])
    {
      (*(v12 + 96))(v15, v11);
      v30 = [*v15 identifier];
      v31 = sub_219BF5414();
      v33 = v32;

      sub_2199E2484(v31, v33, a2);
      swift_unknownObjectRelease();
    }

    if (v17 == *MEMORY[0x277D33BA0])
    {
LABEL_26:
      (*(v12 + 96))(v15, v11);
      v34 = *v15;
      v35 = [*v15 identifier];
      v36 = sub_219BF5414();
      v38 = v37;

      sub_2199E2484(v36, v38, a2);
    }

    if (v17 == *MEMORY[0x277D33BB8])
    {
      (*(v12 + 96))(v15, v11);
      v39 = v56;
      (*(v56 + 32))(v10, v15, v8);
      sub_2199E28CC(v10, a2);
      return (*(v39 + 8))(v10, v8);
    }

    else
    {
      if (v17 == *MEMORY[0x277D33B80])
      {
        (*(v12 + 96))(v15, v11);
        v20 = *v15;
        v19 = *(v15 + 1);
        goto LABEL_7;
      }

      if (v17 == *MEMORY[0x277D33BB0])
      {
        goto LABEL_26;
      }

      if (v17 == *MEMORY[0x277D33B90])
      {
        (*(v12 + 96))(v15, v11);
        v59 = *v15;
        v53 = v59[2];
        if (!v53)
        {
LABEL_38:

          v25 = MEMORY[0x277D33998];
          return (*(v60 + 104))(a2, *v25, v4);
        }

        v40 = 0;
        result = v60;
        v41 = (v60 + 88);
        LODWORD(v56) = *MEMORY[0x277D33980];
        v42 = (v60 + 8);
        v43 = v59 + 5;
        while (v40 < v59[2])
        {
          v44 = *(v43 - 1);
          v45 = *v43;

          v46 = v57;
          sub_2199E2484(v44, v45, v57);
          v47 = v46;

          v48 = (*v41)(v46, v4);
          if (v48 == v56)
          {

            (*(v60 + 96))(v46, v4);
            v49 = *(v58 + 32);
            v50 = v54;
            v51 = v47;
            v52 = v55;
            v49(v54, v51, v55);
            v49(a2, v50, v52);
            return (*(v60 + 104))(a2, v56, v4);
          }

          ++v40;
          result = (*v42)(v46, v4);
          v43 += 2;
          if (v53 == v40)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
      }

      else
      {
        (*(v58 + 104))(a2, *MEMORY[0x277D33988], v16);
        (*(v60 + 104))(a2, *MEMORY[0x277D33980], v4);
        return (*(v12 + 8))(v15, v11);
      }
    }
  }

  else
  {
    v21 = *MEMORY[0x277D33998];
    v22 = *(v60 + 104);

    return v22(a2, v21, v4);
  }

  return result;
}

uint64_t sub_2199E2484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v43 - v13;
  if (![*(v3 + 160) useOfflineMode])
  {
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    __swift_project_boxed_opaque_existential_1((v3 + 72), v22);
    if ((*(v23 + 48))(a1, a2, v22, v23))
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if ((sub_2199E19C0() & 1) == 0)
  {
    sub_2199E3750(a1, a2, &v43);
    if (v44 == 11)
    {
      v25 = MEMORY[0x277D33988];
LABEL_15:
      v34 = *v25;
      v19 = sub_219BF2624();
      v20 = *(*(v19 - 8) + 104);
      v35 = a3;
      v36 = v34;
LABEL_16:
      v20(v35, v36, v19);
      v24 = MEMORY[0x277D33980];
      goto LABEL_17;
    }

    sub_218ED0F50(v43, v44);
LABEL_14:
    v25 = MEMORY[0x277D33990];
    goto LABEL_15;
  }

  sub_2199E3750(a1, a2, &v43);
  v15 = v44;
  if (v44 == 11)
  {
    v16 = *(v3 + 96);
    v17 = *(v3 + 104);
    __swift_project_boxed_opaque_existential_1((v3 + 72), v16);
    LOBYTE(v16) = (*(v17 + 48))(a1, a2, v16, v17);
    sub_219BF5414();
    v18 = sub_219BF5624();

    if ((v16 & 1) == 0)
    {
      v19 = sub_219BF2624();
      v20 = *(*(v19 - 8) + 104);
      if (v18)
      {
        v21 = MEMORY[0x277D33988];
      }

      else
      {
        v21 = MEMORY[0x277D33990];
      }

      v36 = *v21;
      v35 = a3;
      goto LABEL_16;
    }

LABEL_8:
    v24 = MEMORY[0x277D33998];
LABEL_17:
    v37 = *v24;
    v38 = sub_219BF2634();
    v39 = *(*(v38 - 8) + 104);

    return v39(a3, v37, v38);
  }

  v26 = v43;
  v27 = *(v3 + 136);
  v28 = *(v3 + 144);
  __swift_project_boxed_opaque_existential_1((v3 + 112), v27);
  v43 = v26;
  v44 = v15;
  (*(v28 + 72))(&v43, v27, v28);
  sub_219BDBBB4();
  sub_2196EAB94();
  v29 = sub_219BF53A4();
  v30 = *(v8 + 8);
  v30(v10, v7);
  v30(v14, v7);
  if (v29)
  {
    v31 = *MEMORY[0x277D33990];
    v32 = sub_219BF2624();
    (*(*(v32 - 8) + 104))(a3, v31, v32);
    v33 = MEMORY[0x277D33980];
  }

  else
  {
    v33 = MEMORY[0x277D33998];
  }

  v41 = *v33;
  v42 = sub_219BF2634();
  (*(*(v42 - 8) + 104))(a3, v41, v42);
  return sub_218ED0F50(v26, v15);
}

uint64_t sub_2199E28CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = sub_219BDB954();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  v97 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199E4748();
  MEMORY[0x28223BE20](v5 - 8);
  v105 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1DF4();
  v103 = *(v7 - 8);
  v104 = v7;
  MEMORY[0x28223BE20](v7);
  v102 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BF1DA4();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v100 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v101 = &v88 - v11;
  v109 = sub_219BEDAE4();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0B74();
  v95 = *(v13 - 8);
  v96 = v13;
  MEMORY[0x28223BE20](v13);
  v94 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BEDB94();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF07A4();
  v111 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BF0AC4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF0F34();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF0614();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v26 + 16);
  v112 = a1;
  v30(v29, a1, v25, v27);
  v31 = (*(v26 + 88))(v29, v25);
  if (v31 == *MEMORY[0x277D32DB8] || v31 == *MEMORY[0x277D32D10] || v31 == *MEMORY[0x277D32E00])
  {
    goto LABEL_9;
  }

  if (v31 != *MEMORY[0x277D32E10])
  {
    if (v31 != *MEMORY[0x277D32E18])
    {
      if (v31 == *MEMORY[0x277D32DD8])
      {
        (*(v26 + 96))(v29, v25);
        v45 = v111;
        (*(v111 + 32))(v18, v29, v16);
        v46 = sub_219BF06B4();
        v47 = [v46 identifier];

        v48 = sub_219BF5414();
        v50 = v49;

        sub_2199E2484(v48, v50, v113);

        return (*(v45 + 8))(v18, v16);
      }

      if (v31 != *MEMORY[0x277D32CF8] && v31 != *MEMORY[0x277D32DC0])
      {
        if (v31 == *MEMORY[0x277D32CF0])
        {
          (*(v26 + 96))(v29, v25);
          v52 = v106;
          v51 = v107;
          v53 = v109;
          (*(v107 + 32))(v106, v29, v109);
          v54 = v102;
          sub_219BEDA84();
          v55 = v105;
          sub_219BF1DE4();
          (*(v103 + 8))(v54, v104);
          v56 = v108;
          v57 = v110;
          if ((*(v108 + 48))(v55, 1, v110) == 1)
          {
            sub_2199E47A0(v55);
            v58 = sub_219BF04D4();
            sub_2199E2484(v58, v59, v113);
          }

          else
          {
            v68 = v101;
            (*(v56 + 32))(v101, v55, v57);
            v69 = v100;
            (*(v56 + 16))(v100, v68, v57);
            if ((*(v56 + 88))(v69, v57) != *MEMORY[0x277D33608])
            {
              v74 = sub_219BF04D4();
              sub_2199E2484(v74, v75, v113);

              v76 = *(v56 + 8);
              v76(v68, v57);
              (*(v51 + 8))(v52, v53);
              return (v76)(v69, v57);
            }

            (*(v56 + 96))(v69, v57);
            v70 = v69;
            v72 = v97;
            v71 = v98;
            v73 = v99;
            (*(v98 + 32))(v97, v70, v99);
            sub_2199E3C18(v72, v113);
            (*(v71 + 8))(v72, v73);
            (*(v56 + 8))(v68, v57);
          }

          return (*(v51 + 8))(v52, v53);
        }

        if (v31 != *MEMORY[0x277D32E08] && v31 != *MEMORY[0x277D32DB0] && v31 != *MEMORY[0x277D32DE0])
        {
          if (v31 == *MEMORY[0x277D32DF0])
          {
            (*(v26 + 96))(v29, v25);
            v61 = v94;
            v60 = v95;
            v62 = v96;
            (*(v95 + 32))(v94, v29, v96);
            v63 = sub_219BF0B44();
            v64 = [v63 identifier];

LABEL_25:
            v65 = sub_219BF5414();
            v67 = v66;

            sub_2199E2484(v65, v67, v113);

            return (*(v60 + 8))(v61, v62);
          }

          if (v31 != *MEMORY[0x277D32D38])
          {
            if (v31 == *MEMORY[0x277D32DE8])
            {
              (*(v26 + 96))(v29, v25);
              v77 = v92;
              v78 = v93;
              (*(v92 + 32))(v20, v29, v93);
              v79 = [sub_219BF0AA4() identifier];
              swift_unknownObjectRelease();
              v80 = sub_219BF5414();
              v82 = v81;

              sub_2199E2484(v80, v82, v113);

              return (*(v77 + 8))(v20, v78);
            }

            if (v31 == *MEMORY[0x277D32D18])
            {
              (*(v26 + 96))(v29, v25);
              v60 = v90;
              v61 = v89;
              v62 = v91;
              (*(v90 + 32))(v89, v29, v91);
              v64 = [sub_219BEDB74() identifier];
              swift_unknownObjectRelease();
              goto LABEL_25;
            }

            if (v31 != *MEMORY[0x277D32DA8])
            {
              if (v31 != *MEMORY[0x277D32DD0])
              {
                v83 = *MEMORY[0x277D33988];
                v84 = sub_219BF2624();
                v85 = v113;
                (*(*(v84 - 8) + 104))(v113, v83, v84);
                v86 = *MEMORY[0x277D33980];
                v87 = sub_219BF2634();
                (*(*(v87 - 8) + 104))(v85, v86, v87);
                return (*(v26 + 8))(v29, v25);
              }

LABEL_10:
              v39 = sub_219BF04D4();
              sub_2199E2484(v39, v40, v113);
            }
          }
        }
      }
    }

LABEL_9:
    (*(v26 + 8))(v29, v25);
    goto LABEL_10;
  }

  (*(v26 + 96))(v29, v25);
  (*(v22 + 32))(v24, v29, v21);
  v32 = sub_219BF0F14();
  swift_getObjectType();
  if ([v32 hasVideo] && (sub_219BF6854() & 1) != 0)
  {
    swift_unknownObjectRelease();
    (*(v22 + 8))(v24, v21);
    v33 = *MEMORY[0x277D33988];
    v34 = sub_219BF2624();
    v35 = v113;
    (*(*(v34 - 8) + 104))(v113, v33, v34);
    v36 = *MEMORY[0x277D33980];
    v37 = sub_219BF2634();
    return (*(*(v37 - 8) + 104))(v35, v36, v37);
  }

  else
  {
    v41 = [v32 identifier];
    v42 = sub_219BF5414();
    v44 = v43;

    sub_2199E2484(v42, v44, v113);
    swift_unknownObjectRelease();

    return (*(v22 + 8))(v24, v21);
  }
}

void sub_2199E3750(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1 == 0x7548656C7A7A7570 && a2 == 0xE900000000000062;
  if (v5 || (sub_219BF78F4() & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_219BF5414();
  v9 = sub_219BF5624();

  if ((v9 & 1) == 0)
  {
    goto LABEL_35;
  }

  v10 = *(v3 + 24);
  v11 = [objc_msgSend(v10 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v12 = [v11 puzzleHubTagID];

  if (v12)
  {
    v13 = sub_219BF5414();
    v15 = v14;

    if (v13 == a1 && v15 == a2)
    {
    }

    else
    {
      v17 = sub_219BF78F4();

      if ((v17 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_6:
    v8 = xmmword_219C43500;
    goto LABEL_7;
  }

LABEL_16:
  v18 = [objc_msgSend(v10 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (v18)
  {
    v19 = sub_219BF5414();
    v21 = v20;

    if (v19 == a1 && v21 == a2)
    {

LABEL_22:
      v8 = xmmword_219C43510;
      goto LABEL_7;
    }

    v22 = sub_219BF78F4();

    if (v22)
    {
      goto LABEL_22;
    }
  }

  v23 = [objc_msgSend(v10 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (v23)
  {
    v24 = sub_219BF5414();
    v26 = v25;

    if (v24 == a1 && v26 == a2)
    {

LABEL_28:
      v8 = xmmword_219C43550;
      goto LABEL_7;
    }

    v27 = sub_219BF78F4();

    if (v27)
    {
      goto LABEL_28;
    }
  }

  v28 = [objc_msgSend(v10 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (v28)
  {
    v29 = sub_219BF5414();
    v31 = v30;

    if (v29 == a1 && v31 == a2)
    {

LABEL_34:
      v8 = xmmword_219C43560;
      goto LABEL_7;
    }

    v32 = sub_219BF78F4();

    if (v32)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  sub_219BF5414();
  v33 = sub_219BF5624();

  if (v33)
  {
    v34 = [objc_msgSend(*(v3 + 24) possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    v35 = [v34 puzzleTypes];

    v36 = sub_219BF5924();
    v42[0] = a1;
    v42[1] = a2;
    MEMORY[0x28223BE20](v37);
    v41[2] = v42;
    LOBYTE(v35) = sub_2186D128C(sub_2186D1338, v41, v36);

    if (v35)
    {
      v38 = *(v3 + 152);
      v39 = sub_219BF53D4();
      v40 = [v38 cachedPuzzleTypeForID_];

      if (v40)
      {
        swift_getObjectType();
        sub_2190C093C(a3);
        swift_unknownObjectRelease();
        return;
      }
    }
  }

  v8 = xmmword_219CAF2B0;
LABEL_7:
  *a3 = v8;
}

uint64_t sub_2199E3C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = sub_219BE22F4();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDB954();
  v15 = MEMORY[0x28223BE20](v14);
  (*(v17 + 16))(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  sub_219BE2624();
  swift_allocObject();
  sub_219BE2604();
  sub_2189D2C8C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v18 = byte_282A21C98;
  v19 = swift_allocObject();
  v41 = xmmword_219C09BA0;
  *(v19 + 16) = xmmword_219C09BA0;
  v39 = v5;
  v40 = a2;
  if (v18)
  {
    if (v18 == 1)
    {
      v20 = 0x655264657661732FLL;
      v21 = 0xED00007365706963;
    }

    else
    {
      v21 = 0xE800000000000000;
      v20 = 0x736570696365722FLL;
    }
  }

  else
  {
    v21 = 0xE500000000000000;
    v20 = 0x646F6F662FLL;
  }

  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  sub_219BE2684();

  sub_219BE2614();
  (*(v36 + 8))(v13, v37);

  v22 = qword_219CBD188[v18];
  v23 = v38[17];
  v24 = v38[18];
  __swift_project_boxed_opaque_existential_1(v38 + 14, v23);
  v42[0] = 0;
  v42[1] = v22;
  (*(v24 + 72))(v42, v23, v24);
  sub_219BDBBB4();
  sub_2196EAB94();
  v25 = sub_219BF53A4();
  v26 = *(v39 + 8);
  v26(v7, v4);
  v26(v10, v4);
  if (v25)
  {
    v27 = *MEMORY[0x277D33990];
    v28 = sub_219BF2624();
    v29 = v40;
    (*(*(v28 - 8) + 104))(v40, v27, v28);
    v30 = *MEMORY[0x277D33980];
    v31 = sub_219BF2634();
    (*(*(v31 - 8) + 104))(v29, v30, v31);
  }

  else
  {
    v32 = *MEMORY[0x277D33998];
    v33 = sub_219BF2634();
    (*(*(v33 - 8) + 104))(v40, v32, v33);
  }

  return sub_218720434(0, v22);
}

uint64_t sub_2199E430C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2199E4398(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF2634();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199E2484(a1, a2, v7);
  LOBYTE(a2) = sub_219BF2614();
  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

uint64_t sub_2199E4484()
{
  v1 = *v0;
  if ([*(v1 + 160) useOfflineMode])
  {
    __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
    v2 = sub_219BEED44() ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t StubContentAvailabilityValidator.unavailableOffline.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t StubContentAvailabilityValidator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

uint64_t StubContentAvailabilityValidator.init()()
{
  result = v0;
  *(v0 + 16) = 1;
  return result;
}

uint64_t StubContentAvailabilityValidator.validate(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D33998];
  v3 = sub_219BF2634();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2199E4684@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D33998];
  v3 = sub_219BF2634();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_2199E4748()
{
  if (!qword_280E905C0)
  {
    sub_219BF1DA4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E905C0);
    }
  }
}

uint64_t sub_2199E47A0(uint64_t a1)
{
  sub_2199E4748();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2199E48B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(v8 + 40);
  v47 = v9;
  v48 = v10;
  v11 = v10(v7, v8);

  v12 = sub_2199E5530(v11, v3, sub_2199E4D10);

  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 56))(v13, v14);

  v16 = sub_2199E52E4(v15);

  v51 = v12;
  sub_2191EF6DC(v16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 64))(v17, v18);

  v20 = sub_2199E5530(v19, v3, sub_2199E4DE0);

  sub_2191EF6DC(v20);
  v21 = v51;
  v22 = v48(v7, v8);

  v23 = sub_2199E5530(v22, v3, sub_2199E50B0);

  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = (*(v25 + 56))(v24, v25);

  v27 = sub_2199E5874(v26);

  v50 = v23;
  sub_2191EF6DC(v27);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = (*(v29 + 64))(v28, v29);

  v31 = sub_2199E5874(v30);

  sub_2191EF6DC(v31);
  v32 = v50;
  v49 = v21;

  sub_2191EF6DC(v33);
  v34 = v49;
  if (!(v49 >> 62))
  {
    v35 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_3;
    }

LABEL_11:

    v41 = MEMORY[0x277D84F90];
LABEL_12:
    v42 = v45;
    OfflineFeedManifest.init(_:)(v41, v45);
    v43 = v42;
    v44 = v46;
    sub_2187538EC(v43, v46);
    result = type metadata accessor for OfflineFeedGroupProcessorResult();
    *(v44 + *(result + 20)) = v21;
    *(v44 + *(result + 24)) = v32;
    return result;
  }

  v35 = sub_219BF7214();
  if (!v35)
  {
    goto LABEL_11;
  }

LABEL_3:
  v49 = MEMORY[0x277D84F90];
  result = sub_219BF73F4();
  if ((v35 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x21CECE0F0](v37, v34);
      }

      else
      {
        v38 = *(v34 + 8 * v37 + 32);
      }

      v39 = v38;
      ++v37;
      v40 = [v38 contentManifest];

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v35 != v37);

    v41 = v49;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2199E4D10(uint64_t a1)
{
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = [v1 contentWithContext_];
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = [v3 anfContent];

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = [v5 anfDocumentAssetHandles];
  sub_21897A4D4();
  v7 = sub_219BF5924();

  return v7;
}

void sub_2199E4DE0(void *a1)
{
  v3 = [v1 dataResourceID];
  if (v3)
  {
    v4 = v3;
    sub_219BF5414();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_msgSend(v1 puzzleType)];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_219BF5414();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  sub_219BF73F4();

  v10 = [a1 flintResourceManager];
  if (v6)
  {
    v11 = sub_219BF53D4();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v10 cachedResourceWithIdentifier_];

  if (v12 && ((v13 = [v12 assetHandle], , v12, sub_219BF73D4(), sub_219BF7414(), sub_219BF7424(), sub_219BF73E4(), , v14 = objc_msgSend(a1, sel_flintResourceManager), !v9) ? (v15 = 0) : (v15 = sub_219BF53D4()), v16 = objc_msgSend(v14, sel_cachedResourceWithIdentifier_, v15), v14, v15, v16))
  {
    v17 = [v16 assetHandle];

    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
    sub_2186DEF40(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    swift_arrayDestroy();
  }

  else
  {
    __break(1u);
  }
}

void sub_2199E50B0(void *a1)
{
  if ([v1 respondsToSelector_])
  {
    v3 = [v1 contentWithContext_];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 anfContent];

      if (v5)
      {
        v6 = [v5 fontResourceIDs];
        v7 = sub_219BF5924();

        v8 = *(v7 + 16);
        if (v8)
        {
          v15 = v5;
          sub_219BF73F4();
          v9 = 0;
          v10 = v7 + 40;
          while (v9 < *(v7 + 16))
          {

            v11 = [a1 flintResourceManager];
            v12 = sub_219BF53D4();
            v13 = [v11 cachedResourceWithIdentifier_];

            if (!v13)
            {
              goto LABEL_13;
            }

            ++v9;
            v14 = [v13 assetHandle];

            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            v10 += 16;
            if (v8 == v9)
            {

              return;
            }
          }

          __break(1u);
LABEL_13:
          __break(1u);
        }

        else
        {
        }
      }
    }
  }
}

unint64_t sub_2199E52E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CECE0F0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C146A0;
      *(inited + 32) = [v6 metadataJSONAssetHandle];

      v9 = v4 >> 62;
      if (v4 >> 62)
      {
        v13 = sub_219BF7214();
        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_23;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v9)
        {
          v12 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

LABEL_15:
        sub_219BF7214();
        goto LABEL_16;
      }

      if (v9)
      {
        goto LABEL_15;
      }

LABEL_16:
      v4 = sub_219BF7364();
      v12 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      if (*(v12 + 16) >= *(v12 + 24) >> 1)
      {
        goto LABEL_26;
      }

      sub_21897A4D4();
      swift_arrayInitWithCopy();

      ++*(v12 + 16);
      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2199E5530(unint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v5 = 0;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    v34 = v3 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v30 = i;
    v31 = v3;
    while (1)
    {
      if (v34)
      {
        MEMORY[0x21CECE0F0](v5, v3);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        swift_unknownObjectRetain();
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_41;
        }
      }

      ObjectType = swift_getObjectType();
      v9 = a3(*(a2 + 16), ObjectType);
      swift_unknownObjectRelease();
      v10 = v9 >> 62;
      v11 = v9 >> 62 ? sub_219BF7214() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_40;
      }

LABEL_13:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_19;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = v6;
        goto LABEL_21;
      }

LABEL_20:
      v39 = sub_219BF7364();
      v15 = v39 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v10)
      {
        v19 = v15;
        v20 = sub_219BF7214();
        v15 = v19;
        v18 = v20;
        if (v20)
        {
LABEL_25:
          if (((v17 >> 1) - v16) < v11)
          {
            goto LABEL_44;
          }

          v37 = v5;
          v21 = v15 + 8 * v16 + 32;
          v32 = v15;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_46;
            }

            sub_2186EBC14();
            sub_21906D500();
            for (j = 0; j != v18; ++j)
            {
              v23 = sub_218A353D0(v38, j, v9);
              v25 = *v24;
              (v23)(v38, 0);
              *(v21 + 8 * j) = v25;
            }
          }

          else
          {
            sub_21897A4D4();
            swift_arrayInitWithCopy();
          }

          v5 = v37;
          i = v30;
          v3 = v31;
          v6 = v39;
          if (v11 >= 1)
          {
            v26 = *(v32 + 16);
            v7 = __OFADD__(v26, v11);
            v27 = v26 + v11;
            if (v7)
            {
              goto LABEL_45;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_25;
        }
      }

      v6 = v39;
      if (v11 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v5 == i)
      {
        return v6;
      }
    }

    v28 = sub_219BF7214();
    v14 = v28 + v11;
    if (!__OFADD__(v28, v11))
    {
      goto LABEL_13;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2199E5874(uint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_56;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = 0;
  v23 = isUniquelyReferenced_nonNull_bridgeObject;
  v25 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
  v26 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
  v27 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x277D84F90] >> 62;
  v5 = MEMORY[0x277D84F90];
  v24 = v1;
  while (v26)
  {
    MEMORY[0x21CECE0F0](v3, v23);
    result = swift_unknownObjectRelease();
    v18 = __OFADD__(v3++, 1);
    if (v18)
    {
      __break(1u);
      return result;
    }

    if (v4)
    {
      goto LABEL_41;
    }

LABEL_11:
    v6 = 0;
    v7 = 0;
    if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
    {
      goto LABEL_43;
    }

LABEL_13:
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_45;
    }

LABEL_14:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v10 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        if (!v6)
        {
          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    else if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
    {
LABEL_23:
      sub_219BF7214();
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_219BF7364();
    v5 = isUniquelyReferenced_nonNull_bridgeObject;
    v10 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_25:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    isUniquelyReferenced_nonNull_bridgeObject = sub_219BF7214();
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
LABEL_5:
      if (v7 > 0)
      {
        goto LABEL_52;
      }

      goto LABEL_6;
    }

    if (((v12 >> 1) - v11) < v7)
    {
      goto LABEL_53;
    }

    v13 = isUniquelyReferenced_nonNull_bridgeObject;
    if (isUniquelyReferenced_nonNull_bridgeObject < 1)
    {
      goto LABEL_54;
    }

    v14 = 0;
    v15 = (v10 + 8 * v11 + 32);
    if (!v4)
    {
LABEL_29:
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_49:
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
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v22 = isUniquelyReferenced_nonNull_bridgeObject;
        v1 = sub_219BF7214();
        isUniquelyReferenced_nonNull_bridgeObject = v22;
        goto LABEL_3;
      }

      if (v14 >= *(v27 + 16))
      {
        goto LABEL_49;
      }

      v16 = *(v2 + 8 * v14++ + 32);
      *v15 = v16;
      isUniquelyReferenced_nonNull_bridgeObject = v16;
      if (v14 == v13)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    while (1)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x21CECE0F0](v14++, v2);
      *v15 = isUniquelyReferenced_nonNull_bridgeObject;
      if (v14 == v13)
      {
        break;
      }

LABEL_34:
      ++v15;
      if (!v4)
      {
        goto LABEL_29;
      }
    }

LABEL_36:
    if (v7 >= 1)
    {
      v17 = *(v10 + 16);
      v18 = __OFADD__(v17, v7);
      v19 = v17 + v7;
      if (v18)
      {
        goto LABEL_55;
      }

      *(v10 + 16) = v19;
    }

LABEL_6:
    if (v3 == v24)
    {
      return v5;
    }
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  if (v3 >= *(v25 + 16))
  {
    goto LABEL_51;
  }

  ++v3;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_41:
  v7 = sub_219BF7214();
  v6 = 1;
  if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_43:
  v21 = sub_219BF7214();
  v9 = v21 + v7;
  if (!__OFADD__(v21, v7))
  {
    goto LABEL_14;
  }

LABEL_45:
  __break(1u);
  return v2;
}

uint64_t sub_2199E5B28()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI215ChannelCoinView_secondaryNameLabel) text];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = sub_219BF5414();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

LABEL_8:
    v13 = [*(v0 + OBJC_IVAR____TtC7NewsUI215ChannelCoinView_nameLabel) text];
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    v15 = sub_219BF5414();

    return v15;
  }

  sub_218DBAF00();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09EC0;
  v8 = [*(v0 + OBJC_IVAR____TtC7NewsUI215ChannelCoinView_nameLabel) text];
  if (v8)
  {
    v9 = v8;
    v10 = sub_219BF5414();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  *(v7 + 48) = v3;
  *(v7 + 56) = v5;
  v15 = sub_219BE5F34();

  return v15;
}

char *sub_2199E5C80(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_iconImageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_nameLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_secondaryNameLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_accessoryButton;
  *&v4[v13] = sub_218EC4E8C(3);
  v14 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_coinButton;
  type metadata accessor for CoinButton();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_token;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_iconImageView;
  v18 = *&v16[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_iconImageView];
  v19 = v16;
  [v18 setAccessibilityIgnoresInvertColors_];
  [*&v16[v17] setUserInteractionEnabled_];
  v20 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_nameLabel;
  [v19 addSubview_];
  [*&v19[v20] setTextAlignment_];
  [*&v19[v20] setLineBreakMode_];
  [*&v19[v20] setNumberOfLines_];
  v21 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_secondaryNameLabel;
  [v19 addSubview_];
  [*&v19[v21] setNumberOfLines_];
  [*&v19[v21] setTextAlignment_];
  v22 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_coinButton;
  [*&v19[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_coinButton] addSubview_];
  v23 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_accessoryButton;
  [*&v19[v22] addSubview_];
  [*&v19[v23] setUserInteractionEnabled_];
  [v19 addSubview_];

  return v19;
}

void sub_2199E600C()
{
  sub_219BE6204();
  v1 = sub_219BE6214();
  v1();
  v2 = sub_219BE61F4();
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  swift_allocObject();
  swift_unknownObjectUnownedInit();

  v3 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v4 = *(v0 + OBJC_IVAR____TtC7NewsUI215ChannelCoinView_token);
  *(v0 + OBJC_IVAR____TtC7NewsUI215ChannelCoinView_token) = v3;
}

void sub_2199E6194()
{
  sub_2199E6868(&qword_27CC10D10);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_2199E6254()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7NewsUI215ChannelCoinView_accessoryButton);
  v9 = qword_280F620F8;
  swift_beginAccess();
  (*(v2 + 16))(v7, v8 + v9, v1);
  (*(v2 + 104))(v4, *MEMORY[0x277D6D338], v1);
  LOBYTE(v8) = sub_219BE5C54();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);
  result = 0;
  if (v8)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_219BDB5E4();

    return v14;
  }

  return result;
}

id sub_2199E6494(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_219BF53D4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2199E6514()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7NewsUI215ChannelCoinView_accessoryButton);
  v9 = qword_280F620F8;
  swift_beginAccess();
  (*(v2 + 16))(v7, v8 + v9, v1);
  (*(v2 + 104))(v4, *MEMORY[0x277D6D338], v1);
  sub_219BE5C54();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_219BDB5E4();

  return v13;
}

uint64_t sub_2199E6868(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelCoinView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2199E68A8()
{
  v1 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_iconImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_nameLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_secondaryNameLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_accessoryButton;
  *(v0 + v4) = sub_218EC4E8C(3);
  v5 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_coinButton;
  type metadata accessor for CoinButton();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC7NewsUI215ChannelCoinView_token;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  sub_219BF7514();
  __break(1u);
}

id ShortcutIconSystemImage.dynamicColor.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return [objc_opt_self() ts:v1 dynamicColor:*(v0 + 24) withDarkStyleVariant:?];
  }

  else
  {
    return 0;
  }
}

uint64_t ShortcutIconSystemImage.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2199E6A84()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2199E6AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
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

uint64_t sub_2199E6B8C(uint64_t a1)
{
  v2 = sub_2199E73B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2199E6BC8(uint64_t a1)
{
  v2 = sub_2199E73B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShortcutIconSystemImage.encode(to:)(void *a1)
{
  sub_2199E7408(0, &qword_27CC22268, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *(v1 + 16);
  v17 = *(v1 + 32);
  v18 = v8;
  v9 = *(v1 + 48);
  v15 = *(v1 + 56);
  v16 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_2199E73B4();
  sub_219BF7B44();
  LOBYTE(v19) = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v19 = v18;
    v20 = v17;
    v21 = v16;
    v22 = v15;
    v23 = 1;
    sub_21896618C();
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v13);
}

uint64_t ShortcutIconSystemImage.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2199E7408(0, &qword_27CC22278, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199E73B4();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v24[0]) = 0;
  v10 = sub_219BF76F4();
  v12 = v11;
  v13 = v10;
  v32 = 1;
  sub_218966244();
  sub_219BF76E4();
  (*(v7 + 8))(v9, v6);
  v14 = v29;
  v15 = v30;
  v21 = *(&v31 + 1);
  v22 = v31;
  *&v23[0] = v13;
  *(&v23[0] + 1) = v12;
  v23[1] = v29;
  v23[2] = v30;
  v23[3] = v31;
  v16 = v23[0];
  v17 = v29;
  v18 = v31;
  a2[2] = v30;
  a2[3] = v18;
  *a2 = v16;
  a2[1] = v17;
  sub_2199E746C(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24[0] = v13;
  v24[1] = v12;
  v25 = v14;
  v26 = v15;
  v27 = v22;
  v28 = v21;
  return sub_218E38998(v24);
}

BOOL _s7NewsUI223ShortcutIconSystemImageV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a1[7];
  v9 = a2[2];
  v8 = a2[3];
  v17 = a2[5];
  v18 = a2[6];
  v15 = a2[4];
  v16 = a2[7];
  if (*a1 == *a2 && a1[1] == a2[1] || (v10 = sub_219BF78F4(), result = 0, (v10 & 1) != 0))
  {
    if (v2)
    {
      if (v9)
      {
        sub_2189666A0();
        sub_2189665E8(v9, v8);
        sub_2189665E8(v2, v4);
        if (sub_219BF6DD4() & 1) != 0 && (sub_219BF6DD4() & 1) != 0 && (v3 == v15 && v6 == v17 || (sub_219BF78F4()))
        {
          if (v5 == v18 && v7 == v16)
          {

            sub_218966644(v2, v4);
            return 1;
          }

          v14 = sub_219BF78F4();

          sub_218966644(v2, v4);
          return (v14 & 1) != 0;
        }

        v12 = v2;
        v13 = v4;
LABEL_17:
        sub_218966644(v12, v13);
        return 0;
      }
    }

    else if (!v9)
    {
      return 1;
    }

    sub_2189665E8(v9, v8);
    sub_2189665E8(v2, v4);
    sub_218966644(v2, v4);
    v12 = v9;
    v13 = v8;
    goto LABEL_17;
  }

  return result;
}

unint64_t sub_2199E73B4()
{
  result = qword_27CC22270;
  if (!qword_27CC22270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22270);
  }

  return result;
}

void sub_2199E7408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2199E73B4();
    v7 = a3(a1, &type metadata for ShortcutIconSystemImage.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7NewsUI217ShortcutIconColorVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2199E74E0()
{
  result = qword_27CC22280;
  if (!qword_27CC22280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22280);
  }

  return result;
}

unint64_t sub_2199E7538()
{
  result = qword_27CC22288;
  if (!qword_27CC22288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22288);
  }

  return result;
}

unint64_t sub_2199E7590()
{
  result = qword_27CC22290;
  if (!qword_27CC22290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22290);
  }

  return result;
}

uint64_t sub_2199E75E4(int a1, id a2, char a3)
{
  if (![a2 theme])
  {
    goto LABEL_7;
  }

  swift_getObjectType();
  v6 = sub_219BF6114();
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v8 = *(*__swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    sub_219BE7EB4();
    goto LABEL_8;
  }

  v7 = v6;
  sub_219BE7EB4();
  if (!sub_219BF6104())
  {
    sub_219BF6CF4();
  }

  sub_219BE7EA4();
  swift_unknownObjectRelease();

LABEL_8:
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  sub_2195C9600(a2, a3 & 1);
  return sub_219BE7E94();
}

void sub_2199E7704(void *a1, void *a2, char a3)
{
  if (sub_2195C9E28(a2))
  {
    if (a1)
    {
      v7 = [a1 customView];
      if (v7)
      {
        v24 = v7;
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
          v10 = sub_2195C990C(a2, a3 & 1);
          __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
          v11 = sub_2195C9600(a2, a3 & 1);
          v12 = sub_2199E9674(v11, a2);
          v13 = v3[12];
          sub_218725F94();
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_219C189F0;
          *(v14 + 32) = v10;
          *(v14 + 40) = v12;
          sub_2186C6148(0, &qword_280E8DA80);
          v15 = v10;
          v16 = v12;
          v17 = sub_219BF5904();

          v18 = [objc_opt_self() configurationWithPaletteColors_];

          v19 = [v13 configurationByApplyingConfiguration_];
          sub_219BF5114();
          v20 = v19;
          v21 = sub_219BF50E4();
          v22 = [v21 imageByApplyingSymbolConfiguration_];

          [v9 setImage:v22 forState:0];
          v23 = v20;
        }

        else
        {
          v23 = v24;
        }
      }
    }
  }
}

void sub_2199E795C(void *a1, void *a2, char a3)
{
  if (!sub_2195C9E28(a2))
  {
    return;
  }

  if (!a1)
  {
    return;
  }

  v7 = [a1 customView];
  if (!v7)
  {
    return;
  }

  v27 = v7;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    if (sub_219BED0C4())
    {
      v10 = sub_219BF53D4();
      v11 = [objc_opt_self() systemImageNamed_];

      if (v11)
      {
        v12 = v11;
        [v9 setImage:v12 forState:0];
        v13 = v12;
LABEL_11:

        goto LABEL_12;
      }

      __break(1u);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
      v14 = v3;
      v15 = sub_2195C990C(a2, a3 & 1);
      __swift_project_boxed_opaque_existential_1(v14 + 7, v14[10]);
      v16 = sub_2195C9600(a2, a3 & 1);
      v17 = sub_2199E9674(v16, a2);
      v18 = v14[12];
      sub_218725F94();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C189F0;
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
      sub_2186C6148(0, &qword_280E8DA80);
      v13 = v15;
      v12 = v17;
      v20 = sub_219BF5904();

      v21 = [objc_opt_self() configurationWithPaletteColors_];

      v22 = [v18 configurationByApplyingConfiguration_];
      v23 = v22;
      v24 = sub_219BF53D4();
      v25 = [objc_opt_self() systemImageNamed_];

      if (v25)
      {
        v26 = [v25 imageByApplyingSymbolConfiguration_];

        [v9 setImage:v26 forState:0];
        v27 = v23;
        goto LABEL_11;
      }
    }

    __break(1u);
    return;
  }

LABEL_12:
}

void sub_2199E7C70(void *a1, void *a2, char a3)
{
  sub_218F7D09C();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2195C9E28(a2))
  {
    if (a1)
    {
      sub_2199E97C8();
      if (swift_dynamicCastClass())
      {
        v24 = a1;
        if (sub_219BED0C4())
        {
          v12 = v24;
        }

        else
        {
          __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
          v13 = v3;
          v14 = sub_2195C990C(a2, a3 & 1);
          __swift_project_boxed_opaque_existential_1(v13 + 7, v13[10]);
          v23 = sub_2195C9600(a2, a3 & 1);
          v15 = sub_2199E9674(v23, a2);
          v16 = swift_allocObject();
          v17 = v13[12];
          *(v16 + 16) = v17;
          v25 = 1;
          v18 = swift_allocObject();
          v18[2] = v16;
          v18[3] = v14;
          v18[4] = v15;
          v22 = sub_2186C6148(0, &qword_280E8DA68);
          sub_218740ED4();
          v19 = v17;

          v20 = v14;
          v21 = v15;
          sub_219BE7204();
          sub_219BE8E44();

          (*(v9 + 8))(v11, v8);
        }
      }
    }
  }
}

void sub_2199E7EFC(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  sub_218725F94();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C189F0;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  sub_2186C6148(0, &qword_280E8DA80);
  v10 = v8;
  v11 = a2;
  v12 = a3;
  v13 = sub_219BF5904();

  v14 = [objc_opt_self() configurationWithPaletteColors_];

  v15 = [v10 configurationByApplyingConfiguration_];
  swift_beginAccess();
  v16 = *(a1 + 16);
  *(a1 + 16) = v15;

  v17 = sub_219BF53D4();
  v18 = [objc_opt_self() systemImageNamed_];

  if (v18)
  {
    swift_beginAccess();
    v19 = [v18 imageByApplyingSymbolConfiguration_];

    if (v19)
    {

      *a4 = v19;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2199E8110@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v61 = a2;
  v58 = a3;
  v8 = sub_219BE7724();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v62 = &v53[-v12];
  MEMORY[0x28223BE20](v13);
  v59 = &v53[-v14];
  v15 = sub_219BE77D4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2199E961C();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v53[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_2195C9E28(a1))
  {
    v56 = v10;
    v57 = a5;
    v24 = a4;
    v54 = a4;
    v25 = v60;
    __swift_project_boxed_opaque_existential_1((v60 + 56), *(v60 + 80));
    v26 = sub_2195C9600(a1, v24 & 1);
    v66 = 3;
    v65 = 1;
    type metadata accessor for UIStatusBarStyle(0);
    sub_219BE5DB4();
    sub_219BE5DC4();
    (*(v21 + 8))(v23, v20);
    v27 = v66;
    (*(v16 + 104))(v18, *MEMORY[0x277D6DBA8], v15);
    v28 = sub_219BE77C4();
    (*(v16 + 8))(v18, v15);
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v55 = v29;
    v58 = sub_218E4A4A0(a1);
    v30 = v54;
    v31 = v25;
    v32 = a1;
    v33 = v59;
    if (v61)
    {
      v34 = v61;
      v35 = [objc_msgSend(v32 backingTag)];
      swift_unknownObjectRelease();
      if (v35)
      {
        v36 = [objc_msgSend(v32 backingTag)];
        swift_unknownObjectRelease();
        if ((v36 & 1) == 0)
        {
          [v34 setAccessibilityIgnoresInvertColors_];
        }
      }

      if (v58)
      {
        v37 = sub_219084424(v34);
        if (v37)
        {
          v38 = v37;
          __swift_project_boxed_opaque_existential_1((v31 + 56), *(v31 + 80));
          v39 = v26;
          v40 = sub_2195C990C(v32, v30 & 1);
          v41 = sub_2199E9674(v39, v32);

          *v33 = v39;
          *(v33 + 1) = v40;
          v33[16] = 1;
          *(v33 + 3) = v41;
          *(v33 + 4) = v38;
          v42 = MEMORY[0x277D6DB38];
LABEL_17:
          v48 = v63;
          v47 = v64;
          v49 = *(v63 + 104);
          v49(v33, *v42, v64);
          v50 = v62;
          (*(v48 + 16))(v62, v33, v47);
          v51 = [objc_opt_self() labelColor];
          v52 = v56;
          *v56 = xmmword_219C43540;
          *(v52 + 2) = v51;
          *(v52 + 3) = 0;
          v49(v52, *MEMORY[0x277D6DB28], v47);
          MEMORY[0x21CEBE4E0](v50, v52, v55, v27, 0, 0);

          return (*(v48 + 8))(v33, v47);
        }
      }
    }

    __swift_project_boxed_opaque_existential_1((v31 + 56), *(v31 + 80));
    v44 = v26;
    v45 = sub_2195C990C(v32, v30 & 1);
    v46 = sub_2199E9674(v44, v32);
    *v33 = v44;
    *(v33 + 1) = v45;
    v33[16] = 1;
    *(v33 + 3) = v46;
    v42 = MEMORY[0x277D6DB40];
    goto LABEL_17;
  }

  return sub_219BE7774();
}

uint64_t sub_2199E8688(void *a1, uint64_t a2, double a3)
{
  v5 = sub_2199E9040(a2, a1);
  v6 = sub_219BE7704();
  if (!v6)
  {
    [v5 setBackgroundImage_];
    v19 = 0;
    goto LABEL_8;
  }

  [a1 bounds];
  aBlock = v7;
  v46 = v8;
  v47 = v9;
  v48 = v10;
  sub_219BE3274();

  v11 = v51;
  if (!v51)
  {
    [a1 bounds];
    v22 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    v23 = swift_allocObject();
    *(v23 + 16) = v6;
    *(v23 + 24) = a3;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_2199E9234;
    *(v24 + 24) = v23;
    v49 = sub_219084E30;
    v50 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_21988D720;
    v48 = &block_descriptor_200;
    v25 = _Block_copy(&aBlock);
    v26 = v5;
    v44 = v6;

    v27 = [v22 imageWithActions_];
    _Block_release(v25);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if ((v25 & 1) == 0)
    {
      [v26 setBackgroundImage_];

      v51 = v22;

      [a1 bounds];
      aBlock = v28;
      v46 = v29;
      v47 = v30;
      v48 = v31;
      sub_219BE3254();

      v19 = 0;
      v6 = sub_2199E9234;
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2199E9868;
  *(v13 + 24) = v12;
  v49 = sub_2199E9870;
  v50 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_21988D720;
  v48 = &block_descriptor_19_4;
  v14 = _Block_copy(&aBlock);
  v15 = v5;
  v16 = v6;

  v17 = [v11 imageWithActions_];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v15 setBackgroundImage_];

  v6 = 0;
  v19 = sub_2199E9868;
LABEL_8:
  v32 = v5;
  v33 = sub_219BE76F4();
  if (v33)
  {
    v34 = v33;
    v35 = [v33 colorWithAlphaComponent_];
  }

  else
  {
    v35 = 0;
  }

  [v32 setBackgroundColor_];

  [v32 setShadowColor_];
  [v32 setBackgroundEffect_];

  v36 = [a1 topItem];
  if (v36)
  {
    v37 = v36;
    [v36 setStandardAppearance_];
  }

  v38 = [a1 topItem];
  if (v38)
  {
    v39 = v38;
    [v38 setScrollEdgeAppearance_];
  }

  v40 = sub_219BE7714();
  [a1 setTintColor_];

  [a1 setBarStyle_];
  v41 = sub_219BE76F4();
  if (v41)
  {
    v42 = v41;
    v43 = [v41 colorWithAlphaComponent_];
  }

  else
  {
    v43 = 0;
  }

  [a1 setBarTintColor_];

  sub_2187FABEC(v19);
  return sub_2187FABEC(v6);
}

uint64_t sub_2199E8C60()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

void sub_2199E8DBC(void *a1, id a2)
{
  if (![a2 theme] || (swift_getObjectType(), v5 = sub_219BF6114(), swift_unknownObjectRelease(), (v4 = v5) == 0))
  {
    v4 = *(*__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
  }

  v6 = v4;
  [a1 setBackgroundColor_];
}

void sub_2199E8EA8(int a1, id a2)
{
  v2 = [a2 horizontalSizeClass];
  v3 = [objc_opt_self() clearColor];
  if (v2 == 1)
  {
    sub_219BEDA14();
  }

  else
  {
    sub_219BEDA04();
  }
}

void sub_2199E8F3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *v5;
  if (sub_2195C9E28(a1))
  {
    __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
    v9 = sub_2195C9600(a1, a5 & 1);
  }

  else
  {
    sub_2186C6148(0, &qword_280E8DA80);
    v9 = sub_219BF6D44();
  }

  v10 = v9;
  sub_219BE7734();
}

id sub_2199E9040(uint64_t a1, void *a2)
{
  v4 = sub_219BE7724();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 standardAppearance];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 88))(v8, v4);
  if (v10 != *MEMORY[0x277D6DB38] && v10 != *MEMORY[0x277D6DB40])
  {
    if (v10 == *MEMORY[0x277D6DB28] || v10 == *MEMORY[0x277D6DB48])
    {
      (*(v5 + 8))(v8, v4);
LABEL_13:
      [v9 configureWithDefaultBackground];
      return v9;
    }

    if (v10 != *MEMORY[0x277D6DB30])
    {
      if (v10 != *MEMORY[0x277D6DB50])
      {
        [v9 configureWithDefaultBackground];
        (*(v5 + 8))(v8, v4);
        return v9;
      }

      goto LABEL_13;
    }
  }

  (*(v5 + 8))(v8, v4);
  [v9 configureWithTransparentBackground];
  return v9;
}

void sub_2199E9254(void *a1, uint64_t a2)
{
  v3 = sub_2199E9040(a2, a1);
  v4 = sub_219BE76F4();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 colorWithAlphaComponent_];
  }

  else
  {
    v6 = 0;
  }

  [v3 setBackgroundColor_];

  [v3 setBackgroundImage_];
  [v3 setShadowColor_];
  [v3 setBackgroundEffect_];

  v7 = [a1 topItem];
  if (v7)
  {
    v8 = v7;
    [v7 setStandardAppearance_];
  }

  v9 = [a1 topItem];
  if (v9)
  {
    v10 = v9;
    [v9 setScrollEdgeAppearance_];
  }

  v11 = sub_219BE7714();
  [a1 setTintColor_];

  [a1 setBarStyle_];
  v12 = sub_219BE76F4();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 colorWithAlphaComponent_];
  }

  else
  {
    v14 = 0;
  }

  [a1 setBarTintColor_];
}

void sub_2199E942C(void *a1, uint64_t a2)
{
  v3 = sub_2199E9040(a2, a1);
  v4 = sub_219BE7704();
  [v3 setBackgroundImage_];

  v5 = sub_219BE76F4();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v7 = 0;
  }

  [v3 setBackgroundColor_];

  [v3 setShadowColor_];
  v8 = sub_219BE76E4();
  [v3 setBackgroundEffect_];

  v9 = [a1 topItem];
  if (v9)
  {
    v10 = v9;
    [v9 setStandardAppearance_];
  }

  v11 = [a1 topItem];
  if (v11)
  {
    v12 = v11;
    [v11 setScrollEdgeAppearance_];
  }

  v13 = sub_219BE7714();
  [a1 setTintColor_];

  [a1 setBarStyle_];
  v14 = sub_219BE76F4();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 colorWithAlphaComponent_];
  }

  else
  {
    v16 = 0;
  }

  [a1 setBarTintColor_];
}

void sub_2199E961C()
{
  if (!qword_280EE5D80)
  {
    type metadata accessor for UIStatusBarStyle(255);
    v0 = sub_219BE5DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5D80);
    }
  }
}

id sub_2199E9674(void *a1, id a2)
{
  v3 = [objc_msgSend(a2 backingTag)];
  swift_unknownObjectRelease();
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v8 = [a1 _isSimilarToColor_withinPercentage_];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = [v4 secondarySystemFillColor];
    v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v7 = [v10 resolvedColorWithTraitCollection_];
  }

  return v7;
}

void sub_2199E97C8()
{
  if (!qword_280EE4728)
  {
    sub_219BF3344();
    sub_218E14F94();
    sub_218740ED4();
    v0 = sub_219BE8E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4728);
    }
  }
}

void sub_2199E9940()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI223InterludeViewController_animationContainer];
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v2 setFrame_];
    [v2 setAutoresizingMask_];
    v13 = *&v1[OBJC_IVAR____TtC7NewsUI223InterludeViewController_contentView];
    [v2 bounds];
    [v13 setFrame_];
    [v13 setAutoresizingMask_];
    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 addSubview_];

      [v2 addSubview_];
      __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI223InterludeViewController_animator], *&v1[OBJC_IVAR____TtC7NewsUI223InterludeViewController_animator + 24]);
      sub_218C83DC4(v1);
      v16 = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI223InterludeViewController_renderer], *&v1[OBJC_IVAR____TtC7NewsUI223InterludeViewController_renderer + 24]);
      __swift_project_boxed_opaque_existential_1((*v16 + 16), *(*v16 + 40));
      sub_219A5DCC4(v13);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2199E9BA0(char a1)
{
  v2 = v1;
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1 & 1);
  v4 = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI223InterludeViewController_animator], *&v1[OBJC_IVAR____TtC7NewsUI223InterludeViewController_animator + 24]);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = *v4;
  v7 = v2;
  if (sub_218C85198(v7))
  {
    v8 = *(v6 + 56);
    *(v6 + 56) = sub_2199E9DB8;
    *(v6 + 64) = v5;
    sub_2187FABEC(v8);

    sub_218C83F84(v7);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((*&v7[OBJC_IVAR____TtC7NewsUI223InterludeViewController_eventHandler] + 16), *(*&v7[OBJC_IVAR____TtC7NewsUI223InterludeViewController_eventHandler] + 40));
    sub_2195DBBEC();
  }
}

unint64_t sub_2199E9E10(void *a1)
{
  type metadata accessor for OverridableFeedRefreshStrategy.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_219BF7774();
  v10 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF7B34();
  if (!v1)
  {
    v7 = v10;
    type metadata accessor for OverridableFeedRefreshStrategy.CodingType();
    v11 = 0;
    swift_getWitnessTable();
    sub_219BF7734();
    (*(v7 + 8))(v5, v3);
    v6 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_2199E9FF8(void *a1, unsigned __int8 a2)
{
  type metadata accessor for OverridableFeedRefreshStrategy.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_219BF7864();
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF7B44();
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 2;
      v13 = 0;
    }

    else
    {
      v16 = 3;
      v15 = 0;
    }
  }

  else if (a2)
  {
    v12 = 1;
    v11 = 0;
  }

  else
  {
    v10 = 0;
  }

  type metadata accessor for OverridableFeedRefreshStrategy.CodingType();
  swift_getWitnessTable();
  sub_219BF7834();
  return (*(v9 + 8))(v6, v4);
}

uint64_t sub_2199EA288()
{
  v0 = sub_219BF7614();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2199EA2DC()
{
  v0 = sub_219BF7614();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2199EA328(unsigned __int8 a1)
{
  v1 = 0x446873696C627570;
  v2 = 0x6563726F66;
  if (a1 != 2)
  {
    v2 = 0x6F6C6F6E6F726863;
  }

  if (a1)
  {
    v1 = 0x6C6F6F706572;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2199EA3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2199EA424(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2199EA490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2199EA500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2199EA570@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2199EA288();
  *a1 = result;
  return result;
}

uint64_t sub_2199EA5A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_218919A28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2199EA5EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2199EA288();
  *a1 = result;
  return result;
}

uint64_t sub_2199EA618@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2199EAB54();
  *a1 = result;
  return result;
}

uint64_t sub_2199EA644(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2199EA698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2199EA6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2199EA760(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2199EA7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2199EA83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2199EA8AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2199EA2DC();
  *a1 = result;
  return result;
}

uint64_t sub_2199EA8E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2199EA328(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2199EAA08()
{
  sub_219BF7AA4();
  sub_2196F5850(v2, *v0);
  return sub_219BF7AE4();
}

unint64_t sub_2199EAA48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2199E9E10(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_2199EABD8()
{
  v1 = sub_219BF53D4();
  v8 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  v2 = v8;
  if (v8)
  {
    v3 = v8;
    v4 = [v0 view];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 window];

    v7 = [v6 rootViewController];
    [v3 setPresentingViewController_];

    v2 = v8;
  }

  [v2 present];
}

id sub_2199EAE3C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result addSubview_];

    result = [v0 view];
    if (result)
    {
      v3 = result;
      [result setAccessibilityViewIsModal_];

      v4 = [objc_opt_self() defaultCenter];
      [v4 addObserver:v0 selector:sel_viewWillLayoutSubviews name:*MEMORY[0x277D76810] object:0];

      swift_getObjectType();
      return sub_219BE74F4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2199EAFCC()
{
  v1 = v0;
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, sel_viewWillLayoutSubviews);
  v2 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator], *&v0[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator + 24]);
  v3 = &v1[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
  v4 = *&v1[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
  v5 = *&v1[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame + 8];
  sub_2199ECEC8(v4, v5);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  [result frame];
  v9 = v8;
  v11 = v10;

  v12 = [v1 traitCollection];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v13 = result;
  [result layoutMargins];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = *v3;
  v23 = v3[1];
  *&v44 = v9;
  *(&v44 + 1) = v11;
  *&v45 = v12;
  *(&v45 + 1) = v15;
  *&v46 = v17;
  *(&v46 + 1) = v19;
  *&v47 = v21;
  *(&v47 + 1) = v22;
  v48 = v23;
  v24 = *v2;
  sub_2199ECEC8(v22, v23);
  v25 = [v12 horizontalSizeClass];
  v26 = [v12 verticalSizeClass];
  if (v25 == 1)
  {
    if (v26 == 2)
    {
      v28 = 2;
      v27 = 1;
      goto LABEL_10;
    }
  }

  else if (v25 == 2 && v26 == 2)
  {
    v27 = 0;
    v28 = 3;
    goto LABEL_10;
  }

  v27 = 0;
  v28 = 1;
LABEL_10:
  v64[2] = v46;
  v64[3] = v47;
  v65 = v48;
  v64[0] = v44;
  v64[1] = v45;
  v66 = 0;
  v67 = v28;
  __swift_project_boxed_opaque_existential_1((v24 + 200), *(v24 + 224));
  v29 = *(v24 + 104);
  v30 = *(v24 + 136);
  v62[6] = *(v24 + 120);
  v62[7] = v30;
  v63 = *(v24 + 152);
  v31 = *(v24 + 40);
  v32 = *(v24 + 72);
  v62[2] = *(v24 + 56);
  v62[3] = v32;
  v62[4] = *(v24 + 88);
  v62[5] = v29;
  v62[0] = *(v24 + 24);
  v62[1] = v31;
  sub_218D21CB4(&v44, v53);
  sub_218CFCE3C(v62, v64, v50);
  if (v27 && (v33 = v52, CGRectGetHeight(v51) < v33))
  {
    v34 = [v12 preferredContentSizeCategory];
    v35 = sub_219BF6954();
    sub_218D21D10(&v44);
  }

  else
  {
    sub_218D21D10(&v44);
    v35 = 0;
  }

  v58[2] = v46;
  v58[3] = v47;
  v59 = v48;
  v58[0] = v44;
  v58[1] = v45;
  v60 = v35 & 1;
  v61 = v28;
  __swift_project_boxed_opaque_existential_1((v24 + 200), *(v24 + 224));
  v36 = *(v24 + 104);
  v37 = *(v24 + 136);
  v56[6] = *(v24 + 120);
  v56[7] = v37;
  v57 = *(v24 + 152);
  v38 = *(v24 + 40);
  v39 = *(v24 + 72);
  v56[2] = *(v24 + 56);
  v56[3] = v39;
  v56[4] = *(v24 + 88);
  v56[5] = v36;
  v56[0] = *(v24 + 24);
  v56[1] = v38;
  sub_218D21CB4(&v44, v53);
  sub_218CFCE3C(v56, v58, v53);
  __swift_project_boxed_opaque_existential_1((v24 + 160), *(v24 + 184));
  v40 = *(v24 + 104);
  v41 = *(v24 + 136);
  v54[6] = *(v24 + 120);
  v54[7] = v41;
  v55 = *(v24 + 152);
  v42 = *(v24 + 40);
  v43 = *(v24 + 72);
  v54[2] = *(v24 + 56);
  v54[3] = v43;
  v54[4] = *(v24 + 88);
  v54[5] = v40;
  v54[0] = *(v24 + 24);
  v54[1] = v42;
  sub_218D47350(v54, v35 & 1 | (v28 << 8), v53, *(v24 + 16));
  sub_218D2086C(v4, v5, v24);
  sub_218D21D10(&v44);
  sub_218D21D10(&v44);
  return sub_2199ECEAC(v4, v5);
}

uint64_t sub_2199EB3F4(char a1)
{
  v2 = v1;
  v58.receiver = v1;
  v58.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v58, sel_viewDidAppear_, a1 & 1);
  [v1 becomeFirstResponder];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = *MEMORY[0x277D76438];
    v5 = [*(*(*__swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewProvider] *&v1[OBJC:sel_accessibilityLabel IVAR:? :? :? :? TtC7NewsUI221WelcomeViewController:? viewProvider + 24]) + 16) + OBJC:? IVAR:? :? :? :? TtC7NewsUI211WelcomeView:?titleGroup)];
    UIAccessibilityPostNotification(v4, v5);
  }

  v6 = *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_eventHandler + 8];
  ObjectType = swift_getObjectType();
  (*(v6 + 56))(ObjectType, v6);
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_sceneStateManager], *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_sceneStateManager + 24]);
  sub_21874E498(&qword_27CC22368, v8, type metadata accessor for WelcomeViewController);
  sub_219BE29A4();
  __swift_destroy_boxed_opaque_existential_1(v62);
  swift_getObjectType();
  sub_219BE74F4();
  sub_219BE74E4();
  result = (*(v6 + 72))(ObjectType, v6);
  if ((result & 1) == 0)
  {
    v15 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator], *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator + 24]);
    result = [v2 view];
    if (result)
    {
      v16 = result;
      [result frame];
      v18 = v17;
      v20 = v19;

      v21 = [v2 traitCollection];
      result = [v2 view];
      if (result)
      {
        v22 = result;
        [result layoutMargins];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        v31 = *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
        v32 = *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame + 8];
        *&v53 = v18;
        *(&v53 + 1) = v20;
        *&v54 = v21;
        *(&v54 + 1) = v24;
        *&v55 = v26;
        *(&v55 + 1) = v28;
        *&v56 = v30;
        *(&v56 + 1) = v31;
        v57 = v32;
        v33 = *v15;
        sub_2199ECEC8(v31, v32);
        v34 = [v21 horizontalSizeClass];
        v35 = [v21 verticalSizeClass];
        if (v34 == 1)
        {
          if (v35 == 2)
          {
            v37 = 2;
            v36 = 1;
            goto LABEL_17;
          }
        }

        else if (v34 == 2 && v35 == 2)
        {
          v36 = 0;
          v37 = 3;
          goto LABEL_17;
        }

        v36 = 0;
        v37 = 1;
LABEL_17:
        v73[2] = v55;
        v73[3] = v56;
        v74 = v57;
        v73[0] = v53;
        v73[1] = v54;
        v75 = 0;
        v76 = v37;
        __swift_project_boxed_opaque_existential_1((v33 + 200), *(v33 + 224));
        v38 = *(v33 + 104);
        v39 = *(v33 + 136);
        v71[6] = *(v33 + 120);
        v71[7] = v39;
        v72 = *(v33 + 152);
        v40 = *(v33 + 40);
        v41 = *(v33 + 72);
        v71[2] = *(v33 + 56);
        v71[3] = v41;
        v71[4] = *(v33 + 88);
        v71[5] = v38;
        v71[0] = *(v33 + 24);
        v71[1] = v40;
        sub_218D21CB4(&v53, v62);
        sub_218CFCE3C(v71, v73, v59);
        if (v36 && (v42 = v61, CGRectGetHeight(v60) < v42))
        {
          v43 = [v21 preferredContentSizeCategory];
          v44 = sub_219BF6954();
          sub_218D21D10(&v53);
        }

        else
        {
          sub_218D21D10(&v53);
          v44 = 0;
        }

        v67[2] = v55;
        v67[3] = v56;
        v68 = v57;
        v67[0] = v53;
        v67[1] = v54;
        v69 = v44 & 1;
        v70 = v37;
        __swift_project_boxed_opaque_existential_1((v33 + 200), *(v33 + 224));
        v45 = *(v33 + 104);
        v46 = *(v33 + 136);
        v65[6] = *(v33 + 120);
        v65[7] = v46;
        v66 = *(v33 + 152);
        v47 = *(v33 + 40);
        v48 = *(v33 + 72);
        v65[2] = *(v33 + 56);
        v65[3] = v48;
        v65[4] = *(v33 + 88);
        v65[5] = v45;
        v65[0] = *(v33 + 24);
        v65[1] = v47;
        sub_218D21CB4(&v53, v62);
        sub_218CFCE3C(v65, v67, v62);
        __swift_project_boxed_opaque_existential_1((v33 + 160), *(v33 + 184));
        v49 = *(v33 + 104);
        v50 = *(v33 + 136);
        v63[6] = *(v33 + 120);
        v63[7] = v50;
        v64 = *(v33 + 152);
        v51 = *(v33 + 40);
        v52 = *(v33 + 72);
        v63[2] = *(v33 + 56);
        v63[3] = v52;
        v63[4] = *(v33 + 88);
        v63[5] = v49;
        v63[0] = *(v33 + 24);
        v63[1] = v51;
        sub_218D47350(v63, v44 & 1 | (v37 << 8), v62, *(v33 + 16));
        sub_218D2086C(0, 1, v33);
        sub_218D21D10(&v53);
        sub_218D21D10(&v53);
        return (*(v6 + 40))(ObjectType, v6);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  if ((v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_startedFirstAnimation] & 1) == 0)
  {
    v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_startedFirstAnimation] = 1;
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator], *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator + 24]);
    result = [v2 view];
    if (result)
    {
      v10 = result;
      [result frame];

      v11 = [v2 traitCollection];
      result = [v2 view];
      if (result)
      {
        v12 = result;
        [result layoutMargins];

        v13 = swift_allocObject();
        *(v13 + 16) = v2;
        v14 = v2;
        sub_218D20F18(sub_2199ED074, v13);
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2199EBA60(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame);
  if (!*(a1 + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame + 8))
  {
    v3 = *v2;
    *v2 = xmmword_219C14A10;
    sub_2199ECEAC(v3, 0);
  }

  v4 = *(a1 + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  return (*(v4 + 32))(ObjectType, v4);
}

uint64_t sub_2199EBB30(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1 & 1);
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_sceneStateManager], *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_sceneStateManager + 24]);
  sub_21874E498(&qword_27CC22368, v4, type metadata accessor for WelcomeViewController);
  sub_219BE29C4();
  v5 = *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_eventHandler + 8];
  ObjectType = swift_getObjectType();
  (*(v5 + 64))(ObjectType, v5);
  swift_getObjectType();
  sub_219BE74E4();
  return sub_219BE74F4();
}

id sub_2199EBD24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (((*(a2 + 72))(ObjectType, a2) & 1) == 0)
  {
    v29 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator], *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator + 24]);
    result = [v3 view];
    if (result)
    {
      v30 = result;
      [result frame];
      v32 = v31;
      v34 = v33;

      v35 = [v3 traitCollection];
      result = [v3 view];
      if (result)
      {
        v36 = result;
        [result layoutMargins];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;

        v45 = &v3[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
        v46 = *&v3[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
        v47 = *&v3[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame + 8];
        *&v72 = v32;
        *(&v72 + 1) = v34;
        *&v73 = v35;
        *(&v73 + 1) = v38;
        *&v74 = v40;
        *(&v74 + 1) = v42;
        *&v75 = v44;
        *(&v75 + 1) = v46;
        v76 = v47;
        v48 = *v29;
        sub_2199ECEC8(v46, v47);
        v49 = [v35 horizontalSizeClass];
        v50 = [v35 verticalSizeClass];
        if (v49 == 1)
        {
          if (v50 == 2)
          {
            v52 = 2;
            v51 = 1;
            goto LABEL_16;
          }
        }

        else if (v49 == 2 && v50 == 2)
        {
          v51 = 0;
          v52 = 3;
          goto LABEL_16;
        }

        v51 = 0;
        v52 = 1;
LABEL_16:
        v95[2] = v74;
        v95[3] = v75;
        v96 = v76;
        v95[0] = v72;
        v95[1] = v73;
        v97 = 0;
        v98 = v52;
        __swift_project_boxed_opaque_existential_1((v48 + 200), *(v48 + 224));
        v53 = *(v48 + 104);
        v54 = *(v48 + 136);
        v93[6] = *(v48 + 120);
        v93[7] = v54;
        v94 = *(v48 + 152);
        v55 = *(v48 + 40);
        v56 = *(v48 + 72);
        v93[2] = *(v48 + 56);
        v93[3] = v56;
        v57 = *(v48 + 88);
        v93[5] = v53;
        v93[4] = v57;
        v58 = *(v48 + 24);
        v93[1] = v55;
        v93[0] = v58;
        sub_218D21CB4(&v72, v82);
        sub_218CFCE3C(v93, v95, &v77);
        if (v51 && (v59 = v81, CGRectGetHeight(v79) < v59))
        {
          v60 = [v35 preferredContentSizeCategory];
          v61 = sub_219BF6954();
          sub_218D21D10(&v72);
        }

        else
        {
          sub_218D21D10(&v72);
          v61 = 0;
        }

        v89[2] = v74;
        v89[3] = v75;
        v90 = v76;
        v89[1] = v73;
        v89[0] = v72;
        v91 = v61 & 1;
        v92 = v52;
        __swift_project_boxed_opaque_existential_1((v48 + 200), *(v48 + 224));
        v62 = *(v48 + 104);
        v63 = *(v48 + 136);
        v87[6] = *(v48 + 120);
        v87[7] = v63;
        v88 = *(v48 + 152);
        v64 = *(v48 + 40);
        v65 = *(v48 + 72);
        v87[2] = *(v48 + 56);
        v87[3] = v65;
        v66 = *(v48 + 88);
        v87[5] = v62;
        v87[4] = v66;
        v67 = *(v48 + 24);
        v87[1] = v64;
        v87[0] = v67;
        sub_218D21CB4(&v72, v82);
        sub_218CFCE3C(v87, v89, v82);
        __swift_project_boxed_opaque_existential_1((v48 + 160), *(v48 + 184));
        v68 = *(v48 + 120);
        v69 = *(v48 + 136);
        v85[5] = *(v48 + 104);
        v85[6] = v68;
        v85[7] = v69;
        v86 = *(v48 + 152);
        v70 = *(v48 + 40);
        v71 = *(v48 + 72);
        v85[2] = *(v48 + 56);
        v85[3] = v71;
        v85[4] = *(v48 + 88);
        v85[0] = *(v48 + 24);
        v85[1] = v70;
        sub_218D47350(v85, v61 & 1 | (v52 << 8), v82, *(v48 + 16));
        sub_218D2086C(0, 3, v48);
        sub_218D21D10(&v72);
        sub_218D21D10(&v72);
        v28 = *v45;
        v7 = v45[1];
        *v45 = xmmword_219C43500;
        return sub_2199ECEAC(v28, v7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = &v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
  v7 = *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame + 8];
  if (v7 - 2 < 3)
  {
LABEL_6:
    v28 = *v6;
    *v6 = xmmword_219C0A870;
    return sub_2199ECEAC(v28, v7);
  }

  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator], *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator + 24]);
  result = [v2 view];
  if (!result)
  {
    goto LABEL_24;
  }

  v9 = result;
  [result frame];
  v11 = v10;
  v13 = v12;

  v14 = [v2 traitCollection];
  result = [v2 view];
  if (result)
  {
    v15 = result;
    [result layoutMargins];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = *v6;
    v25 = v6[1];
    *&v77 = v11;
    *(&v77 + 1) = v13;
    *&v78 = v14;
    *(&v78 + 1) = v17;
    v79.origin.x = v19;
    v79.origin.y = v21;
    v79.size.width = v23;
    v79.size.height = v24;
    v80 = v25;
    v84 = v25;
    v82[0] = v77;
    v82[1] = v78;
    v83 = v79;
    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    sub_2199ECEC8(*&v24, v25);
    v27 = v2;
    sub_218D210B4(v82, sub_2199ECEDC, v26);

    sub_218D21D10(&v77);
    v7 = v6[1];
    goto LABEL_6;
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_2199EC290()
{
  v1 = &v0[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
  if (*&v0[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame + 8] == 4)
  {
    v2 = 4;
LABEL_6:
    v11 = *v1;
    *v1 = xmmword_219C43520;
    return sub_2199ECEAC(v11, v2);
  }

  v3 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator], *&v0[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator + 24]);
  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result frame];

    v6 = [v0 traitCollection];
    result = [v0 view];
    if (result)
    {
      v7 = result;
      [result layoutMargins];

      v8 = *v3;
      v9 = objc_opt_self();
      v12[4] = sub_2199ECEC0;
      v12[5] = v8;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_218793E0C;
      v12[3] = &block_descriptor_201;
      v10 = _Block_copy(v12);

      [v9 animateWithDuration:v10 animations:0.05];
      _Block_release(v10);
      v2 = v1[1];
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2199EC448(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator], *&v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator + 24]);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  [result frame];

  v7 = [v2 traitCollection];
  result = [v2 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  [result layoutMargins];

  v9 = &v2[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
  sub_218D20BA8();
  v10 = *v9;
  v11 = v9[1];
  *v9 = a1;
  v9[1] = a2;
  sub_2199ECEAC(v10, v11);
}

uint64_t sub_2199EC5EC()
{
  v0 = sub_219BED174();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED1D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8E3B0);
  v8 = sub_219BF66A4();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_2199ECF00;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_6_3;
  v10 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E498(&qword_280E927E0, 255, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_21874E498(&qword_280E8EFA0, 255, sub_21879DD98);
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_2199EC8E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator), *(Strong + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator + 24));
  v3 = &v1[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
  v4 = *&v1[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
  v5 = *&v1[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame + 8];
  sub_2199ECEC8(v4, v5);
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  [v6 frame];
  v9 = v8;
  v11 = v10;

  v12 = [v1 traitCollection];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 layoutMargins];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = *v3;
  v24 = v3[1];
  *&v49 = v9;
  *(&v49 + 1) = v11;
  *&v50 = v12;
  *(&v50 + 1) = v16;
  *&v51 = v18;
  *(&v51 + 1) = v20;
  *&v52 = v22;
  *(&v52 + 1) = v23;
  v53 = v24;
  v25 = *v2;
  sub_2199ECEC8(v23, v24);
  v26 = [v12 horizontalSizeClass];
  v27 = [v12 verticalSizeClass];
  if (v26 == 1)
  {
    if (v27 == 2)
    {
      v29 = 2;
      v28 = 1;
      goto LABEL_11;
    }
  }

  else if (v26 == 2 && v27 == 2)
  {
    v28 = 0;
    v29 = 3;
    goto LABEL_11;
  }

  v28 = 0;
  v29 = 1;
LABEL_11:
  v68[2] = v51;
  v68[3] = v52;
  v69 = v53;
  v68[0] = v49;
  v68[1] = v50;
  v70 = 0;
  v71 = v29;
  __swift_project_boxed_opaque_existential_1((v25 + 200), *(v25 + 224));
  v30 = *(v25 + 104);
  v31 = *(v25 + 136);
  v66[6] = *(v25 + 120);
  v66[7] = v31;
  v67 = *(v25 + 152);
  v32 = *(v25 + 40);
  v33 = *(v25 + 72);
  v66[2] = *(v25 + 56);
  v66[3] = v33;
  v34 = *(v25 + 88);
  v66[5] = v30;
  v66[4] = v34;
  v35 = *(v25 + 24);
  v66[1] = v32;
  v66[0] = v35;
  sub_218D21CB4(&v49, v57);
  sub_218CFCE3C(v66, v68, v54);
  if (v28 && (v36 = v56, CGRectGetHeight(v55) < v36))
  {
    v37 = [v12 preferredContentSizeCategory];
    v38 = sub_219BF6954();
    sub_218D21D10(&v49);
  }

  else
  {
    sub_218D21D10(&v49);
    v38 = 0;
  }

  v62[2] = v51;
  v62[3] = v52;
  v63 = v53;
  v62[1] = v50;
  v62[0] = v49;
  v64 = v38 & 1;
  v65 = v29;
  __swift_project_boxed_opaque_existential_1((v25 + 200), *(v25 + 224));
  v39 = *(v25 + 104);
  v40 = *(v25 + 136);
  v60[6] = *(v25 + 120);
  v60[7] = v40;
  v61 = *(v25 + 152);
  v41 = *(v25 + 40);
  v42 = *(v25 + 72);
  v60[2] = *(v25 + 56);
  v60[3] = v42;
  v43 = *(v25 + 88);
  v60[5] = v39;
  v60[4] = v43;
  v44 = *(v25 + 24);
  v60[1] = v41;
  v60[0] = v44;
  sub_218D21CB4(&v49, v57);
  sub_218CFCE3C(v60, v62, v57);
  __swift_project_boxed_opaque_existential_1((v25 + 160), *(v25 + 184));
  v45 = *(v25 + 104);
  v46 = *(v25 + 136);
  v58[6] = *(v25 + 120);
  v58[7] = v46;
  v59 = *(v25 + 152);
  v47 = *(v25 + 40);
  v48 = *(v25 + 72);
  v58[2] = *(v25 + 56);
  v58[3] = v48;
  v58[4] = *(v25 + 88);
  v58[5] = v45;
  v58[0] = *(v25 + 24);
  v58[1] = v47;
  sub_218D47350(v58, v38 & 1 | (v29 << 8), v57, *(v25 + 16));
  sub_218D2086C(v4, v5, v25);
  sub_218D21D10(&v49);
  sub_218D21D10(&v49);
  sub_2199ECEAC(v4, v5);
}

uint64_t sub_2199ECE14()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 56))(ObjectType, v1);
}

uint64_t sub_2199ECE60()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 64))(ObjectType, v1);
}

uint64_t sub_2199ECEAC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_2199ECEC8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_2199ECEDC()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame);
  v2 = *v1;
  v3 = v1[1];
  *v1 = xmmword_219C43500;
  return sub_2199ECEAC(v2, v3);
}

double sub_2199ECF08()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() keyCommandWithInput:v0 modifierFlags:0 action:sel_didTapContinueButton];

  [v1 setWantsPriorityOverSystemBehavior_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v4 = sub_219BF53D4();

  [v1 setDiscoverabilityTitle_];

  sub_218725F94();
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_219C146A0;
  *(v5 + 32) = v1;
  return result;
}

uint64_t sub_2199ED084(void *a1)
{
  v3 = v1;
  sub_2199EDFFC(0, &qword_27CC22388, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199EDF18();
  sub_219BF7B44();
  v12[0] = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v12[0] = 1;
    sub_219BF7794();
    memcpy(v13, (v3 + 32), 0x138uLL);
    memcpy(v12, (v3 + 32), sizeof(v12));
    v13[335] = 2;
    sub_2199EE060(v13, v11);
    sub_2199EE114();
    sub_219BF77E4();
    memcpy(v11, v12, sizeof(v11));
    sub_2199EE3C4(v11, sub_2199EE0C4);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2199ED294(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7247656372756F73;
  v4 = 0xED0000444970756FLL;
  if (v2 != 1)
  {
    v3 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x7247656372756F73;
  v8 = 0xED0000444970756FLL;
  if (*a2 != 1)
  {
    v7 = 0x617461646174656DLL;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_2199ED3A8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2199ED44C()
{
  sub_219BF5524();
}

uint64_t sub_2199ED4DC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2199ED57C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2199EE378();
  *a1 = result;
  return result;
}

void sub_2199ED5AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xED0000444970756FLL;
  v5 = 0x7247656372756F73;
  if (v2 != 1)
  {
    v5 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2199ED60C()
{
  v1 = 0x7247656372756F73;
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
    return 25705;
  }
}

uint64_t sub_2199ED668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2199EE378();
  *a1 = result;
  return result;
}

uint64_t sub_2199ED690(uint64_t a1)
{
  v2 = sub_2199EDF18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2199ED6CC(uint64_t a1)
{
  v2 = sub_2199EDF18();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2199ED708@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2199EDA28(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x158uLL);
  }

  return result;
}

BOOL sub_2199ED76C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_2199ED7C4(v4, __dst);
}

BOOL sub_2199ED7C4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  memcpy(__dst, a1 + 4, sizeof(__dst));
  memcpy(v16, a2 + 4, sizeof(v16));
  memcpy(__src, a1 + 4, 0x138uLL);
  memcpy(&__src[312], a2 + 4, 0x138uLL);
  memcpy(v15, a1 + 4, sizeof(v15));
  if (j__get_enum_tag_for_layout_string_7NewsUI219ChannelPickerModuleVSg_0(v15) != 1)
  {
    memcpy(v12, a2 + 4, sizeof(v12));
    if (j__get_enum_tag_for_layout_string_7NewsUI219ChannelPickerModuleVSg_0(v12) == 1)
    {
      goto LABEL_19;
    }

    memcpy(v10, a2 + 4, sizeof(v10));
    memcpy(v13, a2 + 4, 0x138uLL);
    memcpy(v18, a1 + 4, sizeof(v18));
    sub_2199EE060(__dst, v11);
    sub_2199EE060(v16, v11);
    v9 = sub_218E3E5D4(v18, v13);
    sub_2199EE3C4(v10, sub_2199EE0C4);
    memcpy(v11, a1 + 4, sizeof(v11));
    sub_2199EE3C4(v11, sub_2199EE0C4);
    return v9;
  }

  memcpy(v13, a2 + 4, 0x138uLL);
  if (j__get_enum_tag_for_layout_string_7NewsUI219ChannelPickerModuleVSg_0(v13) != 1)
  {
LABEL_19:
    memcpy(v13, __src, sizeof(v13));
    sub_2199EE060(__dst, v18);
    sub_2199EE060(v16, v18);
    sub_2199EE3C4(v13, sub_2199EE424);
    return 0;
  }

  memcpy(v18, a1 + 4, sizeof(v18));
  sub_2199EE060(__dst, v12);
  sub_2199EE060(v16, v12);
  sub_2199EE3C4(v18, sub_2199EE0C4);
  return 1;
}

void *sub_2199EDA28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = sub_219BF5474();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199EDFFC(0, &qword_27CC22370, MEMORY[0x277D844C8]);
  v7 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199EDF18();
  v10 = v39;
  sub_219BF7B34();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v5;
  v39 = v3;
  v43[0] = 0;
  v12 = sub_219BF76F4();
  v31 = v14;
  v35 = v12;
  v43[335] = 1;
  v15 = sub_219BF76F4();
  v32 = v16;
  v33 = v15;
  sub_2199EDF6C(v43);
  v41[0] = 2;
  v34 = v7;
  sub_219BF76F4();
  v17 = v38;
  sub_219BF5464();
  v30 = sub_219BF5424();
  v19 = v18;

  (*(v36 + 8))(v11, v39);
  v20 = v19;
  v21 = v19 >> 60 == 15;
  v22 = a1;
  if (v21)
  {
    (*(v17 + 8))(v9, v34);
    v24 = v43;
  }

  else
  {
    sub_219BE1994();
    swift_allocObject();
    sub_219BE1984();
    sub_2199EDFA8();
    v23 = v30;
    sub_219BE1974();
    (*(v17 + 8))(v9, v34);

    sub_218822A58(v23, v20);
    memcpy(v40, v41, sizeof(v40));
    nullsub_1(v40);
    v24 = v40;
  }

  memcpy(v42, v24, sizeof(v42));
  v25 = v35;
  v26 = v31;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v27 = v37;
  *v37 = v25;
  v27[1] = v26;
  v28 = v32;
  v27[2] = v33;
  v27[3] = v28;
  return memcpy(v27 + 4, v42, 0x138uLL);
}

unint64_t sub_2199EDF18()
{
  result = qword_27CC22378;
  if (!qword_27CC22378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22378);
  }

  return result;
}

double sub_2199EDF6C(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_219C14A10;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  return result;
}

unint64_t sub_2199EDFA8()
{
  result = qword_27CC22380;
  if (!qword_27CC22380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22380);
  }

  return result;
}

void sub_2199EDFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2199EDF18();
    v7 = a3(a1, &type metadata for TagSearchResultItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2199EE060(uint64_t a1, uint64_t a2)
{
  sub_2199EE0C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2199EE0C4()
{
  if (!qword_27CC22390)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22390);
    }
  }
}

unint64_t sub_2199EE114()
{
  result = qword_27CC22398;
  if (!qword_27CC22398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22398);
  }

  return result;
}

uint64_t sub_2199EE180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 344))
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

uint64_t sub_2199EE1C8(uint64_t result, int a2, int a3)
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2199EE274()
{
  result = qword_27CC223A0;
  if (!qword_27CC223A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC223A0);
  }

  return result;
}

unint64_t sub_2199EE2CC()
{
  result = qword_27CC223A8;
  if (!qword_27CC223A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC223A8);
  }

  return result;
}

unint64_t sub_2199EE324()
{
  result = qword_27CC223B0;
  if (!qword_27CC223B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC223B0);
  }

  return result;
}

uint64_t sub_2199EE378()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2199EE3C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2199EE424()
{
  if (!qword_27CC223B8)
  {
    sub_2199EE0C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC223B8);
    }
  }
}

uint64_t sub_2199EE488()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2199EE58C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2199EE6AC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2199EE7B8(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

unint64_t sub_2199EE904()
{
  result = qword_27CC223C0;
  if (!qword_27CC223C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC223C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI229SearchLayoutSectionDescriptorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2199EE980()
{
  result = *v0;
  if (*v0)
  {
    v2 = v0[1];
    v3 = sub_2199EF270(result, type metadata accessor for SearchLayoutSectionDescriptor.Header, type metadata accessor for SearchLayoutSectionDescriptor.Header);
    v4 = sub_2199EF270(v2, type metadata accessor for SearchLayoutSectionDescriptor.Footer, type metadata accessor for SearchLayoutSectionDescriptor.Footer);
    sub_2191ED57C(v4);
    return v3;
  }

  return result;
}

uint64_t sub_2199EEA20(uint64_t a1)
{
  v2 = sub_2199EF914();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2199EEA5C(uint64_t a1)
{
  v2 = sub_219267968();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2199EEA9C()
{
  if (*v0)
  {
    return sub_2199EF518(v0[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2199EEACC(uint64_t a1)
{
  v2 = type metadata accessor for SearchLayoutSectionDescriptor.Decoration(0);
  v67 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchLayoutSectionDescriptor.Footer(0);
  v58 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchLayoutSectionDescriptor.Header(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE9834();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277D6E758];
  v60 = *(v13 + 104);
  v61 = v13 + 104;
  v60(v15, v16, v12);
  v17 = sub_219BEE054();
  v19 = *(v13 + 8);
  v18 = v13 + 8;
  v62 = v15;
  v59 = v19;
  v19(v15, v12);
  v20 = *(v17 + 16);
  v21 = MEMORY[0x277D84F90];
  v63 = v4;
  v64 = a1;
  if (v20)
  {
    v55 = v18;
    v56 = v12;
    v57 = v7;
    v68 = MEMORY[0x277D84F90];
    sub_218C376D0(0, v20, 0);
    v22 = v17;
    v23 = v68;
    v66 = sub_219BF00D4();
    v24 = *(v66 - 8);
    v65 = *(v24 + 16);
    v25 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v26 = *(v24 + 72);
    do
    {
      v65(v11, v25, v66);
      v68 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_218C376D0(v27 > 1, v28 + 1, 1);
        v23 = v68;
      }

      *(v23 + 16) = v28 + 1;
      sub_2199EF208(v11, v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28, type metadata accessor for SearchLayoutSectionDescriptor.Header);
      v25 += v26;
      --v20;
    }

    while (v20);

    v4 = v63;
    a1 = v64;
    v12 = v56;
    v7 = v57;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v29 = v62;
  v60(v62, *MEMORY[0x277D6E750], v12);
  v30 = sub_219BEE054();
  v31 = v29;
  v32 = v30;
  v59(v31, v12);
  v33 = *(v32 + 16);
  if (v33)
  {
    v68 = v21;
    sub_218C37680(0, v33, 0);
    v34 = v68;
    v66 = sub_219BF00D4();
    v35 = *(v66 - 8);
    v65 = *(v35 + 16);
    v36 = *(v35 + 80);
    v62 = v32;
    v37 = v32 + ((v36 + 32) & ~v36);
    v38 = *(v35 + 72);
    v39 = v58;
    do
    {
      v65(v7, v37, v66);
      v68 = v34;
      v40 = v7;
      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_218C37680(v41 > 1, v42 + 1, 1);
        v39 = v58;
        v34 = v68;
      }

      *(v34 + 16) = v42 + 1;
      sub_2199EF208(v40, v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v42, type metadata accessor for SearchLayoutSectionDescriptor.Footer);
      v37 += v38;
      --v33;
      v7 = v40;
    }

    while (v33);

    v4 = v63;
    a1 = v64;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v43 = sub_219BEE044();
  v44 = *(v43 + 16);
  if (v44)
  {
    v68 = v21;
    sub_218C37630(0, v44, 0);
    v45 = v68;
    v66 = sub_219BEE914();
    v46 = *(v66 - 8);
    v65 = *(v46 + 16);
    v47 = *(v46 + 80);
    v62 = v43;
    v48 = v43 + ((v47 + 32) & ~v47);
    v49 = *(v46 + 72);
    do
    {
      v65(v4, v48, v66);
      v68 = v45;
      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_218C37630(v50 > 1, v51 + 1, 1);
        v45 = v68;
      }

      *(v45 + 16) = v51 + 1;
      sub_2199EF208(v4, v45 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v51, type metadata accessor for SearchLayoutSectionDescriptor.Decoration);
      v48 += v49;
      --v44;
    }

    while (v44);
    v52 = sub_219BEE074();
    (*(*(v52 - 8) + 8))(v64, v52);
  }

  else
  {

    v53 = sub_219BEE074();
    (*(*(v53 - 8) + 8))(a1, v53);
  }

  return v23;
}

uint64_t sub_2199EF208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199EF270(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
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
      sub_2199EF84C(v16, v9, v29);
      v21 = v28;
      sub_2199EF84C(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_2199EF8B4(v9, v20);
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

uint64_t sub_2199EF518(uint64_t a1)
{
  v32 = sub_219BEE914();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchLayoutSectionDescriptor.Decoration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v36 = MEMORY[0x277D84F90];
    sub_218C35B30(0, v11, 0);
    v12 = v36;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v29 = (v2 + 32);
    v30 = v14;
    v15 = (v2 + 8);
    do
    {
      sub_2199EF84C(v13, v10, type metadata accessor for SearchLayoutSectionDescriptor.Decoration);
      v16 = v31;
      sub_2199EF84C(v10, v31, type metadata accessor for SearchLayoutSectionDescriptor.Decoration);
      v17 = v16;
      v18 = v32;
      (*v29)(v4, v17, v32);
      sub_219BEE8F4();
      (*v15)(v4, v18);
      sub_2199EF8B4(v10, type metadata accessor for SearchLayoutSectionDescriptor.Decoration);
      v36 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C35B30((v19 > 1), v20 + 1, 1);
      }

      v21 = v34;
      v22 = v35;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v24 = MEMORY[0x28223BE20](v23);
      v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_218DD76AC(v20, v26, &v36, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v12 = v36;
      v13 += v30;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_2199EF84C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199EF8B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2199EF914()
{
  result = qword_27CC223C8;
  if (!qword_27CC223C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC223C8);
  }

  return result;
}

id sub_2199EF978(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE7784();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2199F36A4(0, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = sub_219BE15B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDD0A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v27[0] = v16;
  v27[2] = a1;
  sub_219BEA7B4();
  if (v29)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v9 + 104))(v11, *MEMORY[0x277D2F4F0], v8);
      sub_219BDD094();
      (*(v9 + 8))(v11, v8);

      sub_219BDD204();

      (*(v13 + 8))(v15, v12);
    }
  }

  else
  {
    sub_2187461FC(v28, sub_21880702C);
  }

  sub_219BE7DC4();
  sub_2199F0B20(a2, v7);
  v17 = type metadata accessor for CampaignRouteModel();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  sub_2199F33C0(v7);
  v18 = sub_2199F3824(v7, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
  MEMORY[0x28223BE20](v18);
  v19 = v27[1];
  v27[-4] = a2;
  v27[-3] = v19;
  sub_219BE7774();
  v26 = &v27[-6];
  v20 = sub_219BE7D74();
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 1)
  {
    [v20 setModalPresentationStyle_];
  }

  v23 = sub_219BEA784();
  v24 = v20;
  v23();

  return v24;
}

uint64_t sub_2199EFE20@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v21 = a2;
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDD0A4();
  v17 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  v18 = *(a1 + 17);
  v19 = v13;
  v14 = a1[3];
  v15 = a1[4];
  v20 = v14;
  sub_2187C5110();
  sub_219BEA7B4();
  if (v27)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v5 + 104))(v7, *MEMORY[0x277D2F458], v4);
      sub_219BDD094();
      (*(v5 + 8))(v7, v4);
      sub_219BDD204();

      (*(v17 + 8))(v10, v8);
    }
  }

  else
  {
    sub_2187461FC(v26, sub_21880702C);
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2186C709C(0, qword_280ECB480);
  result = sub_219BE1E34();
  if (v25)
  {
    sub_2186CB1F0(&v22, v26);
    __swift_project_boxed_opaque_existential_1(v26, v27);
    *&v22 = v11;
    *(&v22 + 1) = v12;
    v23 = v19;
    v24 = v18;

    sub_2196CB3D0(&v22, v20, v15, v21);

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2199F0118()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    __swift_project_boxed_opaque_existential_1((v0 + 280), *(v0 + 304));
    v3 = sub_219BE46B4();
    v4 = [v2 traitCollection];
    v5 = [v4 verticalSizeClass];

    v6 = [v2 traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v5 == 1)
    {
      if ((v7 - 1) >= 2)
      {
LABEL_7:
        v9 = 2;
LABEL_11:
        [v3 setModalPresentationStyle_];

        return v3;
      }
    }

    else if (v5 != 2 || v7 != 1)
    {
      goto LABEL_7;
    }

    v9 = 4;
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_2199F0234(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = type metadata accessor for WebLinkRouteModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a2;
  v8 = a2[1];
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2186C709C(0, &qword_280E95828);
  sub_219BE1E34();
  if (!v21)
  {
    sub_2187461FC(&v20, sub_2199F3880);
    return 0;
  }

  sub_2186CB1F0(&v20, v23);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  type metadata accessor for NewsletterManagementTrackingObserver();
  v10 = sub_219BE1E24();
  if (!v8)
  {
    v9 = 0;
  }

  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  if (v10)
  {
    v11 = &off_282A47370;
  }

  else
  {
    v11 = 0;
  }

  sub_218FEB4D0(v9, v8, v10, v11, v7);

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2186C709C(0, &qword_280ECF828);
  result = sub_219BE1E34();
  if (v19)
  {
    sub_2186CB1F0(&v18, &v20);
    v13 = v21;
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    v15 = (*(v14 + 8))(v7, v13, v14);
    sub_2187C5110();
    v16 = sub_219BEA784();
    v16(v15);

    sub_2187461FC(v7, type metadata accessor for WebLinkRouteModel);
    __swift_destroy_boxed_opaque_existential_1(&v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2199F04B8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2186C709C(0, &qword_27CC223D8);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v4 = sub_219BE4704();

    __swift_destroy_boxed_opaque_existential_1(v7);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_2199F05A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_219BE3CA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_219BE15B4();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDD0A4();
  v27 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v30 = Strong;
  sub_2187C5110();
  v29 = v15;
  v31 = a1;
  sub_219BEA7B4();
  if (v36)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      v26[1] = v33;
      v16 = v28;
      (*(v28 + 104))(v10, *MEMORY[0x277D2F4E8], v8);
      sub_219BDD094();
      (*(v16 + 8))(v10, v8);
      sub_219BDD204();

      (*(v27 + 8))(v13, v11);
    }
  }

  else
  {
    sub_2187461FC(v35, sub_21880702C);
  }

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2186C709C(0, &qword_27CC223E0);
  (*(v6 + 16))(v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v18, v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_219BE1E14();

  if (v34)
  {
    sub_2186CB1F0(&v33, v35);
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v17 = sub_219BE3C74();
    v21 = v30;
    v22 = [v30 traitCollection];
    v23 = [v22 userInterfaceIdiom];

    if (v23 == 1)
    {
      v24 = 2;
    }

    else
    {
      v24 = 4;
    }

    [v17 setModalPresentationStyle_];
    v25 = sub_219BEA784();
    v25(v17);

    __swift_destroy_boxed_opaque_existential_1(v35);
    return v17;
  }

  __break(1u);
  return result;
}

void sub_2199F0A08(void *a1, void *a2)
{
  sub_219BE87C4();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a2;
    v7 = [a1 presentationController];
    if (v7)
    {
      v8 = v7;
      [v7 setDelegate_];
    }
  }

  sub_219BE4664();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v13 = a2;
    v11 = [a1 presentationController];
    if (v11)
    {
      v12 = v11;
      [v11 setDelegate_];
    }
  }
}

uint64_t sub_2199F0B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CampaignRouteModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2199F0B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a6;
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v29 = a2;
  sub_2187C5110();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = type metadata accessor for CampaignRouteModel();
  v25 = *(v13 - 8);
  v14 = *(v25 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a5;
  v33 = a6;
  sub_219BE40F4();
  sub_219BE3204();
  sub_2187D9028();
  v16 = sub_219BF66A4();
  sub_2199F0B20(a5, v15);
  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v10);
  v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v18 = (v14 + *(v11 + 80) + v17) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_21899068C(v15, v19 + v17);
  (*(v11 + 32))(v19 + v18, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v20 = (v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v29;
  *v20 = v28;
  v20[1] = v21;
  type metadata accessor for Router();

  sub_219BE2F94();

  v22 = swift_allocObject();
  *(v22 + 16) = v30;
  *(v22 + 24) = v31;

  v23 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2199F0E7C(void *a1, uint64_t a2)
{
  v4 = sub_219BE40B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[1];
  if (v9)
  {
    *v8 = *a1;
    v8[1] = v9;
    v10 = MEMORY[0x277D34F48];
  }

  else
  {
    v10 = MEMORY[0x277D34F40];
  }

  (*(v5 + 104))(v8, *v10, v4, v6);
  __swift_project_boxed_opaque_existential_1((a2 + 408), *(a2 + 432));

  v11 = sub_219BE42B4();
  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_2199F0FCC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v102 = a6;
  v103 = a5;
  v101 = a4;
  v114 = a3;
  v104 = a1;
  v98 = sub_219BE4414();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199F36A4(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v81 - v9;
  sub_2199F36A4(0, &qword_280EE6350, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v81 - v11;
  v89 = sub_219BE40A4();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199F36A4(0, &qword_280EE8008, MEMORY[0x277D2F280]);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = &v81 - v14;
  v93 = sub_219BE3EE4();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE4574();
  v109 = *(v16 - 8);
  v110 = v16;
  MEMORY[0x28223BE20](v16);
  v87 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v107 = (&v81 - v19);
  v108 = sub_219BE40E4();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BE0484();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v85 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v112 = type metadata accessor for CampaignRouteModel();
  v84 = *(v112 - 8);
  v25 = *(v84 + 64);
  MEMORY[0x28223BE20](v112);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BE40D4();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v111 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BE40F4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v51 = sub_219BE7DB4();
    sub_2199F37DC(&qword_27CC0D7F0, MEMORY[0x277D6DD70]);
    swift_allocError();
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D6DD50], v51);
    return swift_willThrow();
  }

  (*(v29 + 16))(v31, v104, v28);
  v33 = (*(v29 + 88))(v31, v28);
  if (v33 != *MEMORY[0x277D34F58])
  {
    if (v33 != *MEMORY[0x277D34F50])
    {
LABEL_36:
      result = sub_219BF78E4();
      __break(1u);
      return result;
    }

    (*(v29 + 96))(v31, v28);
    (*(v106 + 32))(v105, v31, v108);
    v54 = v112;
    v55 = *(v114 + *(v112 + 32));
    v56 = sub_219BF59E4();
    v57 = (v109 + 104);
    if (v56)
    {
      if ((sub_219BF5A04() & 1) == 0)
      {
        if (sub_219BF59F4())
        {
          v60 = MEMORY[0x277D351E0];
        }

        else
        {
          v60 = MEMORY[0x277D351D0];
        }

        (*v57)(v107, *v60, v110);
LABEL_23:
        v61 = sub_2199F2578();
        if (v62)
        {
          v63 = v61;
        }

        else
        {
          v63 = 0;
        }

        v111 = v63;
        v64 = 0xE000000000000000;
        if (v62)
        {
          v64 = v62;
        }

        v104 = v64;
        v65 = (v114 + *(v54 + 28));
        v66 = v65[1];
        v101 = *v65;
        v100 = v66;

        v67 = v86;
        sub_218ED26E0(v55, v86);
        v68 = sub_219BE14A4();
        v69 = *(v68 - 8);
        if ((*(v69 + 48))(v67, 1, v68) == 1)
        {
          sub_2199F3824(v67, &qword_280EE8008, MEMORY[0x277D2F280]);
        }

        else
        {
          v70 = sub_219BE1474();
          v72 = v71;
          (*(v69 + 8))(v67, v68);
          if (v72)
          {
            v73 = v112;
            v99 = v70;
            v86 = v72;
LABEL_33:
            v75 = v109;
            v74 = v110;
            v76 = v107;
            (*(v109 + 16))(v87, v107, v110);
            (*(v88 + 104))(v92, *MEMORY[0x277D34F38], v89);
            sub_2199F38EC(v114 + *(v73 + 40), v94, &qword_280EE6350, MEMORY[0x277D35078]);
            v77 = sub_219BDB954();
            (*(*(v77 - 8) + 56))(v95, 1, 1, v77);
            (*(v96 + 104))(v97, *MEMORY[0x277D350C0], v98);

            v78 = v90;
            sub_219BE3E64();
            v79 = v105;
            v80 = sub_2199F2908(v105, v78, v113);
            v103();

            (*(v91 + 8))(v78, v93);
            (*(v75 + 8))(v76, v74);
            return (*(v106 + 8))(v79, v108);
          }
        }

        v99 = 0;
        v86 = 0xE000000000000000;
        v73 = v112;
        goto LABEL_33;
      }

      v58 = MEMORY[0x277D35170];
    }

    else
    {
      v58 = MEMORY[0x277D351D0];
    }

    (*v57)(v107, *v58, v110);
    goto LABEL_23;
  }

  (*(v29 + 96))(v31, v28);
  v35 = *v31;
  v34 = v31[1];
  sub_2193D4BA0();
  (*(v99 + 32))(v111, v31 + *(v36 + 48), v100);
  v37 = v114;
  v105 = v35;
  v106 = v34;
  v107 = sub_2199F1FF0(v114, v35, v34);
  v38 = v113[6];
  v109 = v113[5];
  v110 = v38;
  v113 = __swift_project_boxed_opaque_existential_1(v113 + 2, v109);
  v108 = sub_2186C709C(0, &qword_280EE8B10);
  sub_2199F0B20(v37, &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v23;
  v40 = *(v23 + 16);
  v41 = v85;
  v40(&v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v101, v85);
  v42 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v43 = (v25 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v39 + 80) + v43 + 8) & ~*(v39 + 80);
  v45 = swift_allocObject();
  v46 = v45 + v42;
  v47 = v107;
  sub_21899068C(v26, v46);
  *(v45 + v43) = v47;
  (*(v39 + 32))(v45 + v44, &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v41);

  sub_219BE1E14();

  if (!v116)
  {
    __break(1u);
    goto LABEL_36;
  }

  sub_2186CB1F0(&v115, v117);
  sub_219BEA7B4();
  v48 = v112;
  if (v116)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      sub_219BDD224();
      if (*(v114 + *(v48 + 28) + 8))
      {

        v49 = v81;
        sub_219BE0474();
        sub_2199F37DC(&unk_280EE83F0, MEMORY[0x277D2E550]);
        v50 = v83;
        sub_219BDD1F4();

        (*(v82 + 8))(v49, v50);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_2187461FC(&v115, sub_21880702C);
  }

  __swift_project_boxed_opaque_existential_1(v117, v117[3]);
  sub_219BE40C4();
  v59 = sub_219BDE854();

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    sub_219BE87A4();
    swift_unknownObjectRelease();
  }

  (v103)(v59);

  (*(v99 + 8))(v111, v100);
  return __swift_destroy_boxed_opaque_existential_1(v117);
}

void *sub_2199F1FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE3D94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(type metadata accessor for CampaignRouteModel() + 32));
  if (sub_219BF5A04())
  {
  }

  else
  {
    *v9 = a2;
    *(v9 + 1) = a3;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
    *(v9 + 3) = 0u;
    (*(v7 + 104))(v9, *MEMORY[0x277D34DF8], v6);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2191F999C(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_2191F999C(v11 > 1, v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    (*(v7 + 32))(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v9, v6);
  }

  return v10;
}

uint64_t sub_2199F21A8(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a4;
  v23 = a3;
  v26 = MEMORY[0x277D35078];
  sub_2199F36A4(0, &qword_280EE6350, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  sub_2199F36A4(0, &qword_280EE8AE0, MEMORY[0x277D30210]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v22 = sub_219BDDD44();
  v27 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CampaignRouteModel();
  v14 = v13[5];
  v15 = sub_219BDE924();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v10, a2 + v14, v15);
  (*(v16 + 56))(v10, 0, 1, v15);
  v21 = *(a2 + v13[6]);
  sub_2199F38EC(a2 + v13[10], v7, &qword_280EE6350, v26);
  v26 = a2;

  v17 = v22;
  v18 = v12;
  v19 = v24;
  sub_219BDDD34();
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_219BE1BA4();
  sub_2187C5110();
  sub_219BEA7B4();
  if (v29)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      sub_219BE1B94();
    }
  }

  else
  {
    sub_2187461FC(v28, sub_21880702C);
  }

  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_219BDD4D4();
  sub_219BE1B64();
  return (*(v27 + 8))(v18, v17);
}

uint64_t sub_2199F2578()
{
  sub_2199F36A4(0, &qword_280EE64A0, MEMORY[0x277D34D78]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  sub_2199F36A4(0, &qword_280EE6200, MEMORY[0x277D35380]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_219BE4864();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v21 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  if (v22)
  {
    swift_getObjectType();
    v11 = *MEMORY[0x277D34D58];
    v12 = sub_219BE3D64();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v3, v11, v12);
    (*(v13 + 56))(v3, 0, 1, v12);
    sub_219BE3F24();
    sub_2199F3824(v3, &qword_280EE64A0, MEMORY[0x277D34D78]);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      swift_unknownObjectRelease();
      sub_2199F3824(v6, &qword_280EE6200, MEMORY[0x277D35380]);
    }

    else
    {
      v14 = v21;
      (*(v8 + 32))(v21, v6, v7);
      v15 = sub_219BE4854();
      if (v15)
      {
        v16 = v15;
        v17 = sub_219BF5FD4();
        v19 = v18;
        swift_unknownObjectRelease();

        (*(v8 + 8))(v14, v7);
        if (v19)
        {
          return v17;
        }
      }

      else
      {
        (*(v8 + 8))(v14, v7);
        swift_unknownObjectRelease();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199F2908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v59 = a1;
  v60 = a2;
  sub_2199F36A4(0, &unk_280EE6490, MEMORY[0x277D34E88]);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v54 - v4;
  sub_2199F36A4(0, &qword_280EE64A0, MEMORY[0x277D34D78]);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v54 - v6;
  v62 = sub_219BDB954();
  v7 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199F36A4(0, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - v10;
  v12 = sub_219BE3EE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE3D64();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v57 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE4864();
  v63 = *(v18 - 8);
  v64 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BE40E4();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v59, v21, v23);
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 == *MEMORY[0x277D34F68])
  {
    (*(v22 + 96))(v25, v21);
    (*(v7 + 32))(v61, v25, v62);
    v27 = v56;
    v16[7](v56, 1, 1, v15);
    v28 = v55;
    (*(v13 + 16))(v55, v60, v12);
    (*(v13 + 56))(v28, 0, 1, v12);
    __swift_project_boxed_opaque_existential_1((v65 + 240), *(v65 + 264));
    v29 = type metadata accessor for CampaignRouteModel();
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    sub_2199F33C0(v11);
    sub_2199F3824(v11, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
    v30 = v61;
    v31 = sub_219BE4674();

    sub_2199F3824(v28, &unk_280EE6490, MEMORY[0x277D34E88]);
    sub_2199F3824(v27, &qword_280EE64A0, MEMORY[0x277D34D78]);
    (*(v7 + 8))(v30, v62);
    return v31;
  }

  v61 = v16;
  v62 = v13;
  v32 = v15;
  v33 = v60;
  if (v26 == *MEMORY[0x277D34F60])
  {
    (*(v22 + 96))(v25, v21);
    v34 = v25;
    v35 = v20;
    (*(v63 + 32))(v20, v34, v64);
    v36 = v12;
    v37 = v11;
    if (sub_219BE4804())
    {
      v38 = v62;
    }

    else
    {
      v39 = sub_219BE47A4();
      v40 = v32;
      v38 = v62;
      if ((v39 & 1) == 0)
      {
LABEL_17:
        v54 = v40;
        v46 = sub_219BE4814();
        v47 = *MEMORY[0x277D34D60];
        v48 = v61;
        v49 = *(v61 + 13);
        v62 = v35;
        v50 = v57;
        v49(v57, v47, v40);
        v51 = v58;
        (*(v38 + 16))(v58, v33, v36);
        v52 = type metadata accessor for CampaignRouteModel();
        (*(*(v52 - 8) + 56))(v37, 1, 1, v52);
        sub_2199F33C0(v37);
        sub_2199F3824(v37, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
        __swift_project_boxed_opaque_existential_1((v65 + 240), *(v65 + 264));
        v31 = sub_219BE4684();

        (*(v38 + 8))(v51, v36);
        (*(v48 + 1))(v50, v54);
        (*(v63 + 8))(v62, v64);
        return v31;
      }

      v41 = [*(v65 + 360) possiblyUnfetchedAppConfiguration];
      if ([v41 respondsToSelector_])
      {
        v42 = [v41 paidBundleConfig];
        swift_unknownObjectRelease();
        v43 = [v42 offeredBundlePurchaseIDs];

        if (v43)
        {
          v44 = sub_219BF5924();

          if (*(v44 + 16))
          {
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      sub_219BE47E4();
      if (v45)
      {
      }

      v38 = v62;
      sub_219BE3E84();
    }

    sub_219BE3EA4();
    v40 = v32;
    goto LABEL_17;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

void sub_2199F320C(void *a1, void (*a2)(void *))
{
  v4 = sub_219BE7DB4();
  sub_2199F37DC(&qword_27CC0D7F0, MEMORY[0x277D6DD70]);
  v5 = swift_allocError();
  v7 = v6;
  v6[3] = sub_219BDE254();
  v7[4] = sub_2199F37DC(&qword_27CC0D7F8, MEMORY[0x277D2FEF0]);
  __swift_allocate_boxed_opaque_existential_1(v7);
  v8 = a1;
  sub_219BDE224();
  (*(*(v4 - 8) + 104))(v7, *MEMORY[0x277D6DD60], v4);
  a2(v5);
}

uint64_t sub_2199F3368(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE3CA4();
  return sub_219BE1BA4();
}

unint64_t sub_2199F33C0(uint64_t a1)
{
  v2 = 0xD000000000000013;
  sub_2199F36A4(0, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v10 - v4);
  sub_2199F38EC(a1, v10 - v4, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
  v6 = type metadata accessor for CampaignRouteModel();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_2199F3824(v5, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
  }

  else
  {
    v8 = *v5;
    v7 = v5[1];

    sub_2187461FC(v5, type metadata accessor for CampaignRouteModel);
    if (v7)
    {
      v10[0] = 0xD000000000000014;
      v10[1] = 0x8000000219D447E0;
      MEMORY[0x21CECC330](v8, v7);

      return v10[0];
    }
  }

  return v2;
}

uint64_t sub_2199F3584(unint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for CampaignRouteModel() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_2187C5110();
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = v2 + ((*(*(v8 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2199F0FCC(a1, a2, v2 + v6, v2 + v9, *v10, *(v10 + 8));
}

void sub_2199F36A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2199F36F8(void *a1)
{
  v3 = *(type metadata accessor for CampaignRouteModel() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2187C5110();
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80));

  return sub_2199F21A8(a1, (v1 + v4), v7, v8);
}

uint64_t sub_2199F37DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2199F3824(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2199F36A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2199F3880()
{
  if (!qword_27CC223D0)
  {
    sub_2186C709C(255, &qword_280E95828);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC223D0);
    }
  }
}

uint64_t sub_2199F38EC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2199F36A4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2199F3958(void *a1)
{
  sub_219BE3CA4();

  return sub_2199F3368(a1);
}

uint64_t type metadata accessor for TagFeedViewerLinkPresentation()
{
  result = qword_280EAE508;
  if (!qword_280EAE508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2199F3A3C()
{
  sub_218A35748();
  if (v0 <= 0x3F)
  {
    sub_219BE7A24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2199F3AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_219BDB5E4();
  v8 = v7;

  v9 = *(type metadata accessor for TagFeedViewerLinkPresentation() + 28);
  v10 = *MEMORY[0x277D6DC20];
  v11 = sub_219BE7A24();
  (*(*(v11 - 8) + 104))(a2 + v9, v10, v11);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = 1;
  *(a2 + 24) = a1;
}

uint64_t sub_2199F3C1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for FollowingDislikedModule();
    v7 = objc_allocWithZone(v6);
    sub_218718690(v10, &v7[OBJC_IVAR____TtC7NewsUI223FollowingDislikedModule_resolver]);
    *&v7[OBJC_IVAR____TtC7NewsUI223FollowingDislikedModule_tracker] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v6;
    a2[4] = &off_282A5DDC0;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199F3CF4()
{
  type metadata accessor for FollowingDislikedViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC223E8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC223F0);
  sub_219BE2914();
  type metadata accessor for FollowingDislikedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC223F8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22400);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22408);
  sub_219BE2914();

  type metadata accessor for FollowingDislikedModifierFactory();
  sub_219BE2904();

  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  sub_219BE2904();

  sub_2199F8DE4();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2199F971C();
  sub_219BE2904();

  sub_2199F8EF0();
  sub_219BE2904();

  sub_2199F9304(0, &qword_27CC224A8, sub_218CB61D8, sub_218F97C70, MEMORY[0x277D6E7B0]);
  sub_219BE2904();

  sub_2199F9304(0, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
  sub_219BE2904();

  type metadata accessor for FollowingDislikedLayoutBuilder();
  sub_219BE2904();

  sub_2199F991C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2199F8FBC();
  sub_219BE2904();

  sub_2199F9A70();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();

  sub_2199F9138();
  sub_219BE2904();

  sub_2199F9438();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2199F95B4();
  sub_219BE2904();

  type metadata accessor for FollowingDislikedViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EB09B0);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280EA9380);
  sub_219BE2914();

  type metadata accessor for FollowingDislikedViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_2199F9EC4(0, &qword_27CC224D0, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_2199F9B94(0, &qword_27CC224D8, MEMORY[0x277D6EB70]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280EE3A98);
  sub_219BE2914();

  sub_2199F9B94(0, &qword_27CC224E0, MEMORY[0x277D6EB00]);
  sub_219BE2904();

  sub_219BEBB84();
  sub_219BE2914();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC224E8);
  sub_219BE2914();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2199F9CA8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
}

uint64_t sub_2199F481C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC223E8);
  result = sub_219BE1E34();
  if (!v23)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC223F8);
  result = sub_219BE1E34();
  v3 = v20;
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F991C();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v6);
    v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v18 = type metadata accessor for FollowingDislikedStyler();
    v19 = &off_282A5BCB0;
    v17[0] = v10;
    v11 = objc_allocWithZone(type metadata accessor for FollowingDislikedViewController());
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_2199FA0A0(*v14, v3, v4, v5, v11);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2199F4ADC@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v10 = sub_218704150(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for FollowingDislikedStyler();
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
    a2[4] = &off_282A5BCB0;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199F4D3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CF94C();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for FollowingDislikedRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A44A50;
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

void sub_2199F4E38(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowingDislikedViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2199F4EB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22400);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC223F0);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC224E8);
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
    v15 = sub_2199FA2CC(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A65E40;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2199F5168@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22408);
  result = sub_219BE1E34();
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F8DE4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingDislikedModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218704150(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219BE89E4();
    swift_allocObject();
    v7 = sub_219BE8994();
    sub_2199FA00C();
    v8 = swift_allocObject();
    v8[3] = 0;
    swift_unknownObjectWeakInit();
    v8[4] = v5;
    v8[5] = v6;
    v8[6] = v10;
    v8[7] = v11;
    v8[8] = v7;
    *(v10 + 24) = &off_282A3ECB0;
    swift_unknownObjectWeakAssign();
    sub_218704150(&qword_27CC22560, sub_2199FA00C);

    swift_unknownObjectRetain();

    sub_219BE6F14();
    swift_unknownObjectRelease();

    *a2 = v8;
    a2[1] = &off_282A3ECC0;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2199F544C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v5 = v14;
  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v7 = v12;
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (v11)
  {
    type metadata accessor for FollowingDislikedDataManager();
    v9 = swift_allocObject();
    v9[3] = 0;
    swift_unknownObjectWeakInit();
    v9[4] = v5;
    v9[5] = v6;
    v9[6] = v7;
    v9[7] = v8;
    result = sub_2186CB1F0(&v10, (v9 + 8));
    *a2 = v9;
    a2[1] = &off_282AA0C60;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2199F55D4()
{
  type metadata accessor for FollowingDislikedModifierFactory();

  return swift_allocObject();
}

uint64_t sub_2199F5608()
{
  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  swift_allocObject();
  return sub_219BE6F94();
}

uint64_t sub_2199F565C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2199F8EF0();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2199F8DE4();
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

uint64_t sub_2199F5758(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D6E728];
  sub_2199F9F88(0, &qword_27CC22530, MEMORY[0x277D6E728]);
  swift_allocObject();
  sub_219BE96E4();
  sub_2199F9F88(0, &qword_27CC22538, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_2199F9DB4(&qword_27CC22540, &qword_27CC22530, v3);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2199F971C();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_218704150(&qword_27CC22548, sub_2199F971C);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199F5910(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9304(0, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingDislikedLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9304(0, &qword_27CC224A8, sub_218CB61D8, sub_218F97C70, MEMORY[0x277D6E7B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_2199F971C();
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2199F5B70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F8FBC();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_2199F8EF0();
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

uint64_t sub_2199F5C70()
{
  sub_2199F9304(0, &qword_27CC224A8, sub_218CB61D8, sub_218F97C70, MEMORY[0x277D6E7B0]);
  swift_allocObject();
  return sub_219BE9964();
}

uint64_t sub_2199F5CEC()
{
  sub_2199F9304(0, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
  swift_allocObject();
  return sub_219BE8554();
}

uint64_t sub_2199F5D68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9A130);
  result = sub_219BE1E34();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280E9E4D0);
    result = sub_219BE1E34();
    if (v32)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v26[2] = v26;
      MEMORY[0x28223BE20](v3);
      v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v26[1] = v26;
      MEMORY[0x28223BE20](v7);
      v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v5;
      v12 = *v9;
      v13 = type metadata accessor for TitleViewLayoutAttributesFactory();
      v30[3] = v13;
      v30[4] = &off_282A72438;
      v30[0] = v11;
      v14 = type metadata accessor for TagViewLayoutAttributesFactory();
      v28 = v14;
      v29 = &off_282A3D208;
      v27[0] = v12;
      type metadata accessor for FollowingDislikedLayoutBuilder();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v13);
      MEMORY[0x28223BE20](v16);
      v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18);
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      MEMORY[0x28223BE20](v20);
      v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v18;
      v25 = *v22;
      v15[5] = v13;
      v15[6] = &off_282A72438;
      v15[2] = v24;
      v15[10] = v14;
      v15[11] = &off_282A3D208;
      v15[7] = v25;
      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v33);
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

uint64_t sub_2199F6174(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F8FBC();
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
  sub_2199F9EC4(0, &qword_27CC224D0, MEMORY[0x277D6E388]);
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
    sub_218704150(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_2199F991C();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2199F64AC()
{
  v0 = sub_219BE8FC4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E3C8]);
  return sub_219BE86C4();
}

uint64_t sub_2199F657C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9A70();
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199F6638(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9138();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9438();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F95B4();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2199F8FBC();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2199F67A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2199F9B94(0, &qword_27CC224E0, MEMORY[0x277D6EB00]);
    result = sub_219BE1DE4();
    if (result)
    {
      sub_2199F9A70();
      v4 = objc_allocWithZone(v3);
      return sub_219BEA524();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2199F68AC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    v4 = v3;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280EE3DE0);
    sub_219BE1DF4();
    if (v5)
    {
      sub_219BEA534();
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2199F69CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F8FBC();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_219BE7BC4();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_2186CB1F0(&v12, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_219BE7BC4();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3A98);
  result = sub_219BE1DF4();
  if (v11)
  {
    sub_2186CB1F0(&v10, &v12);
    sub_218718690(v14, v9);
    v6 = swift_allocObject();
    sub_2186CB1F0(v9, v6 + 16);
    *(v6 + 56) = v5;
    sub_219BE95A4();
    swift_allocObject();
    v7 = sub_219BE9594();
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = MEMORY[0x277D6E690];
    *a2 = v7;
    a2[1] = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}