unint64_t sub_2192F219C()
{
  result = qword_280E90ED0;
  if (!qword_280E90ED0)
  {
    sub_219BF0644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90ED0);
  }

  return result;
}

unint64_t sub_2192F21F8()
{
  result = qword_280EC2DB0;
  if (!qword_280EC2DB0)
  {
    type metadata accessor for TodayFeedServiceContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC2DB0);
  }

  return result;
}

uint64_t sub_2192F2298(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  type metadata accessor for MagazineSectionBarViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  v8 = a3;

  swift_unownedRetain();

  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a4;
  v9[4] = v5;
  v10 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v10)
  {
    sub_2192F2648();
    sub_219BEA8C4();
    swift_allocObject();

    v12 = sub_219BEA8A4();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192F23EC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a3;
  v12[2] = a4;
  v13 = sub_219BE15B4();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = a2;
  v15 = MEMORY[0x277D6E490];
  sub_218809C38();
  v9 = a2;
  sub_219BE1B84();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineSectionBarConfig();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  v10 = v13;
  (*(v6 + 104))(v8, *MEMORY[0x277D2F4E0], v13);
  sub_219BDD0F4();

  (*(v6 + 8))(v8, v10);
  sub_219BDD274();
  sub_219BE1B94();
}

unint64_t sub_2192F2648()
{
  result = qword_280EA5FF0;
  if (!qword_280EA5FF0)
  {
    type metadata accessor for MagazineSectionBarViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5FF0);
  }

  return result;
}

uint64_t type metadata accessor for FollowingSubscriptionsMoveModifier()
{
  result = qword_27CC18848;
  if (!qword_27CC18848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2192F2714()
{
  type metadata accessor for FollowingTagModel();
  if (v0 <= 0x3F)
  {
    sub_219BDC104();
    if (v1 <= 0x3F)
    {
      sub_2192F34D0(319, &qword_27CC16390, MEMORY[0x277D6E3E0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2192F27CC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v88 = a3;
  v89 = a2;
  v92 = a1;
  sub_2192F3410(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x28223BE20](v4);
  v87 = (&v68 - v5);
  v76 = sub_219BE7654();
  v75 = *(v76 - 8);
  v6 = MEMORY[0x28223BE20](v76);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = &v68 - v8;
  v9 = sub_219BE91F4();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x28223BE20](v9);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192F3410(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v12 = v11;
  v83 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v82 = &v68 - v13;
  v14 = MEMORY[0x277D6D3F0];
  sub_218EF135C(0, &unk_280EE5C60, &qword_280EE5C70, MEMORY[0x277D6D3F0], sub_2192F34D0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v68 - v16;
  sub_2192F34D0(0, &qword_280EE5C70, v14);
  v85 = *(v18 - 8);
  v86 = v18;
  MEMORY[0x28223BE20](v18);
  v81 = &v68 - v19;
  v20 = MEMORY[0x277D6D710];
  sub_218EF135C(0, &unk_280EE5740, &qword_280EE5750, MEMORY[0x277D6D710], sub_2192F3410);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v68 - v22;
  sub_2192F3410(0, &qword_280EE5750, v20);
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24);
  v80 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v93 = &v68 - v29;
  v74 = v3;
  v30 = *v3;
  v31 = *(*v3 + 16);
  v32 = *(*v3 + 24);
  v95 = 0;
  v96 = 0xE000000000000000;
  v94 = v31;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v33 = [*(v32 + 16) identifier];
  v34 = sub_219BF5414();
  v36 = v35;

  MEMORY[0x21CECC330](v34, v36);

  v84 = v12;
  v37 = v92;
  sub_219BEB244();

  if ((*(v26 + 48))(v23, 1, v25) == 1)
  {
    v38 = &unk_280EE5740;
    v39 = &qword_280EE5750;
    v40 = MEMORY[0x277D6D710];
    v41 = sub_2192F3410;
    v42 = v23;
LABEL_5:
    sub_218EF140C(v42, v38, v39, v40, v41);
    sub_2192F356C();
    v49 = swift_allocError();
    v50 = v87;
    *v87 = v49;
    v52 = v90;
    v51 = v91;
    (*(v90 + 104))(v50, *MEMORY[0x277D6DF68], v91);
    v89(v50);
    return (*(v52 + 8))(v50, v51);
  }

  (*(v26 + 32))(v93, v23, v25);
  v43 = *(v30 + 16);
  v44 = *(v30 + 24);
  v95 = 0;
  v96 = 0xE000000000000000;
  v94 = v43;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v45 = [*(v44 + 16) identifier];
  v46 = sub_219BF5414();
  v48 = v47;

  MEMORY[0x21CECC330](v46, v48);

  sub_219BE6A64();

  if ((*(v85 + 48))(v17, 1, v86) == 1)
  {
    (*(v26 + 8))(v93, v25);
    v38 = &unk_280EE5C60;
    v39 = &qword_280EE5C70;
    v40 = MEMORY[0x277D6D3F0];
    v41 = sub_2192F34D0;
    v42 = v17;
    goto LABEL_5;
  }

  (*(v85 + 32))(v81, v17, v86);
  v71 = v26;
  (*(v26 + 16))(v80, v93, v25);
  type metadata accessor for FollowingSubscriptionsMoveModifier();
  sub_219BDC0E4();
  sub_219BE6964();
  (*(v83 + 16))(v82, v37, v84);
  sub_219BEB234();
  v54 = v77;
  v55 = v78;
  v56 = *(v78 + 104);
  v70 = *MEMORY[0x277D6E440];
  v57 = v79;
  v69 = v56;
  v56(v77);
  v74 = sub_219BE9034();
  v78 = *(v55 + 8);
  (v78)(v54, v57);
  v58 = v72;
  sub_219BE9084();
  v59 = v75;
  v60 = v73;
  v61 = v76;
  (*(v75 + 104))(v73, *MEMORY[0x277D6DAA0], v76);
  v62 = sub_219BE7644();
  v63 = *(v59 + 8);
  v63(v60, v61);
  v63(v58, v61);
  type metadata accessor for FollowingModel();
  sub_2187490E4();
  sub_2186D58DC(&qword_280EDC630, type metadata accessor for FollowingModel);
  v64 = v87;
  if (v62)
  {
    v65 = v82;
    sub_219BE8574();
    v89(v64);
    (*(v90 + 8))(v64, v91);
    v66 = v79;
    v69(v54, v70, v79);
    sub_219BE9204();

    (v78)(v54, v66);
  }

  else
  {
    v65 = v82;
    sub_219BE85B4();
    v89(v64);

    (*(v90 + 8))(v64, v91);
  }

  (*(v83 + 8))(v65, v84);
  v67 = *(v71 + 8);
  v67(v80, v25);
  (*(v85 + 8))(v81, v86);
  return (v67)(v93, v25);
}

uint64_t sub_2192F3314(uint64_t a1)
{
  v2 = sub_2186D58DC(&qword_27CC0E0A0, type metadata accessor for FollowingSubscriptionsMoveModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_2192F3410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D58DC(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2192F34D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FollowingModel();
    v7 = sub_2186D58DC(&qword_280EDC630, type metadata accessor for FollowingModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2192F356C()
{
  result = qword_27CC18860;
  if (!qword_27CC18860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18860);
  }

  return result;
}

unint64_t sub_2192F35D4()
{
  result = qword_27CC18868;
  if (!qword_27CC18868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18868);
  }

  return result;
}

uint64_t sub_2192F3644(void *a1, void *a2, unint64_t a3)
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000010, 0x8000000219D16D00);
  v6 = [a1 description];
  v7 = sub_219BF5414();
  v9 = v8;

  MEMORY[0x21CECC330](v7, v9);

  MEMORY[0x21CECC330](0xD000000000000011, 0x8000000219D16D20);
  v10 = [a2 description];
  v11 = sub_219BF5414();
  v13 = v12;

  MEMORY[0x21CECC330](v11, v13);

  MEMORY[0x21CECC330](0xD000000000000014, 0x8000000219D16D40);
  if (a3 >> 62)
  {
    sub_219BF7214();
  }

  v14 = sub_219BF7894();
  MEMORY[0x21CECC330](v14);

  MEMORY[0x21CECC330](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_2192F3804()
{
  sub_21896FA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = *(v0 + 24);
  v9 = sub_219BDFA44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = v8;
  sub_2187B14CC(v28, &v23, &unk_280EE7DB0, &qword_280EE7DC0);
  if (*(&v24 + 1))
  {
    sub_21875F93C(&v23, v25);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2187448D0(&v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
  }

  v22[1] = 0xF000000000000018;
  v24 = 0u;
  v23 = 0u;
  sub_2189B4E2C(v7, v5);
  sub_2187B14CC(v30, v25, &qword_280EE33A0, &qword_280EE33B0);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_2189B4EAC(v5, v16 + v13);
  v17 = v16 + v14;
  v18 = v25[1];
  *v17 = v25[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  v19 = (v16 + v15);
  v20 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  *v20 = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_2188202A8(v10);
  sub_2186CF94C();
  sub_2192F3E28(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v10);
  sub_2187448D0(v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v30, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

uint64_t sub_2192F3E28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for SportsMastheadTagFeedGroupConfigData()
{
  result = qword_280E9A5B8;
  if (!qword_280E9A5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2192F3EE4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192F4414(0, &qword_280E8C838, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192F43C0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 33;
    v13 = type metadata accessor for SportsMastheadTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2192F414C(void *a1)
{
  v3 = v1;
  sub_2192F4414(0, &qword_27CC18870, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192F43C0();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsMastheadTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2192F4318(uint64_t a1)
{
  v2 = sub_2192F43C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192F4354(uint64_t a1)
{
  v2 = sub_2192F43C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2192F43C0()
{
  result = qword_280E9A5E8[0];
  if (!qword_280E9A5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9A5E8);
  }

  return result;
}

void sub_2192F4414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192F43C0();
    v7 = a3(a1, &type metadata for SportsMastheadTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2192F448C()
{
  result = qword_27CC18878;
  if (!qword_27CC18878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18878);
  }

  return result;
}

unint64_t sub_2192F44E4()
{
  result = qword_280E9A5D8;
  if (!qword_280E9A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9A5D8);
  }

  return result;
}

unint64_t sub_2192F453C()
{
  result = qword_280E9A5E0;
  if (!qword_280E9A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9A5E0);
  }

  return result;
}

size_t sub_2192F4590(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v61 = a7;
  v75 = a6;
  v69 = a4;
  v70 = a5;
  v56 = a3;
  v9 = sub_219BE0EC4();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BDF3D4();
  v55 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_219BDF3C4();
  v12 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE0984();
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v60 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v54 - v17;
  v18 = sub_219BE02A4();
  v58 = *(v18 - 8);
  v59 = v18;
  MEMORY[0x28223BE20](v18);
  v57 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_219BE0484();
  v20 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BDF104();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 asChannel])
  {
    sub_219BE01F4();
    sub_2192F53F8(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    sub_219BDCCC4();
    swift_unknownObjectRelease();
    (*(v24 + 8))(v26, v23);
  }

  sub_219BE0474();
  sub_2192F53F8(&unk_280EE83F0, MEMORY[0x277D2E550]);
  v27 = v68;
  sub_219BDCCC4();
  (*(v20 + 8))(v22, v27);
  v28 = v75;
  v30 = v66;
  v29 = v67;
  if (v75 >> 62)
  {
    v31 = sub_219BF7214();
  }

  else
  {
    v31 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v31)
  {
    v76 = MEMORY[0x277D84F90];
    result = sub_218C37080(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      __break(1u);
      return result;
    }

    v54 = 0x8000000219D16DB0;
    v56 = a1;
    v33 = 0;
    v34 = v76;
    v35 = v28;
    v70 = v28 & 0xC000000000000001;
    LODWORD(v69) = *MEMORY[0x277D2DA60];
    v36 = (v55 + 104);
    v68 = v12 + 32;
    v37 = v31;
    do
    {
      if (v70)
      {
        v38 = MEMORY[0x21CECE0F0](v33, v35);
      }

      else
      {
        v38 = *(v35 + 8 * v33 + 32);
      }

      v39 = v38;
      v40 = [v38 purchaseID];
      sub_219BF5414();

      (*v36)(v73, v69, v74);
      v41 = v71;
      sub_219BDF3B4();

      v76 = v34;
      v43 = *(v34 + 16);
      v42 = *(v34 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_218C37080(v42 > 1, v43 + 1, 1);
        v34 = v76;
      }

      ++v33;
      *(v34 + 16) = v43 + 1;
      (*(v12 + 32))(v34 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v43, v41, v72);
      v35 = v75;
    }

    while (v37 != v33);
    v30 = v66;
    v29 = v67;
  }

  v44 = v57;
  sub_219BE0294();
  sub_2192F53F8(&qword_280EE8448, MEMORY[0x277D2E440]);
  v45 = v59;
  sub_219BDCCC4();
  (*(v58 + 8))(v44, v45);
  if (sub_219BF5A04() & 1) != 0 && (sub_219BF59F4())
  {
    v46 = MEMORY[0x277D2E958];
    v47 = v60;
  }

  else
  {
    v48 = sub_219BF5A04();
    v47 = v60;
    if (v48)
    {
      v46 = MEMORY[0x277D2E950];
    }

    else
    {
      v49 = sub_219BF59F4();
      v46 = MEMORY[0x277D2E958];
      if (v49)
      {
        v46 = MEMORY[0x277D2E948];
      }
    }
  }

  v51 = v62;
  v50 = v63;
  v52 = v64;
  (*(v63 + 104))(v62, *v46, v64);
  (*(v50 + 16))(v47, v51, v52);
  v53 = v65;
  sub_219BE0EB4();
  sub_2192F53F8(&qword_27CC18890, MEMORY[0x277D2EDB0]);
  sub_219BDCCC4();
  (*(v30 + 8))(v53, v29);
  sub_219BE1264();
  sub_2192F53F8(&qword_27CC18888, MEMORY[0x277D2F0B8]);
  sub_219BDCCD4();
  return (*(v50 + 8))(v51, v52);
}

uint64_t sub_2192F4EC0()
{
  sub_2192F5390();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE0AC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE0EA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x277D2EAB0], v3);
  v11 = *MEMORY[0x277D2EC78];
  v12 = sub_219BE0CF4();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v2, v11, v12);
  (*(v13 + 56))(v2, 0, 1, v12);
  sub_219BE0E94();
  sub_2192F53F8(&qword_280EE8170, MEMORY[0x277D2EDA0]);
  sub_219BDCCC4();
  (*(v8 + 8))(v10, v7);
  sub_219BE0AD4();
  sub_2192F53F8(&qword_27CC152B8, MEMORY[0x277D2EAF8]);
  memset(v15, 0, sizeof(v15));
  sub_219BDCCE4();
  return sub_218806FD0(v15);
}

uint64_t sub_2192F5204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v11;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a1;
  v12[7] = a5;
  swift_unknownObjectRetain();

  sub_219BDD154();
}

uint64_t sub_2192F52D0()
{
  sub_219BE1264();
  sub_2192F53F8(&qword_27CC18888, MEMORY[0x277D2F0B8]);
  return sub_219BDD234();
}

void sub_2192F5390()
{
  if (!qword_280EE8198)
  {
    sub_219BE0CF4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8198);
    }
  }
}

uint64_t sub_2192F53F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SuperfeedMastheadView()
{
  result = qword_280EC9800;
  if (!qword_280EC9800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2192F54E0(double a1, double a2, double a3, double a4)
{
  v9 = qword_280EC9828;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v10 = qword_280EC9818;
  *&v4[v10] = [objc_allocWithZone(sub_219BE5DF4()) initWithFrame_];
  v11 = qword_280EC9820;
  *&v4[v11] = [objc_allocWithZone(sub_219BEB3F4()) initWithFrame_];
  v12 = qword_280EC9810;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for SuperfeedMastheadView();
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[qword_280EC9828];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];

  return v15;
}

void sub_2192F56D4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for SuperfeedMastheadView();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  [v1 gutterViewBoundsDidChange];
}

void sub_2192F5740()
{
  v1 = *(v0 + qword_280EC9810);
}

id sub_2192F57A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuperfeedMastheadView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2192F57D8(uint64_t a1)
{
  v2 = *(a1 + qword_280EC9810);
}

void sub_2192F584C(void *a1)
{
  v1 = a1;
  sub_219BF6C54();
  sub_219BF6C54();
  sub_219BF6C54();
  sub_219BF6C54();
}

void sub_2192F58D8()
{
  v1 = qword_280EC9828;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = qword_280EC9818;
  *(v0 + v2) = [objc_allocWithZone(sub_219BE5DF4()) initWithFrame_];
  v3 = qword_280EC9820;
  *(v0 + v3) = [objc_allocWithZone(sub_219BEB3F4()) initWithFrame_];
  v4 = qword_280EC9810;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_219BF7514();
  __break(1u);
}

NewsUI2::AppReviewRequestState __swiftcall AppReviewRequestState.incrementingArticleSaveCount()()
{
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    *v0 = *v1 + 1;
    *(v0 + 8) = *(v1 + 8);
    *(v0 + 24) = v2;
  }

  return result;
}

NewsUI2::AppReviewRequestState __swiftcall AppReviewRequestState.incrementingArticleLikeCount()()
{
  v2 = *(v1 + 8);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *v0 = *v1;
    *(v0 + 8) = v4;
    *(v0 + 16) = *(v1 + 16);
  }

  return result;
}

NewsUI2::AppReviewRequestState __swiftcall AppReviewRequestState.decrementingArticleLikeCount()()
{
  v2 = *(v1 + 8);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *v0 = *v1;
    *(v0 + 8) = v4 & ~(v4 >> 63);
    *(v0 + 16) = *(v1 + 16);
  }

  return result;
}

NewsUI2::AppReviewRequestState __swiftcall AppReviewRequestState.incrementingArticleShareCount()()
{
  v2 = *(v1 + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + 24);
    *v0 = *v1;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
  }

  return result;
}

NewsUI2::AppReviewRequestState __swiftcall AppReviewRequestState.incrementingEndOfArticleReadCount()()
{
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + 16);
    *v0 = *v1;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
  }

  return result;
}

unint64_t sub_2192F5AB8()
{
  v1 = 0xD000000000000015;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000010;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2192F5B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2192F6198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2192F5B48(uint64_t a1)
{
  v2 = sub_2192F5D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192F5B84(uint64_t a1)
{
  v2 = sub_2192F5D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppReviewRequestState.encode(to:)(void *a1)
{
  sub_2192F5FDC(0, &qword_27CC18898, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 8);
  v11[1] = *(v1 + 16);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192F5D7C();
  sub_219BF7B44();
  v15 = 0;
  v9 = v11[3];
  sub_219BF7824();
  if (!v9)
  {
    v14 = 1;
    sub_219BF7824();
    v13 = 2;
    sub_219BF7824();
    v12 = 3;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2192F5D7C()
{
  result = qword_27CC188A0;
  if (!qword_27CC188A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC188A0);
  }

  return result;
}

uint64_t AppReviewRequestState.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2192F5FDC(0, &qword_27CC188A8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192F5D7C();
  sub_219BF7B34();
  if (!v2)
  {
    v19 = 0;
    v10 = sub_219BF7724();
    v18 = 1;
    v11 = sub_219BF7724();
    v17 = 2;
    v15 = sub_219BF7724();
    v16 = 3;
    v13 = sub_219BF7724();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v15;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2192F5FDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192F5D7C();
    v7 = a3(a1, &type metadata for AppReviewRequestState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2192F6094()
{
  result = qword_27CC188B0;
  if (!qword_27CC188B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC188B0);
  }

  return result;
}

unint64_t sub_2192F60EC()
{
  result = qword_27CC188B8;
  if (!qword_27CC188B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC188B8);
  }

  return result;
}

unint64_t sub_2192F6144()
{
  result = qword_27CC188C0;
  if (!qword_27CC188C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC188C0);
  }

  return result;
}

uint64_t sub_2192F6198(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000219D16ED0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219D16EF0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D16F10 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D16F30 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_219BF78F4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2192F6308()
{
  if (*v0)
  {
    return 0x6F43756F59726F66;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_2192F6350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43756F59726F66 && a2 == 0xED0000746E65746ELL)
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

uint64_t sub_2192F6434(uint64_t a1)
{
  v2 = sub_2192F6A8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192F6470(uint64_t a1)
{
  v2 = sub_2192F6A8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2192F64AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_2186D8FA8(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BF1934();
  v26 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192F6B48(0, &qword_280E8C8B8, MEMORY[0x277D844C8]);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for MySportsTopicTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192F6A8C();
  sub_219BF7B34();
  if (v2)
  {
    v22 = a1;
  }

  else
  {
    v23 = v13;
    v24 = a1;
    v14 = v26;
    v32 = 0;
    sub_218933D7C(&qword_280E90808);
    v15 = v27;
    v16 = v29;
    sub_219BF7734();
    (*(v14 + 32))(v23, v15, v30);
    v31 = 1;
    sub_219BF7734();
    (*(v28 + 8))(v10, v16);
    (*(v14 + 56))(v6, 0, 1, v30);
    v18 = *(v11 + 20);
    v19 = v23;
    sub_2192F6AE0(v6, &v23[v18], sub_2186D8FA8);
    v20 = v19;
    v21 = v24;
    sub_2192F6AE0(v20, v25, type metadata accessor for MySportsTopicTagFeedGroupConfigData);
    v22 = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_2192F689C(void *a1)
{
  sub_2192F6B48(0, &qword_280E8C280, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192F6A8C();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for MySportsTopicTagFeedGroupConfigData();
    v9[14] = 1;
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2192F6A8C()
{
  result = qword_280E9CFC8[0];
  if (!qword_280E9CFC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9CFC8);
  }

  return result;
}

uint64_t sub_2192F6AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2192F6B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192F6A8C();
    v7 = a3(a1, &type metadata for MySportsTopicTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2192F6BE8()
{
  result = qword_27CC188C8;
  if (!qword_27CC188C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC188C8);
  }

  return result;
}

unint64_t sub_2192F6C40()
{
  result = qword_280E9CFB8;
  if (!qword_280E9CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CFB8);
  }

  return result;
}

unint64_t sub_2192F6C98()
{
  result = qword_280E9CFC0;
  if (!qword_280E9CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CFC0);
  }

  return result;
}

uint64_t sub_2192F6D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218C90C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF4C0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C90CC8(a1, v8);
  v14 = *(v11 + 48);
  if (v14(v8, 1, v10) == 1)
  {
    type metadata accessor for SearchFeedServiceConfig();
    sub_218C90E50(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
    sub_219BEE974();
    if (v14(v8, 1, v10) != 1)
    {
      sub_218C90D2C(v8);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v8, v10);
  }

  (*(v11 + 32))(a3, v13, v10);
  if (!a2)
  {
    v16[1] = 12;
    sub_2186F9548();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  sub_218C90D2C(a1);
  result = type metadata accessor for RecipesSearchFeedGroupKnobs();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2192F6FA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  sub_218C90C1C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192F7518(0, &qword_280E8CC90, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192F74C4();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2186FF4C0(0);
    v15 = 0;
    sub_218C90E50(&unk_280E91A00, sub_2186FF4C0);
    sub_219BF7674();
    sub_2186F9548();
    v14 = 1;
    sub_218C90E50(&qword_280E913B8, sub_2186F9548);
    sub_219BF7674();
    sub_2192F6D14(v6, v13[1], v13[0]);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2192F7204(void *a1)
{
  v3 = v1;
  sub_2192F7518(0, &qword_27CC188D0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192F74C4();
  sub_219BF7B44();
  v13 = 0;
  sub_2186FF4C0(0);
  sub_218C90E50(&qword_27CC10588, sub_2186FF4C0);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for RecipesSearchFeedGroupKnobs() + 20));
    v11[15] = 1;
    sub_2186F9548();
    sub_218C90E50(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2192F741C(uint64_t a1)
{
  v2 = sub_2192F74C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192F7458(uint64_t a1)
{
  v2 = sub_2192F74C4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2192F74C4()
{
  result = qword_280EB7528[0];
  if (!qword_280EB7528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB7528);
  }

  return result;
}

void sub_2192F7518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192F74C4();
    v7 = a3(a1, &type metadata for RecipesSearchFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2192F7590()
{
  result = qword_27CC188D8;
  if (!qword_27CC188D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC188D8);
  }

  return result;
}

unint64_t sub_2192F75E8()
{
  result = qword_280EB7518;
  if (!qword_280EB7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7518);
  }

  return result;
}

unint64_t sub_2192F7640()
{
  result = qword_280EB7520;
  if (!qword_280EB7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7520);
  }

  return result;
}

unint64_t sub_2192F76BC()
{
  result = qword_27CC0FAD0;
  if (!qword_27CC0FAD0)
  {
    type metadata accessor for SportsFavoritesModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FAD0);
  }

  return result;
}

uint64_t sub_2192F7714(uint64_t a1, uint64_t a2)
{
  sub_218718690(*v2 + 16, v9);
  v8[0] = 0x6D726177657250;
  v8[1] = 0xE700000000000000;
  v9[5] = a1;
  v9[6] = a2;
  sub_2192F7A24(v8, &v7);
  sub_2192F78F4();
  swift_allocObject();
  sub_2192F7A80();

  v5 = sub_219BE6E64();
  sub_2192F7AD4(v8);
  return v5;
}

uint64_t sub_2192F77D8(uint64_t a1, uint64_t a2)
{
  sub_218718690(*v2 + 16, v9);
  v8[0] = 0x657461647055;
  v8[1] = 0xE600000000000000;
  v9[5] = a1;
  v9[6] = a2;
  sub_2192F7898(v8, &v7);
  sub_2192F78F4();
  swift_allocObject();
  sub_2192F797C();

  v5 = sub_219BE6E64();
  sub_2192F79D0(v8);
  return v5;
}

void sub_2192F78F4()
{
  if (!qword_27CC188E0)
  {
    type metadata accessor for SportsFavoritesModel();
    sub_2189A3D68();
    sub_2192F76BC();
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC188E0);
    }
  }
}

unint64_t sub_2192F797C()
{
  result = qword_27CC188E8;
  if (!qword_27CC188E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC188E8);
  }

  return result;
}

unint64_t sub_2192F7A80()
{
  result = qword_27CC188F0;
  if (!qword_27CC188F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC188F0);
  }

  return result;
}

void sub_2192F7B28(void *a1)
{
  v2 = [a1 imageForState_];
  if (v2)
  {
    v3 = v2;
    sub_218725F94();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C189F0;
    v5 = objc_opt_self();
    *(v4 + 32) = [v5 labelColor];
    *(v4 + 40) = [v5 secondarySystemFillColor];
    sub_2186F8B0C();
    v6 = sub_219BF5904();

    v7 = [objc_opt_self() configurationWithPaletteColors_];

    v8 = [v3 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v8 = 0;
  }

  [a1 setImage:v8 forState:0];
}

unint64_t sub_2192F7C88()
{
  v1 = type metadata accessor for ChannelSectionsGroupSectionModel();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218725F94();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C189F0;
  *(v5 + 32) = *v0;
  v6 = type metadata accessor for ChannelSectionsGroupModel();
  *(v5 + 40) = *(v0 + *(v6 + 20) + 40);
  v7 = *(v0 + *(v6 + 24));
  v8 = *(v7 + 16);
  if (v8)
  {
    v14 = MEMORY[0x277D84F90];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_219BF73F4();
    v9 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_2192F7E94(v9, v4);
      swift_unknownObjectRetain();
      sub_2192F7EF8(v4);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v9 += v10;
      --v8;
    }

    while (v8);
    v11 = v14;
  }

  else
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v5;
  sub_2191ED550(v11);
  return v14;
}

uint64_t type metadata accessor for ChannelSectionsGroupModel()
{
  result = qword_280EBF360;
  if (!qword_280EBF360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2192F7E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelSectionsGroupSectionModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2192F7EF8(uint64_t a1)
{
  v2 = type metadata accessor for ChannelSectionsGroupSectionModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2192F7F7C()
{
  sub_2186D80B0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChannelSectionsGroupSectionModel();
    if (v1 <= 0x3F)
    {
      sub_218DA2540(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2192F8018()
{
  type metadata accessor for SportsFavoritesConfig();
  sub_219BE2904();

  type metadata accessor for SportsFavoritesViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_27CC188F8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC18900);
  sub_219BE2914();
  type metadata accessor for SportsFavoritesRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC18908);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC18910);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC18918);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC18920);
  sub_219BE2914();

  sub_218A790CC(0);
  sub_219BE2904();

  type metadata accessor for SportsFavoritesBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC18928);
  sub_219BE2914();

  sub_2192FC298();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2192FCA44();
  sub_219BE2904();

  sub_2192FCC38();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2192FC384();
  sub_219BE2904();

  sub_2192FCB80();
  sub_219BE2904();

  sub_218A791B0(0);
  sub_219BE2904();

  type metadata accessor for SportsFavoritesBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2192FCCCC();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();

  sub_2192FC48C();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_218B20760(0, &unk_280E8FFF8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D34068]);
  sub_219BE2904();

  sub_2192FC608();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2192FC7D8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2192FC958();
  sub_219BE2904();

  type metadata accessor for SportsFavoritesBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SportsFavoritesBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_2192FCE08();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2192FCE9C();
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2192FCF30();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();
}

uint64_t sub_2192F8AE0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC188F8);
  result = sub_219BE1E34();
  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC18908);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FCCCC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A791B0(0);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v7);
    v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = sub_2192FD40C(*v9, v3, v4, v5, v6);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v15);
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2192F8D0C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2192FCF30();
  result = sub_219BE1E24();
  if (result)
  {
    *(v2 + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_selectionProvider + 8) = sub_2192FD978(&qword_27CC18A38, sub_2192FCF30);
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192F8DD4@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v10 = sub_2192FD978(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for SportsFavoritesStyler();
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
    a2[4] = &off_282A524F0;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192F9034@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190D030C(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BDD274();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for SportsFavoritesRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A75178;
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

void sub_2192F9168(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsFavoritesViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2192F91E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC18910);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC18900);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC18920);
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
    v15 = sub_2192FD76C(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A77558;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2192F9498@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC18918);
  result = sub_219BE1E34();
  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FC298();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsFavoritesBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsFavoritesConfig();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  v13 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2192FD978(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  sub_219BE89E4();
  swift_allocObject();
  v8 = sub_219BE8994();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190D030C(0, &qword_280E90710, sub_2186F7720, &type metadata for TagFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    sub_2192FD370();
    v10 = swift_allocObject();
    v10[3] = 0;
    swift_unknownObjectWeakInit();
    v10[6] = v15;
    v10[7] = v16;
    v10[4] = v5;
    v10[5] = v6;
    v10[8] = v7;
    v10[9] = v8;
    v10[10] = v9;
    *(v15 + 24) = &off_282A6D928;
    swift_unknownObjectWeakAssign();
    swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();

    v11 = v9;
    v12 = sub_219BF1AF4();
    swift_unknownObjectRelease();

    *v13 = v10;
    v13[1] = &off_282A6D938;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2192F9854@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20);
    result = sub_219BE1E34();
    if (v7)
    {
      type metadata accessor for SportsFavoritesDataManager();
      v5 = swift_allocObject();
      v5[3] = 0;
      swift_unknownObjectWeakInit();
      v5[4] = v9;
      v5[5] = v10;
      v5[6] = v7;
      v5[7] = v8;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      sub_219274F10(v6, v9);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      *a2 = v5;
      a2[1] = &off_282A37BC8;
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

uint64_t sub_2192F99B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SportsFavoritesTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A4AD00;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192F9A64(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC18928);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for SportsFavoritesModelFactory();
    v14[3] = v7;
    v14[4] = &off_282A97210;
    v14[0] = v6;
    type metadata accessor for SportsFavoritesBlueprintModifierFactory();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_282A97210;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192F9C74@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SportsFavoritesModelFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A97210;
  *a1 = result;
  return result;
}

uint64_t sub_2192F9CBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A790CC(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2192FC384();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2192FC298();
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

uint64_t sub_2192F9DA4(uint64_t a1, void *a2)
{
  sub_2192FD190(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_2192FD1B0(0, &qword_27CC18A58, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_2192FD978(&qword_27CC18A60, sub_2192FD190);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2192FCA44();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_2192FD978(&qword_27CC18A68, sub_2192FCA44);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192F9F3C(void *a1)
{
  sub_218B20694(0, &qword_280EE3A90, MEMORY[0x277D6EB30]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsFavoritesBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FCB80();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FCC38();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2192FCA44();
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2192FA0BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A791B0(0);
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
    sub_2192FCC38();
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2192FA264(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FC48C();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_2192FC384();
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

uint64_t sub_2192FA3BC(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2192FA400(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20760(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for SportsFavoritesConfig();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for SportsFavoritesBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
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

uint64_t sub_2192FA4EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A790CC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FC48C();
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
  sub_2192FCE08();
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
    sub_2192FD978(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_2192FCCCC();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2192FA7F8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_2192FD978(&qword_280E8FF80, MEMORY[0x277D34268]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2192FCC38();
  if (sub_219BE1E24())
  {
    sub_2192FD978(&qword_27CC18A48, sub_2192FCC38);
  }

  sub_219BE8724();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2192FCE9C();
  if (sub_219BE1E24())
  {
    sub_2192FD978(&qword_27CC18A40, sub_2192FCE9C);
  }

  return sub_219BE86F4();
}

uint64_t sub_2192FA9D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20760(0, &unk_280E8FFF8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D34068]);
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

uint64_t sub_2192FAAB8(void *a1)
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
  sub_2192FC608();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FC7D8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FC958();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2192FC48C();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2192FAC2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FC48C();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192FACE4()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_2192FADB4(void *a1)
{
  sub_218B20694(0, &qword_280E90308, MEMORY[0x277D33AA0]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsFavoritesConfig();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_219BF1814();

  v10 = sub_219BF2A74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v5, 1, v10) == 1)
  {
    (*(v11 + 104))(v7, *MEMORY[0x277D33A98], v10);
    if (v12(v5, 1, v10) != 1)
    {
      sub_218B206E8(v5);
    }
  }

  else
  {
    (*(v11 + 32))(v7, v5, v10);
  }

  (*(v11 + 56))(v7, 0, 1, v10);
  v15[1] = v9;
  sub_218B20760(0, &unk_280E8FFF8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D34068]);
  v14 = objc_allocWithZone(v13);
  return sub_219BF3B94();
}

uint64_t sub_2192FB06C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A790CC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A791B0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsFavoritesBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsFavoritesBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_2192FC608();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2192FB208(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2192FB320(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192FB3FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A790CC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A791B0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FCE08();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_2192FD978(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_2192FC7D8();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2192FB64C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2192FCF30();
  if (sub_219BE1E24())
  {
    sub_2192FD978(&qword_27CC18A38, sub_2192FCF30);
  }

  return sub_219BE9774();
}

uint64_t sub_2192FB758(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A790CC(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218A791B0(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2192FC958();
      v4 = objc_allocWithZone(v3);
      return sub_219BE9F24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2192FB818(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for SportsFavoritesBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2192FB8C4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsFavoritesViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A33DF0;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2192FB958(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for SportsFavoritesBlueprintViewSupplementaryViewProvider();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192FB9F8(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2192FD0F4();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A790CC(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_2192FCE08();
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192FBC50(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280E90FB0);
  sub_219BE1E34();
  sub_2192FD01C();
  swift_allocObject();
  sub_219BEFCE4();
  sub_2192FD978(&qword_27CC18A28, sub_2192FD01C);
  sub_219BE8EA4();
}

uint64_t sub_2192FBD54(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FC48C();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2192FCE9C();
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192FBDCC(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FCF30();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_2192FD978(&qword_27CC18A10, sub_2192FCF30);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2192FBF10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FC48C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A790CC(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_2192FCF30();
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2192FC080(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FC48C();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192FC13C(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2192FCCCC();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_2192FD978(a3, sub_2192FCCCC);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_2192FC1F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FCCCC();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_2192FD978(&qword_27CC189F8, sub_2192FCCCC);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2192FC298()
{
  if (!qword_27CC18930)
  {
    sub_218A790CC(255);
    sub_2192FC384();
    sub_2192FD978(&qword_27CC0D560, sub_218A790CC);
    sub_2192FD978(&qword_27CC189A0, sub_2192FC384);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18930);
    }
  }
}

void sub_2192FC384()
{
  if (!qword_27CC18938)
  {
    type metadata accessor for SportsFavoritesModel();
    sub_2192FC48C();
    sub_2189A3D68();
    sub_2192FD978(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel);
    sub_2192FD978(&qword_27CC18998, sub_2192FC48C);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18938);
    }
  }
}

void sub_2192FC48C()
{
  if (!qword_27CC18940)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_2192FC608();
    sub_2192FC7D8();
    sub_2192FC958();
    type metadata accessor for SportsFavoritesViewController();
    sub_2192FD978(&qword_27CC18980, sub_2192FC608);
    sub_2192FD978(&qword_27CC18988, sub_2192FC7D8);
    sub_2192FD978(&qword_27CC18990, sub_2192FC958);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18940);
    }
  }
}

void sub_2192FC608()
{
  if (!qword_27CC18948)
  {
    sub_218A790CC(255);
    sub_218A791B0(255);
    type metadata accessor for SportsFavoritesBlueprintViewCellProvider();
    type metadata accessor for SportsFavoritesBlueprintViewSupplementaryViewProvider();
    sub_2192FD978(&qword_27CC0D560, sub_218A790CC);
    sub_2192FD978(&qword_27CC0D578, sub_218A791B0);
    sub_2192FD978(&qword_27CC18950, type metadata accessor for SportsFavoritesBlueprintViewCellProvider);
    sub_2192FD978(&qword_27CC18958, type metadata accessor for SportsFavoritesBlueprintViewSupplementaryViewProvider);
    sub_2192FD978(&qword_27CC18960, type metadata accessor for SportsFavoritesLayoutModel);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18948);
    }
  }
}

void sub_2192FC7D8()
{
  if (!qword_27CC18968)
  {
    sub_218A790CC(255);
    sub_218A791B0(255);
    type metadata accessor for SportsFavoritesViewController();
    sub_2192FD978(&qword_27CC0D560, sub_218A790CC);
    sub_2192FD978(&qword_27CC0D578, sub_218A791B0);
    sub_2192FD978(&qword_27CC18970, type metadata accessor for SportsFavoritesViewController);
    sub_2192FD978(&qword_27CC18960, type metadata accessor for SportsFavoritesLayoutModel);
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18968);
    }
  }
}

void sub_2192FC958()
{
  if (!qword_27CC18978)
  {
    sub_218A790CC(255);
    sub_218A791B0(255);
    sub_2192FD978(&qword_27CC0D560, sub_218A790CC);
    sub_2192FD978(&qword_27CC0D578, sub_218A791B0);
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18978);
    }
  }
}

void sub_2192FCA44()
{
  if (!qword_27CC189A8)
  {
    sub_218A791B0(255);
    type metadata accessor for SportsFavoritesBlueprintLayoutBuilder();
    sub_2192FCB80();
    sub_2192FD978(&qword_27CC0D578, sub_218A791B0);
    sub_2192FD978(&qword_27CC189B8, type metadata accessor for SportsFavoritesBlueprintLayoutBuilder);
    sub_2192FD978(&qword_27CC189C0, sub_2192FCB80);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC189A8);
    }
  }
}

void sub_2192FCB80()
{
  if (!qword_27CC189B0)
  {
    type metadata accessor for SportsFavoritesLayoutModel();
    sub_218AC3A40();
    sub_2192FD978(&qword_27CC18960, type metadata accessor for SportsFavoritesLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC189B0);
    }
  }
}

void sub_2192FCC38()
{
  if (!qword_27CC189C8)
  {
    sub_218A791B0(255);
    sub_2192FD978(&qword_27CC0D578, sub_218A791B0);
    v0 = sub_219BE99B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC189C8);
    }
  }
}

void sub_2192FCCCC()
{
  if (!qword_27CC189D0)
  {
    sub_218A790CC(255);
    sub_2192FC48C();
    type metadata accessor for SportsFavoritesViewController();
    sub_2192FD978(&qword_27CC0D560, sub_218A790CC);
    sub_2192FD978(&qword_27CC18998, sub_2192FC48C);
    sub_2192FD978(&qword_27CC18970, type metadata accessor for SportsFavoritesViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC189D0);
    }
  }
}

void sub_2192FCE08()
{
  if (!qword_27CC189D8)
  {
    sub_218A790CC(255);
    sub_2192FD978(&qword_27CC0D560, sub_218A790CC);
    v0 = sub_219BE8ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC189D8);
    }
  }
}

void sub_2192FCE9C()
{
  if (!qword_27CC189E0)
  {
    sub_2192FC48C();
    sub_2192FD978(&qword_27CC18998, sub_2192FC48C);
    v0 = sub_219BE8934();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC189E0);
    }
  }
}

void sub_2192FCF30()
{
  if (!qword_27CC189E8)
  {
    sub_2192FC48C();
    sub_218A790CC(255);
    sub_2192FD978(&qword_27CC18998, sub_2192FC48C);
    sub_2192FD978(&qword_27CC189F0, sub_218A790CC);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC189E8);
    }
  }
}

void sub_2192FD01C()
{
  if (!qword_27CC18A18)
  {
    sub_218A790CC(255);
    sub_2192FD978(&qword_27CC0D560, sub_218A790CC);
    sub_2192FD978(&qword_27CC18A20, type metadata accessor for SportsFavoritesModel);
    v0 = sub_219BEFCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18A18);
    }
  }
}

void sub_2192FD0F4()
{
  if (!qword_27CC18A30)
  {
    sub_218A790CC(255);
    sub_2192FD978(&qword_27CC0D560, sub_218A790CC);
    v0 = sub_219BE8EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18A30);
    }
  }
}

void sub_2192FD1B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SportsFavoritesSectionDescriptor;
    v8[1] = type metadata accessor for SportsFavoritesModel();
    v8[2] = sub_2189A3D68();
    v8[3] = sub_2192FD978(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2192FD270()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v1 = off_282A33E08[0];
        type metadata accessor for SportsFavoritesViewController();

        v1();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_2192FD370()
{
  if (!qword_27CC18A70)
  {
    type metadata accessor for SportsFavoritesBlueprintModifierFactory();
    sub_2192FD978(&qword_27CC18A78, type metadata accessor for SportsFavoritesBlueprintModifierFactory);
    v0 = type metadata accessor for SportsFavoritesInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18A70);
    }
  }
}

char *sub_2192FD40C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for SportsFavoritesStyler();
  v28[3] = v10;
  v28[4] = &off_282A524F0;
  v28[0] = a1;
  v11 = type metadata accessor for SportsFavoritesViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v27[3] = v10;
  v27[4] = &off_282A524F0;
  v27[0] = v17;
  v12[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_isBeingUsedAsPlugin] = 0;
  *&v12[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_pluggableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = &v12[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_lastComputedSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  *&v12[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_selectionProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintHorizontalShimView] = 0;
  sub_218718690(v27, &v12[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_styler]);
  v19 = &v12[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_eventHandler];
  *v19 = a2;
  v19[1] = a3;
  *&v12[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintViewController] = a4;
  *&v12[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintLayoutProvider] = a5;
  v26.receiver = v12;
  v26.super_class = v11;
  swift_unknownObjectRetain();
  v20 = a4;

  v21 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  *(*&v21[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_eventHandler] + 24) = &off_282A33DF8;
  swift_unknownObjectWeakAssign();
  v22 = *&v21[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintViewController];
  v23 = v21;
  v24 = v22;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v23;
}

void *sub_2192FD674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for SportsFavoritesRouter();
  v15[4] = &off_282A75178;
  v15[0] = a3;
  v14[3] = type metadata accessor for SportsFavoritesTracker();
  v14[4] = &off_282A4AD00;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A77540, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_2192FD76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for SportsFavoritesRouter();
  v25 = &off_282A75178;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282A4AD00;
  v20[0] = a4;
  type metadata accessor for SportsFavoritesEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_2192FD674(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_2192FD978(unint64_t *a1, void (*a2)(uint64_t))
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

id FoodRecipeItemsRequest.init(purpose:log:cachePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_219BDBD64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  v12 = sub_219BDBD44();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  if (!a3)
  {
    result = [objc_opt_self() defaultCachePolicy];
    a3 = result;
  }

  *a4 = v12;
  a4[1] = v14;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  return result;
}

uint64_t sub_2192FDAEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2192FDB34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2192FDB8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v39 = a3;
  v38 = type metadata accessor for SearchMoreSectionDescriptor();
  MEMORY[0x28223BE20](v38);
  v37 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_219BDBD64();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v32);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218C3F834();
  v30 = v10;
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2192FE018();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v31 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v19 = &v27[-v18];
  v29 = *a2;
  v28 = *(a2 + 8);
  sub_2192FE148(&qword_27CC18A88, sub_218C3F834);
  sub_2192FE148(&qword_27CC18A90, sub_218C3F834);
  sub_219BE2444();
  sub_218F41028();
  v21 = *(v20 + 48);
  v22 = v9 + *(v20 + 64);
  sub_219BDBD54();
  v23 = sub_219BDBD44();
  v25 = v24;
  (*(v33 + 8))(v7, v34);
  *v9 = v23;
  v9[1] = v25;
  sub_2192FE0E4(v36, v9 + v21);
  *v22 = v29;
  v22[8] = v28;
  swift_storeEnumTagMultiPayload();
  sub_2192FE148(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v35 + 8))(v12, v30);
  swift_storeEnumTagMultiPayload();
  (*(v15 + 16))(v31, v19, v14);
  sub_2192FE148(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
  sub_219BE6924();
  return (*(v15 + 8))(v19, v14);
}

void sub_2192FE018()
{
  if (!qword_27CC18A80)
  {
    sub_218C3F834();
    sub_2192FE148(&qword_27CC18A88, sub_218C3F834);
    sub_2192FE148(&qword_27CC18A90, sub_218C3F834);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18A80);
    }
  }
}

uint64_t sub_2192FE0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2192FE148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2192FE1B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = type metadata accessor for RecipeBoxFeedConfig();
  MEMORY[0x28223BE20](v39);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2186DDB7C(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - v6;
  sub_2186DDB7C(0, &qword_27CC18A98, sub_2192FECE0, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_2186DDB7C(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_2192FEE64(0, &qword_27CC18AA8, MEMORY[0x277D6CE98]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FEDAC();
  v18 = v43;
  sub_219BF7B04();
  if (v18)
  {
    v31 = a1;
  }

  else
  {
    v19 = v15;
    v43 = a1;
    v20 = v42;
    sub_219BDBD34();
    v46 = 0;
    sub_2192FEFA0(&unk_280EE9C70, MEMORY[0x277CC9578]);
    v21 = v17;
    sub_219BE2C94();
    v38 = v12;
    sub_2192FECE0();
    v23 = v22;
    v45 = 1;
    sub_2192FEFA0(&qword_27CC18AB8, sub_2192FECE0);
    v24 = v9;
    sub_219BE2C94();
    v25 = v19;
    v26 = *(v23 - 8);
    if ((*(v26 + 48))(v24, 1, v23) == 1)
    {
      sub_218710798(v24, &qword_27CC18A98, sub_2192FECE0);
      v27 = 0;
    }

    else
    {
      v28 = sub_219BE1E44();
      v29 = v24;
      v27 = v28;
      (*(v26 + 8))(v29, v23);
    }

    v30 = v40;
    sub_219BEE5B4();
    v44 = 2;
    sub_2192FEFA0(&qword_280E91B88, MEMORY[0x277D32028]);
    sub_219BE2C94();
    v33 = MEMORY[0x277CC9578];
    v34 = v27;
    v35 = v38;
    sub_21872ACDC(v38, v30, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (!v34)
    {
      v34 = MEMORY[0x277D84F90];
    }

    sub_218710798(v35, &qword_280EE9C40, v33);
    (*(v25 + 8))(v21, v14);
    v36 = v20;
    v37 = v39;
    *(v30 + *(v39 + 20)) = v34;
    sub_2189A1E30(v41, v30 + *(v37 + 24));
    sub_2192FEE00(v30, v36);
    v31 = v43;
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_2192FE7AC(void *a1)
{
  v3 = v1;
  sub_2192FEE64(0, &qword_27CC18AC0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FEDAC();
  sub_219BF7B44();
  v13 = 0;
  sub_219BDBD34();
  sub_2192FEFA0(&qword_280EE9CA0, MEMORY[0x277CC9578]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for RecipeBoxFeedConfig() + 20));
    v11[15] = 1;
    sub_2186DDB7C(0, &qword_280E8F0E8, type metadata accessor for RecipeBoxFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2192FEEC8();
    sub_219BF7834();
    v11[14] = 2;
    sub_219BEE5B4();
    sub_2192FEFA0(&unk_280E91B90, MEMORY[0x277D32028]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2192FEA3C(uint64_t a1)
{
  v2 = sub_2192FEDAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192FEA78(uint64_t a1)
{
  v2 = sub_2192FEDAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2192FEB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = MEMORY[0x277CC9578];
  sub_2186DDB7C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_21872ACDC(v5, &v13 - v10, &qword_280EE9C40, v8);
  sub_21872ACDC(v5 + *(a2 + 24), a3 + *(a2 + 24), &qword_280E91B80, MEMORY[0x277D32028]);
  sub_21872ACDC(v11, a3, &qword_280EE9C40, v8);

  result = sub_218710798(v11, &qword_280EE9C40, v8);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

void sub_2192FECE0()
{
  if (!qword_27CC18AA0)
  {
    type metadata accessor for RecipeBoxFeedGroupConfig();
    sub_2192FEFA0(&qword_27CC0E140, type metadata accessor for RecipeBoxFeedGroupConfig);
    sub_2192FEFA0(&qword_27CC0E148, type metadata accessor for RecipeBoxFeedGroupConfig);
    v0 = sub_219BE1E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18AA0);
    }
  }
}

unint64_t sub_2192FEDAC()
{
  result = qword_27CC18AB0;
  if (!qword_27CC18AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18AB0);
  }

  return result;
}

uint64_t sub_2192FEE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2192FEE64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192FEDAC();
    v7 = a3(a1, &type metadata for RecipeBoxFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2192FEEC8()
{
  result = qword_27CC18AC8;
  if (!qword_27CC18AC8)
  {
    sub_2186DDB7C(255, &qword_280E8F0E8, type metadata accessor for RecipeBoxFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2192FEFA0(&qword_27CC0E148, type metadata accessor for RecipeBoxFeedGroupConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18AC8);
  }

  return result;
}

uint64_t sub_2192FEFA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2192FEFFC()
{
  result = qword_27CC18AD0;
  if (!qword_27CC18AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18AD0);
  }

  return result;
}

unint64_t sub_2192FF054()
{
  result = qword_27CC18AD8;
  if (!qword_27CC18AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18AD8);
  }

  return result;
}

unint64_t sub_2192FF0AC()
{
  result = qword_27CC18AE0;
  if (!qword_27CC18AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18AE0);
  }

  return result;
}

uint64_t SearchRequestData.init(searchString:filteredTagIDs:origination:batchSize:refreshQueryParam:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a2)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (a2)
  {
    v8 = a2;
  }

  *a7 = v7;
  *(a7 + 8) = v8;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

BOOL sub_2192FF134()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v2 && *(v2 + 16))
  {
    return 0;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return v4 == 0;
}

uint64_t ChannelSupergroupConfig.themes.getter@<X0>(uint64_t a1@<X8>)
{
  sub_218A42400(0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ChannelSupergroupConfig()
{
  result = qword_280EC58E8;
  if (!qword_280EC58E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2192FF2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2192FF340(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2192FF394(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x8000000219CD7EE0;
  if (v2 == 1)
  {
    v5 = 0x8000000219CD7EE0;
  }

  else
  {
    v3 = 0x7461636F4C6F6567;
    v5 = 0xEB000000006E6F69;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x73656D656874;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x7461636F4C6F6567;
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73656D656874;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_2192FF49C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2192FF548()
{
  sub_219BF5524();
}

uint64_t sub_2192FF5E0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2192FF688@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219300744();
  *a1 = result;
  return result;
}

void sub_2192FF6B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x8000000219CD7EE0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x7461636F4C6F6567;
    v4 = 0xEB000000006E6F69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73656D656874;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2192FF720()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x7461636F4C6F6567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656D656874;
  }
}

uint64_t sub_2192FF784@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219300744();
  *a1 = result;
  return result;
}

uint64_t sub_2192FF7AC(uint64_t a1)
{
  v2 = sub_2192FFFB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192FF7E8(uint64_t a1)
{
  v2 = sub_2192FFFB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChannelSupergroupConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_218A42400(0);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ChannelSupergroupConfig();
  MEMORY[0x28223BE20](v48);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D45314(0);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192FF26C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192FF340(0, &unk_280E8FF30, sub_218A42400);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v56 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  sub_2193003F0(0, &qword_280E8CE08, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FFFB4();
  v23 = v57;
  sub_219BF7B34();
  if (!v23)
  {
    v24 = v17;
    v57 = v20;
    v46 = v13;
    v47 = a1;
    v60 = 0;
    sub_2186DECEC(&qword_280E8FF48, sub_218A42400);
    v25 = v54;
    sub_219BF76E4();
    v45 = v22;
    v26 = v53;
    v27 = *(v53 + 48);
    v28 = v27(v56, 1, v25);
    v43 = v27;
    v44 = v19;
    if (v28 == 1)
    {
      sub_219BF1944();
      sub_2186DECEC(&unk_280E907F0, MEMORY[0x277D33498]);
      v29 = v24;
      v26 = v53;
      sub_219BF4064();
      if (v27(v56, 1, v25) != 1)
      {
        sub_219300008(v56);
      }
    }

    else
    {
      v29 = v24;
      (*(v26 + 32))(v24, v56, v25);
    }

    (*(v26 + 56))(v29, 0, 1, v25);
    sub_2186DEE0C();
    v59 = 1;
    sub_2186DECEC(&qword_280E8FD68, sub_2186DEE0C);
    v30 = v44;
    v31 = v45;
    sub_219BF76E4();
    v32 = v46;
    sub_219BF1404();
    v58 = 2;
    sub_2186DECEC(&qword_280E908C0, MEMORY[0x277D33350]);
    sub_219BF7674();
    sub_219300080(v29, v32);
    v34 = v43(v32, 1, v25);
    v35 = v57;
    if (v34 == 1)
    {
      v56 = sub_219BF1944();
      sub_2186DECEC(&unk_280E907F0, MEMORY[0x277D33498]);
      v36 = v30;
      v37 = v49;
      sub_219BF4064();
      sub_219300008(v29);
      (*(v35 + 8))(v31, v36);
      v38 = v43(v32, 1, v25);
      v40 = v50;
      v39 = v51;
      a1 = v47;
      v41 = v48;
      if (v38 != 1)
      {
        sub_219300008(v32);
      }
    }

    else
    {
      sub_219300008(v29);
      (*(v35 + 8))(v31, v30);
      v37 = v49;
      (*(v53 + 32))(v49, v32, v25);
      v40 = v50;
      v39 = v51;
      a1 = v47;
      v41 = v48;
    }

    (*(v53 + 32))(v40, v37, v25);
    sub_219300100(v52, v40 + *(v41 + 20), sub_2192FF26C);
    sub_219300100(v55, v40 + *(v41 + 24), sub_218D45314);
    sub_219300100(v40, v39, type metadata accessor for ChannelSupergroupConfig);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2192FFFB4()
{
  result = qword_280EC5900;
  if (!qword_280EC5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC5900);
  }

  return result;
}

uint64_t sub_219300008(uint64_t a1)
{
  sub_2192FF340(0, &unk_280E8FF30, sub_218A42400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219300080(uint64_t a1, uint64_t a2)
{
  sub_2192FF340(0, &unk_280E8FF30, sub_218A42400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219300100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ChannelSupergroupConfig.encode(to:)(void *a1)
{
  sub_2193003F0(0, &qword_27CC18AE8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192FFFB4();
  sub_219BF7B44();
  v9[15] = 0;
  sub_218A42400(0);
  sub_2186DECEC(&qword_27CC18AF0, sub_218A42400);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for ChannelSupergroupConfig();
    v9[14] = 1;
    sub_2192FF26C(0);
    sub_219300488(&qword_27CC18AF8, sub_2192FF26C, sub_219300454);
    sub_219BF7834();
    v9[13] = 2;
    sub_218D45314(0);
    sub_219300488(&qword_27CC18B00, sub_218D45314, sub_219300504);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_2193003F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192FFFB4();
    v7 = a3(a1, &type metadata for ChannelSupergroupConfig.Keys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219300488(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_219300590()
{
  sub_218A42400(319);
  if (v0 <= 0x3F)
  {
    sub_2192FF26C(319);
    if (v1 <= 0x3F)
    {
      sub_218D45314(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_219300640()
{
  result = qword_27CC18B10;
  if (!qword_27CC18B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18B10);
  }

  return result;
}

unint64_t sub_219300698()
{
  result = qword_280EC5908;
  if (!qword_280EC5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC5908);
  }

  return result;
}

unint64_t sub_2193006F0()
{
  result = qword_280EC5910;
  if (!qword_280EC5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC5910);
  }

  return result;
}

uint64_t sub_219300744()
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

uint64_t type metadata accessor for SearchMoreLayoutModel()
{
  result = qword_27CC18B18;
  if (!qword_27CC18B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_2193007DC()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193010B0(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_219300940@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193010B0(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_219300A2C(uint64_t a1)
{
  v2 = sub_219301114(&qword_27CC14770);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_219300AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193010B0(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_219300CC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193010B0(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_219300E10()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193010B0(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  v8 = sub_219BEF924();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_219300F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193010B0(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_2193010B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219301114(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchMoreLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ScrollPosition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_218839548(0, &qword_280E8CF90, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2188395C4();
  sub_219BF7B34();
  if (!v2)
  {
    v17 = 0;
    sub_2193013E0();
    sub_219BF7734();
    if (v16)
    {
      LOBYTE(v16) = 1;
      v10 = sub_219BF76F4();
      v12 = v11;
      v13 = v10;
      type metadata accessor for CGPoint(0);
      v17 = 2;
      sub_219301434(&qword_280E8DAC8);
      sub_219BF7734();
      (*(v7 + 8))(v9, v6);
      v15 = v16;
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v13 = 0;
      v12 = 0;
      v15 = 0uLL;
    }

    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2193013E0()
{
  result = qword_280EDBB60;
  if (!qword_280EDBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB60);
  }

  return result;
}

uint64_t sub_219301434(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219301478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2193018F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2193014A0(uint64_t a1)
{
  v2 = sub_2188395C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193014DC(uint64_t a1)
{
  v2 = sub_2188395C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219301518(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6974636573;
  }

  else
  {
    v3 = 7368564;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F6974636573;
  }

  else
  {
    v5 = 7368564;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_2193015B8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219301634()
{
  sub_219BF5524();
}

uint64_t sub_21930169C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219301714@<X0>(char *a1@<X8>)
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

void *sub_2193017EC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_219301844()
{
  result = qword_27CC18B28;
  if (!qword_27CC18B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18B28);
  }

  return result;
}

unint64_t sub_21930189C()
{
  result = qword_27CC18B30;
  if (!qword_27CC18B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18B30);
  }

  return result;
}

uint64_t sub_2193018F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_219301A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v261 = a2;
  v4 = sub_219BE3BB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v229 = &v220 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187A0934(0, &qword_280EE6650, MEMORY[0x277D315E8]);
  MEMORY[0x28223BE20](v7 - 8);
  v231 = &v220 - v8;
  v234 = sub_219BE3654();
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v232 = &v220 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187A0934(0, &qword_280EE65F8, MEMORY[0x277D31700]);
  MEMORY[0x28223BE20](v10 - 8);
  v254 = &v220 - v11;
  v240 = sub_219BE3864();
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v236 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187A0934(0, &qword_280EE6630, MEMORY[0x277D31658]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v220 - v14;
  sub_2187A0934(0, &qword_280EE6568, MEMORY[0x277D31828]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v220 - v17;
  v244 = sub_219BE3984();
  v243 = *(v244 - 8);
  v19 = MEMORY[0x28223BE20](v244);
  v242 = &v220 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v241 = &v220 - v21;
  sub_2187A0934(0, &qword_280EE6638, MEMORY[0x277D315F8]);
  MEMORY[0x28223BE20](v22 - 8);
  v252 = &v220 - v23;
  v24 = sub_219BE3754();
  v256 = *(v24 - 8);
  v257 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for EngagementUpsellTriggerStateResult(0);
  MEMORY[0x28223BE20](v253);
  v28 = &v220 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for EngagementUpsellOfferEntry(0);
  v258 = *(v250 - 8);
  v29 = MEMORY[0x28223BE20](v250);
  v246 = &v220 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v248 = &v220 - v31;
  sub_2187A0934(0, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v249 = &v220 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v220 - v36;
  MEMORY[0x28223BE20](v35);
  v263 = &v220 - v38;
  v255 = sub_219BE3514();
  v260 = *(v255 - 8);
  v39 = MEMORY[0x28223BE20](v255);
  v247 = &v220 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v238 = &v220 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v230 = &v220 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v228 = &v220 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v227 = &v220 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v235 = &v220 - v50;
  MEMORY[0x28223BE20](v49);
  v52 = &v220 - v51;
  v53 = v2[12];
  v262 = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 9, v53);
  v259 = a1;
  if (sub_2192257C0(a1))
  {
    v220 = v5;
    v221 = v4;
    v225 = v18;
    v226 = v15;
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v54 = sub_219BE5434();
    v55 = __swift_project_value_buffer(v54, qword_280F627F0);
    v56 = v260;
    v57 = *(v260 + 16);
    v58 = v255;
    v223 = v260 + 16;
    v222 = v57;
    v57(v52, v259, v255);
    v251 = v55;
    v59 = sub_219BE5414();
    v60 = sub_219BF6214();
    v61 = os_log_type_enabled(v59, v60);
    v245 = v28;
    v237 = v26;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v264[0] = v63;
      *v62 = 136315138;
      sub_2187A0588(&qword_280EE6670, MEMORY[0x277D31550]);
      v64 = sub_219BF7894();
      v66 = v65;
      v224 = *(v56 + 8);
      v224(v52, v58);
      v67 = sub_2186D1058(v64, v66, v264);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_2186C1000, v59, v60, "EngagementUpsellManager: getting banner properties for %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x21CECF960](v63, -1, -1);
      MEMORY[0x21CECF960](v62, -1, -1);
    }

    else
    {

      v224 = *(v56 + 8);
      v224(v52, v58);
    }

    v68 = v258;
    v69 = (*__swift_project_boxed_opaque_existential_1(v262 + 4, v262[7]) + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store);
    v70 = v69[3];
    v71 = v69[4];
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v72 = v263;
    (*(v71 + 8))(v70, v71);
    sub_2187AC68C(v72, v37, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
    v75 = *(v68 + 48);
    v73 = v68 + 48;
    v74 = v75;
    v76 = v250;
    if (v75(v37, 1, v250) == 1)
    {
      sub_2187AC898(v37, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
      v77 = sub_219BE5414();
      v78 = sub_219BF6214();
      v79 = os_log_type_enabled(v77, v78);
      v80 = v259;
      if (v79)
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_2186C1000, v77, v78, "EngagementUpsellManager: No cached offer entry found", v81, 2u);
        MEMORY[0x21CECF960](v81, -1, -1);
      }

      v82 = v257;
    }

    else
    {
      v83 = v37;
      v84 = v248;
      sub_21930717C(v83, v248, type metadata accessor for EngagementUpsellOfferEntry);
      v85 = v246;
      sub_219307114(v84, v246, type metadata accessor for EngagementUpsellOfferEntry);
      v86 = sub_219BE5414();
      v87 = sub_219BF6214();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = v85;
        v90 = swift_slowAlloc();
        v264[0] = v90;
        *v88 = 136315138;
        v91 = EngagementUpsellOfferEntry.description.getter();
        v93 = v92;
        v258 = v73;
        sub_2187AC7E8(v89, type metadata accessor for EngagementUpsellOfferEntry);
        v94 = sub_2186D1058(v91, v93, v264);
        v58 = v255;

        *(v88 + 4) = v94;
        _os_log_impl(&dword_2186C1000, v86, v87, "EngagementUpsellManager: Using cached offer entry %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x21CECF960](v90, -1, -1);
        MEMORY[0x21CECF960](v88, -1, -1);

        v95 = v248;
      }

      else
      {

        sub_2187AC7E8(v85, type metadata accessor for EngagementUpsellOfferEntry);
        v95 = v84;
      }

      sub_2187AC7E8(v95, type metadata accessor for EngagementUpsellOfferEntry);
      v82 = v257;
      v80 = v259;
    }

    v96 = v254;
    v97 = v249;
    sub_218718690((v262 + 9), v264);
    __swift_project_boxed_opaque_existential_1(v264, v264[3]);
    sub_2187AC68C(v263, v97, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
    if (v74(v97, 1, v76) == 1)
    {
      sub_2187AC898(v97, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
      v98 = 2;
    }

    else
    {
      v98 = *(v97 + 1);
      sub_2187AC7E8(v97, type metadata accessor for EngagementUpsellOfferEntry);
    }

    v99 = v245;
    sub_2187A0AEC(v98, v80, v245);
    __swift_destroy_boxed_opaque_existential_1(v264);
    v100 = v252;
    sub_2187AC68C(v99, v252, &qword_280EE6638, MEMORY[0x277D315F8]);
    v101 = v256;
    if ((*(v256 + 48))(v100, 1, v82) == 1)
    {
      sub_2187AC898(v100, &qword_280EE6638, MEMORY[0x277D315F8]);
      v102 = v247;
      v222(v247, v80, v58);
      v103 = sub_219BE5414();
      v104 = sub_219BF6214();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v264[0] = v106;
        *v105 = 136315138;
        sub_2187A0588(&qword_280EE6670, MEMORY[0x277D31550]);
        v107 = sub_219BF7894();
        v108 = v58;
        v110 = v109;
        v224(v102, v108);
        v111 = sub_2186D1058(v107, v110, v264);

        *(v105 + 4) = v111;
        _os_log_impl(&dword_2186C1000, v103, v104, "EngagementUpsellManager: No active trigger found for %s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v106);
        MEMORY[0x21CECF960](v106, -1, -1);
        MEMORY[0x21CECF960](v105, -1, -1);
      }

      else
      {

        v224(v102, v58);
      }

      v130 = v226;
      v131 = sub_219BE3B04();
      (*(*(v131 - 8) + 56))(v225, 1, 1, v131);
      *v130 = *&v99[*(v253 + 24)];
      v132 = *MEMORY[0x277D31608];
      v133 = sub_219BE3774();
      v134 = *(v133 - 8);
      (*(v134 + 104))(v130, v132, v133);
      (*(v134 + 56))(v130, 0, 1, v133);

      sub_219BE3BC4();
    }

    else
    {
      (*(v101 + 32))(v237, v100, v82);
      v112 = &v99[*(v253 + 20)];
      v113 = v112[1];
      if (v113)
      {
        v114 = *v112;
        __swift_project_boxed_opaque_existential_1(v262 + 9, v262[12]);
        v115 = v241;
        v259 = v114;
        sub_219225B44(v114, v113, v241);
        v116 = v243;
        v117 = v242;
        v118 = v244;
        (*(v243 + 104))(v242, *MEMORY[0x277D317B0], v244);
        LOBYTE(v114) = sub_219BE3974();
        v119 = *(v116 + 8);
        v119(v117, v118);
        v119(v115, v118);
        if (v114)
        {
          v120 = v235;
          v222(v235, v80, v58);
          v121 = sub_219BE5414();
          v122 = sub_219BF6214();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            v264[0] = v124;
            *v123 = 136315138;
            sub_2187A0588(&qword_280EE6670, MEMORY[0x277D31550]);
            v125 = sub_219BF7894();
            v126 = v58;
            v128 = v127;
            v224(v120, v126);
            v129 = sub_2186D1058(v125, v128, v264);

            *(v123 + 4) = v129;
            _os_log_impl(&dword_2186C1000, v121, v122, "EngagementUpsellManager: Trigger visibility condition is hidden for %s", v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v124);
            MEMORY[0x21CECF960](v124, -1, -1);
            MEMORY[0x21CECF960](v123, -1, -1);
          }

          else
          {

            v224(v120, v58);
          }

          v162 = v226;
          v163 = v225;
          v165 = v256;
          v164 = v257;
          v166 = v245;
          v167 = sub_219BE3B04();
          (*(*(v167 - 8) + 56))(v163, 1, 1, v167);
          v168 = *MEMORY[0x277D31600];
          v169 = sub_219BE3774();
          v170 = *(v169 - 8);
          (*(v170 + 104))(v162, v168, v169);
          (*(v170 + 56))(v162, 0, 1, v169);
          sub_219BE3BC4();
          (*(v165 + 8))(v237, v164);
          sub_2187AC898(v263, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
          v171 = v166;
          return sub_2187AC7E8(v171, type metadata accessor for EngagementUpsellTriggerStateResult);
        }

        sub_219BE36E4();
        v145 = v239;
        v146 = v240;
        if ((*(v239 + 48))(v96, 1, v240) != 1)
        {
          v172 = *(v145 + 32);
          v173 = v236;
          v172(v236, v96, v146);
          v174 = v231;
          sub_219303B00(v173, v231);
          v175 = v233;
          v176 = v234;
          v177 = (*(v233 + 48))(v174, 1, v234);
          v179 = v256;
          v178 = v257;
          v180 = v245;
          if (v177 == 1)
          {
            sub_2187AC898(v174, &qword_280EE6650, MEMORY[0x277D315E8]);
            v181 = v228;
            v222(v228, v80, v58);
            v182 = sub_219BE5414();
            v183 = sub_219BF6214();
            if (os_log_type_enabled(v182, v183))
            {
              v184 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              v264[0] = v185;
              *v184 = 136315138;
              sub_2187A0588(&qword_280EE6670, MEMORY[0x277D31550]);
              v186 = sub_219BF7894();
              v187 = v58;
              v189 = v188;
              v224(v181, v187);
              v190 = sub_2186D1058(v186, v189, v264);

              *(v184 + 4) = v190;
              _os_log_impl(&dword_2186C1000, v182, v183, "EngagementUpsellManager: No preferred configuration found for trigger for %s", v184, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v185);
              MEMORY[0x21CECF960](v185, -1, -1);
              MEMORY[0x21CECF960](v184, -1, -1);
            }

            else
            {

              v224(v181, v58);
            }

            v206 = v226;
            v207 = v225;
            v208 = sub_219BE3B04();
            (*(*(v208 - 8) + 56))(v207, 1, 1, v208);
            v209 = *MEMORY[0x277D31618];
            v210 = sub_219BE3774();
            v211 = *(v210 - 8);
            (*(v211 + 104))(v206, v209, v210);
            (*(v211 + 56))(v206, 0, 1, v210);
            sub_219BE3BC4();
            (*(v239 + 8))(v236, v240);
            (*(v179 + 8))(v237, v178);
            sub_2187AC898(v263, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
            v171 = v180;
          }

          else
          {
            (*(v175 + 32))(v232, v174, v176);
            v196 = v227;
            v222(v227, v80, v58);
            v197 = sub_219BE5414();
            v198 = sub_219BF6214();
            if (os_log_type_enabled(v197, v198))
            {
              v199 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              v264[0] = v200;
              *v199 = 136315138;
              sub_2187A0588(&qword_280EE6670, MEMORY[0x277D31550]);
              v201 = sub_219BF7894();
              v203 = v202;
              v224(v196, v58);
              v204 = sub_2186D1058(v201, v203, v264);
              v179 = v256;

              *(v199 + 4) = v204;
              _os_log_impl(&dword_2186C1000, v197, v198, "EngagementUpsellManager: found banner properties for %s", v199, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v200);
              v205 = v200;
              v178 = v257;
              MEMORY[0x21CECF960](v205, -1, -1);
              MEMORY[0x21CECF960](v199, -1, -1);
            }

            else
            {

              v224(v196, v58);
            }

            v212 = v226;
            v213 = v225;
            v214 = v229;
            v215 = v237;
            sub_219BE36D4();
            v216 = v232;
            v217 = v263;
            sub_219304718(v232, v214, v263, v213);
            (*(v220 + 8))(v214, v221);
            v218 = sub_219BE3774();
            (*(*(v218 - 8) + 56))(v212, 1, 1, v218);

            sub_219BE3BC4();
            (*(v233 + 8))(v216, v234);
            (*(v239 + 8))(v236, v240);
            (*(v179 + 8))(v215, v178);
            sub_2187AC898(v217, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
            v171 = v245;
          }

          return sub_2187AC7E8(v171, type metadata accessor for EngagementUpsellTriggerStateResult);
        }

        sub_2187AC898(v96, &qword_280EE65F8, MEMORY[0x277D31700]);
        v147 = v230;
        v222(v230, v80, v58);
        v148 = sub_219BE5414();
        v149 = sub_219BF6214();
        v150 = os_log_type_enabled(v148, v149);
        v101 = v256;
        v82 = v257;
        v99 = v245;
        if (v150)
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v264[0] = v152;
          *v151 = 136315138;
          sub_2187A0588(&qword_280EE6670, MEMORY[0x277D31550]);
          v153 = sub_219BF7894();
          v154 = v58;
          v156 = v155;
          v224(v147, v154);
          v157 = sub_2186D1058(v153, v156, v264);

          *(v151 + 4) = v157;
          _os_log_impl(&dword_2186C1000, v148, v149, "EngagementUpsellManager: No banner configuration found for trigger for %s", v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v152);
          MEMORY[0x21CECF960](v152, -1, -1);
          MEMORY[0x21CECF960](v151, -1, -1);
        }

        else
        {

          v224(v147, v58);
        }

        v158 = v226;
        v191 = v225;
        v192 = sub_219BE3B04();
        (*(*(v192 - 8) + 56))(v191, 1, 1, v192);
        v161 = MEMORY[0x277D31618];
      }

      else
      {
        v135 = v238;
        v222(v238, v80, v58);
        v136 = sub_219BE5414();
        v137 = sub_219BF6214();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v264[0] = v139;
          *v138 = 136315138;
          sub_2187A0588(&qword_280EE6670, MEMORY[0x277D31550]);
          v140 = sub_219BF7894();
          v141 = v58;
          v143 = v142;
          v224(v135, v141);
          v144 = sub_2186D1058(v140, v143, v264);

          *(v138 + 4) = v144;
          _os_log_impl(&dword_2186C1000, v136, v137, "EngagementUpsellManager: No trigger type defined for %s", v138, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v139);
          MEMORY[0x21CECF960](v139, -1, -1);
          MEMORY[0x21CECF960](v138, -1, -1);
        }

        else
        {

          v224(v135, v58);
        }

        v158 = v226;
        v159 = v225;
        v160 = sub_219BE3B04();
        (*(*(v160 - 8) + 56))(v159, 1, 1, v160);
        v161 = MEMORY[0x277D31600];
      }

      v193 = *v161;
      v194 = sub_219BE3774();
      v195 = *(v194 - 8);
      (*(v195 + 104))(v158, v193, v194);
      (*(v195 + 56))(v158, 0, 1, v194);
      sub_219BE3BC4();
      (*(v101 + 8))(v237, v82);
    }

    sub_2187AC898(v263, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
    v171 = v99;
    return sub_2187AC7E8(v171, type metadata accessor for EngagementUpsellTriggerStateResult);
  }

  return MEMORY[0x28218F218]();
}

uint64_t sub_219303B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78 = sub_219BE4144();
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE4944();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187A0934(0, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v73 - v11;
  sub_2187A0934(0, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v73 - v14;
  v86 = type metadata accessor for EngagementUpsellBestOffer(0);
  v16 = *(v86 - 8);
  v17 = MEMORY[0x28223BE20](v86);
  v77 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = &v73 - v19;
  sub_2187A0934(0, &qword_280EE6650, MEMORY[0x277D315E8]);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v73 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v84 = &v73 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v73 - v29;
  sub_219BE37E4();
  v81 = a1;
  if (sub_219BE37D4())
  {
    return sub_2193071E4(v30, a2);
  }

  v74 = v23;
  v75 = v30;
  v76 = a2;
  v32 = (*__swift_project_boxed_opaque_existential_1((v3 + 32), *(v3 + 56)) + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store);
  v34 = v32[3];
  v33 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v34);
  (*(v33 + 8))(v34, v33);
  v35 = type metadata accessor for EngagementUpsellOfferEntry(0);
  if ((*(*(v35 - 8) + 48))(v12, 1, v35) == 1)
  {
    sub_2187AC898(v75, &qword_280EE6650, MEMORY[0x277D315E8]);
    sub_2187AC898(v12, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
    (*(v16 + 56))(v15, 1, 1, v86);
LABEL_7:
    v38 = v76;
    sub_2187AC898(v15, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
    v39 = sub_219BE3654();
    return (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  }

  v36 = v3;
  sub_2187AC68C(&v12[*(v35 + 24)], v15, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  sub_2187AC7E8(v12, type metadata accessor for EngagementUpsellOfferEntry);
  v37 = v86;
  if ((*(v16 + 48))(v15, 1, v86) == 1)
  {
    sub_2187AC898(v75, &qword_280EE6650, MEMORY[0x277D315E8]);
    goto LABEL_7;
  }

  v40 = v85;
  sub_21930717C(v15, v85, type metadata accessor for EngagementUpsellBestOffer);
  v42 = v82;
  v41 = v83;
  (*(v82 + 104))(v9, *MEMORY[0x277D353D8], v83);
  sub_2187A0588(&unk_280EE61C8, MEMORY[0x277D353E0]);
  sub_219BF5874();
  sub_219BF5874();
  (*(v42 + 8))(v9, v41);
  v43 = v76;
  if (v88 == v87)
  {
    __swift_project_boxed_opaque_existential_1((v36 + 112), *(v36 + 136));
    v44 = sub_219BE4774();
    v45 = v74;
    if (v44)
    {
      v46 = *(v40 + *(v37 + 24)) == 1;
      v47 = v75;
      if (v46)
      {
        sub_219BE3844();
      }

      else
      {
        sub_219BE3804();
      }

      v58 = v26;
      v53 = v84;
      sub_2193071E4(v58, v84);
    }

    else
    {
      v47 = v75;
      v53 = v84;
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v54 = sub_219BE5434();
      __swift_project_value_buffer(v54, qword_280F627F0);
      v55 = sub_219BE5414();
      v56 = sub_219BF6214();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2186C1000, v55, v56, "EngagementUpsellManager: paidBundleViaOffer masthead banner feature disabled. Using News+ banner configuration.", v57, 2u);
        MEMORY[0x21CECF960](v57, -1, -1);
      }

      sub_219BE3804();
    }
  }

  else
  {
    v49 = v79;
    v48 = v80;
    v50 = v78;
    (*(v80 + 16))(v79, v40 + *(v37 + 20), v78);
    v51 = (*(v48 + 88))(v49, v50);
    v45 = v74;
    if (v51 == *MEMORY[0x277D34F88])
    {
      v52 = sub_219BE3654();
      v53 = v84;
      (*(*(v52 - 8) + 56))(v84, 1, 1, v52);
      v47 = v75;
    }

    else
    {
      v47 = v75;
      v53 = v84;
      if (v51 == *MEMORY[0x277D34F90])
      {
        sub_219BE37F4();
      }

      else if (v51 == *MEMORY[0x277D34F80])
      {
        sub_219BE3834();
      }

      else if (v51 == *MEMORY[0x277D34F98])
      {
        sub_219BE3814();
      }

      else if (v51 == *MEMORY[0x277D34F78])
      {
        sub_219BE3824();
      }

      else
      {
        if (qword_280EE60A0 != -1)
        {
          swift_once();
        }

        v63 = sub_219BE5434();
        __swift_project_value_buffer(v63, qword_280F627F0);
        v64 = v77;
        sub_219307114(v40, v77, type metadata accessor for EngagementUpsellBestOffer);
        v65 = sub_219BE5414();
        v66 = sub_219BF61F4();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v83 = v65;
          v68 = v64;
          v69 = v67;
          *v67 = 134217984;
          v70 = sub_219BE4134();
          v71 = v68;
          v65 = v83;
          sub_2187AC7E8(v71, type metadata accessor for EngagementUpsellBestOffer);
          *(v69 + 1) = v70;
          _os_log_impl(&dword_2186C1000, v65, v66, "EngagementUpsellManager: unknown upsell scenario = %ld", v69, 0xCu);
          MEMORY[0x21CECF960](v69, -1, -1);
        }

        else
        {
          sub_2187AC7E8(v64, type metadata accessor for EngagementUpsellBestOffer);
        }

        v72 = sub_219BE3654();
        (*(*(v72 - 8) + 56))(v53, 1, 1, v72);
        (*(v80 + 8))(v79, v50);
      }
    }
  }

  sub_2187AC68C(v53, v45, &qword_280EE6650, MEMORY[0x277D315E8]);
  v59 = sub_219BE3654();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(v45, 1, v59) == 1)
  {
    v61 = MEMORY[0x277D315E8];
    sub_2187AC898(v53, &qword_280EE6650, MEMORY[0x277D315E8]);
    sub_2187AC7E8(v40, type metadata accessor for EngagementUpsellBestOffer);
    sub_2187AC898(v47, &qword_280EE6650, v61);
    sub_2187AC898(v45, &qword_280EE6650, v61);
    return (*(v60 + 56))(v43, 1, 1, v59);
  }

  else
  {
    sub_219BE3624();
    v62 = MEMORY[0x277D315E8];
    sub_2187AC898(v53, &qword_280EE6650, MEMORY[0x277D315E8]);
    sub_2187AC7E8(v40, type metadata accessor for EngagementUpsellBestOffer);
    sub_2187AC898(v47, &qword_280EE6650, v62);
    (*(v60 + 8))(v45, v59);
    return (*(v60 + 56))(v43, 0, 1, v59);
  }
}

uint64_t sub_219304718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v292 = a3;
  v278 = a2;
  v272 = a4;
  v298 = *MEMORY[0x277D85DE8];
  v257 = sub_219BE4944();
  v256 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v255 = &v255 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187A0934(0, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  MEMORY[0x28223BE20](v6 - 8);
  v259 = &v255 - v7;
  sub_2187A0934(0, &qword_280EE6510, MEMORY[0x277D318F8]);
  MEMORY[0x28223BE20](v8 - 8);
  v271 = &v255 - v9;
  v274 = sub_219BE3BB4();
  v293 = *(v274 - 8);
  v10 = MEMORY[0x28223BE20](v274);
  v277 = &v255 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v276 = &v255 - v12;
  sub_2187A0934(0, &qword_280EE65A8, MEMORY[0x277D31798]);
  MEMORY[0x28223BE20](v13 - 8);
  v266 = &v255 - v14;
  sub_2187A0934(0, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v269 = &v255 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v275 = &v255 - v19;
  MEMORY[0x28223BE20](v18);
  v273 = &v255 - v20;
  v21 = sub_219BF5474();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v255 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BE38F4();
  v26 = *(v25 - 8);
  v283 = v25;
  v284 = v26;
  v27 = MEMORY[0x28223BE20](v25);
  v282 = &v255 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v265 = &v255 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v286 = &v255 - v32;
  MEMORY[0x28223BE20](v31);
  v281 = &v255 - v33;
  sub_2187A0934(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v268 = &v255 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v270 = &v255 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v258 = &v255 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v279 = &v255 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v280 = &v255 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v264 = &v255 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v263 = &v255 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v255 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v255 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v255 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v290 = &v255 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v288 = &v255 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v289 = &v255 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v287 = &v255 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = &v255 - v66;
  v291 = a1;
  v68 = sub_219BE3634();
  v285 = v67;
  if (v69)
  {
    v70 = v69;
    v71 = v68;
    sub_219BDB914();
    sub_2187AC68C(v67, v57, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v72 = sub_219BDB954();
    if ((*(*(v72 - 8) + 48))(v57, 1, v72) == 1)
    {
      sub_2187AC898(v57, &unk_280EE9D00, MEMORY[0x277CC9260]);
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v73 = sub_219BE5434();
      __swift_project_value_buffer(v73, qword_280F627F0);

      v74 = sub_219BE5414();
      v75 = sub_219BF61F4();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v267 = v51;
        v78 = v77;
        v296 = v77;
        *v76 = 136315138;
        v79 = sub_2186D1058(v71, v70, &v296);

        *(v76 + 4) = v79;
        _os_log_impl(&dword_2186C1000, v74, v75, "EngagementUpsellManager failed to decode icon %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        v80 = v78;
        v51 = v267;
        MEMORY[0x21CECF960](v80, -1, -1);
        v81 = v76;
        v67 = v285;
        MEMORY[0x21CECF960](v81, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      sub_2187AC898(v57, &unk_280EE9D00, MEMORY[0x277CC9260]);
    }
  }

  else
  {
    v82 = sub_219BDB954();
    (*(*(v82 - 8) + 56))(v67, 1, 1, v82);
  }

  v83 = sub_219BE35D4();
  if (v84)
  {
    v85 = v83;
    v86 = v84;
    sub_219BF5464();
    v87 = sub_219BF5424();
    v89 = v88;
    (*(v22 + 8))(v24, v21);
    v90 = v291;
    if (v89 >> 60 != 15)
    {
      v91 = objc_opt_self();
      v92 = sub_219BDB9E4();
      v296 = 0;
      v93 = [v91 JSONObjectWithData:v92 options:0 error:&v296];

      if (v93)
      {
        v94 = v296;
        sub_219BF70B4();
        sub_218822A58(v87, v89);
        swift_unknownObjectRelease();
        sub_218A19674();
        if (swift_dynamicCast())
        {

          v267 = v294;
          v95 = v284;
          goto LABEL_24;
        }
      }

      else
      {
        v96 = v296;
        v97 = sub_219BDB724();

        swift_willThrow();
        sub_218822A58(v87, v89);
        v98 = v97;
        v67 = v285;
      }
    }

    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v99 = sub_219BE5434();
    __swift_project_value_buffer(v99, qword_280F627F0);

    v100 = sub_219BE5414();
    v101 = sub_219BF61F4();

    v102 = os_log_type_enabled(v100, v101);
    v95 = v284;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v296 = v104;
      *v103 = 136315138;
      v105 = sub_2186D1058(v85, v86, &v296);
      v106 = v51;
      v107 = v105;

      *(v103 + 4) = v107;
      v51 = v106;
      _os_log_impl(&dword_2186C1000, v100, v101, "EngagementUpsellManager failed to decode appearance %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      v108 = v104;
      v67 = v285;
      MEMORY[0x21CECF960](v108, -1, -1);
      MEMORY[0x21CECF960](v103, -1, -1);
    }

    else
    {
    }

    v267 = 0;
  }

  else
  {
    v267 = 0;
    v95 = v284;
    v90 = v291;
  }

LABEL_24:
  v109 = sub_219BE3644();
  v111 = v286;
  if (!v110)
  {
    v128 = sub_219BDB954();
    (*(*(v128 - 8) + 56))(v287, 1, 1, v128);
LABEL_33:
    v120 = v283;
    goto LABEL_34;
  }

  v112 = v110;
  v113 = v287;
  v114 = v109;
  sub_219BDB914();
  sub_2187AC68C(v113, v54, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v115 = sub_219BDB954();
  if ((*(*(v115 - 8) + 48))(v54, 1, v115) != 1)
  {

    sub_2187AC898(v54, &unk_280EE9D00, MEMORY[0x277CC9260]);
    goto LABEL_33;
  }

  sub_2187AC898(v54, &unk_280EE9D00, MEMORY[0x277CC9260]);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v116 = sub_219BE5434();
  __swift_project_value_buffer(v116, qword_280F627F0);

  v117 = sub_219BE5414();
  v118 = sub_219BF61F4();

  v119 = os_log_type_enabled(v117, v118);
  v120 = v283;
  if (v119)
  {
    v121 = swift_slowAlloc();
    v122 = v111;
    v123 = v51;
    v124 = swift_slowAlloc();
    v296 = v124;
    *v121 = 136315138;
    v125 = sub_2186D1058(v114, v112, &v296);

    *(v121 + 4) = v125;
    _os_log_impl(&dword_2186C1000, v117, v118, "EngagementUpsellManager failed to decode actionUrl %s", v121, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v124);
    v126 = v124;
    v51 = v123;
    v111 = v122;
    v95 = v284;
    MEMORY[0x21CECF960](v126, -1, -1);
    v127 = v121;
    v67 = v285;
    MEMORY[0x21CECF960](v127, -1, -1);
  }

  else
  {
  }

LABEL_34:
  v129 = sub_219BE3604();
  if (v130)
  {
    v131 = v130;
    v132 = v289;
    v133 = v129;
    sub_219BDB914();
    sub_2187AC68C(v132, v51, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v134 = sub_219BDB954();
    if ((*(*(v134 - 8) + 48))(v51, 1, v134) == 1)
    {
      sub_2187AC898(v51, &unk_280EE9D00, MEMORY[0x277CC9260]);
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v135 = sub_219BE5434();
      __swift_project_value_buffer(v135, qword_280F627F0);

      v136 = sub_219BE5414();
      v137 = sub_219BF61F4();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v296 = v139;
        *v138 = 136315138;
        v140 = sub_2186D1058(v133, v131, &v296);

        *(v138 + 4) = v140;
        _os_log_impl(&dword_2186C1000, v136, v137, "EngagementUpsellManager failed to decode actionUrlSubscribed %s", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v139);
        MEMORY[0x21CECF960](v139, -1, -1);
        v141 = v138;
        v67 = v285;
        MEMORY[0x21CECF960](v141, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      sub_2187AC898(v51, &unk_280EE9D00, MEMORY[0x277CC9260]);
    }
  }

  else
  {
    v142 = sub_219BDB954();
    (*(*(v142 - 8) + 56))(v289, 1, 1, v142);
  }

  v143 = sub_219BE35E4();
  if (v144)
  {
    v145 = v144;
    v146 = v288;
    v147 = v143;
    sub_219BDB914();
    v148 = v146;
    v149 = v263;
    sub_2187AC68C(v148, v263, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v150 = sub_219BDB954();
    if ((*(*(v150 - 8) + 48))(v149, 1, v150) == 1)
    {
      sub_2187AC898(v149, &unk_280EE9D00, MEMORY[0x277CC9260]);
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v151 = sub_219BE5434();
      __swift_project_value_buffer(v151, qword_280F627F0);

      v152 = sub_219BE5414();
      v153 = sub_219BF61F4();

      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v296 = v155;
        *v154 = 136315138;
        v156 = sub_2186D1058(v147, v145, &v296);

        *(v154 + 4) = v156;
        _os_log_impl(&dword_2186C1000, v152, v153, "EngagementUpsellManager failed to decode footerActionUrl %s", v154, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v155);
        MEMORY[0x21CECF960](v155, -1, -1);
        v157 = v154;
        v67 = v285;
        MEMORY[0x21CECF960](v157, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      sub_2187AC898(v149, &unk_280EE9D00, MEMORY[0x277CC9260]);
    }
  }

  else
  {
    v158 = sub_219BDB954();
    (*(*(v158 - 8) + 56))(v288, 1, 1, v158);
  }

  v159 = sub_219BE3614();
  if (v160)
  {
    v161 = v160;
    v162 = v290;
    v163 = v159;
    sub_219BDB914();
    v164 = v162;
    v165 = v264;
    sub_2187AC68C(v164, v264, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v166 = sub_219BDB954();
    if ((*(*(v166 - 8) + 48))(v165, 1, v166) == 1)
    {
      sub_2187AC898(v165, &unk_280EE9D00, MEMORY[0x277CC9260]);
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v167 = sub_219BE5434();
      __swift_project_value_buffer(v167, qword_280F627F0);

      v168 = sub_219BE5414();
      v169 = sub_219BF61F4();

      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v296 = v171;
        *v170 = 136315138;
        v172 = sub_2186D1058(v163, v161, &v296);

        *(v170 + 4) = v172;
        _os_log_impl(&dword_2186C1000, v168, v169, "EngagementUpsellManager failed to decode footerActionUrlSubscribed %s", v170, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v171);
        MEMORY[0x21CECF960](v171, -1, -1);
        v173 = v170;
        v67 = v285;
        MEMORY[0x21CECF960](v173, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      sub_2187AC898(v165, &unk_280EE9D00, MEMORY[0x277CC9260]);
    }
  }

  else
  {
    v174 = sub_219BDB954();
    (*(*(v174 - 8) + 56))(v290, 1, 1, v174);
  }

  v175 = v275;
  v176 = v273;
  sub_2187AC68C(v292, v273, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
  v177 = type metadata accessor for EngagementUpsellOfferEntry(0);
  v178 = *(v177 - 8);
  v179 = *(v178 + 48);
  v180 = v178 + 48;
  if (v179(v176, 1, v177) == 1)
  {
    sub_2187AC898(v176, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
    v181 = 2;
  }

  else
  {
    v182 = v176;
    v181 = *v176;
    sub_2187AC7E8(v182, type metadata accessor for EngagementUpsellOfferEntry);
  }

  sub_2187AC68C(v292, v175, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
  if (v179(v175, 1, v177) == 1)
  {
    sub_2187AC898(v175, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
    LODWORD(v275) = 2;
  }

  else
  {
    LODWORD(v275) = *(v175 + 1);
    sub_2187AC7E8(v175, type metadata accessor for EngagementUpsellOfferEntry);
  }

  v262 = v177;
  (*(v95 + 104))(v111, *MEMORY[0x277D31790], v120);
  sub_219BE35C4();
  v261 = v179;
  v260 = v180;
  if (v183)
  {
    v184 = v266;
    sub_219BE38E4();
    v185 = *(v95 + 48);
    if (v185(v184, 1, v120) == 1)
    {
      v186 = v265;
      (*(v95 + 16))(v265, v111, v120);
      if (v185(v184, 1, v120) != 1)
      {
        sub_2187AC898(v184, &qword_280EE65A8, MEMORY[0x277D31798]);
      }
    }

    else
    {
      v186 = v265;
      (*(v95 + 32))(v265, v184, v120);
    }

    v187 = v281;
    (*(v95 + 32))(v281, v186, v120);
  }

  else
  {
    v187 = v281;
    (*(v95 + 16))(v281, v111, v120);
  }

  v188 = v278;
  v189 = v275;
  v190 = sub_219306DC0(v278, v90, v275, v181, MEMORY[0x277D315D8], MEMORY[0x277D31590], MEMORY[0x277D315A8], MEMORY[0x277D315C0]);
  v273 = v191;
  v266 = sub_219306DC0(v188, v90, v189, v181, MEMORY[0x277D315D0], MEMORY[0x277D31588], MEMORY[0x277D315A0], MEMORY[0x277D315B8]);
  v265 = v192;
  v264 = sub_219306DC0(v188, v90, v189, v181, MEMORY[0x277D315E0], MEMORY[0x277D31598], MEMORY[0x277D315B0], MEMORY[0x277D315C8]);
  v263 = v193;
  sub_2187AC68C(v67, v280, &unk_280EE9D00, MEMORY[0x277CC9260]);
  (*(v95 + 16))(v282, v187, v120);
  v194 = *MEMORY[0x277D318A0];
  v195 = *(v293 + 104);
  v196 = v274;
  v195(v276, v194, v274);
  sub_2187A0588(&qword_280EE6528, MEMORY[0x277D318B0]);
  v197 = v196;
  sub_219BF5874();
  sub_219BF5874();
  if (v296 == v294 && v297 == v295)
  {
    v198 = 1;
  }

  else
  {
    v198 = sub_219BF78F4();
  }

  v199 = *(v293 + 8);
  v293 += 8;
  v199(v276, v196);

  if (v198)
  {
    v276 = v190;
    v200 = v258;
    sub_2187AC68C(v289, v258, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v201 = sub_219BDB954();
    v202 = *(v201 - 8);
    v203 = *(v202 + 48);
    if (v203(v200, 1, v201) == 1)
    {
      sub_2187AC68C(v287, v279, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v204 = v203(v200, 1, v201) == 1;
      v205 = v284;
      v197 = v274;
      if (!v204)
      {
        sub_2187AC898(v200, &unk_280EE9D00, MEMORY[0x277CC9260]);
      }
    }

    else
    {
      v207 = v279;
      (*(v202 + 32))(v279, v200, v201);
      (*(v202 + 56))(v207, 0, 1, v201);
      v205 = v284;
      v197 = v274;
    }
  }

  else if (v275 == 2)
  {
    v206 = sub_219BDB954();
    (*(*(v206 - 8) + 56))(v279, 1, 1, v206);
    v205 = v284;
  }

  else
  {
    v205 = v284;
    if (v275)
    {
      v208 = v289;
    }

    else
    {
      v208 = v287;
    }

    sub_2187AC68C(v208, v279, &unk_280EE9D00, MEMORY[0x277CC9260]);
  }

  v195(v277, v194, v197);
  sub_219BF5874();
  sub_219BF5874();
  if (v296 == v294 && v297 == v295)
  {
    v199(v277, v197);

    v209 = v271;
    v210 = v286;
    v211 = v268;
  }

  else
  {
    v212 = sub_219BF78F4();
    v199(v277, v197);

    v209 = v271;
    v210 = v286;
    v211 = v268;
    if ((v212 & 1) == 0)
    {
      v221 = v270;
      if (v275 != 2)
      {
        v219 = v269;
        v220 = v262;
        if (v275)
        {
          v241 = v290;
        }

        else
        {
          v241 = v288;
        }

        sub_2187AC68C(v241, v270, &unk_280EE9D00, MEMORY[0x277CC9260]);
        goto LABEL_104;
      }

      v222 = sub_219BDB954();
      (*(*(v222 - 8) + 56))(v221, 1, 1, v222);
LABEL_103:
      v219 = v269;
      v220 = v262;
      goto LABEL_104;
    }
  }

  sub_2187AC68C(v290, v211, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v213 = sub_219BDB954();
  v214 = *(v213 - 8);
  v215 = *(v214 + 48);
  v216 = v215(v211, 1, v213);
  v217 = v270;
  if (v216 != 1)
  {
    (*(v214 + 32))(v270, v211, v213);
    (*(v214 + 56))(v217, 0, 1, v213);
    goto LABEL_103;
  }

  sub_2187AC68C(v288, v270, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v218 = v215(v211, 1, v213);
  v219 = v269;
  v220 = v262;
  if (v218 != 1)
  {
    sub_2187AC898(v211, &unk_280EE9D00, MEMORY[0x277CC9260]);
  }

LABEL_104:
  sub_219BE35F4();
  sub_2187AC68C(v292, v219, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
  if (v261(v219, 1, v220) == 1)
  {
    v223 = qword_280EBB760;
    v224 = type metadata accessor for EngagementUpsellOfferEntry;
    v225 = v219;
LABEL_108:
    sub_2187AC898(v225, v223, v224);
    v229 = sub_219BE3C04();
    (*(*(v229 - 8) + 56))(v209, 1, 1, v229);
    goto LABEL_124;
  }

  v226 = v219 + *(v220 + 24);
  v227 = v259;
  sub_2187AC68C(v226, v259, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  sub_2187AC7E8(v219, type metadata accessor for EngagementUpsellOfferEntry);
  v228 = type metadata accessor for EngagementUpsellBestOffer(0);
  if ((*(*(v228 - 8) + 48))(v227, 1, v228) == 1)
  {
    v223 = qword_280EBED90;
    v224 = type metadata accessor for EngagementUpsellBestOffer;
    v225 = v227;
    goto LABEL_108;
  }

  v230 = v256;
  v231 = v255;
  v232 = v227;
  v233 = v227;
  v234 = v257;
  (*(v256 + 16))(v255, v232, v257);
  v235 = (*(v230 + 88))(v231, v234);
  if (v235 == *MEMORY[0x277D353D8])
  {
    v236 = *(v233 + *(v228 + 24));
    v237 = sub_219BE3C04();
    v238 = *(v237 - 8);
    v239 = MEMORY[0x277D318E0];
    if (!v236)
    {
      v239 = MEMORY[0x277D318F0];
    }

    (*(*(v237 - 8) + 104))(v209, *v239, v237);
    (*(v238 + 56))(v209, 0, 1, v237);
    v240 = v233;
    v210 = v286;
  }

  else if (v235 == *MEMORY[0x277D353D0])
  {
    v242 = *MEMORY[0x277D318E8];
    v243 = sub_219BE3C04();
    v244 = *(v243 - 8);
    (*(v244 + 104))(v209, v242, v243);
    (*(v244 + 56))(v209, 0, 1, v243);
    v240 = v259;
    v210 = v286;
  }

  else
  {
    v210 = v286;
    if (v235 == *MEMORY[0x277D353C8])
    {
      v245 = *MEMORY[0x277D318D8];
      v246 = sub_219BE3C04();
      v247 = *(v246 - 8);
      (*(v247 + 104))(v209, v245, v246);
      (*(v247 + 56))(v209, 0, 1, v246);
    }

    else
    {
      v248 = sub_219BE3C04();
      (*(*(v248 - 8) + 56))(v209, 1, 1, v248);
      (*(v256 + 8))(v255, v257);
    }

    v240 = v259;
  }

  sub_2187AC7E8(v240, type metadata accessor for EngagementUpsellBestOffer);
LABEL_124:
  v249 = v283;
  v250 = v272;
  sub_219BE3AF4();
  v251 = *(v205 + 8);
  v251(v210, v249);
  v251(v281, v249);
  v252 = MEMORY[0x277CC9260];
  sub_2187AC898(v290, &unk_280EE9D00, MEMORY[0x277CC9260]);
  sub_2187AC898(v288, &unk_280EE9D00, v252);
  sub_2187AC898(v289, &unk_280EE9D00, v252);
  sub_2187AC898(v287, &unk_280EE9D00, v252);
  sub_2187AC898(v285, &unk_280EE9D00, v252);
  v253 = sub_219BE3B04();
  return (*(*(v253 - 8) + 56))(v250, 0, 1, v253);
}

uint64_t sub_219306DC0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t), uint64_t (*a8)(uint64_t))
{
  v23 = a8;
  v24 = a7;
  v25 = a6;
  v11 = sub_219BE3BB4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x277D318A0], v11);
  sub_2187A0588(&qword_280EE6528, MEMORY[0x277D318B0]);
  sub_219BF5874();
  sub_219BF5874();
  if (v28 == v26 && v29 == v27)
  {
    (*(v12 + 8))(v14, v11);

LABEL_5:
    result = a5(v15);
    if (!v18)
    {
      result = v25(result);
      if (!v19)
      {
        result = v24(result);
        if (!v20)
        {
          return v23(result);
        }
      }
    }

    return result;
  }

  v16 = sub_219BF78F4();
  (*(v12 + 8))(v14, v11);

  if (v16)
  {
    goto LABEL_5;
  }

  if (a3 == 2 || a4 == 2)
  {
    return 0;
  }

  result = a5(v15);
  if (!v21)
  {
    if (a3)
    {
      return v25(result);
    }

    else
    {
      if ((a4 & 1) == 0)
      {
        return v23(result);
      }

      return v24(result);
    }
  }

  return result;
}

uint64_t sub_21930704C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_219307114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21930717C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193071E4(uint64_t a1, uint64_t a2)
{
  sub_2187A0934(0, &qword_280EE6650, MEMORY[0x277D315E8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219307264(uint64_t a1, void *a2, void (*a3)(void *))
{
  v5 = sub_219BE4654();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    *v8 = a2;
    (*(v6 + 104))(v8, *MEMORY[0x277D352E8], v5);
    v9 = a2;
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D352F0], v5);
  }

  a3(v8);
  return (*(v6 + 8))(v8, v5);
}

id sub_2193073A0()
{
  result = [*(*v0 + 16) upsellAppLaunchCount];
  if (result)
  {
    v2 = result;
    v3 = [result longLongValue];

    return v3;
  }

  return result;
}

void sub_2193073F8(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  [v2 setUpsellAppLaunchCount_];
}

void (*sub_219307470(void *a1))(void *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  v4 = [*(v3 + 16) upsellAppLaunchCount];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 longLongValue];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_2193074FC;
}

void sub_2193074FC(void *a1)
{
  v1 = *(a1[1] + 16);
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  [v1 setUpsellAppLaunchCount_];
}

void (*sub_219307588(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = [*(v3 + 16) lastAppLaunchUpsellInstanceID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_219BF5414();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_219307614;
}

uint64_t sub_219307620@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) appLaunchUpsellLastSeenDate];
  if (v3)
  {
    v4 = v3;
    sub_219BDBCA4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_219BDBD34();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_2193076C8(uint64_t a1)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v1 + 16);
  sub_2187D96F4(a1, v5);
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    v9 = sub_219BDBC04();
    (*(v8 + 8))(v5, v7);
  }

  [v6 setAppLaunchUpsellLastSeenDate_];

  return sub_2189DD39C(a1);
}

void (*sub_219307800(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  sub_2186DCF58();
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *v5 = swift_coroFrameAlloc();
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
    v5[3] = v8;
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    *v5 = malloc(v7);
    v5[1] = malloc(v7);
    v5[2] = malloc(v7);
    v8 = malloc(v7);
    v5[3] = v8;
    v9 = malloc(v7);
  }

  v10 = v9;
  v5[4] = v9;
  v11 = *v1;
  v5[5] = *v1;
  v12 = [*(v11 + 16) appLaunchUpsellLastSeenDate];
  if (v12)
  {
    v13 = v12;
    sub_219BDBCA4();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_219BDBD34();
  (*(*(v15 - 8) + 56))(v8, v14, 1, v15);
  sub_218A5DD60(v8, v10);
  return sub_2193079B4;
}

void sub_2193079B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = v2[5];
  if (a2)
  {
    v6 = *v2;
    v5 = v2[1];
    sub_2187D96F4(v3, v5);
    v7 = *(v4 + 16);
    sub_2187D96F4(v5, v6);
    v8 = sub_219BDBD34();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v6, 1, v8) != 1)
    {
      v11 = *v2;
      v10 = sub_219BDBC04();
      (*(v9 + 8))(v11, v8);
    }

    v13 = v2[3];
    v12 = v2[4];
    v15 = v2[1];
    v14 = v2[2];
    v16 = *v2;
    [v7 setAppLaunchUpsellLastSeenDate_];

    sub_2189DD39C(v15);
  }

  else
  {
    v17 = v2[2];
    v18 = *(v4 + 16);
    sub_2187D96F4(v3, v17);
    v19 = sub_219BDBD34();
    v20 = *(v19 - 8);
    v21 = 0;
    if ((*(v20 + 48))(v17, 1, v19) != 1)
    {
      v22 = v2[2];
      v21 = sub_219BDBC04();
      (*(v20 + 8))(v22, v19);
    }

    v13 = v2[3];
    v12 = v2[4];
    v15 = v2[1];
    v14 = v2[2];
    v16 = *v2;
    [v18 setAppLaunchUpsellLastSeenDate_];
  }

  sub_2189DD39C(v12);
  free(v12);
  free(v13);
  free(v14);
  free(v15);
  free(v16);

  free(v2);
}

void (*sub_219307BD8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = [*(v3 + 16) appLaunchUpsellLastShownCampaignID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_219BF5414();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_219307C64;
}

uint64_t sub_219307C7C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(*v3 + 16) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_219BF5414();

  return v6;
}

void sub_219307CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *(*v5 + 16);
  if (a2)
  {
    v8 = sub_219BF53D4();
  }

  else
  {
    v8 = 0;
  }

  [v7 *a5];
}

void (*sub_219307D6C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = [*(v3 + 16) appLaunchUpsellLastPresenterBundleID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_219BF5414();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_219307DF8;
}

void sub_219307E04(uint64_t a1, char a2, SEL *a3)
{
  v4 = *(a1 + 8);
  v5 = *(*(a1 + 16) + 16);
  if (a2)
  {
    if (v4)
    {

      v6 = sub_219BF53D4();
    }

    else
    {
      v6 = 0;
    }

    [v5 *a3];
  }

  else if (v4)
  {
    v6 = sub_219BF53D4();

    [v5 *a3];
  }

  else
  {
    v6 = 0;
    [v5 *a3];
  }
}

void sub_219307ED4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_219307FBC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_218E28EBC;
  v8[3] = &block_descriptor_113;
  v7 = _Block_copy(v8);

  [v5 forceSyncWithCompletion_];
  _Block_release(v7);
}

void sub_219307FC4(int a1, double *a2, id a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  [a3 setFrame_];
  v10 = [a3 subviews];
  sub_219308228();
  v11 = sub_219BF5924();

  v20 = a3;
  if (v11 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CECE0F0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 removeFromSuperview];

      ++v13;
      if (v16 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  type metadata accessor for ChannelPickerEngagementModel();
  v22.origin.x = v6;
  v22.origin.y = v7;
  v22.size.width = v8;
  v22.size.height = v9;
  CGRectGetWidth(v22);
  v17 = sub_219BE3AA4();
  if (v17)
  {
    v18 = v17;
    [v20 addSubview_];
    [v18 setFrame_];
  }

  v19 = [objc_opt_self() clearColor];
  [v20 setBackgroundColor_];
}

unint64_t sub_219308228()
{
  result = qword_280E8DAE0;
  if (!qword_280E8DAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DAE0);
  }

  return result;
}

uint64_t sub_219308274(uint64_t a1)
{
  sub_21896FA3C();
  v33[0] = *(v3 - 8);
  v4 = *(v33[0] + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - v7;
  v9 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleContinuePlayingRouteModel();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193089DC(a1, v14, type metadata accessor for PuzzleContinuePlayingRouteModel);
  sub_219308A44(v14, v11, type metadata accessor for PuzzleModel);
  v15 = *(v1 + 64);
  v16 = swift_allocBox();
  v34 = v11;
  sub_2193089DC(v11, v17, type metadata accessor for PuzzleModel);
  v33[1] = v16;
  v18 = v16 | 0xE000000000000006;
  v19 = *(v1 + 72);
  v20 = sub_219BDFA44();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = v15;
  sub_2187B14CC(v41, &v36, &unk_280EE7DB0, &qword_280EE7DC0);
  if (v37)
  {
    sub_21875F93C(&v36, v38);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v22 = qword_280ED32D8;
    v21 = qword_280ED32E0;
    v23 = qword_280ED32E8;

    sub_2188202A8(v21);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_2187448D0(&v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v22 = qword_280ED32D8;
    v21 = qword_280ED32E0;
    v23 = qword_280ED32E8;

    sub_2188202A8(v21);
  }

  v35 = v18;
  v37 = sub_219BDD274();
  *&v36 = v19;
  sub_2193089DC(v8, v6, sub_21896FA3C);
  sub_2187B14CC(v43, v38, &qword_280EE33A0, &qword_280EE33B0);
  v24 = (*(v33[0] + 80) + 24) & ~*(v33[0] + 80);
  v25 = (v4 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v33[0] = v8;
  v27 = swift_allocObject();
  *(v27 + 16) = v19;
  sub_219308A44(v6, v27 + v24, sub_21896FA3C);
  v28 = v27 + v25;
  v29 = v38[1];
  *v28 = v38[0];
  *(v28 + 16) = v29;
  *(v28 + 32) = v39;
  v30 = (v27 + v26);
  v31 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v30 = 0;
  v30[1] = 0;
  *v31 = v22;
  v31[1] = v21;
  v31[2] = v23;
  swift_retain_n();

  sub_2188202A8(v21);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v21);
  sub_2187448D0(v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v43, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_219308AAC(v33[0], sub_21896FA3C);
  sub_219308AAC(v34, type metadata accessor for PuzzleModel);
  sub_2187448D0(&v36, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_2193089DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219308A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219308AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219308B0C(uint64_t a1, int a2)
{
  v16[3] = a2;
  v4 = sub_219BDD374();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDD3B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDD814();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  if ((*(v12 + 88))(v14, v11) != *MEMORY[0x277D2FB10])
  {
    return (*(v12 + 8))(v14, v11);
  }

  (*(v12 + 96))(v14, v11);
  (*(v8 + 32))(v10, v14, v7);
  if (*(v2 + 32))
  {
    swift_getObjectType();
    sub_219BDD394();
    sub_219BDD3A4();
    sub_219BDD384();
    sub_219BDE464();

    sub_219308EE0(v18);
    (*(v17 + 8))(v6, v4);
  }

  return (*(v8 + 8))(v10, v7);
}

void (*sub_219308E24(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_218963B4C;
}

uint64_t sub_219308EE0(uint64_t a1)
{
  sub_219308F3C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219308F3C()
{
  if (!qword_280EE33A0)
  {
    sub_218BDE5B0();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE33A0);
    }
  }
}

uint64_t type metadata accessor for TagFeedServiceConfigPrefetchOperation()
{
  result = qword_280E98830;
  if (!qword_280E98830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219309078(uint64_t a1, uint64_t a2)
{
  v5 = CACurrentMediaTime();
  v6 = *(v2 + qword_280E98850);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

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
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v12);
  sub_219309E90();
  sub_219BE3204();
  v13 = swift_allocObject();
  *(v13 + 2) = v6;
  v13[3] = v5;
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_219309F60;
  *(v14 + 24) = v13;
  v15 = v6;

  v16 = sub_219BE2E54();
  sub_219BE2F74();

  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  v17[3] = v5;
  *(v17 + 4) = a1;
  *(v17 + 5) = a2;
  v18 = v15;

  v19 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_219309320(uint64_t a1)
{
  v2 = sub_219BEFB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218718690(a1 + qword_280E98858, v9);
  sub_218718690(a1 + qword_280E98848, v8);
  sub_219BEFB74();
  sub_219BEF484();
  (*(v3 + 8))(v5, v2);
  sub_219309478();
  v6 = sub_219BE31C4();

  return v6;
}

uint64_t sub_219309478()
{
  v1 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_219BF43B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [sub_219BF6394() asSports];
  swift_unknownObjectRelease();
  if (v6)
  {
    if ([v6 isSportsEvent])
    {
      sub_21870F424(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v7 = sub_219BE3014();
      swift_unknownObjectRelease();
      return v7;
    }

    else
    {
      sub_21870F424(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_219C146A0;
      *(v9 + 32) = v6;
      swift_unknownObjectRetain();
      sub_219BF4CE4();
      sub_219BF4CA4();
      v10 = (*(v3 + 104))(v5, *MEMORY[0x277D34400], v2);
      MEMORY[0x28223BE20](v10);
      *(&v13 - 2) = v0;
      *(&v13 - 1) = v5;
      sub_219BE3204();
      v11 = sub_219BE2E54();
      v12 = sub_219BE3054();

      swift_unknownObjectRelease();
      (*(v3 + 8))(v5, v2);
      return v12;
    }
  }

  else
  {
    sub_21870F424(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_2193097A4(uint64_t a1, void *a2, void (*a3)(uint64_t, void))
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  v6 = [a2 identifier];
  v7 = sub_219BF5414();
  v9 = v8;

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_219BF5CD4();
  v10 = MEMORY[0x277D83A80];
  *(v5 + 96) = MEMORY[0x277D839F8];
  *(v5 + 104) = v10;
  *(v5 + 72) = v11;
  sub_219BF6214();
  sub_219BE5314();

  sub_219309EFC();
  sub_219BEF464();
  a3(v13, 0);
}

uint64_t sub_219309920(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C0B8C0;
  v7 = [a2 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2186FC3BC();
  *(v6 + 64) = v12;
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_219BF5CD4();
  v13 = MEMORY[0x277D83A80];
  *(v6 + 96) = MEMORY[0x277D839F8];
  *(v6 + 104) = v13;
  *(v6 + 72) = v14;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v6 + 136) = v11;
  *(v6 + 144) = v12;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0xE000000000000000;
  sub_219BE5314();

  return a3(a1, 1);
}

uint64_t sub_219309ADC()
{
  v0 = sub_219BF37F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v1 + 104))(v3, *MEMORY[0x277D33F28], v0);
  sub_219BF2F54();
  (*(v1 + 8))(v3, v0);
  v4 = sub_219BE3044();

  return v4;
}

uint64_t sub_219309C28()
{
  sub_21870F424(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219309CC0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_280E98858);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_280E98848);
}

uint64_t sub_219309D30(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_280E98858);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_280E98848);
}

uint64_t sub_219309DAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_219309078(sub_219309E34, v4);
}

uint64_t sub_219309E34(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void sub_219309E90()
{
  if (!qword_280E91580)
  {
    sub_219309EFC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E91580);
    }
  }
}

void sub_219309EFC()
{
  if (!qword_280E91588)
  {
    type metadata accessor for TagFeedServiceConfigFetcher();
    sub_2190F6CF8();
    v0 = sub_219BEF474();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91588);
    }
  }
}

uint64_t objectdestroy_2Tm_0()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for SportsManagementDetailSection()
{
  result = qword_27CC18B38;
  if (!qword_27CC18B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21930A050()
{
  type metadata accessor for SportsManagementDetailSectionDescriptor();
  if (v0 <= 0x3F)
  {
    sub_218EA1C64(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_21930A0D4(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

uint64_t sub_21930A11C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_219BDBD34();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21930A1DC, 0, 0);
}

uint64_t sub_21930A1DC(uint64_t a1, uint64_t a2)
{
  v3 = v2[8];
  if (v3 >> 62)
  {
    v4 = sub_219BF7214();
    if (v4)
    {
LABEL_3:
      v5 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CECE0F0](0, v2[8]);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_28;
        }

        v6 = *(v2[8] + 32);
      }

      v2[13] = v6;
      sub_219BDBD24();
      v7 = *(v6 + 48);
      sub_2186F20D4();
      v2[14] = v8;
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_219C09BA0;
      if (v3 >> 62)
      {
        v10 = sub_219BF7214();
        if (v10)
        {
LABEL_8:
          v30 = MEMORY[0x277D84F90];
          v11 = v7;
          v4 = sub_21870B65C(0, v10 & ~(v10 >> 63), 0);
          if ((v10 & 0x8000000000000000) == 0)
          {
            v28 = v9;
            v29 = v7;
            v12 = 0;
            v13 = v30;
            do
            {
              if (v5)
              {
                MEMORY[0x21CECE0F0](v12, v2[8]);
              }

              else
              {
              }

              swift_beginAccess();

              v14 = sub_21988DFA0();
              v16 = v15;
              swift_endAccess();

              v18 = *(v30 + 16);
              v17 = *(v30 + 24);
              if (v18 >= v17 >> 1)
              {
                sub_21870B65C((v17 > 1), v18 + 1, 1);
              }

              ++v12;
              *(v30 + 16) = v18 + 1;
              v19 = v30 + 16 * v18;
              *(v19 + 32) = v14;
              *(v19 + 40) = v16;
            }

            while (v10 != v12);
            v9 = v28;
            v7 = v29;
            goto LABEL_19;
          }

LABEL_28:
          __break(1u);
          return MEMORY[0x282193DF0](v4, a2);
        }
      }

      else
      {
        v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_8;
        }
      }

      v20 = v7;
      v13 = MEMORY[0x277D84F90];
LABEL_19:
      v21 = MEMORY[0x277D83940];
      sub_21930F6D4(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      *(v9 + 56) = v22;
      *(v9 + 64) = sub_21930EBF0(&qword_280E8EDC0, &qword_280E8EE20, v21);
      *(v9 + 32) = v13;
      sub_219BF6214();
      sub_219BE5314();

      ObjectType = swift_getObjectType();
      v24 = swift_task_alloc();
      v2[15] = v24;
      *v24 = v2;
      v24[1] = sub_21930A580;
      v4 = 0;
      a2 = ObjectType;

      return MEMORY[0x282193DF0](v4, a2);
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v25 = sub_2194B1684(MEMORY[0x277D84F90]);

  v26 = v2[1];

  return v26(v25);
}

uint64_t sub_21930A580(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21930AA88, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[18] = v6;
    *v6 = v5;
    v6[1] = sub_21930A708;
    v7 = v4[8];

    return sub_21930AE28(v7, a1);
  }
}

uint64_t sub_21930A708(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_21930AC54;
  }

  else
  {
    v4 = sub_21930A81C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21930A81C()
{
  v1 = v0;
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[12];
  v5 = v1[9];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = sub_21930ECE8(sub_21930EEA8, v6, v2);
  if (v3)
  {

    swift_unknownObjectRelease();

    v8 = v1[11];
    v23 = v1[10];
    v24 = v1[12];
    v9 = *(v1[13] + 48);
    sub_219BF61F4();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09EC0;
    v11 = sub_21988DFA0();
    v13 = v12;
    *(v10 + 56) = MEMORY[0x277D837D0];
    v14 = sub_2186FC3BC();
    *(v10 + 64) = v14;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v1[5] = 0;
    v1[6] = 0xE000000000000000;
    v1[7] = v3;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v15 = v1[5];
    v16 = v1[6];
    *(v10 + 96) = MEMORY[0x277D837D0];
    *(v10 + 104) = v14;
    *(v10 + 72) = v15;
    *(v10 + 80) = v16;
    sub_219BE5314();

    v17 = sub_2194B1684(MEMORY[0x277D84F90]);

    (*(v8 + 8))(v24, v23);
  }

  else
  {
    v17 = v7;
    v18 = v1[12];
    v20 = v1[10];
    v19 = v1[11];
    swift_unknownObjectRelease();

    (*(v19 + 8))(v18, v20);
  }

  v21 = v1[1];

  return v21(v17);
}

uint64_t sub_21930AA88()
{
  v1 = v0[17];
  v2 = v0[11];
  v14 = v0[10];
  v15 = v0[12];
  v3 = *(v0[13] + 48);
  sub_219BF61F4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = sub_21988DFA0();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  v8 = sub_2186FC3BC();
  *(v4 + 64) = v8;
  v0[5] = 0;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v0[6] = 0xE000000000000000;
  v0[7] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v9 = v0[5];
  v10 = v0[6];
  *(v4 + 96) = MEMORY[0x277D837D0];
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_219BE5314();

  v11 = sub_2194B1684(MEMORY[0x277D84F90]);

  (*(v2 + 8))(v15, v14);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_21930AC54()
{
  swift_unknownObjectRelease();
  v1 = v0[20];
  v2 = v0[11];
  v14 = v0[10];
  v15 = v0[12];
  v3 = *(v0[13] + 48);
  sub_219BF61F4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = sub_21988DFA0();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  v8 = sub_2186FC3BC();
  *(v4 + 64) = v8;
  v0[5] = 0;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v0[6] = 0xE000000000000000;
  v0[7] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v9 = v0[5];
  v10 = v0[6];
  *(v4 + 96) = MEMORY[0x277D837D0];
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_219BE5314();

  v11 = sub_2194B1684(MEMORY[0x277D84F90]);

  (*(v2 + 8))(v15, v14);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_21930AE28(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  sub_21930EB9C(0, &qword_280EE7E80, MEMORY[0x277D6CA50]);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21930AED8, 0, 0);
}

uint64_t sub_21930AED8(uint64_t a1)
{
  v2 = *(v1 + 15);
  v3 = (v2 >> 62);
  if (v2 >> 62)
  {
    goto LABEL_59;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_60:
    v68 = sub_2194B158C(MEMORY[0x277D84F90]);

    v69 = *(v1 + 1);

    return v69(v68);
  }

LABEL_3:
  v74 = v2 & 0xC000000000000001;
  v70 = v3;
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  v73 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x2821D23D8](a1);
  }

  v5 = *(v1 + 15);
  v3 = *(v5 + 32);

  while (1)
  {
    v6 = 0;
    *(v1 + 19) = v3;
    v72 = v5 + 32;
    v2 = MEMORY[0x277D84F98];
    v75 = v1;
    v71 = v3;
    do
    {
      if (v74)
      {
        v9 = MEMORY[0x21CECE0F0](v6, *(v1 + 15));
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v6 >= *(v73 + 16))
        {
          goto LABEL_58;
        }

        v9 = *(v72 + 8 * v6);

        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          a1 = sub_219BF7214();
          v4 = a1;
          if (!a1)
          {
            goto LABEL_60;
          }

          goto LABEL_3;
        }
      }

      v11 = sub_21930F328(*(v9 + 32), *(v1 + 16), 1);
      v77 = v12;
      v3 = sub_21930F328(*(v9 + 32), *(v1 + 16), 0);
      v14 = v13;
      v76 = v10;
      v15 = v4;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_21931F2C4(v9);
      v19 = *(v2 + 16);
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_55;
      }

      v23 = v18;
      if (*(v2 + 24) >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = v17;
          sub_2194950BC();
          v17 = v28;
        }
      }

      else
      {
        sub_219485A7C(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_21931F2C4(v9);
        if ((v23 & 1) != (v24 & 1))
        {
          type metadata accessor for TagFeedServiceContext();

          return sub_219BF79A4();
        }
      }

      v1 = v75;
      *(v75 + 20) = v2;
      v4 = v15;
      if (v23)
      {
        v7 = (*(v2 + 56) + 32 * v17);
        *v7 = v11;
        v7[1] = v77;
        v7[2] = v3;
        v7[3] = v14;

        v8 = v76;
      }

      else
      {
        *(v2 + 8 * (v17 >> 6) + 64) |= 1 << v17;
        *(*(v2 + 48) + 8 * v17) = v9;
        v25 = (*(v2 + 56) + 32 * v17);
        *v25 = v11;
        v25[1] = v77;
        v25[2] = v3;
        v25[3] = v14;

        v26 = *(v2 + 16);
        v21 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        v8 = v76;
        if (v21)
        {
          goto LABEL_57;
        }

        *(v2 + 16) = v27;
      }

      ++v6;
    }

    while (v8 != v15);
    v3 = (v2 + 64);
    v29 = -1;
    v30 = -1 << *(v2 + 32);
    if (-v30 < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v31 = v29 & *(v2 + 64);
    v32 = (63 - v30) >> 6;
    swift_bridgeObjectRetain_n();
    v33 = 0;
    v34 = MEMORY[0x277D84F90];
    v35 = MEMORY[0x277D837D0];
    v74 = v32;
    if (!v31)
    {
      break;
    }

    while (1)
    {
      v1 = v34;
      v36 = v33;
LABEL_32:
      v37 = (*(v2 + 56) + ((v36 << 11) | (32 * __clz(__rbit64(v31)))));
      v38 = *v37;
      v39 = v37[1];
      v41 = v37[2];
      v40 = v37[3];
      sub_21930F6D4(0, &qword_280E8B750, v35, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 32) = v38;
      *(inited + 16) = xmmword_219C09EC0;
      *(inited + 40) = v39;
      *(inited + 48) = v41;
      *(inited + 56) = v40;
      v4 = *(v1 + 2);
      v43 = v4 + 2;
      if (__OFADD__(v4, 2))
      {
        break;
      }

      v44 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v1;
      if (!v44 || (v45 = *(v1 + 3) >> 1, v45 < v43))
      {
        if (v4 <= v43)
        {
          v46 = v4 + 2;
        }

        else
        {
          v46 = v4;
        }

        v34 = sub_218840D24(v44, v46, 1, v1);
        v45 = *(v34 + 3) >> 1;
      }

      v1 = v75;
      if (v45 - *(v34 + 2) < 2)
      {
        goto LABEL_64;
      }

      v35 = MEMORY[0x277D837D0];
      swift_arrayInitWithCopy();

      v47 = *(v34 + 2);
      v21 = __OFADD__(v47, 2);
      v48 = v47 + 2;
      if (v21)
      {
        goto LABEL_65;
      }

      v31 &= v31 - 1;
      *(v34 + 2) = v48;
      v33 = v36;
      v3 = (v2 + 64);
      v32 = v74;
      if (!v31)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v3 = MEMORY[0x21CECE0F0](0, *(v1 + 15));
    v73 = v2 & 0xFFFFFFFFFFFFFF8;
    v5 = *(v1 + 15);
  }

  while (1)
  {
LABEL_28:
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_56;
    }

    if (v36 >= v32)
    {
      break;
    }

    v31 = v3[v36];
    ++v33;
    if (v31)
    {
      v1 = v34;
      goto LABEL_32;
    }
  }

  *(v1 + 12) = v34;
  v49 = MEMORY[0x277D83940];
  sub_21930F6D4(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v51 = v50;
  sub_21930EBF0(&qword_280E8EDE0, &qword_280E8EE20, v49);
  v52 = sub_219BF56E4();

  *(v1 + 21) = CACurrentMediaTime();
  v53 = v71[6];
  sub_2186F20D4();
  *(v1 + 22) = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_219C09EC0;
  *(v55 + 56) = v51;
  *(v55 + 64) = sub_21930EBF0(&qword_280E8EDC0, &qword_280E8EE20, v49);
  *(v55 + 32) = v52;
  if (v70)
  {
    v56 = sub_219BF7214();
  }

  else
  {
    v56 = *(v73 + 16);
  }

  v58 = *(v1 + 17);
  v59 = MEMORY[0x277D83C10];
  *(v55 + 96) = MEMORY[0x277D83B88];
  *(v55 + 104) = v59;
  *(v55 + 72) = v56;
  v60 = v53;

  sub_219BF6214();
  sub_219BE5314();

  __swift_project_boxed_opaque_existential_1((v58 + 32), *(v58 + 56));
  v61 = 15.0;
  if (*(v71 + 56) != 1)
  {
    sub_219BF5D04();
    v61 = v62 * 5.0;
  }

  v63 = *(v75 + 18);
  *v63 = v61;
  v64 = *MEMORY[0x277D6CA48];
  v65 = sub_219BE1B34();
  v66 = *(v65 - 8);
  (*(v66 + 104))(v63, v64, v65);
  (*(v66 + 56))(v63, 0, 1, v65);
  *(v75 + 23) = sub_219BF2984();

  sub_2187BC7C8(v63, &qword_280EE7E80, MEMORY[0x277D6CA50]);
  v67 = swift_task_alloc();
  *(v75 + 24) = v67;
  *v67 = v75;
  v67[1] = sub_21930B7E8;
  a1 = (v75 + 104);

  return MEMORY[0x2821D23D8](a1);
}

uint64_t sub_21930B7E8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_21930BA74;
  }

  else
  {
    v2 = sub_21930B92C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21930B92C()
{
  v1 = v0[20];
  v2 = v0[13];
  v3 = *(v0[19] + 48);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = v3;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v6;
  *(v4 + 32) = v7;
  sub_219BF6214();
  sub_219BE5314();

  sub_21930EFFC(v1, v2);
  v9 = v8;
  swift_bridgeObjectRelease_n();

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_21930BA74()
{
  v1 = v0[25];
  v2 = *(v0[19] + 48);
  sub_219BF61F4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v4 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v4;
  v0[10] = 0;
  *(v3 + 32) = v5;
  v0[11] = 0xE000000000000000;
  v0[14] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v6 = v0[10];
  v7 = v0[11];
  *(v3 + 96) = MEMORY[0x277D837D0];
  *(v3 + 104) = sub_2186FC3BC();
  *(v3 + 72) = v6;
  *(v3 + 80) = v7;
  sub_219BE5314();

  swift_willThrow();

  v8 = v0[1];

  return v8();
}

void sub_21930BC0C(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v71 = a3;
  v74 = a2;
  v68 = a4;
  v5 = sub_219BDB184();
  v6 = *(v5 - 8);
  v72 = v5;
  v73 = v6;
  MEMORY[0x28223BE20](v5);
  v70 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  v75 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v76 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v62 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = *a1;
  v24 = *(a1 + 8);
  v69 = v23;
  v25 = [v23 fileURL];
  if (!v25)
  {
    sub_21930EFA8();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
    return;
  }

  v66 = v8;
  v67 = v24;
  v26 = v25;
  sub_219BDB8B4();

  v27 = *(v11 + 32);
  v27(v22, v20, v10);
  v28 = v77;
  v29 = sub_219BDB974();
  if (v28)
  {
    (*(v11 + 8))(v22, v10);
    return;
  }

  v65 = v29;
  v77 = v30;
  v64 = *(v11 + 8);
  v64(v22, v10);
  if (v67)
  {
    v32 = v67;
    v33 = [v32 fileURL];
    if (!v33)
    {
      sub_2186C6190(v65, v77);
      sub_21930EFA8();
      swift_allocError();
      *v37 = 1;
      swift_willThrow();

      return;
    }

    v34 = v33;
    sub_219BDB8B4();

    v27(v17, v14, v10);
    v35 = sub_219BDB974();
    v36 = v76;
    v39 = v38;
    v63 = v35;

    v64(v17, v10);
  }

  else
  {
    v63 = 0;
    v39 = 0xF000000000000000;
    v36 = v76;
  }

  sub_219BDBD24();
  type metadata accessor for TagFeedContentConfig();
  sub_21930EF60(&qword_280ECCCF0, type metadata accessor for TagFeedContentConfig);
  sub_219BE1974();
  v76 = 0;
  v74 = v78;
  v40 = [v69 resourceID];
  v41 = sub_219BF5414();
  v43 = v42;

  v44 = v39;
  v45 = v70;
  sub_219BDB104();
  type metadata accessor for TagFeedConfigData();
  v46 = swift_allocObject();
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = 0;
  v47 = *(v73 + 32);
  v69 = v46;
  v48 = v45;
  v49 = v44;
  v73 += 32;
  v47(v46 + OBJC_IVAR____TtC7NewsUI217TagFeedConfigData_fetchInterval, v48, v72);
  if (v44 >> 60 == 15)
  {
    v50 = 0;
    v51 = v63;
  }

  else
  {
    v51 = v63;
    sub_218B87528(v63, v49);
    v52 = v76;
    sub_219BE1974();
    if (v52)
    {
      sub_218822A58(v51, v49);

      sub_218822A58(v51, v49);
      sub_2186C6190(v65, v77);
      (*(v75 + 8))(v36, v66);
      return;
    }

    sub_218822A58(v51, v49);
    v50 = v78;
  }

  v76 = v50;
  if (v67)
  {
    v53 = v67;
    v54 = [v53 resourceID];
    v55 = sub_219BF5414();
    v67 = v49;
    v57 = v56;

    v58 = v70;
    sub_219BDB104();

    v59 = swift_allocObject();
    *(v59 + 16) = v55;
    *(v59 + 24) = v57;
    *(v59 + 32) = 0;
    v47(v59 + OBJC_IVAR____TtC7NewsUI217TagFeedConfigData_fetchInterval, v58, v72);
    sub_218822A58(v51, v67);
    sub_2186C6190(v65, v77);
  }

  else
  {
    sub_218822A58(v51, v49);
    sub_2186C6190(v65, v77);
    v59 = 0;
  }

  (*(v75 + 8))(v36, v66);
  v60 = v68;
  v61 = v69;
  *v68 = v74;
  v60[1] = v61;
  v60[2] = v76;
  v60[3] = v59;
}

uint64_t sub_21930C338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_219BDB954();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21930C3FC, 0, 0);
}

uint64_t sub_21930C3FC()
{
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v4 = *(v3 + 48);
  v0[24] = v4;
  sub_2186F20D4();
  v0[25] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  v7 = sub_219BDB804();
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  v0[26] = v11;
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v12 = *(v3 + 32);
  v0[27] = v12;
  v13 = sub_21988DFA0();
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v13;
  *(v6 + 80) = v14;
  sub_219BF6214();
  sub_219BE5314();

  sub_21930D8A0(v12, v2, v1);
  v15 = swift_task_alloc();
  v0[28] = v15;
  *v15 = v0;
  v15[1] = sub_21930C5E8;
  v16 = v0[23];

  return sub_21930DE30(v16, v4);
}

uint64_t sub_21930C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;
  v10[29] = a1;
  v10[30] = a2;
  v10[31] = a3;
  v10[32] = a4;
  v10[33] = v4;

  v12 = v10[23];
  v13 = v10[22];
  v14 = v10[21];
  if (v4)
  {
    (*(v13 + 8))(v12, v14);

    return MEMORY[0x2822009F8](sub_21930CD5C, 0, 0);
  }

  else
  {
    (*(v13 + 8))(v12, v14);
    v15 = swift_task_alloc();
    v10[34] = v15;
    *v15 = v11;
    v15[1] = sub_21930C800;
    v16 = v10[19];
    v17 = v10[20];
    v18 = v10[17];

    return sub_21930D27C(a1, a2, a3, a4, v16, v17, v18);
  }
}

uint64_t sub_21930C800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = v4;
  v6[35] = v4;

  if (v4)
  {
    v7 = sub_21930CE00;
  }

  else
  {
    v7 = sub_21930C920;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21930C920()
{

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[5];
  v4 = v0[6];

  v5 = v0[1];

  return v5(v2, v1, v3, v4);
}

uint64_t sub_21930C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;
  v10[38] = a1;
  v10[39] = a2;
  v10[40] = a3;
  v10[41] = a4;
  v10[42] = v4;

  if (v4)
  {

    return MEMORY[0x2822009F8](sub_21930CED0, 0, 0);
  }

  else
  {
    v12 = swift_task_alloc();
    v10[43] = v12;
    *v12 = v11;
    v12[1] = sub_21930CB88;
    v13 = v10[19];
    v14 = v10[20];
    v15 = v10[17];

    return sub_21930D27C(a1, a2, a3, a4, v13, v14, v15);
  }
}

uint64_t sub_21930CB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[8] = v5;
  v6[9] = a1;
  v6[10] = a2;
  v6[11] = a3;
  v6[12] = a4;
  v6[13] = v4;
  v6[44] = v4;

  if (v4)
  {
    v7 = sub_21930D094;
  }

  else
  {
    v7 = sub_21930CCA8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21930CCA8()
{
  v1 = v0[36];

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[11];
  v5 = v0[12];

  v6 = v0[1];

  return v6(v3, v2, v4, v5);
}

uint64_t sub_21930CD5C()
{
  v0[36] = v0[33];
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_21930C9C8;
  v2 = v0[24];
  v3 = v0[18];

  return sub_21930DE30(v3, v2);
}

uint64_t sub_21930CE00()
{

  v0[36] = v0[35];
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_21930C9C8;
  v2 = v0[24];
  v3 = v0[18];

  return sub_21930DE30(v3, v2);
}

uint64_t sub_21930CED0()
{
  v1 = v0[42];
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v13 = v0[36];
  v2 = v0[26];
  sub_219BF61F4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C0B8C0;
  v4 = sub_219BDB804();
  v5 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_21988DFA0();
  *(v3 + 96) = v5;
  *(v3 + 104) = v2;
  v0[14] = 0;
  *(v3 + 72) = v7;
  *(v3 + 80) = v8;
  v0[15] = 0xE000000000000000;
  v0[16] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v9 = v0[14];
  v10 = v0[15];
  *(v3 + 136) = v5;
  *(v3 + 144) = v2;
  *(v3 + 112) = v9;
  *(v3 + 120) = v10;
  sub_219BE5314();

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_21930D094()
{

  v1 = v0[44];
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v13 = v0[36];
  v2 = v0[26];
  sub_219BF61F4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C0B8C0;
  v4 = sub_219BDB804();
  v5 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_21988DFA0();
  *(v3 + 96) = v5;
  *(v3 + 104) = v2;
  v0[14] = 0;
  *(v3 + 72) = v7;
  *(v3 + 80) = v8;
  v0[15] = 0xE000000000000000;
  v0[16] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v9 = v0[14];
  v10 = v0[15];
  *(v3 + 136) = v5;
  *(v3 + 144) = v2;
  *(v3 + 112) = v9;
  *(v3 + 120) = v10;
  sub_219BE5314();

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_21930D27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_21930EB9C(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v8 = sub_219BDB954();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21930D39C, 0, 0);
}

uint64_t sub_21930D39C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_2188383F8(v0[6], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2187BC7C8(v0[10], &unk_280EE9D00, MEMORY[0x277CC9260]);
    v5 = v0[4];
    v4 = v0[5];

    v6 = v0[1];
    v7 = v0[2];
    v8 = v0[3];

    return v6(v7, v8, v5, v4);
  }

  else
  {
    v10 = v0[12];
    v11 = v0[11];
    v12 = v0[9];
    (*(v10 + 32))(v0[13], v0[10], v11);
    (*(v10 + 56))(v12, 1, 1, v11);
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_21930D594;
    v14 = v0[13];
    v16 = v0[8];
    v15 = v0[9];

    return sub_21930C338(v16, v14, v15);
  }
}

uint64_t sub_21930D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v10[15] = v4;

  v11 = v10[9];
  if (v4)
  {
    sub_2187BC7C8(v11, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v12 = sub_21930D804;
  }

  else
  {
    v10[16] = a4;
    v10[17] = a3;
    v10[18] = a2;
    v10[19] = a1;
    sub_2187BC7C8(v11, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v12 = sub_21930D72C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_21930D72C()
{
  v1 = v0[18];
  v2 = v0[19];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  return v3(v4, v5, v2, v1);
}

uint64_t sub_21930D804()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21930D8A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v56 = a1;
  sub_21930EB9C(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = sub_219BDB0F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a2;
  v14 = sub_219BDB844();
  v16 = v15;
  v52 = v14;
  v53 = v15;
  sub_219BDB0B4();
  sub_2187F3BD4();
  v17 = sub_219BF6FD4();
  (*(v11 + 8))(v13, v10);
  v18 = *(v17 + 16);
  if (!v18)
  {

    v25 = 0;
    v26 = 1;
LABEL_9:
    sub_21930EC40();
    swift_allocError();
    *v48 = v25;
    v48[1] = v26;
    return swift_willThrow();
  }

  if (v18 == 1)
  {

    v52 = 46;
    v53 = 0xE100000000000000;
    v19 = [objc_msgSend(v56 backingTag)];
    swift_unknownObjectRelease();
    v20 = sub_219BF5414();
    v22 = v21;

    MEMORY[0x21CECC330](v20, v22);

    v24 = v52;
    v23 = v53;
    v52 = v14;
    v53 = v16;

    MEMORY[0x21CECC330](v24, v23);
  }

  else
  {

    v49 = v18 - 1;
    v52 = sub_219A79734(v18 - 1, v17);
    v53 = v27;
    v54 = v28;
    v55 = v29;
    v30 = MEMORY[0x277D83F98];
    sub_21930F6D4(0, &qword_27CC18B50, MEMORY[0x277D837D0], MEMORY[0x277D83F98]);
    sub_21930EBF0(&qword_27CC18B58, &qword_27CC18B50, v30);

    v31 = sub_219BF5324();
    v33 = v32;
    swift_unknownObjectRelease();
    v52 = 46;
    v53 = 0xE100000000000000;
    v34 = [objc_msgSend(v56 backingTag)];
    swift_unknownObjectRelease();
    v35 = sub_219BF5414();
    v37 = v36;

    MEMORY[0x21CECC330](v35, v37);

    MEMORY[0x21CECC330](46, 0xE100000000000000);
    v39 = v52;
    v38 = v53;
    v52 = v31;
    v53 = v33;

    MEMORY[0x21CECC330](v39, v38);

    if (v18 > *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    v42 = v52;
    v41 = v53;
    v43 = v17 + 16 * v49;
    v44 = *(v43 + 32);
    v45 = *(v43 + 40);

    v52 = v42;
    v53 = v41;

    MEMORY[0x21CECC330](v44, v45);
  }

  v25 = v52;
  v26 = v53;

  sub_219BDB894();
  v46 = sub_219BDB954();
  v47 = *(v46 - 8);
  (*(v47 + 56))(v7, 0, 1, v46);
  sub_219BDB904();

  sub_2187BC7C8(v7, &unk_280EE9D00, MEMORY[0x277CC9260]);
  if ((*(v47 + 48))(v9, 1, v46) == 1)
  {
    sub_2187BC7C8(v9, &unk_280EE9D00, MEMORY[0x277CC9260]);
    goto LABEL_9;
  }

  return (*(v47 + 32))(v50, v9, v46);
}

uint64_t sub_21930DE30(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_219BDB184();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_219BDBD34();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_219BDB954();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_219BDAF64();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21930E014, 0, 0);
}

uint64_t sub_21930E014()
{
  (*(v0[16] + 16))(v0[17], v0[5], v0[15]);
  sub_219BDAF44();
  sub_219BDBD24();
  sub_2186F20D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  v2 = sub_219BDB804();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_2186FC3BC();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  sub_219BF6214();
  sub_219BE5314();

  v5 = [objc_opt_self() sharedSession];
  v0[21] = sub_219BE2E24();

  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_21930E1C0;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_21930E1C0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_21930E5CC;
  }

  else
  {
    v2 = sub_21930E2F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21930E2F4()
{
  v1 = v0[23];
  v2 = v0[2];
  v3 = v0[3];
  sub_219BDBD24();
  type metadata accessor for TagFeedContentConfig();
  sub_21930EF60(&qword_280ECCCF0, type metadata accessor for TagFeedContentConfig);
  sub_219BE1974();
  v5 = v0[19];
  v4 = v0[20];
  v24 = v0[18];
  if (v1)
  {
    v7 = v0[13];
    v6 = v0[14];
    v9 = v0[11];
    v8 = v0[12];
    sub_2186C6190(v2, v3);
    v10 = *(v8 + 8);
    v10(v7, v9);
    v10(v6, v9);
    (*(v5 + 8))(v4, v24);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[14];
    v14 = v0[12];
    v22 = v0[11];
    v15 = v0[9];
    v16 = v0[10];
    v20 = v0[8];
    v21 = v0[13];
    v23 = v0[4];
    sub_219BDB104();
    type metadata accessor for TagFeedConfigData();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0xE000000000000000;
    *(v17 + 32) = 0;
    (*(v15 + 32))(v17 + OBJC_IVAR____TtC7NewsUI217TagFeedConfigData_fetchInterval, v16, v20);
    sub_2186C6190(v2, v3);
    v18 = *(v14 + 8);
    v18(v21, v22);
    v18(v13, v22);
    (*(v5 + 8))(v4, v24);

    v19 = v0[1];

    return v19(v23, v17, 0, 0);
  }
}

uint64_t sub_21930E5CC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[12] + 8))(v0[14], v0[11]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21930E6A4(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_21930E6C4, 0, 0);
}

uint64_t sub_21930E6C4()
{
  v1 = v0[7];
  sub_21930F6D4(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v0[9] = inited;
  *(inited + 16) = xmmword_219C146A0;
  *(inited + 32) = v1;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_21930E7C0;

  return sub_21930A11C(inited);
}

uint64_t sub_21930E7C0(uint64_t a1)
{
  *(*v1 + 88) = a1;

  swift_setDeallocating();
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_21930E8F8, 0, 0);
}

uint64_t sub_21930E8F8()
{
  if (*(v0[11] + 16) && (v1 = sub_21931F2C4(v0[7]), (v2 & 1) != 0))
  {
    v3 = (*(v0[11] + 56) + 32 * v1);
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[3];

    v8 = v0[1];

    return v8(v4, v5, v6, v7);
  }

  else
  {

    sub_21930EC94();
    swift_allocError();
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

id sub_21930EA30(void *a1, void *a2)
{
  v3 = [a1 tagType];
  if (v3 == 3)
  {
    if (([a2 respondsToSelector_] & 1) == 0)
    {
      return 0;
    }

    result = [a2 sectionFeedConfigurationResourceId];
    if (result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 1 && ([a2 respondsToSelector_] & 1) != 0)
      {
        result = [a2 topicFeedConfigurationResourceId];
        if (!result)
        {
          return result;
        }

LABEL_9:
        v5 = result;
        v6 = sub_219BF5414();

        return v6;
      }

      return 0;
    }

    if (([a2 respondsToSelector_] & 1) == 0)
    {
      return 0;
    }

    result = [a2 channelFeedConfigurationResourceId];
    if (result)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_21930EB4C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_21930EB9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21930EBF0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_21930F6D4(255, a2, MEMORY[0x277D837D0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21930EC40()
{
  result = qword_27CC18B60;
  if (!qword_27CC18B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18B60);
  }

  return result;
}

unint64_t sub_21930EC94()
{
  result = qword_280EB9E50;
  if (!qword_280EB9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9E50);
  }

  return result;
}

uint64_t sub_21930ECE8(void (*a1)(_OWORD *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  sub_21930EEC4();
  result = sub_219BF7584();
  v5 = 0;
  v31 = a3;
  v32 = result;
  v8 = *(a3 + 64);
  v7 = a3 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v29 = result + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(*(v31 + 48) + 8 * v16);
      v18 = *(v31 + 56) + 16 * v16;
      v20 = *v18;
      v19 = *(v18 + 8);
      v34[0] = v20;
      v34[1] = v19;
      v21 = v19;

      v22 = v20;
      v23 = v35;
      a1(v33, v34);

      v35 = v23;
      if (v23)
      {
        break;
      }

      *(v29 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v32;
      *(v32[6] + 8 * v16) = v17;
      v24 = (v32[7] + 32 * v16);
      v25 = v33[1];
      *v24 = v33[0];
      v24[1] = v25;
      v26 = v32[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      v32[2] = v28;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    return v32;
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}