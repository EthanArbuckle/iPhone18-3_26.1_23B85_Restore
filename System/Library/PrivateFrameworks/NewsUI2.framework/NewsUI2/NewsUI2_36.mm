uint64_t sub_218ABE6A0()
{
  v1 = v0;
  sub_2186EB308();
  v3 = v2;
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v7 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218AC2A34(v1, v17, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v12 + 32))(v14, v17, v11);
      v20 = sub_219BF07B4();
      (*(v12 + 8))(v14, v11);
    }

    else
    {
      v20 = *v17;
      sub_2186F8128();
      sub_218AC1B9C(v17 + *(v21 + 48), type metadata accessor for SearchFeedGapLocation);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v22 = v24;
    (*(v24 + 32))(v9, v17, v7);
    v20 = sub_219BF07B4();
    (*(v22 + 8))(v9, v7);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v19 = v25;
    (*(v25 + 32))(v5, v17, v3);
    v20 = sub_219BF07B4();
    (*(v19 + 8))(v5, v3);
  }

  else
  {
    v20 = sub_219BE5B24();
  }

  return v20;
}

uint64_t sub_218ABEA28(uint64_t a1, uint64_t a2)
{
  v4 = sub_218ABDF74(&qword_280EDF490, type metadata accessor for SearchModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218ABEBCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v2, v6, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2186EB018();
      v15 = v14;
      v16 = *(v14 - 8);
      (*(v16 + 32))(a1, v6, v14);
      return (*(v16 + 56))(a1, 0, 1, v15);
    }

    sub_2186F8128();
    v10 = type metadata accessor for SearchFeedGapLocation;
    v11 = &v6[*(v9 + 48)];
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2186EAB88();
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v10 = type metadata accessor for SearchModel;
    v11 = v6;
LABEL_10:
    sub_218AC1B9C(v11, v10);
    goto LABEL_11;
  }

  sub_2186EB308();
LABEL_8:
  (*(*(v8 - 8) + 8))(v6, v8);
LABEL_11:
  sub_2186EB018();
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

uint64_t sub_218ABEDF4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_219BF0B74();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v41 = v3;
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF0F34();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v9 = v8;
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF04A4();
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v45, v22, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33 = v35;
      (*(v35 + 32))(v11, v22, v9);
      sub_219BF07D4();
      sub_219BF0F04();
      (*(v36 + 8))(v7, v37);
      return (*(v33 + 8))(v11, v9);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v25 = v38;
      v24 = v39;
      v26 = v41;
      (*(v39 + 32))(v38, v22, v41);
      v27 = v40;
      sub_219BF07D4();
      sub_219BF0B54();
      (*(v42 + 8))(v27, v43);
      return (*(v24 + 8))(v25, v26);
    }

    v31 = type metadata accessor for SearchModel;
    v32 = v22;
    goto LABEL_9;
  }

  v29 = v44;
  if (!EnumCaseMultiPayload)
  {

    sub_2186F8128();
    v31 = type metadata accessor for SearchFeedGapLocation;
    v32 = &v22[*(v30 + 48)];
LABEL_9:
    sub_218AC1B9C(v32, v31);
    v34 = sub_219BEAF84();
    return (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
  }

  (*(v17 + 32))(v19, v22, v16);
  sub_219BF07D4();
  sub_219BF0454();
  (*(v29 + 8))(v14, v12);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_218ABF394()
{
  v1 = v0;
  v2 = sub_219BF0B74();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF04A4();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v10 = v9;
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2B34();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0F34();
  v44 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v57 = *(v18 - 8);
  v58 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v1, v23, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v31 = v8;
    v33 = v55;
    v32 = v56;
    v34 = v54;
    if (EnumCaseMultiPayload)
    {
      (*(v54 + 32))(v12, v23, v10);
      sub_219BF07D4();
      sub_219BF0404();
      (*(v33 + 8))(v31, v32);
      sub_218AC1BFC(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
      sub_219BE6364();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_219C09EC0;
      sub_219BE6334();
      sub_219BE6324();
      swift_unknownObjectRelease();
      (*(v34 + 8))(v12, v10);
      return v30;
    }

    sub_2186F8128();
    v36 = type metadata accessor for SearchFeedGapLocation;
    v37 = &v23[*(v35 + 48)];
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v38 = *(v57 + 32);
    v43 = v20;
    v38(v20, v23, v58);
    sub_219BF07D4();
    sub_219BF0F14();
    (*(v44 + 8))(v17, v15);
    sub_218AC1BFC(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
    v56 = 2 * *(*(sub_219BE6364() - 8) + 72);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C0B8C0;
    swift_unknownObjectRetain();
    sub_218ABE6A0();
    v39 = v45;
    sub_219BF2B14();
    sub_219BE62F4();
    v40 = v50;
    v41 = *(v49 + 8);
    v41(v39, v50);
    swift_unknownObjectRetain();
    sub_218ABE6A0();
    sub_219BF2B14();
    sub_219BE6344();
    v41(v39, v40);
    sub_219BE6314();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v43, v58);
    return v30;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v36 = type metadata accessor for SearchModel;
    v37 = v23;
LABEL_9:
    sub_218AC1B9C(v37, v36);
    return MEMORY[0x277D84F90];
  }

  v26 = v51;
  v25 = v52;
  v27 = v53;
  (*(v52 + 32))(v51, v23, v53);
  v28 = v46;
  sub_219BF07D4();
  v29 = sub_219BF0B44();
  (*(v47 + 8))(v28, v48);
  sub_218AC1BFC(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  sub_219BE6364();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C0B8C0;
  sub_219BE6354();
  sub_219BE62D4();
  sub_219BE6304();

  (*(v25 + 8))(v26, v27);
  return v30;
}

uint64_t sub_218ABFCC0()
{
  v1 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v0, v3, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {

      sub_2186F8128();
      sub_218AC1B9C(&v3[*(v6 + 48)], type metadata accessor for SearchFeedGapLocation);
      return 0;
    }

    sub_2186EB018();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2186EAB88();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_2186EB308();
LABEL_10:
    (*(*(v5 - 8) + 8))(v3, v5);
    return 1;
  }

  sub_218AC1B9C(v3, type metadata accessor for SearchModel);
  return 1;
}

uint64_t sub_218ABFE2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v2, v6, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2186EB018();
      goto LABEL_11;
    }

    sub_2186F8128();
    v10 = type metadata accessor for SearchFeedGapLocation;
    v11 = &v6[*(v9 + 48)];
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2186EAB88();
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2186EB308();
LABEL_11:
      (*(*(v8 - 8) + 8))(v6, v8);
      v12 = MEMORY[0x277D6D5E0];
      goto LABEL_12;
    }

    v10 = type metadata accessor for SearchModel;
    v11 = v6;
  }

  sub_218AC1B9C(v11, v10);
  v12 = MEMORY[0x277D6D5D8];
LABEL_12:
  v13 = *v12;
  v14 = sub_219BE63D4();
  return (*(*(v14 - 8) + 104))(a1, v13, v14);
}

uint64_t sub_218ABFFE4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  sub_2186EB308();
  v4 = v3;
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v8 = v7;
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218AC2A34(v2, v18, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v13 + 32))(v15, v18, v12);
      v32 = v38;
      sub_219BF07D4();
      (*(v13 + 8))(v15, v12);
      v33 = *MEMORY[0x277D32DC0];
      v34 = sub_219BF0614();
      return (*(*(v34 - 8) + 104))(v32, v33, v34);
    }

    else
    {
      sub_2186F8128();
      v24 = *(v23 + 48);
      v25 = v38;
      sub_219BF03C4();
      v26 = *MEMORY[0x277D32DB8];
      v27 = sub_219BF0614();
      (*(*(v27 - 8) + 104))(v25, v26, v27);
      return sub_218AC1B9C(v18 + v24, type metadata accessor for SearchFeedGapLocation);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v29 = v36;
      (*(v36 + 32))(v10, v18, v8);
      v21 = v38;
      sub_219BF07D4();
      (*(v29 + 8))(v10, v8);
      v22 = MEMORY[0x277D32E10];
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v20 = v37;
      (*(v37 + 32))(v6, v18, v4);
      v21 = v38;
      sub_219BF07D4();
      (*(v20 + 8))(v6, v4);
      v22 = MEMORY[0x277D32DF0];
    }

    else
    {
      v21 = v38;
      *v38 = *v18;
      v22 = MEMORY[0x277D32DE0];
    }

    v30 = *v22;
    v31 = sub_219BF0614();
    return (*(*(v31 - 8) + 104))(v21, v30, v31);
  }
}

uint64_t sub_218AC0448()
{
  v1 = sub_219BF0614();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v0, v7, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2186EAB88();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        sub_218AC1B9C(v7, type metadata accessor for SearchModel);
LABEL_11:
        sub_218ABFFE4(v4);
        v11 = sub_219BF05A4();
        (*(v2 + 8))(v4, v1);
        return v11;
      }

      sub_2186EB308();
    }

LABEL_10:
    (*(*(v9 - 8) + 8))(v7, v9);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {
    sub_2186EB018();
    goto LABEL_10;
  }

  sub_2186F8128();
  sub_218AC1B9C(&v7[*(v10 + 48)], type metadata accessor for SearchFeedGapLocation);
  return 0;
}

uint64_t sub_218AC0670@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6D588];
  v3 = sub_219BE6244();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_218AC06E4()
{
  v1 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v0, v3, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {

      sub_2186F8128();
      sub_218AC1B9C(&v3[*(v6 + 48)], type metadata accessor for SearchFeedGapLocation);
      return 1;
    }

    sub_2186EB018();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2186EAB88();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_2186EB308();
LABEL_10:
    (*(*(v5 - 8) + 8))(v3, v5);
    return 0;
  }

  sub_218AC1B9C(v3, type metadata accessor for SearchModel);
  return 0;
}

uint64_t sub_218AC0850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a1;
  sub_2186EB308();
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v60 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v61 = &v56 - v19;
  sub_2186EAB88();
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v57 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v56 - v23;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v70 = a6;
  v71 = a7;
  v72 = a8;
  v73 = a9;
  v25 = sub_219BE57D4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v56 - v27;
  sub_2186EB018();
  v30 = v29;
  v31 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v56 - v35;
  v37 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v37);
  v39 = &v56 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v65, v39, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v31 + 32))(v36, v39, v30);
      (*(v31 + 16))(v34, v36, v30);
      (*(v26 + 16))(v28, v64, v25);
      WitnessTable = swift_getWitnessTable();
      v46 = sub_2198765A8(v34, v28, v25, WitnessTable);
      (*(v31 + 8))(v36, v30);
      return v46;
    }

    sub_2186F8128();
    v48 = type metadata accessor for SearchFeedGapLocation;
    v49 = &v39[*(v47 + 48)];
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v51 = v58;
    v50 = v59;
    (*(v58 + 32))(v24, v39, v59);
    v52 = v57;
    (*(v51 + 16))(v57, v24, v50);
    (*(v26 + 16))(v28, v64, v25);
    v53 = swift_getWitnessTable();
    v46 = sub_2198765DC(v52, v28, MEMORY[0x277D84FA0], v25, v53);
    (*(v51 + 8))(v24, v50);
    return v46;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v48 = type metadata accessor for SearchModel;
    v49 = v39;
LABEL_10:
    sub_218AC1B9C(v49, v48);
    return 0;
  }

  v42 = v61;
  v41 = v62;
  v43 = v63;
  (*(v62 + 32))(v61, v39, v63);
  v44 = v60;
  (*(v41 + 16))(v60, v42, v43);
  (*(v26 + 16))(v28, v64, v25);
  v45 = swift_getWitnessTable();
  v46 = sub_219876610(v44, v28, v25, v45);
  (*(v41 + 8))(v42, v43);
  return v46;
}

uint64_t sub_218AC0E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v46 = a5;
  v47 = a8;
  v45 = a4;
  v48 = a2;
  v49 = a3;
  v50 = a6;
  v51 = a7;
  v15 = sub_219BEB334();
  v44 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v10, v20, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v43 = v15;
      sub_2186EB018();
      goto LABEL_11;
    }

    sub_2186F8128();
    v24 = type metadata accessor for SearchFeedGapLocation;
    v25 = &v20[*(v23 + 48)];
LABEL_9:
    sub_218AC1B9C(v25, v24);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v43 = v15;
    sub_2186EAB88();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v24 = type metadata accessor for SearchModel;
    v25 = v20;
    goto LABEL_9;
  }

  v43 = v15;
  sub_2186EB308();
LABEL_11:
  (*(*(v22 - 8) + 8))(v20, v22);
  sub_218AC1BFC(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_219C09BA0;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_219C0EE20;
  v28 = sub_219BE6684();
  v29 = sub_219BE6654();
  if (v29)
  {
    v30 = MEMORY[0x277D6D630];
    v31 = v28;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
  }

  *(v27 + 32) = v29;
  *(v27 + 56) = v31;
  *(v27 + 64) = v30;
  v32 = sub_219BE6634();
  if (v32)
  {
    v33 = MEMORY[0x277D6D630];
    v34 = v28;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    *(v27 + 80) = 0;
    *(v27 + 88) = 0;
  }

  *(v27 + 72) = v32;
  *(v27 + 96) = v34;
  *(v27 + 104) = v33;
  v35 = sub_219BE6614();
  if (v35)
  {
    v36 = MEMORY[0x277D6D630];
    v37 = v28;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    *(v27 + 120) = 0;
    *(v27 + 128) = 0;
  }

  *(v27 + 112) = v35;
  *(v27 + 136) = v37;
  *(v27 + 144) = v36;
  v48 = a2;
  v49 = a3;
  v50 = v45;
  v51 = v46;
  v52 = a6;
  v53 = a7;
  v54 = v47;
  v55 = a9;
  sub_219BE57D4();
  sub_219BE57C4();
  type metadata accessor for SearchFeedServiceConfig();
  sub_218ABDF74(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
  v38 = v43;
  v39 = sub_219BEB284();
  (*(v44 + 8))(v17, v38);
  sub_219BE57B4();
  v40 = sub_219BE6624();

  sub_21885AB78(v39);
  if (v40)
  {
    v41 = MEMORY[0x277D6D630];
  }

  else
  {
    v28 = 0;
    v41 = 0;
    *(v27 + 160) = 0;
    *(v27 + 168) = 0;
  }

  *(v27 + 152) = v40;
  *(v27 + 176) = v28;
  *(v27 + 184) = v41;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  return sub_219BE59D4();
}

uint64_t sub_218AC1320@<X0>(uint64_t *a1@<X8>)
{
  v69 = a1;
  v1 = sub_219BF0B74();
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x28223BE20](v1);
  v59 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC1C60(0);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF04A4();
  v67 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v11 = v10;
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF0F34();
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC1C94(0);
  MEMORY[0x28223BE20](v17 - 8);
  v58 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v57 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v68, v25, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v66;
    v37 = v67;
    if (EnumCaseMultiPayload)
    {
      (*(v66 + 32))(v13, v25, v11);
      sub_219BF07D4();
      sub_219BF0404();
      (*(v37 + 8))(v9, v7);
      v50 = sub_219BF09E4();
      v51 = v69;
      v69[3] = v50;
      v51[4] = sub_218ABDF74(&qword_280E90CA8, MEMORY[0x277D32FA8]);
      __swift_allocate_boxed_opaque_existential_1(v51);
      sub_219BF09D4();
      return (*(v36 + 8))(v13, v11);
    }

    sub_2186F8128();
    v39 = type metadata accessor for SearchFeedGapLocation;
    v40 = &v25[*(v38 + 48)];
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v28 = v62;
      v27 = v63;
      v29 = v64;
      (*(v63 + 32))(v62, v25, v64);
      v30 = v59;
      sub_219BF07D4();
      sub_219BF0B44();
      (*(v60 + 8))(v30, v61);
      v31 = v65;
      sub_219BED9C4();
      v32 = sub_219BED9D4();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v31, 1, v32) == 1)
      {
        (*(v27 + 8))(v28, v29);
        v34 = sub_218AC1C60;
        v35 = v31;
LABEL_10:
        result = sub_218AC1B9C(v35, v34);
        v48 = v69;
        *v69 = 0u;
        *(v48 + 1) = 0u;
        v48[4] = 0;
        return result;
      }

      v54 = v69;
      v69[3] = v32;
      v54[4] = sub_218ABDF74(&qword_27CC0D938, MEMORY[0x277D31CE8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
      (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
      return (*(v27 + 8))(v28, v29);
    }

    v39 = type metadata accessor for SearchModel;
    v40 = v25;
LABEL_12:
    result = sub_218AC1B9C(v40, v39);
    v49 = v69;
    v69[4] = 0;
    *v49 = 0u;
    *(v49 + 1) = 0u;
    return result;
  }

  v41 = v20;
  v42 = *(v20 + 32);
  v43 = v57;
  v42(v22, v25, v57);
  sub_219BF07D4();
  sub_219BF0F14();
  (*(v56 + 8))(v16, v14);
  v44 = v58;
  sub_219BF1624();
  v45 = sub_219BF1634();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    (*(v41 + 8))(v22, v43);
    v34 = sub_218AC1C94;
    v35 = v44;
    goto LABEL_10;
  }

  v52 = v69;
  v69[3] = v45;
  v52[4] = sub_218ABDF74(&qword_280E90860, MEMORY[0x277D33410]);
  v53 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(v46 + 32))(v53, v44, v45);
  return (*(v41 + 8))(v22, v43);
}

uint64_t sub_218AC1B9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218AC1BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218AC1CC8(uint64_t a1, uint64_t a2)
{
  sub_218ABE008();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_218AC29D4(0, &qword_27CC0D948, type metadata accessor for SearchFeedGapLocation);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - v14;
  v16 = *(v13 + 56);
  sub_218AC2A34(a1, &v22 - v14, type metadata accessor for SearchFeedGapLocation);
  sub_218AC2A34(a2, &v15[v16], type metadata accessor for SearchFeedGapLocation);
  type metadata accessor for SearchFeedGapLocation(0);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1 != 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_218AC1B9C(&v15[v16], type metadata accessor for SearchFeedGapLocation);
      sub_218AC1B9C(v15, type metadata accessor for SearchFeedGapLocation);
      v19 = 1;
      return v19 & 1;
    }

    sub_218AC1B9C(v15, type metadata accessor for SearchFeedGapLocation);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v6 + 8))(v15, v5);
LABEL_7:
    sub_218AC1B9C(&v15[v16], type metadata accessor for SearchFeedGapLocation);
    v19 = 0;
    return v19 & 1;
  }

  v18 = *(v6 + 32);
  v18(v11, v15, v5);
  v18(v9, &v15[v16], v5);
  type metadata accessor for SearchFeedServiceConfig();
  sub_218ABDF74(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
  v19 = sub_219BF0F64();
  v20 = *(v6 + 8);
  v20(v9, v5);
  v20(v11, v5);
  return v19 & 1;
}

uint64_t sub_218AC1FBC(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v74 = a2;
  sub_2186EB308();
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchFeedGapLocation(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v63 - v13;
  v15 = type metadata accessor for SearchModel(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v66 = &v63 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v65 = &v63 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v63 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v63 - v26);
  sub_218AC29D4(0, &qword_27CC0D940, type metadata accessor for SearchModel);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v63 - v30;
  v32 = (&v63 + *(v29 + 56) - v30);
  sub_218AC2A34(v73, &v63 - v30, type metadata accessor for SearchModel);
  sub_218AC2A34(v74, v32, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v43 = v25;
    v45 = v71;
    v44 = v72;
    if (EnumCaseMultiPayload)
    {
      sub_218AC2A34(v31, v43, type metadata accessor for SearchModel);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v54 = v44;
        (*(v45 + 32))(v8, v32, v44);
        sub_219BF04A4();
        v55 = MEMORY[0x277D32CE0];
        sub_218ABDF74(&unk_280E90F10, MEMORY[0x277D32CE0]);
        sub_218ABDF74(&unk_280E90F20, v55);
        v39 = sub_219BF07C4();
        v56 = *(v45 + 8);
        v56(v8, v54);
        v56(v43, v54);
        goto LABEL_28;
      }

      (*(v45 + 8))(v43, v44);
    }

    else
    {
      sub_218AC2A34(v31, v27, type metadata accessor for SearchModel);
      v47 = *v27;
      v46 = v27[1];
      sub_2186F8128();
      v49 = *(v48 + 48);
      if (!swift_getEnumCaseMultiPayload())
      {
        v60 = *v32;
        v59 = v32[1];
        sub_218AC2970(v27 + v49, v14);
        sub_218AC2970(v32 + v49, v12);
        if (v47 == v60 && v46 == v59)
        {
        }

        else
        {
          v61 = sub_219BF78F4();

          if ((v61 & 1) == 0)
          {
            sub_218AC1B9C(v12, type metadata accessor for SearchFeedGapLocation);
            sub_218AC1B9C(v14, type metadata accessor for SearchFeedGapLocation);
            sub_218AC1B9C(v31, type metadata accessor for SearchModel);
            goto LABEL_22;
          }
        }

        v39 = sub_218AC1CC8(v14, v12);
        sub_218AC1B9C(v12, type metadata accessor for SearchFeedGapLocation);
        sub_218AC1B9C(v14, type metadata accessor for SearchFeedGapLocation);
        goto LABEL_28;
      }

      sub_218AC1B9C(v27 + v49, type metadata accessor for SearchFeedGapLocation);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = v65;
      sub_218AC2A34(v31, v65, type metadata accessor for SearchModel);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v51 = v67;
        v50 = v68;
        v52 = v63;
        (*(v67 + 32))(v63, v32, v68);
        sub_219BF0F34();
        v53 = MEMORY[0x277D33058];
        sub_218ABDF74(&unk_280E90A40, MEMORY[0x277D33058]);
        sub_218ABDF74(&qword_280E90A50, v53);
        v39 = sub_219BF07C4();
        v40 = *(v51 + 8);
        v40(v52, v50);
        v41 = v34;
        v42 = v50;
        goto LABEL_11;
      }

      v58 = v67;
      v57 = v68;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        sub_218AC2A34(v31, v18, type metadata accessor for SearchModel);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          sub_219BE5BA4();
          v39 = sub_219BE5B74();

          goto LABEL_28;
        }

        goto LABEL_21;
      }

      v34 = v66;
      sub_218AC2A34(v31, v66, type metadata accessor for SearchModel);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v36 = v69;
        v35 = v70;
        v37 = v64;
        (*(v69 + 32))(v64, v32, v70);
        sub_219BF0B74();
        v38 = MEMORY[0x277D32FD0];
        sub_218ABDF74(&unk_280E90C70, MEMORY[0x277D32FD0]);
        sub_218ABDF74(&unk_280E90C80, v38);
        v39 = sub_219BF07C4();
        v40 = *(v36 + 8);
        v40(v37, v35);
        v41 = v34;
        v42 = v35;
LABEL_11:
        v40(v41, v42);
LABEL_28:
        sub_218AC1B9C(v31, type metadata accessor for SearchModel);
        return v39 & 1;
      }

      v58 = v69;
      v57 = v70;
    }

    (*(v58 + 8))(v34, v57);
  }

LABEL_21:
  sub_218AC28F8(v31);
LABEL_22:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_218AC28F8(uint64_t a1)
{
  sub_218AC29D4(0, &qword_27CC0D940, type metadata accessor for SearchModel);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218AC2970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedGapLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218AC29D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218AC2A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218AC2AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = sub_219BE3514();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2E08();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE38C4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v27 = &v27 - v14;
  sub_219BE8154();
  v16 = v15;
  sub_219BE7FF4();
  sub_219BF6034();
  v18 = v17;
  type metadata accessor for ChannelPickerEngagementModel();
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_219BE35A4();
  sub_219BE3AC4();
  (*(v4 + 8))(v6, v30);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_218AC2E60(v9);
  }

  else
  {
    v20 = *(v11 + 32);
    v21 = v27;
    v20(v27, v9, v10);
    v22 = v28;
    v20(v28, v21, v10);
    if ((*(v11 + 88))(v22, v10) == *MEMORY[0x277D31720])
    {
      result = (*(v11 + 96))(v22, v10);
      v23 = *(v22 + 1);
      goto LABEL_7;
    }

    result = (*(v11 + 8))(v22, v10);
  }

  v23 = 0.0;
LABEL_7:
  v24 = v16 - v18;
  v25 = 8.0;
  v26 = v23 + 8.0;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v23 <= 0.0)
  {
    v26 = 0.0;
  }

  *(a2 + 16) = v24;
  *(a2 + 24) = v26;
  if (v23 <= 0.0)
  {
    v25 = 0.0;
  }

  *(a2 + 32) = 0;
  *(a2 + 40) = v25;
  *(a2 + 48) = v24;
  *(a2 + 56) = v23;
  return result;
}

void sub_218AC2E08()
{
  if (!qword_280EE65C0)
  {
    sub_219BE38C4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE65C0);
    }
  }
}

uint64_t sub_218AC2E60(uint64_t a1)
{
  sub_218AC2E08();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SharedWithYouFeedSectionDescriptor()
{
  result = qword_27CC0D950;
  if (!qword_27CC0D950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218AC2F30()
{
  v0 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_218AC2F88()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC34B0(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 7364967;
  }

  sub_218AC3514(v8, v6);
  v9 = *v6;

  sub_218AC38B8(v6, type metadata accessor for ArticleListSharedWithYouFeedGroup);
  return v9;
}

uint64_t sub_218AC30F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC34B0(v5, v4);
  v6 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) != 1)
  {
    sub_218AC38B8(v4, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  }

  v7 = *MEMORY[0x277D31EA0];
  v8 = sub_219BEDDC4();
  return (*(*(v8 - 8) + 104))(a2, v7, v8);
}

uint64_t sub_218AC320C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC34B0(v5, v4);
  v6 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v8 = sub_219BF10E4();
  v9 = *(*(v8 - 8) + 104);
  if (v7 == 1)
  {
    return v9(a2, *MEMORY[0x277D33180], v8);
  }

  v9(a2, *MEMORY[0x277D33190], v8);
  return sub_218AC38B8(v4, type metadata accessor for SharedWithYouFeedSectionDescriptor);
}

uint64_t sub_218AC3354@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC34B0(v2, v10);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    sub_218AC3514(v10, v8);
    *(a1 + 24) = v4;
    *(a1 + 32) = sub_218AC3578();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_218AC3514(v8, boxed_opaque_existential_1);
  }

  return result;
}

uint64_t sub_218AC34B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AC3514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218AC3578()
{
  result = qword_27CC122D0;
  if (!qword_27CC122D0)
  {
    type metadata accessor for ArticleListSharedWithYouFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC122D0);
  }

  return result;
}

uint64_t sub_218AC35D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SharedWithYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC3854();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_218AC34B0(a1, v14);
  sub_218AC34B0(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    v17 = 1;
    v18 = v16(&v14[v15], 1, v4);
    v19 = type metadata accessor for SharedWithYouFeedSectionDescriptor;
    if (v18 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_218AC34B0(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_218AC3514(&v14[v15], v7);
      v17 = sub_219BED814();
      sub_218AC38B8(v7, type metadata accessor for ArticleListSharedWithYouFeedGroup);
      sub_218AC38B8(v10, type metadata accessor for ArticleListSharedWithYouFeedGroup);
      v19 = type metadata accessor for SharedWithYouFeedSectionDescriptor;
      goto LABEL_8;
    }

    sub_218AC38B8(v10, type metadata accessor for ArticleListSharedWithYouFeedGroup);
  }

  v17 = 0;
  v19 = sub_218AC3854;
LABEL_8:
  sub_218AC38B8(v14, v19);
  return v17 & 1;
}

void sub_218AC3854()
{
  if (!qword_27CC0D960)
  {
    type metadata accessor for SharedWithYouFeedSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0D960);
    }
  }
}

uint64_t sub_218AC38B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218AC3928()
{
  v1 = v0[1];
  v2 = sub_218AC4058(*v0, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header);
  v3 = sub_218AC4058(v1, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer);
  sub_2191ED57C(v3);
  return v2;
}

uint64_t sub_218AC39C0(uint64_t a1)
{
  v2 = sub_218AC4300();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_218AC39FC(uint64_t a1)
{
  v2 = sub_218AC3A40();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_218AC3A40()
{
  result = qword_27CC0D968;
  if (!qword_27CC0D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D968);
  }

  return result;
}

uint64_t sub_218AC3A94(uint64_t a1)
{
  v2 = type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer(0);
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE9834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v9 + 104;
  v13 = *(v9 + 104);
  v13(v11, *MEMORY[0x277D6E758], v8);
  v14 = sub_219BEE054();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v43 = v16;
  v16(v11, v8);
  v17 = *(v14 + 16);
  v45 = a1;
  if (v17)
  {
    v39[0] = v13;
    v39[1] = v12;
    v40 = v11;
    v41 = v15;
    v42 = v8;
    v49 = MEMORY[0x277D84F90];
    sub_218C34BC8(0, v17, 0);
    v18 = v14;
    v19 = v49;
    v47 = sub_219BF00D4();
    v20 = *(v47 - 8);
    v46 = *(v20 + 16);
    v21 = v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v22 = *(v20 + 72);
    do
    {
      v46(v7, v21, v47);
      v49 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_218C34BC8(v23 > 1, v24 + 1, 1);
        v19 = v49;
      }

      *(v19 + 16) = v24 + 1;
      sub_218AC3FF0(v7, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header);
      v21 += v22;
      --v17;
    }

    while (v17);

    a1 = v45;
    v8 = v42;
    v11 = v40;
    (v39[0])(v40, *MEMORY[0x277D6E750], v42);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
    v13(v11, *MEMORY[0x277D6E750], v8);
  }

  v25 = sub_219BEE054();
  v43(v11, v8);
  v26 = *(v25 + 16);
  v27 = v44;
  if (v26)
  {
    v49 = MEMORY[0x277D84F90];
    sub_218C34B78(0, v26, 0);
    v28 = v49;
    v47 = sub_219BF00D4();
    v29 = *(v47 - 8);
    v30 = *(v29 + 16);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v46 = v25;
    v32 = v25 + v31;
    v33 = *(v29 + 72);
    do
    {
      v30(v27, v32, v47);
      v49 = v28;
      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_218C34B78(v34 > 1, v35 + 1, 1);
        v28 = v49;
      }

      *(v28 + 16) = v35 + 1;
      sub_218AC3FF0(v27, v28 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v35, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer);
      v32 += v33;
      --v26;
    }

    while (v26);
    v36 = sub_219BEE074();
    (*(*(v36 - 8) + 8))(v45, v36);
  }

  else
  {

    v37 = sub_219BEE074();
    (*(*(v37 - 8) + 8))(a1, v37);
  }

  return v19;
}

uint64_t sub_218AC3FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218AC4058(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = sub_219BF00D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_218C34270(0, v14, 0);
    v15 = v33;
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v26 = (v11 + 32);
    v27 = v17;
    v18 = (v11 + 16);
    v19 = (v11 + 8);
    do
    {
      v20 = v29;
      sub_218A270E4(v16, v9, v29);
      v21 = v28;
      sub_218A270E4(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_218A2714C(v9, v20);
      v33 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_218C34270((v22 > 1), v23 + 1, 1);
      }

      v31 = v10;
      v32 = sub_21897FB18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*v18)(boxed_opaque_existential_1, v13, v10);
      v15 = v33;
      *(v33 + 16) = v23 + 1;
      sub_2186CB1F0(&v30, v15 + 40 * v23 + 32);
      (*v19)(v13, v10);
      v16 += v27;
      --v14;
    }

    while (v14);
  }

  return v15;
}

unint64_t sub_218AC4300()
{
  result = qword_27CC0D970;
  if (!qword_27CC0D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D970);
  }

  return result;
}

uint64_t sub_218AC4354(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF00D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218AC43C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF00D4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218AC443C(uint64_t a1)
{
  result = sub_219BF00D4();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_218AC4510(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_218AC4558(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_218AC45B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC566C(v2, v5);
  v6 = sub_219BEE754();
  return (*(*(v6 - 8) + 32))(a2, v5, v6);
}

uint64_t sub_218AC4668@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_219BEE754();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC5608(0, &qword_27CC0D998, MEMORY[0x277D844C8]);
  v24 = v6;
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for MagazineFeedServiceContext();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AC54FC();
  sub_219BF7B34();
  if (!v2)
  {
    v18 = v11;
    v19 = v9;
    v12 = v22;
    v13 = v23;
    v27 = 0;
    sub_218AC5550();
    v14 = v24;
    sub_219BF7734();
    v25 = v28;
    v26 = 1;
    sub_218AC5780(&qword_280E91B20);
    sub_219BF7734();
    (*(v12 + 8))(v8, v14);
    v16 = v18;
    (*(v20 + 32))(v18, v5, v13);
    swift_storeEnumTagMultiPayload();
    sub_218AC55A4(v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218AC4970(void *a1)
{
  v2 = v1;
  v4 = sub_219BEE754();
  v29 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v28 = &v27 - v7;
  v8 = type metadata accessor for MagazineFeedServiceContext();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  sub_218AC5608(0, &qword_27CC0D9B0, MEMORY[0x277D84538]);
  v30 = v14;
  v32 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AC54FC();
  sub_219BF7B44();
  v17 = v2;
  sub_218AC566C(v2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v29;
    sub_218AC56D0(v13);
    v37 = 1;
    v36 = 0;
    sub_218AC572C();
    v20 = v30;
    v19 = v31;
    sub_219BF7834();
    if (!v19)
    {
      sub_218AC566C(v17, v11);
      v21 = v27;
      (*(v18 + 32))(v27, v11, v4);
      v35 = 1;
      sub_218AC5780(&qword_280E91B28);
      sub_219BF7834();
      (*(v18 + 8))(v21, v4);
    }

    return (*(v32 + 8))(v16, v20);
  }

  else
  {
    v24 = v28;
    v23 = v29;
    (*(v29 + 32))(v28, v13, v4);
    v34 = 0;
    sub_218AC572C();
    v26 = v30;
    v25 = v31;
    sub_219BF7834();
    if (!v25)
    {
      v33 = 1;
      sub_218AC5780(&qword_280E91B28);
      sub_219BF7834();
    }

    (*(v23 + 8))(v24, v4);
    return (*(v32 + 8))(v16, v26);
  }
}

uint64_t sub_218AC4D84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4F65636976726573;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEE00736E6F697470;
  }

  if (*a2)
  {
    v5 = 0x4F65636976726573;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xEE00736E6F697470;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_218AC4E30()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218AC4EB8()
{
  sub_219BF5524();
}

uint64_t sub_218AC4F2C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_218AC4FBC(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x4F65636976726573;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEE00736E6F697470;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_218AC5000()
{
  if (*v0)
  {
    return 0x4F65636976726573;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_218AC5040@<X0>(char *a1@<X8>)
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

uint64_t sub_218AC50A4(uint64_t a1)
{
  v2 = sub_218AC54FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218AC50E0(uint64_t a1)
{
  v2 = sub_218AC54FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218AC511C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6546756F59726F66;
  }

  else
  {
    v3 = 0x656E697A6167616DLL;
  }

  if (v2)
  {
    v4 = 0xEC00000064656546;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v5 = 0x6546756F59726F66;
  }

  else
  {
    v5 = 0x656E697A6167616DLL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006465;
  }

  else
  {
    v6 = 0xEC00000064656546;
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

uint64_t sub_218AC51D0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218AC5260()
{
  sub_219BF5524();
}

uint64_t sub_218AC52DC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218AC5374@<X0>(char *a1@<X8>)
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

void sub_218AC53D0(uint64_t *a1@<X8>)
{
  v2 = 0x656E697A6167616DLL;
  if (*v1)
  {
    v2 = 0x6546756F59726F66;
  }

  v3 = 0xEC00000064656546;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_218AC54FC()
{
  result = qword_27CC0D9A0;
  if (!qword_27CC0D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D9A0);
  }

  return result;
}

unint64_t sub_218AC5550()
{
  result = qword_27CC0D9A8;
  if (!qword_27CC0D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D9A8);
  }

  return result;
}

uint64_t sub_218AC55A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedServiceContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218AC5608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218AC54FC();
    v7 = a3(a1, &type metadata for MagazineFeedServiceContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218AC566C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedServiceContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AC56D0(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedServiceContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218AC572C()
{
  result = qword_27CC0D9B8;
  if (!qword_27CC0D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D9B8);
  }

  return result;
}

uint64_t sub_218AC5780(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_219BEE754();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218AC57E8()
{
  result = qword_27CC0D9C0;
  if (!qword_27CC0D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D9C0);
  }

  return result;
}

unint64_t sub_218AC5840()
{
  result = qword_27CC0D9C8;
  if (!qword_27CC0D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D9C8);
  }

  return result;
}

unint64_t sub_218AC5898()
{
  result = qword_27CC0D9D0;
  if (!qword_27CC0D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D9D0);
  }

  return result;
}

unint64_t sub_218AC58F0()
{
  result = qword_27CC0D9D8;
  if (!qword_27CC0D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D9D8);
  }

  return result;
}

unint64_t sub_218AC5944()
{
  result = qword_27CC0D9E0;
  if (!qword_27CC0D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D9E0);
  }

  return result;
}

uint64_t ConfirmationToast.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t ConfirmationToast.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t ConfirmationToast.hashValue.getter()
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](0);
  return sub_219BF7AE4();
}

unint64_t sub_218AC5B9C()
{
  result = qword_27CC0D9E8;
  if (!qword_27CC0D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D9E8);
  }

  return result;
}

uint64_t sub_218AC5BF0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218AC5CB4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218AC5D8C(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  sub_219BF4264();
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = sub_219BF4234();
    v5 = v4;
    v6 = v4 >> 62;
    if (v4 >> 62)
    {
      v7 = sub_219BF7214();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = sub_219BF7214();
      v10 = v23 + v7;
      if (__OFADD__(v23, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_219BF7364();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v7)
    {
      goto LABEL_36;
    }

    v26 = v2;
    v15 = v11 + 8 * v12 + 32;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_218ACC4E4(0);
      sub_218AC6408(&qword_27CC0CC70, sub_218ACC4E4);
      for (i = 0; i != v14; ++i)
      {
        v17 = sub_218A35350(v25, i, v5);
        v19 = *v18;

        (v17)(v25, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      sub_219BF4044();
      swift_arrayInitWithCopy();
    }

    v2 = v26;
    if (v7 >= 1)
    {
      v20 = *(v11 + 16);
      v21 = __OFADD__(v20, v7);
      v22 = v20 + v7;
      if (v21)
      {
        goto LABEL_37;
      }

      *(v11 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_219BF7214();
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v7 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_218AC60A8()
{
  v1 = *(v0 + 16);
  v2 = v1 >> 62;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v3 != 0;
    if (v3 >= v4)
    {
      goto LABEL_3;
    }

    goto LABEL_27;
  }

  result = sub_219BF7214();
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    v4 = result != 0;
    if (sub_219BF7214() >= v4)
    {
      if (sub_219BF7214() >= v3)
      {
LABEL_3:
        if ((v1 & 0xC000000000000001) != 0 && v3 > 1)
        {
          type metadata accessor for SportsScoreSection();

          v6 = v4;
          do
          {
            v7 = v6 + 1;
            sub_219BF7334();
            v6 = v7;
          }

          while (v3 != v7);
        }

        else
        {
        }

        if (v2)
        {

          v1 = sub_219BF7564();
          v4 = v9;
          v3 = v10;
          if (v10)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v1 &= 0xFFFFFFFFFFFFFF8uLL;
          v8 = v1 + 32;
          v3 = (2 * v3) | 1;
          if (v3)
          {
LABEL_15:
            v2 = v8;
            sub_219BF7934();
            swift_unknownObjectRetain_n();
            v13 = swift_dynamicCastClass();
            if (!v13)
            {
              swift_unknownObjectRelease();
              v13 = MEMORY[0x277D84F90];
            }

            v14 = *(v13 + 16);

            if (!__OFSUB__(v3 >> 1, v4))
            {
              if (v14 == (v3 >> 1) - v4)
              {
                v12 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (v12)
                {
LABEL_22:
                  result = swift_allocObject();
                  *(result + 16) = v12;
                  return result;
                }

                v12 = MEMORY[0x277D84F90];
LABEL_21:
                swift_unknownObjectRelease();
                goto LABEL_22;
              }

              goto LABEL_29;
            }

LABEL_28:
            __break(1u);
LABEL_29:
            swift_unknownObjectRelease();
            v8 = v2;
          }
        }

        sub_218B667F0(v1, v8, v4, v3);
        v12 = v11;
        goto LABEL_21;
      }

      __break(1u);
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_218AC62CC()
{

  return swift_deallocClassInstance();
}

void sub_218AC633C()
{
  if (!qword_280E921B0)
  {
    type metadata accessor for SportsScheduleTagFeedGroupConfigData();
    sub_218AC6408(&qword_280E9A468, type metadata accessor for SportsScheduleTagFeedGroupConfigData);
    sub_218AC6408(qword_280E9A470, type metadata accessor for SportsScheduleTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E921B0);
    }
  }
}

uint64_t sub_218AC6408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SportsScheduleTagFeedGroupEmitter()
{
  result = qword_280EA19C0;
  if (!qword_280EA19C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218AC64B0()
{
  sub_218AC633C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsScheduleTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186C709C(319, &unk_280E90250);
        if (v3 <= 0x3F)
        {
          sub_2186C709C(319, qword_280EAEBF0);
          if (v4 <= 0x3F)
          {
            sub_2186C709C(319, qword_280EBA370);
            if (v5 <= 0x3F)
            {
              sub_2186C709C(319, &unk_280E8FE20);
              if (v6 <= 0x3F)
              {
                sub_2186C709C(319, qword_280EC7670);
                if (v7 <= 0x3F)
                {
                  sub_2186C709C(319, &qword_280E8FD40);
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

uint64_t sub_218AC6678(uint64_t a1)
{
  v3 = type metadata accessor for SportsScheduleTagFeedGroupEmitter();
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52 = v4;
  v56 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF0BD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ACC2A4(0, &qword_27CC133D0, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D31C68]);
  v10 = v9;
  v51 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v43 - v11;
  v54 = v13;
  v49 = *(v13 + 16);
  v50 = v13 + 16;
  v49(v43 - v11, a1, v10);
  v53 = v12;
  v14 = sub_218EEE114(v12);
  v59 = v15;
  type metadata accessor for SportsScheduleTagFeedGroupKnobs();
  v55 = v10;
  sub_219BED8E4();
  sub_219BEF524();
  (*(v6 + 8))(v8, v5);
  v16 = v57;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7C84(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  v57 = 0;
  v58 = 0xE000000000000000;
  v60 = v16;
  sub_219BF7484();
  v18 = v57;
  v19 = v58;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_2186FC3BC();
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  sub_219BF6214();
  sub_219BE5314();

  v20 = swift_allocObject();
  *(v20 + 16) = CACurrentMediaTime();
  v43[0] = v20;
  MEMORY[0x28223BE20](v21);
  v43[-4] = v1;
  v43[-3] = a1;
  v43[-2] = v14;
  LOBYTE(v43[-1]) = v59;
  sub_218ACC354(0);
  sub_219BE3204();
  v44 = type metadata accessor for SportsScheduleTagFeedGroupEmitter;
  v22 = v56;
  sub_218ACCB3C(v1, v56, type metadata accessor for SportsScheduleTagFeedGroupEmitter);
  v23 = v48[80];
  v59 = v16;
  v46 = ((v23 + 24) & ~v23) + v52;
  v47 = (v23 + 24) & ~v23;
  v43[1] = v23 | 7;
  v24 = swift_allocObject();
  v48 = v14;
  *(v24 + 16) = v20;
  sub_218AC7DAC(v22, v24 + ((v23 + 24) & ~v23));

  v25 = sub_219BE2E54();
  v45 = a1;
  v26 = v25;
  sub_218ACC3F8();
  sub_219BE2F64();

  v27 = sub_219BE2E54();
  sub_218ACC4E4(0);
  sub_219BE2F74();

  v28 = sub_219BE2E54();
  sub_218AC6408(&qword_280E8EE88, sub_218ACC4E4);
  sub_219BE3104();

  v29 = v44;
  sub_218ACCB3C(v1, v22, v44);
  v30 = swift_allocObject();
  sub_218AC7DAC(v22, v30 + ((v23 + 16) & ~v23));
  v31 = sub_219BE2E54();
  sub_218ACC738();
  sub_219BE2F64();

  sub_218ACCB3C(v1, v22, v29);
  v32 = v53;
  v33 = v55;
  v49(v53, v45, v55);
  v34 = v54;
  v35 = (v46 + *(v54 + 80)) & ~*(v54 + 80);
  v36 = v35 + v51;
  v37 = swift_allocObject();
  *(v37 + 16) = v43[0];
  sub_218AC7DAC(v22, v37 + v47);
  (*(v34 + 32))(v37 + v35, v32, v33);
  *(v37 + v36) = v59;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_218ACC7A8;
  *(v38 + 24) = v37;

  v39 = sub_219BE2E54();
  sub_218ACC270(0);
  sub_219BE2F64();

  v40 = sub_219BE2E54();
  v41 = sub_219BE2FD4();

  swift_unknownObjectRelease();
  return v41;
}

uint64_t sub_218AC6E54(void *a1)
{
  if (*a1)
  {
    type metadata accessor for SportsScheduleTagFeedGroupEmitter.Cursor();
  }

  sub_218A80D28();
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218AC6ED0()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E7C84(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  *&v2 = 0;
  *(&v2 + 1) = 0xE000000000000000;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = v2;
  sub_219BE5314();

  sub_218A80D28();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218AC705C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SportsScheduleTagFeedGroupEmitter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SportsScheduleTagFeedGroupEmitter.Cursor();
  sub_219BE3204();
  sub_218ACCB3C(v2, v7, type metadata accessor for SportsScheduleTagFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_218AC7DAC(v7, v10 + v8);
  *(v10 + v9) = a1;

  v11 = sub_219BE2E54();
  sub_218ACC2A4(0, &qword_280E91720, type metadata accessor for TagFeedGroup, sub_21877D2B0, MEMORY[0x277D324E8]);
  sub_219BE2F64();

  sub_218ACCB3C(v2, v7, type metadata accessor for SportsScheduleTagFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_218AC7DAC(v7, v12 + v8);
  v13 = sub_219BE2E54();
  v14 = sub_219BE3064();

  return v14;
}

uint64_t sub_218AC72B4(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for SportsScheduleTagFeedGroupEmitter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v23 = sub_219BEEDD4();
    sub_218AC6408(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D323C8], v23);
    swift_willThrow();
    return v23;
  }

  result = sub_219BF7214();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  v29 = v3;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x21CECE0F0](0, v10);
    goto LABEL_6;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:
    v28 = v12;
    v13 = MEMORY[0x28223BE20](v12);
    *(&v25 - 4) = v2;
    *(&v25 - 3) = a1;
    *(&v25 - 2) = v13;
    sub_219BF1904();
    sub_219BE3204();
    v27 = type metadata accessor for SportsScheduleTagFeedGroupEmitter;
    sub_218ACCB3C(v2, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsScheduleTagFeedGroupEmitter);
    v14 = *(v7 + 80);
    v26 = v2;
    v15 = (v14 + 16) & ~v14;
    v16 = v8 + 7;
    v17 = swift_allocObject();
    sub_218AC7DAC(v9, v17 + v15);
    *(v17 + ((v16 + v15) & 0xFFFFFFFFFFFFFFF8)) = a1;

    v18 = sub_219BE2E54();
    type metadata accessor for TagFeedGroup();
    sub_219BE2F74();

    v19 = sub_219BE2E54();
    sub_218ACC2A4(0, &qword_280E91720, type metadata accessor for TagFeedGroup, sub_21877D2B0, MEMORY[0x277D324E8]);
    sub_219BE2F74();

    sub_218ACCB3C(v26, v9, v27);
    v20 = (v14 + 24) & ~v14;
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    sub_218AC7DAC(v9, v21 + v20);
    *(v21 + ((v16 + v20) & 0xFFFFFFFFFFFFFFF8)) = a2;

    v22 = sub_219BE2E54();
    v23 = sub_219BE3054();

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_218AC76D4()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  return sub_219BEF194();
}

uint64_t sub_218AC7784()
{
  sub_218ACC270(0);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_2186F82C8(0, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  sub_219BE2F64();

  v1 = sub_219BE2E54();
  v2 = sub_219BE3054();

  return v2;
}

uint64_t sub_218AC788C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218AC633C();
  v6 = v5;
  v7 = swift_allocBox();
  result = (*(*(v6 - 8) + 16))(v8, v2 + *(a1 + 20), v6);
  *a2 = v7 | 0x3000000000000000;
  return result;
}

uint64_t sub_218AC7914@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for SportsScheduleTagFeedGroupKnobs();
  a2[4] = sub_218AC6408(qword_280EA7F60, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
  a2[5] = sub_218AC6408(&qword_27CC0DA68, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218ACCB3C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
}

uint64_t sub_218AC7A60@<X0>(uint64_t *a1@<X8>)
{
  sub_218ACCBA4(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218AC633C();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218ACC944(inited + 32, sub_2188317B0);
  sub_218ACCBA4(0, &qword_27CC0DA70, type metadata accessor for SportsScheduleTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_218ACCC08();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218AC7BEC()
{
  sub_218AC6408(&unk_27CC0DA00, type metadata accessor for SportsScheduleTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218AC7DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScheduleTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AC7F2C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v7 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_219BF0BD4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      v13 = sub_219BEEDD4();
      sub_218AC6408(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      v15 = v14;
      *v14 = 0xD00000000000002CLL;
      v14[1] = 0x8000000219CE6010;
      v16 = MEMORY[0x277D32398];
LABEL_13:
      (*(*(v13 - 8) + 104))(v15, *v16, v13);
      swift_willThrow();
      return v13;
    }

    v41 = v4;
    v25 = v10;
    type metadata accessor for SportsScheduleTagFeedGroupEmitter();
    type metadata accessor for SportsScheduleTagFeedGroupKnobs();
    v40 = v5;
    sub_218ACC2A4(0, &qword_27CC133D0, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D31C68]);
    sub_219BED8E4();
    sub_219BEF524();
    v26 = *(v9 + 8);
    v26(v12, v25);
    v39 = v42;
    sub_219BED8E4();
    sub_219BEF524();
    v26(v12, v25);
    v27 = v42;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    v28 = sub_219BE5314();
    MEMORY[0x28223BE20](v28);
    v29 = v39;
    *(&v38 - 4) = v40;
    *(&v38 - 3) = v29;
    *(&v38 - 16) = v27;
    sub_219BE3204();
    v30 = sub_219BE2E54();
    sub_218ACCBA4(0, &qword_280E8EC90, sub_2186D85DC, MEMORY[0x277D83940]);
    sub_219BE2F74();

    v31 = sub_219BE2E54();
    sub_219BF49F4();
    sub_218ACCA38();
    v13 = sub_219BE30D4();
  }

  else
  {
    sub_218ACC2A4(0, &qword_27CC133D0, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D31C68]);
    sub_219BED8F4();
    v17 = *(v42 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v18 = [v17 backingTag];

    v19 = [v18 asSports];
    swift_unknownObjectRelease();
    if (!v19)
    {
      v13 = sub_219BEEDD4();
      sub_218AC6408(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      v15 = v32;
      v16 = MEMORY[0x277D323A0];
      goto LABEL_13;
    }

    if ([v19 sportsType] == 1)
    {
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_2186E7C84(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_219C09BA0;
      v42 = 0;
      v43 = 0xE000000000000000;
      v44 = v19;
      sub_2186D85DC();
      sub_219BF7484();
      v21 = v42;
      v22 = v43;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_2186FC3BC();
      *(v20 + 32) = v21;
      *(v20 + 40) = v22;
      sub_219BF6214();
      sub_219BE5314();

      MEMORY[0x28223BE20](v23);
      *(&v38 - 2) = v5;
      sub_219BF29D4();
      sub_219BE3204();
      *(swift_allocObject() + 16) = v19;
      swift_unknownObjectRetain();
      v24 = sub_219BE2E54();
      sub_218ACC354(0);
      v13 = sub_219BE2F74();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_2186E7C84(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_219C09BA0;
      v42 = 0;
      v43 = 0xE000000000000000;
      v44 = v19;
      sub_2186D85DC();
      sub_219BF7484();
      v35 = v42;
      v36 = v43;
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = sub_2186FC3BC();
      *(v34 + 32) = v35;
      *(v34 + 40) = v36;
      sub_219BF6214();
      sub_219BE5314();

      sub_2186F82C8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_219C146A0;
      swift_unknownObjectRetain();
      sub_219BF4CE4();
      sub_219BF49F4();
      swift_allocObject();
      *(v37 + 32) = sub_219BF49D4();
      v42 = v37;
      sub_218ACCBA4(0, &qword_27CC0DA60, sub_218ACC354, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v13 = sub_219BE3014();
      swift_unknownObjectRelease();
    }
  }

  return v13;
}

uint64_t sub_218AC88AC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for SportsScheduleTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v6 + 48)), *(a1 + *(v6 + 48) + 24));
  v7 = off_282A97438;
  type metadata accessor for MySportsTagService();
  return v7(a2, a3 & 1);
}

uint64_t sub_218AC8968@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v2 - 8);
  swift_unknownObjectRetain();
  sub_219BF4CE4();
  sub_219BF49F4();
  swift_allocObject();
  result = sub_219BF49D4();
  *a1 = result;
  return result;
}

uint64_t sub_218AC8A28(uint64_t a1)
{
  v2 = type metadata accessor for SportsScheduleTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 44)), *(a1 + *(v2 + 44) + 24));
  return sub_219BF4434();
}

uint64_t sub_218AC8A84@<X0>(void *a1@<X1>, char **a2@<X8>)
{
  v42 = a2;
  v3 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF34F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ACCBA4(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = [a1 identifier];
  sub_219BF5414();

  sub_219BF29A4();

  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_218ACC1D8(v11, &qword_27CC13BD0, MEMORY[0x277D33E48]);
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v40 = a1;
    v14 = sub_219BF34B4();
    v47 = *(v6 + 8);
    v48 = v6 + 8;
    v47(v11, v5);
    v15 = *(v14 + 16);
    if (v15)
    {
      v17 = *(v6 + 16);
      v16 = v6 + 16;
      v18 = *(v16 + 64);
      v39 = v14;
      v19 = v14 + ((v18 + 32) & ~v18);
      v45 = *(v16 + 56);
      v46 = v17;
      v20 = MEMORY[0x277D84F90];
      v44 = v16;
      v17(v8, v19, v5);
      while (1)
      {
        v22 = sub_219BF34D4();
        v24 = v23;
        v47(v8, v5);
        if (v24)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_218840D24(0, *(v20 + 2) + 1, 1, v20);
          }

          v26 = *(v20 + 2);
          v25 = *(v20 + 3);
          if (v26 >= v25 >> 1)
          {
            v20 = sub_218840D24((v25 > 1), v26 + 1, 1, v20);
          }

          *(v20 + 2) = v26 + 1;
          v21 = &v20[16 * v26];
          *(v21 + 4) = v22;
          *(v21 + 5) = v24;
        }

        v19 += v45;
        if (!--v15)
        {
          break;
        }

        v46(v8, v19, v5);
      }
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v49 = v20;
    sub_2186F82C8(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218ACCAC0();
    v27 = v43;
    v13 = sub_219BF56E4();
    v43 = v27;

    a1 = v40;
  }

  v28 = MEMORY[0x277D837D0];
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7C84(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C09EC0;
  v49 = 0;
  v50 = 0xE000000000000000;
  v51 = a1;
  sub_2186D85DC();
  sub_219BF7484();
  v30 = v49;
  v31 = v50;
  *(v29 + 56) = v28;
  v32 = sub_2186FC3BC();
  *(v29 + 64) = v32;
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  v33 = MEMORY[0x21CECC6D0](v13, v28);
  *(v29 + 96) = v28;
  *(v29 + 104) = v32;
  *(v29 + 72) = v33;
  *(v29 + 80) = v34;
  sub_219BF6214();
  sub_219BE5314();

  v35 = *(v13 + 16);
  if (v35)
  {
    v49 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v36 = v13 + 40;
    do
    {

      sub_219BF4CE4();
      sub_219BF49F4();
      swift_allocObject();
      sub_219BF49E4();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v36 += 16;
      --v35;
    }

    while (v35);

    v38 = v49;
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  *v42 = v38;
  return result;
}

uint64_t sub_218AC9064(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7C84(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  if (v5 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = MEMORY[0x277D83B88];
  *(v6 + 64) = v8;
  *(v6 + 32) = v7;
  swift_beginAccess();
  sub_219BF5CD4();
  v9 = MEMORY[0x277D83A80];
  *(v6 + 96) = MEMORY[0x277D839F8];
  *(v6 + 104) = v9;
  *(v6 + 72) = v10;
  sub_219BF6214();
  sub_219BE5314();

  v11 = CACurrentMediaTime();
  v12 = swift_beginAccess();
  *(a2 + 16) = v11;
  MEMORY[0x28223BE20](v12);
  v16[2] = a3;
  sub_218860300(sub_218ACC9C0, v16, v5);
  v13 = sub_219BE2E54();
  sub_219BF4264();
  v14 = sub_219BE3314();

  return v14;
}

uint64_t sub_218AC928C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BF43B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  type metadata accessor for SportsScheduleTagFeedGroupEmitter();
  swift_getObjectType();
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D343F0], v4);

  v9 = sub_219BF2F74();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

uint64_t sub_218AC93E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7C84(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C0B8C0;
  v6 = *(v3 + 16);
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v8;
  *(v5 + 32) = v6;
  v9 = *(v4 + 16);
  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  *(v5 + 72) = v9;
  swift_beginAccess();
  sub_219BF5CD4();
  v10 = MEMORY[0x277D83A80];
  *(v5 + 136) = MEMORY[0x277D839F8];
  *(v5 + 144) = v10;
  *(v5 + 112) = v11;
  sub_219BF6214();
  sub_219BE5314();

  result = sub_218AC5D8C(v3);
  *a2 = result;
  return result;
}

uint64_t sub_218AC9554@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BF3FC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_218AC9590(uint64_t *a1, uint64_t a2)
{
  v4 = sub_219BF4684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = type metadata accessor for SportsScheduleTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a2 + *(v9 + 52)), *(a2 + *(v9 + 52) + 24));
  (*(v5 + 104))(v7, *MEMORY[0x277D34488], v4);
  sub_219BF4C14();
  (*(v5 + 8))(v7, v4);
  v12[1] = v8;
  sub_218ACCBA4(0, &unk_280EE6AD0, sub_218ACC4E4, MEMORY[0x277D6CF30]);
  swift_allocObject();

  sub_219BE3014();
  v10 = sub_219BE31C4();

  return v10;
}

uint64_t sub_218AC9750(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v40 = a6;
  v43 = a5;
  v44 = a1;
  v41 = a4;
  v42 = sub_219BDBD34();
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SportsScheduleTagFeedGroupConfigData();
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v39[-v16];
  v18 = CACurrentMediaTime();
  swift_beginAccess();
  v46 = a3;
  *(a3 + 16) = v18;
  type metadata accessor for SportsScheduleTagFeedGroupEmitter();
  sub_218AC633C();
  sub_219BEDD14();
  v19 = v17[*(v12 + 32)];
  sub_218ACC944(v17, type metadata accessor for SportsScheduleTagFeedGroupConfigData);
  sub_219BDBD24();
  v45 = a2;
  v20 = sub_2196F475C(a2, v10, v19);
  (*(v8 + 8))(v10, v42);
  sub_218ACC2A4(0, &qword_27CC133D0, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D31C68]);
  sub_219BED8F4();
  v21 = *(v51 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v48 = v44;
  v49 = v21;
  v22 = sub_218DDE4A8(sub_218ACC9A4, v47, v20);

  sub_219BEDD14();
  v23 = v15[*(v12 + 32)];
  sub_218ACC944(v15, type metadata accessor for SportsScheduleTagFeedGroupConfigData);
  if (v22 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }

LABEL_10:
    v25 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v40)
  {
    if (v40 == 1)
    {
      v24 = sub_21987FE38(v22);
    }

    else
    {
      v24 = sub_2198805E0(v22, v23);
    }
  }

  else
  {
    v24 = sub_21987F8B4(v22);
  }

  v25 = v24;
LABEL_11:

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7C84(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C0B8C0;
  if (v45 >> 62)
  {
    v37 = v26;
    v27 = sub_219BF7214();
    v26 = v37;
  }

  else
  {
    v27 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x277D83B88];
  v29 = MEMORY[0x277D83C10];
  *(v26 + 56) = MEMORY[0x277D83B88];
  *(v26 + 64) = v29;
  *(v26 + 32) = v27;
  if (v25 >> 62)
  {
    v38 = v26;
    v30 = sub_219BF7214();
    v26 = v38;
  }

  else
  {
    v30 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v26 + 96) = v28;
  *(v26 + 104) = v29;
  *(v26 + 72) = v30;
  v31 = v26;
  swift_beginAccess();
  sub_219BF5CD4();
  v32 = MEMORY[0x277D83A80];
  v31[17] = MEMORY[0x277D839F8];
  v31[18] = v32;
  v31[14] = v33;
  sub_219BF6214();
  sub_219BE5314();

  type metadata accessor for SportsScheduleTagFeedGroupEmitter.Cursor();
  v34 = swift_allocObject();
  *(v34 + 16) = v25;
  v50 = v34;
  sub_218ACCBA4(0, &qword_27CC0DA58, sub_218ACC270, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v35 = sub_219BE3014();

  return v35;
}

uint64_t sub_218AC9C88@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = sub_219BF6394();
  v7 = [a2 alternativeFeedDescriptor];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 feedConfiguration];
  }

  else
  {
    v9 = [a2 feedConfiguration];
  }

  v10 = sub_218CCF3D0(v6, v5, 0x63537374726F7073, 0xEE00656C75646568, v9);
  result = swift_unknownObjectRelease();
  *a3 = v10;
  return result;
}

uint64_t sub_218AC9D64()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E7C84(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

void (**sub_218AC9EC0(unint64_t a1, unint64_t a2))(void, void, void)
{
  v3 = v2;
  v141 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_218ACCBA4(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v113 - v7;
  sub_218ACCBA4(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  MEMORY[0x28223BE20](v9 - 8);
  v128 = v113 - v10;
  sub_218ACCBA4(0, &qword_280E91A70, sub_2189AD5C8, v5);
  MEMORY[0x28223BE20](v11 - 8);
  v127 = v113 - v12;
  v13 = sub_219BF2AB4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v130 = v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF2034();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v129 = v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ACCBA4(0, &unk_280E8FF30, sub_218A42400, v5);
  MEMORY[0x28223BE20](v19 - 8);
  v126 = v113 - v20;
  sub_218ACCBA4(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  MEMORY[0x28223BE20](v21 - 8);
  v132 = v113 - v22;
  v125 = type metadata accessor for SportsScheduleTagFeedGroupConfigData();
  v23 = MEMORY[0x28223BE20](v125);
  v124 = v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v131 = v113 - v25;
  v26 = sub_219BF1934();
  v136 = *(v26 - 8);
  v137 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v133 = v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v134 = v113 - v29;
  *&v123 = sub_219BF0BD4();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ACCBA4(0, &unk_27CC0DA18, MEMORY[0x277D34258], v5);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v113 - v32;
  v147 = sub_219BF3E84();
  v142 = *(v147 - 8);
  v34 = MEMORY[0x28223BE20](v147);
  v145 = v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v139 = v113 - v37;
  MEMORY[0x28223BE20](v36);
  v138 = v113 - v38;
  v39 = *(a2 + 24);
  v40 = v39 >> 62;
  v140 = v39;
  if (v39 >> 62)
  {
    goto LABEL_41;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_42:
    v110 = sub_219BEEDD4();
    sub_218AC6408(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v110 - 8) + 104))(v111, *MEMORY[0x277D323A8], v110);
    swift_willThrow();
    return v3;
  }

LABEL_3:
  v116 = v16;
  v118 = v13;
  v120 = v3;
  v114 = *(a2 + 16);
  sub_218A9E0B4();
  v41 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v41);
  sub_218F0BB90(v41);
  sub_219BF3E74();
  a2 = v140;
  if (v40)
  {
    v42 = sub_219BF7214();
  }

  else
  {
    v42 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v141;
  v13 = v147;
  v115 = v17;
  v117 = v14;
  v119 = v8;
  if (v42)
  {
    v16 = 0;
    v143 = a2 & 0xFFFFFFFFFFFFFF8;
    v144 = a2 & 0xC000000000000001;
    v17 = (v142 + 48);
    v3 = (v142 + 32);
    v146 = MEMORY[0x277D84F90];
    v14 = v42;
    while (1)
    {
      if (v144)
      {
        v13 = MEMORY[0x21CECE0F0](v16, a2);
        v8 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v16 >= *(v143 + 16))
        {
          goto LABEL_40;
        }

        v13 = *(a2 + 8 * v16 + 32);

        v8 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          if (!sub_219BF7214())
          {
            goto LABEL_42;
          }

          goto LABEL_3;
        }
      }

      sub_218ACBA18(v16, v13, v33);

      v13 = v147;
      if ((*v17)(v33, 1, v147) == 1)
      {
        sub_218ACC1D8(v33, &unk_27CC0DA18, MEMORY[0x277D34258]);
      }

      else
      {
        v43 = *v3;
        v44 = v139;
        (*v3)(v139, v33, v13);
        v43(v145, v44, v13);
        v45 = v146;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_2191F6E6C(0, v45[2] + 1, 1, v45);
        }

        v47 = v45[2];
        v46 = v45[3];
        v146 = v45;
        if (v47 >= v46 >> 1)
        {
          v146 = sub_2191F6E6C(v46 > 1, v47 + 1, 1, v146);
        }

        v48 = v145;
        v49 = v146;
        v146[2] = v47 + 1;
        v13 = v147;
        v43(&v49[((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v47], v48, v147);
        a2 = v140;
        v40 = v141;
      }

      ++v16;
      if (v8 == v14)
      {
        goto LABEL_23;
      }
    }
  }

  v146 = MEMORY[0x277D84F90];
LABEL_23:
  if (v146[2])
  {
    v50 = type metadata accessor for SportsScheduleTagFeedGroupEmitter();
    v51 = v135 + *(v50 + 24);
    type metadata accessor for SportsScheduleTagFeedGroupKnobs();
    v144 = v51;
    v52 = v121;
    sub_219BEF134();
    sub_219BEF524();
    (*(v122 + 8))(v52, v123);
    v53 = v148;
    sub_2186F82C8(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    v123 = xmmword_219C09BA0;
    *(inited + 16) = xmmword_219C09BA0;
    v148 = 0;
    v149 = 0xE000000000000000;
    sub_219BF7314();

    v148 = 0xD000000000000019;
    v149 = 0x8000000219CE5E20;
    v55 = 0xE600000000000000;
    v56 = 0x65756761656CLL;
    if (v53 != 1)
    {
      v56 = 0x676E696D6F637075;
      v55 = 0xE800000000000000;
    }

    if (v53)
    {
      v57 = v56;
    }

    else
    {
      v57 = 7954788;
    }

    if (v53)
    {
      v58 = v55;
    }

    else
    {
      v58 = 0xE300000000000000;
    }

    MEMORY[0x21CECC330](v57, v58);

    v59 = v149;
    *(inited + 32) = v148;
    *(inited + 40) = v59;
    v139 = sub_218845F78(inited);
    swift_setDeallocating();
    sub_2189AD3D8(inited + 32);
    v60 = *(v50 + 20);
    sub_218AC633C();
    v113[1] = v60;
    sub_219BEDD14();
    v61 = v125;
    v140 = *(v125 + 20);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_219C09EC0;
    v143 = v50;
    v63 = v124;
    sub_219BEDD14();
    v64 = *(v61 + 20);
    v65 = sub_219BF1704();
    v67 = v66;
    v68 = v136 + 8;
    v145 = *(v136 + 8);
    v69 = &v63[v64];
    v70 = v137;
    (v145)(v69, v137);
    *(v62 + 32) = v65;
    *(v62 + 40) = v67;
    v71 = *(v114 + 24);
    *(v62 + 48) = *(v114 + 16);
    *(v62 + 56) = v71;

    v136 = MEMORY[0x21CEC80A0](v62);
    v113[2] = v72;

    v121 = sub_219BEC004();
    v73 = *(v121 - 1);
    v114 = *(v73 + 56);
    v122 = v73 + 56;
    (v114)();
    sub_218A42400(0);
    v75 = v126;
    (*(*(v74 - 8) + 56))(v126, 1, 1, v74);
    sub_219BEDD14();
    v76 = *(v61 + 20);
    v77 = sub_219BF1914();
    v78 = v70;
    v79 = v145;
    (v145)(&v63[v76], v78);
    sub_2194796A0(v139, v77);
    v80 = v131;
    v81 = v140;
    sub_219BF1764();

    sub_218ACC1D8(v75, &unk_280E8FF30, sub_218A42400);
    v82 = v132;
    sub_218ACC1D8(v132, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    v136 = v68;
    v79(&v80[v81], v137);
    v83 = v146;
    sub_219BF1794();
    v84 = (v135 + *(v143 + 28));
    v85 = v84[3];
    v140 = v84[4];
    v143 = v85;
    v139 = __swift_project_boxed_opaque_existential_1(v84, v85);
    sub_218ACCBA4(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v86 = v142;
    v87 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = v123;
    (*(v86 + 16))(v88 + v87, v138, v147);
    v148 = v88;
    sub_2191ED654(v83);
    (v114)(v82, 1, 1, v121);
    v89 = MEMORY[0x277D84F90];
    sub_219A95188(MEMORY[0x277D84F90]);
    sub_219A95188(v89);
    sub_219A951A0(v89);
    sub_219A951B8(v89);
    sub_219A952CC(v89);
    sub_219A952E4(v89);
    sub_219A953F8(v89);
    v90 = v129;
    sub_219BF2024();
    sub_2189AD5C8();
    v92 = v91;
    v93 = *(v91 - 8);
    v94 = v127;
    (*(v93 + 16))(v127, v144, v91);
    (*(v93 + 56))(v94, 0, 1, v92);
    sub_219BEF0B4();
    v95 = *(v148 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v96 = sub_219BF35D4();
    (*(*(v96 - 8) + 56))(v128, 1, 1, v96);
    LOBYTE(v150) = 13;
    sub_218ACC2A4(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
    swift_allocObject();

    sub_219BF38D4();
    sub_219BEF0B4();
    sub_218CB8CBC();

    sub_219BEF0B4();
    v97 = *(v150 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    sub_219BF3914();
    swift_allocObject();
    sub_219BF3904();
    v98 = sub_219BF2774();
    (*(*(v98 - 8) + 56))(v119, 1, 1, v98);
    v99 = qword_280E8D7F8;
    *MEMORY[0x277D30BC0];
    if (v99 != -1)
    {
      swift_once();
    }

    qword_280F61708;
    v100 = v130;
    sub_219BF2A84();
    v101 = v133;
    v102 = v120;
    v103 = sub_219BF2194();
    v104 = v115;
    if (v102)
    {
      (*(v117 + 1))(v100, v118);
      (v104[1])(v90, v116);
      v3 = v136;
      v105 = v137;
      v106 = v145;
      (v145)(v101, v137);
      v106(v134, v105);
    }

    else
    {
      v3 = v103;
      (*(v117 + 1))(v100, v118);
      (v104[1])(v90, v116);
      v108 = v137;
      v109 = v145;
      (v145)(v101, v137);
      v109(v134, v108);
    }

    (*(v142 + 8))(v138, v147);
  }

  else
  {

    v3 = sub_219BEEDD4();
    sub_218AC6408(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v3 - 1) + 13))(v107, *MEMORY[0x277D323A8], v3);
    swift_willThrow();
    (*(v142 + 8))(v138, v13);
  }

  return v3;
}

uint64_t sub_218ACB36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[3] = a2;
  sub_218ACCBA4(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v15 - v4;
  v6 = sub_219BEF554();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v8 = sub_219BF1904();
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for SportsScheduleTagFeedGroupEmitter();
  sub_218AC633C();
  v11 = sub_219BEDCB4();
  v15[1] = v12;
  v15[2] = v11;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v13 = sub_219BEE5D4();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  sub_219BED854();
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218ACB678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_218AC60A8();
  v7 = *(v6 + 16);
  if (v7 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }

LABEL_5:

    sub_218ACCB3C(a1, a3, type metadata accessor for TagFeedGroup);
    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_218ACC140();
  v9 = (a3 + *(v8 + 48));
  sub_218ACCB3C(a1, a3, type metadata accessor for TagFeedGroup);
  v9[3] = v5;
  *v9 = v6;
LABEL_6:
  sub_218ACC2A4(0, &qword_280E91720, type metadata accessor for TagFeedGroup, sub_21877D2B0, MEMORY[0x277D324E8]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218ACB7DC(uint64_t a1, uint64_t a2)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7C84(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  sub_219BEF0B4();
  v4 = *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v5 = [v4 backingTag];

  v6 = [v5 identifier];
  swift_unknownObjectRelease();
  v7 = sub_219BF5414();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v3 + 64) = v11;
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v3 + 96) = v10;
  *(v3 + 104) = v11;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  v12 = sub_218AC60A8();
  v13 = sub_218AC72B4(a2, v12);

  return v13;
}

size_t sub_218ACBA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = sub_219BF3484();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = (v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_219BF3C84();
  v8 = *(v47 - 8);
  v9 = MEMORY[0x28223BE20](v47);
  v48 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v45 - v11;
  v13 = *(a2 + 16);
  if (v13 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }

LABEL_21:
    v43 = sub_219BF3E84();
    v44 = *(*(v43 - 8) + 56);

    return v44(a3, 1, 1, v43);
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_3:
  v55 = 0x2D7365726F6373;
  v56 = 0xE700000000000000;
  v54 = a1;
  v14 = sub_219BF7894();
  MEMORY[0x21CECC330](v14);

  v15 = v55;
  v16 = v56;
  v17 = v13;
  if (v13 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
LABEL_19:
    v41 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v41);
    sub_218F0BB90(v41);
    sub_219BF3E74();
    v42 = sub_219BF3E84();
    return (*(*(v42 - 8) + 56))(a3, 0, 1, v42);
  }

  v55 = MEMORY[0x277D84F90];
  result = sub_218C34A88(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v45[1] = v16;
    v45[2] = v15;
    v46 = a3;
    v20 = v55;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v51 = v17;
      v21 = 0;
      v50 = *MEMORY[0x277D33DF0];
      v22 = (v6 + 104);
      LODWORD(v49) = *MEMORY[0x277D34130];
      v48 = (v8 + 32);
      v23 = v47;
      do
      {
        v24 = MEMORY[0x21CECE0F0](v21, v51);
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        v27 = v52;
        v26 = v53;
        *v52 = v25;
        (*v22)(v27, v50, v26);
        sub_219BF1AC4();
        (*(v8 + 104))(v12, v49, v23);
        v55 = v20;
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_218C34A88(v28 > 1, v29 + 1, 1);
          v20 = v55;
        }

        ++v21;
        *(v20 + 16) = v29 + 1;
        (*(v8 + 32))(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, v12, v23);
      }

      while (v18 != v21);
    }

    else
    {
      v30 = (v17 + 32);
      LODWORD(v51) = *MEMORY[0x277D33DF0];
      v31 = (v6 + 104);
      v50 = *MEMORY[0x277D34130];
      v49 = v8 + 32;
      v33 = v47;
      v32 = v48;
      do
      {
        v34 = *v30;
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        v37 = v52;
        v36 = v53;
        *v52 = v35;
        (*v31)(v37, v51, v36);

        sub_219BF1AC4();
        (*(v8 + 104))(v32, v50, v33);
        v55 = v20;
        v38 = v32;
        v40 = *(v20 + 16);
        v39 = *(v20 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_218C34A88(v39 > 1, v40 + 1, 1);
          v20 = v55;
        }

        *(v20 + 16) = v40 + 1;
        (*(v8 + 32))(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v40, v38, v33);
        ++v30;
        --v18;
        v32 = v38;
      }

      while (v18);
    }

    a3 = v46;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_218ACC140()
{
  if (!qword_280EDE880[0])
  {
    type metadata accessor for TagFeedGroup();
    sub_2186F82C8(255, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280EDE880);
    }
  }
}

uint64_t sub_218ACC1D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218ACCBA4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218ACC2A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_218ACC3F8()
{
  if (!qword_27CC0DA38)
  {
    sub_218ACCBA4(255, &unk_27CC0DA40, MEMORY[0x277D34368], MEMORY[0x277D83940]);
    sub_2186E7C84(255, &unk_280E8EB00, &qword_280E8B580, MEMORY[0x277D84948], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0DA38);
    }
  }
}

uint64_t objectdestroy_4Tm()
{
  v1 = (type metadata accessor for SportsScheduleTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_218AC633C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for SportsScheduleTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[15]);

  return swift_deallocObject();
}

void sub_218ACC738()
{
  if (!qword_27CC0DA50)
  {
    sub_219BF3824();
    sub_218ACC4E4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0DA50);
    }
  }
}

uint64_t sub_218ACC7A8(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for SportsScheduleTagFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  sub_218ACC2A4(0, &qword_27CC133D0, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D31C68]);
  v9 = *(v8 - 8);
  v10 = *(v2 + 16);
  v11 = v2 + ((v7 + *(v9 + 80)) & ~*(v9 + 80));
  v12 = *(v11 + *(v9 + 64));

  return sub_218AC9750(a1, a2, v10, v2 + v6, v11, v12);
}

uint64_t sub_218ACC8F4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_218ACC738();
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_218ACC944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218ACCA38()
{
  result = qword_280E8EC80;
  if (!qword_280E8EC80)
  {
    sub_218ACCBA4(255, &qword_280E8EC90, sub_2186D85DC, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EC80);
  }

  return result;
}

unint64_t sub_218ACCAC0()
{
  result = qword_280E8EDE0;
  if (!qword_280E8EDE0)
  {
    sub_2186F82C8(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EDE0);
  }

  return result;
}

uint64_t sub_218ACCB3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218ACCBA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218ACCC08()
{
  result = qword_27CC0DA78;
  if (!qword_27CC0DA78)
  {
    sub_218ACCBA4(255, &qword_27CC0DA70, type metadata accessor for SportsScheduleTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DA78);
  }

  return result;
}

id sub_218ACCD4C()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI226MagazineFeedRefreshControl_messageLabel];
  [v0 bounds];
  v2 = CGRectGetWidth(v9) * 0.5;
  [v1 frame];
  v3 = v2 - CGRectGetWidth(v10) * 0.5;
  [v0 bounds];
  v4 = CGRectGetHeight(v11) * 0.5;
  [v1 frame];
  v5 = v4 - CGRectGetHeight(v12) * 0.5;
  [v1 frame];
  Width = CGRectGetWidth(v13);
  [v1 frame];
  return [v1 setFrame_];
}

uint64_t sub_218ACCF10()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7NewsUI226MagazineFeedRefreshControl_messageLabel;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v21.receiver = v0;
  v21.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  v7 = [v4 clearColor];
  [v5 setTintColor_];

  [v5 setClipsToBounds_];
  v8 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v9 = sub_219BF53D4();
  v10 = [v8 initWithString_];

  v11 = *MEMORY[0x277D740A8];
  v12 = objc_opt_self();
  v13 = [v12 systemFontOfSize:11.0 weight:*MEMORY[0x277D743E8]];
  [v10 addAttribute:v11 value:v13 range:{0, sub_219BF5554()}];

  v14 = [v12 systemFontOfSize:11.0 weight:*MEMORY[0x277D74410]];
  result = sub_219BF5554();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    [v10 addAttribute:v11 value:v14 range:{result + 1, sub_219BF5554()}];

    v16 = OBJC_IVAR____TtC7NewsUI226MagazineFeedRefreshControl_messageLabel;
    [*&v5[OBJC_IVAR____TtC7NewsUI226MagazineFeedRefreshControl_messageLabel] setAttributedText_];
    v17 = *&v5[v16];
    v18 = objc_allocWithZone(MEMORY[0x277D75348]);
    v19 = v17;
    v20 = [v18 initWithRed:0.694117647 green:0.694117647 blue:0.694117647 alpha:1.0];
    [v19 setTextColor_];

    [*&v5[v16] setTextAlignment_];
    [*&v5[v16] setNumberOfLines_];
    [*&v5[v16] sizeToFit];
    [v5 addSubview_];
    [v5 addTarget:v5 action:sel_handleRefresh forControlEvents:4096];

    return v5;
  }

  return result;
}

uint64_t sub_218ACD2B8(uint64_t a1)
{
  v2 = sub_218ACD438();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_218ACD2F4(uint64_t a1)
{
  v2 = sub_218ACD38C();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_218ACD334()
{
  result = qword_27CC0F810;
  if (!qword_27CC0F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F810);
  }

  return result;
}

unint64_t sub_218ACD38C()
{
  result = qword_27CC0DA88;
  if (!qword_27CC0DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DA88);
  }

  return result;
}

unint64_t sub_218ACD3E4()
{
  result = qword_27CC0DA90;
  if (!qword_27CC0DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DA90);
  }

  return result;
}

unint64_t sub_218ACD438()
{
  result = qword_27CC0DA98;
  if (!qword_27CC0DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DA98);
  }

  return result;
}

uint64_t type metadata accessor for HighlightsTagFeedGroupConfigData()
{
  result = qword_280EA6790;
  if (!qword_280EA6790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218ACD500()
{
  result = sub_219BF1934();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218ACD574@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_219BF1934();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ACDC68(0, &qword_280E8CA50, MEMORY[0x277D844C8]);
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218ACDBC0();
  sub_219BF7B34();
  if (!v2)
  {
    v11 = v8;
    v12 = v19;
    v23 = 0;
    sub_218933D7C(&qword_280E90808);
    v13 = v20;
    sub_219BF7734();
    v21 = 1;
    sub_218ACDC14();
    sub_219BF7734();
    (*(v11 + 8))(v10, v13);
    v15 = v22;
    v16 = v18;
    (*(v12 + 32))(v18, v6, v4);
    *(v16 + *(type metadata accessor for HighlightsTagFeedGroupConfigData() + 20)) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218ACD834(void *a1)
{
  v3 = v1;
  sub_218ACDC68(0, &qword_27CC0DAA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218ACDBC0();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for HighlightsTagFeedGroupConfigData() + 20));
    v11[13] = 1;
    sub_218ACDCCC();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218ACDA00()
{
  if (*v0)
  {
    return 0x676E6970756F7267;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_218ACDA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xE800000000000000)
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

uint64_t sub_218ACDB18(uint64_t a1)
{
  v2 = sub_218ACDBC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218ACDB54(uint64_t a1)
{
  v2 = sub_218ACDBC0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218ACDBC0()
{
  result = qword_280EA67C8;
  if (!qword_280EA67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA67C8);
  }

  return result;
}

unint64_t sub_218ACDC14()
{
  result = qword_280EBE3E8;
  if (!qword_280EBE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBE3E8);
  }

  return result;
}

void sub_218ACDC68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218ACDBC0();
    v7 = a3(a1, &type metadata for HighlightsTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218ACDCCC()
{
  result = qword_27CC0DAA8;
  if (!qword_27CC0DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DAA8);
  }

  return result;
}

unint64_t sub_218ACDD34()
{
  result = qword_27CC0DAB0;
  if (!qword_27CC0DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DAB0);
  }

  return result;
}

unint64_t sub_218ACDD8C()
{
  result = qword_280EA67B8;
  if (!qword_280EA67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA67B8);
  }

  return result;
}

unint64_t sub_218ACDDE4()
{
  result = qword_280EA67C0;
  if (!qword_280EA67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA67C0);
  }

  return result;
}

uint64_t sub_218ACDE38(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = sub_219BF73F4();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x21CECE0F0]();
          sub_2186C6148(0, &qword_280E8E5D0);
          sub_218AD7E4C(0, &unk_280E8E5C0, &qword_280E8E5D0, 0x277D751E0, sub_2186C6148);
          swift_dynamicCast();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_2186C6148(0, &qword_280E8E5D0);
        sub_218AD7E4C(0, &unk_280E8E5C0, &qword_280E8E5D0, 0x277D751E0, sub_2186C6148);
        do
        {
          v7 = *v6++;
          v8 = v7;
          swift_dynamicCast();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

void *sub_218ACE05C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_218C34D70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x277D6DBE8];
      do
      {
        MEMORY[0x21CECE0F0](v5, a1);
        sub_219BE6684();
        sub_218AD7B34(0, &qword_27CC0DB40, &qword_27CC110D0, v6, MEMORY[0x277D83D88]);
        swift_dynamicCast();
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_218C34D70((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        *(v17 + 16) = v8 + 1;
        v9 = v17 + 40 * v8;
        *(v9 + 64) = v16;
        *(v9 + 32) = v14;
        *(v9 + 48) = v15;
      }

      while (v2 != v5);
    }

    else
    {
      v10 = a1 + 32;
      sub_219BE6684();
      sub_218AD7B34(0, &qword_27CC0DB40, &qword_27CC110D0, MEMORY[0x277D6DBE8], MEMORY[0x277D83D88]);
      do
      {

        swift_dynamicCast();
        v12 = *(v17 + 16);
        v11 = *(v17 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_218C34D70((v11 > 1), v12 + 1, 1);
        }

        *(v17 + 16) = v12 + 1;
        v13 = v17 + 40 * v12;
        *(v13 + 64) = v16;
        *(v13 + 32) = v14;
        *(v13 + 48) = v15;
        v10 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_218ACE2AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_218C34E30(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_218C34E30((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_218751558(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_218ACE3AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_218C34E30(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x21CECE0F0](i, a1);
        sub_2186C6148(0, &qword_280E8DAE0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_218C34E30((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_218751558(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2186C6148(0, &qword_280E8DAE0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_218C34E30((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_218751558(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_218ACE5A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_218C34E30(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x21CECE0F0](i, a1);
        sub_2186D6710(0, &qword_27CC0DB48);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_218C34E30((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_218751558(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      sub_2186D6710(0, &qword_27CC0DB48);
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_218C34E30((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_218751558(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_218ACE7A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_218C34D70(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    sub_218AD8118(0, &unk_280EE5A10, MEMORY[0x277D6D638], MEMORY[0x277D83D88]);
    sub_218AD7B34(0, &qword_27CC0DB40, &qword_27CC110D0, MEMORY[0x277D6DBE8], MEMORY[0x277D83D88]);
    do
    {
      v4 += 8;

      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_218C34D70((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_218ACE90C(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_218C34270(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_218AD8008(v8, v5, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_218C34270((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_218AD80D0(qword_280E97070, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_218AD8008(v5, boxed_opaque_existential_1, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      *(v7 + 16) = v11 + 1;
      sub_2186CB1F0(&v14, v7 + 40 * v11 + 32);
      sub_218AD8070(v5, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_218ACEB00(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_218C34270(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_218AD8008(v8, v5, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_218C34270((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_218AD80D0(qword_280E97138, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_218AD8008(v5, boxed_opaque_existential_1, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      *(v7 + 16) = v11 + 1;
      sub_2186CB1F0(&v14, v7 + 40 * v11 + 32);
      sub_218AD8070(v5, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_218ACECF4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    result = sub_219BF73F4();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x21CECE0F0]();
          sub_2186D6710(0, &qword_280E8E680);
          sub_218AD7E4C(0, &qword_280E8E670, &qword_280E8E680, &protocolRef_FCTagProviding, sub_2186D6710);
          swift_dynamicCast();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = a1 + 32;
        sub_2186D6710(0, &qword_280E8E680);
        sub_218AD7E4C(0, &qword_280E8E670, &qword_280E8E680, &protocolRef_FCTagProviding, sub_2186D6710);
        do
        {
          v6 += 8;
          swift_unknownObjectRetain();
          swift_dynamicCast();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          --v2;
        }

        while (v2);
      }

      return v7;
    }
  }

  return result;
}

uint64_t sub_218ACEF18(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v4 = a1 + 32;
    sub_218AD7E4C(0, &qword_280E8E388, &qword_280E8E390, &protocolRef_FCChannelProviding, sub_2186D6710);
    sub_218AD7E4C(0, &qword_280E8E670, &qword_280E8E680, &protocolRef_FCTagProviding, sub_2186D6710);
    do
    {
      v4 += 8;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_218ACF0C0(uint64_t a1, void (*a2)(__int128 *, __int128 *), uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_218C36C70(0, v4, 0);
    v5 = v27;
    v10 = (a1 + 32);
    do
    {
      v11 = v10[3];
      v24 = v10[2];
      v25 = v11;
      v26 = v10[4];
      v12 = v10[1];
      v22 = *v10;
      v23 = v12;
      a2(&v22, &v19);
      v27 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_218C36C70((v13 > 1), v14 + 1, 1);
        v5 = v27;
      }

      v20 = a3;
      v21 = a4();
      v15 = swift_allocObject();
      *&v19 = v15;
      v16 = v25;
      v15[3] = v24;
      v15[4] = v16;
      v15[5] = v26;
      v17 = v23;
      v15[1] = v22;
      v15[2] = v17;
      *(v5 + 16) = v14 + 1;
      sub_2186CB1F0(&v19, v5 + 40 * v14 + 32);
      v10 += 5;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t sub_218ACF20C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_218C36CA8(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x212uLL);
      sub_218AD8210(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_218C36CA8((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for SearchResultItem;
      v10 = &off_282A95980;
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x212uLL);
      *(v2 + 16) = v6 + 1;
      sub_2186CB1F0(&v8, v2 + 40 * v6 + 32);
      v4 += 536;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_218ACF340(uint64_t a1)
{
  v2 = sub_219BE5C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD8118(0, &unk_280EE5DC0, MEMORY[0x277D6D330], MEMORY[0x277D83D88]);
  v20 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_218C37990(0, v10, 0);
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v11 = v21;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v18 = *(v12 + 56);
    v19 = v13;
    do
    {
      v19(v5, v14, v2);
      swift_dynamicCast();
      v21 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C37990(v15 > 1, v16 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v16 + 1;
      sub_218AD817C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v14 += v18;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_218ACF598(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60);

    v1 = sub_219BF7534();
  }

  else
  {
    v1 = a1;

    sub_219BF7924();
    sub_2186D6710(0, &qword_280E8DF60);
  }

  return v1;
}

uint64_t sub_218ACF688(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t *, unint64_t))
{
  v23 = a4;
  v24 = a5;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v26 = MEMORY[0x277D84F90];
    v21 = a3;
    a3(0, v11, 0);
    v12 = v26;
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v13 = v15;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v22 = *(v14 + 56);
    do
    {
      v13(v10, v16, v7);
      v26 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        v21(v17 > 1, v18 + 1, 1);
      }

      v25[3] = v7;
      v25[4] = v23;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
      v13(boxed_opaque_existential_1, v10, v7);
      v12 = v26;
      *(v26 + 16) = v18 + 1;
      v24(v25, v12 + 40 * v18 + 32);
      (*(v14 - 8))(v10, v7);
      v16 += v22;
      --v11;
    }

    while (v11);
  }

  return v12;
}

char *sub_218ACF86C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_218C34E30(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x21CECE0F0](i, a1);
        type metadata accessor for WebEmbedShareActivityItemSource();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_218C34E30((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_218751558(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for WebEmbedShareActivityItemSource();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_218C34E30((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_218751558(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_218ACFA38(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_218C38420(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D837D0];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_218C38420((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_2186FC3BC();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_2186CB1F0(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_218ACFB34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v249 = a1;
  v250 = a2;
  v2 = MEMORY[0x277D83D88];
  sub_218AD8118(0, &qword_280EE5200, MEMORY[0x277D6D9B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v247 = v220 - v4;
  sub_218AD7A64(0, &unk_27CC0DAC0, sub_218AD78D8);
  MEMORY[0x28223BE20](v5 - 8);
  v246 = v220 - v6;
  sub_218AD8118(0, &qword_27CC0DAD0, sub_218AD792C, v2);
  MEMORY[0x28223BE20](v7 - 8);
  v244 = v220 - v8;
  sub_218AD792C();
  v245 = v9;
  v243 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v240 = v220 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD7A64(0, &unk_27CC0DAD8, sub_218740ED4);
  MEMORY[0x28223BE20](v11 - 8);
  v237 = v220 - v12;
  sub_218AD8118(0, &unk_27CC0DAE8, sub_218AD79A8, v2);
  MEMORY[0x28223BE20](v13 - 8);
  v235 = v220 - v14;
  sub_218AD79A8(0);
  v236 = v15;
  v234 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v233 = v220 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD8118(0, &unk_280E901B0, MEMORY[0x277D33D70], v2);
  MEMORY[0x28223BE20](v17 - 8);
  v254 = v220 - v18;
  sub_218AD8118(0, &qword_280E90040, MEMORY[0x277D33FF0], v2);
  MEMORY[0x28223BE20](v19 - 8);
  v232 = v220 - v20;
  sub_218AD7A64(0, &unk_27CC0DAF8, sub_218740F28);
  MEMORY[0x28223BE20](v21 - 8);
  v231 = v220 - v22;
  sub_218AD8118(0, &qword_27CC0DB08, sub_218AD7AC4, v2);
  MEMORY[0x28223BE20](v23 - 8);
  *&v253 = v220 - v24;
  sub_218AD7AC4(0);
  v229 = *(v25 - 8);
  v230 = v25;
  MEMORY[0x28223BE20](v25);
  v228 = v220 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD8118(0, &qword_27CC0DB20, sub_218AD7B00, v2);
  MEMORY[0x28223BE20](v27 - 8);
  v252 = v220 - v28;
  sub_218AD7CB8(0, &qword_27CC0DB28, MEMORY[0x277D839B0], MEMORY[0x277D6ED10], MEMORY[0x277D6DB98]);
  MEMORY[0x28223BE20](v29 - 8);
  v251 = v220 - v30;
  v31 = sub_219BE5FF4();
  v32 = *(v31 - 8);
  v274 = v31;
  v275 = v32;
  MEMORY[0x28223BE20](v31);
  v273 = v220 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD8118(0, &unk_280E902E0, MEMORY[0x277D33AE0], v2);
  MEMORY[0x28223BE20](v34 - 8);
  v263 = v220 - v35;
  v267 = sub_219BEB434();
  v262 = *(v267 - 8);
  v37 = v262;
  v36 = v262;
  MEMORY[0x28223BE20](v267);
  v261 = v220 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_219BEB014();
  v248 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v260 = v220 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_219BE7364();
  v297 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v284 = v220 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD8118(0, &qword_280EE5398, MEMORY[0x277D6D8F8], v2);
  MEMORY[0x28223BE20](v41 - 8);
  v296 = v220 - v42;
  sub_218AD8118(0, &unk_280EE5DE0, MEMORY[0x277D6D2F8], v2);
  MEMORY[0x28223BE20](v43 - 8);
  v272 = v220 - v44;
  v289 = sub_219BEB404();
  v45 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v292 = v220 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_219BEB424();
  v47 = *(v280 - 8);
  v48 = MEMORY[0x28223BE20](v280);
  v255 = (v220 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = MEMORY[0x28223BE20](v48);
  v303 = v220 - v51;
  MEMORY[0x28223BE20](v50);
  v53 = (v220 - v52);
  v270 = MEMORY[0x277D84560];
  sub_218AD8118(0, &unk_280E8BD70, MEMORY[0x277D6ED00], MEMORY[0x277D84560]);
  v277 = *(v36 + 72);
  v54 = *(v37 + 80);
  v271 = (v54 + 32) & ~v54;
  v265 = v54;
  v266 = v55;
  v264 = v271 + v277;
  v259 = swift_allocObject();
  v295 = xmmword_219C09BA0;
  *(v259 + 16) = xmmword_219C09BA0;
  v56 = *MEMORY[0x277D76C90];
  v269 = swift_allocObject();
  v269[1] = v295;
  v57 = *MEMORY[0x277D76D38];
  v281 = v53;
  *v53 = v57;
  LODWORD(v276) = *MEMORY[0x277D6ECE8];
  v58 = *(v47 + 104);
  v283 = (v47 + 104);
  (v58)(v53);
  v279 = v58;
  sub_218AD7B34(0, &unk_280E8BF70, &unk_280EE5B20, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v278 = v59;
  v60 = swift_allocObject();
  v256 = xmmword_219C09EC0;
  *(v60 + 16) = xmmword_219C09EC0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = objc_opt_self();
  v293 = v62;
  v268 = v56;
  v63 = v57;
  v294 = ObjCClassFromMetadata;
  v64 = [v62 bundleForClass_];
  sub_219BDB5E4();

  v65 = *MEMORY[0x277D6ECC8];
  v66 = *(v45 + 104);
  v288 = v45 + 104;
  v287 = v66;
  (v66)(v292, v65, v289);
  sub_218AD322C();
  (v58)(v303, *MEMORY[0x277D6ECE0], v280);
  v67 = MEMORY[0x277D6ECF8];
  *(v60 + 56) = v267;
  *(v60 + 64) = v67;
  __swift_allocate_boxed_opaque_existential_1((v60 + 32));
  sub_219BEB414();
  v282 = sub_219BEADA4();
  LOBYTE(v309) = 1;
  v68 = v293;
  v69 = [v293 bundleForClass_];
  sub_219BDB5E4();

  v298 = sub_219BE5AF4();
  v70 = *(v298 - 8);
  v291 = *(v70 + 56);
  v300 = v70 + 56;
  v71 = v272;
  v291(v272, 1, 1, v298);
  v303 = sub_219BE7104();
  v72 = *(v303 - 1);
  v299 = *(v72 + 56);
  v301 = v72 + 56;
  v299(v296, 1, 1, v303);
  v286 = *MEMORY[0x277D6D9A8];
  v73 = v297 + 104;
  v285 = *(v297 + 104);
  v74 = v290;
  v285(v284);
  v297 = v73;
  v75 = MEMORY[0x277D6EC20];
  *(v60 + 96) = v302;
  *(v60 + 104) = v75;
  __swift_allocate_boxed_opaque_existential_1((v60 + 72));
  sub_219BEAFC4();
  LODWORD(v282) = *MEMORY[0x277D6ECC0];
  v287(v292);
  v76 = v271;
  sub_219BEB414();
  sub_219BEB444();
  sub_219BEA9B4();
  LOBYTE(v309) = 1;
  v77 = [v68 bundleForClass_];
  sub_219BDB5E4();

  sub_219BE5AE4();
  v291(v71, 0, 1, v298);
  v299(v296, 1, 1, v303);
  (v285)(v284, v286, v74);
  v78 = v260;
  sub_219BEAFC4();
  v79 = v261;
  sub_218AD3B98(v78);
  v258 = swift_allocObject();
  *(v258 + 16) = v295;
  v268 = *MEMORY[0x277D76CD8];
  sub_218AD8118(0, &qword_280E8B610, type metadata accessor for Identifier, v270);
  v257 = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = v256;
  v227 = *MEMORY[0x277D76D10];
  v239 = *MEMORY[0x277D76CC8];
  v82 = v239;
  *(v81 + 32) = v227;
  *(v81 + 40) = v82;
  v242 = v81;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_219C10590;
  v241 = v83;
  v84 = *(v262 + 16);
  v270 = (v83 + v76);
  v84(v83 + v76, v79, v267);
  v85 = *MEMORY[0x277D76CA0];
  v86 = v280;
  *v281 = *MEMORY[0x277D76CA0];
  v87 = v276;
  v88 = v279;
  v279();
  v89 = swift_allocObject();
  *(v89 + 16) = v295;
  *(v89 + 56) = v302;
  *(v89 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v89 + 32));
  v90 = v85;
  v269 = v90;
  v238 = v268;
  v91 = v227;
  v92 = v239;
  sub_219BEB004();
  (v287)(v292, v282, v289);
  v93 = v277;
  v94 = v281;
  sub_219BEB414();
  *v94 = v90;
  (v88)(v94, v87, v86);
  v95 = swift_allocObject();
  *(v95 + 16) = v295;
  v268 = sub_219BEAD14();
  LOBYTE(v309) = 1;
  v96 = v293;
  v97 = [v293 bundleForClass_];
  sub_219BDB5E4();

  v98 = v272;
  sub_219BE5AE4();
  v291(v98, 0, 1, v298);
  v299(v296, 1, 1, v303);
  (v285)(v284, v286, v290);
  *(v95 + 56) = v302;
  *(v95 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v95 + 32));
  sub_219BEAFC4();
  (v287)(v292, v282, v289);
  v99 = v281;
  sub_219BEB414();
  v239 = (2 * v93);
  v227 = (2 * v93 + v277);
  v100 = v269;
  *v99 = v269;
  (v279)(v99, v276, v280);
  v268 = swift_allocObject();
  *(v268 + 1) = xmmword_219C0EE20;
  v226 = v100;
  v222 = sub_219BEAD24();
  v224 = sub_219BF2B34();
  v101 = *(v224 - 8);
  v223 = *(v101 + 56);
  v225 = v101 + 56;
  v223(v263, 1, 1, v224);
  v102 = v294;
  v103 = [v96 bundleForClass_];
  v104 = sub_219BDB5E4();
  v106 = v105;

  *&v309 = v104;
  *(&v309 + 1) = v106;
  sub_219BF5664();
  v220[1] = v107;
  v221 = *MEMORY[0x277D6D440];
  v269 = v275[13];
  v275 += 13;
  (v269)(v273);
  v108 = v272;
  sub_219BE5AE4();
  v109 = v298;
  v110 = v291;
  v291(v108, 0, 1, v298);
  v299(v296, 1, 1, v303);
  sub_219BE77A4();
  v111 = v268;
  *(v268 + 7) = v302;
  v111[8] = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1(v111 + 4);
  v112 = v263;
  sub_219BEAFF4();
  v222 = sub_219BEAD34();
  v223(v112, 1, 1, v224);
  v113 = [v293 bundleForClass_];
  v114 = sub_219BDB5E4();
  v116 = v115;

  *&v309 = v114;
  *(&v309 + 1) = v116;
  v225 = sub_219BF5664();
  (v269)(v273, v221, v274);
  sub_219BE5AE4();
  v110(v108, 0, 1, v109);
  v117 = v299;
  v299(v296, 1, 1, v303);
  sub_219BE77A4();
  v118 = v268;
  *(v268 + 12) = v302;
  v118[13] = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1(v118 + 9);
  sub_219BEAFF4();
  v251 = sub_219BEAD94();
  sub_218AD7B00(0);
  (*(*(v119 - 8) + 56))(v252, 1, 1, v119);
  LOBYTE(v309) = 1;
  sub_218740F28();
  sub_219BE8B54();
  LOBYTE(v309) = 1;
  v120 = v253;
  sub_219BE8B54();
  (*(v229 + 56))(v120, 0, 1, v230);
  sub_219BE5AE4();
  v121 = v298;
  v122 = v291;
  v291(v108, 0, 1, v298);
  v123 = v296;
  v117(v296, 1, 1, v303);
  LODWORD(v263) = *MEMORY[0x277D6D438];
  (v269)(v273);
  sub_219BE77A4();
  v124 = v302;
  v125 = v268;
  *(v268 + 17) = v302;
  v125[18] = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1(v125 + 14);
  sub_219BEAFD4();
  v126 = sub_219BEAF54();
  *&v253 = sub_219BEAB44();
  *&v309 = 0;
  v127 = [v293 bundleForClass_];
  sub_219BDB5E4();

  v128 = v108;
  sub_219BE5AE4();
  v122(v108, 0, 1, v121);
  v299(v123, 1, 1, v303);
  (v285)(v284, v286, v290);
  v129 = v268;
  *(v268 + 22) = v124;
  v129[23] = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1(v129 + 19);
  sub_219BEAFC4();
  (v287)(v292, v282, v289);
  v130 = v281;
  sub_219BEB414();
  v252 = (4 * v277);
  v131 = v226;
  *v130 = v226;
  (v279)(v130, v276, v280);
  v132 = swift_allocObject();
  v253 = xmmword_219C0B8C0;
  *(v132 + 16) = xmmword_219C0B8C0;
  v251 = v131;
  v268 = v126;
  v231 = sub_219BEAA94();
  v133 = sub_219BF3984();
  (*(*(v133 - 8) + 56))(v232, 1, 1, v133);
  v134 = [v293 bundleForClass_];
  sub_219BDB5E4();
  v230 = v135;

  sub_219BE5AE4();
  v136 = v291;
  v291(v128, 0, 1, v298);
  v299(v123, 1, 1, v303);
  (v285)(v284, v286, v290);
  *(v132 + 56) = v302;
  *(v132 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v132 + 32));
  sub_219BEAFC4();
  sub_219BEAF14();
  v137 = sub_219BF3344();
  (*(*(v137 - 8) + 56))(v254, 1, 1, v137);
  LOBYTE(v309) = 1;
  sub_218740ED4();
  sub_219BE8B54();
  LOBYTE(v309) = 1;
  v138 = v235;
  sub_219BE8B54();
  (*(v234 + 56))(v138, 0, 1, v236);
  sub_219BE5AE4();
  v136(v128, 0, 1, v298);
  v139 = v296;
  v299(v296, 1, 1, v303);
  (v269)(v273, v263, v274);
  sub_219BE77A4();
  *(v132 + 96) = v302;
  *(v132 + 104) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v132 + 72));
  sub_219BEAFD4();
  v254 = sub_219BEAEF4();
  *&v309 = 0;
  LOBYTE(v308[0]) = 1;
  sub_2186D6710(0, &qword_280E8E680);
  sub_218AD78D8();
  sub_219BE8B54();
  LOBYTE(v308[0]) = 1;
  v140 = v244;
  sub_219BE8B54();
  (*(v243 + 56))(v140, 0, 1, v245);
  sub_219BE5AE4();
  v291(v128, 0, 1, v298);
  v299(v139, 1, 1, v303);
  (v269)(v273, v263, v274);
  sub_219BE77A4();
  *(v132 + 136) = v302;
  *(v132 + 144) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v132 + 112));
  sub_219BEAFD4();
  (v287)(v292, v282, v289);
  v141 = v270;
  v142 = v252;
  v143 = v281;
  sub_219BEB414();
  v274 = &v142[v277 + v141];
  v144 = v251;
  *v143 = v251;
  (v279)(v143, v276, v280);
  v145 = swift_allocObject();
  *(v145 + 16) = v295;
  v146 = qword_280EE37F0;
  v275 = v144;
  if (v146 != -1)
  {
    swift_once();
  }

  LOBYTE(v309) = 1;

  v147 = [v293 bundleForClass_];
  sub_219BDB5E4();

  v148 = v128;
  v149 = v291;
  v291(v128, 1, 1, v298);
  v150 = v296;
  v299(v296, 1, 1, v303);
  v151 = v284;
  v152 = v286;
  (v285)(v284, v286, v290);
  *(v145 + 56) = v302;
  *(v145 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v145 + 32));
  sub_219BEAFC4();
  (v287)(v292, v282, v289);
  sub_219BEB414();
  *v255 = v275;
  v279();
  v274 = sub_219BEAD44();
  LOBYTE(v309) = 1;
  v153 = [v293 bundleForClass_];
  sub_219BDB5E4();

  v154 = v298;
  v149(v148, 1, 1, v298);
  v155 = v299;
  v299(v150, 1, 1, v303);
  v156 = v152;
  v157 = v290;
  (v285)(v151, v156, v290);
  v312[3] = v302;
  v312[4] = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1(v312);
  sub_219BEAFC4();
  v274 = sub_219BEAD84();
  LOBYTE(v309) = 1;
  v158 = [v293 bundleForClass_];
  sub_219BDB5E4();

  v159 = v154;
  v160 = v291;
  v291(v148, 1, 1, v159);
  v161 = v296;
  v155(v296, 1, 1, v303);
  v162 = v151;
  v163 = v151;
  v164 = v285;
  (v285)(v163, v286, v157);
  v313[3] = v302;
  v313[4] = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1(v313);
  v165 = v161;
  sub_219BEAFC4();
  v274 = sub_219BEAD54();
  LOBYTE(v309) = 1;
  v166 = [v293 bundleForClass_];
  sub_219BDB5E4();

  v160(v148, 1, 1, v298);
  v299(v165, 1, 1, v303);
  (v164)(v162, v286, v290);
  v314[3] = v302;
  v314[4] = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1(v314);
  sub_219BEAFC4();
  sub_218AD7BA0(v312, &v309);
  v305 = v309;
  v306 = v310;
  v307 = v311;
  if (*(&v310 + 1))
  {
    sub_2186CB1F0(&v305, v308);
    v167 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v167 = sub_2191F780C(0, v167[2] + 1, 1, v167);
    }

    v169 = v167[2];
    v168 = v167[3];
    v170 = v275;
    if (v169 >= v168 >> 1)
    {
      v167 = sub_2191F780C((v168 > 1), v169 + 1, 1, v167);
    }

    v167[2] = v169 + 1;
    sub_2186CB1F0(v308, &v167[5 * v169 + 4]);
  }

  else
  {
    sub_218AD7C30(&v305);
    v167 = MEMORY[0x277D84F90];
    v170 = v275;
  }

  v275 = (v258 + v271);
  sub_218AD7BA0(v313, &v309);
  v305 = v309;
  v306 = v310;
  v307 = v311;
  v171 = v289;
  if (*(&v310 + 1))
  {
    sub_2186CB1F0(&v305, v308);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v167 = sub_2191F780C(0, v167[2] + 1, 1, v167);
    }

    v173 = v167[2];
    v172 = v167[3];
    if (v173 >= v172 >> 1)
    {
      v167 = sub_2191F780C((v172 > 1), v173 + 1, 1, v167);
    }

    v167[2] = v173 + 1;
    sub_2186CB1F0(v308, &v167[5 * v173 + 4]);
  }

  else
  {
    sub_218AD7C30(&v305);
  }

  v174 = v292;
  sub_218AD7BA0(v314, &v309);
  v305 = v309;
  v306 = v310;
  v307 = v311;
  if (*(&v310 + 1))
  {
    sub_2186CB1F0(&v305, v308);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v167 = sub_2191F780C(0, v167[2] + 1, 1, v167);
    }

    v176 = v167[2];
    v175 = v167[3];
    if (v176 >= v175 >> 1)
    {
      v167 = sub_2191F780C((v175 > 1), v176 + 1, 1, v167);
    }

    v167[2] = v176 + 1;
    sub_2186CB1F0(v308, &v167[5 * v176 + 4]);
    v174 = v292;
  }

  else
  {
    sub_218AD7C30(&v305);
  }

  v177 = v277;
  v178 = v270;
  sub_218AD7B34(0, &qword_280EE5B18, &unk_280EE5B20, MEMORY[0x277D6D430], MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  (v287)(v174, v282, v171);
  sub_219BEB414();
  v274 = v178 + 8 * v177 - v177;
  v179 = v281;
  *v281 = v170;
  v180 = v179;
  v279();
  v181 = swift_allocObject();
  *(v181 + 16) = v295;
  v273 = sub_219BEAE74();
  *&v309 = 0;
  v182 = [v293 bundleForClass_];
  sub_219BDB5E4();

  v183 = v272;
  v291(v272, 1, 1, v298);
  (v299)();
  (v285)(v284, v286, v290);
  *(v181 + 56) = v302;
  *(v181 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v181 + 32));
  sub_219BEAFC4();
  (v287)(v292, v282, v171);
  v184 = v180;
  sub_219BEB414();
  sub_219BEB444();
  v185 = swift_allocObject();
  v185[1] = v295;
  v186 = v271;
  v274 = v185 + v271;
  v275 = v185;
  v187 = *MEMORY[0x277D76CD0];
  v188 = swift_allocObject();
  *(v188 + 16) = v253;
  v189 = *MEMORY[0x277D76D68];
  v190 = *MEMORY[0x277D76D80];
  *(v188 + 32) = *MEMORY[0x277D76D68];
  *(v188 + 40) = v190;
  v191 = *MEMORY[0x277D76CE0];
  v273 = v188;
  *(v188 + 48) = v191;
  v192 = swift_allocObject();
  *(v192 + 16) = v256;
  v270 = v192;
  v263 = (v192 + v186);
  v193 = *MEMORY[0x277D76D60];
  *v184 = *MEMORY[0x277D76D60];
  v194 = v280;
  (v279)(v184, *MEMORY[0x277D6ECD0], v280);
  v195 = swift_allocObject();
  *(v195 + 16) = v295;
  v269 = v187;
  v196 = v189;
  v197 = v190;
  v198 = v191;
  v199 = v193;
  v268 = sub_219BEAF44();
  v200 = sub_219BE7394();
  (*(*(v200 - 8) + 56))(v247, 1, 1, v200);
  v201 = [v293 bundleForClass_];
  sub_219BDB5E4();

  sub_219BE5AE4();
  v291(v183, 0, 1, v298);
  v299(v296, 1, 1, v303);
  (v285)(v284, v286, v290);
  *(v195 + 56) = v302;
  *(v195 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v195 + 32));
  sub_219BEAFC4();
  (v287)(v292, v282, v289);
  sub_219BEB414();
  v202 = *MEMORY[0x277D76D58];
  *v184 = *MEMORY[0x277D76D58];
  (v279)(v184, v276, v194);
  v203 = swift_allocObject();
  *(v203 + 16) = v295;
  v204 = qword_280EE3848;
  v205 = v202;
  if (v204 != -1)
  {
    swift_once();
  }

  LOBYTE(v309) = 1;

  v206 = [v293 bundleForClass_];
  sub_219BDB5E4();

  v207 = v272;
  sub_219BE5AE4();
  v291(v207, 0, 1, v298);
  v299(v296, 1, 1, v303);
  (v285)(v284, v286, v290);
  *(v203 + 56) = v302;
  *(v203 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v203 + 32));
  sub_219BEAFC4();
  (v287)(v292, v282, v289);
  sub_219BEB414();
  sub_219BEB444();
  v276 = sub_218AD48C0(v249);
  v277 = swift_allocObject();
  *(v277 + 16) = v295;
  v208 = *MEMORY[0x277D76CF8];
  *(swift_allocObject() + 16) = v295;
  (v279)(v184, *MEMORY[0x277D6ECD8], v280);
  v209 = swift_allocObject();
  *(v209 + 16) = v295;
  v210 = qword_280EE3858;
  v283 = v208;
  if (v210 != -1)
  {
    swift_once();
  }

  LOBYTE(v309) = 1;

  v211 = [v293 bundleForClass_];
  sub_219BDB5E4();

  v291(v207, 1, 1, v298);
  v299(v296, 1, 1, v303);
  (v285)(v284, v286, v290);
  v212 = v302;
  *(v209 + 56) = v302;
  *(v209 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v209 + 32));
  sub_219BEAFC4();
  (v287)(v292, v282, v289);
  sub_219BEB414();
  v213 = MEMORY[0x277D84F90];
  v214 = v277;
  sub_219BEB444();
  v215 = sub_218AD7014();
  v216 = swift_allocObject();
  *(v216 + 16) = v295;
  v217 = *MEMORY[0x277D76CE8];
  *(v216 + 32) = *MEMORY[0x277D76CE8];
  v304 = v259;
  v218 = v217;
  sub_2191EDC2C(v258);
  sub_2191EDC2C(v275);
  sub_2191EDC2C(v276);
  sub_2191EDC2C(v213);
  sub_2191EDC2C(v214);
  sub_2191EDC2C(v215);
  sub_219BEA5B4();
  (*(v262 + 8))(v261, v267);
  return (*(v248 + 8))(v260, v212);
}

uint64_t sub_218AD322C()
{
  v0 = sub_219BEB404();
  v43 = *(v0 - 8);
  v44 = v0;
  MEMORY[0x28223BE20](v0);
  v42 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BEB424();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE7364();
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_218AD8118(0, &qword_280EE5398, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  sub_218AD8118(0, &unk_280EE5DE0, MEMORY[0x277D6D2F8], v8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  sub_218AD8118(0, &unk_280E8BD70, MEMORY[0x277D6ED00], MEMORY[0x277D84560]);
  v38 = sub_219BEB434();
  v37 = *(v38 - 8);
  v35 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09BA0;
  sub_218AD7B34(0, &unk_280E8BF70, &unk_280EE5B20, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C0B8C0;
  if (qword_280EE3810 != -1)
  {
    swift_once();
  }

  v58 = 1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();

  v52 = v17;
  v53 = ObjCClassFromMetadata;
  v18 = [v17 bundleForClass_];
  sub_219BDB5E4();

  v19 = sub_219BE5AF4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v50 = v20 + 56;
  v51 = v21;
  v21(v14, 1, 1, v19);
  v22 = sub_219BE7104();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v48 = v23 + 56;
  v49 = v24;
  v24(v11, 1, 1, v22);
  v25 = *(v55 + 104);
  v47 = *MEMORY[0x277D6D9A8];
  v55 += 104;
  v46 = v25;
  v25(v7);
  v26 = sub_219BEB014();
  v27 = MEMORY[0x277D6EC20];
  v45 = v26;
  *(v15 + 56) = v26;
  *(v15 + 64) = v27;
  __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  sub_219BEAFC4();
  if (qword_280EE3818 != -1)
  {
    swift_once();
  }

  v57 = 1;

  v28 = [v52 bundleForClass_];
  sub_219BDB5E4();

  v51(v14, 1, 1, v19);
  v49(v11, 1, 1, v22);
  v46(v7, v47, v54);
  *(v15 + 96) = v45;
  *(v15 + 104) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v15 + 72));
  sub_219BEAFC4();
  if (qword_280EE3800 != -1)
  {
    swift_once();
  }

  v56 = 1;

  v29 = [v52 bundleForClass_];
  sub_219BDB5E4();

  v51(v14, 1, 1, v19);
  v49(v11, 1, 1, v22);
  v46(v7, v47, v54);
  *(v15 + 136) = v45;
  *(v15 + 144) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v15 + 112));
  sub_219BEAFC4();
  (*(v39 + 104))(v41, *MEMORY[0x277D6ECE0], v40);
  (*(v43 + 104))(v42, *MEMORY[0x277D6ECC0], v44);
  v30 = v36;
  v31 = v35;
  sub_219BEB414();
  v32 = sub_218ACF688(v30, MEMORY[0x277D6ED00], sub_218C34C18, MEMORY[0x277D6ECF8], sub_21875F93C);
  swift_setDeallocating();
  (*(v37 + 8))(v30 + v31, v38);
  swift_deallocClassInstance();
  return v32;
}

uint64_t sub_218AD3B98(uint64_t a1)
{
  v2 = sub_219BEB404();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB424();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 supportsMultipleScenes];

  v12 = *(v7 + 104);
  if (v11)
  {
    v12(v9, *MEMORY[0x277D6ECF0], v6);
    sub_218AD7B34(0, &unk_280E8BF70, &unk_280EE5B20, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    v14 = sub_219BEB014();
    v15 = MEMORY[0x277D6EC20];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a1, v14);
  }

  else
  {
    v12(v9, *MEMORY[0x277D6ECE0], v6);
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D6ECC0], v2);
  return sub_219BEB414();
}

uint64_t sub_218AD3EC8(unsigned __int8 *a1, uint64_t a2)
{
  sub_218AD8118(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  LODWORD(a1) = *a1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  if (a1 == 1)
  {
    sub_219BDB5E4();

    sub_218AD7B34(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    sub_218AD7D2C(a2, v9);
    v14 = sub_219BF3344();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v9, 1, v14) == 1)
    {
      sub_218AD7DC0(v9);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      sub_219BF3334();
      (*(v15 + 8))(v9, v14);
      swift_getObjectType();
      v16 = sub_219BF6234();
      v17 = v20;
      swift_unknownObjectRelease();
    }

    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_2186FC3BC();
    if (!v17)
    {
LABEL_11:
      v22 = [v11 bundleForClass_];
      v16 = sub_219BDB5E4();
      v17 = v23;
    }
  }

  else
  {
    sub_219BDB5E4();

    sub_218AD7B34(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    sub_218AD7D2C(a2, v7);
    v18 = sub_219BF3344();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_218AD7DC0(v7);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      sub_219BF3334();
      (*(v19 + 8))(v7, v18);
      swift_getObjectType();
      v16 = sub_219BF6234();
      v17 = v21;
      swift_unknownObjectRelease();
    }

    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_2186FC3BC();
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  *(v13 + 32) = v16;
  *(v13 + 40) = v17;
  v24 = sub_219BF5454();

  return v24;
}

uint64_t sub_218AD43F8(_BYTE *a1)
{
  if (*a1)
  {
    return 0x7269632E73756C70;
  }

  else
  {
    return 0x69632E73756E696DLL;
  }
}

uint64_t sub_218AD4444(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a2)
  {
    if (*a1)
    {
LABEL_6:
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v16 = 0x8000000219CE6D00;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  swift_getObjectType();
  v4 = sub_219BF6274();
  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v16 = 0x8000000219CE6C90;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_8:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v16 = 0x8000000219CE6C50;
    goto LABEL_10;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v16 = 0x8000000219CE6BE0;
LABEL_10:
  v7 = sub_219BDB5E4();
  v9 = v8;

  type metadata accessor for Localized();
  v10 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_218AD7B34(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  if (v3)
  {
    swift_getObjectType();
    v3 = sub_219BF6234();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2186FC3BC();
  if (v13)
  {

    v9 = v13;
  }

  else
  {
    v3 = v7;
  }

  *(v11 + 32) = v3;
  *(v11 + 40) = v9;
  v14 = sub_219BF5454();

  return v14;
}

uint64_t sub_218AD484C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (*a2)
  {
    swift_getObjectType();
    sub_219BF6274();
  }

  if (v2)
  {
    return 0x6961722E646E6168;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_218AD48C0(void *a1)
{
  v99 = a1;
  v1 = MEMORY[0x277D6DB88];
  v2 = MEMORY[0x277D6DB80];
  sub_218AD7CB8(0, &unk_27CC0DB30, MEMORY[0x277D6DB88], MEMORY[0x277D6DB80], MEMORY[0x277D6DB98]);
  MEMORY[0x28223BE20](v3 - 8);
  v100 = v87 - v4;
  v93 = sub_219BE5FF4();
  v92 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v94 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD7CB8(0, &qword_280EE5368, v1, v2, MEMORY[0x277D6D940]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v91 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = v87 - v9;
  v118 = sub_219BEB404();
  v123 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v119 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BE7364();
  v128 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v125 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_218AD8118(0, &qword_280EE5398, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v127 = v87 - v14;
  sub_218AD8118(0, &unk_280EE5DE0, MEMORY[0x277D6D2F8], v12);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v87 - v16;
  v18 = sub_219BEB424();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84560];
  sub_218AD8118(0, &unk_280E8BD70, MEMORY[0x277D6ED00], MEMORY[0x277D84560]);
  v23 = *(sub_219BEB434() - 8);
  v106 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v104 = xmmword_219C09BA0;
  v98 = v25;
  *(v25 + 16) = xmmword_219C09BA0;
  v126 = *MEMORY[0x277D76D90];
  sub_218AD8118(0, &qword_280E8B610, type metadata accessor for Identifier, v22);
  v26 = swift_allocObject();
  v90 = xmmword_219C09EC0;
  *(v26 + 16) = xmmword_219C09EC0;
  v27 = *MEMORY[0x277D76D48];
  v28 = *MEMORY[0x277D76D78];
  *(v26 + 32) = *MEMORY[0x277D76D48];
  *(v26 + 40) = v28;
  v97 = v26;
  v101 = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C12A40;
  v30 = *MEMORY[0x277D6ECF0];
  v31 = *(v19 + 104);
  v113 = v21;
  v107 = v18;
  v112 = v19 + 104;
  v31(v21, v30, v18);
  v32 = v31;
  sub_218AD7B34(0, &unk_280E8BF70, &unk_280EE5B20, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v109 = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = v104;
  v35 = qword_280EE3830;
  v96 = v126;
  v36 = v27;
  v37 = v28;
  if (v35 != -1)
  {
    swift_once();
  }

  v108 = v29 + v101;
  v130 = 1;

  sub_219BE5AE4();
  v103 = sub_219BE5AF4();
  v38 = *(v103 - 8);
  v120 = *(v38 + 56);
  v114 = v38 + 56;
  v120(v17, 0, 1, v103);
  v121 = sub_219BE7104();
  v39 = *(v121 - 8);
  v122 = *(v39 + 56);
  v40 = v39 + 56;
  v95 = v29;
  v122();
  v116 = v40;
  v115 = *MEMORY[0x277D6D9A8];
  v41 = *(v128 + 104);
  v128 += 104;
  v117 = v41;
  v41(v125);
  v126 = sub_219BEB014();
  v42 = MEMORY[0x277D6EC20];
  *(v34 + 56) = v126;
  *(v34 + 64) = v42;
  __swift_allocate_boxed_opaque_existential_1((v34 + 32));
  sub_219BEAFB4();
  v111 = *MEMORY[0x277D6ECC0];
  v43 = *(v123 + 104);
  v123 += 104;
  v110 = v43;
  v43(v119);
  v44 = v113;
  sub_219BEB414();
  v45 = *MEMORY[0x277D76CF0];
  *v44 = *MEMORY[0x277D76CF0];
  LODWORD(v102) = *MEMORY[0x277D6ECE8];
  (v32)(v44);
  v46 = swift_allocObject();
  v105 = v32;
  v47 = v46;
  *(v46 + 16) = v104;
  v88 = v45;
  v87[1] = sub_219BEAF34();
  LOBYTE(v130) = 1;
  v129 = 0;
  sub_219BE71E4();
  v129 = 0;
  sub_219BE71E4();
  sub_219BE5AE4();
  v120(v17, 0, 1, v103);
  (v122)(v127, 1, 1, v121);
  (*(v92 + 104))(v94, *MEMORY[0x277D6D438], v93);
  sub_219BE77A4();
  v47[7] = v126;
  v47[8] = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1(v47 + 4);
  v48 = v17;
  sub_219BEAFE4();
  v110(v119, v111, v118);
  v49 = v106;
  sub_219BEB414();
  v94 = (2 * v49);
  v50 = v88;
  *v44 = v88;
  v105(v44, v102, v107);
  v51 = swift_allocObject();
  *(v51 + 16) = v104;
  sub_219BEAF54();
  v93 = v50;
  v92 = sub_219BEA9A4();
  LOBYTE(v130) = 1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v100 = ObjCClassFromMetadata;
  *&v104 = objc_opt_self();
  v53 = [v104 bundleForClass_];
  sub_219BDB5E4();

  sub_219BE5AE4();
  v54 = v103;
  v120(v48, 0, 1, v103);
  (v122)(v127, 1, 1, v121);
  v55 = v115;
  v117(v125, v115, v124);
  *(v51 + 56) = v126;
  *(v51 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v51 + 32));
  sub_219BEAFC4();
  v110(v119, v111, v118);
  v56 = v94;
  v57 = v113;
  sub_219BEB414();
  v94 = &v56[v49];
  v58 = v93;
  *v57 = v93;
  v105(v57, v102, v107);
  v59 = swift_allocObject();
  *(v59 + 16) = v90;
  v93 = v58;
  v92 = sub_219BEAEC4();
  LOBYTE(v130) = 3;
  sub_219BF5414();
  sub_219BE5AE4();

  v60 = v48;
  v61 = v54;
  v120(v48, 0, 1, v54);
  v63 = v121;
  v62 = v122;
  (v122)(v127, 1, 1, v121);
  v64 = v125;
  v65 = v55;
  v66 = v124;
  v117(v125, v65, v124);
  *(v59 + 56) = v126;
  *(v59 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v59 + 32));
  sub_219BEAFB4();
  v92 = sub_219BEAEB4();
  LOBYTE(v130) = 3;
  sub_219BF5414();
  sub_219BE5AE4();

  v120(v60, 0, 1, v54);
  (v62)(v127, 1, 1, v63);
  v67 = v117;
  v117(v64, v115, v66);
  *(v59 + 96) = v126;
  *(v59 + 104) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v59 + 72));
  sub_219BEAFB4();
  v110(v119, v111, v118);
  v68 = v113;
  sub_219BEB414();
  v94 = (4 * v106);
  *v68 = v93;
  v105(v68, v102, v107);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_219C0B8C0;
  v109 = sub_219BEAE54();
  v130 = 0;
  v70 = [v104 bundleForClass_];
  sub_219BDB5E4();

  sub_219BE5AE4();
  v71 = v120;
  v120(v60, 0, 1, v61);
  (v122)(v127, 1, 1, v121);
  v67(v125, v115, v124);
  v112 = v69;
  *(v69 + 56) = v126;
  *(v69 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v69 + 32));
  sub_219BEAFC4();
  v109 = sub_219BEAE34();
  v130 = 0;
  v72 = v104;
  v73 = v100;
  v74 = [v104 bundleForClass_];
  v107 = sub_219BDB5E4();
  v105 = v75;

  v102 = "Title for Zoom In menu item";
  sub_219BE5AE4();
  v71(v60, 0, 1, v61);
  sub_219BEAA44();
  v76 = [v72 bundleForClass_];
  sub_219BDB5E4();

  v77 = v127;
  sub_219BE70F4();
  (v122)(v77, 0, 1, v121);
  v117(v125, v115, v124);
  v78 = v112;
  *(v112 + 96) = v126;
  *(v78 + 104) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v78 + 72));
  sub_219BEAFC4();
  v109 = sub_219BEAE44();
  v130 = 0;
  v79 = [v72 &:v73 OBJC:? LABEL:? PROTOCOL:? :? :?NUTitleViewStyler + 3];
  v107 = sub_219BDB5E4();
  v105 = v80;

  v102 = "Title for Zoom Out menu item";
  sub_219BE5AE4();
  v120(v60, 0, 1, v103);
  sub_219BEAA54();
  v81 = [v72 &:v73 OBJC:? LABEL:? PROTOCOL:? :? :?NUTitleViewStyler + 3];
  sub_219BDB5E4();

  sub_219BE70F4();
  (v122)(v77, 0, 1, v121);
  v117(v125, v115, v124);
  v82 = v112;
  *(v112 + 136) = v126;
  *(v82 + 144) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v82 + 112));
  sub_219BEAFC4();
  v110(v119, v111, v118);
  v83 = v108;
  v84 = v94;
  sub_219BEB414();
  sub_218AD65E8(v99, &v84[v106 + v83]);
  v85 = v98;
  sub_219BEB444();
  return v85;
}

uint64_t sub_218AD5FEC(void **a1)
{
  v1 = *a1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_219BDB5E4();

  if (v1 >= 2)
  {
    sub_218AD7D0C(v1);
    if (([swift_unknownObjectRetain() isPuzzleHub] & 1) != 0 || objc_msgSend(v1, sel_isPuzzleType))
    {

      v6 = [v3 bundleForClass_];
      v5 = sub_219BDB5E4();
    }

    sub_218AD7D1C(v1);
    sub_218AD7D1C(v1);
  }

  return v5;
}

uint64_t sub_218AD61B0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218AD62C4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218AD6460()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

void *sub_218AD65E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_219BEB404();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE7364();
  v6 = *(v5 - 8);
  v73 = v5;
  v74 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_218AD8118(0, &qword_280EE5398, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  sub_218AD8118(0, &unk_280EE5DE0, MEMORY[0x277D6D2F8], v9);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = sub_219BEB424();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v21 = [result useSearchInArticle];
    swift_unknownObjectRelease();
    if (v21)
    {
      v22 = *MEMORY[0x277D76CF0];
      v57 = v19;
      *v19 = v22;
      (*(v17 + 104))(v19, *MEMORY[0x277D6ECE8], v16);
      sub_218AD7B34(0, &unk_280E8BF70, &unk_280EE5B20, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C0EE20;
      v24 = v22;
      sub_219BEAE84();
      LOBYTE(v75) = 1;
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v70 = ObjCClassFromMetadata;
      v62 = objc_opt_self();
      v26 = [v62 bundleForClass_];
      sub_219BDB5E4();

      sub_219BE5AE4();
      v61 = sub_219BE5AF4();
      v27 = *(v61 - 8);
      v66 = *(v27 + 56);
      v28 = v27 + 56;
      v66(v15, 0, 1, v61);
      v65 = sub_219BE7104();
      v29 = *(v65 - 8);
      v60 = *(v29 + 56);
      v71 = v29 + 56;
      v30 = v12;
      v60(v12, 1, 1, v65);
      v59 = *MEMORY[0x277D6D9A8];
      v31 = v73;
      v32 = *(v74 + 104);
      v74 += 104;
      v64 = v32;
      v32(v8);
      v63 = sub_219BEB014();
      v33 = MEMORY[0x277D6EC20];
      v58 = v23;
      *(v23 + 56) = v63;
      *(v23 + 64) = v33;
      __swift_allocate_boxed_opaque_existential_1((v23 + 32));
      sub_219BEAFC4();
      v56 = sub_219BEA934();
      v75 = 0;
      v76 = 0;
      v34 = v62;
      v35 = [v62 bundleForClass_];
      v52 = sub_219BDB5E4();

      sub_219BE5AE4();
      v36 = v8;
      v37 = v61;
      v55 = v28;
      v66(v15, 0, 1, v61);
      v38 = v60;
      v60(v30, 1, 1, v65);
      v54 = v36;
      v39 = v59;
      v64(v36, v59, v31);
      v40 = v58;
      v58[12] = v63;
      v40[13] = MEMORY[0x277D6EC20];
      __swift_allocate_boxed_opaque_existential_1(v40 + 9);
      sub_219BEAFC4();
      v56 = sub_219BEA944();
      v75 = 0;
      v76 = 0;
      v41 = [v34 bundleForClass_];
      sub_219BDB5E4();

      sub_219BE5AE4();
      v42 = v37;
      v43 = v66;
      v66(v15, 0, 1, v42);
      v53 = v30;
      v44 = v65;
      v38(v30, 1, 1, v65);
      v45 = v54;
      v46 = v39;
      v47 = v64;
      v64(v54, v46, v73);
      v48 = v63;
      v49 = v58;
      v58[17] = v63;
      v49[18] = MEMORY[0x277D6EC20];
      __swift_allocate_boxed_opaque_existential_1(v49 + 14);
      v50 = v45;
      sub_219BEAFC4();
      v56 = sub_219BEAE94();
      LOBYTE(v75) = 1;
      v51 = [v62 bundleForClass_];
      sub_219BDB5E4();

      sub_219BE5AE4();
      v43(v15, 0, 1, v61);
      v60(v53, 1, 1, v44);
      v47(v50, v59, v73);
      v49[22] = v48;
      v49[23] = MEMORY[0x277D6EC20];
      __swift_allocate_boxed_opaque_existential_1(v49 + 19);
      sub_219BEAFC4();
      (*(v68 + 104))(v67, *MEMORY[0x277D6ECC0], v69);
      return sub_219BEB414();
    }

    else
    {
      sub_219BF53D4();

      return sub_219BEB444();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218AD7014()
{
  v0 = sub_219BEB404();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE7364();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_218AD8118(0, &qword_280EE5398, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  sub_218AD8118(0, &unk_280EE5DE0, MEMORY[0x277D6D2F8], v7);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_219BEB424();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE1CC4();
  if ((sub_219BE1CB4() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v51 = v15;
  sub_219BDC8D4();
  sub_219BDC8B4();
  sub_219BDC254();
  sub_219BDC8A4();

  if (v55 != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v47 = v6;
  v48 = v1;
  v49 = v0;
  sub_218AD8118(0, &unk_280E8BD70, MEMORY[0x277D6ED00], MEMORY[0x277D84560]);
  v45 = sub_219BEB434();
  v46 = (*(*(v45 - 8) + 80) + 32) & ~*(*(v45 - 8) + 80);
  v18 = swift_allocObject();
  v50 = xmmword_219C09BA0;
  *(v18 + 16) = xmmword_219C09BA0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v41 = ObjCClassFromMetadata;
  v21 = [v20 bundleForClass_];
  v22 = sub_219BDB5E4();
  v43 = v23;
  v44 = v22;

  sub_218AD7B34(0, &unk_280E8BF70, &unk_280EE5B20, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = v50;
  v25 = *MEMORY[0x277D6ECF0];
  v26 = *(v51 + 104);
  v51 += 104;
  v42 = v26;
  v26(v17, v25, v14);
  v27 = swift_allocObject();
  *(v27 + 16) = v50;
  if (qword_280EE3838 != -1)
  {
    swift_once();
  }

  *&v50 = qword_280F62490;
  v54 = 1;

  v28 = [v20 bundleForClass_];
  v29 = sub_219BDB5E4();
  v40 = v30;
  v41 = v29;

  sub_219BE5AE4();
  v31 = sub_219BE5AF4();
  (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
  v32 = sub_219BE7104();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  (*(v52 + 104))(v47, *MEMORY[0x277D6D9A8], v53);
  v33 = sub_219BEB014();
  v34 = MEMORY[0x277D6EC20];
  *(v27 + 56) = v33;
  *(v27 + 64) = v34;
  __swift_allocate_boxed_opaque_existential_1((v27 + 32));
  sub_219BEAFC4();
  v35 = *MEMORY[0x277D6ECC0];
  v36 = v49;
  v37 = *(v48 + 104);
  v37(v3, v35, v49);
  v38 = MEMORY[0x277D6ECF8];
  *(v24 + 56) = v45;
  *(v24 + 64) = v38;
  __swift_allocate_boxed_opaque_existential_1((v24 + 32));
  sub_219BEB414();
  v42(v17, *MEMORY[0x277D6ECE0], v14);
  v37(v3, v35, v36);
  sub_219BEB414();
  return v18;
}

uint64_t sub_218AD778C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218AD8118(0, &unk_280EE3A80, MEMORY[0x277D6EB38], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BEA5C4();
  sub_219BE1DF4();
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = objc_allocWithZone(sub_219BE5B04());
    result = sub_219BE5B14();
    v10 = MEMORY[0x277D6D300];
    *a2 = result;
    a2[1] = v10;
  }

  return result;
}

unint64_t sub_218AD78D8()
{
  result = qword_280E90318;
  if (!qword_280E90318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90318);
  }

  return result;
}

void sub_218AD792C()
{
  if (!qword_280EE47D8)
  {
    sub_2186D6710(255, &qword_280E8E680);
    sub_218AD78D8();
    v0 = sub_219BE8B64();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE47D8);
    }
  }
}

void sub_218AD79E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_219BE8B64();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218AD7A64(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_219BE77B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218AD7B34(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_218AD7BA0(uint64_t a1, uint64_t a2)
{
  sub_218AD7B34(0, &qword_280EE5B18, &unk_280EE5B20, MEMORY[0x277D6D430], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AD7C30(uint64_t a1)
{
  sub_218AD7B34(0, &qword_280EE5B18, &unk_280EE5B20, MEMORY[0x277D6D430], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218AD7CB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218AD7D0C(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_218AD7D1C(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218AD7D2C(uint64_t a1, uint64_t a2)
{
  sub_218AD8118(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AD7DC0(uint64_t a1)
{
  sub_218AD8118(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218AD7E4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_218AD7F04()
{
  result = qword_27CC0DBB8;
  if (!qword_27CC0DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DBB8);
  }

  return result;
}

unint64_t sub_218AD7FB4()
{
  result = qword_27CC0DBC0;
  if (!qword_27CC0DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DBC0);
  }

  return result;
}

uint64_t sub_218AD8008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218AD8070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218AD80D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218AD8118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218AD817C(uint64_t a1, uint64_t a2)
{
  sub_218AD8118(0, &unk_280EE5DC0, MEMORY[0x277D6D330], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218AD826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a68 > 2u)
  {
    if (a68 != 3)
    {
      if (a68 == 4)
      {

        sub_218AD8B44(a3, a4);

        return;
      }

      if (a68 != 5)
      {
        return;
      }
    }

    return;
  }

  if (!a68)
  {
LABEL_5:

    sub_218AD884C(a5, a6);
    return;
  }

  if (a68 != 1)
  {
    if (a68 != 2)
    {
      return;
    }

    goto LABEL_5;
  }

  sub_218AD8998(a3, a4);
}

uint64_t sub_218AD884C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_218AD8998(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_218AD8B44(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_218AD8C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_219BEE754();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_218AD8CE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_219BDBD64();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AudioFeedServiceContext();
  MEMORY[0x28223BE20](v48);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD98AC();
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEE754();
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD9A6C(0, &qword_27CC0DBD0, MEMORY[0x277D844C8]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AD9904();
  v18 = v53;
  sub_219BF7B34();
  if (v18)
  {
    v19 = a1;
  }

  else
  {
    v41 = a1;
    v42 = v15;
    v53 = v12;
    v20 = v46;
    v44 = v6;
    v58 = 0;
    sub_219BF7674();
    v37 = v54;
    v40 = v55;
    v58 = 1;
    sub_218AD9958();
    v39 = sub_219BF7684();
    v57 = 2;
    sub_219BF7674();
    v56 = v58;
    v38 = v58 == 2;
    v58 = 3;
    sub_218AC5780(&qword_280E91B20);
    v21 = v50;
    v22 = v51;
    v43 = v14;
    sub_219BF7674();
    v23 = v52;
    v24 = *(v52 + 48);
    if (v24(v21, 1, v22) == 1)
    {
      sub_219BEE724();
      v25 = v24(v21, 1, v22);
      v26 = v49;
      v27 = v44;
      v28 = v47;
      if (v25 != 1)
      {
        sub_218AD99AC(v50);
      }
    }

    else
    {
      (*(v23 + 32))(v53, v21, v22);
      v26 = v49;
      v27 = v44;
      v28 = v47;
    }

    v29 = v38 | v56;
    v30 = v40;
    if (v40)
    {
      v31 = v37;
    }

    else
    {
      sub_219BDBD54();
      v32 = sub_219BDBD44();
      v27 = v44;
      v31 = v32;
      v30 = v33;
      (*(v45 + 8))(v28, v20);
    }

    *v27 = v31;
    *(v27 + 8) = v30;
    if (v39)
    {
      v34 = v39;
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    (*(v42 + 8))(v17, v43);
    *(v27 + 24) = v34;
    *(v27 + 16) = v29 & 1;
    (*(v52 + 32))(v27 + *(v48 + 28), v53, v51);
    sub_218AD9A08(v27, v26);
    v19 = v41;
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_218AD91E8(void *a1)
{
  v3 = v1;
  sub_218AD9A6C(0, &qword_27CC0DBE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AD9904();
  sub_219BF7B44();
  v13 = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v11[15] = 1;
    sub_2186E6C3C();
    sub_218AD9AD0();
    sub_219BF7834();
    v11[14] = 2;
    sub_219BF7804();
    type metadata accessor for AudioFeedServiceContext();
    v11[13] = 3;
    sub_219BEE754();
    sub_218AC5780(&qword_280E91B28);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218AD9418()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218AD94F0()
{
  sub_219BF5524();
}

uint64_t sub_218AD95B4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218AD9688@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218AD9CB4();
  *a1 = result;
  return result;
}

void sub_218AD96B8(unint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  v3 = 0x8000000219CD6910;
  v4 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v4 = 0x4F65636976726573;
    v3 = 0xEE00736E6F697470;
  }

  v5 = 0xEA00000000007364;
  if (*v1)
  {
    v2 = 0x6E694B70756F7267;
  }

  else
  {
    v5 = 0xEA00000000007265;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_218AD974C()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x4F65636976726573;
  }

  if (*v0)
  {
    v1 = 0x6E694B70756F7267;
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

uint64_t sub_218AD97DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218AD9CB4();
  *a1 = result;
  return result;
}

uint64_t sub_218AD9804(uint64_t a1)
{
  v2 = sub_218AD9904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218AD9840(uint64_t a1)
{
  v2 = sub_218AD9904();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218AD98AC()
{
  if (!qword_27CC0DBC8)
  {
    sub_219BEE754();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0DBC8);
    }
  }
}

unint64_t sub_218AD9904()
{
  result = qword_27CC0DBD8;
  if (!qword_27CC0DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DBD8);
  }

  return result;
}

unint64_t sub_218AD9958()
{
  result = qword_280ED3FB8;
  if (!qword_280ED3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3FB8);
  }

  return result;
}

uint64_t sub_218AD99AC(uint64_t a1)
{
  sub_218AD98AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218AD9A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedServiceContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218AD9A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218AD9904();
    v7 = a3(a1, &type metadata for AudioFeedServiceContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218AD9AD0()
{
  result = qword_27CC0DBE8;
  if (!qword_27CC0DBE8)
  {
    sub_2186E6C3C();
    sub_218AD9B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DBE8);
  }

  return result;
}

unint64_t sub_218AD9B48()
{
  result = qword_280ED3FD8[0];
  if (!qword_280ED3FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED3FD8);
  }

  return result;
}

unint64_t sub_218AD9BB0()
{
  result = qword_27CC0DBF0;
  if (!qword_27CC0DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DBF0);
  }

  return result;
}

unint64_t sub_218AD9C08()
{
  result = qword_27CC0DBF8;
  if (!qword_27CC0DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DBF8);
  }

  return result;
}

unint64_t sub_218AD9C60()
{
  result = qword_27CC0DC00;
  if (!qword_27CC0DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DC00);
  }

  return result;
}

uint64_t sub_218AD9CB4()
{
  v0 = sub_219BF7614();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for MagazineCatalogSectionHeaderViewLayoutOptions()
{
  result = qword_27CC0DC08;
  if (!qword_27CC0DC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218AD9D74()
{
  sub_219BE8164();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218AD9E04()
{
  v22 = sub_219BE9C04();
  v0 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
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
  v23 = *(v23 + 16);
  v13 = sub_219BE9924();
  v21[0] = v14;
  v21[1] = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D2F3B8], v6);
  sub_219BE9934();
  v15 = (*(v0 + 88))(v2, v22);
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
  sub_218ADD000(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v19 = v24;
  sub_219BDD1F4();
  (*(v10 + 8))(v12, v19);
  return sub_219BDD134();
}

uint64_t sub_218ADA1F4(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_218ADD000(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_218744AB0(v37, sub_21880702C);
  sub_219BE8F44();
  (*(v10 + 32))(v13, v15, v9);
  v19 = (*(v10 + 88))(v13, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v13, v9);
    }
  }

  sub_219BDF234();
  sub_2187F5C70(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_218ADD000(&qword_280EE8810, MEMORY[0x277D2D9A8]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_218ADD000(&qword_280EE8760, MEMORY[0x277D2DB18]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

uint64_t sub_218ADA81C(uint64_t a1)
{
  sub_218985EAC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioHistoryFeedModel();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ADCCD0();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ADCE28(0, &qword_27CC0DC18, MEMORY[0x277D6DA48]);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v12 + 8))(v14, v11);
  (*(v4 + 32))(v6, v9, v3);
  sub_219BF07D4();
  v15 = *(v17[1] + 16);
  swift_unknownObjectRetain();

  sub_218ADAA6C(a1, v15);
  swift_unknownObjectRelease();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218ADAA6C(uint64_t a1, void *a2)
{
  v23 = a1;
  sub_218ADCE28(0, &qword_27CC0DC18, MEMORY[0x277D6DA48]);
  v22 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v20 - v7;
  [*(v2 + 64) markArticleAsSeenWithHeadline:a2 rememberForever:1];
  __swift_project_boxed_opaque_existential_1((v2 + 72), *(v2 + 96));
  v8 = [a2 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  sub_219771548(v9, v11);

  __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
  v12 = [a2 identifier];
  sub_219BF5414();

  v13 = sub_219BF4774();

  v15 = v21;
  v14 = v22;
  (*(v5 + 16))(v21, v23, v22);
  v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v5 + 32))(v17 + v16, v15, v14);
  v18 = v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = v2;
  *(v18 + 8) = v13 & 1;
  swift_unknownObjectRetain();

  sub_219BDD154();
}

uint64_t sub_218ADACD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v170 = a5;
  v182 = a4;
  v187 = a3;
  v198 = a1;
  v153 = sub_219BDBD34();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v151 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2187F5C70(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v150 = &v125 - v9;
  v180 = sub_219BDF754();
  v185 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v141 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_219BDBD64();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_219BDFFB4();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_219BE1714();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BE0444();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F5C70(0, &unk_27CC0DC30, sub_218ADCCD0, v7);
  MEMORY[0x28223BE20](v15 - 8);
  v143 = &v125 - v16;
  sub_218ADCCD0();
  v183 = v17;
  v176 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v172 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ADCE28(0, &qword_27CC0C088, MEMORY[0x277D6EC60]);
  v175 = v19;
  v174 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v171 = &v125 - v20;
  sub_218ADCF1C();
  MEMORY[0x28223BE20](v21 - 8);
  v173 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ADCE28(0, &qword_27CC0C070, MEMORY[0x277D6D710]);
  v177 = v23;
  v181 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v154 = &v125 - v24;
  v149 = sub_219BE09E4();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BDF104();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F5C70(0, &qword_280EE8330, MEMORY[0x277D2E738], v7);
  MEMORY[0x28223BE20](v27 - 8);
  v167 = &v125 - v28;
  v169 = sub_219BE0724();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v142 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_219BE1774();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_219BDF8A4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_219BEFBD4();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_219BDF1A4();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_219BDFCE4();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_219BE0D44();
  v184 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BDF0E4();
  v37 = *(v36 - 8);
  v193 = v36;
  v194 = v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = a2;
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_2187F5C70(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v195 = v40;
  v41 = sub_219BDCD44();
  v42 = *(v41 - 8);
  v43 = *(v42 + 80);
  v44 = (v43 + 32) & ~v43;
  v191 = v44 + *(v42 + 72);
  v45 = swift_allocObject();
  v197 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v46 = *MEMORY[0x277CEAD18];
  v47 = *(v42 + 104);
  v47(v45 + v44, v46, v41);
  v196 = "toryFeedTracker.swift";
  sub_218ADD000(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  v48 = v39;
  v49 = v193;
  sub_219BDCCC4();

  (*(v194 + 8))(v48, v49);
  v50 = v178;
  sub_219BF6834();
  v189 = v43;
  v51 = swift_allocObject();
  *(v51 + 16) = v197;
  v193 = v42 + 104;
  v194 = v44;
  v190 = v46;
  v188 = v41;
  v192 = v47;
  v47(v51 + v44, v46, v41);
  sub_218ADD000(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v52 = v179;
  sub_219BDCCC4();

  (*(v184 + 8))(v50, v52);
  sub_218ADCE28(0, &qword_27CC0DC18, MEMORY[0x277D6DA48]);
  v54 = v53;
  v55 = sub_218ADD000(&qword_27CC0DC48, type metadata accessor for AudioHistoryFeedModel);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v179 = v55;
  v184 = v54;
  v57 = v155;
  sub_219BDFCD4();
  v58 = swift_allocObject();
  *(v58 + 16) = v197;
  v59 = v190;
  v60 = v188;
  v192(v58 + v194, v190, v188);
  sub_218ADD000(&unk_280EE8590, MEMORY[0x277D2E058]);
  v61 = v157;
  sub_219BDCCC4();

  (*(v156 + 8))(v57, v61);
  v62 = v159;
  v63 = v158;
  v64 = v160;
  (*(v159 + 104))(v158, *MEMORY[0x277D328F8], v160);
  v65 = v161;
  sub_219BE02C4();
  (*(v62 + 8))(v63, v64);
  v66 = swift_allocObject();
  *(v66 + 16) = v197;
  v67 = v194;
  v68 = v192;
  v192(v66 + v194, v59, v60);
  sub_218ADD000(&unk_280EE8850, MEMORY[0x277D2D950]);
  v69 = v163;
  sub_219BDCCC4();

  (*(v162 + 8))(v65, v69);
  v70 = v164;
  sub_219BDF894();
  v71 = swift_allocObject();
  *(v71 + 16) = v197;
  v68(v71 + v67, v190, v60);
  sub_218ADD000(&qword_280EE8640, MEMORY[0x277D2DE40]);
  v72 = v166;
  sub_219BDCCC4();

  (*(v165 + 8))(v70, v72);
  v73 = [v199 scoreProfile];
  v74 = v185;
  v75 = v183;
  v76 = v169;
  v77 = v168;
  if (v73)
  {
    v78 = v73;
    if ([v73 hasShadowScores])
    {
      [v78 shadowTabiScore];
      [v78 shadowAgedPersonalizationScore];
      v79 = v135;
      sub_219BE1764();
      v80 = swift_allocObject();
      *(v80 + 16) = v197;
      v192(v80 + v194, v190, v188);
      sub_218ADD000(&unk_280EE7F40, MEMORY[0x277D2F8F0]);
      v81 = v137;
      sub_219BDCCC4();

      (*(v136 + 8))(v79, v81);
    }

    else
    {
    }
  }

  v82 = v167;
  sub_219BF6824();
  if ((*(v77 + 48))(v82, 1, v76) == 1)
  {
    sub_218ADCF90(v82, &qword_280EE8330, MEMORY[0x277D2E738]);
  }

  else
  {
    v83 = v142;
    (*(v77 + 32))(v142, v82, v76);
    v84 = swift_allocObject();
    *(v84 + 16) = v197;
    v192(v84 + v194, v190, v188);
    sub_218ADD000(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v77 + 8))(v83, v76);
  }

  v85 = [v199 sourceChannel];
  if (v85)
  {
    v182 = *(v182 + 112);
    v86 = v144;
    v178 = v85;
    sub_219BE01F4();
    v87 = swift_allocObject();
    *(v87 + 16) = v197;
    v88 = v190;
    v89 = v188;
    v192(v87 + v194, v190, v188);
    sub_218ADD000(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v90 = v146;
    sub_219BDCCC4();

    (*(v145 + 8))(v86, v90);
    v91 = v147;
    sub_219BE01E4();
    v74 = v185;
    v92 = swift_allocObject();
    *(v92 + 16) = v197;
    v192(v92 + v194, v88, v89);
    sub_218ADD000(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v93 = v149;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    v75 = v183;
    (*(v148 + 8))(v91, v93);
  }

  v94 = v171;
  sub_219BE7594();
  v95 = v172;
  sub_219BE7564();
  sub_219BE5F84();
  v96 = v176;
  (*(v176 + 8))(v95, v75);
  v97 = v173;
  v98 = v175;
  sub_219BEB244();
  v99 = v97;

  (*(v174 + 8))(v94, v98);
  v100 = v181;
  v101 = v97;
  v102 = v177;
  if ((*(v181 + 48))(v101, 1, v177) == 1)
  {
    sub_218744AB0(v99, sub_218ADCF1C);
    goto LABEL_17;
  }

  (*(v100 + 32))(v154, v99, v102);
  v103 = v143;
  sub_219BE7564();
  (*(v96 + 56))(v103, 0, 1, v75);
  v104 = sub_219BE6A34();
  result = sub_218ADCF90(v103, &unk_27CC0DC30, sub_218ADCCD0);
  if (v104 < 0xFFFFFFFF80000000)
  {
    goto LABEL_26;
  }

  if (v104 > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v105 = v138;
  sub_219BE0434();
  v106 = swift_allocObject();
  *(v106 + 16) = v197;
  v192(v106 + v194, v190, v188);
  sub_218ADD000(&unk_280EE8400, MEMORY[0x277D2E530]);
  v107 = v140;
  sub_219BDCCC4();

  (*(v139 + 8))(v105, v107);
  (*(v181 + 8))(v154, v102);
LABEL_17:
  if ([v199 respondsToSelector_])
  {
    v108 = [v199 parentIssue];
    if (v108)
    {
      v109 = v126;
      v183 = v108;
      sub_21934C4BC();
      v110 = swift_allocObject();
      *(v110 + 16) = v197;
      v111 = v188;
      v112 = v192;
      v192(v110 + v194, v190, v188);
      sub_218ADD000(&unk_280EE7F60, MEMORY[0x277D2F890]);
      v113 = v128;
      sub_219BDCCC4();

      (*(v127 + 8))(v109, v113);
      v114 = v129;
      sub_219BDBD54();
      sub_219BDBD44();
      (*(v130 + 8))(v114, v131);
      v115 = v132;
      sub_219BDFFA4();
      v116 = swift_allocObject();
      *(v116 + 16) = v197;
      v112(v116 + v194, v190, v111);
      sub_218ADD000(&unk_280EE84F0, MEMORY[0x277D2E290]);
      v117 = v134;
      v74 = v185;
      sub_219BDCCC4();

      (*(v133 + 8))(v115, v117);
    }
  }

  v118 = v150;
  sub_219BF6804();
  if ((*(v74 + 48))(v118, 1, v180) == 1)
  {
    sub_218ADCF90(v118, &unk_280EE8690, MEMORY[0x277D2DD28]);
  }

  else
  {
    v119 = v141;
    v120 = v180;
    (*(v74 + 32))(v141, v118, v180);
    v121 = swift_allocObject();
    *(v121 + 16) = v197;
    v192(v121 + v194, v190, v188);
    sub_218ADD000(&unk_280EE86A0, MEMORY[0x277D2DD28]);
    sub_219BDCCC4();

    (*(v74 + 8))(v119, v120);
  }

  sub_219BE0834();
  v122 = v151;
  sub_219BE75A4();
  sub_218ADD000(&qword_280EE82C0, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v123 = *(v152 + 8);
  v124 = v153;
  v123(v122, v153);
  sub_219BE7574();
  v200[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v200);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  v123(v122, v124);
  return sub_218744AB0(v200, sub_21880702C);
}

uint64_t sub_218ADCC44()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  return swift_deallocClassInstance();
}

void sub_218ADCCD0()
{
  if (!qword_27CC0FA10)
  {
    type metadata accessor for AudioHistoryFeedModel();
    sub_218ADD000(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FA10);
    }
  }
}

uint64_t sub_218ADCD64(uint64_t a1)
{
  sub_218ADCE28(0, &qword_27CC0DC18, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_218ADACD4(a1, v6, v1 + v5, v8, v9);
}

void sub_218ADCE28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioHistoryFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioHistoryFeedModel();
    v8[2] = sub_218ADD000(&unk_27CC0DC20, type metadata accessor for AudioHistoryFeedSectionDescriptor);
    v8[3] = sub_218ADD000(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218ADCF1C()
{
  if (!qword_27CC0DC40)
  {
    sub_218ADCE28(255, &qword_27CC0C070, MEMORY[0x277D6D710]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0DC40);
    }
  }
}

uint64_t sub_218ADCF90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187F5C70(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218ADD000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WebEmbedShareActivityItemSource()
{
  result = qword_27CC0DC78;
  if (!qword_27CC0DC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218ADD43C()
{
  result = sub_219BDB954();
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

uint64_t sub_218ADD4D4(uint64_t a1)
{
  v2 = sub_219BE7364();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoveShortcutCommandRequest();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Shortcut();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ADD904(a1, v11, type metadata accessor for Shortcut);
  swift_getEnumCaseMultiPayload();
  sub_218ADD8A8(v11);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  if (qword_280EE37E0 != -1)
  {
    swift_once();
  }

  sub_218ADD904(a1, v8, type metadata accessor for RemoveShortcutCommandRequest);
  (*(v3 + 104))(v5, *MEMORY[0x277D6D9A8], v2);
  sub_219BE6684();
  swift_allocObject();

  return sub_219BE65E4();
}

uint64_t sub_218ADD8A8(uint64_t a1)
{
  v2 = type metadata accessor for Shortcut();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218ADD904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_218ADD96C(void *a1)
{
  if (sub_219BED0C4())
  {
    v3 = [objc_opt_self() clearColor];
  }

  else
  {
    v3 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
  }

  v4 = v3;
  sub_219BEDA04();

  [a1 setLargeTitleDisplayMode_];

  return [a1 setBackButtonDisplayMode_];
}

uint64_t sub_218ADDA58()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218ADDB1C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

void sub_218ADDBE0(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_280E8D808 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09BA0;
    swift_getErrorValue();
    v5 = sub_219BF7A04();
    v7 = v6;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_2186FC3BC();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_219BE5314();
  }
}

double sub_218ADDD00()
{
  v1 = [*v0 carTraitCollection];
  [v1 displayScale];
  v3 = v2;

  return v3;
}

void sub_218ADDD58()
{
  v1 = *v0;
  v2 = [objc_opt_self() sharedTemplate];
  v4[4] = sub_218ADDBE0;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_219116B54;
  v4[3] = &block_descriptor_20;
  v3 = _Block_copy(v4);
  [v1 pushTemplate:v2 animated:1 completion:v3];
  _Block_release(v3);
}

uint64_t sub_218ADDE38(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_218ADE0BC();
  result = sub_219BE1E34();
  if (v16)
  {
    sub_2186CB1F0(&v15, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v4 = sub_2190219B4(a1);
    v5 = sub_219BED0C4();
    v6 = v4;
    v7 = v6;
    if (v5)
    {
      [v6 setModalPresentationStyle_];
      v8 = [v7 sheetPresentationController];

      if (v8)
      {
        sub_218725F94();
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_219C146A0;
        v10 = objc_opt_self();
        *(v9 + 32) = [v10 largeDetent];
        *&v15 = v9;
        v11 = [objc_opt_self() sharedApplication];
        v12 = [v11 preferredContentSizeCategory];

        LOBYTE(v11) = sub_219BF6934();
        if (v11)
        {
          v13 = [v10 mediumDetent];
          MEMORY[0x21CECC690]();
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
        }

        sub_218ADE120();
        v14 = sub_219BF5904();

        [v8 setDetents_];

        [v8 setPrefersGrabberVisible_];
      }
    }

    else
    {
      [v6 setModalPresentationStyle_];
      [v7 setTransitioningDelegate_];
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_218ADE0BC()
{
  result = qword_280EB9180;
  if (!qword_280EB9180)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EB9180);
  }

  return result;
}

unint64_t sub_218ADE120()
{
  result = qword_27CC0DC90;
  if (!qword_27CC0DC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC0DC90);
  }

  return result;
}

uint64_t sub_218ADE16C(uint64_t a1)
{
  v2 = sub_219BDDCB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = sub_219BDF164();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_219BDDC94();
  (*(v3 + 16))(v6, v8, v2);
  v16 = (*(v3 + 88))(v6, v2);
  if (v16 == *MEMORY[0x277D2FCE0])
  {
    v17 = MEMORY[0x277D2D918];
  }

  else if (v16 == *MEMORY[0x277D2FCD8])
  {
    v17 = MEMORY[0x277D2D910];
  }

  else
  {
    if (v16 != *MEMORY[0x277D2FCD0])
    {
      goto LABEL_12;
    }

    v17 = MEMORY[0x277D2D908];
  }

  (*(v3 + 8))(v8, v2);
  (*(v10 + 104))(v13, *v17, v9);
  (*(v10 + 32))(v15, v13, v9);
  sub_219BDDC74();
  v18 = sub_219BDDC84();
  if (v18 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v18 <= 0x7FFFFFFF)
  {
    sub_219BDF144();
    v19 = sub_219BDDCA4();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  __break(1u);
LABEL_12:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218ADE4AC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v95 = a3;
  v96 = a2;
  v87 = sub_219BE6DF4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849938(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v94 = v6;
  v93 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v92 = v79 - v7;
  v8 = type metadata accessor for TodayGapLocation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = (v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = sub_219BF0644();
  v108 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BF0BD4();
  v107 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v12 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TodayFeedGroup();
  v103 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849938(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v17 = v16;
  v89 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v101 = v79 - v18;
  sub_2188119AC(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v79 - v20;
  sub_2187FAD00();
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22);
  v83 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v116 = v79 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = v79 - v29;
  v100 = v17;
  sub_219BEB244();
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    sub_218ADF7F0(v21);
LABEL_5:
    v33 = v93;
    v34 = v92;
    v35 = v94;
    (*(v93 + 104))(v92, *MEMORY[0x277D6DF80], v94);
    v96(v34);
    return (*(v33 + 8))(v34, v35);
  }

  (*(v24 + 32))(v30, v21, v23);
  v31 = sub_218E65AA0();
  if (v32)
  {
    (*(v24 + 8))(v30, v23);
    goto LABEL_5;
  }

  v37 = v31;
  v80 = v30;
  v105 = v3;
  v38 = *(v3 + 16);
  v39 = type metadata accessor for TodayFeedServiceConfig();
  v40 = sub_218ADF7A8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  v110 = sub_219BEF3D4();
  v41 = *(v89 + 16);
  v81 = a1;
  v41(v101, a1, v100);
  v98 = v37;
  sub_219BEB204();
  v88 = v38;
  v114 = v40;
  v115 = v39;
  v42 = sub_219BEF3E4();
  v43 = *(v42 + 16);
  v102 = v23;
  v109 = v24;
  if (v43)
  {
    v106 = (v105 + *(type metadata accessor for TodayExpandBlueprintModifier() + 20));
    v44 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v79[1] = v42;
    v45 = v42 + v44;
    v105 = *(v105 + 24);
    ++v107;
    ++v108;
    v103 = *(v103 + 72);
    v97 = (v24 + 8);
    v82 = xmmword_219C09EC0;
    v99 = xmmword_219C0B8C0;
    v104 = v12;
    do
    {
      sub_2187C7E1C(v45, v15);
      __swift_project_boxed_opaque_existential_1(v106, v106[3]);
      sub_219BEE7A4();
      v46 = v111;
      sub_219BEE844();
      v47 = v116;
      sub_21884A0C0(v15, v105, v12, v46, v116);
      (*v108)(v46, v113);
      (*v107)(v12, v112);
      sub_219BE6944();
      v48 = v23;
      v49 = v47;
      LOBYTE(v47) = sub_219BEB2A4();

      if (v47)
      {
        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        v91 = qword_280F616D8;
        v90 = sub_219BF61F4();
        sub_2186F20D4();
        v50 = swift_allocObject();
        *(v50 + 16) = v82;
        v51 = sub_218829720();
        v53 = v52;
        v54 = MEMORY[0x277D837D0];
        *(v50 + 56) = MEMORY[0x277D837D0];
        v55 = sub_2186FC3BC();
        *(v50 + 64) = v55;
        *(v50 + 32) = v51;
        *(v50 + 40) = v53;
        v117 = sub_219BEF3D4();
        sub_218ADF8DC(0);
        sub_218ADF7A8(&qword_27CC0DC98, sub_218ADF8DC);
        v56 = sub_219BE2324();
        *(v50 + 96) = v54;
        *(v50 + 104) = v55;
        *(v50 + 72) = v56;
        *(v50 + 80) = v57;

        sub_219BE5314();

        sub_219BF6204();
        sub_219BE5314();
        v23 = v102;
        (*v97)(v116, v102);
        v12 = v104;
        sub_218ADF87C(v15, type metadata accessor for TodayFeedGroup);
        v24 = v109;
      }

      else
      {
        v58 = v98;
        sub_219BEB1F4();
        (*v97)(v49, v48);
        result = sub_218ADF87C(v15, type metadata accessor for TodayFeedGroup);
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          __break(1u);
          return result;
        }

        v23 = v48;
        v98 = v60;
        v24 = v109;
        v12 = v104;
      }

      v45 += v103;
      --v43;
    }

    while (v43);
  }

  v61 = v101;
  if (v88 >> 62)
  {
    if ((sub_219BEE854() & 1) == 0)
    {
      v71 = v100;
      goto LABEL_21;
    }

    v65 = swift_allocObject();
    sub_218858C68(0, &qword_280E91AE0, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v65 + 16) = sub_219BEE874();
    v63 = v84;
    *v84 = v65;
    v64 = MEMORY[0x277D33068];
  }

  else
  {
    v62 = swift_allocObject();
    sub_218858C68(0, &qword_280E91AE0, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v62 + 16) = sub_219BEE874();
    v63 = v84;
    *v84 = v62;
    v64 = MEMORY[0x277D33090];
  }

  v66 = *v64;
  sub_218858C68(0, &qword_280E90A00, MEMORY[0x277D33098]);
  v68 = v67;
  v69 = *(v67 - 8);
  (*(v69 + 104))(v63, v66, v67);
  (*(v69 + 56))(v63, 0, 1, v68);
  v70 = v83;
  sub_218858E34(v63, v83);
  sub_218ADF87C(v63, type metadata accessor for TodayGapLocation);
  v71 = v100;
  sub_219BEB1F4();
  (*(v24 + 8))(v70, v23);
LABEL_21:
  sub_219BEEFF4();

  sub_219BEEFE4();
  v72 = sub_219BEEFC4();

  v73 = 0;
  if (v72)
  {
    v73 = sub_219BEDC74();
  }

  else
  {
    v118 = 0;
    v119 = 0;
  }

  v117 = v72;
  v120 = v73;
  sub_219BEB2C4();

  v74 = v86;
  v75 = v85;
  v76 = v87;
  (*(v86 + 104))(v85, *MEMORY[0x277D6D868], v87);
  type metadata accessor for TodayModel(0);
  v77 = v71;
  sub_2186EB3E8();
  sub_218ADF7A8(&qword_280EDF9E0, type metadata accessor for TodayModel);
  sub_2188552DC();
  v78 = v92;
  sub_219BE85E4();
  (*(v74 + 8))(v75, v76);
  v96(v78);

  (*(v93 + 8))(v78, v94);
  (*(v89 + 8))(v61, v77);
  return (*(v109 + 8))(v80, v102);
}

uint64_t sub_218ADF510()
{
  sub_2188119AC(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE38], v0);
  v4 = sub_218847E58(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_218ADF660(uint64_t a1)
{
  v2 = sub_218ADF7A8(qword_280EB2010, type metadata accessor for TodayExpandBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t type metadata accessor for TodayExpandBlueprintModifier()
{
  result = qword_280EB1FF8;
  if (!qword_280EB1FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218ADF7A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218ADF7F0(uint64_t a1)
{
  sub_2188119AC(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218ADF87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218ADF924()
{
  result = type metadata accessor for TodayExpandResult();
  if (v1 <= 0x3F)
  {
    result = sub_2186CFDE4(319, qword_280EC2CE0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_218ADFB44()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintViewController];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  sub_219BE8664();
  v19 = sub_219BE7BC4();

  [v19 setShowsHorizontalScrollIndicator_];

  sub_219BE9BB4();
  v20 = v2;
  v21 = sub_219BE9BA4();
  if (!v21)
  {
LABEL_8:
    v26 = [v1 traitCollection];
    sub_218AE1884();

    return;
  }

  v22 = v21;
  v23 = [v1 view];
  if (v23)
  {
    v24 = v23;
    [v23 addSubview_];

    v25 = *&v1[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintHorizontalShimView];
    *&v1[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintHorizontalShimView] = v22;

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
}