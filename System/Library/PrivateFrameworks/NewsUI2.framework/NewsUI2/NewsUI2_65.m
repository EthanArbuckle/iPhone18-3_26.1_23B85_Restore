unint64_t sub_218E02AC4()
{
  result = qword_27CC12548;
  if (!qword_27CC12548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12548);
  }

  return result;
}

uint64_t sub_218E02B40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  sub_2186F64EC(0);
  v56 = v3;
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v43 - v12;
  sub_218E03B10(0, &qword_280E8C738, MEMORY[0x277D844C8]);
  v58 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E03998();
  v17 = v62;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v52 = v14;
  v54 = 0;
  v55 = a1;
  v53 = v6;
  v62 = v5;
  LOBYTE(v73) = 0;
  sub_218CE8B98();
  sub_219BF7674();
  v75 = v79;
  LOBYTE(v71) = 1;
  sub_219BF7674();
  v51 = v73;
  v50 = v74;
  LOBYTE(v69) = 2;
  sub_219BF7674();
  v49 = v71;
  v48 = v72;
  LOBYTE(v67) = 3;
  sub_219BF7674();
  v47 = v69;
  v46 = v70;
  LOBYTE(v67) = 4;
  sub_218CE8BEC();
  sub_219BF7674();
  v19 = v78;
  LOBYTE(v65) = 5;
  sub_219BF7674();
  v20 = v67;
  v45 = v68;
  LOBYTE(v63) = 6;
  sub_219BF7674();
  v21 = v65;
  v44 = v66;
  v77 = 7;
  sub_219BF7674();
  v43 = v63;
  v22 = v64;
  v76 = 8;
  sub_219BF7674();
  v23 = v77;
  v76 = 9;
  sub_2186EC758(&qword_280E91838, sub_2186F64EC);
  v24 = v59;
  v25 = v56;
  sub_219BF7674();
  v26 = v75;
  if (v75 == 3)
  {
    v26 = 0;
  }

  *v8 = v26;
  v27 = v51;
  if (v50)
  {
    v27 = 8;
  }

  v28 = v49;
  if (v48)
  {
    v28 = 1;
  }

  *(v8 + 1) = v27;
  *(v8 + 2) = v28;
  v29 = v47;
  if (v46)
  {
    v29 = 4;
  }

  *(v8 + 3) = v29;
  if (v19 == 4)
  {
    v30 = 0;
  }

  else
  {
    v30 = v19;
  }

  v8[32] = v30;
  v31 = 1.2;
  if (!v45)
  {
    v31 = v20;
  }

  v32 = 0.0;
  if (!v44)
  {
    v32 = v21;
  }

  *(v8 + 5) = v31;
  *(v8 + 6) = v32;
  *(v8 + 7) = v43;
  v8[64] = v22;
  v8[65] = (v23 == 2) | v23 & 1;
  v33 = v61;
  sub_218E039EC(v24, v61);
  v34 = *(v60 + 48);
  v35 = v25;
  v36 = v8;
  if (v34(v33, 1, v25) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186EC758(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v37 = v62;
    sub_219BEEC74();
    sub_218E03A50(v59);
    (*(v52 + 8))(v16, v58);
    v38 = v34(v61, 1, v35);
    v39 = v57;
    v40 = v60;
    v41 = v53;
    v42 = v55;
    if (v38 != 1)
    {
      sub_218E03A50(v61);
    }
  }

  else
  {
    sub_218E03A50(v59);
    (*(v52 + 8))(v16, v58);
    v40 = v60;
    v37 = v62;
    (*(v60 + 32))(v62, v61, v35);
    v39 = v57;
    v41 = v53;
    v42 = v55;
  }

  (*(v40 + 32))(v36 + *(v41 + 52), v37, v35);
  sub_218E03AAC(v36, v39);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

unint64_t sub_218E032A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x726F635365736162;
    v6 = 0xD00000000000001CLL;
    if (a1 != 8)
    {
      v6 = 0x6C6F6F706572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746C754D6B6E6172;
    if (a1 != 5)
    {
      v7 = 0x72685465726F6373;
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
    v1 = 0x704F7265746C6966;
    v2 = 0x727563634F78616DLL;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x7942726564726FLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
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

uint64_t sub_218E0341C(void *a1)
{
  v3 = v1;
  sub_218E03B10(0, &qword_280E8C1E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E03998();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CE8E28();
  sub_219BF7834();
  if (!v2)
  {
    v11[13] = 1;
    sub_219BF7824();
    v11[12] = 2;
    sub_219BF7824();
    v11[11] = 3;
    sub_219BF7824();
    v11[10] = v3[32];
    v11[9] = 4;
    sub_218CE8E7C();
    sub_219BF7834();
    v11[8] = 5;
    sub_219BF7814();
    v11[7] = 6;
    sub_219BF7814();
    v11[6] = 7;
    sub_219BF77B4();
    v11[5] = 8;
    sub_219BF7804();
    type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
    v11[4] = 9;
    sub_2186F64EC(0);
    sub_2186EC758(&unk_280E91840, sub_2186F64EC);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E0372C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E03C8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E03754(uint64_t a1)
{
  v2 = sub_218E03998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E03790(uint64_t a1)
{
  v2 = sub_218E03998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E03800(char *a1, char *a2)
{
  if (*&aNone_14[8 * *a1] == *&aNone_14[8 * *a2])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v4 = sub_219BF78F4();
    swift_bridgeObjectRelease_n();
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3) || (sub_21908B134(a1[32], a2[32]) & 1) == 0 || *(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6))
  {
    return 0;
  }

  v5 = a2[64];
  if (a1[64])
  {
    if (!a2[64])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 7) != *(a2 + 7))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (a1[65] != a2[65])
  {
    return 0;
  }

  type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
  type metadata accessor for MagazineFeedServiceConfig();
  sub_2186EC758(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);

  return sub_219BEEC64();
}

unint64_t sub_218E03998()
{
  result = qword_280E96B60;
  if (!qword_280E96B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E96B60);
  }

  return result;
}

uint64_t sub_218E039EC(uint64_t a1, uint64_t a2)
{
  sub_218CE8AB0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E03A50(uint64_t a1)
{
  sub_218CE8AB0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218E03AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E03B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E03998();
    v7 = a3(a1, &type metadata for RecommendedIssuesMagazineFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E03B88()
{
  result = qword_27CC12550;
  if (!qword_27CC12550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12550);
  }

  return result;
}

unint64_t sub_218E03BE0()
{
  result = qword_280E96B50;
  if (!qword_280E96B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E96B50);
  }

  return result;
}

unint64_t sub_218E03C38()
{
  result = qword_280E96B58;
  if (!qword_280E96B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E96B58);
  }

  return result;
}

uint64_t sub_218E03C8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F7265746C6966 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7942726564726FLL && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000219CF9AF0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
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

uint64_t sub_218E03FE4()
{
  v1 = sub_219BDE294();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDEE04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AudioTrackDetailsRouteModel();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  swift_unknownObjectRetain();
  sub_219BDEDE4();
  v15 = sub_219BDB954();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  (*(v2 + 104))(v4, *MEMORY[0x277D2FF08], v1);
  sub_219BDD904();
  (*(v2 + 8))(v4, v1);
  sub_2187BC5D0(v7, sub_21873F65C);
  (*(v9 + 8))(v11, v8);
  sub_218B5DA2C(v14);
  return sub_2187BC5D0(v14, type metadata accessor for AudioTrackDetailsRouteModel);
}

uint64_t sub_218E042D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_219BE1F84();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = sub_2187A913C;
  v11[4] = v10;
  v11[5] = a3;
  v11[6] = a4;

  sub_219BE1F74();
}

uint64_t sub_218E043C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = NFInternalBuild();
  if (v8)
  {
    sub_219BDC744();
    type metadata accessor for ResetPuzzleProgressStartupTask();
    sub_218E04810(&qword_280EAB860);
    sub_219BDC7D4();

    if (v12[15] == 1)
    {
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleStatsStateStore), *(a1 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleStatsStateStore + 24));
      sub_219BF3A54();
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleHistoryService), *(a1 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleHistoryService + 24));
      sub_219BDBBB4();
      v9 = sub_219BF3774();
      (*(v5 + 8))(v7, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = a1;

      sub_219BE3494();

      sub_219BDC744();
      v12[14] = 0;
      sub_218E04810(&qword_27CC12558);
      sub_219BDCA54();
    }
  }

  return a2(v8);
}

uint64_t sub_218E0460C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (a2 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleHistoryService);
    v4 = result + 40;
    do
    {
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);

      sub_219BF3754();

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_218E046A4()
{
  v1 = OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleHistoryService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleStatsStateStore);

  return swift_deallocClassInstance();
}

uint64_t sub_218E0479C()
{
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218E04810(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ResetPuzzleProgressStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218E04864()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8560);
  __swift_project_value_buffer(v0, qword_27CCD8560);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_218E04ABC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8578);
  __swift_project_value_buffer(v0, qword_27CCD8578);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218E04C70()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8590);
  __swift_project_value_buffer(v0, qword_27CCD8590);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_218E04ECC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD85A8);
  __swift_project_value_buffer(v0, qword_27CCD85A8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218E0507C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD85C0);
  __swift_project_value_buffer(v0, qword_27CCD85C0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218E0530C()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_218E053AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v31 = a4;
  v32 = sub_219BECA04();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BECA94();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E066D0();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0661C();
  v27 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BECB64();
  v33 = a1;
  v34 = a2;
  v35 = v26;
  sub_218E06764(0);
  sub_218E07314(&qword_27CC12608, sub_218E06764);
  sub_219BEC5E4();
  v19 = sub_219BECBC4();
  sub_219BECA84();
  v20 = sub_218E07314(&qword_27CC12610, sub_218E066D0);
  MEMORY[0x21CEC3B90](v19, 0x4034000000000000, 0, v9, v11, v20);
  (*(v7 + 8))(v9, v28);
  (*(v12 + 8))(v14, v11);
  v21 = v29;
  sub_219BEC9F4();
  sub_219BECB64();
  v36 = v11;
  v37 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v31;
  v23 = v27;
  sub_219BECE74();
  (*(v30 + 8))(v21, v32);
  (*(v16 + 8))(v18, v23);
  LOBYTE(v23) = sub_219BECB94();
  sub_218E064D0();
  *(v22 + *(v24 + 36)) = v23;
}

uint64_t sub_218E057A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_219BEC8A4();
  *(a4 + 8) = 0x4034000000000000;
  *(a4 + 16) = 0;
  sub_218E07134();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_218E072B0(0, &qword_27CC12598, type metadata accessor for RecipeFilterDurationItemViewModel, MEMORY[0x277D83940]);
  sub_218E06928();
  sub_218E06E7C(&qword_27CC125F8, &qword_27CC12598, type metadata accessor for RecipeFilterDurationItemViewModel);
  sub_218E06A40();
  sub_218E06DE8();
  sub_218E06AD8();
  sub_218E06C88();

  swift_getOpaqueTypeConformance2();
  sub_218E07314(&qword_27CC125F0, sub_218E06DE8);
  swift_getOpaqueTypeConformance2();
  sub_218E07314(&qword_27CC12628, type metadata accessor for RecipeFilterDurationItemViewModel);
  return sub_219BED064();
}

uint64_t sub_218E05A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a3;
  v46 = a5;
  sub_218E06DE8();
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEC954();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E06B40();
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E06AD8();
  v17 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  sub_218E06A40();
  v43 = *(v23 - 8);
  v44 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = swift_allocObject();
  v47 = a4;
  v48 = a2;
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = v26;
  sub_218E06C34();

  v28 = v25;
  v29 = v17;
  v30 = v51;
  sub_219BECFE4();
  v31 = sub_219BECF14();
  KeyPath = swift_getKeyPath();
  v33 = &v15[*(v50 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = *(v26 + 40);
  v55 = *(v26 + 32);
  v56 = v34;
  sub_218E06D38();
  sub_2187F3BD4();
  sub_219BECE54();
  sub_218E07250(v15, sub_218E06B40);
  v35 = v52;
  sub_218E05F84(v26);
  sub_219BEC714();
  (*(v53 + 8))(v35, v54);
  sub_218E07250(v20, sub_218E06AD8);
  v36 = sub_218E06C88();
  v37 = MEMORY[0x277CE0BD8];
  v38 = MEMORY[0x277CE0BC8];
  sub_219BECEB4();
  sub_218E07250(v22, sub_218E06AD8);
  v39 = *MEMORY[0x277CDFA10];
  v40 = sub_219BEC6E4();
  (*(*(v40 - 8) + 104))(v30, v39, v40);
  sub_218E07314(&qword_27CC12630, MEMORY[0x277CDFA28]);
  result = sub_219BF53A4();
  if (result)
  {
    v55 = v29;
    v56 = v37;
    v57 = v36;
    v58 = v38;
    swift_getOpaqueTypeConformance2();
    sub_218E07314(&qword_27CC125F0, sub_218E06DE8);
    v42 = v44;
    sub_219BECE04();
    sub_218E07250(v30, sub_218E06DE8);
    return (*(v43 + 8))(v28, v42);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218E05F84(uint64_t a1)
{
  swift_getKeyPath();
  sub_218E07314(&qword_27CC0B230, type metadata accessor for RecipeFilterDurationItemViewModel);
  sub_219BDC204();

  if (*(a1 + 80) == 1)
  {
    v2 = MEMORY[0x277CE01F0];
    sub_218E072B0(0, &qword_27CC0BB48, MEMORY[0x277CE01F0], MEMORY[0x277D84560]);
    sub_219BEC954();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    sub_219BEC934();
    sub_218E07314(&qword_27CC0BB30, MEMORY[0x277CE01F0]);
    sub_218E072B0(0, &qword_27CC0BB38, v2, MEMORY[0x277D83940]);
    sub_218E06E7C(&qword_27CC0BB40, &qword_27CC0BB38, v2);
  }

  else
  {
    sub_219BEC954();
    sub_218E07314(&qword_27CC0BB30, MEMORY[0x277CE01F0]);
    v3 = MEMORY[0x277CE01F0];
    sub_218E072B0(0, &qword_27CC0BB38, MEMORY[0x277CE01F0], MEMORY[0x277D83940]);
    sub_218E06E7C(&qword_27CC0BB40, &qword_27CC0BB38, v3);
  }

  return sub_219BF7164();
}

uint64_t sub_218E06288@<X0>(uint64_t a1@<X8>)
{
  sub_2187F3BD4();

  v1 = sub_219BECDA4();
  v3 = v2;
  v5 = v4;
  v6 = sub_219BECD64();
  v8 = v7;
  v23 = v9;
  sub_2189A0BC8(v1, v3, v5 & 1);

  v10 = sub_219BECDA4();
  v12 = v11;
  v14 = v13;
  v15 = sub_219BECD64();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_2189A0BC8(v10, v12, v14 & 1);

  sub_2189A0BC8(v6, v8, v23 & 1);

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  return result;
}

void sub_218E06410(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  sub_218E06488(0);
  *(a1 + *(v8 + 44)) = 0x4034000000000000;
  *a1 = v7;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  v9 = *(v8 + 40);

  sub_218E053AC(v3, v4, v5, a1 + v9);
}

void sub_218E064D0()
{
  if (!qword_27CC12568)
  {
    sub_218E06530();
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12568);
    }
  }
}

void sub_218E06530()
{
  if (!qword_27CC12570)
  {
    sub_218E0661C();
    sub_218E066D0();
    sub_218E07314(&qword_27CC12610, sub_218E066D0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC12570);
    }
  }
}

void sub_218E0661C()
{
  if (!qword_27CC12578)
  {
    sub_218E066D0();
    sub_218E07314(&qword_27CC12610, sub_218E066D0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC12578);
    }
  }
}

void sub_218E066D0()
{
  if (!qword_27CC12580)
  {
    sub_218E06764(255);
    sub_218E07314(&qword_27CC12608, sub_218E06764);
    v0 = sub_219BEC5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12580);
    }
  }
}

void sub_218E067AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_218E0682C()
{
  if (!qword_27CC12590)
  {
    sub_218E072B0(255, &qword_27CC12598, type metadata accessor for RecipeFilterDurationItemViewModel, MEMORY[0x277D83940]);
    sub_218E06928();
    sub_218E06E7C(&qword_27CC125F8, &qword_27CC12598, type metadata accessor for RecipeFilterDurationItemViewModel);
    v0 = sub_219BED084();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12590);
    }
  }
}

void sub_218E06928()
{
  if (!qword_27CC125A0)
  {
    sub_218E06A40();
    sub_218E06DE8();
    sub_218E06AD8();
    sub_218E06C88();
    swift_getOpaqueTypeConformance2();
    sub_218E07314(&qword_27CC125F0, sub_218E06DE8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC125A0);
    }
  }
}

void sub_218E06A40()
{
  if (!qword_27CC125A8)
  {
    sub_218E06AD8();
    sub_218E06C88();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC125A8);
    }
  }
}

void sub_218E06AD8()
{
  if (!qword_27CC125B0)
  {
    sub_218E06B40();
    sub_219BECB24();
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC125B0);
    }
  }
}

void sub_218E06B40()
{
  if (!qword_27CC125B8)
  {
    sub_218E06BD8();
    sub_218E072B0(255, &qword_27CC0BAC8, sub_2189A0314, MEMORY[0x277CE0860]);
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC125B8);
    }
  }
}

void sub_218E06BD8()
{
  if (!qword_27CC125C0)
  {
    sub_218E06C34();
    v0 = sub_219BED004();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC125C0);
    }
  }
}

unint64_t sub_218E06C34()
{
  result = qword_27CC125C8;
  if (!qword_27CC125C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC125C8);
  }

  return result;
}

unint64_t sub_218E06C88()
{
  result = qword_27CC125D0;
  if (!qword_27CC125D0)
  {
    sub_218E06AD8();
    sub_218E06D38();
    sub_218E07314(&qword_27CC0BAF8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC125D0);
  }

  return result;
}

unint64_t sub_218E06D38()
{
  result = qword_27CC125D8;
  if (!qword_27CC125D8)
  {
    sub_218E06B40();
    sub_218E07314(&qword_27CC125E0, sub_218E06BD8);
    sub_2189A04C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC125D8);
  }

  return result;
}

void sub_218E06DE8()
{
  if (!qword_27CC125E8)
  {
    sub_219BEC6E4();
    sub_218E07314(&qword_27CC0BB50, MEMORY[0x277CDFA28]);
    v0 = sub_219BF75D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC125E8);
    }
  }
}

uint64_t sub_218E06E7C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_218E072B0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218E06ED4()
{
  result = qword_27CC12600;
  if (!qword_27CC12600)
  {
    sub_218E0682C();
    sub_218E06A40();
    sub_218E06DE8();
    sub_218E06AD8();
    sub_218E06C88();
    swift_getOpaqueTypeConformance2();
    sub_218E07314(&qword_27CC125F0, sub_218E06DE8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12600);
  }

  return result;
}

unint64_t sub_218E07010()
{
  result = qword_27CC12618;
  if (!qword_27CC12618)
  {
    sub_218E064D0();
    sub_218E0661C();
    sub_218E066D0();
    sub_218E07314(&qword_27CC12610, sub_218E066D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12618);
  }

  return result;
}

void sub_218E07134()
{
  if (!qword_27CC12620)
  {
    sub_218E0682C();
    v0 = sub_219BEC6A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12620);
    }
  }
}

uint64_t sub_218E071E0@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = 0x4052000000000000;
}

uint64_t sub_218E071F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BEC834();
  *a1 = result;
  return result;
}

uint64_t sub_218E07250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218E072B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218E07314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E0735C()
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

uint64_t sub_218E07438(uint64_t a1)
{
  v3 = type metadata accessor for SearchExpandRequest();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE0874();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchResults();
  v12 = (v11 - 8);
  v29 = *(v11 - 8);
  v13 = *(v29 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v28 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v17;
  v33[2] = *(a1 + 32);
  v34 = *(a1 + 48);
  sub_219BF5054();
  v18 = *(v1 + *(*v1 + 120));
  (*(v8 + 104))(v10, *MEMORY[0x277D2E888], v7);
  sub_219BDF024();
  v19 = v12[10];
  v20 = sub_219BE04F4();
  (*(*(v20 - 8) + 56))(&v16[v19], 1, 1, v20);
  strcpy(v16, "empty-search");
  v16[13] = 0;
  *(v16 + 7) = -5120;
  *(v16 + 2) = MEMORY[0x277D84F90];
  v21 = &v16[v12[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v16[v12[11]] = 0;
  *&v16[v12[12]] = 9;
  sub_218E0E818(v16, &v6[*(v4 + 28)], type metadata accessor for SearchResults);
  type metadata accessor for SearchFeedGapLocation(0);
  swift_storeEnumTagMultiPayload();
  strcpy(v6, "prewarmRequest");
  v6[15] = -18;
  *&v6[*(v4 + 32)] = 9;
  v30 = v18;
  v31 = v6;
  v32 = v33;
  sub_219BE3204();
  v22 = v28;
  sub_218E0E818(v16, v28, type metadata accessor for SearchResults);
  v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_218E0FE18(v22, v25 + v23, type metadata accessor for SearchResults);
  *(v25 + v24) = 0;
  v26 = sub_219BE2E54();
  type metadata accessor for SearchPrewarmResult();
  sub_219BE2F64();

  sub_218E0FE80(v16, type metadata accessor for SearchResults);
  return sub_218E0FE80(v6, type metadata accessor for SearchExpandRequest);
}

void sub_218E078A4(uint64_t a1, char a2, __int128 *a3)
{
  v7 = *v3;
  sub_218AF3D74(0);
  v68 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v82 = *a1;
  v83[0] = v12;
  *(v83 + 9) = *(a1 + 25);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 24);
  v76 = *(a1 + 16);
  v75 = v15;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v87 = *(a3 + 48);
  v18 = a3[2];
  v85 = a3[1];
  v86 = v18;
  v84 = *a3;
  v71 = v17;
  v70 = v16;
  v74 = v13;
  v72 = v7;
  v69 = v9;
  v73 = v14;
  if (a2)
  {
    sub_218E0DF9C(&v82, &v77);
    v19 = v13;
    goto LABEL_21;
  }

  v20 = v3 + *(v7 + 152);
  v22 = *v20;
  v21 = *(v20 + 8);
  v23 = *(v20 + 16);
  v66 = *(v20 + 24);
  v24 = *(v20 + 32);
  v67 = *(v20 + 40);
  if (!v14)
  {
    if (!v21)
    {
      sub_218E0DF9C(&v82, &v77);
      sub_218E0DF9C(&v82, &v77);
      sub_218E0DFF8(v22, 0);
      v19 = v74;
      sub_218AA1438(v74, 0);
      goto LABEL_31;
    }

    sub_218E0DF9C(&v82, &v77);
    sub_218E0DF9C(&v82, &v77);
    sub_218E0DFF8(v22, v21);
    v31 = v74;
LABEL_17:
    sub_218AA1438(v31, v14);
    sub_218AA1438(v22, v21);
    v19 = v31;
    goto LABEL_21;
  }

  if (!v21)
  {
    v64[1] = v24;
    v31 = v13;
    sub_218E0DF9C(&v82, &v77);
    sub_218E0DF9C(&v82, &v77);
    sub_218E0DFF8(v22, 0);
    LOBYTE(v17) = v71;
    sub_218E0DFF8(v13, v14);

    goto LABEL_17;
  }

  if (v13 != v22 || v21 != v14)
  {
    v26 = v23;
    v27 = v22;
    v28 = sub_219BF78F4();
    v23 = v26;
    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v76)
  {
    v27 = v22;
    if (v23)
    {
      v64[0] = v23;
      LODWORD(v65) = sub_219417FCC(v76, v23);
      sub_218E0DF9C(&v82, &v77);
      sub_218E0DF9C(&v82, &v77);
      sub_218E0DFF8(v22, v21);
      v29 = v14;
      v19 = v74;
      v16 = v70;
      LOBYTE(v17) = v71;
      sub_218E0DFF8(v74, v29);
      sub_218AA1438(v22, v21);

      v30 = v73;

      sub_218AA1438(v19, v30);
      if (v65)
      {
        goto LABEL_31;
      }

LABEL_21:
      v36 = CACurrentMediaTime();
      v37 = v3 + *(*v3 + 152);
      v39 = *v37;
      v38 = *(v37 + 8);
      v40 = v73;
      *v37 = v19;
      *(v37 + 8) = v40;
      v41 = v75;
      *(v37 + 16) = v76;
      *(v37 + 24) = v41;
      *(v37 + 32) = v16;
      *(v37 + 40) = v17;
      sub_218E0DF9C(&v82, &v77);
      sub_218AA1438(v39, v38);
      v77 = v82;
      *v78 = v83[0];
      *&v78[9] = *(v83 + 9);
      if (!sub_2192FF134())
      {
        sub_219BE6EC4();
        v81 = v77;
        sub_2189871A8();
        sub_2186D76E8(&qword_280EE5510, sub_2189871A8);
        sub_219BE7B94();

        sub_2186D76E8(&qword_280EE36F8, sub_218AF3D74);
        v42 = v69;
        sub_219BF5DF4();
        sub_219BF5E84();
        (*(v68 + 8))(v11, v42);
        if (v80 == v79)
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
        }
      }

      v44 = swift_unknownObjectWeakLoadStrong();
      if (v44)
      {
        v77 = v82;
        *v78 = v83[0];
        *&v78[9] = *(v83 + 9);
        sub_219898D10(&v77);
        v44 = swift_unknownObjectRelease();
      }

      MEMORY[0x28223BE20](v44);
      v64[-2] = v3;
      v64[-1] = &v82;
      type metadata accessor for SearchResults();
      sub_219BE3204();
      v69 = sub_2187D9028();
      v45 = sub_219BF66A4();
      v46 = swift_allocObject();
      v47 = v85;
      *(v46 + 72) = v84;
      v48 = v73;
      *(v46 + 16) = v74;
      *(v46 + 24) = v48;
      v49 = v75;
      *(v46 + 32) = v76;
      *(v46 + 40) = v49;
      v50 = v70;
      *(v46 + 48) = v70;
      v51 = v71;
      *(v46 + 56) = v71;
      *(v46 + 64) = v36;
      *(v46 + 88) = v47;
      *(v46 + 104) = v86;
      *(v46 + 120) = v87;
      sub_218E0DF9C(&v82, &v77);
      sub_218E0E0F8(&v84, &v77);
      type metadata accessor for SearchPrewarmResult();
      sub_219BE2F84();

      v52 = sub_219BF66A4();
      v53 = swift_allocObject();
      *(v53 + 16) = v74;
      *(v53 + 24) = v48;
      v54 = v75;
      *(v53 + 32) = v76;
      *(v53 + 40) = v54;
      *(v53 + 48) = v50;
      *(v53 + 56) = v51;
      sub_219BE2F84();

      v55 = swift_allocObject();
      *(v55 + 16) = v36;
      v56 = v83[0];
      *(v55 + 24) = v82;
      *(v55 + 40) = v56;
      *(v55 + 49) = *(v83 + 9);
      sub_218E0DF9C(&v82, &v77);
      v57 = sub_219BE2E54();
      sub_219BE2F94();

      v58 = sub_219BF66A4();
      sub_219BE2FE4();

      return;
    }

LABEL_20:
    v65 = v11;
    v32 = v21;
    sub_218E0DF9C(&v82, &v77);
    sub_218E0DF9C(&v82, &v77);
    v33 = v27;
    sub_218E0DFF8(v27, v32);
    v34 = v14;
    v35 = v14;
    v19 = v74;
    v16 = v70;
    LOBYTE(v17) = v71;
    sub_218E0DFF8(v74, v34);
    sub_218AA1438(v33, v32);

    sub_218AA1438(v19, v35);
    v11 = v65;
    goto LABEL_21;
  }

  v27 = v22;
  if (v23)
  {
    goto LABEL_20;
  }

  sub_218E0DF9C(&v82, &v77);
  sub_218E0DF9C(&v82, &v77);
  sub_218E0DFF8(v22, v21);
  v59 = v74;
  v16 = v70;
  LOBYTE(v17) = v71;
  sub_218E0DFF8(v74, v14);
  sub_218AA1438(v22, v21);

  sub_218AA1438(v59, v14);
  v19 = v59;
LABEL_31:
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  sub_218E0D9F4(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_219C09BA0;
  *&v77 = v19;
  *(&v77 + 1) = v73;
  *v78 = v76;
  *&v78[8] = v75;
  *&v78[16] = v16;
  v78[24] = v17;
  v61 = sub_218E4A7F8();
  v63 = v62;
  *(v60 + 56) = MEMORY[0x277D837D0];
  *(v60 + 64) = sub_2186FC3BC();
  *(v60 + 32) = v61;
  *(v60 + 40) = v63;
  sub_218E0E194(&v82);
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218E08614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a1;
  v64 = a4;
  v6 = *(a3 + 8);
  v74 = *a3;
  v7 = *(a3 + 24);
  v71 = *(a3 + 16);
  v72 = v7;
  v70 = *(a3 + 32);
  v73 = *(a3 + 40);
  v8 = type metadata accessor for SearchResults();
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v65 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchExpandRequest();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 + *(*a2 + 152);
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v20 = *(v15 + 32);
  v21 = *(v15 + 40);
  if (!v6)
  {
    if (!v16)
    {
      v60 = v12;
      sub_218E0DFF8(v17, 0);
      sub_218E0E7BC(a3, v75);
      v38 = v74;
      v39 = 0;
      goto LABEL_25;
    }

    v34 = *v15;
    v68 = *(v15 + 8);
    v69 = v17;
    v61 = v20;
    sub_218E0DFF8(v34, v68);
    sub_218E0E7BC(a3, v75);
    v35 = v74;
LABEL_15:
    sub_218AA1438(v35, v6);
    v37 = v68;
    v36 = v69;
LABEL_22:
    sub_218AA1438(v36, v37);
    goto LABEL_23;
  }

  v68 = *(v15 + 8);
  v69 = v17;
  if (!v16)
  {
    v61 = v20;
    sub_218E0DFF8(v17, 0);
    sub_218E0E7BC(a3, v75);
    v35 = v74;
    sub_218E0DFF8(v74, v6);

    goto LABEL_15;
  }

  v60 = v12;
  if (v74 != v17 || v16 != v6)
  {
    v58 = v18;
    v23 = v19;
    v24 = v14;
    v25 = v10;
    v26 = v20;
    v27 = v6;
    v28 = v21;
    v29 = v16;
    v30 = sub_219BF78F4();
    v16 = v29;
    v18 = v58;
    v19 = v23;
    v17 = v69;
    v21 = v28;
    v6 = v27;
    v20 = v26;
    v10 = v25;
    v14 = v24;
    if ((v30 & 1) == 0)
    {
      v67 = v19;
      v59 = v21;
      sub_218E0DFF8(v69, v29);
      sub_218E0E7BC(a3, v75);
      goto LABEL_21;
    }
  }

  if (!v71)
  {
    if (v18)
    {
      v67 = v19;
      v59 = v21;
      sub_218E0DFF8(v17, v16);
      sub_218E0E7BC(a3, v75);
LABEL_21:
      v40 = v74;
      sub_218E0DFF8(v74, v6);
      sub_218AA1438(v17, v68);

      v36 = v40;
      v37 = v6;
      goto LABEL_22;
    }

    v43 = v16;
    sub_218E0DFF8(v17, v16);
    sub_218E0E7BC(a3, v75);
    sub_218E0DFF8(v74, v6);
    sub_218AA1438(v69, v43);

    v38 = v74;
    v39 = v6;
LABEL_25:
    sub_218AA1438(v38, v39);
LABEL_26:
    sub_219BF5CD4();
    v45 = v44;
    v46 = *(a2 + *(*a2 + 120));
    v47 = v60;
    v48 = v66;
    sub_218E0E818(v66, &v14[*(v60 + 20)], type metadata accessor for SearchResults);
    type metadata accessor for SearchFeedGapLocation(0);
    v49 = swift_storeEnumTagMultiPayload();
    v50 = *(v48 + *(v62 + 40));
    strcpy(v14, "prewarmRequest");
    v14[15] = -18;
    *&v14[*(v47 + 24)] = v50;
    MEMORY[0x28223BE20](v49);
    *(&v56 - 4) = v46;
    *(&v56 - 3) = v14;
    *(&v56 - 2) = v64;
    sub_219BE3204();
    v51 = v65;
    sub_218E0E818(v48, v65, type metadata accessor for SearchResults);
    v52 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v53 = swift_allocObject();
    sub_218E0FE18(v51, v53 + v52, type metadata accessor for SearchResults);
    *(v53 + ((v10 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
    v54 = sub_219BE2E54();
    type metadata accessor for SearchPrewarmResult();
    v41 = sub_219BE2F64();

    sub_218E0FE80(v14, type metadata accessor for SearchExpandRequest);
    return v41;
  }

  v59 = v21;
  if (!v18)
  {
    v67 = v19;
    sub_218E0DFF8(v17, v16);
    sub_218E0E7BC(a3, v75);
    goto LABEL_21;
  }

  v61 = v20;
  v57 = v6;
  LODWORD(v58) = sub_219417FCC(v71, v18);
  v31 = v17;
  v32 = v68;
  sub_218E0DFF8(v31, v68);
  sub_218E0E7BC(a3, v75);
  v33 = v57;
  sub_218E0DFF8(v74, v57);
  sub_218AA1438(v69, v32);

  sub_218AA1438(v74, v33);
  if (v58)
  {
    goto LABEL_26;
  }

LABEL_23:
  v41 = sub_219BE1D94();
  sub_2186D76E8(&qword_27CC0B2F0, MEMORY[0x277D6CAF0]);
  swift_allocError();
  (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D6CAE8], v41);
  swift_willThrow();
  return v41;
}

uint64_t sub_218E08E2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *(a3 + 8);
  v62 = *a3;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v59 = *(a3 + 32);
  v60 = v8;
  v58 = *(a3 + 40);
  v54 = v6;
  v55 = a1;
  v56 = type metadata accessor for SearchPrewarmResult();
  v10 = *(v56 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v56);
  v12 = a2 + *(v5 + 152);
  v14 = *v12;
  v13 = *(v12 + 1);
  v15 = *(v12 + 2);
  v16 = *(v12 + 3);
  v17 = *(v12 + 4);
  v18 = v12[40];
  if (!v7)
  {
    if (!v13)
    {
      v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_218E0DFF8(v14, 0);
      sub_218E0E7BC(a3, v61);
      v33 = v62;
      v34 = 0;
      goto LABEL_25;
    }

    v28 = *v12;
    v29 = *(v12 + 1);
    v57 = *(v12 + 2);
    v53 = v13;
    sub_218E0DFF8(v28, v29);
    sub_218E0E7BC(a3, v61);
    v30 = v62;
    v52 = v17;
LABEL_15:
    sub_218AA1438(v30, v7);
    v31 = v14;
    v32 = v53;
LABEL_22:
    sub_218AA1438(v31, v32);
    goto LABEL_23;
  }

  v57 = *(v12 + 2);
  if (!v13)
  {
    v53 = 0;
    sub_218E0DFF8(v14, 0);
    sub_218E0E7BC(a3, v61);
    v52 = v17;
    v30 = v62;
    sub_218E0DFF8(v62, v7);

    goto LABEL_15;
  }

  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v7;
  if (v62 != v14 || v13 != v7)
  {
    v53 = v11;
    v20 = v14;
    v21 = v16;
    v22 = v17;
    v23 = v10;
    v24 = v9;
    v25 = v18;
    v26 = sub_219BF78F4();
    v15 = v57;
    v16 = v21;
    v14 = v20;
    v18 = v25;
    v9 = v24;
    v10 = v23;
    v17 = v22;
    if ((v26 & 1) == 0)
    {
      v49 = v16;
      v48 = v18;
      sub_218E0DFF8(v20, v13);
      sub_218E0E7BC(a3, v61);
      goto LABEL_21;
    }
  }

  if (!v9)
  {
    if (v15)
    {
      v49 = v16;
      v48 = v18;
      sub_218E0DFF8(v14, v13);
      sub_218E0E7BC(a3, v61);
LABEL_21:
      v35 = v14;
      v36 = v62;
      v14 = v51;
      sub_218E0DFF8(v62, v51);
      sub_218AA1438(v35, v13);

      v31 = v36;
      v32 = v14;
      goto LABEL_22;
    }

    v53 = v13;
    sub_218E0DFF8(v14, v13);
    sub_218E0E7BC(a3, v61);
    v52 = v17;
    v39 = v51;
    sub_218E0DFF8(v62, v51);
    sub_218AA1438(v14, v53);

    v33 = v62;
    v34 = v39;
LABEL_25:
    sub_218AA1438(v33, v34);
LABEL_26:
    v40 = v55;
    v61[0] = (*(*(v54 + 88) + 8))(v55, *(v54 + 80));
    sub_218E0DD90(0);
    sub_2186D76E8(&unk_280EE5690, sub_218E0DD90);
    sub_219BE6E84();
    v41 = v40;
    v42 = v50;
    sub_218E0E818(v41, v50, type metadata accessor for SearchPrewarmResult);
    v43 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v44 = swift_allocObject();
    sub_218E0FE18(v42, v44 + v43, type metadata accessor for SearchPrewarmResult);
    v45 = sub_219BE2E54();
    v14 = sub_219BE2F74();

    return v14;
  }

  v49 = v16;
  v48 = v18;
  if (!v15)
  {
    sub_218E0DFF8(v14, v13);
    sub_218E0E7BC(a3, v61);
    v57 = 0;
    goto LABEL_21;
  }

  v47 = v9;
  v53 = v10;
  LODWORD(v52) = sub_219417FCC(v9, v15);
  sub_218E0DFF8(v14, v13);
  sub_218E0E7BC(a3, v61);
  v27 = v14;
  v14 = v51;
  sub_218E0DFF8(v62, v51);
  v10 = v53;
  sub_218AA1438(v27, v13);

  sub_218AA1438(v62, v14);
  if (v52)
  {
    goto LABEL_26;
  }

LABEL_23:
  v37 = sub_219BE1D94();
  sub_2186D76E8(&qword_27CC0B2F0, MEMORY[0x277D6CAF0]);
  swift_allocError();
  (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D6CAE8], v37);
  swift_willThrow();
  return v14;
}

uint64_t sub_218E09554(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = type metadata accessor for SearchResults();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF5CD4();
  v12 = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v25[3] = a2;
    v28 = v3;
    v15 = *(a1 + *(type metadata accessor for SearchPrewarmResult() + 24));
    v16 = *(v14 + 88);
    v25[1] = *(v16 + 32);
    v25[2] = a1;
    sub_218E0E818(a1, v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResults);
    v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    sub_218E0FE18(v10, v20 + v17, type metadata accessor for SearchResults);
    *(v20 + v18) = v16;
    *(v20 + v19) = v12;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
    swift_unknownObjectRetain();
    sub_219BDD154();

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_219BE5914();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v21 = a3[1];
  v26 = *a3;
  v27[0] = v21;
  *(v27 + 9) = *(a3 + 25);
  if (sub_2192FF134() || (sub_218A3058C() & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      *(swift_allocObject() + 16) = v24;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      sub_218E0E360(v23);
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_218E09840(void *a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_219BF1584();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v5;
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - v6;
  sub_218E0E1E8();
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_280EE7DC8, MEMORY[0x277D6CAF0]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_219BE1D94();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v47 - v16;
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_218E0D9F4(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  v57 = 0;
  v58 = 0xE000000000000000;
  v56 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v18 = v57;
  v19 = v58;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_2186FC3BC();
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  sub_219BE5314();

  v57 = a1;
  v20 = a1;
  v21 = swift_dynamicCast();
  v22 = *(v13 + 56);
  if (v21)
  {
    v22(v11, 0, 1, v12);
    v23 = v50;
    (*(v13 + 32))(v50, v11, v12);
    v24 = v51;
    (*(v13 + 104))(v51, *MEMORY[0x277D6CAE8], v12);
    v25 = sub_219BE1D84();
    v26 = *(v13 + 8);
    v26(v24, v12);
    result = (v26)(v23, v12);
    v29 = v54;
    v28 = v55;
    if (v25)
    {
      return result;
    }
  }

  else
  {
    v22(v11, 1, 1, v12);
    sub_218E0FDBC(v11, &qword_280EE7DC8, MEMORY[0x277D6CAF0]);
    v29 = v54;
    v28 = v55;
  }

  v30 = v53 + *(*v53 + 152);
  v31 = *v30;
  v32 = *(v30 + 8);
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 25) = 0u;
  sub_218AA1438(v31, v32);
  v33 = v52;
  sub_219BF1B74();
  if ((*(v29 + 48))(v33, 1, v28) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (qword_27CC07DD8 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v28, qword_27CCD8500);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v36 = Strong;
        v37 = v48;
        (*(v29 + 16))(v48, v34, v28);
        v38 = (*(v29 + 80) + 24) & ~*(v29 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = v36;
        (*(v29 + 32))(v39 + v38, v37, v28);
        swift_unknownObjectRetain();
        sub_219BE3494();

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v40 = *(v29 + 32);
    v41 = v49;
    v40(v49, v33, v28);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v42 = swift_unknownObjectWeakLoadStrong();
      if (v42)
      {
        v43 = v42;
        v44 = v48;
        (*(v29 + 16))(v48, v41, v28);
        v45 = (*(v29 + 80) + 24) & ~*(v29 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v43;
        v40((v46 + v45), v44, v28);
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return (*(v29 + 8))(v41, v28);
  }

  return result;
}

uint64_t sub_218E09F60(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = a1;
  v6 = *v4;
  v53 = a2;
  v54 = v6;
  v52 = type metadata accessor for SearchExpandRequest();
  MEMORY[0x28223BE20](v52);
  v57 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v58);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SearchFeedGapLocation(0);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_27CC12640, sub_2189539F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  sub_2189539F0();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3D74(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + 16);
  v63[0] = *a3;
  v63[1] = v24;
  v63[2] = *(a3 + 32);
  v64 = *(a3 + 48);
  v55 = v4;
  sub_219BE6EC4();
  v62 = *&v61[0];
  sub_2189871A8();
  sub_2186D76E8(&qword_280EE5510, sub_2189871A8);
  sub_219BE7B94();
  v25 = v20;
  v26 = v17;
  v27 = v60;

  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_219BE1D74();
  sub_219BEB1C4();

  if ((*(v26 + 48))(v14, 1, v16) == 1)
  {
    sub_218E0FDBC(v14, &qword_27CC12640, sub_2189539F0);
    v28 = v27[3];
    v29 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v28);
    MEMORY[0x21CEC0B20](0, v28, v29);
    return (*(v21 + 8))(v23, v25);
  }

  else
  {
    v51 = v23;
    v50 = v21;
    v31 = v59;
    v32 = v16;
    (*(v26 + 32))(v59, v14, v16);
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_218E0FE80(v9, type metadata accessor for SearchModel);
      v33 = v27[3];
      v34 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v33);
      MEMORY[0x21CEC0B20](0, v33, v34);
      (*(v26 + 8))(v31, v32);
      return (*(v50 + 8))(v51, v25);
    }

    else
    {
      v35 = *v9;
      v36 = v9[1];
      sub_218E0DBA4(0, &qword_280E8F9C0, type metadata accessor for SearchFeedGapLocation);
      v38 = v9 + *(v37 + 48);
      v39 = v56;
      sub_218E0FE18(v38, v56, type metadata accessor for SearchFeedGapLocation);
      v40 = v52;
      v41 = v57;
      v42 = sub_218E0E818(v39, v57 + *(v52 + 20), type metadata accessor for SearchFeedGapLocation);
      *v41 = v35;
      v41[1] = v36;
      *(v41 + *(v40 + 24)) = v53;
      MEMORY[0x28223BE20](v42);
      *(&v49 - 4) = v55;
      *(&v49 - 3) = v43;
      *(&v49 - 2) = v63;
      sub_219BE3204();
      sub_2187D9028();
      v44 = sub_219BF66A4();
      sub_219BE95D4();
      sub_219BE2F84();

      v45 = sub_219BF66A4();
      sub_218718690(v27, v61);
      v46 = swift_allocObject();
      sub_2186CB1F0(v61, v46 + 16);
      sub_219BE2F74();

      v47 = sub_219BF66A4();
      sub_218718690(v27, v61);
      v48 = swift_allocObject();
      sub_2186CB1F0(v61, v48 + 16);
      sub_219BE2FD4();

      sub_218E0FE80(v56, type metadata accessor for SearchFeedGapLocation);
      (*(v26 + 8))(v59, v32);
      (*(v50 + 8))(v51, v25);
      return sub_218E0FE80(v57, type metadata accessor for SearchExpandRequest);
    }
  }
}

uint64_t sub_218E0A718(_OWORD *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v7[4] = a1[4];
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  *&v7[0] = (*(*(v2 + 88) + 16))(v7, *(v2 + 80));
  sub_218E0DD90(0);
  sub_2186D76E8(&unk_280EE5690, sub_218E0DD90);
  v5 = sub_219BE6E84();

  return v5;
}

uint64_t sub_218E0A830(uint64_t a1, void *a2)
{
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_218E0D9F4(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  sub_2186CFDE4(0, &unk_280EE3DF0);
  sub_219BF7484();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v5 = sub_2186FC3BC();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_219BE5314();

  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  return MEMORY[0x21CEC0B20](0, v6, v7);
}

uint64_t sub_218E0AA10()
{
  v1 = *v0;
  v2 = sub_219BE61B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  sub_219BE6F74();

  result = (*(v3 + 88))(v5, v2);
  if (result != *MEMORY[0x277D6D520])
  {
    if (result == *MEMORY[0x277D6D518] || result == *MEMORY[0x277D6D510])
    {
      v8 = v0 + *(*v0 + 152);
      v9 = *v8;
      v10 = *(v8 + 8);
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 25) = 0u;
      sub_218AA1438(v9, v10);
      v11[1] = (*(*(v1 + 88) + 40))(*(v1 + 80));
      sub_218E0DD90(0);
      sub_2186D76E8(&unk_280EE5690, sub_218E0DD90);
      sub_219BE6EF4();
    }

    else
    {
      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_218E0AC58()
{
  v1 = *v0;
  sub_219BE6EC4();
  v2 = sub_218982890();

  if ((v2 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
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

  v4 = CACurrentMediaTime();
  sub_219BE6084();
  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  (*(v5 + 48))();

  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v4;
  *(v8 + 40) = v7;
  *(v8 + 48) = HIBYTE(v2) & 1;
  sub_218E0DD90(0);
  sub_2186D76E8(&unk_280EE5690, sub_218E0DD90);

  sub_219BE6EF4();
}

uint64_t sub_218E0AF2C(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  sub_218E0D9F4(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  sub_219BE85F4();
  sub_219BF7484();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_219BF5CD4();
  v5 = MEMORY[0x277D83A80];
  *(v4 + 96) = MEMORY[0x277D839F8];
  *(v4 + 104) = v5;
  *(v4 + 72) = v6;
  sub_219BF6214();
  sub_219BE5314();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
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

    else
    {
    }
  }

  return result;
}

uint64_t sub_218E0B154@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v130 = a4;
  LODWORD(v139) = a3;
  v138 = a2;
  v145 = a5;
  v124 = sub_219BF0B74();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BDD804();
  v128 = *(v129 - 8);
  v7 = MEMORY[0x28223BE20](v129);
  v126 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v127 = (&v102 - v9);
  sub_218E0DB50(0, &qword_280EE8E10, MEMORY[0x277D2FB40]);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = &v102 - v11;
  v118 = sub_219BDDED4();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v119 = (&v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = sub_219BDDBF4();
  v125 = *(v142 - 1);
  MEMORY[0x28223BE20](v142);
  v141 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v144 = v14;
  v140 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v121 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v136 = *(v16 - 8);
  v137 = v16;
  MEMORY[0x28223BE20](v16);
  v135 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_219BDE744();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_219BF0634();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v112 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &unk_280EE8AA0, MEMORY[0x277D30260]);
  MEMORY[0x28223BE20](v20 - 8);
  v109 = &v102 - v21;
  sub_218E0DB50(0, &unk_280EE8C40, MEMORY[0x277D30018]);
  MEMORY[0x28223BE20](v22 - 8);
  v107 = &v102 - v23;
  sub_2189539F0();
  v25 = v24;
  v103 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v104 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BDE7A4();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DC34(0, &qword_27CC0E0E8, MEMORY[0x277D6D618]);
  v133 = *(v28 - 8);
  v134 = v28;
  MEMORY[0x28223BE20](v28);
  v132 = &v102 - v29;
  v30 = sub_219BF0F34();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v35 = v34;
  v36 = *(v34 - 8);
  v37 = MEMORY[0x28223BE20](v34);
  v116 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v102 - v39;
  v41 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v102 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = a1;
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v72 = v135;
    v73 = v136;
    v74 = v137;
    v75 = v138;
    v76 = v139;
    if (!EnumCaseMultiPayload)
    {

      sub_218E0DBA4(0, &qword_280E8F9C0, type metadata accessor for SearchFeedGapLocation);
      v78 = type metadata accessor for SearchFeedGapLocation;
      v79 = &v43[*(v77 + 48)];
LABEL_10:
      sub_218E0FE80(v79, v78);
      v89 = type metadata accessor for SearchRouteModel();
      return (*(*(v89 - 8) + 56))(v145, 1, 1, v89);
    }

    (*(v136 + 32))(v135, v43, v137);
    sub_218E0DCF4(0, &qword_27CC11210, MEMORY[0x277D32CE0], sub_218CFD684);
    v88 = v145;
    v92 = v145 + *(v91 + 48);
    sub_219BF07D4();
    (*(v73 + 8))(v72, v74);
    *v92 = v75;
    v92[8] = v76 & 1;
    v69 = type metadata accessor for SearchRouteModel();
LABEL_12:
    swift_storeEnumTagMultiPayload();
    v70 = *(*(v69 - 8) + 56);
    v71 = v88;
    return v70(v71, 0, 1, v69);
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v36 + 16))(v40, v43, v35);
    v144 = v35;
    sub_219BF07D4();
    v80 = sub_219BF0F14();
    v142 = *(v31 + 8);
    v142(v33, v30);
    v81 = [v80 contentType];
    swift_unknownObjectRelease();
    if (v81 != 1)
    {
      v146 = *(v143 + *(*v143 + 136));
      sub_218E0DC14(0);
      sub_2186D76E8(&qword_280EE4BE8, sub_218E0DC14);
      v93 = v132;
      sub_219BE91E4();
      v94 = sub_218B13BE8(v40);
      (*(v133 + 8))(v93, v134);
      v95 = *(v36 + 8);
      v96 = v144;
      v95(v40, v144);
      sub_218E0DCF4(0, &qword_280EE8A90, MEMORY[0x277D30268], MEMORY[0x277D2FF20]);
      v98 = *(v97 + 48);
      v99 = v145;
      *v145 = v94;
      v100 = sub_219BDE294();
      (*(*(v100 - 8) + 16))(v99 + v98, v130, v100);
      sub_219BDD944();
      swift_storeEnumTagMultiPayload();
      v101 = type metadata accessor for SearchRouteModel();
      swift_storeEnumTagMultiPayload();
      (*(*(v101 - 8) + 56))(v99, 0, 1, v101);
      return (v95)(v43, v96);
    }

    v141 = *(v36 + 8);
    v82 = v40;
    v83 = v144;
    (v141)(v82, v144);
    (*(v36 + 32))();
    (*(v103 + 16))(v104, v131, v25);
    sub_219BF07D4();
    sub_219BF0F14();
    v142(v33, v30);
    v84 = sub_219BDE4D4();
    (*(*(v84 - 8) + 56))(v107, 1, 1, v84);
    v85 = sub_219BDEA34();
    (*(*(v85 - 8) + 56))(v109, 1, 1, v85);
    (*(v110 + 104))(v112, *MEMORY[0x277D32EA8], v111);
    sub_2186D76E8(&qword_280EDF480, type metadata accessor for SearchModel);
    v86 = v105;
    sub_219BDE794();
    v87 = v113;
    sub_219BDEB64();
    v88 = v145;
    sub_219BDE724();
    (*(v114 + 8))(v87, v115);
    (*(v106 + 8))(v86, v108);
    (v141)(v116, v83);
    v69 = type metadata accessor for SearchRouteModel();
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v78 = type metadata accessor for SearchModel;
    v79 = v43;
    goto LABEL_10;
  }

  v45 = v121;
  (*(v140 + 32))(v121, v43, v144);
  v46 = sub_219BE5F84();
  v47 = v119;
  *v119 = v46;
  v47[1] = v48;
  (*(v117 + 104))(v47, *MEMORY[0x277D2FDC8], v118);
  v49 = sub_219BDD944();
  (*(*(v49 - 8) + 56))(v120, 1, 1, v49);
  v50 = v141;
  sub_219BDDBD4();
  sub_218E0DBA4(0, &qword_27CC11390, MEMORY[0x277D2FC70]);
  v52 = *(v51 + 48);
  v53 = v122;
  sub_219BF07D4();
  v54 = sub_219BF0B44();
  v138 = *(v123 + 8);
  v55 = v124;
  v138(v53, v124);
  v56 = [v54 identifier];

  v57 = sub_219BF5414();
  v59 = v58;

  v60 = v127;
  *v127 = v57;
  v60[1] = v59;
  v61 = v125;
  (*(v125 + 16))(v60 + v52, v50, v142);
  v62 = v128;
  v63 = v129;
  (*(v128 + 104))(v60, *MEMORY[0x277D2FB08], v129);
  sub_219BF07D4();
  sub_219BF0AF4();
  v139 = v64;
  v138(v53, v55);
  (*(v62 + 16))(v126, v60, v63);
  v146 = *(v143 + *(*v143 + 136));
  sub_218E0DC14(0);
  sub_2186D76E8(&qword_280EE4BE8, sub_218E0DC14);
  v65 = v132;
  sub_219BE91E4();
  v66 = sub_218B15F58();
  (*(v133 + 8))(v65, v134);
  v147 = sub_219BDE904();
  v148 = MEMORY[0x277D301E8];
  v146 = v66;
  sub_219BDE674();
  swift_allocObject();
  v67 = sub_219BDE604();
  (*(v62 + 8))(v60, v63);
  (*(v61 + 8))(v141, v142);
  (*(v140 + 8))(v45, v144);
  v68 = v145;
  *v145 = v67;
  v69 = type metadata accessor for SearchRouteModel();
  swift_storeEnumTagMultiPayload();
  v70 = *(*(v69 - 8) + 56);
  v71 = v68;
  return v70(v71, 0, 1, v69);
}

uint64_t sub_218E0C4B4@<X0>(uint64_t *a1@<X1>, int a2@<W2>, _OWORD *a3@<X8>)
{
  v44 = a2;
  v5 = type metadata accessor for SearchSectionDescriptor();
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v43 = *(a1 + 40);
  sub_218953A84();
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = type metadata accessor for SearchModel;
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v22 = *v7;
        v23 = *(**v7 + 88);
        if (EnumCaseMultiPayload == 4)
        {
          v24 = type metadata accessor for RecipesSearchFeedGroup();
        }

        else
        {
          v24 = type metadata accessor for SavedRecipesSearchFeedGroup();
        }

        sub_218E0DA5C(v22 + *(v24 + 24) + v23, &v45, &qword_280EC6990, &qword_280EC69A0, &protocol descriptor for StreamingRecipeResults);

        if (!*(&v46 + 1))
        {
          v19 = &qword_280EC6990;
          v20 = &qword_280EC69A0;
          v21 = &protocol descriptor for StreamingRecipeResults;
          goto LABEL_36;
        }

        sub_2186CB1F0(&v45, v50);
        sub_2186CB1F0(v50, &v45);
        v32 = 3;
        goto LABEL_33;
      }

      v29 = *v7;
      v30 = *(**v7 + 88);
      v31 = type metadata accessor for SportsSearchFeedGroup();
      sub_218E0DA5C(v29 + *(v31 + 24) + v30, &v45, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);

      if (*(&v46 + 1))
      {
        sub_2186CB1F0(&v45, v50);
        sub_2186CB1F0(v50, &v45);
        v32 = 4;
LABEL_33:
        BYTE8(v47) = v32;
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v15 = *v7;
        v16 = *(**v7 + 88);
        v17 = type metadata accessor for ChannelsSearchFeedGroup();
        sub_218E0DA5C(v15 + *(v17 + 24) + v16, &v45, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);

        if (!*(&v46 + 1))
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      v34 = *v7;
      v35 = *(**v7 + 88);
      v36 = type metadata accessor for TopicsSearchFeedGroup();
      sub_218E0DA5C(v34 + *(v36 + 24) + v35, &v45, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);

      if (*(&v46 + 1))
      {
LABEL_28:
        sub_2186CB1F0(&v45, v50);
        sub_2186CB1F0(v50, &v45);
        v32 = 2;
        goto LABEL_33;
      }

LABEL_29:
      v19 = &qword_280ED01D0;
      v20 = &qword_280ED01E0;
      v21 = &protocol descriptor for StreamingTagResults;
      goto LABEL_36;
    }

    v26 = *v7;
    v27 = *(**v7 + 88);
    v28 = type metadata accessor for ArticlesSearchFeedGroup();
    sub_218E0DA5C(v26 + *(v28 + 24) + v27, &v45, &qword_280EC30F0, qword_280EC3100, &protocol descriptor for StreamingArticleResults);

    if (*(&v46 + 1))
    {
LABEL_20:
      sub_2186CB1F0(&v45, v50);
      sub_2186CB1F0(v50, &v45);
      BYTE8(v47) = 0;
LABEL_34:
      *&v48 = v9;
      *(&v48 + 1) = v8;
      *v49 = v11;
      *&v49[8] = v10;
      *&v49[16] = v12;
      v49[24] = v43;
      v49[25] = v44 & 1;
      v37 = v46;
      *a3 = v45;
      a3[1] = v37;
      v38 = v48;
      a3[2] = v47;
      a3[3] = v38;
      a3[4] = *v49;
      *(a3 + 74) = *&v49[10];
      v39 = type metadata accessor for SearchRouteModel();
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(a3, 0, 1, v39);
    }

LABEL_11:
    v19 = &qword_280EC30F0;
    v20 = qword_280EC3100;
    v21 = &protocol descriptor for StreamingArticleResults;
LABEL_36:
    sub_218E0DAE0(&v45, v19, v20, v21);
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      v33 = *(v7 + 1);
      v45 = *v7;
      v46 = v33;
      *&v47 = *(v7 + 4);
      if (*(&v33 + 1))
      {
LABEL_26:
        sub_2186CB1F0(&v45, v50);
        sub_2186CB1F0(v50, &v45);
        v32 = 1;
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 10)
    {
      v25 = *(v7 + 1);
      v45 = *v7;
      v46 = v25;
      *&v47 = *(v7 + 4);
      if (!*(&v25 + 1))
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v14 = type metadata accessor for SearchSectionDescriptor;
    }

    else if (EnumCaseMultiPayload != 7)
    {
      v18 = *(v7 + 1);
      v45 = *v7;
      v46 = v18;
      *&v47 = *(v7 + 4);
      if (*(&v18 + 1))
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    sub_218E0FE80(v7, v14);
  }

LABEL_37:
  v41 = type metadata accessor for SearchRouteModel();
  return (*(*(v41 - 8) + 56))(a3, 1, 1, v41);
}

uint64_t *sub_218E0CA28()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_218AA1438(*(v0 + *(*v0 + 152)), *(v0 + *(*v0 + 152) + 8));

  return v0;
}

uint64_t sub_218E0CB68()
{
  sub_218E0CA28();

  return swift_deallocClassInstance();
}

uint64_t sub_218E0CC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v96 = a4;
  v85 = a3;
  v84 = a2;
  v102 = a5;
  v6 = sub_219BDD804();
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v89 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = (&v79 - v9);
  sub_218E0DB50(0, &qword_280EE8E10, MEMORY[0x277D2FB40]);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v79 - v11;
  v81 = sub_219BDDED4();
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v13 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_219BDDBF4();
  v87 = *(v14 - 8);
  v88 = v14;
  MEMORY[0x28223BE20](v14);
  v86 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF0B74();
  v94 = *(v16 - 8);
  v95 = v16;
  MEMORY[0x28223BE20](v16);
  v93 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DC34(0, &qword_27CC0E0E8, MEMORY[0x277D6D618]);
  v99 = *(v18 - 8);
  v100 = v18;
  MEMORY[0x28223BE20](v18);
  v98 = &v79 - v19;
  v20 = sub_219BF0F34();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BF0614();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v79 - v29;
  sub_218B58CA4();
  v97 = a1;
  sub_219BE5FD4();
  v31 = (*(v25 + 88))(v30, v24);
  if (v31 == *MEMORY[0x277D32DB8] || v31 == *MEMORY[0x277D32D10] || v31 == *MEMORY[0x277D32E00])
  {
    goto LABEL_26;
  }

  if (v31 != *MEMORY[0x277D32E10])
  {
    if (v31 != *MEMORY[0x277D32E18] && v31 != *MEMORY[0x277D32DD8] && v31 != *MEMORY[0x277D32CF8])
    {
      if (v31 == *MEMORY[0x277D32DC0])
      {
        (*(v25 + 96))(v30, v24);
        sub_218E0DCF4(0, &qword_27CC11210, MEMORY[0x277D32CE0], sub_218CFD684);
        v44 = v102;
        v52 = v102 + *(v51 + 48);
        v53 = sub_219BF04A4();
        (*(*(v53 - 8) + 32))(v44, v30, v53);
        *v52 = 0;
        v52[8] = 1;
        v46 = type metadata accessor for SearchRouteModel();
        goto LABEL_6;
      }

      if (v31 != *MEMORY[0x277D32CF0] && v31 != *MEMORY[0x277D32E08] && v31 != *MEMORY[0x277D32DB0] && v31 != *MEMORY[0x277D32DE0])
      {
        if (v31 == *MEMORY[0x277D32DF0])
        {
          (*(v25 + 96))(v30, v24);
          (*(v94 + 32))();
          v54 = v85;

          v55 = sub_219BE5F84();
          *v13 = v84;
          v13[1] = v54;
          v13[2] = v55;
          v13[3] = v56;
          (*(v82 + 104))(v13, *MEMORY[0x277D2FDC0], v81);
          v57 = sub_219BDD944();
          (*(*(v57 - 8) + 56))(v83, 1, 1, v57);
          v58 = v86;
          sub_219BDDBD4();
          sub_218E0DBA4(0, &qword_27CC11390, MEMORY[0x277D2FC70]);
          v60 = *(v59 + 48);
          v61 = sub_219BF0B44();
          v62 = [v61 identifier];

          v63 = sub_219BF5414();
          v65 = v64;

          v66 = v90;
          *v90 = v63;
          v66[1] = v65;
          v68 = v87;
          v67 = v88;
          (*(v87 + 16))(v66 + v60, v58, v88);
          v69 = v91;
          v70 = v92;
          (*(v91 + 104))(v66, *MEMORY[0x277D2FB08], v92);
          v71 = sub_219BF0AF4();
          v96 = v72;
          v97 = v71;
          (*(v69 + 16))(v89, v66, v70);
          v103 = *(v101 + *(*v101 + 136));
          sub_218E0DC14(0);
          sub_2186D76E8(&qword_280EE4BE8, sub_218E0DC14);
          v73 = v98;
          sub_219BE91E4();
          v74 = sub_218B15F58();
          (*(v99 + 8))(v73, v100);
          v104 = sub_219BDE904();
          v105 = MEMORY[0x277D301E8];
          v103 = v74;
          sub_219BDE674();
          swift_allocObject();
          v75 = sub_219BDE604();
          (*(v69 + 8))(v66, v70);
          (*(v68 + 8))(v58, v67);
          (*(v94 + 8))(v93, v95);
          v76 = v102;
          *v102 = v75;
          v46 = type metadata accessor for SearchRouteModel();
          swift_storeEnumTagMultiPayload();
          v47 = *(*(v46 - 8) + 56);
          v48 = v76;
          goto LABEL_7;
        }

        if (v31 != *MEMORY[0x277D32D38] && v31 != *MEMORY[0x277D32DE8] && v31 != *MEMORY[0x277D32D18] && v31 != *MEMORY[0x277D32DA8] && v31 != *MEMORY[0x277D32DF8])
        {
          if (v31 != *MEMORY[0x277D32DD0])
          {
            v77 = type metadata accessor for SearchRouteModel();
            (*(*(v77 - 8) + 56))(v102, 1, 1, v77);
            return (*(v25 + 8))(v30, v24);
          }

          goto LABEL_27;
        }
      }
    }

LABEL_26:
    (*(v25 + 8))(v30, v24);
LABEL_27:
    v50 = type metadata accessor for SearchRouteModel();
    v47 = *(*(v50 - 8) + 56);
    v48 = v102;
    v49 = 1;
    return v47(v48, v49, 1, v50);
  }

  (*(v25 + 96))(v30, v24);
  v80 = v21;
  v32 = *(v21 + 32);
  v79 = v20;
  v32(v23, v30, v20);
  v103 = *(v101 + *(*v101 + 136));
  sub_218E0DC14(0);
  sub_2186D76E8(&qword_280EE4BE8, sub_218E0DC14);
  v33 = v98;
  sub_219BE91E4();
  v101 = sub_219BE5F84();
  v35 = v34;
  v95 = sub_219BF0E44();
  v37 = v36;
  sub_219BE5FD4();
  v38 = sub_219BF04D4();
  v40 = v39;
  (*(v25 + 8))(v28, v24);
  v41 = sub_218B14F98(v101, v35, v95, v37, v38, v40);

  (*(v99 + 8))(v33, v100);
  (*(v80 + 8))(v23, v79);
  sub_218E0DCF4(0, &qword_280EE8A90, MEMORY[0x277D30268], MEMORY[0x277D2FF20]);
  v43 = *(v42 + 48);
  v44 = v102;
  *v102 = v41;
  v45 = sub_219BDE294();
  (*(*(v45 - 8) + 16))(v44 + v43, v96, v45);
  sub_219BDD944();
  swift_storeEnumTagMultiPayload();
  v46 = type metadata accessor for SearchRouteModel();
LABEL_6:
  swift_storeEnumTagMultiPayload();
  v47 = *(*(v46 - 8) + 56);
  v48 = v44;
LABEL_7:
  v49 = 0;
  v50 = v46;
  return v47(v48, v49, 1, v50);
}

void sub_218E0D9F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_218E0DA5C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_218E0D9F4(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_218E0DAE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_218E0D9F4(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_218E0DB50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_218E0DBA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_218E0DC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SearchLayoutSectionDescriptor;
    v8[1] = type metadata accessor for SearchLayoutModel();
    v8[2] = sub_218B14D6C();
    v8[3] = sub_2186D76E8(&qword_280ED5450, type metadata accessor for SearchLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218E0DCF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_218E0DDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor();
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D76E8(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
    v8[3] = sub_2186D76E8(&qword_280EDF480, type metadata accessor for SearchModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218E0DEB4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  v5[0] = *v2;
  v5[1] = v3;
  v5[2] = *(v2 + 32);
  v6 = *(v2 + 48);
  return sub_21977B08C(v1, v5);
}

uint64_t sub_218E0DFF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_218E0E03C()
{
  v1 = *(v0 + 24);
  v2 = v1[1];
  v5 = *v1;
  v6[0] = v2;
  *(v6 + 9) = *(v1 + 25);
  v3 = off_282A865E8;
  type metadata accessor for SearchDataManager();
  return v3(&v5);
}

void sub_218E0E1E8()
{
  if (!qword_280E90778)
  {
    sub_2186FB6D4();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90778);
    }
  }
}

uint64_t sub_218E0E248()
{
  sub_219BF1584();

  return sub_218DA3A08();
}

uint64_t sub_218E0E2AC(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResults() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2198993DC(a1, v1 + v4, v6, v7);
}

uint64_t sub_218E0E360(uint64_t a1)
{
  v2 = sub_219BEB384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB394();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  sub_219BE8644();
  sub_219BE6BA4();

  v13 = (*(v7 + 88))(v12, v6);
  v14 = *MEMORY[0x277D6EC90];
  if (v13 == *MEMORY[0x277D6EC90])
  {
    (*(v7 + 96))(v12, v6);
    sub_2189DA200();
    v16 = *(v15 + 48);
    v17 = *(v15 + 64);
    v18 = sub_219BE73A4();
    (*(*(v18 - 8) + 8))(&v12[v17], v18);
    __swift_destroy_boxed_opaque_existential_1(&v12[v16]);
    v19 = sub_219BE66C4();
    return (*(*(v19 - 8) + 8))(v12, v19);
  }

  else
  {
    v21 = *(v7 + 8);
    v43 = v7 + 8;
    v44 = v21;
    v41 = v14;
    v21(v12, v6);
    v42 = v2;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v24 = sub_219BDB5E4();
    v40 = v5;
    v26 = v25;

    v27 = sub_218DA4254(a1);
    v29 = v28;
    v39 = sub_219BE8644();
    sub_2189DA200();
    v31 = &v10[*(v30 + 48)];
    v32 = *(v30 + 64);
    MEMORY[0x21CEBD440](v24, v26, v27, v29, 0);
    v33 = sub_219BE6C74();
    v34 = MEMORY[0x277D6D7C0];
    v31[3] = v33;
    v31[4] = v34;
    __swift_allocate_boxed_opaque_existential_1(v31);
    sub_219BE6C64();
    v35 = *MEMORY[0x277D6D9C8];
    v36 = sub_219BE73A4();
    (*(*(v36 - 8) + 104))(&v10[v32], v35, v36);
    (*(v7 + 104))(v10, v41, v6);
    v37 = v40;
    v38 = v42;
    (*(v3 + 104))(v40, *MEMORY[0x277D6ECA8], v42);
    sub_219BE6BD4();

    (*(v3 + 8))(v37, v38);
    return v44(v10, v6);
  }
}

uint64_t sub_218E0E818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_48Tm()
{
  v1 = (type metadata accessor for SearchResults() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_219BDF034();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[10];
  v6 = sub_219BE04F4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_218E0EAC0(__int128 *a1)
{
  v3 = *(type metadata accessor for SearchResults() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21977B6FC(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_218E0EB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*v3 + 88) + 24))(a1, a2, a3, *(*v3 + 80));
  sub_218E0DD90(0);
  sub_2186D76E8(&unk_280EE5690, sub_218E0DD90);
  sub_219BE6EF4();
}

uint64_t sub_218E0EC4C(uint64_t a1, uint64_t a2)
{
  (*(*(*v2 + 88) + 32))(a1, a2, *(*v2 + 80));
  sub_218E0DD90(0);
  sub_2186D76E8(&unk_280EE5690, sub_218E0DD90);
  sub_219BE6EF4();
}

uint64_t sub_218E0ED40(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = sub_219BE8C14();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF4B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDE294();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v27 - v14);
  v33 = type metadata accessor for SearchRouteModel();
  v16 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v29 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BF4B14();
  v19 = v18;
  v27[1] = a2;
  sub_219BF4B34();
  v20 = (*(v6 + 88))(v8, v5);
  if (v20 == *MEMORY[0x277D345E0])
  {
    (*(v6 + 96))(v8, v5);
    (*(v30 + 8))(v8, v31);
    goto LABEL_3;
  }

  if (v20 == *MEMORY[0x277D345D0])
  {
    v21 = MEMORY[0x277D2FEF8];
    goto LABEL_6;
  }

  if (v20 == *MEMORY[0x277D345D8])
  {
LABEL_3:
    v21 = MEMORY[0x277D2FF08];
LABEL_6:
    (*(v10 + 104))(v12, *v21, v9);
    goto LABEL_7;
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D2FF08], v9);
  (*(v6 + 8))(v8, v5);
LABEL_7:
  sub_218E0CC10(v34, v32, v19, v12, v15);

  (*(v10 + 8))(v12, v9);
  if ((*(v16 + 48))(v15, 1, v33) == 1)
  {
    return sub_218E0FDBC(v15, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  }

  v23 = v29;
  sub_218E0FE18(v15, v29, type metadata accessor for SearchRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_218E0FE80(v23, type metadata accessor for SearchRouteModel);
  }

  v25 = Strong;
  v26 = v28;
  sub_219BF4B44();
  sub_219BF4B14();
  sub_218B58CA4();
  sub_219BE5F84();
  __swift_project_boxed_opaque_existential_1((v25 + 48), *(v25 + 72));
  sub_219844B48(v23);

  (*(v30 + 8))(v26, v31);
  sub_218E0FE80(v23, type metadata accessor for SearchRouteModel);
  return swift_unknownObjectRelease();
}

uint64_t sub_218E0F24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_219BDE294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v19 - v10);
  v12 = type metadata accessor for SearchRouteModel();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D2FF08], v5);
  sub_218E0CC10(a1, a2, v20, v8, v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_218E0FDBC(v11, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  }

  else
  {
    sub_218E0FE18(v11, v15, type metadata accessor for SearchRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v17 = sub_2198454D4(v15);
      sub_218E0FE80(v15, type metadata accessor for SearchRouteModel);
      swift_unknownObjectRelease();
      return v17;
    }

    sub_218E0FE80(v15, type metadata accessor for SearchRouteModel);
  }

  return 0;
}

uint64_t sub_218E0F524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v3 = sub_219BE8C14();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = (&v41 - v6);
  v7 = type metadata accessor for SearchRouteModel();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchSectionDescriptor();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_280EE5888, sub_218953A84);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - v13;
  sub_218953A84();
  v16 = v15;
  v52 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v48 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3D74(0);
  v53 = v18;
  v51 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF0894();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v41 - v26;
  sub_219BEDF44();
  if ((*(v22 + 88))(v27, v21) == *MEMORY[0x277D32F88])
  {
    v41 = v3;
    (*(v22 + 16))(v25, v27, v21);
    (*(v22 + 96))(v25, v21);
    v28 = sub_219BF13B4();
    v29 = *(v28 - 8);
    if ((*(v29 + 88))(v25, v28) == *MEMORY[0x277D33330])
    {
      sub_219BE6EC4();
      v59 = v54;
      sub_2189871A8();
      sub_2186D76E8(&qword_280EE5510, sub_2189871A8);
      sub_219BE7B94();

      v30 = v53;
      sub_219BEB244();
      v31 = v52;
      if ((*(v52 + 48))(v14, 1, v16) == 1)
      {
        (*(v51 + 8))(v20, v30);
        sub_218E0FDBC(v14, &qword_280EE5888, sub_218953A84);
      }

      else
      {
        v33 = v48;
        (*(v31 + 32))();
        sub_219BE6934();
        sub_2190B9134(&v54);
        sub_218E0FE80(v11, type metadata accessor for SearchSectionDescriptor);
        v34 = v55;
        if (v55)
        {
          v49 = v56;
          v50 = v57;
          v35 = v54;
          v58 &= 1u;
          v36 = v47;
          sub_218E0C4B4(&v54, 1, v47);
          sub_218AA1438(v35, v34);
          if ((*(v45 + 48))(v36, 1, v46) == 1)
          {
            (*(v52 + 8))(v48, v16);
            (*(v51 + 8))(v20, v53);
            sub_218E0FDBC(v36, &qword_27CC12648, type metadata accessor for SearchRouteModel);
          }

          else
          {
            v37 = v44;
            sub_218E0FE18(v36, v44, type metadata accessor for SearchRouteModel);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v39 = Strong;
              v40 = v42;
              sub_219BE8C04();
              sub_219BE6944();
              __swift_project_boxed_opaque_existential_1((v39 + 48), *(v39 + 72));
              sub_219844B48(v37);

              (*(v43 + 8))(v40, v41);
              sub_218E0FE80(v37, type metadata accessor for SearchRouteModel);
              (*(v52 + 8))(v48, v16);
              (*(v51 + 8))(v20, v53);
              swift_unknownObjectRelease();
            }

            else
            {
              sub_218E0FE80(v37, type metadata accessor for SearchRouteModel);
              (*(v52 + 8))(v48, v16);
              (*(v51 + 8))(v20, v53);
            }
          }
        }

        else
        {
          (*(v31 + 8))(v33, v16);
          (*(v51 + 8))(v20, v30);
        }
      }
    }

    else
    {
      (*(v29 + 8))(v25, v28);
    }
  }

  return (*(v22 + 8))(v27, v21);
}

uint64_t sub_218E0FDBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218E0DB50(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218E0FE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E0FE80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218E0FF40()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = 0;
LABEL_25:
    if (__OFSUB__(v3, 1))
    {
      goto LABEL_30;
    }

    return result;
  }

  v3 = 0;
  v4 = (v1 + 32);
  v5 = 0.0;
  while (1)
  {
    v7 = *v4++;
    v6 = v7;
    if (v7 <= 3)
    {
      break;
    }

    if ((v6 - 6) >= 3)
    {
      if (v6 == 4)
      {
        goto LABEL_11;
      }

      v5 = v5 + 11.0;
    }

LABEL_4:
    if (!--v2)
    {
      goto LABEL_25;
    }
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
LABEL_14:
      if (*(v0 + 24))
      {
        v9 = 30.0;
      }

      else
      {
        v9 = 22.0;
      }

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      result = sub_219BED0C4();
      v9 = 51.0;
      if (result)
      {
        v9 = 68.0;
      }

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        goto LABEL_29;
      }
    }

    v5 = v5 + v9;
    goto LABEL_4;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = __OFADD__(v3++, 1);
  if (!v8)
  {
    v5 = v5 + 22.0;
    goto LABEL_4;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

double sub_218E1008C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    result = 0.0;
    while (1)
    {
      v7 = *v3++;
      v6 = v7;
      if (v7 <= 2)
      {
        if (v6)
        {
          v8 = v6 == 1;
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          goto LABEL_5;
        }

        if (*(v0 + 24))
        {
          v5 = 6.0;
        }

        else
        {
          v5 = 2.0;
        }
      }

      else
      {
        if (((1 << v6) & 0x198) != 0)
        {
          goto LABEL_5;
        }

        if (v6 == 5)
        {
          v5 = 33.0;
        }

        else
        {
          v5 = 35.0;
        }
      }

      result = result + v5;
LABEL_5:
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 0.0;
}

uint64_t sub_218E10124()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218E1015C()
{

  v1 = OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions;
  v2 = sub_219BE8164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagViewLayoutOptions()
{
  result = qword_280ECC7F8;
  if (!qword_280ECC7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218E10254()
{
  result = sub_219BE8164();
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

unint64_t sub_218E10354()
{
  result = qword_27CC12650;
  if (!qword_27CC12650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12650);
  }

  return result;
}

uint64_t sub_218E103B8()
{
  v1 = type metadata accessor for CuratedTagFeedGroupConfigData();
  if ((*(v0 + v1[7]) & 1) == 0)
  {
    if (*(v0 + v1[8]))
    {
      if (*(v0 + v1[9]))
      {
        if (*(v0 + v1[10]))
        {
          if (*(v0 + v1[11]))
          {
            if (*(v0 + v1[12]))
            {
              v2 = 33;
              if (*(v0 + v1[14]))
              {
                return v2;
              }

              return v2 | 2;
            }

            v2 = 33;
            goto LABEL_93;
          }

          v2 = 16777249;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }

        else if (*(v0 + v1[11]))
        {
          v2 = 8388641;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 25165857;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[10]))
      {
        if (*(v0 + v1[11]))
        {
          v2 = 2097185;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 18874401;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[11]))
      {
        v2 = 10485793;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 27263009;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }

LABEL_93:
      v2 |= 0x800uLL;
      goto LABEL_94;
    }

    if (*(v0 + v1[9]))
    {
      if (*(v0 + v1[10]))
      {
        if (*(v0 + v1[11]))
        {
          v3 = 1048577;
LABEL_59:
          if (*(v0 + v1[12]) == 1)
          {
            v2 = v3 + 32;
            if (*(v0 + v1[14]))
            {
              return v2;
            }

            return v2 | 2;
          }

          v2 = v3 | 0x20;
          goto LABEL_93;
        }

        v6 = 17825793;
      }

      else
      {
        if (*(v0 + v1[11]))
        {
          v3 = 9437185;
          goto LABEL_59;
        }

        v6 = 26214401;
      }
    }

    else if (*(v0 + v1[10]))
    {
      if (*(v0 + v1[11]))
      {
        v3 = 3145729;
        goto LABEL_59;
      }

      v6 = 19922945;
    }

    else
    {
      if (*(v0 + v1[11]))
      {
        v3 = 11534337;
        goto LABEL_59;
      }

      v6 = 28311553;
    }

    v2 = v6 | 0x20;
    goto LABEL_92;
  }

  if (!*(v0 + v1[8]))
  {
    if (*(v0 + v1[9]))
    {
      if (*(v0 + v1[10]))
      {
        if (*(v0 + v1[11]))
        {
          v2 = 1048577;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 17825793;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[11]))
      {
        v2 = 9437185;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 26214401;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }
    }

    else if (*(v0 + v1[10]))
    {
      if (*(v0 + v1[11]))
      {
        v2 = 3145729;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 19922945;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }
    }

    else if (*(v0 + v1[11]))
    {
      v2 = 11534337;
      if (*(v0 + v1[12]))
      {
        goto LABEL_94;
      }
    }

    else
    {
      v2 = 28311553;
      if (*(v0 + v1[12]))
      {
        goto LABEL_94;
      }
    }

    goto LABEL_93;
  }

  if (!*(v0 + v1[9]))
  {
    if (*(v0 + v1[10]))
    {
      if (*(v0 + v1[11]))
      {
        v4 = 1048577;
      }

      else
      {
        v4 = 17825793;
      }
    }

    else if (*(v0 + v1[11]))
    {
      v4 = 9437185;
    }

    else
    {
      v4 = 26214401;
    }

    v2 = v4 + 0x100000;
    if (*(v0 + v1[12]))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (*(v0 + v1[10]))
  {
    if (*(v0 + v1[11]))
    {
      if (*(v0 + v1[12]) == 1)
      {
        v2 = 1;
        if (*(v0 + v1[14]))
        {
          return v2;
        }

        return v2 | 2;
      }

      v2 = 1;
      goto LABEL_93;
    }

    v2 = 16777217;
LABEL_92:
    if (*(v0 + v1[12]))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (*(v0 + v1[11]))
  {
    v5 = 3145729;
  }

  else
  {
    v5 = 19922945;
  }

  v2 = v5 + 5242880;
  if (!*(v0 + v1[12]))
  {
    goto LABEL_93;
  }

LABEL_94:
  if ((*(v0 + v1[14]) & 1) == 0)
  {
    return v2 | 2;
  }

  return v2;
}

uint64_t sub_218E106E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = type metadata accessor for CuratedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v39);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF1934();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E11E68(0, &qword_280E8CBC8, MEMORY[0x277D844C8]);
  v43 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E11DB0();
  v42 = v11;
  v12 = v44;
  sub_219BF7B34();
  if (v12)
  {
    v25 = a1;
  }

  else
  {
    v13 = v9;
    v14 = a1;
    v44 = v4;
    v56 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    v15 = v5;
    v38 = v7;
    v55 = 2;
    sub_218D0B4BC();
    sub_219BF7674();
    v37 = v56;
    v55 = 0;
    v16 = sub_219BF76F4();
    v54 = 3;
    v35 = v16;
    v36 = v18;
    v19 = v42;
    v20 = v43;
    sub_219BF7674();
    v34 = v55;
    v53 = 4;
    sub_219BF7674();
    v33 = v54;
    v52 = 5;
    sub_219BF7674();
    v32 = v53;
    v51 = 6;
    sub_219BF7674();
    v31 = v52;
    v50 = 7;
    sub_219BF7674();
    v30 = v51;
    v49 = 8;
    sub_219BF7674();
    v29 = v50;
    v48 = 9;
    sub_219BF7674();
    v28 = v49;
    v47 = 10;
    sub_219BF7674();
    v27 = v48;
    v46 = 11;
    sub_219BF7674();
    v21 = v47;
    v45 = 12;
    sub_219BF7674();
    (*(v13 + 8))(v19, v20);
    LOBYTE(v19) = v46;
    v22 = v39;
    v23 = v44;
    (*(v41 + 32))(v44 + *(v39 + 20), v38, v15);
    *(v23 + v22[6]) = v37;
    v24 = v36;
    *v23 = v35;
    v23[1] = v24;
    *(v23 + v22[7]) = (v34 == 2) | v34 & 1;
    *(v23 + v22[8]) = (v33 == 2) | v33 & 1;
    *(v23 + v22[9]) = (v32 == 2) | v32 & 1;
    *(v23 + v22[10]) = (v31 == 2) | v31 & 1;
    *(v23 + v22[11]) = (v30 == 2) | v30 & 1;
    *(v23 + v22[12]) = v29 & 1;
    *(v23 + v22[13]) = v28 & 1;
    *(v23 + v22[14]) = (v27 == 2) | v27 & 1;
    *(v23 + v22[15]) = (v21 == 2) | v21 & 1;
    *(v23 + v22[16]) = v19 & 1;
    sub_218E11E04(v23, v40);
    v25 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

unint64_t sub_218E10D00(char a1)
{
  result = 0x65707974627573;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E6F63;
      break;
    case 2:
    case 4:
    case 5:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_218E10E60(void *a1)
{
  v3 = v1;
  sub_218E11E68(0, &qword_27CC12660, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E11DB0();
  sub_219BF7B44();
  v12[15] = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v10 = type metadata accessor for CuratedTagFeedGroupConfigData();
    v12[14] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
    v12[13] = *(v3 + *(v10 + 24));
    v12[12] = 2;
    sub_218D0B6A0();
    sub_219BF77E4();
    v12[11] = 3;
    sub_219BF7804();
    v12[10] = 4;
    sub_219BF7804();
    v12[9] = 5;
    sub_219BF7804();
    v12[8] = 6;
    sub_219BF7804();
    v12[7] = 7;
    sub_219BF7804();
    v12[6] = 8;
    sub_219BF7804();
    v12[5] = 9;
    sub_219BF7804();
    v12[4] = 10;
    sub_219BF7804();
    v12[3] = 11;
    sub_219BF7804();
    v12[2] = 12;
    sub_219BF7804();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E1121C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E117D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E11250(uint64_t a1)
{
  v2 = sub_218E11DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E1128C(uint64_t a1)
{
  v2 = sub_218E11DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E11314()
{
  sub_219BF5524();
}

uint64_t sub_218E11440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218E11BE0();
  *a1 = result;
  return result;
}

void sub_218E11470(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x5464657461727563;
  v4 = 0xEE006C656E6E6168;
  v5 = 0x43676E696B636162;
  if (v2 != 5)
  {
    v5 = 0xD00000000000001ALL;
    v4 = 0x8000000219CD7460;
  }

  v6 = 0x8000000219CD7410;
  v7 = 0xD000000000000026;
  if (v2 != 3)
  {
    v7 = 0x54676E696B636162;
    v6 = 0xEA00000000006761;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x8000000219CD73D0;
  v9 = 0xD000000000000016;
  if (v2 != 1)
  {
    v9 = 0xD00000000000001ALL;
    v8 = 0x8000000219CD73F0;
  }

  if (*v1)
  {
    v3 = v9;
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006761;
  }

  if (*v1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_218E11618()
{
  result = qword_27CC12658;
  if (!qword_27CC12658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12658);
  }

  return result;
}

uint64_t sub_218E1166C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = type metadata accessor for CuratedTagFeedGroupConfigData();
  v6 = v5[6];
  v7 = *(a2 + v6);
  if (*(a1 + v6) == 7)
  {
    if (v7 != 7)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v7 == 7)
    {
      goto LABEL_20;
    }

    v8 = v5;
    v9 = sub_21908AACC(*(a1 + v6), v7);
    v5 = v8;
    if ((v9 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (*(a1 + v5[7]) == *(a2 + v5[7]) && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]) && *(a1 + v5[12]) == *(a2 + v5[12]) && *(a1 + v5[13]) == *(a2 + v5[13]) && *(a1 + v5[14]) == *(a2 + v5[14]) && *(a1 + v5[15]) == *(a2 + v5[15]))
  {
    v10 = *(a1 + v5[16]) ^ *(a2 + v5[16]) ^ 1;
    return v10 & 1;
  }

LABEL_20:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_218E117D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707974627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CF3AE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CE5B80 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CE5BA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CE5BC0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5BE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C00 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C40 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CFA350 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219CFA370 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_218E11BE0()
{
  v0 = sub_219BF7614();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_218E11C2C()
{
  result = qword_280EE2420;
  if (!qword_280EE2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2420);
  }

  return result;
}

uint64_t type metadata accessor for CuratedTagFeedGroupConfigData()
{
  result = qword_280EB1008;
  if (!qword_280EB1008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E11CF4()
{
  sub_219BF1934();
  if (v0 <= 0x3F)
  {
    sub_218D0A09C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_218E11DB0()
{
  result = qword_280EB1048;
  if (!qword_280EB1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1048);
  }

  return result;
}

uint64_t sub_218E11E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTagFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E11E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E11DB0();
    v7 = a3(a1, &type metadata for CuratedTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CuratedTagFeedGroupConfigData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CuratedTagFeedGroupConfigData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_218E12020()
{
  result = qword_27CC12668;
  if (!qword_27CC12668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12668);
  }

  return result;
}

unint64_t sub_218E12078()
{
  result = qword_280EB1038;
  if (!qword_280EB1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1038);
  }

  return result;
}

unint64_t sub_218E120D0()
{
  result = qword_280EB1040;
  if (!qword_280EB1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1040);
  }

  return result;
}

void sub_218E12124(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v24 = sub_219BDF514();
  v23[0] = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E124A0();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDCC14();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(v23 - v14, a1, v13);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v12, v9);
    v16 = sub_219BDCC04();
    v17 = sub_219BDD084();
    v19 = v18;

    if (!v3)
    {
      sub_218E12534(&qword_280EE8768, MEMORY[0x277D2DB08]);
      v20 = v24;
      sub_219BE1974();
      sub_2186C6190(v17, v19);
      (*(v23[0] + 32))(a3, v7, v20);
      v21 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
    }
  }

  else
  {
    v22 = type metadata accessor for EngagementEvent();
    (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }
}

void sub_218E124A0()
{
  if (!qword_280EE8F70)
  {
    sub_219BDF524();
    sub_218E12534(&qword_280EE8760, MEMORY[0x277D2DB18]);
    v0 = sub_219BDCC14();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8F70);
    }
  }
}

uint64_t sub_218E12534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E1257C(char a1)
{
  v2 = sub_219BEE714();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E12B60();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEE704();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0644();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 104);
  v18 = (v10 + 104);
  if (a1)
  {
    v17(v15, *MEMORY[0x277D32EF8]);
    if (a1 == 1)
    {
      v19 = MEMORY[0x277D32110];
    }

    else
    {
      v19 = MEMORY[0x277D32118];
    }

    (*v18)(v12, *v19, v9);
    v23 = sub_219BEE734();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  }

  else
  {
    v17(v15, *MEMORY[0x277D32EF0]);
    (*v18)(v12, *MEMORY[0x277D32110], v9);
    v20 = *MEMORY[0x277D32140];
    v21 = sub_219BEE734();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v8, v20, v21);
    (*(v22 + 56))(v8, 0, 1, v21);
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D32130], v2);
  return sub_219BEE744();
}

unint64_t sub_218E12934()
{
  result = qword_280EC5DD0;
  if (!qword_280EC5DD0)
  {
    type metadata accessor for AudioFeedServiceContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC5DD0);
  }

  return result;
}

uint64_t sub_218E1298C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BDBD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE754();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  sub_218E1257C(a1);
  v12 = a1 != 1;
  v13 = type metadata accessor for AudioFeedServiceContext();
  (*(v9 + 16))(a2 + *(v13 + 28), v11, v8);
  sub_219BDBD54();
  v14 = sub_219BDBD44();
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  *a2 = v14;
  *(a2 + 8) = v16;
  result = (*(v9 + 8))(v11, v8);
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 16) = v12;
  return result;
}

void sub_218E12B60()
{
  if (!qword_280E91B30)
  {
    sub_219BEE734();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91B30);
    }
  }
}

uint64_t sub_218E12BB8()
{
  v0 = sub_219BED214();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219BED1F4();
  sub_219BED244();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = sub_219BE2E14();
  v7(v6, v0);
  return v8;
}

void sub_218E12D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186C6148(0, &qword_27CC12690);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v3;
  v6 = v3;
  v7 = sub_219BE2E54();
  sub_219BE2F64();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = sub_219BE2E54();
  sub_219BE2F74();

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = sub_219BE2E54();
  sub_219BE2FD4();
}

void sub_218E12F18(void *a1)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v9, &v10);
    sub_2186C6148(0, &qword_280E8E480);
    swift_dynamicCast();
    sub_218AAFB68();
    sub_2186C6148(0, &qword_280E8E3B0);
    v4 = sub_219BF66A4();
    *(swift_allocObject() + 16) = v8;
    sub_2186C6148(0, &qword_27CC12690);
    v5 = v8;
    sub_219BE2FB4();

    *(swift_allocObject() + 16) = v5;
    v6 = v5;
    v7 = sub_219BE2E54();
    sub_219BE3054();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218E1318C(void **a1, void *a2)
{
  v3 = *a1;
  sub_219BE3204();
  v4 = swift_allocObject();
  v4[2] = a2;
  v4[3] = v3;
  v4[4] = 20;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_218E13830;
  *(v5 + 24) = v4;
  v6 = a2;
  v7 = v3;
  v8 = sub_219BE2E54();
  v9 = sub_219BE2F64();

  return v9;
}

uint64_t sub_218E132A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = MEMORY[0x28223BE20](a1);
    sub_219BE3204();
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = v4;
    v5[4] = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_218E138DC;
    *(v6 + 24) = v5;
    v7 = v2;
    v8 = v4;
    v9 = sub_219BE2E54();
    v10 = sub_219BE2F64();

    return v10;
  }

  else
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_21879D924();
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218E13458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_219BE1B14();
}

void sub_218E134D8(uint64_t a1, void (*a2)(id))
{
  sub_218A450F0();
  sub_219BF7484();
  v3 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v4 = sub_219BF53D4();

  v5 = [v3 initWithMessage_];

  a2(v5);
}

uint64_t sub_218E13640()
{
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_218E136E0(void *a1)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  [a1 keyboardOrActionSwitchToNextViewController];
  sub_21879D924();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218E1386C()
{
  v1 = *(v0 + 32);
  if (!__OFSUB__(v1, 1))
  {
    return sub_218E132A4(*(v0 + 24), v1 - 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_218E138F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BF12B4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id sub_218E13964(uint64_t a1, double *a2, char *a3)
{
  v142 = a1;
  sub_218846CFC(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v123 - v6;
  v7 = sub_219BDCAF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 setIsAccessibilityElement_];
  v11 = *&a3[OBJC_IVAR____TtC7NewsUI213SportsTagView_iconImageView];
  [v11 setIsAccessibilityElement_];
  v138 = *&a3[OBJC_IVAR____TtC7NewsUI213SportsTagView_accessoryButton];
  [v138 setIsAccessibilityElement_];
  [a3 setFrame_];
  [v11 setFrame_];
  v12 = [v11 layer];
  v13 = sub_219BF0CD4();
  v14 = *(v8 + 104);
  LODWORD(v147) = *MEMORY[0x277D6D198];
  v145 = v14;
  v146 = v8 + 104;
  (v14)(v10);
  v148 = v13;
  sub_219BF0CC4();
  v16 = v15;
  v17 = *(v8 + 8);
  v143 = v10;
  v144 = v17;
  v140 = v7;
  v136 = v8 + 8;
  v17(v10, v7);
  [v12 setCornerRadius_];

  v124 = v11;
  v18 = [v11 layer];
  [v18 setCornerCurve_];

  v141 = a3;
  v135 = *&a3[OBJC_IVAR____TtC7NewsUI213SportsTagView_nameLabel];
  v137 = *(v142 + 16);
  v19 = [v137 displayName];
  if (!v19)
  {
    sub_219BF5414();
    v19 = sub_219BF53D4();
  }

  sub_218846CFC(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  v132 = v20;
  inited = swift_initStackObject();
  v131 = xmmword_219C09EC0;
  *(inited + 16) = xmmword_219C09EC0;
  v22 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v23 = objc_opt_self();
  v129 = v22;
  v24 = [v23 labelColor];
  v25 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 40) = v24;
  v26 = *MEMORY[0x277D740A8];
  v130 = v25;
  *(inited + 64) = v25;
  *(inited + 72) = v26;
  v27 = sub_2186C6148(0, &qword_280E8DB00);
  v127 = v26;
  v28 = sub_219BF6BD4();
  v29 = v143;
  v30 = v140;
  v145(v143, v147, v140);
  v31 = sub_219BF0CB4();

  v144(v29, v30);
  v133 = v27;
  *(inited + 104) = v27;
  *(inited + 80) = v31;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  v33 = v32;
  swift_arrayDestroy();
  v34 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  v36 = v35;
  v37 = sub_218819ABC(&qword_280E8E118, type metadata accessor for Key);
  v128 = v36;
  v126 = v37;
  v38 = sub_219BF5204();

  v39 = [v34 initWithString:v19 attributes:v38];

  v40 = &selRef_boldSystemFontOfSize_;
  v41 = v135;
  [v135 setAttributedText_];

  v42 = a2[8];
  v43 = a2[9];
  v44 = a2[10];
  v45 = a2[11];
  v134 = a2;
  v46 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  [v41 setFrame_];
  v135 = *&v141[OBJC_IVAR____TtC7NewsUI213SportsTagView_secondaryNameLabel];
  v47 = sub_21943359C();
  if (v48)
  {
    v123 = v47;
    v49 = swift_initStackObject();
    *(v49 + 16) = v131;
    v132 = v33;
    v50 = v129;
    *(v49 + 32) = v129;
    v51 = objc_allocWithZone(MEMORY[0x277D75348]);
    v52 = v50;
    *(v49 + 40) = [v51 initWithRed:0.43 green:0.43 blue:0.45 alpha:1.0];
    v53 = v127;
    *(v49 + 64) = v130;
    *(v49 + 72) = v53;
    v54 = v53;
    v55 = v133;
    v56 = sub_219BF6BD4();
    v57 = v143;
    v145(v143, v147, v30);
    v58 = sub_219BF0CB4();

    v144(v57, v30);
    *(v49 + 104) = v55;
    *(v49 + 80) = v58;
    sub_2188195F4(v49);
    swift_setDeallocating();
    swift_arrayDestroy();
    v59 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v60 = sub_219BF53D4();
    v61 = sub_219BF5204();

    v62 = v59;
    v46 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v63 = [v62 initWithString:v60 attributes:v61];

    v40 = &selRef_boldSystemFontOfSize_;
  }

  else
  {
    v63 = 0;
  }

  v64 = v135;
  [v135 v40[241]];

  v65 = v134;
  [v64 v46[256]];
  v66 = v137;
  v67 = [v137 asSports];
  v68 = v139;
  v69 = v143;
  if (v67)
  {
    v70 = v139;
    v71 = [v67 sportsType];
    swift_unknownObjectRelease();
    sub_218846CFC(0, &qword_27CC12698, type metadata accessor for FCSportsType, MEMORY[0x277D83D88]);
    if (v71 >= 0xC)
    {
      result = sub_219BF78E4();
      __break(1u);
      return result;
    }

    v72 = dbl_219C3CA78[v71];
    v73 = v140;
    v74 = v147;
    v75 = v145;
    v68 = v70;
    v76 = v141;
  }

  else
  {
    v72 = 0.85;
    v73 = v140;
    v76 = v141;
    v74 = v147;
    v75 = v145;
  }

  v147 = *(v68 + 16);
  v75(v69, v74, v73);
  sub_219BF0CC4();
  v78 = v77;
  v144(v69, v73);
  v79 = sub_218EDA8D4();
  if (v80)
  {
    v81 = v79;
    v82 = v80;
  }

  else
  {
    v83 = [v66 displayName];
    v81 = sub_219BF5414();
    v82 = v84;
  }

  if ([v66 tagType] - 1 < 2)
  {
    v85 = [v66 groupTitleColor];
    v86 = *(v147 + 56);
    swift_unknownObjectRetain();
    if (v85)
    {
      v87 = [v85 ne_color];

      type metadata accessor for TopicColorFeedNavImageStyler();
      v88 = swift_allocObject();
      *(v88 + 16) = v87;
      *(v88 + 24) = v86;
      v86 = v88;
    }

    swift_unknownObjectRetain();
    v89 = v124;
    v90 = [v124 traitCollection];
    [v90 displayScale];
    v92 = v91;

    v93 = type metadata accessor for FeedNavImageAssetHandle();
    v94 = objc_allocWithZone(v93);
    v95 = &v94[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v95 = 0;
    *(v95 + 1) = 0;
    *&v94[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    *&v94[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v66;
    v96 = swift_unknownObjectRetain();
    v97 = sub_219352488(v96);
    v98 = &v94[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    *v98 = v97;
    v98[1] = v99;
    v100 = &v94[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    *v100 = v78;
    v100[1] = v78;
    *&v94[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v86;
    *&v94[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v92;
    *&v94[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
    v149.receiver = v94;
    v149.super_class = v93;
    v101 = objc_msgSendSuper2(&v149, sel_init);
    sub_218A462FC(v101, v89, v81, v82, 0, v78, v78, v72);
    swift_unknownObjectRelease();

    v46 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  }

  v102 = v46[256];
  v103 = v138;
  [v138 v102];
  [v103 accessibilityActivationPoint];
  [v76 setAccessibilityActivationPoint_];
  v104 = *MEMORY[0x277D765D0];
  v105 = [v76 accessibilityTraits];
  if ((v104 & ~v105) != 0)
  {
    v106 = v104;
  }

  else
  {
    v106 = 0;
  }

  [v76 setAccessibilityTraits_];
  v107 = *(v65 + 160);
  if (v107 == 5)
  {
    return [v103 setHidden_];
  }

  v109 = qword_280EDB508;
  v110 = v103[qword_280EDB508];
  v103[qword_280EDB508] = v107;
  sub_219BE61D4();
  if (v110 != v103[v109] || !*&v103[qword_280F620E8] || !*&v103[qword_280F620E0])
  {
    sub_218EC2D64(0);
  }

  [v103 setHidden_];
  sub_219BEAF14();
  swift_unknownObjectRetain();
  v111 = v125;
  sub_219BF3324();
  v112 = sub_219BF3344();
  v113 = *(*(v112 - 8) + 56);
  v113(v111, 0, 1, v112);
  sub_219BE89C4();

  sub_218AD7DC0(v111);
  v114 = v141;
  sub_218E14B88(v150[0]);
  if (*(v65 + 161))
  {
    sub_219BEAF14();
    swift_unknownObjectRetain();
    sub_219BF3324();
    v113(v111, 0, 1, v112);
    v115 = swift_allocObject();
    swift_weakInit();
    v116 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v117 = swift_allocObject();
    *(v117 + 16) = v115;
    *(v117 + 24) = v116;
    sub_218E14F94();
    sub_219BE89B4();

    sub_218AD7DC0(v111);
    __swift_project_boxed_opaque_existential_1(v150, v150[3]);
    v118 = *&v114[OBJC_IVAR____TtC7NewsUI213SportsTagView_token];
    sub_219BE1A04();

    __swift_destroy_boxed_opaque_existential_1(v150);
  }

  v119 = sub_219BE61F4();
  v120 = swift_allocObject();
  swift_weakInit();
  v121 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v122 = swift_allocObject();
  v122[2] = v120;
  v122[3] = v142;
  v122[4] = v121;
}

void sub_218E147F4(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_218E14B88(v1);
    }

    else
    {
    }
  }
}

uint64_t sub_218E14898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218846CFC(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15[1] = a3;
    sub_219BEAF14();
    swift_unknownObjectRetain_n();
    sub_219BF3324();
    v11 = sub_219BF3344();
    v12 = *(*(v11 - 8) + 56);
    v12(v9, 0, 1, v11);
    sub_219BE89E4();
    sub_219BE7094();
    sub_218AD7DC0(v9);

    sub_219BEAF14();
    sub_219BF3324();
    v12(v7, 0, 1, v11);
    sub_219BE89C4();

    sub_218AD7DC0(v7);
    if (v16 != 2 && (v16 & 1) != 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        sub_218E14B88(1u);
      }
    }
  }

  return result;
}

uint64_t sub_218E14B14()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_218E14B88(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_219BE5C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 2 || (a1 & 1) != 0)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D6D340], v3);
    type metadata accessor for AccessoryButton();
    sub_218819ABC(&qword_280EDB500, type metadata accessor for AccessoryButton);
    sub_219BEB694();
    (*(v4 + 8))(v6, v3);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();
    v9 = [v8 bundleForClass_];
    sub_219BDB5E4();

    v10 = [v8 bundleForClass_];
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D6D338], v3);
    type metadata accessor for AccessoryButton();
    sub_218819ABC(&qword_280EDB500, type metadata accessor for AccessoryButton);
    sub_219BEB694();
    (*(v4 + 8))(v6, v3);
    type metadata accessor for Localized();
    v11 = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();
    v13 = [v12 bundleForClass_];
    sub_219BDB5E4();

    v10 = [v12 bundleForClass_];
  }

  sub_219BDB5E4();
}

unint64_t sub_218E14F94()
{
  result = qword_280E90280;
  if (!qword_280E90280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90280);
  }

  return result;
}

uint64_t sub_218E14FE8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_218E1505C(uint64_t a1)
{
  v3 = type metadata accessor for SearchPrewarmBlueprintModifier();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_218E156D8(a1, &v12 - v7, type metadata accessor for SearchPrewarmResult);
  sub_218718690(v9 + 80, &v8[*(v3 + 20)]);
  sub_218E156D8(v8, v6, type metadata accessor for SearchPrewarmBlueprintModifier);
  sub_218E0DD90(0);
  swift_allocObject();
  sub_2186D7730(&qword_27CC126C0, type metadata accessor for SearchPrewarmBlueprintModifier);
  v10 = sub_219BE6E64();
  sub_218E15740(v8);
  return v10;
}

uint64_t sub_218E151BC(__int128 *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v15 = a1[4];
  v4 = a1[1];
  v11 = *a1;
  v12 = v4;
  sub_218718690(v2 + 80, &v10);
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v9[0] = v11;
  v9[1] = v12;
  sub_218E15578(v9, v8);
  sub_218E0DD90(0);
  swift_allocObject();
  sub_218E155D4(&v11, v7);
  sub_218E15630();
  v5 = sub_219BE6E64();
  sub_218E15684(v9);
  return v5;
}

uint64_t sub_218E15284()
{
  sub_218E0DD90(0);
  swift_allocObject();
  sub_218AF3F98();

  swift_unknownObjectRetain();
  return sub_219BE6E64();
}

uint64_t sub_218E15344()
{
  sub_218E0DD90(0);
  swift_allocObject();
  sub_218E15524();

  return sub_219BE6E64();
}

uint64_t sub_218E153C4()
{
  sub_218E0DD90(0);
  swift_allocObject();
  sub_218E154D0();
  return sub_219BE6E64();
}

uint64_t sub_218E1540C()
{
  sub_218E0DD90(0);
  swift_allocObject();
  sub_218E1547C();

  return sub_219BE6E64();
}

unint64_t sub_218E1547C()
{
  result = qword_27CC126A0;
  if (!qword_27CC126A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126A0);
  }

  return result;
}

unint64_t sub_218E154D0()
{
  result = qword_27CC126A8;
  if (!qword_27CC126A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126A8);
  }

  return result;
}

unint64_t sub_218E15524()
{
  result = qword_27CC126B0;
  if (!qword_27CC126B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126B0);
  }

  return result;
}

unint64_t sub_218E15630()
{
  result = qword_27CC126B8;
  if (!qword_27CC126B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126B8);
  }

  return result;
}

uint64_t sub_218E156D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E15740(uint64_t a1)
{
  v2 = type metadata accessor for SearchPrewarmBlueprintModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218E1579C()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  sub_2198E1BF0(v5, v6, v7);
  sub_218E15FA8(&unk_280EDD2E0);

  sub_219BDC7D4();

  v8 = v11;
  result = sub_2198E1BF0(v5, v6, v7);
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8 + 1;
    sub_218E15FA8(&qword_280EDD2D8);

    sub_219BDCA54();

    sub_2198E18EC(v5, v6, v7);

    sub_219BDBCB4();
    sub_219BDCA54();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_218E159A0()
{
  v13 = *v0;
  sub_218E15F40();
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDDAA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[2];
  v9 = v0[3];
  v11 = *(v0 + 32);
  sub_218DFBB54(v10, v9, *(v0 + 32));
  sub_219BDDAB4();
  v12 = *(v2 + 56);
  *v4 = v10;
  *(v4 + 1) = v9;
  v4[16] = v11;
  (*(v6 + 32))(&v4[v12], v8, v5);
  if (v11 != 2)
  {
    if (v11 == 7 && v10 == 3 && !v9 && (*(v6 + 88))(&v4[v12], v5) == *MEMORY[0x277D2FBF0])
    {
      if (qword_27CC08938 != -1)
      {
        swift_once();
      }

      v15 = 1;
      sub_218E15FA8(&qword_280EDD2D8);
      sub_219BDCA54();
      return;
    }

LABEL_13:
    sub_218E15FE8(v4, sub_218E15F40);
    return;
  }

  if ((*(v6 + 88))(&v4[v12], v5) != *MEMORY[0x277D2FBF0])
  {
    goto LABEL_13;
  }

  if (qword_27CC088D8 != -1)
  {
    swift_once();
  }

  v14 = 1;
  sub_218E15FA8(&qword_280EDD2D8);
  sub_219BDCA54();
  sub_218CF5D78(v10, v9, 2u);
}

uint64_t sub_218E15CB8()
{
  sub_218CF5D78(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_218E15D44(uint64_t a1)
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  sub_2188383F8(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_218E15FE8(v5, sub_21873F65C);
  }

  (*(v7 + 32))(v9, v5, v6);
  __swift_project_boxed_opaque_existential_1((v10 + 40), *(v10 + 64));
  sub_219BE6DC4();
  return (*(v7 + 8))(v9, v6);
}

void sub_218E15F40()
{
  if (!qword_280E92A50[0])
  {
    sub_219BDDAA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280E92A50);
    }
  }
}

uint64_t sub_218E15FA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TipInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218E15FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SportsTopicSortOrder.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_218E1641C(0, &qword_280E8CEC0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E161E8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = 0;
    sub_218E1623C();
    sub_219BF7734();
    (*(v7 + 8))(v9, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_218E161E8()
{
  result = qword_280ECCEB8[0];
  if (!qword_280ECCEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECCEB8);
  }

  return result;
}

unint64_t sub_218E1623C()
{
  result = qword_280ECCE90;
  if (!qword_280ECCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCE90);
  }

  return result;
}

uint64_t SportsTopicSortOrder.encode(to:)(void *a1)
{
  sub_218E1641C(0, &qword_280E8C5E8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E161E8();
  sub_219BF7B44();
  if (v8)
  {
    v13 = 1;
    v12 = 0;
  }

  else
  {
    v11 = 0;
  }

  sub_218E16480();
  sub_219BF7834();
  return (*(v5 + 8))(v7, v4);
}

void sub_218E1641C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E161E8();
    v7 = a3(a1, &type metadata for SportsTopicSortOrder.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E16480()
{
  result = qword_280ECCEA0;
  if (!qword_280ECCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCEA0);
  }

  return result;
}

uint64_t sub_218E164E0@<X0>(char *a1@<X8>)
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

uint64_t sub_218E16544(uint64_t a1)
{
  v2 = sub_218E161E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E16580(uint64_t a1)
{
  v2 = sub_218E161E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E165BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574736575716572;
  }

  else
  {
    v3 = 0x6C616E6F73726570;
  }

  if (v2)
  {
    v4 = 0xEF6E6F6974617A69;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x6574736575716572;
  }

  else
  {
    v5 = 0x6C616E6F73726570;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xEF6E6F6974617A69;
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

uint64_t sub_218E16674()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218E16708()
{
  sub_219BF5524();
}

uint64_t sub_218E16788()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_218E16824(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E6F73726570;
  if (*v1)
  {
    v2 = 0x6574736575716572;
  }

  v3 = 0xEF6E6F6974617A69;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t SportsTopicSortOrder.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_218E16A18()
{
  result = qword_27CC126C8;
  if (!qword_27CC126C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126C8);
  }

  return result;
}

unint64_t sub_218E16A70()
{
  result = qword_27CC126D0;
  if (!qword_27CC126D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126D0);
  }

  return result;
}

unint64_t sub_218E16AC8()
{
  result = qword_280ECCEA8;
  if (!qword_280ECCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCEA8);
  }

  return result;
}

unint64_t sub_218E16B20()
{
  result = qword_280ECCEB0;
  if (!qword_280ECCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCEB0);
  }

  return result;
}

unint64_t sub_218E16B74()
{
  result = qword_280ECCE98;
  if (!qword_280ECCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCE98);
  }

  return result;
}

uint64_t sub_218E16C10()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218E16CDC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218E16DA4(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t))
{
  v32 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (!v7)
    {
      break;
    }

LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(a1 + 48) + 16 * (v12 | (v10 << 6)));
    v15 = *v13;
    v14 = v13[1];

    swift_unknownObjectRetain();
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v30 = v16;
      v17 = v32;
      v18 = *(v32 + 16);
      if (*(v32 + 24) <= v18)
      {
        a3(v18 + 1, 1);
        v17 = v33;
      }

      v32 = v17;
      sub_219BF7AA4();
      sub_219BF5524();
      result = sub_219BF7AE4();
      v19 = v32 + 64;
      v20 = -1 << *(v32 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v32 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v20) >> 6;
        v24 = v30;
        while (++v22 != v26 || (v25 & 1) == 0)
        {
          v27 = v22 == v26;
          if (v22 == v26)
          {
            v22 = 0;
          }

          v25 |= v27;
          v28 = *(v19 + 8 * v22);
          if (v28 != -1)
          {
            v23 = __clz(__rbit64(~v28)) + (v22 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v32 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v24 = v30;
LABEL_23:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v29 = (*(v32 + 48) + 16 * v23);
      *v29 = v15;
      v29[1] = v14;
      *(*(v32 + 56) + 8 * v23) = v24;
      ++*(v32 + 16);
    }

    else
    {

      result = swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return v32;
    }

    v7 = *(v4 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_218E17010(void *a1)
{
  v25 = a1;
  v3 = *v1;
  v4 = v1;
  v31 = v1;
  v32 = v3;
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v29 = &v23 - v10;
  sub_219BDBD24();
  v33 = v4;
  v34 = a1;
  sub_2186D6710(0, &qword_280E8E080);
  v26 = sub_219BE3204();
  v30 = *(v6 + 16);
  v24 = v5;
  v30(v9, v11, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = v12 + v7;
  v13 = swift_allocObject();
  v27 = *(v6 + 32);
  v27(v13 + v12, v9, v5);
  v14 = v25;
  *(v13 + ((v12 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v15 = v14;
  v16 = sub_219BE2E54();
  sub_218E1D380(0, &qword_280E8E048);
  sub_219BE2F84();

  v17 = v29;
  v18 = v24;
  v30(v9, v29, v24);
  v19 = swift_allocObject();
  v27(v19 + v12, v9, v18);
  v20 = sub_219BE2E54();
  type metadata accessor for TodayConfigFetchResult();
  v21 = sub_219BE2F84();

  (*(v6 + 8))(v17, v18);
  return v21;
}

uint64_t sub_218E17320(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v26 = *v1;
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDAF64();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  sub_219BDBD24();
  (*(v4 + 16))(v6, v24, v3);
  v25 = v9;
  sub_219BDAF44();
  v29 = v2;
  v30 = v9;
  sub_218E1D380(0, &unk_27CC126F0);
  sub_219BE3204();
  v17 = sub_219BE2E54();
  sub_218E1CC8C();
  sub_219BE2F84();

  (*(v11 + 16))(v14, v16, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v14, v10);
  v20 = sub_219BE2E54();
  type metadata accessor for TodayConfigFetchResult();
  v21 = sub_219BE2F94();

  (*(v11 + 8))(v16, v10);
  (*(v27 + 8))(v25, v28);
  return v21;
}

uint64_t sub_218E176D4()
{
  v0 = [objc_opt_self() defaultCachePolicy];
  swift_getObjectType();
  [v0 cachePolicy];
  sub_219BF6A64();

  v1 = [objc_opt_self() sharedSession];
  sub_219BE2E24();

  v2 = sub_219BE31C4();

  return v2;
}

uint64_t sub_218E177C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_218E1D05C(0, &qword_280EE6960, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_218B87528(v4, v5);
  swift_unknownObjectRetain();
  sub_219BE3014();
  sub_218E1D1EC(0, &qword_280EE7010, MEMORY[0x277CC9318], MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_218B87528(v4, v5);
  sub_219BE3014();
  v6 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
  v7 = CACurrentMediaTime();
  sub_218E1D1EC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_219BE3204();
  v8 = swift_allocObject();
  v8[2] = v7;
  *(v8 + 3) = a2;
  *(v8 + 4) = v3;
  *(v8 + 5) = v6;
  swift_unknownObjectRetain();

  v9 = v6;
  v10 = sub_219BE2E54();
  sub_219BE2F64();

  v11 = sub_219BE31B4();

  sub_2186C6190(v4, v5);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_218E17A2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a2;
  v41 = a3;
  v48 = a4;
  v5 = type metadata accessor for TodayFeedGroupConfig();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v47 = *a1;
  v9 = a1[2];
  v11 = a1[4];
  v10 = a1[5];
  v13 = a1[6];
  v12 = a1[7];
  v14 = a1[8];
  v15 = a1[3];
  v51[0] = v15;
  v51[1] = v11;
  v51[2] = v10;
  v51[3] = v8;
  v51[4] = v9;
  v51[5] = v14;
  swift_unknownObjectRetain();
  sub_218B87528(v8, v9);
  sub_218B87528(v15, v11);

  v44 = v12;
  v45 = v13;
  sub_218E1CD90(v13, v12);

  sub_218B87528(v15, v11);

  v46 = v8;
  sub_218B87528(v8, v9);

  v16 = v43;
  sub_218E17EB8(v51, v47, v41, v48);
  if (v16)
  {
    v17 = v46;
    sub_2186C6190(v46, v9);
    swift_unknownObjectRelease();
    sub_2186C6190(v15, v11);

    sub_218822A58(v45, v44);

    sub_2186C6190(v15, v11);

    sub_218822A58(v17, v9);
  }

  else
  {
    v42 = v15;
    sub_2186C6190(v15, v11);

    v19 = v46;
    sub_218822A58(v46, v9);

    if (qword_280E8D8E8 != -1)
    {
      swift_once();
    }

    v39 = 0;
    v41 = v11;
    v43 = v9;
    v37[3] = qword_280F617A0;
    sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_219C09BA0;
    v49 = 0;
    v50 = 0xE000000000000000;
    v20 = *(v48 + *(type metadata accessor for TodayFeedConfig() + 20));
    v21 = *(v20 + 16);
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v37[1] = v10;
      v37[2] = v14;
      v52 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v21, 0);
      v22 = v52;
      v23 = v20 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v48 = *(v40 + 72);
      do
      {
        sub_218E1CDD8(v23, v7, type metadata accessor for TodayFeedGroupConfig);
        v24 = sub_219A46A0C();
        v26 = v25;
        sub_218E1D478(v7, type metadata accessor for TodayFeedGroupConfig);
        v52 = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_21870B65C((v27 > 1), v28 + 1, 1);
          v22 = v52;
        }

        *(v22 + 16) = v28 + 1;
        v29 = v22 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v23 += v48;
        --v21;
      }

      while (v21);
      v19 = v46;
    }

    v30 = MEMORY[0x277D837D0];
    v31 = MEMORY[0x21CECC6D0](v22, MEMORY[0x277D837D0]);
    v33 = v32;

    MEMORY[0x21CECC330](v31, v33);

    v34 = v49;
    v35 = v50;
    v36 = v38;
    *(v38 + 56) = v30;
    v36[8] = sub_2186FC3BC();
    v36[4] = v34;
    v36[5] = v35;
    sub_219BF6214();
    sub_219BE5314();
    sub_2186C6190(v19, v43);
    swift_unknownObjectRelease();
    sub_2186C6190(v42, v41);

    sub_218822A58(v45, v44);
  }
}

uint64_t sub_218E17EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a3;
  v74 = a4;
  v75 = a2;
  v7 = sub_219BDBD34();
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB184();
  v73 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TodayConfig();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  CACurrentMediaTime();
  result = sub_218E19B58(v18, a1, v4);
  if (v5)
  {
    return result;
  }

  v68 = v4;
  v69 = a1;
  v70 = v18;
  v63 = result;
  v64 = v9;
  v65 = v12;
  v66 = v7;
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  v62 = xmmword_219C09BA0;
  *(v20 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);

    __break(1u);
    return result;
  }

  v22 = v16;
  v61 = v10;
  v23 = MEMORY[0x277D84A90];
  *(v20 + 56) = MEMORY[0x277D84A28];
  *(v20 + 64) = v23;
  *(v20 + 32) = v21;
  sub_219BF6214();
  sub_219BE5314();

  v24 = *(v69 + 16);
  sub_218E19F4C(7, v24, 0x277D35498, sub_219482970, &unk_280E8DFE0);
  v67 = v25;
  sub_218E19F4C(1, v24, 0x277D35428, sub_219482954, &unk_280E8E3D8);
  v27 = v26;
  sub_218E19F4C(4, v24, 0x277D35418, sub_219482938, &unk_280E8E0E0);
  v29 = v28;
  sub_218E19F4C(2, v24, 0x277D35508, sub_21948291C, &unk_280E8E730);
  v31 = v30;
  sub_218E19F4C(10, v24, 0x277D354C0, sub_219482900, &qword_280E8E5D8);
  v33 = v32;
  v34 = v31;
  v60 = v27;
  v59 = v33;
  v35 = FCHeadlinesWithHeldRecords();
  if (v35)
  {
    v36 = v35;
    sub_2186D6710(0, &qword_280E8E260);
    v37 = sub_219BF5214();
  }

  else
  {
    v37 = sub_2194AE584(MEMORY[0x277D84F90]);
  }

  v38 = [v68[3] tagController];
  v39 = [v38 tagsForTagRecords_];

  v68 = v34;
  if (v39)
  {
    sub_2186D6710(0, &qword_280E8E680);
    v58 = sub_219BF5214();
  }

  else
  {
    v58 = sub_2194AE5A0(MEMORY[0x277D84F90]);
  }

  v40 = *(v69 + 40);
  v41 = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84F90];
  v42 = *(v40 + 16);
  if (v42)
  {
    v43 = (v40 + 40);
    do
    {
      v44 = *v43;
      v76[0] = *(v43 - 1);
      v76[1] = v44;

      sub_218E1A194(&v77, v76, v29, v37);

      v43 += 2;
      --v42;
    }

    while (v42);
    v41 = v77;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v62;
  sub_218E1CDA4(0);
  *(v45 + 56) = v46;
  *(v45 + 64) = sub_2186E0128(&unk_280E8F448, sub_218E1CDA4);
  *(v45 + 32) = v41;

  sub_219BF6214();
  sub_219BE5314();

  sub_218E1CDD8(v70, v22, type metadata accessor for TodayConfig);
  v47 = [v67 onlyRecordID];
  if (v47)
  {
    v48 = v47;
    v49 = v22;
    v50 = sub_219BF5414();
    v52 = v51;
  }

  else
  {
    v49 = v22;
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  v53 = v64;
  sub_219BDBD24();
  v54 = v65;
  sub_219BDB104();

  (*(v72 + 8))(v53, v66);
  sub_218E1D478(v70, type metadata accessor for TodayConfig);
  type metadata accessor for TodayConfigData();
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v63 & 1;
  (*(v73 + 32))(v55 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval, v54, v61);
  *(v55 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines) = v37;
  *(v55 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags) = v58;
  *(v55 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles) = v41;
  v56 = v74;
  sub_218E1CFF4(v49, v74, type metadata accessor for TodayConfig);
  v57 = type metadata accessor for TodayConfigFetchResult();
  *(v56 + *(v57 + 20)) = v55;
  *(v56 + *(v57 + 24)) = v75;
  return swift_unknownObjectRetain();
}

uint64_t sub_218E18704(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v8 = sub_219BDBC04();
  v9 = [v8 fc_millisecondTimeIntervalUntilNow];

  v10 = MEMORY[0x277D84D90];
  *(v7 + 56) = MEMORY[0x277D84D38];
  *(v7 + 64) = v10;
  *(v7 + 32) = v9;
  sub_219BF6214();
  sub_219BE5314();

  sub_218E1D05C(0, &qword_280EE6960, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_219BE3014();
  v11 = CACurrentMediaTime();
  sub_218E1D1EC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_219BE3204();
  v12 = swift_allocObject();
  v12[2] = v11;
  *(v12 + 3) = a2;
  *(v12 + 4) = v6;
  *(v12 + 5) = a4;
  swift_unknownObjectRetain();

  v13 = a4;
  v14 = sub_219BE2E54();
  sub_219BE2F64();

  v15 = sub_219BE31C4();

  return v15;
}

uint64_t sub_218E18990(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = type metadata accessor for TodayConfigFetchResult();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v19 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v21[0] = v11;
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = v14;
  v21[4] = v15;
  v21[5] = v16;
  swift_unknownObjectRetain();
  sub_218B87528(v11, v12);

  sub_218E1CD90(v14, v15);

  v17 = v22;
  sub_218E17EB8(v21, v10, v20, v9);
  v22 = v17;
  if (v17)
  {
    sub_2186C6190(v11, v12);

    sub_218822A58(v14, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_218E1CDD8(v9, v19, type metadata accessor for TodayConfigFetchResult);
    sub_2186E7FB8(0, &unk_280EE6DC0, type metadata accessor for TodayConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    a2 = sub_219BE3014();
    sub_2186C6190(v11, v12);

    sub_218822A58(v14, v15);
    swift_unknownObjectRelease();

    sub_218E1D478(v9, type metadata accessor for TodayConfigFetchResult);
  }

  return a2;
}

uint64_t sub_218E18BB4()
{
  sub_218E1D1EC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE3064();

  return v1;
}

uint64_t sub_218E18C6C()
{
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  result = sub_219BF5CD4();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    v3 = MEMORY[0x277D84A90];
    *(v0 + 56) = MEMORY[0x277D84A28];
    *(v0 + 64) = v3;
    *(v0 + 32) = v2;
    sub_219BF6214();
    sub_219BE5314();

    MEMORY[0x28223BE20](v4);
    sub_218E1D1EC(0, &qword_280EE6EB0, &type metadata for TodayConfigManager.OperationResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE30B4();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218E18E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v36 = a3;
  v33 = a7;
  v37 = a4;
  v12 = sub_219BE3184();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v34 = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  swift_getObjectType();

  v17 = sub_218E1C034(a5);
  sub_218E1BF30(a6, a5);
  sub_219BF5064();
  sub_219BE3134();
  (*(v13 + 8))(v15, v12);
  v18 = v33;
  sub_218E191A0(v33, a6);
  v19 = objc_allocWithZone(MEMORY[0x277D31380]);
  v20 = sub_219BF53D4();

  v21 = sub_219BF53D4();

  v22 = sub_219BF5904();

  v23 = [v19 initWithFeedType:v17 forYouConfigID:v20 formatVersion:v21 additionalRecordIDs:v22];

  v24 = sub_218E19390(v23, a5, a6, v35);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v27 = v36;
  v28 = v37;
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v28;
  v26[5] = v23;
  v29 = v34;
  v26[6] = sub_218E1D118;
  v26[7] = v29;
  v26[8] = v18;
  aBlock[4] = sub_218E1D15C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218846728;
  aBlock[3] = &block_descriptor_61;
  v30 = _Block_copy(aBlock);

  v31 = v23;

  [v24 setFetchCompletionHandler_];
  _Block_release(v30);
  [v24 startIfNeeded];
}

char *sub_218E191A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v4, 0);
    v5 = v25;
    v6 = a1 + 40;
    do
    {

      v7 = sub_219BF53D4();
      v8 = FCCKPublisherSpecifiedArticleListIDForTagID();

      v9 = sub_219BF5414();
      v11 = v10;

      v13 = *(v25 + 16);
      v12 = *(v25 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
      }

      *(v25 + 16) = v13 + 1;
      v14 = v25 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  sub_2191ED3E8(v5);
  v15 = a1;
  v16 = [a2 topStoriesConfig];
  v17 = [v16 channelID];

  if (v17)
  {
    v18 = sub_219BF5414();
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_218840D24(0, *(v15 + 2) + 1, 1, v15);
    }

    v22 = *(v15 + 2);
    v21 = *(v15 + 3);
    if (v22 >= v21 >> 1)
    {
      v15 = sub_218840D24((v21 > 1), v22 + 1, 1, v15);
    }

    *(v15 + 2) = v22 + 1;
    v23 = &v15[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
  }

  return v15;
}

id sub_218E19390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219248C68();
  if (!v8)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D31378]) initWithContext:*(a2 + 24) appConfig:a3 request:a1];
    [v11 setCachePolicy_];
    if (qword_280E8D8E8 == -1)
    {
LABEL_15:
      sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_219C09BA0;
      v30 = [v11 operationID];
      v31 = sub_219BF5414();
      v33 = v32;

      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = sub_2186FC3BC();
      *(v29 + 32) = v31;
      *(v29 + 40) = v33;
      sub_219BF6214();
      sub_219BE5314();
      goto LABEL_16;
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v9 = v8;
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C0B8C0;
  v11 = v9;
  v12 = [v11 operationID];
  v13 = sub_219BF5414();
  v15 = v14;

  v16 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v17 = sub_2186FC3BC();
  *(v10 + 64) = v17;
  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  v18 = [v11 isFinished];
  v19 = v18 == 0;
  if (v18)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v19)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v20, v21);

  *(v10 + 96) = v16;
  *(v10 + 104) = v17;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0xE000000000000000;
  sub_219BDBA54();
  v23 = v22;
  [v11 operationStartTime];
  v25 = v24;

  v26 = (v23 - v25) * 1000.0;
  if (COERCE__INT64(fabs(v26)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = sub_219BF7894();
  *(v10 + 136) = v16;
  *(v10 + 144) = v17;
  *(v10 + 112) = v27;
  *(v10 + 120) = v28;
  sub_219BF6214();
  sub_219BE5314();
LABEL_16:

  return v11;
}

void sub_218E19740(void *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v46 = a7;
      v17 = sub_2186C6148(0, &unk_280E8DE30);
      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = a6;
      *(v19 + 24) = v17;
      v51 = sub_218E1D1E4;
      v52 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_218793E0C;
      v50 = &block_descriptor_23_1;
      v20 = _Block_copy(&aBlock);
      v21 = a6;
      v22 = a1;

      [v18 scheduleLowPriorityBlock_];
      _Block_release(v20);
      sub_219BDBD24();
      v23 = sub_219BDBD34();
      (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
      sub_218E1C358(v16);
      v24 = [v22 ckConfigData];
      v25 = sub_219BDBA04();
      v27 = v26;

      v28 = [v22 ckRecordsByType];
      sub_2186C6148(0, &qword_280E8DA20);
      sub_2186C6148(0, &qword_280E8E750);
      sub_218B9E44C();
      v29 = sub_219BF5214();

      v30 = sub_219BEC344();
      if (v31 >> 60 == 15)
      {
        sub_219BEC364();
        if (v32)
        {
        }

        else
        {
          v41 = [v22 newsEdgeConfigData];
          if (v41)
          {
            v42 = v41;
            v43 = sub_219BDBA04();
            v45 = v44;

            v31 = v45;
            v33 = v43;
            goto LABEL_11;
          }
        }

        v33 = 0;
        v31 = 0xF000000000000000;
      }

      else
      {
        v33 = v30;
      }

LABEL_11:
      aBlock = v25;
      v48 = v27;
      v49 = v29;
      v50 = v33;
      v51 = v31;
      v52 = a9;
      v38 = v31;

      v46(&aBlock);
      sub_2186C6190(v25, v27);

      sub_218822A58(v33, v38);

      return;
    }

    if (a2)
    {
      v37 = a2;
    }

    else
    {
      sub_218E1D190();
      v37 = swift_allocError();
      *v39 = 1;
    }

    v40 = a2;
    (a4)(v37);

    v36 = v37;
  }

  else
  {
    sub_218E1D190();
    v34 = swift_allocError();
    *v35 = 0;
    a4();
    v36 = v34;
  }
}

uint64_t sub_218E19B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a3;
  v7 = type metadata accessor for TodayConfig();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v25 = &v22 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = *(a2 + 32);
  if (v18 >> 60 == 15)
  {
LABEL_4:
    sub_219BEE324();
    swift_allocObject();
    sub_219BEE314();
    sub_2186E0128(&unk_280EDF358, type metadata accessor for TodayConfig);
    sub_219BE1974();
    if (v4)
    {
    }

    v21 = v25;
    sub_218E1AC98(v10, v25);

    sub_218E1D478(v10, type metadata accessor for TodayConfig);
    if (qword_280E8D8E8 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_218E1CFF4(v21, a1, type metadata accessor for TodayConfig);
    return 0;
  }

  v23 = v10;
  v24 = a1;
  v19 = *(a2 + 24);
  sub_219BEE324();
  swift_allocObject();
  sub_218B87528(v19, v18);
  sub_219BEE314();
  sub_2186E0128(&unk_280EDF358, type metadata accessor for TodayConfig);
  sub_219BE1974();
  if (v3)
  {

    sub_218822A58(v19, v18);

    v4 = 0;
    v10 = v23;
    a1 = v24;
    goto LABEL_4;
  }

  sub_218E1AC98(v15, v17);

  sub_218E1D478(v15, type metadata accessor for TodayConfig);
  sub_218E1CFF4(v17, v24, type metadata accessor for TodayConfig);
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_218822A58(v19, v18);
  return 1;
}

void sub_218E19F4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t), unint64_t *a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v10 = sub_218B8EC20(v9, a2);

  if (v10)
  {
    v11 = [v10 recordsByID];
    if (v11)
    {
      v12 = v11;
      v13 = sub_219BF5214();

      sub_218E16DA4(v13, a3, a4);

      v14 = [v10 interestTokensByID];
      if (v14)
      {
        v15 = v14;
        sub_2186C6148(0, &unk_280E8E5F8);
        v16 = sub_219BF5214();
      }

      else
      {
        v16 = 0;
      }

      sub_2186C6148(0, a5);
      v18 = sub_219BF5204();

      if (v16)
      {
        sub_2186C6148(0, &unk_280E8E5F8);
        v19 = sub_219BF5204();
      }

      else
      {
        v19 = 0;
      }

      v20 = [objc_allocWithZone(MEMORY[0x277D310A0]) initWithRecordsByID:v18 interestTokensByID:v19];

      if (v20)
      {

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277D310A0]);

    [v17 init];
  }
}

void sub_218E1A194(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v100 = a4;
  v8 = MEMORY[0x277D83D88];
  sub_2186E7FB8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = &v93 - v10;
  sub_2186E7FB8(0, &unk_280E905F0, MEMORY[0x277D33578], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v109 = &v93 - v12;
  sub_2186E7FB8(0, &qword_280E901F0, MEMORY[0x277D33C78], v8);
  MEMORY[0x28223BE20](v13 - 8);
  v108 = &v93 - v14;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v15 - 8);
  v107 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BF3034();
  v17 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TodayLocalNewsArticle(0);
  v103 = *(v19 - 8);
  v104 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v102 = &v93 - v23;
  v24 = *a2;
  v25 = a2[1];
  v111 = v24;
  v26 = sub_219BF53D4();
  v27 = FCCKPublisherSpecifiedArticleListIDForTagID();

  v28 = v27;
  if (!v27)
  {
    sub_219BF5414();
    v28 = sub_219BF53D4();
  }

  v29 = sub_219BF5414();
  v112 = a3;
  v113 = v29;
  v31 = v30;
  v32 = [a3 recordsByID];
  if (!v32)
  {
    goto LABEL_54;
  }

  v33 = v32;
  sub_2186C6148(0, &unk_280E8E0E0);
  v34 = sub_219BF5214();

  if (!*(v34 + 16) || (v35 = sub_21870F700(v113, v31), (v36 & 1) == 0))
  {

    return;
  }

  v37 = *(*(v34 + 56) + 8 * v35);

  v38 = [v37 articleIDs];
  if (!v38)
  {

LABEL_26:
    return;
  }

  v99 = v37;
  v114 = 0;
  v39 = v38;
  sub_219BF5914();

  v40 = v114;
  if (!v114)
  {

    goto LABEL_26;
  }

  v94 = v31;
  v97 = v4;
  v98 = v17;
  v101 = v25;
  v96 = a1;
  sub_2186D6710(0, &qword_280E8E260);
  v95 = v40;
  v41 = sub_219BF5264();
  v42 = 0;
  v44 = v41 + 64;
  v43 = *(v41 + 64);
  v100 = v41;
  v45 = 1 << *(v41 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v43;
  v48 = (v45 + 63) >> 6;
LABEL_13:
  v49 = v112;
  if (v47)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v50 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_54:

      __break(1u);
      goto LABEL_55;
    }

    if (v50 >= v48)
    {
      break;
    }

    v47 = *(v44 + 8 * v50);
    ++v42;
    if (v47)
    {
      v42 = v50;
LABEL_18:
      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        swift_unknownObjectRetain_n();
        v52 = sub_219BF53D4();
        [v51 setSurfacedByChannelID_];
        swift_unknownObjectRelease();
      }

      v47 &= v47 - 1;
      [v51 addSurfacedByArticleListID_];

      goto LABEL_13;
    }
  }

  v53 = [v49 interestTokensByID];
  if (!v53)
  {
LABEL_55:
    __break(1u);
    return;
  }

  v54 = v53;
  sub_2186C6148(0, &unk_280E8E5F8);
  v55 = sub_219BF5214();

  v56 = v95;
  v57 = v98;
  v58 = v99;
  if (!*(v55 + 16))
  {

    goto LABEL_28;
  }

  v59 = sub_21870F700(v113, v94);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_28:

    v62 = 0;
    goto LABEL_29;
  }

  v62 = *(*(v55 + 56) + 8 * v59);

LABEL_29:
  v63 = objc_allocWithZone(MEMORY[0x277D30DF0]);
  v64 = v58;
  v65 = [v63 initWithRecord:v64 interestToken:v62];

  v94 = v65;
  if (v65 && (v66 = [v65 editorialMetadata]) != 0 && (v67 = v66, v68 = objc_msgSend(v66, sel_articleMetadata), v67, v68))
  {
    sub_2186C6148(0, &qword_280E8E440);
    v100 = sub_219BF5214();

    v69 = *(v56 + 16);
    if (!v69)
    {
LABEL_33:

      v70 = MEMORY[0x277D84F90];
      goto LABEL_52;
    }
  }

  else
  {
    v100 = 0;
    v69 = *(v56 + 16);
    if (!v69)
    {
      goto LABEL_33;
    }
  }

  v93 = v64;
  v114 = MEMORY[0x277D84F90];
  sub_218C35D48(0, v69, 0);
  v98 = v57 + 4;
  v99 = v22;
  v71 = (v56 + 40);
  v70 = v114;
  v72 = v100;
  while (2)
  {
    v74 = *(v71 - 1);
    v73 = *v71;
    v113 = v70;
    if (!v72)
    {

      v76 = v101;
LABEL_44:
      *v22 = v74;
      v22[1] = v73;
      v22[2] = v111;
      v22[3] = v76;
      goto LABEL_45;
    }

    v75 = *(v72 + 16);

    v76 = v101;
    if (!v75)
    {
      goto LABEL_44;
    }

    v77 = sub_21870F700(v74, v73);
    if ((v78 & 1) == 0)
    {
      goto LABEL_44;
    }

    v79 = *(*(v72 + 56) + 8 * v77);
    *v22 = v74;
    v22[1] = v73;
    v22[2] = v111;
    v22[3] = v76;
    v80 = v79;
    if (!v79)
    {
LABEL_45:

      goto LABEL_46;
    }

    v81 = v80;
    v82 = [v80 respondsToSelector_];

    if ((v82 & 1) == 0)
    {
LABEL_46:
      v112 = 0;
      goto LABEL_47;
    }

    v83 = [v81 title];
    if (v83)
    {
      v84 = v83;
      v112 = sub_219BF5414();
    }

    else
    {
      v112 = 0;
    }

LABEL_47:
    v85 = sub_219BDBD34();
    (*(*(v85 - 8) + 56))(v107, 1, 1, v85);
    v86 = sub_219BF3044();
    (*(*(v86 - 8) + 56))(v108, 1, 1, v86);
    v87 = sub_219BF1C84();
    (*(*(v87 - 8) + 56))(v109, 1, 1, v87);
    v88 = sub_219BDB954();
    (*(*(v88 - 8) + 56))(v110, 1, 1, v88);
    v89 = v105;
    sub_219BF3004();
    swift_unknownObjectRelease();
    v22 = v99;
    (*v98)(v99 + *(v104 + 24), v89, v106);
    v90 = v102;
    sub_218E1CFF4(v22, v102, type metadata accessor for TodayLocalNewsArticle);
    v70 = v113;
    v114 = v113;
    v92 = *(v113 + 16);
    v91 = *(v113 + 24);
    if (v92 >= v91 >> 1)
    {
      sub_218C35D48(v91 > 1, v92 + 1, 1);
      v70 = v114;
    }

    *(v70 + 16) = v92 + 1;
    sub_218E1CFF4(v90, v70 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v92, type metadata accessor for TodayLocalNewsArticle);
    v71 += 2;
    --v69;
    v72 = v100;
    if (v69)
    {
      continue;
    }

    break;
  }

  v64 = v93;
LABEL_52:
  sub_2191EE990(v70);
}

uint64_t sub_218E1AC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TodayFeedConfig();
  MEMORY[0x28223BE20](v35);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E1CE40(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0170();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E1CE74(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0010();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE9418 != -1)
  {
    swift_once();
  }

  sub_2186E0128(&qword_280ED24C0, type metadata accessor for TodayConfigManager);
  sub_219BDC7D4();
  if (v41 != 1)
  {
    return sub_218E1CDD8(a1, v40, type metadata accessor for TodayConfig);
  }

  sub_218FBF1EC(v14);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_218E1D478(v14, sub_218E1CE74);
    return sub_218E1CDD8(a1, v40, type metadata accessor for TodayConfig);
  }

  (*(v17 + 32))(v19, v14, v16);
  sub_218FBF40C(v9);
  v20 = v38;
  if ((*(v38 + 48))(v9, 1, v39) == 1)
  {
    sub_218E1D478(v9, sub_218E1CE40);
    (*(v17 + 8))(v19, v16);
    return sub_218E1CDD8(a1, v40, type metadata accessor for TodayConfig);
  }

  v22 = v37;
  (*(v20 + 32))();
  v23 = sub_218E1CDD8(a1, v6, type metadata accessor for TodayFeedConfig);
  v24 = v35;
  MEMORY[0x28223BE20](v23);
  *(&v35 - 2) = v19;
  *(&v35 - 1) = v22;
  v26 = sub_218D24B38(MEMORY[0x277D84F90], sub_218E1CEA8, (&v35 - 4), v25);
  v27 = v36;
  sub_218E1CDD8(v6, v36, sub_2186DCF58);
  v28 = v40;
  sub_218E1CEC4(&v6[*(v24 + 24)], v40 + *(v24 + 24));
  sub_218E1CDD8(v27, v28, sub_2186DCF58);
  sub_218E1D478(v27, sub_2186DCF58);
  *(v28 + *(v24 + 20)) = v26;
  sub_218E1D478(v6, type metadata accessor for TodayFeedConfig);
  v29 = *(type metadata accessor for TodayConfig() + 20);
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = *(a1 + v29 + 16);
  v33 = (v28 + v29);
  *v33 = v30;
  v33[1] = v31;
  v33[2] = v32;
  v34 = *(v38 + 8);

  v34(v37, v39);
  return (*(v17 + 8))(v19, v16);
}

uint64_t TodayConfigManager.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = OBJC_IVAR____TtC7NewsUI218TodayConfigManager_testOverrides;
  v2 = sub_219BEC374();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TodayConfigManager.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = OBJC_IVAR____TtC7NewsUI218TodayConfigManager_testOverrides;
  v2 = sub_219BEC374();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_218E1B3D8(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_opt_self();
    v18[0] = 0;
    v3 = a1;
    v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v18];
    v5 = v18[0];
    if (v4)
    {
      v6 = sub_219BDBA04();
      v8 = v7;

      v9 = [objc_opt_self() standardUserDefaults];
      v10 = sub_219BDB9E4();
      v11 = sub_219BF53D4();
      [v9 setValue:v10 forKey:v11];

      sub_2186C6190(v6, v8);
    }

    else
    {
      v13 = v5;
      v14 = sub_219BDB724();

      swift_willThrow();
      v15 = [objc_opt_self() standardUserDefaults];
      v16 = sub_219BF53D4();
      [v15 removeObjectForKey_];
    }
  }

  else
  {
    v12 = [objc_opt_self() standardUserDefaults];
    v17 = sub_219BF53D4();
    [v12 removeObjectForKey_];
  }
}

uint64_t sub_218E1B648(void **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v79 = a4;
  v76 = a3;
  v81 = a1;
  sub_218E1CF58(0);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E1CF8C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E1CFC0(0);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187089D4(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v63 - v15;
  sub_218D15B24();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TodayFeedGroupConfig();
  v80 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v77 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v63 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v63 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v63 - v29;
  sub_218E1CDD8(a2, v63 - v29, type metadata accessor for TodayFeedGroupConfig);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_218E1D478(v30, type metadata accessor for TodayFeedGroupConfig);
  if (EnumCaseMultiPayload == 3)
  {
    v72 = a2;
    sub_219A47B40();
    v32 = sub_219BEF554();
    v33 = *(v32 - 8);
    v34 = v19;
    v70 = *(v33 + 56);
    v71 = v32;
    v69 = v33 + 56;
    v70(v19, 1, 1);
    v35 = sub_219BE3184();
    v36 = *(v35 - 8);
    v37 = *(v36 + 56);
    v38 = v36 + 56;
    v37(v16, 1, 1, v35);
    v67 = v37;
    v68 = v35;
    v66 = v38;
    v37(v14, 1, 1, v35);
    v39 = sub_219BEF874();
    v40 = *(v39 - 8);
    v41 = v74;
    v64 = *(v40 + 56);
    v65 = v39;
    v63[1] = v40 + 56;
    v64(v74, 1, 1);
    v42 = type metadata accessor for ForYouTodayFeedGroupConfigData();
    v43 = v75;
    (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
    sub_2186E0010();
    sub_219BEDD84();

    sub_218E1D478(v43, sub_218E1CF8C);
    sub_218E1D478(v41, sub_218E1CFC0);
    sub_218E1D478(v14, sub_2187089D4);
    sub_218E1D478(v16, sub_2187089D4);
    sub_218E1D478(v34, sub_218D15B24);
    v76 = v25;
    swift_storeEnumTagMultiPayload();
    v44 = *v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_2191F8F5C(0, v44[2] + 1, 1, v44);
    }

    v47 = v44[2];
    v46 = v44[3];
    v48 = v76;
    if (v47 >= v46 >> 1)
    {
      v44 = sub_2191F8F5C(v46 > 1, v47 + 1, 1, v44);
      v48 = v76;
    }

    v44[2] = v47 + 1;
    v76 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v80 = *(v80 + 72);
    sub_218E1CFF4(v48, v44 + v76 + v80 * v47, type metadata accessor for TodayFeedGroupConfig);
    sub_219A47B40();
    v49 = v34;
    (v70)(v34, 1, 1, v71);
    v51 = v67;
    v50 = v68;
    v67(v16, 1, 1, v68);
    v51(v14, 1, 1, v50);
    (v64)(v41, 1, 1, v65);
    v52 = type metadata accessor for MissedStoriesTodayFeedGroupConfigData();
    v53 = v78;
    (*(*(v52 - 8) + 56))(v78, 1, 1, v52);
    sub_2186E0170();
    v54 = v77;
    sub_219BEDD84();

    sub_218E1D478(v53, sub_218E1CF58);
    sub_218E1D478(v41, sub_218E1CFC0);
    sub_218E1D478(v14, sub_2187089D4);
    sub_218E1D478(v16, sub_2187089D4);
    sub_218E1D478(v49, sub_218D15B24);
    swift_storeEnumTagMultiPayload();
    v56 = v44[2];
    v55 = v44[3];
    if (v56 >= v55 >> 1)
    {
      v44 = sub_2191F8F5C(v55 > 1, v56 + 1, 1, v44);
    }

    v57 = v81;
    v44[2] = v56 + 1;
    v58 = v44 + v76 + v56 * v80;
    v59 = v54;
  }

  else
  {
    sub_218E1CDD8(a2, v28, type metadata accessor for TodayFeedGroupConfig);
    v57 = v81;
    v44 = *v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_2191F8F5C(0, v44[2] + 1, 1, v44);
    }

    v61 = v44[2];
    v60 = v44[3];
    if (v61 >= v60 >> 1)
    {
      v44 = sub_2191F8F5C(v60 > 1, v61 + 1, 1, v44);
    }

    v44[2] = v61 + 1;
    v58 = v44 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v61;
    v59 = v28;
  }

  result = sub_218E1CFF4(v59, v58, type metadata accessor for TodayFeedGroupConfig);
  *v57 = v44;
  return result;
}

uint64_t sub_218E1BF30(void *a1, uint64_t a2)
{
  result = sub_219BEC364();
  if (!v5)
  {
    if ([a1 respondsToSelector_])
    {
      v6 = [a1 forYouPremiumRecordConfigID];
      v7 = sub_219BF5414();

      if (sub_218E1C034(a2) == 1)
      {
        return v7;
      }

      v8 = [a1 forYouRecordConfigID];
    }

    else
    {
      v8 = [a1 forYouRecordConfigID];
    }

    v9 = v8;
    v10 = sub_219BF5414();

    return v10;
  }

  return result;
}

uint64_t sub_218E1C034(uint64_t a1)
{
  v1 = [*(a1 + 48) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    sub_218806FD0(&v18);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v2 = v15;
  v3 = [v15 integerValue];
  if (v3 == -1)
  {

    goto LABEL_21;
  }

  v4 = v3;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20);
    if (swift_dynamicCast())
    {
      v5 = v15;
      v6 = [v5 integerValue];

      if ((v6 ^ v4))
      {
        goto LABEL_21;
      }

LABEL_19:
      v7 = 0;
      v8 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    sub_218806FD0(&v18);
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_21:
  v7 = 1;
  v8 = 1;
LABEL_22:
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  if (v7)
  {
    v10 = 0x6D75696D657270;
  }

  else
  {
    v10 = 0x72616C75676572;
  }

  MEMORY[0x21CECC330](v10, 0xE700000000000000);

  v11 = v18;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_2186FC3BC();
  v12 = MEMORY[0x277D839B0];
  *(v9 + 32) = v11;
  v13 = MEMORY[0x277D839F0];
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 72) = v8;
  sub_219BF6214();
  sub_219BE5314();

  return v7;
}

uint64_t sub_218E1C358(uint64_t a1)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  sub_218E1CDD8(a1, v4, sub_2186DCF58);
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    v8 = sub_219BDBC04();
    (*(v7 + 8))(v4, v6);
  }

  v9 = sub_219BF53D4();
  [v5 setValue:v8 forKey:v9];

  swift_unknownObjectRelease();
  return sub_218E1D478(a1, sub_2186DCF58);
}

void _s7NewsUI218TodayConfigManagerC07prewarmcD07contextySo14FCCloudContextC_tFZ_0(void *a1)
{
  v2 = sub_219BED174();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BED1D4();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED184();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2186C5FC4();
  if (v13)
  {
    v14 = v13;
    v40 = v6;
    v41 = v3;
    v15 = [a1 appConfigurationManager];
    if ([v15 respondsToSelector_])
    {
      v39 = v2;
      v16 = [v15 fetchedAppConfiguration];
      swift_unknownObjectRelease();
      aBlock[0] = v16;
      sub_218E1D05C(0, &unk_280E8E070, MEMORY[0x277D83D88]);
      sub_219BF6F84();
      swift_unknownObjectRelease();
      v17 = v44;
      if (v44)
      {
        v37 = v10;
        v18 = [objc_allocWithZone(MEMORY[0x277D31378]) initWithContext:a1 appConfig:v44 request:v14];
        v38 = v17;
        v19 = v18;
        sub_219BF5D04();
        v21 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
        [v19 setCachePolicy_];

        [v19 setQualityOfService_];
        v22 = v19;
        [v22 setRelativePriority_];
        v23 = qword_27CC126E0;
        qword_27CC126E0 = v22;
        v24 = v22;

        if (qword_280E8D8E8 != -1)
        {
          swift_once();
        }

        v36 = qword_280F617A0;
        sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_219C09BA0;
        v26 = [v24 operationID];

        v27 = sub_219BF5414();
        v29 = v28;

        *(v25 + 56) = MEMORY[0x277D837D0];
        *(v25 + 64) = sub_2186FC3BC();
        *(v25 + 32) = v27;
        *(v25 + 40) = v29;
        sub_219BF6214();
        sub_219BE5314();

        sub_2186C6148(0, &qword_280E8E3B0);
        v30 = v37;
        (*(v37 + 104))(v12, *MEMORY[0x277D851B8], v9);
        v31 = sub_219BF66E4();
        (*(v30 + 8))(v12, v9);
        v32 = swift_allocObject();
        *(v32 + 16) = v24;
        aBlock[4] = sub_218E1D520;
        aBlock[5] = v32;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_218793E0C;
        aBlock[3] = &block_descriptor_40;
        v33 = _Block_copy(aBlock);
        v34 = v24;
        sub_219BED1A4();
        v44 = MEMORY[0x277D84F90];
        sub_2186E0128(&qword_280E927E0, MEMORY[0x277D85198]);
        sub_21879DD98();
        sub_2186E0128(&qword_280E8EFA0, sub_21879DD98);
        v35 = v39;
        sub_219BF7164();
        MEMORY[0x21CECD460](0, v8, v5, v33);
        _Block_release(v33);
        swift_unknownObjectRelease();

        (*(v41 + 8))(v5, v35);
        (*(v42 + 8))(v8, v40);

        return;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (qword_280E8D8E8 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
  }

  else
  {
    if (qword_280E8D8E8 != -1)
    {
      swift_once();
    }

    sub_219BF6214();

    sub_219BE5314();
  }
}

void sub_218E1CC8C()
{
  if (!qword_27CC12700)
  {
    sub_2186D6710(255, &qword_280E8E080);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC12700);
    }
  }
}

uint64_t sub_218E1CD90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_218B87528(a1, a2);
  }

  return a1;
}

uint64_t sub_218E1CDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E1CEC4(uint64_t a1, uint64_t a2)
{
  sub_2186E7FB8(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E1CFF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218E1D05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2186D6710(255, &qword_280E8E080);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218E1D118(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

unint64_t sub_218E1D190()
{
  result = qword_27CC12728;
  if (!qword_27CC12728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12728);
  }

  return result;
}

void sub_218E1D1EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218E1D274()
{
  v1 = *(v0 + 24);
  swift_getObjectType();
  [v1 cachePolicy];
  return sub_219BF6A64();
}

uint64_t sub_218E1D2D8(uint64_t *a1, uint64_t a2)
{
  v5 = *(sub_219BDBD34() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_218E18704(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218E1D380(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_2186D6710(255, &qword_280E8E080);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218E1D478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_7Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218E1D568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218E1D5B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_218E1D610()
{
  result = qword_27CC12738;
  if (!qword_27CC12738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12738);
  }

  return result;
}

uint64_t sub_218E1D6A4(void *a1)
{
  sub_218E24074(0, &qword_280E8C3B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E23F70();
  sub_219BF7B44();
  v9[15] = 0;
  type metadata accessor for SportsScoreSortingMatchFilter(0);
  sub_218E23FC4(&qword_280EAEAE0, type metadata accessor for SportsScoreSortingMatchFilter);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SportsScoreSortingSubsetFilter();
    v9[14] = 1;
    sub_218C425D4();
    sub_218E23FC4(&qword_280E8FDC8, sub_218C425D4);
    sub_219BF7854();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218E1D8B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_218C42540();
  v20 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched);
  v25 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E24074(0, &qword_280E8CB00, MEMORY[0x277D844C8]);
  v26 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SportsScoreSortingSubsetFilter();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E23F70();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = a1;
  v14 = v13;
  v16 = v22;
  v15 = v23;
  v28 = 0;
  sub_218E23FC4(&qword_280EAEAD8, type metadata accessor for SportsScoreSortingMatchFilter);
  v17 = v25;
  sub_219BF7734();
  sub_218E2400C(v17, v14, type metadata accessor for SportsScoreSortingMatchFilter);
  v27 = 1;
  sub_218C425D4();
  sub_218E23FC4(&qword_280E8FDC8, sub_218C425D4);
  sub_219BF7764();
  (*(v16 + 8))(v10, v26);
  (*(v15 + 32))(v14 + *(v11 + 20), v6, v20);
  sub_218E23E5C(v14, v21, type metadata accessor for SportsScoreSortingSubsetFilter);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_218E23D88(v14, type metadata accessor for SportsScoreSortingSubsetFilter);
}

uint64_t sub_218E1DCC8()
{
  if (*v0)
  {
    return 0x737265746C6966;
  }

  else
  {
    return 0x686374616DLL;
  }
}

uint64_t sub_218E1DD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x686374616DLL && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
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

uint64_t sub_218E1DDD8(uint64_t a1)
{
  v2 = sub_218E23F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E1DE14(uint64_t a1)
{
  v2 = sub_218E23F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E1DE80(uint64_t a1, uint64_t a2)
{
  if ((sub_218A84380(a1, a2) & 1) == 0)
  {
    return 0;
  }

  sub_218C425D4();
  sub_218E23FC4(&qword_280E8FDC8, sub_218C425D4);
  sub_218C4A1E8();

  return sub_219BF2694();
}

uint64_t sub_218E1DF48()
{
  sub_219BF7314();

  v0 = sub_218A830C4();
  MEMORY[0x21CECC330](v0);

  MEMORY[0x21CECC330](0x7265746C6966202CLL, 0xEA00000000003D73);
  type metadata accessor for SportsScoreSortingSubsetFilter();
  sub_218C42540();
  sub_219BF2664();
  v1 = MEMORY[0x21CECC6D0](v5, &type metadata for SportsScoreSortingFilter);
  v3 = v2;

  MEMORY[0x21CECC330](v1, v3);

  return 0x3D686374616DLL;
}

uint64_t type metadata accessor for SportsScoreSortingSubsetFilter()
{
  result = qword_280EAAFB0;
  if (!qword_280EAAFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218E1E098(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v634 = sub_219BDBF94();
  v6 = *(v634 - 8);
  MEMORY[0x28223BE20](v634);
  v633 = (&v622 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186DD5C0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v629 = &v622 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v636 = &v622 - v11;
  v689 = sub_219BF4AC4();
  v12 = *(v689 - 8);
  v13 = MEMORY[0x28223BE20](v689);
  v628 = &v622 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v694 = &v622 - v16;
  MEMORY[0x28223BE20](v15);
  v635 = &v622 - v17;
  v646 = sub_219BDBD34();
  v18 = *(v646 - 8);
  v19 = MEMORY[0x28223BE20](v646);
  v625 = &v622 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v627 = &v622 - v21;
  v664 = type metadata accessor for SportsScoreSortingFilterWhen();
  v22 = MEMORY[0x28223BE20](v664);
  v648 = (&v622 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v647 = (&v622 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v669 = (&v622 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v660 = (&v622 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v692 = (&v622 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v691 = (&v622 - v33);
  MEMORY[0x28223BE20](v32);
  v683 = (&v622 - v34);
  v35 = type metadata accessor for SportsScoreSortingSubsetFilter();
  MEMORY[0x28223BE20](v35);
  v668 = &v622 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v632 = &v622 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v639 = &v622 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v642 = &v622 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v652 = &v622 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v645 = &v622 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v655 = &v622 - v49;
  MEMORY[0x28223BE20](v48);
  v658 = &v622 - v50;
  v51 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v631 = &v622 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v630 = &v622 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v638 = &v622 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v637 = &v622 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v641 = &v622 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v640 = &v622 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v651 = &v622 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v650 = &v622 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v644 = &v622 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v643 = &v622 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v654 = &v622 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v653 = &v622 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v657 = &v622 - v77;
  MEMORY[0x28223BE20](v76);
  v656 = &v622 - v78;
  v79 = type metadata accessor for SportsScoreSortingOrFilter();
  v80 = MEMORY[0x28223BE20](v79 - 8);
  v82 = &v622 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x28223BE20](v80);
  v663 = &v622 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v699 = &v622 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v676 = &v622 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v661 = &v622 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v665 = &v622 - v92;
  MEMORY[0x28223BE20](v91);
  v659 = &v622 - v93;
  v94 = type metadata accessor for SportsScoreSortingAndFilter();
  v95 = MEMORY[0x28223BE20](v94 - 8);
  v662 = &v622 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x28223BE20](v95);
  v698 = &v622 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v671 = &v622 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v666 = &v622 - v102;
  MEMORY[0x28223BE20](v101);
  v702 = &v622 - v103;
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v677 = (&v622 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  v697 = sub_218A84E44(a1, a2, a3);
  v649 = sub_219AC4B08(a2, v697);
  sub_218C42540();
  v681 = v106;
  sub_219BF2664();
  v107 = v704;
  v684 = *(v704 + 16);
  if (!v684)
  {
LABEL_521:

    v704 = v649;
    sub_2191EDC00(v697);
    return v704;
  }

  v108 = 0;
  v696 = 0;
  v682 = v704 + 32;
  v688 = (v12 + 8);
  v626 = (v18 + 48);
  v624 = (v18 + 32);
  v623 = (v6 + 8);
  v622 = (v18 + 8);
  v695 = a3;
  v703 = v82;
  v109 = v699;
  v110 = v702;
  v672 = v704;
  while (1)
  {
    if (v108 >= *(v107 + 16))
    {
      goto LABEL_528;
    }

    v114 = *(v682 + 8 * v108);
    if (v697 >> 62)
    {
      v619 = v108;
      v620 = sub_219BF7214();
      v108 = v619;
      v107 = v672;
      if (!v620)
      {
        goto LABEL_4;
      }
    }

    else if (!*((v697 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    v115 = v114 >> 60;
    if ((v114 >> 60) <= 3)
    {
      break;
    }

    if (v115 <= 5)
    {
      v164 = v108;
      if (v115 == 4)
      {
        v165 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v166 = v697;
        v167 = sub_219659C8C(v697, a3, v165);
        v168 = sub_219AC4B08(v166, v167);

        v697 = v168;
      }

      else
      {
        v399 = swift_projectBox();
        v400 = v668;
        sub_218E23E5C(v399, v668, type metadata accessor for SportsScoreSortingSubsetFilter);

        v401 = sub_218E1E098(v400, v697, a3);

        sub_218E23D88(v400, type metadata accessor for SportsScoreSortingSubsetFilter);

        v697 = v401;
      }

      v110 = v702;
      v107 = v672;
      v108 = v164;
      goto LABEL_4;
    }

    if (v115 != 6)
    {
      v670 = v108;
      if (v115 == 7)
      {
        v116 = swift_projectBox();
        v117 = v650;
        sub_218E23E5C(v116, v650, type metadata accessor for SportsScoreSortingGroupByFilter);

        v118 = sub_218C490D4(v117, v697);
        v119 = v651;
        sub_218E23E5C(v117, v651, type metadata accessor for SportsScoreSortingGroupByFilter);
        v120 = v652;
        v121 = sub_218E2400C(v119, v652, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
        MEMORY[0x28223BE20](v121);
        *(&v622 - 2) = v120;
        *(&v622 - 1) = a3;
        v122 = v696;
        v123 = sub_218DDE84C(sub_218C4A8C8, (&v622 - 4), v118);

        v704 = v123;
        sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
        sub_218E23DE8(&qword_280E8EE88);
        v124 = sub_219BF56E4();
        v696 = v122;
        v109 = v699;

        v125 = v117;
        v82 = v703;
        sub_218E23D88(v125, type metadata accessor for SportsScoreSortingGroupByFilter);
        sub_218E23D88(v120, type metadata accessor for SportsScoreSortingGroupByGroupFilter);

        v697 = v124;
        goto LABEL_517;
      }

      v389 = swift_projectBox();
      v390 = v660;
      sub_218E23E5C(v389, v660, type metadata accessor for SportsScoreSortingFilterWhen);
      v391 = *v390;

      v392 = v391;
      v393 = v697;
      v667 = v114;
      if (sub_219473EF8(v392, v697, a3, v114))
      {
        sub_219BF2664();
        v394 = v704;
        v395 = *(v704 + 16);

        v687 = v395;
        if (v395)
        {
          v396 = 0;
          v686 = v394 + 32;
          v397 = v393;
          v398 = v698;
          v674 = v394;
          while (1)
          {
            if (v396 >= *(v394 + 16))
            {
              goto LABEL_543;
            }

            v405 = v394;
            v406 = *(v686 + 8 * v396);
            if (v397 >> 62)
            {
              v614 = v396;
              v615 = sub_219BF7214();
              v396 = v614;
              v407 = v615;
              if (!v615)
              {
                goto LABEL_288;
              }
            }

            else
            {
              v407 = *((v397 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v407)
              {
                goto LABEL_288;
              }
            }

            v408 = v406 >> 60;
            v701 = v397;
            if ((v406 >> 60) > 3)
            {
              if (v408 <= 5)
              {
                v447 = v396;
                if (v408 == 4)
                {
                  v448 = *((v406 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                  v449 = sub_219659C8C(v397, a3, v448);
                  v450 = sub_219AC4B08(v397, v449);

                  v397 = v450;
                }

                else
                {
                  v535 = swift_projectBox();
                  v536 = v668;
                  sub_218E23E5C(v535, v668, type metadata accessor for SportsScoreSortingSubsetFilter);

                  v537 = sub_218E1E098(v536, v397, a3);

                  sub_218E23D88(v536, type metadata accessor for SportsScoreSortingSubsetFilter);

                  v397 = v537;
                }

                v398 = v698;
                v396 = v447;
                goto LABEL_288;
              }

              v680 = v396;
              if (v408 == 6)
              {
                v451 = v406 & 0xFFFFFFFFFFFFFFFLL;
                v452 = *((v406 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v704 = MEMORY[0x277D84F90];
                v453 = v397 & 0xC000000000000001;
                v454 = v397 & 0xFFFFFFFFFFFFFF8;
                v700 = v451;

                v455 = 0;
                do
                {
                  if (v453)
                  {
                    MEMORY[0x21CECE0F0](v455, v397);
                    v456 = v455 + 1;
                    if (__OFADD__(v455, 1))
                    {
                      goto LABEL_529;
                    }
                  }

                  else
                  {
                    if (v455 >= *(v454 + 16))
                    {
                      goto LABEL_530;
                    }

                    v456 = v455 + 1;
                    if (__OFADD__(v455, 1))
                    {
                      goto LABEL_529;
                    }
                  }

                  sub_219BF3FA4();
                  if (v452)
                  {
                    v457 = v694;
                    if (v452 == 1)
                    {
                      v458 = sub_219BF4A74();
                    }

                    else
                    {
                      v458 = sub_219BF4A94();
                    }
                  }

                  else
                  {
                    v457 = v694;
                    v458 = sub_219BF4A84();
                  }

                  v459 = v458;
                  v460 = *v688;
                  (*v688)(v457, v689);
                  if (v459)
                  {
                    sub_219BF73D4();
                    sub_219BF7414();
                    sub_219BF7424();
                    sub_219BF73E4();
                  }

                  else
                  {
                  }

                  ++v455;
                  v163 = v456 == v407;
                  v82 = v703;
                  v398 = v698;
                  v397 = v701;
                }

                while (!v163);
                v538 = sub_219038F68(v452);

                v539 = sub_2193D0138(v538);
                a3 = v695;
                if (v539)
                {
                  sub_218A323F8(0, (v538 & 0xC000000000000001) == 0, v538);
                  v540 = v646;
                  if ((v538 & 0xC000000000000001) != 0)
                  {
                    MEMORY[0x21CECE0F0](0, v538);
                  }

                  else
                  {
                  }

                  v541 = v628;
                  sub_219BF3FA4();
                  v542 = v629;
                  sub_219BF4AB4();
                  v460(v541, v689);
                  if ((*v626)(v542, 1, v540) == 1)
                  {

                    sub_2189DD39C(v542);

                    v397 = MEMORY[0x277D84F90];
                  }

                  else
                  {
                    v606 = v625;
                    (*v624)(v625, v542, v540);
                    v607 = v633;
                    v608 = sub_219BDBF34();
                    MEMORY[0x28223BE20](v608);
                    *(&v622 - 2) = v607;
                    *(&v622 - 1) = v606;
                    v609 = v696;
                    v610 = sub_2195EB2C4(sub_218C49FD0, &v622 - 4, v538);
                    v696 = v609;

                    (*v623)(v607, v634);
                    v611 = v606;
                    v82 = v703;
                    (*v622)(v611, v540);

                    v397 = v610;
                  }

                  v398 = v698;
                  v109 = v699;
                }

                else
                {

                  v397 = MEMORY[0x277D84F90];
                  v109 = v699;
                }

                v394 = v674;
                goto LABEL_502;
              }

              if (v408 == 7)
              {
                v409 = swift_projectBox();
                v410 = v637;
                sub_218E23E5C(v409, v637, type metadata accessor for SportsScoreSortingGroupByFilter);

                v411 = sub_218C490D4(v410, v397);
                v412 = v638;
                sub_218E23E5C(v410, v638, type metadata accessor for SportsScoreSortingGroupByFilter);
                v413 = v639;
                v414 = sub_218E2400C(v412, v639, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                MEMORY[0x28223BE20](v414);
                *(&v622 - 2) = v413;
                *(&v622 - 1) = a3;
                v415 = v696;
                v416 = sub_218DDE84C(sub_218C4A8C8, (&v622 - 4), v411);

                v704 = v416;
                sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                sub_218E23DE8(&qword_280E8EE88);
                v397 = sub_219BF56E4();
                v696 = v415;
                v109 = v699;

                sub_218E23D88(v410, type metadata accessor for SportsScoreSortingGroupByFilter);
                sub_218E23D88(v413, type metadata accessor for SportsScoreSortingGroupByGroupFilter);

LABEL_301:
                v398 = v698;
                goto LABEL_287;
              }

              v527 = swift_projectBox();
              v528 = v647;
              sub_218E23E5C(v527, v647, type metadata accessor for SportsScoreSortingFilterWhen);
              v529 = *v528;

              v673 = v406;
              if (sub_219473EF8(v529, v397, a3, v406))
              {
                sub_219BF2664();
                v530 = v704;
                v531 = *(v704 + 16);

                v700 = v531;
                if (v531)
                {
                  v532 = 0;
                  v693 = (v530 + 32);
                  v533 = v397;
                  v534 = v662;
                  v690 = v530;
                  while (1)
                  {
                    if (v532 >= *(v530 + 16))
                    {
                      goto LABEL_553;
                    }

                    v545 = *&v693[8 * v532];
                    if (v533 >> 62)
                    {
                      if (!sub_219BF7214())
                      {
                        goto LABEL_437;
                      }
                    }

                    else if (!*((v533 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_437;
                    }

                    v546 = v545 >> 60;
                    if ((v545 >> 60) <= 3)
                    {
                      if (v546 > 1)
                      {
                        if (v546 != 2)
                        {
                          v579 = swift_projectBox();
                          sub_218E23E5C(v579, v82, type metadata accessor for SportsScoreSortingOrFilter);

                          sub_219BF2664();
                          v580 = v545;
                          v581 = *(v704 + 16);

                          if (v581)
                          {
                            v685 = v580;
                            v582 = MEMORY[0x277D84F90];
                            v704 = MEMORY[0x277D84F90];
                            sub_219BF2664();
                            v583 = *(v705 + 2);
                            v679 = v705;
                            if (!v583)
                            {
LABEL_482:

                              v705 = v582;
                              sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                              sub_218E23DE8(&qword_280E8EE88);
                              v603 = v696;
                              v604 = sub_219BF56E4();
                              v696 = v603;

                              sub_218E23D88(v82, type metadata accessor for SportsScoreSortingOrFilter);

                              v533 = v604;
                              a3 = v695;
                              v109 = v699;
                              v534 = v662;
                              v530 = v690;
                              goto LABEL_437;
                            }

                            v584 = (v705 + 32);
                            while (2)
                            {
                              v585 = *v584++;

                              v586 = sub_219659C8C(v533, v695, v585);
                              v587 = v586;
                              if (v586 >> 62)
                              {
                                v588 = sub_219BF7214();
                                if (!(v582 >> 62))
                                {
                                  goto LABEL_466;
                                }
                              }

                              else
                              {
                                v588 = *((v586 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                if (!(v582 >> 62))
                                {
LABEL_466:
                                  if (__OFADD__(*((v582 & 0xFFFFFFFFFFFFFF8) + 0x10), v588))
                                  {
                                    goto LABEL_556;
                                  }

LABEL_467:
                                  sub_218861260();
                                  v582 = v704;
                                  sub_218A3363C((v704 & 0xFFFFFFFFFFFFFF8) + 8 * *((v704 & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((v704 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v704 & 0xFFFFFFFFFFFFFF8) + 0x10), v587);
                                  v590 = v589;

                                  if (v590 < v588)
                                  {
                                    goto LABEL_557;
                                  }

                                  v82 = v703;
                                  if (v590 >= 1)
                                  {
                                    v591 = *((v582 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                    v153 = __OFADD__(v591, v590);
                                    v592 = v591 + v590;
                                    if (v153)
                                    {
                                      goto LABEL_561;
                                    }

                                    *((v582 & 0xFFFFFFFFFFFFFF8) + 0x10) = v592;
                                  }

                                  v704 = v582;
                                  if (!--v583)
                                  {
                                    goto LABEL_482;
                                  }

                                  continue;
                                }
                              }

                              break;
                            }

                            if (__OFADD__(sub_219BF7214(), v588))
                            {
                              goto LABEL_556;
                            }

                            goto LABEL_467;
                          }

                          sub_218E23D88(v82, type metadata accessor for SportsScoreSortingOrFilter);

                          goto LABEL_481;
                        }

                        v560 = swift_projectBox();
                        sub_218E23E5C(v560, v534, type metadata accessor for SportsScoreSortingAndFilter);
                        v685 = v545;

                        sub_219BF2664();
                        v561 = *(v704 + 16);

                        if (v561)
                        {
                          sub_219BF2664();
                          v562 = *(v704 + 16);
                          if (v562)
                          {
                            v679 = v704;
                            v563 = (v704 + 32);

                            v564 = v533;
                            v565 = v696;
                            do
                            {
                              v566 = *v563++;

                              v567 = sub_219659C8C(v533, a3, v566);
                              v568 = sub_218C40DA4(v567);

                              v569 = sub_218845F78(v568);
                              a3 = v695;

                              v564 = sub_218C48A88(v564, v569);

                              swift_bridgeObjectRelease_n();
                              --v562;
                            }

                            while (v562);
                            v696 = v565;

                            v533 = v564;
                            v82 = v703;
                            v109 = v699;
                            v530 = v690;
                          }

                          v534 = v662;
                        }

                        v570 = type metadata accessor for SportsScoreSortingAndFilter;
                        v571 = v534;
                        goto LABEL_478;
                      }

                      if (v546)
                      {
                        v575 = swift_projectBox();
                        v576 = v677;
                        sub_218E23E5C(v575, v677, type metadata accessor for SportsScoreSortingMatchFilter);

                        v577 = sub_218A84E44(v576, v533, a3);
                        v578 = sub_219AC4B08(v533, v577);

                        sub_218E23D88(v576, type metadata accessor for SportsScoreSortingMatchFilter);

                        v533 = v578;
LABEL_481:
                        v534 = v662;
                        goto LABEL_437;
                      }

                      v557 = swift_projectBox();
                      v558 = v677;
                      sub_218E23E5C(v557, v677, type metadata accessor for SportsScoreSortingMatchFilter);

                      v559 = sub_218A84E44(v558, v533, a3);

                      sub_218E23D88(v558, type metadata accessor for SportsScoreSortingMatchFilter);

                      v533 = v559;
                    }

                    else
                    {
                      if (v546 <= 5)
                      {
                        if (v546 == 4)
                        {
                          v572 = *((v545 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                          v573 = sub_219659C8C(v533, a3, v572);
                          v574 = sub_219AC4B08(v533, v573);

                          v533 = v574;
                          v530 = v690;
                        }

                        else
                        {
                          v600 = swift_projectBox();
                          v601 = v668;
                          sub_218E23E5C(v600, v668, type metadata accessor for SportsScoreSortingSubsetFilter);

                          v602 = sub_218E1E098(v601, v533, a3);

                          sub_218E23D88(v601, type metadata accessor for SportsScoreSortingSubsetFilter);

                          v533 = v602;
                        }
                      }

                      else
                      {
                        if (v546 == 6)
                        {
                          v543 = *((v545 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                          v544 = sub_21903E324(v543, v533);
                        }

                        else
                        {
                          if (v546 != 7)
                          {
                            v593 = swift_projectBox();
                            v594 = v545;
                            v595 = v648;
                            sub_218E23E5C(v593, v648, type metadata accessor for SportsScoreSortingFilterWhen);
                            v596 = *v595;

                            if (sub_219473EF8(v596, v533, a3, v594))
                            {
                              sub_219BF2664();
                              v597 = v704;

                              v598 = v696;
                              v599 = sub_218C40F44(v533, v597, a3);
                              v696 = v598;
                              v109 = v699;

                              v533 = v599;
                              v534 = v662;
                            }

                            v570 = type metadata accessor for SportsScoreSortingFilterWhen;
                            v571 = v648;
LABEL_478:
                            sub_218E23D88(v571, v570);

                            goto LABEL_437;
                          }

                          v547 = swift_projectBox();
                          v548 = v630;
                          sub_218E23E5C(v547, v630, type metadata accessor for SportsScoreSortingGroupByFilter);

                          v549 = sub_218C490D4(v548, v533);
                          v550 = v631;
                          sub_218E23E5C(v548, v631, type metadata accessor for SportsScoreSortingGroupByFilter);
                          v551 = v632;
                          v552 = sub_218E2400C(v550, v632, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                          MEMORY[0x28223BE20](v552);
                          *(&v622 - 2) = v551;
                          *(&v622 - 1) = a3;
                          v553 = v696;
                          v554 = sub_218DDE84C(sub_218C49E14, (&v622 - 4), v549);

                          v704 = v554;
                          sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                          sub_218E23DE8(&qword_280E8EE88);
                          v544 = sub_219BF56E4();
                          v696 = v553;
                          v109 = v699;

                          v555 = v548;
                          v82 = v703;
                          sub_218E23D88(v555, type metadata accessor for SportsScoreSortingGroupByFilter);
                          v556 = v551;
                          v530 = v690;
                          sub_218E23D88(v556, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                        }

                        v533 = v544;
                      }

                      v534 = v662;
                    }

LABEL_437:
                    if (++v532 == v700)
                    {
                      goto LABEL_499;
                    }
                  }
                }

                v533 = v397;
LABEL_499:

                v397 = v533;
                v605 = v647;
                v394 = v674;
              }

              else
              {
                v605 = v528;
                v394 = v405;
              }

              sub_218E23D88(v605, type metadata accessor for SportsScoreSortingFilterWhen);

LABEL_501:
              v398 = v698;
LABEL_502:
              v396 = v680;
              goto LABEL_289;
            }

            v680 = v396;
            if (v408 > 1)
            {
              break;
            }

            if (v408)
            {
              v417 = swift_projectBox();
              v418 = v677;
              sub_218E23E5C(v417, v677, type metadata accessor for SportsScoreSortingMatchFilter);

              v419 = v701;
              v420 = sub_218A84E44(v418, v701, a3);
              v421 = sub_219AC4B08(v419, v420);

              sub_218E23D88(v418, type metadata accessor for SportsScoreSortingMatchFilter);

              v397 = v421;
              goto LABEL_301;
            }

            v402 = swift_projectBox();
            v403 = v677;
            sub_218E23E5C(v402, v677, type metadata accessor for SportsScoreSortingMatchFilter);

            v404 = sub_218A84E44(v403, v701, a3);

            sub_218E23D88(v403, type metadata accessor for SportsScoreSortingMatchFilter);

            v397 = v404;
LABEL_287:
            v396 = v680;
LABEL_288:
            v394 = v405;
LABEL_289:
            if (++v396 == v687)
            {
              goto LABEL_514;
            }
          }

          if (v408 == 2)
          {
            v422 = swift_projectBox();
            sub_218E23E5C(v422, v398, type metadata accessor for SportsScoreSortingAndFilter);
            v673 = v406;

            sub_219BF2664();
            v423 = *(v704 + 16);

            if (!v423)
            {
              v397 = v701;
              v394 = v405;
              goto LABEL_495;
            }

            sub_219BF2664();
            v685 = *(v704 + 16);
            if (!v685)
            {
              v394 = v405;

              v398 = v698;
              v397 = v701;
LABEL_495:
              sub_218E23D88(v398, type metadata accessor for SportsScoreSortingAndFilter);

              goto LABEL_502;
            }

            v690 = v704;
            v679 = (v704 + 32);
            v424 = v701;

            v425 = 0;
            v426 = v424;
            while (2)
            {
              if (v425 >= *(v690 + 16))
              {
                goto LABEL_558;
              }

              v427 = *&v679[8 * v425];

              v693 = v427;
              v428 = sub_219659C8C(v424, a3, v427);
              v429 = v428;
              if (v428 >> 62)
              {
                v430 = sub_219BF7214();
                v700 = v425;
                if (!v430)
                {
                  goto LABEL_322;
                }

LABEL_310:
                v704 = MEMORY[0x277D84F90];
                sub_218C33F88(v430);
                if (v430 < 0)
                {
                  goto LABEL_562;
                }

                v431 = 0;
                do
                {
                  if ((v429 & 0xC000000000000001) != 0)
                  {
                    MEMORY[0x21CECE0F0](v431, v429);
                  }

                  else
                  {
                  }

                  v432 = sub_219BF3F84();
                  v434 = v433;

                  v435 = v704;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_21870B65C(0, *(v435 + 16) + 1, 1);
                    v435 = v704;
                  }

                  v437 = *(v435 + 16);
                  v436 = *(v435 + 24);
                  if (v437 >= v436 >> 1)
                  {
                    sub_21870B65C((v436 > 1), v437 + 1, 1);
                    v435 = v704;
                  }

                  ++v431;
                  *(v435 + 16) = v437 + 1;
                  v438 = v435 + 16 * v437;
                  *(v438 + 32) = v432;
                  *(v438 + 40) = v434;
                  v109 = v699;
                }

                while (v430 != v431);

                v439 = MEMORY[0x277D84F90];
              }

              else
              {
                v430 = *((v428 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v700 = v425;
                if (v430)
                {
                  goto LABEL_310;
                }

LABEL_322:

                v439 = MEMORY[0x277D84F90];
                v435 = MEMORY[0x277D84F90];
              }

              v440 = sub_218845F78(v435);

              v704 = v439;
              if (v426 >> 62)
              {
                v441 = sub_219BF7214();
                v398 = v698;
                if (v441)
                {
LABEL_325:
                  v442 = 0;
                  do
                  {
                    if ((v426 & 0xC000000000000001) != 0)
                    {
                      MEMORY[0x21CECE0F0](v442, v426);
                      v443 = v442 + 1;
                      if (__OFADD__(v442, 1))
                      {
                        goto LABEL_524;
                      }
                    }

                    else
                    {
                      if (v442 >= *((v426 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_525;
                      }

                      v443 = v442 + 1;
                      if (__OFADD__(v442, 1))
                      {
                        goto LABEL_524;
                      }
                    }

                    v444 = sub_219BF3F84();
                    v446 = sub_2188537B8(v444, v445, v440);

                    if (v446)
                    {
                      sub_219BF73D4();
                      sub_219BF7414();
                      sub_219BF7424();
                      sub_219BF73E4();
                    }

                    else
                    {
                    }

                    ++v442;
                    v163 = v443 == v441;
                    v398 = v698;
                    v109 = v699;
                  }

                  while (!v163);
                }
              }

              else
              {
                v441 = *((v426 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v398 = v698;
                if (v441)
                {
                  goto LABEL_325;
                }
              }

              v425 = v700 + 1;

              v82 = v703;
              v426 = v704;
              a3 = v695;
              v424 = v701;
              if (v425 == v685)
              {

                v397 = v426;
                v394 = v674;
                goto LABEL_495;
              }

              continue;
            }
          }

          v461 = swift_projectBox();
          sub_218E23E5C(v461, v109, type metadata accessor for SportsScoreSortingOrFilter);

          sub_219BF2664();
          v462 = *(v704 + 16);

          if (!v462)
          {
            sub_218E23D88(v109, type metadata accessor for SportsScoreSortingOrFilter);

            v398 = v698;
            v396 = v680;
            v397 = v701;
            goto LABEL_288;
          }

          v673 = v406;
          sub_219BF2664();
          v463 = v704;
          v679 = *(v704 + 16);
          if (!v679)
          {

            v394 = v405;
            v467 = MEMORY[0x277D84F90];
LABEL_497:
            v704 = v467;
            sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218E23DE8(&qword_280E8EE88);
            v612 = v696;
            v613 = sub_219BF56E4();
            v696 = v612;

            v109 = v699;
            sub_218E23D88(v699, type metadata accessor for SportsScoreSortingOrFilter);

            v397 = v613;
            goto LABEL_501;
          }

          v464 = 0;
          v678 = (v704 + 32);
          v465 = v669;
          v466 = v701;
          v394 = v405;
          v467 = MEMORY[0x277D84F90];
          v675 = v704;
          while (2)
          {
            if (v464 >= *(v463 + 16))
            {
              goto LABEL_547;
            }

            v469 = *&v678[8 * v464];
            v470 = v469 >> 60;
            v700 = v464;
            v693 = v469;
            if ((v469 >> 60) <= 3)
            {
              v482 = v663;
              if (v470 > 1)
              {
                if (v470 != 2)
                {
                  v493 = swift_projectBox();
                  sub_218E23E5C(v493, v482, type metadata accessor for SportsScoreSortingOrFilter);

                  sub_219BF2664();
                  v494 = *(v704 + 16);

                  if (v494)
                  {
                    v690 = v467;
                    v495 = v394;
                    v704 = MEMORY[0x277D84F90];
                    sub_219BF2664();
                    v496 = *(v705 + 2);
                    if (v496)
                    {
                      v497 = (v705 + 32);
                      v498 = v701;
                      do
                      {
                        v499 = *v497++;

                        v500 = sub_219659C8C(v498, a3, v499);
                        sub_2191EDC00(v500);

                        --v496;
                      }

                      while (v496);
                    }

                    v705 = v704;
                    sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                    sub_218E23DE8(&qword_280E8EE88);
                    v501 = v696;
                    v479 = sub_219BF56E4();
                    v696 = v501;

                    sub_218E23D88(v482, type metadata accessor for SportsScoreSortingOrFilter);
                    v394 = v495;
                    v467 = v690;
                  }

                  else
                  {
                    sub_218E23D88(v482, type metadata accessor for SportsScoreSortingOrFilter);

                    v479 = v466;
                  }

                  goto LABEL_395;
                }

                v486 = swift_projectBox();
                v484 = v666;
                sub_218E23E5C(v486, v666, type metadata accessor for SportsScoreSortingAndFilter);

                v479 = sub_219A600C4(v484, v466, a3, v469);
                v485 = type metadata accessor for SportsScoreSortingAndFilter;
              }

              else
              {
                if (v470)
                {
                  v490 = swift_projectBox();
                  v491 = v677;
                  sub_218E23E5C(v490, v677, type metadata accessor for SportsScoreSortingMatchFilter);

                  v492 = sub_218A84E44(v491, v466, a3);
                  v479 = sub_219AC4B08(v466, v492);

                  v480 = type metadata accessor for SportsScoreSortingMatchFilter;
                  v481 = v491;
                  goto LABEL_394;
                }

                v483 = swift_projectBox();
                v484 = v677;
                sub_218E23E5C(v483, v677, type metadata accessor for SportsScoreSortingMatchFilter);

                v479 = sub_218A84E44(v484, v466, a3);
                v485 = type metadata accessor for SportsScoreSortingMatchFilter;
              }
            }

            else
            {
              if (v470 > 5)
              {
                if (v470 == 6)
                {
                  v489 = *((v469 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                  v479 = sub_21903E324(v489, v466);
                }

                else
                {
                  if (v470 == 7)
                  {
                    v471 = swift_projectBox();
                    v472 = v640;
                    sub_218E23E5C(v471, v640, type metadata accessor for SportsScoreSortingGroupByFilter);

                    v473 = sub_218C490D4(v472, v466);
                    v474 = v641;
                    sub_218E23E5C(v472, v641, type metadata accessor for SportsScoreSortingGroupByFilter);
                    v475 = v642;
                    v476 = sub_218E2400C(v474, v642, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                    MEMORY[0x28223BE20](v476);
                    *(&v622 - 2) = v475;
                    *(&v622 - 1) = a3;
                    v477 = v696;
                    v478 = sub_218DDE84C(sub_218C4A8C8, (&v622 - 4), v473);

                    v704 = v478;
                    sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                    sub_218E23DE8(&qword_280E8EE88);
                    v479 = sub_219BF56E4();
                    v696 = v477;

                    sub_218E23D88(v472, type metadata accessor for SportsScoreSortingGroupByFilter);
                    v480 = type metadata accessor for SportsScoreSortingGroupByGroupFilter;
                    v481 = v475;
                  }

                  else
                  {
                    v502 = swift_projectBox();
                    sub_218E23E5C(v502, v465, type metadata accessor for SportsScoreSortingFilterWhen);
                    v503 = *v465;

                    if (sub_219473EF8(v503, v466, a3, v469))
                    {
                      sub_219BF2664();
                      v504 = v704;
                      v505 = *(v704 + 16);

                      if (v505)
                      {
                        v506 = 0;
                        while (v506 < *(v504 + 16))
                        {
                          v507 = v506 + 1;
                          v508 = *(v504 + 32 + 8 * v506);

                          v479 = sub_219659C8C(v466, a3, v508);

                          v466 = v479;
                          v506 = v507;
                          if (v505 == v507)
                          {
                            goto LABEL_392;
                          }
                        }

                        goto LABEL_546;
                      }

                      v479 = v466;
LABEL_392:

                      v394 = v674;
                    }

                    else
                    {

                      v479 = v466;
                    }

                    v480 = type metadata accessor for SportsScoreSortingFilterWhen;
                    v481 = v669;
                  }

LABEL_394:
                  sub_218E23D88(v481, v480);
                }

LABEL_395:
                v510 = v479 >> 62;
                if (v479 >> 62)
                {
                  v511 = sub_219BF7214();
                }

                else
                {
                  v511 = *((v479 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v512 = v467 >> 62;
                if (v467 >> 62)
                {
                  v526 = sub_219BF7214();
                  v514 = v526 + v511;
                  if (__OFADD__(v526, v511))
                  {
                    goto LABEL_548;
                  }
                }

                else
                {
                  v513 = *((v467 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v514 = v513 + v511;
                  if (__OFADD__(v513, v511))
                  {
                    goto LABEL_548;
                  }
                }

                if (swift_isUniquelyReferenced_nonNull_bridgeObject())
                {
                  if (!v512)
                  {
                    v515 = v467 & 0xFFFFFFFFFFFFFF8;
                    if (v514 > *((v467 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
LABEL_405:
                      v467 = sub_219BF7364();
                      v515 = v467 & 0xFFFFFFFFFFFFFF8;
                    }

                    v516 = *(v515 + 16);
                    v517 = *(v515 + 24);
                    if (v510)
                    {
                      v518 = sub_219BF7214();
                      if (v518)
                      {
                        goto LABEL_410;
                      }

LABEL_359:

                      v465 = v669;
                      v468 = v700;
                      v466 = v701;
                      v463 = v675;
                      if (v511 > 0)
                      {
                        goto LABEL_549;
                      }
                    }

                    else
                    {
                      v518 = *((v479 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (!v518)
                      {
                        goto LABEL_359;
                      }

LABEL_410:
                      if (((v517 >> 1) - v516) < v511)
                      {
                        goto LABEL_559;
                      }

                      v519 = v515 + 8 * v516 + 32;
                      v690 = v467;
                      v685 = v511;
                      if (v510)
                      {
                        if (v518 < 1)
                        {
                          goto LABEL_564;
                        }

                        sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                        sub_218E23DE8(&qword_27CC0CC70);
                        for (i = 0; i != v518; ++i)
                        {
                          v521 = sub_218A35350(&v704, i, v479);
                          v523 = *v522;

                          (v521)(&v704, 0);
                          *(v519 + 8 * i) = v523;
                        }
                      }

                      else
                      {
                        sub_219BF4044();
                        swift_arrayInitWithCopy();
                      }

                      if (v685 <= 0)
                      {
                        v465 = v669;
                        v82 = v703;
                        v394 = v674;
                        v468 = v700;
                        v466 = v701;
                        v467 = v690;
                        v463 = v675;
                      }

                      else
                      {
                        v524 = *(v515 + 16);
                        v153 = __OFADD__(v524, v685);
                        v525 = v524 + v685;
                        v465 = v669;
                        v82 = v703;
                        v394 = v674;
                        v467 = v690;
                        v463 = v675;
                        v468 = v700;
                        v466 = v701;
                        if (v153)
                        {
                          goto LABEL_563;
                        }

                        *(v515 + 16) = v525;
                      }
                    }

                    v464 = v468 + 1;
                    a3 = v695;
                    if (v464 == v679)
                    {

                      goto LABEL_497;
                    }

                    continue;
                  }
                }

                else if (!v512)
                {
                  goto LABEL_405;
                }

                sub_219BF7214();
                goto LABEL_405;
              }

              if (v470 == 4)
              {
                v487 = *((v469 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                v488 = sub_219659C8C(v701, a3, v487);
                v479 = sub_219AC4B08(v701, v488);

                goto LABEL_395;
              }

              v509 = swift_projectBox();
              v484 = v668;
              sub_218E23E5C(v509, v668, type metadata accessor for SportsScoreSortingSubsetFilter);

              v479 = sub_218E1E098(v484, v466, a3);
              v485 = type metadata accessor for SportsScoreSortingSubsetFilter;
            }

            break;
          }

          v480 = v485;
          v481 = v484;
          goto LABEL_394;
        }

        v397 = v393;
LABEL_514:

        v697 = v397;
      }

      sub_218E23D88(v660, type metadata accessor for SportsScoreSortingFilterWhen);
LABEL_516:

LABEL_517:
      v110 = v702;
LABEL_518:
      v107 = v672;
      v108 = v670;
      goto LABEL_4;
    }

    v111 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v112 = v108;

    v113 = sub_21903E324(v111, v697);

    v108 = v112;
    v107 = v672;
    v697 = v113;
    v110 = v702;
LABEL_4:
    if (++v108 == v684)
    {
      goto LABEL_521;
    }
  }

  if (v115 <= 1)
  {
    v126 = v108;
    if (v115)
    {
      v169 = swift_projectBox();
      v170 = v677;
      sub_218E23E5C(v169, v677, type metadata accessor for SportsScoreSortingMatchFilter);

      v171 = v697;
      v172 = sub_218A84E44(v170, v697, a3);
      v173 = sub_219AC4B08(v171, v172);

      sub_218E23D88(v170, type metadata accessor for SportsScoreSortingMatchFilter);

      v697 = v173;
      v110 = v702;
    }

    else
    {
      v127 = swift_projectBox();
      v128 = v677;
      sub_218E23E5C(v127, v677, type metadata accessor for SportsScoreSortingMatchFilter);

      v129 = sub_218A84E44(v128, v697, a3);

      sub_218E23D88(v128, type metadata accessor for SportsScoreSortingMatchFilter);

      v697 = v129;
    }

    v107 = v672;
    v108 = v126;
    goto LABEL_4;
  }

  v670 = v108;
  if (v115 != 2)
  {
    v174 = swift_projectBox();
    v175 = v659;
    sub_218E23E5C(v174, v659, type metadata accessor for SportsScoreSortingOrFilter);

    sub_219BF2664();
    v176 = *(v704 + 16);

    if (!v176)
    {
      sub_218E23D88(v175, type metadata accessor for SportsScoreSortingOrFilter);
      goto LABEL_516;
    }

    v667 = v114;
    sub_219BF2664();
    v177 = v704;
    v675 = *(v704 + 16);
    if (!v675)
    {

      v616 = MEMORY[0x277D84F90];
      goto LABEL_512;
    }

    v178 = 0;
    v674 = v704 + 32;
    v179 = MEMORY[0x277D84F90];
    v673 = v704;
    while (1)
    {
      if (v178 >= *(v177 + 16))
      {
        goto LABEL_535;
      }

      v180 = *(v674 + 8 * v178);
      v181 = v180 >> 60;
      v701 = v179;
      v690 = v178;
      v693 = v180;
      if ((v180 >> 60) <= 3)
      {
        break;
      }

      v182 = v691;
      if (v181 <= 5)
      {
        if (v181 == 4)
        {
          v199 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

          v200 = v697;
          v201 = sub_219659C8C(v697, a3, v199);
          v191 = sub_219AC4B08(v200, v201);

          goto LABEL_252;
        }

        v285 = swift_projectBox();
        v195 = v668;
        sub_218E23E5C(v285, v668, type metadata accessor for SportsScoreSortingSubsetFilter);

        v191 = sub_218E1E098(v195, v697, a3);
        v196 = type metadata accessor for SportsScoreSortingSubsetFilter;
        goto LABEL_157;
      }

      if (v181 == 6)
      {
        v202 = *((v180 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v191 = sub_21903E324(v202, v697);
        goto LABEL_252;
      }

      if (v181 != 7)
      {
        v277 = swift_projectBox();
        sub_218E23E5C(v277, v182, type metadata accessor for SportsScoreSortingFilterWhen);
        v278 = *v182;

        v191 = v697;
        v279 = sub_219473EF8(v278, v697, a3, v180);
        v280 = v692;
        if (v279)
        {
          sub_219BF2664();
          v281 = v704;
          v282 = *(v704 + 16);

          v283 = v671;
          v687 = v282;
          if (v282)
          {
            v284 = 0;
            v686 = v281 + 32;
            v182 = v691;
            v679 = v281;
            while (1)
            {
              if (v284 >= *(v281 + 16))
              {
                goto LABEL_538;
              }

              v290 = *(v686 + 8 * v284);
              if (v191 >> 62)
              {
                v291 = sub_219BF7214();
                if (!v291)
                {
                  goto LABEL_161;
                }
              }

              else
              {
                v291 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v291)
                {
                  goto LABEL_161;
                }
              }

              v292 = v290 >> 60;
              v700 = v191;
              if ((v290 >> 60) > 3)
              {
                break;
              }

              v302 = v676;
              if (v292 <= 1)
              {
                if (v292)
                {
                  v303 = swift_projectBox();
                  v304 = v677;
                  sub_218E23E5C(v303, v677, type metadata accessor for SportsScoreSortingMatchFilter);

                  v305 = sub_218A84E44(v304, v191, a3);
                  v306 = sub_219AC4B08(v191, v305);

                  sub_218E23D88(v304, type metadata accessor for SportsScoreSortingMatchFilter);

                  v191 = v306;
                  goto LABEL_227;
                }

                v286 = swift_projectBox();
                v287 = v677;
                sub_218E23E5C(v286, v677, type metadata accessor for SportsScoreSortingMatchFilter);

                v288 = sub_218A84E44(v287, v191, a3);

                v289 = type metadata accessor for SportsScoreSortingMatchFilter;
LABEL_159:
                sub_218E23D88(v287, v289);

                v191 = v288;
                goto LABEL_160;
              }

              if (v292 == 2)
              {
                v307 = swift_projectBox();
                sub_218E23E5C(v307, v283, type metadata accessor for SportsScoreSortingAndFilter);
                v680 = v290;

                v308 = v283;
                sub_219BF2664();
                v309 = *(v704 + 16);

                if (v309)
                {
                  sub_219BF2664();
                  v310 = *(v704 + 16);
                  if (v310)
                  {
                    v685 = v284;
                    v311 = v281;
                    v700 = v704;
                    v312 = (v704 + 32);

                    v313 = v191;
                    v314 = v696;
                    do
                    {
                      v315 = *v312++;

                      v316 = sub_219659C8C(v191, a3, v315);
                      v317 = sub_218C40DA4(v316);

                      v318 = sub_218845F78(v317);

                      v313 = sub_218C48A88(v313, v318);

                      a3 = v695;
                      swift_bridgeObjectRelease_n();
                      --v310;
                    }

                    while (v310);
                    v696 = v314;

                    v191 = v313;
                    v280 = v692;
                    v283 = v671;
                    v281 = v311;
                    v284 = v685;
                  }

                  else
                  {
                    v283 = v308;
                  }

                  v82 = v703;
                }

                else
                {
                  v283 = v308;
                }

                sub_218E23D88(v283, type metadata accessor for SportsScoreSortingAndFilter);

                v182 = v691;
                goto LABEL_161;
              }

              v331 = swift_projectBox();
              sub_218E23E5C(v331, v302, type metadata accessor for SportsScoreSortingOrFilter);

              sub_219BF2664();
              v332 = *(v704 + 16);

              if (v332)
              {
                v680 = v290;
                v685 = v284;
                v333 = MEMORY[0x277D84F90];
                v704 = MEMORY[0x277D84F90];
                sub_219BF2664();
                v334 = *(v705 + 2);
                v678 = v705;
                if (!v334)
                {
                  v281 = v679;
LABEL_232:

                  v705 = v333;
                  sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                  sub_218E23DE8(&qword_280E8EE88);
                  v365 = v696;
                  v366 = sub_219BF56E4();
                  v696 = v365;

                  sub_218E23D88(v302, type metadata accessor for SportsScoreSortingOrFilter);

                  v191 = v366;
                  a3 = v695;
                  goto LABEL_236;
                }

                v335 = (v705 + 32);
                v281 = v679;
                while (2)
                {
                  v336 = *v335++;

                  v337 = sub_219659C8C(v191, v695, v336);
                  v338 = v337;
                  if (v337 >> 62)
                  {
                    v339 = sub_219BF7214();
                    if (!(v333 >> 62))
                    {
                      goto LABEL_199;
                    }
                  }

                  else
                  {
                    v339 = *((v337 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (!(v333 >> 62))
                    {
LABEL_199:
                      if (__OFADD__(*((v333 & 0xFFFFFFFFFFFFFF8) + 0x10), v339))
                      {
                        goto LABEL_539;
                      }

                      goto LABEL_200;
                    }
                  }

                  if (__OFADD__(sub_219BF7214(), v339))
                  {
                    goto LABEL_539;
                  }

LABEL_200:
                  sub_218861260();
                  v333 = v704;
                  sub_218A3363C((v704 & 0xFFFFFFFFFFFFFF8) + 8 * *((v704 & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((v704 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v704 & 0xFFFFFFFFFFFFFF8) + 0x10), v338);
                  v341 = v340;

                  if (v341 < v339)
                  {
                    goto LABEL_540;
                  }

                  v280 = v692;
                  v82 = v703;
                  v302 = v676;
                  if (v341 >= 1)
                  {
                    v342 = *((v333 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    v153 = __OFADD__(v342, v341);
                    v343 = v342 + v341;
                    if (v153)
                    {
                      goto LABEL_550;
                    }

                    *((v333 & 0xFFFFFFFFFFFFFF8) + 0x10) = v343;
                  }

                  v704 = v333;
                  --v334;
                  v191 = v700;
                  if (!v334)
                  {
                    goto LABEL_232;
                  }

                  continue;
                }
              }

              sub_218E23D88(v302, type metadata accessor for SportsScoreSortingOrFilter);

              v182 = v691;
              v283 = v671;
              v281 = v679;
LABEL_161:
              if (++v284 == v687)
              {
                goto LABEL_248;
              }
            }

            if (v292 <= 5)
            {
              if (v292 != 4)
              {
                v353 = swift_projectBox();
                v287 = v668;
                sub_218E23E5C(v353, v668, type metadata accessor for SportsScoreSortingSubsetFilter);

                v288 = sub_218E1E098(v287, v191, a3);

                v289 = type metadata accessor for SportsScoreSortingSubsetFilter;
                goto LABEL_159;
              }

              v319 = *((v290 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

              v320 = sub_219659C8C(v191, a3, v319);
              v321 = v284;
              v322 = sub_219AC4B08(v191, v320);

              v182 = v691;

              v280 = v692;

              v191 = v322;
              v284 = v321;
            }

            else
            {
              v685 = v284;
              if (v292 != 6)
              {
                if (v292 == 7)
                {
                  v293 = swift_projectBox();
                  v294 = v643;
                  sub_218E23E5C(v293, v643, type metadata accessor for SportsScoreSortingGroupByFilter);

                  v295 = sub_218C490D4(v294, v191);
                  v680 = v290;
                  v296 = v644;
                  sub_218E23E5C(v294, v644, type metadata accessor for SportsScoreSortingGroupByFilter);
                  v297 = v645;
                  v298 = sub_218E2400C(v296, v645, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                  MEMORY[0x28223BE20](v298);
                  *(&v622 - 2) = v297;
                  *(&v622 - 1) = a3;
                  v299 = v696;
                  v300 = sub_218DDE84C(sub_218C4A8C8, (&v622 - 4), v295);

                  v704 = v300;
                  sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                  sub_218E23DE8(&qword_280E8EE88);
                  v280 = v692;
                  v301 = sub_219BF56E4();
                  v696 = v299;

                  sub_218E23D88(v294, type metadata accessor for SportsScoreSortingGroupByFilter);
                  sub_218E23D88(v297, type metadata accessor for SportsScoreSortingGroupByGroupFilter);

                  v191 = v301;
                }

                else
                {
                  v344 = swift_projectBox();
                  sub_218E23E5C(v344, v280, type metadata accessor for SportsScoreSortingFilterWhen);
                  v345 = *v280;

                  if (sub_219473EF8(v345, v191, a3, v290))
                  {
                    v680 = v290;
                    sub_219BF2664();
                    v346 = v704;
                    v347 = *(v704 + 16);

                    if (v347)
                    {
                      v348 = 0;
                      v349 = v191;
                      do
                      {
                        if (v348 >= *(v346 + 16))
                        {
                          goto LABEL_544;
                        }

                        v350 = v348 + 1;
                        v351 = *(v346 + 32 + 8 * v348);

                        v352 = sub_219659C8C(v349, a3, v351);

                        v349 = v352;
                        v348 = v350;
                      }

                      while (v347 != v350);
                    }

                    else
                    {
                      v352 = v191;
                    }

                    v191 = v352;
                    v280 = v692;
                  }

                  sub_218E23D88(v280, type metadata accessor for SportsScoreSortingFilterWhen);
                }

LABEL_236:
                v182 = v691;
                v283 = v671;
                v284 = v685;
                goto LABEL_161;
              }

              v323 = *((v290 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v704 = MEMORY[0x277D84F90];
              v324 = v191 & 0xC000000000000001;
              v680 = v290 & 0xFFFFFFFFFFFFFFFLL;

              v325 = 0;
              v326 = v191 & 0xFFFFFFFFFFFFFF8;
              do
              {
                if (v324)
                {
                  v327 = MEMORY[0x21CECE0F0](v325, v191);
                  v328 = v325 + 1;
                  if (__OFADD__(v325, 1))
                  {
                    goto LABEL_526;
                  }
                }

                else
                {
                  if (v325 >= *(v326 + 16))
                  {
                    goto LABEL_527;
                  }

                  v327 = *(v191 + 8 * v325 + 32);

                  v328 = v325 + 1;
                  if (__OFADD__(v325, 1))
                  {
                    goto LABEL_526;
                  }
                }

                v705 = v327;
                v329 = v696;
                v330 = sub_219038E4C(&v705, v323);
                v696 = v329;
                if (v329)
                {
                  goto LABEL_566;
                }

                if (v330)
                {
                  sub_219BF73D4();
                  sub_219BF7414();
                  v280 = v692;
                  sub_219BF7424();
                  sub_219BF73E4();
                  v182 = v691;
                }

                else
                {
                }

                ++v325;
                v163 = v328 == v291;
                v191 = v700;
              }

              while (!v163);
              v354 = sub_219038F68(v323);

              v82 = v703;
              v281 = v679;
              if (v354 >> 62)
              {
                v367 = sub_219BF7214();
                a3 = v695;
                v283 = v671;
                v284 = v685;
                if (!v367)
                {
LABEL_240:

                  v191 = MEMORY[0x277D84F90];
                  goto LABEL_161;
                }
              }

              else
              {
                a3 = v695;
                v283 = v671;
                v284 = v685;
                if (!*((v354 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_240;
                }
              }

              if ((v354 & 0xC000000000000001) != 0)
              {
                MEMORY[0x21CECE0F0](0, v354);
              }

              else
              {
                if (!*((v354 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_565;
                }
              }

              v355 = v635;
              sub_219BF3FA4();
              v356 = v636;
              sub_219BF4AB4();
              (*v688)(v355, v689);
              v357 = v646;
              if ((*v626)(v356, 1, v646) == 1)
              {

                sub_2189DD39C(v356);

                v191 = MEMORY[0x277D84F90];
              }

              else
              {
                v358 = v627;
                (*v624)(v627, v356, v357);
                v359 = v633;
                v360 = sub_219BDBF34();
                MEMORY[0x28223BE20](v360);
                *(&v622 - 2) = v359;
                *(&v622 - 1) = v358;
                v361 = v696;
                v362 = sub_2195EB2C4(sub_218C4A8AC, &v622 - 4, v354);
                v696 = v361;

                v363 = v359;
                v284 = v685;
                (*v623)(v363, v634);
                v364 = v358;
                v82 = v703;
                (*v622)(v364, v357);

                v191 = v362;
              }

              v280 = v692;
LABEL_227:
              v182 = v691;
            }

LABEL_160:
            v283 = v671;
            goto LABEL_161;
          }

          v182 = v691;
LABEL_248:
        }

        else
        {
        }

        v206 = type metadata accessor for SportsScoreSortingFilterWhen;
LABEL_250:
        v192 = v206;
        v193 = v182;
        goto LABEL_251;
      }

      v183 = swift_projectBox();
      v184 = v653;
      sub_218E23E5C(v183, v653, type metadata accessor for SportsScoreSortingGroupByFilter);

      v185 = sub_218C490D4(v184, v697);
      v186 = v654;
      sub_218E23E5C(v184, v654, type metadata accessor for SportsScoreSortingGroupByFilter);
      v187 = v655;
      v188 = sub_218E2400C(v186, v655, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
      MEMORY[0x28223BE20](v188);
      *(&v622 - 2) = v187;
      *(&v622 - 1) = a3;
      v189 = v696;
      v190 = sub_218DDE84C(sub_218C4A8C8, (&v622 - 4), v185);

      v704 = v190;
      sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
      sub_218E23DE8(&qword_280E8EE88);
      v191 = sub_219BF56E4();
      v696 = v189;

      sub_218E23D88(v184, type metadata accessor for SportsScoreSortingGroupByFilter);
      v192 = type metadata accessor for SportsScoreSortingGroupByGroupFilter;
      v193 = v187;
LABEL_251:
      sub_218E23D88(v193, v192);
LABEL_252:
      v369 = v191 >> 62;
      v370 = v701;
      if (v191 >> 62)
      {
        v387 = sub_219BF7214();
        v370 = v701;
        v371 = v387;
      }

      else
      {
        v371 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v372 = v370 >> 62;
      if (v370 >> 62)
      {
        v388 = sub_219BF7214();
        v374 = v388 + v371;
        if (__OFADD__(v388, v371))
        {
          goto LABEL_536;
        }
      }

      else
      {
        v373 = *((v370 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v374 = v373 + v371;
        if (__OFADD__(v373, v371))
        {
          goto LABEL_536;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v372)
        {
          v375 = v701;
          v376 = v701 & 0xFFFFFFFFFFFFFF8;
          if (v374 <= *((v701 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_263;
          }

          goto LABEL_262;
        }

LABEL_261:
        sub_219BF7214();
        goto LABEL_262;
      }

      if (v372)
      {
        goto LABEL_261;
      }

LABEL_262:
      v375 = sub_219BF7364();
      v376 = v375 & 0xFFFFFFFFFFFFFF8;
LABEL_263:
      v377 = *(v376 + 16);
      v378 = *(v376 + 24);
      v701 = v375;
      if (v369)
      {
        v379 = sub_219BF7214();
        if (v379)
        {
LABEL_267:
          if (((v378 >> 1) - v377) < v371)
          {
            goto LABEL_545;
          }

          v380 = v376 + 8 * v377 + 32;
          v700 = v371;
          if (v369)
          {
            if (v379 < 1)
            {
              goto LABEL_560;
            }

            sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218E23DE8(&qword_27CC0CC70);
            for (j = 0; j != v379; ++j)
            {
              v382 = sub_218A35350(&v704, j, v191);
              v384 = *v383;

              (v382)(&v704, 0);
              *(v380 + 8 * j) = v384;
            }
          }

          else
          {
            sub_219BF4044();
            swift_arrayInitWithCopy();
          }

          if (v700 <= 0)
          {
            a3 = v695;
            v82 = v703;
            v179 = v701;
          }

          else
          {
            v385 = *(v376 + 16);
            v153 = __OFADD__(v385, v700);
            v386 = v385 + v700;
            a3 = v695;
            v82 = v703;
            v179 = v701;
            if (v153)
            {
              goto LABEL_555;
            }

            *(v376 + 16) = v386;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v379 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v379)
        {
          goto LABEL_267;
        }
      }

      v179 = v701;
      if (v371 > 0)
      {
        goto LABEL_537;
      }

LABEL_68:
      v178 = v690 + 1;
      v177 = v673;
      if (v690 + 1 == v675)
      {
        v616 = v179;

LABEL_512:
        v704 = v616;
        sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
        sub_218E23DE8(&qword_280E8EE88);
        v617 = v696;
        v618 = sub_219BF56E4();
        v696 = v617;

        sub_218E23D88(v659, type metadata accessor for SportsScoreSortingOrFilter);

        v697 = v618;
        v109 = v699;
        goto LABEL_517;
      }
    }

    if (v181 <= 1)
    {
      if (v181)
      {
        v203 = swift_projectBox();
        v182 = v677;
        sub_218E23E5C(v203, v677, type metadata accessor for SportsScoreSortingMatchFilter);

        v204 = v697;
        v205 = sub_218A84E44(v182, v697, a3);
        v191 = sub_219AC4B08(v204, v205);

        v206 = type metadata accessor for SportsScoreSortingMatchFilter;
        goto LABEL_250;
      }

      v194 = swift_projectBox();
      v195 = v677;
      sub_218E23E5C(v194, v677, type metadata accessor for SportsScoreSortingMatchFilter);

      v191 = sub_218A84E44(v195, v697, a3);
      v196 = type metadata accessor for SportsScoreSortingMatchFilter;
LABEL_157:
      v192 = v196;
      v193 = v195;
      goto LABEL_251;
    }

    v197 = v665;
    if (v181 == 2)
    {
      v198 = swift_projectBox();
      v195 = v666;
      sub_218E23E5C(v198, v666, type metadata accessor for SportsScoreSortingAndFilter);

      v191 = sub_219A600C4(v195, v697, a3, v180);
      v196 = type metadata accessor for SportsScoreSortingAndFilter;
      goto LABEL_157;
    }

    v207 = swift_projectBox();
    sub_218E23E5C(v207, v197, type metadata accessor for SportsScoreSortingOrFilter);

    v208 = v197;
    sub_219BF2664();
    v209 = *(v704 + 16);

    v210 = v683;
    if (!v209)
    {
      sub_218E23D88(v208, type metadata accessor for SportsScoreSortingOrFilter);
      v191 = v697;

      goto LABEL_252;
    }

    sub_219BF2664();
    v211 = v704;
    v680 = *(v704 + 16);
    if (!v680)
    {

      v213 = MEMORY[0x277D84F90];
LABEL_246:
      v704 = v213;
      sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
      sub_218E23DE8(&qword_280E8EE88);
      v368 = v696;
      v191 = sub_219BF56E4();
      v696 = v368;

      v192 = type metadata accessor for SportsScoreSortingOrFilter;
      v193 = v665;
      goto LABEL_251;
    }

    v212 = 0;
    v679 = (v704 + 32);
    v213 = MEMORY[0x277D84F90];
    v678 = v704;
    while (1)
    {
      if (v212 >= *(v211 + 16))
      {
        goto LABEL_532;
      }

      v215 = *&v679[8 * v212];
      v216 = v215 >> 60;
      v700 = v212;
      if ((v215 >> 60) > 3)
      {
        v217 = v697;
        if (v216 > 5)
        {
          if (v216 == 6)
          {
            v238 = *((v215 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

            v227 = sub_21903E324(v238, v217);
            goto LABEL_124;
          }

          if (v216 == 7)
          {
            v218 = swift_projectBox();
            v219 = v215;
            v220 = v656;
            sub_218E23E5C(v218, v656, type metadata accessor for SportsScoreSortingGroupByFilter);

            v221 = sub_218C490D4(v220, v217);
            v222 = v657;
            sub_218E23E5C(v220, v657, type metadata accessor for SportsScoreSortingGroupByFilter);
            v223 = v658;
            v224 = sub_218E2400C(v222, v658, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
            MEMORY[0x28223BE20](v224);
            *(&v622 - 2) = v223;
            *(&v622 - 1) = a3;
            v225 = v696;
            v226 = sub_218DDE84C(sub_218C4A8C8, (&v622 - 4), v221);

            v704 = v226;
            sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218E23DE8(&qword_280E8EE88);
            v227 = sub_219BF56E4();
            v696 = v225;

            v228 = v220;
            v215 = v219;
            sub_218E23D88(v228, type metadata accessor for SportsScoreSortingGroupByFilter);
            v229 = type metadata accessor for SportsScoreSortingGroupByGroupFilter;
            v230 = v223;
          }

          else
          {
            v250 = swift_projectBox();
            sub_218E23E5C(v250, v210, type metadata accessor for SportsScoreSortingFilterWhen);
            v251 = *v210;

            if (sub_219473EF8(v251, v217, a3, v215))
            {
              v252 = v215;
              sub_219BF2664();
              v253 = v704;
              v254 = *(v704 + 16);

              if (v254)
              {
                v255 = 0;
                v256 = v217;
                do
                {
                  if (v255 >= *(v253 + 16))
                  {
                    goto LABEL_531;
                  }

                  v257 = v255 + 1;
                  v258 = *(v253 + 32 + 8 * v255);

                  v227 = sub_219659C8C(v256, a3, v258);

                  v256 = v227;
                  v255 = v257;
                }

                while (v254 != v257);
              }

              else
              {
                v227 = v217;
              }

              v210 = v683;
              v215 = v252;
            }

            else
            {

              v227 = v217;
            }

            v229 = type metadata accessor for SportsScoreSortingFilterWhen;
            v230 = v210;
          }

          goto LABEL_123;
        }

        if (v216 == 4)
        {
          v236 = *((v215 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

          v237 = sub_219659C8C(v217, a3, v236);
          v227 = sub_219AC4B08(v217, v237);

          goto LABEL_124;
        }

        v259 = swift_projectBox();
        v233 = v668;
        sub_218E23E5C(v259, v668, type metadata accessor for SportsScoreSortingSubsetFilter);

        v227 = sub_218E1E098(v233, v217, a3);
        v234 = type metadata accessor for SportsScoreSortingSubsetFilter;
        goto LABEL_117;
      }

      v231 = v697;
      if (v216 > 1)
      {
        if (v216 == 2)
        {
          v235 = swift_projectBox();
          v233 = v666;
          sub_218E23E5C(v235, v666, type metadata accessor for SportsScoreSortingAndFilter);

          v227 = sub_219A600C4(v233, v231, a3, v215);
          v234 = type metadata accessor for SportsScoreSortingAndFilter;
          goto LABEL_117;
        }

        v242 = swift_projectBox();
        v243 = v661;
        sub_218E23E5C(v242, v661, type metadata accessor for SportsScoreSortingOrFilter);

        sub_219BF2664();
        v244 = *(v704 + 16);

        if (!v244)
        {
          sub_218E23D88(v243, type metadata accessor for SportsScoreSortingOrFilter);

          v227 = v231;
          goto LABEL_124;
        }

        v704 = MEMORY[0x277D84F90];
        sub_219BF2664();
        v245 = *(v705 + 2);
        if (v245)
        {
          v246 = (v705 + 32);
          do
          {
            v247 = *v246++;

            v248 = sub_219659C8C(v231, a3, v247);
            sub_2191EDC00(v248);

            --v245;
          }

          while (v245);
        }

        v705 = v704;
        sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
        sub_218E23DE8(&qword_280E8EE88);
        v249 = v696;
        v227 = sub_219BF56E4();
        v696 = v249;

        v229 = type metadata accessor for SportsScoreSortingOrFilter;
        v230 = v661;
      }

      else
      {
        if (!v216)
        {
          v232 = swift_projectBox();
          v233 = v677;
          sub_218E23E5C(v232, v677, type metadata accessor for SportsScoreSortingMatchFilter);

          v227 = sub_218A84E44(v233, v231, a3);
          v234 = type metadata accessor for SportsScoreSortingMatchFilter;
LABEL_117:
          v229 = v234;
          v230 = v233;
          goto LABEL_123;
        }

        v239 = swift_projectBox();
        v240 = v677;
        sub_218E23E5C(v239, v677, type metadata accessor for SportsScoreSortingMatchFilter);

        v241 = sub_218A84E44(v240, v231, a3);
        v227 = sub_219AC4B08(v231, v241);

        v229 = type metadata accessor for SportsScoreSortingMatchFilter;
        v230 = v240;
      }

LABEL_123:
      sub_218E23D88(v230, v229);
LABEL_124:
      v260 = v227 >> 62;
      if (v227 >> 62)
      {
        v261 = sub_219BF7214();
      }

      else
      {
        v261 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v262 = v213 >> 62;
      if (v213 >> 62)
      {
        v276 = sub_219BF7214();
        v264 = v276 + v261;
        if (__OFADD__(v276, v261))
        {
          goto LABEL_533;
        }
      }

      else
      {
        v263 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v264 = v263 + v261;
        if (__OFADD__(v263, v261))
        {
          goto LABEL_533;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v262)
        {
          v265 = v213 & 0xFFFFFFFFFFFFFF8;
          if (v264 <= *((v213 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_135;
          }

          goto LABEL_134;
        }

LABEL_133:
        sub_219BF7214();
        goto LABEL_134;
      }

      if (v262)
      {
        goto LABEL_133;
      }

LABEL_134:
      v213 = sub_219BF7364();
      v265 = v213 & 0xFFFFFFFFFFFFFF8;
LABEL_135:
      v266 = *(v265 + 16);
      v267 = *(v265 + 24);
      if (v260)
      {
        v268 = sub_219BF7214();
        if (v268)
        {
LABEL_139:
          if (((v267 >> 1) - v266) < v261)
          {
            goto LABEL_542;
          }

          v686 = v215;
          v269 = v265 + 8 * v266 + 32;
          v687 = v213;
          v685 = v261;
          if (v260)
          {
            if (v268 < 1)
            {
              goto LABEL_554;
            }

            sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218E23DE8(&qword_27CC0CC70);
            for (k = 0; k != v268; ++k)
            {
              v271 = sub_218A35350(&v704, k, v227);
              v273 = *v272;

              (v271)(&v704, 0);
              *(v269 + 8 * k) = v273;
            }
          }

          else
          {
            sub_219BF4044();
            swift_arrayInitWithCopy();
          }

          if (v685 <= 0)
          {
            v210 = v683;
            v82 = v703;
            v213 = v687;
            v211 = v678;
            v214 = v700;
          }

          else
          {
            v274 = *(v265 + 16);
            v153 = __OFADD__(v274, v685);
            v275 = v274 + v685;
            v210 = v683;
            v82 = v703;
            v213 = v687;
            v211 = v678;
            v214 = v700;
            if (v153)
            {
              goto LABEL_552;
            }

            *(v265 + 16) = v275;
          }

          goto LABEL_89;
        }
      }

      else
      {
        v268 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v268)
        {
          goto LABEL_139;
        }
      }

      v210 = v683;
      v82 = v703;
      v211 = v678;
      v214 = v700;
      if (v261 > 0)
      {
        goto LABEL_534;
      }

LABEL_89:
      v212 = v214 + 1;
      a3 = v695;
      if (v212 == v680)
      {

        goto LABEL_246;
      }
    }
  }

  v130 = swift_projectBox();
  sub_218E23E5C(v130, v110, type metadata accessor for SportsScoreSortingAndFilter);
  v667 = v114;

  sub_219BF2664();
  v131 = *(v704 + 16);

  if (!v131)
  {
    goto LABEL_510;
  }

  sub_219BF2664();
  v132 = v704;
  v686 = *(v704 + 16);
  if (!v686)
  {

    v110 = v702;
LABEL_510:
    sub_218E23D88(v110, type metadata accessor for SportsScoreSortingAndFilter);

    goto LABEL_518;
  }

  v685 = v704 + 32;
  v133 = 0;

  v680 = v132;
  while (1)
  {
    if (v133 >= *(v132 + 16))
    {
      goto LABEL_541;
    }

    v690 = v133;
    v134 = *(v685 + 8 * v133);

    v135 = sub_219659C8C(v697, a3, v134);
    v136 = v135;
    v137 = v135 >> 62 ? sub_219BF7214() : *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v687 = v134;
    if (v137)
    {
      v704 = MEMORY[0x277D84F90];
      sub_218C33F88(v137);
      if (v137 < 0)
      {
        goto LABEL_551;
      }

      v138 = 0;
      do
      {
        if ((v136 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v138, v136);
        }

        else
        {
        }

        v139 = sub_219BF3F84();
        v141 = v140;

        v142 = v704;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v142 + 16) + 1, 1);
          v142 = v704;
        }

        v144 = *(v142 + 16);
        v143 = *(v142 + 24);
        if (v144 >= v143 >> 1)
        {
          sub_21870B65C((v143 > 1), v144 + 1, 1);
          v142 = v704;
        }

        ++v138;
        *(v142 + 16) = v144 + 1;
        v145 = v142 + 16 * v144;
        *(v145 + 32) = v139;
        *(v145 + 40) = v141;
      }

      while (v137 != v138);

      v82 = v703;
      v146 = MEMORY[0x277D84F90];
    }

    else
    {

      v146 = MEMORY[0x277D84F90];
      v142 = MEMORY[0x277D84F90];
    }

    v147 = sub_218845F78(v142);

    v705 = v146;
    v148 = v693;
    v149 = sub_2193D0138(v693);
    if (v149)
    {
      break;
    }

    v110 = v702;
LABEL_21:
    v133 = v690 + 1;

    v693 = v705;
    a3 = v695;
    v109 = v699;
    v132 = v680;
    if (v133 == v686)
    {

      v697 = v693;
      goto LABEL_510;
    }
  }

  v150 = v149;
  v151 = 0;
  v700 = v148 & 0xFFFFFFFFFFFFFF8;
  v701 = v148 & 0xC000000000000001;
  v152 = v147 + 56;
  while (2)
  {
    if (v701)
    {
      MEMORY[0x21CECE0F0](v151, v693);
      v153 = __OFADD__(v151++, 1);
      if (v153)
      {
        goto LABEL_522;
      }

LABEL_45:
      v154 = sub_219BF3F84();
      v156 = v155;
      if (*(v147 + 16) && (v157 = v154, sub_219BF7AA4(), sub_219BF5524(), v158 = sub_219BF7AE4(), v159 = -1 << *(v147 + 32), v160 = v158 & ~v159, ((*(v152 + ((v160 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v160) & 1) != 0))
      {
        v161 = ~v159;
        while (1)
        {
          v162 = (*(v147 + 48) + 16 * v160);
          v163 = *v162 == v157 && v162[1] == v156;
          if (v163 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v160 = (v160 + 1) & v161;
          if (((*(v152 + ((v160 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v160) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
LABEL_40:
      }

      v110 = v702;
      v82 = v703;
      if (v151 == v150)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  if (v151 >= *(v700 + 16))
  {
    goto LABEL_523;
  }

  v153 = __OFADD__(v151++, 1);
  if (!v153)
  {
    goto LABEL_45;
  }

LABEL_522:
  __break(1u);
LABEL_523:
  __break(1u);
LABEL_524:
  __break(1u);
LABEL_525:
  __break(1u);
LABEL_526:
  __break(1u);
LABEL_527:
  __break(1u);
LABEL_528:
  __break(1u);
LABEL_529:
  __break(1u);
LABEL_530:
  __break(1u);
LABEL_531:
  __break(1u);
LABEL_532:
  __break(1u);
LABEL_533:
  __break(1u);
LABEL_534:
  __break(1u);
LABEL_535:
  __break(1u);
LABEL_536:
  __break(1u);
LABEL_537:
  __break(1u);
LABEL_538:
  __break(1u);
LABEL_539:
  __break(1u);
LABEL_540:
  __break(1u);
LABEL_541:
  __break(1u);
LABEL_542:
  __break(1u);
LABEL_543:
  __break(1u);
LABEL_544:
  __break(1u);
LABEL_545:
  __break(1u);
LABEL_546:
  __break(1u);
LABEL_547:
  __break(1u);
LABEL_548:
  __break(1u);
LABEL_549:
  __break(1u);
LABEL_550:
  __break(1u);
LABEL_551:
  __break(1u);
LABEL_552:
  __break(1u);
LABEL_553:
  __break(1u);
LABEL_554:
  __break(1u);
LABEL_555:
  __break(1u);
LABEL_556:
  __break(1u);
LABEL_557:
  __break(1u);
LABEL_558:
  __break(1u);
LABEL_559:
  __break(1u);
LABEL_560:
  __break(1u);
LABEL_561:
  __break(1u);
LABEL_562:
  __break(1u);
LABEL_563:
  __break(1u);
LABEL_564:
  __break(1u);
LABEL_565:
  __break(1u);
LABEL_566:

  __break(1u);
  return result;
}