unint64_t sub_1BA1CBF94()
{
  result = qword_1EBBEDAE0;
  if (!qword_1EBBEDAE0)
  {
    type metadata accessor for SummarySharingSetupAnalyticsBaseEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDAE0);
  }

  return result;
}

void *SummarySharingSetupAnalyticsBaseEvent.__allocating_init(isFirstShare:isImproveHealthAndActivityAllowed:age:userSex:provenance:version:usedDataSelectionWizard:activeWatchProductType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  return result;
}

void *SummarySharingSetupAnalyticsBaseEvent.init(isFirstShare:isImproveHealthAndActivityAllowed:age:userSex:provenance:version:usedDataSelectionWizard:activeWatchProductType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t SummarySharingSetupAnalyticsBaseEvent.__deallocating_deinit()
{
  SummarySharingSetupAnalyticsBaseEvent.deinit();

  return swift_deallocClassInstance();
}

HealthExperienceUI::SummarySharingSetupAnalyticsBaseEvent::OnboardingLocation_optional __swiftcall SummarySharingSetupAnalyticsBaseEvent.OnboardingLocation.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  sub_1BA0B2740();
  v4 = rawValue;
  v5 = sub_1BA4A77C8();
  v6 = sub_1BA4A7798();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = sub_1BA4A77C8();
    v11 = sub_1BA4A7798();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = sub_1BA4A77C8();
      v13 = sub_1BA4A7798();

      if (v13)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }
  }

  *v3 = v8;
  return result;
}

void sub_1BA1CC248()
{
  sub_1BA0B2740();
  v0 = sub_1BA4A77C8();
  sub_1BA4A77A8();
}

uint64_t sub_1BA1CC300@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA0B2740();
  result = sub_1BA4A77C8();
  *a1 = result;
  return result;
}

void SummarySharingSetupAnalyticsBaseEvent.OnboardingVersion.init(rawValue:)(void *a1@<X0>, BOOL *a2@<X8>)
{
  sub_1BA0B2740();
  v4 = sub_1BA4A77C8();
  v5 = sub_1BA4A7798();

  *a2 = (v5 & 1) == 0;
}

unint64_t sub_1BA1CC3F0()
{
  result = qword_1EBBEDAE8;
  if (!qword_1EBBEDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDAE8);
  }

  return result;
}

uint64_t sub_1BA1CC444()
{
  sub_1BA0B2740();
  v0 = sub_1BA4A77C8();
  v1 = sub_1BA4A77C8();
  v2 = sub_1BA4A7798();

  return v2 & 1;
}

unint64_t sub_1BA1CC4C4()
{
  result = qword_1EBBEDAF0;
  if (!qword_1EBBEDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDAF0);
  }

  return result;
}

uint64_t sub_1BA1CC518()
{
  sub_1BA4A8488();
  sub_1BA0B2740();
  v0 = sub_1BA4A77C8();
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

void sub_1BA1CC580()
{
  sub_1BA0B2740();
  v0 = sub_1BA4A77C8();
  sub_1BA4A77A8();
}

uint64_t sub_1BA1CC5F0()
{
  sub_1BA4A8488();
  sub_1BA0B2740();
  v0 = sub_1BA4A77C8();
  sub_1BA4A77A8();

  return sub_1BA4A84D8();
}

void sub_1BA1CC654(void **a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  sub_1BA0B2740();
  v4 = sub_1BA4A77C8();
  v5 = sub_1BA4A7798();

  *a2 = (v5 & 1) == 0;
}

uint64_t sub_1BA1CC6C4@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA0B2740();
  result = sub_1BA4A77C8();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SummarySharingSetupAnalyticsBaseEvent.SharingEntriesAnalytics(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SummarySharingSetupAnalyticsBaseEvent.SharingEntriesAnalytics(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t AudiogramSnidgetCurrentValueDataView.viewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AudiogramSnidgetCurrentValueDataView.$viewModel.getter()
{
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
  sub_1BA1D37F8(&qword_1EDC61060, v0, type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel);

  return sub_1BA4A5358();
}

uint64_t AudiogramSnidgetCurrentValueDataView.previousViewModel.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1BA1CC960()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v7 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t AudiogramSnidgetCurrentValueDataView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v4 = type metadata accessor for AudiogramSnidgetCurrentValueDataView(0);
  v5 = *(v4 + 28);
  *(a2 + v5) = swift_getKeyPath();
  sub_1BA1D32EC(0, &qword_1EDC5F358, 255, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 32);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
  sub_1BA1D37F8(&qword_1EDC61060, v7, type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v8;

  *(a2 + 16) = v3;
  return result;
}

uint64_t AudiogramSnidgetCurrentValueDataView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5868();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA1D313C();
  return sub_1BA1CCC6C(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BA1CCC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = MEMORY[0x1E697F948];
  sub_1BA1D5118(0, &qword_1EBBEDC80, sub_1BA1D3954, MEMORY[0x1E697F948]);
  v43[1] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v43 - v5;
  sub_1BA1D3920(0);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1D3954(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1D33CC(0, &qword_1EBBEDC88, sub_1BA1D31E8, sub_1BA1D3920, MEMORY[0x1E697F948]);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v47 = v43 - v14;
  sub_1BA1D5118(0, &qword_1EBBEDC90, sub_1BA1D321C, v3);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v43 - v16;
  sub_1BA1D31E8(0);
  v46 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v43[0] = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1D321C();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  v24 = *(*(a1 + 8) + 16);
  if (v23)
  {
    v25 = *(v23 + 16);
  }

  else
  {
    v25 = 0xF000000000000007;
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    if ((~v25 & 0xF000000000000007) != 0)
    {

      if ((v25 & 0x8000000000000000) == 0)
      {
        *v12 = sub_1BA4A5878();
        *(v12 + 1) = 0x4000000000000000;
        v12[16] = 0;
        sub_1BA1D5320(0, &qword_1EDC5F2F8, sub_1B9F52B4C);
        sub_1BA1CD4F0(v24, a1, v25, &v12[*(v26 + 44)]);
        v27 = sub_1BA4A60A8();
        v28 = sub_1BA4A5B78();
        v29 = &v12[*(v10 + 36)];
        *v29 = v27;
        v29[8] = v28;
        sub_1BA1D5180(v12, v6, sub_1BA1D3954);
        swift_storeEnumTagMultiPayload();
        sub_1B9F52970();
        v30 = v44;
        sub_1BA4A58E8();
        sub_1BA1D5180(v30, v47, sub_1BA1D3920);
        swift_storeEnumTagMultiPayload();
        sub_1BA1D4714();
        sub_1BA1D47C0();
        sub_1BA4A58E8();

        sub_1BA1D5248(v25);
        v31 = v30;
LABEL_18:
        sub_1BA1D51E8(v31, sub_1BA1D3920);
        v34 = sub_1BA1D3954;
        v35 = v12;
        return sub_1BA1D51E8(v35, v34);
      }

      sub_1BA1D5248(v25);
    }

    else
    {
    }

    *v12 = sub_1BA4A5878();
    *(v12 + 1) = 0x4000000000000000;
    v12[16] = 0;
    sub_1BA1D5320(0, &qword_1EDC5F2F8, sub_1B9F52B4C);
    sub_1BA1CD4F0(v24, a1, 0, &v12[*(v36 + 44)]);
    v37 = sub_1BA4A60A8();
    v38 = sub_1BA4A5B78();
    v39 = &v12[*(v10 + 36)];
    *v39 = v37;
    v39[8] = v38;
    sub_1BA1D5180(v12, v6, sub_1BA1D3954);
    swift_storeEnumTagMultiPayload();
    sub_1B9F52970();
    v40 = v44;
    sub_1BA4A58E8();
    sub_1BA1D5180(v40, v47, sub_1BA1D3920);
    swift_storeEnumTagMultiPayload();
    sub_1BA1D4714();
    sub_1BA1D47C0();
    sub_1BA4A58E8();

    v31 = v40;
    goto LABEL_18;
  }

  if ((~v25 & 0xF000000000000007) != 0)
  {
    if (v25 < 0)
    {

      *v22 = sub_1BA4A5B38();
      sub_1BA1D5260();
      sub_1BA1CE250((v24 & 0x7FFFFFFFFFFFFFFFLL), a1, v25 & 0x7FFFFFFFFFFFFFFFLL, &v22[*(v42 + 44)]);
      sub_1BA1D5180(v22, v17, sub_1BA1D321C);
      swift_storeEnumTagMultiPayload();
      sub_1BA1D37F8(&qword_1EBBEDC40, 255, sub_1BA1D321C);
      v33 = v43[0];
      sub_1BA4A58E8();
      sub_1BA1D5180(v33, v47, sub_1BA1D31E8);
      swift_storeEnumTagMultiPayload();
      sub_1BA1D4714();
      sub_1BA1D47C0();
      sub_1BA4A58E8();

      sub_1BA1D5248(v25);
      goto LABEL_15;
    }

    sub_1BA1D5248(v25);
  }

  else
  {
  }

  *v22 = sub_1BA4A5B38();
  sub_1BA1D5260();
  sub_1BA1CE250((v24 & 0x7FFFFFFFFFFFFFFFLL), a1, 0, &v22[*(v32 + 44)]);
  sub_1BA1D5180(v22, v17, sub_1BA1D321C);
  swift_storeEnumTagMultiPayload();
  sub_1BA1D37F8(&qword_1EBBEDC40, 255, sub_1BA1D321C);
  v33 = v43[0];
  sub_1BA4A58E8();
  sub_1BA1D5180(v33, v47, sub_1BA1D31E8);
  swift_storeEnumTagMultiPayload();
  sub_1BA1D4714();
  sub_1BA1D47C0();
  sub_1BA4A58E8();

LABEL_15:
  sub_1BA1D51E8(v33, sub_1BA1D31E8);
  v34 = sub_1BA1D321C;
  v35 = v22;
  return sub_1BA1D51E8(v35, v34);
}

uint64_t sub_1BA1CD4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v123 = a3;
  v139 = a2;
  v136 = a4;
  v124 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  MEMORY[0x1EEE9AC00](v124);
  v127 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F532BC();
  v125 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v126 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5323C(0);
  v129 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v130 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F530BC(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v135 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v114 - v13;
  sub_1B9F5305C();
  v144 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v132 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F51474(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v128 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v114 - v21;
  v23 = sub_1BA4A12C8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v116 = v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v141 = v114 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v114 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v114 - v32;
  sub_1B9F52ED4(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v133 = v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v134 = v114 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v131 = v114 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v114 - v41;
  v43 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  swift_beginAccess();
  v142 = a1;
  sub_1BA1D5180(a1 + v43, v22, sub_1B9F51474);
  v44 = *(v24 + 48);
  v122 = v24 + 48;
  v121 = v44;
  v45 = v44(v22, 1, v23);
  v138 = v42;
  v137 = v23;
  v140 = v14;
  v115 = v30;
  if (v45 == 1)
  {
    sub_1BA1D51E8(v22, sub_1B9F51474);
    v46 = 1;
  }

  else
  {
    (*(v24 + 32))(v33, v22, v23);
    (*(v24 + 16))(v30, v33, v23);
    v47 = sub_1BA4A5E08();
    v143 = v16;
    v48 = v47;
    v50 = v49;
    v147 = v47;
    v148 = v49;
    v52 = v51 & 1;
    v149 = v51 & 1;
    v150 = v53;
    v151 = 0;
    v152 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v54 = sub_1BA1CC960();
    v56 = v55;
    v57 = v132;

    v151 = v54;
    v152 = v56;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    sub_1BA4A5F18();

    v58 = v48;
    v16 = v143;
    v59 = v52;
    v23 = v137;
    sub_1BA102AF4(v58, v50, v59);

    (*(v24 + 8))(v33, v23);
    v42 = v138;
    sub_1BA1D538C(v57, v138, sub_1B9F5305C);
    v46 = 0;
  }

  v60 = *(v16 + 56);
  v143 = v16 + 56;
  v120 = v60;
  v60(v42, v46, 1, v144);
  v61 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  v62 = v142;
  swift_beginAccess();
  v63 = *(v24 + 16);
  v114[1] = v24 + 16;
  v114[0] = v63;
  v63(v141, v62 + v61, v23);
  v64 = (v62 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration);
  swift_beginAccess();
  v65 = v64[1];
  v119 = *v64;
  v118 = v64[2];
  v117 = *(v64 + 24);
  v66 = v24;
  if (v123)
  {
    v67 = (v123 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration);
    swift_beginAccess();
    v68 = v67[1];
    v123 = *v67;
    v69 = v67[2];
    v70 = *(v67 + 24);
  }

  else
  {
    v123 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
  }

  v71 = v124;
  v72 = v127;
  v73 = &v127[*(v124 + 20)];
  *v73 = 0;
  *(v73 + 1) = 0;
  v73[24] = 0;
  *(v73 + 2) = 0;
  v74 = v72 + *(v71 + 24);
  v124 = v66;
  v75 = *(v66 + 32);
  *v74 = 0;
  *(v74 + 8) = 0;
  *(v74 + 24) = 0;
  *(v74 + 16) = 0;
  v76 = v141;
  v77 = v137;
  v141 = v75;
  (v75)(v72, v76, v137);

  *v73 = v119;
  *(v73 + 1) = v65;
  *(v73 + 2) = v118;
  v73[24] = v117;

  *v74 = v123;
  *(v74 + 8) = v68;
  *(v74 + 16) = v69;
  *(v74 + 24) = v70;
  KeyPath = swift_getKeyPath();
  v79 = v126;
  sub_1BA1D5180(v72, v126, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v80 = v79 + *(v125 + 36);
  *v80 = KeyPath;
  *(v80 + 8) = 0;
  sub_1BA1D51E8(v72, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v81 = swift_getKeyPath();
  v82 = v130;
  sub_1BA1D538C(v79, v130, sub_1B9F532BC);
  v83 = v82 + *(v129 + 36);
  *v83 = v81;
  *(v83 + 8) = 0;
  *(v83 + 16) = 1;
  v147 = sub_1BA1CC960();
  v148 = v84;
  MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
  sub_1B9F5D988();
  v85 = v140;
  sub_1BA4A5F18();

  sub_1BA1D51E8(v82, sub_1B9F5323C);
  v86 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
  v87 = v142;
  swift_beginAccess();
  v88 = v87 + v86;
  v89 = v128;
  sub_1BA1D5180(v88, v128, sub_1B9F51474);
  v90 = v77;
  if (v121(v89, 1, v77) == 1)
  {
    sub_1BA1D51E8(v89, sub_1B9F51474);
    v91 = 1;
    v92 = v144;
    v93 = v138;
    v94 = v131;
  }

  else
  {
    v95 = v116;
    (v141)(v116, v89, v77);
    (v114[0])(v115, v95, v77);
    v96 = sub_1BA4A5E08();
    v98 = v97;
    v147 = v96;
    v148 = v97;
    v100 = v99 & 1;
    v149 = v99 & 1;
    v150 = v101;
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v102 = sub_1BA1CC960();
    v104 = v103;

    v145 = v102;
    v146 = v104;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v105 = v132;
    sub_1BA4A5F18();

    sub_1BA102AF4(v96, v98, v100);

    v106 = v95;
    v85 = v140;
    (*(v124 + 8))(v106, v90);
    v94 = v131;
    sub_1BA1D538C(v105, v131, sub_1B9F5305C);
    v91 = 0;
    v92 = v144;
    v93 = v138;
  }

  v120(v94, v91, 1, v92);
  v107 = v134;
  sub_1BA1D5180(v93, v134, sub_1B9F52ED4);
  v108 = v135;
  sub_1BA1D5180(v85, v135, sub_1B9F530BC);
  v109 = v133;
  sub_1BA1D5180(v94, v133, sub_1B9F52ED4);
  v110 = v136;
  sub_1BA1D5180(v107, v136, sub_1B9F52ED4);
  sub_1B9F528CC();
  v112 = v111;
  sub_1BA1D5180(v108, v110 + *(v111 + 48), sub_1B9F530BC);
  sub_1BA1D5180(v109, v110 + *(v112 + 64), sub_1B9F52ED4);
  sub_1BA1D51E8(v94, sub_1B9F52ED4);
  sub_1BA1D51E8(v85, sub_1B9F530BC);
  sub_1BA1D51E8(v93, sub_1B9F52ED4);
  sub_1BA1D51E8(v109, sub_1B9F52ED4);
  sub_1BA1D51E8(v108, sub_1B9F530BC);
  return sub_1BA1D51E8(v107, sub_1B9F52ED4);
}

uint64_t sub_1BA1CE250@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  sub_1BA1D3840(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  sub_1BA1D3384(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  *v19 = sub_1BA4A5788();
  *(v19 + 1) = 0x4028000000000000;
  v19[16] = 0;
  sub_1BA1D5320(0, &qword_1EBBEDCA8, sub_1BA1D34E8);
  v21 = a2;
  v22 = a2;
  v23 = a3;
  sub_1BA1CE534(a1, v21, a3, &v19[*(v20 + 44)]);
  v24 = sub_1BA4A60A8();
  v25 = sub_1BA4A5B78();
  v26 = &v19[*(v14 + 44)];
  *v26 = v24;
  v26[8] = v25;
  *v12 = sub_1BA4A5878();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_1BA1D5320(0, &qword_1EBBEDCB0, sub_1BA1D34E8);
  sub_1BA1CE534(a1, v22, v23, &v12[*(v27 + 44)]);
  v28 = sub_1BA4A60A8();
  v29 = sub_1BA4A5B78();
  v30 = &v12[*(v8 + 44)];
  *v30 = v28;
  v30[8] = v29;
  sub_1BA1D5180(v19, v16, sub_1BA1D3384);
  v31 = v35;
  sub_1BA1D5180(v12, v35, sub_1BA1D3840);
  v32 = v36;
  sub_1BA1D5180(v16, v36, sub_1BA1D3384);
  sub_1BA1D3350(0);
  sub_1BA1D5180(v31, v32 + *(v33 + 48), sub_1BA1D3840);
  sub_1BA1D51E8(v12, sub_1BA1D3840);
  sub_1BA1D51E8(v19, sub_1BA1D3384);
  sub_1BA1D51E8(v31, sub_1BA1D3840);
  return sub_1BA1D51E8(v16, sub_1BA1D3384);
}

uint64_t sub_1BA1CE534@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v191 = a3;
  v202 = a2;
  v188 = a4;
  v192 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  MEMORY[0x1EEE9AC00](v192);
  v180 = &v165[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v175 = &v165[-v7];
  sub_1B9F532BC();
  v197 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v179 = &v165[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v174 = &v165[-v11];
  sub_1B9F5323C(0);
  v199 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v181 = &v165[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v176 = &v165[-v15];
  sub_1B9F530BC(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v182 = &v165[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v200 = &v165[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v165[-v21];
  v204 = sub_1BA4A12C8();
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v177 = &v165[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v173 = &v165[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v165[-v27];
  sub_1B9F5305C();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v190 = &v165[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v189 = &v165[-v32];
  sub_1BA1D36C0();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v193 = &v165[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v194 = &v165[-v36];
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v165[-v38];
  sub_1BA1D35BC();
  v41 = v40;
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v201 = &v165[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v44);
  v178 = &v165[-v45];
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v165[-v47];
  sub_1BA1D3584(0);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v187 = &v165[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v51);
  v186 = &v165[-v52];
  MEMORY[0x1EEE9AC00](v53);
  v185 = &v165[-v54];
  v57 = MEMORY[0x1EEE9AC00](v55);
  v58 = &v165[-v56];
  v59 = a1;
  v60 = a1[2];
  v198 = v41;
  v196 = v42;
  v195 = &v165[-v56];
  if (v60)
  {
    v171 = v22;
    v61 = v60;

    *v48 = sub_1BA4A5878();
    *(v48 + 1) = 0;
    v183 = v48;
    v48[16] = 0;
    *v39 = sub_1BA4A5798();
    *(v39 + 1) = 0x4010000000000000;
    v39[16] = 0;
    sub_1BA1D5320(0, &qword_1EBBEDCB8, sub_1BA1D3758);
    v63 = *(v62 + 44);
    v170 = v39;
    v169 = &v39[v63];
    sub_1BA1CFA5C(1uLL, v61, &v209);
    v167 = v209;
    v64 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString;
    swift_beginAccess();
    v168 = *(v203 + 16);
    v168(v28, v61 + v64, v204);
    v172 = v28;
    v65 = sub_1BA4A5E08();
    v184 = v59;
    v66 = v65;
    v68 = v67;
    v209 = v65;
    v210 = v67;
    v70 = v69 & 1;
    v211 = v69 & 1;
    v212 = v71;
    v213 = 0;
    v214 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v72 = sub_1BA1CC960();
    v74 = v73;

    v213 = v72;
    v214 = v74;
    MEMORY[0x1BFAF1350](1952867660, 0xE400000000000000);
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v75 = v189;
    sub_1BA4A5F18();

    v76 = v184;
    sub_1BA102AF4(v66, v68, v70);

    v77 = v190;
    sub_1BA1D5180(v75, v190, sub_1B9F5305C);
    v78 = v169;
    *v169 = v167;
    sub_1BA1D3790();
    sub_1BA1D5180(v77, v78 + *(v79 + 48), sub_1B9F5305C);

    sub_1BA1D51E8(v75, sub_1B9F5305C);
    sub_1BA1D51E8(v77, sub_1B9F5305C);

    v80 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
    swift_beginAccess();
    v169 = v61;
    v81 = v61 + v80;
    v82 = v173;
    v83 = v204;
    v168(v173, v81, v204);
    v84 = v191;
    swift_beginAccess();
    v85 = v76[5];
    v168 = v76[4];
    v167 = v76[6];
    v166 = *(v76 + 56);
    if (v84)
    {
      swift_beginAccess();
      v87 = *(v84 + 32);
      v86 = *(v84 + 40);
      v88 = *(v84 + 48);
      v89 = *(v84 + 56);
    }

    else
    {
      v87 = 0;
      v86 = 0;
      v88 = 0;
      v89 = 0;
    }

    sub_1BA1D5320(0, &unk_1EBBEDCC0, sub_1BA1D3654);
    v173 = &v183[*(v92 + 44)];
    v93 = v192;
    v94 = v175;
    v95 = &v175[*(v192 + 20)];
    *v95 = 0;
    *(v95 + 1) = 0;
    v95[24] = 0;
    *(v95 + 2) = 0;
    v96 = v94 + *(v93 + 24);
    *v96 = 0;
    *(v96 + 8) = 0;
    *(v96 + 24) = 0;
    *(v96 + 16) = 0;
    (*(v203 + 32))(v94, v82, v83);

    *v95 = v168;
    *(v95 + 1) = v85;
    *(v95 + 2) = v167;
    v95[24] = v166;

    *v96 = v87;
    *(v96 + 8) = v86;
    *(v96 + 16) = v88;
    *(v96 + 24) = v89;
    KeyPath = swift_getKeyPath();
    v98 = v174;
    sub_1BA1D5180(v94, v174, type metadata accessor for AnimatedSnidgetCurrentValueText);
    v99 = &v98[*(v197 + 36)];
    *v99 = KeyPath;
    v99[8] = 0;
    sub_1BA1D51E8(v94, type metadata accessor for AnimatedSnidgetCurrentValueText);
    v100 = swift_getKeyPath();
    v101 = v176;
    sub_1BA1D538C(v98, v176, sub_1B9F532BC);
    v102 = v101 + *(v199 + 36);
    *v102 = v100;
    *(v102 + 1) = 1;
    v102[16] = 0;
    v209 = sub_1BA1CC960();
    v210 = v103;
    MEMORY[0x1BFAF1350](46, 0xE100000000000000);
    MEMORY[0x1BFAF1350](1952867660, 0xE400000000000000);
    MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
    sub_1B9F5D988();
    v104 = v171;
    sub_1BA4A5F18();

    sub_1BA1D51E8(v101, sub_1B9F5323C);
    v105 = v170;
    v106 = v194;
    sub_1BA1D5180(v170, v194, sub_1BA1D36C0);
    v107 = v200;
    sub_1BA1D5180(v104, v200, sub_1B9F530BC);
    v108 = v173;
    sub_1BA1D5180(v106, v173, sub_1BA1D36C0);
    sub_1BA1D368C(0);
    sub_1BA1D5180(v107, &v108[*(v109 + 48)], sub_1B9F530BC);
    sub_1BA1D51E8(v104, sub_1B9F530BC);
    sub_1BA1D51E8(v105, sub_1BA1D36C0);
    sub_1BA1D51E8(v107, sub_1B9F530BC);
    sub_1BA1D51E8(v106, sub_1BA1D36C0);

    v58 = v195;
    sub_1BA1D538C(v183, v195, sub_1BA1D35BC);
    v90 = *(v196 + 56);
    v41 = v198;
    (v90)(v58, 0, 1, v198);
    v91 = v184;
    v28 = v172;
  }

  else
  {
    v90 = *(v42 + 56);
    v90(&v165[-v56], 1, 1, v41, v57);
    v91 = a1;
  }

  if (v91[3])
  {
    v110 = v91[3];

    v111 = sub_1BA4A5878();
    v112 = v201;
    *v201 = v111;
    v112[1] = 0;
    *(v112 + 16) = 0;
    v113 = sub_1BA4A5798();
    v114 = v193;
    *v193 = v113;
    v114[1] = 0x4010000000000000;
    *(v114 + 16) = 0;
    sub_1BA1D5320(0, &qword_1EBBEDCB8, sub_1BA1D3758);
    v176 = (v114 + *(v115 + 44));
    sub_1BA1CFA5C(2uLL, v110, &v209);
    v175 = v209;
    v116 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString;
    swift_beginAccess();
    v117 = *(v203 + 16);
    v183 = (v203 + 16);
    v184 = v117;
    (v117)(v28, &v110[v116], v204);
    v118 = sub_1BA4A5E08();
    v120 = v119;
    v209 = v118;
    v210 = v119;
    v122 = v121 & 1;
    v211 = v121 & 1;
    v212 = v123;
    v207 = 0;
    v208 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v124 = sub_1BA1CC960();
    v126 = v125;

    v207 = v124;
    v208 = v126;
    MEMORY[0x1BFAF1350](0x7468676952, 0xE500000000000000);
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v127 = v189;
    sub_1BA4A5F18();

    v128 = v118;
    v129 = v204;
    sub_1BA102AF4(v128, v120, v122);

    v130 = v190;
    sub_1BA1D5180(v127, v190, sub_1B9F5305C);
    v131 = v176;
    *v176 = v175;
    sub_1BA1D3790();
    sub_1BA1D5180(v130, v131 + *(v132 + 48), sub_1B9F5305C);

    sub_1BA1D51E8(v127, sub_1B9F5305C);
    sub_1BA1D51E8(v130, sub_1B9F5305C);

    v133 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
    swift_beginAccess();
    v190 = v110;
    v134 = v177;
    (v184)(v177, &v110[v133], v129);
    v135 = v191;
    swift_beginAccess();
    v136 = v91[5];
    v189 = v91[4];
    v184 = v91[6];
    LODWORD(v183) = *(v91 + 56);
    if (v135)
    {
      swift_beginAccess();
      v138 = *(v135 + 32);
      v137 = *(v135 + 40);
      v139 = *(v135 + 48);
      LOBYTE(v135) = *(v135 + 56);
    }

    else
    {
      v138 = 0;
      v137 = 0;
      v139 = 0;
    }

    sub_1BA1D5320(0, &unk_1EBBEDCC0, sub_1BA1D3654);
    v191 = v201 + *(v141 + 44);
    v142 = v192;
    v143 = v180;
    v144 = &v180[*(v192 + 20)];
    *v144 = 0;
    *(v144 + 1) = 0;
    v144[24] = 0;
    *(v144 + 2) = 0;
    v145 = v143 + *(v142 + 24);
    *v145 = 0;
    *(v145 + 8) = 0;
    *(v145 + 24) = 0;
    *(v145 + 16) = 0;
    (*(v203 + 32))(v143, v134, v129);

    *v144 = v189;
    *(v144 + 1) = v136;
    *(v144 + 2) = v184;
    v144[24] = v183;

    *v145 = v138;
    *(v145 + 8) = v137;
    *(v145 + 16) = v139;
    *(v145 + 24) = v135;
    v146 = swift_getKeyPath();
    v147 = v179;
    sub_1BA1D5180(v143, v179, type metadata accessor for AnimatedSnidgetCurrentValueText);
    v148 = &v147[*(v197 + 36)];
    *v148 = v146;
    v148[8] = 0;
    sub_1BA1D51E8(v143, type metadata accessor for AnimatedSnidgetCurrentValueText);
    v149 = swift_getKeyPath();
    v150 = v181;
    sub_1BA1D538C(v147, v181, sub_1B9F532BC);
    v151 = &v150[*(v199 + 36)];
    *v151 = v149;
    *(v151 + 1) = 1;
    v151[16] = 0;
    v205 = sub_1BA1CC960();
    v206 = v152;
    MEMORY[0x1BFAF1350](46, 0xE100000000000000);
    MEMORY[0x1BFAF1350](0x7468676952, 0xE500000000000000);
    MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
    sub_1B9F5D988();
    v153 = v182;
    sub_1BA4A5F18();

    sub_1BA1D51E8(v150, sub_1B9F5323C);
    v154 = v193;
    v155 = v194;
    sub_1BA1D5180(v193, v194, sub_1BA1D36C0);
    v156 = v200;
    sub_1BA1D5180(v153, v200, sub_1B9F530BC);
    v157 = v191;
    sub_1BA1D5180(v155, v191, sub_1BA1D36C0);
    sub_1BA1D368C(0);
    sub_1BA1D5180(v156, v157 + *(v158 + 48), sub_1B9F530BC);
    sub_1BA1D51E8(v153, sub_1B9F530BC);
    sub_1BA1D51E8(v154, sub_1BA1D36C0);
    sub_1BA1D51E8(v156, sub_1B9F530BC);
    sub_1BA1D51E8(v155, sub_1BA1D36C0);

    v159 = v178;
    sub_1BA1D538C(v201, v178, sub_1BA1D35BC);
    v140 = v185;
    sub_1BA1D538C(v159, v185, sub_1BA1D35BC);
    (*(v196 + 56))(v140, 0, 1, v198);
    v58 = v195;
  }

  else
  {
    v140 = v185;
    (v90)(v185, 1, 1, v41);
  }

  v160 = v186;
  sub_1BA1D5180(v58, v186, sub_1BA1D3584);
  v161 = v187;
  sub_1BA1D5180(v140, v187, sub_1BA1D3584);
  v162 = v188;
  sub_1BA1D5180(v160, v188, sub_1BA1D3584);
  sub_1BA1D3520();
  sub_1BA1D5180(v161, v162 + *(v163 + 48), sub_1BA1D3584);
  sub_1BA1D51E8(v140, sub_1BA1D3584);
  sub_1BA1D51E8(v58, sub_1BA1D3584);
  sub_1BA1D51E8(v161, sub_1BA1D3584);
  return sub_1BA1D51E8(v160, sub_1BA1D3584);
}

void sub_1BA1CFA5C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = sub_1BA4A6568();
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BA4A6578();
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B9F6B774(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DB980], 0, 0x8000, 0, 0, 1);
  [v12 pointSize];

  v29 = MEMORY[0x1E69E7CC0];
  if (a1 >= 3)
  {
    type metadata accessor for HKAudiogramEar(0);
    v28 = a1;
    sub_1BA4A8388();
    __break(1u);
  }

  else
  {
    v27 = [objc_opt_self() *off_1E7EEC970[a1]];
    v13 = *(a2 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_pointMarkerOptionSets);
    v14 = *(v13 + 16);
    if (v14)
    {
      v22 = a3;
      v16 = *(v6 + 16);
      v15 = v6 + 16;
      v23 = v16;
      v24 = a1;
      v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v18 = *(v15 + 56);
      do
      {
        v23(v8, v17, v26);
        v19 = v27;
        sub_1BA4A6558();
        sub_1BA4A6538();
        MEMORY[0x1BFAF1510]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        (*(v9 + 8))(v11, v25);
        v17 += v18;
        --v14;
      }

      while (v14);
      v20 = v29;
      a3 = v22;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1BFAF0F80](v20);

    v21 = sub_1BA4A6118();

    *a3 = v21;
  }
}

uint64_t sub_1BA1CFD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v6 = *(a2 + 28);
  *(a3 + v6) = swift_getKeyPath();
  sub_1BA1D32EC(0, &qword_1EDC5F358, 255, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = a3 + *(a2 + 32);
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
  sub_1BA1D37F8(&qword_1EDC61060, v8, type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel);

  *a3 = sub_1BA4A5348();
  *(a3 + 8) = v9;

  *(a3 + 16) = v5;
  return result;
}

uint64_t sub_1BA1CFEC4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5868();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1BA1D313C();
  return sub_1BA1CCC6C(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BA1CFF0C(uint64_t a1)
{
  v2 = sub_1BA1D399C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1CFF48(uint64_t a1)
{
  v2 = sub_1BA1D399C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA1CFF84()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_1BA1CFFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4F30A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BA4A8338();

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

uint64_t sub_1BA1D00A8(uint64_t a1)
{
  v2 = sub_1BA1D3A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1D00E4(uint64_t a1)
{
  v2 = sub_1BA1D3A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA1D0120(uint64_t a1)
{
  v2 = sub_1BA1D39F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1D015C(uint64_t a1)
{
  v2 = sub_1BA1D39F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1BA1D3E0C(0, &qword_1EDC5DCD8, sub_1BA1D399C, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.AudiogramAverageCodingKeys, MEMORY[0x1E69E6F58]);
  v24 = v4;
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v21 - v5;
  sub_1BA1D3E0C(0, &qword_1EDC5DCC8, sub_1BA1D39F0, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.StandardCodingKeys, v3);
  v7 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  sub_1BA1D3E0C(0, &qword_1EDC5DCD0, sub_1BA1D3A44, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.CodingKeys, v3);
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1D3A44();
  sub_1BA4A8548();
  if (v13 < 0)
  {
    v15 = v22;
    v16 = v13 & 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v28) = 1;
    sub_1BA1D399C();
    v17 = v23;
    v14 = v27;
    sub_1BA4A81F8();
    v28 = v16;
    type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel();
    sub_1BA1D37F8(&qword_1EDC611D8, v18, type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel);
    v19 = v24;
    sub_1BA4A8288();
    (*(v15 + 8))(v17, v19);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_1BA1D39F0();
    v14 = v27;
    sub_1BA4A81F8();
    v28 = v13;
    type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel();
    sub_1BA1D37F8(&qword_1EBBEDBB8, 255, type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel);
    sub_1BA4A8288();
    (*(v25 + 8))(v9, v7);
  }

  return (*(v26 + 8))(v12, v14);
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1BA1D3E0C(0, &qword_1EBBEDBC0, sub_1BA1D399C, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.AudiogramAverageCodingKeys, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v33 - v5;
  sub_1BA1D3E0C(0, &qword_1EBBEDBC8, sub_1BA1D39F0, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.StandardCodingKeys, v3);
  v7 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  sub_1BA1D3E0C(0, &qword_1EBBEDBD0, sub_1BA1D3A44, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType.CodingKeys, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = *(a1 + 24);
  v40 = a1;
  v14 = a1;
  v16 = &v33 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1BA1D3A44();
  v38 = v16;
  v17 = v39;
  sub_1BA4A8528();
  if (!v17)
  {
    v18 = v9;
    v39 = v7;
    v19 = v35;
    v20 = v36;
    v21 = v37;
    v22 = sub_1BA4A81D8();
    v23 = (2 * *(v22 + 16)) | 1;
    v41 = v22;
    v42 = v22 + 32;
    v43 = 0;
    v44 = v23;
    v24 = sub_1B9F4BD44();
    if (v24 == 2 || v43 != v44 >> 1)
    {
      v26 = sub_1BA4A7E68();
      swift_allocError();
      v28 = v27;
      sub_1BA1D3ABC(0, &qword_1EBBE9EF8, sub_1B9FFFE00, MEMORY[0x1E69E6B18]);
      *v28 = &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.ViewModelType;
      v29 = v38;
      sub_1BA4A8128();
      sub_1BA4A7E48();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v12 + 8))(v29, v11);
      swift_unknownObjectRelease();
    }

    else if (v24)
    {
      LOBYTE(v45) = 1;
      sub_1BA1D399C();
      sub_1BA4A8118();
      type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel();
      sub_1BA1D37F8(&qword_1EBBEDBD8, v25, type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel);
      sub_1BA4A81C8();
      (*(v34 + 8))(v19, v20);
      (*(v12 + 8))(v38, v11);
      swift_unknownObjectRelease();
      *v21 = v45 | 0x8000000000000000;
    }

    else
    {
      LOBYTE(v45) = 0;
      sub_1BA1D39F0();
      sub_1BA4A8118();
      v31 = v12;
      type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel();
      sub_1BA1D37F8(&qword_1EBBEDBE0, 255, type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel);
      v32 = v39;
      sub_1BA4A81C8();
      (*(v33 + 8))(v18, v32);
      (*(v31 + 8))(v38, v11);
      swift_unknownObjectRelease();
      *v21 = v45;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.__allocating_init(viewModelType:)(void *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t sub_1BA1D0C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65646F4D77656976 && a2 == 0xED0000657079546CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BA1D0D0C(uint64_t a1)
{
  v2 = sub_1BA1D3B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1D0D48(uint64_t a1)
{
  v2 = sub_1BA1D3B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1D0DE4(void *a1)
{
  v2 = v1;
  sub_1BA1D3E0C(0, &qword_1EDC5DCC0, sub_1BA1D3B38, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1D3B38();
  sub_1BA4A8548();
  v10[1] = *(v2 + 16);
  sub_1BA1D3B8C();

  sub_1BA4A8288();

  return (*(v6 + 8))(v8, v5);
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  AudiogramSnidgetCurrentValueDataView.ViewModel.init(from:)(a1);
  return v2;
}

uint64_t AudiogramSnidgetCurrentValueDataView.ViewModel.init(from:)(void *a1)
{
  sub_1BA1D3E0C(0, &qword_1EBBEDBE8, sub_1BA1D3B38, &type metadata for AudiogramSnidgetCurrentValueDataView.ViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1D3B38();
  sub_1BA4A8528();
  if (v1)
  {
    v9 = v11;
    type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1BA1D3BE0();
    sub_1BA4A81C8();
    (*(v5 + 8))(v7, v4);
    v9 = v11;
    *(v11 + 16) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1BA1D11A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

uint64_t sub_1BA1D12C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_1BA4A12C8();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_1BA1D134C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_1BA4A12C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = *a2;
  v14 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v13 + v14, v12, v8);
  return swift_endAccess();
}

uint64_t sub_1BA1D1470@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_1BA4A12C8();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_1BA1D1500(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_1BA4A12C8();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.__allocating_init(primaryString:supratitleString:pointMarkerOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
  v8 = sub_1BA4A12C8();
  v9 = *(*(v8 - 8) + 32);
  v9(v6 + v7, a1, v8);
  v9(v6 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString, a2, v8);
  *(v6 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_pointMarkerOptionSets) = a3;
  return v6;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.init(primaryString:supratitleString:pointMarkerOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
  v8 = sub_1BA4A12C8();
  v9 = *(*(v8 - 8) + 32);
  v9(v3 + v7, a1, v8);
  v9(v3 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString, a2, v8);
  *(v3 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_pointMarkerOptionSets) = a3;
  return v3;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.init(from:)(a1);
  return v2;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.init(from:)(void *a1)
{
  v2 = sub_1BA4A1278();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BA4A12C8();
  v46 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  sub_1BA1D3E0C(0, &qword_1EBBEDBF8, sub_1BA1D3C34, &type metadata for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v50 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - v17;
  v19 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1BA1D3C34();
  v49 = v18;
  v20 = v52;
  sub_1BA4A8528();
  if (v20)
  {
    v21 = v53;
    type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v42 = v9;
    v43 = v6;
    v22 = v46;
    v23 = v47;
    v52 = v16;
    v58 = 0;
    v24 = sub_1BA1D37F8(&qword_1EDC6AEA8, 255, MEMORY[0x1E6968848]);
    v25 = v48;
    sub_1BA4A81C8();
    v26 = v22[2];
    v27 = v14;
    v40 = v22 + 2;
    v41 = v24;
    v28 = v51;
    v39 = v26;
    v26(v14, v25, v51);
    v29 = v23;
    sub_1BA4A1288();
    sub_1B9F4D364(v23, v14);
    v30 = *(v45 + 8);
    v45 += 8;
    v38 = v30;
    v30(v23, v44);
    v48 = v22[1];
    (v48)(v25, v28);
    v21 = v53;
    v31 = v27;
    v32 = v22[4];
    v32(v53 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString, v31, v28);
    v57 = 1;
    v33 = v43;
    sub_1BA4A81C8();
    v46 = v22 + 1;
    v34 = v42;
    v35 = v51;
    v39(v42, v33, v51);
    sub_1BA4A1288();
    sub_1B9F4D364(v29, v34);
    v38(v29, v44);
    (v48)(v33, v35);
    v32(v21 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString, v34, v35);
    sub_1BA1D32EC(0, &unk_1EDC5E690, 255, MEMORY[0x1E69A4060], MEMORY[0x1E69E62F8]);
    v56 = 2;
    sub_1BA1D3CE0(&qword_1EBBEDC00, sub_1BA1D3CA8);
    v36 = v50;
    sub_1BA4A81C8();
    (*(v52 + 8))(v49, v36);
    *(v21 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_pointMarkerOptionSets) = v55;
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  return v21;
}

uint64_t sub_1BA1D1E64()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x537972616D697270;
  }
}

uint64_t sub_1BA1D1ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA1D4EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA1D1EFC(uint64_t a1)
{
  v2 = sub_1BA1D3C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1D1F38(uint64_t a1)
{
  v2 = sub_1BA1D3C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
  v2 = sub_1BA4A12C8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString, v2);

  return v0;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
  v2 = sub_1BA4A12C8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1D20F0(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A12C8();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  sub_1BA1D3E0C(0, &qword_1EDC5DCE8, sub_1BA1D3C34, &type metadata for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1D3C34();
  sub_1BA4A8548();
  v13 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_primaryString;
  swift_beginAccess();
  v14 = v31;
  v15 = *(v31 + 16);
  v26 = v2;
  v16 = v2 + v13;
  v17 = v15;
  v15(v8, v16, v4);
  v33 = 0;
  sub_1BA1D37F8(&qword_1EDC6AEB8, 255, MEMORY[0x1E6968848]);
  v30 = v10;
  v18 = v29;
  sub_1BA4A8288();
  if (v18)
  {
    (*(v14 + 8))(v8, v4);
    return (*(v28 + 8))(v12, v30);
  }

  else
  {
    v20 = *(v14 + 8);
    v31 = v14 + 8;
    v21 = v20;
    v20(v8, v4);
    v22 = OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_supratitleString;
    v23 = v26;
    swift_beginAccess();
    v17(v27, v23 + v22, v4);
    LOBYTE(v34) = 1;
    v24 = v30;
    sub_1BA4A8288();
    v21(v27, v4);
    v34 = *(v23 + OBJC_IVAR____TtCCV18HealthExperienceUI36AudiogramSnidgetCurrentValueDataView29AverageSensitivitiesViewModel27AverageSensitivityViewModel_pointMarkerOptionSets);
    v32 = 2;
    sub_1BA1D32EC(0, &unk_1EDC5E690, 255, MEMORY[0x1E69A4060], MEMORY[0x1E69E62F8]);
    sub_1BA1D3CE0(&qword_1EDC5E688, sub_1BA1D3D80);
    sub_1BA4A8288();
    return (*(v28 + 8))(0, v24);
  }
}

uint64_t sub_1BA1D2544@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel(0);
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

uint64_t sub_1BA1D2584@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel(0);
  v5 = swift_allocObject();
  result = AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1BA1D2604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 32);
  *(a2 + 8) = *(v3 + 40);
  *(a2 + 24) = v4;
}

uint64_t sub_1BA1D2664(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = v4;
  *(v6 + 56) = v5;
}

uint64_t sub_1BA1D26DC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
  *(a1 + 24) = v3;
}

uint64_t sub_1BA1D2738(__int128 *a1)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.__allocating_init(leftEarViewModel:rightEarViewModel:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 56) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.init(leftEarViewModel:rightEarViewModel:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 56) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

unint64_t sub_1BA1D2804()
{
  v1 = 0xD000000000000016;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1BA1D2858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA1D4FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA1D2880(uint64_t a1)
{
  v2 = sub_1BA1D3DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1D28BC(uint64_t a1)
{
  v2 = sub_1BA1D3DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.deinit()
{

  return v0;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1D2970(void *a1)
{
  v3 = v1;
  sub_1BA1D3E0C(0, &qword_1EDC5DCE0, sub_1BA1D3DB8, &type metadata for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1D3DB8();
  sub_1BA4A8548();
  v13 = *(v3 + 16);
  v16 = 0;
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel(0);
  sub_1BA1D37F8(&qword_1EDC612F8, 255, type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel);
  sub_1BA4A8238();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v16 = 1;
    sub_1BA4A8238();
    swift_beginAccess();
    v10 = *(v3 + 56);
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v15 = v10;
    v17 = 2;
    sub_1BA102B04();

    sub_1BA4A8238();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.init(from:)(a1);
  return v2;
}

uint64_t AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.init(from:)(void *a1)
{
  v3 = v1;
  sub_1BA1D3E0C(0, &qword_1EBBEDC10, sub_1BA1D3DB8, &type metadata for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v15 = *(v5 - 8);
  *&v16 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 41) = 0u;
  v8 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1BA1D3DB8();
  v14 = v7;
  sub_1BA4A8528();
  if (v2)
  {
  }

  else
  {
    v13[1] = v3 + 32;
    type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel(0);
    v17 = 0;
    sub_1BA1D37F8(&qword_1EBBEDC18, 255, type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel.AverageSensitivityViewModel);
    v9 = v16;
    v10 = v14;
    sub_1BA4A8178();
    *(v3 + 16) = v18;

    v17 = 1;
    sub_1BA4A8178();
    *(v3 + 24) = v18;

    v17 = 2;
    sub_1B9F73860();
    sub_1BA4A8178();
    (*(v15 + 8))(v10, v9);
    v16 = v18;
    v12 = v19;
    LOBYTE(v10) = v20;
    swift_beginAccess();
    *(v3 + 32) = v16;
    *(v3 + 48) = v12;
    *(v3 + 56) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v3;
}

uint64_t sub_1BA1D2F60@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudiogramSnidgetCurrentValueDataView.AverageSensitivitiesViewModel();
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

uint64_t sub_1BA1D2FE0@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1BA1D3074(uint64_t a1)
{
  v2 = sub_1BA4A5858();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BA4A5558();
}

void sub_1BA1D313C()
{
  if (!qword_1EBBEDAF8)
  {
    sub_1BA1D33CC(255, &qword_1EBBEDB00, sub_1BA1D31E8, sub_1BA1D3920, MEMORY[0x1E697F960]);
    v0 = sub_1BA4A52C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDAF8);
    }
  }
}

void sub_1BA1D321C()
{
  if (!qword_1EBBEDB10)
  {
    sub_1BA1D32B4(255);
    sub_1BA1D37F8(&qword_1EBBEDBA8, 255, sub_1BA1D32B4);
    v0 = sub_1BA4A5268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDB10);
    }
  }
}

void sub_1BA1D32EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA1D33CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1BA1D3450()
{
  if (!qword_1EBBEDB30)
  {
    sub_1BA1D34E8(255);
    sub_1BA1D37F8(&qword_1EBBEDB90, 255, sub_1BA1D34E8);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDB30);
    }
  }
}

void sub_1BA1D3520()
{
  if (!qword_1EBBEDB40)
  {
    sub_1BA1D3584(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEDB40);
    }
  }
}

void sub_1BA1D35BC()
{
  if (!qword_1EBBEDB50)
  {
    sub_1BA1D3654(255);
    sub_1BA1D37F8(&qword_1EBBEDB88, 255, sub_1BA1D3654);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDB50);
    }
  }
}

void sub_1BA1D36C0()
{
  if (!qword_1EBBEDB68)
  {
    sub_1BA1D3758(255);
    sub_1BA1D37F8(&qword_1EBBEDB80, 255, sub_1BA1D3758);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDB68);
    }
  }
}

void sub_1BA1D3790()
{
  if (!qword_1EBBEDB78)
  {
    sub_1B9F5305C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEDB78);
    }
  }
}

uint64_t sub_1BA1D37F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1BA1D3888()
{
  if (!qword_1EBBEDBA0)
  {
    sub_1BA1D34E8(255);
    sub_1BA1D37F8(&qword_1EBBEDB90, 255, sub_1BA1D34E8);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDBA0);
    }
  }
}

unint64_t sub_1BA1D399C()
{
  result = qword_1EDC610C8[0];
  if (!qword_1EDC610C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC610C8);
  }

  return result;
}

unint64_t sub_1BA1D39F0()
{
  result = qword_1EDC61098;
  if (!qword_1EDC61098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61098);
  }

  return result;
}

unint64_t sub_1BA1D3A44()
{
  result = qword_1EDC610B0;
  if (!qword_1EDC610B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC610B0);
  }

  return result;
}

void sub_1BA1D3ABC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

unint64_t sub_1BA1D3B38()
{
  result = qword_1EDC61078;
  if (!qword_1EDC61078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61078);
  }

  return result;
}

unint64_t sub_1BA1D3B8C()
{
  result = qword_1EDC61080;
  if (!qword_1EDC61080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61080);
  }

  return result;
}

unint64_t sub_1BA1D3BE0()
{
  result = qword_1EBBEDBF0;
  if (!qword_1EBBEDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDBF0);
  }

  return result;
}

unint64_t sub_1BA1D3C34()
{
  result = qword_1EDC61310;
  if (!qword_1EDC61310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61310);
  }

  return result;
}

uint64_t sub_1BA1D3CE0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA1D32EC(255, &unk_1EDC5E690, 255, MEMORY[0x1E69A4060], MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA1D3DB8()
{
  result = qword_1EDC611F0;
  if (!qword_1EDC611F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC611F0);
  }

  return result;
}

void sub_1BA1D3E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1BA1D3E74(uint64_t a1)
{
  result = sub_1BA1D37F8(&qword_1EDC60FA0, 255, type metadata accessor for AudiogramSnidgetCurrentValueDataView);
  *(a1 + 8) = result;
  return result;
}

void sub_1BA1D3F14()
{
  sub_1BA1D409C();
  if (v1 <= 0x3F)
  {
    sub_1BA1D32EC(319, qword_1EDC60FA8, v0, type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9F5366C(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1BA1D32EC(319, &qword_1EDC5F348, 255, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1BA1D32EC(319, &qword_1EDC5F340, 255, type metadata accessor for HKWidthDesignation, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BA1D409C()
{
  if (!qword_1EDC5F2D0)
  {
    type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel();
    sub_1BA1D37F8(&qword_1EDC61060, v0, type metadata accessor for AudiogramSnidgetCurrentValueDataView.ViewModel);
    v1 = sub_1BA4A5378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F2D0);
    }
  }
}

uint64_t sub_1BA1D41C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BA1D4220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1BA1D43A4()
{
  result = sub_1BA4A12C8();
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

void sub_1BA1D45A8()
{
  if (!qword_1EBBEDC28)
  {
    sub_1BA1D33CC(255, &qword_1EBBEDB00, sub_1BA1D31E8, sub_1BA1D3920, MEMORY[0x1E697F960]);
    sub_1BA1D4650();
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDC28);
    }
  }
}

unint64_t sub_1BA1D4650()
{
  result = qword_1EBBEDC30;
  if (!qword_1EBBEDC30)
  {
    sub_1BA1D33CC(255, &qword_1EBBEDB00, sub_1BA1D31E8, sub_1BA1D3920, MEMORY[0x1E697F960]);
    sub_1BA1D4714();
    sub_1BA1D47C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC30);
  }

  return result;
}

unint64_t sub_1BA1D4714()
{
  result = qword_1EBBEDC38;
  if (!qword_1EBBEDC38)
  {
    sub_1BA1D31E8(255);
    sub_1BA1D37F8(&qword_1EBBEDC40, 255, sub_1BA1D321C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC38);
  }

  return result;
}

unint64_t sub_1BA1D47C0()
{
  result = qword_1EBBEDC48;
  if (!qword_1EBBEDC48)
  {
    sub_1BA1D3920(255);
    sub_1B9F52970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC48);
  }

  return result;
}

unint64_t sub_1BA1D489C()
{
  result = qword_1EBBEDC50;
  if (!qword_1EBBEDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC50);
  }

  return result;
}

unint64_t sub_1BA1D48F4()
{
  result = qword_1EBBEDC58;
  if (!qword_1EBBEDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC58);
  }

  return result;
}

unint64_t sub_1BA1D494C()
{
  result = qword_1EBBEDC60;
  if (!qword_1EBBEDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC60);
  }

  return result;
}

unint64_t sub_1BA1D49A4()
{
  result = qword_1EBBEDC68;
  if (!qword_1EBBEDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC68);
  }

  return result;
}

unint64_t sub_1BA1D49FC()
{
  result = qword_1EBBEDC70;
  if (!qword_1EBBEDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC70);
  }

  return result;
}

unint64_t sub_1BA1D4A54()
{
  result = qword_1EBBEDC78;
  if (!qword_1EBBEDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDC78);
  }

  return result;
}

unint64_t sub_1BA1D4AAC()
{
  result = qword_1EDC611E0;
  if (!qword_1EDC611E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC611E0);
  }

  return result;
}

unint64_t sub_1BA1D4B04()
{
  result = qword_1EDC611E8;
  if (!qword_1EDC611E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC611E8);
  }

  return result;
}

unint64_t sub_1BA1D4B5C()
{
  result = qword_1EDC61300;
  if (!qword_1EDC61300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61300);
  }

  return result;
}

unint64_t sub_1BA1D4BB4()
{
  result = qword_1EDC61308;
  if (!qword_1EDC61308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61308);
  }

  return result;
}

unint64_t sub_1BA1D4C0C()
{
  result = qword_1EDC61068;
  if (!qword_1EDC61068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61068);
  }

  return result;
}

unint64_t sub_1BA1D4C64()
{
  result = qword_1EDC61070;
  if (!qword_1EDC61070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61070);
  }

  return result;
}

unint64_t sub_1BA1D4CBC()
{
  result = qword_1EDC610A0;
  if (!qword_1EDC610A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC610A0);
  }

  return result;
}

unint64_t sub_1BA1D4D14()
{
  result = qword_1EDC610A8;
  if (!qword_1EDC610A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC610A8);
  }

  return result;
}

unint64_t sub_1BA1D4D6C()
{
  result = qword_1EDC61088;
  if (!qword_1EDC61088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61088);
  }

  return result;
}

unint64_t sub_1BA1D4DC4()
{
  result = qword_1EDC61090;
  if (!qword_1EDC61090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61090);
  }

  return result;
}

unint64_t sub_1BA1D4E1C()
{
  result = qword_1EDC610B8;
  if (!qword_1EDC610B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC610B8);
  }

  return result;
}

unint64_t sub_1BA1D4E74()
{
  result = qword_1EDC610C0;
  if (!qword_1EDC610C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC610C0);
  }

  return result;
}

uint64_t sub_1BA1D4EC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x537972616D697270 && a2 == 0xED0000676E697274;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4EAEC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001BA4F3080 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

uint64_t sub_1BA1D4FF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001BA4F2FC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BA4F2FE0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA4EAEF0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1BA4A8338();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1BA1D5118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BA1D5180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA1D51E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA1D5248(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1BA1D5260()
{
  if (!qword_1EBBEDC98)
  {
    sub_1BA1D32B4(255);
    sub_1BA1D52CC();
    v0 = sub_1BA4A52C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDC98);
    }
  }
}

unint64_t sub_1BA1D52CC()
{
  result = qword_1EBBEDCA0;
  if (!qword_1EBBEDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDCA0);
  }

  return result;
}

void sub_1BA1D5320(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A52C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA1D538C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static UIPluginBundleProvider.sharedInstance.getter()
{
  if (qword_1EDC6CBD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static UIPluginBundleProvider.sharedInstance.setter(uint64_t a1)
{
  if (qword_1EDC6CBD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC6CBD8 = a1;
}

uint64_t (*static UIPluginBundleProvider.sharedInstance.modify())()
{
  if (qword_1EDC6CBD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BA1D55DC@<X0>(void *a1@<X8>)
{
  if (qword_1EDC6CBD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDC6CBD8;
}

uint64_t sub_1BA1D565C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EDC6CBD0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC6CBD8 = v1;
}

id sub_1BA1D56FC()
{
  v1 = v0;
  v2 = qword_1EDC6DC48;
  v3 = *(v0 + qword_1EDC6DC48);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = sub_1BA4A3AD8();
    [v5 load];

    v6 = sub_1BA4A3AD8();
    NSBundle.mainStoryboardFile.getter();
    v8 = v7;

    if (v8)
    {
      v9 = sub_1BA4A3AD8();
      v10 = sub_1BA4A6758();

      v4 = [objc_opt_self() storyboardWithName:v10 bundle:v9];
    }

    else
    {
      v4 = 0;
    }

    v11 = *(v1 + v2);
    *(v1 + v2) = v4;
    v12 = v4;
    sub_1B9F49114(v11);
  }

  sub_1BA028194(v3);
  return v4;
}

uint64_t UIPluginInfo.deinit()
{
  v0 = sub_1BA4A3AF8();
  sub_1B9F49114(*(v0 + qword_1EDC6DC48));
  return v0;
}

uint64_t ViewModelState.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ViewModelState.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ViewModelState.previousViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1BA4A7AA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ViewModelState.previousViewModel.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1BA4A7AA8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1BA1D5B48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (v6)
  {
    v10 = *(v4 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_29;
  }

  v12 = v10 + ((v9 + v8 + ((v8 + 16) & ~v8)) & ~v8);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      if ((v6 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((a1 + v8 + 16) & ~v8);
      }

      v18 = *(a1 + 1);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v7 + (v12 | v17) + 1;
}

void sub_1BA1D5CE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = (v10 + v9 + ((v9 + 16) & ~v9)) & ~v9;
  if (!v7)
  {
    ++v10;
  }

  v12 = v10 + v11;
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 < a2)
  {
    v16 = ~v8 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_48:
              if (v15 == 2)
              {
                *&a1[v12] = v17;
              }

              else
              {
                *&a1[v12] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v15)
    {
      a1[v12] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v12] = 0;
  }

  else if (v15)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);
    v22 = &a1[v9 + 16] & ~v9;

    v21(v22);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

id static HKDateCache.shared.getter()
{
  if (qword_1EDC6E3F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC6E400;

  return v1;
}

size_t UnusedModelsVersionMismatchAlertDataSource.init(context:healthStore:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v45 = sub_1BA4A1E88();
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_healthStore) = a2;
  v10 = a2;
  v11 = sub_1BA4A6F38();
  v12 = sub_1BA1D9D24(a1);

  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_cachedModelReferencesDataSource) = v12;
  v13 = [*&v12[qword_1EDC84A68] fetchedObjects];
  v14 = MEMORY[0x1E69E7CC0];
  v42 = v6;
  v43 = v10;
  if (!v13)
  {
    goto LABEL_15;
  }

  v15 = v13;
  v40 = v3;
  v41 = a1;
  sub_1BA4A23C8();
  v16 = sub_1BA4A6B08();

  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_14:

    v3 = v40;
    a1 = v41;
LABEL_15:
    v46 = v14;
    v27 = MEMORY[0x1E695BF98];
    sub_1BA1DA2A0(0, &qword_1EBBEDCE0, MEMORY[0x1E695BF98]);
    swift_allocObject();
    v28 = sub_1BA4A4DF8();
    v29 = OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_cachedSharableModelReferencesPublisher;
    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_cachedSharableModelReferencesPublisher) = v28;
    v30 = v43;
    v31 = static UnusedModelsVersionMismatchAlertDataSource.makeCommittedSharableModelReferencesPublisher(healthStore:)(v43);
    v46 = *(v3 + v29);
    sub_1BA1DB148(&unk_1EBBEDCF0, &qword_1EBBEDCE0, v27);
    v32 = sub_1BA4A4F98();
    v33 = sub_1BA1D6ACC(v32, v31, v30);

    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_sectionsPublisher) = v33;

    v35 = sub_1BA1D72D0(v34);
    v36 = *(v35 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_cachedModelReferencesDataSource);
    v37 = qword_1EDC84A70;
    swift_beginAccess();
    v38 = *(v36 + v37);

    [v38 registerObserver_];

    return v35;
  }

  v17 = sub_1BA4A7CC8();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_4:
  v46 = v14;
  result = sub_1BA066CC4(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v14 = v46;
    v20 = v16;
    v44 = v16 & 0xC000000000000001;
    v21 = v16;
    v22 = v17;
    do
    {
      if (v44)
      {
        v23 = MEMORY[0x1BFAF2860](v19);
      }

      else
      {
        v23 = *(v20 + 8 * v19 + 32);
      }

      v24 = v23;
      sub_1BA4A2398();

      v46 = v14;
      v26 = *(v14 + 16);
      v25 = *(v14 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1BA066CC4(v25 > 1, v26 + 1, 1);
        v14 = v46;
      }

      ++v19;
      *(v14 + 16) = v26 + 1;
      (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, v9, v45);
      v20 = v21;
    }

    while (v22 != v19);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t static UnusedModelsVersionMismatchAlertDataSource.makeCommittedSharableModelReferencesPublisher(healthStore:)(void *a1)
{
  v2 = v1;
  v55 = MEMORY[0x1E69E8050];
  sub_1BA1D9F78(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v39 - v5;
  v6 = MEMORY[0x1E69A3CF0];
  sub_1BA1DA0D0(0, &qword_1EBBEDD00, &qword_1EBBEDD28, MEMORY[0x1E69A3CF0]);
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v41 = MEMORY[0x1E69A3C80];
  sub_1BA1DA0D0(0, &qword_1EBBEDD38, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80]);
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v39 - v13;
  sub_1BA1DA1A0();
  v51 = v14;
  v53 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BA1DA1A0;
  v48 = sub_1BA1DA3BC;
  sub_1BA1DABB4(0, &unk_1EBBEDD60, sub_1BA1DA1A0, sub_1BA1DA3BC);
  v50 = v16;
  v52 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v39 - v17;
  v56 = sub_1BA4A6F78();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v2;
  sub_1BA1D9FDC();
  v19 = MEMORY[0x1E69E62F8];
  sub_1BA1D9F78(0, &qword_1EBBEDD28, v6, MEMORY[0x1E69E62F8]);
  sub_1BA1DA088(&qword_1EBBEDD30, sub_1BA1D9FDC);
  v20 = a1;
  sub_1BA4A4FE8();

  v21 = swift_allocObject();
  v22 = v39;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  sub_1BA1D9F78(0, &qword_1EBBEDCE8, v41, v19);
  v23 = v20;
  v24 = v40;
  v25 = v43;
  sub_1BA4A4B68();

  (*(v44 + 8))(v10, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v22;
  v27 = MEMORY[0x1E695BED0];
  sub_1BA1DA2A0(0, &qword_1EBBEDD48, MEMORY[0x1E695BED0]);
  sub_1BA1DA340();
  sub_1BA1DB148(&qword_1EBBEDD58, &qword_1EBBEDD48, v27);
  v28 = v23;
  v29 = v42;
  v30 = v46;
  sub_1BA4A5018();

  (*(v47 + 8))(v24, v30);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v31 = sub_1BA4A7308();
  v56 = v31;
  v32 = sub_1BA4A72A8();
  v33 = v54;
  (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
  sub_1BA1DA3BC();
  sub_1B9F3DC80();
  v34 = v45;
  v35 = v51;
  sub_1BA4A50A8();
  sub_1BA1DB18C(v33, &qword_1EDC6B5B8, v55);

  (*(v53 + 8))(v29, v35);
  sub_1BA1DA408(&qword_1EBBEDD80, &unk_1EBBEDD60, v49, v48);
  v36 = v50;
  v37 = sub_1BA4A4F98();
  (*(v52 + 8))(v34, v36);
  return v37;
}

uint64_t sub_1BA1D6ACC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_1BA1DB288();
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1DB358();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1DB418();
  v18 = *(v17 - 8);
  v31 = v17;
  v32 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v36 = a1;
  v21 = MEMORY[0x1E695BED0];
  sub_1BA1DA2A0(0, &qword_1EBBEDD48, MEMORY[0x1E695BED0]);
  sub_1BA1DB148(&qword_1EBBEDD58, &qword_1EBBEDD48, v21);
  sub_1BA4A4FC8();
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = v4;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1BA1DB4F4;
  *(v23 + 24) = v22;
  sub_1BA1D9F78(0, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80], MEMORY[0x1E69E62F8]);
  sub_1BA1DA088(&qword_1EBBEDE68, sub_1BA1DB358);
  v24 = a3;
  sub_1BA4A4FE8();

  (*(v14 + 8))(v16, v13);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v4;
  sub_1B9F14628(0, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
  v26 = v24;
  v27 = v31;
  sub_1BA4A4B68();

  sub_1BA1DA088(&unk_1EBBEDE78, sub_1BA1DB288);
  v28 = v33;
  v29 = sub_1BA4A4F98();
  (*(v34 + 8))(v11, v28);
  (*(v32 + 8))(v20, v27);
  return v29;
}

void *sub_1BA1D6F20(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  v9 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v10 = sub_1BA4A7A78();
  v11 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithName:v12 loggingCategory:v10];

  *(v2 + v9) = v13;
  v14 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v26 = 0x627550736D657449;
  v27 = 0xEF3C72656873696CLL;
  sub_1BA4A1788();
  v15 = sub_1BA4A1748();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x1BFAF1350](v15, v17);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v18 = v27;
  *v14 = v26;
  v14[1] = v18;
  v19 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSections) = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSectionsIdentifierToIndexMap;
  *(v2 + v20) = sub_1B9F1C5F0(v19);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable) = 0;
  *(swift_allocObject() + 16) = v4;
  swift_allocObject();
  swift_weakInit();
  sub_1BA1DABB4(0, &qword_1EBBEDDA8, sub_1BA1DAC5C, sub_1BA1DB114);
  v23 = v22;
  sub_1BA1DA408(&qword_1EBBEDE28, &qword_1EBBEDDA8, sub_1BA1DAC5C, sub_1BA1DB114);
  v24 = sub_1BA4A5008();

  (*(*(v23 - 8) + 8))(a1, v23);
  *(v2 + v21) = v24;

  return v2;
}

void *sub_1BA1D72D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_1BA4A45D8();
  v9 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v10 = sub_1BA4A7A78();
  v11 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithName:v12 loggingCategory:v10];

  *(v2 + v9) = v13;
  v14 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v25 = 0x627550736D657449;
  v26 = 0xEF3C72656873696CLL;
  sub_1BA4A1788();
  v15 = sub_1BA4A1748();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x1BFAF1350](v15, v17);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v18 = v26;
  *v14 = v25;
  v14[1] = v18;
  v19 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSections) = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_arrangedSectionsIdentifierToIndexMap;
  *(v2 + v20) = sub_1B9F1C5F0(v19);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_cancellable) = 0;
  *(swift_allocObject() + 16) = v4;
  swift_allocObject();
  swift_weakInit();
  sub_1BA1DB1FC();
  sub_1BA1DA088(&qword_1EBBEDE50, sub_1BA1DB1FC);
  v22 = sub_1BA4A5008();

  *(v2 + v21) = v22;

  return v2;
}

uint64_t sub_1BA1D7644()
{
  v0 = sub_1BA4A6F38();
  v1 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)();

  return v1;
}

uint64_t static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)()
{
  v0 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v0);

  MEMORY[0x1BFAF1350](24413, 0xE200000000000000);
  v1 = sub_1BA4A1D58();
  MEMORY[0x1BFAF1350](v1);

  return 91;
}

size_t sub_1BA1D782C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_1BA024754(v8);

  v11 = sub_1BA024754(v10);

  if (*(v11 + 16) <= *(v9 + 16) >> 3)
  {
    v34 = v9;
    sub_1BA08BCE0(v11);

    v12 = v34;
  }

  else
  {
    v12 = sub_1BA08D058(v11, v9);
  }

  sub_1BA4A3D88();
  swift_bridgeObjectRetain_n();
  v13 = a3;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v4;
    v34 = v17;
    v18 = v17;
    *v16 = 136315650;
    v19 = sub_1BA4A6F38();
    v20 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)();
    v22 = v21;

    v23 = sub_1B9F0B82C(v20, v22, &v34);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2048;
    v24 = *(v12 + 16);

    *(v16 + 14) = v24;

    *(v16 + 22) = 2080;
    sub_1BA4A1E88();
    sub_1BA1DA088(&qword_1EBBEA650, MEMORY[0x1E69A3C80]);
    v25 = sub_1BA4A6D88();
    v27 = sub_1B9F0B82C(v25, v26, &v34);

    *(v16 + 24) = v27;
    _os_log_impl(&dword_1B9F07000, v14, v15, "%s: Computed that there are %ld unclaimed models in this transaction. %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v18, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v5 + 8))(v7, v33);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v5 + 8))(v7, v4);
  }

  v28 = *(v12 + 16);
  if (!v28)
  {
    goto LABEL_10;
  }

  v29 = sub_1BA021C58(*(v12 + 16), 0);
  v30 = *(sub_1BA4A1E88() - 8);
  v31 = sub_1BA023BBC(&v34, (v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80))), v28, v12);
  sub_1B9F52E48();
  if (v31 != v28)
  {
    __break(1u);
LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  return v29;
}

uint64_t sub_1BA1D7BE8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a3;
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A3EA8();
  v63 = *(v11 - 8);
  *&v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v60 = v7;
    v61 = a4;
    sub_1BA4A3D88();
    swift_bridgeObjectRetain_n();
    v18 = a2;
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v59 = v8;
      v23 = v22;
      v65 = v22;
      *v21 = 136315394;
      v24 = sub_1BA4A6F38();
      v25 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)();
      v27 = v26;

      v28 = sub_1B9F0B82C(v25, v27, &v65);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2048;
      v29 = *(v17 + 16);

      *(v21 + 14) = v29;

      _os_log_impl(&dword_1B9F07000, v19, v20, "%s: Returning version mismatch tile because there are %ld unclaimed models", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v30 = v23;
      v8 = v59;
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v63 + 8))(v16, v64);
    v65 = 0x65646F4D77656956;
    v66 = 0xEA00000000005F6CLL;
    sub_1BA4A1788();
    v43 = sub_1BA4A1748();
    v45 = v44;
    v46 = *(v8 + 8);
    v47 = v60;
    v46(v10, v60);
    MEMORY[0x1BFAF1350](v43, v45);

    v48 = v65;
    v49 = v66;
    sub_1B9F14628(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    v64 = xmmword_1BA4B5480;
    *(v42 + 16) = xmmword_1BA4B5480;
    sub_1B9F28360();
    v50 = swift_allocObject();
    *(v50 + 16) = v64;
    *(v50 + 56) = &type metadata for PlatformSharingVersionMismatchTileCell.ViewModel;
    *(v50 + 64) = sub_1BA1DB53C();
    v51 = swift_allocObject();
    *(v50 + 32) = v51;
    v51[2] = v48;
    v51[3] = v49;
    v51[4] = 0;
    v51[5] = 0;
    sub_1BA4A1788();
    v52 = sub_1BA4A1748();
    v54 = v53;
    v46(v10, v47);
    v55 = MEMORY[0x1E69E7CC0];
    *(v42 + 48) = MEMORY[0x1E69E7CC0];
    v56 = sub_1B9F1C5F0(v55);
    *(v42 + 32) = 0;
    *(v42 + 40) = 0;
    *(v42 + 48) = v50;
    *(v42 + 56) = v56;

    v57 = Array<A>.identifierToIndexDict()(v50);

    *(v42 + 56) = v57;

    *(v42 + 64) = v52;
    *(v42 + 72) = v54;
    a4 = v61;
  }

  else
  {
    sub_1BA4A3D88();
    v31 = a2;
    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v65 = v35;
      *v34 = 136315138;
      v36 = sub_1BA4A6F38();
      v37 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)();
      v39 = v38;

      v40 = sub_1B9F0B82C(v37, v39, &v65);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_1B9F07000, v32, v33, "%s: Returning empty section because there are no unclaimed models", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
    }

    result = (*(v63 + 8))(v13, v64);
    v42 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v42;
  return result;
}

void sub_1BA1D8164(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1BA1D81F0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a4;
  sub_1BA1D9F78(0, &qword_1EBBEDE40, MEMORY[0x1E69A3CF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1BA4A2298();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v33 = &v30 - v15;
  v16 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v13 = v29)
  {
    v18 = 0;
    v41 = 0;
    v37 = v16 & 0xFFFFFFFFFFFFFF8;
    v38 = v16 & 0xC000000000000001;
    v35 = (v34 + 32);
    v36 = (v34 + 48);
    v19 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v40 = v13;
    while (1)
    {
      if (v38)
      {
        v13 = MEMORY[0x1BFAF2860](v18, v16, v14);
      }

      else
      {
        if (v18 >= *(v37 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(v16 + 8 * v18 + 32);
      }

      v20 = v13;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = v16;
      v42 = v13;
      v23 = v41;
      sub_1BA1D8574(&v42, a2, a3, v9);
      v41 = v23;

      v24 = v40;
      if ((*v36)(v9, 1, v40) == 1)
      {
        v13 = sub_1BA1DB18C(v9, &qword_1EBBEDE40, MEMORY[0x1E69A3CF0]);
      }

      else
      {
        v25 = *v35;
        v26 = v33;
        (*v35)(v33, v9, v24);
        v25(v39, v26, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1BA280678(0, v19[2] + 1, 1, v19);
        }

        v28 = v19[2];
        v27 = v19[3];
        if (v28 >= v27 >> 1)
        {
          v19 = sub_1BA280678(v27 > 1, v28 + 1, 1, v19);
        }

        v19[2] = v28 + 1;
        v13 = (v25)(v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28, v39, v40);
        a2 = v31;
        a3 = v32;
      }

      v16 = v22;
      ++v18;
      if (v21 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v29 = v13;
    i = sub_1BA4A7CC8();
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_21:
  *v30 = v19;
}

uint64_t sub_1BA1D8574@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_1BA4A2288();
  if (v4)
  {
    v43 = a3;
    sub_1BA4A3D88();
    v14 = v13;
    v15 = a2;
    v16 = v4;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v42 = v9;
      v20 = v19;
      v41 = swift_slowAlloc();
      v45 = v41;
      *v20 = 136315650;
      v40 = v18;
      v21 = sub_1BA4A6F38();
      v22 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)();
      v43 = a4;
      v24 = v23;

      v25 = sub_1B9F0B82C(v22, v24, &v45);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v26 = [v14 name];
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = v28;

      v30 = sub_1B9F0B82C(v27, v29, &v45);

      *(v20 + 14) = v30;
      *(v20 + 22) = 2080;
      v44 = v4;
      v31 = v4;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v45);
      a4 = v43;

      *(v20 + 24) = v34;
      _os_log_impl(&dword_1B9F07000, v17, v40, "%s: Unable to map shared summary %s to sharable model: %s", v20, 0x20u);
      v35 = v41;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);

      (*(v10 + 8))(v12, v42);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    v38 = sub_1BA4A2298();
    return (*(*(v38 - 8) + 56))(a4, 1, 1, v38);
  }

  else
  {
    v36 = sub_1BA4A2298();
    return (*(*(v36 - 8) + 56))(a4, 0, 1, v36);
  }
}

uint64_t sub_1BA1D8914@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v49 = a3;
  v50 = sub_1BA4A2298();
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v61 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v45 - v10;
  v59 = sub_1BA4A1E88();
  v11 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A3EA8();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(*a1 + 16);
  if (v17)
  {
    v46 = a2;
    v48 = a4;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1BA066CC4(0, v17, 0);
    v18 = v62;
    v19 = *(v7 + 16);
    v57 = v7 + 16;
    v58 = v19;
    v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v47 = v16;
    v21 = v16 + v20;
    v22 = *(v7 + 72);
    v55 = (v7 + 8);
    v56 = v22;
    v54 = v11 + 32;
    v23 = v50;
    v24 = v19;
    do
    {
      v25 = v13;
      v26 = v11;
      v27 = v60;
      v24(v60, v21, v23);
      v24(v61, v27, v23);
      sub_1BA4A1E98();
      (*v55)(v27, v23);
      v62 = v18;
      v29 = *(v18 + 16);
      v28 = *(v18 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1BA066CC4(v28 > 1, v29 + 1, 1);
        v23 = v50;
        v18 = v62;
      }

      *(v18 + 16) = v29 + 1;
      v11 = v26;
      (*(v26 + 32))(v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v29, v25, v59);
      v21 += v56;
      --v17;
      v13 = v25;
    }

    while (v17);
    v61 = v18;
    v16 = v47;
    a4 = v48;
    a2 = v46;
  }

  else
  {
    v61 = MEMORY[0x1E69E7CC0];
  }

  v30 = v51;
  sub_1BA4A3D88();
  swift_bridgeObjectRetain_n();
  v31 = a2;
  v32 = sub_1BA4A3E88();
  v33 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v16;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v62 = v36;
    *v35 = 136315394;
    v37 = a4;
    v38 = sub_1BA4A6F38();
    v39 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)();
    v41 = v40;

    a4 = v37;
    v42 = sub_1B9F0B82C(v39, v41, &v62);

    *(v35 + 4) = v42;
    *(v35 + 12) = 2048;
    v43 = *(v34 + 16);

    *(v35 + 14) = v43;

    _os_log_impl(&dword_1B9F07000, v32, v33, "%s: Received %ld committed models from the latest HealthKit transaction", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1BFAF43A0](v36, -1, -1);
    MEMORY[0x1BFAF43A0](v35, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  result = (*(v52 + 8))(v30, v53);
  *a4 = v61;
  return result;
}

uint64_t sub_1BA1D8DD8@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a3;
  sub_1BA1DA2A0(0, &qword_1EBBEDE30, MEMORY[0x1E695C010]);
  v8 = v7;
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v35 - v9;
  v38 = sub_1BA4A3EA8();
  v10 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_1BA4A3D88();
  v14 = a2;
  v15 = v13;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v8;
    v19 = v18;
    v35 = swift_slowAlloc();
    v42 = v35;
    *v19 = 136315394;
    v20 = sub_1BA4A6F38();
    v21 = static UnusedModelsVersionMismatchAlertDataSource.logPrefix(sourceProfile:)();
    v22 = a4;
    v24 = v23;

    v25 = sub_1B9F0B82C(v21, v24, &v42);
    a4 = v22;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v41 = v13;
    v26 = v13;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, &v42);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_1B9F07000, v16, v17, "%s: Error when fetching summaries: %s", v19, 0x16u);
    v30 = v35;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    v31 = v19;
    v8 = v36;
    MEMORY[0x1BFAF43A0](v31, -1, -1);
  }

  (*(v10 + 8))(v12, v38);
  sub_1BA1D9F78(0, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80], MEMORY[0x1E69E62F8]);
  v32 = v39;
  sub_1BA4A4E88();
  sub_1BA1DB148(&qword_1EBBEDE38, &qword_1EBBEDE30, MEMORY[0x1E695C010]);
  v33 = sub_1BA4A4F98();
  result = (*(v40 + 8))(v32, v8);
  *a4 = v33;
  return result;
}

id sub_1BA1D91C0()
{
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D458;
  v14[5] = *&qword_1EDC6D468;
  v14[6] = xmmword_1EDC6D478;
  v14[7] = xmmword_1EDC6D488;
  v14[0] = xmmword_1EDC6D418;
  v14[1] = *&qword_1EDC6D428;
  v14[2] = xmmword_1EDC6D438;
  v14[3] = xmmword_1EDC6D448;
  v4 = xmmword_1EDC6D418;
  v5 = qword_1EDC6D428;
  v0 = unk_1EDC6D430;
  v2 = xmmword_1EDC6D438;
  v1 = xmmword_1EDC6D448;
  v9 = *(&xmmword_1EDC6D458 + 8);
  v10 = *&qword_1EDC6D470;
  v11 = *(&xmmword_1EDC6D478 + 8);
  v12 = *(&xmmword_1EDC6D488 + 1);
  v8 = *(&xmmword_1EDC6D448 + 8);
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

void sub_1BA1D9344()
{

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_healthStore);
}

uint64_t UnusedModelsVersionMismatchAlertDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t UnusedModelsVersionMismatchAlertDataSource.__deallocating_deinit()
{
  UnusedModelsVersionMismatchAlertDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t JustObservingFetchedResultsControllerDataSource.identifier.getter()
{
  v0 = sub_1B9F35074();

  return v0;
}

uint64_t JustObservingFetchedResultsControllerDataSource.snapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDC84A60;
  sub_1B9F12538();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1BA1D95AC(uint64_t a1)
{
  v3 = qword_1EDC84A70;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA1D9674(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[qword_1EBBEDD88];
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000030, 0x80000001BA4F3190);
  sub_1BA4A1788();
  v9 = sub_1BA4A1748();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1BFAF1350](v9, v11);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v12 = v24;
  *v8 = v23;
  *(v8 + 1) = v12;
  sub_1BA4A45D8();
  v13 = qword_1EDC84A70;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v14 = sub_1BA4A7A78();
  v15 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v16 = sub_1BA4A6758();
  v17 = [v15 initWithName:v16 loggingCategory:v14];

  *&v2[v13] = v17;
  *&v2[qword_1EDC84A68] = a1;
  sub_1BA1D9F78(0, &unk_1EBBEDE90, MEMORY[0x1E69A3D78], type metadata accessor for JustObservingFetchedResultsControllerDataSource);
  v22.receiver = v2;
  v22.super_class = v18;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  [v19 setDelegate_];
  sub_1BA1D991C();

  return v20;
}

id sub_1BA1D991C()
{
  v10[3] = *MEMORY[0x1E69E9840];
  v1 = *&v0[qword_1EDC84A68];
  v10[0] = 0;
  v2 = [v1 performFetch_];
  v3 = v10[0];
  if (v2)
  {

    return v3;
  }

  else
  {
    v5 = v10[0];
    sub_1BA4A1488();

    swift_willThrow();
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_1BA4A7DF8();
    v6 = [v0 description];
    v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v9 = v8;

    MEMORY[0x1BFAF1350](v7, v9);

    MEMORY[0x1BFAF1350](0xD00000000000001BLL, 0x80000001BA4F3390);
    sub_1B9F0D950(0, &qword_1EDC6E310);
    sub_1BA4A7FB8();
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

void sub_1BA1D9AD0()
{
  swift_getObjectType();
  sub_1BA4A7DF8();

  v0 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v0);

  MEMORY[0x1BFAF1350](0xD000000000000024, 0x80000001BA4F3220);
  sub_1BA4A8018();
  __break(1u);
}

id JustObservingFetchedResultsControllerDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JustObservingFetchedResultsControllerDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JustObservingFetchedResultsControllerDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA1D9C70(uint64_t a1)
{

  v2 = qword_1EDC84A60;
  sub_1B9F12538();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_1EDC84A68);
}

id sub_1BA1D9D24(uint64_t a1)
{
  sub_1BA4A23C8();
  v2 = sub_1BA4A23A8();
  v3 = MEMORY[0x1E69E6F90];
  sub_1B9F14628(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5470;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  swift_getKeyPath();
  *(v4 + 32) = sub_1BA4A71B8();
  v5 = v2;
  v6 = sub_1BA4A23B8();

  v7 = sub_1BA4A6AE8();

  [v6 setSortDescriptors_];

  [v6 setReturnsDistinctResults_];
  sub_1B9F14628(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8, v3);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 56) = v9;
  *(v8 + 32) = 0x696669746E656469;
  *(v8 + 40) = 0xEA00000000007265;
  v10 = sub_1BA4A6AE8();

  [v6 setPropertiesToFetch_];

  v11 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v6 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  sub_1BA1D9F78(0, &unk_1EBBEDE90, MEMORY[0x1E69A3D78], type metadata accessor for JustObservingFetchedResultsControllerDataSource);
  v13 = objc_allocWithZone(v12);
  v14 = sub_1BA1D9674(v11);

  return v14;
}

void sub_1BA1D9F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA1D9FDC()
{
  if (!qword_1EBBEDD08)
  {
    sub_1BA1DB030(255, &qword_1EBBEDD10, &unk_1EBBEDD18, 0x1E696C400, MEMORY[0x1E69E62F8]);
    sub_1B9F0D950(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDD08);
    }
  }
}

uint64_t sub_1BA1DA088(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA1DA0D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA1D9FDC();
    sub_1BA1D9F78(255, a3, a4, MEMORY[0x1E69E62F8]);
    sub_1BA1DA088(&qword_1EBBEDD30, sub_1BA1D9FDC);
    v7 = sub_1BA4A4B78();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BA1DA1A0()
{
  if (!qword_1EBBEDD40)
  {
    sub_1BA1DA0D0(255, &qword_1EBBEDD38, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80]);
    v0 = MEMORY[0x1E695BED0];
    sub_1BA1DA2A0(255, &qword_1EBBEDD48, MEMORY[0x1E695BED0]);
    sub_1BA1DA340();
    sub_1BA1DB148(&qword_1EBBEDD58, &qword_1EBBEDD48, v0);
    v1 = sub_1BA4A4BB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDD40);
    }
  }
}

void sub_1BA1DA2A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA1D9F78(255, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80], MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA1DA340()
{
  result = qword_1EBBEDD50;
  if (!qword_1EBBEDD50)
  {
    sub_1BA1DA0D0(255, &qword_1EBBEDD38, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDD50);
  }

  return result;
}

uint64_t sub_1BA1DA408(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA1DABB4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_1BA1DA458()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1BA4A1E88();
  v7 = *(v39 - 8);
  v8 = MEMORY[0x1EEE9AC00](v39);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI42UnusedModelsVersionMismatchAlertDataSource_cachedModelReferencesDataSource) + qword_1EDC84A68) fetchedObjects];
  v12 = MEMORY[0x1E69E7CC0];
  v36 = v2;
  v37 = v6;
  if (v11)
  {
    v13 = v11;
    sub_1BA4A23C8();
    v14 = sub_1BA4A6B08();

    if (v14 >> 62)
    {
      v15 = sub_1BA4A7CC8();
      if (v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_4:
        v40 = v12;
        result = sub_1BA066CC4(0, v15 & ~(v15 >> 63), 0);
        if (v15 < 0)
        {
          __break(1u);
          return result;
        }

        v33 = v4;
        v34 = v3;
        v35 = v1;
        v17 = 0;
        v12 = v40;
        v18 = v14;
        v38 = v14 & 0xC000000000000001;
        v19 = v15;
        do
        {
          if (v38)
          {
            v20 = MEMORY[0x1BFAF2860](v17, v18);
          }

          else
          {
            v20 = *(v18 + 8 * v17 + 32);
          }

          v21 = v20;
          sub_1BA4A2398();

          v40 = v12;
          v23 = *(v12 + 16);
          v22 = *(v12 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1BA066CC4(v22 > 1, v23 + 1, 1);
            v12 = v40;
          }

          ++v17;
          *(v12 + 16) = v23 + 1;
          (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, v10, v39);
          v18 = v14;
        }

        while (v19 != v17);

        v3 = v34;
        v4 = v33;
        goto LABEL_15;
      }
    }

LABEL_15:
    v6 = v37;
  }

  sub_1BA4A3D88();
  swift_bridgeObjectRetain_n();

  v24 = sub_1BA4A3E88();
  v25 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = v4;
    v28 = swift_slowAlloc();
    v40 = v28;
    *v26 = 136315394;
    v29 = sub_1BA1D7644();
    v31 = sub_1B9F0B82C(v29, v30, &v40);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2048;
    v32 = *(v12 + 16);

    *(v26 + 14) = v32;

    _os_log_impl(&dword_1B9F07000, v24, v25, "%s: Received %ld claimed cache model references", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    MEMORY[0x1BFAF43A0](v26, -1, -1);

    (*(v27 + 8))(v37, v3);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v4 + 8))(v6, v3);
  }

  v40 = v12;
  sub_1BA4A4DA8();
}

uint64_t type metadata accessor for UnusedModelsVersionMismatchAlertDataSource()
{
  result = qword_1EBBEDD90;
  if (!qword_1EBBEDD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA1DABB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    a4();
    sub_1B9F3DC80();
    v6 = sub_1BA4A4CC8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA1DAC5C()
{
  if (!qword_1EBBEDDB0)
  {
    sub_1BA1DAD48();
    sub_1BA1DB098();
    sub_1BA1DA088(&qword_1EBBEDE10, sub_1BA1DAD48);
    sub_1BA1DA088(&qword_1EBBEDE18, sub_1BA1DB098);
    v0 = sub_1BA4A4BB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDDB0);
    }
  }
}

void sub_1BA1DAD48()
{
  if (!qword_1EBBEDDB8)
  {
    sub_1BA1DAE18();
    sub_1B9F14628(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    sub_1BA1DA088(&qword_1EBBEDE00, sub_1BA1DAE18);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDDB8);
    }
  }
}

void sub_1BA1DAE18()
{
  if (!qword_1EBBEDDC0)
  {
    sub_1BA1DAF04();
    sub_1BA1DAF84();
    sub_1BA1DA088(&qword_1EBBEC778, sub_1BA1DAF04);
    sub_1BA1DA088(&qword_1EBBEDDF0, sub_1BA1DAF84);
    v0 = sub_1BA4A4A98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDDC0);
    }
  }
}

void sub_1BA1DAF04()
{
  if (!qword_1EBBEC770)
  {
    type metadata accessor for CloudProfileInformation();
    sub_1B9F0D950(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC770);
    }
  }
}

void sub_1BA1DAF84()
{
  if (!qword_1EBBEDDD0)
  {
    sub_1BA1DB030(255, &qword_1EBBEDDD8, &unk_1EBBEDDE0, 0x1E696C418, MEMORY[0x1E69E6720]);
    sub_1B9F0D950(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDDD0);
    }
  }
}

void sub_1BA1DB030(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA1DB098()
{
  if (!qword_1EBBEDE08)
  {
    sub_1B9F14628(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A4E68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDE08);
    }
  }
}

uint64_t sub_1BA1DB148(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA1DA2A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA1DB18C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA1D9F78(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA1DB1FC()
{
  if (!qword_1EBBEDE48)
  {
    sub_1B9F14628(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDE48);
    }
  }
}

void sub_1BA1DB288()
{
  if (!qword_1EBBEDE58)
  {
    sub_1BA1DB358();
    sub_1B9F14628(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    sub_1BA1DA088(&qword_1EBBEDE68, sub_1BA1DB358);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDE58);
    }
  }
}

void sub_1BA1DB358()
{
  if (!qword_1EBBEDE60)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1BA1DA2A0(255, &qword_1EBBEDD48, MEMORY[0x1E695BED0]);
    sub_1BA1DB148(&qword_1EBBEDD58, &qword_1EBBEDD48, v0);
    v1 = sub_1BA4A4A98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDE60);
    }
  }
}

void sub_1BA1DB418()
{
  if (!qword_1EBBEDE70)
  {
    sub_1BA1DB358();
    sub_1BA1D9F78(255, &qword_1EBBEDCE8, MEMORY[0x1E69A3C80], MEMORY[0x1E69E62F8]);
    sub_1BA1DA088(&qword_1EBBEDE68, sub_1BA1DB358);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEDE70);
    }
  }
}

uint64_t sub_1BA1DB4FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1BA1DB53C()
{
  result = qword_1EBBEDE88;
  if (!qword_1EBBEDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDE88);
  }

  return result;
}

uint64_t HealthChecklistFeatureViewedAnalyticsEvent.init(featureName:source:currentState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = a1;
  v34 = a2;
  v8 = sub_1BA4A2A88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = *a3;
  v16 = a3[1];
  sub_1BA4A2F48();
  v32 = sub_1BA4A2F38();
  v28 = sub_1BA4A2F28();
  v17 = *(v9 + 16);
  v31 = a4;
  v17(v14, a4, v8);
  v17(v11, a4, v8);
  sub_1BA1DBD2C(v15, v16);
  sub_1BA4A2A68();
  v30 = sub_1BA4A6758();

  sub_1BA4A2A68();
  v29 = sub_1BA4A6758();

  sub_1BA1DBD44();
  v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LOBYTE(a4) = v28;
  v26 = [v18 initWithBool_];
  v19 = sub_1BA4A6758();

  v35 = v15;
  v36 = v16;
  sub_1BA1DB8CC(a4 & 1);
  sub_1BA1DBD9C(v15, v16);
  v20 = sub_1BA4A6758();

  v21 = *(v9 + 8);
  v21(v31, v8);
  v21(v11, v8);
  result = (v21)(v14, v8);
  *a5 = v19;
  a5[1] = v20;
  v23 = v29;
  a5[2] = v30;
  a5[3] = v23;
  v24 = v26;
  a5[4] = v27;
  a5[5] = v24;
  a5[6] = v15;
  a5[7] = v16;
  return result;
}

uint64_t sub_1BA1DB8CC(char a1)
{
  v2 = v1[1];
  switch(v2)
  {
    case 3uLL:
      return 0xD000000000000015;
    case 2uLL:
      return 0x6F69746F6D6F7250;
    case 1uLL:
      return 0xD000000000000010;
  }

  if (a1)
  {
    if (v2)
    {
      v4 = *v1;
    }

    else
    {
      v2 = 0xE300000000000000;
      v4 = 6369134;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v4 = 0x64657474696D6FLL;
  }

  sub_1BA4A7DF8();

  MEMORY[0x1BFAF1350](v4, v2);

  return 0xD000000000000012;
}

uint64_t static HealthChecklistFeatureViewedAnalyticsEvent.eventName.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBEDEA0;

  return v0;
}

uint64_t static HealthChecklistFeatureViewedAnalyticsEvent.eventName.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1EBBEDEA0 = a1;
  off_1EBBEDEA8 = a2;
}

uint64_t sub_1BA1DBB0C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBEDEA0 = v2;
  off_1EBBEDEA8 = v1;
}

uint64_t HealthChecklistFeatureViewedAnalyticsEvent.init(featureName:source:startState:endState:isIHAEnabled:)@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, char a4@<W5>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  a5[6] = *a1;
  a5[7] = v9;
  sub_1BA1DBD2C(v8, v9);
  sub_1BA4A2A68();
  v10 = sub_1BA4A6758();

  a5[2] = v10;
  sub_1BA4A2A68();
  v11 = sub_1BA4A6758();

  a5[3] = v11;
  v12 = sub_1BA4A2A88();
  sub_1BA1DBD44();
  a5[4] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  a5[5] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v13 = sub_1BA4A6758();

  *a5 = v13;
  sub_1BA1DB8CC(a4);
  sub_1BA1DBD9C(v8, v9);
  v14 = sub_1BA4A6758();

  v15 = *(*(v12 - 8) + 8);
  v15(a3, v12);
  result = (v15)(a2, v12);
  a5[1] = v14;
  return result;
}

uint64_t sub_1BA1DBD2C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

unint64_t sub_1BA1DBD44()
{
  result = qword_1EBBE9D90;
  if (!qword_1EBBE9D90)
  {
    sub_1BA4A2A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9D90);
  }

  return result;
}

uint64_t sub_1BA1DBD9C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

unint64_t sub_1BA1DBDB8()
{
  result = qword_1EBBEDEB0;
  if (!qword_1EBBEDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDEB0);
  }

  return result;
}

unint64_t sub_1BA1DBE10()
{
  result = qword_1EBBEDEB8;
  if (!qword_1EBBEDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDEB8);
  }

  return result;
}

uint64_t sub_1BA1DBE68()
{
  swift_beginAccess();
  v0 = qword_1EBBEDEA0;

  return v0;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI0A32ChecklistSettingsAnalyticsSourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA1DBEE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA1DBF40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1BA1DBF9C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1BA1DBFD8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1BA1DC020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BA1DC080()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_1EBC09668 = result;
  return result;
}

uint64_t sub_1BA1DC0BC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA1DC148();
  return sub_1B9F44034(v6, &qword_1EDC6E1A0, sub_1B9FCD918);
}

void sub_1BA1DC148()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v5], v38);
  if (v38[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v6 = v36[6];
      v7 = v36[7];
      v8 = v37;
      v9 = [v0 textLabel];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1BA4A6758();
        [v10 setText_];
      }

      v12 = [v0 detailTextLabel];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1BA4A6758();
        [v13 setText_];
      }

      if (v8)
      {
        v15 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
        v16 = sub_1BA4A6758();
        v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

        if (v17)
        {
          v18 = 1;
LABEL_16:
          v33 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryImage];
          *&v0[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryImage] = v17;

          v0[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryIsSelected] = v18;
          sub_1BA1DCC4C();
          v34.value._countAndFlagsBits = v6;
          v34.value._object = v7;
          MultiselectTableViewCell.updateAutomationIdentifiers(with:)(v34);

          return;
        }

        __break(1u);
      }

      else
      {
        v31 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
        v32 = sub_1BA4A6758();
        v17 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];

        if (v17)
        {
          v18 = 0;
          goto LABEL_16;
        }
      }

      __break(1u);
      return;
    }
  }

  else
  {
    sub_1B9F44034(v38, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3DE8();
  v19 = v0;
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36[0] = v23;
    *v22 = 136446722;
    v24 = sub_1BA4A85D8();
    v26 = sub_1B9F0B82C(v24, v25, v36);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1B9F0B82C(1835365481, 0xE400000000000000, v36);
    *(v22 + 22) = 2082;
    sub_1B9F0D370(0, &qword_1EDC6E1A0, sub_1B9FCD918);
    v38[0] = v27;
    sub_1BA0928CC();
    v28 = sub_1BA4A6808();
    v30 = sub_1B9F0B82C(v28, v29, v36);

    *(v22 + 24) = v30;
    _os_log_impl(&dword_1B9F07000, v20, v21, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that was not MultiselectItem", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
}

Swift::Void __swiftcall MultiselectTableViewCell.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  v2 = v1;
  if (!with.value._object)
  {
    [v1 setAccessibilityIdentifier_];
    v12 = [v1 textLabel];
    if (v12)
    {
      v13 = v12;
      [v12 setAccessibilityIdentifier_];
    }

    v14 = [v2 detailTextLabel];
    if (v14)
    {
      v15 = v14;
      [v14 setAccessibilityIdentifier_];
    }

    v16 = [v2 accessoryView];
    [v16 setAccessibilityIdentifier_];
    goto LABEL_13;
  }

  v3 = sub_1BA4A6758();
  [v2 setAccessibilityIdentifier_];

  v4 = [v2 textLabel];
  if (v4)
  {
    v5 = v4;

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v6 = sub_1BA4A6758();

    [v5 setAccessibilityIdentifier_];
  }

  v7 = [v2 detailTextLabel];
  if (v7)
  {
    v8 = v7;

    MEMORY[0x1BFAF1350](0x6C69617465442ELL, 0xE700000000000000);
    v9 = sub_1BA4A6758();

    [v8 setAccessibilityIdentifier_];
  }

  v10 = [v2 accessoryView];
  if (v10)
  {
    v11 = v10;

    MEMORY[0x1BFAF1350](0x6F7373656363412ELL, 0xEA00000000007972);
    v16 = sub_1BA4A6758();

    [v11 setAccessibilityIdentifier_];

LABEL_13:
  }
}

uint64_t sub_1BA1DC8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA1DC948(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA1DC148();
  return sub_1B9F44034(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

void (*sub_1BA1DC9D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1DCA34;
}

void sub_1BA1DCA34(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA1DC148();
  }
}

void sub_1BA1DCA68(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MultiselectTableViewCell();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v8 == v9)
  {

    return;
  }

  v11 = sub_1BA4A8338();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_1BA1DCC4C();
  }
}

void sub_1BA1DCC4C()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66 - v7;
  v9 = *MEMORY[0x1E69DDCF8];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v14 = v9;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v70 = v2;
      v18 = v17;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v73 = v68;
      *v18 = 136315906;
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v69 = v3;
      v21 = sub_1B9F0B82C(v19, v20, &v73);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v71 = 0;
      v72 = 1;
      sub_1B9F0D370(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v73);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2080;
      LODWORD(v71) = 0;
      type metadata accessor for SymbolicTraits(0);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v73);

      *(v18 + 24) = v27;
      v3 = v69;
      *(v18 + 32) = 2112;
      v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v18 + 34) = v28;
      v29 = v67;
      *v67 = v28;
      _os_log_impl(&dword_1B9F07000, v15, v16, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v18, 0x2Au);
      sub_1B9F44034(v29, &qword_1EDC6B490, sub_1BA0004FC);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      v30 = v68;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      v31 = v18;
      v2 = v70;
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v32 = [v10 preferredFontDescriptorWithTextStyle_];
    v13 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
  }

  v33 = *MEMORY[0x1E69DDD80];
  v34 = [v10 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
  if (v34)
  {
    v35 = v34;
    v36 = [objc_opt_self() fontWithDescriptor:v34 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v37 = v33;
    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v70 = v2;
      v41 = v40;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v73 = v68;
      *v41 = 136315906;
      v42 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v69 = v3;
      v44 = sub_1B9F0B82C(v42, v43, &v73);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v71 = 0;
      v72 = 1;
      sub_1B9F0D370(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v45 = sub_1BA4A6808();
      v47 = sub_1B9F0B82C(v45, v46, &v73);

      *(v41 + 14) = v47;
      *(v41 + 22) = 2080;
      LODWORD(v71) = 0;
      type metadata accessor for SymbolicTraits(0);
      v48 = sub_1BA4A6808();
      v50 = sub_1B9F0B82C(v48, v49, &v73);

      *(v41 + 24) = v50;
      *(v41 + 32) = 2112;
      v51 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v41 + 34) = v51;
      v52 = v67;
      *v67 = v51;
      _os_log_impl(&dword_1B9F07000, v38, v39, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v41, 0x2Au);
      sub_1B9F44034(v52, &qword_1EDC6B490, sub_1BA0004FC);
      MEMORY[0x1BFAF43A0](v52, -1, -1);
      v53 = v68;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v53, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);

      (*(v69 + 8))(v5, v70);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v35 = [v10 preferredFontDescriptorWithTextStyle_];
    v36 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
  }

  v54 = v36;

  [v13 pointSize];
  v56 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:v55];
  v57 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryImage] imageWithConfiguration_];
  v58 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  if (v1[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryIsSelected] == 1)
  {
    v59 = [v1 tintColor];
  }

  else
  {
    if (qword_1EBBE84D0 != -1)
    {
      swift_once();
    }

    v59 = qword_1EBC09668;
  }

  v60 = v59;
  [v58 setTintColor_];

  [v1 setAccessoryView_];
  v61 = [v1 textLabel];
  if (v61)
  {
    v62 = v61;
    [v61 setFont_];
  }

  v63 = [v1 detailTextLabel];
  if (v63)
  {
    v64 = v63;
    v65 = v54;
    [v64 setFont_];

    v56 = v65;
  }
}

id MultiselectTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id MultiselectTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiselectTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA1DD680(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
  v5 = sub_1BA4A6758();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    *&v2[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryImage] = v6;
    v2[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryIsSelected] = 0;
    v7 = &v2[OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item];
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 4) = 0;
    if (a2)
    {
      v8 = sub_1BA4A6758();
    }

    else
    {
      v8 = 0;
    }

    v17.receiver = v2;
    v17.super_class = type metadata accessor for MultiselectTableViewCell();
    v9 = objc_msgSendSuper2(&v17, sel_initWithStyle_reuseIdentifier_, 3, v8);

    v10 = v9;
    v11 = [v10 textLabel];
    if (v11)
    {
      v12 = v11;
      [v11 setNumberOfLines_];
    }

    v13 = [v10 detailTextLabel];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() secondaryLabelColor];
      [v14 setTextColor_];
    }

    v16 = [v10 detailTextLabel];

    if (v16)
    {
      [v16 setNumberOfLines_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA1DD958()
{
  v1 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
  v2 = sub_1BA4A6758();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryImage) = v3;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_accessoryIsSelected) = 0;
  v4 = v0 + OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t LinkButtonItem.init(text:buttonLabelColor:backgroundColor:onTap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = MEMORY[0x1BFAF1350]();
  *a7 = 0x6D6574496B6E694CLL;
  a7[1] = 0xE90000000000005FLL;
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = a3;
  a7[5] = a4;
  a7[6] = a5;
  a7[7] = a6;
  return result;
}

uint64_t LinkButtonItem.reuseIdentifier.getter()
{
  type metadata accessor for ProfileButtonCell();
  sub_1BA071208();
  return sub_1BA4A6808();
}

uint64_t LinkButtonItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LinkButtonItem.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1BA1DDBF8(uint64_t a1)
{
  result = sub_1BA1DDC20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA1DDC20()
{
  result = qword_1EBBEDED8;
  if (!qword_1EBBEDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDED8);
  }

  return result;
}

unint64_t sub_1BA1DDCA0(uint64_t a1)
{
  result = sub_1BA1DDCC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA1DDCC8()
{
  result = qword_1EBBEDEE0;
  if (!qword_1EBBEDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDEE0);
  }

  return result;
}

uint64_t sub_1BA1DDD20()
{
  type metadata accessor for ProfileButtonCell();
  sub_1BA071208();
  return sub_1BA4A6808();
}

uint64_t sub_1BA1DDD5C(uint64_t a1)
{
  v2 = sub_1BA1DDCC8();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id UINavigationItem.setBottomPalette(control:contentMarginsKind:currentPalette:)(void *a1, unsigned __int8 *a2, id a3)
{
  v5 = *a2;
  [a3 removeFromSuperview];
  if (a1)
  {
    v6 = _s20SegmentedContentViewCMa();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView_control] = a1;
    v14.receiver = v7;
    v14.super_class = v6;
    v8 = a1;
    v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v9 addSubview_];
    [v9 setPreservesSuperviewLayoutMargins_];
    [v9 sizeToFit];
    v10 = [objc_allocWithZone(MEMORY[0x1E69DD5E0]) initWithContentView_];
    [v10 _setContentViewMarginType_];
    v11 = v10;
    [v11 setPreservesSuperviewLayoutMargins_];
    v12 = v11;
    [v3 _setBottomPalette_];
  }

  else
  {
    [v3 _setBottomPalette_];
    return 0;
  }

  return v11;
}

uint64_t UINavigationItem.ContentMarginsKind.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA1DDFD0()
{
  result = qword_1EBBEDEF0;
  if (!qword_1EBBEDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDEF0);
  }

  return result;
}

id sub_1BA1DE090()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A82F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v0;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_layoutSubviews, v4);
  [v0 bounds];
  Width = CGRectGetWidth(v25);
  [v0 directionalLayoutMargins];
  v10 = Width - v8 - v9;
  v11 = OBJC_IVAR____TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView_control;
  [*&v0[OBJC_IVAR____TtCE18HealthExperienceUICSo16UINavigationItemP33_5F11F40652BD0C60053B51DD9E749E2B20SegmentedContentView_control] sizeThatFits_];
  v13 = v12;
  v14 = [v0 traitCollection];
  v15 = [v14 layoutDirection];

  [v0 safeAreaInsets];
  if (v15 == 1)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v19 = (Width - v10 + v18) * 0.5;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E7020], v2);
  v20 = [v0 traitCollection];
  [v20 displayScale];
  v22 = CGFloat.rounded(_:toScale:)(v6, v21, v19);

  (*(v3 + 8))(v6, v2);
  return [*&v0[v11] setFrame_];
}

id sub_1BA1DE438(id result)
{
  if (result)
  {
    return [result finishProcessing];
  }

  return result;
}

void sub_1BA1DE500()
{
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_dismissOptions_];
  v3 = [v0 navigationItem];
  [v3 setRightBarButtonItem_];
}

id sub_1BA1DE6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSharingWithYouOptionsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PDFConfigurable.generatePDFData()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a1 - 8);
  v3[6] = swift_task_alloc();
  v8 = (*(a2 + 40) + **(a2 + 40));
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_1BA1DE88C;

  return v8(a1, a2);
}

uint64_t sub_1BA1DE88C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  *(*v3 + 64) = a2;

  if (v2)
  {

    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v5 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1BA1DE9E4, 0, 0);
  }
}

uint64_t sub_1BA1DE9E4()
{
  type metadata accessor for PDFSectionLoader();
  v1 = swift_allocObject();
  v0[5].i64[0] = v1;
  v3 = v0[4];

  swift_defaultActor_initialize();
  v1[7] = vextq_s8(v3, v3, 8uLL);

  return MEMORY[0x1EEE6DFA0](sub_1BA1DEA84, v1, 0);
}

uint64_t sub_1BA1DEA84()
{
  v1 = (*(v0[10] + 112))();
  v0[11] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  v3 = sub_1BA1DF284();
  *v2 = v0;
  v2[1] = sub_1BA1DEB60;

  return MEMORY[0x1EEE0DDC0](&unk_1BA4CC3F8, 0, v1, v3, &type metadata for PDFSection);
}

uint64_t sub_1BA1DEB60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = *(v4 + 80);
    v6 = sub_1BA1DEECC;
  }

  else
  {

    *(v4 + 112) = a1;
    v6 = sub_1BA1DEC9C;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1BA1DEC9C()
{
  v1 = v0[14];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for PDFBuilder();
  (*(v3 + 16))(v2, v4, v6);
  v0[15] = sub_1BA20F1A4(v2, v1, v7, v6, v5);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1BA1DED98;

  return sub_1BA20BD8C();
}

uint64_t sub_1BA1DED98(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_1BA1DF040;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_1BA1DEFAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BA1DEECC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BA1DEF34, 0, 0);
}

uint64_t sub_1BA1DEF34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA1DEFAC()
{

  v1 = v0[1];
  v3 = v0[18];
  v2 = v0[19];

  return v1(v2, v3);
}

uint64_t sub_1BA1DF040()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PDFConfiguration.Orientation.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t PDFConfiguration.shareButtonBehavior.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1BA1DF2E8(v2, v3, v4, v5, v6, v7);
}

uint64_t PDFConfiguration.sectionProviders.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

__n128 PDFConfiguration.init(orientation:pageNumberFormat:shareButtonBehavior:compactVerticalMargin:sectionProviders:)@<Q0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  *(a7 + 72) = a5;
  *(a7 + 80) = a6;
  *(a7 + 8) = v7;
  v9 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v9;
  result = *(a3 + 32);
  *(a7 + 48) = result;
  *(a7 + 64) = a4;
  *a7 = v8;
  return result;
}

uint64_t sub_1BA1DF1E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1BA1DF2E8(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BA1DF204()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v1 + 8);

  return v5(v2, v3);
}

unint64_t sub_1BA1DF284()
{
  result = qword_1EBBEDF00;
  if (!qword_1EBBEDF00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEDF00);
  }

  return result;
}

uint64_t sub_1BA1DF2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_1BA1DF33C()
{
  result = qword_1EBBEDF08;
  if (!qword_1EBBEDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDF08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PDFPageNumberFormat(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PDFPageNumberFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BA1DF440(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI22PDFShareButtonBehaviorO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BA1DF488(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA1DF4D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

double sub_1BA1DF534(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 40) = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of PDFConfigurable.sectionProviders.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B9FFA404;

  return v7(a1, a2);
}

uint64_t sub_1BA1DF6DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA1DF724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA1DF7D8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingManualSelectionNextButtonDataSource()
{
  result = qword_1EBBEDF10;
  if (!qword_1EBBEDF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA1DF920(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration();
  __swift_project_value_buffer(v2, qword_1EDC6CB90);
  return ListLayoutConfiguration.layout(for:)(v1);
}

char *sub_1BA1DFB90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v87 = a6;
  v86 = a4;
  v83 = *a3;
  v11 = (a3 + 8);
  v84 = *(a3 + 8);
  v82 = *(a3 + 24);
  v12 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v12);
  v81 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v85 = v79 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v79 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v79 - v20;
  sub_1B9FF1628(v6 + OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow, v79 - v20);
  sub_1B9FEE28C(v21, v91);
  sub_1BA1E52C0(v21, type metadata accessor for SummarySharingSelectionFlow);
  v22 = 0;
  v23 = v91[0];
  if (v91[0] <= 0xFBu)
  {
    sub_1B9F0A534(a1, v91);
    *v18 = v23;
    v79[1] = v12;
    swift_storeEnumTagMultiPayload();
    v24 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingDataTypeSelectionViewController(0));
    sub_1B9F0A534(v91, &v24[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthExperienceStore]);
    *&v24[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthStore] = a2;
    v25 = *a3;
    v26 = *v11;
    v92 = *(a3 + 24);
    v93 = v26;
    v27 = &v24[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContact];
    v28 = *(a3 + 16);
    *v27 = *a3;
    *(v27 + 1) = v28;
    *(v27 + 4) = *(a3 + 32);
    v29 = v86;
    *&v24[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContactPhotoPublisher] = v86;
    sub_1B9FF1628(v18, &v24[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow]);
    *&v24[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext] = a5;
    v30 = v87;
    *&v24[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedDataTypesContext] = v87;
    sub_1B9F0A534(v91, v90);
    v80 = v18;
    v31 = v85;
    sub_1B9FF1628(v18, v85);
    v32 = objc_allocWithZone(type metadata accessor for SummarySharingDataTypeSelectionViewController(0));
    *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v33 = MEMORY[0x1E69E7CC0];
    *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
    sub_1B9F0A534(v90, &v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore]);
    *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories] = 0;
    sub_1B9FF1628(v31, &v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow]);
    v34 = &v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact];
    *v34 = v83;
    *(v34 + 24) = v82;
    *(v34 + 8) = v84;
    *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher] = v29;
    *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext] = v30;
    v35 = v25;
    sub_1B9F87F44(&v93, v89);
    sub_1B9F87F44(&v92, v89);

    v36 = v35;
    sub_1B9F87F44(&v93, v89);
    sub_1B9F87F44(&v92, v89);

    v37 = a2;

    *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources] = sub_1BA1E1D2C(v90, v37, 1, 0, v31, a5);

    v39 = sub_1B9FE98D4(v38);

    v89[0] = v39;
    sub_1B9FE20B8(v33);
    v40 = v89[0];
    type metadata accessor for CompoundSectionedDataSource();
    swift_allocObject();
    v41 = CompoundSectionedDataSource.init(_:)(v40);
    v42 = CompoundDataSourceCollectionViewController.init(dataSource:)(v41);
    v89[0] = *(v30 + 48);
    v43 = MEMORY[0x1E695BF70];
    sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
    sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v43);
    v44 = v42;
    v89[0] = sub_1BA4A4F98();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1BA10E0DC;
    *(v46 + 24) = v45;
    v47 = MEMORY[0x1E695BED0];
    sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
    sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v47);
    sub_1BA4A5148();

    swift_beginAccess();
    sub_1BA1E541C(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
    sub_1BA091D04();
    sub_1BA4A4D38();
    swift_endAccess();

    v48 = *&v44[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
    v79[0] = v24;
    if (v48 >> 62)
    {
      goto LABEL_27;
    }

    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v49)
    {
      v50 = 0;
      v87 = v48 & 0xC000000000000001;
      v86 = v48 & 0xFFFFFFFFFFFFFF8;
      v51 = v31;
      do
      {
        if (v87)
        {
          v52 = MEMORY[0x1BFAF2860](v50, v48);
          v31 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v50 >= *(v86 + 16))
          {
            __break(1u);
LABEL_27:
            v49 = sub_1BA4A7CC8();
            goto LABEL_4;
          }

          v52 = *(v48 + 8 * v50 + 32);

          v31 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_14;
          }
        }

        *(*(v52 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
        swift_unknownObjectWeakAssign();
        type metadata accessor for SummarySharingSelectionContextDelegate();
        v53 = swift_allocObject();
        *(v53 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v53 + 24) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
        swift_unknownObjectWeakAssign();
        v54 = v44;
        sub_1BA29AAC4(v53);
        sub_1BA2FE7FC();

        ++v50;
        v55 = v31 == v49;
        v31 = v51;
      }

      while (!v55);
    }

    sub_1BA1E52C0(v31, type metadata accessor for SummarySharingSelectionFlow);
    __swift_destroy_boxed_opaque_existential_1(v90);
    v56 = v79[0];
    *(v79[0] + OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_dataTypeSelectionCVC) = v44;
    v57 = v44;
    sub_1BA454A8C();
    if (!v58)
    {
      if (qword_1EBBE84D8 != -1)
      {
        swift_once();
      }
    }

    sub_1BA454AAC();
    v60 = v59;
    sub_1BA454934();
    v62 = v61;
    *&v56[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
    v63 = &v56[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
    *v63 = 0;
    v63[8] = 1;
    v64 = &v56[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
    *v64 = 0;
    v64[8] = 1;
    *&v56[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
    *&v56[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = v57;
    v65 = v57;
    v66 = sub_1BA4A6758();

    if (v60)
    {
      v67 = sub_1BA4A6758();
    }

    else
    {
      v67 = 0;
    }

    v68 = type metadata accessor for OnboardingCollectionViewController();
    v88.receiver = v56;
    v88.super_class = v68;
    v69 = objc_msgSendSuper2(&v88, sel_initWithTitle_detailText_icon_contentLayout_, v66, v67, v62, 3);

    v22 = v69;
    v70 = [v22 headerView];
    [v70 setAllowFullWidthIcon_];

    v71 = v80;
    v72 = v81;
    sub_1B9FF1628(v80, v81);
    LODWORD(v70) = swift_getEnumCaseMultiPayload();
    sub_1BA1E52C0(v72, type metadata accessor for SummarySharingSelectionFlow);
    if (v70 == 2)
    {
      v90[0] = *&v22[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContactPhotoPublisher];
      *(swift_allocObject() + 16) = v22;
      sub_1BA1107A8();
      sub_1BA11085C();
      v73 = v22;

      sub_1BA4A4F88();
    }

    v74 = [v22 navigationItem];
    v75 = sub_1BA35BDD4();
    [v74 setTitleView_];

    v76 = sub_1BA4A6758();
    v77 = [v22 hxui_addCancelButton];

    sub_1BA1E52C0(v71, type metadata accessor for SummarySharingSelectionFlow);
    __swift_destroy_boxed_opaque_existential_1(v91);
  }

  return v22;
}

Swift::Void __swiftcall SummarySharingDataTypeSelectionViewController.reloadAllDataSources()()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources);
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1BA4A7CC8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    v25 = v1 & 0xC000000000000001;
    v22 = v2;
    v23 = v1;
    do
    {
      if (v25)
      {
        v4 = MEMORY[0x1BFAF2860](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_12;
        }
      }

      v26 = v5;
      v6 = *(v4 + qword_1EDC84BB8);
      v7 = *(v6 + qword_1EDC84BB8);
      v8 = *(*v6 + 512);
      swift_beginAccess();
      v9 = *(v6 + v8);
      v10 = *(v6 + *(*v6 + 520));
      v11 = *(v6 + qword_1EDC64EB0);
      v12 = *(v6 + qword_1EDC64EB0 + 8);
      LOBYTE(v8) = *(v6 + qword_1EDC64EB0 + 16);

      v13 = v7;
      v14 = sub_1BA1E433C(v13, v9, v10, v11, v12, v8);

      sub_1BA0E7F10(v14, 1);

      LOBYTE(v6) = *(v4 + *(*v4 + 520));
      v15 = *(v4 + qword_1EDC64EB0);
      v16 = *(v4 + qword_1EDC64EB0 + 8);
      v17 = *(v4 + qword_1EDC64EB0 + 16);

      v19 = sub_1BA1E45B0(v18, v6, v15, v16, v17);
      v1 = v23;

      sub_1BA0E7F10(v19, 1);

      ++v3;
    }

    while (v26 != v22);
  }

  v20 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  swift_beginAccess();
  if (*(v21 + v20))
  {

    sub_1BA10BB30(1);
  }
}

uint64_t sub_1BA1E091C(uint64_t a1, uint64_t a2)
{
  sub_1BA4A6C58();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1BA1E5320();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000003FLL, 0x80000001BA4F3930);
    v8 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v8);

    MEMORY[0x1BFAF1350](46, 0xE100000000000000);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA1E0AA4(uint64_t a1, uint64_t a2)
{
  sub_1BA4A6C58();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1BA1E5320();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000003FLL, 0x80000001BA4F3930);
    v8 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v8);

    MEMORY[0x1BFAF1350](46, 0xE100000000000000);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA1E0C2C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BA4A6C58();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    sub_1BA1E53D8(v12);
    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a3 & 1;
      }

      __break(1u);
    }

    a3 = v12[0];
    v9 = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return a3 & 1;
    }

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000003FLL, 0x80000001BA4F3930);
  v11 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v11);

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA1E0DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A6C58();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1BA1E5394(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000003FLL, 0x80000001BA4F3930);
  v12 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v12);

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA1E0F9C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEDF20 = result;
  *algn_1EBBEDF28 = v1;
  return result;
}

void sub_1BA1E1048()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext;
  v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext];
  sub_1B9FF1628(&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow], v5);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1BA1E52C0(v5, type metadata accessor for SummarySharingSelectionFlow);
  }

  else
  {
    v8 = *v5;
    swift_beginAccess();
    v9 = sub_1B9FEE484(v8, *(v7 + 40));
    if ((v10 & 1) == 0)
    {
      if (__OFADD__(v9, 1))
      {
        __break(1u);
      }

      else if (!__OFADD__(v9 + 1, 1))
      {
        *(&v31 + 1) = MEMORY[0x1E69E6530];
        *&v30 = v9 + 2;

        goto LABEL_6;
      }

      __break(1u);
      return;
    }
  }

  v30 = 0u;
  v31 = 0u;
LABEL_6:
  sub_1BA1E14A0(v32);
  v11 = sub_1BA4A6C68();
  v28 = v32[0];
  v27 = v32[1];
  MEMORY[0x1EEE9AC00](v11);
  *(&v27 - 2) = v1;
  sub_1BA1E091C(sub_1BA1E4BC8, (&v27 - 2));
  *&v33[16] = v27;
  *v33 = v28;
  sub_1B9FEEC64(ObjectType, &v30, 0, v33);

  sub_1B9FF3BFC(*v33, *&v33[8], *&v33[16], *&v33[24]);
  sub_1BA1E4BE4(&v30, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F23484);
  v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContact + 16];
  *v33 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContact];
  v13 = OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthExperienceStore;
  v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthStore];
  *&v33[16] = v12;
  *&v33[32] = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContact + 32];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContactPhotoPublisher;
  v16 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedContactPhotoPublisher];
  v17 = *&v1[v6];
  v18 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectedDataTypesContext];

  v19 = sub_1BA1DFB90(&v1[v13], v14, v33, v16, v17, v18);

  if (!v19)
  {
    v20 = *v33;
    v32[0] = *&v33[8];
    v34[0] = *&v33[24];
    v21 = *&v1[v15];
    sub_1B9F0A534(&v1[v13], &v30);
    v22 = *&v1[v6];
    objc_allocWithZone(type metadata accessor for SummarySharingOnboardingKitSharingConfirmationViewController());
    v23 = v20;
    sub_1B9F87F44(v32, v29);
    sub_1B9F87F44(v34, v29);

    v24 = v14;

    v19 = sub_1BA313E58(v33, v21, v18, &v30, v24, v22);

    v25 = MEMORY[0x1E69E6158];
    v26 = MEMORY[0x1E69E6720];
    sub_1BA1E4BE4(v32, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1B9F23484);
    sub_1BA1E4BE4(v34, &qword_1EDC6E410, v25, v26, sub_1B9F23484);
  }

  [v1 showViewController:v19 sender:0];
}

void sub_1BA1E14A0(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9FF1628(&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow], v5);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BA1E52C0(v5, type metadata accessor for SummarySharingSelectionFlow);
LABEL_4:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 9;
    return;
  }

  v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlowContext];
  v7 = *v5;
  swift_beginAccess();
  v8 = sub_1B9FEE484(v7, *(v6 + 40));
  if (v9)
  {
    goto LABEL_4;
  }

  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v8 + 2;
  if (__OFADD__(v8 + 1, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  v11 = *(v6 + 24);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v13 = [v1 title];
  if (v13)
  {
    v14 = v13;
    v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *a1 = v10;
  a1[1] = v12;
  a1[2] = v15;
  a1[3] = v17;
}

void sub_1BA1E162C(void *a1@<X8>)
{
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF1628(&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlow], v5);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BA1E52C0(v5, type metadata accessor for SummarySharingSelectionFlow);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 9;
  }

  else
  {
    v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI53SummarySharingOnboardingAlertsSelectionViewController_selectionFlowContext];
    swift_beginAccess();
    v7 = *(v6 + 24);
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      v9 = [v1 title];
      if (v9)
      {
        v10 = v9;
        v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      *a1 = 1;
      a1[1] = v8;
      a1[2] = v11;
      a1[3] = v13;
    }
  }
}

uint64_t sub_1BA1E188C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_healthExperienceStore);

  sub_1BA1E52C0(v0 + OBJC_IVAR____TtC18HealthExperienceUI55SummarySharingOnboardingDataTypeSelectionViewController_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);
}

uint64_t sub_1BA1E1AB8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA1E1B24(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

uint64_t sub_1BA1E1BC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA1E1C74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BA1E1D2C(uint64_t a1, void *a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v75 = a6;
  v79 = 0;
  v11 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  sub_1B9F23484(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5470;
  v78 = a1;
  sub_1B9F0A534(a1, v86);
  v76 = a5;
  sub_1B9FF1628(a5, v16);
  v82 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  v84 = 0u;
  memset(v85, 0, sizeof(v85));
  v83 = 0u;
  swift_allocObject();

  v18 = a2;
  v19 = MEMORY[0x1E69E7CC0];
  v80 = a3;
  v20 = a4;
  v21 = sub_1BA3094BC(v86, v18, MEMORY[0x1E69E7CC0], a3, a4, v16, MEMORY[0x1E69E7CC0], 0, 0, &v82, 1u);
  v77 = v18;

  *(v17 + 32) = v21;
  sub_1B9FF1628(v81, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA1E52C0(v13, type metadata accessor for SummarySharingSelectionFlow);
    }

    if ((v80 & 1) == 0)
    {

      v23 = objc_opt_self();
      v24 = [v23 categoryWithID_];
      v25 = v24;
      if (v24 && a4)
      {
        v82 = v24;
        MEMORY[0x1EEE9AC00](v24);
        v72 = &v82;
        v26 = v25;
        v27 = v79;
        v28 = sub_1BA0117F8(sub_1BA1E54AC, &v70, a4);

        if (v28)
        {
          MEMORY[0x1EEE9AC00](v29);
          v30 = v77;
          *(&v74 - 6) = v78;
          *(&v74 - 5) = v30;
          LOBYTE(v70) = 0;
          v71 = a4;
          v72 = v76;
          v17 = sub_1BA24F180(sub_1BA1E5264, (&v74 - 8), &unk_1F37FBED0);

          return v17;
        }

        v79 = v27;
      }

      v44 = [v23 categoryWithID_];
      v45 = v44;
      if (v44 && a4 && (v82 = v44, MEMORY[0x1EEE9AC00](v44), v72 = &v82, v46 = v45, v47 = sub_1BA0117F8(sub_1BA1E5218, &v70, a4), v46, (v47 & 1) != 0))
      {
        MEMORY[0x1EEE9AC00](v48);
        v49 = v77;
        *(&v74 - 6) = v78;
        *(&v74 - 5) = v49;
        LOBYTE(v70) = 0;
        v71 = a4;
        v72 = v76;
        v17 = sub_1BA24F180(sub_1BA1E5238, (&v74 - 8), &unk_1F37FBEF8);
      }

      else
      {
        sub_1B9F23484(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BA4B5460;
        *(inited + 32) = sub_1BA4A2178();
        *(inited + 40) = v65;
        v66 = sub_1BA4A2168();
        *(inited + 48) = v66;
        *(inited + 56) = v67;
        MEMORY[0x1EEE9AC00](v66);
        v68 = v77;
        *(&v74 - 6) = v78;
        *(&v74 - 5) = v68;
        LOBYTE(v70) = 0;
        v71 = a4;
        v72 = v76;
        v17 = sub_1BA24A670(sub_1BA1E51F0, (&v74 - 8), inited);

        swift_setDeallocating();
        swift_arrayDestroy();
      }
    }
  }

  else
  {
    v31 = v75;
    if (v75)
    {
      v32 = *v13 >> 6;
      if (v32 == 1)
      {

        v82 = v19;
        sub_1BA066CA4(0, 3, 0);
        v50 = v82;
        v52 = *(v82 + 16);
        v51 = *(v82 + 24);
        v53 = v51 >> 1;
        v54 = v52 + 1;
        v33 = v20;
        if (v51 >> 1 <= v52)
        {
          sub_1BA066CA4((v51 > 1), v52 + 1, 1);
          v50 = v82;
          v51 = *(v82 + 24);
          v53 = v51 >> 1;
        }

        *(v50 + 16) = v54;
        *(v50 + v52 + 32) = 64;
        v55 = v52 + 2;
        if (v53 < (v52 + 2))
        {
          sub_1BA066CA4((v51 > 1), v52 + 2, 1);
          v50 = v82;
          v51 = *(v82 + 24);
          v53 = v51 >> 1;
        }

        *(v50 + 16) = v55;
        *(v50 + v54 + 32) = 65;
        v56 = v52 + 3;
        if (v53 < v56)
        {
          sub_1BA066CA4((v51 > 1), v56, 1);
        }

        v40 = v82;
        *(v82 + 16) = v56;
        v42 = v40 + v55;
        v43 = 66;
      }

      else
      {
        if (v32)
        {
          return v17;
        }

        v33 = v20;

        v82 = v19;
        sub_1BA066CA4(0, 4, 0);
        v34 = v82;
        v16 = *(v82 + 16);
        v35 = *(v82 + 24);
        v36 = v35 >> 1;
        v37 = v16 + 1;
        if (v35 >> 1 <= v16)
        {
LABEL_45:
          sub_1BA066CA4((v35 > 1), v37, 1);
          v34 = v82;
          v35 = *(v82 + 24);
          v36 = v35 >> 1;
        }

        *(v34 + 16) = v37;
        *(v34 + v16 + 32) = 0;
        v38 = v16 + 2;
        if (v36 < (v16 + 2))
        {
          sub_1BA066CA4((v35 > 1), v16 + 2, 1);
          v34 = v82;
          v35 = *(v82 + 24);
          v36 = v35 >> 1;
        }

        *(v34 + 16) = v38;
        *(v34 + v37 + 32) = 1;
        v39 = v16 + 3;
        if (v36 < (v16 + 3))
        {
          sub_1BA066CA4((v35 > 1), v16 + 3, 1);
        }

        v40 = v82;
        *(v82 + 16) = v39;
        *(v40 + v38 + 32) = 2;
        v41 = *(v40 + 24);
        if ((v16 + 4) > (v41 >> 1))
        {
          sub_1BA066CA4((v41 > 1), v16 + 4, 1);
          v40 = v82;
        }

        *(v40 + 16) = v16 + 4;
        v42 = v40 + v39;
        v43 = 3;
      }

      *(v42 + 32) = v43;
      swift_beginAccess();
      v37 = *(v31 + 40);

      v57 = sub_1BA0243EC(v40);

      v31 = 0;
      v58 = *(v37 + 16);
      v59 = MEMORY[0x1E69E7CC0];
      while (v58 != v31)
      {
        v35 = *(v37 + 16);
        if (v31 >= v35)
        {
          __break(1u);
          goto LABEL_45;
        }

        v16 = *(v37 + v31++ + 32);
        if (sub_1BA3D31A8(v16, v57))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86[0] = v59;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BA066CA4(0, *(v59 + 16) + 1, 1);
            v59 = v86[0];
          }

          v62 = *(v59 + 16);
          v61 = *(v59 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1BA066CA4((v61 > 1), v62 + 1, 1);
            v59 = v86[0];
          }

          *(v59 + 16) = v62 + 1;
          *(v59 + v62 + 32) = v16;
        }
      }

      MEMORY[0x1EEE9AC00](v63);
      v70 = v78;
      v71 = v77;
      LOBYTE(v72) = v80 & 1;
      v73 = v33;
      v17 = sub_1BA24A584(sub_1BA1E51C8, (&v74 - 6), v59);
    }
  }

  return v17;
}

void sub_1BA1E2660()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SummarySharingDataTypeSelectionViewController.reloadAllDataSources()();
  }
}

id sub_1BA1E27A8()
{
  v1 = v0;
  sub_1B9F36938();
  result = [v0 collectionView];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v3 = result;
  sub_1B9FF5A64();

  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
  if (v4 >> 62)
  {
LABEL_19:
    v5 = sub_1BA4A7CC8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v13 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v13)
      {
        MEMORY[0x1BFAF2860](v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      result = [v1 collectionView];
      if (!result)
      {
        break;
      }

      v8 = result;
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1B9F43830();

      v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA162EA0(v9, v10);

      v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA162E6C(v11, v12);

      sub_1B9FF51C4();
      sub_1B9FF51F8();
      sub_1B9FF522C();
      sub_1B9FF5260();
      sub_1B9FF5294();

      ++v6;
      if (v7 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
}

void sub_1BA1E2988()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 collectionView];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 setPreservesSuperviewLayoutMargins_];

  v6 = [v0 collectionView];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setAlwaysBounceVertical_];
}

void sub_1BA1E2A90()
{
  v1 = [v0 navigationItem];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_done];
  [v1 setRightBarButtonItem_];

  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories];
  if (!v3)
  {
    return;
  }

  if (v3 >> 62)
  {
    if (sub_1BA4A7CC8() != 1)
    {
      return;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return;
  }

  v4 = [v0 navigationItem];
  if (v3 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_6;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFAF2860](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(v3 + 32);
    }

    v6 = v5;
    v8 = [v5 displayName];

    v7 = v8;
    if (!v8)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v9 = sub_1BA4A6758();

      v7 = v9;
    }

    goto LABEL_13;
  }

  v7 = 0;
LABEL_13:
  v10 = v7;
  [v4 setTitle_];
}

id sub_1BA1E2C78()
{
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate];
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return [v0 dismissViewControllerAnimated:1 completion:{0, v12}];
  }

  v2 = *(v1 + 1);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  v4 = *&v0[v3];
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = v5[2];
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_6:
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(v7, ObjectType, v2);

    swift_unknownObjectRelease();
    return [v0 dismissViewControllerAnimated:1 completion:{0, v12}];
  }

  v12 = v2;
  v7 = sub_1BA0219CC(v6, 0);
  v8 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
  sub_1BA023688(&v14, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v5);
  v13 = v9;

  result = sub_1B9F52E48();
  if (v13 == v6)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id SummarySharingDataTypeSelectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA1E2F50()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate);

  sub_1BA1E52C0(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);

  sub_1BA1E5348(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact));
}

id sub_1BA1E3038(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA1E31B4(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a1) = *a1;
  sub_1B9F0A534(a2, v18);
  *v14 = a1;
  swift_storeEnumTagMultiPayload();
  v18[55] = a1;

  sub_1BA286428(v17);
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  swift_allocObject();
  v15 = a3;
  v16 = sub_1BA3094BC(v18, v15, MEMORY[0x1E69E7CC0], a4, a5, v14, MEMORY[0x1E69E7CC0], 0, 0, v17, 1u);

  *a6 = v16;
}

void sub_1BA1E330C(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v24 = a7;
  v13 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1B9F0A534(a2, v29);
  sub_1B9FF1628(a6, v15);
  sub_1B9F23484(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      sub_1BA4A1FC8();
    }

    else
    {
      sub_1BA4A1F98();
    }
  }

  else if (v16)
  {
    sub_1BA4A1FA8();
  }

  else
  {
    sub_1BA4A1FD8();
  }

  sub_1BA4A27B8();
  v18 = sub_1BA4A2628();

  *(inited + 32) = v18;
  v29[63] = v16;
  v19 = sub_1BA286570();
  v21 = v20;
  v25 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  memset(v28, 0, sizeof(v28));
  v26 = 0u;
  v27 = 0u;
  swift_allocObject();

  v22 = a3;
  v23 = sub_1BA3094BC(v29, v22, MEMORY[0x1E69E7CC0], a4 & 1, a5, v15, inited, v19, v21, &v25, 1);

  *v24 = v23;
}

void sub_1BA1E351C(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v28 = a4;
  v13 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1B9F0A534(a2, v27);
  sub_1B9FF1628(a6, v15);
  sub_1B9F23484(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  v25 = a7;
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1BA4A21C8();
    }

    else
    {
      sub_1BA4A21A8();
    }
  }

  else
  {
    sub_1BA4A21B8();
  }

  sub_1BA4A27B8();
  v18 = sub_1BA4A2628();

  *(inited + 32) = v18;
  v30 = v16;
  v19 = sub_1BA2867D8();
  v21 = v20;
  v29 = v16;
  sub_1BA28691C(v26);
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  swift_allocObject();

  v22 = a3;
  v23 = sub_1BA3094BC(v27, v22, MEMORY[0x1E69E7CC0], v28 & 1, a5, v15, inited, v19, v21, v26, 1);

  *v25 = v23;
}

void sub_1BA1E3724(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v25 = a7;
  v13 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v16 = a1[1];
  sub_1B9F0A534(a2, v30);
  sub_1B9FF1628(a6, v15);
  sub_1B9F23484(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  sub_1BA4A27B8();

  *(inited + 32) = sub_1BA4A2628();
  v19 = sub_1BA1E4FCC(v17, v16);
  v21 = v20;
  v26 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  v28 = 0u;
  swift_allocObject();
  v22 = a3;
  v23 = sub_1BA3094BC(v30, v22, MEMORY[0x1E69E7CC0], a4, a5, v15, inited, v19, v21, &v26, 1);

  *v25 = v23;
}

void *sub_1BA1E3910@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  sub_1BA1E541C(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v41 - v5;
  v7 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_);
  type metadata accessor for CompoundDataSourceCollectionViewController();
  result = swift_dynamicCastClass();
  if (!result)
  {
    v21 = 7;
    goto LABEL_37;
  }

  v41[1] = v2;
  v41[0] = v7;
  sub_1B9F23FB0();
  v9 = sub_1BA1F6A1C();

  v43 = *(v9 + 16);
  if (!v43)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v22 = v12[2];
    if (v22)
    {
      v23 = 0;
      v24 = (v12 + 4);
      v25 = MEMORY[0x1E69E7CC0];
      v43 = v12[2];
      while (1)
      {
        if (v23 >= v12[2])
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        sub_1B9F0A534(v24, v47);
        sub_1B9F0A534(v47, v44);
        sub_1B9F32244();
        v26 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
        v27 = swift_dynamicCast();
        v28 = *(*(v26 - 8) + 56);
        if (v27)
        {
          v28(v6, 0, 1, v26);
          v29 = v6[49];
          sub_1BA1E52C0(v6, type metadata accessor for SummarySharingSelectableDataTypeItem);
          if (v29)
          {
            sub_1B9F25598(v47, v44);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v48 = v25;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1BA066B80(0, *(v25 + 16) + 1, 1);
              v25 = v48;
            }

            v32 = *(v25 + 16);
            v31 = *(v25 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_1BA066B80((v31 > 1), v32 + 1, 1);
            }

            v33 = v45;
            v34 = v46;
            v35 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
            v36 = MEMORY[0x1EEE9AC00](v35);
            v38 = v41 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v39 + 16))(v38, v36);
            sub_1BA1F2854(v32, v38, &v48, v33, v34);
            result = __swift_destroy_boxed_opaque_existential_1(v44);
            v25 = v48;
            v22 = v43;
            goto LABEL_26;
          }
        }

        else
        {
          v28(v6, 1, 1, v26);
          sub_1BA1E4BE4(v6, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1BA1E541C);
        }

        result = __swift_destroy_boxed_opaque_existential_1(v47);
LABEL_26:
        ++v23;
        v24 += 40;
        if (v22 == v23)
        {
          goto LABEL_36;
        }
      }
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_36:

    v40 = *(v25 + 16);

    v21 = v40 == 0;
LABEL_37:
    *v42 = v21;
    return result;
  }

  v10 = 0;
  v11 = v9 + 48;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_39;
    }

    v13 = *v11;
    v14 = *(*v11 + 16);
    v15 = v12[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v16 <= v12[3] >> 1)
    {
      if (!*(v13 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v17 = v15 + v14;
      }

      else
      {
        v17 = v15;
      }

      result = sub_1B9F281E8(result, v17, 1, v12);
      v12 = result;
      if (!*(v13 + 16))
      {
LABEL_4:

        if (v14)
        {
          goto LABEL_41;
        }

        goto LABEL_5;
      }
    }

    if ((v12[3] >> 1) - v12[2] < v14)
    {
      goto LABEL_42;
    }

    sub_1B9F32244();
    swift_arrayInitWithCopy();

    if (v14)
    {
      v18 = v12[2];
      v19 = __OFADD__(v18, v14);
      v20 = v18 + v14;
      if (v19)
      {
        goto LABEL_43;
      }

      v12[2] = v20;
    }

LABEL_5:
    ++v10;
    v11 += 48;
    if (v43 == v10)
    {
      goto LABEL_22;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void *sub_1BA1E3E14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  sub_1BA1E541C(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v39 - v5;
  v7 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_);
  type metadata accessor for CompoundDataSourceCollectionViewController();
  result = swift_dynamicCastClass();
  if (!result)
  {
    v21 = 7;
LABEL_37:
    *v40 = v21;
    return result;
  }

  v39[1] = v2;
  v39[0] = v7;
  sub_1B9F23FB0();
  v9 = sub_1BA1F6A1C();

  v41 = *(v9 + 16);
  if (v41)
  {
    v10 = 0;
    v11 = v9 + 48;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_39;
      }

      v13 = *v11;
      v14 = *(*v11 + 16);
      v15 = v12[2];
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_40;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v16 <= v12[3] >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v17 = v15 + v14;
        }

        else
        {
          v17 = v15;
        }

        result = sub_1B9F281E8(result, v17, 1, v12);
        v12 = result;
        if (!*(v13 + 16))
        {
LABEL_4:

          if (v14)
          {
            goto LABEL_41;
          }

          goto LABEL_5;
        }
      }

      if ((v12[3] >> 1) - v12[2] < v14)
      {
        goto LABEL_42;
      }

      sub_1B9F32244();
      swift_arrayInitWithCopy();

      if (v14)
      {
        v18 = v12[2];
        v19 = __OFADD__(v18, v14);
        v20 = v18 + v14;
        if (v19)
        {
          goto LABEL_43;
        }

        v12[2] = v20;
      }

LABEL_5:
      ++v10;
      v11 += 48;
      if (v41 == v10)
      {
        goto LABEL_22;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_22:

  v22 = v12[2];
  if (!v22)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_36:

    v38 = *(v25 + 16);

    v21 = v38 == 0;
    goto LABEL_37;
  }

  v23 = 0;
  v24 = (v12 + 4);
  v25 = MEMORY[0x1E69E7CC0];
  v41 = v12[2];
  while (v23 < v12[2])
  {
    sub_1B9F0A534(v24, v45);
    sub_1B9F0A534(v45, v42);
    sub_1B9F32244();
    v26 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
    if (swift_dynamicCast())
    {
      (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
      v27 = v6[49];
      sub_1BA1E52C0(v6, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v27)
      {
        sub_1B9F25598(v45, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BA066B80(0, *(v25 + 16) + 1, 1);
          v25 = v46;
        }

        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1BA066B80((v29 > 1), v30 + 1, 1);
        }

        v31 = v43;
        v32 = v44;
        v33 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
        v34 = MEMORY[0x1EEE9AC00](v33);
        v36 = v39 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v37 + 16))(v36, v34);
        sub_1BA1F2854(v30, v36, &v46, v31, v32);
        result = __swift_destroy_boxed_opaque_existential_1(v42);
        v25 = v46;
        v22 = v41;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v45);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v45);
      (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
      result = sub_1BA1E4BE4(v6, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720], sub_1BA1E541C);
    }

    ++v23;
    v24 += 40;
    if (v22 == v23)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1BA1E433C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void, void), uint64_t a5, char a6)
{
  v39 = a2;
  v10 = sub_1B9F18214();
  v11 = v10;
  if (a6)
  {
    if (a6 == 1)
    {
      MEMORY[0x1EEE9AC00](v10);
      v30 = a4;
      v31 = a5;
      v32 = &v39;
      v12 = sub_1BA2F4270(sub_1BA15D290, v29, v11);
      v34 = 0;

      v14 = 0;
      v15 = *(v12 + 2);
      v16 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v17 = &v12[48 * v14 + 16];
      while (v15 != v14)
      {
        if (v14 >= *(v12 + 2))
        {
          __break(1u);
          return result;
        }

        ++v14;
        v18 = (v17 + 48);
        v19 = *(v17 + 32);
        v17 += 48;
        if (*(v19 + 16))
        {
          v20 = *(v18 - 3);
          v35 = *(v18 - 4);
          v21 = *(v18 - 1);
          v22 = *v18;
          v23 = v18[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          v37 = v21;
          v38 = v16;
          v36 = v22;
          if ((result & 1) == 0)
          {
            result = sub_1B9F277B0(0, *(v16 + 2) + 1, 1);
            v16 = v38;
          }

          v25 = *(v16 + 2);
          v24 = *(v16 + 3);
          if (v25 >= v24 >> 1)
          {
            result = sub_1B9F277B0((v24 > 1), v25 + 1, 1);
            v16 = v38;
          }

          *(v16 + 2) = v25 + 1;
          v26 = &v16[48 * v25];
          *(v26 + 4) = v35;
          *(v26 + 5) = v20;
          v27 = v36;
          v28 = v37;
          *(v26 + 6) = v19;
          *(v26 + 7) = v28;
          *(v26 + 8) = v27;
          *(v26 + 9) = v23;
          goto LABEL_4;
        }
      }
    }

    else
    {
      v16 = a4(v10, &v39);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    v30 = a4;
    v31 = a5;
    v32 = &v39;
    v33 = a3 & 1;
    v16 = sub_1BA2F4270(sub_1BA1E5488, v29, v11);
  }

  return v16;
}

uint64_t sub_1BA1E45B0(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, char a5)
{
  result = sub_1BA1F99B4();
  v66 = result;
  if (a5)
  {
    if (a5 != 1)
    {
      v43 = a3();

      return v43;
    }

    v64 = *(result + 16);
    if (v64)
    {
      v8 = 0;
      v9 = (result + 72);
      v10 = MEMORY[0x1E69E7CC0];
      while (v8 < *(result + 16))
      {
        v11 = *(v9 - 1);
        v12 = *v9;
        v14 = *(v9 - 3);
        v13 = *(v9 - 2);
        v15 = *(v9 - 4);
        v72[0] = *(v9 - 5);
        v72[1] = v15;
        v72[2] = v14;
        v72[3] = v13;
        v72[4] = v11;
        v72[5] = v12;

        (a3)(v73, v72);

        v16 = v73[0];
        v17 = v73[1];
        v68 = v74;
        v18 = v75;
        v19 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B9F21540(0, *(v10 + 2) + 1, 1, v10);
        }

        v21 = *(v10 + 2);
        v20 = *(v10 + 3);
        if (v21 >= v20 >> 1)
        {
          v10 = sub_1B9F21540((v20 > 1), v21 + 1, 1, v10);
        }

        ++v8;
        *(v10 + 2) = v21 + 1;
        v22 = &v10[48 * v21];
        *(v22 + 4) = v16;
        *(v22 + 5) = v17;
        *(v22 + 3) = v68;
        *(v22 + 8) = v18;
        *(v22 + 9) = v19;
        v9 += 6;
        result = v66;
        if (v64 == v8)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_65;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v44 = 0;
    v45 = *(v10 + 2);
    v46 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v47 = &v10[48 * v44 + 16];
    while (v45 != v44)
    {
      if (v44 >= *(v10 + 2))
      {
        goto LABEL_64;
      }

      ++v44;
      v48 = (v47 + 48);
      v49 = *(v47 + 32);
      v47 += 48;
      if (*(v49 + 16))
      {
        v50 = *(v48 - 3);
        v67 = *(v48 - 4);
        v51 = *(v48 - 1);
        v52 = *v48;
        v53 = v48[1];

        result = swift_isUniquelyReferenced_nonNull_native();
        v73[0] = v46;
        v71 = v51;
        if ((result & 1) == 0)
        {
          result = sub_1B9F277B0(0, *(v46 + 16) + 1, 1);
          v46 = v73[0];
        }

        v55 = *(v46 + 16);
        v54 = *(v46 + 24);
        if (v55 >= v54 >> 1)
        {
          result = sub_1B9F277B0((v54 > 1), v55 + 1, 1);
          v46 = v73[0];
        }

        *(v46 + 16) = v55 + 1;
        v56 = (v46 + 48 * v55);
        v56[4] = v67;
        v56[5] = v50;
        v56[6] = v49;
        v56[7] = v71;
        v56[8] = v52;
        v56[9] = v53;
        goto LABEL_47;
      }
    }

    v57 = v46;
    goto LABEL_58;
  }

  v62 = *(result + 16);
  if (!v62)
  {
    v57 = MEMORY[0x1E69E7CC0];
LABEL_58:

    return v57;
  }

  v23 = 0;
  v61 = result + 32;
  v57 = MEMORY[0x1E69E7CC0];
  v60 = a2;
  while (1)
  {
    if (v23 >= *(result + 16))
    {
      goto LABEL_66;
    }

    v65 = v23;
    v24 = (v61 + 48 * v23);
    v25 = v24[2];
    v26 = v24[5];
    v58 = v24[4];
    v59 = *v24;
    v27 = *(v25 + 16);
    v63 = v24[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v69 = v26;
    result = swift_bridgeObjectRetain_n();
    if (v27)
    {
      break;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v23 = v65 + 1;

    v39 = Array<A>.identifierToIndexDict()(v30);

    if (v30[2] || (v60 & 1) != 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1B9F21540(0, *(v57 + 2) + 1, 1, v57);
      }

      v41 = *(v57 + 2);
      v40 = *(v57 + 3);
      if (v41 >= v40 >> 1)
      {
        v57 = sub_1B9F21540((v40 > 1), v41 + 1, 1, v57);
      }

      result = v66;
      *(v57 + 2) = v41 + 1;
      v42 = &v57[48 * v41];
      *(v42 + 4) = v59;
      *(v42 + 5) = v63;
      *(v42 + 6) = v30;
      *(v42 + 7) = v39;
      *(v42 + 8) = v58;
      *(v42 + 9) = v69;
      if (v23 == v62)
      {
        goto LABEL_58;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      result = v66;
      if (v23 == v62)
      {
        goto LABEL_58;
      }
    }
  }

  v28 = 0;
  v29 = v25 + 32;
  v30 = MEMORY[0x1E69E7CC0];
  while (v28 < *(v25 + 16))
  {
    sub_1B9F0A534(v29, v73);
    v31 = (a3)(v73);
    result = __swift_destroy_boxed_opaque_existential_1(v73);
    v32 = *(v31 + 16);
    v33 = v30[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_60;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v34 <= v30[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v35 = v33 + v32;
      }

      else
      {
        v35 = v33;
      }

      result = sub_1B9F281E8(result, v35, 1, v30);
      v30 = result;
      if (*(v31 + 16))
      {
LABEL_29:
        if ((v30[3] >> 1) - v30[2] < v32)
        {
          goto LABEL_62;
        }

        sub_1B9F32244();
        swift_arrayInitWithCopy();

        if (v32)
        {
          v36 = v30[2];
          v37 = __OFADD__(v36, v32);
          v38 = v36 + v32;
          if (v37)
          {
            goto LABEL_63;
          }

          v30[2] = v38;
        }

        goto LABEL_18;
      }
    }

    if (v32)
    {
      goto LABEL_61;
    }

LABEL_18:
    ++v28;
    v29 += 40;
    if (v27 == v28)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1BA1E4BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA1E4C8C()
{
  result = type metadata accessor for SummarySharingSelectionFlow(319);
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

uint64_t sub_1BA1E4D70()
{
  result = type metadata accessor for SummarySharingSelectionFlow(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1BA1E4FCC(uint64_t a1, uint64_t a2)
{
  if (sub_1BA4A2178() == a1 && v4 == a2)
  {

    goto LABEL_5;
  }

  v5 = sub_1BA4A8338();

  if (v5)
  {
LABEL_5:
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

LABEL_14:
    swift_once();
    return sub_1BA4A1318();
  }

  if (sub_1BA4A2168() == a1 && v7 == a2)
  {

    goto LABEL_11;
  }

  v8 = sub_1BA4A8338();

  if (v8)
  {
LABEL_11:
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1BA1E52C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1BA1E5348(void *result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1BA1E5394@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_1BA1E53D8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_1BA1E541C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *SharedProfileOverviewViewController.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for ProfileGradientsProviderFactory();
  swift_initStaticObject();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1BA4A1B68();
  v7 = sub_1B9FE10EC(a1, v6);

  sub_1B9F0A534(a2, v12);
  sub_1B9F0A534(a3, v11);
  v8 = objc_allocWithZone(type metadata accessor for SharedProfileOverviewViewController());
  v9 = sub_1BA1E87F4(a1, v12, v7, v11);

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v9;
}

void sub_1BA1E55E4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA1E5644()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA1E5698(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA1E57DC@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1BA1E5830(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BA1E58E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(_BYTE *, uint64_t))
{
  sub_1B9F0A534(a1, v12);
  v9 = *a2;
  v10 = *a5;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v9 + v10);
  a6(v12, v9 + v10);
  return swift_endAccess();
}

uint64_t sub_1BA1E5968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F0A534(v2 + v4, a2);
}

uint64_t sub_1BA1E59DC(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v6);
  a3(a1, v3 + v6);
  return swift_endAccess();
}

void sub_1BA1E5AA8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA1E5B08()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA1E5B54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA1E5C0C()
{
  sub_1BA090588();
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0906F8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_sharedProfileOverviewDataSource) + OBJC_IVAR____TtC18HealthExperienceUI31SharedProfileOverviewDataSource_sharedProfileHeaderDataSource) + qword_1EDC6A560);
  v9 = MEMORY[0x1E69A3430];
  v10 = MEMORY[0x1E695BF98];
  sub_1BA1E8B20(0, &qword_1EBBEE020, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BF98]);
  sub_1BA1E8B98(&qword_1EBBEB080, &qword_1EBBEE020, v10);

  v21 = sub_1BA4A4F98();
  v11 = MEMORY[0x1E695BED0];
  sub_1BA1E8B20(0, &unk_1EBBEE000, &qword_1EBBEA318, v9, MEMORY[0x1E695BED0]);
  v12 = MEMORY[0x1E69A3340];
  sub_1BA1E8ACC(0, &qword_1EBBEB070, MEMORY[0x1E69A3340]);
  sub_1BA1E8B98(&qword_1EBBEE010, &unk_1EBBEE000, v11);
  sub_1BA4A4FE8();

  sub_1BA1E8BFC(&unk_1EBBEE030, sub_1BA0906F8);
  v13 = sub_1BA4A4F98();

  (*(v6 + 8))(v8, v5);
  v21 = v13;
  sub_1BA1E8B20(0, &unk_1EBBEDFE0, &qword_1EBBEB070, v12, v11);
  sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
  sub_1BA090668();
  v14 = v18;
  sub_1BA4A4FE8();
  sub_1BA1E8BFC(&qword_1EBBEB088, sub_1BA090588);
  v15 = v19;
  v16 = sub_1BA4A4F98();

  (*(v20 + 8))(v14, v15);
  return v16;
}

void sub_1BA1E6008(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *a1;
  *(v3 + v4) = *a1;
  v7 = v6;
}

id sub_1BA1E6070()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1BA1E60C4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_1BA1E6184(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA1E6234(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *SharedProfileOverviewViewController.__allocating_init(healthStore:healthExperienceStore:profileGradientsProvider:pinnedContentManager:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1BA1E87F4(a1, a2, a3, a4);

  return v10;
}

char *SharedProfileOverviewViewController.init(healthStore:healthExperienceStore:profileGradientsProvider:pinnedContentManager:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_1BA1E87F4(a1, a2, a3, a4);

  return v6;
}

id sub_1BA1E6588()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SharedProfileOverviewViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  result = [v0 collectionView];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];

    v11[4] = sub_1BA1E6D34();
    v5 = 0;
    v11[5] = sub_1B9F11914();
    v10 = MEMORY[0x1E69E7CC0];
    while (v5 != 2)
    {
      v6 = v11[v5++ + 4];
      if (v6)
      {
        v7 = v6;
        MEMORY[0x1BFAF1510]();
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
      }
    }

    sub_1BA1E8ACC(0, &qword_1EDC5E510, sub_1BA1E8C50);
    swift_arrayDestroy();
    sub_1BA17A294();
    sub_1BA17B6CC();
    v8 = [v1 navigationItem];
    sub_1BA1E8C50();
    v9 = sub_1BA4A6AE8();

    [v8 setRightBarButtonItems_];

    return sub_1BA17D748();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA1E67C4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SharedProfileOverviewViewController();
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 contentOffset];
  v4 = v3;

  v5 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v6 = *&v0[v5];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;

  v11 = [v0 view];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v4 > 0.0)
  {
    v13 = -v4;
  }

  else
  {
    v13 = -0.0;
  }

  [v11 bounds];
  v15 = v14;

  [v6 setFrame_];
}

id sub_1BA1E6A20(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for SharedProfileOverviewViewController();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F7BC(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  v4 = swift_beginAccess();
  v5 = *&v1[v3];
  if (!v5)
  {
    return sub_1BA17D748(v4);
  }

  type metadata accessor for ProfileNavigationBarView();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return sub_1BA17D748(v4);
  }

  v6 = v4;
  v7 = v5;
  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    sub_1BA17C3C8();
    v11 = v10;
    [v9 contentOffset];
    v13 = v12;
    [v9 adjustedContentInset];
    v15 = v14;

    if (v11 >= v13 + v15)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 1.0;
    }

    [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
    if (v16 == v17)
    {
    }

    else
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      *(v18 + 24) = v16;
      v19 = objc_opt_self();
      aBlock[4] = sub_1BA090900;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B9F0B040;
      aBlock[3] = &block_descriptor_49;
      v20 = _Block_copy(aBlock);
      v21 = v7;

      [v19 animateWithDuration:v20 animations:0.2];

      _Block_release(v20);
    }

    return sub_1BA17D748(v4);
  }

  __break(1u);
  return result;
}