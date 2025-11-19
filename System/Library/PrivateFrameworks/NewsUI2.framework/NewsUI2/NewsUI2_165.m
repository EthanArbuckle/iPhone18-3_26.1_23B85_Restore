uint64_t sub_219949BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219949C28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_219942D04(a1, a2);
}

uint64_t sub_219949CD4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_219949D14@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_config;
  sub_21994D634(0, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219949DEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for MySportsTodayFeedGroupKnobs();
  a1[4] = sub_219949BE0(&qword_280EB7E30, type metadata accessor for MySportsTodayFeedGroupKnobs);
  a1[5] = sub_219949BE0(&qword_280EB7E38, type metadata accessor for MySportsTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_21994D504(v3 + v4, boxed_opaque_existential_1, type metadata accessor for MySportsTodayFeedGroupKnobs);
}

uint64_t sub_219949F58@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E4EF4(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21994D634(0, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21994D5D4(inited + 32, sub_2188317B0);
  sub_2186E4EF4(0, &qword_280EE78F0, type metadata accessor for MySportsTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_21994D730();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21994A13C()
{
  sub_219949BE0(&qword_280EAFD08, type metadata accessor for MySportsTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_21994A2C8(uint64_t a1)
{
  v4 = *(sub_219BF1934() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187609C8;

  return sub_219944F28(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_21994A3CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_219946310(a1, v5, v4);
}

uint64_t sub_21994A478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a3;
  v29 = sub_219BF3C84();
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for MySportsTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v30);
  v32 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v39[0] = a4;
  *(&v39[0] + 1) = a5;
  *&v43[0] = a1;
  v15 = sub_219BF7894();
  MEMORY[0x21CECC330](v15);

  v16 = v39[0];
  v31 = type metadata accessor for SportsSection();
  v17 = *(a2 + *(v31 + 20));
  v18 = *(v17 + 16);
  if (v18)
  {
    v28[1] = *(&v16 + 1);
    v28[2] = v16;
    v28[3] = a2;
    v28[4] = a6;
    *&v39[0] = MEMORY[0x277D84F90];
    sub_218C34A88(0, v18, 0);
    v19 = *&v39[0];
    v20 = (v17 + 32);
    v37 = *MEMORY[0x277D34128];
    v35 = *(v11 + 104);
    v36 = v11 + 104;
    v34 = v11 + 32;
    v21 = v29;
    do
    {
      *v13 = *v20;
      v35(v13, v37, v21);
      *&v39[0] = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      swift_unknownObjectRetain();
      if (v23 >= v22 >> 1)
      {
        sub_218C34A88(v22 > 1, v23 + 1, 1);
        v19 = *&v39[0];
      }

      *(v19 + 16) = v23 + 1;
      (*(v11 + 32))(v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v13, v21);
      v20 += 3;
      --v18;
    }

    while (v18);
  }

  sub_218E8BFB8();
  sub_218E8C1FC();
  sub_21994D634(0, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);
  v24 = v32;
  sub_219BEDD14();
  v25 = (v24 + *(v30 + 24));
  v26 = v25[1];
  v39[0] = *v25;
  v39[1] = v26;
  v40 = v25[2];
  v41 = v39[0];
  v42 = v26;
  v43[0] = v40;
  sub_218A18DB4(&v41, v38);
  sub_218A18DB4(&v42, v38);
  sub_218A18DB4(v43, v38);
  sub_21994D5D4(v24, type metadata accessor for MySportsTodayFeedGroupConfigData);
  sub_2198F4470(v39);
  sub_2189AD3D8(&v41);
  sub_2189AD3D8(&v42);
  sub_2189AD3D8(v43);

  sub_218F0BB90(MEMORY[0x277D84F90]);
  return sub_219BF3E74();
}

uint64_t sub_21994A884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21994D49C(0, &qword_27CC213C0, type metadata accessor for SportsHighlights);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v29 = v26 - v10;
  v30 = sub_219BF3E84();
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v26[1] = a1;
    v26[2] = a3;
    v32 = MEMORY[0x277D84F90];
    sub_218C35610(0, v14, 0);
    v15 = v32;
    v16 = 0;
    v17 = *(type metadata accessor for SportsHighlights(0) - 8);
    v18 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v27 = *(v17 + 72);
    v28 = v14;
    v26[3] = v11 + 32;
    v19 = v29;
    do
    {
      v20 = v31;
      v21 = *(v31 + 48);
      sub_21994D504(v18, &v19[v21], type metadata accessor for SportsHighlights);
      *v8 = v16;
      v22 = *(v20 + 48);
      sub_21994D56C(&v19[v21], v8 + v22, type metadata accessor for SportsHighlights);
      sub_21994AB9C(v16, v8 + v22, v13);
      sub_21994D440(v8, &qword_27CC213C0, type metadata accessor for SportsHighlights);
      v32 = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_218C35610(v23 > 1, v24 + 1, 1);
        v15 = v32;
      }

      ++v16;
      *(v15 + 16) = v24 + 1;
      (*(v11 + 32))(v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24, v13, v30);
      v18 += v27;
    }

    while (v28 != v16);
  }

  sub_219BF1744();
  return v15;
}

size_t sub_21994AB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_219BF3C84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_219BF2124();
  MEMORY[0x28223BE20](v9 - 8);
  sub_2191B562C(0);
  if (v10)
  {
    sub_2186E4EF4(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    sub_219BF14C4();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    sub_219BF20F4();

    v29 = v11;
    sub_219BF14A4();
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v35 = 0x6867696C68676968;
  v36 = 0xEB000000002D7374;
  v34 = a1;
  v12 = sub_219BF7894();
  MEMORY[0x21CECC330](v12);

  v13 = v35;
  v14 = v36;
  v15 = *(a2 + *(type metadata accessor for SportsHighlights(0) + 20));
  if (v15 >> 62)
  {
    v26 = v15;
    v27 = sub_219BF7214();
    v15 = v26;
    v16 = v27;
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v16)
  {
LABEL_15:
    v25 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v25);
    sub_218F0BB90(v25);
    return sub_219BF3E74();
  }

  v17 = v15;
  v35 = MEMORY[0x277D84F90];
  result = sub_218C34A88(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v28[0] = v14;
    v28[1] = v13;
    v19 = 0;
    v20 = v35;
    v33 = v17 & 0xC000000000000001;
    v32 = *MEMORY[0x277D34128];
    v31 = v6 + 32;
    do
    {
      if (v33)
      {
        v21 = MEMORY[0x21CECE0F0](v19);
      }

      else
      {
        v21 = swift_unknownObjectRetain();
      }

      *v8 = v21;
      (*(v6 + 104))(v8, v32, v5);
      v35 = v20;
      v22 = v5;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_218C34A88(v23 > 1, v24 + 1, 1);
        v20 = v35;
      }

      ++v19;
      *(v20 + 16) = v24 + 1;
      (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, v22);
      v5 = v22;
    }

    while (v16 != v19);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_21994AFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  sub_2186E4EF4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v7 = sub_219BDBD34();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v8 = sub_219BF0BD4();
  v6[26] = v8;
  v6[27] = *(v8 - 8);
  v6[28] = swift_task_alloc();
  v9 = sub_219BF0644();
  v6[29] = v9;
  v6[30] = *(v9 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21994B1E0, 0, 0);
}

uint64_t sub_21994B1E0()
{
  v1 = v0;
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  sub_219BEF154();
  (*(v5 + 104))(v3, *MEMORY[0x277D32EF8], v4);
  sub_219949BE0(&unk_280E90EE0, MEMORY[0x277D32F00]);
  v6 = sub_219BF53A4();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if ((v6 & 1) == 0)
  {
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[26];
    type metadata accessor for MySportsTodayFeedGroupKnobs();
    sub_219BEF134();
    sub_219BEF524();
    (*(v12 + 8))(v11, v13);
    v14 = v0[11];
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v15 = v0[17];
    v16 = qword_280F616D8;
    v0[33] = qword_280F616D8;
    sub_2186F20D4();
    v0[34] = v17;
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D839F8];
    *(v18 + 16) = xmmword_219C09BA0;
    v20 = MEMORY[0x277D83A80];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = v14;
    sub_219BF6214();
    sub_219BE5314();

    if (v15 >> 62)
    {
      sub_2186D6710(0, &qword_280E8E680);

      v22 = sub_219BF7534();
    }

    else
    {
      v21 = v15 & 0xFFFFFFFFFFFFFF8;

      sub_219BF7924();
      sub_2186D6710(0, &qword_280E8E680);
      if (swift_dynamicCastMetatype() || (v52 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
LABEL_11:
        v22 = v0[17];
      }

      else
      {
        v53 = v21 + 32;
        while (1)
        {
          v0[12] = &unk_282B5B328;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v53 += 8;
          if (!--v52)
          {
            goto LABEL_11;
          }
        }

        v22 = v21 | 1;
      }
    }

    v23 = v0[16];
    v24 = *MEMORY[0x277D30BC8];
    v0[35] = v22;
    v0[36] = v24;
    v25 = *(v23 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
    v26 = v24;
    v27 = v16;

    v29 = sub_2194796A0(v28, v25);
    sub_219BF1724();
    v30 = sub_219BF5AB4();

    if (v30 >> 62)
    {
      v31 = sub_219BF7214();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = v26;
    v58 = v22;
    v56 = v27;
    if (v31)
    {
      v59 = MEMORY[0x277D84F90];
      v32 = sub_21870B65C(0, v31 & ~(v31 >> 63), 0);
      if (v31 < 0)
      {
        __break(1u);
        goto LABEL_38;
      }

      v54 = v1;
      v55 = v29;
      v33 = 0;
      v34 = v59;
      v35 = v30;
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v33, v35);
        }

        else
        {
        }

        v36 = sub_219BF16A4();
        v38 = v37;

        v40 = *(v59 + 16);
        v39 = *(v59 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_21870B65C((v39 > 1), v40 + 1, 1);
        }

        ++v33;
        *(v59 + 16) = v40 + 1;
        v41 = v59 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
        v35 = v30;
      }

      while (v31 != v33);

      v1 = v54;
      v29 = v55;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    v43 = v1[24];
    v42 = v1[25];
    v45 = v1[22];
    v44 = v1[23];
    v46 = v1[21];
    v47 = sub_2194B1FF0(v34, v29);
    v1[37] = v47;

    sub_219BDBD24();
    sub_2186E2348();
    (*(v43 + 16))(v45, v42, v44);
    v48 = *(v43 + 56);
    v48(v45, 0, 1, v44);
    sub_219BDBBF4();
    v48(v46, 0, 1, v44);
    v32 = sub_2193707CC(v45, v46);
    v1[38] = v32;
    if (v32)
    {
      v49 = v32;
      v50 = v1[20];
      (*(v1[24] + 8))(v1[25], v1[23]);
      v1[2] = v57;
      v1[3] = v56;
      v1[4] = MEMORY[0x277D84FA0];
      v1[5] = v47;
      v1[6] = v49;
      v1[7] = v58;
      *(v1 + 64) = 1;
      __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_tagHighlightsService), *(v50 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_tagHighlightsService + 24));
      v1[39] = sub_21990A914(v1 + 2);
      v51 = swift_task_alloc();
      v1[40] = v51;
      *v51 = v1;
      v51[1] = sub_21994B904;
      v32 = v1 + 13;

      return MEMORY[0x2821D23D8](v32);
    }

LABEL_38:
    __break(1u);
    return MEMORY[0x2821D23D8](v32);
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v8 = MEMORY[0x277D84F90];
  sub_219BE5314();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_21994B904()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_21994BB24;
  }

  else
  {

    v2 = sub_21994BA20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21994BA20()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[13];
  sub_219BF6214();
  sub_219BE5314();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_21994BB24()
{
  v1 = v0[41];
  v10 = v0[38];
  v2 = v0[36];
  v3 = v0[33];

  sub_219BF61F4();
  v4 = swift_allocObject();
  v0[9] = 0;
  *(v4 + 16) = xmmword_219C09BA0;
  v0[10] = 0xE000000000000000;
  v0[14] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v5 = v0[9];
  v6 = v0[10];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_219BE5314();

  sub_219BF6214();
  v7 = MEMORY[0x277D84F90];
  sub_219BE5314();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_21994BD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[24] = a7;
  v8[25] = v7;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a3;
  v8[21] = a4;
  v8[18] = a1;
  v8[19] = a2;
  v9 = sub_219BF1934();
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = type metadata accessor for CuratedTagFeedGroupConfigData();
  v8[30] = swift_task_alloc();
  v10 = type metadata accessor for TagFeedCuration(0);
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  v11 = sub_219BF0354();
  v8[34] = v11;
  v8[35] = *(v11 - 8);
  v8[36] = swift_task_alloc();
  v12 = sub_219BEFBD4();
  v8[37] = v12;
  v8[38] = *(v12 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  type metadata accessor for TodayFeedServiceContext();
  v8[41] = swift_task_alloc();
  v13 = sub_219BF0BD4();
  v8[42] = v13;
  v8[43] = *(v13 - 8);
  v8[44] = swift_task_alloc();
  v8[45] = type metadata accessor for SportsTopicClusteringRequest();
  v8[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21994BFF0, 0, 0);
}

uint64_t sub_21994BFF0()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v103 = *(*(v0 + 152) + 16);
  swift_unknownObjectRetain();
  sub_219BEF134();
  sub_219BEF0B4();
  sub_21994D504(*(v0 + 40) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v3, type metadata accessor for TodayFeedServiceContext);

  sub_2190FAAB0(v1, v3);
  v102 = v5;
  sub_21994D5D4(v3, type metadata accessor for TodayFeedServiceContext);
  v6 = *(v2 + 8);
  v6(v1, v4);
  type metadata accessor for MySportsTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v118 = v6;
  v6(v1, v4);
  v101 = *(v0 + 48);
  v7 = qword_280E8D7A0;
  v100 = *MEMORY[0x277D30BC8];
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 352);
  v9 = *(v0 + 336);
  v108 = *(v0 + 320);
  v114 = *(v0 + 312);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  v110 = *(v0 + 184);
  v119 = *(v0 + 152);
  v12 = qword_280F616D8;
  *(v0 + 376) = qword_280F616D8;
  v104 = v12;
  v99 = FCFeedBinForTopicsInForYou();
  sub_219BEF134();
  sub_219BEF524();
  v118(v8, v9);
  v122 = v0;
  v98 = *(v0 + 408);
  v13 = *(v11 + 104);
  v13(v108, *MEMORY[0x277D329A8], v10);
  v13(v114, *MEMORY[0x277D32958], v10);
  v14 = *(v119 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

  v16 = sub_2194796A0(v15, v14);
  if (v110 >> 62)
  {
    v17 = sub_219BF7214();
  }

  else
  {
    v17 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v123 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = sub_21870B65C(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v20 = 0;
    v21 = v123;
    v120 = *(v0 + 184) + 32;
    do
    {
      if ((v110 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x21CECE0F0](v20, *(v0 + 184));
      }

      else
      {
        v22 = *(v120 + 8 * v20);
        swift_unknownObjectRetain();
      }

      v23 = [v22 identifier];
      v24 = sub_219BF5414();
      v26 = v25;

      swift_unknownObjectRelease();
      v28 = *(v123 + 16);
      v27 = *(v123 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_21870B65C((v27 > 1), v28 + 1, 1);
      }

      ++v20;
      *(v123 + 16) = v28 + 1;
      v29 = v123 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
    }

    while (v17 != v20);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v30 = sub_2194B1FF0(v21, v16);

  sub_219BF1724();
  v31 = sub_219BF5AB4();

  if (v31 >> 62)
  {
    v32 = sub_219BF7214();
    if (v32)
    {
      goto LABEL_18;
    }

LABEL_29:

    v34 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_29;
  }

LABEL_18:
  isUniquelyReferenced_nonNull_native = sub_21870B65C(0, v32 & ~(v32 >> 63), 0);
  if (v32 < 0)
  {
LABEL_57:
    __break(1u);
    return MEMORY[0x2821D23D8](isUniquelyReferenced_nonNull_native);
  }

  v33 = 0;
  v34 = v18;
  do
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CECE0F0](v33, v31);
    }

    else
    {
    }

    v35 = sub_219BF16A4();
    v37 = v36;

    v39 = *(v34 + 16);
    v38 = *(v34 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_21870B65C((v38 > 1), v39 + 1, 1);
    }

    ++v33;
    *(v34 + 16) = v39 + 1;
    v40 = v34 + 16 * v39;
    *(v40 + 32) = v35;
    *(v40 + 40) = v37;
  }

  while (v32 != v33);

LABEL_30:
  v42 = *(v122 + 360);
  v41 = *(v122 + 368);
  v43 = *(v122 + 352);
  v44 = *(v122 + 336);
  v115 = v44;
  v111 = *(v122 + 320);
  v91 = *(v122 + 312);
  v109 = *(v122 + 304);
  v105 = *(v122 + 296);
  v106 = *(v122 + 288);
  v92 = *(v122 + 280);
  v94 = *(v122 + 272);
  v97 = *(v122 + 168);
  v107 = *(v122 + 160);
  v96 = sub_2194B1FF0(v34, v30);

  sub_219BEF204();
  sub_219BEF134();
  sub_219BEF524();

  v118(v43, v44);
  v95 = *(v122 + 56);
  sub_219BEF1E4();
  sub_219BEF134();
  sub_219BEF524();

  v118(v43, v44);
  v93 = *(v122 + 64);
  sub_219BEF1F4();
  sub_219BEF134();
  sub_219BEF524();

  v118(v43, v44);
  v90 = *(v122 + 72);
  sub_219BEF1B4();
  sub_219BEF134();
  sub_219BEF524();

  v118(v43, v44);
  v89 = *(v122 + 80);
  sub_219BEF1D4();
  sub_219BEF134();
  sub_219BEF524();

  v118(v43, v44);
  sub_219BEF134();
  sub_219BEF524();
  v118(v43, v44);
  v88 = *(v122 + 409);
  sub_219BEF134();
  sub_219BEF524();
  v118(v43, v44);
  v86 = *(v122 + 88);
  sub_219BEF0B4();

  v45 = NewsCoreUserDefaults();
  v46 = [v45 BOOLForKey_];

  v47 = 135486;
  if (v46)
  {
    v47 = 151870;
  }

  v83 = v47;
  *v41 = v107;
  v48 = *MEMORY[0x277D32C88];
  v49 = sub_219BF03B4();
  (*(*(v49 - 8) + 104))(v41, v48, v49);
  v50 = *(v109 + 16);
  v50(&v41[v42[12]], v111, v105);
  v50(&v41[v42[13]], v91, v105);
  v51 = v122;
  (*(v92 + 16))(&v41[v42[24]], v106, v94);
  v52 = v42[15];
  *&v41[v52] = 1;
  v81 = v52;
  v82 = v42[16];
  *&v41[v82] = 5;
  v84 = v42[17];
  *&v41[v84] = 1;
  v85 = v42[18];
  *&v41[v85] = 0x7FFFFFFFFFFFFFFFLL;
  v87 = v42[19];
  v41[v87] = 0;
  *&v41[v42[28]] = 0x7FFFFFFFFFFFFFFFLL;
  v53 = v42[29];
  v54 = *(v92 + 8);

  v54(v106, v94);
  v55 = *(v109 + 8);
  v55(v91, v105);
  v55(v111, v105);
  v112 = v53;
  *&v41[v53] = MEMORY[0x277D84F90];
  *&v41[v42[5]] = v103;
  *&v41[v42[6]] = v102;
  *&v41[v42[7]] = v101;
  *&v41[v42[8]] = v100;
  *&v41[v42[9]] = v104;
  *&v41[v42[10]] = v99;
  v41[v42[11]] = v98;
  *&v41[v42[14]] = v96;
  *&v41[v42[20]] = v95;
  *&v41[v42[21]] = v93;
  *&v41[v42[22]] = v90;
  *&v41[v42[23]] = v89;
  v41[v42[25]] = v88;
  v56 = &v41[v42[26]];
  *v56 = v86;
  v56[8] = 0;
  *&v41[v42[27]] = v83;
  sub_219BEF134();
  sub_219BEF524();
  v118(v43, v115);
  *&v41[v81] = *(v122 + 104);
  sub_219BEF134();
  sub_219BEF524();
  v118(v43, v115);
  *&v41[v82] = *(v122 + 112);
  sub_219BEF134();
  sub_219BEF524();
  v118(v43, v115);
  *&v41[v84] = *(v122 + 120);
  sub_219BEF134();
  sub_219BEF524();
  v118(v43, v115);
  *&v41[v85] = *(v122 + 128);
  sub_219BEF134();
  sub_219BEF524();
  v118(v43, v115);
  v113 = v41;
  v41[v87] = *(v122 + 410);
  v57 = *(v97 + 16);
  if (v57)
  {
    v58 = *(v122 + 256);
    v121 = *(v122 + 232);
    v59 = *(v122 + 216);
    v60 = *(v122 + 168) + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v116 = *(v58 + 72);
    v117 = (v59 + 16);
    v61 = (v59 + 8);
    v62 = MEMORY[0x277D84F90];
    while (1)
    {
      v63 = v51[33];
      v64 = v51[30];
      v65 = v51[28];
      v66 = v62;
      v67 = v51[26];
      sub_21994D504(v60, v63, type metadata accessor for TagFeedCuration);
      sub_21994D634(0, &qword_280E92490, type metadata accessor for CuratedTagFeedGroupConfigData, sub_2197C9B14, sub_2197C9B48);
      sub_219BEDD14();
      (*v117)(v65, v64 + *(v121 + 20), v67);
      sub_21994D5D4(v64, type metadata accessor for CuratedTagFeedGroupConfigData);
      v68 = sub_219BF1754();
      v69 = v67;
      v62 = v66;
      (*v61)(v65, v69);
      isUniquelyReferenced_nonNull_native = sub_21994D5D4(v63, type metadata accessor for TagFeedCuration);
      v70 = *(v68 + 16);
      v71 = *(v66 + 2);
      v72 = v71 + v70;
      if (__OFADD__(v71, v70))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v72 > *(v66 + 3) >> 1)
      {
        if (v71 <= v72)
        {
          v73 = v71 + v70;
        }

        else
        {
          v73 = v71;
        }

        isUniquelyReferenced_nonNull_native = sub_218840D24(isUniquelyReferenced_nonNull_native, v73, 1, v66);
        v62 = isUniquelyReferenced_nonNull_native;
      }

      v51 = v122;
      if (*(v68 + 16))
      {
        if ((*(v62 + 3) >> 1) - *(v62 + 2) < v70)
        {
          goto LABEL_54;
        }

        swift_arrayInitWithCopy();

        if (v70)
        {
          v74 = *(v62 + 2);
          v75 = __OFADD__(v74, v70);
          v76 = v74 + v70;
          if (v75)
          {
            goto LABEL_55;
          }

          *(v62 + 2) = v76;
        }
      }

      else
      {

        if (v70)
        {
          goto LABEL_53;
        }
      }

      v60 += v116;
      if (!--v57)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_49:
  v77 = v51[46];
  v51[17] = v62;
  sub_2186D0BA8();
  sub_219949BE0(&qword_280E8EDE0, sub_2186D0BA8);
  v78 = sub_219BF56E4();

  *(v113 + v112) = v78;
  sub_219BF6214();
  sub_219BE5314();
  v51[48] = sub_218E54FE0(v77, 0, 0, 0);
  v79 = swift_task_alloc();
  v51[49] = v79;
  *v79 = v51;
  v79[1] = sub_21994D09C;
  isUniquelyReferenced_nonNull_native = (v51 + 2);

  return MEMORY[0x2821D23D8](isUniquelyReferenced_nonNull_native);
}

uint64_t sub_21994D09C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_21994D300;
  }

  else
  {

    v2 = sub_21994D1B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21994D1B8()
{
  v1 = v0[46];
  v5 = v0[3];
  v6 = v0[2];
  v4 = v0[4];
  sub_219BF6214();
  sub_219BE5314();
  sub_21994D5D4(v1, type metadata accessor for SportsTopicClusteringRequest);

  v2 = v0[1];

  return v2(v6, v5, v4);
}

uint64_t sub_21994D300()
{

  v1 = *(v0 + 368);
  sub_219BF6214();
  sub_219BE5314();
  sub_21994D5D4(v1, type metadata accessor for SportsTopicClusteringRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21994D440(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21994D49C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21994D49C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21994D504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21994D56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21994D5D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21994D634(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    a5();
    v8 = sub_219BEDD94();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21994D6C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E4EF4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21994D730()
{
  result = qword_280EE78F8;
  if (!qword_280EE78F8)
  {
    sub_2186E4EF4(255, &qword_280EE78F0, type metadata accessor for MySportsTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE78F8);
  }

  return result;
}

uint64_t sub_21994D7BC(void *a1)
{
  sub_218C19FB4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UserNotification.DeliveryStatus(0);
  *&v11 = MEMORY[0x28223BE20](v10 - 8).n128_u64[0];
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 notification];
  v15 = [v14 request];

  sub_218C1A090();
  (*(*(v16 - 8) + 56))(v13, 2, 2, v16);
  v17 = objc_allocWithZone(type metadata accessor for UserNotification(0));
  v18 = sub_2196575B8(v15, v13);

  sub_218A7A6E8(v18 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v9);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v19 = *v9;

    v20 = v19[2];
    if (v20 == 1)
    {
      v22 = v19[7];
      v21 = v19[8];

      if (qword_280EE5FC8 != -1)
      {
        swift_once();
      }

      v23 = sub_219BE5434();
      __swift_project_value_buffer(v23, qword_280F62670);

      v24 = sub_219BE5414();
      v25 = sub_219BF6214();

      if (!os_log_type_enabled(v24, v25))
      {

        goto LABEL_19;
      }

      v26 = swift_slowAlloc();
      v49 = v4;
      v27 = v26;
      v28 = swift_slowAlloc();
      v50 = v28;
      *v27 = 136315138;

      v29 = sub_2186D1058(v22, v21, &v50);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_2186C1000, v24, v25, "Received puzzle streak notification response for 1 streak: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CECF960](v28, -1, -1);
      v30 = v27;
      v4 = v49;
    }

    else
    {

      if (!v20)
      {
        if (qword_280EE5FC8 != -1)
        {
          swift_once();
        }

        v45 = sub_219BE5434();
        __swift_project_value_buffer(v45, qword_280F62670);
        v46 = sub_219BE5414();
        v47 = sub_219BF61F4();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_2186C1000, v46, v47, "Received puzzle streak notification response with no streaks", v48, 2u);
          MEMORY[0x21CECF960](v48, -1, -1);
        }

        sub_21994DF88();
        swift_allocError();
        sub_2186DE0B4(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
        swift_allocObject();
        v43 = sub_219BE2FF4();
        goto LABEL_20;
      }

      if (qword_280EE5FC8 != -1)
      {
        swift_once();
      }

      v38 = sub_219BE5434();
      __swift_project_value_buffer(v38, qword_280F62670);
      v24 = sub_219BE5414();
      v39 = sub_219BF6214();
      if (!os_log_type_enabled(v24, v39))
      {
LABEL_19:

        v41 = swift_allocObject();
        v42 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
        *(v41 + 24) = 0;
        *(v41 + 32) = 0;
        *(v41 + 16) = v42;
        *(v41 + 40) = 1;
        *v6 = v41 | 0xE000000000000002;
        (*(v4 + 104))(v6, *MEMORY[0x277D6E710], v3);
        sub_2186DE0B4(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
        swift_allocObject();
        v43 = sub_219BE3014();
LABEL_20:
        v37 = v43;

        return v37;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2186C1000, v24, v39, "Received puzzle streak notification response for multiple streaks", v40, 2u);
      v30 = v40;
    }

    MEMORY[0x21CECF960](v30, -1, -1);
    goto LABEL_19;
  }

  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v31 = sub_219BE5434();
  __swift_project_value_buffer(v31, qword_280F62670);
  v32 = sub_219BE5414();
  v33 = sub_219BF61F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2186C1000, v32, v33, "PuzzleStreakNotificationResponseHandler cannot handle non-streak notification responses", v34, 2u);
    MEMORY[0x21CECF960](v34, -1, -1);
  }

  v35 = sub_219BE8DC4();
  sub_21953BAF0();
  swift_allocError();
  (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D6E2B0], v35);
  sub_2186DE0B4(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v37 = sub_219BE2FF4();

  sub_2187ADBD4(v9);
  return v37;
}

unint64_t sub_21994DF88()
{
  result = qword_27CC213C8;
  if (!qword_27CC213C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC213C8);
  }

  return result;
}

unint64_t sub_21994DFF0()
{
  result = qword_27CC213D0;
  if (!qword_27CC213D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC213D0);
  }

  return result;
}

uint64_t type metadata accessor for PuzzleSettingsItem()
{
  result = qword_27CC213D8;
  if (!qword_27CC213D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21994E0B8()
{
  sub_2186E3374();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PuzzleSetting();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21994E14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  sub_21994EF88();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleSetting();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PuzzleSettingsItem();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(a1 + 16) || (v14 = sub_21870F700(25705, 0xE200000000000000), (v15 & 1) == 0) || (sub_2186D1230(*(a1 + 56) + 32 * v14, v84), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v25 = sub_219BE5434();
    __swift_project_value_buffer(v25, qword_280F625E0);

    v26 = sub_219BE5414();
    v27 = sub_219BF61F4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v84[0] = v29;
      *v28 = 136315138;
      v30 = sub_219BF5224();
      v32 = v31;

      v33 = sub_2186D1058(v30, v32, v84);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2186C1000, v26, v27, "Failed parsing PuzzleSettingsGroup. Missing id entry: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x21CECF960](v29, -1, -1);
      MEMORY[0x21CECF960](v28, -1, -1);
LABEL_21:

      return (*(v11 + 56))(v82, 1, 1, v10);
    }

LABEL_20:

    goto LABEL_21;
  }

  v16 = *(&v83[0] + 1);
  *v13 = *&v83[0];
  v13[1] = v16;
  v81 = v16;
  if (!*(a1 + 16) || (v17 = sub_21870F700(0x656C746974, 0xE500000000000000), (v18 & 1) == 0) || (sub_2186D1230(*(a1 + 56) + 32 * v17, v84), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v34 = sub_219BE5434();
    __swift_project_value_buffer(v34, qword_280F625E0);

    v26 = sub_219BE5414();
    v35 = sub_219BF61F4();

    if (os_log_type_enabled(v26, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v84[0] = v37;
      *v36 = 136315138;
      v38 = sub_219BF5224();
      v40 = v39;

      v41 = sub_2186D1058(v38, v40, v84);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_2186C1000, v26, v35, "Failed parsing PuzzleSettingsItem. Missing title entry: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x21CECF960](v37, -1, -1);
      MEMORY[0x21CECF960](v36, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  v19 = *(&v83[0] + 1);
  v13[2] = *&v83[0];
  v13[3] = v19;
  v79 = v19;
  v20 = *(a1 + 16);
  if (!v20)
  {
LABEL_24:
    v24 = 0;
    goto LABEL_25;
  }

  v21 = sub_21870F700(0x656C746974627573, 0xE800000000000000);
  if ((v22 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_24;
  }

  sub_2186D1230(*(a1 + 56) + 32 * v21, v84);
  v23 = swift_dynamicCast();
  v24 = *(&v83[0] + 1);
  v20 = *&v83[0];
  if (!v23)
  {
    v20 = 0;
    v24 = 0;
  }

LABEL_25:
  v13[4] = v20;
  v13[5] = v24;
  v80 = v24;
  if (!*(a1 + 16) || (v43 = sub_21870F700(1701869940, 0xE400000000000000), (v44 & 1) == 0) || (sub_2186D1230(*(a1 + 56) + 32 * v43, v84), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v57 = sub_219BE5434();
    __swift_project_value_buffer(v57, qword_280F625E0);

    v58 = sub_219BE5414();
    v59 = sub_219BF61F4();

    if (!os_log_type_enabled(v58, v59))
    {

      goto LABEL_41;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v84[0] = v61;
    *v60 = 136315138;
    v62 = sub_219BF5224();
    v64 = v63;

    v65 = sub_2186D1058(v62, v64, v84);

    *(v60 + 4) = v65;
    v66 = "Failed parsing PuzzleSettingsItem. Missing type entry: %s";
    v67 = v59;
    v68 = v58;
LABEL_39:
    _os_log_impl(&dword_2186C1000, v68, v67, v66, v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x21CECF960](v61, -1, -1);
    MEMORY[0x21CECF960](v60, -1, -1);

LABEL_41:

LABEL_42:

    return (*(v11 + 56))(v82, 1, 1, v10);
  }

  if (!*(a1 + 16) || (v78 = v83[0], v45 = sub_21870F700(0x65756C6176, 0xE500000000000000), v46 = *(&v78 + 1), (v47 & 1) == 0))
  {

    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v69 = sub_219BE5434();
    __swift_project_value_buffer(v69, qword_280F625E0);

    v70 = sub_219BE5414();
    v71 = sub_219BF61F4();

    v72 = v70;
    if (!os_log_type_enabled(v70, v71))
    {

      goto LABEL_42;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v84[0] = v61;
    *v60 = 136315138;
    v73 = sub_219BF5224();
    v75 = v74;

    v76 = sub_2186D1058(v73, v75, v84);

    *(v60 + 4) = v76;
    v66 = "Failed parsing PuzzleSettingsItem. Missing value entry: %s";
    v67 = v71;
    v58 = v72;
    v68 = v72;
    goto LABEL_39;
  }

  sub_2186D1230(*(a1 + 56) + 32 * v45, v84);
  sub_2186D1230(v84, v83);
  sub_2191196B8(v78, v46, v83, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21994F044(v5, sub_21994EF88);
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v48 = sub_219BE5434();
    __swift_project_value_buffer(v48, qword_280F625E0);

    v49 = sub_219BE5414();
    v50 = sub_219BF61F4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v83[0] = v52;
      *v51 = 136315138;
      v53 = sub_219BF5224();
      v55 = v54;

      v56 = sub_2186D1058(v53, v55, v83);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_2186C1000, v49, v50, "Failed parsing PuzzleSettingsItem. Invalid value/type entry: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x21CECF960](v52, -1, -1);
      MEMORY[0x21CECF960](v51, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v84);

    goto LABEL_42;
  }

  __swift_destroy_boxed_opaque_existential_1(v84);

  sub_21911A720(v5, v9);
  sub_21911A720(v9, v13 + *(v10 + 28));
  v77 = v82;
  sub_21994EFE0(v13, v82);
  (*(v11 + 56))(v77, 0, 1, v10);
  return sub_21994F044(v13, type metadata accessor for PuzzleSettingsItem);
}

uint64_t sub_21994EC64()
{
  sub_219BF7AA4();
  sub_219BF5524();
  sub_219BF5524();
  if (*(v0 + 40))
  {
    sub_219BF7AC4();
    sub_219BF5524();
  }

  else
  {
    sub_219BF7AC4();
  }

  sub_219119E10();
  return sub_219BF7AE4();
}

uint64_t sub_21994ED14()
{
  sub_219BF5524();
  sub_219BF5524();
  if (*(v0 + 40))
  {
    sub_219BF7AC4();
    sub_219BF5524();
  }

  else
  {
    sub_219BF7AC4();
  }

  return sub_219119E10();
}

uint64_t sub_21994EDA8()
{
  sub_219BF7AA4();
  sub_219BF5524();
  sub_219BF5524();
  if (*(v0 + 40))
  {
    sub_219BF7AC4();
    sub_219BF5524();
  }

  else
  {
    sub_219BF7AC4();
  }

  sub_219119E10();
  return sub_219BF7AE4();
}

unint64_t sub_21994EE5C()
{
  result = qword_27CC213E8;
  if (!qword_27CC213E8)
  {
    type metadata accessor for PuzzleSettingsItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC213E8);
  }

  return result;
}

uint64_t sub_21994EEB4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_219BF78F4() & 1) != 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_16:
  v8 = *(type metadata accessor for PuzzleSettingsItem() + 28);

  return sub_21911A128(a1 + v8, a2 + v8);
}

void sub_21994EF88()
{
  if (!qword_27CC10E70)
  {
    type metadata accessor for PuzzleSetting();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10E70);
    }
  }
}

uint64_t sub_21994EFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleSettingsItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21994F044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21994F0A4(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_218C82C04(v6);
  }

  sub_219955390(a1, a2);
  return sub_219BF73E4();
}

uint64_t sub_21994F13C(void *a1, void *a2, uint64_t a3)
{
  v39 = a3;
  sub_2186DCF58();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = sub_219BDBD34();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v36 = a1;
  v21 = [a1 publishDate];
  v38 = v20;
  if (v21)
  {
    v22 = v21;
    sub_219BDBCA4();

    v35 = v8;
    v23 = v15;
    v24 = a2;
    v25 = *(v12 + 32);
    v25(v10, v18, v11);
    v37 = *(v12 + 56);
    v37(v10, 0, 1, v11);
    v25(v20, v10, v11);
    a2 = v24;
    v15 = v23;
    v8 = v35;
  }

  else
  {
    v37 = *(v12 + 56);
    v37(v10, 1, 1, v11);
    sub_219BDBBD4();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_219956184(v10, sub_2186DCF58);
    }
  }

  v26 = [a2 publishDate];
  if (v26)
  {
    v27 = v26;
    sub_219BDBCA4();

    v28 = *(v12 + 32);
    v28(v8, v18, v11);
    v37(v8, 0, 1, v11);
    v28(v15, v8, v11);
  }

  else
  {
    v37(v8, 1, 1, v11);
    sub_219BDBBD4();
    if ((*(v12 + 48))(v8, 1, v11) != 1)
    {
      sub_219956184(v8, sub_2186DCF58);
    }
  }

  v29 = v38;
  if (sub_219BDBCF4())
  {
    v30 = [v36 difficulty];
    v31 = v30 < [a2 difficulty];
  }

  else
  {
    v31 = sub_219BDBC14();
  }

  v32 = *(v12 + 8);
  v32(v15, v11);
  v32(v29, v11);
  return v31 & 1;
}

uint64_t sub_21994F554()
{
  v43 = MEMORY[0x277D84F98];
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_filterOptionsManager), *(v0 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_filterOptionsManager + 24));
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = v2 + 56;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(v2 + 48) + ((v8 << 10) | (16 * v10));
    v12 = *v11;
    LODWORD(v13) = *(v11 + 8);
    if ((v13 - 1) >= 3)
    {
      if (!*(v11 + 8))
      {
        v14 = *v11;
        goto LABEL_16;
      }

      if (v12 >= 2)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v14 = 1;
LABEL_16:
      v15 = v43;
      v16 = v14 & 1;
      if (v43[2])
      {
        sub_219320C08(v14 & 1);
        if (v17)
        {
          goto LABEL_29;
        }
      }

      v40 = v13;
      v13 = v12;
      v18 = v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v15;
      v20 = sub_219320C08(v16);
      v22 = v15[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_37;
      }

      v26 = v21;
      if (v15[3] < v25)
      {
        sub_219488998(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_219320C08(v16);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_39;
        }

LABEL_23:
        v28 = v41;
        if ((v26 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v29 = v20;
      sub_219497348();
      v20 = v29;
      v28 = v41;
      if ((v26 & 1) == 0)
      {
LABEL_26:
        v28[(v20 >> 6) + 8] |= 1 << v20;
        *(v28[6] + v20) = v16;
        *(v28[7] + 8 * v20) = MEMORY[0x277D84FA0];
        v30 = v28[2];
        v24 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v24)
        {
          goto LABEL_38;
        }

        v28[2] = v31;
        goto LABEL_28;
      }

LABEL_24:
      *(v28[7] + 8 * v20) = MEMORY[0x277D84FA0];

LABEL_28:
      v43 = v28;
      v2 = v18;
      v12 = v13;
      LOBYTE(v13) = v40;
LABEL_29:
      v32 = sub_218D26B50(&v41, v16);
      if (*v33)
      {
        sub_219498C40(v42, v12, v13);
      }

      (v32)(&v41, 0);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v34 = v43;
      v35 = v43[2];
      if (!v35)
      {
        goto LABEL_34;
      }

      v36 = sub_21947D6A0(v43[2], 0);
      v37 = sub_2194B7E44(&v41, v36 + 4, v35, v34);

      sub_21892DE98();
      if (v37 != v35)
      {
        __break(1u);
LABEL_34:
        v36 = MEMORY[0x277D84F90];
      }

      *(v39 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_groupedFilterOptions) = v36;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_21994F8C4()
{
  v1 = OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_config;
  sub_2197B856C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219956184(v0 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_knobs, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_formatService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_puzzleArchiveService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_filterOptionsManager);

  v3 = OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_timeZone;
  v4 = sub_219BDC084();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitter()
{
  result = qword_27CC21430;
  if (!qword_27CC21430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21994FA6C()
{
  sub_2197B856C();
  if (v0 <= 0x3F)
  {
    sub_2189AD5C8();
    if (v1 <= 0x3F)
    {
      sub_219BDC084();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_21994FB94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21994FBDC()
{
  v0 = type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor();
  v7[3] = v0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  v2 = v0[6];
  v3 = type metadata accessor for PuzzleMonthArchive(0);
  (*(*(v3 - 8) + 56))(boxed_opaque_existential_1 + v2, 1, 1, v3);
  *boxed_opaque_existential_1 = 1;
  boxed_opaque_existential_1[1] = MEMORY[0x277D84F90];
  v4 = (boxed_opaque_existential_1 + v0[7]);
  *v4 = 0;
  v4[1] = 0;
  v5 = boxed_opaque_existential_1 + v0[8];
  *v5 = 0;
  v5[8] = 1;
  *(boxed_opaque_existential_1 + v0[9]) = 0;
  sub_219956064(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21994FCF0()
{
  type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor();
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F84();

  v1 = sub_219BE2E54();
  v2 = sub_219BE3084();

  return v2;
}

uint64_t sub_21994FDF4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_21994FE34@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_2197B856C();
  v5 = v4;
  v6 = swift_allocBox();
  result = (*(*(v5 - 8) + 16))(v7, v3 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_config, v5);
  *a1 = v6 | 0x9000000000000004;
  return result;
}

uint64_t sub_21994FEC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs();
  a1[4] = sub_21994FB94(qword_280E9F860, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  a1[5] = sub_21994FB94(&qword_27CC1FA30, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2199562C8(v3 + v4, boxed_opaque_existential_1, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
}

uint64_t sub_21994FFB0()
{
  v1 = type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199562C8(v0 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_knobs, v3, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  v14 = 39;
  sub_2189AD5C8();
  v5 = v4;
  v6 = sub_219BEE964();
  (*(*(v5 - 8) + 8))(v3, v5);
  sub_219956064(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_219956398(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v11 + v10) = sub_219BEFB94();
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D32308], v8);
  v13 = v6;
  sub_2191EDA0C(v11);
  return v13;
}

uint64_t sub_21995024C@<X0>(uint64_t *a1@<X8>)
{
  sub_219956064(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2197B856C();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219956184(inited + 32, sub_2188317B0);
  sub_219956434(0);
  a1[3] = v5;
  a1[4] = sub_21994FB94(&qword_27CC214B8, sub_219956434);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2199503EC()
{
  sub_21994FB94(&qword_27CC21458, type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2199505C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  type metadata accessor for TagFeedGroup();
  v4[7] = swift_task_alloc();
  v7 = sub_219BF2034();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  v8 = type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor();
  v4[11] = v8;
  v4[12] = *(v8 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_219956030(0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_2186DCF58();
  v4[19] = swift_task_alloc();
  v9 = sub_219BDBD34();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = type metadata accessor for PuzzleMonthArchive(0);
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();
  sub_2199560C8(0);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_2199560FC(0);
  v11 = swift_task_alloc();
  v4[28] = v11;
  v12 = swift_task_alloc();
  v4[29] = v12;
  *v12 = v4;
  v12[1] = sub_219950904;

  return sub_219952484(v11, a2, a3, v3);
}

uint64_t sub_219950904()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_219951FC4;
  }

  else
  {
    v2 = sub_219950A18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219950A18()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  sub_219952E08(*(v0 + 224), *(v0 + 32), v1);
  sub_2199562C8(v1, v2, sub_2199560C8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 208);
  if (v5 == 1)
  {
    sub_219956184(v6, sub_2199560C8);
    if (qword_280EE5F80 != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_3;
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 160);
  v18 = *(v0 + 168);
  v19 = *(v0 + 152);
  sub_219956330(v6, v16, type metadata accessor for PuzzleMonthArchive);
  sub_2199562C8(v16, v19, sub_2186DCF58);
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    sub_219956184(*(v0 + 152), sub_2186DCF58);
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v20 = sub_219BE5434();
    __swift_project_value_buffer(v20, qword_280F625E0);
    v21 = sub_219BE5414();
    v22 = sub_219BF61F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2186C1000, v21, v22, "No valid date available for current puzzle month archive. Unable to create puzzle full archive group!", v23, 2u);
      MEMORY[0x21CECF960](v23, -1, -1);
    }

    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    v26 = *(v0 + 200);

    sub_219956130();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
    sub_219956184(v25, sub_2199560C8);
    sub_219956184(v24, sub_2199560FC);
    v14 = type metadata accessor for PuzzleMonthArchive;
    v15 = v26;
    goto LABEL_12;
  }

  v30 = *(v0 + 200);
  v31 = *(v0 + 184);
  (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
  v32 = *(v30 + *(v31 + 20));
  v33 = v32 >> 62;
  if (v32 >> 62)
  {
    v34 = sub_219BF7214();
    if (v34)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
LABEL_18:
      v35 = 0;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x21CECE0F0](v35, v32);
          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            v33 = v32 >> 62;
            break;
          }
        }

        else
        {
          if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_31:
            swift_once();
LABEL_3:
            v7 = sub_219BE5434();
            __swift_project_value_buffer(v7, qword_280F625E0);
            v8 = sub_219BE5414();
            v9 = sub_219BF61F4();
            if (os_log_type_enabled(v8, v9))
            {
              v10 = swift_slowAlloc();
              *v10 = 0;
              _os_log_impl(&dword_2186C1000, v8, v9, "No puzzle month archives available in fetch result or cursor. Unable to create puzzle full archive group!", v10, 2u);
              MEMORY[0x21CECF960](v10, -1, -1);
            }

            v12 = *(v0 + 216);
            v11 = *(v0 + 224);

            sub_219956130();
            swift_allocError();
            *v13 = 1;
            swift_willThrow();
            sub_219956184(v12, sub_2199560C8);
            v14 = sub_2199560FC;
            v15 = v11;
LABEL_12:
            sub_219956184(v15, v14);

            v28 = *(v0 + 8);
LABEL_13:

            return v28();
          }

          v36 = *(v32 + 8 * v35 + 32);
          swift_unknownObjectRetain();
          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_28;
          }
        }

        if (sub_219953130(v36))
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v35;
        if (v37 == v34)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v38 = *(v0 + 240);
  v39 = *(v0 + 48) + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_timeZone;
  v40 = swift_task_alloc();
  *(v40 + 16) = v39;

  v63 = sub_219759108(v41);
  sub_21994F0A4(sub_219956208, v40);
  if (v38)
  {
  }

  if (v63 < 0 || (v63 & 0x4000000000000000) != 0)
  {
    sub_21873FA4C();

    v42 = sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_21873FA4C();
    v42 = v63;
  }

  if (v33)
  {
    v43 = sub_219BF7214();
  }

  else
  {
    v43 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21925DC38(*(v0 + 224), v43, *(v0 + 144));
  if (v42 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_45;
    }
  }

  else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:
    v44 = *(v0 + 80);
    v45 = *(v0 + 40);
    sub_219953578(v42, *(v0 + 176), v44);

    *(v0 + 264) = sub_219953F48(v45, v44);
    v46 = swift_task_alloc();
    *(v0 + 272) = v46;
    *v46 = v0;
    v46[1] = sub_2199517E8;

    return MEMORY[0x2821D23D8](v0 + 16);
  }

  v47 = *(v0 + 136);
  v48 = *(v0 + 144);
  v49 = *(v0 + 88);
  v50 = *(v0 + 96);

  sub_2199562C8(v48, v47, sub_219956030);
  if ((*(v50 + 48))(v47, 1, v49) == 1)
  {
    v51 = *(v0 + 216);
    v52 = *(v0 + 224);
    v62 = *(v0 + 200);
    v54 = *(v0 + 168);
    v53 = *(v0 + 176);
    v55 = *(v0 + 160);
    v56 = *(v0 + 144);
    v57 = *(v0 + 24);
    sub_219956184(*(v0 + 136), sub_219956030);
    sub_219956184(v56, sub_219956030);
    (*(v54 + 8))(v53, v55);
    sub_219956184(v51, sub_2199560C8);
    sub_219956184(v52, sub_2199560FC);
    sub_219956184(v62, type metadata accessor for PuzzleMonthArchive);
    *v57 = 0xD000000000000035;
    v57[1] = 0x8000000219D3F9F0;
    sub_218A59C84();
    swift_storeEnumTagMultiPayload();

    v28 = *(v0 + 8);
    goto LABEL_13;
  }

  sub_219956330(*(v0 + 136), *(v0 + 120), type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);
  v58 = swift_task_alloc();
  *(v0 + 248) = v58;
  *v58 = v0;
  v58[1] = sub_219951508;
  v59 = *(v0 + 120);
  v60 = *(v0 + 40);
  v61 = *(v0 + 24);

  return sub_2199505C0(v61, v59, v60);
}

uint64_t sub_219951508()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_2199520E0;
  }

  else
  {
    v2 = sub_21995161C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21995161C()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[18];
  sub_219956184(v0[15], type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);
  sub_219956184(v7, sub_219956030);
  (*(v5 + 8))(v4, v6);
  sub_219956184(v1, sub_2199560C8);
  sub_219956184(v2, sub_2199560FC);
  sub_219956184(v3, type metadata accessor for PuzzleMonthArchive);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2199517E8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_2199522B4;
  }

  else
  {
    v2 = sub_21995191C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21995191C()
{
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  sub_219954548(v0[5], v0[7]);
  sub_2199562C8(v1, v2, sub_219956030);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = v0[27];
    v6 = v0[21];
    v7 = v0[22];
    v8 = v0[20];
    v9 = v0[18];
    v52 = v0[28];
    v55 = v0[16];
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[8];
    v58 = v0[25];
    v61 = v0[7];
    v13 = v0[3];

    (*(v11 + 8))(v10, v12);
    sub_219956184(v9, sub_219956030);
    (*(v6 + 8))(v7, v8);
    sub_219956184(v5, sub_2199560C8);
    sub_219956184(v52, sub_2199560FC);
    sub_219956184(v58, type metadata accessor for PuzzleMonthArchive);
    sub_219956184(v55, sub_219956030);
    v14 = v61;
LABEL_3:
    sub_219956330(v14, v13, type metadata accessor for TagFeedGroup);
    sub_218A59C84();
    goto LABEL_11;
  }

  v15 = v0[14];
  v16 = v0[11];
  sub_219956330(v0[16], v15, type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);
  v17 = v15 + *(v16 + 32);
  v18 = v0[14];
  v19 = v0[11];
  if ((*(v17 + 8) & 1) == 0)
  {
    v20 = *v17;
    if (*v17 < *(v18 + *(v19 + 36)))
    {
      if (qword_280EE5F80 != -1)
      {
        swift_once();
        v18 = v0[14];
      }

      v21 = v0[13];
      v22 = sub_219BE5434();
      __swift_project_value_buffer(v22, qword_280F625E0);
      sub_2199562C8(v18, v21, type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);
      v23 = sub_219BE5414();
      v24 = sub_219BF61F4();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v0[13];
      if (v25)
      {
        v27 = swift_slowAlloc();
        *v27 = 134218240;
        v28 = *(v26 + *(v19 + 36));
        sub_219956184(v26, type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);
        *(v27 + 4) = v28;
        *(v27 + 12) = 2048;
        *(v27 + 14) = v20;
        _os_log_impl(&dword_2186C1000, v23, v24, "Total number of processed archive puzzles is %ld when only %ld were expected!  Ending group emission early.", v27, 0x16u);
        MEMORY[0x21CECF960](v27, -1, -1);
      }

      else
      {
        sub_219956184(v26, type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);
      }

      v51 = v0[27];
      v54 = v0[28];
      v40 = v0[21];
      v41 = v0[22];
      v42 = v0[20];
      v43 = v0[18];
      v44 = v0[14];
      v45 = v0[9];
      v46 = v0[10];
      v47 = v0[8];
      v60 = v0[7];
      v63 = v0[25];
      v57 = v0[3];

      sub_219956184(v44, type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);
      (*(v45 + 8))(v46, v47);
      sub_219956184(v43, sub_219956030);
      (*(v40 + 8))(v41, v42);
      sub_219956184(v51, sub_2199560C8);
      sub_219956184(v54, sub_2199560FC);
      sub_219956184(v63, type metadata accessor for PuzzleMonthArchive);
      v13 = v57;
      v14 = v60;
      goto LABEL_3;
    }
  }

  v56 = v0[27];
  v59 = v0[28];
  v62 = v0[25];
  v29 = v0[21];
  v50 = v0[20];
  v53 = v0[22];
  v48 = v0[10];
  v49 = v0[18];
  v30 = v0[11];
  v32 = v0[8];
  v31 = v0[9];
  v33 = v0[7];
  v34 = v0[3];
  sub_218ACC140();
  v36 = (v34 + *(v35 + 48));
  sub_2199562C8(v33, v34, type metadata accessor for TagFeedGroup);
  v36[3] = v30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  sub_219956330(v18, boxed_opaque_existential_1, type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);

  sub_219956184(v33, type metadata accessor for TagFeedGroup);
  (*(v31 + 8))(v48, v32);
  sub_219956184(v49, sub_219956030);
  (*(v29 + 8))(v53, v50);
  sub_219956184(v56, sub_2199560C8);
  sub_219956184(v59, sub_2199560FC);
  sub_219956184(v62, type metadata accessor for PuzzleMonthArchive);
  sub_218A59C84();
LABEL_11:
  swift_storeEnumTagMultiPayload();

  v38 = v0[1];

  return v38();
}

uint64_t sub_219951FC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2199520E0()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[18];
  sub_219956184(v0[15], type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);
  sub_219956184(v7, sub_219956030);
  (*(v5 + 8))(v4, v6);
  sub_219956184(v1, sub_2199560C8);
  sub_219956184(v2, sub_2199560FC);
  sub_219956184(v3, type metadata accessor for PuzzleMonthArchive);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2199522B4()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[18];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_219956184(v7, sub_219956030);
  (*(v5 + 8))(v4, v6);
  sub_219956184(v1, sub_2199560C8);
  sub_219956184(v2, sub_2199560FC);
  sub_219956184(v3, type metadata accessor for PuzzleMonthArchive);

  v8 = v0[1];

  return v8();
}

uint64_t sub_219952484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  type metadata accessor for PuzzleArchiveServiceConfig(0);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219952518, 0, 0);
}

uint64_t sub_219952518()
{
  v28 = v0;
  if (*(*(*(v0 + 48) + 8) + 16))
  {
    v1 = *(v0 + 40);
    v2 = type metadata accessor for PuzzleArchiveFetchResult(0);
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

    v3 = *(v0 + 8);
LABEL_14:

    return v3();
  }

  sub_219BEF0B4();
  v4 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  *(v0 + 80) = [v4 backingTag];

  *(v0 + 24) = &unk_282B7BEA8;
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (!v5)
  {
    swift_unknownObjectRelease();
    sub_219BEF0B4();
    v6 = *(*(v0 + 32) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v7 = [v6 backingTag];

    v8 = [v7 identifier];
    swift_unknownObjectRelease();
    v9 = sub_219BF5414();
    v11 = v10;

    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_280F625E0);

    v13 = sub_219BE5414();
    v14 = sub_219BF61F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v17 = sub_2186D1058(v9, v11, &v27);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_2186C1000, v13, v14, "PuzzleFullArchiveTagFeedGroupEmitter tag %s is not a valid puzzle type!", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CECF960](v16, -1, -1);
      MEMORY[0x21CECF960](v15, -1, -1);
    }

    else
    {
    }

    sub_219956130();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();

    v3 = *(v0 + 8);
    goto LABEL_14;
  }

  sub_219952BEC(v5, *(v0 + 48), *(v0 + 72));
  v18 = (*(v0 + 64) + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_puzzleArchiveService);
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v26 = (*(v20 + 8) + **(v20 + 8));
  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_219952984;
  v22 = *(v0 + 72);
  v23 = *(v0 + 40);

  return v26(v23, v22, v19, v20);
}

uint64_t sub_219952984()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_219952B64;
  }

  else
  {
    v2 = sub_219952A98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219952A98()
{
  v1 = v0[9];
  v2 = v0[5];
  swift_unknownObjectRelease();
  sub_219956184(v1, type metadata accessor for PuzzleArchiveServiceConfig);
  v3 = type metadata accessor for PuzzleArchiveFetchResult(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219952B64()
{
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  sub_219956184(v1, type metadata accessor for PuzzleArchiveServiceConfig);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_219952BEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v7 = *__swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_filterOptionsManager), *(v3 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_filterOptionsManager + 24));
  swift_beginAccess();
  v8 = *(v7 + 24);
  if (*(v8 + 16))
  {
    sub_219BF7AA4();
    MEMORY[0x21CECE850](1);
    v9 = sub_219BF7AE4();
    v10 = v8 + 56;
    v11 = -1 << *(v8 + 32);
    v12 = v9 & ~v11;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      v15 = 0x545345444C4FLL;
      if (*a2)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    v13 = ~v11;
    v14 = *(v8 + 48);
    v15 = 0x54534557454ELL;
    while (1)
    {
      v16 = v14 + 16 * v12;
      if (*(v16 + 8) >= 4u && *v16 == 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v15 = 0x545345444C4FLL;
        if (*a2)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v15 = 0x545345444C4FLL;
  }

  if (*a2)
  {
LABEL_13:
    v18 = 0;
    v19 = 0;
LABEL_17:
    v21 = *(type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor() + 24);
    v22 = type metadata accessor for PuzzleArchiveServiceConfig(0);
    sub_2199562C8(&a2[v21], a3 + *(v22 + 32), sub_2199560C8);
    *a3 = v18;
    a3[1] = v19;
    a3[2] = a1;
    a3[3] = v15;
    a3[5] = 0;
    a3[6] = 0;
    a3[4] = 0xE600000000000000;
    return swift_unknownObjectRetain();
  }

LABEL_15:
  v20 = &a2[*(type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor() + 28)];
  v19 = v20[1];
  if (v19)
  {
    v18 = *v20;

    goto LABEL_17;
  }

  sub_219956130();
  swift_allocError();
  *v24 = 3;
  return swift_willThrow();
}

uint64_t sub_219952E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2199560FC(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PuzzleArchiveFetchResult(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199562C8(a1, v8, sub_2199560FC);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_219956184(v8, sub_2199560FC);
    v13 = *(a2 + 8);
    v14 = *(v13 + 16);
    v15 = type metadata accessor for PuzzleMonthArchive(0);
    v16 = *(v15 - 8);
    v17 = v16;
    if (v14)
    {
      sub_2199562C8(v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), a3, type metadata accessor for PuzzleMonthArchive);
      return (*(v17 + 56))(a3, 0, 1, v15);
    }

    else
    {
      return (*(v16 + 56))(a3, 1, 1, v15);
    }
  }

  else
  {
    sub_219956330(v8, v12, type metadata accessor for PuzzleArchiveFetchResult);
    v19 = *v12;
    if (*(*v12 + 16))
    {
      v20 = type metadata accessor for PuzzleMonthArchive(0);
      v21 = *(v20 - 8);
      sub_2199562C8(v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), a3, type metadata accessor for PuzzleMonthArchive);
      sub_219956184(v12, type metadata accessor for PuzzleArchiveFetchResult);
      return (*(v21 + 56))(a3, 0, 1, v20);
    }

    else
    {
      sub_219956184(v12, type metadata accessor for PuzzleArchiveFetchResult);
      v22 = type metadata accessor for PuzzleMonthArchive(0);
      return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
    }
  }
}

uint64_t sub_219953130(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_groupedFilterOptions);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 1;
  }

  v39 = (v1 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_filterOptionsManager);
  v4 = v2 + 32;

  v6 = 0;
  v37 = result;
  v34 = v4;
  v35 = v3;
  do
  {
    if (v6 >= *(result + 16))
    {
      goto LABEL_60;
    }

    v7 = *(v4 + 8 * v6);
    v36 = v6 + 1;
    v8 = v7 + 56;
    v9 = 1 << *(v7 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v7 + 56);
    v12 = (v9 + 63) >> 6;
    v40 = v7;

    v13 = 0;
    if (!v11)
    {
LABEL_10:
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v12)
        {

          v33 = 0;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v14);
        ++v13;
        if (v11)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
      return result;
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
LABEL_15:
        v15 = *(v40 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11))));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *__swift_project_boxed_opaque_existential_1(v39, v39[3]);
        if (v17 <= 1)
        {
          v19 = 0x6C75636966666964;
          v20 = 0xEE00797361457974;
          if (!v17)
          {
            if (v16)
            {
              v21 = 0x6C75636966666964;
            }

            else
            {
              v21 = 0x7461745379616C70;
            }

            if (v16)
            {
              v22 = 0xEA00000000007974;
            }

            else
            {
              v22 = 0xE900000000000065;
            }

            MEMORY[0x21CECC330](v21, v22);

            v19 = 544829025;
            v20 = 0xE400000000000000;
          }
        }

        else if (v17 == 2)
        {
          v19 = 0xD000000000000012;
          v20 = 0x8000000219D3A060;
        }

        else if (v17 == 3)
        {
          v19 = 0xD000000000000015;
          v20 = 0x8000000219D3A040;
        }

        else
        {
          v23 = 0xD000000000000013;
          if (v16 != 3)
          {
            v23 = 0xD000000000000011;
          }

          v24 = 0x8000000219D3A080;
          if (v16 == 3)
          {
            v24 = 0x8000000219D3A0A0;
          }

          if (v16 == 2)
          {
            v23 = 0xD000000000000011;
            v24 = 0x8000000219D3A0C0;
          }

          v25 = 0x6F5474736577656ELL;
          if (v16)
          {
            v25 = 0x6F54747365646C6FLL;
          }

          v26 = 0xEE00747365646C4FLL;
          if (v16)
          {
            v26 = 0xEE0074736577654ELL;
          }

          v19 = v16 <= 1 ? v25 : v23;
          v20 = v16 <= 1 ? v26 : v24;
        }

        swift_beginAccess();
        v27 = *(v18 + 32);
        if (*(v27 + 16))
        {
          v28 = sub_21870F700(v19, v20);
          v30 = v29;

          if (v30)
          {
            sub_218718690(*(v27 + 56) + 40 * v28, &v41);
            goto LABEL_49;
          }
        }

        else
        {
        }

        v43 = 0;
        v41 = 0u;
        v42 = 0u;
LABEL_49:
        v11 &= v11 - 1;
        swift_endAccess();
        if (*(&v42 + 1))
        {
          break;
        }

        result = sub_219956184(&v41, sub_219956230);
        v13 = v14;
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      sub_21875F93C(&v41, v44);
      v31 = v45;
      v32 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      *&v41 = v16;
      BYTE8(v41) = v17;
      if ((*(v32 + 8))(a1, &v41, v31, v32))
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v44);
      v13 = v14;
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
    v6 = v36;
    result = v37;
    v4 = v34;
  }

  while (v36 != v35);
  v33 = 1;
LABEL_56:

  return v33;
}

size_t sub_219953578@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v81 = a2;
  v82 = a1;
  v70 = a3;
  sub_2186FE720();
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_219BF3C84();
  v83 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_219BF3E84();
  v68 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v65 - v8;
  v9 = sub_219BF2124();
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BF14C4();
  v11 = *(v79 - 8);
  v73 = v79 - 8;
  v74 = v11;
  v78 = v11;
  MEMORY[0x28223BE20](v79 - 8);
  v77 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BDBB44();
  v13 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBB74();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDBB84();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v65 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v65 - v29;
  MEMORY[0x21CEB1D10](v28);
  sub_219BDBB64();
  sub_219BDBB04();
  (*(v17 + 8))(v19, v16);
  v31 = *(v21 + 8);
  v31(v23, v20);
  sub_219BDBB34();
  sub_219BDBAF4();
  (*(v13 + 8))(v15, v71);
  v31(v26, v20);
  sub_21994FB94(&unk_27CC16F88, MEMORY[0x277CC9428]);
  sub_219BDBD14();
  v31(v30, v20);
  sub_219BF20F4();

  v32 = v77;
  sub_219BF14A4();
  sub_219956064(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v33 = v78;
  v34 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_219C09BA0;
  (*(v33 + 16))(v35 + v34, v32, v79);
  v36 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v36);
  sub_218F0BB90(v36);
  sub_219BF3E74();
  v37 = v82;
  if (v82 >> 62)
  {
    v63 = v82;
    v64 = sub_219BF7214();
    v37 = v63;
    v38 = v64;
  }

  else
  {
    v38 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x277D84F90];
  if (!v38)
  {
LABEL_13:
    sub_218F0B984(v39);
    sub_218F0BA7C(v39);
    sub_218F0BB90(v39);
    v52 = v75;
    sub_219BF3E74();
    sub_219956064(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v53 = v68;
    v54 = *(v68 + 72);
    v55 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_219C09EC0;
    v57 = v56 + v55;
    v58 = *(v53 + 16);
    v59 = v76;
    v58(v57, v80, v76);
    v58(v57 + v54, v52, v59);
    v60 = sub_219BEC004();
    (*(*(v60 - 8) + 56))(v69, 1, 1, v60);
    sub_219A95188(v39);
    sub_219A95188(v39);
    sub_219A951A0(v39);
    sub_219A951B8(v39);
    sub_219A952CC(v39);
    sub_219A952E4(v39);
    sub_219A953F8(v39);
    sub_219BF2024();
    v61 = *(v53 + 8);
    v62 = v76;
    v61(v75, v76);
    v61(v80, v62);
    return (*(v78 + 8))(v77, v79);
  }

  v40 = v37;
  v84 = MEMORY[0x277D84F90];
  result = sub_218C34A88(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v42 = 0;
    v43 = v40;
    v82 = v40 & 0xC000000000000001;
    LODWORD(v81) = *MEMORY[0x277D34118];
    v44 = v84;
    v45 = (v83 + 104);
    v46 = v40;
    v48 = v66;
    v47 = v67;
    do
    {
      if (v82)
      {
        v49 = MEMORY[0x21CECE0F0](v42, v43);
      }

      else
      {
        v49 = swift_unknownObjectRetain();
      }

      *v48 = v49;
      (*v45)(v48, v81, v47);
      v84 = v44;
      v51 = *(v44 + 16);
      v50 = *(v44 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_218C34A88(v50 > 1, v51 + 1, 1);
        v44 = v84;
      }

      ++v42;
      *(v44 + 16) = v51 + 1;
      (*(v83 + 32))(v44 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v51, v48, v47);
      v43 = v46;
    }

    while (v38 != v42);
    v39 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_219953F48(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = v2;
  v4 = MEMORY[0x277D83D88];
  sub_219956064(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = v37 - v6;
  sub_219956064(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v37 - v8;
  v10 = type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219956064(0, &qword_280E91A70, sub_2189AD5C8, v4);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v37 - v14;
  v16 = sub_219BF2AB4();
  v39 = *(v16 - 8);
  v40 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PuzzleFullArchiveTagFeedGroupConfigData();
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v3 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_formatService + 24);
  v37[2] = *(v3 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_formatService + 32);
  v37[3] = v23;
  v37[1] = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_formatService), v23);
  sub_2197B856C();
  sub_219BEDD14();
  v37[0] = *(v20 + 28);
  sub_2199562C8(v3 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_knobs, v12, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  sub_2189AD5C8();
  v25 = v24;
  v26 = *(v24 - 8);
  (*(v26 + 32))(v15, v12, v24);
  (*(v26 + 56))(v15, 0, 1, v25);
  sub_219BEF0B4();
  v27 = *(v43 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v28 = sub_219BF35D4();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  LOBYTE(v42) = 39;
  sub_219956398(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  v29 = v38;
  sub_219BEF0B4();
  v30 = *(v42 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v31 = sub_219BF2774();
  (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
  v32 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v32 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v33 = v37[0];
  v34 = sub_219BF2184();
  (*(v39 + 8))(v18, v40);
  v35 = sub_219BF1934();
  (*(*(v35 - 8) + 8))(&v22[v33], v35);
  return v34;
}

uint64_t sub_219954548@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v66 = a1;
  v70 = a2;
  sub_219956064(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = &v57 - v3;
  v4 = type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEF554();
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v57 - v9;
  v10 = sub_219BED8D4();
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x28223BE20](v10);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v12 - 8);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A90C(0);
  MEMORY[0x28223BE20](v14 - 8);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A940(0);
  MEMORY[0x28223BE20](v16 - 8);
  v60 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A974(0);
  MEMORY[0x28223BE20](v18 - 8);
  v59 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BDBD64();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BF1904();
  v27 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v57 - v31;
  sub_219BF2734();
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_219BF7314();

  v74 = 0xD000000000000012;
  v75 = 0x8000000219CED0B0;
  sub_219BDBD54();
  v33 = sub_219BDBD44();
  v35 = v34;
  (*(v24 + 8))(v26, v23);
  MEMORY[0x21CECC330](v33, v35);

  v36 = sub_219BDBD34();
  (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  v37 = sub_219BF1AD4();
  v38 = v59;
  (*(*(v37 - 8) + 56))(v59, 1, 1, v37);
  v39 = sub_219BEFC64();
  v40 = v60;
  (*(*(v39 - 8) + 56))(v60, 1, 1, v39);
  v41 = sub_219BF4334();
  v42 = v61;
  (*(*(v41 - 8) + 56))(v61, 1, 1, v41);
  v43 = sub_219BEC004();
  v44 = v62;
  (*(*(v43 - 8) + 56))(v62, 1, 1, v43);
  v58 = v32;
  sub_219BF1854();

  sub_219956184(v44, sub_2186FE720);
  sub_219956184(v42, sub_218D7A90C);
  sub_219956184(v40, sub_218D7A940);
  sub_219956184(v38, sub_218D7A974);
  sub_219956184(v22, sub_2186DCF58);
  v62 = *(v27 + 8);
  v57 = v29;
  v45 = v71;
  (v62)(v29, v71);
  (*(v27 + 16))(v29, v32, v45);
  sub_2197B856C();
  v46 = v63;
  v47 = sub_219BEDCB4();
  v60 = v48;
  v61 = v47;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v49 = OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_knobs;
  v50 = v64;
  sub_2199562C8(v46 + OBJC_IVAR____TtC7NewsUI236PuzzleFullArchiveTagFeedGroupEmitter_knobs, v64, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  sub_2189AD5C8();
  v52 = v51;
  sub_219BEE9B4();
  v53 = *(*(v52 - 8) + 8);
  v53(v50, v52);
  sub_2199562C8(v46 + v49, v50, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  sub_219BEE984();
  v53(v50, v52);
  sub_2199562C8(v46 + v49, v50, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  sub_219BEE9D4();
  v53(v50, v52);
  v54 = sub_219BEE5D4();
  (*(*(v54 - 8) + 56))(v69, 1, 1, v54);
  v55 = v65;
  sub_219BED854();
  (v62)(v58, v71);
  (*(v67 + 32))(v70, v55, v68);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219954F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_219956064(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  sub_2199562C8(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  sub_219956330(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor);
  *(v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  return sub_219BE2F54();
}

uint64_t sub_2199550D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2187608D4;

  return sub_2199505C0(a1, a3, a4);
}

uint64_t sub_219955188()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21994FB94(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
  return sub_219BEF194();
}

uint64_t sub_219955274(uint64_t a1)
{
  v4 = *(type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_2199550D0(a1, v6, v1 + v5, v7);
}

uint64_t sub_219955390(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_219BF7884();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21873FA4C();
        v9 = sub_219BF5A34();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v11[1] = v8;
      sub_2199555A4(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_2199554A4(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_2199554A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_4:
    v16 = v8;
    v17 = a3;
    v10 = *(v7 + 8 * a3);
    v15 = v9;
    while (1)
    {
      v19 = v10;
      v18 = *v8;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = a4(&v19, &v18);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v7)
        {
          __break(1u);
          return result;
        }

        v12 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v12;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v17 + 1;
      v8 = v16 + 1;
      v9 = v15 - 1;
      if (v17 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_2199555A4(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v98 = result;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = v9;
    v9 = *v98;
    if (*v98)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_92;
    }

    goto LABEL_129;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v14 = *v9;
      v15 = *(*v9 + 8 * v13);
      v16 = v14;
      v7 = *(v14 + 8 * v11);
      v105 = v7;
      v106 = v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v99 = a4(&v106, &v105);
      if (v6)
      {
LABEL_101:

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      v101 = a5;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v90 = v10 - 1;
      v94 = v11;
      v96 = v10;
      v17 = v10 - 2;
      v18 = 8 * v11;
      v19 = (v16 + 8 * v11 + 16);
      while (v17 != v11)
      {
        v7 = *(v19 - 1);
        v20 = *v19;
        v105 = v7;
        v106 = v20;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v21 = a4(&v106, &v105);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        ++v11;
        ++v19;
        if ((v99 ^ v21))
        {
          v96 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v90;
LABEL_11:
      a5 = v101;
      v9 = a3;
      if (v99)
      {
        if (v96 < v94)
        {
          goto LABEL_123;
        }

        v22 = v94 <= v11;
        v11 = v94;
        if (v22)
        {
          v81 = v96;
          v82 = 8 * v96 - 8;
          v83 = v94;
          do
          {
            if (v83 != --v81)
            {
              v84 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v85 = *(v84 + v18);
              *(v84 + v18) = *(v84 + v82);
              *(v84 + v82) = v85;
            }

            ++v83;
            v82 -= 8;
            v18 += 8;
          }

          while (v83 < v81);
        }

        v13 = v96;
      }

      else
      {
        v11 = v94;
        v13 = v96;
      }
    }

    v23 = v9[1];
    if (v13 >= v23)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_119;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_132;
    }

    v24 = v11 + a6;
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v24 >= v23)
    {
      v24 = v9[1];
    }

    if (v24 < v11)
    {
      goto LABEL_122;
    }

    if (v13 == v24)
    {
LABEL_132:
      if (v13 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v71 = v9;
      v72 = a5;
      v73 = *v71;
      v74 = *v71 + 8 * v13 - 8;
      v95 = v11;
      v75 = v11 - v13;
      v91 = v24;
      do
      {
        v100 = v74;
        v103 = v13;
        v76 = *(v73 + 8 * v13);
        v97 = v75;
        do
        {
          v7 = *v74;
          v105 = *v74;
          v106 = v76;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v77 = a4(&v106, &v105);
          if (v6)
          {
            goto LABEL_101;
          }

          v78 = v77;
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if ((v78 & 1) == 0)
          {
            break;
          }

          if (!v73)
          {
            goto LABEL_125;
          }

          v79 = *v74;
          v76 = *(v74 + 8);
          *v74 = v76;
          *(v74 + 8) = v79;
          v74 -= 8;
        }

        while (!__CFADD__(v75++, 1));
        v13 = v103 + 1;
        v74 = v100 + 8;
        v75 = v97 - 1;
      }

      while (v103 + 1 != v91);
      v13 = v91;
      a5 = v72;
      v9 = a3;
      v11 = v95;
      if (v91 < v95)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
    }

    v26 = *(v12 + 2);
    v25 = *(v12 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_2191F6B60((v25 > 1), v26 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 2) = v27;
    v28 = &v12[16 * v26];
    *(v28 + 4) = v11;
    *(v28 + 5) = v13;
    v7 = *v98;
    if (!*v98)
    {
      goto LABEL_128;
    }

    v102 = v13;
    if (v26)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v29 = v27 - 1;
    if (v27 >= 4)
    {
      v34 = &v12[16 * v27 + 32];
      v35 = *(v34 - 64);
      v36 = *(v34 - 56);
      v40 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      if (v40)
      {
        goto LABEL_105;
      }

      v39 = *(v34 - 48);
      v38 = *(v34 - 40);
      v40 = __OFSUB__(v38, v39);
      v32 = v38 - v39;
      v33 = v40;
      if (v40)
      {
        goto LABEL_106;
      }

      v41 = &v12[16 * v27];
      v43 = *v41;
      v42 = *(v41 + 1);
      v40 = __OFSUB__(v42, v43);
      v44 = v42 - v43;
      if (v40)
      {
        goto LABEL_108;
      }

      v40 = __OFADD__(v32, v44);
      v45 = v32 + v44;
      if (v40)
      {
        goto LABEL_111;
      }

      if (v45 >= v37)
      {
        v63 = &v12[16 * v29 + 32];
        v65 = *v63;
        v64 = *(v63 + 1);
        v40 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v40)
        {
          goto LABEL_117;
        }

        if (v32 < v66)
        {
          v29 = v27 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_44;
    }

    if (v27 == 3)
    {
      v30 = *(v12 + 4);
      v31 = *(v12 + 5);
      v40 = __OFSUB__(v31, v30);
      v32 = v31 - v30;
      v33 = v40;
LABEL_44:
      if (v33)
      {
        goto LABEL_107;
      }

      v46 = &v12[16 * v27];
      v48 = *v46;
      v47 = *(v46 + 1);
      v49 = __OFSUB__(v47, v48);
      v50 = v47 - v48;
      v51 = v49;
      if (v49)
      {
        goto LABEL_110;
      }

      v52 = &v12[16 * v29 + 32];
      v54 = *v52;
      v53 = *(v52 + 1);
      v40 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v40)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v50, v55))
      {
        goto LABEL_114;
      }

      if (v50 + v55 >= v32)
      {
        if (v32 < v55)
        {
          v29 = v27 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_58;
    }

    v56 = &v12[16 * v27];
    v58 = *v56;
    v57 = *(v56 + 1);
    v40 = __OFSUB__(v57, v58);
    v50 = v57 - v58;
    v51 = v40;
LABEL_58:
    if (v51)
    {
      goto LABEL_109;
    }

    v59 = &v12[16 * v29];
    v61 = *(v59 + 4);
    v60 = *(v59 + 5);
    v40 = __OFSUB__(v60, v61);
    v62 = v60 - v61;
    if (v40)
    {
      goto LABEL_112;
    }

    if (v62 < v50)
    {
      goto LABEL_3;
    }

LABEL_65:
    v67 = v29 - 1;
    if (v29 - 1 >= v27)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_124;
    }

    v68 = *&v12[16 * v67 + 32];
    v69 = *&v12[16 * v29 + 40];
    sub_219955C80((*v9 + 8 * v68), (*v9 + 8 * *&v12[16 * v29 + 32]), (*v9 + 8 * v69), v7, a4);
    if (v6)
    {
    }

    if (v69 < v68)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_218C81048(v12);
    }

    if (v67 >= *(v12 + 2))
    {
      goto LABEL_104;
    }

    v70 = &v12[16 * v67];
    *(v70 + 4) = v68;
    *(v70 + 5) = v69;
    v107 = v12;
    result = sub_218C80FBC(v29);
    v12 = v107;
    v27 = *(v107 + 2);
    if (v27 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  result = sub_218C81048(v12);
  v12 = result;
LABEL_92:
  v107 = v12;
  v86 = *(v12 + 2);
  if (v86 < 2)
  {
  }

  while (*v7)
  {
    v87 = *&v12[16 * v86];
    v88 = *&v12[16 * v86 + 24];
    sub_219955C80((*v7 + 8 * v87), (*v7 + 8 * *&v12[16 * v86 + 16]), (*v7 + 8 * v88), v9, a4);
    if (v6)
    {
    }

    if (v88 < v87)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_218C81048(v12);
    }

    if (v86 - 2 >= *(v12 + 2))
    {
      goto LABEL_116;
    }

    v89 = &v12[16 * v86];
    *v89 = v87;
    *(v89 + 1) = v88;
    v107 = v12;
    result = sub_218C80FBC(v86 - 1);
    v12 = v107;
    v86 = *(v107 + 2);
    if (v86 <= 1)
    {
    }
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_219955C80(char *__dst, char *a2, char *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[8 * v13] <= a4)
    {
      v21 = a2;
      v22 = a4;
      memmove(a4, a2, 8 * v13);
      a4 = v22;
      a2 = v21;
    }

    v40 = a4;
    v42 = (a4 + 8 * v13);
    if (v11 < 8 || a2 <= v7)
    {
LABEL_53:
      v15 = v40;
      goto LABEL_54;
    }

    v23 = -a4;
    v37 = -a4;
    while (1)
    {
      v38 = a2;
      v39 = a2 - 8;
      v24 = v42;
      v25 = &v42[v23];
      v6 -= 8;
      while (1)
      {
        v26 = *(v24 - 1);
        v24 -= 8;
        v44 = v26;
        v43 = *v39;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v27 = a5(&v44, &v43);
        if (v5)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v25 >= 0)
          {
            v33 = v25;
          }

          else
          {
            v33 = v25 + 7;
          }

          v34 = v40;
          v32 = v38;
          if (v38 >= v40 && v38 < v40 + (v33 & 0xFFFFFFFFFFFFFFF8) && v38 == v40)
          {
            return 1;
          }

          v31 = 8 * (v33 >> 3);
          goto LABEL_61;
        }

        v28 = v27;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v29 = v6 + 8;
        if (v28)
        {
          break;
        }

        if (v29 != v42)
        {
          *v6 = *v24;
        }

        v25 -= 8;
        v6 -= 8;
        v42 = v24;
        if (v24 <= v40)
        {
          v42 = v24;
          a2 = v38;
          goto LABEL_53;
        }
      }

      a2 = v39;
      if (v29 != v38)
      {
        *v6 = *v39;
      }

      v15 = v40;
      v23 = v37;
      if (v42 <= v40 || v39 <= v7)
      {
LABEL_54:
        v35 = v42 - v15 + 7;
        if (v42 - v15 >= 0)
        {
          v35 = v42 - v15;
        }

        if (a2 >= v15 && a2 < &v15[v35 & 0xFFFFFFFFFFFFFFF8] && a2 == v15)
        {
          return 1;
        }

        v31 = 8 * (v35 >> 3);
        v32 = a2;
LABEL_60:
        v34 = v15;
LABEL_61:
        memmove(v32, v34, v31);
        return 1;
      }
    }
  }

  v14 = a2;
  v15 = a4;
  if (a4 != __dst || &__dst[8 * v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v42 = &v15[8 * v10];
  if (v8 < 8 || v14 >= v6)
  {
LABEL_21:
    a2 = v7;
    goto LABEL_54;
  }

  v16 = v14;
  while (1)
  {
    v44 = *v16;
    v43 = *v15;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v17 = a5(&v44, &v43);
    if (v5)
    {
      break;
    }

    v18 = v17;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v18 & 1) == 0)
    {
      v19 = v15;
      v20 = v7 == v15;
      v15 += 8;
      if (v20)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = *v19;
      goto LABEL_19;
    }

    v19 = v16;
    v20 = v7 == v16;
    v16 += 8;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_19:
    v7 += 8;
    if (v15 >= v42 || v16 >= v6)
    {
      goto LABEL_21;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v30 = v42 - v15 + 7;
  if (v42 - v15 >= 0)
  {
    v30 = v42 - v15;
  }

  if (v7 < v15 || v7 >= &v15[v30 & 0xFFFFFFFFFFFFFFF8] || v7 != v15)
  {
    v31 = 8 * (v30 >> 3);
    v32 = v7;
    goto LABEL_60;
  }

  return 1;
}

void sub_219956064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219956130()
{
  result = qword_27CC21490;
  if (!qword_27CC21490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21490);
  }

  return result;
}

uint64_t sub_219956184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219956264()
{
  result = qword_280E98290[0];
  if (!qword_280E98290[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280E98290);
  }

  return result;
}

uint64_t sub_2199562C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219956330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_219956398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_21994FB94(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_21995647C()
{
  result = qword_27CC214C0;
  if (!qword_27CC214C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC214C0);
  }

  return result;
}

uint64_t sub_2199564D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_21995656C(a1);
}

uint64_t sub_21995656C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = MEMORY[0x277D83D88];
  sub_219957D08(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v2[4] = swift_task_alloc();
  sub_219957D08(0, &qword_27CC214D0, type metadata accessor for AppRefreshRequestWindow, v3);
  v2[5] = swift_task_alloc();
  refreshed = type metadata accessor for AppRefreshRequestWindow();
  v2[6] = refreshed;
  v2[7] = *(refreshed - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2199566D8, 0, 0);
}

uint64_t sub_2199566D8()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_219956784;

  return MEMORY[0x282193DF0](0, ObjectType);
}

uint64_t sub_219956784(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_219956CE8;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_2199568AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2199568AC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = [*(v0 + 88) puzzlesConfig];
  swift_unknownObjectRelease();
  sub_219956E14(v4, v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v5 = *(v0 + 40);

    sub_219957C98(v5, &qword_27CC214D0, type metadata accessor for AppRefreshRequestWindow);
  }

  else
  {
    v27 = v4;
    sub_219739EB0(*(v0 + 40), *(v0 + 64));
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 64);
    v6 = *(v0 + 32);
    v26 = *(v0 + 24);
    sub_219957D08(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_219C09BA0;
    sub_219BF7314();

    sub_219BDBDF4();
    v8 = sub_219BDBE34();
    v9 = *(*(v8 - 8) + 56);
    v9(v6, 0, 1, v8);
    v10 = sub_219BDBB94();
    v12 = v11;
    v13 = MEMORY[0x277CC9788];
    sub_219957C98(v6, &qword_280EE9C10, MEMORY[0x277CC9788]);
    MEMORY[0x21CECC330](v10, v12);

    MEMORY[0x21CECC330](0x3A65726F66656220, 0xE900000000000020);
    sub_219BDBDF4();
    v9(v6, 0, 1, v8);
    v14 = sub_219BDBB94();
    v16 = v15;
    sub_219957C98(v6, &qword_280EE9C10, v13);
    MEMORY[0x21CECC330](v14, v16);

    MEMORY[0x21CECC330](46, 0xE100000000000000);
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_2186FC3BC();
    *(v7 + 32) = 0x203A7265746661;
    *(v7 + 40) = 0xE700000000000000;
    sub_219BF6214();
    sub_219BE5314();

    v17 = *(v26 + 16);
    v18 = sub_219BDBC04();
    v19 = sub_219BDBC04();
    [v17 requestBackgroundAppRefreshStartingAfter:v18 before:v19];

    sub_219739F84(v25);
  }

  v20 = *(v0 + 16);
  v21 = *MEMORY[0x277D6CD50];
  v22 = sub_219BE2874();
  (*(*(v22 - 8) + 104))(v20, v21, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_219956CE8()
{
  v1 = v0[10];
  sub_219BF61F4();
  sub_2186C66AC();
  v2 = sub_219BF6F44();
  sub_219BE5314();

  v3 = v0[2];
  v4 = *MEMORY[0x277D6CD50];
  v5 = sub_219BE2874();
  (*(*(v5 - 8) + 104))(v3, v4, v5);

  v6 = v0[1];

  return v6();
}

id sub_219956E14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_219957D08(0, &qword_280EE9BD0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v126 = &v89 - v5;
  sub_219957D08(0, &unk_280EE9C00, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = &v89 - v7;
  v8 = sub_219BDC084();
  v114 = *(v8 - 8);
  v115 = v8;
  MEMORY[0x28223BE20](v8);
  v113 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB534();
  v117 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v120 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v89 - v13;
  v122 = sub_219BDBF74();
  v14 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBF94();
  v17 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v89 - v21;
  sub_219957D08(0, &qword_280EE9C40, MEMORY[0x277CC9578], v3);
  MEMORY[0x28223BE20](v23 - 8);
  v96 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v116 = &v89 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v89 - v28;
  v128 = sub_219BDBD34();
  v30 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v89 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v95 = &v89 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v89 - v35;
  *&v38 = MEMORY[0x28223BE20](v37).n128_u64[0];
  v125 = &v89 - v39;
  result = [v123 streakCheckLocalTimeInterval];
  v42 = v41;
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v41 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v108 = v19;
  v111 = v10;
  v112 = a2;
  sub_219BDBF34();
  v43 = *MEMORY[0x277CC9968];
  v44 = v14;
  v45 = v14 + 104;
  v46 = *(v14 + 104);
  v123 = v16;
  v48 = v121;
  v47 = v122;
  v93 = v45;
  v92 = v46;
  v46(v121, v43, v122);
  sub_219BDBD24();
  sub_219BDBF04();
  v49 = v30[1];
  v50 = v36;
  v51 = v128;
  v110 = v30 + 1;
  v109 = v49;
  v49(v50, v128);
  v52 = *(v44 + 8);
  v53 = v48;
  v54 = v123;
  v94 = v44 + 8;
  v91 = v52;
  v52(v53, v47);
  v55 = v17;
  v57 = v17 + 8;
  v56 = *(v17 + 8);
  v58 = v22;
  v56(v22, v54);
  v118 = v30[6];
  v119 = v30 + 6;
  result = v118(v29, 1, v51);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v59 = (v42 % 216000) / 16;
  v107 = (v59 - 24 * ((((43 * v59) & 0x8000) != 0) + (((43 * v59) >> 8) >> 2)));
  v106 = ((((34953 * (v42 % 3600)) >> 16) >> 5) + (((v42 % 3600 + ((-30583 * (v42 % 3600)) >> 16)) & 0x8000) >> 15));
  v105 = v42 % 60;
  v60 = v30[4];
  v97 = v30 + 4;
  v90 = v60;
  v60(v125, v29, v51);
  sub_219BDBF34();
  v61 = v108;
  sub_219BDBF34();
  v62 = v113;
  sub_219BDBF54();
  v56(v61, v54);
  sub_219BDBE84();
  v63 = v114;
  v64 = v62;
  v65 = v115;
  (*(v114 + 8))(v64, v115);
  v56(v58, v54);
  (*(v55 + 56))(v124, 1, 1, v54);
  (*(v63 + 56))(v126, 1, 1, v65);
  v114 = sub_219BDB494();
  v104 = v66;
  v108 = sub_219BDB4B4();
  v103 = v67;
  v102 = sub_219BDB434();
  v99 = v68;
  v101 = sub_219BDB504();
  v115 = v57;
  v113 = v56;
  v100 = sub_219BDB3F4();
  v98 = sub_219BDB4F4();
  sub_219BDB3E4();
  sub_219BDB3D4();
  sub_219BDB404();
  v69 = v123;
  v70 = v128;
  v71 = v120;
  sub_219BDB514();
  sub_219BDBF34();
  v72 = v116;
  v73 = v58;
  sub_219BDBEF4();
  v74 = v113;
  (v113)(v58, v69);
  if (v118(v72, 1, v70) == 1)
  {
    v76 = v111;
    v75 = v112;
    v77 = v109;
LABEL_9:
    sub_219957C98(v72, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_219BF61F4();
    sub_2186C66AC();
    v83 = sub_219BF6F44();
    sub_219BE5314();

    v84 = *(v117 + 8);
    v84(v71, v76);
    v84(v127, v76);
    v77(v125, v70);
    refreshed = type metadata accessor for AppRefreshRequestWindow();
    return (*(*(refreshed - 8) + 56))(v75, 1, 1, refreshed);
  }

  v78 = v95;
  v79 = v90;
  v90(v95, v72, v70);
  sub_219BDBF34();
  v81 = v121;
  v80 = v122;
  v92(v121, *MEMORY[0x277CC99A0], v122);
  v72 = v96;
  sub_219BDBF04();
  v91(v81, v80);
  v74(v73, v69);
  v82 = v118(v72, 1, v70);
  v76 = v111;
  v75 = v112;
  v77 = v109;
  if (v82 == 1)
  {
    v109(v78, v70);
    v71 = v120;
    goto LABEL_9;
  }

  v86 = v89;
  v79(v89, v72, v70);
  sub_219BDBA64();
  v87 = type metadata accessor for AppRefreshRequestWindow();
  sub_219BDBA64();
  v77(v86, v70);
  v77(v78, v70);
  v88 = *(v117 + 8);
  v88(v120, v76);
  v88(v127, v76);
  v77(v125, v70);
  return (*(*(v87 - 8) + 56))(v75, 0, 1, v87);
}

uint64_t sub_219957B7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609D0;

  return sub_21995656C(a1);
}

uint64_t sub_219957C18()
{
  sub_219957D08(0, &qword_280EE6BB0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);

  return sub_219BE2F54();
}

uint64_t sub_219957C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219957D08(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_219957D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219957D6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_219957B7C(a1);
}

uint64_t sub_219957E08@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, size_t *a8@<X7>, size_t *a9@<X8>)
{
  v74 = a6;
  v75 = a8;
  v60 = a7;
  *&v61 = a2;
  v72 = a4;
  v73 = a5;
  v65 = a3;
  v66 = a1;
  v11 = type metadata accessor for TodayModel(0);
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  v71 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BF04A4();
  v62 = *(v70 - 8);
  v13 = MEMORY[0x28223BE20](v70);
  v69 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v53 - v15;
  sub_218856C8C(0, &unk_280E90DE0, sub_2186EB018, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v67 = &v53 - v17;
  sub_2186EB018();
  v19 = v18;
  v56 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v76 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF3C84();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF2164();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v66, v21);
  if ((*(v22 + 88))(v24, v21) == *MEMORY[0x277D340F0])
  {
    v54 = a9;
    v55 = v9;
    (*(v22 + 96))(v24, v21);
    v29 = *(v26 + 32);
    v66 = v28;
    v53 = v25;
    v29(v28, v24, v25);
    v30 = v61;
    v31 = *(v61 + 16);
    v32 = v26;
    if (v31)
    {
      v65 = *(v65 + 16);
      sub_21871D24C();
      v64 = v33;
      v57 = (v56 + 4);
      ++v62;
      v63 = (v56 + 6);
      ++v56;
      v34 = (v30 + 40);
      v61 = xmmword_219C09EC0;
      do
      {
        v35 = *(v34 - 1);
        v36 = *v34;
        v37 = swift_allocObject();
        *(v37 + 16) = v61;
        v38 = v74;
        *(v37 + 32) = v73;
        *(v37 + 40) = v38;

        *(v37 + 48) = sub_219BF2154();
        *(v37 + 56) = v39;
        MEMORY[0x21CEC80A0](v37);

        v40 = v67;
        sub_219BEE174();

        if ((*v63)(v40, 1, v19) == 1)
        {

          sub_21885759C(v40, &unk_280E90DE0, sub_2186EB018);
        }

        else
        {
          (*v57)(v76, v40, v19);
          sub_219BF07D4();
          if (*(v60 + 16))
          {
            sub_21870F700(v35, v36);
            v42 = v41;

            if (v42)
            {
            }
          }

          else
          {
          }

          v43 = v69;
          sub_219BF0414();

          v44 = *v62;
          (*v62)(v43, v70);
          sub_219BF0834();
          swift_storeEnumTagMultiPayload();
          v45 = v75;
          v46 = *v75;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v45 = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = sub_218855FE8(0, v46[2] + 1, 1, v46);
            *v75 = v46;
          }

          v49 = v46[2];
          v48 = v46[3];
          if (v49 >= v48 >> 1)
          {
            v51 = sub_218855FE8(v48 > 1, v49 + 1, 1, v46);
            *v75 = v51;
          }

          v44(v68, v70);
          (*v56)(v76, v19);
          v50 = *v75;
          *(v50 + 16) = v49 + 1;
          sub_219958C04(v71, v50 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v49);
        }

        v34 += 2;
        --v31;
      }

      while (v31);
    }

    (*(v32 + 8))(v66, v53);
    a9 = v54;
  }

  else
  {
    (*(v22 + 8))(v24, v21);
  }

  *a9 = *v75;
}

uint64_t sub_219958574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, size_t *a8@<X7>, size_t *a9@<X8>)
{
  v67 = a8;
  v65 = a6;
  v66 = a7;
  v63 = a4;
  v64 = a5;
  v57 = a3;
  *&v54 = a2;
  v59 = a1;
  v11 = type metadata accessor for TodayModel(0);
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v62 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218856C8C(0, &qword_27CC214D8, sub_2186EAB88, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v46 - v14;
  sub_2186EAB88();
  v16 = v15;
  v49 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v61 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF3C84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BF2164();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, v59, v18);
  if ((*(v19 + 88))(v21, v18) == *MEMORY[0x277D340F0])
  {
    v59 = v16;
    v47 = a9;
    v48 = v9;
    (*(v19 + 96))(v21, v18);
    (*(v23 + 32))(v25, v21, v22);
    v26 = v54;
    v27 = *(v54 + 16);
    if (v27)
    {
      v57 = *(v57 + 16);
      sub_21871D24C();
      v55 = (v49 + 6);
      v56 = v28;
      v50 = (v49 + 2);
      v51 = (v49 + 4);
      ++v49;
      v29 = v26 + 40;
      v54 = xmmword_219C09EC0;
      v58 = v25;
      do
      {
        v30 = v23;
        v31 = v22;
        v32 = swift_allocObject();
        *(v32 + 16) = v54;
        v33 = v65;
        *(v32 + 32) = v64;
        *(v32 + 40) = v33;

        *(v32 + 48) = sub_219BF2154();
        *(v32 + 56) = v34;
        MEMORY[0x21CEC80A0](v32);

        v35 = v60;
        sub_219BEE1F4();

        v36 = v59;
        if ((*v55)(v35, 1, v59) == 1)
        {
          sub_21885759C(v35, &qword_27CC214D8, sub_2186EAB88);
          v22 = v31;
          v23 = v30;
        }

        else
        {
          v37 = v61;
          (*v51)(v61, v35, v36);
          (*v50)(v62, v37, v36);
          swift_storeEnumTagMultiPayload();
          v38 = v67;
          v39 = *v67;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v38 = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v39 = sub_218855FE8(0, v39[2] + 1, 1, v39);
            *v67 = v39;
          }

          v22 = v31;
          v42 = v39[2];
          v41 = v39[3];
          v23 = v30;
          if (v42 >= v41 >> 1)
          {
            v44 = sub_218855FE8(v41 > 1, v42 + 1, 1, v39);
            *v67 = v44;
          }

          (*v49)(v61, v36);
          v43 = *v67;
          *(v43 + 16) = v42 + 1;
          sub_219958C04(v62, v43 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42);
        }

        v29 += 16;
        --v27;
        v25 = v58;
      }

      while (v27);
    }

    (*(v23 + 8))(v25, v22);
    a9 = v47;
  }

  else
  {
    (*(v19 + 8))(v21, v18);
  }

  *a9 = *v67;
}

uint64_t sub_219958C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219958D14()
{
  v1 = v0;
  v2 = sub_2186C6148(0, &qword_280E8D790);
  v3 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  v4 = *&v1[OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_readingHistory];
  v41 = v1;
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_paidBundleConfigManager], *&v1[OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_paidBundleConfigManager + 24]);
  v5 = sub_219BF3CE4();
  v6 = [v5 audioRecentlyPlayedMaxCount];

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  v7 = [v4 mostRecentlyCompletedListeningArticlesWithMaxCount_];
  sub_2186D6710(0, &qword_280E8E1B0);
  v6 = sub_219BF5924();

  v2 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v9 = MEMORY[0x277D84F90];
    if (i)
    {
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      do
      {
        v12 = v10;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x21CECE0F0](v12, v6);
            v10 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v12 >= *(v2 + 16))
            {
              goto LABEL_37;
            }

            v13 = *(v6 + 8 * v12 + 32);
            swift_unknownObjectRetain();
            v10 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          v14 = [v13 articleID];
          if (v14)
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v12;
          if (v10 == i)
          {
            goto LABEL_23;
          }
        }

        v15 = v14;
        v16 = sub_219BF5414();
        v40 = v17;

        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_218840D24(0, *(v11 + 2) + 1, 1, v11);
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        if (v19 >= v18 >> 1)
        {
          v11 = sub_218840D24((v18 > 1), v19 + 1, 1, v11);
        }

        *(v11 + 2) = v19 + 1;
        v20 = &v11[16 * v19];
        *(v20 + 4) = v16;
        *(v20 + 5) = v40;
        v9 = MEMORY[0x277D84F90];
      }

      while (v10 != i);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

LABEL_23:

    v43 = v9;
    v21 = *(v11 + 2);
    v2 = OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_headlineCache;
    if (!v21)
    {
      break;
    }

    v22 = 0;
    v9 = MEMORY[0x277D84F90];
LABEL_25:
    v23 = v9;
    v24 = &v11[16 * v22 + 40];
    v25 = v22;
    while (v25 < *(v11 + 2))
    {
      v22 = v25 + 1;
      v6 = *&v41[v2];

      sub_219BE2DD4();

      if (v42)
      {
        v6 = &v43;
        MEMORY[0x21CECC690](v26);
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v9 = v43;
        if (v21 - 1 != v25)
        {
          goto LABEL_25;
        }

        goto LABEL_33;
      }

      v24 += 16;
      ++v25;
      if (v21 == v22)
      {
        v9 = v23;
        goto LABEL_33;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_33:
  v27 = *(v11 + 2);
  if (v9 >> 62)
  {
    if (v27 == sub_219BF7214())
    {
      goto LABEL_35;
    }
  }

  else if (v27 == *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_35:

    sub_2186E84C0(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  sub_219BE2DB4();
  sub_2186D6710(0, &qword_280E8E260);
  v29 = MEMORY[0x277D837D0];
  sub_219BE2814();

  v30 = sub_219BF6F74();
  sub_219BF6214();
  sub_2186E84C0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_219C09BA0;
  v32 = sub_219BF7894();
  v34 = v33;
  *(v31 + 56) = v29;
  *(v31 + 64) = sub_2186FC3BC();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  sub_219BE5314();

  MEMORY[0x28223BE20](v35);
  sub_2187E7248();
  sub_219BE3204();

  sub_2186C6148(0, &qword_280E8E3B0);
  v36 = sub_219BF66A4();
  v37 = swift_allocObject();
  *(v37 + 16) = v41;
  *(v37 + 24) = v11;
  v38 = v41;
  v39 = sub_219BE2F64();

  return v39;
}

uint64_t sub_219959378(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
LABEL_27:
    v26 = a3;
    v27 = sub_219BF7214();
    a3 = v26;
    v4 = v27;
    v41 = a3;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = a3;
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v44 = v3 & 0xFFFFFFFFFFFFFF8;
      v45 = v3 & 0xC000000000000001;
      v6 = MEMORY[0x277D84F98];
      v42 = v4;
      v43 = v3;
      do
      {
        if (v45)
        {
          v7 = MEMORY[0x21CECE0F0](v5, v3);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v5 >= *(v44 + 16))
          {
            goto LABEL_24;
          }

          v7 = *(v3 + 8 * v5 + 32);
          swift_unknownObjectRetain();
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v46 = v8;
        v9 = [v7 articleID];
        v10 = sub_219BF5414();
        v12 = v11;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47[0] = v6;
        v3 = v6;
        v15 = sub_21870F700(v10, v12);
        v16 = v6[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v19 = v14;
        if (v6[3] >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v3 = v47;
            sub_2194902C8();
            if (v19)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_21947DE18(v18, isUniquelyReferenced_nonNull_native);
          v3 = v47[0];
          v20 = sub_21870F700(v10, v12);
          if ((v19 & 1) != (v21 & 1))
          {
LABEL_42:
            result = sub_219BF79A4();
            __break(1u);
            return result;
          }

          v15 = v20;
          if (v19)
          {
LABEL_4:

            v6 = v47[0];
            *(*(v47[0] + 56) + 8 * v15) = v7;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v6 = v47[0];
        *(v47[0] + 8 * (v15 >> 6) + 64) |= 1 << v15;
        v22 = (v6[6] + 16 * v15);
        *v22 = v10;
        v22[1] = v12;
        *(v6[7] + 8 * v15) = v7;
        swift_unknownObjectRelease();
        v23 = v6[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_26;
        }

        v6[2] = v25;
LABEL_5:
        ++v5;
        v3 = v43;
      }

      while (v46 != v42);
    }
  }

  sub_21872C32C();
  sub_219BE2D84();

  sub_2186C6148(0, &qword_280E8D790);
  v28 = sub_219BF6F74();
  sub_219BF6214();
  sub_2186E84C0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C09BA0;
  v47[0] = *(v41 + 16);
  v30 = v47[0];
  v31 = sub_219BF7894();
  v33 = v32;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_2186FC3BC();
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  sub_219BE5314();

  v34 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  if (v30)
  {
    v35 = 0;
    do
    {
      v36 = (v41 + 40 + 16 * v35);
      v37 = v35;
      while (1)
      {
        if (v37 >= v30)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v35 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_41;
        }

        v38 = *v36;
        v47[0] = *(v36 - 1);
        v47[1] = v38;

        sub_219BE2DD4();

        if (v47[2])
        {
          break;
        }

        ++v37;
        v36 += 2;
        if (v35 == v30)
        {
          goto LABEL_39;
        }
      }

      MEMORY[0x21CECC690](v39);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v34 = v48;
    }

    while (v35 != v30);
  }

LABEL_39:
  v47[0] = v34;
  sub_2186E84C0(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_2199598A8(void *a1)
{
  v1 = a1;

  sub_219BE20C4();
}

uint64_t sub_2199599A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_headlineService + 24);
  v4 = *(v1 + OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_headlineService + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_headlineService), v3);
  return MEMORY[0x21CEC9610](v2, *MEMORY[0x277D30B50], v3, v4);
}

uint64_t sub_219959A30(uint64_t a1)
{
  v1 = sub_21951EDF4(a1);
  v2 = v1[2];
  if (v2)
  {
    v3 = 4;
    while (1)
    {
      v4 = v1[v3];
      v5 = qword_282A2B850 & ~v4;
      v6 = unk_282A2B858 & v4;
      if (!v5 || v6 == unk_282A2B858)
      {
        break;
      }

      ++v3;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    sub_219BE20C4();
  }

  else
  {
LABEL_8:
  }
}

uint64_t type metadata accessor for TodayReplaceBlueprintModifier()
{
  result = qword_27CC21508;
  if (!qword_27CC21508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219959B74()
{
  sub_21995AFFC(319, &qword_280E91960, MEMORY[0x277D32290]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TodayExpandResult();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, qword_280EC2CE0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_219959C3C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v91 = a3;
  v92 = a2;
  v5 = sub_219BE6DF4();
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v84 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218849F38(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v90 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v71 - v9);
  v11 = type metadata accessor for TodayGapLocation(0);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187FAD00();
  v14 = v13;
  v88 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  sub_218B6B97C();
  MEMORY[0x28223BE20](v19 - 8);
  v81 = (&v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187FAC34();
  MEMORY[0x28223BE20](v21 - 8);
  v82 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v24 = v23;
  v83 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v93 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21995AFFC(0, &qword_280E91960, MEMORY[0x277D32290]);
  v29 = v3;
  sub_219BEEB04();
  sub_218829720();
  sub_21995B098(v28, type metadata accessor for TodayFeedGroup);
  v87 = sub_219BEB194();
  v31 = v30;

  if (v31)
  {
    sub_21995AF8C();
    *v10 = swift_allocError();
    v32 = v90;
    (*(v8 + 104))(v10, *MEMORY[0x277D6DF68], v90);
    v92(v10);
    return (*(v8 + 8))(v10, v32);
  }

  else
  {
    v75 = v10;
    v76 = v8;
    v34 = *(v29 + *(type metadata accessor for TodayReplaceBlueprintModifier() + 20) + 16);
    v35 = type metadata accessor for TodayFeedServiceConfig();
    v36 = sub_2186DFEF0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v77 = v35;
    v80 = v36;
    v37 = sub_219BEF3E4();
    MEMORY[0x28223BE20](v37);
    v69 = v29;
    v38 = sub_218F91B30(sub_21995AFE0, v68, v37);

    sub_219BEB1B4();
    sub_2186DFEF0(&qword_280EE3730, sub_21880B928);
    result = sub_219BF5DF4();
    if (v87 < v98)
    {
      __break(1u);
    }

    else
    {
      v71 = v34;
      v73 = v29;
      v94 = v98;
      v95 = v87;
      v39 = v81;
      v74 = a1;
      v89 = v24;
      sub_219BF5EB4();
      v40 = sub_218B678B8(v39);
      sub_21995B098(v39, sub_218B6B97C);
      v41 = sub_2186DFEF0(&qword_280EE58E0, sub_2187FAD00);
      v42 = sub_2186DFEF0(&qword_280EE58F0, sub_2187FAD00);
      MEMORY[0x21CEB9170](v40, v14, v41, v42);
      v43 = type metadata accessor for TodayModel(0);
      v44 = sub_2186EB3E8();
      v45 = sub_2186DFEF0(&qword_280EDF9E0, type metadata accessor for TodayModel);
      v81 = v44;
      v82 = v43;
      v72 = v45;
      sub_219BEB1A4();
      v87 = v38;
      v46 = *(v38 + 2);
      if (v46)
      {
        v47 = *(v88 + 16);
        v48 = v87 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
        v49 = *(v88 + 72);
        v50 = (v88 + 8);
        do
        {
          v47(v18, v48, v14);
          sub_219BEB1E4();
          (*v50)(v18, v14);
          v48 += v49;
          --v46;
        }

        while (v46);
      }

      sub_219BEF3D4();
      if (sub_219BEE854())
      {
        v51 = swift_allocObject();
        sub_21995AFFC(0, &qword_280E91AE0, MEMORY[0x277D32188]);
        swift_allocObject();

        *(v51 + 16) = sub_219BEE874();
        v52 = v79;
        *v79 = v51;
        v53 = *MEMORY[0x277D33068];
        sub_21995AFFC(0, &qword_280E90A00, MEMORY[0x277D33098]);
        v55 = v54;
        v56 = *(v54 - 8);
        (*(v56 + 104))(v52, v53, v54);
        (*(v56 + 56))(v52, 0, 1, v55);
        v57 = v78;
        sub_218858E34(v52, v78);
        sub_21995B098(v52, type metadata accessor for TodayGapLocation);
        sub_219BEB1E4();
        (*(v88 + 8))(v57, v14);
      }

      v58 = v92;
      v59 = v90;
      v60 = v76;
      v61 = v75;
      sub_219BEEFF4();

      sub_219BEEFE4();
      v62 = sub_219BEEFC4();

      v63 = 0;
      if (v62)
      {
        v63 = sub_219BEDC74();
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      v94 = v62;
      v97 = v63;
      v64 = v89;
      v65 = v93;
      sub_219BEB2C4();

      v66 = v84;
      sub_21995AB00(v73, v87, v84);

      v67 = sub_2188552DC();
      v70 = v72;
      v68[1] = v67;
      v69 = v81;
      v68[0] = v72;
      sub_219BE85E4();
      (*(v85 + 8))(v66, v86);
      v58(v61);

      (*(v60 + 8))(v61, v59);
      return (*(v83 + 8))(v65, v64);
    }
  }

  return result;
}

uint64_t sub_21995A708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v30 = a1;
  v33 = sub_219BF0644();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BF0BD4();
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TodayReplaceBlueprintModifier();
  __swift_project_boxed_opaque_existential_1((a2 + *(v10 + 24)), *(a2 + *(v10 + 24) + 24));
  v11 = *(a2 + *(v10 + 20) + 24);
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DFEF0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  sub_219BEF3A4();
  sub_219BEF3D4();
  sub_219BEE844();
  v12 = v29;

  v13 = v32;
  sub_21884A0C0(v30, v11, v9, v6, v12);
  if (v13)
  {
    (*(v4 + 8))(v6, v33);
    (*(v7 + 8))(v9, v31);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C0B8C0;
    v15 = sub_21882A6B4();
    v16 = sub_21882CD24(v15);
    v18 = v17;
    v19 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v20 = sub_2186FC3BC();
    *(v14 + 64) = v20;
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v21 = sub_218829720();
    *(v14 + 96) = v19;
    *(v14 + 104) = v20;
    *(v14 + 72) = v21;
    *(v14 + 80) = v22;
    v34 = 0;
    v35 = 0xE000000000000000;
    v36 = v13;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v23 = v34;
    v24 = v35;
    *(v14 + 136) = v19;
    *(v14 + 144) = v20;
    *(v14 + 112) = v23;
    *(v14 + 120) = v24;
    sub_219BF6214();
    sub_219BE5314();

    v25 = 1;
  }

  else
  {
    (*(v4 + 8))(v6, v33);
    (*(v7 + 8))(v9, v31);
    v25 = 0;
  }

  sub_2187FAD00();
  return (*(*(v26 - 8) + 56))(v12, v25, 1, v26);
}

uint64_t sub_21995AB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_21995B218(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = a1 + *(type metadata accessor for TodayReplaceBlueprintModifier() + 20);
  v10 = type metadata accessor for TodayExpandResult();
  sub_21995B0F8(v9 + *(v10 + 32), v8);
  v11 = sub_219BE6DF4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_21995B18C(v8);
  }

  else
  {
    v13 = (*(v12 + 88))(v8, v11);
    if (v13 == *MEMORY[0x277D6D870])
    {
      v14 = v13;
      (*(v12 + 96))(v8, v11);
      v15 = *(v8 + 2);
      v16 = *(v8 + 3);

      if (*(a2 + 16))
      {
        sub_2187FAD00();
        *a3 = sub_219BE6944();
        a3[1] = v17;
        a3[2] = v15;
        a3[3] = v16;
        return (*(v12 + 104))(a3, v14, v11);
      }
    }

    else
    {
      (*(v12 + 8))(v8, v11);
    }
  }

  return (*(v12 + 104))(a3, *MEMORY[0x277D6D868], v11);
}

uint64_t sub_21995AD40()
{
  sub_21995B218(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE58], v0);
  v4 = sub_218847E58(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_21995AE90(uint64_t a1)
{
  v2 = sub_2186DFEF0(&qword_27CC10E20, type metadata accessor for TodayReplaceBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21995AF8C()
{
  result = qword_27CC21520;
  if (!qword_27CC21520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21520);
  }

  return result;
}

void sub_21995AFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig();
    v7 = sub_2186DFEF0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21995B098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21995B0F8(uint64_t a1, uint64_t a2)
{
  sub_21995B218(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21995B18C(uint64_t a1)
{
  sub_21995B218(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21995B218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21995B290()
{
  result = qword_27CC21528;
  if (!qword_27CC21528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21528);
  }

  return result;
}

id sub_21995B2E4()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingList] removeObserver_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21995B4A4()
{
  v1 = [*&v0[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingHistory] isSyncingEnabled];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  if (v1)
  {
    v30 = 0x8000000219D3FF20;
  }

  else
  {
    v30 = 0x8000000219D3FE80;
  }

  sub_219BDB5E4();

  v4 = [objc_allocWithZone(MEMORY[0x277D75110]) init];
  v5 = sub_219BF53D4();

  [v4 setMessage_];

  v31 = objc_opt_self();
  v6 = [v31 &:ObjCClassFromMetadata OBJC:? LABEL:? PROTOCOL:? :? :?NUTitleViewStyler + 3];
  sub_219BDB5E4();

  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v8 = v0;
  v9 = sub_219BF53D4();

  v36 = sub_21995D1E8;
  v37 = v7;
  v33 = 1107296256;
  aBlock = MEMORY[0x277D85DD0];
  v34 = sub_218B66540;
  v35 = &block_descriptor_188;
  v10 = _Block_copy(&aBlock);

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v9 style:0 handler:{v10, 0x8000000219D3FEB0}];
  _Block_release(v10);

  [v4 addAction_];
  v13 = [v31 bundleForClass_];
  sub_219BDB5E4();

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v15 = v8;
  v16 = sub_219BF53D4();

  v36 = sub_21995D1F0;
  v37 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_218B66540;
  v35 = &block_descriptor_22_4;
  v17 = _Block_copy(&aBlock);

  v18 = [v11 actionWithTitle:v16 style:0 handler:{v17, 0x8000000219D3FED0}];
  _Block_release(v17);

  [v4 addAction_];
  v19 = [v31 &:ObjCClassFromMetadata OBJC:? LABEL:? PROTOCOL:? :? :?NUTitleViewStyler + 3];
  sub_219BDB5E4();

  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v21 = v15;
  v22 = sub_219BF53D4();

  v36 = sub_21995D250;
  v37 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_218B66540;
  v35 = &block_descriptor_28_4;
  v23 = _Block_copy(&aBlock);

  v24 = [v11 actionWithTitle:v22 style:0 handler:{v23, 0x8000000219D3FEF0}];
  _Block_release(v23);

  [v4 addAction_];
  v25 = [v31 bundleForClass_];
  sub_219BDB5E4();

  v26 = sub_219BF53D4();

  v36 = nullsub_1;
  v37 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_218B66540;
  v35 = &block_descriptor_31_4;
  v27 = _Block_copy(&aBlock);

  v28 = [v11 actionWithTitle:v26 style:1 handler:{v27, 0x8000000219D0C7E0}];
  _Block_release(v27);

  [v4 addAction_];
  return v4;
}

uint64_t sub_21995BBA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_clearUserDataManager + 24);
  v3 = *(a2 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_clearUserDataManager + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_clearUserDataManager), v2);
  (*(v3 + 8))(v2, v3);
  return sub_219BE7874();
}

uint64_t sub_21995BC14(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = *(a2 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_clearUserDataManager + 24);
  v4 = *(a2 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_clearUserDataManager + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_clearUserDataManager), v3);
  (*(v4 + 8))(v3, v4);
  [*(a2 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_newsletterManager) deletePersonalizationVector];
  [*(a2 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_personalizationData) clearPersonalizationData];
  sub_219BE7874();
  if (qword_27CC08270 != -1)
  {
    swift_once();
  }

  sub_21995D258(&qword_27CC215A8, v5, type metadata accessor for HistoryFeedDataManager);
  return sub_219BDCA54();
}

uint64_t sub_21995BD5C(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for HistoryFeedGapLocation(0);
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = CACurrentMediaTime();
  v6 = *a1;
  v5 = a1[1];
  v7 = *(type metadata accessor for HistoryFeedExpandRequest() + 20);
  v8 = qword_280E8D930;

  if (v8 != -1)
  {
    swift_once();
  }

  v21 = qword_280F617D8;
  v20[3] = sub_219BF6214();
  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v9 + 64) = v11;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v24 = 0;
  v25 = 0xE000000000000000;

  sub_219BF7484();
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0xE000000000000000;
  sub_219BE5314();

  sub_219296BC4(a1 + v7, v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v13 = swift_allocObject();
  sub_219296B60(v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_21995D08C(0, &qword_280E909F0, MEMORY[0x277D33098]);
  sub_219BE31F4();

  sub_21995D08C(0, &qword_280E915F8, MEMORY[0x277D32580]);
  sub_219BE2F84();

  sub_2187D9028();
  v14 = sub_219BF66A4();
  v15 = swift_allocObject();
  *(v15 + 2) = v6;
  *(v15 + 3) = v5;
  v15[4] = v4;

  sub_219BE2F74();

  v16 = swift_allocObject();
  v16[2] = v4;
  *(v16 + 3) = v6;
  *(v16 + 4) = v5;
  v17 = sub_219BE2E54();
  v18 = sub_219BE2FD4();

  return v18;
}

uint64_t sub_21995C134()
{
  sub_21995D384();
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_21995C1AC(uint64_t a1, uint64_t a2)
{
  sub_21995D08C(0, &qword_280E909F0, MEMORY[0x277D33098]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = type metadata accessor for HistoryFeedGapLocation(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219296BC4(a2, v14);
  v15 = (*(v6 + 48))(v14, 1, v5);
  if (v15 == 1)
  {
    MEMORY[0x28223BE20](v15);
    *(&v19 - 2) = a1;
    type metadata accessor for HistoryFeedServiceConfig();
    sub_219BE3204();
    v16 = sub_219BE2E54();
    v17 = sub_219BE2F74();
  }

  else
  {
    (*(v6 + 32))(v11, v14, v5);
    (*(v6 + 16))(v9, v11, v5);
    sub_21995D158();
    swift_allocObject();
    v17 = sub_219BE3014();
    (*(v6 + 8))(v11, v5);
  }

  return v17;
}

uint64_t sub_21995C438(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_feedServiceContextFactory);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 8))(v2, v3);
  v4 = [objc_opt_self() currentDevice];
  [v4 userInterfaceIdiom];

  v5 = sub_219BED564();

  return v5;
}

uint64_t sub_21995C52C()
{
  type metadata accessor for HistoryFeedServiceConfig();
  sub_21995D258(&qword_280EC18D0, 255, type metadata accessor for HistoryFeedServiceConfig);
  return sub_219BF0F44();
}

uint64_t sub_21995C5EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = qword_280E8D930;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v10 = MEMORY[0x277D83A80];
  *(v9 + 56) = MEMORY[0x277D839F8];
  *(v9 + 64) = v10;
  *(v9 + 32) = v11;
  v12 = MEMORY[0x277D837D0];
  *(v9 + 96) = MEMORY[0x277D837D0];
  v13 = sub_2186FC3BC();
  *(v9 + 104) = v13;
  *(v9 + 72) = a2;
  *(v9 + 80) = a3;

  sub_219BF7484();
  *(v9 + 136) = v12;
  *(v9 + 144) = v13;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v7;
  return result;
}

uint64_t sub_21995C780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D930 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = v7;
  v8 = MEMORY[0x277D837D0];
  *(v5 + 96) = MEMORY[0x277D837D0];
  v9 = sub_2186FC3BC();
  *(v5 + 104) = v9;
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  sub_2186CFDE4(0, &qword_280E8B580);

  sub_219BF7484();
  *(v5 + 136) = v8;
  *(v5 + 144) = v9;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_21995C8FC(uint64_t a1, void *a2)
{
  v3 = (a1 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_headlineService);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return MEMORY[0x21CEC9610](*a2, *MEMORY[0x277D30B68], v4, v5);
}

uint64_t sub_21995C968(uint64_t *a1, uint64_t a2)
{
  refreshed = type metadata accessor for HistoryFeedRefreshResult();
  MEMORY[0x28223BE20](refreshed);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_280E8D930 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10;
  sub_219BF6214();
  sub_219BE5314();

  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(type metadata accessor for HistoryFeedRefreshRequest() + 28);
  v14 = *(refreshed + 28);
  v15 = sub_219BF0BD4();
  (*(*(v15 - 8) + 16))(&v6[v14], a2 + v13, v15);
  *v6 = v7;
  *(v6 + 1) = v11;
  *(v6 + 2) = v12;
  sub_21995D2A0();
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_21995CBA4()
{
  swift_getObjectType();
  v1 = type metadata accessor for HistoryFeedExpandRequest();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v2 + 28);
  sub_21995D08C(0, &qword_280E909F0, MEMORY[0x277D33098]);
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *v4 = 0x6D726177657270;
  *(v4 + 1) = 0xE700000000000000;
  v11 = v0;
  v12 = v4;
  sub_219BE3204();
  v7 = sub_219BE2E54();
  v8 = sub_219BE2F84();

  sub_21995D328(v4);
  return v8;
}

uint64_t sub_21995CD50(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = sub_219BF5924();
  v9 = a3;
  v10 = a1;
  a5(v8);
}

void sub_21995D08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HistoryFeedServiceConfig();
    v7 = sub_21995D258(&qword_280EC18D0, 255, type metadata accessor for HistoryFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21995D158()
{
  if (!qword_280EE6BE0)
  {
    sub_21995D08C(255, &qword_280E909F0, MEMORY[0x277D33098]);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6BE0);
    }
  }
}

uint64_t sub_21995D1F0()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_newsletterManager) deletePersonalizationVector];
  [*(v1 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_personalizationData) clearPersonalizationData];
  return sub_219BE7874();
}

uint64_t sub_21995D258(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_21995D2A0()
{
  if (!qword_27CC215B0)
  {
    type metadata accessor for HistoryFeedRefreshResult();
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC215B0);
    }
  }
}

uint64_t sub_21995D328(uint64_t a1)
{
  v2 = type metadata accessor for HistoryFeedExpandRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21995D384()
{
  if (!qword_280EE6D98)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6D98);
    }
  }
}

uint64_t sub_21995D3D4(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingHistory) sortedVisitedArticleIDs];
  v4 = sub_219BF5924();

  v5 = v1 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1, &off_282A92890, a1, MEMORY[0x277D84F90], v4, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21995D4E0(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingHistory) sortedVisitedArticleIDs];
  v4 = sub_219BF5924();

  v5 = v1 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1, &off_282A92890, MEMORY[0x277D84F90], a1, v4, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21995D5EC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingHistory) sortedVisitedArticleIDs];
  v2 = sub_219BF5924();

  v3 = v0 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v0, &off_282A92890, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v2, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21995D6E8(uint64_t a1)
{

  sub_2191ED3E8(v2);
  v3 = sub_218845F78(a1);

  v4 = v1 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v1, &off_282A92890, v3, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_21995D7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21995EF3C(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v6 = sub_219BE2644();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = (v10 + v9);
  *v11 = 0x7972657571;
  v11[1] = 0xE500000000000000;
  v12 = *(v7 + 104);
  (v12)(v11, *MEMORY[0x277D6CC80], v6);
  v13 = (v11 + v8);
  *v13 = 0x745F7265746C6966;
  v13[1] = 0xEB00000000736761;
  v12();
  sub_219897824(MEMORY[0x277D84F90]);
  v14 = sub_219BE2684();

  v3[2] = v14;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_21995D9B4(uint64_t a1)
{
  v3 = sub_219BE22B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE22F4();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v1 + 40) useFood])
  {
    v28 = v1;
    sub_21995EF3C(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
    sub_219BE2594();
    sub_219BE22D4();
    v12 = *(v8 + 8);
    v12(v11, v7);
    v24 = sub_219BE22C4();
    v25 = v7;
    v26 = v13;
    v14 = *(v4 + 8);
    v14(v6, v3);
    v27 = a1;
    sub_219BE2594();
    sub_219BE22D4();
    v12(v11, v25);
    v15 = sub_219BE22C4();
    v17 = v16;
    v18 = v6;
    v19 = v26;
    v14(v18, v3);
    v20 = sub_21995EFA0(v15, v17);

    if (v19 | v20)
    {
      v21 = sub_21995DC84(v27, v24, v19, v20);
    }

    else
    {
      v21 = sub_21995E5F0(v27);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_21995DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_21995EF3C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v40 = *(v10 - 8);
  v11 = *(v40 + 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = sub_218FA86C8(a1);
  v17 = sub_218DB24B0();
  v18 = *(v5 + 24);
  if (v17)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = a2;
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;
    v20 = sub_219BDFA44();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    memset(v49, 0, 40);
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v46 = v18;
    sub_2187B16A8(v47, &v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    v39 = v16;
    if (*(&v43 + 1))
    {
      sub_21875F93C(&v42, v44);
      v21 = qword_280ED32D0;
      v22 = v16;

      if (v21 != -1)
      {
        swift_once();
      }

      v24 = qword_280ED32D8;
      v23 = qword_280ED32E0;
      v25 = qword_280ED32E8;

      sub_2188202A8(v23);
      __swift_destroy_boxed_opaque_existential_1(v44);
    }

    else
    {

      v28 = v16;

      sub_218745FAC(&v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v24 = qword_280ED32D8;
      v23 = qword_280ED32E0;
      v25 = qword_280ED32E8;

      sub_2188202A8(v23);
    }

    v41 = v19 | 0x8000000000000002;
    v43 = 0u;
    v42 = 0u;
    sub_2187B16A8(v15, v12, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21995EF3C);
    sub_2187B16A8(v49, v44, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v29 = (v40[80] + 24) & ~v40[80];
    v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 47) & 0xFFFFFFFFFFFFFFF8;
    v40 = v15;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    sub_2189B4EAC(v12, v32 + v29);
    v33 = v32 + v30;
    v34 = v44[1];
    *v33 = v44[0];
    *(v33 + 16) = v34;
    *(v33 + 32) = v45;
    v35 = (v32 + v31);
    v36 = (v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v35 = 0;
    v35[1] = 0;
    *v36 = v24;
    v36[1] = v23;
    v36[2] = v25;

    sub_2188202A8(v23);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v23);

    sub_218745FAC(v47, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218745FAC(v49, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218745FAC(v40, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21995EF3C);
    sub_218745FAC(&v42, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  else
  {
    v49[0] = *(v5 + 24);
    v26 = swift_allocObject();
    *(v26 + 16) = v16;
    *(v26 + 24) = a2;
    *(v26 + 32) = a3;
    *(v26 + 40) = a4;
    *&v47[0] = v26 | 0x8000000000000002;
    sub_2186CF94C();
    sub_2189B4DD4();
    v27 = v16;

    sub_219BEB484();

    sub_218932F9C(*&v47[0]);
  }

  return 1;
}

uint64_t sub_21995E5F0(uint64_t a1)
{
  v2 = v1;
  sub_21995EF3C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = sub_218FA86C8(a1);
  v12 = sub_218DB24B0();
  v13 = *(v2 + 24);
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v36 = v14;
    v15 = v14 | 0x8000000000000000;
    v16 = sub_219BDFA44();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    memset(v45, 0, 40);
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v42 = v13;
    sub_2187B16A8(v43, &v38, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v39 + 1))
    {
      sub_21875F93C(&v38, v40);
      v17 = qword_280ED32D0;
      v18 = v11;
      if (v17 != -1)
      {
        swift_once();
      }

      v20 = qword_280ED32D8;
      v19 = qword_280ED32E0;
      v21 = qword_280ED32E8;

      sub_2188202A8(v19);
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      v24 = v11;
      sub_218745FAC(&v38, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v20 = qword_280ED32D8;
      v19 = qword_280ED32E0;
      v21 = qword_280ED32E8;

      sub_2188202A8(v19);
    }

    v37 = v15;
    v39 = 0u;
    v38 = 0u;
    sub_2187B16A8(v10, v7, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21995EF3C);
    sub_2187B16A8(v45, v40, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
    v35 = v10;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    sub_2189B4EAC(v7, v28 + v25);
    v29 = v28 + v26;
    v30 = v40[1];
    *v29 = v40[0];
    *(v29 + 16) = v30;
    *(v29 + 32) = v41;
    v31 = (v28 + v27);
    v32 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v31 = 0;
    v31[1] = 0;
    *v32 = v20;
    v32[1] = v19;
    v32[2] = v21;

    sub_2188202A8(v19);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v19);

    sub_218745FAC(v43, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218745FAC(v45, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218745FAC(v35, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21995EF3C);
    sub_218745FAC(&v38, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  else
  {
    v45[0] = *(v2 + 24);
    v22 = swift_allocObject();
    *(v22 + 16) = v11;
    *&v43[0] = v22 | 0x8000000000000000;
    sub_2186CF94C();
    sub_2189B4DD4();
    v23 = v11;

    sub_219BEB484();

    sub_218932F9C(*&v43[0]);
  }

  return 1;
}

void sub_21995EF3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21995EFA0(uint64_t a1, uint64_t a2)
{
  v36 = sub_219BDB0F4();
  v4 = *(v36 - 1);
  MEMORY[0x28223BE20](v36);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39 = a1;
    v40 = a2;
    v37 = 44;
    v38 = 0xE100000000000000;
    v35 = sub_2187F3BD4();
    v7 = sub_219BF6FE4();
    v8 = *(v7 + 16);
    if (v8)
    {
      v37 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v8, 0);
      v9 = v37;
      v10 = (v4 + 8);
      v34 = v7;
      v11 = (v7 + 40);
      do
      {
        v12 = *v11;
        v39 = *(v11 - 1);
        v40 = v12;

        sub_219BDB0A4();
        v13 = sub_219BF7024();
        v15 = v14;
        (*v10)(v6, v36);

        v37 = v9;
        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_21870B65C((v16 > 1), v17 + 1, 1);
          v9 = v37;
        }

        *(v9 + 16) = v17 + 1;
        v18 = v9 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v11 += 2;
        --v8;
      }

      while (v8);

      v20 = *(v9 + 16);
      if (v20)
      {
LABEL_8:
        v21 = 0;
        v22 = v9 + 40;
        v34 = v20 - 1;
        v35 = v9 + 40;
        v36 = MEMORY[0x277D84F90];
        do
        {
          v23 = (v22 + 16 * v21);
          v24 = v21;
          while (1)
          {
            if (v24 >= *(v9 + 16))
            {
              __break(1u);
              return result;
            }

            v26 = *(v23 - 1);
            v25 = *v23;
            v21 = v24 + 1;

            v27 = sub_219BF53D4();
            v28 = [v27 fc_isValidTagID];

            if (v28)
            {
              break;
            }

            v23 += 2;
            ++v24;
            if (v20 == v21)
            {
              goto LABEL_23;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_218840D24(0, *(v36 + 2) + 1, 1, v36);
            v36 = result;
          }

          v30 = *(v36 + 2);
          v29 = *(v36 + 3);
          if (v30 >= v29 >> 1)
          {
            result = sub_218840D24((v29 > 1), v30 + 1, 1, v36);
            v36 = result;
          }

          v22 = v35;
          v31 = v36;
          *(v36 + 2) = v30 + 1;
          v32 = &v31[16 * v30];
          *(v32 + 4) = v26;
          *(v32 + 5) = v25;
        }

        while (v34 != v24);
        goto LABEL_23;
      }
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
      v20 = *(MEMORY[0x277D84F90] + 16);
      if (v20)
      {
        goto LABEL_8;
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_23:

    return v36;
  }

  return 0;
}

uint64_t objectdestroy_4Tm_1()
{
  sub_21995EF3C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21995F474(void *a1)
{
  sub_21995EF3C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_21995F56C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BDF104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDFB64();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A153EC(a1, v10);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_218C1023C(v10);
    return 0;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_219BDFB34();
  v15 = sub_219BDF0F4();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  v18 = *(v2 + 16);
  v19 = sub_219BF53D4();
  v20 = [v18 fastCachedTagForID_];

  if (!v20)
  {
    (*(v12 + 8))(v14, v11);

    return 0;
  }

  v32 = &unk_282B7DDA8;
  v21 = swift_dynamicCastObjCProtocolConditional();
  if (v21)
  {
    v31 = [v21 channelType];
  }

  else
  {
    v31 = 0;
  }

  sub_218C71780();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  *(inited + 32) = 0xD000000000000011;
  v24 = MEMORY[0x277D837D0];
  *(inited + 40) = 0x8000000219D06120;
  *(inited + 48) = v15;
  *(inited + 56) = v17;
  *(inited + 72) = v24;
  *(inited + 80) = 0x4E6C656E6E616863;
  *(inited + 88) = 0xEB00000000656D61;
  v25 = [v20 name];
  v26 = sub_219BF5414();
  v28 = v27;

  *(inited + 96) = v26;
  *(inited + 104) = v28;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 128) = 0x546C656E6E616863;
  *(inited + 168) = MEMORY[0x277D83E88];
  v29 = v31;
  *(inited + 136) = 0xEB00000000657079;
  *(inited + 144) = v29;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  swift_unknownObjectRelease();
  (*(v12 + 8))(v14, v11);
  return 0xD000000000000017;
}

uint64_t WebViewerModule.createViewController(with:)(uint64_t a1)
{
  v2 = sub_219BE7784();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for WebLinkRouteModel(0);
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebLinkRouteModel.URLType(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2199602CC(a1 + v5[5], v13, type metadata accessor for WebLinkRouteModel.URLType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v24[0] = type metadata accessor for WebLinkRouteModel;
    v24[1] = v14;
    sub_2199602CC(a1, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WebLinkRouteModel);
    v15 = *(v6 + 80);
    v24[2] = v4;
    v16 = (v15 + 24) & ~v15;
    v17 = swift_allocObject();
    v18 = v25;
    *(v17 + 16) = v25;
    sub_219960868(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for WebLinkRouteModel);

    v19 = sub_219BE2E54();
    sub_2186C6148(0, &qword_280E8E480);
    sub_219BE2F74();

    sub_2199602CC(a1, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24[0]);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    sub_219960868(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v16, type metadata accessor for WebLinkRouteModel);

    v21 = sub_219BE2E54();
    sub_219BE3064();

    sub_219BE7DC4();

    sub_219BE7774();
    v22 = sub_219BE7D94();
  }

  else
  {
    sub_219960868(v13, v10, sub_21873F65C);
    v22 = sub_21995FD90(v10, *(a1 + v5[6]), *(a1 + v5[7]), *(a1 + v5[7] + 8));
    sub_2187BCB38(v10, sub_21873F65C);
  }

  return v22;
}

uint64_t sub_21995FD90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDD224();
  sub_2199602CC(a1, v11, sub_21873F65C);
  type metadata accessor for WebViewerConfig();
  swift_allocObject();

  v13 = sub_218B71798(v11, a2);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  type metadata accessor for WebViewerViewController();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = a3;
  v14[5] = a4;
  swift_unknownObjectRetain();

  v15 = sub_219BE1E04();

  if (v15)
  {
    if (sub_218B71B40())
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

      v15 = v17;
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21995FF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a3;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if (qword_27CC08600 != -1)
  {
    swift_once();
  }

  v14 = sub_219BE5434();
  __swift_project_value_buffer(v14, qword_27CCD8B58);
  sub_2199602CC(a1, v13, sub_21873F65C);
  v15 = sub_219BE5414();
  v16 = sub_219BF6214();
  if (os_log_type_enabled(v15, v16))
  {
    v28 = a1;
    v29 = a2;
    v30 = a4;
    v31 = v4;
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v17 = 136315138;
    sub_2199602CC(v13, v10, sub_21873F65C);
    v18 = sub_219BDB954();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v10, 1, v18) == 1)
    {
      sub_2187BCB38(v10, sub_21873F65C);
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v21 = sub_219BDB804();
      v20 = v22;
      (*(v19 + 8))(v10, v18);
    }

    a4 = v30;
    sub_2187BCB38(v13, sub_21873F65C);
    v23 = sub_2186D1058(v21, v20, &v33);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_2186C1000, v15, v16, "Resolved URL: %s", v17, 0xCu);
    v24 = v27;
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x21CECF960](v24, -1, -1);
    MEMORY[0x21CECF960](v17, -1, -1);

    a1 = v28;
  }

  else
  {

    sub_2187BCB38(v13, sub_21873F65C);
  }

  v25 = type metadata accessor for WebLinkRouteModel(0);
  result = sub_21995FD90(a1, *(v32 + *(v25 + 24)), *(v32 + *(v25 + 28)), *(v32 + *(v25 + 28) + 8));
  *a4 = result;
  return result;
}

uint64_t sub_2199602CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199603B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08600 != -1)
  {
    swift_once();
  }

  v11 = sub_219BE5434();
  __swift_project_value_buffer(v11, qword_27CCD8B58);
  v12 = a1;
  v13 = sub_219BE5414();
  v14 = sub_219BF61F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[1] = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = a1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_2186C1000, v13, v14, "Failed to resolve URL. Starting with error state. [%@]", v16, 0xCu);
    sub_2187BCB38(v17, sub_2189B3F3C);
    MEMORY[0x21CECF960](v17, -1, -1);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  v20 = sub_219BDB954();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = type metadata accessor for WebLinkRouteModel(0);
  if (*(a3 + *(v21 + 24)))
  {
    v22 = *(a3 + *(v21 + 24));
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v26 = &unk_282A2B860;

  sub_2191EDA54(v22);
  v23 = sub_21995FD90(v10, v26, *(a3 + *(v21 + 28)), *(a3 + *(v21 + 28) + 8));

  result = sub_2187BCB38(v10, sub_21873F65C);
  *a4 = v23;
  return result;
}

void sub_2199606D8(void *a1, id a2)
{
  v4 = a2;
  sub_2186C709C(0, &qword_280E8B580);
  type metadata accessor for WebViewerViewController();
  if (swift_dynamicCast())
  {
    v5 = v15;
    v6 = [a1 presentationController];
    if (v6)
    {
      v7 = v6;
      [v6 setDelegate_];
    }
  }

  else
  {
    v8 = a2;
    sub_2186C6148(0, &qword_27CC215B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v5 = v15;
    v9 = [v15 topViewController];
    if (v9)
    {
      v10 = v9;
      v11 = swift_dynamicCastClass();
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = [a1 presentationController];
      if (v13)
      {
        v14 = v13;
        v10 = v10;
        [v14 setDelegate_];
      }
    }
  }
}

uint64_t sub_219960868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199608D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebViewerConfig();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC2CC8);
  return sub_219BE1B64();
}

uint64_t WebViewerModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t WebViewerModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_219960ABC()
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v85 = *(v0 - 8);
  v1 = *(v85 + 8);
  MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v80 - v3;
  MEMORY[0x28223BE20](v5);
  v80 = &v80 - v6;
  MEMORY[0x28223BE20](v7);
  v81 = &v80 - v8;
  MEMORY[0x28223BE20](v9);
  v82 = &v80 - v10;
  MEMORY[0x28223BE20](v11);
  v83 = &v80 - v12;
  v13 = sub_219BE22B4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE22F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747C64(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v18 + 8))(v20, v17);
  v21 = sub_219BE22C4();
  v23 = v22;
  (*(v14 + 8))(v16, v13);
  if (!v23)
  {
    v33 = *(v84 + 24);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_219C14A10;
    v35 = v34 | 0x1000000000000004;
    v36 = sub_219BDFA44();
    (*(*(v36 - 8) + 56))(v4, 1, 1, v36);
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    v92 = v33;
    sub_2187B15C0(&v93, &v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v88 + 1))
    {
      sub_21875F93C(&v87, &v89);
      v37 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v39 = qword_280ED32D8;
      v38 = qword_280ED32E0;
      v40 = qword_280ED32E8;

      sub_2188202A8(v38);
      __swift_destroy_boxed_opaque_existential_1(&v89);
    }

    else
    {
      sub_2187449F0(&v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      v37 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v39 = qword_280ED32D8;
      v38 = qword_280ED32E0;
      v40 = qword_280ED32E8;

      sub_2188202A8(v38);
    }

    v86 = v35;
    v88 = 0u;
    v87 = 0u;
    sub_2187B15C0(v4, v37, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
    sub_2187B15C0(&v96, &v89, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v61 = (v85[80] + 24) & ~v85[80];
    v85 = v4;
    v62 = v37;
    v63 = (v1 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 47) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    sub_2189B4EAC(v62, v65 + v61);
    v66 = v65 + v63;
    v67 = v90;
    *v66 = v89;
    *(v66 + 16) = v67;
    *(v66 + 32) = v91;
    v68 = (v65 + v64);
    v69 = (v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v68 = 0;
    v68[1] = 0;
    *v69 = v39;
    v69[1] = v38;
    v69[2] = v40;

    sub_2188202A8(v38);
    sub_2186CF94C();
    sub_219962098(&qword_280EE5A90, 255, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v38);
    sub_2187449F0(&v93, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187449F0(&v96, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v50 = MEMORY[0x277D2DED0];
    v51 = MEMORY[0x277D83D88];
    v52 = &v100;
    goto LABEL_25;
  }

  v24 = v84;
  if (v21 == 0x77654E6C61636F6CLL && v23 == 0xE900000000000073 || (sub_219BF78F4() & 1) != 0)
  {

    v25 = *(v24 + 24);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C43500;
    v27 = v26 | 0x1000000000000004;
    v28 = sub_219BDFA44();
    v29 = v83;
    (*(*(v28 - 8) + 56))(v83, 1, 1, v28);
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    v92 = v25;
    sub_2187B15C0(&v93, &v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v88 + 1))
    {
      sub_21875F93C(&v87, &v89);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v31 = qword_280ED32D8;
      v30 = qword_280ED32E0;
      v32 = qword_280ED32E8;

      sub_2188202A8(v30);
      __swift_destroy_boxed_opaque_existential_1(&v89);
    }

    else
    {
      sub_2187449F0(&v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v31 = qword_280ED32D8;
      v30 = qword_280ED32E0;
      v32 = qword_280ED32E8;

      sub_2188202A8(v30);
    }

    v86 = v27;
    v88 = 0u;
    v87 = 0u;
    v41 = v82;
    sub_2187B15C0(v29, v82, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
    sub_2187B15C0(&v96, &v89, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v42 = (v85[80] + 24) & ~v85[80];
    v43 = (v1 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 47) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    sub_2189B4EAC(v41, v45 + v42);
    v46 = v45 + v43;
    v47 = v90;
    *v46 = v89;
    *(v46 + 16) = v47;
    *(v46 + 32) = v91;
    v48 = (v45 + v44);
    v49 = (v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v48 = 0;
    v48[1] = 0;
    *v49 = v31;
    v49[1] = v30;
    v49[2] = v32;

    sub_2188202A8(v30);
    sub_2186CF94C();
    sub_219962098(&qword_280EE5A90, 255, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v30);
    sub_2187449F0(&v93, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187449F0(&v96, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v50 = MEMORY[0x277D2DED0];
    v51 = MEMORY[0x277D83D88];
    v52 = &v99;
LABEL_25:
    sub_2187449F0(*(v52 - 32), &qword_280EE8610, v50, v51, sub_218747C64);
    sub_2187449F0(&v87, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

    return 1;
  }

  v53 = *(v24 + 24);
  v54 = swift_allocObject();
  *(v54 + 16) = v21;
  *(v54 + 24) = v23;
  v55 = v54 | 0x1000000000000004;
  v56 = sub_219BDFA44();
  v57 = v81;
  (*(*(v56 - 8) + 56))(v81, 1, 1, v56);
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v92 = v53;
  sub_2187B15C0(&v93, &v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v88 + 1))
  {
    sub_21875F93C(&v87, &v89);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v59 = qword_280ED32D8;
    v58 = qword_280ED32E0;
    v60 = qword_280ED32E8;

    sub_2188202A8(v58);
    __swift_destroy_boxed_opaque_existential_1(&v89);
  }

  else
  {
    sub_2187449F0(&v87, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v59 = qword_280ED32D8;
    v58 = qword_280ED32E0;
    v60 = qword_280ED32E8;

    sub_2188202A8(v58);
  }

  v86 = v55;
  v88 = 0u;
  v87 = 0u;
  v70 = v80;
  sub_2187B15C0(v57, v80, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
  sub_2187B15C0(&v96, &v89, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v71 = (v85[80] + 24) & ~v85[80];
  v72 = (v1 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 47) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  sub_2189B4EAC(v70, v74 + v71);
  v75 = v74 + v72;
  v76 = v90;
  *v75 = v89;
  *(v75 + 16) = v76;
  *(v75 + 32) = v91;
  v77 = (v74 + v73);
  v78 = (v74 + ((v73 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v77 = 0;
  v77[1] = 0;
  *v78 = v59;
  v78[1] = v58;
  v78[2] = v60;

  sub_2188202A8(v58);
  sub_2186CF94C();
  sub_219962098(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v58);
  sub_2187449F0(&v93, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187449F0(&v96, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_2187449F0(v81, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
  sub_2187449F0(&v87, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return 1;
}

uint64_t sub_219962098(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2199620E4()
{
  sub_21896FA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
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

  v22[1] = 0xF000000000000028;
  v24 = 0u;
  v23 = 0u;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v30, v25, &qword_280EE33A0, &qword_280EE33B0);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_2189B4EAC(v4, v16 + v13);
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
  sub_219962708(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v10);
  sub_2187448D0(v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v30, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

uint64_t sub_219962708(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_219962780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PuzzleEmbedUpdateSettingsMessageHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_219962884(void *a1)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v2 = [a1 body];
  v3 = sub_219BF5214();

  v4 = sub_2187A1A2C(v3);

  if (!v4)
  {
    goto LABEL_12;
  }

  if (!*(v4 + 16) || (v5 = sub_21870F700(0x73676E6974746573, 0xE800000000000000), (v6 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_2186D1230(*(v4 + 56) + 32 * v5, v38);

  sub_219962E2C(0, &qword_27CC0C7A0, sub_218A19674, MEMORY[0x277D83940]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v19 = sub_219BE5434();
    __swift_project_value_buffer(v19, qword_280F625E0);
    swift_unknownObjectRetain();
    v20 = sub_219BE5414();
    v21 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38[0] = v23;
      *v22 = 136315138;
      v24 = [a1 body];
      sub_219BF5214();

      v25 = sub_219BF5224();
      v27 = v26;

      v28 = sub_2186D1058(v25, v27, v38);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_2186C1000, v20, v21, "PuzzleEmbedUpdateSettingsMessageHandler received invalid message %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x21CECF960](v23, -1, -1);
      MEMORY[0x21CECF960](v22, -1, -1);
    }

    goto LABEL_16;
  }

  v7 = objc_opt_self();
  sub_218A19674();
  v8 = sub_219BF5904();

  v38[0] = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v38];

  v10 = v38[0];
  if (!v9)
  {
    v29 = v10;
    v30 = sub_219BDB724();

    swift_willThrow();
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v31 = sub_219BE5434();
    __swift_project_value_buffer(v31, qword_280F625E0);
    v32 = v30;
    v20 = sub_219BE5414();
    v33 = sub_219BF61F4();

    if (!os_log_type_enabled(v20, v33))
    {

      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = v30;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_2186C1000, v20, v33, "Failed to create settingsData error: %@", v34, 0xCu);
    sub_218962D30(v35);
    MEMORY[0x21CECF960](v35, -1, -1);
    MEMORY[0x21CECF960](v34, -1, -1);

LABEL_16:
    return;
  }

  v11 = sub_219BDBA04();
  v13 = v12;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_puzzle);
    if (v15)
    {
      v16 = *(*(Strong + 32) + 56);
      swift_unknownObjectRetain();
      v17 = sub_219BDB9E4();
      v18 = [objc_msgSend(v15 puzzleType)];
      swift_unknownObjectRelease();
      if (!v18)
      {
        sub_219BF5414();
        v18 = sub_219BF53D4();
      }

      [v16 setSettingsData:v17 puzzleTypeID:v18];

      sub_2186C6190(v11, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_2186C6190(v11, v13);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_2186C6190(v11, v13);
  }
}

void sub_219962E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219962EA0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_219BDBA04();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_218822A5C(v4, v8);
}

uint64_t sub_219962F4C()
{
  v1 = sub_219BDAF64();
  v24 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5E64(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  if (qword_280EE9540 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    if (qword_27CC08138 != -1)
    {
      swift_once();
    }

    sub_2199652A8(&qword_27CC215D8, v14, type metadata accessor for AudioFeedConfigService);
    sub_219BDC7D4();
    sub_219BDB914();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_2187BCB98(v6, &unk_280EE9D00, MEMORY[0x277CC9260]);
      sub_219965128();
      swift_allocError();
      *v15 = xmmword_219C43520;
      sub_2186E5E64(0, &qword_280EE6E00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE2FF4();
    }

    else
    {
      (*(v8 + 32))(v13, v6, v7);
      (*(v8 + 16))(v11, v13, v7);
      v20 = sub_219BDAF44();
      MEMORY[0x28223BE20](v20);
      *(&v23 - 2) = v3;
      sub_219BE3204();
      v21 = sub_219BE2E54();
      type metadata accessor for AudioFeedContentConfig();
      v22 = sub_219BE2F94();

      (*(v8 + 8))(v13, v7);
      (*(v24 + 8))(v3, v1);
      return v22;
    }
  }

  else
  {
    sub_219965020();
    sub_219BE3204();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_2199650D4;
    *(v17 + 24) = v0;

    v18 = sub_219BE2E54();
    type metadata accessor for AudioFeedContentConfig();
    v19 = sub_219BE2F64();

    return v19;
  }
}

uint64_t sub_2199634C0(uint64_t a1)
{
  sub_2186F85E8(0, &qword_280EE6E08, &type metadata for AudioFeedConfigService.CKResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  sub_219BE2F04();

  v2 = sub_219BE2E54();
  sub_219BE3064();

  v3 = [*(a1 + 32) possiblyUnfetchedAppConfiguration];
  if (([v3 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v4 = [v3 audioFeedConfigRequestsEnabled];
  swift_unknownObjectRelease();
  if ((v4 & 1) == 0)
  {
LABEL_5:
    sub_219965128();
    swift_allocError();
    *v5 = xmmword_219C43500;
    sub_2186F85E8(0, &qword_280EE6E10, &type metadata for AudioFeedConfigService.NewsEdgeResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE2FF4();
    goto LABEL_6;
  }

  sub_2186F85E8(0, &qword_280EE6E10, &type metadata for AudioFeedConfigService.NewsEdgeResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
LABEL_6:
  sub_219BE2F04();

  v6 = sub_219BE2E54();
  sub_219BE3064();

  v7 = sub_219BE2E54();
  v8 = sub_219BE2E34();

  return v8;
}

double sub_219963740@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_219C87330;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

double sub_219963754@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_219C87330;
  return result;
}

uint64_t sub_219963764(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for AudioFeedContentConfig();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v22 - v18;
  v20 = v22[1];
  sub_2199638DC(a1, a2, a3, a4, a5, a6, v22 - v18);
  if (!v20)
  {
    sub_219430B14(v19, v17);
    sub_2186E5E64(0, &qword_280EE6E00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D6CF30]);
    swift_allocObject();
    a7 = sub_219BE3014();
    sub_21996517C(v19, type metadata accessor for AudioFeedContentConfig);
  }

  return a7;
}

uint64_t sub_2199638DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v46 = a5;
  v47 = a3;
  v45 = a7;
  v13 = MEMORY[0x277D83D88];
  sub_2186E5E64(0, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v41 = &v40 - v15;
  v16 = type metadata accessor for LegacyAudioConfig();
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x28223BE20](v16);
  v42 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5E64(0, qword_280ED5EB0, type metadata accessor for LegacyAudioConfig, v13);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = type metadata accessor for AudioFeedContentConfig();
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v28 = a2;
  v29 = a2;
  v30 = v47;
  v31 = v48;
  result = sub_219964624(v46, a6, v8, v27, v29, v26);
  if (!v31)
  {
    v40 = v24;
    v46 = v26;
    v33 = v42;
    v48 = 0;
    sub_219964A78(v28, v30, a4, v23);
    sub_2199651DC(v23, v21, qword_280ED5EB0, type metadata accessor for LegacyAudioConfig);
    if ((*(v43 + 48))(v21, 1, v44) == 1)
    {
      sub_2187BCB98(v23, qword_280ED5EB0, type metadata accessor for LegacyAudioConfig);
      v34 = v45;
      v35 = v46;
    }

    else
    {
      v36 = v23;
      sub_2199652F0(v21, v33, type metadata accessor for LegacyAudioConfig);
      v37 = v41;
      v35 = v46;
      sub_2199651DC(&v46[*(v40 + 24)], v41, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
      v38 = type metadata accessor for LegacyAudioFeedConfiguration();
      v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
      sub_2187BCB98(v37, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
      if (v39 == 1)
      {
        sub_2189DF524(v33, v45);
        sub_21996517C(v33, type metadata accessor for LegacyAudioConfig);
        sub_2187BCB98(v36, qword_280ED5EB0, type metadata accessor for LegacyAudioConfig);
        return sub_21996517C(v35, type metadata accessor for AudioFeedContentConfig);
      }

      sub_21996517C(v33, type metadata accessor for LegacyAudioConfig);
      v21 = v36;
      v34 = v45;
    }

    sub_2187BCB98(v21, qword_280ED5EB0, type metadata accessor for LegacyAudioConfig);
    return sub_2199652F0(v35, v34, type metadata accessor for AudioFeedContentConfig);
  }

  return result;
}

uint64_t sub_219963D70()
{
  type metadata accessor for AudioFeedContentConfig();
  sub_2199652A8(&qword_280EC8F50, 255, type metadata accessor for AudioFeedContentConfig);
  return sub_219BE1974();
}

void sub_219963E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 24);
  v12 = objc_allocWithZone(MEMORY[0x277D30E40]);

  v13 = [v12 initWithContext_];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_219965374;
  v14[5] = v10;
  v16[4] = sub_2199653B0;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_21996423C;
  v16[3] = &block_descriptor_17_7;
  v15 = _Block_copy(v16);

  [v13 setFetchCompletionHandler_];
  _Block_release(v15);
  [v13 start];
}

void sub_219963F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7, void (*a8)(uint64_t, unint64_t, uint64_t, unint64_t), uint64_t a9)
{
  v39 = a2;
  v15 = sub_219BF5474();
  MEMORY[0x28223BE20](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v19 = a5;
    (a6)(a5);
    v20 = a5;
LABEL_3:

    return;
  }

  v36[2] = a3;
  v37 = a8;
  v38 = a9;
  if (!v39)
  {
    sub_219965128();
    v30 = swift_allocError();
    *v31 = xmmword_219C14A10;
    a6();
    v20 = v30;
    goto LABEL_3;
  }

  v21 = v16;

  sub_219BF5464();
  v22 = a1;
  v23 = sub_219BF5424();
  v25 = v24;
  v26 = *(v21 + 8);
  v36[1] = v21 + 8;
  v26(v18, v15);
  if (v25 >> 60 == 15)
  {
    sub_219965128();
    v27 = swift_allocError();
    v28 = v39;
    *v29 = v22;
    v29[1] = v28;
    a6();
  }

  else
  {

    if (a4)
    {
      sub_219BF5464();
      v32 = sub_219BF5424();
      v34 = v33;
      v26(v18, v15);
    }

    else
    {
      v32 = 0;
      v34 = 0xF000000000000000;
    }

    v35 = v37;
    sub_218B87528(v23, v25);
    v35(v23, v25, v32, v34);
    sub_2186C6190(v23, v25);
    sub_218822A5C(v32, v34);
    sub_218822A5C(v23, v25);
  }
}

uint64_t sub_21996423C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_219BF5414();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_219BF5414();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);
}

void sub_21996430C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_219BE3184();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 40);
  sub_219BE1F84();

  sub_219BE1F54();
  v16 = sub_219BE1F24();

  sub_219BF5064();
  sub_219BE3134();
  (*(v11 + 8))(v13, v10);
  v17 = sub_219BF53D4();

  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = sub_218AB15BC;
  v18[5] = v14;
  aBlock[4] = sub_219965368;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_219962EA0;
  aBlock[3] = &block_descriptor_189;
  v19 = _Block_copy(aBlock);

  [v15 fetchAudioFeedConfigIfNeededWithCompletionQueue:v16 formatVersion:v17 completion:v19];
  _Block_release(v19);
}

void sub_219964540(uint64_t a1, unint64_t a2, id a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t, unint64_t))
{
  if (a3)
  {
    v7 = a3;
    v8 = a3;
    v9 = v7;
LABEL_5:
    a4(v9);

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_219965128();
    v9 = swift_allocError();
    v7 = v9;
    *v10 = xmmword_219C0A870;
    goto LABEL_5;
  }

  sub_218B87528(a1, a2);
  a6(a1, a2);

  sub_218822A5C(a1, a2);
}

uint64_t sub_219964624@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a6;
  v29 = a4;
  v10 = MEMORY[0x277D83D88];
  sub_2186E5E64(0, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  sub_2186E5E64(0, &qword_280EC90C8, type metadata accessor for AudioFeedConfigService.NewsEdgeConfig, v10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = type metadata accessor for AudioFeedConfigService.NewsEdgeConfig();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v21 = v30;
  }

  else
  {
    v26 = a3;
    v27 = a5;
    sub_218B87528(a1, a2);
    sub_2199652A8(&qword_27CC215E0, 255, type metadata accessor for AudioFeedConfigService.NewsEdgeConfig);
    v22 = v30;
    sub_219BE1974();
    if (!v22)
    {
      sub_218822A5C(a1, a2);
      (*(v18 + 56))(v16, 0, 1, v17);
      sub_2199652F0(v16, v20, type metadata accessor for AudioFeedConfigService.NewsEdgeConfig);
      v13 = v20;
      return sub_2199652F0(v13, v28, type metadata accessor for AudioFeedContentConfig);
    }

    sub_218822A5C(a1, a2);
    (*(v18 + 56))(v16, 1, 1, v17);
    sub_2187BCB98(v16, &qword_280EC90C8, type metadata accessor for AudioFeedConfigService.NewsEdgeConfig);
    v21 = 0;
    a5 = v27;
  }

  if (a5 >> 60 == 15)
  {
LABEL_8:
    sub_219965128();
    swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    return swift_willThrow();
  }

  v23 = type metadata accessor for AudioFeedContentConfig();
  sub_2199652A8(&qword_280EC8F50, 255, type metadata accessor for AudioFeedContentConfig);
  sub_219BE1974();
  if (v21)
  {

    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    sub_2187BCB98(v13, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig);
    goto LABEL_8;
  }

  (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
  return sub_2199652F0(v13, v28, type metadata accessor for AudioFeedContentConfig);
}

uint64_t sub_219964A78@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_2186E5E64(0, qword_280ED5EB0, type metadata accessor for LegacyAudioConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  if (a1 >> 60 == 15 || a3 >> 60 == 15)
  {
    v12 = type metadata accessor for LegacyAudioConfig();
    v13 = *(*(v12 - 8) + 56);

    return v13(a4, 1, 1, v12);
  }

  else
  {
    v11 = type metadata accessor for LegacyAudioConfig();
    sub_218B87528(a2, a3);
    sub_2199652A8(&qword_280ED5EF8, 255, type metadata accessor for LegacyAudioConfig);
    sub_219BE1974();
    sub_218822A5C(a2, a3);
    v14 = *(*(v11 - 8) + 56);
    v14(v10, 0, 1, v11);
    sub_2199652F0(v10, a4, type metadata accessor for LegacyAudioConfig);
    return (v14)(a4, 0, 1, v11);
  }
}

uint64_t sub_219964D2C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219964D7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for AudioFeedContentConfig();
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21996569C();
  v7 = v6;
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioFeedConfigService.NewsEdgeConfig();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199656F8();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v17;
    sub_2199652A8(&qword_280EC8F50, 255, type metadata accessor for AudioFeedContentConfig);
    v14 = v18;
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    sub_2199652F0(v14, v12, type metadata accessor for AudioFeedContentConfig);
    sub_2199652F0(v12, v16, type metadata accessor for AudioFeedConfigService.NewsEdgeConfig);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_219965020()
{
  if (!qword_280EC9040)
  {
    v0 = MEMORY[0x277D83D88];
    sub_2186F85E8(255, &qword_280EC9048, &type metadata for AudioFeedConfigService.CKResult, MEMORY[0x277D83D88]);
    sub_2186F85E8(255, qword_280EC9060, &type metadata for AudioFeedConfigService.NewsEdgeResult, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EC9040);
    }
  }
}

unint64_t sub_219965128()
{
  result = qword_280EC9050;
  if (!qword_280EC9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC9050);
  }

  return result;
}

uint64_t sub_21996517C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2199651DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186E5E64(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for AudioFeedConfigService.NewsEdgeConfig()
{
  result = qword_280EC90D0;
  if (!qword_280EC90D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2199652A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2199652F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219965374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return v5(v7);
}

uint64_t sub_219965404()
{
  result = type metadata accessor for AudioFeedContentConfig();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI222AudioFeedConfigServiceC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2199654A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_2199654FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_219965578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000219D40190 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_219BF78F4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21996560C(uint64_t a1)
{
  v2 = sub_2199656F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219965648(uint64_t a1)
{
  v2 = sub_2199656F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21996569C()
{
  if (!qword_27CC215E8)
  {
    sub_2199656F8();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC215E8);
    }
  }
}

unint64_t sub_2199656F8()
{
  result = qword_27CC215F0;
  if (!qword_27CC215F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC215F0);
  }

  return result;
}

unint64_t sub_219965760()
{
  result = qword_27CC215F8;
  if (!qword_27CC215F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC215F8);
  }

  return result;
}

unint64_t sub_2199657B8()
{
  result = qword_27CC21600;
  if (!qword_27CC21600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21600);
  }

  return result;
}

unint64_t sub_219965810()
{
  result = qword_27CC21608;
  if (!qword_27CC21608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21608);
  }

  return result;
}

uint64_t sub_21996586C(void *a1)
{
  if (!a1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_219BDB5E4();
    goto LABEL_7;
  }

  v1 = a1;
  v2 = [v1 feedType];
  if (v2 < 7 || v2 <= 0xE && (((1 << v2) & 0x7600) != 0 || v2 == 8 || v2 == 11) || v2 == 7)
  {
    type metadata accessor for Localized();
    v3 = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_219BDB5E4();

LABEL_7:
    return v5;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

void *sub_219965BA8(void *result)
{
  if (result)
  {
    v1 = result;
    switch([v1 feedType])
    {
      case 0uLL:
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:

        result = 0;
        break;
      case 7uLL:
      case 8uLL:
      case 0xBuLL:
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v3 = [objc_opt_self() bundleForClass_];
        v4 = sub_219BDB5E4();

        result = v4;
        break;
      default:
        result = sub_219BF7514();
        __break(1u);
        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for TopicTodayFeedGroupKnobs()
{
  result = qword_280EBFCA8;
  if (!qword_280EBFCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219965E6C()
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
        sub_2186E4FBC(319);
        if (v3 <= 0x3F)
        {
          sub_218D1D174();
          if (v4 <= 0x3F)
          {
            sub_218CC4F9C();
            if (v5 <= 0x3F)
            {
              sub_2186F95C4();
              if (v6 <= 0x3F)
              {
                sub_2186ECA28();
                if (v7 <= 0x3F)
                {
                  sub_218CC4F34();
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

uint64_t sub_219965FB0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v113 = a2;
  sub_2189AE9B4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = v96 - v8;
  sub_2189AE994(0);
  v10 = v9;
  v11 = *(v9 - 1);
  v12 = MEMORY[0x28223BE20](v9);
  v108 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = v96 - v14;
  sub_2186E4FBC(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v119 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v118 = v96 - v19;
  MEMORY[0x28223BE20](v18);
  v117 = v96 - v20;
  sub_2189AF700(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v109 = v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v100 = v96 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v122 = v96 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = v96 - v28;
  sub_2189AF720(0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v106 = v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v97 = v96 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v123 = v96 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = v96 - v37;
  v111 = v11[2];
  v111(v96 - v37, v2, v10);
  v110 = v11;
  v105 = v11[7];
  v115 = v38;
  v39 = v38;
  v40 = v10;
  v105(v39, 0, 1, v10);
  v41 = type metadata accessor for TopicTodayFeedGroupKnobs();
  v42 = v41[5];
  v103 = v5[2];
  v103(v29, v2 + v42, v4);
  v114 = v5;
  v102 = v5[7];
  v116 = v29;
  v43 = v29;
  v44 = v122;
  v102(v43, 0, 1, v4);
  v45 = v123;
  v111(v123, v2 + v41[6], v40);
  v111 = v40;
  v105(v45, 0, 1, v40);
  v46 = v2;
  v103(v44, v2 + v41[7], v4);
  v47 = v4;
  v102(v44, 0, 1, v4);
  v48 = v104;
  if (*v104)
  {
    v105 = *v104;
  }

  else
  {
    v105 = *(v46 + v41[8]);
  }

  v49 = v46;
  v50 = v41[9];
  v51 = type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides();
  v52 = v51[5];

  v53 = &v48[v52];
  v54 = v48;
  sub_219968B68(v46 + v50, v53, v117);
  sub_219968B68(v46 + v41[10], &v48[v51[6]], v118);
  v55 = sub_219968B68(v46 + v41[11], &v48[v51[7]], v119);
  v56 = *&v48[v51[8]];
  v120 = v47;
  if (v56)
  {
    v104 = v56;
  }

  else
  {
    v104 = *(v49 + v41[12]);
  }

  v57 = *(v49 + v41[13]);
  if (*&v48[v51[9]])
  {
    v102 = *&v48[v51[9]];
  }

  else
  {
    v102 = *(v49 + v41[14]);
  }

  if (*&v48[v51[10]])
  {
    v101 = *&v48[v51[10]];
  }

  else
  {
    v101 = *(v49 + v41[15]);
  }

  if (*&v48[v51[11]])
  {
    v99 = *&v48[v51[11]];
  }

  else
  {
    v99 = *(v49 + v41[16]);
  }

  v58 = *(v49 + v41[17]);
  v59 = *&v54[v51[12]];
  v121 = v41;
  v103 = v57;
  if (v59)
  {
    v96[1] = v96;
    MEMORY[0x28223BE20](v55);
    sub_219BF0204();
    v60 = v58;
    sub_219BEF814();

    v61 = sub_219BF5254();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v60;
    sub_219969D1C(v61, sub_218CC7128, 0, isUniquelyReferenced_nonNull_native, v124);

    v58 = v124[0];
  }

  else
  {
  }

  v63 = v113;
  v64 = v120;
  v66 = v110;
  v65 = v111;
  v67 = v100;
  v68 = v98;
  v113 = v58;
  v69 = v97;
  sub_219504A40(v115, v97, sub_2189AF720);
  v70 = v66[6];
  v71 = (v70)(v69, 1, v65);
  v111 = v70;
  if (v71 == 1)
  {
    v72 = v69;
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    sub_219BEE974();
    v73 = (v70)(v69, 1, v65);
    v74 = v114;
    if (v73 != 1)
    {
      sub_2195049E0(v72, sub_2189AF720);
    }
  }

  else
  {
    (v66[4])(v68, v69, v65);
    v74 = v114;
  }

  v100 = v66[4];
  (v100)(v63, v68, v65);
  sub_219504A40(v116, v67, sub_2189AF700);
  v75 = v74[6];
  v76 = v75(v67, 1, v64);
  v77 = v107;
  v110 = v75;
  if (v76 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v74 = v114;
    sub_219BEEC74();
    if (v75(v67, 1, v64) != 1)
    {
      sub_2195049E0(v67, sub_2189AF700);
    }
  }

  else
  {
    (v74[4])(v107, v67, v64);
  }

  v78 = v63 + v121[5];
  v114 = v74[4];
  (v114)(v78, v77, v64);
  v79 = v106;
  sub_219504A40(v123, v106, sub_2189AF720);
  v80 = v111;
  if ((v111)(v79, 1, v65) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v81 = v108;
    sub_219BEE974();
    v82 = v80(v79, 1, v65);
    v83 = v81;
    v84 = v112;
    v85 = v100;
    if (v82 != 1)
    {
      sub_2195049E0(v79, sub_2189AF720);
    }
  }

  else
  {
    v83 = v108;
    v85 = v100;
    (v100)(v108, v79, v65);
    v84 = v112;
  }

  v85(v63 + v121[6], v83, v65);
  v86 = v109;
  sub_219504A40(v122, v109, sub_2189AF700);
  v87 = v120;
  v88 = v110;
  if (v110(v86, 1, v120) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    sub_219BEEC74();
    v89 = v88(v86, 1, v87);
    v90 = v114;
    if (v89 != 1)
    {
      sub_2195049E0(v86, sub_2189AF700);
    }
  }

  else
  {
    v90 = v114;
    (v114)(v84, v86, v87);
  }

  v91 = v121;
  v90(v63 + v121[7], v84, v87);
  *(v63 + v91[8]) = v105;
  v92 = v117;
  sub_219504A40(v117, v63 + v91[9], sub_2186E4FBC);
  v93 = v118;
  sub_219504A40(v118, v63 + v91[10], sub_2186E4FBC);
  v94 = v119;
  sub_219504A40(v119, v63 + v91[11], sub_2186E4FBC);
  *(v63 + v91[12]) = v104;
  *(v63 + v91[13]) = v103;
  *(v63 + v91[14]) = v102;
  *(v63 + v91[15]) = v101;
  *(v63 + v91[16]) = v99;
  sub_2195049E0(v94, sub_2186E4FBC);
  sub_2195049E0(v93, sub_2186E4FBC);
  sub_2195049E0(v92, sub_2186E4FBC);
  sub_2195049E0(v122, sub_2189AF700);
  sub_2195049E0(v123, sub_2189AF720);
  sub_2195049E0(v116, sub_2189AF700);
  result = sub_2195049E0(v115, sub_2189AF720);
  *(v63 + v91[17]) = v113;
  return result;
}