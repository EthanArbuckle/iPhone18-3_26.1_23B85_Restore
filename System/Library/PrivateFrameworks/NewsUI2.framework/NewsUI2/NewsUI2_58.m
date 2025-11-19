uint64_t sub_218D35B68(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [*(a1 + 16) name];
  v6 = sub_219BF5414();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_219BF5454();

  return v9;
}

uint64_t sub_218D35CD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD10];
  v3 = sub_219BE7C94();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_218D35D74()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218D35E34()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218D35F28()
{
  sub_218D35F98();
  swift_allocObject();
  sub_2189323B4();

  return sub_219BE6E64();
}

void sub_218D35F98()
{
  if (!qword_280EE5638)
  {
    sub_218931D04();
    sub_218931D5C();
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5638);
    }
  }
}

uint64_t sub_218D36018()
{
  sub_2186E2AFC(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0D34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalNewsTodayFeedGroup();
  sub_218D37D3C(v0 + *(v8 + 28), v3, sub_2186E2AFC);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_218D37C24(v3, sub_2186E2AFC);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_2186E2A98(0, &qword_280E8B878, MEMORY[0x277D33130], MEMORY[0x277D84560]);
    v10 = sub_219BF10D4();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    (*(v5 + 16))(v13 + v12, v7, v4);
    (*(v11 + 104))(v13 + v12, *MEMORY[0x277D33128], v10);
    v14 = sub_2194AD438(v13);
    swift_setDeallocating();
    (*(v11 + 8))(v13 + v12, v10);
    swift_deallocClassInstance();
    (*(v5 + 8))(v7, v4);
    return v14;
  }
}

uint64_t sub_218D36318@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_218D37AE4(0);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E2AFC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D37B4C();
  v51 = v7;
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E2B30(0, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
  v52 = v9;
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v56 = sub_219BED8D4();
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218D37DA4(0, &qword_280E8CFD0, MEMORY[0x277D844C8]);
  v14 = v13;
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D37BD0();
  v20 = v57;
  sub_219BF7B34();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v57 = v17;
  v21 = v19;
  LOBYTE(v58) = 0;
  sub_218D37950(&unk_280E92630, MEMORY[0x277D31C50]);
  v22 = v56;
  sub_219BF7734();
  (*(v53 + 32))(v21, v55, v22);
  LOBYTE(v58) = 1;
  sub_218D37E08(&unk_280EE6780);
  v24 = v11;
  v25 = v52;
  sub_219BF7734();
  v26 = v16;
  sub_219BE3384();
  (*(v49 + 8))(v24, v25);
  *(v21 + v57[5]) = v58;
  LOBYTE(v58) = 2;
  sub_218D37950(&unk_280EE6800, sub_218D37B4C);
  v28 = v50;
  v27 = v51;
  v52 = 0;
  sub_219BF7734();
  v55 = a1;
  v29 = v14;
  sub_219BE3384();
  (*(v47 + 8))(v28, v27);
  *(v21 + v57[6]) = v58;
  sub_218D37B18(0);
  v31 = v30;
  LOBYTE(v58) = 3;
  sub_218D37950(&qword_280EE6840, sub_218D37B18);
  v32 = v48;
  sub_219BF76E4();
  v50 = v26;
  v51 = v29;
  v33 = *(v31 - 8);
  if ((*(v33 + 48))(v32, 1, v31) == 1)
  {
    sub_218D37C24(v32, sub_218D37AE4);
    v34 = 1;
    v36 = v45;
    v35 = v46;
  }

  else
  {
    v35 = v46;
    sub_219BE3384();
    (*(v33 + 8))(v32, v31);
    v34 = 0;
    v36 = v45;
  }

  v37 = sub_219BF0D34();
  (*(*(v37 - 8) + 56))(v35, v34, 1, v37);
  v38 = v57;
  sub_218D37C84(v35, v21 + v57[7]);
  sub_2186D0BA8();
  v60 = 4;
  sub_2187531B0(&qword_280E8EDD0);
  v39 = v51;
  v40 = v50;
  sub_219BF76E4();
  v41 = v54;
  *(v21 + v38[8]) = v58;
  v60 = 5;
  sub_218D37CE8();
  sub_219BF7734();
  (*(v41 + 8))(v40, v39);
  v42 = v59;
  v43 = v21 + v38[9];
  *v43 = v58;
  *(v43 + 8) = v42;
  sub_218D37D3C(v21, v36, type metadata accessor for LocalNewsTodayFeedGroup);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_218D37C24(v21, type metadata accessor for LocalNewsTodayFeedGroup);
}

uint64_t sub_218D36D1C(void *a1)
{
  sub_2186E2AFC(0);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D37AE4(0);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D37B4C();
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E2B30(0, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_218D37DA4(0, &qword_280E8C6A0, MEMORY[0x277D84538]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D37BD0();
  v18 = v33;
  sub_219BF7B44();
  LOBYTE(v36) = 0;
  sub_219BED8D4();
  sub_218D37950(&qword_280E92640, MEMORY[0x277D31C50]);
  v35 = v17;
  v19 = v34;
  sub_219BF7834();
  if (v19)
  {
    return (*(v15 + 8))(v35, v14);
  }

  v21 = v31;
  v34 = v15;
  v27 = type metadata accessor for LocalNewsTodayFeedGroup();
  sub_2186D6710(0, &qword_280E8E390);
  swift_unknownObjectRetain();
  sub_219BE3404();
  LOBYTE(v36) = 1;
  sub_218D37E08(&unk_280EE6790);
  v22 = v32;
  sub_219BF7834();
  (*(v21 + 8))(v12, v22);
  v36 = *(v18 + v27[6]);
  sub_2186E2B30(0, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
  sub_218D37E78();

  sub_219BE33B4();
  LOBYTE(v36) = 2;
  sub_218D37950(&qword_280EE6810, sub_218D37B4C);
  sub_219BF7834();
  (*(v30 + 8))(v9, v7);
  sub_218D37D3C(v18 + v27[7], v29, sub_2186E2AFC);
  v23 = v28;
  sub_219BE33A4();
  LOBYTE(v36) = 3;
  sub_218D37B18(0);
  sub_218D37950(&qword_280EE6848, sub_218D37B18);
  sub_219BF77E4();
  sub_218D37C24(v23, sub_218D37AE4);
  v36 = *(v18 + v27[8]);
  v38 = 4;
  sub_2186D0BA8();
  sub_2187531B0(&unk_280E8EE00);
  sub_219BF77E4();
  v24 = (v18 + v27[9]);
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  v36 = v25;
  v37 = v24;
  v38 = 5;
  sub_218D37EFC();
  sub_219BF7834();
  return (*(v34 + 8))(v35, v14);
}

uint64_t sub_218D37414(uint64_t a1)
{
  v2 = sub_218D37950(&unk_280EE1918, type metadata accessor for LocalNewsTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218D3749C(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 20)) name];
  v3 = sub_219BF5414();

  return v3;
}

uint64_t sub_218D3750C()
{
  sub_219BF5524();
}

uint64_t sub_218D3761C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218D38068();
  *a1 = result;
  return result;
}

void sub_218D3764C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000070756FLL;
  v4 = 0x724774616D726F66;
  v5 = 0xE700000000000000;
  v6 = 0x72656874616577;
  v7 = 0x8000000219CD7220;
  v8 = 0xD00000000000001BLL;
  if (v2 != 4)
  {
    v8 = 0x656C65536F726568;
    v7 = 0xED00006E6F697463;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v10 = 0x736E6F6974636573;
    v9 = 0xE800000000000000;
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

uint64_t sub_218D37724()
{
  v1 = *v0;
  v2 = 0x724774616D726F66;
  v3 = 0x72656874616577;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0x656C65536F726568;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C656E6E616863;
  if (v1 != 1)
  {
    v5 = 0x736E6F6974636573;
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

uint64_t sub_218D377F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218D38068();
  *a1 = result;
  return result;
}

uint64_t sub_218D37820(uint64_t a1)
{
  v2 = sub_218D37BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D3785C(uint64_t a1)
{
  v2 = sub_218D37BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218D37950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218D379E0(uint64_t a1)
{
  result = sub_218D37950(&unk_280EE18D0, type metadata accessor for LocalNewsTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218D37A38(void *a1)
{
  a1[1] = sub_218D37950(&unk_280EE1918, type metadata accessor for LocalNewsTodayFeedGroup);
  a1[2] = sub_218D37950(&unk_280EE18E0, type metadata accessor for LocalNewsTodayFeedGroup);
  result = sub_218D37950(&unk_280EE18F8, type metadata accessor for LocalNewsTodayFeedGroup);
  a1[3] = result;
  return result;
}

void sub_218D37B4C()
{
  if (!qword_280EE67F0)
  {
    sub_2186E2B30(255, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
    v0 = sub_219BE3474();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE67F0);
    }
  }
}

unint64_t sub_218D37BD0()
{
  result = qword_280EE1948;
  if (!qword_280EE1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1948);
  }

  return result;
}

uint64_t sub_218D37C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D37C84(uint64_t a1, uint64_t a2)
{
  sub_2186E2AFC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218D37CE8()
{
  result = qword_280ECF208;
  if (!qword_280ECF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF208);
  }

  return result;
}

uint64_t sub_218D37D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218D37DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D37BD0();
    v7 = a3(a1, &type metadata for LocalNewsTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218D37E08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2186E2B30(255, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218D37E78()
{
  result = qword_280E8EC10;
  if (!qword_280E8EC10)
  {
    sub_2186E2B30(255, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EC10);
  }

  return result;
}

unint64_t sub_218D37EFC()
{
  result = qword_280ECF218;
  if (!qword_280ECF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF218);
  }

  return result;
}

unint64_t sub_218D37F64()
{
  result = qword_27CC11670;
  if (!qword_27CC11670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11670);
  }

  return result;
}

unint64_t sub_218D37FBC()
{
  result = qword_280EE1928;
  if (!qword_280EE1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1928);
  }

  return result;
}

unint64_t sub_218D38014()
{
  result = qword_280EE1930[0];
  if (!qword_280EE1930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EE1930);
  }

  return result;
}

uint64_t sub_218D38068()
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

uint64_t sub_218D380C4(void *a1, uint64_t a2)
{
  sub_218D39DE8(0, &qword_280E8C698, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D38390();
  sub_219BF7B44();
  v10[1] = a2;
  sub_218D383E4();
  sub_218D3844C();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218D3823C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365707974627573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_218D382C4(uint64_t a1)
{
  v2 = sub_218D38390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D38300(uint64_t a1)
{
  v2 = sub_218D38390();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218D3833C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_218D39C58(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_218D38390()
{
  result = qword_280EE1808;
  if (!qword_280EE1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1808);
  }

  return result;
}

void sub_218D383E4()
{
  if (!qword_280E8FBA8)
  {
    type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FBA8);
    }
  }
}

unint64_t sub_218D3844C()
{
  result = qword_280E8FBA0;
  if (!qword_280E8FBA0)
  {
    sub_218D383E4();
    sub_218D39EFC(&qword_280EE1478, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FBA0);
  }

  return result;
}

uint64_t sub_218D384FC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a3;
  v105 = a2;
  v97 = a1;
  v107 = a4;
  v4 = MEMORY[0x277D32318];
  sub_218D396B8(0, &qword_280E91860, MEMORY[0x277D32318]);
  v6 = v5;
  v109 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v96 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = &v95 - v9;
  v10 = MEMORY[0x277D321A0];
  sub_218D396B8(0, &qword_280E91A20, MEMORY[0x277D321A0]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v98 = &v95 - v17;
  v106 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
  v108 = *(v106 - 8);
  v18 = MEMORY[0x28223BE20](v106);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v100 = &v95 - v21;
  sub_218D39754(0, &unk_280E91850, &qword_280E91860, v4);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v95 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v99 = &v95 - v30;
  MEMORY[0x28223BE20](v29);
  v103 = &v95 - v31;
  sub_218D39754(0, &unk_280E91A10, &qword_280E91A20, v10);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v95 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v95 - v40;
  MEMORY[0x28223BE20](v39);
  v104 = &v95 - v42;
  sub_218D397AC();
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v95 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v44)
  {
    v104 = v16;
    v105 = v25;
    (*(v13 + 56))(v38, 1, 1, v12);
    v65 = v109;
    (*(v109 + 56))(v28, 1, 1, v6);
    sub_218D39804(v38, v35, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v66 = *(v13 + 48);
    v67 = v66(v35, 1, v12);
    v108 = v6;
    if (v67 == 1)
    {
      v68 = v20;
      if (qword_280E91AC8 != -1)
      {
        swift_once();
      }

      v69 = __swift_project_value_buffer(v12, qword_280F61830);
      v70 = v104;
      (*(v13 + 16))(v104, v69, v12);
      v71 = v66(v35, 1, v12);
      v72 = v70;
      v73 = v105;
      if (v71 != 1)
      {
        sub_218D39874(v35, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v72 = v104;
      (*(v13 + 32))(v104, v35, v12);
      v68 = v20;
      v73 = v105;
    }

    (*(v13 + 32))(v68, v72, v12);
    sub_218D39804(v28, v73, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v84 = *(v65 + 48);
    v85 = v108;
    if (v84(v73, 1, v108) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_218D39EFC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v86 = v96;
      v85 = v108;
      sub_219BEEC74();
      if (v84(v73, 1, v85) != 1)
      {
        sub_218D39874(v73, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v86 = v96;
      (*(v65 + 32))(v96, v73, v85);
    }

    v87 = v106;
    (*(v65 + 32))(&v68[*(v106 + 20)], v86, v85);
    sub_219BF5CF4();
    *&v110 = v88 * 12.0;
    sub_2186ECA28();
    swift_allocObject();
    *&v68[v87[6]] = sub_219BEF534();
    LOBYTE(v110) = 1;
    sub_2186F95C4();
    swift_allocObject();
    *&v68[v87[7]] = sub_219BEF534();
    LOBYTE(v110) = 0;
    swift_allocObject();
    *&v68[v87[8]] = sub_219BEF534();
    LOBYTE(v110) = 0;
    swift_allocObject();
    *&v68[v87[9]] = sub_219BEF534();
    sub_219BF5D04();
    v110 = v89;
    swift_allocObject();
    *&v68[v87[10]] = sub_219BEF534();
    sub_218D39A04(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_219C09EC0;
    if (qword_280EB0610 != -1)
    {
      v94 = v90;
      swift_once();
      v90 = v94;
    }

    v91 = byte_280F61A98 | 0x80;
    *(v90 + 32) = qword_280F61A90;
    *(v90 + 40) = v91;
    *(v90 + 48) = 5;
    *(v90 + 56) = 0;
    v110 = v90;
    sub_218D398D0();
    swift_allocObject();
    *&v68[v87[11]] = sub_219BEF534();
    v110 = 1;
    sub_2186F9548();
    swift_allocObject();
    *&v68[v87[12]] = sub_219BEF534();
    v110 = 1;
    swift_allocObject();
    *&v68[v87[13]] = sub_219BEF534();
    v110 = 1;
    swift_allocObject();
    *&v68[v87[14]] = sub_219BEF534();
    v110 = 3;
    swift_allocObject();
    *&v68[v87[15]] = sub_219BEF534();
    *&v110 = 0.0;
    swift_allocObject();
    *&v68[v87[16]] = sub_219BEF534();
    v110 = 4;
    swift_allocObject();
    v92 = sub_219BEF534();
    sub_218D39874(v28, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_218D39874(v38, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *&v68[v87[17]] = v92;
    v53 = v68;
    return sub_218D39B34(v53, v107);
  }

  v47 = v6;
  v48 = v102;
  if (*(v102 + 16))
  {
    v49 = &v95 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = sub_21870F700(v97, v44);
    v46 = v49;
    if (v51)
    {
      v52 = v108;
      sub_218D39BF4(*(v48 + 56) + *(v108 + 72) * v50, v49);
      (*(v52 + 56))(v49, 0, 1, v106);
      v53 = v49;
      return sub_218D39B34(v53, v107);
    }
  }

  v54 = *(v108 + 56);
  v105 = v46;
  v55 = v106;
  v54(v46, 1, 1, v106);
  v56 = v104;
  (*(v13 + 56))(v104, 1, 1, v12);
  v57 = v103;
  (*(v109 + 56))(v103, 1, 1, v6);
  sub_218D39804(v56, v41, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
  v58 = *(v13 + 48);
  if (v58(v41, 1, v12) == 1)
  {
    v60 = v100;
    v59 = v101;
    if (qword_280E91AC8 != -1)
    {
      swift_once();
    }

    v61 = __swift_project_value_buffer(v12, qword_280F61830);
    v62 = v98;
    (*(v13 + 16))(v98, v61, v12);
    v63 = v58(v41, 1, v12);
    v64 = v62;
    v57 = v103;
    if (v63 != 1)
    {
      sub_218D39874(v41, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    }
  }

  else
  {
    v64 = v98;
    (*(v13 + 32))(v98, v41, v12);
    v60 = v100;
    v59 = v101;
  }

  (*(v13 + 32))(v60, v64, v12);
  v74 = v99;
  sub_218D39804(v57, v99, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
  v75 = v109;
  v76 = *(v109 + 48);
  if (v76(v74, 1, v47) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_218D39EFC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    sub_219BEEC74();
    if (v76(v74, 1, v47) != 1)
    {
      sub_218D39874(v74, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    }
  }

  else
  {
    (*(v75 + 32))(v59, v74, v47);
  }

  (*(v75 + 32))(v60 + v55[5], v59, v47);
  sub_219BF5CF4();
  *&v110 = v77 * 12.0;
  sub_2186ECA28();
  swift_allocObject();
  *(v60 + v55[6]) = sub_219BEF534();
  LOBYTE(v110) = 1;
  sub_2186F95C4();
  swift_allocObject();
  *(v60 + v55[7]) = sub_219BEF534();
  LOBYTE(v110) = 0;
  swift_allocObject();
  *(v60 + v55[8]) = sub_219BEF534();
  LOBYTE(v110) = 0;
  swift_allocObject();
  *(v60 + v55[9]) = sub_219BEF534();
  sub_219BF5D04();
  v110 = v78;
  swift_allocObject();
  *(v60 + v55[10]) = sub_219BEF534();
  sub_218D39A04(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_219C09EC0;
  if (qword_280EB0610 != -1)
  {
    v93 = v79;
    swift_once();
    v79 = v93;
  }

  v80 = byte_280F61A98 | 0x80;
  *(v79 + 32) = qword_280F61A90;
  *(v79 + 40) = v80;
  *(v79 + 48) = 5;
  *(v79 + 56) = 0;
  v110 = v79;
  sub_218D398D0();
  swift_allocObject();
  *(v60 + v55[11]) = sub_219BEF534();
  v110 = 1;
  sub_2186F9548();
  swift_allocObject();
  *(v60 + v55[12]) = sub_219BEF534();
  v110 = 1;
  swift_allocObject();
  *(v60 + v55[13]) = sub_219BEF534();
  v110 = 1;
  swift_allocObject();
  *(v60 + v55[14]) = sub_219BEF534();
  v110 = 3;
  swift_allocObject();
  *(v60 + v55[15]) = sub_219BEF534();
  *&v110 = 0.0;
  swift_allocObject();
  *(v60 + v55[16]) = sub_219BEF534();
  v110 = 4;
  swift_allocObject();
  v81 = sub_219BEF534();
  sub_218D39874(v57, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
  sub_218D39874(v104, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
  *(v60 + v55[17]) = v81;
  sub_218D39B34(v60, v107);
  v82 = v105;
  result = (*(v108 + 48))(v105, 1, v55);
  if (result != 1)
  {
    return sub_218D39B98(v82);
  }

  return result;
}

void sub_218D396B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig();
    v7 = sub_218D39EFC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218D39754(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218D396B8(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_218D397AC()
{
  if (!qword_280EE1400)
  {
    type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE1400);
    }
  }
}

uint64_t sub_218D39804(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_218D39754(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_218D39874(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_218D39754(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_218D398D0()
{
  if (!qword_280E91408)
  {
    sub_218D39A04(255, &qword_280E8F220, MEMORY[0x277D83940]);
    sub_218D39A58(&qword_280E8F208, sub_218B824E4);
    sub_218D39A58(&qword_280E8F218, sub_218B827C8);
    sub_218D39A58(&qword_280E8F210, sub_218D39AE0);
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91408);
    }
  }
}

void sub_218D39A04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for HeroSelectionStrategy);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218D39A58(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_218D39A04(255, &qword_280E8F220, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218D39AE0()
{
  result = qword_280ECADC8;
  if (!qword_280ECADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECADC8);
  }

  return result;
}

uint64_t sub_218D39B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D39B98(uint64_t a1)
{
  sub_218D397AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218D39BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218D39C58(void *a1)
{
  sub_218D39DE8(0, &qword_280E8CFC8, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D38390();
  sub_219BF7B34();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_218D383E4();
    sub_218D39E4C();
    sub_219BF7674();
    v8 = v11;
    if (!v11)
    {
      v8 = sub_2194AFFC8(MEMORY[0x277D84F90]);
    }

    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

void sub_218D39DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D38390();
    v7 = a3(a1, &type metadata for LocalNewsTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218D39E4C()
{
  result = qword_280E8FB98;
  if (!qword_280E8FB98)
  {
    sub_218D383E4();
    sub_218D39EFC(&qword_280EE1470, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FB98);
  }

  return result;
}

uint64_t sub_218D39EFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218D39F58()
{
  result = qword_27CC11678;
  if (!qword_27CC11678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11678);
  }

  return result;
}

unint64_t sub_218D39FB0()
{
  result = qword_280EE17F8;
  if (!qword_280EE17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE17F8);
  }

  return result;
}

unint64_t sub_218D3A008()
{
  result = qword_280EE1800;
  if (!qword_280EE1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1800);
  }

  return result;
}

uint64_t type metadata accessor for LocalNewsTodayFeedGroupEmitter()
{
  result = qword_280EE17A0;
  if (!qword_280EE17A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D3A0D0()
{
  sub_2186DF3DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280EBC190);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, qword_280EE1810);
          if (v4 <= 0x3F)
          {
            sub_2186D6710(319, &unk_280E8FF60);
            if (v5 <= 0x3F)
            {
              sub_2186D6710(319, &unk_280E8E250);
              if (v6 <= 0x3F)
              {
                sub_2186C6148(319, &qword_280E8DE40);
                if (v7 <= 0x3F)
                {
                  sub_2186CFDE4(319, &unk_280E915D0);
                  if (v8 <= 0x3F)
                  {
                    sub_2186CFDE4(319, qword_280E9C090);
                    if (v9 <= 0x3F)
                    {
                      sub_219BE5434();
                      if (v10 <= 0x3F)
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
  }
}

uint64_t sub_218D3A2B8@<X0>(_OWORD *a1@<X8>)
{
  sub_218D45728(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3514();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  sub_219BEDD14();
  v12 = *&v11[*(v9 + 92)];

  result = sub_218D3BD28(v11, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  if (!v12)
  {
    goto LABEL_15;
  }

  v29 = *(v12 + 16);
  if (!v29)
  {

LABEL_15:
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  v25 = v1;
  v26 = a1;
  v14 = 0;
  v15 = (v28 + 48);
  v16 = (v28 + 32);
  v17 = v12 + 40;
  v18 = MEMORY[0x277D84F90];
  v27 = v12;
  while (v14 < *(v12 + 16))
  {

    sub_219BE34E4();
    if ((*v15)(v5, 1, v6) == 1)
    {
      result = sub_218D3BD28(v5, sub_218D45728);
    }

    else
    {
      v19 = *v16;
      (*v16)(v30, v5, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_2191F7D30(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_2191F7D30(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      result = (v19)(v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21, v30, v6);
      v12 = v27;
    }

    ++v14;
    v17 += 16;
    if (v29 == v14)
    {

      v22 = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
      v23 = *__swift_project_boxed_opaque_existential_1((v25 + *(v22 + 52)), *(v25 + *(v22 + 52) + 24));
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v18;

      sub_219BE3494();

      a1 = v26;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218D3A638(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218D3A6E0(a1, a2);
}

uint64_t sub_218D3A6E0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
  v3[7] = swift_task_alloc();
  sub_2186D8FA8(0);
  v3[8] = swift_task_alloc();
  type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3A7D0, 0, 0);
}

uint64_t sub_218D3A7D0()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_2186DF3DC();
  sub_219BEDD14();
  sub_218D4575C(v1, v2, sub_2186D8FA8);
  sub_218D3BD28(v1, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v3 = sub_219BF1934();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_218D3BD28(v2, sub_2186D8FA8);
  if (v4 == 1)
  {
    v5 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v6 = 0xD000000000000013;
    v6[1] = 0x8000000219CF4870;
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D323D8], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[5];
    v10 = swift_task_alloc();
    v0[10] = v10;
    *(v10 + 16) = v9;
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_218D3AA74;

    return MEMORY[0x282190858](v0 + 2, &type metadata for LocalNewsTodayFeedGroupEmitterCursor, &unk_219C336C8, v10, &type metadata for LocalNewsTodayFeedGroupEmitterCursor);
  }
}

uint64_t sub_218D3AA74()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_218D3B2FC;
  }

  else
  {

    v2 = sub_218D3AB90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3AB90()
{
  v55 = v0;
  v1 = v0[2];
  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DF73C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  v2 = sub_219BEDC44();

  if (v2 >> 62)
  {
    v3 = sub_219BF7214();
    v51 = v0;
    v52 = v1;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v0;
    v52 = v1;
    if (v3)
    {
LABEL_3:
      v54[0] = MEMORY[0x277D84F90];
      result = sub_21870B65C(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        goto LABEL_42;
      }

      v5 = 0;
      v6 = v54[0];
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CECE0F0](v5, v2);
        }

        else
        {
          v7 = *(v2 + 8 * v5 + 32);
          swift_unknownObjectRetain();
        }

        v8 = [v7 identifier];
        v9 = sub_219BF5414();
        v11 = v10;

        swift_unknownObjectRelease();
        v54[0] = v6;
        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_21870B65C((v12 > 1), v13 + 1, 1);
          v6 = v54[0];
        }

        ++v5;
        *(v6 + 16) = v13 + 1;
        v14 = v6 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
      }

      while (v3 != v5);

      v1 = v52;
      goto LABEL_14;
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_14:
  v15 = sub_218845F78(v6);

  v16 = *(v1 + 16);

  if (!v16)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_35:
    v32 = v51;
    v51[13] = v19;
    v33 = v51[7];
    v34 = v51[5];

    sub_218D4575C(v34, v33, type metadata accessor for LocalNewsTodayFeedGroupEmitter);

    v35 = sub_219BE5414();
    v36 = sub_219BF61D4();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v51[7];
    if (v37)
    {
      v39 = v51[6];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54[0] = v41;
      *v40 = 136446722;
      v42 = (v38 + *(v39 + 56));
      v43 = *v42;
      v44 = v42[1];

      sub_218D3BD28(v38, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
      v45 = v43;
      v32 = v51;
      v46 = sub_2186D1058(v45, v44, v54);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2048;
      v47 = *(v1 + 16);

      *(v40 + 14) = v47;

      *(v40 + 22) = 2048;
      *(v40 + 24) = *(v19 + 16);

      _os_log_impl(&dword_2186C1000, v35, v36, "%{public}s filtered channels from %ld to %ld based on seen tags", v40, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x21CECF960](v41, -1, -1);
      MEMORY[0x21CECF960](v40, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_218D3BD28(v38, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    }

    v48 = swift_task_alloc();
    v32[14] = v48;
    *v48 = v32;
    v48[1] = sub_218D3B15C;
    v49 = v32[4];
    v50 = v32[3];

    return sub_218D3C684(v50, v49, v19);
  }

  v17 = 0;
  v53 = v1 + 32;
  v18 = v15 + 56;
  v19 = MEMORY[0x277D84F90];
  while (v17 < *(v1 + 16))
  {
    v20 = (v53 + 16 * v17);
    v22 = *v20;
    v21 = v20[1];
    ++v17;
    if (!*(v15 + 16))
    {

      goto LABEL_27;
    }

    sub_219BF7AA4();

    sub_219BF5524();
    v23 = sub_219BF7AE4();
    v24 = -1 << *(v15 + 32);
    v25 = v23 & ~v24;
    if ((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
    {
      v26 = ~v24;
      while (1)
      {
        v27 = (*(v15 + 48) + 16 * v25);
        v28 = *v27 == v22 && v27[1] == v21;
        if (v28 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if (v17 == v16)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_27:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218C34E50(0, *(v19 + 16) + 1, 1);
      }

      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_218C34E50((v29 > 1), v30 + 1, 1);
      }

      *(v19 + 16) = v30 + 1;
      v31 = v19 + 16 * v30;
      *(v31 + 32) = v22;
      *(v31 + 40) = v21;
      v1 = v52;
      if (v17 == v16)
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_218D3B15C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_218D3B384;
  }

  else
  {
    v2 = sub_218D3B270;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3B270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3B2FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3B384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3B40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_218D3B4BC(a1, a2, a3);
}

uint64_t sub_218D3B4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_218D3BC60(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3B5AC, 0, 0);
}

uint64_t sub_218D3B5AC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_218D3BC94();
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_218D3BD28(*(v0 + 48), sub_218D3BC60);
  }

  else
  {
    sub_218D452AC(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_218D3BD28(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_218D4575C(*(v0 + 40), *(v0 + 24), sub_218D3BC94);
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

uint64_t sub_218D3B79C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_218D3B7D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
  a2[4] = sub_2186DF73C(&qword_280EE1470, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
  a2[5] = sub_2186DF73C(&qword_280EE1478, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218D4575C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
}

uint64_t sub_218D3B898()
{
  sub_2189AE994(0);
  v1 = sub_219BEE964();
  sub_2191EE478(MEMORY[0x277D84F90]);
  return v1;
}

uint64_t sub_218D3B908@<X0>(uint64_t *a1@<X8>)
{
  sub_2186D89EC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
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
  sub_218D3BD28(inited + 32, sub_2188317B0);
  sub_218D457C4(0);
  a1[3] = v5;
  a1[4] = sub_2186DF73C(&qword_280EE7A68, sub_218D457C4);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218D3BA8C()
{
  sub_2186DF73C(&qword_280EE17C0, type metadata accessor for LocalNewsTodayFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_218D3BC94()
{
  if (!qword_280E91120)
  {
    type metadata accessor for TodayFeedGroup();
    sub_2186DF73C(&qword_280EDB780, type metadata accessor for TodayFeedGroup);
    v0 = sub_219BEFDB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91120);
    }
  }
}

uint64_t sub_218D3BD28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D3BD88(uint64_t a1, uint64_t a2)
{
  v2[100] = a2;
  v2[99] = a1;
  v2[101] = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v2[102] = swift_task_alloc();
  v3 = *(type metadata accessor for LocalNewsTodayFeedGroupEmitter() - 8);
  v2[103] = v3;
  v2[104] = *(v3 + 64);
  v2[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3BE80, 0, 0);
}

uint64_t sub_218D3BE80()
{
  v1 = v0[105];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  sub_218D4575C(v0[100], v1, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[106] = v6;
  sub_218D452AC(v1, v6 + v5, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  v7 = MEMORY[0x277D83940];
  sub_2186F84A8(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  swift_asyncLet_begin();
  sub_2186DF3DC();
  sub_219BEDD14();
  v8 = *(v3 + *(v4 + 28));

  sub_218D3BD28(v3, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v0[93] = v8;
  sub_2186F84A8(0, &qword_280E8F400, &type metadata for LocalNewsTodayFeedGroupConfigData.Channel, v7);
  sub_218B8BDA8();
  sub_218B8BE24();
  v0[107] = sub_219BF56C4();

  return MEMORY[0x282200930](v0 + 2, v0 + 87, sub_218D3C05C, v0 + 82);
}

uint64_t sub_218D3C05C()
{
  *(v1 + 864) = v0;
  if (v0)
  {
    v2 = sub_218D3C2FC;
  }

  else
  {
    v2 = sub_218D3C090;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3C090()
{
  v1 = v0[87];
  v2 = *(v1 + 16);

  if (v2)
  {
    v7 = 0;
    v8 = v0[107];
    v9 = -v2;
    v10 = v1 + 40;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = (v10 + 16 * v7++);
      while (1)
      {
        if ((v7 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return MEMORY[0x282200920](isUniquelyReferenced_nonNull_native, v4, v5, v6);
        }

        if (*(v8 + 16))
        {
          break;
        }

LABEL_4:
        ++v7;
        v12 += 2;
        if (v9 + v7 == 1)
        {
          goto LABEL_16;
        }
      }

      v14 = *(v12 - 1);
      v13 = *v12;

      v15 = sub_21870F700(v14, v13);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = (*(v8 + 56) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2191F7D64(0, *(v11 + 16) + 1, 1, v11);
        v11 = isUniquelyReferenced_nonNull_native;
      }

      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2191F7D64((v20 > 1), v21 + 1, 1, v11);
        v11 = isUniquelyReferenced_nonNull_native;
      }

      *(v11 + 16) = v21 + 1;
      v22 = v11 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      v10 = v1 + 40;
      if (!(v9 + v7))
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_16:
  v23 = v0[99];

  *v23 = v11;
  v5 = sub_218D3C264;
  isUniquelyReferenced_nonNull_native = (v0 + 2);
  v4 = v0 + 87;
  v6 = v0 + 94;

  return MEMORY[0x282200920](isUniquelyReferenced_nonNull_native, v4, v5, v6);
}

uint64_t sub_218D3C280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3C2FC()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 696, sub_218D3C368, v0 + 704);
}

uint64_t sub_218D3C384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3C400(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_218D3C420, 0, 0);
}

uint64_t sub_218D3C420()
{
  v1 = v0[3];
  v2 = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 24));
  v0[4] = sub_2193C4AC4();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_218D3C4E4;
  v4 = v0[2];

  return MEMORY[0x2821D23D8](v4);
}

uint64_t sub_218D3C4E4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218D3C620, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_218D3C620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3C684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
  v4[7] = swift_task_alloc();
  type metadata accessor for TodayFeedGroup();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3C748, 0, 0);
}

uint64_t sub_218D3C748()
{
  v1 = v0[4];
  v2 = v1[2];
  v0[9] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[10] = v3;
    v4 = v1[5];
    v0[11] = v4;

    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_218D3C908;
    v6 = v0[3];

    return sub_218D3D490(v3, v4, v6);
  }

  else
  {
    v8 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D323C8], v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_218D3C908(char a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_218D3CA08, 0, 0);
}

uint64_t sub_218D3CA08()
{
  if (*(v0 + 168) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_218D3CB58;
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 24);

    return sub_218D3DE20(v4, v2, v3, v5);
  }

  else
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 32);

    sub_218B66968(v8, v8 + 32, 1, (2 * v7) | 1);
    v10 = v9;
    *(v0 + 120) = v9;
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_218D3CDC0;
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);

    return sub_218D3C684(v12, v13, v10);
  }
}

uint64_t sub_218D3CB58()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_218D3CF84;
  }

  else
  {

    v2 = sub_218D3CC74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3CC74()
{
  sub_218B66968(v0[4], v0[4] + 32, 1, (2 * v0[9]) | 1);
  v2 = v1;
  v3 = v0[8];
  v4 = v0[2];
  if (*(v1 + 16))
  {
    sub_218B8B468();
    v6 = (v4 + *(v5 + 48));
    sub_218D4575C(v3, v4, type metadata accessor for TodayFeedGroup);
    v6[3] = &type metadata for LocalNewsTodayFeedGroupEmitterCursor;
    *v6 = v2;
    sub_218D3BD28(v3, type metadata accessor for TodayFeedGroup);
  }

  else
  {

    sub_218D452AC(v3, v4, type metadata accessor for TodayFeedGroup);
  }

  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

uint64_t sub_218D3CDC0()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218D3CF10, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_218D3CF10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3CF84()
{
  v28 = v0;
  v1 = v0[14];
  sub_218D4575C(v0[5], v0[7], type metadata accessor for LocalNewsTodayFeedGroupEmitter);

  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v25 = v0[10];
    v26 = v0[14];
    v6 = v0[6];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v8 = 136446722;
    v11 = (v7 + *(v6 + 56));
    v13 = *v11;
    v12 = v11[1];

    sub_218D3BD28(v7, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    v14 = sub_2186D1058(v13, v12, &v27);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2082;
    v15 = sub_2186D1058(v25, v5, &v27);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2114;
    v16 = v26;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v17;
    *v9 = v17;
    _os_log_impl(&dword_2186C1000, v3, v4, "%{public}s failed to form group for channel.  Trying the next one.  channel=%{public}s, error=%{public}@", v8, 0x20u);
    sub_218D3BD28(v9, sub_2189B3F3C);
    MEMORY[0x21CECF960](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {
    v18 = v0[7];

    sub_218D3BD28(v18, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  }

  sub_218B66968(v0[4], v0[4] + 32, 1, (2 * v0[9]) | 1);
  v20 = v19;
  v0[18] = v19;
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_218D3D280;
  v22 = v0[2];
  v23 = v0[3];

  return sub_218D3C684(v22, v23, v20);
}

uint64_t sub_218D3D280()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_218D3D410;
  }

  else
  {

    v2 = sub_218D3D39C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3D39C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3D410()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218D3D490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3D528, 0, 0);
}

uint64_t sub_218D3D528()
{
  v37 = v0;
  v1 = *(v0[6] + *(v0[7] + 44));
  v2 = sub_219BF53D4();
  v3 = [v1 hasSubscriptionToTagID_];

  if (v3 & 1) != 0 || (sub_219BEF0B4(), , v4 = NewsCoreUserDefaults(), v5 = [v4 BOOLForKey_], v4, (v5))
  {
LABEL_3:

    v6 = v0[1];

    return v6(v3);
  }

  v8 = [*(v0[6] + *(v0[7] + 36)) mostFrequentLocation];
  v0[9] = v8;
  if (!v8)
  {
    v16 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430]);
    v17 = swift_allocError();
    *v18 = 0xD000000000000016;
    v18[1] = 0x8000000219CF48D0;
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D323D8], v16);
    swift_willThrow();
    sub_218D4575C(v0[6], v0[8], type metadata accessor for LocalNewsTodayFeedGroupEmitter);

    v19 = v17;
    v20 = sub_219BE5414();
    v21 = sub_219BF61F4();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[8];
    if (v22)
    {
      v24 = v0[7];
      v33 = v0[3];
      v34 = v0[4];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36[0] = v35;
      *v25 = 136446722;
      v27 = (v23 + *(v24 + 56));
      v29 = *v27;
      v28 = v27[1];

      sub_218D3BD28(v23, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
      v30 = sub_2186D1058(v29, v28, v36);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_2186D1058(v33, v34, v36);
      *(v25 + 22) = 2114;
      v31 = v17;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v32;
      *v26 = v32;
      _os_log_impl(&dword_2186C1000, v20, v21, "%{public}s failed location check for channel.  channel=%{public}s, error=%{public}@", v25, 0x20u);
      sub_218D3BD28(v26, sub_2189B3F3C);
      MEMORY[0x21CECF960](v26, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v35, -1, -1);
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    else
    {

      sub_218D3BD28(v23, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    }

    goto LABEL_3;
  }

  v9 = v8;
  v10 = v0[6];
  v12 = v0[3];
  v11 = v0[4];
  v13 = swift_task_alloc();
  v0[10] = v13;
  v13[2] = v10;
  v13[3] = v9;
  v13[4] = v12;
  v13[5] = v11;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_218D3D9F4;
  v15 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 13, 0, 0, 0xD00000000000002BLL, 0x8000000219CF48F0, sub_218D4550C, v13, v15);
}

uint64_t sub_218D3D9F4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_218D3DB80;
  }

  else
  {

    v2 = sub_218D3DB10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3DB10()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_218D3DB80()
{
  v22 = v0;

  v1 = *(v0 + 96);
  sub_218D4575C(*(v0 + 48), *(v0 + 64), type metadata accessor for LocalNewsTodayFeedGroupEmitter);

  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = *(v0 + 56);
    v19 = *(v0 + 24);
    v20 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136446722;
    v11 = (v6 + *(v7 + 56));
    v12 = *v11;
    v13 = v11[1];

    sub_218D3BD28(v6, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    v14 = sub_2186D1058(v12, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_2186D1058(v19, v20, &v21);
    *(v8 + 22) = 2114;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&dword_2186C1000, v3, v4, "%{public}s failed location check for channel.  channel=%{public}s, error=%{public}@", v8, 0x20u);
    sub_218D3BD28(v9, sub_2189B3F3C);
    MEMORY[0x21CECF960](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {

    sub_218D3BD28(v6, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  }

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_218D3DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[203] = v4;
  v5[197] = a4;
  v5[191] = a3;
  v5[185] = a2;
  v5[179] = a1;
  v5[209] = *(type metadata accessor for ChannelSectionsGroupSectionModel() - 8);
  v5[215] = swift_task_alloc();
  v5[221] = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v5[222] = swift_task_alloc();
  v6 = sub_219BF0BD4();
  v5[223] = v6;
  v5[224] = *(v6 - 8);
  v5[225] = swift_task_alloc();
  sub_2186D89EC(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v5[226] = swift_task_alloc();
  sub_219BEF554();
  v5[227] = swift_task_alloc();
  v5[228] = swift_task_alloc();
  v7 = sub_219BED8D4();
  v5[229] = v7;
  v5[230] = *(v7 - 8);
  v5[231] = swift_task_alloc();
  v8 = sub_219BF1904();
  v5[232] = v8;
  v5[233] = *(v8 - 8);
  v5[234] = swift_task_alloc();
  sub_2186FE720();
  v5[235] = swift_task_alloc();
  v9 = sub_219BF2034();
  v5[236] = v9;
  v10 = *(v9 - 8);
  v5[237] = v10;
  v5[238] = *(v10 + 64);
  v5[239] = swift_task_alloc();
  v5[240] = swift_task_alloc();
  v11 = sub_219BF47F4();
  v5[241] = v11;
  v5[242] = *(v11 - 8);
  v5[243] = swift_task_alloc();
  v12 = sub_219BF3E84();
  v5[244] = v12;
  v5[245] = *(v12 - 8);
  v5[246] = swift_task_alloc();
  v13 = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
  v5[247] = v13;
  v14 = *(v13 - 8);
  v5[248] = v14;
  v5[249] = *(v14 + 64);
  v5[250] = swift_task_alloc();
  v5[251] = swift_task_alloc();
  sub_2186E2AFC(0);
  v5[252] = v15;
  v5[253] = swift_task_alloc();
  v5[254] = swift_task_alloc();
  v16 = type metadata accessor for ChannelHeadlineServiceResult();
  v5[255] = v16;
  v17 = *(v16 - 8);
  v5[256] = v17;
  v5[257] = *(v17 + 64);
  v5[258] = swift_task_alloc();
  v5[259] = swift_task_alloc();
  v5[260] = swift_task_alloc();
  type metadata accessor for ChannelHeadlineServiceRequest();
  v5[261] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3E36C, 0, 0);
}

uint64_t sub_218D3E36C()
{
  sub_218D40240(v0[185], v0[191], v0[197], v0[261]);
  v1 = (v0[203] + *(v0[247] + 28));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  v0[262] = v2;
  *v2 = v0;
  v2[1] = sub_218D3E5B4;
  v3 = v0[261];
  v4 = v0[260];

  return sub_219363BE0(v4, v3);
}

uint64_t sub_218D3E5B4()
{
  *(*v1 + 2104) = v0;

  if (v0)
  {
    v2 = sub_218D3ED70;
  }

  else
  {
    v2 = sub_218D3E6C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3E6C8()
{
  v1 = *(v0 + 2080);
  v2 = *(v0 + 2072);
  v3 = *(v0 + 2048);
  v46 = *(v0 + 2104);
  v4 = *(v0 + 2008);
  v5 = *(v0 + 1992);
  v6 = *(v0 + 1984);
  v43 = *(v0 + 1968);
  sub_218D4575C(*(v0 + 1624), v4, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  sub_218D4575C(v1, v2, type metadata accessor for ChannelHeadlineServiceResult);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v7 + v5;
  v9 = *(v3 + 80);
  v10 = swift_allocObject();
  *(v0 + 2112) = v10;
  sub_218D452AC(v4, v10 + v7, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  sub_218D452AC(v2, v10 + ((v8 + v9) & ~v9), type metadata accessor for ChannelHeadlineServiceResult);
  swift_asyncLet_begin();
  sub_218D41AC8(v1, v43);
  *(v0 + 2120) = v46;
  if (v46)
  {
    v11 = *(v0 + 2032);

    return MEMORY[0x282200920](v0 + 16, v11, sub_218D3FB58, v0 + 1296);
  }

  else
  {
    v47 = v8;
    sub_218D420B4(*(v0 + 2080), *(v0 + 1944));
    *(v0 + 2128) = 0;
    v12 = *(v0 + 2080);
    v34 = v12;
    v42 = *(v0 + 2064);
    v13 = *(v0 + 2040);
    v40 = *(v0 + 2000);
    v45 = v7;
    v14 = *(v0 + 1968);
    v15 = *(v0 + 1960);
    v16 = *(v0 + 1952);
    v31 = *(v0 + 1944);
    v17 = *(v0 + 1936);
    v18 = *(v0 + 1928);
    v35 = *(v0 + 1920);
    v39 = *(v0 + 1912);
    v41 = *(v0 + 1904);
    v37 = *(v0 + 1896);
    v38 = *(v0 + 1888);
    v32 = *(v0 + 1880);
    v36 = *(v0 + 1624);
    v44 = *(v0 + 1576);
    sub_2186F84A8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C146A0;
    v19 = *(v13 + 24);
    *(v0 + 2168) = v19;
    *(v33 + 32) = *(v12 + v19);
    v20 = MEMORY[0x277D84560];
    sub_2186D89EC(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09BA0;
    (*(v15 + 16))(v22 + v21, v14, v16);
    sub_2186D89EC(0, &unk_280E8B780, MEMORY[0x277D34500], v20);
    v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09BA0;
    (*(v17 + 16))(v24 + v23, v31, v18);
    v25 = sub_219BEC004();
    (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
    swift_unknownObjectRetain();
    v26 = MEMORY[0x277D84F90];
    sub_219A95188(MEMORY[0x277D84F90]);
    sub_219A95188(v26);
    sub_219A951A0(v26);
    sub_219A951B8(v26);
    sub_219A952CC(v26);
    sub_219A952E4(v26);
    sub_219A953F8(v26);
    sub_219BF2024();
    sub_218D4575C(v36, v40, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    (*(v37 + 16))(v39, v35, v38);
    sub_218D4575C(v34, v42, type metadata accessor for ChannelHeadlineServiceResult);
    v27 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + *(v37 + 80) + 8) & ~*(v37 + 80);
    v29 = swift_allocObject();
    *(v0 + 2136) = v29;
    sub_218D452AC(v40, v29 + v45, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    *(v29 + v27) = v44;
    (*(v37 + 32))(v29 + v28, v39, v38);
    sub_218D452AC(v42, v29 + ((v41 + v9 + v28) & ~v9), type metadata accessor for ChannelHeadlineServiceResult);

    sub_219BF2754();
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 656, v0 + 1336, sub_218D3EF20, v0 + 1392);
  }
}

uint64_t sub_218D3ED70()
{
  sub_218D3BD28(*(v0 + 2088), type metadata accessor for ChannelHeadlineServiceRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3EF20()
{
  v1[268] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 167, sub_218D3FF48, v1 + 180);
  }

  else
  {
    v1[269] = v1[167];

    v2 = v1[254];

    return MEMORY[0x282200928](v1 + 2, v2, sub_218D3EFD4, v1 + 192);
  }
}

uint64_t sub_218D3EFF0()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1864);
  v3 = *(v0 + 1856);
  sub_218D4575C(*(v0 + 2032), *(v0 + 2024), sub_2186E2AFC);
  sub_219BF2734();
  v4 = sub_219BF1844();
  (*(v2 + 8))(v1, v3);
  if (!v4)
  {
    goto LABEL_9;
  }

  *(v0 + 1384) = &unk_282B7DDA8;
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v30 = *(v0 + 2024);
    v31 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430]);
    *(v0 + 2160) = swift_allocError();
    *v32 = 0xD00000000000001BLL;
    v32[1] = 0x8000000219CF4890;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D323D8], v31);
    swift_willThrow();

    sub_218D3BD28(v30, sub_2186E2AFC);
    v26 = sub_218D3F860;
    v27 = v0 + 656;
    v28 = v0 + 1336;
    v29 = v0 + 1584;
    goto LABEL_10;
  }

  v39 = v5;
  v6 = *(v0 + 1800);
  v7 = *(v0 + 1792);
  v34 = *(v0 + 1784);
  v37 = *(v0 + 2080) + *(v0 + 2168);
  sub_2186DF3DC();

  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
  sub_219BEF134();
  sub_2189AE9B4(0);
  sub_219BEEC94();
  (*(v7 + 8))(v6, v34);
  sub_219BED844();
  v8 = *(v37 + *(type metadata accessor for ChannelSectionsGroupModel() + 24));
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = *(v0 + 1672);
    v40 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v12 = v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      v14 = *(v0 + 1720);
      sub_218D4575C(v12, v14, type metadata accessor for ChannelSectionsGroupSectionModel);
      swift_unknownObjectRetain();
      sub_218D3BD28(v14, type metadata accessor for ChannelSectionsGroupSectionModel);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v12 += v13;
      --v9;
    }

    while (v9);
    v10 = v40;
  }

  v36 = *(v0 + 1848);
  v38 = *(v0 + 2024);
  v15 = *(v0 + 1840);
  v35 = *(v0 + 1832);
  v16 = *(v0 + 1776);
  v17 = *(v0 + 1768);
  v18 = *(v0 + 1432);
  sub_219BEDD14();
  v19 = *(v16 + *(v17 + 84));

  sub_218D3BD28(v16, type metadata accessor for LocalNewsTodayFeedGroupConfigData);

  v21 = sub_21959DB3C(v20);
  v23 = v22;

  (*(v15 + 32))(v18, v36, v35);
  v24 = type metadata accessor for LocalNewsTodayFeedGroup();
  *(v18 + v24[5]) = v39;
  *(v18 + v24[6]) = v10;
  sub_218D452AC(v38, v18 + v24[7], sub_2186E2AFC);
  *(v18 + v24[8]) = v19;
  v25 = v18 + v24[9];
  *v25 = v21;
  *(v25 + 8) = v23 & 1;
  type metadata accessor for TodayFeedGroup();
  swift_storeEnumTagMultiPayload();
  v26 = sub_218D3F56C;
  v27 = v0 + 656;
  v28 = v0 + 1336;
  v29 = v0 + 1680;
LABEL_10:

  return MEMORY[0x282200920](v27, v28, v26, v29);
}

uint64_t sub_218D3F588()
{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  v5 = v0[242];
  v6 = v0[241];
  (*(v0[237] + 8))(v0[240], v0[236]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[254];

  return MEMORY[0x282200920](v0 + 2, v7, sub_218D3F660, v0 + 216);
}

uint64_t sub_218D3F67C()
{
  v1 = v0[260];
  sub_218D3BD28(v0[261], type metadata accessor for ChannelHeadlineServiceRequest);
  sub_218D3BD28(v1, type metadata accessor for ChannelHeadlineServiceResult);

  v2 = v0[1];

  return v2();
}

uint64_t sub_218D3F87C()
{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  v5 = v0[242];
  v6 = v0[241];
  (*(v0[237] + 8))(v0[240], v0[236]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[254];

  return MEMORY[0x282200920](v0 + 2, v7, sub_218D3F954, v0 + 204);
}

uint64_t sub_218D3F970()
{
  v1 = v0[260];
  sub_218D3BD28(v0[261], type metadata accessor for ChannelHeadlineServiceRequest);
  sub_218D3BD28(v1, type metadata accessor for ChannelHeadlineServiceResult);

  v2 = v0[1];

  return v2();
}

uint64_t sub_218D3FB74()
{
  v1 = v0[260];
  sub_218D3BD28(v0[261], type metadata accessor for ChannelHeadlineServiceRequest);
  sub_218D3BD28(v1, type metadata accessor for ChannelHeadlineServiceResult);

  v2 = v0[1];

  return v2();
}

uint64_t sub_218D3FD6C()
{
  v1 = v0[260];
  sub_218D3BD28(v0[261], type metadata accessor for ChannelHeadlineServiceRequest);
  sub_218D3BD28(v1, type metadata accessor for ChannelHeadlineServiceResult);

  v2 = v0[1];

  return v2();
}

uint64_t sub_218D3FF64()
{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  v5 = v0[242];
  v6 = v0[241];
  (*(v0[237] + 8))(v0[240], v0[236]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[254];

  return MEMORY[0x282200920](v0 + 2, v7, sub_218D4003C, v0 + 186);
}

uint64_t sub_218D40058()
{
  v1 = v0[260];
  sub_218D3BD28(v0[261], type metadata accessor for ChannelHeadlineServiceRequest);
  sub_218D3BD28(v1, type metadata accessor for ChannelHeadlineServiceResult);

  v2 = v0[1];

  return v2();
}

char *sub_218D40240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a1;
  v76 = a4;
  v77 = a2;
  v6 = sub_219BF0BD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D435F8(a3);
  v80 = v10;
  v11 = v4 + *(type metadata accessor for LocalNewsTodayFeedGroupEmitter() + 20);
  v12 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v13 = v15;
  v15(v9, v6);
  v75 = v91;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v74 = v90;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v73 = v89;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v72 = v88;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v71 = v87;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v16 = v86;
  v17 = v79;
  sub_219BEF164();
  if (v17)
  {
  }

  v67 = v12;
  v68 = v13;
  v69 = v11;
  v70 = v6;
  v18 = *(v85 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

  sub_219BEF164();
  v19 = a3;
  v66 = v16;
  v20 = *(v84 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 24);

  sub_219BEF134();
  sub_219BEF524();
  v68(v9, v70);
  v21 = v83;
  sub_219BEF164();
  v61[1] = v19;
  v63 = v20;
  v64 = v18;
  v23 = *(v82 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);

  v24 = v23;
  if (v23 >> 62)
  {
    v59 = sub_219BF7214();
    v60 = v23;
    v25 = v59;
    v24 = v60;
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v78;
  v65 = 0;
  v62 = v21;
  if (v25)
  {
    v27 = v24;
    v81 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v25 & ~(v25 >> 63), 0);
    v61[0] = v14;
    if (v25 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = 0;
    v29 = v81;
    v30 = v27;
    v79 = v27 & 0xC000000000000001;
    v31 = v25;
    v32 = v27;
    do
    {
      if (v79)
      {
        v33 = MEMORY[0x21CECE0F0](v28, v30);
      }

      else
      {
        v33 = *(v30 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      v34 = [v33 identifier];
      v35 = sub_219BF5414();
      v37 = v36;
      swift_unknownObjectRelease();

      v81 = v29;
      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_21870B65C((v38 > 1), v39 + 1, 1);
        v29 = v81;
      }

      ++v28;
      *(v29 + 16) = v39 + 1;
      v40 = v29 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v30 = v32;
    }

    while (v31 != v28);

    v26 = v78;
    v41 = v70;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    v41 = v70;
  }

  v79 = sub_218845F78(v29);

  sub_219BEF134();
  sub_219BEF524();
  v68(v9, v41);
  v42 = v81;
  v43 = type metadata accessor for ChannelHeadlineServiceRequest();
  v44 = v43[17];
  v45 = *MEMORY[0x277D32928];
  v46 = sub_219BEFBD4();
  v47 = v76;
  (*(*(v46 - 8) + 104))(v76 + v44, v45, v46);
  sub_219BEF0B4();
  v48 = *(v82 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v49 = qword_280F616D8;
  v50 = *MEMORY[0x277D30BC8];
  v51 = v77;
  *v47 = v26;
  *(v47 + 8) = v51;
  v52 = v74;
  v53 = v75;
  *(v47 + 16) = v80;
  *(v47 + 24) = v53;
  *(v47 + 32) = 0;
  *(v47 + 40) = v52;
  v54 = v72;
  *(v47 + 48) = v73;
  *(v47 + 56) = v54;
  v55 = v66;
  *(v47 + 64) = v71;
  *(v47 + 72) = v55;
  v56 = v63;
  *(v47 + 80) = v64;
  *(v47 + 88) = v56;
  *(v47 + 96) = v62;
  *(v47 + 104) = v79;
  *(v47 + 112) = v42;
  *(v47 + v43[18]) = v48;
  *(v47 + v43[19]) = v49;
  *(v47 + v43[20]) = v50;
  v57 = v49;
  v58 = v50;
}

uint64_t sub_218D40994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_218D409B8, 0, 0);
}

uint64_t sub_218D409B8()
{
  v1 = v0[4];
  v2 = *(v1 + *(type metadata accessor for ChannelHeadlineServiceResult() + 24));
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_218C1CD8C;
  v4 = v0[2];

  return sub_218D40A64(v4, v2);
}

uint64_t sub_218D40A64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  sub_218D45314(0);
  v3[8] = v4;
  v3[9] = swift_task_alloc();
  v5 = sub_219BF1404();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D40B94, 0, 0);
}

uint64_t sub_218D40B94()
{
  v38 = v0;
  v1 = [*(*(v0 + 32) + *(*(v0 + 40) + 36)) mostFrequentLocation];
  *(v0 + 104) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    v3[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    v3[2].i64[0] = v2;
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_218D41070;
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);

    return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000011, 0x8000000219CF48B0, sub_218D45348, v3, v6);
  }

  else
  {
    sub_218D44610(*(v0 + 24), *(v0 + 72));
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);
    v10 = (*(v8 + 48))(v9, 1, v7);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    if (v10 == 1)
    {
      v13 = *(v0 + 56);
      sub_218D3BD28(v9, sub_218D45314);
      sub_218D4575C(v11, v13, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
      swift_unknownObjectRetain();
      v14 = sub_219BE5414();
      v15 = sub_219BF61D4();
      swift_unknownObjectRelease();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 56);
      if (v16)
      {
        v18 = *(v0 + 40);
        v19 = *(v0 + 24);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v37 = v21;
        *v20 = 136446466;
        v22 = (v17 + *(v18 + 56));
        v23 = *v22;
        v24 = v22[1];

        sub_218D3BD28(v17, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
        v25 = sub_2186D1058(v23, v24, &v37);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        v26 = [v19 identifier];
        v27 = sub_219BF5414();
        v29 = v28;

        v30 = sub_2186D1058(v27, v29, &v37);

        *(v20 + 14) = v30;
        _os_log_impl(&dword_2186C1000, v14, v15, "%{public}s found no geo location for channel.  Skipping weather.  channel=%{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v21, -1, -1);
        MEMORY[0x21CECF960](v20, -1, -1);
      }

      else
      {

        sub_218D3BD28(v17, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
      }

      v33 = *(v0 + 16);
      v34 = sub_219BF0D34();
      (*(*(v34 - 8) + 56))(v33, 1, 1, v34);

      v35 = *(v0 + 8);

      return v35();
    }

    else
    {
      (*(v8 + 32))(*(v0 + 96), v9, v7);
      __swift_project_boxed_opaque_existential_1((v11 + *(v12 + 48)), *(v11 + *(v12 + 48) + 24));
      *(v0 + 128) = sub_219BEF404();
      v31 = swift_task_alloc();
      *(v0 + 136) = v31;
      *v31 = v0;
      v31[1] = sub_218D4155C;
      v32 = *(v0 + 16);

      return MEMORY[0x2821D23D8](v32);
    }
  }
}

uint64_t sub_218D41070()
{

  return MEMORY[0x2822009F8](sub_218D41188, 0, 0);
}

uint64_t sub_218D41188()
{
  v32 = v0;

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (v4 == 1)
  {
    v7 = *(v0 + 56);
    sub_218D3BD28(v3, sub_218D45314);
    sub_218D4575C(v5, v7, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    swift_unknownObjectRetain();
    v8 = sub_219BE5414();
    v9 = sub_219BF61D4();
    swift_unknownObjectRelease();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 56);
    if (v10)
    {
      v12 = *(v0 + 40);
      v13 = *(v0 + 24);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136446466;
      v16 = (v11 + *(v12 + 56));
      v17 = *v16;
      v18 = v16[1];

      sub_218D3BD28(v11, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
      v19 = sub_2186D1058(v17, v18, &v31);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      v20 = [v13 identifier];
      v21 = sub_219BF5414();
      v23 = v22;

      v24 = sub_2186D1058(v21, v23, &v31);

      *(v14 + 14) = v24;
      _os_log_impl(&dword_2186C1000, v8, v9, "%{public}s found no geo location for channel.  Skipping weather.  channel=%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v15, -1, -1);
      MEMORY[0x21CECF960](v14, -1, -1);
    }

    else
    {

      sub_218D3BD28(v11, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    }

    v27 = *(v0 + 16);
    v28 = sub_219BF0D34();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    (*(v2 + 32))(*(v0 + 96), v3, v1);
    __swift_project_boxed_opaque_existential_1((v5 + *(v6 + 48)), *(v5 + *(v6 + 48) + 24));
    *(v0 + 128) = sub_219BEF404();
    v25 = swift_task_alloc();
    *(v0 + 136) = v25;
    *v25 = v0;
    v25[1] = sub_218D4155C;
    v26 = *(v0 + 16);

    return MEMORY[0x2821D23D8](v26);
  }
}

uint64_t sub_218D4155C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_218D4177C;
  }

  else
  {
    v2 = sub_218D4168C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D4168C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[2];
  v2 = sub_219BF0D34();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_218D4177C()
{
  v31 = v0;
  v1 = v0[18];
  v2 = v0[6];
  v3 = v0[4];
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_218D4575C(v3, v2, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  swift_unknownObjectRetain();
  v4 = v1;
  v5 = sub_219BE5414();
  v6 = sub_219BF61F4();
  swift_unknownObjectRelease();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  v9 = v0[6];
  if (v7)
  {
    v10 = v0[5];
    v29 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v11 = 136446722;
    v14 = (v9 + *(v10 + 56));
    v16 = *v14;
    v15 = v14[1];

    sub_218D3BD28(v9, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    v17 = sub_2186D1058(v16, v15, &v30);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    v18 = [v29 identifier];
    v19 = sub_219BF5414();
    v21 = v20;

    v22 = sub_2186D1058(v19, v21, &v30);

    *(v11 + 14) = v22;
    *(v11 + 22) = 2114;
    v23 = v8;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v24;
    *v12 = v24;
    _os_log_impl(&dword_2186C1000, v5, v6, "%{public}s failed to get weather for channel.  channel=%{public}s, error=%{public}@", v11, 0x20u);
    sub_218D3BD28(v12, sub_2189B3F3C);
    MEMORY[0x21CECF960](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v13, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  else
  {

    sub_218D3BD28(v9, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  }

  v25 = v0[2];
  v26 = sub_219BF0D34();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);

  v27 = v0[1];

  return v27();
}

int64_t sub_218D41AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v50 = a1;
  v46 = sub_219BF3C84();
  v51 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *(type metadata accessor for LocalNewsTodayFeedGroupEmitter() + 20);
  v9 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v49 = v52;
  v11 = *(v8 + *(v9 + 52));
  sub_219BEF134();
  sub_219BEF524();
  v10(v7, v4);
  v12 = v52;
  v13 = *(v50 + *(type metadata accessor for ChannelHeadlineServiceResult() + 28));
  v14 = *(v13 + 16);
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v16 = v49;
    if (i < v49)
    {
      break;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v13 + 16);
      v11 = v13 >> 62;
      if (!(v13 >> 62))
      {
        result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= v12)
        {
          v23 = v12;
        }

        else
        {
          v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v12)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        if (result < v24)
        {
          goto LABEL_51;
        }

        goto LABEL_16;
      }
    }

    v42 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
      goto LABEL_54;
    }

    if (v42 >= v12)
    {
      v43 = v12;
    }

    else
    {
      v43 = v42;
    }

    if (v42 < 0)
    {
      v43 = v12;
    }

    if (v12)
    {
      v24 = v43;
    }

    else
    {
      v24 = 0;
    }

    result = sub_219BF7214();
    if (result < v24)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return result;
    }

LABEL_16:
    if ((v13 & 0xC000000000000001) != 0 && v24)
    {
      sub_2186D6710(0, &qword_280E8E260);
      swift_bridgeObjectRetain_n();
      v25 = 0;
      do
      {
        v26 = v25 + 1;
        sub_219BF7334();
        v25 = v26;
      }

      while (v24 != v26);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v11)
    {
      v28 = sub_219BF7564();
      v29 = v30;
      v27 = v31;
      v33 = v32;

      v24 = v33 >> 1;
    }

    else
    {
      v27 = 0;
      v28 = v13 & 0xFFFFFFFFFFFFFF8;
      v29 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v11 = v24 - v27;
    if (__OFSUB__(v24, v27))
    {
      goto LABEL_52;
    }

    if (!v11)
    {
LABEL_36:
      swift_unknownObjectRelease();
      v40 = MEMORY[0x277D84F90];
      sub_218F0B984(MEMORY[0x277D84F90]);
      sub_218F0BA7C(v40);
      sub_218F0BB90(v40);
      return sub_219BF3E74();
    }

    v52 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      goto LABEL_53;
    }

    v44[1] = v28;
    v13 = v52;
    LODWORD(v50) = *MEMORY[0x277D34128];
    v48 = v51 + 32;
    v49 = (v51 + 104);
    if (v24 <= v27)
    {
      v34 = v27;
    }

    else
    {
      v34 = v24;
    }

    v35 = v34 - v27;
    v36 = (v29 + 8 * v27);
    v12 = v45;
    v37 = v46;
    while (v35)
    {
      *v12 = *v36;
      (*v49)(v12, v50, v37);
      v52 = v13;
      v39 = *(v13 + 16);
      v38 = *(v13 + 24);
      swift_unknownObjectRetain();
      if (v39 >= v38 >> 1)
      {
        sub_218C34A88(v38 > 1, v39 + 1, 1);
        v13 = v52;
      }

      *(v13 + 16) = v39 + 1;
      (*(v51 + 32))(v13 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v39, v12, v37);
      --v35;
      ++v36;
      if (!--v11)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_38:
    ;
  }

  v17 = sub_219BEEDD4();
  sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  v19 = v18;
  v20 = *(v13 + 16);
  if (v20 >> 62)
  {
    v41 = v18;
    v21 = sub_219BF7214();
    v19 = v41;
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *v19 = v16;
  v19[1] = v21;
  (*(*(v17 - 8) + 104))();
  return swift_willThrow();
}

char *sub_218D420B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a2;
  sub_218D45240();
  v46 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v45 = v40 - v7;
  v44 = sub_219BF3E84();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChannelHeadlineServiceResult();
  v11 = *(*(a1 + *(v10 + 28)) + 16);
  if (v11 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      v16 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v49 = MEMORY[0x277D84F90];

    result = sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v41 = v10;
    v42 = a1;
    v43 = v9;
    v15 = 0;
    v16 = v49;
    v17 = v11;
    v47 = v11 & 0xC000000000000001;
    v18 = i;
    do
    {
      if (v47)
      {
        v19 = MEMORY[0x21CECE0F0](v15, v17);
      }

      else
      {
        v19 = *(v17 + 8 * v15 + 32);
        swift_unknownObjectRetain();
      }

      v20 = [v19 identifier];
      v21 = sub_219BF5414();
      v23 = v22;
      swift_unknownObjectRelease();

      v49 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21870B65C((v24 > 1), v25 + 1, 1);
        v16 = v49;
      }

      ++v15;
      *(v16 + 16) = v25 + 1;
      v26 = v16 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    while (v18 != v15);

    a1 = v42;
    v9 = v43;
    v10 = v41;
    v13 = MEMORY[0x277D84F90];
LABEL_14:
    v27 = sub_218845F78(v16);

    v28 = a1 + *(v10 + 24);
    a1 = *(v28 + *(type metadata accessor for ChannelSectionsGroupModel() + 24));
    v11 = *(a1 + 16);
    if (!v11)
    {
LABEL_21:

      return sub_219BF47E4();
    }

    v47 = v27;
    v49 = v13;
    sub_218C35610(0, v11, 0);
    v29 = v49;
    v43 = *(a1 + 16);
    v30 = 0;
    v31 = *(type metadata accessor for ChannelSectionsGroupSectionModel() - 8);
    v41 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v42 = v31;
    v40[3] = v48 + 32;
    while (v43 != v30)
    {
      if (v30 >= *(a1 + 16))
      {
        goto LABEL_23;
      }

      v32 = a1;
      v33 = v46;
      v34 = *(v46 + 48);
      v35 = v9;
      v36 = v45;
      sub_218D4575C(v41 + *(v42 + 72) * v30, &v45[v34], type metadata accessor for ChannelSectionsGroupSectionModel);
      *v6 = v30;
      v37 = *(v33 + 48);
      v38 = &v36[v34];
      v9 = v35;
      sub_218D452AC(v38, v6 + v37, type metadata accessor for ChannelSectionsGroupSectionModel);
      sub_218D43C3C(v30, v6 + v37, v47, v35);
      sub_218D3BD28(v6, sub_218D45240);
      v49 = v29;
      v10 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v10 >= v39 >> 1)
      {
        sub_218C35610(v39 > 1, v10 + 1, 1);
        v29 = v49;
      }

      ++v30;
      *(v29 + 16) = v10 + 1;
      (*(v48 + 32))(v29 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v10, v35, v44);
      a1 = v32;
      if (v11 == v30)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_218D42578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *(type metadata accessor for ChannelHeadlineServiceResult() + 24);
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_218D42644;

  return sub_218D427B4(a3, a4, a5 + v9);
}

uint64_t sub_218D42644(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_218D42790, 0, 0);
  }
}

uint64_t sub_218D427B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186D89EC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  sub_2186D89EC(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[7] = swift_task_alloc();
  sub_2186D89EC(0, &unk_280E91A10, sub_2189AE994, v5);
  v4[8] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_218A89A94(0);
  v4[12] = swift_task_alloc();
  sub_2186FE720();
  v4[13] = swift_task_alloc();
  v7 = sub_219BDBD64();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  sub_2186D8FA8(0);
  v4[17] = swift_task_alloc();
  type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v4[18] = swift_task_alloc();
  v8 = sub_219BF1934();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D42AE4, 0, 0);
}

uint64_t sub_218D42AE4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  sub_2186DF3DC();
  sub_219BEDD14();
  sub_218D4575C(v3, v4, sub_2186D8FA8);
  sub_218D3BD28(v3, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_218D3BD28(*(v0 + 136), sub_2186D8FA8);
    v5 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v6 = 0xD000000000000013;
    v6[1] = 0x8000000219CF4870;
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D323D8], v5);
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v42 = *(v0 + 64);
    v43 = *(v0 + 56);
    v44 = *(v0 + 48);
    v41 = *(v0 + 40);
    v14 = *(v0 + 32);
    (*(*(v0 + 160) + 32))();
    sub_219BF7314();

    v15 = *v14;
    v16 = [*v14 identifier];
    v17 = sub_219BF5414();
    v19 = v18;

    MEMORY[0x21CECC330](v17, v19);

    MEMORY[0x21CECC330](14906, 0xE200000000000000);
    sub_219BDBD54();
    v20 = sub_219BDBD44();
    v22 = v21;
    (*(v11 + 8))(v9, v10);
    MEMORY[0x21CECC330](v20, v22);

    v23 = [v15 identifier];
    sub_219BF5414();

    v24 = sub_219BEC004();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    sub_218A42400(0);
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    sub_219BF1764();

    sub_218D3BD28(v13, sub_218A89A94);
    sub_218D3BD28(v12, sub_2186FE720);
    v26 = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
    v27 = (v41 + *(v26 + 24));
    v28 = v27[3];
    v29 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v30 = *(v26 + 20);
    sub_2189AE994(0);
    v32 = v31;
    v33 = *(v31 - 8);
    (*(v33 + 16))(v42, v41 + v30, v31);
    (*(v33 + 56))(v42, 0, 1, v32);
    v34 = sub_219BF35D4();
    (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
    *(v0 + 208) = 2;
    sub_218D451AC();
    swift_allocObject();

    sub_219BF38D4();
    v35 = sub_219BF2774();
    (*(*(v35 - 8) + 56))(v44, 1, 1, v35);
    v36 = qword_280E8D7A0;
    *MEMORY[0x277D30BC8];
    if (v36 != -1)
    {
      swift_once();
    }

    qword_280F616D8;
    sub_219BF2A84();
    v37 = swift_task_alloc();
    *(v0 + 184) = v37;
    *v37 = v0;
    v37[1] = sub_218D43218;
    v38 = *(v0 + 168);
    v39 = *(v0 + 88);
    v40 = *(v0 + 24);

    return MEMORY[0x2821921B8](v38, v40, v39, v28, v29);
  }
}

uint64_t sub_218D43218(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v4[24] = v1;

  v6 = (v5 + 8);
  v7 = v4[11];
  v8 = v4[9];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_218D434D4;
  }

  else
  {
    v4[25] = a1;
    (*v6)(v7, v8);
    v9 = sub_218D433A4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_218D433A4()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = *(v0[20] + 8);
  v3(v0[21], v2);
  v3(v1, v2);

  v4 = v0[1];
  v5 = v0[25];

  return v4(v5);
}

uint64_t sub_218D434D4()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = *(v0[20] + 8);
  v3(v0[21], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_218D435F8(uint64_t a1)
{
  v2 = sub_219BEE3D4();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0C04();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BF0BD4();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D89EC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for TodayFeedServiceContext();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_219BDBD34();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v45 = a1;
  sub_219BEF0B4();
  sub_218D4575C(*&v46 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v14, type metadata accessor for TodayFeedServiceContext);

  v22 = v14[1];
  sub_218D3BD28(v14, type metadata accessor for TodayFeedServiceContext);
  v23 = [v22 startDate];

  if (!v23)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_219BDBCA4();

  (*(v16 + 32))(v21, v19, v15);
  v24 = *(v16 + 16);
  v42 = v21;
  v24(v11, v21, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  type metadata accessor for LocalNewsTodayFeedGroupEmitter();
  type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v25 = *(v6 + 8);
  v26 = v6 + 8;
  v27 = v43;
  v44 = v26;
  v25(v8);
  v28 = v46;
  v29 = 0;
  if ((*(v16 + 48))(v11, 1, v15) != 1)
  {
    v29 = sub_219BDBC04();
    (*(v16 + 8))(v11, v15);
  }

  v30 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v29 timeInterval:v28];

  if (!v30)
  {
    goto LABEL_10;
  }

  sub_219BEF134();
  sub_219BEF524();
  (v25)(v8, v27);
  if (LOBYTE(v46) != 1)
  {
    (*(v16 + 8))(v42, v15);
    return;
  }

  sub_219BEF134();
  v31 = v37;
  sub_219BF0BB4();
  (v25)(v8, v27);
  v32 = v36;
  v33 = v42;
  sub_219BEE3C4();
  (*(v40 + 8))(v31, v41);
  v34 = sub_219BF0BF4();
  (*(v38 + 8))(v32, v39);
  if ([v30 intersectionWithDateRange_])
  {
    (*(v16 + 8))(v33, v15);

    return;
  }

LABEL_11:
  __break(1u);
}

size_t sub_218D43C3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_219BF2124();
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF3C84();
  v53 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v13 = *(a2 + 48);
  v56 = MEMORY[0x277D84F90];
  v47 = a4;
  if (v13 >> 62)
  {
LABEL_39:
    v14 = sub_219BF7214();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  v46 = v12;
  if (v14)
  {
    v44 = v13;
    v45 = a1;
    v16 = 0;
    v51 = v13 & 0xFFFFFFFFFFFFFF8;
    v52 = v13 & 0xC000000000000001;
    v50 = v13 + 32;
    v13 = a3 + 56;
    while (1)
    {
      if (v52)
      {
        a1 = MEMORY[0x21CECE0F0](v16, v44);
        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v27 = v56;
          a1 = v45;
          v15 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }
      }

      else
      {
        if (v16 >= *(v51 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        a1 = *(v50 + 8 * v16);
        swift_unknownObjectRetain();
        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          goto LABEL_23;
        }
      }

      v18 = [a1 identifier];
      v19 = sub_219BF5414();
      v21 = v20;

      if (*(a3 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v22 = sub_219BF7AE4(), v23 = -1 << *(a3 + 32), v12 = v22 & ~v23, ((*(v13 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v24 = ~v23;
        while (1)
        {
          v25 = (*(a3 + 48) + 16 * v12);
          v26 = *v25 == v19 && v25[1] == v21;
          if (v26 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v24;
          if (((*(v13 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();

        if (v16 == v14)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_5:

        v12 = &v56;
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v16 == v14)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_26:
  v54 = 0x2D6E6F6974636573;
  v55 = 0xE800000000000000;
  v56 = a1;
  v28 = sub_219BF7894();
  MEMORY[0x21CECC330](v28);

  v29 = v54;
  v30 = v55;
  if ((v27 & 0x8000000000000000) == 0 && (v27 & 0x4000000000000000) == 0)
  {
    v31 = *(v27 + 16);
    if (v31)
    {
      goto LABEL_29;
    }

LABEL_41:

    sub_2186D89EC(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    sub_219BF14C4();
    *(swift_allocObject() + 16) = xmmword_219C09EC0;
    sub_219BF20F4();
    sub_219BF14A4();
    type metadata accessor for ChannelSectionsGroupSectionModel();
    sub_219BF20E4();
    sub_219BF14A4();
    v42 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v42);
    sub_218F0BB90(v42);
    return sub_219BF3E74();
  }

  v31 = sub_219BF7214();
  if (!v31)
  {
    goto LABEL_41;
  }

LABEL_29:
  v54 = v15;
  result = sub_218C34A88(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v52 = v31;
    v45 = v30;
    v50 = v29;
    v33 = 0;
    v51 = v27 & 0xC000000000000001;
    v34 = *MEMORY[0x277D34128];
    v35 = v54;
    v36 = (v53 + 104);
    v37 = v46;
    do
    {
      if (v51)
      {
        v38 = MEMORY[0x21CECE0F0](v33, v27);
      }

      else
      {
        v38 = swift_unknownObjectRetain();
      }

      *v37 = v38;
      (*v36)(v37, v34, v10);
      v54 = v35;
      v39 = v10;
      v41 = *(v35 + 16);
      v40 = *(v35 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_218C34A88(v40 > 1, v41 + 1, 1);
        v37 = v46;
        v35 = v54;
      }

      ++v33;
      *(v35 + 16) = v41 + 1;
      (*(v53 + 32))(v35 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v41, v37, v39);
      v10 = v39;
    }

    while (v52 != v33);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void sub_218D44284(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_218D45518();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + *(type metadata accessor for LocalNewsTodayFeedGroupEmitter() + 40));
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v15, v14, v11);
  *(v17 + v16) = a3;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a4;
  v18[1] = a5;
  aBlock[4] = sub_218D45590;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218C1CBB4;
  aBlock[3] = &block_descriptor_49;
  v19 = _Block_copy(aBlock);
  v20 = a3;

  [v22 fetchLocalAreasProvider_];
  _Block_release(v19);
}

uint64_t sub_218D44480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = [swift_unknownObjectRetain() autoFavoriteTagIDsForLocation_];
    v9 = sub_219BF5D44();

    sub_2188537B8(a5, a6, v9);

    sub_218D45518();
    sub_219BF5B64();
    return swift_unknownObjectRelease();
  }

  else
  {
    v11 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v12 = 0xD000000000000016;
    v12[1] = 0x8000000219CF4920;
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D323D8], v11);
    sub_218D45518();
    return sub_219BF5B54();
  }
}

uint64_t sub_218D44610@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_218D454D8(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4575C(v2, v10, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  swift_unknownObjectRetain();
  v11 = sub_219BE5414();
  v12 = sub_219BF61D4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136446466;
    v15 = &v10[*(v8 + 56)];
    v16 = *v15;
    v17 = v15[1];

    sub_218D3BD28(v10, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    v18 = sub_2186D1058(v16, v17, &v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v19 = [a1 identifier];
    v20 = sub_219BF5414();
    v22 = v21;

    v23 = sub_2186D1058(v20, v22, &v28);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_2186C1000, v11, v12, "%{public}s will use channel fallback location.  channel=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v14, -1, -1);
    MEMORY[0x21CECF960](v13, -1, -1);
  }

  else
  {

    sub_218D3BD28(v10, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  }

  swift_getObjectType();
  sub_218F998B0(v7);
  v24 = type metadata accessor for ChannelSupergroupConfig();
  if ((*(*(v24 - 8) + 48))(v7, 1, v24) == 1)
  {
    sub_218D3BD28(v7, sub_218D454D8);
    v25 = sub_219BF1404();
    return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
  }

  else
  {
    sub_218D4575C(&v7[*(v24 + 24)], a2, sub_218D45314);
    return sub_218D3BD28(v7, type metadata accessor for ChannelSupergroupConfig);
  }
}

void sub_218D44998(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a3;
  v24 = a4;
  v6 = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D45354();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = *(a2 + *(v7 + 48));
  (*(v13 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  sub_218D4575C(a2, v10, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v16, &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_218D452AC(v10, v19 + v17, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  v20 = v24;
  *(v19 + v18) = v23;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  aBlock[4] = sub_218D453BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218C1CBB4;
  aBlock[3] = &block_descriptor_56;
  v21 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v22 = v20;

  [v15 fetchLocalAreasProvider_];
  _Block_release(v21);
}

uint64_t sub_218D44C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_218D45314(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v22 - v11;
  if (a1)
  {
    v13 = [swift_unknownObjectRetain() autoFavoriteTagIDsForLocation_];
    v14 = sub_219BF5D44();

    v15 = [a5 identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    LOBYTE(v15) = sub_2188537B8(v16, v18, v14);

    if (v15)
    {
      v19 = a6;
      sub_219BF13F4();
      v20 = sub_219BF1404();
      (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
    }

    else
    {
      sub_218D44610(a5, v12);
    }

    sub_218D45354();
    sub_219BF5B64();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_218D44610(a5, &v22 - v11);
    sub_218D45354();
    return sub_219BF5B64();
  }
}

uint64_t sub_218D44E1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218D3BD88(a1, v4);
}

uint64_t sub_218D44EBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocalNewsTodayFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ChannelHeadlineServiceResult() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2187609C8;

  return sub_218D40994(a1, v1 + v6, v1 + v9);
}

uint64_t sub_218D44FF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocalNewsTodayFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_219BF2034() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for ChannelHeadlineServiceResult() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2187608D4;

  return sub_218D42578(a1, v1 + v6, v13, v1 + v9, v1 + v12);
}

void sub_218D451AC()
{
  if (!qword_280E90070)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF73C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v0 = sub_219BF38F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90070);
    }
  }
}

void sub_218D45240()
{
  if (!qword_280E8E930)
  {
    type metadata accessor for ChannelSectionsGroupSectionModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E930);
    }
  }
}

uint64_t sub_218D452AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218D45354()
{
  if (!qword_280E8EAE0)
  {
    sub_218D45314(255);
    v0 = sub_219BF5B74();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EAE0);
    }
  }
}

uint64_t sub_218D453BC(uint64_t a1, uint64_t a2)
{
  sub_218D45354();
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for LocalNewsTodayFeedGroupEmitter() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10);
  v12 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_218D44C48(a1, a2, v2 + v6, v2 + v9, v11, v12);
}

void sub_218D45518()
{
  if (!qword_280E8EAC8)
  {
    sub_2186CFDE4(255, &qword_280E8B580);
    v0 = sub_219BF5B74();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EAC8);
    }
  }
}

uint64_t sub_218D45590(uint64_t a1, uint64_t a2)
{
  sub_218D45518();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v8);
  v10 = (v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_218D44480(a1, a2, v2 + v7, v9, v11, v12);
}

uint64_t sub_218D4564C(uint64_t a1)
{
  v4 = *(type metadata accessor for LocalNewsTodayFeedGroupEmitter() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_218D3C400(a1, v1 + v5);
}

uint64_t sub_218D4575C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for TagFeedExpandRequest()
{
  result = qword_280ECCC38;
  if (!qword_280ECCC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218D45870()
{
  result = type metadata accessor for TagFeedGapLocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218D458F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_219BF7314();
  MEMORY[0x21CECC330](0x3D6761747BLL, 0xE500000000000000);
  MEMORY[0x21CECC330](v1, v2);
  MEMORY[0x21CECC330](0x657269707865202CLL, 0xEE003D7265746641);
  sub_219BF5CB4();
  MEMORY[0x21CECC330](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_218D45A00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v16[1] = a1;
  v16[2] = a2;
  v17 = a3;
  v3 = sub_219BEF2A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEF974();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsFavoritesLayoutModel();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F7A0();
  sub_219BE75E4();
  (*(v8 + 32))(v10, v13, v7);
  swift_getObjectType();
  sub_219BEED04();
  v14 = sub_219BEF294();
  (*(v4 + 8))(v6, v3);
  result = (*(v8 + 8))(v10, v7);
  *v17 = v14;
  return result;
}

uint64_t sub_218D45C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BF1A44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 16);
  if (v29)
  {
    v26 = v7;
    v27 = a3;
    v10 = 0;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v31 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v32 = v12;
    v13 = a2 + 56;
    v28 = (v11 - 8);
    v30 = *(v11 + 56);
    v12(v9, v31, v6);
    while (1)
    {
      v14 = sub_219BF1A14();
      v16 = v15;
      if (*(a2 + 16))
      {
        v17 = v14;
        sub_219BF7AA4();
        sub_219BF5524();
        v18 = sub_219BF7AE4();
        v19 = -1 << *(a2 + 32);
        v20 = v18 & ~v19;
        if ((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          break;
        }
      }

LABEL_3:
      ++v10;

      (*v28)(v9, v6);
      if (v10 == v29)
      {
        v24 = 1;
        v7 = v26;
        a3 = v27;
        return (*(v7 + 56))(a3, v24, 1, v6);
      }

      v32(v9, v31 + v30 * v10, v6);
    }

    v21 = ~v19;
    while (1)
    {
      v22 = (*(a2 + 48) + 16 * v20);
      v23 = *v22 == v17 && v22[1] == v16;
      if (v23 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v7 = v26;
    a3 = v27;
    (*(v26 + 32))(v27, v9, v6);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  return (*(v7 + 56))(a3, v24, 1, v6);
}

uint64_t sub_218D45EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_219BF1A44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 16);
  if (v29)
  {
    v26 = v7;
    v27 = a3;
    v10 = 0;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v31 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v32 = v12;
    v13 = a2 + 56;
    v28 = (v11 - 8);
    v30 = *(v11 + 56);
    v12(v9, v31, v6);
    while (1)
    {
      v14 = sub_219BF1A14();
      v16 = v15;
      if (*(a2 + 16))
      {
        v17 = v14;
        sub_219BF7AA4();
        sub_219BF5524();
        v18 = sub_219BF7AE4();
        v19 = -1 << *(a2 + 32);
        v20 = v18 & ~v19;
        if ((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          break;
        }
      }

LABEL_3:
      ++v10;

      (*v28)(v9, v6);
      if (v10 == v29)
      {
        v24 = 1;
        v7 = v26;
        a3 = v27;
        return (*(v7 + 56))(a3, v24, 1, v6);
      }

      v32(v9, v31 + v30 * v10, v6);
    }

    v21 = ~v19;
    while (1)
    {
      v22 = (*(a2 + 48) + 16 * v20);
      v23 = *v22 == v17 && v22[1] == v16;
      if (v23 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v7 = v26;
    a3 = v27;
    (*(v26 + 32))(v27, v9, v6);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  return (*(v7 + 56))(a3, v24, 1, v6);
}

uint64_t sub_218D4611C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_218D46798(0, &qword_280E8C508, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D46744();
  sub_219BF7B44();
  v15 = a2;
  v14 = 0;
  sub_2186E2394();
  sub_218B9F868(&unk_280E8E9D0);
  sub_219BF7834();
  if (!v3)
  {
    v15 = a3;
    v14 = 1;
    sub_219BF7834();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_218D462E4()
{
  if (*v0)
  {
    return 0x656C746974627573;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_218D4631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
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

uint64_t sub_218D463F4(uint64_t a1)
{
  v2 = sub_218D46744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D46430(uint64_t a1)
{
  v2 = sub_218D46744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218D4646C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218D464B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_218D464B4(void *a1)
{
  sub_218D46798(0, &qword_280E8CD40, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_218D46744();
  sub_219BF7B34();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2186E2394();
    LOBYTE(v12) = 0;
    sub_218B9F868(&qword_280E8E9B8);
    sub_219BF76E4();
    v8 = v13;
    v11[7] = 1;
    sub_219BF76E4();
    v10 = v12;
    if (!v8)
    {
      v8 = sub_2194AD74C(&unk_282A24130);
      swift_arrayDestroy();
    }

    if (!v10)
    {
      sub_2194AD74C(&unk_282A24170);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

unint64_t sub_218D46744()
{
  result = qword_280EBCDD8;
  if (!qword_280EBCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDD8);
  }

  return result;
}

void sub_218D46798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D46744();
    v7 = a3(a1, &type metadata for TagFeedCurationSearchKeys.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218D46810()
{
  result = qword_27CC11680;
  if (!qword_27CC11680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11680);
  }

  return result;
}

unint64_t sub_218D46868()
{
  result = qword_280EBCDC8;
  if (!qword_280EBCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDC8);
  }

  return result;
}

unint64_t sub_218D468C0()
{
  result = qword_280EBCDD0;
  if (!qword_280EBCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDD0);
  }

  return result;
}

uint64_t MagazineFeedModule.createMagazineSectionViewController()()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___TSMagazineFeedModule_resolver), *(v0 + OBJC_IVAR___TSMagazineFeedModule_resolver + 24));
  type metadata accessor for MagazineFeedViewController();
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  v1 = sub_219BE1E04();

  if (v1)
  {
    sub_218D4713C(&qword_280EBB290, type metadata accessor for MagazineFeedViewController);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218D46A18(void *a1, uint64_t a2)
{
  v4 = sub_219BE14C4();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE14A4();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v25 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE15B4();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v19[2] = a1[4];
  v19[1] = __swift_project_boxed_opaque_existential_1(a1, v11);
  v21 = a2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  __swift_project_boxed_opaque_existential_1(&Strong[OBJC_IVAR___TSMagazineFeedModule_contextBuilder], *&Strong[OBJC_IVAR___TSMagazineFeedModule_contextBuilder + 24]);
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  if (qword_280EE34E0 != -1)
  {
    swift_once();
  }

  v13 = sub_219BEBC84();
  __swift_project_value_buffer(v13, qword_280F62380);
  sub_218D4713C(&qword_280EE34B8, MEMORY[0x277D2D120]);
  sub_219BEC144();

  sub_218BDE5B0();
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = swift_unknownObjectUnownedLoadStrong();
  v15 = v20;
  (*(v8 + 104))(v10, *MEMORY[0x277D2F468], v20);
  sub_219BDD0F4();
  (*(v8 + 8))(v10, v15);
  (*(v23 + 104))(v22, *MEMORY[0x277D2F348], v24);
  v16 = v25;
  sub_219BE1484();
  sub_218D4713C(&qword_280EE8010, MEMORY[0x277D2F280]);
  v17 = v27;
  sub_219BDD1F4();

  (*(v26 + 8))(v16, v17);
  sub_219BDD274();
  sub_219BE1B94();
}

id MagazineFeedModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MagazineFeedModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_218D46FE8()
{
  __swift_project_boxed_opaque_existential_1((*v0 + OBJC_IVAR___TSMagazineFeedModule_resolver), *(*v0 + OBJC_IVAR___TSMagazineFeedModule_resolver + 24));
  type metadata accessor for MagazineFeedViewController();
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  v1 = sub_219BE1E04();

  if (v1)
  {
    sub_218D4713C(&qword_280EBB290, type metadata accessor for MagazineFeedViewController);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218D4713C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_218D47188()
{
  result = [objc_opt_self() currentRequest];
  if (result)
  {
    v1 = result;
    v2 = [result technology];

    v3 = sub_219BF5414();
    v5 = v4;
    if (v3 == sub_219BF5414() && v5 == v6)
    {
    }

    else
    {
      v8 = sub_219BF78F4();

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = *&result[OBJC_IVAR____TtC7NewsUI211WelcomeView_footer];

    v11 = *&v10[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink];
    v12 = [v11 text];

    if (v12)
    {
      v13 = sub_219BF5414();

      return v13;
    }

    return 0;
  }

  return result;
}

uint64_t sub_218D47350(void *a1, __int16 a2, CGFloat *a3, char *a4)
{
  v112 = sub_219BDB5A4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_218C00EEC(a2 & 0xFF01, v132);
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  v134.origin.x = *a3;
  v134.origin.y = v11;
  v134.size.width = v12;
  v134.size.height = v13;
  Width = CGRectGetWidth(v134);
  v129 = v10;
  v135.origin.x = v10;
  v128 = v11;
  v135.origin.y = v11;
  v127 = v12;
  v135.size.width = v12;
  v126 = v13;
  v135.size.height = v13;
  [a4 setFrame_];
  [a4 frame];
  v15 = CGRectGetWidth(v136);
  [a4 frame];
  [a4 setBounds_];
  v16 = __swift_project_boxed_opaque_existential_1(v132, v133);
  [a4 setBackgroundColor_];
  v17 = *&a4[OBJC_IVAR____TtC7NewsUI211WelcomeView_scrollView];
  v130 = a4;
  [v17 &selRef_minShortcutsOnboardCount];
  v18 = a3[8];
  v19 = a3[9];
  v125 = v17;
  [v17 setContentSize_];
  v20 = *&a4[OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup];
  v21 = a3[10];
  v22 = a3[11];
  v23 = a3[12];
  v24 = a3[13];
  v25 = a3[14];
  v26 = a3[15];
  v27 = a3[16];
  v28 = a3[17];
  v29 = a3[18];
  v30 = a3[19];
  v31 = a3[20];
  v32 = a3[21];
  v33 = a3[23];
  v124 = a3[22];
  v123 = v33;
  v34 = a3[25];
  v122 = a3[24];
  v121 = v34;
  [v20 &selRef_minShortcutsOnboardCount];
  v35 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_appIcon;
  [*&v20[OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_appIcon] &selRef_minShortcutsOnboardCount];
  [*&v20[v35] setImage_];
  v36 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeTitleLabel;
  [*&v20[OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeTitleLabel] &selRef_minShortcutsOnboardCount];
  v37 = *&v20[v36];
  __swift_project_boxed_opaque_existential_1(v132, v133);
  v38 = v37;
  v39 = sub_21900EE8C();
  [v38 setAttributedText_];

  v40 = *&v20[v36];
  sub_2190103A8(v40);

  v41 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeSubTitleLabel;
  [*&v20[OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeSubTitleLabel] setFrame_];
  v42 = *&v20[v41];
  __swift_project_boxed_opaque_existential_1(v132, v133);
  v43 = v42;
  v44 = sub_21900F270();
  [v43 setAttributedText_];

  v45 = *&v20[v41];
  [v45 setNumberOfLines_];
  [v45 setLineBreakMode_];

  v46 = *&v130[OBJC_IVAR____TtC7NewsUI211WelcomeView_footer];
  v47 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator;
  v48 = *&v46[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator];
  v49 = a3[28];
  v124 = a3[27];
  v123 = v49;
  v50 = a3[30];
  v122 = a3[29];
  v121 = v50;
  v51 = a3[32];
  v52 = a3[33];
  v53 = a3[34];
  v54 = a3[35];
  v55 = a3[36];
  v56 = a3[37];
  v57 = a3[38];
  v58 = a3[39];
  v59 = a3[40];
  v60 = a3[41];
  v61 = a3[42];
  v62 = a3[43];
  v63 = a3[45];
  v116 = a3[44];
  v115 = v63;
  v64 = a3[47];
  v114 = a3[46];
  v113 = v64;
  v65 = a3[50];
  v120 = a3[49];
  v119 = v65;
  v66 = a3[52];
  v118 = a3[51];
  v117 = v66;
  [v48 setFrame_];
  v67 = __swift_project_boxed_opaque_existential_1(v132, v133);
  [*&v46[v47] setColor_];
  v68 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon;
  [*&v46[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon] setFrame_];
  v69 = a1[7];
  v70 = *&v46[v68];
  v71 = [v69 imageWithRenderingMode_];
  [v70 setImage_];

  v72 = *&v46[v68];
  v73 = objc_opt_self();
  v74 = v72;
  v75 = [v73 systemPinkColor];
  [v74 setTintColor_];

  [*&v46[v68] setIsAccessibilityElement_];
  v76 = *&v46[v68];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = objc_opt_self();
  v79 = v76;
  v80 = [v78 bundleForClass_];
  sub_219BDB5E4();

  v81 = sub_219BF53D4();

  [v79 setAccessibilityLabel_];

  v82 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink;
  [*&v46[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink] setFrame_];
  v83 = *&v46[v82];
  __swift_project_boxed_opaque_existential_1(v132, v133);
  v84 = a1[8];
  v85 = v83;
  v86 = sub_21900F554(v84);
  [v85 setAttributedText_];

  v87 = *&v46[v82];
  v88 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_218D47DF8;
  aBlock[5] = v88;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218C94FBC;
  aBlock[3] = &block_descriptor_57;
  v89 = _Block_copy(aBlock);
  v90 = v87;

  [v90 setAccessibilityLabelBlock_];
  _Block_release(v89);

  v91 = *&v46[v82];
  sub_219010540(v91);

  v92 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton;
  [*&v46[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton] setFrame_];
  if (sub_219BED0C4())
  {
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v93 = v110;
    sub_21900FB70();
    v94 = *&v46[v92];
    sub_2190106C4(v94, v93);

    (*(v111 + 8))(v93, v112);
  }

  else
  {
    v95 = *&v46[v92];
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v96 = v95;
    v97 = sub_21900F920();
    [v96 setAttributedTitle:v97 forState:0];

    v98 = *&v46[v92];
    v99 = [v98 layer];
    [v99 setCornerRadius_];

    [v98 setClipsToBounds_];
  }

  v100 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage;
  [*&v46[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage] setFrame_];
  v101 = *&v46[v100];
  __swift_project_boxed_opaque_existential_1(v132, v133);
  v102 = v101;
  v103 = sub_21900FC90();
  [v102 setAttributedText_];

  v104 = *&v46[v100];
  [v104 setNumberOfLines_];
  [v104 setLineBreakMode_];

  [*&v46[v100] setAlpha_];
  [v46 setFrame_];
  [v125 contentSize];
  v106 = v105;
  v138.origin.x = v129;
  v138.origin.y = v128;
  v138.size.width = v127;
  v138.size.height = v126;
  v107 = CGRectGetHeight(v138) < v106;
  sub_219010A58(v46, v107);
  return __swift_destroy_boxed_opaque_existential_1(v132);
}

uint64_t type metadata accessor for FollowingNotificationsSectionFooterViewLayoutOptions()
{
  result = qword_27CC116A8;
  if (!qword_27CC116A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218D47E74()
{
  result = sub_219BE8164();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218D47F18(void *a1)
{
  v1 = *(*a1 + OBJC_IVAR___TSNotificationSettings_authorizationStatus);
  if ((v1 - 1) >= 2 && v1)
  {
    result = sub_219BF7974();
    __break(1u);
  }

  else
  {
    sub_21874D974();
    swift_allocObject();
    return sub_219BE3014();
  }

  return result;
}

void sub_218D47FD8(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_notificationService + 24);
    v6 = *(Strong + OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_notificationService + 32);
    v7 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_notificationService), v5);
    (*(v6 + 32))(0, v5, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    v9 = sub_219BE2E54();
    sub_219BE2F74();

    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;

    v11 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    v12 = sub_219BE8B44();
    sub_218D484B0();
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D6E188], v12);
    a1(v13, 1);
  }
}

uint64_t sub_218D481E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  return a2(a1, 1);
}

uint64_t sub_218D483AC()
{
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F64();

  return v1;
}

void (*sub_218D4844C())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_218D484A8;
}

unint64_t sub_218D484B0()
{
  result = qword_27CC127C0;
  if (!qword_27CC127C0)
  {
    sub_219BE8B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC127C0);
  }

  return result;
}

uint64_t sub_218D48548()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_notificationService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v2, v3);
}

id sub_218D485D4(char *a1)
{
  v2 = [a1 maskView];
  if (v2)
  {
    v3 = v2;
    [a1 bounds];
    [v3 setFrame_];
  }

  [a1 bounds];
  if (v4 <= 300.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 300.0;
  }

  [a1 bounds];
  v7 = v6;
  v8 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView_titleLabel];
  [v8 sizeThatFits_];
  v10 = v9;
  v11 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView_subtitleLabel];
  [v11 sizeThatFits_];
  v13 = v10 + 99.0 + 13.0 + v12;
  [a1 bounds];
  v14 = CGRectGetMidX(v29) - v5 * 0.5;
  [a1 bounds];
  v15 = CGRectGetMidY(v30) - v13 * 0.5;
  v16 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView_iconContainer];
  [v16 bounds];
  [v16 setBounds_];
  v31.origin.x = v14;
  v31.origin.y = v15;
  v31.size.width = v5;
  v31.size.height = v13;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = v14;
  v32.origin.y = v15;
  v32.size.width = v5;
  v32.size.height = v13;
  [v16 setCenter_];
  v18 = sub_2194DC078();
  [v18 bounds];
  [v18 setBounds_];

  v19 = OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___iconImageView;
  v20 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___iconImageView];
  [v16 bounds];
  sub_219BF6B44();
  [v20 setCenter_];

  v21 = sub_2194DC06C();
  [*&a1[v19] frame];
  [a1 convertRect:v16 fromCoordinateSpace:?];
  [v21 setFrame_];

  [v8 bounds];
  [v8 setBounds_];
  v33.origin.x = v14;
  v33.origin.y = v15;
  v33.size.width = v5;
  v33.size.height = v13;
  v22 = CGRectGetMidX(v33);
  [v16 frame];
  v23 = CGRectGetMaxY(v34) + 22.0;
  [v8 bounds];
  [v8 setCenter_];
  [v11 bounds];
  [v11 setBounds_];
  v36.origin.x = v14;
  v36.origin.y = v15;
  v36.size.width = v5;
  v36.size.height = v13;
  v24 = CGRectGetMidX(v36);
  v37.origin.x = v14;
  v37.origin.y = v15;
  v37.size.width = v5;
  v37.size.height = v13;
  MaxY = CGRectGetMaxY(v37);
  [v11 bounds];
  v26 = MaxY - CGRectGetMidY(v38);

  return [v11 setCenter_];
}

uint64_t sub_218D48984(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_218D489D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_218D48A44()
{
  result = qword_27CC116C8;
  if (!qword_27CC116C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC116C8);
  }

  return result;
}

uint64_t sub_218D48A98(uint64_t a1)
{
  v2 = sub_218D48B50();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218D48AD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E758];
  v3 = sub_219BE9834();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_218D48B50()
{
  result = qword_27CC116D0;
  if (!qword_27CC116D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC116D0);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_218D48BD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218D48BF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 136) = v3;
  return result;
}

unint64_t sub_218D48C54()
{
  v1 = 0x776F68537473616CLL;
  v2 = 0x656761676E457369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_218D48CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218D49984(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218D48D1C(uint64_t a1)
{
  v2 = sub_218D48FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D48D58(uint64_t a1)
{
  v2 = sub_218D48FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsUpsellState.encode(to:)(void *a1)
{
  sub_218D4938C(0, &qword_27CC116D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D48FA4();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF7824();
  if (!v1)
  {
    type metadata accessor for SportsUpsellState();
    v9[14] = 1;
    sub_219BDBD34();
    sub_218D493F0(&qword_280EE9CA0);
    sub_219BF7834();
    v9[13] = 2;
    sub_219BF7804();
    v9[12] = 3;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_218D48FA4()
{
  result = qword_27CC116E0;
  if (!qword_27CC116E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC116E0);
  }

  return result;
}

uint64_t SportsUpsellState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_219BDBD34();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4938C(0, &qword_27CC116E8, MEMORY[0x277D844C8]);
  v24 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SportsUpsellState();
  MEMORY[0x28223BE20](v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D48FA4();
  v23 = v8;
  v12 = v25;
  sub_219BF7B34();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v21;
  v14 = v22;
  v29 = 0;
  v15 = sub_219BF7724();
  v25 = v11;
  *v11 = v15;
  v28 = 1;
  sub_218D493F0(&unk_280EE9C70);
  sub_219BF7734();
  (*(v14 + 32))(v25 + v9[5], v5, v3);
  v27 = 2;
  v16 = sub_219BF7704();
  v17 = v25;
  *(v25 + v9[6]) = v16 & 1;
  v26 = 3;
  v18 = sub_219BF7724();
  (*(v13 + 8))(v23, v24);
  *(v17 + v9[7]) = v18;
  sub_218D49434(v17, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218D49498(v17);
}

void sub_218D4938C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D48FA4();
    v7 = a3(a1, &type metadata for SportsUpsellState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218D493F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_219BDBD34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218D49434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsUpsellState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D49498(uint64_t a1)
{
  v2 = type metadata accessor for SportsUpsellState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SportsUpsellState.incrementingArticleReadCount()(uint64_t *a1@<X8>)
{
  v3 = *v1 + 1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = type metadata accessor for SportsUpsellState();
    v5 = v4[5];
    v6 = sub_219BDBD34();
    (*(*(v6 - 8) + 16))(a1 + v5, &v1[v5], v6);
    v7 = v1[v4[6]];
    v8 = *&v1[v4[7]];
    *a1 = v3;
    *(a1 + v4[6]) = v7;
    *(a1 + v4[7]) = v8;
  }
}

uint64_t SportsUpsellState.resettingArticleReadCount()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SportsUpsellState();
  v4 = v3[5];
  v5 = sub_219BDBD34();
  result = (*(*(v5 - 8) + 16))(&a1[v4], v1 + v4, v5);
  v7 = *(v1 + v3[6]);
  v8 = *(v1 + v3[7]);
  *a1 = 0;
  a1[v3[6]] = v7;
  *&a1[v3[7]] = v8;
  return result;
}

uint64_t SportsUpsellState.updatingLastShownDate(to:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for SportsUpsellState();
  v7 = v6[5];
  v8 = sub_219BDBD34();
  result = (*(*(v8 - 8) + 16))(&a2[v7], a1, v8);
  v10 = *(v2 + v6[6]);
  v11 = *(v2 + v6[7]);
  *a2 = v5;
  a2[v6[6]] = v10;
  *&a2[v6[7]] = v11;
  return result;
}

uint64_t SportsUpsellState.updatingEngagedUser(to:)@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for SportsUpsellState();
  v7 = v6[5];
  v8 = sub_219BDBD34();
  result = (*(*(v8 - 8) + 16))(&a2[v7], &v2[v7], v8);
  v10 = *&v2[v6[7]];
  *a2 = v5;
  a2[v6[6]] = a1;
  *&a2[v6[7]] = v10;
  return result;
}

uint64_t SportsUpsellState.incrementingPresentedCount()@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for SportsUpsellState();
  v5 = v4[5];
  v6 = sub_219BDBD34();
  result = (*(*(v6 - 8) + 16))(&a1[v5], &v1[v5], v6);
  v8 = *&v1[v4[7]];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = v1[v4[6]];
    *a1 = v3;
    a1[v4[6]] = v11;
    *&a1[v4[7]] = v10;
  }

  return result;
}

unint64_t sub_218D49880()
{
  result = qword_27CC116F0;
  if (!qword_27CC116F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC116F0);
  }

  return result;
}

unint64_t sub_218D498D8()
{
  result = qword_27CC116F8;
  if (!qword_27CC116F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC116F8);
  }

  return result;
}

unint64_t sub_218D49930()
{
  result = qword_27CC11700;
  if (!qword_27CC11700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11700);
  }

  return result;
}

uint64_t sub_218D49984(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000219CF4BF0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F68537473616CLL && a2 == 0xED0000657461446ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656761676E457369 && a2 == 0xED00007265735564 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CF4C10 == a2)
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

uint64_t sub_218D49B08(id *a1, uint64_t a2)
{
  v3 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v4 = objc_msgSend(v3, sel_channelPickerConfigurationResourceId)) != 0)
  {
    v5 = v4;
    v6 = sub_219BF5414();
    v8 = v7;

    if (qword_27CC08558 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_2186FC3BC();
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;

    sub_219BF6214();
    sub_219BE5314();

    __swift_project_boxed_opaque_existential_1((a2 + 32), *(a2 + 56));
    v10 = sub_219BF2964();

    return v10;
  }

  else
  {
    sub_218D4A05C();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_218D49CAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v12 = [*a1 fileURL];
  if (v12)
  {
    v13 = v12;
    sub_219BDB8B4();

    (*(v6 + 32))(v11, v9, v5);
    v14 = sub_219BDB974();
    if (v2)
    {
      return (*(v6 + 8))(v11, v5);
    }

    else
    {
      v18 = v14;
      v19 = v15;
      sub_218D4A0B0();
      sub_219BE1974();
      (*(v6 + 8))(v11, v5);
      result = sub_2186C6190(v18, v19);
      *a2 = v20[1];
    }
  }

  else
  {
    sub_218D4A05C();
    swift_allocError();
    *v17 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_218D49ED8()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_218D49F28()
{
  sub_2186C61E4();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_2186E9518();
  sub_219BE2F84();

  v1 = sub_219BE2E54();
  v2 = sub_219BE2F94();

  return v2;
}

unint64_t sub_218D4A05C()
{
  result = qword_27CC11708;
  if (!qword_27CC11708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11708);
  }

  return result;
}

unint64_t sub_218D4A0B0()
{
  result = qword_27CC11710;
  if (!qword_27CC11710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11710);
  }

  return result;
}

unint64_t sub_218D4A118()
{
  result = qword_27CC11720;
  if (!qword_27CC11720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11720);
  }

  return result;
}

uint64_t sub_218D4A16C()
{

  sub_218D4B094(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_218D4A208(uint64_t a1)
{
  v2 = sub_219BE9414();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_219BDE294();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDEE04();
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDD944();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF2484();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 16);
  v50 = a1;
  v21(v20, a1, v17);
  v22 = (*(v18 + 88))(v20, v17);
  if (v22 == *MEMORY[0x277D33878])
  {
    (*(v18 + 96))(v20, v17);
    v23 = *v20;
    v24 = swift_allocObject();
    LOBYTE(v57[0]) = 0;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 32) = v23;
    *(v24 + 56) = 0;
    *(v24 + 63) = 0;
    *(v24 + 61) = 0;
    *(v24 + 64) = &unk_282A24200;
    v25 = v24 | 0x5000000000000000;
    *(v24 + 57) = 0;
  }

  else if (v22 == *MEMORY[0x277D33888])
  {
    (*(v18 + 96))(v20, v17);
    swift_unknownObjectRetain();
    sub_219BDEDE4();
    v26 = sub_219BDB954();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v28 = v52;
    v27 = v53;
    (*(v52 + 104))(v7, *MEMORY[0x277D2FF08], v53);
    sub_219BDD904();
    (*(v28 + 8))(v7, v27);
    sub_2187BC514(v10, sub_21873F65C);
    (*(v51 + 8))(v13, v11);
    sub_2187B2C48();
    v30 = v29;
    v31 = swift_allocBox();
    v33 = v32;
    v34 = *(v30 + 48);
    sub_2187B2DA0();
    v36 = *(v35 + 48);
    sub_218A38FE0(v16, v33);
    *(v33 + v36) = &unk_282A24200;
    swift_unknownObjectRelease();
    sub_2187BC514(v16, MEMORY[0x277D2FB40]);
    *(v33 + v34) = MEMORY[0x277D84F90];
    v25 = v31 | 2;
  }

  else
  {
    if (v22 != *MEMORY[0x277D33870])
    {
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0x206E776F6E6B6E55, 0xED00002065736163);
      sub_219BF7484();
      MEMORY[0x21CECC330](0xD000000000000049, 0x8000000219CF4D40);
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    (*(v18 + 96))(v20, v17);
    v37 = *(v20 + 1);
    v38 = [*v20 identifier];
    v39 = sub_219BF5414();
    v41 = v40;

    v42 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
    swift_unknownObjectRelease();
    v43 = swift_allocObject();
    *(v43 + 16) = v39;
    *(v43 + 24) = v41;
    *(v43 + 32) = v42;
    *(v43 + 40) = &unk_282A24200;
    *(v43 + 48) = 1;
    *(v43 + 56) = v37;
    *(v43 + 64) = 0u;
    *(v43 + 80) = 0u;
    v25 = v43 | 0x2000000000000004;
    *(v43 + 96) = -1;
  }

  v44 = v54;
  v59 = v25;
  sub_218D4B004(v54 + 24, v57);
  v45 = v58;
  if (v58)
  {
    __swift_project_boxed_opaque_existential_1(v57, v58);
    sub_2189EB264(v25);
    v45 = sub_219BE7144();
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    sub_2189EB264(v25);
    sub_218D4B094(v57);
  }

  sub_218D4B004(v44 + 24, v57);
  if (v58)
  {
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v46 = sub_219BE7154();
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    sub_218D4B094(v57);
    v46 = 0;
  }

  *v4 = v45;
  v4[1] = v46;
  v47 = v56;
  v48 = v55 + 104;
  (*(v55 + 104))(v4, *MEMORY[0x277D6E590], v56);
  sub_219BE6474();
  sub_218932F9C(v25);
  (*(v48 - 96))(v4, v47);
  return sub_218932F9C(v59);
}

uint64_t sub_218D4AADC(uint64_t a1)
{
  v3 = sub_219BF2CB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BF2634();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2484();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D33878])
  {
    (*(v11 + 96))(v13, v10);
    v15 = *v13;
    __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
    *v6 = v15;
    (*(v4 + 104))(v6, *MEMORY[0x277D33BA0], v3);
    v16 = v15;
    sub_219BF4794();
    (*(v4 + 8))(v6, v3);
    v17 = sub_219BF2614();

LABEL_7:
    (*(v29 + 8))(v9, v7);
    return v17 & 1;
  }

  if (v14 == *MEMORY[0x277D33888])
  {
    (*(v11 + 96))(v13, v10);
    v18 = *v13;
    __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
    *v6 = v18;
    (*(v4 + 104))(v6, *MEMORY[0x277D33BC0], v3);
    swift_unknownObjectRetain();
    sub_219BF4794();
    (*(v4 + 8))(v6, v3);
    v17 = sub_219BF2614();
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v28 = v7;
  if (v14 == *MEMORY[0x277D33870])
  {
    (*(v11 + 96))(v13, v10);
    v20 = *v13;
    v19 = *(v13 + 1);
    v21 = v1[11];
    v27[0] = v1[12];
    v27[1] = v20;
    __swift_project_boxed_opaque_existential_1(v1 + 8, v21);
    v22 = [v20 identifier];
    v23 = sub_219BF5414();
    v25 = v24;

    *v6 = v23;
    v6[1] = v25;
    v6[2] = v19;
    (*(v4 + 104))(v6, *MEMORY[0x277D33B88], v3);
    sub_219BF4794();
    (*(v4 + 8))(v6, v3);
    v17 = sub_219BF2614();
    swift_unknownObjectRelease();
    v7 = v28;
    goto LABEL_7;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0x206E776F6E6B6E55, 0xED00002065736163);
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000049, 0x8000000219CF4D40);
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218D4B004(uint64_t a1, uint64_t a2)
{
  sub_2187B1B90(0, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D4B094(uint64_t a1)
{
  sub_2187B1B90(0, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218D4B11C()
{
  v1 = [objc_msgSend(*v0 sourceChannel)];
  swift_unknownObjectRelease();
  v2 = sub_219BF5414();

  return v2;
}

uint64_t sub_218D4B1A8@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 publicationDate];
  sub_219BDBCA4();

  v4 = sub_219BDBD34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_218D4B23C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(a2 + 16);
  v5 = [*a1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  v9 = [v3 identifier];
  v10 = sub_219BF5414();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {

    goto LABEL_8;
  }

  v14 = sub_219BF78F4();

  result = 0;
  if (v14)
  {
LABEL_8:
    sub_2189666A0();
    return sub_219BF6DD4() & (v2 == v4);
  }

  return result;
}

unint64_t sub_218D4B35C()
{
  result = qword_280ECA890;
  if (!qword_280ECA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA890);
  }

  return result;
}

uint64_t sub_218D4B3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a3;
  v102 = a4;
  v94 = a1;
  v5 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  v92 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BF00D4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer(0);
  v96 = *(v103 - 8);
  v8 = MEMORY[0x28223BE20](v103);
  v10 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = v82 - v11;
  v97 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header(0);
  v12 = *(v97 - 8);
  v13 = MEMORY[0x28223BE20](v97);
  v86 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v87 = v82 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v82 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v82 - v21;
  MEMORY[0x28223BE20](v20);
  v85 = v82 - v23;
  v24 = sub_219BE9834();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v95 = v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v82 - v28;
  sub_218951E9C();
  v82[1] = a2;
  sub_219BE8184();
  v30 = v110;
  v99 = v112;
  v100 = v111;
  if (v113)
  {
    v83 = v25;
    v85 = v24;
    if (v113 != 1)
    {
LABEL_53:
      v110 = 0;
      v111 = 0xE000000000000000;
      sub_219BF7314();
      v108 = v110;
      v109 = v111;
      sub_219BE8184();
      v78 = v110;
      v79 = v111;
      v80 = v112;
      v81 = v113;
      v104 = v110;
      v105 = v111;
      v106 = v112;
      v107 = v113;
      sub_219BF7484();
      sub_218D4CA9C(v78, v79, v80, v81);
      MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE1A00);
      goto LABEL_54;
    }

    v39 = *(v110 + 16);
    v40 = MEMORY[0x277D84F90];
    v41 = v101;
    v84 = v110;
    if (v39)
    {
      v104 = MEMORY[0x277D84F90];
      sub_218C356B0(0, v39, 0);
      v42 = v104;
      v43 = v30 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v44 = *(v92 + 72);
      do
      {
        sub_218D4CAF0(v43, v19, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
        swift_storeEnumTagMultiPayload();
        v104 = v42;
        v46 = *(v42 + 16);
        v45 = *(v42 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_218C356B0(v45 > 1, v46 + 1, 1);
          v42 = v104;
        }

        *(v42 + 16) = v46 + 1;
        sub_218D4CB58(v19, v42 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v46, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
        v43 += v44;
        --v39;
      }

      while (v39);
      v41 = v101;
      v47 = v102;
      v40 = MEMORY[0x277D84F90];
    }

    else
    {
      v47 = v102;
      v42 = MEMORY[0x277D84F90];
    }

    v55 = v100;
    v56 = *(v100 + 16);
    if (v56)
    {
      v104 = v40;
      sub_218C35660(0, v56, 0);
      v57 = v104;
      v58 = *(type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0) - 8);
      v59 = v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v60 = *(v58 + 72);
      v61 = v96;
      do
      {
        sub_218D4CAF0(v59, v10, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
        swift_storeEnumTagMultiPayload();
        v104 = v57;
        v63 = *(v57 + 16);
        v62 = *(v57 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_218C35660(v62 > 1, v63 + 1, 1);
          v61 = v96;
          v57 = v104;
        }

        *(v57 + 16) = v63 + 1;
        sub_218D4CB58(v10, v57 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v63, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);
        v59 += v60;
        --v56;
      }

      while (v56);

      v41 = v101;
      v47 = v102;
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    v64 = v95;
    sub_219BE95F4();
    v65 = (*(v83 + 88))(v64, v85);
    if (v65 == *MEMORY[0x277D6E758])
    {

      v66 = sub_219BE9604();
      if ((v66 & 0x8000000000000000) == 0)
      {
        if (v66 < *(v42 + 16))
        {
          v67 = v87;
          sub_218D4CAF0(v42 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v66, v87, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);

          v68 = v86;
          sub_218D4CAF0(v67, v86, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v69 = v89;
            sub_218D4CB58(v68, v89, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
            v36 = sub_218F6B774(v69);
            sub_218D4CC24(v69, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
LABEL_41:
            v37 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header;
            v38 = v67;
            goto LABEL_42;
          }

          v73 = v90;
          v74 = v88;
          v76 = v91;
          (*(v90 + 32))(v88, v68, v91);
          __swift_project_boxed_opaque_existential_1((v98 + 32), *(v98 + 56));
          v36 = sub_219BF0234();
LABEL_40:
          (*(v73 + 8))(v74, v76);
          goto LABEL_41;
        }

        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if (v65 == *MEMORY[0x277D6E750])
    {
      v70 = sub_219BE9604();
      v71 = *(v42 + 16);

      v72 = v70 - v71;
      if (__OFSUB__(v70, v71))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if ((v72 & 0x8000000000000000) != 0)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v72 >= *(v57 + 16))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v54 = v93;
      sub_218D4CAF0(v57 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v72, v93, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);

      v36 = sub_218D4C0FC(v54, v41, v94, v47);
      goto LABEL_37;
    }
  }

  else
  {
    v31 = v102;
    sub_219BE95F4();
    v32 = (*(v25 + 88))(v29, v24);
    if (v32 == *MEMORY[0x277D6E758])
    {
      v33 = sub_219BE9604();
      if ((v33 & 0x8000000000000000) == 0)
      {
        if (v33 < *(v30 + 16))
        {
          v34 = v85;
          sub_218D4CAF0(v30 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v33, v85, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
          sub_218D4CAF0(v34, v22, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v35 = v89;
            sub_218D4CB58(v22, v89, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
            v36 = sub_218F6B774(v35);

            sub_218D4CC24(v35, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
            v37 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header;
            v38 = v34;
LABEL_42:
            sub_218D4CC24(v38, v37);
            return v36;
          }

          v73 = v90;
          v74 = v88;
          v75 = v22;
          v67 = v34;
          v76 = v91;
          (*(v90 + 32))(v88, v75, v91);
          __swift_project_boxed_opaque_existential_1((v98 + 32), *(v98 + 56));
          v36 = sub_219BF0234();

          goto LABEL_40;
        }

        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_44;
    }

    v48 = v100;
    v49 = v101;
    if (v32 == *MEMORY[0x277D6E750])
    {
      v50 = sub_219BE9604();
      v51 = *(v30 + 16);
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      if (v52)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if ((v53 & 0x8000000000000000) != 0)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v53 >= *(v48 + 16))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v54 = v93;
      sub_218D4CAF0(v48 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v53, v93, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);
      v36 = sub_218D4C0FC(v54, v49, v94, v31);

LABEL_37:
      v37 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer;
      v38 = v54;
      goto LABEL_42;
    }
  }

LABEL_54:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

id sub_218D4C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v42 = a4;
  v36 = a3;
  v40 = a1;
  sub_218951DB0();
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  v8 = MEMORY[0x28223BE20](v37);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = sub_219BF00D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4CAF0(v40, v18, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218D4CB58(v18, v11, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
    v40 = v4[9];
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v38;
    (*(v6 + 16))(&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v38);
    v21 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    (*(v6 + 32))(v22 + v21, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    v23 = v39;
    sub_218D4CAF0(v11, v39, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_218D4CC24(v23, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      sub_2188074E4();
      v24 = sub_219BF6414();
      sub_2186EBFA8(&qword_27CC0FD48, sub_2188074E4);
    }

    else
    {
      sub_2187DE694();
      v27 = *(v26 + 48);
      sub_218807484();

      v24 = sub_219BF6414();
      sub_2186EBFA8(&qword_27CC0FD50, sub_218807484);
      v28 = sub_219BE9CC4();
      (*(*(v28 - 8) + 8))(v23 + v27, v28);
      v29 = sub_219BE8434();
      (*(*(v29 - 8) + 8))(v23, v29);
    }

    swift_getObjectType();
    v25 = v24;
    v30 = v11;
    sub_218F6C1C4(v25, v11, sub_218D4CBC0, v22);

    v43 = v25;
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v31;
    v33[3] = v32;
    v33[4] = sub_218D4CBC0;
    v33[5] = v22;

    sub_219BE5834();

    sub_218D4CC24(v30, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    v25 = sub_219BF0234();
    (*(v13 + 8))(v15, v12);
  }

  return v25;
}

uint64_t sub_218D4C764()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_218CA01F0();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218D4C8F4()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MagazineFeedLayoutModel();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  sub_218C3ED68();
  sub_219BE75E4();
  (*(v2 + 32))(v4, v7, v1);
  __swift_project_boxed_opaque_existential_1((v8 + 32), *(v8 + 56));
  v9 = sub_219BF0224();
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_218D4CA9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_218D4CAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D4CB58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D4CBC0()
{
  sub_218951DB0();

  return sub_218D4C764();
}

uint64_t sub_218D4CC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218D4CC84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a2;
  v6 = sub_219BE1444();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BDFEE4();
  v30 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4D0C0();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDCC14();
  MEMORY[0x28223BE20](v15);
  (*(v17 + 16))(&v29 - v16, a1, v15);
  if (swift_dynamicCast())
  {
    (*(v12 + 8))(v14, v11);
    v18 = sub_219BDCC04();
    v19 = sub_219BDD084();
    v21 = v20;

    if (!v3)
    {
      sub_218D4D154(&qword_27CC11730, MEMORY[0x277D2E1E0]);
      v22 = v35;
      sub_219BE1974();
      v24 = v31;
      sub_219BDFED4();
      v25 = sub_219BE1434();
      v27 = v26;
      sub_2186C6190(v19, v21);
      (*(v32 + 8))(v24, v33);
      (*(v30 + 8))(v9, v22);
      *a3 = v25;
      a3[1] = v27;
      v28 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v28 - 8) + 56))(a3, 0, 1, v28);
    }
  }

  else
  {
    v23 = type metadata accessor for EngagementEvent();
    (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
  }
}

void sub_218D4D0C0()
{
  if (!qword_280EE8F98)
  {
    sub_219BDFEF4();
    sub_218D4D154(&unk_280EE8510, MEMORY[0x277D2E1F0]);
    v0 = sub_219BDCC14();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8F98);
    }
  }
}

uint64_t sub_218D4D154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218D4D19C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioHistoryFeedGroupKnobs();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218700938();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v18 = type metadata accessor for AudioHistoryFeedGroupConfig();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4D544(a1, v20, type metadata accessor for AudioHistoryFeedGroupConfig);
  v21 = *(v12 + 32);
  v21(v17, v20, v11);
  (*(v12 + 16))(v15, v17, v11);
  sub_218D4D544(a2, v9, type metadata accessor for AudioHistoryFeedGroupKnobs);
  v22 = v9;
  v23 = v6;
  sub_218D4D5AC(v22, v6);
  sub_218718690(v27 + 16, v28);
  type metadata accessor for ArticleListAudioHistoryFeedGroupEmitter();
  v24 = swift_allocObject();
  v21((v24 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_config), v15, v11);
  sub_218D4D5AC(v23, v24 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_knobs);
  sub_2186CB1F0(v28, v24 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_formatService);
  *&v28[0] = v24;
  sub_218D4D610();
  swift_allocObject();
  sub_218700508(&qword_27CC11740, type metadata accessor for ArticleListAudioHistoryFeedGroupEmitter);
  v25 = sub_219BEDF84();
  (*(v12 + 8))(v17, v11);
  return v25;
}

uint64_t sub_218D4D544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D4D5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218D4D610()
{
  if (!qword_27CC11738)
  {
    type metadata accessor for AudioHistoryFeedServiceConfig();
    sub_218700508(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);
    v0 = sub_219BEDFA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC11738);
    }
  }
}

uint64_t type metadata accessor for MagazineGridItemTraitChangeModifier()
{
  result = qword_27CC11748;
  if (!qword_27CC11748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D4D718()
{
  sub_21897BFEC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_218D4D7A0()
{
  result = qword_27CC11758;
  if (!qword_27CC11758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11758);
  }

  return result;
}

uint64_t sub_218D4D7F4(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    sub_219BF0744();
    sub_218D4F4D8(&qword_27CC117A0, MEMORY[0x277D32F30]);
    sub_219BEE304();
  }

  sub_218D4F328();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218D4D8C0(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    sub_219BF0444();
    sub_218D4F4D8(&qword_27CC11790, MEMORY[0x277D32CB0]);
    sub_219BEE304();
  }

  sub_218D4F27C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218D4D98C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v54 = a3;
  v55 = a2;
  v61 = a1;
  sub_218D4F064(0, &qword_27CC11768, MEMORY[0x277D6DF88]);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v46 - v5;
  sub_218D4F064(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v7 = v6;
  v59 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v46 - v8;
  sub_218D4F41C(0, &qword_27CC11770, sub_21897BFEC);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  sub_21897BFEC();
  v13 = v12;
  v60 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v46 - v16;
  sub_2189E97D4();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4F064(0, &qword_27CC0AE58, MEMORY[0x277D6D710]);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20);
  v56 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v46 - v25;
  v27 = v3;
  sub_219BE5F84();
  v50 = v7;
  sub_219BEB244();

  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    return sub_218D4F3BC(v19, sub_2189E97D4);
  }

  (*(v22 + 32))(v26, v19, v21);
  sub_219BE5F84();
  sub_219BE6A64();

  v29 = v60;
  if ((*(v60 + 48))(v11, 1, v13) == 1)
  {
    (*(v22 + 8))(v26, v21);
    return sub_218D4F124(v11, &qword_27CC11770, sub_21897BFEC);
  }

  else
  {
    v30 = *(v29 + 32);
    v48 = v13;
    v30(v57, v11, v13);
    sub_218D4E8D4(v27, v58);
    (*(v22 + 16))(v56, v26, v21);
    sub_219BE69E4();
    v32 = v49;
    v31 = v50;
    v47 = *(v59 + 16);
    v47(v49, v61, v50);
    sub_219BEB234();
    type metadata accessor for MagazineGridItemModel();
    sub_218D4F180();
    sub_21895164C();
    sub_218D4F4D8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    sub_219BE78F4();
    __swift_project_boxed_opaque_existential_1(v62, v62[3]);
    if (sub_219BE6E54())
    {
      v33 = MEMORY[0x277D6DF80];
      v34 = v51;
    }

    else
    {
      sub_218D4F1D4();
      v36 = *(v35 + 48);
      v37 = *(v35 + 64);
      v38 = v51;
      v47(v51, v32, v31);
      v34 = v38;
      sub_218718690(v62, &v38[v36]);
      v39 = *MEMORY[0x277D6D868];
      v40 = sub_219BE6DF4();
      (*(*(v40 - 8) + 104))(&v38[v37], v39, v40);
      v33 = MEMORY[0x277D6DF78];
    }

    v42 = v52;
    v41 = v53;
    (*(v52 + 104))(v34, *v33, v53);
    v55(v34);
    (*(v42 + 8))(v34, v41);
    (*(v59 + 8))(v32, v31);
    v43 = *(v22 + 8);
    v43(v56, v21);
    v44 = *(v60 + 8);
    v45 = v48;
    v44(v58, v48);
    v44(v57, v45);
    v43(v26, v21);
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }
}

uint64_t sub_218D4E0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  sub_218D4F41C(0, &qword_280E90EB0, MEMORY[0x277D32F30]);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - v5;
  v6 = sub_219BF0744();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  sub_218D4F328();
  MEMORY[0x28223BE20](v22);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4F470(a2, v24, sub_218D4F328);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *(v7 + 32);
      v26(v13, v24, v6);
      (*(v7 + 16))(v10, v32, v6);
      sub_218D4F4D8(&qword_280E90EB8, MEMORY[0x277D32F30]);
      if (sub_219BF7124())
      {
        v27 = v31;
        sub_219BF7104();
        sub_218D4F124(v27, &qword_280E90EB0, MEMORY[0x277D32F30]);
      }

      (*(v7 + 8))(v13, v6);
      return (v26)(v33, v10, v6);
    }

    else
    {
      return (*(v7 + 16))(v33, v32, v6);
    }
  }

  else
  {
    (*(v7 + 32))(v21, v24, v6);
    v29 = *(v7 + 16);
    v29(v19, v32, v6);
    v29(v16, v21, v6);
    sub_218D4F4D8(&qword_280E90EB8, MEMORY[0x277D32F30]);
    sub_219BF70F4();
    return (*(v7 + 8))(v21, v6);
  }
}

uint64_t sub_218D4E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  sub_218D4F41C(0, &qword_27CC0E9F8, MEMORY[0x277D32CB0]);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - v5;
  v6 = sub_219BF0444();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  sub_218D4F27C();
  MEMORY[0x28223BE20](v22);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4F470(a2, v24, sub_218D4F27C);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *(v7 + 32);
      v26(v13, v24, v6);
      (*(v7 + 16))(v10, v32, v6);
      sub_218D4F4D8(&qword_280E90F40, MEMORY[0x277D32CB0]);
      if (sub_219BF7124())
      {
        v27 = v31;
        sub_219BF7104();
        sub_218D4F124(v27, &qword_27CC0E9F8, MEMORY[0x277D32CB0]);
      }

      (*(v7 + 8))(v13, v6);
      return (v26)(v33, v10, v6);
    }

    else
    {
      return (*(v7 + 16))(v33, v32, v6);
    }
  }

  else
  {
    (*(v7 + 32))(v21, v24, v6);
    v29 = *(v7 + 16);
    v29(v19, v32, v6);
    v29(v16, v21, v6);
    sub_218D4F4D8(&qword_280E90F40, MEMORY[0x277D32CB0]);
    sub_219BF70F4();
    return (*(v7 + 8))(v21, v6);
  }
}

uint64_t sub_218D4E8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  sub_218D4F27C();
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF0444();
  *&v75 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  *&v74 = &v71 - v9;
  sub_218D4F328();
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0744();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v19 = type metadata accessor for MagazineGridItemModel();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v71 - v23;
  sub_21897BFEC();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v79[0] = *v24;
    *(v79 + 9) = *(v24 + 9);
    sub_2189E96A0();
    v41 = v40;
    v42 = *(v40 + 48);
    v43 = &v24[*(v40 + 64)];
    v44 = *(v43 + 4);
    v76 = *(v43 + 5);
    v45 = *(v13 + 32);
    v46 = *v43;
    v74 = *(v43 + 1);
    v75 = v46;
    v45(v18, &v24[v42], v12);
    v47 = *(a1 + *(type metadata accessor for MagazineGridItemTraitChangeModifier() + 20));
    v35 = v77;
    sub_218D4D7F4(v47);
    sub_218D4E0DC(v18, v35, v16);
    v48 = *(v41 + 48);
    v49 = &v22[*(v41 + 64)];
    *v22 = v79[0];
    *(v22 + 9) = *(v79 + 9);
    (*(v13 + 16))(&v22[v48], v16, v12);
    v50 = v74;
    *v49 = v75;
    *(v49 + 1) = v50;
    v51 = v76;
    *(v49 + 4) = v44;
    *(v49 + 5) = v51;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v79[0] = *v24;
    *(v79 + 9) = *(v24 + 9);
    v74 = *(v24 + 2);
    v26 = *(v24 + 6);
    LODWORD(v73) = v24[56];
    sub_2189E9570(0);
    v28 = v27;
    v29 = *(v27 + 64);
    v30 = &v24[*(v27 + 80)];
    v31 = *(v30 + 5);
    v76 = *(v30 + 4);
    *&v75 = v31;
    v32 = *(v13 + 32);
    v33 = *v30;
    v71 = *(v30 + 1);
    v72 = v33;
    v32(v18, &v24[v29], v12);
    v34 = *(a1 + *(type metadata accessor for MagazineGridItemTraitChangeModifier() + 20));
    v35 = v77;
    sub_218D4D7F4(v34);
    sub_218D4E0DC(v18, v35, v16);
    v36 = *(v28 + 64);
    v37 = &v22[*(v28 + 80)];
    *v22 = v79[0];
    *(v22 + 9) = *(v79 + 9);
    *(v22 + 2) = v74;
    *(v22 + 6) = v26;
    v22[56] = v73;
    (*(v13 + 16))(&v22[v36], v16, v12);
    v38 = v71;
    *v37 = v72;
    *(v37 + 1) = v38;
    v39 = v75;
    *(v37 + 4) = v76;
    *(v37 + 5) = v39;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    sub_218D4F4D8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    sub_219BE5FB4();
    v52 = *(v13 + 8);
    v52(v16, v12);
    sub_218D4F3BC(v35, sub_218D4F328);
    return (v52)(v18, v12);
  }

  v54 = *v24;
  sub_2189E93F4();
  v56 = v55;
  v57 = *(v55 + 48);
  v58 = &v24[*(v55 + 64)];
  v59 = *(v58 + 5);
  v77 = *(v58 + 4);
  v73 = v59;
  v60 = v75;
  v61 = *(v75 + 32);
  v62 = *v58;
  v71 = *(v58 + 1);
  v72 = v62;
  v63 = v74;
  v61(v74, &v24[v57], v5);
  v64 = type metadata accessor for MagazineGridItemTraitChangeModifier();
  v65 = v76;
  sub_218D4D8C0(*(a1 + *(v64 + 20)));
  sub_218D4E4D8(v63, v65, v8);
  v66 = *(v56 + 48);
  v67 = &v22[*(v56 + 64)];
  *v22 = v54;
  (*(v60 + 16))(&v22[v66], v8, v5);
  v68 = v71;
  *v67 = v72;
  *(v67 + 1) = v68;
  v69 = v73;
  *(v67 + 4) = v77;
  *(v67 + 5) = v69;
  swift_storeEnumTagMultiPayload();
  sub_218D4F4D8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
  sub_219BE5FB4();
  v70 = *(v60 + 8);
  v70(v8, v5);
  sub_218D4F3BC(v65, sub_218D4F27C);
  return (v70)(v63, v5);
}

uint64_t sub_218D4EF68(uint64_t a1)
{
  v2 = sub_218D4F4D8(qword_27CC117A8, type metadata accessor for MagazineGridItemTraitChangeModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_218D4F064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel();
    v8[2] = sub_21895164C();
    v8[3] = sub_218D4F4D8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218D4F124(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218D4F41C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218D4F180()
{
  result = qword_27CC11778;
  if (!qword_27CC11778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11778);
  }

  return result;
}

void sub_218D4F1D4()
{
  if (!qword_27CC11780)
  {
    sub_218D4F064(255, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
    sub_218A7BBF4();
    sub_219BE6DF4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC11780);
    }
  }
}

void sub_218D4F27C()
{
  if (!qword_27CC11788)
  {
    sub_219BF0444();
    sub_218D4F4D8(&qword_27CC11790, MEMORY[0x277D32CB0]);
    v0 = type metadata accessor for MagazineGridItemTraitChangeModifier.Modification();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC11788);
    }
  }
}

void sub_218D4F328()
{
  if (!qword_27CC11798)
  {
    sub_219BF0744();
    sub_218D4F4D8(&qword_27CC117A0, MEMORY[0x277D32F30]);
    v0 = type metadata accessor for MagazineGridItemTraitChangeModifier.Modification();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC11798);
    }
  }
}

uint64_t sub_218D4F3BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218D4F41C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218D4F470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D4F4D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218D4F528()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218D4F58C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_218D4F698(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_218D4F844(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v180 = a3;
  v181 = a2;
  sub_218D51D18(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v179 = v3;
  v178 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v177 = &v176 - v4;
  v206 = type metadata accessor for MagazineFeedSectionDescriptor();
  MEMORY[0x28223BE20](v206);
  v200 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_219BDBD64();
  v231 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v198 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v205);
  v197 = (&v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218953870();
  v196 = v8;
  v224 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v195 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698();
  v194 = v10;
  v220 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v193 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v192 = &v176 - v13;
  v14 = type metadata accessor for MagazineFeedGapLocation(0);
  MEMORY[0x28223BE20](v14 - 8);
  v204 = (&v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v244 = sub_219BF0BD4();
  v242 = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v17 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0();
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v214 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v235 = &v176 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v234 = &v176 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v191 = &v176 - v26;
  MEMORY[0x28223BE20](v25);
  v190 = &v176 - v27;
  sub_218951DB0();
  v29 = v28;
  v237 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v212 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v223 = &v176 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v222 = &v176 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v183 = &v176 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v189 = &v176 - v39;
  MEMORY[0x28223BE20](v38);
  v182 = &v176 - v40;
  v41 = type metadata accessor for MagazineFeedGroup();
  v201 = *(v41 - 8);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v225 = &v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v233 = &v176 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v232 = &v176 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v210 = &v176 - v49;
  MEMORY[0x28223BE20](v48);
  v209 = &v176 - v50;
  v221 = type metadata accessor for MagazineFeedExpandResult.Result(0);
  MEMORY[0x28223BE20](v221);
  v229 = (&v176 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v230 = type metadata accessor for MagazineFeedExpandResult(0);
  v216 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v53 = &v176 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D521BC(0, &qword_280E8E940, type metadata accessor for MagazineFeedExpandResult);
  v55 = v54;
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v215 = (&v176 - v57);
  sub_218D51E0C();
  v59 = MEMORY[0x28223BE20](v58 - 8);
  v61 = &v176 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v228 = (&v176 - v62);
  sub_218D51E90();
  MEMORY[0x28223BE20](v63 - 8);
  sub_218D51D18(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  v239 = v64;
  v176 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v66 = &v176 - v65;
  v67 = sub_2186EBFF0(&qword_280EE5950, sub_218951DB0);
  v68 = sub_2186EBFF0(&qword_280EE5960, sub_218951DB0);
  v69 = v67;
  v70 = v61;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v29, v69, v68);
  v71 = sub_2186EBFF0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
  v72 = sub_2186EBFF0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
  v238 = v66;
  v73 = v29;
  v203 = v71;
  v202 = v72;
  result = sub_219BEB2D4();
  v75 = 0;
  v76 = *v245;
  v243 = v245 + 1;
  v77 = *(v76 + 16);
  v227 = (v56 + 56);
  v226 = (v56 + 48);
  v241 = (v237 + 6);
  ++v242;
  v236 = (v237 + 4);
  ++v237;
  v188 = *MEMORY[0x277D33090];
  v187 = (v231 + 8);
  v186 = (v224 + 8);
  v185 = (v220 + 16);
  v184 = (v220 + 8);
  v240 = v73;
  v217 = v53;
  v219 = v55;
  v220 = v70;
  v213 = v76;
  v224 = v77;
  while (v75 == v77)
  {
    v78 = 1;
    v231 = v77;
    v79 = v229;
    v80 = v230;
LABEL_10:
    v85 = v228;
    (*v227)(v70, v78, 1, v55);
    sub_218D51FEC(v70, v85, sub_218D51E0C);
    if ((*v226)(v85, 1, v55) == 1)
    {
      v174 = v177;
      v175 = v238;
      sub_219BE85C4();
      v181(v174);
      (*(v178 + 8))(v174, v179);
      return (*(v176 + 8))(v175, v239);
    }

    v86 = *v85;
    sub_218D51FEC(v85 + *(v55 + 48), v53, type metadata accessor for MagazineFeedExpandResult);
    sub_218D5222C(&v53[*(v80 + 20)], v79, type metadata accessor for MagazineFeedExpandResult.Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v87 = v76;
      sub_218D52054();
      v88 = v225;
      sub_218D51FEC(v79, v225, type metadata accessor for MagazineFeedGroup);
      __swift_project_boxed_opaque_existential_1(v243, v245[4]);
      v89 = *&v53[*(v80 + 24)];
      type metadata accessor for TodayFeedServiceConfig();
      sub_2186EBFF0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      sub_219BEE7A4();
      v90 = v88;
      v91 = v214;
      sub_21997FEC4(v90, v89, v17, v214);
      (*v242)(v17, v244);
      if ((*v241)(v91, 1, v73) == 1)
      {
        sub_218D520C8(v91, sub_218D51CC0);
      }

      else
      {
        v103 = v212;
        (*v236)(v212, v91, v73);
        sub_219BEB1E4();
        (*v237)(v103, v73);
      }

      sub_219BEEFF4();
      sub_219BEEFE4();
      v104 = sub_219BEEFC4();

      v76 = v87;
      if (v104)
      {
        *(&v247 + 1) = sub_219BEDC74();
        *&v246 = v104;
      }

      else
      {
        v246 = 0u;
        v247 = 0u;
      }

      v55 = v219;
      v70 = v220;
      sub_219BEB2C4();

      sub_218D520C8(v225, type metadata accessor for MagazineFeedGroup);
      result = sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);
LABEL_4:
      v77 = v224;
      v75 = v231;
    }

    else
    {
      v218 = v86;
      v92 = *v79;
      v93 = *v79 >> 61;
      if (v93 <= 1)
      {
        if (v93)
        {
          v123 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v124 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v211 = v92 & 0x1FFFFFFFFFFFFFFFLL;
          v125 = *(v123 + 16);
          if (v125)
          {
            v126 = *&v217[*(v230 + 24)];
            v127 = v123 + ((*(v201 + 80) + 32) & ~*(v201 + 80));
            v128 = *(v201 + 72);
            do
            {
              v130 = v232;
              sub_218D5222C(v127, v232, type metadata accessor for MagazineFeedGroup);
              __swift_project_boxed_opaque_existential_1(v243, v245[4]);
              type metadata accessor for MagazineFeedServiceConfig();
              sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
              sub_219BEE7A4();
              v131 = v234;
              sub_21997FEC4(v130, v126, v17, v234);
              sub_218D520C8(v130, type metadata accessor for MagazineFeedGroup);
              (*v242)(v17, v244);
              v132 = v240;
              if ((*v241)(v131, 1, v240) == 1)
              {
                sub_218D520C8(v131, sub_218D51CC0);
              }

              else
              {
                v129 = v222;
                (*v236)(v222, v131, v132);
                sub_219BEB1E4();
                (*v237)(v129, v132);
              }

              v127 += v128;
              --v125;
            }

            while (v125);
          }

          v76 = v213;
          if (v218 == *(v213 + 16) - 1)
          {
            v133 = swift_allocObject();
            sub_218D52128();
            swift_allocObject();
            v218 = v124 & 0x7FFFFFFFFFFFFFFFLL;

            *(v133 + 16) = sub_219BEE874();
            v134 = v204;
            *v204 = v133;
            sub_2186EBE2C();
            v136 = v135;
            v137 = *(v135 - 8);
            (*(v137 + 104))(v134, v188, v135);
            (*(v137 + 56))(v134, 0, 1, v136);
            sub_2186EBFF0(&qword_280EE5BB8, sub_218953870);
            sub_2186EBFF0(&unk_280EE5BC0, sub_218953870);
            v138 = v192;
            v139 = v196;
            sub_219BE2444();
            sub_218D521BC(0, &qword_280E8F9A0, type metadata accessor for MagazineFeedGapLocation);
            v141 = *(v140 + 48);
            v142 = v198;
            sub_219BDBD54();
            v143 = sub_219BDBD44();
            v145 = v144;
            (*v187)(v142, v199);
            v146 = v197;
            *v197 = v143;
            v146[1] = v145;
            sub_218D5222C(v134, v146 + v141, type metadata accessor for MagazineFeedGapLocation);
            swift_storeEnumTagMultiPayload();
            v147 = v195;
            sub_219BE5FB4();
            v148 = v194;
            sub_219BE2404();
            (*v186)(v147, v139);
            swift_storeEnumTagMultiPayload();
            (*v185)(v193, v138, v148);
            v149 = v189;
            v76 = v213;
            sub_219BE6924();
            (*v184)(v138, v148);
            sub_218D520C8(v204, type metadata accessor for MagazineFeedGapLocation);
            sub_219BEB1E4();
            v73 = v240;
            (*v237)(v149, v240);
          }

          else
          {
            v73 = v240;
          }

          sub_219BEEFF4();

          sub_219BEEFE4();
          type metadata accessor for MagazineFeedServiceConfig();
          sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
          v173 = sub_219BEEFC4();

          v53 = v217;
          v55 = v219;
          if (v173)
          {
            *(&v247 + 1) = sub_219BEDC74();
            *&v246 = v173;
          }

          else
          {
            v246 = 0u;
            v247 = 0u;
          }

          v70 = v220;
          v77 = v224;
          sub_219BEB2C4();

          sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);
        }

        else
        {
          sub_218D52294();
          v106 = v105;
          v107 = swift_projectBox();
          v108 = *(v107 + *(v106 + 48));
          v109 = v209;
          sub_218D5222C(v107, v209, type metadata accessor for MagazineFeedGroup);
          __swift_project_boxed_opaque_existential_1(v243, v245[4]);
          v110 = *&v217[*(v80 + 24)];
          v111 = type metadata accessor for MagazineFeedServiceConfig();
          v112 = sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);

          v211 = v108;
          v73 = v240;
          v208 = v111;
          v207 = v112;
          sub_219BEE7A4();
          v113 = v190;
          sub_21997FEC4(v109, v110, v17, v190);
          (*v242)(v17, v244);
          if ((*v241)(v113, 1, v73) == 1)
          {
            sub_218D520C8(v113, sub_218D51CC0);
          }

          else
          {
            v152 = v182;
            (*v236)(v182, v113, v73);
            sub_219BEB1E4();
            (*v237)(v152, v73);
          }

          v76 = v213;
          if (v218 == *(v213 + 16) - 1)
          {
            v153 = swift_allocObject();
            sub_218D52128();
            swift_allocObject();

            *(v153 + 16) = sub_219BEE874();
            v154 = v204;
            *v204 = v153;
            sub_2186EBE2C();
            v156 = v155;
            v157 = *(v155 - 8);
            (*(v157 + 104))(v154, v188, v155);
            (*(v157 + 56))(v154, 0, 1, v156);
            sub_2186EBFF0(&qword_280EE5BB8, sub_218953870);
            sub_2186EBFF0(&unk_280EE5BC0, sub_218953870);
            v158 = v192;
            v159 = v196;
            sub_219BE2444();
            sub_218D521BC(0, &qword_280E8F9A0, type metadata accessor for MagazineFeedGapLocation);
            v218 = v92;
            v161 = *(v160 + 48);
            v162 = v198;
            sub_219BDBD54();
            v163 = sub_219BDBD44();
            v165 = v164;
            (*v187)(v162, v199);
            v166 = v197;
            *v197 = v163;
            v166[1] = v165;
            sub_218D5222C(v154, v166 + v161, type metadata accessor for MagazineFeedGapLocation);
            swift_storeEnumTagMultiPayload();
            v167 = v195;
            sub_219BE5FB4();
            v168 = v194;
            sub_219BE2404();
            (*v186)(v167, v159);
            swift_storeEnumTagMultiPayload();
            (*v185)(v193, v158, v168);
            v169 = v189;
            v70 = v220;
            v76 = v213;
            sub_219BE6924();
            v170 = v158;
            v73 = v240;
            (*v184)(v170, v168);
            v171 = v154;
            v55 = v219;
            sub_218D520C8(v171, type metadata accessor for MagazineFeedGapLocation);
            sub_219BEB1E4();
            (*v237)(v169, v73);
          }

          sub_219BEEFF4();
          sub_219BEEFE4();
          v172 = sub_219BEEFC4();

          v53 = v217;
          if (v172)
          {
            *(&v247 + 1) = sub_219BEDC74();
            *&v246 = v172;
          }

          else
          {
            v246 = 0u;
            v247 = 0u;
          }

          v77 = v224;
          sub_219BEB2C4();

          sub_218D520C8(v209, type metadata accessor for MagazineFeedGroup);
          sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);
        }

        v75 = v231;
      }

      else
      {
        if (v93 == 2)
        {
          sub_218D52294();
          v114 = swift_projectBox();
          v115 = v53;
          v116 = v210;
          sub_218D5222C(v114, v210, type metadata accessor for MagazineFeedGroup);
          __swift_project_boxed_opaque_existential_1(v243, v245[4]);
          v117 = *&v115[*(v80 + 24)];
          v118 = type metadata accessor for MagazineFeedServiceConfig();
          sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);

          v218 = v118;
          sub_219BEE7A4();
          v119 = v191;
          sub_21997FEC4(v116, v117, v17, v191);
          v120 = v119;
          v73 = v240;
          (*v242)(v17, v244);
          if ((*v241)(v120, 1, v73) == 1)
          {
            sub_218D520C8(v120, sub_218D51CC0);
          }

          else
          {
            v150 = v183;
            (*v236)(v183, v120, v73);
            sub_219BEB1E4();
            (*v237)(v150, v73);
          }

          sub_219BEEFF4();
          sub_219BEEFE4();
          v151 = sub_219BEEFC4();

          v53 = v217;
          if (v151)
          {
            *(&v247 + 1) = sub_219BEDC74();
            *&v246 = v151;
          }

          else
          {
            v246 = 0u;
            v247 = 0u;
          }

          v70 = v220;
          sub_219BEB2C4();

          sub_218D520C8(v210, type metadata accessor for MagazineFeedGroup);
          sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);
          goto LABEL_58;
        }

        if (v93 != 3)
        {
          sub_219BEEFF4();

          sub_219BEEFE4();
          type metadata accessor for MagazineFeedServiceConfig();
          sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
          v121 = sub_219BEEFC4();

          if (v121)
          {
            *(&v247 + 1) = sub_219BEDC74();
            *&v246 = v121;
          }

          else
          {
            v246 = 0u;
            v247 = 0u;
          }

          v70 = v220;
          sub_219BEB2C4();

          sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);
LABEL_58:

          goto LABEL_4;
        }

        v94 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v218 = v92 & 0x1FFFFFFFFFFFFFFFLL;
        v95 = *(v94 + 16);
        if (v95)
        {
          v96 = *&v217[*(v230 + 24)];
          v97 = v94 + ((*(v201 + 80) + 32) & ~*(v201 + 80));
          v98 = *(v201 + 72);
          do
          {
            v100 = v233;
            sub_218D5222C(v97, v233, type metadata accessor for MagazineFeedGroup);
            __swift_project_boxed_opaque_existential_1(v243, v245[4]);
            type metadata accessor for MagazineFeedServiceConfig();
            sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
            sub_219BEE7A4();
            v101 = v235;
            sub_21997FEC4(v100, v96, v17, v235);
            sub_218D520C8(v100, type metadata accessor for MagazineFeedGroup);
            (*v242)(v17, v244);
            v102 = v240;
            if ((*v241)(v101, 1, v240) == 1)
            {
              sub_218D520C8(v101, sub_218D51CC0);
            }

            else
            {
              v99 = v223;
              (*v236)(v223, v101, v102);
              sub_219BEB1E4();
              (*v237)(v99, v102);
            }

            v97 += v98;
            --v95;
          }

          while (v95);
        }

        sub_219BEEFF4();

        sub_219BEEFE4();
        type metadata accessor for MagazineFeedServiceConfig();
        sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
        v122 = sub_219BEEFC4();

        if (v122)
        {
          *(&v247 + 1) = sub_219BEDC74();
          *&v246 = v122;
        }

        else
        {
          v246 = 0u;
          v247 = 0u;
        }

        v73 = v240;
        v53 = v217;
        v55 = v219;
        v76 = v213;
        v77 = v224;
        sub_219BEB2C4();

        sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);

        v70 = v220;
        v75 = v231;
      }
    }
  }

  if ((v75 & 0x8000000000000000) == 0)
  {
    v80 = v230;
    if (v75 >= *(v76 + 16))
    {
      goto LABEL_68;
    }

    v81 = v75 + 1;
    v82 = v76 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v75;
    v83 = *(v55 + 48);
    v84 = v215;
    *v215 = v75;
    sub_218D5222C(v82, v84 + v83, type metadata accessor for MagazineFeedExpandResult);
    sub_218D51F5C(v84, v70);
    v78 = 0;
    v231 = v81;
    v79 = v229;
    goto LABEL_10;
  }

  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_218D51B9C(uint64_t a1)
{
  v2 = sub_218BB7C44();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218D51BDC()
{
  result = qword_280E9B3C0;
  if (!qword_280E9B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B3C0);
  }

  return result;
}

void sub_218D51CC0()
{
  if (!qword_280EE5920)
  {
    sub_218951DB0();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5920);
    }
  }
}

void sub_218D51D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EBFF0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_2186EBFF0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218D51E0C()
{
  if (!qword_280E8E938)
  {
    sub_218D521BC(255, &qword_280E8E940, type metadata accessor for MagazineFeedExpandResult);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8E938);
    }
  }
}

void sub_218D51E90()
{
  if (!qword_280EE74C0)
  {
    sub_218951DB0();
    sub_2186EBFF0(&qword_280EE5950, sub_218951DB0);
    sub_2186EBFF0(&qword_280EE5960, sub_218951DB0);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE74C0);
    }
  }
}

uint64_t sub_218D51F5C(uint64_t a1, uint64_t a2)
{
  sub_218D521BC(0, &qword_280E8E940, type metadata accessor for MagazineFeedExpandResult);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D51FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218D52054()
{
  if (!qword_280ED5D18[0])
  {
    type metadata accessor for MagazineFeedGroup();
    sub_218ADF8DC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280ED5D18);
    }
  }
}

uint64_t sub_218D520C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218D52128()
{
  if (!qword_280E91AD0)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v0 = sub_219BEE884();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91AD0);
    }
  }
}

void sub_218D521BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218D5222C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218D52294()
{
  if (!qword_280ED5D10)
  {
    type metadata accessor for MagazineFeedGroup();
    sub_218D52304();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ED5D10);
    }
  }
}

void sub_218D52304()
{
  if (!qword_280E91B00)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v0 = sub_219BEE864();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91B00);
    }
  }
}

uint64_t type metadata accessor for IntroToSportsTodayFeedGroupKnobs()
{
  result = qword_280EA6618;
  if (!qword_280EA6618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D5241C()
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
                sub_218D528A0();
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

void sub_218D525A0()
{
  if (!qword_280E914F0)
  {
    sub_218D52624();
    sub_218D52678();
    sub_218D526CC();
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E914F0);
    }
  }
}

unint64_t sub_218D52624()
{
  result = qword_280ECCE78;
  if (!qword_280ECCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCE78);
  }

  return result;
}

unint64_t sub_218D52678()
{
  result = qword_280ECCE88;
  if (!qword_280ECCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCE88);
  }

  return result;
}

unint64_t sub_218D526CC()
{
  result = qword_280ECCE80;
  if (!qword_280ECCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCE80);
  }

  return result;
}

void sub_218D52720()
{
  if (!qword_280E914D0)
  {
    sub_218D527A4();
    sub_218D527F8();
    sub_218D5284C();
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E914D0);
    }
  }
}

unint64_t sub_218D527A4()
{
  result = qword_280EBCDE0;
  if (!qword_280EBCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDE0);
  }

  return result;
}

unint64_t sub_218D527F8()
{
  result = qword_280EBCDF0;
  if (!qword_280EBCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDF0);
  }

  return result;
}

unint64_t sub_218D5284C()
{
  result = qword_280EBCDE8;
  if (!qword_280EBCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDE8);
  }

  return result;
}

void sub_218D528A0()
{
  if (!qword_280E914A0)
  {
    sub_218D52924();
    sub_218D52978();
    sub_218D0EB9C();
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E914A0);
    }
  }
}

unint64_t sub_218D52924()
{
  result = qword_280EAC350;
  if (!qword_280EAC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC350);
  }

  return result;
}

unint64_t sub_218D52978()
{
  result = qword_280EAC370[0];
  if (!qword_280EAC370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAC370);
  }

  return result;
}

uint64_t sub_218D529CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v3 = sub_219BEF244();
  v175 = *(v3 - 8);
  v176 = v3;
  MEMORY[0x28223BE20](v3);
  v169 = v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE9B4(0);
  v174 = v5;
  v167 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v166 = v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v8 = *(v7 - 8);
  v172 = v7;
  v173 = v8;
  MEMORY[0x28223BE20](v7);
  v165 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v181);
  v182 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D55324(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v168 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v177 = v127 - v14;
  sub_2189AF700(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v180 = v127 - v19;
  sub_2189AF720(0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v171 = v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v179 = v127 - v23;
  sub_218D55398(0, &qword_280E8CA48, MEMORY[0x277D844C8]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = v127 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D5527C();
  v29 = v178;
  sub_219BF7B34();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v133 = a1;
  v134 = v18;
  v132 = 0;
  v136 = v26;
  LOBYTE(v191) = 0;
  sub_2186DFAB8(&qword_280E91A28, sub_2189AE994);
  sub_219BF7674();
  LOBYTE(v191) = 1;
  sub_2186DFAB8(&qword_280E91868, sub_2189AE9B4);
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v191) = 2;
  sub_2186DFAB8(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v156 = v214;
  LOBYTE(v191) = 3;
  sub_219BF7674();
  v155 = v213;
  LOBYTE(v191) = 4;
  sub_219BF7674();
  v131 = v212;
  LOBYTE(v191) = 5;
  sub_219BF7674();
  v154 = v211;
  LOBYTE(v191) = 6;
  sub_219BF7674();
  v153 = v210;
  sub_2186ECA28();
  v32 = v31;
  LOBYTE(v191) = 7;
  v158 = sub_2186DFAB8(&qword_280E913D8, sub_2186ECA28);
  v135 = v32;
  sub_219BF7674();
  v152 = v209;
  sub_2186F95C4();
  v34 = v33;
  LOBYTE(v191) = 8;
  sub_2186DFAB8(&qword_280E913F8, sub_2186F95C4);
  sub_219BF7674();
  v151 = v208;
  LOBYTE(v191) = 9;
  sub_219BF7674();
  v150 = v207;
  sub_218D525A0();
  v36 = v35;
  LOBYTE(v191) = 10;
  sub_2186DFAB8(&qword_280E914F8, sub_218D525A0);
  v127[0] = v36;
  sub_219BF7674();
  v149 = v206;
  sub_218D52720();
  v38 = v37;
  LOBYTE(v191) = 11;
  sub_2186DFAB8(&qword_280E914D8, sub_218D52720);
  v127[1] = v38;
  sub_219BF7674();
  v148 = v205;
  LOBYTE(v191) = 12;
  sub_219BF7674();
  v147 = v204;
  LOBYTE(v191) = 13;
  sub_219BF7674();
  v146 = v203;
  sub_218D528A0();
  v40 = v39;
  LOBYTE(v191) = 14;
  sub_2186DFAB8(&qword_280E914A8, sub_218D528A0);
  v127[2] = v40;
  sub_219BF7674();
  v145 = v202;
  LOBYTE(v191) = 15;
  sub_219BF7674();
  v144 = v201;
  LOBYTE(v191) = 16;
  sub_219BF7674();
  v143 = v200;
  LOBYTE(v191) = 17;
  sub_219BF7674();
  v142 = v199;
  LOBYTE(v191) = 18;
  sub_219BF7674();
  v141 = v198;
  LOBYTE(v191) = 19;
  sub_219BF7674();
  v140 = v197;
  LOBYTE(v191) = 20;
  sub_219BF7674();
  v139 = v196;
  LOBYTE(v191) = 21;
  sub_219BF7674();
  v138 = v195;
  LOBYTE(v187) = 22;
  sub_218D553FC();
  sub_219BF7674();
  v137 = v191;
  v162 = v192;
  v163 = v193;
  v164 = v194;
  LOBYTE(v186) = 23;
  sub_219BF7674();
  v178 = v187;
  v159 = v188;
  v160 = v189;
  v161 = v190;
  LOBYTE(v186) = 24;
  sub_2186DFAB8(&qword_280E916D8, MEMORY[0x277D324F0]);
  sub_219BF7674();
  LOBYTE(v185) = 25;
  sub_219BF7674();
  v157 = v186;
  LOBYTE(v184) = 26;
  sub_219BF7674();
  v128 = v185;
  LOBYTE(v183) = 27;
  v158 = v34;
  v41 = v28;
  sub_219BF7674();
  v130 = v184;
  v42 = v171;
  sub_218D55894(v179, v171, sub_2189AF720);
  v43 = v172;
  v44 = *(v173 + 6);
  v45 = v44(v42, 1, v172);
  v129 = v25;
  if (v45 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFAB8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v46 = v165;
    sub_219BEE974();
    v47 = v44(v42, 1, v43);
    v48 = v46;
    v49 = v181;
    v50 = v167;
    v51 = v134;
    v52 = v173;
    if (v47 != 1)
    {
      sub_218D55450(v171, sub_2189AF720);
    }
  }

  else
  {
    v52 = v173;
    v48 = v165;
    (*(v173 + 4))(v165, v42, v43);
    v49 = v181;
    v50 = v167;
    v51 = v134;
  }

  (*(v52 + 4))(v182, v48, v43);
  sub_218D55894(v180, v51, sub_2189AF700);
  v53 = *(v50 + 48);
  v54 = v174;
  v55 = v53(v51, 1, v174);
  v173 = v41;
  if (v55 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFAB8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v56 = v166;
    v57 = v134;
    sub_219BEEC74();
    if (v53(v57, 1, v54) != 1)
    {
      sub_218D55450(v57, sub_2189AF700);
    }
  }

  else
  {
    v56 = v166;
    (*(v50 + 32))(v166, v51, v54);
  }

  v58 = v182;
  (*(v50 + 32))(&v182[v49[5]], v56, v54);
  if (v156)
  {
    v59 = v156;
  }

  else
  {
    v183 = 0;
    swift_allocObject();
    v59 = sub_219BEF534();
  }

  *&v58[v49[6]] = v59;
  v60 = v155;
  if (v155)
  {

    v61 = v60;
  }

  else
  {
    v183 = 5;
    swift_allocObject();

    v61 = sub_219BEF534();
  }

  *&v58[v49[7]] = v61;
  v62 = v131;
  if (v131)
  {

    v63 = v62;
  }

  else
  {
    v183 = 0;
    swift_allocObject();

    v63 = sub_219BEF534();
  }

  *&v58[v49[8]] = v63;
  v64 = v154;
  if (v154)
  {

    v65 = v64;
  }

  else
  {
    v183 = 1;
    swift_allocObject();

    v65 = sub_219BEF534();
  }

  *&v58[v49[9]] = v65;
  v66 = v153;
  if (v153)
  {

    v67 = v66;
  }

  else
  {
    v183 = 1;
    swift_allocObject();

    v67 = sub_219BEF534();
  }

  *&v58[v49[10]] = v67;
  v68 = v168;
  v69 = v152;
  if (v152)
  {

    v70 = v69;
  }

  else
  {
    v183 = 0x40F5180000000000;
    swift_allocObject();

    v70 = sub_219BEF534();
  }

  *&v58[v49[11]] = v70;
  v71 = v151;
  if (v151)
  {

    v72 = v71;
  }

  else
  {
    LOBYTE(v183) = 1;
    swift_allocObject();

    v72 = sub_219BEF534();
  }

  *&v58[v49[12]] = v72;
  v73 = v150;
  if (v150)
  {

    v74 = v73;
  }

  else
  {
    v183 = 30;
    swift_allocObject();

    v74 = sub_219BEF534();
  }

  *&v58[v49[13]] = v74;
  v75 = v149;
  if (v149)
  {

    v76 = v75;
  }

  else
  {
    LOBYTE(v183) = 1;
    swift_allocObject();

    v76 = sub_219BEF534();
  }

  *&v58[v49[14]] = v76;
  v77 = v148;
  if (v148)
  {

    v78 = v77;
  }

  else
  {
    LOBYTE(v183) = 1;
    swift_allocObject();

    v78 = sub_219BEF534();
  }

  *&v58[v49[15]] = v78;
  v79 = v147;
  if (v147)
  {

    v80 = v79;
  }

  else
  {
    v183 = 1;
    swift_allocObject();

    v80 = sub_219BEF534();
  }

  *&v58[v49[16]] = v80;
  v81 = v146;
  if (v146)
  {

    v82 = v81;
  }

  else
  {
    v183 = 3;
    swift_allocObject();

    v82 = sub_219BEF534();
  }

  *&v58[v49[17]] = v82;
  v83 = v145;
  if (v145)
  {

    v84 = v83;
  }

  else
  {
    LOBYTE(v183) = 1;
    swift_allocObject();

    v84 = sub_219BEF534();
  }

  *&v58[v49[18]] = v84;
  v85 = v144;
  if (v144)
  {

    v86 = v85;
  }

  else
  {
    v183 = 7;
    swift_allocObject();

    v86 = sub_219BEF534();
  }

  *&v58[v49[19]] = v86;
  v87 = v143;
  if (v143)
  {

    v88 = v87;
  }

  else
  {
    v183 = 7;
    swift_allocObject();

    v88 = sub_219BEF534();
  }

  *&v58[v49[20]] = v88;
  v89 = v142;
  if (v142)
  {

    v90 = v89;
  }

  else
  {
    LOBYTE(v183) = 1;
    swift_allocObject();

    v90 = sub_219BEF534();
  }

  *&v58[v49[21]] = v90;
  v91 = v141;
  if (v141)
  {

    v92 = v91;
  }

  else
  {
    v183 = 1;
    swift_allocObject();

    v92 = sub_219BEF534();
  }

  *&v58[v49[22]] = v92;
  v93 = v140;
  if (v140)
  {

    v94 = v93;
  }

  else
  {
    v183 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();

    v94 = sub_219BEF534();
  }

  *&v58[v49[23]] = v94;
  v95 = v139;
  if (v139)
  {

    v96 = v95;
  }

  else
  {
    v183 = 1;
    swift_allocObject();

    v96 = sub_219BEF534();
  }

  *&v58[v49[24]] = v96;
  v97 = v138;
  if (v138)
  {

    v98 = v97;
  }

  else
  {
    v183 = 1;
    swift_allocObject();

    v98 = sub_219BEF534();
  }

  *&v58[v49[25]] = v98;
  v99 = v137;
  if (v137)
  {

    v100 = v99;
    v102 = v162;
    v101 = v163;
    v103 = v164;
  }

  else
  {
    sub_218D554B0();
    swift_allocObject();

    v100 = sub_219BEF274();
    sub_218D55534();
    swift_allocObject();
    v102 = sub_219BEF274();
    v183 = 0;
    sub_218D556B4();
    swift_allocObject();
    v101 = sub_219BEF534();
    LOBYTE(v183) = 1;
    swift_allocObject();
    v58 = v182;
    v103 = sub_219BEF534();
  }

  v104 = &v58[v181[26]];
  *v104 = v100;
  v104[1] = v102;
  v104[2] = v101;
  v104[3] = v103;
  v105 = v178;
  if (v178)
  {
    sub_218D55834(v99);
    v107 = v159;
    v106 = v160;
    v108 = v161;
  }

  else
  {
    sub_218D554B0();
    swift_allocObject();
    sub_218D55834(v99);
    v105 = sub_219BEF274();
    sub_218D55534();
    swift_allocObject();
    v107 = sub_219BEF274();
    v183 = 0;
    sub_218D556B4();
    swift_allocObject();
    v106 = sub_219BEF534();
    LOBYTE(v183) = 1;
    swift_allocObject();
    v58 = v182;
    v108 = sub_219BEF534();
  }

  v109 = &v58[v181[27]];
  *v109 = v105;
  v109[1] = v107;
  v109[2] = v106;
  v109[3] = v108;
  v110 = v177;
  sub_218D55894(v177, v68, sub_218D55324);
  v112 = v175;
  v111 = v176;
  v113 = *(v175 + 48);
  if (v113(v68, 1, v176) == 1)
  {
    sub_218D55834(v178);
    v114 = v169;
    sub_219BEF1C4();
    v115 = v113(v68, 1, v111) == 1;
    v116 = v68;
    v117 = v180;
    v118 = v136;
    v119 = v128;
    if (!v115)
    {
      sub_218D55450(v116, sub_218D55324);
    }
  }

  else
  {
    v114 = v169;
    (*(v112 + 32))(v169, v68, v111);
    sub_218D55834(v178);
    v117 = v180;
    v118 = v136;
    v119 = v128;
  }

  v120 = v181;
  (*(v175 + 32))(&v182[v181[28]], v114, v111);
  if (v157)
  {
    v121 = v157;
  }

  else
  {
    LOBYTE(v183) = 1;
    swift_allocObject();
    v121 = sub_219BEF534();
    v118 = v136;
  }

  v122 = v130;
  *&v182[v120[29]] = v121;
  if (v119)
  {
  }

  else
  {
    v183 = 0;
    swift_allocObject();

    v123 = sub_219BEF534();
    v118 = v136;
    v119 = v123;
  }

  *&v182[v120[30]] = v119;
  if (v122)
  {

    sub_218D558FC(v178);
    sub_218D558FC(v137);

    sub_218D55450(v110, sub_218D55324);
    sub_218D55450(v117, sub_2189AF700);
    sub_218D55450(v179, sub_2189AF720);
    (*(v118 + 8))(v173, v129);
  }

  else
  {
    LOBYTE(v183) = 1;
    swift_allocObject();
    v124 = v118;
    v125 = sub_219BEF534();

    sub_218D558FC(v178);
    sub_218D558FC(v137);

    v122 = v125;

    sub_218D55450(v110, sub_218D55324);
    sub_218D55450(v117, sub_2189AF700);
    sub_218D55450(v179, sub_2189AF720);
    (*(v124 + 8))(v173, v129);
  }

  v126 = v182;
  *&v182[v120[31]] = v122;
  sub_218D5595C(v126, v170);
  return __swift_destroy_boxed_opaque_existential_1(v133);
}