uint64_t sub_219A32670(uint64_t a1)
{
  v2 = sub_219A328C8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219A326E0()
{
  result = qword_280EB1130;
  if (!qword_280EB1130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1130);
  }

  return result;
}

uint64_t sub_219A32734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A32794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A327FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219A32860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_219A328C8()
{
  result = qword_280EB1158;
  if (!qword_280EB1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1158);
  }

  return result;
}

uint64_t sub_219A3291C()
{
  sub_2186F64EC(0);
  v1 = v0;
  v57 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v54 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v47 - v10;
  v11 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  MEMORY[0x28223BE20](v17 - 8);
  v56 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  sub_218CE8B24(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - v26;
  __swift_allocate_value_buffer(v11, qword_280F61AA0);
  v50 = __swift_project_value_buffer(v11, qword_280F61AA0);
  (*(v7 + 56))(v27, 1, 1, v6);
  v28 = *(v57 + 56);
  v52 = v21;
  v55 = v1;
  v28(v21, 1, 1, v1);
  v29 = sub_219BEF814();
  v30 = *(*(v29 - 8) + 56);
  v53 = v16;
  v30(v16, 1, 1, v29);
  v51 = v27;
  sub_219A32794(v27, v24, sub_218CE8B24);
  v31 = *(v7 + 48);
  if (v31(v24, 1, v6) == 1)
  {
    v32 = v47;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v6, qword_280F61818);
    (*(v7 + 16))(v32, v33, v6);
    if (v31(v24, 1, v6) != 1)
    {
      sub_219A32734(v24, sub_218CE8B24);
    }
  }

  else
  {
    v32 = v47;
    (*(v7 + 32))(v47, v24, v6);
  }

  v34 = sub_219BEDB04();
  v35 = v49;
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  v36 = v48;
  sub_219BEEA04();
  sub_219A32734(v35, sub_218CE8A90);
  (*(v7 + 8))(v32, v6);
  (*(v7 + 32))(v13, v36, v6);
  v58 = 1;
  sub_2186F9548();
  swift_allocObject();
  *&v13[v11[6]] = sub_219BEF534();
  v58 = 0x7FFFFFFFFFFFFFFFLL;
  swift_allocObject();
  *&v13[v11[7]] = sub_219BEF534();
  LOBYTE(v58) = 1;
  sub_2186F95C4();
  swift_allocObject();
  *&v13[v11[8]] = sub_219BEF534();
  v58 = 0;
  sub_2186ECA28();
  swift_allocObject();
  *&v13[v11[9]] = sub_219BEF534();
  v37 = v52;
  v38 = v56;
  sub_219A32794(v52, v56, sub_218CE8AB0);
  v39 = v57;
  v40 = *(v57 + 48);
  v41 = v55;
  if (v40(v38, 1, v55) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186EC9E0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v42 = v54;
    v43 = v56;
    sub_219BEEC74();
    if (v40(v43, 1, v41) != 1)
    {
      sub_219A32734(v43, sub_218CE8AB0);
    }
  }

  else
  {
    v42 = v54;
    (*(v39 + 32))(v54, v38, v41);
  }

  (*(v39 + 32))(&v13[v11[5]], v42, v41);
  v44 = v53;
  sub_219A32794(v53, &v13[v11[10]], sub_2186E4FBC);
  LOBYTE(v58) = 1;
  swift_allocObject();
  v45 = sub_219BEF534();
  sub_219A32734(v44, sub_2186E4FBC);
  sub_219A32734(v37, sub_218CE8AB0);
  sub_219A32734(v51, sub_218CE8B24);
  *&v13[v11[11]] = v45;
  return sub_219A327FC(v13, v50);
}

uint64_t sub_219A33184(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218CC85CC();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MagazineFeedServiceConfig();
  sub_2186EC9E0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v30 = v5;
  v15 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  if ((sub_219BEEC64() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_2186F95C4();
  v17 = v16;
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_13;
  }

  v29 = v17;
  v18 = *(v15 + 40);
  v19 = *(v12 + 48);
  sub_219A32794(a1 + v18, v14, sub_2186E4FBC);
  v20 = a2 + v18;
  v21 = v19;
  sub_219A32794(v20, &v14[v19], sub_2186E4FBC);
  v22 = *(v30 + 48);
  if (v22(v14, 1, v4) == 1)
  {
    if (v22(&v14[v21], 1, v4) == 1)
    {
      sub_219A32734(v14, sub_2186E4FBC);
LABEL_16:
      v23 = sub_219BEF504();
      return v23 & 1;
    }

    goto LABEL_12;
  }

  sub_219A32794(v14, v10, sub_2186E4FBC);
  if (v22(&v14[v21], 1, v4) == 1)
  {
    (*(v30 + 8))(v10, v4);
LABEL_12:
    sub_219A32734(v14, sub_218CC85CC);
    goto LABEL_13;
  }

  v25 = v30;
  (*(v30 + 32))(v7, &v14[v21], v4);
  sub_2186EC9E0(&qword_27CC10CD8, MEMORY[0x277D32720]);
  v28 = sub_219BF53A4();
  v26 = *(v25 + 8);
  v26(v7, v4);
  v26(v10, v4);
  sub_219A32734(v14, sub_2186E4FBC);
  if (v28)
  {
    goto LABEL_16;
  }

LABEL_13:
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_219A33608()
{
  result = qword_27CC22928;
  if (!qword_27CC22928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22928);
  }

  return result;
}

unint64_t sub_219A33660()
{
  result = qword_27CC22930;
  if (!qword_27CC22930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22930);
  }

  return result;
}

unint64_t sub_219A336B8()
{
  result = qword_280EB1148;
  if (!qword_280EB1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1148);
  }

  return result;
}

unint64_t sub_219A33710()
{
  result = qword_280EB1150;
  if (!qword_280EB1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1150);
  }

  return result;
}

unint64_t sub_219A33768()
{
  result = qword_280EB1138;
  if (!qword_280EB1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1138);
  }

  return result;
}

unint64_t sub_219A337C0()
{
  result = qword_280EB1140;
  if (!qword_280EB1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1140);
  }

  return result;
}

uint64_t sub_219A33814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F6C42776F6C6C61 && a2 == 0xED0000676E696B63)
  {

    return 11;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_219A33C14(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6C42776F6C6C61 && a2 == 0xED0000676E696B63)
  {

    return 7;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_219A33EEC(uint64_t a1)
{
  v2 = sub_219A33FFC(qword_280EA3560);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A33FFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InlineCategoriesMagazineFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219A34054()
{
  sub_219BF5524();
}

uint64_t sub_219A34164@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219A354D0();
  *a1 = result;
  return result;
}

void sub_219A34194(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E6574;
  v4 = 0x6E6F436B63617274;
  v5 = 0xE600000000000000;
  v6 = 0x7265746F6F66;
  v7 = 0xE900000000000072;
  v8 = 0x6F74617261706573;
  if (v2 != 4)
  {
    v8 = 0x697242796C696164;
    v7 = 0xED0000676E696665;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6C65436B63617274;
  v10 = 0xE90000000000006CLL;
  if (v2 != 1)
  {
    v9 = 0x726564616568;
    v10 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
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

uint64_t sub_219A3426C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_219A342EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_2186E85EC(0, &qword_280E8B6A0, 255, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = *(v2 + 24);
  *(inited + 72) = &_s4ItemC4KindON;
  *(inited + 80) = 0x656D617266;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v2 + 40);
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  type metadata accessor for CGRect(0);
  *(inited + 120) = v14;
  v15 = swift_allocObject();
  *(inited + 96) = v15;
  v15[2] = v7;
  v15[3] = v9;
  v15[4] = v11;
  v15[5] = v13;
  *(inited + 128) = 0x7461507865646E69;
  *(inited + 136) = 0xE900000000000068;
  v16 = [v5 indexPath];
  *(inited + 168) = sub_219BDC104();
  __swift_allocate_boxed_opaque_existential_1((inited + 144));
  sub_219BDC0B4();

  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  sub_2186E85EC(0, &qword_27CC22948, v17, _s4ItemCMa_0, MEMORY[0x277D6CC20]);
  a1[3] = v18;
  a1[4] = sub_219A35448(v18, v19, v20);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219A34554(uint64_t a1, uint64_t a2)
{
  sub_219A35400(&qword_27CC22958, a2, _s4ItemCMa_0);

  return sub_219BE2324();
}

id sub_219A34608(id a1, void *a2, void *a3)
{
  v7 = sub_219BDC104();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 representedElementKind];
  if (v11)
  {
    v12 = v11;
    v116 = a3;
    v117 = v3;
    v120 = a2;
    v14 = sub_219BF5414();
    v15 = v13;
    v16 = v14 == 0x726564616568 && v13 == 0xE600000000000000;
    v17 = v16;
    v118 = v17;
    if (v16)
    {
      goto LABEL_20;
    }

    v18 = sub_219BF78F4();
    v20 = v14 == 0x7265746F6F66 && v15 == 0xE600000000000000;
    if ((v18 & 1) == 0 && !v20 && (sub_219BF78F4() & 1) == 0)
    {

      return 0;
    }

    if (v118 & 1) != 0 || (sub_219BF78F4())
    {
LABEL_20:
      v21 = [a1 indexPath];
      sub_219BDC0B4();

      v22 = sub_219BDC0D4();
      v119 = *(v8 + 8);
      v119(v10, v7);
      if (v22)
      {

        if (qword_280E8D8A0 != -1)
        {
          swift_once();
        }

        sub_219BF61F4();
        sub_2186E85EC(0, &qword_280E8B5B0, 255, sub_2186C66F8, MEMORY[0x277D84560]);
        v12 = swift_allocObject();
        *(v12 + 1) = xmmword_219C09BA0;
        v23 = a1;
        v24 = [a1 indexPath];
        sub_219BDC0B4();

        sub_219A35400(&unk_27CC1CBB0, 255, MEMORY[0x277CC9AF8]);
        v25 = sub_219BF7894();
        v27 = v26;
        v119(v10, v7);
        *(v12 + 7) = MEMORY[0x277D837D0];
        *(v12 + 8) = sub_2186FC3BC();
        *(v12 + 4) = v25;
        *(v12 + 5) = v27;
        sub_219BE5314();

        sub_219A35314();
        swift_allocError();
        *v28 = a1;
        *(v28 + 8) = 3;
        goto LABEL_36;
      }
    }

    else
    {
      v115 = a1;
      v89 = [a1 indexPath];
      sub_219BDC0B4();

      v90 = sub_219BDC0F4();
      v91 = *(v8 + 8);
      v91(v10, v7);
      if (v90)
      {
        v92 = [v115 indexPath];
        sub_219BDC0B4();

        v93 = sub_219BDC0D4();
        v91(v10, v7);
        if (v93 <= 0)
        {

          if (qword_280E8D8A0 != -1)
          {
            swift_once();
          }

          v120 = qword_280F61768;
          sub_219BF61F4();
          sub_2186E85EC(0, &qword_280E8B5B0, 255, sub_2186C66F8, MEMORY[0x277D84560]);
          v12 = swift_allocObject();
          *(v12 + 1) = xmmword_219C09BA0;
          v23 = v115;
          v109 = [v115 indexPath];
          sub_219BDC0B4();

          sub_219A35400(&unk_27CC1CBB0, 255, MEMORY[0x277CC9AF8]);
          v110 = sub_219BF7894();
          v112 = v111;
          v91(v10, v7);
          *(v12 + 7) = MEMORY[0x277D837D0];
          *(v12 + 8) = sub_2186FC3BC();
          *(v12 + 4) = v110;
          *(v12 + 5) = v112;
          sub_219BE5314();

          sub_219A35314();
          swift_allocError();
          *v113 = v23;
          *(v113 + 8) = 4;
          goto LABEL_36;
        }
      }

      v119 = v91;
      a1 = v115;
    }

    v67 = [a1 indexPath];
    sub_219BDC0B4();

    v68 = a1;
    v69 = sub_219BDC094();
    v119(v10, v7);
    v70 = [v120 supplementaryViewForElementKind:v12 atIndexPath:v69];

    if (v70)
    {
      v71 = v68;
      v72 = v70;
      v73 = [v72 snapshotViewAfterScreenUpdates_];
      if (v73)
      {
        v74 = v73;
        sub_218DB6B50();
        v75 = swift_dynamicCastClass();
        if (v75)
        {
          v76 = [objc_opt_self() separatorColor];
          [v74 setBackgroundColor_];
        }

        sub_218725F94();
        v12 = swift_allocObject();
        *(v12 + 1) = xmmword_219C146A0;
        if (v118)
        {

          v77 = 2;
        }

        else
        {
          v96 = sub_219BF78F4();

          if (v75)
          {
            v97 = 4;
          }

          else
          {
            v97 = 3;
          }

          if (v96)
          {
            v77 = 2;
          }

          else
          {
            v77 = v97;
          }
        }

        [v71 frame];
        [v116 convertRect:v120 fromCoordinateSpace:?];
        v99 = v98;
        v101 = v100;
        v103 = v102;
        v105 = v104;
        _s4ItemCMa_0();
        v106 = swift_allocObject();
        *(v106 + 16) = v72;
        *(v106 + 24) = v77;
        *(v106 + 32) = v74;
        *(v106 + 40) = v71;
        *(v106 + 48) = v99;
        *(v106 + 56) = v101;
        *(v106 + 64) = v103;
        *(v106 + 72) = v105;
        *(v12 + 4) = v106;
        v107 = v71;
      }

      else
      {

        sub_219A35314();
        swift_allocError();
        *v95 = v70;
        *(v95 + 8) = 2;
        swift_willThrow();
      }
    }

    else
    {

      sub_219A35314();
      swift_allocError();
      *v87 = v68;
      *(v87 + 8) = 0;
      swift_willThrow();
      v88 = v68;
    }
  }

  else
  {
    v23 = a1;
    v29 = [a1 indexPath];
    sub_219BDC0B4();

    v30 = sub_219BDC094();
    (*(v8 + 8))(v10, v7);
    v12 = [a2 cellForItemAtIndexPath_];

    if (!v12)
    {
      sub_219A35314();
      swift_allocError();
      *v78 = v23;
      *(v78 + 8) = 0;
LABEL_36:
      swift_willThrow();
      v79 = v23;
      return v12;
    }

    v31 = v23;
    sub_219A35368();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = v32;
      v116 = a3;
      v34 = v12;
      v35 = sub_219BE7314();
      v36 = [v35 snapshotViewAfterScreenUpdates_];

      v37 = sub_219BE7314();
      v12 = v37;
      if (v36)
      {
        v120 = a2;
        v117 = v3;
        [v37 setHidden_];

        v38 = sub_219BE7314();
        v39 = [v38 snapshotViewAfterScreenUpdates_];

        v40 = sub_219BE7314();
        v12 = v40;
        if (v39)
        {
          [v40 setHidden_];

          sub_218725F94();
          v12 = swift_allocObject();
          *(v12 + 1) = xmmword_219C189F0;
          v119 = v34;
          v41 = v39;
          [v23 frame];
          v42 = v116;
          v43 = v120;
          [v116 convertRect:v120 fromCoordinateSpace:?];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;
          _s4ItemCMa_0();
          v52 = swift_allocObject();
          *(v52 + 16) = v33;
          *(v52 + 24) = 1;
          *(v52 + 32) = v41;
          *(v52 + 40) = v31;
          *(v52 + 48) = v45;
          *(v52 + 56) = v47;
          *(v52 + 64) = v49;
          *(v52 + 72) = v51;
          *(v12 + 4) = v52;
          v53 = v31;
          v54 = sub_219BE7314();
          v55 = v36;
          [v53 frame];
          [v42 convertRect:v43 fromCoordinateSpace:?];
          v57 = v56;
          v59 = v58;
          v61 = v60;
          v63 = v62;
          v64 = swift_allocObject();
          *(v64 + 16) = v54;
          *(v64 + 24) = 0;
          *(v64 + 32) = v55;
          *(v64 + 40) = v53;
          *(v64 + 48) = v57;
          *(v64 + 56) = v59;
          *(v64 + 64) = v61;
          *(v64 + 72) = v63;
          *(v12 + 5) = v64;
          v65 = v53;
          v66 = v119;
        }

        else
        {
          sub_219A35314();
          swift_allocError();
          *v108 = v12;
          *(v108 + 8) = 2;
          swift_willThrow();
        }
      }

      else
      {
        sub_219A35314();
        swift_allocError();
        *v94 = v12;
        *(v94 + 8) = 2;
        swift_willThrow();
      }
    }

    else
    {
      if (qword_280E8D8A0 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_2186E85EC(0, &qword_280E8B5B0, 255, sub_2186C66F8, MEMORY[0x277D84560]);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_219C09BA0;
      v82 = [v12 description];
      v83 = sub_219BF5414();
      v85 = v84;

      *(v81 + 56) = MEMORY[0x277D837D0];
      *(v81 + 64) = sub_2186FC3BC();
      *(v81 + 32) = v83;
      *(v81 + 40) = v85;
      sub_219BE5314();

      sub_219A35314();
      swift_allocError();
      *v86 = v12;
      *(v86 + 8) = 1;
      swift_willThrow();
    }
  }

  return v12;
}

unint64_t sub_219A35314()
{
  result = qword_27CC22938;
  if (!qword_27CC22938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22938);
  }

  return result;
}

void sub_219A35368()
{
  if (!qword_27CC22940)
  {
    sub_219BF1E14();
    sub_219A35400(&unk_280E905B0, 255, MEMORY[0x277D33638]);
    v0 = sub_219BE7344();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22940);
    }
  }
}

uint64_t sub_219A35400(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_219A35448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CC22950;
  if (!qword_27CC22950)
  {
    sub_2186E85EC(255, &qword_27CC22948, a3, _s4ItemCMa_0, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22950);
  }

  return result;
}

uint64_t sub_219A354D0()
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

uint64_t type metadata accessor for ChannelSectionsGroupSectionModel()
{
  result = qword_280EA6C78;
  if (!qword_280EA6C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A355AC()
{
  sub_2186D6710(319, &qword_280E8E390);
  if (v0 <= 0x3F)
  {
    sub_2186D6710(319, &qword_280E8E360);
    if (v1 <= 0x3F)
    {
      sub_2187E7248();
      if (v2 <= 0x3F)
      {
        sub_219BDB954();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t FCColorGradient.gradientDescriptor.getter()
{
  v1 = v0;

  return sub_219BE73D4();
}

uint64_t sub_219A356D4(void *a1)
{
  sub_219A366E8(0, &qword_27CC229A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A36568();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_219A3674C(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SportsRecordTagFeedGroup();
    v9[14] = 1;
    sub_219BF1614();
    sub_219A3674C(&qword_27CC229A8, MEMORY[0x277D333E0]);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A358E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_2186DBB60(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BED8D4();
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A366E8(0, &qword_27CC22988, MEMORY[0x277D844C8]);
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A36568();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v12;
  v22 = v14;
  v15 = v24;
  v30 = 0;
  sub_219A3674C(&unk_280E92630, MEMORY[0x277D31C50]);
  v16 = v25;
  v17 = v26;
  v18 = v28;
  sub_219BF7734();
  (*(v15 + 32))(v22, v16, v18);
  sub_219BF1614();
  v29 = 1;
  sub_219A3674C(&qword_27CC22998, MEMORY[0x277D333E0]);
  sub_219BF76E4();
  (*(v27 + 8))(v11, v17);
  v19 = v22;
  sub_219A365BC(v6, &v22[*(v21 + 20)]);
  sub_219A36620(v19, v23, type metadata accessor for SportsRecordTagFeedGroup);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219A36688(v19, type metadata accessor for SportsRecordTagFeedGroup);
}

uint64_t sub_219A35CF8()
{
  if (*v0)
  {
    return 0x64726F636572;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

uint64_t sub_219A35D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F636572 && a2 == 0xE600000000000000)
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

uint64_t sub_219A35E14(uint64_t a1)
{
  v2 = sub_219A36568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A35E50(uint64_t a1)
{
  v2 = sub_219A36568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A35EBC(uint64_t a1)
{
  v2 = sub_219A3674C(&qword_27CC22980, type metadata accessor for SportsRecordTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A35F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DBB60(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A36300();
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BED784();
  v16 = v15;
  if (v14 == sub_219BED784() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_219BF78F4();

    v19 = 0;
    if ((v18 & 1) == 0)
    {
      return v19 & 1;
    }
  }

  v20 = *(type metadata accessor for SportsRecordTagFeedGroup() + 20);
  v21 = *(v11 + 48);
  sub_219A36620(a1 + v20, v13, sub_2186DBB60);
  sub_219A36620(a2 + v20, &v13[v21], sub_2186DBB60);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    v23 = v22(&v13[v21], 1, v4);
    if (v23 == 1)
    {
      v24 = sub_2186DBB60;
    }

    else
    {
      v24 = sub_219A36300;
    }

    if (v23 == 1)
    {
      v19 = -1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_219A36620(v13, v9, sub_2186DBB60);
    if (v22(&v13[v21], 1, v4) == 1)
    {
      (*(v5 + 8))(v9, v4);
      v19 = 0;
      v25 = sub_219A36300;
    }

    else
    {
      v26 = v30;
      (*(v5 + 32))(v30, &v13[v21], v4);
      sub_219A3674C(&qword_27CC22968, MEMORY[0x277D333E0]);
      v19 = sub_219BF53A4();
      v27 = *(v5 + 8);
      v27(v26, v4);
      v27(v9, v4);
      v25 = sub_2186DBB60;
    }

    v24 = v25;
  }

  sub_219A36688(v13, v24);
  return v19 & 1;
}

void sub_219A36300()
{
  if (!qword_27CC22960)
  {
    sub_2186DBB60(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC22960);
    }
  }
}

uint64_t sub_219A36464(uint64_t a1)
{
  result = sub_219A3674C(&unk_27CC1C690, type metadata accessor for SportsRecordTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219A364BC(void *a1)
{
  a1[1] = sub_219A3674C(&qword_27CC22980, type metadata accessor for SportsRecordTagFeedGroup);
  a1[2] = sub_219A3674C(&qword_27CC1C798, type metadata accessor for SportsRecordTagFeedGroup);
  result = sub_219A3674C(&qword_27CC1C8A8, type metadata accessor for SportsRecordTagFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_219A36568()
{
  result = qword_27CC22990;
  if (!qword_27CC22990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22990);
  }

  return result;
}

uint64_t sub_219A365BC(uint64_t a1, uint64_t a2)
{
  sub_2186DBB60(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A36620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A36688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219A366E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A36568();
    v7 = a3(a1, &type metadata for SportsRecordTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A3674C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219A367A8()
{
  result = qword_27CC229B0;
  if (!qword_27CC229B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC229B0);
  }

  return result;
}

unint64_t sub_219A36800()
{
  result = qword_27CC229B8;
  if (!qword_27CC229B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC229B8);
  }

  return result;
}

unint64_t sub_219A36858()
{
  result = qword_27CC229C0;
  if (!qword_27CC229C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC229C0);
  }

  return result;
}

uint64_t sub_219A368AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v33 = type metadata accessor for SharedWithYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v33);
  v32 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BDBD64();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v28);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C40500();
  v26 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934EC04();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v27 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  sub_219A36D3C(&qword_27CC19078, sub_218C40500);
  sub_219A36D3C(&qword_27CC19080, sub_218C40500);
  sub_219BE2444();
  sub_218EA89D8();
  v19 = *(v18 + 48);
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v22 = v21;
  (*(v3 + 8))(v5, v30);
  *v7 = v20;
  v7[1] = v22;
  sub_21988B010(v31, v7 + v19);
  swift_storeEnumTagMultiPayload();
  sub_219A36D3C(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v29 + 8))(v10, v26);
  v23 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
  (*(v13 + 16))(v27, v17, v12);
  sub_219A36D3C(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  sub_219BE6924();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_219A36D3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219A36D84(uint64_t a1, uint64_t a2)
{
  sub_2189C026C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219A36DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189C026C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for ChannelIssuesModel()
{
  result = qword_27CC229C8;
  if (!qword_27CC229C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219A36EB8(uint64_t a1)
{
  sub_2189C026C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_219BF0744();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

uint64_t sub_219A36F8C()
{
  v1 = sub_219BE59F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ChannelIssuesModel();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DEF0E4(v0, v7);
  *(v39 + 9) = *(v7 + 9);
  v39[0] = *v7;
  if (BYTE8(v39[1]) == 1)
  {
    v8 = MEMORY[0x277D84560];
    sub_219A3841C(0, &unk_280E8C008, MEMORY[0x277D31AD0], MEMORY[0x277D84560]);
    v9 = sub_219BE5A04();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C09BA0;
    (*(v10 + 104))(v12 + v11, *MEMORY[0x277D31AB8], v9);
    v37 = sub_218C3D46C(v12);
    swift_setDeallocating();
    (*(v10 + 8))(v12 + v11, v9);
    swift_deallocClassInstance();
    v36 = sub_219BE5A14();
    v13 = *&v39[0];
    sub_219A3841C(0, &unk_280E8BD80, MEMORY[0x277D31B20], v8);
    v14 = sub_219BEAAD4();
    v15 = *(v14 - 8);
    v16 = v2;
    v17 = v15;
    v34 = v1;
    v18 = *(v15 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09EC0;
    v21 = v20 + v19;
    v22 = *(v17 + 104);
    v22(v21, *MEMORY[0x277D31B18], v14);
    v22(v21 + v18, *MEMORY[0x277D31B10], v14);
    *v4 = v13;
    v4[1] = v20;
    v4[2] = 0;
    v23 = v34;
    (*(v16 + 104))(v4, *MEMORY[0x277D31A28], v34);
    v24 = v13;
    v38 = v7;
    v35 = MEMORY[0x21CEBC780](v4, v37);

    (*(v16 + 8))(v4, v23);
    v25 = *&v39[0];
    LOBYTE(v23) = BYTE8(v39[0]);
    LOBYTE(v14) = BYTE9(v39[0]);
    LOBYTE(v21) = BYTE10(v39[0]);
    LOBYTE(v22) = BYTE11(v39[0]);
    LOBYTE(v16) = BYTE12(v39[0]);
    v26 = *&v39[1];
    LOBYTE(v13) = BYTE8(v39[1]);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v23;
    *(v27 + 25) = v14;
    *(v27 + 26) = v21;
    *(v27 + 27) = v22;
    *(v27 + 28) = v16;
    *(v27 + 32) = v26;
    *(v27 + 40) = v13;
    v7 = v38;
    swift_allocObject();
    v28 = sub_219BE59B4();
  }

  else
  {
    sub_218950D08(v39);
    v28 = 0;
  }

  sub_2189C026C();
  v30 = *(v29 + 48);
  v31 = sub_219BF0744();
  (*(*(v31 - 8) + 8))(v7 + v30, v31);
  return v28;
}

uint64_t sub_219A37440(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DEF0E4(v1, v3);
  v4 = *v3;
  v5 = v3[2];
  sub_2189C026C();
  v7 = *(v6 + 48);
  v8 = [v4 identifier];
  v9 = sub_219BF5414();

  v10 = sub_219BF0744();
  (*(*(v10 - 8) + 8))(v3 + v7, v10);
  return v9;
}

uint64_t sub_219A37548(uint64_t a1, uint64_t a2)
{
  v4 = sub_219A384E4(&qword_27CC229F0, type metadata accessor for ChannelIssuesModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_219A376E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v86 = sub_219BF0534();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF06A4();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x28223BE20](v4);
  v85 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v66 - v7;
  v93 = sub_219BF19D4();
  v8 = *(v93 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v93);
  v82 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v66 - v11;
  v91 = sub_219BF0574();
  v12 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v80 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  sub_219A3841C(0, &qword_280E90EA8, MEMORY[0x277D32F60], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  v22 = sub_219BF0744();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v77 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v66 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v66 - v29;
  v31 = type metadata accessor for ChannelIssuesModel();
  MEMORY[0x28223BE20](v31 - 8);
  v33 = (&v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DEF0E4(v2, v33);
  *v94 = *v33;
  *&v94[9] = *(v33 + 9);
  sub_2189C026C();
  v35 = *(v34 + 48);
  v36 = v23;
  v76 = v23;
  v37 = *(v23 + 32);
  v38 = v30;
  v78 = v30;
  v90 = v22;
  v37(v30, v33 + v35, v22);
  v75 = *v94;
  v39 = [*v94 identifier];
  v74 = sub_219BF5414();
  v73 = v40;

  v72 = *(v36 + 16);
  v72(v27, v38, v22);
  v41 = sub_219BF0794();
  v42 = *(*(v41 - 8) + 56);
  v43 = v21;
  v68 = v21;
  v42(v21, 1, 1, v41);
  v44 = *MEMORY[0x277D32D70];
  v69 = v12;
  v45 = *(v12 + 104);
  v46 = v16;
  v67 = v16;
  v47 = v16;
  v48 = v91;
  v45(v47, v44, v91);
  v49 = 256;
  if (!v94[9])
  {
    v49 = 0;
  }

  if (v94[12])
  {
    v50 = MEMORY[0x277D32D48];
  }

  else
  {
    v50 = MEMORY[0x277D32D40];
  }

  v51 = v92;
  v71 = v27;
  sub_2198D47EC(*v94, v49 | v94[8], v92);
  (*(v84 + 104))(v81, *v50, v86);
  v52 = v83;
  sub_219BF0694();
  (*(v8 + 16))(v82, v51, v93);
  v72(v77, v27, v90);
  (*(v12 + 16))(v80, v46, v48);
  sub_218DFDB20(v43, v79);
  v53 = *&v94[16];
  v54 = v87;
  v55 = v52;
  v56 = v52;
  v57 = v88;
  (*(v87 + 16))(v85, v55, v88);
  v58 = v75;
  v59 = v53;
  v60 = v89;
  sub_219BF0654();
  sub_218950D08(v94);
  (*(v54 + 8))(v56, v57);
  (*(v70 + 8))(v92, v93);
  (*(v69 + 8))(v67, v91);
  sub_218DFDBB4(v68);
  v61 = *(v76 + 8);
  v62 = v90;
  v61(v71, v90);
  v61(v78, v62);
  v63 = *MEMORY[0x277D32DD8];
  v64 = sub_219BF0614();
  return (*(*(v64 - 8) + 104))(v60, v63, v64);
}

uint64_t sub_219A37F40()
{
  v1 = sub_219BF0614();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DEF0E4(v0, v7);
  v8 = *v7;

  sub_2189C026C();
  v10 = *(v9 + 48);
  sub_219A376E8(v4);
  v11 = sub_219BF05A4();
  (*(v2 + 8))(v4, v1);
  v12 = sub_219BF0744();
  (*(*(v12 - 8) + 8))(v7 + v10, v12);
  return v11;
}

BOOL sub_219A380CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF0744();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  sub_219A38480();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (v13 + *(v14 + 56));
  sub_218DEF0E4(a1, v13);
  sub_218DEF0E4(a2, v15);
  *v35 = *v13;
  *&v35[9] = *(v13 + 9);
  sub_2189C026C();
  v17 = *(v16 + 48);
  *v36 = *v15;
  *&v36[9] = *(v15 + 9);
  v18 = *(v5 + 32);
  v18(v10, v13 + v17, v4);
  v18(v7, v15 + v17, v4);
  v19 = 256;
  if (v35[9])
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v35[8];
  v22 = 0x10000;
  if (v35[10])
  {
    v23 = 0x10000;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0x1000000;
  if (v35[11])
  {
    v25 = 0x1000000;
  }

  else
  {
    v25 = 0;
  }

  v26 = v21 | v23 | v25;
  if (v35[12])
  {
    v27 = 0x100000000;
  }

  else
  {
    v27 = 0;
  }

  if (!v36[9])
  {
    v19 = 0;
  }

  v28 = v19 | v36[8];
  if (!v36[10])
  {
    v22 = 0;
  }

  if (!v36[11])
  {
    v24 = 0;
  }

  v29 = v28 | v22 | v24;
  if (v36[12])
  {
    v30 = 0x100000000;
  }

  else
  {
    v30 = 0;
  }

  if (sub_2193BF548(*v35, v26 | v27, *&v35[16], v35[24], *v36, v29 | v30, *&v36[16], v36[24]))
  {
    sub_219A384E4(&qword_27CC0EA10, MEMORY[0x277D32F30]);
    sub_219BF5874();
    sub_219BF5874();
    sub_218950D08(v36);
    sub_218950D08(v35);
    v31 = *(v5 + 8);
    v31(v7, v4);
    v31(v10, v4);
    return v34[1] == v34[0];
  }

  else
  {
    sub_218950D08(v36);
    sub_218950D08(v35);
    v33 = *(v5 + 8);
    v33(v7, v4);
    v33(v10, v4);
    return 0;
  }
}

void sub_219A3841C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_219A38480()
{
  if (!qword_27CC22A00)
  {
    type metadata accessor for ChannelIssuesModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC22A00);
    }
  }
}

uint64_t sub_219A384E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TrendingTodayFeedGroupKnobs()
{
  result = qword_280EB60A0;
  if (!qword_280EB60A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A385A4()
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

uint64_t sub_219A38658@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  sub_2189AE9B4(0);
  v74 = v3;
  v71 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v70 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v68 = v5;
  v66 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for TrendingTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v72);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = v57 - v13;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v14 - 8);
  v67 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = v57 - v17;
  sub_219A394C8(0, &qword_280E8CC68, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v22 = v57 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A39474();
  v23 = v76;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v11;
  v62 = a1;
  v64 = 0;
  v65 = v20;
  v76 = v8;
  LOBYTE(v81) = 0;
  sub_2186DF998(&qword_280E91A28, sub_2189AE994);
  v25 = v75;
  v26 = v68;
  sub_219BF7674();
  LOBYTE(v81) = 1;
  sub_2186DF998(&qword_280E91868, sub_2189AE9B4);
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v80) = 2;
  sub_2186DF998(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v60 = v81;
  LOBYTE(v79) = 3;
  sub_219BF7674();
  v58 = v80;
  sub_2186ECA28();
  v28 = v27;
  LOBYTE(v78) = 4;
  sub_2186DF998(&qword_280E913D8, sub_2186ECA28);
  v29 = v19;
  v57[1] = v28;
  v63 = v22;
  sub_219BF7674();
  v59 = v79;
  v30 = v67;
  sub_2189AF794(v25, v67, sub_2189AF720);
  v31 = v66;
  v32 = *(v66 + 48);
  v33 = v32(v30, 1, v26);
  v34 = v26;
  v35 = v31;
  if (v33 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF998(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v36 = v69;
    sub_219BEE974();
    v37 = v32(v30, 1, v34);
    v38 = v36;
    v39 = v61;
    if (v37 != 1)
    {
      sub_2189AF7FC(v30, sub_2189AF720);
    }
  }

  else
  {
    v38 = v69;
    (*(v31 + 32))(v69, v30, v34);
    v39 = v61;
  }

  v40 = v76;
  (*(v35 + 32))(v76, v38, v34);
  sub_2189AF794(v77, v39, sub_2189AF700);
  v41 = v71;
  v42 = *(v71 + 48);
  v43 = v74;
  v44 = v42(v39, 1, v74);
  v69 = v29;
  if (v44 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    v45 = v39;
    sub_2186DF998(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v46 = v70;
    sub_219BEEC74();
    v47 = v42(v39, 1, v43);
    v48 = v46;
    v50 = v72;
    v49 = v73;
    v51 = v75;
    if (v47 != 1)
    {
      sub_2189AF7FC(v45, sub_2189AF700);
    }
  }

  else
  {
    v48 = v70;
    (*(v41 + 32))(v70, v39, v43);
    v50 = v72;
    v49 = v73;
    v51 = v75;
  }

  (*(v41 + 32))(v40 + v50[5], v48, v43);
  v52 = v63;
  if (v60)
  {
    v53 = v60;
  }

  else
  {
    v78 = 6;
    swift_allocObject();
    v53 = sub_219BEF534();
  }

  v54 = v59;
  *(v40 + v50[6]) = v53;
  v55 = v58;
  if (v58)
  {
  }

  else
  {
    v78 = 6;
    swift_allocObject();

    v55 = sub_219BEF534();
  }

  v56 = v65;
  *(v40 + v50[7]) = v55;
  if (!v54)
  {
    v78 = 0x3FE0000000000000;
    swift_allocObject();
    v54 = sub_219BEF534();
  }

  sub_2189AF7FC(v77, sub_2189AF700);
  sub_2189AF7FC(v51, sub_2189AF720);
  (*(v56 + 8))(v52, v69);
  *(v40 + v50[8]) = v54;
  sub_219A3952C(v40, v49);
  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_219A38FA4(void *a1)
{
  v3 = v1;
  sub_219A394C8(0, &qword_280E8C460, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A39474();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AE994(0);
  sub_2186DF998(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for TrendingTodayFeedGroupKnobs();
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
    sub_2186ECA28();
    sub_2186DF998(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219A392F8()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6565736E556E696DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6F6F706572;
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

uint64_t sub_219A393A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219A397BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219A393C8(uint64_t a1)
{
  v2 = sub_219A39474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A39404(uint64_t a1)
{
  v2 = sub_219A39474();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219A39474()
{
  result = qword_280EB60D0[0];
  if (!qword_280EB60D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB60D0);
  }

  return result;
}

void sub_219A394C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A39474();
    v7 = a3(a1, &type metadata for TrendingTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A3952C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendingTodayFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A39590()
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DF998(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TrendingTodayFeedGroupKnobs();
  if ((sub_219BEEC64() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186ECA28();
  return sub_219BEF504() & 1;
}

unint64_t sub_219A396B8()
{
  result = qword_27CC22A08;
  if (!qword_27CC22A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22A08);
  }

  return result;
}

unint64_t sub_219A39710()
{
  result = qword_280EB60C0;
  if (!qword_280EB60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB60C0);
  }

  return result;
}

unint64_t sub_219A39768()
{
  result = qword_280EB60C8;
  if (!qword_280EB60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB60C8);
  }

  return result;
}

uint64_t sub_219A397BC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6565736E556E696DLL && a2 == 0xEE006F697461526ELL)
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

uint64_t sub_219A3998C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_219A399DC(uint64_t a1)
{
  v3 = sub_219BE2C84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 104);
  v8 = sub_219BF5204();
  LODWORD(v7) = [v7 shouldHandleNotification_];

  if (v7)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D6CE80], v3);
    sub_219A3B2AC(0);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    MEMORY[0x28223BE20](v9);
    *(&v13 - 2) = v1;
    *(&v13 - 1) = a1;
    sub_219BE3204();
    v11 = sub_219BE2E54();
    v12 = sub_219BE2F74();

    return v12;
  }
}

uint64_t sub_219A39BAC(uint64_t a1)
{
  v3 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE2C84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  if (sub_219BEED44())
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v10 = MEMORY[0x277D6CE78];
  }

  else
  {
    sub_219656878(a1, v5);
    if (swift_getEnumCaseMultiPayload())
    {
      v11 = sub_219746A90(v5, type metadata accessor for UserNotification.Kind);
      MEMORY[0x28223BE20](v11);
      *(&v15 - 2) = v1;
      *(&v15 - 1) = a1;
      sub_219A3B2FC();
      sub_219BE3204();
      v12 = sub_219BE2E54();
      v13 = sub_219BE2F84();

      return v13;
    }

    sub_219746A90(v5, type metadata accessor for UserNotification.ArticleData);
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v10 = MEMORY[0x277D6CE80];
  }

  (*(v7 + 104))(v9, *v10, v6);
  sub_219A3B2AC(0);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219A39F90()
{
  sub_219A3B36C(0, &qword_27CC22A40, sub_219A3B2FC, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_219A3A024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 16);

  v10 = [v9 privatePushNotificationHandler];
  v11 = sub_219BF5204();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_218846958;
  *(v12 + 24) = v8;
  v14[4] = sub_218BFF7C4;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21990CDA0;
  v14[3] = &block_descriptor_40_5;
  v13 = _Block_copy(v14);

  [v10 handleRemoteNotification:v11 completionHandler:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t sub_219A3A194(void **a1)
{
  v1 = *a1;
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return sub_219A3A238(v1);
}

uint64_t sub_219A3A238(void *a1)
{
  v2 = sub_219BE2C84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_11;
  }

  v6 = a1;
  if (![v6 wasHandled] || (v7 = objc_msgSend(objc_opt_self(), sel_sharedApplication), v8 = objc_msgSend(v7, sel_applicationState), v7, v8 != 2))
  {

LABEL_11:
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    (*(v3 + 104))(v5, *MEMORY[0x277D6CE80], v2);
    sub_219A3B2AC(0);
    swift_allocObject();
    return sub_219BE3014();
  }

  v9 = *(v22[1] + 16);
  v10 = [v9 readingList];
  v11 = [v6 recordZoneIDs];
  if (v11)
  {
    sub_2186C6148(0, &qword_27CC22A20);
    sub_219A3B64C();
    sub_219BF5D44();

    v11 = sub_219BF5D34();
  }

  v12 = [v10 isBackedByAnyRecordZoneIDsInSet_];

  if (v12)
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_219A3B36C(0, &unk_280EE69C0, type metadata accessor for FCFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v13 = sub_219BE30B4();
    swift_allocObject();
LABEL_20:
    v18 = sub_219BE30B4();
    sub_218725F94();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C189F0;
    *(v19 + 32) = v13;
    *(v19 + 40) = v18;

    v20 = sub_219A3B3D8();

    return v20;
  }

  v15 = [v9 subscriptionList];
  v16 = [v6 recordZoneIDs];
  if (v16)
  {
    sub_2186C6148(0, &qword_27CC22A20);
    sub_219A3B64C();
    sub_219BF5D44();

    v16 = sub_219BF5D34();
  }

  v17 = [v15 isBackedByAnyRecordZoneIDsInSet_];

  if (v17)
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF61D4();
    sub_219BE5314();
    sub_219A3B36C(0, &unk_280EE69C0, type metadata accessor for FCFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v13 = sub_219BE30B4();
    swift_allocObject();
    goto LABEL_20;
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D6CE80], v2);
  sub_219A3B2AC(0);
  swift_allocObject();
  v21 = sub_219BE3014();

  return v21;
}

void sub_219A3A868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);

  v12 = [v11 readingHistory];
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = sub_218C1DDD4;
  v13[5] = v10;
  v15[4] = sub_219A3B6F0;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_218E28EBC;
  v15[3] = &block_descriptor_203;
  v14 = _Block_copy(v15);

  [v12 syncWithCompletion_];
  _Block_release(v14);
}

uint64_t sub_219A3A9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = a5[11];
  v10 = a5[12];
  __swift_project_boxed_opaque_existential_1(a5 + 8, v9);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_218846958;
  *(v11 + 24) = v8;
  v12 = *(v10 + 24);

  v12(sub_219A3B6C4, v11, v9, v10);
}

void sub_219A3AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);

  v12 = [v11 subscriptionList];
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = sub_218C1DDD4;
  v13[5] = v10;
  v15[4] = sub_219A3B7C8;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_218E28EBC;
  v15[3] = &block_descriptor_31_5;
  v14 = _Block_copy(v15);

  [v12 syncWithCompletion_];
  _Block_release(v14);
}

void sub_219A3ABF8(uint64_t a1, id a2, void (*a3)(id), int a4, void (*a5)(uint64_t), int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v12 = a2;
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
    a3(a2);
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    a5(a1);
  }
}

void sub_219A3AD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);

  v12 = [v11 subscriptionController];
  if (v12)
  {
    v13 = v12;
    sub_2186C6148(0, &qword_280E8E3B0);
    v14 = sub_219BF66A4();
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = sub_218C1DDD4;
    v15[5] = v10;
    v17[4] = sub_219A3B7BC;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_218838DAC;
    v17[3] = &block_descriptor_21_5;
    v16 = _Block_copy(v17);

    [v13 fetchSubscribedTagsWithCallbackQueue:v14 preferCache:0 completion:v16];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_219A3AEF4(int a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
    a3(a2);
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    a5(0);
  }
}

uint64_t sub_219A3B054(uint64_t a1)
{
  v2 = sub_219BE2C84();
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a1 + 16);
  v8 = (*a1 + 32);
  v9 = MEMORY[0x277D6CE88];
  v10 = v7;
  v11 = v8;
  while (v10)
  {
    v12 = *v11++;
    --v10;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v9 = MEMORY[0x277D6CE80];
  while (v7)
  {
    v13 = *v8++;
    --v7;
    if (v13 == 2)
    {
      v9 = MEMORY[0x277D6CE78];
      break;
    }
  }

LABEL_9:
  (*(v3 + 104))(v6, *v9, v4);
  sub_219A3B2AC(0);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219A3B194()
{
  v0 = sub_219BE2C84();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6CE78], v1);
  sub_219A3B2AC(0);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_219A3B2FC()
{
  if (!qword_27CC22A10)
  {
    sub_2186C6148(255, &qword_27CC22A18);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22A10);
    }
  }
}

void sub_219A3B36C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A3B3D8()
{
  v0 = sub_219BED214();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v16 - v5;
  v7 = sub_219BE2E54();
  type metadata accessor for FCFetchResult(0);
  sub_219BE2D64();

  v8 = sub_219BE2E54();
  sub_219BE2C84();
  v9 = sub_219BE2F64();

  sub_219BED1F4();
  sub_219BED244();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_219BE2E14();
  v10(v6, v0);
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F64();

  sub_219A3B2AC(0);
  sub_218725F94();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C189F0;
  *(v13 + 32) = v12;
  *(v13 + 40) = v9;
  v16[1] = v13;
  sub_219A3B36C(0, &qword_27CC22A30, sub_219A3B2AC, MEMORY[0x277D83940]);
  sub_219A3B734();
  v14 = sub_219BE2F44();

  return v14;
}

unint64_t sub_219A3B64C()
{
  result = qword_27CC22A28;
  if (!qword_27CC22A28)
  {
    sub_2186C6148(255, &qword_27CC22A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22A28);
  }

  return result;
}

unint64_t sub_219A3B734()
{
  result = qword_27CC22A38;
  if (!qword_27CC22A38)
  {
    sub_219A3B36C(255, &qword_27CC22A30, sub_219A3B2AC, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22A38);
  }

  return result;
}

uint64_t sub_219A3B82C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219A3B928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(*v3 + 56, &v11);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  sub_219A3C070(v10, &v9);
  sub_2189863C8();
  swift_allocObject();
  sub_218DC2954();

  v7 = sub_219BE6E64();
  sub_219A3C0CC(v10);
  return v7;
}

uint64_t sub_219A3B9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(*v3 + 56, &v11);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  sub_219A3BFC0(v10, &v9);
  sub_2189863C8();
  swift_allocObject();
  sub_21922B9B8();

  v7 = sub_219BE6E64();
  sub_219A3C01C(v10);
  return v7;
}

uint64_t sub_219A3BA90(uint64_t a1)
{
  refreshed = type metadata accessor for HistoryFeedRefreshBlueprintModifier();
  MEMORY[0x28223BE20](refreshed);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_219A3BEF8(a1, &v12 - v7, type metadata accessor for HistoryFeedRefreshResult);
  sub_218718690(v9 + 56, &v8[*(refreshed + 20)]);
  sub_219A3BEF8(v8, v5, type metadata accessor for HistoryFeedRefreshBlueprintModifier);
  sub_2189863C8();
  swift_allocObject();
  sub_2186FFA74(&qword_27CC15F28, type metadata accessor for HistoryFeedRefreshBlueprintModifier);
  v10 = sub_219BE6E64();
  sub_219A3BF60(v8, type metadata accessor for HistoryFeedRefreshBlueprintModifier);
  return v10;
}

uint64_t sub_219A3BC04(uint64_t a1)
{
  sub_218718690(*v1 + 56, &v7);
  v6 = a1;
  sub_219A3BE48(&v6, &v5);
  sub_2189863C8();
  swift_allocObject();
  sub_219A01174();

  v3 = sub_219BE6E64();
  sub_219A3BEA4(&v6);
  return v3;
}

uint64_t sub_219A3BCA4()
{
  sub_2189863C8();
  swift_allocObject();
  sub_219296C28();
  return sub_219BE6E64();
}

uint64_t sub_219A3BCEC(uint64_t a1)
{
  v2 = type metadata accessor for HistoryFeedFailedBlueprintModifier();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_219A3BEF8(a1, &v10 - v6, type metadata accessor for HistoryFeedFailedData);
  sub_219A3BEF8(v7, v4, type metadata accessor for HistoryFeedFailedBlueprintModifier);
  sub_2189863C8();
  swift_allocObject();
  sub_2186FFA74(&qword_27CC22A48, type metadata accessor for HistoryFeedFailedBlueprintModifier);
  v8 = sub_219BE6E64();
  sub_219A3BF60(v7, type metadata accessor for HistoryFeedFailedBlueprintModifier);
  return v8;
}

uint64_t sub_219A3BEF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A3BF60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219A3C324(uint64_t a1, unsigned __int8 *a2)
{
  sub_2187F5EC8(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_218AD7D2C(a1, v6);
    v10 = sub_219BF3344();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      sub_218AD7DC0(v6);
    }

    else
    {
      v12 = sub_219BF3334();
      (*(v11 + 8))(v6, v10);
      v13 = [v12 asSports];
      swift_unknownObjectRelease();
      if (v13)
      {
        if (v7 != 2)
        {
          sub_219BDCDE4();
          v15 = swift_allocObject();
          *(v15 + 16) = v13;
          *(v15 + 24) = v7 & 1;
          swift_unknownObjectRetain();
          sub_219BDD154();

          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
      }
    }

    sub_2186C66AC();
    v14 = sub_219BF6F64();
    sub_219BF6214();
    sub_219BE5314();
  }
}

uint64_t sub_219A3C59C(uint64_t a1, void *a2, char a3)
{
  v5 = sub_219BE1444();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 identifier];
  sub_219BF5414();

  sub_219BE1424();
  sub_2187F5EC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v10 = sub_219BDCD44();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277CEAD18], v10);
  sub_219A3CCFC(&unk_280EE8030, MEMORY[0x277D2F260]);
  sub_219BDCCC4();

  (*(v6 + 8))(v8, v5);
  if (a3)
  {
    sub_219BE09D4();
    v14 = &unk_27CC22A88;
    v15 = MEMORY[0x277D2E9B0];
  }

  else
  {
    sub_219BE0664();
    v14 = &unk_27CC22A90;
    v15 = MEMORY[0x277D2E698];
  }

  sub_219A3CCFC(v14, v15);
  memset(v17, 0, sizeof(v17));
  sub_219BDCCE4();
  return sub_218806FD0(v17);
}

void sub_219A3C8AC(void **a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v2)
    {
      v6 = [v2 asSports];
      if (v6)
      {
        if (v3 != 2)
        {
          v8 = v6;
          sub_219BDCDE4();
          v9 = swift_allocObject();
          *(v9 + 16) = v3 & 1;
          *(v9 + 24) = v8;
          swift_unknownObjectRetain();
          sub_219BDD154();

          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
      }
    }

    sub_2186C66AC();
    v7 = sub_219BF6F64();
    sub_219BF6214();
    sub_219BE5314();
  }
}

uint64_t sub_219A3CA14(uint64_t a1, char a2, void *a3)
{
  v5 = sub_219BE1444();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v10 = [a3 identifier];
    sub_219BF5414();

    sub_219BE1424();
    sub_2187F5EC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v11 = sub_219BDCD44();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    (*(v12 + 104))(v14 + v13, *MEMORY[0x277CEAD18], v11);
    sub_219A3CCFC(&unk_280EE8030, MEMORY[0x277D2F260]);
    sub_219BDCCC4();

    (*(v6 + 8))(v9, v5);
    sub_219BE0684();
    sub_219A3CCFC(&qword_27CC22A80, MEMORY[0x277D2E6D8]);
    memset(v15, 0, sizeof(v15));
    sub_219BDCCE4();
    return sub_218806FD0(v15);
  }

  return result;
}

uint64_t sub_219A3CCFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ArticlesSearchFeedGroup()
{
  result = qword_280EC5F08;
  if (!qword_280EC5F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A3CDB8()
{
  sub_219BED8D4();
  if (v0 <= 0x3F)
  {
    sub_219A3CEB4(319, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_219A3CEB4(319, &qword_280EC30F0, sub_219A3CF18, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_219A3CEB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219A3CF18()
{
  result = qword_280EC3100[0];
  if (!qword_280EC3100[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280EC3100);
  }

  return result;
}

uint64_t sub_219A3CF7C(uint64_t a1)
{
  v2 = sub_219A3D070(&unk_27CC22AB0);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A3D070(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticlesSearchFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219A3D0C4()
{
  sub_218A26508(v0, v13);
  if (v14)
  {
    if (v14 == 1)
    {
      sub_2186CB1F0(v13, v10);
      v1 = v11;
      v2 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v3 = (*(*(v2 + 16) + 8))(v1);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      v3 = *(*&v13[0] + 16);
    }
  }

  else
  {
    v4 = *(*&v13[0] + 24);
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v5 = [*(v4 + 16) identifier];
    v6 = sub_219BF5414();
    v8 = v7;

    MEMORY[0x21CECC330](v6, v8);

    return 0;
  }

  return v3;
}

uint64_t sub_219A3D21C()
{
  sub_218A26508(v0, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_2186CB1F0(v10, v7);
      v1 = v8;
      v2 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v3 = (*(*(v2 + 16) + 16))(v1);
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
      v3 = *(*&v10[0] + 32);
    }
  }

  else
  {
    v4 = *(*(*&v10[0] + 24) + 16);

    v5 = [v4 displayName];
    v3 = sub_219BF5414();
  }

  return v3;
}

uint64_t sub_219A3D330()
{
  sub_218A26508(v0, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_2186CB1F0(v8, v5);
      v1 = v6;
      v2 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      v3 = (*(*(v2 + 16) + 48))(v1);
      __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
      sub_218A26564(v8);
      return 0;
    }
  }

  else
  {
    v3 = *(*(*&v8[0] + 24) + 16);
    swift_unknownObjectRetain();
  }

  return v3;
}

uint64_t sub_219A3D414(uint64_t a1, uint64_t a2)
{
  v4 = sub_21878D984();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_219A3D4C4()
{
  sub_218A26508(v0, v2);
  if (v3)
  {
    if (v3 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v2);
    }

    else
    {
      sub_218A26564(v2);
    }

    return 0;
  }

  else
  {
    sub_218A26564(v2);
    return 1;
  }
}

uint64_t sub_219A3D520(uint64_t a1, uint64_t a2)
{
  sub_218A26508(a1, v41);
  sub_218A26508(a2, v43);
  if (!v42)
  {
    v14 = *&v41[0];
    if (!v44)
    {
      v16 = *&v43[0];
      v17 = *(*&v41[0] + 16);
      v18 = *(*&v41[0] + 24);
      v37 = 0;
      v38 = 0xE000000000000000;
      LOBYTE(v34[0]) = v17;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v19 = [*(v18 + 16) identifier];
      v20 = sub_219BF5414();
      v22 = v21;

      MEMORY[0x21CECC330](v20, v22);

      v23 = *(v16 + 16);
      v24 = *(v16 + 24);
      v37 = 0;
      v38 = 0xE000000000000000;
      LOBYTE(v34[0]) = v23;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v25 = [*(v24 + 16) identifier];
      v26 = sub_219BF5414();
      v28 = v27;

      MEMORY[0x21CECC330](v26, v28);

      type metadata accessor for TagModel();
      v13 = static TagModel.== infix(_:_:)(*(v14 + 24), *(v16 + 24));

      goto LABEL_26;
    }

LABEL_18:

    goto LABEL_20;
  }

  if (v42 != 1)
  {
    if (v44 == 2)
    {
      if (*(*&v41[0] + 16) == *(*&v43[0] + 16) && *(*&v41[0] + 24) == *(*&v43[0] + 24))
      {

        v13 = 1;
        return v13 & 1;
      }

      v13 = sub_219BF78F4();

LABEL_26:

      return v13 & 1;
    }

    goto LABEL_18;
  }

  if (v44 == 1)
  {
    sub_2186CB1F0(v41, &v37);
    sub_2186CB1F0(v43, v34);
    v3 = v39;
    v4 = v40;
    __swift_project_boxed_opaque_existential_1(&v37, v39);
    v5 = (*(*(v4 + 16) + 8))(v3);
    v7 = v6;
    v9 = v35;
    v8 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    if (v5 == (*(*(v8 + 16) + 8))(v9) && v7 == v10)
    {
    }

    else
    {
      v12 = sub_219BF78F4();

      v13 = 0;
      if ((v12 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v29 = v39;
    v30 = v40;
    __swift_project_boxed_opaque_existential_1(&v37, v39);
    LOBYTE(v29) = (*(v30 + 40))(v29, v30);
    v31 = v35;
    v32 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v13 = v29 ^ (*(v32 + 40))(v31, v32) ^ 1;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    return v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
LABEL_20:
  sub_218A26564(v43);
  v13 = 0;
  return v13 & 1;
}

BOOL sub_219A3D934(uint64_t a1, uint64_t a2)
{
  sub_218A26508(a1, v19);
  sub_218A26508(a2, v21);
  if (!v20)
  {
    if (v22)
    {
      if (v22 != 1)
      {

        sub_218A26564(v21);
        return 1;
      }

      v9 = v21;
      goto LABEL_20;
    }

    v11 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(*(*&v19[0] + 24), *(*&v21[0] + 24));
    goto LABEL_18;
  }

  if (v20 != 1)
  {
    if (v22 != 2)
    {

      sub_218A26564(v21);
      return 0;
    }

    if (*(*&v19[0] + 32) == *(*&v21[0] + 32) && *(*&v19[0] + 40) == *(*&v21[0] + 40))
    {

      return 0;
    }

    v11 = sub_219BF78F4();
LABEL_18:
    v8 = v11;

    return v8;
  }

  if (!v22)
  {
    sub_218A26564(v21);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return 0;
  }

  if (v22 != 1)
  {
    sub_218A26564(v21);
    v9 = v19;
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v9);
    return 1;
  }

  sub_2186CB1F0(v19, v16);
  sub_2186CB1F0(v21, v13);
  v3 = v17;
  v4 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v5 = (*(v4 + 32))(v3, v4);
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v8 = v5 < (*(v7 + 32))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

uint64_t sub_219A3DB38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter()
{
  result = qword_280E95EF0;
  if (!qword_280E95EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A3DBE0()
{
  sub_2197B8638();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v2 <= 0x3F)
      {
        sub_218783DA0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_219A3DC9C()
{
  sub_219A3F33C(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219A3DD1C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v2;
  v18 = a1;
  sub_219BED8D4();
  sub_219BE3204();
  sub_219A3F49C(v2, v7, type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_219A3EEFC(v7, v10 + v8);
  *(v10 + v9) = a1;

  v11 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_219A3F49C(v2, v7, type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_219A3EEFC(v7, v12 + v8);
  v13 = sub_219BE2E54();
  v14 = sub_219BE3064();

  return v14;
}

uint64_t sub_219A3DF38@<X0>(unint64_t *a1@<X8>)
{
  sub_2197B8638();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x9000000000000000;
  return result;
}

uint64_t sub_219A3DFB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs();
  a2[4] = sub_219A3DB38(&qword_280E98240, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
  a2[5] = sub_219A3DB38(&qword_27CC1FA28, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219A3F49C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
}

uint64_t sub_219A3E07C()
{
  type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_219A3F33C(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_219A3F400(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_219A3E24C()
{
  sub_2197B8638();

  return sub_219BEDCA4();
}

uint64_t sub_219A3E278@<X0>(uint64_t *a1@<X8>)
{
  sub_219A3F33C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2197B8638();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219A3F3A0(inited + 32, sub_2188317B0);
  sub_219A3F504(0);
  a1[3] = v5;
  a1[4] = sub_219A3DB38(&qword_280EE75F8, sub_219A3F504);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219A3E3FC()
{
  sub_219A3DB38(&qword_280E95F18, type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219A3E5D0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_219A3F33C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v51 - v5;
  sub_219A3F33C(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v51 - v7;
  sub_219A3F33C(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_219BF2AB4();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v64 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F97D4(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BEF554();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData();
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter();
  v26 = (a1 + *(v25 + 24));
  v27 = v26[3];
  v54 = v26[4];
  v55 = v27;
  v56 = __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_2197B8638();
  v58 = v24;
  sub_219BEDD14();
  v28 = *(v22 + 28);
  v59 = v20;
  sub_219BEDCC4();
  v60 = v17;
  sub_219BEDCC4();
  v29 = sub_219BEE5D4();
  v30 = *(*(v29 - 8) + 56);
  v62 = v15;
  v30(v15, 1, 1, v29);
  v31 = *(v25 + 20);
  sub_2189AD5C8();
  v33 = v32;
  v34 = *(v32 - 8);
  (*(v34 + 16))(v10, a1 + v31, v32);
  (*(v34 + 56))(v10, 0, 1, v33);
  sub_219BEF0B4();
  v35 = *(v68 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v36 = sub_219BF35D4();
  (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
  LOBYTE(v67) = 37;
  sub_219A3F400(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v37 = v57;
  v38 = *(v67 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v39 = sub_219BF2774();
  (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  v40 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v40 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v41 = v64;
  sub_219BF2A84();
  v43 = v58;
  v42 = v59;
  v44 = v60;
  v45 = v62;
  v46 = sub_218F0AF50(&v58[v28], 0x73656C7A7A7570, 0xE700000000000000, v59, v60, MEMORY[0x277D84F90], v62, v41, v55, v54);
  (*(v65 + 8))(v41, v66);
  sub_219A3F3A0(v45, sub_2186F97D4);
  v47 = *(v61 + 8);
  v48 = v63;
  v47(v44, v63);
  v47(v42, v48);
  v49 = sub_219BF1934();
  (*(*(v49 - 8) + 8))(&v43[v28], v49);
  return v46;
}

uint64_t sub_219A3ED68(uint64_t a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A3EFF8(a1, v7);
  sub_219A3F49C(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_219A3F33C(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  sub_219A3F3A0(v7, type metadata accessor for TagFeedGroup);
  return v8;
}

uint64_t sub_219A3EEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A3EFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BF0BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter();
  type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v8 = *(v5 + 8);
  v8(v7, v4);
  v9 = v14[1];
  sub_219BEF134();
  sub_219BEF524();
  v8(v7, v4);
  v10 = v14[0];
  v11 = sub_219BED8D4();
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(type metadata accessor for PuzzleContinuePlayingTagFeedGroup() + 20));
  *v12 = v9;
  v12[1] = v10;
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219A3F1CC()
{
  type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_219A3DB38(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
  return sub_219BEF194();
}

void sub_219A3F33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A3F3A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219A3F400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_219A3DB38(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_219A3F49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_219A3F538(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, char a5)
{
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  sub_219BF61E4();
  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v9 + 64) = v11;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  sub_219BE5314();

  memcpy(__dst, a3, sizeof(__dst));
  sub_2199EE114();
  v12 = sub_219BF52C4();
  if (!v12)
  {
    sub_219BF6214();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C09BA0;
    *(v25 + 56) = v10;
    *(v25 + 64) = v11;
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;

    sub_219BE5314();
    goto LABEL_13;
  }

  sub_218E9B5CC(v12);

  v13 = objc_allocWithZone(MEMORY[0x277D31360]);
  v14 = sub_219BF53D4();
  v15 = sub_219BF5204();

  v16 = [v13 initWithIdentifier:v14 tagType:a4 dictionary:v15];

  v17 = [objc_allocWithZone(MEMORY[0x277D31348]) initWithTagMetadata:v16 assetManager:*(v43 + 16) isSports:a5 & 1];
  if (!v17)
  {
LABEL_12:
    sub_219BF6214();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = v11;
    *(v26 + 32) = a1;
    *(v26 + 40) = a2;

    sub_219BE5314();

    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 name];
  v20 = sub_219BF5414();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    goto LABEL_12;
  }

  if ([v18 tagType] != 1)
  {
    v28 = [v18 feedNavImageAssetHandle];
    if (v28 || (v28 = [v18 coverImageAssetHandle]) != 0)
    {

      sub_219BF6214();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_219C0B8C0;
      v30 = [v18 identifier];
      v31 = sub_219BF5414();
      v33 = v32;

      v34 = MEMORY[0x277D837D0];
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = v11;
      *(v29 + 32) = v31;
      *(v29 + 40) = v33;
      v35 = [v18 tagType];
      if (v35 > 2)
      {
        switch(v35)
        {
          case 3:
            v36 = 0xE700000000000000;
            v37 = 0x6E6F6974636573;
            goto LABEL_32;
          case 4:
            v36 = 0xE400000000000000;
            v37 = 1953720684;
            goto LABEL_32;
          case 5:
            v36 = 0xE500000000000000;
            v37 = 0x6575737369;
            goto LABEL_32;
        }
      }

      else
      {
        switch(v35)
        {
          case 0:
            v36 = 0xE700000000000000;
            v37 = 0x6E776F6E6B6E75;
            goto LABEL_32;
          case 1:
            v36 = 0xE500000000000000;
            v37 = 0x6369706F74;
            goto LABEL_32;
          case 2:
            v36 = 0xE700000000000000;
            v37 = 0x6C656E6E616863;
LABEL_32:
            *(v29 + 96) = v34;
            *(v29 + 104) = v11;
            *(v29 + 72) = v37;
            *(v29 + 80) = v36;
            v39 = [v18 &selRef_preferredContentSizeCategory];
            v40 = sub_219BF5414();
            v42 = v41;

            *(v29 + 136) = v34;
            *(v29 + 144) = v11;
            *(v29 + 112) = v40;
            *(v29 + 120) = v42;
            sub_219BE5314();

            return v18;
        }
      }

      v36 = 0xEF746C7561666564;
      v37 = 0x2D6E776F6E6B6E75;
      goto LABEL_32;
    }

    sub_219BF6214();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_219C09BA0;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = v11;
    *(v38 + 32) = a1;
    *(v38 + 40) = a2;

    sub_219BE5314();

LABEL_13:

    return 0;
  }

  sub_2186C66AC();
  v24 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  return v18;
}

void *sub_219A3FB34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v8 = qword_280F61720;
  sub_219BF61E4();
  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v9 + 64) = v11;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  sub_219BE5314();

  v12 = sub_219A40574(a3);
  if (!v12)
  {
    sub_219BF6214();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_219C09BA0;
    *(v31 + 56) = v10;
    *(v31 + 64) = v11;
    *(v31 + 32) = a1;
    *(v31 + 40) = a2;

    sub_219BE5314();
LABEL_14:

    return 0;
  }

  v39 = v8;
  sub_218E9B5CC(v12);

  v13 = objc_allocWithZone(MEMORY[0x277D31360]);
  v14 = sub_219BF53D4();
  v15 = a1;
  v16 = sub_219BF5204();

  v17 = [v13 initWithIdentifier:v14 tagType:2 dictionary:v16];

  v18 = [objc_allocWithZone(MEMORY[0x277D31348]) initWithTagMetadata:v17 assetManager:*(v4 + 16) isSports:a4 & 1];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 bannerImageForMask];
    v21 = v11;
    if (v20)
    {

      sub_219BF6214();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_219C0B8C0;
      v23 = [v19 identifier];
      v24 = sub_219BF5414();
      v26 = v25;

      v27 = MEMORY[0x277D837D0];
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 64) = v21;
      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      v28 = [v19 tagType];
      if (v28 > 2)
      {
        switch(v28)
        {
          case 3:
            v29 = 0xE700000000000000;
            v30 = 0x6E6F6974636573;
            goto LABEL_24;
          case 4:
            v29 = 0xE400000000000000;
            v30 = 1953720684;
            goto LABEL_24;
          case 5:
            v29 = 0xE500000000000000;
            v30 = 0x6575737369;
            goto LABEL_24;
        }
      }

      else
      {
        switch(v28)
        {
          case 0:
            v29 = 0xE700000000000000;
            v30 = 0x6E776F6E6B6E75;
            goto LABEL_24;
          case 1:
            v29 = 0xE500000000000000;
            v30 = 0x6369706F74;
            goto LABEL_24;
          case 2:
            v29 = 0xE700000000000000;
            v30 = 0x6C656E6E616863;
LABEL_24:
            *(v22 + 96) = v27;
            *(v22 + 104) = v21;
            *(v22 + 72) = v30;
            *(v22 + 80) = v29;
            v34 = [v19 name];
            v35 = sub_219BF5414();
            v37 = v36;

            *(v22 + 136) = v27;
            *(v22 + 144) = v21;
            *(v22 + 112) = v35;
            *(v22 + 120) = v37;
            sub_219BE5314();

            return v19;
        }
      }

      v29 = 0xEF746C7561666564;
      v30 = 0x2D6E776F6E6B6E75;
      goto LABEL_24;
    }

    sub_219BF6214();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = v11;
    *(v33 + 32) = v15;
    *(v33 + 40) = a2;

    sub_219BE5314();

    goto LABEL_14;
  }

  sub_219BF6214();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_219C09BA0;
  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 64) = v11;
  *(v32 + 32) = v15;
  *(v32 + 40) = a2;

  sub_219BE5314();

  return v19;
}

void *sub_219A40058(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  sub_219BF61E4();
  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2186FC3BC();
  *(v7 + 64) = v9;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_219BE5314();

  v10 = sub_219A409EC(a3);
  if (v10)
  {
    sub_218E9B5CC(v10);

    v11 = objc_allocWithZone(MEMORY[0x277D31360]);
    v12 = sub_219BF53D4();
    v13 = sub_219BF5204();

    v14 = [v11 initWithIdentifier:v12 tagType:2 dictionary:v13];

    v15 = [objc_allocWithZone(MEMORY[0x277D31348]) initWithTagMetadata:v14 assetManager:*(v3 + 16) isSports:0];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 bannerImageForMask];
      v18 = MEMORY[0x277D837D0];
      if (v17)
      {

        sub_219BF6214();
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_219C0B8C0;
        v20 = [v16 identifier];
        v21 = sub_219BF5414();
        v23 = v22;

        *(v19 + 56) = v18;
        *(v19 + 64) = v9;
        *(v19 + 32) = v21;
        *(v19 + 40) = v23;
        v24 = [v16 tagType];
        if (v24 > 2)
        {
          switch(v24)
          {
            case 3:
              v25 = 0xE700000000000000;
              v26 = 0x6E6F6974636573;
              goto LABEL_24;
            case 4:
              v25 = 0xE400000000000000;
              v26 = 1953720684;
              goto LABEL_24;
            case 5:
              v25 = 0xE500000000000000;
              v26 = 0x6575737369;
              goto LABEL_24;
          }
        }

        else
        {
          switch(v24)
          {
            case 0:
              v25 = 0xE700000000000000;
              v26 = 0x6E776F6E6B6E75;
              goto LABEL_24;
            case 1:
              v25 = 0xE500000000000000;
              v26 = 0x6369706F74;
              goto LABEL_24;
            case 2:
              v25 = 0xE700000000000000;
              v26 = 0x6C656E6E616863;
LABEL_24:
              *(v19 + 96) = v18;
              *(v19 + 104) = v9;
              *(v19 + 72) = v26;
              *(v19 + 80) = v25;
              v30 = [v16 name];
              v31 = sub_219BF5414();
              v33 = v32;

              *(v19 + 136) = v18;
              *(v19 + 144) = v9;
              *(v19 + 112) = v31;
              *(v19 + 120) = v33;
              sub_219BE5314();

              return v16;
          }
        }

        v25 = 0xEF746C7561666564;
        v26 = 0x2D6E776F6E6B6E75;
        goto LABEL_24;
      }

      sub_219BF6214();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_219C09BA0;
      *(v29 + 56) = v18;
      *(v29 + 64) = v9;
      *(v29 + 32) = a1;
      *(v29 + 40) = a2;

      sub_219BE5314();
    }

    else
    {
      sub_219BF6214();
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_219C09BA0;
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = v9;
      *(v28 + 32) = a1;
      *(v28 + 40) = a2;

      sub_219BE5314();
    }
  }

  else
  {
    sub_219BF6214();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_219C09BA0;
    *(v27 + 56) = v8;
    *(v27 + 64) = v9;
    *(v27 + 32) = a1;
    *(v27 + 40) = a2;

    sub_219BE5314();
  }

  return 0;
}

unint64_t sub_219A40574(uint64_t a1)
{
  v2 = sub_218831A70(MEMORY[0x277D84F90]);
  v59 = v2;
  v3 = sub_219BF5414();
  v5 = v3;
  v6 = v4;
  v7 = *(a1 + 416);
  v8 = MEMORY[0x277D837D0];
  if (v7)
  {
    v9 = *(a1 + 408);
    v58 = MEMORY[0x277D837D0];
    *&v57 = v9;
    *(&v57 + 1) = v7;
    sub_218751558(&v57, v56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v56, v5, v6, isUniquelyReferenced_nonNull_native);

    v59 = v2;
  }

  else
  {
    sub_2195EA4A0(v3, v4, &v57);

    sub_218806FD0(&v57);
  }

  v11 = sub_219BF5414();
  v13 = v11;
  v14 = v12;
  v15 = *(a1 + 448);
  if (v15)
  {
    v16 = *(a1 + 440);
    v58 = v8;
    *&v57 = v16;
    *(&v57 + 1) = v15;
    sub_218751558(&v57, v56);

    v17 = v59;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v56, v13, v14, v18);

    v59 = v17;
  }

  else
  {
    sub_2195EA4A0(v11, v12, &v57);

    sub_218806FD0(&v57);
  }

  v19 = sub_219BF5414();
  v21 = v19;
  v22 = v20;
  v23 = *(a1 + 480);
  if (v23)
  {
    v24 = *(a1 + 472);
    v58 = v8;
    *&v57 = v24;
    *(&v57 + 1) = v23;
    sub_218751558(&v57, v56);

    v25 = v59;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v56, v21, v22, v26);

    v59 = v25;
  }

  else
  {
    sub_2195EA4A0(v19, v20, &v57);

    sub_218806FD0(&v57);
  }

  v27 = sub_219BF5414();
  v29 = v27;
  v30 = v28;
  v31 = *(a1 + 432);
  if (v31)
  {
    v32 = *(a1 + 424);
    v58 = v8;
    *&v57 = v32;
    *(&v57 + 1) = v31;
    sub_218751558(&v57, v56);

    v33 = v59;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v56, v29, v30, v34);

    v59 = v33;
  }

  else
  {
    sub_2195EA4A0(v27, v28, &v57);

    sub_218806FD0(&v57);
  }

  v35 = sub_219BF5414();
  v37 = v35;
  v38 = v36;
  v39 = *(a1 + 464);
  if (v39)
  {
    v40 = *(a1 + 456);
    v58 = v8;
    *&v57 = v40;
    *(&v57 + 1) = v39;
    sub_218751558(&v57, v56);

    v41 = v59;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v56, v37, v38, v42);

    v59 = v41;
  }

  else
  {
    sub_2195EA4A0(v35, v36, &v57);

    sub_218806FD0(&v57);
  }

  v43 = sub_219BF5414();
  v45 = v44;
  if (*(a1 + 496))
  {
    sub_2195EA4A0(v43, v44, &v57);

    sub_218806FD0(&v57);
    v46 = v59;
  }

  else
  {
    v47 = *(a1 + 488);
    v58 = MEMORY[0x277D83B88];
    *&v57 = v47;
    v48 = v43;
    sub_218751558(&v57, v56);
    v49 = v59;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v56, v48, v45, v50);

    v46 = v49;
    v59 = v49;
  }

  v51 = sub_219BF5414();
  v53 = v52;
  v58 = MEMORY[0x277D839B0];
  LOBYTE(v57) = 1;
  sub_218751558(&v57, v56);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  sub_21948CB08(v56, v51, v53, v54);

  return v46;
}

unint64_t sub_219A409EC(void *a1)
{
  v2 = sub_218831A70(MEMORY[0x277D84F90]);
  v51 = v2;
  v3 = sub_219BF5414();
  v5 = v3;
  v6 = v4;
  v7 = a1[10];
  v8 = MEMORY[0x277D837D0];
  if (v7)
  {
    v9 = a1[9];
    v50 = MEMORY[0x277D837D0];
    *&v49 = v9;
    *(&v49 + 1) = v7;
    sub_218751558(&v49, v48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v48, v5, v6, isUniquelyReferenced_nonNull_native);

    v51 = v2;
  }

  else
  {
    sub_2195EA4A0(v3, v4, &v49);

    sub_218806FD0(&v49);
  }

  v11 = sub_219BF5414();
  v13 = v11;
  v14 = v12;
  v15 = a1[12];
  if (v15)
  {
    v16 = a1[11];
    v50 = v8;
    *&v49 = v16;
    *(&v49 + 1) = v15;
    sub_218751558(&v49, v48);

    v17 = v51;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v48, v13, v14, v18);

    v51 = v17;
  }

  else
  {
    sub_2195EA4A0(v11, v12, &v49);

    sub_218806FD0(&v49);
  }

  v19 = sub_219BF5414();
  v21 = v19;
  v22 = v20;
  v23 = a1[18];
  if (v23)
  {
    v24 = a1[17];
    v50 = v8;
    *&v49 = v24;
    *(&v49 + 1) = v23;
    sub_218751558(&v49, v48);

    v25 = v51;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v48, v21, v22, v26);

    v51 = v25;
  }

  else
  {
    sub_2195EA4A0(v19, v20, &v49);

    sub_218806FD0(&v49);
  }

  v27 = sub_219BF5414();
  v29 = v27;
  v30 = v28;
  v31 = a1[14];
  if (v31)
  {
    v32 = a1[13];
    v50 = v8;
    *&v49 = v32;
    *(&v49 + 1) = v31;
    sub_218751558(&v49, v48);

    v33 = v51;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v48, v29, v30, v34);

    v51 = v33;
  }

  else
  {
    sub_2195EA4A0(v27, v28, &v49);

    sub_218806FD0(&v49);
  }

  v35 = sub_219BF5414();
  v37 = v35;
  v38 = v36;
  v39 = a1[16];
  if (v39)
  {
    v40 = a1[15];
    v50 = v8;
    *&v49 = v40;
    *(&v49 + 1) = v39;
    sub_218751558(&v49, v48);

    v41 = v51;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_21948CB08(v48, v37, v38, v42);

    v51 = v41;
  }

  else
  {
    sub_2195EA4A0(v35, v36, &v49);

    sub_218806FD0(&v49);
    v41 = v51;
  }

  v43 = sub_219BF5414();
  v45 = v44;
  v50 = MEMORY[0x277D839B0];
  LOBYTE(v49) = 1;
  sub_218751558(&v49, v48);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_21948CB08(v48, v43, v45, v46);

  return v41;
}

uint64_t sub_219A40DC8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22AC0 = result;
  return result;
}

uint64_t sub_219A40FB8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22AC8 = result;
  return result;
}

uint64_t sub_219A411E0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22AD0 = result;
  return result;
}

uint64_t sub_219A413D0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22AD8 = result;
  return result;
}

uint64_t sub_219A415F8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22AE0 = result;
  return result;
}

uint64_t sub_219A417E8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22AE8 = result;
  return result;
}

uint64_t sub_219A41A34()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22AF0 = result;
  return result;
}

uint64_t sub_219A41C24()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22AF8 = result;
  return result;
}

uint64_t sub_219A41E4C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B00 = result;
  return result;
}

uint64_t sub_219A4203C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B08 = result;
  return result;
}

uint64_t sub_219A4222C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B10 = result;
  return result;
}

uint64_t sub_219A42454()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B18 = result;
  return result;
}

uint64_t sub_219A42644()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B20 = result;
  return result;
}

uint64_t sub_219A42834()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B28 = result;
  return result;
}

uint64_t sub_219A42A5C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE99A0 = result;
  return result;
}

uint64_t sub_219A42C4C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9988 = result;
  return result;
}

uint64_t sub_219A42E74()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B30 = result;
  return result;
}

uint64_t sub_219A43064()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9978 = result;
  return result;
}

uint64_t sub_219A4328C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B38 = result;
  return result;
}

uint64_t sub_219A4347C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B40 = result;
  return result;
}

uint64_t sub_219A436A4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B48 = result;
  return result;
}

uint64_t sub_219A43894()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B50 = result;
  return result;
}

uint64_t sub_219A43ABC()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B58 = result;
  return result;
}

uint64_t sub_219A43CAC()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B60 = result;
  return result;
}

uint64_t sub_219A43E9C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B68 = result;
  return result;
}

uint64_t sub_219A440C4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v9[1] = 5;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B70 = result;
  return result;
}

uint64_t sub_219A442B8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 30;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B78 = result;
  return result;
}

uint64_t sub_219A444AC()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 5;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B80 = result;
  return result;
}

uint64_t sub_219A446A0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 30;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B88 = result;
  return result;
}

uint64_t sub_219A44894()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 5;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B90 = result;
  return result;
}

uint64_t sub_219A44A88()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 30;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22B98 = result;
  return result;
}

uint64_t Settings.Tips.Debug.NewsPlusStoriesConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C7NewsUI2E7ModulesV10SearchFeedV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_219A44CB8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v9[1] = 2;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC22BA0 = result;
  return result;
}

uint64_t _s11TeaSettings0B0C7NewsUI2E4TipsV5DebugV0C26PlusStoriesConfigOverridesC3key12defaultValue6accessAJSSSg_SbAA6AccessOtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BDC934();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v8, a4, v5);
  v9 = sub_219BDC824();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t _s11TeaSettings0B0C7NewsUI2E4TipsV5DebugV0C26PlusStoriesConfigOverridesC3key12defaultValue6accessAJSSSg_SbAA6AccessOtcfc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BDC934();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v7);
  v9 = sub_219BDC824();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t sub_219A450E8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Tips.Debug.ShortcutsConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC22BA8 = result;
  return result;
}

uint64_t sub_219A452D0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Tips.Debug.SportsScoresConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE9928 = result;
  return result;
}

uint64_t sub_219A454B8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Tips.Debug.NewsPlusStoriesConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC22BB0 = result;
  return result;
}

uint64_t sub_219A456A0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Tips.Debug.RecipeChromeConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC22BB8 = result;
  return result;
}

char *sub_219A459A8(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  if (a5 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v8 = MEMORY[0x277D84F90];
    v53 = a1;
    if (!i)
    {
      v11 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v58 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v10 = 0;
    v11 = v58;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v10, v5);
      }

      else
      {
        v12 = *(v5 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      v13 = [v12 identifier];
      v14 = sub_219BF5414();
      v16 = v15;
      swift_unknownObjectRelease();

      v18 = *(v58 + 16);
      v17 = *(v58 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21870B65C((v17 > 1), v18 + 1, 1);
      }

      ++v10;
      *(v58 + 16) = v18 + 1;
      v19 = v58 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (i != v10);
    a1 = v53;
LABEL_14:
    v5 = sub_218845F78(v11);

    v59 = v8;
    if (a1 >> 62)
    {
      v20 = sub_219BF7214();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v22 = 0;
      v54 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = a1 & 0xC000000000000001;
      v23 = a1 + 32;
      v24 = v5 + 56;
      while (1)
      {
        if (v56)
        {
          v25 = MEMORY[0x21CECE0F0](v22, v53);
        }

        else
        {
          if (v22 >= *(v54 + 16))
          {
            goto LABEL_61;
          }

          v25 = *(v23 + 8 * v22);
        }

        v26 = v25;
        v27 = __OFADD__(v22++, 1);
        if (v27)
        {
          break;
        }

        v28 = [v25 identifier];
        v29 = sub_219BF5414();
        a1 = v30;

        if (*(v5 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v31 = sub_219BF7AE4(), v32 = -1 << *(v5 + 32), v33 = v31 & ~v32, ((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
        {
          v34 = ~v32;
          while (1)
          {
            v35 = (*(v5 + 48) + 16 * v33);
            v36 = *v35 == v29 && v35[1] == a1;
            if (v36 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          if (v22 == v20)
          {
LABEL_36:
            v37 = v59;
            a1 = v53;
            v21 = MEMORY[0x277D84F90];
            goto LABEL_38;
          }
        }

        else
        {
LABEL_18:

          sub_219BF73D4();
          a1 = v59[2];
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          if (v22 == v20)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
LABEL_38:
      v60 = v21;
      a2;

      if (!v20)
      {
LABEL_59:

        sub_2191EDCE8(v21);
        return v37;
      }

      a2 = v37;
      v38 = 0;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v57 = a1 & 0xC000000000000001;
      v39 = a1 + 32;
      v40 = v5 + 56;
      while (1)
      {
        if (v57)
        {
          v41 = MEMORY[0x21CECE0F0](v38, v53);
        }

        else
        {
          if (v38 >= *(v55 + 16))
          {
            goto LABEL_63;
          }

          v41 = *(v39 + 8 * v38);
        }

        v42 = v41;
        v27 = __OFADD__(v38++, 1);
        if (v27)
        {
          break;
        }

        v43 = [v41 identifier];
        v44 = sub_219BF5414();
        a1 = v45;

        if (*(v5 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v46 = sub_219BF7AE4(), v47 = -1 << *(v5 + 32), v48 = v46 & ~v47, ((*(v40 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
        {
          v49 = ~v47;
          while (1)
          {
            v50 = (*(v5 + 48) + 16 * v48);
            v51 = *v50 == v44 && v50[1] == a1;
            if (v51 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v48 = (v48 + 1) & v49;
            if (((*(v40 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          sub_219BF73D4();
          a1 = *(v60 + 16);
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
LABEL_40:
        }

        if (v38 == v20)
        {
          v21 = v60;
          v37 = a2;
          goto LABEL_59;
        }
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  __break(1u);
  return result;
}

char *sub_219A45ECC(void *a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a5;
  v55 = a1;
  if (a5 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v8 = MEMORY[0x277D84F90];
    v57 = a4;
    if (!i)
    {
      v11 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v61 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v10 = 0;
    v11 = v61;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v10, v5);
      }

      else
      {
        v12 = *(v5 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      v13 = [v12 identifier];
      v14 = sub_219BF5414();
      v16 = v15;
      swift_unknownObjectRelease();

      v18 = *(v61 + 16);
      v17 = *(v61 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21870B65C((v17 > 1), v18 + 1, 1);
      }

      ++v10;
      *(v61 + 16) = v18 + 1;
      v19 = v61 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (i != v10);
    a4 = v57;
LABEL_14:
    v5 = sub_218845F78(v11);

    v62 = v8;
    if (a4 >> 62)
    {
      v20 = sub_219BF7214();
    }

    else
    {
      v20 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v20;
    if (v20)
    {
      v21 = 0;
      v58 = a4 & 0xC000000000000001;
      v22 = a4 & 0xFFFFFFFFFFFFFF8;
      v23 = a4 + 32;
      v24 = v5 + 56;
      while (1)
      {
        if (v58)
        {
          v25 = MEMORY[0x21CECE0F0](v21, v57);
        }

        else
        {
          if (v21 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          v25 = *(v23 + 8 * v21);
        }

        v26 = v25;
        v27 = __OFADD__(v21++, 1);
        if (v27)
        {
          break;
        }

        v28 = [v25 identifier];
        a4 = sub_219BF5414();
        v30 = v29;

        if (*(v5 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v31 = sub_219BF7AE4();
          v32 = -1 << *(v5 + 32);
          v33 = v31 & ~v32;
          if ((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            while (1)
            {
              v35 = (*(v5 + 48) + 16 * v33);
              v36 = *v35 == a4 && v35[1] == v30;
              if (v36 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              if (((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            v20 = v60;
          }

          else
          {
LABEL_33:

            v20 = v60;
          }
        }

        else
        {
        }

        if (v21 == v20)
        {
          v37 = v62;
          a4 = v57;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
LABEL_38:

      sub_2191EDCE8(v37);
      v38 = v55;
      v39 = a2;

      if (!v20)
      {
LABEL_59:

        return v38;
      }

      v55 = v39;
      a2 = v38;
      v40 = 0;
      v59 = a4 & 0xC000000000000001;
      v41 = a4 & 0xFFFFFFFFFFFFFF8;
      v42 = a4 + 32;
      a4 = v5 + 56;
      while (1)
      {
        if (v59)
        {
          v43 = MEMORY[0x21CECE0F0](v40, v57);
        }

        else
        {
          if (v40 >= *(v41 + 16))
          {
            goto LABEL_63;
          }

          v43 = *(v42 + 8 * v40);
        }

        v44 = v43;
        v27 = __OFADD__(v40++, 1);
        if (v27)
        {
          break;
        }

        v45 = [v43 identifier];
        v46 = sub_219BF5414();
        v48 = v47;

        if (*(v5 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v49 = sub_219BF7AE4(), v50 = -1 << *(v5 + 32), v51 = v49 & ~v50, ((*(a4 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
        {
          v52 = ~v50;
          while (1)
          {
            v53 = (*(v5 + 48) + 16 * v51);
            v54 = *v53 == v46 && v53[1] == v48;
            if (v54 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v51 = (v51 + 1) & v52;
            if (((*(a4 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
LABEL_40:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        if (v40 == v60)
        {
          v38 = a2;
          goto LABEL_59;
        }
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  __break(1u);
  return result;
}

void sub_219A46408(void (*a1)(unint64_t *), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  sub_219BE2CF4();
  v13 = sub_219A466D4(v28[0], a7, a8, a9);

  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09EC0;
  sub_219BE2CF4();
  if (v28[0] >> 62)
  {
    v15 = sub_219BF7214();
  }

  else
  {
    v15 = *((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  *(v14 + 56) = MEMORY[0x277D83B88];
  *(v14 + 64) = v17;
  *(v14 + 32) = v15;
  if (v13 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v14 + 96) = v16;
  *(v14 + 104) = v17;
  *(v14 + 72) = v18;
  sub_219BF6214();
  sub_219BE5314();

  if (v13 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_9;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    v19 = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:0];
    v20 = MEMORY[0x28223BE20](v19);
    v26[2] = a6;
    sub_218D2483C(v20, sub_219A469F0, v26, v13);
    v22 = v21;
    v23 = *(a6 + 24);
    v28[0] = v13;
    v28[1] = v21;
    v28[2] = v23;
    v28[3] = MEMORY[0x277D84F90];

    a1(v28);

    return;
  }

  sub_2189FE9D0();
  v24 = swift_allocError();
  *v25 = 1;
  v27();
}

id sub_219A466D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = MEMORY[0x277D84F90];
  result = [objc_opt_self() transformationWithPersonalizer_];
  if (result)
  {
    MEMORY[0x21CECC690]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v8 = NewsCoreUserDefaults();
    v9 = [v8 BOOLForKey_];

    v10 = objc_opt_self();
    if (v9)
    {
      v11 = 0x64022513ELL;
    }

    else
    {
      v11 = 0x64022113ELL;
    }

    v12 = [v10 transformationWithFilterOptions:v11 configuration:*(a4 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) context:a2];
    MEMORY[0x21CECC690]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v13 = objc_allocWithZone(MEMORY[0x277D30FF0]);
    sub_2186D6710(0, &unk_280E8E378);
    v14 = sub_219BF5904();

    v15 = [v13 initWithFeedTransformations_];

    if (a1 >> 62)
    {
      sub_2186D6710(0, qword_280E8DE80);

      sub_219BF7534();
    }

    else
    {

      sub_219BF7924();
      sub_2186D6710(0, qword_280E8DE80);
    }

    sub_2186D6710(0, qword_280E8DE80);
    v16 = sub_219BF5904();

    v17 = [v15 transformFeedItems_];

    v18 = sub_219BF5924();
    v19 = sub_218B0C6F8(v18);

    if (v19)
    {
      return v19;
    }

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A46A0C()
{
  sub_2186E16D0();
  v126 = *(v0 - 8);
  v127 = v0;
  MEMORY[0x28223BE20](v0);
  v125 = &v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E14F4();
  v123 = *(v2 - 8);
  v124 = v2;
  MEMORY[0x28223BE20](v2);
  v122 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E13DC();
  v120 = *(v4 - 8);
  v121 = v4;
  MEMORY[0x28223BE20](v4);
  v119 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E12C4();
  v117 = *(v6 - 8);
  v118 = v6;
  MEMORY[0x28223BE20](v6);
  v116 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E1164();
  v114 = *(v8 - 8);
  v115 = v8;
  MEMORY[0x28223BE20](v8);
  v113 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E104C();
  v111 = *(v10 - 8);
  v112 = v10;
  MEMORY[0x28223BE20](v10);
  v110 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0E98();
  v108 = *(v12 - 8);
  v109 = v12;
  MEMORY[0x28223BE20](v12);
  v107 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E05B8(0, &qword_280E922F0, sub_2186E0DF0, sub_2186E0E44);
  v106 = v14;
  v105 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v104 = &v66 - v15;
  sub_2186E0CD8();
  v103 = v16;
  v102 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v101 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0BC0();
  v100 = v18;
  v99 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v98 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0AA8();
  v97 = v20;
  v96 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v95 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0990();
  v94 = v22;
  v93 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v92 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0878();
  v91 = v24;
  v90 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v89 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E06DC();
  v88 = v26;
  v87 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v86 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E05B8(0, &qword_280E923C0, sub_2186E0634, sub_2186E0688);
  v85 = v28;
  v84 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v83 = &v66 - v29;
  sub_2186E03A0();
  v82 = v30;
  v81 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v80 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0288();
  v79 = v32;
  v78 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v77 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0170();
  v76 = v34;
  v75 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v74 = &v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0010();
  v73 = v36;
  v72 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v71 = &v66 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF784();
  v70 = v38;
  v69 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v66 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  v42 = v41;
  v68 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v66 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE858();
  v46 = v45;
  v67 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v66 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE644();
  v50 = v49;
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v53 = &v66 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TodayFeedGroupConfig();
  MEMORY[0x28223BE20](v54);
  v56 = &v66 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219377108(v128, v56);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v64 = v67;
      (*(v67 + 32))(v48, v56, v46);
      v57 = sub_219BEDCA4();
      (*(v64 + 8))(v48, v46);
      return v57;
    case 2u:
      v61 = v68;
      (*(v68 + 32))(v44, v56, v42);
      v57 = sub_219BEDCA4();
      (*(v61 + 8))(v44, v42);
      return v57;
    case 3u:
      v62 = v69;
      v63 = v70;
      (*(v69 + 32))(v40, v56, v70);
      v57 = sub_219BEDCA4();
      (*(v62 + 8))(v40, v63);
      return v57;
    case 4u:
      v59 = v72;
      v60 = v71;
      v58 = v73;
      (*(v72 + 32))(v71, v56, v73);
      goto LABEL_25;
    case 5u:
      v59 = v75;
      v60 = v74;
      v58 = v76;
      (*(v75 + 32))(v74, v56, v76);
      goto LABEL_25;
    case 6u:
      v59 = v78;
      v60 = v77;
      v58 = v79;
      (*(v78 + 32))(v77, v56, v79);
      goto LABEL_25;
    case 7u:
      v59 = v81;
      v60 = v80;
      v58 = v82;
      (*(v81 + 32))(v80, v56, v82);
      goto LABEL_25;
    case 8u:
      v59 = v84;
      v60 = v83;
      v58 = v85;
      (*(v84 + 32))(v83, v56, v85);
      goto LABEL_25;
    case 9u:
      v59 = v87;
      v60 = v86;
      v58 = v88;
      (*(v87 + 32))(v86, v56, v88);
      goto LABEL_25;
    case 0xAu:
      v59 = v90;
      v60 = v89;
      v58 = v91;
      (*(v90 + 32))(v89, v56, v91);
      goto LABEL_25;
    case 0xBu:
      v59 = v93;
      v60 = v92;
      v58 = v94;
      (*(v93 + 32))(v92, v56, v94);
      goto LABEL_25;
    case 0xCu:
      v59 = v96;
      v60 = v95;
      v58 = v97;
      (*(v96 + 32))(v95, v56, v97);
      goto LABEL_25;
    case 0xDu:
      v59 = v99;
      v60 = v98;
      v58 = v100;
      (*(v99 + 32))(v98, v56, v100);
      goto LABEL_25;
    case 0xEu:
      v59 = v102;
      v60 = v101;
      v58 = v103;
      (*(v102 + 32))(v101, v56, v103);
      goto LABEL_25;
    case 0xFu:
      v59 = v105;
      v60 = v104;
      v58 = v106;
      (*(v105 + 32))(v104, v56, v106);
      goto LABEL_25;
    case 0x10u:
      v59 = v108;
      v58 = v109;
      v60 = v107;
      (*(v108 + 32))(v107, v56, v109);
      goto LABEL_25;
    case 0x11u:
      v60 = v110;
      v59 = v111;
      v58 = v112;
      (*(v111 + 32))(v110, v56, v112);
      goto LABEL_25;
    case 0x12u:
      v60 = v113;
      v59 = v114;
      v58 = v115;
      (*(v114 + 32))(v113, v56, v115);
      goto LABEL_25;
    case 0x13u:
      v60 = v116;
      v59 = v117;
      v58 = v118;
      (*(v117 + 32))(v116, v56, v118);
      goto LABEL_25;
    case 0x14u:
      v60 = v119;
      v59 = v120;
      v58 = v121;
      (*(v120 + 32))(v119, v56, v121);
      goto LABEL_25;
    case 0x15u:
      v60 = v122;
      v59 = v123;
      v58 = v124;
      (*(v123 + 32))(v122, v56, v124);
      goto LABEL_25;
    case 0x16u:
      v60 = v125;
      v59 = v126;
      v58 = v127;
      (*(v126 + 32))(v125, v56, v127);
LABEL_25:
      v57 = sub_219BEDCA4();
      (*(v59 + 8))(v60, v58);
      break;
    default:
      (*(v51 + 32))(v53, v56, v50);
      v57 = sub_219BEDCA4();
      (*(v51 + 8))(v53, v50);
      break;
  }

  return v57;
}

uint64_t sub_219A47B58()
{
  v1 = type metadata accessor for TodayFeedGroupConfig();
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219377108(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
    case 0xAu:
      sub_219A4E7C4(v3, type metadata accessor for TodayFeedGroupConfig);
      return sub_2194B3934(&unk_282A24D00);
    case 4u:
      v5 = &unk_282A24D28;
      goto LABEL_15;
    case 5u:
      v5 = &unk_282A24D50;
      goto LABEL_15;
    case 6u:
      v5 = &unk_282A24D78;
      goto LABEL_15;
    case 7u:
    case 0x13u:
      sub_219A4E7C4(v3, type metadata accessor for TodayFeedGroupConfig);
      return sub_2194B3934(&unk_282A24DA0);
    case 8u:
      v5 = &unk_282A24DC8;
      goto LABEL_15;
    case 0xCu:
      v5 = &unk_282A24DF0;
      goto LABEL_15;
    case 0xEu:
      v5 = &unk_282A24E18;
      goto LABEL_15;
    case 0x10u:
      v5 = &unk_282A24E40;
      goto LABEL_15;
    case 0x11u:
      v5 = &unk_282A24E68;
      goto LABEL_15;
    case 0x12u:
      v5 = &unk_282A24E90;
      goto LABEL_15;
    case 0x14u:
      v5 = &unk_282A24EB8;
LABEL_15:
      v6 = sub_2194B3934(v5);
      sub_219A4E7C4(v3, type metadata accessor for TodayFeedGroupConfig);
      result = v6;
      break;
    default:
      sub_219A4E7C4(v3, type metadata accessor for TodayFeedGroupConfig);
      result = MEMORY[0x277D84FA0];
      break;
  }

  return result;
}

uint64_t sub_219A47D24()
{
  v1 = type metadata accessor for TodayFeedGroupConfig();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219377108(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_219A4E7C4(v3, type metadata accessor for TodayFeedGroupConfig);
  return byte_219CC302A[EnumCaseMultiPayload];
}

uint64_t sub_219A47DDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v198 = a2;
  sub_2186E16D0();
  v202 = v3;
  v176 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v197 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E14F4();
  v175 = v5;
  v174 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v196 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E13DC();
  v173 = v7;
  v172 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v195 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E12C4();
  v171 = v9;
  v170 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v194 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E1164();
  v169 = v11;
  v168 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v193 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E104C();
  v167 = v13;
  v166 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v192 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0E98();
  v165 = v15;
  v164 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v191 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E05B8(0, &qword_280E922F0, sub_2186E0DF0, sub_2186E0E44);
  v201 = v17;
  v162 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v190 = &v128 - v18;
  sub_2186E0CD8();
  v163 = v19;
  v161 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v189 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0BC0();
  v160 = v21;
  v159 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v188 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0AA8();
  v158 = v23;
  v157 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v187 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0990();
  v156 = v25;
  v155 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v186 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0878();
  v154 = v27;
  v153 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v185 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E06DC();
  v152 = v29;
  v151 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v184 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E05B8(0, &qword_280E923C0, sub_2186E0634, sub_2186E0688);
  v150 = v31;
  v147 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v200 = &v128 - v32;
  sub_2186E03A0();
  v149 = v33;
  v148 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v183 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0288();
  v146 = v35;
  v145 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v182 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0170();
  v144 = v37;
  v143 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v181 = &v128 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0010();
  v142 = v39;
  v141 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v180 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF784();
  v140 = v41;
  v139 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v179 = &v128 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  v138 = v43;
  v137 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v178 = &v128 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE858();
  v136 = v45;
  v135 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v177 = &v128 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE644();
  v134 = v47;
  v133 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v49 = &v128 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A4E824();
  v51 = v50;
  v199 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = &v128 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TodayFeedGroupConfig();
  MEMORY[0x28223BE20](v54);
  v56 = &v128 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A4E880();
  v57 = v203;
  sub_219BF7B34();
  v58 = a1;
  if (v57)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v130 = v49;
  v59 = v200;
  v60 = v201;
  v61 = v202;
  v131 = v56;
  v132 = v54;
  v203 = v58;
  sub_219A4E8D4();
  sub_219BF7734();
  v62 = v53;
  v129 = 0;
  v128 = v204;
  v63 = v203;
  switch(v204)
  {
    case 1:
      sub_218718690(v203, &v204);
      type metadata accessor for NewspaperTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&unk_280EA2E10, type metadata accessor for NewspaperTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EA2E20, type metadata accessor for NewspaperTodayFeedGroupConfigData);
      v93 = v177;
      v94 = v129;
      sub_219BEDD24();
      v67 = v94;
      if (v94)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v135 + 32))(v131, v93, v136);
      goto LABEL_55;
    case 2:
      v81 = v53;
      sub_218718690(v203, &v204);
      type metadata accessor for LocalNewsTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&unk_280EE1580, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EE1590, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
      v82 = v178;
      v83 = v129;
      sub_219BEDD24();
      v67 = v83;
      if (v83)
      {
        v202 = v51;
        v84 = v199;
        v62 = v81;
        goto LABEL_49;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v137 + 32))(v131, v82, v138);
      goto LABEL_55;
    case 3:
      sub_218718690(v203, &v204);
      type metadata accessor for TrendingTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&qword_280EA4018, type metadata accessor for TrendingTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EA4020, type metadata accessor for TrendingTodayFeedGroupConfigData);
      v89 = v179;
      v90 = v129;
      sub_219BEDD24();
      v67 = v90;
      if (v90)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v139 + 32))(v131, v89, v140);
      goto LABEL_55;
    case 4:
      sub_218718690(v203, &v204);
      type metadata accessor for ForYouTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&qword_280EAC970, type metadata accessor for ForYouTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EAC978, type metadata accessor for ForYouTodayFeedGroupConfigData);
      v75 = v180;
      v76 = v129;
      sub_219BEDD24();
      v67 = v76;
      if (v76)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v141 + 32))(v131, v75, v142);
      goto LABEL_55;
    case 5:
      sub_218718690(v203, &v204);
      type metadata accessor for MissedStoriesTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&unk_280E99420, type metadata accessor for MissedStoriesTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280E99430, type metadata accessor for MissedStoriesTodayFeedGroupConfigData);
      v99 = v181;
      v100 = v129;
      sub_219BEDD24();
      v67 = v100;
      if (v100)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v143 + 32))(v131, v99, v144);
      goto LABEL_55;
    case 6:
      sub_218718690(v203, &v204);
      type metadata accessor for LatestStoriesTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&unk_280E996F0, type metadata accessor for LatestStoriesTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280E99700, type metadata accessor for LatestStoriesTodayFeedGroupConfigData);
      v105 = v182;
      v106 = v129;
      sub_219BEDD24();
      v67 = v106;
      if (v106)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v145 + 32))(v131, v105, v146);
      goto LABEL_55;
    case 7:
      sub_218718690(v203, &v204);
      type metadata accessor for TopicTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&qword_280EADEB8, type metadata accessor for TopicTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EADEC0, type metadata accessor for TopicTodayFeedGroupConfigData);
      v91 = v183;
      v92 = v129;
      sub_219BEDD24();
      v67 = v92;
      if (v92)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v148 + 32))(v131, v91, v149);
      goto LABEL_55;
    case 8:
      sub_218718690(v203, &v204);
      sub_2186E0634();
      sub_2186E0688();
      v111 = v129;
      sub_219BEDD24();
      v88 = v198;
      v67 = v111;
      if (v111)
      {
        goto LABEL_48;
      }

      v64 = v63;
      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v147 + 32))(v131, v59, v150);
      goto LABEL_56;
    case 9:
      sub_218718690(v203, &v204);
      type metadata accessor for NewFollowTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&qword_280EA2FE8, type metadata accessor for NewFollowTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EA2FF0, type metadata accessor for NewFollowTodayFeedGroupConfigData);
      v79 = v184;
      v80 = v129;
      sub_219BEDD24();
      v67 = v80;
      if (v80)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v151 + 32))(v131, v79, v152);
      goto LABEL_55;
    case 10:
      sub_218718690(v203, &v204);
      type metadata accessor for SpotlightTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&qword_280EA1820, type metadata accessor for SpotlightTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EA1828, type metadata accessor for SpotlightTodayFeedGroupConfigData);
      v109 = v185;
      v110 = v129;
      sub_219BEDD24();
      v67 = v110;
      if (v110)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v153 + 32))(v131, v109, v154);
      goto LABEL_55;
    case 11:
      sub_218718690(v203, &v204);
      type metadata accessor for SubscriptionTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&qword_280E9A398, type metadata accessor for SubscriptionTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280E9A3A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData);
      v73 = v186;
      v74 = v129;
      sub_219BEDD24();
      v67 = v74;
      if (v74)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v155 + 32))(v131, v73, v156);
      goto LABEL_55;
    case 12:
      sub_218718690(v203, &v204);
      type metadata accessor for SuggestionTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&qword_280E9E710, type metadata accessor for SuggestionTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280E9E718, type metadata accessor for SuggestionTodayFeedGroupConfigData);
      v77 = v187;
      v78 = v129;
      sub_219BEDD24();
      v67 = v78;
      if (v78)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v157 + 32))(v131, v77, v158);
      goto LABEL_55;
    case 13:
      sub_218718690(v203, &v204);
      type metadata accessor for SeenContentMarkTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&qword_280E96A58, type metadata accessor for SeenContentMarkTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280E96A60, type metadata accessor for SeenContentMarkTodayFeedGroupConfigData);
      v103 = v188;
      v104 = v129;
      sub_219BEDD24();
      v67 = v104;
      if (v104)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v159 + 32))(v131, v103, v160);
      goto LABEL_55;
    case 14:
      sub_218718690(v203, &v204);
      type metadata accessor for SharedWithYouTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&unk_280E98E20, type metadata accessor for SharedWithYouTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280E98E30, type metadata accessor for SharedWithYouTodayFeedGroupConfigData);
      v71 = v189;
      v72 = v129;
      sub_219BEDD24();
      v67 = v72;
      if (v72)
      {
        goto LABEL_48;
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v161 + 32))(v131, v71, v163);
      goto LABEL_55;
    case 15:
      v85 = v60;
      sub_218718690(v203, &v204);
      sub_2186E0DF0();
      sub_2186E0E44();
      v86 = v190;
      v87 = v129;
      sub_219BEDD24();
      v88 = v198;
      v67 = v87;
      if (v87)
      {
        goto LABEL_48;
      }

      v64 = v63;
      (*(v199 + 8))(v62, v51);
      v68 = v131;
      (*(v162 + 32))(v131, v86, v85);
      goto LABEL_56;
    case 16:
      sub_218718690(v203, &v204);
      type metadata accessor for MySportsTodayFeedGroupConfigData();
      sub_219A4E77C(&qword_280EA5E90, type metadata accessor for MySportsTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EA5E98, type metadata accessor for MySportsTodayFeedGroupConfigData);
      v69 = v191;
      v70 = v129;
      sub_219BEDD24();
      v67 = v70;
      if (v70)
      {
        goto LABEL_48;
      }

      v64 = v63;
      (*(v199 + 8))(v62, v51);
      v68 = v131;
      (*(v164 + 32))(v131, v69, v165);
      goto LABEL_55;
    case 17:
      sub_218718690(v203, &v204);
      type metadata accessor for IntroToSportsTodayFeedGroupConfigData();
      sub_219A4E77C(&qword_280E997B8, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280E997C0, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
      v95 = v192;
      v96 = v129;
      sub_219BEDD24();
      v67 = v96;
      if (v96)
      {
        goto LABEL_48;
      }

      v64 = v63;
      (*(v199 + 8))(v62, v51);
      v68 = v131;
      (*(v166 + 32))(v131, v95, v167);
      goto LABEL_55;
    case 18:
      sub_218718690(v203, &v204);
      type metadata accessor for ShortcutsTodayFeedGroupConfigData();
      sub_219A4E77C(&qword_280EA1ED0, type metadata accessor for ShortcutsTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EA1ED8, type metadata accessor for ShortcutsTodayFeedGroupConfigData);
      v107 = v193;
      v108 = v129;
      sub_219BEDD24();
      v67 = v108;
      if (v108)
      {
        goto LABEL_48;
      }

      v64 = v63;
      (*(v199 + 8))(v62, v51);
      v68 = v131;
      (*(v168 + 32))(v131, v107, v169);
      goto LABEL_55;
    case 19:
      sub_218718690(v203, &v204);
      type metadata accessor for ChannelTodayFeedGroupConfigData();
      sub_219A4E77C(&qword_280EA9A98, type metadata accessor for ChannelTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EA9AA0, type metadata accessor for ChannelTodayFeedGroupConfigData);
      v115 = v194;
      v116 = v129;
      sub_219BEDD24();
      v67 = v116;
      if (v116)
      {
        goto LABEL_48;
      }

      v64 = v63;
      (*(v199 + 8))(v62, v51);
      v68 = v131;
      (*(v170 + 32))(v131, v115, v171);
      goto LABEL_55;
    case 20:
      sub_218718690(v203, &v204);
      type metadata accessor for SavedStoriesTodayFeedGroupConfigData();
      sub_219A4E77C(&qword_280E9A9C0, type metadata accessor for SavedStoriesTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280E9A9C8, type metadata accessor for SavedStoriesTodayFeedGroupConfigData);
      v97 = v195;
      v98 = v129;
      sub_219BEDD24();
      v67 = v98;
      if (v98)
      {
        goto LABEL_48;
      }

      v64 = v63;
      (*(v199 + 8))(v62, v51);
      v68 = v131;
      (*(v172 + 32))(v131, v97, v173);
      goto LABEL_55;
    case 21:
      sub_218718690(v203, &v204);
      type metadata accessor for ChannelPickerTodayFeedGroupConfigData();
      sub_219A4E77C(&qword_280E99D98, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280E99DA0, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
      v101 = v196;
      v102 = v129;
      sub_219BEDD24();
      v67 = v102;
      if (v102)
      {
        goto LABEL_48;
      }

      v64 = v63;
      (*(v199 + 8))(v62, v51);
      v68 = v131;
      (*(v174 + 32))(v131, v101, v175);
      goto LABEL_55;
    case 22:
      v112 = v61;
      sub_218718690(v203, &v204);
      type metadata accessor for FoodTodayFeedGroupConfigData();
      sub_219A4E77C(&qword_280EB4418, type metadata accessor for FoodTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EB4420, type metadata accessor for FoodTodayFeedGroupConfigData);
      v113 = v197;
      v114 = v129;
      sub_219BEDD24();
      v67 = v114;
      if (v114)
      {
        goto LABEL_48;
      }

      v64 = v63;
      (*(v199 + 8))(v62, v51);
      v68 = v131;
      (*(v176 + 32))(v131, v113, v112);
      goto LABEL_55;
    default:
      sub_218718690(v203, &v204);
      type metadata accessor for CuratedTodayFeedGroupConfigData();
      v64 = v63;
      sub_219A4E77C(&unk_280EA9810, type metadata accessor for CuratedTodayFeedGroupConfigData);
      sub_219A4E77C(&qword_280EA9820, type metadata accessor for CuratedTodayFeedGroupConfigData);
      v65 = v130;
      v66 = v129;
      sub_219BEDD24();
      v67 = v66;
      if (v66)
      {
LABEL_48:
        v202 = v51;
        v84 = v199;
LABEL_49:
        v117 = v62;
        v118 = v67;
        if (qword_280E8D8E8 != -1)
        {
          swift_once();
        }

        sub_2186F20D4();
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_219C09EC0;
        v120 = sub_219A4A420(v128);
        v122 = v121;
        v123 = MEMORY[0x277D837D0];
        *(v119 + 56) = MEMORY[0x277D837D0];
        v124 = sub_2186FC3BC();
        *(v119 + 64) = v124;
        *(v119 + 32) = v120;
        *(v119 + 40) = v122;
        v204 = 0;
        v205 = 0xE000000000000000;
        v206 = v118;
        sub_2186CFDE4(0, &qword_280E8B580);
        sub_219BF7484();
        v125 = v204;
        v126 = v205;
        *(v119 + 96) = v123;
        *(v119 + 104) = v124;
        *(v119 + 72) = v125;
        *(v119 + 80) = v126;
        sub_219BF6214();
        sub_219BE5314();

        swift_willThrow();
        (*(v84 + 8))(v117, v202);
        v58 = v203;
        return __swift_destroy_boxed_opaque_existential_1(v58);
      }

      (*(v199 + 8))(v53, v51);
      v68 = v131;
      (*(v133 + 32))(v131, v65, v134);
LABEL_55:
      v88 = v198;
LABEL_56:
      swift_storeEnumTagMultiPayload();
      sub_219A4E928(v68, v88);
      result = __swift_destroy_boxed_opaque_existential_1(v64);
      break;
  }

  return result;
}

uint64_t sub_219A4A420(char a1)
{
  result = 0x64657461727563;
  switch(a1)
  {
    case 1:
      result = 0x657061707377656ELL;
      break;
    case 2:
      result = 0x77654E6C61636F6CLL;
      break;
    case 3:
      result = 0x676E69646E657274;
      break;
    case 4:
      result = 0x756F59726F66;
      break;
    case 5:
      v3 = 0x64657373696DLL;
      goto LABEL_19;
    case 6:
      v3 = 0x74736574616CLL;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
      break;
    case 7:
      result = 0x6369706F74;
      break;
    case 8:
      result = 0x656E697A6167616DLL;
      break;
    case 9:
      result = 0x6F6C6C6F4677656ELL;
      break;
    case 10:
      result = 0x6867696C746F7073;
      break;
    case 11:
      result = 0x7069726373627573;
      break;
    case 12:
      result = 0x6974736567677573;
      break;
    case 13:
      result = 0x746E6F436E656573;
      break;
    case 14:
      result = 0x646572616873;
      break;
    case 15:
      result = 0x656D656761676E65;
      break;
    case 16:
      result = 0x7374726F7053796DLL;
      break;
    case 17:
      result = 0x536F546F72746E69;
      break;
    case 18:
      result = 0x74756374726F6873;
      break;
    case 19:
      result = 0x6C656E6E616863;
      break;
    case 20:
      result = 0x6F74536465766173;
      break;
    case 21:
      result = 0x506C656E6E616863;
      break;
    case 22:
      result = 1685024614;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_219A4A6B0(uint64_t a1)
{
  v126 = a1;
  sub_2186E16D0();
  v124 = *(v1 - 8);
  v125 = v1;
  MEMORY[0x28223BE20](v1);
  v123 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E14F4();
  v121 = *(v3 - 8);
  v122 = v3;
  MEMORY[0x28223BE20](v3);
  v120 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E13DC();
  v118 = *(v5 - 8);
  v119 = v5;
  MEMORY[0x28223BE20](v5);
  v117 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E12C4();
  v115 = *(v7 - 8);
  v116 = v7;
  MEMORY[0x28223BE20](v7);
  v114 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E1164();
  v112 = *(v9 - 8);
  v113 = v9;
  MEMORY[0x28223BE20](v9);
  v111 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E104C();
  v109 = *(v11 - 8);
  v110 = v11;
  MEMORY[0x28223BE20](v11);
  v108 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0E98();
  v107 = v13;
  v106 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v105 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E05B8(0, &qword_280E922F0, sub_2186E0DF0, sub_2186E0E44);
  v104 = v15;
  v103 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v102 = &v63 - v16;
  sub_2186E0CD8();
  v101 = v17;
  v100 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v99 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0BC0();
  v98 = v19;
  v97 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v96 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0AA8();
  v95 = v21;
  v94 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v93 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0990();
  v92 = v23;
  v91 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0878();
  v89 = v25;
  v88 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v87 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E06DC();
  v86 = v27;
  v85 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v84 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E05B8(0, &qword_280E923C0, sub_2186E0634, sub_2186E0688);
  v83 = v29;
  v82 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v81 = &v63 - v30;
  sub_2186E03A0();
  v80 = v31;
  v79 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v78 = &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0288();
  v77 = v33;
  v76 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v75 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0170();
  v74 = v35;
  v73 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v72 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0010();
  v71 = v37;
  v70 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v69 = &v63 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF784();
  v68 = v39;
  v67 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v64 = &v63 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  v42 = v41;
  v66 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v63 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE858();
  v46 = v45;
  v65 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v63 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE644();
  v50 = v49;
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v53 = &v63 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TodayFeedGroupConfig();
  MEMORY[0x28223BE20](v54);
  v56 = &v63 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219377108(v127, v56);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v62 = v65;
      (*(v65 + 32))(v48, v56, v46);
      sub_219BEDD64();
      return (*(v62 + 8))(v48, v46);
    case 2u:
      v61 = v66;
      (*(v66 + 32))(v44, v56, v42);
      sub_219BEDD64();
      return (*(v61 + 8))(v44, v42);
    case 3u:
      v58 = v67;
      v59 = v64;
      v60 = v68;
      (*(v67 + 32))(v64, v56, v68);
      goto LABEL_25;
    case 4u:
      v58 = v70;
      v59 = v69;
      v60 = v71;
      (*(v70 + 32))(v69, v56, v71);
      goto LABEL_25;
    case 5u:
      v58 = v73;
      v59 = v72;
      v60 = v74;
      (*(v73 + 32))(v72, v56, v74);
      goto LABEL_25;
    case 6u:
      v58 = v76;
      v59 = v75;
      v60 = v77;
      (*(v76 + 32))(v75, v56, v77);
      goto LABEL_25;
    case 7u:
      v58 = v79;
      v59 = v78;
      v60 = v80;
      (*(v79 + 32))(v78, v56, v80);
      goto LABEL_25;
    case 8u:
      v58 = v82;
      v59 = v81;
      v60 = v83;
      (*(v82 + 32))(v81, v56, v83);
      goto LABEL_25;
    case 9u:
      v58 = v85;
      v59 = v84;
      v60 = v86;
      (*(v85 + 32))(v84, v56, v86);
      goto LABEL_25;
    case 0xAu:
      v58 = v88;
      v59 = v87;
      v60 = v89;
      (*(v88 + 32))(v87, v56, v89);
      goto LABEL_25;
    case 0xBu:
      v58 = v91;
      v59 = v90;
      v60 = v92;
      (*(v91 + 32))(v90, v56, v92);
      goto LABEL_25;
    case 0xCu:
      v58 = v94;
      v59 = v93;
      v60 = v95;
      (*(v94 + 32))(v93, v56, v95);
      goto LABEL_25;
    case 0xDu:
      v58 = v97;
      v59 = v96;
      v60 = v98;
      (*(v97 + 32))(v96, v56, v98);
      goto LABEL_25;
    case 0xEu:
      v58 = v100;
      v59 = v99;
      v60 = v101;
      (*(v100 + 32))(v99, v56, v101);
      goto LABEL_25;
    case 0xFu:
      v58 = v103;
      v59 = v102;
      v60 = v104;
      (*(v103 + 32))(v102, v56, v104);
      goto LABEL_25;
    case 0x10u:
      v58 = v106;
      v59 = v105;
      v60 = v107;
      (*(v106 + 32))(v105, v56, v107);
      goto LABEL_25;
    case 0x11u:
      v59 = v108;
      v58 = v109;
      v60 = v110;
      (*(v109 + 32))(v108, v56, v110);
      goto LABEL_25;
    case 0x12u:
      v59 = v111;
      v58 = v112;
      v60 = v113;
      (*(v112 + 32))(v111, v56, v113);
      goto LABEL_25;
    case 0x13u:
      v59 = v114;
      v58 = v115;
      v60 = v116;
      (*(v115 + 32))(v114, v56, v116);
      goto LABEL_25;
    case 0x14u:
      v59 = v117;
      v58 = v118;
      v60 = v119;
      (*(v118 + 32))(v117, v56, v119);
      goto LABEL_25;
    case 0x15u:
      v59 = v120;
      v58 = v121;
      v60 = v122;
      (*(v121 + 32))(v120, v56, v122);
      goto LABEL_25;
    case 0x16u:
      v59 = v123;
      v58 = v124;
      v60 = v125;
      (*(v124 + 32))(v123, v56, v125);
LABEL_25:
      sub_219BEDD64();
      result = (*(v58 + 8))(v59, v60);
      break;
    default:
      (*(v51 + 32))(v53, v56, v50);
      sub_219BEDD64();
      result = (*(v51 + 8))(v53, v50);
      break;
  }

  return result;
}

uint64_t sub_219A4B7D8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219A4B82C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219A4B884(uint64_t a1)
{
  v2 = sub_219A4E880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A4B8C0(uint64_t a1)
{
  v2 = sub_219A4E880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A4B8FC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_219A4A420(*a1);
  v5 = v4;
  if (v3 == sub_219A4A420(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_219A4B984()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219A4A420(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219A4B9E8()
{
  sub_219A4A420(*v0);
  sub_219BF5524();
}

uint64_t sub_219A4BA3C()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219A4A420(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219A4BA9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219A4ECA0();
  *a1 = result;
  return result;
}

uint64_t sub_219A4BACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219A4A420(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_219A4BBD8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v130 = a1;
  v129 = a2;
  sub_2186E16D0();
  v127 = *(v2 - 8);
  v128 = v2;
  MEMORY[0x28223BE20](v2);
  v126 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E14F4();
  v124 = *(v4 - 8);
  v125 = v4;
  MEMORY[0x28223BE20](v4);
  v123 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E13DC();
  v121 = *(v6 - 8);
  v122 = v6;
  MEMORY[0x28223BE20](v6);
  v120 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E12C4();
  v118 = *(v8 - 8);
  v119 = v8;
  MEMORY[0x28223BE20](v8);
  v117 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E1164();
  v115 = *(v10 - 8);
  v116 = v10;
  MEMORY[0x28223BE20](v10);
  v114 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E104C();
  v112 = *(v12 - 8);
  v113 = v12;
  MEMORY[0x28223BE20](v12);
  v111 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0E98();
  v110 = v14;
  v109 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v108 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E05B8(0, &qword_280E922F0, sub_2186E0DF0, sub_2186E0E44);
  v107 = v16;
  v106 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v105 = &v67 - v17;
  sub_2186E0CD8();
  v104 = v18;
  v103 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v102 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0BC0();
  v101 = v20;
  v100 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v99 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0AA8();
  v98 = v22;
  v97 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v96 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0990();
  v95 = v24;
  v94 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v93 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0878();
  v92 = v26;
  v91 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v90 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E06DC();
  v89 = v28;
  v88 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v87 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E05B8(0, &qword_280E923C0, sub_2186E0634, sub_2186E0688);
  v86 = v30;
  v85 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v84 = &v67 - v31;
  sub_2186E03A0();
  v83 = v32;
  v82 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v81 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0288();
  v80 = v34;
  v79 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v78 = &v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0170();
  v77 = v36;
  v76 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v75 = &v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0010();
  v74 = v38;
  v73 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v72 = &v67 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF784();
  v71 = v40;
  v70 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  v44 = v43;
  v69 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE858();
  v48 = v47;
  v68 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v67 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE644();
  v52 = v51;
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v55 = &v67 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TodayFeedGroupConfig();
  MEMORY[0x28223BE20](v56);
  v58 = &v67 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219377108(v131, v58);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v66 = v68;
      (*(v68 + 32))(v50, v58, v48);
      v130(v48);
      return (*(v66 + 8))(v50, v48);
    case 2u:
      v63 = v69;
      (*(v69 + 32))(v46, v58, v44);
      v130(v44);
      return (*(v63 + 8))(v46, v44);
    case 3u:
      v64 = v70;
      v65 = v71;
      (*(v70 + 32))(v42, v58, v71);
      v130(v65);
      return (*(v64 + 8))(v42, v65);
    case 4u:
      v60 = v73;
      v61 = v72;
      v62 = v74;
      (*(v73 + 32))(v72, v58, v74);
      goto LABEL_25;
    case 5u:
      v60 = v76;
      v61 = v75;
      v62 = v77;
      (*(v76 + 32))(v75, v58, v77);
      goto LABEL_25;
    case 6u:
      v60 = v79;
      v61 = v78;
      v62 = v80;
      (*(v79 + 32))(v78, v58, v80);
      goto LABEL_25;
    case 7u:
      v60 = v82;
      v61 = v81;
      v62 = v83;
      (*(v82 + 32))(v81, v58, v83);
      goto LABEL_25;
    case 8u:
      v60 = v85;
      v61 = v84;
      v62 = v86;
      (*(v85 + 32))(v84, v58, v86);
      goto LABEL_25;
    case 9u:
      v60 = v88;
      v61 = v87;
      v62 = v89;
      (*(v88 + 32))(v87, v58, v89);
      goto LABEL_25;
    case 0xAu:
      v60 = v91;
      v61 = v90;
      v62 = v92;
      (*(v91 + 32))(v90, v58, v92);
      goto LABEL_25;
    case 0xBu:
      v60 = v94;
      v61 = v93;
      v62 = v95;
      (*(v94 + 32))(v93, v58, v95);
      goto LABEL_25;
    case 0xCu:
      v60 = v97;
      v61 = v96;
      v62 = v98;
      (*(v97 + 32))(v96, v58, v98);
      goto LABEL_25;
    case 0xDu:
      v60 = v100;
      v61 = v99;
      v62 = v101;
      (*(v100 + 32))(v99, v58, v101);
      goto LABEL_25;
    case 0xEu:
      v60 = v103;
      v61 = v102;
      v62 = v104;
      (*(v103 + 32))(v102, v58, v104);
      goto LABEL_25;
    case 0xFu:
      v60 = v106;
      v61 = v105;
      v62 = v107;
      (*(v106 + 32))(v105, v58, v107);
      goto LABEL_25;
    case 0x10u:
      v60 = v109;
      v61 = v108;
      v62 = v110;
      (*(v109 + 32))(v108, v58, v110);
      goto LABEL_25;
    case 0x11u:
      v61 = v111;
      v60 = v112;
      v62 = v113;
      (*(v112 + 32))(v111, v58, v113);
      goto LABEL_25;
    case 0x12u:
      v61 = v114;
      v60 = v115;
      v62 = v116;
      (*(v115 + 32))(v114, v58, v116);
      goto LABEL_25;
    case 0x13u:
      v61 = v117;
      v60 = v118;
      v62 = v119;
      (*(v118 + 32))(v117, v58, v119);
      goto LABEL_25;
    case 0x14u:
      v61 = v120;
      v60 = v121;
      v62 = v122;
      (*(v121 + 32))(v120, v58, v122);
      goto LABEL_25;
    case 0x15u:
      v61 = v123;
      v60 = v124;
      v62 = v125;
      (*(v124 + 32))(v123, v58, v125);
      goto LABEL_25;
    case 0x16u:
      v61 = v126;
      v60 = v127;
      v62 = v128;
      (*(v127 + 32))(v126, v58, v128);
LABEL_25:
      v130(v62);
      result = (*(v60 + 8))(v61, v62);
      break;
    default:
      (*(v53 + 32))(v55, v58, v52);
      v130(v52);
      result = (*(v53 + 8))(v55, v52);
      break;
  }

  return result;
}

uint64_t sub_219A4CD20(uint64_t (*a1)(uint64_t))
{
  v125 = a1;
  sub_2186E16D0();
  v123 = *(v1 - 8);
  v124 = v1;
  MEMORY[0x28223BE20](v1);
  v122 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E14F4();
  v120 = *(v3 - 8);
  v121 = v3;
  MEMORY[0x28223BE20](v3);
  v119 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E13DC();
  v117 = *(v5 - 8);
  v118 = v5;
  MEMORY[0x28223BE20](v5);
  v116 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E12C4();
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x28223BE20](v7);
  v113 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E1164();
  v111 = *(v9 - 8);
  v112 = v9;
  MEMORY[0x28223BE20](v9);
  v110 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E104C();
  v108 = *(v11 - 8);
  v109 = v11;
  MEMORY[0x28223BE20](v11);
  v107 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0E98();
  v106 = v13;
  v105 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v104 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E05B8(0, &qword_280E922F0, sub_2186E0DF0, sub_2186E0E44);
  v103 = v15;
  v102 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v101 = &v64 - v16;
  sub_2186E0CD8();
  v100 = v17;
  v99 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v98 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0BC0();
  v97 = v19;
  v96 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v95 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0AA8();
  v94 = v21;
  v93 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v92 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0990();
  v91 = v23;
  v90 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v89 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0878();
  v88 = v25;
  v87 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v86 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E06DC();
  v85 = v27;
  v84 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v83 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E05B8(0, &qword_280E923C0, sub_2186E0634, sub_2186E0688);
  v82 = v29;
  v81 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v80 = &v64 - v30;
  sub_2186E03A0();
  v79 = v31;
  v78 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v77 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0288();
  v76 = v33;
  v75 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v74 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0170();
  v73 = v35;
  v72 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v71 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0010();
  v70 = v37;
  v69 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v68 = &v64 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF784();
  v67 = v39;
  v66 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v64 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  v43 = v42;
  v65 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v64 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE858();
  v47 = v46;
  v64 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v64 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE644();
  v51 = v50;
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v54 = &v64 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TodayFeedGroupConfig();
  MEMORY[0x28223BE20](v55);
  v57 = &v64 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219377108(v126, v57);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v62 = v64;
      (*(v64 + 32))(v49, v57, v47);
      v59 = v125(v47);
      (*(v62 + 8))(v49, v47);
      return v59;
    case 2u:
      v58 = v65;
      (*(v65 + 32))(v45, v57, v43);
      v59 = v125(v43);
      (*(v58 + 8))(v45, v43);
      return v59;
    case 3u:
      v60 = v66;
      v61 = v67;
      (*(v66 + 32))(v41, v57, v67);
      v59 = v125(v61);
      (*(v60 + 8))(v41, v61);
      return v59;
    case 4u:
      v52 = v69;
      v54 = v68;
      v51 = v70;
      (*(v69 + 32))(v68, v57, v70);
      goto LABEL_25;
    case 5u:
      v52 = v72;
      v54 = v71;
      v51 = v73;
      (*(v72 + 32))(v71, v57, v73);
      goto LABEL_25;
    case 6u:
      v52 = v75;
      v54 = v74;
      v51 = v76;
      (*(v75 + 32))(v74, v57, v76);
      goto LABEL_25;
    case 7u:
      v52 = v78;
      v54 = v77;
      v51 = v79;
      (*(v78 + 32))(v77, v57, v79);
      goto LABEL_25;
    case 8u:
      v52 = v81;
      v54 = v80;
      v51 = v82;
      (*(v81 + 32))(v80, v57, v82);
      goto LABEL_25;
    case 9u:
      v52 = v84;
      v54 = v83;
      v51 = v85;
      (*(v84 + 32))(v83, v57, v85);
      goto LABEL_25;
    case 0xAu:
      v52 = v87;
      v54 = v86;
      v51 = v88;
      (*(v87 + 32))(v86, v57, v88);
      goto LABEL_25;
    case 0xBu:
      v52 = v90;
      v54 = v89;
      v51 = v91;
      (*(v90 + 32))(v89, v57, v91);
      goto LABEL_25;
    case 0xCu:
      v52 = v93;
      v54 = v92;
      v51 = v94;
      (*(v93 + 32))(v92, v57, v94);
      goto LABEL_25;
    case 0xDu:
      v52 = v96;
      v54 = v95;
      v51 = v97;
      (*(v96 + 32))(v95, v57, v97);
      goto LABEL_25;
    case 0xEu:
      v52 = v99;
      v54 = v98;
      v51 = v100;
      (*(v99 + 32))(v98, v57, v100);
      goto LABEL_25;
    case 0xFu:
      v52 = v102;
      v54 = v101;
      v51 = v103;
      (*(v102 + 32))(v101, v57, v103);
      goto LABEL_25;
    case 0x10u:
      v52 = v105;
      v54 = v104;
      v51 = v106;
      (*(v105 + 32))(v104, v57, v106);
      goto LABEL_25;
    case 0x11u:
      v54 = v107;
      v52 = v108;
      v51 = v109;
      (*(v108 + 32))(v107, v57, v109);
      goto LABEL_25;
    case 0x12u:
      v54 = v110;
      v52 = v111;
      v51 = v112;
      (*(v111 + 32))(v110, v57, v112);
      goto LABEL_25;
    case 0x13u:
      v54 = v113;
      v52 = v114;
      v51 = v115;
      (*(v114 + 32))(v113, v57, v115);
      goto LABEL_25;
    case 0x14u:
      v54 = v116;
      v52 = v117;
      v51 = v118;
      (*(v117 + 32))(v116, v57, v118);
      goto LABEL_25;
    case 0x15u:
      v54 = v119;
      v52 = v120;
      v51 = v121;
      (*(v120 + 32))(v119, v57, v121);
      goto LABEL_25;
    case 0x16u:
      v54 = v122;
      v52 = v123;
      v51 = v124;
      (*(v123 + 32))(v122, v57, v124);
      goto LABEL_25;
    default:
      (*(v52 + 32))(v54, v57, v51);
LABEL_25:
      v59 = v125(v51);
      (*(v52 + 8))(v54, v51);
      return v59;
  }
}

uint64_t sub_219A4DE64()
{
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219377108(v3, v2);
  v4 = 0x80080u >> swift_getEnumCaseMultiPayload();
  sub_219A4E7C4(v2, type metadata accessor for TodayFeedGroupConfig);
  return v4 & 1;
}

uint64_t sub_219A4DF0C@<X0>(uint64_t a1@<X8>)
{
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219377108(v5, v4);
  if (swift_getEnumCaseMultiPayload() == 13)
  {
    v6 = *MEMORY[0x277D32600];
    v7 = sub_219BEF4F4();
    (*(*(v7 - 8) + 104))(a1, v6, v7);
    return sub_219A4E7C4(v4, type metadata accessor for TodayFeedGroupConfig);
  }

  else
  {
    sub_219A4E7C4(v4, type metadata accessor for TodayFeedGroupConfig);
    v9 = *MEMORY[0x277D32608];
    v10 = sub_219BEF4F4();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }
}

uint64_t sub_219A4E19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219A4E77C(&qword_280ECC6D0, type metadata accessor for TodayFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_219A4E224@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_219BF1934();
  v32 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CuratedTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (v29 - v8);
  sub_2186DE644();
  v11 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TodayFeedGroupConfig();
  MEMORY[0x28223BE20](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v29 - v18;
  sub_219377108(v34, v29 - v18);
  if (swift_getEnumCaseMultiPayload())
  {
    v20 = 1;
    v21 = v35;
  }

  else
  {
    v30 = v6;
    v31 = v3;
    v34 = v1;
    sub_219377108(v19, v16);
    v22 = v33;
    (*(v33 + 32))(v13, v16, v11);
    sub_219BEDD14();

    sub_219A4E7C4(v9, type metadata accessor for CuratedTodayFeedGroupConfigData);
    v23 = sub_219BF5494();
    v25 = v24;

    v38 = v23;
    v39 = v25;
    v36 = 0x72616365646973;
    v37 = 0xE700000000000000;
    sub_2187F3BD4();
    LOBYTE(v23) = sub_219BF7084();

    if (v23)
    {
      sub_219BEDD14();
      v29[1] = *v9;

      sub_219A4E7C4(v9, type metadata accessor for CuratedTodayFeedGroupConfigData);
      v26 = v30;
      sub_219BEDD14();
      (*(v32 + 16))(v31, v26 + *(v4 + 20), v34);
      sub_219A4E7C4(v26, type metadata accessor for CuratedTodayFeedGroupConfigData);
      v21 = v35;
      sub_219BEF024();
      v20 = 0;
    }

    else
    {
      v20 = 1;
      v21 = v35;
    }

    (*(v22 + 8))(v13, v11);
  }

  v27 = sub_219BEF034();
  (*(*(v27 - 8) + 56))(v21, v20, 1, v27);
  return sub_219A4E7C4(v19, type metadata accessor for TodayFeedGroupConfig);
}

uint64_t sub_219A4E77C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219A4E7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219A4E824()
{
  if (!qword_280E8CEB0)
  {
    sub_219A4E880();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CEB0);
    }
  }
}

unint64_t sub_219A4E880()
{
  result = qword_280ECC708;
  if (!qword_280ECC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC708);
  }

  return result;
}

unint64_t sub_219A4E8D4()
{
  result = qword_280ECC6D8;
  if (!qword_280ECC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC6D8);
  }

  return result;
}

uint64_t sub_219A4E928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFeedGroupConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TodayFeedGroupConfig.CodingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TodayFeedGroupConfig.CodingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_219A4EAF0()
{
  result = qword_27CC22BF0;
  if (!qword_27CC22BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22BF0);
  }

  return result;
}

unint64_t sub_219A4EB48()
{
  result = qword_27CC22BF8;
  if (!qword_27CC22BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22BF8);
  }

  return result;
}

unint64_t sub_219A4EBA0()
{
  result = qword_280ECC6F8;
  if (!qword_280ECC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC6F8);
  }

  return result;
}

unint64_t sub_219A4EBF8()
{
  result = qword_280ECC700;
  if (!qword_280ECC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC700);
  }

  return result;
}

unint64_t sub_219A4EC4C()
{
  result = qword_280ECC6E0;
  if (!qword_280ECC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC6E0);
  }

  return result;
}

uint64_t sub_219A4ECA0()
{
  v0 = sub_219BF7954();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

void sub_219A4ECF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v92 = sub_219BDCAF4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE8204();
  v10 = *&v9[OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView];

  v11 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  [v10 setFrame_];

  v12 = sub_219BE8204();
  v13 = *&v12[OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView];

  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  [v13 setBackgroundColor_];

  sub_218718690(v4 + 16, aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v98);
  v16 = sub_219BE8204();
  v17 = *&v16[OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel];

  sub_2191B7B28(v17, *(a3 + v11[9]));
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v18 = sub_219BE8204();
  v19 = *&v18[OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel];

  [v19 setFrame_];
  v20 = sub_219BE8204();
  v21 = *&v20[OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel];

  v22 = *(a1 + 16);
  v23 = *(a1 + 24);

  v96 = v22;
  v95 = v23;
  v24 = sub_219BF53D4();
  [v21 setText_];

  v25 = sub_219BE8204();
  v26 = *&v25[OBJC_IVAR____TtC7NewsUI29TitleView_subtitleLabel];

  v94 = v11;
  [v26 setFrame_];

  v93 = a2;
  v27 = sub_219BE8204();
  v28 = *&v27[OBJC_IVAR____TtC7NewsUI29TitleView_subtitleLabel];

  v101 = *(a1 + 32);
  if (*(&v101 + 1))
  {
    v87[0] = *(&v101 + 1);
    v87[1] = v101;
    sub_21899E550();
    inited = swift_initStackObject();
    v89 = a1;
    v30 = inited;
    *(inited + 16) = xmmword_219C09EC0;
    v31 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    sub_2189D2C04(&v101, aBlock);
    v32 = v31;
    v33 = [v14 secondaryLabelColor];
    v34 = sub_2186C6148(0, &qword_280E8DA80);
    v30[5] = v33;
    v35 = *MEMORY[0x277D740A8];
    v30[8] = v34;
    v30[9] = v35;
    sub_219BF0CD4();
    v36 = sub_2186C6148(0, &qword_280E8DB00);
    v88 = v28;
    v37 = a3;
    v38 = v36;
    v39 = v35;
    v40 = sub_219BF6BD4();
    v41 = v91;
    v42 = v90;
    v43 = v92;
    (*(v91 + 104))(v90, *MEMORY[0x277D6D198], v92);
    v44 = sub_219BF0CB4();

    (*(v41 + 8))(v42, v43);
    v30[13] = v38;
    a3 = v37;
    v28 = v88;
    v30[10] = v44;
    sub_2188195F4(v30);
    a1 = v89;
    swift_setDeallocating();
    sub_218819588();
    swift_arrayDestroy();
    v45 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v46 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_21899E604();
    v47 = sub_219BF5204();

    v48 = [v45 initWithString:v46 attributes:v47];
  }

  else
  {
    v48 = 0;
  }

  [v28 setAttributedText_];

  v49 = a3 + v94[8];
  if ((*(v49 + 32) & 1) != 0 || !*(a1 + 64))
  {
    v63 = sub_219BE8204();
    v64 = *&v63[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

    [v64 setHidden_];
  }

  else
  {
    v51 = *(v49 + 16);
    v50 = *(v49 + 24);
    v53 = *v49;
    v52 = *(v49 + 8);
    v54 = sub_219BE8204();
    v55 = *&v54[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

    sub_219130824(v55);
    [v55 setFrame_];
    v56 = sub_219BF53D4();
    [v55 setTitle:v56 forState:0];

    [v55 sizeToFit];
    v57 = sub_219BE8204();
    v58 = *&v57[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

    [v58 setHidden_];
    v59 = sub_219BE8204();
    v60 = *&v59[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

    v61 = [v60 titleLabel];
    if (v61 && (v62 = [v61 text], v61, v62))
    {
      sub_219BF5414();
    }

    else
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v62 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();
    }

    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = objc_allocWithZone(MEMORY[0x277D75088]);

    v68 = sub_219BF53D4();

    v99 = sub_219A4F930;
    v100 = v66;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218C5B6F8;
    v98 = &block_descriptor_204;
    v69 = _Block_copy(aBlock);
    v70 = [v67 initWithName:v68 actionHandler:v69];

    _Block_release(v69);

    v71 = sub_219BE8204();
    v72 = sub_219BE8204();
    v73 = [v72 accessibilityCustomActions];

    if (v73)
    {
      sub_2186C6148(0, &qword_280E8DCF0);
      v74 = sub_219BF5924();
    }

    else
    {
      v74 = MEMORY[0x277D84F90];
    }

    sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v75 = swift_initStackObject();
    *(v75 + 16) = xmmword_219C146A0;
    *(v75 + 32) = v70;
    aBlock[0] = v74;
    v76 = v70;
    sub_2191ED524(v75);
    sub_2186C6148(0, &qword_280E8DCF0);
    v64 = sub_219BF5904();

    [v71 setAccessibilityCustomActions_];
  }

  v77 = sub_219BE8204();
  [v77 setAccessibilityTraits_];

  v78 = sub_219BE8204();
  sub_218DBAF00();
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_219C09EC0;
  v80 = v95;
  *(v79 + 32) = v96;
  *(v79 + 40) = v80;
  *(v79 + 48) = v101;
  sub_219BE5F34();
  v82 = v81;

  if (v82)
  {
    v83 = sub_219BF53D4();
  }

  else
  {
    v83 = 0;
  }

  [v78 setAccessibilityLabel_];

  v84 = sub_219BE8204();
  [v84 setAccessibilityRespondsToUserInteraction_];

  v85 = sub_219BE8204();
  [v85 setAccessibilityValue_];

  v86 = sub_219BE8204();
  [v86 setAccessibilityHint_];
}

BOOL sub_219A4F860()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = sub_219BE8204();
    v2 = *&v1[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

    v3 = *&v2[qword_280EDD8D8];
    MEMORY[0x21CEC15C0]();
  }

  return Strong != 0;
}

uint64_t sub_219A4F97C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_219A4FA10;

  return sub_219A50B50();
}

uint64_t sub_219A4FA10()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219A4FB44, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_219A4FB44()
{
  if (qword_27CC085E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B28);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v4, v5, "Failed to prewarm recipe filter, error: %{public}@", v8, 0xCu);
    sub_218962D30(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_219A4FCD8(uint64_t *a1)
{
  v4 = *a1;
  sub_2189AFEE4(&v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_219A4FDAC(uint64_t *a1)
{
  sub_218738330(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = *a1;
  if (*(v1 + 48))
  {
    sub_218A450F0();

    sub_219BF5C14();
  }

  v7 = sub_219BF5BF4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v6;

  *(v1 + 48) = sub_2195E70E0(0, 0, v5, &unk_219CC3218, v8);
}

uint64_t sub_219A4FF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](sub_219A4FF48, 0, 0);
}

uint64_t sub_219A4FF48()
{
  v1 = v0[5];
  v2 = *(*(v0[4] + 32) + 64);
  ObjectType = swift_getObjectType();
  v0[3] = v1;
  v6 = (*(v2 + 8) + **(v2 + 8));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_219A5008C;

  return v6(v0 + 2, v0 + 3, ObjectType, v2);
}

uint64_t sub_219A5008C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_219A502B0;
  }

  else
  {
    v2 = sub_219A501A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219A501A0()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_219BF5C34();
  if (!v1 && swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = RecipeFilterSelection.isEmpty.getter() & 1;
      if (v3)
      {
        v4 = 0;
      }

      else
      {
        v4 = v2;
      }

      sub_218956690(v4, v3);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  *(v0[4] + 48) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_219A502B0()
{
  *(*(v0 + 32) + 48) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219A5031C()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219A50388(uint64_t *a1)
{
  v1 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {

      v4 = sub_21931C79C(v3, v1);

      if (v4)
      {
        v6 = v1;
        sub_2189561C8(&v6);
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_219A50674();
        sub_219BDC1F4();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_219A50518()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219A55F84();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219A50598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_219A4FF28(a1, v4, v5, v7, v6);
}

unint64_t sub_219A50674()
{
  result = qword_27CC0B228;
  if (!qword_27CC0B228)
  {
    type metadata accessor for RecipeFilterViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B228);
  }

  return result;
}

id sub_219A506CC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemBackgroundColor;
  if (v1 != 2)
  {
    v3 = &selRef_secondarySystemBackgroundColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_219A50780(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = result;
  v31 = *(result + 16);
  if (v31)
  {
    v6 = a3;
    v7 = a2;
    v8 = 0;
    v9 = (result + 72);
    v10 = MEMORY[0x277D84F90];
    v26 = result;
    while (v8 < *(v5 + 16))
    {
      v11 = *v9;
      v12 = *(v9 - 7);
      v13 = *(v9 - 8);
      v14 = *(v9 - 3);
      v15 = *(v9 - 2);
      v16 = *(v9 - 4);
      v32 = *(v9 - 5);
      v33 = v16;
      v34 = v14;
      v35 = v15;
      v36 = v13;
      v37 = v12;
      v38 = v11;

      v17 = sub_219A51D60(&v32, v7, v6);
      if (v4)
      {

        goto LABEL_16;
      }

      if (v17)
      {
        v19 = v32;
        v18 = v33;
        v20 = v34;
        v30 = v35;
        v28 = v37;
        v29 = v36;
        v27 = v38;
        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = v10;
        if ((result & 1) == 0)
        {
          result = sub_218C38538(0, *(v10 + 16) + 1, 1);
          v10 = v39;
        }

        v22 = *(v10 + 16);
        v21 = *(v10 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_218C38538((v21 > 1), v22 + 1, 1);
          v10 = v39;
        }

        *(v10 + 16) = v22 + 1;
        v23 = v10 + 48 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v18;
        *(v23 + 48) = v20;
        *(v23 + 56) = v30;
        *(v23 + 64) = v29;
        *(v23 + 65) = v28;
        v5 = v26;
        *(v23 + 72) = v27;
        v7 = a2;
        v6 = a3;
      }

      else
      {
      }

      ++v8;
      v9 += 6;
      if (v31 == v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_16:

    return v10;
  }

  return result;
}

void sub_219A50998(void **a1)
{
  v2 = *(type metadata accessor for SearchFilterItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_218C8133C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_219A522C4(v5);
  *a1 = v3;
}

uint64_t sub_219A50A40()
{
  v1 = *(*(v0 + 72) + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v1 + 6);
  sub_2189B0840(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_218774F78(v0 + 88);
  return v0;
}

uint64_t sub_219A50AF8()
{
  sub_219A50A40();

  return swift_deallocClassInstance();
}

uint64_t sub_219A50B50()
{
  v1[4] = v0;
  type metadata accessor for RecipeFilterConfigurationPayload(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for RecipeFilterConfigFetchResult();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219A50C0C, 0, 0);
}

uint64_t sub_219A50C0C()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_219A50CB4;
  v2 = v0[6];

  return sub_219A960E0(v2);
}

uint64_t sub_219A50CB4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_219A50EB0;
  }

  else
  {
    v2 = sub_219A50DC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219A50DC8()
{
  v1 = v0[4];
  sub_219A521F8(v0[6], v0[5], type metadata accessor for RecipeFilterConfigurationPayload);
  v2 = *(v1 + 72);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    RecipeFilterSelection.init(sections:)(MEMORY[0x277D84F90]);
    v3 = v0[2];
  }

  v0[3] = v3;
  sub_219BF5BD4();

  v0[9] = sub_219BF5BC4();
  v5 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_219A50F1C, v5, v4);
}

uint64_t sub_219A50EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219A50F1C()
{
  v1 = *(v0 + 40);

  sub_219A51044(v1, (v0 + 24));

  sub_219A53990(v1, type metadata accessor for RecipeFilterConfigurationPayload);

  return MEMORY[0x2822009F8](sub_219A50FB8, 0, 0);
}

uint64_t sub_219A50FB8()
{
  sub_219A53990(*(v0 + 48), type metadata accessor for RecipeFilterConfigFetchResult);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219A51044(uint64_t a1, uint64_t *a2)
{
  v103[2] = a1;
  v4 = type metadata accessor for RecipeFilterConfigurationPayload(0);
  MEMORY[0x28223BE20](v4 - 8);
  v103[0] = v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchFilterItem();
  v110 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v108 = v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v107 = v103 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v103 - v11;
  MEMORY[0x28223BE20](v13);
  v109 = v103 - v14;
  v15 = *a2;
  v116 = MEMORY[0x277D84F98];
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  v21 = MEMORY[0x277D84FA0];
  if (v18)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v22 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      do
      {
LABEL_9:
        v18 &= v18 - 1;

        v21 = sub_219479BA4(v23, v21);
      }

      while (v18);
      continue;
    }
  }

  v103[1] = v2;

  v104 = v15;

  v24 = 0;
  v111 = v21;
  v25 = v21 + 56;
  v26 = 1 << *(v21 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v21 + 56);
  v29 = (v26 + 63) >> 6;
  Kind = MEMORY[0x277D84F98];
  v106 = v12;
  while (2)
  {
    if (v28)
    {
      v32 = Kind;
LABEL_22:
      v34 = *(v110 + 72);
      v35 = v109;
      sub_219A521F8(*(v111 + 48) + v34 * (__clz(__rbit64(v28)) | (v24 << 6)), v109, type metadata accessor for SearchFilterItem);
      sub_218CAFFC4(v35, v12);
      v36 = *(v12 + 2);
      v37 = *(v12 + 3);
      v38 = v12[32];
      v112 = v34;
      if (v38 == 1)
      {
        sub_219A521F8(v12, v107, type metadata accessor for SearchFilterItem);

        v39 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122.Kind = v32;
        v20 = v36;
        v41 = v37;
        v42 = sub_21870F700(v36, v37);
        v44 = *(v39 + 16);
        v45 = (v43 & 1) == 0;
        v46 = __OFADD__(v44, v45);
        v47 = v44 + v45;
        if (v46)
        {
          goto LABEL_84;
        }

        v48 = v43;
        if (*(v39 + 24) >= v47)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v67 = v42;
            sub_21949771C();
            v42 = v67;
          }
        }

        else
        {
          sub_219488C1C(v47, isUniquelyReferenced_nonNull_native);
          v42 = sub_21870F700(v20, v37);
          if ((v48 & 1) != (v49 & 1))
          {
            goto LABEL_95;
          }
        }

        v12 = v106;
        if (v48)
        {
          v31 = v42;
          sub_218D89920();
          Kind = v122.Kind;
          sub_219A52260(v107, *(v122.Kind + 56) + v31 * v112);
        }

        else
        {
          Kind = v122.Kind;
          *(v122.Kind + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v63 = (Kind[6] + 16 * v42);
          *v63 = v20;
          v63[1] = v41;
          sub_218CAFFC4(v107, Kind[7] + v42 * v112);
          v64 = Kind[2];
          v46 = __OFADD__(v64, 1);
          v65 = v64 + 1;
          if (v46)
          {
            goto LABEL_86;
          }

          Kind[2] = v65;
        }

        goto LABEL_15;
      }

      v105 = v32;
      sub_219A521F8(v12, v108, type metadata accessor for SearchFilterItem);

      v50 = v37;
      v51 = v116;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v122.Kind = v51;
      v20 = v36;
      v53 = v50;
      v55 = sub_21870F700(v36, v50);
      v56 = *(v51 + 16);
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        goto LABEL_85;
      }

      v59 = v54;
      if (*(v51 + 24) >= v58)
      {
        if (v52)
        {
          v62 = v112;
          if ((v54 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_21949771C();
          v62 = v112;
          if ((v59 & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        sub_219488C1C(v58, v52);
        v60 = sub_21870F700(v20, v53);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_95;
        }

        v55 = v60;
        v62 = v112;
        if ((v59 & 1) == 0)
        {
LABEL_41:
          v66 = v122.Kind;
          *(v122.Kind + 8 * (v55 >> 6) + 64) |= 1 << v55;
          v68 = (*(v66 + 6) + 16 * v55);
          *v68 = v20;
          v68[1] = v53;
          sub_218CAFFC4(v108, *(v66 + 7) + v55 * v62);
          v69 = *(v66 + 2);
          v46 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (v46)
          {
            goto LABEL_87;
          }

          *(v66 + 2) = v70;
          goto LABEL_43;
        }
      }

      sub_218D89920();
      v66 = v122.Kind;
      sub_219A52260(v108, *(v122.Kind + 56) + v55 * v62);
LABEL_43:
      v116 = v66;
      v12 = v106;
      Kind = v105;
LABEL_15:
      v28 &= v28 - 1;
      sub_219A53990(v12, type metadata accessor for SearchFilterItem);
      continue;
    }

    break;
  }

  while (1)
  {
    v33 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_83;
    }

    if (v33 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v33);
    ++v24;
    if (v28)
    {
      v32 = Kind;
      v24 = v33;
      goto LABEL_22;
    }
  }

  RecipeFilterSelection.init(sections:)(MEMORY[0x277D84F90]);
  sub_218FD9434();
  sub_219BF2664();
  v20 = 0;
  v71 = sub_219A50780(v122.Kind, &v116, &v115);
  v72 = v71;
  v73 = *(v71 + 16);
  if (v73)
  {
    v74 = 0;
    v75 = (v71 + 64);
    v76 = v104;
    while (1)
    {
      v77 = *v75;
      v75 += 48;
      if (!v77)
      {
        break;
      }

      if (v73 == ++v74)
      {
        v74 = -1;
        break;
      }
    }
  }

  else
  {
    v74 = -1;
    v76 = v104;
  }

  v78 = v74 + 1;
  if (__OFADD__(v74, 1))
  {
    goto LABEL_88;
  }

  v111 = v74 + 1;
  v112 = 0;
  v79 = v116;
  if (!*(v116 + 2))
  {
    v20 = v112;
    if (Kind[2])
    {
      goto LABEL_65;
    }

LABEL_76:
    v99 = v115;

    v100 = sub_21931C79C(v76, v99);

    if ((v100 & 1) == 0)
    {
      v113 = v99;

      sub_2189AFEE4(&v113);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v113 = v72;
      sub_218FD94C8();
      sub_219194AB0();
      v101 = v103[0];
      sub_219BF2684();
      sub_219A50518();
      swift_unknownObjectRelease();
      sub_219A53990(v101, type metadata accessor for RecipeFilterConfigurationPayload);
    }

    else
    {
    }
  }

  v109 = v71;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v81 = [objc_opt_self() bundleForClass_];
  v108 = sub_219BDB5E4();
  v83 = v82;

  v84 = *(v79 + 2);
  if (v84)
  {
    v107 = v83;
    v105 = Kind;
    v85 = sub_21947D25C(v84, 0);
    v86 = sub_2194ACEFC(&v122, v85 + ((*(v110 + 80) + 32) & ~*(v110 + 80)), v84, v79);
    v20 = v79;
    swift_bridgeObjectRetain_n();
    sub_21892DE98();
    if (v86 != v84)
    {
      goto LABEL_93;
    }

    Kind = v105;
    v78 = v111;
    v83 = v107;
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  v122.Kind = v85;
  v20 = v112;
  sub_219A50998(&v122);
  if (v20)
  {
    goto LABEL_96;
  }

  v87 = sub_219A53610(v122.Kind, &v115, 0xD000000000000015, 0x8000000219D46F40, 0);

  v72 = v109;
  v88 = *(v109 + 16);
  if (v88 < v78)
  {
    goto LABEL_89;
  }

  if (v78 < 0)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v89 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v72;
  if (!v89 || v88 >= *(v72 + 3) >> 1)
  {
    v72 = sub_2191FBE80(v89, v88 + 1, 1, v72);
    v114 = v72;
  }

  v122.Kind = 0xD000000000000015;
  v122.Description = 0x8000000219D46F40;
  v123 = v108;
  v124 = v83;
  LOWORD(v125) = 3;
  v126 = v87;
  sub_2194B51B0(v78, v78, 1, &v122);

  v76 = v104;
  if (!Kind[2])
  {
    goto LABEL_76;
  }

LABEL_65:
  v109 = v72;
  type metadata accessor for Localized();
  v90 = swift_getObjCClassFromMetadata();
  v91 = [objc_opt_self() bundleForClass_];
  v108 = sub_219BDB5E4();
  v93 = v92;

  v94 = Kind[2];
  if (v94)
  {
    v107 = v93;
    v112 = v20;
    v20 = v79;
    v95 = sub_21947D25C(v94, 0);
    v96 = sub_2194ACEFC(&v117, v95 + ((*(v110 + 80) + 32) & ~*(v110 + 80)), v94, Kind);
    swift_bridgeObjectRetain_n();
    sub_21892DE98();
    if (v96 != v94)
    {
      goto LABEL_94;
    }

    v76 = v104;
    v20 = v112;
    v93 = v107;
  }

  else
  {

    v95 = MEMORY[0x277D84F90];
  }

  v117.Kind = v95;
  sub_219A50998(&v117);
  if (!v20)
  {

    v20 = sub_219A53610(v117.Kind, &v115, 0xD000000000000017, 0x8000000219D46FA0, 1);

    v72 = v109;
    v97 = *(v109 + 16);
    if (v97 < v111)
    {
      goto LABEL_91;
    }

    if ((v111 & 0x8000000000000000) == 0)
    {
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v72;
      if (!v98 || v97 >= *(v72 + 3) >> 1)
      {
        v72 = sub_2191FBE80(v98, v97 + 1, 1, v72);
        v114 = v72;
      }

      v117.Kind = 0xD000000000000017;
      v117.Description = 0x8000000219D46FA0;
      v118 = v108;
      v119 = v93;
      LOWORD(v120) = 2;
      v121 = v20;
      sub_2194B51B0(v111, v111, 1, &v117);

      goto LABEL_76;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    sub_219BF79A4();
    __break(1u);
LABEL_96:

    __break(1u);
  }

  __break(1u);
  return result;
}