void sub_2190F2F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2190F3008()
{
  sub_2190F1DD0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsNavigationTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186C709C(319, &unk_280E8FE20);
        if (v3 <= 0x3F)
        {
          sub_2186C709C(319, &qword_280EE9F20);
          if (v4 <= 0x3F)
          {
            sub_2186C709C(319, qword_280E97BA0);
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

uint64_t sub_2190F3280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsNavigationTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2190F32E4(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsNavigationTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_2190EF60C(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void (*sub_2190F3380(unint64_t *a1))(char *, uint64_t)
{
  v3 = *(type metadata accessor for SportsNavigationTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2190F0214(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2190F3418(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsNavigationTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2190F138C(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2190F3538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190F35A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2190F3634()
{
  result = qword_27CC16138;
  if (!qword_27CC16138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16138);
  }

  return result;
}

void sub_2190F3688(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_219BF34F4();
  type metadata accessor for SportsNavigationTagFeedGroupEmitter();
  sub_2190EFDAC(a1, a2);
}

uint64_t sub_2190F3798(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2190F55D0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v79 = &v62 - v5;
  sub_2190F55D0(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v62 - v7;
  v8 = type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs();
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F55D0(0, &qword_280E91AA0, sub_21872F4C4, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v80 = &v62 - v11;
  v83 = type metadata accessor for AudioHistoryFeedServiceConfig;
  v82 = sub_2190F4DF4;
  sub_2190F551C(0, &unk_27CC161C0, type metadata accessor for AudioHistoryFeedServiceConfig, sub_2190F4DF4, MEMORY[0x277D31C68]);
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v75 = &v62 - v13;
  v14 = sub_219BF2AB4();
  v89 = *(v14 - 8);
  v90 = v14;
  MEMORY[0x28223BE20](v14);
  v88 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F55D0(0, &unk_280E91B60, MEMORY[0x277D32040], v3);
  MEMORY[0x28223BE20](v16 - 8);
  v70 = &v62 - v17;
  v18 = sub_219BEF554();
  v86 = *(v18 - 8);
  v87 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v69 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v68 = &v62 - v21;
  v78 = sub_218A42400;
  sub_2190F55D0(0, &unk_280E8FF30, sub_218A42400, v3);
  MEMORY[0x28223BE20](v22 - 8);
  v67 = &v62 - v23;
  v71 = MEMORY[0x277D2D4E0];
  sub_2190F55D0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v62 - v25;
  v63 = &v62 - v25;
  v27 = type metadata accessor for ArticleListAudioHistoryFeedGroupConfigData();
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v66 = &v62 - v31;
  v92 = sub_219BF1934();
  v32 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_formatService + 24);
  v72 = *(a1 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_formatService + 32);
  v73 = v34;
  v74 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_formatService), v34);
  v35 = OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_config;
  sub_218700938();
  v65 = v35;
  v64 = a1;
  sub_219BEDD14();
  v36 = sub_219BEC004();
  (*(*(v36 - 8) + 56))(v26, 1, 1, v36);
  sub_218A42400(0);
  v38 = v67;
  (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
  sub_219BEDD14();
  v39 = sub_219BF1914();
  v40 = *(v32 + 8);
  (v40)(v30, v92);
  sub_2194B1FF0(&unk_282A25C50, v39);
  v41 = v68;
  swift_arrayDestroy();
  v42 = v63;
  v43 = v66;
  sub_219BF1764();
  v44 = v69;

  sub_2190F56B8(v38, &unk_280E8FF30, v78);
  sub_2190F56B8(v42, &qword_280EE33F0, v71);
  v78 = (v32 + 8);
  v71 = v40;
  (v40)(v43, v92);
  v45 = v64;
  sub_219BEDCC4();
  v46 = v70;
  sub_219BEDCC4();
  v47 = sub_219BEE5D4();
  (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  (*(v76 + 16))(v75, v84, v77);
  v48 = v81;
  sub_2190F5650(v45 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_knobs, v81, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  sub_21872F4C4();
  v50 = v49;
  v51 = *(v49 - 8);
  v52 = v80;
  (*(v51 + 32))(v80, v48, v49);
  (*(v51 + 56))(v52, 0, 1, v50);
  v53 = sub_219BF35D4();
  (*(*(v53 - 8) + 56))(v85, 1, 1, v53);
  sub_2190F551C(0, &unk_27CC161D0, v83, v82, MEMORY[0x277D33F88]);
  swift_allocObject();
  sub_219BF38E4();
  v54 = sub_219BF2774();
  (*(*(v54 - 8) + 56))();
  v55 = qword_280E8D8C8;
  *MEMORY[0x277D30B58];
  if (v55 != -1)
  {
    swift_once();
  }

  qword_280F61788;
  v56 = v88;
  sub_219BF2A84();
  v57 = v91;
  v58 = sub_218F0AF50(v91, 0x73656C6369747261, 0xE800000000000000, v41, v44, MEMORY[0x277D84F90], v46, v56, v73, v72);
  (*(v89 + 8))(v56, v90);
  sub_2190F56B8(v46, &unk_280E91B60, MEMORY[0x277D32040]);
  v59 = v87;
  v60 = *(v86 + 8);
  v60(v44, v87);
  v60(v41, v59);
  (v71)(v57, v92);
  return v58;
}

uint64_t sub_2190F4314(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v5, v2);
  v9[3] = v6;
  v9[0] = v7;
  sub_2190F55D0(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2190F4488()
{
  type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  sub_219BEF054();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_2187E7248();
  sub_219BE2F64();

  v1 = sub_219BE2E54();
  sub_219BE2F64();

  v2 = sub_219BE2E54();
  v3 = sub_219BE2E34();

  return v3;
}

uint64_t sub_2190F45B0(uint64_t a1, unint64_t a2)
{
  sub_2190F54D4(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = (v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BDBD64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleListAudioHistoryFeedGroup();
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_219BDBD54();
    v15 = sub_219BDBD44();
    v24[1] = v5;
    v16 = v15;
    v18 = v17;
    (*(v9 + 8))(v11, v8);
    v19 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
    v20 = *(v12 + 20);
    v21 = sub_219BED8D4();
    (*(*(v21 - 8) + 16))(&v14[v20], a1 + v19, v21);
    *v14 = v16;
    *(v14 + 1) = v18;
    *&v14[*(v12 + 24)] = a2;
    sub_2190F5650(v14, v7, type metadata accessor for ArticleListAudioHistoryFeedGroup);
    swift_storeEnumTagMultiPayload();
    sub_2190F55D0(0, &qword_27CC161B8, sub_2190F54D4, MEMORY[0x277D6CF30]);
    swift_allocObject();

    v22 = sub_219BE3014();
    sub_2190F57F8(v14, type metadata accessor for ArticleListAudioHistoryFeedGroup);
    return v22;
  }

  *v7 = 0xD000000000000027;
  v7[1] = 0x8000000219D0B3E0;
  swift_storeEnumTagMultiPayload();
  sub_2190F55D0(0, &qword_27CC161B8, sub_2190F54D4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2190F4918(uint64_t a1)
{
  sub_2190F54D4(0);
  v10 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280E8D8C8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  v11 = 0;
  v12 = 0xE000000000000000;
  v13 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v7 = v11;
  v6 = v12;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  sub_219BE5314();

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000002FLL, 0x8000000219D0B3B0);
  v13 = a1;
  sub_219BF7484();
  v8 = v12;
  *v4 = v11;
  v4[1] = v8;
  swift_storeEnumTagMultiPayload();
  sub_2190F55D0(0, &qword_27CC161B8, sub_2190F54D4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2190F4B6C()
{
  sub_2190F55D0(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_2190F4BFC()
{
  v1 = OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_config;
  sub_218700938();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2190F57F8(v0 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_knobs, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleListAudioHistoryFeedGroupEmitter()
{
  result = qword_27CC16170;
  if (!qword_27CC16170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2190F4D20()
{
  sub_218700938();
  if (v0 <= 0x3F)
  {
    sub_21872F4C4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2190F4E28()
{
  sub_219BED8D4();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_21880702C();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_2190F4ED0()
{
  sub_2190F5464();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_2190F54D4(0);
  sub_219BE2F64();

  v1 = sub_219BE2E54();
  v2 = sub_219BE3054();

  return v2;
}

uint64_t sub_2190F4FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_config;
  sub_218700938();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2190F502C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs();
  a1[4] = sub_2190F5728(&qword_27CC133A0, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  a1[5] = sub_2190F5728(&qword_27CC161E0, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2190F5650(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
}

uint64_t sub_2190F5130@<X0>(uint64_t *a1@<X8>)
{
  sub_2190F55D0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218700938();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2190F57F8(inited + 32, sub_2188317B0);
  sub_2190F55D0(0, &qword_27CC161E8, type metadata accessor for ArticleListAudioHistoryFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_2190F5770();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2190F52B8()
{
  sub_2190F5728(&qword_27CC16190, type metadata accessor for ArticleListAudioHistoryFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_2190F5464()
{
  if (!qword_280EE2A40)
  {
    type metadata accessor for FormatGroupFeedGroupEmitterCursor();
    sub_2187E7248();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE2A40);
    }
  }
}

void sub_2190F551C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2190F55D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2190F5650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190F56B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2190F55D0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190F5728(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2190F5770()
{
  result = qword_27CC161F0;
  if (!qword_27CC161F0)
  {
    sub_2190F55D0(255, &qword_27CC161E8, type metadata accessor for ArticleListAudioHistoryFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC161F0);
  }

  return result;
}

uint64_t sub_2190F57F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190F5858()
{
  v1 = OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher____lazy_storage___isEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher____lazy_storage___isEnabled);
  if (v2 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE95C0 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    LOBYTE(v2) = v4;
    *(v0 + v1) = v4;
  }

  return v2 & 1;
}

void sub_2190F5904(void *a1)
{
  v2 = v1;
  v4 = sub_219BEE754();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2190F5858() & 1) == 0)
  {
    return;
  }

  swift_getObjectType();
  if ([a1 hasRecipes])
  {
    if (qword_280EE5F50 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  v82 = v7;
  v83 = v5;
  v17 = [a1 asSportsEvent];
  sub_2186C6148(0, &unk_280E8DDB0);
  v18 = *(v1 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_cloudContext);
  v86 = a1;
  if (v17)
  {
    swift_getObjectType();
    sub_2186C6148(0, &qword_280E8E6C0);
    v19 = v18;
    v20 = sub_2190CE55C(v19, v17, 8);

    v21 = v20;
  }

  else
  {
    sub_2186C6148(0, &qword_280E8E6C0);
    v23 = v18;
    swift_unknownObjectRetain();
    v21 = sub_2190CE55C(v23, a1, 0);
  }

  swift_unknownObjectRelease();
  v24 = *(v1 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_interest);
  v25 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v26 = [v21 identifier];
  if (!v26)
  {
    sub_219BF5414();
    v26 = sub_219BF53D4();
  }

  [v24 addObject_];

  v27 = [v21 identifier];
  v28 = sub_219BF5414();
  v30 = v29;

  sub_219BF5D04();
  v93[0] = v28;
  v93[1] = v30;
  sub_219BE2DC4();

  if (v92[0])
  {

    return;
  }

  v78 = *(v2 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_operationQueue);
  v31 = [v78 operations];
  sub_2186C6148(0, &unk_280E8E838);
  v32 = sub_219BF5924();

  *&v87 = v32;
  v81 = v2;
  v79 = v4;
  v80 = v21;
  if (v32 >> 62)
  {
    a1 = sub_219BF7214();
    if (a1)
    {
LABEL_18:
      v33 = 0;
      v84 = v87 & 0xFFFFFFFFFFFFFF8;
      v85 = v87 & 0xC000000000000001;
      while (1)
      {
        if (v85)
        {
          v34 = MEMORY[0x21CECE0F0](v33, v87);
        }

        else
        {
          if (v33 >= *(v84 + 16))
          {
            goto LABEL_37;
          }

          v34 = *(v87 + 8 * v33 + 32);
        }

        v35 = v34;
        v36 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          break;
        }

        v37 = [v34 name];
        if (v37)
        {
          v38 = v37;
          v39 = sub_219BF5414();
          v41 = v40;
        }

        else
        {
          v39 = 0;
          v41 = 0;
        }

        v42 = v25;
        v43 = [v86 v25[278]];
        v44 = sub_219BF5414();
        v46 = v45;

        if (v41)
        {
          if (v39 == v44 && v41 == v46)
          {

            goto LABEL_35;
          }

          v47 = sub_219BF78F4();

          if (v47)
          {

LABEL_35:

            return;
          }
        }

        else
        {
        }

        ++v33;
        v25 = v42;
        if (v36 == a1)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      swift_once();
LABEL_4:
      v8 = sub_219BE5434();
      __swift_project_value_buffer(v8, qword_280F62598);
      swift_unknownObjectRetain();
      *&v87 = sub_219BE5414();
      v9 = sub_219BF6214();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v87, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v93[0] = v11;
        *v10 = 136315138;
        v12 = [a1 identifier];
        v13 = sub_219BF5414();
        v15 = v14;

        v16 = sub_2186D1058(v13, v15, v93);

        *(v10 + 4) = v16;
        _os_log_impl(&dword_2186C1000, v87, v9, "Not adding prefetch interest in tag=%s, reason='has recipes'", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x21CECF960](v11, -1, -1);
        MEMORY[0x21CECF960](v10, -1, -1);
      }

      else
      {
        v22 = v87;
      }

      return;
    }
  }

  else
  {
    a1 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
      goto LABEL_18;
    }
  }

LABEL_40:

  v48 = v25;
  v49 = v81;
  v50 = *(v81 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_configFetcher);
  sub_218718690(v81 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_formatService, v93);
  v87 = *(v49 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_sportsDataService);
  sub_218718690(v49 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_assetHandleFactory, v92);
  v51 = type metadata accessor for TagFeedServiceConfigPrefetchOperation();
  v52 = objc_allocWithZone(v51);
  v53 = v80;
  *&v52[qword_280E98850] = v80;
  sub_218718690(v93, &v52[qword_280E98858]);
  *&v52[qword_280E98860] = v87;
  sub_218718690(v92, &v52[qword_280E98848]);
  v90 = 0x6863746566657270;
  v91 = 0xE90000000000002DLL;
  v54 = v53;
  swift_unknownObjectRetain();
  v55 = [v54 v48 + 1656];
  v56 = sub_219BF5414();
  v58 = v57;

  MEMORY[0x21CECC330](v56, v58);

  v59 = v90;
  v60 = v91;
  v61 = *MEMORY[0x277D30BC0];
  v62 = qword_280E8D7F8;
  v63 = v54;
  v64 = v61;
  if (v62 != -1)
  {
    swift_once();
  }

  v65 = qword_280F61708;
  v66 = v82;
  sub_219BEE724();
  type metadata accessor for TagFeedServiceContext();
  v67 = swift_allocObject();
  *(v67 + 16) = v59;
  *(v67 + 24) = v60;
  *(v67 + 32) = v63;
  *(v67 + 40) = v64;
  *(v67 + 48) = v65;
  *(v67 + 56) = 2;
  (*(v83 + 32))(v67 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v66, v79);
  v89 = v67;
  v90 = v50;
  sub_2190F6C94();
  swift_allocObject();
  v68 = v64;
  v69 = v65;

  *&v52[qword_280E98840] = sub_219BEF444();
  v88.receiver = v52;
  v88.super_class = v51;
  v70 = objc_msgSendSuper2(&v88, sel_init);

  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v93);
  v71 = v70;
  v72 = [v63 identifier];
  if (!v72)
  {
    sub_219BF5414();
    v72 = sub_219BF53D4();
  }

  [v71 setName_];

  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v63;
  v75 = v63;
  v76 = v71;
  sub_219BE1FF4();

  [v78 addOperation_];
}

uint64_t sub_2190F62DC(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8))
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09EC0;
    v5 = [a3 identifier];
    v6 = sub_219BF5414();
    v8 = v7;

    v9 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v10 = sub_2186FC3BC();
    *(v4 + 64) = v10;
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    *(v4 + 96) = v9;
    *(v4 + 104) = v10;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0xE000000000000000;
    sub_219BF6214();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;

      v13 = [a3 identifier];
      sub_219BF5414();

      sub_219BE2DE4();
    }

    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v15 = [a3 identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    sub_219BF6214();
  }

  sub_219BE5314();
}

void sub_2190F65A4(void *a1)
{
  if ((sub_2190F5858() & 1) == 0)
  {
    return;
  }

  swift_getObjectType();
  if ([a1 hasRecipes])
  {
    return;
  }

  v3 = [a1 asSportsEvent];
  sub_2186C6148(0, &unk_280E8DDB0);
  v4 = *(v1 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_cloudContext);
  if (v3)
  {
    swift_getObjectType();
    sub_2186C6148(0, &qword_280E8E6C0);
    v5 = v4;
    v36 = sub_2190CE55C(v5, v3, 8);
  }

  else
  {
    sub_2186C6148(0, &qword_280E8E6C0);
    v5 = v4;
    swift_unknownObjectRetain();
    v36 = sub_2190CE55C(v5, a1, 0);
  }

  swift_unknownObjectRelease();
  v6 = *(v1 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_interest);
  v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v8 = [v36 identifier];
  if (!v8)
  {
    sub_219BF5414();
    v8 = sub_219BF53D4();
  }

  [v6 removeObject_];

  v9 = [v36 identifier];
  if (!v9)
  {
    sub_219BF5414();
    v9 = sub_219BF53D4();
  }

  v10 = [v6 countForObject_];

  if (v10)
  {
    goto LABEL_12;
  }

  v11 = [*(v1 + OBJC_IVAR____TtC7NewsUI230TagFeedServiceConfigPrefetcher_operationQueue) operations];
  sub_2186C6148(0, &unk_280E8E838);
  v12 = sub_219BF5924();

  if (v12 >> 62)
  {
LABEL_39:
    v13 = sub_219BF7214();
    v14 = v36;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_40:

    return;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = v36;
  if (!v13)
  {
    goto LABEL_40;
  }

LABEL_17:
  v15 = 0;
  v35 = v13;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x21CECE0F0](v15, v12);
    }

    else
    {
      if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v19 = [v16 name];
    if (v19)
    {
      v20 = v19;
      v21 = sub_219BF5414();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = v7;
    v25 = [v36 v7[278]];
    v26 = sub_219BF5414();
    v28 = v27;

    if (!v23)
    {

      v7 = v24;
      goto LABEL_19;
    }

    v7 = v24;
    if (v21 == v26 && v23 == v28)
    {
      break;
    }

    v29 = sub_219BF78F4();

    if (v29)
    {
      goto LABEL_34;
    }

LABEL_19:

    ++v15;
    v14 = v36;
    if (v18 == v35)
    {
      goto LABEL_40;
    }
  }

LABEL_34:

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C09BA0;
  v31 = [v36 v7 + 1656];
  v32 = sub_219BF5414();
  v34 = v33;

  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = sub_2186FC3BC();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  sub_219BF6214();
  sub_219BE5314();

  [v17 cancel];

LABEL_12:
}

void sub_2190F6C94()
{
  if (!qword_280E91578)
  {
    type metadata accessor for TagFeedServiceConfigFetcher();
    sub_2190F6CF8();
    v0 = sub_219BEF494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91578);
    }
  }
}

unint64_t sub_2190F6CF8()
{
  result = qword_280EB6620;
  if (!qword_280EB6620)
  {
    type metadata accessor for TagFeedServiceConfigFetcher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6620);
  }

  return result;
}

uint64_t type metadata accessor for RecipeBoxFeedConfigFetchResult()
{
  result = qword_27CC16248;
  if (!qword_27CC16248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2190F6DCC()
{
  type metadata accessor for RecipeBoxFeedContentConfig();
  if (v0 <= 0x3F)
  {
    sub_2186EE86C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2190F6E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    sub_218B66E9C(a1, a1 + 32, 1, (2 * v1) | 1);
  }
}

uint64_t sub_2190F6EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2190F75A0();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218700FF8();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F764C(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for AudioPlaylistFeedServiceConfig();
    sub_2190F7770(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
    sub_219BEE974();
    sub_2190F76B0(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2190F76B0(v6);
    }
  }

  else
  {
    sub_2190F76B0(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_2190F710C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2190F75A0();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F770C(0, &qword_27CC16258, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190F75F8();
  sub_219BF7B34();
  if (!v2)
  {
    sub_218700FF8();
    sub_2190F7770(&qword_27CC16268, sub_218700FF8);
    sub_219BF7674();
    sub_2190F6EC8(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2190F72FC(uint64_t a1)
{
  v2 = sub_2190F75F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190F7338(uint64_t a1)
{
  v2 = sub_2190F75F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2190F738C(void *a1)
{
  sub_2190F770C(0, &qword_27CC16270, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190F75F8();
  sub_219BF7B44();
  sub_218700FF8();
  sub_2190F7770(&qword_27CC16278, sub_218700FF8);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2190F7514()
{
  type metadata accessor for AudioPlaylistFeedServiceConfig();
  sub_2190F7770(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);

  return sub_219BEE9F4();
}

void sub_2190F75A0()
{
  if (!qword_280E91A90)
  {
    sub_218700FF8();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91A90);
    }
  }
}

unint64_t sub_2190F75F8()
{
  result = qword_27CC16260;
  if (!qword_27CC16260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16260);
  }

  return result;
}

uint64_t sub_2190F764C(uint64_t a1, uint64_t a2)
{
  sub_2190F75A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190F76B0(uint64_t a1)
{
  sub_2190F75A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2190F770C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190F75F8();
    v7 = a3(a1, &type metadata for ArticleListAudioPlaylistFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2190F7770(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2190F77CC()
{
  result = qword_27CC16280;
  if (!qword_27CC16280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16280);
  }

  return result;
}

unint64_t sub_2190F7824()
{
  result = qword_27CC16288;
  if (!qword_27CC16288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16288);
  }

  return result;
}

unint64_t sub_2190F787C()
{
  result = qword_27CC16290;
  if (!qword_27CC16290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16290);
  }

  return result;
}

uint64_t type metadata accessor for AudioHistoryFeedConfigFetchResult()
{
  result = qword_280EA3D40;
  if (!qword_280EA3D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2190F7944()
{
  type metadata accessor for AudioHistoryFeedContentConfig();
  if (v0 <= 0x3F)
  {
    sub_2186EE86C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for MySportsTodayFeedGroupKnobs()
{
  result = qword_280EB7E18;
  if (!qword_280EB7E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2190F7A3C()
{
  sub_2189AE994(319);
  if (v0 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v1 <= 0x3F)
    {
      sub_2186F9548();
      if (v2 <= 0x3F)
      {
        sub_2186ECA28();
        if (v3 <= 0x3F)
        {
          sub_2186F95C4();
          if (v4 <= 0x3F)
          {
            sub_218D525A0();
            if (v5 <= 0x3F)
            {
              sub_218D52720();
              if (v6 <= 0x3F)
              {
                sub_2190F7BC8();
                if (v7 <= 0x3F)
                {
                  sub_219BEF244();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2190F7BC8()
{
  if (!qword_280E91478)
  {
    sub_219BEEA24();
    v0 = MEMORY[0x277D321D8];
    sub_2186DFCF8(&qword_280E91998, MEMORY[0x277D321D8]);
    sub_2186DFCF8(&qword_280E919A8, v0);
    sub_2186DFCF8(&qword_280E919A0, v0);
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91478);
    }
  }
}

uint64_t sub_2190F7CCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v198 = sub_219BEF244();
  v192 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v191 = v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEEA24();
  v187 = *(v4 - 8);
  v188 = v4;
  MEMORY[0x28223BE20](v4);
  v189 = v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE9B4(0);
  v197 = v6;
  v186 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v185 = v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v9 = *(v8 - 8);
  v195 = v8;
  v196 = v9;
  MEMORY[0x28223BE20](v8);
  v184 = v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for MySportsTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v202);
  v203 = v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D55324(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v190 = v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v200 = v140 - v15;
  sub_2189AF700(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v201 = v140 - v20;
  sub_2189AF720(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v194 = v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v204 = v140 - v24;
  sub_2190FAEE4(0, &qword_280E8CCA0, MEMORY[0x277D844C8]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = v140 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190FAA5C();
  v30 = v199;
  sub_219BF7B34();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v146 = a1;
  v147 = v19;
  v144 = 0;
  v145 = v27;
  LOBYTE(v214) = 0;
  sub_2186DFCF8(&qword_280E91A28, sub_2189AE994);
  sub_219BF7674();
  LOBYTE(v214) = 1;
  sub_2186DFCF8(&qword_280E91868, sub_2189AE9B4);
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v214) = 2;
  sub_2186DFCF8(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v174 = v241;
  LOBYTE(v214) = 3;
  sub_219BF7674();
  v173 = v240;
  LOBYTE(v214) = 4;
  sub_219BF7674();
  v172 = v239;
  LOBYTE(v214) = 5;
  sub_219BF7674();
  v171 = v238;
  LOBYTE(v214) = 6;
  sub_219BF7674();
  v170 = v237;
  sub_2186ECA28();
  v33 = v32;
  LOBYTE(v214) = 7;
  v177 = sub_2186DFCF8(&qword_280E913D8, sub_2186ECA28);
  sub_219BF7674();
  v169 = v236;
  sub_2186F95C4();
  v35 = v34;
  LOBYTE(v214) = 8;
  v149 = sub_2186DFCF8(&qword_280E913F8, sub_2186F95C4);
  sub_219BF7674();
  v168 = v235;
  LOBYTE(v214) = 9;
  sub_219BF7674();
  v167 = v234;
  sub_218D525A0();
  v37 = v36;
  LOBYTE(v214) = 10;
  sub_2186DFCF8(&qword_280E914F8, sub_218D525A0);
  v140[0] = v37;
  sub_219BF7674();
  v166 = v233;
  sub_218D52720();
  v39 = v38;
  LOBYTE(v214) = 11;
  sub_2186DFCF8(&qword_280E914D8, sub_218D52720);
  v140[1] = v39;
  sub_219BF7674();
  v165 = v232;
  sub_2190F7BC8();
  v41 = v40;
  LOBYTE(v214) = 12;
  sub_2186DFCF8(&qword_280E91480, sub_2190F7BC8);
  v140[2] = v41;
  sub_219BF7674();
  v164 = v231;
  LOBYTE(v214) = 13;
  v178 = v33;
  sub_219BF7674();
  v163 = v230;
  LOBYTE(v214) = 14;
  sub_219BF7674();
  v162 = v229;
  LOBYTE(v214) = 15;
  sub_219BF7674();
  v161 = v228;
  LOBYTE(v214) = 16;
  sub_219BF7674();
  v160 = v227;
  LOBYTE(v214) = 17;
  sub_219BF7674();
  v159 = v226;
  LOBYTE(v214) = 18;
  sub_219BF7674();
  v158 = v225;
  LOBYTE(v214) = 19;
  sub_219BF7674();
  v157 = v224;
  LOBYTE(v214) = 20;
  sub_219BF7674();
  v143 = v223;
  LOBYTE(v214) = 21;
  sub_219BF7674();
  v156 = v222;
  LOBYTE(v214) = 22;
  sub_219BF7674();
  v155 = v221;
  LOBYTE(v214) = 23;
  sub_219BF7674();
  v154 = v220;
  LOBYTE(v214) = 24;
  sub_219BF7674();
  v153 = v219;
  LOBYTE(v214) = 25;
  sub_219BF7674();
  v152 = v218;
  LOBYTE(v210) = 26;
  sub_218D553FC();
  sub_219BF7674();
  v176 = v214;
  v182 = v215;
  v183 = v216;
  v199 = v217;
  LOBYTE(v209) = 27;
  sub_219BF7674();
  v151 = v210;
  v179 = v211;
  v180 = v212;
  v181 = v213;
  LOBYTE(v209) = 28;
  sub_2186DFCF8(&qword_280E916D8, MEMORY[0x277D324F0]);
  sub_219BF7674();
  LOBYTE(v208) = 29;
  sub_219BF7674();
  v150 = v209;
  LOBYTE(v207) = 30;
  sub_219BF7674();
  v175 = v208;
  LOBYTE(v206) = 31;
  sub_219BF7674();
  v148 = v207;
  LOBYTE(v205) = 32;
  v177 = v35;
  sub_219BF7674();
  v149 = v206;
  v42 = v194;
  sub_218D55894(v204, v194, sub_2189AF720);
  v43 = v195;
  v44 = *(v196 + 48);
  v45 = v44(v42, 1, v195);
  v141 = v29;
  v142 = v26;
  if (v45 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFCF8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v46 = v184;
    sub_219BEE974();
    v47 = v44(v42, 1, v43);
    v48 = v46;
    v49 = v203;
    v51 = v185;
    v50 = v186;
    v52 = v147;
    v53 = v196;
    if (v47 != 1)
    {
      sub_218D55450(v194, sub_2189AF720);
    }
  }

  else
  {
    v53 = v196;
    v48 = v184;
    (*(v196 + 32))(v184, v42, v43);
    v49 = v203;
    v51 = v185;
    v50 = v186;
    v52 = v147;
  }

  (*(v53 + 32))(v49, v48, v43);
  sub_218D55894(v201, v52, sub_2189AF700);
  v54 = *(v50 + 48);
  v55 = v197;
  if (v54(v52, 1, v197) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFCF8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v56 = v147;
    sub_219BEEC74();
    if (v54(v56, 1, v55) != 1)
    {
      sub_218D55450(v56, sub_2189AF700);
    }
  }

  else
  {
    (*(v50 + 32))(v51, v52, v55);
  }

  v57 = v202;
  (*(v50 + 32))(&v49[v202[5]], v51, v55);
  if (v174)
  {
    v58 = v174;
  }

  else
  {
    v205 = 0;
    swift_allocObject();
    v58 = sub_219BEF534();
  }

  *&v49[v57[6]] = v58;
  v59 = v173;
  if (v173)
  {

    v60 = v59;
  }

  else
  {
    v205 = 5;
    swift_allocObject();

    v60 = sub_219BEF534();
  }

  *&v49[v57[7]] = v60;
  v61 = v172;
  v62 = v189;
  if (v172)
  {

    v63 = v61;
  }

  else
  {
    v205 = 0;
    swift_allocObject();

    v63 = sub_219BEF534();
  }

  *&v49[v57[8]] = v63;
  v64 = v171;
  if (v171)
  {

    v65 = v64;
  }

  else
  {
    v205 = 1;
    swift_allocObject();

    v65 = sub_219BEF534();
  }

  *&v49[v57[9]] = v65;
  v66 = v170;
  if (v170)
  {

    v67 = v66;
  }

  else
  {
    v205 = 1;
    swift_allocObject();

    v67 = sub_219BEF534();
  }

  *&v49[v57[10]] = v67;
  v68 = v169;
  if (v169)
  {

    v69 = v68;
  }

  else
  {
    v205 = 0x40F5180000000000;
    swift_allocObject();

    v69 = sub_219BEF534();
  }

  *&v49[v57[11]] = v69;
  v70 = v168;
  if (v168)
  {

    v71 = v70;
  }

  else
  {
    LOBYTE(v205) = 1;
    swift_allocObject();

    v71 = sub_219BEF534();
  }

  *&v49[v57[12]] = v71;
  v72 = v167;
  if (v167)
  {

    v73 = v72;
  }

  else
  {
    v205 = 30;
    swift_allocObject();

    v73 = sub_219BEF534();
  }

  *&v49[v57[13]] = v73;
  v74 = v190;
  v75 = v166;
  if (v166)
  {

    v76 = v75;
  }

  else
  {
    LOBYTE(v205) = 1;
    swift_allocObject();

    v76 = sub_219BEF534();
  }

  *&v49[v57[14]] = v76;
  v77 = v165;
  if (v165)
  {

    v78 = v77;
  }

  else
  {
    LOBYTE(v205) = 1;
    swift_allocObject();

    v78 = sub_219BEF534();
  }

  *&v49[v57[15]] = v78;
  v79 = v164;
  if (v164)
  {

    v80 = v79;
  }

  else
  {
    (*(v187 + 104))(v62, *MEMORY[0x277D321C8], v188);
    swift_allocObject();

    v80 = sub_219BEF534();
  }

  *&v49[v57[16]] = v80;
  v81 = v163;
  if (v163)
  {

    v82 = v81;
  }

  else
  {
    v205 = 0x40F5180000000000;
    swift_allocObject();

    v82 = sub_219BEF534();
  }

  *&v49[v57[17]] = v82;
  v83 = v162;
  if (v162)
  {

    v84 = v83;
  }

  else
  {
    v205 = 1;
    swift_allocObject();

    v84 = sub_219BEF534();
  }

  *&v49[v57[18]] = v84;
  v85 = v161;
  if (v161)
  {

    v86 = v85;
  }

  else
  {
    v205 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();

    v86 = sub_219BEF534();
  }

  *&v49[v57[19]] = v86;
  v87 = v160;
  if (v160)
  {

    v88 = v87;
  }

  else
  {
    v205 = 1;
    swift_allocObject();

    v88 = sub_219BEF534();
  }

  *&v49[v57[20]] = v88;
  v89 = v159;
  if (v159)
  {

    v90 = v89;
  }

  else
  {
    v205 = 3;
    swift_allocObject();

    v90 = sub_219BEF534();
  }

  *&v49[v57[21]] = v90;
  v92 = v157;
  v91 = v158;
  if (v157)
  {

    v93 = v92;
  }

  else
  {
    v205 = 1;
    swift_allocObject();

    v93 = sub_219BEF534();
  }

  *&v49[v57[23]] = v93;
  v94 = v143;
  if (v143)
  {

    v95 = v94;
  }

  else
  {
    v205 = 3;
    swift_allocObject();

    v95 = sub_219BEF534();
  }

  *&v49[v57[24]] = v95;
  v96 = v156;
  if (v91)
  {

    v97 = v91;
  }

  else
  {
    v205 = 3;
    swift_allocObject();

    v97 = sub_219BEF534();
  }

  *&v49[v57[22]] = v97;
  if (v96)
  {

    v98 = v96;
  }

  else
  {
    v205 = 1;
    swift_allocObject();

    v98 = sub_219BEF534();
  }

  *&v49[v57[25]] = v98;
  v99 = v155;
  if (v155)
  {

    v100 = v99;
  }

  else
  {
    v205 = 6;
    swift_allocObject();

    v100 = sub_219BEF534();
  }

  *&v49[v57[26]] = v100;
  v101 = v154;
  if (v154)
  {

    v102 = v101;
  }

  else
  {
    LOBYTE(v205) = 1;
    swift_allocObject();

    v102 = sub_219BEF534();
  }

  *&v49[v57[27]] = v102;
  v103 = v153;
  if (v153)
  {

    v104 = v103;
  }

  else
  {
    v205 = 1;
    swift_allocObject();

    v104 = sub_219BEF534();
  }

  *&v49[v57[28]] = v104;
  v105 = v152;
  if (v152)
  {

    v106 = v105;
  }

  else
  {
    v205 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();

    v106 = sub_219BEF534();
  }

  *&v49[v57[29]] = v106;
  v107 = v176;
  if (v176)
  {

    v108 = v107;
    v110 = v182;
    v109 = v183;
    v111 = v199;
  }

  else
  {
    sub_218D554B0();
    swift_allocObject();

    v108 = sub_219BEF274();
    sub_218D55534();
    swift_allocObject();
    v110 = sub_219BEF274();
    v205 = 0;
    sub_218D556B4();
    swift_allocObject();
    v109 = sub_219BEF534();
    LOBYTE(v205) = 1;
    swift_allocObject();
    v107 = v176;
    v111 = sub_219BEF534();
  }

  v112 = &v203[v202[30]];
  *v112 = v108;
  v112[1] = v110;
  v112[2] = v109;
  v112[3] = v111;
  v113 = v151;
  if (v151)
  {
    sub_218D55834(v107);
    v114 = v113;
    v116 = v179;
    v115 = v180;
    v117 = v181;
  }

  else
  {
    sub_218D554B0();
    swift_allocObject();
    sub_218D55834(v107);
    v114 = sub_219BEF274();
    sub_218D55534();
    swift_allocObject();
    v116 = sub_219BEF274();
    v205 = 0;
    sub_218D556B4();
    swift_allocObject();
    v115 = sub_219BEF534();
    LOBYTE(v205) = 1;
    swift_allocObject();
    v107 = v176;
    v117 = sub_219BEF534();
  }

  v118 = &v203[v202[31]];
  *v118 = v114;
  v118[1] = v116;
  v118[2] = v115;
  v118[3] = v117;
  sub_218D55894(v200, v74, sub_218D55324);
  v119 = v192;
  v120 = *(v192 + 48);
  v121 = v198;
  if (v120(v74, 1, v198) == 1)
  {
    sub_218D55834(v113);
    v122 = v191;
    sub_219BEF1C4();
    v123 = v120(v74, 1, v121);
    v124 = v122;
    v107 = v176;
    v125 = v121;
    v126 = v201;
    v127 = v204;
    if (v123 != 1)
    {
      v128 = v74;
      v129 = v125;
      sub_218D55450(v128, sub_218D55324);
      v125 = v129;
    }
  }

  else
  {
    v124 = v191;
    (*(v119 + 32))(v191, v74, v121);
    sub_218D55834(v113);
    v125 = v121;
    v126 = v201;
    v127 = v204;
  }

  v130 = v202;
  v131 = *(v119 + 32);
  v132 = v203;
  v131(&v203[v202[32]], v124, v125);
  if (v150)
  {
    v133 = v150;
  }

  else
  {
    LOBYTE(v205) = 1;
    swift_allocObject();
    v133 = sub_219BEF534();
    v127 = v204;
  }

  v134 = v149;
  *(v132 + v130[33]) = v133;
  v135 = v175;
  if (v175)
  {

    v136 = v135;
  }

  else
  {
    v205 = 0;
    swift_allocObject();

    v136 = sub_219BEF534();
    v127 = v204;
  }

  *(v132 + v130[34]) = v136;
  if (v148)
  {

    v137 = v148;
  }

  else
  {
    v205 = 0;
    swift_allocObject();

    v137 = sub_219BEF534();
    v127 = v204;
  }

  v138 = v145;
  *(v132 + v130[35]) = v137;
  if (v134)
  {

    sub_218D558FC(v151);
    sub_218D558FC(v107);

    sub_218D55450(v200, sub_218D55324);
    sub_218D55450(v126, sub_2189AF700);
    sub_218D55450(v127, sub_2189AF720);
  }

  else
  {
    LOBYTE(v205) = 1;
    swift_allocObject();
    v139 = sub_219BEF534();

    sub_218D558FC(v151);
    sub_218D558FC(v107);

    sub_218D55450(v200, sub_218D55324);
    sub_218D55450(v126, sub_2189AF700);
    sub_218D55450(v204, sub_2189AF720);
    v134 = v139;
  }

  (*(v138 + 8))(v141, v142);
  *(v132 + v130[36]) = v134;
  sub_2190FAF48(v132, v193);
  return __swift_destroy_boxed_opaque_existential_1(v146);
}

unint64_t sub_2190F9B20(char a1)
{
  result = 0x73656C7572;
  switch(a1)
  {
    case 1:
      result = 0x6C6F6F706572;
      break;
    case 2:
    case 3:
    case 12:
      result = 0xD000000000000013;
      break;
    case 4:
    case 5:
    case 18:
    case 23:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0x6E69576863746566;
      break;
    case 8:
      result = 0x456F54706D616C63;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6564724F74726F73;
      break;
    case 11:
      result = 0x617274536F726568;
      break;
    case 13:
      result = 0xD000000000000021;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
    case 17:
    case 21:
    case 22:
      result = 0xD00000000000001ALL;
      break;
    case 19:
    case 20:
    case 30:
      result = 0xD000000000000016;
      break;
    case 24:
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 0x726F5365726F6373;
      break;
    case 27:
      result = 0xD000000000000015;
      break;
    case 28:
      result = 0x676E6970756F7267;
      break;
    case 29:
      result = 0x6F43657269707865;
      break;
    case 31:
      result = 0xD000000000000027;
      break;
    case 32:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2190F9E50(void *a1)
{
  v3 = v1;
  sub_2190FAEE4(0, &qword_280E8C488, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190FAA5C();
  sub_219BF7B44();
  LOBYTE(v21) = 0;
  sub_2189AE994(0);
  sub_2186DFCF8(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for MySportsTodayFeedGroupKnobs();
    LOBYTE(v21) = 1;
    sub_2189AE9B4(0);
    sub_2186DFCF8(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
    *&v21 = *(v3 + v10[6]);
    v23 = 2;
    sub_2186F9548();
    sub_2186DFCF8(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    *&v21 = *(v3 + v10[7]);
    v23 = 3;
    sub_219BF7834();
    *&v21 = *(v3 + v10[8]);
    v23 = 4;
    sub_219BF7834();
    *&v21 = *(v3 + v10[9]);
    v23 = 5;
    sub_219BF7834();
    *&v21 = *(v3 + v10[10]);
    v23 = 6;
    sub_219BF7834();
    *&v21 = *(v3 + v10[11]);
    v23 = 7;
    sub_2186ECA28();
    v12 = v11;
    v20[2] = sub_2186DFCF8(&qword_280E913E0, sub_2186ECA28);
    v20[3] = v12;
    sub_219BF7834();
    *&v21 = *(v3 + v10[12]);
    v23 = 8;
    sub_2186F95C4();
    v14 = v13;
    v20[0] = sub_2186DFCF8(&qword_280E91400, sub_2186F95C4);
    v20[1] = v14;
    sub_219BF7834();
    *&v21 = *(v3 + v10[13]);
    v23 = 9;
    sub_219BF7834();
    *&v21 = *(v3 + v10[14]);
    v23 = 10;
    sub_218D525A0();
    sub_2186DFCF8(&qword_280E91500, sub_218D525A0);
    sub_219BF7834();
    *&v21 = *(v3 + v10[15]);
    v23 = 11;
    sub_218D52720();
    sub_2186DFCF8(&qword_280E914E0, sub_218D52720);
    sub_219BF7834();
    *&v21 = *(v3 + v10[16]);
    v23 = 12;
    sub_2190F7BC8();
    sub_2186DFCF8(&qword_280E91488, sub_2190F7BC8);
    sub_219BF7834();
    *&v21 = *(v3 + v10[17]);
    v23 = 13;
    sub_219BF7834();
    *&v21 = *(v3 + v10[18]);
    v23 = 14;
    sub_219BF7834();
    *&v21 = *(v3 + v10[19]);
    v23 = 15;
    sub_219BF7834();
    *&v21 = *(v3 + v10[20]);
    v23 = 16;
    sub_219BF7834();
    *&v21 = *(v3 + v10[21]);
    v23 = 17;
    sub_219BF7834();
    *&v21 = *(v3 + v10[22]);
    v23 = 18;
    sub_219BF7834();
    *&v21 = *(v3 + v10[23]);
    v23 = 19;
    sub_219BF7834();
    *&v21 = *(v3 + v10[24]);
    v23 = 20;
    sub_219BF7834();
    *&v21 = *(v3 + v10[25]);
    v23 = 21;
    sub_219BF7834();
    *&v21 = *(v3 + v10[26]);
    v23 = 22;
    sub_219BF7834();
    *&v21 = *(v3 + v10[27]);
    v23 = 23;
    sub_219BF7834();
    *&v21 = *(v3 + v10[28]);
    v23 = 24;
    sub_219BF7834();
    *&v21 = *(v3 + v10[29]);
    v23 = 25;
    sub_219BF7834();
    v15 = (v3 + v10[30]);
    v16 = v15[1];
    v21 = *v15;
    v22 = v16;
    v23 = 26;
    sub_218D552D0();
    sub_219BF7834();
    v17 = (v3 + v10[31]);
    v18 = v17[1];
    v21 = *v17;
    v22 = v18;
    v23 = 27;
    sub_219BF7834();
    LOBYTE(v21) = 28;
    sub_219BEF244();
    sub_2186DFCF8(&unk_280E916E0, MEMORY[0x277D324F0]);
    sub_219BF7834();
    *&v21 = *(v3 + v10[33]);
    v23 = 29;
    sub_219BF7834();
    *&v21 = *(v3 + v10[34]);
    v23 = 30;
    sub_219BF7834();
    *&v21 = *(v3 + v10[35]);
    v23 = 31;
    sub_219BF7834();
    *&v21 = *(v3 + v10[36]);
    v23 = 32;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2190FA97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2190FB6C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2190FA9B0(uint64_t a1)
{
  v2 = sub_2190FAA5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190FA9EC(uint64_t a1)
{
  v2 = sub_2190FAA5C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2190FAA5C()
{
  result = qword_280EB7E50[0];
  if (!qword_280EB7E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB7E50);
  }

  return result;
}

void sub_2190FAAB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BEE3D4();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF0C04();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD87C(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v24 - v13;
  v15 = *(a2 + 8);
  v16 = [v15 startDate];
  if (v16)
  {
    v17 = v16;
    sub_219BDBCA4();

    (*(v4 + 56))(v14, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v14, 1, 1, v3);
  }

  type metadata accessor for MySportsTodayFeedGroupKnobs();
  sub_219BEF524();
  v18 = v30;
  v19 = 0;
  if ((*(v4 + 48))(v14, 1, v3) != 1)
  {
    v19 = sub_219BDBC04();
    (*(v4 + 8))(v14, v3);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v19 timeInterval:v18];

  if (!v20)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_219BEF524();
  if (v29 != 1)
  {
    return;
  }

  sub_219BF0BB4();
  v21 = [v15 startDate];
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = v21;
  sub_219BDBCA4();

  sub_219BEE3C4();
  (*(v26 + 8))(v8, v28);
  (*(v4 + 8))(v6, v3);
  v23 = sub_219BF0BF4();
  (*(v25 + 8))(v10, v27);
  if (![v20 intersectionWithDateRange_])
  {
LABEL_14:
    __break(1u);
    return;
  }
}

void sub_2190FAEE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190FAA5C();
    v7 = a3(a1, &type metadata for MySportsTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2190FAF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MySportsTodayFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190FAFAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DFCF8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if (sub_219BEE9F4() & 1) != 0 && (v4 = type metadata accessor for MySportsTodayFeedGroupKnobs(), (sub_219BEEC64()) && (sub_2186F9548(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_2186ECA28(), (sub_219BEF504()) && (sub_2186F95C4(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_218D525A0(), (sub_219BEF504()) && (sub_218D52720(), (sub_219BEF504()) && (sub_2190F7BC8(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_218D554B0(), (sub_219BEF254()) && (sub_218D55534(), (sub_219BEF254()) && (sub_218D556B4(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_219BEF254() & 1) != 0 && (sub_219BEF254() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (MEMORY[0x21CEC5FB0](a1 + *(v4 + 128), a2 + *(v4 + 128)) & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
  {
    return sub_219BEF504() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for MySportsTodayFeedGroupKnobs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MySportsTodayFeedGroupKnobs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2190FB5C4()
{
  result = qword_27CC16298;
  if (!qword_27CC16298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16298);
  }

  return result;
}

unint64_t sub_2190FB61C()
{
  result = qword_280EB7E40;
  if (!qword_280EB7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7E40);
  }

  return result;
}

unint64_t sub_2190FB674()
{
  result = qword_280EB7E48;
  if (!qword_280EB7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7E48);
  }

  return result;
}

uint64_t sub_2190FB6C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF0910 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF0930 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF4F00 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF4F20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CF4F40 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x456F54706D616C63 && a2 == 0xEE006E6F69746964 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CE9C20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617274536F726568 && a2 == 0xEC00000079676574 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219D0B540 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000219D0B560 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D0B590 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D0B5B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CF4F60 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CF4F80 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219D0B5D0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF5060 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF5080 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219D0B5F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CF9890 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CF5020 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CF5040 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x726F5365726F6373 && a2 == 0xEC000000676E6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CF50A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xED000073656C7552 || (sub_219BF78F4() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000219D0B610 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CF50C0 == a2)
  {

    return 32;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 32;
    }

    else
    {
      return 33;
    }
  }
}

uint64_t sub_2190FC0D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_2187C5110();
  sub_219BEA7B4();
  if (v8[3])
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_218806FD0(v8);
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_219BDD274();
  sub_219BE1E24();
LABEL_6:
  v8[0] = v4;
  v8[1] = v5;
  v6 = sub_2190FDC1C(a2, v8);

  return v6;
}

uint64_t sub_2190FC1CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BE92E4();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v33 - v8);
  v10 = sub_219BE9EC4();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE15B4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDD0A4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v42 = v20;
  v43 = a1;
  sub_219BEA7B4();
  if (v47)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v13 + 104))(v15, *MEMORY[0x277D2F570], v12);
      sub_219BDD094();
      (*(v13 + 8))(v15, v12);
      sub_219BDD204();

      (*(v17 + 8))(v19, v16);
    }
  }

  else
  {
    sub_218806FD0(v46);
  }

  v34 = v2;
  v36 = *(v2 + 56);
  *v9 = 0x6E69776F6C6C6F46;
  v9[1] = 0xE900000000000067;
  v35 = *MEMORY[0x277D6E4A8];
  v21 = v35;
  v22 = sub_219BE9294();
  v23 = *(*(v22 - 8) + 104);
  v23(v9, v21, v22);
  v24 = *MEMORY[0x277D6E4A0];
  v25 = v39;
  v26 = *(v38 + 104);
  v26(v9, v24, v39);
  *v6 = 0x6E69776F6C6C6F46;
  v6[1] = 0xE900000000000067;
  v23(v6, v35, v22);
  v26(v6, v24, v25);
  v27 = v37;
  sub_219BE9EB4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = sub_218FE7680(0x6E69776F6C6C6F46, 0xE900000000000067, v27);

    (*(v40 + 8))(v27, v41);
    if (v30)
    {
      return v30;
    }
  }

  else
  {
    (*(v40 + 8))(v27, v41);
  }

  __swift_project_boxed_opaque_existential_1((v34 + 16), *(v34 + 40));
  sub_2186CFDE4(0, &unk_280ED13C0);
  sub_219BEA794();
  sub_219BE1E14();

  if (v45)
  {
    sub_2186CB1F0(&v44, v46);
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v30 = sub_219688E98();
    v32 = sub_219BEA784();
    v32(v30);

    __swift_destroy_boxed_opaque_existential_1(v46);
    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_2190FC74C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDD0A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  sub_2187C5110();
  sub_219BEA7B4();
  if (v23)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v5 + 104))(v7, *MEMORY[0x277D2F4D0], v4);
      sub_219BDD094();
      (*(v5 + 8))(v7, v4);
      sub_219BDD204();

      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    sub_218806FD0(v22);
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2186CFDE4(0, &qword_280EB8C18);
  sub_219BEA794();
  sub_219BE1E14();

  if (v21)
  {
    sub_2186CB1F0(&v20, v22);
    v13 = __swift_project_boxed_opaque_existential_1(v22, v23);
    __swift_project_boxed_opaque_existential_1((*v13 + OBJC_IVAR____TtC7NewsUI223FollowingDislikedModule_resolver), *(*v13 + OBJC_IVAR____TtC7NewsUI223FollowingDislikedModule_resolver + 24));
    type metadata accessor for FollowingDislikedViewController();
    swift_allocObject();
    swift_unknownObjectUnownedInit();

    v14 = sub_219BE1E04();

    if (v14)
    {
      v15 = *&v14[OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController_prewarm];
      *&v14[OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController_prewarm] = v19;

      sub_2190FDFDC(v15);
      v16 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      [v16 setModalPresentationStyle_];
      v17 = sub_219BEA784();
      v17(v16);

      __swift_destroy_boxed_opaque_existential_1(v22);
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

uint64_t sub_2190FCB44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v5 = type metadata accessor for FollowingNotificationsPrewarm();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE15B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDD0A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v28 = v16;
  v29 = a1;
  sub_219BEA7B4();
  if (v33)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v9 + 104))(v11, *MEMORY[0x277D2F508], v8);
      sub_219BDD094();
      (*(v9 + 8))(v11, v8);
      sub_219BDD204();

      (*(v13 + 8))(v15, v12);
    }
  }

  else
  {
    sub_218806FD0(v32);
  }

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2186CFDE4(0, &qword_280EA6958);
  sub_219BEA794();
  sub_219BE1E14();

  if (v31)
  {
    sub_2186CB1F0(&v30, v32);
    v18 = __swift_project_boxed_opaque_existential_1(v32, v33);
    __swift_project_boxed_opaque_existential_1((*v18 + OBJC_IVAR___TSFollowingNotificationsModule_resolver), *(*v18 + OBJC_IVAR___TSFollowingNotificationsModule_resolver + 24));
    type metadata accessor for FollowingNotificationsViewController();
    v19 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_218944130(v27, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    sub_218A8EC44(v7, v22 + v20);
    *(v22 + v21) = v19;

    v23 = sub_219BE1E04();

    if (v23)
    {
      v24 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      [v24 setModalPresentationStyle_];
      v25 = sub_219BEA784();
      v25(v24);

      __swift_destroy_boxed_opaque_existential_1(v32);
      return v24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190FCFC4()
{
  v1 = sub_219BE15B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDD0A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  sub_219BEA7B4();
  if (v20)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v2 + 104))(v4, *MEMORY[0x277D2F550], v1);
      sub_219BDD094();
      (*(v2 + 8))(v4, v1);
      sub_219BDD204();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    sub_218806FD0(v19);
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2186CFDE4(0, &unk_280ECAB28);
  result = sub_219BE1E34();
  if (v18)
  {
    sub_2186CB1F0(&v17, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v12 = (*(v11 + 8))(v10, v11);
    if (sub_219BED0C4())
    {
      v13 = sub_219BEA784();
      v13(v12);
    }

    else
    {
      sub_219BE9D54();
      [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      v14 = sub_219BE9CE4();
      v15 = sub_219BEA784();
      v16 = v14;
      v15();

      v12 = v16;
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190FD33C()
{
  v1 = sub_219BE15B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDD0A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  sub_219BEA7B4();
  if (v20)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v2 + 104))(v4, *MEMORY[0x277D2F530], v1);
      sub_219BDD094();
      (*(v2 + 8))(v4, v1);
      sub_219BDD204();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    sub_218806FD0(v19);
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2186CFDE4(0, &qword_280ED0650);
  result = sub_219BE1E34();
  if (v18)
  {
    sub_2186CB1F0(&v17, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v12 = (*(v11 + 8))(v10, v11);
    if (sub_219BED0C4())
    {
      v13 = sub_219BEA784();
      v13(v12);
    }

    else
    {
      sub_219BE9D54();
      [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      v14 = sub_219BE9CE4();
      v15 = sub_219BEA784();
      v16 = v14;
      v15();

      v12 = v16;
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190FD6AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_218FE7680(0x6F42657069636552, 0xE900000000000078, a2);

      if (v8)
      {
        return v8;
      }
    }
  }

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2186CFDE4(0, qword_280ED08E8);
  result = sub_219BE1E34();
  if (v17)
  {
    sub_2186CB1F0(&v16, v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v8 = (*(v11 + 8))(a3 & 1, v10, v11);
    if (sub_219BED0C4())
    {
      sub_2187C5110();
      v12 = sub_219BEA784();
      v12(v8);

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      sub_219BE9D54();
      [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      v13 = sub_219BE9CE4();
      sub_2187C5110();
      v14 = sub_219BEA784();
      v15 = v13;
      v14();

      __swift_destroy_boxed_opaque_existential_1(v18);
      return v15;
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2190FD89C()
{
  v1 = sub_219BE15B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDD0A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  sub_219BEA7B4();
  if (v20)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v2 + 104))(v4, *MEMORY[0x277D2F488], v1);
      sub_219BDD094();
      (*(v2 + 8))(v4, v1);
      sub_219BDD204();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    sub_218806FD0(v19);
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2186CFDE4(0, qword_280EB7098);
  result = sub_219BE1E34();
  if (v18)
  {
    sub_2186CB1F0(&v17, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v12 = (*(v11 + 8))(v10, v11);
    if (sub_219BED0C4())
    {
      v13 = sub_219BEA784();
      v13(v12);
    }

    else
    {
      sub_219BE9D54();
      [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      v14 = sub_219BE9CE4();
      v15 = sub_219BEA784();
      v16 = v14;
      v15();

      v12 = v16;
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190FDC1C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = sub_219BDD0A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[1];
  v23 = *a2;
  sub_2187C5110();
  sub_219BEA7B4();
  if (v27)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      strcpy(v8, "channelPicker");
      *(v8 + 7) = -4864;
      (*(v6 + 104))(v8, *MEMORY[0x277CEAE50], v5);
      sub_219BDD204();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    sub_218806FD0(v26);
  }

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2186CFDE4(0, qword_280EB8F70);
  sub_219BEA794();
  sub_219BE1E14();

  if (v25)
  {
    sub_2186CB1F0(&v24, v26);
    if (v9 < 2)
    {
      v11 = v27;
      v12 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v24 = 0uLL;
    }

    else
    {
      if (v9 == 2)
      {
        v11 = v27;
        v12 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        v13 = xmmword_219C14A10;
      }

      else
      {
        if (v9 != 3)
        {
          v19 = v27;
          v20 = v28;
          __swift_project_boxed_opaque_existential_1(v26, v27);
          *&v24 = v23;
          *(&v24 + 1) = v9;
          v21 = *(v20 + 8);

          v14 = v21(&v24, 0, v19, v20);
          sub_218EC2854(v24, *(&v24 + 1));
          goto LABEL_14;
        }

        v11 = v27;
        v12 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        v13 = xmmword_219C0A870;
      }

      v24 = v13;
    }

    v14 = (*(v12 + 8))(&v24, 0, v11, v12);
LABEL_14:
    v15 = objc_allocWithZone(sub_219BE79B4());
    v16 = v14;
    v17 = [v15 initWithRootViewController_];
    [v17 setModalPresentationStyle_];
    v18 = sub_219BEA784();
    v18(v17);

    [v17 setModalInPresentation_];

    __swift_destroy_boxed_opaque_existential_1(v26);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2190FDFDC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2190FDFEC(void *a1)
{
  type metadata accessor for FollowingNotificationsPrewarm();

  return sub_219698018(a1);
}

id sub_2190FE088()
{
  v1 = v0;
  v2 = sub_219BE8164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8664();
  v6 = sub_219BE7BC4();

  v7 = [v6 collectionViewLayout];

  [v7 collectionViewContentSize];
  sub_219BE86E4();
  swift_getObjectType();
  sub_219BE9E04();
  swift_unknownObjectRelease();
  sub_219BE8014();
  sub_219BF6064();
  sub_219BE7FF4();
  result = [v1 view];
  if (result)
  {
    v9 = result;
    v10 = [result superview];

    if (v10)
    {
      v11 = [v10 safeAreaLayoutGuide];

      [v11 layoutFrame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v22.origin.x = v13;
      v22.origin.y = v15;
      v22.size.width = v17;
      v22.size.height = v19;
      CGRectGetHeight(v22);
    }

    result = [v1 view];
    if (result)
    {
      v20 = result;
      [result frame];

      sub_219BF6B84();
      return (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2190FE45C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_contentSizeObserver;
  v4 = *&v0[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_contentSizeObserver];
  if (v4)
  {
    v5 = v4;
    sub_219BDB694();

    v4 = *&v1[v3];
  }

  *&v1[v3] = 0;

  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_2190FE674()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  sub_219BE6BF4();
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_blueprintViewController];
  [v1 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v8 setFrame_];
    sub_219BE8664();
    v19 = sub_219BE7BC4();

    [v19 setContentInsetAdjustmentBehavior_];

    sub_219BE86A4();
    sub_219BE6F64();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_219BE1A04();
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_2190FEA6C();
    v20 = [v1 traitCollection];
    sub_2190FFE98();

    sub_219BE8664();
    v21 = sub_219BE7BC4();

    v24[0] = v21;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = sub_219BDB784();

    v23 = *&v1[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_contentSizeObserver];
    *&v1[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_contentSizeObserver] = v22;

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2190FE9BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      sub_2190FE088();
      [v3 frame];
      [v3 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2190FEA6C()
{
  v1 = v0;
  v2 = [objc_opt_self() buttonWithType_];
  [v2 addTarget:v0 action:sel_closeButtonTappedWithSender_ forControlEvents:64];
  v3 = sub_219BED0C4();
  v4 = sub_219BF65B4();
  v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  v6 = &selRef_setLeftBarButtonItem_;
  if ((v3 & 1) == 0)
  {
    v6 = &selRef_setRightBarButtonItem_;
  }

  [v4 *v6];

  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_styler), *(v1 + OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_styler + 24));
  v8 = sub_219A0A020();
  [v7 setAttributedText_];

  v9 = sub_219BF65B4();
  [v9 setTitleView_];
}

void sub_2190FEBD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2190FE088();
    [v1 setPreferredContentSize_];
    v2 = [v1 view];

    if (v2)
    {
      [v2 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_2190FECC0()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillLayoutSubviews);
  result = [*&v0[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_blueprintViewController] view];
  if (result)
  {
    v2 = result;
    result = [v0 view];
    if (result)
    {
      v3 = result;
      [result bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      [v2 setFrame_];
      return sub_219BE6B94();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2190FEF14()
{
  result = qword_27CC162E0;
  if (!qword_27CC162E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC162E0);
  }

  return result;
}

uint64_t sub_2190FEF68()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v0;
    v9 = result;

    if (qword_27CC08A20 != -1)
    {
      swift_once();
    }

    v10 = qword_27CCD9078;
    v11 = sub_219BE9334();
    v12 = MEMORY[0x277D6E550];
    v7[3] = v11;
    v7[4] = v12;
    *v7 = v10;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();

    v15 = [v14 bundleForClass_];
    sub_219BDB5E4();

    v16 = sub_219BF54E4();
    v18 = v17;

    v7[5] = v16;
    v7[6] = v18;
    (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
    v19 = v20;
    (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v20);
    sub_219BE6BD4();

    (*(v1 + 8))(v3, v19);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_2190FF290()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
    (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
    sub_219BE6BD4();

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_2190FF498()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    *v7 = sub_219BF1554();
    v7[1] = v10;
    v7[7] = sub_219BF1534();
    v7[8] = v11;
    v12 = sub_219BE5AA4();
    v13 = MEMORY[0x277D6D2E8];
    v7[5] = v12;
    v7[6] = v13;
    __swift_allocate_boxed_opaque_existential_1(v7 + 2);
    sub_219BE5A64();
    (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
    (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
    sub_219BE6BD4();

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_2190FF6E4()
{
  v1 = v0;
  v2 = sub_219BED174();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED1D4();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED214();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  sub_219BE8664();
  v14 = sub_219BE7BC4();

  [v14 setUserInteractionEnabled_];

  sub_219100058(0, &qword_27CC162E8, sub_218DB6840, &type metadata for MagazineCategoriesPickerModel, MEMORY[0x277D6D3F0]);
  sub_219BE5FC4();
  v40[8] = v50;
  v41[0] = v51[0];
  *(v41 + 9) = *(v51 + 9);
  v40[4] = v46;
  v40[5] = v47;
  v40[6] = v48;
  v40[7] = v49;
  v40[0] = v42;
  v40[1] = v43;
  v40[2] = v44;
  v40[3] = v45;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = v0;
      v16 = v13;
      v17 = v8;
      v18 = v7;
      v19 = v6;
      v20 = *(Strong + 40);
      ObjectType = swift_getObjectType();
      v22 = *(v20 + 32);
      v23 = v20;
      v6 = v19;
      v7 = v18;
      v8 = v17;
      v13 = v16;
      v1 = v34;
      v22(*&v40[0], *(&v40[0] + 1), ObjectType, v23);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_218C113E0(v40);
  sub_2187D9028();
  v33 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v34 = *(v8 + 8);
  v34(v11, v7);
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  *&v44 = sub_2190FFE80;
  *(&v44 + 1) = v24;
  *&v42 = MEMORY[0x277D85DD0];
  *(&v42 + 1) = 1107296256;
  *&v43 = sub_218793E0C;
  *(&v43 + 1) = &block_descriptor_94;
  v25 = _Block_copy(&v42);
  v26 = v1;

  sub_219BED1A4();
  *&v42 = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98);
  v27 = v13;
  v28 = v35;
  v29 = v39;
  sub_219BF7164();
  v30 = v33;
  MEMORY[0x21CECD420](v27, v6, v28, v25);
  _Block_release(v25);

  (*(v38 + 8))(v28, v29);
  (*(v36 + 8))(v6, v37);
  return (v34)(v27, v7);
}

uint64_t sub_2190FFC50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v10 + 40))(ObjectType, v10);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_eventHandler) + 40);
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

void sub_2190FFE98()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_styler], v17);
  v3 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *v3;
    v7 = sub_219BED0C4();
    v8 = *__swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = 24;
    }

    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v17);
    v10 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v11 = sub_219BE7BC4();

    v12 = *v10;
    v13 = sub_219BED0C4();
    v14 = *__swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = 24;
    }

    [v11 setBackgroundColor_];
    [v11 setAlwaysBounceVertical_];

    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v16 = [v1 navigationItem];
    sub_219A09E80(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_219100058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

id sub_2191000C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21910D9E8;
  v16 = &block_descriptor_92;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21910DA38;
  v16 = &block_descriptor_89;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_2187FABEC(a4);
  sub_2187FABEC(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

void sub_219100260(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2191002C0(a1, 0);
  }
}

void sub_2191002C0(uint64_t a1, int a2)
{
  v156 = a2;
  sub_218950928();
  v4 = v3;
  v154 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v169 = &v153 - v8;
  sub_218AEF8D4();
  v164 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v163 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v160 = &v153 - v15;
  if (qword_280EE6048 != -1)
  {
    goto LABEL_133;
  }

  while (1)
  {
    v161 = v7;
    v162 = v4;
    v16 = sub_219BE5434();
    v155 = __swift_project_value_buffer(v16, qword_280F62748);
    v17 = sub_219BE5414();
    v18 = sub_219BF6214();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2186C1000, v17, v18, "Sidebar will rebuild from following blueprint", v19, 2u);
      MEMORY[0x21CECF960](v19, -1, -1);
    }

    v20 = OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_completionCoordinators;
    v21 = v172;
    v22 = swift_beginAccess();
    v23 = *(v21 + v20);
    MEMORY[0x28223BE20](v22);
    v7 = (&v153 - 4);
    *(&v153 - 2) = a1;

    *(v21 + v20) = sub_2195E6C2C(sub_21910DC7C, (&v153 - 4), v23);

    v173 = *(v21 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_mainTabManager);
    v4 = [*(v173 + 72) _children];
    v174 = sub_2186C6148(0, &qword_280E8DAD8);
    v24 = sub_219BF5924();

    v25 = v24 >> 62 ? sub_219BF7214() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v165 = a1;
    v170 = v11;
    if (!v25)
    {
      break;
    }

    v26 = 0;
    v171 = (v24 & 0xC000000000000001);
    v166 = v24 & 0xFFFFFFFFFFFFFF8;
    v27 = MEMORY[0x277D84F98];
    v168 = v24;
    v167 = v25;
    while (1)
    {
      if (v171)
      {
        v28 = MEMORY[0x21CECE0F0](v26, v24);
      }

      else
      {
        if (v26 >= *(v166 + 16))
        {
          goto LABEL_129;
        }

        v28 = *(v24 + 8 * v26 + 32);
      }

      v7 = v28;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      type metadata accessor for FloatingTabGroup();
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        v4 = v30;
        v31 = [v30 _identifier];
        a1 = sub_219BF5414();
        v33 = v32;

        v34 = v7;
        v7 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v182[0] = v7;
        v11 = sub_21870F700(a1, v33);
        v37 = v7[2];
        v38 = (v36 & 1) == 0;
        v39 = v37 + v38;
        if (__OFADD__(v37, v38))
        {
          goto LABEL_128;
        }

        v40 = v36;
        if (v7[3] >= v39)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v36 & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v7 = v182;
            sub_21949407C();
            if ((v40 & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          sub_219483DCC(v39, isUniquelyReferenced_nonNull_native);
          v7 = *&v182[0];
          v41 = sub_21870F700(a1, v33);
          if ((v40 & 1) != (v42 & 1))
          {
            sub_219BF79A4();
            __break(1u);
            return;
          }

          v11 = v41;
          if ((v40 & 1) == 0)
          {
LABEL_20:
            v27 = *&v182[0];
            *(*&v182[0] + 8 * (v11 >> 6) + 64) |= 1 << v11;
            v43 = (v27[6] + 16 * v11);
            *v43 = a1;
            v43[1] = v33;
            *(v27[7] + 8 * v11) = v4;

            v44 = v27[2];
            v45 = __OFADD__(v44, 1);
            v46 = v44 + 1;
            if (v45)
            {
              goto LABEL_130;
            }

            v27[2] = v46;
            goto LABEL_25;
          }
        }

        v27 = *&v182[0];
        v47 = *(*&v182[0] + 56);
        v7 = *(v47 + 8 * v11);
        *(v47 + 8 * v11) = v4;

LABEL_25:
        v11 = v170;
        v24 = v168;
        v25 = v167;
        goto LABEL_9;
      }

LABEL_9:
      ++v26;
      if (v29 == v25)
      {
        goto LABEL_29;
      }
    }

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
    swift_once();
  }

  v27 = MEMORY[0x277D84F98];
LABEL_29:

  v184 = MEMORY[0x277D84F90];
  v48 = *(v172 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_hiddenTabElement);
  MEMORY[0x21CECC690]();
  if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v49 = [*(v173 + 72) _selectedElement];
  v50 = &unk_27CC16000;
  if (!v49)
  {
LABEL_38:
    v54 = 0;
    v159 = 0;
    goto LABEL_39;
  }

  v51 = v49;
  type metadata accessor for FloatingTabGroup();
  v52 = swift_dynamicCastClass();
  if (!v52)
  {

    goto LABEL_38;
  }

  v159 = v52;
  v53 = [v52 _selectedElement];
  if (v53)
  {
    v54 = v53;
    v55 = v53;
    v171 = v51;
    v56 = [v55 _identifier];
    sub_219BF5414();

    sub_218950ACC();
    v57 = v160;
    sub_219BEB1C4();

    sub_218950B84();
    if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
    {
      sub_21910DB2C(v57, sub_218A7BA30);
      v59 = *(v172 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_hiddenTab);
      v157 = v54;
      *(v172 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_hiddenTab) = v54;
      v60 = v55;
      [v60 setHidden_];

      v61 = v171;
      v62 = v159;
      v63 = [v159 identifier];
      sub_219BF5414();

      LOBYTE(v63) = sub_219BEB2A4();

      if (v63)
      {

        v60 = v61;
        v64 = v162;
      }

      else
      {
        [v62 setHidden_];

        v71 = v61;
        MEMORY[0x21CECC690]();
        v64 = v162;
        if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v72 = *(v173 + 72);
        [v72 _setSelectedElement_];
      }

      v70 = v164;
      v50 = &unk_27CC16000;
LABEL_51:

      goto LABEL_52;
    }

    sub_21910DB2C(v57, sub_218A7BA30);
    v50 = &unk_27CC16000;
  }

  else
  {
    v54 = 0;
  }

LABEL_39:
  v157 = v54;
  v65 = v50[109];
  v66 = *(v172 + v65);
  if (v66 && (v67 = [v66 _identifier], sub_219BF5414(), v67, sub_218950ACC(), v68 = v163, sub_219BEB1C4(), , sub_218950B84(), LODWORD(v67) = (*(*(v69 - 8) + 48))(v68, 1, v69), sub_21910DB2C(v68, sub_218A7BA30), v67 != 1))
  {
    v60 = *(v172 + v65);
    *(v172 + v65) = 0;
    v70 = v164;
    if (v60)
    {
      [v60 setHidden_];
      v64 = v162;
      goto LABEL_51;
    }

    v64 = v162;
  }

  else
  {
    v64 = v162;
    v70 = v164;
  }

LABEL_52:
  sub_218950ACC();
  v74 = v73;
  (*(*(v73 - 8) + 16))(v11, v165, v73);
  a1 = *(v70 + 36);
  v75 = sub_2186D584C(&unk_280EE3770, sub_218950ACC);
  sub_219BF5DF4();
  v160 = v50[109];
  v158 = OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineManager;
  sub_219BF5E84();
  v76 = v161;
  if (*(v11 + a1) != *&v182[0])
  {
    v171 = (v154 + 16);
    v168 = (v154 + 32);
    v167 = (v154 + 8);
    v163 = v27;
    v166 = v74;
    v165 = a1;
    v164 = v75;
    do
    {
      v86 = sub_219BF5EC4();
      v87 = v169;
      (*v171)(v169);
      v86(v182, 0);
      sub_219BF5E94();
      (*v168)(v76, v87, v64);
      sub_219BE6934();
      v183 = v181;
      v182[2] = v178;
      v182[3] = v179;
      v182[4] = v180;
      v182[0] = v176;
      v182[1] = v177;
      if (v181 == 1)
      {
        v88 = [*(v173 + 72) _children];
        v89 = sub_219BF5924();

        v90 = sub_219102F64(v76, v89, sub_219102E58, 0);

        if (v90 >> 62)
        {
          if (!sub_219BF7214())
          {
            goto LABEL_104;
          }

LABEL_67:
          sub_2191EF8BC(v90);
        }

        else
        {
          if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

LABEL_104:
        }

        v128 = [*(v173 + 80) _children];
        v129 = sub_219BF5924();

        v130 = sub_219102F64(v76, v129, sub_21910321C, 0);

        if (v130 >> 62)
        {
          if (sub_219BF7214())
          {
LABEL_107:
            v131 = v173;
            v132 = *(v173 + 80);
            v133 = sub_219BF5904();
            [v132 _setChildren_];

            v134 = *(v131 + 80);
            if (v130 >> 62)
            {
              v4 = sub_219BF7214();
              if (!v4)
              {
                goto LABEL_119;
              }

LABEL_109:
              v175 = MEMORY[0x277D84F90];
              v135 = v134;
              v7 = &v175;
              sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
              if (v4 < 0)
              {
                goto LABEL_131;
              }

              v136 = 0;
              v137 = v175;
              do
              {
                if ((v130 & 0xC000000000000001) != 0)
                {
                  v138 = MEMORY[0x21CECE0F0](v136, v130);
                }

                else
                {
                  v138 = *(v130 + 8 * v136 + 32);
                }

                v139 = v138;
                v140 = [v138 _identifier];
                v141 = sub_219BF5414();
                v143 = v142;

                v175 = v137;
                v145 = *(v137 + 16);
                v144 = *(v137 + 24);
                if (v145 >= v144 >> 1)
                {
                  sub_21870B65C((v144 > 1), v145 + 1, 1);
                  v137 = v175;
                }

                ++v136;
                *(v137 + 16) = v145 + 1;
                v146 = v137 + 16 * v145;
                *(v146 + 32) = v141;
                *(v146 + 40) = v143;
              }

              while (v4 != v136);

              v64 = v162;
              v76 = v161;
              v11 = v170;
            }

            else
            {
              v4 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v4)
              {
                goto LABEL_109;
              }

LABEL_119:
              v147 = v134;
            }

            v148 = sub_219BF5904();

            [v134 _setDisplayOrder_];

            v149 = v173;
            v150 = *(v173 + 72);
            v151 = *(v173 + 80);
            [v151 _setDelegate_];
            swift_unknownObjectRelease();

            [*(v149 + 80) _setAllowsReordering_];
            [*(v149 + 80) setHidden_];
            v152 = *(v149 + 80);
            MEMORY[0x21CECC690]();
            a1 = v165;
            if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_219BF5A14();
            }

            sub_219BF5A54();
            sub_2189C3F04(v182);
            v27 = v163;
            goto LABEL_63;
          }
        }

        else if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_107;
        }

        sub_2189C3F04(v182);
        goto LABEL_62;
      }

      sub_2189C3F04(v182);
      v91 = sub_219BE6944();
      if (v27[2])
      {
        v93 = sub_21870F700(v91, v92);
        v95 = v94;

        if (v95)
        {
          v96 = *(v27[7] + 8 * v93);
          goto LABEL_73;
        }
      }

      else
      {
      }

      v96 = sub_21911295C();
      if (!v96)
      {
        goto LABEL_63;
      }

LABEL_73:
      v97 = v96;
      v98 = [v97 _children];
      v99 = sub_219BF5924();

      v100 = v172;
      v101 = sub_219102F64(v76, v99, sub_21876836C, 0);

      v175 = v101;
      v102 = *&v160[v100];
      if (v102)
      {
        v103 = v159;
        if (v159)
        {
          type metadata accessor for FloatingTabGroup();
          v104 = v97;
          v105 = v102;
          v106 = v103;
          v107 = sub_219BF6DD4();

          if (v107 & 1) != 0 && (v108 = v157) != 0 && (v105 = v105, v109 = v108, v110 = sub_219BF6DD4(), v105, v109, (v110))
          {
            v111 = v105;
            MEMORY[0x21CECC690]();
            if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_219BF5A14();
            }

            sub_219BF5A54();

            v101 = v175;
          }

          else
          {
          }
        }
      }

      if (v101 >> 62)
      {
        if (sub_219BF7214())
        {
LABEL_84:
          v112 = sub_219BF5904();
          [v97 _setChildren_];

          if (v101 >> 62)
          {
            v4 = sub_219BF7214();
            if (!v4)
            {
              goto LABEL_96;
            }

LABEL_86:
            v175 = MEMORY[0x277D84F90];
            v7 = &v175;
            sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
            if (v4 < 0)
            {
              goto LABEL_132;
            }

            v113 = 0;
            v114 = v175;
            do
            {
              if ((v101 & 0xC000000000000001) != 0)
              {
                v115 = MEMORY[0x21CECE0F0](v113, v101);
              }

              else
              {
                v115 = *(v101 + 8 * v113 + 32);
              }

              v116 = v115;
              v117 = [v115 _identifier];
              v118 = sub_219BF5414();
              v120 = v119;

              v175 = v114;
              v122 = *(v114 + 16);
              v121 = *(v114 + 24);
              if (v122 >= v121 >> 1)
              {
                sub_21870B65C((v121 > 1), v122 + 1, 1);
                v114 = v175;
              }

              ++v113;
              *(v114 + 16) = v122 + 1;
              v123 = v114 + 16 * v122;
              *(v123 + 32) = v118;
              *(v123 + 40) = v120;
            }

            while (v4 != v113);

            v64 = v162;
            v76 = v161;
            v11 = v170;
          }

          else
          {
            v4 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v4)
            {
              goto LABEL_86;
            }

LABEL_96:
          }

          v124 = sub_219BF5904();

          [v97 _setDisplayOrder_];

          [v97 _setDelegate_];
          swift_unknownObjectRelease();

          v125 = sub_219BF1B84();
          v27 = v163;
          if (v125)
          {
            v126 = v97[OBJC_IVAR____TtC7NewsUI216FloatingTabGroup_allowsReorderingWhileOnline];
          }

          else
          {
            v126 = 0;
          }

          [v97 _setAllowsReordering_];

          [v97 setHidden_];
          v127 = v97;
          MEMORY[0x21CECC690]();
          if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();

          goto LABEL_62;
        }
      }

      else if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_84;
      }

      v27 = v163;
LABEL_62:
      a1 = v165;
LABEL_63:
      (*v167)(v76, v64);
      sub_219BF5E84();
    }

    while (*(v11 + a1) != *&v182[0]);
  }

  sub_21910DB2C(v11, sub_218AEF8D4);
  v77 = v173;
  v78 = *(v173 + 72);
  v79 = sub_219BF5904();

  [v78 _setChildren_];

  if (v156)
  {
    v80 = [*(v77 + 72) _children];
    v81 = sub_219BF5924();

    if (v81 >> 62)
    {
      sub_2186C6148(0, &unk_27CC16378);

      v82 = sub_219BF7534();
    }

    else
    {

      sub_219BF7924();
      sub_2186C6148(0, &unk_27CC16378);
      v82 = v81;
    }

    sub_2191023D0(v82);
  }

  v83 = sub_219BE5414();
  v84 = sub_219BF6214();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_2186C1000, v83, v84, "Sidebar finished rebuilding from following blueprint", v85, 2u);
    MEMORY[0x21CECF960](v85, -1, -1);
  }
}

uint64_t sub_219101A80(uint64_t a1)
{
  sub_218950ACC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21910B120();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_2191138D8(a1, v9, sub_21910B120);
    v12 = sub_219BF1584();
    if ((*(*(v12 - 8) + 48))(v9, 1, v12) == 1)
    {
      sub_219101CB8();
    }

    else
    {
      sub_21910DB2C(v9, sub_21910B120);
    }

    v13 = *&v11[OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider];
    sub_2187486B4(0);
    sub_2186D584C(&unk_280EE5550, sub_2187486B4);
    sub_219BE7B94();
    sub_2191002C0(v6, 1);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_219101CB8()
{
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC();
  v44 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v43 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v55 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v0;
  v17 = [*(*(v0 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_mainTabManager) + 72) _children];
  v36 = sub_2186C6148(0, &qword_280E8DAD8);
  v18 = sub_219BF5924();

  if (v18 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v47 = v18 & 0xC000000000000001;
    v45 = v18;
    v38 = v18 + 32;
    v39 = v18 & 0xFFFFFFFFFFFFFF8;
    v41 = (v11 + 8);
    v42 = OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider;
    v40 = (v15 + 48);
    v35 = (v15 + 32);
    v53 = (v6 + 48);
    v49 = (v6 + 8);
    v50 = (v6 + 32);
    v34 = (v15 + 8);
    v15 = 0;
    v54 = v5;
    v6 = v37;
    v5 = i;
    v56 = v14;
    while (1)
    {
      if (v47)
      {
        v19 = MEMORY[0x21CECE0F0](v15, v45);
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_29;
        }

        v19 = *(v38 + 8 * v15);
      }

      v18 = v19;
      if (__OFADD__(v15++, 1))
      {
        break;
      }

      type metadata accessor for FloatingTabGroup();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v11 = v21;
        v48 = v15;
        v57 = *(v52 + v42);
        sub_2187486B4(0);
        sub_2186D584C(&unk_280EE5550, sub_2187486B4);
        v22 = v18;
        v23 = v43;
        sub_219BE7B94();
        v24 = [v11 identifier];
        v15 = sub_219BF5414();

        v5 = v44;
        v18 = v23;
        sub_219BEB354();
        v14 = v56;

        (*v41)(v23, v5);
        if ((*v40)(v6, 1, v14) != 1)
        {
          (*v35)(v55, v6, v14);
          v25 = [v11 _children];
          v14 = sub_219BF5924();

          if (v14 >> 62)
          {
            v11 = sub_219BF7214();
            if (v11)
            {
LABEL_15:
              if (v11 < 1)
              {
                goto LABEL_30;
              }

              for (j = 0; j != v11; ++j)
              {
                if ((v14 & 0xC000000000000001) != 0)
                {
                  v27 = MEMORY[0x21CECE0F0](j, v14);
                }

                else
                {
                  v27 = *(v14 + 8 * j + 32);
                }

                v28 = v27;
                v29 = [v27 identifier];
                sub_219BF5414();

                v18 = v55;
                sub_219BE6A64();

                v30 = v54;
                if ((*v53)(v3, 1, v54) == 1)
                {

                  sub_21910DB2C(v3, sub_218A7BA30);
                }

                else
                {
                  v31 = v51;
                  (*v50)(v51, v3, v30);
                  v18 = v52;
                  sub_219106224(v28);

                  (*v49)(v31, v30);
                }
              }
            }
          }

          else
          {
            v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11)
            {
              goto LABEL_15;
            }
          }

          (*v34)(v55, v56);
          v6 = v37;
          goto LABEL_26;
        }

        sub_21910DB2C(v6, sub_218A2D984);
LABEL_26:
        v5 = i;
        v15 = v48;
        if (v48 == i)
        {
        }
      }

      else
      {

        if (v15 == v5)
        {
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }
}

void sub_2191023D0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v26 = v1 + 32;
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v29 = i;
    v30 = v1;
    v28 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v5 = MEMORY[0x21CECE0F0](v3, v1);
      }

      else
      {
        if (v3 >= *(v27 + 16))
        {
          goto LABEL_31;
        }

        v5 = *(v26 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      type metadata accessor for FloatingTabElement();
      v8 = swift_dynamicCastClass();
      v31 = v6;
      if (v8)
      {
        v9 = v8;
        v10 = v6;
        v11 = [v9 tabBarController];
        if (v11)
        {
          v12 = v11;
          sub_2191026B8(v9, v11);
          v13 = i;
          v14 = v1;
          v15 = [v12 _uip_sidebar];
          [v15 reconfigureItemForTab_];

          v10 = v15;
          v1 = v14;
          i = v13;
        }

        v6 = v31;
      }

      type metadata accessor for FloatingTabGroup();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = [v16 _children];
        sub_2186C6148(0, &qword_280E8DAD8);
        v18 = sub_219BF5924();

        if (v18 >> 62)
        {
          v19 = sub_219BF7214();
          if (!v19)
          {
LABEL_28:

            goto LABEL_5;
          }
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v19)
          {
            goto LABEL_28;
          }
        }

        if (v19 < 1)
        {
          goto LABEL_30;
        }

        for (j = 0; j != v19; ++j)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x21CECE0F0](j, v18);
          }

          else
          {
            v21 = *(v18 + 8 * j + 32);
          }

          v22 = v21;
          v23 = [v21 tabBarController];
          if (v23)
          {
            v24 = v23;
            sub_2191026B8(v22, v23);
            v25 = [v24 _uip_sidebar];
            [v25 reconfigureItemForTab_];
          }
        }

        i = v29;
        v1 = v30;
        v4 = v28;
      }

      else
      {
      }

LABEL_5:
      if (v3 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }
}

uint64_t sub_2191026B8(void *a1, void *a2)
{
  v45 = a2;
  v4 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_219BF2634();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v11 = v10;
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  result = MEMORY[0x28223BE20](v22);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_mainTabManager);
  if (v27[4] != a1 && v27[5] != a1 && v27[7] != a1 && v27[6] != a1 && v27[8] != a1 && v27[9] != a1)
  {
    v41 = v11;
    v40 = v2;
    *&v57[0] = *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider);
    v44 = result;
    v43 = v24;
    sub_2187486B4(0);
    sub_2186D584C(&unk_280EE5550, sub_2187486B4);
    sub_219BE7B94();
    v28 = [a1 _identifier];
    v42 = sub_219BF5414();

    sub_219BEB244();

    (*(v16 + 8))(v18, v15);
    v29 = v43;
    if ((*(v43 + 48))(v21, 1, v44) == 1)
    {
      return sub_21910DB2C(v21, sub_218A2D984);
    }

    else
    {
      (*(v29 + 32))(v26, v21, v44);
      v30 = [a1 _identifier];
      sub_219BF5414();

      sub_219BE6A64();

      v31 = v50;
      v32 = v41;
      if ((*(v50 + 48))(v9, 1, v41) == 1)
      {
        (*(v29 + 8))(v26, v44);
        return sub_21910DB2C(v9, sub_218A7BA30);
      }

      else
      {
        (*(v31 + 32))(v13, v9, v32);
        sub_219BE6934();
        v57[3] = v54;
        v57[4] = v55;
        v33 = v56;
        v58 = v56;
        v57[0] = v51;
        v57[1] = v52;
        v57[2] = v53;
        sub_2189C3F04(v57);
        if ((v33 - 2) >= 8)
        {
          (*(v31 + 8))(v13, v41);
        }

        else
        {
          v34 = [v45 _uip_sidebar];
          LODWORD(v45) = [v34 _isEditing];

          __swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider), *(v40 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider + 24));
          v35 = sub_219BEED44();
          v36 = v47;
          sub_219BE5FC4();
          v37 = v46;
          sub_219103324(v36, v46);
          sub_21910DB2C(v36, type metadata accessor for FollowingModel);
          v38 = sub_219BF2614();
          (*(v48 + 8))(v37, v49);
          if (v45)
          {
            v39 = v35;
          }

          else
          {
            v39 = ~v38;
          }

          [a1 setEnabled_];
          (*(v31 + 8))(v13, v32);
        }

        return (*(v43 + 8))(v26, v44);
      }
    }
  }

  return result;
}

uint64_t sub_219102E58()
{
  v0 = type metadata accessor for FollowingModel();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  sub_218950B84();
  sub_219BE5FC4();
  sub_219113448(v5, v3, type metadata accessor for FollowingModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = (EnumCaseMultiPayload > 0x13) | (0x7BFCFu >> EnumCaseMultiPayload);
  sub_21910DB2C(v3, type metadata accessor for FollowingModel);
  return v7 & 1;
}

uint64_t sub_219102F64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v33 = a3;
  v4 = a2;
  v36 = a1;
  if (a2 >> 62)
  {
LABEL_26:
    a1 = sub_219BF7214();
    v5 = a1;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v38 = v4 & 0xFFFFFFFFFFFFFF8;
      v39 = v4 & 0xC000000000000001;
      v7 = MEMORY[0x277D84F98];
      v37 = v4;
      while (1)
      {
        if (v39)
        {
          v10 = MEMORY[0x21CECE0F0](v6, v4);
        }

        else
        {
          if (v6 >= *(v38 + 16))
          {
            goto LABEL_23;
          }

          v10 = *(v4 + 8 * v6 + 32);
        }

        v11 = v10;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v40 = v6 + 1;
        v12 = [v10 _identifier];
        v13 = sub_219BF5414();
        v15 = v14;

        v16 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v7;
        v4 = v7;
        v19 = sub_21870F700(v13, v15);
        v20 = v7[2];
        v21 = (v18 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_24;
        }

        v23 = v18;
        if (v7[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v18)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v4 = &v41;
            sub_219494060();
            if (v23)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_219483DB0(v22, isUniquelyReferenced_nonNull_native);
          v4 = v41;
          v24 = sub_21870F700(v13, v15);
          if ((v23 & 1) != (v25 & 1))
          {
            result = sub_219BF79A4();
            __break(1u);
            return result;
          }

          v19 = v24;
          if (v23)
          {
LABEL_4:

            v7 = v41;
            v8 = v41[7];
            v9 = *(v8 + 8 * v19);
            *(v8 + 8 * v19) = v16;

            goto LABEL_5;
          }
        }

        v7 = v41;
        v41[(v19 >> 6) + 8] |= 1 << v19;
        v26 = (v7[6] + 16 * v19);
        *v26 = v13;
        v26[1] = v15;
        *(v7[7] + 8 * v19) = v16;

        v27 = v7[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_25;
        }

        v7[2] = v29;
LABEL_5:
        ++v6;
        v4 = v37;
        if (v40 == v5)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_28:
  MEMORY[0x28223BE20](a1);
  v32[2] = v33;
  v32[3] = v34;
  v32[4] = v7;
  v32[5] = v35;
  v32[6] = v36;
  v30 = sub_218F90464(sub_219113098, v32);

  return v30;
}

uint64_t sub_21910321C()
{
  v0 = type metadata accessor for FollowingModel();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  sub_218950B84();
  sub_219BE5FC4();
  sub_219113448(v5, v3, type metadata accessor for FollowingModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = EnumCaseMultiPayload < 0x14;
  v8 = 0x84030u >> EnumCaseMultiPayload;
  sub_21910DB2C(v3, type metadata accessor for FollowingModel);
  return v7 & v8;
}

uint64_t sub_219103324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218F3C4F0(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v56 = &v55 - v9;
  v10 = sub_219BF2CB4();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF2634();
  v60 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v59 = &v55 - v23;
  if ([*(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_featureAvailability) useOfflineMode])
  {
    v55 = a2;
    sub_2191138D8(a1, v15, type metadata accessor for FollowingModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = type metadata accessor for FollowingModel;
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload <= 15)
      {
        if ((EnumCaseMultiPayload - 6) < 2)
        {
          v29 = *v15;
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_contentAvailabilityValidator), *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_contentAvailabilityValidator + 24));
          *v12 = *(*(v29 + 24) + 16);
          v30 = v57;
          v31 = v58;
          (*(v57 + 104))(v12, *MEMORY[0x277D33B98], v58);
          swift_unknownObjectRetain();
          v32 = v59;
          sub_219BF4794();
          (*(v30 + 8))(v12, v31);

          v33 = v55;
          v34 = v60;
          return (*(v34 + 32))(v33, v32, v16);
        }

        if (EnumCaseMultiPayload == 14)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((EnumCaseMultiPayload - 18) < 2)
        {
LABEL_26:
          sub_21910DB2C(v15, v25);
          v32 = v59;
          (*(v60 + 104))(v59, *MEMORY[0x277D33998], v16);
LABEL_27:
          v34 = v60;
          v33 = v55;
          return (*(v34 + 32))(v33, v32, v16);
        }

        if (EnumCaseMultiPayload == 16)
        {
          v25 = type metadata accessor for FollowingMySportsModel;
          goto LABEL_26;
        }

        if (EnumCaseMultiPayload == 17)
        {
          v25 = type metadata accessor for FollowingPuzzleHubModel;
          goto LABEL_26;
        }
      }

LABEL_23:
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider), *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider + 24));
      if (sub_219BEED54())
      {
        v39 = MEMORY[0x277D33998];
      }

      else
      {
        v44 = *MEMORY[0x277D33988];
        v45 = sub_219BF2624();
        (*(*(v45 - 8) + 104))(v19, v44, v45);
        v39 = MEMORY[0x277D33980];
      }

      v32 = v59;
      (*(v60 + 104))(v19, *v39, v16);
      (*(v60 + 32))(v32, v19, v16);
      sub_21910DB2C(v15, type metadata accessor for FollowingModel);
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload < 2)
      {
        goto LABEL_26;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v25 = type metadata accessor for FollowingAudioModel;
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if ((EnumCaseMultiPayload - 4) < 2)
    {
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_23;
    }

    v35 = v56;
    sub_2191138D8(*(*v15 + 16) + OBJC_IVAR____TtC7NewsUI214EditorialModel_route, v56, sub_218F3C4F0);
    v36 = type metadata accessor for EditorialModelRoute(0);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) != 1)
    {
      sub_2191138D8(v35, v8, sub_218F3C4F0);
      v40 = swift_getEnumCaseMultiPayload();
      if (v40 <= 1)
      {
        v41 = *v8;
        if (v40)
        {
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_contentAvailabilityValidator), *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_contentAvailabilityValidator + 24));
          *v12 = v41;
          v53 = v57;
          v54 = v58;
          (*(v57 + 104))(v12, *MEMORY[0x277D33BC0], v58);
          swift_unknownObjectRetain();
          v32 = v59;
          sub_219BF4794();
          swift_unknownObjectRelease();
          (*(v53 + 8))(v12, v54);
        }

        else
        {
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_contentAvailabilityValidator), *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_contentAvailabilityValidator + 24));
          *v12 = *(*(v41 + 24) + 16);
          v42 = v57;
          v43 = v58;
          (*(v57 + 104))(v12, *MEMORY[0x277D33B98], v58);
          swift_unknownObjectRetain();
          v32 = v59;
          sub_219BF4794();
          (*(v42 + 8))(v12, v43);
        }

        v48 = v55;
        v35 = v56;
        goto LABEL_40;
      }

      if (v40 == 2)
      {
        v49 = *v8;
        v50 = v8[1];
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_contentAvailabilityValidator), *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_contentAvailabilityValidator + 24));
        *v12 = v49;
        v12[1] = v50;
        v35 = v56;
        v51 = v57;
        v52 = v58;
        (*(v57 + 104))(v12, *MEMORY[0x277D33B80], v58);
        v32 = v59;
        sub_219BF4794();
        (*(v51 + 8))(v12, v52);

        v48 = v55;
LABEL_40:
        sub_21910DB2C(v35, sub_218F3C4F0);
        v33 = v48;
        v34 = v60;
        return (*(v34 + 32))(v33, v32, v16);
      }

      sub_21910DB2C(v8, type metadata accessor for EditorialModelRoute);
    }

    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider), *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider + 24));
    v37 = sub_219BEED54();

    if (v37)
    {
      v38 = MEMORY[0x277D33998];
    }

    else
    {
      v46 = *MEMORY[0x277D33988];
      v47 = sub_219BF2624();
      (*(*(v47 - 8) + 104))(v22, v46, v47);
      v38 = MEMORY[0x277D33980];
    }

    v48 = v55;
    v32 = v59;
    (*(v60 + 104))(v22, *v38, v16);
    (*(v60 + 32))(v32, v22, v16);
    goto LABEL_40;
  }

  v26 = *MEMORY[0x277D33998];
  v27 = *(v60 + 104);

  return v27(a2, v26, v16);
}

void sub_219103C44(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v11 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2(a1) & 1) == 0)
  {
    v25 = 0;
    goto LABEL_16;
  }

  v28 = a5;
  v32 = v5;
  sub_218950B84();
  v14 = sub_219BE5F84();
  if (*(a3 + 16))
  {
    v16 = sub_21870F700(v14, v15);
    v18 = v17;

    if (v18)
    {
      v19 = *(*(a3 + 56) + 8 * v16);
      sub_219BE5FC4();
      sub_218F382AC(v29);
      sub_21910DB2C(v13, type metadata accessor for FollowingModel);
      v20 = v30;
      if (v30)
      {
        v21 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v21 + 32))(v20, v21);
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_1(v29);
        a5 = v28;
        if (v23)
        {
          v24 = sub_219BF53D4();
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        sub_21910DB2C(v29, sub_219113244);
        v24 = 0;
        a5 = v28;
      }

      [v19 setSubtitle_];

      v25 = sub_2191130BC(v19);
      goto LABEL_16;
    }
  }

  else
  {
  }

  v26 = sub_219103EC8(a4, a1);
  if (v26)
  {
    v27 = v26;
    v25 = sub_2191130BC(v26);
  }

  else
  {
    v25 = 0;
  }

  a5 = v28;
LABEL_16:
  *a5 = v25;
}

id sub_219103EC8(uint64_t a1, uint64_t a2)
{
  sub_218950B84();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = sub_219BDB0F4();
  v161 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FollowingPuzzleHubModel();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v13);
  v15 = (v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v16 = type metadata accessor for FollowingAudioModel;
      goto LABEL_18;
    case 3u:
      v75 = *v15;
      sub_219BE5F84();
      v76 = *(*(v75 + 16) + 56);
      v77 = objc_allocWithZone(type metadata accessor for FloatingTabElement());

      v78 = sub_219BF53D4();

      v79 = sub_219BF53D4();

      v80 = [v77 initWithIdentifier:v78 title:v79 image:0];

      v36 = v80;
      if (v76)
      {
        v81 = sub_219BF53D4();
      }

      else
      {
        v81 = 0;
      }

      [v36 setSubtitle_];

      [v36 _setTabBarPlacement_];
      v134 = *(v75 + 16);
      v135 = *(v134 + 104);
      if (v135 == 255)
      {
        v139 = 0;
        v138 = 0x8000000219D04950;
        v136 = 0xD000000000000017;
      }

      else
      {
        v136 = *(v134 + 96);
        if (v135)
        {
          v137 = *(v134 + 80);
          sub_218FA396C(v137, *(v134 + 88), *(v134 + 96), 1);
          v138 = 0;
          v139 = 3;
          v136 = v137;
        }

        else
        {
          v151 = v136;
          v138 = 0;
          v139 = 1;
        }
      }

      v152 = [objc_opt_self() currentTraitCollection];
      if ([v152 userInterfaceIdiom] == 5)
      {
        v153 = 20.0;
      }

      else
      {
        v153 = 28.0;
      }

      v154 = [objc_opt_self() defaultMetrics];
      [v154 scaledValueForValue:v152 compatibleWithTraitCollection:v153];
      v156 = v155;

      sub_2191059B8(v36, v136, v138, v139, v156, v156);

      sub_218A264C8(v136, v138, v139);

      return v36;
    case 4u:
      v39 = v15[3];
      sub_219BE5F84();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v60 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();

      v61 = sub_219BF53D4();
      v62 = [objc_opt_self() systemImageNamed_];
      goto LABEL_15;
    case 5u:
      v39 = v15[2];
      sub_219BE5F84();
      type metadata accessor for Localized();
      v63 = swift_getObjCClassFromMetadata();
      v64 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();

      v61 = sub_219BF53D4();
      v62 = [objc_opt_self() systemImageNamed_];
LABEL_15:
      v65 = v62;

      v66 = objc_allocWithZone(type metadata accessor for FloatingTabElement());
      v67 = sub_219BF53D4();

      v68 = sub_219BF53D4();

      v69 = [v66 initWithIdentifier:v67 title:v68 image:v65];

      v36 = v69;
      [v36 setSubtitle_];
      [v36 _setTabBarPlacement_];

      goto LABEL_36;
    case 6u:
      v26 = *v15;
      sub_219BE5F84();
      v27 = [*(*(v26 + 24) + 16) displayName];
      if (!v27)
      {
        sub_219BF5414();
        v27 = sub_219BF53D4();
      }

      v28 = [*(*(v26 + 24) + 16) compactDisplayName];
      v160 = sub_219BF5414();
      v30 = v29;

      sub_21943359C();
      v32 = v31;
      v33 = 4;
      if (*(v26 + 16) - 1 >= 2)
      {
        v33 = 5;
      }

      v159 = v33;
      v34 = objc_allocWithZone(type metadata accessor for FloatingTabElement());
      v35 = sub_219BF53D4();

      v36 = [v34 initWithIdentifier:v35 title:v27 image:0];

      v37 = v36;
      if (v32)
      {
        v38 = sub_219BF53D4();
      }

      else
      {
        v38 = 0;
      }

      [v36 setSubtitle_];

      [v36 _setTabBarPlacement_];
      aBlock = v160;
      v163 = v30;
      sub_219BDB0D4();
      sub_2187F3BD4();
      v123 = sub_219BF7024();
      v125 = v124;
      (*(v161 + 8))(v9, v7);

      v126 = HIBYTE(v125) & 0xF;
      if ((v125 & 0x2000000000000000) == 0)
      {
        v126 = v123 & 0xFFFFFFFFFFFFLL;
      }

      if (v126)
      {
        v127 = objc_allocWithZone(MEMORY[0x277D76340]);
        v128 = sub_219BF53D4();

        v129 = [v127 initWithTitle:v128 image:0];

        [v36 _setCompactRepresentation_];
      }

      else
      {
      }

      v130 = *(*(v26 + 24) + 16);
      v131 = objc_opt_self();
      swift_unknownObjectRetain();
      v132 = [v131 currentTraitCollection];
      if ([v132 userInterfaceIdiom] == 5)
      {
        v133 = 20.0;
      }

      else
      {
        v133 = 28.0;
      }

      goto LABEL_60;
    case 7u:
      v88 = *v15;
      sub_219BE5F84();
      v89 = [*(*(v88 + 24) + 16) displayName];
      if (!v89)
      {
        sub_219BF5414();
        v89 = sub_219BF53D4();
      }

      v90 = [*(*(v88 + 24) + 16) compactDisplayName];
      v160 = sub_219BF5414();
      v92 = v91;

      sub_21943359C();
      v94 = v93;
      v95 = 4;
      if (*(v88 + 16) - 1 >= 2)
      {
        v95 = 5;
      }

      v159 = v95;
      v96 = objc_allocWithZone(type metadata accessor for FloatingTabElement());
      v97 = sub_219BF53D4();

      v36 = [v96 initWithIdentifier:v97 title:v89 image:0];

      v98 = v36;
      if (v94)
      {
        v99 = sub_219BF53D4();
      }

      else
      {
        v99 = 0;
      }

      [v36 setSubtitle_];

      [v36 _setTabBarPlacement_];
      aBlock = v160;
      v163 = v92;
      sub_219BDB0D4();
      sub_2187F3BD4();
      v140 = sub_219BF7024();
      v142 = v141;
      (*(v161 + 8))(v9, v7);

      v143 = HIBYTE(v142) & 0xF;
      if ((v142 & 0x2000000000000000) == 0)
      {
        v143 = v140 & 0xFFFFFFFFFFFFLL;
      }

      if (v143)
      {
        v144 = objc_allocWithZone(MEMORY[0x277D76340]);
        v145 = sub_219BF53D4();

        v146 = [v144 initWithTitle:v145 image:0];

        [v36 _setCompactRepresentation_];
      }

      else
      {
      }

      v130 = *(*(v88 + 24) + 16);
      v147 = objc_opt_self();
      swift_unknownObjectRetain();
      v132 = [v147 currentTraitCollection];
      if ([v132 userInterfaceIdiom] == 5)
      {
        v133 = 20.0;
      }

      else
      {
        v133 = 28.0;
      }

LABEL_60:
      v148 = [objc_opt_self() defaultMetrics];
      [v148 scaledValueForValue:v132 compatibleWithTraitCollection:v133];
      v150 = v149;

      sub_2191059B8(v36, v130, 0, 3u, v150, v150);
      swift_unknownObjectRelease();

      return v36;
    case 8u:
      v100 = *v15;
      sub_219BE5F84();
      v160 = *(v100 + 32);
      v161 = v100;
      v101 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v5 + 16))(v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
      v102 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = v101;
      (*(v5 + 32))(v103 + v102, v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v21 = objc_allocWithZone(type metadata accessor for FloatingTabAction());

      v22 = sub_219BF53D4();

      v23 = sub_219BF53D4();
      v104 = swift_allocObject();
      *(v104 + 16) = sub_2191132DC;
      *(v104 + 24) = v103;
      v166 = sub_219113BA4;
      v167 = v104;
      aBlock = MEMORY[0x277D85DD0];
      v163 = 1107296256;
      v25 = &block_descriptor_67;
      goto LABEL_31;
    case 9u:
      v70 = *v15;
      sub_219BE5F84();
      v160 = *(v70 + 32);
      v161 = v70;
      v71 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v5 + 16))(v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
      v72 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = v71;
      (*(v5 + 32))(v73 + v72, v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v21 = objc_allocWithZone(type metadata accessor for FloatingTabAction());

      v22 = sub_219BF53D4();

      v23 = sub_219BF53D4();
      v74 = swift_allocObject();
      *(v74 + 16) = sub_2191132DC;
      *(v74 + 24) = v73;
      v166 = sub_219113BA4;
      v167 = v74;
      aBlock = MEMORY[0x277D85DD0];
      v163 = 1107296256;
      v25 = &block_descriptor_56_0;
      goto LABEL_31;
    case 0xAu:
      v110 = *v15;
      sub_219BE5F84();
      v160 = *(v110 + 32);
      v161 = v110;
      v111 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v5 + 16))(v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
      v112 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v113 = swift_allocObject();
      *(v113 + 16) = v111;
      (*(v5 + 32))(v113 + v112, v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v21 = objc_allocWithZone(type metadata accessor for FloatingTabAction());

      v22 = sub_219BF53D4();

      v23 = sub_219BF53D4();
      v114 = swift_allocObject();
      *(v114 + 16) = sub_2191132DC;
      *(v114 + 24) = v113;
      v166 = sub_219113BA4;
      v167 = v114;
      aBlock = MEMORY[0x277D85DD0];
      v163 = 1107296256;
      v25 = &block_descriptor_45_2;
      goto LABEL_31;
    case 0xBu:
      v47 = *v15;
      sub_2191139C0(0, &qword_280ECED10, type metadata accessor for FollowingButtonModel, sub_218748D40);
      v161 = *(v48 + 48);
      sub_219BE5F84();
      v49 = *(v47 + 40);
      v159 = *(v47 + 32);
      v160 = v47;
      v158[1] = v49;
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v5 + 16))(v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
      v51 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      (*(v5 + 32))(v52 + v51, v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v53 = objc_allocWithZone(type metadata accessor for FloatingTabAction());

      v54 = sub_219BF53D4();

      v55 = sub_219BF53D4();
      v56 = swift_allocObject();
      *(v56 + 16) = sub_2191132DC;
      *(v56 + 24) = v52;
      v166 = sub_219113BA4;
      v167 = v56;
      aBlock = MEMORY[0x277D85DD0];
      v163 = 1107296256;
      v164 = sub_218B66540;
      v165 = &block_descriptor_34_0;
      v57 = _Block_copy(&aBlock);

      v36 = [v53 initWithIdentifier:v54 title:v55 image:0 handler:v57];
      _Block_release(v57);

      [v36 _setTabBarPlacement_];

      sub_218748D40();
      (*(*(v58 - 8) + 8))(v15 + v161, v58);
      return v36;
    case 0xCu:
      v105 = *v15;
      sub_219BE5F84();
      v160 = *(v105 + 32);
      v161 = v105;
      v106 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v5 + 16))(v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
      v107 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v108 = swift_allocObject();
      *(v108 + 16) = v106;
      (*(v5 + 32))(v108 + v107, v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v21 = objc_allocWithZone(type metadata accessor for FloatingTabAction());

      v22 = sub_219BF53D4();

      v23 = sub_219BF53D4();
      v109 = swift_allocObject();
      *(v109 + 16) = sub_2191132DC;
      *(v109 + 24) = v108;
      v166 = sub_219113BA4;
      v167 = v109;
      aBlock = MEMORY[0x277D85DD0];
      v163 = 1107296256;
      v25 = &block_descriptor_23_2;
      goto LABEL_31;
    case 0xDu:
      v17 = *v15;
      sub_219BE5F84();
      v160 = *(v17 + 32);
      v161 = v17;
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v5 + 16))(v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
      v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      (*(v5 + 32))(v20 + v19, v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v21 = objc_allocWithZone(type metadata accessor for FloatingTabAction());

      v22 = sub_219BF53D4();

      v23 = sub_219BF53D4();
      v24 = swift_allocObject();
      *(v24 + 16) = sub_2191132DC;
      *(v24 + 24) = v20;
      v166 = sub_2191132F4;
      v167 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v163 = 1107296256;
      v25 = &block_descriptor_95;
LABEL_31:
      v164 = sub_218B66540;
      v165 = v25;
      v115 = _Block_copy(&aBlock);

      v36 = [v21 initWithIdentifier:v22 title:v23 image:0 handler:v115];
      _Block_release(v115);

      [v36 _setTabBarPlacement_];

      return v36;
    case 0xEu:
      v39 = v15[3];
      sub_219BE5F84();
      sub_219BF2394();
      v40 = sub_219BF2364();
      MEMORY[0x21CEC9110]();

      v41 = objc_opt_self();
      v42 = sub_219BF53D4();
      v43 = [v41 ts:v42 internalSystemImageNamed:?];

      v44 = objc_allocWithZone(type metadata accessor for FloatingTabElement());
      v45 = sub_219BF53D4();

      v46 = sub_219BF53D4();
      goto LABEL_34;
    case 0x10u:
      v16 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_18;
    case 0x11u:
      sub_219113448(v15, v12, type metadata accessor for FollowingPuzzleHubModel);
      sub_219BE5F84();
      v82 = sub_219BF53D4();
      v83 = [objc_opt_self() systemImageNamed_];

      v84 = objc_allocWithZone(type metadata accessor for FloatingTabElement());
      v85 = sub_219BF53D4();

      v86 = sub_219BF53D4();
      v87 = [v84 initWithIdentifier:v85 title:v86 image:v83];

      v36 = v87;
      [v36 setSubtitle_];
      [v36 _setTabBarPlacement_];

      sub_21910DB2C(v12, type metadata accessor for FollowingPuzzleHubModel);
      return v36;
    case 0x12u:
      v39 = v15[4];
      sub_219BE5F84();
      sub_219BF5114();
      v43 = sub_219BF5104();
      v116 = objc_allocWithZone(type metadata accessor for FloatingTabElement());
      v117 = sub_219BF53D4();

      v118 = sub_219BF53D4();
      v119 = [v116 initWithIdentifier:v117 title:v118 image:v43];

      v36 = v119;
      [v36 setSubtitle_];
      [v36 _setTabBarPlacement_];

      goto LABEL_35;
    case 0x13u:
      v39 = v15[2];
      sub_219BE5F84();
      type metadata accessor for Localized();
      v120 = swift_getObjCClassFromMetadata();
      v121 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();

      sub_219BF5114();
      v43 = sub_219BF5094();
      v44 = objc_allocWithZone(type metadata accessor for FloatingTabElement());
      v45 = sub_219BF53D4();

      v46 = sub_219BF53D4();
LABEL_34:

      v122 = [v44 initWithIdentifier:v45 title:v46 image:v43];

      v36 = v122;
      [v36 setSubtitle_];
      [v36 _setTabBarPlacement_];

LABEL_35:
LABEL_36:

      break;
    default:
      v16 = type metadata accessor for FollowingModel;
LABEL_18:
      sub_21910DB2C(v15, v16);
      v36 = 0;
      break;
  }

  return v36;
}

void sub_2191059B8(void *a1, void *a2, uint64_t a3, unsigned __int8 a4, double a5, double a6)
{
  sub_21910DAC8(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = [a1 image];
  if (!v16 || (v16, (v17 = [a1 image]) == 0) || ((v18 = v17, objc_msgSend(v17, sel_size), v20 = v19, v22 = v21, v18, v20 == a5) ? (v23 = v22 == a6) : (v23 = 0), !v23))
  {
    v24 = sub_219BF5BF4();
    (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
    sub_219BF5BD4();
    v25 = a1;
    v26 = v6;
    sub_218A472B0(a2, a3, a4);
    v27 = sub_219BF5BC4();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    *(v28 + 32) = v25;
    *(v28 + 40) = v26;
    *(v28 + 48) = a2;
    *(v28 + 56) = a3;
    *(v28 + 64) = a4;
    *(v28 + 72) = a5;
    *(v28 + 80) = a6;
    sub_218AB3D80(0, 0, v15, &unk_219C5D708, v28);
  }
}

void sub_219105BBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a1;
  v44 = a2;
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDC104();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v46 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v42 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC();
  v17 = v16;
  v45 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_hiddenTab;
  v21 = *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_hiddenTab);
  if (v21)
  {
    v39 = v8;
    v40 = v6;
    v22 = v21;
    v23 = [v22 _parent];
    if (!v23)
    {
LABEL_6:
      v31 = *(v3 + v20);
      *(v3 + v20) = 0;
      if (v31)
      {
        [v31 setHidden_];

        v22 = v31;
      }

      v8 = v39;

      v6 = v40;
      goto LABEL_9;
    }

    v24 = v23;
    v36 = v14;
    v37 = v7;
    v38 = v2;
    v25 = v22;
    v26 = [v24 _children];
    sub_2186C6148(0, &qword_280E8DAD8);
    v27 = sub_219BF5924();

    v47 = v27;
    v28 = sub_21910E130(&v47, v25);

    if (v47 >> 62)
    {
      v29 = sub_219BF7214();
      if (v29 >= v28)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v29 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29 >= v28)
      {
LABEL_5:
        sub_2189507F4(v28, v29);
        v30 = sub_219BF5904();

        [v24 _setChildren_];

        v7 = v37;
        v3 = v38;
        v14 = v36;
        goto LABEL_6;
      }
    }

    __break(1u);
    return;
  }

LABEL_9:
  v47 = *(v3 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider);
  sub_2187486B4(0);
  sub_2186D584C(&unk_280EE5550, sub_2187486B4);
  sub_219BE7B94();
  sub_219BEB1C4();
  v32 = v46;
  if ((*(v14 + 48))(v12, 1, v46) == 1)
  {
    (*(v45 + 8))(v19, v17);
    sub_21910DB2C(v12, sub_218A7BA30);
  }

  else
  {
    v33 = v42;
    (*(v14 + 32))();
    sub_219BEB2F4();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      (*(v14 + 8))(v33, v32);
      (*(v45 + 8))(v19, v17);
      sub_21910DB2C(v6, sub_218747BDC);
    }

    else
    {
      v34 = v41;
      (*(v8 + 32))(v41, v6, v7);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_2198FEEE8(v19, v33, v34);
        swift_unknownObjectRelease();
      }

      (*(v8 + 8))(v34, v7);
      (*(v14 + 8))(v33, v46);
      (*(v45 + 8))(v19, v17);
    }
  }
}

uint64_t sub_2191061A8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_218950B84();
    v2 = sub_219BE5F84();
    sub_219105BBC(v2, v3);
  }

  return result;
}

uint64_t sub_219106224(void *a1)
{
  v2 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v5 = type metadata accessor for FollowingAudioModel;
      return sub_21910DB2C(v4, v5);
    case 3u:
      v18 = *(*v4 + 16);
      v19 = *(v18 + 104);
      if (v19 == 255)
      {
        v23 = 0;
        v22 = 0x8000000219D04950;
        v20 = 0xD000000000000017;
      }

      else
      {
        v20 = *(v18 + 96);
        if (v19)
        {
          v21 = *(v18 + 80);
          sub_218FA396C(v21, *(v18 + 88), *(v18 + 96), 1);
          v22 = 0;
          v23 = 3;
          v20 = v21;
        }

        else
        {
          v24 = v20;
          v22 = 0;
          v23 = 1;
        }
      }

      v25 = [objc_opt_self() currentTraitCollection];
      if ([v25 userInterfaceIdiom] == 5)
      {
        v26 = 20.0;
      }

      else
      {
        v26 = 28.0;
      }

      v27 = [objc_opt_self() defaultMetrics];
      [v27 scaledValueForValue:v25 compatibleWithTraitCollection:v26];
      v29 = v28;

      sub_2191059B8(a1, v20, v22, v23, v29, v29);
      sub_218A264C8(v20, v22, v23);

    case 6u:
      v10 = *(*(*v4 + 24) + 16);
      v11 = objc_opt_self();
      swift_unknownObjectRetain();
      v12 = [v11 currentTraitCollection];
      if ([v12 userInterfaceIdiom] == 5)
      {
        v13 = 20.0;
      }

      else
      {
        v13 = 28.0;
      }

      goto LABEL_12;
    case 7u:
      v10 = *(*(*v4 + 24) + 16);
      v14 = objc_opt_self();
      swift_unknownObjectRetain();
      v12 = [v14 currentTraitCollection];
      if ([v12 userInterfaceIdiom] == 5)
      {
        v13 = 20.0;
      }

      else
      {
        v13 = 28.0;
      }

LABEL_12:
      v15 = [objc_opt_self() defaultMetrics];
      [v15 scaledValueForValue:v12 compatibleWithTraitCollection:v13];
      v17 = v16;

      sub_2191059B8(a1, v10, 0, 3u, v17, v17);

      return swift_unknownObjectRelease();
    case 0xBu:

      sub_2191139C0(0, &qword_280ECED10, type metadata accessor for FollowingButtonModel, sub_218748D40);
      v8 = *(v7 + 48);
      sub_218748D40();
      return (*(*(v9 - 8) + 8))(&v4[v8], v9);
    case 0x10u:
      v5 = type metadata accessor for FollowingMySportsModel;
      return sub_21910DB2C(v4, v5);
    case 0x11u:
      v5 = type metadata accessor for FollowingPuzzleHubModel;
      return sub_21910DB2C(v4, v5);
    default:
      v5 = type metadata accessor for FollowingModel;
      return sub_21910DB2C(v4, v5);
  }
}

uint64_t sub_219106658(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  *(v10 + 104) = a10;
  *(v10 + 32) = a8;
  *(v10 + 40) = a9;
  *(v10 + 16) = a6;
  *(v10 + 24) = a7;
  sub_219BF5BD4();
  *(v10 + 64) = sub_219BF5BC4();
  v12 = sub_219BF5B44();
  *(v10 + 72) = v12;
  *(v10 + 80) = v11;

  return MEMORY[0x2822009F8](sub_2191066FC, v12, v11);
}

uint64_t sub_2191066FC()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_2191067A8;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 104);

  return sub_218A45604(v5, v4, v6, v2, v3);
}

uint64_t sub_2191067A8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_219106950;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_2191068D4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2191068D4()
{
  v1 = *(v0 + 96);

  [*(v0 + 16) setImage_];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_219106950()
{

  [*(v0 + 16) setImage_];
  v1 = *(v0 + 8);

  return v1();
}

void sub_219106B30(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  sub_219BE6A64();
  sub_218950B84();
  v9 = v8;
  v10 = *(v8 - 8);
  if ((*(v10 + 48))(v7, 1, v8) == 1)
  {
    sub_21910DB2C(v7, sub_218A7BA30);
  }

  else
  {
    sub_219BE5FC4();
    (*(v10 + 8))(v7, v9);
    v11 = sub_218F37A90();
    sub_21910DB2C(v4, type metadata accessor for FollowingModel);
    if (v11)
    {
      v12 = *(v11 + 24);

      v13 = *(v12 + 16);
      swift_unknownObjectRetain();

      v14 = [v13 identifier];
      swift_unknownObjectRelease();
      v15 = sub_219BF5414();
      v17 = v16;

      *a1 = v15;
      a1[1] = v17;
      return;
    }
  }

  *a1 = 0;
  a1[1] = 0;
}

uint64_t sub_219106D60(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v184) = a2;
  v183 = sub_219BEB9A4();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v6 - 8);
  v200 = &v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v204 = v8;
  v203 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v11 - 8);
  v209 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v14 = v13;
  v212 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v207 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC();
  v17 = v16;
  v210 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v211 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_219BEB6F4();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_219BEB924();
  v201 = *(v202 - 8);
  v20 = MEMORY[0x28223BE20](v202);
  v180 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v179 = &v177 - v23;
  MEMORY[0x28223BE20](v22);
  v193 = &v177 - v24;
  sub_2191138A4(0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v194 = &v177 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v195 = (&v177 - v28);
  v206 = sub_219BEB724();
  v199 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v205 = &v177 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_219BEBA24();
  v216 = *(v214 - 8);
  v30 = MEMORY[0x28223BE20](v214);
  v192 = &v177 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v217 = &v177 - v32;
  v33 = sub_219BEB864();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v187 = &v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v177 - v38;
  MEMORY[0x21CECD4C0](v37);
  LODWORD(v215) = sub_219BEB854();
  v40 = *(v34 + 8);
  v41 = v40(v39, v33);
  MEMORY[0x21CECD4C0](v41);
  sub_219BEB834();
  v42 = v40(v39, v33);
  MEMORY[0x21CECD4C0](v42);
  v43 = sub_219BEB844();
  v185 = v39;
  v189 = v33;
  v188 = v34 + 8;
  v186 = v40;
  v40(v39, v33);
  v208 = [v43 activeAppearance];

  v44 = [a1 _tab];
  type metadata accessor for FloatingTabAction();
  v45 = swift_dynamicCastClass();
  if (v45)
  {
    v46 = v45;
    if (v215)
    {
      v47 = 0;
    }

    else
    {
      v178 = v10;
      v213 = v14;
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider), *(v3 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider + 24));
      v14 = v213;
      v10 = v178;
      v47 = sub_219BEED54();
    }

    *(v46 + OBJC_IVAR____TtC7NewsUI217FloatingTabAction__isEnabled) = v47 & 1;
  }

  v48 = sub_21910B17C(v3, a1);
  sub_219BF6744();
  v49 = sub_219BEB934();
  sub_219BEB8E4();
  v49(&v221, 0);
  v50 = sub_219BEB9B4();
  sub_219BEB974();
  v50(&v221, 0);
  v51 = &selRef_filteredReasons;
  v52 = [a1 _tab];
  v53 = sub_2194EDD04(v52);

  if (!v53)
  {
    v191 = v3;
    v213 = v14;
    v190 = v17;
    v76 = objc_opt_self();
    v77 = v208 == 1;
    LODWORD(v208) = v48;
    v78 = v10;
    if (v77)
    {
      v79 = &selRef_placeholderTextColor;
      if ((v215 & 1) == 0)
      {
        v79 = &selRef_secondaryLabelColor;
      }

      v80 = [v76 *v79];
    }

    else
    {
      v80 = [v76 tertiaryLabelColor];
    }

    v81 = v80;
    v82 = sub_219BEB9D4();
    sub_219BEB914();
    v82(&v221, 0);
    *&v221 = *(v191 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider);
    sub_2187486B4(0);
    sub_2186D584C(&unk_280EE5550, sub_2187486B4);
    v83 = v211;
    sub_219BE7B94();
    v84 = [a1 _tab];
    v85 = [v84 _identifier];

    sub_219BF5414();
    v86 = v83;
    v87 = v209;
    v88 = v190;
    sub_219BEB244();
    v89 = v87;

    v90 = v87;
    v91 = v213;
    if ((*(v212 + 48))(v90, 1, v213) == 1)
    {
      (*(v210 + 8))(v86, v88);
      sub_21910DB2C(v89, sub_218A2D984);
LABEL_61:
      v57 = v214;
      goto LABEL_62;
    }

    v92 = v207;
    (*(v212 + 32))(v207, v89, v91);
    v93 = [a1 _tab];
    v94 = [v93 _identifier];

    sub_219BF5414();
    v95 = v213;
    v96 = v200;
    sub_219BE6A64();
    v97 = v96;

    v98 = v203;
    v99 = v204;
    if ((*(v203 + 48))(v97, 1, v204) == 1)
    {
      (*(v212 + 8))(v92, v95);
      (*(v210 + 8))(v211, v88);
      sub_21910DB2C(v97, sub_218A7BA30);
      goto LABEL_61;
    }

    v100 = v78;
    (*(v98 + 32))(v78, v97, v99);
    sub_219BE6934();
    v224 = v219[3];
    v225 = v219[4];
    v101 = v220;
    v226 = v220;
    v221 = v219[0];
    v222 = v219[1];
    v223 = v219[2];
    sub_2189C3F04(&v221);
    if ((v101 - 2) >= 8)
    {
      v103 = v191;
      if (v101 == 1)
      {
        v107 = sub_219BEB9B4();
        sub_219BEB974();
        v107(v218, 0);
      }

LABEL_42:
      v117 = [a1 v51[160]];
      v118 = v207;
      v119 = sub_21910F088(v207, v100);

      if (!v119)
      {
        (*(v98 + 8))(v100, v204);
        (*(v212 + 8))(v118, v213);
        (*(v210 + 8))(v211, v88);
        goto LABEL_61;
      }

      v209 = v119;
      if (v184)
      {

        sub_219BF6714();
        v120 = [a1 v51[160]];
        v121 = [v120 _badgeValue];

        if (v121)
        {
          v122 = sub_219BF5414();
          v124 = v123;

          v125 = HIBYTE(v124) & 0xF;
          if ((v124 & 0x2000000000000000) == 0)
          {
            v125 = v122 & 0xFFFFFFFFFFFFLL;
          }

          if (v125)
          {
            sub_21910DAC8(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
            v126 = *(sub_219BEB824() - 8);
            v200 = ((*(v126 + 80) + 32) & ~*(v126 + 80));
            v184 = swift_allocObject();
            *(v184 + 16) = xmmword_219C09BA0;
            v127 = v205;
            (*(v199 + 104))(v205, *MEMORY[0x277D74A90], v206);
            v128 = *MEMORY[0x277D767C8];
            v183 = v122;
            v129 = v195;
            *v195 = v128;
            v130 = *MEMORY[0x277D74AB8];
            v131 = sub_219BEB754();
            v132 = *(v131 - 8);
            (*(v132 + 104))(v129, v130, v131);
            (*(v132 + 56))(v129, 0, 1, v131);
            v133 = v192;
            sub_219BEB9F4();
            v134 = v193;
            sub_219BEB944();
            (*(v216 + 8))(v133, v214);
            v135 = sub_219BEB8F4();
            (*(v201 + 8))(v134, v202);
            sub_2191138D8(v129, v194, sub_2191138A4);
            v136 = [objc_opt_self() secondaryLabelColor];
            v137 = v135;
            v138 = v196;
            v98 = v203;
            sub_219BEB6E4();
            v139 = v184;
            sub_219BEB7D4();

            v103 = v191;

            (*(v197 + 8))(v138, v198);
            sub_21910DB2C(v129, sub_2191138A4);
            v140 = v127;
            v51 = &selRef_filteredReasons;
            (*(v199 + 8))(v140, v206);
            *&v219[0] = sub_219BF6704();
            sub_2191EF82C(v139);
            sub_219BF6714();
          }

          else
          {
          }
        }
      }

      v141 = [a1 v51[160]];
      v142 = v185;
      MEMORY[0x21CECD4C0]();
      v143 = sub_219BEB844();
      v144 = v142;
      v145 = v189;
      v146 = v186;
      v186(v144, v189);
      v147 = sub_21910F1F0(v143);
      v149 = v148;

      v150 = v187;
      MEMORY[0x21CECD4C0]();
      v151 = sub_219BEB844();
      v146(v150, v145);
      if ([v151 userInterfaceIdiom] == 5)
      {
        v152 = 20.0;
      }

      else
      {
        v152 = 28.0;
      }

      v153 = [objc_opt_self() defaultMetrics];
      [v153 scaledValueForValue:v151 compatibleWithTraitCollection:v152];
      v155 = v154;

      v156 = sub_219BEB9B4();
      sub_219BEB964();
      v156(v219, 0);
      v157 = sub_219BEB9B4();
      sub_219BEB954();
      v157(v219, 0);
      v158 = [v141 image];
      if (!v158)
      {
        v165 = *(v103 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_placeholderImage);
        sub_219BEBA14();

        (*(v98 + 8))(v100, v204);
        (*(v212 + 8))(v207, v213);
        (*(v210 + 8))(v211, v190);
        goto LABEL_61;
      }

      v159 = v158;
      [v158 size];
      v57 = v214;
      if (v161 == v155 && v160 == v155)
      {
        __swift_project_boxed_opaque_existential_1((v103 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider), *(v103 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider + 24));
        v162 = sub_219BEED44();
        if (v215)
        {
          v163 = v210;
          if (((v209[33] | v162) & 1) == 0)
          {
LABEL_59:
            v164 = v159;
LABEL_71:
            v176 = v213;
            sub_219BEBA14();

            (*(v203 + 8))(v100, v204);
            (*(v212 + 8))(v207, v176);
            (*(v163 + 8))(v211, v190);
            goto LABEL_62;
          }
        }

        else
        {
          v163 = v210;
          if (v208)
          {
            goto LABEL_59;
          }
        }

        v175 = [objc_opt_self() placeholderTextColor];
        sub_219BF6D94();

        goto LABEL_71;
      }

      v170 = sub_219BF6D84();
      __swift_project_boxed_opaque_existential_1((v103 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider), *(v103 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider + 24));
      v171 = sub_219BEED44();
      if (v215)
      {
        v172 = v210;
        if (((v209[33] | v171) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v172 = v210;
        if (v208)
        {
LABEL_68:
          sub_219BEBA14();
          sub_2191059B8(v141, *(v209 + 2), *(v209 + 3), v209[32], v147, v149);

          (*(v203 + 8))(v100, v204);
          (*(v212 + 8))(v207, v213);
          (*(v172 + 8))(v211, v190);

          goto LABEL_62;
        }
      }

      v173 = v100;
      v174 = [objc_opt_self() placeholderTextColor];
      sub_219BF6D94();

      v100 = v173;
      goto LABEL_68;
    }

    v102 = sub_219BED0C4();
    v103 = v191;
    if (v102)
    {
      goto LABEL_42;
    }

    v104 = v179;
    sub_219BEB944();
    v105 = (v103 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_offlineProvider);
    __swift_project_boxed_opaque_existential_1(v105, v105[3]);
    v106 = sub_219BEED44();
    v178 = v100;
    if (v106)
    {
      if (!(v215 & 1 | ((v208 & 1) == 0)))
      {
LABEL_25:
        sub_219BEB904();
        goto LABEL_31;
      }
    }

    else if ((v215 | v208))
    {
      goto LABEL_25;
    }

    v108 = [objc_opt_self() placeholderTextColor];
LABEL_31:
    v109 = *(v201 + 8);
    v109(v104, v202);
    v110 = sub_219BEB934();
    sub_219BEB914();
    v110(v219, 0);
    v111 = v180;
    sub_219BEB9E4();
    __swift_project_boxed_opaque_existential_1(v105, v105[3]);
    if (sub_219BEED44())
    {
      if (!(v215 & 1 | ((v208 & 1) == 0)))
      {
LABEL_33:
        sub_219BEB904();
        goto LABEL_36;
      }
    }

    else if ((v215 | v208))
    {
      goto LABEL_33;
    }

    v112 = [objc_opt_self() placeholderTextColor];
LABEL_36:
    v109(v111, v202);
    v113 = sub_219BEB9D4();
    sub_219BEB914();
    v113(v219, 0);
    v114 = v181;
    sub_219BEB9C4();
    __swift_project_boxed_opaque_existential_1(v105, v105[3]);
    if (sub_219BEED44())
    {
      v98 = v203;
      v103 = v191;
      v51 = &selRef_filteredReasons;
      v100 = v178;
      if (!(v215 & 1 | ((v208 & 1) == 0)))
      {
LABEL_38:
        sub_219BEB984();
LABEL_41:
        (*(v182 + 8))(v114, v183);
        v116 = sub_219BEB9B4();
        sub_219BEB994();
        v116(v219, 0);
        v88 = v190;
        goto LABEL_42;
      }
    }

    else
    {
      v98 = v203;
      v103 = v191;
      v51 = &selRef_filteredReasons;
      v100 = v178;
      if ((v215 | v208))
      {
        goto LABEL_38;
      }
    }

    v115 = [objc_opt_self() placeholderTextColor];
    goto LABEL_41;
  }

  v54 = sub_219BEB9B4();
  sub_219BEB974();
  v54(&v221, 0);
  sub_219BF6714();
  v55 = [a1 _tab];
  v56 = [v55 _badgeValue];

  v57 = v214;
  if (v56)
  {
    v58 = sub_219BF5414();
    v60 = v59;

    v61 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v61 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {
      sub_21910DAC8(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      v62 = *(sub_219BEB824() - 8);
      v215 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v213 = swift_allocObject();
      *(v213 + 16) = xmmword_219C09BA0;
      v63 = v199;
      (*(v199 + 104))(v205, *MEMORY[0x277D74A90], v206);
      v64 = *MEMORY[0x277D767C8];
      v212 = v58;
      v65 = v195;
      *v195 = v64;
      v66 = *MEMORY[0x277D74AB8];
      v67 = sub_219BEB754();
      v68 = *(v67 - 8);
      (*(v68 + 104))(v65, v66, v67);
      (*(v68 + 56))(v65, 0, 1, v67);
      v69 = v192;
      sub_219BEB9F4();
      v70 = v193;
      sub_219BEB944();
      (*(v216 + 8))(v69, v57);
      v71 = sub_219BEB8F4();
      (*(v201 + 8))(v70, v202);
      sub_2191138D8(v65, v194, sub_2191138A4);
      v72 = [objc_opt_self() secondaryLabelColor];
      v73 = v71;
      v74 = v196;
      sub_219BEB6E4();
      v75 = v205;
      sub_219BEB7D4();

      (*(v197 + 8))(v74, v198);
      sub_21910DB2C(v65, sub_2191138A4);
      (*(v63 + 8))(v75, v206);
      sub_219BF6714();
    }

    else
    {
    }
  }

LABEL_62:
  *(&v222 + 1) = v57;
  *&v223 = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v221);
  v167 = v216;
  v168 = v217;
  (*(v216 + 16))(boxed_opaque_existential_1, v217, v57);
  sub_219BF6734();
  return (*(v167 + 8))(v168, v57);
}

id sub_219108BB4(uint64_t a1)
{
  sub_218950B84();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v4 + 32))(v10 + v9, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  v11 = sub_219BF53D4();

  aBlock[4] = sub_2191136B8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21910D2FC;
  aBlock[3] = &block_descriptor_112;
  v12 = _Block_copy(aBlock);
  v13 = [objc_opt_self() contextualActionWithStyle:1 title:v11 handler:v12];

  _Block_release(v12);

  return v13;
}

id sub_219108E64(uint64_t a1)
{
  sub_218950B84();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v4 + 32))(v10 + v9, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  v11 = sub_219BF53D4();

  aBlock[4] = sub_21911388C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21910D2FC;
  aBlock[3] = &block_descriptor_122_0;
  v12 = _Block_copy(aBlock);
  v13 = [objc_opt_self() contextualActionWithStyle:1 title:v11 handler:v12];

  _Block_release(v12);

  return v13;
}

id sub_219109114(uint64_t a1)
{
  sub_218950B84();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v4 + 32))(v10 + v9, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  v11 = sub_219BF53D4();

  aBlock[4] = sub_2191135D4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21910D2FC;
  aBlock[3] = &block_descriptor_99;
  v12 = _Block_copy(aBlock);
  v13 = [objc_opt_self() contextualActionWithStyle:1 title:v11 handler:v12];

  _Block_release(v12);

  return v13;
}

uint64_t sub_2191093C8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_218950ACC();
    sub_2186D584C(&qword_280EDC640, type metadata accessor for FollowingModel);
    v4 = sub_219BEB304();
    sub_218950928();
    sub_219BE6934();
    v14[3] = v11;
    v14[4] = v12;
    v15 = v13;
    v14[0] = v8;
    v14[1] = v9;
    v14[2] = v10;
    v5 = sub_2199FCA40();
    sub_2189C3F04(v14);
    v6 = sub_2193FD990(a2, v4, v5);
    swift_unknownObjectRelease();
    if (v6)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        sub_219BE6184();
        v7 = objc_allocWithZone(sub_219BE7D34());
        return sub_219BE7D24();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_219109548(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v4 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CECE0F0](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      MEMORY[0x21CECC690](v5);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      ++v4;
      if (v6 == i)
      {
        sub_2186C6148(0, &qword_280E8DAF0);
        return sub_219BF6BF4();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return 0;
}

void *sub_2191096A4(uint64_t a1, uint64_t a2)
{
  v125 = *(v2 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_mainTabManager);
  v5 = [*(v125 + 72) _selectedElement];
  if (!v5)
  {
    goto LABEL_73;
  }

  v6 = v5;
  v7 = v5;
  v8 = [v7 _identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  v3 = sub_218D20388(v9, v11);
  v13 = v12;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {

        if (v13 == 2)
        {
          return v6;
        }
      }

      else
      {

        if (v13 == 3)
        {
          return v6;
        }
      }

      goto LABEL_32;
    }

    if (!a2)
    {

      if (!v13)
      {
        return v6;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {

      if (v13 == 1)
      {
        return v6;
      }

      goto LABEL_32;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {

        if (v13 == 4)
        {
          return v6;
        }
      }

      else
      {

        if (v13 == 5)
        {
          return v6;
        }
      }

      goto LABEL_32;
    }

    switch(a2)
    {
      case 6:

        if (v13 == 6)
        {
          return v6;
        }

        goto LABEL_32;
      case 7:

        if (v13 == 7)
        {
          return v6;
        }

        goto LABEL_32;
      case 8:

        if (v13 == 8)
        {
          return v6;
        }

        goto LABEL_32;
    }
  }

  if (v12 < 9)
  {

LABEL_32:
    sub_218AEED68(v3, v13);
    goto LABEL_33;
  }

  v23 = a2;
  v24 = sub_218D1FDC0(a1, a2);
  v26 = v25;
  if (v24 == sub_218D1FDC0(v3, v13) && v26 == v27)
  {
    sub_218AEED68(v3, v13);

    return v6;
  }

  v29 = sub_219BF78F4();
  sub_218AEED68(v3, v13);

  a2 = v23;
  if (v29)
  {
    return v6;
  }

LABEL_33:
  type metadata accessor for FloatingTabGroup();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    goto LABEL_72;
  }

  v15 = [v14 _selectedElement];
  if (!v15)
  {
    goto LABEL_72;
  }

  v6 = v15;
  v16 = [v15 identifier];
  v17 = sub_219BF5414();
  v19 = v18;

  v3 = sub_218D20388(v17, v19);
  v21 = v20;
  if (a2 <= 3)
  {
    v22 = a1;
    if (a2 > 1)
    {
      if (a2 == 2)
      {

        if (v21 == 2)
        {
          return v6;
        }
      }

      else
      {

        if (v21 == 3)
        {
          return v6;
        }
      }
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_70;
      }

      if (v21 == 1)
      {
        return v6;
      }
    }

    else
    {

      if (!v21)
      {
        return v6;
      }
    }

LABEL_69:

    sub_218AEED68(v3, v21);
LABEL_73:
    v30 = [*(v125 + 72) _children];
    sub_2186C6148(0, &qword_280E8DAD8);
    v31 = sub_219BF5924();

    if (v31 >> 62)
    {
      goto LABEL_271;
    }

    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
LABEL_272:

      if (qword_280EE6048 != -1)
      {
        swift_once();
      }

      v107 = sub_219BE5434();
      __swift_project_value_buffer(v107, qword_280F62748);
      sub_218D1FDAC(a1, a2);
      v108 = sub_219BE5414();
      v109 = sub_219BF61F4();
      sub_218AEED68(a1, a2);
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v132[0] = v111;
        *v110 = 136446210;
        v112 = sub_218D1FC0C(a1, a2);
        v114 = sub_2186D1058(v112, v113, v132);

        *(v110 + 4) = v114;
        _os_log_impl(&dword_2186C1000, v108, v109, "Unable to ensure selection for %{public}s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v111);
        MEMORY[0x21CECF960](v111, -1, -1);
        MEMORY[0x21CECF960](v110, -1, -1);
      }

      [*(v125 + 72) _setSelectedElement_];
      return 0;
    }

LABEL_75:
    v33 = 0;
    v126 = v32;
    v127 = v31 & 0xC000000000000001;
    v122 = v31 + 32;
    v123 = v31 & 0xFFFFFFFFFFFFFF8;
    v118 = v31;
    while (1)
    {
      if (v127)
      {
        v34 = MEMORY[0x21CECE0F0](v33, v31);
      }

      else
      {
        if (v33 >= *(v123 + 16))
        {
          goto LABEL_270;
        }

        v34 = *(v122 + 8 * v33);
      }

      v35 = v34;
      if (__OFADD__(v33++, 1))
      {
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        v32 = sub_219BF7214();
        if (!v32)
        {
          goto LABEL_272;
        }

        goto LABEL_75;
      }

      v37 = type metadata accessor for FloatingTabElement();
      v38 = swift_dynamicCastClass();
      if (v38)
      {
        v6 = v38;
        v37 = v35;
        v39 = [v6 _identifier];
        v3 = sub_219BF5414();
        v41 = v40;

        v42 = v3 == 0x6546756F59726F46 && v41 == 0xEA00000000006465;
        if (v42 || (sub_219BF78F4() & 1) != 0)
        {

          v3 = 0;
          v41 = 0;
        }

        else if (v3 == 0xD000000000000010 && 0x8000000219CDD430 == v41 || (sub_219BF78F4() & 1) != 0)
        {

          v3 = 0;
          v41 = 1;
        }

        else if (v3 == 0x6565466465766153 && v41 == 0xE900000000000064 || (sub_219BF78F4() & 1) != 0)
        {

          v3 = 0;
          v41 = 2;
        }

        else if (v3 == 0x4679726F74736948 && v41 == 0xEB00000000646565 || (sub_219BF78F4() & 1) != 0)
        {

          v3 = 0;
          v41 = 3;
        }

        else if (v3 == 0x7374726F7053796DLL && v41 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
        {

          v3 = 0;
          v41 = 4;
        }

        else if (v3 == 0x7548656C7A7A7570 && v41 == 0xE900000000000062 || (sub_219BF78F4() & 1) != 0)
        {

          v3 = 0;
          v41 = 5;
        }

        else if (v3 == 0x627548646F6F66 && v41 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
        {

          v3 = 0;
          v41 = 6;
        }

        else if (v3 == 0x6957646572616853 && v41 == 0xED0000756F596874)
        {

          v3 = 0;
          v41 = 7;
        }

        else if (sub_219BF78F4())
        {

          v3 = 0;
          v41 = 7;
          v31 = v118;
        }

        else if (v3 == 0x6565466F69647541 && v41 == 0xE900000000000064)
        {

          v3 = 0;
          v41 = 8;
          v31 = v118;
        }

        else
        {
          v31 = v118;
          if (sub_219BF78F4())
          {

            v3 = 0;
            v41 = 8;
          }
        }

        if (a2 <= 3)
        {
          if (a2 > 1)
          {
            if (a2 == 2)
            {
              if (v41 == 2)
              {
                goto LABEL_251;
              }
            }

            else if (v41 == 3)
            {
              goto LABEL_251;
            }

            goto LABEL_77;
          }

          if (!a2)
          {
            if (!v41)
            {
              goto LABEL_251;
            }

LABEL_77:

            sub_218AEED68(v3, v41);
            goto LABEL_78;
          }

          if (a2 == 1)
          {
            if (v41 == 1)
            {
              goto LABEL_251;
            }

            goto LABEL_77;
          }
        }

        else
        {
          if (a2 <= 5)
          {
            if (a2 == 4)
            {
              if (v41 == 4)
              {
                goto LABEL_251;
              }
            }

            else if (v41 == 5)
            {
              goto LABEL_251;
            }

            goto LABEL_77;
          }

          switch(a2)
          {
            case 6:
              if (v41 == 6)
              {
                goto LABEL_251;
              }

              goto LABEL_77;
            case 7:
              if (v41 == 7)
              {
                goto LABEL_251;
              }

              goto LABEL_77;
            case 8:
              if (v41 == 8)
              {
                goto LABEL_251;
              }

              goto LABEL_77;
          }
        }

        if (v41 < 9)
        {
          goto LABEL_77;
        }

        v48 = a2;
        v60 = sub_218D1FDC0(a1, a2);
        v62 = v61;
        if (v60 == sub_218D1FDC0(v3, v41) && v62 == v63)
        {
LABEL_265:
          sub_218AEED68(v3, v41);

LABEL_266:
          a2 = v48;
LABEL_251:

          [*(v125 + 72) _setSelectedElement_];
          if (qword_280EE6048 != -1)
          {
            swift_once();
          }

          v87 = sub_219BE5434();
          __swift_project_value_buffer(v87, qword_280F62748);
          v69 = v37;
          sub_218D1FDAC(a1, a2);
          v70 = sub_219BE5414();
          v88 = sub_219BF6214();
          sub_218AEED68(a1, a2);

          if (os_log_type_enabled(v70, v88))
          {
            v89 = a2;
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v132[0] = v91;
            *v90 = 136446466;
            v92 = sub_218D1FC0C(a1, v89);
            v94 = sub_2186D1058(v92, v93, v132);

            *(v90 + 4) = v94;
            *(v90 + 12) = 2082;
            v95 = [v6 _identifier];
            v96 = sub_219BF5414();
            v98 = v97;

            v99 = sub_2186D1058(v96, v98, v132);

            *(v90 + 14) = v99;
            _os_log_impl(&dword_2186C1000, v70, v88, "Ensure selection for %{public}s to tab element %{public}s", v90, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CECF960](v91, -1, -1);
            MEMORY[0x21CECF960](v90, -1, -1);
          }

          goto LABEL_255;
        }

        v64 = sub_219BF78F4();
        sub_218AEED68(v3, v41);

        if (v64)
        {
          goto LABEL_266;
        }

        a2 = v48;
LABEL_213:
        v31 = v118;
      }

      else
      {
        type metadata accessor for FloatingTabGroup();
        v43 = swift_dynamicCastClass();
        if (v43)
        {
          v44 = v43;
          v121 = v35;
          v119 = v44;
          v45 = [v44 _children];
          v41 = sub_219BF5924();

          if (!(v41 >> 62))
          {
            v6 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v6)
            {
              goto LABEL_101;
            }

            goto LABEL_235;
          }

          v6 = sub_219BF7214();
          if (!v6)
          {
LABEL_235:

            goto LABEL_78;
          }

LABEL_101:
          v31 = 0;
          v131 = v41 & 0xC000000000000001;
          v128 = v41 & 0xFFFFFFFFFFFFFF8;
          v130 = v41;
          while (2)
          {
            if (v131)
            {
              v46 = MEMORY[0x21CECE0F0](v31, v41);
            }

            else
            {
              if (v31 >= *(v128 + 16))
              {
                __break(1u);
                goto LABEL_269;
              }

              v46 = *(v41 + 8 * v31 + 32);
            }

            v47 = v46;
            v48 = (v31 + 1);
            if (__OFADD__(v31, 1))
            {
              __break(1u);
              goto LABEL_265;
            }

            v49 = swift_dynamicCastClass();
            if (v49)
            {
              v50 = v49;
              v3 = v47;
              v129 = v50;
              v51 = [v50 _identifier];
              v52 = sub_219BF5414();
              v54 = v53;

              v55 = v52 == 0x6546756F59726F46 && v54 == 0xEA00000000006465;
              if (v55 || (sub_219BF78F4() & 1) != 0)
              {

                v52 = 0;
                v54 = 0;
              }

              else if (v52 == 0xD000000000000010 && 0x8000000219CDD430 == v54 || (sub_219BF78F4() & 1) != 0)
              {

                v52 = 0;
                v54 = 1;
              }

              else if (v52 == 0x6565466465766153 && v54 == 0xE900000000000064 || (sub_219BF78F4() & 1) != 0)
              {

                v52 = 0;
                v54 = 2;
              }

              else if (v52 == 0x4679726F74736948 && v54 == 0xEB00000000646565 || (sub_219BF78F4() & 1) != 0)
              {

                v52 = 0;
                v54 = 3;
              }

              else if (v52 == 0x7374726F7053796DLL && v54 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
              {

                v52 = 0;
                v54 = 4;
              }

              else if (v52 == 0x7548656C7A7A7570 && v54 == 0xE900000000000062 || (sub_219BF78F4() & 1) != 0)
              {

                v52 = 0;
                v54 = 5;
              }

              else if (v52 == 0x627548646F6F66 && v54 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
              {

                v52 = 0;
                v54 = 6;
              }

              else if (v52 == 0x6957646572616853 && v54 == 0xED0000756F596874 || (sub_219BF78F4() & 1) != 0)
              {

                v52 = 0;
                v54 = 7;
              }

              else if (v52 == 0x6565466F69647541 && v54 == 0xE900000000000064 || (sub_219BF78F4() & 1) != 0)
              {

                v52 = 0;
                v54 = 8;
              }

              if (a2 <= 3)
              {
                if (a2 > 1)
                {
                  if (a2 == 2)
                  {
                    if (v54 == 2)
                    {
                      goto LABEL_246;
                    }
                  }

                  else if (v54 == 3)
                  {
                    goto LABEL_246;
                  }
                }

                else if (a2)
                {
                  if (a2 != 1)
                  {
                    goto LABEL_148;
                  }

                  if (v54 == 1)
                  {
                    goto LABEL_246;
                  }
                }

                else if (!v54)
                {
                  goto LABEL_246;
                }
              }

              else if (a2 <= 5)
              {
                if (a2 == 4)
                {
                  if (v54 == 4)
                  {
                    goto LABEL_246;
                  }
                }

                else if (v54 == 5)
                {
                  goto LABEL_246;
                }
              }

              else
              {
                switch(a2)
                {
                  case 6:
                    if (v54 == 6)
                    {
                      goto LABEL_246;
                    }

                    break;
                  case 7:
                    if (v54 == 7)
                    {
                      goto LABEL_246;
                    }

                    break;
                  case 8:
                    if (v54 == 8)
                    {
                      goto LABEL_246;
                    }

                    break;
                  default:
LABEL_148:
                    if (v54 < 9)
                    {
                      break;
                    }

                    v117 = a2;
                    v56 = sub_218D1FDC0(a1, a2);
                    v58 = v57;
                    if (v56 == sub_218D1FDC0(v52, v54) && v58 == v59)
                    {
                      sub_218AEED68(v52, v54);

LABEL_257:
                      a2 = v117;
LABEL_246:
                      v65 = a2;

                      v6 = v129;
                      [v119 _setSelectedElement_];

                      [*(v125 + 72) _setSelectedElement_];
                      if (qword_280EE6048 != -1)
                      {
                        swift_once();
                      }

                      v66 = sub_219BE5434();
                      __swift_project_value_buffer(v66, qword_280F62748);
                      v67 = v121;
                      v68 = v65;
                      sub_218D1FDAC(a1, v65);
                      v69 = v3;
                      v70 = sub_219BE5414();
                      v71 = sub_219BF6214();
                      sub_218AEED68(a1, v68);

                      if (os_log_type_enabled(v70, v71))
                      {
                        v72 = swift_slowAlloc();
                        v73 = swift_slowAlloc();
                        v132[0] = v73;
                        *v72 = 136446722;
                        v74 = sub_218D1FC0C(a1, v68);
                        v76 = sub_2186D1058(v74, v75, v132);

                        *(v72 + 4) = v76;
                        *(v72 + 12) = 2082;
                        v77 = [v129 _identifier];
                        v78 = sub_219BF5414();
                        v80 = v79;

                        v81 = sub_2186D1058(v78, v80, v132);

                        *(v72 + 14) = v81;
                        *(v72 + 22) = 2082;
                        v82 = [v119 _identifier];
                        v83 = sub_219BF5414();
                        v85 = v84;

                        v86 = sub_2186D1058(v83, v85, v132);
                        v6 = v129;

                        *(v72 + 24) = v86;
                        _os_log_impl(&dword_2186C1000, v70, v71, "Ensure selection for %{public}s to tab element %{public}s in group %{public}s", v72, 0x20u);
                        swift_arrayDestroy();
                        MEMORY[0x21CECF960](v73, -1, -1);
                        MEMORY[0x21CECF960](v72, -1, -1);

                        return v6;
                      }

LABEL_255:
                      return v6;
                    }

                    v116 = sub_219BF78F4();
                    sub_218AEED68(v52, v54);

                    if (v116)
                    {
                      goto LABEL_257;
                    }

                    a2 = v117;
LABEL_150:
                    v41 = v130;
LABEL_103:
                    ++v31;
                    if (v48 == v6)
                    {

                      goto LABEL_213;
                    }

                    continue;
                }
              }

              sub_218AEED68(v52, v54);
              goto LABEL_150;
            }

            break;
          }

          goto LABEL_103;
        }
      }

LABEL_78:
      if (v33 == v126)
      {
        goto LABEL_272;
      }
    }
  }

  v22 = a1;
  if (a2 <= 5)
  {
    if (a2 == 4)
    {

      if (v21 == 4)
      {
        return v6;
      }
    }

    else
    {

      if (v21 == 5)
      {
        return v6;
      }
    }

    goto LABEL_69;
  }

  switch(a2)
  {
    case 6:

      if (v21 == 6)
      {
        return v6;
      }

      goto LABEL_69;
    case 7:

      if (v21 == 7)
      {
        return v6;
      }

      goto LABEL_69;
    case 8:

      if (v21 == 8)
      {
        return v6;
      }

      goto LABEL_69;
  }

LABEL_70:
  if (v20 < 9)
  {

    sub_218AEED68(v3, v21);
LABEL_72:

    goto LABEL_73;
  }

  v100 = a2;
  v101 = sub_218D1FDC0(v22, a2);
  v103 = v102;
  if (v101 == sub_218D1FDC0(v3, v21) && v103 == v104)
  {
    sub_218AEED68(v3, v21);

    return v6;
  }

  v106 = sub_219BF78F4();
  sub_218AEED68(v3, v21);

  if ((v106 & 1) == 0)
  {

    a2 = v100;
    goto LABEL_73;
  }

  return v6;
}

void sub_21910ADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [*(*(Strong + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_mainTabManager) + 72) _children];
    sub_2186C6148(0, &qword_280E8DAD8);
    v11 = sub_219BF5924();

    if (v11 >> 62)
    {
      v12 = sub_219BF7214();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {

      v13 = sub_218D20388(a3, a4);
      v15 = v14;
      v16 = sub_2191096A4(v13, v14);

      sub_218AEED68(v13, v15);
      swift_beginAccess();
      v9 = *(a5 + 16);
      *(a5 + 16) = 0;
    }
  }
}

uint64_t sub_21910AF8C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1((*(result + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 88), *(*(result + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 112));
    v1 = off_282A57C70;
    type metadata accessor for FollowingTracker();
    v1();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21910B050()
{
  sub_218950ACC();
  v2[3] = v0;
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_2187486B4(0);
  sub_2186D584C(&unk_280EE5550, sub_2187486B4);
  sub_219BE7B94();
  return sub_219BEA264();
}

void sub_21910B120()
{
  if (!qword_280E90758)
  {
    sub_2186F7774();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90758);
    }
  }
}

uint64_t sub_21910B17C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF2634();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_blueprintProvider);
  v32 = a1;
  v33 = v21;
  sub_2187486B4(0);
  sub_2186D584C(&unk_280EE5550, sub_2187486B4);
  sub_219BE7B94();
  v22 = [a2 _tab];
  v23 = [v22 identifier];

  sub_219BF5414();
  sub_219BEB1C4();

  (*(v10 + 8))(v12, v9);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_21910DB2C(v15, sub_218A7BA30);
    v24 = 1;
  }

  else
  {
    (*(v18 + 32))(v20, v15, v17);
    v25 = v29;
    sub_219BE5FC4();
    v26 = v28;
    sub_219103324(v25, v28);
    sub_21910DB2C(v25, type metadata accessor for FollowingModel);
    v24 = sub_219BF2614();
    (*(v30 + 8))(v26, v31);
    (*(v18 + 8))(v20, v17);
  }

  return v24 & 1;
}

uint64_t sub_21910B594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218950B84();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v10 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 3:
      v18 = *(*v8 + 16);
      v19 = *(v18 + 104);
      if (v19 == 255)
      {
        v23 = 0;
        v22 = 0x8000000219D04950;
        v20 = 0xD000000000000017;
      }

      else
      {
        v20 = *(v18 + 96);
        if (v19)
        {
          v21 = *(v18 + 80);
          sub_218FA396C(v21, *(v18 + 88), *(v18 + 96), 1);
          v22 = 0;
          v23 = 3;
          v20 = v21;
        }

        else
        {
          v24 = v20;
          v22 = 0;
          v23 = 1;
        }
      }

      type metadata accessor for FollowingTabGroupSidebarModel();
      result = swift_allocObject();
      *(result + 16) = v20;
      *(result + 24) = v22;
      *(result + 32) = v23;
      *(result + 33) = 1;
      *(result + 40) = MEMORY[0x277D84F90];
      return result;
    case 6:
    case 7:
      v12 = *v8;
      v13 = *(*(v12 + 24) + 16);
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *&v25[-32] = a3;
      *&v25[-24] = a2;
      *&v25[-16] = v12;
      swift_unknownObjectRetain();
      v14 = sub_218F8F938(sub_219113940, &v25[-48], a1);

      type metadata accessor for FollowingTabGroupSidebarModel();
      result = swift_allocObject();
      *(result + 16) = v13;
      *(result + 24) = 0;
      *(result + 32) = 3;
      *(result + 40) = v14;
      return result;
    case 11:

      sub_2191139C0(0, &qword_280ECED10, type metadata accessor for FollowingButtonModel, sub_218748D40);
      v16 = *(v15 + 48);
      sub_218748D40();
      (*(*(v17 - 8) + 8))(&v8[v16], v17);
      return 0;
    case 16:
      v10 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 17:
      v10 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v10 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_21910DB2C(v8, v10);
      return 0;
  }
}

uint64_t sub_21910B890@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a3;
  v43 = a2;
  v44 = a4;
  v5 = sub_219BEB744();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191138A4(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v39 - v12);
  v14 = sub_219BEB714();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BEB724();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v19 + 104);
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v27 = v20;
      v23(v22, *MEMORY[0x277D74A98], v20);
      *v13 = *MEMORY[0x277D767C8];
      v28 = *MEMORY[0x277D74AB8];
      v29 = sub_219BEB754();
      v30 = *(v29 - 8);
      (*(v30 + 104))(v13, v28, v29);
      (*(v30 + 56))(v13, 0, 1, v29);
      v26 = v44;
      sub_21910C544(v42, v22, v13, v44);
      sub_21910DB2C(v13, sub_2191138A4);
      (*(v19 + 8))(v22, v27);
    }

    else
    {
      v34 = v20;
      v23(v22, *MEMORY[0x277D74A88], v20);
      *v13 = *MEMORY[0x277D767C8];
      v35 = *MEMORY[0x277D74AB8];
      v36 = sub_219BEB754();
      v37 = *(v36 - 8);
      (*(v37 + 104))(v13, v35, v36);
      (*(v37 + 56))(v13, 0, 1, v36);
      sub_2191138D8(v13, v11, sub_2191138A4);
      sub_219BEB734();
      v26 = v44;
      sub_219BEB7F4();
      (*(v40 + 8))(v7, v41);
      sub_21910DB2C(v13, sub_2191138A4);
      (*(v19 + 8))(v22, v34);
    }
  }

  else
  {
    if (*a1)
    {
      v31 = v20;
      v23(v22, *MEMORY[0x277D74A88], v20);
      v32 = sub_219BEB754();
      (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
      sub_21910BEC4(v42, v22, v13, v44);
      sub_21910DB2C(v13, sub_2191138A4);
      return (*(v19 + 8))(v22, v31);
    }

    v24 = v20;
    v23(v22, *MEMORY[0x277D74A88], v20);
    v25 = sub_219BEB754();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    sub_219BEB704();
    v26 = v44;
    sub_219BEB7E4();
    (*(v15 + 8))(v17, v14);
    (*(v19 + 8))(v22, v24);
  }

  v38 = sub_219BEB824();
  return (*(*(v38 - 8) + 56))(v26, 0, 1, v38);
}

uint64_t sub_21910BEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  sub_2191138A4(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEB804();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BEB7A4();
  v51 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_featureAvailability);
  if (![v17 useFeedDifferentiationMode] || objc_msgSend(v17, sel_useFeedDifferentiationMode) && (v18 = objc_msgSend(*(v4 + OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_bundleSubscriptionManager), sel_cachedSubscription), v19 = objc_msgSend(v18, sel_isSubscribed), v18, v19))
  {
    v20 = sub_218EC4E8C(1);
    v47 = v10;
    v21 = v20;
    v22 = sub_219BE61F4();
    v48 = a4;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();
    v45 = a3;
    v46 = v14;

    v25 = sub_219BEA7E4();

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v26;
    v28[3] = v27;
    v28[4] = a1;
    v29 = v21;

    v30 = [*(*(a1 + 24) + 16) identifier];
    v31 = sub_219BF5414();
    v33 = v32;

    swift_getObjectType();
    sub_219BEAF24();
    v53 = v31;
    v54 = v33;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_21911396C();
    sub_2187411B0();
    sub_219BE7024();

    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    v34 = v29;
    sub_219BE1A04();

    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_2191139C0(0, &qword_280EE3598, MEMORY[0x277D74AA0], sub_218788800);
    v36 = &v13[*(v35 + 48)];
    v37 = sub_219BEB724();
    (*(*(v37 - 8) + 16))(v13, v52, v37);
    *v36 = sub_218973C20;
    v36[1] = 0;
    (*(v49 + 104))(v13, *MEMORY[0x277D74AD8], v50);
    sub_2191138D8(v45, v47, sub_2191138A4);
    v38 = v34;
    sub_219BEB794();
    v39 = v48;
    sub_219BEB6D4();

    (*(v51 + 8))(v16, v46);
    v40 = sub_219BEB824();
    return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  }

  else
  {
    v42 = sub_219BEB824();
    v43 = *(*(v42 - 8) + 56);

    return v43(a4, 1, 1, v42);
  }
}

uint64_t sub_21910C544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v43 = a4;
  v39 = a2;
  sub_2191138A4(0);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB804();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BEB7A4();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219113A7C(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF3344();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v44 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_218EC4E8C(0);
  v17 = sub_219BE61F4();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v20 = sub_219BEA7E4();

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = a1;
  v24 = v16;

  swift_unknownObjectRetain();
  v25 = v44;
  sub_219BF3324();
  swift_getObjectType();
  sub_219BEAF14();
  (*(v14 + 16))(v12, v25, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_218E14F94();
  sub_218740ED4();
  sub_219BE7024();

  sub_21910DB2C(v12, sub_219113A7C);
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  v26 = v24;
  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2191139C0(0, &qword_280EE3598, MEMORY[0x277D74AA0], sub_218788800);
  v28 = v34;
  v29 = &v34[*(v27 + 48)];
  v30 = sub_219BEB724();
  (*(*(v30 - 8) + 16))(v28, v39, v30);
  *v29 = sub_218973C20;
  v29[1] = 0;
  (*(v36 + 104))(v28, *MEMORY[0x277D74AD8], v37);
  sub_2191138D8(v42, v40, sub_2191138A4);
  v31 = v26;
  v32 = v35;
  sub_219BEB794();
  sub_219BEB6D4();

  (*(v38 + 8))(v32, v41);
  return (*(v14 + 8))(v44, v13);
}

void sub_21910CBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219113A48(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE6174();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        type metadata accessor for AccessoryButton();
        sub_2186D584C(&qword_280EDB500, type metadata accessor for AccessoryButton);
        sub_219BEB684();
        v17 = *(v16 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler);
        v21 = a3;
        v18 = *(v17 + 40);
        ObjectType = swift_getObjectType();
        (*(v8 + 16))(v6, v10, v7);
        (*(v8 + 56))(v6, 0, 1, v7);
        (*(v18 + 96))(v21, v6, ObjectType, v18);

        sub_21910DB2C(v6, sub_219113A48);
        (*(v8 + 8))(v10, v7);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_21910CE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219113A48(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BE6174();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        type metadata accessor for AccessoryButton();
        sub_2186D584C(&qword_280EDB500, type metadata accessor for AccessoryButton);
        sub_219BEB684();
        v17 = *(v16 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler);
        (*(v8 + 16))(v6, v10, v7);
        (*(v8 + 56))(v6, 0, 1, v7);
        v18 = *(v17 + 40);
        ObjectType = swift_getObjectType();
        (*(v18 + 88))(a3, v6, 2, ObjectType, v18);

        sub_21910DB2C(v6, sub_219113A48);
        (*(v8 + 8))(v10, v7);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21910D0FC(unsigned __int8 *a1)
{
  v2 = sub_219BE5C64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (v6 == 2 || (v6 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = MEMORY[0x277D6D340];
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = MEMORY[0x277D6D338];
  }

  (*(v3 + 104))(v5, *v9, v2);
  type metadata accessor for AccessoryButton();
  sub_2186D584C(&qword_280EDB500, type metadata accessor for AccessoryButton);
  sub_219BEB694();

  return (*(v3 + 8))(v5, v2);
}

void sub_21910D2FC(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_2191135EC, v8);
}

uint64_t sub_21910D420(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a8;
  v46 = a4;
  v43 = a7;
  v44 = a2;
  v47 = a6;
  v10 = sub_219BE7654();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE7634();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a3();
  }

  v22 = Strong;
  v39 = a3;
  v38 = *(v18 + 16);
  v38(&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v17);
  (*(v13 + 104))(v15, *MEMORY[0x277D6DA70], v12);
  (*(v41 + 104))(v40, *MEMORY[0x277D6DAA8], v42);
  sub_219113604(0, &qword_27CC16390, MEMORY[0x277D6E3E0]);
  swift_allocObject();
  v23 = v44;
  v24 = sub_219BE9044();
  v38(&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v17);
  v25 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v26 = swift_allocObject();
  (*(v18 + 32))(v26 + v25, v20, v17);
  v27 = OBJC_IVAR____TtC7NewsUI224FollowingTabGroupManager_completionCoordinators;
  swift_beginAccess();
  v28 = *&v22[v27];
  v29 = v46;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22[v27] = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_2191F9E70(0, *(v28 + 2) + 1, 1, v28);
    *&v22[v27] = v28;
  }

  v32 = *(v28 + 2);
  v31 = *(v28 + 3);
  if (v32 >= v31 >> 1)
  {
    v28 = sub_2191F9E70((v31 > 1), v32 + 1, 1, v28);
  }

  *(v28 + 2) = v32 + 1;
  v33 = &v28[32 * v32];
  *(v33 + 4) = v39;
  *(v33 + 5) = v29;
  *(v33 + 6) = a9;
  *(v33 + 7) = v26;
  *&v22[v27] = v28;
  swift_endAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = *(*(v34 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v35 + 40))(v24, 2, ObjectType, v35);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21910D8CC()
{
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v4 = v3;
  sub_219BE5F84();
  sub_218950ACC();
  sub_219BEB1C4();

  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_21910DB2C(v2, sub_218A7BA30);
  if (v5 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_21910D9E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}