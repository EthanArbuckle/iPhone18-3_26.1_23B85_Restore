void sub_1C4E061A0()
{
  sub_1C4E2E060();
  switch(v0)
  {
    case 1:
    case 13:
      return;
    case 2:
      sub_1C44553A4();
      break;
    case 3:
      sub_1C4461FC0();
      break;
    case 4:
      sub_1C4E2CB90();
      break;
    case 5:
      sub_1C4E2E0AC();
      break;
    case 6:
      sub_1C441AA58();
      break;
    case 7:
      sub_1C4E2D9AC();
      break;
    case 9:
      sub_1C4E2D4EC();
      break;
    case 10:
      sub_1C4E2D4CC();
      break;
    case 11:
      sub_1C4E2DB98();
      break;
    case 12:
      sub_1C4E2DBB0();
      break;
    default:
      sub_1C43FE984();
      break;
  }
}

uint64_t sub_1C4E06290(uint64_t a1)
{
  v2 = sub_1C4E29004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E062CC(uint64_t a1)
{
  v2 = sub_1C4E29004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E06308()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_startingLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_endLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasAttendee);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasDate);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasLocationRelationship);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_identifier);

  return v0;
}

void sub_1C4E064D4()
{
  sub_1C43FE96C();
  v3 = sub_1C4E2CC60();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441D0D8(v7, v39);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402CA8();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FE95C();
  v13 = sub_1C456902C(&qword_1EC0C8528, &qword_1C4F77510);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E29004();
  sub_1C4E2CDB4();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v17, v18);
  sub_1C4423E24();
  if (v1)
  {
    v19 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v21, v22);
    sub_1C446078C();
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v23, v24);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v25, v26);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v27 = sub_1C43FFA70();
    v28(v27);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v29 = sub_1C4428A8C();
    v0(v29);
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_startingLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_endLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    v19 = sub_1C4475668();
  }

  v20(v19);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E06A6C()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C4425688(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440DC5C(v7, v70);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C446BD9C(v9, v10, v11, v12, v13, v14, v15, v16, v71);
  v17 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v75 = sub_1C44A3D38(v21, v72);
  v22 = sub_1C43FCDF8(v75);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C441BFD4(v25, v73);
  v76 = sub_1C456902C(&qword_1EC0C86B0, &qword_1C4F77608);
  sub_1C43FCDF8(v76);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v74);
  sub_1C44A3C3C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_predicate);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityClass);
  sub_1C4EFCFF8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v30 = type metadata accessor for Source();
  sub_1C4E2D85C(v30, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name_predicate);
  sub_1C4E2DA60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence);
  sub_1C4E2CDD4();
  sub_1C4E2CE04();
  v31 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasAttendee;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasAttendee) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasDate) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasLocationRelationship) = 0;
  sub_1C44A1F88(v32);
  sub_1C4E29004();
  sub_1C4E2CB3C();
  if (v1)
  {
    sub_1C4E2DA54();
    sub_1C4E2E280(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
    v36 = sub_1C4EFD548();
    sub_1C43FD3F8(v36);
    v38 = *(v37 + 8);
    v39 = sub_1C4E2D5B0();
    v40(v39);
    sub_1C4E2DE7C();
    v41 = sub_1C44D7418(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name_predicate);
    v0(v41);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name);
    v42 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence_predicate);
    v0(v42);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence);
    v43 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_startingLocation);

    v44 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_endLocation);

    v45 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasAttendee);

    v46 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasDate);

    v47 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasLocationRelationship);

    v48 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_identifier);

    sub_1C44417C4();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    sub_1C4E2DE94();
  }

  else
  {
    sub_1C443052C();
    sub_1C4420B30();
    sub_1C4E276B4(v33, v34);
    sub_1C440CF04();
    v52 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityIdentifier);
    v53(v52);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v54, v55);
    sub_1C442F568();
    sub_1C4E2CDE4();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v56 = sub_1C449AF8C();
    v2(v56);
    swift_endAccess();
    v57 = sub_1C44D4094();
    sub_1C4E2CF38(v57, v58);
    sub_1C448E194();
    sub_1C44AB1FC();
    v59 = sub_1C447540C();
    v2(v59);
    swift_endAccess();
    v60 = sub_1C44D45AC();
    sub_1C4E2C87C(v60, v61);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v62, v63);
    sub_1C4435DCC();
    sub_1C4422C90(v78);

    sub_1C4422610();
    sub_1C4422C90(v78);

    sub_1C4480640();
    sub_1C441B2D4();
    sub_1C4412AAC();
    sub_1C4E276B4(v64, v65);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C4E2C948();
    sub_1C448F0CC();
    sub_1C440B98C();
    sub_1C4E276B4(v66, v67);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E2CA08();
    sub_1C4E29544();
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E2CA18();
    sub_1C4E295F8();
    sub_1C443F8E4();
    v68 = sub_1C44625E0();
    v69(v68);
    sub_1C4436800();
  }

  sub_1C440962C(v77);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E071D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E06A40(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E0725C()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v8);
  v129 = sub_1C4F00DC8();
  v9 = sub_1C43FCDF8(v129);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44094C8(v12, v122);
  v14 = MEMORY[0x1EEE9AC00](v13);
  sub_1C44107F0(v14, v15, v16, v17, v18, v19, v20, v21, v123);
  v22 = sub_1C4F01188();
  v23 = sub_1C43FCDF8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440A3EC(v26, v124);
  v27 = sub_1C4EFD548();
  v28 = sub_1C44348EC(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4410058(v31, v125);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C442A5DC(v33, v34, v35, v36, v37, v38, v39, v40, v126);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C440D100();
  v42 = type metadata accessor for Source();
  v43 = sub_1C440F834(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C4406BA0();
  v46 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v46);
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FE938(v50, v127);
  v51 = sub_1C4EFF0C8();
  v52 = sub_1C4425688(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4415E5C(v55, v128);
  v56 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v56);
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityClass;
  v58 = sub_1C4EFD008();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasAttendee) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasLocationRelationship) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_identifier);
  v60 = sub_1C44019BC();
  v1(v60);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v61 = sub_1C4F00978();
  sub_1C442B738(v61, qword_1EDE2DE10);
  v62 = sub_1C440EBA4();
  v1(v62);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v63 = sub_1C4E2D364();
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v64 = sub_1C4488A10();
    sub_1C4E2CA84(v64);
    v65 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v65);
    sub_1C442DB9C();
    sub_1C4E276B4(v66, v67);
    sub_1C44804C0();
    v68 = sub_1C442638C();
    v69(v68);
    v70 = sub_1C4409A28();
    sub_1C441D828(v70, v71, v72);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v73, v74, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v75 = sub_1C4462134();
    v76(v75);
  }

  sub_1C4488B88();
  v77 = sub_1C4404084();
  MEMORY[0x1C6940010](v77);

  sub_1C4E2D2F0();
  sub_1C4E2CC80();
  v78 = sub_1C4416A00();
  v79(v78);
  sub_1C4E2D49C();
  if (!v81 & v80)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v82 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v83 = sub_1C4415B1C();
      sub_1C44255B4(v83);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v59;
      sub_1C447CEB4(&dword_1C43F8000, v84, v85, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v86 = sub_1C44E7750();
    }

    else
    {

      v86 = sub_1C44BBD58();
    }

    v59 = v130;
    v100 = v130(v86);
    v101 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v87, v88);
    sub_1C441DF80();
    v89 = sub_1C4409D98();
    sub_1C44344B8(v89, v90);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v91 = sub_1C442AABC();
    v92(v91);
    v93 = sub_1C43FE318();
    v94(v93);
    v95 = sub_1C4417C80();
    v96(v95);
    sub_1C4507BA8();
    v97 = sub_1C4422CA0();
    v98(v97);
    v99 = sub_1C4430818();
    v100 = v59(v99);
    v101 = 0;
  }

  sub_1C4424A80(v100, v101);
  sub_1C4482D7C();
  if (v81)
  {
    sub_1C446F170(v132, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v102 = sub_1C43FFB2C();
    v104 = sub_1C4428F60(v102, v103);
    sub_1C4E2DEC4(v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    v105 = sub_1C4495DFC();
    v59(v105);
    sub_1C448D818(v0 + v131);
    sub_1C4425820();
    v107 = *(v106 + 8);
    v109 = sub_1C443E068(v108);
    v107(v109);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_endLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_startingLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasAttendee);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasDate);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasLocationRelationship);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_identifier);

    sub_1C44417C4();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v120 = sub_1C4440B80();
    v57(v120);
    v121 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityIdentifier);
    v57(v121);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E07A10(uint64_t a1)
{
  v2 = sub_1C4E29058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E07A4C(uint64_t a1)
{
  v2 = sub_1C4E29058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E07A88()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_endLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_startingLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasAttendee);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasDate);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasLocationRelationship);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_identifier);

  return v0;
}

void sub_1C4E07C54()
{
  sub_1C43FE96C();
  v3 = sub_1C4E2CC60();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441D0D8(v7, v39);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402CA8();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FE95C();
  v13 = sub_1C456902C(&qword_1EC0C8538, &qword_1C4F77518);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E29058();
  sub_1C4E2CDB4();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v17, v18);
  sub_1C4423E24();
  if (v1)
  {
    v19 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v21, v22);
    sub_1C446078C();
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v23, v24);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v25, v26);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v27 = sub_1C43FFA70();
    v28(v27);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v29 = sub_1C4428A8C();
    v0(v29);
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_endLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_startingLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    v19 = sub_1C4475668();
  }

  v20(v19);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E081EC()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C4425688(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440DC5C(v7, v70);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C446BD9C(v9, v10, v11, v12, v13, v14, v15, v16, v71);
  v17 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v75 = sub_1C44A3D38(v21, v72);
  v22 = sub_1C43FCDF8(v75);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C441BFD4(v25, v73);
  v76 = sub_1C456902C(&qword_1EC0C86A8, &qword_1C4F77600);
  sub_1C43FCDF8(v76);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v74);
  sub_1C44A3C3C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_predicate);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityClass);
  sub_1C4EFD008();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v30 = type metadata accessor for Source();
  sub_1C4E2D85C(v30, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name_predicate);
  sub_1C4E2DA60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence);
  sub_1C4E2CDD4();
  sub_1C4E2CE04();
  v31 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasAttendee;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasAttendee) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasDate) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasLocationRelationship) = 0;
  sub_1C44A1F88(v32);
  sub_1C4E29058();
  sub_1C4E2CB3C();
  if (v1)
  {
    sub_1C4E2DA54();
    sub_1C4E2E280(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
    v36 = sub_1C4EFD548();
    sub_1C43FD3F8(v36);
    v38 = *(v37 + 8);
    v39 = sub_1C4E2D5B0();
    v40(v39);
    sub_1C4E2DE7C();
    v41 = sub_1C44D7418(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name_predicate);
    v0(v41);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_name);
    v42 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence_predicate);
    v0(v42);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence);
    v43 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_endLocation);

    v44 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_startingLocation);

    v45 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasAttendee);

    v46 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasDate);

    v47 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_hasLocationRelationship);

    v48 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_identifier);

    sub_1C44417C4();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    sub_1C4E2DE94();
  }

  else
  {
    sub_1C443052C();
    sub_1C4420B30();
    sub_1C4E276B4(v33, v34);
    sub_1C440CF04();
    v52 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_entityIdentifier);
    v53(v52);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v54, v55);
    sub_1C442F568();
    sub_1C4E2CDE4();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v56 = sub_1C449AF8C();
    v2(v56);
    swift_endAccess();
    v57 = sub_1C44D4094();
    sub_1C4E2CF38(v57, v58);
    sub_1C448E194();
    sub_1C44AB1FC();
    v59 = sub_1C447540C();
    v2(v59);
    swift_endAccess();
    v60 = sub_1C44D45AC();
    sub_1C4E2C87C(v60, v61);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v62, v63);
    sub_1C4435DCC();
    sub_1C4422C90(v78);

    sub_1C4422610();
    sub_1C4422C90(v78);

    sub_1C4480640();
    sub_1C441B2D4();
    sub_1C4412AAC();
    sub_1C4E276B4(v64, v65);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C4E2C948();
    sub_1C448F0CC();
    sub_1C440B98C();
    sub_1C4E276B4(v66, v67);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E2CA08();
    sub_1C4E29544();
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E2CA18();
    sub_1C4E295F8();
    sub_1C443F8E4();
    v68 = sub_1C44625E0();
    v69(v68);
    sub_1C4436800();
  }

  sub_1C440962C(v77);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E08950@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E081C0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E089DC()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v8);
  v129 = sub_1C4F00DC8();
  v9 = sub_1C43FCDF8(v129);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44094C8(v12, v122);
  v14 = MEMORY[0x1EEE9AC00](v13);
  sub_1C44107F0(v14, v15, v16, v17, v18, v19, v20, v21, v123);
  v22 = sub_1C4F01188();
  v23 = sub_1C43FCDF8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440A3EC(v26, v124);
  v27 = sub_1C4EFD548();
  v28 = sub_1C44348EC(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4410058(v31, v125);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C442A5DC(v33, v34, v35, v36, v37, v38, v39, v40, v126);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C440D100();
  v42 = type metadata accessor for Source();
  v43 = sub_1C440F834(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C4406BA0();
  v46 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v46);
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FE938(v50, v127);
  v51 = sub_1C4EFF0C8();
  v52 = sub_1C4425688(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4415E5C(v55, v128);
  v56 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v56);
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityClass;
  v58 = sub_1C4EFD0F8();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasAttendee) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasLocationRelationship);
  v60 = sub_1C44019BC();
  v1(v60);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v61 = sub_1C4F00978();
  sub_1C442B738(v61, qword_1EDE2DE10);
  v62 = sub_1C440EBA4();
  v1(v62);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v63 = sub_1C4E2D364();
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v64 = sub_1C4488A10();
    sub_1C4E2CA84(v64);
    v65 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v65);
    sub_1C442DB9C();
    sub_1C4E276B4(v66, v67);
    sub_1C44804C0();
    v68 = sub_1C442638C();
    v69(v68);
    v70 = sub_1C4409A28();
    sub_1C441D828(v70, v71, v72);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v73, v74, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v75 = sub_1C4462134();
    v76(v75);
  }

  sub_1C4488B88();
  v77 = sub_1C4404084();
  MEMORY[0x1C6940010](v77);

  sub_1C4E2D2F0();
  sub_1C4E2CC80();
  v78 = sub_1C4416A00();
  v79(v78);
  sub_1C4E2D49C();
  if (!v81 & v80)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v82 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v83 = sub_1C4415B1C();
      sub_1C44255B4(v83);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v59;
      sub_1C447CEB4(&dword_1C43F8000, v84, v85, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v86 = sub_1C44E7750();
    }

    else
    {

      v86 = sub_1C44BBD58();
    }

    v59 = v130;
    v100 = v130(v86);
    v101 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v87, v88);
    sub_1C441DF80();
    v89 = sub_1C4409D98();
    sub_1C44344B8(v89, v90);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v91 = sub_1C442AABC();
    v92(v91);
    v93 = sub_1C43FE318();
    v94(v93);
    v95 = sub_1C4417C80();
    v96(v95);
    sub_1C4507BA8();
    v97 = sub_1C4422CA0();
    v98(v97);
    v99 = sub_1C4430818();
    v100 = v59(v99);
    v101 = 0;
  }

  sub_1C4424A80(v100, v101);
  sub_1C4482D7C();
  if (v81)
  {
    sub_1C446F170(v132, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v102 = sub_1C43FFB2C();
    v104 = sub_1C4428F60(v102, v103);
    sub_1C4E2DEC4(v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    v105 = sub_1C4495DFC();
    v59(v105);
    sub_1C448D818(v0 + v131);
    sub_1C4425820();
    v107 = *(v106 + 8);
    v109 = sub_1C443E068(v108);
    v107(v109);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_startingLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_endLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasDate);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_identifier);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasAttendee);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasLocationRelationship);

    sub_1C44417C4();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v120 = sub_1C4440B80();
    v57(v120);
    v121 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityIdentifier);
    v57(v121);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E09190(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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
        }
      }
    }
  }
}

unint64_t sub_1C4E095DC(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x7461636F4C646E65;
      break;
    case 10:
      result = 0x65746144736168;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 0x6E65747441736168;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E09790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E09190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E097B8(uint64_t a1)
{
  v2 = sub_1C4E290AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E097F4(uint64_t a1)
{
  v2 = sub_1C4E290AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E09830()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_startingLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_endLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasDate);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_identifier);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasAttendee);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasLocationRelationship);

  return v0;
}

void sub_1C4E099FC()
{
  sub_1C43FE96C();
  v3 = sub_1C4E2CC60();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441D0D8(v7, v39);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402CA8();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FE95C();
  v13 = sub_1C456902C(&qword_1EC0C8548, &qword_1C4F77520);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E290AC();
  sub_1C4E2CDB4();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v17, v18);
  sub_1C4423E24();
  if (v1)
  {
    v19 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v21, v22);
    sub_1C446078C();
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v23, v24);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v25, v26);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v27 = sub_1C43FFA70();
    v28(v27);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v29 = sub_1C4428A8C();
    v0(v29);
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_startingLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_endLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    v19 = sub_1C4475668();
  }

  v20(v19);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E09F94()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C4425688(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440DC5C(v7, v70);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C446BD9C(v9, v10, v11, v12, v13, v14, v15, v16, v71);
  v17 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v75 = sub_1C44A3D38(v21, v72);
  v22 = sub_1C43FCDF8(v75);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C441BFD4(v25, v73);
  v76 = sub_1C456902C(&qword_1EC0C86A0, &qword_1C4F775F8);
  sub_1C43FCDF8(v76);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v74);
  sub_1C44A3C3C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_predicate);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityClass);
  sub_1C4EFD0F8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v30 = type metadata accessor for Source();
  sub_1C4E2D85C(v30, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name_predicate);
  sub_1C4E2DA60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence);
  sub_1C4E2CDD4();
  sub_1C4E2CE04();
  v31 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasDate;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasDate) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_identifier) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasAttendee) = 0;
  sub_1C44A1F88(v32);
  sub_1C4E290AC();
  sub_1C4E2CB3C();
  if (v1)
  {
    sub_1C4E2DA54();
    sub_1C4E2E280(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
    v36 = sub_1C4EFD548();
    sub_1C43FD3F8(v36);
    v38 = *(v37 + 8);
    v39 = sub_1C4E2D5B0();
    v40(v39);
    sub_1C4E2DE7C();
    v41 = sub_1C44D7418(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name_predicate);
    v0(v41);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_name);
    v42 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence_predicate);
    v0(v42);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence);
    v43 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_startingLocation);

    v44 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_endLocation);

    v45 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasDate);

    v46 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_identifier);

    v47 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasAttendee);

    v48 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_hasLocationRelationship);

    sub_1C44417C4();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    sub_1C4E2DE94();
  }

  else
  {
    sub_1C443052C();
    sub_1C4420B30();
    sub_1C4E276B4(v33, v34);
    sub_1C440CF04();
    v52 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_entityIdentifier);
    v53(v52);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v54, v55);
    sub_1C442F568();
    sub_1C4E2CDE4();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v56 = sub_1C449AF8C();
    v2(v56);
    swift_endAccess();
    v57 = sub_1C44D4094();
    sub_1C4E2CF38(v57, v58);
    sub_1C448E194();
    sub_1C44AB1FC();
    v59 = sub_1C447540C();
    v2(v59);
    swift_endAccess();
    v60 = sub_1C44D45AC();
    sub_1C4E2C87C(v60, v61);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v62, v63);
    sub_1C4435DCC();
    sub_1C4422C90(v78);

    sub_1C4422610();
    sub_1C4422C90(v78);

    sub_1C4E2C948();
    sub_1C441B2D4();
    sub_1C440B98C();
    sub_1C4E276B4(v64, v65);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E2CA4C();
    sub_1C4E295F8();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C4480640();
    sub_1C442A360();
    sub_1C4412AAC();
    sub_1C4E276B4(v66, v67);
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E2CA18();
    sub_1C4E29544();
    sub_1C443F8E4();
    v68 = sub_1C44625E0();
    v69(v68);
    sub_1C4436800();
  }

  sub_1C440962C(v77);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E0A6F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E09F68(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E0A784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v24;
  a20 = v26;
  v27 = v21;
  v28 = v20;
  v30 = v29;
  v248 = v31;
  v249 = v32;
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v34 = sub_1C43FBD18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4441388(v37, v233);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  sub_1C43FD2C8(v39);
  v40 = sub_1C4EFF0C8();
  v41 = sub_1C43FCDF8(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  v55 = sub_1C44AE144(v47, v48, v49, v50, v51, v52, v53, v54, v234);
  v56 = type metadata accessor for EntityTriple(v55);
  v246 = sub_1C43FCDF8(v56);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v246);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C442EEDC();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C447CF24();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C44144E4();
  v63 = *v30;
  i = MEMORY[0x1E69E7CC0];
  v251[0] = MEMORY[0x1E69E7CC0];
  sub_1C4E2D790(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name);
  v250 = v20;
  v243 = v40;
  v244 = v43;
  v247 = v63;
  if (!v22)
  {
    goto LABEL_6;
  }

  sub_1C44181E4(v65);
  if (!v66)
  {
    v28 = v20;
    goto LABEL_6;
  }

  v245 = v21;
  v67 = *(v43 + 16);
  sub_1C4E2E42C();
  v68(v23);
  v27 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name_predicate;
  sub_1C4E2D1F0();
  v69 = sub_1C4E2E268();
  sub_1C43FCE50(v69);
  v71 = v23 + v43;
  v43 = v248;
  (*(v70 + 16))(v71, v63 + v27);
  v72 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source);
  v63 = v63;
  sub_1C449ED64(v72, v23 + v73);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4414830();
  sub_1C4EFF888();
  sub_1C4E2E3D8();
  v74 = (v23 + v246[8]);
  *v74 = v20;
  v74[1] = v22;
  v75 = (v23 + v246[10]);
  *v75 = v248;
  v75[1] = v249;
  *(v23 + v246[11]) = v25;
  *(v23 + v246[12]) = v63;
  v76 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v76, v77, v78, MEMORY[0x1E69E7CC0]);
  sub_1C445FC80(v79);
  if (v81)
  {
    goto LABEL_80;
  }

  while (1)
  {
    *(i + 16) = v27;
    sub_1C4415270();
    sub_1C4A948D8(v23, v82);
    sub_1C4E2E244();
    sub_1C4E2D5FC();
    v27 = v245;
LABEL_6:
    sub_1C4E2D790(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
    if (v22)
    {
      sub_1C44181E4(v83);
      if (v84)
      {
        v245 = v27;
        v85 = *(v43 + 16);
        v43 = v63;
        sub_1C4E2E42C();
        v86(v20);
        v87 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence_predicate;
        sub_1C4E2D210();
        v88 = v246[5];
        v89 = sub_1C4EFEEF8();
        sub_1C43FCE50(v89);
        (*(v90 + 16))(v20 + v88, v63 + v87);
        v91 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source);
        sub_1C449ED64(v91, v20 + v92);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DF74();
        sub_1C4E2D7B4();
        *v93 = v28;
        v93[1] = v22;
        sub_1C4E2D7A8();
        *v94 = v248;
        v94[1] = v249;
        sub_1C4E2CAF4();
        *(v20 + v95) = v63;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v197 = *(i + 16);
          v198 = sub_1C43FCEC0();
          sub_1C44C9240(v198, v199, v200, i);
          i = v201;
        }

        sub_1C4E2CE44();
        if (v81)
        {
          v202 = sub_1C4413F5C(v96);
          sub_1C44C9240(v202, v203, v204, i);
          i = v205;
        }

        sub_1C4E2D5FC();
        *(i + 16) = v87;
        sub_1C4415270();
        sub_1C4A948D8(v20, v97);
        sub_1C4E2E244();
        v27 = v245;
      }

      else
      {
        v28 = v250;
      }
    }

    v98 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation);
    v99 = v248;
    if (v98)
    {
      break;
    }

LABEL_25:
    v119 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation);
    if (!v119)
    {
      goto LABEL_28;
    }

    v20 = v119;
    v99 = v27;
    sub_1C4DE69B4();
    if (v27)
    {
LABEL_27:

      goto LABEL_66;
    }

    sub_1C4E2DD4C(v120);
    if (!v122)
    {

LABEL_28:
      v121 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
      goto LABEL_36;
    }

    v245 = 0;
    v123 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v123);
    v124 = *(v43 + 16);
    v125 = sub_1C442B9BC();
    v126(v125);
    v127 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
    sub_1C4E2CE74();
    v27 = v237;
    sub_1C47CBF50(v119 + v127, v237);
    sub_1C4EFEEF8();
    sub_1C4410BC4(v237);
    if (v106)
    {
      goto LABEL_82;
    }

    sub_1C4EFF048();
    sub_1C4408DEC();
    v128 = sub_1C4E2D5A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source);
    sub_1C4E2DE64(v128, &a13);
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DDB4();
    sub_1C4E2D7C0(v43);
    sub_1C442F834();
    v129();
    sub_1C4443500();
    v131 = *(v130 + 32);
    v133 = sub_1C4E2CED0(v132);
    v134(v133);
    sub_1C4488888();
    *v135 = v248;
    v135[1] = v249;
    sub_1C445AB58();
    v63 = v247;
    *(v28 + v136) = v247;
    v20 = v251[0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = v20[2];
      v216 = sub_1C43FCEC0();
      sub_1C44C9240(v216, v217, v218, v20);
      v20 = v219;
    }

    v121 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
    sub_1C4E2CE64();
    if (v81)
    {
      v220 = sub_1C4413F5C(v137);
      sub_1C44C9240(v220, v221, v222, v20);
      v20 = v223;
    }

    v20[2] = v237;
    sub_1C447E440();
    sub_1C4A948D8(v239, v138);
    v251[0] = v20;
    v28 = v250;
LABEL_36:
    v22 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship);
    if (!v22)
    {
LABEL_47:
      v22 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier);
      if (v22)
      {
        v150 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier);
        v23 = sub_1C4428DA0();
        v28 = v121[25];
        sub_1C4E2D328();
        for (i = 0; v23 != i; ++i)
        {
          if (v63)
          {
            sub_1C4E2DF5C();
            v27 = v160;
          }

          else
          {
            sub_1C4E2D79C();
            if (v81)
            {
              goto LABEL_79;
            }

            sub_1C4E2D53C();
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_78;
          }

          sub_1C4E2CCD8();
          sub_1C44178D8();
          sub_1C4DE44E8(v151, v152, v153, v154, v155, v156, v157, v158, v235, v236);
          if (v99)
          {
            goto LABEL_57;
          }

          v20 = v251;
          sub_1C49D3614(v159);
        }

        v28 = v250;
        sub_1C4E2D5FC();
        v121 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
      }

      if (*(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate))
      {
        v161 = v121[25];

        v162 = sub_1C44C0500();
        sub_1C4DECF58(v162, v163, v164, v165, v166, v167, v168, v169, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
        if (!v161)
        {
          sub_1C49D3614(v170);

          goto LABEL_62;
        }

LABEL_64:

LABEL_65:
      }

      else
      {
LABEL_62:
        if (*(v250 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee))
        {
          v171 = v121[25];

          v172 = sub_1C44C0500();
          sub_1C4DEBBF0(v172, v173, v174, v175, v176, v177, v178, v179, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
          if (v171)
          {
            goto LABEL_64;
          }

          sub_1C49D3614(v180);
        }

        sub_1C4E2DA6C();
        if (v181)
        {
          v182 = v121[25];
          v183 = *(v43 + 16);
          sub_1C4E2E42C();
          v184(v236);
          v185 = v236 + v246[5];
          sub_1C4EFEBB8();
          v186 = v247 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityClass;
          sub_1C4EFD2F8();
          sub_1C44106D4();
          sub_1C4E2E1A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source);
          sub_1C4EF9AE8();
          sub_1C440EEE0();
          sub_1C4EFF888();
          sub_1C444AF00();
          sub_1C4EFEC38();
          sub_1C4E2CFD8();
          *v187 = v248;
          v187[1] = v249;
          sub_1C4E2D72C();
          sub_1C4E2E658(v188);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v224 = *(v22 + 16);
            v225 = sub_1C43FCEC0();
            sub_1C44C9240(v225, v226, v227, v22);
            v22 = v228;
          }

          sub_1C4E2C928();
          if (v81)
          {
            v229 = sub_1C43FFD98(v189);
            sub_1C44C9240(v229, v230, v231, v22);
            v22 = v232;
          }

          *(v22 + 16) = v186;
          sub_1C43FBF6C();
          sub_1C4E2CF9C(v190);
          v191 = sub_1C441C660();
          sub_1C4A948D8(v191, v192);
        }
      }

LABEL_66:
      sub_1C44103B4();
      sub_1C44109F8();
      return;
    }

    v139 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship);
    v23 = sub_1C4428DA0();
    v28 = v121[25];
    sub_1C4E2D328();
    for (i = 0; ; ++i)
    {
      if (v23 == i)
      {

        v28 = v250;
        sub_1C4E2D5FC();
        v121 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
        goto LABEL_47;
      }

      if (v63)
      {
        sub_1C4E2DF5C();
        v27 = v149;
      }

      else
      {
        sub_1C4E2D79C();
        if (v81)
        {
          goto LABEL_77;
        }

        sub_1C4E2D53C();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C4E2CCD8();
      sub_1C44178D8();
      sub_1C4DE5C70(v140, v141, v142, v143, v144, v145, v146, v147, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246);
      if (v99)
      {
LABEL_57:

        goto LABEL_65;
      }

      v20 = v251;
      sub_1C49D3614(v148);
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v193 = sub_1C4413F5C(v80);
    sub_1C44C9240(v193, v194, v195, i);
    i = v196;
  }

  v20 = v98;
  sub_1C4DE69B4();
  if (v27)
  {
    goto LABEL_27;
  }

  sub_1C4E2DE40(v100);
  if (!v101)
  {

LABEL_24:
    v99 = v248;
    goto LABEL_25;
  }

  v245 = 0;
  v102 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v102);
  v103 = sub_1C44CD188();
  v104(v103);
  sub_1C4E2CB70();
  sub_1C4405930();
  sub_1C47CBF50(v105, 0);
  sub_1C4EFEEF8();
  sub_1C4410BC4(0);
  if (!v106)
  {

    v20 = (v98 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier);
    sub_1C4EFF048();
    sub_1C4416328();
    sub_1C4E2CFF0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source);
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DDB4();
    sub_1C4E2D7C0(v43);
    sub_1C446C204();
    v107();
    sub_1C4443500();
    v109 = *(v108 + 32);
    v111 = sub_1C4E2CED0(v110);
    v112(v111);
    sub_1C449F4C0();
    *v113 = v248;
    v113[1] = v249;
    sub_1C445AB58();
    v63 = v247;
    *(v28 + v114) = v247;
    v115 = v251[0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = *(v115 + 16);
      v207 = sub_1C43FCEC0();
      sub_1C44C9240(v207, v208, v209, v115);
      v115 = v210;
    }

    sub_1C4414030();
    if (v81)
    {
      v211 = sub_1C43FFD98(v116);
      sub_1C44C9240(v211, v212, v213, v115);
      v115 = v214;
    }

    *(v115 + 16) = v20;
    sub_1C4415270();
    v117 = sub_1C4458588();
    sub_1C4A948D8(v117, v118);
    sub_1C4E2E244();
    goto LABEL_24;
  }

  __break(1u);
LABEL_82:
  __break(1u);
}

void sub_1C4E0B2F0()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v8);
  v129 = sub_1C4F00DC8();
  v9 = sub_1C43FCDF8(v129);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44094C8(v12, v122);
  v14 = MEMORY[0x1EEE9AC00](v13);
  sub_1C44107F0(v14, v15, v16, v17, v18, v19, v20, v21, v123);
  v22 = sub_1C4F01188();
  v23 = sub_1C43FCDF8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440A3EC(v26, v124);
  v27 = sub_1C4EFD548();
  v28 = sub_1C44348EC(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4410058(v31, v125);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C442A5DC(v33, v34, v35, v36, v37, v38, v39, v40, v126);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C440D100();
  v42 = type metadata accessor for Source();
  v43 = sub_1C440F834(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C4406BA0();
  v46 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v46);
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FE938(v50, v127);
  v51 = sub_1C4EFF0C8();
  v52 = sub_1C4425688(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4415E5C(v55, v128);
  v56 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v56);
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityClass;
  v58 = sub_1C4EFD108();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee);
  v60 = sub_1C44019BC();
  v1(v60);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v61 = sub_1C4F00978();
  sub_1C442B738(v61, qword_1EDE2DE10);
  v62 = sub_1C440EBA4();
  v1(v62);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v63 = sub_1C4E2D364();
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v64 = sub_1C4488A10();
    sub_1C4E2CA84(v64);
    v65 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v65);
    sub_1C442DB9C();
    sub_1C4E276B4(v66, v67);
    sub_1C44804C0();
    v68 = sub_1C442638C();
    v69(v68);
    v70 = sub_1C4409A28();
    sub_1C441D828(v70, v71, v72);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v73, v74, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v75 = sub_1C4462134();
    v76(v75);
  }

  sub_1C4488B88();
  v77 = sub_1C4404084();
  MEMORY[0x1C6940010](v77);

  sub_1C4E2D2F0();
  sub_1C4E2CC80();
  v78 = sub_1C4416A00();
  v79(v78);
  sub_1C4E2D49C();
  if (!v81 & v80)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v82 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v83 = sub_1C4415B1C();
      sub_1C44255B4(v83);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v59;
      sub_1C447CEB4(&dword_1C43F8000, v84, v85, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v86 = sub_1C44E7750();
    }

    else
    {

      v86 = sub_1C44BBD58();
    }

    v59 = v130;
    v100 = v130(v86);
    v101 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v87, v88);
    sub_1C441DF80();
    v89 = sub_1C4409D98();
    sub_1C44344B8(v89, v90);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v91 = sub_1C442AABC();
    v92(v91);
    v93 = sub_1C43FE318();
    v94(v93);
    v95 = sub_1C4417C80();
    v96(v95);
    sub_1C4507BA8();
    v97 = sub_1C4422CA0();
    v98(v97);
    v99 = sub_1C4430818();
    v100 = v59(v99);
    v101 = 0;
  }

  sub_1C4424A80(v100, v101);
  sub_1C4482D7C();
  if (v81)
  {
    sub_1C446F170(v132, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v102 = sub_1C43FFB2C();
    v104 = sub_1C4428F60(v102, v103);
    sub_1C4E2DEC4(v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    v105 = sub_1C4495DFC();
    v59(v105);
    sub_1C448D818(v0 + v131);
    sub_1C4425820();
    v107 = *(v106 + 8);
    v109 = sub_1C443E068(v108);
    v107(v109);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee);

    sub_1C44417C4();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v120 = sub_1C4440B80();
    v57(v120);
    v121 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityIdentifier);
    v57(v121);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E0BAA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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
        }
      }
    }
  }
}

unint64_t sub_1C4E0BEF0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
      result = 0x7461636F4C646E65;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 0x65746144736168;
      break;
    case 13:
      result = 0x6E65747441736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E0C0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E0BAA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E0C0CC(uint64_t a1)
{
  v2 = sub_1C4E29100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E0C108(uint64_t a1)
{
  v2 = sub_1C4E29100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E0C144()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee);

  return v0;
}

void sub_1C4E0C310()
{
  sub_1C43FE96C();
  v3 = sub_1C4E2CC60();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441D0D8(v7, v39);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402CA8();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FE95C();
  v13 = sub_1C456902C(&qword_1EC0C8558, &qword_1C4F77528);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E29100();
  sub_1C4E2CDB4();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v17, v18);
  sub_1C4423E24();
  if (v1)
  {
    v19 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v21, v22);
    sub_1C446078C();
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v23, v24);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v25, v26);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v27 = sub_1C43FFA70();
    v28(v27);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v29 = sub_1C4428A8C();
    v0(v29);
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    v19 = sub_1C4475668();
  }

  v20(v19);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E0C8A8()
{
  sub_1C43FE96C();
  sub_1C4E2C9D0();
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C4425688(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440DC5C(v7, v72);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C446BD9C(v9, v10, v11, v12, v13, v14, v15, v16, v73);
  v17 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v77 = sub_1C44A3D38(v21, v74);
  v22 = sub_1C43FCDF8(v77);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C441BFD4(v25, v75);
  v78 = sub_1C456902C(&qword_1EC0C8698, &qword_1C4F775F0);
  sub_1C43FCDF8(v78);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v76);
  v30 = sub_1C4473DCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_predicate);
  sub_1C4E2DF24(v30, v31, v32);
  sub_1C4E2DCCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityClass);
  sub_1C4EFD108();
  v33 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v34 = type metadata accessor for Source();
  sub_1C4E2DCF0(v34, qword_1EDDFED10);
  sub_1C4E2E3A8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name_predicate);
  sub_1C4E2DD64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2DD58(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
  sub_1C4E2CF28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation);
  sub_1C4E2CF18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee) = 0;
  sub_1C4E2C7E8();
  sub_1C4E29100();
  v35 = sub_1C4E2CF78();
  if (v1)
  {
    sub_1C4E2DB4C(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
    v38 = sub_1C4EFD548();
    sub_1C43FD3F8(v38);
    v40 = *(v39 + 8);
    v41 = sub_1C4E2D5B0();
    v42(v41);
    sub_1C4E2DE7C();
    v43 = sub_1C4E2CD60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name_predicate);
    (v0)(v43);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_name);
    v44 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence_predicate);
    (v0)(v44);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
    v45 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_endLocation];

    v46 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_startingLocation];

    v47 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasLocationRelationship];

    v48 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_identifier];

    v49 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasDate];

    v50 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_hasAttendee];

    sub_1C44417C4();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    sub_1C4E2DE94();
  }

  else
  {
    sub_1C44049E4();
    sub_1C4420B30();
    sub_1C4E276B4(v36, v37);
    sub_1C440CF04();
    v54 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_entityIdentifier);
    v55(v54);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v56, v57);
    sub_1C442F568();
    sub_1C4E2D5BC();
    sub_1C4E2DA98();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v58 = sub_1C4449480();
    v2(v58);
    swift_endAccess();
    v59 = sub_1C44D4094();
    sub_1C4425188(v59, v60);
    sub_1C44514A8();
    sub_1C44AB1FC();
    v61 = sub_1C4E2CF08();
    v2(v61);
    swift_endAccess();
    v62 = sub_1C44D45AC();
    sub_1C4E2C87C(v62, v63);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v64, v65);
    sub_1C4435DCC();
    sub_1C441E968(v79);

    sub_1C4422610();
    sub_1C443F058(v79);

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C44CD958();
    sub_1C4E29544();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E2CA4C();
    sub_1C4E295F8();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C4E2C948();
    sub_1C442A360();
    sub_1C440B98C();
    sub_1C4E276B4(v66, v67);
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C4480640();
    sub_1C4414134();
    sub_1C4412AAC();
    sub_1C4E276B4(v68, v69);
    sub_1C443F8E4();
    v70 = sub_1C44625E0();
    v71(v70);
    sub_1C4436800();
  }

  sub_1C440962C(v0);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E0CFB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E0C87C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E0D040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v27;
  a20 = v28;
  sub_1C4E2C9B8(v29);
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v31 = sub_1C43FBD18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C4410058(v34, v210);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  sub_1C43FD2C8(v36);
  v37 = sub_1C4EFF0C8();
  v38 = sub_1C43FCDF8(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v43 = sub_1C43FD2C8(v42);
  v44 = type metadata accessor for EntityTriple(v43);
  v222 = sub_1C43FCDF8(v44);
  v223 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v222);
  sub_1C4441388(v48, v211);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C445C308();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4E2C864();
  i = MEMORY[0x1E69E7CC0];
  v227[0] = MEMORY[0x1E69E7CC0];
  sub_1C4E2D2A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name);
  sub_1C4E2E350();
  if (!v24)
  {
    goto LABEL_6;
  }

  sub_1C44181E4(v54);
  if (!v55)
  {
    v22 = v225;
    goto LABEL_6;
  }

  v213 = v26;
  sub_1C44CD0E0();
  v56 = sub_1C4E2E198();
  v57(v56);
  i = v23;
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name_predicate;
  sub_1C4E2D1F0();
  v58 = sub_1C4E2D930();
  sub_1C43FCE50(v58);
  v60 = *(v59 + 16);
  v61 = sub_1C4E2D2B4();
  v62(v61);
  v63 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source);
  sub_1C449ED64(v63, v25 + v64);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4414830();
  sub_1C4EFF888();
  sub_1C4E2E3D8();
  v65 = sub_1C442A80C();
  sub_1C4401EC4(v65, v66, v67, MEMORY[0x1E69E7CC0]);
  sub_1C445FC80(v68);
  if (v70)
  {
    goto LABEL_77;
  }

  while (1)
  {
    *(i + 16) = v23;
    sub_1C44056A4();
    sub_1C4A948D8(v25, v71);
    sub_1C4E2D114();
LABEL_6:
    sub_1C4E2D790(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
    if (v24)
    {
      sub_1C44181E4(v72);
      if (v73)
      {
        sub_1C44CD0E0();
        v74(v20);
        v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence_predicate;
        sub_1C4E2D210();
        v75 = sub_1C4E2DAA4();
        sub_1C43FCE50(v75);
        v77 = *(v76 + 16);
        v78 = sub_1C4E2D318();
        v79(v78);
        v80 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source);
        sub_1C449ED64(v80, v20 + v81);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DF74();
        sub_1C4440EE4();
        sub_1C4E2E238(v82);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v174 = *(i + 16);
          v175 = sub_1C43FCEC0();
          sub_1C44C9240(v175, v176, v177, i);
          i = v178;
        }

        sub_1C4E2CE44();
        if (v70)
        {
          v179 = sub_1C4413F5C(v83);
          sub_1C44C9240(v179, v180, v181, i);
          i = v182;
        }

        sub_1C4E2D5FC();
        *(i + 16) = v23;
        sub_1C44056A4();
        sub_1C4A948D8(v20, v84);
        sub_1C4E2D344();
      }

      else
      {
        v22 = v225;
      }
    }

    v25 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation);
    if (v25)
    {
      break;
    }

LABEL_24:
    sub_1C4E2E1CC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_endLocation);
    if (v24)
    {
      sub_1C4E2D8F4();

      sub_1C4E2D038();
      v26 = v21;
      if (v21)
      {
LABEL_26:

        goto LABEL_65;
      }

      sub_1C4E2DD4C(v103);
      if (v105)
      {
        v106 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49D3614(v106);
        sub_1C4E2CBE8();
        v107 = sub_1C4E2D7CC(&a15);
        v108(v107);
        sub_1C4E2CE74();
        sub_1C4405930();
        sub_1C47CBF50(v109, v23);
        sub_1C4EFEEF8();
        sub_1C4410BC4(v23);
        if (v91)
        {
          goto LABEL_79;
        }

        sub_1C4EFF048();
        sub_1C4408DEC();
        v110 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source);
        sub_1C4E2DE64(v110, &a14);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DDB4();
        sub_1C4E2D2D4();
        sub_1C4E2DD34();
        v111();
        sub_1C4443500();
        v113 = *(v112 + 32);
        v115 = sub_1C4E2CED0(v114);
        v116(v115);
        sub_1C4488888();
        v25 = v226;
        *v117 = v226;
        v117[1] = v224;
        sub_1C4423984();
        v20 = v227[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v192 = v20[2];
          v193 = sub_1C43FCEC0();
          sub_1C44C9240(v193, v194, v195, v20);
          v20 = v196;
        }

        v104 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
        sub_1C4E2CE64();
        if (v70)
        {
          v197 = sub_1C4413F5C(v118);
          sub_1C44C9240(v197, v198, v199, v20);
          v20 = v200;
        }

        v20[2] = v23;
        sub_1C447E440();
        v119 = sub_1C442B9BC();
        sub_1C4A948D8(v119, v120);
        sub_1C4E2E1C0();
      }

      else
      {

        v104 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
        v25 = v226;
      }
    }

    else
    {
      v104 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
    }

    v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier);
    if (!v24)
    {
LABEL_47:
      v23 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee);
      if (!v23)
      {
        goto LABEL_50;
      }

      v21 = v104[34];
      sub_1C4E2D4C0();

      v131 = sub_1C441B67C();
      sub_1C4DEBBF0(v131, v132, v133, v134, v135, v136, v137, v138, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223);
      v26 = v21;
      if (v21)
      {
LABEL_64:
      }

      else
      {
        v20 = v227;
        sub_1C49D3614(v139);

LABEL_50:
        v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship);
        if (v24)
        {
          sub_1C4E2D7D8();
          v25 = sub_1C4428DA0();
          v22 = v104[34];
          sub_1C4E2D328();
          for (i = 0; v25 != i; ++i)
          {
            if (v26)
            {
              sub_1C4E2DF5C();
              v23 = v149;
            }

            else
            {
              sub_1C4E2D79C();
              if (v70)
              {
                goto LABEL_76;
              }

              sub_1C4E2D53C();
            }

            if (__OFADD__(i, 1))
            {
              goto LABEL_75;
            }

            v140 = sub_1C441F25C();
            sub_1C4DE5C70(v140, v141, v142, v143, v144, v145, v146, v147, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223);
            if (v21)
            {
              goto LABEL_60;
            }

            v20 = v227;
            sub_1C49D3614(v148);
          }

          sub_1C4E2CD4C();
          v104 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
        }

        if (*(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate))
        {
          v150 = v104[34];
          sub_1C4E2D4C0();

          v151 = sub_1C441B67C();
          sub_1C4DECF58(v151, v152, v153, v154, v155, v156, v157, v158, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223);
          if (v150)
          {
            goto LABEL_64;
          }

          sub_1C49D3614(v159);
        }

        sub_1C4E2DA6C();
        if (v160)
        {
          v161 = v104[34];
          sub_1C4E2CD38();
          v162 = sub_1C4E2D188();
          v163(v162);
          sub_1C4E2DAC0();
          v164 = v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityClass;
          sub_1C4EFD2F8();
          sub_1C44106D4();
          sub_1C4E2D9C8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source);
          sub_1C4EF9AE8();
          sub_1C4414830();
          sub_1C4EFF888();
          sub_1C4E2DDB4();
          sub_1C443E0A4();
          *v165 = v104;
          v165[1] = v224;
          sub_1C4423984();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v201 = *(v24 + 16);
            v202 = sub_1C43FCEC0();
            sub_1C44C9240(v202, v203, v204, v24);
            v24 = v205;
          }

          sub_1C4E2C928();
          if (v70)
          {
            v206 = sub_1C43FFD98(v166);
            sub_1C44C9240(v206, v207, v208, v24);
            v24 = v209;
          }

          *(v24 + 16) = v164;
          sub_1C449DBCC();
          sub_1C4E2CF9C(v167);
          v168 = sub_1C4E2DDE4();
          sub_1C4A948D8(v168, v169);
        }
      }

LABEL_65:
      sub_1C4E2D354();
      sub_1C44109F8();
      return;
    }

    sub_1C4E2D7D8();
    v25 = sub_1C4428DA0();
    v22 = v104[34];
    sub_1C4E2D328();
    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {

        sub_1C4E2CD4C();
        v104 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
        goto LABEL_47;
      }

      if (v26)
      {
        sub_1C4E2DF5C();
        v23 = v130;
      }

      else
      {
        sub_1C4E2D79C();
        if (v70)
        {
          goto LABEL_74;
        }

        sub_1C4E2D53C();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v121 = sub_1C441F25C();
      sub_1C4DE44E8(v121, v122, v123, v124, v125, v126, v127, v128, v212, v213);
      if (v21)
      {
LABEL_60:

        goto LABEL_65;
      }

      v20 = v227;
      sub_1C49D3614(v129);
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v170 = sub_1C4413F5C(v69);
    sub_1C44C9240(v170, v171, v172, i);
    i = v173;
  }

  sub_1C4E2D8F4();

  sub_1C4E2D014();
  v26 = v21;
  if (v21)
  {
    goto LABEL_26;
  }

  sub_1C4E2DE40(v85);
  if (!v86)
  {

    goto LABEL_24;
  }

  v87 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v87);
  sub_1C4E2CBE8();
  v88 = sub_1C4E2D7CC(&a17);
  v89(v88);
  sub_1C4E2CB70();
  sub_1C4E2DF3C();
  v90 = sub_1C4EFEEF8();
  sub_1C4410BC4(v23);
  if (!v91)
  {

    v20 = (v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier);
    sub_1C4EFF048();
    sub_1C4416328();
    v92 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source);
    sub_1C4E2DE64(v92, &a16);
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DDB4();
    sub_1C4E2D2D4();
    sub_1C4E2DD34();
    v93();
    sub_1C4443500();
    v95 = *(v94 + 32);
    v97 = sub_1C4E2CED0(v96);
    v98(v97);
    sub_1C449F4C0();
    v23 = v224;
    *v99 = v226;
    v99[1] = v224;
    sub_1C4423984();
    sub_1C4E2E728();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = *(v90 + 16);
      v184 = sub_1C43FCEC0();
      sub_1C44C9240(v184, v185, v186, v90);
      v90 = v187;
    }

    sub_1C4414030();
    if (v70)
    {
      v188 = sub_1C43FFD98(v100);
      sub_1C44C9240(v188, v189, v190, v90);
      v90 = v191;
    }

    *(v90 + 16) = v20;
    sub_1C44056A4();
    v101 = sub_1C43FFF1C();
    sub_1C4A948D8(v101, v102);
    sub_1C4E2D580();
    goto LABEL_24;
  }

  __break(1u);
LABEL_79:
  __break(1u);
}

void sub_1C4E0DA30()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v8);
  v129 = sub_1C4F00DC8();
  v9 = sub_1C43FCDF8(v129);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44094C8(v12, v122);
  v14 = MEMORY[0x1EEE9AC00](v13);
  sub_1C44107F0(v14, v15, v16, v17, v18, v19, v20, v21, v123);
  v22 = sub_1C4F01188();
  v23 = sub_1C43FCDF8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440A3EC(v26, v124);
  v27 = sub_1C4EFD548();
  v28 = sub_1C44348EC(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4410058(v31, v125);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C442A5DC(v33, v34, v35, v36, v37, v38, v39, v40, v126);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C440D100();
  v42 = type metadata accessor for Source();
  v43 = sub_1C440F834(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C4406BA0();
  v46 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v46);
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FE938(v50, v127);
  v51 = sub_1C4EFF0C8();
  v52 = sub_1C4425688(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4415E5C(v55, v128);
  v56 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v56);
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityClass;
  v58 = sub_1C4EFD068();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate);
  v60 = sub_1C44019BC();
  v1(v60);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v61 = sub_1C4F00978();
  sub_1C442B738(v61, qword_1EDE2DE10);
  v62 = sub_1C440EBA4();
  v1(v62);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v63 = sub_1C4E2D364();
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v64 = sub_1C4488A10();
    sub_1C4E2CA84(v64);
    v65 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v65);
    sub_1C442DB9C();
    sub_1C4E276B4(v66, v67);
    sub_1C44804C0();
    v68 = sub_1C442638C();
    v69(v68);
    v70 = sub_1C4409A28();
    sub_1C441D828(v70, v71, v72);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v73, v74, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v75 = sub_1C4462134();
    v76(v75);
  }

  sub_1C4488B88();
  v77 = sub_1C4404084();
  MEMORY[0x1C6940010](v77);

  sub_1C4E2D2F0();
  sub_1C4E2CC80();
  v78 = sub_1C4416A00();
  v79(v78);
  sub_1C4E2D49C();
  if (!v81 & v80)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v82 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v83 = sub_1C4415B1C();
      sub_1C44255B4(v83);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v59;
      sub_1C447CEB4(&dword_1C43F8000, v84, v85, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v86 = sub_1C44E7750();
    }

    else
    {

      v86 = sub_1C44BBD58();
    }

    v59 = v130;
    v100 = v130(v86);
    v101 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v87, v88);
    sub_1C441DF80();
    v89 = sub_1C4409D98();
    sub_1C44344B8(v89, v90);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v91 = sub_1C442AABC();
    v92(v91);
    v93 = sub_1C43FE318();
    v94(v93);
    v95 = sub_1C4417C80();
    v96(v95);
    sub_1C4507BA8();
    v97 = sub_1C4422CA0();
    v98(v97);
    v99 = sub_1C4430818();
    v100 = v59(v99);
    v101 = 0;
  }

  sub_1C4424A80(v100, v101);
  sub_1C4482D7C();
  if (v81)
  {
    sub_1C446F170(v132, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v102 = sub_1C43FFB2C();
    v104 = sub_1C4428F60(v102, v103);
    sub_1C4E2DEC4(v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    v105 = sub_1C4495DFC();
    v59(v105);
    sub_1C448D818(v0 + v131);
    sub_1C4425820();
    v107 = *(v106 + 8);
    v109 = sub_1C443E068(v108);
    v107(v109);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_endLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate);

    sub_1C44417C4();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v120 = sub_1C4440B80();
    v57(v120);
    v121 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityIdentifier);
    v57(v121);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E0E1E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x65746144736168 && a2 == 0xE700000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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
        }
      }
    }
  }
}

unint64_t sub_1C4E0E630(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x7461636F4C646E65;
      break;
    case 10:
      result = 0x696669746E656469;
      break;
    case 11:
      result = 0x6E65747441736168;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x65746144736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E0E7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E0E1E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E0E80C(uint64_t a1)
{
  v2 = sub_1C4E29154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E0E848(uint64_t a1)
{
  v2 = sub_1C4E29154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E0E884()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_endLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate);

  return v0;
}

void sub_1C4E0EA50()
{
  sub_1C43FE96C();
  v3 = sub_1C4E2CC60();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441D0D8(v7, v39);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402CA8();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FE95C();
  v13 = sub_1C456902C(&qword_1EC0C8568, &qword_1C4F77530);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E29154();
  sub_1C4E2CDB4();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v17, v18);
  sub_1C4423E24();
  if (v1)
  {
    v19 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C4E2CA94();
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v21, v22);
    sub_1C446078C();
    sub_1C446F170(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v23, v24);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v25, v26);
    sub_1C43FCD50();
    sub_1C4F027E8();
    sub_1C447CF8C();
    v27 = sub_1C43FFA70();
    v28(v27);
    sub_1C443F48C();
    sub_1C4E2D1E4();
    sub_1C4F027E8();
    v29 = sub_1C4428A8C();
    v0(v29);
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_endLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    v19 = sub_1C4475668();
  }

  v20(v19);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E0EFE8()
{
  sub_1C43FE96C();
  sub_1C4E2C9D0();
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C4425688(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440DC5C(v7, v72);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C446BD9C(v9, v10, v11, v12, v13, v14, v15, v16, v73);
  v17 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v77 = sub_1C44A3D38(v21, v74);
  v22 = sub_1C43FCDF8(v77);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C441BFD4(v25, v75);
  v78 = sub_1C456902C(&qword_1EC0C8690, &qword_1C4F775E8);
  sub_1C43FCDF8(v78);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v76);
  v30 = sub_1C4473DCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_predicate);
  sub_1C4E2DF24(v30, v31, v32);
  sub_1C4E2DCCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityClass);
  sub_1C4EFD068();
  v33 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v34 = type metadata accessor for Source();
  sub_1C4E2DCF0(v34, qword_1EDDFED10);
  sub_1C4E2E3A8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name_predicate);
  sub_1C4E2DD64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2DD58(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
  sub_1C4E2CF28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation);
  sub_1C4E2CF18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_endLocation);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate) = 0;
  sub_1C4E2C7E8();
  sub_1C4E29154();
  v35 = sub_1C4E2CF78();
  if (v1)
  {
    sub_1C4E2DB4C(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
    v38 = sub_1C4EFD548();
    sub_1C43FD3F8(v38);
    v40 = *(v39 + 8);
    v41 = sub_1C4E2D5B0();
    v42(v41);
    sub_1C4E2DE7C();
    v43 = sub_1C4E2CD60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name_predicate);
    (v0)(v43);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_name);
    v44 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence_predicate);
    (v0)(v44);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
    v45 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_startingLocation];

    v46 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_endLocation];

    v47 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_identifier];

    v48 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasAttendee];

    v49 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasLocationRelationship];

    v50 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_hasDate];

    sub_1C44417C4();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    sub_1C4E2DE94();
  }

  else
  {
    sub_1C44049E4();
    sub_1C4420B30();
    sub_1C4E276B4(v36, v37);
    sub_1C440CF04();
    v54 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_entityIdentifier);
    v55(v54);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v56, v57);
    sub_1C442F568();
    sub_1C4E2D5BC();
    sub_1C4E2DA98();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v58 = sub_1C4449480();
    v2(v58);
    swift_endAccess();
    v59 = sub_1C44D4094();
    sub_1C4425188(v59, v60);
    sub_1C44514A8();
    sub_1C44AB1FC();
    v61 = sub_1C4E2CF08();
    v2(v61);
    swift_endAccess();
    v62 = sub_1C44D45AC();
    sub_1C4E2C87C(v62, v63);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v64, v65);
    sub_1C4435DCC();
    sub_1C441E968(v79);

    sub_1C4422610();
    sub_1C443F058(v79);

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C44CD958();
    sub_1C4E295F8();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C4480640();
    sub_1C448F0CC();
    sub_1C4412AAC();
    sub_1C4E276B4(v66, v67);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C445EBBC();

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E2CA08();
    sub_1C4E29544();
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C447F42C();

    sub_1C4E2C948();
    sub_1C4414134();
    sub_1C440B98C();
    sub_1C4E276B4(v68, v69);
    sub_1C443F8E4();
    v70 = sub_1C44625E0();
    v71(v70);
    sub_1C4436800();
  }

  sub_1C440962C(v0);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E0F6F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E0EFBC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E0F744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v116 = v14;
  v15 = v11;
  v17 = v16;
  v114 = type metadata accessor for EntityTriple(0);
  v18 = sub_1C43FCDF8(v114);
  v118 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C441D0D8(v22, v107);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v110 = v24;
  sub_1C43FBE44();
  v111 = sub_1C4EFD548();
  v25 = sub_1C43FCDF8(v111);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = sub_1C4EFF8A8();
  v34 = sub_1C44348EC(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C442599C();
  v37 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v37);
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBD64();
  v41 = sub_1C4EFEEF8();
  v42 = sub_1C43FCDF8(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  sub_1C444BFE4();
  v113 = *v17;
  v47 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_predicate;
  sub_1C44169A0();
  sub_1C47CBF50(v15 + v47, v13);
  sub_1C440175C(v13, 1, v41);
  if (v48)
  {
    sub_1C446F170(v13, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v49 = sub_1C43FFB2C();
    sub_1C4414040(v49, v50);
    goto LABEL_21;
  }

  v109 = v44;
  v117 = v10;
  (*(v44 + 32))(v10, v13, v41);
  v108 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_entityClass;
  (*(v27 + 16))(v32, v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_entityClass, v111);
  sub_1C4EFF838();
  v51 = *(v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity + 8);
  v112 = v15;
  if (v51)
  {
    v52 = *(v15 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity);
    v53 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    v54 = v114;
    if (v53)
    {
      v55 = sub_1C4EFF0C8();
      sub_1C43FCE50(v55);
      (*(v56 + 16))(v110, v116);
      v57 = *(v109 + 16);
      v57(v110 + v114[5], v117, v41);
      v58 = sub_1C448879C(v114[6]);
      v59(v58, v12, a10);
      v60 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity_predicate;
      sub_1C4460954();
      v57(v110 + v114[7], v112 + v60, v41);
      sub_1C449ED64(v112 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_source, v110 + v114[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v61 = (v110 + v114[8]);
      *v61 = v52;
      v61[1] = v51;
      sub_1C4E2E864((v110 + v114[10]));
      *(v110 + v114[11]) = v62;
      v63 = v113;
      *(v110 + v114[12]) = v113;
      v64 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v64, v65, v66, MEMORY[0x1E69E7CC0]);
      v68 = v67;
      v70 = *(v67 + 16);
      v69 = *(v67 + 24);
      v32 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_1C44C9240(v69 > 1, v70 + 1, 1, v67);
        v68 = v106;
      }

      v71 = v115;
      *(v68 + 16) = v32;
      v72 = *(v118 + 80);
      sub_1C43FC354();
      sub_1C4A948D8(v110, v68 + v73 + *(v118 + 72) * v70);
      v74 = v109;
      v75 = v117;
      sub_1C4E2E8B4();
      goto LABEL_14;
    }

    v68 = MEMORY[0x1E69E7CC0];
    v71 = v115;
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
    v54 = v114;
    v71 = v115;
  }

  v70 = v41;
  v74 = v109;
  v75 = v117;
  v63 = v113;
LABEL_14:
  if (*(v68 + 16))
  {
    v76 = sub_1C4EFF0C8();
    sub_1C43FCE50(v76);
    (*(v77 + 16))(v71, v116);
    v78 = sub_1C4486044(v54[5]);
    v79(v78, v75, v70);
    v80 = sub_1C4486044(v54[6]);
    v81(v80, v12, a10);
    sub_1C444AF00();
    sub_1C4EFEBB8();
    sub_1C4EFD2F8();
    sub_1C4416328();
    sub_1C4E2E1A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_source);
    sub_1C4EF9AE8();
    sub_1C4E2DD40();
    *v82 = v112 + v108;
    v82[1] = v32;
    sub_1C4E2E864((v71 + v54[10]));
    *(v71 + v54[11]) = v83;
    *(v71 + v54[12]) = v63;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v84 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v97 = *(v68 + 16);
      v98 = sub_1C43FCEC0();
      sub_1C44C9240(v98, v99, v100, v68);
      v68 = v101;
    }

    v86 = *(v68 + 16);
    v85 = *(v68 + 24);
    sub_1C4E2E824();
    if (v88)
    {
      v102 = sub_1C43FFD98(v87);
      sub_1C44C9240(v102, v103, v104, v68);
      v68 = v105;
    }

    v89 = sub_1C4E2E95C();
    v90(v89);
    (*(v74 + 8))(v117, v84);
    *(v68 + 16) = v112 + v108;
    v91 = *(v118 + 80);
    sub_1C43FC354();
    sub_1C4A948D8(v71, v68 + v92 + *(v118 + 72) * v86);
  }

  else
  {
    v93 = sub_1C4E2E95C();
    v94(v93);
    v95 = sub_1C4E2D45C();
    v96(v95, v70);
  }

LABEL_21:
  sub_1C440431C();
  sub_1C43FBC80();
}

unint64_t sub_1C4E0FD98(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x797469746E617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4E0FE48(uint64_t a1)
{
  v2 = sub_1C4E291A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E0FE84(uint64_t a1)
{
  v2 = sub_1C4E291A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E0FEC0()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_source);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity_predicate;
  v5 = sub_1C4EFEEF8();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity);
  return v0;
}

void sub_1C4E0FFC4()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4E1010C()
{
  sub_1C43FE96C();
  v5 = v0;
  v6 = sub_1C447E4C8();
  v7 = sub_1C4425688(v6);
  v41 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v40 = v11;
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4401780();
  v16 = sub_1C456902C(&qword_1EC0C8578, &qword_1C4F77538);
  sub_1C43FCDF8(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440A474();
  v23 = *(v0 + 24);
  v22 = *(v0 + 32);
  v24 = sub_1C442A90C();
  sub_1C4417F50(v24, v25);
  sub_1C4E291A8();
  v26 = v2;
  v27 = v0;
  sub_1C4F02BF8();
  v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_predicate;
  sub_1C4433D44();
  sub_1C47CBF50(v5 + v28, v3);
  sub_1C441ACD0();
  sub_1C4E276B4(v29, v30);
  sub_1C4F02778();
  sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (v1)
  {
    (*(v18 + 8))(v4, v16);
  }

  else
  {
    sub_1C44019B0(1);
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v31, v32);
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    sub_1C44343BC();
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v33, v34);
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    v35 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity_predicate;
    sub_1C4418194();
    (*(v41 + 16))(v40, v27 + v35, v26);
    sub_1C441599C(3);
    sub_1C4E2D28C();
    sub_1C4F027E8();
    (*(v41 + 8))(v40, v26);
    v36 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity);
    v37 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity + 8);
    sub_1C4E2E5E8(4);
    sub_1C4404084();
    sub_1C4E2D28C();
    sub_1C4F02738();
    v38 = sub_1C4E2CD24();
    v39(v38);
  }

  sub_1C440E3AC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E104CC()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD208();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v5 = type metadata accessor for Source();
  sub_1C4E2EB4C(v5, qword_1EDDFED10);
  sub_1C4EFEE08();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity);
  return v0;
}

void sub_1C4E105A4()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1C4EFEEF8();
  v7 = sub_1C43FCDF8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v40 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FE938(v15, v38);
  v16 = sub_1C456902C(&qword_1EC0C8688, &qword_1C4F775E0);
  sub_1C43FCDF8(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD64();
  v39 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_predicate;
  sub_1C43FCF64();
  sub_1C440BAA8(v20, v21, v22, v6);
  sub_1C4EFD208();
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v24 = type metadata accessor for Source();
  v25 = sub_1C442B738(v24, qword_1EDDFED10);
  sub_1C449ED64(v25, v3 + v23);
  sub_1C4EFEE08();
  v26 = (v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24QuantityRelationshipType_quantity);
  *v26 = 0;
  v26[1] = 0;
  v27 = v5;
  v29 = v5[3];
  v28 = v5[4];
  v42 = v27;
  sub_1C4417F50(v27, v29);
  sub_1C4E291A8();
  sub_1C4F02BC8();
  if (v1)
  {

    v32 = v42;
  }

  else
  {
    sub_1C441ACD0();
    sub_1C4E276B4(v30, v31);
    sub_1C44804EC();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C449A970(v41, v3 + v39);
    swift_endAccess();
    sub_1C4E2E528();
    sub_1C44804EC();
    sub_1C4F026C8();
    v32 = v42;
    sub_1C44D7E3C();
    v33 = sub_1C4E2DCE4();
    v34(v33, v40, v6);
    swift_endAccess();
    sub_1C4E2DD70(4);
    sub_1C4F02618();
    sub_1C4416328();
    v35 = sub_1C4485C30();
    v36(v35);
    v37 = v26[1];
    *v26 = v2;
    v26[1] = v6;
  }

  sub_1C440962C(v32);
  sub_1C43FBC80();
}

uint64_t sub_1C4E10968@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E10578(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E109B8()
{
  sub_1C43FE628();
  sub_1C4E2D5BC();
  v6 = v5;
  v86 = v7;
  v87 = v8;
  v9 = type metadata accessor for EntityTriple(0);
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4E2D104();
  v16 = *v6;
  v17 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v18 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name + 8);
  v19 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  v85 = v16;
  if (v18)
  {
    v20 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
    v21 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v21 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v81 = v2;
      v82 = v12;
      v22 = v16;
      v23 = sub_1C4EFF0C8();
      sub_1C43FCE50(v23);
      v25 = *(v24 + 16);
      v26 = sub_1C4E2E084();
      v27(v26);
      v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name_predicate;
      sub_1C440D164();
      v29 = v9[5];
      v30 = sub_1C4EFEEF8();
      sub_1C43FCE50(v30);
      (*(v31 + 16))(v0 + v29, v3 + v28);
      v32 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_source);
      sub_1C449ED64(v32, v0 + v33);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4416C58();
      sub_1C4EFF888();
      sub_1C4E2E5D0();
      v34 = (v0 + v9[8]);
      *v34 = v20;
      v34[1] = v18;
      v35 = (v0 + v9[10]);
      *v35 = v86;
      v35[1] = v87;
      *(v0 + v9[11]) = v4;
      *(v0 + v9[12]) = v22;
      v36 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v36, v37, v38, MEMORY[0x1E69E7CC0]);
      v17 = v39;
      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      if (v41 >= v40 >> 1)
      {
        v68 = sub_1C4405AF4(v40);
        sub_1C44C9240(v68, v69, v70, v17);
        v17 = v71;
      }

      v12 = v82;
      *(v17 + 16) = v41 + 1;
      v42 = *(v82 + 80);
      sub_1C43FF9D4();
      sub_1C4A948D8(v0, v43 + *(v82 + 72) * v41);
      v89 = v17;
      v2 = v81;
      v16 = v85;
      v19 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }
  }

  v44 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed);
  v45 = v87;
  if (v44)
  {
    v46 = v19[44];
    v88 = v16;

    sub_1C4E0F744(v86, v87, v3 + v46, &v88, v47, v48, v49, v50, v81, v1);
    if (v2)
    {

      goto LABEL_19;
    }

    sub_1C49D3614(v51);

    v17 = v89;
    v45 = v87;
    v1 = v83;
    v19 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  }

  if (*(v17 + 16))
  {
    v84 = v12;
    v52 = v19[44];
    v53 = sub_1C4EFF0C8();
    sub_1C43FCE50(v53);
    v55 = *(v54 + 16);
    v56 = sub_1C4E2E4EC();
    v57(v56);
    sub_1C4E2E798();
    v58 = v45;
    v59 = v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityClass;
    sub_1C4EFD2F8();
    sub_1C43FC1CC();
    v60 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_source);
    sub_1C449ED64(v60, v1 + v61);
    sub_1C4EF9AE8();
    sub_1C4416C58();
    sub_1C4EFF888();
    sub_1C4E2E7B0();
    sub_1C4E2E988((v1 + v9[8]));
    v63 = (v1 + v62);
    *v63 = v86;
    v63[1] = v58;
    *(v1 + v9[11]) = v4;
    *(v1 + v9[12]) = v85;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = *(v17 + 16);
      v73 = sub_1C43FCEC0();
      sub_1C44C9240(v73, v74, v75, v17);
      v17 = v76;
    }

    sub_1C4414030();
    if (v65)
    {
      v77 = sub_1C43FFD98(v64);
      sub_1C44C9240(v77, v78, v79, v17);
      v17 = v80;
    }

    *(v17 + 16) = v59;
    v66 = *(v84 + 80);
    sub_1C43FF9D4();
    sub_1C4A948D8(v1, v67 + *(v84 + 72) * v44);
  }

LABEL_19:
  sub_1C44109F8();
}

void sub_1C4E10D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  sub_1C44D4078(v26);
  v27 = sub_1C4F00DD8();
  v28 = sub_1C43FFAE0(v27, &a16);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v31);
  v32 = sub_1C4F00DC8();
  v33 = sub_1C43FFAE0(v32, &a18);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4410058(v36, v131);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  sub_1C4460940(v38);
  v39 = sub_1C4F01188();
  v40 = sub_1C43FCDF8(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v43 = sub_1C4EFD548();
  v44 = sub_1C44348EC(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C4441388(v47, v132);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C4E2D074();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C440D100();
  v50 = type metadata accessor for Source();
  v51 = sub_1C440F834(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C4406BA0();
  v54 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v54);
  v56 = *(v55 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FE938(v58, v133);
  v59 = sub_1C4EFF0C8();
  v60 = sub_1C4425688(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FD2D8();
  sub_1C4E2E038(v63);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v67);
  v68 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityClass;
  v69 = sub_1C4EFD498();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v69 = swift_once();
  }

  sub_1C4E2E994(v69, qword_1EDDFED10);
  sub_1C4EFEBF8();
  v70 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
  *v70 = 0;
  v70[1] = 0;
  sub_1C4E2EA6C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed);
  v71 = sub_1C4E2E480();
  (v21)(v71);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v72 = sub_1C4F00978();
  v73 = sub_1C442B738(v72, qword_1EDE2DE10);
  sub_1C447D06C();
  sub_1C4E2D69C();
  *(v74 - 256) = v21;
  v21();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v75 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4E2E7E0();
  os_log_type_enabled(v75, v73);
  sub_1C4E2E970();
  if (v76)
  {
    sub_1C4495448();
    v77 = sub_1C4488A10();
    sub_1C4E2DB74(v77);
    sub_1C4E2D4A8(4.8453e-34);
    v79 = sub_1C441D828(v139, v138, v78);
    sub_1C4485F78(v79);
    sub_1C442DB9C();
    sub_1C4E276B4(v80, v81);
    sub_1C4E2DA78();
    sub_1C4434430();
    v82 = sub_1C4E2E8CC();
    v134 = v83;
    v83(v82);
    v84 = sub_1C4409A28();
    sub_1C441D828(v84, v85, v86);
    sub_1C43FEF2C();

    sub_1C4414088();
    sub_1C4E2D264(&dword_1C43F8000, v87, v73, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4E2E0D8();
    sub_1C4E2D9E4();
    sub_1C4E2D23C();
  }

  else
  {

    v88 = sub_1C4E2D3F8();
    v134 = v89;
    v89(v88);
  }

  v90 = *v22;
  v91 = v22[1];
  sub_1C4E2E01C();
  v92 = sub_1C4404084();
  MEMORY[0x1C6940010](v92);

  sub_1C4F01178();
  sub_1C442F9C8();
  sub_1C4F01148();
  v93 = sub_1C4E2D0A4();
  v94(v93);
  sub_1C4E2D49C();
  if (!v96 & v95)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2D490();
    v97 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v98 = sub_1C4415B1C();
      sub_1C44255B4(v98);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v25 + 4) = v141;
      sub_1C447CEB4(&dword_1C43F8000, v99, v100, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v101 = sub_1C44E7750();
    }

    else
    {

      v101 = sub_1C44BBD58();
    }

    v116 = v134;
    v117 = (v134)(v101);
    v118 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v102, v103);
    sub_1C4E2C974();
    v104 = sub_1C4409D98();
    sub_1C44344B8(v104, v105);
    sub_1C4E2CBF8();
    v106 = sub_1C4409D98();
    sub_1C441DFEC(v106, v107);
    sub_1C445BBB0(&a14);
    v108 = sub_1C445BE84(&a15);
    v109(v108);
    sub_1C4E2E3F0();
    sub_1C442913C();
    sub_1C4E2CEF4();
    v110();
    v111 = sub_1C4E2C834();
    v112(v111);
    sub_1C4E2DA1C();
    v113 = sub_1C447CD1C(v68);
    v114(v113);
    v115 = sub_1C43FE7D0();
    v116 = v134;
    v117 = (v134)(v115);
    v118 = 0;
  }

  sub_1C445886C(v117, v118);
  sub_1C4482D7C();
  if (v96)
  {
    sub_1C446F170(v140, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v119 = sub_1C43FFB2C();
    v121 = sub_1C4428F60(v119, v120);
    sub_1C4E2EBA4(v121, &qword_1EC0B9A08, &unk_1C4F107B0);
    v122 = sub_1C4495DFC();
    v116(v122);
    sub_1C448D818(v135 + v136);
    sub_1C441B884();
    (*(v123 + 8))(v135 + v124);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
    v125 = *(v135 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed);

    sub_1C44417C4();
    v127 = *(v126 + 48);
    v128 = *(v126 + 52);
    sub_1C4E2E010();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v129 = sub_1C4440EB0();
    v137(v129);
    v130 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityIdentifier);
    v137(v130);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E1154C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x736E6F436C657566 && a2 == 0xEC00000064656D75)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4E11798(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x736E6F436C657566;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E11884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E1154C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E118AC(uint64_t a1)
{
  v2 = sub_1C4E291FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E118E8(uint64_t a1)
{
  v2 = sub_1C4E291FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E11924()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_source);
  v7 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name_predicate;
  v8 = sub_1C4EFEEF8();
  sub_1C43FD3F8(v8);
  (*(v9 + 8))(v0 + v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
  v10 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed);

  return v0;
}

void sub_1C4E11A6C()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C4D889F8();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Source();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1C4EFEEF8();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4E11BFC()
{
  sub_1C43FE96C();
  v4 = v0;
  v5 = sub_1C447E4C8();
  v6 = sub_1C43FCDF8(v5);
  v44 = v7;
  v45 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4440AD4();
  v14 = sub_1C456902C(&qword_1EC0C8588, &qword_1C4F77540);
  sub_1C43FCDF8(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4402A68();
  v21 = *(v0 + 24);
  v20 = *(v0 + 32);
  sub_1C4E2C908();
  sub_1C4E291FC();
  sub_1C4E2D814();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v22, v23);
  sub_1C4E2E100();
  sub_1C4F027E8();
  if (v1)
  {
    v24 = *(v16 + 8);
    v25 = sub_1C440D510();
    v26(v25);
  }

  else
  {
    v27 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate;
    sub_1C4433D44();
    sub_1C47CBF50(v4 + v27, v3);
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v28, v29);
    sub_1C4475550();
    sub_1C4402150();
    sub_1C4F02778();
    sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v30, v31);
    sub_1C4E2E100();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v32, v33);
    sub_1C4E2E100();
    sub_1C4E2D6CC();
    sub_1C4402150();
    sub_1C4F027E8();
    v34 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name_predicate;
    sub_1C4418194();
    (*(v44 + 16))(v2, v4 + v34, v45);
    sub_1C43FE79C(4);
    sub_1C4475550();
    sub_1C4402150();
    sub_1C4F027E8();
    (*(v44 + 8))(v2, v45);
    v37 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
    v38 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4402150();
    sub_1C4F02738();
    if (v37)
    {
      v39 = sub_1C4401D04();
      v40(v39, v14);
    }

    else
    {

      v41 = sub_1C4E2DB84(*(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed));
      type metadata accessor for LifeEventStructs.QuantityRelationshipType(v41);
      sub_1C4455534();
      sub_1C4E276B4(v42, v43);
      sub_1C4414374();
      sub_1C43FCB2C();
      sub_1C4F02778();
      v35 = sub_1C4401D04();
      v36(v35, v14);
    }
  }

  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4E120D4()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C4425688(v4);
  v57 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C441BFD4(v9, v51);
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  sub_1C43FBE44();
  v54 = sub_1C4EFF0C8();
  v14 = sub_1C43FCDF8(v54);
  v53 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v18 = sub_1C456902C(&qword_1EC0C8680, &qword_1C4F775D8);
  v55 = sub_1C43FCDF8(v18);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD64();
  v58 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate;
  v22 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate);
  v59 = v3;
  sub_1C440BAA8(v22, v23, v24, v3);
  v56 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityClass;
  sub_1C4EFD498();
  v25 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v26 = type metadata accessor for Source();
  v27 = sub_1C442B738(v26, qword_1EDDFED10);
  sub_1C449ED64(v27, v0 + v25);
  sub_1C4EFEBF8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed) = 0;
  v29 = v1[3];
  v28 = v1[4];
  sub_1C4E2C908();
  sub_1C4E291FC();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C446F170(v0 + v58, &qword_1EC0B9A08, &unk_1C4F107B0);
    v32 = sub_1C4EFD548();
    sub_1C43FD3F8(v32);
    (*(v33 + 8))(v0 + v56);
    sub_1C448D818(v0 + v25);
    (*(v57 + 8))(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name_predicate, v59);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_name);
    v34 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_fuelConsumed);

    sub_1C44417C4();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v60) = 0;
    sub_1C4420B30();
    sub_1C4E276B4(v30, v31);
    sub_1C4E2DBEC();
    sub_1C440BCD8();
    sub_1C4F026C8();
    v38 = *(v53 + 32);
    v39 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_entityIdentifier);
    v40(v39);
    sub_1C4480434();
    sub_1C441ACD0();
    sub_1C4E276B4(v41, v42);
    sub_1C4E2DCA4();
    sub_1C440BCD8();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C4E2D6BC();
    sub_1C4E2DCA4();
    sub_1C440BCD8();
    sub_1C4F026C8();
    sub_1C44D7E3C();
    v43 = sub_1C4E2DCE4();
    v44(v43, v52, v59);
    swift_endAccess();
    sub_1C4E2DD70(5);
    sub_1C440BCD8();
    v45 = sub_1C4F02618();
    sub_1C4425188(v45, v46);
    type metadata accessor for LifeEventStructs.QuantityRelationshipType(0);
    sub_1C4E2DC4C();
    sub_1C4455534();
    sub_1C4E276B4(v47, v48);
    sub_1C445FC54();
    sub_1C4E2D0C8();
    sub_1C440BCD8();
    sub_1C4F02658();
    v49 = sub_1C4485C30();
    v50(v49, v55);
    sub_1C4488620(v60);
  }

  sub_1C440962C(v1);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4E1267C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E120A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E126CC()
{
  sub_1C43FE628();
  v5 = sub_1C4E2D1BC(v4);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4E2D05C();
  sub_1C4E2E444(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name);
  v13 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  if (v3 && (sub_1C4E2CEB8(v12), v14))
  {
    v15 = v13[47];
    v16 = sub_1C4EFF0C8();
    sub_1C43FCE50(v16);
    v18 = *(v17 + 16);
    v19 = sub_1C4E2E084();
    v20(v19);
    v8 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name_predicate;
    sub_1C4433D44();
    v21 = sub_1C4E2EC34();
    sub_1C43FCE50(v21);
    v23 = *(v22 + 16);
    v24 = sub_1C4E2EA08();
    v25(v24);
    v26 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_source);
    sub_1C449ED64(v26, v1 + v27);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4416C58();
    sub_1C4EFF888();
    sub_1C4E2E5D0();
    v28 = sub_1C4E2C8C4();
    sub_1C4401EC4(v28, v29, v30, MEMORY[0x1E69E7CC0]);
    sub_1C4E2D3B0(v31);
    if (v33)
    {
      v57 = sub_1C43FF640(v32);
      sub_1C44C9240(v57, v58, v59, v3);
      v3 = v60;
    }

    *(v3 + 16) = v0;
    sub_1C4409498();
    sub_1C4E2E044(v34);
    v13 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (*(v3 + 16))
  {
    v35 = v13[47];
    v36 = sub_1C4EFF0C8();
    sub_1C43FCE50(v36);
    v38 = *(v37 + 16);
    v39 = sub_1C4E2E4EC();
    v40(v39);
    sub_1C4E2E798();
    sub_1C4EFD2F8();
    sub_1C440D158();
    v41 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_source);
    sub_1C449ED64(v41, v2 + v42);
    sub_1C4EF9AE8();
    sub_1C4416C58();
    sub_1C4EFF888();
    sub_1C4E2E7B0();
    sub_1C44B9260();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = *(v3 + 16);
      v49 = sub_1C43FCEC0();
      sub_1C44C9240(v49, v50, v51, v3);
      v3 = v52;
    }

    v44 = *(v3 + 16);
    v43 = *(v3 + 24);
    sub_1C4424824();
    if (v33)
    {
      v53 = sub_1C43FF640(v45);
      sub_1C44C9240(v53, v54, v55, v3);
      v3 = v56;
    }

    *(v3 + 16) = v35;
    v46 = v8[80];
    sub_1C43FF9D4();
    sub_1C4E2E17C(v47);
  }

  sub_1C4403810();
  sub_1C44109F8();
}

uint64_t sub_1C4E1294C(uint64_t a1)
{
  v2 = sub_1C4E29250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E12988(uint64_t a1)
{
  v2 = sub_1C4E29250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E129C4()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_source);
  v7 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name_predicate;
  v8 = sub_1C4EFEEF8();
  sub_1C43FD3F8(v8);
  (*(v9 + 8))(&v7[v0]);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name);
  return v0;
}

void sub_1C4E12AFC()
{
  sub_1C43FE96C();
  v4 = sub_1C4E2D990();
  v37 = sub_1C43FCDF8(v4);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C442599C();
  v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4440AD4();
  v11 = sub_1C456902C(&qword_1EC0C8598, &qword_1C4F77548);
  sub_1C43FCDF8(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A474();
  v18 = *(v0 + 24);
  v17 = *(v0 + 32);
  sub_1C4E2C908();
  sub_1C4E29250();
  sub_1C4475B58();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v19, v20);
  sub_1C4E2CE14();
  if (v1)
  {
    v21 = *(v13 + 8);
    v22 = sub_1C43FFE24();
    v23(v22);
  }

  else
  {
    sub_1C4E2E9F0();
    sub_1C4433D44();
    sub_1C4E2E600();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v24, v25);
    sub_1C4E2CEE0();
    sub_1C44887A8();
    sub_1C4F02778();
    sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v26, v27);
    sub_1C4416C08();
    sub_1C4E2D6AC();
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v28, v29);
    sub_1C4416C08();
    sub_1C4E2DA04();
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    sub_1C4418194();
    v30 = sub_1C4E2CD08();
    v31(v30);
    sub_1C441599C(4);
    sub_1C44887A8();
    sub_1C4F027E8();
    sub_1C4E2E80C();
    v32 = sub_1C4E2CF68();
    v33(v32);
    sub_1C4E2D58C((v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name));
    sub_1C4E2E5E8(v34);
    sub_1C44D71EC();
    sub_1C4E2D28C();
    sub_1C4F02738();
    v35 = sub_1C4E2CF58();
    v36(v35);
  }

  sub_1C440E3AC();
  sub_1C43FBC80();
}

void sub_1C4E12EC0()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C4425688(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A3EC(v7, v47);
  v8 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  sub_1C43FBE44();
  v48 = sub_1C4EFF0C8();
  v12 = sub_1C43FCDF8(v48);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  sub_1C4E2E438(v15);
  v16 = sub_1C456902C(&qword_1EC0C8678, &qword_1C4F775D0);
  sub_1C43FCDF8(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4401780();
  v20 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_predicate);
  sub_1C4E2EC1C(v20, v21, v22);
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_entityClass;
  sub_1C4EFCFC8();
  v24 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v25 = type metadata accessor for Source();
  v26 = sub_1C442B738(v25, qword_1EDDFED10);
  sub_1C449ED64(v26, v0 + v24);
  sub_1C4EFEBF8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name);
  v27 = v1[3];
  v28 = v1[4];
  sub_1C445631C();
  sub_1C4E29250();
  sub_1C4475644();
  sub_1C44804EC();
  v29 = sub_1C4F02BC8();
  if (v2)
  {
    sub_1C4E2E7C8(v29, &qword_1EC0B9A08, &unk_1C4F107B0);
    v32 = sub_1C4EFD548();
    sub_1C43FD3F8(v32);
    (*(v33 + 8))(v0 + v23);
    sub_1C448D818(v0 + v24);
    v34 = sub_1C4E2D40C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name_predicate);
    v35(v34);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_name);
    sub_1C44417C4();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    sub_1C4E2EBBC();
  }

  else
  {
    sub_1C4E2DC3C();
    sub_1C4420B30();
    sub_1C4E276B4(v30, v31);
    sub_1C4E2CB04();
    v39 = sub_1C44D7338(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_entityIdentifier);
    v40(v39);
    sub_1C4480434();
    sub_1C441ACD0();
    sub_1C4E276B4(v41, v42);
    sub_1C44628E4();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C4E2EBD4();
    swift_endAccess();
    sub_1C4E2D6BC();
    sub_1C4E2E414();
    sub_1C44628E4();
    sub_1C4F026C8();
    sub_1C44D7E3C();
    v43 = sub_1C4E2CFAC();
    v44(v43);
    swift_endAccess();
    sub_1C4E2D194();
    sub_1C43FC1CC();
    v45 = sub_1C445BC84();
    v46(v45);
    sub_1C4E2DF8C();
  }

  sub_1C440962C(v1);
  sub_1C4E2D0D4();
  sub_1C43FBC80();
}

uint64_t sub_1C4E13330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E12E94(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E13380()
{
  sub_1C43FE628();
  v5 = sub_1C4E2D1BC(v4);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4E2D05C();
  sub_1C4E2E444(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name);
  v13 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  if (v3 && (sub_1C4E2CEB8(v12), v14))
  {
    v15 = v13[49];
    v16 = sub_1C4EFF0C8();
    sub_1C43FCE50(v16);
    v18 = *(v17 + 16);
    v19 = sub_1C4E2E084();
    v20(v19);
    v8 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name_predicate;
    sub_1C4433D44();
    v21 = sub_1C4E2EC34();
    sub_1C43FCE50(v21);
    v23 = *(v22 + 16);
    v24 = sub_1C4E2EA08();
    v25(v24);
    v26 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_source);
    sub_1C449ED64(v26, v1 + v27);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4416C58();
    sub_1C4EFF888();
    sub_1C4E2E5D0();
    v28 = sub_1C4E2C8C4();
    sub_1C4401EC4(v28, v29, v30, MEMORY[0x1E69E7CC0]);
    sub_1C4E2D3B0(v31);
    if (v33)
    {
      v57 = sub_1C43FF640(v32);
      sub_1C44C9240(v57, v58, v59, v3);
      v3 = v60;
    }

    *(v3 + 16) = v0;
    sub_1C4409498();
    sub_1C4E2E044(v34);
    v13 = &OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (*(v3 + 16))
  {
    v35 = v13[49];
    v36 = sub_1C4EFF0C8();
    sub_1C43FCE50(v36);
    v38 = *(v37 + 16);
    v39 = sub_1C4E2E4EC();
    v40(v39);
    sub_1C4E2E798();
    sub_1C4EFD2F8();
    sub_1C440D158();
    v41 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_source);
    sub_1C449ED64(v41, v2 + v42);
    sub_1C4EF9AE8();
    sub_1C4416C58();
    sub_1C4EFF888();
    sub_1C4E2E7B0();
    sub_1C44B9260();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = *(v3 + 16);
      v49 = sub_1C43FCEC0();
      sub_1C44C9240(v49, v50, v51, v3);
      v3 = v52;
    }

    v44 = *(v3 + 16);
    v43 = *(v3 + 24);
    sub_1C4424824();
    if (v33)
    {
      v53 = sub_1C43FF640(v45);
      sub_1C44C9240(v53, v54, v55, v3);
      v3 = v56;
    }

    *(v3 + 16) = v35;
    v46 = v8[80];
    sub_1C43FF9D4();
    sub_1C4E2E17C(v47);
  }

  sub_1C4403810();
  sub_1C44109F8();
}

uint64_t sub_1C4E13600(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C43FEC00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1C4E2D0E4();
    v7 = v3 && a2 == v6;
    if (v7 || (sub_1C43FEC00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == sub_1C44553A4() && a2 == v8;
      if (v9 || (sub_1C43FEC00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        sub_1C4414234();
        v10 = v3 && a2 == 0xE600000000000000;
        if (v10 || (sub_1C43FEC00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = a1 == sub_1C4E2CB90() && a2 == v11;
          if (v12 || (sub_1C43FEC00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            sub_1C4E2E2C0();
            if (v3 && a2 == 0xE400000000000000)
            {

              return 5;
            }

            else
            {
              v14 = sub_1C43FEC00();

              if (v14)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4E13758(uint64_t a1)
{
  v2 = sub_1C4E292A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E13794(uint64_t a1)
{
  v2 = sub_1C4E292A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E137D0()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_source);
  v7 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name_predicate;
  v8 = sub_1C4EFEEF8();
  sub_1C43FD3F8(v8);
  (*(v9 + 8))(&v7[v0]);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name);
  return v0;
}

void sub_1C4E13908()
{
  sub_1C44569B4();
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v11 = *(v0 - 8) + 64;
    sub_1C4D889F8();
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8);
      sub_1C4E2E9C0();
      v5 = sub_1C4EFD548();
      if (v6 <= 0x3F)
      {
        v12 = *(v5 - 8) + 64;
        v7 = type metadata accessor for Source();
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          v9 = sub_1C4EFEEF8();
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            sub_1C4E2DC2C();
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4E13A7C()
{
  sub_1C43FE96C();
  v4 = sub_1C4E2D990();
  v37 = sub_1C43FCDF8(v4);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C442599C();
  v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4440AD4();
  v11 = sub_1C456902C(&qword_1EC0C85A8, &qword_1C4F77550);
  sub_1C43FCDF8(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A474();
  v18 = *(v0 + 24);
  v17 = *(v0 + 32);
  sub_1C4E2C908();
  sub_1C4E292A4();
  sub_1C4475B58();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v19, v20);
  sub_1C4E2CE14();
  if (v1)
  {
    v21 = *(v13 + 8);
    v22 = sub_1C43FFE24();
    v23(v22);
  }

  else
  {
    sub_1C4E2E9F0();
    sub_1C4433D44();
    sub_1C4E2E600();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v24, v25);
    sub_1C4E2CEE0();
    sub_1C44887A8();
    sub_1C4F02778();
    sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v26, v27);
    sub_1C4416C08();
    sub_1C4E2D6AC();
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v28, v29);
    sub_1C4416C08();
    sub_1C4E2DA04();
    sub_1C4E2CBD8();
    sub_1C4F027E8();
    sub_1C4418194();
    v30 = sub_1C4E2CD08();
    v31(v30);
    sub_1C441599C(4);
    sub_1C44887A8();
    sub_1C4F027E8();
    sub_1C4E2E80C();
    v32 = sub_1C4E2CF68();
    v33(v32);
    sub_1C4E2D58C((v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name));
    sub_1C4E2E5E8(v34);
    sub_1C44D71EC();
    sub_1C4E2D28C();
    sub_1C4F02738();
    v35 = sub_1C4E2CF58();
    v36(v35);
  }

  sub_1C440E3AC();
  sub_1C43FBC80();
}

void sub_1C4E13E40()
{
  sub_1C43FE96C();
  sub_1C445CD30();
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C4425688(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A3EC(v7, v47);
  v8 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  sub_1C43FBE44();
  v48 = sub_1C4EFF0C8();
  v12 = sub_1C43FCDF8(v48);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  sub_1C4E2E438(v15);
  v16 = sub_1C456902C(&qword_1EC0C8670, &qword_1C4F775C8);
  sub_1C43FCDF8(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4401780();
  v20 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_predicate);
  sub_1C4E2EC1C(v20, v21, v22);
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_entityClass;
  sub_1C4EFD3C8();
  v24 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v25 = type metadata accessor for Source();
  v26 = sub_1C442B738(v25, qword_1EDDFED10);
  sub_1C449ED64(v26, v0 + v24);
  sub_1C4EFEBF8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name);
  v27 = v1[3];
  v28 = v1[4];
  sub_1C445631C();
  sub_1C4E292A4();
  sub_1C4475644();
  sub_1C44804EC();
  v29 = sub_1C4F02BC8();
  if (v2)
  {
    sub_1C4E2E7C8(v29, &qword_1EC0B9A08, &unk_1C4F107B0);
    v32 = sub_1C4EFD548();
    sub_1C43FD3F8(v32);
    (*(v33 + 8))(v0 + v23);
    sub_1C448D818(v0 + v24);
    v34 = sub_1C4E2D40C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name_predicate);
    v35(v34);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_name);
    sub_1C44417C4();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    sub_1C4E2EBBC();
  }

  else
  {
    sub_1C4E2DC3C();
    sub_1C4420B30();
    sub_1C4E276B4(v30, v31);
    sub_1C4E2CB04();
    v39 = sub_1C44D7338(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_entityIdentifier);
    v40(v39);
    sub_1C4480434();
    sub_1C441ACD0();
    sub_1C4E276B4(v41, v42);
    sub_1C44628E4();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C4E2EBD4();
    swift_endAccess();
    sub_1C4E2D6BC();
    sub_1C4E2E414();
    sub_1C44628E4();
    sub_1C4F026C8();
    sub_1C44D7E3C();
    v43 = sub_1C4E2CFAC();
    v44(v43);
    swift_endAccess();
    sub_1C4E2D194();
    sub_1C43FC1CC();
    v45 = sub_1C445BC84();
    v46(v45);
    sub_1C4E2DF8C();
  }

  sub_1C440962C(v1);
  sub_1C4E2D0D4();
  sub_1C43FBC80();
}

uint64_t sub_1C4E142B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E13E14(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E14300()
{
  sub_1C43FE628();
  v6 = v2;
  v7 = v1;
  v9 = v8;
  v206 = v11;
  v207 = v10;
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440DC5C(v16, v191);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v198 = v18;
  sub_1C43FBE44();
  v19 = sub_1C4EFF0C8();
  v20 = sub_1C43FCDF8(v19);
  v204 = v21;
  v205 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v202 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1C4E2EA20();
  v27 = type metadata accessor for EntityTriple(v26);
  v28 = sub_1C4412DFC(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  v199 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4E2D104();
  v35 = *v9;
  v208 = MEMORY[0x1E69E7CC0];
  v36 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name + 8);
  v203 = v1;
  if (v36)
  {
    v200 = v0;
    v37 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name);
    sub_1C4E2D5D4();
    if (v39)
    {
      v196 = v2;
      v40 = v38;
      (*(v204 + 16))(v1, v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier, v205);
      v41 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name_predicate;
      sub_1C4E2D474();
      v6 = v4[5];
      v42 = sub_1C4EFEEF8();
      sub_1C43FCE50(v42);
      (*(v43 + 16))(v6 + v1, v1 + v41);
      v44 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source);
      sub_1C449ED64(v44, v1 + v45);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4429130();
      sub_1C4EFF888();
      v46 = v1 + v4[7];
      sub_1C4EFEC38();
      v47 = (v1 + v4[8]);
      *v47 = v37;
      v47[1] = v36;
      sub_1C4E2D5C8(v206, (v1 + v4[10]));
      *(v1 + v48) = v5;
      *(v1 + v4[12]) = v40;
      v49 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v49, v50, v51, MEMORY[0x1E69E7CC0]);
      v53 = v52;
      v55 = *(v52 + 16);
      v54 = *(v52 + 24);
      if (v55 >= v54 >> 1)
      {
        v160 = sub_1C43FF640(v54);
        sub_1C44C9240(v160, v161, v162, v53);
        v53 = v163;
      }

      *(v53 + 16) = v55 + 1;
      sub_1C43FBF6C();
      sub_1C44F0CA0();
      sub_1C4A948D8(v1, v56 + v57 * v55);
      v208 = v53;
      sub_1C4495248();
      v7 = v1;
    }

    v0 = v200;
  }

  v58 = *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile);
  if (v58)
  {
    v193 = v3;

    sub_1C4E126CC();
    if (v6)
    {
      goto LABEL_21;
    }

    sub_1C4E2E948(v59);
    v194 = v4;
    if (v62)
    {
      v63 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C49D3614(v63);
      v7 = v1;
      (*(v204 + 16))(v0, v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier, v205);
      v64 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15AutomobileModel_predicate;
      sub_1C4E2D16C();
      sub_1C47CBF50(v58 + v64, v198);
      v65 = sub_1C4EFEEF8();
      sub_1C43FC0FC(v198);
      if (v66)
      {
        __break(1u);
        goto LABEL_53;
      }

      sub_1C4EFF048();
      sub_1C440D158();
      v67 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source);
      sub_1C449ED64(v67, v3 + v68);
      sub_1C4EF9AE8();
      sub_1C4429130();
      sub_1C4EFF888();
      sub_1C4E2E9FC();
      sub_1C4EFEC38();
      (*(v204 + 32))(v3, v0, v205);
      v69 = v4[5];
      sub_1C441B884();
      (*(v70 + 32))(v3 + v71, v198, v65);
      sub_1C4E2D714();
      v61 = v206;
      *v72 = v207;
      v72[1] = v206;
      sub_1C4E2E160();
      v73 = v208;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v164 = *(v208 + 16);
        v165 = sub_1C43FCEC0();
        sub_1C44C9240(v165, v166, v167, v208);
        v73 = v168;
      }

      v75 = *(v73 + 16);
      v74 = *(v73 + 24);
      sub_1C4424824();
      if (v77)
      {
        v169 = sub_1C43FF640(v76);
        sub_1C44C9240(v169, v170, v171, v73);
        v73 = v172;
      }

      v60 = 0;

      *(v73 + 16) = v0;
      sub_1C43FBF6C();
      sub_1C44F0CA0();
      sub_1C4A948D8(v3, v78 + v79 * v75);
      v208 = v73;
      sub_1C4E2E89C();
    }

    else
    {
      v60 = 0;

      v61 = v206;
      sub_1C4E2E89C();
      v7 = v1;
    }
  }

  else
  {
    v194 = v4;
    v60 = v6;
    v61 = v206;
  }

  v80 = *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile);
  v81 = v207;
  if (!v80)
  {
LABEL_30:
    v86 = v60;
    sub_1C44225D8();
    goto LABEL_31;
  }

  sub_1C441E0A4();
  sub_1C4E13380();
  if (v60)
  {
LABEL_21:

LABEL_43:
    sub_1C44109F8();
    return;
  }

  sub_1C4E2E948(v82);
  if (!v83)
  {

    sub_1C4E2E89C();
    v7 = v203;
    v61 = v206;
    v81 = v207;
    goto LABEL_30;
  }

  v84 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v84);
  v7 = v203;
  (*(v204 + 16))(v202, v203 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier, v205);
  v85 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs4Make_predicate;
  sub_1C4418194();
  sub_1C47CBF50(v80 + v85, v197);
  sub_1C4EFEEF8();
  sub_1C43FC0FC(v197);
  v61 = v206;
  if (!v66)
  {
    v86 = 0;

    v201 = sub_1C4EFF048();
    v88 = v87;
    v60 = v194;
    v89 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source);
    sub_1C449ED64(v89, v199 + v90);
    sub_1C4EF9AE8();
    sub_1C4429130();
    sub_1C4EFF888();
    v91 = v199 + v194[7];
    sub_1C4EFEC38();
    v92 = *(v204 + 32);
    v93 = sub_1C4E2E010();
    v94(v93);
    v95 = v194[5];
    sub_1C441B884();
    v97 = *(v96 + 32);
    v99 = sub_1C44A1CC0(v98);
    v100(v99);
    v101 = (v199 + v194[8]);
    *v101 = v201;
    v101[1] = v88;
    v102 = (v199 + v194[10]);
    *v102 = v207;
    v102[1] = v206;
    *(v199 + v194[11]) = v5;
    *(v199 + v194[12]) = v196;
    v103 = v208;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v173 = *(v208 + 16);
      v174 = sub_1C43FCEC0();
      sub_1C44C9240(v174, v175, v176, v208);
      v103 = v177;
    }

    v105 = *(v103 + 16);
    v104 = *(v103 + 24);
    sub_1C4424824();
    if (v77)
    {
      v178 = sub_1C43FF640(v106);
      sub_1C44C9240(v178, v179, v180, v103);
      v103 = v181;
    }

    *(v103 + 16) = v199;
    sub_1C43FBF6C();
    sub_1C44F0CA0();
    sub_1C4A948D8(v199, v107 + v108 * v105);
    v208 = v103;
    sub_1C4E2E89C();
    v81 = v207;
LABEL_31:
    if (*(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier))
    {
      v80 = v109;

      v110 = sub_1C4E2D39C();
      sub_1C4DE44E8(v110, v111, v112, v113, v114, v115, v116, v117, v192, v193);
      if (v86)
      {
        goto LABEL_21;
      }

      sub_1C49D3614(v118);
    }

    if (*(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed))
    {
      v119 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier;
      sub_1C4E2E574();
      v120 = sub_1C4E2D39C();
      sub_1C4E2E558(v120, v121, v122, v123, v124, v125, v126, v127, v192, v193);
      if (v119)
      {
        goto LABEL_42;
      }

      sub_1C49D3614(v128);

      v81 = v80;
    }

    if (!*(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage))
    {
      goto LABEL_40;
    }

    v129 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier;
    sub_1C4E2E574();
    v130 = sub_1C4E2D39C();
    sub_1C4E2E558(v130, v131, v132, v133, v134, v135, v136, v137, v192, v193);
    if (!v129)
    {
      sub_1C49D3614(v138);

      v81 = v80;
LABEL_40:
      v139 = *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage);
      if (v139)
      {
        v140 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier;
        sub_1C4E2E574();
        v141 = sub_1C4E2D39C();
        sub_1C4E2E558(v141, v142, v143, v144, v145, v146, v147, v148, v192, v193);
        if (v140)
        {
          goto LABEL_42;
        }

        sub_1C49D3614(v149);

        v81 = v80;
      }

      v150 = v208;
      if (*(v208 + 16))
      {
        (*(v204 + 16))(v195, v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier, v205);
        v151 = v195 + v60[5];
        sub_1C4EFEBB8();
        sub_1C4EFD2F8();
        sub_1C440D158();
        v152 = sub_1C4E2DD28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source);
        sub_1C449ED64(v152, v195 + v153);
        sub_1C4EF9AE8();
        sub_1C4429130();
        sub_1C4EFF888();
        sub_1C4E2E9FC();
        sub_1C4EFEC38();
        sub_1C4E2D714();
        *v154 = v81;
        v154[1] = v61;
        sub_1C4E2E160();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = *(v208 + 16);
          v183 = sub_1C43FCEC0();
          sub_1C44C9240(v183, v184, v185, v208);
          v150 = v186;
        }

        v156 = *(v150 + 16);
        v155 = *(v150 + 24);
        sub_1C4424824();
        if (v77)
        {
          v187 = sub_1C43FF640(v157);
          sub_1C44C9240(v187, v188, v189, v150);
          v150 = v190;
        }

        *(v150 + 16) = v139;
        sub_1C43FBF6C();
        sub_1C44F0CA0();
        v158 = sub_1C43FFF1C();
        sub_1C4A948D8(v158, v159);
      }

      goto LABEL_43;
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_53:
  __break(1u);
}

void sub_1C4E14D40()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v8);
  v126 = sub_1C4F00DC8();
  v9 = sub_1C43FCDF8(v126);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44094C8(v12, v119);
  v14 = MEMORY[0x1EEE9AC00](v13);
  sub_1C44107F0(v14, v15, v16, v17, v18, v19, v20, v21, v120);
  v22 = sub_1C4F01188();
  v23 = sub_1C43FCDF8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440A3EC(v26, v121);
  v27 = sub_1C4EFD548();
  v28 = sub_1C44348EC(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4410058(v31, v122);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C442A5DC(v33, v34, v35, v36, v37, v38, v39, v40, v123);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C440D100();
  v42 = type metadata accessor for Source();
  v43 = sub_1C440F834(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C4406BA0();
  v46 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v46);
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FE938(v50, v124);
  v51 = sub_1C4EFF0C8();
  v52 = sub_1C4425688(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4415E5C(v55, v125);
  v56 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v56);
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityClass;
  v58 = sub_1C4EFCEC8();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage);
  v60 = sub_1C44019BC();
  v1(v60);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v61 = sub_1C4F00978();
  sub_1C442B738(v61, qword_1EDE2DE10);
  v62 = sub_1C440EBA4();
  v1(v62);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v63 = sub_1C4E2D364();
  sub_1C4F01CB8();
  sub_1C43FE670();
  if (sub_1C4E2DF0C())
  {
    sub_1C4495448();
    v64 = sub_1C4488A10();
    sub_1C4E2CA84(v64);
    v65 = sub_1C4E2CD74(4.8453e-34);
    sub_1C4485F78(v65);
    sub_1C442DB9C();
    sub_1C4E276B4(v66, v67);
    sub_1C44804C0();
    v68 = sub_1C442638C();
    v69(v68);
    v70 = sub_1C4409A28();
    sub_1C441D828(v70, v71, v72);
    sub_1C4E2D380();
    sub_1C4414088();
    sub_1C44579E8(&dword_1C43F8000, v73, v74, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C44753CC();
    sub_1C4411B3C();
    sub_1C4E2D23C();
  }

  else
  {

    v75 = sub_1C4462134();
    v76(v75);
  }

  sub_1C4488B88();
  v77 = sub_1C4404084();
  MEMORY[0x1C6940010](v77);

  sub_1C4E2D2F0();
  sub_1C4E2CC80();
  v78 = sub_1C4416A00();
  v79(v78);
  sub_1C4E2D49C();
  if (!v81 & v80)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v82 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v83 = sub_1C4415B1C();
      sub_1C44255B4(v83);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v2 + 4) = v59;
      sub_1C447CEB4(&dword_1C43F8000, v84, v85, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v86 = sub_1C44E7750();
    }

    else
    {

      v86 = sub_1C44BBD58();
    }

    v59 = v127;
    v100 = v127(v86);
    v101 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v87, v88);
    sub_1C441DF80();
    v89 = sub_1C4409D98();
    sub_1C44344B8(v89, v90);
    sub_1C4E2CBF8();
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v91 = sub_1C442AABC();
    v92(v91);
    v93 = sub_1C43FE318();
    v94(v93);
    v95 = sub_1C4417C80();
    v96(v95);
    sub_1C4507BA8();
    v97 = sub_1C4422CA0();
    v98(v97);
    v99 = sub_1C4430818();
    v100 = v59(v99);
    v101 = 0;
  }

  sub_1C4424A80(v100, v101);
  sub_1C4482D7C();
  if (v81)
  {
    sub_1C446F170(v129, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v102 = sub_1C43FFB2C();
    v104 = sub_1C4428F60(v102, v103);
    sub_1C4E2DEC4(v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    v105 = sub_1C4495DFC();
    v59(v105);
    sub_1C448D818(v0 + v128);
    sub_1C441B884();
    (*(v106 + 8))(v0 + v107);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name);
    v108 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile);

    v109 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile);

    v110 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier);

    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage);

    sub_1C44417C4();
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v117 = sub_1C4440B80();
    v57(v117);
    v118 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier);
    v57(v118);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E154BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C4FC97B0 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001C4FC97D0 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x736E6F436C657566 && a2 == 0xEC00000064656D75;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656C694D79746963 && a2 == 0xEB00000000656761;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x4D79617768676968 && a2 == 0xEE00656761656C69)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1C4F02938();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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
    }
  }
}

unint64_t sub_1C4E15888(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 0x736E6F436C657566;
      break;
    case 10:
      result = 0x656C694D79746963;
      break;
    case 11:
      result = 0x4D79617768676968;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E15A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E154BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E15A30(uint64_t a1)
{
  v2 = sub_1C4E292F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E15A6C(uint64_t a1)
{
  v2 = sub_1C4E292F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E15AA8()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source + v0);
  v7 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name_predicate;
  v8 = sub_1C4EFEEF8();
  sub_1C43FD3F8(v8);
  (*(v9 + 8))(v0 + v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name);
  v10 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile);

  v11 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile);

  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage);

  return v0;
}

void sub_1C4E15C40()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C4D889F8();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Source();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1C4EFEEF8();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4E15DD8()
{
  sub_1C43FE96C();
  v6 = sub_1C4E2D990();
  v7 = sub_1C43FCDF8(v6);
  v50 = v8;
  v51 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C444BFE4();
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4440AD4();
  v15 = sub_1C456902C(&qword_1EC0C85B8, &qword_1C4F77558);
  sub_1C43FCDF8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C4402A68();
  v22 = *(v1 + 24);
  v21 = *(v1 + 32);
  sub_1C4E2C908();
  sub_1C4E292F8();
  sub_1C4E2D814();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v23, v24);
  sub_1C4F027E8();
  if (v2)
  {
    (*(v17 + 8))(v3, v15);
  }

  else
  {
    v25 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_predicate;
    sub_1C4433D44();
    sub_1C47CBF50(v4 + v25, v5);
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v26, v27);
    sub_1C4E2CEE0();
    sub_1C43FBF44();
    sub_1C4F02778();
    sub_1C446F170(v5, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v28, v29);
    sub_1C44200DC();
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v30, v31);
    sub_1C44200DC();
    sub_1C4F027E8();
    v33 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name_predicate;
    sub_1C4418194();
    (*(v50 + 16))(v0, v4 + v33, v51);
    sub_1C43FE79C(4);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v34 = *(v50 + 8);
    v35 = sub_1C4402E08();
    v36(v35);
    sub_1C4E2EA4C((v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name));
    sub_1C442A65C();
    sub_1C44200DC();
    sub_1C4F02738();

    v37 = sub_1C4E2DB84(*(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile));
    type metadata accessor for LifeEventStructs.AutomobileModel(v37);
    sub_1C4E2D844();
    sub_1C4E276B4(v38, v39);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C4E2E004(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile);
    v40 = sub_1C4E2DE14(7);
    type metadata accessor for LifeEventStructs.Make(v40);
    sub_1C4E2D82C();
    sub_1C4E276B4(v41, v42);
    sub_1C4414374();
    sub_1C44200DC();
    sub_1C4F02778();
    sub_1C4E2E004(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier);
    v43 = sub_1C4E2DE14(8);
    type metadata accessor for LifeEventStructs.IdentifierRelationshipType(v43);
    sub_1C4499604();
    sub_1C4E276B4(v44, v45);
    sub_1C4414374();
    sub_1C44200DC();
    sub_1C4F02778();
    sub_1C4E2E004(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed);
    v46 = sub_1C4E2DE14(9);
    type metadata accessor for LifeEventStructs.QuantityRelationshipType(v46);
    sub_1C4455534();
    sub_1C4E276B4(v47, v48);
    sub_1C43FBF44();
    sub_1C4F02778();
    sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage);
    sub_1C4E2DFE8(10);
    sub_1C43FBF44();
    sub_1C4F02778();
    sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage);
    sub_1C4E2DFE8(11);
    sub_1C4F02778();
    v49 = sub_1C4417840();
    v32(v49, v15);
  }

  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E1641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v96 = *v24;
  v27 = sub_1C4EFEEF8();
  v28 = sub_1C4425688(v27);
  v97 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4415E5C(v32, v89);
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v94 = sub_1C44A3D38(v37, v90);
  v38 = sub_1C43FCDF8(v94);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C441BFD4(v41, v91);
  v95 = sub_1C456902C(&qword_1EC0C8668, &qword_1C4F775C0);
  sub_1C43FCDF8(v95);
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FCBE0(v45, v92);
  v98 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_predicate;
  sub_1C43FCF64();
  sub_1C4D9A130(v46, v47, v48);
  sub_1C4EFCEC8();
  v49 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v50 = type metadata accessor for Source();
  v51 = sub_1C442B738(v50, qword_1EDDFED10);
  sub_1C449ED64(v51, v49 + v24);
  sub_1C4EFEBF8();
  v52 = (v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name);
  *v52 = 0;
  v52[1] = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile) = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile) = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier) = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed) = 0;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage) = 0;
  v99 = v24;
  *(v24 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage) = 0;
  v54 = v26[3];
  v53 = v26[4];
  sub_1C4E2C908();
  sub_1C4E292F8();
  sub_1C4E2D530();
  sub_1C4F02BC8();
  if (v21)
  {
    sub_1C446F170(v99 + v98, &qword_1EC0B9A08, &unk_1C4F107B0);
    v57 = sub_1C4EFD548();
    sub_1C43FD3F8(v57);
    v59 = *(v58 + 8);
    v60 = sub_1C4E2D5B0();
    v61(v60);
    sub_1C4E2DE7C();
    (*(v97 + 8))(v99 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name_predicate);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name);
    v62 = *(v99 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_modelOfAutomobile);

    v63 = *(v99 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_makeOfAutomobile);

    v64 = *(v99 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_identifier);

    v65 = *(v99 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_fuelConsumed);

    v66 = *(v99 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_cityMileage);

    v67 = *(v99 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_highwayMileage);

    sub_1C44417C4();
    v69 = *(v68 + 48);
    v70 = *(v68 + 52);
    sub_1C4E2DE94();
  }

  else
  {
    sub_1C4E2E8A8();
    sub_1C4E2D598(&a13);
    sub_1C4420B30();
    sub_1C4E276B4(v55, v56);
    sub_1C4E2D518();
    sub_1C4E2D3EC();
    sub_1C4F026C8();
    v71 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_entityIdentifier);
    v72(v71);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v73, v74);
    sub_1C4E2DCA4();
    sub_1C4F02658();
    sub_1C4E2DA98();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v93, v52 + v100);
    swift_endAccess();
    sub_1C4E2C964();
    sub_1C4E2DCA4();
    sub_1C441BF88();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v75 = sub_1C4E2DCE4();
    v76(v75);
    swift_endAccess();
    sub_1C447E2A8();
    sub_1C441BF88();
    v77 = sub_1C4F02618();
    sub_1C4425188(v77, v78);
    type metadata accessor for LifeEventStructs.AutomobileModel(0);
    sub_1C4E2DC4C();
    sub_1C4E2D844();
    sub_1C4E276B4(v79, v80);
    sub_1C441481C();
    sub_1C4E2D0C8();
    sub_1C441BF88();
    sub_1C4F02658();
    sub_1C443F058(v101);

    type metadata accessor for LifeEventStructs.Make(0);
    sub_1C4E2D82C();
    sub_1C4E276B4(v81, v82);
    sub_1C441481C();
    sub_1C4E2D0C8();
    sub_1C441BF88();
    sub_1C4F02658();
    sub_1C4422C90(v101);

    type metadata accessor for LifeEventStructs.IdentifierRelationshipType(0);
    sub_1C4499604();
    sub_1C4E276B4(v83, v84);
    sub_1C441481C();
    sub_1C4E2D0C8();
    sub_1C441BF88();
    sub_1C4F02658();
    sub_1C4422C90(v101);

    type metadata accessor for LifeEventStructs.QuantityRelationshipType(0);
    sub_1C4455534();
    sub_1C4E276B4(v85, v86);
    sub_1C447F798();
    sub_1C4E2DC08();
    sub_1C441E968(v101);

    sub_1C44C1348(10);
    sub_1C4E2DC08();
    sub_1C441E968(v101);

    sub_1C44C1348(11);
    sub_1C4E2DC08();
    v87 = sub_1C4E2E870();
    v88(v87);
    sub_1C443F058(v101);
  }

  sub_1C440962C(v26);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E16BC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E163F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E16C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v24;
  a20 = v26;
  v27 = v21;
  v29 = v28;
  v31 = v30;
  v398 = v32;
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v34 = sub_1C43FBD18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  sub_1C43FD2C8(v40);
  v41 = sub_1C4EFF0C8();
  v42 = sub_1C4412DFC(v41);
  v395 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v50 = sub_1C43FD2C8(v49);
  v51 = type metadata accessor for EntityTriple(v50);
  v52 = sub_1C43FFAE0(v51, &v403);
  v392 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v376 - v62;
  MEMORY[0x1EEE9AC00](v64);
  sub_1C4410A24();
  v65 = *v29;
  v66 = MEMORY[0x1E69E7CC0];
  v402 = MEMORY[0x1E69E7CC0];
  v67 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name + 8);
  v393 = v23;
  v399 = v65;
  v394 = v21;
  v397 = v20;
  if (!v67)
  {
    goto LABEL_8;
  }

  v68 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
  v69 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v69 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (!v69)
  {
    v27 = v21;
LABEL_8:
    v80 = v31;
    v89 = v20;
    sub_1C4E2DE08();
    goto LABEL_9;
  }

  (*(v395 + 16))(v22, v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier, v23);
  v70 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name_predicate;
  sub_1C440D164();
  v71 = v391;
  v72 = v391[5];
  v73 = sub_1C4EFEEF8();
  sub_1C43FCE50(v73);
  (*(v74 + 16))(v22 + v72, v20 + v70);
  sub_1C449ED64(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source, v22 + v71[9]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4E2E4F8();
  sub_1C4EFF888();
  v75 = v22 + v71[7];
  sub_1C4EFEC38();
  v76 = (v22 + v71[8]);
  *v76 = v68;
  v76[1] = v67;
  v77 = v22 + v71[10];
  sub_1C4E2D2E4();
  v20 = v78;
  *v79 = v78;
  v79[1] = v31;
  *(v22 + v71[11]) = v25;
  *(v22 + v71[12]) = v399;
  v80 = v31;
  v81 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v81, v82, v83, MEMORY[0x1E69E7CC0]);
  v66 = v84;
  v27 = *(v84 + 16);
  v85 = *(v84 + 24);
  i = v27 + 1;
  if (v27 >= v85 >> 1)
  {
    goto LABEL_116;
  }

  while (1)
  {
    *(v66 + 16) = i;
    sub_1C4418E28(&a9);
    sub_1C4A948D8(v22, v87 + v88 * v27);
    v402 = v66;
    sub_1C4E2E3FC();
    v89 = v397;
    v23 = v393;
    sub_1C4E2DCC0();
LABEL_9:
    v91 = *(v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain + 8);
    if (v91)
    {
      sub_1C4434384((v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain));
      if (v92)
      {
        sub_1C4E2CCA0();
        v93(v63);
        v94 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain_predicate;
        sub_1C440D164();
        v95 = sub_1C4E2E70C(&v403);
        sub_1C43FCE50(v95);
        (*(v96 + 16))(&v63[v23], v89 + v94);
        sub_1C449ED64(v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source, &v63[*(v80 + 36)]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C444AF00();
        sub_1C4EFEC38();
        sub_1C4E2DD40();
        *v97 = v22;
        v97[1] = v91;
        v98 = &v63[*(v80 + 40)];
        sub_1C4E2D2E4();
        v20 = v99;
        *v100 = v99;
        v100[1] = v80;
        sub_1C4E2D72C();
        v63[v101] = v399;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v313 = *(v66 + 16);
          v314 = sub_1C43FCEC0();
          sub_1C44C9240(v314, v315, v316, v66);
          v66 = v317;
        }

        sub_1C4422CC8();
        v27 = v394;
        v23 = v393;
        if (v103)
        {
          v318 = sub_1C4405AF4(v102);
          sub_1C44C9240(v318, v319, v320, v66);
          v66 = v321;
        }

        *(v66 + 16) = v91;
        sub_1C4418E28(&a9);
        sub_1C4A948D8(v63, v104 + v105 * v22);
        v402 = v66;
        v89 = v397;
        sub_1C4E2DCC0();
      }
    }

    v106 = *(v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence + 8);
    if (v106)
    {
      sub_1C4434384((v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence));
      if (v107)
      {
        v396 = v80;
        sub_1C4E2CCA0();
        v108 = v390;
        v109(v390);
        v110 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence_predicate;
        sub_1C440D164();
        v111 = v20;
        v112 = v89;
        v113 = v391;
        v114 = sub_1C4E2E268();
        sub_1C43FCE50(v114);
        (*(v115 + 16))(&v63[v108], v112 + v110);
        sub_1C449ED64(v112 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source, v108 + v113[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        v116 = v108 + v113[7];
        sub_1C4EFEC38();
        v117 = (v108 + v113[8]);
        *v117 = v22;
        v117[1] = v106;
        v118 = (v108 + v113[10]);
        v119 = v396;
        *v118 = v111;
        v118[1] = v119;
        *(v108 + v113[11]) = v25;
        sub_1C4E2D73C();
        v121 = v120;
        *(v108 + v122) = v120;
        v80 = v123;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v322 = *(v66 + 16);
          v323 = sub_1C43FCEC0();
          sub_1C44C9240(v323, v324, v325, v66);
          v66 = v326;
        }

        sub_1C4422CC8();
        v23 = v393;
        v27 = v394;
        if (v103)
        {
          v327 = sub_1C4405AF4(v124);
          sub_1C44C9240(v327, v328, v329, v66);
          v66 = v330;
        }

        *(v66 + 16) = v106;
        sub_1C4418E28(&a9);
        v125 = sub_1C443F1AC();
        sub_1C4A948D8(v125, v126);
        v402 = v66;
        v89 = v397;
        v90 = v121;
      }
    }

    v63 = *(v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation);
    if (v63)
    {
      break;
    }

LABEL_34:
    v153 = *(v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation);
    if (v153)
    {
      sub_1C4E2E740();
      sub_1C441E0A4();
      sub_1C4DE69B4();
      if (v27)
      {
        goto LABEL_57;
      }

      sub_1C4E2DB68(v154);
      if (v155)
      {
        v156 = sub_1C4E2DFB4();
        sub_1C49D3614(v156);
        sub_1C4E2CCA0();
        v27 = v384;
        v157(v384);
        v158 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
        sub_1C4E2D474();
        v63 = v385;
        sub_1C47CBF50(v153 + v158, v385);
        v159 = sub_1C4EFEEF8();
        sub_1C43FD490(v63);
        if (v135)
        {
          goto LABEL_118;
        }

        sub_1C4EFF048();
        sub_1C43FC1CC();
        v160 = v391;
        v161 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source);
        v162 = v388;
        sub_1C449ED64(v161, v388 + v163);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        v164 = v162 + v160[7];
        sub_1C4EFEC38();
        sub_1C4E2DB20();
        v165 = sub_1C4E2E7F8();
        v166(v165);
        sub_1C4E2CA28();
        (*(v167 + 32))(v162 + v168, v63, v159);
        sub_1C4E2E97C((v162 + v160[8]));
        v170 = (v162 + v169);
        v171 = v398;
        *v170 = v398;
        v170[1] = v80;
        *(v162 + v160[11]) = v25;
        sub_1C4E2D73C();
        *(v162 + v172) = v173;
        v174 = v402;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v340 = *(v174 + 16);
          v341 = sub_1C43FCEC0();
          sub_1C44C9240(v341, v342, v343, v174);
          v174 = v344;
        }

        sub_1C4E2E3FC();
        sub_1C4485C88();
        v23 = v393;
        v89 = v397;
        if (v103)
        {
          v345 = sub_1C43FFD98(v175);
          sub_1C44C9240(v345, v346, v347, v174);
          v174 = v348;
        }

        *(v174 + 16) = v171;
        sub_1C440C23C(&a9);
        sub_1C4A948D8(v388, v176);
        v402 = v174;
        sub_1C4E2DADC();
      }

      else
      {

        sub_1C4E2DCC0();
        v23 = v63;
      }
    }

    v177 = *(v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType);
    if (v177)
    {
      sub_1C4E2E740();
      sub_1C441E0A4();
      sub_1C4E109B8();
      if (v27)
      {
        goto LABEL_57;
      }

      sub_1C4E2DB68(v178);
      if (v179)
      {
        v180 = sub_1C4E2DFB4();
        sub_1C49D3614(v180);
        sub_1C4E2CCA0();
        v27 = v381;
        v181(v381);
        v182 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Plane_predicate;
        sub_1C4E2D16C();
        v183 = v382;
        sub_1C47CBF50(v177 + v182, v382);
        v184 = sub_1C4EFEEF8();
        sub_1C43FD490(v183);
        if (v135)
        {
          goto LABEL_119;
        }

        sub_1C4EFF048();
        sub_1C43FC1CC();
        v185 = v391;
        v186 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source);
        v187 = v380;
        sub_1C449ED64(v186, v380 + v188);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        v189 = v187 + v185[7];
        sub_1C4EFEC38();
        sub_1C4E2DB20();
        v190 = sub_1C4E2E7F8();
        v191(v190);
        sub_1C4E2CA28();
        (*(v192 + 32))(v187 + v193, v183, v184);
        sub_1C4E2E97C((v187 + v185[8]));
        v195 = (v187 + v194);
        v196 = v398;
        *v195 = v398;
        v195[1] = v80;
        *(v187 + v185[11]) = v25;
        sub_1C4E2D73C();
        *(v187 + v197) = v198;
        v199 = v402;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v349 = *(v199 + 16);
          v350 = sub_1C43FCEC0();
          sub_1C44C9240(v350, v351, v352, v199);
          v199 = v353;
        }

        sub_1C4E2E3FC();
        sub_1C4485C88();
        v63 = v393;
        v89 = v397;
        if (v103)
        {
          v354 = sub_1C43FFD98(v200);
          sub_1C44C9240(v354, v355, v356, v199);
          v199 = v357;
        }

        *(v199 + 16) = v196;
        sub_1C440C23C(&a9);
        sub_1C4A948D8(v187, v201);
        v402 = v199;
        sub_1C4E2DADC();
      }

      else
      {

        sub_1C4E2DCC0();
      }

      v23 = v63;
    }

    v202 = *(v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType);
    if (v202)
    {
      sub_1C4E2E740();
      sub_1C441E0A4();
      sub_1C4E14300();
      if (v27)
      {
LABEL_57:

        goto LABEL_58;
      }

      sub_1C4E2DB68(v203);
      if (v206)
      {
        v207 = sub_1C4E2DFB4();
        sub_1C49D3614(v207);
        sub_1C4E2CCA0();
        v23 = v379;
        v208(v379);
        v209 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_predicate;
        sub_1C4418194();
        v210 = v202 + v209;
        v211 = v383;
        sub_1C47CBF50(v210, v383);
        v212 = sub_1C4EFEEF8();
        sub_1C440175C(v211, 1, v212);
        if (v135)
        {
          goto LABEL_120;
        }

        v213 = v89;

        sub_1C4EFF048();
        sub_1C43FC1CC();
        v205 = v391;
        v204 = v213;
        v214 = v213 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source;
        v63 = v378;
        sub_1C449ED64(v214, &v378[v391[9]]);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        v215 = &v63[v205[7]];
        sub_1C4EFEC38();
        sub_1C4E2DB20();
        v216(v63, v23, v393);
        v217 = v205[5];
        sub_1C441B884();
        (*(v218 + 32))(&v63[v219], v383, v212);
        sub_1C4E2E97C(&v63[v205[8]]);
        sub_1C4E2D2E4();
        *v220 = v221;
        v220[1] = v80;
        *&v63[v205[11]] = v25;
        sub_1C4E2D73C();
        v63[v222] = v223;
        v224 = v402;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v358 = *(v224 + 16);
          v359 = sub_1C43FCEC0();
          sub_1C44C9240(v359, v360, v361, v224);
          v224 = v362;
        }

        v226 = *(v224 + 16);
        v225 = *(v224 + 24);
        if (v226 >= v225 >> 1)
        {
          v363 = sub_1C4405AF4(v225);
          sub_1C44C9240(v363, v364, v365, v224);
          v224 = v366;
        }

        sub_1C4E2E3F0();

        *(v224 + 16) = v226 + 1;
        sub_1C4409B30(&a9);
        sub_1C4A948D8(v63, v224 + v227 + *(v228 + 72) * v226);
        v402 = v224;
      }

      else
      {
        v204 = v89;
        v205 = 0;
      }

      sub_1C4E2DCC0();
    }

    else
    {
      v204 = v89;
      v205 = v27;
    }

    v396 = v80;
    v22 = *(v204 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier);
    if (!v22)
    {
      v63 = v204;
LABEL_81:
      v240 = v395;
      v22 = *&v63[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship];
      if (v22)
      {
        v241 = *&v63[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship];
        v20 = v90;
        v242 = v90;
        v66 = sub_1C4428DA0();
        v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
        v27 = v22 & 0xC000000000000001;
        v80 = v22 & 0xFFFFFFFFFFFFFF8;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        for (i = 0; v66 != i; ++i)
        {
          if (v27)
          {
            v20 = v242;
            v63 = MEMORY[0x1C6940F90](i, v22);
          }

          else
          {
            v85 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (i >= v85)
            {
              goto LABEL_115;
            }

            v63 = *(v22 + 8 * i + 32);
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_114;
          }

          v401 = v242;
          sub_1C4459C44();
          sub_1C4458588();
          sub_1C4E2DDFC();
          sub_1C4DE5C70(v243, v244, v245, v246, v247, v248, v249, v250, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387);
          if (v205)
          {
            goto LABEL_91;
          }

          v20 = &v402;
          sub_1C49D3614(v251);

          v242 = v399;
        }

        sub_1C4E2DDF0();
        v240 = v395;
      }

      v252 = *&v63[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee];
      v253 = v396;
      sub_1C44225D8();
      if (v252)
      {
        v22 = v254;
        v255 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
        sub_1C4E2EB74();
        sub_1C4DEBBF0(v23, v253, &v63[v255], &v401, v256, v257, v258, v259, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387);
        if (!v205)
        {
          sub_1C49D3614(v260);

          LOBYTE(v254) = v22;
          goto LABEL_96;
        }

LABEL_104:
      }

      else
      {
LABEL_96:
        v261 = v63;
        if (*&v63[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain])
        {
          v262 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
          sub_1C4E2EB74();
          v263 = sub_1C4E2CE94();
          sub_1C4E0F744(v263, v264, v265, v266, v267, v268, v269, v270, v376, v377);
          if (v262)
          {
            goto LABEL_104;
          }

          sub_1C49D3614(v271);

          LOBYTE(v254) = v63;
          v261 = v22;
        }

        if (*&v261[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate])
        {
          v272 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
          sub_1C4E2EB74();
          v273 = sub_1C4E2CE94();
          sub_1C4DECF58(v273, v274, v275, v276, v277, v278, v279, v280, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387);
          if (v272)
          {
            goto LABEL_104;
          }

          sub_1C49D3614(v281);

          LOBYTE(v254) = v261;
          v261 = v22;
        }

        if (*&v261[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length])
        {
          v282 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
          sub_1C4E2EB74();
          v283 = sub_1C4E2CE94();
          sub_1C4E0F744(v283, v284, v285, v286, v287, v288, v289, v290, v376, v377);
          if (v282)
          {
            goto LABEL_104;
          }

          sub_1C49D3614(v291);

          LOBYTE(v254) = v261;
          v261 = v22;
        }

        v292 = v402;
        if (*(v402 + 16))
        {
          v293 = *(v240 + 16);
          v294 = &v261[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier];
          v295 = v261;
          v296 = v377;
          v297 = v254;
          v293(v377, v294, v393);
          v298 = v391;
          v299 = v296 + v391[5];
          sub_1C4EFEBB8();
          v300 = &v295[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityClass];
          sub_1C4EFD2F8();
          sub_1C43FC1CC();
          sub_1C449ED64(&v295[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source], v296 + v298[9]);
          sub_1C4EF9AE8();
          sub_1C4416C58();
          sub_1C4EFF888();
          v301 = v296 + v298[7];
          sub_1C4EFEC38();
          sub_1C4E2E988((v296 + v298[8]));
          sub_1C4E2D2E4();
          *v302 = v303;
          v302[1] = v253;
          *(v296 + v298[11]) = v25;
          *(v296 + v298[12]) = v297;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v367 = *(v292 + 16);
            v368 = sub_1C43FCEC0();
            sub_1C44C9240(v368, v369, v370, v292);
            v292 = v371;
          }

          v305 = *(v292 + 16);
          v304 = *(v292 + 24);
          sub_1C44019A4();
          if (v103)
          {
            v372 = sub_1C43FFD98(v306);
            sub_1C44C9240(v372, v373, v374, v292);
            v292 = v375;
          }

          *(v292 + 16) = v300;
          sub_1C4409B30(&a9);
          sub_1C4E2D154(v292 + v307);
          sub_1C4A948D8(v377, v308);
        }
      }

LABEL_58:
      sub_1C440EE0C();
      sub_1C44109F8();
      return;
    }

    v229 = *(v204 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier);
    v20 = v90;
    v230 = v90;
    v66 = sub_1C4428DA0();
    v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
    v27 = v22 & 0xC000000000000001;
    v80 = v22 & 0xFFFFFFFFFFFFFF8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; ; ++i)
    {
      if (v66 == i)
      {

        sub_1C4E2DDF0();
        goto LABEL_81;
      }

      if (v27)
      {
        v20 = v230;
        v63 = MEMORY[0x1C6940F90](i, v22);
      }

      else
      {
        v85 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i >= v85)
        {
          goto LABEL_113;
        }

        v63 = *(v22 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v401 = v230;
      sub_1C4459C44();
      sub_1C4458588();
      sub_1C4E2DDFC();
      sub_1C4DE44E8(v231, v232, v233, v234, v235, v236, v237, v238, v376, v377);
      if (v205)
      {
LABEL_91:

        goto LABEL_58;
      }

      v20 = &v402;
      sub_1C49D3614(v239);

      v230 = v399;
    }

    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    v309 = sub_1C4405AF4(v85);
    sub_1C44C9240(v309, v310, v311, v66);
    v66 = v312;
  }

  v400 = v90;

  sub_1C441E0A4();
  sub_1C4DE69B4();
  if (v27)
  {
    goto LABEL_57;
  }

  sub_1C4E2DB68(v127);
  if (!v128)
  {

LABEL_33:
    sub_1C4E2DADC();
    goto LABEL_34;
  }

  v396 = v80;
  v129 = sub_1C4E2DFB4();
  sub_1C49D3614(v129);
  v27 = v23;
  sub_1C4E2CCA0();
  v130 = v386;
  v131(v386);
  v132 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
  sub_1C4E2D564();
  v133 = v387;
  sub_1C47CBF50(&v63[v132], v387);
  v134 = sub_1C4EFEEF8();
  sub_1C440175C(v133, 1, v134);
  if (!v135)
  {
    v136 = v89;

    v137 = &v63[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier];
    sub_1C4EFF048();
    sub_1C43FC1CC();
    v138 = v391;
    v139 = v136 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source;
    v140 = v389;
    sub_1C449ED64(v139, v389 + v391[9]);
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2E3D8();
    sub_1C4E2DB20();
    v141(v140, v130, v27);
    v142 = v138[5];
    sub_1C4E2C9A8();
    (*(v143 + 32))(v140 + v144, v133, v134);
    sub_1C4E2E97C((v140 + v138[8]));
    v146 = (v140 + v145);
    v80 = v396;
    *v146 = v398;
    v146[1] = v80;
    *(v140 + v138[11]) = v25;
    sub_1C4E2D73C();
    *(v140 + v147) = v148;
    v149 = v402;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v331 = *(v149 + 16);
      v332 = sub_1C43FCEC0();
      sub_1C44C9240(v332, v333, v334, v149);
      v149 = v335;
    }

    sub_1C4E2E3FC();
    sub_1C4485C88();
    v23 = v393;
    v89 = v397;
    if (v103)
    {
      v336 = sub_1C43FFD98(v150);
      sub_1C44C9240(v336, v337, v338, v149);
      v149 = v339;
    }

    *(v149 + 16) = v137;
    sub_1C440C23C(&a9);
    sub_1C4E2E780(v151, v152);
    v402 = v149;
    goto LABEL_33;
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
}

void sub_1C4E181D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v13 = v10;
  v15 = v14;
  v152 = v16;
  v148 = *v10;
  v17 = sub_1C4F00DD8();
  v18 = sub_1C4440220(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  sub_1C4460940(v21);
  v147 = sub_1C4F00DC8();
  v22 = sub_1C43FCDF8(v147);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C44094C8(v25, v139);
  v27 = MEMORY[0x1EEE9AC00](v26);
  sub_1C44107F0(v27, v28, v29, v30, v31, v32, v33, v34, v140);
  v35 = sub_1C4F01188();
  v36 = sub_1C43FCDF8(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C440A3EC(v39, v141);
  v40 = sub_1C4EFD548();
  v41 = sub_1C44348EC(v40);
  v154 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C4410058(v45, v142);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  v48 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C440D100();
  v50 = type metadata accessor for Source();
  v51 = sub_1C440F834(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v54 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v54);
  v56 = *(v55 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FE938(v58, v143);
  v59 = sub_1C4EFF0C8();
  v60 = sub_1C4425688(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  sub_1C4415E5C(v63, v144);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v67);
  v68 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityClass;
  sub_1C4EFD1C8();
  v69 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v70 = sub_1C442B738(v10, qword_1EDDFED10);
  sub_1C449ED64(v70, v10 + v69);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
  sub_1C4EFED38();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate) = 0;
  *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length) = 0;
  sub_1C449ED64(v10 + v69, v11);
  v71 = *(v154 + 16);
  v151 = v68;
  v71(v12, v10 + v68, a10);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v72 = sub_1C4F00978();
  v73 = sub_1C442B738(v72, qword_1EDE2DE10);
  sub_1C447D06C();
  v145 = v71;
  (v71)();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v74 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4E2E7E0();
  if (os_log_type_enabled(v74, v73))
  {
    sub_1C4495448();
    sub_1C4488A10();
    sub_1C4E2D4A8(4.8453e-34);
    v76 = sub_1C441D828(v152, v15, v75);
    sub_1C4485F78(v76);
    sub_1C442DB9C();
    sub_1C4E276B4(v77, v78);
    sub_1C4F02858();
    v79 = sub_1C4E2E4BC();
    v80(v79);
    v81 = sub_1C442A90C();
    sub_1C441D828(v81, v82, v83);

    sub_1C4414088();
    sub_1C4E2D264(&dword_1C43F8000, v84, v73, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C4E2D23C();
  }

  else
  {

    v85 = sub_1C4E2E4BC();
    v86(v85);
  }

  v87 = *v11;
  v88 = v11[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v89 = sub_1C4404084();
  MEMORY[0x1C6940010](v89);

  sub_1C4E2D2F0();
  sub_1C4E2CC80();
  v90 = sub_1C4416A00();
  v91(v90);
  sub_1C4E2D49C();
  if (!v93 & v92)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BBF0C();
    v106 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v94 = sub_1C4415B1C();
      sub_1C44255B4(v94);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v48 + 4) = v73;
      sub_1C447CEB4(&dword_1C43F8000, v95, v96, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v97 = sub_1C44E7750();
    }

    else
    {

      v97 = sub_1C44BBD58();
    }

    v111 = v149;
    v112 = (v149)(v97);
    v113 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v98, v99);
    sub_1C440BB4C();
    sub_1C4F00DB8();
    v100 = sub_1C4409D98();
    sub_1C44344B8(v100, v101);
    v102 = sub_1C4409D98();
    sub_1C4498FD8(v102, v103);
    sub_1C441C6AC();
    sub_1C440BB4C();
    sub_1C4F00DA8();
    v104 = sub_1C4464BE4();
    v105(v104);
    v106 = v150;
    v145(v146, v150, a10);
    v107 = sub_1C4417C80();
    v108(v107);
    sub_1C4EFF028();
    v109 = sub_1C447CD1C(v11);
    v110(v109);
    v111 = v149;
    v112 = (v149)(v150, a10);
    v113 = 0;
  }

  sub_1C4E2DAFC(v112, v113);
  sub_1C448D818(v11);
  sub_1C43FC0FC(v106);
  if (v93)
  {
    sub_1C446F170(v153, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v114 = sub_1C43FFB2C();
    v116 = sub_1C4428F60(v114, v115);
    sub_1C4E2DEC4(v116, &qword_1EC0B9A08, &unk_1C4F107B0);
    v117 = sub_1C4495DFC();
    v111(v117);
    sub_1C448D818(v13 + v69);
    sub_1C4425820();
    v119 = *(v118 + 8);
    v121 = sub_1C443E068(v120);
    v119(v121);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
    v122 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain_predicate);
    v119(v122);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain);
    v123 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence_predicate);
    v119(v123);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
    v124 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation);

    v125 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation);

    v126 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType);

    v127 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType);

    v128 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier);

    v129 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship);

    v130 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee);

    v131 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain);

    v132 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate);

    v133 = *(v13 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length);

    sub_1C44417C4();
    v135 = *(v134 + 48);
    v136 = *(v134 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v137 = sub_1C4440B80();
    v151(v137);
    v138 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier);
    v151(v138);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E18BB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C4FC9850 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E696172726574 && a2 == 0xE700000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001ALL && 0x80000001C4FC9870 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001CLL && 0x80000001C4FC9890 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6F69746176656C65 && a2 == 0xED00006E6961476ELL;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_1C4F02938();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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
}

unint64_t sub_1C4E191B0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6E696172726574;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6E656469666E6F63;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x7461636F4C646E65;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0x696669746E656469;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0x6E65747441736168;
      break;
    case 17:
      result = 0x6F69746176656C65;
      break;
    case 18:
      result = 0x65746144736168;
      break;
    case 19:
      result = 0x6874676E656CLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E19418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E18BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E19440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4E191A8();
  *a1 = result;
  return result;
}

uint64_t sub_1C4E19468(uint64_t a1)
{
  v2 = sub_1C4E2934C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E194A4(uint64_t a1)
{
  v2 = sub_1C4E2934C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E194E0()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_source);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain);
  v12 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence_predicate);
  v9(v12);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier);

  v18 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship);

  v19 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee);

  v20 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain);

  v21 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate);

  v22 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length);

  return v0;
}

void sub_1C4E19710()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C4D889F8();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Source();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1C4EFEEF8();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4E198B8()
{
  sub_1C43FE96C();
  v6 = sub_1C4E2D990();
  v7 = sub_1C43FCDF8(v6);
  v73 = v8;
  v74 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v72 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4402CA8();
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C440A474();
  v18 = sub_1C456902C(&qword_1EC0C85C8, &qword_1C4F77560);
  sub_1C4412DFC(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FE95C();
  v24 = v0[4];
  sub_1C4417F50(v0, v0[3]);
  sub_1C4E2934C();
  sub_1C4F02BF8();
  sub_1C4EFF0C8();
  sub_1C4420B30();
  sub_1C4E276B4(v25, v26);
  sub_1C4E2E93C();
  sub_1C4F027E8();
  if (v1)
  {
    v27 = sub_1C4E2D45C();
    v28(v27, v4);
  }

  else
  {
    v29 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_predicate;
    sub_1C44169A0();
    sub_1C47CBF50(v2 + v29, v3);
    sub_1C441ACD0();
    sub_1C4E276B4(v30, v31);
    sub_1C4F02778();
    sub_1C446F170(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441483C();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v32, v33);
    sub_1C4E2DCD8();
    sub_1C4F027E8();
    sub_1C446257C(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v34, v35);
    sub_1C4E2DCD8();
    sub_1C4F027E8();
    sub_1C4460954();
    v38 = *(v73 + 16);
    v39 = sub_1C4E2E528();
    v40(v39);
    sub_1C4E2E90C();
    sub_1C4E2D74C();
    sub_1C4F027E8();
    sub_1C4E2E8A8();
    v41 = *(v73 + 8);
    v42 = sub_1C440BB4C();
    v41(v42);
    v43 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
    v44 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2DBC8();
    if (v43)
    {
      goto LABEL_6;
    }

    sub_1C4488504();
    sub_1C4E2E528();
    sub_1C440E3C8();
    v46();
    sub_1C4455A00();
    sub_1C4E2D74C();
    sub_1C4E2DCD8();
    sub_1C4F027E8();
    (v41)(v72, v74);
    v47 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain);
    v48 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2DBC8();
    if (v47)
    {
LABEL_6:
      sub_1C4E2E534();
      v45(v5, v4);
    }

    else
    {

      sub_1C4429150();
      sub_1C4E2E528();
      sub_1C440E3C8();
      v49();
      sub_1C43FE79C(8);
      sub_1C4E2D74C();
      sub_1C4E2DCD8();
      sub_1C4F027E8();
      v50 = sub_1C440BB4C();
      v41(v50);
      v51 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
      v52 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4E2DBC8();
      if (!v51)
      {

        v75 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation);
        v53 = sub_1C4E2DE4C(10);
        type metadata accessor for LifeEventStructs.Place(v53);
        sub_1C4401574();
        sub_1C4E276B4(v54, v55);
        sub_1C4E2D8D0();
        sub_1C4E2DCD8();
        sub_1C4F02778();
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation);
        sub_1C4E2D8D0();
        sub_1C4E2E6A8();
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType);
        v56 = sub_1C4E2DE4C(12);
        type metadata accessor for LifeEventStructs.Plane(v56);
        sub_1C4E2D918();
        sub_1C4E276B4(v57, v58);
        sub_1C4E2CC18();
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType);
        v59 = sub_1C4E2DE4C(13);
        type metadata accessor for LifeEventStructs.Automobile(v59);
        sub_1C4E2D900();
        sub_1C4E276B4(v60, v61);
        sub_1C4E2CC18();
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier);
        sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
        sub_1C4E28950();
        sub_1C4E2CC18();
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship);
        sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
        sub_1C4E28C08();
        sub_1C4E2CC18();
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee);
        v62 = sub_1C4E2DE4C(16);
        type metadata accessor for LifeEventStructs.ParticipationRelationshipType(v62);
        sub_1C4412AAC();
        sub_1C4E276B4(v63, v64);
        sub_1C4E2CC18();
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain);
        v65 = sub_1C4E2DE4C(17);
        type metadata accessor for LifeEventStructs.QuantityRelationshipType(v65);
        sub_1C4455534();
        sub_1C4E276B4(v66, v67);
        sub_1C4E2D8D0();
        sub_1C4E2E6A8();
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate);
        v68 = sub_1C4E2DE4C(18);
        type metadata accessor for LifeEventStructs.DateRelationshipType(v68);
        sub_1C440B98C();
        sub_1C4E276B4(v69, v70);
        sub_1C4E2CC18();
        sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length);
        sub_1C4E2D8D0();
        sub_1C4E2E6A8();
        sub_1C4E2E534();
        v71 = sub_1C4402120();
        v37(v71, v36);
        goto LABEL_4;
      }

      (*(v20 + 8))(v5, v4);
    }
  }

LABEL_4:
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4E1A1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  sub_1C445CD30();
  v25 = sub_1C4EFEEF8();
  v26 = sub_1C4425688(v25);
  v124 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C441B244();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C446BD9C(v32, v33, v34, v35, v36, v37, v38, v39, v117);
  v40 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v40);
  v42 = *(v41 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  v123 = sub_1C44A3D38(v44, v118);
  v45 = sub_1C43FCDF8(v123);
  v120 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD2D8();
  sub_1C445BEF4(v49);
  v50 = sub_1C456902C(&qword_1EC0C8660, &qword_1C4F775B8);
  sub_1C43FCDF8(v50);
  v52 = *(v51 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FCBE0(v54, v119);
  v125 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_predicate;
  v55 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_predicate);
  sub_1C4E2DF24(v55, v56, v57);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityClass);
  sub_1C4EFD1C8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v58 = type metadata accessor for Source();
  sub_1C4E2D85C(v58, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name_predicate);
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
  sub_1C442BC14(v59);
  sub_1C4EFED38();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain);
  sub_1C4E2D298(v60);
  sub_1C4EFE2A8();
  v61 = (v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
  *v61 = 0;
  v61[1] = 0;
  sub_1C4E2E8D8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation);
  sub_1C4E2E8D8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation);
  sub_1C4E2E8D8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType);
  sub_1C4E2E8D8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType);
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier) = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship) = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee) = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain) = 0;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate) = 0;
  v126 = v21;
  v127 = v20;
  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length) = 0;
  v63 = v21[3];
  v62 = v21[4];
  sub_1C445631C();
  sub_1C4E2934C();
  sub_1C4E2D530();
  sub_1C4F02BC8();
  if (v22)
  {
    sub_1C446F170(v127 + v125, &qword_1EC0B9A08, &unk_1C4F107B0);
    v66 = sub_1C4EFD548();
    sub_1C43FD3F8(v66);
    v68 = *(v67 + 8);
    v69 = sub_1C4E2D5B0();
    v70(v69);
    sub_1C4E2DE7C();
    v71 = *(v124 + 8);
    v72 = sub_1C441733C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name_predicate);
    v71(v72);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_name);
    v73 = sub_1C441733C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain_predicate);
    v71(v73);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_terrain);
    v74 = sub_1C441733C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence_predicate);
    v71(v74);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
    v75 = *(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_startingLocation);

    v76 = *(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_endLocation);

    v77 = *(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_airplaneTransportationType);

    v78 = *(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_automobileTransportationType);

    v79 = *(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier);

    v80 = *(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasLocationRelationship);

    v81 = *(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasAttendee);

    v82 = *(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_elevationGain);

    v83 = *(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_hasDate);

    v84 = *(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_length);

    sub_1C44417C4();
    v86 = *(v85 + 48);
    v87 = *(v85 + 52);
    sub_1C4E2DE94();
    v116 = v126;
  }

  else
  {
    sub_1C4E2D598(&v127);
    sub_1C4420B30();
    sub_1C4E276B4(v64, v65);
    sub_1C4E2D518();
    sub_1C4F026C8();
    v88 = v127;
    (*(v120 + 32))(v127 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_entityIdentifier, v122, v123);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v89, v90);
    sub_1C4E2D08C();
    sub_1C4F02658();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C449A970(v121, v88 + v125);
    swift_endAccess();
    sub_1C4E2C964();
    sub_1C4E2D08C();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v91 = *(v124 + 40);
    sub_1C4E2E9CC();
    v92();
    swift_endAccess();
    sub_1C447E2A8();
    v93 = sub_1C4F02618();
    sub_1C4418DB0(v93, v94, &a17);
    sub_1C4402064(6);
    sub_1C4E2D08C();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2E9CC();
    v91();
    swift_endAccess();
    sub_1C442F858(7);
    v95 = sub_1C4F02618();
    sub_1C4E2C87C(v95, v96);
    sub_1C4402064(8);
    sub_1C4E2D08C();
    sub_1C4F026C8();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2E9CC();
    v91();
    swift_endAccess();
    sub_1C442F858(9);
    v97 = sub_1C4F02618();
    sub_1C4425188(v97, v98);
    type metadata accessor for LifeEventStructs.Place(0);
    sub_1C441B2D4();
    sub_1C4401574();
    sub_1C4E276B4(v99, v100);
    sub_1C447F798();
    sub_1C4E2E818();
    sub_1C4F02658();
    sub_1C4422C90(v128);

    sub_1C44C1348(11);
    sub_1C4E2E818();
    sub_1C4F02658();
    sub_1C4E2E4B0();
    sub_1C4E2DD7C(v101);
    type metadata accessor for LifeEventStructs.Plane(0);
    sub_1C4E2CA08();
    sub_1C4E2D918();
    sub_1C4E276B4(v102, v103);
    sub_1C44063D8();
    sub_1C4E2E3C0();
    sub_1C4E2E4B0();
    sub_1C4E2DD7C(v104);
    type metadata accessor for LifeEventStructs.Automobile(0);
    sub_1C4E2CA18();
    sub_1C4E2D900();
    sub_1C4E276B4(v105, v106);
    sub_1C44063D8();
    sub_1C4E2E3C0();
    sub_1C4E2E4B0();
    sub_1C4E2DD7C(v107);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C444AC68();
    sub_1C4E295F8();
    sub_1C44063D8();
    sub_1C4E2E3C0();
    sub_1C441E968(v128);

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E29544();
    sub_1C44063D8();
    sub_1C4E2E3C0();
    sub_1C441E968(v128);

    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v108, v109);
    sub_1C44063D8();
    sub_1C4E2E3C0();
    sub_1C441E968(v128);

    type metadata accessor for LifeEventStructs.QuantityRelationshipType(0);
    sub_1C4455534();
    sub_1C4E276B4(v110, v111);
    sub_1C447F798();
    sub_1C4E2E818();
    sub_1C4E2E3C0();
    sub_1C441E968(v128);

    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v112, v113);
    sub_1C44063D8();
    sub_1C4E2E3C0();
    sub_1C441E968(v128);

    sub_1C44C1348(19);
    sub_1C4E2E818();
    sub_1C4E2E3C0();
    v114 = sub_1C4485C30();
    v115(v114);
    sub_1C443F058(v128);

    v116 = v21;
  }

  sub_1C440962C(v116);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4E1AD2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E1A1C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E1ADB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  sub_1C43FE628();
  a19 = v31;
  a20 = v33;
  v266 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v271 = v29;
  v41 = v28;
  v43 = v42;
  v273 = v44;
  v274 = v45;
  sub_1C442BC14(a22);
  v46 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v47 = sub_1C43FBD18(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FD230();
  v270 = v51;
  sub_1C43FBE44();
  v52 = sub_1C4EFF0C8();
  v53 = sub_1C43FCDF8(v52);
  v269 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FD230();
  v59 = sub_1C43FD2C8(v58);
  v60 = type metadata accessor for EntityTriple(v59);
  v61 = sub_1C43FFAE0(v60, &a18);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C4458614();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C4402CA8();
  v272 = *v43;
  v70 = MEMORY[0x1E69E7CC0];
  v275 = MEMORY[0x1E69E7CC0];
  v71 = (v28 + *v40);
  v72 = v71[1];
  v263 = v52;
  v265 = v63;
  v264 = v38;
  if (!v72)
  {
    goto LABEL_6;
  }

  v73 = *v71;
  sub_1C4E2D5D4();
  if (!v74)
  {
    v70 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  sub_1C4E2D434();
  v75(v30);
  v76 = *v36;
  sub_1C4E2D564();
  v77 = v268[5];
  v78 = sub_1C4EFEEF8();
  sub_1C43FCE50(v78);
  v63 = v273;
  (*(v79 + 16))(v30 + v77, v28 + v76);
  sub_1C4E2E420();
  v38 = v28;
  sub_1C449ED64(v28 + v80, v30 + v268[9]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C440EEE0();
  sub_1C4EFF888();
  v81 = v30 + v268[7];
  sub_1C4EFEC38();
  v82 = (v30 + v268[8]);
  *v82 = v73;
  v82[1] = v72;
  v83 = (v30 + v268[10]);
  *v83 = v273;
  v83[1] = v274;
  *(v30 + v268[11]) = v32;
  *(v30 + v268[12]) = v272;
  v84 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v84, v85, v86, MEMORY[0x1E69E7CC0]);
  v70 = v87;
  i = *(v87 + 16);
  v36 = i + 1;
  if (i >= *(v87 + 24) >> 1)
  {
    goto LABEL_79;
  }

  while (1)
  {
    sub_1C44225D8();
    *(v70 + 16) = v36;
    v89 = *(v63 + 80);
    sub_1C4E2C938();
    sub_1C4A948D8(v30, v90 + *(v63 + 72) * i);
    v275 = v70;
    v41 = v38;
    sub_1C4E2DDF0();
LABEL_6:
    sub_1C4E2D2C4();
    v92 = (v41 + v91);
    v30 = v92[1];
    v93 = v270;
    if (v30 && (sub_1C4434384(v92), v94))
    {
      v95 = a21;
      sub_1C4E2D434();
      v96(v28);
      v97 = *v95;
      sub_1C4E2D474();
      sub_1C4E2D468();
      v98 = sub_1C4E2E268();
      sub_1C43FCE50(v98);
      (*(v99 + 16))(v38 + v28, v41 + v97);
      sub_1C4E2E420();
      sub_1C449ED64(v41 + v100, v28 + *(v41 + 9));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4414830();
      sub_1C4EFF888();
      sub_1C4E2DF74();
      sub_1C4E2D7B4();
      *v101 = v36;
      v101[1] = v30;
      sub_1C4E2D7A8();
      *v102 = v273;
      v102[1] = v274;
      sub_1C4E2CAF4();
      sub_1C4E2E238(v103);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v224 = *(v70 + 16);
        v225 = sub_1C43FCEC0();
        sub_1C44C9240(v225, v226, v227, v70);
        v70 = v228;
      }

      sub_1C4422CC8();
      v63 = v265;
      v38 = v264;
      v105 = v267;
      if (v106)
      {
        sub_1C44C9240(v104 > 1, v30, 1, v70);
        v70 = v229;
      }

      *(v70 + 16) = v30;
      v107 = *(v265 + 80);
      sub_1C4E2C938();
      sub_1C4A948D8(v28, v108 + *(v265 + 72) * v36);
      v275 = v70;
      v93 = v270;
    }

    else
    {
      v105 = v267;
    }

    v109 = *(v41 + *v105);
    v110 = v271;
    v28 = v273;
    if (v109)
    {
      break;
    }

LABEL_26:
    v137 = *(v41 + *a23);
    if (v137)
    {

      v29 = v110;
      sub_1C4DE69B4();
      if (v110)
      {
        goto LABEL_39;
      }

      sub_1C4E2DB68(v138);
      if (v139)
      {
        v140 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49D3614(v140);
        sub_1C4E2D434();
        v141 = sub_1C441C660();
        v142(v141);
        v143 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
        sub_1C4E2CE74();
        sub_1C4E2EC4C(v137 + v143, &v276);
        v144 = sub_1C4EFEEF8();
        sub_1C440175C(v272, 1, v144);
        if (v118)
        {
          goto LABEL_81;
        }

        v145 = v137 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
        v270 = sub_1C4EFF048();
        v30 = v146;
        sub_1C4E2E420();
        sub_1C4E2E300(v147);
        sub_1C44BBF0C();
        sub_1C449ED64(v149, v145 + v148);
        sub_1C4EF9AE8();
        sub_1C4E2E4F8();
        sub_1C4EFF888();
        v150 = v145 + *(v70 + 28);
        sub_1C4EFEC38();
        v151 = sub_1C4E2E51C(v269);
        v152(v151, v260, v263);
        v153 = *(v70 + 20);
        sub_1C4E2C9A8();
        v155 = *(v154 + 32);
        sub_1C4E2E9CC();
        v156();
        v157 = (v145 + *(v70 + 32));
        *v157 = v270;
        v157[1] = v30;
        v158 = (v145 + *(v70 + 40));
        *v158 = v273;
        v158[1] = v274;
        *(v145 + *(v70 + 44)) = v32;
        *(v145 + *(v70 + 48)) = v272;
        v159 = v275;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v239 = *(v159 + 16);
          v240 = sub_1C43FCEC0();
          sub_1C44C9240(v240, v241, v242, v159);
          v159 = v243;
        }

        v110 = v29;
        sub_1C4485C88();
        if (v106)
        {
          sub_1C4460700();
          sub_1C44C9240(v244, v245, v246, v159);
          v159 = v247;
        }

        *(v159 + 16) = v145;
        v160 = *(v63 + 80);
        sub_1C4E2C938();
        sub_1C4E2D7F0(v161);
        sub_1C4A948D8(v259, v162);
        v275 = v159;
      }

      else
      {
      }

      v28 = v273;
    }

    sub_1C4E2EA34(a24);
    if (v30)
    {
      v29 = *v38;
      sub_1C4E2EC64();
      sub_1C43FBF44();
      sub_1C4DECF58(v163, v164, v165, v166, v167, v168, v169, v170, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);
      v110 = v29;
      if (v29)
      {
LABEL_39:

LABEL_40:
        sub_1C44103B4();
        sub_1C44109F8();
        return;
      }

      sub_1C49D3614(v171);
    }

    sub_1C4E2EA34(a25);
    v70 = v274;
    if (!v30)
    {
LABEL_53:
      sub_1C4E2EA34(a26);
      if (v30)
      {
        v29 = *v38;
        sub_1C4E2EC64();
        sub_1C4409A28();
        sub_1C43FBF44();
        sub_1C4DEBBF0(v184, v185, v186, v187, v188, v189, v190, v191, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);
        v110 = v29;
        if (v29)
        {

          goto LABEL_40;
        }

        sub_1C49D3614(v192);
      }

      sub_1C4E2EA34(a27);
      if (v30)
      {
        v271 = v41;
        v193 = v110;
        v36 = sub_1C4428DA0();
        v194 = *v38;
        sub_1C4E2E21C();
        for (i = 0; v36 != i; ++i)
        {
          if (v38)
          {
            v204 = sub_1C440BB4C();
            v70 = MEMORY[0x1C6940F90](v204);
          }

          else
          {
            sub_1C4E2E9D8();
            if (v106)
            {
              goto LABEL_78;
            }

            sub_1C4E2E1F4();
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_77;
          }

          sub_1C4E2D4C0();
          v195 = sub_1C4E2E0BC();
          sub_1C4DE5C70(v195, v196, v197, v198, v199, v200, v201, v202, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);
          v193 = v29;
          if (v29)
          {
            goto LABEL_67;
          }

          v28 = &v275;
          sub_1C49D3614(v203);
        }

        v28 = v273;
        v70 = v274;
        v110 = v193;
        sub_1C44225D8();
        v41 = v271;
        sub_1C4E2DDF0();
      }

      v205 = v275;
      if (*(v275 + 16))
      {
        v206 = v28;
        v207 = a28;
        (*(v269 + 16))(v257, v41 + *v38, v263);
        sub_1C4458608();
        v208 = v257 + *(v70 + 20);
        sub_1C4EFEBB8();
        v209 = v41 + *v207;
        sub_1C4EFD2F8();
        sub_1C44106D4();
        sub_1C4E2E420();
        sub_1C449ED64(v41 + v210, v257 + *(v70 + 36));
        sub_1C4EF9AE8();
        sub_1C4E2E4F8();
        sub_1C4EFF888();
        v211 = v257 + *(v70 + 28);
        sub_1C4EFEC38();
        v212 = (v257 + *(v70 + 32));
        *v212 = v209;
        v212[1] = v110;
        v213 = (v257 + *(v70 + 40));
        *v213 = v206;
        v213[1] = v70;
        *(v257 + *(v70 + 44)) = v32;
        *(v257 + *(v70 + 48)) = v272;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = *(v205 + 16);
          v249 = sub_1C43FCEC0();
          sub_1C44C9240(v249, v250, v251, v205);
          v205 = v252;
        }

        v215 = *(v205 + 16);
        v214 = *(v205 + 24);
        sub_1C4E2E824();
        if (v106)
        {
          sub_1C4460700();
          sub_1C44C9240(v253, v254, v255, v205);
          v205 = v256;
        }

        *(v205 + 16) = v209;
        v216 = *(v63 + 80);
        sub_1C43FC354();
        v217 = *(v63 + 72);
        v218 = sub_1C443F1AC();
        sub_1C4A948D8(v218, v219);
      }

      goto LABEL_40;
    }

    v271 = v41;
    v172 = v110;
    v36 = sub_1C4428DA0();
    v173 = *v38;
    sub_1C4E2E21C();
    for (i = 0; ; ++i)
    {
      if (v36 == i)
      {

        v28 = v273;
        v70 = v274;
        v110 = v172;
        sub_1C44225D8();
        v41 = v271;
        sub_1C4E2DDF0();
        goto LABEL_53;
      }

      if (v38)
      {
        v183 = sub_1C440BB4C();
        v70 = MEMORY[0x1C6940F90](v183);
      }

      else
      {
        sub_1C4E2E9D8();
        if (v106)
        {
          goto LABEL_76;
        }

        sub_1C4E2E1F4();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C4E2D4C0();
      v174 = sub_1C4E2E0BC();
      sub_1C4DE44E8(v174, v175, v176, v177, v178, v179, v180, v181, v257, v258);
      v172 = v29;
      if (v29)
      {
LABEL_67:

        goto LABEL_40;
      }

      v28 = &v275;
      sub_1C49D3614(v182);
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    sub_1C4E2D230();
    sub_1C44C9240(v220, v221, v222, v70);
    v70 = v223;
  }

  sub_1C4E2D8F4();

  v29 = v271;
  sub_1C4DE69B4();
  if (v271)
  {
    goto LABEL_39;
  }

  sub_1C4E2DB68(v111);
  if (!v112)
  {

LABEL_25:
    v28 = v273;
    goto LABEL_26;
  }

  v113 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v113);
  sub_1C4E2D434();
  v114 = sub_1C44302FC();
  v115(v114);
  v116 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
  sub_1C4E2D16C();
  sub_1C47CBF50(v109 + v116, v93);
  v117 = sub_1C4EFEEF8();
  sub_1C440175C(v93, 1, v117);
  if (!v118)
  {

    v119 = v109 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
    v267 = sub_1C4EFF048();
    v30 = v120;
    sub_1C4E2E420();
    v121 = v268[9];
    sub_1C442C004();
    sub_1C449ED64(v123, v119 + v122);
    sub_1C4EF9AE8();
    v32 = v124;
    v125 = v119 + v268[6];
    sub_1C4EFF888();
    v126 = v119 + v268[7];
    sub_1C4EFEC38();
    v127 = sub_1C4E2E51C(v269);
    v128(v127, v262, v263);
    v129 = v268[5];
    sub_1C4E2C9A8();
    (*(v130 + 32))(v119 + v131, v270, v117);
    sub_1C4E2EA14((v119 + v268[8]));
    v132 = (v119 + v268[10]);
    *v132 = v273;
    v132[1] = v274;
    *(v119 + v268[11]) = v32;
    sub_1C4E2E238(v268[12]);
    v70 = v275;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = *(v70 + 16);
      v231 = sub_1C43FCEC0();
      sub_1C44C9240(v231, v232, v233, v70);
      v70 = v234;
    }

    v110 = v271;
    sub_1C4485C88();
    if (v106)
    {
      sub_1C4460700();
      sub_1C44C9240(v235, v236, v237, v70);
      v70 = v238;
    }

    *(v70 + 16) = v119;
    v133 = *(v63 + 80);
    sub_1C4E2C938();
    sub_1C4E2D7F0(v134);
    v135 = sub_1C4E2DDE4();
    sub_1C4A948D8(v135, v136);
    v275 = v70;
    goto LABEL_25;
  }

  __break(1u);
LABEL_81:
  __break(1u);
}