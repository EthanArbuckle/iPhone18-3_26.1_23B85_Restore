unint64_t sub_21959DD0C()
{
  result = qword_280EE8EB8;
  if (!qword_280EE8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8EB8);
  }

  return result;
}

unint64_t sub_21959DDA0()
{
  result = qword_280E8EBD0;
  if (!qword_280E8EBD0)
  {
    sub_2187E7248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EBD0);
  }

  return result;
}

uint64_t sub_21959DDF8(void *a1)
{
  sub_21959E0DC(0, &qword_280E8CEF0, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_21959E034();
  sub_219BF7B34();
  if (!v1)
  {
    sub_2186E2394();
    v10[7] = 0;
    sub_218B9F868(&qword_280E8E9B8);
    sub_219BF7734();
    v8 = v11;
    v10[5] = 1;
    sub_21959E088();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_21959E034()
{
  result = qword_280ECF248;
  if (!qword_280ECF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF248);
  }

  return result;
}

unint64_t sub_21959E088()
{
  result = qword_280EDE220;
  if (!qword_280EDE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDE220);
  }

  return result;
}

void sub_21959E0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21959E034();
    v7 = a3(a1, &type metadata for ChannelHeroSelection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21959E140()
{
  result = qword_280EDE238[0];
  if (!qword_280EDE238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EDE238);
  }

  return result;
}

unint64_t sub_21959E1A8()
{
  result = qword_27CC1C480;
  if (!qword_27CC1C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C480);
  }

  return result;
}

unint64_t sub_21959E200()
{
  result = qword_280ECF228;
  if (!qword_280ECF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF228);
  }

  return result;
}

unint64_t sub_21959E258()
{
  result = qword_280ECF230[0];
  if (!qword_280ECF230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECF230);
  }

  return result;
}

uint64_t dispatch thunk of FoodServiceType.fetchRecipeItems(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187609C8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FoodServiceType.fetchLocalHeadlines(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21959E508;

  return v9(a1, a2, a3);
}

uint64_t sub_21959E508(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21959E604(uint64_t a1, uint64_t a2)
{
  *(v3 + 1528) = v2;
  *(v3 + 1480) = a1;
  v5 = sub_219BEF9C4();
  *(v3 + 1576) = v5;
  *(v3 + 1624) = *(v5 - 8);
  *(v3 + 1672) = swift_task_alloc();
  v6 = sub_219BED334();
  *(v3 + 1680) = v6;
  *(v3 + 1688) = *(v6 - 8);
  *(v3 + 1696) = swift_task_alloc();
  *(v3 + 1704) = swift_task_alloc();
  v7 = sub_219BED324();
  *(v3 + 1712) = v7;
  *(v3 + 1720) = *(v7 - 8);
  *(v3 + 1728) = swift_task_alloc();
  *(v3 + 1736) = *a2;
  *(v3 + 1752) = *(a2 + 24);

  return MEMORY[0x2822009F8](sub_21959E7A4, 0, 0);
}

uint64_t sub_21959E7A4()
{
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1728);
  v4 = *(v0 + 1720);
  v5 = *(v0 + 1712);
  v6 = *(v0 + 1688);
  v19 = *(v0 + 1680);
  v20 = *(v0 + 1704);
  v7 = *(v0 + 1528);
  *(v0 + 1760) = CACurrentMediaTime();
  sub_2186F20D4();
  *(v0 + 1768) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2186FC3BC();
  *(v0 + 1776) = v10;
  *(v9 + 64) = v10;
  *(v9 + 32) = v2;
  *(v9 + 40) = v1;

  sub_219BF6214();
  sub_219BE5314();

  *(v0 + 1784) = CACurrentMediaTime();
  v11 = v7[25];
  v12 = v7[26];
  __swift_project_boxed_opaque_existential_1(v7 + 22, v11);
  (*(v4 + 104))(v3, *MEMORY[0x277D303F8], v5);
  v13 = *MEMORY[0x277D30410];
  v14 = *(v6 + 104);
  *(v0 + 1792) = v14;
  *(v0 + 1800) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v20, v13, v19);
  v15 = swift_task_alloc();
  *(v0 + 1808) = v15;
  *v15 = v0;
  v15[1] = sub_21959E994;
  v16 = *(v0 + 1728);
  v17 = *(v0 + 1704);

  return MEMORY[0x28218EAE8](v16, v17, 5000, v11, v12);
}

uint64_t sub_21959E994(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[227] = a1;
  v4[228] = v1;

  v5 = v3[216];
  v6 = v3[215];
  v7 = v3[214];
  v8 = v3[213];
  v9 = v3[211];
  v10 = v3[210];
  v13 = *(v9 + 8);
  v11 = v9 + 8;
  v12 = v13;
  if (v1)
  {
    v12(v8, v10);
    (*(v6 + 8))(v5, v7);
    v14 = sub_21959F990;
  }

  else
  {
    v4[229] = v12;
    v4[230] = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v10);
    (*(v6 + 8))(v5, v7);
    v14 = sub_21959EBA0;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_21959EBA0()
{
  v1 = *(v0 + 1816);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C0B8C0;
  if (v1 >> 62)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 1848) = v3;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = MEMORY[0x277D83B88];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  v5 = sub_219BF5CD4();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_12:
    __break(1u);
    return MEMORY[0x282200930](v5, v6, v7, v8);
  }

  v10 = *(v0 + 1776);
  v11 = *(v0 + 1744);
  v12 = *(v0 + 1736);
  v13 = MEMORY[0x277D84D90];
  *(v2 + 96) = MEMORY[0x277D84D38];
  *(v2 + 104) = v13;
  *(v2 + 72) = v9;
  v14 = MEMORY[0x277D837D0];
  *(v2 + 136) = MEMORY[0x277D837D0];
  *(v2 + 144) = v10;
  *(v2 + 112) = v12;
  *(v2 + 120) = v11;

  sub_219BF6214();
  sub_219BE5314();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  *(v15 + 56) = v14;
  *(v15 + 64) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = v11;

  sub_219BF6214();
  sub_219BE5314();

  *(v0 + 1856) = CACurrentMediaTime();

  sub_2186D0BA8();
  *(v0 + 1864) = v16;
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  v7 = sub_21959EE30;
  v5 = v0 + 16;
  v6 = v0 + 1336;
  v8 = v0 + 1296;

  return MEMORY[0x282200930](v5, v6, v7, v8);
}

uint64_t sub_21959EE30()
{
  v1[234] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 173, sub_21959FA20, v1 + 168);
  }

  else
  {
    v1[235] = v1[167];

    return MEMORY[0x282200930](v1 + 82, v1 + 173, sub_21959EEEC, v1 + 180);
  }
}

uint64_t sub_21959EEEC()
{
  *(v1 + 1888) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 1384, sub_21959FB14, v1 + 1488);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21959EFA4, 0, 0);
  }
}

uint64_t sub_21959EFA4()
{
  v79 = v1;
  v7 = v1[173];
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C0EE20;
  v77 = v7;

  sub_219BF5CD4();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v9 <= -1.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = v1[235];
  v11 = v1[233];
  v76 = v1[236];
  v12 = v1[222];
  v69 = v1[231];
  v13 = v1[218];
  v14 = v1[217];
  v15 = v1[203];
  v70 = v1[209];
  v73 = v1[197];
  v16 = v1[191];
  v17 = MEMORY[0x277D84D38];
  v18 = MEMORY[0x277D84D90];
  *(v8 + 32) = v9;
  v19 = MEMORY[0x277D837D0];
  *(v8 + 56) = v17;
  *(v8 + 64) = v18;
  *(v8 + 96) = v19;
  *(v8 + 104) = v12;
  *(v8 + 72) = v14;
  *(v8 + 80) = v13;
  *(v8 + 136) = v11;
  v20 = sub_2195A27E8(&qword_280E8EDC0, sub_2186D0BA8);
  *(v8 + 112) = v10;
  *(v8 + 176) = v11;
  *(v8 + 184) = v20;
  *(v8 + 144) = v20;
  *(v8 + 152) = v77;

  sub_219BF6214();
  sub_219BE5314();

  CACurrentMediaTime();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09EC0;
  v22 = MEMORY[0x277D83C10];
  *(v21 + 56) = MEMORY[0x277D83B88];
  *(v21 + 64) = v22;
  *(v21 + 32) = v69;
  *(v21 + 96) = MEMORY[0x277D837D0];
  *(v21 + 104) = v12;
  *(v21 + 72) = v14;
  *(v21 + 80) = v13;

  sub_219BF6214();
  sub_219BE5314();

  __swift_project_boxed_opaque_existential_1((v16 + 296), *(v16 + 320));
  (*(v15 + 104))(v70, *MEMORY[0x277D32840], v73);
  sub_218C6FA54();
  v23 = sub_219BF0024();
  v24 = (v15 + 8);
  v25 = v1[231];
  if (v76)
  {
    (*v24)(v1[209], v1[197]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C0EE20;
    *(v26 + 56) = MEMORY[0x277D83B88];
    *(v26 + 64) = v22;
    *(v26 + 32) = v25;
    v27 = sub_219BF5CD4();
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v31 <= -1.0)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v31 >= 1.84467441e19)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v32 = v1[235];
    v74 = v1[229];
    v33 = v1[224];
    v34 = v1[222];
    v71 = v1[227];
    v35 = v1[218];
    v36 = v1[217];
    v37 = v1[212];
    v38 = v1[210];
    *(v26 + 96) = MEMORY[0x277D84D38];
    *(v26 + 104) = MEMORY[0x277D84D90];
    *(v26 + 72) = v31;
    v39 = MEMORY[0x277D837D0];
    *(v26 + 136) = MEMORY[0x277D837D0];
    *(v26 + 144) = v34;
    *(v26 + 112) = v36;
    *(v26 + 120) = v35;
    v1[179] = v76;

    v40 = v76;
    sub_2186CFDE4(0, &qword_280E8B580);
    v41 = sub_219BF5484();
    *(v26 + 176) = v39;
    *(v26 + 184) = v34;
    *(v26 + 152) = v41;
    *(v26 + 160) = v42;
    sub_219BF6214();
    sub_219BE5314();

    *v37 = v32;
    v43 = *MEMORY[0x277D30400];
    v33(v37, v43, v38);
    v7 = sub_2195A036C(v37, v71);
    v74(v37, v38);
    *v37 = v77;
    v33(v37, v43, v38);
    v4 = sub_2195A036C(v37, v71);
    v74(v37, v38);
    v6 = v76 | 0x8000000000000000;
    v44 = v1[227];

    v77 = v7;
    v0 = v4;
    v2 = v44;
  }

  else
  {
    v2 = v23;
    v45 = v1[209];
    v46 = v1[197];

    (*v24)(v45, v46);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_219C0B8C0;
    *(v47 + 56) = MEMORY[0x277D83B88];
    *(v47 + 64) = v22;
    *(v47 + 32) = v25;
    v27 = sub_219BF5CD4();
    if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v48 <= -1.0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v48 >= 1.84467441e19)
    {
LABEL_39:
      __break(1u);
      return MEMORY[0x282200920](v27, v28, v29, v30);
    }

    v49 = v1[235];
    v72 = v1[229];
    v50 = v1[224];
    v51 = v1[222];
    v52 = v1[218];
    v53 = v1[217];
    v54 = v1[212];
    v55 = v1[210];
    v75 = v1[191];
    *(v47 + 96) = MEMORY[0x277D84D38];
    *(v47 + 104) = MEMORY[0x277D84D90];
    *(v47 + 72) = v48;
    *(v47 + 136) = MEMORY[0x277D837D0];
    *(v47 + 144) = v51;
    *(v47 + 112) = v53;
    *(v47 + 120) = v52;

    sub_219BF6214();
    sub_219BE5314();

    *v54 = v49;
    v56 = *MEMORY[0x277D30400];
    v50(v54, v56, v55);
    v57 = sub_21959FDB8(v54, v2);
    v72(v54, v55);
    *v54 = v77;
    v50(v54, v56, v55);
    v58 = sub_21959FDB8(v54, v2);
    v72(v54, v55);
    v0 = v58;
    __swift_project_boxed_opaque_existential_1((v75 + 336), *(v75 + 360));
    v59 = (sub_219BE4EC4() ^ 1) & 1;
    sub_2189B6874();
    sub_218F97E88(v2, v57, v0, v78);

    v77 = v57;
    v6 = v59;

    v44 = v78[0];
    v7 = v78[1];
    v4 = v78[2];
  }

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C0D560;
  v3 = MEMORY[0x277D83B88];
  v5 = MEMORY[0x277D83C10];
  if (!(v44 >> 62))
  {
    v60 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_28:
  v60 = sub_219BF7214();
LABEL_15:
  *(v8 + 56) = v3;
  *(v8 + 64) = v5;
  *(v8 + 32) = v60;
  if (v7 >> 62)
  {
    v61 = sub_219BF7214();
  }

  else
  {
    v61 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v8 + 96) = v3;
  *(v8 + 104) = v5;
  *(v8 + 72) = v61;
  if (v4 >> 62)
  {
    v62 = sub_219BF7214();
  }

  else
  {
    v62 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v8 + 136) = v3;
  *(v8 + 144) = v5;
  *(v8 + 112) = v62;
  v27 = sub_219BF5CD4();
  if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v63 <= -1.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v63 >= 1.84467441e19)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v64 = v1[222];
  v65 = v1[218];
  v66 = v1[217];
  v67 = v1[185];
  *(v8 + 176) = MEMORY[0x277D84D38];
  *(v8 + 184) = MEMORY[0x277D84D90];
  *(v8 + 152) = v63;
  *(v8 + 216) = MEMORY[0x277D837D0];
  *(v8 + 224) = v64;
  *(v8 + 192) = v66;
  *(v8 + 200) = v65;

  sub_219BF6214();
  sub_219BE5314();

  *v67 = v2;
  v67[1] = v77;
  v67[2] = v0;
  v67[3] = v6;
  v29 = sub_21959F898;
  v27 = (v1 + 82);
  v28 = v1 + 173;
  v30 = v1 + 198;

  return MEMORY[0x282200920](v27, v28, v29, v30);
}

uint64_t sub_21959F8F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21959F990()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21959FA78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21959FB6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21959FC08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21959FC28, 0, 0);
}

uint64_t sub_21959FC28()
{
  v1 = *(v0 + 24);
  v2 = v1[30];
  v3 = v1[31];
  __swift_project_boxed_opaque_existential_1(v1 + 27, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2193CE838;

  return MEMORY[0x28218EAE0](v2, v3);
}

uint64_t sub_21959FCE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21959FD00, 0, 0);
}

uint64_t sub_21959FD00()
{
  v1 = *(v0 + 24);
  v2 = v1[35];
  v3 = v1[36];
  __swift_project_boxed_opaque_existential_1(v1 + 32, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2193CDA88;

  return MEMORY[0x28218EAE0](v2, v3);
}

uint64_t sub_21959FDB8(uint64_t a1, uint64_t a2)
{
  sub_218C3EE8C();
  v5 = v4;
  v50 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BED334();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277D30408])
  {
    (*(v15 + 96))(v17, v14);
    v19 = (*(v11 + 32))(v13, v17, v10);
    MEMORY[0x28223BE20](v19);
    *(&v42 - 2) = v13;

    a2 = sub_2195E61E0(sub_2195A27C8, (&v42 - 4), a2);
    (*(v11 + 8))(v13, v10);
  }

  else if (v18 == *MEMORY[0x277D30400])
  {
    (*(v15 + 96))(v17, v14);
    v20 = sub_218845F78(*v17);

    v49 = *(a2 + 16);
    if (v49)
    {
      v21 = 0;
      v22 = *(v50 + 16);
      v43 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v47 = a2 + v43;
      v48 = v22;
      v23 = *(v50 + 72);
      v50 += 16;
      v51 = v23;
      v24 = v20 + 56;
      v44 = (v50 + 16);
      v46 = (v50 - 8);
      a2 = MEMORY[0x277D84F90];
      v22(v9, v47, v5);
      while (1)
      {
        v25 = sub_219BEE2C4();
        v26 = [v25 surfacedBy];

        v27 = sub_219BF5414();
        v29 = v28;

        if (*(v20 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v30 = sub_219BF7AE4(), v31 = -1 << *(v20 + 32), v32 = v30 & ~v31, ((*(v24 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
        {
          v33 = ~v31;
          while (1)
          {
            v34 = (*(v20 + 48) + 16 * v32);
            v35 = *v34 == v27 && v34[1] == v29;
            if (v35 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v32 = (v32 + 1) & v33;
            if (((*(v24 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v36 = *v44;
          (*v44)(v45, v9, v5);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = a2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_218C34408(0, *(a2 + 16) + 1, 1);
            a2 = v52;
          }

          v39 = *(a2 + 16);
          v38 = *(a2 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_218C34408(v38 > 1, v39 + 1, 1);
            a2 = v52;
          }

          *(a2 + 16) = v39 + 1;
          v36((a2 + v43 + v39 * v51), v45, v5);
        }

        else
        {
LABEL_6:

          (*v46)(v9, v5);
        }

        if (++v21 == v49)
        {
          break;
        }

        v48(v9, v47 + v51 * v21, v5);
      }
    }

    else
    {
      a2 = MEMORY[0x277D84F90];
    }
  }

  else if (v18 == *MEMORY[0x277D30410])
  {
  }

  else
  {
    v40 = *(v15 + 8);

    v40(v17, v14);
  }

  return a2;
}

unint64_t sub_2195A036C(uint64_t a1, unint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED334();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277D30408])
  {
    (*(v9 + 96))(v11, v8);
    v13 = (*(v5 + 32))(v7, v11, v4);
    MEMORY[0x28223BE20](v13);
    *(&v33 - 2) = v7;

    a2 = sub_2195EB2AC(sub_2195A2830, (&v33 - 4), a2);
    (*(v5 + 8))(v7, v4);
  }

  else if (v12 == *MEMORY[0x277D30400])
  {
    (*(v9 + 96))(v11, v8);
    v14 = sub_218845F78(*v11);

    v36 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v16 = 0;
      v34 = a2 & 0xFFFFFFFFFFFFFF8;
      v35 = a2 & 0xC000000000000001;
      v33 = a2;
      v17 = a2 + 32;
      v18 = v14 + 56;
      while (1)
      {
        if (v35)
        {
          v19 = MEMORY[0x21CECE0F0](v16, v33);
        }

        else
        {
          if (v16 >= *(v34 + 16))
          {
            goto LABEL_30;
          }

          v19 = *(v17 + 8 * v16);
        }

        v20 = v19;
        if (__OFADD__(v16++, 1))
        {
          break;
        }

        v22 = [v19 surfacedBy];
        a2 = sub_219BF5414();
        v24 = v23;

        if (*(v14 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v25 = sub_219BF7AE4(), v26 = -1 << *(v14 + 32), v27 = v25 & ~v26, ((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
        {
          v28 = ~v26;
          while (1)
          {
            v29 = (*(v14 + 48) + 16 * v27);
            v30 = *v29 == a2 && v29[1] == v24;
            if (v30 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v27 = (v27 + 1) & v28;
            if (((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
LABEL_7:
        }

        if (v16 == i)
        {
          a2 = v36;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    a2 = MEMORY[0x277D84F90];
LABEL_33:
  }

  else if (v12 == *MEMORY[0x277D30410])
  {
  }

  else
  {
    v31 = *(v9 + 8);

    v31(v11, v8);
  }

  return a2;
}

uint64_t sub_2195A07FC(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  *(v2 + 80) = *(a1 + 1);
  *(v2 + 96) = a1[4];
  *(v2 + 104) = *(a1 + 5);
  return MEMORY[0x2822009F8](sub_2195A083C, 0, 0);
}

uint64_t sub_2195A083C()
{
  __swift_project_boxed_opaque_existential_1((v0[7] + 64), *(v0[7] + 88));
  v1 = off_282A6E858;
  type metadata accessor for LocalNewsChannelService();
  v0[15] = v1();
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_2195A0920;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_2195A0920()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2195A201C;
  }

  else
  {

    v2 = sub_2195A0A3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195A0A3C()
{
  v68 = v0;
  v62 = v0 + 16;
  v66 = *(v0 + 16);
  v67 = MEMORY[0x277D84F90];
  if (v66 >> 62)
  {
    goto LABEL_52;
  }

  v64 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v64)
  {
    v1 = 0;
    v2 = v63[7];
    v3 = v66 & 0xC000000000000001;
    v4 = v66 & 0xFFFFFFFFFFFFFF8;
    v5 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    while (1)
    {
      if (v3)
      {
        v6 = MEMORY[0x21CECE0F0](v1, v66);
        v7 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v19 = v67;
          goto LABEL_19;
        }
      }

      else
      {
        if (v1 >= *(v4 + 16))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          v64 = sub_219BF7214();
          goto LABEL_3;
        }

        v6 = *(v66 + 8 * v1 + 32);
        swift_unknownObjectRetain();
        v7 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_16;
        }
      }

      v8 = *(v2 + 160);
      v9 = [v6 identifier];
      if (!v9)
      {
        sub_219BF5414();
        v9 = sub_219BF53D4();
      }

      v10 = [v8 v5[323]];

      if (v10)
      {
        sub_2186F20D4();
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_219C09BA0;
        v12 = v7;
        v13 = [v6 identifier];
        v14 = v4;
        v15 = v3;
        v16 = sub_219BF5414();
        v18 = v17;

        v7 = v12;
        *(v11 + 56) = MEMORY[0x277D837D0];
        *(v11 + 64) = sub_2186FC3BC();
        *(v11 + 32) = v16;
        *(v11 + 40) = v18;
        v3 = v15;
        v4 = v14;
        v5 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
        sub_219BF6214();
        sub_219BE5314();

        swift_unknownObjectRelease();
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++v1;
      if (v7 == v64)
      {
        goto LABEL_17;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_19:

  if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_59;
    }

    *(v62 + 8) = MEMORY[0x277D84FA0];
    v65 = sub_219BF7214();
    if (v65)
    {
      goto LABEL_23;
    }

    v21 = MEMORY[0x277D84F98];
LABEL_56:
    v63[18] = v21;

    sub_2186F20D4();
    v63[19] = v45;
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_219C09BA0;
    v47 = v21[2];
    if (v47)
    {
      v48 = sub_21947D1C0(v21[2], 0);
      v49 = sub_2194B7E3C(&v67, v48 + 4, v47, v21);

      sub_21892DE98();
      if (v49 != v47)
      {
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v52 = MEMORY[0x277D837D0];
    v53 = MEMORY[0x21CECC6D0](v48, MEMORY[0x277D837D0]);
    v55 = v54;

    *(v46 + 56) = v52;
    *(v46 + 64) = sub_2186FC3BC();
    *(v46 + 32) = v53;
    *(v46 + 40) = v55;
    sub_219BF6214();
    sub_219BE5314();

    v56 = v63[3];
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = sub_21947D1C0(*(v56 + 16), 0);
      v59 = sub_2194ABD64(&v67, v58 + 4, v57, v56);
      sub_21892DE98();
      if (v59 == v57)
      {
LABEL_67:
        v60 = off_282A4D758;
        type metadata accessor for TagService();
        v63[20] = v60();

        v61 = swift_task_alloc();
        v63[21] = v61;
        *v61 = v63;
        v61[1] = sub_2195A1208;

        return MEMORY[0x2821D23D8](v62 + 16);
      }

      __break(1u);
    }

    goto LABEL_67;
  }

  v65 = v19[2];
  if (!v65)
  {
LABEL_59:

    v50 = v63[1];
    v51 = MEMORY[0x277D84F90];

    return v50(v51);
  }

  *(v62 + 8) = MEMORY[0x277D84FA0];
LABEL_23:
  v20 = 0;
  v21 = MEMORY[0x277D84F98];
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x21CECE0F0](v20, v19);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v20 >= v19[2])
      {
        goto LABEL_51;
      }

      v22 = v19[v20 + 4];
      swift_unknownObjectRetain();
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_48;
      }
    }

    v66 = v23;
    v24 = [v22 identifier];
    v25 = sub_219BF5414();
    v27 = v26;

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v21;
    v30 = sub_21870F700(v25, v27);
    v31 = v21[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_49;
    }

    v34 = v29;
    if (v21[3] < v33)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v29 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      sub_219494E08();
      if ((v34 & 1) == 0)
      {
LABEL_40:
        v21 = v67;
        v67[(v30 >> 6) + 8] |= 1 << v30;
        v37 = (v21[6] + 16 * v30);
        *v37 = v25;
        v37[1] = v27;
        *(v21[7] + 8 * v30) = v22;
        v38 = v21[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_50;
        }

        v21[2] = v40;
        goto LABEL_42;
      }
    }

LABEL_38:

    v21 = v67;
    *(v67[7] + 8 * v30) = v22;
    swift_unknownObjectRelease();
LABEL_42:
    v41 = [v22 sectionIDs];
    if (v41)
    {
      v42 = v41;
      v43 = sub_219BF5924();

      sub_218DDBE70(v43);
    }

    swift_unknownObjectRelease();
    ++v20;
    if (v66 == v65)
    {
      goto LABEL_56;
    }
  }

  sub_219485410(v33, isUniquelyReferenced_nonNull_native);
  v35 = sub_21870F700(v25, v27);
  if ((v34 & 1) == (v36 & 1))
  {
    v30 = v35;
    if ((v34 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  return sub_219BF79A4();
}

uint64_t sub_2195A1208()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2195A2080;
  }

  else
  {
    v2 = sub_2195A1338;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195A1338()
{
  v43 = v0;
  v1 = v0[4];
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F98];
  v0[23] = MEMORY[0x277D84F98];
  if (!v2)
  {
    goto LABEL_30;
  }

  v4 = 0;
LABEL_5:
  v5 = v4;
  while ((v1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x21CECE0F0](v5, v1);
    v4 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_48;
    }

LABEL_11:
    v7 = [*(v6 + 16) asSection];
    if (v7)
    {
      v8 = v7;
      if ([v7 isFoodSection])
      {
        v9 = [v8 identifier];
        v40 = sub_219BF5414();
        v11 = v10;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v3;
        v39 = v11;
        v13 = sub_21870F700(v40, v11);
        v15 = v3[2];
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          __break(1u);
          goto LABEL_57;
        }

        v19 = v14;
        if (v3[3] >= v18)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = v13;
            sub_219494E24();
            v13 = v22;
            if (v19)
            {
              goto LABEL_23;
            }

LABEL_25:
            v3 = v42;
            v42[(v13 >> 6) + 8] |= 1 << v13;
            v23 = (v3[6] + 16 * v13);
            *v23 = v40;
            v23[1] = v39;
            *(v3[7] + 8 * v13) = v8;
            swift_unknownObjectRelease();

            v24 = v3[2];
            v17 = __OFADD__(v24, 1);
            v25 = v24 + 1;
            if (!v17)
            {
              v3[2] = v25;
LABEL_27:
              v0 = v41;
              v41[23] = v3;
              if (v4 != v2)
              {
                goto LABEL_5;
              }

LABEL_30:

              v26 = swift_allocObject();
              *(v26 + 16) = xmmword_219C09BA0;
              v27 = v3[2];
              v28 = MEMORY[0x277D83C10];
              *(v26 + 56) = MEMORY[0x277D83B88];
              *(v26 + 64) = v28;
              *(v26 + 32) = v27;
              sub_219BF6214();
              sub_219BE5314();

              v29 = v3[2];
              if (!v29)
              {

                v34 = v0[1];
                v35 = MEMORY[0x277D84F90];

                return v34(v35);
              }

              __swift_project_boxed_opaque_existential_1((v0[7] + 24), *(v0[7] + 48));
              v30 = sub_2194B7E58(v29, 0);
              v31 = sub_2194B7E40(&v42, v30 + 32, v29, v3);

              sub_21892DE98();
              if (v31 == v29)
              {
                if ((v30 & 0x8000000000000000) == 0 && (v30 & 0x4000000000000000) == 0)
                {

                  sub_219BF7924();
                  sub_2186D8870();
                  v32 = v41;
                  if (!swift_dynamicCastMetatype())
                  {
                    v37 = *(v30 + 16);
                    if (v37)
                    {
                      v38 = 32;
                      do
                      {
                        v41[6] = &unk_282B5B328;
                        if (!swift_dynamicCastObjCProtocolConditional())
                        {
                          break;
                        }

                        v38 += 8;
                        --v37;
                      }

                      while (v37);
                    }
                  }

LABEL_36:
                  v32[24] = sub_219BF2784();

                  v33 = swift_task_alloc();
                  v32[25] = v33;
                  *v33 = v32;
                  v33[1] = sub_2195A18D8;
                  v13 = (v32 + 5);

                  return MEMORY[0x2821D23D8](v13);
                }
              }

              else
              {
                __break(1u);
              }

              sub_2186D8870();

              sub_219BF7534();

              v32 = v41;
              goto LABEL_36;
            }

LABEL_57:
            __break(1u);
            return MEMORY[0x2821D23D8](v13);
          }
        }

        else
        {
          sub_21948542C(v18, isUniquelyReferenced_nonNull_native);
          v13 = sub_21870F700(v40, v39);
          if ((v19 & 1) != (v20 & 1))
          {
            goto LABEL_50;
          }
        }

        if (v19)
        {
LABEL_23:
          v21 = v13;

          v3 = v42;
          *(v42[7] + 8 * v21) = v8;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_27;
        }

        goto LABEL_25;
      }

      swift_unknownObjectRelease();
    }

    ++v5;
    if (v4 == v2)
    {
      v0 = v41;
      goto LABEL_30;
    }
  }

  if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

  v6 = *(v1 + 8 * v5 + 32);

  v4 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_11;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:

  return sub_219BF79A4();
}

uint64_t sub_2195A18D8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_2195A20E4;
  }

  else
  {
    v2 = sub_2195A1A1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_2195A1A1C()
{
  v69 = v0;
  v64 = v0[23];
  v62 = v0[18];
  v1 = v0[5];
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = MEMORY[0x277D83B88];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  sub_219BF6214();
  sub_219BE5314();

  v6 = 0;
  v67 = MEMORY[0x277D84FA0];
  v7 = v1 + 64;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v1 + 64);
  v11 = (63 - v8) >> 6;
  v65 = MEMORY[0x277D84F90];
  while (v10)
  {
    v12 = v10;
LABEL_14:
    v10 = (v12 - 1) & v12;
    if (*(v0[23] + 16))
    {
      v14 = __clz(__rbit64(v12)) | (v6 << 6);
      v15 = *(*(v1 + 56) + 8 * v14);
      v16 = (*(v1 + 48) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];

      v19 = sub_21870F700(v18, v17);
      LOBYTE(v18) = v20;

      if (v18)
      {
        v66 = v15;
        v21 = *(*(v64 + 56) + 8 * v19);
        v22 = [swift_unknownObjectRetain() parentID];
        if (!v22)
        {
          goto LABEL_6;
        }

        v63 = v1;
        v23 = v0[18];
        v24 = v22;
        v25 = sub_219BF5414();
        v27 = v26;

        if (!*(v23 + 16))
        {

          v1 = v63;
LABEL_6:
          swift_unknownObjectRelease();
          goto LABEL_7;
        }

        v28 = sub_21870F700(v25, v27);
        v30 = v29;

        v1 = v63;
        if ((v30 & 1) == 0)
        {
          goto LABEL_6;
        }

        v31 = *(*(v62 + 56) + 8 * v28);
        if (v66 >> 62)
        {
          v32 = sub_219BF7214();
          if (v32)
          {
            goto LABEL_21;
          }

          goto LABEL_6;
        }

        v32 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v32)
        {
          goto LABEL_6;
        }

LABEL_21:
        v33 = v66;
        v57 = v32;
        result = swift_unknownObjectRetain();
        v58 = v31;
        v59 = v21;
        v34 = 0;
        do
        {
          if ((v66 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x21CECE0F0](v34, v33);
            v35 = __OFADD__(v34, 1);
            v36 = v34 + 1;
            if (v35)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v34 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            result = swift_unknownObjectRetain();
            v35 = __OFADD__(v34, 1);
            v36 = v34 + 1;
            if (v35)
            {
              goto LABEL_51;
            }
          }

          v60 = v36;
          v61 = result;
          v37 = [result identifier];
          v38 = sub_219BF5414();
          v40 = v39;

          if (*(v67 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v41 = sub_219BF7AE4(), v42 = -1 << *(v67 + 32), v43 = v41 & ~v42, ((*(v67 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0))
          {
            v44 = ~v42;
            while (1)
            {
              v45 = (*(v67 + 48) + 16 * v43);
              v46 = *v45 == v38 && v45[1] == v40;
              if (v46 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v43 = (v43 + 1) & v44;
              if (((*(v67 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            swift_unknownObjectRelease();

            v1 = v63;
            v33 = v66;
          }

          else
          {
LABEL_39:

            v47 = [v61 identifier];
            v48 = sub_219BF5414();
            v50 = v49;

            sub_219497B60(&v68, v48, v50);

            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_2191FA5D8(0, *(v65 + 2) + 1, 1, v65);
            }

            v1 = v63;
            v52 = *(v65 + 2);
            v51 = *(v65 + 3);
            if (v52 >= v51 >> 1)
            {
              v65 = sub_2191FA5D8((v51 > 1), v52 + 1, 1, v65);
            }

            result = swift_unknownObjectRelease();
            *(v65 + 2) = v52 + 1;
            v53 = &v65[24 * v52];
            *(v53 + 4) = v58;
            *(v53 + 5) = v59;
            *(v53 + 6) = v61;
            v33 = v66;
          }

          v34 = v60;
        }

        while (v60 != v57);

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
      }

      else
      {
LABEL_7:
      }
    }
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_219C09BA0;
      v55 = *(v65 + 2);
      *(v54 + 56) = MEMORY[0x277D83B88];
      *(v54 + 64) = MEMORY[0x277D83C10];
      *(v54 + 32) = v55;
      sub_219BF6214();
      sub_219BE5314();

      v56 = v0[1];

      return v56(v65);
    }

    v12 = *(v7 + 8 * v13);
    ++v6;
    if (v12)
    {
      v6 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_2195A201C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2195A2080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2195A20E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2195A2148()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);
  __swift_destroy_boxed_opaque_existential_1(v0 + 336);
  return v0;
}

uint64_t sub_2195A21C0()
{
  sub_2195A2148();

  return swift_deallocClassInstance();
}

uint64_t sub_2195A21F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_21959E604(a1, a2);
}

uint64_t sub_2195A22A0(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2191A1F80;

  return sub_2195A07FC(a1);
}

uint64_t sub_2195A2338()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_218C3EE8C();
  v7 = sub_219BEE2C4();
  v8 = [v7 publishDate];

  if (v8)
  {
    sub_219BDBCA4();

    (*(v1 + 32))(v6, v4, v0);
    sub_2195A27E8(&qword_280EE9C90, MEMORY[0x277CC9578]);
    v9 = sub_219BF5334();
    (*(v1 + 8))(v6, v0);
    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2195A24F0(id *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = [*a1 publishDate];
  if (v9)
  {
    v10 = v9;
    sub_219BDBCA4();

    (*(v3 + 32))(v8, v6, v2);
    sub_2195A27E8(&qword_280EE9C90, MEMORY[0x277CC9578]);
    v11 = sub_219BF5334();
    (*(v3 + 8))(v8, v2);
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_2195A2690(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_21959FC08(a1, v1);
}

uint64_t sub_2195A272C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_21959FCE0(a1, v1);
}

uint64_t sub_2195A27E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2195A2864()
{
  if (!qword_280E91FC8)
  {
    sub_21915A520();
    sub_21915A574();
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91FC8);
    }
  }
}

uint64_t type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter()
{
  result = qword_280E963C8;
  if (!qword_280E963C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195A292C()
{
  sub_2195A2864();
  if (v0 <= 0x3F)
  {
    type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280EA3480);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280EB84C0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2195A2A08()
{
  v1 = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter();
  sub_2195A3BF8(v0 + *(v4 + 20), v3, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  v22 = 1;
  sub_2186F911C(0, &qword_280E919C0, MEMORY[0x277D321A0]);
  v6 = v5;
  v7 = sub_219BEE964();
  (*(*(v6 - 8) + 8))(v3, v6);
  v8 = MEMORY[0x277D84560];
  sub_2195A3C60(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v20 = xmmword_219C09BA0;
  *(v13 + 16) = xmmword_219C09BA0;
  sub_2195A3C60(0, &qword_280E8B8A0, MEMORY[0x277D32F00], v8);
  v14 = sub_219BF0644();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x277D32EF8], v14);
  v18 = sub_2194B3180(v17);
  swift_setDeallocating();
  (*(v15 + 8))(v17 + v16, v14);
  swift_deallocClassInstance();
  *(v13 + v12) = v18;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277D322C8], v10);
  v21 = v7;
  sub_2191EE154(v13);
  return v21;
}

uint64_t sub_2195A2D3C(uint64_t a1)
{
  v2 = type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 24)), *(a1 + *(v2 + 24) + 24));
  v3 = off_282A6EDF8[0];
  type metadata accessor for MagazineCategoryConfigService();
  return v3();
}

uint64_t sub_2195A2DB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v34 = a2;
  sub_218C5FB88();
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for InlineCategoriesMagazineFeedGroup() - 8;
  MEMORY[0x28223BE20](v36);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a2 + *(v13 + 28)), *(a2 + *(v13 + 28) + 24));
  v46 = sub_21922CCB8(v12);
  v45 = sub_2195A31C4();
  sub_2195A2864();
  v14 = sub_219BEDCA4();
  v43 = v15;
  v44 = v14;
  sub_219BEDD14();
  v58[0] = v54;
  v58[1] = v55;
  v58[2] = v56;
  v59[0] = v57[0];
  *(v59 + 10) = *(v57 + 10);
  v41 = v55;
  v42 = *(&v54 + 1);

  sub_21915A74C(v58);
  sub_219BEDD14();
  v60[2] = v52;
  v61[0] = v53[0];
  *(v61 + 10) = *(v53 + 10);
  v60[0] = v50;
  v60[1] = v51;
  v39 = v52;
  v40 = *(&v51 + 1);

  sub_21915A74C(v60);
  v16 = sub_219BEDCB4();
  v37 = v17;
  v38 = v16;
  sub_219BEDCC4();
  v35 = *(v13 + 20);
  sub_2195A3BF8(a2 + v35, v9, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  sub_2186F911C(0, &qword_280E919C0, MEMORY[0x277D321A0]);
  v19 = v18;
  sub_219BEE9B4();
  v21 = v20;
  v22 = *(*(v19 - 8) + 8);
  v22(v9, v19);
  sub_2195A3BF8(v34 + v35, v9, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  sub_219BEE984();
  v24 = v23;
  v22(v9, v19);
  v25 = v43;
  *v11 = v44;
  v11[1] = v25;
  v26 = v41;
  v11[2] = v42;
  v11[3] = v26;
  v28 = v39;
  v27 = v40;
  v11[4] = v45;
  v11[5] = v27;
  v29 = v46;
  v11[6] = v28;
  v11[7] = v29;
  v30 = v37;
  v11[8] = v38;
  v11[9] = v30;
  v31 = v36;
  *(v11 + *(v36 + 52)) = v21;
  *(v11 + *(v31 + 56)) = v24;
  sub_2195A3BF8(v11, v48, type metadata accessor for InlineCategoriesMagazineFeedGroup);
  type metadata accessor for MagazineFeedGroup();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_2195A3C60(0, &qword_280EE6C48, sub_218C5FB88, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v32 = sub_219BE3014();
  sub_2195A3CC4(v11, type metadata accessor for InlineCategoriesMagazineFeedGroup);
  return v32;
}

id sub_2195A31C4()
{
  sub_2195A2864();
  sub_219BEDD14();
  v18[2] = v16;
  v19[0] = v17[0];
  *(v19 + 10) = *(v17 + 10);
  v18[0] = v14;
  v18[1] = v15;

  sub_21915A74C(v18);
  if (*&v17[0])
  {
    sub_219BEDD14();
    v12[2] = v10;
    *v13 = *v11;
    *&v13[10] = *&v11[10];
    v12[0] = v8;
    v12[1] = v9;

    sub_21915A74C(v12);
    if ((*&v11[10] >> 48))
    {
      v0 = sub_219BF53D4();

      v1 = objc_opt_self();
      v2 = [v1 colorWithHexString_];

      v3 = sub_219BF53D4();

      v4 = [v1 colorWithHexString_];

      v5 = sub_219BF6C94();
      if (v5)
      {
        return v5;
      }
    }

    else
    {
    }
  }

  v7 = [objc_opt_self() labelColor];

  return v7;
}

uint64_t sub_2195A3398()
{
  sub_2195A3C60(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2195A3414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v3;
  sub_2195A3C60(0, &qword_280E8F130, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_2195A3BF8(v3, v7, type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_2195A3AFC(v7, v10 + v8);
  *(v10 + v9) = a1;

  v11 = sub_219BE2E54();
  sub_218C5FB88();
  v12 = sub_219BE2F64();

  return v12;
}

uint64_t sub_2195A35D4@<X0>(uint64_t *a1@<X8>)
{
  sub_2195A2864();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x4000000000000000;
  return result;
}

uint64_t sub_2195A364C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
  a2[4] = sub_2195A39C0(&qword_280E98430, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  a2[5] = sub_2195A39C0(&qword_280E98438, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2195A3BF8(v2 + v4, boxed_opaque_existential_1, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
}

uint64_t sub_2195A3714()
{
  sub_2195A2864();

  return sub_219BEDCA4();
}

uint64_t sub_2195A3740@<X0>(uint64_t *a1@<X8>)
{
  sub_2195A3C60(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2195A2864();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2195A3CC4(inited + 32, sub_2188317B0);
  sub_2195A3D24(0);
  a1[3] = v5;
  a1[4] = sub_2195A39C0(&qword_280EE7608, sub_2195A3D24);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2195A38C4()
{
  sub_2195A39C0(&qword_280E963E0, type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2195A39C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2195A3AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195A3B60(uint64_t *a1)
{
  v3 = *(type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2195A2DB8(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2195A3BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2195A3C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195A3CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2195A3E24()
{
  sub_218A35FA8();
  swift_allocObject();
  sub_2194C2D8C();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  return sub_219BE6E64();
}

uint64_t sub_2195A3EBC(uint64_t a1)
{
  v2 = type metadata accessor for ChannelPickerEngagementBlueprintModifier();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_2195A405C(a1, &v10 - v6, sub_2195A4004);
  sub_2195A405C(v7, v5, type metadata accessor for ChannelPickerEngagementBlueprintModifier);
  sub_218A35FA8();
  swift_allocObject();
  sub_2195A40C4(&qword_27CC12CD8, type metadata accessor for ChannelPickerEngagementBlueprintModifier);
  v8 = sub_219BE6E64();
  sub_2195A410C(v7);
  return v8;
}

void sub_2195A4004()
{
  if (!qword_27CC12CB0)
  {
    type metadata accessor for ChannelPickerEngagementModel();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12CB0);
    }
  }
}

uint64_t sub_2195A405C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195A40C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2195A410C(uint64_t a1)
{
  v2 = type metadata accessor for ChannelPickerEngagementBlueprintModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2195A41A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a7;
  v11 = type metadata accessor for AudioFeedTrack(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  if ((*(a1 + 24) & 0x10) == 0)
  {
    v14 = *a1;
    sub_218C15198();
    v30 = objc_opt_self();
    v15 = sub_219BF53D4();
    sub_219BDED94();
    v16 = sub_219BDED64();
    v17 = swift_allocObject();
    v17[2] = a4;
    v17[3] = a5;
    v17[4] = v14;
    v17[5] = a6;
    v17[6] = v31;
    v36 = sub_2195A585C;
    v37 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21990CDA0;
    v35 = &block_descriptor_18_3;
    v18 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v36 = sub_21876836C;
    v37 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_219991994;
    v35 = &block_descriptor_21_2;
    v19 = _Block_copy(&aBlock);
    v20 = [v30 _actionWithTitle_image_style_handler_shouldDismissHandler_];
    _Block_release(v19);
    _Block_release(v18);

    if (v20)
    {

      return;
    }

    __break(1u);
    goto LABEL_7;
  }

  v30 = objc_opt_self();
  v21 = sub_219BF53D4();
  sub_219BDED94();
  v22 = sub_219BDED64();
  sub_218C1620C(a1, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_218C162E4(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v25 = (v24 + ((v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v31;
  *v25 = a6;
  v25[1] = v26;
  v36 = sub_2195A5860;
  v37 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_21990CDA0;
  v35 = &block_descriptor_27_1;
  v27 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  v36 = sub_21876836C;
  v37 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_219991994;
  v35 = &block_descriptor_30_4;
  v28 = _Block_copy(&aBlock);
  v29 = [v30 _actionWithTitle_image_style_handler_shouldDismissHandler_];
  _Block_release(v28);
  _Block_release(v27);

  if (!v29)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_2195A45DC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a2;
  v29 = a4;
  sub_218C16360(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v23 - v7;
  v27 = sub_219BF1324();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1C74();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2A04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28(0);
  sub_219BEAC54();
  v34 = *v29;
  (*(v13 + 104))(v15, *MEMORY[0x277D33A68], v12);
  v21 = v26;
  (*(v9 + 104))(v11, *MEMORY[0x277D33570], v23);
  (*(v24 + 104))(v25, *MEMORY[0x277D33288], v27);
  v32 = 0u;
  v33 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_getObjectType();
  (*(v18 + 16))(v21, v20, v17);
  (*(v18 + 56))(v21, 0, 1, v17);
  sub_219BE7094();

  sub_218C163C4(v21);
  return (*(v18 + 8))(v20, v17);
}

id sub_2195A49F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for AudioFeedTrack(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v25 = objc_opt_self();
  v15 = sub_219BF53D4();
  sub_219BDED94();
  v16 = sub_219BDED84();
  sub_218C1620C(a5, &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  sub_218C162E4(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = (v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a6;
  v19[1] = a7;
  v30 = sub_2195A5370;
  v31 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_21990CDA0;
  v29 = &block_descriptor_9_2;
  v20 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  v30 = sub_21876836C;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_219991994;
  v29 = &block_descriptor_12_4;
  v21 = _Block_copy(&aBlock);
  v22 = [v25 _actionWithTitle_image_style_handler_shouldDismissHandler_];
  _Block_release(v21);
  _Block_release(v20);

  return v22;
}

id sub_2195A4C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for AudioFeedTrack(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v25 = objc_opt_self();
  v15 = sub_219BF53D4();
  sub_219BDED94();
  v16 = sub_219BDED74();
  sub_218C1620C(a5, &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  sub_218C162E4(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = (v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a6;
  v19[1] = a7;
  v30 = sub_2195A5358;
  v31 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_21990CDA0;
  v29 = &block_descriptor_141;
  v20 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  v30 = sub_21876836C;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_219991994;
  v29 = &block_descriptor_3_0;
  v21 = _Block_copy(&aBlock);
  v22 = [v25 _actionWithTitle_image_style_handler_shouldDismissHandler_];
  _Block_release(v21);
  _Block_release(v20);

  return v22;
}

uint64_t sub_2195A4F30(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  v35 = a8;
  v36 = a6;
  v32 = a7;
  v33 = a4;
  v34 = a5;
  v31 = a2;
  sub_218C16360(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v26 - v9;
  v30 = sub_219BF1324();
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF1C74();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF2A04();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31(v32);
  v39 = *v33;
  (*(v16 + 104))(v18, *MEMORY[0x277D33A68], v15);
  (*(v12 + 104))(v14, *MEMORY[0x277D33570], v27);
  v24 = v29;
  v37 = 0u;
  v38 = 0u;
  (*(v10 + 104))(v28, *MEMORY[0x277D33290], v30);
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_getObjectType();
  v35();
  (*(v21 + 16))(v24, v23, v20);
  (*(v21 + 56))(v24, 0, 1, v20);
  sub_219BE7094();

  sub_218C163C4(v24);
  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_2195A5388(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v6, v7, v2 + v5, v9, v10);
}

uint64_t sub_2195A5440(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v30 = a4;
  v28 = a2;
  sub_218C16360(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = &v24 - v7;
  v27 = sub_219BF1324();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF1C74();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2A04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28(0);
  v35 = v30;
  (*(v14 + 104))(v16, *MEMORY[0x277D33A68], v13);
  (*(v10 + 104))(v12, *MEMORY[0x277D33570], v25);
  (*(v8 + 104))(v26, *MEMORY[0x277D33288], v27);
  v22 = v29;
  v33 = 0u;
  v34 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_getObjectType();
  sub_219BEACD4();
  (*(v19 + 16))(v22, v21, v18);
  (*(v19 + 56))(v22, 0, 1, v18);
  sub_219BE7094();

  sub_218C163C4(v22);
  return (*(v19 + 8))(v21, v18);
}

void sub_2195A5878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  v24 = ObjCClassFromMetadata;
  v11 = [v23 bundleForClass_];
  sub_219BDB5E4();

  v12 = objc_opt_self();
  v13 = sub_219BF53D4();
  sub_219BDED94();
  v14 = sub_219BDED64();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v30 = sub_2195A5C68;
  v31 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_21990CDA0;
  v29 = &block_descriptor_37_1;
  v16 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v30 = sub_21876836C;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v17 = v12;
  v28 = sub_219991994;
  v29 = &block_descriptor_40_1;
  v18 = _Block_copy(&aBlock);
  v19 = [v12 _actionWithTitle_image_style_handler_shouldDismissHandler_];
  _Block_release(v18);
  _Block_release(v16);

  if (v19)
  {

    [v25 addAction_];

    v20 = [v23 bundleForClass_];
    sub_219BDB5E4();

    v21 = sub_219BF53D4();

    v22 = [v17 actionWithTitle:v21 style:1 handler:{0, 0x8000000219D09CE0}];

    [v25 addAction_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2195A5C88@<X0>(uint64_t a1@<X8>)
{
  v138 = a1;
  v1 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v137 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v136 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v135 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v134 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v133 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v132 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v131 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v130 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v129 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v128 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v127 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v126 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v125 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v124 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v123);
  v122 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v121 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v120 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v119 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v36 - 8);
  v118 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v117);
  v116 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v39 - 8);
  v115 = &v97 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v114 = &v97 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v43 - 8);
  v113 = &v97 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v45 - 8);
  v112 = &v97 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v47 - 8);
  v111 = &v97 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v49 - 8);
  v110 = &v97 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v51 - 8);
  v109 = &v97 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v53 - 8);
  v108 = &v97 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v107);
  v106 = &v97 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v56 - 8);
  v105 = &v97 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v104);
  v103 = &v97 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v59 - 8);
  v102 = &v97 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v101);
  v100 = &v97 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v62 - 8);
  v99 = &v97 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v98);
  v97 = &v97 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v65 - 8);
  v67 = &v97 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v68);
  v70 = &v97 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v71 - 8);
  v73 = &v97 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v74 - 8);
  v76 = &v97 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v77 - 8);
  v79 = &v97 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v80 - 8);
  v82 = &v97 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v83 - 8);
  v85 = &v97 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v86);
  v88 = &v97 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v139, v88);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2195C36B4(v88, v82, type metadata accessor for PromotedArticleListTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v92 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v93 = v82;
      goto LABEL_45;
    case 2u:
    case 6u:
    case 7u:
    case 0x29u:
      sub_2195C359C(v88, type metadata accessor for TagFeedGroup);
      v89 = 1;
      v90 = v138;
      goto LABEL_46;
    case 3u:
      sub_2195C36B4(v88, v79, type metadata accessor for ChannelSectionTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v92 = type metadata accessor for ChannelSectionTagFeedGroup;
      v93 = v79;
      goto LABEL_45;
    case 4u:
      sub_2195C36B4(v88, v76, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v94 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      goto LABEL_48;
    case 5u:
      sub_2195C36B4(v88, v70, type metadata accessor for WeatherTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v92 = type metadata accessor for WeatherTagFeedGroup;
      v93 = v70;
      goto LABEL_45;
    case 8u:
      sub_2195C36B4(v88, v73, type metadata accessor for CuratedTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v92 = type metadata accessor for CuratedTagFeedGroup;
      v93 = v73;
      goto LABEL_45;
    case 9u:
      sub_2195C36B4(v88, v67, type metadata accessor for SportsRecordTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v92 = type metadata accessor for SportsRecordTagFeedGroup;
      v93 = v67;
      goto LABEL_45;
    case 0xAu:
      v76 = v97;
      sub_2195C36B4(v88, v97, type metadata accessor for SportsNavigationTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v94 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_48;
    case 0xBu:
      v85 = v99;
      sub_2195C36B4(v88, v99, type metadata accessor for SportsScheduleTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_44;
    case 0xCu:
      v76 = v100;
      sub_2195C36B4(v88, v100, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v94 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_48;
    case 0xDu:
      v85 = v102;
      sub_2195C36B4(v88, v102, type metadata accessor for SportsFavoritesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_44;
    case 0xEu:
      v76 = v103;
      sub_2195C36B4(v88, v103, type metadata accessor for SportsScoresTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v94 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_48;
    case 0xFu:
      v85 = v105;
      sub_2195C36B4(v88, v105, type metadata accessor for SportsLinksTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_44;
    case 0x10u:
      v76 = v106;
      sub_2195C36B4(v88, v106, type metadata accessor for MySportsTopicTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v94 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_48;
    case 0x11u:
      v85 = v108;
      sub_2195C36B4(v88, v108, type metadata accessor for SportsStandingsTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_44;
    case 0x12u:
      v85 = v109;
      sub_2195C36B4(v88, v109, type metadata accessor for SportsBracketTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_44;
    case 0x13u:
      v85 = v110;
      sub_2195C36B4(v88, v110, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_44;
    case 0x14u:
      v85 = v111;
      sub_2195C36B4(v88, v111, type metadata accessor for SportsEventInfoTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_44;
    case 0x15u:
      v85 = v112;
      sub_2195C36B4(v88, v112, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_44;
    case 0x16u:
      v85 = v113;
      sub_2195C36B4(v88, v113, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_44;
    case 0x17u:
      v85 = v114;
      sub_2195C36B4(v88, v114, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_44;
    case 0x18u:
      v85 = v115;
      sub_2195C36B4(v88, v115, type metadata accessor for HighlightsTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_44;
    case 0x19u:
      v76 = v116;
      sub_2195C36B4(v88, v116, type metadata accessor for ForYouTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v94 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_48;
    case 0x1Au:
      v85 = v118;
      sub_2195C36B4(v88, v118, type metadata accessor for ChannelRecipesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_44;
    case 0x1Bu:
      v85 = v119;
      sub_2195C36B4(v88, v119, type metadata accessor for ForYouRecipesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_44;
    case 0x1Cu:
      v85 = v120;
      sub_2195C36B4(v88, v120, type metadata accessor for RecentStoriesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_44;
    case 0x1Du:
      v85 = v121;
      sub_2195C36B4(v88, v121, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_44;
    case 0x1Eu:
      v76 = v122;
      sub_2195C36B4(v88, v122, type metadata accessor for DateRangeTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v94 = type metadata accessor for DateRangeTagFeedGroup;
LABEL_48:
      v92 = v94;
      v93 = v76;
      goto LABEL_45;
    case 0x1Fu:
      v85 = v124;
      sub_2195C36B4(v88, v124, type metadata accessor for SportsOnboardingTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_44;
    case 0x20u:
      v85 = v125;
      sub_2195C36B4(v88, v125, type metadata accessor for SportsMastheadTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_44;
    case 0x21u:
      v85 = v126;
      sub_2195C36B4(v88, v126, type metadata accessor for SportsEventTopicTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_44;
    case 0x22u:
      v85 = v127;
      sub_2195C36B4(v88, v127, type metadata accessor for PuzzleListTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_44;
    case 0x23u:
      v85 = v128;
      sub_2195C36B4(v88, v128, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_44;
    case 0x24u:
      v85 = v129;
      sub_2195C36B4(v88, v129, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_44;
    case 0x25u:
      v85 = v130;
      sub_2195C36B4(v88, v130, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_44;
    case 0x26u:
      v85 = v131;
      sub_2195C36B4(v88, v131, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_44;
    case 0x27u:
      v85 = v132;
      sub_2195C36B4(v88, v132, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_44;
    case 0x28u:
      v85 = v133;
      sub_2195C36B4(v88, v133, type metadata accessor for AffinityTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_44;
    case 0x2Au:
      v85 = v134;
      sub_2195C36B4(v88, v134, type metadata accessor for LatestRecipesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_44;
    case 0x2Bu:
      v85 = v135;
      sub_2195C36B4(v88, v135, type metadata accessor for SavedRecipesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_44;
    case 0x2Cu:
      v85 = v136;
      sub_2195C36B4(v88, v136, type metadata accessor for TrendingRecipesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_44;
    case 0x2Du:
      v85 = v137;
      sub_2195C36B4(v88, v137, type metadata accessor for TopicRecipesTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for TopicRecipesTagFeedGroup;
      goto LABEL_44;
    default:
      sub_2195C36B4(v88, v85, type metadata accessor for ArticleListTagFeedGroup);
      v90 = v138;
      sub_219BED874();
      v91 = type metadata accessor for ArticleListTagFeedGroup;
LABEL_44:
      v92 = v91;
      v93 = v85;
LABEL_45:
      sub_2195C359C(v93, v92);
      v89 = 0;
LABEL_46:
      v95 = sub_219BF1904();
      return (*(*(v95 - 8) + 56))(v90, v89, 1, v95);
  }
}

uint64_t sub_2195A7608()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v151 = &v106 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v150 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v149 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v148 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v147 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v146 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v145 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v144 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v143 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v142 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v141 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v140 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v139 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v138 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v137 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v136 = (&v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v135 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v134 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v36 - 8);
  v133 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v132 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v131 = (&v106 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v130 = &v106 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v129 = &v106 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v128 = &v106 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v127 = &v106 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v126 = &v106 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v125 = &v106 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v54 - 8);
  v124 = &v106 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v56 - 8);
  v123 = &v106 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v122);
  v121 = (&v106 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v59 - 8);
  v120 = &v106 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v119);
  v118 = (&v106 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v62 - 8);
  v117 = &v106 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v64 - 8);
  v116 = &v106 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v115);
  v114 = (&v106 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v113);
  v112 = (&v106 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v68 - 8);
  v111 = &v106 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v70 - 8);
  v110 = &v106 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_219BED544();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v106 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for PaywallTagFeedGroup();
  MEMORY[0x28223BE20](v73 - 8);
  v75 = (&v106 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v76);
  v78 = &v106 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v79 - 8);
  v81 = &v106 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v82 - 8);
  v84 = &v106 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v85 - 8);
  v87 = (&v106 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v88 - 8);
  v90 = &v106 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v91 - 8);
  v93 = &v106 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v94);
  v96 = &v106 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v152, v96);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2195C36B4(v96, v90, type metadata accessor for PromotedArticleListTagFeedGroup);
      v97 = sub_219BED784();
      v100 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v101 = v90;
      goto LABEL_50;
    case 2u:
      sub_2195C36B4(v96, v87, type metadata accessor for IssueListTagFeedGroup);
      v97 = *v87;

      v100 = type metadata accessor for IssueListTagFeedGroup;
      v101 = v87;
      goto LABEL_50;
    case 3u:
      sub_2195C36B4(v96, v84, type metadata accessor for ChannelSectionTagFeedGroup);
      v97 = sub_219BED784();
      v100 = type metadata accessor for ChannelSectionTagFeedGroup;
      v101 = v84;
      goto LABEL_50;
    case 4u:
      sub_2195C36B4(v96, v81, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v97 = sub_219BED784();
      v100 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v101 = v81;
      goto LABEL_50;
    case 5u:
      sub_2195C36B4(v96, v78, type metadata accessor for WeatherTagFeedGroup);
      v97 = sub_219BED784();
      v100 = type metadata accessor for WeatherTagFeedGroup;
      v101 = v78;
      goto LABEL_50;
    case 6u:
      sub_2195C36B4(v96, v75, type metadata accessor for PaywallTagFeedGroup);
      v97 = *v75;

      v99 = type metadata accessor for PaywallTagFeedGroup;
      goto LABEL_37;
    case 7u:
      v102 = v108;
      v103 = v107;
      v104 = v109;
      (*(v108 + 32))(v107, v96, v109);
      v97 = sub_219BED4C4();
      (*(v102 + 8))(v103, v104);
      return v97;
    case 8u:
      v93 = v110;
      sub_2195C36B4(v96, v110, type metadata accessor for CuratedTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_49;
    case 9u:
      v93 = v111;
      sub_2195C36B4(v96, v111, type metadata accessor for SportsRecordTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_49;
    case 0xAu:
      v75 = v112;
      sub_2195C36B4(v96, v112, type metadata accessor for SportsNavigationTagFeedGroup);
      v97 = sub_219BED784();
      v99 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_37;
    case 0xBu:
      v93 = v117;
      sub_2195C36B4(v96, v117, type metadata accessor for SportsScheduleTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_49;
    case 0xCu:
      v75 = v114;
      sub_2195C36B4(v96, v114, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v97 = sub_219BED784();
      v99 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_37;
    case 0xDu:
      v93 = v116;
      sub_2195C36B4(v96, v116, type metadata accessor for SportsFavoritesTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_49;
    case 0xEu:
      v75 = v118;
      sub_2195C36B4(v96, v118, type metadata accessor for SportsScoresTagFeedGroup);
      v97 = sub_219BED784();
      v99 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_37;
    case 0xFu:
      v93 = v120;
      sub_2195C36B4(v96, v120, type metadata accessor for SportsLinksTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_49;
    case 0x10u:
      v75 = v121;
      sub_2195C36B4(v96, v121, type metadata accessor for MySportsTopicTagFeedGroup);
      v97 = sub_219BED784();
      v99 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_37;
    case 0x11u:
      v93 = v123;
      sub_2195C36B4(v96, v123, type metadata accessor for SportsStandingsTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_49;
    case 0x12u:
      v93 = v124;
      sub_2195C36B4(v96, v124, type metadata accessor for SportsBracketTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_49;
    case 0x13u:
      v93 = v125;
      sub_2195C36B4(v96, v125, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_49;
    case 0x14u:
      v93 = v126;
      sub_2195C36B4(v96, v126, type metadata accessor for SportsEventInfoTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_49;
    case 0x15u:
      v93 = v127;
      sub_2195C36B4(v96, v127, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_49;
    case 0x16u:
      v93 = v128;
      sub_2195C36B4(v96, v128, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_49;
    case 0x17u:
      v93 = v129;
      sub_2195C36B4(v96, v129, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_49;
    case 0x18u:
      v93 = v130;
      sub_2195C36B4(v96, v130, type metadata accessor for HighlightsTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_49;
    case 0x19u:
      v75 = v131;
      sub_2195C36B4(v96, v131, type metadata accessor for ForYouTagFeedGroup);
      v97 = *v75;

      v99 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_37;
    case 0x1Au:
      v93 = v132;
      sub_2195C36B4(v96, v132, type metadata accessor for ChannelRecipesTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Bu:
      v93 = v133;
      sub_2195C36B4(v96, v133, type metadata accessor for ForYouRecipesTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Cu:
      v93 = v134;
      sub_2195C36B4(v96, v134, type metadata accessor for RecentStoriesTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_49;
    case 0x1Du:
      v93 = v135;
      sub_2195C36B4(v96, v135, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Eu:
      v75 = v136;
      sub_2195C36B4(v96, v136, type metadata accessor for DateRangeTagFeedGroup);
      v97 = *v75;

      v99 = type metadata accessor for DateRangeTagFeedGroup;
LABEL_37:
      v100 = v99;
      v101 = v75;
      goto LABEL_50;
    case 0x1Fu:
      v93 = v137;
      sub_2195C36B4(v96, v137, type metadata accessor for SportsOnboardingTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_49;
    case 0x20u:
      v93 = v138;
      sub_2195C36B4(v96, v138, type metadata accessor for SportsMastheadTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_49;
    case 0x21u:
      v93 = v139;
      sub_2195C36B4(v96, v139, type metadata accessor for SportsEventTopicTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_49;
    case 0x22u:
      v93 = v140;
      sub_2195C36B4(v96, v140, type metadata accessor for PuzzleListTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_49;
    case 0x23u:
      v93 = v141;
      sub_2195C36B4(v96, v141, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_49;
    case 0x24u:
      v93 = v142;
      sub_2195C36B4(v96, v142, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_49;
    case 0x25u:
      v93 = v143;
      sub_2195C36B4(v96, v143, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_49;
    case 0x26u:
      v93 = v144;
      sub_2195C36B4(v96, v144, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_49;
    case 0x27u:
      v93 = v145;
      sub_2195C36B4(v96, v145, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_49;
    case 0x28u:
      v93 = v146;
      sub_2195C36B4(v96, v146, type metadata accessor for AffinityTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_49;
    case 0x29u:
      v93 = v147;
      sub_2195C36B4(v96, v147, type metadata accessor for SponsoredBannerTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_49;
    case 0x2Au:
      v93 = v148;
      sub_2195C36B4(v96, v148, type metadata accessor for LatestRecipesTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Bu:
      v93 = v149;
      sub_2195C36B4(v96, v149, type metadata accessor for SavedRecipesTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Cu:
      v93 = v150;
      sub_2195C36B4(v96, v150, type metadata accessor for TrendingRecipesTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Du:
      v93 = v151;
      sub_2195C36B4(v96, v151, type metadata accessor for TopicRecipesTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for TopicRecipesTagFeedGroup;
      goto LABEL_49;
    default:
      sub_2195C36B4(v96, v93, type metadata accessor for ArticleListTagFeedGroup);
      v97 = sub_219BED784();
      v98 = type metadata accessor for ArticleListTagFeedGroup;
LABEL_49:
      v100 = v98;
      v101 = v93;
LABEL_50:
      sub_2195C359C(v101, v100);
      return v97;
  }
}

uint64_t sub_2195A9180()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v141 = &v98 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v140 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v139 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v138 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v137 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v136 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v135 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v134 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v133 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v132 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v131 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v130 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v129 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v128 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v127 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v126);
  v125 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v124 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v123 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v122 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v121 = &v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v120);
  v119 = &v98 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v118 = &v98 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v117 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v116 = &v98 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v115 = &v98 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v114 = &v98 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v113 = &v98 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v112 = &v98 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v54 - 8);
  v111 = &v98 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v110);
  v109 = &v98 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v57 - 8);
  v108 = &v98 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v107);
  v106 = &v98 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v60 - 8);
  v105 = &v98 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v62 - 8);
  v104 = &v98 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v103);
  v102 = &v98 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v101);
  v100 = &v98 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v66 - 8);
  v99 = &v98 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v68 - 8);
  v70 = &v98 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v71);
  v73 = &v98 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v74 - 8);
  v76 = &v98 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v77 - 8);
  v79 = &v98 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v80 - 8);
  v82 = &v98 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v83 - 8);
  v85 = &v98 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v86 - 8);
  v88 = &v98 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v89);
  v91 = &v98 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v142, v91);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2195C36B4(v91, v85, type metadata accessor for PromotedArticleListTagFeedGroup);
      v92 = sub_219BED794();
      v95 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v96 = v85;
      goto LABEL_49;
    case 2u:
      sub_2195C36B4(v91, v82, type metadata accessor for IssueListTagFeedGroup);
      v92 = *(v82 + 3);

      v95 = type metadata accessor for IssueListTagFeedGroup;
      v96 = v82;
      goto LABEL_49;
    case 3u:
      sub_2195C36B4(v91, v79, type metadata accessor for ChannelSectionTagFeedGroup);
      v92 = sub_219BED794();
      v95 = type metadata accessor for ChannelSectionTagFeedGroup;
      v96 = v79;
      goto LABEL_49;
    case 4u:
      sub_2195C36B4(v91, v76, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v92 = sub_219BED794();
      v95 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v96 = v76;
      goto LABEL_49;
    case 5u:
      sub_2195C36B4(v91, v73, type metadata accessor for WeatherTagFeedGroup);
      v92 = sub_219BED794();
      v95 = type metadata accessor for WeatherTagFeedGroup;
      v96 = v73;
      goto LABEL_49;
    case 6u:
    case 7u:
      sub_2195C359C(v91, type metadata accessor for TagFeedGroup);
      return 0;
    case 8u:
      sub_2195C36B4(v91, v70, type metadata accessor for CuratedTagFeedGroup);
      v92 = sub_219BED794();
      v94 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_36;
    case 9u:
      v88 = v99;
      sub_2195C36B4(v91, v99, type metadata accessor for SportsRecordTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_48;
    case 0xAu:
      v70 = v100;
      sub_2195C36B4(v91, v100, type metadata accessor for SportsNavigationTagFeedGroup);
      v92 = sub_219BED794();
      v94 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_36;
    case 0xBu:
      v88 = v105;
      sub_2195C36B4(v91, v105, type metadata accessor for SportsScheduleTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_48;
    case 0xCu:
      v70 = v102;
      sub_2195C36B4(v91, v102, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v92 = sub_219BED794();
      v94 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_36;
    case 0xDu:
      v88 = v104;
      sub_2195C36B4(v91, v104, type metadata accessor for SportsFavoritesTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_48;
    case 0xEu:
      v70 = v106;
      sub_2195C36B4(v91, v106, type metadata accessor for SportsScoresTagFeedGroup);
      v92 = sub_219BED794();
      v94 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_36;
    case 0xFu:
      v88 = v108;
      sub_2195C36B4(v91, v108, type metadata accessor for SportsLinksTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_48;
    case 0x10u:
      v70 = v109;
      sub_2195C36B4(v91, v109, type metadata accessor for MySportsTopicTagFeedGroup);
      v92 = sub_219BED794();
      v94 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_36;
    case 0x11u:
      v88 = v111;
      sub_2195C36B4(v91, v111, type metadata accessor for SportsStandingsTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_48;
    case 0x12u:
      v88 = v112;
      sub_2195C36B4(v91, v112, type metadata accessor for SportsBracketTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_48;
    case 0x13u:
      v88 = v113;
      sub_2195C36B4(v91, v113, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_48;
    case 0x14u:
      v88 = v114;
      sub_2195C36B4(v91, v114, type metadata accessor for SportsEventInfoTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_48;
    case 0x15u:
      v88 = v115;
      sub_2195C36B4(v91, v115, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_48;
    case 0x16u:
      v88 = v116;
      sub_2195C36B4(v91, v116, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_48;
    case 0x17u:
      v88 = v117;
      sub_2195C36B4(v91, v117, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_48;
    case 0x18u:
      v88 = v118;
      sub_2195C36B4(v91, v118, type metadata accessor for HighlightsTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_48;
    case 0x19u:
      v70 = v119;
      sub_2195C36B4(v91, v119, type metadata accessor for ForYouTagFeedGroup);
      v92 = sub_219BED794();
      v94 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_36;
    case 0x1Au:
      v88 = v121;
      sub_2195C36B4(v91, v121, type metadata accessor for ChannelRecipesTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x1Bu:
      v88 = v122;
      sub_2195C36B4(v91, v122, type metadata accessor for ForYouRecipesTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x1Cu:
      v88 = v123;
      sub_2195C36B4(v91, v123, type metadata accessor for RecentStoriesTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_48;
    case 0x1Du:
      v88 = v124;
      sub_2195C36B4(v91, v124, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x1Eu:
      v70 = v125;
      sub_2195C36B4(v91, v125, type metadata accessor for DateRangeTagFeedGroup);
      v92 = sub_219BED794();
      v94 = type metadata accessor for DateRangeTagFeedGroup;
LABEL_36:
      v95 = v94;
      v96 = v70;
      goto LABEL_49;
    case 0x1Fu:
      v88 = v127;
      sub_2195C36B4(v91, v127, type metadata accessor for SportsOnboardingTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_48;
    case 0x20u:
      v88 = v128;
      sub_2195C36B4(v91, v128, type metadata accessor for SportsMastheadTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_48;
    case 0x21u:
      v88 = v129;
      sub_2195C36B4(v91, v129, type metadata accessor for SportsEventTopicTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_48;
    case 0x22u:
      v88 = v130;
      sub_2195C36B4(v91, v130, type metadata accessor for PuzzleListTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_48;
    case 0x23u:
      v88 = v131;
      sub_2195C36B4(v91, v131, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_48;
    case 0x24u:
      v88 = v132;
      sub_2195C36B4(v91, v132, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_48;
    case 0x25u:
      v88 = v133;
      sub_2195C36B4(v91, v133, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_48;
    case 0x26u:
      v88 = v134;
      sub_2195C36B4(v91, v134, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_48;
    case 0x27u:
      v88 = v135;
      sub_2195C36B4(v91, v135, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_48;
    case 0x28u:
      v88 = v136;
      sub_2195C36B4(v91, v136, type metadata accessor for AffinityTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_48;
    case 0x29u:
      v88 = v137;
      sub_2195C36B4(v91, v137, type metadata accessor for SponsoredBannerTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_48;
    case 0x2Au:
      v88 = v138;
      sub_2195C36B4(v91, v138, type metadata accessor for LatestRecipesTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x2Bu:
      v88 = v139;
      sub_2195C36B4(v91, v139, type metadata accessor for SavedRecipesTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x2Cu:
      v88 = v140;
      sub_2195C36B4(v91, v140, type metadata accessor for TrendingRecipesTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x2Du:
      v88 = v141;
      sub_2195C36B4(v91, v141, type metadata accessor for TopicRecipesTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for TopicRecipesTagFeedGroup;
      goto LABEL_48;
    default:
      sub_2195C36B4(v91, v88, type metadata accessor for ArticleListTagFeedGroup);
      v92 = sub_219BED794();
      v93 = type metadata accessor for ArticleListTagFeedGroup;
LABEL_48:
      v95 = v93;
      v96 = v88;
LABEL_49:
      sub_2195C359C(v96, v95);
      return v92;
  }
}

uint64_t sub_2195AABE0()
{
  v1 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2195C359C(v3, type metadata accessor for TagFeedGroup);
  return byte_219C8EB42[EnumCaseMultiPayload];
}

uint64_t sub_2195AAC98@<X0>(uint64_t a1@<X8>)
{
  v155 = a1;
  v1 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v154 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v153 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v152 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v151 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v150 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v149 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v148 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v147 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v146 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v145 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v144 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v143 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v142 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v141 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v140 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v139);
  v138 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v137 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v136 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v36 - 8);
  v135 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v134 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v133);
  v132 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v131 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v43 - 8);
  v130 = &v106 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v45 - 8);
  v129 = &v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v47 - 8);
  v128 = &v106 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v49 - 8);
  v127 = &v106 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v51 - 8);
  v126 = &v106 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v53 - 8);
  v125 = &v106 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v55 - 8);
  v124 = &v106 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v123);
  v122 = &v106 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v58 - 8);
  v121 = &v106 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v120);
  v119 = &v106 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v61 - 8);
  v118 = &v106 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v63 - 8);
  v117 = &v106 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v116);
  v115 = &v106 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v114);
  v113 = &v106 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v67 - 8);
  v112 = &v106 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v69 - 8);
  v111 = &v106 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BED544();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v106 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for PaywallTagFeedGroup();
  MEMORY[0x28223BE20](v106);
  v107 = &v106 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v73);
  v75 = &v106 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v76 - 8);
  v78 = &v106 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v79 - 8);
  v81 = &v106 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v82);
  v84 = &v106 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v85 - 8);
  v87 = &v106 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v88 - 8);
  v90 = &v106 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v91);
  v93 = &v106 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v156, v93);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2195C36B4(v93, v87, type metadata accessor for PromotedArticleListTagFeedGroup);
      sub_219BED7A4();
      v96 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v97 = v87;
      return sub_2195C359C(v97, v96);
    case 2u:
      sub_2195C36B4(v93, v84, type metadata accessor for IssueListTagFeedGroup);
      v98 = *(v82 + 28);
      v99 = sub_219BEF554();
      (*(*(v99 - 8) + 16))(v155, &v84[v98], v99);
      v95 = type metadata accessor for IssueListTagFeedGroup;
      goto LABEL_37;
    case 3u:
      sub_2195C36B4(v93, v81, type metadata accessor for ChannelSectionTagFeedGroup);
      sub_219BED7A4();
      v96 = type metadata accessor for ChannelSectionTagFeedGroup;
      v97 = v81;
      return sub_2195C359C(v97, v96);
    case 4u:
      sub_2195C36B4(v93, v78, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      sub_219BED7A4();
      v96 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v97 = v78;
      return sub_2195C359C(v97, v96);
    case 5u:
      sub_2195C36B4(v93, v75, type metadata accessor for WeatherTagFeedGroup);
      sub_219BED7A4();
      v96 = type metadata accessor for WeatherTagFeedGroup;
      v97 = v75;
      return sub_2195C359C(v97, v96);
    case 6u:
      v90 = v107;
      sub_2195C36B4(v93, v107, type metadata accessor for PaywallTagFeedGroup);
      v104 = *(v106 + 28);
      v105 = sub_219BEF554();
      (*(*(v105 - 8) + 16))(v155, &v90[v104], v105);
      v94 = type metadata accessor for PaywallTagFeedGroup;
      goto LABEL_49;
    case 7u:
      v100 = v109;
      v101 = v108;
      v102 = v110;
      (*(v109 + 32))(v108, v93, v110);
      sub_219BED4D4();
      return (*(v100 + 8))(v101, v102);
    case 8u:
      v90 = v111;
      sub_2195C36B4(v93, v111, type metadata accessor for CuratedTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_49;
    case 9u:
      v90 = v112;
      sub_2195C36B4(v93, v112, type metadata accessor for SportsRecordTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_49;
    case 0xAu:
      v84 = v113;
      sub_2195C36B4(v93, v113, type metadata accessor for SportsNavigationTagFeedGroup);
      sub_219BED7A4();
      v95 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_37;
    case 0xBu:
      v90 = v118;
      sub_2195C36B4(v93, v118, type metadata accessor for SportsScheduleTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_49;
    case 0xCu:
      v84 = v115;
      sub_2195C36B4(v93, v115, type metadata accessor for SportsTopStoriesTagFeedGroup);
      sub_219BED7A4();
      v95 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_37;
    case 0xDu:
      v90 = v117;
      sub_2195C36B4(v93, v117, type metadata accessor for SportsFavoritesTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_49;
    case 0xEu:
      v84 = v119;
      sub_2195C36B4(v93, v119, type metadata accessor for SportsScoresTagFeedGroup);
      sub_219BED7A4();
      v95 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_37;
    case 0xFu:
      v90 = v121;
      sub_2195C36B4(v93, v121, type metadata accessor for SportsLinksTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_49;
    case 0x10u:
      v84 = v122;
      sub_2195C36B4(v93, v122, type metadata accessor for MySportsTopicTagFeedGroup);
      sub_219BED7A4();
      v95 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_37;
    case 0x11u:
      v90 = v124;
      sub_2195C36B4(v93, v124, type metadata accessor for SportsStandingsTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_49;
    case 0x12u:
      v90 = v125;
      sub_2195C36B4(v93, v125, type metadata accessor for SportsBracketTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_49;
    case 0x13u:
      v90 = v126;
      sub_2195C36B4(v93, v126, type metadata accessor for SportsBoxScoresTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_49;
    case 0x14u:
      v90 = v127;
      sub_2195C36B4(v93, v127, type metadata accessor for SportsEventInfoTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_49;
    case 0x15u:
      v90 = v128;
      sub_2195C36B4(v93, v128, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_49;
    case 0x16u:
      v90 = v129;
      sub_2195C36B4(v93, v129, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_49;
    case 0x17u:
      v90 = v130;
      sub_2195C36B4(v93, v130, type metadata accessor for SportsEventArticlesTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_49;
    case 0x18u:
      v90 = v131;
      sub_2195C36B4(v93, v131, type metadata accessor for HighlightsTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_49;
    case 0x19u:
      v84 = v132;
      sub_2195C36B4(v93, v132, type metadata accessor for ForYouTagFeedGroup);
      sub_219BED7A4();
      v95 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_37;
    case 0x1Au:
      v90 = v134;
      sub_2195C36B4(v93, v134, type metadata accessor for ChannelRecipesTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Bu:
      v90 = v135;
      sub_2195C36B4(v93, v135, type metadata accessor for ForYouRecipesTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Cu:
      v90 = v136;
      sub_2195C36B4(v93, v136, type metadata accessor for RecentStoriesTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_49;
    case 0x1Du:
      v90 = v137;
      sub_2195C36B4(v93, v137, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Eu:
      v84 = v138;
      sub_2195C36B4(v93, v138, type metadata accessor for DateRangeTagFeedGroup);
      sub_219BED7A4();
      v95 = type metadata accessor for DateRangeTagFeedGroup;
LABEL_37:
      v96 = v95;
      v97 = v84;
      return sub_2195C359C(v97, v96);
    case 0x1Fu:
      v90 = v140;
      sub_2195C36B4(v93, v140, type metadata accessor for SportsOnboardingTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_49;
    case 0x20u:
      v90 = v141;
      sub_2195C36B4(v93, v141, type metadata accessor for SportsMastheadTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_49;
    case 0x21u:
      v90 = v142;
      sub_2195C36B4(v93, v142, type metadata accessor for SportsEventTopicTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_49;
    case 0x22u:
      v90 = v143;
      sub_2195C36B4(v93, v143, type metadata accessor for PuzzleListTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_49;
    case 0x23u:
      v90 = v144;
      sub_2195C36B4(v93, v144, type metadata accessor for PuzzleArchiveTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_49;
    case 0x24u:
      v90 = v145;
      sub_2195C36B4(v93, v145, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_49;
    case 0x25u:
      v90 = v146;
      sub_2195C36B4(v93, v146, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_49;
    case 0x26u:
      v90 = v147;
      sub_2195C36B4(v93, v147, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_49;
    case 0x27u:
      v90 = v148;
      sub_2195C36B4(v93, v148, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_49;
    case 0x28u:
      v90 = v149;
      sub_2195C36B4(v93, v149, type metadata accessor for AffinityTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_49;
    case 0x29u:
      v90 = v150;
      sub_2195C36B4(v93, v150, type metadata accessor for SponsoredBannerTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_49;
    case 0x2Au:
      v90 = v151;
      sub_2195C36B4(v93, v151, type metadata accessor for LatestRecipesTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Bu:
      v90 = v152;
      sub_2195C36B4(v93, v152, type metadata accessor for SavedRecipesTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Cu:
      v90 = v153;
      sub_2195C36B4(v93, v153, type metadata accessor for TrendingRecipesTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Du:
      v90 = v154;
      sub_2195C36B4(v93, v154, type metadata accessor for TopicRecipesTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for TopicRecipesTagFeedGroup;
      goto LABEL_49;
    default:
      sub_2195C36B4(v93, v90, type metadata accessor for ArticleListTagFeedGroup);
      sub_219BED7A4();
      v94 = type metadata accessor for ArticleListTagFeedGroup;
LABEL_49:
      v96 = v94;
      v97 = v90;
      return sub_2195C359C(v97, v96);
  }
}

double sub_2195AC824()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v193 = &v146 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v192 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v191 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v190 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v189 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v188 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v187 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v186 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v185 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v184 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v183 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v182 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v181 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v180 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v179 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v178);
  v177 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v176 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v175 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v174 = &v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v173 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v172);
  v171 = &v146 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v170 = &v146 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v169 = &v146 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v168 = &v146 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v167 = &v146 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v166 = &v146 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v165 = &v146 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v164 = &v146 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v54 - 8);
  v163 = &v146 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v162);
  v161 = &v146 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v57 - 8);
  v160 = &v146 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v159);
  v158 = &v146 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v60 - 8);
  v157 = &v146 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v156);
  v155 = &v146 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v63 - 8);
  v154 = &v146 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v153);
  v152 = &v146 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v66 - 8);
  v151 = &v146 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v68 - 8);
  v150 = &v146 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BED544();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v146 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for PaywallTagFeedGroup();
  MEMORY[0x28223BE20](v71);
  v73 = &v146 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v74);
  v76 = &v146 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v77 - 8);
  v79 = &v146 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v80 - 8);
  v82 = &v146 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v83 - 8);
  v85 = &v146 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v86 - 8);
  v88 = &v146 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v89);
  v91 = &v146 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v194, v91);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2195C36B4(v91, v85, type metadata accessor for PromotedArticleListTagFeedGroup);
      sub_219BED7B4();
      v93 = v122;
      v109 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v110 = v85;
      goto LABEL_50;
    case 2u:
      sub_2195C359C(v91, type metadata accessor for TagFeedGroup);
      return 1.0;
    case 3u:
      sub_2195C36B4(v91, v82, type metadata accessor for ChannelSectionTagFeedGroup);
      sub_219BED7B4();
      v93 = v117;
      v109 = type metadata accessor for ChannelSectionTagFeedGroup;
      v110 = v82;
      goto LABEL_50;
    case 4u:
      sub_2195C36B4(v91, v79, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      sub_219BED7B4();
      v93 = v108;
      v109 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v110 = v79;
      goto LABEL_50;
    case 5u:
      sub_2195C36B4(v91, v76, type metadata accessor for WeatherTagFeedGroup);
      sub_219BED7B4();
      v93 = v127;
      v109 = type metadata accessor for WeatherTagFeedGroup;
      v110 = v76;
      goto LABEL_50;
    case 6u:
      sub_2195C36B4(v91, v73, type metadata accessor for PaywallTagFeedGroup);
      v93 = *&v73[*(v71 + 32)];
      v109 = type metadata accessor for PaywallTagFeedGroup;
      v110 = v73;
      goto LABEL_50;
    case 7u:
      v118 = v148;
      v119 = v147;
      v120 = v149;
      (*(v148 + 32))(v147, v91, v149);
      sub_219BED4E4();
      v93 = v121;
      (*(v118 + 8))(v119, v120);
      return v93;
    case 8u:
      v88 = v150;
      sub_2195C36B4(v91, v150, type metadata accessor for CuratedTagFeedGroup);
      sub_219BED7B4();
      v93 = v132;
      v94 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_49;
    case 9u:
      v88 = v151;
      sub_2195C36B4(v91, v151, type metadata accessor for SportsRecordTagFeedGroup);
      sub_219BED7B4();
      v93 = v113;
      v94 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_49;
    case 0xAu:
      v101 = v152;
      sub_2195C36B4(v91, v152, type metadata accessor for SportsNavigationTagFeedGroup);
      sub_219BED7B4();
      v93 = v131;
      v103 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_37;
    case 0xBu:
      v88 = v154;
      sub_2195C36B4(v91, v154, type metadata accessor for SportsScheduleTagFeedGroup);
      sub_219BED7B4();
      v93 = v107;
      v94 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_49;
    case 0xCu:
      v101 = v155;
      sub_2195C36B4(v91, v155, type metadata accessor for SportsTopStoriesTagFeedGroup);
      sub_219BED7B4();
      v93 = v112;
      v103 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_37;
    case 0xDu:
      v88 = v157;
      sub_2195C36B4(v91, v157, type metadata accessor for SportsFavoritesTagFeedGroup);
      sub_219BED7B4();
      v93 = v129;
      v94 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_49;
    case 0xEu:
      v101 = v158;
      sub_2195C36B4(v91, v158, type metadata accessor for SportsScoresTagFeedGroup);
      sub_219BED7B4();
      v93 = v105;
      v103 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_37;
    case 0xFu:
      v88 = v160;
      sub_2195C36B4(v91, v160, type metadata accessor for SportsLinksTagFeedGroup);
      sub_219BED7B4();
      v93 = v116;
      v94 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_49;
    case 0x10u:
      v101 = v161;
      sub_2195C36B4(v91, v161, type metadata accessor for MySportsTopicTagFeedGroup);
      sub_219BED7B4();
      v93 = v102;
      v103 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_37;
    case 0x11u:
      v88 = v163;
      sub_2195C36B4(v91, v163, type metadata accessor for SportsStandingsTagFeedGroup);
      sub_219BED7B4();
      v93 = v124;
      v94 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_49;
    case 0x12u:
      v88 = v164;
      sub_2195C36B4(v91, v164, type metadata accessor for SportsBracketTagFeedGroup);
      sub_219BED7B4();
      v93 = v130;
      v94 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_49;
    case 0x13u:
      v88 = v165;
      sub_2195C36B4(v91, v165, type metadata accessor for SportsBoxScoresTagFeedGroup);
      sub_219BED7B4();
      v93 = v138;
      v94 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_49;
    case 0x14u:
      v88 = v166;
      sub_2195C36B4(v91, v166, type metadata accessor for SportsEventInfoTagFeedGroup);
      sub_219BED7B4();
      v93 = v126;
      v94 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_49;
    case 0x15u:
      v88 = v167;
      sub_2195C36B4(v91, v167, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      sub_219BED7B4();
      v93 = v128;
      v94 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_49;
    case 0x16u:
      v88 = v168;
      sub_2195C36B4(v91, v168, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      sub_219BED7B4();
      v93 = v136;
      v94 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_49;
    case 0x17u:
      v88 = v169;
      sub_2195C36B4(v91, v169, type metadata accessor for SportsEventArticlesTagFeedGroup);
      sub_219BED7B4();
      v93 = v140;
      v94 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_49;
    case 0x18u:
      v88 = v170;
      sub_2195C36B4(v91, v170, type metadata accessor for HighlightsTagFeedGroup);
      sub_219BED7B4();
      v93 = v115;
      v94 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_49;
    case 0x19u:
      v101 = v171;
      sub_2195C36B4(v91, v171, type metadata accessor for ForYouTagFeedGroup);
      sub_219BED7B4();
      v93 = v114;
      v103 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_37;
    case 0x1Au:
      v88 = v173;
      sub_2195C36B4(v91, v173, type metadata accessor for ChannelRecipesTagFeedGroup);
      sub_219BED7B4();
      v93 = v144;
      v94 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Bu:
      v88 = v174;
      sub_2195C36B4(v91, v174, type metadata accessor for ForYouRecipesTagFeedGroup);
      sub_219BED7B4();
      v93 = v99;
      v94 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Cu:
      v88 = v175;
      sub_2195C36B4(v91, v175, type metadata accessor for RecentStoriesTagFeedGroup);
      sub_219BED7B4();
      v93 = v141;
      v94 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_49;
    case 0x1Du:
      v88 = v176;
      sub_2195C36B4(v91, v176, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      sub_219BED7B4();
      v93 = v142;
      v94 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Eu:
      v101 = v177;
      sub_2195C36B4(v91, v177, type metadata accessor for DateRangeTagFeedGroup);
      sub_219BED7B4();
      v93 = v133;
      v103 = type metadata accessor for DateRangeTagFeedGroup;
LABEL_37:
      v109 = v103;
      v110 = v101;
      goto LABEL_50;
    case 0x1Fu:
      v88 = v179;
      sub_2195C36B4(v91, v179, type metadata accessor for SportsOnboardingTagFeedGroup);
      sub_219BED7B4();
      v93 = v123;
      v94 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_49;
    case 0x20u:
      v88 = v180;
      sub_2195C36B4(v91, v180, type metadata accessor for SportsMastheadTagFeedGroup);
      sub_219BED7B4();
      v93 = v134;
      v94 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_49;
    case 0x21u:
      v88 = v181;
      sub_2195C36B4(v91, v181, type metadata accessor for SportsEventTopicTagFeedGroup);
      sub_219BED7B4();
      v93 = v106;
      v94 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_49;
    case 0x22u:
      v88 = v182;
      sub_2195C36B4(v91, v182, type metadata accessor for PuzzleListTagFeedGroup);
      sub_219BED7B4();
      v93 = v100;
      v94 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_49;
    case 0x23u:
      v88 = v183;
      sub_2195C36B4(v91, v183, type metadata accessor for PuzzleArchiveTagFeedGroup);
      sub_219BED7B4();
      v93 = v97;
      v94 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_49;
    case 0x24u:
      v88 = v184;
      sub_2195C36B4(v91, v184, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      sub_219BED7B4();
      v93 = v98;
      v94 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_49;
    case 0x25u:
      v88 = v185;
      sub_2195C36B4(v91, v185, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      sub_219BED7B4();
      v93 = v96;
      v94 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_49;
    case 0x26u:
      v88 = v186;
      sub_2195C36B4(v91, v186, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      sub_219BED7B4();
      v93 = v143;
      v94 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_49;
    case 0x27u:
      v88 = v187;
      sub_2195C36B4(v91, v187, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      sub_219BED7B4();
      v93 = v137;
      v94 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_49;
    case 0x28u:
      v88 = v188;
      sub_2195C36B4(v91, v188, type metadata accessor for AffinityTagFeedGroup);
      sub_219BED7B4();
      v93 = v111;
      v94 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_49;
    case 0x29u:
      v88 = v189;
      sub_2195C36B4(v91, v189, type metadata accessor for SponsoredBannerTagFeedGroup);
      sub_219BED7B4();
      v93 = v125;
      v94 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_49;
    case 0x2Au:
      v88 = v190;
      sub_2195C36B4(v91, v190, type metadata accessor for LatestRecipesTagFeedGroup);
      sub_219BED7B4();
      v93 = v139;
      v94 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Bu:
      v88 = v191;
      sub_2195C36B4(v91, v191, type metadata accessor for SavedRecipesTagFeedGroup);
      sub_219BED7B4();
      v93 = v95;
      v94 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Cu:
      v88 = v192;
      sub_2195C36B4(v91, v192, type metadata accessor for TrendingRecipesTagFeedGroup);
      sub_219BED7B4();
      v93 = v104;
      v94 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Du:
      v88 = v193;
      sub_2195C36B4(v91, v193, type metadata accessor for TopicRecipesTagFeedGroup);
      sub_219BED7B4();
      v93 = v135;
      v94 = type metadata accessor for TopicRecipesTagFeedGroup;
      goto LABEL_49;
    default:
      sub_2195C36B4(v91, v88, type metadata accessor for ArticleListTagFeedGroup);
      sub_219BED7B4();
      v93 = v92;
      v94 = type metadata accessor for ArticleListTagFeedGroup;
LABEL_49:
      v109 = v94;
      v110 = v88;
LABEL_50:
      sub_2195C359C(v110, v109);
      return v93;
  }
}

double sub_2195AE2DC(double (*a1)(uint64_t), double (*a2)(uint64_t, uint64_t))
{
  v200 = a2;
  v201 = a1;
  v2 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v199 = &v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v198 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v197 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v196 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v195 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v194 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v193 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v192 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v191 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v190 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v189 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v188 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v187 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v186 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v185 = &v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v184);
  v183 = &v150 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v182 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v181 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v180 = &v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v39 - 8);
  v179 = &v150 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v178);
  v177 = &v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v176 = &v150 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v175 = &v150 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v174 = &v150 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v173 = &v150 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v172 = &v150 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v171 = &v150 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v54 - 8);
  v170 = &v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v56 - 8);
  v169 = &v150 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v168);
  v167 = &v150 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v59 - 8);
  v166 = &v150 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v165);
  v164 = &v150 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v62 - 8);
  v163 = &v150 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v162);
  v161 = &v150 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v65 - 8);
  v160 = &v150 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v159);
  v158 = &v150 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v68 - 8);
  v157 = &v150 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v70 - 8);
  v154 = &v150 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_219BED544();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v153 = &v150 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for PaywallTagFeedGroup();
  MEMORY[0x28223BE20](v152);
  v151 = &v150 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v74);
  v76 = &v150 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v77 - 8);
  v79 = &v150 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v80 - 8);
  v82 = &v150 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v83);
  v85 = &v150 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v86 - 8);
  v88 = &v150 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v89 - 8);
  v91 = &v150 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v92);
  v94 = &v150 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v202, v94);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v125 = sub_2195C36B4(v94, v88, type metadata accessor for PromotedArticleListTagFeedGroup);
      v96 = v201(v125);
      v111 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v112 = v88;
      goto LABEL_50;
    case 2u:
      sub_2195C36B4(v94, v85, type metadata accessor for IssueListTagFeedGroup);
      v118 = sub_21877D2E4(&unk_27CC1C580, type metadata accessor for IssueListTagFeedGroup);
      v96 = v200(v83, v118);
      v111 = type metadata accessor for IssueListTagFeedGroup;
      v112 = v85;
      goto LABEL_50;
    case 3u:
      v120 = sub_2195C36B4(v94, v82, type metadata accessor for ChannelSectionTagFeedGroup);
      v96 = v201(v120);
      v111 = type metadata accessor for ChannelSectionTagFeedGroup;
      v112 = v82;
      goto LABEL_50;
    case 4u:
      v110 = sub_2195C36B4(v94, v79, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v96 = v201(v110);
      v111 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v112 = v79;
      goto LABEL_50;
    case 5u:
      v130 = sub_2195C36B4(v94, v76, type metadata accessor for WeatherTagFeedGroup);
      v96 = v201(v130);
      v105 = type metadata accessor for WeatherTagFeedGroup;
      goto LABEL_37;
    case 6u:
      v91 = v151;
      sub_2195C36B4(v94, v151, type metadata accessor for PaywallTagFeedGroup);
      v133 = sub_21877D2E4(&unk_27CC0B8D8, type metadata accessor for PaywallTagFeedGroup);
      v96 = v200(v152, v133);
      v97 = type metadata accessor for PaywallTagFeedGroup;
      goto LABEL_49;
    case 7u:
      v121 = v155;
      v122 = v153;
      v123 = v156;
      (*(v155 + 32))(v153, v94, v156);
      v124 = sub_21877D2E4(&unk_27CC1C570, MEMORY[0x277D31BA8]);
      v96 = v200(v123, v124);
      (*(v121 + 8))(v122, v123);
      return v96;
    case 8u:
      v91 = v154;
      v136 = sub_2195C36B4(v94, v154, type metadata accessor for CuratedTagFeedGroup);
      v96 = v201(v136);
      v97 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_49;
    case 9u:
      v91 = v157;
      v115 = sub_2195C36B4(v94, v157, type metadata accessor for SportsRecordTagFeedGroup);
      v96 = v201(v115);
      v97 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_49;
    case 0xAu:
      v76 = v158;
      v135 = sub_2195C36B4(v94, v158, type metadata accessor for SportsNavigationTagFeedGroup);
      v96 = v201(v135);
      v105 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_37;
    case 0xBu:
      v91 = v160;
      v109 = sub_2195C36B4(v94, v160, type metadata accessor for SportsScheduleTagFeedGroup);
      v96 = v201(v109);
      v97 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_49;
    case 0xCu:
      v76 = v161;
      v114 = sub_2195C36B4(v94, v161, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v96 = v201(v114);
      v105 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_37;
    case 0xDu:
      v91 = v163;
      v132 = sub_2195C36B4(v94, v163, type metadata accessor for SportsFavoritesTagFeedGroup);
      v96 = v201(v132);
      v97 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_49;
    case 0xEu:
      v76 = v164;
      v107 = sub_2195C36B4(v94, v164, type metadata accessor for SportsScoresTagFeedGroup);
      v96 = v201(v107);
      v105 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_37;
    case 0xFu:
      v91 = v166;
      v119 = sub_2195C36B4(v94, v166, type metadata accessor for SportsLinksTagFeedGroup);
      v96 = v201(v119);
      v97 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_49;
    case 0x10u:
      v76 = v167;
      v104 = sub_2195C36B4(v94, v167, type metadata accessor for MySportsTopicTagFeedGroup);
      v96 = v201(v104);
      v105 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_37;
    case 0x11u:
      v91 = v169;
      v127 = sub_2195C36B4(v94, v169, type metadata accessor for SportsStandingsTagFeedGroup);
      v96 = v201(v127);
      v97 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_49;
    case 0x12u:
      v91 = v170;
      v134 = sub_2195C36B4(v94, v170, type metadata accessor for SportsBracketTagFeedGroup);
      v96 = v201(v134);
      v97 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_49;
    case 0x13u:
      v91 = v171;
      v142 = sub_2195C36B4(v94, v171, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v96 = v201(v142);
      v97 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_49;
    case 0x14u:
      v91 = v172;
      v129 = sub_2195C36B4(v94, v172, type metadata accessor for SportsEventInfoTagFeedGroup);
      v96 = v201(v129);
      v97 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_49;
    case 0x15u:
      v91 = v174;
      v131 = sub_2195C36B4(v94, v174, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v96 = v201(v131);
      v97 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_49;
    case 0x16u:
      v91 = v175;
      v140 = sub_2195C36B4(v94, v175, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v96 = v201(v140);
      v97 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_49;
    case 0x17u:
      v91 = v176;
      v144 = sub_2195C36B4(v94, v176, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v96 = v201(v144);
      v97 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_49;
    case 0x18u:
      v91 = v173;
      v117 = sub_2195C36B4(v94, v173, type metadata accessor for HighlightsTagFeedGroup);
      v96 = v201(v117);
      v97 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_49;
    case 0x19u:
      v76 = v177;
      v116 = sub_2195C36B4(v94, v177, type metadata accessor for ForYouTagFeedGroup);
      v96 = v201(v116);
      v105 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_37;
    case 0x1Au:
      v91 = v179;
      v148 = sub_2195C36B4(v94, v179, type metadata accessor for ChannelRecipesTagFeedGroup);
      v96 = v201(v148);
      v97 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Bu:
      v91 = v180;
      v102 = sub_2195C36B4(v94, v180, type metadata accessor for ForYouRecipesTagFeedGroup);
      v96 = v201(v102);
      v97 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Cu:
      v91 = v181;
      v145 = sub_2195C36B4(v94, v181, type metadata accessor for RecentStoriesTagFeedGroup);
      v96 = v201(v145);
      v97 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_49;
    case 0x1Du:
      v91 = v182;
      v146 = sub_2195C36B4(v94, v182, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v96 = v201(v146);
      v97 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Eu:
      v76 = v183;
      v137 = sub_2195C36B4(v94, v183, type metadata accessor for DateRangeTagFeedGroup);
      v96 = v201(v137);
      v105 = type metadata accessor for DateRangeTagFeedGroup;
LABEL_37:
      v111 = v105;
      v112 = v76;
      goto LABEL_50;
    case 0x1Fu:
      v91 = v185;
      v126 = sub_2195C36B4(v94, v185, type metadata accessor for SportsOnboardingTagFeedGroup);
      v96 = v201(v126);
      v97 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_49;
    case 0x20u:
      v91 = v186;
      v138 = sub_2195C36B4(v94, v186, type metadata accessor for SportsMastheadTagFeedGroup);
      v96 = v201(v138);
      v97 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_49;
    case 0x21u:
      v91 = v187;
      v108 = sub_2195C36B4(v94, v187, type metadata accessor for SportsEventTopicTagFeedGroup);
      v96 = v201(v108);
      v97 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_49;
    case 0x22u:
      v91 = v188;
      v103 = sub_2195C36B4(v94, v188, type metadata accessor for PuzzleListTagFeedGroup);
      v96 = v201(v103);
      v97 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_49;
    case 0x23u:
      v91 = v189;
      v100 = sub_2195C36B4(v94, v189, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v96 = v201(v100);
      v97 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_49;
    case 0x24u:
      v91 = v190;
      v101 = sub_2195C36B4(v94, v190, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v96 = v201(v101);
      v97 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_49;
    case 0x25u:
      v91 = v191;
      v99 = sub_2195C36B4(v94, v191, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v96 = v201(v99);
      v97 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_49;
    case 0x26u:
      v91 = v192;
      v147 = sub_2195C36B4(v94, v192, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v96 = v201(v147);
      v97 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_49;
    case 0x27u:
      v91 = v193;
      v141 = sub_2195C36B4(v94, v193, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v96 = v201(v141);
      v97 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_49;
    case 0x28u:
      v91 = v194;
      v113 = sub_2195C36B4(v94, v194, type metadata accessor for AffinityTagFeedGroup);
      v96 = v201(v113);
      v97 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_49;
    case 0x29u:
      v91 = v195;
      v128 = sub_2195C36B4(v94, v195, type metadata accessor for SponsoredBannerTagFeedGroup);
      v96 = v201(v128);
      v97 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_49;
    case 0x2Au:
      v91 = v196;
      v143 = sub_2195C36B4(v94, v196, type metadata accessor for LatestRecipesTagFeedGroup);
      v96 = v201(v143);
      v97 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Bu:
      v91 = v197;
      v98 = sub_2195C36B4(v94, v197, type metadata accessor for SavedRecipesTagFeedGroup);
      v96 = v201(v98);
      v97 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Cu:
      v91 = v198;
      v106 = sub_2195C36B4(v94, v198, type metadata accessor for TrendingRecipesTagFeedGroup);
      v96 = v201(v106);
      v97 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Du:
      v91 = v199;
      v139 = sub_2195C36B4(v94, v199, type metadata accessor for TopicRecipesTagFeedGroup);
      v96 = v201(v139);
      v97 = type metadata accessor for TopicRecipesTagFeedGroup;
      goto LABEL_49;
    default:
      v95 = sub_2195C36B4(v94, v91, type metadata accessor for ArticleListTagFeedGroup);
      v96 = v201(v95);
      v97 = type metadata accessor for ArticleListTagFeedGroup;
LABEL_49:
      v111 = v97;
      v112 = v91;
LABEL_50:
      sub_2195C359C(v112, v111);
      return v96;
  }
}

uint64_t sub_2195B0044@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v1, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v20 = *MEMORY[0x277D32668];
      v21 = sub_219BEF564();
      (*(*(v21 - 8) + 104))(a1, v20, v21);
      v15 = MEMORY[0x277D320D0];
      goto LABEL_22;
    case 3u:
      sub_2195C36B4(v8, v5, type metadata accessor for ChannelSectionTagFeedGroup);
      v22 = *(v3 + 20);
      v23 = sub_219BEE6F4();
      (*(*(v23 - 8) + 16))(a1, &v5[v22], v23);
      v24 = type metadata accessor for ChannelSectionTagFeedGroup;
      v25 = v5;
      goto LABEL_23;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x1Fu:
    case 0x20u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x29u:
    case 0x2Bu:
    case 0x2Cu:
      sub_2195C359C(v8, type metadata accessor for TagFeedGroup);
      v9 = MEMORY[0x277D320E0];
      goto LABEL_3;
    case 8u:
    case 0x28u:
      sub_2195C359C(v8, type metadata accessor for TagFeedGroup);
      v16 = MEMORY[0x277D329D8];
      goto LABEL_7;
    case 0xCu:
      v19 = MEMORY[0x277D32978];
      goto LABEL_21;
    case 0x10u:
      v19 = MEMORY[0x277D32960];
      goto LABEL_21;
    case 0x17u:
      v19 = MEMORY[0x277D329C8];
      goto LABEL_21;
    case 0x18u:
      v19 = MEMORY[0x277D32970];
      goto LABEL_21;
    case 0x19u:
      v26 = sub_2195B04A4();
      if (v26 && (v27 = [v26 isFoodHub], swift_unknownObjectRelease(), v27))
      {
        v19 = MEMORY[0x277D32938];
      }

      else
      {
        v19 = MEMORY[0x277D32968];
      }

      goto LABEL_21;
    case 0x1Au:
    case 0x1Bu:
    case 0x1Du:
    case 0x2Au:
    case 0x2Du:
      v13 = *MEMORY[0x277D32840];
      v14 = sub_219BEF9C4();
      (*(*(v14 - 8) + 104))(a1, v13, v14);
      v15 = MEMORY[0x277D320D8];
      goto LABEL_22;
    case 0x1Cu:
      v19 = MEMORY[0x277D32980];
      goto LABEL_21;
    case 0x1Eu:
      v19 = MEMORY[0x277D32948];
      goto LABEL_21;
    case 0x21u:
      v19 = MEMORY[0x277D329B8];
LABEL_21:
      v28 = *v19;
      v29 = sub_219BEFBD4();
      (*(*(v29 - 8) + 104))(a1, v28, v29);
      v15 = MEMORY[0x277D320E8];
LABEL_22:
      v30 = *v15;
      v31 = sub_219BEE6F4();
      (*(*(v31 - 8) + 104))(a1, v30, v31);
      v24 = type metadata accessor for TagFeedGroup;
      v25 = v8;
LABEL_23:
      result = sub_2195C359C(v25, v24);
      break;
    default:
      sub_2195C359C(v8, type metadata accessor for TagFeedGroup);
      v16 = MEMORY[0x277D32900];
LABEL_7:
      v17 = *v16;
      v18 = sub_219BEFBD4();
      (*(*(v18 - 8) + 104))(a1, v17, v18);
      v9 = MEMORY[0x277D320E8];
LABEL_3:
      v10 = *v9;
      v11 = sub_219BEE6F4();
      result = (*(*(v11 - 8) + 104))(a1, v10, v11);
      break;
  }

  return result;
}

uint64_t sub_2195B04A4()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v181 = &v139 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v180 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v179 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v178 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v177 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v176 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v175 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v174 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v173 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v172 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v171 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v170 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v169 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v168 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v166);
  v167 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v165 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v164 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v163 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v162 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v160);
  v161 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v159 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v158 = &v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v157 = &v139 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v156 = &v139 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v155 = &v139 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v154 = &v139 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v153 = &v139 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v152 = &v139 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v150);
  v151 = &v139 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v55 - 8);
  v149 = &v139 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v147);
  v148 = &v139 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v58 - 8);
  v146 = &v139 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v144);
  v145 = &v139 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v61 - 8);
  v143 = &v139 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v141);
  v142 = &v139 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v64 - 8);
  v140 = &v139 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v66 - 8);
  v139 = &v139 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v68);
  v70 = &v139 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v71 - 8);
  v73 = &v139 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v74 - 8);
  v76 = &v139 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v77);
  v79 = &v139 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v80 - 8);
  v82 = &v139 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BF1904();
  v84 = *(v83 - 8);
  v183 = v83;
  v184 = v84;
  MEMORY[0x28223BE20](v83);
  v182 = &v139 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v86 - 8);
  v88 = &v139 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v89);
  v91 = &v139 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v185, v91);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2195C36B4(v91, v82, type metadata accessor for PromotedArticleListTagFeedGroup);
      v118 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v118, v183);
      v112 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v113 = v82;
      break;
    case 2u:
      sub_2195C36B4(v91, v79, type metadata accessor for IssueListTagFeedGroup);
      v92 = *&v79[*(v77 + 32)];
      swift_unknownObjectRetain();
      v112 = type metadata accessor for IssueListTagFeedGroup;
      v113 = v79;
      break;
    case 3u:
      sub_2195C36B4(v91, v76, type metadata accessor for ChannelSectionTagFeedGroup);
      v115 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v115, v183);
      v112 = type metadata accessor for ChannelSectionTagFeedGroup;
      v113 = v76;
      break;
    case 4u:
      sub_2195C36B4(v91, v73, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v110 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v110, v183);
      v94 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      goto LABEL_46;
    case 5u:
      sub_2195C36B4(v91, v70, type metadata accessor for WeatherTagFeedGroup);
      v125 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v125, v183);
      v112 = type metadata accessor for WeatherTagFeedGroup;
      v113 = v70;
      break;
    case 6u:
    case 7u:
    case 0x29u:
      sub_2195C359C(v91, type metadata accessor for TagFeedGroup);
      return 0;
    case 8u:
      v73 = v139;
      sub_2195C36B4(v91, v139, type metadata accessor for CuratedTagFeedGroup);
      v107 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v107, v183);
      v94 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_46;
    case 9u:
      v73 = v140;
      sub_2195C36B4(v91, v140, type metadata accessor for SportsRecordTagFeedGroup);
      v124 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v124, v183);
      v94 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_46;
    case 0xAu:
      v73 = v142;
      sub_2195C36B4(v91, v142, type metadata accessor for SportsNavigationTagFeedGroup);
      v104 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v104, v183);
      v94 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_46;
    case 0xBu:
      v73 = v143;
      sub_2195C36B4(v91, v143, type metadata accessor for SportsScheduleTagFeedGroup);
      v106 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v106, v183);
      v94 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_46;
    case 0xCu:
      v73 = v145;
      sub_2195C36B4(v91, v145, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v122 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v122, v183);
      v94 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_46;
    case 0xDu:
      v73 = v146;
      sub_2195C36B4(v91, v146, type metadata accessor for SportsFavoritesTagFeedGroup);
      v102 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v102, v183);
      v94 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_46;
    case 0xEu:
      v73 = v148;
      sub_2195C36B4(v91, v148, type metadata accessor for SportsScoresTagFeedGroup);
      v111 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v111, v183);
      v94 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_46;
    case 0xFu:
      v73 = v149;
      sub_2195C36B4(v91, v149, type metadata accessor for SportsLinksTagFeedGroup);
      v100 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v100, v183);
      v94 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_46;
    case 0x10u:
      v73 = v151;
      sub_2195C36B4(v91, v151, type metadata accessor for MySportsTopicTagFeedGroup);
      v116 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v116, v183);
      v94 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_46;
    case 0x11u:
      v73 = v152;
      sub_2195C36B4(v91, v152, type metadata accessor for SportsStandingsTagFeedGroup);
      v123 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v123, v183);
      v94 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_46;
    case 0x12u:
      v73 = v153;
      sub_2195C36B4(v91, v153, type metadata accessor for SportsBracketTagFeedGroup);
      v131 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v131, v183);
      v94 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_46;
    case 0x13u:
      v73 = v154;
      sub_2195C36B4(v91, v154, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v120 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v120, v183);
      v94 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_46;
    case 0x14u:
      v73 = v155;
      sub_2195C36B4(v91, v155, type metadata accessor for SportsEventInfoTagFeedGroup);
      v121 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v121, v183);
      v94 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_46;
    case 0x15u:
      v73 = v157;
      sub_2195C36B4(v91, v157, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v129 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v129, v183);
      v94 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_46;
    case 0x16u:
      v73 = v158;
      sub_2195C36B4(v91, v158, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v133 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v133, v183);
      v94 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_46;
    case 0x17u:
      v73 = v159;
      sub_2195C36B4(v91, v159, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v109 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v109, v183);
      v94 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_46;
    case 0x18u:
      v73 = v156;
      sub_2195C36B4(v91, v156, type metadata accessor for HighlightsTagFeedGroup);
      v108 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v108, v183);
      v94 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_46;
    case 0x19u:
      v73 = v161;
      sub_2195C36B4(v91, v161, type metadata accessor for ForYouTagFeedGroup);
      v137 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v137, v183);
      v94 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_46;
    case 0x1Au:
      v73 = v162;
      sub_2195C36B4(v91, v162, type metadata accessor for ChannelRecipesTagFeedGroup);
      v98 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v98, v183);
      v94 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x1Bu:
      v73 = v163;
      sub_2195C36B4(v91, v163, type metadata accessor for ForYouRecipesTagFeedGroup);
      v134 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v134, v183);
      v94 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x1Cu:
      v73 = v164;
      sub_2195C36B4(v91, v164, type metadata accessor for RecentStoriesTagFeedGroup);
      v135 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v135, v183);
      v94 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_46;
    case 0x1Du:
      v73 = v165;
      sub_2195C36B4(v91, v165, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v126 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v126, v183);
      v94 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x1Eu:
      v73 = v167;
      sub_2195C36B4(v91, v167, type metadata accessor for DateRangeTagFeedGroup);
      v114 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v114, v183);
      v94 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_46;
    case 0x1Fu:
      v73 = v168;
      sub_2195C36B4(v91, v168, type metadata accessor for SportsOnboardingTagFeedGroup);
      v127 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v127, v183);
      v94 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_46;
    case 0x20u:
      v73 = v169;
      sub_2195C36B4(v91, v169, type metadata accessor for SportsMastheadTagFeedGroup);
      v103 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v103, v183);
      v94 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_46;
    case 0x21u:
      v73 = v170;
      sub_2195C36B4(v91, v170, type metadata accessor for SportsEventTopicTagFeedGroup);
      v99 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v99, v183);
      v94 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_46;
    case 0x22u:
      v73 = v171;
      sub_2195C36B4(v91, v171, type metadata accessor for PuzzleListTagFeedGroup);
      v96 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v96, v183);
      v94 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_46;
    case 0x23u:
      v73 = v172;
      sub_2195C36B4(v91, v172, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v97 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v97, v183);
      v94 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_46;
    case 0x24u:
      v73 = v173;
      sub_2195C36B4(v91, v173, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v95 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v95, v183);
      v94 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_46;
    case 0x25u:
      v73 = v174;
      sub_2195C36B4(v91, v174, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v136 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v136, v183);
      v94 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_46;
    case 0x26u:
      v73 = v175;
      sub_2195C36B4(v91, v175, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v130 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v130, v183);
      v94 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_46;
    case 0x27u:
      v73 = v176;
      sub_2195C36B4(v91, v176, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v105 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v105, v183);
      v94 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_46;
    case 0x28u:
      v73 = v177;
      sub_2195C36B4(v91, v177, type metadata accessor for AffinityTagFeedGroup);
      v119 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v119, v183);
      v94 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_46;
    case 0x2Au:
      v73 = v178;
      sub_2195C36B4(v91, v178, type metadata accessor for LatestRecipesTagFeedGroup);
      v132 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v132, v183);
      v94 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x2Bu:
      v73 = v179;
      sub_2195C36B4(v91, v179, type metadata accessor for SavedRecipesTagFeedGroup);
      v93 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v93, v183);
      v94 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x2Cu:
      v73 = v180;
      sub_2195C36B4(v91, v180, type metadata accessor for TrendingRecipesTagFeedGroup);
      v101 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v101, v183);
      v94 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_46;
    case 0x2Du:
      v73 = v181;
      sub_2195C36B4(v91, v181, type metadata accessor for TopicRecipesTagFeedGroup);
      v128 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v128, v183);
      v94 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_46:
      v112 = v94;
      v113 = v73;
      break;
    default:
      sub_2195C36B4(v91, v88, type metadata accessor for ArticleListTagFeedGroup);
      v117 = v182;
      sub_219BED874();
      v92 = sub_219BF1844();
      (*(v184 + 8))(v117, v183);
      v112 = type metadata accessor for ArticleListTagFeedGroup;
      v113 = v88;
      break;
  }

  sub_2195C359C(v113, v112);
  return v92;
}

unint64_t sub_2195B2570()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v147 = &v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v146 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v145 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v144 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v143 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v142 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v141 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v140 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v139 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v138 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v137 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v136 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v135 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v134 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v133 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v132);
  v131 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v130 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v129 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v128 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v127 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v126);
  v125 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v124 = &v102 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v123 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v122 = &v102 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v121 = &v102 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v120 = &v102 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v119 = &v102 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v118 = &v102 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v54 - 8);
  v117 = &v102 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v116);
  v115 = &v102 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v57 - 8);
  v114 = &v102 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v113);
  v112 = &v102 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v60 - 8);
  v111 = &v102 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v110);
  v109 = &v102 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v63 - 8);
  v108 = &v102 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v107);
  v106 = &v102 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v66 - 8);
  v105 = &v102 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v68 - 8);
  v104 = &v102 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_219BED544();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v71 = &v102 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v72);
  v74 = &v102 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v75 - 8);
  v77 = &v102 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v78 - 8);
  v80 = &v102 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v81 - 8);
  v83 = &v102 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v84 - 8);
  v86 = &v102 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v87 - 8);
  v89 = &v102 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v90);
  v92 = &v102 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v148, v92);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2195C36B4(v92, v86, type metadata accessor for PromotedArticleListTagFeedGroup);
      v93 = sub_219BED7E4();
      v96 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v97 = v86;
      goto LABEL_52;
    case 2u:
      sub_2195C36B4(v92, v83, type metadata accessor for IssueListTagFeedGroup);
      v93 = *(v83 + 2);
      if (v93 >> 62)
      {
        sub_2195C35FC();

        v101 = sub_219BF7534();

        v93 = v101;
      }

      else
      {

        sub_219BF7924();
        sub_2195C35FC();
      }

      v95 = type metadata accessor for IssueListTagFeedGroup;
      goto LABEL_39;
    case 3u:
      sub_2195C36B4(v92, v80, type metadata accessor for ChannelSectionTagFeedGroup);
      v93 = sub_219BED7E4();
      v96 = type metadata accessor for ChannelSectionTagFeedGroup;
      v97 = v80;
      goto LABEL_52;
    case 4u:
      sub_2195C36B4(v92, v77, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v93 = sub_219BED7E4();
      v96 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v97 = v77;
      goto LABEL_52;
    case 5u:
      sub_2195C36B4(v92, v74, type metadata accessor for WeatherTagFeedGroup);
      v93 = sub_219BED7E4();
      v96 = type metadata accessor for WeatherTagFeedGroup;
      v97 = v74;
      goto LABEL_52;
    case 6u:
      sub_2195C359C(v92, type metadata accessor for TagFeedGroup);
      return MEMORY[0x277D84F90];
    case 7u:
      v98 = v102;
      v99 = v103;
      (*(v102 + 32))(v71, v92, v103);
      v93 = sub_219BED4F4();
      (*(v98 + 8))(v71, v99);
      return v93;
    case 8u:
      v89 = v104;
      sub_2195C36B4(v92, v104, type metadata accessor for CuratedTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_51;
    case 9u:
      v89 = v105;
      sub_2195C36B4(v92, v105, type metadata accessor for SportsRecordTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_51;
    case 0xAu:
      v83 = v106;
      sub_2195C36B4(v92, v106, type metadata accessor for SportsNavigationTagFeedGroup);
      v93 = sub_219BED7E4();
      v95 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_39;
    case 0xBu:
      v89 = v108;
      sub_2195C36B4(v92, v108, type metadata accessor for SportsScheduleTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_51;
    case 0xCu:
      v83 = v109;
      sub_2195C36B4(v92, v109, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v93 = sub_219BED7E4();
      v95 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_39;
    case 0xDu:
      v89 = v111;
      sub_2195C36B4(v92, v111, type metadata accessor for SportsFavoritesTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_51;
    case 0xEu:
      v83 = v112;
      sub_2195C36B4(v92, v112, type metadata accessor for SportsScoresTagFeedGroup);
      v93 = sub_219BED7E4();
      v95 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_39;
    case 0xFu:
      v89 = v114;
      sub_2195C36B4(v92, v114, type metadata accessor for SportsLinksTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_51;
    case 0x10u:
      v83 = v115;
      sub_2195C36B4(v92, v115, type metadata accessor for MySportsTopicTagFeedGroup);
      v93 = sub_219BED7E4();
      v95 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_39;
    case 0x11u:
      v89 = v117;
      sub_2195C36B4(v92, v117, type metadata accessor for SportsStandingsTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_51;
    case 0x12u:
      v89 = v118;
      sub_2195C36B4(v92, v118, type metadata accessor for SportsBracketTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_51;
    case 0x13u:
      v89 = v119;
      sub_2195C36B4(v92, v119, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_51;
    case 0x14u:
      v89 = v120;
      sub_2195C36B4(v92, v120, type metadata accessor for SportsEventInfoTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_51;
    case 0x15u:
      v89 = v121;
      sub_2195C36B4(v92, v121, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_51;
    case 0x16u:
      v89 = v122;
      sub_2195C36B4(v92, v122, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_51;
    case 0x17u:
      v89 = v123;
      sub_2195C36B4(v92, v123, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_51;
    case 0x18u:
      v89 = v124;
      sub_2195C36B4(v92, v124, type metadata accessor for HighlightsTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_51;
    case 0x19u:
      v83 = v125;
      sub_2195C36B4(v92, v125, type metadata accessor for ForYouTagFeedGroup);
      v93 = sub_219BED7E4();
      v95 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_39;
    case 0x1Au:
      v89 = v127;
      sub_2195C36B4(v92, v127, type metadata accessor for ChannelRecipesTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_51;
    case 0x1Bu:
      v89 = v128;
      sub_2195C36B4(v92, v128, type metadata accessor for ForYouRecipesTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_51;
    case 0x1Cu:
      v89 = v129;
      sub_2195C36B4(v92, v129, type metadata accessor for RecentStoriesTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_51;
    case 0x1Du:
      v89 = v130;
      sub_2195C36B4(v92, v130, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_51;
    case 0x1Eu:
      v83 = v131;
      sub_2195C36B4(v92, v131, type metadata accessor for DateRangeTagFeedGroup);
      v93 = sub_219BED7E4();
      v95 = type metadata accessor for DateRangeTagFeedGroup;
LABEL_39:
      v96 = v95;
      v97 = v83;
      goto LABEL_52;
    case 0x1Fu:
      v89 = v133;
      sub_2195C36B4(v92, v133, type metadata accessor for SportsOnboardingTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_51;
    case 0x20u:
      v89 = v134;
      sub_2195C36B4(v92, v134, type metadata accessor for SportsMastheadTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_51;
    case 0x21u:
      v89 = v135;
      sub_2195C36B4(v92, v135, type metadata accessor for SportsEventTopicTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_51;
    case 0x22u:
      v89 = v136;
      sub_2195C36B4(v92, v136, type metadata accessor for PuzzleListTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_51;
    case 0x23u:
      v89 = v137;
      sub_2195C36B4(v92, v137, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_51;
    case 0x24u:
      v89 = v138;
      sub_2195C36B4(v92, v138, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_51;
    case 0x25u:
      v89 = v139;
      sub_2195C36B4(v92, v139, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_51;
    case 0x26u:
      v89 = v140;
      sub_2195C36B4(v92, v140, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_51;
    case 0x27u:
      v89 = v141;
      sub_2195C36B4(v92, v141, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_51;
    case 0x28u:
      v89 = v142;
      sub_2195C36B4(v92, v142, type metadata accessor for AffinityTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_51;
    case 0x29u:
      v89 = v143;
      sub_2195C36B4(v92, v143, type metadata accessor for SponsoredBannerTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_51;
    case 0x2Au:
      v89 = v144;
      sub_2195C36B4(v92, v144, type metadata accessor for LatestRecipesTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_51;
    case 0x2Bu:
      v89 = v145;
      sub_2195C36B4(v92, v145, type metadata accessor for SavedRecipesTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_51;
    case 0x2Cu:
      v89 = v146;
      sub_2195C36B4(v92, v146, type metadata accessor for TrendingRecipesTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_51;
    case 0x2Du:
      v89 = v147;
      sub_2195C36B4(v92, v147, type metadata accessor for TopicRecipesTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for TopicRecipesTagFeedGroup;
      goto LABEL_51;
    default:
      sub_2195C36B4(v92, v89, type metadata accessor for ArticleListTagFeedGroup);
      v93 = sub_219BED7E4();
      v94 = type metadata accessor for ArticleListTagFeedGroup;
LABEL_51:
      v96 = v94;
      v97 = v89;
LABEL_52:
      sub_2195C359C(v97, v96);
      return v93;
  }
}

unint64_t sub_2195B4054()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v143 = &v98 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v142 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v141 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v140 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v139 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v138 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v137 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v136 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v135 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v134 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v133 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v132 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v131 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v130 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v129 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v128);
  v127 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v126 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v125 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v124 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v123 = &v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v122);
  v121 = &v98 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v120 = &v98 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v119 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v118 = &v98 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v46 - 8);
  v117 = &v98 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v48 - 8);
  v116 = &v98 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v115 = &v98 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v52 - 8);
  v114 = &v98 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v54 - 8);
  v113 = &v98 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v112);
  v111 = &v98 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v57 - 8);
  v110 = &v98 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v109);
  v108 = &v98 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v60 - 8);
  v107 = &v98 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v106);
  v105 = &v98 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v63 - 8);
  v104 = &v98 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v103);
  v102 = &v98 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v66 - 8);
  v101 = &v98 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v68 - 8);
  v100 = &v98 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BED544();
  v99 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v72 = &v98 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v73);
  v75 = &v98 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v76 - 8);
  v78 = &v98 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v79 - 8);
  v81 = &v98 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v82 - 8);
  v84 = &v98 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v85 - 8);
  v87 = &v98 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v88);
  v90 = &v98 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v144, v90);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2195C36B4(v90, v84, type metadata accessor for PromotedArticleListTagFeedGroup);
      v91 = sub_219BED804();
      v94 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v95 = v84;
      goto LABEL_49;
    case 2u:
    case 6u:
      sub_2195C359C(v90, type metadata accessor for TagFeedGroup);
      return sub_2194AE6E8(MEMORY[0x277D84F90]);
    case 3u:
      sub_2195C36B4(v90, v81, type metadata accessor for ChannelSectionTagFeedGroup);
      v91 = sub_219BED804();
      v94 = type metadata accessor for ChannelSectionTagFeedGroup;
      v95 = v81;
      goto LABEL_49;
    case 4u:
      sub_2195C36B4(v90, v78, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v91 = sub_219BED804();
      v94 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v95 = v78;
      goto LABEL_49;
    case 5u:
      sub_2195C36B4(v90, v75, type metadata accessor for WeatherTagFeedGroup);
      v91 = sub_219BED804();
      v93 = type metadata accessor for WeatherTagFeedGroup;
      goto LABEL_36;
    case 7u:
      v96 = v99;
      (*(v99 + 32))(v72, v90, v70);
      v91 = sub_219BED504();
      (*(v96 + 8))(v72, v70);
      return v91;
    case 8u:
      v87 = v100;
      sub_2195C36B4(v90, v100, type metadata accessor for CuratedTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_48;
    case 9u:
      v87 = v101;
      sub_2195C36B4(v90, v101, type metadata accessor for SportsRecordTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_48;
    case 0xAu:
      v75 = v102;
      sub_2195C36B4(v90, v102, type metadata accessor for SportsNavigationTagFeedGroup);
      v91 = sub_219BED804();
      v93 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_36;
    case 0xBu:
      v87 = v104;
      sub_2195C36B4(v90, v104, type metadata accessor for SportsScheduleTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_48;
    case 0xCu:
      v75 = v105;
      sub_2195C36B4(v90, v105, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v91 = sub_219BED804();
      v93 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_36;
    case 0xDu:
      v87 = v107;
      sub_2195C36B4(v90, v107, type metadata accessor for SportsFavoritesTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_48;
    case 0xEu:
      v75 = v108;
      sub_2195C36B4(v90, v108, type metadata accessor for SportsScoresTagFeedGroup);
      v91 = sub_219BED804();
      v93 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_36;
    case 0xFu:
      v87 = v110;
      sub_2195C36B4(v90, v110, type metadata accessor for SportsLinksTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_48;
    case 0x10u:
      v75 = v111;
      sub_2195C36B4(v90, v111, type metadata accessor for MySportsTopicTagFeedGroup);
      v91 = sub_219BED804();
      v93 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_36;
    case 0x11u:
      v87 = v113;
      sub_2195C36B4(v90, v113, type metadata accessor for SportsStandingsTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_48;
    case 0x12u:
      v87 = v114;
      sub_2195C36B4(v90, v114, type metadata accessor for SportsBracketTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_48;
    case 0x13u:
      v87 = v115;
      sub_2195C36B4(v90, v115, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_48;
    case 0x14u:
      v87 = v116;
      sub_2195C36B4(v90, v116, type metadata accessor for SportsEventInfoTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_48;
    case 0x15u:
      v87 = v117;
      sub_2195C36B4(v90, v117, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_48;
    case 0x16u:
      v87 = v118;
      sub_2195C36B4(v90, v118, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_48;
    case 0x17u:
      v87 = v119;
      sub_2195C36B4(v90, v119, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_48;
    case 0x18u:
      v87 = v120;
      sub_2195C36B4(v90, v120, type metadata accessor for HighlightsTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_48;
    case 0x19u:
      v75 = v121;
      sub_2195C36B4(v90, v121, type metadata accessor for ForYouTagFeedGroup);
      v91 = sub_219BED804();
      v93 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_36;
    case 0x1Au:
      v87 = v123;
      sub_2195C36B4(v90, v123, type metadata accessor for ChannelRecipesTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x1Bu:
      v87 = v124;
      sub_2195C36B4(v90, v124, type metadata accessor for ForYouRecipesTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x1Cu:
      v87 = v125;
      sub_2195C36B4(v90, v125, type metadata accessor for RecentStoriesTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_48;
    case 0x1Du:
      v87 = v126;
      sub_2195C36B4(v90, v126, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x1Eu:
      v75 = v127;
      sub_2195C36B4(v90, v127, type metadata accessor for DateRangeTagFeedGroup);
      v91 = sub_219BED804();
      v93 = type metadata accessor for DateRangeTagFeedGroup;
LABEL_36:
      v94 = v93;
      v95 = v75;
      goto LABEL_49;
    case 0x1Fu:
      v87 = v129;
      sub_2195C36B4(v90, v129, type metadata accessor for SportsOnboardingTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_48;
    case 0x20u:
      v87 = v130;
      sub_2195C36B4(v90, v130, type metadata accessor for SportsMastheadTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_48;
    case 0x21u:
      v87 = v131;
      sub_2195C36B4(v90, v131, type metadata accessor for SportsEventTopicTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_48;
    case 0x22u:
      v87 = v132;
      sub_2195C36B4(v90, v132, type metadata accessor for PuzzleListTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_48;
    case 0x23u:
      v87 = v133;
      sub_2195C36B4(v90, v133, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_48;
    case 0x24u:
      v87 = v134;
      sub_2195C36B4(v90, v134, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_48;
    case 0x25u:
      v87 = v135;
      sub_2195C36B4(v90, v135, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_48;
    case 0x26u:
      v87 = v136;
      sub_2195C36B4(v90, v136, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_48;
    case 0x27u:
      v87 = v137;
      sub_2195C36B4(v90, v137, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_48;
    case 0x28u:
      v87 = v138;
      sub_2195C36B4(v90, v138, type metadata accessor for AffinityTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_48;
    case 0x29u:
      v87 = v139;
      sub_2195C36B4(v90, v139, type metadata accessor for SponsoredBannerTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_48;
    case 0x2Au:
      v87 = v140;
      sub_2195C36B4(v90, v140, type metadata accessor for LatestRecipesTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x2Bu:
      v87 = v141;
      sub_2195C36B4(v90, v141, type metadata accessor for SavedRecipesTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x2Cu:
      v87 = v142;
      sub_2195C36B4(v90, v142, type metadata accessor for TrendingRecipesTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_48;
    case 0x2Du:
      v87 = v143;
      sub_2195C36B4(v90, v143, type metadata accessor for TopicRecipesTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for TopicRecipesTagFeedGroup;
      goto LABEL_48;
    default:
      sub_2195C36B4(v90, v87, type metadata accessor for ArticleListTagFeedGroup);
      v91 = sub_219BED804();
      v92 = type metadata accessor for ArticleListTagFeedGroup;
LABEL_48:
      v94 = v92;
      v95 = v87;
LABEL_49:
      sub_2195C359C(v95, v94);
      return v91;
  }
}

uint64_t sub_2195B5A50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2195AABE0();
  *a1 = result;
  return result;
}

uint64_t sub_2195B5B14(uint64_t a1)
{
  v2 = sub_21877D2E4(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_2195B5B90()
{
  sub_21877D2E4(qword_280EDE9D0, type metadata accessor for TagFeedGroup);

  return sub_219BF1174();
}

uint64_t sub_2195B5C18(uint64_t a1)
{
  v2 = sub_21877D2E4(qword_280EDE9D0, type metadata accessor for TagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2195B5C88()
{
  v1 = v0;
  v2 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED544();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v1, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0x15u:
    case 0x17u:
    case 0x1Du:
    case 0x24u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0xD000000000000015;
    case 2u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      v18 = 0x206575737349;
      return v18 & 0xFFFFFFFFFFFFLL | 0x694C000000000000;
    case 3u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x536C656E6E616843;
    case 4u:
    case 0x29u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0xD000000000000017;
    case 5u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x72656874616557;
    case 6u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x6C6C6177796150;
    case 7u:
      (*(v9 + 32))(v11, v14, v8);
      v19 = sub_219BED524();
      (*(v9 + 8))(v11, v8);
      return v19;
    case 8u:
      sub_2195C36B4(v14, v7, type metadata accessor for CuratedTagFeedGroup);
      v22 = 0x2064657461727543;
      v23 = 0xE900000000000028;
      MEMORY[0x21CECC330](*&v7[*(v5 + 20)], *&v7[*(v5 + 20) + 8]);
      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v19 = v22;
      v20 = type metadata accessor for CuratedTagFeedGroup;
      v21 = v7;
      goto LABEL_27;
    case 9u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x52207374726F7053;
    case 0xAu:
    case 0x13u:
    case 0x14u:
    case 0x26u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0xD000000000000011;
    case 0xBu:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x53207374726F7053;
    case 0xCu:
    case 0x16u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0xD000000000000012;
    case 0xDu:
    case 0x11u:
    case 0x21u:
    case 0x27u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0xD000000000000010;
    case 0xEu:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x53207374726F7053;
    case 0xFu:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x4C207374726F7053;
    case 0x10u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x74726F705320794DLL;
    case 0x12u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x42207374726F7053;
    case 0x18u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x6867696C68676948;
    case 0x19u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x756F59726F46;
    case 0x1Au:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x526C656E6E616843;
    case 0x1Bu:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      v17 = 0x756F59726F46;
      return v17 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
    case 0x1Cu:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x7453746E65636552;
    case 0x1Eu:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x676E615265746144;
    case 0x1Fu:
      sub_2195C36B4(v14, v4, type metadata accessor for SportsOnboardingTagFeedGroup);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_219BF7314();

      v22 = 0xD000000000000013;
      v23 = 0x8000000219D21F40;
      MEMORY[0x21CECC330](*&v4[*(v2 + 20)], *&v4[*(v2 + 20) + 8]);
      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v19 = v22;
      v20 = type metadata accessor for SportsOnboardingTagFeedGroup;
      v21 = v4;
LABEL_27:
      sub_2195C359C(v21, v20);
      return v19;
    case 0x20u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x4D207374726F7053;
    case 0x22u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      v18 = 0x656C7A7A7550;
      return v18 & 0xFFFFFFFFFFFFLL | 0x694C000000000000;
    case 0x23u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x7241656C7A7A7550;
    case 0x25u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x6546656C7A7A7550;
    case 0x28u:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x7974696E69666641;
    case 0x2Au:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      v17 = 0x74736574614CLL;
      return v17 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
    case 0x2Bu:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      v16 = 0x526465766153;
      goto LABEL_32;
    case 0x2Cu:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      return 0x676E69646E657254;
    case 0x2Du:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      v16 = 0x526369706F54;
LABEL_32:
      result = v16 & 0xFFFFFFFFFFFFLL | 0x6365000000000000;
      break;
    default:
      sub_2195C359C(v14, type metadata accessor for TagFeedGroup);
      result = 0x20656C6369747241;
      break;
  }

  return result;
}

uint64_t sub_2195B68F0()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v133 = &v92 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v132 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v131 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v130 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v129 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v128 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v127 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v126 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v125 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v124 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v123 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v122 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v121 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v120 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v119 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v118);
  v117 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v116 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v115 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v114 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v113 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v39 - 8);
  v112 = &v92 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v111 = &v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v43 - 8);
  v110 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v45 - 8);
  v109 = &v92 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v47 - 8);
  v108 = &v92 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v49 - 8);
  v107 = &v92 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v51 - 8);
  v106 = &v92 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v105);
  v104 = &v92 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v54 - 8);
  v103 = &v92 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v102);
  v101 = &v92 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v57 - 8);
  v100 = &v92 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v99);
  v98 = &v92 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v60 - 8);
  v97 = &v92 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v96);
  v95 = &v92 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v63 - 8);
  v94 = &v92 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v65 - 8);
  v93 = &v92 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_219BED544();
  v92 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v69 = &v92 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v70);
  v72 = &v92 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v73 - 8);
  v75 = &v92 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v76 - 8);
  v78 = &v92 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v79);
  v81 = &v92 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v82);
  v84 = &v92 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v134, v84);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      sub_2195C36B4(v84, v81, type metadata accessor for IssueListTagFeedGroup);
      v85 = *&v81[*(v79 + 36)];

      v89 = type metadata accessor for IssueListTagFeedGroup;
      v90 = v81;
      goto LABEL_46;
    case 3u:
      sub_2195C36B4(v84, v78, type metadata accessor for ChannelSectionTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for ChannelSectionTagFeedGroup;
      goto LABEL_45;
    case 4u:
      sub_2195C36B4(v84, v75, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v85 = sub_219BED774();
      v89 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v90 = v75;
      goto LABEL_46;
    case 5u:
      sub_2195C36B4(v84, v72, type metadata accessor for WeatherTagFeedGroup);
      v85 = sub_219BED774();
      v87 = type metadata accessor for WeatherTagFeedGroup;
      goto LABEL_33;
    case 7u:
      v88 = v92;
      (*(v92 + 32))(v69, v84, v67);
      v85 = sub_219BED4A4();
      (*(v88 + 8))(v69, v67);
      return v85;
    case 8u:
      v78 = v93;
      sub_2195C36B4(v84, v93, type metadata accessor for CuratedTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_45;
    case 9u:
      v78 = v94;
      sub_2195C36B4(v84, v94, type metadata accessor for SportsRecordTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_45;
    case 0xAu:
      v72 = v95;
      sub_2195C36B4(v84, v95, type metadata accessor for SportsNavigationTagFeedGroup);
      v85 = sub_219BED774();
      v87 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_33;
    case 0xBu:
      v78 = v97;
      sub_2195C36B4(v84, v97, type metadata accessor for SportsScheduleTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_45;
    case 0xCu:
      v72 = v98;
      sub_2195C36B4(v84, v98, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v85 = sub_219BED774();
      v87 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_33;
    case 0xDu:
      v78 = v100;
      sub_2195C36B4(v84, v100, type metadata accessor for SportsFavoritesTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_45;
    case 0xEu:
      v72 = v101;
      sub_2195C36B4(v84, v101, type metadata accessor for SportsScoresTagFeedGroup);
      v85 = sub_219BED774();
      v87 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_33;
    case 0xFu:
      v78 = v103;
      sub_2195C36B4(v84, v103, type metadata accessor for SportsLinksTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_45;
    case 0x10u:
      v72 = v104;
      sub_2195C36B4(v84, v104, type metadata accessor for MySportsTopicTagFeedGroup);
      v85 = sub_219BED774();
      v87 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_33;
    case 0x11u:
      v78 = v106;
      sub_2195C36B4(v84, v106, type metadata accessor for SportsStandingsTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_45;
    case 0x12u:
      v78 = v107;
      sub_2195C36B4(v84, v107, type metadata accessor for SportsBracketTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_45;
    case 0x13u:
      v78 = v108;
      sub_2195C36B4(v84, v108, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_45;
    case 0x14u:
      v78 = v109;
      sub_2195C36B4(v84, v109, type metadata accessor for SportsEventInfoTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_45;
    case 0x15u:
      v78 = v110;
      sub_2195C36B4(v84, v110, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_45;
    case 0x16u:
      v78 = v111;
      sub_2195C36B4(v84, v111, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_45;
    case 0x17u:
      v78 = v112;
      sub_2195C36B4(v84, v112, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_45;
    case 0x18u:
      v78 = v113;
      sub_2195C36B4(v84, v113, type metadata accessor for HighlightsTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_45;
    case 0x1Au:
      v78 = v114;
      sub_2195C36B4(v84, v114, type metadata accessor for ChannelRecipesTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x1Bu:
      v78 = v115;
      sub_2195C36B4(v84, v115, type metadata accessor for ForYouRecipesTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x1Du:
      v78 = v116;
      sub_2195C36B4(v84, v116, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x1Eu:
      v72 = v117;
      sub_2195C36B4(v84, v117, type metadata accessor for DateRangeTagFeedGroup);
      v85 = sub_219BED774();
      v87 = type metadata accessor for DateRangeTagFeedGroup;
LABEL_33:
      v89 = v87;
      v90 = v72;
      goto LABEL_46;
    case 0x1Fu:
      v78 = v119;
      sub_2195C36B4(v84, v119, type metadata accessor for SportsOnboardingTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_45;
    case 0x20u:
      v78 = v120;
      sub_2195C36B4(v84, v120, type metadata accessor for SportsMastheadTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_45;
    case 0x21u:
      v78 = v121;
      sub_2195C36B4(v84, v121, type metadata accessor for SportsEventTopicTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_45;
    case 0x22u:
      v78 = v122;
      sub_2195C36B4(v84, v122, type metadata accessor for PuzzleListTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_45;
    case 0x23u:
      v78 = v123;
      sub_2195C36B4(v84, v123, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_45;
    case 0x24u:
      v78 = v124;
      sub_2195C36B4(v84, v124, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_45;
    case 0x25u:
      v78 = v125;
      sub_2195C36B4(v84, v125, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_45;
    case 0x26u:
      v78 = v126;
      sub_2195C36B4(v84, v126, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_45;
    case 0x27u:
      v78 = v127;
      sub_2195C36B4(v84, v127, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_45;
    case 0x28u:
      v78 = v128;
      sub_2195C36B4(v84, v128, type metadata accessor for AffinityTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_45;
    case 0x29u:
      v78 = v129;
      sub_2195C36B4(v84, v129, type metadata accessor for SponsoredBannerTagFeedGroup);
      v85 = sub_219A06FD4();
      v86 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_45;
    case 0x2Au:
      v78 = v130;
      sub_2195C36B4(v84, v130, type metadata accessor for LatestRecipesTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x2Bu:
      v78 = v131;
      sub_2195C36B4(v84, v131, type metadata accessor for SavedRecipesTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x2Cu:
      v78 = v132;
      sub_2195C36B4(v84, v132, type metadata accessor for TrendingRecipesTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x2Du:
      v78 = v133;
      sub_2195C36B4(v84, v133, type metadata accessor for TopicRecipesTagFeedGroup);
      v85 = sub_219BED774();
      v86 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_45:
      v89 = v86;
      v90 = v78;
LABEL_46:
      sub_2195C359C(v90, v89);
      break;
    default:
      sub_2195C359C(v84, type metadata accessor for TagFeedGroup);
      v85 = 0;
      break;
  }

  return v85;
}

uint64_t sub_2195B81D4()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v150 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v149 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v148 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v147 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v146);
  v145 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v144 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v143);
  v142 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v141);
  v140 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v139);
  v138 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v137);
  v136 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v135);
  v134 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v133);
  v132 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v131);
  v130 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v129);
  v128 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v127);
  v126 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v125);
  v124 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v123 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v122);
  v121 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v120 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v119 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v118);
  v117 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v116);
  v115 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v114);
  v113 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v112);
  v111 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v110);
  v109 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v108);
  v107 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v106);
  v105 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v104);
  v103 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v102);
  v101 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v100);
  v99 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v98);
  v97 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v96);
  v95 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v94);
  v93 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v92);
  v91 = &v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v90);
  v89 = &v75 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v88);
  v87 = &v75 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v86);
  v85 = &v75 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v45 - 8);
  v84 = &v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_219BED544();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v75 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for PaywallTagFeedGroup();
  MEMORY[0x28223BE20](v80);
  v79 = &v75 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v78);
  v77 = &v75 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v76);
  v75 = &v75 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v51);
  v53 = &v75 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v54);
  v56 = &v75 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v57);
  v59 = &v75 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v60);
  v62 = &v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v63);
  v65 = &v75 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v151, v65);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2195C36B4(v65, v59, type metadata accessor for PromotedArticleListTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C560, type metadata accessor for PromotedArticleListTagFeedGroup);
      v66 = sub_219BEE8E4();
      v68 = type metadata accessor for PromotedArticleListTagFeedGroup;
      goto LABEL_25;
    case 2u:
      sub_2195C36B4(v65, v56, type metadata accessor for IssueListTagFeedGroup);
      sub_21877D2E4(&qword_27CC1DAB0, type metadata accessor for IssueListTagFeedGroup);
      v66 = sub_219BEE8E4();
      v69 = type metadata accessor for IssueListTagFeedGroup;
      v70 = v56;
      goto LABEL_50;
    case 3u:
      sub_2195C36B4(v65, v53, type metadata accessor for ChannelSectionTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C550, type metadata accessor for ChannelSectionTagFeedGroup);
      v66 = sub_219BEE8E4();
      v69 = type metadata accessor for ChannelSectionTagFeedGroup;
      v70 = v53;
      goto LABEL_50;
    case 4u:
      v62 = v75;
      sub_2195C36B4(v65, v75, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      sub_21877D2E4(&qword_27CC1A510, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      goto LABEL_49;
    case 5u:
      v62 = v77;
      sub_2195C36B4(v65, v77, type metadata accessor for WeatherTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C540, type metadata accessor for WeatherTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for WeatherTagFeedGroup;
      goto LABEL_49;
    case 6u:
      v62 = v79;
      sub_2195C36B4(v65, v79, type metadata accessor for PaywallTagFeedGroup);
      sub_21877D2E4(&qword_27CC0B8D0, type metadata accessor for PaywallTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for PaywallTagFeedGroup;
      goto LABEL_49;
    case 7u:
      v71 = v82;
      v72 = v81;
      v73 = v83;
      (*(v82 + 32))(v81, v65, v83);
      v66 = sub_219BEE8E4();
      (*(v71 + 8))(v72, v73);
      return v66;
    case 8u:
      v62 = v84;
      sub_2195C36B4(v65, v84, type metadata accessor for CuratedTagFeedGroup);
      v66 = sub_219BED7D4();
      v67 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_49;
    case 9u:
      v62 = v85;
      sub_2195C36B4(v65, v85, type metadata accessor for SportsRecordTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C530, type metadata accessor for SportsRecordTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_49;
    case 0xAu:
      v62 = v87;
      sub_2195C36B4(v65, v87, type metadata accessor for SportsNavigationTagFeedGroup);
      sub_21877D2E4(&qword_27CC192B8, type metadata accessor for SportsNavigationTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_49;
    case 0xBu:
      v62 = v89;
      sub_2195C36B4(v65, v89, type metadata accessor for SportsScheduleTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C520, type metadata accessor for SportsScheduleTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_49;
    case 0xCu:
      v62 = v91;
      sub_2195C36B4(v65, v91, type metadata accessor for SportsTopStoriesTagFeedGroup);
      sub_21877D2E4(&qword_27CC1A508, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_49;
    case 0xDu:
      v62 = v93;
      sub_2195C36B4(v65, v93, type metadata accessor for SportsFavoritesTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C510, type metadata accessor for SportsFavoritesTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_49;
    case 0xEu:
      v62 = v95;
      sub_2195C36B4(v65, v95, type metadata accessor for SportsScoresTagFeedGroup);
      sub_21877D2E4(&qword_280EC0190, type metadata accessor for SportsScoresTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_49;
    case 0xFu:
      v62 = v97;
      sub_2195C36B4(v65, v97, type metadata accessor for SportsLinksTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C500, type metadata accessor for SportsLinksTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_49;
    case 0x10u:
      v59 = v99;
      sub_2195C36B4(v65, v99, type metadata accessor for MySportsTopicTagFeedGroup);
      v66 = sub_219BED7D4();
      v68 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_25;
    case 0x11u:
      v62 = v101;
      sub_2195C36B4(v65, v101, type metadata accessor for SportsStandingsTagFeedGroup);
      sub_21877D2E4(&qword_27CC16058, type metadata accessor for SportsStandingsTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_49;
    case 0x12u:
      v62 = v103;
      sub_2195C36B4(v65, v103, type metadata accessor for SportsBracketTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C4F0, type metadata accessor for SportsBracketTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_49;
    case 0x13u:
      v62 = v105;
      sub_2195C36B4(v65, v105, type metadata accessor for SportsBoxScoresTagFeedGroup);
      sub_21877D2E4(&qword_27CC1A500, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_49;
    case 0x14u:
      v62 = v107;
      sub_2195C36B4(v65, v107, type metadata accessor for SportsEventInfoTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C4E0, type metadata accessor for SportsEventInfoTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_49;
    case 0x15u:
      v62 = v109;
      sub_2195C36B4(v65, v109, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      sub_21877D2E4(&qword_27CC0B3E0, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_49;
    case 0x16u:
      v62 = v111;
      sub_2195C36B4(v65, v111, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C4D0, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_49;
    case 0x17u:
      v62 = v113;
      sub_2195C36B4(v65, v113, type metadata accessor for SportsEventArticlesTagFeedGroup);
      sub_21877D2E4(&qword_27CC119A0, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_49;
    case 0x18u:
      v62 = v115;
      sub_2195C36B4(v65, v115, type metadata accessor for HighlightsTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C4C0, type metadata accessor for HighlightsTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_49;
    case 0x19u:
      v59 = v117;
      sub_2195C36B4(v65, v117, type metadata accessor for ForYouTagFeedGroup);
      v66 = sub_219BED7D4();
      v68 = type metadata accessor for ForYouTagFeedGroup;
LABEL_25:
      v69 = v68;
      v70 = v59;
      goto LABEL_50;
    case 0x1Au:
      v62 = v119;
      sub_2195C36B4(v65, v119, type metadata accessor for ChannelRecipesTagFeedGroup);
      v66 = sub_219BED7D4();
      v67 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Bu:
      v62 = v120;
      sub_2195C36B4(v65, v120, type metadata accessor for ForYouRecipesTagFeedGroup);
      v66 = sub_219BED7D4();
      v67 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Cu:
      v62 = v121;
      sub_2195C36B4(v65, v121, type metadata accessor for RecentStoriesTagFeedGroup);
      sub_21877D2E4(qword_280EBD5A0, type metadata accessor for RecentStoriesTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_49;
    case 0x1Du:
      v62 = v123;
      sub_2195C36B4(v65, v123, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v66 = sub_219BED7D4();
      v67 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x1Eu:
      v62 = v124;
      sub_2195C36B4(v65, v124, type metadata accessor for DateRangeTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C4B0, type metadata accessor for DateRangeTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_49;
    case 0x1Fu:
      v62 = v126;
      sub_2195C36B4(v65, v126, type metadata accessor for SportsOnboardingTagFeedGroup);
      sub_21877D2E4(&qword_280EB2858, type metadata accessor for SportsOnboardingTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_49;
    case 0x20u:
      v62 = v128;
      sub_2195C36B4(v65, v128, type metadata accessor for SportsMastheadTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C4A0, type metadata accessor for SportsMastheadTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_49;
    case 0x21u:
      v62 = v130;
      sub_2195C36B4(v65, v130, type metadata accessor for SportsEventTopicTagFeedGroup);
      sub_21877D2E4(&qword_27CC13A98, type metadata accessor for SportsEventTopicTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_49;
    case 0x22u:
      v62 = v132;
      sub_2195C36B4(v65, v132, type metadata accessor for PuzzleListTagFeedGroup);
      sub_21877D2E4(&qword_280EC7200, type metadata accessor for PuzzleListTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_49;
    case 0x23u:
      v62 = v134;
      sub_2195C36B4(v65, v134, type metadata accessor for PuzzleArchiveTagFeedGroup);
      sub_21877D2E4(&qword_27CC0C7E8, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_49;
    case 0x24u:
      v62 = v136;
      sub_2195C36B4(v65, v136, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      sub_21877D2E4(&qword_280EA28D0, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_49;
    case 0x25u:
      v62 = v138;
      sub_2195C36B4(v65, v138, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      sub_21877D2E4(&qword_27CC19AD8, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_49;
    case 0x26u:
      v62 = v140;
      sub_2195C36B4(v65, v140, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      sub_21877D2E4(&unk_27CC1C490, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_49;
    case 0x27u:
      v62 = v142;
      sub_2195C36B4(v65, v142, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      sub_21877D2E4(&qword_27CC15460, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_49;
    case 0x28u:
      v62 = v144;
      sub_2195C36B4(v65, v144, type metadata accessor for AffinityTagFeedGroup);
      v66 = sub_219BED7D4();
      v67 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_49;
    case 0x29u:
      v62 = v145;
      sub_2195C36B4(v65, v145, type metadata accessor for SponsoredBannerTagFeedGroup);
      sub_21877D2E4(qword_280EB6F60, type metadata accessor for SponsoredBannerTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_49;
    case 0x2Au:
      v62 = v147;
      sub_2195C36B4(v65, v147, type metadata accessor for LatestRecipesTagFeedGroup);
      v66 = sub_219BED7D4();
      v67 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Bu:
      v62 = v148;
      sub_2195C36B4(v65, v148, type metadata accessor for SavedRecipesTagFeedGroup);
      v66 = sub_219BED7D4();
      v67 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Cu:
      v62 = v149;
      sub_2195C36B4(v65, v149, type metadata accessor for TrendingRecipesTagFeedGroup);
      v66 = sub_219BED7D4();
      v67 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_49;
    case 0x2Du:
      v62 = v150;
      sub_2195C36B4(v65, v150, type metadata accessor for TopicRecipesTagFeedGroup);
      v66 = sub_219BED7D4();
      v67 = type metadata accessor for TopicRecipesTagFeedGroup;
      goto LABEL_49;
    default:
      sub_2195C36B4(v65, v62, type metadata accessor for ArticleListTagFeedGroup);
      sub_21877D2E4(qword_280EC5FA8, type metadata accessor for ArticleListTagFeedGroup);
      v66 = sub_219BEE8E4();
      v67 = type metadata accessor for ArticleListTagFeedGroup;
LABEL_49:
      v69 = v67;
      v70 = v62;
LABEL_50:
      sub_2195C359C(v70, v69);
      return v66;
  }
}

uint64_t sub_2195BA664()
{
  sub_21877D2E4(&unk_280EDE998, type metadata accessor for TagFeedGroup);

  return sub_219BE2324();
}

uint64_t sub_2195BA6D0@<X0>(uint64_t *a1@<X8>)
{
  v145 = a1;
  v143 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v143);
  v144 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v141);
  v142 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v139);
  v140 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v137);
  v138 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v135);
  v136 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v133);
  v134 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v131);
  v132 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v129);
  v130 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v127);
  v128 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v125);
  v126 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v123);
  v124 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v121);
  v122 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v119);
  v120 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v117);
  v118 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v115);
  v116 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v113);
  v114 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v111);
  v112 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v109);
  v110 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v107);
  v108 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v105);
  v106 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v103);
  v104 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v101);
  v102 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v99);
  v100 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v97);
  v98 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v95);
  v96 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v93);
  v94 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v91);
  v92 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v89);
  v90 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v87);
  v88 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v85);
  v86 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v83);
  v84 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v81);
  v82 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v79);
  v80 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v77);
  v78 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v75);
  v76 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v73);
  v74 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v71);
  v72 = &v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v69);
  v70 = &v68 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v39);
  v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v42);
  v44 = &v68 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v45);
  v47 = &v68 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v48);
  v50 = &v68 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v51);
  v53 = &v68 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v146, v53);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v56 = type metadata accessor for PromotedArticleListTagFeedGroup;
      sub_2195C36B4(v53, v47, type metadata accessor for PromotedArticleListTagFeedGroup);
      v64 = v145;
      v145[3] = v45;
      v64[4] = sub_21877D2E4(&qword_27CC18418, type metadata accessor for PromotedArticleListTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
      v63 = v47;
      break;
    case 2u:
    case 6u:
    case 7u:
    case 0x29u:
      result = sub_2195C359C(v53, type metadata accessor for TagFeedGroup);
      v55 = v145;
      *v145 = 0u;
      *(v55 + 1) = 0u;
      v55[4] = 0;
      return result;
    case 3u:
      v56 = type metadata accessor for ChannelSectionTagFeedGroup;
      sub_2195C36B4(v53, v44, type metadata accessor for ChannelSectionTagFeedGroup);
      v65 = v145;
      v145[3] = v42;
      v65[4] = sub_21877D2E4(&unk_27CC1C6A0, type metadata accessor for ChannelSectionTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
      v63 = v44;
      break;
    case 4u:
      sub_2195C36B4(v53, v41, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v66 = v145;
      v145[3] = v39;
      v66[4] = sub_21877D2E4(&qword_27CC1A540, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
      v63 = v41;
      v67 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      return sub_2195C36B4(v63, boxed_opaque_existential_1, v67);
    case 5u:
      v56 = type metadata accessor for WeatherTagFeedGroup;
      v57 = v72;
      sub_2195C36B4(v53, v72, type metadata accessor for WeatherTagFeedGroup);
      v58 = v145;
      v145[3] = v71;
      v59 = &qword_27CC10EE8;
      v60 = type metadata accessor for WeatherTagFeedGroup;
      goto LABEL_45;
    case 8u:
      v56 = type metadata accessor for CuratedTagFeedGroup;
      v57 = v70;
      sub_2195C36B4(v53, v70, type metadata accessor for CuratedTagFeedGroup);
      v58 = v145;
      v145[3] = v69;
      v59 = &unk_280ED1950;
      v60 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_45;
    case 9u:
      v56 = type metadata accessor for SportsRecordTagFeedGroup;
      v57 = v74;
      sub_2195C36B4(v53, v74, type metadata accessor for SportsRecordTagFeedGroup);
      v58 = v145;
      v145[3] = v73;
      v59 = &unk_27CC1C690;
      v60 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_45;
    case 0xAu:
      v56 = type metadata accessor for SportsNavigationTagFeedGroup;
      v57 = v76;
      sub_2195C36B4(v53, v76, type metadata accessor for SportsNavigationTagFeedGroup);
      v58 = v145;
      v145[3] = v75;
      v59 = &qword_27CC192D0;
      v60 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_45;
    case 0xBu:
      v56 = type metadata accessor for SportsScheduleTagFeedGroup;
      v57 = v78;
      sub_2195C36B4(v53, v78, type metadata accessor for SportsScheduleTagFeedGroup);
      v58 = v145;
      v145[3] = v77;
      v59 = &unk_27CC1C680;
      v60 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_45;
    case 0xCu:
      v56 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      v57 = v80;
      sub_2195C36B4(v53, v80, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v58 = v145;
      v145[3] = v79;
      v59 = &qword_27CC1A538;
      v60 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_45;
    case 0xDu:
      v56 = type metadata accessor for SportsFavoritesTagFeedGroup;
      v57 = v82;
      sub_2195C36B4(v53, v82, type metadata accessor for SportsFavoritesTagFeedGroup);
      v58 = v145;
      v145[3] = v81;
      v59 = &unk_27CC1C670;
      v60 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_45;
    case 0xEu:
      v56 = type metadata accessor for SportsScoresTagFeedGroup;
      v57 = v84;
      sub_2195C36B4(v53, v84, type metadata accessor for SportsScoresTagFeedGroup);
      v58 = v145;
      v145[3] = v83;
      v59 = &unk_280EC0150;
      v60 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_45;
    case 0xFu:
      v56 = type metadata accessor for SportsLinksTagFeedGroup;
      v57 = v86;
      sub_2195C36B4(v53, v86, type metadata accessor for SportsLinksTagFeedGroup);
      v58 = v145;
      v145[3] = v85;
      v59 = &unk_27CC1C660;
      v60 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_45;
    case 0x10u:
      v56 = type metadata accessor for MySportsTopicTagFeedGroup;
      v57 = v88;
      sub_2195C36B4(v53, v88, type metadata accessor for MySportsTopicTagFeedGroup);
      v58 = v145;
      v145[3] = v87;
      v59 = &qword_280EBDD48;
      v60 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_45;
    case 0x11u:
      v56 = type metadata accessor for SportsStandingsTagFeedGroup;
      v57 = v90;
      sub_2195C36B4(v53, v90, type metadata accessor for SportsStandingsTagFeedGroup);
      v58 = v145;
      v145[3] = v89;
      v59 = &unk_27CC1C650;
      v60 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_45;
    case 0x12u:
      v56 = type metadata accessor for SportsBracketTagFeedGroup;
      v57 = v92;
      sub_2195C36B4(v53, v92, type metadata accessor for SportsBracketTagFeedGroup);
      v58 = v145;
      v145[3] = v91;
      v59 = &qword_27CC1A530;
      v60 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_45;
    case 0x13u:
      v56 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      v57 = v94;
      sub_2195C36B4(v53, v94, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v58 = v145;
      v145[3] = v93;
      v59 = &unk_27CC1C640;
      v60 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_45;
    case 0x14u:
      v56 = type metadata accessor for SportsEventInfoTagFeedGroup;
      v57 = v96;
      sub_2195C36B4(v53, v96, type metadata accessor for SportsEventInfoTagFeedGroup);
      v58 = v145;
      v145[3] = v95;
      v59 = &qword_27CC19458;
      v60 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_45;
    case 0x15u:
      v56 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      v57 = v98;
      sub_2195C36B4(v53, v98, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v58 = v145;
      v145[3] = v97;
      v59 = &unk_27CC1C630;
      v60 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_45;
    case 0x16u:
      v56 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      v57 = v100;
      sub_2195C36B4(v53, v100, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v58 = v145;
      v145[3] = v99;
      v59 = &qword_27CC10018;
      v60 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_45;
    case 0x17u:
      v56 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      v57 = v102;
      sub_2195C36B4(v53, v102, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v58 = v145;
      v145[3] = v101;
      v59 = &unk_27CC1C620;
      v60 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_45;
    case 0x18u:
      v56 = type metadata accessor for HighlightsTagFeedGroup;
      v57 = v104;
      sub_2195C36B4(v53, v104, type metadata accessor for HighlightsTagFeedGroup);
      v58 = v145;
      v145[3] = v103;
      v59 = &qword_27CC195D8;
      v60 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_45;
    case 0x19u:
      v56 = type metadata accessor for ForYouTagFeedGroup;
      v57 = v106;
      sub_2195C36B4(v53, v106, type metadata accessor for ForYouTagFeedGroup);
      v58 = v145;
      v145[3] = v105;
      v59 = &unk_27CC1C610;
      v60 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_45;
    case 0x1Au:
      v56 = type metadata accessor for ChannelRecipesTagFeedGroup;
      v57 = v108;
      sub_2195C36B4(v53, v108, type metadata accessor for ChannelRecipesTagFeedGroup);
      v58 = v145;
      v145[3] = v107;
      v59 = &qword_27CC1A528;
      v60 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x1Bu:
      v56 = type metadata accessor for ForYouRecipesTagFeedGroup;
      v57 = v110;
      sub_2195C36B4(v53, v110, type metadata accessor for ForYouRecipesTagFeedGroup);
      v58 = v145;
      v145[3] = v109;
      v59 = &unk_27CC1C600;
      v60 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x1Cu:
      v56 = type metadata accessor for RecentStoriesTagFeedGroup;
      v57 = v112;
      sub_2195C36B4(v53, v112, type metadata accessor for RecentStoriesTagFeedGroup);
      v58 = v145;
      v145[3] = v111;
      v59 = &qword_27CC13650;
      v60 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_45;
    case 0x1Du:
      v56 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      v57 = v114;
      sub_2195C36B4(v53, v114, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v58 = v145;
      v145[3] = v113;
      v59 = &unk_27CC1C5F0;
      v60 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x1Eu:
      v56 = type metadata accessor for DateRangeTagFeedGroup;
      v57 = v116;
      sub_2195C36B4(v53, v116, type metadata accessor for DateRangeTagFeedGroup);
      v58 = v145;
      v145[3] = v115;
      v59 = &qword_27CC1A520;
      v60 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_45;
    case 0x1Fu:
      v56 = type metadata accessor for SportsOnboardingTagFeedGroup;
      v57 = v118;
      sub_2195C36B4(v53, v118, type metadata accessor for SportsOnboardingTagFeedGroup);
      v58 = v145;
      v145[3] = v117;
      v59 = &qword_280EB2830;
      v60 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_45;
    case 0x20u:
      v56 = type metadata accessor for SportsMastheadTagFeedGroup;
      v57 = v120;
      sub_2195C36B4(v53, v120, type metadata accessor for SportsMastheadTagFeedGroup);
      v58 = v145;
      v145[3] = v119;
      v59 = &qword_27CC140E0;
      v60 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_45;
    case 0x21u:
      v56 = type metadata accessor for SportsEventTopicTagFeedGroup;
      v57 = v122;
      sub_2195C36B4(v53, v122, type metadata accessor for SportsEventTopicTagFeedGroup);
      v58 = v145;
      v145[3] = v121;
      v59 = &unk_27CC1C5E0;
      v60 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_45;
    case 0x22u:
      v56 = type metadata accessor for PuzzleListTagFeedGroup;
      v57 = v124;
      sub_2195C36B4(v53, v124, type metadata accessor for PuzzleListTagFeedGroup);
      v58 = v145;
      v145[3] = v123;
      v59 = &qword_280EC71D8;
      v60 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_45;
    case 0x23u:
      v56 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      v57 = v126;
      sub_2195C36B4(v53, v126, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v58 = v145;
      v145[3] = v125;
      v59 = &unk_27CC1C5D0;
      v60 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_45;
    case 0x24u:
      v56 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      v57 = v128;
      sub_2195C36B4(v53, v128, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v58 = v145;
      v145[3] = v127;
      v59 = &unk_280EA28A0;
      v60 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_45;
    case 0x25u:
      v56 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      v57 = v130;
      sub_2195C36B4(v53, v130, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v58 = v145;
      v145[3] = v129;
      v59 = &unk_27CC1C5C0;
      v60 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_45;
    case 0x26u:
      v56 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      v57 = v132;
      sub_2195C36B4(v53, v132, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v58 = v145;
      v145[3] = v131;
      v59 = &qword_27CC13350;
      v60 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_45;
    case 0x27u:
      v56 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      v57 = v134;
      sub_2195C36B4(v53, v134, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v58 = v145;
      v145[3] = v133;
      v59 = &unk_27CC1C5B0;
      v60 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_45;
    case 0x28u:
      v56 = type metadata accessor for AffinityTagFeedGroup;
      v57 = v136;
      sub_2195C36B4(v53, v136, type metadata accessor for AffinityTagFeedGroup);
      v58 = v145;
      v145[3] = v135;
      v59 = &qword_280ECF7D8;
      v60 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_45;
    case 0x2Au:
      v56 = type metadata accessor for LatestRecipesTagFeedGroup;
      v57 = v138;
      sub_2195C36B4(v53, v138, type metadata accessor for LatestRecipesTagFeedGroup);
      v58 = v145;
      v145[3] = v137;
      v59 = &unk_27CC1C5A0;
      v60 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x2Bu:
      v56 = type metadata accessor for SavedRecipesTagFeedGroup;
      v57 = v140;
      sub_2195C36B4(v53, v140, type metadata accessor for SavedRecipesTagFeedGroup);
      v58 = v145;
      v145[3] = v139;
      v59 = &qword_27CC14CE0;
      v60 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x2Cu:
      v56 = type metadata accessor for TrendingRecipesTagFeedGroup;
      v57 = v142;
      sub_2195C36B4(v53, v142, type metadata accessor for TrendingRecipesTagFeedGroup);
      v58 = v145;
      v145[3] = v141;
      v59 = &unk_27CC1C590;
      v60 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_45;
    case 0x2Du:
      v56 = type metadata accessor for TopicRecipesTagFeedGroup;
      v57 = v144;
      sub_2195C36B4(v53, v144, type metadata accessor for TopicRecipesTagFeedGroup);
      v58 = v145;
      v145[3] = v143;
      v59 = &qword_27CC1A518;
      v60 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_45:
      v58[4] = sub_21877D2E4(v59, v60);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
      v63 = v57;
      break;
    default:
      v56 = type metadata accessor for ArticleListTagFeedGroup;
      sub_2195C36B4(v53, v50, type metadata accessor for ArticleListTagFeedGroup);
      v61 = v145;
      v145[3] = v48;
      v61[4] = sub_21877D2E4(&qword_27CC1C6B0, type metadata accessor for ArticleListTagFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
      v63 = v50;
      break;
  }

  v67 = v56;
  return sub_2195C36B4(v63, boxed_opaque_existential_1, v67);
}

uint64_t sub_2195BC790@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B21BF8(v3, v5);
  if (((1 << swift_getEnumCaseMultiPayload()) & 0x3FFFFFFEBEFFLL) != 0)
  {
    sub_2195C359C(v5, type metadata accessor for TagFeedGroup);
    v6 = sub_219BF3584();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  else
  {
    sub_2195C359C(v5, type metadata accessor for TagFeedGroup);
    v8 = *MEMORY[0x277D33EB0];
    v9 = sub_219BF3584();
    v10 = *(v9 - 8);
    (*(v10 + 104))(a1, v8, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }
}

uint64_t sub_2195BC930()
{
  v0 = sub_219BDBD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v1 + 8))(v3, v0);
  sub_219BED4B4();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2195BCA34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v201 = a2;
  v200 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v200);
  v196 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v194);
  v195 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v192);
  v193 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v190);
  v191 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v188);
  v189 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v186);
  v187 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v184);
  v185 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v182);
  v183 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v180);
  v181 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v178);
  v179 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v176);
  v177 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v174);
  v175 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v172);
  v173 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v170);
  v171 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v168);
  v169 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v166);
  v167 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v164);
  v165 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v162);
  v163 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v160);
  v161 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v158);
  v159 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v156);
  v157 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v154);
  v155 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v152);
  v153 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v150);
  v151 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v148);
  v149 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v146);
  v147 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v144);
  v145 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v142);
  v143 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v140);
  v141 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v138);
  v139 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v136);
  v137 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v134);
  v135 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v133);
  v199 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v131);
  v132 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v129);
  v130 = &v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v127);
  v128 = &v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v125);
  v126 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v123);
  v124 = &v111 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v121);
  v122 = &v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v119);
  v120 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v117);
  v118 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v115);
  v116 = &v111 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v198);
  v114 = &v111 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v46);
  v48 = &v111 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195C371C(0, &qword_27CC1C6B8, MEMORY[0x277D844C8]);
  v50 = v49;
  v197 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v111 - v51;
  v53 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v53);
  v55 = &v111 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1[3];
  v203 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v56);
  sub_2195C3660();
  v57 = v202;
  sub_219BF7B34();
  if (v57)
  {
LABEL_48:
    v109 = v203;
  }

  else
  {
    v111 = v46;
    v112 = v48;
    v58 = v199;
    v59 = v197;
    v113 = v55;
    v202 = v53;
    v60 = v201;
    v204 = 0;
    sub_2195C3494();
    sub_219BF7734();
    v61 = v59;
    switch(v205)
    {
      case 1:
        v205 = 1;
        sub_21877D2E4(&qword_27CC10998, type metadata accessor for ArticleListTagFeedGroup);
        v87 = v112;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v87, v113, type metadata accessor for ArticleListTagFeedGroup);
        goto LABEL_50;
      case 2:
        v205 = 1;
        sub_21877D2E4(&unk_27CC1C7C0, type metadata accessor for PromotedArticleListTagFeedGroup);
        v82 = v114;
        sub_219BF7734();
        (*(v61 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v82, v113, type metadata accessor for PromotedArticleListTagFeedGroup);
        v83 = v203;
        goto LABEL_51;
      case 3:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C7B0, type metadata accessor for ChannelSectionTagFeedGroup);
        v85 = v118;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v85, v113, type metadata accessor for ChannelSectionTagFeedGroup);
        goto LABEL_50;
      case 4:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C7A8, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
        v77 = v120;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v77, v113, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
        goto LABEL_50;
      case 5:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C7A0, type metadata accessor for WeatherTagFeedGroup);
        v93 = v122;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v93, v113, type metadata accessor for WeatherTagFeedGroup);
        goto LABEL_50;
      case 6:
      case 7:
        v62 = sub_219BEE394();
        sub_21877D2E4(&qword_27CC0B9E0, MEMORY[0x277D31FD8]);
        swift_allocError();
        (*(*(v62 - 8) + 104))(v63, *MEMORY[0x277D31FD0], v62);
        swift_willThrow();
        (*(v59 + 8))(v52, v50);
        goto LABEL_48;
      case 8:
        v205 = 1;
        sub_21877D2E4(&qword_280ED1960, type metadata accessor for CuratedTagFeedGroup);
        v96 = v124;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v96, v113, type metadata accessor for CuratedTagFeedGroup);
        goto LABEL_50;
      case 9:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C6E8, type metadata accessor for SponsoredBannerTagFeedGroup);
        v79 = v189;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v79, v113, type metadata accessor for SponsoredBannerTagFeedGroup);
        goto LABEL_50;
      case 10:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C798, type metadata accessor for SportsRecordTagFeedGroup);
        v95 = v126;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v95, v113, type metadata accessor for SportsRecordTagFeedGroup);
        goto LABEL_50;
      case 11:
        v205 = 1;
        sub_21877D2E4(&unk_27CC1C788, type metadata accessor for SportsTopStoriesTagFeedGroup);
        v75 = v130;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v75, v113, type metadata accessor for SportsTopStoriesTagFeedGroup);
        goto LABEL_50;
      case 12:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C780, type metadata accessor for SportsFavoritesTagFeedGroup);
        v78 = v132;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v78, v113, type metadata accessor for SportsFavoritesTagFeedGroup);
        goto LABEL_50;
      case 13:
        v205 = 1;
        sub_21877D2E4(&qword_27CC13188, type metadata accessor for SportsScheduleTagFeedGroup);
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v58, v113, type metadata accessor for SportsScheduleTagFeedGroup);
        goto LABEL_50;
      case 14:
        v205 = 1;
        sub_21877D2E4(&unk_280EC0160, type metadata accessor for SportsScoresTagFeedGroup);
        v73 = v135;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v73, v113, type metadata accessor for SportsScoresTagFeedGroup);
        goto LABEL_50;
      case 15:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C778, type metadata accessor for SportsLinksTagFeedGroup);
        v84 = v137;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v84, v113, type metadata accessor for SportsLinksTagFeedGroup);
        goto LABEL_50;
      case 16:
        v205 = 1;
        sub_21877D2E4(&qword_280EBDD50, type metadata accessor for MySportsTopicTagFeedGroup);
        v71 = v139;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v71, v113, type metadata accessor for MySportsTopicTagFeedGroup);
        goto LABEL_50;
      case 17:
        v205 = 1;
        sub_21877D2E4(&unk_27CC192E0, type metadata accessor for SportsNavigationTagFeedGroup);
        v89 = v128;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v89, v113, type metadata accessor for SportsNavigationTagFeedGroup);
        goto LABEL_50;
      case 18:
        v205 = 1;
        sub_21877D2E4(&qword_27CC16078, type metadata accessor for SportsStandingsTagFeedGroup);
        v94 = v141;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v94, v113, type metadata accessor for SportsStandingsTagFeedGroup);
        goto LABEL_50;
      case 19:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C770, type metadata accessor for SportsBracketTagFeedGroup);
        v102 = v143;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v102, v113, type metadata accessor for SportsBracketTagFeedGroup);
        goto LABEL_50;
      case 20:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C768, type metadata accessor for SportsBoxScoresTagFeedGroup);
        v91 = v145;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v91, v113, type metadata accessor for SportsBoxScoresTagFeedGroup);
        goto LABEL_50;
      case 21:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C760, type metadata accessor for SportsEventInfoTagFeedGroup);
        v92 = v147;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v92, v113, type metadata accessor for SportsEventInfoTagFeedGroup);
        goto LABEL_50;
      case 22:
        v205 = 1;
        sub_21877D2E4(&qword_27CC0B400, type metadata accessor for SportsInjuryReportsTagFeedGroup);
        v100 = v149;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v100, v113, type metadata accessor for SportsInjuryReportsTagFeedGroup);
        goto LABEL_50;
      case 23:
        v205 = 1;
        sub_21877D2E4(&unk_27CC1C750, type metadata accessor for SportsKeyPlayersTagFeedGroup);
        v104 = v151;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v104, v113, type metadata accessor for SportsKeyPlayersTagFeedGroup);
        goto LABEL_50;
      case 24:
        v205 = 1;
        sub_21877D2E4(&qword_27CC119C0, type metadata accessor for SportsEventArticlesTagFeedGroup);
        v81 = v153;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v81, v113, type metadata accessor for SportsEventArticlesTagFeedGroup);
        goto LABEL_50;
      case 25:
        v205 = 1;
        sub_21877D2E4(&unk_27CC1C740, type metadata accessor for HighlightsTagFeedGroup);
        v80 = v155;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v80, v113, type metadata accessor for HighlightsTagFeedGroup);
        goto LABEL_50;
      case 26:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C738, type metadata accessor for ForYouTagFeedGroup);
        v108 = v157;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v108, v113, type metadata accessor for ForYouTagFeedGroup);
        goto LABEL_50;
      case 27:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1B8F0, type metadata accessor for ForYouRecipesTagFeedGroup);
        v69 = v161;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v69, v113, type metadata accessor for ForYouRecipesTagFeedGroup);
        goto LABEL_50;
      case 28:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C730, type metadata accessor for ChannelRecipesTagFeedGroup);
        v105 = v159;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v105, v113, type metadata accessor for ChannelRecipesTagFeedGroup);
        goto LABEL_50;
      case 29:
        v205 = 1;
        sub_21877D2E4(&unk_27CC1C720, type metadata accessor for RecentStoriesTagFeedGroup);
        v106 = v163;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v106, v113, type metadata accessor for RecentStoriesTagFeedGroup);
        goto LABEL_50;
      case 30:
        v205 = 1;
        sub_21877D2E4(&qword_27CC12BE8, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
        v97 = v165;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v97, v113, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
        goto LABEL_50;
      case 31:
        v205 = 1;
        sub_21877D2E4(&unk_27CC1C710, type metadata accessor for DateRangeTagFeedGroup);
        v88 = v167;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v88, v113, type metadata accessor for DateRangeTagFeedGroup);
        goto LABEL_50;
      case 32:
        v205 = 1;
        sub_21877D2E4(&qword_280EB2838, type metadata accessor for SportsOnboardingTagFeedGroup);
        v98 = v169;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v98, v113, type metadata accessor for SportsOnboardingTagFeedGroup);
        goto LABEL_50;
      case 33:
        v205 = 1;
        sub_21877D2E4(&unk_27CC1C700, type metadata accessor for SportsMastheadTagFeedGroup);
        v74 = v171;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v74, v113, type metadata accessor for SportsMastheadTagFeedGroup);
        goto LABEL_50;
      case 34:
        v205 = 1;
        sub_21877D2E4(&qword_27CC13AB8, type metadata accessor for SportsEventTopicTagFeedGroup);
        v70 = v173;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v70, v113, type metadata accessor for SportsEventTopicTagFeedGroup);
        goto LABEL_50;
      case 35:
        v205 = 1;
        sub_21877D2E4(&qword_280EC71E0, type metadata accessor for PuzzleListTagFeedGroup);
        v67 = v175;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v67, v113, type metadata accessor for PuzzleListTagFeedGroup);
        goto LABEL_50;
      case 36:
        v205 = 1;
        sub_21877D2E4(&qword_27CC0C808, type metadata accessor for PuzzleArchiveTagFeedGroup);
        v68 = v177;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v68, v113, type metadata accessor for PuzzleArchiveTagFeedGroup);
        goto LABEL_50;
      case 37:
        v205 = 1;
        sub_21877D2E4(&qword_280EA28B0, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
        v66 = v179;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v66, v113, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
        goto LABEL_50;
      case 38:
        v205 = 1;
        sub_21877D2E4(&qword_27CC19AF8, type metadata accessor for PuzzleFeaturedTagFeedGroup);
        v107 = v181;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v107, v113, type metadata accessor for PuzzleFeaturedTagFeedGroup);
        goto LABEL_50;
      case 39:
        v205 = 1;
        sub_21877D2E4(&unk_27CC1C6F0, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
        v101 = v183;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v101, v113, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
        goto LABEL_50;
      case 40:
        v205 = 1;
        sub_21877D2E4(&qword_27CC15480, type metadata accessor for PuzzleScoreboardTagFeedGroup);
        v76 = v185;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v76, v113, type metadata accessor for PuzzleScoreboardTagFeedGroup);
        goto LABEL_50;
      case 41:
        v205 = 1;
        sub_21877D2E4(&qword_280ECF7E0, type metadata accessor for AffinityTagFeedGroup);
        v90 = v187;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v90, v113, type metadata accessor for AffinityTagFeedGroup);
        goto LABEL_50;
      case 42:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C6E0, type metadata accessor for LatestRecipesTagFeedGroup);
        v103 = v191;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v103, v113, type metadata accessor for LatestRecipesTagFeedGroup);
        goto LABEL_50;
      case 43:
        v205 = 1;
        sub_21877D2E4(&qword_27CC14CF0, type metadata accessor for SavedRecipesTagFeedGroup);
        v64 = v193;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v64, v113, type metadata accessor for SavedRecipesTagFeedGroup);
        goto LABEL_50;
      case 44:
        v205 = 1;
        sub_21877D2E4(&unk_27CC1C6D0, type metadata accessor for TrendingRecipesTagFeedGroup);
        v72 = v195;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v72, v113, type metadata accessor for TrendingRecipesTagFeedGroup);
        goto LABEL_50;
      case 45:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C6C8, type metadata accessor for TopicRecipesTagFeedGroup);
        v99 = v196;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v99, v113, type metadata accessor for TopicRecipesTagFeedGroup);
        goto LABEL_50;
      default:
        v205 = 1;
        sub_21877D2E4(&qword_27CC1C7B8, type metadata accessor for IssueListTagFeedGroup);
        v86 = v116;
        sub_219BF7734();
        (*(v59 + 8))(v52, v50);
        v65 = v113;
        sub_2195C36B4(v86, v113, type metadata accessor for IssueListTagFeedGroup);
LABEL_50:
        v83 = v203;
LABEL_51:
        swift_storeEnumTagMultiPayload();
        sub_2195C36B4(v65, v60, type metadata accessor for TagFeedGroup);
        v109 = v83;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v109);
}

uint64_t sub_2195BFCD4(void *a1)
{
  v150 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v150);
  v193 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v149);
  v192 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v148);
  v191 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v147);
  v190 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v146);
  v189 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v145);
  v188 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v144);
  v187 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v143);
  v186 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v142);
  v185 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v141);
  v184 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v140);
  v183 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v139);
  v182 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v138);
  v181 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v137);
  v180 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v136);
  v179 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v135);
  v178 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v134);
  v177 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v133);
  v176 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v132);
  v175 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v131);
  v174 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v130);
  v173 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v129);
  v172 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v128);
  v171 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v127);
  v170 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v126);
  v169 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v125);
  v168 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v124);
  v167 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v123);
  v166 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v122);
  v165 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v121);
  v164 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v120);
  v163 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v119);
  v162 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v118);
  v161 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v117);
  v160 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v116);
  v159 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v115);
  v158 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v114);
  v157 = &v108 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v113);
  v156 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v112);
  v155 = &v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v111);
  v154 = &v108 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v110);
  v153 = &v108 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v109);
  v152 = &v108 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v44);
  v151 = &v108 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v46);
  v48 = &v108 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v49);
  v51 = &v108 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195C371C(0, &qword_27CC1C7D0, MEMORY[0x277D84538]);
  v196 = v52;
  v198 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v54 = &v108 - v53;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195C3660();
  v195 = v54;
  sub_219BF7B44();
  sub_218B21BF8(v197, v51);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v58 = v151;
      sub_2195C36B4(v51, v151, type metadata accessor for PromotedArticleListTagFeedGroup);
      v199 = 512;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v85 = v194;
      sub_219BF7834();
      if (!v85)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC18428, type metadata accessor for PromotedArticleListTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for PromotedArticleListTagFeedGroup;
      goto LABEL_135;
    case 2u:
      v58 = v152;
      sub_2195C36B4(v51, v152, type metadata accessor for IssueListTagFeedGroup);
      v199 = 0;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v79 = v194;
      sub_219BF7834();
      if (!v79)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&unk_27CC1C8C0, type metadata accessor for IssueListTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for IssueListTagFeedGroup;
      goto LABEL_135;
    case 3u:
      v58 = v153;
      sub_2195C36B4(v51, v153, type metadata accessor for ChannelSectionTagFeedGroup);
      v199 = 768;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v81 = v194;
      sub_219BF7834();
      if (!v81)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C8B8, type metadata accessor for ChannelSectionTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for ChannelSectionTagFeedGroup;
      goto LABEL_135;
    case 4u:
      v58 = v154;
      sub_2195C36B4(v51, v154, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v199 = 1024;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v74 = v194;
      sub_219BF7834();
      if (!v74)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C8B0, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      goto LABEL_135;
    case 5u:
      v58 = v155;
      sub_2195C36B4(v51, v155, type metadata accessor for WeatherTagFeedGroup);
      v199 = 1280;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v92 = v194;
      sub_219BF7834();
      if (!v92)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC10EF8, type metadata accessor for WeatherTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for WeatherTagFeedGroup;
      goto LABEL_135;
    case 6u:
    case 7u:
      v55 = sub_219BEE394();
      sub_21877D2E4(&qword_27CC0B9E0, MEMORY[0x277D31FD8]);
      swift_allocError();
      (*(*(v55 - 8) + 104))(v56, *MEMORY[0x277D31FD0], v55);
      swift_willThrow();
      (*(v198 + 8))(v195, v196);
      return sub_2195C359C(v51, type metadata accessor for TagFeedGroup);
    case 8u:
      v58 = v156;
      sub_2195C36B4(v51, v156, type metadata accessor for CuratedTagFeedGroup);
      v199 = 2048;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v95 = v194;
      sub_219BF7834();
      if (!v95)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_280ED1970, type metadata accessor for CuratedTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_135;
    case 9u:
      v58 = v157;
      sub_2195C36B4(v51, v157, type metadata accessor for SportsRecordTagFeedGroup);
      v199 = 2560;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v76 = v194;
      sub_219BF7834();
      if (!v76)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C8A8, type metadata accessor for SportsRecordTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsRecordTagFeedGroup;
      goto LABEL_135;
    case 0xAu:
      v58 = v158;
      sub_2195C36B4(v51, v158, type metadata accessor for SportsNavigationTagFeedGroup);
      v199 = 4352;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v94 = v194;
      sub_219BF7834();
      if (!v94)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C8A0, type metadata accessor for SportsNavigationTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_135;
    case 0xBu:
      v58 = v159;
      sub_2195C36B4(v51, v159, type metadata accessor for SportsScheduleTagFeedGroup);
      v199 = 3328;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v72 = v194;
      sub_219BF7834();
      if (!v72)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC13190, type metadata accessor for SportsScheduleTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_135;
    case 0xCu:
      v58 = v160;
      sub_2195C36B4(v51, v160, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v199 = 2816;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v75 = v194;
      sub_219BF7834();
      if (!v75)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&unk_27CC1C890, type metadata accessor for SportsTopStoriesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_135;
    case 0xDu:
      v58 = v161;
      sub_2195C36B4(v51, v161, type metadata accessor for SportsFavoritesTagFeedGroup);
      v199 = 3072;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v91 = v194;
      sub_219BF7834();
      if (!v91)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC0D430, type metadata accessor for SportsFavoritesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_135;
    case 0xEu:
      v58 = v162;
      sub_2195C36B4(v51, v162, type metadata accessor for SportsScoresTagFeedGroup);
      v199 = 3584;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v70 = v194;
      sub_219BF7834();
      if (!v70)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_280EC0180, type metadata accessor for SportsScoresTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_135;
    case 0xFu:
      v58 = v163;
      sub_2195C36B4(v51, v163, type metadata accessor for SportsLinksTagFeedGroup);
      v199 = 3840;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v80 = v194;
      sub_219BF7834();
      if (!v80)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C888, type metadata accessor for SportsLinksTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_135;
    case 0x10u:
      v58 = v164;
      sub_2195C36B4(v51, v164, type metadata accessor for MySportsTopicTagFeedGroup);
      v199 = 4096;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v68 = v194;
      sub_219BF7834();
      if (!v68)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_280EBDD60, type metadata accessor for MySportsTopicTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_135;
    case 0x11u:
      v58 = v165;
      sub_2195C36B4(v51, v165, type metadata accessor for SportsStandingsTagFeedGroup);
      v199 = 4608;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v87 = v194;
      sub_219BF7834();
      if (!v87)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC16080, type metadata accessor for SportsStandingsTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_135;
    case 0x12u:
      v58 = v166;
      sub_2195C36B4(v51, v166, type metadata accessor for SportsBracketTagFeedGroup);
      v199 = 4864;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v93 = v194;
      sub_219BF7834();
      if (!v93)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C880, type metadata accessor for SportsBracketTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_135;
    case 0x13u:
      v58 = v167;
      sub_2195C36B4(v51, v167, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v199 = 5120;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v101 = v194;
      sub_219BF7834();
      if (!v101)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C878, type metadata accessor for SportsBoxScoresTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_135;
    case 0x14u:
      v58 = v168;
      sub_2195C36B4(v51, v168, type metadata accessor for SportsEventInfoTagFeedGroup);
      v199 = 5376;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v89 = v194;
      sub_219BF7834();
      if (!v89)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C870, type metadata accessor for SportsEventInfoTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_135;
    case 0x15u:
      v58 = v169;
      sub_2195C36B4(v51, v169, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v199 = 5632;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v90 = v194;
      sub_219BF7834();
      if (!v90)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC0B408, type metadata accessor for SportsInjuryReportsTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_135;
    case 0x16u:
      v58 = v170;
      sub_2195C36B4(v51, v170, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v199 = 5888;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v99 = v194;
      sub_219BF7834();
      if (!v99)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&unk_27CC1C860, type metadata accessor for SportsKeyPlayersTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_135;
    case 0x17u:
      v58 = v171;
      sub_2195C36B4(v51, v171, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v199 = 6144;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v103 = v194;
      sub_219BF7834();
      if (!v103)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC119C8, type metadata accessor for SportsEventArticlesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_135;
    case 0x18u:
      v58 = v172;
      sub_2195C36B4(v51, v172, type metadata accessor for HighlightsTagFeedGroup);
      v199 = 6400;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v78 = v194;
      sub_219BF7834();
      if (!v78)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&unk_27CC1C850, type metadata accessor for HighlightsTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_135;
    case 0x19u:
      v58 = v173;
      sub_2195C36B4(v51, v173, type metadata accessor for ForYouTagFeedGroup);
      v199 = 6656;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v77 = v194;
      sub_219BF7834();
      if (!v77)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C848, type metadata accessor for ForYouTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_135;
    case 0x1Au:
      v58 = v174;
      sub_2195C36B4(v51, v174, type metadata accessor for ChannelRecipesTagFeedGroup);
      v199 = 7168;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v107 = v194;
      sub_219BF7834();
      if (!v107)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C840, type metadata accessor for ChannelRecipesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_135;
    case 0x1Bu:
      v58 = v175;
      sub_2195C36B4(v51, v175, type metadata accessor for ForYouRecipesTagFeedGroup);
      v199 = 6912;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v66 = v194;
      sub_219BF7834();
      if (!v66)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1B8F8, type metadata accessor for ForYouRecipesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_135;
    case 0x1Cu:
      v58 = v176;
      sub_2195C36B4(v51, v176, type metadata accessor for RecentStoriesTagFeedGroup);
      v199 = 7424;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v104 = v194;
      sub_219BF7834();
      if (!v104)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&unk_27CC1C830, type metadata accessor for RecentStoriesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_135;
    case 0x1Du:
      v58 = v177;
      sub_2195C36B4(v51, v177, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v199 = 7680;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v105 = v194;
      sub_219BF7834();
      if (!v105)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC12BF0, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_135;
    case 0x1Eu:
      v58 = v178;
      sub_2195C36B4(v51, v178, type metadata accessor for DateRangeTagFeedGroup);
      v199 = 7936;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v96 = v194;
      sub_219BF7834();
      if (!v96)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&unk_27CC1C820, type metadata accessor for DateRangeTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_135;
    case 0x1Fu:
      v58 = v179;
      sub_2195C36B4(v51, v179, type metadata accessor for SportsOnboardingTagFeedGroup);
      v199 = 0x2000;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v86 = v194;
      sub_219BF7834();
      if (!v86)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_280EB2848, type metadata accessor for SportsOnboardingTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_135;
    case 0x20u:
      v58 = v180;
      sub_2195C36B4(v51, v180, type metadata accessor for SportsMastheadTagFeedGroup);
      v199 = 8448;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v97 = v194;
      sub_219BF7834();
      if (!v97)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&unk_27CC1C810, type metadata accessor for SportsMastheadTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_135;
    case 0x21u:
      v58 = v181;
      sub_2195C36B4(v51, v181, type metadata accessor for SportsEventTopicTagFeedGroup);
      v199 = 8704;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v71 = v194;
      sub_219BF7834();
      if (!v71)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC13AC0, type metadata accessor for SportsEventTopicTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_135;
    case 0x22u:
      v58 = v182;
      sub_2195C36B4(v51, v182, type metadata accessor for PuzzleListTagFeedGroup);
      v199 = 8960;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v67 = v194;
      sub_219BF7834();
      if (!v67)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_280EC71F0, type metadata accessor for PuzzleListTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_135;
    case 0x23u:
      v58 = v183;
      sub_2195C36B4(v51, v183, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v199 = 9216;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v64 = v194;
      sub_219BF7834();
      if (!v64)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC0C810, type metadata accessor for PuzzleArchiveTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_135;
    case 0x24u:
      v58 = v184;
      sub_2195C36B4(v51, v184, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v199 = 9472;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v65 = v194;
      sub_219BF7834();
      if (!v65)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_280EA28C0, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_135;
    case 0x25u:
      v58 = v185;
      sub_2195C36B4(v51, v185, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v199 = 9728;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v63 = v194;
      sub_219BF7834();
      if (!v63)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC19B00, type metadata accessor for PuzzleFeaturedTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_135;
    case 0x26u:
      v58 = v186;
      sub_2195C36B4(v51, v186, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v199 = 9984;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v106 = v194;
      sub_219BF7834();
      if (!v106)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&unk_27CC1C800, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_135;
    case 0x27u:
      v58 = v187;
      sub_2195C36B4(v51, v187, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v199 = 10240;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v100 = v194;
      sub_219BF7834();
      if (!v100)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC15488, type metadata accessor for PuzzleScoreboardTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_135;
    case 0x28u:
      v58 = v188;
      sub_2195C36B4(v51, v188, type metadata accessor for AffinityTagFeedGroup);
      v199 = 10496;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v73 = v194;
      sub_219BF7834();
      if (!v73)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_280ECF7F0, type metadata accessor for AffinityTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_135;
    case 0x29u:
      v58 = v189;
      sub_2195C36B4(v51, v189, type metadata accessor for SponsoredBannerTagFeedGroup);
      v199 = 2304;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v88 = v194;
      sub_219BF7834();
      if (!v88)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C7F8, type metadata accessor for SponsoredBannerTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_135;
    case 0x2Au:
      v58 = v190;
      sub_2195C36B4(v51, v190, type metadata accessor for LatestRecipesTagFeedGroup);
      v199 = 10752;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v102 = v194;
      sub_219BF7834();
      if (!v102)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C7F0, type metadata accessor for LatestRecipesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_135;
    case 0x2Bu:
      v58 = v191;
      sub_2195C36B4(v51, v191, type metadata accessor for SavedRecipesTagFeedGroup);
      v199 = 11008;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v61 = v194;
      sub_219BF7834();
      if (!v61)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC14CF8, type metadata accessor for SavedRecipesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_135;
    case 0x2Cu:
      v58 = v192;
      sub_2195C36B4(v51, v192, type metadata accessor for TrendingRecipesTagFeedGroup);
      v199 = 11264;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v69 = v194;
      sub_219BF7834();
      if (!v69)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&unk_27CC1C7E0, type metadata accessor for TrendingRecipesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_135;
    case 0x2Du:
      v58 = v193;
      sub_2195C36B4(v51, v193, type metadata accessor for TopicRecipesTagFeedGroup);
      v199 = 11520;
      sub_218933D28();
      v60 = v195;
      v59 = v196;
      v98 = v194;
      sub_219BF7834();
      if (!v98)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&qword_27CC1C7D8, type metadata accessor for TopicRecipesTagFeedGroup);
        sub_219BF7834();
      }

      v62 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_135:
      sub_2195C359C(v58, v62);
      result = (*(v198 + 8))(v60, v59);
      break;
    default:
      sub_2195C36B4(v51, v48, type metadata accessor for ArticleListTagFeedGroup);
      v199 = 256;
      sub_218933D28();
      v82 = v195;
      v83 = v196;
      v84 = v194;
      sub_219BF7834();
      if (!v84)
      {
        HIBYTE(v199) = 1;
        sub_21877D2E4(&unk_27CC1C8D0, type metadata accessor for ArticleListTagFeedGroup);
        sub_219BF7834();
      }

      sub_2195C359C(v48, type metadata accessor for ArticleListTagFeedGroup);
      result = (*(v198 + 8))(v82, v83);
      break;
  }

  return result;
}