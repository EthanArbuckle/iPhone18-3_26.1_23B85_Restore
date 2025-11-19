uint64_t sub_21934A97C(uint64_t a1)
{
  v2 = sub_21934B418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21934A9B8(uint64_t a1)
{
  v2 = sub_21934B418();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21934A9F4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21934B25C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_21934AA3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21934AC68(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_21934AA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21934AAF8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21934AB64(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_21934AB64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21934ABB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21934AC18()
{
  if (!qword_280E8BA80)
  {
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8BA80);
    }
  }
}

unint64_t sub_21934AC68(void *a1)
{
  sub_21934B46C(0, &qword_280E8C7F0, sub_21934AED4, &type metadata for MagazineTodayFeedGroupConfigProcessor.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21934AED4();
  v9 = v8;
  sub_219BF7B34();
  if (!v1)
  {
    v15 = 0;
    sub_21934AF28();
    sub_219BF7734();
    if (v16)
    {
      v14 = 1;
      sub_21915A2B0();
      sub_219BF7734();
      (*(v5 + 8))(v7, v4);
      v9 = v11[1];
    }

    else
    {
      v12 = 1;
      sub_21934AF7C();
      sub_219BF7734();
      (*(v5 + 8))(v7, v4);
      v9 = v13;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_21934AED4()
{
  result = qword_280E994B0;
  if (!qword_280E994B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E994B0);
  }

  return result;
}

unint64_t sub_21934AF28()
{
  result = qword_280E99488;
  if (!qword_280E99488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99488);
  }

  return result;
}

unint64_t sub_21934AF7C()
{
  result = qword_280E99460;
  if (!qword_280E99460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99460);
  }

  return result;
}

unint64_t sub_21934AFD0()
{
  result = qword_280E99498;
  if (!qword_280E99498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99498);
  }

  return result;
}

unint64_t sub_21934B024()
{
  result = qword_280E99468;
  if (!qword_280E99468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99468);
  }

  return result;
}

unint64_t sub_21934B0AC()
{
  result = qword_27CC19058;
  if (!qword_27CC19058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19058);
  }

  return result;
}

unint64_t sub_21934B104()
{
  result = qword_27CC19060;
  if (!qword_27CC19060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19060);
  }

  return result;
}

unint64_t sub_21934B15C()
{
  result = qword_280E994A0;
  if (!qword_280E994A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E994A0);
  }

  return result;
}

unint64_t sub_21934B1B4()
{
  result = qword_280E994A8;
  if (!qword_280E994A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E994A8);
  }

  return result;
}

unint64_t sub_21934B208()
{
  result = qword_280E99490;
  if (!qword_280E99490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99490);
  }

  return result;
}

unint64_t sub_21934B25C(void *a1)
{
  sub_21934B46C(0, &qword_280E8C7E8, sub_21934B418, &type metadata for MagazineTodayFeedGroupConfigProcessor.Filter.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21934B418();
  v9 = v8;
  sub_219BF7B34();
  if (!v1)
  {
    sub_218CD679C();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
    v9 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_21934B418()
{
  result = qword_280E99480;
  if (!qword_280E99480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99480);
  }

  return result;
}

void sub_21934B46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_21934B4E8()
{
  result = qword_27CC19068;
  if (!qword_27CC19068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19068);
  }

  return result;
}

unint64_t sub_21934B540()
{
  result = qword_280E99470;
  if (!qword_280E99470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99470);
  }

  return result;
}

unint64_t sub_21934B598()
{
  result = qword_280E99478;
  if (!qword_280E99478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99478);
  }

  return result;
}

uint64_t sub_21934B5EC(uint64_t a1)
{
  v3 = MEMORY[0x277D84560];
  sub_21934C31C(0, &qword_280E8C098, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_219BE26D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_21934C31C(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], v3);
  v5 = sub_219BE2644();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  v9 = (v8 + v7);
  v10 = sub_219BF5414();
  v12 = v11;
  v13 = sub_219BF5414();
  *v9 = v10;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v14;
  (*(v6 + 104))(v9, *MEMORY[0x277D6CC88], v5);
  sub_219897824(MEMORY[0x277D84F90]);
  sub_219BE2654();
  *(v1 + 16) = v4;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_21934B828()
{
  sub_21934C31C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v28 = *(v0 - 8);
  v1 = *(v28 + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v29 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v5 = sub_219BE22F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WebLinkViewControllerType(0);
  v9 = swift_allocBox();
  sub_21934C31C(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22A4();
  (*(v6 + 8))(v8, v5);
  swift_storeEnumTagMultiPayload();
  v31 = v9;
  v10 = v9 | 0xB000000000000000;
  v11 = sub_218DB24B0();
  v12 = *(v30 + 24);
  if (v11)
  {
    v13 = sub_219BDFA44();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    memset(v40, 0, 40);
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v37 = v12;
    sub_2187B1990(v38, &v33, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v34 + 1))
    {
      sub_21875F93C(&v33, v35);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v15 = qword_280ED32D8;
      v14 = qword_280ED32E0;
      v16 = qword_280ED32E8;

      sub_2188202A8(v14);
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      sub_2187456AC(&v33, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v15 = qword_280ED32D8;
      v14 = qword_280ED32E0;
      v16 = qword_280ED32E8;

      sub_2188202A8(v14);
    }

    v32 = v10;
    v34 = 0u;
    v33 = 0u;
    v17 = v29;
    sub_2187B1990(v4, v29, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21934C31C);
    sub_2187B1990(v40, v35, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v18 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v19 = (v1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + 47) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    sub_2189B4EAC(v17, v21 + v18);
    v22 = v21 + v19;
    v23 = v35[1];
    *v22 = v35[0];
    *(v22 + 16) = v23;
    *(v22 + 32) = v36;
    v24 = (v21 + v20);
    v25 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v24 = 0;
    v24[1] = 0;
    *v25 = v15;
    v25[1] = v14;
    v25[2] = v16;

    sub_2188202A8(v14);
    sub_2186CF94C();
    sub_21934C380(&qword_280EE5A90, 255, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v14);
    sub_2187456AC(v38, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187456AC(v40, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_2187456AC(v4, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21934C31C);
    sub_2187456AC(&v33, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21870F240);
  }

  else
  {
    v40[0] = *(v30 + 24);
    *&v38[0] = v9 | 0xB000000000000000;
    sub_2186CF94C();
    sub_21934C380(&qword_280EE5A90, 255, sub_2186CF94C);
    sub_219BEB484();
  }

  return 1;
}

uint64_t sub_21934C25C()
{
  sub_21934B828();
  sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_21934C31C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21934C380(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21934C3C8(void *a1)
{
  sub_21934C31C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_21934C4BC()
{
  v1 = sub_219BE1724();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = [v0 type];
  if (!v8)
  {
    v9 = MEMORY[0x277D2F898];
LABEL_5:
    (*(v2 + 104))(v7, *v9, v1);
    v10 = [v0 identifier];
    sub_219BF5414();

    [v0 isPaid];
    (*(v2 + 16))(v5, v7, v1);
    v11 = [v0 topicTagIDs];
    sub_219BF5924();

    sub_219BE16F4();
    return (*(v2 + 8))(v7, v1);
  }

  if (v8 == 1)
  {
    v9 = MEMORY[0x277D2F8A0];
    goto LABEL_5;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for PaywallMagazineFeedGroupEmitter()
{
  result = qword_280EA89A0;
  if (!qword_280EA89A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21934C778()
{
  sub_218B87670();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PaywallMagazineFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_218783DA0();
      if (v2 <= 0x3F)
      {
        sub_2186C709C(319, qword_280EB4590);
        if (v3 <= 0x3F)
        {
          sub_2186C709C(319, &unk_280EE6480);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21934C874()
{
  sub_219BE4864();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE3064();

  sub_21870F240(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  v1 = sub_219BE31C4();

  return v1;
}

uint64_t sub_21934C9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v51 = a3;
  sub_218C5FB88();
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaywallMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for PaywallMagazineFeedGroup() - 8;
  MEMORY[0x28223BE20](v49);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PaywallMagazineFeedGroupConfigData();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedPaywallConfig();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v17;
  v18 = type metadata accessor for PaywallMagazineFeedGroupEmitter();
  v47 = v18;
  swift_getObjectType();
  v19 = sub_219BE3F64();
  __swift_project_boxed_opaque_existential_1((a2 + *(v18 + 28)), *(a2 + *(v18 + 28) + 24));
  sub_218B87670();
  sub_219BEDD14();
  v20 = *(v12 + 36);
  sub_219AE8FA8(v19 & 1, &v14[v20], v17);
  v21 = sub_219BE4034();
  (*(*(v21 - 8) + 8))(&v14[v20], v21);
  v22 = sub_219BEDCA4();
  v24 = v23;
  v25 = sub_219BE47D4();
  v27 = v26;
  v54 = v22;
  v55 = v24;

  MEMORY[0x21CECC330](v25, v27);

  v50 = v54;
  v45 = a2;
  v46 = v55;
  v28 = v49;
  sub_219BEDCC4();
  v29 = *(v47 + 20);
  sub_21934DC70(a2 + v29, v8, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  sub_2186F909C(0, &qword_280E919C0, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D321A0]);
  v31 = v30;
  sub_219BEE9B4();
  v33 = v32;
  v34 = *(*(v31 - 8) + 8);
  v34(v8, v31);
  sub_21934DC70(v45 + v29, v8, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  sub_219BEE984();
  v36 = v35;
  v34(v8, v31);
  v37 = v48;
  sub_21934DC70(v48, &v10[v28[11]], type metadata accessor for FeedPaywallConfig);
  v38 = v46;
  *v10 = v50;
  *(v10 + 1) = v38;
  v39 = v28[8];
  v40 = *MEMORY[0x277D32640];
  v41 = sub_219BEF554();
  (*(*(v41 - 8) + 104))(&v10[v39], v40, v41);
  *&v10[v28[9]] = v33;
  *&v10[v28[10]] = v36;
  sub_21934DC70(v10, v52, type metadata accessor for PaywallMagazineFeedGroup);
  type metadata accessor for MagazineFeedGroup();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_21934DD04(0, &qword_280EE6C48, sub_218C5FB88, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v42 = sub_219BE3014();
  sub_21934DDB0(v10, type metadata accessor for PaywallMagazineFeedGroup);
  sub_21934DDB0(v37, type metadata accessor for FeedPaywallConfig);
  return v42;
}

uint64_t sub_21934CEE8()
{
  type metadata accessor for PaywallMagazineFeedGroupEmitter();
  swift_getObjectType();
  return sub_219BE3F74();
}

void sub_21934CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + *(type metadata accessor for PaywallMagazineFeedGroupEmitter() + 24));
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2187A913C;
  *(v10 + 24) = v8;
  v12[4] = sub_21934DCFC;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218C1CBB4;
  v12[3] = &block_descriptor_114;
  v11 = _Block_copy(v12);

  [v9 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_21934D084(uint64_t a1, id a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    v6 = a2;
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_219C09BA0;
    sub_2186C709C(0, &qword_280E8B580);
    sub_219BF7484();
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_2186FC3BC();
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
    sub_219BE5314();
  }

  if (!a1)
  {
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
  }

  return a3();
}

uint64_t sub_21934D254(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v2;
  sub_21934DAD4();
  sub_219BE3204();
  sub_21934DC70(v2, &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaywallMagazineFeedGroupEmitter);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21934DB40(&v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  *(v7 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21934DBA4;
  *(v8 + 24) = v7;

  v9 = sub_219BE2E54();
  sub_218C5FB88();
  v10 = sub_219BE2F64();

  return v10;
}

uint64_t sub_21934D40C@<X0>(uint64_t *a1@<X8>)
{
  sub_218B87670();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x7000000000000000;
  return result;
}

uint64_t sub_21934D484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for PaywallMagazineFeedGroupKnobs();
  a2[4] = sub_21934DD68(&qword_280EAF858, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  a2[5] = sub_21934DD68(&qword_280EAF860, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21934DC70(v2 + v4, boxed_opaque_existential_1, type metadata accessor for PaywallMagazineFeedGroupKnobs);
}

uint64_t sub_21934D548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934DC70(v2 + *(a2 + 20), v6, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  v17 = 7;
  sub_2186F909C(0, &qword_280E919C0, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D321A0]);
  v8 = v7;
  v9 = sub_219BEE964();
  (*(*(v8 - 8) + 8))(v6, v8);
  sub_21934DD04(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x277D322F8], v11);
  v16 = v9;
  sub_2191EE154(v14);
  return v16;
}

uint64_t sub_21934D77C()
{
  sub_218B87670();

  return sub_219BEDCA4();
}

uint64_t sub_21934D7A8@<X0>(uint64_t *a1@<X8>)
{
  sub_21934DD04(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218B87670();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21934DDB0(inited + 32, sub_2188317B0);
  sub_21934DD04(0, &qword_280EE7808, type metadata accessor for PaywallMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_21934DE10();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21934D92C()
{
  sub_21934DD68(&qword_280EA89C0, type metadata accessor for PaywallMagazineFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_21934DAD4()
{
  if (!qword_280EE61E8)
  {
    sub_219BE4864();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE61E8);
    }
  }
}

uint64_t sub_21934DB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallMagazineFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21934DBA4(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallMagazineFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21934C9A0(a1, v1 + v4, v5);
}

uint64_t sub_21934DC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21934DD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21934DD68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21934DDB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21934DE10()
{
  result = qword_280EE7810;
  if (!qword_280EE7810)
  {
    sub_21934DD04(255, &qword_280EE7808, type metadata accessor for PaywallMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7810);
  }

  return result;
}

uint64_t sub_21934DE98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21934DEE0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_21934DF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v94 = a3;
  v107 = type metadata accessor for SharedWithYouFeedModel(0);
  v82 = *(v107 - 8);
  v4 = MEMORY[0x28223BE20](v107);
  v103 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v102 = v81 - v6;
  sub_218C40500();
  v105 = *(v7 - 8);
  v106 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934EC04();
  MEMORY[0x28223BE20](v9 - 8);
  v93 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BF2094();
  v98 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v99 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BF2DA4();
  v101 = *(v104 - 1);
  MEMORY[0x28223BE20](v104);
  v13 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BF1904();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for SharedWithYouFeedSectionDescriptor();
  v16 = MEMORY[0x28223BE20](v92);
  v97 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v81 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v81 - v21;
  v23 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v29 = v81 - v28;
  v30 = type metadata accessor for SharedWithYouFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v32 = v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934F3CC(a1, v32, type metadata accessor for SharedWithYouFeedGroup);
  sub_218AC3514(v32, v29);
  sub_21934F3CC(v29, v22, type metadata accessor for ArticleListSharedWithYouFeedGroup);
  (*(v24 + 56))(v22, 0, 1, v23);
  v86 = *&v29[*(v23 + 24)];
  v91 = v29;
  sub_219BED874();
  v96 = v22;
  sub_21934F3CC(v22, v20, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  if ((*(v24 + 48))(v20, 1, v23) == 1)
  {
    v85 = 0xE300000000000000;
    v84 = 7364967;
  }

  else
  {
    sub_218AC3514(v20, v27);
    v33 = v27[1];
    v84 = *v27;
    v85 = v33;

    sub_21934F434(v27, type metadata accessor for ArticleListSharedWithYouFeedGroup);
  }

  v34 = sub_219BF18F4();
  v35 = *(v34 + 16);
  v95 = v15;
  if (v35)
  {
    v36 = v101 + 16;
    v101 = *(v101 + 16);
    v37 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v81[1] = v34;
    v38 = v34 + v37;
    v100 = *(v36 + 56);
    v39 = (v36 - 8);
    v40 = MEMORY[0x277D84F90];
    while (1)
    {
      v42 = v104;
      (v101)(v13, v38, v104);
      v43 = sub_219BF2D94();
      result = (*v39)(v13, v42);
      v44 = *(v43 + 16);
      v45 = v40[2];
      v46 = v45 + v44;
      if (__OFADD__(v45, v44))
      {
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
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v46 <= v40[3] >> 1)
      {
        if (*(v43 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v45 <= v46)
        {
          v47 = v45 + v44;
        }

        else
        {
          v47 = v45;
        }

        result = sub_2191F7160(result, v47, 1, v40);
        v40 = result;
        if (*(v43 + 16))
        {
LABEL_17:
          if ((v40[3] >> 1) - v40[2] < v44)
          {
            goto LABEL_53;
          }

          swift_arrayInitWithCopy();

          if (v44)
          {
            v48 = v40[2];
            v49 = __OFADD__(v48, v44);
            v50 = v48 + v44;
            if (v49)
            {
              goto LABEL_55;
            }

            v40[2] = v50;
          }

          goto LABEL_7;
        }
      }

      if (v44)
      {
        goto LABEL_50;
      }

LABEL_7:
      v38 += v100;
      if (!--v35)
      {

        v15 = v95;
        v51 = v40[2];
        if (v51)
        {
          goto LABEL_22;
        }

        goto LABEL_40;
      }
    }
  }

  v40 = MEMORY[0x277D84F90];
  v51 = *(MEMORY[0x277D84F90] + 16);
  if (v51)
  {
LABEL_22:
    v104 = *(v98 + 16);
    v52 = v40 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v101 = *(v98 + 72);
    v53 = (v98 + 8);
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      v55 = v99;
      v56 = v108;
      (v104)(v99, v52, v108);
      v57 = sub_219BF2084();
      result = (*v53)(v55, v56);
      v58 = *(v57 + 16);
      v59 = v54[2];
      v60 = v59 + v58;
      if (__OFADD__(v59, v58))
      {
        goto LABEL_51;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v60 <= v54[3] >> 1)
      {
        if (*(v57 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v59 <= v60)
        {
          v62 = v59 + v58;
        }

        else
        {
          v62 = v59;
        }

        v54 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v62, 1, v54);
        if (*(v57 + 16))
        {
LABEL_34:
          v63 = (v54[3] >> 1) - v54[2];
          result = sub_219BF3C84();
          if (v63 < v58)
          {
            goto LABEL_54;
          }

          swift_arrayInitWithCopy();

          if (v58)
          {
            v64 = v54[2];
            v49 = __OFADD__(v64, v58);
            v65 = v64 + v58;
            if (v49)
            {
              goto LABEL_56;
            }

            v54[2] = v65;
          }

          goto LABEL_24;
        }
      }

      if (v58)
      {
        goto LABEL_52;
      }

LABEL_24:
      v52 += v101;
      if (!--v51)
      {

        v15 = v95;
        goto LABEL_41;
      }
    }
  }

LABEL_40:

  v54 = MEMORY[0x277D84F90];
LABEL_41:
  MEMORY[0x28223BE20](v66);
  v67 = v89;
  v81[-6] = v86;
  v81[-5] = v67;
  v68 = v84;
  v81[-4] = v90;
  v81[-3] = v68;
  v81[-2] = v85;
  v69 = sub_218DE02BC(sub_21934F3A8, &v81[-8], v54);

  (*(v87 + 8))(v15, v88);
  sub_21934F3CC(v96, v97, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  v70 = v69[2];
  if (v70)
  {
    v109 = MEMORY[0x277D84F90];
    sub_218C37120(0, v70, 0);
    v71 = v109;
    v72 = *(v82 + 80);
    v108 = v69;
    v73 = v69 + ((v72 + 32) & ~v72);
    v74 = *(v82 + 72);
    v75 = v83;
    do
    {
      v76 = v102;
      sub_21934F3CC(v73, v102, type metadata accessor for SharedWithYouFeedModel);
      sub_21934F3CC(v76, v103, type metadata accessor for SharedWithYouFeedModel);
      sub_21934F4BC(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
      sub_219BE5FB4();
      sub_21934F434(v76, type metadata accessor for SharedWithYouFeedModel);
      v109 = v71;
      v78 = *(v71 + 16);
      v77 = *(v71 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_218C37120(v77 > 1, v78 + 1, 1);
        v75 = v83;
        v71 = v109;
      }

      *(v71 + 16) = v78 + 1;
      (*(v105 + 32))(v71 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v78, v75, v106);
      v73 += v74;
      --v70;
    }

    while (v70);
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v79 = sub_21934F4BC(&qword_27CC19078, sub_218C40500);
  v80 = sub_21934F4BC(&qword_27CC19080, sub_218C40500);
  MEMORY[0x21CEB9170](v71, v106, v79, v80);
  sub_21934F4BC(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  sub_21934F4BC(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
  sub_219BE6924();
  sub_21934F434(v96, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  return sub_21934F434(v91, type metadata accessor for ArticleListSharedWithYouFeedGroup);
}

void sub_21934EC04()
{
  if (!qword_27CC19070)
  {
    sub_218C40500();
    sub_21934F4BC(&qword_27CC19078, sub_218C40500);
    sub_21934F4BC(&qword_27CC19080, sub_218C40500);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC19070);
    }
  }
}

uint64_t sub_21934ECD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v35 = a2;
  v9 = sub_219BF2164();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF3C84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277D34128] || v17 == *MEMORY[0x277D34108] || v17 == *MEMORY[0x277D34100] || v17 == *MEMORY[0x277D34130] || v17 == *MEMORY[0x277D34110])
  {
    result = (*(v14 + 8))(v16, v13);
    *a7 = MEMORY[0x277D84F90];
  }

  else if (v17 == *MEMORY[0x277D340F0])
  {
    (*(v14 + 96))(v16, v13);
    v23 = (*(v10 + 32))(v12, v16, v9);
    MEMORY[0x28223BE20](v23);
    v24 = v30;
    *(&v29 - 6) = v29;
    *(&v29 - 5) = v24;
    v25 = v32;
    *(&v29 - 4) = v31;
    *(&v29 - 3) = v25;
    *(&v29 - 2) = v12;
    *a7 = sub_21894A630(sub_21934F494, (&v29 - 8), v35);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_2186E8080(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_219BF7484();
    v27 = v33;
    v28 = v34;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_2186FC3BC();
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    MEMORY[0x21CEB8D80]("Unknown format item %{public}@ encountered. Please update this switch statement to handle the new case.", 103, 2, v26);

    *a7 = MEMORY[0x277D84F90];
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_21934F080@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v23 = a3;
  v24 = a4;
  v9 = sub_219BF0BD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E8080(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = v9;
    swift_getObjectType();
    v9 = v22;
    sub_219BEEFB4();
    swift_unknownObjectRelease();
    (*(v10 + 56))(v15, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v15, 1, 1, v9);
  }

  v17 = sub_21983F764(v16, v15);
  sub_218EA3B08(v15);
  v26 = v17;
  (*(v10 + 16))(v12, v23, v9);
  sub_21871D24C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09EC0;
  *(v18 + 32) = v24;
  *(v18 + 40) = a5;

  *(v18 + 48) = sub_219BF2154();
  *(v18 + 56) = v19;
  MEMORY[0x21CEC80A0](v18);

  type metadata accessor for HeadlineModel(0);
  sub_21934F4BC(&qword_280EDE358, type metadata accessor for HeadlineModel);
  sub_21934F4BC(&qword_280EDE360, type metadata accessor for HeadlineModel);
  sub_219BF0844();
  type metadata accessor for SharedWithYouFeedModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21934F3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21934F434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21934F4BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SportsEventTopicTagFeedGroupKnobs()
{
  result = qword_280EA1E28;
  if (!qword_280EA1E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21934F578()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_218BE9934();
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
            sub_219BEF244();
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

uint64_t sub_21934F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v55 = a8;
  v56 = a6;
  v59 = a3;
  v60 = a7;
  v57 = a5;
  v58 = a4;
  sub_219123FEC(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v50 - v15;
  v16 = sub_219BEF244();
  v51 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v52 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v50 - v19;
  sub_2189AD5C8();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  sub_219124040(a1, v20, &qword_280E91A70, sub_2189AD5C8);
  v26 = *(v23 + 48);
  if (v26(v20, 1, v22) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CA68(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE974();
    if (v26(v20, 1, v22) != 1)
    {
      sub_2191240AC(v20, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    (*(v23 + 32))(v25, v20, v22);
  }

  (*(v23 + 32))(a9, v25, v22);
  v27 = v16;
  if (a2)
  {
    v28 = a2;
  }

  else
  {
    v29 = sub_219BF1F54();
    sub_218C3DB88(v29);

    sub_218BE9934();
    swift_allocObject();
    v28 = sub_219BEEE04();
  }

  v30 = v54;
  v31 = v58;
  v32 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
  *(a9 + v32[5]) = v28;
  v33 = v51;
  v34 = v59;
  if (v59)
  {

    v35 = v34;
  }

  else
  {
    sub_218BE9934();
    swift_allocObject();

    v35 = sub_219BEEE04();
  }

  *(a9 + v32[6]) = v35;
  if (v31)
  {

    v36 = v31;
  }

  else
  {
    v61 = 30;
    sub_2186F9548();
    swift_allocObject();

    v36 = sub_219BEF534();
  }

  *(a9 + v32[7]) = v36;
  v37 = v57;
  if (v57)
  {

    v38 = v37;
  }

  else
  {
    v61 = 1;
    sub_2186F9548();
    swift_allocObject();

    v38 = sub_219BEF534();
  }

  *(a9 + v32[8]) = v38;
  v39 = v56;
  if (v56)
  {

    v40 = v39;
  }

  else
  {
    v61 = 5;
    sub_2186F9548();
    swift_allocObject();

    v40 = sub_219BEF534();
  }

  *(a9 + v32[9]) = v40;
  v41 = v60;
  if (v60)
  {

    v42 = v41;
  }

  else
  {

    sub_219BF5CE4();
    v61 = v43;
    sub_2186ECA28();
    swift_allocObject();
    v42 = sub_219BEF534();
  }

  v44 = a10;
  *(a9 + v32[10]) = v42;
  v45 = v55;
  if (v55)
  {

    v46 = v45;
  }

  else
  {
    LOBYTE(v61) = 1;
    sub_2186F95C4();
    swift_allocObject();

    v46 = sub_219BEF534();
  }

  *(a9 + v32[11]) = v46;
  if (a10)
  {
  }

  else
  {
    v61 = 0;
    sub_2186ECA28();
    swift_allocObject();

    v44 = sub_219BEF534();
  }

  *(a9 + v32[12]) = v44;
  sub_219124040(a11, v30, &qword_280E916D0, MEMORY[0x277D324F0]);
  v47 = *(v33 + 48);
  if (v47(v30, 1, v27) == 1)
  {
    v48 = v52;
    sub_219BEF1C4();

    sub_2191240AC(a11, &qword_280E916D0, MEMORY[0x277D324F0]);
    sub_2191240AC(v53, &qword_280E91A70, sub_2189AD5C8);
    if (v47(v30, 1, v27) != 1)
    {
      sub_2191240AC(v30, &qword_280E916D0, MEMORY[0x277D324F0]);
    }
  }

  else
  {

    sub_2191240AC(a11, &qword_280E916D0, MEMORY[0x277D324F0]);
    sub_2191240AC(v53, &qword_280E91A70, sub_2189AD5C8);
    v48 = v52;
    (*(v33 + 32))(v52, v30, v27);
  }

  return (*(v33 + 32))(a9 + v32[13], v48, v27);
}

uint64_t sub_21934FE90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v85 = sub_219BEF244();
  v80 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v79 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v83 = v4;
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v82 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v78);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = v63 - v12;
  sub_219123FEC(0, &qword_280E91A70, sub_2189AD5C8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v86 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = v63 - v16;
  sub_21935162C(0, &qword_27CC19088, MEMORY[0x277D844C8]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v63 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219351574();
  v22 = v88;
  sub_219BF7B34();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v67 = v19;
  v68 = 0;
  v69 = v11;
  v88 = v7;
  v70 = a1;
  LOBYTE(v97) = 0;
  sub_21877CA68(&qword_280E91A88, sub_2189AD5C8);
  v24 = v83;
  sub_219BF7674();
  sub_218BE9934();
  LOBYTE(v96) = 1;
  sub_21877CA68(&qword_280E917C0, sub_218BE9934);
  sub_219BF7674();
  v76 = v97;
  LOBYTE(v95) = 2;
  sub_219BF7674();
  v75 = v96;
  sub_2186F9548();
  LOBYTE(v94) = 3;
  sub_21877CA68(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v74 = v95;
  LOBYTE(v93) = 4;
  sub_219BF7674();
  v65 = v94;
  LOBYTE(v92) = 5;
  sub_219BF7674();
  v73 = v93;
  sub_2186ECA28();
  v26 = v25;
  LOBYTE(v91) = 6;
  sub_21877CA68(&qword_280E913D8, sub_2186ECA28);
  sub_219BF7674();
  v72 = v92;
  sub_2186F95C4();
  v28 = v27;
  LOBYTE(v90) = 7;
  sub_21877CA68(&qword_280E913F8, sub_2186F95C4);
  v63[0] = v28;
  sub_219BF7674();
  v71 = v91;
  LOBYTE(v89) = 8;
  v63[1] = v26;
  sub_219BF7674();
  v64 = v90;
  LOBYTE(v89) = 9;
  sub_21877CA68(&qword_280E916D8, MEMORY[0x277D324F0]);
  v66 = v21;
  sub_219BF7674();
  v29 = v86;
  sub_219124040(v87, v86, &qword_280E91A70, sub_2189AD5C8);
  v30 = v77;
  v31 = *(v77 + 48);
  if (v31(v29, 1, v24) == 1)
  {
    v32 = v30;
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CA68(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v33 = v82;
    sub_219BEE974();
    v34 = v83;
    v35 = v31(v86, 1, v83);
    v36 = v33;
    v37 = v79;
    v38 = v88;
    if (v35 != 1)
    {
      sub_2191240AC(v86, &qword_280E91A70, sub_2189AD5C8);
      v36 = v82;
    }
  }

  else
  {
    v32 = v30;
    v36 = v82;
    v34 = v83;
    (*(v30 + 32))(v82, v86, v83);
    v37 = v79;
    v38 = v88;
  }

  v86 = v18;
  (*(v32 + 32))(v38, v36, v34);
  if (v76)
  {
    v39 = v76;
  }

  else
  {
    v40 = sub_219BF1F54();
    sub_218C3DB88(v40);

    swift_allocObject();
    v39 = sub_219BEEE04();
    v38 = v88;
  }

  v41 = v78;
  v42 = v84;
  *&v38[*(v78 + 20)] = v39;
  v43 = v75;
  if (v75)
  {

    v44 = v43;
  }

  else
  {
    swift_allocObject();

    v44 = sub_219BEEE04();
    v38 = v88;
  }

  v45 = v85;
  v46 = v80;
  *&v38[v41[6]] = v44;
  v47 = v74;
  if (v74)
  {

    v48 = v47;
  }

  else
  {
    v89 = 30;
    swift_allocObject();

    v48 = sub_219BEF534();
    v38 = v88;
  }

  *&v38[v41[7]] = v48;
  v49 = v65;
  if (v65)
  {

    v50 = v49;
  }

  else
  {
    v89 = 1;
    swift_allocObject();

    v50 = sub_219BEF534();
    v38 = v88;
  }

  *&v38[v41[8]] = v50;
  v51 = v73;
  if (v73)
  {

    v52 = v51;
  }

  else
  {
    v89 = 5;
    swift_allocObject();

    v52 = sub_219BEF534();
    v38 = v88;
  }

  *&v38[v41[9]] = v52;
  v53 = v72;
  if (v72)
  {

    v54 = v53;
  }

  else
  {

    sub_219BF5CE4();
    v89 = v55;
    swift_allocObject();
    v54 = sub_219BEF534();
    v38 = v88;
  }

  *&v38[v41[10]] = v54;
  v56 = v71;
  if (v71)
  {

    v57 = v56;
  }

  else
  {
    LOBYTE(v89) = 1;
    swift_allocObject();

    v57 = sub_219BEF534();
    v38 = v88;
  }

  *&v38[v41[11]] = v57;
  v58 = v64;
  if (v64)
  {
  }

  else
  {
    v89 = 0;
    swift_allocObject();

    v59 = sub_219BEF534();
    v38 = v88;
    v58 = v59;
  }

  *&v38[v41[12]] = v58;
  v60 = v69;
  sub_219124040(v42, v69, &qword_280E916D0, MEMORY[0x277D324F0]);
  v61 = *(v46 + 48);
  if (v61(v60, 1, v45) == 1)
  {
    sub_219BEF1C4();

    sub_2191240AC(v42, &qword_280E916D0, MEMORY[0x277D324F0]);
    sub_2191240AC(v87, &qword_280E91A70, sub_2189AD5C8);
    (*(v67 + 8))(v66, v86);
    if (v61(v60, 1, v45) != 1)
    {
      sub_2191240AC(v60, &qword_280E916D0, MEMORY[0x277D324F0]);
    }
  }

  else
  {

    sub_2191240AC(v42, &qword_280E916D0, MEMORY[0x277D324F0]);
    sub_2191240AC(v87, &qword_280E91A70, sub_2189AD5C8);
    (*(v67 + 8))(v66, v86);
    (*(v46 + 32))(v37, v60, v45);
  }

  v62 = v88;
  (*(v46 + 32))(&v88[v41[13]], v37, v45);
  sub_2193515C8(v62, v81);
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t sub_219350C78(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F43657269707865;
    v6 = 0xD000000000000016;
    if (a1 != 8)
    {
      v6 = 0x676E6970756F7267;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0x6E69576863746566;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x73656C7572;
    v2 = 0xD000000000000015;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000012;
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
}

uint64_t sub_219350DEC(void *a1)
{
  v3 = v1;
  sub_21935162C(0, &qword_27CC19098, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219351574();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877CA68(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_218BE9934();
    sub_21877CA68(&qword_27CC0EE30, sub_218BE9934);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186F9548();
    sub_21877CA68(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_2186ECA28();
    sub_21877CA68(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    v14 = *(v3 + v10[11]);
    v13 = 7;
    sub_2186F95C4();
    sub_21877CA68(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v14 = *(v3 + v10[12]);
    v13 = 8;
    sub_219BF7834();
    LOBYTE(v14) = 9;
    sub_219BEF244();
    sub_21877CA68(&unk_280E916E0, MEMORY[0x277D324F0]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2193512FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2193517A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219351324(uint64_t a1)
{
  v2 = sub_219351574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219351360(uint64_t a1)
{
  v2 = sub_219351574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2193513D0()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877CA68(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if (sub_219BEE9F4())
  {
    sub_218BE9934();
    type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
    if (sub_219BEEDE4() & 1) != 0 && (sub_219BEEDE4())
    {
      sub_2186F9548();
      if (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
      {
        sub_2186ECA28();
        if (sub_219BEF504())
        {
          sub_2186F95C4();
          if (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
          {

            JUMPOUT(0x21CEC5FB0);
          }
        }
      }
    }
  }

  return 0;
}

unint64_t sub_219351574()
{
  result = qword_27CC19090;
  if (!qword_27CC19090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19090);
  }

  return result;
}

uint64_t sub_2193515C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21935162C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219351574();
    v7 = a3(a1, &type metadata for SportsEventTopicTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2193516A4()
{
  result = qword_27CC190A0;
  if (!qword_27CC190A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC190A0);
  }

  return result;
}

unint64_t sub_2193516FC()
{
  result = qword_27CC190A8;
  if (!qword_27CC190A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC190A8);
  }

  return result;
}

unint64_t sub_219351754()
{
  result = qword_27CC190B0;
  if (!qword_27CC190B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC190B0);
  }

  return result;
}

uint64_t sub_2193517A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CEB600 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CEB620 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CE9C20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xED000073656C7552)
  {

    return 9;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

id FeedNavImageAssetHandle.__allocating_init(tag:feedNavImageSize:feedNavImageStyler:scale:overrideFallbackColor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v13[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
  *&v13[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = a1;
  v15 = swift_unknownObjectRetain();
  v16 = sub_219352488(v15);
  v17 = &v13[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *v17 = v16;
  v17[1] = v18;
  v19 = &v13[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
  *v19 = a4;
  v19[1] = a5;
  *&v13[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = a2;
  *&v13[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = a6;
  *&v13[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = a3;
  v22.receiver = v13;
  v22.super_class = v6;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  swift_unknownObjectRelease();
  return v20;
}

id FeedNavImageAssetHandle.__allocating_init(identifier:feedNavImage:feedNavImageSize:feedNavImageStyler:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  *&v15[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
  swift_beginAccess();
  *&v15[v17] = a3;
  v18 = &v15[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v15[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
  *v19 = a5;
  v19[1] = a6;
  *&v15[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = a4;
  *&v15[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = 0;
  *&v15[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = a7;
  *&v15[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
  v21.receiver = v15;
  v21.super_class = v7;
  return objc_msgSendSuper2(&v21, sel_init);
}

UIImage_optional __swiftcall FeedNavImageAssetHandle.generateFallbackImage()()
{
  sub_218ED5B50();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF2CE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_tag))
  {
    v10 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
    swift_beginAccess();
    v12 = *(v0 + v10);
    if (v12)
    {
      v13 = *(v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler);
      v14 = v12;
      [v13 cornerRadius];
      [v13 cornerRadius];
      v15 = sub_219BE5AD4();
      (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
      v16 = sub_219BF6D74();

      sub_218ED5C0C(v3);
      v17 = v16;
      goto LABEL_11;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_11;
  }

  swift_getObjectType();
  if ([swift_unknownObjectRetain() tagType] - 1 > 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v8 = *(v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler);
  [v8 cornerRadius];
  v9 = *(v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor);
  if (!v9)
  {
    sub_219BF6264();
    v9 = 0;
  }

  v18 = v9;
  v19 = [v8 tagTitleFont];
  [v8 padding];
  sub_219BF2CD4();
  v20 = sub_219BF6224();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  v17 = v20;
LABEL_11:
  result.value.super.isa = v17;
  result.is_nil = v11;
  return result;
}

uint64_t FeedNavImageAssetHandle.filePath.getter()
{
  v1 = (v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_filePath);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t FeedNavImageAssetHandle.filePath.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NEFeedNavImageAssetHandle_filePath);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *FeedNavImageAssetHandle.fallbackImage.getter()
{
  v1 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void FeedNavImageAssetHandle.fallbackImage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t FeedNavImageAssetHandle.uniqueKey.getter()
{
  v1 = *(v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey);

  return v1;
}

id FeedNavImageAssetHandle.init(identifier:feedNavImage:feedNavImageSize:feedNavImageStyler:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  *&v7[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
  swift_beginAccess();
  *&v7[v17] = a3;
  v18 = &v7[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v7[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
  *v19 = a5;
  v19[1] = a6;
  *&v7[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = a4;
  *&v7[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = 0;
  *&v7[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = a7;
  *&v7[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
  v21.receiver = v7;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

id FeedNavImageAssetHandle.init(tag:feedNavImageSize:feedNavImageStyler:scale:overrideFallbackColor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = sub_219352F04(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_219352488(void *a1)
{
  if ([a1 isSports])
  {
    v2 = [a1 identifier];
    v3 = sub_219BF5414();
    v5 = v4;

    MEMORY[0x21CECC330](v3, v5);

    return 0x2D7374726F7073;
  }

  else
  {
    v7 = [a1 identifier];
    v8 = sub_219BF5414();

    return v8;
  }
}

double FeedNavImageAssetHandle.assetDataProvider.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void FeedNavImageAssetHandle.download(withGroup:)(NSObject *a1)
{
  v2 = *&v1[OBJC_IVAR___NEFeedNavImageAssetHandle_tag];
  if (v2)
  {
    if ([swift_unknownObjectRetain() isLocal] && (*&v1[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize] >= 100.0 || *&v1[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize + 8] >= 100.0))
    {
      v4 = [v2 coverImageAssetHandle];
      if (v4)
      {
        v5 = v4;
        dispatch_group_enter(a1);
        v6 = swift_allocObject();
        v6[2] = v1;
        v6[3] = v5;
        v6[4] = a1;
        v40 = sub_219353094;
        v41 = v6;
        v36 = MEMORY[0x277D85DD0];
        v37 = 1107296256;
        v38 = sub_218793E0C;
        v39 = &block_descriptor_18_2;
        v7 = _Block_copy(&v36);
        v8 = v1;
        v9 = v5;
        v10 = a1;

        v11 = [v9 downloadIfNeededWithCompletion_];
LABEL_22:
        v32 = v11;
        swift_unknownObjectRelease();
        _Block_release(v7);

        swift_unknownObjectRelease();
        return;
      }
    }

    v12 = [v2 asSports];
    if (v12 && (v13 = [v12 sportsTheme], swift_unknownObjectRelease(), v13) && (v14 = objc_msgSend(v13, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), v14) || (v15 = objc_msgSend(v2, sel_asSports)) != 0 && (v16 = objc_msgSend(v15, sel_sportsTheme), swift_unknownObjectRelease(), v16) && (v14 = objc_msgSend(v16, sel_sportsLogoImageCompactAssetHandle), swift_unknownObjectRelease(), v14))
    {
      dispatch_group_enter(a1);
      v17 = swift_allocObject();
      v17[2] = v1;
      v17[3] = v14;
      v17[4] = a1;
      v40 = sub_219352FF8;
      v41 = v17;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_218793E0C;
      v39 = &block_descriptor_12_3;
      v7 = _Block_copy(&v36);
      v18 = v1;
      v19 = a1;
      v9 = v14;

      v11 = [v9 downloadIfNeededWithCompletion_];
      goto LABEL_22;
    }

    v20 = &v1[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    v21 = *&v1[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    if (v21 >= 100.0 || v20[1] >= 100.0)
    {
      v22 = [v2 feedNavImageHQAssetHandle];
      if (v22)
      {
        v23 = v22;
        dispatch_group_enter(a1);
        v24 = swift_allocObject();
        v24[2] = v1;
        v24[3] = v23;
        v24[4] = a1;
        v40 = sub_219353094;
        v41 = v24;
        v36 = MEMORY[0x277D85DD0];
        v37 = 1107296256;
        v38 = sub_218793E0C;
        v39 = &block_descriptor_6_1;
        v7 = _Block_copy(&v36);
        v25 = v1;
        v26 = a1;
        v9 = v23;

        v11 = [v9 downloadIfNeededWithCompletion_];
        goto LABEL_22;
      }
    }

    if (v21 < 100.0 || v20[1] < 100.0)
    {
      v27 = [v2 feedNavImageAssetHandle];
      if (v27)
      {
        v28 = v27;
        dispatch_group_enter(a1);
        v29 = swift_allocObject();
        v29[2] = v1;
        v29[3] = v28;
        v29[4] = a1;
        v40 = sub_219353094;
        v41 = v29;
        v36 = MEMORY[0x277D85DD0];
        v37 = 1107296256;
        v38 = sub_218793E0C;
        v39 = &block_descriptor_115;
        v7 = _Block_copy(&v36);
        v30 = v1;
        v31 = a1;
        v9 = v28;

        v11 = [v9 downloadIfNeededWithCompletion_];
        goto LABEL_22;
      }
    }

    if ([v2 tagType] - 1 > 1)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v33 = FeedNavImageAssetHandle.generateFallbackImage()();
      swift_unknownObjectRelease();
      v34 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
      swift_beginAccess();
      v35 = *&v1[v34];
      *&v1[v34] = v33;
    }
  }
}

void sub_219352BD4(uint64_t a1, id a2, NSObject *a3)
{
  v5 = [a2 filePath];
  if (v5)
  {
    v6 = v5;
    v7 = sub_219BF5414();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = (a1 + OBJC_IVAR___NEFeedNavImageAssetHandle_filePath);
  swift_beginAccess();
  *v10 = v7;
  v10[1] = v9;

  dispatch_group_leave(a3);
}

id FeedNavImageAssetHandle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedNavImageAssetHandle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_219352DE4()
{
  v1 = (*v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_filePath);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_219352E40@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_219352E50()
{
  v1 = *v0;
  v2 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_219352EA0()
{
  v1 = *(*v0 + OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey);

  return v1;
}

id sub_219352F04(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v6[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
  *&v6[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = a1;
  v15 = swift_unknownObjectRetain();
  v16 = sub_219352488(v15);
  v17 = &v6[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *v17 = v16;
  v17[1] = v18;
  v19 = &v6[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
  *v19 = a4;
  v19[1] = a5;
  *&v6[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = a2;
  *&v6[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = a6;
  *&v6[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = a3;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t type metadata accessor for ChannelTagLayoutOptions()
{
  result = qword_27CC19100;
  if (!qword_27CC19100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219353110()
{
  result = qword_27CC19110;
  if (!qword_27CC19110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19110);
  }

  return result;
}

uint64_t sub_219353164(uint64_t a1)
{
  v2 = sub_2193531A4();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_2193531A4()
{
  result = qword_27CC19118;
  if (!qword_27CC19118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19118);
  }

  return result;
}

uint64_t sub_219353208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v27 = a1;
  sub_218A74FF4();
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
  v15 = type metadata accessor for SavedFeedLayoutModel();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5AE84();
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

uint64_t sub_219353558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BE8C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0894();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDF44();
  if ((*(v9 + 88))(v11, v8) != *MEMORY[0x277D32F88])
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 96))(v11, v8);
  v12 = sub_219BF13B4();
  v13 = *(v12 - 8);
  if ((*(v13 + 88))(v11, v12) != *MEMORY[0x277D33338])
  {
    return (*(v13 + 8))(v11, v12);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_eventHandler);
      sub_219BE8C04();
      __swift_project_boxed_opaque_existential_1(v16 + 11, v16[14]);
      sub_218E30550();
      v17 = v16[5];
      ObjectType = swift_getObjectType();
      (*(v17 + 64))(a3, 1, v7, ObjectType, v17);

      (*(v5 + 8))(v7, v4);
      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_219353900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219353948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_219353208(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_219353978(uint64_t a1)
{
  sub_218A74FF4();
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_219353558(a1, v4, v5);
}

uint64_t sub_2193539EC@<X0>(uint64_t a1@<X8>)
{
  sub_218708A08(0, &unk_280EE68D0, sub_2187089D4, MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC7NewsUI222MagazineSectionService____lazy_storage___appVersion;
  swift_beginAccess();
  sub_219355A5C(v1 + v9, v8, &unk_280EE68D0, sub_2187089D4);
  sub_2187089D4(0);
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v8, 1, v10) != 1)
  {
    return sub_219356408(v8, a1, sub_2187089D4);
  }

  sub_219356304(v8, &unk_280EE68D0, sub_2187089D4);
  v13 = [objc_opt_self() mainBundle];
  sub_219BE3194();
  sub_2193557EC(a1, v6, sub_2187089D4);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_219356374(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_219353C2C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  sub_219356304(v0 + OBJC_IVAR____TtC7NewsUI222MagazineSectionService____lazy_storage___appVersion, &unk_280EE68D0, sub_2187089D4);

  return swift_deallocClassInstance();
}

uint64_t sub_219353CD4()
{
  type metadata accessor for MagazineConfig();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE3084();

  v1 = sub_219BE2E54();
  sub_218708A08(0, &qword_280E8F1E8, type metadata accessor for MagazineSectionConfig, MEMORY[0x277D83940]);
  sub_219BE2F94();

  v2 = sub_219BE2E54();
  sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
  sub_21935425C();
  sub_219BE30E4();

  v3 = sub_219BE2E54();
  sub_2193541F4(0, &unk_280E8F328, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D83940]);
  sub_219BE2F64();

  v4 = sub_219BE2E54();
  sub_219354D08();
  v5 = sub_219BE30C4();

  return v5;
}

uint64_t sub_219353F5C()
{
  v1 = v0[11];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_219353FB8(uint64_t a1, void *a2)
{
  if (qword_27CC08538 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314();

  v4 = a2[11];
  v5 = a2[12];
  __swift_project_boxed_opaque_existential_1(a2 + 8, v4);
  return (*(v5 + 8))(v4, v5);
}

void sub_219354130(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = (a1 + *(type metadata accessor for MagazineFeedConfig() + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = [*(a2 + 56) cachedSubscription];
  v9 = sub_2199FF68C(v8, v6, v7);

  *a3 = v9;
}

uint64_t sub_2193541B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2193542E4(a1);
  *a2 = result;
  return result;
}

void sub_2193541F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2186DEEA0(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_21935425C()
{
  result = qword_280E8F1E0;
  if (!qword_280E8F1E0)
  {
    sub_218708A08(255, &qword_280E8F1E8, type metadata accessor for MagazineSectionConfig, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F1E0);
  }

  return result;
}

uint64_t sub_2193542E4(uint64_t a1)
{
  v60 = a1;
  v54 = *v1;
  v2 = type metadata accessor for MagazineSectionConfig();
  v51 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v52 = v3;
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_219BF0FB4();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187089D4(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = sub_219BE3184();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v55 = v1;
  sub_2193539EC(v12);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    v23 = sub_219354ECC(v12);
    v24 = v60;
  }

  else
  {
    v49 = v14;
    v25 = *(v14 + 32);
    v25(v21, v12, v13);
    sub_2193557EC(v60 + v2[10], v10, sub_2187089D4);
    if (v22(v10, 1, v13) == 1)
    {
      sub_219354ECC(v10);
      v26 = v49;
    }

    else
    {
      v25(v19, v10, v13);
      if (sub_219BE3144())
      {
        sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        memset(v70, 0, 25);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        swift_allocObject();
        v27 = sub_219BE3014();
        v28 = *(v49 + 8);
        v28(v19, v13);
        v28(v21, v13);
        return v27;
      }

      v26 = v49;
      (*(v49 + 8))(v19, v13);
    }

    v24 = v60;
    v30 = v56;
    sub_2193557EC(v60 + v2[11], v56, sub_2187089D4);
    if (v22(v30, 1, v13) == 1)
    {
      (*(v26 + 8))(v21, v13);
      v23 = sub_219354ECC(v30);
    }

    else
    {
      v31 = v50;
      v25(v50, v30, v13);
      sub_219354E84(&qword_280EE68F0, MEMORY[0x277D6CF38]);
      if (sub_219BF5334())
      {
        sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        memset(v70, 0, 25);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        swift_allocObject();
        v32 = sub_219BE3014();
        v33 = *(v26 + 8);
        v33(v31, v13);
        v33(v21, v13);
        return v32;
      }

      v34 = *(v26 + 8);
      v34(v31, v13);
      v23 = (v34)(v21, v13);
    }
  }

  v35 = *(v24 + v2[12]);
  v36 = v59;
  v37 = v58;
  v38 = v57;
  if (*(v35 + 16) && (sub_219BF0FA4(), v39 = sub_218C31CFC(v38, v35), v23 = (*(v37 + 8))(v38, v36), (v39 & 1) == 0) || (v40 = *(v24 + v2[13]), *(v40 + 16)) && (sub_219BF0FA4(), v41 = sub_218C31CFC(v38, v40), v23 = (*(v37 + 8))(v38, v36), (v41 & 1) != 0))
  {
    sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    memset(v70, 0, 25);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    MEMORY[0x28223BE20](v23);
    v42 = v55;
    *(&v49 - 2) = v24;
    *(&v49 - 1) = v42;
    sub_2186DEEA0(0, qword_280ED0F98);
    sub_219BE3204();
    v43 = v53;
    sub_2193557EC(v24, v53, type metadata accessor for MagazineSectionConfig);
    v44 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v45 = swift_allocObject();
    sub_219356408(v43, v45 + v44, type metadata accessor for MagazineSectionConfig);
    v46 = sub_219BE2E54();
    sub_2186DEEA0(0, &qword_280EDA340);
    sub_219BE2F84();

    v47 = sub_219BE2E54();
    v48 = sub_219BE3054();

    return v48;
  }
}

uint64_t sub_219354C00()
{
  sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
  v0 = sub_219BE2E54();
  sub_219354E00();
  sub_219354E84(&qword_280E8F590, sub_219354E00);
  v1 = sub_219BE2F34();

  return v1;
}

unint64_t sub_219354D08()
{
  result = qword_280E8F320;
  if (!qword_280E8F320)
  {
    sub_2193541F4(255, &unk_280E8F328, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F320);
  }

  return result;
}

uint64_t sub_219354D8C(uint64_t a1, uint64_t a2)
{
  sub_2186DEEA0(0, &qword_280EDA340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_219354E00()
{
  if (!qword_280E8F598)
  {
    sub_2193541F4(255, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F598);
    }
  }
}

uint64_t sub_219354E84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219354ECC(uint64_t a1)
{
  sub_2187089D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219354F28(uint64_t a1)
{
  v2 = type metadata accessor for MagazineSectionConfig();
  v3 = a1 + *(v2 + 36);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      MEMORY[0x28223BE20](v2);
      type metadata accessor for FeedAvailability();

      sub_219BE3204();
      v7 = sub_219BE2E54();
      sub_2186DEEA0(0, qword_280ED0F98);
      v8 = sub_219BE2F84();

      sub_21896755C(v5, v4, 1u);
      return v8;
    }

    sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
    swift_allocObject();
  }

  else
  {
    sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
    swift_allocObject();
  }

  return sub_219BE3014();
}

uint64_t sub_2193551D0(uint64_t a1, void *a2, void *a3)
{
  v55 = a2;
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218708A08(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v51 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v67 = *(a1 + 16);
  if (v67 == 255)
  {
    sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    memset(v66, 0, 25);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v17 = *a1;
    v16 = *(a1 + 8);
    v18 = a3[3];
    v47 = a3[2];
    v19 = a3[1];
    v44 = *a3;
    v39 = v19;
    v40 = v13;
    v52 = type metadata accessor for MagazineSectionConfig();
    v20 = v52[6];
    v45 = a3;
    v21 = a3 + v20;
    v22 = v5;
    sub_219355A5C(v21, v15, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v53 = *(v6 + 48);
    v54 = v6 + 48;
    v23 = v53(v15, 1, v5);
    v49 = v17;
    v50 = v6;
    v48 = v16;
    v46 = v18;
    if (v23 == 1)
    {
      sub_219355ADC(v17, v16, v67);

      v42 = 0;
      v43 = 0;
      v41 = 0;
      v25 = v5;
      v26 = v24;
    }

    else
    {
      (*(v6 + 32))(v8, v15, v5);
      v28 = v55[5];
      v43 = v55[6];
      __swift_project_boxed_opaque_existential_1(v55 + 2, v28);
      sub_219355ADC(v17, v16, v67);

      v26 = v39;

      v43 = sub_219BF2FB4();
      v42 = sub_2186C6148(0, &qword_280E8E770);
      v41 = sub_2189EB528();
      (*(v6 + 8))(v8, v22);
      v25 = v22;
    }

    v29 = v45;
    v30 = v40;
    sub_219355A5C(v45 + v52[7], v40, &unk_280EE9D00, MEMORY[0x277CC9260]);
    if (v53(v30, 1, v25) == 1)
    {
      v39 = 0;
      v40 = 0;
      v31 = 0;
    }

    else
    {
      v32 = v50;
      (*(v50 + 32))(v8, v30, v25);
      __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
      v40 = sub_219BF2FB4();
      v39 = sub_2186C6148(0, &qword_280E8E770);
      v31 = sub_2189EB528();
      (*(v32 + 8))(v8, v25);
    }

    v33 = v51;
    sub_219355A5C(v29 + v52[8], v51, &unk_280EE9D00, MEMORY[0x277CC9260]);
    if (v53(v33, 1, v25) == 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v37 = v50;
      (*(v50 + 32))(v8, v33, v25);
      __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
      v36 = sub_219BF2FB4();
      v35 = sub_2186C6148(0, &qword_280E8E770);
      v34 = sub_2189EB528();
      (*(v37 + 8))(v8, v25);
    }

    *&v57 = v47;
    *(&v57 + 1) = v46;
    *&v58 = v44;
    *(&v58 + 1) = v26;
    v59 = v43;
    *&v60 = 0;
    *(&v60 + 1) = v42;
    *&v61 = v41;
    *(&v61 + 1) = v40;
    v62 = 0uLL;
    *&v63 = v39;
    *(&v63 + 1) = v31;
    v64 = v36;
    *&v65 = 0;
    *(&v65 + 1) = v35;
    v66[0] = v34;
    v66[1] = v49;
    v66[2] = v48;
    LOBYTE(v66[3]) = v67;
    sub_218C04EF0(&v57, &v56);
    sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v38 = sub_219BE3014();
    sub_218BBF734(&v57);
    return v38;
  }
}

uint64_t sub_2193557EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193558D0()
{
  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  *&v3 = 0;
  *(&v3 + 1) = 0xE000000000000000;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = v3;
  sub_2186C6148(0, &qword_280E8D790);
  v1 = sub_219BF6F44();
  sub_219BE5314();

  sub_2193541F4(0, &unk_280EE6EF0, &qword_280EDA340, &type metadata for MagazineSection, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219355A5C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218708A08(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_219355ADC(id result, id a2, char a3)
{
  if (a3 != -1)
  {
    return sub_218C04F4C(result, a2, a3);
  }

  return result;
}

uint64_t sub_219355AF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1[16];
  v5 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v4);
  memset(v7, 0, sizeof(v7));
  v8 = -1;
  return (*(v5 + 8))(v2, v3, 0, v7, v4, v5);
}

uint64_t sub_219355B88(uint64_t a1)
{
  v2 = type metadata accessor for FeedAvailability();
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193557EC(a1, v4, type metadata accessor for FeedAvailability);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = *v4;
      sub_218BFB73C();
      v30 = *(v29 + 48);
      sub_219BF61D4();
      sub_2186F20D4();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_219C09BA0;
      v32 = [v28 description];
      v33 = sub_219BF5414();
      v35 = v34;

      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = sub_2186FC3BC();
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      sub_2186C6148(0, &qword_280E8D790);
      v36 = sub_219BF6F44();
      sub_219BE5314();

      v43 = v28;
      v44 = 0;
      v45 = 1;
      sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v37 = sub_219BE3014();
      sub_219356304(&v4[v30], &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      return v37;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v4;
      v16 = v4[8];
      sub_219BF61F4();
      sub_2186F20D4();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_219C09EC0;
      v18 = [v15 description];
      v19 = sub_219BF5414();
      v21 = v20;

      v22 = MEMORY[0x277D837D0];
      *(v17 + 56) = MEMORY[0x277D837D0];
      v23 = sub_2186FC3BC();
      *(v17 + 64) = v23;
      *(v17 + 32) = v19;
      *(v17 + 40) = v21;
      v43 = 0;
      v44 = 0xE000000000000000;
      v46 = v16;
      sub_219BF7484();
      v24 = v43;
      v25 = v44;
      *(v17 + 96) = v22;
      *(v17 + 104) = v23;
      *(v17 + 72) = v24;
      *(v17 + 80) = v25;
      sub_2186C6148(0, &qword_280E8D790);
      v26 = sub_219BF6F44();
      sub_219BE5314();

      v43 = 0;
      v44 = 0;
      v45 = -1;
      sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v27 = sub_219BE3014();

      return v27;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v6 = *v4;
    sub_219BF61F4();
    sub_2186F20D4();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_219C09BA0;
    v8 = [v6 identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_2186FC3BC();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    sub_2186C6148(0, &qword_280E8D790);
    v12 = sub_219BF6F44();
    sub_219BE5314();

    v43 = 0;
    v44 = 0;
    v45 = -1;
    sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v13 = sub_219BE3014();
    swift_unknownObjectRelease();
    return v13;
  }

  v38 = *v4;
  v39 = *(v4 + 1);
  sub_219BF61F4();
  sub_2186F20D4();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_219C09BA0;
  *(v40 + 56) = MEMORY[0x277D837D0];
  *(v40 + 64) = sub_2186FC3BC();
  *(v40 + 32) = v38;
  *(v40 + 40) = v39;
  sub_2186C6148(0, &qword_280E8D790);
  v41 = sub_219BF6F44();
  sub_219BE5314();

  v43 = 0;
  v44 = 0;
  v45 = -1;
  sub_2193541F4(0, &qword_280EE6E98, qword_280ED0F98, &type metadata for MagazineSectionKind, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219356304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218708A08(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219356374(uint64_t a1, uint64_t a2)
{
  sub_218708A08(0, &unk_280EE68D0, sub_2187089D4, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_219356408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI233SearchMoreLayoutSectionDescriptorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219356488(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2193564D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_219356540()
{
  result = *v0;
  if (*v0)
  {
    v2 = v0[1];
    v3 = sub_219356E30(result, type metadata accessor for SearchMoreLayoutSectionDescriptor.Header, type metadata accessor for SearchMoreLayoutSectionDescriptor.Header);
    v4 = sub_219356E30(v2, type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer, type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer);
    sub_2191ED57C(v4);
    return v3;
  }

  return result;
}

uint64_t sub_2193565E0(uint64_t a1)
{
  v2 = sub_2193574D4();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_21935661C(uint64_t a1)
{
  v2 = sub_218FD8D9C();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21935665C()
{
  if (*v0)
  {
    return sub_2193570D8(v0[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21935668C(uint64_t a1)
{
  v2 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration(0);
  v67 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer(0);
  v58 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Header(0);
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
    sub_218C36668(0, v20, 0);
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
        sub_218C36668(v27 > 1, v28 + 1, 1);
        v23 = v68;
      }

      *(v23 + 16) = v28 + 1;
      sub_219356DC8(v11, v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28, type metadata accessor for SearchMoreLayoutSectionDescriptor.Header);
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
    sub_218C36618(0, v33, 0);
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
        sub_218C36618(v41 > 1, v42 + 1, 1);
        v39 = v58;
        v34 = v68;
      }

      *(v34 + 16) = v42 + 1;
      sub_219356DC8(v40, v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v42, type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer);
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
    sub_218C365C8(0, v44, 0);
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
        sub_218C365C8(v50 > 1, v51 + 1, 1);
        v45 = v68;
      }

      *(v45 + 16) = v51 + 1;
      sub_219356DC8(v4, v45 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v51, type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration);
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

uint64_t sub_219356DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219356E30(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
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
      sub_21935740C(v16, v9, v29);
      v21 = v28;
      sub_21935740C(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_219357474(v9, v20);
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

uint64_t sub_2193570D8(uint64_t a1)
{
  v31 = sub_219BEE914();
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C35B30(0, v11, 0);
    v12 = v35;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v28 = (v2 + 32);
    v29 = v14;
    v15 = (v2 + 8);
    do
    {
      sub_21935740C(v13, v10, type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration);
      v16 = v30;
      sub_21935740C(v10, v30, type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration);
      v17 = v16;
      v18 = v31;
      (*v28)(v4, v17, v31);
      sub_219BEE8F4();
      (*v15)(v4, v18);
      sub_219357474(v10, type metadata accessor for SearchMoreLayoutSectionDescriptor.Decoration);
      v35 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C35B30((v19 > 1), v20 + 1, 1);
      }

      v21 = v33;
      v22 = v34;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      MEMORY[0x28223BE20](v23);
      v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25);
      sub_218DD76AC(v20, v25, &v35, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v32);
      v12 = v35;
      v13 += v29;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_21935740C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219357474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2193574D4()
{
  result = qword_27CC19120;
  if (!qword_27CC19120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19120);
  }

  return result;
}

void __swiftcall AudioFeedModule.createViewController()(UIViewController *__return_ptr retstr)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for AudioFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for AudioFeedMastheadModelProvider();
  if (!sub_219BE1E24())
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2186C709C(0, &qword_280EE05D8);

  sub_219BE1E14();

  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  swift_getObjectType();
  sub_219357DD8();
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  swift_unknownObjectRetain();
  v6 = sub_219BE8344();
  *&v5[OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_mastheadViewProviderDelegate + 8] = *(v8 + 8);
  swift_unknownObjectWeakAssign();
  if (sub_219BED0C4())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_219BE9D54();
    [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    sub_219BE9CE4();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2193577C4(void *a1, uint64_t a2)
{
  v22 = sub_219BE14C4();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE15B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  v20 = a1[3];
  v21 = v15;
  v19[1] = __swift_project_boxed_opaque_existential_1(a1, v20);
  swift_unownedRetainStrong();
  (*(v12 + 104))(v14, *MEMORY[0x277D2F568], v11);
  sub_219BDD0F4();
  (*(v12 + 8))(v14, v11);
  (*(v4 + 104))(v6, *MEMORY[0x277D2F2F8], v22);
  sub_219BE1484();
  sub_219357F58(&qword_280EE8010, MEMORY[0x277D2F280]);
  v16 = v23;
  sub_219BDD1F4();

  (*(v24 + 8))(v10, v16);
  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  __swift_project_boxed_opaque_existential_1((a2 + 64), *(a2 + 88));
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  if (qword_280EE34F8 != -1)
  {
    swift_once();
  }

  v17 = sub_219BEBC84();
  __swift_project_value_buffer(v17, qword_280F623B0);
  sub_219357F58(&qword_280EE34B8, MEMORY[0x277D2D120]);
  sub_219BEC144();

  sub_2186C709C(0, &qword_280EE33B0);
  sub_219BE1BA4();
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_219357C40(void *a1, uint64_t a2)
{
  sub_21875D3C8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v18[0] = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D30138], v5);
  LOBYTE(a2) = sub_2189A2E1C(a2);
  sub_218A6E4C8();
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = (v13 + *(v11 + 48));
  v16 = *(v11 + 64);
  (*(v6 + 32))(v13, v8, v5);
  *v15 = 0;
  v15[1] = 0;
  *(v14 + v16) = a2 & 1;
  v18[1] = v12 | 0x5000000000000000;
  sub_219BE1BA4();
}

void sub_219357DD8()
{
  if (!qword_280EE4CF8)
  {
    type metadata accessor for AudioFeedViewController();
    sub_219357F58(&qword_280EC5D20, type metadata accessor for AudioFeedViewController);
    v0 = sub_219BE8364();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4CF8);
    }
  }
}

uint64_t AudioFeedModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  return v0;
}

uint64_t AudioFeedModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_219357F58(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_219357FA0(void *a1, uint64_t a2, uint64_t a3)
{
  v56 = a1;
  v54 = sub_219BDCAF4();
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView);
  v10 = type metadata accessor for TitleViewLayoutAttributes(0);
  v11 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  [v9 setFrame_];
  v12 = *(a3 + v10[11]);
  sub_2197570C0(v12, v9);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v13 = *(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel);
  v14 = v10[10];
  v55 = a3;
  LODWORD(a3) = *(a3 + v14);
  v15 = sub_219756CB8(v12);
  [v13 setFont_];

  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  [v13 setTextColor_];

  [v13 setNumberOfLines_];
  if (a3 == 1)
  {
    LODWORD(v18) = 1036831949;
    [v13 ts:v18 setHyphenationFactor:?];
  }

  [v13 setLineBreakMode_];
  v19 = v55;
  [v13 setFrame_];
  v20 = v56;
  v21 = sub_219BF53D4();
  [v13 setText_];

  v22 = *(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_subtitleLabel);
  [v22 setFrame_];
  v23 = v20[5];
  if (v23)
  {
    v51[1] = v20[4];
    v51[0] = v23;
    sub_21899E550();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09EC0;
    v25 = *MEMORY[0x277D740C0];
    v52 = v22;
    *(inited + 32) = v25;
    v26 = v25;
    v27 = [v16 secondaryLabelColor];
    v28 = sub_2186C6148(0, &qword_280E8DA80);
    *(inited + 40) = v27;
    v29 = *MEMORY[0x277D740A8];
    *(inited + 64) = v28;
    *(inited + 72) = v29;
    sub_219BF0CD4();
    v30 = sub_2186C6148(0, &qword_280E8DB00);
    v53 = a2;
    v31 = v30;
    v32 = v29;
    v33 = sub_219BF6BD4();
    v34 = v6;
    v35 = *(v6 + 104);
    v36 = v54;
    v35(v8, *MEMORY[0x277D6D198], v54);
    v37 = sub_219BF0CB4();

    (*(v34 + 8))(v8, v36);
    v19 = v55;
    *(inited + 104) = v31;
    *(inited + 80) = v37;
    sub_2188195F4(inited);
    v11 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    swift_setDeallocating();
    sub_218819588();
    swift_arrayDestroy();
    v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v39 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_21899E604();
    v40 = sub_219BF5204();

    v41 = v38;
    v20 = v56;
    v42 = [v41 initWithString:v39 attributes:v40];

    v22 = v52;
    a2 = v53;
  }

  else
  {
    v42 = 0;
  }

  [v22 setAttributedText_];

  v43 = v19 + v10[9];
  if ((*(v43 + 32) & 1) != 0 || !v20[8])
  {
    [*(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton) setHidden_];
  }

  else
  {
    v45 = *(v43 + 16);
    v44 = *(v43 + 24);
    v47 = *v43;
    v46 = *(v43 + 8);
    v48 = *(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton);
    sub_219130824(v48);
    [v48 v11[256]];
    v20 = v56;
    v49 = sub_219BF53D4();
    [v48 setTitle:v49 forState:0];

    [v48 sizeToFit];
    [v48 setHidden_];
  }

  return sub_219358588(v20, a2, v19);
}

id sub_219358588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + OBJC_IVAR____TtC7NewsUI29TitleView_chevron);
  if (v4)
  {
    v6 = v4;
    [v5 setContentMode_];
    [v5 setImage_];
    [v5 setHidden_];
    if (sub_219BED0C4())
    {
      v7 = [objc_opt_self() labelColor];
      [v5 setTintColor_];
    }

    else
    {
      if (qword_280E8DA88 != -1)
      {
        swift_once();
      }

      [v5 setTintColor_];
    }
  }

  else
  {
    [v5 setHidden_];
  }

  v8 = a3 + *(type metadata accessor for TitleViewLayoutAttributes(0) + 32);
  if (*(v8 + 32))
  {
    v9 = sel_setFrame_;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = v5;
  }

  else
  {
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    v19 = *v8;
    v18 = *(v8 + 8);
    v22.origin.x = *v8;
    v22.origin.y = v18;
    v22.size.width = v17;
    v22.size.height = v16;
    Width = CGRectGetWidth(v22);
    v23.origin.x = v19;
    v23.origin.y = v18;
    v23.size.width = v17;
    v23.size.height = v16;
    [v5 setBounds_];
    sub_219BF6B44();
    v9 = sel_setCenter_;
    v14 = v5;
  }

  return [v14 v9];
}

uint64_t sub_2193587B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2193587FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21935887C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = off_282A34C30[0];
  type metadata accessor for ChannelSectionHeadlinesService();
  v9();
  sub_21935896C(a4, a1, a2, a3, a5);
  v10 = sub_219BE31C4();

  return v10;
}

uint64_t sub_21935896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 16);
  v9 = (v8 + 40);
  v10 = *(v8 + 16) + 1;
  do
  {
    if (!--v10)
    {
      sub_21935D294(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

    v11 = v9 + 16;
    v12 = *v9;
    v9 += 16;
  }

  while ((v12 & 0x80000000) == 0);
  v13 = *(v11 - 3);
  __swift_project_boxed_opaque_existential_1((a2 + 40), *(a2 + 64));
  if (qword_280E8D7C8 != -1)
  {
    swift_once();
  }

  v14 = *MEMORY[0x277D30BC8];
  *&v19 = a3;
  *(&v19 + 1) = a4;
  *&v20 = qword_280F616F0;
  *(&v20 + 1) = v14;
  *&v21 = v13;
  *(&v21 + 1) = a5;
  *&v22 = MEMORY[0x277D84FA0];
  *(&v22 + 1) = MEMORY[0x277D84FA0];
  v23[2] = v21;
  v23[3] = v22;
  v23[0] = v19;
  v23[1] = v20;
  v15 = qword_280F616F0;
  v16 = v14;

  swift_unknownObjectRetain();
  v17 = sub_218C61998(v23);
  sub_218D06F24(&v19);
  return v17;
}

char *sub_219358B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a7;
  v63 = a8;
  v68 = a6;
  v77 = a5;
  v12 = type metadata accessor for NewspaperGroupKnobs();
  v69 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = v13;
  v71 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewspaperGroupConfig();
  v65 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v66 = v15;
  v67 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ChannelSectionsGroupPersonalizerRequest();
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ChannelSectionsGroupModel();
  v58 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v64 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = (&v57 - v22);
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = *(a2 + v14[12]);
  v27 = v24;
  v75 = v27;
  v76 = v23;
  v61 = a3;
  v73 = v25;
  if (v26 == 1)
  {
    v28 = v27;
  }

  else
  {

    v28 = sub_218CFEE6C(a3);
  }

  v29 = *(a4 + 104);
  v60 = a4;
  v72 = __swift_project_boxed_opaque_existential_1((a4 + 80), v29);
  v30 = *(a2 + v14[14]);
  v31 = *(a2 + v14[15]);
  v32 = v14[19];
  v33 = *(a2 + v14[18]);
  v34 = *(a2 + v32);
  v35 = v16[9];
  v36 = sub_219BEFBD4();
  (*(*(v36 - 8) + 16))(&v18[v35], v77, v36);
  if (qword_280E8D7C8 != -1)
  {
    swift_once();
  }

  v37 = qword_280F616F0;
  sub_219BE5444();
  *v18 = v28;
  *(v18 + 1) = v30;
  *(v18 + 2) = v31;
  *(v18 + 3) = v33;
  *(v18 + 4) = v34;
  v38 = MEMORY[0x277D84FA0];
  *&v18[v16[10]] = MEMORY[0x277D84FA0];
  *&v18[v16[11]] = v38;
  v39 = v28;
  v40 = v76;
  v41 = v74;
  sub_219BA640C(v18, v76);
  v42 = sub_21935CEC0(v18, type metadata accessor for ChannelSectionsGroupPersonalizerRequest);
  if (v41)
  {
  }

  else
  {
    MEMORY[0x28223BE20](v42);
    v74 = v39;
    v43 = v61;
    *(&v57 - 10) = v60;
    *(&v57 - 9) = v40;
    *(&v57 - 8) = v73;
    *(&v57 - 7) = a2;
    v44 = v68;
    *(&v57 - 6) = v68;
    *(&v57 - 5) = v43;
    v46 = v62;
    v45 = v63;
    *(&v57 - 4) = v77;
    *(&v57 - 3) = v46;
    *(&v57 - 2) = v45;
    sub_219BF1904();
    v77 = sub_219BE3204();

    v47 = a2;
    v48 = v67;
    sub_21935CCB4(v47, v67, type metadata accessor for NewspaperGroupConfig);
    v49 = v71;
    sub_21935CCB4(v44, v71, type metadata accessor for NewspaperGroupKnobs);
    v50 = v64;
    sub_21935CCB4(v40, v64, type metadata accessor for ChannelSectionsGroupModel);
    v51 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v52 = (v66 + *(v69 + 80) + v51) & ~*(v69 + 80);
    v53 = (v70 + *(v58 + 80) + v52) & ~*(v58 + 80);
    v54 = swift_allocObject();
    sub_21935CD1C(v48, v54 + v51, type metadata accessor for NewspaperGroupConfig);
    sub_21935CD1C(v49, v54 + v52, type metadata accessor for NewspaperGroupKnobs);
    sub_21935CD1C(v50, v54 + v53, type metadata accessor for ChannelSectionsGroupModel);
    v55 = sub_219BE2E54();
    type metadata accessor for NewspaperGroup();
    v18 = sub_219BE2F74();

    sub_21935CEC0(v40, type metadata accessor for ChannelSectionsGroupModel);
  }

  return v18;
}

id *sub_2193590F8(void *a1, void **a2, void *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v144 = a8;
  v142 = a7;
  v143 = a5;
  v136 = a6;
  v147 = a3;
  v148 = a1;
  v124 = sub_219BF2034();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_21935D294(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = &v110 - v14;
  v15 = sub_219BDBD34();
  MEMORY[0x28223BE20](v15 - 8);
  v120 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BDBD64();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v112 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21935CFA0(0, &qword_280E8FF40, MEMORY[0x277D342A0]);
  v119 = v18;
  v118 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v117 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v126 = &v110 - v21;
  sub_21935D294(0, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig, v12);
  MEMORY[0x28223BE20](v22 - 8);
  v134 = &v110 - v23;
  v24 = MEMORY[0x277D83D88];
  sub_21935D03C(0, &unk_280E8FD50, &qword_280E8FD60, MEMORY[0x277D345E8], MEMORY[0x277D83D88]);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v131 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v127 = &v110 - v28;
  v29 = MEMORY[0x277D339B0];
  sub_21935D03C(0, &unk_280E903D0, &qword_280E903E0, MEMORY[0x277D339B0], v24);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v137 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v138 = &v110 - v33;
  sub_21935CFA0(0, &qword_280E903E0, v29);
  v139 = *(v34 - 8);
  v140 = v34;
  MEMORY[0x28223BE20](v34);
  v129 = &v110 - v35;
  v141 = sub_219BEFBD4();
  v36 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v38 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ChannelSectionsGroupModel();
  MEMORY[0x28223BE20](v111);
  v40 = &v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ChannelHeroServiceRequest();
  MEMORY[0x28223BE20](v41);
  v151 = (&v110 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = sub_219BF1934();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v125 = &v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a2;
  ObjectType = swift_getObjectType();
  v133 = v44;
  v45 = [v44 identifier];
  v128 = sub_219BF5414();
  v146 = v46;

  v130 = a2;
  sub_21935CCB4(a2, v40, type metadata accessor for ChannelSectionsGroupModel);
  v47 = type metadata accessor for NewspaperGroupConfig();
  v48 = a4;
  v49 = *&a4[*(v47 + 96)];
  v50 = *MEMORY[0x277D30BC8];
  v51 = v36;
  v52 = *(v36 + 16);
  v53 = v38;
  v54 = v38;
  v55 = v141;
  v52(v54, v142);
  v142 = v47;
  v56 = *(v47 + 52);
  v135 = v48;
  v57 = MEMORY[0x277D84FA0];
  if ((v48[v56] & 1) == 0)
  {
    v57 = v136;
  }

  v58 = v151;
  sub_21935CD1C(v40, v151, type metadata accessor for ChannelSectionsGroupModel);
  *(v58 + v41[5]) = v147;
  *(v58 + v41[6]) = v49;
  *(v58 + v41[7]) = v50;
  (*(v51 + 32))(v58 + v41[8], v53, v55);
  *(v58 + v41[9]) = v144;
  *(v58 + v41[10]) = v57;
  *(v58 + v41[11]) = MEMORY[0x277D84FA0];
  __swift_project_boxed_opaque_existential_1(v148 + 15, v148[18]);
  v59 = *(v143 + 16);
  v60 = v49;
  v61 = v50;

  swift_unknownObjectRetain();
  v62 = v145;
  v63 = sub_21959BEBC(v58, v59);
  if (v62)
  {
    sub_21935CEC0(v58, type metadata accessor for ChannelHeroServiceRequest);

    return v58;
  }

  v145 = v63;
  v64 = v134;
  sub_218F998B0(v134);
  v65 = type metadata accessor for ChannelSupergroupConfig();
  if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
  {
    sub_21935D0A4(v64, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig);
    v66 = v135;
    v67 = v140;
    v68 = v137;
LABEL_9:
    v75 = *(v139 + 56);
    v75(v68, 1, 1, v67);
    v76 = v131;
    sub_21935D114(&v66[*(v142 + 20)], v131);
    sub_21935CFA0(0, &qword_280E8FD60, MEMORY[0x277D345E8]);
    v78 = v77;
    v79 = *(v77 - 8);
    if ((*(v79 + 48))(v76, 1, v77) == 1)
    {
      sub_21935D1B0(v76, &unk_280E8FD50, &qword_280E8FD60, MEMORY[0x277D345E8]);
      v80 = 1;
      v81 = v138;
    }

    else
    {
      v81 = v138;
      sub_219BF4B64();
      (*(v79 + 8))(v76, v78);
      v80 = 0;
    }

    v67 = v140;
    v75(v81, v80, 1, v140);
    v82 = v139;
    v83 = *(v139 + 48);
    v84 = v137;
    if (v83(v137, 1, v67) != 1)
    {
      sub_21935D1B0(v84, &unk_280E903D0, &qword_280E903E0, MEMORY[0x277D339B0]);
    }

    v85 = v138;
    goto LABEL_16;
  }

  v69 = v64 + *(v65 + 20);
  v70 = v127;
  sub_21935D114(v69, v127);
  sub_21935CEC0(v64, type metadata accessor for ChannelSupergroupConfig);
  sub_21935CFA0(0, &qword_280E8FD60, MEMORY[0x277D345E8]);
  v72 = v71;
  v73 = *(v71 - 8);
  v74 = (*(v73 + 48))(v70, 1, v71);
  v67 = v140;
  v68 = v137;
  if (v74 == 1)
  {
    sub_21935D1B0(v70, &unk_280E8FD50, &qword_280E8FD60, MEMORY[0x277D345E8]);
    v66 = v135;
    goto LABEL_9;
  }

  sub_219BF4B64();
  (*(v73 + 8))(v70, v72);
  v82 = v139;
  v86 = *(v139 + 56);
  v86(v68, 0, 1, v67);
  v85 = v138;
  (*(v82 + 32))(v138, v68, v67);
  v86(v85, 0, 1, v67);
  v83 = *(v82 + 48);
LABEL_16:
  if (v83(v85, 1, v67) == 1)
  {

    sub_21935D1B0(v85, &unk_280E903D0, &qword_280E903E0, MEMORY[0x277D339B0]);
    v58 = sub_219BEEDD4();
    sub_2186DED34(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v87 = 0xD00000000000001ALL;
    v87[1] = 0x8000000219CF3590;
    (*(*(v58 - 1) + 13))(v87, *MEMORY[0x277D323D8], v58);
    swift_willThrow();

    sub_21935CEC0(v151, type metadata accessor for ChannelHeroServiceRequest);
  }

  else
  {
    v88 = v129;
    (*(v82 + 32))(v129, v85, v67);
    v89 = v146;
    v90 = v128;
    v91 = sub_21935AA10(v135, v145, v128, v146, v130, v88);
    v144 = a9;
    v143 = v91;
    sub_21935C76C();
    v149 = 0;
    v150 = 0xE000000000000000;
    sub_219BF7314();

    v149 = 0x657061707377656ELL;
    v150 = 0xEB000000003A3A72;
    MEMORY[0x21CECC330](v90, v89);
    MEMORY[0x21CECC330](14906, 0xE200000000000000);
    v93 = v112;
    sub_219BDBD54();
    v94 = sub_219BDBD44();
    v96 = v95;
    (*(v115 + 8))(v93, v116);
    MEMORY[0x21CECC330](v94, v96);

    v137 = v150;
    v138 = v149;
    sub_219BDBD24();
    v141 = sub_219BEC004();
    v97 = *(v141 - 8);
    v139 = *(v97 + 56);
    v142 = v97 + 56;
    v98 = v121;
    (v139)(v121, 1, 1, v141);
    v99 = v118;
    v100 = v126;
    v101 = v119;
    (*(v118 + 16))(v117, v126, v119);
    v102 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84FA0];
    sub_219BF16F4();

    (*(v99 + 8))(v100, v101);
    (*(v82 + 8))(v129, v140);
    sub_21935CEC0(v151, type metadata accessor for ChannelHeroServiceRequest);
    v103 = sub_218CFD82C(*(v130 + *(v111 + 24)));
    v151 = 0;
    v149 = v103;

    sub_2191ED6C8(v104);
    v147 = v149;
    sub_2192F7C88();
    (v139)(v98, 1, 1, v141);
    sub_219A95188(v102);
    sub_219A95188(v102);
    sub_219A951A0(v102);
    sub_219A951B8(v102);
    sub_219A952CC(v102);
    sub_219A952E4(v102);
    sub_219A953F8(v102);
    v109 = v98;
    v105 = v125;
    v106 = v122;
    sub_219BF2024();
    v58 = v148[23];
    __swift_project_boxed_opaque_existential_1(v148 + 20, v58);
    v107 = v151;
    v108 = sub_219BF2194();
    if (!v107)
    {
      v58 = v108;
    }

    (*(v123 + 8))(v106, v124);
    (*(v113 + 8))(v105, v114);
  }

  return v58;
}

uint64_t sub_21935A320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a5;
  v64 = a4;
  v57 = a3;
  v61 = a1;
  v6 = type metadata accessor for ChannelSectionsGroupSectionModel();
  v45[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x277D32040];
  sub_21935D294(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = v45 - v10;
  v11 = sub_219BEF554();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v45 - v15;
  v53 = v45 - v15;
  v17 = sub_219BF1904();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v20;
  v21 = sub_219BED8D4();
  v59 = *(v21 - 8);
  v60 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = (v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v20, v61, v17);
  v24 = type metadata accessor for NewspaperGroupConfig();
  v25 = v24[10];
  v26 = (a2 + v24[9]);
  v28 = *v26;
  v27 = v26[1];
  v54 = v28;
  v49 = v27;
  v29 = *(v12 + 16);
  v29(v16, a2 + v25, v11);
  v29(v63, a2 + v24[11], v11);
  v30 = v57;
  v52 = *(v57 + 32);
  v51 = *(v57 + 40);
  v50 = *(v57 + 48);
  v48 = *(v57 + 56);
  v31 = v24[21];
  v32 = a2 + v24[20];
  v47 = *v32;
  v46 = *(v32 + 8);
  v45[1] = *(a2 + v31);
  v61 = a2;
  v33 = v30 + *(type metadata accessor for NewspaperGroupKnobs() + 40);
  sub_21935CF20(v33, v56, &unk_280E91B60, v58);

  v58 = v23;
  sub_219BED854();
  v34 = *(v64 + *(type metadata accessor for ChannelSectionsGroupModel() + 24));
  v35 = *(v34 + 16);
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    v65 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v37 = v34 + ((*(v45[0] + 80) + 32) & ~*(v45[0] + 80));
    v38 = *(v45[0] + 72);
    do
    {
      sub_21935CCB4(v37, v8, type metadata accessor for ChannelSectionsGroupSectionModel);
      swift_unknownObjectRetain();
      sub_21935CEC0(v8, type metadata accessor for ChannelSectionsGroupSectionModel);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v37 += v38;
      --v35;
    }

    while (v35);
    v36 = v65;
  }

  v39 = v61;
  v40 = v62;
  sub_21935CCB4(v61, v62, type metadata accessor for NewspaperGroupConfig);
  v41 = *v64;
  v42 = *(v39 + v24[25]);
  v43 = type metadata accessor for NewspaperGroup();
  (*(v59 + 32))(v40 + v43[5], v58, v60);
  *(v40 + v43[6]) = v41;
  *(v40 + v43[7]) = v36;
  *(v40 + v43[8]) = v42;

  return swift_unknownObjectRetain();
}

uint64_t sub_21935A8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NewspaperGroupConfig();
  sub_219BF61F4();
  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v8 = sub_2186FC3BC();
  *(v6 + 64) = v8;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  sub_2186CFDE4(0, &qword_280E8B580);

  sub_219BF7484();
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_21935AA10(char *a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v145 = a6;
  v156 = a5;
  v169 = a4;
  v176 = a3;
  v187 = a2;
  v7 = sub_219BF19F4();
  MEMORY[0x28223BE20](v7 - 8);
  v148 = v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21935CFA0(0, &qword_280E903E0, MEMORY[0x277D339B0]);
  v141 = v9;
  v140 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v142 = v139 - v10;
  sub_21935CFA0(0, &qword_280E8FD60, MEMORY[0x277D345E8]);
  MEMORY[0x28223BE20](v11 - 8);
  v143 = v139 - v12;
  v147 = sub_219BF2DE4();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v144 = v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for ChannelSectionsGroupSectionModel();
  v163 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v170 = v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_219BF20B4();
  v172 = *(v171 - 8);
  v15 = MEMORY[0x28223BE20](v171);
  v162 = v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v190 = v139 - v17;
  v18 = MEMORY[0x277D83D88];
  sub_21935D294(0, &qword_280E8FEA0, MEMORY[0x277D343A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v180 = v139 - v20;
  v21 = sub_219BF3034();
  MEMORY[0x28223BE20](v21 - 8);
  v179 = v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_219BF3C94();
  v155 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = (v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v183 = sub_219BF2D44();
  v181 = *(v183 - 8);
  v24 = MEMORY[0x28223BE20](v183);
  v182 = v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v188 = v139 - v26;
  v186 = sub_219BF1A44();
  v160 = *(v186 - 1);
  v27 = MEMORY[0x28223BE20](v186);
  v185 = v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v139 - v29;
  v31 = MEMORY[0x277D339D0];
  sub_21935D294(0, &qword_280E903B0, MEMORY[0x277D339D0], v18);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = (v139 - v33);
  v35 = sub_219BF26F4();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = v139 - v40;
  v194 = MEMORY[0x277D84FA0];
  v42 = type metadata accessor for NewspaperGroupConfig();
  sub_21935CF20(&a1[v42[8]], v34, &qword_280E903B0, v31);
  v43 = (*(v36 + 48))(v34, 1, v35);
  v159 = v39;
  v189 = v42;
  v153 = v36;
  if (v43 != 1)
  {
    (*(v36 + 32))(v41, v34, v35);
    (*(v36 + 16))(v39, v41, v35);
    sub_219BF1A04();
    v45 = sub_2191F8688(0, 1, 1, MEMORY[0x277D84F90]);
    v47 = *(v45 + 16);
    v50 = *(v45 + 24);
    v34 = (v47 + 1);
    if (v47 >= v50 >> 1)
    {
      v45 = sub_2191F8688(v50 > 1, v47 + 1, 1, v45);
    }

    v49 = v186;
    (*(v36 + 8))(v41, v35);
    v48 = v176;
    goto LABEL_8;
  }

  sub_21935D0A4(v34, &qword_280E903B0, MEMORY[0x277D339D0]);
  if (!*&a1[v42[7] + 8])
  {
    v149 = MEMORY[0x277D84F90];
    v48 = v176;
    goto LABEL_9;
  }

  v44 = v159;
  sub_219BF20F4();
  v153[13](v44, *MEMORY[0x277D339C8], v35);
  v30 = v185;
  sub_219BF1A04();
  v45 = sub_2191F8688(0, 1, 1, MEMORY[0x277D84F90]);
  v47 = *(v45 + 16);
  v46 = *(v45 + 24);
  v34 = (v47 + 1);
  if (v47 >= v46 >> 1)
  {
    goto LABEL_124;
  }

LABEL_4:
  v48 = v176;
  v49 = v186;
LABEL_8:
  *(v45 + 16) = v34;
  v51 = *(v160 + 32);
  v52 = (*(v160 + 80) + 32) & ~*(v160 + 80);
  v149 = v45;
  v51(v45 + v52 + *(v160 + 72) * v47, v30, v49);
  v42 = v189;
LABEL_9:
  v45 = *(v187 + 16);
  v53 = (v45 >> 62);
  if (!(v45 >> 62))
  {
    v54 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

  while (1)
  {
    v54 = sub_219BF7214();
    v42 = v189;
LABEL_11:
    if (v54 < *&a1[v42[16]])
    {

      if (qword_280E8D7C8 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_219C09EC0;
      if (v53)
      {
        v56 = sub_219BF7214();
      }

      else
      {
        v56 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v59 = MEMORY[0x277D83C10];
      *(v55 + 56) = MEMORY[0x277D83B88];
      *(v55 + 64) = v59;
      *(v55 + 32) = v56;
      *(v55 + 96) = MEMORY[0x277D837D0];
      *(v55 + 104) = sub_2186FC3BC();
      v60 = v169;
      *(v55 + 72) = v48;
      *(v55 + 80) = v60;

      sub_219BF6214();
      sub_219BE5314();

      v61 = 3;
      goto LABEL_113;
    }

    v46 = v42[17];
    v47 = *&a1[v46];
    if ((v47 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      v45 = sub_2191F8688(v46 > 1, v34, 1, v45);
      goto LABEL_4;
    }

    if (!v53)
    {
      v57 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57 >= v47)
      {
        v46 = *&a1[v46];
      }

      else
      {
        v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v47)
      {
        v58 = v46;
      }

      else
      {
        v58 = 0;
      }

      goto LABEL_39;
    }

    v30 = (v45 & 0x8000000000000000) != 0 ? v45 : v45 & 0xFFFFFFFFFFFFFF8;
    v62 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
      break;
    }

    if (v62 >= v47)
    {
      v64 = v47;
    }

    else
    {
      v64 = v62;
    }

    if (v62 < 0)
    {
      v64 = v47;
    }

    if (v47)
    {
      v58 = v64;
    }

    else
    {
      v58 = 0;
    }

    v57 = sub_219BF7214();
LABEL_39:
    if (v57 < v58)
    {
      goto LABEL_123;
    }

    if ((v45 & 0xC000000000000001) != 0 && v58)
    {
      v30 = sub_218731D50();

      v65 = 0;
      do
      {
        v66 = v65 + 1;
        sub_219BF7334();
        v65 = v66;
      }

      while (v58 != v66);
    }

    else
    {
    }

    v185 = a1;
    v157 = v35;
    if (v53)
    {

      v154 = sub_219BF7564();
      v58 = v69 >> 1;
    }

    else
    {
      v67 = 0;
      v154 = v45 & 0xFFFFFFFFFFFFFF8;
      v68 = (v45 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v184 = MEMORY[0x277D84F90];
    if (v58 == v67)
    {
LABEL_50:
      swift_unknownObjectRelease();
      v70 = type metadata accessor for ChannelSectionsGroupModel();
      v45 = v139;
      v71 = *(v156 + *(v70 + 24));
      MEMORY[0x28223BE20](v70);
      v35 = v185;
      *&v138 = v185;

      v72 = v71;
      v73 = v161;
      v74 = sub_2195E6694(sub_21935D220, &v137, v72);
      v139[1] = v73;
      v75 = *(v74 + 16);
      if (v75 < *(v35 + v189[18]))
      {

        v61 = 4;
        v60 = v169;
        v48 = v176;
        goto LABEL_113;
      }

      v139[0] = *(v35 + v189[18]);
      v48 = v176;
      if (!v75)
      {

        v131 = 0;
LABEL_110:

        if (v131 >= v139[0])
        {
          v191 = 0;
          v192 = 0xE000000000000000;
          sub_219BF7314();

          v191 = 0xD000000000000013;
          v192 = 0x8000000219D19000;
          MEMORY[0x21CECC330](v48, v169);
          (*(v140 + 16))(v142, v145, v141);
          sub_219BF1944();
          sub_2186DED34(&unk_280E907F0, MEMORY[0x277D33498]);
          sub_219BF4B74();
          v137 = 0u;
          v138 = 0u;
          v133 = v148;
          sub_219BF19E4();
          *&v138 = v133;
          *(&v138 + 1) = MEMORY[0x277D84F90];
          v134 = v144;
          sub_219BF2D54();
          sub_21935D294(0, &unk_280E8B7F0, MEMORY[0x277D33C00], MEMORY[0x277D84560]);
          v135 = v146;
          v136 = (*(v146 + 80) + 32) & ~*(v146 + 80);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_219C09BA0;
          (*(v135 + 32))(v61 + v136, v134, v147);
          return v61;
        }

        v61 = 4;
        v60 = v169;
LABEL_113:
        sub_21935D240();
        swift_allocError();
        *v132 = v48;
        *(v132 + 8) = v60;
        *(v132 + 16) = v61;
        swift_willThrow();

        return v61;
      }

      v167 = 0;
      v99 = 0;
      *&v165 = *(v35 + v189[14]);
      v166 = (v74 + ((*(v163 + 80) + 32) & ~*(v163 + 80)));
      LODWORD(v175) = *MEMORY[0x277D340E0];
      v174 = (v155 + 104);
      v173 = v181 + 32;
      v155 = "}@, error=%{public}@";
      LODWORD(v154) = *MEMORY[0x277D339C8];
      v153 += 13;
      v152 = "newspaper-section-kicker-title";
      v151 = v172 + 32;
      v150 = xmmword_219C09EC0;
      *&v164 = v74;
      v161 = v75;
      while (v99 < *(v74 + 16))
      {
        v100 = *(v163 + 72);
        v168 = v99;
        v101 = v166 + v100 * v99;
        v102 = v170;
        sub_21935CCB4(v101, v170, type metadata accessor for ChannelSectionsGroupSectionModel);
        v103 = *(v102 + 48);
        if (v103 >> 62)
        {
          v53 = sub_219BF7214();
          if (v53)
          {
LABEL_73:
            v48 = 0;
            v190 = (v103 & 0xC000000000000001);
            v188 = (v103 & 0xFFFFFFFFFFFFFF8);
            v156 = v103;
            v187 = v103 + 32;
            v34 = MEMORY[0x277D84F90];
            v186 = v53;
            while (1)
            {
              if (v190)
              {
                v104 = MEMORY[0x21CECE0F0](v48, v156);
              }

              else
              {
                if (v48 >= *(v188 + 2))
                {
                  goto LABEL_116;
                }

                v104 = *(v187 + 8 * v48);
                swift_unknownObjectRetain();
              }

              v105 = __OFADD__(v48++, 1);
              if (v105)
              {
                break;
              }

              if (v34[2] >= *(v35 + v189[15]))
              {
                swift_unknownObjectRelease();
                goto LABEL_99;
              }

              v106 = v34;
              v107 = v194;
              v108 = [v104 identifier];
              v109 = sub_219BF5414();
              a1 = v110;

              if (*(v107 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v111 = sub_219BF7AE4(), v45 = v107 + 56, v112 = -1 << *(v107 + 32), v113 = v111 & ~v112, ((*(v107 + 56 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) != 0))
              {
                v30 = ~v112;
                while (1)
                {
                  v114 = (*(v107 + 48) + 16 * v113);
                  v115 = *v114 == v109 && v114[1] == a1;
                  if (v115 || (sub_219BF78F4() & 1) != 0)
                  {
                    break;
                  }

                  v113 = (v113 + 1) & v30;
                  if (((*(v45 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) == 0)
                  {
                    goto LABEL_89;
                  }
                }

                swift_unknownObjectRelease();

                v35 = v185;
                v53 = v186;
                v34 = v106;
                if (v48 == v186)
                {
                  goto LABEL_99;
                }
              }

              else
              {
LABEL_89:

                v116 = [v104 identifier];
                v117 = sub_219BF5414();
                v119 = v118;

                sub_219497B60(&v191, v117, v119);

                v120 = [v104 identifier];
                sub_219BF5414();
                a1 = v121;

                sub_219BF2FF4();
                sub_219BF16E4();
                swift_allocObject();
                v122 = sub_219BF1694();
                v123 = v177;
                *v177 = v122;
                (*v174)(v123, v175, v178);
                v124 = sub_219BF4324();
                (*(*(v124 - 8) + 56))(v180, 1, 1, v124);
                sub_219BF2D24();
                v34 = v106;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v34 = sub_2191F8620(0, v106[2] + 1, 1, v106);
                }

                v35 = v185;
                v53 = v186;
                v30 = v34[2];
                v125 = v34[3];
                v45 = v30 + 1;
                if (v30 >= v125 >> 1)
                {
                  v34 = sub_2191F8620(v125 > 1, v30 + 1, 1, v34);
                }

                swift_unknownObjectRelease();
                v34[2] = v45;
                (*(v181 + 32))(v34 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v30, v182, v183);
                if (v48 == v53)
                {
                  goto LABEL_99;
                }
              }
            }

            __break(1u);
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }
        }

        else
        {
          v53 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v53)
          {
            goto LABEL_73;
          }
        }

        v34 = MEMORY[0x277D84F90];
LABEL_99:
        if (v34[2] < v165)
        {

          v48 = v176;
        }

        else
        {
          v191 = 0x2D6E6F6974636573;
          v192 = 0xE800000000000000;
          v193 = v167;
          v126 = sub_219BF7894();
          MEMORY[0x21CECC330](v126);

          v190 = v191;
          v188 = v192;
          sub_21935D294(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
          v187 = *(v160 + 72);
          v30 = swift_allocObject();
          *(v30 + 16) = v150;
          a1 = v159;
          sub_219BF20F4();
          v53 = v153;
          v186 = v34;
          v34 = *v153;
          v127 = v154;
          v128 = v157;
          (*v153)(a1, v154, v157);
          sub_219BF1A04();
          sub_219BF20E4();
          (v34)(a1, v127, v128);
          sub_219BF1A04();
          sub_219BF2054();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v184 = sub_2191F8654(0, v184[2] + 1, 1, v184);
          }

          v45 = v184[2];
          v129 = v184[3];
          v48 = v176;
          if (v45 >= v129 >> 1)
          {
            v184 = sub_2191F8654(v129 > 1, v45 + 1, 1, v184);
          }

          v130 = v184;
          v184[2] = v45 + 1;
          (*(v172 + 32))(v130 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v45, v162, v171);
          v105 = __OFADD__(v167++, 1);
          if (v105)
          {
            goto LABEL_120;
          }
        }

        v99 = v168 + 1;
        sub_21935CEC0(v170, type metadata accessor for ChannelSectionsGroupSectionModel);
        v74 = v164;
        if (v99 == v161)
        {

          v131 = v167;
          goto LABEL_110;
        }
      }
    }

    else
    {
      v35 = 0;
      v186 = (v155 + 104);
      v175 = v181 + 16;
      LODWORD(v174) = *MEMORY[0x277D340E0];
      v173 = v172 + 32;
      v166 = (v181 + 8);
      v168 = v58 - v67;
      if (v58 <= v67)
      {
        v76 = v67;
      }

      else
      {
        v76 = v58;
      }

      v187 = v76 - v67;
      v167 = v68 + 8 * v67;
      a1 = MEMORY[0x277D83B88];
      v165 = xmmword_219C09BA0;
      v164 = xmmword_219C0B8C0;
      v184 = MEMORY[0x277D84F90];
      while (v187 != v35)
      {
        if (__OFADD__(v35, 1))
        {
          goto LABEL_118;
        }

        v48 = *(v167 + 8 * v35);
        v77 = [swift_unknownObjectRetain() identifier];
        v78 = sub_219BF5414();
        v80 = v79;

        sub_219497B60(&v191, v78, v80);

        v81 = [v48 identifier];
        sub_219BF5414();

        sub_219BF2FF4();
        sub_219BF16E4();
        swift_allocObject();
        v82 = sub_219BF1694();
        v83 = v177;
        *v177 = v82;
        (*v186)(v83, v174, v178);
        v84 = sub_219BF4324();
        (*(*(v84 - 8) + 56))(v180, 1, 1, v84);
        v85 = v188;
        sub_219BF2D24();
        v191 = 0x2D6F726568;
        v192 = 0xE500000000000000;
        v193 = v35;
        v86 = sub_219BF7894();
        MEMORY[0x21CECC330](v86);

        sub_21935D294(0, &unk_280E8B800, MEMORY[0x277D33BF0], MEMORY[0x277D84560]);
        v87 = v181;
        v88 = (*(v181 + 80) + 32) & ~*(v181 + 80);
        v89 = swift_allocObject();
        *(v89 + 16) = v165;
        (*(v87 + 16))(v89 + v88, v85, v183);
        sub_219BF2054();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_2191F8654(0, v184[2] + 1, 1, v184);
        }

        v91 = v184[2];
        v90 = v184[3];
        if (v91 >= v90 >> 1)
        {
          v184 = sub_2191F8654(v90 > 1, v91 + 1, 1, v184);
        }

        v92 = v184;
        v184[2] = v91 + 1;
        (*(v172 + 32))(v92 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v91, v190, v171);
        if (qword_280E8D7C8 != -1)
        {
          swift_once();
        }

        v45 = qword_280F616F0;
        sub_2186F20D4();
        v93 = swift_allocObject();
        *(v93 + 16) = v164;
        v34 = [v48 identifier];
        v94 = sub_219BF5414();
        v30 = v95;

        v53 = MEMORY[0x277D837D0];
        *(v93 + 56) = MEMORY[0x277D837D0];
        v96 = sub_2186FC3BC();
        *(v93 + 32) = v94;
        *(v93 + 40) = v30;
        a1 = MEMORY[0x277D83B88];
        *(v93 + 96) = MEMORY[0x277D83B88];
        v97 = MEMORY[0x277D83C10];
        *(v93 + 64) = v96;
        *(v93 + 72) = v35;
        *(v93 + 136) = v53;
        *(v93 + 144) = v96;
        v98 = v176;
        *(v93 + 104) = v97;
        *(v93 + 112) = v98;
        *(v93 + 120) = v169;

        sub_219BF6214();
        sub_219BE5314();
        swift_unknownObjectRelease();

        (*v166)(v188, v183);
        if (v168 == ++v35)
        {
          goto LABEL_50;
        }
      }

LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
    }

    __break(1u);
LABEL_120:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_21935C6F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 >= *(a2 + *(type metadata accessor for NewspaperGroupConfig() + 56));
}

uint64_t sub_21935C76C()
{
  sub_21935CFA0(0, &qword_280E8FF40, MEMORY[0x277D342A0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - v3;
  sub_21935D294(0, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = MEMORY[0x277D339B0];
  sub_21935D03C(0, &unk_280E903D0, &qword_280E903E0, MEMORY[0x277D339B0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  sub_21935CFA0(0, &qword_280E903E0, v8);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  swift_getObjectType();
  sub_218F998B0(v7);
  v17 = type metadata accessor for ChannelSupergroupConfig();
  if ((*(*(v17 - 8) + 48))(v7, 1, v17) == 1)
  {
    sub_21935D0A4(v7, qword_280EC58B0, type metadata accessor for ChannelSupergroupConfig);
    (*(v14 + 56))(v11, 1, 1, v13);
LABEL_4:
    sub_21935D1B0(v11, &unk_280E903D0, &qword_280E903E0, MEMORY[0x277D339B0]);
    sub_219BF1944();
    sub_2186DED34(&unk_280E907F0, MEMORY[0x277D33498]);
    return sub_219BF4064();
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_21935CEC0(v7, type metadata accessor for ChannelSupergroupConfig);
  sub_219BF4054();
  (*(v2 + 8))(v4, v1);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  (*(v14 + 32))(v16, v11, v13);
  sub_21935D03C(0, &unk_280E8B810, &qword_280E903E0, MEMORY[0x277D339B0], MEMORY[0x277D84560]);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  (*(v14 + 16))(v20 + v19, v16, v13);
  sub_219BF1944();
  sub_2186DED34(&unk_280E907F0, MEMORY[0x277D33498]);
  sub_219BF4064();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_21935CCB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21935CD1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21935CD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NewspaperGroupConfig() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for NewspaperGroupKnobs() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for ChannelSectionsGroupModel() - 8);
  return sub_21935A320(a1, v2 + v6, v2 + v9, (v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80))), a2);
}

uint64_t sub_21935CEC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21935CF20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21935D294(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_21935CFA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_219BF1944();
    v7 = sub_2186DED34(&unk_280E907F0, MEMORY[0x277D33498]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21935D03C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_21935CFA0(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21935D0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21935D294(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21935D114(uint64_t a1, uint64_t a2)
{
  sub_21935D03C(0, &unk_280E8FD50, &qword_280E8FD60, MEMORY[0x277D345E8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21935D1B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_21935D03C(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_21935D240()
{
  result = qword_27CC19158;
  if (!qword_27CC19158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19158);
  }

  return result;
}

void sub_21935D294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21935D344(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = *(a1 + *(type metadata accessor for AudioFeedTrack(0) + 44));

  return a4(v6, v7, a2, a3);
}

uint64_t sub_21935D3C0()
{
  v0 = sub_219BE00C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE00B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(result + OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler);
    v13 = result;
    swift_unknownObjectRetain();

    __swift_project_boxed_opaque_existential_1((v12 + 88), *(v12 + 112));
    (*(v1 + 104))(v3, *MEMORY[0x277D2E328], v0);
    sub_219BE00A4();
    (*(v5 + 16))(v8, v10, v4);
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    (*(v5 + 32))(v15 + v14, v8, v4);
    sub_219BDD154();

    (*(v5 + 8))(v10, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21935D644()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion] = 3;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler);
    v3 = result;
    swift_unknownObjectRetain();

    __swift_project_boxed_opaque_existential_1((v2 + 88), *(v2 + 112));
    sub_219BDD154();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21935D778(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3;
  v7 = *(*(v3 + OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler) + 32);
  v8 = v7[9];
  v9 = v7[10];
  __swift_project_boxed_opaque_existential_1(v7 + 6, v8);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(v9 + 32);

  v11(a1, a2, v10, v8, v9);

  *(v6 + OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion) = a3;
  return result;
}

void sub_21935D9D8()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setModalPresentationStyle_];
  v2 = [v0 contentView];
  [v2 setClipsToBounds_];

  v3 = *&v1[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_imageView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_218DF5180(v39);

  sub_218BAF928(v39);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_219BF53D4();

  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  if (v7)
  {
    [v3 setImage_];

    [v3 setContentMode_];
    [v3 sizeToFit];
    v8 = [v1 contentView];
    [v8 addSubview_];

    v9 = objc_opt_self();
    sub_21935E4E8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C24300;
    v11 = [v3 topAnchor];
    v12 = [v1 contentView];
    v13 = [v12 topAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v10 + 32) = v14;
    v15 = [v3 leadingAnchor];
    v16 = [v1 contentView];
    v17 = [v16 leadingAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v10 + 40) = v18;
    v19 = [v3 trailingAnchor];
    v20 = [v1 contentView];
    v21 = [v20 trailingAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v10 + 48) = v22;
    v23 = [v3 bottomAnchor];
    v24 = [v1 contentView];
    v25 = [v24 bottomAnchor];

    v26 = [v23 constraintEqualToAnchor_];
    *(v10 + 56) = v26;
    sub_218C264F8();
    v27 = sub_219BF5904();

    [v9 activateConstraints_];

    sub_218DF5180(v40);
    v44 = v41;
    sub_2189D2C04(&v44, v43);
    sub_218BAF928(v40);
    v28 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v29 = v44;
      v30 = [v1 buttonTray];
      sub_21935E4E8(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_219C09BA0;
      *(v31 + 32) = v29;
      *(v31 + 40) = v28;
      v32 = sub_219BF5904();

      [v30 setPrivacyLinkForBundles_];
    }

    v33 = *&v1[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_confirmationButton];
    sub_218DF5180(v42);

    sub_218BAF928(v42);
    v34 = sub_219BF53D4();

    [v33 setTitle:v34 forState:0];

    [v33 addTarget:v1 action:sel_doConfirmationAction forControlEvents:64];
    v35 = [v1 buttonTray];
    [v35 addButton_];

    v36 = *&v1[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_deferButton];
    sub_218DF5180(v43);

    sub_218BAF928(v43);
    v37 = sub_219BF53D4();

    [v36 setTitle:v37 forState:0];

    [v36 addTarget:v1 action:sel_doDeferAction forControlEvents:64];
    v38 = [v1 buttonTray];
    [v38 addButton_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21935E0B8(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  __swift_project_boxed_opaque_existential_1((*&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler] + 88), *(*&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler] + 112));
  sub_219BDD154();
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_app], *&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_app + 24]);
  [sub_219BEA8D4() setIsActive_];
  return swift_unknownObjectRelease();
}

uint64_t sub_21935E1E0(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1 & 1);
  v4 = OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion;
  if (v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion] == 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion];
  }

  sub_218FA7C90(v5);
  v2[v4] = 3;
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_app], *&v2[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_app + 24]);
  [sub_219BEA8D4() setIsActive_];
  return swift_unknownObjectRelease();
}

void sub_21935E3CC()
{
  sub_218718690(v0 + OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_styler, v7);
  v1 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *(*__swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    [v3 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v7);
    v5 = [v0 contentView];
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21935E4E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21935E558()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935E658()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935E784()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935E8A4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935E99C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935EAAC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935EBB0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935ECB0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935EDCC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935EEE8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935F004()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935F124()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935F234()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21935F364()
{
  sub_219BF5524();
}

uint64_t sub_21935F464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219362178();
  *a1 = result;
  return result;
}

void sub_21935F494(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x656546664F706F74;
  v5 = 0xE600000000000000;
  v6 = 0x646568636163;
  v7 = 0xEC0000006C6F6F70;
  v8 = 0x6552646568636163;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000219CD7F50;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x68736572666572;
  if (v2 != 1)
  {
    v10 = 0x646E61707865;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_21935F610()
{
  result = qword_27CC19198;
  if (!qword_27CC19198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19198);
  }

  return result;
}

id sub_21935F664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v51 = a3;
  v4 = sub_219BDB184();
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_219BEE3D4();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0BD4();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDBD34();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v62 = &v48 - v16;
  sub_219362040();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BEEAF4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 16);
  v59 = a1;
  v26(v25, a1, v22);
  v27 = (*(v23 + 88))(v25, v22);
  if (v27 == *MEMORY[0x277D32288])
  {
    v28 = v55;
    v29 = *(v55 + 24);

    sub_219BF0994();
    sub_219BEE374();

    v30 = sub_219BEFA14();
    (*(v19 + 8))(v21, v18);
    v31 = sub_2194796A0(v30, v29);
    v32 = v28;
    v33 = v62;
  }

  else
  {
    v32 = v55;
    v31 = MEMORY[0x277D84FA0];
    if (v27 == *MEMORY[0x277D32270])
    {
      v33 = v62;
    }

    else
    {
      v33 = v62;
      if (v27 != *MEMORY[0x277D32280] && v27 != *MEMORY[0x277D32278])
      {
        (*(v23 + 8))(v25, v22);
      }
    }
  }

  sub_21935FCBC(v32, v33);
  v34 = *(v32 + 8);
  sub_219BF08F4();
  sub_219BF0BB4();
  (*(v56 + 8))(v10, v57);
  v35 = v61;
  v36 = sub_219BF5F24();
  if (v35)
  {

    (*(v58 + 8))(v7, v60);
    return (*(v52 + 8))(v33, v53);
  }

  else
  {
    v59 = v31;
    v61 = v36;
    (*(v58 + 8))(v7, v60);
    result = [v34 startDate];
    if (result)
    {
      v38 = result;
      sub_2186E2348();
      v39 = v48;
      sub_219BDBCA4();

      v40 = v49;
      sub_219BDBD24();
      sub_219BDB104();
      v41 = v53;
      v42 = *(v52 + 8);
      v42(v40, v53);
      v42(v39, v41);
      v43 = sub_219BF5F04();
      v44 = *(type metadata accessor for TodayFeedServiceContext() + 36);
      v45 = sub_219BEE754();
      v46 = v51;
      (*(*(v45 - 8) + 16))(v51 + v44, v32 + v44, v45);
      *v46 = 1;
      *(v46 + 8) = v61;
      result = (v42)(v62, v41);
      v47 = v59;
      *(v46 + 16) = v43;
      *(v46 + 24) = v47;
      *(v46 + 32) = MEMORY[0x277D84FA0];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_21935FCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  sub_2186DDBE0(0, &qword_280E90C58, MEMORY[0x277D32FE8]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_219BF0C04();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayPrewarmManager();
  sub_219BDBD24();
  sub_2187B8F4C(v10, v13);
  v18 = *(v3 + 8);
  v18(v10, v2);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21936211C(v13, &qword_280E90C58, MEMORY[0x277D32FE8]);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_219BF0BE4();
    result = [*(v24 + 8) laterDate];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = v23;
    sub_219BDBCA4();

    LOBYTE(v20) = sub_219BDBC14();
    v18(v8, v2);
    v18(v21, v2);
    if (v20)
    {
      sub_219BF0BE4();
      return (*(v15 + 8))(v17, v14);
    }

    (*(v15 + 8))(v17, v14);
  }

  return sub_219BDBD24();
}

id sub_219360004@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_219BDBD34();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = &v36 - v5;
  v6 = sub_219BDB184();
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BEE754();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEE3D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0BD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF08F4();
  sub_219BF0BB4();
  v17 = v16;
  v18 = v43;
  (*(v14 + 8))(v17, v13);
  v19 = sub_219BF5F14();
  (*(v10 + 8))(v12, v9);
  v20 = *(v1 + 24);
  v47 = MEMORY[0x277D84FA0];
  sub_2186E2394();

  sub_219BF08A4();
  v37 = sub_2194796A0(v48, v20);
  sub_219BF0944();
  v21 = sub_21960A8D8();

  v36 = sub_2194796A0(v22, v21);
  v23 = type metadata accessor for TodayFeedServiceContext();
  v24 = v45;
  v25 = v44;
  (*(v18 + 16))(v46, v1 + *(v23 + 36));
  *v24 = 2;
  *(v24 + 8) = v19;
  result = [v19 startDate];
  if (result)
  {
    v27 = result;
    sub_2186E2348();
    v28 = v39;
    sub_219BDBCA4();

    v29 = v40;
    sub_219BDBD24();
    sub_219BDB104();
    v30 = *(v41 + 8);
    v31 = v29;
    v32 = v42;
    v30(v31, v42);
    v30(v28, v32);
    v33 = sub_219BF5F04();
    v34 = v36;
    v35 = v37;
    *(v24 + 16) = v33;
    *(v24 + 24) = v35;
    *(v24 + 32) = v34;
    return (*(v18 + 32))(v24 + *(v23 + 36), v46, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2193604A4@<X0>(uint64_t a1@<X8>)
{
  v32 = sub_219BDBD34();
  v28 = *(v32 - 8);
  v3 = MEMORY[0x28223BE20](v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = sub_219BDB184();
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEE754();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[1];
  v15 = v1[3];
  v16 = v1[4];
  v27 = type metadata accessor for TodayFeedServiceContext();
  v17 = *(v11 + 16);
  v18 = v1 + *(v27 + 36);
  v30 = v10;
  v17(v13, v18, v10);
  *a1 = 5;
  *(a1 + 8) = v14;
  v31 = v15;

  result = [v14 startDate];
  if (result)
  {
    v20 = result;
    sub_2186E2348();
    sub_219BDBCA4();

    sub_219BDBD24();
    sub_219BDB104();
    v21 = *(v28 + 8);
    v22 = v5;
    v23 = v32;
    v21(v22, v32);
    v21(v7, v23);
    v24 = sub_219BF5F04();
    v25 = v30;
    v26 = v31;
    *(a1 + 16) = v24;
    *(a1 + 24) = v26;
    *(a1 + 32) = v16;
    return (*(v11 + 32))(a1 + *(v27 + 36), v13, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21936076C()
{
  sub_2186DDBE0(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-v5];
  v20 = 0;
  v21 = 0xE000000000000000;
  v19[15] = *v0;
  sub_219BF7484();
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v7 = *(v0 + 8);
  v8 = [v7 startDate];
  if (v8)
  {
    v9 = v8;
    sub_219BDBCA4();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_219BDBD34();
  v12 = *(*(v11 - 8) + 56);
  v13 = 1;
  v12(v6, v10, 1, v11);
  v14 = sub_219BF5484();
  MEMORY[0x21CECC330](v14);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v15 = [v7 endDate];
  if (v15)
  {
    v16 = v15;
    sub_219BDBCA4();

    v13 = 0;
  }

  v12(v4, v13, 1, v11);
  v17 = sub_219BF5484();
  MEMORY[0x21CECC330](v17);

  return v20;
}

id sub_2193609A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_219BDBD34();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v48 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v35 - v6;
  v7 = sub_219BDB184();
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TodayFeedServiceContext();
  MEMORY[0x28223BE20](v43);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEE754();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219361F88(0, &qword_280E8CDC0, MEMORY[0x277D844C8]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_219361EE0();
  v20 = v49;
  sub_219BF7B34();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v40 = v13;
  v21 = v16;
  v49 = v15;
  v22 = v47;
  v23 = v48;
  v39 = sub_219360F8C(v18);
  LOBYTE(v52) = 0;
  sub_219361F34();
  sub_219BF7734();
  v53 = v55;
  sub_2186E2394();
  v25 = v24;
  LOBYTE(v51) = 3;
  sub_218B9F868(&qword_280E8E9B8);
  v38 = v25;
  sub_219BF7734();
  v37 = v52;
  v54 = 4;
  sub_219BF7734();
  v27 = v51;
  v54 = 5;
  sub_2193620D4(&qword_280E91B20, MEMORY[0x277D32158]);
  sub_219BF7734();
  v36 = v11;
  v38 = v27;
  *v10 = v53;
  v28 = v39;
  *(v10 + 1) = v39;
  result = [v28 startDate];
  if (result)
  {
    v29 = result;
    v39 = sub_2186E2348();
    sub_219BDBCA4();

    sub_219BDBD24();
    sub_219BDB104();
    v30 = *(v41 + 8);
    v31 = v42;
    v30(v23, v42);
    v30(v22, v31);
    v32 = sub_219BF5F04();
    (*(v21 + 8))(v18, v49);
    v34 = v37;
    v33 = v38;
    *(v10 + 2) = v32;
    *(v10 + 3) = v34;
    *(v10 + 4) = v33;
    (*(v44 + 32))(&v10[*(v43 + 36)], v40, v36);
    sub_2187B9990(v10, v46);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  __break(1u);
  return result;
}

uint64_t sub_219360F8C(uint64_t a1)
{
  sub_2186DDBE0(0, &qword_280E90978, MEMORY[0x277D33110]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_219BF10C4();
  v16 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v18 = 2;
  sub_219361F88(0, &qword_280E8CDC0, MEMORY[0x277D844C8]);
  sub_2193620D4(&qword_280E90980, MEMORY[0x277D33110]);
  sub_219BF76E4();
  if (!v1)
  {
    if ((*(v16 + 48))(v5, 1, v6) == 1)
    {
      sub_21936211C(v5, &qword_280E90978, MEMORY[0x277D33110]);
      v17 = 1;
      sub_219BF7734();
      sub_2186E2348();
      return sub_219BF5F44();
    }

    else
    {
      v13 = v16;
      (*(v16 + 32))(v12, v5, v6);
      sub_2186E2348();
      (*(v13 + 16))(v9, v12, v6);
      a1 = sub_219BF5F44();
      (*(v13 + 8))(v12, v6);
    }
  }

  return a1;
}

uint64_t sub_219361298(void *a1)
{
  v3 = v1;
  v5 = sub_219BF10C4();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219361F88(0, &qword_280E8C578, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219361EE0();
  sub_219BF7B44();
  LOBYTE(v21) = *v3;
  v22 = 0;
  sub_219361FEC();
  sub_219BF7834();
  if (v2)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v14 = v19;
  v15 = v10;
  v16 = *(v3 + 8);
  sub_219BF10B4();
  LOBYTE(v21) = 1;
  sub_2193620D4(&qword_280E90988, MEMORY[0x277D33110]);
  v17 = v20;
  sub_219BF7834();
  (*(v14 + 8))(v7, v17);
  v21 = *(v3 + 24);
  v22 = 3;
  sub_2186E2394();
  sub_218B9F868(&unk_280E8E9D0);
  sub_219BF7834();
  v21 = *(v3 + 32);
  v22 = 4;
  sub_219BF7834();
  type metadata accessor for TodayFeedServiceContext();
  LOBYTE(v21) = 5;
  sub_219BEE754();
  sub_2193620D4(&qword_280E91B28, MEMORY[0x277D32158]);
  sub_219BF7834();
  return (*(v15 + 8))(v12, v9);
}

uint64_t sub_219361680()
{
  sub_219BF5524();
}

uint64_t sub_21936178C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219362330();
  *a1 = result;
  return result;
}

void sub_2193617BC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684957547;
  v5 = 0x8000000219CD7F90;
  v6 = 0x8000000219CD7FB0;
  v7 = 0xD000000000000015;
  if (v2 != 4)
  {
    v7 = 0x4F65636976726573;
    v6 = 0xEE00736E6F697470;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000019;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xE900000000000065;
  v9 = 0x676E615265746164;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x8000000219CD7F70;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_219361890()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0xD000000000000015;
  if (v1 != 4)
  {
    v3 = 0x4F65636976726573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000019;
  }

  v4 = 0x676E615265746164;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_219361960@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219362330();
  *a1 = result;
  return result;
}

uint64_t sub_219361988(uint64_t a1)
{
  v2 = sub_219361EE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193619C4(uint64_t a1)
{
  v2 = sub_219361EE0();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_219361A30()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000001DLL, 0x8000000219D19160);
  LOBYTE(v33) = *v0;
  sub_219BF7484();
  MEMORY[0x21CECC330](0x615265746164202CLL, 0xEC0000003D65676ELL);
  sub_219BEED34();
  v8 = sub_219BEED14();
  v32 = v0;
  v9 = *(v0 + 8);
  result = [v9 startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  sub_219BDBCA4();

  v12 = sub_219BDBC04();
  v13 = *(v2 + 8);
  v13(v7, v1);
  v14 = [v8 stringFromDate_];

  v15 = sub_219BF5414();
  v17 = v16;

  MEMORY[0x21CECC330](v15, v17);

  MEMORY[0x21CECC330](544175136, 0xE400000000000000);
  v18 = sub_219BEED14();
  result = [v9 endDate];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v19 = result;
  sub_219BDBCA4();

  v20 = sub_219BDBC04();
  v13(v5, v1);
  v21 = [v18 stringFromDate_];

  v22 = sub_219BF5414();
  v24 = v23;

  MEMORY[0x21CECC330](v22, v24);

  MEMORY[0x21CECC330](0x697461727564202CLL, 0xEB000000003D6E6FLL);
  v25 = sub_219BEED24();
  [v9 absoluteTimeInterval];
  v26 = [v25 stringFromTimeInterval_];

  if (v26)
  {
    v27 = sub_219BF5414();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  MEMORY[0x21CECC330](v27, v29);

  MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219D19180);
  v33 = *(*(v32 + 24) + 16);
  v30 = sub_219BF7894();
  MEMORY[0x21CECC330](v30);

  MEMORY[0x21CECC330](0xD000000000000018, 0x8000000219D191A0);
  v31 = sub_219BF5D54();
  MEMORY[0x21CECC330](v31);

  return v34;
}

uint64_t sub_219361E60()
{
  sub_219BF09A4();
  if (v2)
  {
    v0 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
  }

  else
  {
    v0 = MEMORY[0x277D84FA0];
  }

  return sub_218DD88E0(v0);
}

unint64_t sub_219361EE0()
{
  result = qword_280EC2DC8[0];
  if (!qword_280EC2DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC2DC8);
  }

  return result;
}

unint64_t sub_219361F34()
{
  result = qword_280EB6250;
  if (!qword_280EB6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6250);
  }

  return result;
}

void sub_219361F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219361EE0();
    v7 = a3(a1, &type metadata for TodayFeedServiceContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219361FEC()
{
  result = qword_280EB6260;
  if (!qword_280EB6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6260);
  }

  return result;
}

void sub_219362040()
{
  if (!qword_280E91290)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2193620D4(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v0 = sub_219BEFA34();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91290);
    }
  }
}

uint64_t sub_2193620D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21936211C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186DDBE0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219362178()
{
  v0 = sub_219BF7614();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2193621C4()
{
  result = qword_280EB6258;
  if (!qword_280EB6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6258);
  }

  return result;
}

unint64_t sub_21936222C()
{
  result = qword_27CC191A0;
  if (!qword_27CC191A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC191A0);
  }

  return result;
}

unint64_t sub_219362284()
{
  result = qword_280EC2DB8;
  if (!qword_280EC2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC2DB8);
  }

  return result;
}

unint64_t sub_2193622DC()
{
  result = qword_280EC2DC0;
  if (!qword_280EC2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC2DC0);
  }

  return result;
}

uint64_t sub_219362330()
{
  v0 = sub_219BF7614();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_219362404()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2193624CC()
{
  sub_219BF5524();
}

uint64_t sub_219362580()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219362644@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2193639B0();
  *a1 = result;
  return result;
}

void sub_219362674(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x7370756F7267;
  v4 = 0x736E6F6974636573;
  if (*v1 != 2)
  {
    v4 = 0x617461646174656DLL;
  }

  if (*v1)
  {
    v3 = 0x446873696C627570;
    v2 = 0xEB00000000657461;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_2193626F8()
{
  v1 = 0x7370756F7267;
  v2 = 0x736E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0x446873696C627570;
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

uint64_t sub_219362778@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2193639B0();
  *a1 = result;
  return result;
}

uint64_t sub_2193627A0(uint64_t a1)
{
  v2 = sub_219363464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193627DC(uint64_t a1)
{
  v2 = sub_219363464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219362818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = type metadata accessor for MagazineFeedConfig();
  MEMORY[0x28223BE20](v27);
  v26 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186DDC34(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  sub_2186DDC34(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  sub_219363570(0, &qword_280E8CF50, MEMORY[0x277D844C8]);
  v12 = v11;
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219363464();
  sub_219BF7B34();
  if (!v2)
  {
    LOBYTE(v29) = 0;
    sub_21915A2B0();
    v24[1] = 0;
    v15 = sub_219BF7684();
    sub_219BDBD34();
    LOBYTE(v29) = 1;
    sub_219363764(&unk_280EE9C70, MEMORY[0x277CC9578]);
    v16 = v10;
    sub_219BF7674();
    v31 = 2;
    sub_2193634B8();
    sub_219BF7674();
    v17 = v29;
    v24[0] = v30;
    sub_219BEE5B4();
    v31 = 3;
    sub_219363764(&qword_280E91B88, MEMORY[0x277D32028]);
    sub_219BF7674();
    v18 = MEMORY[0x277D84F90];
    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v21 = v26;
    v20 = v27;
    *v26 = v19;
    sub_21872AD5C(v16, v21 + v20[5], &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v17)
    {
      v18 = v24[0];
    }

    else
    {
      v17 = v18;
    }

    sub_2189DD39C(v16);
    (*(v25 + 8))(v14, v12);
    v22 = (v21 + v20[6]);
    *v22 = v17;
    v22[1] = v18;
    sub_2189A1E30(v7, v21 + v20[7]);
    sub_21936350C(v21, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219362C34(void *a1)
{
  v3 = v1;
  sub_219363570(0, &qword_27CC191A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219363464();
  sub_219BF7B44();
  *&v12 = *v3;
  v13 = 0;
  sub_2186E401C();
  sub_2193635D4();
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for MagazineFeedConfig();
    LOBYTE(v12) = 1;
    sub_2186DDC34(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_21897A904();
    sub_219BF7834();
    v12 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_21936364C();
    sub_219BF7834();
    LOBYTE(v12) = 3;
    sub_2186DDC34(0, &qword_280E91B80, MEMORY[0x277D32028]);
    sub_2193636A0();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

BOOL sub_219362EB0(uint64_t *a1, uint64_t a2, int a3)
{
  v32 = a3;
  sub_2193637D0();
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEF554();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MagazineFeedServiceContext();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *a1;
  sub_218AC566C(a2, &v29 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_219363838(v18, type metadata accessor for MagazineFeedServiceContext);
  if (EnumCaseMultiPayload == 1 && (sub_219150544(v19) & 1) == 0)
  {
    return 0;
  }

  sub_218AC566C(a2, v16);
  v21 = swift_getEnumCaseMultiPayload();
  sub_219363838(v16, type metadata accessor for MagazineFeedServiceContext);
  if (v21 != 1 && (sub_2191564A4(v19) & 1) == 0)
  {
    return 0;
  }

  sub_218AC566C(a2, v13);
  v22 = swift_getEnumCaseMultiPayload();
  sub_219363838(v13, type metadata accessor for MagazineFeedServiceContext);
  if (v22 != 1)
  {
    return 1;
  }

  sub_2191577D4(v9);
  v23 = v29;
  v24 = *(v30 + 48);
  v25 = v31;
  (*(v29 + 32))(v31, v9, v7);
  v26 = v32;
  *(v25 + v24) = v32 & 1;
  v27 = (*(v23 + 88))(v25, v7);
  if (v27 != *MEMORY[0x277D32630])
  {
    if (v27 == *MEMORY[0x277D32638])
    {
      if (v26)
      {
        return 0;
      }
    }

    else if (v27 != *MEMORY[0x277D32628])
    {
      if (v27 != *MEMORY[0x277D32640])
      {
        sub_219363838(v25, sub_2193637D0);
      }

      return 0;
    }

    return 1;
  }

  return (v26 & 1) != 0;
}

uint64_t sub_2193632D4(uint64_t a1, char a2)
{
  v3 = *v2;
  v5[2] = a1;
  v6 = a2;

  return sub_2195E6DBC(sub_2193637AC, v5, v3);
}

uint64_t sub_219363338@<X0>(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x277CC9578];
  sub_2186DDC34(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_21872AD5C(v3 + a2[5], &v14 - v9, &qword_280EE9C40, v7);
  sub_21872AD5C(v3 + a2[7], a3 + a2[7], &qword_280E91B80, MEMORY[0x277D32028]);
  *a3 = a1;
  sub_21872AD5C(v10, a3 + a2[5], &qword_280EE9C40, v7);

  result = sub_2189DD39C(v10);
  v12 = (a3 + a2[6]);
  v13 = MEMORY[0x277D84F90];
  *v12 = MEMORY[0x277D84F90];
  v12[1] = v13;
  return result;
}

unint64_t sub_219363464()
{
  result = qword_280ED3808;
  if (!qword_280ED3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3808);
  }

  return result;
}

unint64_t sub_2193634B8()
{
  result = qword_280EC79E8;
  if (!qword_280EC79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC79E8);
  }

  return result;
}

uint64_t sub_21936350C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219363570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219363464();
    v7 = a3(a1, &type metadata for MagazineFeedConfig.Keys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2193635D4()
{
  result = qword_27CC191B0;
  if (!qword_27CC191B0)
  {
    sub_2186E401C();
    sub_21915A308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC191B0);
  }

  return result;
}

unint64_t sub_21936364C()
{
  result = qword_27CC191B8;
  if (!qword_27CC191B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC191B8);
  }

  return result;
}

unint64_t sub_2193636A0()
{
  result = qword_27CC14170;
  if (!qword_27CC14170)
  {
    sub_2186DDC34(255, &qword_280E91B80, MEMORY[0x277D32028]);
    sub_219363764(&unk_280E91B90, MEMORY[0x277D32028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14170);
  }

  return result;
}

uint64_t sub_219363764(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2193637D0()
{
  if (!qword_280E91378)
  {
    sub_219BEF554();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E91378);
    }
  }
}

uint64_t sub_219363838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2193638AC()
{
  result = qword_27CC191C0;
  if (!qword_27CC191C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC191C0);
  }

  return result;
}

unint64_t sub_219363904()
{
  result = qword_280ED3810;
  if (!qword_280ED3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3810);
  }

  return result;
}

unint64_t sub_21936395C()
{
  result = qword_280ED3818[0];
  if (!qword_280ED3818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED3818);
  }

  return result;
}

uint64_t sub_2193639B0()
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

uint64_t sub_219363A20()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    swift_unknownObjectRetain();
    sub_219BE3494();
    swift_unknownObjectRelease();
  }

  return result;
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

uint64_t sub_219363B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219363B68(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_219363BE0(uint64_t a1, uint64_t a2)
{
  v3[437] = v2;
  v3[431] = a2;
  v3[425] = a1;
  v4 = type metadata accessor for ChannelSectionsGroupModel();
  v3[443] = v4;
  v5 = *(v4 - 8);
  v3[449] = v5;
  v3[455] = *(v5 + 64);
  v3[461] = swift_task_alloc();
  v3[467] = swift_task_alloc();
  v3[473] = swift_task_alloc();
  v6 = *(type metadata accessor for ChannelHeadlineServiceRequest() - 8);
  v3[479] = v6;
  v3[485] = *(v6 + 64);
  v3[491] = swift_task_alloc();
  v3[497] = swift_task_alloc();
  v3[503] = swift_task_alloc();
  v3[509] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219363D4C, 0, 0);
}

uint64_t sub_219363D4C()
{
  v1 = *(v0 + 4072);
  v2 = *(v0 + 3832);
  v28 = *(v0 + 3976);
  v26 = *(v0 + 3496);
  v27 = *(v0 + 4024);
  v3 = *(v0 + 3448);
  sub_219365028(v26, v0 + 2776);
  sub_21936596C(v3, v1, type metadata accessor for ChannelHeadlineServiceRequest);
  v4 = *(v2 + 80);
  *(v0 + 4320) = v4;
  v5 = (v4 + 176) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 4120) = v6;
  v7 = *(v0 + 2888);
  v6[7] = *(v0 + 2872);
  v6[8] = v7;
  v8 = *(v0 + 2920);
  v6[9] = *(v0 + 2904);
  v6[10] = v8;
  v9 = *(v0 + 2824);
  v6[3] = *(v0 + 2808);
  v6[4] = v9;
  v10 = *(v0 + 2856);
  v6[5] = *(v0 + 2840);
  v6[6] = v10;
  v11 = *(v0 + 2792);
  v6[1] = *(v0 + 2776);
  v6[2] = v11;
  sub_219365E24(v1, v6 + v5, type metadata accessor for ChannelHeadlineServiceRequest);
  sub_2187E7248();
  swift_asyncLet_begin();
  sub_219365028(v26, v0 + 2936);
  sub_21936596C(v3, v27, type metadata accessor for ChannelHeadlineServiceRequest);
  v12 = swift_allocObject();
  *(v0 + 4168) = v12;
  v13 = *(v0 + 3048);
  v12[7] = *(v0 + 3032);
  v12[8] = v13;
  v14 = *(v0 + 3080);
  v12[9] = *(v0 + 3064);
  v12[10] = v14;
  v15 = *(v0 + 2984);
  v12[3] = *(v0 + 2968);
  v12[4] = v15;
  v16 = *(v0 + 3016);
  v12[5] = *(v0 + 3000);
  v12[6] = v16;
  v17 = *(v0 + 2952);
  v12[1] = *(v0 + 2936);
  v12[2] = v17;
  sub_219365E24(v27, v12 + v5, type metadata accessor for ChannelHeadlineServiceRequest);
  swift_asyncLet_begin();
  sub_219365028(v26, v0 + 3096);
  sub_21936596C(v3, v28, type metadata accessor for ChannelHeadlineServiceRequest);
  v18 = swift_allocObject();
  *(v0 + 4216) = v18;
  v19 = *(v0 + 3208);
  v18[7] = *(v0 + 3192);
  v18[8] = v19;
  v20 = *(v0 + 3240);
  v18[9] = *(v0 + 3224);
  v18[10] = v20;
  v21 = *(v0 + 3144);
  v18[3] = *(v0 + 3128);
  v18[4] = v21;
  v22 = *(v0 + 3176);
  v18[5] = *(v0 + 3160);
  v18[6] = v22;
  v23 = *(v0 + 3112);
  v18[1] = *(v0 + 3096);
  v18[2] = v23;
  sub_219365E24(v28, v18 + v5, type metadata accessor for ChannelHeadlineServiceRequest);
  swift_asyncLet_begin();
  v24 = *(v0 + 3784);

  return MEMORY[0x282200930](v0 + 656, v24, sub_219364020, v0 + 3648);
}

uint64_t sub_219364020()
{
  v1[533] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219364778, 0, 0);
  }

  else
  {
    sub_21936596C(v1[473], v1[467], type metadata accessor for ChannelSectionsGroupModel);

    return MEMORY[0x282200930](v1 + 242, v1 + 413, sub_2193640E4, v1 + 426);
  }
}

uint64_t sub_2193640E4()
{
  *(v1 + 4272) = v0;
  if (v0)
  {
    v2 = sub_219364930;
  }

  else
  {
    v2 = sub_219364118;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219364118()
{
  v1 = *(v0 + 3928);
  v2 = *(v0 + 3736);
  v3 = *(v0 + 3688);
  v17 = *(v0 + 3640);
  v4 = *(v0 + 3592);
  v5 = *(v0 + 3496);
  v6 = *(v0 + 3448);
  v18 = (*(v0 + 4320) + 176) & ~*(v0 + 4320);
  v7 = v18 + *(v0 + 3880);
  v8 = *(v0 + 3304);
  *(v0 + 4280) = v8;
  sub_219365028(v5, v0 + 2616);
  sub_21936596C(v6, v1, type metadata accessor for ChannelHeadlineServiceRequest);
  sub_21936596C(v2, v3, type metadata accessor for ChannelSectionsGroupModel);
  v9 = (v7 + *(v4 + 80)) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v0 + 4288) = v10;
  v11 = *(v0 + 2728);
  v10[7] = *(v0 + 2712);
  v10[8] = v11;
  v12 = *(v0 + 2760);
  v10[9] = *(v0 + 2744);
  v10[10] = v12;
  v13 = *(v0 + 2664);
  v10[3] = *(v0 + 2648);
  v10[4] = v13;
  v14 = *(v0 + 2696);
  v10[5] = *(v0 + 2680);
  v10[6] = v14;
  v15 = *(v0 + 2632);
  v10[1] = *(v0 + 2616);
  v10[2] = v15;
  sub_219365E24(v1, v10 + v18, type metadata accessor for ChannelHeadlineServiceRequest);
  sub_219365E24(v3, v10 + v9, type metadata accessor for ChannelSectionsGroupModel);
  *(v10 + ((v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  swift_bridgeObjectRetain_n();
  type metadata accessor for ChannelHeroResult();
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 3352, sub_2193642FC, v0 + 3744);
}

uint64_t sub_2193642FC()
{
  v1[537] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 162, v1 + 407, sub_219364B48, v1 + 474);
  }

  else
  {
    v1[538] = v1[419];

    return MEMORY[0x282200930](v1 + 162, v1 + 407, sub_2193643B8, v1 + 498);
  }
}

uint64_t sub_2193643B8()
{
  *(v1 + 4312) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 1296, v1 + 3256, sub_219364D90, v1 + 4032);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_219364470, 0, 0);
  }
}

uint64_t sub_219364470()
{
  v1 = v0[538];
  v2 = v0[535];
  v3 = v0[467];
  v4 = v0[425];
  v5 = v0[407];
  v6 = type metadata accessor for ChannelHeadlineServiceResult();
  sub_21936596C(v3, v4 + *(v6 + 24), type metadata accessor for ChannelSectionsGroupModel);
  *v4 = v1;
  v4[1] = v2;
  *(v4 + *(v6 + 28)) = v5;

  return MEMORY[0x282200920](v0 + 162, v0 + 407, sub_219364548, v0 + 528);
}

uint64_t sub_219364564()
{
  sub_219366400(*(v0 + 3736), type metadata accessor for ChannelSectionsGroupModel);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3304, sub_2193645E4, v0 + 2576);
}

uint64_t sub_219364678()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21936482C()
{

  sub_2187FABEC(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219364930()
{
  sub_219366400(*(v0 + 3736), type metadata accessor for ChannelSectionsGroupModel);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3304, sub_2193649B0, v0 + 3456);
}

uint64_t sub_219364A44()
{

  sub_2187FABEC(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219364B64()
{
  sub_219366400(*(v0 + 3736), type metadata accessor for ChannelSectionsGroupModel);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3304, sub_219364BE4, v0 + 3840);
}

uint64_t sub_219364C78()
{

  sub_2187FABEC(&unk_219C72440);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219364DAC()
{
  sub_219366400(*(v0 + 3736), type metadata accessor for ChannelSectionsGroupModel);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3304, sub_219364E2C, v0 + 4080);
}

uint64_t sub_219364EC8()
{

  sub_2187FABEC(&unk_219C72440);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219365060(uint64_t a1)
{
  type metadata accessor for ChannelHeadlineServiceRequest();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219364FE0(a1);
}

uint64_t sub_219365140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2187608D4;

  return sub_2193652D0(a1, a3);
}

uint64_t sub_2193651F0(uint64_t a1)
{
  v4 = *(type metadata accessor for ChannelHeadlineServiceRequest() - 8);
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_219365140(a1, v1 + 16, v1 + v5);
}

uint64_t sub_2193652D0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for ChannelSectionsGroupPersonalizerRequest();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219365368, 0, 0);
}

uint64_t sub_219365368()
{
  __swift_project_boxed_opaque_existential_1((v0[5] + 40), *(v0[5] + 64));
  v1 = off_282A34C30[0];
  type metadata accessor for ChannelSectionHeadlinesService();
  v0[8] = v1();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_21936548C;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_21936548C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_219365780;
  }

  else
  {

    v2 = sub_2193655A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2193655A8()
{
  v1 = *(v0 + 32);
  v17 = *(v0 + 16);
  if (*(v1 + 96) == 1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = sub_218CFEE6C(*(v1 + 80));
    v1 = *(v0 + 32);
  }

  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v16 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 80), *(*(v0 + 40) + 104));
  v5 = type metadata accessor for ChannelHeadlineServiceRequest();
  v6 = *(v5 + 68);
  v7 = v4[9];
  v8 = sub_219BEFBD4();
  v14 = *(v1 + 56);
  v15 = *(v1 + 40);
  (*(*(v8 - 8) + 16))(v3 + v7, v1 + v6, v8);
  v9 = *(v1 + *(v5 + 76));
  sub_219BE5444();
  *v3 = v2;
  *(v3 + 24) = v14;
  *(v3 + 8) = v15;
  v10 = MEMORY[0x277D84FA0];
  *(v3 + v4[10]) = MEMORY[0x277D84FA0];
  *(v3 + v4[11]) = v10;
  v11 = v2;
  sub_219BA640C(v3, v16);
  sub_219366400(*(v0 + 56), type metadata accessor for ChannelSectionsGroupPersonalizerRequest);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_219365780()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193657EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_218E5F004;

  return sub_2193659D4(a3);
}

uint64_t sub_21936588C(uint64_t a1)
{
  v4 = *(type metadata accessor for ChannelHeadlineServiceRequest() - 8);
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_2193657EC(a1, v1 + 16, v1 + v5);
}

uint64_t sub_21936596C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193659D4(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_2193659F4, 0, 0);
}

uint64_t sub_2193659F4()
{
  v1 = *(v0 + 152);
  v2 = v1[9];
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 16;
    v6 = *v3;
    v3 += 16;
    if (v6 < 0)
    {
      v7 = *(v5 - 3);
      __swift_project_boxed_opaque_existential_1(*(v0 + 160), *(*(v0 + 160) + 24));
      v9 = *v1;
      v8 = v1[1];
      v10 = type metadata accessor for ChannelHeadlineServiceRequest();
      v11 = *(v1 + v10[19]);
      v12 = *(v1 + v10[20]);
      v13 = *(v1 + v10[18]);
      v14 = v1[10];
      v15 = v1[11];
      *(v0 + 80) = v9;
      *(v0 + 88) = v8;
      *(v0 + 96) = v11;
      *(v0 + 104) = v12;
      *(v0 + 112) = v7;
      *(v0 + 120) = v13;
      *(v0 + 128) = v14;
      *(v0 + 136) = v15;
      v16 = *(v0 + 96);
      v17 = *(v0 + 112);
      *(v0 + 16) = *(v0 + 80);
      *(v0 + 32) = v16;
      v18 = *(v0 + 128);
      *(v0 + 48) = v17;
      *(v0 + 64) = v18;

      v19 = v11;
      v20 = v12;
      swift_unknownObjectRetain();

      *(v0 + 168) = sub_218C61998((v0 + 16));
      sub_218D06F24(v0 + 80);
      v21 = swift_task_alloc();
      *(v0 + 176) = v21;
      *v21 = v0;
      v21[1] = sub_219365BD0;

      return MEMORY[0x2821D23D8](v0 + 144);
    }
  }

  v22 = *(v0 + 8);
  v23 = MEMORY[0x277D84F90];

  return v22(v23);
}

uint64_t sub_219365BD0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_219365D08;
  }

  else
  {

    v2 = sub_219365CEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219365D08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219365D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_218D42644;

  return sub_219366004(a3, a4, a5);
}

uint64_t sub_219365E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219365E8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ChannelHeadlineServiceRequest() - 8);
  v6 = (*(v5 + 80) + 176) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ChannelSectionsGroupModel() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2187609C8;

  return sub_219365D6C(a1, v1 + 16, v1 + v6, v1 + v9, v10);
}

uint64_t sub_219366004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_219BEFBD4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for ChannelSectionsGroupModel();
  v4[9] = swift_task_alloc();
  v4[10] = type metadata accessor for ChannelHeroServiceRequest();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219366124, 0, 0);
}

uint64_t sub_219366124()
{
  v1 = v0[2];
  if (*(*(v1 + 72) + 16))
  {
    v25 = *(v1 + 72);
    v2 = v0[8];
    v3 = v0[6];
    v4 = v0[7];
    sub_21936596C(v0[3], v0[9], type metadata accessor for ChannelSectionsGroupModel);
    v5 = type metadata accessor for ChannelHeadlineServiceRequest();
    v23 = *(v1 + v5[19]);
    v24 = *(v1 + v5[20]);
    (*(v4 + 16))(v2, v1 + v5[17], v3);
    v22 = *(v1 + v5[18]);
    v6 = *(v1 + 112);
    v7 = v0[2];
    if (v6)
    {
      v21 = MEMORY[0x277D84FA0];
    }

    else
    {
      v21 = *(v7 + 104);
    }

    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[4];
    v15 = v0[5];
    v16 = *(v7 + 88);
    sub_219365E24(v0[9], v9, type metadata accessor for ChannelSectionsGroupModel);
    *(v9 + v10[5]) = v14;
    *(v9 + v10[6]) = v23;
    *(v9 + v10[7]) = v24;
    (*(v12 + 32))(v9 + v10[8], v11, v13);
    *(v9 + v10[9]) = v22;
    *(v9 + v10[10]) = v21;
    *(v9 + v10[11]) = v16;
    __swift_project_boxed_opaque_existential_1((v15 + 120), *(v15 + 144));
    v17 = v23;
    v18 = v24;
    swift_unknownObjectRetain();

    v8 = sub_21959BEBC(v9, v25);
    sub_219366400(v9, type metadata accessor for ChannelHeroServiceRequest);
  }

  else
  {
    if (qword_27CC086A0 != -1)
    {
      swift_once();
    }

    v8 = qword_27CCD8D20;
  }

  v19 = v0[1];

  return v19(v8);
}

uint64_t sub_219366400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219366480()
{
  sub_218EA89D8();
  if (v0 <= 0x3F)
  {
    sub_218EA8964();
    if (v1 <= 0x3F)
    {
      sub_218985EAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_219366528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219366598()
{
  sub_218EA8ABC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2193665F4()
{
  v1 = v0;
  sub_218985EAC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1584();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219369D1C(v1, v13, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218EA8964();
      (*(v8 + 32))(v10, v13 + *(v15 + 48), v7);
      v16 = sub_219BF1524();
      (*(v8 + 8))(v10, v7);
      sub_2193693A8(v13, type metadata accessor for SharedWithYouFeedGapLocation);
    }

    else
    {
      (*(v4 + 32))(v6, v13, v3);
      v16 = sub_219BF07B4();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    v16 = *v13;
    sub_218EA89D8();
    sub_2193693A8(v13 + *(v17 + 48), type metadata accessor for SharedWithYouFeedGapLocation);
  }

  return v16;
}

uint64_t sub_2193668A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219366528(&qword_27CC19208, type metadata accessor for SharedWithYouFeedModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_219366A44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_21936946C(0, &unk_280E92500, MEMORY[0x277D31DC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = v45 - v5;
  sub_21936946C(0, &qword_280E91C10, MEMORY[0x277D32010], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = v45 - v7;
  v8 = sub_219BF0EE4();
  MEMORY[0x28223BE20](v8 - 8);
  v50 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21936946C(0, &unk_280EE34A0, MEMORY[0x277D2D148], v3);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = v45 - v11;
  v12 = sub_219BF0BD4();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0574();
  MEMORY[0x28223BE20](v15 - 8);
  v48 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v18 = v17;
  v53 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1584();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v25);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219369D1C(v2, v27, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218EA8964();
      (*(v22 + 32))(v24, &v27[*(v29 + 48)], v21);
      sub_219BF1524();
      sub_219BF1554();
      sub_219BF1534();
      v30 = v54;
      sub_219BEDB14();
      (*(v22 + 8))(v24, v21);
      v31 = *MEMORY[0x277D32D10];
      v32 = sub_219BF0614();
      (*(*(v32 - 8) + 104))(v30, v31, v32);
      return sub_2193693A8(v27, type metadata accessor for SharedWithYouFeedGapLocation);
    }

    else
    {
      (*(v53 + 32))(v20, v27, v18);
      sub_2193665F4();
      v45[2] = v39;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_219BF07D4();
      v45[1] = v56;
      sub_219BF07E4();
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_219BF07D4();

      sub_219BF0B94();
      swift_unknownObjectRelease();
      (*(v46 + 8))(v14, v47);
      v40 = sub_219BEBD44();
      (*(*(v40 - 8) + 56))(v49, 1, 1, v40);
      sub_219BF07D4();
      sub_21912D31C(v50);

      sub_219BF07D4();
      sub_218ED9B0C(v55 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, v51);

      v41 = sub_219BEDB44();
      (*(*(v41 - 8) + 56))(v52, 1, 1, v41);
      v42 = v54;
      sub_219BF0E34();
      (*(v53 + 8))(v20, v18);
      v43 = *MEMORY[0x277D32E10];
      v44 = sub_219BF0614();
      return (*(*(v44 - 8) + 104))(v42, v43, v44);
    }
  }

  else
  {
    sub_218EA89D8();
    v35 = *(v34 + 48);
    v36 = v54;
    sub_219BF03C4();
    v37 = *MEMORY[0x277D32DB8];
    v38 = sub_219BF0614();
    (*(*(v38 - 8) + 104))(v36, v37, v38);
    return sub_2193693A8(&v27[v35], type metadata accessor for SharedWithYouFeedGapLocation);
  }
}

uint64_t sub_219367248@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218985EAC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219369D1C(v2, v11, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218EA89D8();
    v11 += *(v16 + 48);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218EA8964();
    v14 = *(v13 + 48);
    v15 = sub_219BF1584();
    (*(*(v15 - 8) + 8))(&v11[v14], v15);
LABEL_5:
    sub_2193693A8(v11, type metadata accessor for SharedWithYouFeedGapLocation);
    v17 = sub_219BEAF84();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  (*(v6 + 32))(v8, v11, v5);
  sub_219BF07D4();
  sub_21912D94C(a1);

  return (*(v6 + 8))(v8, v5);
}

void *sub_2193674A8()
{
  sub_218ED9BA0(0);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE6364();
  v47 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v37 - v7;
  v8 = sub_219BF2B34();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219369D1C(v0, v18, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218EA89D8();
    v23 = &v18[*(v24 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218EA8964();
    v21 = *(v20 + 48);
    v22 = sub_219BF1584();
    (*(*(v22 - 8) + 8))(&v18[v21], v22);
    v23 = v18;
LABEL_5:
    sub_2193693A8(v23, type metadata accessor for SharedWithYouFeedGapLocation);
    return MEMORY[0x277D84F90];
  }

  v39 = v6;
  v43 = v13;
  (*(v13 + 32))(v15, v18, v12);
  v40 = v0;
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_21936946C(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  v26 = v47;
  v27 = *(v47 + 72);
  v28 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v41 = 2 * v27;
  v38 = v28 + 3 * v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C0B8C0;
  v44 = v3;
  v45 = v29;
  swift_unknownObjectRetain();
  sub_2193665F4();
  sub_219BF2B14();
  sub_219BE62F4();
  v42 = v12;
  v30 = *(v48 + 8);
  v30(v10, v8);
  swift_unknownObjectRetain();
  sub_2193665F4();
  sub_219BF2B14();
  sub_219BE6344();
  v30(v10, v8);
  v31 = v44;
  sub_219BE6314();
  v32 = v49;
  sub_219BE62E4();
  if ((*(v26 + 48))(v32, 1, v31) == 1)
  {
    (*(v43 + 8))(v15, v42);
    swift_unknownObjectRelease();
    sub_2193693A8(v32, sub_218ED9BA0);
    return v45;
  }

  else
  {
    v33 = *(v26 + 32);
    v34 = v46;
    v33(v46, v32, v31);
    v35 = v39;
    (*(v26 + 16))(v39, v34, v31);
    v36 = sub_2191F976C(1uLL, 4, 1, v45);
    swift_unknownObjectRelease();
    (*(v26 + 8))(v34, v31);
    (*(v43 + 8))(v15, v42);
    *(v36 + 16) = 4;
    v33((v36 + v38), v35, v31);
    return v36;
  }
}

uint64_t sub_219367AA0()
{
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219369D1C(v1, v3, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218EA8964();
      v6 = *(v5 + 48);
      v7 = sub_219BF1584();
      (*(*(v7 - 8) + 8))(&v3[v6], v7);
      v8 = type metadata accessor for SharedWithYouFeedGapLocation;
    }

    else
    {
      v8 = type metadata accessor for SharedWithYouFeedModel;
    }

    sub_2193693A8(v3, v8);
    return 0;
  }

  else
  {

    sub_218EA89D8();
    sub_2193693A8(&v3[*(v9 + 48)], type metadata accessor for SharedWithYouFeedGapLocation);
    return 1;
  }
}

uint64_t sub_219367BF4()
{
  v1 = sub_219BE59F4();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = (&v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BE5A04();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  sub_218985EAC();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219369D1C(v0, v19, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218EA89D8();
    v24 = &v19[*(v25 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218EA8964();
    v22 = *(v21 + 48);
    v23 = sub_219BF1584();
    (*(*(v23 - 8) + 8))(&v19[v22], v23);
    v24 = v19;
LABEL_5:
    sub_2193693A8(v24, type metadata accessor for SharedWithYouFeedGapLocation);
    return 0;
  }

  v43 = v12;
  v44 = v0;
  v41 = *(v12 + 32);
  v42 = v12 + 32;
  v41(v16, v19, v11);
  sub_219BF07D4();
  v27 = *(v51 + 16);
  swift_unknownObjectRetain();

  v51 = MEMORY[0x277D84FA0];
  sub_219BF07D4();
  v28 = *(v50 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel);

  if (!v28)
  {
    v30 = v45;
    v29 = v46;
    (*(v45 + 104))(v7, *MEMORY[0x277D31AC0], v46);
    sub_219498044(v9, v7);
    (*(v30 + 8))(v9, v29);
  }

  sub_219BE5A14();
  swift_unknownObjectRetain();
  v31 = sub_2193665F4();
  *v3 = v27;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = v31;
  v3[4] = v32;
  v33 = v48;
  v34 = v49;
  (*(v48 + 104))(v3, *MEMORY[0x277D31A58], v49);
  MEMORY[0x21CEBC780](v3, v51);

  (*(v33 + 8))(v3, v34);
  v35 = v43;
  v36 = v47;
  (*(v43 + 16))(v47, v16, v11);
  v37 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v27;
  v41((v38 + v37), v36, v11);
  swift_allocObject();
  v39 = sub_219BE59B4();
  (*(v35 + 8))(v16, v11);
  return v39;
}

uint64_t sub_219368120()
{
  sub_219BF4944();
  sub_218985EAC();
  swift_unknownObjectRetain();
  sub_219BF07D4();

  return sub_219BF4934();
}

uint64_t sub_2193681AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a5;
  v53 = a8;
  v51 = a4;
  v54 = a2;
  v55 = a3;
  v56 = a6;
  v57 = a7;
  v15 = sub_219BEB334();
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219369D1C(v9, v20, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218EA89D8();
    v25 = &v20[*(v26 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218EA8964();
    v23 = *(v22 + 48);
    v24 = sub_219BF1584();
    (*(*(v24 - 8) + 8))(&v20[v23], v24);
    v25 = v20;
LABEL_5:
    sub_2193693A8(v25, type metadata accessor for SharedWithYouFeedGapLocation);
    return 0;
  }

  v46 = v17;
  sub_21936946C(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_219C09BA0;
  v28 = a1;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C0B8C0;
  v30 = sub_219BE6684();
  v48 = a9;
  v49 = v28;
  v31 = sub_219BE6654();
  if (v31)
  {
    v32 = MEMORY[0x277D6D630];
    v33 = v30;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
  }

  *(v29 + 32) = v31;
  *(v29 + 56) = v33;
  *(v29 + 64) = v32;
  v34 = sub_219BE6634();
  v35 = v46;
  v45 = v30;
  if (v34)
  {
    v36 = MEMORY[0x277D6D630];
    v37 = v30;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    *(v29 + 80) = 0;
    *(v29 + 88) = 0;
  }

  *(v29 + 72) = v34;
  *(v29 + 96) = v37;
  *(v29 + 104) = v36;
  v54 = a2;
  v55 = a3;
  v56 = v51;
  v57 = v52;
  v58 = a6;
  v59 = a7;
  v60 = v53;
  v61 = v48;
  sub_219BE57D4();
  sub_219BE57C4();
  type metadata accessor for SharedWithYouFeedServiceConfig();
  sub_219366528(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig);
  v38 = sub_219BEB284();
  (*(v50 + 8))(v35, v15);
  sub_219BE57B4();
  v39 = v45;
  v40 = sub_219BE6624();

  sub_21885AB78(v38);
  if (v40)
  {
    v41 = v39;
    v42 = MEMORY[0x277D6D630];
  }

  else
  {
    v41 = 0;
    v42 = 0;
    *(v29 + 120) = 0;
    *(v29 + 128) = 0;
  }

  *(v29 + 112) = v40;
  *(v29 + 136) = v41;
  *(v29 + 144) = v42;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v43 = sub_219BE59D4();
  sub_2193693A8(v20, type metadata accessor for SharedWithYouFeedModel);
  return v43;
}

uint64_t sub_219368684@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v49 = sub_219BF2B34();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v45 = v3;
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedWithYouFeedModel(0);
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
  v16 = v1;
  sub_219366A44(v15);
  sub_219BF04E4();
  (*(v13 + 8))(v15, v12);
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D32070])
  {
    (*(v9 + 96))(v11, v8);
    v17 = sub_219BEECB4();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 88))(v11, v17);
    v20 = *MEMORY[0x277D32338];
    (*(v18 + 8))(v11, v17);
    v21 = v50;
    if (v19 == v20)
    {
      v22 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v21 = v50;
  }

  sub_219369D1C(v16, v7, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v28 = v45;
      (*(v48 + 32))();
      sub_21936946C(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v30 = *(v29 - 8);
      v42 = *(v30 + 72);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = swift_allocObject();
      v43 = v32;
      *(v32 + 16) = xmmword_219C09EC0;
      v33 = v32 + v31;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_2193665F4();
      v34 = v44;
      sub_219BF2B14();
      sub_219BE5C34();
      v46 = *(v46 + 8);
      (v46)(v34, v49);
      v35 = sub_219BE5C44();
      v41 = *(*(v35 - 8) + 56);
      v41(v33, 0, 1, v35);
      v36 = v47;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_2193665F4();
      v21 = v50;
      sub_219BF2B14();
      v37 = v42;
      sub_219BE5C04();
      (v46)(v34, v49);
      v41(v33 + v37, 0, 1, v35);
      sub_219BE68A4();
      (*(v48 + 8))(v36, v28);
      v22 = 0;
      goto LABEL_11;
    }

    sub_218EA8964();
    v25 = *(v24 + 48);
    v26 = sub_219BF1584();
    (*(*(v26 - 8) + 8))(&v7[v25], v26);
  }

  else
  {

    sub_218EA89D8();
    v7 += *(v27 + 48);
  }

  sub_2193693A8(v7, type metadata accessor for SharedWithYouFeedGapLocation);
  v22 = 1;
LABEL_11:
  v38 = sub_219BE6894();
  return (*(*(v38 - 8) + 56))(v21, v22, 1, v38);
}

uint64_t sub_219368D84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  sub_218985EAC();
  v39 = v3;
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0614();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219366A44(v15);
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
      v20 = 1;
      v21 = v42;
      goto LABEL_11;
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  sub_219369D1C(v2, v7, type metadata accessor for SharedWithYouFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v27 = v39;
      (*(v41 + 32))();
      sub_21936946C(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v29 = *(*(v28 - 8) + 72);
      v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_219C09EC0;
      v32 = v31 + v30;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_2193665F4();
      sub_219BE5C24();
      swift_unknownObjectRelease();

      v33 = sub_219BE5C44();
      v34 = *(*(v33 - 8) + 56);
      v34(v32, 0, 1, v33);
      v35 = v40;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_219BE5C14();
      swift_unknownObjectRelease();
      v34(v32 + v29, 0, 1, v33);
      v21 = v42;
      sub_219BE68A4();
      (*(v41 + 8))(v35, v27);
      v20 = 0;
      goto LABEL_11;
    }

    sub_218EA8964();
    v24 = *(v23 + 48);
    v25 = sub_219BF1584();
    (*(*(v25 - 8) + 8))(&v7[v24], v25);
  }

  else
  {

    sub_218EA89D8();
    v7 += *(v26 + 48);
  }

  v21 = v42;
  sub_2193693A8(v7, type metadata accessor for SharedWithYouFeedGapLocation);
  v20 = 1;
LABEL_11:
  v36 = sub_219BE6894();
  return (*(*(v36 - 8) + 56))(v21, v20, 1, v36);
}

uint64_t sub_2193693A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219369408()
{
  sub_218985EAC();

  return sub_219368120();
}

void sub_21936946C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2193694D0(uint64_t a1, uint64_t a2)
{
  sub_218985EAC();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = sub_219BF1584();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  sub_219369CBC(0, &qword_27CC19228, type metadata accessor for SharedWithYouFeedModel);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40 - v18;
  v20 = &v40 + *(v17 + 56) - v18;
  sub_219369D1C(a1, &v40 - v18, type metadata accessor for SharedWithYouFeedModel);
  sub_219369D1C(a2, v20, type metadata accessor for SharedWithYouFeedModel);
  type metadata accessor for SharedWithYouFeedModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v29 = *v19;
    v28 = *(v19 + 1);
    sub_218EA89D8();
    v31 = v30;
    v32 = *(v30 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v29 == *v20 && v28 == *(v20 + 1))
      {
        v25 = 1;
      }

      else
      {
        v25 = sub_219BF78F4();
      }

      sub_2193693A8(&v20[*(v31 + 48)], type metadata accessor for SharedWithYouFeedGapLocation);
      v27 = &v19[v32];
      goto LABEL_19;
    }

    sub_2193693A8(&v19[v32], type metadata accessor for SharedWithYouFeedGapLocation);

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218EA8964();
    v23 = *(v22 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *(v10 + 32);
      v24(v15, &v19[v23], v9);
      v24(v13, &v20[v23], v9);
      v25 = MEMORY[0x21CEC82E0](v15, v13);
      v26 = *(v10 + 8);
      v26(v13, v9);
      v26(v15, v9);
      sub_2193693A8(v20, type metadata accessor for SharedWithYouFeedGapLocation);
      v27 = v19;
LABEL_19:
      sub_2193693A8(v27, type metadata accessor for SharedWithYouFeedGapLocation);
      return v25 & 1;
    }

    (*(v10 + 8))(&v19[v23], v9);
    sub_2193693A8(v19, type metadata accessor for SharedWithYouFeedGapLocation);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v42 + 8))(v19, v43);
LABEL_11:
    sub_2193693A8(v20, type metadata accessor for SharedWithYouFeedModel);
    v25 = 0;
    return v25 & 1;
  }

  v34 = v42;
  v33 = v43;
  v35 = *(v42 + 32);
  v35(v8, v19, v43);
  v36 = v41;
  v35(v41, v20, v33);
  type metadata accessor for HeadlineModel(0);
  sub_219366528(&qword_280EDE358, type metadata accessor for HeadlineModel);
  sub_219366528(&qword_280EDE360, type metadata accessor for HeadlineModel);
  v25 = sub_219BF07C4();
  v37 = *(v34 + 8);
  v37(v36, v33);
  v37(v8, v33);
  return v25 & 1;
}

uint64_t sub_219369A00(uint64_t a1, uint64_t a2)
{
  sub_218EA8ABC();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  sub_219369CBC(0, &unk_27CC19230, type metadata accessor for SharedWithYouFeedGapLocation);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = *(v13 + 56);
  sub_219369D1C(a1, &v23 - v14, type metadata accessor for SharedWithYouFeedGapLocation);
  sub_219369D1C(a2, &v15[v16], type metadata accessor for SharedWithYouFeedGapLocation);
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
      type metadata accessor for SharedWithYouFeedServiceConfig();
      sub_219366528(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig);
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
    sub_2193693A8(&v15[v16], type metadata accessor for SharedWithYouFeedGapLocation);
    v19 = 0;
    return v19 & 1;
  }

  v19 = 1;
  return v19 & 1;
}