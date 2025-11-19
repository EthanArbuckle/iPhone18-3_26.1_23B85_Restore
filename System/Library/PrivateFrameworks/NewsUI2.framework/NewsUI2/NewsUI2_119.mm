unint64_t sub_21942A168()
{
  result = qword_280EB0DC8;
  if (!qword_280EB0DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0DC8);
  }

  return result;
}

unint64_t sub_21942A1C0()
{
  result = qword_280EB0DD0;
  if (!qword_280EB0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0DD0);
  }

  return result;
}

uint64_t type metadata accessor for LatestRecipesTagFeedGroupConfigData()
{
  result = qword_280E9D618;
  if (!qword_280E9D618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21942A288@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21942A7B8(0, &qword_280E8C8C0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21942A764();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 42;
    v13 = type metadata accessor for LatestRecipesTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21942A4F0(void *a1)
{
  v3 = v1;
  sub_21942A7B8(0, &qword_27CC1A2E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21942A764();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for LatestRecipesTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21942A6BC(uint64_t a1)
{
  v2 = sub_21942A764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21942A6F8(uint64_t a1)
{
  v2 = sub_21942A764();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21942A764()
{
  result = qword_280E9D650;
  if (!qword_280E9D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D650);
  }

  return result;
}

void sub_21942A7B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21942A764();
    v7 = a3(a1, &type metadata for LatestRecipesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21942A830()
{
  result = qword_27CC1A2F0;
  if (!qword_27CC1A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A2F0);
  }

  return result;
}

unint64_t sub_21942A888()
{
  result = qword_280E9D640;
  if (!qword_280E9D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D640);
  }

  return result;
}

unint64_t sub_21942A8E0()
{
  result = qword_280E9D648;
  if (!qword_280E9D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D648);
  }

  return result;
}

uint64_t type metadata accessor for LatestRecipesTagFeedGroupKnobs()
{
  result = qword_280EAC730;
  if (!qword_280EAC730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21942A9A8()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      sub_219BEF244();
      if (v2 <= 0x3F)
      {
        sub_2186F95C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21942AA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a2;
  v36 = a5;
  v38 = a6;
  v39 = a4;
  v34 = a3;
  sub_219123FEC(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_219BEF244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v33 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  sub_2189AD5C8();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_219124040(a1, v15, &qword_280E91A70, sub_2189AD5C8);
  v21 = *(v18 + 48);
  if (v21(v15, 1, v17) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CB40(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE974();
    if (v21(v15, 1, v17) != 1)
    {
      sub_2191240AC(v15, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v15, v17);
  }

  v22 = v38;
  (*(v18 + 32))(v38, v20, v17);
  if (v35)
  {
    v23 = v35;
  }

  else
  {
    v40 = 1;
    sub_2186F9548();
    swift_allocObject();
    v23 = sub_219BEF534();
  }

  v24 = v39;
  v25 = v34;
  v26 = type metadata accessor for LatestRecipesTagFeedGroupKnobs();
  *(v22 + v26[5]) = v23;
  if (v25)
  {

    v27 = v25;
  }

  else
  {
    v40 = 12;
    sub_2186F9548();
    swift_allocObject();

    v27 = sub_219BEF534();
  }

  *(v22 + v26[6]) = v27;
  sub_219124040(v24, v9, &qword_280E916D0, MEMORY[0x277D324F0]);
  v28 = *(v11 + 48);
  v29 = v10;
  if (v28(v9, 1, v10) == 1)
  {

    v30 = v33;
    sub_219BEF1C4();
    if (v28(v9, 1, v29) != 1)
    {
      sub_2191240AC(v9, &qword_280E916D0, MEMORY[0x277D324F0]);
    }
  }

  else
  {
    v30 = v33;
    (*(v11 + 32))(v33, v9, v29);
  }

  (*(v11 + 32))(v22 + v26[7], v30, v29);
  v31 = v36;
  if (!v36)
  {
    LOBYTE(v40) = 1;
    sub_2186F95C4();
    swift_allocObject();
    v31 = sub_219BEF534();
  }

  sub_2191240AC(v39, &qword_280E916D0, MEMORY[0x277D324F0]);
  result = sub_2191240AC(v37, &qword_280E91A70, sub_2189AD5C8);
  *(v22 + v26[8]) = v31;
  return result;
}

uint64_t sub_21942B00C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v62 = sub_219BEF244();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v67 = v4;
  v61 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for LatestRecipesTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v60);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v50 - v12;
  sub_219123FEC(0, &qword_280E91A70, sub_2189AD5C8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v69 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v50 - v16;
  sub_21942BF80(0, &qword_280E8CB30, MEMORY[0x277D844C8]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21942BEC8();
  v22 = v70;
  sub_219BF7B34();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v53 = v11;
  v55 = 0;
  v56 = v19;
  v58 = v7;
  v51 = a1;
  LOBYTE(v75) = 0;
  sub_21877CB40(&qword_280E91A88, sub_2189AD5C8);
  v25 = v67;
  v24 = v68;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v74) = 1;
  sub_21877CB40(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v59 = v75;
  LOBYTE(v73) = 2;
  sub_219BF7674();
  v70 = v74;
  LOBYTE(v73) = 3;
  sub_21877CB40(&qword_280E916D8, MEMORY[0x277D324F0]);
  v26 = v62;
  sub_219BF7674();
  sub_2186F95C4();
  v28 = v27;
  LOBYTE(v72) = 4;
  sub_21877CB40(&qword_280E913F8, sub_2186F95C4);
  v57 = v18;
  v50 = v28;
  sub_219BF7674();
  v52 = v73;
  v29 = v69;
  sub_219124040(v24, v69, &qword_280E91A70, sub_2189AD5C8);
  v30 = v61;
  v31 = *(v61 + 48);
  v32 = v31(v29, 1, v25);
  v54 = v21;
  if (v32 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CB40(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v33 = v63;
    sub_219BEE974();
    v34 = v67;
    v35 = v31(v69, 1, v67);
    v36 = v60;
    if (v35 != 1)
    {
      sub_2191240AC(v69, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    v33 = v63;
    v34 = v67;
    (*(v30 + 32))(v63, v69, v67);
    v36 = v60;
  }

  v37 = *(v30 + 32);
  v38 = v58;
  v37(v58, v33, v34);
  v39 = v64;
  v40 = v53;
  if (v59)
  {
    v41 = v59;
  }

  else
  {
    v72 = 1;
    swift_allocObject();
    v41 = sub_219BEF534();
  }

  *(v38 + v36[5]) = v41;
  v42 = v70;
  if (v70)
  {

    v43 = v42;
  }

  else
  {
    v72 = 12;
    swift_allocObject();

    v43 = sub_219BEF534();
  }

  *(v38 + v36[6]) = v43;
  sub_219124040(v71, v40, &qword_280E916D0, MEMORY[0x277D324F0]);
  v44 = v65;
  v45 = *(v65 + 48);
  if (v45(v40, 1, v26) == 1)
  {

    sub_219BEF1C4();
    v46 = v45(v40, 1, v26);
    v47 = v66;
    v48 = v57;
    if (v46 != 1)
    {
      sub_2191240AC(v40, &qword_280E916D0, MEMORY[0x277D324F0]);
    }
  }

  else
  {
    (*(v44 + 32))(v39, v40, v26);

    v47 = v66;
    v48 = v57;
  }

  (*(v44 + 32))(v38 + v36[7], v39, v26);
  v49 = v52;
  if (!v52)
  {
    LOBYTE(v72) = 1;
    swift_allocObject();
    v49 = sub_219BEF534();
  }

  sub_2191240AC(v71, &qword_280E916D0, MEMORY[0x277D324F0]);
  sub_2191240AC(v68, &qword_280E91A70, sub_2189AD5C8);
  (*(v56 + 8))(v54, v48);
  *(v38 + v36[8]) = v49;
  sub_21942BF1C(v38, v47);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_21942B9F4(void *a1)
{
  v3 = v1;
  sub_21942BF80(0, &qword_27CC1A2F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21942BEC8();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877CB40(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for LatestRecipesTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186F9548();
    sub_21877CB40(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    LOBYTE(v14) = 3;
    sub_219BEF244();
    sub_21877CB40(&unk_280E916E0, MEMORY[0x277D324F0]);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186F95C4();
    sub_21877CB40(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_21942BD48()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0xD000000000000010;
  v4 = 0x676E6970756F7267;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
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

uint64_t sub_21942BDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21942C1FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21942BE1C(uint64_t a1)
{
  v2 = sub_21942BEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21942BE58(uint64_t a1)
{
  v2 = sub_21942BEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21942BEC8()
{
  result = qword_280EAC758[0];
  if (!qword_280EAC758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAC758);
  }

  return result;
}

uint64_t sub_21942BF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LatestRecipesTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21942BF80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21942BEC8();
    v7 = a3(a1, &type metadata for LatestRecipesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21942BFE4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877CB40(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  v4 = type metadata accessor for LatestRecipesTagFeedGroupKnobs();
  if ((sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0 || (MEMORY[0x21CEC5FB0](a1 + *(v4 + 28), a2 + *(v4 + 28)) & 1) == 0)
  {
    return 0;
  }

  sub_2186F95C4();
  return sub_219BEF504() & 1;
}

unint64_t sub_21942C0F8()
{
  result = qword_27CC1A300;
  if (!qword_27CC1A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A300);
  }

  return result;
}

unint64_t sub_21942C150()
{
  result = qword_280EAC748;
  if (!qword_280EAC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC748);
  }

  return result;
}

unint64_t sub_21942C1A8()
{
  result = qword_280EAC750;
  if (!qword_280EAC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC750);
  }

  return result;
}

uint64_t sub_21942C1FC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x676E6970756F7267 && a2 == 0xED000073656C7552 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2)
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

uint64_t sub_21942C3BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21942CBCC(0, &qword_27CC1A328, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21942CB14();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21942CC30(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21942CB68(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21942C668(uint64_t a1)
{
  v2 = sub_21942CB14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21942C6A4(uint64_t a1)
{
  v2 = sub_21942CB14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21942C720(void *a1)
{
  sub_21942CBCC(0, &qword_27CC1A338, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21942CB14();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21942CC30(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21942C980(uint64_t a1)
{
  result = sub_21942CC30(&unk_27CC1C5A0, type metadata accessor for LatestRecipesTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21942C9D8(void *a1)
{
  a1[1] = sub_21942CC30(&qword_27CC1A320, type metadata accessor for LatestRecipesTagFeedGroup);
  a1[2] = sub_21942CC30(&qword_27CC1C6E0, type metadata accessor for LatestRecipesTagFeedGroup);
  result = sub_21942CC30(&qword_27CC1C7F0, type metadata accessor for LatestRecipesTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_21942CA84(uint64_t a1)
{
  v2 = sub_21942CC30(&qword_27CC1A320, type metadata accessor for LatestRecipesTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_21942CB14()
{
  result = qword_27CC1A330;
  if (!qword_27CC1A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A330);
  }

  return result;
}

uint64_t sub_21942CB68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LatestRecipesTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21942CBCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21942CB14();
    v7 = a3(a1, &type metadata for LatestRecipesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21942CC30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21942CC8C()
{
  result = qword_27CC1A340;
  if (!qword_27CC1A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A340);
  }

  return result;
}

unint64_t sub_21942CCE4()
{
  result = qword_27CC1A348;
  if (!qword_27CC1A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A348);
  }

  return result;
}

unint64_t sub_21942CD3C()
{
  result = qword_27CC1A350;
  if (!qword_27CC1A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A350);
  }

  return result;
}

void sub_21942CDA4()
{
  if (!qword_280E92270)
  {
    type metadata accessor for LatestRecipesTagFeedGroupConfigData();
    sub_21942CE70(&qword_280E9D630, type metadata accessor for LatestRecipesTagFeedGroupConfigData);
    sub_21942CE70(&qword_280E9D638, type metadata accessor for LatestRecipesTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92270);
    }
  }
}

uint64_t sub_21942CE70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LatestRecipesTagFeedGroupEmitter()
{
  result = qword_280EA6468;
  if (!qword_280EA6468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21942CF18()
{
  sub_21942CDA4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LatestRecipesTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280EBE990);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, &qword_280EE9E00);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21942D01C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21942D0C4(a1, a2);
}

uint64_t sub_21942D0C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_2186E4AA8(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_219BEF554();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = sub_219BED8D4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[14] = v7;
  *v7 = v3;
  v7[1] = sub_21942D2B4;

  return sub_21942E290(a2);
}

uint64_t sub_21942D2B4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[15] = a1;
  v4[16] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21942D434, 0, 0);
  }
}

uint64_t sub_21942D434()
{
  v1 = v0[4];
  v2 = type metadata accessor for LatestRecipesTagFeedGroupEmitter();
  v0[17] = v2;
  v3 = (v1 + *(v2 + 32));
  v5 = v3[3];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_21942D508;
  v7 = v0[15];

  return MEMORY[0x282192288](v7, v5, v4);
}

uint64_t sub_21942D508(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_21942DA80;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_21942D630;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21942D630()
{
  sub_21942F354(v0[20], v0[13]);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_21942D6E4;
  v2 = v0[13];
  v3 = v0[3];

  return sub_21942F7D8(v3, v2);
}

uint64_t sub_21942D6E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_21942DB30;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_21942D80C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21942D80C()
{
  v1 = v0[12];
  v9 = v0[11];
  v10 = v0[13];
  v7 = v0[10];
  v2 = v0[9];
  v11 = v0[8];
  v6 = v0[5];
  v8 = v0[2];
  sub_21942CDA4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v3 = sub_219BEE5D4();
  (*(*(v3 - 8) + 56))(v6, 1, 1, v3);

  sub_219BED844();

  (*(v1 + 8))(v10, v9);
  (*(v2 + 32))(v8, v7, v11);
  type metadata accessor for TagFeedGroup();
  swift_storeEnumTagMultiPayload();
  sub_218A59C84();
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_21942DA80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21942DB30()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21942DC00@<X0>(unint64_t *a1@<X8>)
{
  sub_21942CDA4();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0xA000000000000004;
  return result;
}

uint64_t sub_21942DC80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for LatestRecipesTagFeedGroupKnobs();
  a2[4] = sub_21942CE70(&qword_280EAC740, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
  a2[5] = sub_21942CE70(&qword_27CC1A378, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_21942FE24(v2 + v4, boxed_opaque_existential_1);
}

uint64_t sub_21942DD40()
{
  type metadata accessor for LatestRecipesTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_2186E4AA8(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_21942FD88(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_21942DF0C()
{
  sub_21942CDA4();

  return sub_219BEDCA4();
}

uint64_t sub_21942DF38@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E4AA8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21942CDA4();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21942FE88(inited + 32, sub_2188317B0);
  sub_21942FEE8(0);
  a1[3] = v5;
  a1[4] = sub_21942CE70(&qword_27CC1A388, sub_21942FEE8);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21942E0BC()
{
  sub_21942CE70(&qword_27CC1A368, type metadata accessor for LatestRecipesTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_21942E290(uint64_t a1)
{
  v2[109] = v1;
  v2[108] = a1;
  v3 = sub_219BF0354();
  v2[110] = v3;
  v2[111] = *(v3 - 8);
  v2[112] = swift_task_alloc();
  v4 = sub_219BF0BD4();
  v2[113] = v4;
  v2[114] = *(v4 - 8);
  v2[115] = swift_task_alloc();
  v5 = sub_219BEF9C4();
  v2[116] = v5;
  v2[117] = *(v5 - 8);
  v2[118] = swift_task_alloc();
  v2[119] = type metadata accessor for FoodBestOfRecipesClusteringRequest();
  v2[120] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21942E43C, 0, 0);
}

uint64_t sub_21942E43C()
{
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 968) = __swift_project_value_buffer(v1, qword_280F62598);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "LatestRecipes emitter fetching clusters...", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  sub_219BEF164();
  v5 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v5;
  v6 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v6;
  v7 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v7;
  v8 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v8;
  *(v0 + 976) = *(v0 + 176);

  sub_218A410EC(v0 + 144);
  v9 = swift_task_alloc();
  *(v0 + 984) = v9;
  *v9 = v0;
  v9[1] = sub_21942E650;

  return MEMORY[0x2821D23D8](v0 + 784);
}

uint64_t sub_21942E650()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_21942F2BC;
  }

  else
  {

    v2 = sub_21942E76C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21942E76C()
{
  v1 = *(v0 + 784);
  *(v0 + 1000) = v1;
  v2 = *(v0 + 792);
  *(v0 + 1008) = v2;
  v3 = *(v0 + 800);
  *(v0 + 1016) = v3;
  v4 = *(v0 + 808);
  *(v0 + 1024) = v4;
  if (v4 < 0)
  {
    v20 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v21 = v2;
    v22 = v4;
    swift_willThrow();
    v23 = v20;
    sub_218C6F990(v1, v21, v3, v22);
    goto LABEL_6;
  }

  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 928);
  v8 = v3;
  v9 = *(v0 + 920);
  v10 = *(v0 + 912);
  v11 = *(v0 + 904);
  v61 = *(v0 + 992);
  v63 = v2;
  v53 = v4;
  sub_2189B67F4(v1, v2, v8, v4);

  v55 = v8;

  (*(v6 + 104))(v5, *MEMORY[0x277D32840], v7);
  v52 = type metadata accessor for LatestRecipesTagFeedGroupEmitter();
  v60 = v1;
  type metadata accessor for LatestRecipesTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v12 = *(v10 + 8);
  v12(v9, v11);
  v51 = *(v0 + 816);
  sub_219BEF134();
  sub_219BEF524();
  v12(v9, v11);
  v50 = *(v0 + 824);
  sub_219BEF1F4();
  sub_219BEF134();
  sub_219BEF524();

  v12(v9, v11);
  v49 = *(v0 + 832);
  sub_219BEF1B4();
  sub_219BEF134();
  sub_219BEF524();

  v12(v9, v11);
  v62 = *(v0 + 840);
  sub_219BEF1D4();
  sub_219BEF134();
  sub_219BEF524();

  v12(v9, v11);
  sub_219BEF134();
  sub_219BEF524();
  v12(v9, v11);
  v13 = *(v0 + 1072);
  sub_219BEF164();
  if (v61)
  {
    v14 = *(v0 + 944);
    v15 = *(v0 + 936);
    v16 = *(v0 + 928);
    v17 = *(v0 + 896);
    v18 = *(v0 + 888);
    v19 = *(v0 + 880);

    sub_218C6F990(v60, v63, v55, v53);

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
LABEL_6:

    v29 = *(v0 + 8);

    return v29();
  }

  v24 = *(v0 + 384);
  *(v0 + 496) = *(v0 + 368);
  *(v0 + 512) = v24;
  v25 = *(v0 + 352);
  *(v0 + 464) = *(v0 + 336);
  *(v0 + 480) = v25;
  v26 = *(v0 + 288);
  *(v0 + 400) = *(v0 + 272);
  *(v0 + 416) = v26;
  v27 = *(v0 + 320);
  *(v0 + 432) = *(v0 + 304);
  *(v0 + 448) = v27;
  v28 = *(v0 + 488);

  sub_218A410EC(v0 + 400);
  sub_219BEF164();
  v59 = v28;
  v42 = v12;
  v31 = *(v0 + 608);
  *(v0 + 720) = *(v0 + 592);
  *(v0 + 736) = v31;
  v32 = *(v0 + 640);
  *(v0 + 752) = *(v0 + 624);
  *(v0 + 768) = v32;
  v33 = *(v0 + 544);
  *(v0 + 656) = *(v0 + 528);
  *(v0 + 672) = v33;
  v34 = *(v0 + 576);
  *(v0 + 688) = *(v0 + 560);
  *(v0 + 704) = v34;
  v58 = *(v0 + 768);

  sub_218A410EC(v0 + 656);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 960);
  v36 = *(v0 + 952);
  v44 = *(v0 + 936);
  v45 = *(v0 + 928);
  v46 = *(v0 + 944);
  v37 = *(v0 + 920);
  v38 = *(v0 + 904);
  v47 = *(v0 + 888);
  v48 = *(v0 + 880);
  v56 = *(v0 + 896);
  v57 = *(v0 + 872);
  v54 = qword_280F61708;
  sub_219BEF234();
  sub_219BEF134();
  sub_219BEF524();

  v42(v37, v38);
  v43 = *(v0 + 848);
  sub_219BEF224();
  sub_219BEF134();
  sub_219BEF524();

  v42(v37, v38);
  v39 = *(v0 + 856);
  *v35 = v63;
  (*(v44 + 32))(v35 + v36[5], v46, v45);
  *(v35 + v36[6]) = v51;
  *(v35 + v36[7]) = v50;
  *(v35 + v36[8]) = v49;
  *(v35 + v36[9]) = v62;
  (*(v47 + 32))(v35 + v36[10], v56, v48);
  *(v35 + v36[11]) = v13;
  *(v35 + v36[12]) = v59;
  *(v35 + v36[13]) = v58;
  *(v35 + v36[14]) = v54;
  *(v35 + v36[15]) = v43;
  *(v35 + v36[16]) = v39;
  __swift_project_boxed_opaque_existential_1((v57 + *(v52 + 28)), *(v57 + *(v52 + 28) + 24));
  v40 = swift_task_alloc();
  *(v0 + 1032) = v40;
  *v40 = v0;
  v40[1] = sub_21942EEA0;
  v41 = *(v0 + 960);

  return sub_2194FF428(v41);
}

uint64_t sub_21942EEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[130] = a1;
  v5[131] = a2;
  v5[132] = a3;
  v5[133] = v3;

  if (v3)
  {
    v6 = sub_21942F1F8;
  }

  else
  {
    v6 = sub_21942EFC0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21942EFC0()
{
  v24 = v0;

  v1 = sub_219BE5414();
  v2 = sub_219BF6214();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[132];
    v4 = v0[131];
    v5 = v0[130];
    v20 = v0[127];
    v21 = v0[128];
    v6 = v0[126];
    v7 = v0[125];
    v22 = v0[120];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = sub_2194FD4A0(v5, v4, v3);
    v12 = sub_2186D1058(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v1, v2, "LatestRecipes emitter fetched Best Of recipes cluster: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);

    sub_218C6F990(v7, v6, v20, v21);
    v13 = v22;
  }

  else
  {
    v14 = v0[120];
    sub_218C6F990(v0[125], v0[126], v0[127], v0[128]);

    v13 = v14;
  }

  sub_21942FE88(v13, type metadata accessor for FoodBestOfRecipesClusteringRequest);

  v15 = v0[1];
  v16 = v0[132];
  v17 = v0[131];
  v18 = v0[130];

  return v15(v18, v17, v16);
}

uint64_t sub_21942F1F8()
{
  v1 = v0[120];
  sub_218C6F990(v0[125], v0[126], v0[127], v0[128]);
  sub_21942FE88(v1, type metadata accessor for FoodBestOfRecipesClusteringRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_21942F2BC()
{

  v1 = *(v0 + 8);

  return v1();
}

size_t sub_21942F354@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_2186E4AA8(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_219BF3C84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186E4AA8(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v11 = *(sub_219BF3E84() - 8);
  v24[2] = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  if (a1 >> 62)
  {
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  v24[3] = v12;
  if (!v13)
  {
LABEL_13:
    sub_218F0B984(v14);
    sub_218F0BA7C(v14);
    sub_218F0BB90(v14);
    sub_219BF3E74();
    v23 = sub_219BEC004();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    sub_219A95188(v14);
    sub_219A95188(v14);
    sub_219A951A0(v14);
    sub_219A951B8(v14);
    sub_219A952CC(v14);
    sub_219A952E4(v14);
    sub_219A953F8(v14);
    return sub_219BF2024();
  }

  v15 = a1;
  v27 = MEMORY[0x277D84F90];
  result = sub_218C34A88(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v24[0] = v6;
    v24[1] = a2;
    v17 = 0;
    v18 = v27;
    v19 = v15;
    v26 = v15 & 0xC000000000000001;
    v25 = *MEMORY[0x277D34120];
    v24[4] = v8 + 32;
    do
    {
      if (v26)
      {
        v20 = MEMORY[0x21CECE0F0](v17, v19);
      }

      else
      {
        v20 = *(v19 + 8 * v17 + 32);
      }

      *v10 = v20;
      (*(v8 + 104))(v10, v25, v7);
      v27 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_218C34A88(v21 > 1, v22 + 1, 1);
        v18 = v27;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v10, v7);
      v19 = v15;
    }

    while (v13 != v17);
    v6 = v24[0];
    v14 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_21942F7D8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186E4AA8(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[8] = swift_task_alloc();
  sub_2186E4AA8(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[9] = swift_task_alloc();
  sub_2186E4AA8(0, &qword_280E91A70, sub_2189AD5C8, v4);
  v3[10] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for LatestRecipesTagFeedGroupConfigData();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21942F9C4, 0, 0);
}

uint64_t sub_21942F9C4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v21 = *(v0 + 64);
  v6 = type metadata accessor for LatestRecipesTagFeedGroupEmitter();
  v7 = (v5 + *(v6 + 24));
  v23 = v7[4];
  v24 = v7[3];
  __swift_project_boxed_opaque_existential_1(v7, v24);
  sub_21942CDA4();
  v25 = v2;
  sub_219BEDD14();
  v22 = *(v1 + 20);
  *(v0 + 144) = v22;
  v8 = *(v6 + 20);
  sub_2189AD5C8();
  v10 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v4, v5 + v8, v9);
  (*(v11 + 56))(v4, 0, 1, v10);
  sub_219BEF0B4();
  v12 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v13 = sub_219BF35D4();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  *(v0 + 148) = 42;
  sub_21942FD88(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v14 = *(*(v0 + 32) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v15 = sub_219BF2774();
  (*(*(v15 - 8) + 56))(v21, 1, 1, v15);
  v16 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v16 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_218C6F2E0;
  v18 = *(v0 + 104);
  v19 = *(v0 + 48);

  return MEMORY[0x2821921B8](v25 + v22, v19, v18, v24, v23);
}

void sub_21942FD88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_21942CE70(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21942FE24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LatestRecipesTagFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21942FE88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21942FF1C(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_219BDBD34();
  v64 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v55 - v7;
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - v8;
  sub_2186DDDB4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v55 = &v55 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v20 = sub_219BE1B34();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for AudioFeedContentConfig();
  v58 = *(v24 - 8);
  v59 = v24;
  v25 = *(v58 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v62 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  v60 = a1;
  sub_219BE2184();
  (*(v21 + 16))(v23, v63, v20);
  v29 = (*(v21 + 88))(v23, v20);
  if (v29 == *MEMORY[0x277D6CA40])
  {
    (*(v21 + 96))(v23, v20);
    v30 = *v23;
    sub_2187D96F4(v28, v17);
    v31 = v64;
    if ((*(v64 + 48))(v17, 1, v3) == 1)
    {
      sub_2189DD39C(v17);
LABEL_8:
      sub_219430C20();
      swift_allocError();
      sub_2186DDDB4(0, &qword_280EE6E00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v40 = sub_219BE2FF4();
LABEL_18:
      sub_2188594E8(v28, type metadata accessor for AudioFeedContentConfig);
      return v40;
    }

    v35 = v57;
    (*(v31 + 32))(v57, v17, v3);
    v36 = v61;
    sub_219BDBD24();
    sub_219BDBBE4();
    v38 = v37;
    v39 = *(v31 + 8);
    v39(v36, v3);
    v39(v35, v3);
    if (v38 >= v30)
    {
      goto LABEL_8;
    }

LABEL_14:
    sub_219430B14(v28, v62);
    sub_2186DDDB4(0, &qword_280EE6E00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v40 = sub_219BE3014();
    goto LABEL_18;
  }

  v32 = v64;
  if (v29 == *MEMORY[0x277D6CA48])
  {
    (*(v21 + 96))(v23, v20);
    v33 = *v23;
    sub_2187D96F4(v28, v12);
    v34 = v32;
    if ((*(v32 + 48))(v12, 1, v3) == 1)
    {
      sub_2189DD39C(v12);
    }

    else
    {
      v42 = v56;
      (*(v32 + 32))(v56, v12, v3);
      v43 = v61;
      sub_219BDBD24();
      sub_219BDBBE4();
      v45 = v44;
      v46 = *(v34 + 8);
      v46(v43, v3);
      v46(v42, v3);
      if (v45 < v33)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v49 = v60;
    sub_219BE3204();
    v50 = v62;
    sub_219430B14(v28, v62);
    v51 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v52 = swift_allocObject();
    sub_219336A00(v50, v52 + v51);
    *(v52 + ((v25 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;

    v53 = sub_219BE2E54();
    v40 = sub_219BE2F74();

    goto LABEL_18;
  }

  if (v29 == *MEMORY[0x277D6CA20])
  {
    goto LABEL_17;
  }

  if (v29 == *MEMORY[0x277D6CA30])
  {
    sub_2187D96F4(v28, v19);
    v41 = (*(v32 + 48))(v19, 1, v3);
    sub_2189DD39C(v19);
    if (v41 == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (v29 == *MEMORY[0x277D6CA28])
  {
    v47 = v55;
    sub_2187D96F4(v28, v55);
    v48 = (*(v32 + 48))(v47, 1, v3);
    sub_2189DD39C(v47);
    if (v48 != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_219430710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a3;
  v24 = a4;
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DDDB4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v22 - v11;
  sub_218C82694();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 56);
  v23 = a1;
  sub_2187D96F4(a1, v16);
  sub_2187D96F4(a2, &v16[v17]);
  v18 = *(v7 + 48);
  if (v18(v16, 1, v6) != 1)
  {
    sub_2187D96F4(v16, v12);
    if (v18(&v16[v17], 1, v6) != 1)
    {
      (*(v7 + 32))(v9, &v16[v17], v6);
      sub_2186F6B78(&qword_280EE9C80, MEMORY[0x277CC9578]);
      v20 = sub_219BF53A4();
      v21 = *(v7 + 8);
      v21(v9, v6);
      v21(v12, v6);
      sub_2189DD39C(v16);
      if (v20)
      {
        return sub_219430B14(a2, v24);
      }

      goto LABEL_7;
    }

    (*(v7 + 8))(v12, v6);
LABEL_6:
    sub_2188594E8(v16, sub_218C82694);
LABEL_7:
    a2 = v23;
    sub_219BE2164();
    return sub_219430B14(a2, v24);
  }

  if (v18(&v16[v17], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_2189DD39C(v16);
  return sub_219430B14(a2, v24);
}

uint64_t sub_219430A34()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_219430B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedContentConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219430B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AudioFeedContentConfig() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_219430710(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

unint64_t sub_219430C20()
{
  result = qword_27CC1A390;
  if (!qword_27CC1A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A390);
  }

  return result;
}

unint64_t sub_219430C88()
{
  result = qword_27CC1A398;
  if (!qword_27CC1A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A398);
  }

  return result;
}

uint64_t sub_219430CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE9EC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() _searchElement];
  v9 = [v8 _identifier];

  v10 = sub_219BF5414();
  v12 = v11;

  sub_218A557E8(v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_218FE7680(v10, v12, v7);

    (*(v5 + 8))(v7, v4);
    if (v15)
    {
      if (a2)
      {
        type metadata accessor for SearchHomeCoordinatingController();
        sub_219BF6584();
        v16 = v25;
        if (v25)
        {
          v17 = [*&v25[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController] parentViewController];
          if (v17 && (v18 = v17, sub_218805E54(), v19 = v16, v20 = sub_219BF6DD4(), v19, v18, (v20 & 1) != 0))
          {
            sub_219B5F1FC(a1, a2, 0, 6);
          }

          else
          {
            v21 = &v16[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchTerm];
            *v21 = a1;
            v21[1] = a2;

            v22 = &v16[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchOrigination];
            *v22 = 6;
            v22[8] = 0;
          }
        }
      }
    }
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  return v15;
}

uint64_t sub_219430F5C(void *a1, uint64_t a2)
{
  v39 = a2;
  sub_2187C5110();
  v4 = v3;
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v36 = v5;
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE15B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD0A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEA7B4();
  if (*(&v50 + 1))
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v7 + 104))(v9, *MEMORY[0x277D2F480], v6);
      sub_219BDD094();
      (*(v7 + 8))(v9, v6);
      sub_219BDD204();

      (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    sub_218806FD0(&v49);
  }

  sub_2194314FC(v39, &v49);
  if ((v54 & 1) == 0)
  {
    v27 = v50;

    if (sub_219BED0C4())
    {
      return v27;
    }

    sub_219BE9D54();
    [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    v29 = sub_219BE9CE4();
    v30 = sub_219BEA784();
    v31 = v29;
    v30();

    return v31;
  }

  v47[2] = v51;
  v47[3] = v52;
  v48[0] = *v53;
  *(v48 + 10) = *&v53[10];
  v47[0] = v49;
  v47[1] = v50;
  v14 = v35[5];
  v39 = v35[6];
  __swift_project_boxed_opaque_existential_1(v35 + 2, v14);
  sub_219431558();
  v15 = v37;
  v16 = v38;
  v17 = *(v38 + 16);
  v35 = a1;
  v17(v37, a1, v4);
  sub_2194317B8(v47, v40);
  v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v19 = (v36 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v16 + 32))(v20 + v18, v15, v4);
  v21 = (v20 + v19);
  v22 = v40[3];
  v21[2] = v40[2];
  v21[3] = v22;
  v21[4] = v41[0];
  *(v21 + 74) = *(v41 + 10);
  v23 = v40[1];
  *v21 = v40[0];
  v21[1] = v23;
  sub_219BE1E14();

  if (v43)
  {
    sub_2186CB1F0(&v42, v44);
    v25 = v45;
    v26 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v27 = (*(v26 + 8))(v25, v26);
    if (sub_219BED0C4())
    {
      v28 = sub_219BEA784();
      v28(v27);

      sub_2194318B0(v47);
      __swift_destroy_boxed_opaque_existential_1(v44);
      return v27;
    }

    sub_219BE9D54();
    [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    v32 = sub_219BE9CE4();
    v33 = sub_219BEA784();
    v31 = v32;
    v33();

    sub_2194318B0(v47);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return v31;
  }

  __break(1u);
  return result;
}

unint64_t sub_219431558()
{
  result = qword_280ECD1A0[0];
  if (!qword_280ECD1A0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280ECD1A0);
  }

  return result;
}

uint64_t sub_2194315BC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2187C5110();
  v5 = sub_219BEA794();
  v5(a1);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1BA4();
  v6 = *(a3 + 56);
  if (v6)
  {
    v7 = *(a3 + 88);
    v8 = *(a3 + 80);
    v12 = *(a3 + 64);
    v9 = *(a3 + 48);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13[0] = v9;
    v13[1] = v6;
    v14 = v12;
    v15 = v8;
    v16 = v7 & 1;
    sub_219BE1BA4();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EDA89C(a3, v13);
  v10 = qword_219C7DCD8[v16];
  sub_2193341FC(v13);
  v13[0] = v10;
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EDA5B0();
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LOBYTE(v13[0]) = *(a3 + 89);
  return sub_219BE1B84();
}

uint64_t sub_219431814(void *a1)
{
  sub_2187C5110();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_2194315BC(a1, v1 + v5, v6);
}

uint64_t sub_219431958(uint64_t a1)
{
  v3 = sub_219BF2E74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![*(v1 + 24) useOfflineMode] || (__swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56)), (sub_219BEED44() & 1) == 0))
  {
    (*(v4 + 16))(v6, a1, v3);
    v7 = (*(v4 + 88))(v6, v3);
    if (v7 == *MEMORY[0x277D33C18])
    {
      (*(v4 + 96))(v6, v3);
      v8 = sub_219BF3FF4();
      if (v8)
      {
        v9 = v8;
        if ([v8 isRouteable])
        {
          v10 = [v9 isDeprecated];
          swift_unknownObjectRelease();
          if ((v10 & 1) == 0)
          {

            return 1;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      if (qword_280E8D818 != -1)
      {
        swift_once();
      }

      sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_219C09BA0;
      v17 = sub_219BF3FC4();
      v19 = v18;
      *(v16 + 56) = MEMORY[0x277D837D0];
      *(v16 + 64) = sub_2186FC3BC();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      sub_219BF6214();
      sub_219BE5314();
    }

    else if (v7 == *MEMORY[0x277D33C20])
    {
      (*(v4 + 96))(v6, v3);
      v12 = [*v6 sportsEventIDs];
      if (v12)
      {
        v13 = v12;
        v14 = sub_219BF5924();

        swift_unknownObjectRelease();
        v15 = *(v14 + 16);

        if (v15 == 1)
        {
          return 1;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_219431CA0(uint64_t a1)
{
  sub_21896FA3C();
  v77 = *(v2 - 8);
  v3 = *(v77 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v73 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v73 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v73 - v12;
  v14 = sub_219BF2E74();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277D33C18])
  {
    (*(v15 + 96))(v17, v14);
    v19 = sub_219BF3FF4();
    if (v19)
    {
      v20 = v19;
      if (([v19 isRouteable] & 1) != 0 && (objc_msgSend(v20, sel_isDeprecated) & 1) == 0)
      {
        v37 = [v20 identifier];
        v38 = sub_219BF5414();
        v40 = v39;

        v41 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
        *&v92 = v38;
        *(&v92 + 1) = v40;
        *&v93 = v41;
        *(&v93 + 1) = MEMORY[0x277D84F90];
        LOBYTE(v94) = 1;
        *(&v94 + 1) = v78;
        DWORD1(v94) = *(&v78 + 3);
        *(&v94 + 1) = 8;
        v95 = 0u;
        v96 = 0u;
        v97 = -1;
        v42 = *(v76 + 16);
        v43 = swift_allocObject();
        v44 = v95;
        *(v43 + 48) = v94;
        *(v43 + 64) = v44;
        *(v43 + 80) = v96;
        *(v43 + 96) = v97;
        v45 = v93;
        v46 = v43 | 0x2000000000000006;
        *(v43 + 16) = v92;
        *(v43 + 32) = v45;
        v75 = v43;
        v47 = sub_219BDFA44();
        (*(*(v47 - 8) + 56))(v13, 1, 1, v47);
        v91 = 0;
        v89 = 0u;
        v90 = 0u;
        v88 = 0;
        v86 = 0u;
        v87 = 0u;
        v85 = v42;
        sub_2187B171C(&v86, &v81, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (v82)
        {
          sub_21875F93C(&v81, &v83);
          sub_218B5A004(&v92, &v78);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v48 = qword_280ED32E0;
          v49 = qword_280ED32E8;
          v76 = qword_280ED32D8;

          v73 = v49;
          v74 = v48;
          sub_2188202A8(v48);
          __swift_destroy_boxed_opaque_existential_1(&v83);
        }

        else
        {
          sub_218B5A004(&v92, &v78);
          sub_2187B1CC0(&v81, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v61 = qword_280ED32E0;
          v62 = qword_280ED32E8;
          v76 = qword_280ED32D8;

          v73 = v62;
          v74 = v61;
          sub_2188202A8(v61);
        }

        *&v81 = v46;
        v83 = 0u;
        v84 = 0u;
        sub_2189B4E2C(v13, v11);
        sub_2187B171C(&v89, &v78, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v63 = (*(v77 + 80) + 24) & ~*(v77 + 80);
        v64 = (v3 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
        v65 = (v64 + 47) & 0xFFFFFFFFFFFFFFF8;
        v66 = swift_allocObject();
        *(v66 + 16) = 0;
        sub_2189B4EAC(v11, v66 + v63);
        v67 = v66 + v64;
        v68 = v79;
        *v67 = v78;
        *(v67 + 16) = v68;
        *(v67 + 32) = v80;
        v69 = (v66 + v65);
        v70 = (v66 + ((v65 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v69 = 0;
        v69[1] = 0;
        v72 = v73;
        v71 = v74;
        *v70 = v76;
        v70[1] = v71;
        v70[2] = v72;

        sub_2188202A8(v71);
        sub_2186CF94C();
        sub_2189B4DD4();
        sub_219BEB464();

        swift_unknownObjectRelease();

        sub_2187FABEC(v71);
        sub_218B5A060(&v92);
        sub_2187B1CC0(&v86, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1CC0(&v89, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218A42D80(v13);
        sub_218806FD0(&v83);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  if (v18 != *MEMORY[0x277D33C20])
  {
    return (*(v15 + 8))(v17, v14);
  }

  (*(v15 + 96))(v17, v14);
  v22 = *v17;
  v23 = [*v17 sportsEventIDs];
  if (v23)
  {
    v24 = v23;
    v25 = sub_219BF5924();

    if (v25[2])
    {
      v75 = v22;
      v26 = v25[4];
      v27 = v25[5];

      v28 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
      *&v92 = v26;
      *(&v92 + 1) = v27;
      *&v93 = v28;
      *(&v93 + 1) = MEMORY[0x277D84F90];
      LOBYTE(v94) = 1;
      *(&v94 + 1) = v78;
      DWORD1(v94) = *(&v78 + 3);
      *(&v94 + 1) = 8;
      v95 = 0u;
      v96 = 0u;
      v97 = -1;
      v29 = *(v76 + 16);
      v30 = swift_allocObject();
      v31 = v95;
      *(v30 + 48) = v94;
      *(v30 + 64) = v31;
      *(v30 + 80) = v96;
      *(v30 + 96) = v97;
      v32 = v93;
      *(v30 + 16) = v92;
      *(v30 + 32) = v32;
      v33 = sub_219BDFA44();
      (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      v85 = v29;
      sub_2187B171C(&v86, &v81, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (v82)
      {
        sub_21875F93C(&v81, &v83);
        sub_218B5A004(&v92, &v78);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v35 = qword_280ED32D8;
        v34 = qword_280ED32E0;
        v36 = qword_280ED32E8;

        v76 = v34;
        v74 = v36;
        sub_2188202A8(v34);
        __swift_destroy_boxed_opaque_existential_1(&v83);
      }

      else
      {
        sub_218B5A004(&v92, &v78);
        sub_2187B1CC0(&v81, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v35 = qword_280ED32D8;
        v50 = qword_280ED32E0;
        v51 = qword_280ED32E8;

        v76 = v50;
        v74 = v51;
        sub_2188202A8(v50);
      }

      *&v81 = v30 | 0x2000000000000006;
      v83 = 0u;
      v84 = 0u;
      sub_2189B4E2C(v8, v5);
      sub_2187B171C(&v89, &v78, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v52 = (*(v77 + 80) + 24) & ~*(v77 + 80);
      v53 = (v3 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = (v53 + 47) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      sub_2189B4EAC(v5, v55 + v52);
      v56 = v55 + v53;
      v57 = v79;
      *v56 = v78;
      *(v56 + 16) = v57;
      *(v56 + 32) = v80;
      v58 = (v55 + v54);
      v59 = (v55 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v58 = 0;
      v58[1] = 0;
      v60 = v76;
      *v59 = v35;
      v59[1] = v60;
      v59[2] = v74;

      sub_2188202A8(v60);
      sub_2186CF94C();
      sub_2189B4DD4();
      sub_219BEB464();

      swift_unknownObjectRelease();

      sub_2187FABEC(v60);
      sub_218B5A060(&v92);
      sub_2187B1CC0(&v86, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v89, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218A42D80(v8);
      sub_218806FD0(&v83);
    }
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_219432960()
{
  result = qword_27CC1A3A0;
  if (!qword_27CC1A3A0)
  {
    sub_2194329B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A3A0);
  }

  return result;
}

void sub_2194329B8()
{
  if (!qword_27CC1A3A8)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A3A8);
    }
  }
}

uint64_t sub_219432A08()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219432AA4()
{
  sub_219BF5524();
}

uint64_t sub_219432B2C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219432BC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219432EAC();
  *a1 = result;
  return result;
}

void sub_219432BF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73657069636572;
  if (v2 != 1)
  {
    v5 = 1936154996;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73656C6369747261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_219432C4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73657069636572;
  if (v2 != 1)
  {
    v4 = 1936154996;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73656C6369747261;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73657069636572;
  if (*a2 != 1)
  {
    v8 = 1936154996;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73656C6369747261;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
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

unint64_t sub_219432E04()
{
  result = qword_27CC1A3B0;
  if (!qword_27CC1A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A3B0);
  }

  return result;
}

uint64_t sub_219432E58()
{
  v1 = 0x73657069636552;
  if (*v0 != 1)
  {
    v1 = 1936154964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C6369747241;
  }
}

uint64_t sub_219432EAC()
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

uint64_t sub_219432F20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194333C0(0, &qword_280E8C848, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21943336C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219433168(uint64_t a1)
{
  v2 = sub_21943336C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194331A4(uint64_t a1)
{
  v2 = sub_21943336C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2194331F8(void *a1)
{
  sub_2194333C0(0, &qword_280E8C250, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21943336C();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21943336C()
{
  result = qword_280E9A9E0[0];
  if (!qword_280E9A9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9A9E0);
  }

  return result;
}

void sub_2194333C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21943336C();
    v7 = a3(a1, &type metadata for SavedStoriesTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219433438()
{
  result = qword_27CC1A3B8;
  if (!qword_27CC1A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A3B8);
  }

  return result;
}

unint64_t sub_219433490()
{
  result = qword_280E9A9D0;
  if (!qword_280E9A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9A9D0);
  }

  return result;
}

unint64_t sub_2194334E8()
{
  result = qword_280E9A9D8;
  if (!qword_280E9A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9A9D8);
  }

  return result;
}

uint64_t TagModel.identifier.getter()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_219BF5414();

  return v2;
}

id sub_21943359C()
{
  v1 = *(v0 + 16);
  v2 = [v1 asSports];
  if (v2 && (v3 = [v2 sportsLeagueType], swift_unknownObjectRelease(), (v3 & 0xFFFFFFFFFFFFFFFELL) == 2))
  {
    result = [v1 asSports];
    if (!result)
    {
      return result;
    }

    v5 = [result sportsSecondaryName];
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = sub_219BF5414();
LABEL_10:
      v10 = v6;

      return v10;
    }
  }

  else
  {
    result = sub_21943391C();
    if (v7)
    {
      return result;
    }

    v8 = *(v0 + 27);
    if (v8 & 0x80000000) == 0 && (v8)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v5 = [objc_opt_self() bundleForClass_];
      v6 = sub_219BDB5E4();
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t TagModel.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_219BF7314();

  v3 = *(v1 + 16);
  v4 = [v3 identifier];
  v5 = sub_219BF5414();
  v7 = v6;

  MEMORY[0x21CECC330](v5, v7);

  v8 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v9 = sub_219BF53D4();

  v10 = [v8 initWithString_];

  if (v10)
  {
    sub_219BF5534();
    v11 = sub_219BF6AF4();

    if (v11)
    {
      v12 = [v3 name];
      sub_219BF5414();

      sub_219BEAF74();
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_219BEAF84();
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, v13, 1, v14);
}

uint64_t sub_2194338F0(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 ^ v2 ^ 1;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 < 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

id sub_21943391C()
{
  result = [*(v0 + 16) asSports];
  if (result)
  {
    v2 = result;
    if (([result sportsLeagueType] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v3 = [v2 sportsSecondaryName];
      if (v3)
      {
LABEL_4:
        v4 = v3;
        v5 = sub_219BF5414();

        swift_unknownObjectRelease();
        return v5;
      }

      goto LABEL_10;
    }

    v6 = [v2 sportsType];
    if (v6 > 5)
    {
      if (v6 != 7)
      {
LABEL_10:
        swift_unknownObjectRelease();
        return 0;
      }
    }

    else if (v6 != 1)
    {
      goto LABEL_10;
    }

    v3 = [v2 sportsSecondaryName];
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t TagModel.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TagModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t TagModel.description.getter()
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0x6C65646F4D676154, 0xED00003D67617428);
  v1 = *(v0 + 16);
  sub_2186D8870();
  sub_219BF7484();
  MEMORY[0x21CECC330](0x3D656D616E202CLL, 0xE700000000000000);
  v2 = [v1 name];
  v3 = sub_219BF5414();
  v5 = v4;

  MEMORY[0x21CECC330](v3, v5);

  MEMORY[0x21CECC330](0x656372756F73202CLL, 0xE90000000000003DLL);
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219D209A0);
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219D209C0);
  sub_2194341A4();
  v6 = sub_219BF5484();
  MEMORY[0x21CECC330](v6);

  MEMORY[0x21CECC330](0x726373627573202CLL, 0xEF3D6E6F69747069);
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD00000000000001FLL, 0x8000000219D209E0);
  sub_2194341F4();

  v7 = sub_219BF5484();
  MEMORY[0x21CECC330](v7);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0;
}

BOOL _s7NewsUI28TagModelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 16) identifier];
  v5 = sub_219BF5414();
  v7 = v6;

  v8 = [*(a2 + 16) identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_219BF78F4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 25) != *(a2 + 25))
  {
    return 0;
  }

  v14 = *(a1 + 26);
  v15 = *(a2 + 26);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v15 == 2 || ((v15 ^ v14) & 1) != 0)
    {
      return result;
    }
  }

  v17 = *(a1 + 27);
  v18 = *(a2 + 27);
  if (v17 < 0)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else if (v18 < 0)
  {
    return 0;
  }

  if ((v18 ^ v17))
  {
    return 0;
  }

  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  result = (v19 | v20) == 0;
  if (v19)
  {
    if (v20)
    {

      v21 = sub_21947BA68(v19, v20);

      return v21 & 1;
    }
  }

  return result;
}

BOOL _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = [v3 name];
  sub_219BF5414();

  sub_219BF54D4();

  v5 = [v3 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  MEMORY[0x21CECC330](v6, v8);

  v9 = *(a2 + 16);
  v10 = [v9 name];
  sub_219BF5414();

  sub_219BF54D4();

  v11 = [v9 identifier];
  v12 = sub_219BF5414();
  v14 = v13;

  MEMORY[0x21CECC330](v12, v14);

  sub_2187F3BD4();
  v15 = sub_219BF7054();

  return v15 == -1;
}

void sub_2194341A4()
{
  if (!qword_280E8EAF8)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EAF8);
    }
  }
}

void sub_2194341F4()
{
  if (!qword_280E8EA20)
  {
    sub_21943424C();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EA20);
    }
  }
}

void sub_21943424C()
{
  if (!qword_280E8EA28)
  {
    sub_219BE5A04();
    sub_219434384(&qword_280EE5E20, 255, MEMORY[0x277D31AD0]);
    v0 = sub_219BF5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EA28);
    }
  }
}

uint64_t sub_2194342E4(uint64_t a1, uint64_t a2)
{
  result = sub_219434384(qword_280E92B40, a2, type metadata accessor for TagModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219434384(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TagSubscription(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for TagSubscription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2194345A0()
{
  result = qword_27CC1A3C0;
  if (!qword_27CC1A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A3C0);
  }

  return result;
}

unint64_t sub_2194345F8()
{
  result = qword_27CC1A3C8;
  if (!qword_27CC1A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A3C8);
  }

  return result;
}

uint64_t type metadata accessor for SportsFavoritesTagFeedGroupConfigData()
{
  result = qword_280E98B20;
  if (!qword_280E98B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2194346C0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219434BF0(0, &qword_280E8C7B8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219434B9C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 12;
    v13 = type metadata accessor for SportsFavoritesTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219434928(void *a1)
{
  v3 = v1;
  sub_219434BF0(0, &qword_27CC1A3D0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219434B9C();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsFavoritesTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219434AF4(uint64_t a1)
{
  v2 = sub_219434B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219434B30(uint64_t a1)
{
  v2 = sub_219434B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219434B9C()
{
  result = qword_280E98B50[0];
  if (!qword_280E98B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E98B50);
  }

  return result;
}

void sub_219434BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219434B9C();
    v7 = a3(a1, &type metadata for SportsFavoritesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219434C68()
{
  result = qword_27CC1A3D8;
  if (!qword_27CC1A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A3D8);
  }

  return result;
}

unint64_t sub_219434CC0()
{
  result = qword_280E98B40;
  if (!qword_280E98B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98B40);
  }

  return result;
}

unint64_t sub_219434D18()
{
  result = qword_280E98B48;
  if (!qword_280E98B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98B48);
  }

  return result;
}

uint64_t sub_219434D6C(void *a1)
{
  sub_21896FA3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v28[1] = v11;
    v12 = v11 | 0xD000000000000002;
    v13 = sub_219BDFA44();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    v35 = v10;
    sub_2187B14CC(v36, &v31, &unk_280EE7DB0, &qword_280EE7DC0);
    v29 = a1;
    v28[2] = v10;
    if (*(&v32 + 1))
    {
      sub_21875F93C(&v31, v33);
      v14 = qword_280ED32D0;
      v15 = a1;
      if (v14 != -1)
      {
        swift_once();
      }

      v17 = qword_280ED32D8;
      v16 = qword_280ED32E0;
      v18 = qword_280ED32E8;

      sub_2188202A8(v16);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      v19 = a1;
      sub_2187448D0(&v31, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v17 = qword_280ED32D8;
      v16 = qword_280ED32E0;
      v18 = qword_280ED32E8;

      sub_2188202A8(v16);
    }

    v30 = v12;
    v32 = 0u;
    v31 = 0u;
    sub_2189B4E2C(v8, v6);
    sub_2187B14CC(v38, v33, &qword_280EE33A0, &qword_280EE33B0);
    v20 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    sub_2189B4EAC(v6, v23 + v20);
    v24 = v23 + v21;
    v25 = v33[1];
    *v24 = v33[0];
    *(v24 + 16) = v25;
    *(v24 + 32) = v34;
    v26 = (v23 + v22);
    v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v26 = 0;
    v26[1] = 0;
    *v27 = v17;
    v27[1] = v16;
    v27[2] = v18;

    sub_2188202A8(v16);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v16);

    sub_2187448D0(v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(v38, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218A42D80(v8);

    sub_2187448D0(&v31, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  return result;
}

uint64_t sub_219435360()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

id sub_2194353F0()
{
  v1 = sub_219BEA3D4();
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = *(v0 + 24);
  }

  else
  {
    v7 = *(v0 + 16);
    (*(v2 + 104))(v4, *MEMORY[0x277D6EA78]);
    objc_allocWithZone(sub_219BE9C84());
    v8 = v7;
    v9 = v0;
    v10 = sub_219BE9C64();
    v11 = *(v0 + 24);
    *(v9 + 24) = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

void sub_219435508(void *a1)
{
  v3 = *(v1 + 16);

  v4 = [a1 navigationBar];
  v5 = sub_21943585C();
  v7 = v6;
  [v4 frame];
  v9 = v8 * 70.0 / 100.0;
  v10 = sub_219BF63C4();
  v41 = sub_218E934BC(v10, v11);

  [v41 boundingRectWithSize:33 options:0 context:{v9, 1.79769313e308}];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  v16 = OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_titleLabel;
  [*&v3[OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_titleLabel] setFrame_];
  [*&v3[v16] setNumberOfLines_];
  [*&v3[v16] setAttributedText_];
  [*&v3[v16] setLineBreakMode_];
  [*&v3[v16] setTextAlignment_];
  if (v7)
  {
    v17 = sub_218E93674(v5, v7);
    [v17 boundingRectWithSize:33 options:0 context:{v9, 1.79769313e308}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v44.origin.x = x;
    v25 = v24;
    v26 = OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_subtitleLabel;
    v27 = *&v3[OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_subtitleLabel];
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v28 = CGRectGetHeight(v44);
    v45.origin.x = v19;
    v45.origin.y = v21;
    v45.size.width = v23;
    v45.size.height = v25;
    [v27 setFrame_];
    [*&v3[v26] setNumberOfLines_];
    [*&v3[v26] setAttributedText_];
    [*&v3[v26] setTextAlignment_];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_subtitleLabel] setFrame_];
  }

  [*&v3[v16] frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [*&v3[OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_subtitleLabel] frame];
  v48.origin.x = v37;
  v48.origin.y = v38;
  v48.size.width = v39;
  v48.size.height = v40;
  v46.origin.x = v30;
  v46.origin.y = v32;
  v46.size.width = v34;
  v46.size.height = v36;
  v47 = CGRectUnion(v46, v48);
  [*&v3[OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_containerView] setFrame_];
  [v3 setNeedsLayout];
  [v3 layoutIfNeeded];
}

unint64_t sub_21943585C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
  v1 = [objc_msgSend(*(v0 + 72) backingTag)];
  swift_unknownObjectRelease();
  v2 = sub_219BF5414();
  v4 = v3;

  v5 = sub_219579760(v2, v4);

  v6 = *__swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
  result = swift_beginAccess();
  v8 = *(v6 + 24);
  if (!*(v8 + 16))
  {

    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1 << v5[32];
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v5 + 7);
  v15 = (v12 + 63) >> 6;
LABEL_5:
  v16 = v9;
  while (1)
  {
    v17 = v10;
    if (!v14)
    {
      break;
    }

LABEL_11:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(v5 + 6) + ((v11 << 10) | (16 * v19));
    result = *v20;
    v21 = *(v20 + 8);
    if ((v21 - 1) >= 3)
    {
      if (*(v20 + 8))
      {
        if (result >= 2)
        {
          result = sub_218C311F0(result, 4u, v8);
          if ((result & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_16;
      }

      v22 = *v20;
    }

    else
    {
      v22 = 1;
    }

    result = sub_218C311F0(result, v21, v8);
    if ((result & 1) == 0)
    {
      if (v22)
      {
        v10 = 0;
        v9 = 1;
        if ((v17 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
LABEL_24:
        v9 = 0;
        v10 = 1;
        if ((v16 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_31:
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = [objc_opt_self() bundleForClass_];
      v25 = sub_219BDB5E4();

      return v25;
    }

LABEL_16:
    v10 = 0;
    if (v17)
    {
      goto LABEL_24;
    }
  }

  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *&v5[8 * v18 + 56];
    ++v11;
    if (v14)
    {
      v11 = v18;
      goto LABEL_11;
    }
  }

  if (v17 & 1) != 0 || (v16)
  {
    goto LABEL_31;
  }

  return 0;
}

uint64_t sub_219435BDC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 4));

  __swift_destroy_boxed_opaque_existential_1((v0 + 10));

  return swift_deallocClassInstance();
}

uint64_t *sub_219435CA0(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    swift_unknownObjectRetain();
    if (sub_219BE82D4())
    {
      v7 = swift_allocObject();
      v7[2] = v3;
      v7[3] = a2;
      v7[4] = a3;
      swift_unknownObjectRetain();

      sub_219BDD154();
      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_219435DB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v85 = a3;
  v92 = a1;
  v68 = sub_219BE09E4();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BDF104();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_219436B6C(0, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v61 - v9;
  v10 = sub_219BE0724();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BDFE74();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219436B6C(0, &unk_27CC15A90, MEMORY[0x277D6E130], v7);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v61 - v14;
  v15 = sub_219BDF274();
  MEMORY[0x28223BE20](v15 - 8);
  v84 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BDEEB4();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BE0D44();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDF0E4();
  v91 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a2;
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_219436B6C(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v89 = v22;
  v23 = sub_219BDCD44();
  v24 = *(v23 - 8);
  v88 = *(v24 + 72);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  v93 = xmmword_219C09BA0;
  *(v27 + 16) = xmmword_219C09BA0;
  v28 = *MEMORY[0x277CEAD18];
  v90 = *(v24 + 104);
  v90(v27 + v26, v28, v23);
  sub_219436C5C(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  sub_219BDCCC4();

  (*(v91 + 1))(v21, v19);
  v29 = v23;
  v30 = v69;
  sub_219BF6834();
  v31 = swift_allocObject();
  *(v31 + 16) = v93;
  v83 = v26;
  v86 = v24 + 104;
  v90(v31 + v26, v28, v29);
  sub_219436C5C(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v91 = "Filtering by play state";
  v32 = v70;
  sub_219BDCCC4();

  (*(v71 + 8))(v30, v32);
  if (v85)
  {
    v33 = v72;
    sub_219BE8304();
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v72;
  }

  v35 = sub_219BE89F4();
  (*(*(v35 - 8) + 56))(v33, v34, 1, v35);
  sub_219BDF284();
  v36 = v73;
  sub_219BDEEA4();
  v37 = v83;
  v38 = swift_allocObject();
  v84 = v25;
  *(v38 + 16) = v93;
  LODWORD(v85) = v28;
  v39 = v90;
  v90(v38 + v37, v28, v29);
  sub_219436C5C(&unk_27CC15AA0, MEMORY[0x277D2D740]);
  v40 = v75;
  sub_219BDCCC4();

  v41 = v85;
  (*(v74 + 8))(v36, v40);
  sub_219BF5414();
  v42 = v76;
  sub_219BDFE64();
  v43 = swift_allocObject();
  *(v43 + 16) = v93;
  v39(v43 + v37, v41, v29);
  sub_219436C5C(&qword_27CC1A3E0, MEMORY[0x277D2E1B8]);
  v44 = v78;
  sub_219BDCCC4();

  (*(v77 + 8))(v42, v44);
  v45 = v79;
  sub_219BF6824();
  v47 = v80;
  v46 = v81;
  if ((*(v80 + 48))(v45, 1, v81) == 1)
  {
    v48 = v29;
    sub_219436BD0(v45);
  }

  else
  {
    v49 = v61;
    (*(v47 + 32))(v61, v45, v46);
    v50 = v83;
    v51 = swift_allocObject();
    *(v51 + 16) = v93;
    v48 = v29;
    v90(v51 + v50, v41, v29);
    sub_219436C5C(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v47 + 8))(v49, v46);
  }

  v52 = [v87 sourceChannel];
  if (v52)
  {
    v53 = v62;
    v87 = v52;
    sub_219BE01F4();
    v54 = v83;
    v55 = swift_allocObject();
    *(v55 + 16) = v93;
    v90(v55 + v54, v85, v48);
    sub_219436C5C(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v56 = v64;
    sub_219BDCCC4();

    (*(v63 + 8))(v53, v56);
    v57 = v66;
    sub_219BE01E4();
    v58 = swift_allocObject();
    *(v58 + 16) = v93;
    v90(v58 + v54, v85, v48);
    sub_219436C5C(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v59 = v68;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v67 + 8))(v57, v59);
  }

  sub_219BDFF44();
  sub_219436C5C(&qword_280EE8508, MEMORY[0x277D2E250]);
  memset(v94, 0, sizeof(v94));
  sub_219BDCCE4();
  return sub_218806FD0(v94);
}

void sub_219436B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219436BD0(uint64_t a1)
{
  sub_219436B6C(0, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219436C5C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_219436CA4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_showingPrefixLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_selectCategoryButton;
  v12 = sub_219BE7234();
  *&v4[v11] = [objc_allocWithZone(v12) initWithFrame_];
  v13 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_onSelectCategoryButtonTap;
  sub_218803FE0();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v15 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_sortByButton;
  *&v4[v15] = [objc_allocWithZone(v12) initWithFrame_];
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_showingPrefixLabel];
  v18 = v16;
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_selectCategoryButton;
  [v18 addSubview_];
  v20 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_sortByButton;
  [v18 addSubview_];
  v21 = [*&v18[v20] imageView];
  if (v21)
  {
    v22 = v21;
    [v21 setContentMode_];
  }

  v23 = *&v18[v20];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 mainBundle];
  sub_219BDB5E4();

  v27 = sub_219BF53D4();

  [v25 setAccessibilityLabel_];

  v28 = *&v18[v19];
  v29 = *&v18[OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_onSelectCategoryButtonTap];
  v30 = v28;
  sub_219BEA854();

  return v18;
}

void sub_219437038()
{
  v0 = sub_219BEA814();
}

void sub_219437078()
{
  sub_219437104(&qword_27CC17F10);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_219437104(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineCatalogSectionHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_219437144()
{
  v1 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_showingPrefixLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_selectCategoryButton;
  v3 = sub_219BE7234();
  *(v0 + v2) = [objc_allocWithZone(v3) initWithFrame_];
  v4 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_onSelectCategoryButtonTap;
  sub_218803FE0();
  *(v0 + v4) = [objc_allocWithZone(v5) init];
  v6 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_sortByButton;
  *(v0 + v6) = [objc_allocWithZone(v3) initWithFrame_];
  sub_219BF7514();
  __break(1u);
}

void *sub_219437280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0x7374726F7073796DLL;
  v31 = MEMORY[0x277D84F90];
  sub_21870B65C(0, 3, 0);
  v6 = v31;
  v7 = 0x8000000219CD8210;
  v8 = 0xE800000000000000;
  v9 = 0x7365726F6373796DLL;
  if (byte_282A275D8 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = 0x8000000219CD8210;
  }

  if (byte_282A275D8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7374726F7073796DLL;
  }

  if (byte_282A275D8)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  MEMORY[0x21CECC330](v10, v11);

  v13 = *(v31 + 16);
  v12 = *(v31 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_21870B65C((v12 > 1), v13 + 1, 1);
    v6 = v31;
  }

  *(v6 + 16) = v13 + 1;
  v14 = v6 + 16 * v13;
  *(v14 + 32) = 47;
  *(v14 + 40) = 0xE100000000000000;
  if (byte_282A275D9)
  {
    if (byte_282A275D9 == 1)
    {
      v15 = 0xE800000000000000;
      v16 = 0x7365726F6373796DLL;
    }

    else
    {
      v16 = 0xD000000000000012;
      v15 = 0x8000000219CD8210;
    }
  }

  else
  {
    v15 = 0xE800000000000000;
    v16 = 0x7374726F7073796DLL;
  }

  MEMORY[0x21CECC330](v16, v15);

  v18 = *(v6 + 16);
  v17 = *(v6 + 24);
  if (v18 >= v17 >> 1)
  {
    sub_21870B65C((v17 > 1), v18 + 1, 1);
  }

  *(v6 + 16) = v18 + 1;
  v19 = v6 + 16 * v18;
  *(v19 + 32) = 47;
  *(v19 + 40) = 0xE100000000000000;
  if (byte_282A275DA)
  {
    if (byte_282A275DA == 1)
    {
      v7 = 0xE800000000000000;
      v5 = 0x7365726F6373796DLL;
    }

    else
    {
      v5 = 0xD000000000000012;
    }
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  MEMORY[0x21CECC330](v5, v7);

  v21 = *(v6 + 16);
  v20 = *(v6 + 24);
  if (v21 >= v20 >> 1)
  {
    sub_21870B65C((v20 > 1), v21 + 1, 1);
  }

  *(v6 + 16) = v21 + 1;
  v22 = v6 + 16 * v21;
  *(v22 + 32) = 47;
  *(v22 + 40) = 0xE100000000000000;
  sub_218B803C4(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v23 = *(sub_219BE2644() - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_219C09BA0;
  v26 = (v25 + v24);
  *v26 = 0x6472616F626E6FLL;
  v26[1] = 0xE700000000000000;
  (*(v23 + 104))();
  sub_219897824(MEMORY[0x277D84F90]);
  v27 = sub_219BE2684();

  v3[2] = v27;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_219437640(uint64_t a1)
{
  sub_218B803C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v78 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v71 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v80 = &v69 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v69 - v8;
  v79 = v9;
  MEMORY[0x28223BE20](v7);
  v72 = &v69 - v10;
  v75 = sub_219BE22B4();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDB954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE22F4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v69 - v21;
  sub_218B803C4(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v77 = a1;
  sub_219BE2594();
  sub_219BE22A4();
  v23 = *(v17 + 8);
  v23(v22, v16);
  v24 = sub_219BDB814();
  (*(v13 + 8))(v15, v12);
  if (!*(v24 + 16))
  {

    return 0;
  }

  v25 = sub_219BF7614();

  if (v25 > 2)
  {
    return 0;
  }

  v26 = v77;
  sub_219BE2594();
  v27 = v73;
  sub_219BE22D4();
  v23(v20, v16);
  v28 = sub_219BE22C4();
  v30 = v29;
  (*(v74 + 8))(v27, v75);
  v31 = v80;
  if (!v30)
  {
    goto LABEL_20;
  }

  v32 = 1u >> (v25 & 7);
  if (v28 == 0x65726F666562 && v30 == 0xE600000000000000)
  {
    if (!v32)
    {
      goto LABEL_17;
    }
  }

  else if ((sub_219BF78F4() & 1) == 0 || (v32 & 1) == 0)
  {
    if (v28 == 0x7265746661 && v30 == 0xE500000000000000)
    {

      if (v32)
      {
LABEL_19:
        v34 = 1;
        goto LABEL_21;
      }

LABEL_20:
      v34 = 2;
      goto LABEL_21;
    }

LABEL_17:
    v35 = sub_219BF78F4();

    if (v35 & 1) != 0 && (v32)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v34 = 0;
LABEL_21:
  v36 = sub_218FA86C8(v26);
  v37 = sub_218DB24B0();
  v38 = *(v76 + 24);
  v39 = qword_219C7E830[v25];
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v36;
  *(v40 + 32) = v34;
  v41 = v36;
  v42 = v41;
  if (v37)
  {
    v80 = v41;
    v43 = v72;
    sub_219BE2564();
    v44 = sub_219BDFA44();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v87 = v38;
    sub_2187B16A8(&v88, &v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    v76 = v40;
    if (*(&v83 + 1))
    {
      sub_21875F93C(&v82, &v84);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v46 = qword_280ED32D8;
      v45 = qword_280ED32E0;
      v47 = qword_280ED32E8;

      sub_2188202A8(v45);
      __swift_destroy_boxed_opaque_existential_1(&v84);
    }

    else
    {
      sub_218744C30(&v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v46 = qword_280ED32D8;
      v45 = qword_280ED32E0;
      v47 = qword_280ED32E8;

      sub_2188202A8(v45);
    }

    v81 = v40 | 0x7000000000000000;
    v83 = 0u;
    v82 = 0u;
    v52 = v70;
    sub_2187B16A8(v43, v70, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
    sub_2187B16A8(&v91, &v84, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v53 = (*(v78 + 80) + 24) & ~*(v78 + 80);
    v54 = (v79 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 47) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    sub_2189B4EAC(v52, v56 + v53);
    v57 = v56 + v54;
    v58 = v85;
    *v57 = v84;
    *(v57 + 16) = v58;
    *(v57 + 32) = v86;
    v59 = (v56 + v55);
    v60 = (v56 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v59 = 0;
    v59[1] = 0;
    *v60 = v46;
    v60[1] = v45;
    v60[2] = v47;

    sub_2188202A8(v45);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v45);

    sub_218744C30(&v88, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744C30(&v91, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218744C30(v43, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
    sub_218744C30(&v82, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  else
  {
    sub_219BE2564();
    v48 = sub_219BDFA44();
    (*(*(v48 - 8) + 56))(v31, 0, 1, v48);
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v87 = v38;
    sub_2187B16A8(&v88, &v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v83 + 1))
    {
      sub_21875F93C(&v82, &v84);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v50 = qword_280ED32D8;
      v49 = qword_280ED32E0;
      v51 = qword_280ED32E8;

      sub_2188202A8(v49);
      __swift_destroy_boxed_opaque_existential_1(&v84);
    }

    else
    {
      sub_218744C30(&v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v50 = qword_280ED32D8;
      v49 = qword_280ED32E0;
      v51 = qword_280ED32E8;

      sub_2188202A8(v49);
    }

    v81 = v40 | 0x7000000000000000;
    v83 = 0u;
    v82 = 0u;
    v61 = v31;
    v62 = v71;
    sub_2187B16A8(v61, v71, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
    sub_2187B16A8(&v91, &v84, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v63 = (*(v78 + 80) + 24) & ~*(v78 + 80);
    v64 = (v79 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    sub_2189B4EAC(v62, v65 + v63);
    v66 = v65 + v64;
    v67 = v85;
    *v66 = v84;
    *(v66 + 16) = v67;
    *(v66 + 32) = v86;
    v68 = (v65 + ((v64 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v68 = v50;
    v68[1] = v49;
    v68[2] = v51;

    sub_2188202A8(v49);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB474();

    sub_2187FABEC(v49);

    sub_218744C30(&v88, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744C30(&v91, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218744C30(v80, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
    sub_218744C30(&v82, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  return 1;
}

uint64_t sub_219438784()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219438820(void *a1)
{
  sub_218B803C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_2194DAE0C(a1, v7, v1 + v5, v1 + v6, v9, v10);
}

uint64_t sub_219438904()
{
  swift_unknownObjectRelease();
  sub_2187FABEC(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_219438968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(v7 + 24);
  *(v7 + 24) = sub_218807D28;
  *(v7 + 32) = v8;

  sub_2187FABEC(v9);
  *a3 = v7;
}

uint64_t sub_219438A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = *(v5 + 24);
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  sub_2187FABEC(v6);
  *a3 = v5;
}

id sub_219438BF4(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();

    v3(v4);
    sub_2187FABEC(v3);
  }

  v5 = *(v1 + 16);

  return [v5 presentExplicitContentRestrictionAlertWithPresentingViewController_];
}

uint64_t sub_219438C90(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_21943AA24(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v79 = &v62 - v5;
  sub_21943AA24(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v62 - v7;
  v8 = type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs();
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21943AA24(0, &qword_280E91A90, sub_218700FF8, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v80 = &v62 - v11;
  v83 = type metadata accessor for AudioPlaylistFeedServiceConfig;
  v82 = sub_21943A2EC;
  sub_21943A9A4(0, &unk_27CC1A480, type metadata accessor for AudioPlaylistFeedServiceConfig, sub_21943A2EC, MEMORY[0x277D31C68]);
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v75 = &v62 - v13;
  v14 = sub_219BF2AB4();
  v89 = *(v14 - 8);
  v90 = v14;
  MEMORY[0x28223BE20](v14);
  v88 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21943AA24(0, &unk_280E91B60, MEMORY[0x277D32040], v3);
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
  sub_21943AA24(0, &unk_280E8FF30, sub_218A42400, v3);
  MEMORY[0x28223BE20](v22 - 8);
  v67 = &v62 - v23;
  v71 = MEMORY[0x277D2D4E0];
  sub_21943AA24(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v62 - v25;
  v63 = &v62 - v25;
  v27 = type metadata accessor for ArticleListAudioPlaylistFeedGroupConfigData();
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v66 = &v62 - v31;
  v92 = sub_219BF1934();
  v32 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_formatService + 24);
  v72 = *(a1 + OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_formatService + 32);
  v73 = v34;
  v74 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_formatService), v34);
  v35 = OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_config;
  sub_21872FA60();
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
  sub_2194B1FF0(&unk_282A275E0, v39);
  v41 = v68;
  swift_arrayDestroy();
  v42 = v63;
  v43 = v66;
  sub_219BF1764();
  v44 = v69;

  sub_21943AB0C(v38, &unk_280E8FF30, v78);
  sub_21943AB0C(v42, &qword_280EE33F0, v71);
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
  sub_21943AAA4(v45 + OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_knobs, v81, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
  sub_218700FF8();
  v50 = v49;
  v51 = *(v49 - 8);
  v52 = v80;
  (*(v51 + 32))(v80, v48, v49);
  (*(v51 + 56))(v52, 0, 1, v50);
  v53 = sub_219BF35D4();
  (*(*(v53 - 8) + 56))(v85, 1, 1, v53);
  sub_21943A9A4(0, &qword_27CC1A490, v83, v82, MEMORY[0x277D33F88]);
  swift_allocObject();
  sub_219BF38E4();
  v54 = sub_219BF2774();
  (*(*(v54 - 8) + 56))();
  v55 = qword_280E8D8A0;
  *MEMORY[0x277D30B60];
  if (v55 != -1)
  {
    swift_once();
  }

  qword_280F61768;
  v56 = v88;
  sub_219BF2A84();
  v57 = v91;
  v58 = sub_218F0AF50(v91, 0x73656C6369747261, 0xE800000000000000, v41, v44, MEMORY[0x277D84F90], v46, v56, v73, v72);
  (*(v89 + 8))(v56, v90);
  sub_21943AB0C(v46, &unk_280E91B60, MEMORY[0x277D32040]);
  v59 = v87;
  v60 = *(v86 + 8);
  v60(v44, v87);
  v60(v41, v59);
  (v71)(v57, v92);
  return v58;
}

uint64_t sub_21943980C(uint64_t a1)
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
  sub_21943AA24(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219439980()
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

uint64_t sub_219439AA8(uint64_t a1, unint64_t a2)
{
  sub_21943A95C(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = (v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BDBD64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
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
    sub_21943AAA4(v14, v7, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
    swift_storeEnumTagMultiPayload();
    sub_21943AA24(0, &qword_27CC1A478, sub_21943A95C, MEMORY[0x277D6CF30]);
    swift_allocObject();

    v22 = sub_219BE3014();
    sub_21943AC04(v14, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
    return v22;
  }

  *v7 = 0xD00000000000002BLL;
  v7[1] = 0x8000000219D20F50;
  swift_storeEnumTagMultiPayload();
  sub_21943AA24(0, &qword_27CC1A478, sub_21943A95C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219439E10(uint64_t a1)
{
  sub_21943A95C(0);
  v10 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280E8D8A0 != -1)
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
  MEMORY[0x21CECC330](0xD00000000000002ELL, 0x8000000219D20F20);
  v13 = a1;
  sub_219BF7484();
  v8 = v12;
  *v4 = v11;
  v4[1] = v8;
  swift_storeEnumTagMultiPayload();
  sub_21943AA24(0, &qword_27CC1A478, sub_21943A95C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21943A064()
{
  sub_21943AA24(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_21943A0F4()
{
  v1 = OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_config;
  sub_21872FA60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21943AC04(v0 + OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_knobs, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleListAudioPlaylistFeedGroupEmitter()
{
  result = qword_27CC1A430;
  if (!qword_27CC1A430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21943A218()
{
  sub_21872FA60();
  if (v0 <= 0x3F)
  {
    sub_218700FF8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21943A320()
{
  sub_219BED8D4();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_21880702C();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_21943A3C8()
{
  sub_2190F5464();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_21943A95C(0);
  sub_219BE2F64();

  v1 = sub_219BE2E54();
  v2 = sub_219BE3054();

  return v2;
}

uint64_t sub_21943A4A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_config;
  sub_21872FA60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21943A524@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs();
  a1[4] = sub_21872FBF0(&qword_27CC1A498, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
  a1[5] = sub_21872FBF0(&qword_27CC1A4A0, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_21943AAA4(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
}

uint64_t sub_21943A628@<X0>(uint64_t *a1@<X8>)
{
  sub_21943AA24(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21872FA60();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21943AC04(inited + 32, sub_2188317B0);
  sub_21943AA24(0, &qword_27CC1A4A8, type metadata accessor for ArticleListAudioPlaylistFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_21943AB7C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21943A7B0()
{
  sub_21872FBF0(&qword_27CC1A450, type metadata accessor for ArticleListAudioPlaylistFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_21943A9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_21943AA24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21943AAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21943AB0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21943AA24(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21943AB7C()
{
  result = qword_27CC1A4B0;
  if (!qword_27CC1A4B0)
  {
    sub_21943AA24(255, &qword_27CC1A4A8, type metadata accessor for ArticleListAudioPlaylistFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A4B0);
  }

  return result;
}

uint64_t sub_21943AC04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SportsEventArticlesTagFeedGroupConfigData()
{
  result = qword_280E952C0;
  if (!qword_280E952C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21943ACD8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21943B208(0, &qword_280E8C718, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21943B1B4();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 24;
    v13 = type metadata accessor for SportsEventArticlesTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21943AF40(void *a1)
{
  v3 = v1;
  sub_21943B208(0, &qword_27CC1A4C0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21943B1B4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsEventArticlesTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21943B10C(uint64_t a1)
{
  v2 = sub_21943B1B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21943B148(uint64_t a1)
{
  v2 = sub_21943B1B4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21943B1B4()
{
  result = qword_280E952F8[0];
  if (!qword_280E952F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E952F8);
  }

  return result;
}

void sub_21943B208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21943B1B4();
    v7 = a3(a1, &type metadata for SportsEventArticlesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21943B280()
{
  result = qword_27CC1A4C8;
  if (!qword_27CC1A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A4C8);
  }

  return result;
}

unint64_t sub_21943B2D8()
{
  result = qword_280E952E8;
  if (!qword_280E952E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E952E8);
  }

  return result;
}

unint64_t sub_21943B330()
{
  result = qword_280E952F0;
  if (!qword_280E952F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E952F0);
  }

  return result;
}

uint64_t type metadata accessor for SportsBracketTagFeedGroupConfigData()
{
  result = qword_280E9C6D0;
  if (!qword_280E9C6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21943B3F8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21943B928(0, &qword_280E8C890, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21943B8D4();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 19;
    v13 = type metadata accessor for SportsBracketTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21943B660(void *a1)
{
  v3 = v1;
  sub_21943B928(0, &qword_27CC1A4D0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21943B8D4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsBracketTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21943B82C(uint64_t a1)
{
  v2 = sub_21943B8D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21943B868(uint64_t a1)
{
  v2 = sub_21943B8D4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21943B8D4()
{
  result = qword_280E9C708[0];
  if (!qword_280E9C708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9C708);
  }

  return result;
}

void sub_21943B928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21943B8D4();
    v7 = a3(a1, &type metadata for SportsBracketTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21943B9A0()
{
  result = qword_27CC1A4D8;
  if (!qword_27CC1A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A4D8);
  }

  return result;
}

unint64_t sub_21943B9F8()
{
  result = qword_280E9C6F8;
  if (!qword_280E9C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9C6F8);
  }

  return result;
}

unint64_t sub_21943BA50()
{
  result = qword_280E9C700;
  if (!qword_280E9C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9C700);
  }

  return result;
}

uint64_t sub_21943BAA4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_27CCD89F0 = result;
  return result;
}

uint64_t sub_21943BB6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617E0 = result;
  return result;
}

uint64_t sub_21943BC44()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61788 = result;
  return result;
}

uint64_t sub_21943BD1C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61768 = result;
  return result;
}

uint64_t sub_21943BDF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61700 = result;
  return result;
}

uint64_t sub_21943BEC4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617B8 = result;
  return result;
}

uint64_t sub_21943BFA0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61740 = result;
  return result;
}

uint64_t sub_21943C078()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617F0 = result;
  return result;
}

uint64_t sub_21943C14C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_27CCD89F8 = result;
  return result;
}

uint64_t sub_21943C224()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_27CCD8A00 = result;
  return result;
}

uint64_t sub_21943C2FC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617E8 = result;
  return result;
}

uint64_t sub_21943C3D0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F616F0 = result;
  return result;
}

uint64_t sub_21943C4BC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617D0 = result;
  return result;
}

uint64_t sub_21943C594()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61738 = result;
  return result;
}

uint64_t sub_21943C66C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_27CCD8A08 = result;
  return result;
}

uint64_t sub_21943C740()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_27CCD8A10 = result;
  return result;
}

uint64_t sub_21943C81C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_27CCD8A18 = result;
  return result;
}

uint64_t sub_21943C8F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F617C0 = result;
  return result;
}

uint64_t sub_21943C9D4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_27CCD8A20 = result;
  return result;
}

uint64_t sub_21943CAB0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_27CCD8A28 = result;
  return result;
}

uint64_t sub_21943CB88()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_27CCD8A30 = result;
  return result;
}

uint64_t sub_21943CC60()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8A38);
  __swift_project_value_buffer(v0, qword_27CCD8A38);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943CD4C()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8A50);
  __swift_project_value_buffer(v0, qword_27CCD8A50);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943CE3C()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F626D0);
  __swift_project_value_buffer(v0, qword_280F626D0);
  return sub_219BE5424();
}

uint64_t sub_21943CEBC()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8A68);
  __swift_project_value_buffer(v0, qword_27CCD8A68);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943CFB0()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62700);
  __swift_project_value_buffer(v0, qword_280F62700);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D0A4()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8A80);
  __swift_project_value_buffer(v0, qword_27CCD8A80);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D18C()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8A98);
  __swift_project_value_buffer(v0, qword_27CCD8A98);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D27C()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62748);
  __swift_project_value_buffer(v0, qword_280F62748);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D370()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F625B0);
  __swift_project_value_buffer(v0, qword_280F625B0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D458()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62610);
  __swift_project_value_buffer(v0, qword_280F62610);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D538()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F627D8);
  __swift_project_value_buffer(v0, qword_280F627D8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D624()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8AB0);
  __swift_project_value_buffer(v0, qword_27CCD8AB0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D710()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8AC8);
  __swift_project_value_buffer(v0, qword_27CCD8AC8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D804()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8AE0);
  __swift_project_value_buffer(v0, qword_27CCD8AE0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D8F0()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8AF8);
  __swift_project_value_buffer(v0, qword_27CCD8AF8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943D9E4()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8B10);
  __swift_project_value_buffer(v0, qword_27CCD8B10);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943DAD0()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8B28);
  __swift_project_value_buffer(v0, qword_27CCD8B28);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943DBC0()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62538);
  __swift_project_value_buffer(v0, qword_280F62538);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943DCAC()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8B40);
  __swift_project_value_buffer(v0, qword_27CCD8B40);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943DDA0()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62718);
  __swift_project_value_buffer(v0, qword_280F62718);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943DE94()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F625F8);
  __swift_project_value_buffer(v0, qword_280F625F8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943DF74()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62670);
  __swift_project_value_buffer(v0, qword_280F62670);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E064()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8B58);
  __swift_project_value_buffer(v0, qword_27CCD8B58);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E150()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8B70);
  __swift_project_value_buffer(v0, qword_27CCD8B70);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E238()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F625C8);
  __swift_project_value_buffer(v0, qword_280F625C8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E31C()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8B88);
  __swift_project_value_buffer(v0, qword_27CCD8B88);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E400()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62580);
  __swift_project_value_buffer(v0, qword_280F62580);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E4EC()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F626A0);
  __swift_project_value_buffer(v0, qword_280F626A0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E5DC()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8BA0);
  __swift_project_value_buffer(v0, qword_27CCD8BA0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E6C8()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62598);
  __swift_project_value_buffer(v0, qword_280F62598);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E7B0()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8BB8);
  __swift_project_value_buffer(v0, qword_27CCD8BB8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E8A0()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8BD0);
  __swift_project_value_buffer(v0, qword_27CCD8BD0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943E994()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8BE8);
  __swift_project_value_buffer(v0, qword_27CCD8BE8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943EA80()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_27CCD8C00);
  __swift_project_value_buffer(v0, qword_27CCD8C00);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21943EB84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x51 && *(a1 + 8))
  {
    return (*a1 + 81);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x50)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21943EBE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x50)
  {
    *result = a2 - 81;
    if (a3 >= 0x51)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x51)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21943EC40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218F54B30();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A125B4();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A124B0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      type metadata accessor for ArticleListTagFeedGroup();
      v50 = swift_projectBox();
      sub_2194512F8(v50, a2, type metadata accessor for ArticleListTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 2uLL:
      type metadata accessor for PromotedArticleListTagFeedGroup();
      v46 = swift_projectBox();
      sub_2194512F8(v46, a2, type metadata accessor for PromotedArticleListTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 3uLL:
      type metadata accessor for WeatherTagFeedGroup();
      v48 = swift_projectBox();
      sub_2194512F8(v48, a2, type metadata accessor for WeatherTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 4uLL:
      v37 = v16;
      v38 = swift_projectBox();
      (*(v15 + 16))(v18, v38, v37);
      sub_219BEDE64();
      (*(v15 + 8))(v18, v37);
      v39 = type metadata accessor for TagFeedGroup();
      goto LABEL_25;
    case 5uLL:
      type metadata accessor for ChannelSectionTagFeedGroup();
      v55 = swift_projectBox();
      sub_2194512F8(v55, a2, type metadata accessor for ChannelSectionTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 6uLL:
      type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
      v58 = swift_projectBox();
      sub_2194512F8(v58, a2, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 7uLL:
      v49 = swift_projectBox();
      (*(v11 + 16))(v13, v49, v10);
      sub_219BEDE64();
      (*(v11 + 8))(v13, v10);
      v39 = type metadata accessor for TagFeedGroup();
LABEL_25:
      swift_storeEnumTagMultiPayload();
      return (*(*(v39 - 8) + 56))(a2, 0, 1, v39);
    case 8uLL:
      v61 = sub_219BED544();
      v62 = swift_projectBox();
      (*(*(v61 - 8) + 16))(a2, v62, v61);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 9uLL:
      v42 = swift_projectBox();
      (*(v6 + 16))(v8, v42, v5);
      sub_219BEE474();
      sub_21943EC40(v76[1]);

      return (*(v6 + 8))(v8, v5);
    case 0xAuLL:
      type metadata accessor for CuratedTagFeedGroup();
      v60 = swift_projectBox();
      sub_2194512F8(v60, a2, type metadata accessor for CuratedTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0xBuLL:
      type metadata accessor for SportsRecordTagFeedGroup();
      v36 = swift_projectBox();
      sub_2194512F8(v36, a2, type metadata accessor for SportsRecordTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0xCuLL:
      type metadata accessor for SportsNavigationTagFeedGroup();
      v41 = swift_projectBox();
      sub_2194512F8(v41, a2, type metadata accessor for SportsNavigationTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0xDuLL:
      type metadata accessor for SportsScheduleTagFeedGroup();
      v57 = swift_projectBox();
      sub_2194512F8(v57, a2, type metadata accessor for SportsScheduleTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0xEuLL:
      type metadata accessor for SportsTopStoriesTagFeedGroup();
      v34 = swift_projectBox();
      sub_2194512F8(v34, a2, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0xFuLL:
      type metadata accessor for SportsFavoritesTagFeedGroup();
      v47 = swift_projectBox();
      sub_2194512F8(v47, a2, type metadata accessor for SportsFavoritesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x10uLL:
      type metadata accessor for SportsScoresTagFeedGroup();
      v32 = swift_projectBox();
      sub_2194512F8(v32, a2, type metadata accessor for SportsScoresTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x11uLL:
      type metadata accessor for SportsLinksTagFeedGroup();
      v52 = swift_projectBox();
      sub_2194512F8(v52, a2, type metadata accessor for SportsLinksTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x12uLL:
      type metadata accessor for MySportsTopicTagFeedGroup();
      v59 = swift_projectBox();
      sub_2194512F8(v59, a2, type metadata accessor for MySportsTopicTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x13uLL:
      type metadata accessor for SportsStandingsTagFeedGroup();
      v68 = swift_projectBox();
      sub_2194512F8(v68, a2, type metadata accessor for SportsStandingsTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x14uLL:
      type metadata accessor for SportsBracketTagFeedGroup();
      v54 = swift_projectBox();
      sub_2194512F8(v54, a2, type metadata accessor for SportsBracketTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x15uLL:
      type metadata accessor for SportsBoxScoresTagFeedGroup();
      v56 = swift_projectBox();
      sub_2194512F8(v56, a2, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x16uLL:
      type metadata accessor for SportsEventInfoTagFeedGroup();
      v66 = swift_projectBox();
      sub_2194512F8(v66, a2, type metadata accessor for SportsEventInfoTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x17uLL:
      type metadata accessor for SportsInjuryReportsTagFeedGroup();
      v70 = swift_projectBox();
      sub_2194512F8(v70, a2, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x18uLL:
      type metadata accessor for SportsKeyPlayersTagFeedGroup();
      v45 = swift_projectBox();
      sub_2194512F8(v45, a2, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x19uLL:
      type metadata accessor for SportsEventArticlesTagFeedGroup();
      v44 = swift_projectBox();
      sub_2194512F8(v44, a2, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x1AuLL:
      type metadata accessor for HighlightsTagFeedGroup();
      v74 = swift_projectBox();
      sub_2194512F8(v74, a2, type metadata accessor for HighlightsTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x1BuLL:
      type metadata accessor for ForYouTagFeedGroup();
      v30 = swift_projectBox();
      sub_2194512F8(v30, a2, type metadata accessor for ForYouTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x1CuLL:
      type metadata accessor for ChannelRecipesTagFeedGroup();
      v71 = swift_projectBox();
      sub_2194512F8(v71, a2, type metadata accessor for ChannelRecipesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x1DuLL:
      type metadata accessor for ForYouRecipesTagFeedGroup();
      v72 = swift_projectBox();
      sub_2194512F8(v72, a2, type metadata accessor for ForYouRecipesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x1EuLL:
      type metadata accessor for RecentStoriesTagFeedGroup();
      v63 = swift_projectBox();
      sub_2194512F8(v63, a2, type metadata accessor for RecentStoriesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x1FuLL:
      type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
      v51 = swift_projectBox();
      sub_2194512F8(v51, a2, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x20uLL:
      type metadata accessor for DateRangeTagFeedGroup();
      v64 = swift_projectBox();
      sub_2194512F8(v64, a2, type metadata accessor for DateRangeTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x21uLL:
      type metadata accessor for SportsOnboardingTagFeedGroup();
      v35 = swift_projectBox();
      sub_2194512F8(v35, a2, type metadata accessor for SportsOnboardingTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x22uLL:
      type metadata accessor for SportsMastheadTagFeedGroup();
      v31 = swift_projectBox();
      sub_2194512F8(v31, a2, type metadata accessor for SportsMastheadTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x23uLL:
      type metadata accessor for SportsEventTopicTagFeedGroup();
      v28 = swift_projectBox();
      sub_2194512F8(v28, a2, type metadata accessor for SportsEventTopicTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x24uLL:
      type metadata accessor for PuzzleListTagFeedGroup();
      v29 = swift_projectBox();
      sub_2194512F8(v29, a2, type metadata accessor for PuzzleListTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x25uLL:
      type metadata accessor for PuzzleArchiveTagFeedGroup();
      v26 = swift_projectBox();
      sub_2194512F8(v26, a2, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x26uLL:
      type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
      v73 = swift_projectBox();
      sub_2194512F8(v73, a2, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x27uLL:
      type metadata accessor for PuzzleFeaturedTagFeedGroup();
      v67 = swift_projectBox();
      sub_2194512F8(v67, a2, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x28uLL:
      type metadata accessor for PuzzleFullArchiveTagFeedGroup();
      v40 = swift_projectBox();
      sub_2194512F8(v40, a2, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x29uLL:
      type metadata accessor for PuzzleScoreboardTagFeedGroup();
      v53 = swift_projectBox();
      sub_2194512F8(v53, a2, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x2AuLL:
      type metadata accessor for AffinityTagFeedGroup();
      v69 = swift_projectBox();
      sub_2194512F8(v69, a2, type metadata accessor for AffinityTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x2BuLL:
      type metadata accessor for SponsoredBannerTagFeedGroup();
      v24 = swift_projectBox();
      sub_2194512F8(v24, a2, type metadata accessor for SponsoredBannerTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x2CuLL:
      type metadata accessor for LatestRecipesTagFeedGroup();
      v33 = swift_projectBox();
      sub_2194512F8(v33, a2, type metadata accessor for LatestRecipesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x2DuLL:
      type metadata accessor for SavedRecipesTagFeedGroup();
      v65 = swift_projectBox();
      sub_2194512F8(v65, a2, type metadata accessor for SavedRecipesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x2EuLL:
      type metadata accessor for TrendingRecipesTagFeedGroup();
      v75 = swift_projectBox();
      sub_2194512F8(v75, a2, type metadata accessor for TrendingRecipesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
      goto LABEL_52;
    case 0x2FuLL:
      type metadata accessor for TopicRecipesTagFeedGroup();
      v27 = swift_projectBox();
      sub_2194512F8(v27, a2, type metadata accessor for TopicRecipesTagFeedGroup);
      v25 = type metadata accessor for TagFeedGroup();
LABEL_52:
      swift_storeEnumTagMultiPayload();
      v20 = *(*(v25 - 8) + 56);
      v22 = a2;
      v23 = 0;
      v21 = v25;
      break;
    default:
      v19 = type metadata accessor for TagFeedGroup();
      v20 = *(*(v19 - 8) + 56);
      v21 = v19;
      v22 = a2;
      v23 = 1;
      break;
  }

  return v20(v22, v23, 1, v21);
}

uint64_t sub_21943FD74()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v238 = &v192 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v237 = &v192 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v236 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v235 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v234 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v233 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v232 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v231 = &v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v230 = &v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v229 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v228 = &v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v227 = &v192 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v226 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v225 = &v192 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v223);
  v224 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v222 = &v192 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v221 = &v192 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v220 = &v192 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v219 = &v192 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v217);
  v218 = &v192 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v216 = &v192 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v215 = &v192 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v214 = &v192 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v213 = &v192 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v212 = &v192 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v211 = &v192 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v210 = &v192 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v209 = &v192 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v207);
  v208 = &v192 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v55 - 8);
  v206 = &v192 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v204);
  v205 = &v192 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v58 - 8);
  v203 = &v192 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v201);
  v202 = &v192 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v61 - 8);
  v200 = &v192 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v198);
  v199 = &v192 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v64 - 8);
  v197 = &v192 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v66 - 8);
  v196 = &v192 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54B30();
  v195 = v68;
  v194 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v193 = &v192 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v70);
  v72 = &v192 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v73 - 8);
  v75 = &v192 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v76 - 8);
  v78 = &v192 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v79);
  v81 = &v192 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A124B0();
  v83 = v82;
  v192 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v85 = &v192 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v86 - 8);
  v88 = &v192 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_219BF1904();
  v90 = *(v89 - 8);
  v240 = v89;
  v241 = v90;
  MEMORY[0x28223BE20](v89);
  v239 = &v192 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v92 - 8);
  v94 = &v192 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  switch((v95 >> 58) & 0x3C | (v95 >> 1) & 3)
  {
    case 1uLL:
      v97 = swift_projectBox();
      sub_2194512F8(v97, v94, type metadata accessor for ArticleListTagFeedGroup);
      v98 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v98, v240);
      v100 = type metadata accessor for ArticleListTagFeedGroup;
      v101 = v94;
      goto LABEL_47;
    case 2uLL:
      v132 = swift_projectBox();
      sub_2194512F8(v132, v88, type metadata accessor for PromotedArticleListTagFeedGroup);
      v133 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v133, v240);
      v100 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v101 = v88;
      goto LABEL_47;
    case 3uLL:
      v148 = swift_projectBox();
      sub_2194512F8(v148, v72, type metadata accessor for WeatherTagFeedGroup);
      v149 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v149, v240);
      v100 = type metadata accessor for WeatherTagFeedGroup;
      v101 = v72;
      goto LABEL_47;
    case 4uLL:
      v134 = swift_projectBox();
      v135 = v192;
      (*(v192 + 16))(v85, v134, v83);
      sub_219BEDE64();
      (*(v135 + 8))(v85, v83);
      v99 = *&v81[*(v79 + 32)];
      swift_unknownObjectRetain();
      v100 = type metadata accessor for IssueListTagFeedGroup;
      v101 = v81;
      goto LABEL_47;
    case 5uLL:
      v136 = swift_projectBox();
      sub_2194512F8(v136, v78, type metadata accessor for ChannelSectionTagFeedGroup);
      v137 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v137, v240);
      v100 = type metadata accessor for ChannelSectionTagFeedGroup;
      v101 = v78;
      goto LABEL_47;
    case 6uLL:
      v150 = swift_projectBox();
      sub_2194512F8(v150, v75, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v151 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v151, v240);
      v100 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v101 = v75;
      goto LABEL_47;
    case 9uLL:
      v124 = swift_projectBox();
      v125 = v194;
      v126 = v193;
      v127 = v195;
      (*(v194 + 16))(v193, v124, v195);
      sub_219BEE474();
      v99 = sub_21943FD74(v242);

      (*(v125 + 8))(v126, v127);
      goto LABEL_48;
    case 0xAuLL:
      v138 = swift_projectBox();
      v103 = v196;
      sub_2194512F8(v138, v196, type metadata accessor for CuratedTagFeedGroup);
      v139 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v139, v240);
      v105 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_46;
    case 0xBuLL:
      v146 = swift_projectBox();
      v103 = v197;
      sub_2194512F8(v146, v197, type metadata accessor for SportsRecordTagFeedGroup);
      v147 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v147, v240);
      v105 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_46;
    case 0xCuLL:
      v168 = swift_projectBox();
      v103 = v199;
      sub_2194512F8(v168, v199, type metadata accessor for SportsNavigationTagFeedGroup);
      v169 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v169, v240);
      v105 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_46;
    case 0xDuLL:
      v130 = swift_projectBox();
      v103 = v200;
      sub_2194512F8(v130, v200, type metadata accessor for SportsScheduleTagFeedGroup);
      v131 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v131, v240);
      v105 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_46;
    case 0xEuLL:
      v152 = swift_projectBox();
      v103 = v202;
      sub_2194512F8(v152, v202, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v153 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v153, v240);
      v105 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_46;
    case 0xFuLL:
      v120 = swift_projectBox();
      v103 = v203;
      sub_2194512F8(v120, v203, type metadata accessor for SportsFavoritesTagFeedGroup);
      v121 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v121, v240);
      v105 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_46;
    case 0x10uLL:
      v162 = swift_projectBox();
      v103 = v205;
      sub_2194512F8(v162, v205, type metadata accessor for SportsScoresTagFeedGroup);
      v163 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v163, v240);
      v105 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_46;
    case 0x11uLL:
      v170 = swift_projectBox();
      v103 = v206;
      sub_2194512F8(v170, v206, type metadata accessor for SportsLinksTagFeedGroup);
      v171 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v171, v240);
      v105 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_46;
    case 0x12uLL:
      v114 = swift_projectBox();
      v103 = v208;
      sub_2194512F8(v114, v208, type metadata accessor for MySportsTopicTagFeedGroup);
      v115 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v115, v240);
      v105 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_46;
    case 0x13uLL:
      v158 = swift_projectBox();
      v103 = v209;
      sub_2194512F8(v158, v209, type metadata accessor for SportsStandingsTagFeedGroup);
      v159 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v159, v240);
      v105 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_46;
    case 0x14uLL:
      v160 = swift_projectBox();
      v103 = v210;
      sub_2194512F8(v160, v210, type metadata accessor for SportsBracketTagFeedGroup);
      v161 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v161, v240);
      v105 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_46;
    case 0x15uLL:
      v174 = swift_projectBox();
      v103 = v211;
      sub_2194512F8(v174, v211, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v175 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v175, v240);
      v105 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_46;
    case 0x16uLL:
      v180 = swift_projectBox();
      v103 = v212;
      sub_2194512F8(v180, v212, type metadata accessor for SportsEventInfoTagFeedGroup);
      v181 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v181, v240);
      v105 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_46;
    case 0x17uLL:
      v144 = swift_projectBox();
      v103 = v213;
      sub_2194512F8(v144, v213, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v145 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v145, v240);
      v105 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_46;
    case 0x18uLL:
      v142 = swift_projectBox();
      v103 = v214;
      sub_2194512F8(v142, v214, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v143 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v143, v240);
      v105 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_46;
    case 0x19uLL:
      v188 = swift_projectBox();
      v103 = v215;
      sub_2194512F8(v188, v215, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v189 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v189, v240);
      v105 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_46;
    case 0x1AuLL:
      v116 = swift_projectBox();
      v103 = v216;
      sub_2194512F8(v116, v216, type metadata accessor for HighlightsTagFeedGroup);
      v117 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v117, v240);
      v105 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_46;
    case 0x1BuLL:
      v182 = swift_projectBox();
      v103 = v218;
      sub_2194512F8(v182, v218, type metadata accessor for ForYouTagFeedGroup);
      v183 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v183, v240);
      v105 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_46;
    case 0x1CuLL:
      v184 = swift_projectBox();
      v103 = v219;
      sub_2194512F8(v184, v219, type metadata accessor for ChannelRecipesTagFeedGroup);
      v185 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v185, v240);
      v105 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x1DuLL:
      v164 = swift_projectBox();
      v103 = v220;
      sub_2194512F8(v164, v220, type metadata accessor for ForYouRecipesTagFeedGroup);
      v165 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v165, v240);
      v105 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x1EuLL:
      v154 = swift_projectBox();
      v103 = v221;
      sub_2194512F8(v154, v221, type metadata accessor for RecentStoriesTagFeedGroup);
      v155 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v155, v240);
      v105 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_46;
    case 0x1FuLL:
      v166 = swift_projectBox();
      v103 = v222;
      sub_2194512F8(v166, v222, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v167 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v167, v240);
      v105 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x20uLL:
      v128 = swift_projectBox();
      v103 = v224;
      sub_2194512F8(v128, v224, type metadata accessor for DateRangeTagFeedGroup);
      v129 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v129, v240);
      v105 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_46;
    case 0x21uLL:
      v118 = swift_projectBox();
      v103 = v225;
      sub_2194512F8(v118, v225, type metadata accessor for SportsOnboardingTagFeedGroup);
      v119 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v119, v240);
      v105 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_46;
    case 0x22uLL:
      v110 = swift_projectBox();
      v103 = v226;
      sub_2194512F8(v110, v226, type metadata accessor for SportsMastheadTagFeedGroup);
      v111 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v111, v240);
      v105 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_46;
    case 0x23uLL:
      v112 = swift_projectBox();
      v103 = v227;
      sub_2194512F8(v112, v227, type metadata accessor for SportsEventTopicTagFeedGroup);
      v113 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v113, v240);
      v105 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_46;
    case 0x24uLL:
      v106 = swift_projectBox();
      v103 = v228;
      sub_2194512F8(v106, v228, type metadata accessor for PuzzleListTagFeedGroup);
      v107 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v107, v240);
      v105 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_46;
    case 0x25uLL:
      v186 = swift_projectBox();
      v103 = v229;
      sub_2194512F8(v186, v229, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v187 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v187, v240);
      v105 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_46;
    case 0x26uLL:
      v176 = swift_projectBox();
      v103 = v230;
      sub_2194512F8(v176, v230, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v177 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v177, v240);
      v105 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_46;
    case 0x27uLL:
      v140 = swift_projectBox();
      v103 = v231;
      sub_2194512F8(v140, v231, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v141 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v141, v240);
      v105 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_46;
    case 0x28uLL:
      v156 = swift_projectBox();
      v103 = v232;
      sub_2194512F8(v156, v232, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v157 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v157, v240);
      v105 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_46;
    case 0x29uLL:
      v178 = swift_projectBox();
      v103 = v233;
      sub_2194512F8(v178, v233, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v179 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v179, v240);
      v105 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_46;
    case 0x2AuLL:
      v102 = swift_projectBox();
      v103 = v234;
      sub_2194512F8(v102, v234, type metadata accessor for AffinityTagFeedGroup);
      v104 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v104, v240);
      v105 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_46;
    case 0x2CuLL:
      v122 = swift_projectBox();
      v103 = v235;
      sub_2194512F8(v122, v235, type metadata accessor for LatestRecipesTagFeedGroup);
      v123 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v123, v240);
      v105 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x2DuLL:
      v172 = swift_projectBox();
      v103 = v236;
      sub_2194512F8(v172, v236, type metadata accessor for SavedRecipesTagFeedGroup);
      v173 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v173, v240);
      v105 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x2EuLL:
      v190 = swift_projectBox();
      v103 = v237;
      sub_2194512F8(v190, v237, type metadata accessor for TrendingRecipesTagFeedGroup);
      v191 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v191, v240);
      v105 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x2FuLL:
      v108 = swift_projectBox();
      v103 = v238;
      sub_2194512F8(v108, v238, type metadata accessor for TopicRecipesTagFeedGroup);
      v109 = v239;
      sub_219BED874();
      v99 = sub_219BF1844();
      (*(v241 + 8))(v109, v240);
      v105 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_46:
      v100 = v105;
      v101 = v103;
LABEL_47:
      sub_219451434(v101, v100);
LABEL_48:
      result = v99;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2194420E8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218F54B30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      v9 = MEMORY[0x277D2F5D0];
      goto LABEL_48;
    case 2uLL:
      v9 = MEMORY[0x277D2F788];
      goto LABEL_48;
    case 3uLL:
      v9 = MEMORY[0x277D2F820];
      goto LABEL_48;
    case 4uLL:
      v9 = MEMORY[0x277D2F7F0];
      goto LABEL_48;
    case 5uLL:
      v9 = MEMORY[0x277D2F6B0];
      goto LABEL_48;
    case 6uLL:
      v9 = MEMORY[0x277D2F7C8];
      goto LABEL_48;
    case 7uLL:
      v9 = MEMORY[0x277D2F808];
      goto LABEL_48;
    case 8uLL:
      v9 = MEMORY[0x277D2F7D0];
      goto LABEL_48;
    case 9uLL:
      v10 = v6;
      v11 = swift_projectBox();
      (*(v5 + 16))(v8, v11, v10);
      sub_219BEE474();
      sub_2194420E8(v16[1]);

      return (*(v5 + 8))(v8, v10);
    case 0xAuLL:
      v9 = MEMORY[0x277D2F800];
      goto LABEL_48;
    case 0xBuLL:
      v9 = MEMORY[0x277D2F620];
      goto LABEL_48;
    case 0xCuLL:
      v9 = MEMORY[0x277D2F750];
      goto LABEL_48;
    case 0xDuLL:
      v9 = MEMORY[0x277D2F6D8];
      goto LABEL_48;
    case 0xEuLL:
      v9 = MEMORY[0x277D2F760];
      goto LABEL_48;
    case 0x10uLL:
      v9 = MEMORY[0x277D2F628];
      goto LABEL_48;
    case 0x11uLL:
      v9 = MEMORY[0x277D2F5F0];
      goto LABEL_48;
    case 0x12uLL:
      v9 = MEMORY[0x277D2F678];
      goto LABEL_48;
    case 0x13uLL:
      v9 = MEMORY[0x277D2F710];
      goto LABEL_48;
    case 0x14uLL:
      v9 = MEMORY[0x277D2F698];
      goto LABEL_48;
    case 0x15uLL:
      v9 = MEMORY[0x277D2F700];
      goto LABEL_48;
    case 0x16uLL:
      v9 = MEMORY[0x277D2F708];
      goto LABEL_48;
    case 0x17uLL:
      v9 = MEMORY[0x277D2F7A0];
      goto LABEL_48;
    case 0x18uLL:
      v9 = MEMORY[0x277D2F748];
      goto LABEL_48;
    case 0x19uLL:
      v9 = MEMORY[0x277D2F7C0];
      goto LABEL_48;
    case 0x1AuLL:
      v9 = MEMORY[0x277D2F5A8];
      goto LABEL_48;
    case 0x1BuLL:
      v9 = MEMORY[0x277D2F6A0];
      goto LABEL_48;
    case 0x1CuLL:
      v9 = MEMORY[0x277D2F6A8];
      goto LABEL_48;
    case 0x1EuLL:
      v9 = MEMORY[0x277D2F768];
      goto LABEL_48;
    case 0x1FuLL:
      v9 = MEMORY[0x277D2F7B8];
      goto LABEL_48;
    case 0x20uLL:
      v9 = MEMORY[0x277D2F630];
      goto LABEL_48;
    case 0x21uLL:
      v9 = MEMORY[0x277D2F758];
      goto LABEL_48;
    case 0x22uLL:
      v9 = MEMORY[0x277D2F6D0];
      goto LABEL_48;
    case 0x23uLL:
      v9 = MEMORY[0x277D2F740];
      goto LABEL_48;
    case 0x24uLL:
      v9 = MEMORY[0x277D2F5C0];
      goto LABEL_48;
    case 0x25uLL:
      v9 = MEMORY[0x277D2F680];
      goto LABEL_48;
    case 0x26uLL:
      v9 = MEMORY[0x277D2F7B0];
      goto LABEL_48;
    case 0x27uLL:
      v9 = MEMORY[0x277D2F6C0];
      goto LABEL_48;
    case 0x28uLL:
      v9 = MEMORY[0x277D2F770];
      goto LABEL_48;
    case 0x29uLL:
      v9 = MEMORY[0x277D2F730];
      goto LABEL_48;
    case 0x2AuLL:
      v9 = MEMORY[0x277D2F828];
      goto LABEL_48;
    case 0x2BuLL:
      v9 = MEMORY[0x277D2F6F8];
      goto LABEL_48;
    case 0x2CuLL:
      v9 = MEMORY[0x277D2F658];
      goto LABEL_48;
    case 0x2DuLL:
      v9 = MEMORY[0x277D2F610];
      goto LABEL_48;
    case 0x2EuLL:
      v9 = MEMORY[0x277D2F718];
      goto LABEL_48;
    case 0x2FuLL:
      v9 = MEMORY[0x277D2F638];
      goto LABEL_48;
    default:
      v9 = MEMORY[0x277D2F818];
LABEL_48:
      v13 = *v9;
      v14 = sub_219BE16E4();
      v15 = *(*(v14 - 8) + 104);

      return v15(a2, v13, v14);
  }
}

uint64_t sub_2194424B0(uint64_t a1)
{
  v2 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v223 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v222 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v221 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v220 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v219 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v218 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v217 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v216 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v215 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v214 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v213 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v212 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v211 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v210 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v209 = &v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v208 = (&v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v207 = &v169 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v36 - 8);
  v206 = &v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v205 = &v169 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v204 = &v169 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v203 = (&v169 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v202 = &v169 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v201 = &v169 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v200 = &v169 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v199 = &v169 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v198 = &v169 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v54 - 8);
  v197 = &v169 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v56 - 8);
  v196 = &v169 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v58 - 8);
  v195 = &v169 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v60 - 8);
  v194 = &v169 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v193);
  v192 = (&v169 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v191);
  v190 = (&v169 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v64 - 8);
  v189 = &v169 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v188);
  v187 = (&v169 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v67 - 8);
  v186 = &v169 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v185);
  v184 = (&v169 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v70 - 8);
  v183 = &v169 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v72 - 8);
  v181 = &v169 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54B30();
  v182 = v74;
  v180 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v179 = &v169 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_219BED544();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v169 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A125B4();
  v175 = v77;
  v174 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v173 = &v169 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v172);
  v171 = (&v169 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v80 - 8);
  v170 = &v169 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v82 - 8);
  v84 = &v169 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A124B0();
  v86 = v85;
  v169 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v88 = &v169 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v89 - 8);
  v91 = &v169 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v92 - 8);
  v94 = &v169 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  v96 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v98 = &v169 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagFeedSectionGapDescriptor(0);
  v99 = MEMORY[0x28223BE20](a1);
  v101 = &v169 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = MEMORY[0x28223BE20](v99);
  v104 = &v169 - v103;
  switch((v102 >> 58) & 0x3C | (v102 >> 1) & 3)
  {
    case 1uLL:
      v142 = swift_projectBox();
      sub_2194512F8(v142, v94, type metadata accessor for ArticleListTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for ArticleListTagFeedGroup;
      goto LABEL_54;
    case 2uLL:
      v132 = swift_projectBox();
      sub_2194512F8(v132, v91, type metadata accessor for PromotedArticleListTagFeedGroup);
      v106 = sub_219BED784();
      v133 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v134 = v91;
      break;
    case 3uLL:
      v136 = swift_projectBox();
      v114 = v171;
      sub_2194512F8(v136, v171, type metadata accessor for WeatherTagFeedGroup);
      v106 = sub_219BED784();
      v115 = type metadata accessor for WeatherTagFeedGroup;
      goto LABEL_42;
    case 4uLL:
      v122 = swift_projectBox();
      v123 = v169;
      (*(v169 + 16))(v88, v122, v86);
      v106 = sub_219BEDE34();
      (*(v123 + 8))(v88, v86);
      return v106;
    case 5uLL:
      v147 = swift_projectBox();
      sub_2194512F8(v147, v84, type metadata accessor for ChannelSectionTagFeedGroup);
      v106 = sub_219BED784();
      v133 = type metadata accessor for ChannelSectionTagFeedGroup;
      v134 = v84;
      break;
    case 6uLL:
      v150 = swift_projectBox();
      v94 = v170;
      sub_2194512F8(v150, v170, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      goto LABEL_54;
    case 7uLL:
      v137 = swift_projectBox();
      v138 = v174;
      v139 = v173;
      v140 = v175;
      (*(v174 + 16))(v173, v137, v175);
      v141 = sub_219BEDE34();
      goto LABEL_38;
    case 8uLL:
      v153 = swift_projectBox();
      v138 = v177;
      v139 = v176;
      v140 = v178;
      (*(v177 + 16))(v176, v153, v178);
      v141 = sub_219BED4C4();
LABEL_38:
      v106 = v141;
      (*(v138 + 8))(v139, v140);
      return v106;
    case 9uLL:
      v126 = swift_projectBox();
      v127 = v180;
      v128 = v179;
      v129 = v182;
      (*(v180 + 16))(v179, v126, v182);
      sub_219BEE474();
      v106 = sub_2194424B0(v224);

      (*(v127 + 8))(v128, v129);
      return v106;
    case 0xAuLL:
      v152 = swift_projectBox();
      v94 = v181;
      sub_2194512F8(v152, v181, type metadata accessor for CuratedTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_54;
    case 0xBuLL:
      v121 = swift_projectBox();
      v94 = v183;
      sub_2194512F8(v121, v183, type metadata accessor for SportsRecordTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_54;
    case 0xCuLL:
      v125 = swift_projectBox();
      v114 = v184;
      sub_2194512F8(v125, v184, type metadata accessor for SportsNavigationTagFeedGroup);
      v106 = sub_219BED784();
      v115 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_42;
    case 0xDuLL:
      v149 = swift_projectBox();
      v94 = v186;
      sub_2194512F8(v149, v186, type metadata accessor for SportsScheduleTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_54;
    case 0xEuLL:
      v119 = swift_projectBox();
      v114 = v187;
      sub_2194512F8(v119, v187, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v106 = sub_219BED784();
      v115 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_42;
    case 0xFuLL:
      v135 = swift_projectBox();
      v94 = v189;
      sub_2194512F8(v135, v189, type metadata accessor for SportsFavoritesTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_54;
    case 0x10uLL:
      v117 = swift_projectBox();
      v114 = v190;
      sub_2194512F8(v117, v190, type metadata accessor for SportsScoresTagFeedGroup);
      v106 = sub_219BED784();
      v115 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_42;
    case 0x11uLL:
      v144 = swift_projectBox();
      v94 = v198;
      sub_2194512F8(v144, v198, type metadata accessor for SportsLinksTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_54;
    case 0x12uLL:
      v151 = swift_projectBox();
      v114 = v192;
      sub_2194512F8(v151, v192, type metadata accessor for MySportsTopicTagFeedGroup);
      v106 = sub_219BED784();
      v115 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_42;
    case 0x13uLL:
      v159 = swift_projectBox();
      v94 = v194;
      sub_2194512F8(v159, v194, type metadata accessor for SportsStandingsTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_54;
    case 0x14uLL:
      v146 = swift_projectBox();
      v94 = v195;
      sub_2194512F8(v146, v195, type metadata accessor for SportsBracketTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_54;
    case 0x15uLL:
      v148 = swift_projectBox();
      v94 = v196;
      sub_2194512F8(v148, v196, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_54;
    case 0x16uLL:
      v157 = swift_projectBox();
      v94 = v197;
      sub_2194512F8(v157, v197, type metadata accessor for SportsEventInfoTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_54;
    case 0x17uLL:
      v161 = swift_projectBox();
      v94 = v199;
      sub_2194512F8(v161, v199, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_54;
    case 0x18uLL:
      v131 = swift_projectBox();
      v94 = v200;
      sub_2194512F8(v131, v200, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_54;
    case 0x19uLL:
      v130 = swift_projectBox();
      v94 = v201;
      sub_2194512F8(v130, v201, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_54;
    case 0x1AuLL:
      v165 = swift_projectBox();
      v94 = v202;
      sub_2194512F8(v165, v202, type metadata accessor for HighlightsTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_54;
    case 0x1BuLL:
      v113 = swift_projectBox();
      v114 = v203;
      sub_2194512F8(v113, v203, type metadata accessor for ForYouTagFeedGroup);
      v106 = *v114;

      v115 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_42;
    case 0x1CuLL:
      v162 = swift_projectBox();
      v94 = v204;
      sub_2194512F8(v162, v204, type metadata accessor for ChannelRecipesTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_54;
    case 0x1DuLL:
      v163 = swift_projectBox();
      v94 = v205;
      sub_2194512F8(v163, v205, type metadata accessor for ForYouRecipesTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_54;
    case 0x1EuLL:
      v154 = swift_projectBox();
      v94 = v206;
      sub_2194512F8(v154, v206, type metadata accessor for RecentStoriesTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_54;
    case 0x1FuLL:
      v143 = swift_projectBox();
      v94 = v207;
      sub_2194512F8(v143, v207, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_54;
    case 0x20uLL:
      v155 = swift_projectBox();
      v114 = v208;
      sub_2194512F8(v155, v208, type metadata accessor for DateRangeTagFeedGroup);
      v106 = *v114;

      v115 = type metadata accessor for DateRangeTagFeedGroup;
LABEL_42:
      v133 = v115;
      v134 = v114;
      break;
    case 0x21uLL:
      v120 = swift_projectBox();
      v94 = v209;
      sub_2194512F8(v120, v209, type metadata accessor for SportsOnboardingTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_54;
    case 0x22uLL:
      v116 = swift_projectBox();
      v94 = v210;
      sub_2194512F8(v116, v210, type metadata accessor for SportsMastheadTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_54;
    case 0x23uLL:
      v111 = swift_projectBox();
      v94 = v211;
      sub_2194512F8(v111, v211, type metadata accessor for SportsEventTopicTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_54;
    case 0x24uLL:
      v112 = swift_projectBox();
      v94 = v212;
      sub_2194512F8(v112, v212, type metadata accessor for PuzzleListTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_54;
    case 0x25uLL:
      v109 = swift_projectBox();
      v94 = v213;
      sub_2194512F8(v109, v213, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_54;
    case 0x26uLL:
      v164 = swift_projectBox();
      v94 = v214;
      sub_2194512F8(v164, v214, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_54;
    case 0x27uLL:
      v158 = swift_projectBox();
      v94 = v215;
      sub_2194512F8(v158, v215, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_54;
    case 0x28uLL:
      v124 = swift_projectBox();
      v94 = v216;
      sub_2194512F8(v124, v216, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_54;
    case 0x29uLL:
      v145 = swift_projectBox();
      v94 = v217;
      sub_2194512F8(v145, v217, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_54;
    case 0x2AuLL:
      v160 = swift_projectBox();
      v94 = v218;
      sub_2194512F8(v160, v218, type metadata accessor for AffinityTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_54;
    case 0x2BuLL:
      v107 = swift_projectBox();
      v94 = v219;
      sub_2194512F8(v107, v219, type metadata accessor for SponsoredBannerTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_54;
    case 0x2CuLL:
      v118 = swift_projectBox();
      v94 = v220;
      sub_2194512F8(v118, v220, type metadata accessor for LatestRecipesTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_54;
    case 0x2DuLL:
      v156 = swift_projectBox();
      v94 = v221;
      sub_2194512F8(v156, v221, type metadata accessor for SavedRecipesTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_54;
    case 0x2EuLL:
      v166 = swift_projectBox();
      v94 = v222;
      sub_2194512F8(v166, v222, type metadata accessor for TrendingRecipesTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_54;
    case 0x2FuLL:
      v110 = swift_projectBox();
      v94 = v223;
      sub_2194512F8(v110, v223, type metadata accessor for TopicRecipesTagFeedGroup);
      v106 = sub_219BED784();
      v108 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_54:
      v133 = v108;
      v134 = v94;
      break;
    default:
      v105 = swift_projectBox();
      sub_2194512F8(v105, v104, type metadata accessor for TagFeedSectionGapDescriptor);
      sub_2194512F8(v104, v101, type metadata accessor for TagFeedSectionGapDescriptor);
      if ((*(v96 + 48))(v101, 1, v95) == 1)
      {
        v106 = 7364967;
      }

      else
      {
        sub_2194513CC(v101, v98, type metadata accessor for TagFeedBlueprintCollapsedSection);
        sub_218954350();
        v224 = sub_219BE6944();
        v225 = v168;
        MEMORY[0x21CECC330](14906, 0xE200000000000000);
        MEMORY[0x21CECC330](*&v98[*(v95 + 20)], *&v98[*(v95 + 20) + 8]);
        v106 = v224;
        sub_219451434(v98, type metadata accessor for TagFeedBlueprintCollapsedSection);
      }

      v133 = type metadata accessor for TagFeedSectionGapDescriptor;
      v134 = v104;
      break;
  }

  sub_219451434(v134, v133);
  return v106;
}

uint64_t sub_2194444D4(unint64_t a1)
{
  v2 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF1904();
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54B30();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v26 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if (v26 > 18)
  {
    if (v26 <= 0x2F)
    {
      if (((1 << ((a1 >> 58) & 0x3C | (a1 >> 1) & 3)) & 0x7BFFE0000000) != 0)
      {
        return result;
      }

      if (v26 == 42)
      {
        v31 = swift_projectBox();
        sub_2194512F8(v31, v7, type metadata accessor for AffinityTagFeedGroup);
        sub_219BED874();
        v28 = sub_219BF1844();
        (*(v39 + 8))(v16, v40);
        v29 = type metadata accessor for AffinityTagFeedGroup;
        v30 = v7;
LABEL_17:
        sub_219451434(v30, v29);
        return v28;
      }

      if (v26 == 47)
      {
        v36 = swift_projectBox();
        sub_2194512F8(v36, v4, type metadata accessor for TopicRecipesTagFeedGroup);
        sub_219BED874();
        v28 = sub_219BF1844();
        (*(v39 + 8))(v16, v40);
        v29 = type metadata accessor for TopicRecipesTagFeedGroup;
        v30 = v4;
        goto LABEL_17;
      }
    }

    if ((v26 - 19) < 9)
    {
      return result;
    }

    v37 = swift_projectBox();
    sub_2194512F8(v37, v10, type metadata accessor for ChannelRecipesTagFeedGroup);
    sub_219BED874();
    v28 = sub_219BF1844();
    (*(v39 + 8))(v16, v40);
    v29 = type metadata accessor for ChannelRecipesTagFeedGroup;
    v30 = v10;
    goto LABEL_17;
  }

  if (v26 > 9)
  {
    if ((v26 - 11) < 7)
    {
      return result;
    }

    if (v26 == 10)
    {
      v27 = swift_projectBox();
      sub_2194512F8(v27, v19, type metadata accessor for CuratedTagFeedGroup);
      sub_219BED874();
      v28 = sub_219BF1844();
      (*(v39 + 8))(v16, v40);
      v29 = type metadata accessor for CuratedTagFeedGroup;
      v30 = v19;
    }

    else
    {
      v35 = swift_projectBox();
      sub_2194512F8(v35, v13, type metadata accessor for MySportsTopicTagFeedGroup);
      sub_219BED874();
      v28 = sub_219BF1844();
      (*(v39 + 8))(v16, v40);
      v29 = type metadata accessor for MySportsTopicTagFeedGroup;
      v30 = v13;
    }

    goto LABEL_17;
  }

  if (v26 >= 9)
  {
    v32 = v22;
    v33 = swift_projectBox();
    (*(v21 + 16))(v24, v33, v32);
    sub_219BEE474();
    v34 = sub_2194444D4(v41);

    (*(v21 + 8))(v24, v32);
    return v34;
  }

  return result;
}

unint64_t sub_219444A98(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A125B4();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A124B0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (a2 >> 58) & 0x3C | (a2 >> 1) & 3;
  if (v16 > 0x2F)
  {
LABEL_9:
    if (v16 >= 4)
    {
      v23 = v13;
      v24 = swift_projectBox();
      (*(v12 + 16))(v15, v24, v23);
      v25 = swift_allocBox();
      sub_219BEDE54();
      (*(v12 + 8))(v15, v23);
      return v25 | 0x1000000000000000;
    }

    goto LABEL_3;
  }

  if (((1 << ((a2 >> 58) & 0x3C | (a2 >> 1) & 3)) & 0xFFBFFFFFFF60) == 0)
  {
    if (v16 == 7)
    {
      v18 = swift_projectBox();
      (*(v8 + 16))(v10, v18, v7);
      v19 = swift_allocBox();
      sub_219BEDE54();
      (*(v8 + 8))(v10, v7);
      return v19 | 0x1000000000000006;
    }

    if (v16 == 38)
    {
      v20 = swift_projectBox();
      sub_2194512F8(v20, v5, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      sub_219BED8A4();
      v21 = swift_allocBox();
      sub_2194513CC(v5, v22, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      return v21 | 0x9000000000000004;
    }

    goto LABEL_9;
  }

LABEL_3:

  return a2;
}

uint64_t sub_219444DD4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218F54B30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
    case 5uLL:
      v9 = MEMORY[0x277D2D260];
      goto LABEL_47;
    case 3uLL:
      v9 = MEMORY[0x277D2D3D8];
      goto LABEL_47;
    case 4uLL:
      v9 = MEMORY[0x277D2D420];
      goto LABEL_47;
    case 6uLL:
      v9 = MEMORY[0x277D2D388];
      goto LABEL_47;
    case 7uLL:
      v9 = MEMORY[0x277D2D3D0];
      goto LABEL_47;
    case 8uLL:
      v9 = MEMORY[0x277D2D398];
      goto LABEL_47;
    case 9uLL:
      v10 = v6;
      v11 = swift_projectBox();
      (*(v5 + 16))(v8, v11, v10);
      sub_219BEE474();
      sub_219444DD4(v16[1]);

      return (*(v5 + 8))(v8, v10);
    case 0xAuLL:
      v9 = MEMORY[0x277D2D3C8];
      goto LABEL_47;
    case 0xBuLL:
      v9 = MEMORY[0x277D2D278];
      goto LABEL_47;
    case 0xCuLL:
      v9 = MEMORY[0x277D2D348];
      goto LABEL_47;
    case 0xDuLL:
      v9 = MEMORY[0x277D2D2F0];
      goto LABEL_47;
    case 0xEuLL:
      v9 = MEMORY[0x277D2D358];
      goto LABEL_47;
    case 0xFuLL:
      v9 = MEMORY[0x277D2D318];
      goto LABEL_47;
    case 0x10uLL:
    case 0x11uLL:
      v9 = MEMORY[0x277D2D280];
      goto LABEL_47;
    case 0x12uLL:
      v9 = MEMORY[0x277D2D2C0];
      goto LABEL_47;
    case 0x13uLL:
      v9 = MEMORY[0x277D2D320];
      goto LABEL_47;
    case 0x14uLL:
      v9 = MEMORY[0x277D2D2D8];
      goto LABEL_47;
    case 0x15uLL:
      v9 = MEMORY[0x277D2D308];
      goto LABEL_47;
    case 0x16uLL:
      v9 = MEMORY[0x277D2D310];
      goto LABEL_47;
    case 0x17uLL:
      v9 = MEMORY[0x277D2D378];
      goto LABEL_47;
    case 0x18uLL:
      v9 = MEMORY[0x277D2D340];
      goto LABEL_47;
    case 0x19uLL:
      v9 = MEMORY[0x277D2D370];
      goto LABEL_47;
    case 0x1AuLL:
      v9 = MEMORY[0x277D2D240];
      goto LABEL_47;
    case 0x1BuLL:
      v9 = MEMORY[0x277D2D230];
      goto LABEL_47;
    case 0x1CuLL:
      v9 = MEMORY[0x277D2D220];
      goto LABEL_47;
    case 0x1DuLL:
      v9 = MEMORY[0x277D2D218];
      goto LABEL_47;
    case 0x1EuLL:
      v9 = MEMORY[0x277D2D360];
      goto LABEL_47;
    case 0x1FuLL:
      v9 = MEMORY[0x277D2D390];
      goto LABEL_47;
    case 0x20uLL:
      v9 = MEMORY[0x277D2D290];
      goto LABEL_47;
    case 0x21uLL:
      v9 = MEMORY[0x277D2D350];
      goto LABEL_47;
    case 0x22uLL:
      v9 = MEMORY[0x277D2D2E8];
      goto LABEL_47;
    case 0x23uLL:
      v9 = MEMORY[0x277D2D338];
      goto LABEL_47;
    case 0x24uLL:
      v9 = MEMORY[0x277D2D250];
      goto LABEL_47;
    case 0x25uLL:
      v9 = MEMORY[0x277D2D2C8];
      goto LABEL_47;
    case 0x26uLL:
      v9 = MEMORY[0x277D2D380];
      goto LABEL_47;
    case 0x27uLL:
      v9 = MEMORY[0x277D2D2E0];
      goto LABEL_47;
    case 0x28uLL:
      v9 = MEMORY[0x277D2D368];
      goto LABEL_47;
    case 0x29uLL:
      v9 = MEMORY[0x277D2D330];
      goto LABEL_47;
    case 0x2AuLL:
      v9 = MEMORY[0x277D2D3E0];
      goto LABEL_47;
    case 0x2BuLL:
      v9 = MEMORY[0x277D2D300];
      goto LABEL_47;
    case 0x2CuLL:
      v9 = MEMORY[0x277D2D2A8];
      goto LABEL_47;
    case 0x2DuLL:
      v9 = MEMORY[0x277D2D268];
      goto LABEL_47;
    case 0x2EuLL:
      v9 = MEMORY[0x277D2D328];
      goto LABEL_47;
    case 0x2FuLL:
      v9 = MEMORY[0x277D2D210];
      goto LABEL_47;
    default:
      v9 = MEMORY[0x277D2D3A0];
LABEL_47:
      v13 = *v9;
      v14 = sub_219BEBE54();
      v15 = *(*(v14 - 8) + 104);

      return v15(a2, v13, v14);
  }
}

uint64_t sub_219445190()
{
  if (((1 << ((*v0 >> 58) & 0x3C | (*v0 >> 1) & 3)) & 0xF009FE1CD666) != 0)
  {
    v1 = MEMORY[0x277D322A0];
    sub_2186E8264(0, &qword_280E8B8E8, MEMORY[0x277D322A0], MEMORY[0x277D84560]);
    sub_219BEEB84();
    *(swift_allocObject() + 16) = xmmword_219C09EC0;
    sub_219BEEB64();
    sub_219BEEB74();
    sub_21944D11C(&qword_280E918B8, MEMORY[0x277D322A0]);
    sub_2186E8264(0, &unk_280E8EF30, v1, MEMORY[0x277D83940]);
    sub_2193BBB60();
    return sub_219BF7164();
  }

  else
  {

    return MEMORY[0x2821905C0]();
  }
}

uint64_t sub_21944538C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MySportsTopicTagFeedGroup();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((1 << ((*v1 >> 58) & 0x3C | (*v1 >> 1) & 3)) & 0xFFFEB7FBFFDDLL) != 0)
  {
    v7 = MEMORY[0x277D32C18];
  }

  else
  {
    if (((1 << ((*v1 >> 58) & 0x3C | (*v1 >> 1) & 3)) & 0x148000022) == 0)
    {
      v12 = v4;
      v13 = swift_projectBox();
      sub_2194512F8(v13, v6, type metadata accessor for MySportsTopicTagFeedGroup);
      v14 = *(v12 + 24);
      v15 = sub_219BF02C4();
      (*(*(v15 - 8) + 16))(a1, &v6[v14], v15);
      return sub_219451434(v6, type metadata accessor for MySportsTopicTagFeedGroup);
    }

    v7 = MEMORY[0x277D32C20];
  }

  v8 = *v7;
  v9 = sub_219BF02C4();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

uint64_t sub_219445544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_219BEEA64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_218F54B30();
  v11 = swift_allocBox();
  v13[1] = v10;
  (*(v7 + 16))(v9, a2, v6);
  sub_218D5BF28();

  result = sub_219BEE464();
  *a3 = v11 | 0x2000000000000002;
  return result;
}

uint64_t sub_219445684@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_218F54B30();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (((v9 >> 58) & 0x3C | (v9 >> 1) & 3) == 9)
  {
    v10 = swift_projectBox();
    (*(v6 + 16))(v8, v10, v5);
    sub_219BEE474();
    result = (*(v6 + 8))(v8, v5);
    v9 = v12[1];
  }

  else
  {
  }

  *a2 = v9;
  return result;
}

uint64_t sub_2194457B8@<X0>(uint64_t a1@<X8>)
{
  sub_218F54B30();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*v1 >> 58) & 0x3C | (*v1 >> 1) & 3) == 9)
  {
    v8 = swift_projectBox();
    (*(v5 + 16))(v7, v8, v4);
    sub_219451360();
    v10 = v9;
    sub_219BEE474();
    sub_219BEE484();
    (*(v5 + 8))(v7, v4);
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  else
  {
    sub_219451360();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_219445994@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218F54B30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((1 << ((a1 >> 58) & 0x3C | (a1 >> 1) & 3)) & 0xFFF7FDFBFDDFLL) != 0)
  {
    v9 = MEMORY[0x277D31EA0];
  }

  else
  {
    if (((1 << ((a1 >> 58) & 0x3C | (a1 >> 1) & 3)) & 0x802040020) == 0)
    {
      v14 = v6;
      v15 = swift_projectBox();
      (*(v5 + 16))(v8, v15, v14);
      sub_219BEE474();
      sub_219445994(v16[1]);

      return (*(v5 + 8))(v8, v14);
    }

    v9 = MEMORY[0x277D31E98];
  }

  v10 = *v9;
  v11 = sub_219BEDDC4();
  v12 = *(*(v11 - 8) + 104);

  return v12(a2, v10, v11);
}

uint64_t sub_219445B70@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218F54B30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if ((v9 - 10) < 0x26)
  {
    goto LABEL_2;
  }

  if (v9 <= 4)
  {
    if ((v9 - 1) >= 3)
    {
      if (!v9)
      {
        v10 = MEMORY[0x277D33180];
        goto LABEL_3;
      }

LABEL_14:
      v10 = MEMORY[0x277D33188];
      goto LABEL_3;
    }

LABEL_2:
    v10 = MEMORY[0x277D33190];
    goto LABEL_3;
  }

  if (v9 < 7)
  {
    goto LABEL_2;
  }

  if (v9 == 7)
  {
    goto LABEL_14;
  }

  if (v9 != 8)
  {
    v15 = v6;
    v16 = swift_projectBox();
    (*(v5 + 16))(v8, v16, v15);
    sub_219BEE474();
    sub_219445B70(v17[1]);

    return (*(v5 + 8))(v8, v15);
  }

  v10 = MEMORY[0x277D33178];
LABEL_3:
  v11 = *v10;
  v12 = sub_219BF10E4();
  v13 = *(*(v12 - 8) + 104);

  return v13(a2, v11, v12);
}

uint64_t sub_219445D64@<X0>(uint64_t *a1@<X8>)
{
  v245 = a1;
  v243 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v243);
  v244 = &v162 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v241);
  v242 = &v162 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v239);
  v240 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v237);
  v238 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v235);
  v236 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v233);
  v234 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v231);
  v232 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v229);
  v230 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v227);
  v228 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v225);
  v226 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v223);
  v224 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v221);
  v222 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v219);
  v220 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v217);
  v218 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v215);
  v216 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v213);
  v214 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v211);
  v212 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v209);
  v210 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v207);
  v208 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v205);
  v206 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v203);
  v204 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v201);
  v202 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v199);
  v200 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v197);
  v198 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v195);
  v196 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v193);
  v194 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v191);
  v192 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v189);
  v190 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v187);
  v188 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v185);
  v186 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v183);
  v184 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v181);
  v182 = &v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v179);
  v180 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v177);
  v178 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v175);
  v176 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v173);
  v174 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v171);
  v172 = &v162 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54B30();
  v170 = v38;
  v169 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v168 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_219BED544();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v163);
  v164 = &v162 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v42);
  v44 = &v162 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v45);
  v47 = &v162 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v48);
  v50 = &v162 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v51);
  v53 = &v162 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ArticleListTagFeedGroup();
  result = MEMORY[0x28223BE20](v54);
  v57 = &v162 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((v58 >> 58) & 0x3C | (v58 >> 1) & 3)
  {
    case 1uLL:
      v110 = swift_projectBox();
      sub_2194512F8(v110, v57, type metadata accessor for ArticleListTagFeedGroup);
      v111 = v245;
      v245[3] = v54;
      v111[4] = sub_21944D11C(qword_280EC5FA8, type metadata accessor for ArticleListTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v111);
      v91 = type metadata accessor for ArticleListTagFeedGroup;
      v92 = v57;
      goto LABEL_49;
    case 2uLL:
      v89 = swift_projectBox();
      sub_2194512F8(v89, v53, type metadata accessor for PromotedArticleListTagFeedGroup);
      v90 = v245;
      v245[3] = v51;
      v90[4] = sub_21944D11C(&unk_27CC1C560, type metadata accessor for PromotedArticleListTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
      v91 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v92 = v53;
      goto LABEL_49;
    case 3uLL:
      v93 = swift_projectBox();
      sub_2194512F8(v93, v44, type metadata accessor for WeatherTagFeedGroup);
      v94 = v245;
      v245[3] = v42;
      v94[4] = sub_21944D11C(&unk_27CC1C540, type metadata accessor for WeatherTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
      v91 = type metadata accessor for WeatherTagFeedGroup;
      v92 = v44;
      goto LABEL_49;
    case 5uLL:
      v116 = swift_projectBox();
      sub_2194512F8(v116, v50, type metadata accessor for ChannelSectionTagFeedGroup);
      v117 = v245;
      v245[3] = v48;
      v117[4] = sub_21944D11C(&unk_27CC1C550, type metadata accessor for ChannelSectionTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
      v91 = type metadata accessor for ChannelSectionTagFeedGroup;
      v92 = v50;
      goto LABEL_49;
    case 6uLL:
      v95 = swift_projectBox();
      sub_2194512F8(v95, v47, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v96 = v245;
      v245[3] = v45;
      v96[4] = sub_21944D11C(&qword_27CC1A510, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
      v91 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v92 = v47;
      goto LABEL_49;
    case 8uLL:
      v97 = swift_projectBox();
      v98 = v166;
      v99 = v165;
      v100 = v167;
      (*(v166 + 16))(v165, v97, v167);
      v101 = MEMORY[0x277D31BA0];
      v102 = v245;
      v245[3] = v100;
      v102[4] = v101;
      v103 = __swift_allocate_boxed_opaque_existential_1(v102);
      return (*(v98 + 32))(v103, v99, v100);
    case 9uLL:
      v118 = swift_projectBox();
      v119 = v169;
      v120 = v168;
      v121 = v170;
      (*(v169 + 16))(v168, v118, v170);
      sub_219BEE474();
      sub_219445D64(v246);

      return (*(v119 + 8))(v120, v121);
    case 0xAuLL:
      v83 = swift_projectBox();
      v61 = v164;
      sub_2194512F8(v83, v164, type metadata accessor for CuratedTagFeedGroup);
      v84 = v245;
      v245[3] = v163;
      v84[4] = sub_21944D11C(&qword_280ED1980, type metadata accessor for CuratedTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
      v64 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_48;
    case 0xBuLL:
      v104 = swift_projectBox();
      v61 = v172;
      sub_2194512F8(v104, v172, type metadata accessor for SportsRecordTagFeedGroup);
      v105 = v245;
      v245[3] = v171;
      v105[4] = sub_21944D11C(&unk_27CC1C530, type metadata accessor for SportsRecordTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
      v64 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_48;
    case 0xCuLL:
      v114 = swift_projectBox();
      v61 = v174;
      sub_2194512F8(v114, v174, type metadata accessor for SportsNavigationTagFeedGroup);
      v115 = v245;
      v245[3] = v173;
      v115[4] = sub_21944D11C(&qword_27CC192B8, type metadata accessor for SportsNavigationTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v115);
      v64 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_48;
    case 0xDuLL:
      v138 = swift_projectBox();
      v61 = v176;
      sub_2194512F8(v138, v176, type metadata accessor for SportsScheduleTagFeedGroup);
      v139 = v245;
      v245[3] = v175;
      v139[4] = sub_21944D11C(&unk_27CC1C520, type metadata accessor for SportsScheduleTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v139);
      v64 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_48;
    case 0xEuLL:
      v87 = swift_projectBox();
      v61 = v178;
      sub_2194512F8(v87, v178, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v88 = v245;
      v245[3] = v177;
      v88[4] = sub_21944D11C(&qword_27CC1A508, type metadata accessor for SportsTopStoriesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
      v64 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_48;
    case 0xFuLL:
      v122 = swift_projectBox();
      v61 = v180;
      sub_2194512F8(v122, v180, type metadata accessor for SportsFavoritesTagFeedGroup);
      v123 = v245;
      v245[3] = v179;
      v123[4] = sub_21944D11C(&unk_27CC1C510, type metadata accessor for SportsFavoritesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v123);
      v64 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_48;
    case 0x10uLL:
      v79 = swift_projectBox();
      v61 = v182;
      sub_2194512F8(v79, v182, type metadata accessor for SportsScoresTagFeedGroup);
      v80 = v245;
      v245[3] = v181;
      v80[4] = sub_21944D11C(&qword_280EC0190, type metadata accessor for SportsScoresTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
      v64 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_48;
    case 0x11uLL:
      v132 = swift_projectBox();
      v61 = v184;
      sub_2194512F8(v132, v184, type metadata accessor for SportsLinksTagFeedGroup);
      v133 = v245;
      v245[3] = v183;
      v133[4] = sub_21944D11C(&unk_27CC1C500, type metadata accessor for SportsLinksTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v133);
      v64 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_48;
    case 0x12uLL:
      v140 = swift_projectBox();
      v61 = v186;
      sub_2194512F8(v140, v186, type metadata accessor for MySportsTopicTagFeedGroup);
      v141 = v245;
      v245[3] = v185;
      v141[4] = sub_21944D11C(&qword_280EBDD70, type metadata accessor for MySportsTopicTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v141);
      v64 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_48;
    case 0x13uLL:
      v73 = swift_projectBox();
      v61 = v188;
      sub_2194512F8(v73, v188, type metadata accessor for SportsStandingsTagFeedGroup);
      v74 = v245;
      v245[3] = v187;
      v74[4] = sub_21944D11C(&qword_27CC16058, type metadata accessor for SportsStandingsTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
      v64 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_48;
    case 0x14uLL:
      v128 = swift_projectBox();
      v61 = v190;
      sub_2194512F8(v128, v190, type metadata accessor for SportsBracketTagFeedGroup);
      v129 = v245;
      v245[3] = v189;
      v129[4] = sub_21944D11C(&unk_27CC1C4F0, type metadata accessor for SportsBracketTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v129);
      v64 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_48;
    case 0x15uLL:
      v130 = swift_projectBox();
      v61 = v192;
      sub_2194512F8(v130, v192, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v131 = v245;
      v245[3] = v191;
      v131[4] = sub_21944D11C(&qword_27CC1A500, type metadata accessor for SportsBoxScoresTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v131);
      v64 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_48;
    case 0x16uLL:
      v144 = swift_projectBox();
      v61 = v194;
      sub_2194512F8(v144, v194, type metadata accessor for SportsEventInfoTagFeedGroup);
      v145 = v245;
      v245[3] = v193;
      v145[4] = sub_21944D11C(&unk_27CC1C4E0, type metadata accessor for SportsEventInfoTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v145);
      v64 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_48;
    case 0x17uLL:
      v150 = swift_projectBox();
      v61 = v196;
      sub_2194512F8(v150, v196, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v151 = v245;
      v245[3] = v195;
      v151[4] = sub_21944D11C(&qword_27CC0B3E0, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v151);
      v64 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_48;
    case 0x18uLL:
      v112 = swift_projectBox();
      v61 = v198;
      sub_2194512F8(v112, v198, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v113 = v245;
      v245[3] = v197;
      v113[4] = sub_21944D11C(&unk_27CC1C4D0, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v113);
      v64 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_48;
    case 0x19uLL:
      v108 = swift_projectBox();
      v61 = v200;
      sub_2194512F8(v108, v200, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v109 = v245;
      v245[3] = v199;
      v109[4] = sub_21944D11C(&qword_27CC119A0, type metadata accessor for SportsEventArticlesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v109);
      v64 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_48;
    case 0x1AuLL:
      v158 = swift_projectBox();
      v61 = v202;
      sub_2194512F8(v158, v202, type metadata accessor for HighlightsTagFeedGroup);
      v159 = v245;
      v245[3] = v201;
      v159[4] = sub_21944D11C(&unk_27CC1C4C0, type metadata accessor for HighlightsTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v159);
      v64 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_48;
    case 0x1BuLL:
      v75 = swift_projectBox();
      v61 = v204;
      sub_2194512F8(v75, v204, type metadata accessor for ForYouTagFeedGroup);
      v76 = v245;
      v245[3] = v203;
      v76[4] = sub_21944D11C(qword_280ED3A90, type metadata accessor for ForYouTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
      v64 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_48;
    case 0x1CuLL:
      v152 = swift_projectBox();
      v61 = v206;
      sub_2194512F8(v152, v206, type metadata accessor for ChannelRecipesTagFeedGroup);
      v153 = v245;
      v245[3] = v205;
      v153[4] = sub_21944D11C(&qword_27CC1A4F8, type metadata accessor for ChannelRecipesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v153);
      v64 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x1DuLL:
      v154 = swift_projectBox();
      v61 = v208;
      sub_2194512F8(v154, v208, type metadata accessor for ForYouRecipesTagFeedGroup);
      v155 = v245;
      v245[3] = v207;
      v155[4] = sub_21944D11C(&qword_27CC1A4F0, type metadata accessor for ForYouRecipesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
      v64 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x1EuLL:
      v134 = swift_projectBox();
      v61 = v210;
      sub_2194512F8(v134, v210, type metadata accessor for RecentStoriesTagFeedGroup);
      v135 = v245;
      v245[3] = v209;
      v135[4] = sub_21944D11C(qword_280EBD5A0, type metadata accessor for RecentStoriesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v135);
      v64 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_48;
    case 0x1FuLL:
      v124 = swift_projectBox();
      v61 = v212;
      sub_2194512F8(v124, v212, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v125 = v245;
      v245[3] = v211;
      v125[4] = sub_21944D11C(&qword_27CC12BC8, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v125);
      v64 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x20uLL:
      v136 = swift_projectBox();
      v61 = v214;
      sub_2194512F8(v136, v214, type metadata accessor for DateRangeTagFeedGroup);
      v137 = v245;
      v245[3] = v213;
      v137[4] = sub_21944D11C(&unk_27CC1C4B0, type metadata accessor for DateRangeTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v137);
      v64 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_48;
    case 0x21uLL:
      v85 = swift_projectBox();
      v61 = v216;
      sub_2194512F8(v85, v216, type metadata accessor for SportsOnboardingTagFeedGroup);
      v86 = v245;
      v245[3] = v215;
      v86[4] = sub_21944D11C(&qword_280EB2858, type metadata accessor for SportsOnboardingTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
      v64 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_48;
    case 0x22uLL:
      v77 = swift_projectBox();
      v61 = v218;
      sub_2194512F8(v77, v218, type metadata accessor for SportsMastheadTagFeedGroup);
      v78 = v245;
      v245[3] = v217;
      v78[4] = sub_21944D11C(&unk_27CC1C4A0, type metadata accessor for SportsMastheadTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
      v64 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_48;
    case 0x23uLL:
      v69 = swift_projectBox();
      v61 = v220;
      sub_2194512F8(v69, v220, type metadata accessor for SportsEventTopicTagFeedGroup);
      v70 = v245;
      v245[3] = v219;
      v70[4] = sub_21944D11C(&qword_27CC13A98, type metadata accessor for SportsEventTopicTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
      v64 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_48;
    case 0x24uLL:
      v71 = swift_projectBox();
      v61 = v222;
      sub_2194512F8(v71, v222, type metadata accessor for PuzzleListTagFeedGroup);
      v72 = v245;
      v245[3] = v221;
      v72[4] = sub_21944D11C(&qword_280EC7200, type metadata accessor for PuzzleListTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
      v64 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_48;
    case 0x25uLL:
      v65 = swift_projectBox();
      v61 = v224;
      sub_2194512F8(v65, v224, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v66 = v245;
      v245[3] = v223;
      v66[4] = sub_21944D11C(&qword_27CC0C7E8, type metadata accessor for PuzzleArchiveTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
      v64 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_48;
    case 0x26uLL:
      v156 = swift_projectBox();
      v61 = v226;
      sub_2194512F8(v156, v226, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v157 = v245;
      v245[3] = v225;
      v157[4] = sub_21944D11C(&qword_280EA28D0, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v157);
      v64 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_48;
    case 0x27uLL:
      v146 = swift_projectBox();
      v61 = v228;
      sub_2194512F8(v146, v228, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v147 = v245;
      v245[3] = v227;
      v147[4] = sub_21944D11C(&qword_27CC19AD8, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v147);
      v64 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_48;
    case 0x28uLL:
      v106 = swift_projectBox();
      v61 = v230;
      sub_2194512F8(v106, v230, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v107 = v245;
      v245[3] = v229;
      v107[4] = sub_21944D11C(&unk_27CC1C490, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v107);
      v64 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_48;
    case 0x29uLL:
      v126 = swift_projectBox();
      v61 = v232;
      sub_2194512F8(v126, v232, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v127 = v245;
      v245[3] = v231;
      v127[4] = sub_21944D11C(&qword_27CC15460, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v127);
      v64 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_48;
    case 0x2AuLL:
      v148 = swift_projectBox();
      v61 = v234;
      sub_2194512F8(v148, v234, type metadata accessor for AffinityTagFeedGroup);
      v149 = v245;
      v245[3] = v233;
      v149[4] = sub_21944D11C(&qword_280ECF800, type metadata accessor for AffinityTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v149);
      v64 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_48;
    case 0x2BuLL:
      v60 = swift_projectBox();
      v61 = v236;
      sub_2194512F8(v60, v236, type metadata accessor for SponsoredBannerTagFeedGroup);
      v62 = v245;
      v245[3] = v235;
      v62[4] = sub_21944D11C(qword_280EB6F60, type metadata accessor for SponsoredBannerTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
      v64 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_48;
    case 0x2CuLL:
      v81 = swift_projectBox();
      v61 = v238;
      sub_2194512F8(v81, v238, type metadata accessor for LatestRecipesTagFeedGroup);
      v82 = v245;
      v245[3] = v237;
      v82[4] = sub_21944D11C(&qword_27CC1A308, type metadata accessor for LatestRecipesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
      v64 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x2DuLL:
      v142 = swift_projectBox();
      v61 = v240;
      sub_2194512F8(v142, v240, type metadata accessor for SavedRecipesTagFeedGroup);
      v143 = v245;
      v245[3] = v239;
      v143[4] = sub_21944D11C(&qword_27CC14CC8, type metadata accessor for SavedRecipesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v143);
      v64 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x2EuLL:
      v160 = swift_projectBox();
      v61 = v242;
      sub_2194512F8(v160, v242, type metadata accessor for TrendingRecipesTagFeedGroup);
      v161 = v245;
      v245[3] = v241;
      v161[4] = sub_21944D11C(&qword_27CC101C0, type metadata accessor for TrendingRecipesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v161);
      v64 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x2FuLL:
      v67 = swift_projectBox();
      v61 = v244;
      sub_2194512F8(v67, v244, type metadata accessor for TopicRecipesTagFeedGroup);
      v68 = v245;
      v245[3] = v243;
      v68[4] = sub_21944D11C(&qword_27CC1A4E8, type metadata accessor for TopicRecipesTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
      v64 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_48:
      v91 = v64;
      v92 = v61;
LABEL_49:
      result = sub_2194513CC(v92, boxed_opaque_existential_1, v91);
      break;
    default:
      v59 = v245;
      v245[4] = 0;
      *v59 = 0u;
      *(v59 + 1) = 0u;
      break;
  }

  return result;
}

uint64_t sub_21944878C@<X0>(uint64_t a1@<X8>)
{
  v170 = a1;
  v1 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v163 = &v129 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v162 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v161 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v160 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v159 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v158 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v157 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v156 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v154);
  v155 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v153 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v152 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v150);
  v151 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v149 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v148 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v147 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v146 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v145 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v144 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v143 = &v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v142 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v140);
  v141 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v139 = &v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v137);
  v138 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v43 - 8);
  v136 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v134);
  v135 = &v129 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v133 = &v129 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v131);
  v132 = &v129 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v49 - 8);
  v51 = &v129 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v129 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54B30();
  v56 = v55;
  v130 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v129 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v59 - 8);
  v61 = &v129 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v62 - 8);
  v64 = &v129 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v65);
  v67 = &v129 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v68 - 8);
  v70 = &v129 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BDDCF4();
  v72 = *(v71 - 8);
  v166 = v71;
  v167 = v72;
  MEMORY[0x28223BE20](v71);
  v169 = &v129 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BED8D4();
  v75 = *(v74 - 8);
  v164 = v74;
  v165 = v75;
  MEMORY[0x28223BE20](v74);
  v168 = &v129 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v77 - 8);
  v79 = &v129 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((v80 >> 58) & 0x3C | (v80 >> 1) & 3)
  {
    case 1uLL:
      v112 = swift_projectBox();
      sub_2194512F8(v112, v79, type metadata accessor for ArticleListTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for ArticleListTagFeedGroup;
      goto LABEL_40;
    case 2uLL:
      v99 = swift_projectBox();
      sub_2194512F8(v99, v70, type metadata accessor for PromotedArticleListTagFeedGroup);
      (*(v165 + 16))(v168, v70, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v100 = v170;
      sub_219BDE264();
      sub_219451434(v70, type metadata accessor for PromotedArticleListTagFeedGroup);
      v101 = sub_219BDE274();
      return (*(*(v101 - 8) + 56))(v100, 0, 1, v101);
    case 3uLL:
      v106 = swift_projectBox();
      sub_2194512F8(v106, v67, type metadata accessor for WeatherTagFeedGroup);
      (*(v165 + 16))(v168, &v67[*(v65 + 20)], v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v96 = type metadata accessor for WeatherTagFeedGroup;
      v97 = v67;
      goto LABEL_41;
    case 5uLL:
      v95 = swift_projectBox();
      sub_2194512F8(v95, v64, type metadata accessor for ChannelSectionTagFeedGroup);
      (*(v165 + 16))(v168, v64, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v96 = type metadata accessor for ChannelSectionTagFeedGroup;
      v97 = v64;
      goto LABEL_41;
    case 6uLL:
      v108 = swift_projectBox();
      sub_2194512F8(v108, v61, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      (*(v165 + 16))(v168, v61, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v96 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v97 = v61;
      goto LABEL_41;
    case 9uLL:
      v113 = swift_projectBox();
      v114 = v130;
      (*(v130 + 16))(v58, v113, v56);
      sub_219BEE474();
      sub_21944878C(v171);

      return (*(v114 + 8))(v58, v56);
    case 0xAuLL:
      v120 = swift_projectBox();
      sub_2194512F8(v120, v54, type metadata accessor for CuratedTagFeedGroup);
      (*(v165 + 16))(v168, v54, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v96 = type metadata accessor for CuratedTagFeedGroup;
      v97 = v54;
      goto LABEL_41;
    case 0xBuLL:
      v110 = swift_projectBox();
      sub_2194512F8(v110, v51, type metadata accessor for SportsRecordTagFeedGroup);
      (*(v165 + 16))(v168, v51, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v96 = type metadata accessor for SportsRecordTagFeedGroup;
      v97 = v51;
      goto LABEL_41;
    case 0xCuLL:
      v111 = swift_projectBox();
      v79 = v132;
      sub_2194512F8(v111, v132, type metadata accessor for SportsNavigationTagFeedGroup);
      (*(v165 + 16))(v168, &v79[*(v131 + 20)], v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_40;
    case 0xDuLL:
      v118 = swift_projectBox();
      v79 = v133;
      sub_2194512F8(v118, v133, type metadata accessor for SportsScheduleTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_40;
    case 0xEuLL:
      v122 = swift_projectBox();
      v79 = v135;
      sub_2194512F8(v122, v135, type metadata accessor for SportsTopStoriesTagFeedGroup);
      (*(v165 + 16))(v168, &v79[*(v134 + 20)], v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_40;
    case 0xFuLL:
      v105 = swift_projectBox();
      v79 = v136;
      sub_2194512F8(v105, v136, type metadata accessor for SportsFavoritesTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_40;
    case 0x10uLL:
      v104 = swift_projectBox();
      v79 = v138;
      sub_2194512F8(v104, v138, type metadata accessor for SportsScoresTagFeedGroup);
      (*(v165 + 16))(v168, &v79[*(v137 + 20)], v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_40;
    case 0x11uLL:
      v126 = swift_projectBox();
      v79 = v139;
      sub_2194512F8(v126, v139, type metadata accessor for SportsLinksTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_40;
    case 0x12uLL:
      v93 = swift_projectBox();
      v79 = v141;
      sub_2194512F8(v93, v141, type metadata accessor for MySportsTopicTagFeedGroup);
      (*(v165 + 16))(v168, &v79[*(v140 + 20)], v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_40;
    case 0x13uLL:
      v123 = swift_projectBox();
      v79 = v142;
      sub_2194512F8(v123, v142, type metadata accessor for SportsStandingsTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_40;
    case 0x14uLL:
      v124 = swift_projectBox();
      v79 = v143;
      sub_2194512F8(v124, v143, type metadata accessor for SportsBracketTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_40;
    case 0x15uLL:
      v115 = swift_projectBox();
      v79 = v144;
      sub_2194512F8(v115, v144, type metadata accessor for SportsBoxScoresTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_40;
    case 0x16uLL:
      v107 = swift_projectBox();
      v79 = v145;
      sub_2194512F8(v107, v145, type metadata accessor for SportsEventInfoTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_40;
    case 0x17uLL:
      v116 = swift_projectBox();
      v79 = v146;
      sub_2194512F8(v116, v146, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_40;
    case 0x18uLL:
      v102 = swift_projectBox();
      v79 = v147;
      sub_2194512F8(v102, v147, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_40;
    case 0x19uLL:
      v94 = swift_projectBox();
      v79 = v148;
      sub_2194512F8(v94, v148, type metadata accessor for SportsEventArticlesTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_40;
    case 0x1AuLL:
      v91 = swift_projectBox();
      v79 = v149;
      sub_2194512F8(v91, v149, type metadata accessor for HighlightsTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_40;
    case 0x1BuLL:
      v92 = swift_projectBox();
      v79 = v151;
      sub_2194512F8(v92, v151, type metadata accessor for ForYouTagFeedGroup);
      (*(v165 + 16))(v168, &v79[*(v150 + 20)], v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_40;
    case 0x1CuLL:
      v89 = swift_projectBox();
      v79 = v152;
      sub_2194512F8(v89, v152, type metadata accessor for ChannelRecipesTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_40;
    case 0x1EuLL:
      v125 = swift_projectBox();
      v79 = v153;
      sub_2194512F8(v125, v153, type metadata accessor for RecentStoriesTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_40;
    case 0x20uLL:
      v119 = swift_projectBox();
      v79 = v155;
      sub_2194512F8(v119, v155, type metadata accessor for DateRangeTagFeedGroup);
      (*(v165 + 16))(v168, &v79[*(v154 + 20)], v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_40;
    case 0x21uLL:
      v103 = swift_projectBox();
      v79 = v156;
      sub_2194512F8(v103, v156, type metadata accessor for SportsOnboardingTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_40;
    case 0x22uLL:
      v109 = swift_projectBox();
      v79 = v157;
      sub_2194512F8(v109, v157, type metadata accessor for SportsMastheadTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_40;
    case 0x23uLL:
      v121 = swift_projectBox();
      v79 = v158;
      sub_2194512F8(v121, v158, type metadata accessor for SportsEventTopicTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_40;
    case 0x2AuLL:
      v86 = swift_projectBox();
      v79 = v159;
      sub_2194512F8(v86, v159, type metadata accessor for AffinityTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_40;
    case 0x2CuLL:
      v98 = swift_projectBox();
      v79 = v160;
      sub_2194512F8(v98, v160, type metadata accessor for LatestRecipesTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_40;
    case 0x2DuLL:
      v117 = swift_projectBox();
      v79 = v161;
      sub_2194512F8(v117, v161, type metadata accessor for SavedRecipesTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_40;
    case 0x2EuLL:
      v127 = swift_projectBox();
      v79 = v162;
      sub_2194512F8(v127, v162, type metadata accessor for TrendingRecipesTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_40;
    case 0x2FuLL:
      v90 = swift_projectBox();
      v79 = v163;
      sub_2194512F8(v90, v163, type metadata accessor for TopicRecipesTagFeedGroup);
      (*(v165 + 16))(v168, v79, v164);
      (*(v167 + 104))(v169, *MEMORY[0x277D2FCF8], v166);
      v87 = v170;
      sub_219BDE264();
      v88 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_40:
      v96 = v88;
      v97 = v79;
LABEL_41:
      sub_219451434(v97, v96);
      v128 = sub_219BDE274();
      result = (*(*(v128 - 8) + 56))(v87, 0, 1, v128);
      break;
    default:
      v81 = sub_219BDE274();
      v82 = *(*(v81 - 8) + 56);
      v83 = v81;
      v84 = v170;

      result = v82(v84, 1, 1, v83);
      break;
  }

  return result;
}