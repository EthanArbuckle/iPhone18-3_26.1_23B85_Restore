id DebugJournalSummaryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *DebugJournalSummaryView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifierLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifier;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifierLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifier;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v14 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusLabel;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v15 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_status;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v16 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusIndicator;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v17 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_moreDetailsButton;
  v18 = objc_opt_self();
  *&v4[v17] = [v18 buttonWithType_];
  v19 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapMoreDetails;
  sub_1D76E54C4();
  v21 = v20;
  *&v4[v19] = [objc_allocWithZone(v20) init];
  v22 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_buttonSeparator;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v23 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_reportIssueButton;
  *&v4[v23] = [v18 buttonWithType_];
  v24 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapReportIssue;
  *&v4[v24] = [objc_allocWithZone(v21) init];
  v25 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_topSeparator;
  *&v4[v25] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v26 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_bottomSeparator;
  *&v4[v26] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifierLabel];
  v29 = v27;
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  v30 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_moreDetailsButton;
  [v29 addSubview_];
  [v29 addSubview_];
  v31 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_reportIssueButton;
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  v32 = *&v29[v30];
  v33 = *&v29[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapMoreDetails];
  v34 = v32;
  sub_1D7704020();

  v35 = *&v29[v31];
  v36 = *&v29[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapReportIssue];
  v37 = v35;
  sub_1D7704020();

  return v29;
}

void sub_1D76E54C4()
{
  if (!qword_1EE0B0810)
  {
    v0 = sub_1D7704030();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0810);
    }
  }
}

id DebugJournalSummaryView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DebugJournalSummaryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s7NewsAds23DebugJournalSummaryViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifierLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifier;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifierLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifier;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_status;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusIndicator;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v8 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_moreDetailsButton;
  v9 = objc_opt_self();
  *(v0 + v8) = [v9 buttonWithType_];
  v10 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapMoreDetails;
  sub_1D76E54C4();
  v12 = v11;
  *(v0 + v10) = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_buttonSeparator;
  *(v0 + v13) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v14 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_reportIssueButton;
  *(v0 + v14) = [v9 buttonWithType_];
  v15 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapReportIssue;
  *(v0 + v15) = [objc_allocWithZone(v12) init];
  v16 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_topSeparator;
  *(v0 + v16) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v17 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_bottomSeparator;
  *(v0 + v17) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1D7704860();
  __break(1u);
}

uint64_t ANFComponentAdData.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v24[4] = *MEMORY[0x1E69E9840];
  sub_1D76E61B8(0, &qword_1EC9BDDF8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E5C2C();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76E5C80();
    sub_1D7704970();
    v22 = a2;
    v12 = v24[0];
    v11 = v24[1];
    v13 = objc_opt_self();
    v14 = sub_1D7702EF0();
    v24[0] = 0;
    v15 = [v13 JSONObjectWithData:v14 options:0 error:v24];

    if (v15)
    {
      v16 = v24[0];
      sub_1D77046C0();
      swift_unknownObjectRelease();
      sub_1D76E6154();
      if (swift_dynamicCast())
      {
        v17 = v23;
      }

      else
      {
        v17 = sub_1D7668218(MEMORY[0x1E69E7CC0]);
      }

      sub_1D769930C(v12, v11);
      v19 = v22;
      (*(v7 + 8))(v10, v6);
      *v19 = v17;
    }

    else
    {
      v18 = v24[0];
      sub_1D7702E70();

      swift_willThrow();
      sub_1D769930C(v12, v11);
      (*(v7 + 8))(v10, v6);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D76E5C2C()
{
  result = qword_1EC9BDE00;
  if (!qword_1EC9BDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE00);
  }

  return result;
}

unint64_t sub_1D76E5C80()
{
  result = qword_1EC9BDE08;
  if (!qword_1EC9BDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE08);
  }

  return result;
}

uint64_t ANFComponentAdData.encode(to:)(void *a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  sub_1D76E61B8(0, &qword_1EC9BDE18, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v18[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E5C2C();
  sub_1D7704B10();
  v8 = objc_opt_self();
  v9 = sub_1D7704190();
  v18[0] = 0;
  v10 = [v8 dataWithJSONObject:v9 options:0 error:v18];

  v11 = v18[0];
  if (v10)
  {
    v12 = sub_1D7702F00();
    v14 = v13;

    v18[0] = v12;
    v18[1] = v14;
    sub_1D76E621C();
    sub_1D7704A00();
    (*(v4 + 8))(v7, v3);
    return sub_1D769930C(v12, v14);
  }

  else
  {
    v16 = v11;
    sub_1D7702E70();

    swift_willThrow();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1D76E5F40()
{
  sub_1D7704AD0();
  sub_1D77042D0();
  return sub_1D7704AF0();
}

uint64_t sub_1D76E5FAC()
{
  sub_1D7704AD0();
  sub_1D77042D0();
  return sub_1D7704AF0();
}

uint64_t sub_1D76E5FFC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D77048E0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D76E6084@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D77048E0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D76E60DC(uint64_t a1)
{
  v2 = sub_1D76E5C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76E6118(uint64_t a1)
{
  v2 = sub_1D76E5C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D76E6154()
{
  if (!qword_1EC9BDE10)
  {
    v0 = sub_1D77041B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9BDE10);
    }
  }
}

void sub_1D76E61B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76E5C2C();
    v7 = a3(a1, &type metadata for ANFComponentAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76E621C()
{
  result = qword_1EC9BDE20;
  if (!qword_1EC9BDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE20);
  }

  return result;
}

unint64_t sub_1D76E6270(uint64_t a1)
{
  *(a1 + 8) = sub_1D76C99CC();
  result = sub_1D76C8B20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D76E62C4()
{
  result = qword_1EC9BDE28;
  if (!qword_1EC9BDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE28);
  }

  return result;
}

unint64_t sub_1D76E631C()
{
  result = qword_1EC9BDE30;
  if (!qword_1EC9BDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE30);
  }

  return result;
}

unint64_t sub_1D76E6374()
{
  result = qword_1EC9BDE38;
  if (!qword_1EC9BDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE38);
  }

  return result;
}

void *InterstitialAdViewManager.__allocating_init(adManager:adRequestStore:journal:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[9] = sub_1D7704170();
  sub_1D767FBE4(a1, (v6 + 2));
  v6[7] = a2;
  v6[8] = a3;
  return v6;
}

void *InterstitialAdViewManager.init(adManager:adRequestStore:journal:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3[9] = sub_1D7704170();
  sub_1D767FBE4(a1, (v3 + 2));
  v3[7] = a2;
  v3[8] = a3;
  return v3;
}

uint64_t InterstitialAdViewManager.generateInsertion(for:placementIdentifier:size:contentFetched:)(uint64_t a1, uint64_t a2, char *a3, void (*a4)(uint64_t *), uint64_t a5, double a6, double a7)
{
  v58 = a4;
  v59 = a5;
  v57 = a2;
  v51 = a1;
  v11 = *(*v7 + 96);
  v12 = *(*v7 + 104);
  v13 = *(*v7 + 120);
  v61 = *(*v7 + 80);
  v62 = v11;
  v63 = v12;
  v64 = v13;
  type metadata accessor for InterstitialViewInsertion();
  v14 = sub_1D7703680();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v49 - v16);
  v62 = v11;
  v63 = v12;
  v64 = v13;
  v18 = type metadata accessor for AdRequest();
  v56 = sub_1D77046B0();
  v53 = *(v56 - 8);
  v20 = MEMORY[0x1EEE9AC00](v56, v19);
  v52 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v49 - v24;
  v60 = v18;
  v26 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v23, v27);
  v29 = (&v49 - v28);
  v30 = sub_1D7704140();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = (&v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7669BD8();
  *v34 = sub_1D77045F0();
  (*(v31 + 104))(v34, *MEMORY[0x1E69E8020], v30);
  LOBYTE(v18) = sub_1D7704160();
  (*(v31 + 8))(v34, v30);
  if (v18)
  {
    v50 = v17;
    v17 = a3;
    if (qword_1EE0AF008 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_1D766DF6C();
  v35 = swift_allocObject();
  v49 = xmmword_1D7708FE0;
  *(v35 + 16) = xmmword_1D7708FE0;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D7668854();
  *(v35 + 64) = v36;
  v37 = v57;
  *(v35 + 32) = v57;
  *(v35 + 40) = v17;

  sub_1D77045A0();
  sub_1D7703ED0();

  LOBYTE(v61) = 0;
  AdRequestStore.request(for:behavior:)(v37, v17, &v61, v25);
  v38 = v60;
  if ((*(v26 + 48))(v25, 1, v60) == 1)
  {
    v53 = *(v53 + 8);
    (v53)(v25, v56);
    sub_1D7704590();
    v39 = swift_allocObject();
    *(v39 + 16) = v49;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = v36;
    *(v39 + 32) = v37;
    *(v39 + 40) = v17;

    sub_1D7703ED0();

    sub_1D76E6AF8();
    v40 = swift_allocError();
    *v41 = 1;
    v42 = v52;
    (*(v26 + 56))(v52, 1, 1, v60);
    Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v40, v42, v37, v17, 0, 0);
    (v53)(v42, v56);

    v43 = swift_allocError();
    *v44 = 1;
    v45 = v50;
    *v50 = v43;
    v46 = v55;
    swift_storeEnumTagMultiPayload();
    v58(v45);
    (*(v54 + 8))(v45, v46);
    return 0;
  }

  else
  {
    (*(v26 + 32))(v29, v25, v38);
    v48 = InterstitialAdViewManager.generateInsertion(for:request:size:contentFetched:)(v51, v29, v58, v59, a6, a7);
    (*(v26 + 8))(v29, v38);
    return v48;
  }
}

unint64_t sub_1D76E6AF8()
{
  result = qword_1EC9BDE40;
  if (!qword_1EC9BDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE40);
  }

  return result;
}

uint64_t InterstitialAdViewManager.generateInsertion(for:request:size:contentFetched:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v99 = a3;
  v100 = a4;
  v96 = a1;
  v11 = *v6;
  v12 = *v6;
  v109 = *(*v6 + 120);
  v13 = v109;
  v14 = *(v11 + 80);
  v94 = v12;
  v104 = *(v12 + 96);
  v107 = v14;
  v108 = v104;
  type metadata accessor for InterstitialViewInsertion();
  v90 = sub_1D7703680();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v15);
  v88 = &v78 - v16;
  v95 = v14;
  v107 = v14;
  v108 = v104;
  v17 = type metadata accessor for AdRequest();
  v87 = sub_1D77046B0();
  v86 = *(v87 - 8);
  v19 = MEMORY[0x1EEE9AC00](v87, v18);
  v85 = &v78 - v20;
  v97 = *(v17 - 8);
  v80 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v81 = &v78 - v22;
  v23 = *(v11 + 88);
  v24 = sub_1D77046B0();
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v79 = &v78 - v27;
  v101 = v23;
  v92 = *(v23 - 8);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v32);
  v91 = &v78 - v33;
  v98 = v17;
  v34 = *(v13 + 8);
  v93 = v104;
  v102 = v34();
  v103 = v35;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v36 = qword_1EE0AF010;
  sub_1D766DF6C();
  v83 = v37;
  v38 = swift_allocObject();
  v82 = xmmword_1D7708FD0;
  *(v38 + 16) = xmmword_1D7708FD0;
  v39 = a2;
  v41 = *a2;
  v40 = a2[1];
  v42 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v43 = sub_1D7668854();
  *(v38 + 32) = v41;
  *(v38 + 40) = v40;
  *(v38 + 96) = v42;
  *(v38 + 104) = v43;
  v44 = v102;
  v45 = v103;
  *(v38 + 64) = v43;
  *(v38 + 72) = v44;
  *(v38 + 80) = v45;

  sub_1D77045A0();
  v84 = v36;
  sub_1D7703ED0();

  v46 = v7[5];
  v47 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v46);
  v48 = *(v47 + 24);
  v94 = *(v94 + 112);
  v49 = v95;
  v48(v96, v39, v95, v101, v93, *(&v104 + 1), *(v94 + 8), v13, v46, v47);
  v50 = v13;
  v51 = v49;
  v52 = v92;
  v53 = v91;
  v54 = v101;
  (*(v92 + 32))(v91, v31, v101);
  v55 = v79;
  (*(v52 + 16))(v79, v53, v54);
  (*(v52 + 56))(v55, 0, 1, v54);
  v105 = v102;
  v106 = v103;
  swift_beginAccess();
  sub_1D77041B0();

  sub_1D77041D0();
  swift_endAccess();
  v56 = swift_allocObject();
  swift_weakInit();
  v57 = v97;
  v58 = *(v97 + 16);
  v59 = v81;
  v60 = v39;
  v96 = v50;
  v61 = v98;
  v58(v81, v60, v98);
  v62 = (*(v57 + 80) + 104) & ~*(v57 + 80);
  v63 = (v80 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  *&v65 = v51;
  *(&v65 + 1) = v54;
  v66 = v104;
  *(v64 + 16) = v65;
  *(v64 + 32) = v66;
  v67 = v94;
  v68 = v96;
  *(v64 + 48) = v94;
  *(v64 + 56) = v68;
  v69 = v99;
  v70 = v100;
  *(v64 + 64) = v56;
  *(v64 + 72) = v69;
  v72 = v102;
  v71 = v103;
  *(v64 + 80) = v70;
  *(v64 + 88) = v72;
  *(v64 + 96) = v71;
  (*(v57 + 32))(v64 + v62, v59, v61);
  v73 = (v64 + v63);
  *v73 = a5;
  v73[1] = a6;
  v74 = *(v67 + 16);

  v75 = v91;
  v76 = v74(sub_1D76E78E4, v64, v54, v67, a5, a6);

  (*(v92 + 8))(v75, v54);

  return v76;
}

uint64_t sub_1D76E748C(void *a1, uint64_t a2, int a3, double a4, double a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v58 = a2;
  v59 = a10;
  v57 = a9;
  LODWORD(v60) = a3;
  v61 = a1;
  *&v62 = a12;
  *(&v62 + 1) = a14;
  *&v63 = a15;
  *(&v63 + 1) = a17;
  v21 = type metadata accessor for AdRequest();
  v55 = *(v21 - 8);
  v56 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v51 - v23;
  v25 = sub_1D77046B0();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = v51 - v27;
  *&v62 = a12;
  *(&v62 + 1) = a14;
  *&v63 = a15;
  *(&v63 + 1) = a17;
  type metadata accessor for InterstitialViewInsertion();
  v29 = sub_1D7703680();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = (v51 - v32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v54 = a8;
    v53 = a7;
    if (v60)
    {
      v36 = v61;
      *v33 = v61;
      swift_storeEnumTagMultiPayload();
      v37 = v36;
    }

    else
    {
      v60 = v24;
      (*(*(a13 - 8) + 56))(v28, 1, 1, a13);
      v40 = v57;
      v41 = v59;
      v65 = v57;
      v66 = v59;
      swift_beginAccess();
      sub_1D77041B0();
      v52 = v29;
      v42 = v41;

      sub_1D77041D0();
      swift_endAccess();
      v51[1] = *(v35 + 64);
      v43 = v61;
      ObjectType = swift_getObjectType();
      v65 = v43;
      v45 = v58;
      v46 = (*(v58 + 8))(ObjectType, v58);
      v62 = 0u;
      v63 = 0u;
      v64 = 1;
      Journal.addFulfilledEntry(request:placementIdentifier:contentIdentifier:layout:)(a11, v40, v42, v46, v47, &v62);

      v48 = v60;
      (*(v55 + 16))(v60, a11, v56);
      v49 = v42;
      v29 = v52;
      sub_1D76A579C(v40, v49, v43, v45, v48, *(v35 + 64), v33, a4, a5);
      swift_storeEnumTagMultiPayload();

      sub_1D76E7CD4(v43);
    }

    v53(v33);
  }

  else
  {
    sub_1D76E6AF8();
    v38 = swift_allocError();
    *v39 = 0;
    *v33 = v38;
    swift_storeEnumTagMultiPayload();
    a7(v33);
  }

  return (*(v30 + 8))(v33, v29);
}

uint64_t sub_1D76E78E4(void *a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  v12 = *(v3 + 56);
  v13 = *(type metadata accessor for AdRequest() - 8);
  v14 = (*(v13 + 80) + 104) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D76E748C(a1, a2, a3 & 1, *(v3 + v15), *(v3 + v15 + 8), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), v3 + v14, v7, v8, v9, v10, v11, v12);
}

id InterstitialAdViewManager.view(for:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_1D7704140();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7669BD8();
  *v8 = sub_1D77045F0();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v9 = sub_1D7704160();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1EE0AF008 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D766DF6C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7708FD0;
  v11 = *(v3 + 120);
  v20 = *(v3 + 80);
  v21 = *(v3 + 96);
  v22 = v11;
  v12 = (a1 + *(type metadata accessor for InterstitialViewInsertion() + 60));
  v14 = *v12;
  v13 = v12[1];
  v15 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D7668854();
  *(v10 + 32) = v14;
  *(v10 + 40) = v13;
  v17 = *a1;
  v18 = a1[1];
  *(v10 + 96) = v15;
  *(v10 + 104) = v16;
  *(v10 + 64) = v16;
  *(v10 + 72) = v17;
  *(v10 + 80) = v18;

  sub_1D77045A0();
  sub_1D7703ED0();

  return a1[2];
}

uint64_t InterstitialAdViewManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t InterstitialAdViewManager.__deallocating_deinit()
{
  InterstitialAdViewManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D76E7CE8(uint64_t a1)
{
  v2 = sub_1D76E7EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76E7D24(uint64_t a1)
{
  v2 = sub_1D76E7EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CampaignAdData.encode(to:)(void *a1)
{
  sub_1D76E8084(0, &qword_1EC9BDE48, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E7EAC();
  sub_1D7704B10();
  sub_1D77049C0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D76E7EAC()
{
  result = qword_1EC9BDE50;
  if (!qword_1EC9BDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE50);
  }

  return result;
}

uint64_t CampaignAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D76E8084(0, &qword_1EC9BDE58, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E7EAC();
  sub_1D7704B00();
  if (!v2)
  {
    v11 = sub_1D7704930();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76E8084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76E7EAC();
    v7 = a3(a1, &type metadata for CampaignAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76E80E8(uint64_t a1)
{
  *(a1 + 8) = sub_1D76C9A20();
  result = sub_1D76C8B74();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D76E8130(void *a1)
{
  sub_1D76E8084(0, &qword_1EC9BDE48, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E7EAC();
  sub_1D7704B10();
  sub_1D77049C0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D76E82A0()
{
  result = qword_1EC9BDE60;
  if (!qword_1EC9BDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE60);
  }

  return result;
}

unint64_t sub_1D76E82F8()
{
  result = qword_1EC9BDE68;
  if (!qword_1EC9BDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE68);
  }

  return result;
}

unint64_t sub_1D76E8350()
{
  result = qword_1EC9BDE70;
  if (!qword_1EC9BDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE70);
  }

  return result;
}

char *ContentBannerAdProvider.adView(for:placementIdentifier:padding:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v17 = sub_1D7702FA0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v37[-2] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v8[7] + 16) == 1)
  {
    sub_1D7702F90();
    v22 = sub_1D7702F70();
    v24 = v23;
    (*(v18 + 8))(v21, v17);

    sub_1D7703140();

    v25 = *v37;

    sub_1D7703140();

    v26 = *v37;

    sub_1D7703140();

    HIBYTE(v36) = v37[0];
    v27 = objc_allocWithZone(type metadata accessor for DebugBannerAdView());
    return sub_1D7687E1C(v22, v24, &v36 + 7, v25, v26, a6, a7);
  }

  else
  {
    v29 = v8[5];
    v30 = v8[6];
    __swift_project_boxed_opaque_existential_1(v8 + 2, v29);
    v31 = *(v30 + 8);

    v32 = v31(v29, v30);
    v33 = [v32 promotedContentViewOfType:0 size:1 startsCollapsed:{a6, a7}];

    sub_1D7667C54(a3, v37);
    v34 = objc_allocWithZone(type metadata accessor for BannerAdMetricsView());
    v35 = sub_1D76C0778(a1, a2, v33, v37, a4, a5, a6, a7, a8);

    return v35;
  }
}

uint64_t ContentBannerAdProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t ContentBannerAdProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D76E86D4()
{
  v0 = sub_1D7702E10();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1D7702E50();
  swift_allocObject();
  sub_1D7702E40();
  sub_1D7702E00();
  sub_1D7702E20();
  v2 = sub_1D7702E30();

  return v2;
}

uint64_t InterstitialAdMetricsView.contentIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_contentIdentifier);

  return v1;
}

id InterstitialAdMetricsView.onCollapse.getter()
{
  v1 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void InterstitialAdMetricsView.onCollapse.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id InterstitialAdMetricsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InterstitialAdMetricsView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onLongPress;
  sub_1D76E9468(0, &qword_1EE0B0810, MEMORY[0x1E69D8770]);
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  sub_1D7704860();
  __break(1u);
}

Swift::Void __swiftcall InterstitialAdMetricsView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_metricsView];
  [v0 bounds];
  [v1 setFrame_];
}

Swift::Void __swiftcall InterstitialAdMetricsView.missedOpportunity()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_metricsView) promotedContentInfo];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D77037D0();

    [v3 missedOpportunity];

    swift_unknownObjectRelease();
  }
}

id InterstitialAdMetricsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InterstitialAdMetricsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D76E8DE0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_contentIdentifier);

  return v1;
}

id sub_1D76E8E34()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

id sub_1D76E8E8C()
{
  result = [*(*v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_metricsView) promotedContentInfo];
  if (result)
  {
    v2 = result;
    v3 = sub_1D77037D0();

    [v3 missedOpportunity];

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1D76E8F7C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D76E9468(0, &qword_1EE0B0818, MEMORY[0x1E69D8768]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v40 - v9;
  v11 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onLongPress;
  sub_1D76E9468(0, &qword_1EE0B0810, MEMORY[0x1E69D8770]);
  v13 = v12;
  *&v2[v11] = [objc_allocWithZone(v12) init];
  v14 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  *&v2[v14] = [objc_allocWithZone(v13) init];
  v15 = [a1 promotedContentInfo];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D77037A0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = &v2[OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_contentIdentifier];
  *v20 = v17;
  v20[1] = v19;
  *&v2[OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_metricsView] = a1;
  v21 = a1;
  [v21 frame];
  v40.receiver = v2;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, sel_initWithFrame_);
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 clearColor];
  [v24 setBackgroundColor_];

  v26 = v21;
  v27 = [v23 clearColor];
  [v26 setBackgroundColor_];

  sub_1D7703DC0();
  [v24 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v26 setFrame_];
  [v24 addSubview_];
  v36 = *&v24[OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onLongPress];
  (*(v7 + 104))(v10, *MEMORY[0x1E69D8760], v6);
  v37 = v36;
  v38 = sub_1D7704010();

  (*(v7 + 8))(v10, v6);
  return v24;
}

void _s7NewsAds25InterstitialAdMetricsViewC07metricsF9Collapsedyy17PromotedContentUI0eF0CF_0()
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766DF6C();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7708FE0;
  v3 = *(v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_contentIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_contentIdentifier + 8);
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1D7668854();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;

  sub_1D77045A0();
  sub_1D7703ED0();

  v4 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  swift_beginAccess();
  v5 = *(v0 + v4);
  MEMORY[0x1DA6FEDD0]();
}

void sub_1D76E9468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t InterstitialAdPlacement.desiredPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D77038B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InterstitialAdPlacement.placementIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for InterstitialAdPlacement() + 20));

  return v1;
}

uint64_t InterstitialAdPlacement.insertionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InterstitialAdPlacement();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t InterstitialAdPlacement.init(placementIdentifier:boundingSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for InterstitialAdPlacement();
  *(a3 + v10[6]) = 0;
  *a3 = 1;
  v11 = *MEMORY[0x1E69C6010];
  v12 = sub_1D77038B0();
  result = (*(*(v12 - 8) + 104))(a3, v11, v12);
  v14 = (a3 + v10[5]);
  *v14 = a1;
  v14[1] = a2;
  v15 = (a3 + v10[7]);
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t sub_1D76E9688(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_1D76E96C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D77038B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_1D76E9760()
{
  v1 = sub_1D7703F10();
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v57 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v63 = (&v54 - v7);
  MEMORY[0x1EEE9AC00](v6, v8);
  v11 = (&v54 - v10);
  v12 = v0[14];
  v13 = v0[17];
  v56 = v0[16];
  v14 = *(v13 + 16);
  v59 = v1;
  v64 = v9;
  v55 = v12;
  if (v14)
  {
    v15 = v13 + 32;
    v62 = *MEMORY[0x1E69D7950];
    v60 = (v9 + 104);
    v61 = v9 + 32;
    v58 = 0x80000001D7719680;

    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D76EA92C(v15, v70);
      sub_1D76EA92C(v70, v68);
      if (v69)
      {
        v17 = *&v68[0];
        v18 = swift_allocObject();
        v65[0] = v17;
        v19 = sub_1D76A6440();

        sub_1D76734D4(0, &qword_1EC9BE1F0, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry, MEMORY[0x1E69E62F8]);
        v18[5] = v20;
        v21 = sub_1D76EAAC4(&qword_1EC9BDEC8, &qword_1EC9BE1F0, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry, sub_1D76EA964);
        v18[2] = v19;
        v18[6] = v21;
        v18[7] = 0xD00000000000001BLL;
        v18[8] = v58;
        *v63 = v18;
        (*v60)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D768CAEC(0, v16[2] + 1, 1, v16);
        }

        v23 = v16[2];
        v22 = v16[3];
        if (v23 >= v22 >> 1)
        {
          v16 = sub_1D768CAEC(v22 > 1, v23 + 1, 1, v16);
        }

        sub_1D76EA9B8(v70);
        v16[2] = v23 + 1;
        (*(v64 + 32))(v16 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v23, v63, v1);
      }

      else
      {
        sub_1D7667CB8(v68, v65);
        v24 = swift_allocObject();
        v25 = v66;
        v26 = v67;
        v27 = __swift_project_boxed_opaque_existential_1(v65, v66);
        v24[5] = v25;
        v28 = *(v26 + 32);
        v1 = v59;
        v24[6] = v28;
        boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v24 + 2);
        (*(*(v25 - 8) + 16))(boxed_opaque_existential_2, v27, v25);
        v24[7] = 0x65746E6F632D6461;
        v24[8] = 0xEA00000000007478;
        *v11 = v24;
        (*v60)(v11, v62, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D768CAEC(0, v16[2] + 1, 1, v16);
        }

        v31 = v16[2];
        v30 = v16[3];
        if (v31 >= v30 >> 1)
        {
          v16 = sub_1D768CAEC(v30 > 1, v31 + 1, 1, v16);
        }

        sub_1D76EA9B8(v70);
        v16[2] = v31 + 1;
        (*(v64 + 32))(v16 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v31, v11, v1);
        __swift_destroy_boxed_opaque_existential_1(v65);
      }

      v15 += 48;
      --v14;
    }

    while (v14);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7672D94(0, &qword_1EC9BD198, &qword_1EC9BD1A0, MEMORY[0x1E69E62F8], MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7708FE0;
  v33 = v56;
  *(v32 + 32) = v55;
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = (v33 + 32);
    do
    {
      v70[0] = *v35;
      v36 = v35[1];
      v37 = v35[2];
      v38 = v35[4];
      v70[3] = v35[3];
      v70[4] = v38;
      v70[1] = v36;
      v70[2] = v37;
      v39 = v35[5];
      v40 = v35[6];
      v41 = v35[8];
      v71 = v35[7];
      v72 = v41;
      v70[5] = v39;
      v70[6] = v40;
      v42 = v71;
      sub_1D766D644(v70, v68);
      v43 = *(v32 + 16);
      v44 = *(v32 + 24);

      if (v43 >= v44 >> 1)
      {
        v32 = sub_1D768CD14((v44 > 1), v43 + 1, 1, v32);
      }

      *(v32 + 16) = v43 + 1;
      *(v32 + 8 * v43 + 32) = v42;
      sub_1D76950E4(v70);
      v35 += 9;
      --v34;
    }

    while (v34);
  }

  v45 = swift_allocObject();
  sub_1D7672D94(0, &qword_1EC9BDED0, &qword_1EC9BD1A0, MEMORY[0x1E69E62F8], MEMORY[0x1E69E62F8]);
  v45[5] = v46;
  v47 = sub_1D76EA9E8();
  v45[2] = v32;
  v45[6] = v47;
  v45[7] = 0x6E72756F6A2D6461;
  v45[8] = 0xEA00000000006C61;
  v48 = v57;
  *v57 = v45;
  v49 = v64;
  v50 = v59;
  (*(v64 + 104))(v48, *MEMORY[0x1E69D7950], v59);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1D768CAEC(0, v16[2] + 1, 1, v16);
  }

  v52 = v16[2];
  v51 = v16[3];
  if (v52 >= v51 >> 1)
  {
    v16 = sub_1D768CAEC(v51 > 1, v52 + 1, 1, v16);
  }

  v16[2] = v52 + 1;
  (*(v49 + 32))(v16 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v52, v48, v50);

  return v16;
}

uint64_t DebugJournal.Summary.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DebugJournal.Summary.contentIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t DebugJournal.Summary.status.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D7672A08(v2);
}

uint64_t DebugJournal.Detail.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DebugJournal.Detail.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D76E9F1C()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1D76E9F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1D7704A30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7704A30();

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

uint64_t sub_1D76EA01C(uint64_t a1)
{
  v2 = sub_1D76EA214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76EA058(uint64_t a1)
{
  v2 = sub_1D76EA214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DebugJournal.Detail.encode(to:)(void *a1)
{
  sub_1D76EA478(0, &qword_1EC9BDE98, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76EA214();
  sub_1D7704B10();
  v14 = 0;
  v10 = v12[3];
  sub_1D77049C0();
  if (!v10)
  {
    v13 = 1;
    sub_1D77049C0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D76EA214()
{
  result = qword_1EC9BDEA0;
  if (!qword_1EC9BDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEA0);
  }

  return result;
}

uint64_t DebugJournal.Detail.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D76EA478(0, &qword_1EC9BDEA8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76EA214();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D7704930();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D7704930();
  v16 = v15;
  (*(v7 + 8))(v10, v6);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76EA478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76EA214();
    v7 = a3(a1, &type metadata for DebugJournal.Detail.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t DebugJournal.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DebugJournal.summary.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v4 = v1[4];
  v8 = v1[3];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D76EA57C(v7, &v6);
}

uint64_t DebugJournal.title.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t DebugJournal.subtitle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1D76EA658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D76EA6A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D76EA754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76EA790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D76EA7DC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1D76EA828()
{
  result = qword_1EC9BDEB0;
  if (!qword_1EC9BDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEB0);
  }

  return result;
}

unint64_t sub_1D76EA880()
{
  result = qword_1EC9BDEB8;
  if (!qword_1EC9BDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEB8);
  }

  return result;
}

unint64_t sub_1D76EA8D8()
{
  result = qword_1EC9BDEC0;
  if (!qword_1EC9BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEC0);
  }

  return result;
}

unint64_t sub_1D76EA964()
{
  result = qword_1EC9BE210;
  if (!qword_1EC9BE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE210);
  }

  return result;
}

unint64_t sub_1D76EA9E8()
{
  result = qword_1EC9BDED8;
  if (!qword_1EC9BDED8)
  {
    sub_1D7672D94(255, &qword_1EC9BDED0, &qword_1EC9BD1A0, MEMORY[0x1E69E62F8], MEMORY[0x1E69E62F8]);
    sub_1D76EAAC4(&qword_1EC9BDEE0, &qword_1EC9BD1A0, &type metadata for DebugJournal.Detail, sub_1D76EAB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDED8);
  }

  return result;
}

uint64_t sub_1D76EAAC4(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D76734D4(255, a2, a3, MEMORY[0x1E69E62F8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D76EAB50()
{
  result = qword_1EC9BDEE8;
  if (!qword_1EC9BDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEE8);
  }

  return result;
}

double sub_1D76EABA4(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t BannerAdViewManager.__allocating_init(adManager:requestStore:layoutStore:journal:tracker:host:)(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  BannerAdViewManager.init(adManager:requestStore:layoutStore:journal:tracker:host:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t BannerAdViewManager.init(adManager:requestStore:layoutStore:journal:tracker:host:)(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v15 = *a6;
  v12 = *(a6 + 2);
  v13 = *(a6 + 3);
  type metadata accessor for DisposableObserver();
  *(v6 + 184) = sub_1D7704440();
  *(v6 + 192) = sub_1D766E844(MEMORY[0x1E69E7CC0]);
  sub_1D7667CB8(a1, v6 + 16);
  *(v6 + 56) = a2;
  sub_1D7667CB8(a3, v6 + 64);
  *(v6 + 104) = a4;
  sub_1D7667CB8(a5, v6 + 112);
  *(v6 + 152) = v15;
  *(v6 + 168) = v12;
  *(v6 + 176) = v13;
  return v6;
}

char *BannerAdViewManager.view(for:model:size:position:padding:)(void *a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v205 = a1;
  v15 = *v7;
  v16 = *(*v7 + 104);
  v193 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1, a2);
  v182 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v180 = &v168 - v21;
  v23 = *(v22 + 88);
  v175 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v20, v24);
  ObjectType = &v168 - v25;
  v27 = v26[10];
  v28 = v26[12];
  v29 = *(v26 + 14);
  v30 = *(v26 + 16);
  v194 = v27;
  v195 = v28;
  v209 = v27;
  v210 = v28;
  v196 = v30;
  v197 = v29;
  v211 = v29;
  v212 = v30;
  v31 = type metadata accessor for AdRequest();
  v32 = sub_1D77046B0();
  v199 = *(v32 - 8);
  v200 = v32;
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v178 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  *&v201 = &v168 - v38;
  v203 = v31;
  v204 = *(v31 - 8);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v181 = &v168 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v179 = &v168 - v44;
  v176 = v45;
  MEMORY[0x1EEE9AC00](v43, v46);
  v202 = (&v168 - v47);
  v48 = sub_1D7704140();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v50);
  v52 = (&v168 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7669BD8();
  *v52 = sub_1D77045F0();
  (*(v49 + 104))(v52, *MEMORY[0x1E69E8020], v48);
  LOBYTE(v31) = sub_1D7704160();
  (*(v49 + 8))(v52, v48);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v184 = v15;
  v53 = *(v15 + 136);
  (*(v53 + 8))(&v209, v16, v53);
  v54 = v209;
  v48 = *&v210;

  sub_1D766E6D8(&v209);
  swift_beginAccess();
  v55 = *(v8 + 24);
  if (!*(v55 + 16) || (v56 = sub_1D76689AC(*&v54, v48), (v57 & 1) == 0))
  {
    v171 = v53;
    v172 = a2;
    v183 = v23;
    v173 = v16;
    v206 = v54;
    swift_endAccess();
    if (qword_1EE0AF008 == -1)
    {
LABEL_9:
      v71 = qword_1EE0AF010;
      sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v189 = v72;
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1D7709050;
      v74 = MEMORY[0x1E69E6158];
      *(v73 + 56) = MEMORY[0x1E69E6158];
      v75 = sub_1D7668854();
      v76 = v205;
      *(v73 + 32) = v206;
      *(v73 + 40) = v48;
      v77 = v76[2];
      v78 = v76[3];
      *(v73 + 96) = v74;
      *(v73 + 104) = v75;
      v79 = v75;
      *(v73 + 64) = v75;
      *(v73 + 72) = v77;
      v190 = v77;
      v191 = v78;
      *(v73 + 80) = v78;
      v80 = v8[19];
      v81 = v8[20];
      v82 = v48;
      v84 = *(v8 + 21);
      v83 = *(v8 + 22);
      v186 = v80;
      v187 = v81;
      v174 = v84;
      v192 = v83;
      if (v83)
      {
        v209 = v80;
        v210 = v81;

        MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
        MEMORY[0x1DA6FF0D0](v84, v83);
        MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
        v85 = v209;
        v81 = v210;
      }

      else
      {
        v86 = v80;

        v85 = v86;
      }

      v87 = v82;
      v88 = MEMORY[0x1E69E6158];
      *(v73 + 136) = MEMORY[0x1E69E6158];
      *(v73 + 144) = v79;
      *(v73 + 112) = v85;
      *(v73 + 120) = v81;
      sub_1D77045A0();
      v188 = v71;
      sub_1D7703ED0();

      LOBYTE(v209) = 0;
      v89 = *&v201;
      v90 = v206;
      AdRequestStore.request(for:behavior:)(*&v206, v87, &v209, *&v201);
      v92 = v203;
      v91 = v204;
      if ((*(v204 + 48))(v89, 1, v203) == 1)
      {

        (*(v199 + 1))(v89, v200);
        *&v164 = 0.0;
      }

      else
      {
        v169 = *(v91 + 32);
        v170 = v91 + 32;
        v169(v202, v89, v92);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1D7709060;
        *(v93 + 56) = v88;
        *(v93 + 64) = v79;
        *(v93 + 32) = v90;
        *(v93 + 40) = v87;
        *(v93 + 96) = v88;
        *(v93 + 104) = v79;
        v94 = v191;
        *(v93 + 72) = v190;
        *(v93 + 80) = v94;
        v209 = a3;
        v210 = a4;
        type metadata accessor for CGSize(0);
        v198 = v87;

        v95 = sub_1D77042B0();
        *(v93 + 136) = v88;
        *(v93 + 144) = v79;
        *(v93 + 112) = v95;
        *(v93 + 120) = v96;
        v209 = a5;
        v210 = a6;
        type metadata accessor for CGPoint(0);
        v97 = sub_1D77042B0();
        *(v93 + 176) = v88;
        *(v93 + 184) = v79;
        *(v93 + 152) = v97;
        *(v93 + 160) = v98;
        v99 = v192;
        if (v192)
        {
          v209 = v186;
          v210 = v187;

          MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
          MEMORY[0x1DA6FF0D0](v174, v99);
          MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
          v100 = v209;
          v101 = v210;
        }

        else
        {
          *&v102 = COERCE_DOUBLE();
          v100 = v186;
          v101 = *&v102;
        }

        v103 = v184;
        *(v93 + 216) = v88;
        *(v93 + 224) = v79;
        *(v93 + 192) = v100;
        *(v93 + 200) = v101;
        sub_1D77045A0();
        sub_1D7703ED0();

        v104 = *(v8 + 5);
        v105 = *(v8 + 6);
        __swift_project_boxed_opaque_existential_1(v8 + 2, v104);
        v106 = *(v103 + 120);
        v107 = ObjectType;
        v108 = v202;
        (*(v105 + 24))(v205, v202, COERCE_DOUBLE(*&v194), v183, COERCE_DOUBLE(*&v195), v197, *(v106 + 8), v196, v104, v105);
        v184 = v79;
        v168 = v106;
        v109 = *(v106 + 16);
        v110 = v206;
        v111 = v198;
        v112 = v183;
        *&v113 = COERCE_DOUBLE(v109(*&v206, v198, v8 + 14, a5, a6, a3, a4, a7));
        v115 = v114;
        (*(v175 + 8))(v107, v112);
        v116 = CACurrentMediaTime();
        v201 = *&v113;
        ObjectType = swift_getObjectType();
        v209 = *&v113;
        v117 = *(v115 + 8);
        v200 = v115;
        v118 = v117(ObjectType, v115);
        v119 = v108;
        Journal.addRequestedEntry(request:placementIdentifier:contentIdentifier:)(v108, *&v110, v111, v118, v120);

        v178 = swift_allocObject();
        swift_weakInit();
        v175 = swift_allocObject();
        *(v175 + 24) = v115;
        swift_unknownObjectWeakInit();
        v121 = *(v193 + 16);
        v122 = v180;
        v121(v180, v172, v173);
        v123 = v203;
        v124 = v119;
        v125 = v204;
        v126 = *(v204 + 16);
        v127 = v179;
        v126(v179, v124, v203);
        v128 = v122;
        v129 = v173;
        v121(v182, v128, v173);
        v126(v181, v127, v123);
        v130 = v193;
        v131 = (*(v193 + 80) + 96) & ~*(v193 + 80);
        v132 = (v177 + *(v125 + 80) + v131) & ~*(v125 + 80);
        v176 = (v176 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
        v199 = ((v176 + 23) & 0xFFFFFFFFFFFFFFF8);
        v177 = (v199 + 15) & 0xFFFFFFFFFFFFFFF8;
        v172 = (v177 + 15) & 0xFFFFFFFFFFFFFFF8;
        v133 = swift_allocObject();
        *&v134 = v194;
        *&v135 = v195;
        *(&v134 + 1) = v183;
        *(&v135 + 1) = v129;
        *(v133 + 16) = v134;
        *(v133 + 32) = v135;
        v136 = v168;
        *(v133 + 48) = v197;
        *(v133 + 56) = v136;
        v137 = v200;
        v138 = v171;
        *(v133 + 64) = v196;
        *(v133 + 72) = v138;
        v139 = v178;
        v140 = v175;
        *(v133 + 80) = v178;
        *(v133 + 88) = v140;
        (*(v130 + 32))(v133 + v131, v180, v129);
        v169((v133 + v132), v179, v203);
        v141 = (v133 + v176);
        v142 = v205;
        v143 = v198;
        *v141 = v206;
        *(v141 + 1) = v143;
        *&v199[v133] = v142;
        *(v133 + v177) = v116;
        v144 = (v133 + v172);
        *v144 = a5;
        v144[1] = a6;
        v145 = *&v201;
        v209 = v201;
        v197 = *(v137 + 24);
        v146 = v197;

        v199 = v145;

        v146(ObjectType, v137);
        sub_1D7703480();

        v207 = v208;
        v147 = v173;
        v148 = v139;
        v149 = v181;
        v150 = v182;
        sub_1D76EC150(&v207, v116, a5, a6, v148, v140, v182, v181, *&v206, v198, v205);

        sub_1D7689A20(v207);
        v151 = *(v204 + 8);
        v204 += 8;
        v205 = v151;
        (v151)(v149, v203);
        (*(v193 + 8))(v150, v147);
        v208 = v199;
        v197(ObjectType, v137);
        v152 = swift_allocObject();
        *(v152 + 16) = sub_1D76EDD80;
        *(v152 + 24) = v133;
        v197 = v133;

        sub_1D7703490();

        __swift_project_boxed_opaque_existential_1(&v209, v212);
        sub_1D7703330();
        __swift_destroy_boxed_opaque_existential_1(&v209);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_1D7709070;
        v154 = MEMORY[0x1E69E6158];
        v155 = v184;
        *(v153 + 56) = MEMORY[0x1E69E6158];
        *(v153 + 64) = v155;
        v156 = v198;
        *(v153 + 32) = v206;
        *(v153 + 40) = v156;
        *(v153 + 96) = v154;
        *(v153 + 104) = v155;
        v157 = v191;
        *(v153 + 72) = v190;
        *(v153 + 80) = v157;
        v158 = *v202;
        v159 = v202[1];
        *(v153 + 136) = v154;
        *(v153 + 144) = v155;
        *(v153 + 112) = v158;
        *(v153 + 120) = v159;
        v160 = v192;
        if (v192)
        {
          v209 = v186;
          v210 = v187;

          MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
          MEMORY[0x1DA6FF0D0](v174, v160);
          MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
          v161 = v209;
          v162 = v210;
        }

        else
        {

          v162 = v187;

          v161 = v186;
        }

        *(v153 + 176) = v154;
        *(v153 + 184) = v155;
        *(v153 + 152) = v161;
        *(v153 + 160) = v162;
        sub_1D77045A0();
        sub_1D7703ED0();

        swift_beginAccess();
        v166 = v199;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v208 = *(v8 + 24);
        v8[24] = -0.0;
        sub_1D76CC354(v166, v137, *&v206, v198, isUniquelyReferenced_nonNull_native);

        *(v8 + 24) = v208;
        swift_endAccess();

        (v205)(v202, v203);
        *&v164 = v201;
      }

      return v164;
    }

LABEL_25:
    swift_once();
    goto LABEL_9;
  }

  v58 = v205;
  v59 = *(v55 + 56) + 16 * v56;
  v60 = *v59;
  v200 = *(v59 + 8);
  swift_endAccess();
  v61 = qword_1EE0AF008;
  v201 = COERCE_DOUBLE(v60);
  if (v61 != -1)
  {
    swift_once();
  }

  sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1D7709050;
  v63 = MEMORY[0x1E69E6158];
  *(v62 + 56) = MEMORY[0x1E69E6158];
  v64 = sub_1D7668854();
  *(v62 + 32) = v54;
  *(v62 + 40) = v48;
  v66 = v58[2];
  v65 = v58[3];
  *(v62 + 96) = v63;
  *(v62 + 104) = v64;
  *(v62 + 64) = v64;
  *(v62 + 72) = v66;
  *(v62 + 80) = v65;
  v68 = v8[19];
  v67 = v8[20];
  v69 = *(v8 + 22);
  if (v69)
  {
    v70 = *(v8 + 21);
    v209 = v68;
    v210 = v67;

    MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
    MEMORY[0x1DA6FF0D0](v70, v69);
    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
    v68 = v209;
    v67 = v210;
  }

  else
  {
  }

  *&v164 = v201;
  *(v62 + 136) = v63;
  *(v62 + 144) = v64;
  *(v62 + 112) = v68;
  *(v62 + 120) = v67;
  sub_1D77045A0();
  sub_1D7703ED0();

  v163 = swift_getObjectType();
  v209 = *&v164;
  (*(v200 + 48))(v163, v200, a5, a6, a3, a4);
  return v164;
}

uint64_t sub_1D76EC150(uint64_t *a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void (*a9)(void, void), uint64_t a10, void *a11)
{
  v155 = a10;
  v156 = a9;
  v154 = a7;
  v18 = *a11;
  v19 = *(*a11 + 128);
  *&v159[0] = *(*a11 + 88);
  *(v159 + 8) = *(v18 + 104);
  *(&v159[1] + 1) = v19;
  v20 = type metadata accessor for AdRequest();
  v21 = sub_1D77046B0();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v139 - v24;
  v26 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = result;
    v153 = a8;
    v152 = v20;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      if (v26)
      {
        v31 = *(a6 + 24);
        v151 = v22;
        v150 = v25;
        if (v26 == 1)
        {
          v147 = v31;
          if (qword_1EE0AF008 != -1)
          {
            swift_once();
          }

          v148 = qword_1EE0AF010;
          sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v145 = v44;
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1D77091E0;
          v46 = MEMORY[0x1E69E6158];
          *(v45 + 56) = MEMORY[0x1E69E6158];
          v47 = sub_1D7668854();
          v48 = v155;
          *(v45 + 32) = v156;
          *(v45 + 40) = v48;
          v49 = a11[2];
          v50 = a11[3];
          *(v45 + 96) = v46;
          *(v45 + 104) = v47;
          *(v45 + 64) = v47;
          *(v45 + 72) = v49;
          v143 = v49;
          *(v45 + 80) = v50;
          v51 = *v153;
          v52 = v153[1];
          *(v45 + 136) = v46;
          *(v45 + 144) = v47;
          *(v45 + 112) = v51;
          *(v45 + 120) = v52;
          *&v159[0] = 0;
          *(&v159[0] + 1) = 0xE000000000000000;
          ObjectType = swift_getObjectType();

          v144 = v50;

          [v30 frame];
          v158[0] = v53;
          v158[1] = v54;
          type metadata accessor for CGSize(0);
          sub_1D7704850();
          v55 = v159[0];
          *(v45 + 176) = v46;
          *(v45 + 184) = v47;
          *(v45 + 152) = v55;
          v56 = CACurrentMediaTime();
          v57 = MEMORY[0x1E69E6438];
          *(v45 + 216) = MEMORY[0x1E69E63B0];
          *(v45 + 224) = v57;
          *(v45 + 192) = (v56 - a2) * 1000.0;
          v59 = v28[19];
          v58 = v28[20];
          v60 = v28[22];
          if (v60)
          {
            v61 = v30;
            v62 = v28[21];
            *&v159[0] = v28[19];
            *(&v159[0] + 1) = v58;

            MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
            v63 = v62;
            v30 = v61;
            MEMORY[0x1DA6FF0D0](v63, v60);
            MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
            v64 = *(&v159[0] + 1);
            v59 = *&v159[0];
          }

          else
          {
          }

          v140 = v47;
          *(v45 + 256) = v46;
          *(v45 + 264) = v47;
          *(v45 + 232) = v59;
          *(v45 + 240) = v64;
          sub_1D77045A0();
          sub_1D7703ED0();

          [v30 frame];
          v80 = v79;
          v82 = v81;
          *&v159[0] = v30;
          v83 = v147;
          v84 = *(v147 + 40);
          v85 = ObjectType;
          v86 = v84(ObjectType, v147);
          v158[0] = v30;
          v84(v85, v83);
          v88 = v87;
          v89 = v28[11];
          v90 = v28[12];
          __swift_project_boxed_opaque_existential_1(v28 + 8, v89);
          *&v159[0] = v80;
          *(&v159[0] + 1) = v82;
          *&v159[1] = v86;
          *(&v159[1] + 1) = v88;
          v91 = v156;
          v92 = v155;
          (*(v90 + 16))(v159, v156, v155, v89, v90);
          [v30 frame];
          v94 = v93;
          v96 = v95;
          v158[0] = v30;
          v97 = *(v83 + 8);
          v142 = v83 + 8;
          v141 = v97;
          v98 = v97(v85, v83);
          *v159 = a3;
          *(v159 + 1) = a4;
          *&v159[1] = v94;
          *(&v159[1] + 1) = v96;
          LOBYTE(v159[2]) = 0;
          Journal.addFulfilledEntry(request:placementIdentifier:contentIdentifier:layout:)(v153, v91, v92, v98, v99, v159);

          v157 = v30;
          (*(v83 + 16))(v159, v85, v83);
          if (*(&v159[1] + 1))
          {
            sub_1D7667CB8(v159, v158);
            v100 = v152;
            v101 = *(v152 - 8);
            v102 = v150;
            (*(v101 + 16))(v150, v153, v152);
            (*(v101 + 56))(v102, 0, 1, v100);
            sub_1D7667C54(v158, v159);
            v160 = 0;
            sub_1D76ED3A8(v154, v102, v159);

            sub_1D766E72C(v159);
            (*(v151 + 8))(v102, v21);
            return __swift_destroy_boxed_opaque_existential_1(v158);
          }

          else
          {
            sub_1D7689730(v159);
            sub_1D7704590();
            v103 = swift_allocObject();
            *(v103 + 16) = xmmword_1D7708FD0;
            v104 = MEMORY[0x1E69E6158];
            v105 = v140;
            *(v103 + 56) = MEMORY[0x1E69E6158];
            *(v103 + 64) = v105;
            *(v103 + 32) = v91;
            *(v103 + 40) = v155;
            *(v103 + 96) = v104;
            *(v103 + 104) = v105;
            v106 = v144;
            *(v103 + 72) = v143;
            *(v103 + 80) = v106;

            sub_1D7703ED0();

            v145 = v28[13];
            sub_1D769D8F0();
            v140 = swift_allocError();
            *v107 = 0;
            *(v107 + 8) = 1;
            v108 = v152;
            v109 = *(v152 - 8);
            v110 = v30;
            v149 = v30;
            v148 = v21;
            v144 = *(v109 + 16);
            v111 = v91;
            v112 = v150;
            v113 = v153;
            v144(v150, v153, v152);
            v143 = *(v109 + 56);
            v143(v112, 0, 1, v108);
            *&v159[0] = v110;
            v114 = v141(ObjectType, v83);
            v115 = v140;
            Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v140, v112, v111, v155, v114, v116);

            v156 = *(v151 + 8);
            v117 = v148;
            v156(v112, v148);

            v144(v112, v113, v108);
            v143(v112, 0, 1, v108);
            memset(v159, 0, sizeof(v159));
            v160 = 1;
            sub_1D76ED3A8(v154, v112, v159);

            sub_1D766E72C(v159);
            return (v156)(v112, v117);
          }
        }

        else
        {
          v149 = Strong;
          if (v26 == 2)
          {
            if (qword_1EE0AF008 != -1)
            {
              swift_once();
            }

            v147 = qword_1EE0AF010;
            LODWORD(ObjectType) = sub_1D7704590();
            sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v32 = swift_allocObject();
            *(v32 + 16) = xmmword_1D7709050;
            v33 = MEMORY[0x1E69E6158];
            *(v32 + 56) = MEMORY[0x1E69E6158];
            v34 = sub_1D7668854();
            v35 = v155;
            *(v32 + 32) = v156;
            *(v32 + 40) = v35;
            v36 = a11[2];
            v37 = a11[3];
            *(v32 + 96) = v33;
            *(v32 + 104) = v34;
            *(v32 + 64) = v34;
            *(v32 + 72) = v36;
            *(v32 + 80) = v37;
            v39 = v28[19];
            v38 = v28[20];
            v40 = v28[22];
            if (v40)
            {
              v148 = v21;
              v41 = v28[21];
              *&v159[0] = v39;
              *(&v159[0] + 1) = v38;
              v42 = v35;

              MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
              v43 = v41;
              v21 = v148;
              MEMORY[0x1DA6FF0D0](v43, v40);
              MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
              v38 = *(&v159[0] + 1);
              v39 = *&v159[0];
            }

            else
            {
              v42 = v35;
            }

            *(v32 + 136) = MEMORY[0x1E69E6158];
            *(v32 + 144) = v34;
            *(v32 + 112) = v39;
            *(v32 + 120) = v38;
            sub_1D7703ED0();

            v118 = v149;
            v119 = swift_getObjectType();
            [v118 frame];
            v121 = v120;
            v123 = v122;
            v158[0] = v118;
            v124 = (*(v31 + 8))(v119, v31);
            *v159 = a3;
            *(v159 + 1) = a4;
            *&v159[1] = v121;
            *(&v159[1] + 1) = v123;
            LOBYTE(v159[2]) = 0;
            v125 = v153;
            Journal.addCollapsedEntry(request:placementIdentifier:contentIdentifier:layout:)(v153, v156, v42, v124, v126, v159);

            v127 = v152;
            v128 = *(v152 - 8);
            v129 = v150;
            (*(v128 + 16))(v150, v125, v152);
            (*(v128 + 56))(v129, 0, 1, v127);
            memset(v159, 0, sizeof(v159));
            v160 = 1;
            sub_1D76ED3A8(v154, v129, v159);

            sub_1D766E72C(v159);
            return (*(v151 + 8))(v129, v21);
          }

          else
          {
            v147 = v31;
            if (qword_1EE0AF008 != -1)
            {
              swift_once();
            }

            v148 = v21;
            ObjectType = qword_1EE0AF010;
            LODWORD(v145) = sub_1D7704590();
            sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_1D7709070;
            v68 = MEMORY[0x1E69E6158];
            *(v67 + 56) = MEMORY[0x1E69E6158];
            v69 = sub_1D7668854();
            v70 = v155;
            *(v67 + 32) = v156;
            *(v67 + 40) = v70;
            v71 = a11[2];
            v72 = a11[3];
            *(v67 + 96) = v68;
            *(v67 + 104) = v69;
            *(v67 + 64) = v69;
            *(v67 + 72) = v71;
            *(v67 + 80) = v72;
            *&v159[0] = 0;
            *(&v159[0] + 1) = 0xE000000000000000;
            v158[0] = v26;
            sub_1D7665328(0, &qword_1EE0AEBD0);

            sub_1D7704850();
            v73 = v159[0];
            *(v67 + 136) = v68;
            *(v67 + 144) = v69;
            *(v67 + 112) = v73;
            v75 = v28[19];
            v74 = v28[20];
            v76 = v28[22];
            if (v76)
            {
              v77 = v28[21];
              *&v159[0] = v28[19];
              *(&v159[0] + 1) = v74;

              MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
              MEMORY[0x1DA6FF0D0](v77, v76);
              MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
              v78 = *(&v159[0] + 1);
              v75 = *&v159[0];
            }

            else
            {
            }

            *(v67 + 176) = v68;
            *(v67 + 184) = v69;
            *(v67 + 152) = v75;
            *(v67 + 160) = v78;
            sub_1D7703ED0();

            v130 = v152;
            v131 = *(v152 - 8);
            ObjectType = *(v131 + 16);
            v132 = v150;
            ObjectType(v150, v153, v152);
            v145 = *(v131 + 56);
            v145(v132, 0, 1, v130);
            v133 = v149;
            v134 = swift_getObjectType();
            *&v159[0] = v133;
            v135 = (*(v147 + 8))(v134);
            Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v26, v132, v156, v155, v135, v136);

            v137 = *(v151 + 8);
            v138 = v148;
            v137(v132, v148);
            ObjectType(v132, v153, v130);
            v145(v132, 0, 1, v130);
            memset(v159, 0, sizeof(v159));
            v160 = 1;
            sub_1D76ED3A8(v154, v132, v159);

            sub_1D766E72C(v159);
            return (v137)(v132, v138);
          }
        }
      }

      else
      {
        v65 = v152;
        v66 = *(v152 - 8);
        (*(v66 + 16))(v25, v153, v152);
        (*(v66 + 56))(v25, 0, 1, v65);
        *&v159[0] = 1;
        memset(v159 + 8, 0, 72);
        v160 = 2;
        sub_1D76ED3A8(v154, v25, v159);

        sub_1D766E72C(v159);
        return (*(v22 + 8))(v25, v21);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D76ED3A8(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v78 = a1;
  v71 = *v3;
  v72 = a2;
  v7 = v71[12];
  v8 = v71[14];
  v9 = v71[16];
  v92 = v71[10];
  v6 = v92;
  v93 = v7;
  v94 = v8;
  v95 = v9;
  type metadata accessor for AdRequest();
  v10 = sub_1D77046B0();
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v66 = &v63 - v12;
  v14 = v71[17];
  v92 = v71[13];
  v13 = v92;
  v81 = v6;
  v93 = v6;
  v76 = v8;
  v77 = v7;
  v94 = v7;
  v95 = v14;
  v96 = v8;
  v75 = v9;
  v97 = v9;
  v15 = type metadata accessor for BannerAdUpdate();
  v73 = *(v15 - 8);
  v74 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v80 = (&v63 - v18);
  v79 = *(v13 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v65 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v63 - v23;
  v25 = *(v14 + 8);
  v25(&v86, v13, v14);
  v26 = v87;
  v64 = v86;

  sub_1D766E6D8(&v86);
  v70 = a3;
  sub_1D766CEFC(a3, &v94);
  v27 = v3[13];
  v69 = v25;
  v25(&v84, v13, v14);
  v28 = v84;
  v29 = v85;

  sub_1D766E6D8(&v84);
  Journal.createDebugJournal(for:)(v28, v29, v107);

  v103 = v107[5];
  v104 = v107[6];
  v105 = v107[7];
  v106 = v107[8];
  v99 = v107[1];
  v100 = v107[2];
  v101 = v107[3];
  v102 = v107[4];
  v92 = v64;
  v93 = v26;
  v98 = v107[0];
  (*(v14 + 16))(&v92, v13, v14);
  v30 = v65;
  (*(v79 + 16))(v65, v24, v13);
  v31 = v66;
  (*(v67 + 16))(v66, v72, v68);

  BannerAdUpdate.init(model:request:journal:)(v30, v31, v27, v13, v14, v80);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7709050;
  v72 = v24;
  v82 = v13;
  v78 = v14;
  (v69)(&v86, v13, v14);
  v34 = v86;
  v33 = v87;

  sub_1D766E6D8(&v86);
  v35 = MEMORY[0x1E69E6158];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D7668854();
  *(v32 + 64) = v36;
  *(v32 + 32) = v34;
  *(v32 + 40) = v33;
  v37 = BannerAdState.description.getter();
  *(v32 + 96) = v35;
  *(v32 + 104) = v36;
  *(v32 + 72) = v37;
  *(v32 + 80) = v38;
  v40 = v4[19];
  v39 = v4[20];
  v41 = v4[22];
  if (v41)
  {
    v42 = v4[21];
    v84 = v4[19];
    v85 = v39;

    MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
    MEMORY[0x1DA6FF0D0](v42, v41);
    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
    v40 = v84;
    v43 = v85;
  }

  else
  {
  }

  *(v32 + 136) = v35;
  *(v32 + 144) = v36;
  *(v32 + 112) = v40;
  *(v32 + 120) = v43;
  sub_1D77045A0();
  sub_1D7703ED0();

  swift_beginAccess();
  v83 = v4[23];
  MEMORY[0x1EEE9AC00](v83, v44);
  v45 = v71;
  v70 = v71[11];
  v46 = v70;
  v47 = v81;
  *(&v63 - 8) = v81;
  *(&v63 - 7) = v46;
  v48 = v47;
  v50 = v76;
  v49 = v77;
  v51 = v82;
  *(&v63 - 6) = v77;
  *(&v63 - 5) = v51;
  v52 = v51;
  v53 = v45[15];
  v71 = v53;
  *(&v63 - 4) = v50;
  *(&v63 - 3) = v53;
  v54 = v75;
  v55 = v78;
  *(&v63 - 2) = v75;
  *(&v63 - 1) = v55;

  v86 = v52;
  v87 = v48;
  v88 = v49;
  v89 = v55;
  v90 = v50;
  v91 = v54;
  type metadata accessor for DisposableObserver();
  sub_1D77044B0();
  swift_getWitnessTable();
  v4[23] = sub_1D77047B0();

  v69 = &v63;
  v86 = v4[23];
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = v70;
  v58 = v71;
  *(&v63 - 10) = v81;
  *(&v63 - 9) = v59;
  *(&v63 - 8) = v49;
  v60 = v82;
  *(&v63 - 7) = v82;
  *(&v63 - 6) = v50;
  *(&v63 - 5) = v58;
  *(&v63 - 4) = v54;
  v61 = v80;
  *(&v63 - 3) = v55;
  *(&v63 - 2) = v61;

  swift_getWitnessTable();
  sub_1D7704340();

  (*(v79 + 8))(v72, v60);
  sub_1D766E6D8(&v92);
  return (*(v73 + 8))(v61, v74);
}

uint64_t BannerAdViewManager.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 192);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    v14._countAndFlagsBits = v12;
    v14._object = v13;
    Journal.removeEntries(for:)(v14);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      __swift_destroy_boxed_opaque_existential_1(v1 + 16);

      __swift_destroy_boxed_opaque_existential_1(v1 + 64);

      __swift_destroy_boxed_opaque_existential_1(v1 + 112);

      return v1;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t BannerAdViewManager.__deallocating_deinit()
{
  BannerAdViewManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D76EDD1C()
{

  sub_1D76EDF58(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D76EDD80(uint64_t *a1)
{
  v3 = (*(*(v1[5] - 8) + 80) + 96) & ~*(*(v1[5] - 8) + 80);
  v4 = *(*(v1[5] - 8) + 64);
  v5 = *(type metadata accessor for AdRequest() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D76EC150(a1, *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v1[10], v1[11], v1 + v3, (v1 + v6), *(v1 + v7), *(v1 + v7 + 8), *(v1 + v8));
}

uint64_t sub_1D76EDED8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

BOOL sub_1D76EDF80()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_1D76EDFC8(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = *(*a1 + 16);

  v3(v2);
}

uint64_t sub_1D76EE01C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D76EE064(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

NewsAds::AdStatusCondition __swiftcall AdStatusCondition.withState(_:)(NewsAds::AdStatusCondition::State a1)
{
  v3 = *a1;
  v4 = v2[1];
  *v1 = *v2;
  *(v1 + 8) = v4;
  *(v1 + 16) = v3;

  result.identifier._object = v6;
  result.identifier._countAndFlagsBits = v5;
  result.state = v7;
  return result;
}

uint64_t AdStatusCondition.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

uint64_t AdStatusCondition.identifier.getter()
{
  v1 = *v0;

  return v1;
}

NewsAds::AdStatusCondition __swiftcall AdStatusCondition.init(identifier:state:)(NewsAds::AdStatusCondition identifier, NewsAds::AdStatusCondition::State state)
{
  v3 = *state;
  *v2 = identifier.identifier;
  *(v2 + 16) = v3;
  identifier.state = state;
  return identifier;
}

uint64_t static AdStatusCondition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D7704A30();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_1D76EE204()
{
  result = qword_1EC9BDEF0;
  if (!qword_1EC9BDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEF0);
  }

  return result;
}

uint64_t sub_1D76EE258(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D7704A30();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1D76EE2B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D76EE300(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void DebugJournalSummaryViewLayoutOptions.init(boundingSize:screenScale:layoutMargins:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
}

uint64_t DebugJournalSummaryViewLayoutOptions.Embedded.init(layoutOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D77032B0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D76EE42C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76EE44C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t type metadata accessor for DebugJournalSummaryViewLayoutOptions.Embedded()
{
  result = qword_1EC9BDEF8;
  if (!qword_1EC9BDEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D76EE508()
{
  result = sub_1D77032B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id AdSponsorshipView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AdSponsorshipView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AdSponsorshipView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id AdSponsorshipView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AdSponsorshipView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AdSponsorshipView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AdSponsorshipView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdSponsorshipView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PrerollAdPlacement.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrerollAdPlacement.desiredPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrerollAdPlacement() + 20);
  v4 = sub_1D77038B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrerollAdPlacement.insertionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PrerollAdPlacement();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t PrerollAdPlacement.init(placementIdentifier:boundingSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for PrerollAdPlacement();
  v11 = v10[5];
  *&a3[v11] = 1;
  v12 = *MEMORY[0x1E69C6020];
  v13 = sub_1D77038B0();
  result = (*(*(v13 - 8) + 104))(&a3[v11], v12, v13);
  a3[v10[7]] = 0;
  *a3 = a1;
  *(a3 + 1) = a2;
  v15 = &a3[v10[6]];
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t PrerollAd.contentIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PrerollAd.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PrerollAd() + 24);

  return sub_1D76BF34C(v3, a1);
}

uint64_t type metadata accessor for PrerollAd()
{
  result = qword_1EC9BDF10;
  if (!qword_1EC9BDF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D76EEAC0()
{
  result = sub_1D7703EA0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PrerollAdPlacement();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D76EEB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v6;
    v12 = *(a1 + 64);
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1D76CC068(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    sub_1D76939B0(a1, qword_1EE0AE8E8);
    sub_1D76EF478(a2, a3, v11);

    return sub_1D76939B0(v11, qword_1EE0AE8E8);
  }

  return result;
}

uint64_t AdManager.__allocating_init(previewQueue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AdManager.init(previewQueue:)(a1);
  return v2;
}

uint64_t AdRequest.identifier.getter()
{
  v0 = sub_1D76EFAFC();

  return v0;
}

uint64_t sub_1D76EECA4()
{
  v0 = sub_1D76EFAFC();

  return v0;
}

uint64_t AdManager.enabled.getter()
{

  sub_1D7703140();

  return v1;
}

uint64_t AdManager.adProvider<A, B, C>(for:context:placement:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *a1;

  sub_1D7703140();

  if (LOBYTE(v54[0]) != 1)
  {
    v14 = 2;
LABEL_17:
    sub_1D76EFB04();
    swift_allocError();
    *v42 = v14;
    return swift_willThrow();
  }

  v58 = a2;
  v10 = a1[2];
  v9 = a1[3];
  swift_beginAccess();
  v11 = v3[13];
  if (*(v11 + 16) && (v12 = sub_1D76689AC(v10, v9), (v13 & 1) != 0))
  {
    sub_1D767F844(*(v11 + 56) + 32 * v12, &v51);
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  swift_endAccess();
  if (!*(&v52 + 1))
  {
    sub_1D76939B0(&v51, &unk_1EE0AEBB0);
LABEL_14:
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    sub_1D7704590();
    sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D7708FD0;
    v37 = (*(v8[16] + 8))(v8[13]);
    v39 = v38;
    v40 = MEMORY[0x1E69E6158];
    *(v36 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1D7668854();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    *(v36 + 96) = v40;
    *(v36 + 104) = v41;
    *(v36 + 64) = v41;
    *(v36 + 72) = v10;
    *(v36 + 80) = v9;

    sub_1D7703ED0();

    v14 = 0;
    goto LABEL_17;
  }

  v47 = a3;
  v48 = v10;
  v49 = v9;
  v15 = v8[12];
  v16 = v8[13];
  v17 = v8[14];
  v18 = v8[15];
  v19 = v8[16];
  v20 = v8[11];
  v54[0] = v20;
  v54[1] = v15;
  v54[2] = v16;
  v55 = v17;
  v46 = v18;
  v56 = v18;
  v57 = v19;
  type metadata accessor for Ad();
  type metadata accessor for AnyFactory();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = v48;
    v9 = v49;
    goto LABEL_14;
  }

  v45 = v50;
  v44 = v20;
  __swift_project_boxed_opaque_existential_1(v4 + 8, v4[11]);
  v21 = type metadata accessor for AdContext();
  v55 = v21;
  v56 = &protocol witness table for AdContext<A>;
  v57 = &protocol witness table for AdContext<A>;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v54);
  v43 = v17;
  v23 = v58;
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_2, v58, v21);
  v24 = v4[6];
  v25 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v24);
  (*(v25 + 16))(&v50, a1, v23, v44, v15, v16, v43, v46, v19, v24, v25);
  sub_1D767D438(v54, v47, &v51);

  __swift_destroy_boxed_opaque_existential_1(v54);
  v26 = *(&v52 + 1);
  v27 = v53;
  __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
  (*(v27 + 16))(v47, v16, v19, v26, v27);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7708FD0;
  v29 = (*(v19 + 8))(v16, v19);
  v31 = v30;
  v32 = MEMORY[0x1E69E6158];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v33 = sub_1D7668854();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  *(v28 + 96) = v32;
  *(v28 + 104) = v33;
  *(v28 + 64) = v33;
  *(v28 + 72) = v48;
  *(v28 + 80) = v49;

  sub_1D77045A0();
  sub_1D7703ED0();

  v34 = *(v45 + 16);
  v54[0] = a1;

  v34(v54, &v51);

  return __swift_destroy_boxed_opaque_existential_1(&v51);
}

uint64_t AdManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return v0;
}

uint64_t AdManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1D76EF360()
{

  sub_1D7703140();

  return v1;
}

double sub_1D76EF3CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D76689AC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D767EF14();
      v10 = v12;
    }

    sub_1D7667CB8((*(v10 + 56) + 40 * v8), a3);
    sub_1D76EF5DC(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D76EF478@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D76689AC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D76E4560();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 72 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_1D76EF798(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D76EF538@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D76689AC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D76E4878();
      v10 = v12;
    }

    sub_1D766B74C((*(v10 + 56) + 32 * v8), a3);
    sub_1D76EF94C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D76EF5DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7704700() + 1) & ~v5;
    do
    {
      sub_1D7704AD0();

      sub_1D77042D0();
      v11 = sub_1D7704AF0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_1D76EF798(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7704700() + 1) & ~v5;
    do
    {
      sub_1D7704AD0();

      sub_1D77042D0();
      v9 = sub_1D7704AF0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 72 * v3);
        v15 = (v14 + 72 * v6);
        if (v3 != v6 || result >= v15 + 72)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D76EF94C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7704700() + 1) & ~v5;
    do
    {
      sub_1D7704AD0();

      sub_1D77042D0();
      v10 = sub_1D7704AF0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D76EFB04()
{
  result = qword_1EC9BDF20;
  if (!qword_1EC9BDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF20);
  }

  return result;
}

uint64_t sub_1D76EFB58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D76694D8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

_OWORD *sub_1D76EFCC0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t VideoAdPlaybackState.LoadState.hashValue.getter()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

uint64_t VideoAdPlaybackState.placementIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VideoAdPlaybackState.contentIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t VideoAdPlaybackState.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdPlaybackState() + 32);

  return sub_1D76EFE8C(v3, a1);
}

uint64_t type metadata accessor for VideoAdPlaybackState()
{
  result = qword_1EC9BDF30;
  if (!qword_1EC9BDF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D76EFE8C(uint64_t a1, uint64_t a2)
{
  sub_1D76B6C94();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VideoAdPlaybackState.loadState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdPlaybackState();
  *a1 = *(v1 + *(result + 40));
  return result;
}

unint64_t sub_1D76EFF54()
{
  result = qword_1EC9BDF28;
  if (!qword_1EC9BDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF28);
  }

  return result;
}

void sub_1D76EFFD0()
{
  sub_1D76F007C();
  if (v0 <= 0x3F)
  {
    sub_1D76B6C94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D76F007C()
{
  if (!qword_1EC9BDF40)
  {
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9BDF40);
    }
  }
}

Swift::Void __swiftcall MetricsView.checkVisibility(scrollView:)(UIScrollView *scrollView)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D77045A0();
  sub_1D7703ED0();

  MEMORY[0x1EEE2FDC0](scrollView);
}

uint64_t (*sub_1D76F018C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D7703DA0();
  return sub_1D76F01FC;
}

uint64_t (*sub_1D76F0208(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D7703E00();
  return sub_1D76F0404;
}

void sub_1D76F0278(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1D76F02C0(uint64_t a1)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D77045A0();
  sub_1D7703ED0();

  return MEMORY[0x1EEE2FDC0](a1);
}

uint64_t sub_1D76F0408()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 AdPolicyEnvironments.viewport.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  v3 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 104);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = result;
  return result;
}

void __swiftcall AdPolicyEnvironments.init(layout:viewport:)(NewsAds::AdPolicyEnvironments *__return_ptr retstr, NewsAds::AdPolicyLayoutEnvironment layout, NewsAds::AdPolicyViewportEnvironment *viewport)
{
  origin = viewport->bounds.origin;
  retstr->viewport.bounds.size = viewport->bounds.size;
  v4 = *&viewport->adjustedContentInset.top;
  retstr->viewport.contentSize = viewport->contentSize;
  *&retstr->viewport.adjustedContentInset.top = v4;
  *&retstr->viewport.adjustedContentInset.bottom = *&viewport->adjustedContentInset.bottom;
  contentOffset = viewport->contentOffset;
  retstr->viewport.viewportSize = viewport->viewportSize;
  retstr->viewport.contentOffset = contentOffset;
  retstr->layout.content._rawValue = *layout.content._rawValue;
  retstr->viewport.bounds.origin = origin;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D76F050C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1D76F0554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76F05C0()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    sub_1D7667C54(v0 + 16, v3);
    type metadata accessor for DebugNativeAdProvider();
    v1 = swift_allocObject();
    if (qword_1EE0B0BE0 != -1)
    {
      swift_once();
    }

    sub_1D76F1548(0, &qword_1EE0B0910);
    swift_allocObject();

    *(v1 + 16) = sub_1D7703160();
    sub_1D76F1548(0, &qword_1EC9BDF48);
    swift_allocObject();

    *(v1 + 24) = sub_1D7703160();
    sub_1D767FBE4(v3, v1 + 32);
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t NativeAdProvider.fetchNativeAdInfo(request:journal:)(uint64_t a1, uint64_t a2)
{
  sub_1D7696460();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(MEMORY[0x1EEE9AC00](v4 - 8, v7) + 64));
  v10 = *v9;
  v11 = v9[1];
  if (qword_1EE0B0BE0 != -1)
  {
    swift_once();
  }

  if (sub_1D77030B0())
  {
    v12 = sub_1D76F05C0();
    sub_1D7669BD8();
    v13 = sub_1D77045F0();
    sub_1D76F0DA0(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    sub_1D76F0E04(v8, v16 + v14);
    *(v16 + v15) = v12;
    *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
    type metadata accessor for NativeAdInfo(0);

    sub_1D7703710();

    v17 = sub_1D7703620();
    type metadata accessor for DebugNativeAdProvider();
    v18 = sub_1D77036B0();
  }

  else
  {
    v19 = swift_allocObject();
    v20 = swift_weakInit();
    MEMORY[0x1EEE9AC00](v20, v21);
    *(&v23 - 6) = v19;
    *(&v23 - 5) = v10;
    *(&v23 - 4) = v11;
    *(&v23 - 3) = a2;
    *(&v23 - 2) = a1;
    sub_1D76F1670(0, &qword_1EE0B0858, type metadata accessor for NativeAdInfo, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v18 = sub_1D77036F0();
  }

  return v18;
}

void sub_1D76F0A38(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a1;
  sub_1D7696460();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v18);
  v19 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v44 = a3;
    v45 = a8;
    v42 = a6;
    v43 = a2;
    v21 = a4;
    v22 = Strong[5];
    v23 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v22);
    v24 = (*(v23 + 8))(v22, v23);
    v25 = [objc_opt_self() mainScreen];
    [v25 bounds];
    v27 = v26;
    v29 = v28;

    v30 = swift_allocObject();
    swift_weakInit();
    sub_1D76F0DA0(a9, &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = (*(v16 + 80) + 80) & ~*(v16 + 80);
    v32 = swift_allocObject();
    v34 = v43;
    v33 = v44;
    v32[2] = v30;
    v32[3] = v33;
    v35 = v42;
    v32[4] = v21;
    v32[5] = v35;
    v37 = v45;
    v36 = v46;
    v32[6] = a7;
    v32[7] = v36;
    v32[8] = v34;
    v32[9] = v37;
    sub_1D76F0E04(v19, v32 + v31);
    aBlock[4] = sub_1D76F15F0;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D769D7C4;
    aBlock[3] = &block_descriptor_8;
    v38 = _Block_copy(aBlock);

    [v24 nativePromotedContentWithSize:v38 contentFetched:{v27, v29}];
    _Block_release(v38);
  }

  else
  {
    v39 = sub_1D77033D0();
    sub_1D76F1598();
    v40 = swift_allocError();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69D64A0], v39);
    a3(v40);
  }
}

uint64_t sub_1D76F0DA0(uint64_t a1, uint64_t a2)
{
  sub_1D7696460();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D76F0E04(uint64_t a1, uint64_t a2)
{
  sub_1D7696460();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D76F0E68(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v92 = a5;
  v15 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v87 = a9;
    v21 = sub_1D7703790();
    v90 = a8;
    v91 = a7;
    v88 = v15;
    v89 = v20;
    if (v21)
    {
      v22 = v21;
      v86 = a10;
      if (qword_1EE0AF008 != -1)
      {
        swift_once();
      }

      sub_1D76F1670(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D7708FD0;
      v24 = sub_1D77037A0();
      v26 = v25;
      v27 = MEMORY[0x1E69E6158];
      *(v23 + 56) = MEMORY[0x1E69E6158];
      v28 = sub_1D7668854();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      *(v23 + 96) = v27;
      *(v23 + 104) = v28;
      v29 = v92;
      *(v23 + 64) = v28;
      *(v23 + 72) = v29;
      *(v23 + 80) = a6;

      sub_1D77045A0();
      sub_1D7703ED0();

      v30 = sub_1D77038F0();
      v84 = v31;
      v85 = v30;
      v32 = sub_1D77038E0();
      v81 = v33;
      v82 = v32;
      v80 = sub_1D77038C0();
      v79 = v34;
      v78 = sub_1D77038D0();
      v77 = v35;
      v36 = v22;
      v83 = v36;
      v76 = sub_1D7703760();
      v75 = v37;

      v38 = type metadata accessor for NativeAdInfo.Fulfilled(0);
      v39 = (v18 + v38[12]);
      v39[3] = &type metadata for NativeAdContentInfo;
      v39[4] = &protocol witness table for NativeAdContentInfo;
      v40 = a6;
      v41 = swift_allocObject();
      *v39 = v41;
      v41[2] = sub_1D77037A0();
      v41[3] = v42;
      v41[4] = sub_1D77037D0();
      v41[5] = a1;
      v44 = v89[5];
      v43 = v89[6];
      __swift_project_boxed_opaque_existential_1(v89 + 2, v44);
      v45 = *(v43 + 8);
      v46 = a1;
      v47 = v45(v44, v43);
      sub_1D76F0DA0(v86, v18 + v38[11]);
      *v18 = v92;
      v18[1] = v40;
      v48 = v81;
      v18[2] = v82;
      v18[3] = v48;
      v49 = v84;
      v18[4] = v85;
      v18[5] = v49;
      v50 = v79;
      v18[6] = v80;
      v18[7] = v50;
      v51 = v77;
      v18[8] = v78;
      v18[9] = v51;
      v52 = v75;
      v18[10] = v76;
      v18[11] = v52;
      *(v18 + v38[13]) = v47;
      v18[12] = v87;
      swift_storeEnumTagMultiPayload();

      v91(v18);
    }

    else
    {
      if (qword_1EE0AF008 != -1)
      {
        swift_once();
      }

      sub_1D76F1670(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1D7709050;
      v57 = sub_1D77037A0();
      v59 = v58;
      v60 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v61 = sub_1D7668854();
      *(v56 + 64) = v61;
      *(v56 + 32) = v57;
      *(v56 + 40) = v59;
      [a1 unfilledReason];
      v62 = sub_1D7703860();
      *(v56 + 96) = v60;
      *(v56 + 104) = v61;
      *(v56 + 72) = v62;
      *(v56 + 80) = v63;
      *(v56 + 136) = v60;
      *(v56 + 144) = v61;
      *(v56 + 112) = v92;
      *(v56 + 120) = a6;

      sub_1D77045A0();
      sub_1D7703ED0();

      v93[3] = &type metadata for NativeAdContentInfo;
      v93[4] = &protocol witness table for NativeAdContentInfo;
      v64 = swift_allocObject();
      v93[0] = v64;
      v65 = sub_1D77037A0();
      v67 = v66;
      v64[2] = v65;
      v64[3] = v66;

      v64[4] = sub_1D77037D0();
      v64[5] = a1;
      v68 = v20[5];
      v69 = v20[6];
      __swift_project_boxed_opaque_existential_1(v20 + 2, v68);
      v70 = a6;
      v71 = *(v69 + 8);
      v72 = a1;
      v73 = v71(v68, v69);
      *v18 = v92;
      v18[1] = v70;
      v18[2] = v65;
      v18[3] = v67;
      sub_1D7667C54(v93, (v18 + 5));
      v18[10] = v73;
      v18[4] = v87;

      __swift_destroy_boxed_opaque_existential_1(v93);
      swift_storeEnumTagMultiPayload();
      v91(v18);
    }

    sub_1D7696720(v18);
  }

  else
  {
    v53 = sub_1D77033D0();
    sub_1D76F1598();
    v54 = swift_allocError();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69D64A0], v53);
    a3(v54);
  }
}

uint64_t NativeAdProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t NativeAdProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1D76F1548(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7703150();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D76F1598()
{
  result = qword_1EE0B0890;
  if (!qword_1EE0B0890)
  {
    sub_1D77033D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0890);
  }

  return result;
}

void sub_1D76F1670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t PreviewInterstitialAdContext.init(provider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (!v2)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v7, &type metadata for UserAdData, v8);
    *a2 = v11;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D76F17AC()
{
  if (*v0)
  {
    return 0x6174614472657375;
  }

  else
  {
    return 0x61746144707061;
  }
}

uint64_t sub_1D76F17E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D7704A30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7704A30();

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

uint64_t sub_1D76F18C4(uint64_t a1)
{
  v2 = sub_1D76F1AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F1900(uint64_t a1)
{
  v2 = sub_1D76F1AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviewInterstitialAdContext.encode(to:)(void *a1)
{
  sub_1D76F1D34(0, &qword_1EC9BDF50, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F1AF8();
  sub_1D7704B10();
  v16 = v9;
  v15 = 0;
  sub_1D7669D40();
  v11 = v13[0];
  sub_1D7704A00();
  if (!v11)
  {
    v13[1] = v10;
    v14 = 1;
    sub_1D7669394();

    sub_1D7704A00();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D76F1AF8()
{
  result = qword_1EC9BDF58;
  if (!qword_1EC9BDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF58);
  }

  return result;
}

uint64_t PreviewInterstitialAdContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D76F1D34(0, &qword_1EC9BDF60, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F1AF8();
  sub_1D7704B00();
  if (!v2)
  {
    v16 = 0;
    sub_1D7669CEC();
    sub_1D7704970();
    v11 = v17;
    v15 = 1;
    sub_1D76684E8();
    sub_1D7704970();
    (*(v7 + 8))(v10, v6);
    v13 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76F1D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76F1AF8();
    v7 = a3(a1, &type metadata for PreviewInterstitialAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id PreviewInterstitialAdContext.newsSupplementalContext.getter()
{
  v0 = objc_allocWithZone(sub_1D7703D00());

  v1 = [v0 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  return v1;
}

uint64_t sub_1D76F1EAC(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_1D7703780();
  v5 = v3;

  return sub_1D76B8138(a1, &v5, 103);
}

uint64_t sub_1D76F1F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  sub_1D7703780();
  v7 = v5;

  return sub_1D76B8138(a3, &v7, 103);
}

unint64_t sub_1D76F1F90()
{
  result = qword_1EC9BDF68;
  if (!qword_1EC9BDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF68);
  }

  return result;
}

unint64_t sub_1D76F1FE8()
{
  result = qword_1EC9BDF70;
  if (!qword_1EC9BDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF70);
  }

  return result;
}

unint64_t sub_1D76F2040()
{
  result = qword_1EC9BDF78;
  if (!qword_1EC9BDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF78);
  }

  return result;
}

uint64_t sub_1D76F20D8(uint64_t a1)
{
  v2 = sub_1D76F27F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F2114(uint64_t a1)
{
  v2 = sub_1D76F27F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D76F2150()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x646165687473616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656E6E6162;
  }
}

uint64_t sub_1D76F21A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D76F4070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D76F21CC(uint64_t a1)
{
  v2 = sub_1D76F284C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F2208(uint64_t a1)
{
  v2 = sub_1D76F284C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D76F2244(uint64_t a1)
{
  v2 = sub_1D76F27A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F2280(uint64_t a1)
{
  v2 = sub_1D76F27A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D76F22BC(uint64_t a1)
{
  v2 = sub_1D76F2750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F22F8(uint64_t a1)
{
  v2 = sub_1D76F2750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SponsorshipAdDataPlacement.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D76F3824(0, &qword_1EC9BDF80, sub_1D76F2750, &type metadata for SponsorshipAdDataPlacement.MastheadCodingKeys, MEMORY[0x1E69E6F58]);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v32 = &v27 - v6;
  sub_1D76F3824(0, &qword_1EC9BDF90, sub_1D76F27A4, &type metadata for SponsorshipAdDataPlacement.GroupCodingKeys, v3);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v29 = &v27 - v9;
  sub_1D76F3824(0, &qword_1EC9BDFA0, sub_1D76F27F8, &type metadata for SponsorshipAdDataPlacement.BannerCodingKeys, v3);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - v12;
  sub_1D76F3824(0, &qword_1EC9BDFB0, sub_1D76F284C, &type metadata for SponsorshipAdDataPlacement.CodingKeys, v3);
  v35 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F284C();
  sub_1D7704B10();
  v20 = (v15 + 8);
  if (v19)
  {
    if (v19 == 1)
    {
      v37 = 1;
      sub_1D76F27A4();
      v21 = v29;
      v22 = v35;
      sub_1D7704990();
      (*(v30 + 8))(v21, v31);
      return (*v20)(v18, v22);
    }

    v38 = 2;
    sub_1D76F2750();
    v13 = v32;
    v24 = v35;
    sub_1D7704990();
    v26 = v33;
    v25 = v34;
  }

  else
  {
    v36 = 0;
    sub_1D76F27F8();
    v24 = v35;
    sub_1D7704990();
    v26 = v27;
    v25 = v28;
  }

  (*(v26 + 8))(v13, v25);
  return (*v20)(v18, v24);
}

unint64_t sub_1D76F2750()
{
  result = qword_1EC9BDF88;
  if (!qword_1EC9BDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF88);
  }

  return result;
}

unint64_t sub_1D76F27A4()
{
  result = qword_1EC9BDF98;
  if (!qword_1EC9BDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF98);
  }

  return result;
}

unint64_t sub_1D76F27F8()
{
  result = qword_1EC9BDFA8;
  if (!qword_1EC9BDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDFA8);
  }

  return result;
}

unint64_t sub_1D76F284C()
{
  result = qword_1EC9BDFB8;
  if (!qword_1EC9BDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDFB8);
  }

  return result;
}

uint64_t SponsorshipAdDataPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

uint64_t SponsorshipAdDataPlacement.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v44 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D76F3824(0, &qword_1EC9BDFC0, sub_1D76F2750, &type metadata for SponsorshipAdDataPlacement.MastheadCodingKeys, MEMORY[0x1E69E6F48]);
  v43 = v4;
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v37 - v6;
  sub_1D76F3824(0, &qword_1EC9BDFC8, sub_1D76F27A4, &type metadata for SponsorshipAdDataPlacement.GroupCodingKeys, v3);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v45 = &v37 - v9;
  sub_1D76F3824(0, &qword_1EC9BDFD0, sub_1D76F27F8, &type metadata for SponsorshipAdDataPlacement.BannerCodingKeys, v3);
  v11 = v10;
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v37 - v13;
  sub_1D76F3824(0, &qword_1EC9BDFD8, sub_1D76F284C, &type metadata for SponsorshipAdDataPlacement.CodingKeys, v3);
  v16 = v15;
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v37 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F284C();
  v20 = v48;
  sub_1D7704B00();
  if (v20)
  {
    goto LABEL_2;
  }

  v38 = v11;
  v22 = v45;
  v23 = v46;
  v48 = a1;
  v24 = sub_1D7704980();
  v25 = *(v24 + 16);
  if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 3) : (v27 = 1), v27))
  {
    v28 = sub_1D77047A0();
    swift_allocError();
    v30 = v29;
    sub_1D76F2F38();
    *v30 = &type metadata for SponsorshipAdDataPlacement;
    sub_1D7704900();
    sub_1D7704780();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    (*(v47 + 8))(v19, v16);
    swift_unknownObjectRelease();
LABEL_10:
    v21 = v48;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  if (!*(v24 + 32))
  {
    v49 = 0;
    sub_1D76F27F8();
    sub_1D77048F0();
    v35 = v47;
    (*(v39 + 8))(v14, v38);
    (*(v35 + 8))(v19, v16);
    swift_unknownObjectRelease();
    v34 = v44;
LABEL_22:
    *v34 = v26;
    goto LABEL_10;
  }

  v39 = 0;
  v32 = v47;
  if (v26 == 1)
  {
    v50 = 1;
    sub_1D76F27A4();
    v33 = v39;
    sub_1D77048F0();
    v34 = v44;
    if (v33)
    {
      goto LABEL_18;
    }

    (*(v41 + 8))(v22, v42);
    (*(v32 + 8))(v19, v16);
    goto LABEL_21;
  }

  v51 = 2;
  sub_1D76F2750();
  v36 = v39;
  sub_1D77048F0();
  v34 = v44;
  if (!v36)
  {
    (*(v40 + 8))(v23, v43);
    (*(v32 + 8))(v19, v16);
LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

LABEL_18:
  (*(v32 + 8))(v19, v16);
  swift_unknownObjectRelease();
  a1 = v48;
LABEL_2:
  v21 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1D76F2F38()
{
  if (!qword_1EC9BDFE0)
  {
    sub_1D76F2FA8();
    sub_1D7704790();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9BDFE0);
    }
  }
}

unint64_t sub_1D76F2FA8()
{
  result = qword_1EC9BDFE8;
  if (!qword_1EC9BDFE8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC9BDFE8);
  }

  return result;
}

uint64_t sub_1D76F3024()
{
  v1 = *v0;
  v2 = 0x6E65644964656566;
  v3 = 0x726F7779654B6461;
  v4 = 0x6C65746968577369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656D6563616C70;
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

uint64_t sub_1D76F30E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D76F4180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D76F310C(uint64_t a1)
{
  v2 = sub_1D76F341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F3148(uint64_t a1)
{
  v2 = sub_1D76F341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SponsorshipAdData.encode(to:)(void *a1)
{
  sub_1D76F3824(0, &qword_1EC9BDFF0, sub_1D76F341C, &type metadata for SponsorshipAdData.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  v13 = *(v1 + 32);
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F341C();
  sub_1D7704B10();
  v23 = 0;
  v9 = v16;
  sub_1D77049C0();
  if (!v9)
  {
    v10 = v14;
    v22 = v15;
    v21 = 1;
    sub_1D76F3470();
    sub_1D7704A00();
    v17 = v10;
    v20 = 2;
    sub_1D76697B0();
    sub_1D768DEEC(&qword_1EC9BE010);
    sub_1D7704A00();
    v19 = 3;
    sub_1D77049D0();
    v18 = 4;
    sub_1D77049F0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D76F341C()
{
  result = qword_1EC9BDFF8;
  if (!qword_1EC9BDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDFF8);
  }

  return result;
}

unint64_t sub_1D76F3470()
{
  result = qword_1EC9BE000;
  if (!qword_1EC9BE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE000);
  }

  return result;
}

uint64_t SponsorshipAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D76F3824(0, &qword_1EC9BE018, sub_1D76F341C, &type metadata for SponsorshipAdData.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F341C();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v22;
  v30 = 0;
  v12 = v5;
  v13 = sub_1D7704930();
  v15 = v14;
  v21 = v13;
  v28 = 1;
  sub_1D76F388C();
  sub_1D7704970();
  HIDWORD(v20) = v29;
  sub_1D76697B0();
  v27 = 2;
  sub_1D768DEEC(&qword_1EC9BD1D0);
  sub_1D7704970();
  v17 = v23;
  v26 = 3;
  v24 = sub_1D7704940() & 1;
  v25 = 4;
  v18 = sub_1D7704960();
  (*(v10 + 8))(v9, v12);
  v19 = v24;
  *v11 = v21;
  *(v11 + 8) = v15;
  *(v11 + 16) = BYTE4(v20);
  *(v11 + 24) = v17;
  *(v11 + 32) = v19;
  *(v11 + 40) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76F3824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D76F388C()
{
  result = qword_1EC9BE020;
  if (!qword_1EC9BE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE020);
  }

  return result;
}

uint64_t SponsorshipAdData.init(feed:placement:adKeywords:)@<X0>(void **a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (*a1)
  {
    v8 = [swift_unknownObjectRetain() asChannel];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 identifier];
      v11 = sub_1D7704260();
      v13 = v12;

      v14 = [v9 isWhitelisted];
      v15 = [v9 contentProvider];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease_n();
    }

    else
    {
      v18 = [v6 identifier];
      v11 = sub_1D7704260();
      v13 = v19;

      result = swift_unknownObjectRelease_n();
      v15 = 1;
      v14 = 1;
    }
  }

  else
  {
    result = sub_1D7704260();
    v11 = result;
    v13 = v17;
    v14 = 1;
    v15 = 1;
  }

  *a4 = v11;
  *(a4 + 8) = v13;
  *(a4 + 16) = v7;
  *(a4 + 24) = a3;
  *(a4 + 32) = v14;
  *(a4 + 40) = v15;
  return result;
}

uint64_t SponsorshipAdData.init(channel:placement:adKeywords:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = [a1 identifier];
  v9 = sub_1D7704260();
  v11 = v10;

  LOBYTE(v8) = [a1 isWhitelisted];
  v12 = [a1 contentProvider];
  result = swift_unknownObjectRelease();
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v7;
  *(a4 + 24) = a3;
  *(a4 + 32) = v8;
  *(a4 + 40) = v12;
  return result;
}

void SponsorshipAdData.init(tag:placement:adKeywords:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = [a1 identifier];
  v8 = sub_1D7704260();
  v10 = v9;
  swift_unknownObjectRelease();

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v6;
  *(a4 + 24) = a3;
  *(a4 + 32) = 1;
  *(a4 + 40) = 1;
}

unint64_t sub_1D76F3B9C()
{
  result = qword_1EC9BE030;
  if (!qword_1EC9BE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE030);
  }

  return result;
}

unint64_t sub_1D76F3C54()
{
  result = qword_1EC9BE038;
  if (!qword_1EC9BE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE038);
  }

  return result;
}

unint64_t sub_1D76F3CAC()
{
  result = qword_1EC9BE040;
  if (!qword_1EC9BE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE040);
  }

  return result;
}

unint64_t sub_1D76F3D04()
{
  result = qword_1EC9BE048;
  if (!qword_1EC9BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE048);
  }

  return result;
}

unint64_t sub_1D76F3D5C()
{
  result = qword_1EC9BE050;
  if (!qword_1EC9BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE050);
  }

  return result;
}

unint64_t sub_1D76F3DB4()
{
  result = qword_1EC9BE058;
  if (!qword_1EC9BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE058);
  }

  return result;
}

unint64_t sub_1D76F3E0C()
{
  result = qword_1EC9BE060;
  if (!qword_1EC9BE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE060);
  }

  return result;
}

unint64_t sub_1D76F3E64()
{
  result = qword_1EC9BE068;
  if (!qword_1EC9BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE068);
  }

  return result;
}

unint64_t sub_1D76F3EBC()
{
  result = qword_1EC9BE070;
  if (!qword_1EC9BE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE070);
  }

  return result;
}

unint64_t sub_1D76F3F14()
{
  result = qword_1EC9BE078;
  if (!qword_1EC9BE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE078);
  }

  return result;
}

unint64_t sub_1D76F3F6C()
{
  result = qword_1EC9BE080;
  if (!qword_1EC9BE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE080);
  }

  return result;
}

unint64_t sub_1D76F3FC4()
{
  result = qword_1EC9BE088;
  if (!qword_1EC9BE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE088);
  }

  return result;
}

unint64_t sub_1D76F401C()
{
  result = qword_1EC9BE090;
  if (!qword_1EC9BE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE090);
  }

  return result;
}

uint64_t sub_1D76F4070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E6E6162 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646165687473616DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D76F4180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644964656566 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7779654B6461 && a2 == 0xEA00000000007364 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C65746968577369 && a2 == 0xED00006465747369 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715480 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D7704A30();

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

__n128 sub_1D76F4374@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for DebugLifecycleMetricsHelper();
  v8 = swift_allocObject();
  v9 = type metadata accessor for DebugAdsMetricsView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_privacyMarkerView] = 0;
  *&v10[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_interactionPresentationDelegate] = 0;
  *&v10[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_readyDelegate] = 0;
  if (a3)
  {
    v11 = 53.0;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = sub_1D76984B4(a3);
  v23.receiver = v10;
  v23.super_class = v9;
  v13 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 120.0, v11);
  [v13 setBackgroundColor_];

  [v13 frame];
  v42 = 0;
  *&v24 = a1;
  *(&v24 + 1) = a2;
  *&v25 = v8;
  WORD4(v25) = 0;
  BYTE10(v25) = 0;
  v26 = xmmword_1D770A6A0;
  v27.n128_u64[0] = v13;
  v27.n128_u64[1] = &off_1F52505F8;
  *&v28 = v14;
  *(&v28 + 1) = v15;
  *&v29 = v16;
  *(&v29 + 1) = v17;
  v30 = 0;
  v31[0] = a1;
  v31[1] = a2;
  v31[2] = v8;
  v32 = 0;
  v33 = 0;
  v34 = xmmword_1D770A6A0;
  v35 = v13;
  v36 = &off_1F52505F8;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v41 = 0;
  sub_1D76F4544(&v24, &v22);
  sub_1D76F457C(v31);
  result = v27;
  v19 = v29;
  *(a4 + 64) = v28;
  *(a4 + 80) = v19;
  *(a4 + 96) = v30;
  v20 = v25;
  v21 = v26;
  *a4 = v24;
  *(a4 + 16) = v20;
  *(a4 + 32) = v21;
  *(a4 + 48) = result;
  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D76F45D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D76F4620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __swiftcall AdPolicyFailure.init(placement:failureType:recoverable:description:additionalInfo:)(NewsAds::AdPolicyFailure *__return_ptr retstr, NewsAds::AdPolicyPlacement placement, NewsAds::AdPolicyFailureType failureType, Swift::Bool recoverable, Swift::String description, Swift::OpaquePointer additionalInfo)
{
  v6 = *(placement.placementIdentifier._countAndFlagsBits + 8);
  v7 = *placement.placementIdentifier._object;
  retstr->placement.placementIdentifier._countAndFlagsBits = *placement.placementIdentifier._countAndFlagsBits;
  retstr->placement.placementIdentifier._object = v6;
  retstr->placement.position = *(placement.placementIdentifier._countAndFlagsBits + 16);
  retstr->recoverable = failureType;
  retstr->failureType = v7;
  retstr->description._countAndFlagsBits = recoverable;
  *&retstr->description._object = description;
}

uint64_t AdPolicyFailure.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
}

uint64_t AdPolicyFailure.description.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NativeAdProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D76F47EC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1D76F482C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D76F482C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for NativeAdProvider();
  sub_1D7667C54(a1, v6);
  v3 = swift_allocObject();
  sub_1D767FBE4(v6, v3 + 16);
  v4 = sub_1D77033F0();

  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D76F491C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v24 = a4;
  v25 = a9;
  v26 = a1;
  v27 = a3;
  *&v28 = a6;
  *(&v28 + 1) = a7;
  *&v29 = a8;
  *(&v29 + 1) = a10;
  v15 = type metadata accessor for AdRequest();
  v16 = sub_1D77046B0();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v24 - v18;
  v32 = 0x8000000000000018;
  v33 = 0;
  v34 = 0;
  v20 = a5 + *(v15 + 52);
  v31 = *(v20 + *(type metadata accessor for AdContext() + 36));
  v28 = 0u;
  v29 = 0u;
  v30 = 1;
  v21 = *(v15 - 8);
  (*(v21 + 16))(v19, a5, v15);
  (*(v21 + 56))(v19, 0, 1, v15);
  v22 = v24;

  return sub_1D766FA5C(v26, a2, &v32, v27, v22, &v31, &v28, v19, v25, a6, a7, a8, a10);
}

uint64_t sub_1D76F4B0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10)
{
  v54 = a4;
  v55 = a5;
  v50 = a2;
  v51 = a3;
  v49 = a9;
  v45 = type metadata accessor for AdContext();
  v14 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v15);
  v44 = &v43 - v16;
  v52 = a8;
  v53 = a7;
  *&v58 = a7;
  *(&v58 + 1) = a8;
  v48 = a10;
  v59 = a10;
  v17 = type metadata accessor for AdRequest();
  v18 = sub_1D77046B0();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v46 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v43 - v24;
  v26 = a1;
  sub_1D76A737C(a1, &v58);
  v56 = v58;
  v57 = v59;
  *&v62[0] = v58 | 0x4000000000000000;
  *(&v62[0] + 1) = *(&v58 + 1);
  v62[1] = v59;
  v27 = *(v19 + 16);
  v47 = a6;
  v27(v25, a6, v18);
  v28 = *(v17 - 8);
  if ((*(v28 + 48))(v25, 1, v17) == 1)
  {
    v29 = v56;
    v30 = *(v19 + 8);

    v30(v25, v18);
    v31 = 0;
  }

  else
  {
    v32 = *(v14 + 16);
    v33 = &v25[*(v17 + 52)];
    v43 = v27;
    v34 = v44;
    v35 = v45;
    v32(v44, v33, v45);
    v36 = v56;
    v37 = *(v28 + 8);

    v37(v25, v17);
    v31 = *&v34[*(v35 + 36)];
    v38 = *(v14 + 8);

    v27 = v43;
    v38(v34, v35);
  }

  v61 = v31;
  v58 = 0u;
  v59 = 0u;
  v60 = 1;
  v39 = v46;
  v27(v46, v47, v18);
  v40 = v55;

  v41 = v51;

  sub_1D766FA5C(v50, v41, v62, v54, v40, &v61, &v58, v39, v49, v53, v52, v48, *(&v48 + 1));
}

uint64_t sub_1D76F4F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10, unint64_t a11)
{
  v27 = a4;
  v28 = a8;
  v30 = a1;
  v31 = a3;
  v29 = a9;
  *&v32 = a7;
  *(&v32 + 1) = a8;
  v33 = a10;
  v15 = type metadata accessor for AdRequest();
  v16 = sub_1D77046B0();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v26 - v18;
  v20 = *(a6 + 32);
  v36 = a11;
  v37 = 0;
  v38 = 0;
  v21 = a5 + *(v15 + 52);
  v35 = *(v21 + *(type metadata accessor for AdContext() + 36));
  v22 = *(a6 + 16);
  v32 = *a6;
  v33 = v22;
  v34 = v20;
  v23 = *(v15 - 8);
  (*(v23 + 16))(v19, a5, v15);
  (*(v23 + 56))(v19, 0, 1, v15);

  v24 = v27;

  return sub_1D766FA5C(v30, a2, &v36, v31, v24, &v35, &v32, v19, v29, a7, v28, a10, *(&a10 + 1));
}

uint64_t JournalEntry.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JournalEntry.createdDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D7702F50();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t JournalEntry.placementIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t JournalEntry.contentIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

__n128 JournalEntry.layout.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 72);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t ArticlePrerollAdContext.articleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1D768DF4C(v8, &v7);
}

uint64_t ArticlePrerollAdContext.channelData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v7[0] = v1[6];
  v7[1] = v2;
  v4 = v1[9];
  v8 = v1[8];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D7690E7C(v7, &v6);
}

double ArticlePrerollAdContext.videoData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 160);
  *a1 = result;
  return result;
}

uint64_t ArticlePrerollAdContext.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ArticlePrerollAdContext.sectionData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 200);
  a1[1] = v2;
}

uint64_t ArticlePrerollAdContext.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  v12 = *(v1 + 296);
  v4 = *(v1 + 232);
  v9[0] = *(v1 + 216);
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v2;
  v6 = *(v1 + 280);
  v10 = *(v1 + 264);
  v5 = v10;
  v11 = v6;
  *(a1 + 80) = v12;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  return sub_1D76C73A0(v9, v8, &qword_1EE0B0468);
}

uint64_t ArticlePrerollAdContext.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 352);
  v9 = *(v1 + 336);
  v10 = v2;
  v11 = *(v1 + 368);
  v3 = v11;
  v4 = *(v1 + 320);
  v8[0] = *(v1 + 304);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D76C73A0(v8, v7, &qword_1EE0B0088);
}

uint64_t ArticlePrerollAdContext.init(provider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = v43;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v8, &type metadata for UserAdData, v9);
  v10 = v43;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  AdContextDataProviding.data<A>(for:)(&type metadata for ArticleAdData, v11, &type metadata for ArticleAdData, v12);
  v110 = v90;
  v111 = v91;
  v112 = v92;
  v108 = v88;
  v109 = v89;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  AdContextDataProviding.data<A>(for:)(&type metadata for ChannelAdData, v13, &type metadata for ChannelAdData, v14);
  v104 = v84;
  v105 = v85;
  v106 = v86;
  v107 = v87;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  AdContextDataProviding.data<A>(for:)(&type metadata for VideoAdData, v15, &type metadata for VideoAdData, v16);
  v17 = v43;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  AdContextDataProviding.data<A>(for:)(&type metadata for PlacementAdData, v18, &type metadata for PlacementAdData, v19);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for IssueAdData, v20, &type metadata for IssueAdData, v21);
  v41 = v43;
  v22 = v43;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for SectionAdData, v23, &type metadata for SectionAdData, v24);
  v35 = v44;
  v25 = v43;
  v26 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for FeedAdData, v26, &type metadata for FeedAdData, v36);
  v100 = v80;
  v101 = v81;
  v102 = v82;
  v103 = v83;
  v98 = v78;
  v99 = v79;
  v27 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for FeedGroupAdData, v27, &type metadata for FeedGroupAdData, v37);
  v95 = v75;
  v96 = v76;
  v97 = v77;
  v94 = v74;
  v93 = v73;
  v28 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v28, &type metadata for ReferralAdData, v38);
  v34 = v43;
  v29 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ANFDocumentAdData, v29, &type metadata for ANFDocumentAdData, v39);
  v40 = v43;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ANFComponentAdData, v30, &type metadata for ANFComponentAdData, v31);
  v33 = v72;
  LOBYTE(__src[0]) = v43;
  *(&__src[0] + 1) = v43;
  __src[3] = v90;
  __src[4] = v91;
  __src[1] = v88;
  __src[2] = v89;
  __src[5] = v92;
  __src[6] = v84;
  __src[7] = v85;
  __src[8] = v86;
  __src[9] = v87;
  *&__src[10] = v43;
  BYTE8(__src[10]) = v43;
  __src[11] = v43;
  LOWORD(__src[12]) = v44;
  *(&__src[12] + 8) = v43;
  *(&__src[16] + 8) = v81;
  *(&__src[17] + 8) = v82;
  *(&__src[15] + 8) = v80;
  *(&__src[18] + 1) = v83;
  *(&__src[13] + 8) = v78;
  *(&__src[14] + 8) = v79;
  *&__src[23] = v77;
  __src[21] = v75;
  __src[22] = v76;
  __src[19] = v73;
  __src[20] = v74;
  BYTE8(__src[23]) = v43;
  *&__src[24] = v43;
  *(&__src[24] + 1) = v72;
  memcpy(a2, __src, 0x190uLL);
  sub_1D76F5CEC(__src, &v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v43) = v7;
  *(&v43 + 1) = v10;
  v46 = v110;
  v47 = v111;
  v44 = v108;
  v45 = v109;
  v48 = v112;
  v49 = v104;
  v50 = v105;
  v51 = v106;
  v52 = v107;
  v53 = v17;
  v54 = v41;
  v55 = v22;
  v56 = v35;
  v57 = v25;
  v61 = v101;
  v62 = v102;
  v60 = v100;
  v63 = v103;
  v58 = v98;
  v59 = v99;
  v68 = v97;
  v66 = v95;
  v67 = v96;
  v64 = v93;
  v65 = v94;
  v69 = v34;
  v70 = v40;
  v71 = v33;
  return sub_1D76F5D24(&v43);
}

uint64_t sub_1D76F5D54(char a1)
{
  result = 0x61746144707061;
  switch(a1)
  {
    case 1:
      v3 = 1919251317;
      return v3 | 0x6174614400000000;
    case 2:
      return 0x44656C6369747261;
    case 3:
      return 0x446C656E6E616863;
    case 4:
      v4 = 0x446F65646976;
      goto LABEL_13;
    case 5:
      return 0x6E656D6563616C70;
    case 6:
      v4 = 0x446575737369;
      goto LABEL_13;
    case 7:
      return 0x446E6F6974636573;
    case 8:
      v3 = 1684366694;
      return v3 | 0x6174614400000000;
    case 9:
      v4 = 0x4470756F7267;
LABEL_13:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 10:
      result = 0x6C61727265666572;
      break;
    case 11:
      result = 0x6D75636F44666E61;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D76F5EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D76F7CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D76F5EF0(uint64_t a1)
{
  v2 = sub_1D76F6720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F5F2C(uint64_t a1)
{
  v2 = sub_1D76F6720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArticlePrerollAdContext.encode(to:)(void *a1)
{
  sub_1D76F727C(0, &qword_1EC9BE0A0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v30 - v7;
  v37 = *v1;
  v36 = *(v1 + 1);
  v9 = *(v1 + 4);
  v73 = *(v1 + 3);
  v74 = v9;
  v10 = *(v1 + 6);
  v75 = *(v1 + 5);
  v76 = v10;
  v11 = *(v1 + 2);
  v71 = *(v1 + 1);
  v72 = v11;
  v12 = *(v1 + 9);
  v13 = *(v1 + 7);
  v78 = *(v1 + 8);
  v79 = v12;
  v77 = v13;
  v14 = *(v1 + 20);
  v35 = v1[168];
  v15 = *(v1 + 22);
  v34 = *(v1 + 23);
  v33 = *(v1 + 96);
  v16 = *(v1 + 26);
  *&v31 = *(v1 + 25);
  *(&v31 + 1) = v16;
  v32 = v15;
  v17 = *(v1 + 264);
  v18 = *(v1 + 280);
  v82 = *(v1 + 248);
  v83 = v17;
  v84 = v18;
  v85 = *(v1 + 37);
  v19 = *(v1 + 232);
  v80 = *(v1 + 216);
  v81 = v19;
  v90 = *(v1 + 46);
  v20 = *(v1 + 22);
  v88 = *(v1 + 21);
  v89 = v20;
  v21 = *(v1 + 20);
  v86 = *(v1 + 19);
  v87 = v21;
  HIDWORD(v30) = v1[376];
  v23 = *(v1 + 48);
  v22 = *(v1 + 49);
  v24 = a1[3];
  v25 = a1;
  v26 = v8;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_1D76F6720();
  sub_1D7704B10();
  LOBYTE(v52) = v37;
  LOBYTE(v49[0]) = 0;
  sub_1D7669D40();
  v27 = v38;
  sub_1D7704A00();
  if (!v27)
  {
    v28 = v35;
    v38 = v23;
    *&v52 = v36;
    LOBYTE(v49[0]) = 1;
    sub_1D7669394();

    sub_1D7704A00();

    v68 = v73;
    v69 = v74;
    v70 = v75;
    v66 = v71;
    v67 = v72;
    v65 = 2;
    sub_1D768DF4C(&v71, &v52);
    sub_1D768E278();
    sub_1D7704A00();
    v64[2] = v68;
    v64[3] = v69;
    v64[4] = v70;
    v64[0] = v66;
    v64[1] = v67;
    sub_1D768DF84(v64);
    v60 = v76;
    v61 = v77;
    v62 = v78;
    v63 = v79;
    v59 = 3;
    sub_1D7690E7C(&v76, &v52);
    sub_1D769220C();
    sub_1D7704A00();
    v58[0] = v60;
    v58[1] = v61;
    v58[2] = v62;
    v58[3] = v63;
    sub_1D76917F0(v58);
    *&v52 = v14;
    LOBYTE(v49[0]) = 4;
    sub_1D7685DF0();
    sub_1D7704A00();
    LOBYTE(v52) = v28;
    LOBYTE(v49[0]) = 5;
    sub_1D76794CC();
    sub_1D7704A00();
    *&v52 = v32;
    *(&v52 + 1) = v34;
    LOWORD(v53) = v33;
    LOBYTE(v49[0]) = 6;
    sub_1D76922B4();

    sub_1D77049B0();

    v52 = v31;
    LOBYTE(v49[0]) = 7;
    sub_1D7692308();

    sub_1D77049B0();

    v54 = v82;
    v55 = v83;
    v56 = v84;
    v57 = v85;
    v52 = v80;
    v53 = v81;
    v51 = 8;
    sub_1D76C73A0(&v80, v49, &qword_1EE0B0468);
    sub_1D766CFCC();
    sub_1D77049B0();
    v49[2] = v54;
    v49[3] = v55;
    v49[4] = v56;
    v50 = v57;
    v49[0] = v52;
    v49[1] = v53;
    sub_1D76939B0(v49, &qword_1EE0B0468);
    v46 = v88;
    v47 = v89;
    v48 = v90;
    v44 = v86;
    v45 = v87;
    v43 = 9;
    sub_1D76C73A0(&v86, v41, &qword_1EE0B0088);
    sub_1D7692260();
    sub_1D77049B0();
    v41[2] = v46;
    v41[3] = v47;
    v42 = v48;
    v41[0] = v44;
    v41[1] = v45;
    sub_1D76939B0(v41, &qword_1EE0B0088);
    LOBYTE(v39) = BYTE4(v30);
    v40 = 10;
    sub_1D768A434();
    sub_1D77049B0();
    v39 = v38;
    v40 = 11;
    sub_1D76A0B24();

    sub_1D77049B0();

    v39 = v22;
    v40 = 12;
    sub_1D76C8B20();

    sub_1D77049B0();
  }

  return (*(v5 + 8))(v26, v4);
}

unint64_t sub_1D76F6720()
{
  result = qword_1EC9BE0A8;
  if (!qword_1EC9BE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0A8);
  }

  return result;
}

uint64_t ArticlePrerollAdContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76F727C(0, &qword_1EC9BE0B0, MEMORY[0x1E69E6F48]);
  v29 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F6720();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30[0]) = 0;
  sub_1D7669CEC();
  sub_1D7704970();
  v10 = v31;
  LOBYTE(v30[0]) = 1;
  sub_1D76684E8();
  sub_1D7704970();
  v27 = v10;
  v28 = v31;
  v87 = 2;
  sub_1D768E224();
  sub_1D7704970();
  v114 = v90;
  v115 = v91;
  v116 = v92;
  v112 = v88;
  v113 = v89;
  v82 = 3;
  sub_1D7692D44();
  sub_1D7704970();
  v108 = v83;
  v109 = v84;
  v110 = v85;
  v111 = v86;
  LOBYTE(v30[0]) = 4;
  sub_1D7685D9C();
  sub_1D7704970();
  v11 = v31;
  LOBYTE(v30[0]) = 5;
  sub_1D7679440();
  sub_1D7704970();
  v24 = v31;
  LOBYTE(v30[0]) = 6;
  sub_1D7692DEC();
  sub_1D7704920();
  v23 = v31;
  v26 = v32;
  v22 = v33;
  LOBYTE(v30[0]) = 7;
  sub_1D7692E40();
  sub_1D7704920();
  v20 = a2;
  v21 = v31;
  v25 = v32;
  v75 = 8;
  sub_1D766CDD0();
  sub_1D7704920();
  v101 = v78;
  v102 = v79;
  v103 = v80;
  v104 = v81;
  v99 = v76;
  v100 = v77;
  v69 = 9;
  sub_1D7692D98();
  sub_1D7704920();
  v96 = v72;
  v97 = v73;
  v98 = v74;
  v95 = v71;
  v94 = v70;
  LOBYTE(v30[0]) = 10;
  sub_1D768AAE4();
  sub_1D7704920();
  v12 = v31;
  LOBYTE(v30[0]) = 11;
  sub_1D76A0AD0();
  sub_1D7704920();
  v19 = v31;
  v67 = 12;
  sub_1D76C99CC();
  sub_1D7704920();
  (*(v6 + 8))(v9, v29);
  v29 = v68;
  v13 = v27;
  LOBYTE(v30[0]) = v27;
  *(v30 + 1) = v117[0];
  DWORD1(v30[0]) = *(v117 + 3);
  v14 = v28;
  *(&v30[0] + 1) = v28;
  v30[3] = v114;
  v30[4] = v115;
  v30[1] = v112;
  v30[2] = v113;
  v30[8] = v110;
  v30[9] = v111;
  v30[6] = v108;
  v30[7] = v109;
  v30[5] = v116;
  *&v30[10] = v11;
  BYTE8(v30[10]) = v24;
  *(&v30[10] + 9) = *v107;
  HIDWORD(v30[10]) = *&v107[3];
  v15 = v25;
  *&v30[11] = v23;
  *(&v30[11] + 1) = v26;
  LOWORD(v30[12]) = v22;
  WORD3(v30[12]) = v106;
  *(&v30[12] + 2) = v105;
  *(&v30[12] + 1) = v21;
  *&v30[13] = v25;
  *(&v30[16] + 8) = v102;
  *(&v30[17] + 8) = v103;
  *(&v30[18] + 1) = v104;
  *(&v30[15] + 8) = v101;
  *(&v30[14] + 8) = v100;
  *(&v30[13] + 8) = v99;
  v30[21] = v96;
  v30[22] = v97;
  *&v30[23] = v98;
  v30[19] = v94;
  v30[20] = v95;
  BYTE8(v30[23]) = v12;
  *(&v30[23] + 9) = *v93;
  HIDWORD(v30[23]) = *&v93[3];
  v16 = v19;
  *&v30[24] = v19;
  *(&v30[24] + 1) = v68;
  memcpy(v20, v30, 0x190uLL);
  sub_1D76F5CEC(v30, &v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v31) = v13;
  *(&v31 + 1) = v117[0];
  HIDWORD(v31) = *(v117 + 3);
  v32 = v14;
  v35 = v114;
  v36 = v115;
  v33 = v112;
  v34 = v113;
  v40 = v110;
  v41 = v111;
  v38 = v108;
  v39 = v109;
  v37 = v116;
  v42 = v11;
  v43 = v24;
  *v44 = *v107;
  *&v44[3] = *&v107[3];
  v45 = v23;
  v46 = v26;
  v47 = v22;
  v49 = v106;
  v48 = v105;
  v50 = v21;
  v51 = v15;
  v55 = v102;
  v56 = v103;
  v57 = v104;
  v54 = v101;
  v53 = v100;
  v52 = v99;
  v60 = v96;
  v61 = v97;
  v62 = v98;
  v58 = v94;
  v59 = v95;
  v63 = v12;
  *v64 = *v93;
  *&v64[3] = *&v93[3];
  v65 = v16;
  v66 = v29;
  return sub_1D76F5D24(&v31);
}

void sub_1D76F727C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76F6720();
    v7 = a3(a1, &type metadata for ArticlePrerollAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id ArticlePrerollAdContext.newsSupplementalContext.getter()
{
  v38 = sub_1D77038A0();
  v1 = *(v38 - 8);
  v3 = MEMORY[0x1EEE9AC00](v38, v2);
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v37 - v6;
  v8 = *(v0 + 64);
  v60 = *(v0 + 48);
  v61 = v8;
  v9 = *(v0 + 96);
  v62 = *(v0 + 80);
  v63 = v9;
  v10 = *(v0 + 32);
  v58 = *(v0 + 16);
  v59 = v10;
  v11 = *(v0 + 144);
  v12 = *(v0 + 112);
  v65 = *(v0 + 128);
  v66 = v11;
  v64 = v12;
  v13 = *(v0 + 160);
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  v16 = *(v0 + 192);
  v17 = *(v0 + 208);
  v37[0] = *(v0 + 200);
  v37[1] = v14;
  v40 = v17;
  v72 = *(v0 + 296);
  v18 = *(v0 + 280);
  v70 = *(v0 + 264);
  v71 = v18;
  v19 = *(v0 + 248);
  v20 = *(v0 + 216);
  v68 = *(v0 + 232);
  v69 = v19;
  v67 = v20;
  v21 = *(v0 + 304);
  v22 = *(v0 + 320);
  v23 = *(v0 + 336);
  v24 = *(v0 + 352);
  v76 = *(v0 + 368);
  v74 = v23;
  v75 = v24;
  v73[0] = v21;
  v73[1] = v22;
  v41 = *(v0 + 376);
  v25 = *(v0 + 392);
  v42 = *(v0 + 384);
  v43 = v25;
  v26 = objc_allocWithZone(sub_1D7703D00());

  sub_1D768DF4C(&v58, &v50);
  sub_1D7690E7C(&v63, &v50);

  sub_1D76C73A0(v73, &v50, &qword_1EE0B0088);
  v27 = [v26 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  v52 = v60;
  v53 = v61;
  v54 = v62;
  v50 = v58;
  v51 = v59;
  v44 = v63;
  v45 = v64;
  v46 = v65;
  v47 = v66;
  sub_1D76B9740(&v50, &v44);
  v56[0] = v44;
  v56[1] = v45;
  v56[2] = v46;
  v56[3] = v47;
  sub_1D76939B0(v56, &qword_1EE0B02E8);
  v57[2] = v52;
  v57[3] = v53;
  v57[4] = v54;
  v57[0] = v50;
  v57[1] = v51;
  sub_1D76939B0(v57, &qword_1EE0B0300);
  if (v15)
  {

    sub_1D7703AD0();
    v28 = *(v1 + 104);
    v29 = *MEMORY[0x1E69C5F50];
    v30 = *MEMORY[0x1E69C5F58];
    v31 = v16;
    if (v16)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    v33 = v38;
    v28(v7, v32, v38);
    sub_1D7703B80();
    if ((v31 & 0x100) != 0)
    {
      v34 = v29;
    }

    else
    {
      v34 = v30;
    }

    v28(v39, v34, v33);
    sub_1D7703BE0();
  }

  if (v40 && *(&v67 + 1))
  {
    if ((BYTE8(v68) & 1) != 0 || v68 >= 1)
    {
    }

    sub_1D7703C10();
  }

  v46 = v69;
  v47 = v70;
  v48 = v71;
  v49 = v72;
  v44 = v67;
  v45 = v68;
  sub_1D76C73A0(&v67, &v50, &qword_1EE0B0468);
  sub_1D768078C(&v44);
  v52 = v46;
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v50 = v44;
  v51 = v45;
  sub_1D76939B0(&v50, &qword_1EE0B0468);
  if (*(&v73[0] + 1))
  {
    v35 = *(&v74 + 1);

    sub_1D7703A50();

    sub_1D7703A80();

    sub_1D7703A90();

    sub_1D77039C0();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1D7703AC0();
    sub_1D76939B0(v73, &qword_1EE0B0088);
  }

  if (v41 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1D7703B10();
  if (v42)
  {

    sub_1D7703CB0();
  }

  if (v43)
  {

    sub_1D7703B90();
  }

  return v27;
}

uint64_t ArticlePrerollAdContext.currentPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = v0[2];
  if (!v0[11] && *(v0[1] + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v5, v1);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t sub_1D76F7AA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D76F7AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76F7BA4()
{
  result = qword_1EC9BE0B8;
  if (!qword_1EC9BE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0B8);
  }

  return result;
}

unint64_t sub_1D76F7BFC()
{
  result = qword_1EC9BE0C0;
  if (!qword_1EC9BE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0C0);
  }

  return result;
}

unint64_t sub_1D76F7C54()
{
  result = qword_1EC9BE0C8;
  if (!qword_1EC9BE0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0C8);
  }

  return result;
}

uint64_t sub_1D76F7CA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461446F65646976 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_1D7704A30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6D75636F44666E61 && a2 == 0xEF61746144746E65 || (sub_1D7704A30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7717B90 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D7704A30();

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

uint64_t sub_1D76F80E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7703110();
  sub_1D7703100();
  if (qword_1EE0AEB40 != -1)
  {
    swift_once();
  }

  sub_1D77030F0();

  v25 = a2;
  v24 = v3;
  if (LOBYTE(v26[0]))
  {
    if (LOBYTE(v26[0]) == 1)
    {
      v7 = 0;
    }

    else
    {
      *&v26[0] = 0;
      MEMORY[0x1DA7000A0](v26, 8);
      v7 = (*&v26[0] & 0x20000) == 0;
    }
  }

  else
  {
    v7 = 1;
  }

  sub_1D767FE78();
  v9 = (a1 + *(v8 + 56));
  v10 = *v9;
  v11 = v9[1];
  v12 = a1[6];
  v23 = a1[5];
  v14 = *a1;
  v13 = a1[1];

  sub_1D76F4374(v14, v13, v7, v26);
  v15 = swift_allocObject();
  v16 = v26[5];
  *(v15 + 80) = v26[4];
  *(v15 + 96) = v16;
  *(v15 + 112) = v27;
  v17 = v26[1];
  *(v15 + 16) = v26[0];
  *(v15 + 32) = v17;
  v18 = v26[3];
  *(v15 + 48) = v26[2];
  *(v15 + 64) = v18;
  v19 = v24[5];
  v20 = v24[6];
  __swift_project_boxed_opaque_existential_1(v24 + 2, v19);
  v21 = (*(v20 + 8))(v19, v20);
  v28 = v7 ^ 1;
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v23;
  *(a3 + 40) = v12;
  *(a3 + 48) = v25;
  *(a3 + 56) = v15;
  *(a3 + 80) = &type metadata for DebugSponsorshipAdContentInfo;
  *(a3 + 88) = &off_1F52567E8;
  *(a3 + 96) = v21;
  *(a3 + 104) = v7 ^ 1;
}

uint64_t DebugAdContentInfo.identifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D76F8478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D76F84C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76F8524()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76F8664()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

NewsAds::CreativeType_optional __swiftcall CreativeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CreativeType.rawValue.getter()
{
  v1 = *v0;
  v2 = 7958113;
  v3 = 0x65766974616ELL;
  if (v1 != 6)
  {
    v3 = 0x65726F736E6F7073;
  }

  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x65526D756964656DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x647261646E617473;
  if (v1 != 2)
  {
    v5 = 0x656C62756F64;
  }

  if (*v0)
  {
    v2 = 0x656E6E6142796E61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D76F8934@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7958113;
  v5 = 0xE600000000000000;
  v6 = 0x65766974616ELL;
  if (v2 != 6)
  {
    v6 = 0x65726F736E6F7073;
    v5 = 0xE900000000000064;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656772616CLL;
  if (v2 != 4)
  {
    v8 = 0x65526D756964656DLL;
    v7 = 0xEF656C676E617463;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x647261646E617473;
  result = 0x656C62756F64;
  if (v2 != 2)
  {
    v10 = 0x656C62756F64;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x656E6E6142796E61;
    v3 = 0xE900000000000072;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D76F8B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6576697461657263 && a2 == 0xEC00000065707954)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D7704A30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D76F8B98(uint64_t a1)
{
  v2 = sub_1D76F8D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F8BD4(uint64_t a1)
{
  v2 = sub_1D76F8D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreativeAdData.encode(to:)(void *a1)
{
  sub_1D76F8FAC(0, &qword_1EC9BE0D0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F8D6C();
  sub_1D7704B10();
  v12 = v9;
  sub_1D76F8DC0();
  sub_1D7704A00();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D76F8D6C()
{
  result = qword_1EC9BE0D8;
  if (!qword_1EC9BE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0D8);
  }

  return result;
}

unint64_t sub_1D76F8DC0()
{
  result = qword_1EC9BE0E0;
  if (!qword_1EC9BE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0E0);
  }

  return result;
}

uint64_t CreativeAdData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D76F8FAC(0, &qword_1EC9BE0E8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F8D6C();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76F9010();
    sub_1D7704970();
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76F8FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76F8D6C();
    v7 = a3(a1, &type metadata for CreativeAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76F9010()
{
  result = qword_1EC9BE0F0;
  if (!qword_1EC9BE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0F0);
  }

  return result;
}

unint64_t sub_1D76F9068()
{
  result = qword_1EC9BE0F8;
  if (!qword_1EC9BE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0F8);
  }

  return result;
}

unint64_t sub_1D76F90BC(uint64_t a1)
{
  *(a1 + 8) = sub_1D76AA9D0();
  result = sub_1D76AA188();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D76F9150()
{
  result = qword_1EC9BE100;
  if (!qword_1EC9BE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE100);
  }

  return result;
}

unint64_t sub_1D76F91A8()
{
  result = qword_1EC9BE108;
  if (!qword_1EC9BE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE108);
  }

  return result;
}

unint64_t sub_1D76F9200()
{
  result = qword_1EC9BE110;
  if (!qword_1EC9BE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE110);
  }

  return result;
}

unint64_t sub_1D76F9254()
{
  result = qword_1EC9BE118;
  if (!qword_1EC9BE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE118);
  }

  return result;
}

uint64_t sub_1D76F92B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0x676E6967617473;
    if (a1 != 2)
    {
      v11 = 24945;
      v10 = 0xE200000000000000;
    }

    v12 = 0x69746375646F7270;
    if (a1)
    {
      v3 = 0xEA00000000006E6FLL;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v3;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x786F62646E6173;
    v5 = 0x316F6D6564;
    if (a1 != 7)
    {
      v5 = 0x326F6D6564;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = 0xE500000000000000;
    }

    v6 = 0xE400000000000000;
    v7 = 1953719668;
    if (a1 != 4)
    {
      v7 = 0x6C65766564;
      v6 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE700000000000000;
        if (v8 != 0x676E6967617473)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v13 = 0xE200000000000000;
        if (v8 != 24945)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v13 = 0xEA00000000006E6FLL;
      if (v8 != 0x69746375646F7270)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xE400000000000000;
      if (v8 != 1953719668)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v8 != 0x6C65766564)
      {
LABEL_52:
        v14 = sub_1D7704A30();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v13 = 0xE700000000000000;
    if (v8 != 0x786F62646E6173)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (a2 == 7)
    {
      if (v8 != 0x316F6D6564)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x326F6D6564)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v13)
  {
    goto LABEL_52;
  }

  v14 = 1;
LABEL_53:

  return v14 & 1;
}

uint64_t sub_1D76F952C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656C63697472;
  v3 = 0x416E656577746562;
  v4 = a1;
  v5 = 0x416E496F65646976;
  if (a1 == 5)
  {
    v6 = 0xEE00656C63697472;
  }

  else
  {
    v5 = 0x466E496F65646976;
    v6 = 0xEB00000000646565;
  }

  v7 = 0xEF656C6369747241;
  if (a1 != 3)
  {
    v7 = 0xEC00000064656546;
  }

  if (a1 <= 4u)
  {
    v5 = 0x6E4965766974616ELL;
    v6 = v7;
  }

  v8 = 0x6C63697472416E69;
  v9 = 0xE900000000000065;
  if (a1 != 1)
  {
    v8 = 0x646565466E69;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v8 = 0x416E656577746562;
    v9 = 0xEE00656C63697472;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000065;
        if (v10 != 0x6C63697472416E69)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x646565466E69)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        if (v10 != 0x416E496F65646976)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEB00000000646565;
        if (v10 != 0x466E496F65646976)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    v3 = 0x6E4965766974616ELL;
    if (a2 == 3)
    {
      v2 = 0xEF656C6369747241;
      if (v10 != 0x6E4965766974616ELL)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0xEC00000064656546;
  }

  if (v10 != v3)
  {
LABEL_37:
    v12 = sub_1D7704A30();
    goto LABEL_38;
  }

LABEL_34:
  if (v11 != v2)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1D76F9774(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1952867692;
    }

    else
    {
      v4 = 0x7468676972;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (a2 != 2)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6D6F74746F62;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76F9890(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7107189;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746567646977;
    }

    else
    {
      v4 = 0x6163696669746F6ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7474656C7377656ELL;
    }

    else
    {
      v4 = 7107189;
    }

    if (v3)
    {
      v5 = 0xEA00000000007265;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x746567646977;
  if (a2 != 2)
  {
    v8 = 0x6163696669746F6ELL;
    v7 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v2 = 0x7474656C7377656ELL;
    v6 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76F99DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x65766974616ELL;
  if (a1 != 6)
  {
    v5 = 0x65726F736E6F7073;
    v4 = 0xE900000000000064;
  }

  v6 = 0xE500000000000000;
  v7 = 0x656772616CLL;
  if (a1 != 4)
  {
    v7 = 0x65526D756964656DLL;
    v6 = 0xEF656C676E617463;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x647261646E617473;
  if (a1 != 2)
  {
    v9 = 0x656C62756F64;
    v8 = 0xE600000000000000;
  }

  v10 = 0x656E6E6142796E61;
  if (a1)
  {
    v3 = 0xE900000000000072;
  }

  else
  {
    v10 = 7958113;
  }

  if (a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  if (a1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

  if (v2 <= 3)
  {
    v13 = v3;
  }

  else
  {
    v13 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = 0xE600000000000000;
        if (v12 != 0x65766974616ELL)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v14 = 0xE900000000000064;
        if (v12 != 0x65726F736E6F7073)
        {
LABEL_47:
          v15 = sub_1D7704A30();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v14 = 0xE500000000000000;
      if (v12 != 0x656772616CLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v14 = 0xEF656C676E617463;
      if (v12 != 0x65526D756964656DLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 0xE800000000000000;
      if (v12 != 0x647261646E617473)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (v12 != 0x656C62756F64)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v14 = 0xE900000000000072;
    if (v12 != 0x656E6E6142796E61)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v14 = 0xE300000000000000;
    if (v12 != 7958113)
    {
      goto LABEL_47;
    }
  }

  if (v13 != v14)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_1D76F9C5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7958113;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xED00007468676965;
    v4 = 0xE500000000000000;
    if (a1 == 2)
    {
      v6 = 0x685F656C62756F64;
    }

    else
    {
      v6 = 0x656772616CLL;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE800000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x647261646E617473;
    }

    else
    {
      v6 = 7958113;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE300000000000000;
  v9 = 0x685F656C62756F64;
  v10 = 0xED00007468676965;
  if (a2 != 2)
  {
    v9 = 0x656772616CLL;
    v10 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x647261646E617473;
    v8 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D7704A30();
  }

  return v13 & 1;
}

uint64_t sub_1D76F9DA4()
{
  sub_1D77042D0();
}

uint64_t sub_1D76F9ED0()
{
  sub_1D77042D0();
}

uint64_t AppAdData.ContentEnvironment.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x676E6967617473;
    if (v1 != 2)
    {
      v7 = 24945;
    }

    if (*v0)
    {
      v6 = 0x69746375646F7270;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x786F62646E6173;
    v3 = 0x316F6D6564;
    if (v1 != 7)
    {
      v3 = 0x326F6D6564;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 1953719668;
    if (v1 != 4)
    {
      v4 = 0x6C65766564;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

NewsAds::AppAdData::ContentEnvironment_optional __swiftcall AppAdData.ContentEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D76FA15C()
{
  sub_1D7704AD0();
  sub_1D76F9DA4();
  return sub_1D7704AF0();
}

uint64_t sub_1D76FA1AC()
{
  sub_1D7704AD0();
  sub_1D76F9DA4();
  return sub_1D7704AF0();
}

uint64_t sub_1D76FA1FC@<X0>(uint64_t *a1@<X8>)
{
  result = AppAdData.ContentEnvironment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D76FA308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D771A230 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D7704A30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D76FA39C(uint64_t a1)
{
  v2 = sub_1D76FA570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76FA3D8(uint64_t a1)
{
  v2 = sub_1D76FA570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppAdData.encode(to:)(void *a1)
{
  sub_1D76FA7B0(0, &qword_1EC9BE120, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76FA570();
  sub_1D7704B10();
  v12 = v9;
  sub_1D76FA5C4();
  sub_1D7704A00();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D76FA570()
{
  result = qword_1EC9BE128;
  if (!qword_1EC9BE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE128);
  }

  return result;
}

unint64_t sub_1D76FA5C4()
{
  result = qword_1EC9BE130;
  if (!qword_1EC9BE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE130);
  }

  return result;
}

uint64_t AppAdData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D76FA7B0(0, &qword_1EC9BE138, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76FA570();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76FA814();
    sub_1D7704970();
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76FA7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76FA570();
    v7 = a3(a1, &type metadata for AppAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76FA814()
{
  result = qword_1EC9BE140;
  if (!qword_1EC9BE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE140);
  }

  return result;
}

unint64_t sub_1D76FA86C()
{
  result = qword_1EC9BE148;
  if (!qword_1EC9BE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE148);
  }

  return result;
}

unint64_t sub_1D76FA914()
{
  result = qword_1EC9BE150;
  if (!qword_1EC9BE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE150);
  }

  return result;
}

unint64_t sub_1D76FA96C()
{
  result = qword_1EC9BE158;
  if (!qword_1EC9BE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE158);
  }

  return result;
}

unint64_t sub_1D76FA9C4()
{
  result = qword_1EC9BE160;
  if (!qword_1EC9BE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE160);
  }

  return result;
}

unint64_t sub_1D76FAA18()
{
  result = qword_1EC9BE168;
  if (!qword_1EC9BE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE168);
  }

  return result;
}

uint64_t sub_1D76FAA6C()
{
  v1 = v0;
  *(v0 + 16) = 1;
  if (qword_1EE0B0BF8 != -1)
  {
    swift_once();
  }

  sub_1D76C60CC();
  swift_allocObject();

  *(v0 + 24) = sub_1D7703160();
  swift_allocObject();

  *(v0 + 32) = sub_1D7703160();
  sub_1D76C6124();
  swift_allocObject();

  *(v0 + 40) = sub_1D7703160();
  swift_allocObject();
  swift_weakInit();

  v2 = sub_1D77030C0();

  *(v1 + 16) = v2 & 1;
  return v1;
}

uint64_t sub_1D76FABF8(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

void *MastheadSponsorship.adKeywords.getter()
{
  if (!*v0)
  {
    return &unk_1F524E970;
  }

  v1 = [*v0 adTargetingKeywords];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1D7704400();

  return v3;
}

uint64_t MastheadSponsorship.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v14 = 677863764;
    v2 = [v1 identifier];
    v3 = sub_1D7704260();
    v5 = v4;

    MEMORY[0x1DA6FF0D0](v3, v5);

    MEMORY[0x1DA6FF0D0](8236, 0xE200000000000000);
    v6 = [v1 adTargetingKeywords];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D7704400();
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v10 = MEMORY[0x1DA6FF1E0](v8, MEMORY[0x1E69E6158]);
    v12 = v11;

    MEMORY[0x1DA6FF0D0](v10, v12);
  }

  else
  {
    v14 = 0x287961646F54;
    v9 = MEMORY[0x1DA6FF1E0](&unk_1F524E910, MEMORY[0x1E69E6158]);
    MEMORY[0x1DA6FF0D0](v9);

    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
  }

  return v14;
}

uint64_t MastheadSponsorship.tagId.getter()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = [*v0 identifier];
  v2 = sub_1D7704260();

  return v2;
}

uint64_t MastheadSponsorship.isSponsorshipEligible(for:)(void *a1)
{
  v3 = *v1;
  sub_1D7703110();
  sub_1D7703100();
  if (qword_1EE0B0A10 != -1)
  {
    swift_once();
  }

  sub_1D77030F0();

  if (v5)
  {
    return 1;
  }

  if (v3)
  {
    return [v3 sponsoredFeedEligible];
  }

  if ([a1 respondsToSelector_])
  {
    return [a1 isTodaySponsorshipEligible];
  }

  return 0;
}

void sub_1D76FB00C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D76FB0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v23[1] = a2;
  v24 = a3;
  v6 = sub_1D77040D0();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D7704110();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7702FA0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v25 = *(v4 + 16);
  (*(v15 + 16))(v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  (*(v15 + 32))(v19 + v18, v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7672F74;
  aBlock[3] = v26;
  v20 = _Block_copy(aBlock);
  sub_1D77040F0();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D7670768(&qword_1EE0AEDA8, MEMORY[0x1E69E7F60]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1D76FBBFC(0, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D76FBB4C(&qword_1EE0AED88, &qword_1EE0AED90, v21);
  sub_1D77046E0();
  MEMORY[0x1DA6FF3D0](0, v13, v9, v20);
  _Block_release(v20);
  (*(v28 + 8))(v9, v6);
  (*(v10 + 8))(v13, v27);
}

void sub_1D76FB430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v18 = a5;
  v8 = sub_1D7702FA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = objc_opt_self();
  v13 = sub_1D7702F80();
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D76FB00C;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  [v12 *v18];
  _Block_release(v16);
}

void sub_1D76FB5F0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1EE0AE8B8 != -1)
    {
      swift_once();
    }

    sub_1D7704590();
    sub_1D76FBBFC(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D7708FD0;
    v4 = sub_1D7702F70();
    v6 = v5;
    v7 = MEMORY[0x1E69E6158];
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v8 = sub_1D7668854();
    *(v3 + 64) = v8;
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    swift_getErrorValue();
    v9 = sub_1D7704A80();
    *(v3 + 96) = v7;
    *(v3 + 104) = v8;
    *(v3 + 72) = v9;
    *(v3 + 80) = v10;
    sub_1D7703ED0();
  }

  else
  {
    if (qword_1EE0AE8B8 != -1)
    {
      swift_once();
    }

    sub_1D76FBBFC(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7708FE0;
    v12 = sub_1D7702F70();
    v14 = v13;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1D7668854();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_1D77045A0();
    sub_1D7703ED0();
  }
}

uint64_t sub_1D76FB874()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D76FB8D0()
{
  v13 = sub_1D77045E0();
  v0 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D77045C0();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1D7704110();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v12 = sub_1D7669BD8();
  sub_1D77040E0();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D7670768(&qword_1EE0AED38, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1D76FBBFC(0, &qword_1EE0AED60, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D76FBB4C(&qword_1EE0AED58, &qword_1EE0AED60, v8);
  sub_1D77046E0();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v13);
  v9 = sub_1D7704610();
  v10 = v14;
  *(v14 + 16) = v9;
  return v10;
}

uint64_t sub_1D76FBB4C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D76FBBFC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D76FBBFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroyTm()
{
  v1 = sub_1D7702FA0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.playbackReadyToStart()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v1)
  {
    [*(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper) mediaLoaded];
    v2 = *(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata);
    [v2 naturalSize];
    v4 = v3;
    [v2 naturalSize];
    *&v5 = v5;
    *&v6 = v4;

    [v1 videoChosenWithVideoWidth:v6 videoHeight:v5];
  }
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.playbackStarted()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v1)
  {
    [v1 mediaStarted];
  }
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.playbackFinished()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v1)
  {
    [v1 mediaFinished];
  }
}

void VideoAdProviderMetricsHelper.playbackFailedWithError(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_diagnosticMetricsHelper);
  if (a1)
  {
    swift_getErrorValue();
    sub_1D7704A80();
  }

  v3 = sub_1D7704230();

  [v2 mediaPlaybackFailedWithReason_];
}

const char **sub_1D76FC034(const char **result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v3)
  {
    v5 = result;
    [*(v2 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata) time];
    v6 = *v5;

    return [v3 v6];
  }

  return result;
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.muteStateChanged(_:)(Swift::Bool a1)
{
  if (!a1)
  {
    [*(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata) volume];
  }

  v2 = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v2)
  {
    [*(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata) time];

    [v2 mediaVolumeChangedAtPosition_volume_];
  }
}

id VideoAdProviderMetricsHelper.playbackPassed(quartile:)(id result)
{
  if (result == 3)
  {
    result = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (!result)
    {
      return result;
    }

    v2 = 75;
    return [result mediaProgress_];
  }

  if (result == 2)
  {
    result = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (!result)
    {
      return result;
    }

    v2 = 50;
    return [result mediaProgress_];
  }

  if (result == 1)
  {
    result = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (result)
    {
      v2 = 25;
      return [result mediaProgress_];
    }
  }

  return result;
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.tapped(toToggleControlVisibility:)(Swift::Bool toToggleControlVisibility)
{
  if (!toToggleControlVisibility)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (v2)
    {
      [*(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata) time];

      [v2 mediaShowControlsAtPosition_];
    }
  }
}

const char **sub_1D76FC244(const char **result)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v2)
  {
    v3 = result;
    [*(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata) time];
    v4 = *v3;

    return [v2 v4];
  }

  return result;
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.willUnload()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v1)
  {
    [v1 mediaUserExitedArticle];
  }
}

id VideoAdProviderMetricsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoAdProviderMetricsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D76FC5D4(char *a1, uint64_t a2, SEL *a3, char a4)
{
  v4 = *&a1[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper];
  if (v4)
  {
    v7 = *&a1[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata];
    v8 = a1;
    [v7 time];
    [v4 *a3];
  }
}

void sub_1D76FC7B8(char *a1, uint64_t a2, SEL *a3)
{
  v3 = *&a1[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper];
  if (v3)
  {
    v5 = *&a1[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata];
    v6 = a1;
    [v5 time];
    [v3 *a3];
  }
}

id VideoAdProviderFactory.__allocating_init(adManager:adRequestStore:journal:appConfigurationManager:prerollAdRequester:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = sub_1D766EAEC(a1, a2, a3, a4, a5);
  (*(*(*(v6 + 11) - 8) + 8))(a5);
  return v13;
}

id sub_1D76FC980(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v101 = a4;
  v97 = a3;
  v106 = a1;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for PrerollAdPlacement();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v100 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v96 = &v86 - v14;
  v95 = type metadata accessor for PrerollAd();
  v16 = MEMORY[0x1EEE9AC00](v95, v15);
  v98 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v103 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v99 = &v86 - v22;
  v23 = *((v8 & v7) + 0x60);
  v108 = *((v8 & v7) + 0x50);
  v109[0] = v108;
  v105 = v9;
  v109[1] = v9;
  v107 = v23;
  v109[2] = v23;
  v109[3] = &protocol witness table for PrerollAdPlacement;
  v24 = type metadata accessor for AdRequest();
  v25 = sub_1D77046B0();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v102 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v86 - v32;
  v34 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v31, v35);
  v37 = (&v86 - v36);
  v38 = *a2;
  v39 = a2[1];
  v104 = a2;
  v40 = v38;
  LOBYTE(v109[0]) = 0;
  AdRequestStore.request(for:behavior:)(v38, v39, v109, v33);
  if ((*(v34 + 48))(v33, 1, v24) == 1)
  {
    (*(v26 + 8))(v33, v25);
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    sub_1D7704590();
    sub_1D766DF6C();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1D7708FE0;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1D7668854();
    *(v41 + 32) = v40;
    *(v41 + 40) = v39;

    sub_1D7703ED0();

    return 0;
  }

  else
  {
    v94 = v39;
    v89 = v26;
    v87 = v25;
    v92 = v34;
    v42 = *(v34 + 32);
    v93 = v24;
    v42(v37, v33, v24);
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v43 = qword_1EE0AF010;
    sub_1D7704580();
    sub_1D766DF6C();
    v88 = v44;
    v45 = swift_allocObject();
    v86 = xmmword_1D7708FD0;
    *(v45 + 16) = xmmword_1D7708FD0;
    v46 = MEMORY[0x1E69E6158];
    *(v45 + 56) = MEMORY[0x1E69E6158];
    v47 = sub_1D7668854();
    v48 = v94;
    *(v45 + 32) = v40;
    *(v45 + 40) = v48;
    v49 = *v37;
    v50 = v37[1];
    *(v45 + 96) = v46;
    *(v45 + 104) = v47;
    *(v45 + 64) = v47;
    *(v45 + 72) = v49;
    *(v45 + 80) = v50;

    v90 = v43;
    sub_1D7703ED0();

    v51 = (v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x70));
    v91 = v40;
    v52 = v51[3];
    v53 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v54 = *(v53 + 24);
    v55 = type metadata accessor for PrerollAdProvider();
    v54(v109, v106, v37, v108, v55, v105, v107, &protocol witness table for PrerollAdProvider, &protocol witness table for PrerollAdPlacement, v52, v53);
    v106 = v47;
    v57 = v37;
    v58 = MEMORY[0x1E69E7D40];
    v59 = v109[0];
    v60 = v96;
    sub_1D76FD734(v104, v96, type metadata accessor for PrerollAdPlacement);
    v61 = v59[5];
    v62 = v59[6];
    v105 = v59;
    __swift_project_boxed_opaque_existential_1(v59 + 2, v61);
    v63 = (*(v62 + 8))(v61, v62);
    v64 = [v63 promotedContentVideo];

    v65 = v103;
    sub_1D76FD734(v60, &v103[*(v95 + 24)], type metadata accessor for PrerollAdPlacement);
    *v65 = v64;
    v66 = [v64 promotedContentInfo];
    if (v66)
    {
      v67 = v66;
      v68 = sub_1D77037A0();
      v70 = v69;
    }

    else
    {
      v68 = 0;
      v70 = 0xE000000000000000;
    }

    v71 = v58;
    v72 = v57;
    v73 = v94;
    sub_1D76FD79C(v60, type metadata accessor for PrerollAdPlacement);
    v74 = v103;
    *(v103 + 1) = v68;
    *(v74 + 16) = v70;
    v75 = v99;
    sub_1D76FD6D0(v74, v99);
    type metadata accessor for VideoAdInteractionPresentationHandler();
    v76 = swift_allocObject();
    swift_unknownObjectUnownedInit();

    sub_1D7703E20();
    v77 = *(v5 + *((*v71 & *v5) + 0x80));
    v78 = v91;
    Journal.addRequestedEntry(request:placementIdentifier:contentIdentifier:)(v57, v91, v73, 0, 0);
    sub_1D7704580();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1D7708FE0;
    v80 = v106;
    *(v79 + 56) = MEMORY[0x1E69E6158];
    *(v79 + 64) = v80;
    *(v79 + 32) = v78;
    *(v79 + 40) = v73;

    sub_1D7703ED0();

    type metadata accessor for VideoAdProvider();
    v81 = v98;
    sub_1D76FD734(v75, v98, type metadata accessor for PrerollAd);
    v82 = v100;
    sub_1D76FD734(v104, v100, type metadata accessor for PrerollAdPlacement);
    v83 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x88));

    v84 = [v83 possiblyUnfetchedAppConfiguration];
    sub_1D7667C54(v101, v109);
    v85 = sub_1D76B6BE4(v81, v82, v77, v72, v84, v76, v109);

    (*(v92 + 8))(v72, v93);
    sub_1D76FD79C(v75, type metadata accessor for PrerollAd);
    return v85;
  }
}

id VideoAdProviderFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoAdProviderFactory.__deallocating_deinit()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoAdProviderFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t sub_1D76FD5A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  __swift_destroy_boxed_opaque_existential_1(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x70));

  swift_unknownObjectRelease();
  v5 = *(*(*((v4 & v2) + 0x58) - 8) + 8);
  v6 = a1 + *((*v3 & *a1) + 0x90);

  return v5(v6);
}

uint64_t sub_1D76FD6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrerollAd();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D76FD734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D76FD79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D76FD8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000021 && 0x80000001D771A670 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D7704A30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D76FD94C(uint64_t a1)
{
  v2 = sub_1D76FDB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76FD988(uint64_t a1)
{
  v2 = sub_1D76FDB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InterstitialAdData.encode(to:)(void *a1)
{
  sub_1D76FDCE0(0, &qword_1EC9BE188, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76FDB0C();
  sub_1D7704B10();
  sub_1D77049F0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D76FDB0C()
{
  result = qword_1EC9BE190;
  if (!qword_1EC9BE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE190);
  }

  return result;
}

uint64_t InterstitialAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D76FDCE0(0, &qword_1EC9BE198, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76FDB0C();
  sub_1D7704B00();
  if (!v2)
  {
    v11 = sub_1D7704960();
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76FDCE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76FDB0C();
    v7 = a3(a1, &type metadata for InterstitialAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76FDD44(uint64_t a1)
{
  *(a1 + 8) = sub_1D76DE4FC();
  result = sub_1D76DDA74();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D76FDD8C(void *a1)
{
  sub_1D76FDCE0(0, &qword_1EC9BE188, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76FDB0C();
  sub_1D7704B10();
  sub_1D77049F0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D76FDEF8()
{
  result = qword_1EC9BE1A0;
  if (!qword_1EC9BE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE1A0);
  }

  return result;
}

unint64_t sub_1D76FDF50()
{
  result = qword_1EC9BE1A8;
  if (!qword_1EC9BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE1A8);
  }

  return result;
}

unint64_t sub_1D76FDFA8()
{
  result = qword_1EC9BE1B0;
  if (!qword_1EC9BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE1B0);
  }

  return result;
}

uint64_t sub_1D76FE020(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = objc_opt_self();
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1D77043F0();
  [v4 addClientToSegments:v6 replaceExisting:1 privateSegment:v3 ^ 1u];

  if (qword_1EE0AE9A0 != -1)
  {
    swift_once();
  }

  sub_1D766DF6C();
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_1D7708FD0;
  v9 = v3 == 0;
  if (v3)
  {
    v10 = 0x63696C627570;
  }

  else
  {
    v10 = 0x65746176697270;
  }

  if (v9)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  *(v7 + 56) = v5;
  *(v7 + 64) = sub_1D7668854();
  v8[4] = v10;
  v8[5] = v11;
  sub_1D76697B0();
  v8[12] = v12;
  v8[13] = sub_1D769710C();
  v8[9] = a1;

  sub_1D77045A0();
  sub_1D7703ED0();
}

uint64_t sub_1D76FE198(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D767FC48();
  result = sub_1D7703410();
  if (v4)
  {
    type metadata accessor for PrerollAdProvider();
    v2 = swift_allocObject();
    sub_1D7667CB8(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D76FE254(void *a1, void (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D767FC48();
  result = sub_1D7703410();
  if (v6)
  {
    a2(0);
    v4 = swift_allocObject();
    type metadata accessor for DebugBannerAdProvider();
    swift_allocObject();
    *(v4 + 56) = sub_1D76FAA6C();
    sub_1D7667CB8(&v5, v4 + 16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D76FE338(void *a1, void (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D767FC48();
  result = sub_1D7703410();
  if (v6)
  {
    a2(0);
    v4 = swift_allocObject();
    *(v4 + 56) = 0;
    sub_1D7667CB8(&v5, v4 + 16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AdPlacementPolicyValidator.__allocating_init(layoutEnvironmentProvider:viewportEnvironmentProvider:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  AdPlacementPolicyValidator.init(layoutEnvironmentProvider:viewportEnvironmentProvider:)(a1, a2);
  return v4;
}

uint64_t AdPlacementPolicyValidator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return v0;
}

uint64_t AdPlacementPolicyValidator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t AdPlacementPolicyValidator.validatePlacement(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766FC6C(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7708FD0;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D7668854();
  *(v3 + 64) = v5;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  type metadata accessor for CGPoint(0);

  sub_1D7704850();
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_1D77045A0();
  sub_1D7703ED0();

  if (qword_1EE0B0A78 != -1)
  {
    swift_once();
  }

  sub_1D76707B0(qword_1EE0AF420, v6, type metadata accessor for AdPlacementPolicyValidator);
  sub_1D7703070();
  sub_1D76FF780(0, &qword_1EE0B0848, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D77036E0();
}

uint64_t sub_1D76FE848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  *(v21 + 32) = a7;
  *(v21 + 40) = a9;
  *(v21 + 48) = a10;
  *(v21 + 56) = a3;
  *(v21 + 64) = a4;
  *(v21 + 72) = sub_1D76FF634;
  *(v21 + 80) = v20;

  v22 = sub_1D7703640();
  v24 = v23;
  v25 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_1D768CF54(0, v25[2] + 1, 1, v25);
    *v24 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1D768CF54((v27 > 1), v28 + 1, 1, v25);
    *v24 = v25;
  }

  v25[2] = v28 + 1;
  v29 = &v25[2 * v28];
  v29[4] = sub_1D76FF65C;
  v29[5] = v21;
  v22(v33, 0);

  if (a8)
  {

    sub_1D7703650();

    if (*(v33[0] + 16))
    {
      v31 = *(v33[0] + 32);

      v31(v32);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D76FEA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  sub_1D76FF690();
  sub_1D7703720();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a8;
  *(v17 + 40) = a9;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;

  v18 = sub_1D7703620();
  sub_1D77036C0();

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a8;
  *(v19 + 48) = a9;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1D76FF700;
  *(v20 + 24) = v19;
  sub_1D76FF780(0, &qword_1EE0AED98, &type metadata for AdPolicyFailure, MEMORY[0x1E69E62F8]);

  sub_1D77036A0();

  sub_1D7669BD8();
  v21 = sub_1D77045F0();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a8;
  *(v22 + 40) = a9;
  *(v22 + 48) = a4;
  *(v22 + 56) = a5;
  *(v22 + 64) = a6;
  *(v22 + 72) = a7;
  *(v22 + 80) = a1;

  sub_1D77036A0();
}

uint64_t sub_1D76FECFC(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);
  (*(v3 + 8))(v2, v3);
  v4 = a1[10];
  v5 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v4);
  (*(v5 + 8))(v4, v5);
  v6 = sub_1D7703620();
  v7 = sub_1D7703610();

  return v7;
}

void sub_1D76FEDCC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766FC6C(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7708FD0;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D7668854();
  *(v7 + 64) = v9;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  swift_getErrorValue();

  v10 = sub_1D7704A80();
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  sub_1D77045A0();
  sub_1D7703ED0();

  sub_1D76FF7D0();
  v12 = swift_allocError();
  *v13 = a1;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = a1;
  a4(v12);
}

char *sub_1D76FEF80(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v11 = a2[2];
  *&v44[56] = a2[3];
  v12 = a2[5];
  *&v44[72] = a2[4];
  *&v44[88] = v12;
  *&v44[104] = a2[6];
  v13 = a2[1];
  *&v44[8] = *a2;
  *&v44[24] = v13;
  v14 = *a1;
  *&v44[40] = v11;
  *v44 = v14;
  swift_beginAccess();
  v15 = *(a3 + 96);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;

    v18 = v16 - 1;
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D7667C54(v17, v41);
      v20 = v42;
      v21 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v33[0] = a4;
      v33[1] = a5;
      *&v33[2] = a6;
      *&v33[3] = a7;
      v31[4] = *&v44[64];
      v31[5] = *&v44[80];
      v31[6] = *&v44[96];
      v32 = *&v44[112];
      v31[0] = *v44;
      v31[1] = *&v44[16];
      v31[2] = *&v44[32];
      v31[3] = *&v44[48];
      (*(v21 + 8))(v34, v33, v31, v20, v21);
      v22 = v34[0];
      v23 = v34[1];
      v38 = v35;
      v39 = v36;
      v40 = v37;
      __swift_destroy_boxed_opaque_existential_1(v41);
      if (v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D768C5D8(0, *(v19 + 2) + 1, 1, v19);
        }

        v25 = *(v19 + 2);
        v24 = *(v19 + 3);
        if (v25 >= v24 >> 1)
        {
          v19 = sub_1D768C5D8((v24 > 1), v25 + 1, 1, v19);
        }

        *(v19 + 2) = v25 + 1;
        v26 = &v19[64 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v23;
        v27 = v38;
        v28 = v40;
        *(v26 + 4) = v39;
        *(v26 + 5) = v28;
        *(v26 + 3) = v27;
      }

      if (!v18)
      {
        break;
      }

      --v18;
      v17 += 40;
    }

    sub_1D76FF9A8(v44);
  }

  else
  {

    sub_1D76FF9A8(v44);
    return MEMORY[0x1E69E7CC0];
  }

  return v19;
}

uint64_t sub_1D76FF1B4(uint64_t *a1, unint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, void (*a6)(uint64_t))
{
  v7 = a3;
  v8 = a2;
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (!v10)
  {
    v14 = a6;
    if (qword_1EE0AF008 != -1)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v34[5] = v6;
  v34[0] = MEMORY[0x1E69E7CC0];
  sub_1D76970EC(0, v10, 0);
  v11 = v34[0];
  v12 = (v9 + 80);
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v34[0] = v11;
    v8 = *(v11 + 16);
    v15 = *(v11 + 24);

    if (v8 >= v15 >> 1)
    {
      sub_1D76970EC((v15 > 1), v8 + 1, 1);
      v11 = v34[0];
    }

    *(v11 + 16) = v8 + 1;
    v16 = v11 + 16 * v8;
    *(v16 + 32) = v13;
    *(v16 + 40) = v14;
    v12 += 8;
    --v10;
  }

  while (v10);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766FC6C(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7708FD0;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D7668854();
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  sub_1D76FF780(0, &qword_1EE0AED80, v18, MEMORY[0x1E69E62F8]);
  *(v17 + 96) = v19;
  *(v17 + 104) = sub_1D769710C();
  *(v17 + 72) = v11;

  sub_1D77045A0();
  sub_1D7703ED0();

  sub_1D76FF7D0();
  v20 = swift_allocError();
  *v21 = v9;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;

  a4(v20);

  while (1)
  {

    sub_1D7703650();

    v24 = *(v34[0] + 16);

    if (!v24)
    {
      break;
    }

    v7 = v34;
    v26 = sub_1D7703640();
    if (*(*v27 + 16))
    {
      v28 = v26;
      sub_1D76FF8E8(0, 1);
      v28(v34, 0);

      sub_1D7703650();

      if (!*(v34[0] + 16))
      {
      }

      v29 = *(v34[0] + 32);

      v29(v30);
    }

    __break(1u);
LABEL_18:
    swift_once();
LABEL_10:
    sub_1D766FC6C(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D7708FE0;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1D7668854();
    *(v22 + 32) = v8;
    *(v22 + 40) = v7;

    sub_1D77045A0();
    sub_1D7703ED0();

    v14(v23);
  }

  return result;
}

void sub_1D76FF690()
{
  if (!qword_1EE0AF548)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0AF548);
    }
  }
}

uint64_t sub_1D76FF710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(a1, a1 + 8);
  *a2 = result;
  return result;
}

void sub_1D76FF780(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D76FF7D0()
{
  result = qword_1EE0B02E0;
  if (!qword_1EE0B02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B02E0);
  }

  return result;
}

unint64_t sub_1D76FF824(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_1D767050C();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D76FF8E8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D768CF54(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1D76FF824(v6, a2, 0);
  *v2 = v4;
  return result;
}

id DebugJournalViewController.__allocating_init(commandCenter:journal:presentationOptions:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v11 = *a3;
  v10 = a3[1];
  v12 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView;
  *&v9[v12] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = &v9[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier];
  *v13 = v11;
  *(v13 + 1) = v10;
  v14 = &v9[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v9[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal];
  *v15 = v11;
  *(v15 + 1) = v10;
  v16 = *(a3 + 4);
  *(v15 + 3) = *(a3 + 3);
  *(v15 + 4) = v16;
  v17 = *(a3 + 2);
  *(v15 + 1) = *(a3 + 1);
  *(v15 + 2) = v17;
  v18 = *(a3 + 8);
  *(v15 + 7) = *(a3 + 7);
  *(v15 + 8) = v18;
  v19 = *(a3 + 6);
  *(v15 + 5) = *(a3 + 5);
  *(v15 + 6) = v19;
  *&v9[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions] = a4;
  v21.receiver = v9;
  v21.super_class = v4;

  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t DebugJournalViewController.PresentationOptions.hashValue.getter()
{
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](0);
  return sub_1D7704AF0();
}

unint64_t sub_1D76FFB90@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D770292C(*a1);
  *a2 = result;
  return result;
}

uint64_t DebugJournalViewController.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier);

  return v1;
}

id DebugJournalViewController.init(commandCenter:journal:presentationOptions:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v11 = *a3;
  v10 = a3[1];
  v12 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = &v4[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier];
  *v13 = v11;
  *(v13 + 1) = v10;
  v14 = &v4[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v4[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal];
  *v15 = v11;
  *(v15 + 1) = v10;
  v16 = *(a3 + 4);
  *(v15 + 3) = *(a3 + 3);
  *(v15 + 4) = v16;
  v17 = *(a3 + 2);
  *(v15 + 1) = *(a3 + 1);
  *(v15 + 2) = v17;
  v18 = *(a3 + 8);
  *(v15 + 7) = *(a3 + 7);
  *(v15 + 8) = v18;
  v19 = *(a3 + 6);
  *(v15 + 5) = *(a3 + 5);
  *(v15 + 6) = v19;
  *&v4[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions] = a4;
  v21.receiver = v4;
  v21.super_class = ObjectType;

  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall DebugJournalViewController.viewDidLoad()()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_1D766844C(0, &qword_1EC9BE1E8);
  sub_1D7704560();
  type metadata accessor for DebugJournalValueTableViewCell();
  sub_1D7704560();
  type metadata accessor for DebugJournalSubtitleTableViewCell();
  sub_1D7704560();
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 addSubview_];

    [v2 reloadData];
    v5 = [v1 navigationItem];
    v6 = sub_1D7704230();
    [v5 setTitle_];

    v7 = [v1 navigationItem];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v1 action:sel_handleDone];
    [v7 setRightBarButtonItem_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DebugJournalViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D7703020();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1);
  v14 = *&v2[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView];
  v15 = [v14 indexPathForSelectedRow];
  if (v15)
  {
    v16 = v15;
    sub_1D7702FF0();

    (*(v6 + 32))(v13, v10, v5);
    v17 = sub_1D7702FE0();
    [v14 deselectRowAtIndexPath:v17 animated:1];

    (*(v6 + 8))(v13, v5);
  }
}

Swift::Void __swiftcall DebugJournalViewController.viewDidLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id DebugJournalViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D7704230();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1D770054C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier);

  return v1;
}

unint64_t DebugJournalViewController.tableView(_:didSelectRowAt:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7703010();
  result = sub_1D7701B84();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v3 >= *(result + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(result + v3 + 32);

  if (v5 > 2)
  {
    if (v5 != 3)
    {
      v17 = *&v1[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128];
      result = sub_1D7703000();
      if ((result & 0x8000000000000000) == 0)
      {
        if (result < *(v17 + 16))
        {
          v18 = (v17 + 144 * result);
          v52 = v18[2];
          v19 = v18[3];
          v20 = v18[4];
          v21 = v18[6];
          v55 = v18[5];
          v56 = v21;
          v53 = v19;
          v54 = v20;
          v22 = v18[7];
          v23 = v18[8];
          v24 = v18[10];
          v59 = v18[9];
          v60 = v24;
          v57 = v22;
          v58 = v23;
          v25 = v52;
          v47 = *&v1[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter];
          v26 = objc_allocWithZone(ObjectType);
          v27 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView;
          v28 = objc_allocWithZone(MEMORY[0x1E69DD020]);
          sub_1D766D644(&v52, v50);
          sub_1D766D644(&v52, v50);
          *&v26[v27] = [v28 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
          *&v26[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier] = v25;
          *&v26[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter] = v47;
          v29 = &v26[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal];
          v31 = v57;
          v30 = v58;
          v32 = v60;
          *(v29 + 7) = v59;
          *(v29 + 8) = v32;
          *(v29 + 5) = v31;
          *(v29 + 6) = v30;
          v34 = v53;
          v33 = v54;
          v35 = v56;
          *(v29 + 3) = v55;
          *(v29 + 4) = v35;
          *(v29 + 1) = v34;
          *(v29 + 2) = v33;
          *v29 = v52;
          *&v26[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions] = MEMORY[0x1E69E7CC0];
          v49.receiver = v26;
          v49.super_class = ObjectType;

          swift_unknownObjectRetain();
          v36 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0);
          [v1 showViewController:v36 sender:0];

          return sub_1D76950E4(&v52);
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v7 = *&v1[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 136];
    result = sub_1D7703000();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v7 + 16))
      {
        sub_1D76EA92C(v7 + 48 * result + 32, v50);
        if (v51)
        {
          *&v52 = *&v50[0];
          v8 = sub_1D76A6440();

          sub_1D7673524(0, &qword_1EC9BE1F0, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry, MEMORY[0x1E69E62F8]);
          *(&v53 + 1) = v9;
          *&v54 = sub_1D7701D34(&qword_1EC9BE1F8, sub_1D7701CE0);
          *(&v54 + 1) = sub_1D7701D34(&qword_1EC9BDEC8, sub_1D76EA964);
          *&v52 = v8;
          v10 = type metadata accessor for DebugJournalCodableViewController();
          v11 = objc_allocWithZone(v10);
          v12 = OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_textView;
          v13 = objc_allocWithZone(MEMORY[0x1E69DD168]);

          *&v11[v12] = [v13 init];
          sub_1D767D4C4(&v52, &v11[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_codable]);
          v48.receiver = v11;
          v48.super_class = v10;
          v14 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0);

          __swift_destroy_boxed_opaque_existential_1(&v52);
          v15 = [v14 navigationItem];
          v16 = sub_1D7704230();
          [v15 setTitle_];

          [v1 showViewController:v14 sender:0];
        }

        else
        {
          sub_1D7667CB8(v50, &v52);
          v37 = type metadata accessor for DebugJournalCodableViewController();
          v38 = *(&v53 + 1);
          v39 = v54;
          v40 = __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
          MEMORY[0x1EEE9AC00](v40, v40);
          v42 = &v47 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v43 + 16))(v42);
          v44 = sub_1D7699500(v42, v37, v38, *(v39 + 24), *(v39 + 32));
          v45 = [v44 navigationItem];
          v46 = sub_1D7704230();
          [v45 setTitle_];

          [v1 showViewController:v44 sender:0];
          __swift_destroy_boxed_opaque_existential_1(&v52);
        }

        return sub_1D7704540();
      }

      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if ((v5 - 1) < 2)
  {
    return result;
  }

  v6 = sub_1D7703000();
  if (v6 == 1)
  {
    sub_1D7701130();
  }

  else if (!v6)
  {
    sub_1D7700B68();
  }

  return sub_1D7704540();
}

uint64_t sub_1D7700B68()
{
  v1 = v0;
  v38 = sub_1D7703F90();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v3);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D7703F20();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1D7702C40(0, &qword_1EC9BDAF8, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - v12;
  v14 = MEMORY[0x1E69D8750];
  sub_1D7702C40(0, &unk_1EC9BE2F0, MEMORY[0x1E69D8750], v9);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter + 8);
  v36 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter);
  v37 = v19;
  ObjectType = swift_getObjectType();
  sub_1D7702C40(0, &qword_1EC9BDB00, v14, MEMORY[0x1E69D8790]);
  v33 = sub_1D7704050();
  if (qword_1EC9BCAA8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D7703EF0();
  v21 = __swift_project_value_buffer(v20, qword_1EC9BD428);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v13, v21, v20);
  (*(v22 + 56))(v13, 0, 1, v20);
  v23 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 80);
  v24 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112);
  v57 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 96);
  v58 = v24;
  v25 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112);
  v59 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128);
  v26 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 16);
  v27 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 48);
  v53 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 32);
  v54 = v27;
  v28 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 48);
  v29 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 80);
  v55 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 64);
  v56 = v29;
  v30 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 16);
  v52[0] = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal);
  v52[1] = v30;
  v46 = v57;
  v47 = v25;
  v48 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128);
  v42 = v53;
  v43 = v28;
  v44 = v55;
  v45 = v23;
  v40 = v52[0];
  v41 = v26;
  sub_1D766D644(v52, v60);
  sub_1D76E9760();
  v60[6] = v46;
  v60[7] = v47;
  v60[8] = v48;
  v60[2] = v42;
  v60[3] = v43;
  v60[4] = v44;
  v60[5] = v45;
  v60[0] = v40;
  v60[1] = v41;
  sub_1D76950E4(v60);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D79D0], v34);
  sub_1D7703FC0();
  v31 = sub_1D7703FD0();
  (*(*(v31 - 8) + 56))(v18, 0, 1, v31);
  (*(v2 + 104))(v39, *MEMORY[0x1E69D7FB8], v38);
  *(&v41 + 1) = &_s7NewsAds7TrackerVN_0;
  *&v42 = sub_1D7702BEC();
  v49 = 0u;
  v50 = 0u;
  v51 = 1;
  sub_1D7703F80();
  swift_allocObject();
  sub_1D7703F70();
  sub_1D7703F30();
  sub_1D7702CA4(v18, &unk_1EC9BE2F0, MEMORY[0x1E69D8750], MEMORY[0x1E69E6720], sub_1D7702C40);
}

void sub_1D7701130()
{
  v78 = sub_1D7702EE0();
  v1 = *(v78 - 8);
  v3 = MEMORY[0x1EEE9AC00](v78, v2);
  v68 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v60 - v6;
  sub_1D7702C40(0, &qword_1EC9BD650, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v60 - v10;
  v12 = sub_1D7703F10();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v80 = &v60 - v19;
  v61 = v0;
  v20 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 80];
  v21 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112];
  v107 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 96];
  v108 = v21;
  v22 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112];
  v109 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128];
  v23 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 16];
  v24 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 48];
  v103 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 32];
  v104 = v24;
  v25 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 48];
  v26 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 80];
  v105 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 64];
  v106 = v26;
  v27 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 16];
  v102[0] = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal];
  v102[1] = v27;
  v98 = v20;
  v99 = v107;
  v28 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128];
  v100 = v22;
  v101 = v28;
  v95 = v103;
  v96 = v25;
  v97 = v105;
  v93 = v102[0];
  v94 = v23;
  sub_1D766D644(v102, v110);
  v29 = sub_1D76E9760();
  v110[6] = v99;
  v110[7] = v100;
  v110[8] = v101;
  v110[2] = v95;
  v110[3] = v96;
  v110[4] = v97;
  v110[5] = v98;
  v110[0] = v93;
  v110[1] = v94;
  sub_1D76950E4(v110);
  v87 = v29[2];
  if (!v87)
  {
LABEL_37:

    v56 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    v57 = sub_1D77043F0();

    sub_1D766844C(0, &qword_1EC9BE308);
    v58 = sub_1D77043F0();
    v59 = [v56 initWithActivityItems:v57 applicationActivities:v58];

    [v61 presentViewController:v59 animated:1 completion:0];
    return;
  }

  v67 = v7;
  v30 = 0;
  v74 = 0;
  v83 = v13 + 88;
  v84 = v13 + 16;
  v82 = *MEMORY[0x1E69D7968];
  v77 = *MEMORY[0x1E69D7950];
  v73 = *MEMORY[0x1E69D7958];
  v72 = *MEMORY[0x1E69D7940];
  v71 = *MEMORY[0x1E69D7938];
  v70 = *MEMORY[0x1E69D7960];
  v88 = (v13 + 8);
  v79 = (v13 + 96);
  v64 = (v1 + 56);
  v65 = (v1 + 8);
  v62 = (v1 + 32);
  v63 = (v1 + 48);
  v31 = MEMORY[0x1E69E7CC0];
  v32 = v13;
  v81 = v13;
  v85 = v29;
  v86 = v17;
  v33 = v80;
  v66 = v11;
  while (v30 < v29[2])
  {
    v34 = v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v30;
    v35 = *(v32 + 16);
    v35(v33, v34, v12);
    v35(v17, v33, v12);
    v36 = (*(v32 + 88))(v17, v12);
    if (v36 != v82)
    {
      if (v36 != v77)
      {
        if (v36 == v73 || v36 == v72 || v36 == v71 || v36 == v70)
        {
          (*v88)(v17, v12);
          v91 = 0u;
          v92 = 0u;
        }

        else
        {
          v91 = 0u;
          v92 = 0u;
          (*v88)(v17, v12);
        }

        goto LABEL_31;
      }

      (*v79)(v17, v12);
      v37 = *(*v17 + 56);
      v38 = *(*v17 + 64);
      v76 = *v17;
      sub_1D7667C54(v76 + 16, &v93);
      __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));

      v75 = sub_1D76E86D4();
      if (v39 >> 60 == 15)
      {

        v32 = v81;
        goto LABEL_28;
      }

      v43 = v39;
      v89 = v37;
      v90 = v38;
      MEMORY[0x1DA6FF0D0](0x6E6F736A2ELL, 0xE500000000000000);
      v69 = v89;
      v44 = NSTemporaryDirectory();
      sub_1D7704260();

      v45 = v68;
      sub_1D7702EA0();

      v46 = v67;
      sub_1D7702EC0();

      v47 = v78;
      v69 = *v65;
      v69(v45, v78);
      v48 = v74;
      v49 = v75;
      sub_1D7702F10();
      if (v48)
      {
        sub_1D76992F8(v49, v43);
        v69(v46, v47);

        v74 = 0;
        v50 = 1;
        v51 = v66;
      }

      else
      {
        v74 = 0;
        sub_1D76992F8(v49, v43);
        v51 = v66;
        (*v62)(v66, v46, v47);
        v50 = 0;
      }

      v32 = v81;
      (*v64)(v51, v50, 1, v47);
      if ((*v63)(v51, 1, v47) == 1)
      {
        sub_1D7702CA4(v51, &qword_1EC9BD650, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7702C40);
LABEL_28:
        v91 = 0u;
        v92 = 0u;
      }

      else
      {
        *(&v92 + 1) = v47;
        boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v91);
        (*v62)(boxed_opaque_existential_2, v51, v47);
      }

      v33 = v80;
      __swift_destroy_boxed_opaque_existential_1(&v93);

      goto LABEL_31;
    }

    (*v79)(v17, v12);
    *(&v92 + 1) = v78;
    __swift_allocate_boxed_opaque_existential_2(&v91);

    v33 = v80;
    sub_1D7702EA0();

LABEL_31:
    (*v88)(v33, v12);
    if (*(&v92 + 1))
    {
      sub_1D766B74C(&v91, &v93);
      sub_1D766B74C(&v93, &v91);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1D768D0A0(0, *(v31 + 2) + 1, 1, v31);
      }

      v55 = *(v31 + 2);
      v54 = *(v31 + 3);
      if (v55 >= v54 >> 1)
      {
        v31 = sub_1D768D0A0((v54 > 1), v55 + 1, 1, v31);
      }

      *(v31 + 2) = v55 + 1;
      sub_1D766B74C(&v91, &v31[32 * v55 + 32]);
      v32 = v81;
    }

    else
    {
      sub_1D7702CA4(&v91, &unk_1EE0AEBB0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7673524);
      v17 = v86;
    }

    ++v30;
    v29 = v85;
    if (v87 == v30)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
}

Swift::Int __swiftcall DebugJournalViewController.numberOfSections(in:)(UITableView *in)
{
  v1 = *(sub_1D7701B84() + 16);

  return v1;
}

uint64_t sub_1D7701B84()
{
  v1 = v0;
  v2 = 0;
  v12 = v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128;
  v13 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions;
  v3 = v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 136;
  v4 = v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 120;
  v5 = v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = byte_1F524EF40[v2 + 32];
    if (v9 <= 1)
    {
      v10 = v5;
      if (!byte_1F524EF40[v2 + 32])
      {
        if (!*(*(v1 + v13) + 16))
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v10 = v4;
      if (v9 != 2)
      {
        v10 = v3;
        if (v9 != 3)
        {
          v10 = v12;
        }
      }
    }

    if (!*(*v10 + 16))
    {
      goto LABEL_5;
    }

LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D76972A0(0, *(v6 + 16) + 1, 1);
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1D76972A0((v7 > 1), v8 + 1, 1);
    }

    *(v6 + 16) = v8 + 1;
    *(v6 + v8 + 32) = v9;
LABEL_5:
    ++v2;
  }

  while (v2 != 5);
  return v6;
}

unint64_t sub_1D7701CE0()
{
  result = qword_1EC9BE200;
  if (!qword_1EC9BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE200);
  }

  return result;
}

uint64_t sub_1D7701D34(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D7673524(255, &qword_1EC9BE1F0, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall DebugJournalViewController.tableView(_:titleForHeaderInSection:)(UITableView *_, Swift::Int titleForHeaderInSection)
{
  v2 = sub_1D7702A08(titleForHeaderInSection);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

unint64_t DebugJournalViewController.tableView(_:cellForRowAt:)()
{
  v1 = v0;
  v2 = sub_1D77040C0();
  v47 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v46 - v12;
  v14 = sub_1D7703010();
  result = sub_1D7701B84();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v14 >= *(result + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = *(result + v14 + 32);

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 == 3)
      {
        sub_1D766844C(0, &qword_1EC9BE1E8);
        v17 = sub_1D7704550();
        v18 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 136);
        result = sub_1D7703000();
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *(v18 + 16))
          {
            sub_1D76EA92C(v18 + 48 * result + 32, &v51);
            sub_1D77040A0();
            sub_1D76EA92C(&v51, v48);
            sub_1D76EA9B8(v48);
            sub_1D77040B0();
            v49 = v2;
            v50 = MEMORY[0x1E69DC110];
            boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v48);
            v20 = v47;
            (*(v47 + 16))(boxed_opaque_existential_2, v6, v2);
            MEMORY[0x1DA6FF380](v48);
            [v17 setAccessoryType_];
            (*(v20 + 8))(v6, v2);
            sub_1D76EA9B8(&v51);
            return v17;
          }

          goto LABEL_34;
        }

        goto LABEL_30;
      }

      type metadata accessor for DebugJournalSubtitleTableViewCell();
      v32 = sub_1D7704550();
      v33 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128);
      result = sub_1D7703000();
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (result >= *(v33 + 16))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v34 = (v33 + 144 * result);
      v51 = v34[2];
      v35 = v34[3];
      v36 = v34[4];
      v37 = v34[6];
      v54 = v34[5];
      v55 = v37;
      v52 = v35;
      v53 = v36;
      v38 = v34[7];
      v39 = v34[8];
      v40 = v34[10];
      v58 = v34[9];
      v59 = v40;
      v56 = v38;
      v57 = v39;
      sub_1D766D644(&v51, v48);
      sub_1D7704060();

      sub_1D77040B0();

      sub_1D7704070();
      v49 = v2;
      v50 = MEMORY[0x1E69DC110];
      v41 = __swift_allocate_boxed_opaque_existential_2(v48);
      v42 = v47;
      (*(v47 + 16))(v41, v10, v2);
      v17 = v32;
      MEMORY[0x1DA6FF380](v48);
      [v17 setAccessoryType_];

      sub_1D76950E4(&v51);
LABEL_24:
      (*(v42 + 8))(v10, v2);
      return v17;
    }

    v25 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 120);
    result = sub_1D7703000();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v25 + 16))
      {
        type metadata accessor for DebugJournalSubtitleTableViewCell();

        v17 = sub_1D7704550();
        [v17 setSelectionStyle_];
        v26 = [v17 textLabel];
        if (v26)
        {
          v27 = v26;
          v28 = sub_1D7704230();
          [v27 setText_];
        }

        v29 = [v17 detailTextLabel];
        if (v29)
        {
          v30 = v29;
          v31 = sub_1D7704230();

          [v30 setText_];
        }

        else
        {
        }

        return v17;
      }

      goto LABEL_33;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v16)
  {
    sub_1D766844C(0, &qword_1EC9BE1E8);
    v17 = sub_1D7704550();
    sub_1D77040A0();
    sub_1D7703000();
    sub_1D77040B0();
    v21 = [objc_opt_self() systemBlueColor];
    v22 = sub_1D7704090();
    sub_1D7704080();
    v22(&v51, 0);
    *(&v52 + 1) = v2;
    *&v53 = MEMORY[0x1E69DC110];
    v23 = __swift_allocate_boxed_opaque_existential_2(&v51);
    v24 = v47;
    (*(v47 + 16))(v23, v13, v2);
    MEMORY[0x1DA6FF380](&v51);
    (*(v24 + 8))(v13, v2);
    return v17;
  }

  type metadata accessor for DebugJournalSubtitleTableViewCell();
  v43 = sub_1D7704550();
  v44 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112);
  result = sub_1D7703000();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  if (result < *(v44 + 16))
  {

    sub_1D7704060();

    sub_1D77040B0();

    sub_1D7704070();

    *(&v52 + 1) = v2;
    *&v53 = MEMORY[0x1E69DC110];
    v45 = __swift_allocate_boxed_opaque_existential_2(&v51);
    v42 = v47;
    (*(v47 + 16))(v45, v10, v2);
    v17 = v43;
    MEMORY[0x1DA6FF380](&v51);
    [v17 setAccessoryType_];
    [v17 setSelectionStyle_];

    goto LABEL_24;
  }

LABEL_36:
  __break(1u);
  return result;
}

id sub_1D7702840(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1D7704260();
    a4 = sub_1D7704230();
  }

  v11.receiver = a1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a5, a4);

  return v9;
}

unint64_t sub_1D770292C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1D770293C(unint64_t a1)
{
  result = sub_1D7701B84();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(result + 16) <= a1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = *(result + a1 + 32);

  if (v4 <= 1)
  {
    if (!v4)
    {
      return 2 * (*(*(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions) + 16) != 0);
    }

    v5 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112);
  }

  else if (v4 == 2)
  {
    v5 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 120);
  }

  else if (v4 == 3)
  {
    v5 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 136);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128);
  }

  return *(v5 + 16);
}

uint64_t sub_1D7702A08(unint64_t a1)
{
  result = sub_1D7701B84();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v4 = *(result + a1 + 32);

    if (v4 <= 1)
    {
      if (!v4)
      {
        return v4;
      }

      v5 = *(*(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112) + 16) == 0;
      v6 = 0x736C6961746544;
    }

    else
    {
      if (v4 == 2)
      {
        if (*(*(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 120) + 16))
        {
          return 0xD000000000000012;
        }

        else
        {
          return 0;
        }
      }

      if (v4 == 3)
      {
        v5 = *(*(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 136) + 16) == 0;
        v6 = 0x736E6F69746341;
      }

      else
      {
        v5 = *(*(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128) + 16) == 0;
        v6 = 0x79726F74736948;
      }
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D7702B38()
{
  result = qword_1EC9BE218;
  if (!qword_1EC9BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE218);
  }

  return result;
}

unint64_t sub_1D7702BEC()
{
  result = qword_1EC9BE300;
  if (!qword_1EC9BE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE300);
  }

  return result;
}

void sub_1D7702C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7702CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D7702D28()
{
  result = qword_1EC9BE310;
  if (!qword_1EC9BE310)
  {
    sub_1D7673524(255, &qword_1EC9BE318, &type metadata for DebugJournalViewController.Section, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE310);
  }

  return result;
}

unint64_t sub_1D7702DA8()
{
  result = qword_1EC9BE320;
  if (!qword_1EC9BE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE320);
  }

  return result;
}