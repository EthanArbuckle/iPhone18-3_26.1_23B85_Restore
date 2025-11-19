__n128 sub_22889EB6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22889EB78()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22889EBB0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22889EBE8()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

id sub_22889EC30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_22889EC9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22889ECFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22889ED3C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22889EDBC()
{
  v1 = sub_2288AF470();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22889EE60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_2288AE8C4();
}

uint64_t sub_22889EE9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2288AD44C(v4);
}

__n128 sub_22889EED4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22889EEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2288AF260();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22889EF8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2288AF260();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22889F050@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22889F0A8();
  *a2 = result;
  return result;
}

uint64_t sub_22889F07C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_22889F59C(v4);
}

uint64_t sub_22889F0A8()
{
  v1 = qword_2813D5370;
  if (*(v0 + qword_2813D5370))
  {
    v2 = *(v0 + qword_2813D5370);
  }

  else
  {
    v2 = sub_22889F110(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22889F110(uint64_t *a1)
{
  v1 = *a1;
  sub_2288A030C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = *(v1 + 80);
  v9[3] = *(v1 + 88);
  v9[4] = v8;
  v10 = MEMORY[0x277CBCD88];
  sub_2288A04D8(0, &qword_2813D5108, MEMORY[0x277CBCD88]);
  sub_2288A0548(&qword_2813D52E0, &qword_2813D5108, v10);
  sub_2288AF6D0();
  sub_2288A041C();
  v11 = sub_2288AF6F0();
  (*(v4 + 8))(v7, v3);
  return v11;
}

uint64_t sub_22889F2E4@<X0>(uint64_t *a1@<X8>)
{
  sub_2288A0474(0, &qword_2813D50F0, sub_2288A03C0, MEMORY[0x277CBCE78]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v18 - v6;
  sub_2288A04D8(0, &qword_2813D50E8, MEMORY[0x277CBCE88]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v18 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v15 = type metadata accessor for ArticlesGenerator();
    v18 = sub_2288A4974(v15, &off_283BD17C8);
    sub_2288A03C0();
    sub_2288AF6B0();
    sub_2288A058C();
    v16 = sub_2288AF6F0();

    result = (*(v4 + 8))(v7, v3);
  }

  else
  {
    sub_2288A03C0();
    sub_2288AF6C0();
    sub_2288A0548(&qword_27D85ABF0, &qword_2813D50E8, MEMORY[0x277CBCE88]);
    v16 = sub_2288AF6F0();
    result = (*(v10 + 8))(v13, v9);
  }

  *a1 = v16;
  return result;
}

uint64_t sub_22889F59C(uint64_t a1)
{
  v2 = *(v1 + qword_2813D5370);
  *(v1 + qword_2813D5370) = a1;
}

uint64_t (*sub_22889F5B4(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_22889F0A8();
  return sub_22889F5FC;
}

uint64_t sub_22889F5FC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + qword_2813D5370);
  *(v1 + qword_2813D5370) = v2;
}

uint64_t sub_22889F634@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t ArticlesGenerator.managedArticles.getter()
{
  sub_22889FEC0();
}

uint64_t ArticlesGenerator.__allocating_init(context:managedArticles:readArticleInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  ArticlesGenerator.init(context:managedArticles:readArticleInfo:)(a1, a2, a3);
  return v9;
}

uint64_t ArticlesGenerator.init(context:managedArticles:readArticleInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + qword_2813D5370) = 0;
  if (qword_2813D5378 != -1)
  {
    swift_once();
  }

  v8 = sub_2288AF430();
  v9 = __swift_project_value_buffer(v8, qword_2813D5380);
  (*(*(v8 - 8) + 16))(v4 + qword_2813D53A8, v9, v8);
  sub_22889FF08(a3, v4 + qword_2813D53C0);
  *(v4 + qword_2813D53C8) = a2;
  v10 = qword_2813D53B0;
  v11 = sub_2288AF470();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4 + v10, a1, v11);
  v13 = objc_opt_self();
  sub_2288AF440();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v14 = sub_2288AF3D0();
  v15 = [v13 healthArticlesDefaultsDomainWithHealthStore_];

  sub_22889FFE0(a3);
  (*(v12 + 8))(a1, v11);
  __swift_destroy_boxed_opaque_existential_1(v17);
  *(v4 + qword_2813D53B8) = v15;
  return v4;
}

uint64_t sub_22889F968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[4] = a2;
  v23[2] = a3;
  v23[3] = a1;
  v23[1] = a4;
  v5 = *v4;
  v6 = sub_2288AF2A0();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2288AF270();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 80);
  v16 = *(v5 + 88);
  sub_2288AF590();
  sub_2288AF580();
  v17 = *MEMORY[0x277D11DF0];
  v18 = *(v11 + 104);
  v24 = v10;
  v18(v14, v17, v10);
  v19 = sub_2288AF460();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v20 = *MEMORY[0x277D10DE0];
  v21 = *(v26 + 104);
  v25 = v6;
  v21(v9, v20, v6);
  sub_2288AF290();

  (*(v26 + 8))(v9, v25);
  return (*(v11 + 8))(v14, v24);
}

uint64_t ArticlesGenerator.deinit()
{
  v1 = qword_2813D53A8;
  v2 = sub_2288AF430();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_2813D5370);

  v4 = qword_2813D53B0;
  v5 = sub_2288AF470();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_22889FFE0(v0 + qword_2813D53C0);
  v6 = *(v0 + qword_2813D53C8);

  return v0;
}

uint64_t ArticlesGenerator.__deallocating_deinit()
{
  ArticlesGenerator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22889FE10()
{
  v1 = *v0;
  sub_22889FEC0();
}

id sub_22889FE44()
{
  v1 = *v0;
  v2 = sub_2288A02FC();

  return v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22889FF08(uint64_t a1, uint64_t a2)
{
  sub_2288A0474(0, &qword_2813D5358, type metadata accessor for ReadArticleInformation, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22889FFE0(uint64_t a1)
{
  sub_2288A0474(0, &qword_2813D5358, type metadata accessor for ReadArticleInformation, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_2288A00BC()
{
  v0 = sub_2288AF430();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_2288AF470();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2288A0474(319, &qword_2813D5358, type metadata accessor for ReadArticleInformation, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_2288A030C()
{
  if (!qword_2813D50E0)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2288A04D8(255, &qword_2813D5108, MEMORY[0x277CBCD88]);
    sub_2288A0548(&qword_2813D52E0, &qword_2813D5108, v0);
    v1 = sub_2288AF6E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2813D50E0);
    }
  }
}

void sub_2288A03C0()
{
  if (!qword_2813D50D8)
  {
    v0 = sub_2288AF7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D50D8);
    }
  }
}

uint64_t sub_2288A0410@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_22889F2E4(a1);
}

unint64_t sub_2288A041C()
{
  result = qword_2813D52C0;
  if (!qword_2813D52C0)
  {
    sub_2288A030C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D52C0);
  }

  return result;
}

void sub_2288A0474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2288A04D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_2288A03C0();
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2288A0548(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_2288A04D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2288A058C()
{
  result = qword_2813D52C8;
  if (!qword_2813D52C8)
  {
    sub_2288A0474(255, &qword_2813D50F0, sub_2288A03C0, MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D52C8);
  }

  return result;
}

uint64_t static PluginFeedItem.makeArticleFeedItemWithMetadata(article:sourceProfile:pluginFeedItemConstructor:)@<X0>(void *a1@<X0>, void (*a2)(uint64_t, uint64_t, char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v81 = a3;
  v82 = a2;
  v75 = a4;
  v69 = sub_2288AF630();
  v74 = *(v69 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v69);
  v78 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2288AF480();
  v68 = *(v79 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v79);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2288AF490();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v9);
  v70 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2288AF5E0();
  v66 = *(v67 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2288AF5B0();
  v14 = *(v80 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v80);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2288AF3C0();
  v72 = *(v18 - 8);
  v73 = v18;
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_2288AF570();
  v25 = v24;
  v26 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2288AF510();
  sub_2288AF5A0();
  v27 = v84[5];
  v82(v23, v25, v17);
  if (v27)
  {
    (*(v14 + 8))(v17, v80);
  }

  else
  {
    (*(v14 + 8))(v17, v80);

    v29 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF520();
    sub_2288AF340();
    v30 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF520();
    sub_2288A0FA8();
    sub_2288AF810();

    sub_2288AF3A0();
    v31 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF500();
    sub_2288AF310();
    v32 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF540();
    sub_2288AF380();
    v33 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF530();
    v36 = v78;
    v35 = v79;
    v37 = v21;
    v39 = v76;
    v38 = v77;
    v40 = v68;
    if (v34)
    {
      if (v34 != 1)
      {
        goto LABEL_6;
      }

      v41 = v68;
      v42 = a1[5];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v40 = v41;
      v39 = v76;
      sub_2288AF520();
      v43 = sub_2288AF810();

      sub_2288A0FF4(v43);
      v45 = v44;

      v35 = v79;
      v46 = v45;
      v38 = v77;
      if (v46)
      {
LABEL_6:
        v47 = v65;
        sub_2288AF5F0();
        sub_2288A1648(&qword_2813D5250, MEMORY[0x277D122A0]);
        v48 = v67;
        sub_2288AF2D0();
        (*(v66 + 8))(v47, v48);
        v35 = v79;
      }
    }

    (*(v40 + 104))(v71, *MEMORY[0x277D11FA0], v35);
    v49 = v70;
    sub_2288AF4A0();
    sub_2288AF2D0();
    (*(v39 + 8))(v49, v38);
    sub_2288AF600();
    v50 = sub_2288AF620();
    v51 = sub_2288AF840();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v84[0] = v53;
      *v52 = 136315394;
      v54 = v73;
      v83 = v73;
      sub_2288A1600();
      v55 = sub_2288AF740();
      v57 = sub_2288A1070(v55, v56, v84);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      swift_beginAccess();
      sub_2288A1648(&qword_2813D5398, MEMORY[0x277D11EB0]);
      v58 = sub_2288AF980();
      v60 = sub_2288A1070(v58, v59, v84);
      v61 = v54;

      *(v52 + 14) = v60;
      _os_log_impl(&dword_22889D000, v50, v51, "[%s] Making article feed item: %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC22E0](v53, -1, -1);
      MEMORY[0x22AAC22E0](v52, -1, -1);

      (*(v74 + 8))(v78, v69);
      v62 = v75;
    }

    else
    {

      (*(v74 + 8))(v36, v69);
      v62 = v75;
      v61 = v73;
    }

    v63 = v72;
    swift_beginAccess();
    (*(v63 + 16))(v62, v37, v61);
    return (*(v63 + 8))(v37, v61);
  }
}

uint64_t static PluginFeedItem.mutualExclusionTagForArticle(_:)(void *a1)
{
  v2 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2288AF530();
  if (!v4)
  {
    return 0;
  }

  if (v4 == 1)
  {
    v5 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF520();
    sub_2288A0FA8();
    v6 = sub_2288AF810();

    v7 = sub_2288A0FF4(v6);

    return v7;
  }

  return result;
}

unint64_t sub_2288A0FA8()
{
  result = qword_2813D52B0;
  if (!qword_2813D52B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813D52B0);
  }

  return result;
}

uint64_t sub_2288A0FF4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2288AF8A0();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_2288A1690(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_2288A1070(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2288A113C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2288A16E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2288A113C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2288A1248(a5, a6);
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
    result = sub_2288AF970();
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

uint64_t sub_2288A1248(uint64_t a1, unint64_t a2)
{
  v4 = sub_2288A1294(a1, a2);
  sub_2288A13C4(&unk_283BD17A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2288A1294(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2288A14B0(v5, 0);
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

  result = sub_2288AF970();
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
        v10 = sub_2288AF760();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2288A14B0(v10, 0);
        result = sub_2288AF960();
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

uint64_t sub_2288A13C4(uint64_t result)
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

  result = sub_2288A1518(result, v12, 1, v3);
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

void *sub_2288A14B0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2288A1740();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2288A1518(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288A1740();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2288A1600()
{
  result = qword_2813D5270;
  if (!qword_2813D5270)
  {
    sub_2288AF3C0();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2813D5270);
  }

  return result;
}

uint64_t sub_2288A1648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2288A1690(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2288A16E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2288A1740()
{
  if (!qword_2813D5098)
  {
    v0 = sub_2288AF990();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D5098);
    }
  }
}

uint64_t static DataTypeDetailViewControllerWithLoadAction.OnLoadAction.articleActionForHighlightAlert(sourceIdentifier:dataProvider:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2288A1AE8(a3, v10);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  sub_2288A1B4C(v10, (v7 + 40));

  v8 = a4;
  return sub_2288AF5C0();
}

uint64_t sub_2288A183C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v29 = a1;
  sub_2288A1C50();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  sub_2288AF7F0();
  sub_2288AF7E0();
  sub_2288AF7D0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static DataTypeDetailViewControllerWithLoadAction.OnLoadAction.getArticleDateDisplayedForHighlightAlertIdentifier(_:healthStore:)(a2, a3, a4, v15);
  v16 = sub_2288AF260();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  sub_2288A22E4(v15);
  if (v18 == 1)
  {
    v19 = a5[3];
    v28 = a2;
    v20 = a5[5];
    __swift_project_boxed_opaque_existential_1(a5, v19);
    sub_2288AF560();
    v26 = a3;
    v27 = a4;
    v21 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, a5[3]);
    sub_2288AF4F0();
    v22 = objc_allocWithZone(sub_2288AF4E0());
    v23 = sub_2288AF4D0();
    v24 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];
    [v24 setDelegate_];
    [v29 presentViewController:v24 animated:1 completion:0];
    sub_2288AF250();
    (*(v17 + 56))(v13, 0, 1, v16);
    _s18HealthExperienceUI42DataTypeDetailViewControllerWithLoadActionC02OnjK0V0A18ArticlesGenerationE50setArticleDateDisplayedForHighlightAlertIdentifier__11healthStoreySS_10Foundation0Q0VSgSo08HKHealthX0CtFZ_0(v28, v26, v13, v27);

    sub_2288A22E4(v13);
  }
}

uint64_t sub_2288A1AE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2288A1B4C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

BOOL static DataTypeDetailViewControllerWithLoadAction.OnLoadAction.shouldDisplayArticleFromHighlightAlertIdentifier(_:healthStore:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_2288A1C50();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DataTypeDetailViewControllerWithLoadAction.OnLoadAction.getArticleDateDisplayedForHighlightAlertIdentifier(_:healthStore:)(a1, a2, a3, v9);
  v10 = sub_2288AF260();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) == 1;
  sub_2288A22E4(v9);
  return v11;
}

void sub_2288A1C50()
{
  if (!qword_2813D5280)
  {
    sub_2288AF260();
    v0 = sub_2288AF890();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D5280);
    }
  }
}

void static DataTypeDetailViewControllerWithLoadAction.OnLoadAction.getArticleDateDisplayedForHighlightAlertIdentifier(_:healthStore:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = sub_2288AF630();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  sub_2288A1C50();
  v38 = v12;
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  v22 = [objc_opt_self() healthArticlesDefaultsDomainWithHealthStore_];
  v39 = a1;
  v23 = sub_2288AF720();
  v24 = HKArticlesKeyDisplayedFromHighlightAlert(v23);

  if (v24)
  {
    sub_2288AF730();

    sub_2288AF850();

    sub_2288AF600();
    sub_2288A2AAC(v21, v19);

    v25 = sub_2288AF620();
    v26 = sub_2288AF840();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v27 = 136446722;
      v43 = sub_2288AF5D0();
      sub_2288A2A64();
      v28 = sub_2288AF740();
      v30 = sub_2288A1070(v28, v29, v44);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      sub_2288A2AAC(v19, v16);
      v31 = sub_2288AF740();
      v33 = v32;
      sub_2288A22E4(v19);
      v34 = sub_2288A1070(v31, v33, v44);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_2288A1070(v39, a2, v44);
      _os_log_impl(&dword_22889D000, v25, v26, "[%{public}s] Fetched last article launch from highlight alert date %s for identifier %s.", v27, 0x20u);
      v35 = v37;
      swift_arrayDestroy();
      MEMORY[0x22AAC22E0](v35, -1, -1);
      MEMORY[0x22AAC22E0](v27, -1, -1);
    }

    else
    {

      sub_2288A22E4(v19);
    }

    (*(v40 + 8))(v11, v41);
    sub_2288A2B10(v21, v42);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2288A22E4(uint64_t a1)
{
  sub_2288A1C50();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s18HealthExperienceUI42DataTypeDetailViewControllerWithLoadActionC02OnjK0V0A18ArticlesGenerationE50setArticleDateDisplayedForHighlightAlertIdentifier__11healthStoreySS_10Foundation0Q0VSgSo08HKHealthX0CtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a1;
  v69[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2288AF630();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v63 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v62 - v11;
  sub_2288A1C50();
  v62[1] = v13;
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v62 - v21;
  v23 = [objc_opt_self() healthArticlesDefaultsDomainWithHealthStore_];
  sub_2288A2AAC(a3, v22);
  v24 = sub_2288AF260();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v22, 1, v24) != 1)
  {
    v26 = sub_2288AF240();
    (*(v25 + 8))(v22, v24);
  }

  v27 = sub_2288AF720();
  v28 = HKArticlesKeyDisplayedFromHighlightAlert(v27);

  if (!v28)
  {
    __break(1u);
  }

  v69[0] = 0;
  v29 = [v23 setDate:v26 forKey:v28 error:v69];

  if (v29)
  {
    v30 = v69[0];
    sub_2288AF600();
    sub_2288A2AAC(a3, v20);

    v31 = sub_2288AF620();
    v32 = sub_2288AF840();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v69[0] = v34;
      *v33 = 136446722;
      v68 = sub_2288AF5D0();
      sub_2288A2A64();
      v35 = sub_2288AF740();
      v37 = sub_2288A1070(v35, v36, v69);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      sub_2288A2AAC(v20, v17);
      v38 = sub_2288AF740();
      v40 = v39;
      sub_2288A22E4(v20);
      v41 = sub_2288A1070(v38, v40, v69);

      *(v33 + 14) = v41;
      *(v33 + 22) = 2080;
      *(v33 + 24) = sub_2288A1070(v66, a2, v69);
      _os_log_impl(&dword_22889D000, v31, v32, "[%{public}s] Set last article launch from highlight alert date to %s for identifier %s.", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAC22E0](v34, -1, -1);
      MEMORY[0x22AAC22E0](v33, -1, -1);
    }

    else
    {

      sub_2288A22E4(v20);
    }

    result = (*(v64 + 8))(v12, v65);
  }

  else
  {
    v42 = v69[0];
    v43 = sub_2288AF230();

    swift_willThrow();
    v44 = v63;
    sub_2288AF610();

    v45 = v43;
    v46 = sub_2288AF620();
    v47 = sub_2288AF830();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v69[0] = v49;
      *v48 = 136446722;
      v68 = sub_2288AF5D0();
      sub_2288A2A64();
      v50 = sub_2288AF740();
      v52 = sub_2288A1070(v50, v51, v69);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_2288A1070(v66, a2, v69);
      *(v48 + 22) = 2080;
      ErrorValue = swift_getErrorValue();
      v54 = *(*(v67 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v56 + 16))(v62 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
      v57 = sub_2288AF740();
      v59 = sub_2288A1070(v57, v58, v69);

      *(v48 + 24) = v59;
      _os_log_impl(&dword_22889D000, v46, v47, "[%{public}s]: Encountered error while setting article %s HKArticlesKeyDisplayedFromHighlightAlert status: %s", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAC22E0](v49, -1, -1);
      MEMORY[0x22AAC22E0](v48, -1, -1);
    }

    else
    {
    }

    result = (*(v64 + 8))(v44, v65);
  }

  v61 = *MEMORY[0x277D85DE8];
  return result;
}

id HKArticlesKeyDisplayedFromHighlightAlert(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v1, @"ArticleDisplayedFromHighlightAlert"];

  return v2;
}

unint64_t sub_2288A2A64()
{
  result = qword_27D85ABF8;
  if (!qword_27D85ABF8)
  {
    sub_2288AF5D0();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D85ABF8);
  }

  return result;
}

uint64_t sub_2288A2AAC(uint64_t a1, uint64_t a2)
{
  sub_2288A1C50();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288A2B10(uint64_t a1, uint64_t a2)
{
  sub_2288A1C50();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2288A2B74(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_2288A2BD4()
{
  v1 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2288A2C28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2288A2CE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_2288A2D4C()
{
  v1 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2288A2D94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2288A2E64()
{
  v1 = *v0;
  sub_2288AFA00();
  MEMORY[0x22AAC1E40](v1);
  return sub_2288AFA20();
}

uint64_t sub_2288A2ED8()
{
  v1 = *v0;
  sub_2288AFA00();
  MEMORY[0x22AAC1E40](v1);
  return sub_2288AFA20();
}

id sub_2288A2F2C()
{
  v1 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers;
  v2 = *(v0 + OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers);
  }

  else
  {
    swift_getObjectType();
    sub_2288A475C();
    sub_2288AF740();
    v4 = HKLogInfrastructure();
    v5 = objc_allocWithZone(MEMORY[0x277CCD738]);
    v6 = sub_2288AF720();

    v7 = [v5 initWithName:v6 loggingCategory:v4];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id ArticleChangeDetector.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  sub_2288A31C4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v3[v4] = sub_2288AF690();
  *&v3[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers] = 0;
  v8 = [objc_opt_self() healthArticlesDefaultsDomainWithHealthStore_];
  *&v3[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain] = v8;
  v11.receiver = v3;
  v11.super_class = v1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_2288A32CC();

  return v9;
}

id ArticleChangeDetector.init(healthStore:)(void *a1)
{
  v3 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  sub_2288A31C4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v1[v3] = sub_2288AF690();
  *&v1[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers] = 0;
  v7 = [objc_opt_self() healthArticlesDefaultsDomainWithHealthStore_];
  *&v1[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain] = v7;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ArticleChangeDetector();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_2288A32CC();

  return v8;
}

void sub_2288A31C4()
{
  if (!qword_2813D5100)
  {
    v0 = sub_2288AF6A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D5100);
    }
  }
}

void sub_2288A3224(uint64_t a1)
{
  v2 = sub_2288A2F2C();
  [v2 registerObserver_];
}

void sub_2288A3278(uint64_t a1)
{
  v2 = sub_2288A2F2C();
  [v2 unregisterObserver_];
}

void sub_2288A32CC()
{
  v1 = v0;
  v2 = sub_2288AF630();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AF600();
  v7 = sub_2288AF620();
  v8 = sub_2288AF840();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22889D000, v7, v8, "ArticleChangeDetector subscribed to article status updates.", v9, 2u);
    MEMORY[0x22AAC22E0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = [objc_opt_self() defaultCenter];
  v11 = sub_2288AF860();
  [v10 addObserver:v1 selector:sel_articleStatusDidChange_ name:v11 object:0];
}

void sub_2288A348C()
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v0 = sub_2288AF260();
  v89 = *(v0 - 8);
  v1 = *(v89 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v87 = &v82[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v5 = &v82[-v4];
  v6 = sub_2288AF630();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v82[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v88 = &v82[-v13];
  MEMORY[0x28223BE20](v12);
  v15 = &v82[-v14];
  sub_2288AF600();
  v16 = sub_2288AF620();
  v17 = sub_2288AF840();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v5;
    v19 = v0;
    v20 = v6;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22889D000, v16, v17, "ArticleChangeDetector received article status update.", v21, 2u);
    v22 = v21;
    v6 = v20;
    v0 = v19;
    v5 = v18;
    MEMORY[0x22AAC22E0](v22, -1, -1);
  }

  v23 = *(v7 + 8);
  (v23)(v15, v6);
  v24 = sub_2288A43EC();
  v26 = v25;
  v91 = v6;
  v27 = v24;
  sub_2288AF250();
  v28 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain;
  v29 = v92;
  swift_beginAccess();
  v30 = *&v29[v28];
  v31 = sub_2288AF240();
  v86 = v27;
  v32 = sub_2288AF720();
  v33 = HKArticlesKeyReadState(v32);

  if (v33)
  {
    aBlock[0] = 0;
    v34 = [v30 setDate:v31 forKey:v33 error:aBlock];

    if (v34)
    {
      v35 = aBlock[0];
      v36 = v88;
      sub_2288AF600();
      v37 = v89;
      v38 = v87;
      (*(v89 + 16))(v87, v5, v0);

      v39 = sub_2288AF620();
      v40 = sub_2288AF840();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v38;
        v42 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        aBlock[0] = v85;
        *v42 = 136315394;
        sub_2288A4600();
        v43 = sub_2288AF980();
        v84 = v39;
        v44 = v43;
        v45 = v37;
        v47 = v46;
        v83 = v40;
        v48 = *(v45 + 8);
        ObjectType = ((v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v48(v41, v0);
        v49 = sub_2288A1070(v44, v47, aBlock);

        *(v42 + 4) = v49;
        *(v42 + 12) = 2080;
        v50 = v86;
        *(v42 + 14) = sub_2288A1070(v86, v26, aBlock);
        v51 = v84;
        _os_log_impl(&dword_22889D000, v84, v83, "ArticleChangeDetector set read state to %s for identifier %s.", v42, 0x16u);
        v52 = v85;
        swift_arrayDestroy();
        MEMORY[0x22AAC22E0](v52, -1, -1);
        MEMORY[0x22AAC22E0](v42, -1, -1);

        (v23)(v88, v91);
      }

      else
      {

        v48 = *(v37 + 8);
        ObjectType = ((v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v48(v38, v0);
        (v23)(v36, v91);
        v50 = v86;
      }

      v75 = v92;
      v76 = sub_2288A2F2C();
      v77 = swift_allocObject();
      v77[2] = v50;
      v77[3] = v26;
      v77[4] = v75;
      aBlock[4] = sub_2288A4584;
      aBlock[5] = v77;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2288A3D78;
      aBlock[3] = &block_descriptor;
      v78 = _Block_copy(aBlock);

      v79 = v75;

      [v76 notifyObservers_];
      _Block_release(v78);

      v80 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
      swift_beginAccess();
      v81 = *&v79[v80];
      v94[0] = v50;
      v94[1] = v26;

      sub_2288AF680();

      v48(v5, v0);
    }

    else
    {
      v92 = v23;
      v53 = aBlock[0];

      v54 = sub_2288AF230();

      swift_willThrow();
      (*(v89 + 8))(v5, v0);
      v55 = v91;
      sub_2288AF610();
      v56 = v54;
      v57 = sub_2288AF620();
      v58 = sub_2288AF830();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v91 = v55;
        v61 = v60;
        v94[0] = v60;
        *v59 = 136315394;
        aBlock[0] = ObjectType;
        swift_getMetatypeMetadata();
        v62 = sub_2288AF740();
        v64 = sub_2288A1070(v62, v63, v94);

        *(v59 + 4) = v64;
        *(v59 + 12) = 2080;
        ErrorValue = swift_getErrorValue();
        v66 = *(*(v93 - 8) + 64);
        MEMORY[0x28223BE20](ErrorValue);
        (*(v68 + 16))(&v82[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)]);
        v69 = sub_2288AF740();
        v71 = sub_2288A1070(v69, v70, v94);

        *(v59 + 14) = v71;
        _os_log_impl(&dword_22889D000, v57, v58, "[%s]: encountered error while processing notification %s", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC22E0](v61, -1, -1);
        MEMORY[0x22AAC22E0](v59, -1, -1);

        v72 = v11;
        v73 = v91;
      }

      else
      {

        v72 = v11;
        v73 = v55;
      }

      (v92)(v72, v73);
    }

    v74 = *MEMORY[0x277D85DE8];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2288A3D78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = swift_unknownObjectRetain();
  v4(v5);

  return MEMORY[0x2821FEBE0](a2);
}

id ArticleChangeDetector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArticleChangeDetector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleChangeDetector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2288A41B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2288AF8F0();

  return sub_2288A426C(a1, v5);
}

unint64_t sub_2288A41F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2288AFA00();
  sub_2288AF750();
  v6 = sub_2288AFA20();

  return sub_2288A4334(a1, a2, v6);
}

unint64_t sub_2288A426C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2288A4700(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AAC1D30](v9, a1);
      sub_2288A46AC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2288A4334(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2288AF9A0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2288A43EC()
{
  v0 = sub_2288AF1E0();
  if (v0)
  {
    v1 = v0;
    v7 = sub_2288AF1C0();
    sub_2288AF910();
    if (*(v1 + 16) && (v2 = sub_2288A41B0(v8), (v3 & 1) != 0))
    {
      sub_2288A16E4(*(v1 + 56) + 32 * v2, v9);
      sub_2288A46AC(v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {

      sub_2288A46AC(v8);
    }

    sub_2288A4658();
    swift_allocError();
    v6 = 1;
  }

  else
  {
    sub_2288A4658();
    swift_allocError();
    v6 = 0;
  }

  *v5 = v6;
  return swift_willThrow();
}

id HKArticlesKeyReadState(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v1, @"ArticleReadState"];

  return v2;
}

void sub_2288A4584(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = sub_2288AF720();
  [a1 readArticleWithIdentifier:v6 detectedBy:v5];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2288A4600()
{
  result = qword_27D85AC18;
  if (!qword_27D85AC18)
  {
    sub_2288AF260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85AC18);
  }

  return result;
}

unint64_t sub_2288A4658()
{
  result = qword_27D85AC20;
  if (!qword_27D85AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85AC20);
  }

  return result;
}

unint64_t sub_2288A475C()
{
  result = qword_27D85AC28;
  if (!qword_27D85AC28)
  {
    type metadata accessor for ArticleChangeDetector();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D85AC28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArticleChangeDetector.NotificationUserInfoError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArticleChangeDetector.NotificationUserInfoError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2288A491C()
{
  result = qword_27D85AC30;
  if (!qword_27D85AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85AC30);
  }

  return result;
}

char *sub_2288A4974(uint64_t a1, uint64_t a2)
{
  v4 = sub_2288AF630();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2288A4E38(a1, a2);
  if (v6)
  {
    v7 = v6;

    v8 = sub_2288A9F3C(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_2288A9F3C((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[40 * v10];
    *(v11 + 4) = v7;
    *(v11 + 5) = 0;
    *(v11 + 6) = 0;
    *(v11 + 7) = 0;
    v11[64] = 32;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
  }

  v12 = sub_2288A5BC8(v7, a1, a2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2288A9F3C(0, *(v8 + 2) + 1, 1, v8);
  }

  v14 = *(v8 + 2);
  v13 = *(v8 + 3);
  if (v14 >= v13 >> 1)
  {
    v8 = sub_2288A9F3C((v13 > 1), v14 + 1, 1, v8);
  }

  *(v8 + 2) = v14 + 1;
  v15 = &v8[40 * v14];
  *(v15 + 4) = v12;
  *(v15 + 5) = 0;
  *(v15 + 6) = 0;
  *(v15 + 7) = 0;
  v15[64] = 0;
  return v8;
}

uint64_t sub_2288A4D8C()
{
  sub_2288AFA00();
  MEMORY[0x22AAC1E40](0);
  return sub_2288AFA20();
}

uint64_t sub_2288A4DF8()
{
  sub_2288AFA00();
  MEMORY[0x22AAC1E40](0);
  return sub_2288AFA20();
}

uint64_t sub_2288A4E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v129 = sub_2288AF270();
  v116 = *(v129 - 1);
  v6 = *(v116 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v128 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v127 = &v108 - v9;
  v10 = sub_2288AF3C0();
  v130 = *(v10 - 8);
  v131 = v10;
  v11 = *(v130 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v123 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v125 = &v108 - v15;
  MEMORY[0x28223BE20](v14);
  v126 = &v108 - v16;
  v124 = sub_2288AF470();
  v17 = *(v124 - 1);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v124);
  v122 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2288AF630();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v108 - v31;
  sub_2288AF600();
  v33 = *(v21 + 16);
  v114 = v3;
  v33(v24, v3, a1);
  v121 = v32;
  v34 = sub_2288AF620();
  v35 = sub_2288AF840();
  v36 = os_log_type_enabled(v34, v35);
  v115 = a2;
  if (v36)
  {
    v37 = swift_slowAlloc();
    LODWORD(v119) = v35;
    v38 = v37;
    v120 = swift_slowAlloc();
    v132 = v120;
    *v38 = 136446466;
    v136 = a1;
    swift_getMetatypeMetadata();
    v39 = sub_2288AF740();
    v118 = v34;
    v41 = sub_2288A1070(v39, v40, &v132);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v42 = (*(v115 + 32))(a1, v115);
    (*(v21 + 8))(v24, a1);
    v43 = sub_2288ACE64();
    v44 = MEMORY[0x22AAC1BC0](v42, v43);
    v46 = v45;

    v47 = sub_2288A1070(v44, v46, &v132);

    *(v38 + 14) = v47;
    a2 = v115;
    v48 = v118;
    _os_log_impl(&dword_22889D000, v118, v119, "[%{public}s]: Managed articles: %s", v38, 0x16u);
    v49 = v120;
    swift_arrayDestroy();
    MEMORY[0x22AAC22E0](v49, -1, -1);
    MEMORY[0x22AAC22E0](v38, -1, -1);
  }

  else
  {
    (*(v21 + 8))(v24, a1);
  }

  v108 = *(v26 + 8);
  v108(v121, v25);
  v111 = v30;
  v112 = v26;
  v109 = v25;
  v50 = v122;
  (*(a2 + 16))(a1, a2);
  v51 = sub_2288AF460();
  (*(v17 + 8))(v50, v124);
  v52 = *(a2 + 8);
  v113 = a1;
  v52(&v132, a1, a2);
  __swift_project_boxed_opaque_existential_1(&v132, v133);
  v53 = v51;
  v122 = v51;
  v54 = sub_2288AF400();
  v110 = v53;

  result = v54;
  v56 = MEMORY[0x277D84F90];
  v121 = *(v54 + 16);
  if (!v121)
  {
LABEL_18:

    __swift_destroy_boxed_opaque_existential_1(&v132);
    v70 = *(v56 + 16);
    if (v70)
    {
      v132 = MEMORY[0x277D84F90];
      sub_2288ABE00(0, v70, 0);
      v71 = v132;
      v72 = *(v130 + 16);
      v73 = v56 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
      v128 = *(v130 + 72);
      v129 = v72;
      v130 += 16;
      v74 = (v130 - 8);
      do
      {
        v75 = v123;
        v76 = v131;
        v129(v123, v73, v131);
        v77 = sub_2288AF320();
        v79 = v78;
        (*v74)(v75, v76);
        v132 = v71;
        v81 = *(v71 + 16);
        v80 = *(v71 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_2288ABE00((v80 > 1), v81 + 1, 1);
          v71 = v132;
        }

        *(v71 + 16) = v81 + 1;
        v82 = v71 + 16 * v81;
        *(v82 + 32) = v77;
        *(v82 + 40) = v79;
        v73 += v128;
        --v70;
      }

      while (v70);
    }

    else
    {

      v71 = MEMORY[0x277D84F90];
    }

    v83 = sub_2288AC3A4(v71);

    v84 = v113;
    v85 = (*(v115 + 32))(v113);
    v86 = *(v85 + 16);
    if (v86)
    {
      v136 = MEMORY[0x277D84F90];
      sub_2288ABE00(0, v86, 0);
      v87 = v136;
      v88 = v85 + 32;
      do
      {
        sub_2288A1AE8(v88, &v132);
        __swift_project_boxed_opaque_existential_1(&v132, v133);
        v89 = sub_2288AF570();
        v91 = v90;
        __swift_destroy_boxed_opaque_existential_1(&v132);
        v136 = v87;
        v93 = *(v87 + 16);
        v92 = *(v87 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_2288ABE00((v92 > 1), v93 + 1, 1);
          v87 = v136;
        }

        *(v87 + 16) = v93 + 1;
        v94 = v87 + 16 * v93;
        *(v94 + 32) = v89;
        *(v94 + 40) = v91;
        v88 += 48;
        --v86;
      }

      while (v86);

      v84 = v113;
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
    }

    v95 = sub_2288AC3A4(v87);

    v96 = v111;
    if (*(v95 + 16) > *(v83 + 16) >> 3)
    {
      v97 = sub_2288AA360(v95, v83);

      v98 = *(v97 + 16);
      if (!v98)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v132 = v83;
      sub_2288AA234(v95);

      v97 = v132;
      v98 = *(v132 + 16);
      if (!v98)
      {
LABEL_39:

        v99 = MEMORY[0x277D84F90];
        if (!*(MEMORY[0x277D84F90] + 16))
        {
LABEL_40:

          sub_2288AF600();
          v101 = sub_2288AF620();
          v102 = sub_2288AF840();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v132 = v104;
            *v103 = 136446210;
            v136 = v84;
            swift_getMetatypeMetadata();
            v105 = sub_2288AF740();
            v107 = sub_2288A1070(v105, v106, &v132);

            *(v103 + 4) = v107;
            _os_log_impl(&dword_22889D000, v101, v102, "[%{public}s]: No invalid feed items to purge.", v103, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v104);
            MEMORY[0x22AAC22E0](v104, -1, -1);
            MEMORY[0x22AAC22E0](v103, -1, -1);
          }

          else
          {
          }

          v108(v96, v109);
          return 0;
        }

LABEL_37:

        return v99;
      }
    }

    v99 = sub_2288AA05C(v98, 0);
    v100 = sub_2288AC24C(&v132, v99 + 4, v98, v97);
    result = sub_2288AC460();
    if (v100 != v98)
    {
      goto LABEL_46;
    }

    if (!v99[2])
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  v57 = 0;
  v119 = v130 + 16;
  LODWORD(v118) = *MEMORY[0x277D11DF0];
  v117 = (v116 + 104);
  v58 = (v116 + 8);
  v116 = v130 + 8;
  v124 = (v130 + 32);
  v120 = v54;
  while (v57 < *(result + 16))
  {
    v59 = (*(v130 + 80) + 32) & ~*(v130 + 80);
    v60 = *(v130 + 72);
    (*(v130 + 16))(v126, result + v59 + v60 * v57, v131);
    sub_2288AF2B0();
    (*v117)(v128, v118, v129);
    sub_2288ACED0(&qword_2813D53A0, MEMORY[0x277D11E28]);
    sub_2288AF770();
    sub_2288AF770();
    if (v136 == v134 && v137 == v135)
    {
      v61 = *v58;
      v62 = v129;
      (*v58)(v128, v129);
      v61(v127, v62);

LABEL_13:
      v66 = *v124;
      (*v124)(v125, v126, v131);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2288ABE20(0, *(v56 + 16) + 1, 1);
        v56 = v138;
      }

      v69 = *(v56 + 16);
      v68 = *(v56 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_2288ABE20(v68 > 1, v69 + 1, 1);
        v56 = v138;
      }

      *(v56 + 16) = v69 + 1;
      v66((v56 + v59 + v69 * v60), v125, v131);
      goto LABEL_7;
    }

    v63 = sub_2288AF9A0();
    v64 = *v58;
    v65 = v129;
    (*v58)(v128, v129);
    v64(v127, v65);

    if (v63)
    {
      goto LABEL_13;
    }

    (*v116)(v126, v131);
LABEL_7:
    ++v57;
    result = v120;
    if (v121 == v57)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

_OWORD *sub_2288A5BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v101 = a1;
  v7 = sub_2288AF470();
  v105 = *(v7 - 8);
  v106 = v7;
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2288ACE00(0, &qword_2813D5278, MEMORY[0x277D11EB0], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v95 - v14;
  v109 = sub_2288AF3C0();
  v102 = *(v109 - 8);
  v15 = *(v102 + 64);
  v16 = MEMORY[0x28223BE20](v109);
  v108 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v104 = (&v95 - v18);
  sub_2288ACE00(0, &qword_2813D5358, type metadata accessor for ReadArticleInformation, v11);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v95 - v21;
  ArticleInformation = type metadata accessor for ReadArticleInformation();
  v24 = *(ArticleInformation - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](ArticleInformation);
  v27 = (&v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a3 + 24))(a2, a3);
  if ((*(v24 + 48))(v22, 1, ArticleInformation) == 1)
  {
    sub_2288AC550(v22, &qword_2813D5358, type metadata accessor for ReadArticleInformation);
    (*(a3 + 16))(a2, a3);
    v107 = sub_2288AF460();
    (*(v105 + 8))(v10, v106);
    v95 = *(a3 + 32);
    v96 = a3 + 32;
    v28 = v95(a2, a3);
    v29 = *(v28 + 16);
    v99 = a3;
    v100 = v4;
    v98 = a2;
    if (v29)
    {
      v112 = MEMORY[0x277D84F90];
      sub_2288ABE00(0, v29, 0);
      v30 = v112;
      v31 = v28 + 32;
      do
      {
        sub_2288A1AE8(v31, &v110);
        __swift_project_boxed_opaque_existential_1(&v110, v111);
        v32 = sub_2288AF570();
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_1(&v110);
        v112 = v30;
        v36 = *(v30 + 16);
        v35 = *(v30 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_2288ABE00((v35 > 1), v36 + 1, 1);
          v30 = v112;
        }

        *(v30 + 16) = v36 + 1;
        v37 = v30 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v31 += 48;
        --v29;
      }

      while (v29);

      a2 = v98;
      v41 = v99;
      v42 = v100;
    }

    else
    {
      v41 = a3;
      v42 = v4;

      v30 = MEMORY[0x277D84F90];
    }

    sub_2288AC3A4(v30);

    (*(v41 + 8))(&v110, a2, v41);
    __swift_project_boxed_opaque_existential_1(&v110, v111);
    v43 = sub_2288AF3F0();

    __swift_destroy_boxed_opaque_existential_1(&v110);
    v44 = *(v43 + 16);
    v45 = MEMORY[0x277D84F90];
    v97 = v43;
    if (v44)
    {
      v110 = MEMORY[0x277D84F90];
      sub_2288ABE00(0, v44, 0);
      v45 = v110;
      v46 = *(v102 + 16);
      v47 = v43 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
      v104 = *(v102 + 72);
      v105 = v46;
      v106 = (v102 + 16);
      v48 = (v102 + 8);
      do
      {
        v49 = v108;
        v50 = v109;
        (v105)(v108, v47, v109);
        v51 = sub_2288AF320();
        v53 = v52;
        (*v48)(v49, v50);
        v110 = v45;
        v55 = *(v45 + 16);
        v54 = *(v45 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_2288ABE00((v54 > 1), v55 + 1, 1);
          v45 = v110;
        }

        *(v45 + 16) = v55 + 1;
        v56 = v45 + 16 * v55;
        *(v56 + 32) = v51;
        *(v56 + 40) = v53;
        v47 += v104;
        --v44;
      }

      while (v44);
      v41 = v99;
      v42 = v100;
      a2 = v98;
    }

    v57 = sub_2288AC3A4(v45);

    v58 = sub_2288AA8D0(v101, v57);
    v59 = v95(a2, v41);
    v39 = &v95;
    MEMORY[0x28223BE20](v59);
    *(&v95 - 4) = a2;
    *(&v95 - 3) = v41;
    v60 = v107;
    *(&v95 - 2) = v107;
    *(&v95 - 1) = v42;
    v61 = v103;
    v62 = sub_2288A6694(sub_2288AC43C, (&v95 - 6), v59);

    if (v61)
    {

      return v39;
    }

    v101 = v58;
    v96 = 0;
    v65 = *(v62 + 16);
    v66 = v62;
    v67 = MEMORY[0x277D84F90];
    v103 = v66;
    if (v65)
    {
      v110 = MEMORY[0x277D84F90];
      sub_2288ABE00(0, v65, 0);
      v67 = v110;
      v68 = v102 + 16;
      v69 = *(v102 + 16);
      v70 = v66 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
      v105 = *(v102 + 72);
      v106 = v69;
      v104 = (v102 + 8);
      do
      {
        v71 = v108;
        v72 = v109;
        v73 = v68;
        v106(v108, v70, v109);
        v74 = sub_2288AF320();
        v76 = v75;
        (*v104)(v71, v72);
        v110 = v67;
        v78 = *(v67 + 16);
        v77 = *(v67 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_2288ABE00((v77 > 1), v78 + 1, 1);
          v67 = v110;
        }

        *(v67 + 16) = v78 + 1;
        v79 = v67 + 16 * v78;
        *(v79 + 32) = v74;
        *(v79 + 40) = v76;
        v70 += v105;
        --v65;
        v68 = v73;
      }

      while (v65);
      v41 = v99;
      v42 = v100;
      a2 = v98;
      v80 = v107;
    }

    else
    {
      v80 = v60;
    }

    v86 = v97;
    v87 = sub_2288AC3A4(v67);

    if (*(v101 + 16) <= *(v87 + 16) >> 3)
    {
      v110 = v87;
      sub_2288AA234(v101);

      v88 = v110;
    }

    else
    {
      v88 = sub_2288AA360(v101, v87);
    }

    v89 = v103;
    v90 = *(v88 + 16);
    if (v90)
    {
      v91 = sub_2288AA05C(*(v88 + 16), 0);
      v92 = sub_2288AC24C(&v110, v91 + 4, v90, v88);
      v93 = sub_2288AC460();
      if (v92 == v90)
      {
LABEL_36:
        MEMORY[0x28223BE20](v93);
        *(&v95 - 6) = a2;
        *(&v95 - 5) = v41;
        *(&v95 - 4) = v89;
        *(&v95 - 3) = v86;
        *(&v95 - 2) = v42;
        v39 = sub_2288A8D40(sub_2288AC468, (&v95 - 8), v91);

        return v39;
      }

      __break(1u);
    }

    v91 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  sub_2288AC48C(v22, v27);
  v38 = v107;
  v39 = v4;
  v40 = v103;
  sub_2288A6844(v27, a2, a3, v107);
  if (v40)
  {
    sub_2288AC4F0(v27, type metadata accessor for ReadArticleInformation);
  }

  else
  {
    v63 = v102;
    v64 = v109;
    if ((*(v102 + 48))(v38, 1, v109) == 1)
    {
      sub_2288AC550(v38, &qword_2813D5278, MEMORY[0x277D11EB0]);
      sub_2288AC4F0(v27, type metadata accessor for ReadArticleInformation);
      return MEMORY[0x277D84F90];
    }

    else
    {
      v82 = *(v63 + 32);
      v81 = v63 + 32;
      v83 = v104;
      v82(v104, v38, v64);
      sub_2288ACE00(0, &qword_2813D50B8, MEMORY[0x277D11EB0], MEMORY[0x277D84560]);
      v84 = *(v81 + 40);
      v85 = (*(v81 + 48) + 32) & ~*(v81 + 48);
      v39 = swift_allocObject();
      v39[1] = xmmword_2288B01D0;
      v82((v39 + v85), v83, v64);
      sub_2288AC4F0(v27, type metadata accessor for ReadArticleInformation);
    }
  }

  return v39;
}

uint64_t sub_2288A6694(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_2288AF3C0();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2288ABE20(0, v10, 0);
    v11 = v21;
    v12 = a3 + 32;
    v16[1] = v6 + 32;
    while (1)
    {
      v18(v12, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2288ABE20(v13 > 1, v14 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v14 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
      v12 += 48;
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_2288A6844@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v43 = a4;
  v7 = MEMORY[0x277D83D88];
  sub_2288ACE00(0, &qword_2813D5268, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v37 - v10;
  v50 = sub_2288AF470();
  v48 = *(v50 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288ACE00(0, &qword_2813D5278, MEMORY[0x277D11EB0], v7);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  v18 = sub_2288AF3C0();
  v19 = *(v18 - 8);
  v46 = v18;
  v47 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v41 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(v49, a2, a3);
  v45 = v49[4];
  v44 = __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  v22 = a1[3];
  v23 = a1[5];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = *(a3 + 16);
  v39 = a2;
  v40 = a3;
  v24(a2, a3);
  v25 = sub_2288AF460();
  (*(v48 + 8))(v13, v50);
  sub_2288AF570();

  v26 = v46;
  v27 = v47;
  sub_2288AF3E0();

  if ((*(v27 + 48))(v17, 1, v26) == 1)
  {
    sub_2288AC550(v17, &qword_2813D5278, MEMORY[0x277D11EB0]);
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_2288AC5C0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v29 = *(v27 + 32);
    v30 = v41;
    v29(v41, v17, v26);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v31 = v42;
    sub_2288AF360();
    v32 = sub_2288AF4C0();
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    sub_2288AC550(v31, &qword_2813D5268, MEMORY[0x277D12030]);
    if (v33 == 1)
    {
      ArticleInformation = type metadata accessor for ReadArticleInformation();
      sub_2288AC614(v30, v38 + *(ArticleInformation + 20), v38);
      v35 = v43;
      v29(v43, v30, v26);
      v36 = 0;
    }

    else
    {
      (*(v27 + 8))(v30, v26);
      v36 = 1;
      v35 = v43;
    }

    return (*(v27 + 56))(v35, v36, 1, v26);
  }
}

uint64_t sub_2288A6CF8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v10 = sub_2288A6D8C(a2, a3, a4);
  static PluginFeedItem.makeArticleFeedItemWithMetadata(article:sourceProfile:pluginFeedItemConstructor:)(a1, v10, v11, a6);

  if (v6)
  {
    *a5 = v6;
  }

  return result;
}

uint64_t (*sub_2288A6D8C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_2288ACF64;
}

uint64_t sub_2288A6EAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v75 = a7;
  v69 = a5;
  v70 = a6;
  v71 = a4;
  v73 = a3;
  v9 = MEMORY[0x277D83D88];
  sub_2288ACE00(0, &qword_2813D5278, MEMORY[0x277D11EB0], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v68 = &v63 - v12;
  sub_2288ACE00(0, &qword_2813D5268, MEMORY[0x277D12030], v9);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = &v63 - v15;
  v16 = sub_2288AF3C0();
  v76 = *(v16 - 8);
  v17 = *(v76 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v77 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v65 = &v63 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v67 = &v63 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v63 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v72 = &v63 - v28;
  MEMORY[0x28223BE20](v27);
  v74 = &v63 - v29;
  v30 = *(a2 + 16);
  if (!v30)
  {
    return (*(v76 + 56))(v75, 1, 1, v16);
  }

  v31 = *a1;
  v32 = a1[1];
  v33 = *(v76 + 16);
  v34 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v78 = *(v76 + 72);
  v79 = v33;
  v64 = v34;
  v35 = a2 + v34;
  v80 = v76 + 16;
  v36 = (v76 + 8);
  while (1)
  {
    v79(v26, v35, v16);
    if (sub_2288AF320() == v31 && v37 == v32)
    {
      break;
    }

    v38 = sub_2288AF9A0();

    if (v38)
    {
      goto LABEL_9;
    }

    (*v36)(v26, v16);
    v35 += v78;
    if (!--v30)
    {
      return (*(v76 + 56))(v75, 1, 1, v16);
    }
  }

LABEL_9:
  v40 = *(v76 + 32);
  v41 = v72;
  v40(v72, v26, v16);
  v72 = v40;
  v40(v74, v41, v16);
  v42 = *(v73 + 16);
  v43 = v77;
  if (v42)
  {
    v44 = v73 + v64;
    while (1)
    {
      v79(v43, v44, v16);
      if (sub_2288AF320() == v31 && v45 == v32)
      {
        break;
      }

      v46 = sub_2288AF9A0();

      if (v46)
      {
        goto LABEL_17;
      }

      v43 = v77;
      (*v36)(v77, v16);
      v44 += v78;
      if (!--v42)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v49 = v65;
    v50 = v72;
    (v72)(v65, v77, v16);
    v51 = v67;
    v50(v67, v49, v16);
    v52 = v66;
    sub_2288AF360();
    v53 = sub_2288AF4C0();
    LODWORD(v49) = (*(*(v53 - 8) + 48))(v52, 1, v53);
    sub_2288AC550(v52, &qword_2813D5268, MEMORY[0x277D12030]);
    v54 = v74;
    if (v49 == 1)
    {
      sub_2288A761C(v74, v69, v70);
    }

    v55 = v68;
    v79(v68, v51, v16);
    v57 = v76 + 56;
    v56 = *(v76 + 56);
    v56(v55, 0, 1, v16);
    v58 = sub_2288A810C(v55);
    sub_2288AC550(v55, &qword_2813D5278, MEMORY[0x277D11EB0]);
    v59 = *(v57 - 48);
    v59(v51, v16);
    if (v58)
    {
      v59(v54, v16);
      v60 = v75;
      v61 = 1;
    }

    else
    {
      v62 = v75;
      (v72)(v75, v54, v16);
      v60 = v62;
      v61 = 0;
    }

    return v56(v60, v61, 1, v16);
  }

  else
  {
LABEL_15:
    v47 = v74;
    sub_2288A761C(v74, v69, v70);
    v48 = v75;
    (v72)(v75, v47, v16);
    return (*(v76 + 56))(v48, 0, 1, v16);
  }
}

_OWORD *sub_2288A74F0@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + 2);
  if (v3)
  {
    v4 = (result + 2);
    while (1)
    {
      sub_2288A1AE8(v4, &v12);
      __swift_project_boxed_opaque_existential_1(&v12, v13);
      v5 = sub_2288AF2E0();
      v6 = sub_2288AF570();
      v8 = v7;

      if (v6 == sub_2288AF320() && v8 == v9)
      {
        break;
      }

      v11 = sub_2288AF9A0();

      if (v11)
      {
        return sub_2288A1B4C(&v12, a2);
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v12);
      v4 += 48;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    return sub_2288A1B4C(&v12, a2);
  }

  else
  {
LABEL_9:
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void sub_2288A761C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2288AF630();
  v8 = *(v7 - 8);
  v86 = v7;
  v87 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v80 = &v75 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v75 - v14;
  MEMORY[0x28223BE20](v13);
  v78 = &v75 - v15;
  sub_2288ACE00(0, &qword_2813D5280, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v75 - v18;
  v20 = sub_2288AF260();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v77 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v83 = &v75 - v25;
  v84 = sub_2288AF320();
  v27 = v26;
  v28 = *(a3 + 40);
  v79 = v3;
  v85 = a2;
  v82 = a3;
  v29 = v28(a2, a3);
  v81 = a1;
  sub_2288AF320();
  v30 = sub_2288AF720();

  v31 = HKArticlesKeyReadState(v30);

  if (v31)
  {
    sub_2288AF730();

    sub_2288AF850();

    v32 = v21;
    v33 = v20;
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_2288AC550(v19, &qword_2813D5280, MEMORY[0x277CC9578]);
      v34 = v80;
      sub_2288AF600();

      v35 = sub_2288AF620();
      v36 = sub_2288AF830();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v91[0] = v38;
        *v37 = 136315394;
        *&v89 = v85;
        swift_getMetatypeMetadata();
        v39 = sub_2288AF740();
        v41 = sub_2288A1070(v39, v40, v91);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v42 = sub_2288A1070(v84, v27, v91);

        *(v37 + 14) = v42;
        _os_log_impl(&dword_22889D000, v35, v36, "[%s] Identifier %s is not in the system yet, which means it is has not been read yet", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC22E0](v38, -1, -1);
        MEMORY[0x22AAC22E0](v37, -1, -1);
      }

      else
      {
      }

      (*(v87 + 8))(v34, v86);
    }

    else
    {
      v43 = v83;
      (*(v21 + 32))(v83, v19, v20);
      v44 = v85;
      v45 = (*(v82 + 32))(v85);
      sub_2288A74F0(v45, &v89);

      if (v90)
      {
        sub_2288A1B4C(&v89, v91);
        v46 = v78;
        sub_2288AF600();
        v47 = *(v21 + 16);
        v48 = v77;
        v47(v77, v43, v33);

        v49 = sub_2288AF620();
        v50 = sub_2288AF840();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          LODWORD(v79) = v50;
          v52 = v51;
          v80 = swift_slowAlloc();
          v88 = v44;
          *&v89 = v80;
          *v52 = 136315650;
          swift_getMetatypeMetadata();
          v53 = sub_2288AF740();
          v55 = sub_2288A1070(v53, v54, &v89);

          *(v52 + 4) = v55;
          *(v52 + 12) = 2080;
          sub_2288ACED0(&qword_27D85AC18, MEMORY[0x277CC9578]);
          v56 = sub_2288AF980();
          v58 = v57;
          v59 = *(v32 + 8);
          v59(v48, v33);
          v60 = sub_2288A1070(v56, v58, &v89);

          *(v52 + 14) = v60;
          *(v52 + 22) = 2080;
          v61 = sub_2288A1070(v84, v27, &v89);

          *(v52 + 24) = v61;
          _os_log_impl(&dword_22889D000, v49, v79, "[%s] Adding read date of %s to article %s", v52, 0x20u);
          v62 = v80;
          swift_arrayDestroy();
          MEMORY[0x22AAC22E0](v62, -1, -1);
          MEMORY[0x22AAC22E0](v52, -1, -1);

          (*(v87 + 8))(v78, v86);
        }

        else
        {

          v59 = *(v32 + 8);
          v59(v48, v33);
          (*(v87 + 8))(v46, v86);
        }

        v74 = v83;
        sub_2288AC614(v81, v83, v91);
        __swift_destroy_boxed_opaque_existential_1(v91);
        v59(v74, v33);
      }

      else
      {
        sub_2288AC550(&v89, &qword_27D85AC50, sub_2288ACE64);
        v63 = v76;
        sub_2288AF600();

        v64 = sub_2288AF620();
        v65 = sub_2288AF830();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v82 = v32;
          v68 = v67;
          *&v91[0] = v67;
          *v66 = 136315394;
          *&v89 = v44;
          swift_getMetatypeMetadata();
          v69 = sub_2288AF740();
          v70 = v63;
          v72 = sub_2288A1070(v69, v71, v91);

          *(v66 + 4) = v72;
          *(v66 + 12) = 2080;
          v73 = sub_2288A1070(v84, v27, v91);

          *(v66 + 14) = v73;
          _os_log_impl(&dword_22889D000, v64, v65, "[%s] Identifier %s is not a managed article", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAC22E0](v68, -1, -1);
          MEMORY[0x22AAC22E0](v66, -1, -1);

          (*(v87 + 8))(v70, v86);
          (*(v82 + 8))(v43, v33);
        }

        else
        {

          (*(v87 + 8))(v63, v86);
          (*(v32 + 8))(v43, v33);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_2288A810C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2288AF270();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v113 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v114 = &v106 - v9;
  v116 = sub_2288AF4C0();
  v118 = *(v116 - 8);
  v10 = *(v118 + 64);
  MEMORY[0x28223BE20](v116);
  v111 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AC9E4();
  v115 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v119 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D83D88];
  sub_2288ACE00(0, &qword_2813D5268, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v112 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v120 = &v106 - v21;
  MEMORY[0x28223BE20](v20);
  v117 = &v106 - v22;
  v23 = MEMORY[0x277D11EB0];
  sub_2288ACE00(0, &qword_2813D5278, MEMORY[0x277D11EB0], v15);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v106 - v26;
  v28 = sub_2288AF3C0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288ACAF8(a1, v27, &qword_2813D5278, v23);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
    (*(v29 + 32))(v32, v27, v28);
    v34 = sub_2288AF320();
    v36 = v35;
    if (v34 == sub_2288AF320() && v36 == v37)
    {
    }

    else
    {
      v38 = sub_2288AF9A0();

      if ((v38 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v108 = v5;
    v109 = v4;
    v110 = v29;
    v39 = v28;
    v40 = sub_2288AF2F0();
    v42 = v41;
    v44 = v43;
    v45 = sub_2288AF2F0();
    v47 = v46;
    v49 = v48;
    v50 = v2;
    v51 = MEMORY[0x22AAC16B0](v40, v42, v44, v45, v46, v48);
    sub_2288ACA78(v45, v47, v49);
    sub_2288ACA78(v40, v42, v44);
    if (v51)
    {
      v52 = sub_2288AF3B0();
      v54 = v53;
      v56 = sub_2288AF3B0();
      v57 = v55;
      v58 = v50;
      if (v54 >> 60 == 15)
      {
        v28 = v39;
        v59 = v120;
        if (v55 >> 60 == 15)
        {
          v107 = v32;
          sub_2288ACA90(v52, v54);
          v29 = v110;
LABEL_15:
          v61 = v117;
          v106 = v58;
          sub_2288AF360();
          sub_2288AF360();
          v62 = *(v115 + 48);
          v63 = MEMORY[0x277D12030];
          v64 = v119;
          sub_2288ACAF8(v61, v119, &qword_2813D5268, MEMORY[0x277D12030]);
          sub_2288ACAF8(v59, v64 + v62, &qword_2813D5268, v63);
          v65 = v59;
          v66 = *(v118 + 48);
          v67 = v116;
          if (v66(v64, 1, v116) == 1)
          {
            v68 = MEMORY[0x277D12030];
            sub_2288AC550(v65, &qword_2813D5268, MEMORY[0x277D12030]);
            v69 = v119;
            sub_2288AC550(v61, &qword_2813D5268, v68);
            if (v66(v69 + v62, 1, v67) == 1)
            {
              sub_2288AC550(v69, &qword_2813D5268, MEMORY[0x277D12030]);
              v32 = v107;
LABEL_23:
              sub_2288AF2B0();
              v78 = v32;
              sub_2288AF2B0();
              sub_2288ACED0(&qword_2813D53A0, MEMORY[0x277D11E28]);
              sub_2288AF770();
              sub_2288AF770();
              if (v123 == v121 && v124 == v122)
              {
                v79 = v109;
                v80 = *(v108 + 8);
                v80(v113, v109);
                v80(v114, v79);
              }

              else
              {
                v81 = sub_2288AF9A0();
                v82 = v109;
                v83 = *(v108 + 8);
                v83(v113, v109);
                v83(v114, v82);

                if ((v81 & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

              v84 = sub_2288AF330();
              v32 = v78;
              v85 = sub_2288AF330();
              sub_2288A9064(v84, v85);
              v87 = v86;

              if (v87)
              {
                v88 = sub_2288AF390();
                v89 = sub_2288AF390();
                v90 = sub_2288A92CC(v88, v89);

                if (v90)
                {
                  v91 = sub_2288AF300();
                  v93 = v92;
                  v94 = sub_2288AF300();
                  v33 = v95;
                  if (v93)
                  {
                    if (!v95)
                    {
LABEL_45:

                      v29 = v110;
LABEL_52:
                      v32 = v78;
                      goto LABEL_35;
                    }

                    if (v91 == v94 && v93 == v95)
                    {

LABEL_40:
                      v98 = sub_2288AF350();
                      v100 = v99;
                      v101 = sub_2288AF350();
                      v33 = v102;
                      if (!v100)
                      {
                        v29 = v110;
                        if (!v102)
                        {
                          goto LABEL_50;
                        }

                        goto LABEL_51;
                      }

                      if (v102)
                      {
                        if (v98 == v101 && v100 == v102)
                        {

                          v29 = v110;
LABEL_50:
                          v104 = sub_2288AF2C0();
                          v105 = sub_2288AF2C0();
                          v33 = sub_2288A9484(v104, v105);

                          goto LABEL_52;
                        }

                        v103 = sub_2288AF9A0();

                        v29 = v110;
                        if (v103)
                        {
                          goto LABEL_50;
                        }

LABEL_51:
                        v33 = 0;
                        goto LABEL_52;
                      }

                      goto LABEL_45;
                    }

                    v97 = sub_2288AF9A0();

                    if (v97)
                    {
                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    if (!v95)
                    {
                      goto LABEL_40;
                    }
                  }

                  v33 = 0;
                  v29 = v110;
                  goto LABEL_52;
                }
              }

              goto LABEL_34;
            }

            goto LABEL_20;
          }

          v70 = v112;
          sub_2288ACAF8(v64, v112, &qword_2813D5268, MEMORY[0x277D12030]);
          if (v66(v64 + v62, 1, v67) == 1)
          {
            v71 = MEMORY[0x277D12030];
            sub_2288AC550(v120, &qword_2813D5268, MEMORY[0x277D12030]);
            v69 = v119;
            sub_2288AC550(v117, &qword_2813D5268, v71);
            (*(v118 + 8))(v70, v67);
LABEL_20:
            sub_2288AC4F0(v69, sub_2288AC9E4);
            goto LABEL_21;
          }

          v72 = v70;
          v73 = v118;
          v74 = v64 + v62;
          v75 = v111;
          (*(v118 + 32))(v111, v74, v67);
          sub_2288ACED0(&qword_27D85AC48, MEMORY[0x277D12030]);
          LODWORD(v115) = sub_2288AF710();
          v76 = *(v73 + 8);
          v76(v75, v67);
          v77 = MEMORY[0x277D12030];
          sub_2288AC550(v120, &qword_2813D5268, MEMORY[0x277D12030]);
          sub_2288AC550(v117, &qword_2813D5268, v77);
          v76(v72, v67);
          sub_2288AC550(v64, &qword_2813D5268, v77);
          v32 = v107;
          if (v115)
          {
            goto LABEL_23;
          }

LABEL_34:
          v33 = 0;
          goto LABEL_35;
        }
      }

      else
      {
        v28 = v39;
        v59 = v120;
        if (v55 >> 60 != 15)
        {
          v107 = v32;
          sub_2288ACD98(v52, v54);
          sub_2288ACD98(v56, v57);
          v60 = sub_2288ACC30(v52, v54, v56, v57);
          sub_2288ACA90(v56, v57);
          sub_2288ACA90(v56, v57);
          sub_2288ACA90(v52, v54);
          sub_2288ACA90(v52, v54);
          v29 = v110;
          if ((v60 & 1) == 0)
          {
LABEL_21:
            v33 = 0;
            v32 = v107;
            goto LABEL_35;
          }

          goto LABEL_15;
        }
      }

      sub_2288ACA90(v52, v54);
      sub_2288ACA90(v56, v57);
      v33 = 0;
      v29 = v110;
    }

    else
    {
      v33 = 0;
      v28 = v39;
      v29 = v110;
    }

LABEL_35:
    (*(v29 + 8))(v32, v28);
    return v33;
  }

  sub_2288AC550(v27, &qword_2813D5278, MEMORY[0x277D11EB0]);
  return 0;
}

char *sub_2288A8D40(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32[3] = a2;
  sub_2288ACE00(0, &qword_2813D5278, MEMORY[0x277D11EB0], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_2288AF3C0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v31 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v26 = v14;
  v29 = (v14 + 32);
  v30 = (v14 + 48);
  v17 = (a3 + 40);
  v18 = MEMORY[0x277D84F90];
  v27 = a1;
  while (1)
  {
    v19 = *v17;
    v32[0] = *(v17 - 1);
    v32[1] = v19;

    a1(v32);
    if (v3)
    {
      break;
    }

    if ((*v30)(v9, 1, v10) == 1)
    {
      sub_2288AC550(v9, &qword_2813D5278, MEMORY[0x277D11EB0]);
    }

    else
    {
      v20 = v10;
      v21 = v28;
      v22 = *v29;
      (*v29)(v28, v9, v20);
      v22(v31, v21, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_2288A9D40(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_2288A9D40(v23 > 1, v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v22(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v31, v20);
      v10 = v20;
      a1 = v27;
    }

    v17 += 2;
    if (!--v16)
    {
      return v18;
    }
  }

  return v18;
}

void sub_2288A9064(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_2288AC14C(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_2288A0FA8();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_2288AF870();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_2288AF880();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_2288A92CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_2288AFA00();

    sub_2288AF750();
    v17 = sub_2288AFA20();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_2288AF9A0() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2288A9484(uint64_t a1, uint64_t a2)
{
  v59[3] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_73:
    v20 = 1;
    goto LABEL_76;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_75;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v57 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          goto LABEL_73;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v57 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_2288ACDAC(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        goto LABEL_76;
      }

      v21 = sub_2288A41F4(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_2288ACAA4(v32, v33);
      v3 = a1;
      v8 = v57;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v59, 0, 14);
        sub_2288ACDAC(v26, v25);
        goto LABEL_64;
      }

      v52 = *(v26 + 24);
      v54 = *(v26 + 16);
      sub_2288ACDAC(v26, v25);
      v40 = sub_2288AF200();
      if (v40)
      {
        v41 = v40;
        v42 = sub_2288AF220();
        v43 = v54;
        if (__OFSUB__(v54, v42))
        {
          goto LABEL_84;
        }

        v51 = v54 - v42 + v41;
      }

      else
      {
        v51 = 0;
        v43 = v54;
      }

      if (__OFSUB__(v52, v43))
      {
        goto LABEL_83;
      }

      sub_2288AF210();
      v48 = v51;
LABEL_70:
      sub_2288A9980(v48, v19, v18, v59);
      sub_2288ACAA4(v26, v25);
      sub_2288ACAA4(v19, v18);
      v47 = v59[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_2288ACDAC(v26, v25);
      v44 = sub_2288AF200();
      if (v44)
      {
        v53 = v44;
        v45 = sub_2288AF220();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v53;
      }

      else
      {
        v46 = 0;
      }

      sub_2288AF210();
      v48 = v46;
      goto LABEL_70;
    }

    v59[0] = v26;
    LOWORD(v59[1]) = v25;
    BYTE2(v59[1]) = BYTE2(v25);
    BYTE3(v59[1]) = BYTE3(v25);
    BYTE4(v59[1]) = BYTE4(v25);
    BYTE5(v59[1]) = BYTE5(v25);
    sub_2288ACDAC(v26, v25);
LABEL_64:
    sub_2288A9980(v59, v19, v18, &v58);
    sub_2288ACAA4(v26, v25);
    sub_2288ACAA4(v19, v18);
    v47 = v58;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v57;
    if ((v47 & 1) == 0)
    {
      goto LABEL_76;
    }
  }

LABEL_74:
  sub_2288ACAA4(v19, v18);
LABEL_75:
  v20 = 0;
LABEL_76:
  v49 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_2288A9980@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2288AF200();
    if (v10)
    {
      v11 = sub_2288AF220();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2288AF210();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2288AF200();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2288AF220();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2288AF210();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2288A9BB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2288ACB78(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2288ACAA4(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2288A9980(v14, a3, a4, &v13);
  v10 = v4;
  sub_2288ACAA4(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

size_t sub_2288A9D40(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2288ACE00(0, &qword_2813D50B8, MEMORY[0x277D11EB0], MEMORY[0x277D84560]);
  v10 = *(sub_2288AF3C0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2288AF3C0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2288A9F3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288ACF18(0, &qword_2813D50B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2288AA05C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2288ACF18(0, &qword_2813D50A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2288AA0E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2288AFA00();
  sub_2288AF750();
  v9 = sub_2288AFA20();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2288AF9A0() & 1) != 0)
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

    sub_2288ABC80(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2288AA234(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_2288AAD7C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2288AA360(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v68 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v49 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = (a2 + 56);

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_2288AFA00();

    sub_2288AF750();
    v24 = sub_2288AFA20();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_2288AF9A0() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v29 = *(v5 + 32);
  v56 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v56;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    MEMORY[0x28223BE20]();
    v2 = &v55 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v60 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v58 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v28;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_2288AB528(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v28 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v62 = v28;
            v39 = (v38 + ((v28 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            v41 = *(v5 + 40);
            sub_2288AFA00();

            sub_2288AF750();
            v42 = sub_2288AFA20();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v40 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_2288AF9A0() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v40 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v34 = v60[v2];
          v60[v2] = v34 & ~v44;
          v27 = (v34 & v44) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_2288AB10C(v52, v56, v5, v2, v64);

  if (!v53)
  {

    MEMORY[0x22AAC22E0](v52, -1, -1);
    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_2288AC460();
    goto LABEL_53;
  }

  result = MEMORY[0x22AAC22E0](v52, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2288AA8D0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v60[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_43;
  }

  v60[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v51 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v56 = v4;
  v57 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v54 = v5 + 1;
    v11 = *(v2 + 40);
    sub_2288AFA00();

    sub_2288AF750();
    v12 = sub_2288AFA20();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v54;
    if (v54 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_2288AF9A0() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v57;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v60[1] = v54;

  v22 = *(v2 + 32);
  v52 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v52;
  v24 = v57;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v45 = v23;

  v46 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v53 = &v50;
    MEMORY[0x28223BE20](v21);
    v14 = &v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v59 = v7;
    memcpy(v14, v7, v25);
    v58 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v55 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v56;
    v7 = *(v56 + 16);
    v30 = v54;
    while (1)
    {
      v54 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_2288AB528(v55, v52, v54, v58);
LABEL_42:

LABEL_43:
        v43 = *MEMORY[0x277D85DE8];
        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v58;
        v34 = *(v58 + 40);
        sub_2288AFA00();

        sub_2288AF750();
        v35 = sub_2288AFA20();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v59[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v57;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((sub_2288AF9A0() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v59[v37 >> 6]) == 0)
          {
            v29 = v56;
            goto LABEL_37;
          }

          v42 = (*(v58 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v56;
      v31 = v55[v14];
      v55[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v54 - 1;
      v24 = v57;
      if (__OFSUB__(v54, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v54 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v7, v46);
  v48 = v51;
  v49 = sub_2288AB344(v47, v52, v2, v14, v60);

  if (!v48)
  {

    MEMORY[0x22AAC22E0](v47, -1, -1);

    v2 = v49;
    goto LABEL_43;
  }

  result = MEMORY[0x22AAC22E0](v47, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2288AAD7C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2288AFA00();
  sub_2288AF750();
  v7 = sub_2288AFA20();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2288AF9A0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2288AB740();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2288ABABC(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_2288AAEB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2288AC98C();
  result = sub_2288AF930();
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
      sub_2288AFA00();
      sub_2288AF750();
      result = sub_2288AFA20();
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

uint64_t sub_2288AB10C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_2288AB528(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_2288AFA00();

        sub_2288AF750();
        v20 = sub_2288AFA20();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_2288AF9A0() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_2288AB344(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_2288AB528(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_2288AFA00();

        sub_2288AF750();
        v17 = sub_2288AFA20();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_2288AF9A0() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_2288AB528(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2288AC98C();
  result = sub_2288AF940();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_2288AFA00();

    sub_2288AF750();
    result = sub_2288AFA20();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_2288AB740()
{
  v1 = v0;
  sub_2288AC98C();
  v2 = *v0;
  v3 = sub_2288AF920();
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

uint64_t sub_2288AB890(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2288AC98C();
  result = sub_2288AF930();
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
      sub_2288AFA00();

      sub_2288AF750();
      result = sub_2288AFA20();
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

unint64_t sub_2288ABABC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2288AF8B0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_2288AFA00();

        sub_2288AF750();
        v15 = sub_2288AFA20();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2288ABC80(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2288AAEB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2288AB740();
      goto LABEL_16;
    }

    sub_2288AB890(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2288AFA00();
  sub_2288AF750();
  result = sub_2288AFA20();
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

      result = sub_2288AF9A0();
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
  result = sub_2288AF9B0();
  __break(1u);
  return result;
}

char *sub_2288ABE00(char *a1, int64_t a2, char a3)
{
  result = sub_2288ABE40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2288ABE20(size_t a1, int64_t a2, char a3)
{
  result = sub_2288ABF50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2288ABE40(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288ACF18(0, &qword_2813D50A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2288ABF50(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2288ACE00(0, &qword_2813D50B8, MEMORY[0x277D11EB0], MEMORY[0x277D84560]);
  v10 = *(sub_2288AF3C0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2288AF3C0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2288AC14C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_2288AF8C0())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_2288AF8E0();

      if ((v13 & 1) == 0)
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

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_2288AC24C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2288AC3A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AAC1C30](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2288AA0E4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2288AC48C(uint64_t a1, uint64_t a2)
{
  ArticleInformation = type metadata accessor for ReadArticleInformation();
  (*(*(ArticleInformation - 8) + 32))(a2, a1, ArticleInformation);
  return a2;
}

uint64_t sub_2288AC4F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288AC550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2288ACE00(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2288AC5C0()
{
  result = qword_27D85AC38;
  if (!qword_27D85AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85AC38);
  }

  return result;
}

uint64_t sub_2288AC614(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a2;
  v29 = a3;
  v26 = a1;
  v27 = sub_2288AF260();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2288AF1B0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2288ACE00(0, &qword_2813D5268, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_2288AF480();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2288AF490();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277D11F98], v13);
  sub_2288AF4A0();
  sub_2288AF2D0();
  (*(v19 + 8))(v22, v18);
  (*(v3 + 16))(v6, v28, v27);
  sub_2288AF1A0();
  v23 = v29[5];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_2288AF550();
  sub_2288AF4B0();
  v24 = sub_2288AF4C0();
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  return sub_2288AF370();
}

void sub_2288AC98C()
{
  if (!qword_2813D50C8)
  {
    v0 = sub_2288AF950();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D50C8);
    }
  }
}

void sub_2288AC9E4()
{
  if (!qword_27D85AC40)
  {
    sub_2288ACE00(255, &qword_2813D5268, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85AC40);
    }
  }
}

uint64_t sub_2288ACA78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_2288ACA90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2288ACAA4(a1, a2);
  }

  return a1;
}

uint64_t sub_2288ACAA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2288ACAF8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2288ACE00(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2288ACB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2288AF200();
  v11 = result;
  if (result)
  {
    result = sub_2288AF220();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2288AF210();
  sub_2288A9980(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2288ACC30(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2288ACDAC(a3, a4);
          return sub_2288A9BB0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2288ACD98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2288ACDAC(a1, a2);
  }

  return a1;
}

uint64_t sub_2288ACDAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_2288ACE00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2288ACE64()
{
  result = qword_2813D5258;
  if (!qword_2813D5258)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D5258);
  }

  return result;
}

uint64_t sub_2288ACED0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2288ACF18(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2288AF990();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2288ACF64()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 48))();
}

uint64_t getEnumTagSinglePayload for GenerationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GenerationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2288AD0B8()
{
  result = qword_27D85AC58;
  if (!qword_27D85AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85AC58);
  }

  return result;
}

uint64_t sub_2288AD10C()
{
  v0 = sub_2288AF410();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2288AF430();
  __swift_allocate_value_buffer(v5, qword_2813D5380);
  __swift_project_value_buffer(v5, qword_2813D5380);
  sub_2288AEFBC(0, &qword_2813D50C0, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
  v6 = sub_2288AF270();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2288B01D0;
  (*(v7 + 104))(v10 + v9, *MEMORY[0x277D11DF0], v6);
  (*(v1 + 104))(v4, *MEMORY[0x277D11F10], v0);
  return sub_2288AF420();
}

uint64_t static GeneratorDomain.articles.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813D5378 != -1)
  {
    swift_once();
  }

  v2 = sub_2288AF430();
  v3 = __swift_project_value_buffer(v2, qword_2813D5380);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ArticlesGeneratorPipeline.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_2813D53D8;
  v4 = sub_2288AF430();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2288AD424()
{
  sub_2288AE8C4();
}

uint64_t sub_2288AD44C(uint64_t a1)
{
  v3 = qword_2813D53D0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ArticlesGeneratorPipeline.__allocating_init(context:managedArticles:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ArticlesGeneratorPipeline.init(context:managedArticles:)(a1, a2);
  return v7;
}

uint64_t ArticlesGeneratorPipeline.init(context:managedArticles:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2288AE908();
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v6);
  v97 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AEA68();
  v88 = v9;
  v87 = *(v9 - 8);
  v10 = *(v87 + 64);
  MEMORY[0x28223BE20](v9);
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AEFBC(0, &qword_2813D5358, type metadata accessor for ReadArticleInformation, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v89 = &v80 - v14;
  v100 = sub_2288AF470();
  v102 = *(v100 - 8);
  v15 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  v85 = v16;
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AEFBC(0, &qword_2813D50F8, sub_2288AEA04, MEMORY[0x277CBCE78]);
  v92 = *(v18 - 8);
  v93 = v18;
  v19 = *(v92 + 64);
  MEMORY[0x28223BE20](v18);
  v91 = &v80 - v20;
  v21 = sub_2288AF630();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AF600();
  v26 = sub_2288AF620();
  v27 = sub_2288AF840();
  v28 = os_log_type_enabled(v26, v27);
  v103 = a1;
  v95 = v5;
  v96 = a2;
  v94 = v17;
  if (v28)
  {
    v29 = v5;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v105 = v31;
    *v30 = 136446210;
    v107[0] = v29;
    swift_getMetatypeMetadata();
    v32 = sub_2288AF740();
    v34 = sub_2288A1070(v32, v33, &v105);
    a1 = v103;

    *(v30 + 4) = v34;
    _os_log_impl(&dword_22889D000, v26, v27, "[%{public}s]: Initializing ArticlesGeneratorPipeline", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x22AAC22E0](v31, -1, -1);
    MEMORY[0x22AAC22E0](v30, -1, -1);
  }

  (*(v22 + 8))(v25, v21);
  if (qword_2813D5378 != -1)
  {
    swift_once();
  }

  v35 = sub_2288AF430();
  v36 = __swift_project_value_buffer(v35, qword_2813D5380);
  v37 = v101;
  (*(*(v35 - 8) + 16))(v101 + qword_2813D53D8, v36, v35);
  sub_2288AF440();
  __swift_project_boxed_opaque_existential_1(v107, v108);
  v38 = sub_2288AF3D0();
  v39 = type metadata accessor for ArticleChangeDetector();
  v40 = objc_allocWithZone(v39);
  v41 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  sub_2288A31C4();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v84 = v42;
  swift_allocObject();
  *&v40[v41] = sub_2288AF690();
  *&v40[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers] = 0;
  v45 = [objc_opt_self() healthArticlesDefaultsDomainWithHealthStore_];
  *&v40[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain] = v45;
  v106.receiver = v40;
  v106.super_class = v39;
  v46 = objc_msgSendSuper2(&v106, sel_init);
  sub_2288A32CC();

  __swift_destroy_boxed_opaque_existential_1(v107);
  *(v37 + qword_2813D53E0) = v46;
  v47 = v96;
  *(v37 + qword_2813D53E8) = v96;
  sub_2288AEFBC(0, &qword_2813D50A8, sub_2288AE99C, MEMORY[0x277D84560]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2288B01D0;
  v49 = v95;
  v50 = *(v95 + 88);
  v83 = *(v95 + 80);
  v82 = v50;
  v51 = type metadata accessor for ArticlesGenerator();
  v52 = v94;
  v81 = *(v102 + 16);
  v81(v94, a1, v100);
  ArticleInformation = type metadata accessor for ReadArticleInformation();
  v54 = v89;
  (*(*(ArticleInformation - 8) + 56))(v89, 1, 1, ArticleInformation);
  swift_bridgeObjectRetain_n();
  v55 = v46;
  v56 = ArticlesGenerator.__allocating_init(context:managedArticles:readArticleInfo:)(v52, v47, v54);
  v108 = v51;
  WitnessTable = swift_getWitnessTable();
  v107[0] = v56;
  v57 = sub_2288AEA04();
  v58 = v91;
  sub_2288AF6B0();
  sub_2288AEB5C();
  v59 = v93;
  v60 = sub_2288AF6F0();
  (*(v92 + 8))(v58, v59);
  *(v48 + 32) = v60;
  v61 = v103;
  v105 = v48;
  v62 = sub_2288AF450();
  v90 = v55;
  if (v62)
  {
    v63 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
    swift_beginAccess();
    v104 = *&v55[v63];
    v93 = v57;
    v64 = v100;
    (v81)(v52, v61);
    v65 = v102;
    v66 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v67 = (v85 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    v69 = v82;
    *(v68 + 16) = v83;
    *(v68 + 24) = v69;
    (*(v65 + 32))(v68 + v66, v52, v64);
    *(v68 + v67) = v47;
    *(v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
    sub_2288AEB14(&qword_2813D52D8, sub_2288A31C4);

    v70 = v86;
    sub_2288AF700();

    sub_2288AEB14(qword_2813D52F8, sub_2288AEA68);
    v71 = v88;
    sub_2288AF6F0();
    v72 = (*(v87 + 8))(v70, v71);
    MEMORY[0x22AAC1BB0](v72);
    v73 = v64;
    v74 = v102;
    if (*(v105 + 16) >= *(v105 + 24) >> 1)
    {
      v79 = *(v105 + 16);
      sub_2288AF7A0();
    }

    sub_2288AF7B0();
    v48 = v105;
  }

  else
  {

    v73 = v100;
    v74 = v102;
  }

  v104 = v48;
  sub_2288AE99C();
  sub_2288AEFBC(0, &qword_2813D50D0, sub_2288AE99C, MEMORY[0x277D83940]);
  sub_2288AEB14(&qword_2813D52E8, sub_2288AE99C);
  sub_2288AEC94();
  v75 = v97;
  sub_2288AF660();
  sub_2288AEB14(&qword_2813D52F0, sub_2288AE908);
  v76 = v99;
  v77 = sub_2288AF6F0();

  (*(v74 + 8))(v103, v73);
  (*(v98 + 8))(v75, v76);
  result = v101;
  *(v101 + qword_2813D53D0) = v77;
  return result;
}

uint64_t sub_2288AE0C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v77 = a5;
  sub_2288AEFBC(0, &qword_2813D5358, type metadata accessor for ReadArticleInformation, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v64 - v13;
  v70 = sub_2288AF470();
  v69 = *(v70 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v72 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArticleInformation = type metadata accessor for ReadArticleInformation();
  v67 = *(ArticleInformation - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](ArticleInformation);
  v71 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2288AF630();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v74 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v64 - v23;
  sub_2288AF600();

  v25 = sub_2288AF620();
  v26 = sub_2288AF820();

  v27 = os_log_type_enabled(v25, v26);
  v75 = v19;
  v76 = v6;
  v78 = v18;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66 = a4;
    v30 = v29;
    *&v79 = v29;
    *v28 = 136446466;
    *&v81[0] = v6;
    swift_getMetatypeMetadata();
    v31 = sub_2288AF740();
    v33 = sub_2288A1070(v31, v32, &v79);
    v65 = a3;
    v34 = v19;
    v35 = v33;

    *(v28 + 4) = v35;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_2288A1070(a1, a2, &v79);
    _os_log_impl(&dword_22889D000, v25, v26, "[%{public}s]: received read article update: %s", v28, 0x16u);
    swift_arrayDestroy();
    v36 = v30;
    a4 = v66;
    MEMORY[0x22AAC22E0](v36, -1, -1);
    MEMORY[0x22AAC22E0](v28, -1, -1);

    v37 = v34;
    a3 = v65;
    v38 = *(v37 + 8);
    v38(v24, v78);
  }

  else
  {

    v38 = *(v19 + 8);
    v38(v24, v18);
  }

  v39 = *(a4 + 16);
  if (v39)
  {
    v40 = a4 + 32;
    while (1)
    {
      sub_2288A1AE8(v40, &v79);
      __swift_project_boxed_opaque_existential_1(&v79, v80);
      if (sub_2288AF510() == a1 && v41 == a2)
      {
        break;
      }

      v43 = sub_2288AF9A0();

      if (v43)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(&v79);
      v40 += 48;
      if (!--v39)
      {
        goto LABEL_12;
      }
    }

LABEL_16:
    sub_2288A1B4C(&v79, v81);
    v54 = v71;
    sub_2288A1AE8(v81, v71);
    v55 = ArticleInformation;
    v56 = v54 + *(ArticleInformation + 20);
    sub_2288AF250();
    v57 = *(v76 + 80);
    v58 = *(v76 + 88);
    v59 = type metadata accessor for ArticlesGenerator();
    v60 = v72;
    (*(v69 + 16))(v72, a3, v70);
    v61 = v73;
    sub_2288AED1C(v54, v73);
    (*(v67 + 56))(v61, 0, 1, v55);

    v62 = ArticlesGenerator.__allocating_init(context:managedArticles:readArticleInfo:)(v60, a4, v61);
    v63 = v77;
    v77[3] = v59;
    v63[4] = swift_getWitnessTable();
    *v63 = v62;
    sub_2288AED80(v54);
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
LABEL_12:
    v44 = v74;
    sub_2288AF600();

    v45 = sub_2288AF620();
    v46 = sub_2288AF830();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v79 = v48;
      *v47 = 136446466;
      *&v81[0] = v76;
      swift_getMetatypeMetadata();
      v49 = sub_2288AF740();
      v51 = sub_2288A1070(v49, v50, &v79);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_2288A1070(a1, a2, &v79);
      _os_log_impl(&dword_22889D000, v45, v46, "[%{public}s]: received read article identifier for nonexistent article: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC22E0](v48, -1, -1);
      MEMORY[0x22AAC22E0](v47, -1, -1);
    }

    result = (v38)(v44, v78);
    v53 = v77;
    v77[4] = 0;
    *v53 = 0u;
    *(v53 + 1) = 0u;
  }

  return result;
}

uint64_t ArticlesGeneratorPipeline.deinit()
{
  v1 = qword_2813D53D8;
  v2 = sub_2288AF430();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_2813D53D0);

  v4 = *(v0 + qword_2813D53E8);

  return v0;
}

uint64_t ArticlesGeneratorPipeline.__deallocating_deinit()
{
  ArticlesGeneratorPipeline.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2288AE86C()
{
  v1 = *v0;
  sub_2288AE8C4();
}

uint64_t sub_2288AE8C4()
{
  v1 = qword_2813D53D0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2288AE908()
{
  if (!qword_2813D5118)
  {
    sub_2288AE99C();
    sub_2288AEB14(&qword_2813D52E8, sub_2288AE99C);
    v0 = sub_2288AF650();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D5118);
    }
  }
}

void sub_2288AE99C()
{
  if (!qword_2813D5110)
  {
    sub_2288AEA04();
    v0 = sub_2288AF670();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D5110);
    }
  }
}

unint64_t sub_2288AEA04()
{
  result = qword_2813D5260;
  if (!qword_2813D5260)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D5260);
  }

  return result;
}

void sub_2288AEA68()
{
  if (!qword_2813D5120[0])
  {
    sub_2288A31C4();
    sub_2288AEA04();
    sub_2288AEB14(&qword_2813D52D8, sub_2288A31C4);
    v0 = sub_2288AF640();
    if (!v1)
    {
      atomic_store(v0, qword_2813D5120);
    }
  }
}

uint64_t sub_2288AEB14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2288AEB5C()
{
  result = qword_2813D52D0;
  if (!qword_2813D52D0)
  {
    sub_2288AEFBC(255, &qword_2813D50F8, sub_2288AEA04, MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D52D0);
  }

  return result;
}

uint64_t sub_2288AEBE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_2288AF470() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = v2 + v6;
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_2288AE0C4(*a1, *(a1 + 8), v9, v8, a2);
}

unint64_t sub_2288AEC94()
{
  result = qword_2813D52B8;
  if (!qword_2813D52B8)
  {
    sub_2288AEFBC(255, &qword_2813D50D0, sub_2288AE99C, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D52B8);
  }

  return result;
}

uint64_t sub_2288AED1C(uint64_t a1, uint64_t a2)
{
  ArticleInformation = type metadata accessor for ReadArticleInformation();
  (*(*(ArticleInformation - 8) + 16))(a2, a1, ArticleInformation);
  return a2;
}

uint64_t sub_2288AED80(uint64_t a1)
{
  ArticleInformation = type metadata accessor for ReadArticleInformation();
  (*(*(ArticleInformation - 8) + 8))(a1, ArticleInformation);
  return a1;
}

uint64_t sub_2288AEDDC()
{
  result = sub_2288AF430();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_2288AEFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ReadArticleInformation.init(article:readDate:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2288A1B4C(a1, a3);
  v5 = *(type metadata accessor for ReadArticleInformation() + 20);
  v6 = sub_2288AF260();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for ReadArticleInformation()
{
  result = qword_2813D5360;
  if (!qword_2813D5360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2288AF11C()
{
  result = sub_2288ACE64();
  if (v1 <= 0x3F)
  {
    result = sub_2288AF260();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}