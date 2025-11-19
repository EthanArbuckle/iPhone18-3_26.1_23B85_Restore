uint64_t sub_218B7F224(uint64_t a1, __int128 *a2)
{
  sub_218B803C4(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v3 = sub_219BE2644();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C0EE30;
  v8 = (v7 + v6);
  *v8 = 0x6E676961706D6163;
  *(v8 + 1) = 0xEB0000000064695FLL;
  v9 = *(v4 + 104);
  (v9)(v7 + v6, *MEMORY[0x277D6CC80], v3);
  strcpy(&v8[v5], "campaign_type");
  *&v8[v5 + 14] = -4864;
  v9();
  v10 = &v8[2 * v5];
  *v10 = 0x6576697461657263;
  *(v10 + 1) = 0xEB0000000064695FLL;
  v9();
  v11 = &v8[3 * v5];
  *v11 = 0x6E656B6F7471;
  *(v11 + 1) = 0xE600000000000000;
  v9();
  v12 = &v8[4 * v5];
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x8000000219CE9690;
  v9();
  v13 = &v8[5 * v5];
  *v13 = 0x644964656566;
  *(v13 + 1) = 0xE600000000000000;
  v9();
  v14 = &v8[6 * v5];
  *v14 = 0x49656C6369747261;
  *(v14 + 1) = 0xE900000000000064;
  v9();
  sub_219897824(MEMORY[0x277D84F90]);
  v15 = sub_219BE2684();

  *(v2 + 16) = v15;
  *(v2 + 24) = a1;
  sub_2186CB1F0(a2, v2 + 32);
  return v2;
}

BOOL sub_218B7F4E8(uint64_t a1)
{
  sub_218B803C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v71 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v73 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v4;
  MEMORY[0x28223BE20](v3);
  v74 = &v66 - v5;
  v79 = sub_219BE3CA4();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BE26D4();
  v82 = *(v83 - 8);
  v7 = MEMORY[0x28223BE20](v83);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v66 - v9;
  v85 = sub_219BE22B4();
  v10 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE22F4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v75 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v66 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  v22 = sub_219BE2574();
  sub_218B803C4(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v24 = v23;
  v80 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v25 = *(v14 + 8);
  v25(v21, v13);
  v26 = sub_219BE22C4();
  v28 = v27;
  (*(v10 + 8))(v12, v85);
  if (v28)
  {
    v85 = v26;
    v70 = v22;
    v69 = v24;
    sub_219BE2594();
    v29 = v81;
    sub_219BE22E4();
    v67 = v13;
    v68 = v25;
    v25(v19, v13);
    v30 = sub_219BE2634();
    v32 = v31;
    v33 = *(v82 + 8);
    v34 = v83;
    v33(v29, v83);
    if (v32 && (*&v94[0] = v30, *(&v94[0] + 1) = v32, strcpy(v92, "weboptinalert"), HIWORD(v92[0]) = -4864, sub_2187F3BD4(), v35 = sub_219BF7084(), , (v35 & 1) != 0) || (v36 = v75, sub_219BE2594(), v37 = v76, sub_219BE22E4(), v68(v36, v67), v38 = sub_219BE2634(), v40 = v39, v33(v37, v34), v40) && (*&v94[0] = v38, *(&v94[0] + 1) = v40, *&v92[0] = 0x6E6974706F626577, *(&v92[0] + 1) = 0xE800000000000000, sub_2187F3BD4(), v41 = sub_219BF7084(), , (v41 & 1) != 0))
    {
      __swift_project_boxed_opaque_existential_1(v84 + 4, v84[7]);
      sub_219BE43F4();
    }

    else
    {
      v46 = v77;
      sub_219BE3C94();
      v47 = v84[3];
      v48 = v79;
      v49 = swift_allocBox();
      (*(v78 + 16))(v50, v46, v48);
      v85 = v49;
      v51 = sub_219BDFA44();
      v52 = v74;
      (*(*(v51 - 8) + 56))(v74, 1, 1, v51);
      v95 = 0;
      memset(v94, 0, sizeof(v94));
      v93 = 0;
      memset(v92, 0, sizeof(v92));
      v91 = v47;
      sub_2187B16A8(v92, &v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      v66 = v28;
      if (*(&v88 + 1))
      {
        sub_2186CB1F0(&v87, v89);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v53 = qword_280ED32D8;
        v54 = qword_280ED32E0;
        v55 = qword_280ED32E8;

        sub_2188202A8(v54);
        __swift_destroy_boxed_opaque_existential_1(v89);
      }

      else
      {
        sub_218744C30(&v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v53 = qword_280ED32D8;
        v54 = qword_280ED32E0;
        v55 = qword_280ED32E8;

        sub_2188202A8(v54);
      }

      v86 = v49 | 0xC000000000000004;
      v88 = 0u;
      v87 = 0u;
      v56 = v73;
      sub_2187B16A8(v52, v73, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
      sub_2187B16A8(v94, v89, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v57 = (*(v71 + 80) + 24) & ~*(v71 + 80);
      v58 = (v72 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = (v58 + 47) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 16) = 0;
      sub_2189B4EAC(v56, v60 + v57);
      v61 = v60 + v58;
      v62 = v89[1];
      *v61 = v89[0];
      *(v61 + 16) = v62;
      *(v61 + 32) = v90;
      v63 = (v60 + v59);
      v64 = (v60 + ((v59 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v63 = 0;
      v63[1] = 0;
      *v64 = v53;
      v64[1] = v54;
      v64[2] = v55;

      sub_2188202A8(v54);
      sub_2186CF94C();
      sub_218B8051C(&qword_280EE5A90, 255, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v54);
      sub_218744C30(v92, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218744C30(v94, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218744C30(v52, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
      (*(v78 + 8))(v77, v79);
      sub_218744C30(&v87, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

      v28 = v66;
    }
  }

  else
  {

    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v42 = sub_219BE5434();
    __swift_project_value_buffer(v42, qword_27CCD8BA0);
    v43 = sub_219BE5414();
    v44 = sub_219BF61F4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2186C1000, v43, v44, "Failed to navigate to a alacarte subscriptionURL because no tagID found from the URL", v45, 2u);
      MEMORY[0x21CECF960](v45, -1, -1);
    }
  }

  return v28 != 0;
}

uint64_t sub_218B802E8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_218B803C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218B80428(void *a1)
{
  sub_218B803C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218B8051C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for ChannelCoinLayoutOptions()
{
  result = qword_27CC0E7D8;
  if (!qword_27CC0E7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B805FC()
{
  sub_219BE8164();
  if (v0 <= 0x3F)
  {
    sub_218B806B4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_218B806B4()
{
  if (!qword_27CC0E7E8)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E7E8);
    }
  }
}

uint64_t sub_218B80704(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  v7 = [v2 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = sub_219BF78F4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2189666A0();
  return sub_219BF6DD4() & 1;
}

uint64_t sub_218B80818(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_218B81460(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_218B81460(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  if (!a1)
  {
    v13 = sub_219BDBD34();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = sub_219BEE5B4();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    type metadata accessor for TagFeedConfig();
    v15 = swift_allocObject();
    sub_21870EB64(v11, v15 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, &qword_280EE9C40, MEMORY[0x277CC9578]);
    *(v15 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups) = MEMORY[0x277D84F90];
    *(v15 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_background) = 0;
    *(v15 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_theme) = 0;
    sub_21870EB64(v8, v15 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_metadata, &qword_280E91B80, MEMORY[0x277D32028]);
    *(v3 + 16) = v15;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    type metadata accessor for TagFeedKnobsConfig();
    swift_allocObject();
    a2 = sub_2190D9998(0, 0, 1, 0);
    goto LABEL_3;
  }

  *(v3 + 16) = a1;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_218B80A94(void *a1)
{
  v3 = v1;
  sub_218B814B4(0, &qword_27CC0E7F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B8140C();
  sub_219BF7B44();
  v12 = *(v3 + 16);
  HIBYTE(v11) = 0;
  type metadata accessor for TagFeedConfig();
  sub_21877D20C(&qword_27CC0E7F8, type metadata accessor for TagFeedConfig);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + 24);
    HIBYTE(v11) = 1;
    type metadata accessor for TagFeedKnobsConfig();
    sub_21877D20C(&qword_27CC0E800, type metadata accessor for TagFeedKnobsConfig);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218B80CA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x666E6F4364656566;
  }

  if (v2)
  {
    v4 = 0xEA00000000006769;
  }

  else
  {
    v4 = 0x8000000219CD6A50;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x666E6F4364656566;
  }

  if (*a2)
  {
    v6 = 0x8000000219CD6A50;
  }

  else
  {
    v6 = 0xEA00000000006769;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218B80D58()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218B80DE4()
{
  sub_219BF5524();
}

uint64_t sub_218B80E5C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218B80EE4@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_218B80F44(unint64_t *a1@<X8>)
{
  v2 = 0x8000000219CD6A50;
  v3 = 0x666E6F4364656566;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xEA00000000006769;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_218B80F8C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x666E6F4364656566;
  }
}

uint64_t sub_218B80FD0@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_218B81034(uint64_t a1)
{
  v2 = sub_218B8140C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B81070(uint64_t a1)
{
  v2 = sub_218B8140C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218B810F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218B811CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_218B81164@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(*v2 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *a2 = v6;
}

uint64_t sub_218B811CC(void *a1)
{
  sub_218B814B4(0, &qword_280E8CEB8, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B8140C();
  sub_219BF7B34();
  if (!v1)
  {
    type metadata accessor for TagFeedConfig();
    LOBYTE(v13) = 0;
    sub_21877D20C(&qword_280EDD758, type metadata accessor for TagFeedConfig);
    sub_219BF7674();
    v9 = v14;
    type metadata accessor for TagFeedKnobsConfig();
    v12[15] = 1;
    sub_21877D20C(&qword_280ED2838, type metadata accessor for TagFeedKnobsConfig);
    sub_219BF7674();
    v10 = v13;
    type metadata accessor for TagFeedContentConfig();
    v8 = swift_allocObject();
    sub_218B80818(v9, v10);
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_218B8140C()
{
  result = qword_280ECCD10;
  if (!qword_280ECCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCD10);
  }

  return result;
}

void sub_218B81460(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_218B814B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218B8140C();
    v7 = a3(a1, &type metadata for TagFeedContentConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218B8152C()
{
  result = qword_27CC0E808;
  if (!qword_27CC0E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E808);
  }

  return result;
}

unint64_t sub_218B81584()
{
  result = qword_280ECCD00;
  if (!qword_280ECCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCD00);
  }

  return result;
}

unint64_t sub_218B815DC()
{
  result = qword_280ECCD08;
  if (!qword_280ECCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCD08);
  }

  return result;
}

uint64_t sub_218B81658@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  sub_218B8243C(0, &qword_280E92530, MEMORY[0x277D31D70]);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = v47 - v4;
  sub_2186E3B14();
  v57 = v5;
  v58 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v59 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = v47 - v8;
  v62 = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v62);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8243C(0, &unk_280E919B0, sub_2186E3B14);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v64 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = v47 - v14;
  sub_218B82678(0, &qword_280E8CAB0, sub_218B82490, &type metadata for NewspaperMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = v47 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B82490();
  v20 = v66;
  sub_219BF7B34();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v55 = 0;
  v56 = v17;
  v66 = v10;
  v54 = a1;
  LOBYTE(v74) = 0;
  sub_2186EC638(&qword_280E919C8, sub_2186E3B14);
  v22 = v65;
  v23 = v57;
  sub_219BF7674();
  LOBYTE(v72) = 4;
  sub_219BF7674();
  v51 = v74;
  v76 = v75;
  LOBYTE(v70) = 5;
  sub_219BF7674();
  v48 = v72;
  v47[1] = v73;
  LOBYTE(v68) = 1;
  sub_219BF7674();
  v24 = v70;
  v50 = v71;
  LOBYTE(v67) = 2;
  sub_219BF7674();
  v25 = v68;
  v49 = v69;
  LOBYTE(v67) = 3;
  sub_218B824E4();
  v52 = sub_219BF7684();
  v77 = 6;
  v53 = v16;
  sub_219BF7674();
  v26 = v64;
  sub_218B82538(v22, v64);
  v27 = v58;
  v28 = *(v58 + 48);
  v29 = v23;
  if (v28(v26, 1, v23) == 1)
  {
    v30 = v64;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v29, qword_280F61818);
    v32 = v59;
    (*(v27 + 16))(v59, v31, v29);
    if (v28(v30, 1, v29) != 1)
    {
      sub_218B825B8(v30, &unk_280E919B0, sub_2186E3B14);
    }
  }

  else
  {
    v32 = v59;
    (*(v27 + 32))(v59, v64, v23);
  }

  v33 = sub_219BEDB04();
  v34 = v61;
  (*(*(v33 - 8) + 56))(v61, 1, 1, v33);
  v35 = v60;
  sub_219BEEA04();
  sub_218B825B8(v34, &qword_280E92530, MEMORY[0x277D31D70]);
  (*(v27 + 8))(v32, v29);
  v36 = v66;
  (*(v27 + 32))(v66, v35, v29);
  v37 = v54;
  v38 = v56;
  if (v50)
  {
    sub_219BF5CF4();
    v24 = v39 * 12.0;
  }

  v41 = v62;
  v40 = v63;
  *(v36 + *(v62 + 20)) = v24;
  v42 = v65;
  v43 = v52;
  if (v49)
  {
    sub_219BF5D04();
    v25 = v44;
  }

  *(v36 + *(v41 + 24)) = v25;
  v45 = v53;
  if (!v43)
  {
    sub_2186F0704(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_219C09EC0;
    if (qword_280EB0610 != -1)
    {
      swift_once();
    }

    v46 = byte_280F61A98 | 0x80;
    *(v43 + 32) = qword_280F61A90;
    *(v43 + 40) = v46;
    *(v43 + 48) = 5;
    *(v43 + 56) = 0;
  }

  sub_218B825B8(v42, &unk_280E919B0, sub_2186E3B14);
  (*(v38 + 8))(v19, v45);
  *(v36 + *(v41 + 28)) = v43;
  sub_218B82614(v36, v40);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_218B81EB8(void *a1)
{
  v3 = v1;
  sub_218B82678(0, &qword_280E8C388, sub_218B826E0, &type metadata for NewspaperMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B826E0();
  sub_219BF7B44();
  v16 = 0;
  sub_2186E3B14();
  sub_2186EC638(&qword_280E919D0, sub_2186E3B14);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
    v15 = 1;
    sub_219BF7814();
    v14 = 2;
    sub_219BF7814();
    v12[1] = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_2186F0704(0, &qword_280E8F220, MEMORY[0x277D83940]);
    sub_218B82734();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218B8213C()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0x726F635365736162;
  if (v1 != 5)
  {
    v3 = 0x727563634F78616DLL;
  }

  v4 = 0x746C754D6B6E6172;
  if (v1 == 3)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 == 1)
  {
    v5 = 0x6E69576863746566;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_218B8223C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218B82B30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218B82264(uint64_t a1)
{
  v2 = sub_218B82490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B822A0(uint64_t a1)
{
  v2 = sub_218B82490();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218B822DC()
{
  v1 = 0x73656C7572;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x6E69576863746566;
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

uint64_t sub_218B82368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218B82DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218B82390(uint64_t a1)
{
  v2 = sub_218B826E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B823CC(uint64_t a1)
{
  v2 = sub_218B826E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218B8243C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_218B82490()
{
  result = qword_280EA8D58;
  if (!qword_280EA8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8D58);
  }

  return result;
}

unint64_t sub_218B824E4()
{
  result = qword_280ECADC0;
  if (!qword_280ECADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECADC0);
  }

  return result;
}

uint64_t sub_218B82538(uint64_t a1, uint64_t a2)
{
  sub_218B8243C(0, &unk_280E919B0, sub_2186E3B14);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B825B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218B8243C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218B82614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218B82678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_218B826E0()
{
  result = qword_280EA8D80;
  if (!qword_280EA8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8D80);
  }

  return result;
}

unint64_t sub_218B82734()
{
  result = qword_280E8F218;
  if (!qword_280E8F218)
  {
    sub_2186F0704(255, &qword_280E8F220, MEMORY[0x277D83940]);
    sub_218B827C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F218);
  }

  return result;
}

unint64_t sub_218B827C8()
{
  result = qword_280ECADD0;
  if (!qword_280ECADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECADD0);
  }

  return result;
}

uint64_t sub_218B8281C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineFeedServiceConfig();
  sub_2186EC638(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_219419180(v6, v7);
}

unint64_t sub_218B82924()
{
  result = qword_27CC0E810;
  if (!qword_27CC0E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E810);
  }

  return result;
}

unint64_t sub_218B8297C()
{
  result = qword_27CC0E818;
  if (!qword_27CC0E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E818);
  }

  return result;
}

unint64_t sub_218B829D4()
{
  result = qword_280EA8D70;
  if (!qword_280EA8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8D70);
  }

  return result;
}

unint64_t sub_218B82A2C()
{
  result = qword_280EA8D78;
  if (!qword_280EA8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8D78);
  }

  return result;
}

unint64_t sub_218B82A84()
{
  result = qword_280EA8D60;
  if (!qword_280EA8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8D60);
  }

  return result;
}

unint64_t sub_218B82ADC()
{
  result = qword_280EA8D68;
  if (!qword_280EA8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8D68);
  }

  return result;
}

uint64_t sub_218B82B30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CE9710 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CE9730 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_218B82DA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CE9710 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CE9730 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id sub_218B82F14()
{
  result = sub_218B82F34();
  qword_280EB4020 = result;
  return result;
}

id sub_218B82F34()
{
  v0 = sub_219BDBE34();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21876807C(0, &qword_280EE9BD0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_219BDBE44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBF94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v15 = sub_219BF53D4();
  [v14 setDateFormat_];

  (*(v7 + 104))(v9, *MEMORY[0x277CC9810], v6);
  sub_219BDBE54();
  (*(v7 + 8))(v9, v6);
  v16 = sub_219BDBEE4();
  (*(v11 + 8))(v13, v10);
  [v14 setCalendar_];

  sub_219BDC054();
  v17 = sub_219BDC084();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v5, 1, v17) != 1)
  {
    v19 = sub_219BDC064();
    (*(v18 + 8))(v5, v17);
  }

  [v14 setTimeZone_];

  sub_219BDBD74();
  v20 = sub_219BDBDB4();
  (*(v22 + 8))(v2, v23);
  [v14 setLocale_];

  return v14;
}

uint64_t sub_218B83334()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2187BC3E8(v0 + OBJC_IVAR____TtC7NewsUI228MagazineConfigurationService_bundleVersion, &qword_280EE68E0, MEMORY[0x277D6CF38], MEMORY[0x277D83D88], sub_21876807C);

  return swift_deallocClassInstance();
}

uint64_t sub_218B833EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x277D83D88];
  sub_21876807C(0, qword_280EA8D00, type metadata accessor for NewspaperMagazineFeedGroupKnobs, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v253 - v6;
  sub_21876807C(0, qword_280EA0FE0, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v8 - 8);
  v280 = &v253 - v9;
  sub_21876807C(0, qword_280EAA120, type metadata accessor for TrendingMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v10 - 8);
  v279 = &v253 - v11;
  v277 = type metadata accessor for TopicMagazineFeedGroupKnobs();
  v276 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v275 = &v253 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21876807C(0, qword_280EB61C0, type metadata accessor for TopicMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v13 - 8);
  v278 = &v253 - v14;
  sub_21876807C(0, qword_280E96AE0, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v15 - 8);
  v311 = &v253 - v16;
  sub_21876807C(0, &qword_280EAF818, type metadata accessor for PaywallMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v17 - 8);
  v310 = &v253 - v18;
  v19 = MEMORY[0x277D32318];
  sub_218B8757C(0, &qword_280E91830, MEMORY[0x277D32318]);
  v309 = v20;
  v319 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v274 = &v253 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v268 = &v253 - v23;
  sub_21876807C(0, &qword_280E92530, MEMORY[0x277D31D70], v4);
  MEMORY[0x28223BE20](v24 - 8);
  v303 = &v253 - v25;
  v26 = MEMORY[0x277D321A0];
  sub_218B8757C(0, &qword_280E919C0, MEMORY[0x277D321A0]);
  v304 = v27;
  v281 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v272 = &v253 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v271 = &v253 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v263 = &v253 - v33;
  MEMORY[0x28223BE20](v32);
  v264 = &v253 - v34;
  v298 = type metadata accessor for NewIssueMagazineFeedGroupKnobs();
  v266 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v297 = &v253 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87618(0, &unk_280E91820, &qword_280E91830, v19);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v273 = &v253 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v302 = &v253 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v265 = &v253 - v42;
  MEMORY[0x28223BE20](v41);
  v296 = (&v253 - v43);
  sub_218B87618(0, &unk_280E919B0, &qword_280E919C0, v26);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v267 = &v253 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v300 = &v253 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v262 = &v253 - v50;
  MEMORY[0x28223BE20](v49);
  v295 = &v253 - v51;
  sub_21876807C(0, qword_280EAC0A0, type metadata accessor for NewIssueMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v52 - 8);
  v308 = &v253 - v53;
  sub_21876807C(0, qword_280EA3068, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v54 - 8);
  v307 = &v253 - v55;
  sub_21876807C(0, &qword_280E983F0, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v56 - 8);
  v306 = &v253 - v57;
  sub_21876807C(0, qword_280E9DAE8, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v58 - 8);
  v305 = &v253 - v59;
  sub_21876807C(0, qword_280E94EA0, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v60 - 8);
  v301 = &v253 - v61;
  sub_21876807C(0, qword_280E99AE8, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v62 - 8);
  v299 = &v253 - v63;
  sub_21876807C(0, qword_280EC7CD0, type metadata accessor for MagazineFeedGroupKnobs, v4);
  MEMORY[0x28223BE20](v64 - 8);
  v270 = (&v253 - v65);
  sub_21876807C(0, qword_280ED0FF8, type metadata accessor for MagazineKnobsConfig, v4);
  MEMORY[0x28223BE20](v66 - 8);
  v269 = (&v253 - v67);
  v314 = sub_219BDBD64();
  v318 = *(v314 - 1);
  MEMORY[0x28223BE20](v314);
  v313 = &v253 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for MagazineSectionConfig();
  v69 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v71 = (&v253 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21876807C(0, &qword_280EE68E0, MEMORY[0x277D6CF38], v4);
  v73 = MEMORY[0x28223BE20](v72 - 8);
  v322 = (&v253 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v73);
  v317 = (&v253 - v75);
  sub_21876807C(0, &unk_280EE9D00, MEMORY[0x277CC9260], v4);
  v77 = MEMORY[0x28223BE20](v76 - 8);
  v321 = (&v253 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = MEMORY[0x28223BE20](v77);
  v316 = &v253 - v80;
  MEMORY[0x28223BE20](v79);
  v320 = (&v253 - v81);
  sub_21876807C(0, qword_280ED37B0, type metadata accessor for MagazineFeedConfig, v4);
  MEMORY[0x28223BE20](v82 - 8);
  v315 = (&v253 - v83);
  sub_21876807C(0, qword_280EDC500, type metadata accessor for MagazineConfig, v4);
  MEMORY[0x28223BE20](v84 - 8);
  v86 = &v253 - v85;
  v87 = v2[5];
  v88 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v87);
  v89 = (*(v88 + 8))(v87, v88);
  if (v90 >> 60 == 15)
  {
    v259 = v7;
    v260 = a1;
    v93 = type metadata accessor for MagazineConfig();
    (*(*(v93 - 8) + 56))(v86, 1, 1, v93);
    sub_2187BC3E8(v86, qword_280EDC500, type metadata accessor for MagazineConfig, MEMORY[0x277D83D88], sub_21876807C);
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_218B87934(0, &qword_280E8BA80, &type metadata for MagazineFeedGroupConfig, MEMORY[0x277D84560]);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_219C09EC0;
    v95 = v94;
    sub_218B87670();
    v96 = swift_allocBox();
    sub_218F83EA4(&unk_282A228E0, v97);
    *(v95 + 32) = v96 | 0x7000000000000000;
    v258 = v95;
    sub_218B8773C();
    v98 = swift_allocBox();
    sub_21906ADA4(&unk_282A22908, v99);
    *(v95 + 40) = v98 | 0x5000000000000000;
    v257 = type metadata accessor for MagazineFeedConfig();
    v100 = *(v257 + 20);
    v101 = v315;
    sub_219BDBBB4();
    v102 = sub_219BDBD34();
    (*(*(v102 - 8) + 56))(v101 + v100, 0, 1, v102);
    sub_21876807C(0, &qword_280E8BAE0, type metadata accessor for MagazineSectionConfig, MEMORY[0x277D84560]);
    v254 = *(v69 + 72);
    v103 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v255 = 2 * v254;
    v104 = swift_allocObject();
    v256 = v104;
    *(v104 + 16) = xmmword_219C0B8C0;
    v312 = (v104 + v103);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v294 = ObjCClassFromMetadata;
    v293 = objc_opt_self();
    v106 = [v293 bundleForClass_];
    v107 = sub_219BDB5E4();
    v109 = v108;

    v110 = sub_219BDB954();
    v288 = v110;
    v111 = *(v110 - 8);
    v112 = *(v111 + 56);
    v290 = v112;
    v289 = v111 + 56;
    v113 = v320;
    v112(v320, 1, 1, v110);
    v114 = v316;
    v112(v316, 1, 1, v110);
    v112(v321, 1, 1, v110);
    v115 = sub_219BE3184();
    v285 = v115;
    v116 = *(v115 - 8);
    v117 = *(v116 + 56);
    v286 = v117;
    v287 = v116 + 56;
    v118 = v317;
    v117(v317, 1, 1, v115);
    v117(v322, 1, 1, v115);
    *v71 = v107;
    v71[1] = v109;
    v119 = v313;
    sub_219BDBD54();
    v120 = sub_219BDBD44();
    v122 = v121;
    v123 = *(v318 + 8);
    v318 += 8;
    v292 = v123;
    v123(v119, v314);
    v71[2] = v120;
    v71[3] = v122;
    v124 = v261;
    v125 = MEMORY[0x277CC9260];
    v126 = MEMORY[0x277D83D88];
    sub_218B87850(v113, v71 + *(v261 + 24), &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_21876807C);
    sub_218B87850(v114, v71 + v124[7], &unk_280EE9D00, v125, v126, sub_21876807C);
    v127 = v71 + v124[8];
    v128 = v321;
    v282 = sub_21876807C;
    sub_218B87850(v321, v127, &unk_280EE9D00, v125, v126, sub_21876807C);
    v129 = v71 + v124[9];
    *v129 = xmmword_219C1D060;
    v129[16] = 2;
    v130 = MEMORY[0x277D6CF38];
    v131 = v118;
    sub_218B87850(v118, v71 + v124[10], &qword_280EE68E0, MEMORY[0x277D6CF38], v126, sub_21876807C);
    v132 = v322;
    sub_218B87850(v322, v71 + v124[11], &qword_280EE68E0, v130, v126, sub_21876807C);
    *(v71 + v124[12]) = MEMORY[0x277D84FA0];
    v284 = v130;
    sub_2187BC3E8(v132, &qword_280EE68E0, v130, v126, sub_21876807C);
    sub_2187BC3E8(v131, &qword_280EE68E0, v130, v126, sub_21876807C);
    sub_2187BC3E8(v128, &unk_280EE9D00, v125, v126, sub_21876807C);
    v133 = v316;
    v283 = sub_21876807C;
    sub_2187BC3E8(v316, &unk_280EE9D00, v125, v126, sub_21876807C);
    v134 = v320;
    sub_2187BC3E8(v320, &unk_280EE9D00, v125, v126, sub_21876807C);
    *(v71 + v124[13]) = MEMORY[0x277D84FA0];
    v291 = type metadata accessor for MagazineSectionConfig;
    sub_218B878C4(v71, v312, type metadata accessor for MagazineSectionConfig);
    v135 = [v293 bundleForClass_];
    v253 = sub_219BDB5E4();
    v137 = v136;

    v138 = v288;
    v139 = v290;
    v290(v134, 1, 1, v288);
    v139(v133, 1, 1, v138);
    v140 = v321;
    v139(v321, 1, 1, v138);
    v141 = v285;
    v142 = v286;
    v286(v317, 1, 1, v285);
    v142(v322, 1, 1, v141);
    *v71 = v253;
    v71[1] = v137;
    v143 = v313;
    sub_219BDBD54();
    v144 = sub_219BDBD44();
    v146 = v145;
    v292(v143, v314);
    v71[2] = v144;
    v71[3] = v146;
    v147 = v282;
    sub_218B87850(v320, v71 + v124[6], &unk_280EE9D00, v125, v126, v282);
    v148 = v316;
    sub_218B87850(v316, v71 + v124[7], &unk_280EE9D00, v125, v126, v147);
    sub_218B87850(v140, v71 + v124[8], &unk_280EE9D00, v125, v126, v147);
    v149 = v71 + v124[9];
    *v149 = xmmword_219C1E930;
    v149[16] = 2;
    v150 = v317;
    v151 = v284;
    sub_218B87850(v317, v71 + v124[10], &qword_280EE68E0, v284, v126, v147);
    v152 = v322;
    sub_218B87850(v322, v71 + v124[11], &qword_280EE68E0, v151, v126, v147);
    *(v71 + v124[12]) = MEMORY[0x277D84FA0];
    v153 = v283;
    sub_2187BC3E8(v152, &qword_280EE68E0, v151, v126, v283);
    sub_2187BC3E8(v150, &qword_280EE68E0, v151, v126, v153);
    v154 = v321;
    sub_2187BC3E8(v321, &unk_280EE9D00, v125, v126, v153);
    v155 = v148;
    sub_2187BC3E8(v148, &unk_280EE9D00, v125, v126, v153);
    v156 = v320;
    sub_2187BC3E8(v320, &unk_280EE9D00, v125, v126, v153);
    *(v71 + v124[13]) = MEMORY[0x277D84FA0];
    sub_218B878C4(v71, v312 + v254, v291);
    v157 = [v293 bundleForClass_];
    v294 = sub_219BDB5E4();
    v293 = v158;

    v159 = v156;
    v160 = v288;
    v161 = v290;
    v290(v156, 1, 1, v288);
    v161(v155, 1, 1, v160);
    v161(v154, 1, 1, v160);
    v162 = v317;
    v163 = v285;
    v164 = v286;
    v286(v317, 1, 1, v285);
    v164(v322, 1, 1, v163);
    v165 = v293;
    *v71 = v294;
    v71[1] = v165;
    v166 = v313;
    sub_219BDBD54();
    v167 = sub_219BDBD44();
    v169 = v168;
    v292(v166, v314);
    v71[2] = v167;
    v71[3] = v169;
    v170 = v282;
    sub_218B87850(v159, v71 + v124[6], &unk_280EE9D00, v125, v126, v282);
    v171 = v170;
    sub_218B87850(v155, v71 + v124[7], &unk_280EE9D00, v125, v126, v170);
    v172 = v321;
    sub_218B87850(v321, v71 + v124[8], &unk_280EE9D00, v125, v126, v170);
    v173 = v71 + v124[9];
    *v173 = xmmword_219C14CF0;
    v173[16] = 2;
    v174 = v162;
    v175 = v162;
    v176 = v284;
    sub_218B87850(v175, v71 + v124[10], &qword_280EE68E0, v284, v126, v170);
    v177 = v322;
    sub_218B87850(v322, v71 + v124[11], &qword_280EE68E0, v176, v126, v171);
    v178 = MEMORY[0x277D84FA0];
    *(v71 + v124[12]) = MEMORY[0x277D84FA0];
    v179 = v177;
    v180 = v283;
    sub_2187BC3E8(v179, &qword_280EE68E0, v176, v126, v283);
    sub_2187BC3E8(v174, &qword_280EE68E0, v176, v126, v180);
    sub_2187BC3E8(v172, &unk_280EE9D00, v125, v126, v180);
    sub_2187BC3E8(v316, &unk_280EE9D00, v125, v126, v180);
    sub_2187BC3E8(v320, &unk_280EE9D00, v125, v126, v180);
    *(v71 + v124[13]) = v178;
    sub_218B878C4(v71, v312 + v255, v291);
    v181 = v257;
    v182 = *(v257 + 28);
    v183 = sub_219BEE5B4();
    v184 = v315;
    (*(*(v183 - 8) + 56))(v315 + v182, 1, 1, v183);
    *v184 = v258;
    v185 = (v184 + *(v181 + 24));
    *v185 = v256;
    v185[1] = MEMORY[0x277D84F90];
    (*(*(v181 - 8) + 56))(v184, 0, 1, v181);
    v186 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
    (*(*(v186 - 8) + 56))(v299, 1, 1, v186);
    v187 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
    (*(*(v187 - 8) + 56))(v301, 1, 1, v187);
    v188 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
    (*(*(v188 - 8) + 56))(v305, 1, 1, v188);
    v189 = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
    (*(*(v189 - 8) + 56))(v306, 1, 1, v189);
    v190 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
    (*(*(v190 - 8) + 56))(v307, 1, 1, v190);
    v191 = v281;
    v192 = v295;
    v193 = v304;
    v317 = *(v281 + 56);
    v318 = v281 + 56;
    (v317)(v295, 1, 1, v304);
    v194 = v319;
    v195 = *(v319 + 56);
    v196 = v309;
    v316 = v319 + 56;
    v314 = v195;
    v195(v296, 1, 1, v309);
    v197 = v262;
    sub_218B87850(v192, v262, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0], sub_218B87618);
    v322 = *(v191 + 48);
    if ((v322)(v197, 1, v193) == 1)
    {
      v198 = v265;
      v199 = v263;
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v200 = __swift_project_value_buffer(v193, qword_280F61818);
      (*(v191 + 16))(v199, v200, v193);
      if ((v322)(v197, 1, v193) != 1)
      {
        sub_2187BC3E8(v197, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0], sub_218B87618);
      }
    }

    else
    {
      v199 = v263;
      (*(v191 + 32))(v263, v197, v193);
      v198 = v265;
    }

    v201 = sub_219BEDB04();
    v202 = *(v201 - 8);
    v203 = v303;
    v312 = *(v202 + 56);
    v313 = v201;
    v294 = v202 + 56;
    v312(v303, 1, 1);
    v204 = v264;
    v205 = v193;
    sub_219BEEA04();
    sub_2187BC3E8(v203, &qword_280E92530, MEMORY[0x277D31D70], MEMORY[0x277D83D88], sub_21876807C);
    v293 = *(v191 + 8);
    (v293)(v199, v193);
    v206 = v297;
    v321 = *(v191 + 32);
    (v321)(v297, v204, v205);
    v207 = v298;
    v206[*(v298 + 20)] = 2;
    v206[*(v207 + 24)] = 0;
    *&v206[*(v207 + 28)] = 0x7FEFFFFFFFFFFFFFLL;
    v208 = v296;
    sub_218B87850(v296, v198, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318], sub_218B87618);
    v209 = *(v194 + 48);
    v210 = v209(v198, 1, v196);
    v320 = v209;
    if (v210 == 1)
    {
      type metadata accessor for MagazineFeedServiceConfig();
      sub_218B87808(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      v211 = v268;
      sub_219BEEC74();
      sub_2187BC3E8(v208, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318], sub_218B87618);
      sub_2187BC3E8(v295, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0], sub_218B87618);
      v212 = v196;
      if (v209(v198, 1, v196) != 1)
      {
        sub_2187BC3E8(v198, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318], sub_218B87618);
      }
    }

    else
    {
      sub_2187BC3E8(v208, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318], sub_218B87618);
      sub_2187BC3E8(v295, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0], sub_218B87618);
      v213 = *(v194 + 32);
      v211 = v268;
      v213(v268, v198, v196);
      v212 = v196;
    }

    v214 = v298;
    v215 = *(v319 + 32);
    v216 = v297;
    v217 = &v297[*(v298 + 32)];
    v319 += 32;
    v296 = v215;
    (v215)(v217, v211, v212);
    v218 = v308;
    sub_218B878C4(v216, v308, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
    (*(v266 + 56))(v218, 0, 1, v214);
    v219 = type metadata accessor for PaywallMagazineFeedGroupKnobs();
    (*(*(v219 - 8) + 56))(v310, 1, 1, v219);
    v220 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
    (*(*(v220 - 8) + 56))(v311, 1, 1, v220);
    v221 = v300;
    v222 = v304;
    (v317)(v300, 1, 1, v304);
    v314(v302, 1, 1, v212);
    v223 = v221;
    v224 = v267;
    sub_218B87850(v223, v267, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0], sub_218B87618);
    if ((v322)(v224, 1, v222) == 1)
    {
      v225 = v274;
      v226 = v272;
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v227 = __swift_project_value_buffer(v222, qword_280F61818);
      (*(v281 + 16))(v226, v227, v222);
      v228 = (v322)(v224, 1, v222);
      v229 = v302;
      if (v228 != 1)
      {
        sub_2187BC3E8(v224, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0], sub_218B87618);
      }
    }

    else
    {
      v226 = v272;
      (v321)(v272, v224, v222);
      v225 = v274;
      v229 = v302;
    }

    v230 = v303;
    (v312)(v303, 1, 1, v313);
    v231 = v271;
    sub_219BEEA04();
    sub_2187BC3E8(v230, &qword_280E92530, MEMORY[0x277D31D70], MEMORY[0x277D83D88], sub_21876807C);
    (v293)(v226, v222);
    v232 = v275;
    (v321)(v275, v231, v222);
    v233 = v277;
    *(v232 + *(v277 + 20)) = 0;
    *(v232 + *(v233 + 24)) = 0;
    v234 = v273;
    sub_218B87850(v229, v273, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318], sub_218B87618);
    v235 = v309;
    v236 = v320;
    if (v320(v234, 1, v309) == 1)
    {
      type metadata accessor for MagazineFeedServiceConfig();
      sub_218B87808(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      sub_219BEEC74();
      sub_2187BC3E8(v229, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318], sub_218B87618);
      sub_2187BC3E8(v300, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0], sub_218B87618);
      v237 = v236(v234, 1, v235);
      v238 = v259;
      v239 = v296;
      if (v237 != 1)
      {
        sub_2187BC3E8(v234, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318], sub_218B87618);
      }
    }

    else
    {
      sub_2187BC3E8(v229, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318], sub_218B87618);
      sub_2187BC3E8(v300, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0], sub_218B87618);
      v239 = v296;
      (v296)(v225, v234, v235);
      v238 = v259;
    }

    v239(v232 + *(v233 + 28), v225, v235);
    v240 = v278;
    sub_218B878C4(v232, v278, type metadata accessor for TopicMagazineFeedGroupKnobs);
    (*(v276 + 56))(v240, 0, 1, v233);
    v241 = type metadata accessor for TrendingMagazineFeedGroupKnobs();
    v242 = v279;
    (*(*(v241 - 8) + 56))(v279, 1, 1, v241);
    v243 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
    v244 = v280;
    (*(*(v243 - 8) + 56))(v280, 1, 1, v243);
    v245 = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
    (*(*(v245 - 8) + 56))(v238, 1, 1, v245);
    v252 = v238;
    v246 = v270;
    sub_218933F00(0, 0, 1, v299, v301, v305, v306, v307, v270, v308, v310, v311, v240, v242, v244, v252);
    v247 = type metadata accessor for MagazineFeedGroupKnobs();
    (*(*(v247 - 8) + 56))(v246, 0, 1, v247);
    v248 = v269;
    sub_218DC712C(0, 1, v246, v269);
    v249 = type metadata accessor for MagazineKnobsConfig();
    (*(*(v249 - 8) + 56))(v248, 0, 1, v249);
    return sub_21937C038(v315, v248, v260);
  }

  else
  {
    v91 = v89;
    v92 = v90;
    sub_218B860D0(v89, v90, v86);
    sub_218822A5C(v91, v92);
    v251 = type metadata accessor for MagazineConfig();
    (*(*(v251 - 8) + 56))(v86, 0, 1, v251);
    sub_218B878C4(v86, a1, type metadata accessor for MagazineConfig);
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    return sub_219BE5314();
  }
}

uint64_t sub_218B860D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[2] = a3;
  v24[0] = a1;
  v24[1] = a2;
  v3 = sub_219BF5474();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_219BE1934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE1954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE1994();
  swift_allocObject();
  sub_219BE1984();
  if (qword_280EB4018 != -1)
  {
    swift_once();
  }

  v12 = qword_280EB4020;
  *v11 = qword_280EB4020;
  (*(v9 + 104))(v11, *MEMORY[0x277D6C9B8], v8);
  v13 = v12;
  sub_219BE1964();
  (*(v5 + 104))(v7, *MEMORY[0x277D6C9A8], v4);
  sub_219BE1944();
  sub_219BF5464();
  v14 = sub_219BF5434();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C09BA0;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_2186FC3BC();
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    sub_219BF6214();
    sub_219BE5314();
  }

  type metadata accessor for MagazineConfig();
  sub_218B87808(&qword_280EDC540, type metadata accessor for MagazineConfig);
  v19 = v24[3];
  sub_219BE1974();
  if (!v19)
  {
  }

  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  v25 = 0;
  v26 = 0xE000000000000000;
  v27 = v19;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v21 = v25;
  v22 = v26;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_2186FC3BC();
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  sub_219BE5314();

  return swift_willThrow();
}

uint64_t sub_218B86544()
{
  v1 = v0;
  sub_21876807C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDB0F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE97C0 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    v25 = v6;
    if (qword_27CC07F98 != -1)
    {
      swift_once();
    }

    sub_218B87808(&unk_27CC0E820, type metadata accessor for MagazineConfigurationService);
    sub_219BDC7D4();
    v26 = v28;
    v27 = v29;
    sub_219BDB0D4();
    sub_2187F3BD4();
    v13 = sub_219BF7024();
    v15 = v14;
    (*(v10 + 8))(v12, v9);

    sub_219BDB914();
    v16 = v25;
    if ((*(v25 + 48))(v4, 1, v5) == 1)
    {
      sub_2187BC3E8(v4, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_21876807C);
      sub_218B874B8();
      swift_allocError();
      *v17 = v13;
      *(v17 + 8) = v15;
      *(v17 + 16) = 0;
      *(v17 + 24) = 1;
      sub_21876807C(0, &unk_27CC0E838, type metadata accessor for MagazineConfig, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE2FF4();
    }

    else
    {

      v21 = (*(v16 + 32))(v8, v4, v5);
      MEMORY[0x28223BE20](v21);
      *(&v24 - 2) = v1;
      *(&v24 - 1) = v8;
      sub_219BE3204();

      v22 = sub_219BE2E54();
      type metadata accessor for MagazineConfig();
      v23 = sub_219BE2F74();

      (*(v16 + 8))(v8, v5);
      return v23;
    }
  }

  else
  {
    sub_219BE3204();

    v19 = sub_219BE2E54();
    type metadata accessor for MagazineConfig();
    v20 = sub_219BE2F74();

    return v20;
  }
}

uint64_t sub_218B86AA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDAF64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a2, v3);
  sub_219BDAF44();
  v11 = [objc_opt_self() sharedSession];
  sub_219BE2E24();

  v12 = sub_219BE2E54();
  v13 = sub_219BE2F74();

  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_218B86CE8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 32))(v1, v2);
}

void sub_218B86D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_219BE3184();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 16);

  FCCurrentQoS();
  v16 = FCDispatchQueueForQualityOfService();
  sub_219BF5064();
  sub_219BE3134();
  (*(v11 + 8))(v13, v10);
  v17 = sub_219BF53D4();

  v18 = swift_allocObject();
  v18[2] = sub_218AB15BC;
  v18[3] = v14;
  v18[4] = a3;
  v18[5] = a4;
  aBlock[4] = sub_218B87984;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_219962EA0;
  aBlock[3] = &block_descriptor_27;
  v19 = _Block_copy(aBlock);

  [v15 fetchMagazinesConfigurationIfNeededWithCompletionQueue:v16 formatVersion:v17 completion:v19];
  _Block_release(v19);
}

uint64_t sub_218B86F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

void sub_218B86F9C(uint64_t a1, unint64_t a2, id a3, void (*a4)(uint64_t, unint64_t), uint64_t a5, void (*a6)(void))
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v8 = a3;
      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_2186F20D4();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_219C09BA0;
      sub_2186CFDE4(0, &qword_280E8B580);
      sub_219BF7484();
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_2186FC3BC();
      *(v9 + 32) = 0;
      *(v9 + 40) = 0xE000000000000000;
      sub_219BE5314();

      (a6)(a3);
    }

    else
    {
      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_219BE5314();
      sub_218B87990();
      v13 = swift_allocError();
      a6();
    }
  }

  else
  {
    sub_218B87528(a1, a2);
    a4(a1, a2);

    sub_218822A5C(a1, a2);
  }
}

uint64_t sub_218B87220()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_218B87260()
{
  v1 = [*(*v0 + 16) magazinesConfigurationData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_219BDBA04();

  return v3;
}

uint64_t sub_218B872CC()
{
  sub_218B87934(0, &qword_280EE6D30, &type metadata for MagazineConfigurationResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218B8738C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v9 = swift_allocObject();
  sub_2186CB1F0(&v11, v9 + 16);
  sub_21876DEC4(a2, v9 + OBJC_IVAR____TtC7NewsUI228MagazineConfigurationService_bundleVersion);
  return v9;
}

uint64_t sub_218B8743C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

unint64_t sub_218B874B8()
{
  result = qword_27CC0E830;
  if (!qword_27CC0E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E830);
  }

  return result;
}

uint64_t sub_218B87528(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_218B8757C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MagazineFeedServiceConfig();
    v7 = sub_218B87808(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218B87618(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218B8757C(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_218B87670()
{
  if (!qword_280E922E0)
  {
    type metadata accessor for PaywallMagazineFeedGroupConfigData();
    sub_218B87808(&unk_280E9F9B0, type metadata accessor for PaywallMagazineFeedGroupConfigData);
    sub_218B87808(&qword_280E9F9C0, type metadata accessor for PaywallMagazineFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E922E0);
    }
  }
}

void sub_218B8773C()
{
  if (!qword_280E920D0)
  {
    type metadata accessor for MyMagazinesMagazineFeedGroupConfigData();
    sub_218B87808(&qword_280E98338, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData);
    sub_218B87808(&qword_280E98340, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E920D0);
    }
  }
}

uint64_t sub_218B87808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218B87850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_218B878C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218B87934(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_218B87990()
{
  result = qword_27CC0E848;
  if (!qword_27CC0E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E848);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI228MagazineConfigurationServiceC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_218B87A10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_218B87A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_218B87AA0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_218B87AE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_218B87B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_218B87B9C()
{
  result = qword_27CC0E850;
  if (!qword_27CC0E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E850);
  }

  return result;
}

uint64_t sub_218B87CBC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = type metadata accessor for MagazineCatalogPrewarmBlueprintModifier();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19[-v12];
  v14 = *v3;
  sub_218B880E0(a2, &v19[*(v11 + 20) - v12], type metadata accessor for MagazineCategoryConfig);
  sub_218718690(v14 + 16, v13 + *(v7 + 28));
  *v13 = a1;
  v15 = (v13 + *(v7 + 24));
  *(v15 + 41) = *(a3 + 41);
  v16 = a3[2];
  v15[1] = a3[1];
  v15[2] = v16;
  *v15 = *a3;
  sub_218B880E0(v13, v10, type metadata accessor for MagazineCatalogPrewarmBlueprintModifier);
  sub_218B87F7C();
  swift_allocObject();

  sub_218B88148(a3, v19);
  sub_218B881A4(&unk_27CC0E860, type metadata accessor for MagazineCatalogPrewarmBlueprintModifier);
  v17 = sub_219BE6E64();
  sub_218B881EC(v13);
  return v17;
}

uint64_t sub_218B87E6C(unint64_t a1, void *a2, char a3)
{
  sub_218718690(*v3 + 16, &v12);
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  sub_218B87F20(v10, &v9);
  sub_218B87F7C();
  swift_allocObject();
  sub_2189F5084(a1);
  sub_218B88068(a2, a3);
  sub_2189F5148();
  v7 = sub_219BE6E64();
  sub_218B8808C(v10);
  return v7;
}

void sub_218B87F7C()
{
  if (!qword_27CC21750)
  {
    type metadata accessor for MagazineCatalogSectionDescriptor(255);
    type metadata accessor for MagazineCatalogModel();
    sub_218B881A4(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
    sub_218B881A4(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC21750);
    }
  }
}

id sub_218B88068(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_218B88080(result, a2 & 1);
  }

  return result;
}

id sub_218B88080(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_218B880E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B881A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218B881EC(uint64_t a1)
{
  v2 = type metadata accessor for MagazineCatalogPrewarmBlueprintModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter()
{
  result = qword_280EE2C80;
  if (!qword_280EE2C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B882BC()
{
  sub_2186DF3DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, qword_280EE14A0);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280EE1810);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, qword_280E9C090);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_218B883C0()
{
  v1 = type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8B244(0, &unk_280EE6660, MEMORY[0x277D31550], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_219BE3514();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  sub_219BEDD14();
  v15 = *&v14[*(v12 + 92)];

  result = sub_2187362E8(v14, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  if (!v15)
  {
    goto LABEL_15;
  }

  v41 = *(v15 + 16);
  if (!v41)
  {

LABEL_15:
    sub_218B8B520(v0, v4, type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);
    v28 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v29 = swift_allocObject();
    sub_218B8B588(v4, v29 + v28, type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);
    sub_218B8BE78(0, &unk_280E92658, &type metadata for LocalNewsTodayFeedGroupEmitterCursor, MEMORY[0x277D31C10]);
    v31 = v30;
    swift_allocObject();
    v32 = sub_219BED764();
    v44 = v31;
    v43 = v32;
    sub_218A80D28();
    swift_allocObject();
    return sub_219BE3014();
  }

  v34 = v1;
  v35 = v2;
  v36 = v3;
  v37 = v0;
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = (v40 + 48);
  v19 = (v40 + 32);
  v42 = v15;
  v20 = v15 + 40;
  v21 = MEMORY[0x277D84F90];
  v39 = v10;
  while (v17 < *(v42 + 16))
  {

    sub_219BE34E4();
    if ((*v18)(v7, 1, v8) == 1)
    {
      result = sub_218B8BA94(v7);
    }

    else
    {
      v22 = *v19;
      (*v19)(v10, v7, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2191F7D30(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_2191F7D30(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      v25 = v21 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v24;
      v10 = v39;
      result = (v22)(v25, v39, v8);
    }

    ++v17;
    v20 += 16;
    if (v41 == v17)
    {

      v0 = v37;
      v26 = *__swift_project_boxed_opaque_existential_1((v37 + *(v34 + 32)), *(v37 + *(v34 + 32) + 24));
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v21;

      sub_219BE3494();

      v4 = v38;
      v2 = v35;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218B888B8(uint64_t a1)
{
  v2 = type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v11 = a1;
  sub_218B8BE78(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_218B8B520(a1, &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_218B8B588(&v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);
  v7 = sub_219BE2E54();
  v8 = sub_219BE2F64();

  return v8;
}

uint64_t sub_218B88A64(uint64_t a1)
{
  v3 = type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_218B8BE78(0, &unk_280E92658, &type metadata for LocalNewsTodayFeedGroupEmitterCursor, MEMORY[0x277D31C10]);
  sub_219BE3204();
  v6 = sub_219BE2E54();
  sub_219BE2F64();

  sub_218B8B520(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);
  v7 = *(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_218B8B588(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + ((v7 + 24) & ~v7), type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);

  v9 = sub_219BE2E54();
  sub_218B8B124(0);
  sub_219BE2F64();

  sub_218B8B520(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);
  v10 = swift_allocObject();
  sub_218B8B588(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + ((v7 + 16) & ~v7), type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);
  v11 = sub_219BE2E54();
  v12 = sub_219BE3064();

  return v12;
}

char *sub_218B88D20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2187DF448();
  v3 = sub_219BEDC44();

  if (v3 >> 62)
  {
    v4 = sub_219BF7214();
    v41 = v2;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v41 = v2;
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v42 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v42;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CECE0F0](v6, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    v9 = [v8 identifier];
    v10 = sub_219BF5414();
    v12 = v11;
    swift_unknownObjectRelease();

    v14 = *(v42 + 16);
    v13 = *(v42 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_21870B65C((v13 > 1), v14 + 1, 1);
    }

    ++v6;
    *(v42 + 16) = v14 + 1;
    v15 = v42 + 16 * v14;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
  }

  while (v4 != v6);

  v2 = v41;
LABEL_14:
  v16 = sub_218845F78(v7);

  v40 = *(v2 + 16);
  if (v40)
  {
    v17 = 0;
    v39 = v2 + 32;
    v18 = v16 + 56;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v17 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v20 = (v39 + 16 * v17);
      v22 = *v20;
      v21 = v20[1];
      ++v17;
      if (*(v16 + 16))
      {
        sub_219BF7AA4();

        sub_219BF5524();
        v23 = sub_219BF7AE4();
        v24 = -1 << *(v16 + 32);
        v25 = v23 & ~v24;
        if ((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (1)
          {
            v27 = (*(v16 + 48) + 16 * v25);
            v28 = *v27 == v22 && v27[1] == v21;
            if (v28 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_17;
        }
      }

      else
      {
      }

LABEL_28:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_218C34E50(0, v19[2] + 1, 1);
      }

      v30 = v19[2];
      v29 = v19[3];
      if (v30 >= v29 >> 1)
      {
        sub_218C34E50((v29 > 1), v30 + 1, 1);
      }

      v19[2] = v30 + 1;
      v31 = &v19[2 * v30];
      v31[4] = v22;
      v31[5] = v21;
LABEL_17:
      v2 = v41;
      if (v17 == v40)
      {
        goto LABEL_35;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_35:

  if (qword_280E8D7A0 != -1)
  {
LABEL_38:
    swift_once();
  }

  sub_2186F20D4();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_219C09EC0;
  v33 = *(v2 + 16);
  v34 = MEMORY[0x277D83B88];
  v35 = MEMORY[0x277D83C10];
  *(v32 + 56) = MEMORY[0x277D83B88];
  *(v32 + 64) = v35;
  *(v32 + 32) = v33;
  v36 = v19[2];
  *(v32 + 96) = v34;
  *(v32 + 104) = v35;
  *(v32 + 72) = v36;
  sub_219BF6214();
  sub_219BE5314();

  v37 = sub_218B89158(a2, v19);

  return v37;
}

uint64_t sub_218B89158(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2[2])
  {
    v9 = a2[5];
    v28 = a2[4];
    v10 = v28;
    sub_218B8B244(0, qword_280EDCF70, type metadata accessor for TodayFeedPool, MEMORY[0x277D83D88]);

    v27 = sub_219BE3204();
    v32 = type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter;
    sub_218B8B520(v2, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);
    v30 = v2;
    v11 = a1;
    v12 = *(v6 + 80);
    v13 = (v12 + 16) & ~v12;
    v31 = v7 + 7;
    v14 = (v7 + 7 + v13) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    v29 = type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter;
    sub_218B8B588(v8, v15 + v13, type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);
    v16 = (v15 + v14);
    *v16 = v10;
    v16[1] = v9;
    *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v11;

    v17 = sub_219BE2E54();
    type metadata accessor for LocalNewsTodayFeedGroup();
    sub_219BE2F64();

    *(swift_allocObject() + 16) = a2;

    v18 = sub_219BE2E54();
    sub_218B8B124(0);
    sub_219BE2F74();

    sub_218B8B520(v30, v8, v32);
    v19 = (v12 + 32) & ~v12;
    v20 = (v31 + v19) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = v29;
    *(v21 + 16) = v28;
    *(v21 + 24) = v9;
    sub_218B8B588(v8, v21 + v19, v22);
    *(v21 + v20) = v11;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;

    v23 = sub_219BE2E54();
    v24 = sub_219BE3054();

    return v24;
  }

  else
  {
    sub_218B8B414();
    swift_allocError();
    *v26 = 0;
    sub_218B8B244(0, &qword_280EE6C60, sub_218B8B124, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_218B89528()
{
  type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for TodayFeedGroup();
  sub_218B8B16C();
  return sub_219BEF194();
}

uint64_t sub_218B895EC(uint64_t a1)
{
  v2 = type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 28)), *(a1 + *(v2 + 28) + 24));
  return sub_2193C4AC4();
}

uint64_t sub_218B89634(uint64_t *a1)
{
  v2 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_2186DF3DC();
  sub_219BEDD14();
  v7 = *&v5[*(v3 + 36)];

  sub_2187362E8(v5, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v30 = v7;
  sub_218B8BE78(0, &qword_280E8F400, &type metadata for LocalNewsTodayFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
  sub_218B8BDA8();
  sub_218B8BE24();
  v8 = sub_219BF56C4();

  v10 = *(v6 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v6 + 40;
    v29 = v10 - 1;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v14 = (v12 + 16 * v11);
      v15 = v11;
      while (1)
      {
        if (v15 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        if (*(v8 + 16))
        {
          break;
        }

LABEL_4:
        ++v15;
        v14 += 2;
        if (v10 == v15)
        {
          goto LABEL_16;
        }
      }

      v16 = *(v14 - 1);
      v17 = *v14;

      v18 = sub_21870F700(v16, v17);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v28 = v12;
      v20 = (*(v8 + 56) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];

      result = swift_isUniquelyReferenced_nonNull_native();
      v27 = v21;
      if ((result & 1) == 0)
      {
        result = sub_2191F7D64(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_2191F7D64((v23 > 1), v24 + 1, 1, v13);
        v13 = result;
      }

      v11 = v15 + 1;
      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v27;
      *(v25 + 40) = v22;
      v12 = v28;
      if (v29 == v15)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_16:

  v30 = v13;
  sub_218B8BE78(0, &unk_280EE6FC8, &type metadata for LocalNewsTodayFeedGroupEmitterCursor, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218B898E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a3;
  v107 = a4;
  sub_2186DF3DC();
  v111 = v6;
  v99 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v98 = v7;
  v108 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
  v96 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = v9;
  v117 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_218B8B244(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v100 = v81 - v12;
  sub_218B8B244(0, &qword_280E90150, MEMORY[0x277D33EC8], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v81 - v14;
  sub_218B8B244(0, &unk_280E91A10, sub_2189AE994, v10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v81 - v17;
  v19 = sub_219BF2AB4();
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v103 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v21;
  MEMORY[0x28223BE20](v20);
  v112 = v81 - v22;
  v23 = type metadata accessor for TodayFeedServiceContext();
  v92 = *(v23 - 8);
  v24 = *(v92 + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v93 = v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = (v81 - v26);
  v116 = sub_219BF0BD4();
  v104 = *(v116 - 8);
  v28 = MEMORY[0x28223BE20](v116);
  v114 = v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v29;
  MEMORY[0x28223BE20](v28);
  v31 = v81 - v30;
  v32 = *a1;
  if (*a1)
  {
    v95 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
  }

  else
  {
    v95 = MEMORY[0x277D84FA0];
  }

  v94 = sub_218B8A638(v32);
  v33 = type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter();
  v90 = __swift_project_boxed_opaque_existential_1((a2 + *(v33 + 24)), *(a2 + *(v33 + 24) + 24));
  v34 = a2 + *(v33 + 20);
  v115 = v31;
  sub_219BEF134();
  sub_219BEF0B4();
  sub_218B8B520(v120 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v27, type metadata accessor for TodayFeedServiceContext);

  sub_219BEF0B4();
  v113 = *(v119 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  sub_2189AE994(0);
  v36 = v35;
  v37 = *(v35 - 8);
  v91 = a2;
  v38 = v37;
  v39 = *(v37 + 16);
  v101 = v34;
  v39(v18, v34, v35);
  (*(v38 + 56))(v18, 0, 1, v36);
  v40 = sub_219BF35D4();
  (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
  v118 = 2;
  sub_218B8B034(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v41 = sub_219BF2774();
  (*(*(v41 - 8) + 56))(v100, 1, 1, v41);
  v42 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v42 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  v43 = sub_219BF2A84();
  v100 = *v90;
  MEMORY[0x28223BE20](v43);
  v44 = v106;
  v45 = v107;
  v81[1] = sub_219BE3204();
  v46 = v93;
  sub_218B8B520(v27, v93, type metadata accessor for TodayFeedServiceContext);
  v82 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs;
  v47 = v117;
  sub_218B8B520(v101, v117, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
  v48 = v104;
  v90 = v27;
  v84 = *(v104 + 16);
  v85 = v104 + 16;
  v84(v114, v115, v116);
  v49 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v83 = v96[80];
  v50 = (v24 + v83 + v49) & ~v83;
  v89 = *(v48 + 80);
  v51 = (v105 + v89 + v50) & ~v89;
  v92 = v83 | v89;
  v52 = (v102 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v45;
  v55 = v53;
  *(v53 + 16) = v44;
  *(v53 + 24) = v54;
  sub_218B8B588(v46, v53 + v49, type metadata accessor for TodayFeedServiceContext);
  v87 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs;
  sub_218B8B588(v47, v55 + v50, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
  v56 = *(v48 + 32);
  v93 = v48 + 32;
  v96 = v56;
  v57 = v114;
  v58 = v116;
  (v56)(v55 + v51, v114, v116);
  *(v55 + v52) = v113;
  swift_unknownObjectRetain();

  v59 = sub_219BE2E54();
  sub_218B8B75C();
  v88 = type metadata accessor for LocalNewsTodayFeedGroupService();
  v86 = sub_219BE2F84();

  v60 = v99;
  (*(v99 + 16))(v108, v91, v111);
  sub_218B8B520(v101, v117, v82);
  v61 = v109;
  (*(v109 + 16))(v103, v112, v110);
  v84(v57, v115, v58);
  v62 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v63 = (v98 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v83 + v64 + 16) & ~v83;
  v66 = (v105 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = (*(v61 + 80) + v67 + 8) & ~*(v61 + 80);
  v105 = (v97 + v89 + v68) & ~v89;
  v69 = swift_allocObject();
  (*(v60 + 32))(v69 + v62, v108, v111);
  *(v69 + v63) = v95;
  v70 = (v69 + v64);
  v72 = v106;
  v71 = v107;
  *v70 = v106;
  v70[1] = v71;
  sub_218B8B588(v117, v69 + v65, v87);
  *(v69 + v66) = v94;
  *(v69 + v67) = v113;
  v74 = v109;
  v73 = v110;
  (*(v109 + 32))(v69 + v68, v103, v110);
  v75 = v116;
  (v96)(v69 + v105, v114, v116);
  swift_unknownObjectRetain();

  v76 = sub_219BE2E54();
  type metadata accessor for LocalNewsTodayFeedGroup();
  sub_219BE2F84();

  v77 = swift_allocObject();
  *(v77 + 16) = v72;
  *(v77 + 24) = v71;

  v78 = sub_219BE2E54();
  v79 = sub_219BE2FD4();
  swift_unknownObjectRelease();

  (*(v74 + 8))(v112, v73);
  sub_2187362E8(v90, type metadata accessor for TodayFeedServiceContext);
  (*(v104 + 8))(v115, v75);
  return v79;
}

char *sub_218B8A638(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84FA0];
  }

  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_13:
    v14 = sub_218845F78(v3);

    return v14;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v15;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CECE0F0](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      v7 = [v6 identifier];
      v8 = sub_219BF5414();
      v10 = v9;
      swift_unknownObjectRelease();

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21870B65C((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v12 + 1;
      v13 = v15 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v2 != v5);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_218B8A7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4 >= 2)
  {
    v6 = (2 * v4) | 1;

    sub_218B66968(v8, a2 + 32, 1, v6);
    sub_218B8BE78(0, &unk_280E92658, &type metadata for LocalNewsTodayFeedGroupEmitterCursor, MEMORY[0x277D31C10]);
    v10 = v9;
    swift_allocObject();
    v11 = sub_219BED754();
    sub_218B8B468();
    v13 = (a3 + *(v12 + 48));
    sub_218B8B520(a1, a3, type metadata accessor for LocalNewsTodayFeedGroup);
    type metadata accessor for TodayFeedGroup();
    swift_storeEnumTagMultiPayload();
    v13[3] = v10;

    *v13 = v11;
  }

  else
  {
    sub_218B8B520(a1, a3, type metadata accessor for LocalNewsTodayFeedGroup);
    type metadata accessor for TodayFeedGroup();
    swift_storeEnumTagMultiPayload();
  }

  sub_218B8B124(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218B8A940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2186FC3BC();
  *(v10 + 64) = v12;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  sub_2186CFDE4(0, &qword_280E8B580);

  sub_219BF7484();
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  v13 = *(a6 + 16);
  if (v13)
  {
    sub_218B66968(a6, a6 + 32, 1, (2 * v13) | 1);
    a6 = v16;
  }

  else
  {
  }

  v14 = sub_218B89158(a5, a6);

  return v14;
}

uint64_t sub_218B8AB00@<X0>(uint64_t a1@<X8>)
{
  sub_2186DF3DC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218B8AB80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
  a2[4] = sub_2186DF6AC(&qword_280EE2D40, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
  a2[5] = sub_2186DF6AC(&qword_27CC0E8A8, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218B8B520(v2 + v4, boxed_opaque_existential_1, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
}

uint64_t sub_218B8AC9C()
{
  sub_2186DF3DC();

  return sub_219BEDCA4();
}

uint64_t sub_218B8ACC8@<X0>(uint64_t *a1@<X8>)
{
  sub_218B8B244(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186DF3DC();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2187362E8(inited + 32, sub_2188317B0);
  sub_218B8B244(0, &qword_27CC0E8B0, type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_218B8BEC8();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218B8AE4C()
{
  sub_2186DF6AC(&unk_27CC0E880, type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_218B8B034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_218B8B244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218B8B2A8(uint64_t *a1)
{
  v3 = *(type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_218B898E8(a1, v1 + v4, *v5, v5[1]);
}

uint64_t sub_218B8B36C(uint64_t a1)
{
  v3 = *(type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_218B8A940(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_218B8B414()
{
  result = qword_27CC0E898;
  if (!qword_27CC0E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E898);
  }

  return result;
}

void sub_218B8B468()
{
  if (!qword_280EDB680[0])
  {
    type metadata accessor for TodayFeedGroup();
    sub_218B8BE78(255, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280EDB680);
    }
  }
}

uint64_t sub_218B8B520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B8B588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B8B5F0(_BYTE *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TodayFeedServiceContext() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_219BF0BD4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  return sub_218CFDBD8(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, v2 + v9, v2 + v12, *(v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218B8B75C()
{
  if (!qword_280E8DBB0)
  {
    sub_218B8B7FC();
    sub_218B8B244(255, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8DBB0);
    }
  }
}

unint64_t sub_218B8B7FC()
{
  result = qword_280E8DBC0;
  if (!qword_280E8DBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DBC0);
  }

  return result;
}

id sub_218B8B848(uint64_t a1, uint64_t a2)
{
  sub_2186DF3DC();
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_219BF2AB4() - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_219BF0BD4() - 8);
  return sub_218CFE37C(a1, a2, (v2 + v4), *(v2 + v5), *(v2 + v6), *(v2 + v6 + 8), v2 + v8, *(v2 + v9), *(v2 + v10), v2 + v12, (v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80))));
}

uint64_t sub_218B8BA34()
{
  v1 = *(type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_218B888B8(v2);
}

uint64_t sub_218B8BA94(uint64_t a1)
{
  sub_218B8B244(0, &unk_280EE6660, MEMORY[0x277D31550], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_3Tm_2()
{
  v1 = (type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186DF3DC();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AE994(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() + 20);
  sub_218B8B034(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);

  return swift_deallocObject();
}

unint64_t sub_218B8BDA8()
{
  result = qword_280E8F3E8;
  if (!qword_280E8F3E8)
  {
    sub_218B8BE78(255, &qword_280E8F400, &type metadata for LocalNewsTodayFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F3E8);
  }

  return result;
}

unint64_t sub_218B8BE24()
{
  result = qword_280EE15B0;
  if (!qword_280EE15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE15B0);
  }

  return result;
}

void sub_218B8BE78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_218B8BEC8()
{
  result = qword_27CC0E8B8;
  if (!qword_27CC0E8B8)
  {
    sub_218B8B244(255, &qword_27CC0E8B0, type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E8B8);
  }

  return result;
}

unint64_t sub_218B8BF64()
{
  result = qword_27CC0E8C0;
  if (!qword_27CC0E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E8C0);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_218B8BFE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_218B8C02C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218B8C0A0()
{
  v1 = [*v0 identifier];
  v2 = sub_219BF5414();

  return v2;
}

uint64_t sub_218B8C0F8(id *a1, id *a2)
{
  v3 = [*a1 identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  v7 = [*a2 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_219BF78F4();
  }

  return v12 & 1;
}

uint64_t sub_218B8C1CC()
{
  v1 = v0;
  v2 = _s8ResolvedVMa();
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Shortcut();
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B8CB24(v1, v7, type metadata accessor for Shortcut);
  if (swift_getEnumCaseMultiPayload())
  {
    v8 = [*v7 identifier];
    v9 = sub_219BF5414();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_218B8C6EC(v7, v4);
    v9 = *&v4[*(v2 + 24)];

    sub_218B8CB8C(v4, _s8ResolvedVMa);
  }

  return v9;
}

uint64_t sub_218B8C36C()
{
  v1 = type metadata accessor for ShortcutCategory();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s8ResolvedVMa();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Shortcut();
  MEMORY[0x28223BE20](v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B8CB24(v0, v9, type metadata accessor for Shortcut);
  if (swift_getEnumCaseMultiPayload())
  {
    v10 = *v9;
    v11 = [*v9 asSports];
    if (v11 && (v12 = [v11 sportsSecondaryShortName], swift_unknownObjectRelease(), v12))
    {
      v13 = sub_219BF5414();
      v15 = v14;

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();

      sub_2186F20D4();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_219C09EC0;
      v19 = [v10 displayName];
      v20 = sub_219BF5414();
      v22 = v21;

      v23 = MEMORY[0x277D837D0];
      *(v18 + 56) = MEMORY[0x277D837D0];
      v24 = sub_2186FC3BC();
      *(v18 + 32) = v20;
      *(v18 + 40) = v22;
      *(v18 + 96) = v23;
      *(v18 + 104) = v24;
      *(v18 + 64) = v24;
      *(v18 + 72) = v13;
      *(v18 + 80) = v15;
      swift_unknownObjectRelease();
      v25 = sub_219BF5454();
    }

    else
    {
      v26 = [v10 displayName];
      v25 = sub_219BF5414();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_218B8C6EC(v9, v6);
    sub_218B8CB24(v6, v3, type metadata accessor for ShortcutCategory);
    sub_218B8CB8C(v6, _s8ResolvedVMa);
    v25 = *v3;

    sub_218B8CB8C(v3, type metadata accessor for ShortcutCategory);
  }

  return v25;
}

uint64_t sub_218B8C6EC(uint64_t a1, uint64_t a2)
{
  v4 = _s8ResolvedVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B8C750(uint64_t a1, uint64_t a2)
{
  v4 = _s8ResolvedVMa();
  MEMORY[0x28223BE20](v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v34 - v8);
  sub_218B8CAC0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v13 + 56);
  sub_218B8CB24(a1, v12, type metadata accessor for Shortcut);
  sub_218B8CB24(a2, v12 + v14, type metadata accessor for Shortcut);
  type metadata accessor for Shortcut();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v12;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v16 = *v12;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_8:
        v17 = *(v12 + v14);
        v18 = [v16 identifier];
        v19 = sub_219BF5414();
        v21 = v20;

        v22 = [v17 identifier];
        v23 = sub_219BF5414();
        v25 = v24;

        if (v19 == v23 && v21 == v25)
        {
          v27 = 1;
        }

        else
        {
          v27 = sub_219BF78F4();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v27 & 1;
      }
    }

    swift_unknownObjectRelease();
LABEL_14:
    sub_218B8CB8C(v12 + v14, type metadata accessor for Shortcut);
    v27 = 0;
    return v27 & 1;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_218B8CB8C(v12, _s8ResolvedVMa);
    goto LABEL_14;
  }

  sub_218B8C6EC(v12, v9);
  sub_218B8C6EC(v12 + v14, v6);
  if (_s7NewsUI216ShortcutCategoryV2eeoiySbAC_ACtFZ_0(v9, v6) && (sub_2199343CC(v9 + *(v4 + 20), v6 + *(v4 + 20)) & 1) != 0)
  {
    v28 = *(v4 + 24);
    v29 = *(v9 + v28);
    v30 = *(v9 + v28 + 8);
    v31 = (v6 + v28);
    if (v29 == *v31 && v30 == v31[1])
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_219BF78F4();
    }
  }

  else
  {
    v27 = 0;
  }

  sub_218B8CB8C(v6, _s8ResolvedVMa);
  sub_218B8CB8C(v9, _s8ResolvedVMa);
  return v27 & 1;
}

void sub_218B8CAC0()
{
  if (!qword_27CC0E8D0)
  {
    type metadata accessor for Shortcut();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0E8D0);
    }
  }
}

uint64_t sub_218B8CB24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B8CB8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B8CBEC()
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v38 = *(v0 - 8);
  v1 = *(v38 + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - v4;
  v6 = sub_219BE22B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE22F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747C64(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v11 + 8))(v13, v10);
  v14 = sub_219BE22C4();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  if (v16)
  {
    if (v14 == 0x65736C6166 && v16 == 0xE500000000000000)
    {

      v19 = v5;
    }

    else
    {
      v18 = sub_219BF78F4();

      v19 = v5;
      if ((v18 & 1) == 0)
      {
        v20 = 1;
        goto LABEL_11;
      }
    }

    v20 = 0;
  }

  else
  {
    v20 = 1;
    v19 = v5;
  }

LABEL_11:
  v21 = *(v37 + 24);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = v22 | 0x7000000000000006;
  v24 = sub_219BDFA44();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = v21;
  sub_2187B15C0(v45, &v40, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v41 + 1))
  {
    sub_21875F93C(&v40, v42);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v26 = qword_280ED32D8;
    v25 = qword_280ED32E0;
    v27 = qword_280ED32E8;

    sub_2188202A8(v25);
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    sub_2187449F0(&v40, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v26 = qword_280ED32D8;
    v25 = qword_280ED32E0;
    v27 = qword_280ED32E8;

    sub_2188202A8(v25);
  }

  v39 = v23;
  v41 = 0u;
  v40 = 0u;
  sub_2187B15C0(v19, v3, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
  sub_2187B15C0(v47, v42, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v28 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v29 = (v1 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = v19;
  v30 = (v29 + 47) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  sub_2189B4EAC(v3, v31 + v28);
  v32 = v31 + v29;
  v33 = v42[1];
  *v32 = v42[0];
  *(v32 + 16) = v33;
  *(v32 + 32) = v43;
  v34 = (v31 + v30);
  v35 = (v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v34 = 0;
  v34[1] = 0;
  *v35 = v26;
  v35[1] = v25;
  v35[2] = v27;

  sub_2188202A8(v25);
  sub_2186CF94C();
  sub_218B8D588(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v25);
  sub_2187449F0(v45, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187449F0(v47, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_2187449F0(v38, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
  sub_2187449F0(&v40, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return 1;
}

uint64_t sub_218B8D588(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for SubscriptionTodayFeedGroupKnobs()
{
  result = qword_280EA7B28;
  if (!qword_280EA7B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B8D644()
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
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_218B8D700@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  sub_2189AE9B4(0);
  v73 = v3;
  v71 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v68 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for SubscriptionTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v69);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = v55 - v13;
  sub_2189AF720(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v74 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = v55 - v17;
  sub_218B8E660(0, &qword_280E8CA80, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = v55 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B8E60C();
  v23 = v75;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v58 = v12;
  v60 = 0;
  v61 = v20;
  v62 = a1;
  v63 = v8;
  LOBYTE(v81) = 0;
  sub_2186DF998(&qword_280E91A28, sub_2189AE994);
  v25 = v72;
  v26 = v66;
  sub_219BF7674();
  LOBYTE(v81) = 1;
  sub_2186DF998(&qword_280E91868, sub_2189AE9B4);
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v80) = 2;
  sub_2186DF998(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v57 = v81;
  LOBYTE(v79) = 3;
  sub_219BF7674();
  v56 = v80;
  LOBYTE(v78) = 4;
  sub_219BF7674();
  v64 = v79;
  sub_2186ECA28();
  v28 = v27;
  LOBYTE(v77) = 5;
  sub_2186DF998(&qword_280E913D8, sub_2186ECA28);
  v29 = v19;
  v55[1] = v28;
  sub_219BF7674();
  v75 = v78;
  v30 = v74;
  sub_2189AF794(v25, v74, sub_2189AF720);
  v31 = v65;
  v32 = *(v65 + 48);
  v33 = v32(v30, 1, v26);
  v59 = v22;
  if (v33 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF998(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v34 = v67;
    sub_219BEE974();
    v35 = v32(v74, 1, v26);
    v36 = v71;
    if (v35 != 1)
    {
      sub_2189AF7FC(v74, sub_2189AF720);
    }
  }

  else
  {
    v34 = v67;
    (*(v31 + 32))(v67, v74, v26);
    v36 = v71;
  }

  v37 = v63;
  (*(v31 + 32))(v63, v34, v26);
  v38 = v58;
  sub_2189AF794(v76, v58, sub_2189AF700);
  v39 = *(v36 + 48);
  v40 = v73;
  v41 = v39(v38, 1, v73);
  v74 = v29;
  if (v41 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF998(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v42 = v68;
    v36 = v71;
    sub_219BEEC74();
    v43 = v39(v38, 1, v40);
    v44 = v70;
    v45 = v72;
    if (v43 != 1)
    {
      sub_2189AF7FC(v38, sub_2189AF700);
    }
  }

  else
  {
    v42 = v68;
    (*(v36 + 32))(v68, v38, v40);
    v44 = v70;
    v45 = v72;
  }

  v46 = v69;
  (*(v36 + 32))(v37 + *(v69 + 20), v42, v40);
  v47 = v61;
  if (v57)
  {
    v48 = v57;
  }

  else
  {
    v77 = 30;
    swift_allocObject();
    v48 = sub_219BEF534();
  }

  v49 = v56;
  *(v37 + v46[6]) = v48;
  v50 = v75;
  v51 = v64;
  if (v49)
  {

    v52 = v49;
  }

  else
  {
    v77 = 3;
    swift_allocObject();

    v52 = sub_219BEF534();
    v51 = v64;
    v50 = v75;
  }

  *(v37 + v46[7]) = v52;
  if (v51)
  {
  }

  else
  {
    v77 = 5;
    swift_allocObject();

    v53 = sub_219BEF534();
    v50 = v75;
    v51 = v53;
  }

  v54 = v62;
  *(v37 + v46[8]) = v51;
  if (!v50)
  {
    v77 = 0x41446F4000000000;
    swift_allocObject();
    v50 = sub_219BEF534();
  }

  sub_2189AF7FC(v76, sub_2189AF700);
  sub_2189AF7FC(v45, sub_2189AF720);
  (*(v47 + 8))(v59, v74);
  *(v37 + v46[9]) = v50;
  sub_218B8E6C4(v37, v44);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_218B8E0E8(void *a1)
{
  v3 = v1;
  sub_218B8E660(0, &qword_280E8C370, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B8E60C();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AE994(0);
  sub_2186DF998(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SubscriptionTodayFeedGroupKnobs();
    LOBYTE(v14) = 1;
    sub_2189AE9B4(0);
    sub_2186DF998(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_2186F9548();
    sub_2186DF998(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_2186ECA28();
    sub_2186DF998(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218B8E478()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0xD000000000000010;
  v4 = 0x6E69576863746566;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 == 1)
  {
    v5 = 0x6C6F6F706572;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_218B8E53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218B8E840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218B8E564(uint64_t a1)
{
  v2 = sub_218B8E60C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B8E5A0(uint64_t a1)
{
  v2 = sub_218B8E60C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218B8E60C()
{
  result = qword_280EA7B58[0];
  if (!qword_280EA7B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA7B58);
  }

  return result;
}

void sub_218B8E660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218B8E60C();
    v7 = a3(a1, &type metadata for SubscriptionTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218B8E6C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionTodayFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218B8E73C()
{
  result = qword_27CC0E8D8;
  if (!qword_27CC0E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E8D8);
  }

  return result;
}

unint64_t sub_218B8E794()
{
  result = qword_280EA7B48;
  if (!qword_280EA7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7B48);
  }

  return result;
}

unint64_t sub_218B8E7EC()
{
  result = qword_280EA7B50;
  if (!qword_280EA7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7B50);
  }

  return result;
}

uint64_t sub_218B8E840(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000012 && 0x8000000219CE9C20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64)
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

uint64_t sub_218B8EA70(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_219BF74F4();

    if (v2)
    {
      type metadata accessor for SportsScores();
      swift_dynamicCast();
      return v5;
    }
  }

  else if (*(a2 + 16))
  {
    sub_21931ED80(a1);
    if (v4)
    {
    }
  }

  return 0;
}

void *sub_218B8EB24(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_219BF74F4();

    if (v6)
    {
      sub_2186C6148(0, a4);
      swift_dynamicCast();
      return v13;
    }
  }

  else if (*(a2 + 16))
  {
    v9 = a3();
    if (v10)
    {
      v11 = *(*(a2 + 56) + 8 * v9);
      v12 = v11;
      return v11;
    }
  }

  return 0;
}

unint64_t sub_218B8EC48(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x4364656761676E65;
    v7 = 0xD000000000000011;
    if (a1 == 10)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000025;
    v9 = 0xD000000000000012;
    if (a1 != 7)
    {
      v9 = 0xD00000000000001BLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4372656767697274;
    v2 = 0xD00000000000001ELL;
    v3 = 0xD000000000000023;
    if (a1 != 4)
    {
      v3 = 0xD000000000000024;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001DLL;
    if (a1 == 1)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_218B8EDF0(void *a1)
{
  v3 = v1;
  sub_218B9F524(0, &qword_280E8C4F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B9F330();
  sub_219BF7B44();
  v12 = *v3;
  HIBYTE(v11) = 0;
  sub_218742A78(0, &qword_280E8FAE0, MEMORY[0x277D834F8]);
  sub_218B9F588();
  sub_219BF7834();
  if (!v2)
  {
    v12 = v3[1];
    HIBYTE(v11) = 1;
    sub_218742B58(0, &qword_280E8FC20, MEMORY[0x277CC9578], MEMORY[0x277D834F8]);
    sub_218B9F6C0();
    sub_219BF7834();
    v12 = v3[2];
    HIBYTE(v11) = 2;
    sub_219BF7834();
    v12 = v3[3];
    HIBYTE(v11) = 3;
    sub_219BF7834();
    v12 = v3[4];
    HIBYTE(v11) = 4;
    sub_219BF7834();
    v12 = v3[5];
    HIBYTE(v11) = 5;
    sub_219BF7834();
    v12 = v3[6];
    HIBYTE(v11) = 6;
    sub_219BF7834();
    v12 = v3[7];
    HIBYTE(v11) = 7;
    sub_218742B00(0, &qword_280E8FAC8);
    sub_218B9F7EC(&unk_280E8FAB8);
    sub_219BF7834();
    v12 = v3[8];
    HIBYTE(v11) = 8;
    sub_219BF7834();
    v12 = v3[9];
    HIBYTE(v11) = 9;
    sub_2186E2394();
    sub_218B9F868(&unk_280E8E9D0);
    sub_219BF7834();
    type metadata accessor for ChannelUpsellTriggerRecord();
    LOBYTE(v12) = 10;
    sub_219BDBD34();
    sub_218B9F7A4(&qword_280EE9CA0, 255, MEMORY[0x277CC9578]);
    sub_219BF77E4();
    LOBYTE(v12) = 11;
    sub_219BF7824();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218B8F2EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_2186DD120(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = v22 - v4;
  sub_218B9F524(0, &qword_280E8CD20, MEMORY[0x277D844C8]);
  v27 = v5;
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = type metadata accessor for ChannelUpsellTriggerRecord();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84F98];
  *v11 = MEMORY[0x277D84F98];
  *(v11 + 1) = v12;
  *(v11 + 2) = v12;
  *(v11 + 3) = v12;
  *(v11 + 4) = v12;
  *(v11 + 5) = v12;
  *(v11 + 6) = v12;
  *(v11 + 7) = v12;
  v13 = MEMORY[0x277D84FA0];
  *(v11 + 8) = v12;
  *(v11 + 9) = v13;
  v14 = *(v9 + 64);
  v15 = sub_219BDBD34();
  (*(*(v15 - 8) + 56))(&v11[v14], 1, 1, v15);
  v16 = *(v9 + 68);
  *&v11[v16] = 0;
  v17 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_218B9F330();
  v26 = v7;
  v18 = v28;
  sub_219BF7B34();
  if (!v18)
  {
    v28 = v16;
    sub_218742A78(0, &qword_280E8FAE0, MEMORY[0x277D834F8]);
    v30 = 0;
    sub_218B9F384();
    sub_219BF7734();
    *v11 = v31;
    sub_218742B58(0, &qword_280E8FC20, MEMORY[0x277CC9578], MEMORY[0x277D834F8]);
    v30 = 1;
    v19 = sub_218B9F440();
    sub_219BF7734();
    *(v11 + 1) = v31;
    v30 = 2;
    sub_219BF7734();
    *(v11 + 2) = v31;
    v30 = 3;
    sub_219BF7734();
    *(v11 + 3) = v31;
    v30 = 4;
    sub_219BF7734();
    *(v11 + 4) = v31;
    v30 = 5;
    sub_219BF7734();
    *(v11 + 5) = v31;
    v30 = 6;
    sub_219BF7734();
    v22[1] = v19;
    *(v11 + 6) = v31;
    sub_218742B00(0, &qword_280E8FAC8);
    v30 = 7;
    sub_218B9F7EC(&qword_280E8FAB0);
    sub_219BF7734();
    *(v11 + 7) = v31;
    v30 = 8;
    sub_219BF7734();
    *(v11 + 8) = v31;
    sub_2186E2394();
    v30 = 9;
    sub_218B9F868(&qword_280E8E9B8);
    sub_219BF7734();
    *(v11 + 9) = v31;
    LOBYTE(v31) = 10;
    sub_218B9F7A4(&unk_280EE9C70, 255, MEMORY[0x277CC9578]);
    sub_219BF76E4();
    sub_218B9E4D4(v24, &v11[v14]);
    LOBYTE(v31) = 11;
    v21 = sub_219BF7724();
    (*(v25 + 8))(v26, v27);
    *&v11[v28] = v21;
    sub_218B9D828(v11, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_218B9E6C8(v11, type metadata accessor for ChannelUpsellTriggerRecord);
}

uint64_t sub_218B8F9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218B9E728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218B8F9EC(uint64_t a1)
{
  v2 = sub_218B9F330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B8FA28(uint64_t a1)
{
  v2 = sub_218B9F330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218B8FA94()
{
  sub_2186DD120(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v228 = &v227 - v2;
  sub_218B9D88C();
  v246 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v236 = &v227 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v237 = &v227 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v238 = &v227 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v239 = &v227 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v240 = &v227 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v241 = &v227 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v245 = (&v227 - v17);
  MEMORY[0x28223BE20](v16);
  v242 = &v227 - v18;
  v250 = 0;
  v251 = 0xE000000000000000;
  v244 = v0;
  v19 = *v0;
  if (*(*v0 + 16))
  {
    MEMORY[0x21CECC330](0xD000000000000010, 0x8000000219CE9F00);
    v20 = v19 + 64;
    v21 = 1 << *(v19 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v19 + 64);
    v24 = (v21 + 63) >> 6;
    v232 = 0x8000000219CE9CA0;
    v233 = 0x8000000219CE9C80;
    v231 = 0x8000000219CE9CC0;
    v230 = 0x8000000219CE9CE0;
    v229 = 0x8000000219CE9C60;

    v26 = 0;
    v234 = v24;
    v235 = v19 + 64;
    v243 = v19;
LABEL_7:
    if (!v23)
    {
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_151;
        }

        if (v27 >= v24)
        {

          MEMORY[0x21CECC330](10, 0xE100000000000000);
          goto LABEL_36;
        }

        v23 = *(v20 + 8 * v27);
        ++v26;
        if (v23)
        {
          goto LABEL_12;
        }
      }
    }

    v27 = v26;
LABEL_12:
    v28 = __clz(__rbit64(v23)) | (v27 << 6);
    v29 = (*(v19 + 48) + 16 * v28);
    v30 = v29[1];
    v31 = *(*(v19 + 56) + 8 * v28);
    v23 &= v23 - 1;
    v248 = *v29;
    v249 = v30;
    swift_bridgeObjectRetain_n();

    MEMORY[0x21CECC330](663610, 0xE300000000000000);
    MEMORY[0x21CECC330](v248, v249);

    v32 = 0;
    v33 = 1 << *(v31 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v31 + 64);
    v36 = (v33 + 63) >> 6;
    while (v35)
    {
LABEL_23:
      v41 = (v32 << 9) | (8 * __clz(__rbit64(v35)));
      v42 = *(*(v31 + 48) + v41);
      v43 = *(*(v31 + 56) + v41);
      v248 = 0;
      v249 = 0xE000000000000000;
      v38 = 0xE700000000000000;
      if (v42 > 3)
      {
        if (v42 == 4)
        {
          v37 = 0xD000000000000013;
          v38 = v232;
        }

        else if (v42 == 5)
        {
          v37 = 0xD000000000000014;
          v38 = v233;
        }

        else
        {
          v37 = 0x6E776F6E6B6E55;
          if (v42 == 6)
          {
            v37 = 0xD000000000000014;
            v38 = v229;
          }
        }
      }

      else if (v42 == 1)
      {
        v37 = 0x6C6F462064726148;
        v38 = 0xEB00000000776F6CLL;
      }

      else if (v42 == 2)
      {
        v37 = 0xD000000000000012;
        v38 = v230;
      }

      else
      {
        v37 = 0x6E776F6E6B6E55;
        if (v42 == 3)
        {
          v37 = 0xD000000000000012;
          v38 = v231;
        }
      }

      v35 &= v35 - 1;
      MEMORY[0x21CECC330](v37, v38);

      MEMORY[0x21CECC330](2112032, 0xE300000000000000);
      v247 = v43;
      v39 = sub_219BF7894();
      MEMORY[0x21CECC330](v39);

      MEMORY[0x21CECC330](v248, v249);
    }

    while (1)
    {
      v40 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v40 >= v36)
      {

        result = MEMORY[0x21CECC330](2570, 0xE200000000000000);
        v26 = v27;
        v19 = v243;
        v24 = v234;
        v20 = v235;
        goto LABEL_7;
      }

      v35 = *(v31 + 64 + 8 * v40);
      ++v32;
      if (v35)
      {
        v32 = v40;
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_149;
  }

LABEL_36:
  v44 = v244[1];
  if (*(v44 + 16))
  {
    MEMORY[0x21CECC330](0xD000000000000020, 0x8000000219CE9F20);
    v45 = *(v44 + 64);
    v235 = v44 + 64;
    v46 = 1 << *(v44 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & v45;
    v234 = (v46 + 63) >> 6;
    v243 = v44;

    for (i = 0; v48; result = sub_218B9E6C8(v64, sub_218B9D88C))
    {
      v50 = i;
LABEL_45:
      v51 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v52 = v51 | (v50 << 6);
      v53 = *(v243 + 56);
      v54 = (*(v243 + 48) + 16 * v52);
      v56 = *v54;
      v55 = v54[1];
      v57 = sub_219BDBD34();
      v58 = *(v57 - 8);
      v59 = v53 + *(v58 + 72) * v52;
      v60 = v246;
      v61 = *(v246 + 48);
      v62 = v242;
      (*(v58 + 16))(&v242[v61], v59, v57);
      v63 = *(v60 + 48);
      v64 = v245;
      *v245 = v56;
      *(v64 + 8) = v55;
      (*(v58 + 32))(v64 + v63, &v62[v61], v57);
      v248 = v56;
      v249 = v55;
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CECC330](2112032, 0xE300000000000000);
      sub_218B9F7A4(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
      v65 = sub_219BF7894();
      MEMORY[0x21CECC330](v65);

      MEMORY[0x21CECC330](10, 0xE100000000000000);
      MEMORY[0x21CECC330](v248, v249);
    }

    while (1)
    {
      v50 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v50 >= v234)
      {

        MEMORY[0x21CECC330](10, 0xE100000000000000);
        goto LABEL_48;
      }

      v48 = *(v235 + 8 * v50);
      ++i;
      if (v48)
      {
        i = v50;
        goto LABEL_45;
      }
    }

LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    return result;
  }

LABEL_48:
  v66 = v244[4];
  if (*(v66 + 16))
  {
    MEMORY[0x21CECC330](0xD00000000000002BLL, 0x8000000219CE9F50);
    v67 = *(v66 + 64);
    v242 = (v66 + 64);
    v243 = v66;
    v68 = 1 << *(v66 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & v67;
    v235 = (v68 + 63) >> 6;

    for (j = 0; v70; result = sub_218B9E6C8(v86, sub_218B9D88C))
    {
      v72 = j;
LABEL_57:
      v73 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      v74 = v73 | (v72 << 6);
      v75 = *(v243 + 56);
      v76 = (*(v243 + 48) + 16 * v74);
      v78 = *v76;
      v77 = v76[1];
      v79 = sub_219BDBD34();
      v80 = *(v79 - 8);
      v81 = v75 + *(v80 + 72) * v74;
      v82 = v246;
      v83 = *(v246 + 48);
      v84 = v241;
      (*(v80 + 16))(&v241[v83], v81, v79);
      v85 = *(v82 + 48);
      v86 = v245;
      *v245 = v78;
      *(v86 + 8) = v77;
      (*(v80 + 32))(v86 + v85, &v84[v83], v79);
      v248 = v78;
      v249 = v77;
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CECC330](2112032, 0xE300000000000000);
      sub_218B9F7A4(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
      v87 = sub_219BF7894();
      MEMORY[0x21CECC330](v87);

      MEMORY[0x21CECC330](10, 0xE100000000000000);
      MEMORY[0x21CECC330](v248, v249);
    }

    while (1)
    {
      v72 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_150;
      }

      if (v72 >= v235)
      {

        MEMORY[0x21CECC330](10, 0xE100000000000000);
        break;
      }

      v70 = *&v242[8 * v72];
      ++j;
      if (v70)
      {
        j = v72;
        goto LABEL_57;
      }
    }
  }

  v88 = v244[2];
  if (*(v88 + 16))
  {
    MEMORY[0x21CECC330](0xD000000000000021, 0x8000000219CE9F80);
    v89 = *(v88 + 64);
    v242 = (v88 + 64);
    v243 = v88;
    v90 = 1 << *(v88 + 32);
    v91 = -1;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    v92 = v91 & v89;
    v241 = ((v90 + 63) >> 6);

    for (k = 0; v92; result = sub_218B9E6C8(v108, sub_218B9D88C))
    {
      v94 = k;
LABEL_69:
      v95 = __clz(__rbit64(v92));
      v92 &= v92 - 1;
      v96 = v95 | (v94 << 6);
      v97 = *(v243 + 56);
      v98 = (*(v243 + 48) + 16 * v96);
      v100 = *v98;
      v99 = v98[1];
      v101 = sub_219BDBD34();
      v102 = *(v101 - 8);
      v103 = v97 + *(v102 + 72) * v96;
      v104 = v246;
      v105 = *(v246 + 48);
      v106 = v240;
      (*(v102 + 16))(&v240[v105], v103, v101);
      v107 = *(v104 + 48);
      v108 = v245;
      *v245 = v100;
      *(v108 + 8) = v99;
      (*(v102 + 32))(v108 + v107, &v106[v105], v101);
      v248 = v100;
      v249 = v99;
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CECC330](2112032, 0xE300000000000000);
      sub_218B9F7A4(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
      v109 = sub_219BF7894();
      MEMORY[0x21CECC330](v109);

      MEMORY[0x21CECC330](10, 0xE100000000000000);
      MEMORY[0x21CECC330](v248, v249);
    }

    while (1)
    {
      v94 = k + 1;
      if (__OFADD__(k, 1))
      {
        goto LABEL_152;
      }

      if (v94 >= v241)
      {

        MEMORY[0x21CECC330](10, 0xE100000000000000);
        break;
      }

      v92 = *&v242[8 * v94];
      ++k;
      if (v92)
      {
        k = v94;
        goto LABEL_69;
      }
    }
  }

  v110 = v244[5];
  if (*(v110 + 16))
  {
    MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE9FB0);
    v111 = *(v110 + 64);
    v242 = (v110 + 64);
    v243 = v110;
    v112 = 1 << *(v110 + 32);
    v113 = -1;
    if (v112 < 64)
    {
      v113 = ~(-1 << v112);
    }

    v114 = v113 & v111;
    v241 = ((v112 + 63) >> 6);

    for (m = 0; v114; result = sub_218B9E6C8(v130, sub_218B9D88C))
    {
      v116 = m;
LABEL_81:
      v117 = __clz(__rbit64(v114));
      v114 &= v114 - 1;
      v118 = v117 | (v116 << 6);
      v119 = *(v243 + 56);
      v120 = (*(v243 + 48) + 16 * v118);
      v122 = *v120;
      v121 = v120[1];
      v123 = sub_219BDBD34();
      v124 = *(v123 - 8);
      v125 = v119 + *(v124 + 72) * v118;
      v126 = v246;
      v127 = *(v246 + 48);
      v128 = v239;
      (*(v124 + 16))(&v239[v127], v125, v123);
      v129 = *(v126 + 48);
      v130 = v245;
      *v245 = v122;
      *(v130 + 8) = v121;
      (*(v124 + 32))(v130 + v129, &v128[v127], v123);
      v248 = v122;
      v249 = v121;
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CECC330](2112032, 0xE300000000000000);
      sub_218B9F7A4(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
      v131 = sub_219BF7894();
      MEMORY[0x21CECC330](v131);

      MEMORY[0x21CECC330](10, 0xE100000000000000);
      MEMORY[0x21CECC330](v248, v249);
    }

    while (1)
    {
      v116 = m + 1;
      if (__OFADD__(m, 1))
      {
        goto LABEL_153;
      }

      if (v116 >= v241)
      {

        MEMORY[0x21CECC330](10, 0xE100000000000000);
        break;
      }

      v114 = *&v242[8 * v116];
      ++m;
      if (v114)
      {
        m = v116;
        goto LABEL_81;
      }
    }
  }

  v132 = v244[3];
  if (*(v132 + 16))
  {
    MEMORY[0x21CECC330](0xD000000000000022, 0x8000000219CE9FE0);
    v133 = *(v132 + 64);
    v242 = (v132 + 64);
    v243 = v132;
    v134 = 1 << *(v132 + 32);
    v135 = -1;
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    v136 = v135 & v133;
    v241 = ((v134 + 63) >> 6);

    for (n = 0; v136; result = sub_218B9E6C8(v152, sub_218B9D88C))
    {
      v138 = n;
LABEL_93:
      v139 = __clz(__rbit64(v136));
      v136 &= v136 - 1;
      v140 = v139 | (v138 << 6);
      v141 = *(v243 + 56);
      v142 = (*(v243 + 48) + 16 * v140);
      v144 = *v142;
      v143 = v142[1];
      v145 = sub_219BDBD34();
      v146 = *(v145 - 8);
      v147 = v141 + *(v146 + 72) * v140;
      v148 = v246;
      v149 = *(v246 + 48);
      v150 = v238;
      (*(v146 + 16))(&v238[v149], v147, v145);
      v151 = *(v148 + 48);
      v152 = v245;
      *v245 = v144;
      *(v152 + 8) = v143;
      (*(v146 + 32))(v152 + v151, &v150[v149], v145);
      v248 = v144;
      v249 = v143;
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CECC330](2112032, 0xE300000000000000);
      sub_218B9F7A4(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
      v153 = sub_219BF7894();
      MEMORY[0x21CECC330](v153);

      MEMORY[0x21CECC330](10, 0xE100000000000000);
      MEMORY[0x21CECC330](v248, v249);
    }

    while (1)
    {
      v138 = n + 1;
      if (__OFADD__(n, 1))
      {
        goto LABEL_154;
      }

      if (v138 >= v241)
      {

        MEMORY[0x21CECC330](10, 0xE100000000000000);
        break;
      }

      v136 = *&v242[8 * v138];
      ++n;
      if (v136)
      {
        n = v138;
        goto LABEL_93;
      }
    }
  }

  v154 = v244[6];
  if (*(v154 + 16))
  {
    MEMORY[0x21CECC330](0xD00000000000002DLL, 0x8000000219CEA010);
    v155 = *(v154 + 64);
    v242 = (v154 + 64);
    v243 = v154;
    v156 = 1 << *(v154 + 32);
    v157 = -1;
    if (v156 < 64)
    {
      v157 = ~(-1 << v156);
    }

    v158 = v157 & v155;
    v241 = ((v156 + 63) >> 6);

    for (ii = 0; v158; result = sub_218B9E6C8(v174, sub_218B9D88C))
    {
      v160 = ii;
LABEL_105:
      v161 = __clz(__rbit64(v158));
      v158 &= v158 - 1;
      v162 = v161 | (v160 << 6);
      v163 = *(v243 + 56);
      v164 = (*(v243 + 48) + 16 * v162);
      v166 = *v164;
      v165 = v164[1];
      v167 = sub_219BDBD34();
      v168 = *(v167 - 8);
      v169 = v163 + *(v168 + 72) * v162;
      v170 = v246;
      v171 = *(v246 + 48);
      v172 = v237;
      (*(v168 + 16))(&v237[v171], v169, v167);
      v173 = *(v170 + 48);
      v174 = v245;
      *v245 = v166;
      *(v174 + 8) = v165;
      (*(v168 + 32))(v174 + v173, &v172[v171], v167);
      v248 = v166;
      v249 = v165;
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CECC330](2112032, 0xE300000000000000);
      sub_218B9F7A4(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
      v175 = sub_219BF7894();
      MEMORY[0x21CECC330](v175);

      MEMORY[0x21CECC330](10, 0xE100000000000000);
      MEMORY[0x21CECC330](v248, v249);
    }

    while (1)
    {
      v160 = ii + 1;
      if (__OFADD__(ii, 1))
      {
        goto LABEL_155;
      }

      if (v160 >= v241)
      {

        MEMORY[0x21CECC330](10, 0xE100000000000000);
        break;
      }

      v158 = *&v242[8 * v160];
      ++ii;
      if (v158)
      {
        ii = v160;
        goto LABEL_105;
      }
    }
  }

  v176 = v244[7];
  if (*(v176 + 16))
  {
    MEMORY[0x21CECC330](0xD00000000000001CLL, 0x8000000219CEA040);
    v177 = 1 << *(v176 + 32);
    v178 = -1;
    if (v177 < 64)
    {
      v178 = ~(-1 << v177);
    }

    v179 = v178 & *(v176 + 64);
    v180 = (v177 + 63) >> 6;

    for (jj = 0; v179; result = )
    {
      v182 = jj;
LABEL_117:
      v183 = __clz(__rbit64(v179)) | (v182 << 6);
      v184 = (*(v176 + 48) + 16 * v183);
      v185 = v184[1];
      v186 = *(*(v176 + 56) + 8 * v183);
      v179 &= v179 - 1;
      v248 = *v184;
      v249 = v185;
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CECC330](2112032, 0xE300000000000000);
      v247 = v186;
      v187 = sub_219BF7894();
      MEMORY[0x21CECC330](v187);

      MEMORY[0x21CECC330](10, 0xE100000000000000);
      MEMORY[0x21CECC330](v248, v249);
    }

    while (1)
    {
      v182 = jj + 1;
      if (__OFADD__(jj, 1))
      {
        goto LABEL_156;
      }

      if (v182 >= v180)
      {

        MEMORY[0x21CECC330](10, 0xE100000000000000);
        break;
      }

      v179 = *(v176 + 64 + 8 * v182);
      ++jj;
      if (v179)
      {
        jj = v182;
        goto LABEL_117;
      }
    }
  }

  v188 = v244[8];
  if (*(v188 + 16))
  {
    MEMORY[0x21CECC330](0xD000000000000027, 0x8000000219CEA060);
    v189 = *(v188 + 64);
    v242 = (v188 + 64);
    v243 = v188;
    v190 = 1 << *(v188 + 32);
    v191 = -1;
    if (v190 < 64)
    {
      v191 = ~(-1 << v190);
    }

    v192 = v191 & v189;
    v241 = ((v190 + 63) >> 6);

    for (kk = 0; v192; result = sub_218B9E6C8(v208, sub_218B9D88C))
    {
      v194 = kk;
LABEL_129:
      v195 = __clz(__rbit64(v192));
      v192 &= v192 - 1;
      v196 = v195 | (v194 << 6);
      v197 = *(v243 + 56);
      v198 = (*(v243 + 48) + 16 * v196);
      v200 = *v198;
      v199 = v198[1];
      v201 = sub_219BDBD34();
      v202 = *(v201 - 8);
      v203 = v197 + *(v202 + 72) * v196;
      v204 = v246;
      v205 = *(v246 + 48);
      v206 = v236;
      (*(v202 + 16))(&v236[v205], v203, v201);
      v207 = *(v204 + 48);
      v208 = v245;
      *v245 = v200;
      *(v208 + 8) = v199;
      (*(v202 + 32))(v208 + v207, &v206[v205], v201);
      v248 = v200;
      v249 = v199;
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CECC330](2112032, 0xE300000000000000);
      sub_218B9F7A4(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
      v209 = sub_219BF7894();
      MEMORY[0x21CECC330](v209);

      MEMORY[0x21CECC330](10, 0xE100000000000000);
      MEMORY[0x21CECC330](v248, v249);
    }

    while (1)
    {
      v194 = kk + 1;
      if (__OFADD__(kk, 1))
      {
        goto LABEL_157;
      }

      if (v194 >= v241)
      {

        MEMORY[0x21CECC330](10, 0xE100000000000000);
        break;
      }

      v192 = *&v242[8 * v194];
      ++kk;
      if (v192)
      {
        kk = v194;
        goto LABEL_129;
      }
    }
  }

  v210 = v244[9];
  if (*(v210 + 16))
  {
    MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219CEA090);
    v211 = 1 << *(v210 + 32);
    v212 = -1;
    if (v211 < 64)
    {
      v212 = ~(-1 << v211);
    }

    v213 = v212 & *(v210 + 56);
    v214 = (v211 + 63) >> 6;

    for (mm = 0; v213; result = )
    {
      v216 = mm;
LABEL_141:
      v217 = (*(v210 + 48) + ((v216 << 10) | (16 * __clz(__rbit64(v213)))));
      v218 = v217[1];
      v213 &= v213 - 1;
      v248 = *v217;
      v249 = v218;

      MEMORY[0x21CECC330](10, 0xE100000000000000);
      MEMORY[0x21CECC330](v248, v249);
    }

    while (1)
    {
      v216 = mm + 1;
      if (__OFADD__(mm, 1))
      {
        goto LABEL_158;
      }

      if (v216 >= v214)
      {

        MEMORY[0x21CECC330](10, 0xE100000000000000);
        break;
      }

      v213 = *(v210 + 56 + 8 * v216);
      ++mm;
      if (v213)
      {
        mm = v216;
        goto LABEL_141;
      }
    }
  }

  v219 = type metadata accessor for ChannelUpsellTriggerRecord();
  v220 = v228;
  sub_218B9D8F8(v244 + *(v219 + 56), v228, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v221 = sub_219BDBD34();
  v222 = *(v221 - 8);
  if ((*(v222 + 48))(v220, 1, v221) == 1)
  {
    sub_218B9D978(v220, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v223 = 0x8000000219CEA0B0;
    v224 = 0xD000000000000014;
  }

  else
  {
    v224 = sub_219BDBBA4();
    v223 = v225;
    (*(v222 + 8))(v220, v221);
  }

  v248 = 0;
  v249 = 0xE000000000000000;
  sub_219BF7314();

  v248 = 0xD000000000000017;
  v249 = 0x8000000219CEA0D0;
  MEMORY[0x21CECC330](v224, v223);

  MEMORY[0x21CECC330](10, 0xE100000000000000);
  MEMORY[0x21CECC330](v248, v249);

  v248 = 0;
  v249 = 0xE000000000000000;
  sub_219BF7314();

  v248 = 0xD000000000000019;
  v249 = 0x8000000219CEA0F0;
  v247 = *(v244 + *(v219 + 60));
  v226 = sub_219BF7894();
  MEMORY[0x21CECC330](v226);

  MEMORY[0x21CECC330](v248, v249);

  return v250;
}

unint64_t FCChannelUpsellTriggerMethod.debugDescription.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  v2 = 0xD000000000000014;
  if (a1 == 6)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x6E776F6E6B6E55;
  }

  if (a1 != 5)
  {
    v2 = v3;
  }

  if (a1 == 4)
  {
    v2 = 0xD000000000000013;
  }

  if (a1 == 3)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 == 2)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 == 1)
  {
    v1 = 0x6C6F462064726148;
  }

  if (a1 <= 3)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_218B9160C()
{
  v0 = qword_27CC0E8E0;

  return v0;
}

uint64_t sub_218B91644()
{
  v0 = *a100;

  return v0;
}

uint64_t sub_218B9167C()
{
  v1 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler____lazy_storage___anyChannelChannelIDs;
  if (*(v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler____lazy_storage___anyChannelChannelIDs))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler____lazy_storage___anyChannelChannelIDs);
  }

  else
  {
    sub_218B916E4(v0);
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void sub_218B916E4(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_configurationManager) configuration];
  if (v1)
  {
    v2 = v1;
    if (([v1 respondsToSelector_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return;
    }

    v3 = [v2 channelUpsellConfigsByChannelID];
    swift_unknownObjectRelease();
    sub_2186C6148(0, &unk_280E8E168);
    v4 = sub_219BF5214();

    v5 = 0;
    v6 = 1 << *(v4 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v4 + 64);
    v9 = (v6 + 63) >> 6;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v5;
      if (!v8)
      {
        break;
      }

LABEL_10:
      v11 = (*(v4 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v8)))));
      v12 = *v11;
      v13 = v11[1];
      v8 &= v8 - 1;
      sub_218B9E340();
      sub_218B9E394();

      if (sub_219BF5314())
      {
        v14 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v18 + 16) + 1, 1);
          v14 = v18;
        }

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21870B65C((v15 > 1), v16 + 1, 1);
          v14 = v18;
        }

        *(v14 + 16) = v16 + 1;
        v18 = v14;
        v17 = v14 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v13;
      }

      else
      {
      }
    }

    while (1)
    {
      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        return;
      }

      v8 = *(v4 + 64 + 8 * v5);
      ++v10;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_218B91964@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE2CF4();
  sub_2187443DC();
  swift_allocObject();
  result = sub_219BE55D4();
  *a1 = result;
  return result;
}

uint64_t sub_218B919F4()
{
  v0 = sub_219BED174();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED1D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v15 = v4;
    sub_218B91E70();
    v9[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_didLoadTriggerRecord] = 1;
    sub_2186C6148(0, &qword_280E8E3B0);
    v10 = sub_219BF66A4();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    aBlock[4] = sub_218B9D770;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_28;
    v12 = _Block_copy(aBlock);
    v13 = v9;

    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_218B9F7A4(&qword_280E927E0, 255, MEMORY[0x277D85198]);
    sub_2186DD120(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v7, v3, v12);
    _Block_release(v12);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v15);
  }

  return result;
}

void sub_218B91E70()
{
  v2 = v0;
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  sub_219BE2CF4();
  v6 = sub_219BE5584();

  if (!v1)
  {
    if (*(v6 + 16) && (v7 = sub_21870F700(0xD00000000000002DLL, 0x8000000219CD6A70), (v8 & 1) != 0))
    {
      v9 = (*(v6 + 56) + 16 * v7);
      v10 = *v9;
      v11 = v9[1];
      sub_218B87528(*v9, v11);

      sub_219BDB654();
      swift_allocObject();
      sub_219BDB644();
      v12 = type metadata accessor for ChannelUpsellTriggerRecord();
      sub_218B9F7A4(&qword_280EBBDF8, 255, type metadata accessor for ChannelUpsellTriggerRecord);
      sub_219BDB634();

      v13 = (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
      v17[1] = v17;
      v14 = *(v2 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord);
      MEMORY[0x28223BE20](v13);
      v17[-2] = v5;
      v15 = *(*v14 + *MEMORY[0x277D841D0] + 16);
      v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v14 + v16));
      sub_218B9FA00(v14 + v15);
      os_unfair_lock_unlock((v14 + v16));

      sub_218B9D978(v5, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      sub_218B9BC7C();
      sub_2186C6190(v10, v11);
    }

    else
    {
    }
  }
}

void sub_218B922D8()
{

  sub_219BE2E84();

  v0 = *(v15 + 16);

  if (v0)
  {

    sub_219BE2E84();

    sub_219BE2E94();

    if (qword_280EE6050 != -1)
    {
      swift_once();
    }

    v1 = sub_219BE5434();
    __swift_project_value_buffer(v1, qword_280F62760);

    v2 = sub_219BE5414();
    v3 = sub_219BF6214();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = *(v15 + 16);

      _os_log_impl(&dword_2186C1000, v2, v3, "Processing %ld pending trigger records.", v4, 0xCu);
      MEMORY[0x21CECF960](v4, -1, -1);

      v5 = *(v15 + 16);
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    else
    {

      v5 = *(v15 + 16);
      if (!v5)
      {
LABEL_15:

        return;
      }
    }

    v10 = (v15 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *v10;
      v14 = *(v10 - 8);
      sub_21882F704(v11, v12, *(v10 - 8));

      sub_21882E780(v11, v12, v14, v13);
      sub_21882F8BC(v11, v12, v14);

      v10 += 4;
      --v5;
    }

    while (v5);
    goto LABEL_15;
  }

  if (qword_280EE6050 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62760);
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2186C1000, v7, v8, "No pending trigger records to process.", v9, 2u);
    MEMORY[0x21CECF960](v9, -1, -1);
  }
}

uint64_t sub_218B925B4(void *a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  swift_getObjectType();
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        v13 = [a1 sourceChannelID];
        if (v13)
        {
          v14 = v13;
          v15 = sub_219BF5414();
          v17 = v16;

          sub_219BDC464();
          v18 = v6;
          sub_219BDC444();
          sub_218B9F7A4(&unk_280ECF168, v19, type metadata accessor for ChannelUpsellHandler);
          sub_219BDC7D4();

          if (v87 == 1)
          {
            v20 = v15;
            v21 = v17;
            v22 = a5;
            v23 = a6;
            v24 = a4;
LABEL_65:
            v42 = sub_218B94D4C(6, v20, v21, v22, v23, v24);

            return v42;
          }

          if (a6)
          {
            v85 = v17;
            v44 = (v6 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_lastEOAArticleID);
            v45 = *(v6 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_lastEOAArticleID + 8);
            if (v45)
            {
              v83 = v15;
              v46 = *v44;

              v47 = [a1 articleID];
              v48 = sub_219BF5414();
              v50 = v49;

              v51 = v46;
              if (v46 == v48 && v45 == v50)
              {

                goto LABEL_41;
              }

              v59 = sub_219BF78F4();

              if (v59)
              {
                v51 = v46;
LABEL_41:

                if (qword_280EE6050 != -1)
                {
                  swift_once();
                }

                v60 = sub_219BE5434();
                __swift_project_value_buffer(v60, qword_280F62760);

                v61 = sub_219BE5414();
                v62 = sub_219BF6214();

                if (os_log_type_enabled(v61, v62))
                {
                  v63 = swift_slowAlloc();
                  v64 = swift_slowAlloc();
                  v87 = v64;
                  *v63 = 136315138;
                  v65 = sub_2186D1058(v51, v45, &v87);

                  *(v63 + 4) = v65;
                  v66 = "Received EoA report for article ID %s, which has already been reported. Upsell trigger will not be handled.";
LABEL_50:
                  _os_log_impl(&dword_2186C1000, v61, v62, v66, v63, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v64);
                  MEMORY[0x21CECF960](v64, -1, -1);
                  MEMORY[0x21CECF960](v63, -1, -1);
LABEL_52:

                  return 2;
                }

                goto LABEL_51;
              }

              v15 = v83;
            }

            v70 = [a1 articleID];
            if (v70)
            {
              v71 = v15;
              v72 = v70;
              v73 = sub_219BF5414();
              v75 = v74;

              v15 = v71;
            }

            else
            {
              v73 = 0;
              v75 = 0;
            }

            *v44 = v73;
            v44[1] = v75;
            v17 = v85;
LABEL_64:

            v20 = v15;
            v21 = v17;
            v22 = a5;
            v23 = a6;
            v24 = a4;
            goto LABEL_65;
          }

          v52 = (v6 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_lastAnyChannelEOAArticleID);
          v53 = *(v18 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_lastAnyChannelEOAArticleID + 8);
          if (v53)
          {
            v82 = v52;
            v84 = v15;
            v54 = *v52;

            v55 = [a1 articleID];
            v56 = sub_219BF5414();
            v58 = v57;

            v86 = v54;
            if (v54 == v56 && v53 == v58)
            {

              goto LABEL_46;
            }

            v67 = sub_219BF78F4();

            if (v67)
            {
LABEL_46:

              if (qword_280EE6050 != -1)
              {
                swift_once();
              }

              v68 = sub_219BE5434();
              __swift_project_value_buffer(v68, qword_280F62760);

              v61 = sub_219BE5414();
              v62 = sub_219BF6214();

              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                v87 = v64;
                *v63 = 136315138;
                v69 = sub_2186D1058(v86, v53, &v87);

                *(v63 + 4) = v69;
                v66 = "Received Any Channel EoA report for article ID %s, which has already been reported. Upsell trigger will not be handled.";
                goto LABEL_50;
              }

LABEL_51:

              goto LABEL_52;
            }

            v52 = v82;
            v15 = v84;
          }

          v76 = [a1 articleID];
          if (v76)
          {
            v77 = v15;
            v78 = v76;
            v79 = sub_219BF5414();
            v81 = v80;

            v15 = v77;
          }

          else
          {
            v79 = 0;
            v81 = 0;
          }

          *v52 = v79;
          v52[1] = v81;
          goto LABEL_64;
        }

        if (qword_280EE6050 != -1)
        {
          swift_once();
        }

        v39 = sub_219BE5434();
        __swift_project_value_buffer(v39, qword_280F62760);
        v40 = sub_219BE5414();
        v41 = sub_219BF61F4();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = 2;
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_2186C1000, v40, v41, "Failed to log end of article trigger because headline did not have a valid source channel ID!", v43, 2u);
          MEMORY[0x21CECF960](v43, -1, -1);

          return v42;
        }
      }

      return 2;
    }

    v26 = [a1 sourceChannelID];
    if (!v26)
    {
      return 2;
    }

    v27 = v26;
    v28 = sub_219BF5414();
    v30 = v29;

    v31 = (v6 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_lastEOAArticleID);
    *v31 = 0;
    v31[1] = 0;

    v32 = (v6 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_lastAnyChannelEOAArticleID);
    *v32 = 0;
    v32[1] = 0;

    v33 = a5;
    v34 = a6;
    if (!a6)
    {

      v33 = v28;
      v34 = v30;
    }

    sub_218B93B0C(v33, v34);

    v35 = sub_218B94D4C(3, v28, v30, a5, a6, a4);
    v36 = sub_218B94D4C(4, v28, v30, a5, a6, a4);
    v37 = sub_218B94D4C(5, v28, v30, a5, a6, a4);

    if (v35 == 2)
    {
      if (v36 == 2)
      {
        if (v37 == 2)
        {
          return 2;
        }

        return v37 & 1;
      }
    }

    else
    {
      if (v35)
      {
LABEL_27:
        v37 = 1;
        return v37 & 1;
      }

      if (v36 == 2)
      {
        return v37 & 1;
      }
    }

    if (v36)
    {
      goto LABEL_27;
    }

    return v37 & 1;
  }

  if (a3)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  return sub_218B94D4C(v25, a1, a2, a5, a6, a4);
}

unint64_t sub_218B92DB8(void *a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_2194DEC78(a1, a2, a3);
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    v49 = v10;
    v50 = v11;
    sub_218B9E340();
    sub_218B9E394();
    if (sub_219BF5314())
    {
      if (qword_280EE6050 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  if (a3 == 3 && (sub_219BDC464(), sub_219BDC444(), type metadata accessor for ChannelUpsellHandler(), sub_218B9F7A4(&unk_280ECF168, v20, type metadata accessor for ChannelUpsellHandler), sub_219BDC7D4(), , v49 == 1))
  {
    sub_219BDC454();
    sub_219BDC7D4();

    v21 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v21 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      if (qword_280EE6050 != -1)
      {
        swift_once();
      }

      v22 = sub_219BE5434();
      __swift_project_value_buffer(v22, qword_280F62760);
      v23 = sub_219BE5414();
      v24 = sub_219BF6214();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2186C1000, v23, v24, "End of article override is enabled with a defined article ID. Handling debug trigger instead of config trigger.", v25, 2u);
        MEMORY[0x21CECF960](v25, -1, -1);
      }

      v12 = sub_218B925B4(a1, a2, 3u, a5, 0xD00000000000001ALL, 0x8000000219CEA110) != 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (a6 != 2 && (a6 & 1) != 0)
  {
    v26 = *(sub_218B9167C() + 16);

    if (v26)
    {
      if (qword_280EE6050 != -1)
      {
        swift_once();
      }

      v27 = sub_219BE5434();
      __swift_project_value_buffer(v27, qword_280F62760);
      sub_21882F704(a1, a2, a3);
      v28 = sub_219BE5414();
      v29 = sub_219BF6214();
      sub_21882F8BC(a1, a2, a3);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v49 = v31;
        *v30 = 136315394;
        v32 = sub_2194DEC78(a1, a2, a3);
        if (v33)
        {
          v34 = v33;
        }

        else
        {
          v32 = 0x3E6C696E3CLL;
          v34 = 0xE500000000000000;
        }

        v35 = sub_2186D1058(v32, v34, &v49);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2080;
        v36 = sub_21882F974(a1, a2, a3);
        v38 = sub_2186D1058(v36, v37, &v49);

        *(v30 + 14) = v38;
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v31, -1, -1);
        MEMORY[0x21CECF960](v30, -1, -1);
      }
    }

    return 0;
  }

  v39 = sub_218B9167C();
  v40 = v39;
  v13 = *(v39 + 16);
  if (!v13)
  {
LABEL_37:

    return v12;
  }

  v41 = a1;
  v42 = a2;
  v43 = 0;
  v44 = (v39 + 40);
  while (v43 < *(v40 + 16))
  {
    ++v43;
    v45 = *(v44 - 1);
    v12 = *v44;

    v46 = sub_218B925B4(v41, v42, a3, a5, v45, v12);

    v44 += 2;
    if (v13 == v43)
    {
      v12 = v46 != 2;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  swift_once();
LABEL_4:
  v14 = sub_219BE5434();
  __swift_project_value_buffer(v14, qword_280F62760);

  v15 = sub_219BE5414();
  v16 = sub_219BF61F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v49 = v18;
    *v17 = 136315138;
    v19 = sub_2186D1058(v13, v12, &v49);

    *(v17 + 4) = v19;
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x21CECF960](v18, -1, -1);
    MEMORY[0x21CECF960](v17, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_218B93400()
{
  v1 = v0;
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2);
  v4 = &v17[-v3];
  if (qword_280EE6050 != -1)
  {
    swift_once();
  }

  v5 = sub_219BE5434();
  __swift_project_value_buffer(v5, qword_280F62760);
  v6 = sub_219BE5414();
  v7 = sub_219BF6214();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2186C1000, v6, v7, "Saving channel upsell trigger record...\n", v8, 2u);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  sub_219BDB684();
  swift_allocObject();
  sub_219BDB674();
  v9 = *(v1 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord);
  v10 = *(*v9 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v9 + v11));
  sub_218B9D8F8(v9 + v10, v4, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v9 + v11));

  sub_218B9D9E8();
  v12 = sub_219BDB664();
  v14 = v13;
  sub_218B9D978(v4, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);

  sub_219BE2CF4();
  sub_2186DD120(0, &qword_280E8B738, sub_218B9DAC4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0xD00000000000002DLL;
  *(inited + 40) = 0x8000000219CD6A70;
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  sub_218B87528(v12, v14);
  sub_2194AFC64(inited);
  swift_setDeallocating();
  sub_218B9E6C8(inited + 32, sub_218B9DAC4);
  sub_219BE5594();

  return sub_2186C6190(v12, v14);
}

uint64_t sub_218B93A14()
{
  swift_getObjectType();

  return sub_219BDCA54();
}

uint64_t sub_218B93A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2A10](a1, ObjectType, a5);
}

uint64_t sub_218B93ABC()
{
  swift_getObjectType();

  return sub_219BDCA64();
}

void sub_218B93B0C(uint64_t a1, uint64_t a2)
{
  v166 = a2;
  v167 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2186DD120(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v150 = v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v149 = v140 - v8;
  MEMORY[0x28223BE20](v7);
  v148 = v140 - v9;
  v10 = sub_219BDBF74();
  v156 = *(v10 - 8);
  v157 = v10;
  MEMORY[0x28223BE20](v10);
  v154 = v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BDBF94();
  v153 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v152 = v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDBD34();
  v162 = *(v13 - 8);
  v163 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v144 = v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v147 = v140 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v143 = v140 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v146 = v140 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v165 = v140 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v142 = v140 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v145 = v140 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = v140 - v28;
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, v3);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v161 = v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = v140 - v33;
  v35 = type metadata accessor for ChannelUpsellTriggerRecord();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v2;
  v158 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord;
  v39 = *(v2 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord);
  v40 = *(*v39 + *MEMORY[0x277D841D0] + 16);
  v41 = (*(*v39 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v39 + v41));
  sub_218B9D8F8(v39 + v40, v34, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v39 + v41));

  v159 = v36;
  v160 = v35;
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {
    sub_218B9E3E8(v34, v38);
    v151 = v29;
    sub_219BDBD24();
    v46 = *(v38 + 1);
    v48 = v162;
    v47 = v163;
    v50 = v166;
    v49 = v167;
    v51 = v38;
    if (!*(v46 + 16))
    {
      goto LABEL_14;
    }

    v52 = v167;
    v53 = sub_21870F700(v167, v166);
    if (v54)
    {
      v55 = *(v46 + 56) + *(v48 + 72) * v53;
      v56 = v142;
      v141 = *(v48 + 16);
      v140[1] = v48 + 16;
      v141(v142, v55, v47);
      v57 = v47;
      v58 = v145;
      (*(v48 + 32))(v145, v56, v57);
      v59 = v152;
      sub_219BDBF34();
      v61 = v156;
      v60 = v157;
      v62 = v154;
      (*(v156 + 104))(v154, *MEMORY[0x277CC9968], v157);
      v63 = sub_219BDBF24();
      (*(v61 + 8))(v62, v60);
      (*(v153 + 8))(v59, v155);
      if ((v63 & 1) == 0)
      {
        v113 = *v51;
        v50 = v166;
        if (*(*v51 + 16) && (v114 = sub_21870F700(v167, v166), (v115 & 1) != 0))
        {
          v116 = *(*(v113 + 56) + 8 * v114);
        }

        else
        {
          v116 = sub_2194AFB94(MEMORY[0x277D84F90]);
        }

        v68 = v151;
        v66 = v141;
        v47 = v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v168 = v116;
        sub_21948C9CC(0, 3, isUniquelyReferenced_nonNull_native);
        v128 = v168;

        v129 = swift_isUniquelyReferenced_nonNull_native();
        v168 = *v51;
        v72 = v167;
        sub_21948C9A0(v128, v167, v50, v129);

        *v51 = v168;
        v69 = v165;
        v66(v165, v68, v47);
        v130 = swift_isUniquelyReferenced_nonNull_native();
        v168 = v51[1];
        sub_21948C76C(v69, v72, v50, v130);
        (*(v48 + 8))(v145, v47);
        v51[1] = v168;
LABEL_16:
        v73 = v51[2];
        if (*(v73 + 16))
        {
          v74 = sub_21870F700(v72, v50);
          if (v75)
          {
            v76 = *(v73 + 56) + *(v48 + 72) * v74;
            v77 = v143;
            v141 = v66;
            v148 = (v48 + 16);
            v66(v143, v76, v47);
            v78 = v146;
            (*(v48 + 32))(v146, v77, v47);
            v79 = v152;
            sub_219BDBF34();
            v81 = v156;
            v80 = v157;
            v82 = v154;
            (*(v156 + 104))(v154, *MEMORY[0x277CC9940], v157);
            v83 = v78;
            LOBYTE(v78) = sub_219BDBF24();
            (*(v81 + 8))(v82, v80);
            (*(v153 + 8))(v79, v155);
            if ((v78 & 1) == 0)
            {
              v117 = *v51;
              v50 = v166;
              v72 = v167;
              v69 = v165;
              if (*(*v51 + 16) && (v118 = sub_21870F700(v167, v166), (v119 & 1) != 0))
              {
                v120 = *(*(v117 + 56) + 8 * v118);
              }

              else
              {
                v120 = sub_2194AFB94(MEMORY[0x277D84F90]);
              }

              v66 = v141;
              v68 = v151;
              v131 = swift_isUniquelyReferenced_nonNull_native();
              v168 = v120;
              sub_21948C9CC(0, 4, v131);
              v132 = v168;

              v133 = swift_isUniquelyReferenced_nonNull_native();
              v168 = *v51;
              sub_21948C9A0(v132, v72, v50, v133);

              *v51 = v168;
              v66(v69, v68, v47);
              v134 = swift_isUniquelyReferenced_nonNull_native();
              v168 = v51[2];
              sub_21948C76C(v69, v72, v50, v134);
              (*(v48 + 8))(v146, v47);
              goto LABEL_24;
            }

            (*(v48 + 8))(v83, v47);
            v50 = v166;
            v72 = v167;
            v66 = v141;
            v68 = v151;
            v69 = v165;
          }

          if (*(v73 + 16))
          {
            v84 = sub_21870F700(v72, v50);
            if (v85)
            {
              v86 = *(v73 + 56) + *(v48 + 72) * v84;
              v87 = v149;
              v66(v149, v86, v47);
              (*(v48 + 56))(v87, 0, 1, v47);
              sub_218B9D978(v87, &qword_280EE9C40, MEMORY[0x277CC9578]);
LABEL_25:
              v90 = v51[3];
              if (!*(v90 + 16))
              {
                goto LABEL_32;
              }

              v91 = sub_21870F700(v72, v50);
              if (v92)
              {
                v93 = *(v90 + 56) + *(v48 + 72) * v91;
                v94 = v144;
                v141 = v66;
                v149 = (v48 + 16);
                v66(v144, v93, v47);
                v95 = v147;
                (*(v48 + 32))(v147, v94, v47);
                v96 = v152;
                sub_219BDBF34();
                v98 = v156;
                v97 = v157;
                v99 = v154;
                (*(v156 + 104))(v154, *MEMORY[0x277CC9998], v157);
                v100 = sub_219BDBF24();
                (*(v98 + 8))(v99, v97);
                (*(v153 + 8))(v96, v155);
                if ((v100 & 1) == 0)
                {
                  v121 = *v51;
                  v122 = v166;
                  v123 = v167;
                  if (*(*v51 + 16) && (v124 = sub_21870F700(v167, v166), (v125 & 1) != 0))
                  {
                    v126 = *(*(v121 + 56) + 8 * v124);
                  }

                  else
                  {
                    v126 = sub_2194AFB94(MEMORY[0x277D84F90]);
                  }

                  v107 = v151;
                  v135 = swift_isUniquelyReferenced_nonNull_native();
                  v168 = v126;
                  sub_21948C9CC(0, 5, v135);
                  v136 = v168;

                  v137 = swift_isUniquelyReferenced_nonNull_native();
                  v168 = *v51;
                  sub_21948C9A0(v136, v123, v122, v137);

                  *v51 = v168;
                  v138 = v165;
                  v141(v165, v107, v47);
                  v139 = swift_isUniquelyReferenced_nonNull_native();
                  v168 = v51[3];
                  sub_21948C76C(v138, v123, v122, v139);
                  (*(v48 + 8))(v147, v47);
                  v51[3] = v168;
                  goto LABEL_34;
                }

                (*(v48 + 8))(v95, v47);
                v50 = v166;
                v72 = v167;
                v66 = v141;
                v68 = v151;
                v69 = v165;
              }

              if (*(v90 + 16) && (v101 = sub_21870F700(v72, v50), (v102 & 1) != 0))
              {
                v103 = *(v90 + 56) + *(v48 + 72) * v101;
                v104 = v150;
                v66(v150, v103, v47);
                (*(v48 + 56))(v104, 0, 1, v47);
                sub_218B9D978(v104, &qword_280EE9C40, MEMORY[0x277CC9578]);
              }

              else
              {
LABEL_32:
                v105 = v150;
                (*(v48 + 56))(v150, 1, 1, v47);
                sub_218B9D978(v105, &qword_280EE9C40, MEMORY[0x277CC9578]);
                v66(v69, v68, v47);
                v106 = swift_isUniquelyReferenced_nonNull_native();
                v168 = v51[3];
                sub_21948C76C(v69, v72, v50, v106);
                v51[3] = v168;
              }

              v107 = v68;
LABEL_34:
              v108 = v161;
              sub_218B9D828(v51, v161);
              v109 = (*(v159 + 56))(v108, 0, 1, v160);
              v110 = *(v164 + v158);
              MEMORY[0x28223BE20](v109);
              v140[-2] = v108;
              v111 = *(*v110 + *MEMORY[0x277D841D0] + 16);
              v112 = (*(*v110 + 48) + 3) & 0x1FFFFFFFCLL;

              os_unfair_lock_lock((v110 + v112));
              sub_218B9FA00(v110 + v111);
              os_unfair_lock_unlock((v110 + v112));
              (*(v48 + 8))(v107, v47);

              sub_218B9D978(v108, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
              sub_218B9E6C8(v51, type metadata accessor for ChannelUpsellTriggerRecord);
              return;
            }
          }
        }

        v88 = v149;
        (*(v48 + 56))(v149, 1, 1, v47);
        sub_218B9D978(v88, &qword_280EE9C40, MEMORY[0x277CC9578]);
        v66(v69, v68, v47);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v168 = v51[2];
        sub_21948C76C(v69, v72, v50, v89);
LABEL_24:
        v51[2] = v168;
        goto LABEL_25;
      }

      (*(v48 + 8))(v58, v57);
      v50 = v166;
      v52 = v167;
      v47 = v57;
    }

    v49 = v52;
    if (*(v46 + 16) && (v64 = sub_21870F700(v52, v50), (v65 & 1) != 0))
    {
      v66 = *(v48 + 16);
      v67 = v148;
      v66(v148, (*(v46 + 56) + *(v48 + 72) * v64), v47);
      (*(v48 + 56))(v67, 0, 1, v47);
      sub_218B9D978(v67, &qword_280EE9C40, MEMORY[0x277CC9578]);
      v68 = v151;
      v69 = v165;
    }

    else
    {
LABEL_14:
      v70 = v148;
      (*(v48 + 56))(v148, 1, 1, v47);
      sub_218B9D978(v70, &qword_280EE9C40, MEMORY[0x277CC9578]);
      v66 = *(v48 + 16);
      v69 = v165;
      v68 = v151;
      v66(v165, v151, v47);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v51[1];
      sub_21948C76C(v69, v49, v50, v71);
      v51[1] = v168;
    }

    v72 = v49;
    goto LABEL_16;
  }

  sub_218B9D978(v34, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  if (qword_280EE6050 != -1)
  {
    swift_once();
  }

  v42 = sub_219BE5434();
  __swift_project_value_buffer(v42, qword_280F62760);
  v43 = sub_219BE5414();
  v44 = sub_219BF61F4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2186C1000, v43, v44, "Attempted to update article open dates without a valid trigger record!", v45, 2u);
    MEMORY[0x21CECF960](v45, -1, -1);
  }
}

uint64_t sub_218B94D4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v463 = a6;
  v464 = a2;
  v465 = a3;
  ObjectType = swift_getObjectType();
  v458 = sub_219BDBD34();
  v461 = *(v458 - 8);
  v12 = MEMORY[0x28223BE20](v458);
  v448 = &v426 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v453 = &v426 - v14;
  v15 = MEMORY[0x277D83D88];
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v449 = &v426 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v462 = (&v426 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v426 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v440 = &v426 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v441 = &v426 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v439 = &v426 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v426 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v443 = &v426 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v447 = &v426 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v445 = &v426 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v435 = &v426 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v438 = &v426 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v434 = &v426 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v437 = &v426 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v433 = &v426 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v442 = &v426 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v446 = &v426 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v456 = &v426 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v455 = (&v426 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v450 = &v426 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v451 = &v426 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v460 = &v426 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v459 = (&v426 - v64);
  MEMORY[0x28223BE20](v63);
  v457 = &v426 - v65;
  sub_2186DD120(0, &qword_280EE9C40, MEMORY[0x277CC9578], v15);
  v67 = MEMORY[0x28223BE20](v66 - 8);
  v436 = &v426 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v67);
  v452 = &v426 - v70;
  MEMORY[0x28223BE20](v69);
  v72 = &v426 - v71;
  if (qword_280EE6050 != -1)
  {
    swift_once();
  }

  v73 = sub_219BE5434();
  v467 = __swift_project_value_buffer(v73, qword_280F62760);
  v74 = sub_219BE5414();
  v75 = sub_219BF6214();
  v76 = os_log_type_enabled(v74, v75);
  v454 = v23;
  v444 = v32;
  v466 = ObjectType;
  if (v76)
  {
    v432 = v7;
    v77 = a4;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v470 = v79;
    v80 = 0xE700000000000000;
    *v78 = 136315138;
    v81 = 0x8000000219CE9CA0;
    v82 = 0x8000000219CE9C80;
    v83 = 0xD000000000000014;
    v84 = 0x8000000219CE9C60;
    if (a1 == 6)
    {
      v85 = 0xD000000000000014;
    }

    else
    {
      v85 = 0x6E776F6E6B6E55;
    }

    if (a1 != 6)
    {
      v84 = 0xE700000000000000;
    }

    if (a1 != 5)
    {
      v83 = v85;
      v82 = v84;
    }

    if (a1 == 4)
    {
      v83 = 0xD000000000000013;
    }

    else
    {
      v81 = v82;
    }

    v86 = 0x6C6F462064726148;
    v87 = 0xD000000000000012;
    v88 = 0xD000000000000012;
    if (a1 == 3)
    {
      v80 = 0x8000000219CE9CC0;
    }

    else
    {
      v88 = 0x6E776F6E6B6E55;
    }

    if (a1 == 2)
    {
      v80 = 0x8000000219CE9CE0;
    }

    else
    {
      v87 = v88;
    }

    if (a1 == 1)
    {
      v80 = 0xEB00000000776F6CLL;
    }

    else
    {
      v86 = v87;
    }

    if (a1 <= 3)
    {
      v89 = v86;
    }

    else
    {
      v89 = v83;
    }

    v90 = a5;
    v91 = v72;
    if (a1 <= 3)
    {
      v92 = v80;
    }

    else
    {
      v92 = v81;
    }

    v93 = sub_2186D1058(v89, v92, &v470);
    v72 = v91;
    a5 = v90;

    *(v78 + 4) = v93;
    a4 = v77;
    v7 = v432;
    _os_log_impl(&dword_2186C1000, v74, v75, "Channel Upsell Trigger event occurred: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x21CECF960](v79, -1, -1);
    MEMORY[0x21CECF960](v78, -1, -1);
  }

  v94 = a5;
  if (!a5)
  {
    v94 = v465;

    a4 = v464;
  }

  __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_sceneProvider], *&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_sceneProvider + 24]);

  v95 = sub_219BE7174();
  if (v95)
  {
    v96 = v95;
    v97 = [v95 rootViewController];

    if (v97)
    {
      v98 = sub_219BF6534();

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v99 = sub_219BE5414();
        v100 = sub_219BF6214();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = 0x6E776F6E6B6E55;
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v470 = v103;
          *v102 = 136315138;
          v104 = 0xE700000000000000;
          if (a1 <= 3)
          {
            switch(a1)
            {
              case 1:
                v101 = 0x6C6F462064726148;
                v104 = 0xEB00000000776F6CLL;
                break;
              case 2:
                v101 = 0xD000000000000012;
                v105 = "Channel Feed Entry";
                goto LABEL_143;
              case 3:
                v101 = 0xD000000000000012;
                v105 = "Article Open Daily";
LABEL_143:
                v104 = (v105 - 32) | 0x8000000000000000;
                break;
            }

LABEL_146:
            v306 = sub_2186D1058(v101, v104, &v470);

            *(v102 + 4) = v306;
            v126 = "Attempted to post trigger condition %s while an alert is presented to the user.  This trigger will be ignored.";
            goto LABEL_147;
          }

          switch(a1)
          {
            case 4:
              v104 = 0x8000000219CE9CA0;
              v101 = 0xD000000000000013;
              goto LABEL_146;
            case 5:
              v164 = "Article Open Monthly";
              break;
            case 6:
              v164 = "Reach End of Article";
              break;
            default:
              goto LABEL_146;
          }

          v104 = (v164 - 32) | 0x8000000000000000;
          v101 = 0xD000000000000014;
          goto LABEL_146;
        }

LABEL_148:

        return 2;
      }
    }
  }

  v464 = a5;
  if (a1 == 6)
  {
    sub_219BDC464();
    sub_219BDC454();
    sub_218B9F7A4(&unk_280ECF168, v106, type metadata accessor for ChannelUpsellHandler);
    sub_219BDC7D4();

    v108 = v470;
    v107 = v471;
    v109 = HIBYTE(v471) & 0xF;
    if ((v471 & 0x2000000000000000) == 0)
    {
      v109 = v470 & 0xFFFFFFFFFFFFLL;
    }

    if (v109)
    {

      v110 = sub_219BE5414();
      v111 = sub_219BF6214();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v470 = v113;
        *v112 = 136315394;
        *(v112 + 4) = sub_2186D1058(v108, v107, &v470);
        *(v112 + 12) = 2080;
        *(v112 + 14) = sub_2186D1058(a4, v94, &v470);
        _os_log_impl(&dword_2186C1000, v110, v111, "Debug EoA article ID %s found for channel ID %s. Forcing upsell presentation.", v112, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v113, -1, -1);
        MEMORY[0x21CECF960](v112, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_router], *&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_router + 24]);
      sub_218B9F7A4(&qword_27CC0E968, v114, type metadata accessor for ChannelUpsellHandler);
      sub_219BE43B4();

      return 2;
    }

    a1 = 6;
  }

  v115 = sub_218B98880(a4, v94);
  if (!v115)
  {

    v99 = sub_219BE5414();
    v100 = sub_219BF6214();

    if (os_log_type_enabled(v99, v100))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v470 = v103;
      *v102 = 136315138;
      v125 = sub_2186D1058(a4, v94, &v470);

      *(v102 + 4) = v125;
      v126 = "No channel upsell configuration available for channel ID %s.";
LABEL_147:
      _os_log_impl(&dword_2186C1000, v99, v100, v126, v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x21CECF960](v103, -1, -1);
      MEMORY[0x21CECF960](v102, -1, -1);
      goto LABEL_148;
    }

    goto LABEL_148;
  }

  v116 = v115;
  v117 = [v115 ignoreWebOptInStatus];
  v465 = v94;
  if (v117)
  {
    v118 = a1;

    v119 = sub_219BE5414();
    v120 = sub_219BF6214();

    if (!os_log_type_enabled(v119, v120))
    {
      goto LABEL_64;
    }

    v121 = v94;
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v470 = v123;
    *v122 = 136315138;
    *(v122 + 4) = sub_2186D1058(a4, v121, &v470);
    v124 = "Configuration is flagged to ignore web opt-in status for channel ID %s. Bypassing web opt-in checks.";
    goto LABEL_63;
  }

  result = [*&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_purchaseController] webAccessOptedInTagIDs];
  if (!result)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v128 = result;
  v129 = sub_219BF5D44();

  v130 = sub_2188537B8(a4, v94, v129);

  v119 = sub_219BE5414();
  v120 = sub_219BF6214();

  v131 = os_log_type_enabled(v119, v120);
  if (v130)
  {
    if (v131)
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v470 = v133;
      *v132 = 136315138;
      v134 = sub_2186D1058(a4, v94, &v470);

      *(v132 + 4) = v134;
      _os_log_impl(&dword_2186C1000, v119, v120, "User has already opted-in to web access for channel ID %s. Upsell trigger will be ignored.", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v133);
      MEMORY[0x21CECF960](v133, -1, -1);
      MEMORY[0x21CECF960](v132, -1, -1);
    }

    else
    {
    }

    return 2;
  }

  v118 = a1;
  if (v131)
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v470 = v123;
    *v122 = 136315138;
    *(v122 + 4) = sub_2186D1058(a4, v465, &v470);
    v124 = "User has not yet opted-in to web access for channel ID %s. Proceeding with trigger handling.";
LABEL_63:
    _os_log_impl(&dword_2186C1000, v119, v120, v124, v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v123);
    MEMORY[0x21CECF960](v123, -1, -1);
    MEMORY[0x21CECF960](v122, -1, -1);
  }

LABEL_64:

  v432 = v116;
  v135 = [v116 triggersByMethod];
  sub_2186C6148(0, &qword_280E8DA20);
  sub_2186C6148(0, &unk_280E8E0B8);
  sub_218B9E44C();
  v136 = sub_219BF5214();

  v137 = v118;
  v138 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v139 = sub_218B8EB24(v138, v136, sub_21931EE7C, &unk_280E8E0B8);

  if (!v139)
  {

    v147 = sub_219BE5414();
    v148 = sub_219BF6214();
    if (!os_log_type_enabled(v147, v148))
    {
LABEL_159:

      return 2;
    }

    v149 = 0x6E776F6E6B6E55;
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v470 = v151;
    *v150 = 136315138;
    v152 = 0xE700000000000000;
    if (v137 <= 3)
    {
      switch(v137)
      {
        case 1:
          v149 = 0x6C6F462064726148;
          v152 = 0xEB00000000776F6CLL;
          break;
        case 2:
          v149 = 0xD000000000000012;
          v153 = "Channel Feed Entry";
          goto LABEL_155;
        case 3:
          v149 = 0xD000000000000012;
          v153 = "Article Open Daily";
LABEL_155:
          v152 = (v153 - 32) | 0x8000000000000000;
          break;
      }

LABEL_158:
      v315 = sub_2186D1058(v149, v152, &v470);

      *(v150 + 4) = v315;
      _os_log_impl(&dword_2186C1000, v147, v148, "No channel upsell trigger available for in configuration for trigger method %s.", v150, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v151);
      MEMORY[0x21CECF960](v151, -1, -1);
      MEMORY[0x21CECF960](v150, -1, -1);
      goto LABEL_159;
    }

    switch(v137)
    {
      case 4:
        v152 = 0x8000000219CE9CA0;
        v149 = 0xD000000000000013;
        goto LABEL_158;
      case 5:
        v305 = "Article Open Monthly";
        break;
      case 6:
        v305 = "Reach End of Article";
        break;
      default:
        goto LABEL_158;
    }

    v152 = (v305 - 32) | 0x8000000000000000;
    v149 = 0xD000000000000014;
    goto LABEL_158;
  }

  v427 = v139;
  result = [*&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_configurationManager] configuration];
  if (!result)
  {
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  v140 = result;
  v141 = [result respondsToSelector_];
  v142 = v432;
  if (v141)
  {
    v143 = [v140 dailyChannelUpsellsCountLimit];
    swift_unknownObjectRelease();
    if (!sub_218B989A0(v143))
    {

      v144 = sub_219BE5414();
      v145 = sub_219BF6214();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        *v146 = 134217984;
        *(v146 + 4) = v143;
        _os_log_impl(&dword_2186C1000, v144, v145, "Number of presented upsells have reached the daily limit: %lld.", v146, 0xCu);
        MEMORY[0x21CECF960](v146, -1, -1);
      }

      return 2;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v154 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord;
  v155 = *&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord];
  v156 = *(*v155 + *MEMORY[0x277D841D0] + 16);
  v157 = (*(*v155 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v155 + v157));
  v158 = v457;
  sub_218B9D8F8(v155 + v156, v457, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v155 + v157));

  v159 = type metadata accessor for ChannelUpsellTriggerRecord();
  v160 = *(v159 - 8);
  v161 = *(v160 + 48);
  v428 = v159;
  v431 = v161;
  v430 = v160 + 48;
  if (v161(v158, 1))
  {
    sub_218B9D978(v158, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v162 = v461;
    v163 = v458;
    (*(v461 + 56))(v72, 1, 1, v458);
  }

  else
  {
    v165 = *(v158 + 64);
    v163 = v458;
    if (*(v165 + 16) && (v166 = sub_21870F700(a4, v465), (v167 & 1) != 0))
    {
      v168 = *(v165 + 56);
      v162 = v461;
      (*(v461 + 16))(v72, v168 + *(v461 + 72) * v166, v163);
      v169 = 0;
    }

    else
    {
      v169 = 1;
      v162 = v461;
    }

    (*(v162 + 56))(v72, v169, 1, v163);
    sub_218B9D978(v158, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  }

  v170 = [v142 presentationCountResetInterval];
  v171 = *(v162 + 48);
  v172 = v171(v72, 1, v163);
  v429 = v154;
  if (v172 != 1)
  {
    v173 = a4;
    v174 = v453;
    sub_219BDBD24();
    v175 = v452;
    sub_218B9D8F8(v72, v452, &qword_280EE9C40, MEMORY[0x277CC9578]);
    result = v171(v175, 1, v163);
    if (result == 1)
    {
LABEL_203:
      __break(1u);
      return result;
    }

    sub_219BDBBE4();
    v177 = v176;
    v178 = *(v461 + 8);
    v178(v174, v163);
    v178(v175, v163);
    a4 = v173;
    v154 = v429;
    v179 = v432;
    if (v177 < v170)
    {
      if (v137 != 6)
      {
        goto LABEL_104;
      }

LABEL_103:
      sub_219BDC464();
      sub_219BDC444();
      sub_218B9F7A4(&unk_280ECF168, v216, type metadata accessor for ChannelUpsellHandler);
      sub_219BDC7D4();

      if (v470)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }
  }

  v457 = v137;
  v180 = *&v7[v154];
  v181 = *(*v180 + *MEMORY[0x277D841D0] + 16);
  v182 = (*(*v180 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v180 + v182));
  v183 = v459;
  sub_218B9D8F8(v180 + v181, v459, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v180 + v182));

  if (v431(v183, 1, v428))
  {
    v184 = v450;
    v185 = sub_218B9D8F8(v183, v450, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v186 = *&v7[v429];
    MEMORY[0x28223BE20](v185);
    v187 = *(*v186 + *MEMORY[0x277D841D0] + 16);
    v188 = (*(*v186 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v186 + v188));
    sub_218B9FA00(v186 + v187);
    v189 = (v186 + v188);
    v183 = v459;
    os_unfair_lock_unlock(v189);
    v154 = v429;

    sub_218B9D978(v184, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v470 = *(v183 + 56);
    *(v183 + 56) = 0x8000000000000000;
    sub_21948CAF0(0, a4, v465, isUniquelyReferenced_nonNull_native);
    *(v183 + 56) = v470;

    v192 = *&v7[v154];
    MEMORY[0x28223BE20](v191);
    v193 = *(*v192 + *MEMORY[0x277D841D0] + 16);
    v194 = (*(*v192 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v192 + v194));
    sub_218B9FA00(v192 + v193);
    os_unfair_lock_unlock((v192 + v194));
  }

  sub_218B9D978(v183, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v195 = *&v7[v154];
  v196 = *(*v195 + *MEMORY[0x277D841D0] + 16);
  v197 = v154;
  v198 = (*(*v195 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v195 + v198));
  v199 = v195 + v196;
  v200 = v460;
  sub_218B9D8F8(v199, v460, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v195 + v198));

  if (v431(v200, 1, v428))
  {
    v201 = v451;
    v202 = sub_218B9D8F8(v200, v451, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v459 = &v426;
    v203 = *&v7[v197];
    MEMORY[0x28223BE20](v202);
    v204 = *(*v203 + *MEMORY[0x277D841D0] + 16);
    v205 = v72;
    v206 = v7;
    v207 = a4;
    v208 = (*(*v203 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v203 + v208));
    sub_218B9FA00(v203 + v204);
    v209 = (v203 + v208);
    a4 = v207;
    v7 = v206;
    v72 = v205;
    os_unfair_lock_unlock(v209);

    sub_218B9D978(v201, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  }

  else
  {
    v210 = v448;
    sub_219BDBD24();
    v211 = swift_isUniquelyReferenced_nonNull_native();
    v470 = *(v200 + 64);
    *(v200 + 64) = 0x8000000000000000;
    sub_21948C76C(v210, a4, v465, v211);
    *(v200 + 64) = v470;

    v213 = *&v7[v197];
    MEMORY[0x28223BE20](v212);
    v214 = *(*v213 + *MEMORY[0x277D841D0] + 16);
    v215 = (*(*v213 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v213 + v215));
    sub_218B9FA00(v213 + v214);
    os_unfair_lock_unlock((v213 + v215));
  }

  v137 = v457;
  sub_218B9D978(v460, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v179 = v432;
  v154 = v429;
  if (v137 == 6)
  {
    goto LABEL_103;
  }

LABEL_104:
  v217 = [v179 presentationCap];
  if (!sub_218B99900(v217, a4, v465))
  {

    sub_218B9D978(v72, &qword_280EE9C40, MEMORY[0x277CC9578]);
    return 2;
  }

LABEL_105:
  v218 = *&v7[v154];
  v219 = *(*v218 + *MEMORY[0x277D841D0] + 16);
  v220 = (*(*v218 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v218 + v220));
  v221 = v218 + v219;
  v222 = v455;
  sub_218B9D8F8(v221, v455, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v223 = (v218 + v220);
  v224 = v222;
  os_unfair_lock_unlock(v223);

  v225 = v431(v222, 1, v428);
  v460 = 0;
  if (v225 || (v239 = *v222, !*(*v224 + 16)) || (v240 = sub_21870F700(a4, v465), (v241 & 1) == 0) || (v242 = *(*(v239 + 56) + 8 * v240), !*(v242 + 16)))
  {
    v226 = v72;
LABEL_107:
    v227 = v137;
    v228 = 0;
    goto LABEL_108;
  }

  v226 = v72;
  v243 = sub_219320C04(v137);
  if ((v244 & 1) == 0)
  {
    goto LABEL_107;
  }

  v227 = v137;
  v228 = *(*(v242 + 56) + 8 * v243);
LABEL_108:
  sub_218B9D978(v224, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v229 = *&v7[v154];
  v230 = *(*v229 + *MEMORY[0x277D841D0] + 16);
  v231 = (*(*v229 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v229 + v231));
  v232 = v229 + v230;
  v233 = v456;
  sub_218B9D8F8(v232, v456, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v229 + v231));

  if (v431(v233, 1, v428))
  {
    result = sub_218B9D978(v233, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v234 = v228 + 1;
    v235 = v432;
    if (!__OFADD__(v228, 1))
    {
      v236 = v227;
      v237 = v465;
      v238 = v427;
LABEL_120:
      v247 = &selRef_quiescenceInterval;
      goto LABEL_121;
    }

    __break(1u);
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v245 = *(v233 + 72);

  sub_218B9D978(v233, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v246 = sub_2188537B8(a4, v465, v245);

  v234 = v228 + 1;
  v235 = v432;
  if (__OFADD__(v228, 1))
  {
    goto LABEL_198;
  }

  v236 = v227;
  v237 = v465;
  v238 = v427;
  if ((v246 & 1) == 0)
  {
    goto LABEL_120;
  }

  v247 = &selRef_engagedUserQuiescenceInterval;
LABEL_121:
  v248 = [v235 *v247];
  v249 = [v238 triggerCount];
  v426 = v226;
  if (v234 < v249 || !sub_218B99AE0(v236, a4, v237, v248))
  {
    LODWORD(v467) = 0;
    goto LABEL_127;
  }

  v250 = sub_218B9AA84(a4, v237, v238, v464 != 0);
  if (!v251)
  {

    v307 = sub_219BE5414();
    v308 = sub_219BF61F4();

    if (os_log_type_enabled(v307, v308))
    {
      v309 = v226;
      v310 = swift_slowAlloc();
      v311 = swift_slowAlloc();
      v470 = v311;
      *v310 = 136315138;
      v312 = v238;
      v313 = sub_2186D1058(a4, v237, &v470);

      *(v310 + 4) = v313;
      _os_log_impl(&dword_2186C1000, v307, v308, "Failed to retrieve landing page article ID for channel ID %s.", v310, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v311);
      MEMORY[0x21CECF960](v311, -1, -1);
      v314 = v310;
      v226 = v309;
      MEMORY[0x21CECF960](v314, -1, -1);
    }

    else
    {
    }

    sub_218B9D978(v226, &qword_280EE9C40, MEMORY[0x277CC9578]);
    return 2;
  }

  v457 = v236;
  v467 = v250;
  sub_218B9ADC0(v463, v7, &v470);
  sub_218718690(&v470, &v468);
  v252 = swift_allocObject();
  *(v252 + 2) = v235;
  sub_2186CB1F0(&v468, v252 + 24);
  *(v252 + 8) = a4;
  *(v252 + 9) = v237;
  v253 = &v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellCancellationClosure];
  v254 = *&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellCancellationClosure];
  *v253 = sub_218B9E4B4;
  v253[1] = v252;

  v255 = v235;
  sub_2187FABEC(v254);
  v256 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218718690(&v470, &v468);
  v257 = swift_allocObject();
  *(v257 + 2) = v256;
  *(v257 + 3) = v255;
  *(v257 + 4) = a4;
  *(v257 + 5) = v237;
  sub_2186CB1F0(&v468, v257 + 48);
  v258 = &v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellShareClosure];
  v259 = *&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellShareClosure];
  *v258 = sub_218B9E4C4;
  v258[1] = v257;

  v260 = v255;

  sub_2187FABEC(v259);

  [*&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_postActionHandlerManager] addPostActionHandler:v7 forActionType:{*MEMORY[0x277D55110], v426}];
  __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_router], *&v7[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_router + 24]);
  sub_218B9F7A4(&qword_27CC0E968, v261, type metadata accessor for ChannelUpsellHandler);

  v467 = a4;
  sub_219BE43B4();

  v262 = v429;
  v263 = *&v7[v429];
  v264 = MEMORY[0x277D841D0];
  v265 = *(*v263 + *MEMORY[0x277D841D0] + 16);
  v266 = (*(*v263 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v263 + v266));
  v267 = v446;
  sub_218B9D8F8(v263 + v265, v446, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v263 + v266));

  v268 = v428;
  if (v431(v267, 1, v428))
  {
    v269 = v440;
    v270 = sub_218B9D8F8(v267, v440, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v271 = *&v7[v262];
    MEMORY[0x28223BE20](v270);
    v272 = *(*v271 + *v264 + 16);
    v273 = (*(*v271 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v271 + v273));
    v274 = v271 + v272;
    v267 = v446;
    v275 = v460;
    sub_218B9FA00(v274);
    os_unfair_lock_unlock((v271 + v273));

    sub_218B9D978(v269, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  }

  else
  {
    v316 = v436;
    sub_219BDBD24();
    (*(v461 + 56))(v316, 0, 1, v458);
    v317 = sub_218B9E4D4(v316, v267 + *(v268 + 56));
    v318 = *&v7[v262];
    MEMORY[0x28223BE20](v317);
    v319 = *(*v318 + *v264 + 16);
    v320 = (*(*v318 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v318 + v320));
    v275 = v460;
    sub_218B9FA00(v318 + v319);
    os_unfair_lock_unlock((v318 + v320));
  }

  v321 = v445;
  sub_218B9D978(v267, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  if (v457 == 5)
  {
    v348 = v429;
    v349 = *&v7[v429];
    v323 = MEMORY[0x277D841D0];
    v350 = *(*v349 + *MEMORY[0x277D841D0] + 16);
    v351 = (*(*v349 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v349 + v351));
    v352 = v349 + v350;
    v353 = v438;
    sub_218B9D8F8(v352, v438, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v349 + v351));

    if (v431(v353, 1, v428))
    {
      v354 = v435;
      v355 = sub_218B9D8F8(v353, v435, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      v356 = *&v7[v348];
      MEMORY[0x28223BE20](v355);
      v357 = *(*v356 + *v323 + 16);
      v358 = (*(*v356 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v356 + v358));
      v359 = v356 + v357;
      v323 = MEMORY[0x277D841D0];
      sub_218B9FA00(v359);
      os_unfair_lock_unlock((v356 + v358));

      sub_218B9D978(v354, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      v347 = &v469;
      goto LABEL_177;
    }

    v367 = v448;
    sub_219BDBD24();
    v368 = swift_isUniquelyReferenced_nonNull_native();
    *&v468 = *(v353 + 48);
    *(v353 + 48) = 0x8000000000000000;
    v362 = v353;
    sub_21948C76C(v367, v467, v465, v368);
    *(v353 + 48) = v468;

    v364 = *&v7[v348];
    MEMORY[0x28223BE20](v369);
    v370 = *(*v364 + *v323 + 16);
    v366 = (*(*v364 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v364 + v366));
    sub_218B9FA00(v364 + v370);
  }

  else
  {
    v322 = v467;
    v323 = MEMORY[0x277D841D0];
    v324 = v429;
    if (v457 != 4)
    {
      if (v457 != 3)
      {
        goto LABEL_179;
      }

      v325 = *&v7[v429];
      v326 = *(*v325 + *MEMORY[0x277D841D0] + 16);
      v327 = (*(*v325 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v325 + v327));
      v328 = v325 + v326;
      v329 = v442;
      sub_218B9D8F8(v328, v442, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      os_unfair_lock_unlock((v325 + v327));

      if (v431(v329, 1, v428))
      {
        v330 = v433;
        v331 = sub_218B9D8F8(v329, v433, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        v332 = *&v7[v324];
        MEMORY[0x28223BE20](v331);
        v333 = *(*v332 + *v323 + 16);
        v334 = (*(*v332 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v332 + v334));
        v335 = v332 + v333;
        v323 = MEMORY[0x277D841D0];
        sub_218B9FA00(v335);
        os_unfair_lock_unlock((v332 + v334));

        sub_218B9D978(v330, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      }

      else
      {
        v372 = v448;
        sub_219BDBD24();
        v373 = swift_isUniquelyReferenced_nonNull_native();
        *&v468 = *(v329 + 32);
        *(v329 + 32) = 0x8000000000000000;
        sub_21948C76C(v372, v322, v465, v373);
        *(v442 + 32) = v468;

        v375 = *&v7[v324];
        MEMORY[0x28223BE20](v374);
        v376 = *(*v375 + *v323 + 16);
        v377 = (*(*v375 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v375 + v377));
        sub_218B9FA00(v375 + v376);
        os_unfair_lock_unlock((v375 + v377));
      }

      v347 = &v471;
      goto LABEL_177;
    }

    v336 = *&v7[v429];
    v337 = *(*v336 + *MEMORY[0x277D841D0] + 16);
    v338 = (*(*v336 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v336 + v338));
    v339 = v336 + v337;
    v340 = v437;
    sub_218B9D8F8(v339, v437, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v336 + v338));

    if (v431(v340, 1, v428))
    {
      v341 = v434;
      v342 = sub_218B9D8F8(v340, v434, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      v343 = *&v7[v324];
      MEMORY[0x28223BE20](v342);
      v344 = *(*v343 + *v323 + 16);
      v345 = (*(*v343 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v343 + v345));
      v346 = v343 + v344;
      v323 = MEMORY[0x277D841D0];
      sub_218B9FA00(v346);
      os_unfair_lock_unlock((v343 + v345));

      sub_218B9D978(v341, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      v347 = &v468 + 1;
LABEL_177:
      v371 = *(v347 - 32);
      goto LABEL_178;
    }

    v360 = v448;
    sub_219BDBD24();
    v361 = swift_isUniquelyReferenced_nonNull_native();
    *&v468 = *(v340 + 40);
    *(v340 + 40) = 0x8000000000000000;
    v362 = v340;
    sub_21948C76C(v360, v322, v465, v361);
    *(v340 + 40) = v468;

    v364 = *&v7[v324];
    MEMORY[0x28223BE20](v363);
    v365 = *(*v364 + *v323 + 16);
    v366 = (*(*v364 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v364 + v366));
    sub_218B9FA00(v364 + v365);
  }

  os_unfair_lock_unlock((v364 + v366));

  v371 = v362;
LABEL_178:
  sub_218B9D978(v371, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v324 = v429;
LABEL_179:
  v378 = *&v7[v324];
  v379 = *(*v378 + *v323 + 16);
  v380 = (*(*v378 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v378 + v380));
  sub_218B9D8F8(v378 + v379, v321, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v378 + v380));

  v381 = v428;
  if (v431(v321, 1, v428))
  {
    v382 = 0;
  }

  else
  {
    v382 = *(v321 + *(v381 + 60));
  }

  sub_218B9D978(v321, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v383 = *&v7[v324];
  v384 = *(*v383 + *v323 + 16);
  v385 = (*(*v383 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v383 + v385));
  v386 = v383 + v384;
  v387 = v447;
  sub_218B9D8F8(v386, v447, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v383 + v385));

  result = (v431)(v387, 1, v381);
  if (result)
  {
    v388 = v441;
    v389 = sub_218B9D8F8(v387, v441, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v390 = *&v7[v429];
    MEMORY[0x28223BE20](v389);
    v391 = *(*v390 + *MEMORY[0x277D841D0] + 16);
    v392 = (*(*v390 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v390 + v392));
    sub_218B9FA00(v390 + v391);
    os_unfair_lock_unlock((v390 + v392));

    v393 = v388;
    v394 = v428;
    sub_218B9D978(v393, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    goto LABEL_186;
  }

  if (__OFADD__(v382, 1))
  {
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  v394 = v381;
  *(v387 + *(v381 + 60)) = v382 + 1;
  v395 = *&v7[v429];
  MEMORY[0x28223BE20](result);
  v396 = *(*v395 + *MEMORY[0x277D841D0] + 16);
  v397 = (*(*v395 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v395 + v397));
  sub_218B9FA00(v395 + v396);
  os_unfair_lock_unlock((v395 + v397));

LABEL_186:
  a4 = v467;
  v398 = v443;
  sub_218B9D978(v447, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v399 = *&v7[v429];
  v400 = *(*v399 + *MEMORY[0x277D841D0] + 16);
  v401 = (*(*v399 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v399 + v401));
  sub_218B9D8F8(v399 + v400, v398, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v399 + v401));

  v402 = v431(v398, 1, v394);
  v466 = v275;
  if (v402)
  {
    v403 = 0;
    v404 = v429;
  }

  else
  {
    v405 = *(v398 + 56);
    v404 = v429;
    if (*(v405 + 16) && (v406 = sub_21870F700(a4, v465), (v407 & 1) != 0))
    {
      v403 = *(*(v405 + 56) + 8 * v406);
    }

    else
    {
      v403 = 0;
    }
  }

  sub_218B9D978(v398, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v408 = *&v7[v404];
  v409 = v404;
  v410 = *(*v408 + *MEMORY[0x277D841D0] + 16);
  v411 = (*(*v408 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v408 + v411));
  v412 = v444;
  sub_218B9D8F8(v408 + v410, v444, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v408 + v411));

  result = (v431)(v412, 1, v428);
  if (!result)
  {
    if (!__OFADD__(v403, 1))
    {
      v420 = swift_isUniquelyReferenced_nonNull_native();
      *&v468 = *(v412 + 56);
      *(v412 + 56) = 0x8000000000000000;
      sub_21948CAF0(v403 + 1, a4, v465, v420);
      *(v412 + 56) = v468;

      v422 = *&v7[v429];
      MEMORY[0x28223BE20](v421);
      v423 = *(*v422 + *MEMORY[0x277D841D0] + 16);
      v424 = (*(*v422 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v422 + v424));
      v425 = v466;
      sub_218B9FA00(v422 + v423);
      v460 = v425;
      os_unfair_lock_unlock((v422 + v424));
      __swift_destroy_boxed_opaque_existential_1(&v470);

      goto LABEL_196;
    }

    goto LABEL_200;
  }

  v413 = v439;
  v414 = sub_218B9D8F8(v412, v439, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v415 = *&v7[v409];
  MEMORY[0x28223BE20](v414);
  v416 = *(*v415 + *MEMORY[0x277D841D0] + 16);
  v417 = (*(*v415 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v415 + v417));
  v418 = v466;
  sub_218B9FA00(v415 + v416);
  v460 = v418;
  v419 = (v415 + v417);
  a4 = v467;
  os_unfair_lock_unlock(v419);
  __swift_destroy_boxed_opaque_existential_1(&v470);

  sub_218B9D978(v413, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
LABEL_196:
  v236 = v457;
  sub_218B9D978(v412, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v234 = 0;
  LODWORD(v467) = 1;
LABEL_127:
  v276 = *&v7[v429];
  v277 = *(*v276 + *MEMORY[0x277D841D0] + 16);
  v278 = (*(*v276 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v276 + v278));
  v279 = v454;
  sub_218B9D8F8(v276 + v277, v454, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v276 + v278));

  v280 = v428;
  if (!v431(v279, 1, v428) && (v296 = *v279, *(*v279 + 16)) && (v297 = sub_21870F700(a4, v465), (v298 & 1) != 0))
  {
    v281 = *(*(v296 + 56) + 8 * v297);

    sub_218B9D978(v279, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  }

  else
  {
    sub_218B9D978(v279, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v281 = sub_2194AFB94(MEMORY[0x277D84F90]);
  }

  v282 = swift_isUniquelyReferenced_nonNull_native();
  v470 = v281;
  sub_21948C9CC(v234, v236, v282);
  v283 = v429;
  v284 = *&v7[v429];
  v285 = v470;
  v286 = MEMORY[0x277D841D0];
  v287 = *(*v284 + *MEMORY[0x277D841D0] + 16);
  v288 = (*(*v284 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v284 + v288));
  v289 = v284 + v287;
  v290 = v462;
  sub_218B9D8F8(v289, v462, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v284 + v288));

  if (v431(v290, 1, v280))
  {

    v291 = v449;
    v292 = sub_218B9D8F8(v462, v449, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v293 = *&v7[v283];
    MEMORY[0x28223BE20](v292);
    v294 = *(*v293 + *v286 + 16);
    v295 = (*(*v293 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v293 + v295));
    sub_218B9FA00(v293 + v294);
    os_unfair_lock_unlock((v293 + v295));

    sub_218B9D978(v291, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  }

  else
  {
    v299 = v462;
    v300 = swift_isUniquelyReferenced_nonNull_native();
    v470 = *v299;
    *v299 = 0x8000000000000000;
    sub_21948C9A0(v285, a4, v465, v300);

    *v299 = v470;
    v302 = *&v7[v283];
    MEMORY[0x28223BE20](v301);
    v303 = *(*v302 + *v286 + 16);
    v304 = (*(*v302 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v302 + v304));
    sub_218B9FA00(v302 + v303);
    os_unfair_lock_unlock((v302 + v304));
  }

  sub_218B9D978(v462, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  sub_218B9D978(v426, &qword_280EE9C40, MEMORY[0x277CC9578]);
  return v467;
}

id sub_218B98880(uint64_t a1, uint64_t a2)
{
  result = [*(v2 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_configurationManager) configuration];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      v7 = [v6 channelUpsellConfigsByChannelID];
      swift_unknownObjectRelease();
      sub_2186C6148(0, &unk_280E8E168);
      v8 = sub_219BF5214();

      if (*(v8 + 16))
      {
        v9 = sub_21870F700(a1, a2);
        if (v10)
        {
          v11 = *(*(v8 + 56) + 8 * v9);

          return v11;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_218B989A0(uint64_t a1)
{
  v2 = v1;
  v110 = a1;
  swift_getObjectType();
  v3 = sub_219BDBF74();
  v117 = *(v3 - 8);
  v118 = v3;
  MEMORY[0x28223BE20](v3);
  v115 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BDBF94();
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v107 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v119 = &v107 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v121 = &v107 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v108 = &v107 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v112 = &v107 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v107 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v107 - v25;
  sub_2186DD120(0, &qword_280EE9C40, MEMORY[0x277CC9578], v6);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v107 - v28;
  v30 = sub_219BDBD34();
  v122 = *(v30 - 8);
  v123 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v120 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v107 - v33;
  sub_219BDC464();
  sub_219BDC444();
  sub_218B9F7A4(&unk_280ECF168, v35, type metadata accessor for ChannelUpsellHandler);
  sub_219BDC7D4();

  if (v124)
  {
    return 1;
  }

  v111 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord;
  v36 = *(v2 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord);
  v37 = *(*v36 + *MEMORY[0x277D841D0] + 16);
  v38 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v36 + v38));
  sub_218B9D8F8(v36 + v37, v26, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v36 + v38));

  v39 = type metadata accessor for ChannelUpsellTriggerRecord();
  v109 = *(*(v39 - 8) + 48);
  if (v109(v26, 1, v39))
  {
    sub_218B9D978(v26, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    (*(v122 + 56))(v29, 1, 1, v123);
LABEL_5:
    sub_218B9D978(v29, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v42 = v111;
    v43 = *(v2 + v111);
    v44 = MEMORY[0x277D841D0];
    v45 = *(*v43 + *MEMORY[0x277D841D0] + 16);
    v46 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v43 + v46));
    sub_218B9D8F8(v43 + v45, v13, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v43 + v46));

    v47 = v109(v13, 1, v39);
    if (v47)
    {
      v48 = sub_218B9D8F8(v13, v10, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      v49 = *(v2 + v42);
      MEMORY[0x28223BE20](v48);
      *(&v107 - 2) = v10;
      v50 = *(*v49 + *v44 + 16);
      v51 = (*(*v49 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v49 + v51));
      sub_218B9FA00(v49 + v50);
      os_unfair_lock_unlock((v49 + v51));

      v52 = v10;
LABEL_7:
      sub_218B9D978(v52, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
LABEL_10:
      v56 = v13;
LABEL_11:
      sub_218B9D978(v56, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      return 1;
    }

    *&v13[*(v39 + 60)] = 0;
    v53 = *(v2 + v42);
    MEMORY[0x28223BE20](v47);
    *(&v107 - 2) = v13;
    v54 = *(*v53 + *v44 + 16);
    v55 = (*(*v53 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v53 + v55));
    sub_218B9FA00(v53 + v54);
    os_unfair_lock_unlock((v53 + v55));
    goto LABEL_9;
  }

  sub_218B9D8F8(&v26[*(v39 + 56)], v29, &qword_280EE9C40, MEMORY[0x277CC9578]);
  sub_218B9D978(v26, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v41 = v122;
  v40 = v123;
  if ((*(v122 + 48))(v29, 1, v123) == 1)
  {
    goto LABEL_5;
  }

  v58 = *(v41 + 32);
  v107 = v34;
  v58(v34, v29, v40);
  v59 = v111;
  v60 = *(v2 + v111);
  v61 = MEMORY[0x277D841D0];
  v62 = *(*v60 + *MEMORY[0x277D841D0] + 16);
  v63 = (*(*v60 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v60 + v63));
  sub_218B9D8F8(v60 + v62, v24, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v60 + v63));

  v64 = v109;
  if (v109(v24, 1, v39))
  {
    sub_218B9D978(v24, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v65 = *(v2 + v59);
    v66 = *(*v65 + *v61 + 16);
    v67 = (*(*v65 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v65 + v67));
    v68 = v65 + v66;
    v69 = v121;
    sub_218B9D8F8(v68, v121, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v65 + v67));

    v70 = v64(v69, 1, v39);
    if (v70)
    {
      v71 = v119;
      v72 = sub_218B9D8F8(v69, v119, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      v73 = *(v2 + v59);
      MEMORY[0x28223BE20](v72);
      *(&v107 - 2) = v71;
      v74 = *(*v73 + *MEMORY[0x277D841D0] + 16);
      v75 = (*(*v73 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v73 + v75));
      sub_218B9FA00(v73 + v74);
      os_unfair_lock_unlock((v73 + v75));
      (*(v122 + 8))(v107, v123);
      v69 = v121;

      sub_218B9D978(v71, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    }

    else
    {
      *(v69 + *(v39 + 60)) = 0;
      v85 = *(v2 + v59);
      MEMORY[0x28223BE20](v70);
      *(&v107 - 2) = v69;
      v86 = *(*v85 + *MEMORY[0x277D841D0] + 16);
      v87 = (*(*v85 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v85 + v87));
      sub_218B9FA00(v85 + v86);
      os_unfair_lock_unlock((v85 + v87));
      (*(v122 + 8))(v107, v123);
    }

    v56 = v69;
    goto LABEL_11;
  }

  v121 = *&v24[*(v39 + 60)];
  sub_218B9D978(v24, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v76 = v120;
  sub_219BDBD24();
  v77 = v113;
  sub_219BDBF34();
  v79 = v117;
  v78 = v118;
  v80 = v115;
  (*(v117 + 104))(v115, *MEMORY[0x277CC9968], v118);
  v81 = v107;
  v82 = sub_219BDBF24();
  (*(v79 + 8))(v80, v78);
  (*(v114 + 8))(v77, v116);
  if ((v82 & 1) == 0)
  {
    v88 = v81;
    v89 = v111;
    v90 = *(v2 + v111);
    v91 = MEMORY[0x277D841D0];
    v92 = *(*v90 + *MEMORY[0x277D841D0] + 16);
    v93 = (*(*v90 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v90 + v93));
    v13 = v112;
    sub_218B9D8F8(v90 + v92, v112, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v90 + v93));

    v94 = v109(v13, 1, v39);
    if (v94)
    {
      v95 = v108;
      v96 = sub_218B9D8F8(v13, v108, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      v97 = *(v2 + v89);
      MEMORY[0x28223BE20](v96);
      *(&v107 - 2) = v95;
      v98 = *(*v97 + *v91 + 16);
      v99 = (*(*v97 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v97 + v99));
      sub_218B9FA00(v97 + v98);
      os_unfair_lock_unlock((v97 + v99));
      v100 = v123;
      v101 = *(v122 + 8);
      v101(v120, v123);
      v101(v88, v100);

      v52 = v95;
      goto LABEL_7;
    }

    *&v13[*(v39 + 60)] = 0;
    v102 = *(v2 + v89);
    MEMORY[0x28223BE20](v94);
    *(&v107 - 2) = v13;
    v103 = *(*v102 + *v91 + 16);
    v104 = (*(*v102 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v102 + v104));
    sub_218B9FA00(v102 + v103);
    os_unfair_lock_unlock((v102 + v104));
    v105 = v123;
    v106 = *(v122 + 8);
    v106(v120, v123);
    v106(v88, v105);
LABEL_9:

    goto LABEL_10;
  }

  v83 = v123;
  v84 = *(v122 + 8);
  v84(v76, v123);
  v84(v81, v83);
  return v121 < v110;
}

BOOL sub_218B99900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = *(v3 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord);
  v11 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v10 + v12));
  sub_218B9D8F8(v10 + v11, v9, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v10 + v12));

  v13 = type metadata accessor for ChannelUpsellTriggerRecord();
  if (!(*(*(v13 - 8) + 48))(v9, 1, v13) && (v16 = *(v9 + 7), *(v16 + 16)) && (v17 = sub_21870F700(a2, a3), (v18 & 1) != 0))
  {
    v14 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v14 = 0;
  }

  sub_218B9D978(v9, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  return v14 < a1;
}

BOOL sub_218B99AE0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v132 = a2;
  v133 = a3;
  v138 = a1;
  swift_getObjectType();
  v130 = sub_219BDBF74();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBF94();
  v131 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v129 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v137 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v135 = &v116 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v134 = &v116 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v116 - v18;
  sub_2186DD120(0, &qword_280EE9C40, MEMORY[0x277CC9578], v10);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v136 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v116 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v116 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v116 - v29;
  v31 = sub_219BDBD34();
  v141 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v126 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v116 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v139 = &v116 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v116 - v40;
  MEMORY[0x28223BE20](v39);
  v140 = &v116 - v42;
  if ([*(v5 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_pptContext) isRunningPPT])
  {
    return 0;
  }

  v124 = v8;
  v125 = v31;
  sub_219BDC464();
  sub_219BDC444();
  sub_218B9F7A4(&unk_280ECF168, v44, type metadata accessor for ChannelUpsellHandler);
  sub_219BDC7D4();

  if (v142)
  {
    return 1;
  }

  v123 = v36;
  v45 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord;
  v46 = *(v5 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord);
  v47 = *(*v46 + *MEMORY[0x277D841D0] + 16);
  v48 = (*(*v46 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v46 + v48));
  sub_218B9D8F8(v46 + v47, v19, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v46 + v48));

  v49 = type metadata accessor for ChannelUpsellTriggerRecord();
  v50 = *(*(v49 - 8) + 48);
  if (v50(v19, 1, v49))
  {
    sub_218B9D978(v19, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    (*(v141 + 56))(v30, 1, 1, v125);
LABEL_7:
    sub_218B9D978(v30, &qword_280EE9C40, MEMORY[0x277CC9578]);
    return 1;
  }

  v122 = v45;
  v121 = v50;
  sub_218B9D8F8(&v19[*(v49 + 56)], v30, &qword_280EE9C40, MEMORY[0x277CC9578]);
  sub_218B9D978(v19, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v51 = v141;
  v52 = *(v141 + 48);
  v53 = v125;
  v120 = v141 + 48;
  v119 = v52;
  if (v52(v30, 1, v125) == 1)
  {
    goto LABEL_7;
  }

  v54 = v51 + 32;
  v55 = *(v51 + 32);
  v56 = v140;
  v118 = v54;
  v117 = v55;
  v55(v140, v30, v53);
  if (v138 == 5)
  {
    v68 = *(v5 + v122);
    v69 = *(*v68 + *MEMORY[0x277D841D0] + 16);
    v70 = (*(*v68 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v68 + v70));
    v71 = v68 + v69;
    v62 = v137;
    sub_218B9D8F8(v71, v137, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v68 + v70));

    if (v121(v62, 1, v49))
    {
      v63 = v125;
      v57 = v141;
      v25 = v136;
      goto LABEL_18;
    }

    v85 = *(v62 + 6);
    v86 = v125;
    v57 = v141;
    v25 = v136;
    if (*(v85 + 16))
    {
      v87 = sub_21870F700(v132, v133);
      v88 = v124;
      if (v89)
      {
        (*(v57 + 16))(v25, *(v85 + 56) + *(v57 + 72) * v87, v86);
        v90 = 0;
      }

      else
      {
        v90 = 1;
      }
    }

    else
    {
      v90 = 1;
      v88 = v124;
    }

    (*(v57 + 56))(v25, v90, 1, v86);
    sub_218B9D978(v62, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    if (v119(v25, 1, v86) == 1)
    {
      goto LABEL_19;
    }

    v104 = v126;
    v117(v126, v25, v86);
    v105 = v129;
    sub_219BDBF34();
    v106 = v139;
    sub_219BDBD24();
    v108 = v127;
    v107 = v128;
    v109 = v130;
    (*(v128 + 104))(v127, *MEMORY[0x277CC9998], v130);
    LODWORD(v138) = sub_219BDBF24();
    v110 = v108;
    v56 = v140;
    (*(v107 + 8))(v110, v109);
    v103 = *(v57 + 8);
    v103(v106, v86);
    (*(v131 + 8))(v105, v88);
    v103(v104, v86);
  }

  else if (v138 == 4)
  {
    v64 = *(v5 + v122);
    v65 = *(*v64 + *MEMORY[0x277D841D0] + 16);
    v66 = (*(*v64 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v64 + v66));
    v67 = v64 + v65;
    v62 = v135;
    sub_218B9D8F8(v67, v135, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v64 + v66));

    if (v121(v62, 1, v49))
    {
      v63 = v125;
      v57 = v141;
      goto LABEL_18;
    }

    v78 = *(v62 + 5);
    v79 = v125;
    if (*(v78 + 16))
    {
      v80 = sub_21870F700(v132, v133);
      v81 = v124;
      v82 = v123;
      if (v83)
      {
        (*(v141 + 16))(v25, *(v78 + 56) + *(v141 + 72) * v80, v79);
        v84 = 0;
      }

      else
      {
        v84 = 1;
      }
    }

    else
    {
      v84 = 1;
      v81 = v124;
      v82 = v123;
    }

    v97 = v141;
    (*(v141 + 56))(v25, v84, 1, v79);
    sub_218B9D978(v62, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    if (v119(v25, 1, v79) == 1)
    {
      v57 = v97;
      goto LABEL_19;
    }

    v117(v82, v25, v79);
    v98 = v129;
    sub_219BDBF34();
    v99 = v139;
    sub_219BDBD24();
    v101 = v127;
    v100 = v128;
    v102 = v130;
    (*(v128 + 104))(v127, *MEMORY[0x277CC9940], v130);
    LODWORD(v138) = sub_219BDBF24();
    (*(v100 + 8))(v101, v102);
    v56 = v140;
    v103 = *(v97 + 8);
    v103(v99, v79);
    (*(v131 + 8))(v98, v81);
    v103(v82, v79);
    v57 = v97;
  }

  else
  {
    v57 = v141;
    if (v138 != 3)
    {
LABEL_20:
      v72 = v139;
      sub_219BDBD24();
      sub_219BDBBE4();
      v74 = v73;
      v75 = *(v57 + 8);
      v76 = v72;
      v77 = v125;
      v75(v76, v125);
      v75(v56, v77);
      return v74 >= a4;
    }

    v58 = *(v5 + v122);
    v59 = *(*v58 + *MEMORY[0x277D841D0] + 16);
    v60 = (*(*v58 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v58 + v60));
    v61 = v58 + v59;
    v62 = v134;
    sub_218B9D8F8(v61, v134, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v58 + v60));

    if (v121(v62, 1, v49))
    {
      v25 = v28;
      v63 = v125;
LABEL_18:
      sub_218B9D978(v62, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      (*(v57 + 56))(v25, 1, 1, v63);
LABEL_19:
      sub_218B9D978(v25, &qword_280EE9C40, MEMORY[0x277CC9578]);
      goto LABEL_20;
    }

    v91 = *(v62 + 4);
    if (*(v91 + 16))
    {
      v92 = sub_21870F700(v132, v133);
      v93 = v124;
      v94 = v125;
      if (v95)
      {
        (*(v57 + 16))(v28, *(v91 + 56) + *(v57 + 72) * v92, v125);
        v96 = 0;
      }

      else
      {
        v96 = 1;
      }
    }

    else
    {
      v96 = 1;
      v93 = v124;
      v94 = v125;
    }

    (*(v57 + 56))(v28, v96, 1, v94);
    sub_218B9D978(v62, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    if (v119(v28, 1, v94) == 1)
    {
      v25 = v28;
      goto LABEL_19;
    }

    v117(v41, v28, v94);
    v111 = v129;
    sub_219BDBF34();
    v112 = v139;
    sub_219BDBD24();
    v114 = v127;
    v113 = v128;
    v115 = v130;
    (*(v128 + 104))(v127, *MEMORY[0x277CC9968], v130);
    LODWORD(v138) = sub_219BDBF24();
    (*(v113 + 8))(v114, v115);
    v56 = v140;
    v103 = *(v57 + 8);
    v103(v112, v94);
    (*(v131 + 8))(v111, v93);
    v103(v41, v94);
  }

  if ((v138 & 1) == 0)
  {
    goto LABEL_20;
  }

  v103(v56, v125);
  return 0;
}

uint64_t sub_218B9AA84(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v7 = *(v4 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_paidAccessChecker);
    v10 = [objc_msgSend(v7 purchaseProvider)];
    v11 = sub_219BF5D44();

    LOBYTE(a1) = sub_2188537B8(a1, a2, v11);
    swift_unknownObjectRelease();

    if (a1)
    {
      v12 = [a3 subscriberUpsellArticleID];
      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      v12 = [a3 nonSubscriberUpsellArticleID];
      if (!v12)
      {
        return 0;
      }
    }

    goto LABEL_29;
  }

  v6 = [*(v4 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {
    sub_218B9E6C8(&v24, sub_21880702C);
    goto LABEL_15;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v13 = 0;
    v15 = 0;
    goto LABEL_16;
  }

  v13 = v21;
  v14 = [v21 integerValue];
  if (v14 == -1)
  {

    goto LABEL_28;
  }

  v15 = v14;
LABEL_16:
  if (objc_getAssociatedObject(v6, ~v15))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {
    sub_218B9E6C8(&v24, sub_21880702C);
LABEL_24:

    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v16 = v21;
  v17 = [v16 integerValue];

  if (((v17 ^ v15) & 1) == 0)
  {
LABEL_25:
    v12 = [a3 nonSubscriberUpsellArticleID];
    if (!v12)
    {
      return 0;
    }

LABEL_29:
    v19 = v12;
    v18 = sub_219BF5414();

    return v18;
  }

LABEL_28:
  v12 = [a3 subscriberUpsellArticleID];
  if (v12)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t sub_218B9ADC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v5 = type metadata accessor for ChannelUpsellTracker();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    a3[3] = v5;
    a3[4] = &off_282A63730;
    *a3 = v6;
  }

  else
  {
    if (qword_280EE6050 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_280F62760);
    v10 = sub_219BE5414();
    v11 = sub_219BF6214();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2186C1000, v10, v11, "No tracker provided for upsell presentation trigger.  Using local upsell manager tracker.", v12, 2u);
      MEMORY[0x21CECF960](v12, -1, -1);
    }

    v13 = a2 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_localTracker;

    return sub_218718690(v13, a3);
  }
}

uint64_t sub_218B9AF24(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE41A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  result = [a1 ignoreWebOptInStatus];
  if ((result & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    (*(v9 + 104))(v14, *MEMORY[0x277D34FD8], v8);
    (*(v9 + 16))(v12, v14, v8);
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    (*(v9 + 32))(v17 + v16, v12, v8);

    sub_219BDD154();

    return (*(v9 + 8))(v14, v8);
  }

  return result;
}

void sub_218B9B10C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v89 = a5;
  v8 = sub_219BE41A4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = v11;
  v91 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v75 - v12;
  v13 = sub_219BED174();
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x28223BE20](v13);
  v85 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_219BED1D4();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_219BED184();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    if (([a2 ignoreWebOptInStatus] & 1) == 0)
    {
      v76 = a3;
      v77 = a4;
      v78 = v9;
      v79 = v8;
      v75 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord;
      v29 = *&v28[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord];
      v30 = *(*v29 + *MEMORY[0x277D841D0] + 16);
      v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v29 + v31));
      v80 = v28;
      sub_218B9D8F8(v29 + v30, v26, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      os_unfair_lock_unlock((v29 + v31));

      v32 = type metadata accessor for ChannelUpsellTriggerRecord();
      v33 = *(*(v32 - 8) + 48);
      LODWORD(v31) = v33(v26, 1, v32);
      sub_218B9D978(v26, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      if (v31 == 1)
      {
        v34 = v80;
        v35 = v77;
        if (qword_280EE6050 != -1)
        {
          swift_once();
        }

        v36 = sub_219BE5434();
        __swift_project_value_buffer(v36, qword_280F62760);
        v37 = sub_219BE5414();
        v38 = sub_219BF61F4();
        v39 = os_log_type_enabled(v37, v38);
        v40 = v79;
        v41 = v78;
        v42 = v76;
        if (v39)
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_2186C1000, v37, v38, "Failed to save record for user link engagement because trigger record was unavailable.", v43, 2u);
          MEMORY[0x21CECF960](v43, -1, -1);
        }

        v44 = v34;
      }

      else
      {
        v45 = *&v80[v75];
        v46 = MEMORY[0x277D841D0];
        v47 = *(*v45 + *MEMORY[0x277D841D0] + 16);
        v48 = (*(*v45 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v45 + v48));
        sub_218B9D8F8(v45 + v47, v24, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        os_unfair_lock_unlock((v45 + v48));

        if (v33(v24, 1, v32))
        {
          v49 = sub_218B9D8F8(v24, v21, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
          v50 = v80;
          v51 = *&v80[v75];
          MEMORY[0x28223BE20](v49);
          *(&v75 - 2) = v21;
          v52 = *(*v51 + *v46 + 16);
          v53 = (*(*v51 + 48) + 3) & 0x1FFFFFFFCLL;

          os_unfair_lock_lock((v51 + v53));
          sub_218B9FA00(v51 + v52);
          os_unfair_lock_unlock((v51 + v53));

          sub_218B9D978(v21, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
          v41 = v78;
          v35 = v77;
          v42 = v76;
        }

        else
        {
          v35 = v77;

          v54 = v46;
          v42 = v76;
          v55 = sub_219497B60(aBlock, v76, v35);
          v50 = v80;
          v56 = *&v80[v75];
          MEMORY[0x28223BE20](v55);
          *(&v75 - 2) = v24;
          v57 = *(*v56 + *v54 + 16);
          v58 = (*(*v56 + 48) + 3) & 0x1FFFFFFFCLL;

          os_unfair_lock_lock((v56 + v58));
          sub_218B9FA00(v56 + v57);
          os_unfair_lock_unlock((v56 + v58));

          v41 = v78;
        }

        sub_218B9D978(v24, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        sub_2186C6148(0, &qword_280E8E3B0);
        v59 = v81;
        v60 = v82;
        (*(v81 + 104))(v17, *MEMORY[0x277D851B8], v82);
        v61 = sub_219BF66E4();
        (*(v59 + 8))(v17, v60);
        v62 = swift_allocObject();
        *(v62 + 16) = v50;
        aBlock[4] = sub_218B9E56C;
        aBlock[5] = v62;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_218793E0C;
        aBlock[3] = &block_descriptor_55;
        v63 = _Block_copy(aBlock);
        v64 = v50;
        v65 = v83;
        sub_219BED1A4();
        v93 = MEMORY[0x277D84F90];
        sub_218B9F7A4(&qword_280E927E0, 255, MEMORY[0x277D85198]);
        sub_2186DD120(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_21874EB68();
        v66 = v85;
        v67 = v88;
        sub_219BF7164();
        MEMORY[0x21CECD460](0, v65, v66, v63);
        _Block_release(v63);

        (*(v87 + 8))(v66, v67);
        v68 = v65;
        v44 = v80;
        (*(v84 + 8))(v68, v86);

        v40 = v79;
      }

      __swift_project_boxed_opaque_existential_1(v89, v89[3]);
      v69 = v92;
      (*(v41 + 104))(v92, *MEMORY[0x277D34FD0], v40);
      v70 = v91;
      (*(v41 + 16))(v91, v69, v40);
      v71 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = v42;
      *(v72 + 24) = v35;
      (*(v41 + 32))(v72 + v71, v70, v40);

      sub_219BDD154();

      (*(v41 + 8))(v69, v40);
      v73 = &v44[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellCancellationClosure];
      v74 = *&v44[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellCancellationClosure];
      *v73 = 0;
      *(v73 + 1) = 0;
      sub_2187FABEC(v74);
      v28 = v44;
    }
  }
}