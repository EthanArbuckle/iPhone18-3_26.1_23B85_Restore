unint64_t sub_1C4DF2110(char a1)
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
      result = 0x65746144736168;
      break;
    case 12:
      result = 0xD000000000000017;
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

uint64_t sub_1C4DF22C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DF1CC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DF22EC(uint64_t a1)
{
  v2 = sub_1C4E28CBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DF2328(uint64_t a1)
{
  v2 = sub_1C4E28CBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DF2364()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_startingLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_endLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_identifier);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasDate);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasLocationRelationship);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasAttendee);

  return v0;
}

void sub_1C4DF2530()
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
  v13 = sub_1C456902C(&qword_1EC0C8488, &qword_1C4F774C0);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E28CBC();
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
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_startingLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_endLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasAttendee);
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

void sub_1C4DF2AC8()
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
  v78 = sub_1C456902C(&qword_1EC0C8700, &qword_1C4F77658);
  sub_1C43FCDF8(v78);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v76);
  v30 = sub_1C4473DCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_predicate);
  sub_1C4E2DF24(v30, v31, v32);
  sub_1C4E2DCCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_entityClass);
  sub_1C4EFD2B8();
  v33 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v34 = type metadata accessor for Source();
  sub_1C4E2DCF0(v34, qword_1EDDFED10);
  sub_1C4E2E3A8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_name_predicate);
  sub_1C4E2DD64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2DD58(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence);
  sub_1C4E2CF28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_startingLocation);
  sub_1C4E2CF18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_endLocation);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_identifier) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasDate) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasLocationRelationship) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasAttendee) = 0;
  sub_1C4E2C7E8();
  sub_1C4E28CBC();
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
    v43 = sub_1C4E2CD60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_name_predicate);
    (v0)(v43);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_name);
    v44 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence_predicate);
    (v0)(v44);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence);
    v45 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_startingLocation];

    v46 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_endLocation];

    v47 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_identifier];

    v48 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasDate];

    v49 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasLocationRelationship];

    v50 = *&v33[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_hasAttendee];

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
    v54 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_entityIdentifier);
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

uint64_t sub_1C4DF31D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DF2A9C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DF3224()
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
  sub_1C4E2E444(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_bundleIdentifier);
  v13 = &qword_1EC151FF8[1];
  if (v3 && (sub_1C4E2CEB8(v12), v14))
  {
    v15 = v13[449];
    v16 = sub_1C4EFF0C8();
    sub_1C43FCE50(v16);
    v18 = *(v17 + 16);
    v19 = sub_1C4E2E084();
    v20(v19);
    v8 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_bundleIdentifier_predicate;
    sub_1C4433D44();
    v21 = sub_1C4E2EC34();
    sub_1C43FCE50(v21);
    v23 = *(v22 + 16);
    v24 = sub_1C4E2EA08();
    v25(v24);
    v26 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_source);
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
    v13 = qword_1EC151FF8 + 8;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (*(v3 + 16))
  {
    v35 = v13[449];
    v36 = sub_1C4EFF0C8();
    sub_1C43FCE50(v36);
    v38 = *(v37 + 16);
    v39 = sub_1C4E2E4EC();
    v40(v39);
    sub_1C4E2E798();
    sub_1C4EFD2F8();
    sub_1C440D158();
    v41 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_source);
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

void sub_1C4DF34A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  sub_1C44D4078(v25);
  v26 = sub_1C4F00DD8();
  v27 = sub_1C43FFAE0(v26, &a16);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v30);
  v31 = sub_1C4F00DC8();
  v32 = sub_1C43FFAE0(v31, &a18);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C4410058(v35, v127);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  sub_1C4460940(v37);
  v38 = sub_1C4F01188();
  v39 = sub_1C43FCDF8(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C441BFD4(v42, v128);
  v43 = sub_1C4EFD548();
  v44 = sub_1C44348EC(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C4441388(v47, v129);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C4E2D074();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C447F150();
  v50 = type metadata accessor for Source();
  v51 = sub_1C440F834(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C442599C();
  v54 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v54);
  v56 = *(v55 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FE938(v58, v130);
  v135 = sub_1C4EFF0C8();
  v59 = sub_1C43FCDF8(v135);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD2D8();
  sub_1C4E2E038(v62);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v63, v64, v65, v66);
  v67 = sub_1C4EFD538();
  v68 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v67 = swift_once();
  }

  sub_1C4E2E994(v67, qword_1EDDFED10);
  sub_1C4EFE778();
  sub_1C4E2E6E8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_bundleIdentifier);
  v69 = sub_1C4E2E468();
  (v68)(v69);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v70 = sub_1C4F00978();
  sub_1C442B738(v70, qword_1EDE2DE10);
  sub_1C4E2D420();
  *(v71 - 256) = v68;
  v68();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v72 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4E2E7E0();
  os_log_type_enabled(v72, v68);
  sub_1C4E2E970();
  if (v73)
  {
    sub_1C4495448();
    v74 = sub_1C4488A10();
    sub_1C4E2DB74(v74);
    sub_1C4E2D4A8(4.8453e-34);
    v76 = sub_1C441D828(v137, v136, v75);
    sub_1C4485F78(v76);
    sub_1C442DB9C();
    sub_1C4E276B4(v77, v78);
    sub_1C4E2DA78();
    sub_1C4434430();
    v79 = sub_1C4E2E8CC();
    v131 = v80;
    (v80)(v79);
    v81 = sub_1C4409A28();
    sub_1C441D828(v81, v82, v83);
    sub_1C43FEF2C();

    sub_1C4414088();
    sub_1C4E2EA8C(&dword_1C43F8000, v84, v85, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4E2E0D8();
    sub_1C4E2D9E4();
    sub_1C4E2D23C();
  }

  else
  {

    v86 = sub_1C4E2D3F8();
    v131 = v87;
    (v87)(v86);
  }

  v88 = *v21;
  v89 = v21[1];
  sub_1C4E2E01C();
  v90 = &v139;
  v91 = sub_1C43FBEF8();
  MEMORY[0x1C6940010](v91);

  sub_1C4E2E618();
  sub_1C442F9C8();
  sub_1C4F01148();
  v92 = sub_1C4E2D0A4();
  v93(v92);
  sub_1C4E2D49C();
  if (!v95 & v94)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2D490();
    v90 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v96 = sub_1C4415B1C();
      sub_1C44255B4(v96);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v24 + 4) = v68;
      sub_1C447CEB4(&dword_1C43F8000, v97, v98, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v99 = sub_1C44E7750();
    }

    else
    {

      v99 = sub_1C44BBD58();
    }

    v68 = v131;
    v114 = (v131)(v99);
    v115 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v100, v101);
    sub_1C4E2C974();
    v102 = sub_1C4409D98();
    sub_1C44344B8(v102, v103);
    sub_1C4E2CBF8();
    v104 = sub_1C4409D98();
    sub_1C441DFEC(v104, v105);
    sub_1C445BBB0(&a14);
    v106 = sub_1C445BE84(&a15);
    v107(v106);
    sub_1C4E2E3F0();
    sub_1C442913C();
    sub_1C4E2CEF4();
    v108();
    v109 = sub_1C4E2C834();
    v110(v109);
    sub_1C4E2DA1C();
    v111 = sub_1C447CD1C(v89);
    v112(v111);
    v113 = sub_1C4430818();
    v114 = (v68)(v113);
    v115 = 0;
  }

  sub_1C4E2DAFC(v114, v115);
  sub_1C448D818(v21);
  sub_1C43FC0FC(v90);
  if (v95)
  {
    sub_1C446F170(v138, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v116 = sub_1C43FFB2C();
    v118 = sub_1C4428F60(v116, v117);
    sub_1C4E2EBA4(v118, &qword_1EC0B9A08, &unk_1C4F107B0);
    v119 = sub_1C4495DFC();
    (v68)(v119);
    sub_1C448D818(v132 + v133);
    sub_1C441B884();
    (*(v120 + 8))(v132 + v121);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_bundleIdentifier);
    sub_1C44417C4();
    v123 = *(v122 + 48);
    v124 = *(v122 + 52);
    sub_1C4E2E010();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v125 = sub_1C4440EB0();
    v134(v125);
    v126 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_entityIdentifier);
    v134(v126);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

unint64_t sub_1C4DF3C28(char a1)
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
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DF3CF8(uint64_t a1)
{
  v2 = sub_1C4E28D10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DF3D34(uint64_t a1)
{
  v2 = sub_1C4E28D10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DF3D70()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_source + v0);
  v7 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_bundleIdentifier_predicate;
  v8 = sub_1C4EFEEF8();
  sub_1C43FD3F8(v8);
  (*(v9 + 8))(&v7[v0]);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_bundleIdentifier);
  return v0;
}

void sub_1C4DF3EA8()
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
  v11 = sub_1C456902C(&qword_1EC0C8498, &qword_1C4F774C8);
  sub_1C43FCDF8(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A474();
  v18 = *(v0 + 24);
  v17 = *(v0 + 32);
  sub_1C4E2C908();
  sub_1C4E28D10();
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
    sub_1C4E2D58C((v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_bundleIdentifier));
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

void sub_1C4DF426C()
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
  v16 = sub_1C456902C(&qword_1EC0C86F8, &qword_1C4F77650);
  sub_1C43FCDF8(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4401780();
  v20 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_predicate);
  sub_1C4E2EC1C(v20, v21, v22);
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_entityClass;
  sub_1C4EFD538();
  v24 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v25 = type metadata accessor for Source();
  v26 = sub_1C442B738(v25, qword_1EDDFED10);
  sub_1C449ED64(v26, v24 + v0);
  sub_1C4EFE778();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_bundleIdentifier);
  v27 = v1[3];
  v28 = v1[4];
  sub_1C445631C();
  sub_1C4E28D10();
  sub_1C4475644();
  sub_1C44804EC();
  v29 = sub_1C4F02BC8();
  if (v2)
  {
    sub_1C4E2E7C8(v29, &qword_1EC0B9A08, &unk_1C4F107B0);
    v32 = sub_1C4EFD548();
    sub_1C43FD3F8(v32);
    (*(v33 + 8))(v0 + v23);
    sub_1C448D818(v24 + v0);
    v34 = sub_1C4E2D40C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_bundleIdentifier_predicate);
    v35(v34);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_bundleIdentifier);
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
    v39 = sub_1C44D7338(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_entityIdentifier);
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

uint64_t sub_1C4DF46DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DF4240(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DF472C()
{
  sub_1C43FE628();
  v7 = v1;
  v9 = v8;
  v133 = v10;
  v141 = v11;
  v142 = v12;
  v13 = sub_1C4EFF0C8();
  v135 = sub_1C43FCDF8(v13);
  v136 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v135);
  sub_1C43FD2D8();
  v18 = sub_1C43FD2C8(v17);
  v132 = type metadata accessor for EntityTriple(v18);
  v19 = sub_1C43FCDF8(v132);
  v130 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v134 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C44107F0(v25, v26, v27, v28, v29, v30, v31, v32, v123);
  v138 = sub_1C4EFD548();
  v33 = sub_1C43FCDF8(v138);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4406BA0();
  v38 = sub_1C4EFF8A8();
  v39 = sub_1C43FCDF8(v38);
  v143 = v40;
  v144 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C44144E4();
  v44 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v45 = sub_1C43FBD18(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C4E2EA20();
  v49 = sub_1C4EFEEF8();
  v50 = sub_1C4425688(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C4410A24();
  v140 = *v9;
  v56 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_predicate;
  sub_1C44169A0();
  v57 = v7 + v56;
  v58 = v7;
  sub_1C47CBF50(v57, v0);
  sub_1C43FC0FC(v0);
  if (v59)
  {
    sub_1C446F170(v0, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v60 = sub_1C43FFB2C();
    sub_1C4414040(v60, v61);
LABEL_23:
    sub_1C44109F8();
    return;
  }

  v131 = v52;
  v125 = *(v52 + 32);
  v125(v4, v0, v3);
  v62 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_entityClass;
  (*(v35 + 16))(v6, v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_entityClass, v138);
  sub_1C4EFF838();
  v63 = MEMORY[0x1E69E7CC0];
  v146 = MEMORY[0x1E69E7CC0];
  v64 = *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_softwareIdentifier);
  if (!v64)
  {
    v139 = v4;
    v70 = v134;
    goto LABEL_16;
  }

  v58 = v64;
  sub_1C4DF3224();
  if (v2)
  {

    v66 = sub_1C4485C30();
    v67(v66);
    v68 = sub_1C4E2C9E8();
    v69(v68);
    goto LABEL_23;
  }

  v139 = v4;
  if (!*(v65 + 16))
  {

    v63 = MEMORY[0x1E69E7CC0];
    v70 = v134;
    sub_1C442C004();
LABEL_16:
    if (*(v63 + 16))
    {
      (*(v136 + 16))(v70, v133, v135);
      v92 = v132[5];
      sub_1C4E2DE58();
      v137 = v94;
      v95(v70 + v93, v139);
      (*(v143 + 16))(v70 + v132[6], v5, v144);
      v96 = v70 + v132[7];
      sub_1C4EFEBB8();
      sub_1C4EFD2F8();
      sub_1C440D158();
      sub_1C449ED64(v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_source, v70 + v132[9]);
      sub_1C4EF9AE8();
      v97 = (v70 + v132[8]);
      *v97 = v144;
      v97[1] = v58 + v62;
      v98 = (v70 + v132[10]);
      *v98 = v141;
      v98[1] = v142;
      *(v70 + v132[11]) = v99;
      *(v70 + v132[12]) = v140;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = *(v63 + 16);
        v106 = sub_1C43FCEC0();
        sub_1C44C9240(v106, v107, v108, v63);
        v63 = v109;
      }

      v101 = *(v63 + 16);
      v100 = *(v63 + 24);
      sub_1C4424824();
      if (v87)
      {
        v110 = sub_1C43FF640(v102);
        sub_1C44C9240(v110, v111, v112, v63);
        v63 = v113;
      }

      (*(v143 + 8))(v5);
      (*(v131 + 8))(v139, v137);
      *(v63 + 16) = v144;
      v103 = *(v130 + 80);
      sub_1C43FC354();
      sub_1C4A948D8(v70, v63 + v104 + *(v130 + 72) * v101);
    }

    else
    {
      (*(v143 + 8))(v5, v144);
      (*(v131 + 8))(v139, v3);
    }

    goto LABEL_23;
  }

  v71 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v71);
  (*(v136 + 16))(v129, v133, v135);
  (*(v52 + 16))(v127, v4, v3);
  (*(v143 + 16))(v128, v5, v144);
  v72 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_predicate;
  sub_1C440D164();
  sub_1C47CBF50(v64 + v72, v126);
  sub_1C4482D7C();
  if (!v59)
  {

    v58 = v64 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs8Software_entityIdentifier;
    v145 = sub_1C4EFF048();
    v124 = v73;
    v74 = v132[9];
    sub_1C4E2DE08();
    sub_1C449ED64(v76, v58 + v75);
    sub_1C4EF9AE8();
    v78 = v77;
    v79 = sub_1C4E2E51C(v136);
    v80(v79);
    v125(v58 + v132[5], v127, v3);
    (*(v143 + 32))(v58 + v132[6], v128, v144);
    v81 = v3;
    v125(v58 + v132[7], v126, v3);
    v82 = (v58 + v132[8]);
    *v82 = v145;
    v82[1] = v124;
    v83 = (v58 + v132[10]);
    *v83 = v141;
    v83[1] = v142;
    *(v58 + v132[11]) = v78;
    *(v58 + v132[12]) = v140;
    v63 = v146;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = *(v146 + 16);
      v115 = sub_1C43FCEC0();
      sub_1C44C9240(v115, v116, v117, v146);
      v63 = v118;
    }

    v70 = v134;
    v85 = *(v63 + 16);
    v84 = *(v63 + 24);
    sub_1C44019A4();
    if (v87)
    {
      v119 = sub_1C43FFD98(v86);
      sub_1C44C9240(v119, v120, v121, v63);
      v63 = v122;
    }

    *(v63 + 16) = v58;
    v88 = *(v130 + 80);
    sub_1C43FC354();
    v89 = *(v130 + 72);
    v90 = sub_1C4458588();
    sub_1C4A948D8(v90, v91);
    sub_1C442C004();
    v3 = v81;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1C4DF4F98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x80000001C4FC8D40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C4DF5100(char a1)
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
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DF5198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DF4F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DF51C0(uint64_t a1)
{
  v2 = sub_1C4E28D64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DF51FC(uint64_t a1)
{
  v2 = sub_1C4E28D64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DF5238()
{
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_source);
  v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_softwareIdentifier);

  return v0;
}

void sub_1C4DF530C()
{
  sub_1C44569B4();
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8);
      sub_1C4E2E9C0();
      v5 = type metadata accessor for Source();
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        sub_1C4E2DC2C();
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C4DF5408()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4440AD4();
  v8 = sub_1C456902C(&qword_1EC0C84A8, &qword_1C4F774D0);
  sub_1C43FCDF8(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4402A68();
  v15 = *(v3 + 24);
  v14 = *(v3 + 32);
  sub_1C4E2C908();
  sub_1C4E28D64();
  sub_1C4E2D814();
  sub_1C4F02BF8();
  sub_1C4433D44();
  sub_1C4E2E600();
  sub_1C4EFEEF8();
  sub_1C441ACD0();
  sub_1C4E276B4(v16, v17);
  sub_1C43FCB2C();
  sub_1C4F02778();
  sub_1C446F170(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (!v0)
  {
    sub_1C443E4C4(1);
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v18, v19);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C443E4C4(2);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v20, v21);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4E2E830(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_softwareIdentifier);
    type metadata accessor for LifeEventStructs.Software(0);
    sub_1C4E2D8DC();
    sub_1C4E276B4(v22, v23);
    sub_1C4414374();
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v24 = *(v10 + 8);
  v25 = sub_1C43FD024();
  v26(v25);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4DF569C()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD228();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v5 = type metadata accessor for Source();
  sub_1C4E2EB4C(v5, qword_1EDDFED10);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_softwareIdentifier) = 0;
  return v0;
}

void sub_1C4DF5764()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FE938(v9, v29);
  v10 = sub_1C456902C(&qword_1EC0C86F0, &qword_1C4F77648);
  sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440A474();
  v14 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_predicate;
  v15 = sub_1C4EFEEF8();
  v30 = v14;
  sub_1C43FCF64();
  sub_1C440BAA8(v16, v17, v18, v15);
  sub_1C4EFD228();
  v19 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v20 = type metadata accessor for Source();
  v21 = sub_1C442B738(v20, qword_1EDDFED10);
  sub_1C449ED64(v21, v2 + v19);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24SoftwareRelationshipType_softwareIdentifier) = 0;
  v22 = v4[4];
  sub_1C4417F50(v4, v4[3]);
  sub_1C4E28D64();
  sub_1C4E2E5AC();
  if (!v1)
  {
    LOBYTE(v32) = 0;
    sub_1C441ACD0();
    sub_1C4E276B4(v23, v24);
    sub_1C4E2DBEC();
    sub_1C4E2D28C();
    sub_1C4F02658();
    sub_1C44D7E3C();
    sub_1C449A970(v31, v2 + v30);
    swift_endAccess();
    type metadata accessor for LifeEventStructs.Software(0);
    sub_1C4E2D8DC();
    sub_1C4E276B4(v25, v26);
    sub_1C445FC54();
    sub_1C4E2CBD8();
    sub_1C4F02658();
    v27 = sub_1C4E2D3D8();
    v28(v27);
    sub_1C4488620(v32);
  }

  sub_1C440962C(v4);
  sub_1C4E2D0D4();
  sub_1C43FBC80();
}

uint64_t sub_1C4DF5A30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DF5738(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DF5ABC()
{
  sub_1C43FE628();
  v223 = v1;
  v4 = v0;
  v6 = v5;
  v227 = v7;
  v9 = v8;
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  sub_1C43FD2C8(v15);
  v16 = sub_1C4EFF0C8();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C44094C8(v22, v209);
  MEMORY[0x1EEE9AC00](v23);
  v32 = sub_1C44AE144(v24, v25, v26, v27, v28, v29, v30, v31, v210);
  v221 = type metadata accessor for EntityTriple(v32);
  v33 = sub_1C43FCDF8(v221);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C440273C();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C447CF24();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C44144E4();
  v228 = *v6;
  v42 = MEMORY[0x1E69E7CC0];
  v230[0] = MEMORY[0x1E69E7CC0];
  sub_1C4E2DFA8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name);
  v229 = v0;
  v222 = v19;
  v219 = v35;
  v220 = v16;
  if (!i)
  {
    goto LABEL_6;
  }

  sub_1C442632C(v43);
  if (!v44)
  {
    v4 = v0;
    goto LABEL_6;
  }

  sub_1C4E2DE58();
  v46(v3, &v0[v45], v16);
  v225 = v9;
  v47 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name_predicate;
  sub_1C4E2D564();
  v42 = v221;
  v35 = v221[5];
  v48 = sub_1C4EFEEF8();
  sub_1C43FCE50(v48);
  v50 = &v0[v47];
  v9 = v225;
  v16 = v227;
  (*(v49 + 16))(v3 + v35, v50);
  sub_1C449ED64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_source + v0, v3 + v221[9]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C440EEE0();
  sub_1C4EFF888();
  v51 = v3 + v221[7];
  sub_1C4EFEC38();
  sub_1C4E2DC70();
  *(v3 + v52) = v228;
  v53 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v53, v54, v55, MEMORY[0x1E69E7CC0]);
  sub_1C445FC80(v56);
  if (v58)
  {
    goto LABEL_84;
  }

  while (1)
  {
    sub_1C441E810();
    *(v42 + 16) = i;
    sub_1C443E250();
    sub_1C4A948D8(v3, v59);
    sub_1C4E2E244();
    sub_1C4E2D468();
LABEL_6:
    sub_1C4E2DFA8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence);
    if (i)
    {
      sub_1C442632C(v60);
      if (v61)
      {
        sub_1C4E2DE58();
        v63(v0, &v229[v62], v16);
        v64 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence_predicate;
        sub_1C4E2D474();
        v65 = sub_1C4E2D930();
        sub_1C43FCE50(v65);
        (*(v66 + 16))(v9 + v0, &v229[v64]);
        sub_1C449ED64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_source + v229, &v0[*(v16 + 36)]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DF74();
        sub_1C4E2D7B4();
        *v67 = v4;
        v67[1] = i;
        sub_1C4E2D7A8();
        *v68 = v9;
        v68[1] = v227;
        sub_1C4E2CAF4();
        v0[v69] = v228;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = *(v42 + 16);
          v174 = sub_1C43FCEC0();
          sub_1C44C9240(v174, v175, v176, v42);
          v42 = v177;
        }

        sub_1C4E2CE44();
        v35 = v219;
        if (v58)
        {
          v178 = sub_1C4413F5C(v70);
          sub_1C44C9240(v178, v179, v180, v42);
          v42 = v181;
        }

        *(v42 + 16) = i;
        sub_1C443E250();
        sub_1C4A948D8(v0, v71);
        v230[0] = v42;
      }

      v4 = v229;
    }

    v72 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_startingLocation);
    if (!v72)
    {
      goto LABEL_24;
    }

    sub_1C4E2E210();
    v1 = v223;
    sub_1C4DE69B4();
    v0 = v223;
    if (v223)
    {
      goto LABEL_38;
    }

    sub_1C4E2DCB4(v73);
    if (v74)
    {
      break;
    }

LABEL_25:
    v92 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_endLocation);
    if (v92)
    {

      sub_1C4E2E210();
      v1 = v0;
      sub_1C4DE69B4();
      if (v0)
      {
        goto LABEL_38;
      }

      sub_1C4E2DCB4(v93);
      if (v94)
      {
        v223 = 0;
        v95 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49D3614(v95);
        v96 = sub_1C4E2CFC4();
        v97(v96);
        v98 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
        sub_1C4E2CE74();
        sub_1C4E2D764();
        sub_1C4EFEEF8();
        sub_1C43FD490(v98);
        if (v78)
        {
          goto LABEL_86;
        }

        sub_1C4E2EC04();
        v99 = v92 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
        sub_1C4EFF048();
        sub_1C44106D4();
        v100 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_source);
        sub_1C4E2DD98(v100);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DDB4();
        v101 = sub_1C4E2D7C0(v222);
        v102(v101, v215, v42);
        sub_1C4E2CA28();
        v104 = *(v103 + 32);
        v106 = sub_1C4E2D67C(v105);
        v107(v106);
        sub_1C443E0A4();
        *v108 = v9;
        v108[1] = v227;
        sub_1C445AB58();
        *(v4 + v109) = v228;
        v42 = v230[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v191 = *(v42 + 16);
          v192 = sub_1C43FCEC0();
          sub_1C44C9240(v192, v193, v194, v42);
          v42 = v195;
        }

        sub_1C4414030();
        if (v58)
        {
          v196 = sub_1C43FFD98(v110);
          sub_1C44C9240(v196, v197, v198, v42);
          v42 = v199;
        }

        *(v42 + 16) = v99;
        sub_1C443E250();
        v111 = sub_1C44302FC();
        sub_1C4A948D8(v111, v112);
        sub_1C4E2E244();
        v0 = v1;
      }

      else
      {
      }
    }

    if (*(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasDate))
    {

      v113 = sub_1C4E2E320();
      v1 = v0;
      sub_1C4DECF58(v113, v227, v114, v115, v116, v117, v118, v119, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222);
      if (v0)
      {
LABEL_38:

        goto LABEL_39;
      }

      v16 = 0;
      v0 = v230;
      sub_1C49D3614(v120);
    }

    else
    {
      v16 = v0;
    }

    v226 = v9;
    if (!*(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_identifier))
    {
LABEL_53:
      v9 = &qword_1EC151FF8[1];
      v132 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasLocationRelationship);
      if (v132)
      {
        v133 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasLocationRelationship);
        v3 = sub_1C4428DA0();
        v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_entityIdentifier;
        sub_1C4E2D328();
        for (i = 0; v3 != i; ++i)
        {
          if (v35)
          {
            v143 = sub_1C43FD2BC();
            v42 = MEMORY[0x1C6940F90](v143);
          }

          else
          {
            sub_1C4E2E844();
            if (v58)
            {
              goto LABEL_83;
            }

            sub_1C4E2E10C();
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_82;
          }

          sub_1C4E2DBF8();
          sub_1C4E2D4B4();
          sub_1C4402EB0();
          sub_1C4DE5C70(v134, v135, v136, v137, v138, v139, v140, v141, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222);
          v16 = v1;
          if (v1)
          {
            goto LABEL_63;
          }

          v0 = v230;
          sub_1C49D3614(v142);
        }

        sub_1C441E810();
        v4 = v229;
      }

      if (*(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasAttendee))
      {
        sub_1C4E2EACC();
        v144 = sub_1C44C0500();
        sub_1C4DEBBF0(v144, v145, v146, v147, v148, v149, v150, v151, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222);
        if (!v1)
        {
          sub_1C49D3614(v152);

          goto LABEL_68;
        }

LABEL_70:

LABEL_71:
      }

      else
      {
LABEL_68:
        if (*&v229[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasSoftware])
        {
          sub_1C4E2EACC();
          sub_1C44C0500();
          sub_1C4DF472C();
          if (v1)
          {
            goto LABEL_70;
          }

          sub_1C49D3614(v153);
        }

        sub_1C4E2DA6C();
        if (v154)
        {
          (*(v222 + 16))(v212, &v229[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_entityIdentifier], v220);
          v155 = v212 + v221[5];
          sub_1C4EFEBB8();
          v156 = sub_1C4EFD2F8();
          v224 = v157;
          sub_1C449ED64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_source + v229, v212 + v221[9]);
          sub_1C4EF9AE8();
          v159 = v158;
          v160 = v212 + v221[6];
          sub_1C4EFF888();
          v161 = v212 + v221[7];
          sub_1C4EFEC38();
          v162 = (v212 + v221[8]);
          *v162 = v156;
          v162[1] = v224;
          v163 = (v212 + v221[10]);
          *v163 = v226;
          v163[1] = v227;
          *(v212 + v221[11]) = v159;
          *(v212 + v221[12]) = v228;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v200 = *(v132 + 16);
            v201 = sub_1C43FCEC0();
            sub_1C44C9240(v201, v202, v203, v132);
            v132 = v204;
          }

          sub_1C4E2C928();
          if (v58)
          {
            v205 = sub_1C43FFD98(v164);
            sub_1C44C9240(v205, v206, v207, v132);
            v132 = v208;
          }

          *(v132 + 16) = v156;
          v165 = *(v35 + 80);
          sub_1C43FE7E4();
          sub_1C4E2D7F0(v166);
          v167 = sub_1C441C660();
          sub_1C4A948D8(v167, v168);
        }
      }

LABEL_39:
      sub_1C440431C();
      sub_1C44109F8();
      return;
    }

    v121 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_identifier);
    v3 = sub_1C4428DA0();
    v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_entityIdentifier;
    sub_1C4E2D328();
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        sub_1C441E810();
        v4 = v229;
        goto LABEL_53;
      }

      if (v35)
      {
        v131 = sub_1C43FD2BC();
        v42 = MEMORY[0x1C6940F90](v131);
      }

      else
      {
        sub_1C4E2E844();
        if (v58)
        {
          goto LABEL_81;
        }

        sub_1C4E2E10C();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C4E2DBF8();
      sub_1C4E2D4B4();
      sub_1C4402EB0();
      sub_1C4DE44E8(v122, v123, v124, v125, v126, v127, v128, v129, v211, v212);
      v16 = v1;
      if (v1)
      {
LABEL_63:

        goto LABEL_71;
      }

      v0 = v230;
      sub_1C49D3614(v130);
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v169 = sub_1C4413F5C(v57);
    sub_1C44C9240(v169, v170, v171, v42);
    v42 = v172;
  }

  v223 = 0;
  v75 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v75);
  v76 = sub_1C44CD188();
  v77(v76);
  sub_1C4E2CB70();
  sub_1C4E2D64C();
  sub_1C4EFEEF8();
  sub_1C4410BC4(v9);
  if (!v78)
  {

    v79 = v72 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
    sub_1C4EFF048();
    sub_1C44106D4();
    v80 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_source);
    sub_1C4E2DB30(v80);
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DDB4();
    sub_1C4E2D7C0(v222);
    sub_1C446C204();
    v81();
    sub_1C4443500();
    v83 = *(v82 + 32);
    v85 = sub_1C4E2D68C(v84);
    v86(v85);
    sub_1C443E0A4();
    *v87 = v9;
    v87[1] = v227;
    sub_1C445AB58();
    *(v4 + v88) = v228;
    v42 = v230[0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = *(v42 + 16);
      v183 = sub_1C43FCEC0();
      sub_1C44C9240(v183, v184, v185, v42);
      v42 = v186;
    }

    sub_1C4414030();
    if (v58)
    {
      v187 = sub_1C43FFD98(v89);
      sub_1C44C9240(v187, v188, v189, v42);
      v42 = v190;
    }

    *(v42 + 16) = v79;
    sub_1C443E250();
    v90 = sub_1C4458588();
    sub_1C4A948D8(v90, v91);
    sub_1C4E2E244();
LABEL_24:
    v0 = v223;
    goto LABEL_25;
  }

  __break(1u);
LABEL_86:
  __break(1u);
}

void sub_1C4DF6668()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v8);
  v130 = sub_1C4F00DC8();
  v9 = sub_1C43FCDF8(v130);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44094C8(v12, v123);
  v14 = MEMORY[0x1EEE9AC00](v13);
  sub_1C44107F0(v14, v15, v16, v17, v18, v19, v20, v21, v124);
  v22 = sub_1C4F01188();
  v23 = sub_1C43FCDF8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440A3EC(v26, v125);
  v27 = sub_1C4EFD548();
  v28 = sub_1C44348EC(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4410058(v31, v126);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C442A5DC(v33, v34, v35, v36, v37, v38, v39, v40, v127);
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
  sub_1C43FE938(v50, v128);
  v51 = sub_1C4EFF0C8();
  v52 = sub_1C4425688(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4415E5C(v55, v129);
  v56 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v56);
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_entityClass;
  v58 = sub_1C4EFCF88();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasLocationRelationship) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasAttendee) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasSoftware);
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

    v59 = v131;
    v100 = v131(v86);
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
    sub_1C446F170(v133, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v102 = sub_1C43FFB2C();
    v104 = sub_1C4428F60(v102, v103);
    sub_1C4E2DEC4(v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    v105 = sub_1C4495DFC();
    v59(v105);
    sub_1C448D818(v0 + v132);
    sub_1C4425820();
    v107 = *(v106 + 8);
    v109 = sub_1C443E068(v108);
    v107(v109);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_startingLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_endLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasDate);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_identifier);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasLocationRelationship);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasAttendee);

    v117 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasSoftware);

    sub_1C44417C4();
    v119 = *(v118 + 48);
    v120 = *(v118 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v121 = sub_1C4440B80();
    v57(v121);
    v122 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_entityIdentifier);
    v57(v122);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4DF6E38(uint64_t a1, uint64_t a2)
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
                          v17 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x7774666F53736168 && a2 == 0xEB00000000657261)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1C4F02938();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

unint64_t sub_1C4DF72CC(char a1)
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
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x6E65747441736168;
      break;
    case 14:
      result = 0x7774666F53736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DF74A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DF6E38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DF74CC(uint64_t a1)
{
  v2 = sub_1C4E28DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DF7508(uint64_t a1)
{
  v2 = sub_1C4E28DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DF7544()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_startingLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_endLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasDate);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_identifier);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasLocationRelationship);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasAttendee);

  v18 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasSoftware);

  return v0;
}

void sub_1C4DF7720()
{
  sub_1C43FE96C();
  v2 = sub_1C4E2CC60();
  v3 = sub_1C43FCDF8(v2);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C441D0D8(v7, v43);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4410A24();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FE95C();
  v13 = sub_1C456902C(&qword_1EC0C84B8, &qword_1C4F774D8);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4402A68();
  sub_1C447F680();
  sub_1C4E28DB8();
  sub_1C44804EC();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v17, v18);
  sub_1C441D7EC();
  sub_1C4E2CC40();
  if (v0)
  {
    v19 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v21, v22);
    sub_1C4475568();
    sub_1C4E2EAAC();
    sub_1C446F170(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v23, v24);
    sub_1C43FCD50();
    sub_1C4F027E8();
    v25 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_source;
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v26, v27);
    sub_1C43FCD50();
    sub_1C4F027E8();
    v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name_predicate;
    sub_1C447CF8C();
    v29 = sub_1C4433B18();
    v30(v29);
    sub_1C443F48C();
    sub_1C4E2E0F4();
    sub_1C4F027E8();
    v31 = v25[1];
    v32 = sub_1C440A6C4();
    v31(v32);
    sub_1C4E2E380(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name);
    sub_1C43FBEF8();
    sub_1C4F02738();

    sub_1C4E2CB70();
    v33 = sub_1C4414468();
    v34(v33);
    sub_1C442AD78();
    sub_1C4E2E634();
    (v31)(v44, v28);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence);
    sub_1C442A65C();
    sub_1C4E2E0F4();
    sub_1C4F02738();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_startingLocation);
    sub_1C4401574();
    sub_1C4E276B4(v35, v36);
    sub_1C4E2D160();
    sub_1C4F02778();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_endLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v39, v40);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasSoftware);
    type metadata accessor for LifeEventStructs.SoftwareRelationshipType(0);
    sub_1C4E2D8B8();
    sub_1C4E276B4(v41, v42);
    sub_1C4411650();
    sub_1C4F02778();
    v19 = sub_1C4475668();
  }

  v20(v19);
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4DF7D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  sub_1C4482E40();
  v25 = sub_1C4EFEEF8();
  v26 = sub_1C4425688(v25);
  v110 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C440DC5C(v30, v105);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C446BD9C(v32, v33, v34, v35, v36, v37, v38, v39, v106);
  v40 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v40);
  v42 = *(v41 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  v109 = sub_1C44A3D38(v44, v107);
  v45 = sub_1C43FCDF8(v109);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD2D8();
  sub_1C445BEF4(v48);
  v49 = sub_1C456902C(&qword_1EC0C86E8, &qword_1C4F77640);
  sub_1C43FCDF8(v49);
  v51 = *(v50 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FCBE0(v53, v108);
  v54 = sub_1C4473DCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_predicate);
  sub_1C4D9A130(v54, v55, v56);
  sub_1C4E2DCCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_entityClass);
  sub_1C4EFCF88();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v57 = type metadata accessor for Source();
  sub_1C4E2DCF0(v57, qword_1EDDFED10);
  sub_1C4E2E3A8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name_predicate);
  sub_1C4E2DD64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2DD58(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence);
  sub_1C4E2CF28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_startingLocation);
  sub_1C4E2CF18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_endLocation);
  sub_1C4E2D298(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasDate);
  *(v22 + v58) = 0;
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_identifier) = 0;
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasLocationRelationship) = 0;
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasAttendee) = 0;
  v113 = v22;
  *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasSoftware) = 0;
  v60 = v20[3];
  v59 = v20[4];
  v112 = v20;
  v61 = sub_1C4409A28();
  sub_1C4417F50(v61, v62);
  sub_1C4E28DB8();
  sub_1C4E2D530();
  sub_1C4E2D160();
  sub_1C4F02BC8();
  if (v21)
  {
    sub_1C446F170(v113 + v111, &qword_1EC0B9A08, &unk_1C4F107B0);
    v65 = sub_1C4EFD548();
    sub_1C43FD3F8(v65);
    v67 = *(v66 + 8);
    v68 = sub_1C4E2D5B0();
    v69(v68);
    sub_1C4E2DE7C();
    v70 = *(v110 + 8);
    v71 = sub_1C441733C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name_predicate);
    v70(v71);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_name);
    v72 = sub_1C441733C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence_predicate);
    v70(v72);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence);
    v73 = *(v113 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_startingLocation);

    v74 = *(v113 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_endLocation);

    v75 = *(v113 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasDate);

    v76 = *(v113 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_identifier);

    v77 = *(v113 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasLocationRelationship);

    v78 = *(v113 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasAttendee);

    v79 = *(v113 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_hasSoftware);

    sub_1C44417C4();
    v81 = *(v80 + 48);
    v82 = *(v80 + 52);
    sub_1C4E2DE94();
    v104 = v112;
  }

  else
  {
    sub_1C4E2D598(&a9);
    sub_1C4420B30();
    sub_1C4E276B4(v63, v64);
    sub_1C4E2D518();
    sub_1C4424E10();
    v83 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_entityIdentifier);
    v84(v83);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v85, v86);
    sub_1C445AA54();
    sub_1C4460C48();
    sub_1C4F02658();
    sub_1C4E2D5BC();
    sub_1C4E2DA98();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v87 = sub_1C4449480();
    v59(v87);
    swift_endAccess();
    v88 = sub_1C44D4094();
    sub_1C4425188(v88, v89);
    sub_1C44514A8();
    sub_1C44AB1FC();
    v90 = sub_1C4E2CF08();
    v59(v90);
    swift_endAccess();
    v91 = sub_1C44D45AC();
    sub_1C4418DB0(v91, v92, &a13);
    sub_1C44A18F0();
    sub_1C4401574();
    sub_1C4E276B4(v93, v94);
    sub_1C4435DCC();
    sub_1C4E2E4B0();
    sub_1C4E2DD7C(v95);
    sub_1C4422610();
    sub_1C443F058(v114);

    sub_1C4E2C948();
    sub_1C441B2D4();
    sub_1C440B98C();
    sub_1C4E276B4(v96, v97);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C4422C90(v114);

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E2CA4C();
    sub_1C4E295F8();
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

    sub_1C4480640();
    sub_1C4414134();
    sub_1C4412AAC();
    sub_1C4E276B4(v98, v99);
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C441E968(v114);

    type metadata accessor for LifeEventStructs.SoftwareRelationshipType(0);
    sub_1C444AC68();
    sub_1C4E2D8B8();
    sub_1C4E276B4(v100, v101);
    sub_1C443F8E4();
    v102 = sub_1C4E2C9E8();
    v103(v102);
    sub_1C443F058(v114);

    v104 = v20;
  }

  sub_1C440962C(v104);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4DF85A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DF7D68(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DF862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v27;
  a20 = v28;
  sub_1C4E2C9B8(v29);
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v31 = sub_1C43FBD18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  sub_1C43FD2C8(v35);
  v36 = sub_1C4EFF0C8();
  v37 = sub_1C43FCDF8(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C44094C8(v42, v221);
  MEMORY[0x1EEE9AC00](v43);
  v52 = sub_1C44AE144(v44, v45, v46, v47, v48, v49, v50, v51, v222);
  v53 = type metadata accessor for EntityTriple(v52);
  v233 = sub_1C43FCDF8(v53);
  v234 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v233);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C440273C();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C447CF24();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C4E2C864();
  i = MEMORY[0x1E69E7CC0];
  v240[0] = MEMORY[0x1E69E7CC0];
  sub_1C4E2D2A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_name);
  sub_1C4E2E2F0();
  if (!v24)
  {
    goto LABEL_6;
  }

  sub_1C44181E4(v62);
  if (!v63)
  {
    v22 = v238;
    goto LABEL_6;
  }

  sub_1C4E2DFDC();
  sub_1C44CD0E0();
  v64 = sub_1C4E2E198();
  v65(v64);
  i = v23;
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_name_predicate;
  sub_1C4E2D1F0();
  v66 = sub_1C4E2D930();
  sub_1C43FCE50(v66);
  v68 = *(v67 + 16);
  v69 = sub_1C4E2D2B4();
  v70(v69);
  v71 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_source);
  sub_1C449ED64(v71, v25 + v72);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4414830();
  sub_1C4EFF888();
  sub_1C4E2E3D8();
  v73 = sub_1C442A80C();
  sub_1C4401EC4(v73, v74, v75, MEMORY[0x1E69E7CC0]);
  sub_1C445FC80(v76);
  if (v78)
  {
    goto LABEL_78;
  }

  while (1)
  {
    *(i + 16) = v23;
    sub_1C44056A4();
    sub_1C4A948D8(v25, v79);
    sub_1C4E2D134();
LABEL_6:
    sub_1C4E2D790(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence);
    if (!v24)
    {
      goto LABEL_14;
    }

    sub_1C44181E4(v80);
    if (!v81)
    {
      v22 = v238;
LABEL_14:
      v24 = v237;
      goto LABEL_15;
    }

    sub_1C4E2DFDC();
    sub_1C44CD0E0();
    v82(v20);
    v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence_predicate;
    sub_1C4E2D210();
    v83 = sub_1C4E2DAA4();
    sub_1C43FCE50(v83);
    v85 = *(v84 + 16);
    v86 = sub_1C4E2D318();
    v87(v86);
    v88 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_source);
    sub_1C449ED64(v88, v20 + v89);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DF74();
    sub_1C4440EE4();
    sub_1C4E2E68C(v90);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v185 = *(i + 16);
      v186 = sub_1C43FCEC0();
      sub_1C44C9240(v186, v187, v188, i);
      i = v189;
    }

    sub_1C4E2CE44();
    v26 = v231;
    if (v78)
    {
      v190 = sub_1C4413F5C(v91);
      sub_1C44C9240(v190, v191, v192, i);
      i = v193;
    }

    v36 = v235;
    *(i + 16) = v23;
    sub_1C4415270();
    sub_1C4A948D8(v20, v92);
    sub_1C4E2D344();
LABEL_15:
    v25 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_endLocation);
    if (!v25)
    {
      goto LABEL_25;
    }

    sub_1C4E2D014();
    v26 = v21;
    if (v21)
    {
      goto LABEL_27;
    }

    sub_1C4E2DE40(v93);
    if (!v94)
    {

      goto LABEL_25;
    }

    v95 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v95);
    sub_1C4E2CBE8();
    v96 = sub_1C4E2D7CC(&a16);
    v97(v96);
    sub_1C4E2CB70();
    sub_1C4E2D64C();
    v98 = sub_1C4EFEEF8();
    sub_1C4410BC4(v36);
    if (v99)
    {
      break;
    }

    v20 = (v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier);
    sub_1C4EFF048();
    sub_1C4416328();
    v100 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_source);
    sub_1C4E2DB30(v100);
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DDB4();
    v101 = sub_1C4E2D6D8();
    v102(v101);
    sub_1C4443500();
    v104 = *(v103 + 32);
    v106 = sub_1C4E2D68C(v105);
    v107(v106);
    sub_1C449F4C0();
    v23 = v236;
    *v108 = v239;
    v108[1] = v236;
    sub_1C4423984();
    sub_1C4E2E728();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = *(v98 + 16);
      v195 = sub_1C43FCEC0();
      sub_1C44C9240(v195, v196, v197, v98);
      v98 = v198;
    }

    sub_1C4414030();
    v39 = v232;
    v36 = v235;
    if (v78)
    {
      v199 = sub_1C43FFD98(v109);
      sub_1C44C9240(v199, v200, v201, v98);
      v98 = v202;
    }

    *(v98 + 16) = v20;
    sub_1C44056A4();
    v110 = sub_1C4458588();
    sub_1C4A948D8(v110, v111);
    sub_1C4E2D580();
LABEL_25:
    sub_1C4E2E1CC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_startingLocation);
    if (v24)
    {
      sub_1C4E2D8F4();

      sub_1C4E2D038();
      v26 = v21;
      if (v21)
      {
LABEL_27:

        goto LABEL_66;
      }

      sub_1C4E2DD4C(v112);
      if (v114)
      {
        v115 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49D3614(v115);
        sub_1C4E2CBE8();
        v116 = sub_1C4E2D7CC(&a13);
        v117(v116);
        v118 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
        sub_1C4E2CE74();
        sub_1C4E2D764();
        sub_1C4EFEEF8();
        sub_1C4410BC4(v118);
        if (v99)
        {
          goto LABEL_80;
        }

        v23 = v39;

        sub_1C4EFF048();
        sub_1C4408DEC();
        v119 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_source);
        sub_1C4E2DD98(v119);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DDB4();
        v120 = sub_1C4E2D6F0();
        v121(v120);
        sub_1C4443500();
        v123 = *(v122 + 32);
        v125 = sub_1C4E2D67C(v124);
        v126(v125);
        sub_1C4488888();
        v25 = v239;
        *v127 = v239;
        v127[1] = v236;
        sub_1C4423984();
        v20 = v240[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v203 = v20[2];
          v204 = sub_1C43FCEC0();
          sub_1C44C9240(v204, v205, v206, v20);
          v20 = v207;
        }

        v113 = qword_1EC151FF8 + 8;
        sub_1C4E2CE64();
        v39 = v232;
        if (v78)
        {
          v208 = sub_1C4413F5C(v128);
          sub_1C44C9240(v208, v209, v210, v20);
          v20 = v211;
        }

        v20[2] = v23;
        sub_1C447E440();
        v129 = sub_1C44302FC();
        sub_1C4A948D8(v129, v130);
        sub_1C4E2E1C0();
      }

      else
      {

        v113 = &qword_1EC151FF8[1];
        v25 = v239;
      }
    }

    else
    {
      v113 = qword_1EC151FF8 + 8;
    }

    v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasLocationRelationship);
    if (!v24)
    {
LABEL_48:
      if (!*(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasDate))
      {
        goto LABEL_51;
      }

      v21 = v113[462];
      sub_1C4E2E674();
      v141 = sub_1C441B67C();
      sub_1C4DECF58(v141, v142, v143, v144, v145, v146, v147, v148, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
      v26 = v21;
      if (v21)
      {
LABEL_53:
      }

      else
      {
        v20 = v240;
        sub_1C49D3614(v149);

LABEL_51:
        if (*(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasAttendee))
        {
          v21 = v113[462];
          sub_1C4E2E674();
          v150 = sub_1C441B67C();
          sub_1C4DEBBF0(v150, v151, v152, v153, v154, v155, v156, v157, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
          v26 = v21;
          if (v21)
          {
            goto LABEL_53;
          }

          v20 = v240;
          sub_1C49D3614(v158);
        }

        v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_identifier);
        v23 = v236;
        if (v24)
        {
          sub_1C4E2D7D8();
          v25 = sub_1C4428DA0();
          v22 = v113[462];
          sub_1C4E2D328();
          for (i = 0; v25 != i; ++i)
          {
            if (v26)
            {
              sub_1C4E2DF5C();
              v23 = v168;
            }

            else
            {
              sub_1C4E2D79C();
              if (v78)
              {
                goto LABEL_77;
              }

              sub_1C4E2D53C();
            }

            if (__OFADD__(i, 1))
            {
              goto LABEL_76;
            }

            v159 = sub_1C441F25C();
            sub_1C4DE44E8(v159, v160, v161, v162, v163, v164, v165, v166, v223, v224);
            v39 = v21;
            if (v21)
            {
              goto LABEL_65;
            }

            v20 = v240;
            sub_1C49D3614(v167);
          }

          v36 = v235;
          sub_1C4E2CE54();
          v170 = *(v169 - 256);
          v113 = &qword_1EC151FF8[1];
        }

        sub_1C4E2DA6C();
        if (v171)
        {
          v172 = v113[462];
          sub_1C4E2CD38();
          sub_1C4E2E408();
          v173 = sub_1C4E2D188();
          v174(v173);
          sub_1C4E2DAC0();
          v175 = v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_entityClass;
          sub_1C4EFD2F8();
          sub_1C4E2E310();
          sub_1C4E2D9C8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_source);
          sub_1C4EF9AE8();
          sub_1C4414830();
          sub_1C4EFF888();
          sub_1C4E2DDB4();
          sub_1C443E0A4();
          *v176 = v113;
          v176[1] = v36;
          sub_1C4423984();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v212 = *(v24 + 16);
            v213 = sub_1C43FCEC0();
            sub_1C44C9240(v213, v214, v215, v24);
            v24 = v216;
          }

          sub_1C4E2C928();
          if (v78)
          {
            v217 = sub_1C43FFD98(v177);
            sub_1C44C9240(v217, v218, v219, v24);
            v24 = v220;
          }

          *(v24 + 16) = v175;
          sub_1C449DBCC();
          sub_1C4E2CF9C(v178);
          v179 = sub_1C441C660();
          sub_1C4A948D8(v179, v180);
        }
      }

LABEL_66:
      sub_1C4E2D354();
      sub_1C44109F8();
      return;
    }

    sub_1C4E2D7D8();
    v25 = sub_1C4428DA0();
    v22 = v113[462];
    sub_1C4E2D328();
    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {

        v26 = v39;
        v22 = v238;
        v25 = v239;
        v36 = v235;
        sub_1C4E2D468();
        v113 = &qword_1EC151FF8[1];
        goto LABEL_48;
      }

      if (v26)
      {
        sub_1C4E2DF5C();
        v23 = v140;
      }

      else
      {
        sub_1C4E2D79C();
        if (v78)
        {
          goto LABEL_75;
        }

        sub_1C4E2D53C();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v131 = sub_1C441F25C();
      sub_1C4DE5C70(v131, v132, v133, v134, v135, v136, v137, v138, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
      v39 = v21;
      if (v21)
      {
LABEL_65:

        goto LABEL_66;
      }

      v20 = v240;
      sub_1C49D3614(v139);
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v181 = sub_1C4413F5C(v77);
    sub_1C44C9240(v181, v182, v183, i);
    i = v184;
  }

  __break(1u);
LABEL_80:
  __break(1u);
}

void sub_1C4DF9014()
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
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_entityClass;
  v58 = sub_1C4EFCF68();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasLocationRelationship) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasAttendee) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_identifier);
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
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_endLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_startingLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasLocationRelationship);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasDate);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasAttendee);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_identifier);

    sub_1C44417C4();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v120 = sub_1C4440B80();
    v57(v120);
    v121 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_entityIdentifier);
    v57(v121);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4DF97C8(uint64_t a1, uint64_t a2)
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
                        v16 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
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

                          else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

unint64_t sub_1C4DF9C14(char a1)
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
      result = 0x65746144736168;
      break;
    case 12:
      result = 0x6E65747441736168;
      break;
    case 13:
      result = 0x696669746E656469;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DF9DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DF97C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DF9DF0(uint64_t a1)
{
  v2 = sub_1C4E28E0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DF9E2C(uint64_t a1)
{
  v2 = sub_1C4E28E0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DF9E68()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_endLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_startingLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasLocationRelationship);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasDate);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasAttendee);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_identifier);

  return v0;
}

void sub_1C4DFA034()
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
  v13 = sub_1C456902C(&qword_1EC0C84C8, &qword_1C4F774E0);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E28E0C();
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
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_endLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_startingLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_identifier);
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

void sub_1C4DFA5CC()
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
  v76 = sub_1C456902C(&qword_1EC0C86E0, &qword_1C4F77638);
  sub_1C43FCDF8(v76);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v74);
  sub_1C44A3C3C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_predicate);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_entityClass);
  sub_1C4EFCF68();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v30 = type metadata accessor for Source();
  sub_1C4E2D85C(v30, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_name_predicate);
  sub_1C4E2DA60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence);
  sub_1C4E2CDD4();
  sub_1C4E2CE04();
  v31 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasLocationRelationship;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasLocationRelationship) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasDate) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasAttendee) = 0;
  sub_1C44A1F88(v32);
  sub_1C4E28E0C();
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
    v41 = sub_1C44D7418(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_name_predicate);
    v0(v41);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_name);
    v42 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence_predicate);
    v0(v42);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence);
    v43 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_endLocation);

    v44 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_startingLocation);

    v45 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasLocationRelationship);

    v46 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasDate);

    v47 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_hasAttendee);

    v48 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_identifier);

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
    v52 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_entityIdentifier);
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

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C44CD958();
    sub_1C4E29544();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C4E2C948();
    sub_1C448F0CC();
    sub_1C440B98C();
    sub_1C4E276B4(v64, v65);
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

uint64_t sub_1C4DFACB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DFA5A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DFAD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v27;
  a20 = v28;
  sub_1C4E2C9B8(v29);
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v31 = sub_1C43FBD18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  sub_1C43FD2C8(v35);
  v36 = sub_1C4EFF0C8();
  v37 = sub_1C43FCDF8(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C44094C8(v42, v221);
  MEMORY[0x1EEE9AC00](v43);
  v52 = sub_1C44AE144(v44, v45, v46, v47, v48, v49, v50, v51, v222);
  v53 = type metadata accessor for EntityTriple(v52);
  v233 = sub_1C43FCDF8(v53);
  v234 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v233);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C440273C();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C447CF24();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C4E2C864();
  i = MEMORY[0x1E69E7CC0];
  v240[0] = MEMORY[0x1E69E7CC0];
  sub_1C4E2D2A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_name);
  sub_1C4E2E2F0();
  if (!v24)
  {
    goto LABEL_6;
  }

  sub_1C44181E4(v62);
  if (!v63)
  {
    v22 = v238;
    goto LABEL_6;
  }

  sub_1C4E2DFDC();
  sub_1C44CD0E0();
  v64 = sub_1C4E2E198();
  v65(v64);
  i = v23;
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_name_predicate;
  sub_1C4E2D1F0();
  v66 = sub_1C4E2D930();
  sub_1C43FCE50(v66);
  v68 = *(v67 + 16);
  v69 = sub_1C4E2D2B4();
  v70(v69);
  v71 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_source);
  sub_1C449ED64(v71, v25 + v72);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4414830();
  sub_1C4EFF888();
  sub_1C4E2E3D8();
  v73 = sub_1C442A80C();
  sub_1C4401EC4(v73, v74, v75, MEMORY[0x1E69E7CC0]);
  sub_1C445FC80(v76);
  if (v78)
  {
    goto LABEL_78;
  }

  while (1)
  {
    *(i + 16) = v23;
    sub_1C44056A4();
    sub_1C4A948D8(v25, v79);
    sub_1C4E2D134();
LABEL_6:
    sub_1C4E2D790(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence);
    if (!v24)
    {
      goto LABEL_14;
    }

    sub_1C44181E4(v80);
    if (!v81)
    {
      v22 = v238;
LABEL_14:
      v24 = v237;
      goto LABEL_15;
    }

    sub_1C4E2DFDC();
    sub_1C44CD0E0();
    v82(v20);
    v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence_predicate;
    sub_1C4E2D210();
    v83 = sub_1C4E2DAA4();
    sub_1C43FCE50(v83);
    v85 = *(v84 + 16);
    v86 = sub_1C4E2D318();
    v87(v86);
    v88 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_source);
    sub_1C449ED64(v88, v20 + v89);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DF74();
    sub_1C4440EE4();
    sub_1C4E2E68C(v90);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v185 = *(i + 16);
      v186 = sub_1C43FCEC0();
      sub_1C44C9240(v186, v187, v188, i);
      i = v189;
    }

    sub_1C4E2CE44();
    v26 = v231;
    if (v78)
    {
      v190 = sub_1C4413F5C(v91);
      sub_1C44C9240(v190, v191, v192, i);
      i = v193;
    }

    v36 = v235;
    *(i + 16) = v23;
    sub_1C4415270();
    sub_1C4A948D8(v20, v92);
    sub_1C4E2D344();
LABEL_15:
    v25 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_startingLocation);
    if (!v25)
    {
      goto LABEL_25;
    }

    sub_1C4E2D014();
    v26 = v21;
    if (v21)
    {
      goto LABEL_27;
    }

    sub_1C4E2DE40(v93);
    if (!v94)
    {

      goto LABEL_25;
    }

    v95 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v95);
    sub_1C4E2CBE8();
    v96 = sub_1C4E2D7CC(&a16);
    v97(v96);
    sub_1C4E2CB70();
    sub_1C4E2D64C();
    v98 = sub_1C4EFEEF8();
    sub_1C4410BC4(v36);
    if (v99)
    {
      break;
    }

    v20 = (v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier);
    sub_1C4EFF048();
    sub_1C4416328();
    v100 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_source);
    sub_1C4E2DB30(v100);
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DDB4();
    v101 = sub_1C4E2D6D8();
    v102(v101);
    sub_1C4443500();
    v104 = *(v103 + 32);
    v106 = sub_1C4E2D68C(v105);
    v107(v106);
    sub_1C449F4C0();
    v23 = v236;
    *v108 = v239;
    v108[1] = v236;
    sub_1C4423984();
    sub_1C4E2E728();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = *(v98 + 16);
      v195 = sub_1C43FCEC0();
      sub_1C44C9240(v195, v196, v197, v98);
      v98 = v198;
    }

    sub_1C4414030();
    v39 = v232;
    v36 = v235;
    if (v78)
    {
      v199 = sub_1C43FFD98(v109);
      sub_1C44C9240(v199, v200, v201, v98);
      v98 = v202;
    }

    *(v98 + 16) = v20;
    sub_1C44056A4();
    v110 = sub_1C4458588();
    sub_1C4A948D8(v110, v111);
    sub_1C4E2D580();
LABEL_25:
    sub_1C4E2E1CC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_endLocation);
    if (v24)
    {
      sub_1C4E2D8F4();

      sub_1C4E2D038();
      v26 = v21;
      if (v21)
      {
LABEL_27:

        goto LABEL_66;
      }

      sub_1C4E2DD4C(v112);
      if (v114)
      {
        v115 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49D3614(v115);
        sub_1C4E2CBE8();
        v116 = sub_1C4E2D7CC(&a13);
        v117(v116);
        v118 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
        sub_1C4E2CE74();
        sub_1C4E2D764();
        sub_1C4EFEEF8();
        sub_1C4410BC4(v118);
        if (v99)
        {
          goto LABEL_80;
        }

        v23 = v39;

        sub_1C4EFF048();
        sub_1C4408DEC();
        v119 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_source);
        sub_1C4E2DD98(v119);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DDB4();
        v120 = sub_1C4E2D6F0();
        v121(v120);
        sub_1C4443500();
        v123 = *(v122 + 32);
        v125 = sub_1C4E2D67C(v124);
        v126(v125);
        sub_1C4488888();
        v25 = v239;
        *v127 = v239;
        v127[1] = v236;
        sub_1C4423984();
        v20 = v240[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v203 = v20[2];
          v204 = sub_1C43FCEC0();
          sub_1C44C9240(v204, v205, v206, v20);
          v20 = v207;
        }

        v113 = qword_1EC151FF8 + 8;
        sub_1C4E2CE64();
        v39 = v232;
        if (v78)
        {
          v208 = sub_1C4413F5C(v128);
          sub_1C44C9240(v208, v209, v210, v20);
          v20 = v211;
        }

        v20[2] = v23;
        sub_1C447E440();
        v129 = sub_1C44302FC();
        sub_1C4A948D8(v129, v130);
        sub_1C4E2E1C0();
      }

      else
      {

        v113 = &qword_1EC151FF8[1];
        v25 = v239;
      }
    }

    else
    {
      v113 = qword_1EC151FF8 + 8;
    }

    v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_identifier);
    if (!v24)
    {
LABEL_48:
      if (!*(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasDate))
      {
        goto LABEL_51;
      }

      v21 = v113[471];
      sub_1C4E2E674();
      v141 = sub_1C441B67C();
      sub_1C4DECF58(v141, v142, v143, v144, v145, v146, v147, v148, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
      v26 = v21;
      if (v21)
      {
LABEL_53:
      }

      else
      {
        v20 = v240;
        sub_1C49D3614(v149);

LABEL_51:
        if (*(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasAttendee))
        {
          v21 = v113[471];
          sub_1C4E2E674();
          v150 = sub_1C441B67C();
          sub_1C4DEBBF0(v150, v151, v152, v153, v154, v155, v156, v157, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
          v26 = v21;
          if (v21)
          {
            goto LABEL_53;
          }

          v20 = v240;
          sub_1C49D3614(v158);
        }

        v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasLocationRelationship);
        v23 = v236;
        if (v24)
        {
          sub_1C4E2D7D8();
          v25 = sub_1C4428DA0();
          v22 = v113[471];
          sub_1C4E2D328();
          for (i = 0; v25 != i; ++i)
          {
            if (v26)
            {
              sub_1C4E2DF5C();
              v23 = v168;
            }

            else
            {
              sub_1C4E2D79C();
              if (v78)
              {
                goto LABEL_77;
              }

              sub_1C4E2D53C();
            }

            if (__OFADD__(i, 1))
            {
              goto LABEL_76;
            }

            v159 = sub_1C441F25C();
            sub_1C4DE5C70(v159, v160, v161, v162, v163, v164, v165, v166, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
            v39 = v21;
            if (v21)
            {
              goto LABEL_65;
            }

            v20 = v240;
            sub_1C49D3614(v167);
          }

          v36 = v235;
          sub_1C4E2CE54();
          v170 = *(v169 - 256);
          v113 = &qword_1EC151FF8[1];
        }

        sub_1C4E2DA6C();
        if (v171)
        {
          v172 = v113[471];
          sub_1C4E2CD38();
          sub_1C4E2E408();
          v173 = sub_1C4E2D188();
          v174(v173);
          sub_1C4E2DAC0();
          v175 = v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_entityClass;
          sub_1C4EFD2F8();
          sub_1C4E2E310();
          sub_1C4E2D9C8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_source);
          sub_1C4EF9AE8();
          sub_1C4414830();
          sub_1C4EFF888();
          sub_1C4E2DDB4();
          sub_1C443E0A4();
          *v176 = v113;
          v176[1] = v36;
          sub_1C4423984();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v212 = *(v24 + 16);
            v213 = sub_1C43FCEC0();
            sub_1C44C9240(v213, v214, v215, v24);
            v24 = v216;
          }

          sub_1C4E2C928();
          if (v78)
          {
            v217 = sub_1C43FFD98(v177);
            sub_1C44C9240(v217, v218, v219, v24);
            v24 = v220;
          }

          *(v24 + 16) = v175;
          sub_1C449DBCC();
          sub_1C4E2CF9C(v178);
          v179 = sub_1C441C660();
          sub_1C4A948D8(v179, v180);
        }
      }

LABEL_66:
      sub_1C4E2D354();
      sub_1C44109F8();
      return;
    }

    sub_1C4E2D7D8();
    v25 = sub_1C4428DA0();
    v22 = v113[471];
    sub_1C4E2D328();
    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {

        v26 = v39;
        v22 = v238;
        v25 = v239;
        v36 = v235;
        sub_1C4E2D468();
        v113 = &qword_1EC151FF8[1];
        goto LABEL_48;
      }

      if (v26)
      {
        sub_1C4E2DF5C();
        v23 = v140;
      }

      else
      {
        sub_1C4E2D79C();
        if (v78)
        {
          goto LABEL_75;
        }

        sub_1C4E2D53C();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v131 = sub_1C441F25C();
      sub_1C4DE44E8(v131, v132, v133, v134, v135, v136, v137, v138, v223, v224);
      v39 = v21;
      if (v21)
      {
LABEL_65:

        goto LABEL_66;
      }

      v20 = v240;
      sub_1C49D3614(v139);
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v181 = sub_1C4413F5C(v77);
    sub_1C44C9240(v181, v182, v183, i);
    i = v184;
  }

  __break(1u);
LABEL_80:
  __break(1u);
}

void sub_1C4DFB724()
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
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_entityClass;
  v58 = sub_1C4EFD058();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasAttendee) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasLocationRelationship);
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
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_startingLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_endLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_identifier);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasDate);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasAttendee);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasLocationRelationship);

    sub_1C44417C4();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v120 = sub_1C4440B80();
    v57(v120);
    v121 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_entityIdentifier);
    v57(v121);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4DFBED8(uint64_t a1, uint64_t a2)
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
                        v16 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
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

unint64_t sub_1C4DFC324(char a1)
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
      result = 0x65746144736168;
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

uint64_t sub_1C4DFC4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DFBED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DFC500(uint64_t a1)
{
  v2 = sub_1C4E28E60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DFC53C(uint64_t a1)
{
  v2 = sub_1C4E28E60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DFC578()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_startingLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_endLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_identifier);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasDate);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasAttendee);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasLocationRelationship);

  return v0;
}

void sub_1C4DFC744()
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
  v13 = sub_1C456902C(&qword_1EC0C84D8, &qword_1C4F774E8);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E28E60();
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
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_startingLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_endLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasLocationRelationship);
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

void sub_1C4DFCCDC()
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
  v76 = sub_1C456902C(&qword_1EC0C86D8, &qword_1C4F77630);
  sub_1C43FCDF8(v76);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v74);
  sub_1C44A3C3C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_predicate);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_entityClass);
  sub_1C4EFD058();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v30 = type metadata accessor for Source();
  sub_1C4E2D85C(v30, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_name_predicate);
  sub_1C4E2DA60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence);
  sub_1C4E2CDD4();
  sub_1C4E2CE04();
  v31 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_identifier;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_identifier) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasDate) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasAttendee) = 0;
  sub_1C44A1F88(v32);
  sub_1C4E28E60();
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
    v41 = sub_1C44D7418(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_name_predicate);
    v0(v41);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_name);
    v42 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence_predicate);
    v0(v42);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence);
    v43 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_startingLocation);

    v44 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_endLocation);

    v45 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_identifier);

    v46 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasDate);

    v47 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasAttendee);

    v48 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_hasLocationRelationship);

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
    v52 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_entityIdentifier);
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

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C44CD958();
    sub_1C4E295F8();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C4E2C948();
    sub_1C448F0CC();
    sub_1C440B98C();
    sub_1C4E276B4(v64, v65);
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

uint64_t sub_1C4DFD3C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DFCCB0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DFD44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v27;
  a20 = v28;
  sub_1C4E2C9B8(v29);
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v31 = sub_1C43FBD18(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  sub_1C43FD2C8(v35);
  v36 = sub_1C4EFF0C8();
  v37 = sub_1C43FCDF8(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C44094C8(v42, v221);
  MEMORY[0x1EEE9AC00](v43);
  v52 = sub_1C44AE144(v44, v45, v46, v47, v48, v49, v50, v51, v222);
  v53 = type metadata accessor for EntityTriple(v52);
  v233 = sub_1C43FCDF8(v53);
  v234 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v233);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C440273C();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C447CF24();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C4E2C864();
  i = MEMORY[0x1E69E7CC0];
  v240[0] = MEMORY[0x1E69E7CC0];
  sub_1C4E2D2A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_name);
  sub_1C4E2E2F0();
  if (!v24)
  {
    goto LABEL_6;
  }

  sub_1C44181E4(v62);
  if (!v63)
  {
    v22 = v238;
    goto LABEL_6;
  }

  sub_1C4E2DFDC();
  sub_1C44CD0E0();
  v64 = sub_1C4E2E198();
  v65(v64);
  i = v23;
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_name_predicate;
  sub_1C4E2D1F0();
  v66 = sub_1C4E2D930();
  sub_1C43FCE50(v66);
  v68 = *(v67 + 16);
  v69 = sub_1C4E2D2B4();
  v70(v69);
  v71 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_source);
  sub_1C449ED64(v71, v25 + v72);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4414830();
  sub_1C4EFF888();
  sub_1C4E2E3D8();
  v73 = sub_1C442A80C();
  sub_1C4401EC4(v73, v74, v75, MEMORY[0x1E69E7CC0]);
  sub_1C445FC80(v76);
  if (v78)
  {
    goto LABEL_78;
  }

  while (1)
  {
    *(i + 16) = v23;
    sub_1C44056A4();
    sub_1C4A948D8(v25, v79);
    sub_1C4E2D134();
LABEL_6:
    sub_1C4E2D790(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence);
    if (!v24)
    {
      goto LABEL_14;
    }

    sub_1C44181E4(v80);
    if (!v81)
    {
      v22 = v238;
LABEL_14:
      v24 = v237;
      goto LABEL_15;
    }

    sub_1C4E2DFDC();
    sub_1C44CD0E0();
    v82(v20);
    v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence_predicate;
    sub_1C4E2D210();
    v83 = sub_1C4E2DAA4();
    sub_1C43FCE50(v83);
    v85 = *(v84 + 16);
    v86 = sub_1C4E2D318();
    v87(v86);
    v88 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_source);
    sub_1C449ED64(v88, v20 + v89);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DF74();
    sub_1C4440EE4();
    sub_1C4E2E68C(v90);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v185 = *(i + 16);
      v186 = sub_1C43FCEC0();
      sub_1C44C9240(v186, v187, v188, i);
      i = v189;
    }

    sub_1C4E2CE44();
    v26 = v231;
    if (v78)
    {
      v190 = sub_1C4413F5C(v91);
      sub_1C44C9240(v190, v191, v192, i);
      i = v193;
    }

    v36 = v235;
    *(i + 16) = v23;
    sub_1C4415270();
    sub_1C4A948D8(v20, v92);
    sub_1C4E2D344();
LABEL_15:
    v25 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_endLocation);
    if (!v25)
    {
      goto LABEL_25;
    }

    sub_1C4E2D014();
    v26 = v21;
    if (v21)
    {
      goto LABEL_27;
    }

    sub_1C4E2DE40(v93);
    if (!v94)
    {

      goto LABEL_25;
    }

    v95 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v95);
    sub_1C4E2CBE8();
    v96 = sub_1C4E2D7CC(&a16);
    v97(v96);
    sub_1C4E2CB70();
    sub_1C4E2D64C();
    v98 = sub_1C4EFEEF8();
    sub_1C4410BC4(v36);
    if (v99)
    {
      break;
    }

    v20 = (v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier);
    sub_1C4EFF048();
    sub_1C4416328();
    v100 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_source);
    sub_1C4E2DB30(v100);
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DDB4();
    v101 = sub_1C4E2D6D8();
    v102(v101);
    sub_1C4443500();
    v104 = *(v103 + 32);
    v106 = sub_1C4E2D68C(v105);
    v107(v106);
    sub_1C449F4C0();
    v23 = v236;
    *v108 = v239;
    v108[1] = v236;
    sub_1C4423984();
    sub_1C4E2E728();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = *(v98 + 16);
      v195 = sub_1C43FCEC0();
      sub_1C44C9240(v195, v196, v197, v98);
      v98 = v198;
    }

    sub_1C4414030();
    v39 = v232;
    v36 = v235;
    if (v78)
    {
      v199 = sub_1C43FFD98(v109);
      sub_1C44C9240(v199, v200, v201, v98);
      v98 = v202;
    }

    *(v98 + 16) = v20;
    sub_1C44056A4();
    v110 = sub_1C4458588();
    sub_1C4A948D8(v110, v111);
    sub_1C4E2D580();
LABEL_25:
    sub_1C4E2E1CC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_startingLocation);
    if (v24)
    {
      sub_1C4E2D8F4();

      sub_1C4E2D038();
      v26 = v21;
      if (v21)
      {
LABEL_27:

        goto LABEL_66;
      }

      sub_1C4E2DD4C(v112);
      if (v114)
      {
        v115 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49D3614(v115);
        sub_1C4E2CBE8();
        v116 = sub_1C4E2D7CC(&a13);
        v117(v116);
        v118 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
        sub_1C4E2CE74();
        sub_1C4E2D764();
        sub_1C4EFEEF8();
        sub_1C4410BC4(v118);
        if (v99)
        {
          goto LABEL_80;
        }

        v23 = v39;

        sub_1C4EFF048();
        sub_1C4408DEC();
        v119 = sub_1C4E2CAD4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_source);
        sub_1C4E2DD98(v119);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DDB4();
        v120 = sub_1C4E2D6F0();
        v121(v120);
        sub_1C4443500();
        v123 = *(v122 + 32);
        v125 = sub_1C4E2D67C(v124);
        v126(v125);
        sub_1C4488888();
        v25 = v239;
        *v127 = v239;
        v127[1] = v236;
        sub_1C4423984();
        v20 = v240[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v203 = v20[2];
          v204 = sub_1C43FCEC0();
          sub_1C44C9240(v204, v205, v206, v20);
          v20 = v207;
        }

        v113 = qword_1EC151FF8 + 8;
        sub_1C4E2CE64();
        v39 = v232;
        if (v78)
        {
          v208 = sub_1C4413F5C(v128);
          sub_1C44C9240(v208, v209, v210, v20);
          v20 = v211;
        }

        v20[2] = v23;
        sub_1C447E440();
        v129 = sub_1C44302FC();
        sub_1C4A948D8(v129, v130);
        sub_1C4E2E1C0();
      }

      else
      {

        v113 = &qword_1EC151FF8[1];
        v25 = v239;
      }
    }

    else
    {
      v113 = qword_1EC151FF8 + 8;
    }

    v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasLocationRelationship);
    if (!v24)
    {
LABEL_48:
      if (!*(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasAttendee))
      {
        goto LABEL_51;
      }

      v21 = v113[480];
      sub_1C4E2E674();
      v141 = sub_1C441B67C();
      sub_1C4DEBBF0(v141, v142, v143, v144, v145, v146, v147, v148, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
      v26 = v21;
      if (v21)
      {
LABEL_53:
      }

      else
      {
        v20 = v240;
        sub_1C49D3614(v149);

LABEL_51:
        if (*(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasDate))
        {
          v21 = v113[480];
          sub_1C4E2E674();
          v150 = sub_1C441B67C();
          sub_1C4DECF58(v150, v151, v152, v153, v154, v155, v156, v157, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
          v26 = v21;
          if (v21)
          {
            goto LABEL_53;
          }

          v20 = v240;
          sub_1C49D3614(v158);
        }

        v24 = *(v22 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_identifier);
        v23 = v236;
        if (v24)
        {
          sub_1C4E2D7D8();
          v25 = sub_1C4428DA0();
          v22 = v113[480];
          sub_1C4E2D328();
          for (i = 0; v25 != i; ++i)
          {
            if (v26)
            {
              sub_1C4E2DF5C();
              v23 = v168;
            }

            else
            {
              sub_1C4E2D79C();
              if (v78)
              {
                goto LABEL_77;
              }

              sub_1C4E2D53C();
            }

            if (__OFADD__(i, 1))
            {
              goto LABEL_76;
            }

            v159 = sub_1C441F25C();
            sub_1C4DE44E8(v159, v160, v161, v162, v163, v164, v165, v166, v223, v224);
            v39 = v21;
            if (v21)
            {
              goto LABEL_65;
            }

            v20 = v240;
            sub_1C49D3614(v167);
          }

          v36 = v235;
          sub_1C4E2CE54();
          v170 = *(v169 - 256);
          v113 = &qword_1EC151FF8[1];
        }

        sub_1C4E2DA6C();
        if (v171)
        {
          v172 = v113[480];
          sub_1C4E2CD38();
          sub_1C4E2E408();
          v173 = sub_1C4E2D188();
          v174(v173);
          sub_1C4E2DAC0();
          v175 = v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_entityClass;
          sub_1C4EFD2F8();
          sub_1C4E2E310();
          sub_1C4E2D9C8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_source);
          sub_1C4EF9AE8();
          sub_1C4414830();
          sub_1C4EFF888();
          sub_1C4E2DDB4();
          sub_1C443E0A4();
          *v176 = v113;
          v176[1] = v36;
          sub_1C4423984();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v212 = *(v24 + 16);
            v213 = sub_1C43FCEC0();
            sub_1C44C9240(v213, v214, v215, v24);
            v24 = v216;
          }

          sub_1C4E2C928();
          if (v78)
          {
            v217 = sub_1C43FFD98(v177);
            sub_1C44C9240(v217, v218, v219, v24);
            v24 = v220;
          }

          *(v24 + 16) = v175;
          sub_1C449DBCC();
          sub_1C4E2CF9C(v178);
          v179 = sub_1C441C660();
          sub_1C4A948D8(v179, v180);
        }
      }

LABEL_66:
      sub_1C4E2D354();
      sub_1C44109F8();
      return;
    }

    sub_1C4E2D7D8();
    v25 = sub_1C4428DA0();
    v22 = v113[480];
    sub_1C4E2D328();
    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {

        v26 = v39;
        v22 = v238;
        v25 = v239;
        v36 = v235;
        sub_1C4E2D468();
        v113 = &qword_1EC151FF8[1];
        goto LABEL_48;
      }

      if (v26)
      {
        sub_1C4E2DF5C();
        v23 = v140;
      }

      else
      {
        sub_1C4E2D79C();
        if (v78)
        {
          goto LABEL_75;
        }

        sub_1C4E2D53C();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v131 = sub_1C441F25C();
      sub_1C4DE5C70(v131, v132, v133, v134, v135, v136, v137, v138, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
      v39 = v21;
      if (v21)
      {
LABEL_65:

        goto LABEL_66;
      }

      v20 = v240;
      sub_1C49D3614(v139);
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v181 = sub_1C4413F5C(v77);
    sub_1C44C9240(v181, v182, v183, i);
    i = v184;
  }

  __break(1u);
LABEL_80:
  __break(1u);
}

void sub_1C4DFDE34()
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
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_entityClass;
  v58 = sub_1C4EFD078();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasLocationRelationship) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasAttendee) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasDate) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_identifier);
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
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_endLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_startingLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasLocationRelationship);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasAttendee);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasDate);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_identifier);

    sub_1C44417C4();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v120 = sub_1C4440B80();
    v57(v120);
    v121 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_entityIdentifier);
    v57(v121);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4DFE5E8(uint64_t a1, uint64_t a2)
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
                        v16 = a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564;
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

                          else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

unint64_t sub_1C4DFEA34(char a1)
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
      result = 0x6E65747441736168;
      break;
    case 12:
      result = 0x65746144736168;
      break;
    case 13:
      result = 0x696669746E656469;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DFEBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DFE5E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DFEC10(uint64_t a1)
{
  v2 = sub_1C4E28EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DFEC4C(uint64_t a1)
{
  v2 = sub_1C4E28EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DFEC88()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_endLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_startingLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasLocationRelationship);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasAttendee);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasDate);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_identifier);

  return v0;
}

void sub_1C4DFEE54()
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
  v13 = sub_1C456902C(&qword_1EC0C84E8, &qword_1C4F774F0);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E28EB4();
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
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_endLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_startingLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_identifier);
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

void sub_1C4DFF3EC()
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
  v76 = sub_1C456902C(&qword_1EC0C86D0, &qword_1C4F77628);
  sub_1C43FCDF8(v76);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v74);
  sub_1C44A3C3C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_predicate);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_entityClass);
  sub_1C4EFD078();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v30 = type metadata accessor for Source();
  sub_1C4E2D85C(v30, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_name_predicate);
  sub_1C4E2DA60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence);
  sub_1C4E2CDD4();
  sub_1C4E2CE04();
  v31 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasLocationRelationship;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasLocationRelationship) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasAttendee) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasDate) = 0;
  sub_1C44A1F88(v32);
  sub_1C4E28EB4();
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
    v41 = sub_1C44D7418(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_name_predicate);
    v0(v41);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_name);
    v42 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence_predicate);
    v0(v42);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence);
    v43 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_endLocation);

    v44 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_startingLocation);

    v45 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasLocationRelationship);

    v46 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasAttendee);

    v47 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_hasDate);

    v48 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_identifier);

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
    v52 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_entityIdentifier);
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

    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C44CD958();
    sub_1C4E29544();
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C444C4C0();

    sub_1C4480640();
    sub_1C448F0CC();
    sub_1C4412AAC();
    sub_1C4E276B4(v64, v65);
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

uint64_t sub_1C4DFFAD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DFF3C0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DFFB20()
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
  sub_1C4E2E444(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_name);
  v13 = &qword_1EC151FF8[1];
  if (v3 && (sub_1C4E2CEB8(v12), v14))
  {
    v15 = v13[489];
    v16 = sub_1C4EFF0C8();
    sub_1C43FCE50(v16);
    v18 = *(v17 + 16);
    v19 = sub_1C4E2E084();
    v20(v19);
    v8 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_name_predicate;
    sub_1C4433D44();
    v21 = sub_1C4E2EC34();
    sub_1C43FCE50(v21);
    v23 = *(v22 + 16);
    v24 = sub_1C4E2EA08();
    v25(v24);
    v26 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_source);
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
    v13 = qword_1EC151FF8 + 8;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (*(v3 + 16))
  {
    v35 = v13[489];
    v36 = sub_1C4EFF0C8();
    sub_1C43FCE50(v36);
    v38 = *(v37 + 16);
    v39 = sub_1C4E2E4EC();
    v40(v39);
    sub_1C4E2E798();
    sub_1C4EFD2F8();
    sub_1C440D158();
    v41 = sub_1C4E2D7E4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_source);
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

void sub_1C4DFFDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  sub_1C44D4078(v25);
  v26 = sub_1C4F00DD8();
  v27 = sub_1C43FFAE0(v26, &a16);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v30);
  v31 = sub_1C4F00DC8();
  v32 = sub_1C43FFAE0(v31, &a18);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C4410058(v35, v127);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  sub_1C4460940(v37);
  v38 = sub_1C4F01188();
  v39 = sub_1C43FCDF8(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C441BFD4(v42, v128);
  v43 = sub_1C4EFD548();
  v44 = sub_1C44348EC(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C4441388(v47, v129);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C4E2D074();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C447F150();
  v50 = type metadata accessor for Source();
  v51 = sub_1C440F834(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C442599C();
  v54 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v54);
  v56 = *(v55 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FE938(v58, v130);
  v135 = sub_1C4EFF0C8();
  v59 = sub_1C43FCDF8(v135);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD2D8();
  sub_1C4E2E038(v62);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v63, v64, v65, v66);
  v67 = sub_1C4EFD128();
  v68 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v67 = swift_once();
  }

  sub_1C4E2E994(v67, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4E2E6E8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_name);
  v69 = sub_1C4E2E468();
  (v68)(v69);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v70 = sub_1C4F00978();
  sub_1C442B738(v70, qword_1EDE2DE10);
  sub_1C4E2D420();
  *(v71 - 256) = v68;
  v68();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v72 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4E2E7E0();
  os_log_type_enabled(v72, v68);
  sub_1C4E2E970();
  if (v73)
  {
    sub_1C4495448();
    v74 = sub_1C4488A10();
    sub_1C4E2DB74(v74);
    sub_1C4E2D4A8(4.8453e-34);
    v76 = sub_1C441D828(v137, v136, v75);
    sub_1C4485F78(v76);
    sub_1C442DB9C();
    sub_1C4E276B4(v77, v78);
    sub_1C4E2DA78();
    sub_1C4434430();
    v79 = sub_1C4E2E8CC();
    v131 = v80;
    (v80)(v79);
    v81 = sub_1C4409A28();
    sub_1C441D828(v81, v82, v83);
    sub_1C43FEF2C();

    sub_1C4414088();
    sub_1C4E2EA8C(&dword_1C43F8000, v84, v85, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4E2E0D8();
    sub_1C4E2D9E4();
    sub_1C4E2D23C();
  }

  else
  {

    v86 = sub_1C4E2D3F8();
    v131 = v87;
    (v87)(v86);
  }

  v88 = *v21;
  v89 = v21[1];
  sub_1C4E2E01C();
  v90 = &v139;
  v91 = sub_1C43FBEF8();
  MEMORY[0x1C6940010](v91);

  sub_1C4E2E618();
  sub_1C442F9C8();
  sub_1C4F01148();
  v92 = sub_1C4E2D0A4();
  v93(v92);
  sub_1C4E2D49C();
  if (!v95 & v94)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4E2D490();
    v90 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C43FD000();
    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v96 = sub_1C4415B1C();
      sub_1C44255B4(v96);
      sub_1C4495428(4.845e-34);
      sub_1C4406248();
      *(v24 + 4) = v68;
      sub_1C447CEB4(&dword_1C43F8000, v97, v98, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C447E810();
      sub_1C44A156C();

      v99 = sub_1C44E7750();
    }

    else
    {

      v99 = sub_1C44BBD58();
    }

    v68 = v131;
    v114 = (v131)(v99);
    v115 = 1;
  }

  else
  {

    sub_1C4432FC0();
    sub_1C4E276B4(v100, v101);
    sub_1C4E2C974();
    v102 = sub_1C4409D98();
    sub_1C44344B8(v102, v103);
    sub_1C4E2CBF8();
    v104 = sub_1C4409D98();
    sub_1C441DFEC(v104, v105);
    sub_1C445BBB0(&a14);
    v106 = sub_1C445BE84(&a15);
    v107(v106);
    sub_1C4E2E3F0();
    sub_1C442913C();
    sub_1C4E2CEF4();
    v108();
    v109 = sub_1C4E2C834();
    v110(v109);
    sub_1C4E2DA1C();
    v111 = sub_1C447CD1C(v89);
    v112(v111);
    v113 = sub_1C4430818();
    v114 = (v68)(v113);
    v115 = 0;
  }

  sub_1C4E2DAFC(v114, v115);
  sub_1C448D818(v21);
  sub_1C43FC0FC(v90);
  if (v95)
  {
    sub_1C446F170(v138, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v116 = sub_1C43FFB2C();
    v118 = sub_1C4428F60(v116, v117);
    sub_1C4E2EBA4(v118, &qword_1EC0B9A08, &unk_1C4F107B0);
    v119 = sub_1C4495DFC();
    (v68)(v119);
    sub_1C448D818(v132 + v133);
    sub_1C441B884();
    (*(v120 + 8))(v132 + v121);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_name);
    sub_1C44417C4();
    v123 = *(v122 + 48);
    v124 = *(v122 + 52);
    sub_1C4E2E010();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v125 = sub_1C4440EB0();
    v134(v125);
    v126 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_entityIdentifier);
    v134(v126);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E00524(uint64_t a1)
{
  v2 = sub_1C4E28F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E00560(uint64_t a1)
{
  v2 = sub_1C4E28F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E0059C()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_source + v0);
  v7 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_name_predicate;
  v8 = sub_1C4EFEEF8();
  sub_1C43FD3F8(v8);
  (*(v9 + 8))(&v7[v0]);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_name);
  return v0;
}

void sub_1C4E006D4()
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
  v11 = sub_1C456902C(&qword_1EC0C84F8, &qword_1C4F774F8);
  sub_1C43FCDF8(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A474();
  v18 = *(v0 + 24);
  v17 = *(v0 + 32);
  sub_1C4E2C908();
  sub_1C4E28F08();
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
    sub_1C4E2D58C((v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_name));
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

void sub_1C4E00A98()
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
  v16 = sub_1C456902C(&qword_1EC0C86C8, &qword_1C4F77620);
  sub_1C43FCDF8(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4401780();
  v20 = sub_1C44F0C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_predicate);
  sub_1C4E2EC1C(v20, v21, v22);
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_entityClass;
  sub_1C4EFD128();
  v24 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v25 = type metadata accessor for Source();
  v26 = sub_1C442B738(v25, qword_1EDDFED10);
  sub_1C449ED64(v26, v24 + v0);
  sub_1C4EFEBF8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_name);
  v27 = v1[3];
  v28 = v1[4];
  sub_1C445631C();
  sub_1C4E28F08();
  sub_1C4475644();
  sub_1C44804EC();
  v29 = sub_1C4F02BC8();
  if (v2)
  {
    sub_1C4E2E7C8(v29, &qword_1EC0B9A08, &unk_1C4F107B0);
    v32 = sub_1C4EFD548();
    sub_1C43FD3F8(v32);
    (*(v33 + 8))(v0 + v23);
    sub_1C448D818(v24 + v0);
    v34 = sub_1C4E2D40C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_name_predicate);
    v35(v34);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_name);
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
    v39 = sub_1C44D7338(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_entityIdentifier);
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

uint64_t sub_1C4E00F08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E00A6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E00F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v24;
  a20 = v26;
  v279 = v21;
  v27 = v20;
  v29 = v28;
  v285 = v30;
  v32 = v31;
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v34 = sub_1C43FBD18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C44094C8(v37, v264);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  sub_1C43FD2C8(v40);
  v41 = sub_1C4EFF0C8();
  v42 = sub_1C43FCDF8(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C4485E4C();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v50 = sub_1C43FD2C8(v49);
  v51 = type metadata accessor for EntityTriple(v50);
  v52 = sub_1C43FFAE0(v51, &a16);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C4458614();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C4485B28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C440D100();
  v286 = *v29;
  v60 = MEMORY[0x1E69E7CC0];
  v287[0] = MEMORY[0x1E69E7CC0];
  i = *&v20[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name + 8];
  v276 = v41;
  v277 = v44;
  if (!i)
  {
    goto LABEL_5;
  }

  sub_1C442632C(&v20[OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name]);
  if (!v62)
  {
    goto LABEL_5;
  }

  sub_1C4E2D280();
  v64(v23, &v20[v63], v41);
  v41 = v32;
  v65 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name_predicate;
  sub_1C440D164();
  v44 = v278;
  v66 = v278[5];
  v67 = sub_1C4EFEEF8();
  sub_1C43FCE50(v67);
  v69 = &v20[v65];
  v32 = v41;
  (*(v68 + 16))(v23 + v66, v69);
  v70 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_source);
  sub_1C449ED64(v70, v23 + v71);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4414830();
  sub_1C4EFF888();
  v72 = v23 + v278[7];
  sub_1C4EFEC38();
  v73 = (v23 + v278[8]);
  *v73 = v22;
  v73[1] = i;
  v74 = (v23 + v278[10]);
  *v74 = v41;
  v74[1] = v285;
  *(v23 + v278[11]) = v25;
  *(v23 + v278[12]) = v286;
  v75 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v75, v76, v77, MEMORY[0x1E69E7CC0]);
  v60 = v78;
  v22 = *(v78 + 16);
  v79 = *(v78 + 24);
  sub_1C4E2D258();
  if (v81)
  {
    goto LABEL_88;
  }

  while (1)
  {
    *(v60 + 16) = i;
    sub_1C440C23C(&a17);
    sub_1C4A948D8(v23, v82);
    v287[0] = v60;
    sub_1C4E2DDF0();
    sub_1C4488AF0();
LABEL_5:
    v83 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence + 8);
    if (v83)
    {
      sub_1C442632C((v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence));
      if (v84)
      {
        sub_1C4E2D280();
        v86(v20, v27 + v85, v41);
        v281 = v32;
        v87 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence_predicate;
        sub_1C4E2D564();
        v88 = sub_1C4E2E70C(&a16);
        sub_1C43FCE50(v88);
        v90 = v27 + v87;
        v32 = v281;
        (*(v89 + 16))(&v20[v27], v90);
        sub_1C449ED64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_source + v27, &v20[v23[9]]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        v91 = &v20[v23[7]];
        sub_1C4EFEC38();
        v92 = &v20[v23[8]];
        *v92 = v22;
        v92[1] = v83;
        v93 = &v20[v23[10]];
        *v93 = v281;
        v93[1] = v285;
        *&v20[v23[11]] = v25;
        sub_1C4E2E930(v23[12]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v219 = *(v60 + 16);
          v220 = sub_1C43FCEC0();
          sub_1C44C9240(v220, v221, v222, v60);
          v60 = v223;
        }

        v95 = *(v60 + 16);
        v94 = *(v60 + 24);
        sub_1C4E2D258();
        v44 = v277;
        if (v81)
        {
          v224 = sub_1C4413F5C(v96);
          sub_1C44C9240(v224, v225, v226, v60);
          v60 = v227;
        }

        *(v60 + 16) = v83;
        sub_1C440C23C(&a17);
        sub_1C4A948D8(v20, v97);
        v287[0] = v60;
      }
    }

    v98 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_activityHasActivityType);
    if (!v98)
    {
      goto LABEL_21;
    }

    sub_1C4E2E330();
    v21 = v279;
    sub_1C4DFFB20();
    v20 = v279;
    if (v279)
    {
      goto LABEL_35;
    }

    sub_1C4E2DCB4(v99);
    if (v100)
    {
      break;
    }

LABEL_22:
    v122 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_startingLocation);
    v23 = v275;
    if (v122)
    {

      sub_1C4E2E330();
      v21 = v20;
      sub_1C4DE69B4();
      if (v20)
      {
        goto LABEL_35;
      }

      sub_1C4E2DCB4(v123);
      if (v124)
      {
        v125 = sub_1C4E2E590();
        sub_1C49D3614(v125);
        sub_1C4E2D280();
        v126 = sub_1C441C660();
        v127(v126);
        v128 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
        sub_1C4E2D16C();
        sub_1C47CBF50(v122 + v128, v267);
        v129 = sub_1C4EFEEF8();
        sub_1C43FD490(v267);
        if (v106)
        {
          goto LABEL_90;
        }

        sub_1C4E2EC04();
        v130 = v122 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_entityIdentifier;
        v282 = sub_1C4EFF048();
        v132 = v131;
        sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_source);
        sub_1C44BBF0C();
        sub_1C449ED64(v134, v130 + v133);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DF74();
        v135 = *(v275 + 32);
        sub_1C4E2E884();
        v136();
        sub_1C4E2CA28();
        (*(v137 + 32))(v130 + v138, v267, v129);
        sub_1C4E2D7B4();
        *v139 = v282;
        v139[1] = v132;
        sub_1C4E2D7A8();
        *v141 = v32;
        v141[1] = v140;
        sub_1C4E2CAF4();
        sub_1C4E2E930(v142);
        v143 = v287[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v237 = *(v143 + 16);
          v238 = sub_1C43FCEC0();
          sub_1C44C9240(v238, v239, v240, v143);
          v143 = v241;
        }

        v23 = v275;
        sub_1C4485C88();
        if (v81)
        {
          v242 = sub_1C43FFD98(v144);
          sub_1C44C9240(v242, v243, v244, v143);
          v143 = v245;
        }

        *(v143 + 16) = v130;
        sub_1C440C23C(&a17);
        sub_1C4A948D8(v271, v145);
        v287[0] = v143;
        v20 = v279;
      }

      else
      {
      }
    }

    v146 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_endLocation);
    if (v146)
    {

      sub_1C4E2E330();
      v21 = v20;
      sub_1C4DE69B4();
      if (v20)
      {
LABEL_35:

        goto LABEL_36;
      }

      sub_1C4E2DCB4(v147);
      if (v148)
      {
        v149 = sub_1C4E2E590();
        sub_1C49D3614(v149);
        sub_1C4E2D280();
        v150 = sub_1C443F1AC();
        v151(v150);
        v152 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_predicate;
        sub_1C4418194();
        sub_1C47CBF50(v146 + v152, v23);
        sub_1C4EFEEF8();
        sub_1C43FD490(v23);
        if (v106)
        {
          goto LABEL_91;
        }

        sub_1C4E2EC04();
        v283 = sub_1C4EFF048();
        v154 = v153;
        v44 = v278;
        v155 = sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_source);
        sub_1C449ED64(v155, v268 + v156);
        sub_1C4EF9AE8();
        sub_1C4414830();
        sub_1C4EFF888();
        sub_1C4E2DF74();
        v157 = sub_1C4E2E51C(v23);
        v158(v157, v269, v276);
        sub_1C4E2CA28();
        v160 = *(v159 + 32);
        sub_1C4E2DDFC();
        v161();
        sub_1C4E2D7B4();
        *v162 = v283;
        v162[1] = v154;
        sub_1C4E2D7A8();
        *v163 = v32;
        v163[1] = v285;
        sub_1C4E2CAF4();
        sub_1C4E2E930(v164);
        v20 = v287[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v246 = *(v20 + 2);
          v247 = sub_1C43FCEC0();
          sub_1C44C9240(v247, v248, v249, v20);
          v20 = v250;
        }

        sub_1C4E2CE64();
        if (v81)
        {
          v251 = sub_1C4413F5C(v165);
          sub_1C44C9240(v251, v252, v253, v20);
          v20 = v254;
        }

        sub_1C4E2D468();

        *(v20 + 2) = v154;
        sub_1C4409B30(&a17);
        sub_1C4E2D154(&v20[v166]);
        sub_1C4E2E780(v167, v168);
        v287[0] = v20;
      }

      else
      {
        v44 = 0;
      }
    }

    else
    {
      v44 = v20;
    }

    v280 = v27;
    v284 = v32;
    v60 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_identifier);
    if (!v60)
    {
LABEL_57:
      v60 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasLocationRelationship);
      if (v60)
      {
        v179 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasLocationRelationship);
        v41 = sub_1C4428DA0();
        v22 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityIdentifier;
        v27 = v60 & 0xC000000000000001;
        v32 = v60 & 0xFFFFFFFFFFFFFF8;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        for (i = 0; v41 != i; ++i)
        {
          if (v27)
          {
            v23 = MEMORY[0x1C6940F90](i, v60);
          }

          else
          {
            v80 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (i >= v80)
            {
              goto LABEL_87;
            }

            sub_1C4E2E298(v60 + 8 * i);
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_86;
          }

          sub_1C4E2DD1C();
          sub_1C4E2D4B4();
          sub_1C4402EB0();
          sub_1C4DE5C70(v180, v181, v182, v183, v184, v185, v186, v187, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276);
          v44 = v21;
          if (v21)
          {
            goto LABEL_67;
          }

          v20 = v287;
          sub_1C49D3614(v188);
        }

        v27 = v280;
      }

      if (*(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasDate))
      {
        v189 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityIdentifier;
        sub_1C4E2DD1C();

        sub_1C440BB4C();
        sub_1C44178D8();
        sub_1C4DECF58(v190, v191, v192, v193, v194, v195, v196, v197, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276);
        if (!v189)
        {
          sub_1C49D3614(v198);

          goto LABEL_72;
        }

LABEL_74:

LABEL_75:
      }

      else
      {
LABEL_72:
        if (*(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasAttendee))
        {
          v199 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityIdentifier;
          sub_1C4E2DD1C();

          sub_1C440BB4C();
          sub_1C44178D8();
          sub_1C4DEBBF0(v200, v201, v202, v203, v204, v205, v206, v207, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276);
          if (v199)
          {
            goto LABEL_74;
          }

          sub_1C49D3614(v208);
        }

        v209 = v287[0];
        if (*(v287[0] + 16))
        {
          (*(v277 + 16))(v266, v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityIdentifier, v276);
          sub_1C4E2DC98(&a16);
          sub_1C4EFEBB8();
          v210 = v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityClass;
          sub_1C4EFD2F8();
          sub_1C44106D4();
          sub_1C4E2E1A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_source);
          sub_1C4EF9AE8();
          sub_1C440EEE0();
          sub_1C4EFF888();
          sub_1C444AF00();
          sub_1C4EFEC38();
          sub_1C4E2CFD8();
          *v211 = v284;
          v211[1] = v285;
          sub_1C4E2D72C();
          sub_1C4E2E658(v212);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v255 = *(v209 + 16);
            v256 = sub_1C43FCEC0();
            sub_1C44C9240(v256, v257, v258, v209);
            v209 = v259;
          }

          sub_1C4485C88();
          if (v81)
          {
            v260 = sub_1C43FFD98(v213);
            sub_1C44C9240(v260, v261, v262, v209);
            v209 = v263;
          }

          *(v209 + 16) = v210;
          sub_1C440C23C(&a17);
          sub_1C4A948D8(v266, v214);
        }
      }

LABEL_36:
      sub_1C440431C();
      sub_1C44109F8();
      return;
    }

    v169 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_identifier);
    v41 = sub_1C4428DA0();
    v22 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityIdentifier;
    v27 = v60 & 0xC000000000000001;
    v32 = v60 & 0xFFFFFFFFFFFFFF8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; ; ++i)
    {
      if (v41 == i)
      {

        v27 = v280;
        goto LABEL_57;
      }

      if (v27)
      {
        v23 = MEMORY[0x1C6940F90](i, v60);
      }

      else
      {
        v80 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i >= v80)
        {
          goto LABEL_85;
        }

        sub_1C4E2E298(v60 + 8 * i);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C4E2DD1C();
      sub_1C4E2D4B4();
      sub_1C4402EB0();
      sub_1C4DE44E8(v170, v171, v172, v173, v174, v175, v176, v177, v265, v266);
      v44 = v21;
      if (v21)
      {
LABEL_67:

        goto LABEL_75;
      }

      v20 = v287;
      sub_1C49D3614(v178);
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    v215 = sub_1C4413F5C(v80);
    sub_1C44C9240(v215, v216, v217, v60);
    v60 = v218;
  }

  v101 = sub_1C4E2E590();
  sub_1C49D3614(v101);
  sub_1C4E2D280();
  v102 = sub_1C4E2D7CC(&a12);
  v103(v102);
  v104 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_predicate;
  sub_1C4E2D474();
  sub_1C47CBF50(v98 + v104, v270);
  v105 = sub_1C4EFEEF8();
  sub_1C43FD490(v270);
  if (!v106)
  {

    v107 = v98 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs19CommuteActivityType_entityIdentifier;
    v265 = sub_1C4EFF048();
    v109 = v108;
    sub_1C4E2D558(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_source);
    sub_1C442C004();
    sub_1C449ED64(v111, v107 + v110);
    sub_1C4EF9AE8();
    sub_1C4414830();
    sub_1C4EFF888();
    sub_1C4E2DF74();
    sub_1C4E2E51C(v44);
    sub_1C4E2DD34();
    v112();
    sub_1C4E2CA28();
    (*(v113 + 32))(v107 + v114, v270, v105);
    sub_1C4E2D7B4();
    *v115 = v265;
    v115[1] = v109;
    sub_1C4E2D7A8();
    *v116 = v32;
    v116[1] = v285;
    sub_1C4E2CAF4();
    sub_1C4E2E930(v117);
    v118 = v287[0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v228 = *(v118 + 16);
      v229 = sub_1C43FCEC0();
      sub_1C44C9240(v229, v230, v231, v118);
      v118 = v232;
    }

    sub_1C4485C88();
    if (v81)
    {
      v233 = sub_1C43FFD98(v119);
      sub_1C44C9240(v233, v234, v235, v118);
      v118 = v236;
    }

    *(v118 + 16) = v107;
    sub_1C440C23C(&a17);
    v120 = sub_1C4E2DDE4();
    sub_1C4A948D8(v120, v121);
    v287[0] = v118;
LABEL_21:
    v20 = v279;
    goto LABEL_22;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

void sub_1C4E01E28()
{
  sub_1C43FE96C();
  sub_1C444B498(v3);
  v4 = sub_1C4F00DD8();
  v5 = sub_1C4440220(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C4460940(v8);
  v130 = sub_1C4F00DC8();
  v9 = sub_1C43FCDF8(v130);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44094C8(v12, v123);
  v14 = MEMORY[0x1EEE9AC00](v13);
  sub_1C44107F0(v14, v15, v16, v17, v18, v19, v20, v21, v124);
  v22 = sub_1C4F01188();
  v23 = sub_1C43FCDF8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440A3EC(v26, v125);
  v27 = sub_1C4EFD548();
  v28 = sub_1C44348EC(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4410058(v31, v126);
  v33 = MEMORY[0x1EEE9AC00](v32);
  sub_1C442A5DC(v33, v34, v35, v36, v37, v38, v39, v40, v127);
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
  sub_1C43FE938(v50, v128);
  v51 = sub_1C4EFF0C8();
  v52 = sub_1C4425688(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C4415E5C(v55, v129);
  v56 = sub_1C4EFEEF8();
  sub_1C4E2C8A0(v56);
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityClass;
  v58 = sub_1C4EFCFD8();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_activityHasActivityType) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_identifier) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasLocationRelationship) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasDate) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasAttendee);
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

    v59 = v131;
    v100 = v131(v86);
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
    sub_1C446F170(v133, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v102 = sub_1C43FFB2C();
    v104 = sub_1C4428F60(v102, v103);
    sub_1C4E2DEC4(v104, &qword_1EC0B9A08, &unk_1C4F107B0);
    v105 = sub_1C4495DFC();
    v59(v105);
    sub_1C448D818(v0 + v132);
    sub_1C4425820();
    v107 = *(v106 + 8);
    v109 = sub_1C443E068(v108);
    v107(v109);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_activityHasActivityType);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_startingLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_endLocation);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_identifier);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasLocationRelationship);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasDate);

    v117 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasAttendee);

    sub_1C44417C4();
    v119 = *(v118 + 48);
    v120 = *(v118 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v121 = sub_1C4440B80();
    v57(v121);
    v122 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityIdentifier);
    v57(v122);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E025F8(uint64_t a1, uint64_t a2)
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
                  v13 = a1 == 0xD000000000000017 && 0x80000001C4FC8AF0 == a2;
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
                      v15 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
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
                          v17 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x6E65747441736168 && a2 == 0xEB00000000656564)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1C4F02938();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

unint64_t sub_1C4E02AA4(char a1)
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
    case 12:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x7461636F4C646E65;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 13:
      result = 0x65746144736168;
      break;
    case 14:
      result = 0x6E65747441736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4E02C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E025F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4E02C8C(uint64_t a1)
{
  v2 = sub_1C4E28F5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E02CC8(uint64_t a1)
{
  v2 = sub_1C4E28F5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E02D04()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_activityHasActivityType);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_startingLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_endLocation);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_identifier);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasLocationRelationship);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasDate);

  v18 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasAttendee);

  return v0;
}

void sub_1C4E02EE0()
{
  sub_1C44569B4();
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8);
    sub_1C4E2E9C0();
    sub_1C4D889F8();
    if (v4 <= 0x3F)
    {
      v11 = *(v3 - 8) + 64;
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

void sub_1C4E03070()
{
  sub_1C43FE96C();
  v2 = sub_1C4E2CC60();
  v3 = sub_1C43FCDF8(v2);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C441D0D8(v7, v43);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4410A24();
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FE95C();
  v13 = sub_1C456902C(&qword_1EC0C8508, &qword_1C4F77500);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4402A68();
  sub_1C447F680();
  sub_1C4E28F5C();
  sub_1C44804EC();
  sub_1C4F02BF8();
  sub_1C4E2DDCC();
  sub_1C4420B30();
  sub_1C4E276B4(v17, v18);
  sub_1C441D7EC();
  sub_1C4E2CC40();
  if (v0)
  {
    v19 = sub_1C4E2CA3C();
  }

  else
  {
    sub_1C44A3B20();
    sub_1C4E2DEDC();
    sub_1C4E2D30C();
    sub_1C441ACD0();
    sub_1C4E276B4(v21, v22);
    sub_1C4475568();
    sub_1C4E2EAAC();
    sub_1C446F170(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44343BC();
    sub_1C4EFD548();
    sub_1C442DB9C();
    sub_1C4E276B4(v23, v24);
    sub_1C43FCD50();
    sub_1C4F027E8();
    v25 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_source;
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E34();
    sub_1C4E276B4(v26, v27);
    sub_1C43FCD50();
    sub_1C4F027E8();
    v28 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name_predicate;
    sub_1C447CF8C();
    v29 = sub_1C4433B18();
    v30(v29);
    sub_1C443F48C();
    sub_1C4E2E0F4();
    sub_1C4F027E8();
    v31 = v25[1];
    v32 = sub_1C440A6C4();
    v31(v32);
    sub_1C4E2E380(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name);
    sub_1C43FBEF8();
    sub_1C4F02738();

    sub_1C4E2CB70();
    v33 = sub_1C4414468();
    v34(v33);
    sub_1C442AD78();
    sub_1C4E2E634();
    (v31)(v44, v28);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence);
    sub_1C442A65C();
    sub_1C4E2E0F4();
    sub_1C4F02738();

    sub_1C442E728(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_activityHasActivityType);
    type metadata accessor for LifeEventStructs.CommuteActivityType(0);
    sub_1C4E2D8A0();
    sub_1C4E276B4(v35, v36);
    sub_1C4414374();
    sub_1C4F02778();
    sub_1C442E728(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_startingLocation);
    type metadata accessor for LifeEventStructs.Place(0);
    sub_1C4401574();
    sub_1C4E276B4(v37, v38);
    sub_1C4427064();
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_endLocation);
    sub_1C4427064();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_identifier);
    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E28950();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v39, v40);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4495E10(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v41, v42);
    sub_1C4411650();
    sub_1C4F02778();
    v19 = sub_1C4475668();
  }

  v20(v19);
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4E03708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a22 = v26;
  a23 = v27;
  sub_1C4482E40();
  v28 = sub_1C4EFEEF8();
  v29 = sub_1C4425688(v28);
  v113 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C440DC5C(v33, v108);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C446BD9C(v35, v36, v37, v38, v39, v40, v41, v42, v109);
  v43 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v43);
  v45 = *(v44 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  v112 = sub_1C44A3D38(v47, v110);
  v48 = sub_1C43FCDF8(v112);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD2D8();
  sub_1C445BEF4(v51);
  v52 = sub_1C456902C(&qword_1EC0C86C0, &qword_1C4F77618);
  sub_1C43FCDF8(v52);
  v54 = *(v53 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FCBE0(v56, v111);
  v57 = sub_1C4473DCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_predicate);
  sub_1C4D9A130(v57, v58, v59);
  sub_1C4E2DCCC(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityClass);
  sub_1C4EFCFD8();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v60 = type metadata accessor for Source();
  sub_1C4E2DCF0(v60, qword_1EDDFED10);
  sub_1C4E2E3A8(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name_predicate);
  sub_1C4E2DD64(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2DD58(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence);
  sub_1C4E2CF28(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_activityHasActivityType);
  sub_1C4E2CF18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_startingLocation);
  sub_1C4E2D298(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_endLocation);
  *(v25 + v61) = 0;
  *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_identifier) = 0;
  *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasLocationRelationship) = 0;
  *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasDate) = 0;
  v116 = v25;
  *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasAttendee) = 0;
  v63 = v23[3];
  v62 = v23[4];
  v115 = v23;
  v64 = sub_1C4409A28();
  sub_1C4417F50(v64, v65);
  sub_1C4E28F5C();
  sub_1C4E2D530();
  sub_1C4E2D160();
  sub_1C4F02BC8();
  if (v24)
  {
    sub_1C446F170(v116 + v114, &qword_1EC0B9A08, &unk_1C4F107B0);
    v68 = sub_1C4EFD548();
    sub_1C43FD3F8(v68);
    v70 = *(v69 + 8);
    v71 = sub_1C4E2D5B0();
    v72(v71);
    sub_1C4E2DE7C();
    v73 = *(v113 + 8);
    v74 = sub_1C441733C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name_predicate);
    v73(v74);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_name);
    v75 = sub_1C441733C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence_predicate);
    v73(v75);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence);
    v76 = *(v116 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_activityHasActivityType);

    v77 = *(v116 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_startingLocation);

    v78 = *(v116 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_endLocation);

    v79 = *(v116 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_identifier);

    v80 = *(v116 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasLocationRelationship);

    v81 = *(v116 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasDate);

    v82 = *(v116 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_hasAttendee);

    sub_1C44417C4();
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    sub_1C4E2DE94();
    v107 = v115;
  }

  else
  {
    sub_1C4E2D598(&a9);
    sub_1C4420B30();
    sub_1C4E276B4(v66, v67);
    sub_1C4E2D518();
    sub_1C4424E10();
    v86 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_entityIdentifier);
    v87(v86);
    sub_1C4E2D524();
    sub_1C441ACD0();
    sub_1C4E276B4(v88, v89);
    sub_1C445AA54();
    sub_1C4460C48();
    sub_1C4F02658();
    sub_1C4E2D5BC();
    sub_1C4E2DA98();
    sub_1C43FCCA0();
    swift_beginAccess();
    sub_1C4E2DEAC();
    swift_endAccess();
    sub_1C441E9A8();
    sub_1C43FCCA0();
    swift_beginAccess();
    v90 = sub_1C4449480();
    v62(v90);
    swift_endAccess();
    v91 = sub_1C44D4094();
    sub_1C4425188(v91, v92);
    sub_1C44514A8();
    sub_1C44AB1FC();
    v93 = sub_1C4E2CF08();
    v62(v93);
    swift_endAccess();
    v94 = sub_1C44D45AC();
    sub_1C4418DB0(v94, v95, &a16);
    type metadata accessor for LifeEventStructs.CommuteActivityType(0);
    a13 = 8;
    sub_1C4E2D8A0();
    sub_1C4E276B4(v96, v97);
    sub_1C4435710();
    sub_1C4E2D0BC();
    sub_1C4F02658();
    sub_1C4E2E4B0();
    sub_1C4E2DD7C(v98);
    type metadata accessor for LifeEventStructs.Place(0);
    a13 = 9;
    sub_1C4401574();
    sub_1C4E276B4(v99, v100);
    sub_1C4435DCC();
    sub_1C441E968(v117);

    sub_1C441B2D4();
    sub_1C4435DCC();
    sub_1C441E968(v117);

    sub_1C456902C(&qword_1EC0C8418, &qword_1C4F77488);
    sub_1C4E2CA4C();
    sub_1C4E295F8();
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
    sub_1C4E276B4(v101, v102);
    sub_1C44063D8();
    sub_1C442FEF4();
    sub_1C4F02658();
    sub_1C441E968(v117);

    sub_1C4480640();
    sub_1C444AC68();
    sub_1C4412AAC();
    sub_1C4E276B4(v103, v104);
    sub_1C443F8E4();
    v105 = sub_1C4E2C9E8();
    v106(v105);
    sub_1C443F058(v117);

    v107 = v23;
  }

  sub_1C440962C(v107);
  sub_1C4507BC8();
  sub_1C43FBC80();
}

uint64_t sub_1C4E03F20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E036DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E03FAC()
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
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_entityClass;
  v58 = sub_1C4EFD028();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasAttendee) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasLocationRelationship) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_identifier);
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
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_startingLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_endLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasAttendee);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasDate);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasLocationRelationship);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_identifier);

    sub_1C44417C4();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v120 = sub_1C4440B80();
    v57(v120);
    v121 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_entityIdentifier);
    v57(v121);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E04760(uint64_t a1)
{
  v2 = sub_1C4E28FB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4E0479C(uint64_t a1)
{
  v2 = sub_1C4E28FB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4E047D8()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C446F170(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FD3F8(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_source + v0);
  v7 = sub_1C4EFEEF8();
  sub_1C4424878(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_name);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_startingLocation);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_endLocation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasAttendee);

  v15 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasDate);

  v16 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasLocationRelationship);

  v17 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_identifier);

  return v0;
}

void sub_1C4E049A4()
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
  v13 = sub_1C456902C(&qword_1EC0C8518, &qword_1C4F77508);
  sub_1C4412DFC(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  sub_1C447F680();
  sub_1C4E28FB0();
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
    sub_1C4E2C80C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_name);
    sub_1C445CD44();

    sub_1C4E2CB70();
    v30 = sub_1C4414468();
    v31(v30);
    sub_1C441D57C();
    v32 = sub_1C4E2CAC4();
    v0(v32);
    sub_1C44882A4(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence);
    sub_1C44D3E80();
    sub_1C4E2D640();

    sub_1C442E7E0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_startingLocation);
    sub_1C4401574();
    sub_1C4E276B4(v33, v34);
    sub_1C44BBFAC();
    sub_1C4403C30(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_endLocation);
    sub_1C4F02778();
    sub_1C4402084(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasAttendee);
    sub_1C4480640();
    sub_1C4412AAC();
    sub_1C4E276B4(v35, v36);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C442F840(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasDate);
    sub_1C4E2C948();
    sub_1C440B98C();
    sub_1C4E276B4(v37, v38);
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4461E18(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasLocationRelationship);
    sub_1C456902C(&qword_1EC0C8478, &qword_1C4F774B8);
    sub_1C4E28C08();
    sub_1C4411650();
    sub_1C4F02778();
    sub_1C4459C90(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_identifier);
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

void sub_1C4E04F3C()
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
  v76 = sub_1C456902C(&qword_1EC0C86B8, &qword_1C4F77610);
  sub_1C43FCDF8(v76);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FCBE0(v29, v74);
  sub_1C44A3C3C(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_predicate);
  sub_1C4E2D820(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_entityClass);
  sub_1C4EFD028();
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    swift_once();
  }

  v30 = type metadata accessor for Source();
  sub_1C4E2D85C(v30, qword_1EDDFED10);
  sub_1C4E2E250(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_name_predicate);
  sub_1C4E2DA60(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_name);
  sub_1C442BC14(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence_predicate);
  sub_1C4EFE2A8();
  sub_1C4E2D708(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence);
  sub_1C4E2CDD4();
  sub_1C4E2CE04();
  v31 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasAttendee;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasAttendee) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasDate) = 0;
  *(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasLocationRelationship) = 0;
  sub_1C44A1F88(v32);
  sub_1C4E28FB0();
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
    v41 = sub_1C44D7418(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_name_predicate);
    v0(v41);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_name);
    v42 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence_predicate);
    v0(v42);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence);
    v43 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_startingLocation);

    v44 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_endLocation);

    v45 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasAttendee);

    v46 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasDate);

    v47 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_hasLocationRelationship);

    v48 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_identifier);

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
    v52 = sub_1C4450244(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_entityIdentifier);
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

uint64_t sub_1C4E056A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4E04F10(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4E0572C()
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
  v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityClass;
  v58 = sub_1C4EFCFF8();
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_source;
  if (qword_1EDDFED08 != -1)
  {
    sub_1C4407298();
    v58 = swift_once();
  }

  sub_1C4E2D608(v58, qword_1EDDFED10);
  sub_1C4EFEBF8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name);
  sub_1C4EFE2A8();
  sub_1C4401738(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_startingLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_endLocation) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasAttendee) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasDate) = 0;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasLocationRelationship) = 0;
  sub_1C4E2CD94(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_identifier);
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
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_name);
    v110 = sub_1C443E068(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence_predicate);
    v107(v110);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence);
    v111 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_startingLocation);

    v112 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_endLocation);

    v113 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasAttendee);

    v114 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasDate);

    v115 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_hasLocationRelationship);

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_identifier);

    sub_1C44417C4();
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    sub_1C4E2DEF4();
  }

  else
  {
    v120 = sub_1C4440B80();
    v57(v120);
    v121 = sub_1C44A1CC0(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_entityIdentifier);
    v57(v121);
  }

  sub_1C447F8BC();
  sub_1C43FBC80();
}

uint64_t sub_1C4E05EE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v4 || (sub_1C43FEC00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1C4E2D0E4();
    v8 = v4 && a2 == v7;
    if (v8 || (sub_1C43FEC00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v10 = a1 == sub_1C44553A4() && a2 == v9;
      if (v10 || (sub_1C43FEC00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        sub_1C4414234();
        v11 = v4 && a2 == 0xE600000000000000;
        if (v11 || (sub_1C43FEC00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = a1 == sub_1C4E2CB90() && a2 == v12;
          if (v13 || (sub_1C43FEC00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            sub_1C4E2E2C0();
            v14 = v4 && a2 == 0xE400000000000000;
            if (v14 || (sub_1C43FEC00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              sub_1C4E2E8F8();
              v16 = v4 && v15 == a2;
              if (v16 || (sub_1C43FEC00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                sub_1C4E2DE20();
                v17 = v4 && a2 == v2;
                if (v17 || (sub_1C43FEC00() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v18 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                  if (v18 || (sub_1C43FEC00() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v20 = a1 == sub_1C4E2D4EC() && a2 == v19;
                    if (v20 || (sub_1C43FEC00() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v22 = a1 == sub_1C4E2D4CC() && a2 == v21;
                      if (v22 || (sub_1C43FEC00() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        sub_1C4E2E450();
                        v23 = v4 && a2 == 0xE700000000000000;
                        if (v23 || (sub_1C43FEC00() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          sub_1C4E2E8E4();
                          v25 = v4 && v24 == a2;
                          if (v25 || (sub_1C43FEC00() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            sub_1C4E2E090();
                            if (v4 && a2 == v26)
                            {

                              return 13;
                            }

                            else
                            {
                              v28 = sub_1C43FEC00();

                              if (v28)
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
}