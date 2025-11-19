char *sub_218BF28EC(char *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v8 = OBJC_IVAR___TSFeedViewContext_presentationReason;
    swift_beginAccess();
    v9 = *&v4[v8];
    *&v4[v8] = v7;

    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v11 = OBJC_IVAR___TSFeedViewContext_displayRank;
    swift_beginAccess();
    v12 = *&v4[v11];
    *&v4[v11] = v10;

    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v14 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
    swift_beginAccess();
    v15 = *&v4[v14];
    *&v4[v14] = v13;

    FeedViewContext.set(feedPickerSection:)(a3);
  }

  v16 = a1;
  return v4;
}

uint64_t sub_218BF2A44(uint64_t a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v39 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v40 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v37 - v7;
  v9 = MEMORY[0x277D34098];
  sub_218747D2C(0, &qword_280E8FFE0, MEMORY[0x277D34098], v3);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v37 - v11;
  v13 = *(v1 + 64);
  type metadata accessor for FollowingNotificationsPrewarm();
  v14 = swift_allocBox();
  v16 = v15;
  sub_21878D714();
  v18 = *(v17 + 48);
  v37[1] = a1;
  *v16 = a1;
  v19 = sub_219BF3BD4();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_218BF8160(v12, v16 + v18, &qword_280E8FFE0, v9);
  swift_storeEnumTagMultiPayload();
  v41 = v14;
  v20 = *(v1 + 56);
  v21 = sub_219BDFA44();
  v22 = *(*(v21 - 8) + 56);
  v42 = v8;
  v22(v8, 1, 1, v21);
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v48 = v13;
  sub_2187B171C(v49, &v44, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v45)
  {
    sub_21875F93C(&v44, v46);
    v23 = qword_280ED32D0;

    if (v23 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v24 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    sub_2188202A8(v24);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {

    sub_2187B1CC0(&v44, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v24 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    sub_2188202A8(v24);
  }

  v43 = v14 | 0x3000000000000004;
  v45 = sub_219BDD274();
  *&v44 = v20;
  v27 = v40;
  sub_2189B4E2C(v42, v40);
  sub_2187B171C(v51, v46, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v28 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v29 = (v38 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 47) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v20;
  sub_218BF8160(v27, v31 + v28, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v32 = v31 + v29;
  v33 = v46[1];
  *v32 = v46[0];
  *(v32 + 16) = v33;
  *(v32 + 32) = v47;
  v34 = (v31 + v30);
  v35 = (v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v34 = 0;
  v34[1] = 0;
  *v35 = v25;
  v35[1] = v24;
  v35[2] = v26;
  swift_retain_n();

  sub_2188202A8(v24);
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v24);
  sub_2187B1CC0(v49, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v51, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v42, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(&v44, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
}

uint64_t sub_218BF31EC(uint64_t a1)
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(v1 + 64);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v30 = v11;
  v12 = v11 | 0x3000000000000002;
  v13 = *(v1 + 56);
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v10;
  sub_2187B171C(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    v15 = qword_280ED32D0;

    if (v15 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {

    sub_2187B1CC0(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = v12;
  v33 = sub_219BDD274();
  *&v32 = v13;
  sub_2189B4E2C(v9, v7);
  sub_2187B171C(v39, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = v13;
  sub_218BF8160(v7, v22 + v19, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v17;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v16);
  sub_2187B1CC0(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v29, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
}

uint64_t sub_218BF3874(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v46 = *(v8 - 8);
  v9 = *(v46 + 8);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v15 = OBJC_IVAR___TSFeedViewContext_presentationReason;
  swift_beginAccess();
  v16 = *&v13[v15];
  *&v13[v15] = v14;

  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v18 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
  swift_beginAccess();
  v19 = *&v13[v18];
  *&v13[v18] = v17;

  FeedViewContext.set(feedPickerSection:)(a1);
  v20 = *(v4 + 64);
  v21 = swift_allocObject();
  *(v21 + 16) = v13;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = 1;
  v48 = v21;
  v22 = v21 | 0xE000000000000002;
  v23 = *(v4 + 56);
  v24 = sub_219BDFA44();
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v54 = v20;
  sub_2187B171C(v55, &v50, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v51)
  {
    sub_21875F93C(&v50, v52);
    v25 = qword_280ED32D0;
    v26 = v13;

    if (v25 != -1)
    {
      swift_once();
    }

    v28 = qword_280ED32D8;
    v27 = qword_280ED32E0;
    v29 = qword_280ED32E8;

    v45 = v27;
    sub_2188202A8(v27);
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    v30 = v13;

    sub_2187B1CC0(&v50, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v28 = qword_280ED32D8;
    v31 = qword_280ED32E0;
    v29 = qword_280ED32E8;

    v45 = v31;
    sub_2188202A8(v31);
  }

  v49 = v22;
  v51 = sub_219BDD274();
  *&v50 = v23;
  v32 = v23;
  v33 = v47;
  sub_2189B4E2C(v12, v47);
  sub_2187B171C(v57, v52, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v34 = (v46[80] + 24) & ~v46[80];
  v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = v12;
  v36 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  sub_218BF8160(v33, v37 + v34, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v38 = v37 + v35;
  v39 = v52[1];
  *v38 = v52[0];
  *(v38 + 16) = v39;
  *(v38 + 32) = v53;
  v40 = (v37 + v36);
  v41 = (v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v40 = 0;
  v40[1] = 0;
  v42 = v45;
  *v41 = v28;
  v41[1] = v42;
  v41[2] = v29;
  swift_retain_n();

  sub_2188202A8(v42);
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v42);

  sub_2187B1CC0(v55, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v57, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v46, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(&v50, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
}

uint64_t sub_218BF402C(unint64_t a1)
{
  v2 = v1;
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v43 = *(v4 - 8);
  v5 = *(v43 + 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v12 = OBJC_IVAR___TSFeedViewContext_presentationReason;
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v10[v12] = v11;

  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v15 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
  swift_beginAccess();
  v16 = *&v10[v15];
  *&v10[v15] = v14;

  FeedViewContext.set(feedPickerSection:)(a1);
  v17 = *(v2 + 64);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = v10;
  *(v18 + 32) = 2;
  v44 = v18;
  v19 = v18 | 0x7000000000000000;
  v20 = *(v2 + 56);
  v21 = sub_219BDFA44();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v50 = v17;
  sub_2187B171C(v51, &v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v47)
  {
    sub_21875F93C(&v46, v48);
    v22 = qword_280ED32D0;
    v23 = v10;
    if (v22 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v24 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    v42 = v24;
    sub_2188202A8(v24);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    v27 = v10;
    sub_2187B1CC0(&v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v28 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    v42 = v28;
    sub_2188202A8(v28);
  }

  v45 = v19;
  v47 = sub_219BDD274();
  *&v46 = v20;
  sub_2189B4E2C(v9, v7);
  sub_2187B171C(v53, v48, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v29 = v43[80];
  v43 = v9;
  v30 = (v29 + 24) & ~v29;
  v31 = (v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v20;
  v33 = v7;
  v34 = (v31 + 47) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  sub_218BF8160(v33, v35 + v30, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v36 = v35 + v31;
  v37 = v48[1];
  *v36 = v48[0];
  *(v36 + 16) = v37;
  *(v36 + 32) = v49;
  v38 = (v35 + v34);
  v39 = (v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v38 = 0;
  v38[1] = 0;
  v40 = v42;
  *v39 = v25;
  v39[1] = v40;
  v39[2] = v26;
  swift_retain_n();

  sub_2188202A8(v40);
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v40);

  sub_2187B1CC0(v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v53, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v43, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(&v46, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
}

uint64_t sub_218BF47B4(unint64_t a1)
{
  v2 = v1;
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v41 = *(v4 - 8);
  v5 = *(v41 + 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v12 = OBJC_IVAR___TSFeedViewContext_presentationReason;
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v10[v12] = v11;

  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v15 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
  swift_beginAccess();
  v16 = *&v10[v15];
  *&v10[v15] = v14;

  FeedViewContext.set(feedPickerSection:)(a1);
  v17 = *(v2 + 64);
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  v42 = v18;
  v19 = v18 | 0x3000000000000006;
  v20 = *(v2 + 56);
  v21 = sub_219BDFA44();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v48 = v17;
  sub_2187B171C(v49, &v44, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v45)
  {
    sub_21875F93C(&v44, v46);
    v22 = qword_280ED32D0;
    v23 = v10;
    if (v22 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v24 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    v40 = v24;
    sub_2188202A8(v24);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    v27 = v10;
    sub_2187B1CC0(&v44, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v28 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    v40 = v28;
    sub_2188202A8(v28);
  }

  v43 = v19;
  v45 = sub_219BDD274();
  *&v44 = v20;
  sub_2189B4E2C(v9, v7);
  sub_2187B171C(v51, v46, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v29 = v41[80];
  v41 = v9;
  v30 = (v29 + 24) & ~v29;
  v31 = (v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 47) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v20;
  sub_218BF8160(v7, v33 + v30, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v34 = v33 + v31;
  v35 = v46[1];
  *v34 = v46[0];
  *(v34 + 16) = v35;
  *(v34 + 32) = v47;
  v36 = (v33 + v32);
  v37 = (v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v36 = 0;
  v36[1] = 0;
  v38 = v40;
  *v37 = v25;
  v37[1] = v38;
  v37[2] = v26;
  swift_retain_n();

  sub_2188202A8(v38);
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v38);

  sub_2187B1CC0(v49, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v51, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v41, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(&v44, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
}

uint64_t sub_218BF4F3C()
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = *(v0 + 64);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C14A10;
  v27 = v9;
  v10 = v9 | 0x1000000000000004;
  v11 = *(v0 + 56);
  v12 = sub_219BDFA44();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = v8;
  sub_2187B171C(v34, &v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v30)
  {
    sub_21875F93C(&v29, v31);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v13 = qword_280ED32E0;
    v15 = qword_280ED32E8;

    sub_2188202A8(v13);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_2187B1CC0(&v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v13 = qword_280ED32E0;
    v15 = qword_280ED32E8;

    sub_2188202A8(v13);
  }

  v28 = v10;
  v30 = sub_219BDD274();
  *&v29 = v11;
  sub_2189B4E2C(v7, v5);
  sub_2187B171C(v36, v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v17 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = v7;
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  sub_218BF8160(v5, v19 + v16, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v20 = v19 + v17;
  v21 = v31[1];
  *v20 = v31[0];
  *(v20 + 16) = v21;
  *(v20 + 32) = v32;
  v22 = (v19 + v18);
  v23 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = 0;
  v22[1] = 0;
  *v23 = v14;
  v23[1] = v13;
  v23[2] = v15;
  swift_retain_n();

  sub_2188202A8(v13);
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v13);
  sub_2187B1CC0(v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v26, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(&v29, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
}

uint64_t sub_218BF5608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v14 = v3 + 56;
  v12 = *(v3 + 56);
  v13 = *(v14 + 8);
  v15 = sub_219BDFA44();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v13;
  sub_2187B171C(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_2187B1CC0(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = a1;
  v33 = sub_219BDD274();
  *&v32 = v12;
  sub_2189B4E2C(v11, v9);
  sub_2187B171C(v39, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = v11;
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  sub_218BF8160(v9, v22 + v19, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v17;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v16);
  sub_2187B1CC0(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v29, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  return sub_218744CEC(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
}

uint64_t sub_218BF5C58(char *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v38 = a1;
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v15 = OBJC_IVAR___TSFeedViewContext_presentationReason;
  swift_beginAccess();
  v16 = *&v13[v15];
  *&v13[v15] = v14;

  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v18 = OBJC_IVAR___TSFeedViewContext_displayRank;
  swift_beginAccess();
  v19 = *&v13[v18];
  *&v13[v18] = v17;

  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v21 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
  swift_beginAccess();
  v22 = *&v13[v21];
  *&v13[v21] = v20;

  FeedViewContext.set(feedPickerSection:)(a3);
  v23 = *(v4 + 64);
  v24 = *(*(v38 + 3) + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v13;
  *(v25 + 32) = MEMORY[0x277D84F90];
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  *(v25 + 56) = 0u;
  *(v25 + 72) = 0u;
  *(v25 + 88) = 0;
  *(v25 + 96) = -1;
  v26 = v25 | 0x2000000000000004;
  v27 = *(v4 + 56);
  v28 = sub_219BDFA44();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42[5] = v23;
  sub_219BDC8D4();
  swift_unknownObjectRetain();
  v38 = v13;
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v42[4] = v26;
  v42[3] = sub_219BDD274();
  v42[0] = v27;
  sub_2189B4E2C(v12, v10);
  sub_2187B171C(v43, v40, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v29 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v30 = (v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  v32 = MEMORY[0x277D2DED0];
  sub_218BF8160(v10, v31 + v29, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v33 = v31 + v30;
  v34 = v40[1];
  *v33 = v40[0];
  *(v33 + 16) = v34;
  *(v33 + 32) = v41;
  v35 = (v31 + ((v30 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v35 = 0;
  v35[1] = 0;
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  swift_retain_n();
  v36 = sub_219BEB454();

  sub_2187B1CC0(v43, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v12, &qword_280EE8610, v32, MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(v42, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);

  return v36;
}

uint64_t sub_218BF61E8(unint64_t a1)
{
  v2 = v1;
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v13 = OBJC_IVAR___TSFeedViewContext_presentationReason;
  swift_beginAccess();
  v14 = *&v11[v13];
  *&v11[v13] = v12;

  FeedViewContext.set(feedPickerSection:)(a1);
  v15 = *(v2 + 64);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  v17 = v16 | 0x3000000000000006;
  v18 = *(v2 + 56);
  v19 = sub_219BDFA44();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33[5] = v15;
  sub_219BDC8D4();
  v30 = v11;
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v33[4] = v17;
  v33[3] = sub_219BDD274();
  v33[0] = v18;
  sub_2189B4E2C(v10, v8);
  sub_2187B171C(v34, v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v20 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  v23 = MEMORY[0x277D2DED0];
  sub_218BF8160(v8, v22 + v20, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v24 = v22 + v21;
  v25 = v31[1];
  *v24 = v31[0];
  *(v24 + 16) = v25;
  *(v24 + 32) = v32;
  v26 = (v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v26 = 0;
  v26[1] = 0;
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  swift_retain_n();
  v27 = sub_219BEB454();

  sub_2187B1CC0(v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v10, &qword_280EE8610, v23, MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(v33, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);

  return v27;
}

uint64_t sub_218BF6688(unint64_t a1)
{
  v2 = v1;
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v13 = OBJC_IVAR___TSFeedViewContext_presentationReason;
  swift_beginAccess();
  v14 = *&v11[v13];
  *&v11[v13] = v12;

  FeedViewContext.set(feedPickerSection:)(a1);
  v15 = *(v2 + 64);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v11;
  *(v16 + 40) = 1;
  v17 = v16 | 0xE000000000000002;
  v18 = *(v2 + 56);
  v19 = sub_219BDFA44();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33[5] = v15;
  sub_219BDC8D4();
  v30 = v11;
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v33[4] = v17;
  v33[3] = sub_219BDD274();
  v33[0] = v18;
  sub_2189B4E2C(v10, v8);
  sub_2187B171C(v34, v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v20 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  v23 = MEMORY[0x277D2DED0];
  sub_218BF8160(v8, v22 + v20, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v24 = v22 + v21;
  v25 = v31[1];
  *v24 = v31[0];
  *(v24 + 16) = v25;
  *(v24 + 32) = v32;
  v26 = (v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v26 = 0;
  v26[1] = 0;
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  swift_retain_n();
  v27 = sub_219BEB454();

  sub_2187B1CC0(v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v10, &qword_280EE8610, v23, MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(v33, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);

  return v27;
}

uint64_t sub_218BF6B34()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();
  MEMORY[0x21CECFA80](v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_218BF6BB0(uint64_t *a1)
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = *(v1 + 64);
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v13[5] = v11;
  v14 = v13;
  v37 = *(v1 + 56);
  v15 = sub_219BDFA44();
  v16 = *(*(v15 - 8) + 56);
  v39 = v7;
  v16(v7, 1, 1, v15);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = v12;
  sub_2187B171C(v47, &v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (!v42)
  {
    sub_2188382C8(v8, v9);
    sub_2187B1CC0(&v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v22 = qword_280ED32D8;
    v23 = qword_280ED32E0;
    v24 = qword_280ED32E8;

    sub_2188202A8(v23);
    v19 = v39;
    goto LABEL_8;
  }

  sub_21875F93C(&v41, &v43);
  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  sub_2187A53A0();
  sub_2188382C8(v8, v9);
  result = sub_219BE1E24();
  if (result)
  {
    v18 = result;
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    sub_2187367A8();
    result = sub_219BE1E24();
    v19 = v39;
    if (result)
    {
      v20 = sub_219BED5B4();

      MEMORY[0x28223BE20](v21);
      *(&v35 - 2) = v18;
      *(&v35 - 1) = v20;
      sub_2186F8368(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v22 = sub_219BE30B4();

      __swift_destroy_boxed_opaque_existential_1(&v43);
      v23 = 0;
      v24 = 0;
LABEL_8:
      v35 = v14;
      v40 = v14 | 0x4000000000000002;
      v42 = sub_219BDD274();
      v25 = v37;
      *&v41 = v37;
      v26 = v38;
      sub_2189B4E2C(v19, v38);
      sub_2187B171C(v49, &v43, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v27 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v28 = (v4 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      *(v30 + 16) = v25;
      sub_218BF8160(v26, v30 + v27, &qword_280EE8610, MEMORY[0x277D2DED0]);
      v31 = v30 + v28;
      v32 = v44;
      *v31 = v43;
      *(v31 + 16) = v32;
      *(v31 + 32) = v45;
      v33 = (v30 + v29);
      v34 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v33 = 0;
      v33[1] = 0;
      *v34 = v22;
      v34[1] = v23;
      v34[2] = v24;
      swift_retain_n();

      sub_2188202A8(v23);
      sub_2186CF94C();
      sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v23);
      sub_2187B1CC0(v47, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(v49, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218744CEC(v39, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
      sub_218744CEC(&v41, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218BF741C()
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = *(v0 + 64);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = -1;
  v27 = v9;
  v10 = v9 | 0x6000000000000006;
  v11 = *(v0 + 56);
  v12 = sub_219BDFA44();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = v8;
  sub_2187B171C(v34, &v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v30)
  {
    sub_21875F93C(&v29, v31);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v13 = qword_280ED32E0;
    v15 = qword_280ED32E8;

    sub_2188202A8(v13);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_2187B1CC0(&v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v13 = qword_280ED32E0;
    v15 = qword_280ED32E8;

    sub_2188202A8(v13);
  }

  v28 = v10;
  v30 = sub_219BDD274();
  *&v29 = v11;
  sub_2189B4E2C(v7, v5);
  sub_2187B171C(v36, v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v17 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = v7;
  v18 = (v17 + 47) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  sub_218BF8160(v5, v19 + v16, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v20 = v19 + v17;
  v21 = v31[1];
  *v20 = v31[0];
  *(v20 + 16) = v21;
  *(v20 + 32) = v32;
  v22 = (v19 + v18);
  v23 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = 0;
  v22[1] = 0;
  *v23 = v14;
  v23[1] = v13;
  v23[2] = v15;
  swift_retain_n();

  sub_2188202A8(v13);
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v13);
  sub_2187B1CC0(v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v26, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(&v29, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
}

unint64_t sub_218BF7A98()
{
  result = qword_27CC0EF68;
  if (!qword_27CC0EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EF68);
  }

  return result;
}

uint64_t sub_218BF7AEC()
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = *(v0 + 64);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v27 = v9;
  v10 = v9 | 0x7000000000000006;
  v11 = *(v0 + 56);
  v12 = sub_219BDFA44();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = v8;
  sub_2187B171C(v34, &v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v30)
  {
    sub_21875F93C(&v29, v31);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v13 = qword_280ED32E0;
    v15 = qword_280ED32E8;

    sub_2188202A8(v13);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_2187B1CC0(&v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v13 = qword_280ED32E0;
    v15 = qword_280ED32E8;

    sub_2188202A8(v13);
  }

  v28 = v10;
  v30 = sub_219BDD274();
  *&v29 = v11;
  sub_2189B4E2C(v7, v5);
  sub_2187B171C(v36, v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v17 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = v7;
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  sub_218BF8160(v5, v19 + v16, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v20 = v19 + v17;
  v21 = v31[1];
  *v20 = v31[0];
  *(v20 + 16) = v21;
  *(v20 + 32) = v32;
  v22 = (v19 + v18);
  v23 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = 0;
  v22[1] = 0;
  *v23 = v14;
  v23[1] = v13;
  v23[2] = v15;
  swift_retain_n();

  sub_2188202A8(v13);
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v13);
  sub_2187B1CC0(v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v26, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(&v29, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
}

uint64_t sub_218BF8160(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218747D2C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_33Tm()
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_218BF837C(void *a1)
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218BF84C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v24[1] = a3;
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  v13 = *(v3 + 56);
  v12 = *(v3 + 64);
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27[5] = v12;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v27[4] = a1;
  v27[3] = sub_219BDD274();
  v27[0] = v13;
  sub_2189B4E2C(v11, v9);
  sub_2187B171C(v28, v25, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = MEMORY[0x277D2DED0];
  sub_218BF8160(v9, v17 + v15, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v19 = v17 + v16;
  v20 = v25[1];
  *v19 = v25[0];
  *(v19 + 16) = v20;
  *(v19 + 32) = v26;
  v21 = (v17 + ((v16 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v21 = 0;
  v21[1] = 0;
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  swift_retain_n();
  v22 = sub_219BEB454();

  sub_2187B1CC0(v28, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v11, &qword_280EE8610, v18, MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(v27, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);
  return v22;
}

uint64_t sub_218BF88AC()
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = *(v0 + 64);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = v9 | 0x7000000000000006;
  v11 = *(v0 + 56);
  v12 = sub_219BDFA44();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25[5] = v8;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v25[4] = v10;
  v25[3] = sub_219BDD274();
  v25[0] = v11;
  sub_2189B4E2C(v7, v5);
  sub_2187B171C(v26, v23, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = MEMORY[0x277D2DED0];
  sub_218BF8160(v5, v15 + v13, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v17 = v15 + v14;
  v18 = v23[1];
  *v17 = v23[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v24;
  v19 = (v15 + ((v14 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  swift_retain_n();
  v20 = sub_219BEB454();

  sub_2187B1CC0(v26, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v7, &qword_280EE8610, v16, MEMORY[0x277D83D88], sub_218747D2C);
  sub_218744CEC(v25, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);

  return v20;
}

uint64_t sub_218BF8CB8(uint64_t a1)
{
  v77 = a1;
  sub_21896F9B8();
  v59 = v1;
  MEMORY[0x28223BE20](v1);
  v58 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NewsActivity2.Article(0);
  v4 = MEMORY[0x28223BE20](v3);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = &v57 - v6;
  v62 = sub_219BDD944();
  v7 = MEMORY[0x28223BE20](v62);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v57 - v9;
  v10 = MEMORY[0x277D83D88];
  v71 = MEMORY[0x277D83D88];
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v66 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v68 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v13;
  MEMORY[0x28223BE20](v12);
  v73 = &v57 - v14;
  v72 = sub_219BDE294();
  v15 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x277CC9260];
  sub_218747D2C(0, &unk_280EE9D00, MEMORY[0x277CC9260], v10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57 - v19;
  v78 = sub_219BDD534();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BDB954();
  v24 = *(*(v23 - 8) + 56);
  v24(v20, 1, 1, v23);

  sub_219BDD514();
  v25 = v74;
  v69 = *(v74 + 64);
  v77 = swift_allocBox();
  v27 = v26;
  sub_2187B2DA0();
  v61 = v28;
  v29 = *(v28 + 48);
  v24(v20, 1, 1, v23);
  v30 = v72;
  (*(v15 + 104))(v17, *MEMORY[0x277D2FF08], v72);
  v75 = v22;
  sub_219BDD894();
  (*(v15 + 8))(v17, v30);
  sub_218744CEC(v20, &unk_280EE9D00, v70, v71, sub_218747D2C);
  *(v27 + v29) = MEMORY[0x277D84F90];
  v31 = v73;
  v32 = *(v25 + 56);
  v33 = sub_219BDFA44();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v81[5] = v69;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  v34 = sub_219BDC8C4();

  v35 = v77;
  if (v34)
  {
    v36 = v64;
    sub_218BF98E8(v27, v64, type metadata accessor for NewsActivity2.Article);
    v37 = v63;
    sub_218BF98E8(v36, v63, type metadata accessor for NewsActivity2.Article);

    v38 = v37;
    v39 = v65;
    sub_218A38F7C(v38, v65);
    sub_218BF9888(v36, type metadata accessor for NewsActivity2.Article);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = swift_projectBox();
      v41 = v58;
      sub_218BF98E8(v40, v58, sub_21896F9B8);
      v42 = v60;
      sub_218A38F7C(v41 + *(v59 + 48), v60);
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

      sub_218BF9888(v42, MEMORY[0x277D2FB40]);
      sub_2187B1CC0(v82, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218744CEC(v31, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
      (*(v76 + 8))(v75, v78);

      return 0;
    }

    sub_218BF9888(v39, MEMORY[0x277D2FB40]);
  }

  v81[4] = v35 | 0x2000000000000000;
  v81[3] = sub_219BDD274();
  v81[0] = v32;
  v48 = v68;
  sub_2189B4E2C(v31, v68);
  sub_2187B171C(v82, v79, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v49 = (*(v66 + 80) + 24) & ~*(v66 + 80);
  v50 = (v67 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v32;
  sub_218BF8160(v48, v51 + v49, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v52 = v51 + v50;
  v53 = v79[1];
  *v52 = v79[0];
  *(v52 + 16) = v53;
  *(v52 + 32) = v80;
  v54 = (v51 + ((v50 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v54 = 0;
  v54[1] = 0;
  sub_2186CF94C();
  sub_2186F7D68(&qword_280EE5A90, sub_2186CF94C);
  swift_retain_n();
  v56 = sub_219BEB454();

  sub_2187B1CC0(v82, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744CEC(v31, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D2C);
  (*(v76 + 8))(v75, v78);
  sub_218744CEC(v81, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8368);

  return v56;
}

uint64_t sub_218BF9888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BF98E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_135Tm()
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

  return swift_deallocObject();
}

uint64_t sub_218BF9AC0(void *a1)
{
  sub_218747D2C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);

  return sub_2194DAF24(a1);
}

uint64_t sub_218BF9BB8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v117 = a4;
  v99 = a3;
  v100 = a2;
  v5 = type metadata accessor for ChannelPickerEngagementModel();
  MEMORY[0x28223BE20](v5 - 8);
  v116 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for ChannelPickerElementModel();
  v7 = MEMORY[0x28223BE20](v127);
  v9 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v90 - v10);
  sub_218BFADFC(0);
  MEMORY[0x28223BE20](v12 - 8);
  v126 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951C88();
  v15 = v14;
  v118 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v125 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v129 = &v90 - v18;
  sub_218BFAE30();
  v109 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BFAEC4();
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189519D8();
  v25 = v24;
  v111 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v107 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v114 = &v90 - v29;
  MEMORY[0x28223BE20](v28);
  v106 = &v90 - v30;
  v31 = sub_219BE6DF4();
  v97 = *(v31 - 8);
  v98 = v31;
  MEMORY[0x28223BE20](v31);
  v96 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BFAF90(0, &qword_27CC0EF98, MEMORY[0x277D6DF88]);
  v94 = *(v33 - 8);
  v95 = v33;
  MEMORY[0x28223BE20](v33);
  v93 = &v90 - v34;
  sub_218BFB050();
  MEMORY[0x28223BE20](v35 - 8);
  v90 = &v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951BD0();
  v38 = v37;
  v92 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v91 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_218BFB238(&qword_27CC11960, sub_218951BD0);
  v41 = sub_219BF5E44();
  v112 = v38;
  if (v41)
  {
    v141 = MEMORY[0x277D84F90];
    v110 = v41;
    sub_218C34FE0(0, v41 & ~(v41 >> 63), 0);
    v115 = v141;
    result = sub_219BF5DF4();
    if ((v110 & 0x8000000000000000) == 0)
    {
      v43 = 0;
      v103 = (v111 + 16);
      v104 = v40;
      v123 = (v118 + 16);
      v124 = v25;
      v122 = (v118 + 8);
      v121 = (v118 + 56);
      v119 = (v118 + 32);
      v120 = (v118 + 48);
      v101 = v111 + 32;
      v102 = (v111 + 8);
      v105 = a1;
      while (1)
      {
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          break;
        }

        v113 = v45;
        v46 = sub_219BF5EC4();
        v47 = *v103;
        v48 = v114;
        (*v103)(v114);
        v46(v140, 0);
        sub_219BE6934();
        memcpy(v139, v140, sizeof(v139));
        (v47)(v107, v48, v25);
        sub_218BFB238(&qword_27CC142F0, sub_2189519D8);
        sub_219BF56A4();
        v49 = *(v109 + 36);
        sub_218BFB238(&qword_27CC0AF20, sub_2189519D8);
        sub_219BF5E84();
        v50 = *&v21[v49];
        v128 = MEMORY[0x277D84F90];
        if (v50 != v133)
        {
          v128 = MEMORY[0x277D84F90];
          do
          {
            v58 = sub_219BF5EC4();
            (*v123)(v129);
            v58(&v133, 0);
            sub_219BF5E94();
            sub_219BE5FC4();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload > 1)
            {
              if (EnumCaseMultiPayload == 2)
              {
                v67 = v11[9];
                v138[3] = v11[8];
                v138[4] = v67;
                v138[5] = v11[10];
                v68 = v11[5];
                v137 = v11[4];
                v138[0] = v68;
                v69 = v11[7];
                v138[1] = v11[6];
                v138[2] = v69;
                v70 = v11[1];
                v133 = *v11;
                v134 = v70;
                v71 = v11[3];
                v135 = v11[2];
                v136 = v71;
                sub_218BFB180(&v133, v9);
                swift_storeEnumTagMultiPayload();
                sub_218BFB238(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
                v66 = v126;
                sub_219BE5FB4();
                sub_218980B3C(&v133);
              }

              else
              {
                v76 = v116;
                sub_218980AD8(v11, v116);
                sub_218BFB11C(v76, v9);
                swift_storeEnumTagMultiPayload();
                sub_218BFB238(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
                v77 = v126;
                sub_219BE5FB4();
                v78 = v76;
                v66 = v77;
                v25 = v124;
                sub_218BFB280(v78, type metadata accessor for ChannelPickerEngagementModel);
              }
            }

            else
            {
              if (!EnumCaseMultiPayload)
              {
                v60 = v11[5];
                v137 = v11[4];
                v138[0] = v60;
                *(v138 + 9) = *(v11 + 89);
                v61 = v11[1];
                v133 = *v11;
                v134 = v61;
                v62 = v11[3];
                v135 = v11[2];
                v136 = v62;
                v63 = sub_219BE5F84();
                v65 = sub_218E969B8(v63, v64, 0);

                if (v65)
                {
                  v131 = type metadata accessor for TagModel();
                  v132 = sub_218BFB238(&qword_27CC16900, type metadata accessor for TagModel);
                  *&v130 = v65;
                  __swift_destroy_boxed_opaque_existential_1(&v133);
                  sub_2186CB1F0(&v130, &v133);
                }

                sub_218BFB1DC(&v133, &v130);
                sub_218BFB1DC(&v130, v9);
                swift_storeEnumTagMultiPayload();
                sub_218BFB238(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
                v66 = v126;
                sub_219BE5FB4();
                sub_218980BE4(&v130);
                (*v122)(v129, v15);
                sub_218980BE4(&v133);
                (*v121)(v66, 0, 1, v15);
                v25 = v124;
                goto LABEL_23;
              }

              v72 = v11[7];
              v9[6] = v11[6];
              v9[7] = v72;
              v9[8] = v11[8];
              *(v9 + 137) = *(v11 + 137);
              v73 = v11[3];
              v9[2] = v11[2];
              v9[3] = v73;
              v74 = v11[5];
              v9[4] = v11[4];
              v9[5] = v74;
              v75 = v11[1];
              *v9 = *v11;
              v9[1] = v75;
              swift_storeEnumTagMultiPayload();
              sub_218BFB238(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
              v66 = v126;
              sub_219BE5FB4();
            }

            (*v122)(v129, v15);
            (*v121)(v66, 0, 1, v15);
LABEL_23:
            if ((*v120)(v66, 1, v15) == 1)
            {
              sub_218BFB280(v66, sub_218BFADFC);
            }

            else
            {
              v79 = *v119;
              (*v119)(v125, v66, v15);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v128 = sub_2191F7EF8(0, *(v128 + 2) + 1, 1, v128);
              }

              v81 = *(v128 + 2);
              v80 = *(v128 + 3);
              if (v81 >= v80 >> 1)
              {
                v128 = sub_2191F7EF8(v80 > 1, v81 + 1, 1, v128);
              }

              v82 = v128;
              *(v128 + 2) = v81 + 1;
              v79(&v82[((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v81], v125, v15);
              v25 = v124;
            }

            sub_219BF5E84();
          }

          while (*&v21[v49] != v133);
        }

        sub_218BFB280(v21, sub_218BFAE30);
        v51 = sub_218BFB238(&qword_27CC0EF88, sub_218951C88);
        v52 = sub_218BFB238(&qword_27CC0EF90, sub_218951C88);
        MEMORY[0x21CEB9170](v128, v15, v51, v52);
        sub_218951A90();
        sub_218BFB238(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
        v53 = v106;
        sub_219BE6924();
        (*v102)(v114, v25);
        v54 = v115;
        v141 = v115;
        v56 = *(v115 + 16);
        v55 = *(v115 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_218C34FE0(v55 > 1, v56 + 1, 1);
          v54 = v141;
        }

        *(v54 + 16) = v56 + 1;
        v57 = (*(v111 + 80) + 32) & ~*(v111 + 80);
        v115 = v54;
        (*(v111 + 32))(v54 + v57 + *(v111 + 72) * v56, v53, v25);
        result = sub_219BF5E94();
        v43 = v113;
        if (v113 == v110)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v115 = MEMORY[0x277D84F90];
LABEL_30:
    v83 = sub_218BFB238(&qword_27CC0EFA8, sub_2189519D8);
    v84 = sub_218BFB238(&qword_27CC0EFB0, sub_2189519D8);
    MEMORY[0x21CEB9170](v115, v25, v83, v84);
    sub_218951A90();
    sub_218BFB238(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    v85 = v91;
    sub_219BEB2D4();
    v87 = v96;
    v86 = v97;
    v88 = v98;
    (*(v97 + 104))(v96, *MEMORY[0x277D6D868], v98);
    v89 = v93;
    sub_219BE85D4();
    (*(v86 + 8))(v87, v88);
    v100(v89);
    (*(v94 + 8))(v89, v95);
    return (*(v92 + 8))(v85, v112);
  }

  return result;
}

uint64_t sub_218BFABCC()
{
  sub_218BFB2E0(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE40], v0);
  v4 = sub_218847E58(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_218BFAD20(uint64_t a1)
{
  v2 = sub_218A36030();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218BFAD60()
{
  result = qword_27CC0EF70;
  if (!qword_27CC0EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EF70);
  }

  return result;
}

void sub_218BFAE30()
{
  if (!qword_27CC142E0)
  {
    sub_2189519D8();
    sub_218BFB238(&qword_27CC0AF20, sub_2189519D8);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC142E0);
    }
  }
}

void sub_218BFAEC4()
{
  if (!qword_27CC0EF80)
  {
    sub_218951C88();
    sub_218BFB238(&qword_27CC0EF88, sub_218951C88);
    sub_218BFB238(&qword_27CC0EF90, sub_218951C88);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EF80);
    }
  }
}

void sub_218BFAF90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ChannelPickerSectionDescriptor;
    v8[1] = type metadata accessor for ChannelPickerElementModel();
    v8[2] = sub_218951A90();
    v8[3] = sub_218BFB238(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218BFB050()
{
  if (!qword_27CC0EFA0)
  {
    sub_2189519D8();
    sub_218BFB238(&qword_27CC0EFA8, sub_2189519D8);
    sub_218BFB238(&qword_27CC0EFB0, sub_2189519D8);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EFA0);
    }
  }
}

uint64_t sub_218BFB11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerEngagementModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BFB238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218BFB280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218BFB2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218BFB344@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = [a1 asSportsEvent];
  if (v8)
  {
    v9 = v8;
    if ([v8 isDeprecated])
    {
      sub_218BFB694(a3);
      swift_unknownObjectRelease();

      *a4 = v9;
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
  }

  if ((([a1 isPuzzleHub] & 1) != 0 || objc_msgSend(a1, sel_isPuzzleType)) && (objc_msgSend(objc_opt_self(), sel_isTagAllowedInContentStoreFront_, a1) & 1) == 0)
  {
    v14 = [a1 identifier];
    v15 = sub_219BF5414();
    v17 = v16;
    swift_unknownObjectRelease();

    sub_218BFB694(a3);
    *a4 = v15;
    a4[1] = v17;
    goto LABEL_24;
  }

  if ([a1 asPuzzleType])
  {
    swift_getObjectType();
    if ((sub_219BF68F4() & 1) == 0)
    {
      v18 = [a1 identifier];
      v19 = sub_219BF5414();
      v21 = v20;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_218BFB694(a3);
      *a4 = v19;
      a4[1] = v21;
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v10 = objc_opt_self();
    v11 = a2;
    swift_unknownObjectRetain();
    if ([v10 isTagAllowed_])
    {

      swift_unknownObjectRelease_n();
      sub_218BFB73C();
      v13 = *(v12 + 48);
      *a4 = v11;
      sub_218BFB7B0(a3, a4 + v13);
    }

    else if ([a1 isExplicitContent])
    {
      swift_unknownObjectRelease_n();

      sub_218BFB694(a3);
      *a4 = v11;
      *(a4 + 8) = 1;
    }

    else if ([a1 isNoLongerAvailable])
    {
      swift_unknownObjectRelease_n();

      sub_218BFB694(a3);
      *a4 = v11;
      *(a4 + 8) = 0;
    }

    else
    {
      v26 = [v10 isTagAllowedForNewsVersion_];

      swift_unknownObjectRelease_n();
      sub_218BFB694(a3);
      *a4 = v11;
      if (v26)
      {
        *(a4 + 8) = 2;
      }

      else
      {
        *(a4 + 8) = 3;
      }
    }
  }

  else
  {
    v22 = [a1 identifier];
    v23 = sub_219BF5414();
    v25 = v24;
    swift_unknownObjectRelease();

    sub_218BFB694(a3);
    *a4 = v23;
    a4[1] = v25;
  }

LABEL_24:
  type metadata accessor for FeedAvailability();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218BFB694(uint64_t a1)
{
  sub_2186FE720();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FeedAvailability()
{
  result = qword_280ED8948;
  if (!qword_280ED8948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218BFB73C()
{
  if (!qword_280E8E550)
  {
    sub_2186FAF08();
    sub_2186FE720();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E550);
    }
  }
}

uint64_t sub_218BFB7B0(uint64_t a1, uint64_t a2)
{
  sub_2186FE720();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218BFB824()
{
  sub_218BFB73C();
  if (v0 <= 0x3F)
  {
    sub_218BFB8C8();
    if (v1 <= 0x3F)
    {
      sub_2186EAF08();
      if (v2 <= 0x3F)
      {
        sub_21873F92C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_218BFB8C8()
{
  if (!qword_280E8E548)
  {
    sub_2186FAF08();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E548);
    }
  }
}

unint64_t sub_218BFB938()
{
  result = qword_27CC0EFB8;
  if (!qword_27CC0EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EFB8);
  }

  return result;
}

void sub_218BFB9B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_219BF53D4();
  [v0 setDateFormat_];

  qword_27CCD8470 = v0;
}

uint64_t sub_218BFBA28(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD24();
  sub_219BDBBE4();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  if (a2 > 1u)
  {
    result = sub_219BF5CE4();
    if (a2 == 2)
    {
      v12 = 7.0;
    }

    else
    {
      v12 = 30.0;
    }

    v10 = v11 * v12;
  }

  else if (a2)
  {
    result = sub_219BF5CE4();
  }

  else
  {
    result = sub_219BF5CF4();
  }

  v13 = v8 / v10;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 9.22337204e18)
  {
    return v13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_218BFBB9C()
{
  v0 = sub_219BDBE44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDBF94();
  __swift_allocate_value_buffer(v4, qword_27CC0EFC0);
  __swift_project_value_buffer(v4, qword_27CC0EFC0);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9830], v0);
  sub_219BDBE54();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_218BFBCBC(void *a1, int a2)
{
  sub_2186DD184(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v35[-v11];
  v13 = sub_219BDBD34();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v35[-v18];
  v20 = [a1 displayDate];
  if (v20)
  {
    v21 = v20;
    sub_219BDBCA4();

    v22 = *(v14 + 32);
    v22(v10, v17, v13);
    v23 = *(v14 + 56);
    v23(v10, 0, 1, v13);
    v22(v12, v10, v13);
    v23(v12, 0, 1, v13);
    v24 = (*(v14 + 48))(v12, 1, v13);
  }

  else
  {
    v36 = a2;
    v25 = *(v14 + 56);
    v26 = 1;
    v25(v10, 1, 1, v13);
    v27 = [a1 publishDate];
    if (v27)
    {
      v28 = v27;
      sub_219BDBCA4();

      v26 = 0;
    }

    v25(v7, v26, 1, v13);
    sub_218A5DD60(v7, v12);
    v29 = *(v14 + 48);
    if (v29(v10, 1, v13) != 1)
    {
      sub_2189DD39C(v10);
    }

    LOBYTE(a2) = v36;
    v24 = v29(v12, 1, v13);
  }

  if (v24 == 1)
  {
    sub_2189DD39C(v12);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = [objc_opt_self() bundleForClass_];
    v32 = sub_219BDB5E4();
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v33 = sub_218BFC368(v19, 2u);
      }

      else
      {
        v33 = sub_218BFCA84(v19, 3u);
      }
    }

    else if (a2)
    {
      v33 = sub_218BFC118(v19, 1u);
    }

    else
    {
      v33 = sub_219BDBA74();
    }

    v32 = v33;
    (*(v14 + 8))(v19, v13);
  }

  return v32;
}

uint64_t sub_218BFC118(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_219BDC084();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_218BFBA28(a1, a2);
  if (v8 - 2 >= 3)
  {
    if (v8 <= 1)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      v12 = sub_219BDB5E4();

      return v12;
    }

    sub_219BDC074();
    v9 = sub_219BDBCD4();
  }

  else
  {
    sub_219BDC074();
    v9 = sub_219BDBCE4();
  }

  v14 = v9;
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_218BFC368(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_219BDC084();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDBF94();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD184(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_219BDBD34();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDB534();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  if (sub_218BFBA28(a1, a2) > 1)
  {
    v40 = v6;
    v41 = v4;
    v43 = v16;
    v44 = v15;
    if (qword_27CC07D90 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v7, qword_27CC0EFC0);
    sub_2186DD184(0, &qword_27CC247B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v22 = sub_219BDBF74();
    v23 = *(v22 - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09EC0;
    v27 = v26 + v25;
    v28 = *(v23 + 104);
    v28(v27, *MEMORY[0x277CC9940], v22);
    v28(v27 + v24, *MEMORY[0x277CC9960], v22);
    sub_2194B2E6C(v26);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_219BDBEA4();

    sub_219BDBF34();
    sub_219BDBEF4();
    (*(v47 + 8))(v9, v7);
    v30 = v49;
    v29 = v50;
    if ((*(v49 + 48))(v12, 1, v50) == 1)
    {
      sub_2189DD39C(v12);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v32 = [objc_opt_self() bundleForClass_];
      v21 = sub_219BDB5E4();
    }

    else
    {
      v33 = v45;
      (*(v30 + 32))(v45, v12, v29);
      v51 = 0x20666F206B656557;
      v52 = 0xE800000000000000;
      v34 = v40;
      sub_219BDC074();
      v35 = sub_219BDBCD4();
      v37 = v36;
      (*(v46 + 8))(v34, v41);
      MEMORY[0x21CECC330](v35, v37);

      v21 = v51;
      (*(v30 + 8))(v33, v29);
    }

    (*(v43 + 8))(v18, v44);
  }

  else
  {
    type metadata accessor for Localized();
    v19 = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v21 = sub_219BDB5E4();
  }

  return v21;
}

uint64_t sub_218BFCA84(uint64_t a1, unsigned __int8 a2)
{
  if (sub_218BFBA28(a1, a2) > 1)
  {
    if (qword_27CC07D88 != -1)
    {
      swift_once();
    }

    v5 = qword_27CCD8470;
    v6 = sub_219BDBC04();
    v3 = [v5 stringFromDate_];

    v4 = sub_219BF5414();
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_219BDB5E4();
  }

  v7 = v4;

  return v7;
}

unint64_t sub_218BFCC6C()
{
  result = qword_27CC0EFD8;
  if (!qword_27CC0EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EFD8);
  }

  return result;
}

uint64_t sub_218BFCCC0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_218BFE708(v6);
  return sub_219BF73E4();
}

void sub_218BFCD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v6[4] = sub_218BFE638;
  v6[5] = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_218793E0C;
  v6[3] = &block_descriptor_32;
  v5 = _Block_copy(v6);

  [v4 scheduleLowPriorityBlock_];
  _Block_release(v5);
}

uint64_t sub_218BFCE10()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_218BFCE70();
  }

  return result;
}

uint64_t sub_218BFCE70()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_offlineFeatures), *(v0 + OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_offlineFeatures + 24));
  v1 = sub_218720294(&unk_282A22E70);
  if (v1 == 6)
  {
    MEMORY[0x28223BE20](v1);
    return sub_219BE2014();
  }

  v3 = v1;
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  if (v3 > 2u)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        v5 = 0x8000000219CD71D0;
        v6 = 0xD000000000000019;
      }

      else
      {
        v5 = 0x8000000219CD71F0;
        v6 = 0xD000000000000013;
      }

      goto LABEL_17;
    }

    v6 = 0xD000000000000012;
    v7 = "disabledInSettings";
    goto LABEL_15;
  }

  if (!v3)
  {
    v5 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
    goto LABEL_17;
  }

  if (v3 != 1)
  {
    v6 = 0xD000000000000012;
    v7 = "featureUnavailable";
LABEL_15:
    v5 = (v7 - 32) | 0x8000000000000000;
    goto LABEL_17;
  }

  v5 = 0xED00006465626972;
  v6 = 0x6373627553746F6ELL;
LABEL_17:
  *(v4 + 56) = MEMORY[0x277D837D0];
  v8 = v4;
  *(v4 + 64) = sub_2186FC3BC();
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  sub_219BF6214();
  sub_219BE5314();

  sub_21879D924();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218BFD104(void *a1)
{
  sub_219BE3204();
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  v3 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  v5 = sub_219BE2E54();
  sub_2186C6148(0, &unk_280E8DCD0);
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v4;
  v6 = v4;
  v7 = sub_219BE2E54();
  v8 = sub_219BE2F64();

  return v8;
}

uint64_t sub_218BFD2B8()
{
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218BFD31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_issueReadingHistory);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_218A2DB54;
  *(v10 + 24) = v8;
  v12[4] = sub_218807D28;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218793E0C;
  v12[3] = &block_descriptor_32;
  v11 = _Block_copy(v12);

  [v9 prepareForUseWithCompletion_];
  _Block_release(v11);
}

void sub_218BFD438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_offlineIssueManager + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 40);

  v11(ObjectType, v9);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2187A913C;
  *(v12 + 24) = v8;
  v13 = sub_219BE2E54();
  sub_219BE2F74();
}

uint64_t sub_218BFD568(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218BFD5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_currentIssuesChecker);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_218846958;
  *(v10 + 24) = v8;
  v12[4] = sub_218BFF7C4;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218B66540;
  v12[3] = &block_descriptor_16_0;
  v11 = _Block_copy(v12);

  [v9 fetchUsersCurrentIssuesWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_218BFD6E8(id *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = [*a1 followedIssues];
  if (!v5)
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    [v4 error];
    sub_2186E7BB0(0, &unk_280E8B570, &qword_280E8B580, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
    v15 = sub_219BF5484();
    MEMORY[0x21CECC330](v15);

    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    sub_219BE5314();

LABEL_21:
    sub_21879D924();
    swift_allocObject();
    return sub_219BE3014();
  }

  v6 = v5;
  sub_2186C6148(0, &qword_280E8DAB0);
  sub_219BF5924();

  v17[0] = sub_219759000(v7);
  sub_218BFCCC0(v17);
  if (!v2)
  {

    v8 = v17[0];
    if ((v17[0] & 0x8000000000000000) != 0 || (v17[0] & 0x4000000000000000) != 0)
    {
      goto LABEL_19;
    }

    for (i = *(v17[0] + 2); i; i = sub_219BF7214())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x21CECE0F0](v10, v8);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_18;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v17[0] = v11;
        sub_218BFD9D4(v17, a2);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_218BFD9D4(void **a1, uint64_t a2)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_offlineIssueManager + 8);
  ObjectType = swift_getObjectType();
  if (sub_21987AED4(v7, ObjectType, v8))
  {
    if (qword_280E8D870 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_issueReadingHistory);
  v11 = [v7 identifier];
  if (!v11)
  {
    sub_219BF5414();
    v11 = sub_219BF53D4();
  }

  v12 = [v10 lastRemovedFromMyMagazinesDateForIssueWithID_];

  if (v12)
  {
    sub_219BDBCA4();

    v13 = sub_219BDBD34();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
    sub_2189DD39C(v6);
    if (qword_280E8D870 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = sub_219BDBD34();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_2189DD39C(v6);
  if ([v7 isDraft])
  {
    if (qword_280E8D870 == -1)
    {
LABEL_12:
      sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_219C09BA0;
      v16 = [v7 identifier];
      v17 = sub_219BF5414();
      v19 = v18;

      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_2186FC3BC();
      *(v15 + 32) = v17;
      *(v15 + 40) = v19;
      sub_219BF6214();
      sub_219BE5314();

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_12;
  }

  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v27[1] = qword_280F61750;
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  v21 = [v7 identifier];
  v22 = sub_219BF5414();
  v24 = v23;

  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_2186FC3BC();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_219BF6214();
  sub_219BE5314();

  v25 = OfflineIssueManagerType.download(issue:source:)(v7, 2, ObjectType, v8);
  sub_218BFF748(v25, v26 & 1);
}

uint64_t sub_218BFE050@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6CD58];
  v3 = sub_219BE2874();
  return (*(*(v3 - 8) + 104))(a1, v2, v3);
}

uint64_t sub_218BFE0C8(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1FD0](a1, ObjectType);
}

uint64_t sub_218BFE120()
{
  sub_218BFCE70();
  v0 = sub_219BE2E54();
  sub_219BE2874();
  v1 = sub_219BE2F74();

  return v1;
}

uint64_t sub_218BFE194(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1FE0](a1, a2, ObjectType);
}

void sub_218BFE1EC(uint64_t a1, uint64_t a2)
{
  if (!a1 || (sub_219ADC118(a1), !v3))
  {

    v3 = MEMORY[0x277D84FA0];
  }

  v25 = a2;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_219BF71C4();
    sub_2186C6148(0, &qword_280E8DB50);
    sub_218BFF838();
    sub_219BF5D94();
    v5 = v28;
    v4 = v29;
    v6 = v30;
    v7 = v31;
    v8 = v32;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  v13 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v26 = v4;
  while (v5 < 0)
  {
    if (!sub_219BF7244() || (sub_2186C6148(0, &qword_280E8DB50), swift_dynamicCast(), v17 = v27, v16 = v8, !v27))
    {
LABEL_26:
      sub_21892DE98();

      return;
    }

LABEL_21:
    v18 = [v17 v13[487]];
    if (v18)
    {
      v19 = [v18 currentIssueIDs];
      if (v19)
      {
        v20 = v19;
        v21 = v13;
        v22 = v5;
        v23 = sub_219BF5924();

        swift_unknownObjectRelease();
        v24 = *(v23 + 16);
        v5 = v22;
        v13 = v21;
        v4 = v26;

        v8 = v16;
        if (v24)
        {
          sub_21892DE98();

          sub_218BFCE70();

          return;
        }
      }

      else
      {

        swift_unknownObjectRelease();
        v8 = v16;
      }
    }

    else
    {

      v8 = v16;
    }
  }

  v14 = v7;
  v15 = v8;
  if (v8)
  {
LABEL_17:
    v16 = (v15 - 1) & v15;
    v17 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_26;
    }

    v15 = *(v4 + 8 * v7);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

unint64_t sub_218BFE5E4()
{
  result = qword_27CC0F010;
  if (!qword_27CC0F010)
  {
    type metadata accessor for OfflineIssueAutoDownloader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F010);
  }

  return result;
}

void sub_218BFE708(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2186C6148(0, &qword_280E8DAB0);
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_218BFEA3C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_218BFE81C(0, v2, 1, a1);
  }
}

void sub_218BFE81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_219BDBD34();
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 publicationDate];
      sub_219BDBCA4();

      v22 = [v20 publicationDate];
      v23 = v34;
      sub_219BDBCA4();

      LOBYTE(v22) = sub_219BDBC24();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_218BFEA3C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_219BDBD34();
  v9 = MEMORY[0x28223BE20](v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_218C81048(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_218BFF2AC((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_218C81048(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_218C80FBC(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 publicationDate];
      v24 = v123;
      sub_219BDBCA4();

      v25 = [v22 publicationDate];
      v26 = v124;
      sub_219BDBCA4();

      LODWORD(v121) = sub_219BDBC24();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 publicationDate];
        v34 = v123;
        sub_219BDBCA4();

        v35 = [v32 publicationDate];
        v36 = v124;
        sub_219BDBCA4();

        LODWORD(v35) = sub_219BDBC24() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_2191F6B60(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_2191F6B60((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_218BFF2AC((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_218C81048(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_218C80FBC(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 publicationDate];
    v53 = v123;
    sub_219BDBCA4();

    v54 = [v51 publicationDate];
    v55 = v124;
    sub_219BDBCA4();

    LOBYTE(v54) = sub_219BDBC24();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_218BFF2AC(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_219BDBD34();
  v8 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 publicationDate];
        v41 = v54;
        sub_219BDBCA4();

        v42 = [v39 publicationDate];
        v43 = v55;
        sub_219BDBCA4();

        LOBYTE(v42) = sub_219BDBC24();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 publicationDate];
        v21 = v54;
        sub_219BDBCA4();

        v22 = [v19 publicationDate];
        v23 = v55;
        sub_219BDBCA4();

        LOBYTE(v22) = sub_219BDBC24();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

void sub_218BFF748(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_218BFF75C()
{
  if (!qword_280EE6940)
  {
    sub_2186C6148(255, &unk_280E8DCD0);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6940);
    }
  }
}

uint64_t sub_218BFF7FC()
{
  sub_218BFCE70();
}

unint64_t sub_218BFF838()
{
  result = qword_280E8DB40;
  if (!qword_280E8DB40)
  {
    sub_2186C6148(255, &qword_280E8DB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8DB40);
  }

  return result;
}

uint64_t type metadata accessor for ChannelCategoryLayoutOptions()
{
  result = qword_27CC0F018;
  if (!qword_27CC0F018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218BFF930()
{
  result = sub_219BE8164();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_218BFF9B8(__int128 *a1)
{
  v3 = MEMORY[0x277D6CA00];
  sub_218C0072C(0, &unk_280EE7EC0, type metadata accessor for MyMagazinesState, MEMORY[0x277D6CA00]);
  swift_allocObject();
  v1[2] = sub_219BE1A74();
  sub_218C0072C(0, &qword_280EE7EA0, sub_2186E2394, v3);
  swift_allocObject();
  v1[3] = sub_219BE1A74();
  sub_218C00D18(0, &qword_27CC19D50, sub_218C0065C, &type metadata for AutomationTestDataLocator, MEMORY[0x277D6CB68]);
  swift_allocObject();
  v1[4] = sub_219BE2144();
  sub_21875F93C(a1, (v1 + 5));
  return v1;
}

uint64_t sub_218BFFB24()
{
  if (*v0)
  {
    return 0x7349746E65636572;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_218BFFB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000219CEBBD0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7349746E65636572 && a2 == 0xEE00734449657573)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_218BFFC60(uint64_t a1)
{
  v2 = sub_218C00D80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BFFC9C(uint64_t a1)
{
  v2 = sub_218C00D80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218BFFCD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218C00AC4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_218BFFD2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  if (v4)
  {
    sub_21870F334(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    *(inited + 32) = v3;
    *(inited + 40) = v4;

    sub_2191ED3E8(inited);
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_1((a2 + 40), *(a2 + 64));
  sub_219BF1E44();

  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = a2;

  v8 = sub_219BE2E54();
  v9 = sub_219BE2F64();

  return v9;
}

size_t sub_218BFFEC0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, id a5)
{
  v6 = v5;
  v57 = a3;
  v58 = a2;
  v9 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for MyMagazinesIssue(0);
  v61 = *(v54 - 8);
  v12 = MEMORY[0x28223BE20](v54);
  v59 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v62 = (&v49 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = (&v49 - v17);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - v18;
  sub_218C0072C(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8);
  v55 = &v49 - v21;
  v22 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_49;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v24 = MEMORY[0x277D84F90];
  v52 = a5;
  v53 = v6;
  v50 = v9;
  v51 = v11;
  if (v23)
  {
    v63 = MEMORY[0x277D84F90];
    result = sub_218C35030(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      return result;
    }

    v26 = 0;
    v24 = v63;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CECE0F0](v26, v22);
      }

      else
      {
        v27 = *(v22 + 8 * v26 + 32);
      }

      v28 = v27;
      sub_218A5DAA4(v27, v19);

      v63 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      a5 = (v30 + 1);
      if (v30 >= v29 >> 1)
      {
        sub_218C35030(v29 > 1, v30 + 1, 1);
        v24 = v63;
      }

      ++v26;
      *(v24 + 16) = a5;
      sub_218C00790(v19, v24 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v30);
    }

    while (v23 != v26);
  }

  v11 = v60;
  v6 = v57;
  v60 = *(v24 + 16);
  if (v60)
  {
    v9 = 0;
    v56 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v19 = (v24 + v56);
    while (1)
    {
      if (v9 >= *(v24 + 16))
      {
        goto LABEL_48;
      }

      v31 = *(v61 + 72);
      sub_218C007F4(&v19[v31 * v9], v11);
      a5 = [*v11 identifier];
      v22 = sub_219BF5414();
      v33 = v32;

      if (v6)
      {
        if (v22 == v58 && v33 == v6)
        {

LABEL_28:
          v40 = v55;
          sub_218C00790(v11, v55);
          v39 = 0;
LABEL_29:
          (*(v61 + 56))(v40, v39, 1, v54);
          v11 = 0;
          v9 = MEMORY[0x277D84F90];
          v6 = v57;
          while (2)
          {
            if (v11 >= *(v24 + 16))
            {
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              v23 = sub_219BF7214();
              goto LABEL_3;
            }

            v41 = v62;
            sub_218C007F4(v19, v62);
            v42 = [*v41 identifier];
            a5 = sub_219BF5414();
            v22 = v43;

            if (!v6)
            {

              goto LABEL_42;
            }

            if (a5 == v58 && v22 == v6)
            {
            }

            else
            {
              v45 = sub_219BF78F4();

              if ((v45 & 1) == 0)
              {
LABEL_42:
                sub_218C00790(v62, v59);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v63 = v9;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_218C35030(0, *(v9 + 16) + 1, 1);
                  v9 = v63;
                }

                v48 = *(v9 + 16);
                v47 = *(v9 + 24);
                v22 = v48 + 1;
                if (v48 >= v47 >> 1)
                {
                  sub_218C35030(v47 > 1, v48 + 1, 1);
                  v9 = v63;
                }

                *(v9 + 16) = v22;
                sub_218C00790(v59, v9 + v56 + v48 * v31);
                v6 = v57;
LABEL_32:
                v11 = (v11 + 1);
                v19 += v31;
                if (v60 == v11)
                {
                  goto LABEL_25;
                }

                continue;
              }
            }

            break;
          }

          sub_218C008EC(v62, type metadata accessor for MyMagazinesIssue);
          goto LABEL_32;
        }

        v22 = sub_219BF78F4();

        if (v22)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      ++v9;
      sub_218C008EC(v11, type metadata accessor for MyMagazinesIssue);
      if (v60 == v9)
      {
        v39 = 1;
        v40 = v55;
        goto LABEL_29;
      }
    }
  }

  (*(v61 + 56))(v55, 1, 1, v54);
  v9 = MEMORY[0x277D84F90];
LABEL_25:

  v35 = v51;
  v36 = v55;
  sub_218C00858(v55, v51);
  v37 = v50;
  *(v35 + *(v50 + 20)) = v9;
  *(v35 + *(v37 + 24)) = 0;
  sub_219BE1A64();

  sub_218C008EC(v35, type metadata accessor for MyMagazinesState);
  v63 = MEMORY[0x277D84FA0];
  sub_219BE1A64();

  sub_21870F334(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v38 = sub_219BE3014();
  sub_218C0094C(v36);
  return v38;
}

uint64_t sub_218C00558()
{
  sub_219BE3204();

  v0 = sub_219BE2E54();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_218C005FC()
{
  sub_21870F334(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

unint64_t sub_218C0065C()
{
  result = qword_27CC0F028;
  if (!qword_27CC0F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F028);
  }

  return result;
}

void sub_218C0072C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218C00790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesIssue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C007F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesIssue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C00858(uint64_t a1, uint64_t a2)
{
  sub_218C0072C(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C008EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218C0094C(uint64_t a1)
{
  sub_218C0072C(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218C009D8()
{
  result = qword_27CC0F030;
  if (!qword_27CC0F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F030);
  }

  return result;
}

uint64_t sub_218C00A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_218C00A74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218C00AC4(void *a1)
{
  sub_218C00D18(0, &qword_27CC0F038, sub_218C00D80, &type metadata for AutomationMyMagazinesStore.TestData.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C00D80();
  sub_219BF7B34();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_219BF7694();
    sub_21870F334(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v10[30] = 1;
    sub_2187691BC();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void sub_218C00D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_218C00D80()
{
  result = qword_27CC0F040;
  if (!qword_27CC0F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F040);
  }

  return result;
}

unint64_t sub_218C00DE8()
{
  result = qword_27CC0F048;
  if (!qword_27CC0F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F048);
  }

  return result;
}

unint64_t sub_218C00E40()
{
  result = qword_27CC0F050;
  if (!qword_27CC0F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F050);
  }

  return result;
}

unint64_t sub_218C00E98()
{
  result = qword_27CC0F058;
  if (!qword_27CC0F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F058);
  }

  return result;
}

uint64_t sub_218C00EEC@<X0>(__int16 a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = HIBYTE(a1);
  if (HIBYTE(a1) <= 1u)
  {
    v5 = v2 + 16;
    if (!v4)
    {
      sub_218718690(v5, &v70);
      IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
      v7 = 62.0;
      if (IsBoldTextEnabled)
      {
        v7 = 58.0;
      }

      *v82 = v7;
      *&v82[8] = xmmword_219C22980;
      *&v82[24] = xmmword_219C22990;
      *&v82[40] = xmmword_219C229A0;
      *&v82[56] = xmmword_219C229B0;
      *&v82[72] = 0x402E000000000000;
      v83 = 1;
      goto LABEL_17;
    }

    sub_218718690(v5, &v70);
    v35 = UIAccessibilityIsBoldTextEnabled();
    v36 = 40.0;
    if (v35)
    {
      v36 = 39.0;
    }

    *v82 = v36;
    *&v82[8] = xmmword_219C228D0;
    *&v82[24] = xmmword_219C228E0;
    *&v82[40] = xmmword_219C228F0;
    *&v82[56] = xmmword_219C22900;
    v37 = 0x4031000000000000;
    goto LABEL_15;
  }

  if (HIBYTE(a1) != 2)
  {
    sub_218718690(v2 + 16, &v70);
    v38 = UIAccessibilityIsBoldTextEnabled();
    v39 = 80.0;
    if (v38)
    {
      v39 = 75.0;
    }

    *v82 = v39;
    *&v82[8] = xmmword_219C22950;
    *&v82[24] = xmmword_219C22960;
    *&v82[40] = xmmword_219C22970;
    *&v82[56] = xmmword_219C22900;
    v37 = 0x4034000000000000;
LABEL_15:
    *&v82[72] = v37;
LABEL_16:
    v83 = 0;
LABEL_17:
    sub_21900EA30(&v76);
    v40 = __swift_mutable_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
    v41 = MEMORY[0x28223BE20](v40);
    v43 = &v55 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v43, v41);
    v45 = *(v43 + 2);
    v68 = &off_282A3FDC0;
    v65 = *v43;
    v67 = &type metadata for WelcomeColorStyler;
    v66 = v45;
    v24 = type metadata accessor for WelcomeViewStyler();
    v25 = swift_allocObject();
    v46 = __swift_mutable_project_boxed_opaque_existential_1(&v65, &type metadata for WelcomeColorStyler);
    v47 = MEMORY[0x28223BE20](v46);
    v49 = &v55 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v49, v47);
    *(v25 + 16) = *v49;
    v51 = v79;
    *(v25 + 88) = v78;
    *(v25 + 104) = v51;
    *(v25 + 120) = v80;
    v52 = v77;
    *(v25 + 56) = v76;
    v53 = *(v49 + 2);
    *(v25 + 40) = &type metadata for WelcomeColorStyler;
    *(v25 + 48) = &off_282A3FDC0;
    *(v25 + 32) = v53;
    *(v25 + 136) = v81;
    *(v25 + 72) = v52;
    __swift_destroy_boxed_opaque_existential_1(&v65);
    result = __swift_destroy_boxed_opaque_existential_1(&v70);
    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    sub_218718690(v2 + 16, &v70);
    *v82 = xmmword_219C22910;
    *&v82[16] = xmmword_219C22920;
    __asm { FMOV            V1.2D, #11.0 }

    *&v82[32] = xmmword_219C22930;
    *&v82[48] = _Q1;
    *&v82[64] = xmmword_219C22940;
    goto LABEL_16;
  }

  sub_218718690(v2 + 16, v59);
  *v82 = xmmword_219C22910;
  *&v82[16] = xmmword_219C22920;
  __asm { FMOV            V1.2D, #11.0 }

  *&v82[32] = xmmword_219C22930;
  *&v82[48] = _Q1;
  *&v82[64] = xmmword_219C22940;
  v83 = 0;
  sub_21900EA30(v60);
  v13 = v60[1];
  sub_21900EA30(v61);
  v14 = v61[2];
  sub_21900EA30(v62);
  v15 = v62[4];
  sub_21900EA30(v63);
  v16 = v63[5];
  sub_21900EA30(v64);
  v17 = v64[7];
  sub_21900EA30(&v65);
  *&v76 = 0x403E000000000000;
  *(&v76 + 1) = v13;
  *&v77 = v14;
  *(&v77 + 1) = 0x402C000000000000;
  *&v78 = v15;
  *(&v78 + 1) = v16;
  *&v79 = 0x4026000000000000;
  *(&v79 + 1) = v17;
  *&v80 = v69;
  *(&v80 + 1) = 0x402E000000000000;
  v81 = 0;
  sub_21900EA30(&v70);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = *(v21 + 2);
  v57 = &type metadata for WelcomeColorStyler;
  v58 = &off_282A3FDC0;
  v55 = *v21;
  v56 = v23;
  v24 = type metadata accessor for WelcomeViewStyler();
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v55, &type metadata for WelcomeColorStyler);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  *(v25 + 16) = *v29;
  v31 = v73;
  *(v25 + 88) = v72;
  *(v25 + 104) = v31;
  *(v25 + 120) = v74;
  v32 = v71;
  *(v25 + 56) = v70;
  v33 = *(v29 + 2);
  *(v25 + 40) = &type metadata for WelcomeColorStyler;
  *(v25 + 48) = &off_282A3FDC0;
  *(v25 + 32) = v33;
  *(v25 + 136) = v75;
  *(v25 + 72) = v32;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  result = __swift_destroy_boxed_opaque_existential_1(v59);
LABEL_18:
  a2[3] = v24;
  a2[4] = &off_282A58938;
  *a2 = v25;
  return result;
}

uint64_t sub_218C01580()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LatestStoriesTodayFeedGroupKnobs()
{
  result = qword_280EA63A0;
  if (!qword_280EA63A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C0163C()
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
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_218C01710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  sub_2189AE9B4(0);
  v83 = v3;
  v80 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v79 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v78 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for LatestStoriesTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v81);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = v62 - v13;
  sub_2189AF720(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v85 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = v62 - v17;
  sub_218C02A08(0, &qword_280E8CA40, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = v62 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C029B4();
  v23 = v86;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v64 = v12;
  v69 = 0;
  v70 = v20;
  v72 = v8;
  v71 = a1;
  LOBYTE(v95) = 0;
  sub_2186DF9E0(&qword_280E91A28, sub_2189AE994);
  v25 = v84;
  v26 = v77;
  sub_219BF7674();
  LOBYTE(v95) = 1;
  sub_2186DF9E0(&qword_280E91868, sub_2189AE9B4);
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v94) = 2;
  sub_2186DF9E0(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v86 = v95;
  LOBYTE(v93) = 3;
  sub_219BF7674();
  v74 = v94;
  sub_2186ECA28();
  v28 = v27;
  LOBYTE(v92) = 4;
  sub_2186DF9E0(&qword_280E913D8, sub_2186ECA28);
  v62[1] = v28;
  sub_219BF7674();
  v66 = v93;
  LOBYTE(v91) = 5;
  sub_219BF7674();
  v73 = v92;
  LOBYTE(v90) = 6;
  sub_219BF7674();
  v75 = v91;
  LOBYTE(v89) = 7;
  sub_219BF7674();
  v63 = v90;
  sub_2186F95C4();
  v30 = v29;
  LOBYTE(v88) = 8;
  sub_2186DF9E0(&qword_280E913F8, sub_2186F95C4);
  v67 = v19;
  v62[2] = v30;
  sub_219BF7674();
  v65 = v89;
  v31 = v85;
  sub_2189AF794(v25, v85, sub_2189AF720);
  v32 = v76;
  v33 = *(v76 + 48);
  v34 = v33(v31, 1, v26);
  v35 = v87;
  v36 = v26;
  v68 = v22;
  if (v34 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF9E0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v37 = v78;
    sub_219BEE974();
    v38 = v33(v85, 1, v26);
    v39 = v80;
    if (v38 != 1)
    {
      sub_2189AF7FC(v85, sub_2189AF720);
    }
  }

  else
  {
    v37 = v78;
    (*(v32 + 32))(v78, v85, v26);
    v39 = v80;
  }

  v40 = v72;
  (*(v32 + 32))(v72, v37, v36);
  v41 = v64;
  sub_2189AF794(v35, v64, sub_2189AF700);
  v42 = *(v39 + 48);
  v43 = v83;
  if (v42(v41, 1, v83) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF9E0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v44 = v79;
    sub_219BEEC74();
    v45 = v42(v41, 1, v43);
    v46 = v44;
    v47 = v82;
    v48 = v73;
    if (v45 != 1)
    {
      sub_2189AF7FC(v41, sub_2189AF700);
    }
  }

  else
  {
    v46 = v79;
    (*(v39 + 32))(v79, v41, v43);
    v47 = v82;
    v48 = v73;
  }

  v49 = v81;
  (*(v39 + 32))(v40 + *(v81 + 20), v46, v43);
  v50 = v67;
  if (v86)
  {
    v51 = v86;
  }

  else
  {
    v88 = 1;
    swift_allocObject();
    v51 = sub_219BEF534();
  }

  v52 = v66;
  *(v40 + v49[6]) = v51;
  v53 = v74;
  if (v74)
  {

    v54 = v53;
  }

  else
  {
    v88 = 5;
    swift_allocObject();
    v48 = v73;

    v54 = sub_219BEF534();
  }

  *(v40 + v49[7]) = v54;

  if (v52)
  {
    v55 = v52;
  }

  else
  {
    sub_219BF5CF4();
    *&v88 = v56 * 18.0;
    swift_allocObject();
    v55 = sub_219BEF534();
  }

  *(v40 + v49[8]) = v55;
  if (v48)
  {

    v57 = v48;
  }

  else
  {
    v88 = 100;
    swift_allocObject();

    v57 = sub_219BEF534();
  }

  *(v40 + v49[9]) = v57;
  v58 = v75;
  if (v75)
  {

    v59 = v58;
  }

  else
  {
    v88 = 10;
    swift_allocObject();

    v59 = sub_219BEF534();
  }

  *(v40 + v49[10]) = v59;
  v60 = v63;
  if (v63)
  {
  }

  else
  {
    v88 = 3;
    swift_allocObject();

    v60 = sub_219BEF534();
  }

  *(v40 + v49[11]) = v60;
  v61 = v65;
  if (!v65)
  {
    LOBYTE(v88) = 0;
    swift_allocObject();
    v61 = sub_219BEF534();
  }

  sub_2189AF7FC(v87, sub_2189AF700);
  sub_2189AF7FC(v84, sub_2189AF720);
  (*(v70 + 8))(v68, v50);
  *(v40 + v49[12]) = v61;
  sub_218C02A6C(v40, v47);
  return __swift_destroy_boxed_opaque_existential_1(v71);
}

unint64_t sub_218C02324(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73656C7572;
    if (a1)
    {
      v5 = 0x6C6F6F706572;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v1 = 0xD00000000000001ALL;
    v2 = 0xD000000000000018;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0x6E69576863746566;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_218C02454(void *a1)
{
  v3 = v1;
  sub_218C02A08(0, &qword_280E8C348, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C029B4();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AE994(0);
  sub_2186DF9E0(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for LatestStoriesTodayFeedGroupKnobs();
    LOBYTE(v14) = 1;
    sub_2189AE9B4(0);
    sub_2186DF9E0(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_2186F9548();
    sub_2186DF9E0(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186ECA28();
    sub_2186DF9E0(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_219BF7834();
    v14 = *(v3 + v10[11]);
    v13 = 7;
    sub_219BF7834();
    v14 = *(v3 + v10[12]);
    v13 = 8;
    sub_2186F95C4();
    sub_2186DF9E0(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218C028E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218C02D6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218C02908(uint64_t a1)
{
  v2 = sub_218C029B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C02944(uint64_t a1)
{
  v2 = sub_218C029B4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218C029B4()
{
  result = qword_280EA63D0[0];
  if (!qword_280EA63D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA63D0);
  }

  return result;
}

void sub_218C02A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C029B4();
    v7 = a3(a1, &type metadata for LatestStoriesTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218C02A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LatestStoriesTodayFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C02AD0()
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DF9E0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LatestStoriesTodayFeedGroupKnobs();
  if ((sub_219BEEC64() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186F95C4();
  return sub_219BEF504() & 1;
}

unint64_t sub_218C02C68()
{
  result = qword_27CC0F060;
  if (!qword_27CC0F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F060);
  }

  return result;
}

unint64_t sub_218C02CC0()
{
  result = qword_280EA63C0;
  if (!qword_280EA63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA63C0);
  }

  return result;
}

unint64_t sub_218C02D18()
{
  result = qword_280EA63C8;
  if (!qword_280EA63C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA63C8);
  }

  return result;
}

uint64_t sub_218C02D6C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CEBC50 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CEBC70 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000219CEBC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000219CEBCB0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t type metadata accessor for HighlightsTagFeedGroupKnobs()
{
  result = qword_280EB87F8;
  if (!qword_280EB87F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C030BC()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      sub_2186ECA28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218C03158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v11);
  v17 = *(v14 + 48);
  if (v17(v11, 1, v13) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v23 = a5;
    sub_21877C6C0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a5 = v23;
    sub_219BEE974();
    if (v17(v11, 1, v13) != 1)
    {
      sub_2189ADEC8(v11);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v11, v13);
  }

  (*(v14 + 32))(a5, v16, v13);
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v25 = 1;
    sub_2186F9548();
    swift_allocObject();
    v18 = sub_219BEF534();
  }

  v19 = type metadata accessor for HighlightsTagFeedGroupKnobs();
  *(a5 + v19[5]) = v18;
  v20 = v24;
  if (v24)
  {
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    sub_2186F9548();
    swift_allocObject();

    v20 = sub_219BEF534();
  }

  *(a5 + v19[6]) = v20;
  if (!a4)
  {
    v25 = 0x4122750000000000;
    sub_2186ECA28();
    swift_allocObject();
    a4 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a5 + v19[7]) = a4;
  return result;
}

uint64_t sub_218C034BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_2189AD5C8();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HighlightsTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v57 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = v43 - v11;
  sub_218C04024(0, &qword_280E8CCC0, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v43 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C03F6C();
  v17 = v58;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = 0;
  v48 = v14;
  v46 = a1;
  v50 = v7;
  v44 = v5;
  LOBYTE(v62) = 0;
  sub_21877C6C0(&qword_280E91A88, sub_2189AD5C8);
  v19 = v56;
  v20 = v53;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v61) = 1;
  sub_21877C6C0(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v58 = v62;
  LOBYTE(v60) = 2;
  sub_219BF7674();
  v45 = v61;
  sub_2186ECA28();
  v22 = v21;
  LOBYTE(v59) = 3;
  sub_21877C6C0(&qword_280E913D8, sub_2186ECA28);
  v49 = v13;
  v43[1] = v22;
  v23 = v16;
  sub_219BF7674();
  v51 = v60;
  v24 = v57;
  sub_2189ADE64(v19, v57);
  v25 = v52;
  v26 = *(v52 + 48);
  v27 = v26(v24, 1, v20);
  v28 = v20;
  v29 = v25;
  if (v27 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C6C0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v29 = v25;
    v30 = v54;
    sub_219BEE974();
    v31 = v26(v57, 1, v20);
    v32 = v44;
    if (v31 != 1)
    {
      sub_2189ADEC8(v57);
    }
  }

  else
  {
    v33 = *(v25 + 32);
    v30 = v54;
    v33(v54, v57, v20);
    v32 = v44;
  }

  v34 = v50;
  (*(v29 + 32))(v50, v30, v28);
  v57 = v23;
  v35 = v45;
  if (v58)
  {
    v36 = v58;
  }

  else
  {
    v59 = 1;
    swift_allocObject();
    v36 = sub_219BEF534();
  }

  v38 = v55;
  v37 = v56;
  v39 = v49;
  *(v34 + v32[5]) = v36;
  v40 = v51;
  if (v35)
  {
  }

  else
  {
    v59 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();

    v41 = sub_219BEF534();
    v40 = v51;
    v35 = v41;
  }

  v42 = v48;
  *(v34 + v32[6]) = v35;
  if (!v40)
  {
    v59 = 0x4122750000000000;
    swift_allocObject();
    v40 = sub_219BEF534();
  }

  sub_2189ADEC8(v37);
  (*(v42 + 8))(v57, v39);
  *(v34 + v32[7]) = v40;
  sub_218C03FC0(v34, v38);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_218C03B38(void *a1)
{
  v3 = v1;
  sub_218C04024(0, &qword_27CC0F068, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C03F6C();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877C6C0(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for HighlightsTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186F9548();
    sub_21877C6C0(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186ECA28();
    sub_21877C6C0(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218C03E18()
{
  v1 = 0x73656C7572;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
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

uint64_t sub_218C03E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218C0428C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218C03EC0(uint64_t a1)
{
  v2 = sub_218C03F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C03EFC(uint64_t a1)
{
  v2 = sub_218C03F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218C03F6C()
{
  result = qword_280EB8820;
  if (!qword_280EB8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8820);
  }

  return result;
}

uint64_t sub_218C03FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightsTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218C04024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C03F6C();
    v7 = a3(a1, &type metadata for HighlightsTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218C04088()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877C6C0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  type metadata accessor for HighlightsTagFeedGroupKnobs();
  if ((sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186ECA28();
  return sub_219BEF504() & 1;
}

unint64_t sub_218C04188()
{
  result = qword_27CC0F070;
  if (!qword_27CC0F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F070);
  }

  return result;
}

unint64_t sub_218C041E0()
{
  result = qword_280EB8810;
  if (!qword_280EB8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8810);
  }

  return result;
}

unint64_t sub_218C04238()
{
  result = qword_280EB8818;
  if (!qword_280EB8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8818);
  }

  return result;
}

uint64_t sub_218C0428C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000017 && 0x8000000219CEBCD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_218C043F8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_219BF53D4();
  [a1 setTitle:v7 forState:0];

  sub_219BED0C4();
  if (sub_219BED0C4())
  {
    if (qword_27CC07F78 != -1)
    {
      swift_once();
    }

    [a1 setTitleColor:qword_27CCD85E0 forState:0];
    if (qword_27CC07F80 != -1)
    {
      swift_once();
    }

    v8 = &qword_27CCD85E8;
  }

  else
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    [a1 setTitleColor:qword_280F617F8 forState:0];
    if (qword_280E8DA90 != -1)
    {
      swift_once();
    }

    v8 = &qword_280F61800;
  }

  [a1 setTitleColor:*v8 forState:1];
  v9 = [objc_opt_self() placeholderTextColor];
  [a1 setTitleColor:v9 forState:2];

  [a1 setContentHorizontalAlignment_];
  v10 = [a1 titleLabel];
  if (v10)
  {
    v11 = v10;
    v12 = *(v4 + 16);
    v13 = [objc_opt_self() systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
    v14 = [v12 scaledFontForFont_];

    [v11 setFont_];
  }

  v15 = [a1 titleLabel];
  if (v15)
  {
    v16 = v15;
    [v15 setLineBreakMode_];
  }

  v17 = [a1 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setNumberOfLines_];
  }

  if (a4)
  {
    v19 = [a1 titleLabel];
    if (v19)
    {
      LODWORD(v20) = 1036831949;
      v21 = v19;
      [v19 ts:v20 setHyphenationFactor:?];
    }
  }
}

uint64_t sub_218C047BC(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    sub_218718690(a2 + 32, v43);
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v44 = MEMORY[0x277D84F90];
    sub_218C35080(0, v4, 0);
    v29 = v3;
    v5 = v3 + 32;
    v6 = v44;
    do
    {
      sub_218C04EF0(v5, v36);
      sub_218C04EF0(v36, v30);
      v37 = v30[0];
      v38 = v30[1];
      sub_218AB7A30(&v31, v39);
      sub_218AB7A30(&v32, v40 + 8);
      sub_218AB7A30(&v33, v41);
      v7 = *(&v34 + 1);
      v8 = v34;
      v9 = v35;
      if (v35)
      {
        if (v35 == 1)
        {

          sub_218C04F4C(v8, v7, 1);
          v10 = [v8 identifier];
          v11 = sub_219BF5414();
          v13 = v12;

          sub_218A518E8(v8, v7, 1);
          v8 = v11;
          v7 = v13;
        }

        else if (v34 <= 1)
        {
          if (v34 == 0)
          {

            v8 = 0;
            v7 = 0;
          }

          else
          {

            v7 = 0;
            v8 = 1;
          }
        }

        else if (v34 ^ 2 | *(&v34 + 1))
        {
          if (v34 ^ 3 | *(&v34 + 1))
          {

            v7 = 0;
            v8 = 4;
          }

          else
          {

            v7 = 0;
            v8 = 3;
          }
        }

        else
        {

          v7 = 0;
          v8 = 2;
        }
      }

      else
      {

        sub_218C04F4C(v8, v7, 0);
      }

      sub_218BBF734(v30);
      sub_218BBF734(v36);
      *&v42[8] = v8;
      *&v42[16] = v7;
      v42[24] = v9;
      v44 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_218C35080((v14 > 1), v15 + 1, 1);
        v6 = v44;
      }

      *(v6 + 16) = v15 + 1;
      v16 = (v6 + 176 * v15);
      v17 = v37;
      v18 = v39[0];
      v16[3] = v38;
      v16[4] = v18;
      v16[2] = v17;
      v19 = v39[1];
      v20 = v40[0];
      v21 = v40[2];
      v16[7] = v40[1];
      v16[8] = v21;
      v16[5] = v19;
      v16[6] = v20;
      v22 = v41[0];
      v23 = v41[1];
      v24 = *v42;
      *(v16 + 185) = *&v42[9];
      v16[10] = v23;
      v16[11] = v24;
      v16[9] = v22;
      v5 += 176;
      --v4;
    }

    while (v4);
    type metadata accessor for MagazineSectionBarConfig();
    v25 = swift_allocObject();
    *(v25 + 16) = v6;
    v26 = sub_2192F2298(0xD000000000000010, 0x8000000219CDD430, a3, v25);

    __swift_destroy_boxed_opaque_existential_1(v43);
    *&v37 = v26;
    *(&v37 + 1) = v29;
    sub_2186D0BF8(0, &qword_280EE6DF8, &type metadata for MagazineSectionsResult, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_219BE3014();
  }

  else
  {
    sub_218C04F6C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_218C04B8C()
{
  if (qword_27CC08538 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
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

uint64_t sub_218C04CE4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_218C04D58(void *a1)
{
  sub_2186D0BF8(0, &qword_280E8F338, &type metadata for MagazineSection, MEMORY[0x277D83940]);
  sub_219BE31F4();
  sub_2187D9028();
  v2 = sub_219BF66A4();
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  sub_219BE2F84();

  v4 = sub_219BE2E54();
  v5 = sub_219BE2FD4();

  return v5;
}

id sub_218C04F4C(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

unint64_t sub_218C04F6C()
{
  result = qword_27CC0F080;
  if (!qword_27CC0F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F080);
  }

  return result;
}

unint64_t sub_218C04FD4()
{
  result = qword_27CC0F088;
  if (!qword_27CC0F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F088);
  }

  return result;
}

uint64_t sub_218C05028(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 169))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 168);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_218C0507C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 168) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for SharedWithYouFeedRefreshRequest()
{
  result = qword_27CC0F090;
  if (!qword_27CC0F090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C05178()
{
  sub_2186D0BA8();
  if (v0 <= 0x3F)
  {
    sub_219BF0BD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_218C051FC(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_effectView;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  *&v2[OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_observation] = 0;
  v2[OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_useBlurEffect] = 1;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, sel_initWithPresentedViewController_presentingViewController_, a1, a2);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;
  v9 = sub_219BDB784();

  v10 = *&v8[OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_observation];
  *&v8[OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_observation] = v9;

  return v8;
}

void sub_218C05350()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedView];
    if (v2)
    {
      v3 = v2;
      [v2 setFrame_];
    }
  }
}

double sub_218C053D4()
{
  v1 = [v0 containerView];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v0 presentedViewController];
  [v11 preferredContentSize];
  v13 = v12;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v14 = CGRectGetWidth(v18) - v13;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v15 = v14 * 0.5;
  CGRectGetHeight(v19);
  v16 = [v0 presentedViewController];
  [v16 preferredContentSize];

  return v15;
}

void sub_218C055B0()
{
  v1 = [v0 containerView];
  if (!v1)
  {
    return;
  }

  v33 = v1;
  v2 = [v0 presentingViewController];
  v3 = [v2 transitionCoordinator];

  if (v3)
  {
    v4 = [v0 presentingViewController];
    v5 = [v4 view];

    if (!v5)
    {
      __break(1u);
      goto LABEL_18;
    }

    v6 = [v5 snapshotViewAfterScreenUpdates_];

    if (v6)
    {
      v7 = [v0 presentingViewController];
      v8 = [v7 view];

      if (v8)
      {
        [v8 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        [v6 setFrame_];
        [v33 addSubview_];
        v17 = *&v0[OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_effectView];
        v18 = [v0 presentingViewController];
        v19 = [v18 view];

        if (v19)
        {
          [v19 frame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          [v17 setFrame_];
          [v33 addSubview_];
          v28 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_dismissModal];
          [v17 addGestureRecognizer_];
          if ((v0[OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_useBlurEffect] & 1) == 0)
          {
            [v17 setAlpha_];
          }

          v29 = swift_allocObject();
          *(v29 + 16) = v0;
          v38 = sub_218C05E8C;
          v39 = v29;
          aBlock = MEMORY[0x277D85DD0];
          v35 = 1107296256;
          v36 = sub_218ABA2F4;
          v37 = &block_descriptor_9;
          v30 = _Block_copy(&aBlock);
          v31 = v0;

          v38 = nullsub_1;
          v39 = 0;
          aBlock = MEMORY[0x277D85DD0];
          v35 = 1107296256;
          v36 = sub_218ABA2F4;
          v37 = &block_descriptor_12;
          v32 = _Block_copy(&aBlock);
          [v3 animateAlongsideTransition:v30 completion:v32];
          _Block_release(v32);
          _Block_release(v30);

          swift_unknownObjectRelease();
          return;
        }

LABEL_19:
        __break(1u);
        return;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_218C059E8(uint64_t a1, _BYTE *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_effectView];
  if (a2[OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_useBlurEffect] == 1)
  {
    v4 = [objc_opt_self() effectWithStyle_];
    [v3 setEffect_];
  }

  else
  {
    [v3 setAlpha_];
  }

  v5 = [a2 presentedViewController];
  v6 = [v5 view];

  if (v6)
  {
    v7 = [v6 layer];

    [v7 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

void sub_218C05B60()
{
  v1 = [v0 presentingViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v11 = sub_218C05E10;
    v12 = v3;
    v7 = MEMORY[0x277D85DD0];
    v8 = 1107296256;
    v9 = sub_218ABA2F4;
    v10 = &block_descriptor_33;
    v4 = _Block_copy(&v7);
    v5 = v0;

    v11 = nullsub_1;
    v12 = 0;
    v7 = MEMORY[0x277D85DD0];
    v8 = 1107296256;
    v9 = sub_218ABA2F4;
    v10 = &block_descriptor_3;
    v6 = _Block_copy(&v7);
    [v2 animateAlongsideTransition:v4 completion:v6];
    _Block_release(v6);
    _Block_release(v4);
    swift_unknownObjectRelease();
  }
}

id sub_218C05E10()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_effectView);
  result = [v2 setEffect_];
  if ((*(v1 + OBJC_IVAR____TtC7NewsUI231ModalCardPresentationController_useBlurEffect) & 1) == 0)
  {

    return [v2 setAlpha_];
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_218C05EE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218C05F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218C05F98(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v24 = a3;
  v25 = a2;
  sub_218C06434(0, &qword_27CC0E9B0, MEMORY[0x277D6DF88]);
  v23 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  sub_218BA1D70();
  MEMORY[0x28223BE20](v8 - 8);
  sub_218C06434(0, &qword_27CC0AFB0, MEMORY[0x277D6EC60]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  __swift_project_boxed_opaque_existential_1((v3 + 72), *(v3 + 96));
  v14 = *(v3 + 48);
  v26[2] = *(v3 + 32);
  v26[3] = v14;
  v27 = *(v3 + 64);
  v15 = *(v3 + 16);
  v26[0] = *v3;
  v26[1] = v15;
  v16 = sub_218CA4D04(v26);
  sub_2189522EC();
  v18 = v17;
  v19 = sub_218C06528(&qword_27CC0E9C0, sub_2189522EC);
  v20 = sub_218C06528(&unk_27CC0E9C8, sub_2189522EC);
  MEMORY[0x21CEB9170](v16, v18, v19, v20);
  type metadata accessor for SportsManagementSectionDescriptor();
  type metadata accessor for SportsManagementModel();
  sub_218C06528(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
  sub_218C06528(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
  sub_219BEB2D4();
  sub_219BE85C4();
  v25(v7);
  (*(v5 + 8))(v7, v23);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_218C06310(uint64_t a1)
{
  v2 = sub_218BB5A14();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218C06350()
{
  result = qword_27CC0F0B8;
  if (!qword_27CC0F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F0B8);
  }

  return result;
}

void sub_218C06434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SportsManagementSectionDescriptor();
    v8[1] = type metadata accessor for SportsManagementModel();
    v8[2] = sub_218C06528(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    v8[3] = sub_218C06528(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218C06528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218C06570(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218809C38();
  sub_219BE1B84();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ChannelIssuesGroupConfig();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  sub_218C066B8(a6);

  sub_219BDD274();
  sub_219BE1B94();
}

uint64_t sub_218C066B8(void *a1)
{
  v38 = a1;
  v2 = sub_219BE14C4();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE14A4();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE0B64();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE09E4();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF104();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE15B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_219BE0204();
  result = sub_219BE1E24();
  if (result)
  {
    (*(v15 + 104))(v17, *MEMORY[0x277D2F478], v14);
    v19 = sub_219BDD0F4();
    (*(v15 + 8))(v17, v14);
    v20 = v38;
    sub_219BE01F4();
    sub_218C06D68(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    sub_219BDD1F4();
    (*(v11 + 8))(v13, v10);
    v21 = v30;
    sub_219BE01E4();
    sub_218C06D68(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v22 = v32;
    sub_219BDD1F4();
    (*(v31 + 8))(v21, v22);
    v23 = [v20 identifier];
    sub_219BF5414();

    v24 = v33;
    sub_219BE0B54();
    sub_218C06D68(&qword_27CC0C628, MEMORY[0x277D2EB60]);
    v25 = v35;
    sub_219BDD1F4();
    (*(v34 + 8))(v24, v25);
    (*(v36 + 104))(v39, *MEMORY[0x277D2F328], v37);
    v26 = [v20 identifier];
    sub_219BF5414();

    v27 = v40;
    sub_219BE1484();
    sub_218C06D68(&qword_280EE8010, MEMORY[0x277D2F280]);
    v28 = v42;
    sub_219BDD1F4();

    (*(v41 + 8))(v27, v28);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218C06D68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218C06EBC()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_blueprintViewController];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v8 setFrame_];
    sub_219BE8664();
    v19 = sub_219BE7BC4();

    [v1 setContentScrollView:v19 forEdge:15];

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v22 = sub_219BF53D4();

    [v1 setTitle_];

    v23 = sub_219BF65B4();
    v24 = [v1 title];
    [v23 setTitle_];

    v25 = [v1 traitCollection];
    sub_218C089AC();

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_218C0736C()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A40 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61928);
  v7[3] = v8;
  v7[4] = sub_218C087F8(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218C076C4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218C078A0(uint64_t a1)
{
  v36 = a1;
  v1 = sub_219BEB384();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE66C4();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_219BDB5E4();
  v14 = v13;

  v15 = [v10 bundleForClass_];
  v16 = sub_219BDB5E4();
  v18 = v17;

  MEMORY[0x21CEBD440](v12, v14, v16, v18, 0);
  sub_219BE8644();
  sub_2189DA200();
  v20 = &v5[*(v19 + 48)];
  v21 = *(v19 + 64);
  v23 = v34;
  v22 = v35;
  (*(v34 + 16))(v5, v8, v35);
  v24 = sub_219BE6C74();
  v25 = MEMORY[0x277D6D7C0];
  v20[3] = v24;
  v20[4] = v25;
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_219BE6C64();
  v26 = *MEMORY[0x277D6D9C8];
  v27 = sub_219BE73A4();
  (*(*(v27 - 8) + 104))(&v5[v21], v26, v27);
  v29 = v37;
  v28 = v38;
  (*(v37 + 104))(v5, *MEMORY[0x277D6EC90], v38);
  v31 = v39;
  v30 = v40;
  v32 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x277D6ECA8], v41);
  sub_219BE6BD4();

  (*(v30 + 8))(v31, v32);
  (*(v23 + 8))(v8, v22);
  return (*(v29 + 8))(v5, v28);
}

void sub_218C07D00()
{
  sub_219BE8664();
  v0 = sub_219BE7BC4();

  [v0 reloadData];
}

uint64_t sub_218C07D6C(uint64_t a1, uint64_t a2)
{
  sub_218C088B0(0, &qword_27CC0C070, MEMORY[0x277D6D710]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_eventHandler);
  sub_219BDC0F4();
  sub_218C088B0(0, &qword_27CC0C088, MEMORY[0x277D6EC60]);
  sub_219BEB364();
  v10 = __swift_project_boxed_opaque_existential_1(v9 + 11, v9[14]);
  v11 = *v10;
  v12 = *(*v10 + 48);
  v13 = *(*v10 + 56);
  __swift_project_boxed_opaque_existential_1((*v10 + 24), v12);
  (*(v13 + 8))(*(v11 + 16), v12, v13);
  v14 = v9[5];
  ObjectType = swift_getObjectType();
  (*(v14 + 48))(a2, ObjectType, v14);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218C07F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  result = (*(v6 + 88))(v8, v5);
  if (result == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v10 + 40))(ObjectType, v10);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_eventHandler) + 40);
    v13 = swift_getObjectType();
    return (*(v12 + 32))(v13, v12);
  }

  else
  {
    if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x277D6E958])
    {
      if (result == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_218C08114(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v12 = sub_219BF01B4();
    v13 = __swift_project_value_buffer(v12, qword_280F61940);
    v11[3] = v12;
    v11[4] = sub_218C087F8(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v17 = sub_219BF54E4();
    v19 = v18;

    v11[5] = v17;
    v11[6] = v19;
    (*(v8 + 104))(v11, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_218C0848C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_eventHandler) + 88), *(*(v2 + OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_eventHandler) + 112));
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_219BDD154();
}

uint64_t sub_218C08684@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6D230];
  v3 = sub_219BE57E4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_218C087F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_218C08840(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218ADA1F4(a1, v4);
}

void sub_218C088B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioHistoryFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioHistoryFeedModel();
    v8[2] = sub_218C087F8(&unk_27CC0DC20, 255, type metadata accessor for AudioHistoryFeedSectionDescriptor);
    v8[3] = sub_218C087F8(&unk_27CC0B8B0, 255, type metadata accessor for AudioHistoryFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218C089AC()
{
  v1 = &v0[OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_styler], v11);
  v2 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = *(*__swift_project_boxed_opaque_existential_1((*v2 + 16), *(*v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v4 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v11);
    v6 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    v7 = [v0 navigationItem];
    v8 = *(*__swift_project_boxed_opaque_existential_1((*v6 + 16), *(*v6 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    sub_219BEDA04();

    v9 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    sub_219BE8664();
    v10 = sub_219BE7BC4();

    [v10 setBackgroundColor_];
    [v10 setAlwaysBounceVertical_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218C08BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21880B928();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = sub_218C538C8(a3);
  v11 = sub_218845F78(v10);

  v20 = v11;
  v12 = sub_218C0B8A0(a2, sub_21898BAEC);

  v19 = v12;
  sub_21898BB10(0);
  sub_219BE3204();

  (*(v8 + 16))(&v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v7);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v8 + 32))(v14 + v13, &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v7);

  v15 = sub_219BE2E54();
  v16 = sub_219BE2F74();

  return v16;
}

uint64_t sub_218C08DB4(uint64_t a1, void (*a2)(char *))
{
  sub_21881150C(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_218859B24();
  v10 = *(v9 + 48);
  sub_21880B928();
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = *MEMORY[0x277D6D850];
  v13 = sub_219BE6DF4();
  (*(*(v13 - 8) + 104))(&v8[v10], v12, v13);
  (*(v6 + 104))(v8, *MEMORY[0x277D6DF48], v5);
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218C08F6C(void *a1, void (*a2)(char *))
{
  sub_21881150C(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  *(&v11 - v7) = a1;
  (*(v6 + 104))(&v11 - v7, *MEMORY[0x277D6DF68], v5);
  v9 = a1;
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218C09090()
{
  sub_2188300C8(0, &qword_280EE7028, MEMORY[0x277D6D310], MEMORY[0x277D6CF30]);

  v0 = sub_219BE2E54();
  sub_21898C1B8();
  sub_2186EF8F4(&qword_280E8FC68, sub_21898C1B8);
  v1 = sub_219BE2F34();

  return v1;
}

uint64_t sub_218C09180@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_21898BB10(0);
  sub_2186EF8F4(&qword_280E8F520, sub_21898BB10);
  sub_2186EF8F4(&unk_280EE5DD0, MEMORY[0x277D6D310]);
  v8 = sub_219BF56C4();
  sub_218C09348(a3, v8, a1, a2, a4);

  v9 = sub_218827310();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186EF8F4(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  v10 = sub_219BEEFC4();

  if (v10)
  {
    sub_219BEDC74();
  }

  sub_21880B928();
  sub_219BEB2C4();
  return sub_21885AB78(v9);
}

uint64_t sub_218C09348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a3;
  v85 = a2;
  v81 = a5;
  v87 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  v101 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodaySectionGapDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00();
  v104 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v95 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v89 = &v76 - v17;
  MEMORY[0x28223BE20](v16);
  v98 = &v76 - v18;
  sub_2188637B8();
  v97 = v19;
  MEMORY[0x28223BE20](v19);
  v103 = (&v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21880B928();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218863910(0);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C0BABC(0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v76 - v34;
  sub_2187FAC34();
  MEMORY[0x28223BE20](v36 - 8);
  v80 = &v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BEB1B4();
  v78 = v38;
  (*(v23 + 16))(v35, a1, v22);
  v77 = v35;
  sub_218C0BB5C(v35, v33, sub_218C0BABC);
  (*(v23 + 32))(v25, v33, v22);
  sub_2186EF8F4(&qword_280EE3738, sub_21880B928);
  sub_219BF56A4();
  v94 = *(v27 + 44);
  *&v29[v94] = 0;
  sub_21886394C(0, &qword_280E8D4A0, &qword_280EE3730, MEMORY[0x277D6EC70], MEMORY[0x277D84310]);
  v40 = *(v39 + 36);
  v41 = sub_2186EF8F4(&qword_280EE3730, sub_21880B928);
  sub_219BF5E84();
  if (*&v29[v40] != v105[0])
  {
    v45 = 0;
    v99 = a4;
    v100 = (v13 + 16);
    v102 = (v13 + 32);
    v84 = a4 + 56;
    v92 = (v13 + 56);
    v86 = (v101 + 6);
    v88 = v13;
    v91 = (v13 + 48);
    v101 = MEMORY[0x277D84F90];
    v93 = v41;
    while (1)
    {
      v46 = sub_219BF5EC4();
      v47 = *v100;
      v48 = v98;
      v49 = v104;
      (*v100)(v98);
      v46(v105, 0);
      v50 = v40;
      v51 = v22;
      sub_219BF5E94();
      v52 = *(v97 + 48);
      v53 = v102;
      v54 = v103;
      *v103 = v45;
      v55 = *v53;
      result = (*v53)(v54 + v52, v48, v49);
      v56 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        return result;
      }

      *&v29[v94] = v56;
      sub_219BE6934();
      if (!((v105[0] >> 58) & 0x3C | (LODWORD(v105[0]) >> 1) & 3))
      {
        v64 = swift_projectBox();
        if ((*v86)(v64, 1, v87) == 1)
        {
          v66 = v103;
          v65 = v104;
          v67 = v103 + v52;
          v63 = v96;
          (v47)(v96, v67, v104);
          (*v92)(v63, 0, 1, v65);
          v57 = v66;
        }

        else
        {
          v69 = v82;
          sub_218C0BB5C(v64, v82, type metadata accessor for TodaySectionGapDescriptor);
          v70 = v69;
          v71 = v83;
          sub_218C0BAF8(v70, v83);
          v63 = v96;
          sub_218C09EC0(v71, v90, v96);
          sub_218C0BC58(v71, type metadata accessor for TodayBlueprintCollapsedSection);
          v65 = v104;
          (*v92)(v63, 0, 1, v104);

          v57 = v103;
        }

        goto LABEL_21;
      }

      v57 = v103;
      if (!v99)
      {
        goto LABEL_18;
      }

      if (*(v99 + 16))
      {
        v58 = sub_219BF7A94();
        v59 = -1 << *(v99 + 32);
        v60 = v58 & ~v59;
        if ((*(v84 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
        {
          break;
        }
      }

LABEL_15:
      v62 = v57 + v52;
      v63 = v96;
      sub_218C0A3C8(v62, v90, v96);
LABEL_19:
      v65 = v104;
      (*v92)(v63, 0, 1, v104);
LABEL_21:
      sub_218C0BC58(v57, sub_2188637B8);
      if ((*v91)(v63, 1, v65) == 1)
      {
        sub_218C0BC58(v63, sub_2188118D4);
        v22 = v51;
        v40 = v50;
      }

      else
      {
        v72 = v89;
        v55(v89, v63, v65);
        v55(v95, v72, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_2191F7F60(0, v101[2] + 1, 1, v101);
        }

        v22 = v51;
        v74 = v101[2];
        v73 = v101[3];
        v40 = v50;
        if (v74 >= v73 >> 1)
        {
          v101 = sub_2191F7F60(v73 > 1, v74 + 1, 1, v101);
        }

        v75 = v101;
        v101[2] = v74 + 1;
        v55(&v75[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v74], v95, v65);
      }

      sub_219BF5E84();
      v45 = v56;
      if (*&v29[v40] == v105[0])
      {
        goto LABEL_3;
      }
    }

    v61 = ~v59;
    while (*(*(v99 + 48) + 8 * v60) != v45)
    {
      v60 = (v60 + 1) & v61;
      if (((*(v84 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v68 = v57 + v52;
    v63 = v96;
    sub_218C0AC98(v68, v85, v96);
    goto LABEL_19;
  }

  v101 = MEMORY[0x277D84F90];
LABEL_3:
  sub_218C0BC58(v29, sub_218863910);
  sub_218C0BC58(v77, sub_218C0BABC);
  v42 = sub_2186EF8F4(&qword_280EE58E0, sub_2187FAD00);
  v43 = sub_2186EF8F4(&qword_280EE58F0, sub_2187FAD00);
  MEMORY[0x21CEB9170](v101, v104, v42, v43);
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_2186EF8F4(&qword_280EDF9E0, type metadata accessor for TodayModel);
  return sub_219BEB1A4();
}

uint64_t sub_218C09EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v40 = a3;
  sub_218853494();
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v38);
  v36 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BDBD64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_218C40680(v15);
  sub_2187FAD00();
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  sub_219BDBD54();
  v18 = sub_219BDBD44();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  v41 = v16;
  v21 = sub_218C0B8A0(v37, sub_21898C2A4);

  v22 = &v14[*(v11 + 20)];
  *v22 = v18;
  v22[1] = v20;
  *&v14[*(v11 + 24)] = v21;
  type metadata accessor for TodaySectionGapDescriptor(0);
  v23 = swift_allocBox();
  v25 = v24;
  sub_218C0BB5C(v14, v24, type metadata accessor for TodayBlueprintCollapsedSection);
  (*(v12 + 56))(v25, 0, 1, v11);
  v44 = v23;
  sub_2188300C8(0, &qword_280E8BFF0, sub_218853400, MEMORY[0x277D84560]);
  sub_218853400();
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09BA0;
  v42 = sub_219BE6944();
  v43 = v29;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](v18, v20);
  v30 = v43;
  v31 = v36;
  *v36 = v42;
  v31[1] = v30;
  swift_storeEnumTagMultiPayload();
  sub_2186EF8F4(&qword_280EDF9E0, type metadata accessor for TodayModel);
  sub_219BE5FB4();
  v32 = sub_2186EF8F4(&qword_280EE5D38, sub_218853400);
  v33 = sub_2186EF8F4(&qword_280EE5D40, sub_218853400);
  MEMORY[0x21CEB9150](v28, v27, v32, v33);
  sub_2186EB3E8();
  sub_219BE6924();
  return sub_218C0BC58(v14, type metadata accessor for TodayBlueprintCollapsedSection);
}

uint64_t sub_218C0A3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v77 = a3;
  sub_218853494();
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BDBD64();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TodayModel(0);
  v9 = MEMORY[0x28223BE20](v79);
  v74 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  sub_218853400();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C0BBC4();
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v20 + 16);
  v70 = a1;
  v65 = v20 + 16;
  v64 = v27;
  v27(v22, a1, v19);
  sub_2186EF8F4(&qword_280EE58D8, sub_2187FAD00);
  sub_219BF56A4();
  v28 = *(v24 + 44);
  sub_2186EF8F4(&qword_280EE58D0, sub_2187FAD00);
  sub_219BF5E84();
  v29 = *&v26[v28];
  v68 = v15;
  if (v29 == v81)
  {
    v78 = MEMORY[0x277D84F90];
  }

  else
  {
    v49 = v15;
    v50 = (v15 + 16);
    v51 = (v49 + 8);
    v78 = MEMORY[0x277D84F90];
    do
    {
      v52 = sub_219BF5EC4();
      (*v50)(v17);
      v52(&v81, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v63 = sub_219BE5B24();
        v62 = v53;

        (*v51)(v17, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_218840D24(0, *(v78 + 2) + 1, 1, v78);
        }

        v55 = *(v78 + 2);
        v54 = *(v78 + 3);
        v56 = v55 + 1;
        if (v55 >= v54 >> 1)
        {
          v61 = v55 + 1;
          v60 = sub_218840D24((v54 > 1), v55 + 1, 1, v78);
          v56 = v61;
          v78 = v60;
        }

        v57 = v78;
        *(v78 + 2) = v56;
        v58 = &v57[16 * v55];
        v59 = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v59;
      }

      else
      {
        (*v51)(v17, v14);
        sub_218C0BC58(v12, type metadata accessor for TodayModel);
      }

      sub_219BF5E84();
    }

    while (*&v26[v28] != v81);
  }

  sub_218C0BC58(v26, sub_218C0BBC4);
  v30 = v75;
  v64(v75, v70, v19);
  v31 = v66;
  sub_219BDBD54();
  v32 = sub_219BDBD44();
  v34 = v33;
  v35 = (*(v67 + 8))(v31, v69);
  MEMORY[0x28223BE20](v35);
  *(&v61 - 2) = v78;
  v36 = sub_218C0B8A0(v73, sub_21898C160);

  v37 = v72;
  v38 = (v30 + *(v72 + 20));
  *v38 = v32;
  v38[1] = v34;
  *(v30 + *(v37 + 24)) = v36;
  type metadata accessor for TodaySectionGapDescriptor(0);
  v39 = swift_allocBox();
  v41 = v40;
  sub_218C0BB5C(v30, v40, type metadata accessor for TodayBlueprintCollapsedSection);
  (*(v71 + 56))(v41, 0, 1, v37);
  v80 = v39;
  sub_2188300C8(0, &qword_280E8BFF0, sub_218853400, MEMORY[0x277D84560]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_219C09BA0;
  v81 = sub_219BE6944();
  v82 = v43;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](v32, v34);
  v44 = v82;
  v45 = v74;
  *v74 = v81;
  v45[1] = v44;
  swift_storeEnumTagMultiPayload();
  sub_2186EF8F4(&qword_280EDF9E0, type metadata accessor for TodayModel);
  sub_219BE5FB4();
  v46 = sub_2186EF8F4(&qword_280EE5D38, sub_218853400);
  v47 = sub_2186EF8F4(&qword_280EE5D40, sub_218853400);
  MEMORY[0x21CEB9150](v42, v14, v46, v47);
  sub_2186EB3E8();
  sub_219BE6924();
  return sub_218C0BC58(v30, type metadata accessor for TodayBlueprintCollapsedSection);
}

uint64_t sub_218C0AC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v36[1] = a3;
  v4 = type metadata accessor for TodayModel(0);
  v5 = MEMORY[0x28223BE20](v4);
  v38 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = v36 - v7;
  sub_218853400();
  v10 = v9;
  v45 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v47 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = v36 - v13;
  sub_218853494();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00();
  v18 = v17;
  sub_219BE6934();
  v50 = v51;
  v19 = sub_2186EF8F4(&qword_280EE58D0, sub_2187FAD00);
  v20 = sub_219BF5E44();
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v22 = v20;
    v49 = MEMORY[0x277D84F90];
    sub_21885760C(0, v20 & ~(v20 >> 63), 0);
    v21 = v49;
    v43 = v19;
    v44 = v18;
    result = sub_219BF5DF4();
    if ((v22 & 0x8000000000000000) == 0)
    {
      v36[0] = v16;
      v42 = (v45 + 16);
      v37 = (v45 + 8);
      v24 = (v45 + 32);
      v39 = a1;
      v40 = v8;
      while (1)
      {
        v25 = sub_219BF5EC4();
        (*v42)(v47);
        v25(v48, 0);
        sub_219BE5FC4();
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        v26 = sub_219BE5B24();
        v28 = v41;
        if (!*(v41 + 16))
        {

          goto LABEL_11;
        }

        v29 = sub_21870F700(v26, v27);
        v31 = v30;

        if ((v31 & 1) == 0)
        {

LABEL_11:
          v8 = v40;
LABEL_12:
          (*v24)(v46, v47, v10);
          goto LABEL_13;
        }

        *v38 = *(*(v28 + 56) + 8 * v29);
        swift_storeEnumTagMultiPayload();
        sub_2186EF8F4(&qword_280EDF9E0, type metadata accessor for TodayModel);
        swift_retain_n();
        sub_219BE5FB4();

        (*v37)(v47, v10);
        v8 = v40;
LABEL_13:
        v49 = v21;
        v33 = *(v21 + 16);
        v32 = *(v21 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_21885760C(v32 > 1, v33 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v33 + 1;
        (*(v45 + 32))(v21 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33, v46, v10);
        sub_219BF5E94();
        if (!--v22)
        {
          goto LABEL_16;
        }
      }

      sub_218C0BC58(v8, type metadata accessor for TodayModel);
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v34 = sub_2186EF8F4(&qword_280EE5D38, sub_218853400);
    v35 = sub_2186EF8F4(&qword_280EE5D40, sub_218853400);
    MEMORY[0x21CEB9170](v21, v10, v34, v35);
    sub_2186EB3E8();
    sub_2186EF8F4(&qword_280EDF9E0, type metadata accessor for TodayModel);
    return sub_219BE6924();
  }

  return result;
}

uint64_t sub_218C0B24C()
{
  sub_2188300C8(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C0D560;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D6DE38], v0);
  v6(v5 + v2, *MEMORY[0x277D6DE48], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D6DE50], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D6DE30], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277D6DE58], v0);
  v7 = sub_218847E58(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

void sub_218C0B428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21880B928();
  sub_219BE3204();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_219BE2E54();
  sub_219BE2F74();

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_218C0B56C(uint64_t a1)
{
  v2 = sub_218C0BCB8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218C0B5AC()
{
  result = qword_280EAA268;
  if (!qword_280EAA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA268);
  }

  return result;
}

void *sub_218C0B69C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_218C0B72C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_218C0B72C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_218B9DBC4(v21, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_218B9DBC4(v21, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218C0B8A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_218C0B72C(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_218C0B69C(v10, v6, v4, a2);
  result = MEMORY[0x21CECF960](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_218C0BAF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C0BB5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218C0BBC4()
{
  if (!qword_280E8D4F8)
  {
    sub_2187FAD00();
    sub_2186EF8F4(&qword_280EE58D0, sub_2187FAD00);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D4F8);
    }
  }
}

uint64_t sub_218C0BC58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218C0BCB8()
{
  result = qword_280EAA270;
  if (!qword_280EAA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA270);
  }

  return result;
}

uint64_t static CGRect.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6D0C8];
  v3 = sub_219BDCA34();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double static CGRect.convert(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218C0C49C(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t CGRect.toData()@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, uint64_t a5@<D3>)
{
  sub_219BDB084();
  swift_allocObject();
  sub_219BDB074();
  *v22 = a2;
  *&v22[1] = a3;
  *&v22[2] = a4;
  v23 = a5;
  type metadata accessor for CGRect(0);
  sub_218C0C738(&qword_27CC0F0E0);
  v10 = sub_219BDB064();
  v12 = v11;

  sub_218B87528(v10, v12);
  v13 = sub_218C0C2F0(v10, v12);
  if (v14)
  {
    goto LABEL_8;
  }

  v20 = v10;
  v21 = v12;
  sub_218B87528(v10, v12);
  sub_218C0C5DC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_218C0C640(v18);
LABEL_7:
    v13 = sub_218C0C0CC(v10, v12);
LABEL_8:
    v15 = v13;
    v16 = v14;
    sub_2186C6190(v10, v12);
    goto LABEL_9;
  }

  sub_2186CB1F0(v18, v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  if ((sub_219BF75F4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    goto LABEL_7;
  }

  sub_2186C6190(v10, v12);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_219BF75E4();
  v16 = *(&v18[0] + 1);
  v15 = *&v18[0];
  __swift_destroy_boxed_opaque_existential_1(v22);
LABEL_9:
  a1[3] = MEMORY[0x277D837D0];
  result = sub_2186C6190(v10, v12);
  *a1 = v15;
  a1[1] = v16;
  return result;
}

uint64_t sub_218C0C008@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6D0C8];
  v3 = sub_219BDCA34();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_218C0C07C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218C0C49C(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_218C0C0CC(uint64_t a1, unint64_t a2)
{
  sub_218B87528(a1, a2);
  sub_218C0C174(a1, a2);
  v4 = sub_219BF5504();

  return v4;
}

uint64_t sub_218C0C138@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BF5504();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_218C0C174(uint64_t a1, unint64_t a2)
{
  v4 = sub_219BDBA24();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_2186C6190(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_2188249B8(v10, 0);
      v14 = sub_219BDB994();
      sub_2186C6190(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_218C0C2F0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_219BF5504();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_219BF5504();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_219BDB384();
  if (a1)
  {
    a1 = sub_219BDB3B4();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_219BDB384() || !__OFSUB__(v5, sub_219BDB3B4()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_219BDB3A4();
  return sub_219BF5504();
}

uint64_t sub_218C0C49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186D1230(a1, v12);
  result = swift_dynamicCast();
  if (result)
  {
    sub_219BDAFF4();
    swift_allocObject();
    sub_219BDAFE4();
    type metadata accessor for CGRect(0);
    v4 = sub_2197BBEB4(v10, v11);
    v6 = v5;
    sub_218C0C738(&qword_27CC0F100);
    sub_219BDAFC4();
    sub_2186C6190(v4, v6);

    v7 = 0;
    v8 = v12[0];
    v9 = v12[1];
  }

  else
  {
    v8 = 0uLL;
    v7 = 1;
    v9 = 0uLL;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_218C0C5DC()
{
  result = qword_27CC0F0E8;
  if (!qword_27CC0F0E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC0F0E8);
  }

  return result;
}

uint64_t sub_218C0C640(uint64_t a1)
{
  sub_218C0C69C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218C0C69C()
{
  if (!qword_27CC0F0F0)
  {
    sub_218C0C5DC();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0F0F0);
    }
  }
}

uint64_t sub_218C0C738(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218C0C7A0(uint64_t a1)
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
  v4 = a1 + 64;
  result = sub_219BF7174();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_21870B65C((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v23;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
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
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_2187BC250(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_2187BC250(v6, v24, 0);
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
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_218C0C9E4(void (*a1)(char *, char *, uint64_t))
{
  v3 = type metadata accessor for EngagementEvent();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v22 = sub_218C0CC1C(a1);
  sub_218A153EC(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_218C1023C(v8);
  if (EnumCaseMultiPayload > 1 || (swift_getObjectType(), v10 = sub_218C0F98C(), *(v1 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_churnPropensityLevel) == v10))
  {
    v21 = 0;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_churnPropensityLevel) = v10;
    v21 = 1;
  }

  sub_218C0DC14(a1);
  v12 = v11;
  sub_218A153EC(a1, v6);
  v13 = swift_getEnumCaseMultiPayload();
  sub_218C1023C(v6);
  if (v13 == 1 && (v14 = sub_218C0FE68()) != 0 && *(v1 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_trialEligibility) != v14)
  {
    *(v1 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_trialEligibility) = v14;
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_218C0E31C(a1);
  result = sub_218C0E7F4(a1);
  if (EnumCaseMultiPayload >= 2 && (v22 & 1) == 0 && (v12 & 1) == 0 && v13 != 1 && (v16 & 1) == 0 && (result & 1) == 0)
  {
    v18 = 0;
LABEL_20:
    sub_218C10298();
    swift_allocError();
    *v19 = v18;
    return swift_willThrow();
  }

  if (((v21 | (((v22 | v12) & 0x100) >> 8) | v15) & 1) == 0 && (v16 & 0x100) == 0 && (result & 0x100) == 0)
  {
    v18 = 1;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_218C0CC1C(uint64_t a1)
{
  v129 = a1;
  v1 = MEMORY[0x277CC9578];
  sub_218C10988(0, &qword_280EE9C30, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v117 = v2;
  MEMORY[0x28223BE20](v2);
  v120 = &v106 - v3;
  v130 = sub_219BDBD34();
  v125 = *(v130 - 8);
  v4 = MEMORY[0x28223BE20](v130);
  v110 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v124 = &v106 - v6;
  v115 = sub_219BDD2D4();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_219BDFD14();
  v127 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v111 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D2E080];
  sub_218C10988(0, &qword_280EE8560, &qword_280EE8568, MEMORY[0x277D2E080]);
  v121 = v10;
  MEMORY[0x28223BE20](v10);
  v123 = &v106 - v11;
  sub_2186DD1E8(0, &unk_280EE8360, MEMORY[0x277D2E6E8]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v106 - v13;
  sub_2186DD1E8(0, &qword_280EE8568, v9);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v116 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v106 - v19;
  MEMORY[0x28223BE20](v18);
  v126 = (&v106 - v21);
  v22 = sub_219BDFB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v26);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD1E8(0, &qword_280EE9C40, v1);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v112 = &v106 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v118 = &v106 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v106 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v106 - v41;
  MEMORY[0x28223BE20](v40);
  v128 = &v106 - v43;
  sub_218A153EC(v129, v28);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v106 = v32;
    v109 = v23;
    v44 = *(v23 + 32);
    v129 = v22;
    v44(v25, v28, v22);
    v108 = v25;
    sub_219BDFB14();
    v45 = sub_219BE06B4();
    v46 = *(v45 - 8);
    v47 = (*(v46 + 48))(v14, 1, v45);
    v107 = v39;
    if (v47 == 1)
    {
      sub_218C10540(v14, &unk_280EE8360, MEMORY[0x277D2E6E8]);
      v48 = 1;
      v49 = v42;
      v50 = v126;
    }

    else
    {
      v50 = v126;
      sub_219BE0694();
      (*(v46 + 8))(v14, v45);
      v48 = 0;
      v49 = v42;
    }

    v51 = v127;
    v52 = v127[7];
    v53 = v122;
    v52(v50, v48, 1, v122);
    (v51[13])(v20, *MEMORY[0x277D2E078], v53);
    v52(v20, 0, 1, v53);
    v54 = *(v121 + 48);
    v55 = MEMORY[0x277D2E080];
    v56 = v123;
    sub_218C1059C(v50, v123, &qword_280EE8568, MEMORY[0x277D2E080]);
    sub_218C1059C(v20, v56 + v54, &qword_280EE8568, v55);
    v57 = v51[6];
    if (v57(v56, 1, v53) == 1)
    {
      v58 = MEMORY[0x277D2E080];
      sub_218C10540(v20, &qword_280EE8568, MEMORY[0x277D2E080]);
      sub_218C10540(v50, &qword_280EE8568, v58);
      v59 = v57(v56 + v54, 1, v53);
      v60 = v128;
      v61 = v49;
      v62 = v107;
      if (v59 == 1)
      {
        sub_218C10540(v56, &qword_280EE8568, MEMORY[0x277D2E080]);
        v63 = v125;
        v64 = v129;
        v65 = v109;
        v66 = v108;
        goto LABEL_13;
      }
    }

    else
    {
      v67 = v116;
      sub_218C1059C(v56, v116, &qword_280EE8568, MEMORY[0x277D2E080]);
      v61 = v49;
      if (v57(v56 + v54, 1, v53) != 1)
      {
        v71 = v127;
        v72 = v56 + v54;
        v73 = v111;
        (v127[4])(v111, v72, v53);
        sub_218C109EC(&unk_280EE8570, MEMORY[0x277D2E080]);
        LODWORD(v121) = sub_219BF53A4();
        v74 = v71[1];
        v74(v73, v53);
        v75 = MEMORY[0x277D2E080];
        sub_218C10540(v20, &qword_280EE8568, MEMORY[0x277D2E080]);
        sub_218C10540(v126, &qword_280EE8568, v75);
        v74(v67, v53);
        sub_218C10540(v56, &qword_280EE8568, v75);
        v63 = v125;
        v60 = v128;
        v64 = v129;
        v65 = v109;
        v66 = v108;
        v62 = v107;
        if ((v121 & 1) == 0)
        {
          v69 = 1;
          goto LABEL_15;
        }

LABEL_13:
        v76 = v113;
        sub_219BDFB54();
        sub_219BDD2C4();
        (*(v114 + 8))(v76, v115);
        v69 = 0;
LABEL_15:
        v70 = v130;
LABEL_16:
        (*(v65 + 8))(v66, v64);
        v77 = *(v63 + 56);
        (v77)(v61, v69, 1, v70);
        sub_218A5DD60(v61, v60);
        sub_218C1059C(v60, v62, &qword_280EE9C40, MEMORY[0x277CC9578]);
        v78 = *(v63 + 48);
        if (v78(v62, 1, v70) == 1)
        {
          v79 = MEMORY[0x277CC9578];
          sub_218C10540(v60, &qword_280EE9C40, MEMORY[0x277CC9578]);
          sub_218C10540(v62, &qword_280EE9C40, v79);
          goto LABEL_18;
        }

        v83 = v77;
        v84 = *(v63 + 32);
        v85 = v124;
        v129 = v63 + 32;
        v127 = v84;
        (v84)(v124, v62, v70);
        v86 = OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_lastMagazineOpenDate;
        v87 = v119;
        swift_beginAccess();
        v88 = v118;
        (*(v63 + 16))(v118, v85, v130);
        v126 = v83;
        (v83)(v88, 0, 1, v130);
        v89 = *(v117 + 48);
        v90 = MEMORY[0x277CC9578];
        v123 = v86;
        v91 = v87 + v86;
        v92 = v130;
        v93 = v120;
        sub_218C1059C(v91, v120, &qword_280EE9C40, MEMORY[0x277CC9578]);
        sub_218C1059C(v88, v93 + v89, &qword_280EE9C40, v90);
        if (v78(v93, 1, v92) == 1)
        {
          v94 = MEMORY[0x277CC9578];
          sub_218C10540(v88, &qword_280EE9C40, MEMORY[0x277CC9578]);
          v95 = v120;
          sub_218C10540(v128, &qword_280EE9C40, v94);
          v96 = v78(v95 + v89, 1, v92);
          v97 = v106;
          if (v96 == 1)
          {
            sub_218C10540(v95, &qword_280EE9C40, MEMORY[0x277CC9578]);
            (*(v125 + 8))(v124, v92);
LABEL_29:
            v81 = 0;
            v80 = 1;
            return v81 | v80;
          }
        }

        else
        {
          v98 = v112;
          sub_218C1059C(v93, v112, &qword_280EE9C40, MEMORY[0x277CC9578]);
          if (v78(v93 + v89, 1, v92) != 1)
          {
            v103 = v110;
            v100 = v127;
            (v127)(v110, v93 + v89, v92);
            sub_218C109EC(&qword_280EE9C80, MEMORY[0x277CC9578]);
            LODWORD(v122) = sub_219BF53A4();
            v104 = *(v125 + 8);
            v104(v103, v92);
            v105 = MEMORY[0x277CC9578];
            sub_218C10540(v118, &qword_280EE9C40, MEMORY[0x277CC9578]);
            sub_218C10540(v128, &qword_280EE9C40, v105);
            v104(v98, v92);
            sub_218C10540(v93, &qword_280EE9C40, v105);
            v97 = v106;
            if (v122)
            {
              v104(v124, v92);
              goto LABEL_29;
            }

LABEL_26:
            v100(v97, v124, v92);
            v80 = 1;
            (v126)(v97, 0, 1, v92);
            v101 = v119;
            v102 = v123;
            swift_beginAccess();
            sub_218B9E4D4(v97, v101 + v102);
            swift_endAccess();
            v81 = 256;
            return v81 | v80;
          }

          v99 = MEMORY[0x277CC9578];
          sub_218C10540(v118, &qword_280EE9C40, MEMORY[0x277CC9578]);
          v95 = v120;
          sub_218C10540(v128, &qword_280EE9C40, v99);
          (*(v125 + 8))(v98, v92);
          v97 = v106;
        }

        sub_218744D4C(v95, &qword_280EE9C30, &qword_280EE9C40, MEMORY[0x277CC9578], sub_218C10988);
        v100 = v127;
        goto LABEL_26;
      }

      v68 = MEMORY[0x277D2E080];
      sub_218C10540(v20, &qword_280EE8568, MEMORY[0x277D2E080]);
      sub_218C10540(v126, &qword_280EE8568, v68);
      (v127[1])(v67, v53);
      v60 = v128;
      v62 = v107;
    }

    sub_218744D4C(v56, &qword_280EE8560, &qword_280EE8568, MEMORY[0x277D2E080], sub_218C10988);
    v69 = 1;
    v64 = v129;
    v70 = v130;
    v63 = v125;
    v65 = v109;
    v66 = v108;
    goto LABEL_16;
  }

  sub_218C1023C(v28);
LABEL_18:
  v80 = 0;
  v81 = 0;
  return v81 | v80;
}

void sub_218C0DC14(uint64_t a1)
{
  v2 = sub_219BE0154();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE08C4();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDFEB4();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE05A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v15);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A153EC(a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v19 = v57;
      if (EnumCaseMultiPayload == 7)
      {
        v24 = *v17;
        v23 = v17[1];
        v25 = *(v57 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_followedNewsPlusChannelIDs);
        v26 = *(v25 + 16);

        if (v26)
        {
          v27 = 0;
          v28 = v25 + 40;
          v55 = v26 - 1;
          v29 = MEMORY[0x277D84F90];
          v56 = v25 + 40;
          do
          {
            v30 = (v28 + 16 * v27);
            v31 = v27;
            while (1)
            {
              if (v31 >= *(v25 + 16))
              {
                __break(1u);
                goto LABEL_32;
              }

              v32 = *(v30 - 1);
              v33 = *v30;
              v34 = v32 == v24 && v33 == v23;
              if (!v34 && (sub_219BF78F4() & 1) == 0)
              {
                break;
              }

              ++v31;
              v30 += 2;
              if (v26 == v31)
              {
                goto LABEL_26;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v58 = v29;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21870B65C(0, *(v29 + 16) + 1, 1);
              v29 = v58;
            }

            v37 = *(v29 + 16);
            v36 = *(v29 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_21870B65C((v36 > 1), v37 + 1, 1);
              v29 = v58;
            }

            v27 = v31 + 1;
            *(v29 + 16) = v37 + 1;
            v38 = v29 + 16 * v37;
            *(v38 + 32) = v32;
            *(v38 + 40) = v33;
            v28 = v56;
            v19 = v57;
          }

          while (v55 != v31);
        }

LABEL_26:

        goto LABEL_27;
      }

      goto LABEL_23;
    }

    v39 = *v17;
    v19 = v57;
    v40 = *(v57 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_followedNewsPlusChannelIDs);
    v59 = v17[1];
    v60 = v40;
    v58 = v39;
    sub_2186D0C48(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);

    sub_219BF59B4();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v19 = v57;
      if (EnumCaseMultiPayload == 1)
      {
        v20 = v52;
        v21 = v17;
        v22 = v53;
        (*(v52 + 32))(v4, v21, v53);
        sub_219BE0124();
        sub_219BDFEA4();
        (*(v54 + 8))(v10, v8);
        sub_219BE08B4();
        (*(v55 + 8))(v7, v56);
        (*(v20 + 8))(v4, v22);
        goto LABEL_27;
      }

LABEL_23:
      sub_218C1023C(v17);
      return;
    }

    (*(v12 + 32))(v14, v17, v11);
    sub_219BE0574();
    sub_219BDFEA4();
    (*(v54 + 8))(v10, v8);
    sub_219BE08B4();
    (*(v55 + 8))(v7, v56);
    (*(v12 + 8))(v14, v11);
    v19 = v57;
  }

LABEL_27:
  v41 = [objc_msgSend(*(v19 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_paidAccessChecker) bundleSubscriptionProvider];
  swift_unknownObjectRelease();
  v42 = *(v19 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_tagController);
  v43 = sub_219BF5904();

  v44 = [v42 fastCachedTagsForIDs_];

  if (v44)
  {
    sub_2186D8870();
    v45 = sub_219BF5214();

    v46 = v41;
    v47 = sub_218C107DC(v45, v46);

    v48 = sub_218C0C7A0(v47);

    v49 = OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_followedNewsPlusChannelIDs;
    v50 = *(v19 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_followedNewsPlusChannelIDs);

    v51 = sub_218C0FD28(v48, v50);

    if ((v51 & 1) == 0)
    {
      *(v19 + v49) = v48;
    }
  }

  else
  {
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_218C0E31C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BF1444();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD1E8(0, &qword_280E908A0, MEMORY[0x277D333A0]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_219BF1454();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A153EC(a1, v19);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_218C1023C(v19);
  if (a1 != 1)
  {
    goto LABEL_4;
  }

  swift_getObjectType();
  sub_219BF42D4();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    v22 = (*(v11 + 88))(v14, v10);
    if (v22 == *MEMORY[0x277D33390])
    {
      (*(v11 + 8))(v16, v10);
      (*(v11 + 96))(v14, v10);
      v23 = *v14;
      v24 = 2;
      v25 = 2;
    }

    else
    {
      if (v22 == *MEMORY[0x277D33398])
      {
        (*(v11 + 96))(v14, v10);
        v26 = v33;
        v27 = v14;
        v28 = v34;
        (*(v33 + 32))(v6, v27, v34);
        v29 = sub_219BF1434();
        (*(v26 + 8))(v6, v28);
        (*(v11 + 8))(v16, v10);
        v24 = v29 & 1;
        v25 = 1;
      }

      else
      {
        v30 = *(v11 + 8);
        v30(v16, v10);
        v30(v14, v10);
        v25 = 0;
        v24 = 2;
      }

      v23 = 2;
    }

    if (v25 != *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_familySharingSetupStatus))
    {
      goto LABEL_22;
    }

    v31 = *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingEligible);
    if (v23 == 2)
    {
      if (v31 != 2)
      {
        goto LABEL_22;
      }
    }

    else if (v31 == 2 || ((v23 ^ v31) & 1) != 0)
    {
      goto LABEL_22;
    }

    if (v24 == 2)
    {
      if (*(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingOrganizer) != 2)
      {
LABEL_22:
        v21 = 256;
LABEL_23:
        *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_familySharingSetupStatus) = v25;
        *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingEligible) = v23;
        *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingOrganizer) = v24;
        v20 = 1;
        return v21 | v20;
      }
    }

    else if (*(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingOrganizer) == 2 || ((v24 ^ *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingOrganizer)) & 1) != 0)
    {
      goto LABEL_22;
    }

    v21 = 0;
    goto LABEL_23;
  }

  sub_218C10540(v9, &qword_280E908A0, MEMORY[0x277D333A0]);
LABEL_4:
  v20 = 0;
  v21 = 0;
  return v21 | v20;
}

uint64_t sub_218C0E7F4(void (*a1)(char *, char *, uint64_t))
{
  v71 = a1;
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v63 = &v57 - v5;
  v6 = sub_219BDEF94();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDF3A4();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BDF934();
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD1E8(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v58 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v62 = &v57 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v57 - v26;
  v69 = v1;
  v70 = v2;
  v61 = *(v2 + 56);
  v61(&v57 - v26, 1, 1, v1);
  sub_218A153EC(v71, v17);
  if (swift_getEnumCaseMultiPayload() == 15)
  {
    v28 = v17;
    v29 = v66;
    (*(v12 + 32))(v14, v28, v66);
    sub_219BDF914();
    sub_219BDEF44();
    (*(v64 + 8))(v8, v65);
    sub_219BDF394();
    v31 = v30;
    if (v30)
    {
      (*(v67 + 8))(v11, v68);
      (*(v12 + 8))(v14, v29);
      v32 = 0;
      v33 = v69;
    }

    else
    {
      v34 = v62;
      sub_219BDBC74();
      sub_218C10540(v27, &qword_280EE9C40, MEMORY[0x277CC9578]);
      v33 = v69;
      v61(v34, 0, 1, v69);
      sub_218A5DD60(v34, v27);
      LODWORD(v34) = sub_219BDF384();
      (*(v67 + 8))(v11, v68);
      (*(v12 + 8))(v14, v29);
      v32 = v34 > 0;
    }

    v35 = v70;
    sub_218C1059C(v27, v23, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v36 = *(v35 + 48);
    if (v36(v23, 1, v33) == 1)
    {
      v37 = MEMORY[0x277CC9578];
      sub_218C10540(v27, &qword_280EE9C40, MEMORY[0x277CC9578]);
      v38 = v23;
      v39 = v37;
    }

    else
    {
      v40 = v33;
      v41 = v63;
      v42 = v23;
      v43 = v40;
      v71 = *(v35 + 32);
      v71(v63, v42, v40);
      if ((v31 & 1) == 0)
      {
        if (v32)
        {
          v47 = OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_lastPuzzlePlayedDate;
          v48 = v60;
          swift_beginAccess();
          v69 = v47;
          v49 = v58;
          sub_218C1059C(v48 + v47, v58, &qword_280EE9C40, MEMORY[0x277CC9578]);
          v50 = v43;
          if (v36(v49, 1, v43) == 1)
          {
            v51 = v59;
            sub_219BDBBB4();
            if (v36(v49, 1, v43) != 1)
            {
              sub_218C10540(v49, &qword_280EE9C40, MEMORY[0x277CC9578]);
            }
          }

          else
          {
            v51 = v59;
            v71(v59, v49, v43);
          }

          v52 = v63;
          v53 = sub_219BDBC14();
          v54 = *(v70 + 8);
          v54(v51, v50);
          sub_218C10540(v27, &qword_280EE9C40, MEMORY[0x277CC9578]);
          if (v53)
          {
            v55 = v62;
            v71(v62, v52, v50);
            v44 = 1;
            v61(v55, 0, 1, v50);
            v56 = v69;
            swift_beginAccess();
            sub_218B9E4D4(v55, v48 + v56);
            swift_endAccess();
            v45 = 256;
            return v45 | v44;
          }

          v54(v52, v50);
        }

        else
        {
          (*(v70 + 8))(v63, v43);
          sub_218C10540(v27, &qword_280EE9C40, MEMORY[0x277CC9578]);
        }

        v45 = 0;
        v44 = 1;
        return v45 | v44;
      }

      (*(v35 + 8))(v41, v43);
      v39 = MEMORY[0x277CC9578];
      v38 = v27;
    }

    sub_218C10540(v38, &qword_280EE9C40, v39);
  }

  else
  {
    sub_218C10540(v27, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_218C1023C(v17);
  }

  v44 = 0;
  v45 = 0;
  return v45 | v44;
}

uint64_t sub_218C0F050@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = MEMORY[0x277CC9578];
  sub_2186DD1E8(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v53 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - v14;
  v61 = MEMORY[0x277D84F98];
  v16 = OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_lastMagazineOpenDate;
  swift_beginAccess();
  sub_218C1059C(v2 + v16, v9, &qword_280EE9C40, v3);
  v54 = *(v11 + 48);
  v17 = v54(v9, 1, v10);
  v18 = MEMORY[0x277D839F8];
  if (v17 == 1)
  {
    sub_218C10540(v9, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v19 = MEMORY[0x277D84F98];
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    sub_219BDBC84();
    v60 = v18;
    *&v59 = v20 * 1000.0;
    sub_218751558(&v59, v58);
    v21 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v21;
    sub_21948CB08(v58, 0xD00000000000001DLL, 0x8000000219CEC450, isUniquelyReferenced_nonNull_native);
    (*(v11 + 8))(v15, v10);
    v19 = v57;
  }

  v23 = *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_churnPropensityLevel);
  v24 = MEMORY[0x277D83B88];
  v60 = MEMORY[0x277D83B88];
  *&v59 = v23;
  sub_218751558(&v59, v58);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v19;
  sub_21948CB08(v58, 0xD000000000000014, 0x8000000219CEC300, v25);
  v26 = v57;
  v27 = *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_followedNewsPlusChannelIDs);
  sub_2186D0C48(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v60 = v28;
  *&v59 = v27;
  sub_218751558(&v59, v58);

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v26;
  sub_21948CB08(v58, 0xD000000000000022, 0x8000000219CEC3E0, v29);
  v30 = v57;
  v31 = *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_trialEligibility);
  v60 = v24;
  *&v59 = v31;
  sub_218751558(&v59, v58);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v30;
  sub_21948CB08(v58, 0xD000000000000016, 0x8000000219CEC410, v32);
  v33 = v57;
  v34 = *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_familySharingSetupStatus);
  v60 = v24;
  *&v59 = v34;
  sub_218751558(&v59, v58);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v33;
  sub_21948CB08(v58, 0xD000000000000018, 0x8000000219CEC360, v35);
  v36 = v57;
  v61 = v57;
  v37 = *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingEligible);
  v38 = MEMORY[0x277D839B0];
  v39 = MEMORY[0x277D84F70];
  if (v37 == 2)
  {
    sub_2195EA4A0(0xD000000000000017, 0x8000000219CEC380, &v59);
    sub_218744D4C(&v59, &qword_280E8B4F0, v39 + 8, MEMORY[0x277D83D88], sub_2186D0C48);
  }

  else
  {
    v60 = MEMORY[0x277D839B0];
    LOBYTE(v59) = v37 & 1;
    sub_218751558(&v59, v58);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v36;
    sub_21948CB08(v58, 0xD000000000000017, 0x8000000219CEC380, v40);
    v61 = v57;
  }

  v41 = *(v2 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingOrganizer);
  v42 = MEMORY[0x277D839F8];
  if (v41 == 2)
  {
    sub_2195EA4A0(0xD000000000000018, 0x8000000219CEC3A0, &v59);
    sub_218744D4C(&v59, &qword_280E8B4F0, v39 + 8, MEMORY[0x277D83D88], sub_2186D0C48);
  }

  else
  {
    v60 = v38;
    LOBYTE(v59) = v41 & 1;
    sub_218751558(&v59, v58);
    v43 = v61;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v43;
    sub_21948CB08(v58, 0xD000000000000018, 0x8000000219CEC3A0, v44);
    v61 = v57;
  }

  v45 = OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_lastPuzzlePlayedDate;
  swift_beginAccess();
  sub_218C1059C(v2 + v45, v7, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v54(v7, 1, v10) == 1)
  {
    sub_218C10540(v7, &qword_280EE9C40, MEMORY[0x277CC9578]);
  }

  else
  {
    v46 = v53;
    (*(v11 + 32))(v53, v7, v10);
    sub_219BDBC84();
    v60 = v42;
    *&v59 = v47 * 1000.0;
    sub_218751558(&v59, v58);
    v48 = v61;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v48;
    sub_21948CB08(v58, 0xD00000000000001DLL, 0x8000000219CEC430, v49);
    (*(v11 + 8))(v46, v10);
    v61 = v56;
  }

  v50 = v55;
  sub_219BE52B4();
  v51 = sub_219BE52A4();
  return (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
}

uint64_t sub_218C0F7C4()
{

  v1 = OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_configuration;
  v2 = sub_219BE5244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = MEMORY[0x277CC9578];
  sub_218C10540(v0 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_lastMagazineOpenDate, &qword_280EE9C40, MEMORY[0x277CC9578]);

  sub_218C10540(v0 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_lastPuzzlePlayedDate, &qword_280EE9C40, v3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_218C0F8E0()
{
  sub_218C0F7C4();

  return swift_deallocClassInstance();
}

uint64_t sub_218C0F98C()
{
  v1 = [v0 possiblyUnfetchedAppConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 smarterMessagingConfig];
    swift_unknownObjectRelease();
    v3 = sub_218C102EC();
    if (sub_218C30D64([v2 lowChurnPropensitySegmentSetId], v3))
    {

      return 1;
    }

    else if (sub_218C30D64([v2 mediumChurnPropensitySegmentSetId], v3))
    {

      return 2;
    }

    else
    {
      v5 = sub_218C30D64([v2 highChurnPropensitySegmentSetId], v3);

      if (v5)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}