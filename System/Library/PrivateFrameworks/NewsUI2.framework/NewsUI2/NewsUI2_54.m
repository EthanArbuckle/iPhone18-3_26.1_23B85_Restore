uint64_t sub_218CC4D74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ChannelTodayFeedGroupKnobs()
{
  result = qword_280EBBED0;
  if (!qword_280EBBED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218CC4E38()
{
  sub_2189AE994(319);
  if (v0 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v1 <= 0x3F)
    {
      sub_2186E4FBC(319);
      if (v2 <= 0x3F)
      {
        sub_218CC4F34();
        if (v3 <= 0x3F)
        {
          sub_2186ECA28();
          if (v4 <= 0x3F)
          {
            sub_218CC4F9C();
            if (v5 <= 0x3F)
            {
              sub_2186F95C4();
              if (v6 <= 0x3F)
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

void sub_218CC4F34()
{
  if (!qword_280E8FB18)
  {
    sub_219BEF814();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FB18);
    }
  }
}

void sub_218CC4F9C()
{
  if (!qword_280E91790)
  {
    v0 = sub_219BEEE14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91790);
    }
  }
}

uint64_t sub_218CC5018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  sub_2189AE9B4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v57 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  sub_2189AF720(0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v49 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - v23;
  (*(v10 + 16))(&v47 - v23, v2, v9);
  v25 = *(v10 + 56);
  v59 = v24;
  v25(v24, 0, 1, v9);
  v26 = type metadata accessor for ChannelTodayFeedGroupKnobs();
  (*(v6 + 16))(v19, v2 + v26[5], v5);
  v54 = v6;
  v55 = v5;
  v27 = *(v6 + 56);
  v60 = v19;
  v27(v19, 0, 1, v5);
  v28 = v2 + v26[6];
  v52 = v14;
  sub_218CC6AC0(v28, a1, v14);
  v29 = *(v2 + v26[7]);
  v30 = type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides();
  v31 = v30;
  if (*(a1 + *(v30 + 20)))
  {
    v50 = a1;
    v58 = v9;
    MEMORY[0x28223BE20](v30);
    sub_219BF0204();
    sub_219BEF814();

    v32 = sub_219BF5254();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v29;
    sub_218CC7EC8(v32, sub_218CC7128, 0, isUniquelyReferenced_nonNull_native, &v61);

    v29 = v61;
    v9 = v58;
    a1 = v50;
  }

  else
  {
  }

  if (*(a1 + *(v31 + 24)))
  {
    v47 = *(a1 + *(v31 + 24));
  }

  else
  {
    v47 = *(v2 + v26[8]);
  }

  v58 = *(v2 + v26[9]);
  if (*(a1 + *(v31 + 28)))
  {
    v48 = *(a1 + *(v31 + 28));
  }

  else
  {
    v48 = *(v2 + v26[10]);
  }

  v50 = v29;
  v34 = v49;
  sub_218CC6E40(v59, v49, sub_2189AF720);
  v35 = *(v10 + 48);
  if (v35(v34, 1, v9) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFA28(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);

    v36 = v51;
    sub_219BEE974();
    v37 = v35(v34, 1, v9);
    v38 = v53;
    v39 = v57;
    if (v37 != 1)
    {
      sub_218CC8630(v34, sub_2189AF720);
    }
  }

  else
  {
    v36 = v51;
    (*(v10 + 32))(v51, v34, v9);

    v38 = v53;
    v39 = v57;
  }

  v40 = v56;
  (*(v10 + 32))(v56, v36, v9);
  sub_218CC6E40(v60, v39, sub_2189AF700);
  v42 = v54;
  v41 = v55;
  v43 = *(v54 + 48);
  if (v43(v39, 1, v55) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFA28(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v44 = v57;
    sub_219BEEC74();
    if (v43(v44, 1, v41) != 1)
    {
      sub_218CC8630(v44, sub_2189AF700);
    }
  }

  else
  {
    (*(v42 + 32))(v38, v39, v41);
  }

  (*(v42 + 32))(v40 + v26[5], v38, v41);
  v45 = v52;
  sub_218CC6E40(v52, v40 + v26[6], sub_2186E4FBC);
  *(v40 + v26[7]) = v50;
  *(v40 + v26[8]) = v47;
  *(v40 + v26[9]) = v58;
  sub_218CC8630(v45, sub_2186E4FBC);
  sub_218CC8630(v60, sub_2189AF700);
  result = sub_218CC8630(v59, sub_2189AF720);
  *(v40 + v26[10]) = v48;
  return result;
}

uint64_t sub_218CC5824@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  sub_2189AE9B4(0);
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x28223BE20](v3);
  v79 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v78 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ChannelTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v82);
  v81 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v88 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v65 - v14;
  sub_2189AF720(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v86 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = v65 - v19;
  sub_218CC8454(0, &qword_280E8CD28, MEMORY[0x277D844C8]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = v65 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CC69BC();
  v25 = v87;
  sub_219BF7B34();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v70 = v13;
  v74 = 0;
  v87 = v22;
  v72 = a1;
  LOBYTE(v93) = 0;
  sub_2186DFA28(&qword_280E91A28, sub_2189AE994);
  v27 = v85;
  v28 = v77;
  sub_219BF7674();
  LOBYTE(v93) = 1;
  sub_2186DFA28(&qword_280E91868, sub_2189AE9B4);
  v67 = v15;
  sub_219BF7674();
  sub_219BEF814();
  LOBYTE(v93) = 2;
  sub_2186DFA28(&qword_280E912E8, MEMORY[0x277D32720]);
  sub_219BF7674();
  sub_218CC4F34();
  LOBYTE(v92) = 3;
  sub_218CC84B8();
  sub_219BF7674();
  v66 = v93;
  sub_2186ECA28();
  v30 = v29;
  LOBYTE(v91) = 4;
  sub_2186DFA28(&qword_280E913D8, sub_2186ECA28);
  v65[2] = v30;
  sub_219BF7674();
  v31 = v92;
  sub_218CC4F9C();
  v33 = v32;
  LOBYTE(v90) = 5;
  sub_2186DFA28(&qword_280E91798, sub_218CC4F9C);
  v65[1] = v33;
  sub_219BF7674();
  v75 = v91;
  sub_2186F95C4();
  v35 = v34;
  LOBYTE(v89) = 6;
  sub_2186DFA28(&qword_280E913F8, sub_2186F95C4);
  v71 = v21;
  v65[3] = v35;
  sub_219BF7674();
  v68 = v90;
  v36 = v86;
  sub_218CC6E40(v27, v86, sub_2189AF720);
  v37 = v76;
  v38 = *(v76 + 48);
  v39 = v38(v36, 1, v28);
  v40 = v28;
  v69 = v31;
  if (v39 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFA28(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v41 = v78;
    sub_219BEE974();
    v42 = v38(v86, 1, v40);
    v43 = v83;
    if (v42 != 1)
    {
      sub_218CC8630(v86, sub_2189AF720);
    }
  }

  else
  {
    v41 = v78;
    (*(v37 + 32))(v78, v86, v40);
    v43 = v83;
  }

  v44 = v81;
  (*(v37 + 32))(v81, v41, v40);
  v45 = v67;
  v46 = v70;
  sub_218CC6E40(v67, v70, sub_2189AF700);
  v47 = *(v43 + 48);
  v48 = v84;
  v49 = v47(v46, 1, v84);
  v73 = v24;
  if (v49 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFA28(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v50 = v79;
    v43 = v83;
    sub_219BEEC74();
    v51 = v47(v46, 1, v48);
    v52 = v80;
    v53 = v87;
    if (v51 != 1)
    {
      sub_218CC8630(v46, sub_2189AF700);
    }
  }

  else
  {
    v50 = v79;
    (*(v43 + 32))(v79, v46, v48);
    v52 = v80;
    v53 = v87;
  }

  v54 = v82;
  (*(v43 + 32))(v44 + *(v82 + 20), v50, v48);
  sub_218CC6E40(v88, v44 + v54[6], sub_2186E4FBC);
  v55 = v71;
  v56 = v69;
  v57 = v66;
  if (!v66)
  {
    v57 = sub_2194AE724(MEMORY[0x277D84F90]);
  }

  v58 = v85;
  v59 = v68;
  *(v44 + v54[7]) = v57;
  v60 = v75;
  if (v56)
  {
    v61 = v56;
  }

  else
  {
    v89 = 0;
    swift_allocObject();
    v61 = sub_219BEF534();
    v60 = v75;
    v53 = v87;
  }

  *(v44 + v54[8]) = v61;
  if (v60)
  {
  }

  else
  {
    swift_allocObject();

    v62 = sub_219BEEE04();
    v53 = v87;
    v60 = v62;
  }

  *(v44 + v54[9]) = v60;
  if (v59)
  {

    sub_218CC8630(v88, sub_2186E4FBC);
    sub_218CC8630(v45, sub_2189AF700);
    sub_218CC8630(v58, sub_2189AF720);
    (*(v53 + 8))(v73, v55);
  }

  else
  {
    LOBYTE(v89) = 0;
    swift_allocObject();
    v63 = v53;
    v64 = sub_219BEF534();

    sub_218CC8630(v88, sub_2186E4FBC);
    sub_218CC8630(v45, sub_2189AF700);
    sub_218CC8630(v58, sub_2189AF720);
    (*(v63 + 8))(v73, v55);
    v59 = v64;
  }

  *(v44 + v54[10]) = v59;
  sub_218CC8568(v44, v52);
  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_218CC63A8(void *a1)
{
  v3 = v1;
  sub_218CC8454(0, &qword_280E8C4F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CC69BC();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_2189AE994(0);
  sub_2186DFA28(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ChannelTodayFeedGroupKnobs();
    LOBYTE(v13) = 1;
    sub_2189AE9B4(0);
    sub_2186DFA28(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
    LOBYTE(v13) = 2;
    sub_219BEF814();
    sub_2186DFA28(&qword_280E912F0, MEMORY[0x277D32720]);
    sub_219BF77E4();
    v13 = *(v3 + v10[7]);
    HIBYTE(v12) = 3;
    sub_218CC4F34();
    sub_218CC6A10();
    sub_219BF7834();
    v13 = *(v3 + v10[8]);
    HIBYTE(v12) = 4;
    sub_2186ECA28();
    sub_2186DFA28(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    v13 = *(v3 + v10[9]);
    HIBYTE(v12) = 5;
    sub_218CC4F9C();
    sub_2186DFA28(&qword_280E917A0, sub_218CC4F9C);
    sub_219BF7834();
    v13 = *(v3 + v10[10]);
    HIBYTE(v12) = 6;
    sub_2186F95C4();
    sub_2186DFA28(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218CC67F0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6C6F6F706572;
    if (v1 != 1)
    {
      v5 = 0x6972657473756C63;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x73656C7572;
    }
  }

  else
  {
    v2 = 0x546465726F6E6769;
    if (v1 != 5)
    {
      v2 = 0xD000000000000020;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_218CC68E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218CC88F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218CC6910(uint64_t a1)
{
  v2 = sub_218CC69BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CC694C(uint64_t a1)
{
  v2 = sub_218CC69BC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218CC69BC()
{
  result = qword_280EBBF08[0];
  if (!qword_280EBBF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBBF08);
  }

  return result;
}

unint64_t sub_218CC6A10()
{
  result = qword_280E8FB10;
  if (!qword_280E8FB10)
  {
    sub_218CC4F34();
    sub_2186DFA28(&qword_280E912F0, MEMORY[0x277D32720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FB10);
  }

  return result;
}

uint64_t sub_218CC6AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_219BF0204();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v27 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = sub_219BEF814();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CC83C8();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 56);
  sub_218CC6E40(a1, v18, sub_2186E4FBC);
  sub_218AE6D9C(a2, &v18[v19]);
  LODWORD(a2) = (*(v12 + 48))(v18, 1, v11);
  v20 = (*(v6 + 48))(&v18[v19], 1, v5);
  if (a2 == 1)
  {
    if (v20 == 1)
    {
      return (*(v12 + 56))(v28, 1, 1, v11);
    }

    else
    {
      (*(v6 + 32))(v10, &v18[v19], v5);
      (*(v6 + 16))(v27, v10, v5);
      sub_219BEF804();
      return (*(v6 + 8))(v10, v5);
    }
  }

  else
  {
    v22 = *(v12 + 32);
    if (v20 == 1)
    {
      v23 = v28;
      v22(v28, v18, v11);
      v24 = *(v12 + 56);
      v25 = v23;
    }

    else
    {
      v22(v14, v18, v11);
      (*(v6 + 32))(v10, &v18[v19], v5);
      v26 = v28;
      sub_219BEF7D4();
      (*(v6 + 8))(v10, v5);
      (*(v12 + 8))(v14, v11);
      v24 = *(v12 + 56);
      v25 = v26;
    }

    return v24(v25, 0, 1, v11);
  }
}

uint64_t sub_218CC6E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218CC6EA8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a2;
  v27 = a1;
  v26 = sub_219BF0204();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF814();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *a3;
  v18 = a3[1];
  if (*(a5 + 16) && (v19 = sub_21870F700(v17, v18), (v20 & 1) != 0))
  {
    (*(v11 + 16))(v14, *(a5 + 56) + *(v11 + 72) * v19, v10);
    (*(v11 + 32))(v16, v14, v10);
    v21 = v27;
    *v27 = v17;
    v21[1] = v18;

    v22 = v29;
    sub_219BEF7D4();
    (*(v11 + 8))(v16, v10);
    return (*(v11 + 56))(v22, 0, 1, v10);
  }

  else
  {
    v25 = v27;
    v24 = v28;
    *v27 = v17;
    v25[1] = v18;
    (*(v7 + 16))(v9, v24, v26);

    return sub_219BEF804();
  }
}

uint64_t sub_218CC7128@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D32720];
  sub_218CC8690(0, &qword_280E8F8D8, MEMORY[0x277D32720]);
  v6 = *(v5 + 48);
  sub_218CC877C(0, &qword_280E8F7A0, v4);
  v8 = *(v7 + 48);
  v10 = *a1;
  v9 = *(a1 + 1);
  v11 = sub_219BEF814();
  (*(*(v11 - 8) + 16))(&a2[v8], &a1[v6], v11);
  *a2 = v10;
  *(a2 + 1) = v9;
}

uint64_t sub_218CC71F8@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D32348];
  sub_218CC8690(0, &qword_280E8F8E8, MEMORY[0x277D32348]);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v43 - v5;
  v47 = sub_219BEED84();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CC82A4(0, &qword_280E8F8E0, &qword_280E8F8E8, v3, sub_218CC8690);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v16 = v1[3];
  v18 = v1[4];
  v50 = v19;
  if (v18)
  {
    v45 = v17;
    v46 = a1;
    v20 = v16;
LABEL_11:
    v44 = (v18 - 1) & v18;
    v24 = __clz(__rbit64(v18)) | (v20 << 6);
    v25 = (*(v14 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v47;
    (*(v6 + 16))(v8, *(v14 + 56) + *(v6 + 72) * v24, v47);
    v29 = v49;
    v30 = *(v49 + 48);
    *v13 = v26;
    *(v13 + 1) = v27;
    v31 = v8;
    v32 = v29;
    (*(v6 + 32))(&v13[v30], v31, v28);
    v33 = v48;
    (*(v48 + 56))(v13, 0, 1, v32);

    v34 = v44;
    v17 = v45;
    v23 = v20;
    v35 = v33;
    a1 = v46;
LABEL_12:
    *v1 = v14;
    v1[1] = v15;
    v1[2] = v17;
    v1[3] = v23;
    v1[4] = v34;
    v36 = v1[5];
    v37 = v50;
    sub_218CC86F8(v13, v50, &qword_280E8F8E0, &qword_280E8F8E8, MEMORY[0x277D32348]);
    v38 = 1;
    if ((*(v35 + 48))(v37, 1, v32) != 1)
    {
      v39 = MEMORY[0x277D32348];
      v40 = v37;
      v41 = v43;
      sub_218CC8300(v40, v43, &qword_280E8F8E8, MEMORY[0x277D32348]);
      v36(v41);
      sub_218CC836C(v41, &qword_280E8F8E8, v39);
      v38 = 0;
    }

    sub_218CC877C(0, &qword_280E8F7B0, MEMORY[0x277D32348]);
    return (*(*(v42 - 8) + 56))(a1, v38, 1, v42);
  }

  else
  {
    v21 = (v17 + 64) >> 6;
    if (v21 <= v16 + 1)
    {
      v22 = v16 + 1;
    }

    else
    {
      v22 = (v17 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v35 = v48;
        v32 = v49;
        (*(v48 + 56))(&v43 - v12, 1, 1, v49);
        v34 = 0;
        goto LABEL_12;
      }

      v18 = *(v15 + 8 * v20);
      ++v16;
      if (v18)
      {
        v45 = v17;
        v46 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218CC763C@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D32720];
  sub_218CC8690(0, &qword_280E8F8D8, MEMORY[0x277D32720]);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v43 - v5;
  v47 = sub_219BEF814();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CC82A4(0, &qword_27CC10CC8, &qword_280E8F8D8, v3, sub_218CC8690);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v16 = v1[3];
  v18 = v1[4];
  v50 = v19;
  if (v18)
  {
    v45 = v17;
    v46 = a1;
    v20 = v16;
LABEL_11:
    v44 = (v18 - 1) & v18;
    v24 = __clz(__rbit64(v18)) | (v20 << 6);
    v25 = (*(v14 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v47;
    (*(v6 + 16))(v8, *(v14 + 56) + *(v6 + 72) * v24, v47);
    v29 = v49;
    v30 = *(v49 + 48);
    *v13 = v26;
    *(v13 + 1) = v27;
    v31 = v8;
    v32 = v29;
    (*(v6 + 32))(&v13[v30], v31, v28);
    v33 = v48;
    (*(v48 + 56))(v13, 0, 1, v32);

    v34 = v44;
    v17 = v45;
    v23 = v20;
    v35 = v33;
    a1 = v46;
LABEL_12:
    *v1 = v14;
    v1[1] = v15;
    v1[2] = v17;
    v1[3] = v23;
    v1[4] = v34;
    v36 = v1[5];
    v37 = v50;
    sub_218CC86F8(v13, v50, &qword_27CC10CC8, &qword_280E8F8D8, MEMORY[0x277D32720]);
    v38 = 1;
    if ((*(v35 + 48))(v37, 1, v32) != 1)
    {
      v39 = MEMORY[0x277D32720];
      v40 = v37;
      v41 = v43;
      sub_218CC8300(v40, v43, &qword_280E8F8D8, MEMORY[0x277D32720]);
      v36(v41);
      sub_218CC836C(v41, &qword_280E8F8D8, v39);
      v38 = 0;
    }

    sub_218CC877C(0, &qword_280E8F7A0, MEMORY[0x277D32720]);
    return (*(*(v42 - 8) + 56))(a1, v38, 1, v42);
  }

  else
  {
    v21 = (v17 + 64) >> 6;
    if (v21 <= v16 + 1)
    {
      v22 = v16 + 1;
    }

    else
    {
      v22 = (v17 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v35 = v48;
        v32 = v49;
        (*(v48 + 56))(&v43 - v12, 1, 1, v49);
        v34 = 0;
        goto LABEL_12;
      }

      v18 = *(v15 + 8 * v20);
      ++v16;
      if (v18)
      {
        v45 = v17;
        v46 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218CC7A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CC85CC();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DFA28(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_14;
  }

  v28 = v7;
  v15 = v5;
  v16 = type metadata accessor for ChannelTodayFeedGroupKnobs();
  if ((sub_219BEEC64() & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = v16;
  v17 = *(v16 + 24);
  v18 = *(v12 + 48);
  v25 = a1;
  sub_218CC6E40(a1 + v17, v14, sub_2186E4FBC);
  v26 = a2;
  sub_218CC6E40(a2 + v17, &v14[v18], sub_2186E4FBC);
  v19 = *(v15 + 48);
  if (v19(v14, 1, v4) != 1)
  {
    sub_218CC6E40(v14, v10, sub_2186E4FBC);
    if (v19(&v14[v18], 1, v4) != 1)
    {
      v20 = v28;
      (*(v15 + 32))(v28, &v14[v18], v4);
      sub_2186DFA28(&qword_27CC10CD8, MEMORY[0x277D32720]);
      v21 = sub_219BF53A4();
      v22 = *(v15 + 8);
      v22(v20, v4);
      v22(v10, v4);
      sub_218CC8630(v14, sub_2186E4FBC);
      if (v21)
      {
        goto LABEL_10;
      }

LABEL_14:
      v23 = 0;
      return v23 & 1;
    }

    (*(v15 + 8))(v10, v4);
LABEL_8:
    sub_218CC8630(v14, sub_218CC85CC);
    goto LABEL_14;
  }

  if (v19(&v14[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_218CC8630(v14, sub_2186E4FBC);
LABEL_10:
  if ((sub_21931A484(*(v25 + *(v27 + 28)), *(v26 + *(v27 + 28))) & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_218CC4F9C();
  if ((sub_219BEEDE4() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2186F95C4();
  v23 = sub_219BEF504();
  return v23 & 1;
}

uint64_t sub_218CC7EC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v55 = a5;
  v9 = sub_219BEF814();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D32720];
  sub_218CC82A4(0, &qword_27CC10CC0, &qword_280E8F7A0, MEMORY[0x277D32720], sub_218CC877C);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (v42 - v13);
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v48 = a1;
  v49 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v50 = v16;
  v51 = 0;
  v52 = v19 & v17;
  v53 = a2;
  v54 = a3;

  v42[0] = a3;

  sub_218CC763C(v14);
  sub_218CC877C(0, &qword_280E8F7A0, v11);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 48);
  v42[3] = v22 + 48;
  v43 = v23;
  if (v23(v14, 1, v20) == 1)
  {
LABEL_5:
    sub_21892DE98();
  }

  else
  {
    v45 = *(v44 + 32);
    v46 = v44 + 32;
    v42[2] = v44 + 40;
    while (1)
    {
      v26 = *v14;
      v25 = v14[1];
      v27 = v9;
      v45(v47, v14 + *(v21 + 48), v9);
      v28 = *v55;
      v30 = sub_21870F700(v26, v25);
      v31 = v28[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        break;
      }

      v34 = v29;
      if (v28[3] >= v33)
      {
        if ((a4 & 1) == 0)
        {
          sub_219490C28();
        }
      }

      else
      {
        sub_21947EC48(v33, a4 & 1);
        v35 = sub_21870F700(v26, v25);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_20;
        }

        v30 = v35;
      }

      v37 = *v55;
      if (v34)
      {

        v9 = v27;
        (*(v44 + 40))(v37[7] + *(v44 + 72) * v30, v47, v27);
      }

      else
      {
        v37[(v30 >> 6) + 8] |= 1 << v30;
        v38 = (v37[6] + 16 * v30);
        *v38 = v26;
        v38[1] = v25;
        v9 = v27;
        v45((v37[7] + *(v44 + 72) * v30), v47, v27);
        v39 = v37[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_19;
        }

        v37[2] = v41;
      }

      sub_218CC763C(v14);
      a4 = 1;
      if (v43(v14, 1, v21) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_219BF79A4();
    __break(1u);
  }

  return result;
}

void sub_218CC82A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF6FB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218CC8300(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218CC8690(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_218CC836C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218CC8690(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218CC83C8()
{
  if (!qword_280E912D0)
  {
    sub_2186E4FBC(255);
    sub_2186EDC5C(255, &qword_280E90FF0, MEMORY[0x277D32BE0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E912D0);
    }
  }
}

void sub_218CC8454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CC69BC();
    v7 = a3(a1, &type metadata for ChannelTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218CC84B8()
{
  result = qword_280E8FB08;
  if (!qword_280E8FB08)
  {
    sub_218CC4F34();
    sub_2186DFA28(&qword_280E912E8, MEMORY[0x277D32720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FB08);
  }

  return result;
}

uint64_t sub_218CC8568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelTodayFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218CC85CC()
{
  if (!qword_27CC10CD0)
  {
    sub_2186E4FBC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10CD0);
    }
  }
}

uint64_t sub_218CC8630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218CC8690(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218CC86F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_218CC82A4(0, a3, a4, a5, sub_218CC8690);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_218CC877C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_218CC87F4()
{
  result = qword_27CC10CE0;
  if (!qword_27CC10CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10CE0);
  }

  return result;
}

unint64_t sub_218CC884C()
{
  result = qword_280EBBEF8;
  if (!qword_280EBBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBBEF8);
  }

  return result;
}

unint64_t sub_218CC88A4()
{
  result = qword_280EBBF00;
  if (!qword_280EBBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBBF00);
  }

  return result;
}

uint64_t sub_218CC88F8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CD6940 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CD6960 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x546465726F6E6769 && a2 == 0xED00007344496761 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000219CD6980 == a2)
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

char *sub_218CC8B54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v138 = a4;
  v140 = a3;
  v137 = a1;
  v4 = type metadata accessor for ChannelPickerEngagementModel();
  MEMORY[0x28223BE20](v4 - 8);
  v127 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CCA088(0, &qword_280EE3590, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v131 = &v127 - v7;
  v8 = sub_219BEB7C4();
  v135 = *(v8 - 8);
  v136 = v8;
  MEMORY[0x28223BE20](v8);
  v132 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEB724();
  v133 = *(v10 - 8);
  v134 = v10;
  MEMORY[0x28223BE20](v10);
  v129 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDC104();
  v128 = *(v12 - 8);
  v13 = *(v128 + 64);
  MEMORY[0x28223BE20](v12);
  sub_218951C88();
  v15 = v14;
  v130 = *(v14 - 8);
  v16 = *(v130 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = type metadata accessor for ChannelPickerLayoutModel();
  MEMORY[0x28223BE20](v17);
  v19 = (&v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218951D1C();
  sub_219BE75E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v132 = v16;
    v133 = v13;
    v134 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v135 = v12;
    v136 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v128;
    if (EnumCaseMultiPayload)
    {
      v96 = v19[20];
      v160 = v19[19];
      v161[0] = v96;
      v97 = v19[16];
      v156 = v19[15];
      v157 = v97;
      v98 = v19[18];
      v158 = v19[17];
      v159 = v98;
      v99 = v19[12];
      v152 = v19[11];
      v153 = v99;
      v100 = v19[14];
      v154 = v19[13];
      v155 = v100;
      v101 = v19[8];
      v148 = v19[7];
      v149 = v101;
      v102 = v19[10];
      v150 = v19[9];
      v151 = v102;
      *(v161 + 9) = *(v19 + 329);
      v103 = v19[5];
      v166 = v19[4];
      *v167 = v103;
      *&v167[9] = *(v19 + 89);
      v104 = v19[1];
      v162 = *v19;
      v163 = v104;
      v105 = v19[3];
      v164 = v19[2];
      v165 = v105;
      sub_218CCA0EC();
      v106 = v138;
      v107 = sub_219BF6434();
      __swift_project_boxed_opaque_existential_1(v139 + 9, v139[12]);
      v129 = v107;
      v108 = sub_219BE7314();
      sub_21991F3B8(&v162, &v148, v108);

      v109 = sub_219BE7314();
      v110 = *&v109[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_coinButton];

      v131 = *&v110[OBJC_IVAR____TtC7NewsUI210CoinButton_onTap];
      v127 = swift_allocObject();
      swift_weakInit();
      v111 = v130;
      v112 = v15;
      (*(v130 + 16))(v134, v137, v15);
      (*(v42 + 16))(v136, v106, v135);
      sub_218BFB1DC(&v162, &v141);
      v113 = (*(v111 + 80) + 24) & ~*(v111 + 80);
      v114 = &v132[v113 + 7] & 0xFFFFFFFFFFFFFFF8;
      v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
      v116 = (*(v42 + 80) + v115 + 8) & ~*(v42 + 80);
      v117 = (v133 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
      v118 = swift_allocObject();
      *(v118 + 16) = v127;
      (*(v111 + 32))(v118 + v113, v134, v112);
      v119 = v129;
      *(v118 + v114) = v129;
      v120 = v140;
      *(v118 + v115) = v140;
      (*(v42 + 32))(v118 + v116, v136, v135);
      v121 = (v118 + v117);
      v122 = v146[0];
      v121[4] = v145;
      v121[5] = v122;
      *(v121 + 89) = *(v146 + 9);
      v123 = v142;
      *v121 = v141;
      v121[1] = v123;
      v124 = v144;
      v121[2] = v143;
      v121[3] = v124;
      v125 = v120;
      v71 = v119;
    }

    else
    {
      v43 = v19[18];
      v158 = v19[17];
      v159 = v43;
      *&v160 = *(v19 + 38);
      v44 = v19[14];
      v154 = v19[13];
      v155 = v44;
      v45 = v19[16];
      v156 = v19[15];
      v157 = v45;
      v46 = v19[10];
      v150 = v19[9];
      v151 = v46;
      v47 = v19[12];
      v152 = v19[11];
      v153 = v47;
      v48 = v19[8];
      v148 = v19[7];
      v149 = v48;
      v49 = v19[5];
      v166 = v19[4];
      *v167 = v49;
      *&v167[9] = *(v19 + 89);
      v50 = v19[1];
      v162 = *v19;
      v163 = v50;
      v51 = v19[3];
      v164 = v19[2];
      v165 = v51;
      sub_218CCA198();
      v52 = v138;
      v53 = sub_219BF6434();
      __swift_project_boxed_opaque_existential_1(v139 + 4, v139[7]);
      v129 = v53;
      v54 = sub_219BE7314();
      sub_219270F10(&v162, &v148, v54);

      v55 = sub_219BE7314();
      v56 = *&v55[OBJC_IVAR____TtC7NewsUI214ChannelTagView_accessoryButton];

      v131 = sub_219BE61F4();
      v127 = swift_allocObject();
      swift_weakInit();
      v57 = v130;
      v58 = v15;
      (*(v130 + 16))(v134, v137, v15);
      (*(v42 + 16))(v136, v52, v135);
      sub_218BFB1DC(&v162, &v141);
      v59 = (*(v57 + 80) + 24) & ~*(v57 + 80);
      v60 = &v132[v59 + 7] & 0xFFFFFFFFFFFFFFF8;
      v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
      v62 = (*(v42 + 80) + v61 + 8) & ~*(v42 + 80);
      v63 = (v133 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      *(v64 + 16) = v127;
      (*(v57 + 32))(v64 + v59, v134, v58);
      v65 = v129;
      *(v64 + v60) = v129;
      v66 = v140;
      *(v64 + v61) = v140;
      (*(v42 + 32))(v64 + v62, v136, v135);
      v67 = (v64 + v63);
      v68 = v146[0];
      v67[4] = v145;
      v67[5] = v68;
      *(v67 + 89) = *(v146 + 9);
      v69 = v142;
      *v67 = v141;
      v67[1] = v69;
      v70 = v144;
      v67[2] = v143;
      v67[3] = v70;
      v71 = v65;
      v72 = v66;
    }

    v126 = v131;

    sub_218980BE4(&v162);
    return v71;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v73 = v19[7];
      *&v167[16] = v19[6];
      v168 = v73;
      *v169 = v19[8];
      *&v169[9] = *(v19 + 137);
      v74 = v19[3];
      v164 = v19[2];
      v165 = v74;
      v75 = v19[5];
      v166 = v19[4];
      *v167 = v75;
      v76 = v19[1];
      v162 = *v19;
      v163 = v76;
      v77 = v19[17];
      v154 = v19[16];
      v155 = v77;
      v78 = v19[19];
      v156 = v19[18];
      v157 = v78;
      v79 = v19[13];
      v150 = v19[12];
      v151 = v79;
      v80 = v19[15];
      v152 = v19[14];
      v153 = v80;
      v81 = v19[11];
      v148 = v19[10];
      v149 = v81;
      sub_218CC9FF4();
      v82 = sub_219BF6434();
      sub_218CCA088(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      sub_219BEB824();
      *(swift_allocObject() + 16) = xmmword_219C09BA0;
      v84 = v133;
      v83 = v134;
      v85 = v129;
      (*(v133 + 104))(v129, *MEMORY[0x277D74A98], v134);
      v86 = sub_219BEB754();
      (*(*(v86 - 8) + 56))(v131, 1, 1, v86);
      v39 = v82;
      v87 = v132;
      sub_219BEB7B4();
      sub_219BEB784();
      (*(v135 + 8))(v87, v136);
      (*(v84 + 8))(v85, v83);
      sub_219BF69D4();

      __swift_project_boxed_opaque_existential_1(v139 + 14, v139[17]);
      v146[1] = *&v167[16];
      v146[2] = v168;
      v147[0] = *v169;
      *(v147 + 9) = *&v169[9];
      v143 = v164;
      v144 = v165;
      v145 = v166;
      v146[0] = *v167;
      v141 = v162;
      v142 = v163;
      v88 = sub_219BE8284();
      sub_219135ED4(&v141, &v148, v88);

      sub_218980B90(&v162);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v21 = v19[18];
      v22 = v19[19];
      v23 = v19[16];
      *&v167[16] = v19[17];
      v168 = v21;
      v24 = v19[20];
      *v169 = v22;
      *&v169[16] = v24;
      v25 = v19[14];
      v26 = v19[15];
      v27 = v19[12];
      v164 = v19[13];
      v165 = v25;
      v166 = v26;
      *v167 = v23;
      v28 = v19[10];
      v162 = v19[11];
      v163 = v27;
      v29 = v19[9];
      v156 = v19[8];
      v157 = v29;
      v158 = v28;
      v30 = v19[5];
      v152 = v19[4];
      v153 = v30;
      v31 = v19[7];
      v154 = v19[6];
      v155 = v31;
      v32 = v19[1];
      v148 = *v19;
      v149 = v32;
      v33 = v19[3];
      v150 = v19[2];
      v151 = v33;
      sub_218CC9FF4();
      v34 = sub_219BF6434();
      sub_218CCA088(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      sub_219BEB824();
      *(swift_allocObject() + 16) = xmmword_219C09BA0;
      v36 = v133;
      v35 = v134;
      v37 = v129;
      (*(v133 + 104))(v129, *MEMORY[0x277D74A98], v134);
      v38 = sub_219BEB754();
      (*(*(v38 - 8) + 56))(v131, 1, 1, v38);
      v39 = v34;
      v40 = v132;
      sub_219BEB7B4();
      sub_219BEB784();
      (*(v135 + 8))(v40, v136);
      (*(v36 + 8))(v37, v35);
      sub_219BF69D4();

      __swift_project_boxed_opaque_existential_1(v139 + 14, v139[17]);
      v41 = sub_219BE8284();
      sub_2191363CC(&v148, &v162, v41);

      sub_218980B3C(&v148);
    }

    else
    {
      sub_218A5A148();
      v90 = (v19 + *(v89 + 48));
      v91 = v90[1];
      v148 = *v90;
      v149 = v91;
      v92 = v90[3];
      v150 = v90[2];
      v151 = v92;
      v93 = v127;
      sub_218980AD8(v19, v127);
      sub_218CC9F60();
      v39 = sub_219BF6434();
      __swift_project_boxed_opaque_existential_1(v139 + 19, v139[22]);
      v94 = sub_219BE8284();
      sub_219307FC4(v93, &v148, v94);

      sub_218980D88(v93, type metadata accessor for ChannelPickerEngagementModel);
    }

    return v39;
  }
}

void sub_218CC9968(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v8 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_218951C88();
      sub_219BE5FC4();
      v15 = sub_219BE7314();
      v23 = *&v15[OBJC_IVAR____TtC7NewsUI214ChannelTagView_accessoryButton];

      [a4 numberOfItemsInSection_];
      v16 = *(v14 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler);
      __swift_project_boxed_opaque_existential_1(v16 + 11, v16[14]);
      v22[1] = v14;
      v17 = off_282AA0518;
      type metadata accessor for ChannelPickerTracker();
      v17();
      v18 = v16[5];
      ObjectType = swift_getObjectType();
      v20 = v23;
      (*(v18 + 56))(v10, v23, 0, ObjectType, v18);

      sub_218980D88(v10, type metadata accessor for ChannelPickerElementModel);
      swift_unknownObjectRelease();
    }

    __swift_project_boxed_opaque_existential_1((v12 + 32), *(v12 + 56));
    v21 = sub_219BE7314();
    sub_219271D3C(a6);
  }
}

void sub_218CC9B8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v8 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_218951C88();
      sub_219BE5FC4();
      v15 = sub_219BE7314();
      v22 = *&v15[OBJC_IVAR____TtC7NewsUI215ChannelCoinView_accessoryButton];

      [a4 numberOfItemsInSection_];
      v16 = *(v14 + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler);
      __swift_project_boxed_opaque_existential_1(v16 + 11, v16[14]);
      v17 = off_282AA0518;
      type metadata accessor for ChannelPickerTracker();
      v17();
      v18 = v16[5];
      ObjectType = swift_getObjectType();
      v20 = v22;
      (*(v18 + 56))(v10, v22, 1, ObjectType, v18);

      sub_218980D88(v10, type metadata accessor for ChannelPickerElementModel);
      swift_unknownObjectRelease();
    }

    __swift_project_boxed_opaque_existential_1((v12 + 72), *(v12 + 96));
    v21 = sub_219BE7314();
    sub_219920A64(a6);
  }
}

uint64_t sub_218CC9DA4()
{
  sub_218774F78(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);

  return swift_deallocClassInstance();
}

uint64_t sub_218CC9EB0()
{
  sub_218CCA198();
  sub_219BF6454();
  sub_218CCA0EC();
  sub_219BF6454();
  sub_218CC9FF4();
  sub_219BF6454();
  sub_218CC9F60();
  return sub_219BF6454();
}

char *sub_218CC9F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  result = sub_218CC8B54(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_218CC9F60()
{
  if (!qword_27CC10CE8)
  {
    type metadata accessor for ChannelEngagementView();
    sub_218CCA22C(&qword_27CC10CF0, type metadata accessor for ChannelEngagementView);
    v0 = sub_219BE82A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10CE8);
    }
  }
}

void sub_218CC9FF4()
{
  if (!qword_27CC10CF8)
  {
    type metadata accessor for ChannelCategoryView();
    sub_218CCA22C(&qword_27CC10D00, type metadata accessor for ChannelCategoryView);
    v0 = sub_219BE82A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10CF8);
    }
  }
}

void sub_218CCA088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218CCA0EC()
{
  if (!qword_27CC10D08)
  {
    type metadata accessor for ChannelCoinView();
    sub_218CCA22C(&qword_27CC10D10, type metadata accessor for ChannelCoinView);
    v0 = sub_219BE7344();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10D08);
    }
  }
}

void sub_218CCA198()
{
  if (!qword_27CC10D18)
  {
    type metadata accessor for ChannelTagView();
    sub_218CCA22C(&unk_27CC10D20, type metadata accessor for ChannelTagView);
    v0 = sub_219BE7344();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10D18);
    }
  }
}

uint64_t sub_218CCA22C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_3Tm_4()
{
  sub_218951C88();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_219BDC104();
  v8 = *(v7 - 8);
  v9 = (v6 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v2);

  (*(v8 + 8))(v0 + v9, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + v10);

  return swift_deallocObject();
}

uint64_t sub_218CCA448(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  sub_218951C88();
  v3 = (*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_219BDC104() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + v4);
  v10 = *(v1 + v5);
  v11 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v8, v1 + v3, v9, v10, v1 + v7, v11);
}

uint64_t sub_218CCA64C()
{
  sub_218724DE0(0, &unk_280EE3970, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_218724DE0(0, &qword_280EE3930, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280F624E0 = result;
  return result;
}

unint64_t sub_218CCA7A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_218CCAA0C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_218CCA7F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_218CCAA1C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t BridgedNewsActivity2.description.getter(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          return 0xD000000000000010;
        case 10:
          return 0x6465766173;
        case 11:
          return 0x6B6E694C626577;
      }

      goto LABEL_26;
    }

    if (a1 == 6)
    {
      return 0x656E697A6167616DLL;
    }

    else if (a1 == 7)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0x6163696669746F6ELL;
    }
  }

  else
  {
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          return 0x656C6369747261;
        case 1:
          return 0xD000000000000013;
        case 2:
          return 1684366694;
      }

LABEL_26:
      result = sub_219BF7974();
      __break(1u);
      return result;
    }

    if (a1 == 3)
    {
      return 0x324C64656566;
    }

    else if (a1 == 4)
    {
      return 0x6546756F59726F66;
    }

    else
    {
      return 0x79726F74736968;
    }
  }
}

unint64_t sub_218CCAA0C(unint64_t result)
{
  if (result > 0xB)
  {
    return 0;
  }

  return result;
}

unint64_t sub_218CCAA1C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_218CCAA30()
{
  result = qword_27CC10D38;
  if (!qword_27CC10D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10D38);
  }

  return result;
}

unint64_t sub_218CCAA88()
{
  result = qword_27CC10D40;
  if (!qword_27CC10D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10D40);
  }

  return result;
}

void sub_218CCAAFC()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F78];
  if (*&v0[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_isCloudKitReachablePromise])
  {

    v4 = MEMORY[0x21CEB8FB0](v3);

    if (!v4)
    {
      goto LABEL_9;
    }

    *(swift_allocObject() + 16) = v1;
    v5 = v1;
    v6 = sub_219BE2E54();
    sub_219BE2F74();
  }

  sub_218B87934(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C189F0;
  v8 = MEMORY[0x21CEB8FB0]();
  if (v8)
  {
    *(v7 + 32) = v8;
    v9 = MEMORY[0x21CEB8FB0]();
    if (v9)
    {
      v10 = v9;
      sub_218B87934(0, &qword_280EE6900, v2 + 8, MEMORY[0x277D6CF30]);
      *(v7 + 40) = v10;
      sub_218CCBDE4();
      sub_218CCBE90(&unk_280E8F570, 255, sub_218CCBDE4);
      sub_219BE2F44();

      *(swift_allocObject() + 16) = v1;
      v11 = v1;
      v12 = sub_219BE2E54();
      sub_219BE2F74();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void sub_218CCAD4C(uint64_t a1, char *a2)
{
  *&a2[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_isCloudKitReachablePromise] = 0;

  [*&a2[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_networkReachability] removeObserver_];
  if (sub_218CCBEE0())
  {
    if (*&a2[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_userTypePromise])
    {

      v4 = MEMORY[0x21CEB8FB0](v3);

      if (v4)
      {
        *(swift_allocObject() + 16) = a2;
        v5 = a2;
        v6 = sub_219BE2E54();
        sub_219BE2F74();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_218CCAF50(2);
  }
}

void sub_218CCAE60(uint64_t *a1, char *a2)
{
  v3 = *a1;
  *&a2[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_userTypePromise] = 0;

  if (MEMORY[0x21CEB8FB0]([*&a2[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_appActivityMonitor] removeObserver_]))
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    *(v4 + 24) = v3;
    v5 = a2;
    v6 = sub_219BE2E54();
    sub_219BE2F74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218CCAF50(uint64_t a1)
{
  if (qword_27CC08608 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B70);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_2186C1000, v3, v4, "WelcomeInteractor continueWithUserType: %{public}ld", v5, 0xCu);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_218CCC018(result);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_218CCB088()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27CC08608 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B70);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "WelcomeInteractor completeOnboarding", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  if ([*&v0[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_networkReachability] offlineReason] == 3)
  {
    oslog = sub_219BE5414();
    v7 = sub_219BF61F4();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2186C1000, oslog, v7, "Warning! Unexpected completeOnboarding() call for a user in an unsupportedRegion.", v8, 2u);
      MEMORY[0x21CECF960](v8, -1, -1);
    }
  }

  else
  {
    if (qword_280EE9AD0 != -1)
    {
      swift_once();
    }

    aBlock[0] = 5;
    sub_218CCBE90(&unk_27CC10DC0, v6, type metadata accessor for WelcomeInteractor);
    sub_219BDCA54();
    if (qword_280EE9AB8 != -1)
    {
      swift_once();
    }

    aBlock[0] = -1;
    sub_219BDCA54();
    [*&v0[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_dataManager] completeOnboarding];
    swift_getObjectType();
    sub_219BE0CA4();
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      aBlock[4] = sub_218CCBED8;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218B66540;
      aBlock[3] = &block_descriptor_50;
      v11 = _Block_copy(aBlock);
      v12 = v1;

      v13 = [v9 scheduledTimerWithTimeInterval:0 repeats:v11 block:4.0];
      _Block_release(v11);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
        sub_21938656C();
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_218CCB460(void *a1)
{
  [a1 invalidate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1((result + 48), *(result + 72));
    sub_21938656C();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_218CCB4D8()
{
  v1 = v0;
  if (qword_27CC08608 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B70);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "WelcomeInteractor prepareToLeaveWelcomeView", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  [*&v1[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_dataManager] beginLoadingFeed];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 24);
      ObjectType = swift_getObjectType();
      (*(v8 + 24))(ObjectType, v8);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v10 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_maximumTimer;
  v11 = *&v1[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_maximumTimer];
  if (v11)
  {
    [v11 invalidate];
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_218CCC158;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218B66540;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  v16 = [v12 scheduledTimerWithTimeInterval:0 repeats:v14 block:10.0];
  _Block_release(v14);
  v17 = *&v1[v10];
  *&v1[v10] = v16;
}

id sub_218CCB73C(void *a1)
{
  sub_219BE2224();
  if (qword_27CC08608 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B70);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "WelcomeInteractor maximum time reached", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  return [a1 invalidate];
}

void sub_218CCB844()
{
  v1 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_minimumTimer;
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_minimumTimer];
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v9[4] = sub_218CCC160;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_218B66540;
  v9[3] = &block_descriptor_32_1;
  v5 = _Block_copy(v9);
  v6 = v0;

  v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:1.6];
  _Block_release(v5);
  v8 = *&v0[v1];
  *&v0[v1] = v7;
}

id sub_218CCB970()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_networkReachability);
  result = [v1 isCloudKitReachable];
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_isCloudKitReachablePromise))
    {

      sub_219BE2224();
    }
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_218C4EF08([v1 offlineReason]);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_218CCBDE4()
{
  if (!qword_280E8F580)
  {
    sub_218B87934(255, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F580);
    }
  }
}

uint64_t sub_218CCBE90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

BOOL sub_218CCBEE0()
{
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9AB8 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  v0 = v2;
  if (v2 < 0)
  {
    sub_219BDC8B4();
    if (qword_280EE9AD0 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    v0 = v2;
  }

  return v0 == 0;
}

uint64_t sub_218CCC018(uint64_t a1)
{
  if (qword_27CC08608 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B70);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "WelcomeEventHandler interactorShowContinueButton", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, &off_282A3D8A0, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_218CCC160(void *a1)
{
  sub_219BE2224();

  return [a1 invalidate];
}

id sub_218CCC1B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_networkReachability);
  v2 = [v1 isCloudKitReachable];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    if (!Strong)
    {
      goto LABEL_7;
    }

    v4 = 0;
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_7;
    }

    v4 = [v1 offlineReason];
  }

  sub_218C4EF08(v4);
  swift_unknownObjectRelease();
LABEL_7:
  v5 = *(v0 + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_appActivityMonitor);

  return [v5 addObserver_];
}

uint64_t sub_218CCC264()
{
  if (qword_27CC08608 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_27CCD8B70);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "WelcomeDataManagerTypeDelegate dataManagerFeedPrepared", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  return sub_219BE2224();
}

void sub_218CCC350(uint64_t a1)
{
  v2 = v1;
  if (qword_27CC08608 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_27CCD8B70);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_2186C1000, v5, v6, "WelcomeDataManagerTypeDelegate dataManager:userType: %{public}ld", v7, 0xCu);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_userTypePromise))
  {

    sub_219BE2224();
  }
}

void sub_218CCC480()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for NotificationSettings();
    sub_219BE3204();
    v0 = sub_219BE2E54();
    type metadata accessor for NotificationPromptManager();
    sub_219BE2F94();
  }
}

uint64_t sub_218CCC57C(uint64_t a1, uint64_t a2)
{
  v3 = v2[17];
  if (v3 < 2)
  {
    return 0;
  }

  if (v3 != 2)
  {
    v18[0] = v2[17];
    result = sub_219BF7974();
    __break(1u);
    return result;
  }

  v5 = v2;
  v8 = v2[6];
  v9 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v8);
  v10 = *((*(v9 + 16))(v8, v9) + 16);

  if (!v10)
  {
    v11 = *(v5 + 48);
    v12 = *(v5 + 56);
    __swift_project_boxed_opaque_existential_1((v5 + 24), v11);
    v13 = *((*(v12 + 8))(v11, v12) + 16);

    if (!v13)
    {
      return 0;
    }
  }

  if ([*(v5 + 104) isRunningPPT])
  {
    return 0;
  }

  v14 = *(v5 + 48);
  v15 = *(v5 + 56);
  __swift_project_boxed_opaque_existential_1((v5 + 24), v14);
  v16 = (*(v15 + 16))(v14, v15);
  v18[0] = a1;
  v18[1] = a2;
  MEMORY[0x28223BE20](v16);
  v17[2] = v18;
  LOBYTE(v14) = sub_2186D128C(sub_2186D1338, v17, v16);

  if (v14)
  {
    return 2;
  }

  else
  {
    return sub_218CCC730(v5);
  }
}

BOOL sub_218CCC730(uint64_t a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  sub_218CCCB60(&qword_280EBDB58);
  sub_219BDC7D4();
  sub_219BDC7D4();
  v9 = v15;
  if ((v15 & 0x8000000000000000) != 0)
  {
    v9 = [objc_msgSend(*(a1 + 16) appConfiguration)];
    swift_unknownObjectRelease();
  }

  sub_219BDBD24();
  sub_219BDBBE4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v8, v2);
  return v11 >= v9;
}

uint64_t sub_218CCC978()
{
  if (![*(v0 + 104) isRunningPPT])
  {
    return 0;
  }

  sub_218CCCB60(&qword_280EBDB58);
  sub_219BDC7D4();
  if (v2)
  {
    return 0;
  }

  sub_218CCCB60(&unk_27CC10DD0);
  sub_219BDCA54();
  return 1;
}

uint64_t sub_218CCCAA0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218CCCB60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotificationPromptManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218CCCBB4()
{
  result = qword_27CC10DE0;
  if (!qword_27CC10DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10DE0);
  }

  return result;
}

unint64_t sub_218CCCC0C()
{
  result = qword_27CC10DE8;
  if (!qword_27CC10DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10DE8);
  }

  return result;
}

unint64_t sub_218CCCC64()
{
  result = qword_27CC10DF0;
  if (!qword_27CC10DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10DF0);
  }

  return result;
}

unint64_t sub_218CCCCBC()
{
  result = qword_27CC10DF8;
  if (!qword_27CC10DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10DF8);
  }

  return result;
}

uint64_t sub_218CCCD10(void *a1)
{
  sub_218CCD798(0, &qword_280E8C618, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CCD684();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_218CCD7FC(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for TopicTodayFeedGroup();
    v9[14] = 1;
    sub_219BF7804();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218CCCED8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = sub_219BED8D4();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CCD798(0, &qword_280E8CF08, MEMORY[0x277D844C8]);
  v22 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CCD684();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v11;
  v12 = v19;
  v24 = 0;
  sub_218CCD7FC(&unk_280E92630, MEMORY[0x277D31C50]);
  v13 = v21;
  sub_219BF7734();
  v14 = v17;
  (*(v12 + 32))(v17, v5, v13);
  v23 = 1;
  v15 = sub_219BF7704();
  (*(v20 + 8))(v8, v22);
  *(v14 + *(v9 + 20)) = v15 & 1;
  sub_218CCD6D8(v14, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218CCD73C(v14);
}

uint64_t sub_218CCD228()
{
  if (*v0)
  {
    return 0x6F546E4965726F6DLL;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

uint64_t sub_218CCD274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F546E4965726F6DLL && a2 == 0xEB00000000636970)
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

uint64_t sub_218CCD358(uint64_t a1)
{
  v2 = sub_218CCD684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CCD394(uint64_t a1)
{
  v2 = sub_218CCD684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218CCD500(uint64_t a1)
{
  result = sub_218CCD7FC(&qword_280ECFA08, type metadata accessor for TopicTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218CCD558(uint64_t a1)
{
  v2 = sub_218CCD7FC(&qword_280ECFA38, type metadata accessor for TopicTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218CCD5D8(void *a1)
{
  a1[1] = sub_218CCD7FC(&qword_280ECFA38, type metadata accessor for TopicTodayFeedGroup);
  a1[2] = sub_218CCD7FC(&qword_280ECFA10, type metadata accessor for TopicTodayFeedGroup);
  result = sub_218CCD7FC(&qword_280ECFA20, type metadata accessor for TopicTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_218CCD684()
{
  result = qword_280ECFA50;
  if (!qword_280ECFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECFA50);
  }

  return result;
}

uint64_t sub_218CCD6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicTodayFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CCD73C(uint64_t a1)
{
  v2 = type metadata accessor for TopicTodayFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218CCD798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CCD684();
    v7 = a3(a1, &type metadata for TopicTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218CCD7FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218CCD858()
{
  result = qword_27CC10E00;
  if (!qword_27CC10E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10E00);
  }

  return result;
}

unint64_t sub_218CCD8B0()
{
  result = qword_280ECFA40;
  if (!qword_280ECFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECFA40);
  }

  return result;
}

unint64_t sub_218CCD908()
{
  result = qword_280ECFA48;
  if (!qword_280ECFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECFA48);
  }

  return result;
}

uint64_t sub_218CCD9A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  sub_218CCFB5C();
  v78 = v9;
  v83 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v77 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = v61 - v12;
  v79 = sub_219BF3AA4();
  v82 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v84 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 identifier];
  sub_219BF5414();

  v75 = a2 | 0x2000000000000000;
  v70 = a4;
  v71 = a3;
  v15 = sub_219BF3804();

  v80 = a2;
  v81 = sub_218CCFA90(a1, a2, MEMORY[0x277D34608]);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v16 = qword_280F61708;
  sub_2186E7E8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v74 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C0B8C0;
  v19 = *(v15 + 16);
  v20 = MEMORY[0x277D83C10];
  *(v18 + 56) = MEMORY[0x277D83B88];
  *(v18 + 64) = v20;
  *(v18 + 32) = v19;
  v21 = sub_219BF4B94();
  v23 = v22;
  v24 = MEMORY[0x277D837D0];
  *(v18 + 96) = MEMORY[0x277D837D0];
  v25 = sub_2186FC3BC();
  *(v18 + 104) = v25;
  *(v18 + 72) = v21;
  *(v18 + 80) = v23;
  v26 = [a1 identifier];
  v27 = sub_219BF5414();
  v29 = v28;

  *(v18 + 136) = v24;
  *(v18 + 144) = v25;
  v73 = v25;
  *(v18 + 112) = v27;
  *(v18 + 120) = v29;
  sub_219BF6214();
  sub_219BE5314();

  v85 = v19;
  if (v19)
  {
    v86 = MEMORY[0x277D84F90];
    v68 = v16;
    sub_219BF73F4();
    v30 = 0;
    v67 = *(v82 + 16);
    v31 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v61[1] = v15;
    v32 = v15 + v31;
    v66 = *(v82 + 72);
    v65 = (v83 + 8);
    v64 = (v83 + 16);
    v63 = (v82 + 8);
    v62 = xmmword_219C0EE20;
    v33 = v79;
    v69 = a1;
    v82 += 16;
    do
    {
      v83 = v30;
      v34 = v84;
      v67(v84, v32, v33);
      v35 = swift_allocObject();
      *(v35 + 16) = v62;
      v36 = sub_219BF3A84();
      v37 = MEMORY[0x277D837D0];
      v38 = v73;
      *(v35 + 56) = MEMORY[0x277D837D0];
      *(v35 + 64) = v38;
      *(v35 + 32) = v36;
      *(v35 + 40) = v39;
      v40 = sub_219BF4B94();
      *(v35 + 96) = v37;
      *(v35 + 104) = v38;
      *(v35 + 72) = v40;
      *(v35 + 80) = v41;
      v42 = [a1 identifier];
      v43 = sub_219BF5414();
      v45 = v44;

      *(v35 + 136) = v37;
      *(v35 + 144) = v38;
      *(v35 + 112) = v43;
      *(v35 + 120) = v45;
      v46 = v81;
      v47 = [v81 identifier];
      v48 = sub_219BF5414();
      v50 = v49;

      *(v35 + 176) = v37;
      *(v35 + 184) = v38;
      *(v35 + 152) = v48;
      *(v35 + 160) = v50;
      v51 = v71;
      v52 = v72;
      v53 = v70;
      v33 = v79;
      sub_219BF6214();
      sub_219BE5314();

      v54 = v77;
      v55 = sub_219BF4BA4();
      MEMORY[0x28223BE20](v55);
      v56 = v75;
      v61[-6] = v46;
      v61[-5] = v56;
      v61[-4] = v34;
      v61[-3] = v51;
      v61[-2] = v53;
      v61[-1] = v52;
      sub_219BF4394();
      v57 = v76;
      v58 = v78;
      v30 = v83;
      sub_219BE32B4();
      v59 = *v65;
      (*v65)(v54, v58);
      (*v64)(v54, v57, v58);
      sub_219BF4BF4();
      swift_allocObject();
      sub_219BF4BB4();
      v59(v57, v58);
      (*v63)(v84, v33);
      sub_219BF73D4();
      sub_219BF7414();
      a1 = v69;
      sub_219BF7424();
      sub_219BF73E4();
      v32 += v66;
      --v85;
    }

    while (v85);

    swift_unknownObjectRelease();
    return v86;
  }

  else
  {
    swift_unknownObjectRelease();

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_218CCE040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v23 = a3;
  v24 = a5;
  v21 = a2;
  v22 = a4;
  v25 = a6;
  v7 = sub_219BF4F44();
  MEMORY[0x28223BE20](v7 - 8);
  v20 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF3AA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF41B4();
  v13 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  swift_unknownObjectRetain();
  sub_219BF3F64();
  sub_219BF3F54();
  (*(v10 + 16))(v12, v21, v9);

  sub_219BF3F34();
  sub_219BF4194();
  v16 = sub_219BF4374();
  result = (*(v13 + 8))(v15, v19);
  *v25 = v16;
  return result;
}

uint64_t sub_218CCE290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v29 = a9;
  v17 = sub_219BF4884();
  v21 = a1;
  v22 = a3;
  v23 = a2;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v18 = sub_2189544C0(sub_218CCFC9C, v20, v17);

  *v29 = v18;
  return result;
}

uint64_t sub_218CCE354@<X0>(void **a1@<X0>, uint64_t a2@<X3>, void *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v57 = a7;
  v55 = a5;
  v56 = a6;
  v46 = a3;
  v60 = a2;
  v53 = a4;
  v54 = a8;
  v9 = sub_219BF4F44();
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_219BF41B4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF3AA4();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = *a1;
  v58 = sub_219BF3A84();
  v59 = v18;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v19 = [v17 identifier];
  v20 = sub_219BF5414();
  v22 = v21;

  MEMORY[0x21CECC330](v20, v22);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v23 = sub_219BF4F54();
  MEMORY[0x21CECC330](v23);

  sub_219BF3A94();

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7E8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C0B8C0;
  v25 = sub_219BF3A84();
  v27 = v26;
  v28 = v16;
  v44 = v16;
  v29 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v30 = sub_2186FC3BC();
  *(v24 + 64) = v30;
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v31 = sub_219BF4894();
  *(v24 + 96) = v29;
  *(v24 + 104) = v30;
  *(v24 + 72) = v31;
  *(v24 + 80) = v32;
  v33 = [v46 identifier];
  v34 = sub_219BF5414();
  v36 = v35;

  *(v24 + 136) = v29;
  *(v24 + 144) = v30;
  *(v24 + 112) = v34;
  *(v24 + 120) = v36;
  sub_219BF6214();
  sub_219BE5314();

  swift_unknownObjectRetain();
  sub_219BF3F64();
  sub_219BF3F54();
  v37 = v47;
  v38 = v28;
  v39 = v48;
  (*(v47 + 16))(v45, v38, v48);

  sub_219BF3F34();
  v40 = v49;
  sub_219BF4194();
  v41 = sub_219BF48A4();
  (*(v50 + 8))(v40, v52);
  result = (*(v37 + 8))(v44, v39);
  *v57 = v41;
  return result;
}

uint64_t sub_218CCE7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void)@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t (*a11)(uint64_t, char *, uint64_t))
{
  v29 = a9;
  v18 = a8();
  v22 = a1;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a2;
  v19 = a11(a10, v21, v18);

  *v29 = v19;
  return result;
}

uint64_t sub_218CCE8E0@<X0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(char *))
{
  v61 = a8;
  v59 = a6;
  v60 = a7;
  v56 = a4;
  v57 = a5;
  v55 = a2;
  v58 = a12;
  v48 = a11;
  v46 = a3;
  v47 = a10;
  v13 = sub_219BF4F44();
  MEMORY[0x28223BE20](v13 - 8);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_219BF41B4();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF3AA4();
  v49 = *(v16 - 8);
  v50 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v45 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v21 = *a1;
  v62 = sub_219BF3A84();
  v63 = v22;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v23 = [v21 identifier];
  v24 = sub_219BF5414();
  v26 = v25;

  MEMORY[0x21CECC330](v24, v26);

  sub_219BF3A94();

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7E8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_219C0B8C0;
  v28 = sub_219BF3A84();
  v30 = v29;
  v64 = v20;
  v31 = MEMORY[0x277D837D0];
  *(v27 + 56) = MEMORY[0x277D837D0];
  v32 = sub_2186FC3BC();
  *(v27 + 64) = v32;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v33 = sub_219BF3F44();
  *(v27 + 96) = v31;
  *(v27 + 104) = v32;
  *(v27 + 72) = v33;
  *(v27 + 80) = v34;
  v35 = [v46 identifier];
  v36 = sub_219BF5414();
  v38 = v37;

  *(v27 + 136) = v31;
  *(v27 + 144) = v32;
  *(v27 + 112) = v36;
  *(v27 + 120) = v38;
  sub_219BF6214();
  sub_219BE5314();

  swift_unknownObjectRetain();
  sub_219BF3F64();
  sub_219BF3F54();
  v40 = v49;
  v39 = v50;
  (*(v49 + 16))(v45, v64, v50);

  sub_219BF3F34();
  v41 = v51;
  sub_219BF4194();
  v42 = v58(v41);
  (*(v52 + 8))(v41, v54);
  result = (*(v40 + 8))(v64, v39);
  *v61 = v42;
  return result;
}

uint64_t sub_218CCED3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v8 = sub_219BF4F44();
  MEMORY[0x28223BE20](v8 - 8);
  v65 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BF41B4();
  v74 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BF3AA4();
  v77 = *(v70 - 8);
  v11 = MEMORY[0x28223BE20](v70);
  v67 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = v56 - v13;
  v14 = [a1 identifier];
  sub_219BF5414();

  v64 = a2 | 0xA000000000000000;
  v62 = a3;
  v15 = sub_219BF3804();

  v71 = a1;
  v16 = a1;
  v17 = a2;
  v73 = sub_218CCFA90(v16, a2, MEMORY[0x277D344B8]);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v72 = qword_280F61708;
  sub_2186E7E8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v66 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C0B8C0;
  v20 = *(v15 + 16);
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = MEMORY[0x277D83B88];
  *(v19 + 64) = v21;
  *(v19 + 32) = v20;
  v22 = sub_219BF4694();
  v24 = v23;
  v25 = MEMORY[0x277D837D0];
  *(v19 + 96) = MEMORY[0x277D837D0];
  v26 = sub_2186FC3BC();
  *(v19 + 104) = v26;
  *(v19 + 72) = v22;
  *(v19 + 80) = v24;
  v27 = [v71 identifier];
  v28 = sub_219BF5414();
  v78 = v29;

  *(v19 + 136) = v25;
  *(v19 + 144) = v26;
  v30 = v26;
  v31 = v78;
  *(v19 + 112) = v28;
  *(v19 + 120) = v31;
  sub_219BF6214();
  sub_219BE5314();

  if (v20)
  {
    v32 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v79 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v75 = *(v77 + 16);
    v33 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v56[1] = v15;
    v34 = v15 + v33;
    v35 = *(v77 + 72);
    v60 = (v74 + 8);
    v61 = v35;
    v59 = (v77 + 8);
    v58 = xmmword_219C0EE20;
    v57 = v30;
    v77 += 16;
    v56[2] = v17;
    do
    {
      v78 = v34;
      v74 = v20;
      v75();
      v36 = swift_allocObject();
      *(v36 + 16) = v58;
      v37 = sub_219BF3A84();
      v38 = MEMORY[0x277D837D0];
      v39 = v57;
      *(v36 + 56) = MEMORY[0x277D837D0];
      *(v36 + 64) = v39;
      *(v36 + 32) = v37;
      *(v36 + 40) = v40;
      v41 = sub_219BF4694();
      *(v36 + 96) = v38;
      *(v36 + 104) = v39;
      *(v36 + 72) = v41;
      *(v36 + 80) = v42;
      v43 = [v71 v32[278]];
      v44 = sub_219BF5414();
      v46 = v45;

      *(v36 + 136) = v38;
      *(v36 + 144) = v39;
      *(v36 + 112) = v44;
      *(v36 + 120) = v46;
      v47 = [v73 identifier];
      v48 = sub_219BF5414();
      v50 = v49;

      *(v36 + 176) = v38;
      *(v36 + 184) = v39;
      *(v36 + 152) = v48;
      *(v36 + 160) = v50;
      v51 = v70;
      sub_219BF6214();
      sub_219BE5314();

      swift_unknownObjectRetain();
      sub_219BF3F64();
      sub_219BF3F54();
      v52 = v76;
      (v75)(v67, v76, v51);

      sub_219BF3F34();
      v53 = v68;
      sub_219BF4194();
      sub_219BF46A4();
      (*v60)(v53, v69);
      (*v59)(v52, v51);
      sub_219BF73D4();
      sub_219BF7414();
      v32 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      v54 = v74;
      sub_219BF7424();
      sub_219BF73E4();
      v34 = v78 + v61;
      v20 = v54 - 1;
    }

    while (v20);

    swift_unknownObjectRelease();
    return v79;
  }

  else
  {
    swift_unknownObjectRelease();

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_218CCF3D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v9 = sub_219BF4F44();
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_219BF41B4();
  v79 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BF3AA4();
  v78 = *(v75 - 8);
  v12 = MEMORY[0x28223BE20](v75);
  v70 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v14;
  v15 = [a1 identifier];
  sub_219BF5414();

  v16 = a2;
  v66 = a3;
  v17 = a4;
  v18 = sub_219BF3804();

  if (*(v18 + 16))
  {
    v74 = sub_218CCFA90(a1, a2, MEMORY[0x277D34290]);
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v73 = qword_280F61708;
    sub_2186E7E8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v65 = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C0B8C0;
    v21 = *(v18 + 16);
    v22 = MEMORY[0x277D83C10];
    *(v20 + 56) = MEMORY[0x277D83B88];
    *(v20 + 64) = v22;
    *(v20 + 32) = v21;
    v23 = sub_219BF3FC4();
    v25 = v24;
    *(v20 + 96) = MEMORY[0x277D837D0];
    v26 = sub_2186FC3BC();
    *(v20 + 104) = v26;
    *(v20 + 72) = v23;
    *(v20 + 80) = v25;
    v27 = [a1 identifier];
    v28 = sub_219BF5414();
    v30 = v29;

    *(v20 + 136) = MEMORY[0x277D837D0];
    *(v20 + 144) = v26;
    *(v20 + 112) = v28;
    *(v20 + 120) = v30;
    sub_219BF6214();
    sub_219BE5314();

    if (v21)
    {
      v80 = MEMORY[0x277D84F90];
      sub_219BF73F4();
      v77 = *(v78 + 16);
      v31 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v58 = v18;
      v32 = v18 + v31;
      v33 = *(v78 + 72);
      v62 = (v79 + 8);
      v63 = v33;
      v61 = (v78 + 8);
      v60 = xmmword_219C0EE20;
      v59 = v26;
      v34 = v75;
      v64 = a1;
      v78 += 16;
      do
      {
        v79 = v32;
        v76 = v21;
        v35 = v69;
        v77(v69, v32, v34);
        v36 = swift_allocObject();
        *(v36 + 16) = v60;
        v37 = sub_219BF3A84();
        v38 = MEMORY[0x277D837D0];
        v39 = v59;
        *(v36 + 56) = MEMORY[0x277D837D0];
        *(v36 + 64) = v39;
        *(v36 + 32) = v37;
        *(v36 + 40) = v40;
        v41 = sub_219BF3FC4();
        *(v36 + 96) = v38;
        *(v36 + 104) = v39;
        *(v36 + 72) = v41;
        *(v36 + 80) = v42;
        v43 = [a1 identifier];
        v44 = sub_219BF5414();
        v45 = v16;
        v46 = v17;
        v48 = v47;

        *(v36 + 136) = v38;
        *(v36 + 144) = v39;
        *(v36 + 112) = v44;
        *(v36 + 120) = v48;
        v49 = [v74 identifier];
        v50 = sub_219BF5414();
        v52 = v51;

        *(v36 + 176) = v38;
        *(v36 + 184) = v39;
        *(v36 + 152) = v50;
        *(v36 + 160) = v52;
        v53 = v45;
        v34 = v75;
        sub_219BF6214();
        sub_219BE5314();

        swift_unknownObjectRetain();
        sub_219BF3F64();
        sub_219BF3F54();
        v77(v70, v35, v34);

        sub_219BF3F34();
        v54 = v71;
        v17 = v46;
        sub_219BF4194();
        v16 = v53;
        sub_219BF3FD4();
        (*v62)(v54, v72);
        (*v61)(v35, v34);
        sub_219BF73D4();
        sub_219BF7414();
        a1 = v64;
        v55 = v76;
        sub_219BF7424();
        sub_219BF73E4();
        v32 = v79 + v63;
        v21 = v55 - 1;
      }

      while (v21);

      swift_unknownObjectRelease();
      return v80;
    }

    else
    {
      swift_unknownObjectRelease();

      return MEMORY[0x277D84F90];
    }
  }

  else
  {

    sub_218725F94();
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_219C146A0;
    *(v57 + 32) = a2;

    return v57;
  }
}

uint64_t sub_218CCFA90(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = [a1 asSports];
  if (!v5)
  {
    goto LABEL_6;
  }

  if ([v5 sportsType] != 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v6 = a3();
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_6:
    swift_unknownObjectRetain();
    return v4;
  }

  return v6;
}

void sub_218CCFB5C()
{
  if (!qword_27CC10E08)
  {
    sub_2186E7E8C(255, &qword_280E8EE80, MEMORY[0x277D343E8], MEMORY[0x277D83940]);
    sub_218CCFBF0();
    v0 = sub_219BE32C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10E08);
    }
  }
}

unint64_t sub_218CCFBF0()
{
  result = qword_27CC10E10;
  if (!qword_27CC10E10)
  {
    sub_2186E7E8C(255, &qword_280E8EE80, MEMORY[0x277D343E8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10E10);
  }

  return result;
}

uint64_t sub_218CCFCD4(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v30 = a4;
  v6 = sub_219975D48(a3);
  v8 = v7;
  v29 = a2;
  v9 = a2 | 0x8000000000000000;
  v10 = [a1 identifier];
  sub_219BF5414();

  v28 = v6;
  v11 = sub_219BF3804();

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v27[9] = qword_280F61708;
  sub_2186E7E8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = *(v11 + 16);
  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  v15 = sub_219BF3F44();
  v17 = v16;
  v18 = MEMORY[0x277D837D0];
  *(v12 + 96) = MEMORY[0x277D837D0];
  v19 = sub_2186FC3BC();
  *(v12 + 104) = v19;
  *(v12 + 72) = v15;
  *(v12 + 80) = v17;
  v20 = [a1 identifier];
  v21 = sub_219BF5414();
  v23 = v22;

  *(v12 + 136) = v18;
  *(v12 + 144) = v19;
  *(v12 + 112) = v21;
  *(v12 + 120) = v23;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v24);
  v27[2] = v29;
  v27[3] = v9;
  v27[4] = a1;
  v27[5] = v28;
  v27[6] = v8;
  v27[7] = v30;
  v25 = sub_218DDEF94(sub_218CD0B24, v27, v11);

  return v25;
}

uint64_t sub_218CCFF3C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a4;
  v7 = sub_219975D48(a3);
  v9 = v8;
  v10 = [a1 identifier];
  sub_219BF5414();

  v29 = a2 | 0x4000000000000000;
  v30 = v7;
  v11 = sub_219BF3804();

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v28 = qword_280F61708;
  sub_2186E7E8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = *(v11 + 16);
  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  v15 = sub_219BF4894();
  v17 = v16;
  v18 = MEMORY[0x277D837D0];
  *(v12 + 96) = MEMORY[0x277D837D0];
  v19 = sub_2186FC3BC();
  *(v12 + 104) = v19;
  *(v12 + 72) = v15;
  *(v12 + 80) = v17;
  v20 = [a1 identifier];
  v21 = sub_219BF5414();
  v23 = v22;

  *(v12 + 136) = v18;
  *(v12 + 144) = v19;
  *(v12 + 112) = v21;
  *(v12 + 120) = v23;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v24);
  v27[2] = a2;
  v27[3] = v31;
  v27[4] = a1;
  v27[5] = v29;
  v27[6] = v30;
  v27[7] = v9;
  v27[8] = v32;
  v25 = sub_218DDF6A8(sub_218CD0AFC, v27, v11);

  return v25;
}

uint64_t sub_218CD01A8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v29 = a4;
  v6 = sub_219975D48(a3);
  v8 = v7;
  v9 = [a1 identifier];
  sub_219BF5414();

  v28 = v6;
  v10 = sub_219BF3804();

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v27 = qword_280F61708;
  sub_2186E7E8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C0B8C0;
  v12 = *(v10 + 16);
  v13 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v13;
  *(v11 + 32) = v12;
  v14 = sub_219BF4644();
  v16 = v15;
  v17 = MEMORY[0x277D837D0];
  *(v11 + 96) = MEMORY[0x277D837D0];
  v18 = sub_2186FC3BC();
  *(v11 + 104) = v18;
  *(v11 + 72) = v14;
  *(v11 + 80) = v16;
  v19 = [a1 identifier];
  v20 = sub_219BF5414();
  v22 = v21;

  *(v11 + 136) = v17;
  *(v11 + 144) = v18;
  *(v11 + 112) = v20;
  *(v11 + 120) = v22;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v23);
  v26[2] = a2;
  v26[3] = a2;
  v26[4] = a1;
  v26[5] = v28;
  v26[6] = v8;
  v26[7] = v29;
  v24 = sub_218DDF348(sub_218CD0B78, v26, v10);

  return v24;
}

uint64_t sub_218CD0404(char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_219975D48(a3);
  v9 = sub_218CD0480(a1, a2, v7, v8, a4);

  return v9;
}

uint64_t sub_218CD0480(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v9 = sub_219BF4F44();
  MEMORY[0x28223BE20](v9 - 8);
  v61 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BF41B4();
  v59 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BF3AA4();
  v74 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v72 = v57 - v15;
  v75 = a1;
  v16 = [a1 identifier];
  sub_219BF5414();

  v17 = a2;
  v62 = a3;
  v18 = a4;
  v19 = sub_219BF3804();

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v20 = qword_280F61708;
  sub_2186E7E8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v66 = v21;
  v22 = swift_allocObject();
  v65 = xmmword_219C0B8C0;
  *(v22 + 16) = xmmword_219C0B8C0;
  v23 = *(v19 + 16);
  v24 = MEMORY[0x277D83C10];
  *(v22 + 56) = MEMORY[0x277D83B88];
  *(v22 + 64) = v24;
  *(v22 + 32) = v23;
  v25 = sub_219BF48D4();
  v27 = v26;
  *(v22 + 96) = MEMORY[0x277D837D0];
  v28 = sub_2186FC3BC();
  *(v22 + 104) = v28;
  *(v22 + 72) = v25;
  *(v22 + 80) = v27;
  v29 = v75;
  v30 = [v75 identifier];
  v31 = sub_219BF5414();
  v73 = v32;

  v33 = v20;
  *(v22 + 136) = MEMORY[0x277D837D0];
  *(v22 + 144) = v28;
  v64 = v28;
  v34 = v73;
  *(v22 + 112) = v31;
  *(v22 + 120) = v34;
  sub_219BF6214();
  sub_219BE5314();

  v73 = v23;
  if (v23)
  {
    v35 = v29;
    v76 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v71 = *(v74 + 16);
    v36 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v57[1] = v19;
    v37 = (v19 + v36);
    v38 = *(v74 + 72);
    ++v59;
    v60 = v38;
    v57[2] = v33;
    v58 = (v74 + 8);
    v74 += 16;
    do
    {
      v75 = v37;
      v71();
      v39 = swift_allocObject();
      *(v39 + 16) = v65;
      v40 = sub_219BF3A84();
      v41 = MEMORY[0x277D837D0];
      v42 = v64;
      *(v39 + 56) = MEMORY[0x277D837D0];
      *(v39 + 64) = v42;
      *(v39 + 32) = v40;
      *(v39 + 40) = v43;
      v44 = sub_219BF48D4();
      *(v39 + 96) = v41;
      *(v39 + 104) = v42;
      *(v39 + 72) = v44;
      *(v39 + 80) = v45;
      v46 = [v35 identifier];
      v47 = sub_219BF5414();
      v48 = v17;
      v49 = v18;
      v51 = v50;

      *(v39 + 136) = v41;
      *(v39 + 144) = v42;
      *(v39 + 112) = v47;
      *(v39 + 120) = v51;
      v52 = v48;
      v53 = v70;
      sub_219BF6214();
      sub_219BE5314();

      swift_unknownObjectRetain();
      sub_219BF3F64();
      sub_219BF3F54();
      v54 = v72;
      (v71)(v67, v72, v53);

      sub_219BF3F34();
      v55 = v68;
      v18 = v49;
      sub_219BF4194();
      v17 = v52;
      sub_219BF48E4();
      (*v59)(v55, v69);
      (*v58)(v54, v53);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v37 = &v75[v60];
      --v73;
    }

    while (v73);

    return v76;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_218CD0C0C()
{
  result = qword_27CC10E18;
  if (!qword_27CC10E18)
  {
    sub_2186E6C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10E18);
  }

  return result;
}

uint64_t sub_218CD0C6C()
{
  sub_219BF5524();
}

uint64_t sub_218CD0D5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218CD1028();
  *a1 = result;
  return result;
}

void sub_218CD0D8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1869768040;
  v5 = 0xE700000000000000;
  v6 = 0x6C6C6177796170;
  v7 = 0xE700000000000000;
  v8 = 0x64657461727563;
  if (v2 != 4)
  {
    v8 = 0x4C7974696C697475;
    v7 = 0xEC000000736B6E69;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7478654E7075;
  if (v2 != 1)
  {
    v9 = 0x756F59726F66;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_218CD0F14()
{
  result = qword_280ED3FC8;
  if (!qword_280ED3FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3FC8);
  }

  return result;
}

uint64_t sub_218CD0F68()
{
  v1 = *v0;
  v2 = 1869768008;
  v3 = 0x6C6C6177796150;
  v4 = 0x64657461727543;
  if (v1 != 4)
  {
    v4 = 0x207974696C697455;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7478654E207055;
  if (v1 != 1)
  {
    v5 = 0x756F5920726F46;
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

uint64_t sub_218CD1028()
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

unint64_t sub_218CD1074()
{
  result = qword_280ED3FC0;
  if (!qword_280ED3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3FC0);
  }

  return result;
}

void *sub_218CD10C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84FA0];
  v4 = v1;
  v5 = (a1 + 32);
  do
  {
    if (!v4)
    {
      goto LABEL_12;
    }

    v6 = *v5++;
    --v4;
  }

  while (v6 != 0x2000);
  sub_219BF7AA4();
  sub_219BF5524();
  v7 = sub_219BF7AE4();
  v8 = -1 << *(v3 + 32);
  v9 = v7 & ~v8;
  if (((*(v3 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v3;
    sub_2194A1BDC(0, v9, isUniquelyReferenced_nonNull_native);
    goto LABEL_12;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(*(v3 + 48) + v9);
    if (v11 <= 2 && v11 != 1 && v11 != 2)
    {
      goto LABEL_31;
    }

    v12 = sub_219BF78F4();

    if (v12)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v3 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  while (1)
  {
    do
    {
LABEL_12:
      if (!v1)
      {
        goto LABEL_28;
      }

      v14 = *v2++;
      --v1;
    }

    while (v14 != 0x20000);
    sub_219BF7AA4();
    sub_219BF5524();
    v15 = sub_219BF7AE4();
    v16 = -1 << *(v3 + 32);
    v17 = v15 & ~v16;
    if ((*(v3 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      v18 = ~v16;
      v2 = 0xE700000000000000;
      while (1)
      {
        v19 = *(*(v3 + 48) + v17);
        if (v19 <= 2 && v19 != 1 && v19 != 2)
        {
          break;
        }

        v1 = sub_219BF78F4();

        if (v1)
        {
          goto LABEL_22;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v3 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v30 = v3;
      sub_2194A1BDC(0, v17, v20);
      v3 = v30;
    }

LABEL_22:
    sub_219BF7AA4();
    sub_219BF5524();
    v21 = sub_219BF7AE4();
    v22 = -1 << *(v3 + 32);
    v23 = v21 & ~v22;
    if ((*(v3 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      break;
    }

LABEL_27:
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v3;
    sub_2194A1BDC(2, v23, v25);
    v3 = v30;
LABEL_28:
    v26 = *(v3 + 16);
    if (!v26)
    {
      goto LABEL_34;
    }

LABEL_29:
    v27 = sub_21947D4EC(v26, 0);
    v28 = sub_2194B7E48(&v30, v27 + 4, v26, v3);
    sub_21892DE98();
    if (v28 == v26)
    {
      return v27;
    }

    __break(1u);
LABEL_31:

    v3 = MEMORY[0x277D84FA0];
  }

  v24 = ~v22;
  v2 = 0xE700000000000000;
  while (*(*(v3 + 48) + v23) != 2)
  {
    v1 = sub_219BF78F4();

    if (v1)
    {
      goto LABEL_28;
    }

    v23 = (v23 + 1) & v24;
    if (((*(v3 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v26 = *(v3 + 16);
  if (v26)
  {
    goto LABEL_29;
  }

LABEL_34:

  return MEMORY[0x277D84F90];
}

uint64_t FCSportsOnboardingState.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x656472616F626E6FLL;
  }

  if (!a1)
  {
    return 0x616F626E4F746F6ELL;
  }

  v2 = sub_219BF7894();
  MEMORY[0x21CECC330](v2);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0x286E776F6E6B6E75;
}

unint64_t sub_218CD1764()
{
  result = qword_280E8DF00;
  if (!qword_280E8DF00)
  {
    type metadata accessor for FCSportsOnboardingState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8DF00);
  }

  return result;
}

uint64_t sub_218CD17BC(uint64_t a1)
{
  if (qword_280EE92E8 != -1)
  {
    swift_once();
  }

  v2 = *(a1 + 16);
  if (v2 && (v3 = sub_21947D1C0(v2, 0), v4 = sub_2194ABD64(v11, v3 + 4, v2, a1), , result = sub_21892DE98(), v4 != v2))
  {
    __break(1u);
  }

  else
  {
    v6 = sub_219BF5974();
    v8 = v7;

    if (v8)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    v11[0] = v9;
    v11[1] = v10;
    sub_218821894(&qword_280E99130);
    sub_219BDCA54();

    sub_21870F384(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  return result;
}

uint64_t sub_218CD19E0()
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE92C8 != -1)
  {
    swift_once();
  }

  sub_218821894(qword_280E99138);
  sub_219BDC7D4();
  v3 = sub_219BDBD34();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_2186DD368(0, &unk_280EE7000, sub_2186DCF58, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218CD1B50()
{
  if (qword_280EE92C8 != -1)
  {
    swift_once();
  }

  sub_218821894(&qword_280E99130);
  sub_219BDCA54();
  sub_21870F384(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

unint64_t sub_218CD1C30()
{
  result = qword_280E8E9B8;
  if (!qword_280E8E9B8)
  {
    sub_2186E2394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E9B8);
  }

  return result;
}

uint64_t sub_218CD1CA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v4 - 8);
  v21[2] = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEEE64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CD32C0();
  v23 = *(v10 - 8);
  v24 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v22 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  sub_218718690(v2 + 56, v27);
  (*(v7 + 16))(v9, a1, v6);
  swift_getObjectType();
  sub_219BEEFB4();
  sub_218718690(v2 + 112, v26);
  sub_218718690(v2 + 152, v25);
  v15 = *(v2 + 192);
  v21[1] = type metadata accessor for TodayModel(0);
  sub_218CD3408();
  sub_218CD345C();
  sub_2188552DC();
  sub_2186EB3E8();
  sub_218847B70(&unk_280EDFA20, type metadata accessor for TodayModel);
  sub_218847B70(&unk_280EDFA08, type metadata accessor for TodayModel);
  sub_218847B70(&qword_280EDF9E0, type metadata accessor for TodayModel);
  v16 = v15;
  sub_219BF0364();
  v17 = v23;
  v18 = v24;
  (*(v23 + 16))(v22, v14, v24);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(&qword_280E90F50, sub_218CD32C0);
  v19 = sub_219BE6E64();
  (*(v17 + 8))(v14, v18);
  return v19;
}

uint64_t sub_218CD2044(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v4 - 8);
  v19[1] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEC514();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CD359C();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v20 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v19 - v15;
  (*(v7 + 16))(v9, a1, v6);
  swift_getObjectType();
  sub_219BEEFB4();
  sub_218718690(v2 + 152, v21);
  v19[0] = type metadata accessor for TodayModel(0);
  sub_218CD3408();
  sub_218CD345C();
  sub_2186EB3E8();
  sub_218847B70(&unk_280EDFA20, type metadata accessor for TodayModel);
  sub_218847B70(&unk_280EDFA08, type metadata accessor for TodayModel);
  sub_218847B70(&qword_280EDF9E0, type metadata accessor for TodayModel);
  sub_219BF0384();
  (*(v12 + 16))(v20, v16, v11);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(&qword_27CC10E30, sub_218CD359C);
  v17 = sub_219BE6E64();
  (*(v12 + 8))(v16, v11);
  return v17;
}

uint64_t sub_218CD23B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);

  __swift_destroy_boxed_opaque_existential_1(v0 + 200);

  return swift_deallocClassInstance();
}

uint64_t sub_218CD2418(uint64_t a1)
{
  v3 = type metadata accessor for TodayPrewarmBlueprintModifier();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  sub_218847A50(a1, &v13 - v7, type metadata accessor for TodayPrewarmResult);
  sub_218718690(v9 + 16, &v8[v3[6]]);
  v10 = &v8[v3[5]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v8[v3[7]] = 1;
  sub_218847A50(v8, v6, type metadata accessor for TodayPrewarmBlueprintModifier);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(qword_280EAE288, type metadata accessor for TodayPrewarmBlueprintModifier);
  v11 = sub_219BE6E64();
  sub_21884826C(v8, type metadata accessor for TodayPrewarmBlueprintModifier);
  return v11;
}

uint64_t sub_218CD25A8(uint64_t a1)
{
  v3 = type metadata accessor for TodayExpandBlueprintModifier();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_218847A50(a1, &v12 - v7, type metadata accessor for TodayExpandResult);
  sub_218718690(v9 + 16, &v8[*(v3 + 20)]);
  sub_218847A50(v8, v6, type metadata accessor for TodayExpandBlueprintModifier);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(qword_280EB2010, type metadata accessor for TodayExpandBlueprintModifier);
  v10 = sub_219BE6E64();
  sub_21884826C(v8, type metadata accessor for TodayExpandBlueprintModifier);
  return v10;
}

uint64_t sub_218CD271C(uint64_t a1)
{
  v2 = type metadata accessor for TodayUncollapseBlueprintModifier(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_218853400();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  sub_218847A50(v7, v5, type metadata accessor for TodayUncollapseBlueprintModifier);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(qword_280EA43A8, type metadata accessor for TodayUncollapseBlueprintModifier);
  v9 = sub_219BE6E64();
  sub_21884826C(v7, type metadata accessor for TodayUncollapseBlueprintModifier);
  return v9;
}

uint64_t sub_218CD2894()
{
  sub_218847AB8();
  swift_allocObject();
  sub_218C0BCB8();

  return sub_219BE6E64();
}

uint64_t sub_218CD2914(uint64_t a1, unsigned __int8 a2)
{
  sub_218718690(*v2 + 16, &v10);
  v8 = a1;
  v9 = a2;
  sub_218CD3778(&v8, &v7);
  sub_218847AB8();
  swift_allocObject();
  sub_218BB79DC(a1, a2);
  sub_218CD37D4();
  v5 = sub_219BE6E64();
  sub_218CD3828(&v8);
  return v5;
}

uint64_t sub_218CD29BC()
{
  sub_218847AB8();
  swift_allocObject();
  sub_218CD3724();

  return sub_219BE6E64();
}

uint64_t sub_218CD2A3C(uint64_t a1)
{
  v2 = type metadata accessor for TodayFailedBlueprintModifier(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_218847A50(a1, &v10 - v6, type metadata accessor for TodayFailedData);
  sub_218847A50(v7, v5, type metadata accessor for TodayFailedBlueprintModifier);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(&qword_280EB1F68, type metadata accessor for TodayFailedBlueprintModifier);
  v8 = sub_219BE6E64();
  sub_21884826C(v7, type metadata accessor for TodayFailedBlueprintModifier);
  return v8;
}

uint64_t sub_218CD2B98()
{
  sub_218847AB8();
  swift_allocObject();
  sub_218CD36D0();
  return sub_219BE6E64();
}

uint64_t sub_218CD2C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for TodayUpdateEngagementModifier();
  v7 = MEMORY[0x28223BE20](updated);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v15 - v11);
  sub_218847A50(a3, &v15 + *(v10 + 20) - v11, sub_218CD3544);
  *v12 = a1;
  v12[1] = a2;
  sub_218847A50(v12, v9, type metadata accessor for TodayUpdateEngagementModifier);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(&qword_280EAE130, type metadata accessor for TodayUpdateEngagementModifier);

  v13 = sub_219BE6E64();
  sub_21884826C(v12, type metadata accessor for TodayUpdateEngagementModifier);
  return v13;
}

uint64_t sub_218CD2DA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TodayRebuildShortcutsModifier();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_218718690(*v2 + 16, &v15 - v9);
  v11 = *(v5 + 24);
  v12 = sub_219BF0BD4();
  (*(*(v12 - 8) + 16))(&v10[v11], a2, v12);
  *(v10 + 5) = a1;
  sub_218847A50(v10, v8, type metadata accessor for TodayRebuildShortcutsModifier);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(qword_280EAE1E0, type metadata accessor for TodayRebuildShortcutsModifier);

  v13 = sub_219BE6E64();
  sub_21884826C(v10, type metadata accessor for TodayRebuildShortcutsModifier);
  return v13;
}

uint64_t sub_218CD2F4C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TodayRebuildSavedStoriesModifier();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = *v2;
  sub_218718690(v11 + 16, &v16 - v9);
  v12 = *(v5 + 24);
  v13 = sub_219BF0BD4();
  (*(*(v13 - 8) + 16))(&v10[v12], a2, v13);
  sub_218718690(v11 + 200, &v10[*(v5 + 28)]);
  *(v10 + 5) = a1;
  sub_218847A50(v10, v8, type metadata accessor for TodayRebuildSavedStoriesModifier);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(&qword_27CC0C7D8, type metadata accessor for TodayRebuildSavedStoriesModifier);

  v14 = sub_219BE6E64();
  sub_21884826C(v10, type metadata accessor for TodayRebuildSavedStoriesModifier);
  return v14;
}

uint64_t sub_218CD3108(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TodayReplaceBlueprintModifier();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *v2;
  sub_218CD34B0();
  (*(*(v12 - 8) + 16))(v10, a1, v12);
  sub_218847A50(a2, &v10[*(v5 + 20)], type metadata accessor for TodayExpandResult);
  sub_218718690(v11 + 16, &v10[*(v5 + 24)]);
  sub_218847A50(v10, v8, type metadata accessor for TodayReplaceBlueprintModifier);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(&qword_27CC10E20, type metadata accessor for TodayReplaceBlueprintModifier);
  v13 = sub_219BE6E64();
  sub_21884826C(v10, type metadata accessor for TodayReplaceBlueprintModifier);
  return v13;
}

void sub_218CD32C0()
{
  if (!qword_280E90F48)
  {
    type metadata accessor for TodayModel(255);
    sub_218CD3408();
    sub_218CD345C();
    sub_2188552DC();
    sub_2186EB3E8();
    sub_218847B70(&unk_280EDFA20, type metadata accessor for TodayModel);
    sub_218847B70(&unk_280EDFA08, type metadata accessor for TodayModel);
    sub_218847B70(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v0 = sub_219BF0374();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90F48);
    }
  }
}

unint64_t sub_218CD3408()
{
  result = qword_280EC6368;
  if (!qword_280EC6368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6368);
  }

  return result;
}

unint64_t sub_218CD345C()
{
  result = qword_280EC6360;
  if (!qword_280EC6360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6360);
  }

  return result;
}

void sub_218CD34B0()
{
  if (!qword_280E91960)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_218847B70(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v0 = sub_219BEEB24();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91960);
    }
  }
}

void sub_218CD3544()
{
  if (!qword_280E918A8)
  {
    sub_219BEEC14();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E918A8);
    }
  }
}

void sub_218CD359C()
{
  if (!qword_27CC10E28)
  {
    type metadata accessor for TodayModel(255);
    sub_218CD3408();
    sub_218CD345C();
    sub_2186EB3E8();
    sub_218847B70(&unk_280EDFA20, type metadata accessor for TodayModel);
    sub_218847B70(&unk_280EDFA08, type metadata accessor for TodayModel);
    sub_218847B70(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v0 = sub_219BF0394();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10E28);
    }
  }
}

unint64_t sub_218CD36D0()
{
  result = qword_280EB1998[0];
  if (!qword_280EB1998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB1998);
  }

  return result;
}

unint64_t sub_218CD3724()
{
  result = qword_27CC10E38;
  if (!qword_27CC10E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10E38);
  }

  return result;
}

unint64_t sub_218CD37D4()
{
  result = qword_280EB1988;
  if (!qword_280EB1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1988);
  }

  return result;
}

uint64_t sub_218CD387C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v104 = a2;
  v98 = a5;
  v102 = a3;
  v103 = a4;
  v115 = a6;
  v7 = sub_219BF0B34();
  MEMORY[0x28223BE20](v7 - 8);
  v78[2] = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BF0B74();
  MEMORY[0x28223BE20](v83);
  v80 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BF0444();
  MEMORY[0x28223BE20](v90);
  v91 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_218CD47C8(0, &unk_280E90F30, MEMORY[0x277D32CD8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = v78 - v15;
  v16 = sub_219BF19D4();
  v86 = *(v16 - 8);
  v87 = v16;
  MEMORY[0x28223BE20](v16);
  v88 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_219BF04A4();
  MEMORY[0x28223BE20](v94);
  v92 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v95 = *(v19 - 8);
  v96 = v19;
  MEMORY[0x28223BE20](v19);
  v93 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF0BD4();
  v99 = *(v21 - 8);
  v100 = v21;
  MEMORY[0x28223BE20](v21);
  v101 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF0EE4();
  MEMORY[0x28223BE20](v23 - 8);
  v78[1] = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF0574();
  v84 = *(v25 - 8);
  v85 = v25;
  MEMORY[0x28223BE20](v25);
  v97 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CD47C8(0, &unk_280E92500, MEMORY[0x277D31DC8], v13);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = v78 - v28;
  sub_218CD47C8(0, &qword_280E91C10, MEMORY[0x277D32010], v13);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = v78 - v31;
  sub_218CD47C8(0, &unk_280EE34A0, MEMORY[0x277D2D148], v13);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = v78 - v34;
  v36 = sub_219BF0F34();
  MEMORY[0x28223BE20](v36);
  sub_2186EAB88();
  v38 = v37;
  v78[0] = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v114, a1, 0x212uLL);
  v41 = sub_218CD47C0(v114);
  if (v41 > 2)
  {
    if (v41 == 4)
    {
      v52 = nullsub_1(v114);
      v53 = v98;
      if (*(v98 + 16))
      {
        v54 = sub_21870F700(*v52, v52[1]);
        if (v55)
        {
          v56 = *(*(v53 + 56) + 8 * v54);
          v57 = [v56 identifier];
          sub_219BF5414();

          v113 = 0;
          v111 = 0u;
          v112 = 0u;
          v110 = 0;
          v108 = 0u;
          v109 = 0u;
          v107 = 0;
          v105 = 0u;
          v106 = 0u;
          v58 = v56;
          sub_219BF0B24();
          (*(v84 + 104))(v97, *MEMORY[0x277D32D70], v85);
          sub_219BF0AE4();
          (*(v99 + 16))(v101, v102, v100);
          v59 = MEMORY[0x277D32FD0];
          sub_2186EF6B4(&unk_280E90C70, MEMORY[0x277D32FD0]);
          sub_2186EF6B4(&unk_280E90C80, v59);
          v60 = v79;
          sub_219BF0844();

          v50 = v115;
          (*(v81 + 32))(v115, v60, v82);
          v51 = type metadata accessor for SearchModel(0);
          swift_storeEnumTagMultiPayload();
          goto LABEL_11;
        }
      }
    }

    else
    {
      nullsub_1(v114);
    }

LABEL_20:
    v76 = type metadata accessor for SearchModel(0);
    v61 = *(*(v76 - 8) + 56);
    v62 = v115;
    v75 = 1;
    return v61(v62, v75, 1, v76);
  }

  if (!v41)
  {
    v63 = nullsub_1(v114);
    v64 = v103;
    if (!*(v103 + 16))
    {
      goto LABEL_20;
    }

    v65 = sub_21870F700(*v63, v63[1]);
    if ((v66 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v41 != 1)
  {
    v67 = nullsub_1(v114);
    v64 = v103;
    if (!*(v103 + 16))
    {
      goto LABEL_20;
    }

    v65 = sub_21870F700(*v67, v67[1]);
    if ((v68 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    v69 = *(*(*(v64 + 56) + 8 * v65) + 16);
    swift_retain_n();
    v70 = [v69 identifier];
    v104 = sub_219BF5414();

    (*(v86 + 104))(v88, *MEMORY[0x277D334C8], v87);
    v71 = sub_219BF0494();
    (*(*(v71 - 8) + 56))(v89, 1, 1, v71);
    *&v111 = MEMORY[0x277D84F90];
    sub_2186EF6B4(&qword_280E90F40, MEMORY[0x277D32CB0]);
    sub_218CD47C8(0, &qword_280E8EF18, MEMORY[0x277D32CB0], MEMORY[0x277D83940]);
    sub_218CD482C();
    sub_219BF7164();
    swift_unknownObjectRetain();
    sub_219BF03D4();
    (*(v99 + 16))(v101, v102, v100);
    v72 = MEMORY[0x277D32CE0];
    sub_2186EF6B4(&unk_280E90F10, MEMORY[0x277D32CE0]);
    sub_2186EF6B4(&unk_280E90F20, v72);
    v73 = v93;
    sub_219BF0844();

    v74 = v115;
    (*(v95 + 32))(v115, v73, v96);
    v51 = type metadata accessor for SearchModel(0);
    swift_storeEnumTagMultiPayload();

    v61 = *(*(v51 - 8) + 56);
    v62 = v74;
    goto LABEL_19;
  }

  v42 = nullsub_1(v114);
  if (!*(v104 + 16))
  {
    goto LABEL_20;
  }

  v43 = sub_21870F700(*v42, v42[1]);
  if ((v44 & 1) == 0)
  {
    goto LABEL_20;
  }

  v45 = *(*(*(v104 + 56) + 8 * v43) + 16);
  v103 = *(*(v104 + 56) + 8 * v43);
  v104 = v45;
  v46 = sub_219BEBD44();
  (*(*(v46 - 8) + 56))(v35, 1, 1, v46);
  v47 = sub_219BEE404();
  (*(*(v47 - 8) + 56))(v32, 1, 1, v47);
  v48 = sub_219BEDB44();
  (*(*(v48 - 8) + 56))(v29, 1, 1, v48);
  (*(v84 + 104))(v97, *MEMORY[0x277D32D70], v85);
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_219BF0ED4();
  sub_219BF0E34();
  (*(v99 + 16))(v101, v102, v100);
  v49 = MEMORY[0x277D33058];
  sub_2186EF6B4(&unk_280E90A40, MEMORY[0x277D33058]);
  sub_2186EF6B4(&qword_280E90A50, v49);
  sub_219BF0844();

  v50 = v115;
  (*(v78[0] + 32))(v115, v40, v38);
  v51 = type metadata accessor for SearchModel(0);
  swift_storeEnumTagMultiPayload();

LABEL_11:
  v61 = *(*(v51 - 8) + 56);
  v62 = v50;
LABEL_19:
  v75 = 0;
  v76 = v51;
  return v61(v62, v75, 1, v76);
}

void *sub_218CD4740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v8[2] = a2;
  v8[3] = v6;
  v8[4] = a5;
  v8[5] = a3;
  v8[6] = a4;
  return sub_218F8D318(sub_218CD479C, v8, a1);
}

void sub_218CD47C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218CD482C()
{
  result = qword_280E8EF10;
  if (!qword_280E8EF10)
  {
    sub_218CD47C8(255, &qword_280E8EF18, MEMORY[0x277D32CB0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EF10);
  }

  return result;
}

uint64_t sub_218CD48B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218CD48F4()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_218CD4928(uint64_t a1, uint64_t a2)
{
  v4 = sub_218CD4B18(&qword_27CC10E58);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218CD4990(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = sub_219BF78F4(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 32) == v3[4] && *(v2 + 40) == v3[5])
    {
      return 1;
    }

    else
    {

      return sub_219BF78F4();
    }
  }

  return result;
}

uint64_t sub_218CD4B18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowingButtonModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218CD4B58(char a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_219BDB5E4();
  v7 = v6;

  v8 = [v3 bundleForClass_];
  v9 = sub_219BDB5E4();
  v11 = v10;

  v12 = (a1 & 1) == 0;
  if (a1)
  {
    v13 = v7;
  }

  else
  {
    v13 = v11;
  }

  if (v12)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  type metadata accessor for FollowingButtonModel();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000010;
  *(result + 24) = 0x8000000219CF21A0;
  *(result + 32) = v14;
  *(result + 40) = v13;
  *(result + 48) = 1;
  return result;
}

uint64_t sub_218CD4CEC(char a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  type metadata accessor for FollowingButtonModel();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000013;
  *(result + 24) = 0x8000000219CF2020;
  *(result + 32) = v4;
  *(result + 40) = v6;
  *(result + 48) = a1;
  return result;
}

uint64_t sub_218CD4DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PuzzleSetting();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CD5C98(0, &qword_27CC10E70, type metadata accessor for PuzzleSetting);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31[-1] - v13;
  sub_218CD5B5C(a3, &v31[-1] - v13);
  (*(v9 + 56))(v14, 0, 1, v8);
  swift_beginAccess();

  sub_2199D5D30(v14, a1, a2);
  swift_endAccess();
  sub_218CD5B5C(a3, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v4[4];
      v16 = v4[5];
      v18 = v4[6];
      v31[0] = MEMORY[0x277D84F90];
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v30 - 4) = v31;
      *(&v30 - 3) = a1;
      *(&v30 - 2) = a2;
      *(&v30 - 1) = a3;
      swift_bridgeObjectRetain_n();

      sub_219248F74(sub_218CD5CEC, (&v30 - 6), v18);

      v19 = v31[0];
      v4[4] = v17;
      v4[5] = v16;
      v4[6] = v19;
    }

    v22 = v4[4];
    v21 = v4[5];
    v23 = v4[6];
    v31[0] = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v30 - 4) = v31;
    *(&v30 - 3) = a1;
    *(&v30 - 2) = a2;
    *(&v30 - 1) = a3;
    swift_bridgeObjectRetain_n();

    sub_219248F74(sub_218CD5D0C, (&v30 - 6), v23);

    v24 = v31[0];
    v4[4] = v22;
    v4[5] = v21;
    v4[6] = v24;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = v4[4];
      v25 = v4[5];
      v27 = v4[6];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v29 = Strong;

        sub_218C4AE4C(v26, v25, v27, v29);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return sub_218CD5C38(v11, type metadata accessor for PuzzleSetting);
}

uint64_t sub_218CD5180()
{
  sub_218CD5C98(0, &unk_27CC24B50, MEMORY[0x277D33690]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v85 - v2;
  v92 = sub_219BF1F44();
  v4 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleSetting();
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218CD5AF0();
  v97 = v9;
  MEMORY[0x28223BE20](v9);
  v101 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v11 = *(v0 + 56);
  v12 = v3;
  v13 = v11 + 64;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 64);
  v17 = (v14 + 63) >> 6;
  v89 = (v4 + 32);
  v88 = (v4 + 48);
  v90 = (v4 + 8);
  v100 = v11;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = MEMORY[0x277D84F98];
  v94 = v8;
  v95 = v12;
  v93 = v13;
  v96 = v17;
  while (v16)
  {
    v21 = v12;
LABEL_13:
    v23 = __clz(__rbit64(v16)) | (v18 << 6);
    v24 = v101;
    v25 = (*(v100 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v97 + 48);
    sub_218CD5B5C(*(v100 + 56) + *(v98 + 72) * v23, v101 + v28);
    v29 = v27;
    *v24 = v27;
    v24[1] = v26;
    sub_218CD5B5C(v24 + v28, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v41 = *v8;
      v42 = v8[1];
      *(&v105 + 1) = MEMORY[0x277D837D0];
      *&v104 = v41;
      *(&v104 + 1) = v42;
      sub_218751558(&v104, v103);
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v19;
      v33 = sub_21870F700(v27, v26);
      v45 = v19[2];
      v46 = (v44 & 1) == 0;
      v37 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v37)
      {
        goto LABEL_58;
      }

      v48 = v44;
      if (v19[3] >= v47)
      {
        v17 = v96;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v82 = v33;
          sub_219492468();
          v33 = v82;
        }
      }

      else
      {
        sub_2194815B8(v47, isUniquelyReferenced_nonNull_native);
        v33 = sub_21870F700(v27, v26);
        v17 = v96;
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_63;
        }
      }

      v8 = v94;
      v12 = v95;
      v19 = v102;
      if ((v48 & 1) == 0)
      {
        v102[(v33 >> 6) + 8] |= 1 << v33;
        v78 = (v19[6] + 16 * v33);
        *v78 = v27;
        v78[1] = v26;
        sub_218751558(v103, (v19[7] + 32 * v33));
        v79 = v19[2];
        v37 = __OFADD__(v79, 1);
        v77 = v79 + 1;
        if (v37)
        {
          goto LABEL_60;
        }

        goto LABEL_46;
      }

LABEL_4:
      v20 = (v19[7] + 32 * v33);
      __swift_destroy_boxed_opaque_existential_1(v20);
      sub_218751558(v103, v20);

LABEL_5:
      v13 = v93;
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v31 = *v8;
      *(&v105 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v104) = v31;
      sub_218751558(&v104, v103);
      swift_bridgeObjectRetain_n();
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v102 = v19;
      v33 = sub_21870F700(v27, v26);
      v35 = v19[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_57;
      }

      v39 = v34;
      if (v19[3] >= v38)
      {
        v17 = v96;
        if ((v32 & 1) == 0)
        {
          v81 = v33;
          sub_219492468();
          v33 = v81;
        }
      }

      else
      {
        sub_2194815B8(v38, v32);
        v33 = sub_21870F700(v27, v26);
        v17 = v96;
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_63;
        }
      }

      v8 = v94;
      v12 = v95;
      v19 = v102;
      if (v39)
      {
        goto LABEL_4;
      }

      v102[(v33 >> 6) + 8] |= 1 << v33;
      v75 = (v19[6] + 16 * v33);
      *v75 = v27;
      v75[1] = v26;
      sub_218751558(v103, (v19[7] + 32 * v33));
      v76 = v19[2];
      v37 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v37)
      {
        goto LABEL_59;
      }

LABEL_46:
      v19[2] = v77;
      goto LABEL_5;
    }

    v50 = v8;
    v51 = v92;
    (*v89)(v91, v50, v92);

    sub_219BF1EB4();
    v52 = v21;
    v53 = (*v88)(v21, 1, v51);
    v54 = v90;
    v55 = v90 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v53 == 1)
    {
      sub_218CD5BC0(v21);
    }

    else
    {
      v87 = sub_219BF1EA4();
      v57 = v56;
      v86 = *v54;
      v86(v52, v51);
      if (v57)
      {
        v85 = v55;
        *(&v105 + 1) = MEMORY[0x277D837D0];
        *&v104 = v87;
        *(&v104 + 1) = v57;
        sub_218751558(&v104, v103);

        v58 = swift_isUniquelyReferenced_nonNull_native();
        v102 = v19;
        v59 = v29;
        v61 = sub_21870F700(v29, v26);
        v62 = v19[2];
        v63 = (v60 & 1) == 0;
        v64 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_61;
        }

        v65 = v60;
        if (v19[3] >= v64)
        {
          v17 = v96;
          if (v58)
          {
            v19 = v102;
            if ((v60 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          else
          {
            sub_219492468();
            v19 = v102;
            if ((v65 & 1) == 0)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
          sub_2194815B8(v64, v58);
          v66 = sub_21870F700(v29, v26);
          v17 = v96;
          if ((v65 & 1) != (v67 & 1))
          {
            goto LABEL_63;
          }

          v61 = v66;
          v19 = v102;
          if ((v65 & 1) == 0)
          {
LABEL_30:
            v19[(v61 >> 6) + 8] |= 1 << v61;
            v68 = (v19[6] + 16 * v61);
            *v68 = v59;
            v68[1] = v26;
            sub_218751558(v103, (v19[7] + 32 * v61));
            v69 = v19[2];
            v37 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v37)
            {
              goto LABEL_62;
            }

            v19[2] = v70;
            goto LABEL_52;
          }
        }

        v80 = (v19[7] + 32 * v61);
        __swift_destroy_boxed_opaque_existential_1(v80);
        sub_218751558(v103, v80);

LABEL_52:
        v8 = v94;
        v12 = v95;
        v13 = v93;
        v86(v91, v92);
        goto LABEL_6;
      }
    }

    v71 = sub_21870F700(v29, v26);
    if (v72)
    {
      v73 = v71;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *&v103[0] = v19;
      v8 = v94;
      v12 = v95;
      v17 = v96;
      if ((v74 & 1) == 0)
      {
        v83 = v95;
        sub_219492468();
        v12 = v83;
        v19 = *&v103[0];
      }

      sub_218751558((v19[7] + 32 * v73), &v104);
      sub_2194896A8(v73, v19);
    }

    else
    {
      v104 = 0u;
      v105 = 0u;
      v8 = v94;
      v12 = v95;
      v17 = v96;
    }

    sub_218CD5C38(&v104, sub_21880702C);
    v13 = v93;
    (*v90)(v91, v92);
LABEL_6:
    v16 &= v16 - 1;
    sub_218CD5C38(v101, sub_218CD5AF0);
  }

  while (1)
  {
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v22 >= v17)
    {

      return v19;
    }

    v16 = *(v13 + 8 * v22);
    ++v18;
    if (v16)
    {
      v21 = v12;
      v18 = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_218CD5A74()
{
  sub_218774F78(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_218CD5AF0()
{
  if (!qword_27CC10E68)
  {
    type metadata accessor for PuzzleSetting();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10E68);
    }
  }
}

uint64_t sub_218CD5B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleSetting();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CD5BC0(uint64_t a1)
{
  sub_218CD5C98(0, &unk_27CC24B50, MEMORY[0x277D33690]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218CD5C38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218CD5C98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218CD5D4C()
{
  sub_219BF5524();
}

uint64_t sub_218CD5EAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218CD61D8();
  *a1 = result;
  return result;
}

void sub_218CD5EDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF73656E696C6461;
  v4 = 0x6548756F59726F66;
  v5 = 0xEE00736570696365;
  v6 = 0x526C656E6E616863;
  if (v2 != 5)
  {
    v6 = 0x6365526369706F74;
    v5 = 0xEC00000073657069;
  }

  v7 = 0xE900000000000073;
  v8 = 0x6E6F697461727563;
  if (v2 != 3)
  {
    v8 = 0x6552756F59726F66;
    v7 = 0xED00007365706963;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x655274736574616CLL;
  v10 = 0xED00007365706963;
  if (v2 != 1)
  {
    v9 = 0x676E69646E657274;
    v10 = 0xEF73657069636552;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_218CD60B4()
{
  v1 = *v0;
  v2 = 0x6548756F59726F66;
  v3 = 0x526C656E6E616863;
  if (v1 != 5)
  {
    v3 = 0x6365526369706F74;
  }

  v4 = 0x6E6F697461727563;
  if (v1 != 3)
  {
    v4 = 0x6552756F59726F66;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x655274736574616CLL;
  if (v1 != 1)
  {
    v5 = 0x676E69646E657274;
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

uint64_t sub_218CD61D8()
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

unint64_t sub_218CD6224()
{
  result = qword_280E97408;
  if (!qword_280E97408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97408);
  }

  return result;
}

id sub_218CD629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6, void *a7)
{
  v9 = *(a6 + OBJC_IVAR____TtC7NewsUI226SearchHomeSectionTitleView_titleLabel);
  [v9 setFrame_];
  v10 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [a7 userInterfaceIdiom];
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v13 = sub_2186C6148(0, &qword_280E8DB00);
  v42 = v12;
  *(inited + 40) = sub_219BF6BD4();
  v14 = *MEMORY[0x277D74118];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  v15 = sub_2186C6148(0, &qword_280E8DED8);
  *(inited + 80) = v10;
  v16 = *MEMORY[0x277D740C0];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  v17 = objc_opt_self();
  v41 = v16;
  v18 = v14;
  v39 = v10;
  v19 = [v17 blackColor];
  v20 = [v17 whiteColor];
  v21 = [v17 ts:v19 dynamicColor:v20 withDarkStyleVariant:?];

  v40 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 144) = v40;
  *(inited + 120) = v21;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v24 = sub_219BF5204();

  v25 = [v22 initWithString:v23 attributes:v24];

  [v9 setAttributedText_];
  v26 = [v9 accessibilityTraits];
  v27 = v26;
  v28 = *MEMORY[0x277D76558];
  if (!v26)
  {
    if (!v28)
    {
      v27 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v27 = v28 | v26;
    goto LABEL_7;
  }

  if ((v28 & ~v26) != 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  [v9 setAccessibilityTraits_];
  v29 = *(a6 + OBJC_IVAR____TtC7NewsUI226SearchHomeSectionTitleView_actionButton);
  [v29 setFrame_];
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_219C09EC0;
  *(v30 + 32) = v42;
  *(v30 + 40) = sub_219BF6BD4();
  *(v30 + 64) = v13;
  *(v30 + 72) = v41;
  v31 = [v17 systemPinkColor];
  *(v30 + 104) = v40;
  *(v30 + 80) = v31;
  sub_2188195F4(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v33 = sub_219BF53D4();
  v34 = sub_219BF5204();

  v35 = [v32 initWithString:v33 attributes:v34];

  [v29 setAttributedTitle:v35 forState:0];
  v36 = [v29 accessibilityTraits];
  v37 = v36;
  if (v36)
  {
    if ((v28 & ~v36) == 0)
    {
      return [v29 setAccessibilityTraits_];
    }
  }

  else if (!v28)
  {
    v37 = 0;
    return [v29 setAccessibilityTraits_];
  }

  v37 = v36 | v28;
  return [v29 setAccessibilityTraits_];
}

unint64_t sub_218CD679C()
{
  result = qword_280ECA8A0;
  if (!qword_280ECA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA8A0);
  }

  return result;
}

unint64_t sub_218CD67F4()
{
  result = qword_280ECA8C8[0];
  if (!qword_280ECA8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECA8C8);
  }

  return result;
}

unint64_t sub_218CD6850()
{
  result = qword_280ECA8A8;
  if (!qword_280ECA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA8A8);
  }

  return result;
}

uint64_t sub_218CD68A4()
{
  v0 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v53 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v50);
  v49 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v48 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PaywallMagazineFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v47 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v46);
  v45 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for CategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v29 = (&v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v30);
  v32 = (&v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218CE1F0C(v54, v32, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v32, v26, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v33 = sub_219BED784();
      v34 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v35 = v26;
      break;
    case 2u:
      sub_218CE1DC4(v32, v23, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v33 = sub_219BED784();
      v36 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_15;
    case 3u:
      sub_218CE1DC4(v32, v20, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v33 = sub_219BED784();
      v34 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v35 = v20;
      break;
    case 4u:
      sub_218CE1DC4(v32, v17, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v33 = *v17;

      v34 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      v35 = v17;
      break;
    case 5u:
      sub_218CE1DC4(v32, v14, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v33 = *v14;

      v34 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      v35 = v14;
      break;
    case 6u:
      v41 = v32;
      v32 = v45;
      sub_218CE1DC4(v41, v45, type metadata accessor for NewIssueMagazineFeedGroup);
      v33 = sub_219BED784();
      v38 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_17;
    case 7u:
      v39 = v32;
      v32 = v47;
      sub_218CE1DC4(v39, v47, type metadata accessor for PaywallMagazineFeedGroup);
      v33 = *v32;

      v38 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_17;
    case 8u:
      v42 = v32;
      v32 = v48;
      sub_218CE1DC4(v42, v48, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v33 = *v32;

      v38 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_17;
    case 9u:
      v37 = v32;
      v32 = v49;
      sub_218CE1DC4(v37, v49, type metadata accessor for TopicMagazineFeedGroup);
      v33 = sub_219BED784();
      v38 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_17;
    case 0xAu:
      v23 = v51;
      sub_218CE1DC4(v32, v51, type metadata accessor for TrendingMagazineFeedGroup);
      v33 = sub_219BED784();
      v36 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_15;
    case 0xBu:
      v23 = v52;
      sub_218CE1DC4(v32, v52, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v33 = sub_219BED784();
      v36 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_15;
    case 0xCu:
      v23 = v53;
      sub_218CE1DC4(v32, v53, type metadata accessor for NewspaperMagazineFeedGroup);
      v33 = sub_219BED784();
      v36 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_15:
      v34 = v36;
      v35 = v23;
      break;
    case 0xDu:
      v57 = type metadata accessor for CuratedMagazineFeedGroup();
      v58 = sub_21877E59C(&qword_280EC24E8, type metadata accessor for CuratedMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
      sub_218CE1F0C(v32, boxed_opaque_existential_1, type metadata accessor for CuratedMagazineFeedGroup);
      sub_2186CB1F0(&v56, v55);
      __swift_project_boxed_opaque_existential_1(v55, v55[3]);
      v33 = sub_219BED784();
      __swift_destroy_boxed_opaque_existential_1(v55);
      v38 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_17:
      v34 = v38;
      v35 = v32;
      break;
    default:
      sub_218CE1DC4(v32, v29, type metadata accessor for CategoriesMagazineFeedGroup);
      v33 = *v29;

      v34 = type metadata accessor for CategoriesMagazineFeedGroup;
      v35 = v29;
      break;
  }

  sub_21882F73C(v35, v34);
  return v33;
}

uint64_t sub_218CD71B4()
{
  v49 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v49);
  v48 = &v39 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v41);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v23);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v29);
  v31 = &v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v50, v31, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v31, v25, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v32 = sub_219BED794();
      v33 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v34 = v25;
      break;
    case 2u:
      sub_218CE1DC4(v31, v22, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v32 = sub_219BED794();
      v35 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_17;
    case 3u:
      sub_218CE1DC4(v31, v19, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v32 = sub_219BED794();
      v33 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v34 = v19;
      break;
    case 4u:
      sub_218CE1DC4(v31, v16, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v32 = *(v16 + 8);

      v33 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      v34 = v16;
      break;
    case 5u:
      sub_218CE1DC4(v31, v13, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v32 = *(v13 + 8);

      v33 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      v34 = v13;
      break;
    case 6u:
      v36 = v40;
      sub_218CE1DC4(v31, v40, type metadata accessor for NewIssueMagazineFeedGroup);
      v32 = sub_219BED794();
      v37 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_14;
    case 7u:
      sub_21882F73C(v31, type metadata accessor for MagazineFeedGroup);
      return 0;
    case 8u:
      v22 = v42;
      sub_218CE1DC4(v31, v42, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v32 = *(v22 + 9);

      v35 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_17;
    case 9u:
      v36 = v43;
      sub_218CE1DC4(v31, v43, type metadata accessor for TopicMagazineFeedGroup);
      v32 = sub_219BED794();
      v37 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_14;
    case 0xAu:
      v22 = v45;
      sub_218CE1DC4(v31, v45, type metadata accessor for TrendingMagazineFeedGroup);
      v32 = sub_219BED794();
      v35 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_17;
    case 0xBu:
      v22 = v46;
      sub_218CE1DC4(v31, v46, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v32 = sub_219BED794();
      v35 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_17;
    case 0xCu:
      v22 = v47;
      sub_218CE1DC4(v31, v47, type metadata accessor for NewspaperMagazineFeedGroup);
      v32 = sub_219BED794();
      v35 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_17:
      v33 = v35;
      v34 = v22;
      break;
    case 0xDu:
      v36 = v48;
      sub_218CE1DC4(v31, v48, type metadata accessor for CuratedMagazineFeedGroup);
      v32 = sub_219BED794();
      v37 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_14:
      v33 = v37;
      v34 = v36;
      break;
    default:
      sub_218CE1DC4(v31, v28, type metadata accessor for CategoriesMagazineFeedGroup);
      v32 = *(v28 + 8);

      v33 = type metadata accessor for CategoriesMagazineFeedGroup;
      v34 = v28;
      break;
  }

  sub_21882F73C(v34, v33);
  return v32;
}

uint64_t sub_218CD7A48@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v50 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v50);
  v49 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v45);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v42);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v41);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v52, v26, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v26, v23, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      sub_219BED7F4();
      v31 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v32 = v23;
      goto LABEL_17;
    case 2u:
      sub_218CE1DC4(v26, v20, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      sub_219BED7F4();
      v30 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_16;
    case 3u:
      sub_218CE1DC4(v26, v17, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      sub_219BED7F4();
      v31 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v32 = v17;
      goto LABEL_17;
    case 5u:
      sub_218CE1DC4(v26, v14, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v37 = *(v12 + 44);
      v38 = sub_219BEF554();
      (*(*(v38 - 8) + 16))(v51, &v14[v37], v38);
      v31 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      v32 = v14;
      goto LABEL_17;
    case 6u:
      sub_218CE1DC4(v26, v11, type metadata accessor for NewIssueMagazineFeedGroup);
      sub_219BED7F4();
      v31 = type metadata accessor for NewIssueMagazineFeedGroup;
      v32 = v11;
      goto LABEL_17;
    case 7u:
      v35 = *MEMORY[0x277D32640];
      v36 = sub_219BEF554();
      (*(*(v36 - 8) + 104))(v51, v35, v36);
      v31 = type metadata accessor for MagazineFeedGroup;
      v32 = v26;
      goto LABEL_17;
    case 8u:
      v20 = v43;
      sub_218CE1DC4(v26, v43, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v39 = *(v42 + 48);
      v40 = sub_219BEF554();
      (*(*(v40 - 8) + 16))(v51, &v20[v39], v40);
      v30 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_16;
    case 9u:
      v33 = v44;
      sub_218CE1DC4(v26, v44, type metadata accessor for TopicMagazineFeedGroup);
      sub_219BED7F4();
      v34 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_12;
    case 0xAu:
      v20 = v46;
      sub_218CE1DC4(v26, v46, type metadata accessor for TrendingMagazineFeedGroup);
      sub_219BED7F4();
      v30 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_16;
    case 0xBu:
      v20 = v47;
      sub_218CE1DC4(v26, v47, type metadata accessor for BestOfBundleMagazineFeedGroup);
      sub_219BED7F4();
      v30 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_16;
    case 0xCu:
      v20 = v48;
      sub_218CE1DC4(v26, v48, type metadata accessor for NewspaperMagazineFeedGroup);
      sub_219BED7F4();
      v30 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_16:
      v31 = v30;
      v32 = v20;
      goto LABEL_17;
    case 0xDu:
      v33 = v49;
      sub_218CE1DC4(v26, v49, type metadata accessor for CuratedMagazineFeedGroup);
      sub_219BED7F4();
      v34 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_12:
      v31 = v34;
      v32 = v33;
LABEL_17:
      result = sub_21882F73C(v32, v31);
      break;
    default:
      sub_21882F73C(v26, type metadata accessor for MagazineFeedGroup);
      v27 = *MEMORY[0x277D32640];
      v28 = sub_219BEF554();
      result = (*(*(v28 - 8) + 104))(v51, v27, v28);
      break;
  }

  return result;
}

double sub_218CD82B8()
{
  v59 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v59);
  v58 = &v44 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v57 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for PaywallMagazineFeedGroup();
  MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v48);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v46);
  v45 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v44);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v26);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v60, v28, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v28, v22, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      sub_219BED7B4();
      v29 = v39;
      v30 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v31 = v22;
      break;
    case 2u:
      sub_218CE1DC4(v28, v19, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      sub_219BED7B4();
      v29 = v37;
      v33 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_15;
    case 3u:
      sub_218CE1DC4(v28, v16, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      sub_219BED7B4();
      v29 = v38;
      v36 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_17;
    case 4u:
      sub_218CE1DC4(v28, v13, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v29 = *&v13[*(v44 + 44)];
      v30 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      v31 = v13;
      break;
    case 5u:
      v16 = v45;
      sub_218CE1DC4(v28, v45, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v29 = *&v16[*(v46 + 48)];
      v36 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_17;
    case 6u:
      v16 = v47;
      sub_218CE1DC4(v28, v47, type metadata accessor for NewIssueMagazineFeedGroup);
      sub_219BED7B4();
      v29 = v41;
      v36 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_17;
    case 7u:
      v16 = v49;
      sub_218CE1DC4(v28, v49, type metadata accessor for PaywallMagazineFeedGroup);
      v29 = *&v16[*(v50 + 28)];
      v36 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_17;
    case 8u:
      v16 = v51;
      sub_218CE1DC4(v28, v51, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v29 = *&v16[*(v52 + 52)];
      v36 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_17;
    case 9u:
      v16 = v53;
      sub_218CE1DC4(v28, v53, type metadata accessor for TopicMagazineFeedGroup);
      sub_219BED7B4();
      v29 = v35;
      v36 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_17;
    case 0xAu:
      v19 = v55;
      sub_218CE1DC4(v28, v55, type metadata accessor for TrendingMagazineFeedGroup);
      sub_219BED7B4();
      v29 = v42;
      v33 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_15;
    case 0xBu:
      v19 = v56;
      sub_218CE1DC4(v28, v56, type metadata accessor for BestOfBundleMagazineFeedGroup);
      sub_219BED7B4();
      v29 = v32;
      v33 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_15;
    case 0xCu:
      v19 = v57;
      sub_218CE1DC4(v28, v57, type metadata accessor for NewspaperMagazineFeedGroup);
      sub_219BED7B4();
      v29 = v34;
      v33 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_15:
      v30 = v33;
      v31 = v19;
      break;
    case 0xDu:
      v16 = v58;
      sub_218CE1DC4(v28, v58, type metadata accessor for CuratedMagazineFeedGroup);
      sub_219BED7B4();
      v29 = v40;
      v36 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_17:
      v30 = v36;
      v31 = v16;
      break;
    default:
      sub_218CE1DC4(v28, v25, type metadata accessor for CategoriesMagazineFeedGroup);
      v29 = *&v25[*(v23 + 44)];
      v30 = type metadata accessor for CategoriesMagazineFeedGroup;
      v31 = v25;
      break;
  }

  sub_21882F73C(v31, v30);
  return v29;
}

double sub_218CD8BAC()
{
  v62 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v62);
  v61 = &v47 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v60 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v55);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for PaywallMagazineFeedGroup();
  MEMORY[0x28223BE20](v53);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v51);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v49);
  v48 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v47);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v26);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v63, v28, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v28, v22, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      sub_219BED8B4();
      v30 = v40;
      v33 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v34 = v22;
      break;
    case 2u:
      sub_218CE1DC4(v28, v19, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      sub_219BED8B4();
      v30 = v38;
      v37 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_14;
    case 3u:
      sub_218CE1DC4(v28, v16, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      sub_219BED8B4();
      v30 = v39;
      v33 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v34 = v16;
      break;
    case 4u:
      sub_218CE1DC4(v28, v13, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v30 = *&v13[*(v47 + 48)];
      v33 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      v34 = v13;
      break;
    case 5u:
      v25 = v48;
      sub_218CE1DC4(v28, v48, type metadata accessor for MyMagazinesMagazineFeedGroup);
      sub_21877E59C(&qword_27CC20010, type metadata accessor for MyMagazinesMagazineFeedGroup);
      sub_219BF1184();
      v30 = v41;
      v31 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_17;
    case 6u:
      v19 = v50;
      sub_218CE1DC4(v28, v50, type metadata accessor for NewIssueMagazineFeedGroup);
      sub_219BED8B4();
      v30 = v43;
      v37 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_14;
    case 7u:
      v19 = v52;
      sub_218CE1DC4(v28, v52, type metadata accessor for PaywallMagazineFeedGroup);
      v30 = *&v19[*(v53 + 32)];
      v37 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_14;
    case 8u:
      v25 = v54;
      sub_218CE1DC4(v28, v54, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      sub_21877E59C(&qword_280E9F630, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      sub_219BF1184();
      v30 = v45;
      v31 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_17;
    case 9u:
      v19 = v56;
      sub_218CE1DC4(v28, v56, type metadata accessor for TopicMagazineFeedGroup);
      sub_219BED8B4();
      v30 = v36;
      v37 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_14;
    case 0xAu:
      v25 = v58;
      sub_218CE1DC4(v28, v58, type metadata accessor for TrendingMagazineFeedGroup);
      sub_219BED8B4();
      v30 = v44;
      v31 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_17;
    case 0xBu:
      v25 = v59;
      sub_218CE1DC4(v28, v59, type metadata accessor for BestOfBundleMagazineFeedGroup);
      sub_219BED8B4();
      v30 = v32;
      v31 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_17;
    case 0xCu:
      v25 = v60;
      sub_218CE1DC4(v28, v60, type metadata accessor for NewspaperMagazineFeedGroup);
      sub_219BED8B4();
      v30 = v35;
      v31 = type metadata accessor for NewspaperMagazineFeedGroup;
      goto LABEL_17;
    case 0xDu:
      v19 = v61;
      sub_218CE1DC4(v28, v61, type metadata accessor for CuratedMagazineFeedGroup);
      sub_219BED8B4();
      v30 = v42;
      v37 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_14:
      v33 = v37;
      v34 = v19;
      break;
    default:
      sub_218CE1DC4(v28, v25, type metadata accessor for CategoriesMagazineFeedGroup);
      sub_21877E59C(&qword_27CC0F1C0, type metadata accessor for CategoriesMagazineFeedGroup);
      sub_219BF1184();
      v30 = v29;
      v31 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_17:
      v33 = v31;
      v34 = v25;
      break;
  }

  sub_21882F73C(v34, v33);
  return v30;
}

double sub_218CD9550()
{
  v64 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v64);
  v63 = &v49 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v62 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PaywallMagazineFeedGroup();
  MEMORY[0x28223BE20](v55);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v51);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v49);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v26);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v65, v28, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v28, v22, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      sub_219BED7C4();
      v30 = v42;
      v38 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v39 = v22;
      break;
    case 2u:
      sub_218CE1DC4(v28, v19, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      sub_219BED7C4();
      v30 = v37;
      v38 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      v39 = v19;
      break;
    case 3u:
      sub_218CE1DC4(v28, v16, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      sub_219BED7C4();
      v30 = v40;
      v38 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v39 = v16;
      break;
    case 4u:
      sub_218CE1DC4(v28, v13, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      sub_21877E59C(qword_280EA3560, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      sub_219BF1144();
      v30 = v33;
      v34 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_14;
    case 5u:
      v25 = v50;
      sub_218CE1DC4(v28, v50, type metadata accessor for MyMagazinesMagazineFeedGroup);
      sub_21877E59C(&qword_27CC20010, type metadata accessor for MyMagazinesMagazineFeedGroup);
      sub_219BF1144();
      v30 = v43;
      v31 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_17;
    case 6u:
      v13 = v52;
      sub_218CE1DC4(v28, v52, type metadata accessor for NewIssueMagazineFeedGroup);
      sub_219BED7C4();
      v30 = v45;
      v34 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_14;
    case 7u:
      v25 = v54;
      sub_218CE1DC4(v28, v54, type metadata accessor for PaywallMagazineFeedGroup);
      sub_21877E59C(&qword_280EC0D60, type metadata accessor for PaywallMagazineFeedGroup);
      sub_219BF1144();
      v30 = v41;
      v31 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_17;
    case 8u:
      v25 = v56;
      sub_218CE1DC4(v28, v56, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      sub_21877E59C(&qword_280E9F630, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      sub_219BF1144();
      v30 = v47;
      v31 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_17;
    case 9u:
      v13 = v58;
      sub_218CE1DC4(v28, v58, type metadata accessor for TopicMagazineFeedGroup);
      sub_219BED7C4();
      v30 = v36;
      v34 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_14;
    case 0xAu:
      v25 = v60;
      sub_218CE1DC4(v28, v60, type metadata accessor for TrendingMagazineFeedGroup);
      sub_219BED7C4();
      v30 = v46;
      v31 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_17;
    case 0xBu:
      v25 = v61;
      sub_218CE1DC4(v28, v61, type metadata accessor for BestOfBundleMagazineFeedGroup);
      sub_219BED7C4();
      v30 = v32;
      v31 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_17;
    case 0xCu:
      v25 = v62;
      sub_218CE1DC4(v28, v62, type metadata accessor for NewspaperMagazineFeedGroup);
      sub_219BED7C4();
      v30 = v35;
      v31 = type metadata accessor for NewspaperMagazineFeedGroup;
      goto LABEL_17;
    case 0xDu:
      v13 = v63;
      sub_218CE1DC4(v28, v63, type metadata accessor for CuratedMagazineFeedGroup);
      sub_219BED7C4();
      v30 = v44;
      v34 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_14:
      v38 = v34;
      v39 = v13;
      break;
    default:
      sub_218CE1DC4(v28, v25, type metadata accessor for CategoriesMagazineFeedGroup);
      sub_21877E59C(&qword_27CC0F1C0, type metadata accessor for CategoriesMagazineFeedGroup);
      sub_219BF1144();
      v30 = v29;
      v31 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_17:
      v38 = v31;
      v39 = v25;
      break;
  }

  sub_21882F73C(v39, v38);
  return v30;
}

uint64_t sub_218CD9F98(uint64_t (*a1)(uint64_t))
{
  v53 = a1;
  v49 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v49);
  v50 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v44);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF1904();
  v19 = *(v18 - 8);
  v51 = v18;
  v52 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v54, v27, type metadata accessor for MagazineFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload > 10)
    {
      if (EnumCaseMultiPayload == 11)
      {
        v11 = v47;
        sub_218CE1DC4(v27, v47, type metadata accessor for BestOfBundleMagazineFeedGroup);
        v38 = sub_219BED874();
        v30 = v53(v38);
        (*(v52 + 8))(v21, v51);
        v34 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      }

      else if (EnumCaseMultiPayload == 12)
      {
        v11 = v48;
        sub_218CE1DC4(v27, v48, type metadata accessor for NewspaperMagazineFeedGroup);
        v35 = sub_219BED874();
        v30 = v53(v35);
        (*(v52 + 8))(v21, v51);
        v34 = type metadata accessor for NewspaperMagazineFeedGroup;
      }

      else
      {
        v11 = v50;
        sub_218CE1DC4(v27, v50, type metadata accessor for CuratedMagazineFeedGroup);
        v39 = sub_219BED874();
        v30 = v53(v39);
        (*(v52 + 8))(v21, v51);
        v34 = type metadata accessor for CuratedMagazineFeedGroup;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 7) < 2)
      {
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload == 9)
      {
        v11 = v45;
        sub_218CE1DC4(v27, v45, type metadata accessor for TopicMagazineFeedGroup);
        v33 = sub_219BED874();
        v30 = v53(v33);
        (*(v52 + 8))(v21, v51);
        v34 = type metadata accessor for TopicMagazineFeedGroup;
      }

      else
      {
        v11 = v46;
        sub_218CE1DC4(v27, v46, type metadata accessor for TrendingMagazineFeedGroup);
        v40 = sub_219BED874();
        v30 = v53(v40);
        (*(v52 + 8))(v21, v51);
        v34 = type metadata accessor for TrendingMagazineFeedGroup;
      }
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_218CE1DC4(v27, v14, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v36 = sub_219BED874();
      v30 = v53(v36);
      (*(v52 + 8))(v21, v51);
      v31 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v32 = v14;
LABEL_23:
      sub_21882F73C(v32, v31);
      return v30;
    }

    sub_218CE1DC4(v27, v11, type metadata accessor for NewIssueMagazineFeedGroup);
    v41 = sub_219BED874();
    v30 = v53(v41);
    (*(v52 + 8))(v21, v51);
    v34 = type metadata accessor for NewIssueMagazineFeedGroup;
LABEL_22:
    v31 = v34;
    v32 = v11;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218CE1DC4(v27, v24, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v29 = sub_219BED874();
      v30 = v53(v29);
      (*(v52 + 8))(v21, v51);
      v31 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v32 = v24;
    }

    else
    {
      sub_218CE1DC4(v27, v17, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v37 = sub_219BED874();
      v30 = v53(v37);
      (*(v52 + 8))(v21, v51);
      v31 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      v32 = v17;
    }

    goto LABEL_23;
  }

LABEL_11:
  sub_21882F73C(v27, type metadata accessor for MagazineFeedGroup);
  return MEMORY[0x277D84F90];
}

uint64_t sub_218CDA810@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v2, v6, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 9u:
    case 0xAu:
    case 0xCu:
      sub_21882F73C(v6, type metadata accessor for MagazineFeedGroup);
      v8 = *MEMORY[0x277D32930];
      v9 = sub_219BEFBD4();
      (*(*(v9 - 8) + 104))(a1, v8, v9);
      v7 = MEMORY[0x277D320E8];
      goto LABEL_5;
    case 2u:
    case 6u:
    case 8u:
      sub_21882F73C(v6, type metadata accessor for MagazineFeedGroup);
      v10 = *MEMORY[0x277D32660];
      v11 = sub_219BEF564();
      (*(*(v11 - 8) + 104))(a1, v10, v11);
      v7 = MEMORY[0x277D320D0];
      goto LABEL_5;
    case 3u:
      sub_218CE1E90(0, &qword_280E91218, MEMORY[0x277D329E8], MEMORY[0x277D32678]);
      v21 = *(v20 + 48);
      v22 = *MEMORY[0x277D32930];
      v23 = sub_219BEFBD4();
      (*(*(v23 - 8) + 104))(a1, v22, v23);
      v24 = *MEMORY[0x277D32660];
      v25 = sub_219BEF564();
      (*(*(v25 - 8) + 104))(a1 + v21, v24, v25);
      v17 = MEMORY[0x277D320C8];
      goto LABEL_9;
    case 5u:
      v15 = *MEMORY[0x277D32670];
      v16 = sub_219BEF564();
      (*(*(v16 - 8) + 104))(a1, v15, v16);
      v17 = MEMORY[0x277D320D0];
      goto LABEL_9;
    case 0xBu:
      v18 = *MEMORY[0x277D32988];
      v19 = sub_219BEFBD4();
      (*(*(v19 - 8) + 104))(a1, v18, v19);
      v17 = MEMORY[0x277D320E8];
LABEL_9:
      v26 = *v17;
      v27 = sub_219BEE6F4();
      (*(*(v27 - 8) + 104))(a1, v26, v27);
      result = sub_21882F73C(v6, type metadata accessor for MagazineFeedGroup);
      break;
    default:
      sub_21882F73C(v6, type metadata accessor for MagazineFeedGroup);
      v7 = MEMORY[0x277D320E0];
LABEL_5:
      v12 = *v7;
      v13 = sub_219BEE6F4();
      result = (*(*(v13 - 8) + 104))(a1, v12, v13);
      break;
  }

  return result;
}

uint64_t sub_218CDABFC()
{
  v48 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v43);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v49, v25, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v25, v22, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v26 = sub_219BED7E4();
      v30 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v31 = v22;
      goto LABEL_19;
    case 2u:
      sub_218CE1DC4(v25, v19, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v26 = sub_219BED7E4();
      v30 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      v31 = v19;
      goto LABEL_19;
    case 3u:
      sub_218CE1DC4(v25, v16, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v26 = sub_219BED7E4();
      v30 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v31 = v16;
      goto LABEL_19;
    case 6u:
      sub_218CE1DC4(v25, v13, type metadata accessor for NewIssueMagazineFeedGroup);
      v26 = sub_219BED7E4();
      v33 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_11;
    case 8u:
      v34 = v45;
      sub_218CE1DC4(v25, v45, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v35 = *(v34 + 64);
      v36 = *(v35 + 16);
      v26 = MEMORY[0x277D84F90];
      if (v36)
      {
        v50 = MEMORY[0x277D84F90];
        sub_219BF73F4();
        v37 = (v35 + 32);
        do
        {
          v38 = *v37;
          v37 += 4;
          v39 = v38;
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          --v36;
        }

        while (v36);
        v26 = v50;
      }

      v30 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      v31 = v34;
      goto LABEL_19;
    case 9u:
      v13 = v42;
      sub_218CE1DC4(v25, v42, type metadata accessor for TopicMagazineFeedGroup);
      v26 = sub_219BED7E4();
      v33 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_11;
    case 0xAu:
      sub_218CE1DC4(v25, v8, type metadata accessor for TrendingMagazineFeedGroup);
      v26 = sub_219BED7E4();
      v30 = type metadata accessor for TrendingMagazineFeedGroup;
      v31 = v8;
      goto LABEL_19;
    case 0xBu:
      v27 = v25;
      v28 = v44;
      sub_218CE1DC4(v27, v44, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v26 = sub_219BED7E4();
      v29 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_6;
    case 0xCu:
      v32 = v25;
      v28 = v46;
      sub_218CE1DC4(v32, v46, type metadata accessor for NewspaperMagazineFeedGroup);
      v26 = sub_219BED7E4();
      v29 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_6:
      v30 = v29;
      v31 = v28;
      goto LABEL_19;
    case 0xDu:
      v13 = v47;
      sub_218CE1DC4(v25, v47, type metadata accessor for CuratedMagazineFeedGroup);
      v26 = sub_219BED7E4();
      v33 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_11:
      v30 = v33;
      v31 = v13;
LABEL_19:
      sub_21882F73C(v31, v30);
      break;
    default:
      sub_21882F73C(v25, type metadata accessor for MagazineFeedGroup);
      v26 = MEMORY[0x277D84F90];
      break;
  }

  return v26;
}

unint64_t sub_218CDB32C()
{
  v39 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v34);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v23);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v40, v25, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v25, v22, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v27 = sub_219BED804();
      v29 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v30 = v22;
      goto LABEL_14;
    case 2u:
      sub_218CE1DC4(v25, v19, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v27 = sub_219BED804();
      v28 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_13;
    case 3u:
      sub_218CE1DC4(v25, v16, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v27 = sub_219BED804();
      v31 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_11;
    case 6u:
      sub_218CE1DC4(v25, v13, type metadata accessor for NewIssueMagazineFeedGroup);
      v32 = sub_219BED804();
      sub_21882F73C(v13, type metadata accessor for NewIssueMagazineFeedGroup);
      return v32;
    case 8u:
      sub_218CE1DC4(v25, v10, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v27 = sub_21957C0F8();
      v29 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      v30 = v10;
      goto LABEL_14;
    case 9u:
      v16 = v33;
      sub_218CE1DC4(v25, v33, type metadata accessor for TopicMagazineFeedGroup);
      v27 = sub_219BED804();
      v31 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_11;
    case 0xAu:
      v19 = v35;
      sub_218CE1DC4(v25, v35, type metadata accessor for TrendingMagazineFeedGroup);
      v27 = sub_219BED804();
      v28 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_13;
    case 0xBu:
      v19 = v36;
      sub_218CE1DC4(v25, v36, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v27 = sub_219BED804();
      v28 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_13;
    case 0xCu:
      v19 = v37;
      sub_218CE1DC4(v25, v37, type metadata accessor for NewspaperMagazineFeedGroup);
      v27 = sub_219BED804();
      v28 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_13:
      v29 = v28;
      v30 = v19;
      goto LABEL_14;
    case 0xDu:
      v16 = v38;
      sub_218CE1DC4(v25, v38, type metadata accessor for CuratedMagazineFeedGroup);
      v27 = sub_219BED804();
      v31 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_11:
      v29 = v31;
      v30 = v16;
LABEL_14:
      sub_21882F73C(v30, v29);
      result = v27;
      break;
    default:
      sub_21882F73C(v25, type metadata accessor for MagazineFeedGroup);
      result = sub_2194AE6E8(MEMORY[0x277D84F90]);
      break;
  }

  return result;
}

uint64_t sub_218CDB9F4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v35);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v33);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v23);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v42, v25, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v25, v22, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      sub_219BED8C4();
      v27 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v28 = v22;
      return sub_21882F73C(v28, v27);
    case 2u:
      sub_218CE1DC4(v25, v19, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      sub_219BED8C4();
      v29 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_13;
    case 3u:
      sub_218CE1DC4(v25, v16, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      sub_219BED8C4();
      v27 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v28 = v16;
      return sub_21882F73C(v28, v27);
    case 5u:
      sub_218CE1DC4(v25, v13, type metadata accessor for MyMagazinesMagazineFeedGroup);
      sub_218CE1F0C(&v13[*(v11 + 68)], v41, sub_2186F97D4);
      v27 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      v28 = v13;
      return sub_21882F73C(v28, v27);
    case 6u:
      sub_218CE1DC4(v25, v10, type metadata accessor for NewIssueMagazineFeedGroup);
      sub_219BED8C4();
      v27 = type metadata accessor for NewIssueMagazineFeedGroup;
      v28 = v10;
      return sub_21882F73C(v28, v27);
    case 9u:
      v30 = v34;
      sub_218CE1DC4(v25, v34, type metadata accessor for TopicMagazineFeedGroup);
      sub_219BED8C4();
      v31 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_10;
    case 0xAu:
      v19 = v36;
      sub_218CE1DC4(v25, v36, type metadata accessor for TrendingMagazineFeedGroup);
      sub_219BED8C4();
      v29 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_13;
    case 0xBu:
      v19 = v37;
      sub_218CE1DC4(v25, v37, type metadata accessor for BestOfBundleMagazineFeedGroup);
      sub_219BED8C4();
      v29 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_13;
    case 0xCu:
      v19 = v38;
      sub_218CE1DC4(v25, v38, type metadata accessor for NewspaperMagazineFeedGroup);
      sub_219BED8C4();
      v29 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_13:
      v27 = v29;
      v28 = v19;
      break;
    case 0xDu:
      v30 = v39;
      sub_218CE1DC4(v25, v39, type metadata accessor for CuratedMagazineFeedGroup);
      sub_219BED8C4();
      v31 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_10:
      v27 = v31;
      v28 = v30;
      break;
    default:
      v26 = sub_219BEE5D4();
      (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
      v27 = type metadata accessor for MagazineFeedGroup;
      v28 = v25;
      break;
  }

  return sub_21882F73C(v28, v27);
}

id sub_218CDC10C()
{
  v45 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v45);
  v47 = &v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v44);
  v43 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v41);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v6);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1904();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v20 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v50, v25, type metadata accessor for MagazineFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          sub_218CE1DC4(v25, v5, type metadata accessor for MyMagazinesMagazineFeedGroup);
          v28 = *&v5[*(v3 + 56)];
          swift_unknownObjectRetain();
          v30 = type metadata accessor for MyMagazinesMagazineFeedGroup;
          v31 = v5;
LABEL_28:
          sub_21882F73C(v31, v30);
          return v28;
        }

        v39 = v46;
        sub_218CE1DC4(v25, v46, type metadata accessor for NewIssueMagazineFeedGroup);
        sub_219BED874();
        v37 = sub_219BF1874();
        (*(v48 + 8))(v14, v49);
        if (v37)
        {
          v28 = [v37 sourceChannel];
        }

        else
        {
          v28 = 0;
        }

        v38 = type metadata accessor for NewIssueMagazineFeedGroup;
LABEL_27:
        v30 = v38;
        v31 = v39;
        goto LABEL_28;
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_218CE1DC4(v25, v22, type metadata accessor for FeaturedIssueMagazineFeedGroup);
        sub_219BED874();
        v27 = sub_219BF1874();
        (*(v48 + 8))(v19, v49);
        if (v27)
        {
          v28 = [v27 sourceChannel];
        }

        else
        {
          v28 = 0;
        }

        v30 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
        v31 = v22;
        goto LABEL_28;
      }

      v39 = v42;
      sub_218CE1DC4(v25, v42, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      sub_219BED874();
      v40 = sub_219BF1874();
      (*(v48 + 8))(v17, v49);
      if (v40)
      {
        v28 = [v40 sourceChannel];
      }

      else
      {
        v28 = 0;
      }

      v38 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_27;
    }

LABEL_9:
    sub_21882F73C(v25, type metadata accessor for MagazineFeedGroup);
    return 0;
  }

  if ((EnumCaseMultiPayload - 7) < 5)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 12)
  {
    v32 = v43;
    sub_218CE1DC4(v25, v43, type metadata accessor for NewspaperMagazineFeedGroup);
    v33 = *(v32 + *(v44 + 20));
    swift_unknownObjectRetain();
    v34 = type metadata accessor for NewspaperMagazineFeedGroup;
    v35 = v32;
  }

  else
  {
    v36 = v47;
    sub_218CE1DC4(v25, v47, type metadata accessor for CuratedMagazineFeedGroup);
    sub_219BED874();
    v33 = sub_219BF1844();
    (*(v48 + 8))(v11, v49);
    v34 = type metadata accessor for CuratedMagazineFeedGroup;
    v35 = v36;
  }

  sub_21882F73C(v35, v34);
  return v33;
}

uint64_t sub_218CDC7DC@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v42 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v40);
  v41 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v38);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v36);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v34);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v45, v20, type metadata accessor for MagazineFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload > 10)
    {
      if (EnumCaseMultiPayload == 11)
      {
        v26 = type metadata accessor for BestOfBundleMagazineFeedGroup;
        v8 = v39;
        sub_218CE1DC4(v20, v39, type metadata accessor for BestOfBundleMagazineFeedGroup);
        v27 = v44;
        v44[3] = v38;
        v28 = &qword_280EB12F0;
        v29 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      }

      else if (EnumCaseMultiPayload == 12)
      {
        v26 = type metadata accessor for NewspaperMagazineFeedGroup;
        v8 = v41;
        sub_218CE1DC4(v20, v41, type metadata accessor for NewspaperMagazineFeedGroup);
        v27 = v44;
        v44[3] = v40;
        v28 = &unk_280EBB090;
        v29 = type metadata accessor for NewspaperMagazineFeedGroup;
      }

      else
      {
        v26 = type metadata accessor for CuratedMagazineFeedGroup;
        v8 = v43;
        sub_218CE1DC4(v20, v43, type metadata accessor for CuratedMagazineFeedGroup);
        v27 = v44;
        v44[3] = v42;
        v28 = &unk_280EC24C8;
        v29 = type metadata accessor for CuratedMagazineFeedGroup;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 7) < 2)
      {
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload == 9)
      {
        v26 = type metadata accessor for TopicMagazineFeedGroup;
        v8 = v35;
        sub_218CE1DC4(v20, v35, type metadata accessor for TopicMagazineFeedGroup);
        v27 = v44;
        v44[3] = v34;
        v28 = &unk_27CC10E78;
        v29 = type metadata accessor for TopicMagazineFeedGroup;
      }

      else
      {
        v26 = type metadata accessor for TrendingMagazineFeedGroup;
        v8 = v37;
        sub_218CE1DC4(v20, v37, type metadata accessor for TrendingMagazineFeedGroup);
        v27 = v44;
        v44[3] = v36;
        v28 = &qword_280EBCA60;
        v29 = type metadata accessor for TrendingMagazineFeedGroup;
      }
    }

LABEL_22:
    v27[4] = sub_21877E59C(v28, v29);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    v24 = v8;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v26 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      sub_218CE1DC4(v20, v11, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v32 = v44;
      v44[3] = v9;
      v32[4] = sub_21877E59C(&qword_27CC10E88, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
      v24 = v11;
LABEL_23:
      v25 = v26;
      return sub_218CE1DC4(v24, boxed_opaque_existential_1, v25);
    }

    v26 = type metadata accessor for NewIssueMagazineFeedGroup;
    sub_218CE1DC4(v20, v8, type metadata accessor for NewIssueMagazineFeedGroup);
    v27 = v44;
    v44[3] = v6;
    v28 = &qword_27CC10E80;
    v29 = type metadata accessor for NewIssueMagazineFeedGroup;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_11:
    result = sub_21882F73C(v20, type metadata accessor for MagazineFeedGroup);
    v31 = v44;
    *v44 = 0u;
    *(v31 + 1) = 0u;
    v31[4] = 0;
    return result;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v26 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
    sub_218CE1DC4(v20, v14, type metadata accessor for FeaturedIssueMagazineFeedGroup);
    v33 = v44;
    v44[3] = v12;
    v33[4] = sub_21877E59C(&qword_27CC0FD88, type metadata accessor for FeaturedIssueMagazineFeedGroup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v24 = v14;
    goto LABEL_23;
  }

  sub_218CE1DC4(v20, v17, type metadata accessor for FeaturedArticleMagazineFeedGroup);
  v22 = v44;
  v44[3] = v15;
  v22[4] = sub_21877E59C(&qword_280EA6AB8, type metadata accessor for FeaturedArticleMagazineFeedGroup);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v24 = v17;
  v25 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
  return sub_218CE1DC4(v24, boxed_opaque_existential_1, v25);
}

uint64_t sub_218CDCFC4@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v43 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v38);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v44, v24, type metadata accessor for MagazineFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload > 10)
    {
      v26 = v45;
      if (EnumCaseMultiPayload == 11)
      {
        v33 = v24;
        v31 = v40;
        sub_218CE1DC4(v33, v40, type metadata accessor for BestOfBundleMagazineFeedGroup);
        sub_219BED874();
        v32 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      }

      else
      {
        if (EnumCaseMultiPayload != 12)
        {
          v12 = v42;
          sub_218CE1DC4(v24, v42, type metadata accessor for CuratedMagazineFeedGroup);
          sub_219BED874();
          v34 = type metadata accessor for CuratedMagazineFeedGroup;
          goto LABEL_23;
        }

        v30 = v24;
        v31 = v41;
        sub_218CE1DC4(v30, v41, type metadata accessor for NewspaperMagazineFeedGroup);
        sub_219BED874();
        v32 = type metadata accessor for NewspaperMagazineFeedGroup;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 7) < 2)
      {
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload == 9)
      {
        sub_218CE1DC4(v24, v9, type metadata accessor for TopicMagazineFeedGroup);
        v26 = v45;
        sub_219BED874();
        v27 = type metadata accessor for TopicMagazineFeedGroup;
        v28 = v9;
LABEL_24:
        sub_21882F73C(v28, v27);
        v29 = 0;
        goto LABEL_25;
      }

      v35 = v24;
      v31 = v39;
      sub_218CE1DC4(v35, v39, type metadata accessor for TrendingMagazineFeedGroup);
      v26 = v45;
      sub_219BED874();
      v32 = type metadata accessor for TrendingMagazineFeedGroup;
    }

    v27 = v32;
    v28 = v31;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_218CE1DC4(v24, v15, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v26 = v45;
      sub_219BED874();
      v27 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v28 = v15;
      goto LABEL_24;
    }

    sub_218CE1DC4(v24, v12, type metadata accessor for NewIssueMagazineFeedGroup);
    v26 = v45;
    sub_219BED874();
    v34 = type metadata accessor for NewIssueMagazineFeedGroup;
LABEL_23:
    v27 = v34;
    v28 = v12;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218CE1DC4(v24, v21, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v26 = v45;
      sub_219BED874();
      v27 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v28 = v21;
    }

    else
    {
      sub_218CE1DC4(v24, v18, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v26 = v45;
      sub_219BED874();
      v27 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      v28 = v18;
    }

    goto LABEL_24;
  }

LABEL_11:
  sub_21882F73C(v24, type metadata accessor for MagazineFeedGroup);
  v29 = 1;
  v26 = v45;
LABEL_25:
  v36 = sub_219BF1904();
  return (*(*(v36 - 8) + 56))(v26, v29, 1, v36);
}

unint64_t sub_218CDD694()
{
  v1 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v0, v3, type metadata accessor for MagazineFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_21882F73C(v3, type metadata accessor for MagazineFeedGroup);
  result = 0x69726F6765746143;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6465727574616546;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7A6167614D20794DLL;
      break;
    case 6:
      result = 0x757373492077654ELL;
      break;
    case 7:
      result = 0x6C6C6177796150;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6369706F54;
      break;
    case 10:
      result = 0x676E69646E657254;
      break;
    case 11:
      result = 0x20666F2074736542;
      break;
    case 12:
      result = 0x657061707377654ELL;
      break;
    case 13:
      result = 0x64657461727543;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_218CDD908()
{
  v69 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v69);
  v68 = &v52 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v66);
  v67 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v61);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for FeedPaywallType(0);
  MEMORY[0x28223BE20](v56);
  v58 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE4034();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PaywallMagazineFeedGroup();
  MEMORY[0x28223BE20](v54);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v53);
  v52 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v26);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for CategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v32);
  v34 = &v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v70, v34, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v34, v28, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v35 = sub_219BED774();
      v48 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_21;
    case 2u:
      sub_218CE1DC4(v34, v25, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v35 = sub_219BED774();
      v38 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_16;
    case 3u:
      sub_218CE1DC4(v34, v22, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v35 = sub_219BED774();
      v36 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v37 = v22;
      break;
    case 4u:
      sub_218CE1DC4(v34, v19, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v35 = *(v19 + 2);

      v36 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      v37 = v19;
      break;
    case 5u:
      sub_218CE1DC4(v34, v16, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v35 = *(v16 + 2);

      v36 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      v37 = v16;
      break;
    case 6u:
      v40 = v52;
      sub_218CE1DC4(v34, v52, type metadata accessor for NewIssueMagazineFeedGroup);
      v35 = sub_219BED774();
      v41 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_18;
    case 7u:
      v28 = v57;
      sub_218CE1DC4(v34, v57, type metadata accessor for PaywallMagazineFeedGroup);
      v42 = *(v54 + 36);
      v43 = &v28[v42 + *(type metadata accessor for FeedPaywallConfig() + 28)];
      v44 = v58;
      sub_218CE1F0C(v43, v58, type metadata accessor for FeedPaywallType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v46 = v62;
        v45 = v63;
        v47 = v59;
        (*(v62 + 104))(v59, *MEMORY[0x277D34EF0], v63);
      }

      else
      {
        sub_218CE1E90(0, &qword_280E8E1E0, type metadata accessor for FCFeedPaywallSubtype, MEMORY[0x277D34EF8]);
        v46 = v62;
        v50 = v44 + *(v49 + 48);
        v47 = v59;
        v45 = v63;
        (*(v62 + 32))(v59, v50, v63);
      }

      v35 = sub_219BE4014();
      (*(v46 + 8))(v47, v45);
      v48 = type metadata accessor for PaywallMagazineFeedGroup;
LABEL_21:
      v36 = v48;
      v37 = v28;
      break;
    case 8u:
      v40 = v55;
      sub_218CE1DC4(v34, v55, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v35 = *(v40 + 16);

      v41 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_18;
    case 9u:
      v40 = v60;
      sub_218CE1DC4(v34, v60, type metadata accessor for TopicMagazineFeedGroup);
      v35 = sub_219BED774();
      v41 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_18;
    case 0xAu:
      v25 = v64;
      sub_218CE1DC4(v34, v64, type metadata accessor for TrendingMagazineFeedGroup);
      v35 = sub_219BED774();
      v38 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_16;
    case 0xBu:
      v25 = v65;
      sub_218CE1DC4(v34, v65, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v35 = sub_219BED774();
      v38 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_16;
    case 0xCu:
      v25 = v67;
      sub_218CE1DC4(v34, v67, type metadata accessor for NewspaperMagazineFeedGroup);
      v39 = [*&v25[*(v66 + 20)] name];
      v35 = sub_219BF5414();

      v38 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_16:
      v36 = v38;
      v37 = v25;
      break;
    case 0xDu:
      v40 = v68;
      sub_218CE1DC4(v34, v68, type metadata accessor for CuratedMagazineFeedGroup);
      v35 = sub_219BED774();
      v41 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_18:
      v36 = v41;
      v37 = v40;
      break;
    default:
      sub_218CE1DC4(v34, v31, type metadata accessor for CategoriesMagazineFeedGroup);
      v35 = *(v31 + 2);

      v36 = type metadata accessor for CategoriesMagazineFeedGroup;
      v37 = v31;
      break;
  }

  sub_21882F73C(v37, v36);
  return v35;
}

uint64_t sub_218CDE404()
{
  v50 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v50);
  v49 = &v34 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v48);
  v47 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v44);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PaywallMagazineFeedGroup();
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v36);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v34);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v25);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v51, v27, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v27, v21, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v28 = sub_219BED7D4();
      v30 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v31 = v21;
      goto LABEL_17;
    case 2u:
      sub_218CE1DC4(v27, v18, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v28 = sub_219BED7D4();
      v30 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      v31 = v18;
      goto LABEL_17;
    case 3u:
      sub_218CE1DC4(v27, v15, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v28 = sub_219BED7D4();
      v30 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v31 = v15;
      goto LABEL_17;
    case 4u:
      sub_218CE1DC4(v27, v12, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      sub_21877E59C(&qword_280EA3558, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v28 = sub_219BEE8E4();
      v30 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      v31 = v12;
      goto LABEL_17;
    case 5u:
      v24 = v35;
      sub_218CE1DC4(v27, v35, type metadata accessor for MyMagazinesMagazineFeedGroup);
      sub_21877E59C(&qword_27CC1FF80, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v28 = sub_219BEE8E4();
      v29 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_16;
    case 6u:
      v24 = v37;
      sub_218CE1DC4(v27, v37, type metadata accessor for NewIssueMagazineFeedGroup);
      sub_21877E59C(&qword_27CC10EC0, type metadata accessor for NewIssueMagazineFeedGroup);
      v28 = sub_219BEE8E4();
      v29 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_16;
    case 7u:
      v24 = v39;
      sub_218CE1DC4(v27, v39, type metadata accessor for PaywallMagazineFeedGroup);
      sub_21877E59C(&qword_280EC0D58, type metadata accessor for PaywallMagazineFeedGroup);
      v28 = sub_219BEE8E4();
      v29 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_16;
    case 8u:
      v24 = v41;
      sub_218CE1DC4(v27, v41, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      sub_21877E59C(&qword_280E9F628, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v28 = sub_219BEE8E4();
      v29 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_16;
    case 9u:
      v24 = v43;
      sub_218CE1DC4(v27, v43, type metadata accessor for TopicMagazineFeedGroup);
      sub_21877E59C(&qword_280EC6338, type metadata accessor for TopicMagazineFeedGroup);
      v28 = sub_219BEE8E4();
      v29 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_16;
    case 0xAu:
      v24 = v45;
      sub_218CE1DC4(v27, v45, type metadata accessor for TrendingMagazineFeedGroup);
      v28 = sub_219BED7D4();
      v29 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_16;
    case 0xBu:
      v24 = v46;
      sub_218CE1DC4(v27, v46, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v28 = sub_219BED7D4();
      v29 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_16;
    case 0xCu:
      v24 = v47;
      sub_218CE1DC4(v27, v47, type metadata accessor for NewspaperMagazineFeedGroup);
      sub_21877E59C(&unk_280EBB0C0, type metadata accessor for NewspaperMagazineFeedGroup);
      v28 = sub_219BEE8E4();
      v29 = type metadata accessor for NewspaperMagazineFeedGroup;
      goto LABEL_16;
    case 0xDu:
      v32 = v49;
      sub_218CE1DC4(v27, v49, type metadata accessor for CuratedMagazineFeedGroup);
      v28 = sub_219BED7D4();
      v30 = type metadata accessor for CuratedMagazineFeedGroup;
      v31 = v32;
      goto LABEL_17;
    default:
      sub_218CE1DC4(v27, v24, type metadata accessor for CategoriesMagazineFeedGroup);
      sub_21877E59C(&qword_27CC0F1A8, type metadata accessor for CategoriesMagazineFeedGroup);
      v28 = sub_219BEE8E4();
      v29 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_16:
      v30 = v29;
      v31 = v24;
LABEL_17:
      sub_21882F73C(v31, v30);
      return v28;
  }
}

uint64_t sub_218CDEEC0()
{
  v1 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v0, v3, type metadata accessor for MagazineFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_21882F73C(v3, type metadata accessor for MagazineFeedGroup);
  return byte_219C2E126[EnumCaseMultiPayload];
}

uint64_t sub_218CDEF8C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v61 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v61);
  v60 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v56);
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v53);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PaywallMagazineFeedGroup();
  MEMORY[0x28223BE20](v51);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v47);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v46);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v24);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v27);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v63, v29, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v29, v23, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      sub_219BED7A4();
      v32 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v33 = v23;
      return sub_21882F73C(v33, v32);
    case 2u:
      sub_218CE1DC4(v29, v20, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      sub_219BED7A4();
      v34 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_17;
    case 3u:
      sub_218CE1DC4(v29, v17, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      sub_219BED7A4();
      v32 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v33 = v17;
      return sub_21882F73C(v33, v32);
    case 4u:
      sub_218CE1DC4(v29, v14, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v35 = *(v46 + 40);
      v36 = sub_219BEF554();
      (*(*(v36 - 8) + 16))(v62, &v14[v35], v36);
      v32 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      v33 = v14;
      return sub_21882F73C(v33, v32);
    case 5u:
      v20 = v48;
      sub_218CE1DC4(v29, v48, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v41 = *(v47 + 40);
      v42 = sub_219BEF554();
      (*(*(v42 - 8) + 16))(v62, &v20[v41], v42);
      v34 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_17;
    case 6u:
      v37 = v49;
      sub_218CE1DC4(v29, v49, type metadata accessor for NewIssueMagazineFeedGroup);
      sub_219BED7A4();
      v38 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_14;
    case 7u:
      v20 = v52;
      sub_218CE1DC4(v29, v52, type metadata accessor for PaywallMagazineFeedGroup);
      v39 = *(v51 + 20);
      v40 = sub_219BEF554();
      (*(*(v40 - 8) + 16))(v62, &v20[v39], v40);
      v34 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_17;
    case 8u:
      v20 = v54;
      sub_218CE1DC4(v29, v54, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v43 = *(v53 + 44);
      v44 = sub_219BEF554();
      (*(*(v44 - 8) + 16))(v62, &v20[v43], v44);
      v34 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_17;
    case 9u:
      v37 = v55;
      sub_218CE1DC4(v29, v55, type metadata accessor for TopicMagazineFeedGroup);
      sub_219BED7A4();
      v38 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_14;
    case 0xAu:
      v20 = v57;
      sub_218CE1DC4(v29, v57, type metadata accessor for TrendingMagazineFeedGroup);
      sub_219BED7A4();
      v34 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_17;
    case 0xBu:
      v20 = v58;
      sub_218CE1DC4(v29, v58, type metadata accessor for BestOfBundleMagazineFeedGroup);
      sub_219BED7A4();
      v34 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_17;
    case 0xCu:
      v20 = v59;
      sub_218CE1DC4(v29, v59, type metadata accessor for NewspaperMagazineFeedGroup);
      sub_219BED7A4();
      v34 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_17:
      v32 = v34;
      v33 = v20;
      break;
    case 0xDu:
      v37 = v60;
      sub_218CE1DC4(v29, v60, type metadata accessor for CuratedMagazineFeedGroup);
      sub_219BED7A4();
      v38 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_14:
      v32 = v38;
      v33 = v37;
      break;
    default:
      sub_218CE1DC4(v29, v26, type metadata accessor for CategoriesMagazineFeedGroup);
      v30 = *(v24 + 40);
      v31 = sub_219BEF554();
      (*(*(v31 - 8) + 16))(v62, &v26[v30], v31);
      v32 = type metadata accessor for CategoriesMagazineFeedGroup;
      v33 = v26;
      break;
  }

  return sub_21882F73C(v33, v32);
}

uint64_t sub_218CDF994@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1F0C(v2, v12, type metadata accessor for MagazineFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x1FDF) != 0)
  {
    sub_21882F73C(v12, type metadata accessor for MagazineFeedGroup);
    v14 = *MEMORY[0x277D32768];
    v15 = sub_219BEF8A4();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_218CE1DC4(v12, v6, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v17 = *(v4 + 64);
      v18 = sub_219BEF8A4();
      (*(*(v18 - 8) + 16))(a1, &v6[v17], v18);
      v19 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      v20 = v6;
    }

    else
    {
      sub_218CE1DC4(v12, v9, type metadata accessor for CuratedMagazineFeedGroup);
      v21 = *(v7 + 24);
      v22 = sub_219BEF8A4();
      (*(*(v22 - 8) + 16))(a1, &v9[v21], v22);
      v19 = type metadata accessor for CuratedMagazineFeedGroup;
      v20 = v9;
    }

    return sub_21882F73C(v20, v19);
  }
}

uint64_t sub_218CDFC60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218CDEEC0();
  *a1 = result;
  return result;
}

uint64_t sub_218CDFCB0(uint64_t a1)
{
  v2 = sub_21877E59C(&qword_280ED5E20, type metadata accessor for MagazineFeedGroup);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_218CDFD2C()
{
  sub_21877E59C(&qword_280ED5E30, type metadata accessor for MagazineFeedGroup);

  return sub_219BF1174();
}

uint64_t sub_218CDFDB4(uint64_t a1)
{
  v2 = sub_21877E59C(&qword_280ED5E30, type metadata accessor for MagazineFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218CDFE2C()
{
  sub_21877E59C(&qword_280ED5DF8, type metadata accessor for MagazineFeedGroup);

  return sub_219BE2324();
}

uint64_t sub_218CDFEA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v69);
  v66 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v64);
  v65 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v62);
  v63 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v60);
  v61 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v59);
  v68 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v57);
  v58 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v55);
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v53);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v51);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v49);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1E2C(0, &qword_280E8CF68, MEMORY[0x277D844C8]);
  v17 = v16;
  v67 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  v20 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_218CE1D70();
  v24 = v71;
  sub_219BF7B34();
  if (v24)
  {
LABEL_15:
    v44 = v72;
  }

  else
  {
    v47 = v13;
    v48 = v15;
    v25 = v68;
    v26 = v67;
    v71 = v22;
    v27 = v70;
    v84 = 0;
    sub_218CD679C();
    sub_219BF7734();
    v28 = v17;
    v29 = v19;
    v30 = v28;
    switch(v85)
    {
      case 2:
        v74 = 1;
        sub_21877E59C(&qword_280EA6AC0, type metadata accessor for FeaturedArticleMagazineFeedGroup);
        v38 = v50;
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v38, v71, type metadata accessor for FeaturedArticleMagazineFeedGroup);
        break;
      case 3:
        v75 = 1;
        sub_21877E59C(&qword_27CC0FD78, type metadata accessor for FeaturedIssueMagazineFeedGroup);
        v35 = v52;
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v35, v71, type metadata accessor for FeaturedIssueMagazineFeedGroup);
        break;
      case 4:
        v76 = 1;
        sub_21877E59C(&qword_280E99A48, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
        v40 = v54;
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v40, v71, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
        break;
      case 5:
        v78 = 1;
        sub_21877E59C(&qword_27CC10E98, type metadata accessor for MyMagazinesMagazineFeedGroup);
        v42 = v58;
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v42, v71, type metadata accessor for MyMagazinesMagazineFeedGroup);
        break;
      case 6:
        v77 = 1;
        sub_21877E59C(&qword_27CC10EA0, type metadata accessor for NewIssueMagazineFeedGroup);
        v39 = v56;
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v39, v71, type metadata accessor for NewIssueMagazineFeedGroup);
        break;
      case 8:
        v79 = 1;
        sub_21877E59C(&qword_280E9F608, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v25, v71, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
        break;
      case 9:
        v83 = 1;
        sub_21877E59C(&qword_27CC10E90, type metadata accessor for TopicMagazineFeedGroup);
        v37 = v66;
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v37, v71, type metadata accessor for TopicMagazineFeedGroup);
        break;
      case 10:
        v80 = 1;
        sub_21877E59C(&qword_280EBCA68, type metadata accessor for TrendingMagazineFeedGroup);
        v43 = v61;
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v43, v71, type metadata accessor for TrendingMagazineFeedGroup);
        break;
      case 11:
        v73 = 1;
        sub_21877E59C(&qword_280EB12F8, type metadata accessor for BestOfBundleMagazineFeedGroup);
        v33 = v48;
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v33, v71, type metadata accessor for BestOfBundleMagazineFeedGroup);
        break;
      case 12:
        v82 = 1;
        sub_21877E59C(&qword_280EBB098, type metadata accessor for NewspaperMagazineFeedGroup);
        v36 = v65;
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v36, v71, type metadata accessor for NewspaperMagazineFeedGroup);
        break;
      case 13:
        v81 = 1;
        sub_21877E59C(&qword_280EC24D0, type metadata accessor for CuratedMagazineFeedGroup);
        v41 = v63;
        sub_219BF7734();
        (*(v26 + 8))(v19, v30);
        v34 = v71;
        sub_218CE1DC4(v41, v71, type metadata accessor for CuratedMagazineFeedGroup);
        break;
      default:
        v31 = sub_219BEE394();
        sub_21877E59C(&qword_27CC0B9E0, MEMORY[0x277D31FD8]);
        swift_allocError();
        (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D31FD0], v31);
        swift_willThrow();
        (*(v26 + 8))(v29, v30);
        goto LABEL_15;
    }

    v46 = v72;
    swift_storeEnumTagMultiPayload();
    sub_218CE1DC4(v34, v27, type metadata accessor for MagazineFeedGroup);
    v44 = v46;
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_218CE0CDC(void *a1)
{
  v52 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v52);
  v61 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v51);
  v60 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v50);
  v59 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v49);
  v58 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v48);
  v57 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v47);
  v56 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v46);
  v55 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v45);
  v54 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v44);
  v53 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v43);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE1E2C(0, &qword_280E8C648, MEMORY[0x277D84538]);
  v20 = *(v19 - 8);
  v64 = v19;
  v65 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CE1D70();
  v63 = v22;
  sub_219BF7B44();
  sub_218CE1F0C(v66, v18, type metadata accessor for MagazineFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218CE1DC4(v18, v12, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v68 = 2;
      v67 = 0;
      sub_218CD67F4();
      v33 = v63;
      v34 = v64;
      v35 = v62;
      sub_219BF7834();
      if (!v35)
      {
        v68 = 1;
        sub_21877E59C(&qword_280EA6AD0, type metadata accessor for FeaturedArticleMagazineFeedGroup);
        sub_219BF7834();
      }

      sub_21882F73C(v12, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      return (*(v65 + 8))(v33, v34);
    case 2u:
      v15 = v53;
      sub_218CE1DC4(v18, v53, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v68 = 3;
      v67 = 0;
      sub_218CD67F4();
      v27 = v63;
      v26 = v64;
      v30 = v62;
      sub_219BF7834();
      if (!v30)
      {
        v68 = 1;
        sub_21877E59C(&qword_27CC0FD80, type metadata accessor for FeaturedIssueMagazineFeedGroup);
        sub_219BF7834();
      }

      v29 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_36;
    case 3u:
      v15 = v54;
      sub_218CE1DC4(v18, v54, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v68 = 4;
      v67 = 0;
      sub_218CD67F4();
      v27 = v63;
      v26 = v64;
      v37 = v62;
      sub_219BF7834();
      if (!v37)
      {
        v68 = 1;
        sub_21877E59C(&qword_280E99A58, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
        sub_219BF7834();
      }

      v29 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_36;
    case 5u:
      v15 = v56;
      sub_218CE1DC4(v18, v56, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v68 = 5;
      v67 = 0;
      sub_218CD67F4();
      v27 = v63;
      v26 = v64;
      v39 = v62;
      sub_219BF7834();
      if (!v39)
      {
        v68 = 1;
        sub_21877E59C(&qword_27CC10EB0, type metadata accessor for MyMagazinesMagazineFeedGroup);
        sub_219BF7834();
      }

      v29 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_36;
    case 6u:
      v15 = v55;
      sub_218CE1DC4(v18, v55, type metadata accessor for NewIssueMagazineFeedGroup);
      v68 = 6;
      v67 = 0;
      sub_218CD67F4();
      v27 = v63;
      v26 = v64;
      v36 = v62;
      sub_219BF7834();
      if (!v36)
      {
        v68 = 1;
        sub_21877E59C(&qword_27CC10EB8, type metadata accessor for NewIssueMagazineFeedGroup);
        sub_219BF7834();
      }

      v29 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_36;
    case 8u:
      v15 = v57;
      sub_218CE1DC4(v18, v57, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v68 = 8;
      v67 = 0;
      sub_218CD67F4();
      v27 = v63;
      v26 = v64;
      v41 = v62;
      sub_219BF7834();
      if (!v41)
      {
        v68 = 1;
        sub_21877E59C(&qword_280E9F618, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
        sub_219BF7834();
      }

      v29 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_36;
    case 9u:
      v15 = v61;
      sub_218CE1DC4(v18, v61, type metadata accessor for TopicMagazineFeedGroup);
      v68 = 9;
      v67 = 0;
      sub_218CD67F4();
      v27 = v63;
      v26 = v64;
      v32 = v62;
      sub_219BF7834();
      if (!v32)
      {
        v68 = 1;
        sub_21877E59C(&qword_27CC10EA8, type metadata accessor for TopicMagazineFeedGroup);
        sub_219BF7834();
      }

      v29 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_36;
    case 0xAu:
      v15 = v58;
      sub_218CE1DC4(v18, v58, type metadata accessor for TrendingMagazineFeedGroup);
      v68 = 10;
      v67 = 0;
      sub_218CD67F4();
      v27 = v63;
      v26 = v64;
      v40 = v62;
      sub_219BF7834();
      if (!v40)
      {
        v68 = 1;
        sub_21877E59C(&qword_280EBCA78, type metadata accessor for TrendingMagazineFeedGroup);
        sub_219BF7834();
      }

      v29 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_36;
    case 0xBu:
      sub_218CE1DC4(v18, v15, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v68 = 11;
      v67 = 0;
      sub_218CD67F4();
      v27 = v63;
      v26 = v64;
      v28 = v62;
      sub_219BF7834();
      if (!v28)
      {
        v68 = 1;
        sub_21877E59C(&qword_280EB1308, type metadata accessor for BestOfBundleMagazineFeedGroup);
        sub_219BF7834();
      }

      v29 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_36;
    case 0xCu:
      v15 = v60;
      sub_218CE1DC4(v18, v60, type metadata accessor for NewspaperMagazineFeedGroup);
      v68 = 12;
      v67 = 0;
      sub_218CD67F4();
      v27 = v63;
      v26 = v64;
      v31 = v62;
      sub_219BF7834();
      if (!v31)
      {
        v68 = 1;
        sub_21877E59C(&qword_280EBB0B0, type metadata accessor for NewspaperMagazineFeedGroup);
        sub_219BF7834();
      }

      v29 = type metadata accessor for NewspaperMagazineFeedGroup;
      goto LABEL_36;
    case 0xDu:
      v15 = v59;
      sub_218CE1DC4(v18, v59, type metadata accessor for CuratedMagazineFeedGroup);
      v68 = 13;
      v67 = 0;
      sub_218CD67F4();
      v27 = v63;
      v26 = v64;
      v38 = v62;
      sub_219BF7834();
      if (!v38)
      {
        v68 = 1;
        sub_21877E59C(&qword_280EC24E0, type metadata accessor for CuratedMagazineFeedGroup);
        sub_219BF7834();
      }

      v29 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_36:
      sub_21882F73C(v15, v29);
      result = (*(v65 + 8))(v27, v26);
      break;
    default:
      sub_21882F73C(v18, type metadata accessor for MagazineFeedGroup);
      v23 = sub_219BEE394();
      sub_21877E59C(&qword_27CC0B9E0, MEMORY[0x277D31FD8]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D31FD0], v23);
      swift_willThrow();
      result = (*(v65 + 8))(v63, v64);
      break;
  }

  return result;
}

uint64_t sub_218CE1C04@<X0>(char *a1@<X8>)
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

uint64_t sub_218CE1C64@<X0>(char *a1@<X8>)
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

uint64_t sub_218CE1CC8(uint64_t a1)
{
  v2 = sub_218CE1D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CE1D04(uint64_t a1)
{
  v2 = sub_218CE1D70();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218CE1D70()
{
  result = qword_280ED5E48[0];
  if (!qword_280ED5E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED5E48);
  }

  return result;
}

uint64_t sub_218CE1DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218CE1E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CE1D70();
    v7 = a3(a1, &type metadata for MagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_218CE1E90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

uint64_t sub_218CE1F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218CE1F88()
{
  result = qword_27CC10EC8;
  if (!qword_27CC10EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10EC8);
  }

  return result;
}

unint64_t sub_218CE1FE0()
{
  result = qword_280ED5E38;
  if (!qword_280ED5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED5E38);
  }

  return result;
}

unint64_t sub_218CE2038()
{
  result = qword_280ED5E40;
  if (!qword_280ED5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED5E40);
  }

  return result;
}

uint64_t sub_218CE208C(__int128 *a1)
{
  sub_218CE4728(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v3 = sub_219BE2644();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C0B8C0;
  v8 = (v7 + v6);
  *v8 = 0x7974697669746361;
  *(v8 + 1) = 0xE800000000000000;
  v9 = *(v4 + 104);
  (v9)(v8, *MEMORY[0x277D6CC90], v3);
  v10 = &v8[v5];
  *v10 = 0x656372756F73;
  *(v10 + 1) = 0xE600000000000000;
  v9();
  strcpy(&v8[2 * v5], "notificationID");
  v8[2 * v5 + 15] = -18;
  v9();
  sub_219897824(MEMORY[0x277D84F90]);
  v11 = sub_219BE2674();

  *(v1 + 56) = v11;
  sub_2186CB1F0(a1, v1 + 16);
  return v1;
}

uint64_t sub_218CE2294(void (*a1)(char *, uint64_t, uint64_t))
{
  sub_218CE4728(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = &v74 - v3;
  v95 = sub_219BE5134();
  v91 = *(v95 - 8);
  v4 = MEMORY[0x28223BE20](v95);
  v87 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v82 = &v74 - v7;
  v86 = v8;
  MEMORY[0x28223BE20](v6);
  v89 = &v74 - v9;
  v93 = sub_219BDB954();
  v90 = *(v93 - 8);
  v10 = MEMORY[0x28223BE20](v93);
  v85 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v83 = &v74 - v13;
  v84 = v14;
  MEMORY[0x28223BE20](v12);
  v94 = &v74 - v15;
  v16 = sub_219BE22B4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE22F4();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - v25;
  sub_218CE4728(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v81 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v27 = *(v21 + 8);
  v27(v26, v20);
  v28 = sub_219BE22C4();
  v30 = v29;
  result = (*(v17 + 8))(v19, v16);
  if (v30)
  {
    v80 = v28;
    sub_219BE2594();
    v32 = v94;
    sub_219BE22A4();
    v27(v24, v20);
    v33 = v89;
    sub_218CE2B88(v32, v89);
    if (qword_27CC08640 != -1)
    {
      swift_once();
    }

    v34 = sub_219BE5434();
    __swift_project_value_buffer(v34, qword_27CCD8BD0);
    v35 = v91;
    v36 = v82;
    v81 = *(v91 + 16);
    v81(v82, v33, v95);
    v37 = v83;
    v38 = v93;
    v79 = *(v90 + 16);
    v79(v83, v32, v93);

    v39 = v33;
    v40 = sub_219BE5414();
    v41 = sub_219BF6214();

    v75 = v41;
    v42 = os_log_type_enabled(v40, v41);
    v76 = v30;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v96[0] = v74;
      *v43 = 136446722;
      *(v43 + 4) = sub_2186D1058(v80, v30, v96);
      v44 = v39;
      *(v43 + 12) = 2082;
      v45 = sub_219BE5124();
      v46 = v35;
      v48 = v47;
      v49 = *(v46 + 8);
      v78 = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v82 = v49;
      (v49)(v36, v95);
      v50 = sub_2186D1058(v45, v48, v96);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      v51 = v44;
      sub_218CE46E0(&qword_27CC15940, 255, MEMORY[0x277CC9260]);
      v52 = sub_219BF7894();
      v54 = v53;
      v55 = v90;
      v56 = *(v90 + 8);
      v77 = (v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v83 = v56;
      (v56)(v37, v93);
      v57 = sub_2186D1058(v52, v54, v96);

      *(v43 + 24) = v57;
      _os_log_impl(&dword_2186C1000, v40, v75, "Start live activity: %{public}s, source=%{public}s from %{public}s", v43, 0x20u);
      v58 = v74;
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v58, -1, -1);
      v59 = v43;
      v38 = v93;
      MEMORY[0x21CECF960](v59, -1, -1);

      v60 = v55;
    }

    else
    {

      v61 = v90;
      v62 = *(v90 + 8);
      v77 = (v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v83 = v62;
      (v62)(v37, v38);
      v63 = *(v35 + 8);
      v78 = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v82 = v63;
      (v63)(v36, v95);
      v60 = v61;
      v51 = v39;
    }

    v64 = sub_219BF5BF4();
    (*(*(v64 - 8) + 56))(v92, 1, 1, v64);
    v65 = v87;
    v66 = v95;
    v81(v87, v51, v95);
    v67 = v85;
    v79(v85, v94, v38);
    v68 = v91;
    v69 = (*(v91 + 80) + 56) & ~*(v91 + 80);
    v70 = v38;
    v71 = (v86 + *(v60 + 80) + v69) & ~*(v60 + 80);
    v72 = swift_allocObject();
    *(v72 + 2) = 0;
    *(v72 + 3) = 0;
    v73 = v80;
    *(v72 + 4) = v88;
    *(v72 + 5) = v73;
    *(v72 + 6) = v76;
    (*(v68 + 32))(&v72[v69], v65, v66);
    (*(v60 + 32))(&v72[v71], v67, v70);

    sub_218AB3D80(0, 0, v92, &unk_219C2E1D8, v72);

    (v82)(v89, v66);
    return (v83)(v94, v70);
  }

  return result;
}

uint64_t sub_218CE2B88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_218CE4728(0, &qword_27CC10ED0, MEMORY[0x277D34810], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  sub_218CE2E64(a1, &v20 - v14);
  sub_218CE3640(a1, v13);
  sub_218CE478C(v15, v10);
  v16 = sub_219BE5134();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v10, 1, v16) == 1)
  {
    sub_218CE478C(v13, v7);
    if (v18(v7, 1, v16) == 1)
    {
      (*(v17 + 104))(a2, *MEMORY[0x277D347F8], v16);
      if (v18(v7, 1, v16) != 1)
      {
        sub_218CE4820(v7, &qword_27CC10ED0, MEMORY[0x277D34810]);
      }
    }

    else
    {
      (*(v17 + 32))(a2, v7, v16);
    }

    result = (v18)(v10, 1, v16);
    if (result != 1)
    {
      return sub_218CE4820(v10, &qword_27CC10ED0, MEMORY[0x277D34810]);
    }
  }

  else
  {
    sub_218CE4820(v13, &qword_27CC10ED0, MEMORY[0x277D34810]);
    return (*(v17 + 32))(a2, v10, v16);
  }

  return result;
}