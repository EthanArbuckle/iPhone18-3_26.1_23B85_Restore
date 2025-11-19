uint64_t type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs()
{
  result = qword_280EA86E0;
  if (!qword_280EA86E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219834898()
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
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_219834934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a4;
  v27 = a3;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v12);
  v18 = *(v15 + 48);
  if (v18(v12, 1, v14) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v25 = a6;
    sub_21877CD80(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a6 = v25;
    sub_219BEE974();
    if (v18(v12, 1, v14) != 1)
    {
      sub_2189ADEC8(v12);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v12, v14);
  }

  (*(v15 + 32))(a6, v17, v14);
  v19 = v27;
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v28 = 1;
    sub_2186F9548();
    swift_allocObject();
    v20 = sub_219BEF534();
  }

  v21 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
  *(a6 + v21[5]) = v20;
  if (v19)
  {

    v22 = v19;
  }

  else
  {
    v28 = 5;
    sub_2186F9548();
    swift_allocObject();

    v22 = sub_219BEF534();
  }

  *(a6 + v21[6]) = v22;
  v23 = v26;
  if (v26)
  {
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_2186F95C4();
    swift_allocObject();

    v23 = sub_219BEF534();
  }

  *(a6 + v21[7]) = v23;
  if (!a5)
  {
    LOBYTE(v28) = 0;
    sub_2186F95C4();
    swift_allocObject();
    a5 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a6 + v21[8]) = a5;
  return result;
}

uint64_t sub_219834CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  sub_2189AD5C8();
  v58 = v3;
  v55 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v60 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v46 - v11;
  sub_219835978(0, &qword_280E8CAA8, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198358C0();
  v17 = v61;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v48 = 0;
  v49 = v14;
  v50 = v7;
  v51 = v5;
  v52 = a1;
  LOBYTE(v66) = 0;
  sub_21877CD80(&qword_280E91A88, sub_2189AD5C8);
  v20 = v58;
  v19 = v59;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v65) = 1;
  sub_21877CD80(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v21 = v66;
  LOBYTE(v64) = 2;
  sub_219BF7674();
  v47 = v65;
  sub_2186F95C4();
  LOBYTE(v63) = 3;
  sub_21877CD80(&qword_280E913F8, sub_2186F95C4);
  sub_219BF7674();
  v53 = v64;
  LOBYTE(v62) = 4;
  v61 = v16;
  sub_219BF7674();
  v54 = v63;
  v22 = v60;
  sub_2189ADE64(v19, v60);
  v23 = v55;
  v24 = *(v55 + 48);
  v25 = v24(v22, 1, v20);
  v26 = v13;
  v27 = v23;
  if (v25 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CD80(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v27 = v23;
    v28 = v21;
    v29 = v56;
    sub_219BEE974();
    v30 = v58;
    v31 = v24(v60, 1, v58);
    v32 = v30;
    v33 = v29;
    v21 = v28;
    if (v31 != 1)
    {
      sub_2189ADEC8(v60);
    }
  }

  else
  {
    v33 = v56;
    v32 = v58;
    (*(v23 + 32))(v56, v60, v58);
  }

  v34 = v50;
  (*(v27 + 32))(v50, v33, v32);
  v35 = v61;
  v36 = v47;
  if (v21)
  {
    v37 = v21;
  }

  else
  {
    v62 = 1;
    swift_allocObject();
    v37 = sub_219BEF534();
    v35 = v61;
  }

  v38 = v57;
  v39 = v51;
  *(v34 + v51[5]) = v37;
  v40 = v53;
  if (v36)
  {

    v41 = v36;
  }

  else
  {
    v62 = 5;
    swift_allocObject();

    v41 = sub_219BEF534();
    v40 = v53;
    v35 = v61;
  }

  v42 = v59;
  *(v34 + v39[6]) = v41;
  if (v40)
  {
  }

  else
  {
    LOBYTE(v62) = 0;
    swift_allocObject();

    v43 = sub_219BEF534();
    v35 = v61;
    v40 = v43;
  }

  *(v34 + v39[7]) = v40;
  if (v54)
  {

    sub_2189ADEC8(v42);
    (*(v49 + 8))(v35, v26);
    v44 = v54;
  }

  else
  {
    LOBYTE(v62) = 0;
    swift_allocObject();
    v45 = v35;
    v44 = sub_219BEF534();

    sub_2189ADEC8(v42);
    (*(v49 + 8))(v45, v26);
  }

  *(v34 + v39[8]) = v44;
  sub_219835914(v34, v38);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_219835420(void *a1)
{
  v3 = v1;
  sub_219835978(0, &qword_27CC1FE58, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198358C0();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877CD80(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186F9548();
    sub_21877CD80(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186F95C4();
    sub_21877CD80(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219835740()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0x54646574696D696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2198357EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219835BF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219835814(uint64_t a1)
{
  v2 = sub_2198358C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219835850(uint64_t a1)
{
  v2 = sub_2198358C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2198358C0()
{
  result = qword_280EA8708;
  if (!qword_280EA8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8708);
  }

  return result;
}

uint64_t sub_219835914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219835978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2198358C0();
    v7 = a3(a1, &type metadata for PuzzleFeaturedTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2198359DC()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877CD80(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if (sub_219BEE9F4() & 1) != 0 && (sub_2186F9548(), type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_2186F95C4(), (sub_219BEF504()))
  {
    return sub_219BEF504() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_219835AF0()
{
  result = qword_27CC1FE60;
  if (!qword_27CC1FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FE60);
  }

  return result;
}

unint64_t sub_219835B48()
{
  result = qword_280EA86F8;
  if (!qword_280EA86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA86F8);
  }

  return result;
}

unint64_t sub_219835BA0()
{
  result = qword_280EA8700;
  if (!qword_280EA8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8700);
  }

  return result;
}

uint64_t sub_219835BF4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x54646574696D696CLL && a2 == 0xEE007961646F546FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_219835DB4(uint64_t a1, uint64_t a2)
{
  sub_218700938();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219835E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218700938();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_219835EE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_218700938();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836D88(v3, v12);
  (*(v7 + 32))(v10, v12, v6);
  a3(v6);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_219836094(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_218700938();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836D88(v3, v12);
  (*(v7 + 32))(v10, v12, v6);
  v13 = a3(v6);
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_2198361DC()
{
  sub_218700938();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836D88(v0, v8);
  (*(v3 + 32))(v6, v8, v2);
  v9 = sub_219BEDCA4();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_219836324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219836DEC(&qword_27CC15FD8, type metadata accessor for AudioHistoryFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_2198364C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_218700938();
  v5 = v4;
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836C84();
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219836CE0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v21;
    v16 = v5;
    v17 = v7;
    sub_219836D34();
    sub_219BF7734();
    sub_218718690(a1, v20);
    type metadata accessor for ArticleListAudioHistoryFeedGroupConfigData();
    sub_219836DEC(&qword_280E95158, type metadata accessor for ArticleListAudioHistoryFeedGroupConfigData);
    sub_219836DEC(&qword_280E95160, type metadata accessor for ArticleListAudioHistoryFeedGroupConfigData);
    v13 = v17;
    sub_219BEDD24();
    (*(v12 + 8))(v11, v9);
    (*(v18 + 32))(v19, v13, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219836788@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2198367E0(uint64_t a1)
{
  v2 = sub_219836CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21983681C(uint64_t a1)
{
  v2 = sub_219836CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21983692C()
{
  v1 = v0;
  sub_218700938();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836D88(v1, v9);
  (*(v4 + 32))(v7, v9, v3);
  sub_219BEDD64();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_219836A84@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ArticleListAudioHistoryFeedGroupConfigData();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218700938();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836D88(v1, v13);
  (*(v8 + 32))(v11, v13, v7);
  sub_219BEDD14();
  (*(v8 + 8))(v11, v7);
  v14 = sub_219BF1934();
  v15 = *(v14 - 8);
  (*(v15 + 32))(a1, v5, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

void sub_219836C84()
{
  if (!qword_280E8CCC8)
  {
    sub_219836CE0();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CCC8);
    }
  }
}

unint64_t sub_219836CE0()
{
  result = qword_280EB9478;
  if (!qword_280EB9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9478);
  }

  return result;
}

unint64_t sub_219836D34()
{
  result = qword_280EB9458;
  if (!qword_280EB9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9458);
  }

  return result;
}

uint64_t sub_219836D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219836DEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219836E58()
{
  result = qword_27CC1FE78;
  if (!qword_27CC1FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FE78);
  }

  return result;
}

unint64_t sub_219836EB0()
{
  result = qword_27CC1FE80;
  if (!qword_27CC1FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FE80);
  }

  return result;
}

unint64_t sub_219836F08()
{
  result = qword_280EB9468;
  if (!qword_280EB9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9468);
  }

  return result;
}

unint64_t sub_219836F60()
{
  result = qword_280EB9470;
  if (!qword_280EB9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9470);
  }

  return result;
}

unint64_t sub_219836FB4()
{
  result = qword_280EB9460;
  if (!qword_280EB9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9460);
  }

  return result;
}

uint64_t sub_219837008(uint64_t a1, uint64_t a2)
{
  v136 = a1;
  v135 = a2;
  sub_218736B5C();
  v128 = *(v2 - 8);
  v129 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v120 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v126 = &v108 - v5;
  v6 = type metadata accessor for SportsSearchFeedGroupKnobs();
  MEMORY[0x28223BE20](v6 - 8);
  v121 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872EF54();
  v127 = v8;
  v125 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v118 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v124 = &v108 - v11;
  v12 = type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
  MEMORY[0x28223BE20](v12 - 8);
  v117 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF0D4();
  v122 = *(v14 - 8);
  v123 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v113 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v119 = &v108 - v17;
  v18 = type metadata accessor for RecipesSearchFeedGroupKnobs();
  MEMORY[0x28223BE20](v18 - 8);
  v112 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEF84();
  v116 = v20;
  v115 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v111 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v108 - v23;
  v24 = type metadata accessor for TopicsSearchFeedGroupKnobs();
  MEMORY[0x28223BE20](v24 - 8);
  v109 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218713528();
  v133 = *(v26 - 8);
  v134 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v132 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v131 = &v108 - v29;
  v30 = type metadata accessor for ChannelsSearchFeedGroupKnobs();
  MEMORY[0x28223BE20](v30 - 8);
  v110 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEEB8();
  v33 = v32;
  v130 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v108 - v37;
  v39 = type metadata accessor for ArticlesSearchFeedGroupKnobs();
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218736A44();
  v43 = v42;
  v44 = *(v42 - 8);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v108 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v108 - v48;
  v50 = type metadata accessor for SearchFeedGroupConfig();
  MEMORY[0x28223BE20](v50);
  v52 = &v108 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983825C(v136, v52, type metadata accessor for SearchFeedGroupConfig);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v129 = v41;
    v136 = v36;
    v64 = v49;
    v65 = v43;
    v66 = v131;
    v67 = v132;
    v69 = v133;
    v68 = v134;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v70 = v130;
        v71 = *(v130 + 32);
        v72 = v38;
        v73 = v33;
        v71(v38, v52, v33);
        v74 = v136;
        (*(v70 + 16))(v136, v38, v33);
        v75 = type metadata accessor for SearchFeedGroupKnobs();
        v76 = v110;
        sub_21983825C(v135 + *(v75 + 20), v110, type metadata accessor for ChannelsSearchFeedGroupKnobs);
        sub_218718690(v137 + 16, &v138);
        type metadata accessor for ChannelsSearchFeedGroupEmitter();
        v77 = swift_allocObject();
        v71((v77 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_config), v74, v73);
        sub_2198382C4(v76, v77 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_knobs, type metadata accessor for ChannelsSearchFeedGroupKnobs);
        sub_2186CB1F0(&v138, v77 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_formatService);
        *&v138 = v77;
        sub_2198381C8();
        swift_allocObject();
        sub_21983832C(&qword_27CC1FEB8, type metadata accessor for ChannelsSearchFeedGroupEmitter);
        v78 = sub_219BEDF84();
        (*(v70 + 8))(v72, v73);
      }

      else
      {
        v92 = *(v133 + 32);
        v93 = v134;
        v92(v131, v52, v134);
        (*(v69 + 16))(v67, v66, v68);
        v94 = type metadata accessor for SearchFeedGroupKnobs();
        v95 = v109;
        sub_21983825C(v135 + *(v94 + 24), v109, type metadata accessor for TopicsSearchFeedGroupKnobs);
        sub_218718690(v137 + 16, &v138);
        type metadata accessor for TopicsSearchFeedGroupEmitter();
        v96 = swift_allocObject();
        v92((v96 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_config), v67, v93);
        sub_2198382C4(v95, v96 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_knobs, type metadata accessor for TopicsSearchFeedGroupKnobs);
        sub_2186CB1F0(&v138, v96 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_formatService);
        *&v138 = v96;
        sub_2198381C8();
        swift_allocObject();
        sub_21983832C(&qword_27CC1FEB0, type metadata accessor for TopicsSearchFeedGroupEmitter);
        v78 = sub_219BEDF84();
        (*(v69 + 8))(v66, v93);
      }
    }

    else
    {
      v86 = v44;
      v87 = *(v44 + 32);
      v88 = v64;
      v89 = v65;
      v87(v64, v52, v65);
      (*(v86 + 16))(v47, v88, v89);
      v90 = v129;
      sub_21983825C(v135, v129, type metadata accessor for ArticlesSearchFeedGroupKnobs);
      sub_218718690(v137 + 16, &v138);
      type metadata accessor for ArticlesSearchFeedGroupEmitter();
      v91 = swift_allocObject();
      v87((v91 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_config), v47, v89);
      sub_2198382C4(v90, v91 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_knobs, type metadata accessor for ArticlesSearchFeedGroupKnobs);
      sub_2186CB1F0(&v138, v91 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_formatService);
      *&v138 = v91;
      sub_2198381C8();
      swift_allocObject();
      sub_21983832C(&qword_27CC1FEC0, type metadata accessor for ArticlesSearchFeedGroupEmitter);
      v78 = sub_219BEDF84();
      (*(v86 + 8))(v88, v89);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v56 = v124;
        v54 = v125;
        v79 = *(v125 + 32);
        v57 = v127;
        v79(v124, v52, v127);
        v80 = v118;
        (*(v54 + 16))(v118, v56, v57);
        v81 = type metadata accessor for SearchFeedGroupKnobs();
        v82 = v121;
        sub_21983825C(v135 + *(v81 + 36), v121, type metadata accessor for SportsSearchFeedGroupKnobs);
        sub_218718690(v137 + 16, &v138);
        type metadata accessor for SportsSearchFeedGroupEmitter();
        v83 = swift_allocObject();
        v79((v83 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_config), v80, v57);
        sub_2198382C4(v82, v83 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_knobs, type metadata accessor for SportsSearchFeedGroupKnobs);
        sub_2186CB1F0(&v138, v83 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_formatService);
        *&v138 = v83;
        sub_2198381C8();
        swift_allocObject();
        v84 = &unk_27CC1FE98;
        v85 = type metadata accessor for SportsSearchFeedGroupEmitter;
      }

      else
      {
        v54 = v128;
        v57 = v129;
        v104 = *(v128 + 32);
        v56 = v126;
        v104(v126, v52, v129);
        v105 = v120;
        (*(v54 + 16))(v120, v56, v57);
        sub_218718690(v137 + 16, &v138);
        type metadata accessor for TopResultSearchFeedGroupEmitter();
        v106 = swift_allocObject();
        v104((v106 + OBJC_IVAR____TtC7NewsUI231TopResultSearchFeedGroupEmitter_config), v105, v57);
        sub_2186CB1F0(&v138, v106 + OBJC_IVAR____TtC7NewsUI231TopResultSearchFeedGroupEmitter_formatService);
        *&v138 = v106;
        sub_2198381C8();
        swift_allocObject();
        v84 = &unk_27CC1FE90;
        v85 = type metadata accessor for TopResultSearchFeedGroupEmitter;
      }

      sub_21983832C(v84, v85);
      v103 = sub_219BEDF84();
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v54 = v115;
        v55 = *(v115 + 32);
        v56 = v114;
        v57 = v116;
        v55(v114, v52, v116);
        v58 = v111;
        (*(v54 + 16))(v111, v56, v57);
        v59 = type metadata accessor for SearchFeedGroupKnobs();
        v60 = v112;
        sub_21983825C(v135 + *(v59 + 28), v112, type metadata accessor for RecipesSearchFeedGroupKnobs);
        sub_218718690(v137 + 16, &v138);
        type metadata accessor for RecipesSearchFeedGroupEmitter();
        v61 = swift_allocObject();
        v55((v61 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_config), v58, v57);
        sub_2198382C4(v60, v61 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_knobs, type metadata accessor for RecipesSearchFeedGroupKnobs);
        sub_2186CB1F0(&v138, v61 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_formatService);
        *&v138 = v61;
        sub_2198381C8();
        swift_allocObject();
        v62 = &unk_27CC1FEA8;
        v63 = type metadata accessor for RecipesSearchFeedGroupEmitter;
      }

      else
      {
        v54 = v122;
        v57 = v123;
        v97 = *(v122 + 32);
        v56 = v119;
        v97(v119, v52, v123);
        v98 = v113;
        (*(v54 + 16))(v113, v56, v57);
        v99 = type metadata accessor for SearchFeedGroupKnobs();
        v100 = v117;
        sub_21983825C(v135 + *(v99 + 32), v117, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
        sub_218718690(v137 + 16, &v138);
        type metadata accessor for SavedRecipesSearchFeedGroupEmitter();
        v101 = swift_allocObject();
        v102 = v101 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_name;
        strcpy((v101 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_name), "SavedRecipes");
        *(v102 + 13) = 0;
        *(v102 + 14) = -5120;
        v97((v101 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_config), v98, v57);
        sub_2198382C4(v100, v101 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_knobs, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
        sub_2186CB1F0(&v138, v101 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_formatService);
        *&v138 = v101;
        sub_2198381C8();
        swift_allocObject();
        v62 = &unk_27CC1FEA0;
        v63 = type metadata accessor for SavedRecipesSearchFeedGroupEmitter;
      }

      sub_21983832C(v62, v63);
      v103 = sub_219BEDF94();
    }

    v78 = v103;
    (*(v54 + 8))(v56, v57);
  }

  return v78;
}

void sub_2198381C8()
{
  if (!qword_27CC1FE88)
  {
    type metadata accessor for SearchFeedServiceConfig();
    sub_21983832C(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
    v0 = sub_219BEDFA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1FE88);
    }
  }
}

uint64_t sub_21983825C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198382C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21983832C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219838374@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_2187EE82C(0, &qword_280EE4DF0, MEMORY[0x277D6DE10]);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - v4;
  sub_218CA0600(0);
  v6 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983B5A8(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  sub_219BEB244();
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_21983B69C(v14, sub_218D51CC0);
    v20 = sub_219BE16D4();
    return (*(*(v20 - 8) + 56))(v37, 1, 1, v20);
  }

  else
  {
    v31 = v6;
    (*(v17 + 32))(v19, v14, v16);
    v38 = *(v36 + 56);
    sub_2187EE748(0);
    sub_2186EF8AC(&unk_280EE4C90, sub_2187EE748);
    sub_219BE91E4();
    v22 = sub_218E66480();
    if (v23)
    {
      v24 = 1;
      v25 = v37;
      v26 = v31;
    }

    else
    {
      v27 = v22;
      sub_2186EF8AC(&unk_280EE5A50, sub_218CA0600);
      v26 = v31;
      sub_219BF5DF4();
      sub_219BF5E84();
      if (v27 >= sub_219BF5E74())
      {
        v24 = 1;
      }

      else
      {
        v28 = v32;
        sub_219BE65A4();
        v29 = v34;
        sub_219BE8194();
        (*(v33 + 8))(v28, v29);
        v24 = 0;
      }

      v25 = v37;
    }

    (*(v35 + 8))(v8, v26);
    v30 = sub_219BE97D4();
    (*(*(v30 - 8) + 56))(v11, v24, 1, v30);
    sub_2198388B8(v19, a1, v11, v25);
    sub_21983B69C(v11, sub_218B58900);
    return (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_2198388B8@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v152 = a2;
  v153 = a3;
  v136 = a4;
  v6 = MEMORY[0x277D83D88];
  sub_21983B544(0, &unk_280EE87A0, MEMORY[0x277D2DAB8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = &v115 - v8;
  v121 = sub_219BF0B74();
  v127 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v119 = v10;
  v126 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v118 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983B544(0, &unk_280EE8380, MEMORY[0x277D2E6C8], v6);
  MEMORY[0x28223BE20](v12 - 8);
  v134 = &v115 - v13;
  v14 = sub_219BE16E4();
  MEMORY[0x28223BE20](v14 - 8);
  v141 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for MagazineFeedSectionDescriptor();
  v16 = MEMORY[0x28223BE20](v150);
  v133 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v132 = &v115 - v19;
  MEMORY[0x28223BE20](v18);
  v140 = &v115 - v20;
  v139 = sub_219BDF584();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v144 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_219BF07A4();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for MagazineFeedModel(0);
  v23 = MEMORY[0x28223BE20](v157);
  v128 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v130 = &v115 - v25;
  sub_2186FACE4();
  v137 = v26;
  v122 = *(v26 - 1);
  MEMORY[0x28223BE20](v26);
  v142 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v29 = v28;
  v149 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v155 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v154 = (&v115 - v33);
  MEMORY[0x28223BE20](v32);
  v129 = &v115 - v34;
  sub_218951DB0();
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = (&v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2195762F0();
  v151 = v40;
  v41 = MEMORY[0x28223BE20](v40);
  v156 = &v115 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v115 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v115 - v46;
  v48 = v4[5];
  v148 = v4[6];
  v147 = __swift_project_boxed_opaque_existential_1(v4 + 2, v48);
  v146 = sub_219BE6944();
  sub_2186EF8AC(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_2186EF8AC(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
  v143 = sub_219BF00F4();

  v131 = sub_21983A340(a1, v153);
  v49 = *(v37 + 16);
  v152 = a1;
  v148 = (v37 + 16);
  v146 = v49;
  v49(v39, a1, v36);
  v50 = sub_2186EF8AC(&unk_280EE5940, sub_218951DB0);
  v147 = v39;
  v145 = v50;
  sub_219BF56A4();
  v51 = *(v151 + 9);
  sub_2186EF8AC(&qword_280EE5938, sub_218951DB0);
  sub_219BF5E84();
  if (*&v47[v51] == v158)
  {
    v150 = MEMORY[0x277D84F90];
  }

  else
  {
    v153 = (v149 + 16);
    v52 = (v149 + 8);
    v117 = (v122 + 4);
    ++v123;
    ++v122;
    v150 = MEMORY[0x277D84F90];
    do
    {
      a1 = v130;
      v53 = v29;
      v54 = v129;
      while (1)
      {
        v55 = sub_219BF5EC4();
        (*v153)(v54);
        v55(&v158, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          break;
        }

        (*v52)(v54, v53);
        sub_21983B69C(a1, type metadata accessor for MagazineFeedModel);
        sub_219BF5E84();
        if (*&v47[v51] == v158)
        {
          v29 = v53;
          goto LABEL_13;
        }
      }

      (*v117)(v142, a1, v137);
      v56 = v124;
      sub_219BF07D4();
      v57 = sub_219BF06B4();
      (*v123)(v56, v125);
      v58 = v57;
      v59 = [v57 identifier];

      a1 = v137;
      v116 = sub_219BF5414();
      v115 = v60;

      (*v122)(v142, a1);
      (*v52)(v54, v53);
      v29 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v150 = sub_218840D24(0, *(v150 + 2) + 1, 1, v150);
      }

      v62 = *(v150 + 2);
      v61 = *(v150 + 3);
      if (v62 >= v61 >> 1)
      {
        v150 = sub_218840D24((v61 > 1), v62 + 1, 1, v150);
      }

      v63 = v150;
      *(v150 + 2) = v62 + 1;
      v64 = &v63[16 * v62];
      v65 = v115;
      *(v64 + 4) = v116;
      *(v64 + 5) = v65;
      sub_219BF5E84();
    }

    while (*&v47[v51] != v158);
  }

LABEL_13:
  sub_21983B69C(v47, sub_2195762F0);
  v146(v147, v152, v36);
  sub_219BF56A4();
  v66 = *(v151 + 9);
  sub_219BF5E84();
  if (*&v45[v66] == v158)
  {
    v153 = MEMORY[0x277D84F90];
  }

  else
  {
    v69 = (v149 + 16);
    a1 = (v149 + 8);
    v153 = MEMORY[0x277D84F90];
    do
    {
      v70 = sub_219BF5EC4();
      v71 = v154;
      (*v69)(v154);
      v70(&v158, 0);
      sub_219BF5E94();
      sub_219839E68(&v158);
      (*a1)(v71, v29);
      v72 = v159;
      if (v159)
      {
        v73 = v158;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_218840D24(0, *(v153 + 2) + 1, 1, v153);
        }

        v75 = *(v153 + 2);
        v74 = *(v153 + 3);
        v76 = (v75 + 1);
        if (v75 >= v74 >> 1)
        {
          v142 = (v75 + 1);
          v137 = v75;
          v79 = sub_218840D24((v74 > 1), v75 + 1, 1, v153);
          v76 = v142;
          v75 = v137;
          v153 = v79;
        }

        v77 = v153;
        *(v153 + 2) = v76;
        v78 = &v77[16 * v75];
        *(v78 + 4) = v73;
        *(v78 + 5) = v72;
      }

      sub_219BF5E84();
    }

    while (*&v45[v66] != v158);
  }

  sub_21983B69C(v45, sub_2195762F0);
  v146(v147, v152, v36);
  v67 = v156;
  sub_219BF56A4();
  v68 = *(v151 + 9);
  sub_219BF5E84();
  if (*(v67 + v68) == v158)
  {
    v151 = MEMORY[0x277D84F90];
  }

  else
  {
    v154 = (v149 + 16);
    v80 = (v149 + 8);
    v149 = v126 + 32;
    v147 = (v126 + 8);
    v148 = (v127 + 8);
    v151 = MEMORY[0x277D84F90];
    while (2)
    {
      v81 = v128;
      a1 = v155;
LABEL_28:
      v45 = sub_219BF5EC4();
      (*v154)(a1);
      (v45)(&v158, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v86 = sub_219BF1584();
          (*(*(v86 - 8) + 8))(v81, v86);
          goto LABEL_31;
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
          v82 = type metadata accessor for MagazineFeedModel;
          v83 = v81;
          goto LABEL_30;
        case 0xCu:
          v87 = v118;
          v45 = v119;
          (*v149)(v118, v81, v119);
          v88 = v120;
          a1 = v87;
          sub_219BF07D4();
          v89 = sub_219BF0B44();
          (*v148)(v88, v121);
          v90 = v89;
          v91 = [v89 identifier];

          v92 = sub_219BF5414();
          v145 = v93;
          v146 = v92;

          (*v147)(a1, v45);
          (*v80)(v155, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v151 = sub_218840D24(0, *(v151 + 2) + 1, 1, v151);
          }

          v95 = *(v151 + 2);
          v94 = *(v151 + 3);
          if (v95 >= v94 >> 1)
          {
            v151 = sub_218840D24((v94 > 1), v95 + 1, 1, v151);
          }

          v96 = v151;
          *(v151 + 2) = v95 + 1;
          v97 = &v96[16 * v95];
          v98 = v145;
          *(v97 + 4) = v146;
          *(v97 + 5) = v98;
          v67 = v156;
          sub_219BF5E84();
          if (*(v67 + v68) != v158)
          {
            continue;
          }

          goto LABEL_40;
        default:

          sub_2186F6F00();
          v82 = type metadata accessor for MagazineFeedGapLocation;
          v83 = &v81[*(v85 + 48)];
LABEL_30:
          sub_21983B69C(v83, v82);
LABEL_31:
          a1 = v155;
          (*v80)(v155, v29);
          v84 = v156;
          sub_219BF5E84();
          if (*&v84[v68] != v158)
          {
            goto LABEL_28;
          }

          v67 = v84;
          break;
      }

      break;
    }
  }

LABEL_40:
  sub_21983B69C(v67, sub_2195762F0);
  (*(v138 + 104))(v144, *MEMORY[0x277D2DB58], v139);
  v99 = v140;
  v100 = v152;
  sub_219BE6934();
  sub_2193B127C(v141);
  sub_21983B69C(v99, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_219BE6944();
  v102 = v101;
  sub_219BF5DF4();
  sub_219BF5E84();
  v103 = sub_219BF5E74();
  if (v103 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v143 < 0xFFFFFFFF80000000)
  {
    goto LABEL_48;
  }

  v29 = v103;
  if (v103 < 0xFFFFFFFF80000000)
  {
    goto LABEL_48;
  }

  if (v143 > 0x7FFFFFFF)
  {
LABEL_49:
    __break(1u);

    (*a1)(v100, v29);
    sub_21983B69C(v45, sub_2195762F0);

    __break(1u);
    return result;
  }

  v104 = v132;
  sub_219BE6934();
  v105 = v134;
  sub_2193AE788(v134);
  sub_21983B69C(v104, type metadata accessor for MagazineFeedSectionDescriptor);
  v106 = sub_219BE0674();
  (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
  v107 = v133;
  sub_219BE6934();
  v108 = sub_2193B1600();
  sub_21983B69C(v107, type metadata accessor for MagazineFeedSectionDescriptor);
  if (v108)
  {
    v109 = [v108 identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();
  }

  v110 = v136;
  v111 = v135;
  v112 = sub_219BDF474();
  (*(*(v112 - 8) + 56))(v111, 1, 1, v112);
  sub_219BE15E4();
  v113 = sub_219BE16D4();
  return (*(*(v113 - 8) + 56))(v110, 0, 1, v113);
}

uint64_t sub_219839E68@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v1 = sub_219BF0B74();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF04A4();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = sub_219BF1584();
      result = (*(*(v38 - 8) + 8))(v16, v38);
      goto LABEL_4;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      v17 = type metadata accessor for MagazineFeedModel;
      v18 = v16;
      goto LABEL_3;
    case 0xBu:
      (*(v11 + 32))(v13, v16, v10);
      sub_219BF07D4();
      v21 = sub_219BF0404();
      (*(v40 + 8))(v8, v6);
      v22 = [v21 identifier];
      swift_unknownObjectRelease();
      v23 = sub_219BF5414();
      v25 = v24;

      result = (*(v11 + 8))(v13, v10);
      v26 = v46;
      *v46 = v23;
      v26[1] = v25;
      return result;
    case 0xCu:
      v28 = v44;
      v27 = v45;
      v29 = v41;
      (*(v44 + 32))(v41, v16, v45);
      sub_219BF07D4();
      v30 = sub_219BF0B44();
      (*(v42 + 8))(v3, v43);
      v31 = [v30 sourceChannel];

      v32 = [v31 identifier];
      swift_unknownObjectRelease();
      v33 = sub_219BF5414();
      v35 = v34;

      result = (*(v28 + 8))(v29, v27);
      v36 = v46;
      *v46 = v33;
      v36[1] = v35;
      return result;
    default:

      sub_2186F6F00();
      v17 = type metadata accessor for MagazineFeedGapLocation;
      v18 = &v16[*(v37 + 48)];
LABEL_3:
      result = sub_21983B69C(v18, v17);
LABEL_4:
      v20 = v46;
      *v46 = 0;
      v20[1] = 0;
      return result;
  }
}

uint64_t sub_21983A340(uint64_t a1, uint64_t a2)
{
  v128 = a2;
  v126 = a1;
  v110 = sub_219BF1094();
  v102 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A127E0(0);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F700C();
  v107 = v5;
  v101 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v106 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BF0F34();
  v100 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v105 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0758();
  v111 = v8;
  v99 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v104 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v113);
  v125 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v129 = v11;
  v103 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v127 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3D3CC(0);
  v14 = *(v13 - 8);
  v123 = v13;
  v124 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v122 = (&v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v130 = &v97 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v121 = &v97 - v20;
  MEMORY[0x28223BE20](v19);
  v120 = (&v97 - v21);
  sub_218951DB0();
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983B330(0);
  v28 = v27;
  MEMORY[0x28223BE20](v27);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983B350(0, &qword_280E8D5C8, MEMORY[0x277D84118]);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BE97D4();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983B4DC(v128, v36, sub_218B58900);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_21983B69C(v36, sub_218B58900);
    return MEMORY[0x277D84F90];
  }

  v128 = v38;
  v42 = *(v38 + 32);
  v98 = v37;
  v42(v40, v36, v37);
  v97 = v40;
  v43 = sub_219BE97C4();
  (*(v24 + 16))(v33, v126, v23);
  (*(v24 + 32))(v26, v33, v23);
  sub_2186EF8AC(&unk_280EE5940, sub_218951DB0);
  sub_219BF56A4();
  v44 = &v30[*(v28 + 52)];
  v126 = v43;
  *v44 = v43;
  v44[1] = 0;
  v119 = v44;
  sub_2195762F0();
  v46 = *(v45 + 36);
  v47 = sub_2186EF8AC(&qword_280EE5938, sub_218951DB0);
  sub_219BF5E84();
  if (*&v30[v46] == v131)
  {
    v48 = MEMORY[0x277D84F90];
    v50 = v124;
    v49 = v125;
  }

  else
  {
    v51 = v23;
    v52 = 0;
    v118 = (v103 + 16);
    v114 = (v103 + 32);
    v48 = MEMORY[0x277D84F90];
    v50 = v124;
    v49 = v125;
    v116 = v46;
    v117 = v30;
    v115 = v47;
    while (1)
    {
      v54 = sub_219BF5EC4();
      (*v118)(v127);
      v54(&v131, 0);
      result = sub_219BF5E94();
      v56 = *(v126 + 16);
      if (v52 == v56)
      {
        break;
      }

      if (v52 >= v56)
      {
        goto LABEL_45;
      }

      v57 = v51;
      v58 = v48;
      v59 = sub_219BE9364();
      v60 = *(v59 - 8);
      v61 = v127;
      v62 = v126 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v52;
      v119[1] = v52 + 1;
      v63 = *(v123 + 48);
      v64 = v121;
      (*v114)(v121, v61, v129);
      (*(v60 + 16))(v64 + v63, v62, v59);
      v65 = v120;
      sub_21983B478(v64, v120);
      if (sub_219BE9354())
      {
        sub_21983B478(v65, v122);
        v48 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132 = v58;
        v50 = v124;
        v51 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C35290(0, *(v48 + 16) + 1, 1);
          v48 = v132;
        }

        v53 = v116;
        v30 = v117;
        v68 = *(v48 + 16);
        v67 = *(v48 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_218C35290(v67 > 1, v68 + 1, 1);
          v48 = v132;
        }

        *(v48 + 16) = v68 + 1;
        sub_21983B478(v122, v48 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v68);
        v49 = v125;
      }

      else
      {
        sub_21983B69C(v65, sub_218C3D3CC);
        v50 = v124;
        v49 = v125;
        v48 = v58;
        v51 = v57;
        v53 = v116;
        v30 = v117;
      }

      sub_219BF5E84();
      ++v52;
      if (*&v30[v53] == v131)
      {
        goto LABEL_17;
      }
    }

    (*(v103 + 8))(v127, v129);
  }

LABEL_17:
  v30[*(v28 + 56)] = 1;
  result = sub_21983B69C(v30, sub_21983B330);
  v69 = *(v48 + 16);
  if (!v69)
  {
    v41 = MEMORY[0x277D84F90];
    v77 = v128;
LABEL_41:
    v96 = v98;
LABEL_42:

    (*(v77 + 8))(v97, v96);
    return v41;
  }

  v70 = 0;
  v126 = v101 + 32;
  v123 = v102 + 8;
  v121 = (v101 + 8);
  v122 = (v100 + 48);
  v127 = (v100 + 8);
  v119 = (v99 + 8);
  v120 = (v99 + 32);
  v118 = (v69 - 1);
  v41 = MEMORY[0x277D84F90];
  v71 = v111;
  while (v70 < *(v48 + 16))
  {
    v75 = v70;
    sub_21983B4DC(v48 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v70++, v130, sub_218C3D3CC);
    sub_219BE5FC4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = v128;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v86 = sub_219BF1584();
        (*(*(v86 - 8) + 8))(v49, v86);
        goto LABEL_22;
      case 2:
        v82 = v104;
        (*v120)(v104, v49, v71);
        v83 = v105;
        sub_219BF07D4();
        v84 = sub_219BF0F14();
        (*v127)(v83, v112);
        v85 = [v84 articleID];
        swift_unknownObjectRelease();
        if (!v85)
        {
          (*v119)(v82, v71);
          goto LABEL_30;
        }

        v87 = sub_219BF5414();
        v89 = v88;

        (*v119)(v82, v71);
        goto LABEL_34;
      case 3:
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
        v73 = type metadata accessor for MagazineFeedModel;
        v74 = v49;
        goto LABEL_21;
      case 5:
        v78 = v106;
        v79 = v107;
        (*v126)(v106, v49, v107);
        v80 = v109;
        sub_219BF07D4();
        v81 = v108;
        sub_219BF1074();
        (*v123)(v80, v110);
        if ((*v122)(v81, 1, v112) == 1)
        {
          (*v121)(v78, v79);
          sub_21983B69C(v81, sub_218A127E0);
          v71 = v111;
LABEL_30:
          v50 = v124;
          v49 = v125;
          v77 = v128;
LABEL_22:
          result = sub_21983B69C(v130, sub_218C3D3CC);
          if (v69 == v70)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v90 = sub_219BF0F14();
          (*v127)(v81, v112);
          v91 = [v90 identifier];
          swift_unknownObjectRelease();
          v87 = sub_219BF5414();
          v89 = v92;

          (*v121)(v78, v79);
          v71 = v111;
LABEL_34:
          sub_21983B69C(v130, sub_218C3D3CC);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_218840D24(0, *(v41 + 16) + 1, 1, v41);
            v41 = result;
          }

          v94 = *(v41 + 16);
          v93 = *(v41 + 24);
          if (v94 >= v93 >> 1)
          {
            result = sub_218840D24((v93 > 1), v94 + 1, 1, v41);
            v41 = result;
          }

          v70 = v75 + 1;
          *(v41 + 16) = v94 + 1;
          v95 = v41 + 16 * v94;
          *(v95 + 32) = v87;
          *(v95 + 40) = v89;
          v50 = v124;
          v49 = v125;
          v96 = v98;
          v77 = v128;
          if (v118 == v75)
          {
            goto LABEL_42;
          }
        }

        break;
      default:

        sub_2186F6F00();
        v73 = type metadata accessor for MagazineFeedGapLocation;
        v74 = &v49[*(v72 + 48)];
LABEL_21:
        sub_21983B69C(v74, v73);
        goto LABEL_22;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void sub_21983B350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_218951DB0();
    v7 = v6;
    sub_21983B444(255);
    v11[0] = v7;
    v11[1] = v8;
    v11[2] = sub_2186EF8AC(&unk_280EE5940, sub_218951DB0);
    v11[3] = sub_2186EF8AC(&qword_280E8F490, sub_21983B444);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21983B478(uint64_t a1, uint64_t a2)
{
  sub_218C3D3CC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21983B4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21983B544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21983B5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EF8AC(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_2186EF8AC(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21983B69C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21983B6FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  sub_21983CE30(v0 + OBJC_IVAR____TtC7NewsUI244SportsManagementDetailBlueprintLayoutBuilder_model, type metadata accessor for SportsDetailModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SportsManagementDetailBlueprintLayoutBuilder()
{
  result = qword_27CC1FED0;
  if (!qword_27CC1FED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21983B7D8()
{
  result = type metadata accessor for SportsDetailModel();
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

uint64_t sub_21983B994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21983B9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v7 = type metadata accessor for SportsManagementDetailSectionDescriptor();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SportsManagementDetailLayoutSectionDescriptor();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v17[-v14];
  sub_218952B60();
  sub_219BE6934();
  sub_21983BC34(v9, a3, v15);
  sub_21983CE30(v9, type metadata accessor for SportsManagementDetailSectionDescriptor);
  sub_21983CDC8(v15, v13, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor);
  v18 = a3;
  v19 = a1;
  v20 = a2;
  sub_21894C788(sub_21983CDA4, v17);
  type metadata accessor for SportsManagementDetailLayoutModel();
  sub_21983B994(&qword_27CC0B050, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor);
  sub_21983B994(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel);
  sub_219BE8174();
  return sub_21983CE30(v15, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor);
}

uint64_t sub_21983BC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = type metadata accessor for TitleViewLayoutOptions(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF3AF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SportsManagementDetailSectionDescriptor();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  sub_21983CDC8(a1, &v32 - v18, type metadata accessor for SportsManagementDetailSectionDescriptor);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 8))(v19, v10);
  }

  sub_21983CDC8(a1, v17, type metadata accessor for SportsManagementDetailSectionDescriptor);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v17, v10);
    v20 = sub_219BF3AD4();
    v22 = v21;
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v22 = 0xEB00000000646564;
    v20 = 0x6E656D6D6F636572;
  }

  v23 = sub_21977633C();
  *&v35 = v20;
  *(&v35 + 1) = v22;
  *&v36 = v23;
  *(&v36 + 1) = v24;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  __swift_project_boxed_opaque_existential_1((v32 + 56), *(v32 + 80));
  v25 = sub_219BE8164();
  (*(*(v25 - 8) + 16))(v7, v33, v25);
  *&v7[v5[5]] = 0x4024000000000000;
  *&v7[v5[6]] = 0x4024000000000000;
  v7[v5[7]] = 3;
  v26 = v34;
  sub_219459814(&v35, *&v7, v34);
  sub_21983CE30(v7, type metadata accessor for TitleViewLayoutOptions);
  sub_218D57484();
  v28 = *(v27 + 48);
  v29 = v38;
  *(a3 + 32) = v37;
  *(a3 + 48) = v29;
  *(a3 + 64) = v39;
  v30 = v36;
  *a3 = v35;
  *(a3 + 16) = v30;
  return sub_21983CE90(v26, a3 + v28, type metadata accessor for TitleViewLayoutAttributes);
}

uint64_t sub_21983BFF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v104 = a3;
  v102 = a2;
  v100 = a1;
  v106 = a4;
  v105 = type metadata accessor for SportsManagementDetailLayoutModel();
  MEMORY[0x28223BE20](v105);
  v99 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for SportsDetailModel();
  v5 = MEMORY[0x28223BE20](v103);
  v95 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v96 = &v85 - v7;
  v101 = type metadata accessor for SportsManagementDetailSectionDescriptor();
  v8 = MEMORY[0x28223BE20](v101);
  v94 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v92 = &v85 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v89 = &v85 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v87 = &v85 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v93 = &v85 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v85 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v88 = &v85 - v21;
  MEMORY[0x28223BE20](v20);
  v86 = &v85 - v22;
  v98 = sub_219BE8164();
  v97 = *(v98 - 8);
  v23 = MEMORY[0x28223BE20](v98);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v85 - v26;
  v28 = type metadata accessor for SportsTagLayoutOptions();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v85 - v32;
  v91 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v91);
  v35 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SportsManagementDetailModel();
  MEMORY[0x28223BE20](v36);
  v38 = (&v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218952E24();
  sub_219BE5FC4();
  v39 = v97;
  v40 = (v97 + 16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v96 = *v38;
    v41 = v98;
    (*v40)(v25, v100, v98);
    sub_218952B60();
    v42 = v87;
    sub_219BE6934();
    v43 = v89;
    sub_21983CE90(v42, v89, type metadata accessor for SportsManagementDetailSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = sub_219BF3AF4();
      (*(*(v44 - 8) + 8))(v43, v44);
    }

    v45 = v92;
    sub_219BE6934();
    v46 = v94;
    sub_21983CE90(v45, v94, type metadata accessor for SportsManagementDetailSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = sub_219BF3AF4();
      (*(*(v47 - 8) + 8))(v46, v47);
    }

    v48 = v95;
    sub_21983CDC8(v104 + OBJC_IVAR____TtC7NewsUI244SportsManagementDetailBlueprintLayoutBuilder_model, v95, type metadata accessor for SportsDetailModel);
    v49 = swift_getEnumCaseMultiPayload() < 2;
    sub_21983CE30(v48, type metadata accessor for SportsDetailModel);
    __asm { FMOV            V0.2D, #24.0 }

    *&v31[v28[8]] = _Q0;
    *&v31[v28[9]] = 0x4020000000000000;
    *&v31[v28[10]] = 0x4031000000000000;
    (*(v39 + 32))(v31, v25, v41);
    v31[v28[5]] = 2;
    v31[v28[6]] = 1;
    v31[v28[11]] = v49;
    v31[v28[7]] = 0;
    v55 = v96;
    sub_219AE5AF0(*&v96, v31, &v107);
    v56 = v115;
    v57 = v99;
    *(v99 + 152) = v116;
    v58 = v118;
    *(v57 + 168) = v117;
    *(v57 + 184) = v58;
    v59 = v111;
    *(v57 + 88) = v112;
    v60 = v114;
    *(v57 + 104) = v113;
    *(v57 + 120) = v60;
    *(v57 + 136) = v56;
    v61 = v107;
    *(v57 + 24) = v108;
    v62 = v110;
    *(v57 + 40) = v109;
    *(v57 + 56) = v62;
    *(v57 + 72) = v59;
    *v57 = v55;
    *(v57 + 200) = v119;
    *(v57 + 8) = v61;
    swift_storeEnumTagMultiPayload();
    sub_21983B994(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel);
    sub_219BE75D4();
    v63 = type metadata accessor for SportsTagLayoutOptions;
    v64 = v31;
  }

  else
  {
    sub_21983CE90(v38, v35, type metadata accessor for SportsModel);
    v65 = *v40;
    v95 = v27;
    v66 = v98;
    v65(v27, v100, v98);
    sub_218952B60();
    v67 = v86;
    sub_219BE6934();
    v68 = v88;
    sub_21983CE90(v67, v88, type metadata accessor for SportsManagementDetailSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v69 = sub_219BF3AF4();
      (*(*(v69 - 8) + 8))(v68, v69);
    }

    v70 = v90;
    sub_219BE6934();
    v71 = v93;
    sub_21983CE90(v70, v93, type metadata accessor for SportsManagementDetailSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v72 = sub_219BF3AF4();
      (*(*(v72 - 8) + 8))(v71, v72);
    }

    v73 = v96;
    sub_21983CDC8(v104 + OBJC_IVAR____TtC7NewsUI244SportsManagementDetailBlueprintLayoutBuilder_model, v96, type metadata accessor for SportsDetailModel);
    v74 = swift_getEnumCaseMultiPayload() < 2;
    sub_21983CE30(v73, type metadata accessor for SportsDetailModel);
    __asm { FMOV            V0.2D, #24.0 }

    *&v33[v28[8]] = _Q0;
    *&v33[v28[9]] = 0x4020000000000000;
    *&v33[v28[10]] = 0x4031000000000000;
    (*(v39 + 32))(v33, v95, v66);
    v33[v28[5]] = 2;
    v33[v28[6]] = 1;
    v33[v28[11]] = v74;
    v33[v28[7]] = 0;
    sub_219AE5AF0(*&v35[*(v91 + 24)], v33, &v107);
    sub_218C95678();
    v77 = v99 + *(v76 + 48);
    sub_21983CDC8(v35, v99, type metadata accessor for SportsModel);
    v78 = v118;
    *(v77 + 160) = v117;
    *(v77 + 176) = v78;
    *(v77 + 192) = v119;
    v79 = v114;
    *(v77 + 96) = v113;
    *(v77 + 112) = v79;
    v80 = v116;
    *(v77 + 128) = v115;
    *(v77 + 144) = v80;
    v81 = v110;
    *(v77 + 32) = v109;
    *(v77 + 48) = v81;
    v82 = v112;
    *(v77 + 64) = v111;
    *(v77 + 80) = v82;
    v83 = v108;
    *v77 = v107;
    *(v77 + 16) = v83;
    swift_storeEnumTagMultiPayload();
    sub_21983B994(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel);
    sub_219BE75D4();
    sub_21983CE30(v33, type metadata accessor for SportsTagLayoutOptions);
    v63 = type metadata accessor for SportsModel;
    v64 = v35;
  }

  return sub_21983CE30(v64, v63);
}

uint64_t sub_21983CB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_21983CC00, 0, 0);
}

uint64_t sub_21983CC00()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_21894C3F0(sub_21983CD84, v3);

  type metadata accessor for SportsManagementDetailLayoutSectionDescriptor();
  type metadata accessor for SportsManagementDetailLayoutModel();
  sub_21983B994(&qword_27CC0B050, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor);
  sub_21983B994(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel);
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

uint64_t sub_21983CDC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21983CE30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21983CE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21983CEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[1] = a3;
  v38 = a2;
  v43 = a1;
  sub_2189519D8();
  v42 = v3;
  v40 = *(v3 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ChannelPickerLayoutSectionDescriptor() - 8;
  v7 = MEMORY[0x28223BE20](v35);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v34 - v10;
  v12 = sub_219BDC104();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE9834();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218967B40();
  (*(v17 + 104))(v19, *MEMORY[0x277D6E758], v16);
  sub_219BE9614();
  v20 = sub_219BF6424();
  (*(v13 + 8))(v15, v12);
  (*(v17 + 8))(v19, v16);
  __swift_project_boxed_opaque_existential_1((v36 + 32), *(v36 + 56));
  sub_218951AE4();
  sub_219BE8184();
  v21 = *(v11 + 3);
  v45[2] = *(v11 + 2);
  v45[3] = v21;
  v46 = *(v11 + 8);
  v22 = *(v11 + 1);
  v45[0] = *v11;
  v45[1] = v22;
  sub_218967C1C(v45, v44);
  sub_218967D30(v11, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_219BE8184();
  v23 = v37;
  sub_218967C78(&v9[*(v35 + 28)], v37);
  sub_218967D30(v9, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_219A4ECF4(v45, v20, v23);
  sub_218967CDC(v45);
  sub_218967D30(v23, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);
  v24 = sub_219BE8204();
  v25 = *&v24[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

  v26 = *&v25[qword_280EDD8D8];
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v40;
  v29 = v39;
  v30 = v42;
  (*(v40 + 16))(v39, v43, v42);
  v31 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  (*(v28 + 32))(v32 + v31, v29, v30);

  return v20;
}

uint64_t sub_21983D41C()
{
  v0 = sub_219BE8C14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218951C88();
  v8 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = v1;
    sub_2189519D8();
    sub_219BE6934();
    memcpy(v50, v40, 0x151uLL);
    memcpy(v51, v40, 0x151uLL);
    sub_21898EAD4(v51);
    v12 = sub_21892DE88(v51);
    v13 = *(v12 + 232);
    v43 = *(v12 + 216);
    v44 = v13;
    v14 = *(v12 + 200);
    v41 = *(v12 + 184);
    v42 = v14;
    v15 = *(v12 + 296);
    v16 = *(v12 + 312);
    v17 = *(v12 + 264);
    v47 = *(v12 + 280);
    v48 = v15;
    v49[0] = v16;
    *(v49 + 9) = *(v12 + 321);
    v45 = *(v12 + 248);
    v46 = v17;
    v37 = v47;
    v38 = v15;
    v39[0] = v49[0];
    *(v39 + 9) = *(v49 + 9);
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v36 = v17;
    v31 = v41;
    v32 = v42;
    if (sub_21881EB34(&v31) == 1)
    {

      return sub_218F9E778(v50);
    }

    else
    {
      v29[6] = v47;
      v29[7] = v48;
      v30[0] = v49[0];
      *(v30 + 9) = *(v49 + 9);
      v29[2] = v43;
      v29[3] = v44;
      v29[4] = v45;
      v29[5] = v46;
      v29[0] = v41;
      v29[1] = v42;
      sub_218D2E42C(v29, &v28);
      sub_218F9E778(v50);
      v18 = v38;
      v6[6] = v37;
      v6[7] = v18;
      v6[8] = v39[0];
      *(v6 + 137) = *(v39 + 9);
      v19 = v34;
      v6[2] = v33;
      v6[3] = v19;
      v20 = v36;
      v6[4] = v35;
      v6[5] = v20;
      v21 = v32;
      *v6 = v31;
      v6[1] = v21;
      swift_storeEnumTagMultiPayload();
      sub_218967BD4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
      sub_219BE5FB4();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v23 = *(Strong + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler);
        sub_219BE8C04();
        v24 = *(v23 + 40);
        ObjectType = swift_getObjectType();
        (*(v24 + 48))(v10, ObjectType, v24);

        (*(v26 + 8))(v3, v0);
        (*(v27 + 8))(v10, v8);
        return swift_unknownObjectRelease();
      }

      else
      {

        return (*(v27 + 8))(v10, v8);
      }
    }
  }

  return result;
}

uint64_t sub_21983D858()
{
  v0 = sub_219BE9834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218967B40();
  (*(v1 + 104))(v3, *MEMORY[0x277D6E758], v0);
  sub_219BF6444();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21983D994()
{
  sub_2189519D8();

  return sub_21983D41C();
}

uint64_t sub_21983DA08()
{
  v1 = [*(v0 + 24) appConfiguration];
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_sharedWithYouFeedLayoutConfigurationResourceId)) != 0)
  {
    v3 = v2;
    sub_219BF5414();

    MEMORY[0x28223BE20](v4);
    sub_2186E9518();
    sub_219BE3204();

    v5 = sub_219BE2E54();
    type metadata accessor for SharedWithYouFeedConfigFetchResult();
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    sub_21983E5E4();
    swift_allocError();
    *v9 = 1;
    sub_21983E778(0, &unk_27CC1FEE8, type metadata accessor for SharedWithYouFeedConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_219BE2FF4();
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t sub_21983DC4C(uint64_t a1)
{
  sub_21983E778(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v11 - v3);
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_219BF5CE4();
  *v4 = v5;
  v6 = *MEMORY[0x277D6CA48];
  v7 = sub_219BE1B34();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = sub_219BF2944();
  sub_21897DAD8(v4);
  return v9;
}

char *sub_21983DDE8(void **a1, unint64_t a2)
{
  v35 = a2;
  v33 = type metadata accessor for SharedWithYouFeedConfigFetchResult();
  v4 = MEMORY[0x28223BE20](v33);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for SharedWithYouFeedContentConfig();
  MEMORY[0x28223BE20](v8);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = [v17 fileURL];
  if (v18)
  {
    v19 = v18;
    sub_219BDB8B4();

    (*(v11 + 32))(v16, v14, v10);
    v20 = sub_219BDB974();
    if (!v2)
    {
      v31 = v7;
      v23 = v21;
      v24 = v20;
      sub_21983E658();
      v32 = v24;
      v35 = v23;
      sub_219BE1974();
      v26 = v36;
      v27 = v31;
      sub_21983E6B0(v36, v31, type metadata accessor for SharedWithYouFeedContentConfig);
      v28 = v34;
      *(v27 + *(v33 + 20)) = v17;
      sub_21983E6B0(v27, v28, type metadata accessor for SharedWithYouFeedConfigFetchResult);
      sub_21983E778(0, &unk_27CC1FEE8, type metadata accessor for SharedWithYouFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v29 = v17;
      v7 = sub_219BE3014();
      sub_2186C6190(v32, v35);
      sub_21983E718(v27, type metadata accessor for SharedWithYouFeedConfigFetchResult);
      sub_21983E718(v26, type metadata accessor for SharedWithYouFeedContentConfig);
    }

    (*(v11 + 8))(v16, v10);
  }

  else
  {
    sub_21983E5E4();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_21983E1C8()
{
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_21983E2F4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SharedWithYouFeedContentConfig();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983E658();
  result = sub_219BE1974();
  if (!v1)
  {
    sub_21983E7DC(v5, a1);
    result = type metadata accessor for SharedWithYouFeedConfigFetchResult();
    *(a1 + *(result + 20)) = 0;
  }

  return result;
}

uint64_t sub_21983E3DC(uint64_t a1)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BDAF64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5, a1, v2);
  sub_219BDAF44();
  v14 = v9;
  sub_219BE3204();
  v10 = sub_219BE2E54();
  type metadata accessor for SharedWithYouFeedConfigFetchResult();
  v11 = sub_219BE2F94();

  (*(v7 + 8))(v9, v6);
  return v11;
}

unint64_t sub_21983E5E4()
{
  result = qword_27CC1FEE0;
  if (!qword_27CC1FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FEE0);
  }

  return result;
}

unint64_t sub_21983E658()
{
  result = qword_27CC1FEF8;
  if (!qword_27CC1FEF8)
  {
    type metadata accessor for SharedWithYouFeedContentConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FEF8);
  }

  return result;
}

uint64_t sub_21983E6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21983E718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21983E778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21983E7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedContentConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21983E854()
{
  result = qword_27CC1FF08;
  if (!qword_27CC1FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF08);
  }

  return result;
}

uint64_t sub_21983E8B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  sub_21983EE80(0, &qword_280E8C2C8, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21983EE2C();
  sub_219BF7B44();
  v15 = 0;
  sub_219BF77F4();
  if (!v5)
  {
    v14 = 1;
    sub_219BF7794();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21983EA38()
{
  if (*v0)
  {
    return 0x6E61726165707061;
  }

  else
  {
    return 0x6E656D6563616C70;
  }
}

uint64_t sub_21983EA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEE006F666E496563)
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

uint64_t sub_21983EB70(uint64_t a1)
{
  v2 = sub_21983EE2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21983EBAC(uint64_t a1)
{
  v2 = sub_21983EE2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21983EBE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21983EC38(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_21983EC38(void *a1)
{
  sub_21983EE80(0, &qword_280E8C948, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21983EE2C();
  sub_219BF7B34();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_219BF76F4();
    v11 = 1;
    sub_219BF7694();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_21983EE2C()
{
  result = qword_280EA0A28;
  if (!qword_280EA0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0A28);
  }

  return result;
}

void sub_21983EE80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21983EE2C();
    v7 = a3(a1, &type metadata for EngagementTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21983EEF8()
{
  result = qword_27CC1FF10;
  if (!qword_27CC1FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF10);
  }

  return result;
}

unint64_t sub_21983EF50()
{
  result = qword_280EA0A18;
  if (!qword_280EA0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0A18);
  }

  return result;
}

unint64_t sub_21983EFA8()
{
  result = qword_280EA0A20;
  if (!qword_280EA0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0A20);
  }

  return result;
}

uint64_t sub_21983EFFC(uint64_t a1)
{
  sub_2186E5C80(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*(v1 + 32) appConfiguration];
  v11 = *(v1 + 80);
  if (qword_27CC08130 != -1)
  {
    swift_once();
  }

  if ((sub_219BDC834() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    sub_218F85D20();
LABEL_10:
    sub_219374410(a1, v20);
    v16 = swift_allocObject();
    v17 = v20[1];
    *(v16 + 16) = v20[0];
    *(v16 + 32) = v17;
    *(v16 + 48) = v21[0];
    *(v16 + 57) = *(v21 + 9);
    *(v16 + 80) = v10;
    *(v16 + 88) = v11;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v18 = sub_219BE2E54();
    type metadata accessor for SearchMoreFeedServiceConfig();
    v14 = sub_219BE2F74();

    swift_unknownObjectRelease();

    return v14;
  }

  if (qword_27CC08128 != -1)
  {
    swift_once();
  }

  sub_21983F5FC(&qword_27CC1FF20, v12, type metadata accessor for SearchMoreFeedServiceConfigFetcher);
  sub_219BDC7D4();
  sub_219BDB914();

  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v5, v6);
    __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    v15 = off_282A536F8;
    type metadata accessor for SearchMoreFeedConfigManager();
    v15(v9);
    (*(v7 + 8))(v9, v6);
    goto LABEL_10;
  }

  sub_218838478(v5);
  sub_21983F644();
  swift_allocError();
  *v13 = 0;
  sub_2186E5C80(0, &qword_27CC1FF30, type metadata accessor for SearchMoreFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v14 = sub_219BE2FF4();
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_21983F458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_219374410(a2, a5);
  v9 = type metadata accessor for SearchMoreFeedServiceConfig();
  sub_21983F698(a1, a5 + v9[5]);
  v10 = v9[6];
  v11 = *MEMORY[0x277D32220];
  v12 = sub_219BEEA84();
  (*(*(v12 - 8) + 104))(a5 + v10, v11, v12);
  *(a5 + v9[7]) = [a3 autoRefreshMinimumInterval];
  *(a5 + v9[8]) = a4;
  return swift_unknownObjectRetain();
}

uint64_t sub_21983F5FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_21983F644()
{
  result = qword_27CC1FF28;
  if (!qword_27CC1FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF28);
  }

  return result;
}

uint64_t sub_21983F698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedContentConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21983F710()
{
  result = qword_27CC1FF38;
  if (!qword_27CC1FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF38);
  }

  return result;
}

uint64_t sub_21983F764(void *a1, uint64_t a2)
{
  v3 = v2;
  v67 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_219840B58(0, &unk_280EE34A0, MEMORY[0x277D2D148], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v56 - v7;
  sub_219840B58(0, &qword_280E91C10, MEMORY[0x277D32010], v5);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v56 - v9;
  sub_219840B58(0, &unk_280E90C60, MEMORY[0x277D32FE0], v5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - v11;
  v13 = sub_219BF0574();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = &v56 - v17;
  v18 = type metadata accessor for HeadlineSharedState(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = v3[3];
    ObjectType = swift_getObjectType();
    v62 = (*(v24 + 8))(a1, ObjectType, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = v3[5];
    v27 = swift_getObjectType();
    v61 = (*(v26 + 8))(a1, v27, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = v3[7];
    v29 = swift_getObjectType();
    (*(v28 + 8))(a1, v67, v29, v28);
    swift_unknownObjectRelease();
    sub_2198409E0(v21, v23);
  }

  else
  {
    v30 = sub_219BF12B4();
    (*(*(v30 - 8) + 56))(v23, 1, 1, v30);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = v3[9];
    v32 = swift_getObjectType();
    v60 = (*(v31 + 8))(a1, v32, v31);
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v63 = v23;
  if (Strong)
  {
    v34 = v3[11];
    v35 = swift_getObjectType();
    v59 = (*(v34 + 8))(a1, v35, v34);
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 1;
  }

  v36 = sub_21983FF3C(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v37 = v3[14];
    v38 = swift_getObjectType();
    v58 = (*(v37 + 8))(a1, v38, v37);
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0;
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  v57 = v13;
  if (v39)
  {
    v40 = v3[16];
    v41 = swift_getObjectType();
    v42 = (*(v40 + 8))(a1, v41, v40);
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0;
  }

  sub_219840A44(v67, v12);
  v43 = sub_219BF0BD4();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v12, 1, v43) == 1)
  {
    sub_218EA3B08(v12);
    v45 = v65;
    v46 = v57;
    (*(v14 + 104))(v65, *MEMORY[0x277D32D70], v57);
  }

  else
  {
    v47 = v42;
    v48 = v56;
    sub_219BF0B94();
    (*(v44 + 8))(v12, v43);
    v45 = v65;
    v49 = v48;
    v42 = v47;
    v46 = v57;
    (*(v14 + 32))(v65, v49, v57);
  }

  v50 = v64;
  sub_2198403B0(a1, v67, v64);
  v51 = sub_219BEBD44();
  v52 = v66;
  (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
  type metadata accessor for HeadlineModel(0);
  v53 = swift_allocObject();
  *(v53 + 16) = a1;
  sub_219840AD8(v50, v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, &qword_280E91C10, MEMORY[0x277D32010]);
  v54 = v61;
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_likedState) = v62;
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_savedState) = v54 & 1;
  sub_2198409E0(v63, v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_sharedState);
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_offensiveState) = v60 & 1;
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_draggableState) = v59 & 1;
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel) = v36;
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_deletedState) = v58 & 1;
  sub_219840AD8(v52, v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_nativeAdInfo, &unk_280EE34A0, MEMORY[0x277D2D148]);
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_blockedState) = v42 & 1;
  (*(v14 + 32))(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_premiumBadge, v45, v46);
  swift_unknownObjectRetain();
  return v53;
}

uint64_t sub_21983FF3C(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [a1 isPaid];
    if ([a1 respondsToSelector_])
    {
      v5 = [a1 isBundlePaid];
    }

    else
    {
      v5 = 0;
    }

    v6 = [a1 sourceChannel];
    if (v6)
    {
      v7 = [v6 identifier];
      swift_unknownObjectRelease();
      v8 = sub_219BF5414();
      v10 = v9;

      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = 0;
      v10 = 0;
      if (v4)
      {
LABEL_7:
        v11 = [v3 purchaseProvider];
        if (v10)
        {
          v12 = [v11 purchasedTagIDs];
          v13 = sub_219BF5D44();

          LOBYTE(v12) = sub_2188537B8(v8, v10, v13);

          swift_unknownObjectRelease();
          if (v12)
          {

LABEL_37:
            swift_unknownObjectRelease();
            return 0;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        if (!v5)
        {
          goto LABEL_34;
        }

LABEL_15:
        if (!v10)
        {
          goto LABEL_39;
        }

        v14 = [objc_msgSend(v3 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v14, v14 + 1))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
        }

        v27 = v25;
        v28 = v26;
        if (*(&v26 + 1))
        {
          sub_2186C6148(0, &qword_280E8DA20);
          if (swift_dynamicCast())
          {
            v15 = v24;
            v16 = [v24 integerValue];
            if (v16 == -1)
            {

              goto LABEL_36;
            }

            v17 = v16;
            goto LABEL_25;
          }
        }

        else
        {
          sub_218806FD0(&v27);
        }

        v15 = 0;
        v17 = 0;
LABEL_25:
        if (objc_getAssociatedObject(v14, ~v17))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
        }

        v27 = v25;
        v28 = v26;
        if (*(&v26 + 1))
        {
          sub_2186C6148(0, &qword_280E8DA20);
          if (swift_dynamicCast())
          {
            v18 = v24;
            v19 = [v18 integerValue];

            if ((v19 ^ v17))
            {
LABEL_36:
              v20 = [objc_msgSend(v3 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v21 = [v20 bundleChannelIDs];

              v22 = sub_219BF53D4();
              LODWORD(v20) = [v21 containsObject_];

              if (v20)
              {
                goto LABEL_37;
              }

              goto LABEL_39;
            }

            goto LABEL_34;
          }
        }

        else
        {
          sub_218806FD0(&v27);
        }

        if (v17)
        {
          goto LABEL_36;
        }

LABEL_34:

LABEL_39:
        v23 = [v3 canGetBundleSubscriptionToChannel_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v23)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }

    if ((v5 & 1) == 0)
    {
      swift_unknownObjectRelease();

      return 0;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_2198403B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  sub_219840B58(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_219BF0BD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219840A44(a2, v8);
  v15 = *(v12 + 48);
  if (v15(v8, 1, v11) == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_219BEEFB4();
      swift_unknownObjectRelease();
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    (*(v12 + 56))(v10, v16, 1, v11);
    if (v15(v8, 1, v11) != 1)
    {
      sub_218EA3B08(v8);
    }
  }

  else
  {
    (*(v12 + 32))(v10, v8, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
  }

  if (v15(v10, 1, v11) == 1)
  {
    sub_218EA3B08(v10);
LABEL_23:
    v19 = 1;
    v18 = v27;
    goto LABEL_24;
  }

  (*(v12 + 32))(v14, v10, v11);
  if (sub_219BF0B84())
  {
    if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_narrativeTrack))
    {
      if (([a1 respondsToSelector_] & 1) == 0)
      {
        goto LABEL_22;
      }

      v17 = [a1 narrativeTrackSample];
      if (!v17)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_narrativeTrackSample))
  {
    if (([a1 respondsToSelector_] & 1) == 0)
    {
      goto LABEL_22;
    }

    v17 = [a1 narrativeTrack];
    if (!v17)
    {
      goto LABEL_22;
    }

LABEL_21:
    v20 = v17;
    sub_2186C6148(0, &qword_280E8D790);
    v21 = sub_219BF6F74();
    sub_219BF61F4();
    sub_219840B58(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09BA0;
    *(v22 + 56) = sub_2186C6148(0, &qword_280E8E2C0);
    *(v22 + 64) = sub_219336C7C();
    *(v22 + 32) = v20;
    v23 = v20;
    sub_219BE5314();

LABEL_22:
    (*(v12 + 8))(v14, v11);
    goto LABEL_23;
  }

  v18 = v27;
  sub_219BEE3F4();
  (*(v12 + 8))(v14, v11);
  v19 = 0;
LABEL_24:
  v24 = sub_219BEE404();
  return (*(*(v24 - 8) + 56))(v18, v19, 1, v24);
}

uint64_t sub_219840968()
{
  sub_218774F78(v0 + 16);
  sub_218774F78(v0 + 32);
  sub_218774F78(v0 + 48);
  sub_218774F78(v0 + 64);
  sub_218774F78(v0 + 80);
  sub_218774F78(v0 + 96);
  sub_218774F78(v0 + 104);
  sub_218774F78(v0 + 120);
  sub_218774F78(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t sub_2198409E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineSharedState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219840A44(uint64_t a1, uint64_t a2)
{
  sub_219840B58(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219840AD8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219840B58(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_219840B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219840BBC()
{
  v23 = sub_219BE9C04();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BDF074();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE1524();
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v22 + 16);
  v13 = sub_219BE9924();
  v21[0] = v14;
  v21[1] = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D2F3F8], v6);
  sub_219BE9934();
  v15 = (*(v0 + 88))(v2, v23);
  if (v15 == *MEMORY[0x277D6E830])
  {
    v16 = MEMORY[0x277D2D868];
  }

  else
  {
    if (v15 != *MEMORY[0x277D6E840] && v15 != *MEMORY[0x277D6E848] && v15 != *MEMORY[0x277D6E838])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    v16 = MEMORY[0x277D2D810];
  }

  (*(v3 + 104))(v5, *v16, v25);
  sub_219BE1514();
  sub_219841E44(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v19 = v24;
  sub_219BDD1F4();
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_219840FAC(uint64_t a1)
{
  sub_219841D6C(0, &qword_27CC1FF40, MEMORY[0x277D6DA48]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  sub_218C72018();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v9 + 8))(v11, v8);
  v12 = v16[1];
  (*(v4 + 16))(v6, a1, v3);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12 & 0x7FFFFFFFFFFFFFFFLL;
  (*(v4 + 32))(v14 + v13, v6, v3);
  sub_218E2CACC();
  sub_219BDD154();
  sub_21892DE98();
}

uint64_t sub_219841204()
{
  sub_219BE0244();
  sub_219841E44(&qword_280EE8478, MEMORY[0x277D2E3E8]);
  return sub_219BDD234();
}

uint64_t sub_219841284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a1;
  v78 = a3;
  v4 = sub_219BDBD34();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_219BDF1E4();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C72018();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219841D6C(0, &qword_27CC0B008, MEMORY[0x277D6EC60]);
  v62 = v9;
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v58 = &v52 - v10;
  sub_218E2C0C0();
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219841D6C(0, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v52 = &v52 - v14;
  v57 = sub_219BDFCE4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE1444();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *(a2 + 16);
  v21 = *(a2 + 24);
  v80 = 0;
  v81 = 0xE000000000000000;
  v79 = v19;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v22 = [*(v21 + 16) identifier];
  v23 = sub_219BF5414();
  v25 = v24;

  MEMORY[0x21CECC330](v23, v25);

  sub_219BE1424();
  sub_2187F3258();
  v27 = v26;
  v28 = sub_219BDCD44();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v73 = *(v29 + 72);
  v75 = v27;
  v31 = swift_allocObject();
  v70 = xmmword_219C09BA0;
  *(v31 + 16) = xmmword_219C09BA0;
  v32 = *(v29 + 104);
  v72 = *MEMORY[0x277CEAD18];
  v71 = v32;
  v32(v31 + v30);
  sub_219841E44(&unk_280EE8030, MEMORY[0x277D2F260]);
  v74 = "gDislikedTracker.swift";
  sub_219BDCCC4();

  (*(v18 + 8))(v20, v17);
  sub_219841D6C(0, &qword_27CC1FF40, MEMORY[0x277D6DA48]);
  v34 = v33;
  sub_219841DF0();
  v76 = v34;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_219BDFCD4();
  v36 = swift_allocObject();
  *(v36 + 16) = v70;
  v71(v36 + v30, v72, v28);
  sub_219841E44(&unk_280EE8590, MEMORY[0x277D2E058]);
  v37 = v57;
  sub_219BDCCC4();

  (*(v56 + 8))(v16, v37);
  v38 = v58;
  sub_219BE7594();
  v39 = v60;
  sub_219BE7564();
  v57 = v28;
  v40 = v64;
  sub_219BE5F84();
  (*(v63 + 8))(v39, v40);
  v41 = v59;
  v42 = v62;
  sub_219BEB244();

  (*(v61 + 8))(v38, v42);
  v43 = v65;
  v44 = v66;
  if ((*(v65 + 48))(v41, 1, v66) == 1)
  {
    sub_218E2C2B4(v41);
  }

  else
  {
    v45 = v52;
    (*(v43 + 32))(v52, v41, v44);
    sub_219BE6944();
    v46 = v53;
    sub_219BDF1C4();
    v47 = swift_allocObject();
    *(v47 + 16) = v70;
    v71(v47 + v30, v72, v57);
    sub_219841E44(&unk_280EE8840, MEMORY[0x277D2D970]);
    v48 = v55;
    sub_219BDCCC4();

    (*(v54 + 8))(v46, v48);
    (*(v43 + 8))(v45, v44);
  }

  sub_219BDFEC4();
  v49 = v67;
  sub_219BE75A4();
  sub_219841E44(&unk_280EE8520, MEMORY[0x277D2E1D0]);
  sub_219BDCC64();
  v50 = v69;
  v51 = *(v68 + 8);
  v51(v49, v69);
  sub_219BE7574();
  sub_219BDCC74();
  return (v51)(v49, v50);
}

uint64_t sub_219841CDC(uint64_t a1)
{
  sub_219841D6C(0, &qword_27CC1FF40, MEMORY[0x277D6DA48]);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_219841284(a1, v4, v5);
}

void sub_219841D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDislikedDescriptor;
    v8[1] = &type metadata for FollowingDislikedModel;
    v8[2] = sub_2189528B0();
    v8[3] = sub_218952904();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_219841DF0()
{
  result = qword_27CC1FF48;
  if (!qword_27CC1FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF48);
  }

  return result;
}

uint64_t sub_219841E44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PromotedArticleListTagFeedGroupConfigData()
{
  result = qword_280E95720;
  if (!qword_280E95720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219841F00()
{
  result = sub_219BF1934();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_219841F74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198424A0(0, &qword_280E8C720, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21984244C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for PromotedArticleListTagFeedGroupConfigData() + 20)) = 2;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2198421D8(void *a1)
{
  v3 = v1;
  sub_2198424A0(0, &qword_27CC1FF50, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21984244C();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for PromotedArticleListTagFeedGroupConfigData() + 20));
    v11[13] = 1;
    sub_218933D28();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2198423A4(uint64_t a1)
{
  v2 = sub_21984244C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198423E0(uint64_t a1)
{
  v2 = sub_21984244C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21984244C()
{
  result = qword_280E95750;
  if (!qword_280E95750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95750);
  }

  return result;
}

void sub_2198424A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21984244C();
    v7 = a3(a1, &type metadata for PromotedArticleListTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219842518()
{
  result = qword_27CC1FF58;
  if (!qword_27CC1FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF58);
  }

  return result;
}

unint64_t sub_219842570()
{
  result = qword_280E95740;
  if (!qword_280E95740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95740);
  }

  return result;
}

unint64_t sub_2198425C8()
{
  result = qword_280E95748;
  if (!qword_280E95748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95748);
  }

  return result;
}

uint64_t sub_21984262C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v20 = a3;
  v21 = a2;
  sub_218AF3D94();
  MEMORY[0x28223BE20](v3 - 8);
  sub_219842A98(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  sub_219842A98(0, &qword_280EE4B28, MEMORY[0x277D6DF88]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  sub_218953A84();
  v14 = v13;
  v15 = sub_2186D7898(&qword_280EE58A0, sub_218953A84);
  v16 = sub_2186D7898(&qword_280EE58A8, sub_218953A84);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v14, v15, v16);
  type metadata accessor for SearchSectionDescriptor();
  type metadata accessor for SearchModel(0);
  sub_2186D7898(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
  sub_2186D7898(&qword_280EDF480, type metadata accessor for SearchModel);
  sub_219BEB2D4();
  sub_219BE85C4();
  (*(v5 + 8))(v7, v19);
  v21(v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_219842974(uint64_t a1)
{
  v2 = sub_218E154D0();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2198429B4()
{
  result = qword_27CC1FF60;
  if (!qword_27CC1FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF60);
  }

  return result;
}

void sub_219842A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor();
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D7898(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
    v8[3] = sub_2186D7898(&qword_280EDF480, type metadata accessor for SearchModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219842BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v79 = a5;
  v80 = a4;
  v75 = a3;
  v86 = a2;
  v91 = a1;
  v66 = sub_219BE09E4();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BDF104();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_219844950(0, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v59 - v9;
  v10 = sub_219BE0724();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219844950(0, &unk_27CC15A90, MEMORY[0x277D6E130], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v59 - v13;
  v14 = sub_219BDF274();
  MEMORY[0x28223BE20](v14 - 8);
  v71 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BDEEB4();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_219BE0D44();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDF0E4();
  v84 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF2B24();
  swift_getObjectType();
  sub_219BF67F4();
  swift_unknownObjectRelease();
  sub_219844950(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v87 = v21;
  v22 = sub_219BDCD44();
  v23 = *(v22 - 8);
  v88 = *(v23 + 72);
  v24 = *(v23 + 80);
  v25 = (v24 + 32) & ~v24;
  v26 = swift_allocObject();
  v89 = xmmword_219C09BA0;
  *(v26 + 16) = xmmword_219C09BA0;
  v27 = *MEMORY[0x277CEAD18];
  v81 = *(v23 + 104);
  v81(v26 + v25, v27, v22);
  v90 = "likedTracker.swift";
  sub_219844B00(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  sub_219BDCCC4();

  (*(v84 + 8))(v20, v18);
  sub_219BF2B24();
  swift_getObjectType();
  v28 = v67;
  sub_219BF6834();
  swift_unknownObjectRelease();
  v84 = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = v89;
  v85 = v27;
  v82 = v22;
  v83 = v23 + 104;
  v30 = v22;
  v31 = v81;
  v81(v29 + v25, v27, v30);
  sub_219844B00(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v32 = v68;
  sub_219BDCCC4();

  (*(v69 + 8))(v28, v32);
  if (v75)
  {
    v33 = v70;
    sub_219BE8304();
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v70;
  }

  v35 = sub_219BE89F4();
  (*(*(v35 - 8) + 56))(v33, v34, 1, v35);
  sub_219BDF284();
  v36 = v72;
  sub_219BDEEA4();
  v37 = swift_allocObject();
  *(v37 + 16) = v89;
  v38 = v82;
  v31(v37 + v25, v85, v82);
  sub_219844B00(&unk_27CC15AA0, MEMORY[0x277D2D740]);
  v39 = v74;
  sub_219BDCCC4();

  (*(v73 + 8))(v36, v39);
  sub_219BF2B24();
  swift_getObjectType();
  v40 = v76;
  sub_219BF6824();
  swift_unknownObjectRelease();
  v41 = v77;
  v42 = v78;
  if ((*(v77 + 48))(v40, 1, v78) == 1)
  {
    sub_2198449B4(v40, &qword_280EE8330, MEMORY[0x277D2E738]);
    v43 = v85;
  }

  else
  {
    v44 = v38;
    v45 = v60;
    (*(v41 + 32))(v60, v40, v42);
    v46 = swift_allocObject();
    *(v46 + 16) = v89;
    v43 = v85;
    v31(v46 + v25, v85, v44);
    sub_219844B00(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v41 + 8))(v45, v42);
  }

  v47 = [sub_219BF2B24() sourceChannel];
  swift_unknownObjectRelease();
  if (v47)
  {
    v48 = v61;
    sub_219BE01F4();
    v49 = swift_allocObject();
    *(v49 + 16) = v89;
    v50 = v82;
    v51 = v81;
    v81(v49 + v25, v43, v82);
    sub_219844B00(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v52 = v63;
    sub_219BDCCC4();

    (*(v62 + 8))(v48, v52);
    v53 = v64;
    sub_219BE01E4();
    v54 = swift_allocObject();
    *(v54 + 16) = v89;
    v51(v54 + v25, v85, v50);
    sub_219844B00(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v55 = v66;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v65 + 8))(v53, v55);
  }

  if (v79)
  {
    sub_219BDFAC4();
    v56 = &unk_280EE8600;
    v57 = MEMORY[0x277D2DF20];
  }

  else
  {
    sub_219BE01C4();
    v56 = &unk_280EE8488;
    v57 = MEMORY[0x277D2E3A8];
  }

  sub_219844B00(v56, v57);
  memset(v92, 0, sizeof(v92));
  sub_219BDCCE4();
  return sub_218806FD0(v92);
}

uint64_t sub_219843898(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a4;
  sub_219844950(0, &unk_280E902E0, MEMORY[0x277D33AE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_219BF2B34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - v18;
  v20 = *a2;
  sub_219843BD8(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_2198449B4(v12, &unk_280E902E0, MEMORY[0x277D33AE0]);
  }

  v36 = a6;
  v22 = *(v14 + 32);
  v22(v19, v12, v13);
  if (a3)
  {
    v23 = sub_219BE82D4();
    if (v23)
    {
      if (v20 == 2)
      {
        (*(v14 + 8))(v19, v13);
      }

      v35 = v23;
      v31 = sub_219BF2B04();
      v34 = v24;
      (*(v14 + 16))(v17, v19, v13);
      v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v33 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      v22((v26 + v25), v17, v13);
      v27 = v32;
      *(v26 + v33) = a3;
      v28 = v26 + v27;
      *v28 = v38;
      v29 = v20 & 1;
      v30 = v34;
      *(v28 + 8) = v29;

      if (v30)
      {
        sub_219BDD1B4();
      }

      else
      {
        sub_219BDD154();
      }
    }
  }

  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_219843BD8(uint64_t a1, uint64_t a2)
{
  sub_219844950(0, &unk_280E902E0, MEMORY[0x277D33AE0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219843C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v79 = a5;
  v80 = a4;
  v75 = a3;
  v86 = a2;
  v91 = a1;
  v66 = sub_219BE09E4();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BDF104();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_219844950(0, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v59 - v9;
  v10 = sub_219BE0724();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219844950(0, &unk_27CC15A90, MEMORY[0x277D6E130], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v59 - v13;
  v14 = sub_219BDF274();
  MEMORY[0x28223BE20](v14 - 8);
  v71 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BDEEB4();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_219BE0D44();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDF0E4();
  v84 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF2B24();
  swift_getObjectType();
  sub_219BF67F4();
  swift_unknownObjectRelease();
  sub_219844950(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v87 = v21;
  v22 = sub_219BDCD44();
  v23 = *(v22 - 8);
  v88 = *(v23 + 72);
  v24 = *(v23 + 80);
  v25 = (v24 + 32) & ~v24;
  v26 = swift_allocObject();
  v89 = xmmword_219C09BA0;
  *(v26 + 16) = xmmword_219C09BA0;
  v27 = *MEMORY[0x277CEAD18];
  v81 = *(v23 + 104);
  v81(v26 + v25, v27, v22);
  v90 = "likedTracker.swift";
  sub_219844B00(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  sub_219BDCCC4();

  (*(v84 + 8))(v20, v18);
  sub_219BF2B24();
  swift_getObjectType();
  v28 = v67;
  sub_219BF6834();
  swift_unknownObjectRelease();
  v84 = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = v89;
  v85 = v27;
  v82 = v22;
  v83 = v23 + 104;
  v30 = v22;
  v31 = v81;
  v81(v29 + v25, v27, v30);
  sub_219844B00(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v32 = v68;
  sub_219BDCCC4();

  (*(v69 + 8))(v28, v32);
  if (v75)
  {
    v33 = v70;
    sub_219BE8304();
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v70;
  }

  v35 = sub_219BE89F4();
  (*(*(v35 - 8) + 56))(v33, v34, 1, v35);
  sub_219BDF284();
  v36 = v72;
  sub_219BDEEA4();
  v37 = swift_allocObject();
  *(v37 + 16) = v89;
  v38 = v82;
  v31(v37 + v25, v85, v82);
  sub_219844B00(&unk_27CC15AA0, MEMORY[0x277D2D740]);
  v39 = v74;
  sub_219BDCCC4();

  (*(v73 + 8))(v36, v39);
  sub_219BF2B24();
  swift_getObjectType();
  v40 = v76;
  sub_219BF6824();
  swift_unknownObjectRelease();
  v41 = v77;
  v42 = v78;
  if ((*(v77 + 48))(v40, 1, v78) == 1)
  {
    sub_2198449B4(v40, &qword_280EE8330, MEMORY[0x277D2E738]);
    v43 = v85;
  }

  else
  {
    v44 = v38;
    v45 = v60;
    (*(v41 + 32))(v60, v40, v42);
    v46 = swift_allocObject();
    *(v46 + 16) = v89;
    v43 = v85;
    v31(v46 + v25, v85, v44);
    sub_219844B00(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v41 + 8))(v45, v42);
  }

  v47 = [sub_219BF2B24() sourceChannel];
  swift_unknownObjectRelease();
  if (v47)
  {
    v48 = v61;
    sub_219BE01F4();
    v49 = swift_allocObject();
    *(v49 + 16) = v89;
    v50 = v82;
    v51 = v81;
    v81(v49 + v25, v43, v82);
    sub_219844B00(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v52 = v63;
    sub_219BDCCC4();

    (*(v62 + 8))(v48, v52);
    v53 = v64;
    sub_219BE01E4();
    v54 = swift_allocObject();
    *(v54 + 16) = v89;
    v51(v54 + v25, v85, v50);
    sub_219844B00(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v55 = v66;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v65 + 8))(v53, v55);
  }

  if (v79)
  {
    sub_219BE0374();
    v56 = &unk_27CC1FF70;
    v57 = MEMORY[0x277D2E4D0];
  }

  else
  {
    sub_219BE0764();
    v56 = &unk_27CC1FF68;
    v57 = MEMORY[0x277D2E780];
  }

  sub_219844B00(v56, v57);
  memset(v92, 0, sizeof(v92));
  sub_219BDCCE4();
  return sub_218806FD0(v92);
}

void sub_219844950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2198449B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219844950(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219844A3C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_219BF2B34() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = (v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = *(v8 + 8);

  return a2(a1, v2 + v5, v7, v9, v10);
}

uint64_t sub_219844B00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219844B48(uint64_t a1)
{
  sub_218748148(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(v1 + 112);
  sub_219845048(a1, &v40);
  v11 = v40;
  v12 = *(v1 + 64);
  v13 = sub_219BDFA44();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_218718690(v1 + 72, v39);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v10;
  sub_2187B171C(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    *&v32 = v11;
    v14 = sub_2194DA78C(v34);
    v16 = v15;
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_2187B1CC0(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = v11;
  v33 = sub_219BDD274();
  *&v32 = v12;
  sub_2189B4E2C(v9, v7);
  sub_2187B171C(v39, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = v11;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  sub_2189B4EAC(v7, v22 + v19);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v14;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v16);
  sub_2187B1CC0(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_219845F0C(v30, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_218806FD0(&v32);
  return sub_218932F9C(v29);
}

uint64_t sub_219845048@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BF04A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_219BDD944();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SearchRouteModel();
  MEMORY[0x28223BE20](v11);
  v13 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219845FC8(a1, v13, type metadata accessor for SearchRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218CFD610();
      v29 = &v13[*(v28 + 48)];
      v30 = *v29;
      v31 = v29[8];
      (*(v5 + 32))(v7, v13, v4);
      v32 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
      v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
      v34 = OBJC_IVAR___TSFeedViewContext_presentationReason;
      swift_beginAccess();
      v35 = *&v32[v34];
      *&v32[v34] = v33;

      if ((v31 & 1) == 0)
      {
        v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v37 = OBJC_IVAR___TSFeedViewContext_displayRank;
        swift_beginAccess();
        v38 = *&v32[v37];
        *&v32[v37] = v36;
      }

      v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v40 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
      swift_beginAccess();
      v41 = *&v32[v40];
      *&v32[v40] = v39;

      v42 = sub_219BF0404();
      (*(v5 + 8))(v7, v4);
      result = swift_allocObject();
      *(result + 16) = v42;
      *(result + 24) = v32;
      *(result + 32) = MEMORY[0x277D84F90];
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0;
      *(result + 96) = -1;
      v18 = 0x2000000000000006;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      result = swift_allocObject();
      v16 = *(v13 + 3);
      *(result + 48) = *(v13 + 2);
      *(result + 64) = v16;
      *(result + 80) = *(v13 + 4);
      *(result + 90) = *(v13 + 74);
      v17 = *(v13 + 1);
      *(result + 16) = *v13;
      *(result + 32) = v17;
      *(result + 106) = 1;
      v18 = 0x9000000000000002;
    }

    else
    {
      v43 = *(v13 + 4);
      v44 = v13[40];
      result = swift_allocObject();
      v47[56] = v44;
      v45 = *(v13 + 1);
      *(result + 16) = *v13;
      *(result + 32) = v45;
      *(result + 48) = v43;
      *(result + 56) = v44;
      *(result + 63) = 0;
      *(result + 61) = 0;
      *(result + 57) = 0;
      *(result + 64) = MEMORY[0x277D84F90];
      v18 = 0x5000000000000000;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    v46 = *v13;
    result = swift_allocObject();
    *(result + 16) = v46;
    v18 = 0x7000000000000004;
LABEL_12:
    v27 = result | v18;
    goto LABEL_13;
  }

  sub_218A38F7C(v13, v10);
  sub_2187B2C48();
  v20 = v19;
  v21 = swift_allocBox();
  v23 = v22;
  v24 = *(v20 + 48);
  sub_2187B2DA0();
  v26 = *(v25 + 48);
  sub_219845FC8(v10, v23, MEMORY[0x277D2FB40]);
  *(v23 + v26) = MEMORY[0x277D84F90];
  result = sub_219845F68(v10, MEMORY[0x277D2FB40]);
  *(v23 + v24) = &unk_282A21D58;
  v27 = v21 | 2;
LABEL_13:
  *a2 = v27;
  return result;
}

uint64_t sub_2198454D4(uint64_t a1)
{
  sub_21896F9B8();
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for NewsActivity2.Article(0);
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748148(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v52 = sub_219BDD944();
  v10 = MEMORY[0x28223BE20](v52);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v48 - v12;
  sub_218748148(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = *(v1 + 112);
  sub_219845048(a1, &v63);
  v20 = v63;
  v21 = *(v1 + 64);
  v22 = sub_219BDFA44();
  v23 = *(*(v22 - 8) + 56);
  v57 = v18;
  v23(v18, 1, 1, v22);
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v60[5] = v19;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  v24 = sub_219BDC8C4();

  v25 = v20;
  if ((v24 & 1) == 0)
  {
    goto LABEL_6;
  }

  v26 = (v20 >> 58) & 0x3C | (v20 >> 1) & 3;
  if ((v26 - 9) < 0x34 || (v36 = 1 << v26, (v36 & 0xF9) != 0))
  {
    (*(v5 + 56))(v9, 1, 1, v55);
    sub_219845F0C(v9, qword_280EE0178, type metadata accessor for NewsActivity2.Article);
LABEL_6:
    v60[4] = v20;
    v60[3] = sub_219BDD274();
    v60[0] = v21;
    v27 = v57;
    sub_2189B4E2C(v57, v16);
    sub_2187B171C(v61, v58, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v28 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v21;
    sub_2189B4EAC(v16, v30 + v28);
    v31 = v30 + v29;
    v32 = v58[1];
    *v31 = v58[0];
    *(v31 + 16) = v32;
    *(v31 + 32) = v59;
    v33 = (v30 + ((v29 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v33 = 0;
    v33[1] = 0;
    sub_2186CF94C();
    sub_2189B4DD4();
    swift_retain_n();
    v34 = sub_219BEB454();

    sub_2187B1CC0(v61, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_219845F0C(v27, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_218806FD0(v60);
    sub_218932F9C(v25);
    return v34;
  }

  if ((v36 & 6) != 0)
  {
    sub_2187B2C48();
  }

  v37 = swift_projectBox();
  sub_219845FC8(v37, v9, type metadata accessor for NewsActivity2.Article);
  (*(v5 + 56))(v9, 0, 1, v55);
  v38 = v54;
  sub_219845FC8(v9, v54, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0();

  v39 = v53;
  sub_218A38F7C(v38, v53);
  sub_219845F68(v9, type metadata accessor for NewsActivity2.Article);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_219845F68(v39, MEMORY[0x277D2FB40]);
    goto LABEL_6;
  }

  v40 = swift_projectBox();
  v41 = v49;
  sub_219845FC8(v40, v49, sub_21896F9B8);
  v42 = v51;
  sub_218A38F7C(v41 + *(v50 + 48), v51);
  __swift_destroy_boxed_opaque_existential_1(v41);

  sub_2186C66AC();
  v43 = sub_219BF6F44();
  sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C09BA0;
  v45 = sub_219BDD8C4();
  v47 = v46;
  *(v44 + 56) = MEMORY[0x277D837D0];
  *(v44 + 64) = sub_2186FC3BC();
  *(v44 + 32) = v45;
  *(v44 + 40) = v47;
  sub_219BF6214();
  sub_219BE5314();

  sub_219845F68(v42, MEMORY[0x277D2FB40]);
  sub_2187B1CC0(v61, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_219845F0C(v57, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_218932F9C(v25);
  return 0;
}

uint64_t sub_219845CD4()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219845D60(void *a1)
{
  sub_218748148(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_219845E40(void *a1)
{
  sub_218748148(0, &qword_280EE8610, MEMORY[0x277D2DED0]);

  return sub_2194DAF24(a1);
}

uint64_t sub_219845F0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218748148(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219845F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219845FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219846064(uint64_t a1)
{
  v2 = sub_219847D7C(&qword_27CC20010, type metadata accessor for MyMagazinesMagazineFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2198461C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  sub_2186F97D4(0);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEF8A4();
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x28223BE20](v5);
  v89 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198479D8(0);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v91);
  v97 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF554();
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v96 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v83 - v13;
  sub_219847BE0(0, &qword_27CC1FFA8, MEMORY[0x277D844C8]);
  v16 = v15;
  v98 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = v83 - v17;
  v19 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v19);
  v21 = (v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = sub_219BDB5E4();
  v26 = v25;

  v21[2] = v24;
  v21[3] = v26;
  v101 = v26;
  v27 = objc_opt_self();
  v100 = [v27 labelColor];
  v21[4] = v100;
  v99 = [v27 labelColor];
  v21[5] = v99;
  v28 = a1[3];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_219847A0C();
  v29 = v102;
  sub_219BF7B34();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v103);
  }

  v30 = v96;
  v31 = v97;
  v102 = v21;
  v32 = v19;
  LOBYTE(v104) = 0;
  v33 = v18;
  v34 = sub_219BF76F4();
  v36 = v102;
  *v102 = v34;
  v36[1] = v37;
  LOBYTE(v104) = 1;
  v38 = sub_219BF7694();
  v40 = v98;
  v85 = v32;
  v36[6] = v38;
  v36[7] = v39;
  LOBYTE(v104) = 2;
  v84 = 0;
  v41 = sub_219BF7694();
  v86 = 0;
  v36[8] = v41;
  v36[9] = v42;
  LOBYTE(v104) = 3;
  v43 = sub_219847D7C(&unk_280E91390, MEMORY[0x277D32648]);
  v44 = v16;
  v45 = v14;
  v46 = v95;
  v47 = v44;
  v83[1] = v43;
  v48 = v86;
  sub_219BF7734();
  v86 = v48;
  if (v48)
  {
    (*(v40 + 8))(v33, v47);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    goto LABEL_12;
  }

  v54 = v36 + v85[10];
  v83[0] = *(v94 + 32);
  (v83[0])(v54, v45, v46);
  LOBYTE(v104) = 4;
  v55 = v47;
  v56 = v86;
  sub_219BF7734();
  v86 = v56;
  if (v56)
  {
    (*(v98 + 8))(v33, v47);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v49 = 1;
    goto LABEL_12;
  }

  v57 = v85;
  (v83[0])(v36 + v85[11], v30, v46);
  LOBYTE(v104) = 5;
  v58 = v86;
  sub_219BF7714();
  v86 = v58;
  if (v58)
  {
    v60 = v98;
LABEL_11:
    (*(v60 + 8))(v33, v55);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v49 = 1;
    v50 = 1;
    goto LABEL_12;
  }

  *(v36 + v57[12]) = v59;
  LOBYTE(v104) = 6;
  sub_219847D7C(&qword_280EA30B0, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  v61 = v86;
  sub_219BF7734();
  v86 = v61;
  v60 = v98;
  if (v61)
  {
    goto LABEL_11;
  }

  sub_219847AB4(v31, v36 + v57[13], type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  sub_21982C0EC();
  v70 = v69;
  LOBYTE(v104) = 7;
  sub_219847D7C(&unk_280EE67B0, sub_21982C0EC);
  v71 = v90;
  v72 = v86;
  sub_219BF76E4();
  v86 = v72;
  if (v72)
  {
    (*(v60 + 8))(v33, v55);
    v52 = 0;
    v53 = 0;
    v49 = 1;
    v50 = 1;
    v51 = 1;
    goto LABEL_12;
  }

  v96 = v33;
  v97 = v55;
  v73 = *(v70 - 8);
  if ((*(v73 + 48))(v71, 1, v70) == 1)
  {
    sub_219847B80(v71, sub_2198479D8);
    v74 = 0;
  }

  else
  {
    sub_219BE3384();
    v74 = v104;
    (*(v73 + 8))(v71, v70);
  }

  *(v102 + v57[14]) = v74;
  v105 = 8;
  sub_219847A60();
  v75 = v96;
  v76 = v97;
  v77 = v86;
  sub_219BF7734();
  v86 = v77;
  if (v77)
  {
    (*(v60 + 8))(v75, v76);
LABEL_37:
    v53 = 0;
    v49 = 1;
    v50 = 1;
    v51 = 1;
    v52 = 1;
    goto LABEL_12;
  }

  *(v102 + v85[15]) = v104;
  LOBYTE(v104) = 9;
  sub_219847D7C(&qword_280E912B0, MEMORY[0x277D32770]);
  v78 = v86;
  sub_219BF7734();
  v86 = v78;
  if (v78)
  {
    (*(v98 + 8))(v96, v97);
    goto LABEL_37;
  }

  (*(v92 + 32))(v102 + v32[16], v89, v93);
  sub_219BEE5D4();
  LOBYTE(v104) = 10;
  sub_219847D7C(&qword_280E91B70, MEMORY[0x277D32040]);
  v79 = v86;
  sub_219BF76E4();
  v86 = v79;
  if (!v79)
  {
    v80 = v102;
    sub_219847AB4(v88, v102 + v32[17], sub_2186F97D4);
    sub_2186DEEEC(0, &qword_280E8EE20, MEMORY[0x277D83940]);
    v105 = 11;
    sub_218753294(&qword_280E8EDD0);
    v81 = v96;
    v82 = v97;
    sub_219BF7674();
    (*(v98 + 8))(v81, v82);
    *(v80 + v32[18]) = v104;
    sub_219847B1C(v80, v87);
    __swift_destroy_boxed_opaque_existential_1(v103);
    return sub_219847B80(v80, type metadata accessor for MyMagazinesMagazineFeedGroup);
  }

  (*(v98 + 8))(v96, v97);
  v49 = 1;
  v50 = 1;
  v51 = 1;
  v52 = 1;
  v53 = 1;
LABEL_12:
  v62 = v84;
  __swift_destroy_boxed_opaque_existential_1(v103);
  v63 = v102;

  if (!v62)
  {
  }

  v64 = v85;
  if (v49)
  {
    v65 = v95;
    v66 = *(v94 + 8);
    result = v66(v63 + v85[10], v95);
    if (v50)
    {
      result = v66(v63 + v64[11], v65);
LABEL_19:
      if ((v51 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }
  }

  else if (v50)
  {
    result = (*(v94 + 8))(v63 + v85[11], v95);
    goto LABEL_19;
  }

  if (!v51)
  {
LABEL_20:
    v67 = v93;
    if (v52)
    {
      goto LABEL_21;
    }

LABEL_25:
    v68 = v92;
    if (!v53)
    {
      return result;
    }

    return (*(v68 + 8))(v63 + v64[16], v67);
  }

LABEL_24:
  result = sub_219847B80(v63 + v64[13], type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  v67 = v93;
  if ((v52 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  result = swift_unknownObjectRelease();
  v68 = v92;
  if ((v53 & 1) == 0)
  {
    return result;
  }

  return (*(v68 + 8))(v63 + v64[16], v67);
}

uint64_t sub_219846EFC(void *a1)
{
  v2 = v1;
  sub_2198479D8(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219847BE0(0, &unk_27CC1FFD0, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219847A0C();
  sub_219BF7B44();
  v20 = v2;
  LOBYTE(v23) = 0;
  v22 = v9;
  v13 = v21;
  sub_219BF77F4();
  if (v13)
  {
    return (*(v10 + 8))(v12, v22);
  }

  v21 = v10;
  v18[1] = v5;
  v19 = v7;
  v15 = v20;
  v23 = *(v20 + 48);
  v24 = 1;
  sub_2186DEEEC(0, &qword_280E8F860, MEMORY[0x277D83D88]);
  sub_21897A7C0();
  sub_219BF7834();
  v23 = *(v15 + 64);
  v24 = 2;
  sub_219BF7834();
  v16 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  LOBYTE(v23) = 3;
  sub_219BEF554();
  sub_219847D7C(&qword_280E913A0, MEMORY[0x277D32648]);
  sub_219BF7834();
  LOBYTE(v23) = 4;
  sub_219BF7834();
  LOBYTE(v23) = 5;
  sub_219BF7814();
  LOBYTE(v23) = 6;
  type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  sub_219847D7C(&qword_280EA30B8, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  sub_219BF7834();
  sub_2186D8870();
  swift_unknownObjectRetain();
  v17 = v19;
  sub_219BE33F4();
  LOBYTE(v23) = 7;
  sub_219847CCC(&unk_27CC1FFE0, sub_2198479D8, sub_219847C44);
  sub_219BF7834();
  sub_219847B80(v17, sub_2198479D8);
  LOBYTE(v23) = *(v15 + *(v16 + 60));
  v24 = 8;
  sub_219847C78();
  sub_219BF7834();
  LOBYTE(v23) = 9;
  sub_219BEF8A4();
  sub_219847D7C(&unk_280E912B8, MEMORY[0x277D32770]);
  sub_219BF7834();
  LOBYTE(v23) = 10;
  sub_2186F97D4(0);
  sub_219847CCC(&unk_27CC20000, sub_2186F97D4, sub_219847D48);
  sub_219BF7834();
  *&v23 = *(v20 + *(v16 + 72));
  v24 = 11;
  sub_2186D0AF8();
  sub_21906C094();
  sub_219BF7834();
  return (*(v21 + 8))(0, v22);
}

uint64_t sub_219847524(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7845676E6974756DLL;
    v7 = 0x6E696C6F6F706572;
    if (a1 != 10)
    {
      v7 = 0xD00000000000001BLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x73626F6E6BLL;
    v9 = 6775156;
    if (a1 != 7)
    {
      v9 = 0xD000000000000010;
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
    v1 = 0x696669746E656469;
    v2 = 0x6973695664696170;
    v3 = 0xD000000000000016;
    if (a1 != 4)
    {
      v3 = 0x746C754D6B6E6172;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x62755370756F7267;
    if (a1 != 1)
    {
      v4 = 0x6E656449646E696BLL;
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

uint64_t sub_2198476F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_219847524(*a1);
  v5 = v4;
  if (v3 == sub_219847524(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_219847778()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219847524(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2198477DC()
{
  sub_219847524(*v0);
  sub_219BF5524();
}

uint64_t sub_219847830()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219847524(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219847890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219847EDC();
  *a1 = result;
  return result;
}

uint64_t sub_2198478C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219847524(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_219847908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219847EDC();
  *a1 = result;
  return result;
}

uint64_t sub_219847930(uint64_t a1)
{
  v2 = sub_219847A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21984796C(uint64_t a1)
{
  v2 = sub_219847A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219847A0C()
{
  result = qword_27CC1FFB0;
  if (!qword_27CC1FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FFB0);
  }

  return result;
}

unint64_t sub_219847A60()
{
  result = qword_27CC1FFC0;
  if (!qword_27CC1FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FFC0);
  }

  return result;
}

uint64_t sub_219847AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219847B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219847B80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219847BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219847A0C();
    v7 = a3(a1, &type metadata for MyMagazinesMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219847C78()
{
  result = qword_27CC1FFF0;
  if (!qword_27CC1FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FFF0);
  }

  return result;
}

uint64_t sub_219847CCC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_219847D7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219847DD8()
{
  result = qword_27CC20018;
  if (!qword_27CC20018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20018);
  }

  return result;
}

unint64_t sub_219847E30()
{
  result = qword_27CC20020;
  if (!qword_27CC20020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20020);
  }

  return result;
}

unint64_t sub_219847E88()
{
  result = qword_27CC20028;
  if (!qword_27CC20028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20028);
  }

  return result;
}

uint64_t sub_219847EDC()
{
  v0 = sub_219BF7614();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_219847F3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TopicMagazineFeedGroupEmitter()
{
  result = qword_280EAE060;
  if (!qword_280EAE060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219847FE4()
{
  sub_2186E60B0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TopicMagazineFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_219BEFF74();
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, &qword_280E910C0);
          if (v4 <= 0x3F)
          {
            sub_2186C6148(319, &qword_280E8DE40);
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

uint64_t sub_21984810C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TopicMagazineFeedGroupEmitter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = v1;
  sub_218831BDC(0, &qword_280EC4780);
  sub_219BE3204();
  v30 = type metadata accessor for TopicMagazineFeedGroupEmitter;
  sub_21984D74C(v1, v7, type metadata accessor for TopicMagazineFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v29 = v8 + v6;
  v9 = (v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v28 = v8;
  sub_219848D74(v7, v10 + v8);
  *(v10 + v9) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_219848DD8;
  *(v11 + 24) = v10;

  v12 = sub_219BE2E54();
  sub_219848ED0();
  sub_219BE2F64();

  sub_21984D74C(v2, v7, v30);
  v13 = swift_allocObject();
  sub_219848D74(v7, v13 + v8);
  *(v13 + v9) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21984901C;
  *(v14 + 24) = v13;

  v15 = sub_219BE2E54();
  sub_21984A8F0(0, &qword_280E90830, MEMORY[0x277D33470]);
  sub_219BE2F64();

  v16 = v2;
  v17 = v30;
  sub_21984D74C(v2, v7, v30);
  v18 = swift_allocObject();
  v19 = v28;
  sub_219848D74(v7, v18 + v28);
  *(v18 + v9) = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21984A298;
  *(v20 + 24) = v18;

  v21 = sub_219BE2E54();
  sub_21984A8F0(0, &qword_280ED5D08, type metadata accessor for MagazineFeedGroup);
  sub_219BE2F74();

  v22 = sub_219BE2E54();
  sub_2186F9390(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
  sub_219BE2F74();

  sub_21984D74C(v16, v7, v17);
  v23 = swift_allocObject();
  sub_219848D74(v7, v23 + v19);
  v24 = sub_219BE2E54();
  v25 = sub_219BE3064();

  return v25;
}

uint64_t sub_2198485B8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  sub_2186E60B0();
  v6 = v5;
  v7 = swift_allocBox();
  result = (*(*(v6 - 8) + 16))(v8, v2 + *(a1 + 20), v6);
  *a2 = v7 | 0x9000000000000000;
  return result;
}

uint64_t sub_219848644@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for TopicMagazineFeedGroupKnobs();
  a2[4] = sub_219847F3C(&qword_280EB6210, type metadata accessor for TopicMagazineFeedGroupKnobs);
  a2[5] = sub_219847F3C(&qword_280EB6218, type metadata accessor for TopicMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21984D74C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for TopicMagazineFeedGroupKnobs);
}

uint64_t sub_219848708()
{
  sub_2186E3B14();
  v1 = sub_219BEE964();
  sub_2191EE154(MEMORY[0x277D84F90]);
  return v1;
}

uint64_t sub_2198487A8@<X0>(uint64_t *a1@<X8>)
{
  sub_218C71780();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E60B0();

  v3 = sub_219BEDCA4();
  v4 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21984CF24(inited + 32, &qword_280E8F6E0, v4, MEMORY[0x277D84F70] + 8, sub_218831BDC);
  sub_2186E4E90(0, &qword_280EE78D0, type metadata accessor for TopicMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v6;
  a1[4] = sub_21984D7B4();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21984891C()
{
  sub_219847F3C(&qword_280EAE088, type metadata accessor for TopicMagazineFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219848AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicMagazineFeedGroupEmitter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for MagazineFeedPool();
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_219BE2F64();

  sub_219BE3204();
  sub_21984D74C(a2, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopicMagazineFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_219848D74(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v10 = sub_219BE2E54();
  sub_219BE3054();

  v11 = sub_219BE31C4();

  return v11;
}

uint64_t sub_219848CDC()
{
  sub_2186E4E90(0, &unk_27CC20050, sub_219848ED0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_219848D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicMagazineFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219848E80(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6, *(a1 + 80));
}

void sub_219848ED0()
{
  if (!qword_27CC20048)
  {
    sub_219BEFB64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20048);
    }
  }
}

size_t sub_219848F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2198490C4(a4, a1);
  if (!v4)
  {
    *(swift_allocObject() + 16) = a2;

    v7 = sub_219BE2E54();
    sub_21984A8F0(0, &qword_280E90830, MEMORY[0x277D33470]);
    v8 = sub_219BE2F74();

    return v8;
  }

  return result;
}

size_t sub_21984901C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TopicMagazineFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_219848F3C(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

size_t sub_2198490C4(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2186E4E90(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v104 = v92 - v5;
  sub_2186E4E90(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = v92 - v7;
  v128 = v3;
  sub_2186E4E90(0, &unk_280E919B0, sub_2186E3B14, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = v92 - v9;
  v103 = sub_219BF2AB4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BF2034();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BF3C84();
  v133 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = (v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BF3E84();
  v121 = *(v13 - 8);
  v122 = v13;
  MEMORY[0x28223BE20](v13);
  v120 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_218A42400;
  sub_2186E4E90(0, &unk_280E8FF30, sub_218A42400, v3);
  MEMORY[0x28223BE20](v15 - 8);
  v116 = v92 - v16;
  v129 = MEMORY[0x277D2D4E0];
  sub_2186E4E90(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v17 - 8);
  v126 = v92 - v18;
  v19 = type metadata accessor for TopicMagazineFeedGroupConfigData();
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v114 = v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v92 - v23;
  v25 = sub_219BF1934();
  v127 = v25;
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v111 = v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v92 - v30;
  v115 = v92 - v30;
  MEMORY[0x28223BE20](v29);
  v124 = v92 - v32;
  v119 = type metadata accessor for TopicMagazineFeedGroupEmitter();
  v108 = v119[5];
  sub_2186E60B0();
  v107 = v33;
  sub_219BEDD14();
  v34 = *(v20 + 44);
  v106 = *(v26 + 16);
  v106(v31, &v24[v34], v25);
  v105 = type metadata accessor for TopicMagazineFeedGroupConfigData;
  sub_21984CFE0(v24, type metadata accessor for TopicMagazineFeedGroupConfigData);
  v131 = 0;
  v132 = 0xE000000000000000;
  sub_219BF7314();

  v131 = 0x616D2D6369706F74;
  v132 = 0xEF2D656E697A6167;
  v35 = [sub_219BEFB34() identifier];
  swift_unknownObjectRelease();
  v36 = sub_219BF5414();
  v38 = v37;

  MEMORY[0x21CECC330](v36, v38);

  v112 = v132;
  v113 = v131;
  v123 = a2;
  v39 = [sub_219BEFB34() identifier];
  swift_unknownObjectRelease();
  v110 = sub_219BF5414();
  v109 = v40;

  v41 = sub_219BEC004();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v94 = v41;
  v93 = v43;
  v92[1] = v42 + 56;
  (v43)(v126, 1, 1);
  v44 = v114;
  sub_219BEDD14();
  v45 = &v44[*(v20 + 44)];
  v46 = v44;
  v47 = v111;
  v48 = v127;
  v106(v111, v45, v127);
  sub_21984CFE0(v46, v105);
  v49 = sub_219BF1714();
  v50 = *(v26 + 8);
  v50(v47, v48);
  sub_219BEFB34();
  sub_2186E4E90(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_219C09EC0;
  swift_getObjectType();
  sub_21984CC54();
  sub_21984CDBC();
  swift_unknownObjectRelease();
  v131 = v49;
  sub_2191EED30(v51);
  sub_218A42400(0);
  v53 = v116;
  (*(*(v52 - 8) + 56))(v116, 1, 1, v52);
  v54 = v126;
  v55 = v115;
  sub_219BF1764();

  v56 = v53;
  v57 = v128;
  sub_21984CF24(v56, &unk_280E8FF30, v130, v128, sub_2186E4E90);
  sub_21984CF24(v54, &qword_280EE33F0, v129, v57, sub_2186E4E90);
  v116 = (v26 + 8);
  v50(v55, v127);
  v58 = sub_219BEFB44();
  if (v58 >> 62)
  {
    v91 = v58;
    v59 = sub_219BF7214();
    v58 = v91;
  }

  else
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v117;
  v61 = v118;
  v114 = v50;
  if (v59)
  {
    v62 = v58;
    v131 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v59 & ~(v59 >> 63), 0);
    if (v59 < 0)
    {
      __break(1u);
      return result;
    }

    v64 = 0;
    v65 = v131;
    v66 = v62;
    v129 = v62 & 0xC000000000000001;
    v130 = v59;
    LODWORD(v128) = *MEMORY[0x277D34128];
    v67 = (v133 + 104);
    do
    {
      if (v129)
      {
        v68 = MEMORY[0x21CECE0F0](v64, v66);
      }

      else
      {
        v68 = swift_unknownObjectRetain();
      }

      *v60 = v68;
      (*v67)(v60, v128, v61);
      v131 = v65;
      v70 = *(v65 + 16);
      v69 = *(v65 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_218C34A88(v69 > 1, v70 + 1, 1);
        v65 = v131;
      }

      v64 = (v64 + 1);
      *(v65 + 16) = v70 + 1;
      (*(v133 + 32))(v65 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v70, v60, v61);
      v66 = v62;
    }

    while (v130 != v64);
  }

  v71 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v71);
  sub_218F0BB90(v71);
  v72 = v120;
  sub_219BF3E74();
  v73 = (v125 + v119[7]);
  v74 = v73[3];
  v130 = v73[4];
  v133 = v74;
  v129 = __swift_project_boxed_opaque_existential_1(v73, v74);
  sub_2186F8318(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_219C146A0;
  *(v75 + 32) = sub_219BEFB34();
  sub_2186E4E90(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v76 = v121;
  v77 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_219C09BA0;
  (*(v76 + 16))(v78 + v77, v72, v122);
  v93(v126, 1, 1, v94);
  v128 = sub_219A95188(v71);
  sub_219A95188(v71);
  sub_219A951A0(v71);
  sub_219A951B8(v71);
  sub_219A952CC(v71);
  sub_219A952E4(v71);
  sub_219A953F8(v71);
  v79 = v98;
  sub_219BF2024();
  v80 = v119[6];
  sub_2186E3B14();
  v82 = v81;
  v83 = *(v81 - 8);
  v84 = v95;
  (*(v83 + 16))(v95, v125 + v80, v81);
  (*(v83 + 56))(v84, 0, 1, v82);
  v85 = sub_219BF35D4();
  (*(*(v85 - 8) + 56))(v96, 1, 1, v85);
  LOBYTE(v131) = 9;
  sub_2186F9390(0, &qword_280E90058, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v86 = sub_219BF2774();
  (*(*(v86 - 8) + 56))(v104, 1, 1, v86);
  v87 = qword_280E8D920;
  *MEMORY[0x277D30B70];
  if (v87 != -1)
  {
    swift_once();
  }

  qword_280F617C8;
  v88 = v99;
  sub_219BF2A84();
  v89 = v124;
  v90 = sub_219BF2194();
  (*(v102 + 8))(v88, v103);
  (*(v100 + 8))(v79, v101);
  (*(v121 + 8))(v120, v122);
  (v114)(v89, v127);
  return v90;
}

uint64_t sub_21984A198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21984A8F0(0, &qword_280E90830, MEMORY[0x277D33470]);
  v7 = *(v6 + 48);
  v8 = sub_219BF1904();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  *(a3 + v7) = a2;
}

uint64_t sub_21984A248(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_219848ED0();
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_21984A298(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TopicMagazineFeedGroupEmitter() - 8);
  sub_21984A350(*(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a1);
}

uint64_t sub_21984A350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v33 = a1;
  v36 = a3;
  sub_2186E4E90(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = v28 - v4;
  v5 = type metadata accessor for TopicMagazineFeedGroupConfigData();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEF554();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v28[0] = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28[1] = v28 - v13;
  v14 = sub_219BF1904();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = v17;
  v34 = sub_219BED8D4();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for TopicMagazineFeedGroupEmitter() + 20);
  (*(v15 + 16))(v17, v29, v14);
  sub_2186E60B0();
  v21 = v20;
  v22 = v31;
  v29 = sub_219BEDCB4();
  v28[2] = v23;
  sub_219BEDCC4();
  sub_219BEDD14();
  (*(v10 + 16))(v28[0], &v8[*(v6 + 36)], v9);
  sub_21984CFE0(v8, type metadata accessor for TopicMagazineFeedGroupConfigData);
  sub_2186E3B14();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for TopicMagazineFeedGroupKnobs();
  sub_2186F9390(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  sub_219BEEC84();
  v24 = v30;
  sub_219BED854();
  v25 = v36;
  (*(*(v21 - 8) + 16))(v36, v22 + v19, v21);
  v26 = type metadata accessor for TopicMagazineFeedGroup();
  (*(v32 + 32))(v25 + *(v26 + 20), v24, v34);
  type metadata accessor for MagazineFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21984A83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_21984A8F0(0, &qword_280E90830, MEMORY[0x277D33470]);
  v7 = *(a1 + *(v6 + 48));
  sub_21984A8F0(0, &qword_280ED5D08, type metadata accessor for MagazineFeedGroup);
  v9 = *(v8 + 48);
  result = v5(a2, a1, v7);
  *(a2 + v9) = result;
  return result;
}

void sub_21984A8F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21984A954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21984A8F0(0, &qword_280ED5D08, type metadata accessor for MagazineFeedGroup);
  v5 = *(a1 + *(v4 + 48));
  if (*(v5 + 16))
  {
    sub_218FFC5A4();
    v7 = (a2 + *(v6 + 48));
    sub_21984D74C(a1, a2, type metadata accessor for MagazineFeedGroup);
    v7[3] = &type metadata for TopicMagazineFeedGroupEmitter.Cursor;
    *v7 = v5;
    sub_2186F9390(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_21984D74C(a1, a2, type metadata accessor for MagazineFeedGroup);
    sub_2186F9390(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_21984AAE8()
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup();
  sub_218D827D0();
  return sub_219BEF194();
}

void sub_21984AC30(void (*a1)(uint64_t), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a4;
  sub_219848ED0();
  v63 = v15;
  MEMORY[0x28223BE20](v15);
  v64 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TopicMagazineFeedGroupEmitter();
  v66 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v67 = v18;
  v68 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BEFB64();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v65 = a1;
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v70 = a2;
  v24 = *(a6 + 16);
  if (v24)
  {
    v58 = a5;
    v60 = a8;
    v61 = a3;
    v62 = v23;
    v25 = a7;
    v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v57 = *(v20 + 16);
    v57(v22, a6 + v26, v19);
    v27 = *(v25 + 8);
    v59 = v25;

    v29 = sub_2194796A0(v28, v27);
    v30 = sub_219BEFB14();
    LOBYTE(v25) = sub_2190D6964(v30, v29);

    if (v25)
    {
      sub_218B676E8(a6, a6 + v26, 1, (2 * v24) | 1);
      v32 = v31;
      v33 = v64;
      v57(v64, v22, v19);
      *(v33 + *(v63 + 48)) = v32;
      v65(v33);

      sub_21984CFE0(v33, sub_219848ED0);
      (*(v20 + 8))(v22, v19);
    }

    else
    {
      (*(v20 + 8))(v22, v19);
      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      v37 = sub_219BE5314();
      MEMORY[0x28223BE20](v37);
      v38 = v58;
      v39 = v60;
      *(&v56 - 2) = v58;
      *(&v56 - 1) = v39;
      sub_219BE3204();
      v40 = v68;
      sub_21984D74C(v38, v68, type metadata accessor for TopicMagazineFeedGroupEmitter);
      v41 = (*(v66 + 80) + 16) & ~*(v66 + 80);
      v42 = (v67 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = (v42 + 87) & 0xFFFFFFFFFFFFFFF8;
      v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      sub_219848D74(v40, v45 + v41);
      v46 = (v45 + v42);
      v47 = v59;
      v48 = v59[3];
      v46[2] = v59[2];
      v46[3] = v48;
      v46[4] = v47[4];
      v49 = v47[1];
      *v46 = *v47;
      v46[1] = v49;
      *(v45 + v43) = v39;
      v50 = (v45 + v44);
      v51 = v61;
      v52 = v62;
      *v50 = sub_21984CF90;
      v50[1] = v52;
      v53 = (v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8));
      v54 = v69;
      *v53 = v51;
      v53[1] = v54;
      sub_218F0A1CC(v47, v71);

      v55 = sub_219BE2E54();
      sub_219BE2F74();
    }
  }

  else
  {
    v34 = sub_219BEEDD4();
    sub_219847F3C(&qword_280E917E0, MEMORY[0x277D32430]);
    v35 = swift_allocError();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D323C8], v34);

    a3(v35);
  }
}

uint64_t sub_21984B248(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  sub_219848ED0();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEFB64();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  *&v9[*(v7 + 56)] = a2;

  a3(v9);
  return sub_21984CFE0(v9, sub_219848ED0);
}

uint64_t sub_21984B344(uint64_t a1)
{
  v3 = type metadata accessor for TopicMagazineFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_21984D74C(v1, v6, type metadata accessor for TopicMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_219848D74(v6, v8 + v7);
  v9 = sub_219BE2E54();
  sub_2189FE7E4();
  sub_219BE2F64();

  sub_21984D74C(v15[1], v6, type metadata accessor for TopicMagazineFeedGroupEmitter);
  v10 = swift_allocObject();
  sub_219848D74(v6, v10 + v7);
  *(v10 + ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v11 = sub_219BE2E54();
  sub_219BF02B4();
  sub_219BE2F64();

  v12 = sub_219BE2E54();
  v13 = sub_219BE2F64();

  return v13;
}

void sub_21984B5AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), void (*a6)(char *, uint64_t), void (*a7)(void *), void (*a8)(void *))
{
  v58 = a7;
  v59 = a8;
  v56 = a4;
  v57 = a5;
  v54 = a2;
  v11 = type metadata accessor for TopicMagazineFeedGroupEmitter();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEFB64();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(*a1 + 16);
  if (!v18)
  {
    v26 = sub_219BEEDD4();
    sub_219847F3C(&qword_280E917E0, MEMORY[0x277D32430]);
    v27 = swift_allocError();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D323C8], v26);
    v58(v27);

    return;
  }

  v52 = a6;
  v19 = *(v14 + 16);
  v50 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19(v16, v17 + v50, v13);
  v20 = *(a3 + 8);
  v51 = a3;

  v22 = sub_2194796A0(v21, v20);
  v23 = sub_219BEFB14();
  v24 = sub_2190D6964(v23, v22);

  if ((v24 & 1) == 0)
  {
    (*(v14 + 8))(v16, v13);
    if (qword_280E8D920 == -1)
    {
LABEL_9:
      sub_219BF6214();
      v29 = sub_219BE5314();
      MEMORY[0x28223BE20](v29);
      v30 = v54;
      v31 = v56;
      *(&v49 - 2) = v54;
      *(&v49 - 1) = v31;
      sub_219BE3204();
      v32 = v55;
      sub_21984D74C(v30, v55, type metadata accessor for TopicMagazineFeedGroupEmitter);
      v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v34 = (v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 87) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      sub_219848D74(v32, v37 + v33);
      v38 = (v37 + v34);
      v39 = v51;
      v40 = v52;
      v41 = v51[3];
      v38[2] = v51[2];
      v38[3] = v41;
      v38[4] = v39[4];
      v42 = v39[1];
      *v38 = *v39;
      v38[1] = v42;
      *(v37 + v35) = v31;
      v43 = (v37 + v36);
      v44 = v58;
      *v43 = v57;
      v43[1] = v40;
      v45 = (v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
      v46 = v59;
      *v45 = v44;
      v45[1] = v46;
      sub_218F0A1CC(v39, v60);

      v47 = sub_219BE2E54();
      sub_219BE2F74();

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  v25 = *(v17 + 16);
  if (v25 < v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v25 == v18 - 1)
  {
  }

  else
  {
    sub_218B676E8(v17, v17 + v50, 1, (2 * v18) | 1);
    v17 = v48;
  }

  v57(v16, v17);

  (*(v14 + 8))(v16, v13);
}

uint64_t sub_21984BAC8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for TopicMagazineFeedGroupEmitter() + 24);
  v3 = type metadata accessor for TopicMagazineFeedGroupKnobs();
  return sub_219B6D49C(*(v2 + *(v3 + 20)), 1);
}

id sub_21984BB40(char **a1, uint64_t a2, uint64_t a3)
{
  v119 = a3;
  v92 = sub_219BEDC04();
  v122 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEED94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v96 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEFD94();
  v108 = *(v9 - 8);
  v109 = v9;
  MEMORY[0x28223BE20](v9);
  v110 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2186E4E90(0, &qword_280EE9B98, MEMORY[0x277D7E9E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v104 = &v90 - v13;
  sub_2186E4E90(0, &qword_280E90F70, MEMORY[0x277D32C58], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v103 = &v90 - v15;
  sub_2186E4E90(0, &qword_280E91148, MEMORY[0x277D32A88], v11);
  MEMORY[0x28223BE20](v16 - 8);
  v118 = &v90 - v17;
  sub_2186E4E90(0, &qword_280EE9B90, MEMORY[0x277D7E9F0], v11);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v101 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &v90 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v100 = &v90 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v116 = &v90 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v117 = &v90 - v28;
  MEMORY[0x28223BE20](v27);
  v115 = &v90 - v29;
  sub_2186E4E90(0, &unk_280E91800, MEMORY[0x277D32348], v11);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v114 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v105 = &v90 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v113 = &v90 - v36;
  MEMORY[0x28223BE20](v35);
  v112 = &v90 - v37;
  v38 = sub_219BEEDB4();
  v94 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v93 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BEE6F4();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a1;
  v45 = *MEMORY[0x277D32930];
  v46 = sub_219BEFBD4();
  (*(*(v46 - 8) + 104))(v43, v45, v46);
  v47 = *MEMORY[0x277D320E8];
  v106 = v41;
  v48 = *(v41 + 104);
  v121 = v43;
  v107 = v40;
  v49 = v40;
  v50 = v44;
  v48(v43, v47, v49);
  v102 = type metadata accessor for TopicMagazineFeedGroupEmitter();
  v51 = *(v102 + 36);
  v111 = a2;
  __swift_project_boxed_opaque_existential_1((a2 + v51), *(a2 + v51 + 24));
  v52 = v44 >> 62;
  v123 = v50;
  if (v52)
  {
    sub_2195C35FC();

    sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2195C35FC();
  }

  v53 = v120;
  sub_219BF0004();
  v98 = v6;
  v97 = v7;
  v95 = v38;
  v120 = v53;
  if (!v53)
  {

    goto LABEL_20;
  }

  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_219C09BA0;
  v124[0] = v53;
  v55 = v53;
  sub_2186CFDE4(0, &qword_280E8B580);
  v56 = sub_219BF5484();
  v58 = v57;
  *(v54 + 56) = MEMORY[0x277D837D0];
  *(v54 + 64) = sub_2186FC3BC();
  *(v54 + 32) = v56;
  *(v54 + 40) = v58;
  sub_219BE5314();

  if (v52)
  {
    v59 = v123;
    v60 = sub_219BF7214();
    if (v60)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v59 = v123;
    v60 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
LABEL_8:
      v124[0] = MEMORY[0x277D84F90];
      result = sub_218C34908(0, v60 & ~(v60 >> 63), 0);
      if (v60 < 0)
      {
        __break(1u);
        goto LABEL_24;
      }

      v62 = 0;
      v63 = v124[0];
      v64 = v59;
      v65 = v92;
      v66 = v91;
      do
      {
        if ((v59 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v62, v64);
        }

        else
        {
          v67 = *&v64[8 * v62 + 32];
        }

        sub_219BEDBD4();
        v124[0] = v63;
        v69 = *(v63 + 16);
        v68 = *(v63 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_218C34908(v68 > 1, v69 + 1, 1);
          v65 = v92;
          v63 = v124[0];
        }

        ++v62;
        *(v63 + 16) = v69 + 1;
        v122[4](v63 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + v122[9] * v69, v66, v65);
        v64 = v123;
      }

      while (v60 != v62);
    }
  }

  v120 = 0;
LABEL_20:
  v71 = v112;
  v70 = v113;
  sub_219BEF0B4();
  v92 = *(v124[7] + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  v72 = sub_219BEED84();
  v73 = *(v72 - 8);
  v74 = *(v73 + 56);
  v122 = v74;
  v123 = (v73 + 56);
  (v74)(v71, 1, 1, v72);
  (v74)(v70, 1, 1, v72);
  v75 = sub_219BDC1C4();
  v76 = *(*(v75 - 8) + 56);
  v76(v115, 1, 1, v75);
  v76(v117, 1, 1, v75);
  v77 = sub_219BEFD84();
  (*(*(v77 - 8) + 56))(v118, 1, 1, v77);
  v76(v116, 1, 1, v75);
  v76(v100, 1, 1, v75);
  v76(v99, 1, 1, v75);
  v76(v101, 1, 1, v75);
  v78 = sub_219BF0354();
  (*(*(v78 - 8) + 56))(v103, 1, 1, v78);
  v79 = sub_219BDC1B4();
  (*(*(v79 - 8) + 56))(v104, 1, 1, v79);
  v80 = v105;
  sub_219BEED64();
  v81 = v122;
  (v122)(v80, 0, 1, v72);
  (v81)(v114, 1, 1, v72);
  v123 = sub_21984CA20();
  (*(v108 + 104))(v110, *MEMORY[0x277D32A90], v109);
  v82 = v107;
  v124[3] = v107;
  v124[4] = MEMORY[0x277D320F0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v124);
  v84 = v106;
  (*(v106 + 16))(boxed_opaque_existential_1, v121, v82);
  result = [*(v111 + *(v102 + 40)) autoFavoriteTagIDs];
  if (result)
  {
    v85 = result;
    v86 = sub_219BF5924();

    sub_218845F78(v86);

    (*(v97 + 104))(v96, *MEMORY[0x277D32358], v98);
    v87 = v93;
    sub_219BEEDA4();
    sub_219BEFF64();
    v88 = sub_219BE2E54();
    sub_219BF02B4();
    v89 = sub_219BE2F74();

    (*(v94 + 8))(v87, v95);
    (*(v84 + 8))(v121, v82);
    return v89;
  }

LABEL_24:
  __break(1u);
  return result;
}

char *sub_21984CA20()
{
  v0 = sub_21921C130();
  v1 = sub_219BEF0A4();
  v2 = sub_21921D158(v1);

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x277D84F90];
LABEL_14:
    v14 = sub_2194B1FF0(v6, v0);

    return v14;
  }

  v3 = sub_219BF7214();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v15;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v5, v2);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v7 = [swift_unknownObjectRetain() identifier];
      v8 = sub_219BF5414();
      v10 = v9;
      swift_unknownObjectRelease_n();

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

    while (v3 != v5);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_21984CBD8()
{
  sub_219BF02A4();
  sub_2186F8318(0, &unk_280EE6CF0, &type metadata for TopicMagazineFeedGroupEmitter.Cursor, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21984CC54()
{
  v0 = sub_219BF26F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BF1364();
  v4 = swift_allocBox();
  sub_2194F6464(v5);
  *v3 = v4;
  v6 = *MEMORY[0x277D33748];
  v7 = sub_219BF2124();
  (*(*(v7 - 8) + 104))(v3, v6, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D339C8], v0);
  return sub_219BF1A04();
}

uint64_t sub_21984CDBC()
{
  v0 = sub_219BF26F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BF1364();
  v4 = swift_allocBox();
  sub_2194F6464(v5);
  *v3 = v4;
  v6 = *MEMORY[0x277D33748];
  v7 = sub_219BF2124();
  (*(*(v7 - 8) + 104))(v3, v6, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D339C8], v0);
  return sub_219BF1A04();
}

uint64_t sub_21984CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21984CFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_27Tm_1()
{
  v1 = (type metadata accessor for TopicMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_2186E60B0();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2186E3B14();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(type metadata accessor for TopicMagazineFeedGroupKnobs() + 28);
  sub_2186F9390(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);

  return swift_deallocObject();
}

void sub_21984D2C8(uint64_t *a1)
{
  v3 = *(type metadata accessor for TopicMagazineFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 87) & 0xFFFFFFFFFFFFFFF8;
  sub_21984B5AC(a1, v1 + v4, v1 + v5, *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_18Tm()
{
  v1 = (type metadata accessor for TopicMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_2186E60B0();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2186E3B14();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(type metadata accessor for TopicMagazineFeedGroupKnobs() + 28);
  sub_2186F9390(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);

  return swift_deallocObject();
}

id sub_21984D5F0(char **a1)
{
  v3 = *(type metadata accessor for TopicMagazineFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21984BB40(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21984D74C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21984D7B4()
{
  result = qword_280EE78D8;
  if (!qword_280EE78D8)
  {
    sub_2186E4E90(255, &qword_280EE78D0, type metadata accessor for TopicMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE78D8);
  }

  return result;
}

uint64_t sub_21984D894()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_21984D97C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_219BF7174();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_21870B65C((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
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
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_2187BC250(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_2187BC250(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
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

uint64_t sub_21984DBEC(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 88))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v2);
  sub_219BE6EF4();
}

uint64_t sub_21984DD28(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  sub_218B0847C();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = sub_219BF1584();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v22 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = swift_allocObject();
      v21 = v7;
      *(v15 + 16) = v14;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
      v7 = v21;
    }

    swift_unknownObjectRelease();
  }

  sub_219BE7B14();
  sub_219BF5054();
  sub_219BF1B74();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_219869D08(v9, sub_218B0847C);
  }

  else
  {
    v16 = v22;
    (*(v11 + 32))(v22, v9, v10);
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = v22;
        (*(v11 + 16))(v7, v22, v10);
        (*(v11 + 56))(v7, 0, 1, v10);
        sub_218CF14AC(v7);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_219869D08(v7, sub_218B0847C);
        (*(v11 + 8))(v17, v10);
      }

      else
      {
        swift_unknownObjectRelease();
        (*(v11 + 8))(v22, v10);
      }
    }

    else
    {
      (*(v11 + 8))(v16, v10);
    }
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = *(v3 + 80);
  v19[3] = *(v3 + 88);
  v19[4] = v18;

  return sub_21984E25C(a1);
}

void sub_21984E154(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = off_282A42A30;
        type metadata accessor for TagFeedViewController();
        v6(v5, &off_282A9F6D8, a1);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21984E25C(uint64_t a1)
{
  swift_getObjectType();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v2 = sub_219BF66A4();
  sub_219BE2F84();

  v3 = sub_219BF66A4();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = *(a1 + 32);
  sub_219866778();
  v8 = v4;
  v9 = v5;
  sub_219BE2F84();

  v10 = sub_219BF66A4();
  v11 = sub_219BE2FE4();

  return v11;
}

uint64_t sub_21984E424(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v55 = a1;
  ObjectType = swift_getObjectType();
  v48 = *MEMORY[0x277D85000] & *v2;
  v4 = sub_219BE61B4();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = sub_219BEE644();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v56 = v10;
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE95A0 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  v57 = ObjectType;
  sub_219BDC7D4();
  v16 = v60;
  sub_219BE6EC4();
  v59 = v60;
  v17 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v17);
  sub_219BE7B94();

  v18 = sub_219759E94();
  (*(v13 + 8))(v15, v12);
  if ((~v18 & 0xF000000000000007) == 0)
  {
    sub_219BE6EC4();
    sub_219BE6F74();

    v20 = v52;
    v19 = v53;
    v21 = v54;
    (*(v53 + 104))(v52, *MEMORY[0x277D6D510], v54);
    v22 = sub_219BE61A4();
    v23 = *(v19 + 8);
    v23(v20, v21);
    result = (v23)(v8, v21);
    if (v22)
    {
      sub_21984E25C(v55);
    }

    return result;
  }

  if (sub_21984EBF4())
  {
    v25 = v58;
    sub_21984EE00();
    v26 = CACurrentMediaTime();
    MEMORY[0x28223BE20](v27);
    *(&v47 - 4) = v2;
    *(&v47 - 3) = v18;
    *(&v47 - 2) = v55;
    *(&v47 - 1) = v25;
    sub_219BE3204();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v16;
    v29 = sub_219BE2E54();
    v55 = sub_219BE2F64();

    sub_2186C6148(0, &qword_280E8E3B0);
    v30 = sub_219BF66A4();
    v32 = v49;
    v31 = v50;
    v54 = *(v50 + 16);
    v33 = v51;
    v54(v49, v25, v51);
    v34 = *(v31 + 80);
    v35 = swift_allocObject();
    v36 = v48;
    v37 = *(v48 + 80);
    *(v35 + 2) = v37;
    v52 = *(v36 + 88);
    v53 = v37;
    *(v35 + 3) = v52;
    v35[4] = v26;
    v50 = *(v31 + 32);
    (v50)(v35 + ((v34 + 40) & ~v34), v32, v33);
    v48 = sub_219BE2F94();

    v54(v32, v58, v33);
    v38 = swift_allocObject();
    v39 = v52;
    *(v38 + 2) = v53;
    *(v38 + 3) = v39;
    v38[4] = v26;
    *(v38 + 5) = v16;
    (v50)(v38 + ((v34 + 48) & ~v34), v32, v33);
    v40 = sub_219BE2E54();
    sub_219BE2FE4();

    v41 = sub_219BE2E54();
    sub_219BE3034();

    return sub_21885AB78(v18);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_21885AB78(v18);
  }

  v43 = Strong;
  v45 = v49;
  v44 = v50;
  v46 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277D320A8], v51);
  sub_219BEE634();
  (*(v44 + 8))(v45, v46);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2198674E4(v43, 0);
    sub_21885AB78(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21885AB78(v18);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_21984EBF4()
{
  v0 = sub_219BF0644();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  sub_219BEE844();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D32EF0])
  {
    if ((sub_219BF1B84() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 == *MEMORY[0x277D32EF8])
    {
LABEL_5:
      sub_2186C6148(0, &qword_280E8D790);
      v5 = sub_219BF6F44();
      sub_219BF6214();
      sub_219BE5314();

      return 0;
    }

    (*(v1 + 8))(v3, v0);
  }

  return 1;
}

void sub_21984EE00()
{
  sub_2198668E4(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_219BEE644();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D320A8], v4);
  v8 = sub_219BEE634();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = *(*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
    if ([v9 feedConfiguration] == 9 || objc_msgSend(v9, sel_feedConfiguration) == 10 && (v13 = objc_msgSend(objc_msgSend(v9, sel_backingTag), sel_isPuzzleType), swift_unknownObjectRelease(), v13))
    {
      v10 = sub_219BF5BF4();
      (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v0;
      v12 = v0;
      sub_218AB3D80(0, 0, v3, &unk_219CAD5A0, v11);
    }
  }
}

uint64_t sub_21984F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  v6 = sub_219BEE774();
  v7 = sub_2196A20F8(v6, a3, a4);

  return v7;
}

uint64_t sub_21984F150(uint64_t *a1)
{
  v2 = sub_219BED214();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *a1;
  CACurrentMediaTime();
  sub_219BED1F4();
  sub_219BED244();
  v10 = *(v3 + 8);
  v10(v6, v2);
  sub_2186C6148(0, &qword_280E8E3B0);
  v11 = sub_219BF66A4();
  v14[1] = v9;
  v12 = sub_219BE2E04();

  v10(v8, v2);
  return v12;
}

uint64_t sub_21984F2F4(void *a1, void *a2)
{
  v4 = sub_219BEE644();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0xC0)) = *a1;

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10;
  sub_219BF6214();
  sub_219BE5314();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v5 + 104))(v7, *MEMORY[0x277D320A8], v4);
    sub_219BEE634();
    (*(v5 + 8))(v7, v4);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2198674E4(v12, 1);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21984F58C(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = a3;
  v40 = a2;
  v37 = *MEMORY[0x277D85000] & *a2;
  v4 = sub_219BED174();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BED1D4();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE644();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v35 = v10;
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED214();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v19 = MEMORY[0x277D83A80];
  *(v18 + 56) = MEMORY[0x277D839F8];
  *(v18 + 64) = v19;
  *(v18 + 32) = v20;
  aBlock = 0;
  v48 = 0xE000000000000000;
  v53 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v21 = aBlock;
  v22 = v48;
  *(v18 + 96) = MEMORY[0x277D837D0];
  *(v18 + 104) = sub_2186FC3BC();
  *(v18 + 72) = v21;
  *(v18 + 80) = v22;
  sub_219BE5314();

  CACurrentMediaTime();
  sub_2186C6148(0, &qword_280E8E3B0);
  v23 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v24 = v39;
  v38 = *(v38 + 8);
  (v38)(v15, v39);
  (*(v9 + 16))(v11, v36, v8);
  v25 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v26 = swift_allocObject();
  v27 = v37;
  *(v26 + 2) = *(v37 + 80);
  v28 = v40;
  *(v26 + 3) = *(v27 + 88);
  *(v26 + 4) = v28;
  (*(v9 + 32))(&v26[v25], v11, v8);
  v51 = sub_2198679F0;
  v52 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_218793E0C;
  v50 = &block_descriptor_84_2;
  v29 = _Block_copy(&aBlock);
  v30 = v28;

  v31 = v41;
  sub_219BED1A4();
  aBlock = MEMORY[0x277D84F90];
  sub_2186CC41C(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_2198668E4(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  v32 = v44;
  v33 = v46;
  sub_219BF7164();
  MEMORY[0x21CECD420](v17, v31, v32, v29);
  _Block_release(v29);

  (*(v45 + 8))(v32, v33);
  (*(v42 + 8))(v31, v43);
  return (v38)(v17, v24);
}

uint64_t sub_21984FC00()
{
  v0 = sub_219BEE644();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    (*(v1 + 104))(v3, *MEMORY[0x277D320A8], v0);
    sub_219BEE634();
    (*(v1 + 8))(v3, v0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2198674E4(v5, 0);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21984FD60()
{
  swift_getObjectType();
  v0 = CACurrentMediaTime();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v1 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v0;
  v2 = sub_219BE2E54();
  sub_219BE2F74();

  v3 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_21984FEE8(uint64_t a1)
{
  v30 = a1;
  v26[1] = swift_getObjectType();
  v2 = sub_219BE61B4();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v27 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - v5;
  sub_218954408();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v31 = v32;
  v12 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v12);
  sub_219BE7B94();

  v13 = sub_219759E94();
  (*(v9 + 8))(v11, v8);
  if ((~v13 & 0xF000000000000007) != 0)
  {
    if (sub_21984EBF4())
    {
      sub_219BDEC34();
      sub_219BDEB94();
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      sub_219BE5314();
      v20 = CACurrentMediaTime();
      MEMORY[0x28223BE20](v21);
      v26[-4] = v1;
      v26[-3] = v13;
      v26[-2] = v30;
      sub_219BE3204();
      v22 = sub_219BE2E54();
      sub_219BE95D4();
      sub_219BE2F84();

      *(swift_allocObject() + 16) = v20;
      v23 = sub_219BE2E54();
      sub_219BE2F74();

      v24 = sub_219BE2E54();
      sub_219BE2FD4();

      sub_2186C6148(0, &qword_280E8E3B0);
      v25 = sub_219BF66A4();
      sub_219BE3034();
    }

    return sub_21885AB78(v13);
  }

  else
  {
    sub_219BE6EC4();
    sub_219BE6F74();

    v15 = v27;
    v14 = v28;
    v16 = v29;
    (*(v28 + 104))(v27, *MEMORY[0x277D6D510], v29);
    v17 = sub_219BE61A4();
    v18 = *(v14 + 8);
    v18(v15, v16);
    result = (v18)(v6, v16);
    if (v17)
    {
      sub_21984E25C(v30);
    }
  }

  return result;
}

uint64_t sub_219850454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  v4 = sub_219BEE774();
  v5 = sub_2196A25C8(v4, a3);

  return v5;
}

uint64_t sub_2198504F4(void *a1, void *a2)
{
  (*(*((*MEMORY[0x277D85000] & *a2) + 0x58) + 16))(*a1, *((*MEMORY[0x277D85000] & *a2) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v2);
  v3 = sub_219BE6E84();

  return v3;
}

uint64_t sub_21985063C()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

void sub_219850788(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x277D85000];
  sub_219BDEC34();
  sub_219BDEB94();
  *(v1 + *((*v3 & *v1) + 0xC0)) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      *(swift_allocObject() + 16) = v5;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectRelease();
  }

  MEMORY[0x28223BE20](Strong);
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v6 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v1;
  v7 = v1;
  v8 = sub_219BE2E54();
  sub_219BE2F94();

  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  v15 = sub_219BE2E54();
  sub_219BE3034();
}

uint64_t sub_219850A8C(uint64_t *a1, void *a2)
{
  v2 = *MEMORY[0x277D85000] & *a2;
  v3 = *a1;
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62598);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "TagFeed interactor did reload", v7, 2u);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  (*(*(v2 + 88) + 8))(v3, *(v2 + 80));
  v8 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v8);
  v9 = sub_219BE6E84();

  return v9;
}

uint64_t sub_219850CA0(uint64_t a1)
{
  v2 = sub_219BE95D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  result = (*(v3 + 88))(v5, v2);
  if (result != *MEMORY[0x277D6E6A0])
  {
    if (result == *MEMORY[0x277D6E6A8])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v7 = result;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = off_282A429D0;
          type metadata accessor for TagFeedViewController();
          v8(v7, &off_282A9F6D8, 0);
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_219850E68()
{
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62598);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "TagFeed interactor did run prewarm modifier after force reload", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  sub_219850FB0();
  sub_219BDEC84();
  return sub_219BDEBE4();
}

unint64_t sub_219850FB0()
{
  v1 = v0;
  v2 = sub_219BE66C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v48 = v5;
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  sub_218B0847C();
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF1584();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v45 - v13;
  sub_219866A94(0, &qword_280EE5A20, MEMORY[0x277D6D618]);
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  sub_218954408();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_219BE7B04();
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }
  }

  else
  {
    sub_21880BB00(result);
  }

  v45 = v7;
  v46 = v3;
  v47 = v2;
  sub_219BE6EC4();
  v57 = v58;
  v23 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v23);
  sub_219BE7B94();

  v24 = sub_219759FB8();
  (*(v19 + 8))(v21, v18);
  if (v24)
  {
    v58 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
    sub_219866A94(0, &qword_280EE4BC0, MEMORY[0x277D6DF28]);
    sub_2190CEAE0();
    sub_219BE91E4();
    sub_2186CC41C(&unk_280ED2718, type metadata accessor for TagFeedLayoutModel);
    v25 = v53;
    v26 = sub_219BE6574();
    (*(v52 + 8))(v16, v25);
    if (v26)
    {
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      return sub_219BE5314();
    }

    else
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v38 = off_282A429E0;
          type metadata accessor for TagFeedViewController();
          v38();
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v27 = v54;
    sub_219BF1B74();
    v29 = v55;
    v28 = v56;
    if ((*(v55 + 48))(v27, 1, v56) == 1)
    {
      sub_219869D08(v27, sub_218B0847C);
      result = swift_unknownObjectWeakLoadStrong();
      v31 = v46;
      v30 = v47;
      v32 = v45;
      if (result)
      {
        sub_2198615A4(*(*(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor));
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v34 = Strong;
          v35 = v49;
          (*(v31 + 16))(v49, v32, v30);
          v36 = (*(v31 + 80) + 24) & ~*(v31 + 80);
          v37 = swift_allocObject();
          *(v37 + 16) = v34;
          (*(v31 + 32))(v37 + v36, v35, v30);
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        return (*(v31 + 8))(v32, v30);
      }
    }

    else
    {
      v39 = *(v29 + 32);
      v40 = v51;
      v39(v51, v27, v28);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          v42 = v41;
          (*(v29 + 16))(v50, v40, v28);
          v43 = (*(v29 + 80) + 24) & ~*(v29 + 80);
          v44 = swift_allocObject();
          *(v44 + 16) = v42;
          v39((v44 + v43), v50, v28);
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

      return (*(v29 + 8))(v40, v28);
    }
  }

  return result;
}

void sub_21985189C()
{
  swift_getObjectType();
  v1 = (*MEMORY[0x277D85000] & *v0);
  v2 = v1[24];
  v3 = *(v0 + v2);
  if (v3)
  {
    *(v0 + v2) = 0;
    sub_219BDEC34();
    sub_219BDEB94();
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09BA0;
    sub_219BEFAD4();
    sub_219BF7484();
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_2186FC3BC();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_219BF6214();
    sub_219BE5314();

    (*(v1[11] + 16))(v3, v1[10]);

    v5 = CACurrentMediaTime();
    MEMORY[0x28223BE20](v6);
    sub_219BE95D4();
    sub_219BE3204();
    *(swift_allocObject() + 16) = v5;
    v7 = sub_219BE2E54();
    sub_219BE2F94();

    v8 = sub_219BE2E54();
    sub_219BE2FD4();

    sub_2186C6148(0, &qword_280E8E3B0);
    v9 = sub_219BF66A4();
    sub_219BE3034();
  }
}

uint64_t sub_219851D28()
{
  sub_218954408();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0);
  v15 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v8 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v8;
  *(v7 + 32) = v9;
  sub_219BF6214();
  sub_219BE5314();

  sub_219BE6EC4();
  v16 = v17;
  v10 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v10);
  sub_219BE7B94();

  v11 = sub_219759E94();
  v12 = *(v2 + 8);
  v12(v6, v1);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_2186F7CA4();
    sub_219BEE7D4();
    sub_21885AB78(v11);
    sub_219BEE2F4();
  }

  sub_219BE6EC4();
  v16 = v17;
  v13 = v15;
  sub_219BE7B94();

  sub_2196A49FC(v13);
  return (v12)(v13, v1);
}

uint64_t sub_21985212C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v86 = a3;
  ObjectType = swift_getObjectType();
  v79 = (*MEMORY[0x277D85000] & *v3);
  sub_21898BF70();
  v8 = v7;
  v87 = *(v7 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v7);
  v82 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TagFeedExpandRequest();
  MEMORY[0x28223BE20](v10);
  v81 = (v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = (v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for TagFeedGapLocation(0);
  v78 = *(v15 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v80 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v64 - v18;
  v85 = v8;
  v83 = a2;
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_219869D08(v14, type metadata accessor for TagFeedModel);
    v20 = v86[3];
    v21 = v86[4];
    __swift_project_boxed_opaque_existential_1(v86, v20);
    return MEMORY[0x21CEC0B20](0, v20, v21);
  }

  else
  {
    v23 = *v14;
    v24 = v14[1];
    sub_2186F0CC0();
    v26 = *(v25 + 48);
    v76 = v19;
    v77 = type metadata accessor for TagFeedGapLocation;
    v27 = v14 + v26;
    v28 = v19;
    sub_219867CDC(v27, v19, type metadata accessor for TagFeedGapLocation);
    v29 = v81;
    v30 = v81 + *(v10 + 20);
    v73 = type metadata accessor for TagFeedGapLocation;
    v31 = sub_219867D44(v28, v30, type metadata accessor for TagFeedGapLocation);
    *v29 = v23;
    v29[1] = v24;
    v32 = (v29 + *(v10 + 24));
    v33 = *(a1 + 8);
    v34 = *(a1 + 32);
    v32[1] = *(a1 + 16);
    v32[2] = v34;
    *v32 = *a1;
    MEMORY[0x28223BE20](v31);
    v64[-2] = v4;
    v64[-1] = v29;
    v66 = v35;
    v65 = v33;
    v64[1] = sub_219BE3204();
    v64[2] = sub_2186C6148(0, &qword_280E8E3B0);
    v36 = sub_219BF66A4();
    v37 = v87;
    v38 = *(v87 + 16);
    v72 = v87 + 16;
    v74 = v38;
    v75 = v4;
    v39 = v82;
    v40 = v85;
    (v38)(v82, v83);
    v41 = a1;
    v42 = v80;
    sub_219867D44(v76, v80, type metadata accessor for TagFeedGapLocation);
    v67 = *(v37 + 80);
    v43 = v37;
    v44 = (v67 + 32) & ~v67;
    v71 = *(v78 + 80);
    v78 = v9 + v71;
    v45 = (v9 + v71 + v44) & ~v71;
    v70 = v67 | v71;
    v46 = swift_allocObject();
    v47 = v79;
    v69 = v79[10];
    *(v46 + 16) = v69;
    v68 = v47[11];
    *(v46 + 24) = v68;
    v48 = *(v43 + 32);
    v87 = v43 + 32;
    v79 = v48;
    (v48)(v46 + v44, v39, v40);
    sub_219867CDC(v42, v46 + v45, v77);
    sub_219BE95D4();
    sub_219BE2F84();

    v49 = sub_219BF66A4();
    v50 = v86;
    sub_218718690(v86, v88);
    v51 = swift_allocObject();
    v52 = v41[1];
    v51[1] = *v41;
    v51[2] = v52;
    v51[3] = v41[2];
    sub_2186CB1F0(v88, (v51 + 4));
    v53 = v66;
    v54 = v65;
    sub_219BE2F94();

    v55 = sub_219BF66A4();
    sub_218718690(v50, v88);
    v56 = v82;
    v57 = v85;
    v74(v82, v83, v85);
    v58 = v76;
    v59 = v80;
    sub_219867D44(v76, v80, v73);
    v60 = (v67 + 72) & ~v67;
    v61 = (v78 + v60) & ~v71;
    v62 = swift_allocObject();
    v63 = v68;
    *(v62 + 16) = v69;
    *(v62 + 24) = v63;
    sub_2186CB1F0(v88, v62 + 32);
    (v79)(v62 + v60, v56, v57);
    sub_219867CDC(v59, v62 + v61, v77);
    sub_219BE2FE4();

    sub_219869D08(v58, type metadata accessor for TagFeedGapLocation);
    return sub_219869D08(v81, type metadata accessor for TagFeedExpandRequest);
  }
}

uint64_t sub_219852884(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v33 = a3;
  v40 = a2;
  v41 = *MEMORY[0x277D85000] & *a2;
  v32 = type metadata accessor for TagFeedFailedData();
  MEMORY[0x28223BE20](v32);
  v34 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B0847C();
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867FE8();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0644();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v38 = a1[1];
  v39 = v16;
  v17 = a1[2];
  v37 = a1[3];
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();

  sub_219BEF3D4();
  sub_219BEE844();

  v18 = *(v9 + 56);
  *v11 = v17;
  (*(v13 + 32))(&v11[v18], v15, v12);
  if (v17 >> 61 == 4 && (*(v13 + 88))(&v11[v18], v12) == *MEMORY[0x277D32EF0])
  {
    v19 = v36;
    sub_219BF1B74();
    v20 = sub_219BF1584();
    v21 = (*(*(v20 - 8) + 48))(v19, 1, v20);
    sub_219869D08(v19, sub_218B0847C);
    if (v21 != 1)
    {
      sub_21898BF70();
      v25 = sub_219BE5F84();
      v27 = v26;
      v28 = v34;
      sub_219867D44(v35, v34 + *(v32 + 20), type metadata accessor for TagFeedGapLocation);
      *v28 = v25;
      v28[1] = v27;
      v29 = (*(*(v41 + 88) + 80))(v28, *(v41 + 80));
      sub_219869D08(v28, type metadata accessor for TagFeedFailedData);
      v42 = v29;
      v30 = MEMORY[0x277D6D888];
      sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
      sub_219866B54(&qword_280EE5680, &qword_280EE5670, v30);
      v23 = sub_219BE6E84();

      goto LABEL_7;
    }
  }

  else
  {
    sub_219869D08(v11, sub_219867FE8);
  }

  v42 = (*(*(v41 + 88) + 24))(v39, v38, v17, v37, *(v41 + 80));
  v22 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v22);
  v23 = sub_219BE6E84();
LABEL_7:

  return v23;
}

uint64_t sub_219852E20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_219BE95D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219850FB0();
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D6E6A0])
  {
    goto LABEL_5;
  }

  if (v10 != *MEMORY[0x277D6E6A8])
  {
    (*(v7 + 8))(v9, v6);
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v11 = 1;
LABEL_6:
  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  return MEMORY[0x21CEC0B20](v11, v12, v13);
}

uint64_t sub_219852FA8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x277D85000] & *a2;
  v10 = type metadata accessor for TagFeedFailedData();
  MEMORY[0x28223BE20](v10);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v13 = a3[3];
    v14 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v13);
    return MEMORY[0x21CEC0B20](0, v13, v14);
  }

  else
  {
    v29 = a4;
    v30 = v9;
    v31 = a5;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v28 = qword_280F61708;
    v27[3] = sub_219BF61F4();
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09EC0;
    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_2186CFDE4(0, &unk_280EE3DF0);
    sub_219BF7484();
    v17 = v32[0];
    v18 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v19 = sub_2186FC3BC();
    *(v16 + 64) = v19;
    *(v16 + 32) = v17;
    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    v33 = a1;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v20 = v32[0];
    *(v16 + 96) = v18;
    *(v16 + 104) = v19;
    *(v16 + 72) = v20;
    sub_219BE5314();

    sub_21898BF70();
    v21 = sub_219BE5F84();
    v23 = v22;
    sub_219867D44(v31, v12 + *(v10 + 20), type metadata accessor for TagFeedGapLocation);
    *v12 = v21;
    v12[1] = v23;
    v24 = (*(*(v30 + 88) + 80))(v12, *(v30 + 80));
    sub_219869D08(v12, type metadata accessor for TagFeedFailedData);
    v33 = v24;
    sub_218718690(a3, v32);
    v25 = swift_allocObject();
    sub_2186CB1F0(v32, v25 + 16);
    v26 = MEMORY[0x277D6D888];
    sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
    sub_219866B54(&qword_280EE5680, &qword_280EE5670, v26);
    sub_219BE6EF4();
  }
}

uint64_t sub_2198533C0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = *MEMORY[0x277D85000];
  v15 = *MEMORY[0x277D85000] & v13;
  v16 = sub_219BE9F74();
  v48 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v46 = v17;
  v47 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v7 + *((v14 & v13) + 0x68));
  sub_219BE6EC4();
  LOBYTE(v13) = sub_218982810();

  if ((v13 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
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

  v19 = CACurrentMediaTime();
  sub_219BE6084();
  v20 = *(v15 + 88);
  v21 = *(v20 + 40);
  v43 = *(v15 + 80);
  v44 = v20;
  *&v45 = COERCE_DOUBLE(v21());

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v42[1] = qword_280F61708;
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09EC0;
  v50 = 0.0;
  v51 = -2.68156159e154;
  sub_219BF7484();
  v23 = v16;
  v25 = v50;
  v24 = v51;
  v26 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v27 = sub_2186FC3BC();
  v42[0] = a6;
  v28 = v27;
  *(v22 + 64) = v27;
  *(v22 + 32) = v25;
  *(v22 + 40) = v24;
  v54 = 0;
  v55 = 0xE000000000000000;
  v50 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  type metadata accessor for CGRect(0);
  sub_219BF7484();
  v29 = v54;
  v30 = v55;
  *(v22 + 96) = v26;
  *(v22 + 104) = v28;
  *(v22 + 72) = v29;
  *(v22 + 80) = v30;
  sub_219BF6214();
  sub_219BE5314();

  v50 = *&v45;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v47;
  v32 = v48;
  (*(v48 + 16))(v47, v42[0], v23);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = (v46 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 39) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v44;
  *(v37 + 16) = v43;
  *(v37 + 24) = v38;
  (*(v32 + 32))(v37 + v34, v33, v23);
  v39 = (v37 + v35);
  *v39 = a1;
  v39[1] = a2;
  v39[2] = a3;
  v39[3] = a4;
  *(v37 + v36) = v19;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v40 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v40);

  sub_219BE6EF4();
}

void sub_219853908(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v30[0] = a7;
  v31 = a1;
  v11 = sub_219BE85F4();
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v30[1] = qword_280F61708;
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C0EE20;
  v33 = 0.0;
  v34 = -2.68156159e154;
  sub_219BE9F74();
  sub_219BF7484();
  v16 = v33;
  v15 = v34;
  v17 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v18 = sub_2186FC3BC();
  *(v14 + 64) = v18;
  *(v14 + 32) = v16;
  *(v14 + 40) = v15;
  v37 = 0;
  v38 = 0xE000000000000000;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  type metadata accessor for CGRect(0);
  sub_219BF7484();
  v19 = v37;
  v20 = v38;
  *(v14 + 96) = v17;
  *(v14 + 104) = v18;
  *(v14 + 72) = v19;
  *(v14 + 80) = v20;
  v33 = 0.0;
  v34 = -2.68156159e154;
  v21 = v31;
  sub_219BF7484();
  v22 = v33;
  v23 = v34;
  *(v14 + 136) = v17;
  *(v14 + 144) = v18;
  *(v14 + 112) = v22;
  *(v14 + 120) = v23;
  sub_219BF5CD4();
  v24 = MEMORY[0x277D83A80];
  *(v14 + 176) = MEMORY[0x277D839F8];
  *(v14 + 184) = v24;
  *(v14 + 152) = v25;
  sub_219BF6214();
  sub_219BE5314();

  v26 = v32;
  (*(v32 + 16))(v13, v21, v11);
  v27 = (*(v26 + 88))(v13, v11);
  if (v27 != *MEMORY[0x277D6DF98] && (v27 == *MEMORY[0x277D6DF90] || v27 == *MEMORY[0x277D6DFA0]))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      sub_219850FB0();
    }
  }

  else
  {
    (*(v26 + 8))(v13, v11);
  }
}

uint64_t sub_219853C74(uint64_t a1, uint64_t a2)
{
  v8 = (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 32))(a2, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  sub_218718690(a1, v7);
  v4 = swift_allocObject();
  sub_2186CB1F0(v7, v4 + 16);
  v5 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v5);
  sub_219BE6EF4();
}

uint64_t sub_219853E04(uint64_t a1, char a2, uint64_t a3)
{
  v24 = a3;
  sub_2198668E4(0, &qword_27CC20068, type metadata accessor for TagFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v25[-1] - v6);
  v8 = type metadata accessor for TagFeedRouteModel();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDE294();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D2FEF8];
  if ((a2 & 1) == 0)
  {
    v17 = MEMORY[0x277D2FF08];
  }

  (*(v13 + 104))(v16, *v17, v12, v14);
  sub_219854174(a1, v16, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return sub_219869D68(v7, &qword_27CC20068, type metadata accessor for TagFeedRouteModel);
  }

  else
  {
    sub_219867CDC(v7, v11, type metadata accessor for TagFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      sub_21898BF70();
      v21 = sub_219BE5F84();
      v23 = v22;
      __swift_project_boxed_opaque_existential_1((v20 + 48), *(v20 + 72));
      v25[0] = v21;
      v25[1] = v23;
      v25[2] = 0;
      v25[3] = 0;
      v26 = 0;
      sub_218E40BA4(v11, v24, v25);
      sub_219869D08(v11, type metadata accessor for TagFeedRouteModel);
      (*(v13 + 8))(v16, v12);

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_219869D08(v11, type metadata accessor for TagFeedRouteModel);
      return (*(v13 + 8))(v16, v12);
    }
  }
}

uint64_t *sub_219854174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v382 = a2;
  v388 = a3;
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &qword_280E905C0, MEMORY[0x277D33610], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v303 = &v290 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v365 = &v290 - v8;
  v355 = sub_219BEDAE4();
  v353 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v351 = &v290 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867BD8(0, &qword_280E90E38, MEMORY[0x277D31D50], sub_2197160E4, sub_219716118);
  v349 = v10;
  v348 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v345 = &v290 - v11;
  v356 = sub_219BF0B74();
  v354 = *(v356 - 8);
  MEMORY[0x28223BE20](v356);
  v352 = &v290 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v347 = &v290 - v14;
  v363 = sub_219BDEB14();
  v361 = *(v363 - 8);
  MEMORY[0x28223BE20](v363);
  v359 = &v290 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = sub_219BDEA14();
  v362 = *(v364 - 8);
  MEMORY[0x28223BE20](v364);
  v360 = &v290 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v4);
  MEMORY[0x28223BE20](v17 - 8);
  v343 = &v290 - v18;
  v341 = sub_219BDDED4();
  v340 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v342 = (&v290 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v358 = sub_219BDDBF4();
  v357 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v344 = &v290 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v379 = &v290 - v22;
  sub_219867BD8(0, &qword_280E90D90, MEMORY[0x277D32FD0], sub_218CF5E6C, sub_218CF5EA4);
  v350 = v23;
  v377 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v346 = &v290 - v24;
  v339 = sub_219BEDB94();
  v338 = *(v339 - 8);
  MEMORY[0x28223BE20](v339);
  v337 = &v290 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867BD8(0, &qword_280E90E28, MEMORY[0x277D31DE8], sub_218CF5F8C, sub_218CF5FC4);
  v336 = v26;
  v335 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v332 = &v290 - v27;
  v331 = sub_219BF0AC4();
  v330 = *(v331 - 8);
  MEMORY[0x28223BE20](v331);
  v329 = &v290 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v334);
  v333 = &v290 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867BD8(0, &qword_280E90DB0, MEMORY[0x277D32FB8], sub_218CF6140, sub_218CF6178);
  v328 = v30;
  v327 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v326 = &v290 - v31;
  sub_2198668E4(0, &unk_280EE8D10, MEMORY[0x277D2FD50], v4);
  MEMORY[0x28223BE20](v32 - 8);
  v294 = &v290 - v33;
  v293 = sub_219BDDDA4();
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v291 = &v290 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = sub_219BDE4D4();
  v383 = *(v378 - 8);
  MEMORY[0x28223BE20](v378);
  v298 = &v290 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], v4);
  MEMORY[0x28223BE20](v36 - 8);
  v373 = &v290 - v37;
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v4);
  MEMORY[0x28223BE20](v38 - 8);
  v381 = &v290 - v39;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v4);
  MEMORY[0x28223BE20](v40 - 8);
  v325 = &v290 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v302 = &v290 - v43;
  MEMORY[0x28223BE20](v44);
  v366 = &v290 - v45;
  v322 = sub_219BF07A4();
  v321 = *(v322 - 8);
  MEMORY[0x28223BE20](v322);
  v320 = &v290 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867BD8(0, &qword_280E90DD0, MEMORY[0x277D32F68], sub_218CF61B0, sub_218CF61E8);
  v375 = *(v47 - 8);
  v376 = v47;
  MEMORY[0x28223BE20](v47);
  v374 = &v290 - v48;
  v316 = sub_219BEC504();
  v315 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v314 = &v290 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v319 = v50;
  v318 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v317 = &v290 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280E90A30, MEMORY[0x277D33058], v4);
  MEMORY[0x28223BE20](v52 - 8);
  v297 = &v290 - v53;
  sub_2198668E4(0, &unk_280EE9D00, MEMORY[0x277CC9260], v4);
  MEMORY[0x28223BE20](v54 - 8);
  v301 = &v290 - v55;
  v305 = sub_219BDB954();
  v304 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v296 = &v290 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280E90180, MEMORY[0x277D33E20], v4);
  MEMORY[0x28223BE20](v57 - 8);
  v300 = (&v290 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v59);
  v370 = &v290 - v60;
  v313 = sub_219BF1094();
  v312 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v295 = &v290 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v299 = &v290 - v63;
  MEMORY[0x28223BE20](v64);
  v311 = &v290 - v65;
  sub_219867BD8(0, &qword_280E90D30, MEMORY[0x277D330F8], sub_218CF606C, sub_218CF60A4);
  v324 = v66;
  v369 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v323 = &v290 - v67;
  v310 = sub_219BF04A4();
  v309 = *(v310 - 8);
  MEMORY[0x28223BE20](v310);
  v308 = &v290 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867BD8(0, &qword_280E90E00, MEMORY[0x277D32CE0], sub_218CF5FFC, sub_218CF6034);
  v307 = v69;
  v306 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v71 = &v290 - v70;
  v72 = sub_219BF0634();
  v385 = *(v72 - 8);
  v386 = v72;
  MEMORY[0x28223BE20](v72);
  WitnessTable = &v290 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = sub_219BF0F34();
  v367 = *(v368 - 8);
  MEMORY[0x28223BE20](v368);
  v75 = &v290 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v372 = v76;
  v371 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v78 = &v290 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v79);
  v81 = &v290 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v84 = &v290 - v83;
  v85 = sub_219BF0614();
  v86 = *(v85 - 8);
  v389 = v85;
  v390 = v86;
  MEMORY[0x28223BE20](v85);
  v88 = (&v290 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21898BF70();
  sub_219BE5FC4();
  v391 = v88;
  sub_218F2994C(v88);
  sub_219869D08(v84, type metadata accessor for TagFeedModel);
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v390 + 8))(v391, v389);
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v183 = *(v182 + 48);
      v184 = sub_219BF1584();
      (*(*(v184 - 8) + 8))(&v81[v183], v184);
      v89 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
      v148 = v371;
      v149 = v372;
      (*(v371 + 32))(v78, v81, v372);
      sub_219BF07D4();
      v150 = sub_219BF0F14();
      (*(v367 + 8))(v75, v368);
      sub_219BF07F4();
      v151 = v392;
      v152 = WitnessTable;
      sub_219BF63B4();

      v153 = v391;
      sub_219857EE4(v150, v152, v387, a1, v391, v382, v388);
      swift_unknownObjectRelease();
      (*(v385 + 8))(v152, v386);
      (*(v148 + 8))(v78, v149);
      return (*(v390 + 8))(v153, v389);
    case 3u:
      v154 = v306;
      v155 = v307;
      (*(v306 + 32))(v71, v81, v307);
      v156 = v308;
      sub_219BF07D4();
      sub_219BF0404();
      (*(v309 + 8))(v156, v310);
      v119 = v388;
      sub_219BDD644();
      (*(v154 + 8))(v71, v155);
      goto LABEL_14;
    case 4u:
      v121 = v369;
      v122 = v323;
      v123 = v324;
      (*(v369 + 32))(v323, v81, v324);
      v124 = v311;
      sub_219BF07D4();
      v125 = v370;
      sub_219BF1034();
      v126 = *(v312 + 8);
      v127 = v313;
      v126(v124, v313);
      v128 = sub_219BF3484();
      v129 = *(v128 - 8);
      if ((*(v129 + 48))(v125, 1, v128) == 1)
      {
        v130 = v299;
        sub_219BF07D4();
        v131 = v301;
        sub_219BF1084();
        v132 = v131;
        v126(v130, v127);
        v133 = v304;
        v134 = v305;
        v135 = (*(v304 + 48))(v132, 1, v305);
        v136 = v391;
        if (v135 == 1)
        {
          sub_219869D68(v132, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v137 = v295;
          sub_219BF07D4();
          v138 = v297;
          sub_219BF1074();
          v126(v137, v127);
          v139 = v367;
          v140 = v368;
          v141 = (*(v367 + 48))(v138, 1, v368);
          v142 = v388;
          if (v141 == 1)
          {
            (*(v369 + 8))(v122, v123);
            (*(v390 + 8))(v391, v389);
            sub_219869D68(v138, &unk_280E90A30, MEMORY[0x277D33058]);
            v143 = type metadata accessor for TagFeedRouteModel();
            (*(*(v143 - 8) + 56))(v142, 1, 1, v143);
          }

          else
          {
            v260 = sub_219BF0F14();
            (*(v139 + 8))(v138, v140);
            sub_219BF07F4();
            v261 = v392;
            v262 = WitnessTable;
            sub_219BF63B4();

            v263 = v391;
            sub_219857EE4(v260, v262, v387, a1, v391, v382, v142);
            swift_unknownObjectRelease();
            (*(v385 + 8))(v262, v386);
            (*(v369 + 8))(v122, v123);
            (*(v390 + 8))(v263, v389);
          }
        }

        else
        {
          (*(v369 + 8))(v122, v123);
          (*(v390 + 8))(v136, v389);
          v241 = *(v133 + 32);
          v242 = v296;
          v241(v296, v132, v134);
          v243 = v388;
          v241(v388, v242, v134);
          v244 = type metadata accessor for TagFeedRouteModel();
          swift_storeEnumTagMultiPayload();
          (*(*(v244 - 8) + 56))(v243, 0, 1, v244);
        }

        return sub_219869D68(v370, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      v223 = v300;
      sub_219869C88(v125, v300, &qword_280E90180, MEMORY[0x277D33E20]);
      v224 = (*(v129 + 88))(v223, v128);
      v225 = v391;
      if (v224 == *MEMORY[0x277D33DF0])
      {
        (*(v129 + 96))(v223, v128);
        v226 = *v223;

        v227 = sub_219BF4024();
        if (v227)
        {
          v228 = [v227 identifier];
          v229 = sub_219BF5414();
          v387 = v226;
          v230 = v225;
          v231 = v123;
          v232 = v229;
          v234 = v233;
          swift_unknownObjectRelease();

          (*(v121 + 8))(v122, v231);
          (*(v390 + 8))(v230, v389);
          v235 = v388;
          *v388 = v232;
          v235[1] = v234;
          v236 = 8;
LABEL_51:
          v235[2] = v236;
          v272 = type metadata accessor for TagFeedRouteModel();
          swift_storeEnumTagMultiPayload();
          (*(*(v272 - 8) + 56))(v235, 0, 1, v272);
LABEL_53:

          return sub_219869D68(v125, &qword_280E90180, MEMORY[0x277D33E20]);
        }

        goto LABEL_52;
      }

      if (v224 == *MEMORY[0x277D33E08])
      {
        (*(v129 + 96))(v223, v128);
        v245 = *v223;

        v246 = sub_219BF46D4();
        if (v246)
        {
          v247 = [v246 identifier];
          v248 = v225;
          v249 = v123;
          v250 = sub_219BF5414();
          v387 = v245;
          v252 = v251;
          swift_unknownObjectRelease();

          (*(v121 + 8))(v122, v249);
          (*(v390 + 8))(v248, v389);
          v235 = v388;
          *v388 = v250;
          v235[1] = v252;
          v236 = 4;
          goto LABEL_51;
        }

LABEL_52:

        (*(v121 + 8))(v122, v123);
        (*(v390 + 8))(v225, v389);
        v273 = type metadata accessor for TagFeedRouteModel();
        (*(*(v273 - 8) + 56))(v388, 1, 1, v273);
        goto LABEL_53;
      }

      if (v224 == *MEMORY[0x277D33DF8])
      {
        (*(v129 + 96))(v223, v128);
        v264 = *v223;

        v265 = sub_219BF4BE4();
        if (v265)
        {
          v266 = [v265 identifier];
          v267 = v225;
          v268 = v123;
          v269 = sub_219BF5414();
          v387 = v264;
          v271 = v270;
          swift_unknownObjectRelease();

          (*(v121 + 8))(v122, v268);
          (*(v390 + 8))(v267, v389);
          v235 = v388;
          *v388 = v269;
          v235[1] = v271;
          v236 = 7;
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      v281 = *MEMORY[0x277D33E00];
      v282 = v224;
      (*(v121 + 8))(v122, v123);
      (*(v390 + 8))(v225, v389);
      (*(v129 + 8))(v223, v128);
      if (v282 != v281 && v282 != *MEMORY[0x277D33E18] && v282 != *MEMORY[0x277D33DE8] && v282 != *MEMORY[0x277D33E10])
      {
        v283 = type metadata accessor for TagFeedRouteModel();
        (*(*(v283 - 8) + 56))(v388, 1, 1, v283);
        return sub_219869D68(v125, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      sub_219869D68(v125, &qword_280E90180, MEMORY[0x277D33E20]);
LABEL_5:
      v92 = type metadata accessor for TagFeedRouteModel();
      return (*(*(v92 - 8) + 56))(v388, 1, 1, v92);
    case 5u:
    case 6u:
    case 8u:
    case 0xDu:
      (*(v390 + 8))(v391, v389);
      v89 = type metadata accessor for TagFeedModel;
LABEL_3:
      v90 = v89;
      v91 = v81;
      goto LABEL_4;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v186 = *(v185 + 48);
      v187 = v318;
      v188 = v317;
      v189 = v319;
      (*(v318 + 32))(v317, v81, v319);
      v190 = v371;
      v191 = v372;
      (*(v371 + 32))(v78, &v81[v186], v372);
      v192 = v314;
      sub_219BF07D4();
      v193 = sub_219BEC4F4();
      (*(v315 + 8))(v192, v316);
      sub_219BF07F4();
      v194 = v392;
      v195 = WitnessTable;
      sub_219BF63B4();

      v196 = v391;
      sub_219857EE4(v193, v195, v387, a1, v391, v382, v388);
      swift_unknownObjectRelease();
      (*(v385 + 8))(v195, v386);
      (*(v190 + 8))(v78, v191);
      (*(v187 + 8))(v188, v189);
      return (*(v390 + 8))(v196, v389);
    case 9u:
      v197 = v348;
      v198 = v345;
      v199 = v81;
      v200 = v349;
      (*(v348 + 32))(v345, v199, v349);
      v201 = v351;
      sub_219BF07D4();
      v202 = v365;
      sub_219BEDAD4();
      (*(v353 + 8))(v201, v355);
      (*(v197 + 8))(v198, v200);
      (*(v390 + 8))(v391, v389);
      v203 = sub_219BF1DA4();
      v204 = *(v203 - 8);
      if ((*(v204 + 48))(v202, 1, v203) == 1)
      {
        v205 = type metadata accessor for TagFeedRouteModel();
        v206 = *(*(v205 - 8) + 56);
        v207 = v388;
      }

      else
      {
        v237 = v303;
        sub_219869C88(v202, v303, &qword_280E905C0, MEMORY[0x277D33610]);
        v238 = (*(v204 + 88))(v237, v203);
        v239 = v388;
        if (v238 == *MEMORY[0x277D33608])
        {
          (*(v204 + 96))(v237, v203);
          (*(v304 + 32))(v239, v237, v305);
          v240 = type metadata accessor for TagFeedRouteModel();
          swift_storeEnumTagMultiPayload();
          (*(*(v240 - 8) + 56))(v239, 0, 1, v240);
          return sub_219869D68(v202, &qword_280E905C0, MEMORY[0x277D33610]);
        }

        (*(v204 + 8))(v237, v203);
        v205 = type metadata accessor for TagFeedRouteModel();
        v206 = *(*(v205 - 8) + 56);
        v207 = v239;
      }

      v206(v207, 1, 1, v205);
      return sub_219869D68(v202, &qword_280E905C0, MEMORY[0x277D33610]);
    case 0xAu:
      (*(v375 + 32))(v374, v81, v376);
      v157 = (v387 + *((*MEMORY[0x277D85000] & *v387) + 0xA8));
      v158 = __swift_project_boxed_opaque_existential_1(v157, v157[3]);
      v159 = v320;
      sub_219BF07D4();
      v160 = sub_219BF06B4();
      (*(v321 + 8))(v159, v322);
      v161 = sub_219BF07B4();
      v382 = v162;
      WitnessTable = swift_getWitnessTable();
      v163 = v391;
      v164 = sub_219BF04D4();
      sub_2198587BC(v164, v165, v381);

      v167 = v385;
      v166 = v386;
      v168 = v373;
      (*(v385 + 104))(v373, *MEMORY[0x277D32EB0], v386);
      (*(v167 + 56))(v168, 0, 1, v166);
      v169 = v366;
      sub_219BDE4B4();
      v170 = v378;
      (*(v383 + 56))(v169, 0, 1, v378);
      v171 = *v158;
      v172 = *(*v158 + 16);
      v173 = [objc_msgSend(v160 sourceChannel)];
      swift_unknownObjectRelease();
      if (!v173)
      {
        sub_219BF5414();
        v173 = sub_219BF53D4();
      }

      v174 = [v172 hasMutedSubscriptionForTagID_];

      if (!v174)
      {
        goto LABEL_56;
      }

      v175 = v302;
      sub_219869C88(v169, v302, &unk_280EE8C40, MEMORY[0x277D30018]);
      v176 = v383;
      if ((*(v383 + 48))(v175, 1, v170) == 1)
      {
        v177 = MEMORY[0x277D30018];
        sub_219869D68(v169, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v375 + 8))(v374, v376);
        (*(v390 + 8))(v163, v389);
        v178 = v175;
        v179 = &unk_280EE8C40;
        v180 = v177;
LABEL_20:
        sub_219869D68(v178, v179, v180);
LABEL_57:
        v274 = v387;
        v275 = v388;
        v276 = WitnessTable;
        v277 = v382;
        v278 = 0;
        goto LABEL_58;
      }

      v253 = v298;
      (*(v176 + 32))(v298, v175, v170);
      if ((sub_219BDE4A4() & 1) == 0)
      {
        (*(v176 + 8))(v253, v170);
LABEL_56:
        sub_219869D68(v169, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v375 + 8))(v374, v376);
        (*(v390 + 8))(v163, v389);
        goto LABEL_57;
      }

      __swift_project_boxed_opaque_existential_1((v171 + 24), *(v171 + 48));
      v254 = v381;
      sub_219BDE4C4();
      v255 = v294;
      sub_219BDEA24();
      v256 = v255;
      sub_219869D68(v254, &qword_280EE8D20, MEMORY[0x277D2FD40]);
      v257 = v292;
      v258 = v255;
      v259 = v293;
      if ((*(v292 + 48))(v258, 1, v293) == 1)
      {
        (*(v383 + 8))(v298, v170);
        sub_219869D68(v366, &unk_280EE8C40, MEMORY[0x277D30018]);
        (*(v375 + 8))(v374, v376);
        (*(v390 + 8))(v163, v389);
        v179 = &unk_280EE8D10;
        v180 = MEMORY[0x277D2FD50];
        v178 = v256;
        goto LABEL_20;
      }

      v284 = *(v257 + 32);
      v285 = v291;
      v284(v291, v256, v259);
      v286 = swift_allocObject();
      *(v286 + 40) = v259;
      *(v286 + 48) = sub_2186CC41C(&qword_27CC11940, MEMORY[0x277D2FD50]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v286 + 16));
      v284(boxed_opaque_existential_1, v285, v259);
      (*(v383 + 8))(v298, v170);
      sub_219869D68(v366, &unk_280EE8C40, MEMORY[0x277D30018]);
      (*(v375 + 8))(v374, v376);
      (*(v390 + 8))(v163, v389);
      v274 = 0;
      v288 = v382;
      *(v286 + 56) = v161;
      *(v286 + 64) = v288;
      v289 = v387;
      *(v286 + 72) = v160;
      *(v286 + 80) = v289;
      v278 = 1;
      v161 = v286;
      *(v286 + 88) = WitnessTable;
      *(v286 + 96) = 0;
      v277 = 0;
      v160 = 0;
      v276 = 0;
      v275 = v388;
LABEL_58:
      *v275 = v161;
      v275[1] = v277;
      v275[2] = v160;
      v275[3] = v274;
      v275[4] = v276;
      *(v275 + 40) = v278;
      v279 = type metadata accessor for TagFeedRouteModel();
      swift_storeEnumTagMultiPayload();
      (*(*(v279 - 8) + 56))(v275, 0, 1, v279);
      v280 = v387;

      return v280;
    case 0xBu:
      v208 = v327;
      v209 = v326;
      v210 = v328;
      (*(v327 + 32))(v326, v81, v328);
      v211 = v329;
      sub_219BF07D4();
      v212 = sub_219BF0AA4();
      (*(v330 + 8))(v211, v331);
      v213 = v334;
      v214 = *(v334 + 20);
      v215 = sub_219BF24E4();
      v216 = v333;
      (*(*(v215 - 8) + 56))(&v333[v214], 1, 1, v215);
      v217 = sub_219BE5F84();
      v219 = v218;
      (*(v208 + 8))(v209, v210);
      (*(v390 + 8))(v391, v389);
      *v216 = v212;
      *(v216 + 8) = 0;
      *(v216 + 16) = 1;
      v220 = (v216 + v213[6]);
      *v220 = v217;
      v220[1] = v219;
      v221 = (v216 + v213[7]);
      *v221 = 0;
      v221[1] = 0;
      v222 = (v216 + v213[8]);
      *v222 = 0;
      v222[1] = 0;
      v119 = v388;
      sub_219867CDC(v216, v388, type metadata accessor for PuzzleModel);
      v120 = type metadata accessor for TagFeedRouteModel();
      goto LABEL_28;
    case 0xCu:
      v144 = v335;
      v145 = v332;
      v146 = v336;
      (*(v335 + 32))(v332, v81, v336);
      v147 = v337;
      sub_219BF07D4();
      sub_219BEDB74();
      (*(v338 + 8))(v147, v339);
      v119 = v388;
      sub_219BDD644();
      (*(v144 + 8))(v145, v146);
LABEL_14:
      (*(v390 + 8))(v391, v389);
      v120 = type metadata accessor for TagFeedRouteModel();
      goto LABEL_28;
    case 0xEu:
      v94 = v346;
      v95 = v350;
      (*(v377 + 32))(v346, v81, v350);
      v96 = sub_219BE5F84();
      v97 = v342;
      *v342 = v96;
      v97[1] = v98;
      (*(v340 + 104))(v97, *MEMORY[0x277D2FDC8], v341);
      v99 = sub_219BDD944();
      (*(*(v99 - 8) + 56))(v343, 1, 1, v99);
      v100 = v379;
      sub_219BDDBD4();
      v382 = *(v387 + *((*MEMORY[0x277D85000] & *v387) + 0xB0));
      v101 = v347;
      sub_219BF07D4();
      v102 = sub_219BF0AF4();
      v375 = v103;
      v376 = v102;
      v104 = *(v354 + 8);
      v105 = v356;
      v104(v101, v356);
      v106 = v352;
      sub_219BF07D4();
      sub_219BF0B44();
      v104(v106, v105);
      v107 = v357;
      v108 = v358;
      (*(v357 + 16))(v344, v100, v358);
      v109 = sub_219BF04D4();
      sub_2198587BC(v109, v110, v381);

      v112 = v385;
      v111 = v386;
      v113 = v373;
      (*(v385 + 104))(v373, *MEMORY[0x277D32EB0], v386);
      (*(v112 + 56))(v113, 0, 1, v111);
      v114 = v325;
      sub_219BDE4B4();
      (*(v383 + 56))(v114, 0, 1, v378);
      sub_219BF07F4();
      v115 = v392;
      sub_219BF63B4();

      v116 = v359;
      sub_219BDEB04();
      swift_getWitnessTable();
      v117 = v360;
      sub_219BDE2F4();
      (*(v361 + 8))(v116, v363);
      sub_219BDEA04();
      sub_219BDEBC4();

      v118 = sub_219BDE9F4();
      (*(v362 + 8))(v117, v364);
      (*(v107 + 8))(v379, v108);
      (*(v377 + 8))(v94, v95);
      (*(v390 + 8))(v391, v389);
      v119 = v388;
      *v388 = v118;
      v120 = type metadata accessor for TagFeedRouteModel();
LABEL_28:
      swift_storeEnumTagMultiPayload();
      return (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
    default:
      (*(v390 + 8))(v391, v389);

      sub_2186F0CC0();
      v90 = type metadata accessor for TagFeedGapLocation;
      v91 = &v81[*(v181 + 48)];
LABEL_4:
      sub_219869D08(v91, v90);
      goto LABEL_5;
  }
}