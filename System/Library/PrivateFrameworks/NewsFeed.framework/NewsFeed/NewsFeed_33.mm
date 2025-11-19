void sub_1D5E3A990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E3A7E4();
    v7 = a3(a1, &type metadata for FeedGroupClusteringKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5E3A9F4()
{
  result = qword_1EDF141F0;
  if (!qword_1EDF141F0)
  {
    sub_1D5B49CBC(255, &qword_1EDF141F8);
    sub_1D5E3AA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF141F0);
  }

  return result;
}

unint64_t sub_1D5E3AA7C()
{
  result = qword_1EDF14208;
  if (!qword_1EDF14208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14208);
  }

  return result;
}

uint64_t sub_1D5E3AAD0(uint64_t a1, unint64_t *a2)
{
  sub_1D5B49CBC(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D5E3AB2C()
{
  result = qword_1EDF13EE8;
  if (!qword_1EDF13EE8)
  {
    sub_1D5E3B700(255, &qword_1EDF13EF0, sub_1D5E3A88C);
    sub_1D5BABC48(&qword_1EDF13F08, sub_1D5E3A88C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13EE8);
  }

  return result;
}

BOOL _s8NewsFeed0B20GroupClusteringKnobsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 7);
  v58[4] = *(a1 + 6);
  v58[5] = v6;
  v7 = a1[17];
  v59 = a1[16];
  v8 = *(a1 + 3);
  v58[0] = *(a1 + 2);
  v58[1] = v8;
  v9 = *(a1 + 5);
  v58[2] = *(a1 + 4);
  v58[3] = v9;
  v11 = a1[18];
  v10 = a1[19];
  v12 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v61 = a2[16];
  v16 = *(a2 + 7);
  v60[4] = *(a2 + 6);
  v60[5] = v16;
  v17 = *(a2 + 5);
  v60[2] = *(a2 + 4);
  v60[3] = v17;
  v18 = *(a2 + 3);
  v60[0] = *(a2 + 2);
  v60[1] = v18;
  if (*(v2 + 16) != *(v12 + 16))
  {
    return 0;
  }

  v36 = a2[17];
  v35 = a2[18];
  v34 = a2[19];
  if ((sub_1D635E760(*(v2 + 24), *(v12 + 24)) & 1) == 0 || *(v3 + 16) != *(v13 + 16) || (sub_1D635E760(*(v3 + 24), *(v13 + 24)) & 1) == 0 || (sub_1D6EC6FAC(v4, v15) & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v14)
    {
      return 0;
    }

    v20 = *(v5 + 16);
    v21 = *(v14 + 16);

    if ((sub_1D635DC08(v20, v21) & 1) == 0)
    {
      goto LABEL_16;
    }

    v22 = sub_1D635DA1C(*(v5 + 24), *(v14 + 24));

    v23 = a1;
    v24 = a2;
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = a1;
    v24 = a2;
    if (v14)
    {
      return 0;
    }
  }

  v25 = *&v58[0];
  v26 = *&v60[0];
  if (!*&v58[0])
  {
    if (!*&v60[0])
    {
      *v50 = 0;
      *&v50[40] = *(v23 + 9);
      *&v50[56] = *(v23 + 11);
      *&v50[72] = *(v23 + 13);
      *&v50[88] = *(v23 + 15);
      *&v50[8] = *(v23 + 5);
      *&v50[24] = *(v23 + 7);
      sub_1D5E3A490(v58, &v43, &qword_1EDF141F8);
      sub_1D5E3A490(v60, &v43, &qword_1EDF141F8);
      sub_1D5E3AAD0(v50, &qword_1EDF141F8);
      goto LABEL_22;
    }

    sub_1D5E3A490(v58, v50, &qword_1EDF141F8);
    sub_1D5E3A490(v60, v50, &qword_1EDF141F8);
LABEL_20:
    *&v50[40] = *(a1 + 9);
    *&v50[56] = *(a1 + 11);
    *&v50[72] = *(a1 + 13);
    *&v50[88] = *(a1 + 15);
    *&v50[8] = *(a1 + 5);
    *&v50[24] = *(a1 + 7);
    *v50 = v25;
    v51 = v26;
    v28 = *(a2 + 7);
    v52 = *(a2 + 5);
    v53 = v28;
    v29 = *(a2 + 9);
    v30 = *(a2 + 11);
    v31 = *(a2 + 15);
    v56 = *(a2 + 13);
    v57 = v31;
    v54 = v29;
    v55 = v30;
    sub_1D5E3B754(v50, sub_1D5E3B7B4);
    return 0;
  }

  *v50 = *&v58[0];
  *&v50[8] = *(v23 + 5);
  *&v50[24] = *(v23 + 7);
  *&v50[40] = *(v23 + 9);
  *&v50[88] = *(v23 + 15);
  *&v50[72] = *(v23 + 13);
  *&v50[56] = *(v23 + 11);
  v43 = *v50;
  v44 = *&v50[16];
  v49 = *&v50[96];
  v47 = *&v50[64];
  v48 = *&v50[80];
  v45 = *&v50[32];
  v46 = *&v50[48];
  if (!*&v60[0])
  {
    *&v42[64] = *&v50[64];
    *&v42[80] = *&v50[80];
    *&v42[96] = *&v50[96];
    *v42 = *v50;
    *&v42[16] = *&v50[16];
    *&v42[32] = *&v50[32];
    *&v42[48] = *&v50[48];
    sub_1D5E3A490(v58, v40, &qword_1EDF141F8);
    sub_1D5E3A490(v60, v40, &qword_1EDF141F8);
    sub_1D5E3A490(v50, v40, &qword_1EDF141F8);
    sub_1D5E3B2DC(v42);
    goto LABEL_20;
  }

  *&v42[40] = *(v24 + 9);
  *&v42[56] = *(v24 + 11);
  *&v42[72] = *(v24 + 13);
  *&v42[88] = *(v24 + 15);
  *&v42[8] = *(v24 + 5);
  *&v42[24] = *(v24 + 7);
  *v42 = *&v60[0];
  sub_1D5E3A490(v58, v40, &qword_1EDF141F8);
  sub_1D5E3A490(v60, v40, &qword_1EDF141F8);
  sub_1D5E3A490(v50, v40, &qword_1EDF141F8);
  v27 = static FeedGroupGroupingRules.== infix(_:_:)(&v43, v42);
  v38[4] = *&v42[64];
  v38[5] = *&v42[80];
  v39 = *&v42[96];
  v38[0] = *v42;
  v38[1] = *&v42[16];
  v38[2] = *&v42[32];
  v38[3] = *&v42[48];
  sub_1D5E3B2DC(v38);
  v40[4] = v47;
  v40[5] = v48;
  v41 = v49;
  v40[0] = v43;
  v40[1] = v44;
  v40[2] = v45;
  v40[3] = v46;
  sub_1D5E3B2DC(v40);
  *v42 = v25;
  *&v42[40] = *(a1 + 9);
  *&v42[56] = *(a1 + 11);
  *&v42[72] = *(a1 + 13);
  *&v42[88] = *(a1 + 15);
  *&v42[8] = *(a1 + 5);
  *&v42[24] = *(a1 + 7);
  sub_1D5E3AAD0(v42, &qword_1EDF141F8);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  sub_1D72593CC();
  sub_1D5BABC48(&unk_1EDF188C0, MEMORY[0x1E69E34A8]);
  if ((sub_1D7261FBC() & 1) == 0 || (sub_1D635D780(*(v7 + *(*v7 + 120)), *(v36 + *(*v36 + 120))) & 1) == 0 || (sub_1D7261FBC() & 1) == 0 || (sub_1D635D780(*(v11 + *(*v11 + 120)), *(v35 + *(*v35 + 120))) & 1) == 0)
  {
    return 0;
  }

  if (!v10)
  {
    return !v34;
  }

  if (!v34)
  {
    return 0;
  }

  sub_1D725935C();
  sub_1D5BABC48(&qword_1EDF18920, MEMORY[0x1E69E3480]);

  if ((sub_1D7261FBC() & 1) == 0)
  {
LABEL_16:

    return 0;
  }

  v32 = sub_1D635D738(*(v10 + *(*v10 + 120)), *(v34 + *(*v34 + 120)));

  return (v32 & 1) != 0;
}

uint64_t sub_1D5E3B350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B18GroupGroupingRulesVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1D5E3B3FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1D5E3B444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D5E3B4C0()
{
  result = qword_1EC87FCE0;
  if (!qword_1EC87FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FCE0);
  }

  return result;
}

unint64_t sub_1D5E3B518()
{
  result = qword_1EDF13CF8;
  if (!qword_1EDF13CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13CF8);
  }

  return result;
}

unint64_t sub_1D5E3B570()
{
  result = qword_1EDF13D00;
  if (!qword_1EDF13D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13D00);
  }

  return result;
}

uint64_t sub_1D5E3B5C4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void sub_1D5E3B700(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5E3B754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5E3B7B4()
{
  if (!qword_1EC87FCE8[0])
  {
    sub_1D5B49CBC(255, &qword_1EDF141F8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EC87FCE8);
    }
  }
}

uint64_t sub_1D5E3B86C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(*v2 + 80);
  v9 = *(*v2 + 88);
  v10 = sub_1D5E327E0(v8, v9);
  sub_1D5F9628C(a1, 0, v10, v11, sub_1D5E32898, 0, v5, v6, v7, v8, v9);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v12 = sub_1D726275C();
  return sub_1D688A25C(v12, a2);
}

uint64_t FeedItemAuxiliaryItem.options.getter()
{
  type metadata accessor for FeedItemAuxiliaryItem();
}

uint64_t type metadata accessor for FeedItemAuxiliaryItem()
{
  result = qword_1EDF34888;
  if (!qword_1EDF34888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeedItemAuxiliaryItem.selectors.getter()
{
  type metadata accessor for FeedItemAuxiliaryItem();
}

void sub_1D5E3BAD4()
{
  type metadata accessor for FeedItem(319);
  if (v0 <= 0x3F)
  {
    sub_1D5B5AD98();
    if (v1 <= 0x3F)
    {
      sub_1D5B81B04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t SportsTaxonomyGraphManager.sportsTaxonomyGraph()()
{

  sub_1D725B96C();

  if (!v1)
  {
    return sub_1D725AD2C();
  }

  sub_1D5B5F744(0, &qword_1EDF17A40, type metadata accessor for SportsTaxonomyGraph, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D5E3BC5C()
{
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D725BAAC();

  v1 = sub_1D725B92C();
  sub_1D725BB7C();

  v2 = sub_1D725B92C();
  type metadata accessor for SportsTaxonomyGraph();
  sub_1D725BA9C();

  v3 = sub_1D725B92C();
  v4 = sub_1D725BACC();

  return v4;
}

uint64_t sub_1D5E3BDF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  sub_1D68DBC34(ObjectType, v7);

  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
}

uint64_t sub_1D5E3BE68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  return sub_1D68DBC34(ObjectType, v2);
}

uint64_t sub_1D5E3BEA8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  type metadata accessor for SportsTaxonomyGraph();
  swift_allocObject();

  v4 = sub_1D6FA3290(v8);
  if (!v1)
  {
    v8[0] = v4;
    v6 = v4;
    swift_retain_n();

    sub_1D725B97C();

    v8[0] = v6;
    sub_1D5B5F744(0, &qword_1EDF17A40, type metadata accessor for SportsTaxonomyGraph, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  return v5;
}

uint64_t sub_1D5E3BFC0()
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B5F744(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7273AE0;
  swift_getErrorValue();
  v1 = sub_1D726497C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D5B7E2C0();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_1D725C30C();
}

uint64_t SportsTaxonomyGraphManager.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SportsTaxonomyGraphManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall SportsTaxonomyGraphManager.sceneWillEnterForeground()()
{

  sub_1D725B97C();
}

uint64_t sub_1D5E3C2E0()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return sub_1D68DBAA0(ObjectType, v1);
}

uint64_t sub_1D5E3C3B8()
{
  ObjectType = swift_getObjectType();
  sub_1D5B542A8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = sub_1D726294C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = ObjectType;
  *(v0 + OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler_loadTask) = sub_1D6736BD4(0, 0, v5, &unk_1D72780B8, v8);
}

uint64_t sub_1D5E3C508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  sub_1D72620DC();
  v4[11] = swift_task_alloc();
  sub_1D5B542A8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = sub_1D72577EC();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_1D72585BC();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5E3C6E0, 0, 0);
}

uint64_t sub_1D5E3C6E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
    v19 = v0[12];
    v20 = v0[13];
    type metadata accessor for WebEmbedDatastoreURLSchemeHandler.Errors();
    sub_1D5E3E588();
    v16 = swift_allocError();
    (*(v20 + 56))(v21, 1, 6, v19);
    swift_willThrow();
    goto LABEL_14;
  }

  v2 = Strong;
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler_task;
  v0[24] = OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler_task;
  v10 = [*(Strong + v9) request];
  sub_1D725779C();

  sub_1D72577BC();
  (*(v6 + 8))(v5, v7);
  v11 = *(v4 + 48);
  if (v11(v8, 1, v3) == 1)
  {
    v12 = v0[19];
    v13 = v0[20];
    v14 = v0[12];
    v15 = v0[13];
    sub_1D5E3E404(v0[15]);
    type metadata accessor for WebEmbedDatastoreURLSchemeHandler.Errors();
    sub_1D5E3E588();
    v16 = swift_allocError();
    v18 = v17;
    (*(v13 + 56))(v17, 1, 1, v12);
    (*(v15 + 56))(v18, 0, 6, v14);
    swift_willThrow();

LABEL_14:
    v0[39] = v16;
    swift_beginAccess();
    v63 = swift_unknownObjectWeakLoadStrong();
    v0[40] = v63;
    if (v63)
    {
      sub_1D726290C();
      v0[41] = sub_1D72628FC();
      v64 = sub_1D726285C();
      v66 = v65;
      v67 = sub_1D5E3D810;
LABEL_16:

      return MEMORY[0x1EEE6DFA0](v67, v64, v66);
    }

    v68 = v0[1];

    return v68();
  }

  v22 = *(v0[20] + 32);
  v22(v0[22], v0[15], v0[19]);
  v23 = sub_1D72583DC();
  v25 = v24;
  if ((sub_1D726230C() & 1) == 0)
  {
    v43 = v0[22];
    v44 = v0[19];
    v45 = v0[20];
    v46 = v0[12];
    v47 = v0[13];

    type metadata accessor for WebEmbedDatastoreURLSchemeHandler.Errors();
    sub_1D5E3E588();
    v16 = swift_allocError();
    v49 = v48;
    (*(v45 + 16))(v48, v43, v44);
    (*(v45 + 56))(v49, 0, 1, v44);
    (*(v47 + 56))(v49, 0, 6, v46);
    swift_willThrow();

    (*(v45 + 8))(v43, v44);
    goto LABEL_14;
  }

  v95 = v22;
  v26 = sub_1D726221C();
  v27 = sub_1D5FD24A4(v26, v23, v25);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  MEMORY[0x1DA6F97E0](v27, v29, v31, v33);

  v34 = sub_1D72585FC();
  v36 = v35;

  v0[25] = v34;
  v0[26] = v36;
  if (v36 >> 60 == 15)
  {
    v37 = v0[22];
    v38 = v0[19];
    v39 = v0[20];
    v40 = v0[12];
    v41 = v0[13];
    type metadata accessor for WebEmbedDatastoreURLSchemeHandler.Errors();
    sub_1D5E3E588();
    v16 = swift_allocError();
    (*(v41 + 56))(v42, 5, 6, v40);
    swift_willThrow();

    (*(v39 + 8))(v37, v38);
    goto LABEL_14;
  }

  sub_1D72620CC();
  sub_1D726209C();
  if (!v50)
  {
    v54 = v0[22];
    v55 = v0[19];
    v56 = v0[20];
    v60 = v0[12];
    v61 = v0[13];
    type metadata accessor for WebEmbedDatastoreURLSchemeHandler.Errors();
    sub_1D5E3E588();
    v16 = swift_allocError();
    (*(v61 + 56))(v62, 6, 6, v60);
    goto LABEL_13;
  }

  v51 = v0[19];
  v52 = v0[14];
  sub_1D725855C();

  v53 = v11(v52, 1, v51);
  v54 = v0[22];
  if (v53 == 1)
  {
    v55 = v0[19];
    v56 = v0[20];
    v57 = v0[13];
    v58 = v0[12];
    sub_1D5E3E404(v0[14]);
    type metadata accessor for WebEmbedDatastoreURLSchemeHandler.Errors();
    sub_1D5E3E588();
    v16 = swift_allocError();
    (*(v57 + 56))(v59, 2, 6, v58);
LABEL_13:
    swift_willThrow();
    sub_1D5B952E4(v34, v36);

    (*(v56 + 8))(v54, v55);
    goto LABEL_14;
  }

  v95(v0[21], v0[14], v0[19]);
  sub_1D605A4CC(&unk_1F50F35F8);
  sub_1D5E3E5E0(&unk_1F50F3618);
  v69 = objc_allocWithZone(MEMORY[0x1E696AC68]);
  v70 = sub_1D725844C();
  v71 = sub_1D726203C();
  v72 = sub_1D7261D2C();

  v73 = [v69 initWithURL:v70 statusCode:200 HTTPVersion:v71 headerFields:v72];
  v0[27] = v73;

  if (!v73)
  {
    v87 = v0[21];
    v96 = v0[22];
    v88 = v0[19];
    v89 = v0[20];
    v90 = v0[12];
    v91 = v0[13];
    type metadata accessor for WebEmbedDatastoreURLSchemeHandler.Errors();
    sub_1D5E3E588();
    v16 = swift_allocError();
    (*(v91 + 56))(v92, 3, 6, v90);
    swift_willThrow();
    sub_1D5B952E4(v34, v36);

    v93 = *(v89 + 8);
    v93(v87, v88);
    v93(v96, v88);
    goto LABEL_14;
  }

  v74 = *&v2[OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler_assetManager];
  v75 = sub_1D725844C();
  v76 = [v74 assetHandleForURL:v75 lifetimeHint:0];
  v0[28] = v76;

  v77 = [v76 dataProvider];
  if (v77)
  {
    v78 = [v77 data];
    swift_unknownObjectRelease();
    if (v78)
    {
      v79 = sub_1D725867C();
      v81 = v80;

      v0[36] = v79;
      v0[37] = v81;
      sub_1D726290C();
      v0[38] = sub_1D72628FC();
      v64 = sub_1D726285C();
      v66 = v82;
      v67 = sub_1D5E3D618;
      goto LABEL_16;
    }
  }

  sub_1D5E3E698();
  swift_allocObject();
  v83 = sub_1D725B68C();
  v0[29] = v83;
  v84 = swift_task_alloc();
  v0[30] = v84;
  *(v84 + 16) = v76;
  *(v84 + 24) = v83;
  v85 = swift_task_alloc();
  v0[31] = v85;
  *v85 = v0;
  v85[1] = sub_1D5E3D084;
  v86 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE18](v0 + 8, &unk_1D72780C8, v84, sub_1D5E3E794, v83, 0, 0, v86);
}

uint64_t sub_1D5E3D084()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1D5E3D440;
  }

  else
  {

    v2 = sub_1D5E3D1A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5E3D1A0()
{

  *(v0 + 264) = *(v0 + 64);
  sub_1D726290C();
  *(v0 + 280) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D5E3D248, v2, v1);
}

uint64_t sub_1D5E3D248()
{

  if (sub_1D726299C())
  {
    v1 = sub_1D5E3E918;
  }

  else
  {
    v2 = *(v0[23] + v0[24]);
    [v2 didReceiveResponse_];
    v3 = sub_1D725865C();
    [v2 didReceiveData_];

    [v2 didFinish];
    v1 = sub_1D5E3D328;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D5E3D328()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  sub_1D5B952E4(v0[25], v0[26]);

  sub_1D5B952F8(v1, v2);
  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v5, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D5E3D440()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v16 = v0[22];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];

  sub_1D5B952E4(v4, v3);

  v9 = *(v6 + 8);
  v9(v7, v8);
  v9(v16, v8);
  v10 = v0[32];
  v0[39] = v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[40] = Strong;
  if (Strong)
  {
    sub_1D726290C();
    v0[41] = sub_1D72628FC();
    v13 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D5E3D810, v13, v12);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D5E3D618()
{

  if (sub_1D726299C())
  {
    v1 = sub_1D5E3E91C;
  }

  else
  {
    v2 = *(v0[23] + v0[24]);
    [v2 didReceiveResponse_];
    v3 = sub_1D725865C();
    [v2 didReceiveData_];

    [v2 didFinish];
    v1 = sub_1D5E3D6F8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D5E3D6F8()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  sub_1D5B952E4(v0[25], v0[26]);

  sub_1D5B952F8(v1, v2);
  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v5, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D5E3D810()
{

  if (sub_1D726299C())
  {
    v1 = sub_1D5E3E914;
  }

  else
  {
    v2 = *(*(v0 + 320) + OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler_task);
    v3 = sub_1D725828C();
    [v2 didFailWithError_];

    v1 = sub_1D5E3D8C0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D5E3D8C0()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5E3DA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5E3DA94, 0, 0);
}

uint64_t sub_1D5E3DA94()
{
  v2 = v0[13];
  v1 = v0[14];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D5E3DB40;
  v3 = swift_continuation_init();
  sub_1D5E3DC54(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D5E3DB40()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  else
  {
    **(*v0 + 96) = *(*v0 + 80);
  }

  v2 = *(v1 + 8);

  return v2();
}

void sub_1D5E3DC54(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a3;
  v13[4] = sub_1D5E3E798;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D5B6B06C;
  v13[3] = &block_descriptor_0;
  v8 = _Block_copy(v13);

  v9 = [a2 downloadIfNeededWithPriority:1 completion:v8];
  _Block_release(v8);
  if (MEMORY[0x1DA6F2D00]())
  {
    *(swift_allocObject() + 16) = a1;
    v10 = sub_1D725B92C();
    sub_1D725BA8C();

    *(swift_allocObject() + 16) = a1;
    v11 = sub_1D725B92C();
    sub_1D725BACC();

    *(swift_allocObject() + 16) = v9;
    swift_unknownObjectRetain();
    v12 = sub_1D725B92C();
    sub_1D725BBBC();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D5E3DEB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong dataProvider];
    if (v2)
    {
      v3 = [v2 data];
      swift_unknownObjectRelease();
      if (v3)
      {
        v4 = sub_1D725867C();
        v6 = v5;

        sub_1D725B67C();
        sub_1D5B952F8(v4, v6);
        return;
      }
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7 || (v8 = v7, v9 = [v7 downloadError], v8, !v9))
  {
    type metadata accessor for WebEmbedDatastoreURLSchemeHandler.Errors();
    sub_1D5E3E588();
    v9 = swift_allocError();
    v11 = v10;
    sub_1D5B542A8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    (*(*(v12 - 8) + 56))(v11, 4, 6, v12);
  }

  sub_1D725B65C();
}

uint64_t sub_1D5E3E068(void *a1, uint64_t a2)
{
  sub_1D5BA6EF4();
  v4 = swift_allocError();
  *v5 = a1;
  v6 = a1;

  return MEMORY[0x1EEE6DEE8](a2, v4);
}

id sub_1D5E3E19C(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D72577EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B542A8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v25 - v14;
  *&v3[OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler_loadTask] = 0;
  *&v3[OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler_task] = a1;
  *&v3[OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler_assetManager] = a2;
  swift_unknownObjectRetain();
  v16 = a2;
  v17 = [a1 request];
  sub_1D725779C();

  sub_1D72577BC();
  (*(v8 + 8))(v11, v7);
  v18 = sub_1D72585BC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    sub_1D5E3E404(v15);
    v20 = 0xE600000000000000;
    v21 = 0x3E656E6F6E3CLL;
  }

  else
  {
    v21 = sub_1D72583DC();
    v20 = v22;
    (*(v19 + 8))(v15, v18);
  }

  v23 = &v3[OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler__description];
  *v23 = v21;
  v23[1] = v20;
  v25.receiver = v3;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_1D5E3E404(uint64_t a1)
{
  sub_1D5B542A8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5E3E47C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D5E3C508(a1, v4, v5, v6);
}

uint64_t type metadata accessor for WebEmbedDatastoreURLSchemeHandler.Errors()
{
  result = qword_1EDF07A48;
  if (!qword_1EDF07A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5E3E588()
{
  result = qword_1EDF07A80;
  if (!qword_1EDF07A80)
  {
    type metadata accessor for WebEmbedDatastoreURLSchemeHandler.Errors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07A80);
  }

  return result;
}

uint64_t sub_1D5E3E5E0(uint64_t a1)
{
  sub_1D5E3E63C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5E3E63C()
{
  if (!qword_1EDF1B630)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B630);
    }
  }
}

void sub_1D5E3E698()
{
  if (!qword_1EDF17B10)
  {
    v0 = sub_1D725B69C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17B10);
    }
  }
}

uint64_t sub_1D5E3E6E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64684;

  return sub_1D5E3DA70(a1, v5, v4);
}

uint64_t sub_1D5E3E7A0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  sub_1D5E3E824(*a1, v4);
  v5 = *(*(v2 + 64) + 40);
  *v5 = v3;
  v5[1] = v4;
  return swift_continuation_throwingResume();
}

id sub_1D5E3E80C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

uint64_t sub_1D5E3E824(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D5E3E8A0()
{
  sub_1D5B542A8(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1D5E3E920(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 40); ; i += 2)
  {
    v7 = *(i - 1);
    v8 = *i;
    v11[0] = v7;
    v11[1] = v8;

    v9 = a1(v11);
    if (v3)
    {
      break;
    }

    if (v9)
    {
      return v7;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1D5E3EA18(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1D7263BFC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA6FB460](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_1D5E3EB3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_1D5B68374(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }

      if (v8)
      {
        return sub_1D5B63F14(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D5E3EC38@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v12 = a3(0);
  v16 = MEMORY[0x1EEE9AC00](v12, v13);
  v18 = &v25 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v25 = v15;
    v26 = v14;
    v27 = a6;
    v20 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v15 + 72);
    while (1)
    {
      sub_1D5E3FB10(v20, v18, a4);
      v22 = a1(v18);
      if (v6)
      {
        return sub_1D5B96C78(v18, a5);
      }

      if (v22)
      {
        break;
      }

      sub_1D5B96C78(v18, a5);
      v20 += v21;
      if (!--v19)
      {
        v23 = 1;
        a6 = v27;
        goto LABEL_10;
      }
    }

    a6 = v27;
    sub_1D5E3FB78(v18, v27, a4);
    v23 = 0;
LABEL_10:
    v15 = v25;
    v14 = v26;
  }

  else
  {
    v23 = 1;
  }

  return (*(v15 + 56))(a6, v23, 1, v14, v16);
}

uint64_t sub_1D5E3EDD4@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a2 + 56) + ((v14 << 12) | (__clz(__rbit64(v10)) << 6)));
      v16 = v15[3];
      v18 = *v15;
      v17 = v15[1];
      v32[2] = v15[2];
      v32[3] = v16;
      v32[0] = v18;
      v32[1] = v17;
      v19 = v15[1];
      v28 = *v15;
      v29 = v19;
      v20 = v15[3];
      v30 = v15[2];
      v31 = v20;
      sub_1D5E3FA60(v32, &v24);
      v21 = a1(&v28);
      if (v3)
      {
        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = v31;
        sub_1D5E3FABC(&v24);
      }

      if (v21)
      {
        break;
      }

      v10 &= v10 - 1;
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      result = sub_1D5E3FABC(&v24);
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v22 = v29;
    *a3 = v28;
    a3[1] = v22;
    v23 = v31;
    a3[2] = v30;
    a3[3] = v23;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        a3[2] = 0u;
        a3[3] = 0u;
        *a3 = 0u;
        a3[1] = 0u;
        return result;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5E3EF78@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26 = a1;
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v23 = v7;
    v24 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v25 = v14;
    v15 = (v13 - 8);
    v16 = *(v13 + 56);
    v17 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64)) + v16 * (v12 - 1);
    v18 = -v16;
    while (1)
    {
      v25(v11, v17, v6, v9);
      v19 = v26(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v19)
      {
        break;
      }

      --v12;
      (*v15)(v11, v6);
      v17 += v18;
      if (!v12)
      {
        v20 = 1;
        v7 = v23;
        a3 = v24;
        return (*(v7 + 56))(a3, v20, 1, v6);
      }
    }

    v7 = v23;
    a3 = v24;
    (*(v23 + 32))(v24, v11, v6);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  return (*(v7 + 56))(a3, v20, 1, v6);
}

id static FCDateRange.infiniteChronologicalFeed.getter()
{
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - v6;
  sub_1D5B461FC();
  sub_1D725890C();
  v8 = sub_1D725891C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v9(v3, 1, 1, v8);
  result = sub_1D5B96B20(v7, v3);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id FCDateRange.refreshingEditionedFeed(from:refreshStrategy:config:)(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v4 = v3;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v53 = &v53 - v13;
  v57 = type metadata accessor for FeedEdition();
  MEMORY[0x1EEE9AC00](v57, v14);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D725891C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x1EEE9AC00](v21, v22).n128_u64[0];
  v25 = &v53 - v24;
  v26 = *a2;
  v28 = *a3;
  v27 = a3[1];
  v55 = v4;
  v56 = v28;
  v59 = v27;
  result = [v4 startDate];
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = result;
  sub_1D72588BC();

  sub_1D5E3F92C();
  v31 = a1;
  LOBYTE(v30) = sub_1D7261F5C();
  v32 = *(v17 + 8);
  v32(v25, v16);
  if (v30)
  {
    v33 = 0;
LABEL_4:
    sub_1D5E3F9A4();
    swift_allocError();
    *v34 = v33;
    swift_willThrow();
    return v33;
  }

  if ((v26 - 1) < 2)
  {
    v35 = v58;
    (*(v17 + 16))(v58, a1, v16);
    v60 = v56;
    v61 = v59;
    v36 = FeedEditionConfig.fetchWindow(for:)(a1);
    *(v35 + *(v57 + 20)) = v36;
    v33 = v36;
    sub_1D5B96C78(v35, type metadata accessor for FeedEdition);
    return v33;
  }

  if (!v26)
  {
    result = [v55 startDate];
    if (result)
    {
      v37 = result;
      sub_1D72588BC();

      sub_1D72587FC();
      v39 = v38;
      v40 = (v32)(v20, v16);
      MEMORY[0x1EEE9AC00](v40, v41);
      *(&v53 - 2) = a1;
      v42 = v59;
      if (sub_1D5E3E920(sub_1D5E3F984, (&v53 - 4), v59))
      {
        v44 = v43;

        if (v39 > v44)
        {
LABEL_11:
          v33 = 1;
          goto LABEL_4;
        }
      }

      else if (v39 > 86400.0)
      {
        goto LABEL_11;
      }

      v51 = v58;
      (*(v17 + 16))(v58, v31, v16);
      v60 = v56;
      v61 = v42;
      v52 = FeedEditionConfig.fetchWindow(for:)(v31);
      *(v51 + *(v57 + 20)) = v52;
      v33 = v52;
      sub_1D5B96C78(v51, type metadata accessor for FeedEdition);
      return v33;
    }

    goto LABEL_20;
  }

  v45 = v53;
  (*(v17 + 16))(v53, a1, v16);
  v46 = *(v17 + 56);
  v47 = 1;
  v46(v45, 0, 1, v16);
  v48 = [v55 startDate];
  v49 = v54;
  if (v48)
  {
    v50 = v48;
    sub_1D72588BC();

    v47 = 0;
  }

  v46(v49, v47, 1, v16);
  sub_1D5B461FC();
  result = sub_1D5B96B20(v45, v49);
  if (result)
  {
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

id FCDateRange.expandingEditionedFeed(config:)(_OWORD *a1)
{
  v3 = sub_1D725891C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedEdition();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *a1;
  result = [v1 endDate];
  if (result)
  {
    v13 = result;
    sub_1D72588BC();

    (*(v4 + 16))(v11, v7, v3);
    v17[1] = v17[0];
    v14 = FeedEditionConfig.fetchWindow(for:)(v7);
    *&v11[*(v8 + 20)] = v14;
    v15 = *(v4 + 8);
    v16 = v14;
    v15(v7, v3);
    sub_1D5B96C78(v11, type metadata accessor for FeedEdition);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5E3F92C()
{
  result = qword_1EDF3C3C0;
  if (!qword_1EDF3C3C0)
  {
    sub_1D725891C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C3C0);
  }

  return result;
}

unint64_t sub_1D5E3F9A4()
{
  result = qword_1EDF04690;
  if (!qword_1EDF04690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04690);
  }

  return result;
}

unint64_t sub_1D5E3FA0C()
{
  result = qword_1EC87FEB8;
  if (!qword_1EC87FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FEB8);
  }

  return result;
}

uint64_t sub_1D5E3FB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5E3FB78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5E3FC18@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  if (!(v4 >> 6))
  {
    if (v3 == 3)
    {
      v60 = *v2;
      v59[0] = 0x3FF0000000000000;
      v59[1] = MEMORY[0x1E69E7CC0];
      sub_1D6C810F0(v59, &v61);

      v59[0] = v61;
      FormatOptionValue.type.getter(a2);
    }

    v35 = 3;
LABEL_27:
    type metadata accessor for FormatDerivedDataError();
    sub_1D5E40444();
    swift_allocError();
    *v36 = v35;
    v36[1] = v3;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (v4 >> 6 == 1)
  {
    if (v3 == 5)
    {
      if (v4)
      {
        v5 = MEMORY[0x1E69E7CC0];
        v6 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v6)
        {
          v59[0] = MEMORY[0x1E69E7CC0];

          result = sub_1D699752C(0, v6, 0);
          v8 = v59[0];
          v9 = (v5 + 56);
          v10 = *(v5 + 16);
          while (v10)
          {
            v12 = *(v9 - 3);
            v11 = *(v9 - 2);
            v13 = *(v9 - 1) & 0xFFFFFFFFFFFFLL;
            if ((*v9 & 0x2000000000000000) != 0)
            {
              v13 = HIBYTE(*v9) & 0xFLL;
            }

            v14 = v13 == 0;
            v59[0] = v8;
            v16 = *(v8 + 16);
            v15 = *(v8 + 24);

            if (v16 >= v15 >> 1)
            {
              result = sub_1D699752C((v15 > 1), v16 + 1, 1);
              v8 = v59[0];
            }

            *(v8 + 16) = v16 + 1;
            v17 = v8 + 24 * v16;
            *(v17 + 32) = v12;
            *(v17 + 40) = v11;
            *(v17 + 48) = v14;
            --v10;
            v9 += 4;
            if (!--v6)
            {

              swift_bridgeObjectRelease_n();
              goto LABEL_38;
            }
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          return result;
        }

        v8 = MEMORY[0x1E69E7CC0];

LABEL_38:
        v50 = swift_allocObject();
        *(v50 + 16) = 1;
        *(v50 + 24) = v8;
      }

      else
      {
        v37 = sub_1D726221C();
        v38 = v37;
        v39 = MEMORY[0x1E69E7CC0];
        v40 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v40)
        {
          v58 = v37;
          v59[0] = MEMORY[0x1E69E7CC0];

          result = sub_1D699756C(0, v40, 0);
          v41 = v59[0];
          v42 = v39 + 56;
          v43 = *(v39 + 16);
          while (v43)
          {
            v44 = *(v42 - 24);
            v45 = *(v42 - 16);

            result = sub_1D726221C();
            v59[0] = v41;
            v47 = *(v41 + 16);
            v46 = *(v41 + 24);
            if (v47 >= v46 >> 1)
            {
              v56 = result;
              sub_1D699756C((v46 > 1), v47 + 1, 1);
              result = v56;
              v41 = v59[0];
            }

            *(v41 + 16) = v47 + 1;
            v48 = (v41 + 24 * v47);
            v48[4] = v44;
            v48[5] = v45;
            v48[6] = result;
            --v43;
            v42 += 32;
            if (!--v40)
            {

              swift_bridgeObjectRelease_n();
              v38 = v58;
              goto LABEL_40;
            }
          }

          goto LABEL_45;
        }

        v41 = MEMORY[0x1E69E7CC0];

LABEL_40:
        v51 = swift_allocObject();
        *(v51 + 16) = v38;
        *(v51 + 24) = v41;
        v50 = v51 | 0x4000000000000000;
      }

      v59[0] = v50;
      FormatOptionValue.type.getter(a2);
    }

    v35 = 5;
    goto LABEL_27;
  }

  if (v3 != 4)
  {
    v35 = 4;
    goto LABEL_27;
  }

  v59[0] = 1;
  sub_1D5E4049C();
  v19 = sub_1D7263ADC();
  v21 = v19;
  v22 = v20;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v24)
  {
    v52 = v20;
    v53 = v19;
    v59[0] = MEMORY[0x1E69E7CC0];

    result = sub_1D6997388(0, v24, 0);
    v25 = v59[0];
    v26 = (v23 + 48);
    v27 = *(v23 + 16);
    while (v27)
    {
      v28 = *(v26 - 1);
      v57 = *(v26 - 2);
      v61 = *v26;

      result = sub_1D7263ADC();
      v30 = v29;
      v59[0] = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        v34 = result;
        sub_1D6997388((v31 > 1), v32 + 1, 1);
        result = v34;
        v25 = v59[0];
      }

      *(v25 + 16) = v32 + 1;
      v33 = (v25 + 32 * v32);
      v33[4] = v57;
      v33[5] = v28;
      v33[6] = result;
      v33[7] = v30;
      --v27;
      v26 += 3;
      if (!--v24)
      {
        swift_bridgeObjectRelease_n();
        v22 = v52;
        v21 = v53;
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v25 = MEMORY[0x1E69E7CC0];

LABEL_36:
  v49 = swift_allocObject();
  *(v49 + 16) = v21;
  *(v49 + 24) = v22;
  *(v49 + 32) = v25;
  v59[0] = v49 | 0x5000000000000000;
  FormatOptionValue.type.getter(a2);
}

uint64_t _s8NewsFeed34FormatOptionsNodeStatementModifierO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 1) == 0;
      }
    }

    else if ((v3 & 0xC0) == 0x80)
    {
      return 1;
    }
  }

  else if (v3 <= 0x3F)
  {
    return v2 == v3;
  }

  return 0;
}

unint64_t sub_1D5E401A0(uint64_t a1)
{
  result = sub_1D5E401C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5E401C8()
{
  result = qword_1EC87FEC0;
  if (!qword_1EC87FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FEC0);
  }

  return result;
}

unint64_t sub_1D5E4021C(void *a1)
{
  a1[1] = sub_1D5C59290();
  a1[2] = sub_1D5C592E4();
  result = sub_1D5E40254();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5E40254()
{
  result = qword_1EC87FEC8;
  if (!qword_1EC87FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FEC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatOptionsNodeStatementModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 242;
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

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FormatOptionsNodeStatementModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5E40444()
{
  result = qword_1EC892A70;
  if (!qword_1EC892A70)
  {
    type metadata accessor for FormatDerivedDataError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892A70);
  }

  return result;
}

unint64_t sub_1D5E4049C()
{
  result = qword_1EDF1B9D0;
  if (!qword_1EDF1B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B9D0);
  }

  return result;
}

uint64_t sub_1D5E404F0()
{
  sub_1D5E41090(0, &qword_1EDF3B428, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5E41090(0, qword_1EDF3B290, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AFF0 = result;
  return result;
}

uint64_t static Commands.openInNewTab.getter()
{
  if (qword_1EDF3AFE8 != -1)
  {
    swift_once();
  }
}

uint64_t static ContextMenuItem.openInNewTab(tag:feedConfiguration:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D5E40908(a1, a2);
}

uint64_t static ContextMenuItem.openInNewTab(recipe:)(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AFE8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = a1;
  v10 = [v8 bundleForClass_];
  sub_1D725811C();

  sub_1D725F71C();
  sub_1D725F6FC();
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v12[1] = a1;
  v12[2] = 0;
  v13 = 2;
  swift_allocObject();
  return sub_1D725D3AC();
}

uint64_t sub_1D5E40908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AFE8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  swift_unknownObjectRetain();
  v11 = [v10 bundleForClass_];
  sub_1D725811C();

  sub_1D725F71C();
  sub_1D725F6FC();
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
  v13[1] = a1;
  v13[2] = a2;
  v14 = 3;
  swift_allocObject();
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE12openInNewTab5issueACSgSo7FCIssueC_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AFE8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = a1;
  v10 = [v8 bundleForClass_];
  sub_1D725811C();

  sub_1D725F71C();
  sub_1D725F6FC();
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v12[1] = a1;
  v12[2] = 0;
  v13 = 0;
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE12openInNewTab8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 contentType] == 1)
  {
    if (qword_1EC87DC48 != -1)
    {
      swift_once();
    }

    v8 = sub_1D725C42C();
    __swift_project_value_buffer(v8, qword_1EC9BAD78);
    v9 = sub_1D725C3FC();
    v10 = sub_1D7262EDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D5B42000, v9, v10, "Context menu item 'openInNewTab' not available for web articles", v11, 2u);
      MEMORY[0x1DA6FD500](v11, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_1EDF3AFE8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();

    swift_unknownObjectRetain();
    v15 = [v14 bundleForClass_];
    sub_1D725811C();

    sub_1D725F71C();
    sub_1D725F6FC();
    (*(v3 + 104))(v7, *MEMORY[0x1E69D7B48], v2);
    v16[1] = a1;
    v16[2] = 0;
    v17 = 1;
    sub_1D725D3DC();
    swift_allocObject();
    return sub_1D725D3AC();
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void sub_1D5E41090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for OpenCommandContext);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t PuzzleButtonsAccessoryView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PuzzleButtonsAccessoryView.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double PuzzleButtonsAccessoryView.height.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_height;
  swift_beginAccess();
  return *(v0 + v1);
}

char *PuzzleButtonsAccessoryView.__allocating_init(identifier:minHeight:buttonsConfig:provider:handler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = objc_allocWithZone(v8);
  ObjectType = swift_getObjectType();
  return sub_1D5E4177C(a1, a2, a3, a4, a6, a7, v17, ObjectType, a8, a5);
}

id PuzzleButtonsAccessoryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PuzzleButtonsAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D5E4150C()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D5E41564(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double sub_1D5E41624()
{
  v1 = OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_height;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D5E41668(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  if (a2)
  {
    v12 = *a6;
    v9[0] = a4;
    v9[1] = a5;
    v10 = v12;
    v11 = 1;
    sub_1D5E422A8(&v12, v8);

    a2(v9);
  }

  return result;
}

uint64_t *sub_1D5E416F8(uint64_t *result, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = *result;
    v6 = result[1];
    v8[0] = a4;
    v8[1] = a5;
    v8[2] = v7;
    v8[3] = v6;
    v9 = 1;

    a2(v8);
  }

  return result;
}

char *sub_1D5E4177C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, double a9, uint64_t a10)
{
  ObjectType = swift_getObjectType();
  v15 = 0;
  v16 = *a3;
  v17 = &a7[OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_identifier];
  *v17 = 0;
  *(v17 + 1) = 0;
  v94 = a7;
  *&a7[OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_spacing] = 0x4020000000000000;
  v95 = MEMORY[0x1E69E7CC0];
  v109 = MEMORY[0x1E69E7CC0];
  v18 = *(v16 + 16);
LABEL_2:
  v19 = 56 * v15;
  while (v18 != v15)
  {
    if (v15 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    ++v15;
    v20 = v19 + 56;
    v21 = v16 + v19;
    v23 = *(v21 + 72);
    v22 = *(v21 + 80);
    v10 = *(v21 + 40);
    v24 = *(v21 + 48);
    *&v104 = *(v21 + 32);
    *(&v104 + 1) = v10;
    v105 = v24;
    v106 = *(v21 + 56);
    v107 = v23;
    v108 = v22;

    v25 = sub_1D5E42304(a1, a2, &v104, a4, a5, a6, ObjectType, a8, a10);

    v19 = v20;
    if (v25)
    {
      MEMORY[0x1DA6F9CE0](v26);
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v95 = v109;
      goto LABEL_2;
    }
  }

  a2 = v95;
  v10 = v95 >> 62;
  if (!(v95 >> 62))
  {
    v27 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_29:
  v27 = sub_1D7263BFC();
LABEL_11:
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v104 = MEMORY[0x1E69E7CC0];
    result = sub_1D699758C(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v28 = v104;
    v31 = *MEMORY[0x1E69DE090];
    v32 = *(MEMORY[0x1E69DE090] + 8);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1DA6FB460](v30, a2);
      }

      else
      {
        v33 = *(a2 + 8 * v30 + 32);
      }

      v34 = v33;
      [v33 systemLayoutSizeFittingSize_];
      v36 = v35;

      *&v104 = v28;
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1D699758C((v37 > 1), v38 + 1, 1);
        v28 = v104;
      }

      ++v30;
      *(v28 + 16) = v38 + 1;
      *(v28 + 8 * v38 + 32) = v36;
    }

    while (v27 != v30);
  }

  *&v39 = COERCE_DOUBLE(sub_1D71F5B54(v28));
  v41 = v40;

  v42 = *&v39;
  if (v41)
  {
    v42 = 0.0;
  }

  if (v42 <= a9)
  {
    v42 = a9;
  }

  *&v94[OBJC_IVAR____TtC8NewsFeed26PuzzleButtonsAccessoryView_height] = v42;
  if (v10)
  {
    sub_1D5B5A498(0, &qword_1EDF1A710);

    sub_1D726403C();
  }

  else
  {

    sub_1D726479C();
    sub_1D5B5A498(0, &qword_1EDF1A710);
  }

  v43 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v44 = sub_1D726265C();

  v45 = [v43 initWithArrangedSubviews_];

  v46 = v45;
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  [v46 setAxis_];
  [v46 setDistribution_];
  [v46 setAlignment_];
  [v46 setSpacing_];
  [v46 setLayoutMarginsRelativeArrangement_];
  [v46 setLayoutMargins_];
  v103.receiver = v94;
  v103.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v103, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v48 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v49 = v47;
  v50 = [v48 init];
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  v51 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  v52 = v49;
  [v52 addSubview_];
  [v51 addSubview_];
  [v50 addSubview_];
  v99 = objc_opt_self();
  sub_1D5E42B34();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1D72783A0;
  v54 = [v51 topAnchor];
  v55 = [v52 &selRef_dataProvider];
  v56 = [v54 constraintEqualToAnchor_];

  *(v53 + 32) = v56;
  v57 = [v51 leadingAnchor];
  v58 = [v52 &off_1E84D3528 + 1];

  v59 = [v57 constraintEqualToAnchor_];
  *(v53 + 40) = v59;
  v60 = [v51 trailingAnchor];
  v61 = [v52 trailingAnchor];

  v62 = [v60 constraintEqualToAnchor_];
  *(v53 + 48) = v62;
  v63 = [v51 bottomAnchor];
  v64 = [v52 &selRef_setNeedsLayout + 5];

  v65 = [v63 constraintEqualToAnchor_];
  *(v53 + 56) = v65;
  v66 = [v50 topAnchor];
  v67 = [v51 topAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v53 + 64) = v68;
  v69 = [v50 leadingAnchor];
  v70 = [v51 leadingAnchor];
  v71 = [v69 constraintEqualToAnchor_];

  *(v53 + 72) = v71;
  v72 = [v50 trailingAnchor];
  v73 = [v51 trailingAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v53 + 80) = v74;
  v75 = [v50 bottomAnchor];
  v76 = [v51 bottomAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v53 + 88) = v77;
  v78 = [v50 heightAnchor];
  v79 = [v51 heightAnchor];

  v80 = [v78 constraintEqualToAnchor_];
  *(v53 + 96) = v80;
  v81 = [v46 topAnchor];
  v82 = [v50 topAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(v53 + 104) = v83;
  v84 = [v46 leadingAnchor];
  v85 = [v50 leadingAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v53 + 112) = v86;
  v87 = [v46 trailingAnchor];
  v88 = [v50 trailingAnchor];
  v89 = [v87 constraintEqualToAnchor_];

  *(v53 + 120) = v89;
  v90 = [v46 bottomAnchor];

  v91 = [v50 bottomAnchor];
  v92 = [v90 constraintEqualToAnchor_];

  *(v53 + 128) = v92;
  sub_1D5B5A498(0, &qword_1EC87FF48);
  v93 = sub_1D726265C();

  [v99 activateConstraints_];

  sub_1D5B74328(a5);
  swift_unknownObjectRelease();
  return v52;
}

char *sub_1D5E42304(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v80 = a4;
  v81 = a8;
  v84 = a5;
  v85 = a6;
  v82 = a1;
  v83 = a2;
  v78 = sub_1D7257FAC();
  v10 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v11);
  v74 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D7257FBC();
  v13 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7257FDC();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  sub_1D5B542FC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v70 - v21;
  sub_1D5B542FC(0, &qword_1EC87FF50, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v70 - v25;
  v75 = sub_1D726389C();
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v27);
  v79 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v31 = a3[1];
  v92 = *a3;
  v93 = v31;
  v94 = a3[2];
  v95 = *(a3 + 6);
  v76 = &v70 - v32;
  sub_1D726382C();
  v33 = sub_1D72585BC();
  (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
  (*(v13 + 104))(v16, *MEMORY[0x1E6968750], v73);
  (*(v10 + 104))(v74, *MEMORY[0x1E6968728], v78);

  sub_1D7257FCC();
  sub_1D725809C();
  v72 = 0;
  v34 = sub_1D72580BC();
  (*(*(v34 - 8) + 56))(v26, 0, 1, v34);
  v35 = v76;
  sub_1D72637DC();
  v36 = v75;
  if (*(&v94 + 1))
  {
    v37 = sub_1D726203C();
    v38 = [objc_opt_self() systemImageNamed_];

    sub_1D726384C();
  }

  v39 = [objc_opt_self() labelColor];
  sub_1D726380C();
  sub_1D5B5A498(0, &qword_1EC87FF58);
  (*(v77 + 16))(v79, v35, v36);
  sub_1D5B5A498(0, &qword_1EDF04350);
  v40 = swift_allocObject();
  v42 = v84;
  v41 = v85;
  *(v40 + 16) = v84;
  *(v40 + 24) = v41;
  *(v40 + 32) = v82;
  *(v40 + 40) = v83;
  v43 = v93;
  *(v40 + 48) = v92;
  *(v40 + 64) = v43;
  *(v40 + 80) = v94;
  *(v40 + 96) = v95;

  sub_1D5DEA510(v42);
  sub_1D5E42B98(&v92, v89);
  sub_1D726375C();
  result = sub_1D72638AC();
  v45 = result;
  v46 = v95;
  if (v95)
  {
    v74 = result;
    v47 = MEMORY[0x1E69E7CC0];
    v91 = MEMORY[0x1E69E7CC0];
    v48 = *(v95 + 16);
    if (v48)
    {
      v49 = 0;
      v78 = *(v95 + 16);
      v79 = (a9 + 16);
      v50 = v95 + 32;
      v70 = v48 - 1;
      v71 = v95 + 32;
      v51 = v84;
      do
      {
        v73 = v47;
        v52 = (v50 + 160 * v49);
        v53 = v49;
        while (1)
        {
          if (v53 >= *(v46 + 16))
          {
            __break(1u);
            return result;
          }

          v54 = v52[1];
          v89[0] = *v52;
          v89[1] = v54;
          v55 = v52[2];
          v56 = v52[3];
          v57 = v52[5];
          v89[4] = v52[4];
          v89[5] = v57;
          v89[2] = v55;
          v89[3] = v56;
          v58 = v52[6];
          v59 = v52[7];
          v60 = v52[8];
          *(v90 + 9) = *(v52 + 137);
          v89[7] = v59;
          v90[0] = v60;
          v89[6] = v58;
          v49 = v53 + 1;
          v61 = v52[7];
          v87[6] = v52[6];
          v87[7] = v61;
          v88[0] = v52[8];
          *(v88 + 9) = *(v52 + 137);
          v62 = v52[3];
          v87[2] = v52[2];
          v87[3] = v62;
          v63 = v52[5];
          v87[4] = v52[4];
          v87[5] = v63;
          v64 = v52[1];
          v87[0] = *v52;
          v87[1] = v64;
          v65 = swift_allocObject();
          v66 = v85;
          v65[2] = v51;
          v65[3] = v66;
          v65[4] = v82;
          v65[5] = v83;
          v67 = *(a9 + 16);

          sub_1D5DEA510(v51);
          sub_1D5E42C00(v89, &v86);
          v68 = v67(v87, sub_1D5E42BF4, v65, v81, a9);

          result = sub_1D5E42C5C(v89);
          if (v68)
          {
            break;
          }

          v52 += 10;
          ++v53;
          if (v78 == v49)
          {
            goto LABEL_14;
          }
        }

        MEMORY[0x1DA6F9CE0](result);
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        result = sub_1D726278C();
        v47 = v91;
        v50 = v71;
      }

      while (v70 != v53);
    }

LABEL_14:
    sub_1D5B5A498(0, &qword_1EC885090);
    v69 = sub_1D72633FC();
    v45 = v74;
    [v74 setShowsMenuAsPrimaryAction_];
    [v45 setMenu_];

    v36 = v75;
  }

  (*(v77 + 8))(v76, v36);
  return v45;
}

void sub_1D5E42B34()
{
  if (!qword_1EDF194C0)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF194C0);
    }
  }
}

void *sub_1D5E42CB0(void *a1)
{
  v5 = *v1;
  v6 = *v1 >> 62;
  if (!v6)
  {
    v21 = *(v5 + 80);
    v54 = *(v5 + 64);
    v55 = v21;
    v56 = *(v5 + 96);
    v57 = *(v5 + 112);
    v22 = *(v5 + 32);
    v51 = *(v5 + 16);
    v52 = v22;
    v53 = *(v5 + 48);
    v23 = *(v5 + 96);
    v48 = *(v5 + 80);
    v49 = v23;
    v50 = *(v5 + 112);
    v24 = *(v5 + 32);
    v44 = *(v5 + 16);
    v45 = v24;
    v25 = *(v5 + 64);
    v46 = *(v5 + 48);
    v47 = v25;
    sub_1D5D0322C(&v51, v43);
    v3 = sub_1D5F9CDD4(a1);
    sub_1D5D07BBC(&v51);
    return v3;
  }

  v7 = v5 & 0x3FFFFFFFFFFFFFFFLL;
  if (v6 != 1)
  {
    v26 = *(v7 + 16);
    v27 = *(v7 + 24);

    sub_1D5F9D964(v26, v27, &v51);
    *&v44 = v51;
    v28 = sub_1D5E42CB0(a1);
    if (!v2)
    {
      v3 = v28;
    }

    return v3;
  }

  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  v3 = *(v7 + 32);
  v11 = *(v7 + 48);
  v10 = *(v7 + 56);
  v12 = *(v7 + 64);
  v58 = *(v7 + 40);
  v42 = v12;
  v41 = v8;
  if (!v58)
  {
    v29 = objc_opt_self();

    sub_1D5E433CC(v11, v10, v12);
    v13 = [v29 mainBundle];
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_16:
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    v30 = v58;
    *v31 = v3;
    v31[1] = v30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v32 = v11;
    v33 = v10;
LABEL_18:
    sub_1D5E4342C(v32, v33, v42);
    return v3;
  }

  sub_1D5E433CC(v11, v10, v12);
  if (qword_1EDF2F8C8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D619EFB4(v3, v58);
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_7:
  v40 = v10;
  v14 = v13;
  v15 = sub_1D7259EBC();
  v16 = v14;
  v17 = sub_1D726203C();
  v3 = [objc_opt_self() imageNamed:v17 inBundle:v16 compatibleWithTraitCollection:v15];

  if (!v3)
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    *v34 = v13;
    v34[1] = v9;
    v34[2] = v41;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v32 = v11;
    v33 = v40;
    goto LABEL_18;
  }

  if (v42 == 255)
  {

    sub_1D5E4342C(v11, v40, 0xFFu);

    return v3;
  }

  *&v51 = v11;
  *(&v51 + 1) = v40;
  LOBYTE(v52) = v42;
  sub_1D5E433E0(v11, v40, v42);
  v18 = sub_1D62EC1FC();
  v39 = v20;
  if (v2)
  {

    sub_1D5E4342C(v11, v40, v42);
    sub_1D5E43440(v51, *(&v51 + 1), v52);
    return v3;
  }

  v36 = v18;
  v37 = v19;

  sub_1D5E4342C(v11, v40, v42);
  sub_1D5E43440(v51, *(&v51 + 1), v52);
  v38 = sub_1D62EC37C(v3, v36, v39, v37);

  return v38;
}

uint64_t static FormatSyncImageContent.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      v15 = *(v3 + 96);
      v31 = *(v3 + 80);
      v32 = v15;
      v33 = *(v3 + 112);
      v16 = *(v3 + 32);
      v27 = *(v3 + 16);
      v28 = v16;
      v17 = *(v3 + 64);
      v29 = *(v3 + 48);
      v30 = v17;
      v18 = *(v2 + 96);
      v38 = *(v2 + 80);
      v39 = v18;
      v40 = *(v2 + 112);
      v19 = *(v2 + 32);
      v34 = *(v2 + 16);
      v35 = v19;
      v20 = *(v2 + 64);
      v36 = *(v2 + 48);
      v37 = v20;

      v14 = _s8NewsFeed17FormatSymbolImageV2eeoiySbAC_ACtFZ_0(&v34, &v27);

      return v14 & 1;
    }

LABEL_12:
    v14 = 0;
    return v14 & 1;
  }

  if (v4 != 1)
  {
    if (v3 >> 62 == 2)
    {
      v21 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v22 = *(v21 + 24);
      v24 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v34 = *(v21 + 16);
      *(&v34 + 1) = v22;
      *&v27 = v24;
      *(&v27 + 1) = v23;

      if (static FormatSyncImageContent.== infix(_:_:)(&v34, &v27))
      {

        v25 = sub_1D6354600(v22, v23);

        swift_bridgeObjectRelease_n();
        if (v25)
        {
          v14 = 1;
          return v14 & 1;
        }
      }

      else
      {
      }
    }

    goto LABEL_12;
  }

  if (v3 >> 62 != 1)
  {
    goto LABEL_12;
  }

  v5 = v2 & 0x3FFFFFFFFFFFFFFFLL;
  v6 = *(v5 + 64);
  v7 = *(v5 + 24);
  v8 = v3 & 0x3FFFFFFFFFFFFFFFLL;
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = *(v8 + 64);
  *&v34 = *(v5 + 16);
  *(&v34 + 1) = v7;
  v12 = *(v5 + 48);
  v35 = *(v5 + 32);
  v36 = v12;
  LOBYTE(v37) = v6;
  *&v27 = v9;
  *(&v27 + 1) = v10;
  v13 = *(v8 + 48);
  v28 = *(v8 + 32);
  v29 = v13;
  LOBYTE(v30) = v11;

  v14 = _s8NewsFeed17FormatBundleImageV2eeoiySbAC_ACtFZ_0(&v34, &v27);

  return v14 & 1;
}

unint64_t sub_1D5E43370(uint64_t a1)
{
  result = sub_1D5C9B86C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5E433CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D5E433E0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5E433E0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D5E4342C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D5E43440(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5E43440(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }
  }
}

NewsFeed::FeedTopicClusteringResult __swiftcall FeedTopicClusteringResult.init(clusters:orphanedItems:)(Swift::OpaquePointer clusters, Swift::OpaquePointer orphanedItems)
{
  v2->_rawValue = clusters._rawValue;
  v2[1]._rawValue = orphanedItems._rawValue;
  result.orphanedItems = orphanedItems;
  result.clusters = clusters;
  return result;
}

void static FeedTopicClusteringResult.empty.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

void FeedTopicClusteringResult.scoredItems.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
LABEL_19:

    sub_1D6985340(v15);
    return;
  }

  v3 = 0;
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D698BF70(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_19;
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

uint64_t sub_1D5E43640(uint64_t a1, float a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = a2;
    v12 = a4;
    v10 = a5;
    sub_1D5E43C30(a1, &v11, &v10, 1);
  }

  return result;
}

uint64_t sub_1D5E436D4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D5E4370C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1 >> 62;
  if (!v3)
  {
    v17 = *(a2 + 16);
    v16 = *(a2 + 24);
    v18 = (v2 + OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier);
    swift_beginAccess();
    *v18 = v17;
    v18[1] = v16;

    swift_beginAccess();
    sub_1D726344C();
    v20 = *(a2 + 96);
    if (v20)
    {
      v21 = [v2 setAccessibilityIgnoresInvertColors_];
      if ((~*(v20 + 64) & 0xF000000000000007) != 0)
      {
        v53 = *(v20 + 64);
        v22 = FormatColor.color.getter(v21);
        goto LABEL_14;
      }
    }

    else
    {
      [v2 setAccessibilityIgnoresInvertColors_];
    }

    v22 = 0;
LABEL_14:
    [v2 setProgressTintColor_];

    if (v20 && (~*(v20 + 72) & 0xF000000000000007) != 0)
    {
      v53 = *(v20 + 72);
      v38 = FormatColor.color.getter(v37);
    }

    else
    {
      v38 = 0;
    }

    [v2 setTrackTintColor_];
    goto LABEL_39;
  }

  if (v3 != 1)
  {
    v23 = *(a2 + 152);
    if ((v23 & 0xC0) != 0x40)
    {
      return;
    }

    v24 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
    v26 = *(a2 + 136);
    v25 = *(a2 + 144);
    v27 = *(a2 + 128);
    v28 = *(a2 + 120);
    v29 = *(a2 + 112);
    v30 = v23 & 0x3F;
    v32 = *(a2 + 16);
    v31 = *(a2 + 24);
    v33 = &v24[OBJC_IVAR____TtC8NewsFeed24FormatProgressCircleView_identifier];
    swift_beginAccess();
    *v33 = v32;
    *(v33 + 1) = v31;

    swift_beginAccess();
    sub_1D726344C();
    v35 = *(a2 + 96);
    if (v35)
    {
      v36 = *(v35 + 80);
    }

    else
    {
      v36 = 0;
    }

    [v24 setAccessibilityIgnoresInvertColors_];
    v52.radius = v29;
    v52.clockwise = v28 & 1;
    v52.stepPercentage = v27;
    v52.minPercentage = v26;
    v52.maxPercentage = v25;
    v52.lineCap = v30;
    FormatProgressCircleView.setUpCircleView(options:)(&v52);
    if (v35 && (~*(v35 + 64) & 0xF000000000000007) != 0)
    {
      v52.radius = *(v35 + 64);
      v44 = FormatColor.color.getter(v43);
      v38 = v44;
    }

    else
    {
      v44 = [objc_opt_self() redColor];
      v38 = v44;
      if (!v35)
      {
        goto LABEL_36;
      }
    }

    if ((~*(v35 + 72) & 0xF000000000000007) != 0)
    {
      v52.radius = *(v35 + 72);
      v50 = FormatColor.color.getter(v44);
      goto LABEL_38;
    }

LABEL_36:
    v50 = [objc_opt_self() grayColor];
LABEL_38:
    v51 = v50;
    FormatProgressCircleView.setProgressColors(backgroundColor:strokeColor:)(v38, v50);

    goto LABEL_39;
  }

  if (*(a2 + 152) >= 0x40u)
  {
    return;
  }

  v4 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
  v6 = *(a2 + 136);
  v5 = *(a2 + 144);
  v8 = *(a2 + 120);
  v7 = *(a2 + 128);
  v9 = *(a2 + 112);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = &v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_identifier];
  swift_beginAccess();
  *v12 = v11;
  *(v12 + 1) = v10;

  swift_beginAccess();
  sub_1D726344C();
  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(v14 + 80);
  }

  else
  {
    v15 = 0;
  }

  v39 = [v4 setAccessibilityIgnoresInvertColors_];
  *&v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_radius] = v9;
  v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_clockwise] = v8 & 1;
  v40 = &v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_stepPercentage];
  *v40 = v7;
  v40[8] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_minPercentage] = v6;
  *&v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_maxPercentage] = v5;
  if (v14 && (~*(v14 + 64) & 0xF000000000000007) != 0)
  {
    v53 = *(v14 + 64);
    v41 = FormatColor.color.getter(v39);
    v42 = v41;
  }

  else
  {
    v41 = [objc_opt_self() redColor];
    v42 = v41;
    if (!v14)
    {
      goto LABEL_31;
    }
  }

  if ((~*(v14 + 72) & 0xF000000000000007) != 0)
  {
    v53 = *(v14 + 72);
    v45 = FormatColor.color.getter(v41);
    goto LABEL_33;
  }

LABEL_31:
  v45 = [objc_opt_self() grayColor];
LABEL_33:
  v46 = v45;
  v47 = *&v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_backgroundLayer];
  v48 = [(objc_class *)v42 CGColor];
  [v47 setFillColor_];

  v49 = *&v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressPieView_progressLayer];
  v38 = [(objc_class *)v46 CGColor];
  [v49 setFillColor_];

LABEL_39:
}

void sub_1D5E43C30(uint64_t a1, float *a2, void **a3, char a4)
{
  v8 = MEMORY[0x1E69D7880];
  sub_1D5E443E8(0, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - v15;
  v17 = *a2;
  v18 = *a3;
  sub_1D5E444FC(a1, &v27 - v15, &unk_1EDF3B690, v8);
  v19 = sub_1D725D38C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v16, 1, v19) == 1)
  {
    goto LABEL_5;
  }

  sub_1D5E444FC(v16, v12, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v21 = (*(v20 + 88))(v12, v19);
  if (v21 == *MEMORY[0x1E69D7870])
  {
    (*(v20 + 8))(v12, v19);
    goto LABEL_5;
  }

  if (v21 != *MEMORY[0x1E69D7878])
  {
    if (v21 == *MEMORY[0x1E69D7860])
    {
      (*(v20 + 96))(v12, v19);
      v22 = 0.0;
      if (v17 > 0.0)
      {
        v23 = *v12 / v17;
        LODWORD(v22) = 1.0;
        if (v23 < 1.0)
        {
          v22 = 0.0;
          if (v23 >= 0.0)
          {
            *&v22 = *v12 / v17;
          }
        }
      }

      v24 = v18 >> 62;
      if (v18 >> 62)
      {
LABEL_16:
        v25 = *&v22;
        goto LABEL_17;
      }
    }

    else
    {
      if (v21 != *MEMORY[0x1E69D7868])
      {
        if (v21 == *MEMORY[0x1E69D7858])
        {
          goto LABEL_5;
        }

        (*(v20 + 8))(v12, v19);
        v24 = v18 >> 62;
        if (v18 >> 62)
        {
          v25 = 0.0;
LABEL_17:
          if (v24 == 1)
          {
            FormatProgressPieView.updatePieProgress(progress:)(v25);
          }

          else
          {
            FormatProgressCircleView.updateCircleProgress(progress:)(v25);
          }

          goto LABEL_27;
        }

        [v18 setProgress:a4 & 1 animated:0.0];
LABEL_27:
        sub_1D5E444A0(v16, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
        return;
      }

      (*(v20 + 96))(v12, v19);
      v22 = 0.0;
      if (v17 > 0.0)
      {
        v22 = *v12;
        *&v22 = *v12;
        v26 = *&v22 / v17;
        LODWORD(v22) = 1.0;
        if (v26 < 1.0)
        {
          v22 = 0.0;
          if (v26 >= 0.0)
          {
            *&v22 = v26;
          }
        }
      }

      v24 = v18 >> 62;
      if (v18 >> 62)
      {
        goto LABEL_16;
      }
    }

    [v18 setProgress:a4 & 1 animated:v22];
    goto LABEL_27;
  }

LABEL_5:
  sub_1D5E444A0(v16, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  if (v18 >> 62)
  {
    if (v18 >> 62 == 1)
    {
      FormatProgressPieView.updatePieProgress(progress:)(0.0);
    }

    else
    {
      FormatProgressCircleView.updateCircleProgress(progress:)(0.0);
    }
  }

  else
  {
    [v18 setProgress:a4 & 1 animated:0.0];
  }
}

void sub_1D5E43FD8(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  sub_1D5E443E8(0, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v32 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *a3;
  v33[0] = v17;
  *&v35 = v15;
  v36 = v16;
  sub_1D5E4370C(v33, a2);
  v18 = *(a2 + 96);
  if (v18)
  {
    v19 = *(v18 + 56);

    v20 = v17 >> 62;
    if (v17 >> 62)
    {
LABEL_3:
      v35 = v19;
      v21 = (v17 & 0x3FFFFFFFFFFFFFFFLL);
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    v20 = v17 >> 62;
    if (v17 >> 62)
    {
      goto LABEL_3;
    }
  }

  v35 = v19;
  v21 = v17;
LABEL_6:
  sub_1D613DC18(v21, &v35, a4);

  if (v16 < 0)
  {
    v32[1] = a5;
    v25 = *(v5 + 16);
    v26 = *(v5 + 24);
    v27 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x78);
    sub_1D5E443B8(v16);
    v27(v25, v26);
    *&v35 = v15;
    v36 = v16;
    v33[0] = v17;
    sub_1D5E43C30(v14, &v35, v33, 0);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v15;
    *(v29 + 32) = v16;
    *(v29 + 40) = v17;
    v30 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
    sub_1D5E443B8(v16);
    v31 = (v17 & 0x3FFFFFFFFFFFFFFFLL);

    v30(&v35, v25, v26, sub_1D5E443D8, v29);

    sub_1D5E444FC(&v35, v33, &qword_1EDF3BE98, sub_1D5E4443C);
    if (v34)
    {
      __swift_project_boxed_opaque_existential_1(v33, v34);
      sub_1D725A72C();
      sub_1D5E443C8(v16);
      sub_1D5E444A0(&v35, &qword_1EDF3BE98, sub_1D5E4443C);
      sub_1D5E444A0(v14, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      sub_1D5E443C8(v16);
      sub_1D5E444A0(&v35, &qword_1EDF3BE98, sub_1D5E4443C);
      sub_1D5E444A0(v14, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D5E444A0(v33, &qword_1EDF3BE98, sub_1D5E4443C);
    }
  }

  else
  {
    v23 = 0.0;
    if (v15 > 0.0)
    {
      *&v22 = *&v16 / v15;
      LODWORD(v23) = 1.0;
      if ((*&v16 / v15) < 1.0)
      {
        v23 = 0.0;
        if (*&v22 >= 0.0)
        {
          *&v23 = *&v16 / v15;
        }
      }
    }

    if (v20)
    {
      v24 = *&v23;
      if (v20 == 1)
      {
        FormatProgressPieView.updatePieProgress(progress:)(v24);
      }

      else
      {
        FormatProgressCircleView.updateCircleProgress(progress:)(v24);
      }
    }

    else
    {

      [v17 setProgress:0 animated:{v23, v22}];
    }
  }
}

uint64_t sub_1D5E443B8(uint64_t result)
{
  if (result < 0)
  {
  }

  return result;
}

uint64_t sub_1D5E443C8(uint64_t result)
{
  if (result < 0)
  {
  }

  return result;
}

void sub_1D5E443E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5E4443C()
{
  result = qword_1EDF3BEA0;
  if (!qword_1EDF3BEA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3BEA0);
  }

  return result;
}

uint64_t sub_1D5E444A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5E443E8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5E444FC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5E443E8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t IssueCoverViewRendererType.render(_:on:with:traits:coverViewStyle:)(_OWORD *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v14[0] = a1[2];
  *(v14 + 9) = *(a1 + 41);
  v8 = a3[1];
  v12[0] = *a3;
  v12[1] = v8;
  v9 = a3[3];
  v12[2] = a3[2];
  v12[3] = v9;
  v11 = *a5;
  return (*(a7 + 8))(v13, a2, v12, a4, &v11);
}

void sub_1D5E44634(uint64_t a1, char *a2, double *a3, uint64_t a4, void **a5)
{
  v6 = v5;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v136 = *(a1 + 24);
  v11 = *(a1 + 32);
  v134 = *(a1 + 40);
  v135 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = *a3;
  v13 = *(a3 + 1);
  v16 = *(a3 + 2);
  v15 = *(a3 + 3);
  v18 = *(a3 + 4);
  v17 = a3[5];
  v19 = *(a3 + 6);
  v20 = *(a3 + 7);
  v21 = *a5;
  sub_1D726344C();
  if (v12 > 1)
  {
    v32 = 0xE400000000000000;
    v33 = 1701736302;
  }

  else
  {
    v22 = [v8 identifier];
    v138 = v12;
    v23 = v8;
    v24 = v10;
    v25 = a2;
    v26 = v6;
    v27 = v11;
    v28 = v21;
    v29 = v19;
    v30 = sub_1D726207C();
    v32 = v31;

    v33 = v30;
    v19 = v29;
    v21 = v28;
    v11 = v27;
    v6 = v26;
    a2 = v25;
    v10 = v24;
    v8 = v23;
    v12 = v138;
  }

  v34 = v32;
  v35 = IssueCoverView.prepareForReuse(identifier:)(*&v33);

  if (!v35)
  {
    return;
  }

  v139 = *MEMORY[0x1E69796E8];
  sub_1D726327C();
  *&v145 = v139;
  *(&v145 + 1) = v17;
  *&v146 = v36;
  *(&v146 + 1) = v37;
  *&v147 = v38;
  *(&v147 + 1) = v39;
  *&v148 = v18;
  *(&v148 + 1) = v19;
  v149 = v20;
  __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
  v142[0] = v21;
  sub_1D71F1640(a2, &v145, v142);
  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_40;
    }

    v40 = *(a4 + 16);
    v41 = (a4 + 32);
    v42 = (a4 + 32);
    while (v40)
    {
      v43 = *v42++;
      --v40;
      if (v43)
      {
        if (!UIAccessibilityIsReduceMotionEnabled())
        {
          v133 = v19;
          sub_1D5B68374((v6 + 18), v142);
          v129 = v144;
          v130 = v143;
          __swift_project_boxed_opaque_existential_1(v142, v143);
          v131 = v8;
          v74 = [v8 identifier];
          v75 = sub_1D726207C();
          v128 = v76;

          v77 = type metadata accessor for LayeredMediaLoader();
          v78 = swift_allocObject();
          v79 = type metadata accessor for LayeredMediaParser();
          v80 = swift_allocObject();
          v80[2] = v75;
          v80[3] = v128;
          v80[4] = v10;
          v80[5] = v136;
          v78[5] = v79;
          v78[6] = &protocol witness table for LayeredMediaParser;
          v78[2] = v80;
          v141[4] = &protocol witness table for LayeredMediaLoader;
          v141[3] = v77;
          v141[0] = v78;
          v81 = *(a4 + 16);
          v82 = MEMORY[0x1E69E7CC0];
          v132 = v11;
          while (v81)
          {
            v83 = *v41++;
            --v81;
            if ((v83 & 1) == 0)
            {
              v82 = &unk_1F50F3858;
              break;
            }
          }

          v84 = *(v129 + 8);

          v84(v141, v82, v130, v129);

          __swift_destroy_boxed_opaque_existential_1(v141);
          v85 = __swift_destroy_boxed_opaque_existential_1(v142);
          MEMORY[0x1EEE9AC00](v85, v86);
          type metadata accessor for LayeredMediaView(0);
          sub_1D725BDCC();
          v87 = swift_allocObject();
          *(v87 + 16) = a2;
          *(v87 + 24) = v131;
          *(v87 + 32) = v9;
          *(v87 + 40) = v10;
          *(v87 + 48) = v136;
          *(v87 + 56) = v6;
          *(v87 + 64) = v21;
          *(v87 + 72) = v14;
          *(v87 + 80) = v13;
          *(v87 + 88) = v16;
          *(v87 + 96) = v15;
          *(v87 + 104) = v18;
          *(v87 + 112) = v17;
          *(v87 + 120) = v133;
          *(v87 + 128) = v20;
          v88 = v146;
          *(v87 + 136) = v145;
          v89 = v147;
          v90 = v148;
          *(v87 + 200) = v149;
          *(v87 + 184) = v90;
          *(v87 + 168) = v89;
          *(v87 + 152) = v88;
          v140 = v139;
          v91 = a2;
          v92 = v131;

          v93 = v21;
          v94 = sub_1D725B92C();
          sub_1D725BA7C();

          v95 = sub_1D725B92C();
          sub_1D725BACC();

          sub_1D5B5A498(0, &qword_1EDF1AA30);
          v96 = sub_1D726308C();
          v97 = swift_allocObject();
          *(v97 + 16) = v132;
          *(v97 + 24) = v134;
          *(v97 + 32) = v135;
          *(v97 + 40) = v91;
          *(v97 + 48) = v14;
          *(v97 + 56) = v13;
          *(v97 + 64) = v16;
          *(v97 + 72) = v15;
          *(v97 + 80) = v18;
          *(v97 + 88) = v17;
          *(v97 + 96) = v133;
          *(v97 + 104) = v20;
          *(v97 + 112) = v93;
          v98 = v145;
          *(v97 + 136) = v146;
          v99 = v148;
          *(v97 + 152) = v147;
          *(v97 + 168) = v99;
          *(v97 + 184) = v149;
          *(v97 + 120) = v98;
          v100 = v140;
          v101 = v91;
          v102 = v93;
          v103 = v132;
          v104 = v135;
          sub_1D725BB8C();

          return;
        }

        break;
      }
    }

    v44 = v21;
    v45 = [v11 identifier];
    v46 = sub_1D726207C();
    v48 = v47;

    v49 = *&a2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier + 8];
    if (!v49)
    {
      goto LABEL_22;
    }

    if (v46 == *&a2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier] && v49 == v48)
    {
    }

    else
    {
      v51 = sub_1D72646CC();

      if ((v51 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v105 = OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content;
    v106 = a2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content];
    a2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] = 0;
    sub_1D6CA4008(v106, 0);
    if (a2[v105])
    {
      goto LABEL_40;
    }

    v61 = sub_1D6CA3F00();
    __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
    v142[0] = v44;
    sub_1D71F1B20(v61, v142, &v145);
    v107 = [objc_opt_self() mainScreen];
    [v107 scale];
    v109 = v108;

    v110 = v135;
    sub_1D726327C();
    if (v17 > 0.0)
    {
      v113 = *&v17;
    }

    else
    {
      v113 = 0;
    }

    if (v17 > 0.0)
    {
      v114 = v19;
    }

    else
    {
      v114 = 0;
    }

    v70 = sub_1D5EBBF10(v110, v113, v114, v17 <= 0.0, v111, v112, v109);

    __swift_project_boxed_opaque_existential_1(v6 + 12, v6[15]);
    v71 = type metadata accessor for IssueCoverImageProcessorRequest();
    v143 = v71;
    v72 = sub_1D5E46C80(&qword_1EDF093A8, type metadata accessor for IssueCoverImageProcessorRequest);
    v144 = v72;
    v142[0] = v70;

    v73 = sub_1D725D0BC();
    __swift_destroy_boxed_opaque_existential_1(v142);
    if (!v73)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v52 = v21;
  v53 = [v8 identifier];
  v54 = sub_1D726207C();
  v56 = v55;

  v57 = *&a2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier + 8];
  if (v57)
  {
    if (v54 == *&a2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier] && v57 == v56)
    {
    }

    else
    {
      v58 = sub_1D72646CC();

      if ((v58 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v59 = OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content;
    v60 = a2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content];
    a2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] = 0;
    sub_1D6CA4008(v60, 0);
    if (!a2[v59])
    {
      v61 = sub_1D6CA3F00();
      __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
      v142[0] = v52;
      sub_1D71F1B20(v61, v142, &v145);
      v62 = [objc_opt_self() mainScreen];
      [v62 scale];
      v64 = v63;

      v65 = v10;
      sub_1D726327C();
      if (v17 > 0.0)
      {
        v68 = *&v17;
      }

      else
      {
        v68 = 0;
      }

      if (v17 > 0.0)
      {
        v69 = v19;
      }

      else
      {
        v69 = 0;
      }

      v70 = sub_1D5EBBF10(v65, v68, v69, v17 <= 0.0, v66, v67, v64);

      __swift_project_boxed_opaque_existential_1(v6 + 12, v6[15]);
      v71 = type metadata accessor for IssueCoverImageProcessorRequest();
      v143 = v71;
      v72 = sub_1D5E46C80(&qword_1EDF093A8, type metadata accessor for IssueCoverImageProcessorRequest);
      v144 = v72;
      v142[0] = v70;

      v73 = sub_1D725D0BC();
      __swift_destroy_boxed_opaque_existential_1(v142);
      if (!v73)
      {
LABEL_51:
        v143 = v71;
        v144 = v72;
        v142[0] = v70;
        v116 = swift_allocObject();
        swift_weakInit();
        v117 = swift_allocObject();
        *(v117 + 16) = v116;
        *(v117 + 24) = v61;

        v118 = v61;
        sub_1D725FB5C();

        __swift_destroy_boxed_opaque_existential_1(v142);
        goto LABEL_52;
      }

LABEL_50:
      v115 = v73;
      sub_1D725FBBC();

LABEL_52:
      [a2 bounds];
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v126 = v125;

      v127 = &a2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds];
      *v127 = v120;
      *(v127 + 1) = v122;
      *(v127 + 2) = v124;
      *(v127 + 3) = v126;
      v127[32] = 0;
      return;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_40:
}

BOOL sub_1D5E4529C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1D7258DBC();
    ++v2;
    sub_1D5E46C80(&qword_1EDF3C378, MEMORY[0x1E6969C28]);
  }

  while ((sub_1D7261FBC() & 1) == 0);
  return v3 != v4;
}

void sub_1D5E453A8(int a1, void *a2, id a3, void *a4, _BYTE *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v13 = [a3 identifier];
  v14 = sub_1D726207C();
  v16 = v15;

  v17 = *&a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier + 8];
  if (!v17)
  {

    return;
  }

  if (v14 == *&a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier] && v17 == v16)
  {

    v20 = a2;
  }

  else
  {
    v19 = sub_1D72646CC();

    v20 = a2;
    if ((v19 & 1) == 0)
    {
      return;
    }
  }

  v21 = OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content;
  v22 = a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content];
  a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] = 0;
  sub_1D6CA4008(v22, 0);
  if (!a5[v21])
  {
    v23 = *(a6 + 40);
    v24 = *(a6 + 48);
    v25 = sub_1D6CA3F00();
    __swift_project_boxed_opaque_existential_1(v20 + 7, v20[10]);
    v48[0] = a7;
    sub_1D71F1B20(v25, v48, a8);
    v26 = [objc_opt_self() mainScreen];
    [v26 scale];
    v28 = v27;

    v29 = a4;
    sub_1D726327C();
    if (v23 > 0.0)
    {
      v32 = *&v23;
    }

    else
    {
      v32 = 0;
    }

    if (v23 > 0.0)
    {
      v33 = v24;
    }

    else
    {
      v33 = 0;
    }

    v34 = sub_1D5EBBF10(v29, v32, v33, v23 <= 0.0, v30, v31, v28);

    __swift_project_boxed_opaque_existential_1(v20 + 12, v20[15]);
    v35 = type metadata accessor for IssueCoverImageProcessorRequest();
    v49 = v35;
    v36 = sub_1D5E46C80(&qword_1EDF093A8, type metadata accessor for IssueCoverImageProcessorRequest);
    v50 = v36;
    v48[0] = v34;

    v37 = sub_1D725D0BC();
    __swift_destroy_boxed_opaque_existential_1(v48);
    if (v37)
    {
      v38 = v37;
      sub_1D725FBBC();
    }

    else
    {
      v49 = v35;
      v50 = v36;
      v48[0] = v34;
      v39 = swift_allocObject();
      swift_weakInit();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v25;

      v41 = v25;
      sub_1D725FB5C();

      __swift_destroy_boxed_opaque_existential_1(v48);
    }

    [a5 bounds];
    v42 = &a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds];
    *v42 = v43;
    *(v42 + 1) = v44;
    *(v42 + 2) = v45;
    *(v42 + 3) = v46;
    v42[32] = 0;
  }
}

uint64_t sub_1D5E45738(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E62F8];
  sub_1D5C3973C(0, &qword_1EDF3C8E8, &type metadata for LayeredMediaLayer, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();

  v4 = sub_1D725B92C();
  sub_1D5C3973C(0, &qword_1EDF04C00, &type metadata for LayeredMediaLayerRenderable, v3);
  sub_1D725BA8C();

  v5 = sub_1D725A95C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = a2;
  *(v6 + 24) = v7;
  type metadata accessor for LayeredMediaView(0);

  v8 = sub_1D725BA8C();

  return v8;
}

uint64_t sub_1D5E458B4()
{
  sub_1D5C3973C(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D5E4595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6, int a7, int a8, id a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v18 = a13;
  v19 = a11;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  v21 = [a6 identifier];
  v22 = sub_1D726207C();
  v24 = v23;

  v25 = *&a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier + 8];
  if (!v25 || (v22 == *&a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier] ? (v26 = v25 == v24) : (v26 = 0), !v26 && (sub_1D72646CC() & 1) == 0))
  {

    v31 = a11;
    sub_1D5E469DC(a13, &aBlock);
    v32 = a5;
    goto LABEL_36;
  }

  v92 = a3;
  v27 = OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content;
  v28 = a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content];
  a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] = 1;

  v29 = a11;
  if (!v28)
  {
    sub_1D5E469DC(a13, &aBlock);
    v33 = a5;

    v34 = sub_1D6CA3F00();
    [v34 removeFromSuperview];

LABEL_12:
    v35 = sub_1D6CA3F84();
    [a5 bounds];
    [v35 setFrame_];

    [a5 addSubview_];
    v36 = a5[v27];
    if (!a5[v27])
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (v28 == 2)
  {
    sub_1D5E469DC(a13, &aBlock);
    v30 = a5;

    goto LABEL_12;
  }

  sub_1D5E469DC(a13, &aBlock);
  v37 = a5;

  v36 = a5[v27];
  if (!a5[v27])
  {
LABEL_19:

    v18 = a13;
    goto LABEL_36;
  }

LABEL_15:
  if (v36 != 1)
  {
    goto LABEL_19;
  }

  v38 = [a9 superview];
  v39 = sub_1D6CA3F84();
  v40 = v39;
  if (!v38)
  {

    goto LABEL_21;
  }

  sub_1D5B5A498(0, &qword_1EDF1A710);
  v41 = sub_1D726370C();

  if ((v41 & 1) == 0)
  {
LABEL_21:
    [*&a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView] addSubview_];
    v42 = *&a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
    *&a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView] = a9;

    v43 = a9;
  }

  v44 = __swift_project_boxed_opaque_existential_1((a10 + 56), *(a10 + 80));
  v46 = *(*v44 + 16);
  v45 = *(*v44 + 24);
  v48 = *(*v44 + 32);
  v47 = *(*v44 + 40);
  v49 = swift_allocObject();
  v49[2] = v29;
  v49[3] = v46;
  v49[4] = v45;
  v50 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v98 = sub_1D5E46A8C;
  v99 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = sub_1D6E0CD34;
  v97 = &block_descriptor_1;
  v51 = _Block_copy(&aBlock);
  v52 = v29;
  v53 = v46;
  v54 = v45;
  v55 = v48;
  v56 = v47;
  v57 = v53;
  v58 = v54;
  v59 = [v50 initWithDynamicProvider_];
  _Block_release(v51);

  sub_1D726349C();

  [a9 setClipsToBounds_];
  sub_1D726327C();
  [a9 setFrame_];
  v60 = [a9 layer];
  v18 = a13;
  [v60 setCornerCurve_];

  v61 = [a9 layer];
  [v61 setCornerRadius_];

  v62 = [a9 layer];
  v63 = v62;
  v64 = *(a13 + 56);
  if (v64)
  {
    v19 = a11;
    v65 = a4;
    if ((v64 & 2) == 0)
    {
      v66 = 1;
      if ((v64 & 4) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v66 = 3;
  }

  else
  {
    v19 = a11;
    v65 = a4;
    if ((v64 & 2) == 0)
    {
      v66 = 0;
      if ((v64 & 4) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v66 = 2;
  }

  if ((v64 & 4) != 0)
  {
LABEL_32:
    v66 |= 4uLL;
  }

LABEL_33:
  if ((v64 & 8) != 0)
  {
    v66 |= 8uLL;
  }

  [v62 setMaskedCorners_];

  v67 = objc_opt_self();
  v68 = [v67 mainScreen];
  [v68 nativeBounds];
  v70 = v69;
  v72 = v71;

  [a5 bounds];
  v74 = v73;
  v76 = v75;
  v77 = [v67 mainScreen];
  [v77 scale];
  v79 = v78;

  aBlock = v70;
  v95 = v72;
  v96 = v74;
  v97 = v76;
  v98 = v79;
  v80 = [a9 setAlpha_];
  MEMORY[0x1EEE9AC00](v80, v81);
  sub_1D725BDCC();
  v82 = swift_allocObject();
  v82[2] = a9;
  v82[3] = sub_1D5E469B4;
  v82[4] = v20;

  v83 = a9;
  v84 = sub_1D725B92C();
  type metadata accessor for IssueCoverViewRenderer();
  sub_1D725BAAC();

  v85 = swift_allocObject();
  *(v85 + 16) = v92;
  *(v85 + 24) = v65;

  v86 = sub_1D725B92C();
  sub_1D725BACC();

  [a5 bounds];
  v87 = &a5[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds];
  *v87 = v88;
  *(v87 + 1) = v89;
  *(v87 + 2) = v90;
  *(v87 + 3) = v91;
  v87[32] = 0;

LABEL_36:

  sub_1D5E46A38(v18);
}

uint64_t sub_1D5E46128(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1D725CFDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v11;
  v20 = *(a3 + 32);
  swift_beginAccess();
  sub_1D5E46B00(a1 + 16, &v16);
  if (v17)
  {
    sub_1D5B63F14(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_1D725CFBC();
    v12 = sub_1D725E62C();
    (*(v7 + 8))(v10, v6);
    v13 = v12 ^ 1;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_1D5E46B90(&v16);
    v13 = 0;
  }

  return LayeredMediaViewRenderer.render(view:options:forceAsync:)(a2, v19, v13 & 1);
}

id sub_1D5E462B8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v7 = sub_1D725CFDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1D5E46B00(a2 + 16, &v22);
  if (v23)
  {
    sub_1D5B63F14(&v22, aBlock);
    v24 = v7;
    __swift_project_boxed_opaque_existential_1(aBlock, v19);
    sub_1D725CFCC();
    v12 = sub_1D725E62C();
    (*(v8 + 8))(v11, v24);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if ((v12 & 1) == 0)
    {
      return [a3 setAlpha_];
    }
  }

  else
  {
    sub_1D5E46B90(&v22);
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v20 = sub_1D5E46C18;
  v21 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  v19 = &block_descriptor_38;
  v16 = _Block_copy(aBlock);
  v17 = a3;

  [v14 animateWithDuration:v16 animations:0.15];
  _Block_release(v16);
  return a4();
}

uint64_t sub_1D5E46528()
{
  if (qword_1EDF11618 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D5B7E2C0();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D725C30C();
}

uint64_t sub_1D5E46680()
{
  v0 = sub_1D725CFDC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    sub_1D5E46B00(v6 + 16, &v7);
    if (v8)
    {
      sub_1D5B63F14(&v7, v9);
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      sub_1D725CFCC();
      sub_1D725E62C();
      (*(v1 + 8))(v4, v0);
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      sub_1D5E46B90(&v7);
    }

    sub_1D725FB8C();
  }

  return result;
}

uint64_t sub_1D5E46820()
{
  sub_1D5E46B90(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  return swift_deallocClassInstance();
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D5E46B00(uint64_t a1, uint64_t a2)
{
  sub_1D5B67740(0, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E46B90(uint64_t a1)
{
  sub_1D5B67740(0, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5E46C80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5E46CD8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 56);
  if (*v2 > 1u)
  {
    if (*v2 == 2)
    {
      v5 = [v4 thumbnailTextColor];
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = [v4 thumbnailAccentColor];
      if (!v5)
      {
LABEL_12:
        v6 = swift_allocObject();
        v7 = v6;
        v8 = 21;
        goto LABEL_13;
      }
    }
  }

  else if (*v2)
  {
    v5 = [v4 thumbnailBackgroundColor];
    if (!v5)
    {
      v6 = swift_allocObject();
      v7 = v6;
      v8 = 29;
LABEL_13:
      *(v6 + 16) = v8;
      *(v6 + 24) = 0x3FF0000000000000;
      v18 = (v6 + 32);
      v19 = 0x1000000000000000;
      goto LABEL_14;
    }
  }

  else
  {
    v5 = [v4 thumbnailPrimaryColor];
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v9 = v5;
  v7 = swift_allocObject();
  [v9 red];
  v11 = v10 * 255.0;
  [v9 green];
  v13 = v12 * 255.0;
  [v9 blue];
  v15 = v14 * 255.0;
  [v9 alpha];
  v17 = v16;

  *(v7 + 16) = v11;
  *(v7 + 24) = v13;
  v18 = (v7 + 48);
  v19 = 0x6000000000000000;
  *(v7 + 32) = v15;
  *(v7 + 40) = v17;
LABEL_14:
  *v18 = 0;
  *a2 = v19 | v7;
}

uint64_t sub_1D5E46E8C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E46F44()
{
  sub_1D72621EC();
}

uint64_t sub_1D5E46FE8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E4709C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E479BC();
  *a1 = result;
  return result;
}

void sub_1D5E470CC(unint64_t *a1@<X8>)
{
  v2 = "thumbnailBackgroundColor";
  v3 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = "thumbnailTextColor";
  }

  v4 = 0xD000000000000018;
  if (*v1)
  {
    v5 = "thumbnailPrimaryColor";
  }

  else
  {
    v4 = 0xD000000000000015;
    v5 = "Access-Control-Allow-Origin";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t FormatRecipeBinding.Color.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5E4729C()
{
  result = qword_1EC87FF60;
  if (!qword_1EC87FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FF60);
  }

  return result;
}

unint64_t sub_1D5E472F0(uint64_t a1)
{
  result = sub_1D5E47318();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5E47318()
{
  result = qword_1EC87FF68;
  if (!qword_1EC87FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FF68);
  }

  return result;
}

unint64_t sub_1D5E473AC(void *a1)
{
  a1[1] = sub_1D5E473E4();
  a1[2] = sub_1D5E47438();
  result = sub_1D5E4729C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5E473E4()
{
  result = qword_1EC87FF80;
  if (!qword_1EC87FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FF80);
  }

  return result;
}

unint64_t sub_1D5E47438()
{
  result = qword_1EC87FF88;
  if (!qword_1EC87FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FF88);
  }

  return result;
}

uint64_t sub_1D5E4750C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5E47560()
{
  result = qword_1EC87FFA0;
  if (!qword_1EC87FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FFA0);
  }

  return result;
}

unint64_t sub_1D5E475B4()
{
  result = qword_1EC87FFA8;
  if (!qword_1EC87FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FFA8);
  }

  return result;
}

uint64_t sub_1D5E47608@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 <= 1u)
  {
    if (*a1)
    {
      v10 = 0x80000001D73BE330;
      sub_1D5E47A08(a2, v9);
      v28 = 1;
      sub_1D5E46CD8(v9, &v29);
      v19 = v29;
      v12 = type metadata accessor for FormatInspectionItem(0);
      v20 = *(v12 + 24);
      *(a3 + v20) = v19;
      v21 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(a3 + v20, 0, 1, v21);
      v15 = 0xD000000000000014;
    }

    else
    {
      v10 = 0x80000001D73BE350;
      sub_1D5E47A08(a2, v9);
      v28 = 0;
      sub_1D5E46CD8(v9, &v29);
      v11 = v29;
      v12 = type metadata accessor for FormatInspectionItem(0);
      v13 = *(v12 + 24);
      *(a3 + v13) = v11;
      v14 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v14 - 8) + 56))(a3 + v13, 0, 1, v14);
      v15 = 0xD000000000000011;
    }

    goto LABEL_8;
  }

  if (*a1 != 2)
  {
    v10 = 0x80000001D73BE310;
    sub_1D5E47A08(a2, v9);
    v28 = 3;
    sub_1D5E46CD8(v9, &v29);
    v22 = v29;
    v12 = type metadata accessor for FormatInspectionItem(0);
    v23 = *(v12 + 24);
    *(a3 + v23) = v22;
    v24 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(a3 + v23, 0, 1, v24);
    v15 = 0xD000000000000010;
LABEL_8:
    *a3 = v15;
    a3[1] = v10;
    goto LABEL_9;
  }

  sub_1D5E47A08(a2, v9);
  v28 = 2;
  sub_1D5E46CD8(v9, &v29);
  v16 = v29;
  v12 = type metadata accessor for FormatInspectionItem(0);
  v17 = *(v12 + 24);
  *(a3 + v17) = v16;
  v18 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(a3 + v17, 0, 1, v18);
  *a3 = xmmword_1D7278730;
LABEL_9:
  a3[2] = 0;
  a3[3] = 0;
  v25 = a3 + *(v12 + 28);
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = -1;
  sub_1D5E47A6C(v9);
  type metadata accessor for FormatInspectionItem(0);
  return (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
}

uint64_t sub_1D5E479BC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5E47A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedRecipe();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E47A6C(uint64_t a1)
{
  v2 = type metadata accessor for FeedRecipe();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5E47AD0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E47B88()
{
  sub_1D72621EC();
}

uint64_t sub_1D5E47C2C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E47CE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E482D0();
  *a1 = result;
  return result;
}

void sub_1D5E47D10(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x776F6C6C61;
  v4 = 0xE400000000000000;
  v5 = 1885956979;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001D73B72B0;
  }

  if (*v1)
  {
    v3 = 0x65766F6D6572;
    v2 = 0xE600000000000000;
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

uint64_t FeedGroupEmitterRuleResult.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 16))
  {
    v3 = 0x202C65766F6D6552;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v3 = 0x202C70696B53;
LABEL_5:
    v5 = v3;
    MEMORY[0x1DA6F9910](v1, v2);
    return v5;
  }

  if (v1 | v2)
  {
    return 0x746E552070696B53;
  }

  else
  {
    return 0x776F6C6C41;
  }
}

BOOL static FeedGroupEmitterRuleResult.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!*(a1 + 16))
  {
LABEL_4:
    if (!*(a2 + 16))
    {
      return v2 < v3;
    }

    goto LABEL_9;
  }

  if (v2 == 1)
  {
    v2 = 2;
    goto LABEL_4;
  }

  v2 = 3;
  if (*a1 != 0)
  {
    v2 = 1;
  }

  if (*(a2 + 16))
  {
LABEL_9:
    if (v3 == 1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
      if (*a2 != 0)
      {
        v3 = 1;
      }
    }
  }

  return v2 < v3;
}

BOOL sub_1D5E47F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!*(a1 + 16))
  {
LABEL_4:
    if (!*(a2 + 16))
    {
      return v2 < v3;
    }

    goto LABEL_9;
  }

  if (v2 == 1)
  {
    v2 = 2;
    goto LABEL_4;
  }

  v2 = 3;
  if (*a1 != 0)
  {
    v2 = 1;
  }

  if (*(a2 + 16))
  {
LABEL_9:
    if (v3 == 1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
      if (*a2 != 0)
      {
        v3 = 1;
      }
    }
  }

  return v2 < v3;
}

BOOL sub_1D5E47FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!*(a2 + 16))
  {
LABEL_4:
    if (!*(a1 + 16))
    {
      return v3 >= v2;
    }

    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v3 = 2;
    goto LABEL_4;
  }

  v3 = 3;
  if (*a2 != 0)
  {
    v3 = 1;
  }

  if (*(a1 + 16))
  {
LABEL_9:
    if (v2 == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
      if (*a1 != 0)
      {
        v2 = 1;
      }
    }
  }

  return v3 >= v2;
}

BOOL sub_1D5E48038(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!*(a1 + 16))
  {
LABEL_4:
    if (!*(a2 + 16))
    {
      return v2 >= v3;
    }

    goto LABEL_9;
  }

  if (v2 == 1)
  {
    v2 = 2;
    goto LABEL_4;
  }

  v2 = 3;
  if (*a1 != 0)
  {
    v2 = 1;
  }

  if (*(a2 + 16))
  {
LABEL_9:
    if (v3 == 1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
      if (*a2 != 0)
      {
        v3 = 1;
      }
    }
  }

  return v2 >= v3;
}

BOOL sub_1D5E480A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!*(a2 + 16))
  {
LABEL_4:
    if (!*(a1 + 16))
    {
      return v3 < v2;
    }

    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v3 = 2;
    goto LABEL_4;
  }

  v3 = 3;
  if (*a2 != 0)
  {
    v3 = 1;
  }

  if (*(a1 + 16))
  {
LABEL_9:
    if (v2 == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
      if (*a1 != 0)
      {
        v2 = 1;
      }
    }
  }

  return v3 < v2;
}

uint64_t _s8NewsFeed0B22GroupEmitterRuleResultO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v2 = 2;
      if (!*(a2 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (*a1 == 0)
      {
        v2 = 0;
      }

      else
      {
        v2 = 3;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v2 = 1;
    if (!*(a2 + 16))
    {
LABEL_13:
      v3 = 1;
      return sub_1D6DE4850(v2, v3);
    }
  }

  if (*(a2 + 16) == 1)
  {
    v3 = 2;
  }

  else if (*a2 == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  return sub_1D6DE4850(v2, v3);
}

unint64_t sub_1D5E4817C()
{
  result = qword_1EC87FFB0;
  if (!qword_1EC87FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FFB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B22GroupEmitterRuleResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D5E481EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1D5E48228()
{
  result = qword_1EC87FFB8;
  if (!qword_1EC87FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FFB8);
  }

  return result;
}

unint64_t sub_1D5E4827C()
{
  result = qword_1EDF139F0;
  if (!qword_1EDF139F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF139F0);
  }

  return result;
}

uint64_t sub_1D5E482D0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

NewsFeed::DebugFormatUploadTarget_optional __swiftcall DebugFormatUploadTarget.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DebugFormatUploadTarget.rawValue.getter()
{
  v1 = 0x6D6F6F727377656ELL;
  if (*v0 != 1)
  {
    v1 = 1752461154;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265536C61636F6CLL;
  }
}

uint64_t sub_1D5E483D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6D6F6F727377656ELL;
  if (v2 != 1)
  {
    v4 = 1752461154;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265536C61636F6CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000726576;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6D6F6F727377656ELL;
  if (*a2 != 1)
  {
    v8 = 1752461154;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265536C61636F6CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000726576;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D5E484CC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E48570()
{
  sub_1D72621EC();
}

uint64_t sub_1D5E48600()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5E486AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726576;
  v4 = 0xE800000000000000;
  v5 = 0x6D6F6F727377656ELL;
  if (v2 != 1)
  {
    v5 = 1752461154;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265536C61636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D5E4870C(uint64_t a1)
{
  v2 = sub_1D5E48934();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D5E48760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5E48934();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D5E487BC(uint64_t a1)
{
  v2 = sub_1D5E48934();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t DebugFormatUploadTarget.description.getter()
{
  v1 = 0x6D6F6F727377654ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x786F62706F7244;
  }
}

unint64_t sub_1D5E48870()
{
  result = qword_1EC87FFC0;
  if (!qword_1EC87FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FFC0);
  }

  return result;
}

uint64_t sub_1D5E488C4()
{
  v1 = 0x6D6F6F727377654ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x786F62706F7244;
  }
}

unint64_t sub_1D5E48934()
{
  result = qword_1EC8900B0;
  if (!qword_1EC8900B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8900B0);
  }

  return result;
}

uint64_t VideoLogoBackdropView.gradientDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  swift_beginAccess();
  return sub_1D5E48A38(v1 + v3, a1);
}

uint64_t sub_1D5E48A38(uint64_t a1, uint64_t a2)
{
  sub_1D5BB95B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E48A9C(uint64_t a1, uint64_t *a2)
{
  sub_1D5BB95B0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E48A38(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  swift_beginAccess();
  sub_1D5E48BF4(v7, v8 + v9);
  swift_endAccess();
  sub_1D5E48C58();
  return sub_1D5E4A074(v7, sub_1D5BB95B0);
}

uint64_t VideoLogoBackdropView.gradientDescriptor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  swift_beginAccess();
  sub_1D5E48BF4(a1, v1 + v3);
  swift_endAccess();
  sub_1D5E48C58();
  return sub_1D5E4A074(a1, sub_1D5BB95B0);
}

uint64_t sub_1D5E48BF4(uint64_t a1, uint64_t a2)
{
  sub_1D5BB95B0();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E48C58()
{
  sub_1D5BB95B0();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v5, v6).n128_u64[0];
  v9 = &v15 - v8;
  v10 = [v0 layer];
  type metadata accessor for VideoLogoBackdropLayer(0);
  v11 = swift_dynamicCastClassUnconditional();
  v12 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  swift_beginAccess();
  sub_1D5E48A38(v0 + v12, v9);
  v13 = OBJC_IVAR____TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer_gradientDescriptor;
  swift_beginAccess();
  sub_1D5E48A38(v11 + v13, v4);
  swift_beginAccess();
  sub_1D5E48BF4(v9, v11 + v13);
  swift_endAccess();
  sub_1D5E4928C(v4);

  sub_1D5E4A074(v4, sub_1D5BB95B0);
  return sub_1D5E4A074(v9, sub_1D5BB95B0);
}

uint64_t (*VideoLogoBackdropView.gradientDescriptor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D5E48E48;
}

uint64_t sub_1D5E48E48(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D5E48C58();
  }

  return result;
}

id VideoLogoBackdropView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VideoLogoBackdropView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  v11 = sub_1D725E94C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id VideoLogoBackdropView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VideoLogoBackdropView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  v5 = sub_1D725E94C();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1D5E4928C(uint64_t a1)
{
  v3 = sub_1D725E94C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB95B0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E4A010();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer_gradientDescriptor;
  swift_beginAccess();
  v18 = *(v13 + 56);
  sub_1D5E48A38(a1, v16);
  sub_1D5E48A38(v1 + v17, &v16[v18]);
  v19 = *(v4 + 48);
  if (v19(v16, 1, v3) == 1)
  {
    if (v19(&v16[v18], 1, v3) == 1)
    {
      return sub_1D5E4A074(v16, sub_1D5BB95B0);
    }

    goto LABEL_6;
  }

  sub_1D5E48A38(v16, v11);
  if (v19(&v16[v18], 1, v3) == 1)
  {
    (*(v4 + 8))(v11, v3);
LABEL_6:
    sub_1D5E4A074(v16, sub_1D5E4A010);
    return [v1 setNeedsDisplay];
  }

  (*(v4 + 32))(v7, &v16[v18], v3);
  sub_1D5E4A0D4();
  v21 = sub_1D7261FBC();
  v22 = *(v4 + 8);
  v22(v7, v3);
  v22(v11, v3);
  result = sub_1D5E4A074(v16, sub_1D5BB95B0);
  if ((v21 & 1) == 0)
  {
    return [v1 setNeedsDisplay];
  }

  return result;
}

id sub_1D5E4962C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D5BB95B0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer_gradientDescriptor;
  v10 = sub_1D725E94C();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D72646AC();
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v20, sel_initWithLayer_, v11);
  swift_unknownObjectRelease();
  v13 = v12;
  [v13 setNeedsDisplayOnBoundsChange_];
  sub_1D5B7C390(a1, &v19);
  if (swift_dynamicCast())
  {
    v14 = v18[1];
    v15 = OBJC_IVAR____TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer_gradientDescriptor;
    swift_beginAccess();
    sub_1D5E48A38(v14 + v15, v8);

    v16 = OBJC_IVAR____TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer_gradientDescriptor;
    swift_beginAccess();
    sub_1D5E49FAC(v8, v13 + v16);
    swift_endAccess();
  }

  return v13;
}

void sub_1D5E498CC(CGContext *a1)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_1D725CD1C();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725F6DC();
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB95B0();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725E94C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer_gradientDescriptor;
  swift_beginAccess();
  sub_1D5E48A38(v2 + v19, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D5E4A074(v13, sub_1D5BB95B0);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v20 = CGColorSpaceCreateDeviceRGB();
    v21 = sub_1D725E91C();
    v22 = sub_1D725E93C();
    if (v22)
    {
      v23 = (v22 + 32);
    }

    else
    {
      v23 = 0;
    }

    v24 = CGGradientCreateWithColors(v20, v21, v23);
    v54 = v20;

    v53 = v24;
    if (v24)
    {
      [v2 bounds];
      Width = CGRectGetWidth(v62);
      v26 = Width + Width;
      [v2 bounds];
      Height = CGRectGetHeight(v63);
      v28 = Height + Height;
      sub_1D725E8FC();
      sub_1D725F6BC();
      v30 = v29;
      v52 = v15;
      v31 = *(v56 + 8);
      v31(v9, v6);
      v64.origin.x = 0.0;
      v64.origin.y = 0.0;
      v64.size.width = v26;
      v64.size.height = v28;
      v32 = v30 * CGRectGetWidth(v64);
      sub_1D725E8FC();
      sub_1D725F6BC();
      v34 = v33;
      v31(v9, v6);
      v65.origin.x = 0.0;
      v65.origin.y = 0.0;
      v65.size.width = v26;
      v65.size.height = v28;
      v35 = v34 * CGRectGetHeight(v65);
      sub_1D725E92C();
      sub_1D725F6BC();
      v37 = v36;
      v31(v9, v6);
      v66.origin.x = 0.0;
      v66.origin.y = 0.0;
      v66.size.width = v26;
      v66.size.height = v28;
      v38 = v37 * CGRectGetWidth(v66);
      sub_1D725E92C();
      sub_1D725F6BC();
      v40 = v39;
      v31(v9, v6);
      v67.origin.x = 0.0;
      v67.origin.y = 0.0;
      v67.size.width = v26;
      v67.size.height = v28;
      v41 = v40 * CGRectGetHeight(v67);
      sub_1D725E8FC();
      v42 = v55;
      sub_1D725F6CC();
      v31(v9, v6);
      sub_1D725CD0C();
      v44 = v43;
      v45 = *(v57 + 8);
      v57 = v14;
      v46 = v6;
      v47 = v58;
      v45(v42, v58);
      sub_1D725E92C();
      sub_1D725F6CC();
      v31(v9, v46);
      sub_1D725CD0C();
      v49 = v48;
      v45(v42, v47);
      v50 = v59;
      CGContextSaveGState(v59);
      v51 = v53;
      v60.x = v32;
      v60.y = v35;
      v61.x = v38;
      v61.y = v41;
      CGContextDrawRadialGradient(v50, v53, v60, v44, v61, v49, 3u);
      CGContextRestoreGState(v50);

      (*(v52 + 8))(v18, v57);
    }

    else
    {
      (*(v15 + 8))(v18, v14);
    }
  }
}

void sub_1D5E49F1C()
{
  sub_1D5BB95B0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D5E49FAC(uint64_t a1, uint64_t a2)
{
  sub_1D5BB95B0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D5E4A010()
{
  if (!qword_1EC87FFF0)
  {
    sub_1D5BB95B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC87FFF0);
    }
  }
}

uint64_t sub_1D5E4A074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D5E4A0D4()
{
  result = qword_1EC87FFF8;
  if (!qword_1EC87FFF8)
  {
    sub_1D725E94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87FFF8);
  }

  return result;
}

uint64_t DebugFormatBackendEnvironment.description.getter()
{
  v1 = 0x676E6967617453;
  if (*v0 != 1)
  {
    v1 = 0x69746375646F7250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 16721;
  }
}

uint64_t sub_1D5E4A188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v3 > 2)
  {
    if (*(*(a1 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 4u)
    {
      if (v3 == 3)
      {
        v4 = sub_1D5E4A2C4(a1);
        if (v5)
        {
          sub_1D5E4A958(v4, v5, a2);
LABEL_9:

          v8 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        v9 = sub_1D5E4A2C4(a1);
        if (v10)
        {
          sub_1D5E4A720(v9, v10, a2);
          goto LABEL_9;
        }
      }

      goto LABEL_12;
    }

    if (v3 == 5)
    {
      goto LABEL_12;
    }
  }

  v6 = sub_1D5E4A2C4(a1);
  if (v7)
  {
    sub_1D5E4AB90(v6, v7, a2);
    goto LABEL_9;
  }

LABEL_12:
  v8 = 1;
LABEL_13:
  v11 = sub_1D72585BC();
  v12 = *(*(v11 - 8) + 56);

  return v12(a2, v8, 1, v11);
}

uint64_t sub_1D5E4A2C4(uint64_t a1)
{
  sub_1D5B592C0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v41 - v13);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v41 - v17);
  v19 = type metadata accessor for FormatCompilerOptions(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v41 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v41 - v29;
  v31 = *(a1 + 16);
  if (*v1)
  {
    if (*v1 == 1)
    {
      sub_1D5E4B804(v31 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v26, type metadata accessor for FormatCompilerOptions);
      sub_1D5E4B804(&v26[*(v19 + 24)], v6, sub_1D5B592C0);
      sub_1D5E4B924(v26, type metadata accessor for FormatCompilerOptions);
      sub_1D5E4B86C(v6, v14);
      v32 = *v14;
      v33 = v14[1];
      v35 = v14[2];
      v34 = v14[3];
      sub_1D5E4B8D0(*v14, v33);
      sub_1D5E4B924(v14, type metadata accessor for FormatCompilerOptions.Newsroom);
      if (v33 != 1)
      {

        v36 = v32;
        v37 = v33;
        goto LABEL_10;
      }

      return 0;
    }

    sub_1D5E4B804(v31 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v22, type metadata accessor for FormatCompilerOptions);
    sub_1D5E4B804(&v22[*(v19 + 24)], v6, sub_1D5B592C0);
    sub_1D5E4B924(v22, type metadata accessor for FormatCompilerOptions);
    sub_1D5E4B86C(v6, v10);
    v38 = *v10;
    v39 = v10[1];
    v35 = v10[4];
    v34 = v10[5];
    sub_1D5E4B8D0(*v10, v39);
    sub_1D5E4B924(v10, type metadata accessor for FormatCompilerOptions.Newsroom);
    if (v39 == 1)
    {
      return 0;
    }

    v36 = v38;
    v37 = v39;
  }

  else
  {
    sub_1D5E4B804(v31 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, &v41 - v29, type metadata accessor for FormatCompilerOptions);
    sub_1D5E4B804(&v30[*(v19 + 24)], v6, sub_1D5B592C0);
    sub_1D5E4B924(v30, type metadata accessor for FormatCompilerOptions);
    sub_1D5E4B86C(v6, v18);
    v35 = *v18;
    v34 = v18[1];
    sub_1D5E4B8D0(*v18, v34);
    sub_1D5E4B924(v18, type metadata accessor for FormatCompilerOptions.Newsroom);
    if (v34 == 1)
    {
      return 0;
    }

    v36 = v35;
    v37 = v34;
  }

LABEL_10:
  sub_1D5E4B984(v36, v37);
  if (v34)
  {
    return v35;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5E4A720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *v3;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1D7263D4C();
  v21[15] = v16;
  sub_1D5E4ADC8(v11);
  sub_1D5E4B7BC(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
  v17 = sub_1D72644BC();
  v19 = v18;

  v22 = v17;
  v23 = v19;
  (*(v8 + 8))(v11, v7);
  MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73BE4C0);
  MEMORY[0x1DA6F9910](a1, a2);
  sub_1D725855C();

  result = (*(v8 + 48))(v15, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a3, v15, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E4A958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *v3;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1D7263D4C();
  v21[15] = v16;
  sub_1D5E4ADC8(v11);
  sub_1D5E4B7BC(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
  v17 = sub_1D72644BC();
  v19 = v18;

  v22 = v17;
  v23 = v19;
  (*(v8 + 8))(v11, v7);
  MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73BE500);
  MEMORY[0x1DA6F9910](a1, a2);
  sub_1D725855C();

  result = (*(v8 + 48))(v15, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a3, v15, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E4AB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *v3;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1D7263D4C();
  v21[15] = v16;
  sub_1D5E4ADC8(v11);
  sub_1D5E4B7BC(&qword_1EDF18AC0, MEMORY[0x1E6968FB0]);
  v17 = sub_1D72644BC();
  v19 = v18;

  v22 = v17;
  v23 = v19;
  (*(v8 + 8))(v11, v7);
  MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73BE4E0);
  MEMORY[0x1DA6F9910](a1, a2);
  sub_1D725855C();

  result = (*(v8 + 48))(v15, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a3, v15, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5E4ADC8@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - v13;
  if (!*v1)
  {
    sub_1D725855C();
    v18 = sub_1D72585BC();
    v19 = *(v18 - 8);
    result = (*(v19 + 48))(v14, 1, v18);
    if (result != 1)
    {
      return (*(v19 + 32))(a1, v14, v18);
    }

    goto LABEL_11;
  }

  if (*v1 == 1)
  {
    sub_1D725855C();
    v15 = sub_1D72585BC();
    v16 = *(v15 - 8);
    result = (*(v16 + 48))(v10, 1, v15);
    if (result != 1)
    {
      return (*(v16 + 32))(a1, v10, v15);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1D725855C();
  v20 = sub_1D72585BC();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v6, 1, v20);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return (*(v21 + 32))(a1, v6, v20);
}

NewsFeed::DebugFormatBackendEnvironment_optional __swiftcall DebugFormatBackendEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DebugFormatBackendEnvironment.rawValue.getter()
{
  v1 = 0x676E6967617473;
  if (*v0 != 1)
  {
    v1 = 0x69746375646F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 24945;
  }
}

void sub_1D5E4B13C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E6967617473;
  if (v2 != 1)
  {
    v5 = 0x69746375646F7270;
    v4 = 0xEA00000000006E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 24945;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D5E4B244()
{
  result = qword_1EC880000;
  if (!qword_1EC880000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880000);
  }

  return result;
}

uint64_t sub_1D5E4B298(uint64_t a1)
{
  v2 = sub_1D5E4B768();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D5E4B2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5E4B768();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D5E4B348(uint64_t a1)
{
  v2 = sub_1D5E4B768();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

void sub_1D5E4B3E4()
{
  if (!qword_1EC880010)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880010);
    }
  }
}

uint64_t sub_1D5E4B444()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E4B4E0()
{
  sub_1D72621EC();
}

uint64_t sub_1D5E4B568()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E4B600(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E6967617473;
  if (v2 != 1)
  {
    v4 = 0x69746375646F7270;
    v3 = 0xEA00000000006E6FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 24945;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E6967617473;
  if (*a2 != 1)
  {
    v8 = 0x69746375646F7270;
    v7 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 24945;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D5E4B704()
{
  v1 = 0x676E6967617453;
  if (*v0 != 1)
  {
    v1 = 0x69746375646F7250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 16721;
  }
}

unint64_t sub_1D5E4B768()
{
  result = qword_1EC880018;
  if (!qword_1EC880018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880018);
  }

  return result;
}

uint64_t sub_1D5E4B7BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5E4B804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5E4B86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5E4B8D0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D5E4B924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5E4B984(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *FormatContentTheme.__allocating_init(themes:properties:selectors:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = *a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *FormatContentTheme.init(themes:properties:selectors:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = *a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t FormatContentTheme.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatContentTheme.init(from:)(a1);
  return v2;
}

void *FormatContentTheme.init(from:)(void *a1)
{
  v3 = v1;
  v38 = *v1;
  v39 = v2;
  sub_1D5E4C148(0, &qword_1EDF17F40, sub_1D5C8CD38);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v35 - v7;
  sub_1D5E4C148(0, &qword_1EDF17F20, sub_1D5E18934);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  sub_1D5E4C520(0, &qword_1EDF03A58, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v37 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v35 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E4C19C();
  v18 = v39;
  sub_1D7264B0C();
  if (v18)
  {
    swift_deallocPartialClassInstance();
    goto LABEL_12;
  }

  v36 = v8;
  v39 = a1;
  sub_1D5E4C1F0(0);
  v40 = 1;
  sub_1D5B4A1A4(qword_1EDF3CDD0, 255, sub_1D5E4C1F0);
  v19 = v17;
  sub_1D726427C();
  if (!v41)
  {
    goto LABEL_6;
  }

  if (!*(v41 + 16))
  {

LABEL_6:
    sub_1D5E4C26C();
    v20 = swift_allocError();
    *v21 = 1;
    swift_willThrow();
    sub_1D5B4A5A0(0);
    v40 = 0;
    sub_1D5B4A1A4(qword_1EDF3E280, 255, sub_1D5B4A5A0);
    sub_1D726431C();

    v3[2] = v41;
    goto LABEL_7;
  }

  v3[2] = v41;
LABEL_7:
  sub_1D5E18934();
  v23 = v22;
  LOBYTE(v41) = 2;
  sub_1D5B4A1A4(&qword_1EDF3BD70, 255, sub_1D5E18934);
  sub_1D726427C();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v12, 1, v23);
  v35 = v19;
  if (v25 == 1)
  {
    sub_1D5E4C210(v12, &qword_1EDF17F20, sub_1D5E18934);
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v26 = sub_1D725A74C();
    (*(v24 + 8))(v12, v23);
  }

  v3[3] = v26;
  sub_1D5C8CD38();
  v28 = v27;
  LOBYTE(v41) = 3;
  sub_1D5B4A1A4(&qword_1EDF3BE00, 255, sub_1D5C8CD38);
  v29 = v35;
  v30 = v36;
  sub_1D726427C();
  v32 = v29;
  v33 = *(v28 - 8);
  if ((*(v33 + 48))(v30, 1, v28) == 1)
  {
    sub_1D5E4C210(v30, &qword_1EDF17F40, sub_1D5C8CD38);
    v34 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v34 = sub_1D725A74C();
    (*(v33 + 8))(v30, v28);
  }

  a1 = v39;
  (*(v37 + 8))(v32, v14);
  v3[4] = v34;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void sub_1D5E4C148(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5E4C19C()
{
  result = qword_1EDF10720;
  if (!qword_1EDF10720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10720);
  }

  return result;
}

uint64_t sub_1D5E4C210(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5E4C148(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D5E4C26C()
{
  result = qword_1EDF40430;
  if (!qword_1EDF40430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40430);
  }

  return result;
}

uint64_t FormatContentTheme.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5E4C520(0, &qword_1EC880020, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E4C19C();
  sub_1D7264B5C();
  v13 = v3[2];
  HIBYTE(v12) = 0;
  sub_1D5B4A5A0(0);
  sub_1D5B4A1A4(&qword_1EDF0A490, 255, sub_1D5B4A5A0);

  sub_1D726443C();
  if (v2)
  {
  }

  else
  {

    if (*(v3[3] + 16))
    {
      v13 = v3[3];
      HIBYTE(v12) = 2;
      sub_1D5E4C584();
      sub_1D5E4C5D4();
      sub_1D726443C();
    }

    if (*(v3[4] + 16))
    {
      v13 = v3[4];
      HIBYTE(v12) = 3;
      sub_1D5B81B04();
      sub_1D5E4C64C();
      sub_1D726443C();
    }
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1D5E4C520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E4C19C();
    v7 = a3(a1, &type metadata for FormatContentTheme.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5E4C584()
{
  if (!qword_1EDF3C918)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C918);
    }
  }
}

unint64_t sub_1D5E4C5D4()
{
  result = qword_1EDF05030;
  if (!qword_1EDF05030)
  {
    sub_1D5E4C584();
    sub_1D5B59D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05030);
  }

  return result;
}

unint64_t sub_1D5E4C64C()
{
  result = qword_1EDF047E0;
  if (!qword_1EDF047E0)
  {
    sub_1D5B81B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF047E0);
  }

  return result;
}

uint64_t sub_1D5E4C6C8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E4C790()
{
  sub_1D72621EC();
}

uint64_t sub_1D5E4C844()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E4C908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E4CE18();
  *a1 = result;
  return result;
}

void sub_1D5E4C938(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x73656D656874;
  v4 = 0xEA00000000007365;
  v5 = 0x69747265706F7270;
  if (*v1 != 2)
  {
    v5 = 0x726F7463656C6573;
    v4 = 0xE900000000000073;
  }

  if (*v1)
  {
    v3 = 0x3273656D656874;
    v2 = 0xE700000000000000;
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

uint64_t sub_1D5E4C9BC()
{
  v1 = 0x73656D656874;
  v2 = 0x69747265706F7270;
  if (*v0 != 2)
  {
    v2 = 0x726F7463656C6573;
  }

  if (*v0)
  {
    v1 = 0x3273656D656874;
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

uint64_t sub_1D5E4CA3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E4CE18();
  *a1 = result;
  return result;
}

uint64_t sub_1D5E4CA64(uint64_t a1)
{
  v2 = sub_1D5E4C19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5E4CAA0(uint64_t a1)
{
  v2 = sub_1D5E4C19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentTheme.deinit()
{

  return v0;
}

uint64_t FormatContentTheme.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5E4CB54(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5B4A1A4(&qword_1EC880028, a2, type metadata accessor for FormatContentTheme);
  a1[2] = sub_1D5B4A1A4(&qword_1EC880030, v3, type metadata accessor for FormatContentTheme);
  result = sub_1D5B4A1A4(&qword_1EC880038, v4, type metadata accessor for FormatContentTheme);
  a1[3] = result;
  return result;
}

void *sub_1D5E4CC24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatContentTheme.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D5E4CD14()
{
  result = qword_1EC880040;
  if (!qword_1EC880040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880040);
  }

  return result;
}

unint64_t sub_1D5E4CD6C()
{
  result = qword_1EDF10710;
  if (!qword_1EDF10710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10710);
  }

  return result;
}

unint64_t sub_1D5E4CDC4()
{
  result = qword_1EDF10718;
  if (!qword_1EDF10718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10718);
  }

  return result;
}

uint64_t sub_1D5E4CE18()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id SportsEmbedConfigurationKind.leagueTag.getter(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 2)
  {
    if (v1)
    {
      if (v1 != 1)
      {
        return [*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30) eventLeagueTag];
      }

      sub_1D5E4CF90();
      sub_1D725BE8C();
      v3 = *(v4 + 56);
      swift_unknownObjectRetain();

      return v3;
    }

    else
    {
      return [*(a1 + 48) eventLeagueTag];
    }
  }

  else
  {
    if (v1 <= 4)
    {
      return [*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30) eventLeagueTag];
    }

    return swift_unknownObjectRetain();
  }
}

void sub_1D5E4CF90()
{
  if (!qword_1EDF3B8A0)
  {
    sub_1D5E4CFF4();
    sub_1D5E4D04C();
    v0 = sub_1D725BEAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B8A0);
    }
  }
}

void sub_1D5E4CFF4()
{
  if (!qword_1EDF1AF90)
  {
    type metadata accessor for SportsBracketDataVisualization();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AF90);
    }
  }
}

unint64_t sub_1D5E4D04C()
{
  result = qword_1EDF1AF80;
  if (!qword_1EDF1AF80)
  {
    sub_1D5E4CFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AF80);
  }

  return result;
}

uint64_t SportsEmbedConfigurationKind.championshipTag.getter(unint64_t a1)
{
  if (a1 >> 61 != 1)
  {
    return 0;
  }

  sub_1D5E4CF90();
  sub_1D725BE8C();
  v1 = *(v3 + 64);
  swift_unknownObjectRetain();

  return v1;
}

uint64_t SportsEmbedConfigurationKind.umcCanonicalId.getter(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) > 2)
  {
    if (v1 > 4)
    {
      v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      goto LABEL_10;
    }

LABEL_7:
    v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_10:

    return v2;
  }

  if (!v1)
  {
    v2 = *(a1 + 32);
    goto LABEL_10;
  }

  if (v1 != 1)
  {
    goto LABEL_7;
  }

  return SportsBracketGroupDataVisualization.umcCanonicalId.getter();
}

uint64_t SportsEmbedConfigurationKind.description.getter(unint64_t a1)
{
  v1 = a1 >> 61;
  v2 = 0x726F635320786F42;
  v3 = 0x676E69646E617453;
  if (a1 >> 61 != 5)
  {
    v3 = 0x65726F6353;
  }

  v4 = 0x6F635320656E694CLL;
  if (v1 != 3)
  {
    v4 = 0x52207972756A6E49;
  }

  if (v1 <= 4)
  {
    v3 = v4;
  }

  v5 = 0x74656B63617242;
  if (v1 != 1)
  {
    v5 = 0x79616C502079654BLL;
  }

  if (v1)
  {
    v2 = v5;
  }

  if (v1 <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D5E4D2B0()
{
  v1 = *v0 >> 61;
  v2 = 0x726F635320786F42;
  v3 = 0x676E69646E617453;
  if (v1 != 5)
  {
    v3 = 0x65726F6353;
  }

  v4 = 0x6F635320656E694CLL;
  if (v1 != 3)
  {
    v4 = 0x52207972756A6E49;
  }

  if (v1 <= 4)
  {
    v3 = v4;
  }

  v5 = 0x74656B63617242;
  if (v1 != 1)
  {
    v5 = 0x79616C502079654BLL;
  }

  if (v1)
  {
    v2 = v5;
  }

  if (v1 <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t FormatSnippet.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSnippet.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatSnippet.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D5E4D570(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t FormatSnippet.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FormatSnippet.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D5E4D6C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t FormatSnippet.description.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_1D5E4D7FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

uint64_t FormatSnippet.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_1D5E4D92C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

uint64_t FormatSnippet.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_1D5E4DA5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

uint64_t FormatSnippet.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t sub_1D5E4DB8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
}

uint64_t FormatSnippet.types.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t FormatSnippet.__allocating_init(identifier:name:description:children:options:selectors:types:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 48) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  swift_beginAccess();
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  swift_beginAccess();
  *(v17 + 48) = a5;
  *(v17 + 56) = a6;

  swift_beginAccess();
  *(v17 + 64) = a7;
  swift_beginAccess();
  *(v17 + 72) = a8;
  swift_beginAccess();
  *(v17 + 80) = a9;
  swift_beginAccess();
  *(v17 + 88) = a10;
  return v17;
}

uint64_t FormatSnippet.init(identifier:name:description:children:options:selectors:types:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 48) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_beginAccess();
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;

  swift_beginAccess();
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;

  swift_beginAccess();
  *(v10 + 64) = a7;
  swift_beginAccess();
  *(v10 + 72) = a8;
  swift_beginAccess();
  *(v10 + 80) = a9;
  swift_beginAccess();
  *(v10 + 88) = a10;
  return v10;
}

uint64_t FormatSnippet.deinit()
{

  return v0;
}

uint64_t FormatSnippet.__deallocating_deinit()
{
  FormatSnippet.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5E4DF90(uint64_t a1)
{
  result = sub_1D5B4B970(&qword_1EDF455A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5E4DFD4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

unint64_t sub_1D5E4E0CC()
{
  sub_1D5C0F84C(v0, v2);
  switch(v3)
  {
    case 1:
    case 10:
    case 11:
      sub_1D5E4E3B4(v2);
      result = 0xD000000000000021;
      break;
    case 2:
    case 3:
      result = 0xD000000000000023;
      break;
    case 4:
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
    case 7:
      sub_1D5E4E3B4(v2);
      result = 0xD000000000000026;
      break;
    case 8:
    case 9:
      sub_1D5E4E3B4(v2);
      result = 0xD00000000000001DLL;
      break;
    case 12:
      sub_1D5E4E3B4(v2);
      result = 0xD000000000000020;
      break;
    case 13:
      if (v2[3] | v2[4] | v2[0] | v2[2] | v2[1])
      {
        result = 0x6C706D4920746F4ELL;
      }

      else
      {
        result = 0xD000000000000019;
      }

      break;
    default:
      __swift_destroy_boxed_opaque_existential_1(v2);
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

unint64_t sub_1D5E4E308()
{
  result = qword_1EDF0B008;
  if (!qword_1EDF0B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B008);
  }

  return result;
}

unint64_t sub_1D5E4E35C()
{
  result = qword_1EC880048;
  if (!qword_1EC880048)
  {
    type metadata accessor for UIUserInterfaceIdiom(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880048);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D5E4E3F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xE)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5E4E434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D5E4E480(uint64_t result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 13;
    LOBYTE(a2) = 13;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1D5E4E4B8(uint64_t a1)
{
  result = sub_1D5C17350();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5E4E4E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1D5E4E570(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 32))(a1, v3, v4);
  if (v5)
  {
    v6 = [*(v5 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
    sub_1D726207C();
  }

  v7 = [objc_opt_self() generalPasteboard];
  v8 = sub_1D726203C();

  [v7 setString_];
}

uint64_t sub_1D5E4E6A4(uint64_t a1, uint64_t a2)
{
  sub_1D5E4F2F4(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v103 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v96 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (v95 - v9);
  v11 = *(a1 + 112);
  v133[6] = *(a1 + 96);
  v133[7] = v11;
  v133[8] = *(a1 + 128);
  v134 = *(a1 + 144);
  v12 = *(a1 + 48);
  v133[2] = *(a1 + 32);
  v133[3] = v12;
  v13 = *(a1 + 80);
  v133[4] = *(a1 + 64);
  v133[5] = v13;
  v14 = *(a1 + 16);
  v133[0] = *a1;
  v133[1] = v14;
  sub_1D5E4F2F4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7279790;
  v111[2] = a2;
  v16 = sub_1D5ECF488(sub_1D5E4F3F0, v111, &unk_1F50F3C38);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v16, v112);

  *(v15 + 56) = &type metadata for FormatInspectionGroup;
  *(v15 + 64) = &off_1F518B2C0;
  v17 = swift_allocObject();
  *(v15 + 32) = v17;
  v97 = v15 + 32;
  v18 = v112[1];
  *(v17 + 16) = v112[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = v113;
  v110[2] = a2;
  v19 = sub_1D5ECF488(sub_1D5E4F410, v110, &unk_1F50F3C70);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v19, v114);

  *(v15 + 96) = &type metadata for FormatInspectionGroup;
  *(v15 + 104) = &off_1F518B2C0;
  v20 = swift_allocObject();
  *(v15 + 72) = v20;
  v21 = v114[1];
  *(v20 + 16) = v114[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v115;
  v109[2] = a2;
  v109[3] = v133;
  v22 = sub_1D5FBB5A0(sub_1D5E4F430, v109, &unk_1F50F3C98);
  sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v22, v116);

  *(v15 + 136) = &type metadata for FormatInspectionGroup;
  *(v15 + 144) = &off_1F518B2C0;
  v23 = swift_allocObject();
  *(v15 + 112) = v23;
  v24 = v116[1];
  *(v23 + 16) = v116[0];
  *(v23 + 32) = v24;
  *(v23 + 48) = v117;
  v108[2] = a2;
  v108[3] = v133;
  v25 = sub_1D5ECF488(sub_1D5E4F44C, v108, &unk_1F50F3D30);
  sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v25, v118);

  *(v15 + 176) = &type metadata for FormatInspectionGroup;
  *(v15 + 184) = &off_1F518B2C0;
  v26 = swift_allocObject();
  *(v15 + 152) = v26;
  v27 = v118[1];
  *(v26 + 16) = v118[0];
  *(v26 + 32) = v27;
  *(v26 + 48) = v119;
  v107[2] = a2;
  v28 = sub_1D5ECF488(sub_1D5E4F46C, v107, &unk_1F50F3D58);
  sub_1D6795150(0x74616F6C46, 0xE500000000000000, 0, 0, v28, v120);

  *(v15 + 216) = &type metadata for FormatInspectionGroup;
  *(v15 + 224) = &off_1F518B2C0;
  v29 = swift_allocObject();
  *(v15 + 192) = v29;
  v30 = v120[1];
  *(v29 + 16) = v120[0];
  *(v29 + 32) = v30;
  *(v29 + 48) = v121;
  v106[2] = a2;
  v31 = sub_1D7199984(sub_1D5E4F48C, v106, &unk_1F50F3CD0);
  v32 = sub_1D5F62998(v31);

  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v32, v122);

  *(v15 + 256) = &type metadata for FormatInspectionGroup;
  *(v15 + 264) = &off_1F518B2C0;
  v33 = swift_allocObject();
  *(v15 + 232) = v33;
  v34 = v122[1];
  *(v33 + 16) = v122[0];
  *(v33 + 32) = v34;
  *(v33 + 48) = v123;
  v105[2] = a2;
  v35 = sub_1D5ECF488(sub_1D5E4F4A8, v105, &unk_1F50F3D08);
  sub_1D6795150(5001813, 0xE300000000000000, 0, 0, v35, v124);

  *(v15 + 296) = &type metadata for FormatInspectionGroup;
  *(v15 + 304) = &off_1F518B2C0;
  v36 = swift_allocObject();
  *(v15 + 272) = v36;
  v37 = v124[1];
  *(v36 + 16) = v124[0];
  *(v36 + 32) = v37;
  *(v36 + 48) = v125;
  v104[2] = a2;
  v38 = sub_1D7199984(sub_1D5E4F4C8, v104, &unk_1F50F2F70);
  v39 = sub_1D5F62998(v38);

  sub_1D6795150(0x6D69542065746144, 0xE900000000000065, 0, 0, v39, v126);

  *(v15 + 336) = &type metadata for FormatInspectionGroup;
  *(v15 + 344) = &off_1F518B2C0;
  v40 = swift_allocObject();
  v98 = v15;
  *(v15 + 312) = v40;
  v41 = v126[1];
  *(v40 + 16) = v126[0];
  *(v40 + 32) = v41;
  *(v40 + 48) = v127;
  v101 = type metadata accessor for FeedHeadline(0);
  *(&v131 + 1) = v101;
  v132 = sub_1D5E4F4E4(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v130);
  v102 = a2;
  sub_1D5C0C74C(a2, boxed_opaque_existential_1);
  sub_1D713A66C(&v130, v128);
  __swift_destroy_boxed_opaque_existential_1(&v130);
  v43 = *&v128[0];
  *&v128[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 0, 0);
  v44 = *&v128[0];
  if (v43)
  {
    while (1)
    {
      v45 = v43 & -v43;
      *&v130 = 91;
      *(&v130 + 1) = 0xE100000000000000;
      v111[4] = v45;
      v111[3] = sub_1D713AFE4();
      sub_1D5BBE0A8();
      sub_1D5E4F4E4(&qword_1EDF3C840, sub_1D5BBE0A8);
      v46 = sub_1D7261F3C();
      v48 = v47;

      MEMORY[0x1DA6F9910](v46, v48);

      MEMORY[0x1DA6F9910](93, 0xE100000000000000);
      v49 = sub_1D5FD24A4(1uLL, v130, *(&v130 + 1));
      v51 = v50;

      result = sub_1D726398C();
      if (__OFSUB__(result, 1))
      {
        break;
      }

      result = sub_1D726396C();
      if (v53)
      {
        v54 = v51;
      }

      else
      {
        v54 = result;
      }

      if (v54 >> 14 < v49 >> 14)
      {
        goto LABEL_20;
      }

      v55 = sub_1D72639BC();
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v62 = MEMORY[0x1DA6F97E0](v55, v57, v59, v61);
      v64 = v63;

      v65 = type metadata accessor for FormatInspectionItem(0);
      v66 = (v10 + *(v65 + 24));
      *v66 = 0;
      v66[1] = 0xE000000000000000;
      v67 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
      *v10 = v62;
      v10[1] = v64;
      v10[2] = 0;
      v10[3] = 0;
      v68 = v10 + *(v65 + 28);
      *v68 = 0;
      *(v68 + 1) = 0;
      v68[16] = -1;
      (*(*(v65 - 8) + 56))(v10, 0, 1, v65);
      *&v128[0] = v44;
      v70 = *(v44 + 16);
      v69 = *(v44 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1D69972A4(v69 > 1, v70 + 1, 1);
        v44 = *&v128[0];
      }

      *(v44 + 16) = v70 + 1;
      sub_1D5E4F52C(v10, v44 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v70);
      v71 = v45 == v43;
      v43 ^= v45;
      if (v71)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_11:
    sub_1D6795150(0x737469617254, 0xE600000000000000, 0, 0, v44, v128);

    v72 = v98;
    *(v98 + 376) = &type metadata for FormatInspectionGroup;
    *(v72 + 384) = &off_1F518B2C0;
    v73 = swift_allocObject();
    *(v72 + 352) = v73;
    v74 = v128[1];
    *(v73 + 16) = v128[0];
    *(v73 + 32) = v74;
    *(v73 + 48) = v129;
    v75 = FeedHeadline.State.selectors.getter();
    v76 = v75[2];
    if (v76)
    {
      *&v130 = MEMORY[0x1E69E7CC0];
      sub_1D69972A4(0, v76, 0);
      v77 = v130;
      v78 = type metadata accessor for FormatInspectionItem(0);
      v79 = type metadata accessor for FormatInspectionItem.Value(0);
      v80 = *(v79 - 8);
      v101 = v78 - 8;
      v102 = v79;
      v81 = *(v80 + 56);
      v99 = v80 + 56;
      v100 = v81;
      v95[1] = v75;
      v82 = v75 + 5;
      v83 = v96;
      do
      {
        v84 = *(v82 - 1);
        v85 = *v82;
        v86 = (v83 + *(v78 + 24));
        *v86 = 0;
        v86[1] = 0xE000000000000000;
        v87 = v102;
        swift_storeEnumTagMultiPayload();
        v100(v86, 0, 1, v87);
        *v83 = v84;
        v83[1] = v85;
        v83[2] = 0;
        v83[3] = 0;
        v88 = v83 + *(v78 + 28);
        *v88 = 0;
        *(v88 + 1) = 0;
        v88[16] = -1;
        (*(*(v78 - 8) + 56))(v83, 0, 1, v78);
        *&v130 = v77;
        v90 = *(v77 + 16);
        v89 = *(v77 + 24);

        if (v90 >= v89 >> 1)
        {
          sub_1D69972A4(v89 > 1, v90 + 1, 1);
          v77 = v130;
        }

        *(v77 + 16) = v90 + 1;
        sub_1D5E4F52C(v83, v77 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v90);
        v82 += 2;
        --v76;
      }

      while (v76);
    }

    else
    {

      v77 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6795150(0x6553206574617453, 0xEF73726F7463656CLL, 0, 0, v77, &v130);

    v91 = v98;
    *(v98 + 416) = &type metadata for FormatInspectionGroup;
    *(v91 + 424) = &off_1F518B2C0;
    v92 = swift_allocObject();
    *(v91 + 392) = v92;
    v93 = v131;
    *(v92 + 16) = v130;
    *(v92 + 32) = v93;
    *(v92 + 48) = v132;
    v94 = sub_1D7073500(v91);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v94;
  }

  return result;
}

void sub_1D5E4F2F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D5E4F38C()
{
  result = qword_1EC880AD0;
  if (!qword_1EC880AD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC880AD0);
  }

  return result;
}

uint64_t sub_1D5E4F4E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5E4F52C(uint64_t a1, uint64_t a2)
{
  sub_1D5E4F2F4(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

NewsFeed::FormatBlendMode_optional __swiftcall FormatBlendMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatBlendMode.rawValue.getter()
{
  result = 0x6C616D726F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0x796C7069746C756DLL;
      break;
    case 2:
      result = 0x6E6565726373;
      break;
    case 3:
      result = 0x79616C7265766FLL;
      break;
    case 4:
      result = 0x6E656B726164;
      break;
    case 5:
      result = 0x6E65746867696CLL;
      break;
    case 6:
      result = 0x646F44726F6C6F63;
      break;
    case 7:
      result = 0x727542726F6C6F63;
      break;
    case 8:
      v2 = 1952870259;
      goto LABEL_18;
    case 9:
      v2 = 1685217640;
LABEL_18:
      result = v2 | 0x6867694C00000000;
      break;
    case 0xA:
      result = 0x6E65726566666964;
      break;
    case 0xB:
      result = 0x6F6973756C637865;
      break;
    case 0xC:
      result = 6649192;
      break;
    case 0xD:
      result = 0x6974617275746173;
      break;
    case 0xE:
      result = 0x726F6C6F63;
      break;
    case 0xF:
      result = 0x69736F6E696D756CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5E4F7BC()
{
  v0 = FormatBlendMode.rawValue.getter();
  v2 = v1;
  if (v0 == FormatBlendMode.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D5E4F85C()
{
  result = qword_1EC880050;
  if (!qword_1EC880050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880050);
  }

  return result;
}

uint64_t sub_1D5E4F8B0()
{
  sub_1D7264A0C();
  FormatBlendMode.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E4F918()
{
  FormatBlendMode.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D5E4F97C()
{
  sub_1D7264A0C();
  FormatBlendMode.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5E4F9EC@<X0>(uint64_t *a1@<X8>)
{
  result = FormatBlendMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D5E4FA14(uint64_t a1)
{
  *(a1 + 8) = sub_1D5E4FA44();
  result = sub_1D5E4FA98();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5E4FA44()
{
  result = qword_1EC880058;
  if (!qword_1EC880058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880058);
  }

  return result;
}

unint64_t sub_1D5E4FA98()
{
  result = qword_1EDF31AD0;
  if (!qword_1EDF31AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31AD0);
  }

  return result;
}

unint64_t sub_1D5E4FAEC(uint64_t a1)
{
  result = sub_1D5E4FB14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5E4FB14()
{
  result = qword_1EC880060;
  if (!qword_1EC880060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880060);
  }

  return result;
}

unint64_t sub_1D5E4FB68(void *a1)
{
  a1[1] = sub_1D5E4FBA0();
  a1[2] = sub_1D5E4FBF4();
  result = sub_1D5E4F85C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5E4FBA0()
{
  result = qword_1EDF31AC8;
  if (!qword_1EDF31AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31AC8);
  }

  return result;
}

unint64_t sub_1D5E4FBF4()
{
  result = qword_1EDF119A0;
  if (!qword_1EDF119A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF119A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatBlendMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatBlendMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D5E4FE10(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D6997184(0, v1, 0);
  v2 = v27;
  v4 = v3 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v22 = v3 + 72;
  v23 = v1;
  v24 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = v7;
    v26 = *(v3 + 36);
    v10 = *(*(v3 + 56) + 8 * v6);
    v11 = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1D6997184((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    *(v27 + 8 * v13 + 32) = v12;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v11;
    v4 = v24;
    v15 = *(v24 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (v22 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D5C25E1C(v6, v26, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v26, 0);
    }

LABEL_4:
    v7 = v25 + 1;
    v6 = v8;
    if (v25 + 1 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_1D5E5004C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D6997184(0, v1, 0);
  v2 = v27;
  v4 = v3 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v22 = v3 + 72;
  v23 = v1;
  v24 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = v7;
    v26 = *(v3 + 36);
    v10 = *(*(v3 + 56) + 8 * v6);
    v11 = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1D6997184((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    *(v27 + 8 * v13 + 32) = v12 | 0x2000000000000000;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v11;
    v4 = v24;
    v15 = *(v24 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (v22 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D5C25E1C(v6, v26, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v26, 0);
    }

LABEL_4:
    v7 = v25 + 1;
    v6 = v8;
    if (v25 + 1 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_1D5E5028C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D6997184(0, v1, 0);
  v2 = v27;
  v4 = v3 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v22 = v3 + 72;
  v23 = v1;
  v24 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = v7;
    v26 = *(v3 + 36);
    v10 = *(*(v3 + 56) + 8 * v6);
    v11 = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1D6997184((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    *(v27 + 8 * v13 + 32) = v12 | 0x4000000000000000;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v11;
    v4 = v24;
    v15 = *(v24 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (v22 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D5C25E1C(v6, v26, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v26, 0);
    }

LABEL_4:
    v7 = v25 + 1;
    v6 = v8;
    if (v25 + 1 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_1D5E504CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D6997184(0, v1, 0);
  v2 = v27;
  v4 = v3 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v22 = v3 + 72;
  v23 = v1;
  v24 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = v7;
    v26 = *(v3 + 36);
    v10 = *(*(v3 + 56) + 8 * v6);
    v11 = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1D6997184((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    *(v27 + 8 * v13 + 32) = v12 | 0x6000000000000000;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v11;
    v4 = v24;
    v15 = *(v24 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (v22 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D5C25E1C(v6, v26, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v26, 0);
    }

LABEL_4:
    v7 = v25 + 1;
    v6 = v8;
    if (v25 + 1 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_1D5E5070C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D6997184(0, v1, 0);
  v2 = v27;
  v4 = v3 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v22 = v3 + 72;
  v23 = v1;
  v24 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = v7;
    v26 = *(v3 + 36);
    v10 = *(*(v3 + 56) + 8 * v6);
    v11 = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1D6997184((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    *(v27 + 8 * v13 + 32) = v12 | 0x8000000000000000;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v11;
    v4 = v24;
    v15 = *(v24 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (v22 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D5C25E1C(v6, v26, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v26, 0);
    }

LABEL_4:
    v7 = v25 + 1;
    v6 = v8;
    if (v25 + 1 == v23)
    {
      return v2;
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
  return result;
}

uint64_t sub_1D5E5094C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D6997184(0, v1, 0);
  v2 = v27;
  v4 = v3 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v22 = v3 + 72;
  v23 = v1;
  v24 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = v7;
    v26 = *(v3 + 36);
    v10 = *(*(v3 + 56) + 8 * v6);
    v11 = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1D6997184((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    *(v27 + 8 * v13 + 32) = v12 | 0xA000000000000000;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v11;
    v4 = v24;
    v15 = *(v24 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (v22 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D5C25E1C(v6, v26, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v26, 0);
    }

LABEL_4:
    v7 = v25 + 1;
    v6 = v8;
    if (v25 + 1 == v23)
    {
      return v2;
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
  return result;
}