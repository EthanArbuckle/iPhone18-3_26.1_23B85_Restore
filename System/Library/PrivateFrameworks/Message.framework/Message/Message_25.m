id sub_1B07B72D0(unsigned int a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDatabaseID_];
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v2);
  return v2;
}

uint64_t sub_1B07B7350(void *a1)
{
  v3 = [a1 databaseID];
  if (v3 < 0)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v3 > 0xFFFFFFFFLL)
  {
    result = sub_1B0E465A8();
    __break(1u);
  }

  else
  {
    v4 = ChangeID.init(rawValue:)(v3);
    MEMORY[0x1E69E5920](a1);
    return v4;
  }

  return result;
}

uint64_t sub_1B07B7528(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E45C48();
  sub_1B074E39C();
  v9 = sub_1B0E45528();

  if (v9)
  {
    return sub_1B04197E4(0);
  }

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a1);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B07B7740;
  *(v5 + 24) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2208, &qword_1B0E9BE78);
  v4 = sub_1B0E44728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B0E452E8();
  v4();

  MEMORY[0x1E69E5920](a2);
  return sub_1B04197E4(sub_1B074F16C);
}

uint64_t sub_1B07B7774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v30 = a2;
  v28 = a3;
  v19 = a4;
  v18 = a5;
  v6 = v5;
  v7 = v17;
  v29 = v6;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v45 = a4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v20 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v21 = v15 - v20;
  v22 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v15 - v20);
  v23 = v15 - v22;
  v44 = v15 - v22;
  v24 = *(v10 - 8);
  v25 = v10 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v27 = v15 - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v36 = v15 - v35;
  v43 = v15 - v35;
  v42 = v7;
  v41 = v11;
  v40 = v12;
  v39 = v13;
  result = MessageIdentifierSet.isEmpty.getter();
  if ((result & 1) == 0)
  {
    (*(v24 + 16))(v27, v30, v19);
    sub_1B0E44F08();
    while (1)
    {
      swift_getAssociatedConformanceWitness();
      sub_1B0E45E38();
      v16 = v38;
      if (!v38)
      {
        break;
      }

      v15[1] = v16;
      v15[0] = v16;
      v37 = v16;
      sub_1B07204E0(v28, v23);
      MessageIdentifierSet.intersection(_:)(v17, v21);
      sub_1B07B6C10(v21, v15[0]);
      sub_1B03D09B8(v21);
      sub_1B03D09B8(v23);
      MEMORY[0x1E69E5920](v15[0]);
    }

    return (*(v33 + 8))(v36, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1B07B7AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v45 = a5;
  v57 = a4;
  v44 = a3;
  v43 = a2;
  v42 = a1;
  v55 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0u;
  v74 = 0u;
  v71 = 0;
  v70 = 0;
  v67 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v38 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v25 - v40;
  MEMORY[0x1EEE9AC00](v25 - v40);
  v61 = v25 - v40;
  v41 = v25 - v40;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v47 = v62;
  v48 = *(v62 - 8);
  v60 = v48;
  v49 = *(v48 + 64);
  v7 = MEMORY[0x1EEE9AC00](v57);
  v51 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = v25 - v51;
  v79 = v25 - v51;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v52 = v25 - v51;
  v78 = v25 - v51;
  v77 = v9;
  v54 = *v10;
  v53 = v54;
  v76 = v54;
  *&v74 = v11;
  *(&v74 + 1) = v8;
  *&v75 = v12;
  *(&v75 + 1) = v13;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v73 = [v54 persistentID];
  v58 = sub_1B0E45C48();
  v56 = v58;
  v59 = sub_1B074E39C();
  sub_1B0E44778();

  v63 = *(v60 + 48);
  v64 = (v60 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v63(v61, 1, v62) != 1)
  {
    sub_1B074BA2C(v41, v52);

    sub_1B074F018();
    v34 = v25;
    MEMORY[0x1EEE9AC00](v25);
    v25[-2] = v14;
    v35 = sub_1B074074C(sub_1B07B8434, &v25[-4]);
    v67 = v35;
    v15 = v53;
    v16 = v35;
    v65 = v53;
    v66 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2218, &qword_1B0E9BE90);
    sub_1B0E452E8();

    sub_1B03D09B8(v52);
    result = v37;
    v36 = v37;
    return result;
  }

  sub_1B074EB58(v41);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v72 = [v53 persistentID];
  sub_1B0E44778();

  if (v63(v39, 1, v47) == 1)
  {
    sub_1B074EB58(v39);

    v33 = v37;
  }

  else
  {
    v30 = v37;
    sub_1B074BA2C(v39, v50);

    v28 = 0;
    v29 = sub_1B071C094();
    v18 = sub_1B074B4A4();
    v19 = v30;
    v21 = sub_1B039CA88(sub_1B0740794, v28, v47, v29, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v20);
    v31 = v19;
    v32 = v21;
    if (v19)
    {
      result = 0;
      __break(1u);
      return result;
    }

    v27 = v32;
    v71 = v32;
    sub_1B074EFAC();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](v25);
    v25[-2] = v22;
    v26 = sub_1B0740A78(sub_1B074F010, &v25[-4]);

    v70 = v26;
    v23 = v53;
    v24 = v26;
    v68 = v53;
    v69 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2218, &qword_1B0E9BE90);
    sub_1B0E452E8();

    sub_1B03D09B8(v50);
    v33 = v31;
  }

  result = v33;
  v36 = v33;
  return result;
}

unint64_t sub_1B07B81D0()
{
  v2 = qword_1EB6DAF40;
  if (!qword_1EB6DAF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2218, &qword_1B0E9BE90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07B826C(void *a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v20 = 0;
  v19 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v12 = &v7 - v8;
  v15 = sub_1B0E43308();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v9 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v4 = &v7 - v9;
  v16 = &v7 - v9;
  v20 = v3;
  v19 = v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = [v10 completedUIDs];
  swift_unknownObjectRelease();
  sub_1B03D08AC(v11, v12);
  sub_1B0A62478(v12, v4);
  v17 = sub_1B0E43258();
  (*(v13 + 8))(v16, v15);
  [v18 addIndexes_];
  MEMORY[0x1E69E5920](v17);
  return MEMORY[0x1E69E5920](v18);
}

uint64_t sub_1B07B843C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  v31 = a1;
  v24 = a2;
  v25 = a3;
  v38 = a4;
  v32 = a5;
  v40 = &v55;
  v55 = 0;
  v56 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = HIBYTE(a8);
  v17[1] = 0;
  v35 = sub_1B0E431A8();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v18 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v30 = v17 - v18;
  v39 = sub_1B0E44AB8();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v26 = v17 - MEMORY[0x1EEE9AC00]((*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v8;
  v53 = v9;
  v54 = v10;
  v51 = v11;
  v50 = v12;
  v47 = v13;
  v48 = v20;
  LOBYTE(v49) = v21;
  v23 = 1;
  HIBYTE(v49) = v22 & 1;
  (*(v36 + 16))();
  v27 = sub_1B0E44838();
  v28 = v14;
  v29 = *sub_1B07B8808();
  MEMORY[0x1E69E5928](v29);
  (*(v33 + 16))(v30, v32, v35);
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v46 = v22 & 1 & v23;
  v42 = sub_1B0E44B78();
  v41 = v15;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = v42;
  v56 = v41;
  (*(v33 + 8))(v32, v35);
  (*(v36 + 8))(v38, v39);
  sub_1B03B1198(v40);
  return v42;
}

uint64_t *sub_1B07B8808()
{
  if (qword_1EB6E0B48 != -1)
  {
    swift_once();
  }

  return &qword_1EB6E2230;
}

id sub_1B07B8868()
{
  result = sub_1B07B8888();
  qword_1EB6E2230 = result;
  return result;
}

id sub_1B07B8888()
{
  sub_1B07B8964();
  sub_1B0E44838();
  v2 = sub_1B07B89C8();
  if (v2)
  {
    return v2;
  }

  sub_1B0E465A8();
  __break(1u);
  return v1;
}

unint64_t sub_1B07B8964()
{
  v2 = qword_1EB6E2238;
  if (!qword_1EB6E2238)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2238);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1B07B89C8()
{
  v1 = sub_1B0E44AC8();
  v2 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];
  MEMORY[0x1E69E5920](v1);

  return v2;
}

uint64_t sub_1B07B8A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a2;
  v9 = HIDWORD(a2);
  v3 = sub_1B0E439A8();
  (*(*(v3 - 8) + 32))(a3, a1);
  result = _s6LoggerVMa();
  v5 = a3 + *(result + 20);
  *v5 = v8;
  *(v5 + 4) = v9;
  return result;
}

uint64_t sub_1B07B8B38(uint64_t a1)
{
  v9 = a1;
  v8 = sub_1B0E439A8();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t sub_1B07B8C4C()
{
  v1 = v0 + *(_s6LoggerVMa() + 20);
  LOBYTE(v3) = *v1;
  HIDWORD(v3) = *(v1 + 4);
  return v3;
}

uint64_t sub_1B07B8C8C(uint64_t a1)
{
  v4 = a1;
  v5 = HIDWORD(a1);
  result = _s6LoggerVMa();
  v3 = v1 + *(result + 20);
  *v3 = v4;
  *(v3 + 4) = v5;
  return result;
}

uint64_t sub_1B07B8CDC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v16 = a1;
  v18 = a2;
  v17 = a3;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v11[1] = 0;
  v12 = (*(*(sub_1B0E439A8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = v11 - v12;
  v14 = *(*(_s6LoggerVMa() - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v21 = v11 - v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v23 = v11 - v15;
  v29 = v11 - v15;
  v28 = v5;
  v26 = v6;
  v27 = v7;
  sub_1B07B8E9C(v8);
  v19 = EngineLoggerID.init(id:)(v16);
  v9 = AccountLoggerID.init(accountIdentifier:)(v18, v17);
  v25 = EngineAndAccountLoggerID.init(engine:account:)(v19, v9);
  LOBYTE(v24) = v25;
  HIDWORD(v24) = HIDWORD(v25);
  sub_1B07B8A3C(v20, v24, v21);
  sub_1B03F4FD0(v21, v23);
  sub_1B0394784(v23, v22);
  return sub_1B039480C(v23);
}

uint64_t sub_1B07B8E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B07B8F00();
  v1 = sub_1B0E439A8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B07B8F00()
{
  if (qword_1EB6DBF70 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6DBF78);
}

uint64_t sub_1B07B8F6C()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6DBF78);
  __swift_project_value_buffer(v1, qword_1EB6DBF78);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B07B9010()
{
  v1 = (v0 + *(_s6LoggerVMa_1() + 20));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 1);
  v6 = *(v1 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v7) = v3;
  HIDWORD(v7) = v4;
  return v7;
}

uint64_t sub_1B07B908C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a1;
  v8 = HIDWORD(a1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = v3 + *(_s6LoggerVMa_1() + 20);
  v5 = *(v4 + 8);
  *v4 = v7;
  *(v4 + 4) = v8;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
}

uint64_t sub_1B07B9118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a2;
  v11 = HIDWORD(a2);
  v5 = sub_1B0E439A8();
  (*(*(v5 - 8) + 32))(a5, a1);
  result = _s6LoggerVMa_1();
  v7 = a5 + *(result + 20);
  *v7 = v10;
  *(v7 + 4) = v11;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  return result;
}

uint64_t sub_1B07B91DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v23 = a1;
  v18 = a2;
  v19 = a3;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v17 = 0;
  v13 = sub_1B0E439A8();
  v16 = *(v13 - 8);
  v12[1] = v13 - 8;
  v12[0] = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = v12 - v12[0];
  v15 = *(*(_s6LoggerVMa_1() - 8) + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v20);
  v21 = v12 - v14;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v24 = v12 - v6;
  v34 = v12 - v6;
  v33 = v7;
  v31 = v18;
  v32 = v19;
  (*(v16 + 16))(v5);
  v8 = _s6LoggerVMa();
  v28 = EngineAccountMailboxLoggerID.init(engine:account:mailbox:)(*(v23 + *(v8 + 20)), *(v23 + *(v8 + 20) + 4));
  v29 = v9;
  v30 = v10;
  LOBYTE(v25) = v28;
  HIDWORD(v25) = HIDWORD(v28);
  v26 = v9;
  v27 = v10;
  sub_1B07B9118(v20, v25, v9, v10, v21);
  sub_1B074E41C(v21, v24);
  sub_1B074B69C(v24, v22);
  sub_1B039480C(v23);
  return sub_1B074B764(v24);
}

uint64_t sub_1B07B9450()
{
  v2 = sub_1B0E439A8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B07B9548()
{
  v2 = sub_1B0E439A8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B07B95F0()
{
  v2 = 0;
  sub_1B0E46A48();
  sub_1B0417568();
  v1 = sub_1B0E45438();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

uint64_t sub_1B07B9660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v13 = a2;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v21 = 0;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v10 - v15;
  v31 = MEMORY[0x1EEE9AC00](v14);
  v16 = *v4;
  v17 = v4[1];
  v29 = v16;
  v30 = v17;
  v28 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  Activity.subscript.getter(v16, v17, v18);
  v19 = type metadata accessor for Activity.MailboxStatus(0);
  if ((*(*(v19 - 8) + 48))(v18, 1) == 1)
  {
    sub_1B0415C08(v18);
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    sub_1B0416B60(v18);
  }

  else
  {
    v6 = *v18;
    v7 = *(v18 + 1);
    v8 = *(v18 + 2);
    v9 = v18[24];
    v12 = v18[25];
    LOBYTE(v24) = v6;
    v25 = v7;
    v26 = v8;
    LOBYTE(v27) = v9 & 1;
    HIBYTE(v27) = v12;

    if (v12)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = sub_1B03B5A58(v16, v17, &v22);
      v11 = v22;
      if ((v23 & 1) == 0)
      {
        v10[2] = v11;
        v21 = v11;
        v10[1] = &v20;
        v20 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
        return sub_1B0E454D8();
      }
    }
  }

  return result;
}

uint64_t sub_1B07B98E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v29 = a1;
  v28 = a2;
  v34 = 0;
  v35 = sub_1B07B9C50;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v39 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v30 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v15 - v30;
  v44 = MEMORY[0x1EEE9AC00](v29);
  v43 = *v5;
  v42 = a3;
  v40 = v43;
  sub_1B07C04F4(&v40, &v15 - v30);
  v36 = sub_1B06BD108();
  sub_1B03F1A20(v35, v34, v32, MEMORY[0x1E69E73E0], v36, v33, &v41);
  sub_1B06E3800(v31);
  v26 = v41;
  if (v41)
  {
    v25 = v26;
    v24 = v26;
    v39 = v26;
    MEMORY[0x1E69E5928](v29);
    v22 = v38;
    v23 = 0;
    memset(v38, 0, sizeof(v38));
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1960, &qword_1B0E9A0C0);
    v18 = sub_1B0E46A48();
    v16 = v6;
    v19 = *MEMORY[0x1E699B3B8];
    MEMORY[0x1E69E5928](v19);
    v7 = sub_1B0E44AD8();
    v20 = v37;
    v37[0] = v7;
    v37[1] = v8;
    sub_1B0E467D8();
    MEMORY[0x1E69E5928](v24);
    v9 = v16;
    v10 = v24;
    v11 = v18;
    *(v16 + 64) = v36;
    *(v9 + 40) = v10;
    sub_1B0394964();
    v21 = v11;
    MEMORY[0x1E69E5920](v19);
    sub_1B03B1198(v20);
    sub_1B0E445D8();
    sub_1B0E429E8();
    v12 = sub_1B0E42A08();
    (*(*(v12 - 8) + 56))(v27, 0, 1);
    return MEMORY[0x1E69E5920](v24);
  }

  else
  {
    v14 = sub_1B0E42A08();
    return (*(*(v14 - 8) + 56))(v27, 1);
  }
}

id sub_1B07B9C50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v12 = 0;
  v4 = 0;
  v8 = sub_1B0E42E68();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = &v4 - v5;
  v12 = v2;
  sub_1B06BD108();
  (*(v6 + 16))(v10, v9, v8);
  result = sub_1B07B9D48(v10);
  *v11 = result;
  return result;
}

uint64_t sub_1B07B9D88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;
  v8 = 0;
  v9 = *a1;
  v8 = a2;
  v6 = *MEMORY[0x1E699B3C0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E699B3C0]);
  v7 = v9;
  sub_1B07B98E0(v6, &v7, a2, a3);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1B07B9E3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;
  v8 = 0;
  v9 = *a1;
  v8 = a2;
  v6 = *MEMORY[0x1E699B3B0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E699B3B0]);
  v7 = v9;
  sub_1B07B98E0(v6, &v7, a2, a3);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1B07B9EF0(uint64_t a1)
{
  v10 = a1;
  v9 = v1;
  v7 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  sub_1B0E42A08();
  sub_1B0417878();
  v5 = sub_1B0E44F58();
  sub_1B039E440(&v8);
  sub_1B0E46A48();
  sub_1B0417568();
  v2 = sub_1B0E45438();
  v3 = *v6;
  *v6 = v2;

  return v5;
}

uint64_t sub_1B07BA028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v28 = a1;
  v34 = 0;
  v35 = sub_1B07B9C50;
  v44 = 0;
  v43 = 0;
  v40 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v29 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v16 - v29;
  v44 = *v4;
  v43 = a2;
  v41 = v44;
  sub_1B07C04F4(&v41, v16 - v29);
  v5 = sub_1B06BD108();
  v6 = v32;
  v36 = v5;
  result = sub_1B03F1A20(v35, v34, v31, MEMORY[0x1E69E73E0], v5, v33, &v42);
  v37 = v6;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1B06E3800(v30);
    v26 = v42;
    if (v42)
    {
      v25 = v26;
      v24 = v26;
      v40 = v26;
      v22 = *MEMORY[0x1E699B3B0];
      MEMORY[0x1E69E5928](v22);
      v21 = v39;
      v23 = 0;
      memset(v39, 0, sizeof(v39));
      v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1960, &qword_1B0E9A0C0);
      v17 = sub_1B0E46A48();
      v16[0] = v9;
      v18 = *MEMORY[0x1E699B3B8];
      MEMORY[0x1E69E5928](v18);
      v10 = sub_1B0E44AD8();
      v19 = v38;
      v38[0] = v10;
      v38[1] = v11;
      sub_1B0E467D8();
      MEMORY[0x1E69E5928](v24);
      v12 = v16[0];
      v13 = v24;
      v14 = v17;
      *(v16[0] + 64) = v36;
      *(v12 + 40) = v13;
      sub_1B0394964();
      v20 = v14;
      MEMORY[0x1E69E5920](v18);
      sub_1B03B1198(v19);
      sub_1B0E445D8();
      sub_1B0E429E8();
      v15 = sub_1B0E42A08();
      (*(*(v15 - 8) + 56))(v27, 0, 1);
      return MEMORY[0x1E69E5920](v24);
    }

    else
    {
      v8 = sub_1B0E42A08();
      return (*(*(v8 - 8) + 56))(v27, 1);
    }
  }

  return result;
}

id sub_1B07BA3D0(uint64_t a1)
{
  v4 = sub_1B0E42D58();
  v6 = [v1 initWithURL_];
  MEMORY[0x1E69E5920](v4);
  v2 = sub_1B0E42E68();
  (*(*(v2 - 8) + 8))(a1);
  return v6;
}

uint64_t sub_1B07BA474()
{
  v3 = *(v0 + 24);

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3470, &qword_1B0E9BF70);
  sub_1B03E1B3C(sub_1B07BA528, 0, v3, v1, v1);

  return v4;
}

uint64_t sub_1B07BA560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v14 = v3;
  v9 = *(v3 + 24);

  sub_1B07BA724(a1);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3470, &qword_1B0E9BF70);
  sub_1B03E1B3C(sub_1B07BA764, v10, v9, v4, MEMORY[0x1E69E7CA8] + 8);
  sub_1B07BA794(a1);

  return sub_1B07BA794(a1);
}

uint64_t sub_1B07BA690(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B07BA724(a2);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  return sub_1B07BA794(v4);
}

uint64_t sub_1B07BA724(uint64_t result)
{
  if (result)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B07BA794(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B07BA7D4()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_1B07BA800()
{
  v3 = *(v0 + 32);

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2240, &qword_1B0E9BF78);
  sub_1B03E1B3C(sub_1B07BA8AC, 0, v3, v1, v1);

  return v4;
}

uint64_t sub_1B07BA8E4(uint64_t a1)
{
  v9 = a1;
  v8 = v1;
  v5 = *(v1 + 32);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2240, &qword_1B0E9BF78);
  sub_1B03E1B3C(sub_1B07BAA2C, v6, v5, v2, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B07BA9CC(uint64_t *a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *a1;
  *a1 = a2;
}

unint64_t sub_1B07BAAB0()
{
  v2 = qword_1EB6E2248;
  if (!qword_1EB6E2248)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2248);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07BAB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v18 = a1;
  v19 = a2;
  v17 = a3 & 1;
  memset(v16, 0, sizeof(v16));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3470, &qword_1B0E9BF70);
  v10 = sub_1B06C70B0(v16, v4);

  __b[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2250, &qword_1B0E9BF80);
  sub_1B0E46A48();
  sub_1B0E42E68();
  sub_1B07BAD2C();
  v15 = sub_1B0E445D8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2240, &qword_1B0E9BF78);
  v11 = sub_1B06C70B0(&v15, v5);

  __b[4] = v11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[0] = a1;
  __b[1] = a2;
  if (a3)
  {
    v7 = sub_1B07BADAC();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __b[2] = v7;
    v8 = v7;
  }

  else
  {
    __b[2] = 0;
    v8 = 0;
  }

  result = sub_1B07BAE48(__b);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = v10;
  a4[4] = v11;
  return result;
}

unint64_t sub_1B07BAD2C()
{
  v2 = qword_1EB6DED38;
  if (!qword_1EB6DED38)
  {
    sub_1B0E42E68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07BADAC()
{
  v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2258, &qword_1B0E9BF88);
  sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B07BAE98();
  v1 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

void *sub_1B07BAE48(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  v4 = a1[4];

  return a1;
}

unint64_t sub_1B07BAE98()
{
  v2 = qword_1EB6DE930;
  if (!qword_1EB6DE930)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE930);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07BAF10(char a1, char *a2, uint64_t a3)
{
  v7[0] = 0;
  v13 = a2;
  v14 = a3;
  v12 = a1;
  v9 = a2;
  v10 = a3;
  v11 = BYTE4(a3);
  v7[3] = a2;
  LODWORD(v8) = a3;
  BYTE4(v8) = BYTE4(a3);
  MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, a2, v8);
  v7[2] = v3;
  v7[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0750598();
  if (sub_1B0E45748())
  {

    return 0;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0750030();
    sub_1B0E45758();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
    sub_1B07512FC();
    v7[0] = sub_1B0E45378();
    sub_1B07BB0DC();
    sub_1B0E452E8();
    v5 = v7[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039E440(v7);

    return v5;
  }
}

uint64_t sub_1B07BB298(char *a1, uint64_t a2)
{
  v9 = a2;
  v10 = BYTE4(a2);
  v11 = sub_1B07BA474();
  if (!v11)
  {
    goto LABEL_7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = Namespace.contains(_:)(a1, v9, v11);

  if (v6)
  {

LABEL_7:
    v3 = *(v7 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LODWORD(v12) = v9;
    BYTE4(v12) = v10;
    v4 = sub_1B07BB430(a1, v12, v3);

    v5 = v4 ^ 1;
    return v5 & 1;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1B07BB430(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    LODWORD(v5) = a2;
    BYTE4(v5) = BYTE4(a2);
    v4 = sub_1B07BB4D8(a1, v5);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1B07BB4D8(char *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v29 = a1;
  v30 = a2;
  v26 = a1;
  v27 = a2;
  v28 = BYTE4(a2);
  v24 = a1;
  LODWORD(v25) = a2;
  BYTE4(v25) = BYTE4(a2);
  MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, a1, v25);
  v16 = v2;
  v23 = v2;
  if (sub_1B0E452A8() == 2 && (v22 = v16, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0), sub_1B03B11C4(), sub_1B0E44888(), v21))
  {
    v18 = v20;
    v19 = v21;
    v13 = sub_1B0E46A48();
    v12 = v3;
    *v3 = sub_1B0E44838();
    v12[1] = v4;
    v12[2] = sub_1B0E44838();
    v12[3] = v5;
    v12[4] = sub_1B0E44838();
    v12[5] = v6;
    v12[6] = sub_1B0E44838();
    v12[7] = v7;
    v12[8] = sub_1B0E44838();
    v12[9] = v8;
    v12[10] = sub_1B0E44838();
    v12[11] = v9;
    v12[12] = sub_1B0E44838();
    v12[13] = v10;
    sub_1B0394964();
    v17 = v13;
    sub_1B06E3764();
    v14 = sub_1B0E450A8();
    sub_1B039E440(&v17);

    v15 = v14;
  }

  else
  {

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t *sub_1B07BB7E0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v20 = 0;
  v22 = a1;
  v23 = a2;
  v21 = v3;
  v24 = *(v3 + 16);
  sub_1B074E7A8(&v24, &v19);
  v25 = v24;
  if (v24)
  {
    v13 = sub_1B07BBA2C(a1, a2, v25);
    if (v13)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = v13;

      v12 = v13;
      goto LABEL_8;
    }
  }

  v11 = sub_1B07BBF1C(a1, a2);
  if (!v11)
  {
    v6 = sub_1B0E42E68();
    return (*(*(v6 - 8) + 56))(a3, 1);
  }

  LODWORD(v18) = v4;
  BYTE4(v18) = (v4 & 0xFFFFFFFFFFuLL) >> 32;
  MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, v11, v18);
  v10 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = v10;

  v12 = v10;
LABEL_8:
  sub_1B07BC130();
  v8 = *v17;
  v9 = v17[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  static IMAPAccount.makeMailboxURL(accountID:pathComponents:)(v8, v9, v12, a3);

  return sub_1B039E440(&v20);
}

uint64_t sub_1B07BBA2C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  memset(__b, 0, 0x28uLL);
  memset(v29, 0, 13);
  v28 = 0;
  v25 = 0;
  v18 = 0;
  __b[6] = a1;
  v35 = a2;
  __b[5] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B07BAE98();
  sub_1B0E445C8();
  memcpy(__b, v36, 0x28uLL);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2260, &unk_1B0E9BF90);
    sub_1B0E446D8();
    if (!v30)
    {
      break;
    }

    v29[0] = v30;
    LODWORD(v29[1]) = v31;
    BYTE4(v29[1]) = v32;
    v28 = v33;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = static MailboxName.== infix(_:_:)(v30, v31, a1, a2);

    if (v13)
    {

      sub_1B06B91B0(__b);
      return v33;
    }

    v26 = v30;
    LODWORD(v27) = v31;
    BYTE4(v27) = v32;
    MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, v30, v27);
    v11 = v3;
    v25 = v3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23 = v30;
    LODWORD(v24) = v31;
    BYTE4(v24) = v32;
    v4 = MailboxPath.pathSeparator.getter(v30, v24);
    v21 = MailboxPath.init(name:pathSeparator:)(a1, a2, v4, v5);
    v22 = v6;
    v19 = v21;
    LODWORD(v20) = v6;
    BYTE4(v20) = BYTE4(v6);
    MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, v21, v20);
    v10 = v7;

    v18 = v10;
    v17[12] = v10;
    v17[11] = v11;
    sub_1B06E3764();
    if (sub_1B0E45098())
    {
      v17[9] = v33;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v17[4] = v10;
      sub_1B0E452A8();
      sub_1B0750598();
      sub_1B0E45768();
      v17[0] = v17[5];
      v17[1] = v17[6];
      v17[2] = v17[7];
      v17[3] = v17[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
      sub_1B07BC194();
      sub_1B07BC21C();
      sub_1B0E457E8();
      sub_1B03FD360(v17);
      v9 = v17[10];

      sub_1B06B91B0(__b);
      return v9;
    }
  }

  sub_1B06B91B0(__b);
  return 0;
}

uint64_t sub_1B07BBF1C(uint64_t a1, unsigned int a2)
{
  v11 = sub_1B07BA474();
  v12 = v2;
  v13 = v3;
  if (v11)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v7 = v12;
    v8 = v13;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = MailboxPath.init(name:pathSeparator:)(a1, a2, v7, v8);

  return v6;
}

unint64_t sub_1B07BC130()
{
  v2 = qword_1EB6DACB8;
  if (!qword_1EB6DACB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DACB8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B07BC194()
{
  v2 = qword_1EB6E2268;
  if (!qword_1EB6E2268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07BC21C()
{
  v2 = qword_1EB6E2270;
  if (!qword_1EB6E2270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2270);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07BC2A4(const void *a1)
{
  v97 = a1;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v126 = 0;
  v127 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v122 = 0;
  v93 = 0;
  v118 = 0;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  memset(v110, 0, 13);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v94 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v95 = &v23 - v94;
  v96 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v94);
  v107 = &v23 - v96;
  v106 = sub_1B0E42E68();
  v104 = *(v106 - 8);
  v105 = v106 - 8;
  v98 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v97);
  v99 = &v23 - v98;
  v131 = &v23 - v98;
  v100 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v101 = &v23 - v100;
  v102 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v103 = &v23 - v102;
  v130 = &v23 - v102;
  v129 = v8;
  v128 = v1;
  sub_1B071C180(v8, v9);
  v108 = *(v104 + 48);
  v109 = v104 + 48;
  if (v108(v107, 1, v106) == 1)
  {
    sub_1B06E3800(v107);
    goto LABEL_6;
  }

  (*(v104 + 32))(v103, v107, v106);
  v88 = sub_1B07BA800();
  (*(v104 + 16))(v101, v103, v106);
  sub_1B07BAD2C();
  v89 = &v111;
  sub_1B0E44778();
  v90 = v111;
  v91 = v112 | (*(v89 + 12) << 32);
  if (!v111)
  {
    v85 = *(v104 + 8);
    v84 = v104 + 8;
    v85(v101, v106);

    v85(v103, v106);
LABEL_6:
    sub_1B071C180(v97, v95);
    if (v108(v95, 1, v106) == 1)
    {
      sub_1B06E3800(v95);
LABEL_27:
      v82 = 0;
      v83 = 0;
      return v82;
    }

    (*(v104 + 32))(v99, v95, v106);
    v73 = sub_1B07BA474();
    v74 = v10;
    v75 = v11;
    if (v73)
    {
      v70 = v73;
      v71 = v74;
      v72 = v75;
      v67 = v75;
      v66 = v74;
      v65 = v73;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v68 = v66;
      v69 = v67;
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    v63 = v69;
    v64 = v68;
    if (!v69)
    {
      (*(v104 + 8))(v99, v106);
      goto LABEL_27;
    }

    v61 = v64;
    v62 = v63;
    v56 = v63;
    v57 = v64;
    v126 = v64;
    v127 = v63;
    sub_1B07BC130();
    v12 = static IMAPAccount.accountIDAndPathComponents(fromMailboxURL:)(v99);
    v58 = v12;
    v59 = v13;
    v60 = v14;
    if (!v13)
    {

      (*(v104 + 8))(v99, v106);
      goto LABEL_27;
    }

    v53 = v58;
    v54 = v59;
    v55 = v60;
    v47 = v60;
    v49 = v59;
    v48 = v58;
    v123 = v58;
    v124 = v59;
    v125 = v60;
    v50 = *v92;
    v51 = v92[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v52 = MEMORY[0x1B2726DE0](v48, v49, v50, v51);

    if ((v52 & 1) == 0)
    {

      (*(v104 + 8))(v99, v106);
      goto LABEL_27;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v122 = v47;

    v132 = v92[2];
    sub_1B074E7A8(&v132, &v121);
    v133 = v132;
    if (v132)
    {
      v44 = v133;
      v117 = v133;
      v45 = sub_1B07BD14C(v47, v133);
      v46 = v15;
      if (v45)
      {
        v42 = v45;
        v43 = v46;
        v16 = v93;
        v37 = v46;
        v36 = v45;
        v115 = v45;
        v116 = v46;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v17 = MailboxPath.init(name:pathSeparator:)(v36, v37, v57, v56);
        v113 = v17;
        v114 = v18;
        v38 = v17;
        v39 = v18;
        v40 = BYTE4(v18);
        v41 = v16;
        if (!v16)
        {
          v34 = v38;
          v35 = v39 | (v40 << 32);

          (*(v104 + 8))(v99, v106);
          v82 = v34;
          v83 = v35;
          return v82;
        }

        v25 = v41;

        v26 = v25;
LABEL_29:
        v27 = v26;
        v22 = v26;
        v118 = v27;

        (*(v104 + 8))(v99, v106);
        v82 = 0;
        v83 = 0;
        return v82;
      }
    }

    v19 = v93;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v119 = sub_1B07BEE90(v47, v57, v56);
    v120 = v20;
    v30 = v119;
    v31 = v20;
    v32 = BYTE4(v20);
    v33 = v19;
    if (!v19)
    {
      v28 = v30;
      v29 = v31 | (v32 << 32);

      (*(v104 + 8))(v99, v106);
      v82 = v28;
      v83 = v29;
      return v82;
    }

    v24 = v33;

    v26 = v24;
    goto LABEL_29;
  }

  v86 = v90;
  v87 = v91 & 0xFFFFFFFFFFLL;
  v76 = (v91 & 0xFFFFFFFFFFLL) >> 32;
  v77 = v91;
  v80 = v90;
  v110[0] = v90;
  LODWORD(v110[1]) = v91;
  BYTE4(v110[1]) = v76;

  v79 = *(v104 + 8);
  v78 = v104 + 8;
  v79(v101, v106);
  v81 = v77 | (v76 << 32);
  v79(v103, v106);
  v82 = v80;
  v83 = v81;
  return v82;
}

uint64_t sub_1B07BD14C(uint64_t a1, uint64_t a2)
{
  memset(__b, 0, 0x28uLL);
  __b[6] = a1;
  __b[5] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B07BAE98();
  sub_1B0E445C8();
  memcpy(__b, v9, 0x28uLL);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2260, &unk_1B0E9BF90);
    sub_1B0E446D8();
    if (!v7)
    {
      break;
    }

    if (sub_1B0E45368())
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      sub_1B06B91B0(__b);
      return v7;
    }

    sub_1B06E3764();
    if (sub_1B0E45098())
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0E452A8();
      sub_1B0750598();
      sub_1B0E45768();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
      sub_1B07512FC();
      sub_1B0E44FE8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      swift_unknownObjectRelease();

      sub_1B06B91B0(__b);
      return v6;
    }
  }

  sub_1B06B91B0(__b);
  return 0;
}

uint64_t sub_1B07BD5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v31 = a2;
  v30 = a3;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v3 = memset(&v43[1], 0, 0x42uLL);
  v39 = 0;
  v36 = 0;
  v50 = v31;
  v28 = *(v31 - 8);
  v21 = v31 - 8;
  v20 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v4 = v7 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = AssociatedTypeWitness - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = v7 - v26;
  v49 = v7 - v26;
  v48 = v5;
  v47 = v27;
  (*(v28 + 16))(v4);
  sub_1B0E44F08();
  while (1)
  {
    swift_getAssociatedConformanceWitness();
    v17 = &v44;
    sub_1B0E45E38();
    v18 = __dst;
    v19 = 66;
    memcpy(__dst, v17, 0x42uLL);
    memcpy(v46, __dst, 0x42uLL);
    if (!v46[0])
    {
      return (*(v24 + 8))(v29, AssociatedTypeWitness);
    }

    v13 = v46[0];
    v14 = v46[1];
    v15 = BYTE4(v46[1]);
    v16 = LOBYTE(v46[2]);
    v43[1] = v46[0];
    LODWORD(v43[2]) = v46[1];
    BYTE4(v43[2]) = BYTE4(v46[1]);
    HIWORD(v43[2]) = HIWORD(v46[1]);
    LOBYTE(v43[3]) = v46[2];
    v43[4] = v46[3];
    v43[5] = v46[4];
    v43[6] = v46[5];
    v43[7] = v46[6];
    v43[8] = v46[7];
    LOWORD(v43[9]) = v46[8] & 0x1FF;
    if (LOBYTE(v46[2]) == 7)
    {
      goto LABEL_8;
    }

    v12 = v16;
    v10 = v16;
    v39 = v16;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v37 = v13;
    LODWORD(v38) = v14;
    BYTE4(v38) = v15;
    v11 = sub_1B07BAF10(v10, v13, v38);

    if (!v11)
    {
LABEL_8:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v7[2] = v43;
      v43[0] = 0;
      v7[1] = &v40;
      v40 = v13;
      v41 = v14;
      v42 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2278, &qword_1B0E9BFA0);
      sub_1B0E44788();
    }

    else
    {
      v9 = v11;
      v8 = v11;
      v36 = v11;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v7[4] = &v35;
      v35 = v8;
      v7[3] = &v32;
      v32 = v13;
      v33 = v14;
      v34 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2278, &qword_1B0E9BFA0);
      sub_1B0E44788();
    }
  }
}

uint64_t sub_1B07BDA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v7) = *(a1 + 8);
  BYTE4(v7) = *(a1 + 12);
  result = MailboxPath.makeSubMailbox(displayName:)(*a2, *(a2 + 8), *a1, v7);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v5;
    *(a3 + 12) = BYTE4(v5);
  }

  return result;
}

uint64_t *sub_1B07BDAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = 0;
  v14 = a2;
  v13 = a1;
  v12 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2250, &qword_1B0E9BF80);
  sub_1B0E46A48();
  sub_1B0E42E68();
  sub_1B07BAD2C();
  v11[1] = sub_1B0E445D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2240, &qword_1B0E9BF78);
  sub_1B0E44FD8();
  sub_1B07BA8E4(v11[2]);
  v7 = *(v3 + 16);
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v7)
  {
    v11[0] = v7;
    sub_1B07BD5EC(a1, a2, a3);
    v6 = v11[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = *(v3 + 16);
    *(v3 + 16) = v6;

    return sub_1B039E440(v11);
  }

  return result;
}

uint64_t sub_1B07BDCA0(uint64_t *a1, uint64_t a2, const void *a3)
{
  v34 = a1;
  v33 = a2;
  v41 = a3;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  memset(v48, 0, 13);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v32 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v13 - v32;
  v46 = sub_1B0E42E68();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v35 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v34);
  v36 = &v13 - v35;
  v37 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v38 = &v13 - v37;
  v39 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v40 = &v13 - v39;
  v57 = &v13 - v39;
  v56 = v8;
  memcpy(__dst, v9, 0x42uLL);
  v55 = v41;
  v43 = v59;
  memcpy(v59, v41, sizeof(v59));
  sub_1B07BEAB8(v59, &v54);
  v42 = RemoteMailbox.name.getter();
  sub_1B07BB7E0(v42, v10, v47);

  sub_1B07BAE48(v43);
  if ((*(v44 + 48))(v47, 1, v46) == 1)
  {
    return sub_1B06E3800(v47);
  }

  (*(v44 + 32))(v40, v47, v46);
  v26 = *(v44 + 16);
  v27 = v44 + 16;
  v26(v38, v40, v46);
  v28 = *v34;
  sub_1B07BAD2C();
  v29 = &v52;
  sub_1B0E44778();
  v30 = v52;
  v31 = v53 | (*(v29 + 12) << 32);
  if (v52)
  {
    v24 = v30;
    v25 = v31 & 0xFFFFFFFFFFLL;
    v20 = v31;
    v22 = v30;
    v48[0] = v30;
    LODWORD(v48[1]) = v31;
    BYTE4(v48[1]) = (v31 & 0xFFFFFFFFFFLL) >> 32;
    v18 = *(v44 + 8);
    v19 = v44 + 8;
    v18(v38, v46);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = RemoteMailbox.name.getter();
    v23 = static MailboxName.stableOrder(_:_:)(v22, v20, v21, v12);

    if (v23)
    {

      return (v18)(v40, v46);
    }
  }

  else
  {
    (*(v44 + 8))(v38, v46);
  }

  v26(v36, v40, v46);
  v16 = __dst[0];
  v15 = LODWORD(__dst[1]);
  v14 = BYTE4(__dst[1]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = &v49;
  v49 = v16;
  v50 = v15;
  v51 = (v15 | (v14 << 32)) >> 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2240, &qword_1B0E9BF78);
  sub_1B0E44788();
  return (*(v44 + 8))(v40, v46);
}

uint64_t sub_1B07BE340(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B07BE458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B07BE654(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 8))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B07BE7A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1B07BEA3C()
{
  v2 = qword_1EB6E2280;
  if (!qword_1EB6E2280)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2280);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07BEAB8(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v3;
  v4 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[2] = v4;
  v6 = a1[3];

  a2[3] = v6;
  v8 = a1[4];

  result = a2;
  a2[4] = v8;
  return result;
}

void *sub_1B07BEB50(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *a2 = v3;
    a2[1] = a1[1];
    v4 = a1[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[2] = v4;
  }

  else
  {
    *a2 = *a1;
    a2[2] = a1[2];
  }

  return a2;
}

uint64_t sub_1B07BEBE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v9 = a3;
  v7 = a1;
  v6[3] = a2;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v6 - v8;
  v12 = MEMORY[0x1EEE9AC00](v7);
  v13 = v4;
  v11 = v3;
  sub_1B07C122C(v12, v4, v6 - v8);
  sub_1B07BF670(v10, v9);
  return sub_1B06E3800(v10);
}

uint64_t sub_1B07BECC0(uint64_t a1)
{
  v4 = a1;
  v11 = sub_1B07C1938;
  v17 = 0;
  v16 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v17 = *MEMORY[0x1EEE9AC00](v4);
  v16 = v1;
  v14 = v17;
  sub_1B07C04F4(&v14, &v4 - v5);
  v10 = &v12;
  v13 = v7;
  v2 = sub_1B03EE50C();
  sub_1B039A570(v11, v10, v8, MEMORY[0x1E69E73E0], v2, v9, &v15);
  sub_1B06E3800(v6);
  return v15;
}

uint64_t sub_1B07BEDFC(const void *a1)
{
  v6[5] = 0;
  v6[6] = a1;
  v2 = _s18MailboxPersistenceVMa();
  memcpy(__dst, (v1 + *(v2 + 24)), sizeof(__dst));
  sub_1B07BEAB8(__dst, v6);
  v5 = sub_1B07BC2A4(a1);
  sub_1B07BAE48(__dst);
  return v5;
}

char *sub_1B07BEE90(uint64_t a1, uint64_t a2, unint64_t a3)
{
  memset(v31, 0, 13);
  v24[0] = 0;
  v24[1] = 0;
  v30 = a1;
  v28 = a2;
  v29 = a3;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0750598();
  sub_1B0E45798();
  for (i = v19; ; i = 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2288, &unk_1B0E9C0D0);
    sub_1B0E46518();
    if (!v23)
    {
      break;
    }

    sub_1B07C7F5C();
    v13 = sub_1B0E45F28();
    v14 = v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v25)
    {
      LODWORD(v21) = v26;
      BYTE4(v21) = ((v26 | (v27 << 32)) & 0xFFFFFFFFFFLL) >> 32;
      v7 = MailboxPath.makeSubMailbox(displayName:)(v13, v14, v25, v21);
      if (i)
      {
LABEL_14:

        sub_1B039E440(v24);
        sub_1B039E440(&v25);
        goto LABEL_15;
      }

      v25 = v7;
      v26 = v8;
      v27 = BYTE4(v8);
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = static MailboxPath.makeRootMailbox(displayName:pathSeparator:)(v13, v14, a2, a3);
      v11 = v5;
      v12 = v6;
      if (i)
      {
        goto LABEL_14;
      }

      v25 = v22;
      v26 = v11;
      v27 = v12;
    }
  }

  sub_1B039E440(v24);
  v16 = v25;
  v15 = v26 | (v27 << 32);
  v3 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v16)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v31[0] = v16;
    LODWORD(v31[1]) = v15;
    BYTE4(v31[1]) = (v15 & 0xFFFFFFFFFFLL) >> 32;

    sub_1B039E440(&v25);

    sub_1B039E440(v31);
    return v16;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v3);
  sub_1B07C7EE0();
  swift_allocError();
  swift_willThrow();
  sub_1B039E440(&v25);
LABEL_15:

  return v10;
}

uint64_t sub_1B07BF45C(uint64_t a1, int a2)
{
  v8 = a1;
  v6[3] = a2;
  v19 = 0;
  v20 = 0;
  v7 = (*(*(sub_1B0E44B68() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = v6 - v7;
  v19 = MEMORY[0x1EEE9AC00](v8);
  v20 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = &v16;
  v16 = v8;
  sub_1B0E44B48();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B07B517C();
  v13 = sub_1B0E44B08();
  v12 = v3;
  sub_1B039E440(v11);
  v14 = v13;
  v15 = v12;
  if (v12)
  {
    v17 = v14;
    v18 = v15;
  }

  else
  {
    v17 = sub_1B0E44838();
    v18 = v4;
    if (v15)
    {
      sub_1B03B1198(&v14);
    }
  }

  return v17;
}

uint64_t sub_1B07BF5C8(const void *a1)
{
  v3 = sub_1B07BEDFC(a1);
  if (!v3)
  {
    return 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return v3;
}

uint64_t sub_1B07BF670@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v20 = a1;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v19 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v11 - v19;
  v27 = sub_1B0E42E68();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v21 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v20);
  v22 = &v11 - v21;
  v23 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v24 = &v11 - v23;
  v32 = &v11 - v23;
  v31 = v6;
  v30 = v2;
  sub_1B071C180(v6, v7);
  if ((*(v25 + 48))(v28, 1, v27) == 1)
  {
    result = sub_1B06E3800(v28);
    v10 = v17;
    *v17 = 0;
    *(v10 + 8) = 1;
  }

  else
  {
    v8 = v22;
    (*(v25 + 32))(v24, v28, v27);
    v13 = *(v18 + *(_s18MailboxPersistenceVMa() + 20));
    MEMORY[0x1E69E5928](v13);
    (*(v25 + 16))(v8, v24, v27);
    v12 = sub_1B0E42D58();
    v16 = *(v25 + 8);
    v15 = v25 + 8;
    v16(v22, v27);
    v14 = [v13 mailboxDatabaseIDForMailboxURL_];
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
    v29 = v14;
    sub_1B0A22800(v14, v17);
    return (v16)(v24, v27);
  }

  return result;
}

uint64_t sub_1B07BF968@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v84 = a1;
  v63 = "Fatal error";
  v64 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v65 = "Message/MailboxPersistence.swift";
  v66 = "Unexpectedly found nil while unwrapping an Optional value";
  v91 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v67 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v68 = &v13 - v67;
  v74 = 0;
  v69 = sub_1B0E42CF8();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v13 - v72;
  v75 = sub_1B0E42E68();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v79 = &v13 - v78;
  v80 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v13 - v80;
  v82 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v13 - v82;
  v91 = &v13 - v82;
  v90 = v5;
  MEMORY[0x1E69E5928](v5);
  v85 = [v84 identifier];
  if (v85)
  {
    v61 = v85;
    v56 = v85;
    v57 = sub_1B0E44AD8();
    v58 = v6;
    MEMORY[0x1E69E5920](v56);
    v59 = v57;
    v60 = v58;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v55 = v60;
  v54 = v59;
  MEMORY[0x1E69E5920](v84);
  if (v55)
  {
    v52 = v54;
    v53 = v55;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v44 = v53;
  v45 = sub_1B0E44CE8();
  v46 = v7;

  v48 = v89;
  v89[0] = v45;
  v89[1] = v46;
  v47 = sub_1B07C7FD4();
  sub_1B07C804C();
  v49 = sub_1B0E44E18();
  v50 = v8;
  v87 = v49;
  v88 = v8;
  v51 = [v84 library];
  if (v51)
  {
    v43 = v51;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v42 = v43;
  v86 = v43;
  sub_1B07C80C4();
  v41 = ([v84 isKindOfClass_] & 1) != 0;
  v39 = v41;
  v40 = [v84 serverPathPrefixAccountValue];
  if (v40)
  {
    v38 = v40;
    v33 = v40;
    v34 = sub_1B0E44AD8();
    v35 = v9;
    MEMORY[0x1E69E5920](v33);
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  MEMORY[0x1E69E5928](v84);
  v32 = [v42 messageBasePathForAccount_];
  MEMORY[0x1E69E5920](v84);
  if (v32)
  {
    v29 = v32;
    v24 = v32;
    v25 = sub_1B0E44AD8();
    v26 = v10;
    MEMORY[0x1E69E5920](v24);
    v27 = v25;
    v28 = v26;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v22 = v28;
  v23 = v27;
  if (v28)
  {
    v20 = v23;
    v21 = v22;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v18 = v21;
  v17 = v20;
  (*(v70 + 104))(v73, *MEMORY[0x1E6968F58], v69);
  (*(v76 + 56))(v68, 1, 1, v75);
  sub_1B0E42E48();
  v19 = [v42 persistence];
  if (v19)
  {
    v16 = v19;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v14 = v16;
  v15 = [v16 mailboxPersistence];
  MEMORY[0x1E69E5920](v14);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_1B07C0974(v49, v50, v39, v31, v30, v79, v11, v81);
  sub_1B04158DC(v81, v83);
  MEMORY[0x1E69E5920](v42);
  sub_1B03F4D78(v83, v62);
  MEMORY[0x1E69E5920](v84);
  return sub_1B03F4F08(v83);
}

uint64_t sub_1B07C0364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2298, &qword_1B0E9C0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BB0, &qword_1B0E9C0E8);
  sub_1B07C8150();
  sub_1B0E44F58();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E42E68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22A0, &unk_1B0E9C0F0);
  sub_1B07BAD2C();
  sub_1B07C81D8();
  v1 = sub_1B0E44718();

  return v1;
}

void *sub_1B07C04F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = a2;
  v13 = a1;
  v22 = 0;
  v21 = 0;
  v14 = 0;
  v8 = sub_1B0E42E68();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v6 - v11;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v6 - v15;
  v17 = *v3;
  v22 = v17;
  v21 = v2;
  v18 = *(v2 + *(_s18MailboxPersistenceVMa() + 20));
  MEMORY[0x1E69E5928](v18);
  v20 = v17;
  v4 = sub_1B0A227DC(&v20);
  v19 = [v18 mailboxURLForMailboxDatabaseID_];
  MEMORY[0x1E69E5920](v18);
  if (v19)
  {
    v6[1] = v19;
    v6[0] = v19;
    sub_1B0E42DE8();
    (*(v9 + 32))(v16, v12, v8);
    (*(v9 + 56))(v16, 0, 1, v8);
    MEMORY[0x1E69E5920](v6[0]);
  }

  else
  {
    (*(v9 + 56))(v16, 1, 1, v8);
  }

  return sub_1B07C8260(v16, v7);
}

uint64_t sub_1B07C07B4()
{
  v2 = *(v0 + *(_s18MailboxPersistenceVMa() + 20));
  MEMORY[0x1E69E5928](v2);
  return v2;
}

void *sub_1B07C082C(void *a1)
{
  sub_1B07BEAB8(a1, v5);
  v2 = _s18MailboxPersistenceVMa();
  sub_1B07C8388(a1, (v1 + *(v2 + 24)));
  return sub_1B07BAE48(a1);
}

uint64_t sub_1B07C0878()
{
  v4[5] = 0;
  v1 = _s18MailboxPersistenceVMa();
  memcpy(__dst, (v0 + *(v1 + 24)), sizeof(__dst));
  sub_1B07BEAB8(__dst, v4);
  v3 = sub_1B07BA474();
  sub_1B07BAE48(__dst);
  return v3;
}

uint64_t sub_1B07C0974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a8;
  v62 = a1;
  v60 = a2;
  v52 = a3;
  v49 = a4;
  v50 = a5;
  v61 = a6;
  v46 = a7;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v74 = 0uLL;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v47 = 0;
  v57 = sub_1B0E42E68();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v48 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v56 = v28 - v48;
  v58 = _s18MailboxPersistenceVMa();
  v51 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v59 = v28 - v51;
  v84 = v28 - v51;
  v82 = v9;
  v83 = v10;
  v81 = v11 & 1;
  v79 = v12;
  v80 = v13;
  v78 = v14;
  v77 = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53 = &v85;
  sub_1B07BAB4C(v62, v60, v52 & 1, &v85);
  memcpy((v59 + *(v58 + 24)), v53, 0x28uLL);
  (*(v54 + 16))(v56, v61, v57);
  (*(v54 + 32))(v59, v56, v57);
  MEMORY[0x1E69E5928](a7);
  v15 = v60;
  v16 = v61;
  v17 = v62;
  *(v59 + *(v58 + 20)) = a7;
  *&v63 = sub_1B08D4E94(v17, v15, v16);
  *(&v63 + 1) = v18;
  *&v64 = v19;
  *(&v64 + 1) = v20;
  v65 = 0;
  v43 = v63;
  v44 = v64;
  v40 = v20;
  v41 = v19;
  v42 = v63;
  v75 = v63;
  v76 = v64;
  sub_1B07B1004(v63, v18);
  if (*(&v42 + 1))
  {
    v37 = v42;
    v38 = v41;
    v39 = v40;
    v32 = v40;
    v33 = v41;
    v34 = *(&v42 + 1);
    v35 = v42;
    v74 = v42;
    v72 = v41;
    v73 = v40;
    v21 = sub_1B0E447F8();
    v71 = v21;
    v36 = v21;
    if ((v21 & 0x100) != 0)
    {
    }

    else
    {
      v31 = v36;
      v30 = v36;
      v70 = v36;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v66 = v49;
      v67 = v50;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v67)
      {
        v68 = v66;
        v69 = v67;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v68 = v35;
        v69 = v34;
        if (v67)
        {
          sub_1B03B1198(&v66);
        }
      }

      v28[2] = sub_1B07C10E4(v68, v69);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v28[0] = MEMORY[0x1E69E7508];
      v22 = sub_1B0E46A48();
      *v23 = v30;
      sub_1B0394964();
      v28[1] = v22;
      v29 = sub_1B0E45238();

      v24 = Namespace.init(prefix:separator:)(v29, v33, v32);
      sub_1B07C0900(v24, v25, v26);
    }
  }

  sub_1B07AD750(v42, *(&v42 + 1));
  sub_1B03F4D78(v59, v45);
  MEMORY[0x1E69E5920](v46);
  (*(v54 + 8))(v61, v57);

  return sub_1B03F4F08(v59);
}

uint64_t sub_1B07C10E4(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v15 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = ByteBuffer.init(string:)(a1, a2);
  LODWORD(v12) = v2;
  WORD2(v12) = v3;
  BYTE6(v12) = v4;
  v11 = MailboxName.init(_:)(v13, v5, v12);
  v10 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = v11;
  v15 = v10;

  sub_1B039E440(&v14);
  return v11;
}

void *sub_1B07C122C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v9[5] = 0;
  v9[6] = a1;
  v10 = a2;
  v4 = _s18MailboxPersistenceVMa();
  memcpy(__dst, (v3 + *(v4 + 24)), sizeof(__dst));
  sub_1B07BEAB8(__dst, v9);
  sub_1B07BB7E0(a1, a2, a3);
  return sub_1B07BAE48(__dst);
}

uint64_t sub_1B07C1318(char *a1, uint64_t a2)
{
  v10[5] = 0;
  __dst[5] = a1;
  __dst[6] = a2;
  v6 = a2;
  v7 = BYTE4(a2);
  v10[6] = a1;
  v11 = a2;
  v12 = BYTE4(a2);
  v3 = _s18MailboxPersistenceVMa();
  memcpy(__dst, (v2 + *(v3 + 24)), 0x28uLL);
  sub_1B07BEAB8(__dst, v10);
  LODWORD(v9) = v6;
  BYTE4(v9) = v7;
  v8 = sub_1B07BB298(a1, v9);
  sub_1B07BAE48(__dst);
  return v8 & 1;
}

uint64_t sub_1B07C13EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v21 = a1;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v26 = 0;
  v32 = 0;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v28 = &v12 - v20;
  v34 = v4;
  v33 = a2;
  v27 = sub_1B0E42E68();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v22 = *(v24 + 16);
  v23 = v24 + 16;
  (v22)(v28, v21);
  (*(v24 + 56))(v28, v26, 1, v27);
  v30 = sub_1B07BF5C8(v28);
  v29 = v5;
  sub_1B06E3800(v28);
  if (v30)
  {
    v17 = v30;
    v18 = v29;
    v14 = v29;
    v16 = v30;
    v31 = v30;
    v32 = v29;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BB0, &qword_1B0E9C0E8);
    v13 = (v19 + *(v15 + 48));
    v22();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = v19;
    v8 = v13;
    v9 = v14;
    v10 = v15;
    *v13 = v16;
    *(v8 + 2) = v9;
    (*(*(v10 - 8) + 56))(v7, 0, 1);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BB0, &qword_1B0E9C0E8);
    return (*(*(v6 - 8) + 56))(v19, 1);
  }
}

uint64_t sub_1B07C1684@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  v4 = *a2;
  v6 = *(a2 + 2);
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a3 = v4;
  *(a3 + 8) = v6;
  return result;
}

id sub_1B07C16F4()
{
  sub_1B07BC130();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1B0E42D18();
  v2 = sub_1B0E44AC8();

  v3 = [ObjCClassFromMetadata mailboxUidFromActiveAccountsForURL_];
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B07C179C(uint64_t a1, int a2)
{
  v7 = a1;
  v6[3] = a2;
  v14 = sub_1B07C1938;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v8 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = v6 - v8;
  v19 = MEMORY[0x1EEE9AC00](v7);
  v20 = v3;
  v18 = v2;
  sub_1B07C122C(v19, v3, v6 - v8);
  v13 = &v15;
  v16 = v10;
  v4 = sub_1B03EE50C();
  sub_1B039A570(v14, v13, v11, MEMORY[0x1E69E73E0], v4, v12, &v17);
  sub_1B06E3800(v9);
  return v17;
}

id sub_1B07C18E0@<X0>(void *a1@<X8>)
{
  result = sub_1B07C16F4();
  *a1 = result;
  return result;
}

void *sub_1B07C1964@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = *a1;
  v9 = a2;
  v8 = v3;
  v5 = *(v3 + *(_s18MailboxPersistenceVMa() + 20));
  MEMORY[0x1E69E5928](v5);
  v7 = v10;
  sub_1B0A422BC(&v7, v11);
  MEMORY[0x1E69E5920](v5);
  return memcpy(a3, v11, 0x2EuLL);
}

uint64_t sub_1B07C1A10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v11 = a1;
  v10 = *a2;
  v9 = a3;
  v8 = v3;
  v6 = *(v3 + *(_s18MailboxPersistenceVMa() + 20));
  MEMORY[0x1E69E5928](v6);
  v7 = v10;
  sub_1B0A42454(a1, &v7);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1B07C1AAC()
{
  v3 = *(v0 + *(_s18MailboxPersistenceVMa() + 20));
  MEMORY[0x1E69E5928](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3460, &qword_1B0EA1F70);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22A8, &qword_1B0E9C100);
  v1 = sub_1B039D36C();
  sub_1B039CA88(sub_1B07C1C88, 0, v4, v5, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v6);
  type metadata accessor for EDMailboxRowID_s();
  sub_1B0E45B08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22B0, &qword_1B0E9C108);
  sub_1B07C8410();
  sub_1B07C8490();
  sub_1B0E44718();
  sub_1B0E45B98();

  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1B07C1C88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = 0;
  v6 = *a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22A8, &qword_1B0E9C100) + 48);
  v5 = v6;
  *a2 = sub_1B0A227DC(&v5);
  return sub_1B0E45AF8();
}

uint64_t sub_1B07C1D80()
{
  v2 = *(v0 + *(_s18MailboxPersistenceVMa() + 20));
  MEMORY[0x1E69E5928](v2);
  sub_1B0E45B98();
  return MEMORY[0x1E69E5920](v2);
}

uint64_t sub_1B07C1E08(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a8;
  v31 = a7;
  v32 = a6;
  v33 = a5;
  v34 = a4;
  v39 = a3;
  v37 = 0;
  v55[3] = 0;
  v54 = 0;
  v52 = 0;
  v56 = a1 & 1;
  v55[10] = a2;
  v55[6] = a3;
  v55[7] = a4;
  v55[8] = a5;
  v55[9] = a6;
  v55[5] = a7;
  v55[4] = a8;
  v8 = v35;
  v40 = sub_1B07C23A0(a1 & 1, a3, a4, a5, a6, a7, a8);
  v36 = v40;
  v55[2] = v40;
  v41 = swift_allocObject();
  v38 = v41;
  v55[1] = v41 + 16;
  *(v41 + 16) = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55[0] = v39;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v48 = v41;
  v49 = v40;
  v50 = v8;
  v45 = sub_1B07C8518;
  v46 = &v47;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22B8, &unk_1B0E9C110);
  sub_1B07C8554();
  v43 = 0;
  v44 = sub_1B0E44F58();
  v22 = v44;

  sub_1B039E440(v55);
  v54 = v44;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53 = v34;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = &v15;
  v24 = 32;
  MEMORY[0x1EEE9AC00](&v15);
  v14[2] = v9;
  v14[3] = v36;
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v26 = v13;
  v13[2] = sub_1B07C85DC;
  v13[3] = v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22C0, &unk_1B0E9E070);
  sub_1B07C8614();
  v11 = sub_1B0E44F58();
  v28 = 0;
  v29 = v11;
  v16 = v11;

  sub_1B039E440(&v53);
  v52 = v16;
  v17 = &type metadata for MailboxOfInterest;
  v18 = sub_1B0E45238();
  v19 = sub_1B0E45238();

  v51 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36E0, &qword_1B0E9C120);
  sub_1B07C869C();
  v21 = sub_1B0E44FF8();
  v15 = v21;
  sub_1B039E440(&v51);

  return v15;
}

uint64_t sub_1B07C23A0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1 & 1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v13 = a6;
  v12 = a7;
  v11 = v7;
  v10[1] = sub_1B07C3150(a7);
  v10[0] = sub_1B07C44E8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22C8, &qword_1B0E9C128);
  sub_1B07C877C();
  v9 = sub_1B0E44F58();

  sub_1B039E440(v10);

  return v9;
}

uint64_t sub_1B07C25C4(uint64_t a1, uint64_t a2)
{
  v12[6] = a1 + 16;
  v12[5] = a2;
  v10 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v10)
  {
    return v10;
  }

  v12[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36E0, &qword_1B0E9C120);
  v2 = sub_1B07C869C();
  MEMORY[0x1B27270C0](v12, v5, v2);
  v11 = v12[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22D0, &qword_1B0E9C130);
  sub_1B07C8804();
  sub_1B0E46728();
  sub_1B039E440(&v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22E0, &unk_1B0E9C138);
  sub_1B0451F2C();
  sub_1B07C888C();
  v6 = sub_1B0E45598();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(a1 + 16) = v6;

  swift_endAccess();
  return v6;
}

uint64_t sub_1B07C278C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B07C27E0(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  v2 = *(a2 + 16);
  *(a2 + 16) = a1;

  swift_endAccess();
}

void *sub_1B07C2860@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v39 = a7;
  v55 = a1;
  v54 = a2;
  v42 = a3;
  v45 = a4;
  v44 = a5;
  v43 = a6;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v69 = 0;
  v63 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v40 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v25 - v40;
  v46 = sub_1B0E42E68();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v50 = *(v47 + 64);
  v49 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v45);
  v51 = &v25 - v49;
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v53 = &v25 - v52;
  v79 = &v25 - v52;
  v77 = v55;
  v78 = v10;
  v76 = v11;
  v75 = v9 + 16;
  v74 = v12;
  v73 = v13;
  v57 = sub_1B07C25C4(v9, v12);
  v56 = &v71;
  v71 = v55;
  v72 = v54;
  sub_1B0451F2C();
  v58 = sub_1B0E45528();

  if (v58)
  {
    goto LABEL_7;
  }

  sub_1B07C122C(v55, v54, v41);
  if ((*(v47 + 48))(v41, 1, v46) == 1)
  {
    sub_1B06E3800(v41);
LABEL_7:
    memset(v70, 0, sizeof(v70));
    memcpy(__dst, v70, 0x59uLL);
    return memcpy(v39, __dst, 0x59uLL);
  }

  v14 = v51;
  (*(v47 + 32))(v53, v41, v46);
  v36 = *(v43 + *(_s18MailboxPersistenceVMa() + 20));
  MEMORY[0x1E69E5928](v36);
  (*(v47 + 16))(v14, v53, v46);
  v35 = sub_1B0E42D58();
  v33 = *(v47 + 8);
  v34 = v47 + 8;
  v33(v51, v46);
  v37 = [v36 insertDatabaseRowForMailboxURL_];
  MEMORY[0x1E69E5920](v35);
  MEMORY[0x1E69E5920](v36);
  v69 = v37;
  sub_1B0A22800(v37, &v67);
  v38 = v67;
  if (v68)
  {
    v31 = v66;
    memset(v66, 0, 89);
    v33(v53, v46);
    memcpy(__dst, v31, 0x59uLL);
  }

  else
  {
    v32 = v38;
    v63 = v38;
    v62 = v38;
    v25 = sub_1B0A22770(&v62, v15, v16, v17, v18, v19, v20, v21);
    v26 = v22;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LODWORD(v61) = 0;
    BYTE4(v61) = 1;
    v59 = 0;
    v60 = 1;
    v27 = v80;
    MailboxOfInterest.init(id:name:uidValidity:fetchedWindow:highestModificationSequenceValue:localModification:latestLocalChange:)(v25, v26, v55, v54, v61, 0, 1, 0, v80, 1, 2, 0, v24, 0, 1);
    v28 = v64;
    v30 = 89;
    memcpy(v64, v27, 0x59uLL);
    v29 = v65;
    memcpy(v65, v64, 0x59uLL);
    v33(v53, v46);
    memcpy(__dst, v29, v30);
  }

  return memcpy(v39, __dst, 0x59uLL);
}

void *sub_1B07C2E40@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v26 = a1;
  v27 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v22 = a6 + 16;
  v21 = a7;
  sub_1B07C25C4(a6, a7);
  v19[12] = a1;
  v20 = a2;
  sub_1B0451F2C();
  v15 = sub_1B0E45528();

  if (v15)
  {
    memset(v19, 0, 89);
    memcpy(v29, v19, sizeof(v29));
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LODWORD(v16) = 0;
    BYTE4(v16) = 1;
    MailboxOfInterest.init(id:name:uidValidity:fetchedWindow:highestModificationSequenceValue:localModification:latestLocalChange:)(a4, a5, a1, a2, v16, 0, 1, 0, v28, 1, 1, 0, v9, 0, 1);
    memcpy(__dst, v28, sizeof(__dst));
    memcpy(v18, __dst, sizeof(v18));
    memcpy(v29, v18, sizeof(v29));
  }

  return memcpy(a8, v29, 0x59uLL);
}

BOOL sub_1B07C30B8(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = static MailboxName.stableOrder(_:_:)(v6, v3, v5, v4);

  return v7;
}

uint64_t sub_1B07C3150(uint64_t a1)
{
  v151 = a1;
  v143 = 0;
  v175 = 0;
  v174 = 0;
  v142 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v161 = 0;
  v144 = sub_1B0E439A8();
  v145 = *(v144 - 8);
  v146 = v145;
  v147 = *(v145 + 64);
  v2 = MEMORY[0x1EEE9AC00](0);
  v149 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
  v148 = v37 - v149;
  MEMORY[0x1EEE9AC00](v2);
  v150 = v37 - v149;
  v152 = sub_1B0E42E68();
  v153 = *(v152 - 8);
  v154 = v153;
  v3 = *(v153 + 64);
  v4 = MEMORY[0x1EEE9AC00](v151);
  v155 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v4;
  v174 = v1;
  v156 = sub_1B07C0878();
  v157 = v6;
  v158 = v7;
  if (v156)
  {
    v138 = v156;
    v139 = v157;
    v140 = v158;
    v134 = v158;
    v135 = v157;
    v133 = v156;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v136 = v135;
    v137 = v134;
  }

  else
  {
    v136 = 0;
    v137 = 0;
  }

  v131 = v137;
  v132 = v136;
  if (v137)
  {
    v129 = v132;
    v130 = v131;
    v8 = v141;
    v9 = v142;
    v119 = v131;
    v120 = v132;
    v168 = v132;
    v169 = v131;
    v122 = *(v8 + *(_s18MailboxPersistenceVMa() + 20));
    v121 = v122;
    v10 = v122;
    v125 = sub_1B03F4EB8();
    v124 = v11;
    v123 = v11;
    (*(v154 + 16))(v155, v141, v152);
    v12 = sub_1B08D4FFC(v125, v124, v155);
    v126 = v9;
    v127 = v12;
    v128 = v9;
    if (v9)
    {
      v21 = v148;
      v57 = v128;
      v56 = 0;
      (*(v154 + 8))(v155, v152);

      v22 = v57;
      v167 = v57;
      (*(v146 + 16))(v21, v151, v144);
      v23 = v57;
      v64 = 7;
      v65 = swift_allocObject();
      *(v65 + 16) = v57;
      v75 = sub_1B0E43988();
      v58 = v75;
      v74 = sub_1B0E458F8();
      v59 = v74;
      v60 = 17;
      v68 = swift_allocObject();
      v61 = v68;
      *(v68 + 16) = 64;
      v69 = swift_allocObject();
      v62 = v69;
      *(v69 + 16) = 8;
      v63 = 32;
      v24 = swift_allocObject();
      v25 = v65;
      v66 = v24;
      *(v24 + 16) = sub_1B07135E4;
      *(v24 + 24) = v25;
      v26 = swift_allocObject();
      v27 = v66;
      v72 = v26;
      v67 = v26;
      *(v26 + 16) = sub_1B070B324;
      *(v26 + 24) = v27;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v70 = sub_1B0E46A48();
      v71 = v28;

      v29 = v68;
      v30 = v71;
      *v71 = sub_1B0398F5C;
      v30[1] = v29;

      v31 = v69;
      v32 = v71;
      v71[2] = sub_1B0398F5C;
      v32[3] = v31;

      v33 = v71;
      v34 = v72;
      v71[4] = sub_1B070B4B4;
      v33[5] = v34;
      sub_1B0394964();

      if (os_log_type_enabled(v75, v74))
      {
        v35 = v56;
        v49 = sub_1B0E45D78();
        v46 = v49;
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v52 = 1;
        v50 = sub_1B03949A8(1);
        v48 = v50;
        v51 = sub_1B03949A8(0);
        v166 = v49;
        v165 = v50;
        v164 = v51;
        v53 = &v166;
        sub_1B0394A48(2, &v166);
        sub_1B0394A48(v52, v53);
        v162 = sub_1B0398F5C;
        v163 = v61;
        sub_1B03949FC(&v162, v53, &v165, &v164);
        v54 = v35;
        v55 = v35;
        if (v35)
        {
          v44 = 0;

          __break(1u);
        }

        else
        {
          v162 = sub_1B0398F5C;
          v163 = v62;
          sub_1B03949FC(&v162, &v166, &v165, &v164);
          v42 = 0;
          v43 = 0;
          v162 = sub_1B070B4B4;
          v163 = v67;
          sub_1B03949FC(&v162, &v166, &v165, &v164);
          v40 = 0;
          v41 = 0;
          _os_log_impl(&dword_1B0389000, v58, v59, "Unable to read mailbox attributes: %@", v46, 0xCu);
          sub_1B03998A8(v48);
          sub_1B03998A8(v51);
          sub_1B0E45D58();

          v45 = v40;
        }
      }

      else
      {
        v36 = v56;

        v45 = v36;
      }

      v39 = v45;

      (*(v146 + 8))(v148, v144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22F0, &qword_1B0E9C148);
      v37[1] = 0;
      v37[3] = sub_1B0E46A48();
      v37[2] = type metadata accessor for MailboxAttributes();
      sub_1B0451F2C();
      v38 = sub_1B0E445D8();

      v101 = v38;
      v102 = v39;
    }

    else
    {
      v110 = v127;
      (*(v154 + 8))(v155, v152);

      v161 = v110;
      v160 = v110;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v111 = v37;
      v112 = 32;
      MEMORY[0x1EEE9AC00](v37);
      v13 = v119;
      v37[-2] = v14;
      v37[-1] = v13;
      v113 = v37;
      MEMORY[0x1EEE9AC00](v37);
      v114 = &v37[-4];
      v37[-2] = sub_1B07C8D7C;
      v37[-1] = v15;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22F8, &qword_1B0E9C150);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22F0, &qword_1B0E9C148);
      sub_1B07C8DB4();
      v16 = sub_1B0E44F58();
      v117 = 0;
      v118 = v16;
      v103 = v16;

      v159 = v103;
      v104 = 0;
      v105 = type metadata accessor for MailboxAttributes();
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2300, &qword_1B0E9C158);
      v107 = sub_1B0451F2C();
      sub_1B07C8E3C();
      v17 = sub_1B0E44718();
      v108 = 0;
      v109 = v17;
      v100 = v17;

      v101 = v100;
      v102 = v108;
    }
  }

  else
  {
    (*(v146 + 16))(v150, v151, v144);
    v98 = sub_1B0E43988();
    v95 = v98;
    v97 = sub_1B0E458E8();
    v96 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v99 = sub_1B0E46A48();
    if (os_log_type_enabled(v98, v97))
    {
      v18 = v142;
      v86 = sub_1B0E45D78();
      v82 = v86;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v84 = 0;
      v87 = sub_1B03949A8(0);
      v85 = v87;
      v88 = sub_1B03949A8(v84);
      v173 = v86;
      v172 = v87;
      v171 = v88;
      v89 = 0;
      v90 = &v173;
      sub_1B0394A48(0, &v173);
      sub_1B0394A48(v89, v90);
      v170 = v99;
      v91 = v37;
      MEMORY[0x1EEE9AC00](v37);
      v92 = &v37[-6];
      v37[-4] = v19;
      v37[-3] = &v172;
      v37[-2] = &v171;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v94 = v18;
      if (v18)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v95, v96, "No path separator set.", v82, 2u);
        v80 = 0;
        sub_1B03998A8(v85);
        sub_1B03998A8(v88);
        sub_1B0E45D58();

        v81 = v94;
      }
    }

    else
    {

      v81 = v142;
    }

    v79 = v81;

    (*(v146 + 8))(v150, v144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22F0, &qword_1B0E9C148);
    v76 = 0;
    v78 = sub_1B0E46A48();
    v77 = type metadata accessor for MailboxAttributes();
    sub_1B0451F2C();
    v101 = sub_1B0E445D8();
    v102 = v79;
  }

  return v101;
}

uint64_t sub_1B07C43AC(uint64_t a1, int a2, uint64_t a3)
{
  v12 = a1;
  v13 = a2;
  v11 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = a1;
  v7 = a2;
  type metadata accessor for MailboxAttributes();
  sub_1B0451F2C();
  sub_1B0E44778();
  sub_1B039E440(&v6);
  if (v9)
  {
    sub_1B0694AF8();
    sub_1B0694390();
    sub_1B0E46FE8();
  }

  else
  {
    v10 = v8;
  }

  sub_1B0694AF8();
  return sub_1B0E46F78() & 1;
}

uint64_t sub_1B07C44E8()
{
  v6 = v0;
  v3 = *(v0 + *(_s18MailboxPersistenceVMa() + 20));
  MEMORY[0x1E69E5928](v3);
  sub_1B07C5220();
  v4 = sub_1B0E45B18();

  MEMORY[0x1E69E5920](v3);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2308, &unk_1B0E9C160);
  _s18MailboxPersistenceV19RowIDURLAndMetadataVMa();
  sub_1B07C8F38();
  v2 = sub_1B0E44F58();
  sub_1B039E440(&v5);
  return v2;
}

uint64_t sub_1B07C4604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v93 = a9;
  v107 = a1;
  v94 = a2;
  v95 = a3;
  v96 = a4;
  v97 = a5;
  v98 = a6;
  v99 = a7;
  v100 = a8;
  v101 = a10;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v167 = 0u;
  v168 = 0u;
  v166 = 0;
  v163 = 0;
  v164 = 0;
  v160 = 0;
  v111 = 0;
  v161 = 0;
  v158 = 0;
  v159 = 0;
  v153 = 0;
  memset(&v152[12], 0, 0x2EuLL);
  v102 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v114 = &v27 - v102;
  v172 = MEMORY[0x1EEE9AC00](v107);
  v171 = a2;
  v170 = v11;
  v112 = 1;
  v169 = v12 & 1;
  *&v167 = v13;
  *(&v167 + 1) = v14;
  *&v168 = v15;
  *(&v168 + 1) = v16;
  v166 = v17;
  v165 = *v172;
  v103 = sub_1B0A22770(&v165, a2, v11, v12, v13, v14, v15, v16);
  v104 = v18;
  v163 = v103;
  v164 = v18;
  v105 = 0;
  v106 = _s18MailboxPersistenceV19RowIDURLAndMetadataVMa();
  v108 = *(v106 + 20);
  v113 = sub_1B0E42E68();
  v109 = *(v113 - 8);
  v110 = v113 - 8;
  (*(v109 + 16))(v114, v107 + v108);
  (*(v109 + 56))(v114, v111, v112, v113);
  v116 = sub_1B07BF5C8(v114);
  v115 = v19;
  sub_1B06E3800(v114);
  if (!v116)
  {
    goto LABEL_20;
  }

  v91 = v116;
  v92 = v115;
  v89 = v115;
  v90 = v116;
  v160 = v116;
  v161 = v115;
  v20 = sub_1B07C43AC(v116, v115, v95);
  if ((v20 & 1) != 0 || (v87 = sub_1B07C0878(), v85 = v21, v86 = v22, v88 = sub_1B0876B40(v90, v89, v87, v21, v22, v96 & 1), sub_1B07BA794(v87), (v88 & 1) == 0))
  {

LABEL_20:
    memset(v162, 0, sizeof(v162));
    memcpy(v93, v162, 0x59uLL);
  }

  v83 = sub_1B0876D18(v90, v89, v97, v98, v99, v100);
  v84 = v23;
  v158 = v83;
  v159 = v23;
  v156 = v83;
  v157 = v23;
  v154 = 1;
  v155 = 0;
  v153 = (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v83, v23, 1, 0) ^ 1) & 1;
  if (v153)
  {
    v24 = (v107 + *(v106 + 24));
    v73 = v117;
    v74 = 45;
    memcpy(v117, v24, 0x2DuLL);
    v75 = v118;
    memcpy(v118, v117, sizeof(v118));
    v119 = 0;
    v76 = *v118;
    v77 = *&v118[8];
    v78 = *&v118[16];
    v79 = *&v118[24];
    v80 = *&v118[32];
    v81 = *&v118[40] | (v118[44] << 32);
    v82 = 0;
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 1;
  }

  v72 = v82;
  v66 = v81;
  v67 = v80;
  v68 = v79;
  v69 = v78;
  v70 = v77;
  v71 = v76;
  v152[12] = v76;
  v152[13] = v77;
  v152[14] = v78;
  v152[15] = v79;
  v152[16] = v80;
  LODWORD(v152[17]) = v81;
  BYTE4(v152[17]) = BYTE4(v81);
  BYTE5(v152[17]) = v82 & 1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v72)
  {
    v57 = 0;
    v58 = 1;
  }

  else
  {
    v59 = v71;
    v60 = v70;
    v61 = v69;
    v62 = v68;
    v63 = v67;
    v64 = HIDWORD(v67) | (v66 << 32);
    v65 = (v66 & 0xFFFFFFFFFFLL) >> 32;
    v120 = v71;
    v121 = BYTE4(v71) & 1;
    v122 = v70;
    v123 = v69 & 1;
    v124 = v68;
    v125 = v67 & 1;
    v126 = v64;
    v127 = v65 & 1;
    v57 = v71;
    v58 = BYTE4(v71) & 1;
  }

  v55 = v58;
  v56 = v57;
  if (v72)
  {
    v46 = 0;
    v47 = 1;
  }

  else
  {
    v48 = v71;
    v49 = v70;
    v50 = v69;
    v51 = v68;
    v52 = v67;
    v53 = HIDWORD(v67) | (v66 << 32);
    v54 = (v66 & 0xFFFFFFFFFFLL) >> 32;
    v128 = v71;
    v129 = BYTE4(v71) & 1;
    v130 = v70;
    v131 = v69 & 1;
    v132 = v68;
    v133 = v67 & 1;
    v134 = v53;
    v135 = v54 & 1;
    v46 = v70;
    v47 = v69 & 1;
  }

  v44 = v47;
  v45 = v46;
  if (v72)
  {
    v35 = 0;
    v36 = 1;
  }

  else
  {
    v37 = v71;
    v38 = v70;
    v39 = v69;
    v40 = v68;
    v41 = v67;
    v42 = HIDWORD(v67) | (v66 << 32);
    v43 = (v66 & 0xFFFFFFFFFFLL) >> 32;
    v136 = v71;
    v137 = BYTE4(v71) & 1;
    v138 = v70;
    v139 = v69 & 1;
    v140 = v68;
    v141 = v67 & 1;
    v142 = v42;
    v143 = v43 & 1;
    v35 = v68;
    v36 = v67 & 1;
  }

  v29 = v36;
  v30 = v35;
  sub_1B07C9330(v83);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = &v147;
  v147 = v90;
  v148 = v89;
  sub_1B0451F2C();
  sub_1B0E44778();
  sub_1B039E440(v28);
  LODWORD(v146) = v56;
  BYTE4(v146) = v55 & 1;
  v144 = v149;
  v145 = v150 & 1;
  v31 = v173;
  MailboxOfInterest.init(id:name:uidValidity:fetchedWindow:highestModificationSequenceValue:localModification:latestLocalChange:)(v103, v104, v90, v89, v146, v45, v44 & 1, v30, v173, v29 & 1, v83, v84, v26, v149, v150 & 1);
  v32 = v151;
  v34 = 89;
  memcpy(v151, v31, 0x59uLL);
  v33 = v152;
  memcpy(v152, v151, 0x59uLL);
  memcpy(v93, v152, 0x59uLL);
  sub_1B07C936C(v83);
}

char *sub_1B07C4FB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = sub_1B07BEE90(a1, a3, a4);
  if (v10)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07C5198@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  return result;
}

uint64_t *sub_1B07C51F4@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  *a3 = *a2;
  return result;
}

uint64_t sub_1B07C5220()
{
  v6[2] = 0;
  v6[0] = sub_1B0E46A28();
  v6[1] = v0;
  v1 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v1);

  v5[0] = sub_1B03F4EB8();
  v5[1] = v2;
  sub_1B0E46A08();
  sub_1B03B1198(v5);
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v6);
  return sub_1B0E44C88();
}

uint64_t sub_1B07C535C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(_s18MailboxPersistenceV19RowIDURLAndMetadataVMa() + 20);
  v2 = sub_1B0E42E68();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B07C53D4(uint64_t a1)
{
  v11 = a1;
  v6 = 0;
  v10 = sub_1B0E42E68();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  v2 = _s18MailboxPersistenceV19RowIDURLAndMetadataVMa();
  (*(v8 + 40))(v1 + *(v2 + 20), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

void *sub_1B07C54F4@<X0>(void *a1@<X8>)
{
  v2 = _s18MailboxPersistenceV19RowIDURLAndMetadataVMa();
  memcpy(__dst, (v1 + *(v2 + 24)), sizeof(__dst));
  return memcpy(a1, __dst, 0x2DuLL);
}

void *sub_1B07C558C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, char *a4@<X8>)
{
  *a4 = *a1;
  v10 = _s18MailboxPersistenceV19RowIDURLAndMetadataVMa();
  v6 = *(v10 + 20);
  v4 = sub_1B0E42E68();
  (*(*(v4 - 8) + 32))(&a4[v6], a2);
  return memcpy(&a4[*(v10 + 24)], a3, 0x2DuLL);
}

uint64_t sub_1B07C5640@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v24 = 0;
  v21 = 0;
  v14 = 0;
  v15 = (*(*(sub_1B0E42E68() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v8 - v15;
  v3 = sub_1B0E45B78();
  v17 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v8 - v17;
  v24 = a1;
  v4 = sub_1B0E45BC8();
  sub_1B0A22800(v4, &v22);
  v19 = v22;
  if (v23)
  {
    v5 = _s18MailboxPersistenceV19RowIDURLAndMetadataVMa();
    return (*(*(v5 - 8) + 56))(v12, 1);
  }

  else
  {
    v11 = v19;
    v8 = v19;
    v21 = v19;
    sub_1B0E45BA8();
    v10 = v25;
    sub_1B0A4255C(v18, v25);
    v9 = &v20;
    v20 = v8;
    sub_1B0E45BB8();
    sub_1B07C558C(v9, v16, v10, v12);
    v6 = _s18MailboxPersistenceV19RowIDURLAndMetadataVMa();
    return (*(*(v6 - 8) + 56))(v12, 0, 1);
  }
}

uint64_t sub_1B07C5844@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v215 = a4;
  v267 = a1;
  v266 = a2;
  v265 = a3;
  v217 = sub_1B07C8FC0;
  v218 = 0x786F626C69616DLL;
  v219 = sub_1B06BA324;
  v220 = sub_1B06E395C;
  v221 = sub_1B039BCF8;
  v222 = sub_1B0398F5C;
  v223 = sub_1B0398F5C;
  v224 = sub_1B03993BC;
  v225 = sub_1B0398F5C;
  v226 = sub_1B0398F5C;
  v227 = sub_1B039BCEC;
  v228 = sub_1B07C8FC0;
  v229 = sub_1B06BA324;
  v230 = sub_1B06E395C;
  v231 = sub_1B039BCF8;
  v232 = sub_1B03FB774;
  v233 = sub_1B06BCD8C;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0398F5C;
  v236 = sub_1B03993BC;
  v237 = sub_1B0398F5C;
  v238 = sub_1B0398F5C;
  v239 = sub_1B039BCEC;
  v240 = sub_1B0398F5C;
  v241 = sub_1B0398F5C;
  v242 = sub_1B03992D4;
  v243 = sub_1B07C8FC0;
  v244 = sub_1B06BA324;
  v245 = sub_1B06E395C;
  v246 = sub_1B039BCF8;
  v247 = sub_1B0398F5C;
  v248 = sub_1B0398F5C;
  v249 = sub_1B03993BC;
  v250 = sub_1B0398F5C;
  v251 = sub_1B0398F5C;
  v252 = sub_1B039BCEC;
  v300 = 0;
  v298 = 0;
  v299 = 0;
  v297 = 0;
  v296 = 0;
  v253 = 0;
  v290 = 0;
  v282 = 0;
  v263 = 0;
  v254 = sub_1B0E439A8();
  v255 = *(v254 - 8);
  v256 = v254 - 8;
  v257 = (*(v255 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v254);
  v258 = v107 - v257;
  v259 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v107 - v257);
  v260 = v107 - v259;
  v261 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v107 - v259);
  v262 = v107 - v261;
  v264 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v263);
  v275 = v107 - v264;
  v276 = sub_1B0E42E68();
  v273 = *(v276 - 8);
  v274 = v276 - 8;
  v269 = *(v273 + 64);
  v268 = (v269 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v267);
  v270 = v107 - v268;
  v271 = (v269 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v272 = v107 - v271;
  v300 = v107 - v271;
  v298 = v8;
  v299 = v9;
  v297 = v10;
  v296 = v4;
  sub_1B07C122C(v8, v9, v11);
  if ((*(v273 + 48))(v275, 1, v276) == 1)
  {
    v81 = v258;
    sub_1B06E3800(v275);
    (*(v255 + 16))(v81, v265, v254);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v120 = 7;
    v82 = swift_allocObject();
    v83 = v266;
    v115 = v82;
    *(v82 + 16) = v267;
    *(v82 + 24) = v83;

    v119 = 32;
    v84 = swift_allocObject();
    v85 = v115;
    v121 = v84;
    *(v84 + 16) = v217;
    *(v84 + 24) = v85;

    v132 = sub_1B0E43988();
    v133 = sub_1B0E458E8();
    v117 = 17;
    v123 = swift_allocObject();
    *(v123 + 16) = 112;
    v124 = swift_allocObject();
    v118 = 8;
    *(v124 + 16) = 8;
    v116 = swift_allocObject();
    *(v116 + 16) = v218;
    v86 = swift_allocObject();
    v87 = v116;
    v125 = v86;
    *(v86 + 16) = v219;
    *(v86 + 24) = v87;
    v126 = swift_allocObject();
    *(v126 + 16) = 37;
    v127 = swift_allocObject();
    *(v127 + 16) = v118;
    v88 = swift_allocObject();
    v89 = v121;
    v122 = v88;
    *(v88 + 16) = v220;
    *(v88 + 24) = v89;
    v90 = swift_allocObject();
    v91 = v122;
    v129 = v90;
    *(v90 + 16) = v221;
    *(v90 + 24) = v91;
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v128 = sub_1B0E46A48();
    v130 = v92;

    v93 = v123;
    v94 = v130;
    *v130 = v222;
    v94[1] = v93;

    v95 = v124;
    v96 = v130;
    v130[2] = v223;
    v96[3] = v95;

    v97 = v125;
    v98 = v130;
    v130[4] = v224;
    v98[5] = v97;

    v99 = v126;
    v100 = v130;
    v130[6] = v225;
    v100[7] = v99;

    v101 = v127;
    v102 = v130;
    v130[8] = v226;
    v102[9] = v101;

    v103 = v129;
    v104 = v130;
    v130[10] = v227;
    v104[11] = v103;
    sub_1B0394964();

    if (os_log_type_enabled(v132, v133))
    {
      v105 = v253;
      v108 = sub_1B0E45D78();
      v107[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v109 = sub_1B03949A8(0);
      v110 = sub_1B03949A8(1);
      v111 = &v295;
      v295 = v108;
      v112 = &v294;
      v294 = v109;
      v113 = &v293;
      v293 = v110;
      sub_1B0394A48(3, &v295);
      sub_1B0394A48(2, v111);
      v291 = v222;
      v292 = v123;
      sub_1B03949FC(&v291, v111, v112, v113);
      v114 = v105;
      if (v105)
      {

        __break(1u);
      }

      else
      {
        v291 = v223;
        v292 = v124;
        sub_1B03949FC(&v291, &v295, &v294, &v293);
        v107[4] = 0;
        v291 = v224;
        v292 = v125;
        sub_1B03949FC(&v291, &v295, &v294, &v293);
        v107[3] = 0;
        v291 = v225;
        v292 = v126;
        sub_1B03949FC(&v291, &v295, &v294, &v293);
        v107[2] = 0;
        v291 = v226;
        v292 = v127;
        sub_1B03949FC(&v291, &v295, &v294, &v293);
        v107[1] = 0;
        v291 = v227;
        v292 = v129;
        sub_1B03949FC(&v291, &v295, &v294, &v293);
        _os_log_impl(&dword_1B0389000, v132, v133, "Unable to URL for mailbox '%{sensitive,mask.mailbox}s'", v108, 0x16u);
        sub_1B03998A8(v109);
        sub_1B03998A8(v110);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v132);
    result = (*(v255 + 8))(v258, v254);
    v106 = v215;
    *v215 = 0;
    *(v106 + 8) = 1;
  }

  else
  {
    v12 = v270;
    (*(v273 + 32))(v272, v275, v276);
    v211 = *(v216 + *(_s18MailboxPersistenceVMa() + 20));
    MEMORY[0x1E69E5928](v211);
    (*(v273 + 16))(v12, v272, v276);
    v210 = sub_1B0E42D58();
    v208 = *(v273 + 8);
    v209 = v273 + 8;
    v208(v270, v276);
    v212 = [v211 insertDatabaseRowForMailboxURL_];
    MEMORY[0x1E69E5920](v210);
    MEMORY[0x1E69E5920](v211);
    v290 = v212;
    sub_1B0A22800(v212, &v288);
    v213 = v288;
    v214 = v289;
    if (v289)
    {
      (*(v255 + 16))(v260, v265, v254);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v151 = 7;
      v52 = swift_allocObject();
      v53 = v266;
      v146 = v52;
      *(v52 + 16) = v267;
      *(v52 + 24) = v53;

      v150 = 32;
      v54 = swift_allocObject();
      v55 = v146;
      v152 = v54;
      *(v54 + 16) = v243;
      *(v54 + 24) = v55;

      v163 = sub_1B0E43988();
      v164 = sub_1B0E458E8();
      v148 = 17;
      v154 = swift_allocObject();
      *(v154 + 16) = 112;
      v155 = swift_allocObject();
      v149 = 8;
      *(v155 + 16) = 8;
      v147 = swift_allocObject();
      *(v147 + 16) = v218;
      v56 = swift_allocObject();
      v57 = v147;
      v156 = v56;
      *(v56 + 16) = v244;
      *(v56 + 24) = v57;
      v157 = swift_allocObject();
      *(v157 + 16) = 37;
      v158 = swift_allocObject();
      *(v158 + 16) = v149;
      v58 = swift_allocObject();
      v59 = v152;
      v153 = v58;
      *(v58 + 16) = v245;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v153;
      v160 = v60;
      *(v60 + 16) = v246;
      *(v60 + 24) = v61;
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v159 = sub_1B0E46A48();
      v161 = v62;

      v63 = v154;
      v64 = v161;
      *v161 = v247;
      v64[1] = v63;

      v65 = v155;
      v66 = v161;
      v161[2] = v248;
      v66[3] = v65;

      v67 = v156;
      v68 = v161;
      v161[4] = v249;
      v68[5] = v67;

      v69 = v157;
      v70 = v161;
      v161[6] = v250;
      v70[7] = v69;

      v71 = v158;
      v72 = v161;
      v161[8] = v251;
      v72[9] = v71;

      v73 = v160;
      v74 = v161;
      v161[10] = v252;
      v74[11] = v73;
      sub_1B0394964();

      if (os_log_type_enabled(v163, v164))
      {
        v75 = v253;
        v139 = sub_1B0E45D78();
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v140 = sub_1B03949A8(0);
        v141 = sub_1B03949A8(1);
        v142 = &v287;
        v287 = v139;
        v143 = &v286;
        v286 = v140;
        v144 = &v285;
        v285 = v141;
        sub_1B0394A48(3, &v287);
        sub_1B0394A48(2, v142);
        v283 = v247;
        v284 = v154;
        sub_1B03949FC(&v283, v142, v143, v144);
        v145 = v75;
        if (v75)
        {

          __break(1u);
        }

        else
        {
          v283 = v248;
          v284 = v155;
          sub_1B03949FC(&v283, &v287, &v286, &v285);
          v137 = 0;
          v283 = v249;
          v284 = v156;
          sub_1B03949FC(&v283, &v287, &v286, &v285);
          v136 = 0;
          v283 = v250;
          v284 = v157;
          sub_1B03949FC(&v283, &v287, &v286, &v285);
          v135 = 0;
          v283 = v251;
          v284 = v158;
          sub_1B03949FC(&v283, &v287, &v286, &v285);
          v134 = 0;
          v283 = v252;
          v284 = v160;
          sub_1B03949FC(&v283, &v287, &v286, &v285);
          _os_log_impl(&dword_1B0389000, v163, v164, "Failed to insert row for mailbox '%{sensitive,mask.mailbox}s'", v139, 0x16u);
          sub_1B03998A8(v140);
          sub_1B03998A8(v141);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v163);
      (*(v255 + 8))(v260, v254);
      v76 = v214;
      v77 = v215;
      v78 = v272;
      v79 = v276;
      v80 = v208;
      *v215 = v213;
      *(v77 + 8) = v76 & 1;
      return v80(v78, v79);
    }

    else
    {
      v207 = v213;
      v182 = v213;
      v282 = v213;
      (*(v255 + 16))(v262, v265, v254);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v190 = 7;
      v13 = swift_allocObject();
      v14 = v266;
      v181 = v13;
      *(v13 + 16) = v267;
      *(v13 + 24) = v14;

      v189 = 32;
      v15 = swift_allocObject();
      v16 = v181;
      v185 = v15;
      *(v15 + 16) = v228;
      *(v15 + 24) = v16;

      v183 = 24;
      v191 = swift_allocObject();
      *(v191 + 16) = v182;
      v205 = sub_1B0E43988();
      v206 = sub_1B0E45908();
      v187 = 17;
      v193 = swift_allocObject();
      *(v193 + 16) = 112;
      v194 = swift_allocObject();
      v188 = 8;
      *(v194 + 16) = 8;
      v184 = swift_allocObject();
      *(v184 + 16) = v218;
      v17 = swift_allocObject();
      v18 = v184;
      v195 = v17;
      *(v17 + 16) = v229;
      *(v17 + 24) = v18;
      v196 = swift_allocObject();
      *(v196 + 16) = 37;
      v197 = swift_allocObject();
      *(v197 + 16) = v188;
      v19 = swift_allocObject();
      v20 = v185;
      v186 = v19;
      *(v19 + 16) = v230;
      *(v19 + 24) = v20;
      v21 = swift_allocObject();
      v22 = v186;
      v198 = v21;
      *(v21 + 16) = v231;
      *(v21 + 24) = v22;
      v199 = swift_allocObject();
      *(v199 + 16) = 0;
      v200 = swift_allocObject();
      *(v200 + 16) = v188;
      v23 = swift_allocObject();
      v24 = v191;
      v192 = v23;
      *(v23 + 16) = v232;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v192;
      v202 = v25;
      *(v25 + 16) = v233;
      *(v25 + 24) = v26;
      v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v201 = sub_1B0E46A48();
      v203 = v27;

      v28 = v193;
      v29 = v203;
      *v203 = v234;
      v29[1] = v28;

      v30 = v194;
      v31 = v203;
      v203[2] = v235;
      v31[3] = v30;

      v32 = v195;
      v33 = v203;
      v203[4] = v236;
      v33[5] = v32;

      v34 = v196;
      v35 = v203;
      v203[6] = v237;
      v35[7] = v34;

      v36 = v197;
      v37 = v203;
      v203[8] = v238;
      v37[9] = v36;

      v38 = v198;
      v39 = v203;
      v203[10] = v239;
      v39[11] = v38;

      v40 = v199;
      v41 = v203;
      v203[12] = v240;
      v41[13] = v40;

      v42 = v200;
      v43 = v203;
      v203[14] = v241;
      v43[15] = v42;

      v44 = v202;
      v45 = v203;
      v203[16] = v242;
      v45[17] = v44;
      sub_1B0394964();

      if (os_log_type_enabled(v205, v206))
      {
        v46 = v253;
        v173 = sub_1B0E45D78();
        v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v174 = sub_1B03949A8(0);
        v175 = sub_1B03949A8(1);
        v177 = &v281;
        v281 = v173;
        v178 = &v280;
        v280 = v174;
        v179 = &v279;
        v279 = v175;
        v176 = 3;
        sub_1B0394A48(3, &v281);
        sub_1B0394A48(v176, v177);
        v277 = v234;
        v278 = v193;
        sub_1B03949FC(&v277, v177, v178, v179);
        v180 = v46;
        if (v46)
        {

          __break(1u);
        }

        else
        {
          v277 = v235;
          v278 = v194;
          sub_1B03949FC(&v277, &v281, &v280, &v279);
          v171 = 0;
          v277 = v236;
          v278 = v195;
          sub_1B03949FC(&v277, &v281, &v280, &v279);
          v170 = 0;
          v277 = v237;
          v278 = v196;
          sub_1B03949FC(&v277, &v281, &v280, &v279);
          v169 = 0;
          v277 = v238;
          v278 = v197;
          sub_1B03949FC(&v277, &v281, &v280, &v279);
          v168 = 0;
          v277 = v239;
          v278 = v198;
          sub_1B03949FC(&v277, &v281, &v280, &v279);
          v167 = 0;
          v277 = v240;
          v278 = v199;
          sub_1B03949FC(&v277, &v281, &v280, &v279);
          v166 = 0;
          v277 = v241;
          v278 = v200;
          sub_1B03949FC(&v277, &v281, &v280, &v279);
          v165 = 0;
          v277 = v242;
          v278 = v202;
          sub_1B03949FC(&v277, &v281, &v280, &v279);
          _os_log_impl(&dword_1B0389000, v205, v206, "Created mailbox '%{sensitive,mask.mailbox}s' has row ID %lld", v173, 0x20u);
          sub_1B03998A8(v174);
          sub_1B03998A8(v175);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v205);
      (*(v255 + 8))(v262, v254);
      v47 = v215;
      v48 = v272;
      v49 = v276;
      v50 = v208;
      *v215 = v182;
      *(v47 + 8) = 0;
      return v50(v48, v49);
    }
  }

  return result;
}

unint64_t sub_1B07C7EE0()
{
  v2 = qword_1EB6E2290;
  if (!qword_1EB6E2290)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C7F5C()
{
  v2 = qword_1EB6DB890;
  if (!qword_1EB6DB890)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB890);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C7FD4()
{
  v2 = qword_1EB6DB6B8;
  if (!qword_1EB6DB6B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB6B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C804C()
{
  v2 = qword_1EB6DA300;
  if (!qword_1EB6DA300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C80C4()
{
  v2 = qword_1EB6DAC98;
  if (!qword_1EB6DAC98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAC98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B07C8150()
{
  v2 = qword_1EB6DB688;
  if (!qword_1EB6DB688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2298, &qword_1B0E9C0E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB688);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C81D8()
{
  v2 = qword_1EB6DB678;
  if (!qword_1EB6DB678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E22A0, &unk_1B0E9C0F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB678);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07C8260(const void *a1, void *a2)
{
  v6 = sub_1B0E42E68();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1B07C8388(void *a1, void *a2)
{
  *a2 = *a1;
  v2 = a1[1];
  v3 = a2[1];
  a2[1] = v2;

  v4 = a2[2];
  a2[2] = a1[2];

  v5 = a2[3];
  a2[3] = a1[3];

  v6 = a2[4];
  a2[4] = a1[4];

  return a2;
}

unint64_t sub_1B07C8410()
{
  v2 = qword_1EB6DAB60;
  if (!qword_1EB6DAB60)
  {
    type metadata accessor for EDMailboxRowID_s();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C8490()
{
  v2 = qword_1EB6DAFD8;
  if (!qword_1EB6DAFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E22B0, &qword_1B0E9C108);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C8554()
{
  v2 = qword_1EB6DB7C0;
  if (!qword_1EB6DB7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E22B8, &unk_1B0E9C110);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C8614()
{
  v2 = qword_1EB6DB7C8;
  if (!qword_1EB6DB7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E22C0, &unk_1B0E9E070);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C869C()
{
  v2 = qword_1EB6DB370;
  if (!qword_1EB6DB370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E36E0, &qword_1B0E9C120);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C877C()
{
  v2 = qword_1EB6DB240;
  if (!qword_1EB6DB240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E22C8, &qword_1B0E9C128);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C8804()
{
  v2 = qword_1EB6E22D8;
  if (!qword_1EB6E22D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E22D0, &qword_1B0E9C130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E22D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C888C()
{
  v2 = qword_1EB6E22E8;
  if (!qword_1EB6E22E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E22E0, &unk_1B0E9C138);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E22E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07C8914(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v28 = 0;
  v29 = 0;
  v14 = 0;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v9 = a3;
  v10 = WORD2(a3);
  v11 = BYTE6(a3);
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = WORD2(a3);
  v27 = BYTE6(a3);
  v28 = sub_1B0E44838();
  v29 = v3;
  v18 = a1;
  v19 = a2;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v4 = ByteBuffer.readableBytes.getter(a1, a2);
  MEMORY[0x1B2726D20](v4);
  v13 = &v28;
  v15 = a1;
  v16 = a2;
  LODWORD(v17) = v9;
  WORD2(v17) = v10;
  BYTE6(v17) = v11;
  ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1B07C8FCC, v12, a1, a2, v17);
  v6 = v28;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B03B1198(&v28);
  return v6;
}

uint64_t sub_1B07C8B34()
{
  sub_1B0E46D78();
  sub_1B0E44C88();
  while (1)
  {
    result = sub_1B0E46D68();
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v1 = sub_1B0E44BF8();
    sub_1B0E44C58();
    v1();
  }

  if (result)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(result);
    sub_1B07C92B4();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B07C8DB4()
{
  v2 = qword_1EB6DB700;
  if (!qword_1EB6DB700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E22F8, &qword_1B0E9C150);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB700);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C8E3C()
{
  v2 = qword_1EB6DB620;
  if (!qword_1EB6DB620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2300, &qword_1B0E9C158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB620);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s18MailboxPersistenceV19RowIDURLAndMetadataVMa()
{
  v1 = qword_1EB6DBF10;
  if (!qword_1EB6DBF10)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B07C8F38()
{
  v2 = qword_1EB6DAF38;
  if (!qword_1EB6DAF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2308, &unk_1B0E9C160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07C8FC0()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B07C7EB0();
  return result;
}

unint64_t sub_1B07C9044()
{
  v3 = sub_1B0E42E68();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B07C9120();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

unint64_t sub_1B07C9120()
{
  v2 = qword_1EB6DA890;
  if (!qword_1EB6DA890)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA890);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B07C91D4()
{
  v2 = sub_1B0E42E68();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_1B07C92B4()
{
  v2 = qword_1EB6E2310;
  if (!qword_1EB6E2310)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07C9330(unint64_t result)
{
  if (result > 2)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

unint64_t sub_1B07C936C(unint64_t result)
{
  if (result > 2)
  {
  }

  return result;
}

uint64_t sub_1B07C93A8@<X0>(char *a1@<X8>)
{
  v10 = a1;
  v12 = "Fatal error";
  v13 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v14 = "Message/MailboxPersistenceHelper+Attachments.swift";
  v25 = 0;
  v15 = 0;
  v16 = sub_1B0E42E68();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = &v4 - v19;
  v2 = _s18MailboxPersistenceVMa();
  v21 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v4 - v21;
  v25 = v1;
  v23 = *(v1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  MEMORY[0x1E69E5928](v23);
  v24 = [v23 library];
  MEMORY[0x1E69E5920](v23);
  if (v24)
  {
    v9 = v24;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v7 = v9;
  v8 = [v9 persistence];
  MEMORY[0x1E69E5920](v7);
  if (v8)
  {
    v6 = v8;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v5 = [v6 attachmentPersistenceManager];
  MEMORY[0x1E69E5920](v4);
  sub_1B03F4D78(v11 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence, v22);
  (*(v17 + 16))(v20, v22, v16);
  sub_1B03F4F08(v22);
  return sub_1B07C96B0(v5, v20, v10);
}

uint64_t sub_1B07C96B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v6 = *(_s21AttachmentPersistenceVMa() + 20);
  v3 = sub_1B0E42E68();
  return (*(*(v3 - 8) + 32))(&a3[v6], a2);
}

uint64_t sub_1B07C9734@<X0>(uint64_t a1@<X8>)
{
  v4 = *(_s21AttachmentPersistenceVMa() + 20);
  v2 = sub_1B0E42E68();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t _s21AttachmentPersistenceVMa()
{
  v1 = qword_1EB6DBC80;
  if (!qword_1EB6DBC80)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B07C9820(uint64_t a1)
{
  v11 = a1;
  v6 = 0;
  v10 = sub_1B0E42E68();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  v2 = _s21AttachmentPersistenceVMa();
  (*(v8 + 40))(v1 + *(v2 + 20), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t _s30MessagePersistedAttachmentInfoV7ElementVMa()
{
  v1 = qword_1EB6DBC10;
  if (!qword_1EB6DBC10)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B07C99EC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B071C180(v2, &v5 - v6);
  v3 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  sub_1B07C9A9C(v7, (v1 + *(v3 + 20)));
  return sub_1B06E3800(v8);
}

void *sub_1B07C9A9C(const void *a1, void *a2)
{
  v7 = sub_1B0E42E68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1B07C9CC4()
{
  v1 = (v0 + *(_s30MessagePersistedAttachmentInfoV7ElementVMa() + 24));
  v3 = *v1;
  v4 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

uint64_t sub_1B07C9D0C(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v2 + *(_s30MessagePersistedAttachmentInfoV7ElementVMa() + 24));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1B07C9D8C(uint64_t a1)
{
  v2 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

BOOL sub_1B07C9DC4(uint64_t a1, uint64_t *a2)
{
  v42 = a1;
  v49 = a2;
  v59 = 0;
  v58 = 0;
  v32 = sub_1B0E42E68();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (v33[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v11 - v35;
  v37 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v35);
  v38 = &v11 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v11 - v40;
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v42);
  v44 = &v11 - v43;
  v45 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v46 = &v11 - v45;
  v47 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v11 - v47;
  v59 = v7;
  v58 = v8;
  v51 = *v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v50 = *v49;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v52 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v51);

  if ((v52 & 1) == 0)
  {
    return 0;
  }

  v28 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  sub_1B071C180((v42 + v28[5]), v48);
  sub_1B071C180(v49 + v28[5], v46);
  v29 = &v41[*(v39 + 48)];
  sub_1B071C180(v48, v41);
  sub_1B071C180(v46, v29);
  v30 = v33[6];
  v31 = v33 + 6;
  if (v30(v41, 1, v32) == 1)
  {
    if (v30(v29, 1, v32) == 1)
    {
      sub_1B06E3800(v41);
      v27 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1B071C180(v41, v44);
    if (v30(v29, 1, v32) != 1)
    {
      v23 = v33[4];
      v22 = v33 + 4;
      v23(v38, v44, v32);
      v23(v36, v29, v32);
      sub_1B071C3D4();
      v26 = sub_1B0E44A28();
      v25 = v33[1];
      v24 = v33 + 1;
      v25(v36, v32);
      v25(v38, v32);
      sub_1B06E3800(v41);
      v27 = v26;
      goto LABEL_8;
    }

    (v33[1])(v44, v32);
  }

  sub_1B071C2A8(v41);
  v27 = 0;
LABEL_8:
  v21 = v27;
  sub_1B06E3800(v46);
  sub_1B06E3800(v48);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  v9 = (v42 + v28[6]);
  v18 = *v9;
  v19 = v9[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = *(v49 + v28[6]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56[0] = v18;
  v56[1] = v19;
  v57 = v20;
  if (v19)
  {
    sub_1B070B280(v56, &v55);
    if (*(&v57 + 1))
    {
      v15 = &v54;
      v54 = v55;
      v14 = &v53;
      v53 = v57;
      v16 = MEMORY[0x1B2726DE0](v55, *(&v55 + 1), v57, *(&v57 + 1));
      sub_1B03B1198(v14);
      sub_1B03B1198(v15);
      sub_1B03B1198(v56);
      v17 = v16;
      goto LABEL_18;
    }

    sub_1B03B1198(&v55);
    goto LABEL_20;
  }

  if (*(&v57 + 1))
  {
LABEL_20:
    sub_1B06FF6F0(v56);
    v17 = 0;
    goto LABEL_18;
  }

  sub_1B03B1198(v56);
  v17 = 1;
LABEL_18:
  v13 = v17;

  return (v13 & 1) != 0 && *(v42 + v28[7]) == *(v49 + v28[7]);
}

int *sub_1B07CA5AC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  v13 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  sub_1B07C8260(a2, a6 + v13[5]);
  result = v13;
  v7 = (a6 + v13[6]);
  *v7 = a3;
  v7[1] = a4;
  *(a6 + v13[7]) = a5;
  return result;
}

BOOL sub_1B07CA634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1B07FF948(a1, a3))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s30MessagePersistedAttachmentInfoV7ElementVMa();
    sub_1B07CEEFC();
    v5 = sub_1B0E45368();

    return (v5 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07CA760(uint64_t a1)
{
  v17 = a1;
  v16 = v1;
  v2 = sub_1B0E46A48();
  *v3 = a1;
  sub_1B0394964();
  v14[0] = v2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2318, &qword_1B0E9C478);
  v4 = sub_1B07CACA0();
  v11 = sub_1B07CA940(v14, v10, v4);
  sub_1B039E440(v14);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2320, &unk_1B0E9C480);
  sub_1B07CAD98();
  sub_1B0E44FB8();
  sub_1B039E440(&v13);
  if (v15)
  {
    sub_1B07CAE20(v14[1], v15);
    v8 = v5;

    return v8;
  }

  else
  {
    _s30MessagePersistedAttachmentInfoV7ElementVMa();
    sub_1B0E46A48();
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a1);
    return v6;
  }
}

uint64_t sub_1B07CA940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v31 = a2;
  v33 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v41 = a2;
  v25 = sub_1B0E42E68();
  v26 = *(v25 - 8);
  v27 = v26;
  v28 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = v12 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v39 = v4;
  v30 = *v4;
  v5 = v30;
  v34 = sub_1B039A494();
  v7 = sub_1B07CAF78(sub_1B07CAF1C, v33, v31, v34, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v6);
  v35 = 0;
  v36 = v7;
  v8 = v29;
  v12[1] = v7;
  v14 = sub_1B0E451A8();

  v19 = 0;
  v9 = _s21AttachmentPersistenceVMa();
  (*(v27 + 16))(v8, v24 + *(v9 + 20), v25);
  v13 = sub_1B0E42D58();
  (*(v27 + 8))(v29, v25);
  v16 = [v30 allAttachmentsInfoForGlobalMessageIDs:v14 basePath:v13];

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B40, &unk_1B0E9AF70);
  sub_1B06D8328();
  v18 = sub_1B0E445A8();
  v17 = v18;
  v38 = v18;

  v37 = v18;
  v20 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v21 = &v12[-4];
  v12[-2] = sub_1B07CBB3C;
  v12[-1] = v10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2328, &qword_1B0E9C490);
  sub_1B07CC4AC();
  v23 = sub_1B0E44F58();
  v12[0] = v23;

  return v12[0];
}

unint64_t sub_1B07CACA0()
{
  v2 = qword_1EB6DB160;
  if (!qword_1EB6DB160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2318, &qword_1B0E9C478);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB160);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07CAD98()
{
  v2 = qword_1EB6DB148;
  if (!qword_1EB6DB148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2320, &unk_1B0E9C480);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB148);
    return WitnessTable;
  }

  return v2;
}

double sub_1B07CAE20(uint64_t a1, uint64_t a2)
{
  v9[1] = a1;
  v9[2] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9[0] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2330, &qword_1B0E9C498);
  v7 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  v2 = sub_1B07CC574();
  sub_1B039CA88(sub_1B07CC534, 0, v6, v7, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v8);
  sub_1B039E440(v9);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a1);
}

id sub_1B07CAF1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1B039A494();
  result = sub_1B08770E4(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1B07CAF78(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  v36 = a2;
  v81 = a3;
  v72 = a4;
  v45 = a5;
  v80 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Unexpectedly found nil while unwrapping an Optional value";
  v41 = "Swift/Sequence.swift";
  v42 = "Range requires lowerBound <= upperBound";
  v43 = "Swift/Range.swift";
  v44 = "Index out of range";
  v83[3] = a3;
  v83[2] = a4;
  v83[1] = a5;
  v73 = 0;
  v57 = MEMORY[0x1E69E6208];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v48 = AssociatedTypeWitness - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v50 = &v23 - v49;
  v51 = *(v9 - 8);
  v52 = v9 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v23 - v53;
  v55 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v23 - v55;
  v58 = sub_1B0E45D88();
  v59 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v73);
  v60 = &v23 - v59;
  v61 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v62 = &v23 - v61;
  v63 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v64 = &v23 - v63;
  v65 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v66 = &v23 - v65;
  v76 = *(v18 - 8);
  v77 = v18 - 8;
  v67 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v23 - v67;
  v68 = swift_getAssociatedTypeWitness();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v23 - v71;
  v82 = sub_1B0E44F28();
  v83[0] = sub_1B0E46488();
  v74 = sub_1B0E46498();
  sub_1B0E463E8();
  (*(v76 + 16))(v75, v78, v81);
  sub_1B0E44F08();
  result = v82;
  if (v82 < 0)
  {
    result = sub_1B0E465A8();
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    if (v82)
    {
      v33 = 0;
      for (i = v37; ; i = v29)
      {
        v31 = i;
        v32 = v33;
        if (v33 < 0 || v32 >= v82)
        {
          break;
        }

        if (v82 < 0)
        {
          sub_1B0E465A8();
          __break(1u);
          break;
        }

        v30 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_29;
        }

        swift_getAssociatedConformanceWitness();
        sub_1B0E45E38();
        if ((*(v47 + 48))(v62, 1, AssociatedTypeWitness) == 1)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v21 = v31;
        v35(v62, v56);
        v29 = v21;
        if (v21)
        {
          (*(v69 + 8))(v79, v68);
          sub_1B0391AD4(v83);
          (*(v51 + 32))(v38, v56, v45);
          (*(v47 + 8))(v62, AssociatedTypeWitness);
          return v23;
        }

        (*(v47 + 8))(v62, AssociatedTypeWitness);
        sub_1B0E46468();
        if (v30 == v82)
        {
          v28 = v29;
          goto LABEL_21;
        }

        result = v29;
        v33 = v30;
      }

      sub_1B0E466C8();
      __break(1u);
    }

    v28 = v37;
LABEL_21:
    for (j = v28; ; j = v24)
    {
      v26 = j;
      swift_getAssociatedConformanceWitness();
      sub_1B0E45E38();
      if ((*(v47 + 48))(v60, 1, AssociatedTypeWitness) == 1)
      {
        (*(v69 + 8))(v79, v68);
        sub_1B07CF288(v60, AssociatedTypeWitness);
        v25 = v83[0];

        return v25;
      }

      (*(v47 + 32))(v50, v60, AssociatedTypeWitness);
      v22 = v26;
      v35(v50, v54);
      v24 = v22;
      if (v22)
      {
        break;
      }

      (*(v47 + 8))(v50, AssociatedTypeWitness);
      sub_1B0E46468();
    }

    (*(v47 + 8))(v50, AssociatedTypeWitness);
    (*(v69 + 8))(v79, v68);
    sub_1B0391AD4(v83);
    (*(v51 + 32))(v38, v54, v45);
    return v23;
  }

  return result;
}

uint64_t sub_1B07CBB3C(void *a1)
{
  v5 = sub_1B0825730([a1 longLongValue]);
  if (v1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B40, &unk_1B0E9AF70);
  _s30MessagePersistedAttachmentInfoV7ElementVMa();
  sub_1B07CF200();
  sub_1B0E44F58();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v5);
  return v2;
}

char *sub_1B07CBC70@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  return sub_1B07CBCC0(v4, a2);
}

char *sub_1B07CBCC0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v58 = a1;
  v52 = sub_1B07CC850;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v68 = 0;
  v53 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v54 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v15 - v54;
  v56 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v54);
  v57 = &v15 - v56;
  v76 = &v15 - v56;
  v59 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v15 - v62;
  v64 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v15 - v64;
  v75 = &v15 - v64;
  v74 = v6;
  v66 = [v6 first];
  if (!v66)
  {
    goto LABEL_24;
  }

  v50 = v66;
  v48 = v66;
  v73 = v66;
  v7 = [v66 mimePartNumber];
  v49 = v7;
  if (v7)
  {
    v47 = v49;
    v42 = v49;
    v43 = sub_1B0E44AD8();
    v44 = v8;
    MEMORY[0x1E69E5920](v42);
    v45 = v43;
    v46 = v44;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v40 = v46;
  v41 = v45;
  if (!v46)
  {
    MEMORY[0x1E69E5920](v48);
LABEL_24:
    MEMORY[0x1E69E5920](v58);
    return (*(v60 + 56))(v51, 1, 1, v59);
  }

  v38 = v41;
  v39 = v40;
  v36 = v40;
  v35 = v41;
  v71 = v41;
  v72 = v40;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B082579C(v35, v36);
  v37 = v9;
  if (!v9)
  {

    MEMORY[0x1E69E5920](v48);
    goto LABEL_24;
  }

  v34 = v37;
  v33 = v37;
  v70 = v37;
  v10 = [v48 attachmentID];
  v69 = v10;
  if (v10)
  {
    v28 = &v69;
    v29 = v69;
    MEMORY[0x1E69E5928](v69);
    sub_1B06D4E94(v28);
    v30 = [v29 integerValue];
    MEMORY[0x1E69E5920](v29);
    v31 = v30;
    v32 = 0;
  }

  else
  {
    sub_1B06D4E94(&v69);
    v31 = 0;
    v32 = 1;
  }

  v27 = v31;
  if (v32)
  {

    MEMORY[0x1E69E5920](v48);
    goto LABEL_24;
  }

  v26 = v27;
  v11 = v53;
  v23 = v27;
  v68 = v27;
  v67 = [v58 second];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2338, &qword_1B0E9C4A0);
  v12 = sub_1B0E42E68();
  result = sub_1B03F1A20(v52, 0, v24, MEMORY[0x1E69E73E0], v12, v25, v57);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1B06D4E94(&v67);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B071C180(v57, v55);
    v22 = [v48 name];
    if (v22)
    {
      v21 = v22;
      v16 = v22;
      v17 = sub_1B0E44AD8();
      v18 = v14;
      MEMORY[0x1E69E5920](v16);
      v19 = v17;
      v20 = v18;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    sub_1B07CA5AC(v33, v55, v19, v20, v23, v63);
    sub_1B07CC950(v63, v65);
    sub_1B06E3800(v57);

    MEMORY[0x1E69E5920](v48);
    sub_1B07CCAF4(v65, v51);
    (*(v60 + 56))(v51, 0, 1, v59);
    MEMORY[0x1E69E5920](v58);
    return sub_1B07CCCD8(v65);
  }

  return result;
}

uint64_t sub_1B07CC428@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

unint64_t sub_1B07CC4AC()
{
  v2 = qword_1EB6DB6F8;
  if (!qword_1EB6DB6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2328, &qword_1B0E9C490);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB6F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07CC574()
{
  v2 = qword_1EB6DB150;
  if (!qword_1EB6DB150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2330, &qword_1B0E9C498);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB150);
    return WitnessTable;
  }

  return v2;
}

int *sub_1B07CC5FC@<X0>(void *a1@<X8>)
{
  v9 = a1;
  v21 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v11 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v17 = &v6 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v6 - v11);
  v13 = &v6 - v12;
  v21 = v1;
  v14 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = 0;
  v15 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  sub_1B071C180(v1 + v15[5], v17);
  v18 = sub_1B0E42E68();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    sub_1B06E3800(v17);
    (*(v19 + 56))(v13, 1, 1, v18);
  }

  else
  {
    sub_1B0E42D88();
    (*(v19 + 8))(v17, v18);
    (*(v19 + 56))(v13, 0, 1, v18);
  }

  v4 = (v10 + v15[6]);
  v7 = *v4;
  v8 = v4[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return sub_1B07CA5AC(v14, v13, v7, v8, *(v10 + v15[7]), v9);
}

uint64_t sub_1B07CC850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a2;
  v3 = a1;
  v11 = 0;
  v9 = sub_1B0E42E68();
  v5 = *(v9 - 8);
  v6 = v9 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v3 - v4;
  v10 = *MEMORY[0x1EEE9AC00](v3);
  v11 = v10;
  MEMORY[0x1E69E5928](v10);
  sub_1B0E42DE8();
  (*(v5 + 32))(v7, v8, v9);
  return MEMORY[0x1E69E5920](v10);
}

__n128 sub_1B07CC950(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  v6 = v5[5];
  v8 = sub_1B0E42E68();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a1[v6], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
    memcpy(&a2[v6], &a1[v6], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))();
    (*(v9 + 56))(&a2[v6], 0, 1, v8);
  }

  result = *&a1[v5[6]];
  *&a2[v5[6]] = result;
  *&a2[v5[7]] = *&a1[v5[7]];
  return result;
}

char *sub_1B07CCAF4(char *a1, char *a2)
{
  v8 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v8;
  v9 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  v10 = v9[5];
  v12 = sub_1B0E42E68();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a1[v10], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
    memcpy(&a2[v10], &a1[v10], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))();
    (*(v13 + 56))(&a2[v10], 0, 1, v12);
  }

  v5 = &a2[v9[6]];
  v3 = &a1[v9[6]];
  *v5 = *v3;
  v6 = *(v3 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(v5 + 1) = v6;
  *&a2[v9[7]] = *&a1[v9[7]];
  return result;
}

char *sub_1B07CCCD8(char *a1)
{
  v1 = *a1;

  v4 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  v5 = *(v4 + 20);
  v7 = sub_1B0E42E68();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&a1[v5], 1))
  {
    (*(v8 + 8))(&a1[v5], v7);
  }

  v2 = *&a1[*(v4 + 24) + 8];

  return a1;
}

uint64_t sub_1B07CCE00(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

BOOL sub_1B07CCE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v12 = a5;
  *(&v12 + 1) = a6;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(a1);

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = a2;
  v18[1] = a3;
  v19 = v12;
  if (!a3)
  {
    if (!*(&v19 + 1))
    {
      sub_1B03B1198(v18);
      v9 = 1;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_1B070B280(v18, &v17);
  if (!*(&v19 + 1))
  {
    sub_1B03B1198(&v17);
LABEL_9:
    sub_1B06FF6F0(v18);
    v9 = 0;
    goto LABEL_8;
  }

  v16 = v17;
  v15 = v19;
  v8 = MEMORY[0x1B2726DE0](v17, *(&v17 + 1), v19, *(&v19 + 1));
  sub_1B03B1198(&v15);
  sub_1B03B1198(&v16);
  sub_1B03B1198(v18);
  v9 = v8;
LABEL_8:

  return (v9 & 1) != 0;
}

uint64_t sub_1B07CD084(uint64_t a1)
{
  v6 = *v1;
  MEMORY[0x1E69E5928](*v1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2340, &qword_1B0E9C4A8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
  v2 = sub_1B07CD404();
  sub_1B039CA88(sub_1B07CD1D8, 0, v7, v8, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v9);
  v4 = sub_1B0E451A8();

  [v6 insertMimePartAttachments:v4 forGlobalMessageID:a1];
  MEMORY[0x1E69E5920](v4);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1B07CD1D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v20 = 0;
  v8 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
  v19[0] = sub_1B0E46A28();
  v19[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = v8;
  sub_1B0E469E8();
  sub_1B039E440(&v18);
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v19);
  sub_1B0E44C88();
  v9 = sub_1B0E44AC8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16[0] = v10;
  v16[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  v15 = sub_1B07CF19C();
  result = sub_1B03F1A20(sub_1B07CD48C, 0, v12, MEMORY[0x1E69E73E0], v15, v14, &v17);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1B03B1198(v16);
    v6 = sub_1B074A97C(v9, v17);

    result = v6;
    *a2 = v6;
  }

  return result;
}

unint64_t sub_1B07CD404()
{
  v2 = qword_1EB6DB190;
  if (!qword_1EB6DB190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2340, &qword_1B0E9C4A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB190);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07CD48C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v5 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = sub_1B0E44AC8();
}

id sub_1B07CD4F8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a1;
  v58 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  v47 = sub_1B07CDA5C;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v50 = "Message/MailboxPersistenceHelper+Attachments.swift";
  v74 = 0;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v51 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v33 - v51;
  v60 = (*(*(_s21AttachmentPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v59);
  v61 = &v33 - v60;
  v74 = v9;
  v73 = v10;
  v71 = v11;
  v72 = v12;
  v70 = v13;
  v68 = v14;
  v69 = v15;
  v67 = v7;
  v62 = sub_1B082A818(v9);
  if (!v62)
  {
    return 0;
  }

  v45 = v62;
  v40 = v62;
  v66 = v62;
  v41 = sub_1B0829EAC();
  v42 = v16;
  v64 = v41;
  v65 = v16;
  v43 = *(v46 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  MEMORY[0x1E69E5928](v43);
  v44 = [v43 library];
  MEMORY[0x1E69E5920](v43);
  if (v44)
  {
    v39 = v44;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v34 = v39;
  v36 = [v39 mimePartParallelCompressionQueue];
  v63 = v36;
  MEMORY[0x1E69E5920](v34);
  sub_1B07C93A8(v61);
  v17 = sub_1B0E43108();
  (*(*(v17 - 8) + 56))(v52, 1);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = swift_allocObject();
  v19 = v57;
  v20 = v42;
  v21 = v59;
  v22 = v53;
  v23 = v54;
  v24 = v55;
  v25 = v47;
  v26 = v52;
  v27 = v36;
  v28 = v41;
  v29 = v40;
  v30 = v18;
  v31 = v58;
  v35 = v30;
  *(v30 + 16) = v56;
  *(v30 + 24) = v19;
  *(v30 + 32) = v28;
  *(v30 + 40) = v20;
  *(v30 + 44) = v21;
  *(v30 + 48) = v31;
  v37 = sub_1B07CDA7C(v31, v22, v23, v29, v26, v27, v24, v25, v30);

  sub_1B06B97A8(v52);
  sub_1B07CDB7C(v61);
  MEMORY[0x1E69E5920](v36);

  MEMORY[0x1E69E5920](v40);
  return v37;
}

uint64_t sub_1B07CD9A0(char a1, void (*a2)(uint64_t, void, void, uint64_t, void), uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7)
{

  a2(a4, a5, a6, a7, a1 & 1);
}

id sub_1B07CDA7C(uint64_t a1, uint64_t a2, uint64_t a3, id a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [a4 globalMessageID];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = sub_1B07CDC08(v10, a2, a3, a1, a5, a6, a7, a8, a9);

  return v18;
}

char *sub_1B07CDB7C(char *a1)
{
  MEMORY[0x1E69E5920](*a1);
  v3 = *(_s21AttachmentPersistenceVMa() + 20);
  v1 = sub_1B0E42E68();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

id sub_1B07CDC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v57 = a1;
  v58 = a2;
  v59 = a3;
  v50 = a4;
  v70 = a5;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a9;
  v40 = sub_1B07CE48C;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v41 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v34 - v41;
  v71 = 0;
  v67 = sub_1B0E42E68();
  v65 = *(v67 - 8);
  v66 = v67 - 8;
  v42 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v34 - v42;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v57);
  v62 = &v34 - v47;
  v96 = v11;
  v94 = v12;
  v95 = v13;
  v93 = v14;
  v92 = v15;
  v91 = v16;
  v90 = v17;
  v88 = v18;
  v89 = v19;
  v87 = v9;
  v48 = *v9;
  MEMORY[0x1E69E5928](v48);
  v52 = sub_1B07CE31C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = sub_1B0E46A28();
  v54 = &v85;
  v85 = v20;
  v86 = v21;
  v51 = "";
  v72 = 1;
  v22 = sub_1B0E44838();
  v49 = v23;
  MEMORY[0x1B2728B30](v22);

  v84 = v50;
  sub_1B0E469E8();
  v24 = sub_1B0E44838();
  v53 = v25;
  MEMORY[0x1B2728B30](v24);

  v56 = v85;
  v55 = v86;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v54);
  v60 = sub_1B0E44C88();
  v61 = v26;
  (*(v65 + 56))(v62, v72, v72, v67);
  v27 = sub_1B07CE380(v57, v58, v59, v60, v61, v71, v62);
  v28 = v68;
  v63 = v27;
  v29 = _s21AttachmentPersistenceVMa();
  (*(v65 + 16))(v28, v64 + *(v29 + 20), v67);
  v69 = sub_1B0E42D58();
  (*(v65 + 8))(v68, v67);
  sub_1B06BC2F4(v70, v73);
  v74 = sub_1B0E43108();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  if ((*(v75 + 48))(v73, v72) == 1)
  {
    v39 = 0;
  }

  else
  {
    v38 = sub_1B0E43068();
    (*(v75 + 8))(v73, v74);
    v39 = v38;
  }

  v36 = v39;

  v30 = swift_allocObject();
  v31 = v46;
  v32 = v40;
  *(v30 + 16) = v45;
  *(v30 + 24) = v31;
  v82 = v32;
  v83 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = 0;
  v80 = sub_1B07CE498;
  v81 = &block_descriptor_5;
  v35 = _Block_copy(&aBlock);

  v37 = [v48 createAttachmentFileWriterForAttachmentMetadata:v63 basePath:v69 downloadDate:v36 queue:v44 compressionQueue:v43 completion:v35];
  _Block_release(v35);
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v69);
  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5920](v48);
  return v37;
}

unint64_t sub_1B07CE31C()
{
  v2 = qword_1EB6DA7C0;
  if (!qword_1EB6DA7C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA7C0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B07CE3F0(int a1, void (*a2)(BOOL))
{

  a2(a1 == 0);
}

uint64_t sub_1B07CE498(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v4(a2);
}

unint64_t sub_1B07CE540()
{
  v3 = sub_1B07CE60C();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B0E42E68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

unint64_t sub_1B07CE60C()
{
  v2 = qword_1EB6DA6E0;
  if (!qword_1EB6DA6E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA6E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B07CE670(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B07CE7B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B07CE9E8()
{
  v3 = sub_1B07CEAD4();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B07CEB70();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B07CEAD4()
{
  v4 = qword_1EB6DED28;
  if (!qword_1EB6DED28)
  {
    sub_1B0E42E68();
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DED28);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07CEB70()
{
  v4 = qword_1EB6DB6A8;
  if (!qword_1EB6DB6A8)
  {
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB6A8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07CEC04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B07CED1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B07CEEFC()
{
  v2 = qword_1EB6E2348;
  if (!qword_1EB6E2348)
  {
    _s30MessagePersistedAttachmentInfoV7ElementVMa();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2348);
    return WitnessTable;
  }

  return v2;
}

id sub_1B07CEF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v15 = sub_1B0E44AC8();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a5)
  {
    v13 = sub_1B0E44AC8();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v11 = sub_1B0E42E68();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a7, 1) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = sub_1B0E42D58();
    (*(v12 + 8))(a7, v11);
    v10 = v9;
  }

  v8 = [v21 initWithGlobalMessageID:a1 name:v16 mimePart:v14 attachmentID:a6 remoteURL:?];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](a6);
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v16);
  return v8;
}

unint64_t sub_1B07CF19C()
{
  v2 = qword_1EB6DA598;
  if (!qword_1EB6DA598)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA598);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B07CF200()
{
  v2 = qword_1EB6DAE50;
  if (!qword_1EB6DAE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B40, &unk_1B0E9AF70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07CF288(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t type metadata accessor for MessagesMissingAllBodyData()
{
  v1 = qword_1EB6DBAA8;
  if (!qword_1EB6DBAA8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B07CF3D0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  v3 = type metadata accessor for MessagesMissingAllBodyData();
  sub_1B074F0FC(v7, v1 + *(v3 + 20));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B07CF4B8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  v3 = type metadata accessor for MessagesMissingAllBodyData();
  sub_1B074F0FC(v7, v1 + *(v3 + 24));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B07CF58C(uint64_t a1)
{
  v2 = type metadata accessor for MessagesMissingAllBodyData();
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

int *sub_1B07CF5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v10 = type metadata accessor for MessagesMissingAllBodyData();
  sub_1B074BA2C(a2, a5 + v10[5]);
  sub_1B074BA2C(a3, a5 + v10[6]);
  result = v10;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t type metadata accessor for FindFragmentedMessagesResult()
{
  v1 = qword_1EB6DBA80;
  if (!qword_1EB6DBA80)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B07CF6F0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
  sub_1B074F0FC(v7, v1 + *(FragmentedMessagesResult + 20));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B07CF7C4(uint64_t a1)
{
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
  result = a1;
  *(v1 + *(FragmentedMessagesResult + 24)) = a1;
  return result;
}

uint64_t sub_1B07CF7FC()
{
  v3 = v0[4] & 1;
  v4 = *(v0 + 17);
  result = *v0;
  v2 = *(v0 + 1);
  return result;
}

uint64_t sub_1B07CF83C(uint64_t result, uint64_t a2, __int16 a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  *(v3 + 17) = HIBYTE(a3);
  return result;
}

BOOL sub_1B07CF8B8(uint64_t a1, uint64_t a2)
{
  LOBYTE(v7) = *(a1 + 16) & 1;
  HIBYTE(v7) = *(a1 + 17);
  LOBYTE(v6) = *(a2 + 16) & 1;
  HIBYTE(v6) = *(a2 + 17);
  return (static MessageToDownload.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), v7, *a2, *(a2 + 8), v6) & 1) != 0 && sub_1B07FF948(*(a1 + 24), *(a2 + 24)) && sub_1B07FF948(*(a1 + 32), *(a2 + 32));
}

uint64_t sub_1B07CF9DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 17) = HIBYTE(a3);
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

BOOL sub_1B07CFA24(uint64_t a1, uint64_t *a2)
{
  v11 = a1;
  v16 = a2;
  v21 = 0;
  v20 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v13 = &v7[-v12];
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v15 = &v7[-v14];
  v21 = v4;
  v20 = v5;
  v18 = *v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = *v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F367C();
  v19 = sub_1B0E45368();

  if (v19)
  {
    FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
    sub_1B03D08AC(v11 + *(FragmentedMessagesResult + 20), v15);
    sub_1B03D08AC(v16 + *(FragmentedMessagesResult + 20), v13);
    sub_1B041C1E8();
    v10 = static MessageIdentifierSet.__derived_struct_equals(_:_:)();
    sub_1B03D09B8(v13);
    sub_1B03D09B8(v15);
    return (v10 & 1) != 0 && *(v11 + *(FragmentedMessagesResult + 24)) == *(v16 + *(FragmentedMessagesResult + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07CFC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
  sub_1B074BA2C(a2, a4 + *(FragmentedMessagesResult + 20));
  result = FragmentedMessagesResult;
  *(a4 + *(FragmentedMessagesResult + 24)) = a3;
  return result;
}

BOOL sub_1B07CFC98(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1B07CF8B8(__dst, v5);
}

uint64_t sub_1B07CFD3C(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B03D08AC(v1, v3 - v3[0]);
  sub_1B074F0FC(v4, v3[1]);
  return sub_1B03D09B8(v5);
}

uint64_t sub_1B07CFDE0()
{
  v1 = (v0 + *(type metadata accessor for MissingBodyDataRequest() + 20));
  result = *v1;
  v3 = v1[1] & 1;
  return result;
}

uint64_t type metadata accessor for MissingBodyDataRequest()
{
  v1 = qword_1EB6DBD28;
  if (!qword_1EB6DBD28)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B07CFE84(uint64_t a1, char a2)
{
  v3 = type metadata accessor for MissingBodyDataRequest();
  result = a1;
  v5 = v2 + *(v3 + 20);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1B07CFEF8(uint64_t a1)
{
  v2 = type metadata accessor for MissingBodyDataRequest();
  result = a1;
  *(v1 + *(v2 + 24)) = a1;
  return result;
}

uint64_t sub_1B07CFF54(uint64_t a1)
{
  v2 = type metadata accessor for MissingBodyDataRequest();
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

BOOL sub_1B07CFF8C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v18 = a2;
  v29 = 0;
  v28 = 0;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v9 - v15;
  v17 = v15;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v20 = &v9 - v17;
  v29 = v3;
  v28 = v4;
  sub_1B03D08AC(v3, &v9 - v17);
  sub_1B03D08AC(v18, v19);
  sub_1B041C1E8();
  v21 = static MessageIdentifierSet.__derived_struct_equals(_:_:)();
  sub_1B03D09B8(v19);
  sub_1B03D09B8(v20);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for MissingBodyDataRequest();
  v5 = (v14 + v11[5]);
  v12 = *v5;
  v13 = *(v5 + 8);
  v6 = v18 + v11[5];
  v7 = *v6;
  LOBYTE(v6) = *(v6 + 8);
  v24 = v12;
  v25 = v13 & 1;
  v26 = v7;
  v27 = v6 & 1;
  if ((v13 & 1) == 0)
  {
    v22 = v12;
    v23 = v13 & 1;
    if ((v27 & 1) == 0)
    {
      v10 = v22 == v26;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((v27 & 1) == 0)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = 1;
LABEL_8:
  if (v10)
  {
    return *(v14 + v11[6]) == *(v18 + v11[6]) && *(v14 + v11[7]) == *(v18 + v11[7]);
  }

  else
  {
    return 0;
  }
}

int *sub_1B07D023C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1B074BA2C(a1, a6);
  result = type metadata accessor for MissingBodyDataRequest();
  v7 = a6 + result[5];
  *v7 = a2;
  *(v7 + 8) = a3 & 1;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t sub_1B07D02DC(uint64_t a1, int a2, uint64_t a3)
{
  v782 = a1;
  v783 = a2;
  v784 = a3;
  v616 = sub_1B074E050;
  v617 = sub_1B07F13D0;
  v618 = sub_1B07F14EC;
  v619 = sub_1B0394C30;
  v620 = sub_1B0394C24;
  v621 = sub_1B074DFFC;
  v622 = sub_1B039BA88;
  v623 = sub_1B039BB94;
  v624 = sub_1B0394C24;
  v625 = sub_1B039BBA0;
  v626 = sub_1B039BC08;
  v627 = 0x786F626C69616DLL;
  v628 = sub_1B06BA324;
  v629 = sub_1B074E0E4;
  v630 = sub_1B039BCF8;
  v631 = sub_1B07F12A4;
  v632 = sub_1B03B0DF8;
  v633 = sub_1B07F1308;
  v634 = sub_1B03B0DF8;
  v635 = sub_1B07F136C;
  v636 = sub_1B03B0DF8;
  v637 = sub_1B07F14E0;
  v638 = sub_1B039BC08;
  v639 = sub_1B07F14E0;
  v640 = sub_1B039BC08;
  v641 = sub_1B0398F5C;
  v642 = sub_1B0398F5C;
  v643 = sub_1B0399178;
  v644 = sub_1B0398F5C;
  v645 = sub_1B0398F5C;
  v646 = sub_1B039BA94;
  v647 = sub_1B0398F5C;
  v648 = sub_1B0398F5C;
  v649 = sub_1B0399178;
  v650 = sub_1B0398F5C;
  v651 = sub_1B0398F5C;
  v652 = sub_1B03991EC;
  v653 = sub_1B0398F5C;
  v654 = sub_1B0398F5C;
  v655 = sub_1B03993BC;
  v656 = sub_1B0398F5C;
  v657 = sub_1B0398F5C;
  v658 = sub_1B039BCEC;
  v659 = sub_1B0398F5C;
  v660 = sub_1B0398F5C;
  v661 = sub_1B0399260;
  v662 = sub_1B0398F5C;
  v663 = sub_1B0398F5C;
  v664 = sub_1B0399260;
  v665 = sub_1B0398F5C;
  v666 = sub_1B0398F5C;
  v667 = sub_1B0399260;
  v668 = sub_1B0398F5C;
  v669 = sub_1B0398F5C;
  v670 = sub_1B03991EC;
  v671 = sub_1B0398F5C;
  v672 = sub_1B0398F5C;
  v673 = sub_1B03991EC;
  v674 = sub_1B074E050;
  v675 = sub_1B07F15E0;
  v676 = sub_1B0394C24;
  v677 = sub_1B074DFFC;
  v678 = sub_1B039BA88;
  v679 = sub_1B0394C24;
  v680 = sub_1B039BBA0;
  v681 = sub_1B039BC08;
  v682 = sub_1B06BA324;
  v683 = sub_1B074E0E4;
  v684 = sub_1B039BCF8;
  v685 = sub_1B07F12A4;
  v686 = sub_1B03B0DF8;
  v687 = sub_1B07F1308;
  v688 = sub_1B03B0DF8;
  v689 = sub_1B074EF98;
  v690 = sub_1B039BCF8;
  v691 = sub_1B0398F5C;
  v692 = sub_1B0398F5C;
  v693 = sub_1B0399178;
  v694 = sub_1B0398F5C;
  v695 = sub_1B0398F5C;
  v696 = sub_1B039BA94;
  v697 = sub_1B0398F5C;
  v698 = sub_1B0398F5C;
  v699 = sub_1B0399178;
  v700 = sub_1B0398F5C;
  v701 = sub_1B0398F5C;
  v702 = sub_1B03991EC;
  v703 = sub_1B0398F5C;
  v704 = sub_1B0398F5C;
  v705 = sub_1B03993BC;
  v706 = sub_1B0398F5C;
  v707 = sub_1B0398F5C;
  v708 = sub_1B039BCEC;
  v709 = sub_1B0398F5C;
  v710 = sub_1B0398F5C;
  v711 = sub_1B0399260;
  v712 = sub_1B0398F5C;
  v713 = sub_1B0398F5C;
  v714 = sub_1B0399260;
  v715 = sub_1B0398F5C;
  v716 = sub_1B0398F5C;
  v717 = sub_1B039BCEC;
  v718 = sub_1B074E050;
  v719 = sub_1B0394C24;
  v720 = sub_1B074DFFC;
  v721 = sub_1B039BA88;
  v722 = sub_1B0394C24;
  v723 = sub_1B039BBA0;
  v724 = sub_1B039BC08;
  v725 = sub_1B06BA324;
  v726 = sub_1B074E0E4;
  v727 = sub_1B039BCF8;
  v728 = sub_1B07F12A4;
  v729 = sub_1B03B0DF8;
  v730 = sub_1B07F1308;
  v731 = sub_1B03B0DF8;
  v732 = sub_1B0398F5C;
  v733 = sub_1B0398F5C;
  v734 = sub_1B0399178;
  v735 = sub_1B0398F5C;
  v736 = sub_1B0398F5C;
  v737 = sub_1B039BA94;
  v738 = sub_1B0398F5C;
  v739 = sub_1B0398F5C;
  v740 = sub_1B0399178;
  v741 = sub_1B0398F5C;
  v742 = sub_1B0398F5C;
  v743 = sub_1B03991EC;
  v744 = sub_1B0398F5C;
  v745 = sub_1B0398F5C;
  v746 = sub_1B03993BC;
  v747 = sub_1B0398F5C;
  v748 = sub_1B0398F5C;
  v749 = sub_1B039BCEC;
  v750 = sub_1B0398F5C;
  v751 = sub_1B0398F5C;
  v752 = sub_1B0399260;
  v753 = sub_1B0398F5C;
  v754 = sub_1B0398F5C;
  v755 = sub_1B0399260;
  v807 = 0;
  v808 = 0;
  v806 = 0;
  v805 = 0;
  v756 = 0;
  v757 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v758 = (*(*(v757 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v757);
  v759 = v345 - v758;
  v765 = 0;
  v760 = *(type metadata accessor for MissingBodyDataRequest() - 8);
  v761 = v760;
  v762 = *(v760 + 64);
  v763 = (v762 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v765);
  v764 = v345 - v763;
  v766 = _s6LoggerVMa_1();
  v767 = (*(*(v766 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v765);
  v768 = v345 - v767;
  v769 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v770 = v345 - v769;
  v771 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v772 = v345 - v771;
  v773 = sub_1B0E439A8();
  v774 = *(v773 - 8);
  v775 = v773 - 8;
  v776 = (*(v774 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v773);
  v777 = v345 - v776;
  v778 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v345 - v776);
  v779 = v345 - v778;
  v780 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v345 - v778);
  v781 = v345 - v780;
  v787 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v786 = (*(*(v787 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v785);
  v788 = v345 - v786;
  v807 = v10;
  v808 = v11;
  v806 = v12;
  v805 = v9;
  sub_1B03D08AC(v9, v345 - v786);
  v789 = MessageIdentifierSet.isEmpty.getter();
  sub_1B03D09B8(v788);
  if (v789)
  {
    (*(v774 + 16))(v781, v784, v773);
    sub_1B074B69C(v784, v772);
    sub_1B074B69C(v772, v770);
    sub_1B074E41C(v772, v768);
    v13 = (v770 + *(v766 + 20));
    v560 = *v13;
    v561 = *(v13 + 1);
    v562 = *(v13 + 1);
    v563 = *(v13 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v770);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v559 = 36;
    v583 = 7;
    v14 = swift_allocObject();
    v15 = v561;
    v16 = v562;
    v17 = v563;
    v568 = v14;
    *(v14 + 16) = v560;
    *(v14 + 20) = v15;
    *(v14 + 24) = v16;
    *(v14 + 32) = v17;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = swift_allocObject();
    v19 = v561;
    v20 = v562;
    v21 = v563;
    v558 = v18;
    *(v18 + 16) = v560;
    *(v18 + 20) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v21;

    v582 = 32;
    v22 = swift_allocObject();
    v23 = v558;
    v573 = v22;
    *(v22 + 16) = v718;
    *(v22 + 24) = v23;
    sub_1B0394868();
    sub_1B0394868();

    v24 = swift_allocObject();
    v25 = v561;
    v26 = v562;
    v27 = v563;
    v28 = v24;
    v29 = v768;
    v576 = v28;
    *(v28 + 16) = v560;
    *(v28 + 20) = v25;
    *(v28 + 24) = v26;
    *(v28 + 32) = v27;
    sub_1B074B764(v29);
    sub_1B07F1114(v785, v764);
    v565 = *(v761 + 80);
    v564 = (v565 + 16) & ~v565;
    v578 = swift_allocObject();
    sub_1B07F11DC(v764, v578 + v564);
    sub_1B07F1114(v785, v764);
    v566 = (v565 + 16) & ~v565;
    v584 = swift_allocObject();
    sub_1B07F11DC(v764, v584 + v566);
    v614 = sub_1B0E43988();
    v615 = sub_1B0E45908();
    v580 = 17;
    v587 = swift_allocObject();
    v570 = 16;
    *(v587 + 16) = 16;
    v588 = swift_allocObject();
    v572 = 4;
    *(v588 + 16) = 4;
    v30 = swift_allocObject();
    v567 = v30;
    *(v30 + 16) = v619;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v567;
    v589 = v31;
    *(v31 + 16) = v719;
    *(v31 + 24) = v32;
    v590 = swift_allocObject();
    *(v590 + 16) = 0;
    v591 = swift_allocObject();
    *(v591 + 16) = 1;
    v33 = swift_allocObject();
    v34 = v568;
    v569 = v33;
    *(v33 + 16) = v720;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v569;
    v592 = v35;
    *(v35 + 16) = v721;
    *(v35 + 24) = v36;
    v593 = swift_allocObject();
    *(v593 + 16) = v570;
    v594 = swift_allocObject();
    *(v594 + 16) = v572;
    v37 = swift_allocObject();
    v571 = v37;
    *(v37 + 16) = v623;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    v39 = v571;
    v595 = v38;
    *(v38 + 16) = v722;
    *(v38 + 24) = v39;
    v596 = swift_allocObject();
    *(v596 + 16) = 0;
    v597 = swift_allocObject();
    *(v597 + 16) = v572;
    v40 = swift_allocObject();
    v41 = v573;
    v574 = v40;
    *(v40 + 16) = v723;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v574;
    v598 = v42;
    *(v42 + 16) = v724;
    *(v42 + 24) = v43;
    v599 = swift_allocObject();
    *(v599 + 16) = 112;
    v600 = swift_allocObject();
    v581 = 8;
    *(v600 + 16) = 8;
    v586 = 24;
    v575 = swift_allocObject();
    *(v575 + 16) = v627;
    v44 = swift_allocObject();
    v45 = v575;
    v601 = v44;
    *(v44 + 16) = v725;
    *(v44 + 24) = v45;
    v602 = swift_allocObject();
    *(v602 + 16) = 37;
    v603 = swift_allocObject();
    *(v603 + 16) = v581;
    v46 = swift_allocObject();
    v47 = v576;
    v577 = v46;
    *(v46 + 16) = v726;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v577;
    v604 = v48;
    *(v48 + 16) = v727;
    *(v48 + 24) = v49;
    v605 = swift_allocObject();
    *(v605 + 16) = 0;
    v606 = swift_allocObject();
    *(v606 + 16) = v581;
    v50 = swift_allocObject();
    v51 = v578;
    v579 = v50;
    *(v50 + 16) = v728;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v579;
    v607 = v52;
    *(v52 + 16) = v729;
    *(v52 + 24) = v53;
    v608 = swift_allocObject();
    *(v608 + 16) = 0;
    v609 = swift_allocObject();
    *(v609 + 16) = v581;
    v54 = swift_allocObject();
    v55 = v584;
    v585 = v54;
    *(v54 + 16) = v730;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v585;
    v611 = v56;
    *(v56 + 16) = v731;
    *(v56 + 24) = v57;
    v613 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v610 = sub_1B0E46A48();
    v612 = v58;

    v59 = v587;
    v60 = v612;
    *v612 = v732;
    v60[1] = v59;

    v61 = v588;
    v62 = v612;
    v612[2] = v733;
    v62[3] = v61;

    v63 = v589;
    v64 = v612;
    v612[4] = v734;
    v64[5] = v63;

    v65 = v590;
    v66 = v612;
    v612[6] = v735;
    v66[7] = v65;

    v67 = v591;
    v68 = v612;
    v612[8] = v736;
    v68[9] = v67;

    v69 = v592;
    v70 = v612;
    v612[10] = v737;
    v70[11] = v69;

    v71 = v593;
    v72 = v612;
    v612[12] = v738;
    v72[13] = v71;

    v73 = v594;
    v74 = v612;
    v612[14] = v739;
    v74[15] = v73;

    v75 = v595;
    v76 = v612;
    v612[16] = v740;
    v76[17] = v75;

    v77 = v596;
    v78 = v612;
    v612[18] = v741;
    v78[19] = v77;

    v79 = v597;
    v80 = v612;
    v612[20] = v742;
    v80[21] = v79;

    v81 = v598;
    v82 = v612;
    v612[22] = v743;
    v82[23] = v81;

    v83 = v599;
    v84 = v612;
    v612[24] = v744;
    v84[25] = v83;

    v85 = v600;
    v86 = v612;
    v612[26] = v745;
    v86[27] = v85;

    v87 = v601;
    v88 = v612;
    v612[28] = v746;
    v88[29] = v87;

    v89 = v602;
    v90 = v612;
    v612[30] = v747;
    v90[31] = v89;

    v91 = v603;
    v92 = v612;
    v612[32] = v748;
    v92[33] = v91;

    v93 = v604;
    v94 = v612;
    v612[34] = v749;
    v94[35] = v93;

    v95 = v605;
    v96 = v612;
    v612[36] = v750;
    v96[37] = v95;

    v97 = v606;
    v98 = v612;
    v612[38] = v751;
    v98[39] = v97;

    v99 = v607;
    v100 = v612;
    v612[40] = v752;
    v100[41] = v99;

    v101 = v608;
    v102 = v612;
    v612[42] = v753;
    v102[43] = v101;

    v103 = v609;
    v104 = v612;
    v612[44] = v754;
    v104[45] = v103;

    v105 = v611;
    v106 = v612;
    v612[46] = v755;
    v106[47] = v105;
    sub_1B0394964();

    if (os_log_type_enabled(v614, v615))
    {
      v107 = v756;
      v551 = sub_1B0E45D78();
      v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v552 = sub_1B03949A8(0);
      v553 = sub_1B03949A8(1);
      v554 = &v794;
      v794 = v551;
      v555 = &v793;
      v793 = v552;
      v556 = &v792;
      v792 = v553;
      sub_1B0394A48(3, &v794);
      sub_1B0394A48(8, v554);
      v790 = v732;
      v791 = v587;
      sub_1B03949FC(&v790, v554, v555, v556);
      v557 = v107;
      if (v107)
      {

        __break(1u);
      }

      else
      {
        v790 = v733;
        v791 = v588;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v549 = 0;
        v790 = v734;
        v791 = v589;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v548 = 0;
        v790 = v735;
        v791 = v590;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v547 = 0;
        v790 = v736;
        v791 = v591;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v546 = 0;
        v790 = v737;
        v791 = v592;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v545 = 0;
        v790 = v738;
        v791 = v593;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v544 = 0;
        v790 = v739;
        v791 = v594;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v543 = 0;
        v790 = v740;
        v791 = v595;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v542 = 0;
        v790 = v741;
        v791 = v596;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v541 = 0;
        v790 = v742;
        v791 = v597;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v540 = 0;
        v790 = v743;
        v791 = v598;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v539 = 0;
        v790 = v744;
        v791 = v599;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v538 = 0;
        v790 = v745;
        v791 = v600;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v537 = 0;
        v790 = v746;
        v791 = v601;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v536 = 0;
        v790 = v747;
        v791 = v602;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v535 = 0;
        v790 = v748;
        v791 = v603;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v534 = 0;
        v790 = v749;
        v791 = v604;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v533 = 0;
        v790 = v750;
        v791 = v605;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v532 = 0;
        v790 = v751;
        v791 = v606;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v531 = 0;
        v790 = v752;
        v791 = v607;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v530 = 0;
        v790 = v753;
        v791 = v608;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v529 = 0;
        v790 = v754;
        v791 = v609;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v528 = 0;
        v790 = v755;
        v791 = v611;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        _os_log_impl(&dword_1B0389000, v614, v615, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for %ld messages missing all body data (in latest %ld).", v551, 0x3Fu);
        sub_1B03998A8(v552);
        sub_1B03998A8(v553);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v614);
    return (*(v774 + 8))(v781, v773);
  }

  else
  {
    sub_1B03D08AC(v785, v788);
    MessageIdentifierSet.ranges.getter(v759);
    sub_1B03D09B8(v788);
    sub_1B07D76A4();
    v527 = sub_1B0E45718();
    sub_1B07D772C(v759);
    if (v527 >= 30)
    {
      (*(v774 + 16))(v777, v784, v773);
      sub_1B074B69C(v784, v772);
      sub_1B074B69C(v772, v770);
      sub_1B074E41C(v772, v768);
      v216 = (v770 + *(v766 + 20));
      v355 = *v216;
      v356 = *(v216 + 1);
      v357 = *(v216 + 1);
      v358 = *(v216 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v770);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v354 = 36;
      v389 = 7;
      v217 = swift_allocObject();
      v218 = v356;
      v219 = v357;
      v220 = v358;
      v368 = v217;
      *(v217 + 16) = v355;
      *(v217 + 20) = v218;
      *(v217 + 24) = v219;
      *(v217 + 32) = v220;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v221 = swift_allocObject();
      v222 = v356;
      v223 = v357;
      v224 = v358;
      v353 = v221;
      *(v221 + 16) = v355;
      *(v221 + 20) = v222;
      *(v221 + 24) = v223;
      *(v221 + 32) = v224;

      v388 = 32;
      v225 = swift_allocObject();
      v226 = v353;
      v372 = v225;
      *(v225 + 16) = v616;
      *(v225 + 24) = v226;
      sub_1B0394868();
      sub_1B0394868();

      v227 = swift_allocObject();
      v228 = v356;
      v229 = v357;
      v230 = v358;
      v231 = v227;
      v232 = v768;
      v375 = v231;
      *(v231 + 16) = v355;
      *(v231 + 20) = v228;
      *(v231 + 24) = v229;
      *(v231 + 32) = v230;
      sub_1B074B764(v232);
      sub_1B07F1114(v785, v764);
      v364 = *(v761 + 80);
      v359 = (v364 + 16) & ~v364;
      v377 = swift_allocObject();
      sub_1B07F11DC(v764, v377 + v359);
      sub_1B07F1114(v785, v764);
      v360 = (v364 + 16) & ~v364;
      v379 = swift_allocObject();
      sub_1B07F11DC(v764, v379 + v360);
      sub_1B07F1114(v785, v764);
      v361 = (v364 + 16) & ~v364;
      v382 = swift_allocObject();
      sub_1B07F11DC(v764, v382 + v361);
      sub_1B07F1114(v785, v764);
      v362 = (v364 + 16) & ~v364;
      v363 = swift_allocObject();
      sub_1B07F11DC(v764, v363 + v362);

      v233 = swift_allocObject();
      v234 = v363;
      v384 = v233;
      *(v233 + 16) = v617;
      *(v233 + 24) = v234;

      sub_1B07F1114(v785, v764);
      v365 = (v364 + 16) & ~v364;
      v366 = swift_allocObject();
      sub_1B07F11DC(v764, v366 + v365);

      v235 = swift_allocObject();
      v236 = v366;
      v390 = v235;
      *(v235 + 16) = v618;
      *(v235 + 24) = v236;

      v428 = sub_1B0E43988();
      v429 = sub_1B0E45908();
      v386 = 17;
      v392 = swift_allocObject();
      v370 = 16;
      *(v392 + 16) = 16;
      v393 = swift_allocObject();
      v387 = 4;
      *(v393 + 16) = 4;
      v237 = swift_allocObject();
      v367 = v237;
      *(v237 + 16) = v619;
      *(v237 + 24) = 0;
      v238 = swift_allocObject();
      v239 = v367;
      v394 = v238;
      *(v238 + 16) = v620;
      *(v238 + 24) = v239;
      v395 = swift_allocObject();
      *(v395 + 16) = 0;
      v396 = swift_allocObject();
      *(v396 + 16) = 1;
      v240 = swift_allocObject();
      v241 = v368;
      v369 = v240;
      *(v240 + 16) = v621;
      *(v240 + 24) = v241;
      v242 = swift_allocObject();
      v243 = v369;
      v397 = v242;
      *(v242 + 16) = v622;
      *(v242 + 24) = v243;
      v398 = swift_allocObject();
      *(v398 + 16) = v370;
      v399 = swift_allocObject();
      *(v399 + 16) = v387;
      v244 = swift_allocObject();
      v371 = v244;
      *(v244 + 16) = v623;
      *(v244 + 24) = 0;
      v245 = swift_allocObject();
      v246 = v371;
      v400 = v245;
      *(v245 + 16) = v624;
      *(v245 + 24) = v246;
      v401 = swift_allocObject();
      *(v401 + 16) = 0;
      v402 = swift_allocObject();
      *(v402 + 16) = v387;
      v247 = swift_allocObject();
      v248 = v372;
      v373 = v247;
      *(v247 + 16) = v625;
      *(v247 + 24) = v248;
      v249 = swift_allocObject();
      v250 = v373;
      v403 = v249;
      *(v249 + 16) = v626;
      *(v249 + 24) = v250;
      v404 = swift_allocObject();
      *(v404 + 16) = 112;
      v405 = swift_allocObject();
      v381 = 8;
      *(v405 + 16) = 8;
      v374 = swift_allocObject();
      *(v374 + 16) = v627;
      v251 = swift_allocObject();
      v252 = v374;
      v406 = v251;
      *(v251 + 16) = v628;
      *(v251 + 24) = v252;
      v407 = swift_allocObject();
      *(v407 + 16) = 37;
      v408 = swift_allocObject();
      *(v408 + 16) = v381;
      v253 = swift_allocObject();
      v254 = v375;
      v376 = v253;
      *(v253 + 16) = v629;
      *(v253 + 24) = v254;
      v255 = swift_allocObject();
      v256 = v376;
      v409 = v255;
      *(v255 + 16) = v630;
      *(v255 + 24) = v256;
      v410 = swift_allocObject();
      *(v410 + 16) = 0;
      v411 = swift_allocObject();
      *(v411 + 16) = v381;
      v257 = swift_allocObject();
      v258 = v377;
      v378 = v257;
      *(v257 + 16) = v631;
      *(v257 + 24) = v258;
      v259 = swift_allocObject();
      v260 = v378;
      v412 = v259;
      *(v259 + 16) = v632;
      *(v259 + 24) = v260;
      v413 = swift_allocObject();
      *(v413 + 16) = 0;
      v414 = swift_allocObject();
      *(v414 + 16) = v381;
      v261 = swift_allocObject();
      v262 = v379;
      v380 = v261;
      *(v261 + 16) = v633;
      *(v261 + 24) = v262;
      v263 = swift_allocObject();
      v264 = v380;
      v415 = v263;
      *(v263 + 16) = v634;
      *(v263 + 24) = v264;
      v416 = swift_allocObject();
      *(v416 + 16) = 0;
      v417 = swift_allocObject();
      *(v417 + 16) = v381;
      v265 = swift_allocObject();
      v266 = v382;
      v383 = v265;
      *(v265 + 16) = v635;
      *(v265 + 24) = v266;
      v267 = swift_allocObject();
      v268 = v383;
      v418 = v267;
      *(v267 + 16) = v636;
      *(v267 + 24) = v268;
      v419 = swift_allocObject();
      *(v419 + 16) = 0;
      v420 = swift_allocObject();
      *(v420 + 16) = v387;
      v269 = swift_allocObject();
      v270 = v384;
      v385 = v269;
      *(v269 + 16) = v637;
      *(v269 + 24) = v270;
      v271 = swift_allocObject();
      v272 = v385;
      v421 = v271;
      *(v271 + 16) = v638;
      *(v271 + 24) = v272;
      v422 = swift_allocObject();
      *(v422 + 16) = 0;
      v423 = swift_allocObject();
      *(v423 + 16) = v387;
      v273 = swift_allocObject();
      v274 = v390;
      v391 = v273;
      *(v273 + 16) = v639;
      *(v273 + 24) = v274;
      v275 = swift_allocObject();
      v276 = v391;
      v425 = v275;
      *(v275 + 16) = v640;
      *(v275 + 24) = v276;
      v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v424 = sub_1B0E46A48();
      v426 = v277;

      v278 = v392;
      v279 = v426;
      *v426 = v641;
      v279[1] = v278;

      v280 = v393;
      v281 = v426;
      v426[2] = v642;
      v281[3] = v280;

      v282 = v394;
      v283 = v426;
      v426[4] = v643;
      v283[5] = v282;

      v284 = v395;
      v285 = v426;
      v426[6] = v644;
      v285[7] = v284;

      v286 = v396;
      v287 = v426;
      v426[8] = v645;
      v287[9] = v286;

      v288 = v397;
      v289 = v426;
      v426[10] = v646;
      v289[11] = v288;

      v290 = v398;
      v291 = v426;
      v426[12] = v647;
      v291[13] = v290;

      v292 = v399;
      v293 = v426;
      v426[14] = v648;
      v293[15] = v292;

      v294 = v400;
      v295 = v426;
      v426[16] = v649;
      v295[17] = v294;

      v296 = v401;
      v297 = v426;
      v426[18] = v650;
      v297[19] = v296;

      v298 = v402;
      v299 = v426;
      v426[20] = v651;
      v299[21] = v298;

      v300 = v403;
      v301 = v426;
      v426[22] = v652;
      v301[23] = v300;

      v302 = v404;
      v303 = v426;
      v426[24] = v653;
      v303[25] = v302;

      v304 = v405;
      v305 = v426;
      v426[26] = v654;
      v305[27] = v304;

      v306 = v406;
      v307 = v426;
      v426[28] = v655;
      v307[29] = v306;

      v308 = v407;
      v309 = v426;
      v426[30] = v656;
      v309[31] = v308;

      v310 = v408;
      v311 = v426;
      v426[32] = v657;
      v311[33] = v310;

      v312 = v409;
      v313 = v426;
      v426[34] = v658;
      v313[35] = v312;

      v314 = v410;
      v315 = v426;
      v426[36] = v659;
      v315[37] = v314;

      v316 = v411;
      v317 = v426;
      v426[38] = v660;
      v317[39] = v316;

      v318 = v412;
      v319 = v426;
      v426[40] = v661;
      v319[41] = v318;

      v320 = v413;
      v321 = v426;
      v426[42] = v662;
      v321[43] = v320;

      v322 = v414;
      v323 = v426;
      v426[44] = v663;
      v323[45] = v322;

      v324 = v415;
      v325 = v426;
      v426[46] = v664;
      v325[47] = v324;

      v326 = v416;
      v327 = v426;
      v426[48] = v665;
      v327[49] = v326;

      v328 = v417;
      v329 = v426;
      v426[50] = v666;
      v329[51] = v328;

      v330 = v418;
      v331 = v426;
      v426[52] = v667;
      v331[53] = v330;

      v332 = v419;
      v333 = v426;
      v426[54] = v668;
      v333[55] = v332;

      v334 = v420;
      v335 = v426;
      v426[56] = v669;
      v335[57] = v334;

      v336 = v421;
      v337 = v426;
      v426[58] = v670;
      v337[59] = v336;

      v338 = v422;
      v339 = v426;
      v426[60] = v671;
      v339[61] = v338;

      v340 = v423;
      v341 = v426;
      v426[62] = v672;
      v341[63] = v340;

      v342 = v425;
      v343 = v426;
      v426[64] = v673;
      v343[65] = v342;
      sub_1B0394964();

      if (os_log_type_enabled(v428, v429))
      {
        v344 = v756;
        v346 = sub_1B0E45D78();
        v345[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v347 = sub_1B03949A8(0);
        v348 = sub_1B03949A8(1);
        v349 = &v804;
        v804 = v346;
        v350 = &v803;
        v803 = v347;
        v351 = &v802;
        v802 = v348;
        sub_1B0394A48(3, &v804);
        sub_1B0394A48(11, v349);
        v800 = v641;
        v801 = v392;
        sub_1B03949FC(&v800, v349, v350, v351);
        v352 = v344;
        if (v344)
        {

          __break(1u);
        }

        else
        {
          v800 = v642;
          v801 = v393;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[31] = 0;
          v800 = v643;
          v801 = v394;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[30] = 0;
          v800 = v644;
          v801 = v395;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[29] = 0;
          v800 = v645;
          v801 = v396;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[28] = 0;
          v800 = v646;
          v801 = v397;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[27] = 0;
          v800 = v647;
          v801 = v398;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[26] = 0;
          v800 = v648;
          v801 = v399;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[25] = 0;
          v800 = v649;
          v801 = v400;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[24] = 0;
          v800 = v650;
          v801 = v401;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[23] = 0;
          v800 = v651;
          v801 = v402;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[22] = 0;
          v800 = v652;
          v801 = v403;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[21] = 0;
          v800 = v653;
          v801 = v404;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[20] = 0;
          v800 = v654;
          v801 = v405;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[19] = 0;
          v800 = v655;
          v801 = v406;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[18] = 0;
          v800 = v656;
          v801 = v407;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[17] = 0;
          v800 = v657;
          v801 = v408;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[16] = 0;
          v800 = v658;
          v801 = v409;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[15] = 0;
          v800 = v659;
          v801 = v410;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[14] = 0;
          v800 = v660;
          v801 = v411;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[13] = 0;
          v800 = v661;
          v801 = v412;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[12] = 0;
          v800 = v662;
          v801 = v413;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[11] = 0;
          v800 = v663;
          v801 = v414;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[10] = 0;
          v800 = v664;
          v801 = v415;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[9] = 0;
          v800 = v665;
          v801 = v416;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[8] = 0;
          v800 = v666;
          v801 = v417;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[7] = 0;
          v800 = v667;
          v801 = v418;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[6] = 0;
          v800 = v668;
          v801 = v419;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[5] = 0;
          v800 = v669;
          v801 = v420;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[4] = 0;
          v800 = v670;
          v801 = v421;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[3] = 0;
          v800 = v671;
          v801 = v422;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[2] = 0;
          v800 = v672;
          v801 = v423;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[1] = 0;
          v800 = v673;
          v801 = v425;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          _os_log_impl(&dword_1B0389000, v428, v429, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for %ld messages missing all body data (in latest %ld). Excluding %ld UIDs (min %u, max %u", v346, 0x55u);
          sub_1B03998A8(v347);
          sub_1B03998A8(v348);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v428);
      return (*(v774 + 8))(v777, v773);
    }

    else
    {
      (*(v774 + 16))(v779, v784, v773);
      sub_1B074B69C(v784, v772);
      sub_1B074B69C(v772, v770);
      sub_1B074E41C(v772, v768);
      v109 = (v770 + *(v766 + 20));
      v465 = *v109;
      v466 = *(v109 + 1);
      v467 = *(v109 + 1);
      v468 = *(v109 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v770);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v464 = 36;
      v492 = 7;
      v110 = swift_allocObject();
      v111 = v466;
      v112 = v467;
      v113 = v468;
      v475 = v110;
      *(v110 + 16) = v465;
      *(v110 + 20) = v111;
      *(v110 + 24) = v112;
      *(v110 + 32) = v113;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v114 = swift_allocObject();
      v115 = v466;
      v116 = v467;
      v117 = v468;
      v463 = v114;
      *(v114 + 16) = v465;
      *(v114 + 20) = v115;
      *(v114 + 24) = v116;
      *(v114 + 32) = v117;

      v491 = 32;
      v118 = swift_allocObject();
      v119 = v463;
      v480 = v118;
      *(v118 + 16) = v674;
      *(v118 + 24) = v119;
      sub_1B0394868();
      sub_1B0394868();

      v120 = swift_allocObject();
      v121 = v466;
      v122 = v467;
      v123 = v468;
      v124 = v120;
      v125 = v768;
      v483 = v124;
      *(v124 + 16) = v465;
      *(v124 + 20) = v121;
      *(v124 + 24) = v122;
      *(v124 + 32) = v123;
      sub_1B074B764(v125);
      sub_1B07F1114(v785, v764);
      v471 = *(v761 + 80);
      v469 = (v471 + 16) & ~v471;
      v485 = swift_allocObject();
      sub_1B07F11DC(v764, v485 + v469);
      sub_1B07F1114(v785, v764);
      v470 = (v471 + 16) & ~v471;
      v487 = swift_allocObject();
      sub_1B07F11DC(v764, v487 + v470);
      sub_1B07F1114(v785, v764);
      v472 = (v471 + 16) & ~v471;
      v473 = swift_allocObject();
      sub_1B07F11DC(v764, v473 + v472);

      v126 = swift_allocObject();
      v127 = v473;
      v493 = v126;
      *(v126 + 16) = v675;
      *(v126 + 24) = v127;

      v525 = sub_1B0E43988();
      v526 = sub_1B0E45908();
      v489 = 17;
      v495 = swift_allocObject();
      v477 = 16;
      *(v495 + 16) = 16;
      v496 = swift_allocObject();
      v479 = 4;
      *(v496 + 16) = 4;
      v128 = swift_allocObject();
      v474 = v128;
      *(v128 + 16) = v619;
      *(v128 + 24) = 0;
      v129 = swift_allocObject();
      v130 = v474;
      v497 = v129;
      *(v129 + 16) = v676;
      *(v129 + 24) = v130;
      v498 = swift_allocObject();
      *(v498 + 16) = 0;
      v499 = swift_allocObject();
      *(v499 + 16) = 1;
      v131 = swift_allocObject();
      v132 = v475;
      v476 = v131;
      *(v131 + 16) = v677;
      *(v131 + 24) = v132;
      v133 = swift_allocObject();
      v134 = v476;
      v500 = v133;
      *(v133 + 16) = v678;
      *(v133 + 24) = v134;
      v501 = swift_allocObject();
      *(v501 + 16) = v477;
      v502 = swift_allocObject();
      *(v502 + 16) = v479;
      v135 = swift_allocObject();
      v478 = v135;
      *(v135 + 16) = v623;
      *(v135 + 24) = 0;
      v136 = swift_allocObject();
      v137 = v478;
      v503 = v136;
      *(v136 + 16) = v679;
      *(v136 + 24) = v137;
      v504 = swift_allocObject();
      *(v504 + 16) = 0;
      v505 = swift_allocObject();
      *(v505 + 16) = v479;
      v138 = swift_allocObject();
      v139 = v480;
      v481 = v138;
      *(v138 + 16) = v680;
      *(v138 + 24) = v139;
      v140 = swift_allocObject();
      v141 = v481;
      v506 = v140;
      *(v140 + 16) = v681;
      *(v140 + 24) = v141;
      v507 = swift_allocObject();
      *(v507 + 16) = 112;
      v508 = swift_allocObject();
      v490 = 8;
      *(v508 + 16) = 8;
      v482 = swift_allocObject();
      *(v482 + 16) = v627;
      v142 = swift_allocObject();
      v143 = v482;
      v509 = v142;
      *(v142 + 16) = v682;
      *(v142 + 24) = v143;
      v510 = swift_allocObject();
      *(v510 + 16) = 37;
      v511 = swift_allocObject();
      *(v511 + 16) = v490;
      v144 = swift_allocObject();
      v145 = v483;
      v484 = v144;
      *(v144 + 16) = v683;
      *(v144 + 24) = v145;
      v146 = swift_allocObject();
      v147 = v484;
      v512 = v146;
      *(v146 + 16) = v684;
      *(v146 + 24) = v147;
      v513 = swift_allocObject();
      *(v513 + 16) = 0;
      v514 = swift_allocObject();
      *(v514 + 16) = v490;
      v148 = swift_allocObject();
      v149 = v485;
      v486 = v148;
      *(v148 + 16) = v685;
      *(v148 + 24) = v149;
      v150 = swift_allocObject();
      v151 = v486;
      v515 = v150;
      *(v150 + 16) = v686;
      *(v150 + 24) = v151;
      v516 = swift_allocObject();
      *(v516 + 16) = 0;
      v517 = swift_allocObject();
      *(v517 + 16) = v490;
      v152 = swift_allocObject();
      v153 = v487;
      v488 = v152;
      *(v152 + 16) = v687;
      *(v152 + 24) = v153;
      v154 = swift_allocObject();
      v155 = v488;
      v518 = v154;
      *(v154 + 16) = v688;
      *(v154 + 24) = v155;
      v519 = swift_allocObject();
      *(v519 + 16) = 34;
      v520 = swift_allocObject();
      *(v520 + 16) = v490;
      v156 = swift_allocObject();
      v157 = v493;
      v494 = v156;
      *(v156 + 16) = v689;
      *(v156 + 24) = v157;
      v158 = swift_allocObject();
      v159 = v494;
      v522 = v158;
      *(v158 + 16) = v690;
      *(v158 + 24) = v159;
      v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v521 = sub_1B0E46A48();
      v523 = v160;

      v161 = v495;
      v162 = v523;
      *v523 = v691;
      v162[1] = v161;

      v163 = v496;
      v164 = v523;
      v523[2] = v692;
      v164[3] = v163;

      v165 = v497;
      v166 = v523;
      v523[4] = v693;
      v166[5] = v165;

      v167 = v498;
      v168 = v523;
      v523[6] = v694;
      v168[7] = v167;

      v169 = v499;
      v170 = v523;
      v523[8] = v695;
      v170[9] = v169;

      v171 = v500;
      v172 = v523;
      v523[10] = v696;
      v172[11] = v171;

      v173 = v501;
      v174 = v523;
      v523[12] = v697;
      v174[13] = v173;

      v175 = v502;
      v176 = v523;
      v523[14] = v698;
      v176[15] = v175;

      v177 = v503;
      v178 = v523;
      v523[16] = v699;
      v178[17] = v177;

      v179 = v504;
      v180 = v523;
      v523[18] = v700;
      v180[19] = v179;

      v181 = v505;
      v182 = v523;
      v523[20] = v701;
      v182[21] = v181;

      v183 = v506;
      v184 = v523;
      v523[22] = v702;
      v184[23] = v183;

      v185 = v507;
      v186 = v523;
      v523[24] = v703;
      v186[25] = v185;

      v187 = v508;
      v188 = v523;
      v523[26] = v704;
      v188[27] = v187;

      v189 = v509;
      v190 = v523;
      v523[28] = v705;
      v190[29] = v189;

      v191 = v510;
      v192 = v523;
      v523[30] = v706;
      v192[31] = v191;

      v193 = v511;
      v194 = v523;
      v523[32] = v707;
      v194[33] = v193;

      v195 = v512;
      v196 = v523;
      v523[34] = v708;
      v196[35] = v195;

      v197 = v513;
      v198 = v523;
      v523[36] = v709;
      v198[37] = v197;

      v199 = v514;
      v200 = v523;
      v523[38] = v710;
      v200[39] = v199;

      v201 = v515;
      v202 = v523;
      v523[40] = v711;
      v202[41] = v201;

      v203 = v516;
      v204 = v523;
      v523[42] = v712;
      v204[43] = v203;

      v205 = v517;
      v206 = v523;
      v523[44] = v713;
      v206[45] = v205;

      v207 = v518;
      v208 = v523;
      v523[46] = v714;
      v208[47] = v207;

      v209 = v519;
      v210 = v523;
      v523[48] = v715;
      v210[49] = v209;

      v211 = v520;
      v212 = v523;
      v523[50] = v716;
      v212[51] = v211;

      v213 = v522;
      v214 = v523;
      v523[52] = v717;
      v214[53] = v213;
      sub_1B0394964();

      if (os_log_type_enabled(v525, v526))
      {
        v215 = v756;
        v456 = sub_1B0E45D78();
        v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v457 = sub_1B03949A8(0);
        v458 = sub_1B03949A8(2);
        v459 = &v799;
        v799 = v456;
        v460 = &v798;
        v798 = v457;
        v461 = &v797;
        v797 = v458;
        sub_1B0394A48(3, &v799);
        sub_1B0394A48(9, v459);
        v795 = v691;
        v796 = v495;
        sub_1B03949FC(&v795, v459, v460, v461);
        v462 = v215;
        if (v215)
        {

          __break(1u);
        }

        else
        {
          v795 = v692;
          v796 = v496;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v454 = 0;
          v795 = v693;
          v796 = v497;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v453 = 0;
          v795 = v694;
          v796 = v498;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v452 = 0;
          v795 = v695;
          v796 = v499;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v451 = 0;
          v795 = v696;
          v796 = v500;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v450 = 0;
          v795 = v697;
          v796 = v501;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v449 = 0;
          v795 = v698;
          v796 = v502;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v448 = 0;
          v795 = v699;
          v796 = v503;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v447 = 0;
          v795 = v700;
          v796 = v504;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v446 = 0;
          v795 = v701;
          v796 = v505;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v445 = 0;
          v795 = v702;
          v796 = v506;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v444 = 0;
          v795 = v703;
          v796 = v507;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v443 = 0;
          v795 = v704;
          v796 = v508;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v442 = 0;
          v795 = v705;
          v796 = v509;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v441 = 0;
          v795 = v706;
          v796 = v510;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v440 = 0;
          v795 = v707;
          v796 = v511;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v439 = 0;
          v795 = v708;
          v796 = v512;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v438 = 0;
          v795 = v709;
          v796 = v513;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v437 = 0;
          v795 = v710;
          v796 = v514;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v436 = 0;
          v795 = v711;
          v796 = v515;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v435 = 0;
          v795 = v712;
          v796 = v516;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v434 = 0;
          v795 = v713;
          v796 = v517;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v433 = 0;
          v795 = v714;
          v796 = v518;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v432 = 0;
          v795 = v715;
          v796 = v519;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v431 = 0;
          v795 = v716;
          v796 = v520;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v430 = 0;
          v795 = v717;
          v796 = v522;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          _os_log_impl(&dword_1B0389000, v525, v526, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for %ld messages missing all body data (in latest %ld). Excluding UIDs %{public}s", v456, 0x49u);
          sub_1B03998A8(v457);
          sub_1B03998A8(v458);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v525);
      return (*(v774 + 8))(v779, v773);
    }
  }
}

unint64_t sub_1B07D76A4()
{
  v2 = qword_1EB6DE4B0;
  if (!qword_1EB6DE4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE4B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07D772C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1B07D77CC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MissingBodyDataRequest() + 20));
  v5 = *v1;
  if (v1[1])
  {
    return 0;
  }

  v2 = *v1;
  return v5;
}

uint64_t sub_1B07D785C(uint64_t a1)
{
  v4 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v3 - v5;
  sub_1B03D08AC(v1, &v3 - v5);
  v8 = MessageIdentifierSet.count.getter();
  sub_1B03D09B8(v7);
  return v8;
}

uint64_t sub_1B07D7914(uint64_t a1)
{
  v3 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v3 - v4;
  sub_1B03D08AC(v1, &v3 - v4);
  MessageIdentifierSet.min()(v5, &v8);
  sub_1B03D09B8(v6);
  LODWORD(v7) = v8;
  BYTE4(v7) = v9 & 1;
  return v7;
}

uint64_t sub_1B07D79E0(uint64_t a1)
{
  v3 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v3 - v4;
  sub_1B03D08AC(v1, &v3 - v4);
  MessageIdentifierSet.max()(v5, &v8);
  sub_1B03D09B8(v6);
  LODWORD(v7) = v8;
  BYTE4(v7) = v9 & 1;
  return v7;
}

uint64_t sub_1B07D7AAC(uint64_t a1, int a2, uint64_t a3)
{
  v782 = a1;
  v783 = a2;
  v784 = a3;
  v616 = sub_1B074E050;
  v617 = sub_1B07F13D0;
  v618 = sub_1B07F14EC;
  v619 = sub_1B0394C30;
  v620 = sub_1B0394C24;
  v621 = sub_1B074DFFC;
  v622 = sub_1B039BA88;
  v623 = sub_1B039BB94;
  v624 = sub_1B0394C24;
  v625 = sub_1B039BBA0;
  v626 = sub_1B039BC08;
  v627 = 0x786F626C69616DLL;
  v628 = sub_1B06BA324;
  v629 = sub_1B074E0E4;
  v630 = sub_1B039BCF8;
  v631 = sub_1B07F12A4;
  v632 = sub_1B03B0DF8;
  v633 = sub_1B07F1308;
  v634 = sub_1B03B0DF8;
  v635 = sub_1B07F136C;
  v636 = sub_1B03B0DF8;
  v637 = sub_1B07F14E0;
  v638 = sub_1B039BC08;
  v639 = sub_1B07F14E0;
  v640 = sub_1B039BC08;
  v641 = sub_1B0398F5C;
  v642 = sub_1B0398F5C;
  v643 = sub_1B0399178;
  v644 = sub_1B0398F5C;
  v645 = sub_1B0398F5C;
  v646 = sub_1B039BA94;
  v647 = sub_1B0398F5C;
  v648 = sub_1B0398F5C;
  v649 = sub_1B0399178;
  v650 = sub_1B0398F5C;
  v651 = sub_1B0398F5C;
  v652 = sub_1B03991EC;
  v653 = sub_1B0398F5C;
  v654 = sub_1B0398F5C;
  v655 = sub_1B03993BC;
  v656 = sub_1B0398F5C;
  v657 = sub_1B0398F5C;
  v658 = sub_1B039BCEC;
  v659 = sub_1B0398F5C;
  v660 = sub_1B0398F5C;
  v661 = sub_1B0399260;
  v662 = sub_1B0398F5C;
  v663 = sub_1B0398F5C;
  v664 = sub_1B0399260;
  v665 = sub_1B0398F5C;
  v666 = sub_1B0398F5C;
  v667 = sub_1B0399260;
  v668 = sub_1B0398F5C;
  v669 = sub_1B0398F5C;
  v670 = sub_1B03991EC;
  v671 = sub_1B0398F5C;
  v672 = sub_1B0398F5C;
  v673 = sub_1B03991EC;
  v674 = sub_1B074E050;
  v675 = sub_1B07F15E0;
  v676 = sub_1B0394C24;
  v677 = sub_1B074DFFC;
  v678 = sub_1B039BA88;
  v679 = sub_1B0394C24;
  v680 = sub_1B039BBA0;
  v681 = sub_1B039BC08;
  v682 = sub_1B06BA324;
  v683 = sub_1B074E0E4;
  v684 = sub_1B039BCF8;
  v685 = sub_1B07F12A4;
  v686 = sub_1B03B0DF8;
  v687 = sub_1B07F1308;
  v688 = sub_1B03B0DF8;
  v689 = sub_1B074EF98;
  v690 = sub_1B039BCF8;
  v691 = sub_1B0398F5C;
  v692 = sub_1B0398F5C;
  v693 = sub_1B0399178;
  v694 = sub_1B0398F5C;
  v695 = sub_1B0398F5C;
  v696 = sub_1B039BA94;
  v697 = sub_1B0398F5C;
  v698 = sub_1B0398F5C;
  v699 = sub_1B0399178;
  v700 = sub_1B0398F5C;
  v701 = sub_1B0398F5C;
  v702 = sub_1B03991EC;
  v703 = sub_1B0398F5C;
  v704 = sub_1B0398F5C;
  v705 = sub_1B03993BC;
  v706 = sub_1B0398F5C;
  v707 = sub_1B0398F5C;
  v708 = sub_1B039BCEC;
  v709 = sub_1B0398F5C;
  v710 = sub_1B0398F5C;
  v711 = sub_1B0399260;
  v712 = sub_1B0398F5C;
  v713 = sub_1B0398F5C;
  v714 = sub_1B0399260;
  v715 = sub_1B0398F5C;
  v716 = sub_1B0398F5C;
  v717 = sub_1B039BCEC;
  v718 = sub_1B074E050;
  v719 = sub_1B0394C24;
  v720 = sub_1B074DFFC;
  v721 = sub_1B039BA88;
  v722 = sub_1B0394C24;
  v723 = sub_1B039BBA0;
  v724 = sub_1B039BC08;
  v725 = sub_1B06BA324;
  v726 = sub_1B074E0E4;
  v727 = sub_1B039BCF8;
  v728 = sub_1B07F12A4;
  v729 = sub_1B03B0DF8;
  v730 = sub_1B07F1308;
  v731 = sub_1B03B0DF8;
  v732 = sub_1B0398F5C;
  v733 = sub_1B0398F5C;
  v734 = sub_1B0399178;
  v735 = sub_1B0398F5C;
  v736 = sub_1B0398F5C;
  v737 = sub_1B039BA94;
  v738 = sub_1B0398F5C;
  v739 = sub_1B0398F5C;
  v740 = sub_1B0399178;
  v741 = sub_1B0398F5C;
  v742 = sub_1B0398F5C;
  v743 = sub_1B03991EC;
  v744 = sub_1B0398F5C;
  v745 = sub_1B0398F5C;
  v746 = sub_1B03993BC;
  v747 = sub_1B0398F5C;
  v748 = sub_1B0398F5C;
  v749 = sub_1B039BCEC;
  v750 = sub_1B0398F5C;
  v751 = sub_1B0398F5C;
  v752 = sub_1B0399260;
  v753 = sub_1B0398F5C;
  v754 = sub_1B0398F5C;
  v755 = sub_1B0399260;
  v807 = 0;
  v808 = 0;
  v806 = 0;
  v805 = 0;
  v756 = 0;
  v757 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v758 = (*(*(v757 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v757);
  v759 = v345 - v758;
  v765 = 0;
  v760 = *(type metadata accessor for MissingBodyDataRequest() - 8);
  v761 = v760;
  v762 = *(v760 + 64);
  v763 = (v762 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v765);
  v764 = v345 - v763;
  v766 = _s6LoggerVMa_1();
  v767 = (*(*(v766 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v765);
  v768 = v345 - v767;
  v769 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v770 = v345 - v769;
  v771 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v772 = v345 - v771;
  v773 = sub_1B0E439A8();
  v774 = *(v773 - 8);
  v775 = v773 - 8;
  v776 = (*(v774 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v773);
  v777 = v345 - v776;
  v778 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v345 - v776);
  v779 = v345 - v778;
  v780 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v345 - v778);
  v781 = v345 - v780;
  v787 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v786 = (*(*(v787 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v785);
  v788 = v345 - v786;
  v807 = v10;
  v808 = v11;
  v806 = v12;
  v805 = v9;
  sub_1B03D08AC(v9, v345 - v786);
  v789 = MessageIdentifierSet.isEmpty.getter();
  sub_1B03D09B8(v788);
  if (v789)
  {
    (*(v774 + 16))(v781, v784, v773);
    sub_1B074B69C(v784, v772);
    sub_1B074B69C(v772, v770);
    sub_1B074E41C(v772, v768);
    v13 = (v770 + *(v766 + 20));
    v560 = *v13;
    v561 = *(v13 + 1);
    v562 = *(v13 + 1);
    v563 = *(v13 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v770);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v559 = 36;
    v583 = 7;
    v14 = swift_allocObject();
    v15 = v561;
    v16 = v562;
    v17 = v563;
    v568 = v14;
    *(v14 + 16) = v560;
    *(v14 + 20) = v15;
    *(v14 + 24) = v16;
    *(v14 + 32) = v17;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = swift_allocObject();
    v19 = v561;
    v20 = v562;
    v21 = v563;
    v558 = v18;
    *(v18 + 16) = v560;
    *(v18 + 20) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v21;

    v582 = 32;
    v22 = swift_allocObject();
    v23 = v558;
    v573 = v22;
    *(v22 + 16) = v718;
    *(v22 + 24) = v23;
    sub_1B0394868();
    sub_1B0394868();

    v24 = swift_allocObject();
    v25 = v561;
    v26 = v562;
    v27 = v563;
    v28 = v24;
    v29 = v768;
    v576 = v28;
    *(v28 + 16) = v560;
    *(v28 + 20) = v25;
    *(v28 + 24) = v26;
    *(v28 + 32) = v27;
    sub_1B074B764(v29);
    sub_1B07F1114(v785, v764);
    v565 = *(v761 + 80);
    v564 = (v565 + 16) & ~v565;
    v578 = swift_allocObject();
    sub_1B07F11DC(v764, v578 + v564);
    sub_1B07F1114(v785, v764);
    v566 = (v565 + 16) & ~v565;
    v584 = swift_allocObject();
    sub_1B07F11DC(v764, v584 + v566);
    v614 = sub_1B0E43988();
    v615 = sub_1B0E45908();
    v580 = 17;
    v587 = swift_allocObject();
    v570 = 16;
    *(v587 + 16) = 16;
    v588 = swift_allocObject();
    v572 = 4;
    *(v588 + 16) = 4;
    v30 = swift_allocObject();
    v567 = v30;
    *(v30 + 16) = v619;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v567;
    v589 = v31;
    *(v31 + 16) = v719;
    *(v31 + 24) = v32;
    v590 = swift_allocObject();
    *(v590 + 16) = 0;
    v591 = swift_allocObject();
    *(v591 + 16) = 1;
    v33 = swift_allocObject();
    v34 = v568;
    v569 = v33;
    *(v33 + 16) = v720;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v569;
    v592 = v35;
    *(v35 + 16) = v721;
    *(v35 + 24) = v36;
    v593 = swift_allocObject();
    *(v593 + 16) = v570;
    v594 = swift_allocObject();
    *(v594 + 16) = v572;
    v37 = swift_allocObject();
    v571 = v37;
    *(v37 + 16) = v623;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    v39 = v571;
    v595 = v38;
    *(v38 + 16) = v722;
    *(v38 + 24) = v39;
    v596 = swift_allocObject();
    *(v596 + 16) = 0;
    v597 = swift_allocObject();
    *(v597 + 16) = v572;
    v40 = swift_allocObject();
    v41 = v573;
    v574 = v40;
    *(v40 + 16) = v723;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v574;
    v598 = v42;
    *(v42 + 16) = v724;
    *(v42 + 24) = v43;
    v599 = swift_allocObject();
    *(v599 + 16) = 112;
    v600 = swift_allocObject();
    v581 = 8;
    *(v600 + 16) = 8;
    v586 = 24;
    v575 = swift_allocObject();
    *(v575 + 16) = v627;
    v44 = swift_allocObject();
    v45 = v575;
    v601 = v44;
    *(v44 + 16) = v725;
    *(v44 + 24) = v45;
    v602 = swift_allocObject();
    *(v602 + 16) = 37;
    v603 = swift_allocObject();
    *(v603 + 16) = v581;
    v46 = swift_allocObject();
    v47 = v576;
    v577 = v46;
    *(v46 + 16) = v726;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v577;
    v604 = v48;
    *(v48 + 16) = v727;
    *(v48 + 24) = v49;
    v605 = swift_allocObject();
    *(v605 + 16) = 0;
    v606 = swift_allocObject();
    *(v606 + 16) = v581;
    v50 = swift_allocObject();
    v51 = v578;
    v579 = v50;
    *(v50 + 16) = v728;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v579;
    v607 = v52;
    *(v52 + 16) = v729;
    *(v52 + 24) = v53;
    v608 = swift_allocObject();
    *(v608 + 16) = 0;
    v609 = swift_allocObject();
    *(v609 + 16) = v581;
    v54 = swift_allocObject();
    v55 = v584;
    v585 = v54;
    *(v54 + 16) = v730;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v585;
    v611 = v56;
    *(v56 + 16) = v731;
    *(v56 + 24) = v57;
    v613 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v610 = sub_1B0E46A48();
    v612 = v58;

    v59 = v587;
    v60 = v612;
    *v612 = v732;
    v60[1] = v59;

    v61 = v588;
    v62 = v612;
    v612[2] = v733;
    v62[3] = v61;

    v63 = v589;
    v64 = v612;
    v612[4] = v734;
    v64[5] = v63;

    v65 = v590;
    v66 = v612;
    v612[6] = v735;
    v66[7] = v65;

    v67 = v591;
    v68 = v612;
    v612[8] = v736;
    v68[9] = v67;

    v69 = v592;
    v70 = v612;
    v612[10] = v737;
    v70[11] = v69;

    v71 = v593;
    v72 = v612;
    v612[12] = v738;
    v72[13] = v71;

    v73 = v594;
    v74 = v612;
    v612[14] = v739;
    v74[15] = v73;

    v75 = v595;
    v76 = v612;
    v612[16] = v740;
    v76[17] = v75;

    v77 = v596;
    v78 = v612;
    v612[18] = v741;
    v78[19] = v77;

    v79 = v597;
    v80 = v612;
    v612[20] = v742;
    v80[21] = v79;

    v81 = v598;
    v82 = v612;
    v612[22] = v743;
    v82[23] = v81;

    v83 = v599;
    v84 = v612;
    v612[24] = v744;
    v84[25] = v83;

    v85 = v600;
    v86 = v612;
    v612[26] = v745;
    v86[27] = v85;

    v87 = v601;
    v88 = v612;
    v612[28] = v746;
    v88[29] = v87;

    v89 = v602;
    v90 = v612;
    v612[30] = v747;
    v90[31] = v89;

    v91 = v603;
    v92 = v612;
    v612[32] = v748;
    v92[33] = v91;

    v93 = v604;
    v94 = v612;
    v612[34] = v749;
    v94[35] = v93;

    v95 = v605;
    v96 = v612;
    v612[36] = v750;
    v96[37] = v95;

    v97 = v606;
    v98 = v612;
    v612[38] = v751;
    v98[39] = v97;

    v99 = v607;
    v100 = v612;
    v612[40] = v752;
    v100[41] = v99;

    v101 = v608;
    v102 = v612;
    v612[42] = v753;
    v102[43] = v101;

    v103 = v609;
    v104 = v612;
    v612[44] = v754;
    v104[45] = v103;

    v105 = v611;
    v106 = v612;
    v612[46] = v755;
    v106[47] = v105;
    sub_1B0394964();

    if (os_log_type_enabled(v614, v615))
    {
      v107 = v756;
      v551 = sub_1B0E45D78();
      v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v552 = sub_1B03949A8(0);
      v553 = sub_1B03949A8(1);
      v554 = &v794;
      v794 = v551;
      v555 = &v793;
      v793 = v552;
      v556 = &v792;
      v792 = v553;
      sub_1B0394A48(3, &v794);
      sub_1B0394A48(8, v554);
      v790 = v732;
      v791 = v587;
      sub_1B03949FC(&v790, v554, v555, v556);
      v557 = v107;
      if (v107)
      {

        __break(1u);
      }

      else
      {
        v790 = v733;
        v791 = v588;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v549 = 0;
        v790 = v734;
        v791 = v589;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v548 = 0;
        v790 = v735;
        v791 = v590;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v547 = 0;
        v790 = v736;
        v791 = v591;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v546 = 0;
        v790 = v737;
        v791 = v592;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v545 = 0;
        v790 = v738;
        v791 = v593;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v544 = 0;
        v790 = v739;
        v791 = v594;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v543 = 0;
        v790 = v740;
        v791 = v595;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v542 = 0;
        v790 = v741;
        v791 = v596;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v541 = 0;
        v790 = v742;
        v791 = v597;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v540 = 0;
        v790 = v743;
        v791 = v598;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v539 = 0;
        v790 = v744;
        v791 = v599;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v538 = 0;
        v790 = v745;
        v791 = v600;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v537 = 0;
        v790 = v746;
        v791 = v601;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v536 = 0;
        v790 = v747;
        v791 = v602;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v535 = 0;
        v790 = v748;
        v791 = v603;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v534 = 0;
        v790 = v749;
        v791 = v604;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v533 = 0;
        v790 = v750;
        v791 = v605;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v532 = 0;
        v790 = v751;
        v791 = v606;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v531 = 0;
        v790 = v752;
        v791 = v607;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v530 = 0;
        v790 = v753;
        v791 = v608;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v529 = 0;
        v790 = v754;
        v791 = v609;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        v528 = 0;
        v790 = v755;
        v791 = v611;
        sub_1B03949FC(&v790, &v794, &v793, &v792);
        _os_log_impl(&dword_1B0389000, v614, v615, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for %ld fragmented messages (in latest %ld).", v551, 0x3Fu);
        sub_1B03998A8(v552);
        sub_1B03998A8(v553);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v614);
    return (*(v774 + 8))(v781, v773);
  }

  else
  {
    sub_1B03D08AC(v785, v788);
    MessageIdentifierSet.ranges.getter(v759);
    sub_1B03D09B8(v788);
    sub_1B07D76A4();
    v527 = sub_1B0E45718();
    sub_1B07D772C(v759);
    if (v527 >= 30)
    {
      (*(v774 + 16))(v777, v784, v773);
      sub_1B074B69C(v784, v772);
      sub_1B074B69C(v772, v770);
      sub_1B074E41C(v772, v768);
      v216 = (v770 + *(v766 + 20));
      v355 = *v216;
      v356 = *(v216 + 1);
      v357 = *(v216 + 1);
      v358 = *(v216 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v770);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v354 = 36;
      v389 = 7;
      v217 = swift_allocObject();
      v218 = v356;
      v219 = v357;
      v220 = v358;
      v368 = v217;
      *(v217 + 16) = v355;
      *(v217 + 20) = v218;
      *(v217 + 24) = v219;
      *(v217 + 32) = v220;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v221 = swift_allocObject();
      v222 = v356;
      v223 = v357;
      v224 = v358;
      v353 = v221;
      *(v221 + 16) = v355;
      *(v221 + 20) = v222;
      *(v221 + 24) = v223;
      *(v221 + 32) = v224;

      v388 = 32;
      v225 = swift_allocObject();
      v226 = v353;
      v372 = v225;
      *(v225 + 16) = v616;
      *(v225 + 24) = v226;
      sub_1B0394868();
      sub_1B0394868();

      v227 = swift_allocObject();
      v228 = v356;
      v229 = v357;
      v230 = v358;
      v231 = v227;
      v232 = v768;
      v375 = v231;
      *(v231 + 16) = v355;
      *(v231 + 20) = v228;
      *(v231 + 24) = v229;
      *(v231 + 32) = v230;
      sub_1B074B764(v232);
      sub_1B07F1114(v785, v764);
      v364 = *(v761 + 80);
      v359 = (v364 + 16) & ~v364;
      v377 = swift_allocObject();
      sub_1B07F11DC(v764, v377 + v359);
      sub_1B07F1114(v785, v764);
      v360 = (v364 + 16) & ~v364;
      v379 = swift_allocObject();
      sub_1B07F11DC(v764, v379 + v360);
      sub_1B07F1114(v785, v764);
      v361 = (v364 + 16) & ~v364;
      v382 = swift_allocObject();
      sub_1B07F11DC(v764, v382 + v361);
      sub_1B07F1114(v785, v764);
      v362 = (v364 + 16) & ~v364;
      v363 = swift_allocObject();
      sub_1B07F11DC(v764, v363 + v362);

      v233 = swift_allocObject();
      v234 = v363;
      v384 = v233;
      *(v233 + 16) = v617;
      *(v233 + 24) = v234;

      sub_1B07F1114(v785, v764);
      v365 = (v364 + 16) & ~v364;
      v366 = swift_allocObject();
      sub_1B07F11DC(v764, v366 + v365);

      v235 = swift_allocObject();
      v236 = v366;
      v390 = v235;
      *(v235 + 16) = v618;
      *(v235 + 24) = v236;

      v428 = sub_1B0E43988();
      v429 = sub_1B0E45908();
      v386 = 17;
      v392 = swift_allocObject();
      v370 = 16;
      *(v392 + 16) = 16;
      v393 = swift_allocObject();
      v387 = 4;
      *(v393 + 16) = 4;
      v237 = swift_allocObject();
      v367 = v237;
      *(v237 + 16) = v619;
      *(v237 + 24) = 0;
      v238 = swift_allocObject();
      v239 = v367;
      v394 = v238;
      *(v238 + 16) = v620;
      *(v238 + 24) = v239;
      v395 = swift_allocObject();
      *(v395 + 16) = 0;
      v396 = swift_allocObject();
      *(v396 + 16) = 1;
      v240 = swift_allocObject();
      v241 = v368;
      v369 = v240;
      *(v240 + 16) = v621;
      *(v240 + 24) = v241;
      v242 = swift_allocObject();
      v243 = v369;
      v397 = v242;
      *(v242 + 16) = v622;
      *(v242 + 24) = v243;
      v398 = swift_allocObject();
      *(v398 + 16) = v370;
      v399 = swift_allocObject();
      *(v399 + 16) = v387;
      v244 = swift_allocObject();
      v371 = v244;
      *(v244 + 16) = v623;
      *(v244 + 24) = 0;
      v245 = swift_allocObject();
      v246 = v371;
      v400 = v245;
      *(v245 + 16) = v624;
      *(v245 + 24) = v246;
      v401 = swift_allocObject();
      *(v401 + 16) = 0;
      v402 = swift_allocObject();
      *(v402 + 16) = v387;
      v247 = swift_allocObject();
      v248 = v372;
      v373 = v247;
      *(v247 + 16) = v625;
      *(v247 + 24) = v248;
      v249 = swift_allocObject();
      v250 = v373;
      v403 = v249;
      *(v249 + 16) = v626;
      *(v249 + 24) = v250;
      v404 = swift_allocObject();
      *(v404 + 16) = 112;
      v405 = swift_allocObject();
      v381 = 8;
      *(v405 + 16) = 8;
      v374 = swift_allocObject();
      *(v374 + 16) = v627;
      v251 = swift_allocObject();
      v252 = v374;
      v406 = v251;
      *(v251 + 16) = v628;
      *(v251 + 24) = v252;
      v407 = swift_allocObject();
      *(v407 + 16) = 37;
      v408 = swift_allocObject();
      *(v408 + 16) = v381;
      v253 = swift_allocObject();
      v254 = v375;
      v376 = v253;
      *(v253 + 16) = v629;
      *(v253 + 24) = v254;
      v255 = swift_allocObject();
      v256 = v376;
      v409 = v255;
      *(v255 + 16) = v630;
      *(v255 + 24) = v256;
      v410 = swift_allocObject();
      *(v410 + 16) = 0;
      v411 = swift_allocObject();
      *(v411 + 16) = v381;
      v257 = swift_allocObject();
      v258 = v377;
      v378 = v257;
      *(v257 + 16) = v631;
      *(v257 + 24) = v258;
      v259 = swift_allocObject();
      v260 = v378;
      v412 = v259;
      *(v259 + 16) = v632;
      *(v259 + 24) = v260;
      v413 = swift_allocObject();
      *(v413 + 16) = 0;
      v414 = swift_allocObject();
      *(v414 + 16) = v381;
      v261 = swift_allocObject();
      v262 = v379;
      v380 = v261;
      *(v261 + 16) = v633;
      *(v261 + 24) = v262;
      v263 = swift_allocObject();
      v264 = v380;
      v415 = v263;
      *(v263 + 16) = v634;
      *(v263 + 24) = v264;
      v416 = swift_allocObject();
      *(v416 + 16) = 0;
      v417 = swift_allocObject();
      *(v417 + 16) = v381;
      v265 = swift_allocObject();
      v266 = v382;
      v383 = v265;
      *(v265 + 16) = v635;
      *(v265 + 24) = v266;
      v267 = swift_allocObject();
      v268 = v383;
      v418 = v267;
      *(v267 + 16) = v636;
      *(v267 + 24) = v268;
      v419 = swift_allocObject();
      *(v419 + 16) = 0;
      v420 = swift_allocObject();
      *(v420 + 16) = v387;
      v269 = swift_allocObject();
      v270 = v384;
      v385 = v269;
      *(v269 + 16) = v637;
      *(v269 + 24) = v270;
      v271 = swift_allocObject();
      v272 = v385;
      v421 = v271;
      *(v271 + 16) = v638;
      *(v271 + 24) = v272;
      v422 = swift_allocObject();
      *(v422 + 16) = 0;
      v423 = swift_allocObject();
      *(v423 + 16) = v387;
      v273 = swift_allocObject();
      v274 = v390;
      v391 = v273;
      *(v273 + 16) = v639;
      *(v273 + 24) = v274;
      v275 = swift_allocObject();
      v276 = v391;
      v425 = v275;
      *(v275 + 16) = v640;
      *(v275 + 24) = v276;
      v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v424 = sub_1B0E46A48();
      v426 = v277;

      v278 = v392;
      v279 = v426;
      *v426 = v641;
      v279[1] = v278;

      v280 = v393;
      v281 = v426;
      v426[2] = v642;
      v281[3] = v280;

      v282 = v394;
      v283 = v426;
      v426[4] = v643;
      v283[5] = v282;

      v284 = v395;
      v285 = v426;
      v426[6] = v644;
      v285[7] = v284;

      v286 = v396;
      v287 = v426;
      v426[8] = v645;
      v287[9] = v286;

      v288 = v397;
      v289 = v426;
      v426[10] = v646;
      v289[11] = v288;

      v290 = v398;
      v291 = v426;
      v426[12] = v647;
      v291[13] = v290;

      v292 = v399;
      v293 = v426;
      v426[14] = v648;
      v293[15] = v292;

      v294 = v400;
      v295 = v426;
      v426[16] = v649;
      v295[17] = v294;

      v296 = v401;
      v297 = v426;
      v426[18] = v650;
      v297[19] = v296;

      v298 = v402;
      v299 = v426;
      v426[20] = v651;
      v299[21] = v298;

      v300 = v403;
      v301 = v426;
      v426[22] = v652;
      v301[23] = v300;

      v302 = v404;
      v303 = v426;
      v426[24] = v653;
      v303[25] = v302;

      v304 = v405;
      v305 = v426;
      v426[26] = v654;
      v305[27] = v304;

      v306 = v406;
      v307 = v426;
      v426[28] = v655;
      v307[29] = v306;

      v308 = v407;
      v309 = v426;
      v426[30] = v656;
      v309[31] = v308;

      v310 = v408;
      v311 = v426;
      v426[32] = v657;
      v311[33] = v310;

      v312 = v409;
      v313 = v426;
      v426[34] = v658;
      v313[35] = v312;

      v314 = v410;
      v315 = v426;
      v426[36] = v659;
      v315[37] = v314;

      v316 = v411;
      v317 = v426;
      v426[38] = v660;
      v317[39] = v316;

      v318 = v412;
      v319 = v426;
      v426[40] = v661;
      v319[41] = v318;

      v320 = v413;
      v321 = v426;
      v426[42] = v662;
      v321[43] = v320;

      v322 = v414;
      v323 = v426;
      v426[44] = v663;
      v323[45] = v322;

      v324 = v415;
      v325 = v426;
      v426[46] = v664;
      v325[47] = v324;

      v326 = v416;
      v327 = v426;
      v426[48] = v665;
      v327[49] = v326;

      v328 = v417;
      v329 = v426;
      v426[50] = v666;
      v329[51] = v328;

      v330 = v418;
      v331 = v426;
      v426[52] = v667;
      v331[53] = v330;

      v332 = v419;
      v333 = v426;
      v426[54] = v668;
      v333[55] = v332;

      v334 = v420;
      v335 = v426;
      v426[56] = v669;
      v335[57] = v334;

      v336 = v421;
      v337 = v426;
      v426[58] = v670;
      v337[59] = v336;

      v338 = v422;
      v339 = v426;
      v426[60] = v671;
      v339[61] = v338;

      v340 = v423;
      v341 = v426;
      v426[62] = v672;
      v341[63] = v340;

      v342 = v425;
      v343 = v426;
      v426[64] = v673;
      v343[65] = v342;
      sub_1B0394964();

      if (os_log_type_enabled(v428, v429))
      {
        v344 = v756;
        v346 = sub_1B0E45D78();
        v345[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v347 = sub_1B03949A8(0);
        v348 = sub_1B03949A8(1);
        v349 = &v804;
        v804 = v346;
        v350 = &v803;
        v803 = v347;
        v351 = &v802;
        v802 = v348;
        sub_1B0394A48(3, &v804);
        sub_1B0394A48(11, v349);
        v800 = v641;
        v801 = v392;
        sub_1B03949FC(&v800, v349, v350, v351);
        v352 = v344;
        if (v344)
        {

          __break(1u);
        }

        else
        {
          v800 = v642;
          v801 = v393;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[31] = 0;
          v800 = v643;
          v801 = v394;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[30] = 0;
          v800 = v644;
          v801 = v395;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[29] = 0;
          v800 = v645;
          v801 = v396;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[28] = 0;
          v800 = v646;
          v801 = v397;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[27] = 0;
          v800 = v647;
          v801 = v398;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[26] = 0;
          v800 = v648;
          v801 = v399;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[25] = 0;
          v800 = v649;
          v801 = v400;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[24] = 0;
          v800 = v650;
          v801 = v401;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[23] = 0;
          v800 = v651;
          v801 = v402;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[22] = 0;
          v800 = v652;
          v801 = v403;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[21] = 0;
          v800 = v653;
          v801 = v404;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[20] = 0;
          v800 = v654;
          v801 = v405;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[19] = 0;
          v800 = v655;
          v801 = v406;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[18] = 0;
          v800 = v656;
          v801 = v407;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[17] = 0;
          v800 = v657;
          v801 = v408;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[16] = 0;
          v800 = v658;
          v801 = v409;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[15] = 0;
          v800 = v659;
          v801 = v410;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[14] = 0;
          v800 = v660;
          v801 = v411;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[13] = 0;
          v800 = v661;
          v801 = v412;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[12] = 0;
          v800 = v662;
          v801 = v413;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[11] = 0;
          v800 = v663;
          v801 = v414;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[10] = 0;
          v800 = v664;
          v801 = v415;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[9] = 0;
          v800 = v665;
          v801 = v416;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[8] = 0;
          v800 = v666;
          v801 = v417;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[7] = 0;
          v800 = v667;
          v801 = v418;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[6] = 0;
          v800 = v668;
          v801 = v419;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[5] = 0;
          v800 = v669;
          v801 = v420;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[4] = 0;
          v800 = v670;
          v801 = v421;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[3] = 0;
          v800 = v671;
          v801 = v422;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[2] = 0;
          v800 = v672;
          v801 = v423;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          v345[1] = 0;
          v800 = v673;
          v801 = v425;
          sub_1B03949FC(&v800, &v804, &v803, &v802);
          _os_log_impl(&dword_1B0389000, v428, v429, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for %ld fragmented messages (in latest %ld). Excluding %ld UIDs (min %u, max %u", v346, 0x55u);
          sub_1B03998A8(v347);
          sub_1B03998A8(v348);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v428);
      return (*(v774 + 8))(v777, v773);
    }

    else
    {
      (*(v774 + 16))(v779, v784, v773);
      sub_1B074B69C(v784, v772);
      sub_1B074B69C(v772, v770);
      sub_1B074E41C(v772, v768);
      v109 = (v770 + *(v766 + 20));
      v465 = *v109;
      v466 = *(v109 + 1);
      v467 = *(v109 + 1);
      v468 = *(v109 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v770);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v464 = 36;
      v492 = 7;
      v110 = swift_allocObject();
      v111 = v466;
      v112 = v467;
      v113 = v468;
      v475 = v110;
      *(v110 + 16) = v465;
      *(v110 + 20) = v111;
      *(v110 + 24) = v112;
      *(v110 + 32) = v113;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v114 = swift_allocObject();
      v115 = v466;
      v116 = v467;
      v117 = v468;
      v463 = v114;
      *(v114 + 16) = v465;
      *(v114 + 20) = v115;
      *(v114 + 24) = v116;
      *(v114 + 32) = v117;

      v491 = 32;
      v118 = swift_allocObject();
      v119 = v463;
      v480 = v118;
      *(v118 + 16) = v674;
      *(v118 + 24) = v119;
      sub_1B0394868();
      sub_1B0394868();

      v120 = swift_allocObject();
      v121 = v466;
      v122 = v467;
      v123 = v468;
      v124 = v120;
      v125 = v768;
      v483 = v124;
      *(v124 + 16) = v465;
      *(v124 + 20) = v121;
      *(v124 + 24) = v122;
      *(v124 + 32) = v123;
      sub_1B074B764(v125);
      sub_1B07F1114(v785, v764);
      v471 = *(v761 + 80);
      v469 = (v471 + 16) & ~v471;
      v485 = swift_allocObject();
      sub_1B07F11DC(v764, v485 + v469);
      sub_1B07F1114(v785, v764);
      v470 = (v471 + 16) & ~v471;
      v487 = swift_allocObject();
      sub_1B07F11DC(v764, v487 + v470);
      sub_1B07F1114(v785, v764);
      v472 = (v471 + 16) & ~v471;
      v473 = swift_allocObject();
      sub_1B07F11DC(v764, v473 + v472);

      v126 = swift_allocObject();
      v127 = v473;
      v493 = v126;
      *(v126 + 16) = v675;
      *(v126 + 24) = v127;

      v525 = sub_1B0E43988();
      v526 = sub_1B0E45908();
      v489 = 17;
      v495 = swift_allocObject();
      v477 = 16;
      *(v495 + 16) = 16;
      v496 = swift_allocObject();
      v479 = 4;
      *(v496 + 16) = 4;
      v128 = swift_allocObject();
      v474 = v128;
      *(v128 + 16) = v619;
      *(v128 + 24) = 0;
      v129 = swift_allocObject();
      v130 = v474;
      v497 = v129;
      *(v129 + 16) = v676;
      *(v129 + 24) = v130;
      v498 = swift_allocObject();
      *(v498 + 16) = 0;
      v499 = swift_allocObject();
      *(v499 + 16) = 1;
      v131 = swift_allocObject();
      v132 = v475;
      v476 = v131;
      *(v131 + 16) = v677;
      *(v131 + 24) = v132;
      v133 = swift_allocObject();
      v134 = v476;
      v500 = v133;
      *(v133 + 16) = v678;
      *(v133 + 24) = v134;
      v501 = swift_allocObject();
      *(v501 + 16) = v477;
      v502 = swift_allocObject();
      *(v502 + 16) = v479;
      v135 = swift_allocObject();
      v478 = v135;
      *(v135 + 16) = v623;
      *(v135 + 24) = 0;
      v136 = swift_allocObject();
      v137 = v478;
      v503 = v136;
      *(v136 + 16) = v679;
      *(v136 + 24) = v137;
      v504 = swift_allocObject();
      *(v504 + 16) = 0;
      v505 = swift_allocObject();
      *(v505 + 16) = v479;
      v138 = swift_allocObject();
      v139 = v480;
      v481 = v138;
      *(v138 + 16) = v680;
      *(v138 + 24) = v139;
      v140 = swift_allocObject();
      v141 = v481;
      v506 = v140;
      *(v140 + 16) = v681;
      *(v140 + 24) = v141;
      v507 = swift_allocObject();
      *(v507 + 16) = 112;
      v508 = swift_allocObject();
      v490 = 8;
      *(v508 + 16) = 8;
      v482 = swift_allocObject();
      *(v482 + 16) = v627;
      v142 = swift_allocObject();
      v143 = v482;
      v509 = v142;
      *(v142 + 16) = v682;
      *(v142 + 24) = v143;
      v510 = swift_allocObject();
      *(v510 + 16) = 37;
      v511 = swift_allocObject();
      *(v511 + 16) = v490;
      v144 = swift_allocObject();
      v145 = v483;
      v484 = v144;
      *(v144 + 16) = v683;
      *(v144 + 24) = v145;
      v146 = swift_allocObject();
      v147 = v484;
      v512 = v146;
      *(v146 + 16) = v684;
      *(v146 + 24) = v147;
      v513 = swift_allocObject();
      *(v513 + 16) = 0;
      v514 = swift_allocObject();
      *(v514 + 16) = v490;
      v148 = swift_allocObject();
      v149 = v485;
      v486 = v148;
      *(v148 + 16) = v685;
      *(v148 + 24) = v149;
      v150 = swift_allocObject();
      v151 = v486;
      v515 = v150;
      *(v150 + 16) = v686;
      *(v150 + 24) = v151;
      v516 = swift_allocObject();
      *(v516 + 16) = 0;
      v517 = swift_allocObject();
      *(v517 + 16) = v490;
      v152 = swift_allocObject();
      v153 = v487;
      v488 = v152;
      *(v152 + 16) = v687;
      *(v152 + 24) = v153;
      v154 = swift_allocObject();
      v155 = v488;
      v518 = v154;
      *(v154 + 16) = v688;
      *(v154 + 24) = v155;
      v519 = swift_allocObject();
      *(v519 + 16) = 34;
      v520 = swift_allocObject();
      *(v520 + 16) = v490;
      v156 = swift_allocObject();
      v157 = v493;
      v494 = v156;
      *(v156 + 16) = v689;
      *(v156 + 24) = v157;
      v158 = swift_allocObject();
      v159 = v494;
      v522 = v158;
      *(v158 + 16) = v690;
      *(v158 + 24) = v159;
      v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v521 = sub_1B0E46A48();
      v523 = v160;

      v161 = v495;
      v162 = v523;
      *v523 = v691;
      v162[1] = v161;

      v163 = v496;
      v164 = v523;
      v523[2] = v692;
      v164[3] = v163;

      v165 = v497;
      v166 = v523;
      v523[4] = v693;
      v166[5] = v165;

      v167 = v498;
      v168 = v523;
      v523[6] = v694;
      v168[7] = v167;

      v169 = v499;
      v170 = v523;
      v523[8] = v695;
      v170[9] = v169;

      v171 = v500;
      v172 = v523;
      v523[10] = v696;
      v172[11] = v171;

      v173 = v501;
      v174 = v523;
      v523[12] = v697;
      v174[13] = v173;

      v175 = v502;
      v176 = v523;
      v523[14] = v698;
      v176[15] = v175;

      v177 = v503;
      v178 = v523;
      v523[16] = v699;
      v178[17] = v177;

      v179 = v504;
      v180 = v523;
      v523[18] = v700;
      v180[19] = v179;

      v181 = v505;
      v182 = v523;
      v523[20] = v701;
      v182[21] = v181;

      v183 = v506;
      v184 = v523;
      v523[22] = v702;
      v184[23] = v183;

      v185 = v507;
      v186 = v523;
      v523[24] = v703;
      v186[25] = v185;

      v187 = v508;
      v188 = v523;
      v523[26] = v704;
      v188[27] = v187;

      v189 = v509;
      v190 = v523;
      v523[28] = v705;
      v190[29] = v189;

      v191 = v510;
      v192 = v523;
      v523[30] = v706;
      v192[31] = v191;

      v193 = v511;
      v194 = v523;
      v523[32] = v707;
      v194[33] = v193;

      v195 = v512;
      v196 = v523;
      v523[34] = v708;
      v196[35] = v195;

      v197 = v513;
      v198 = v523;
      v523[36] = v709;
      v198[37] = v197;

      v199 = v514;
      v200 = v523;
      v523[38] = v710;
      v200[39] = v199;

      v201 = v515;
      v202 = v523;
      v523[40] = v711;
      v202[41] = v201;

      v203 = v516;
      v204 = v523;
      v523[42] = v712;
      v204[43] = v203;

      v205 = v517;
      v206 = v523;
      v523[44] = v713;
      v206[45] = v205;

      v207 = v518;
      v208 = v523;
      v523[46] = v714;
      v208[47] = v207;

      v209 = v519;
      v210 = v523;
      v523[48] = v715;
      v210[49] = v209;

      v211 = v520;
      v212 = v523;
      v523[50] = v716;
      v212[51] = v211;

      v213 = v522;
      v214 = v523;
      v523[52] = v717;
      v214[53] = v213;
      sub_1B0394964();

      if (os_log_type_enabled(v525, v526))
      {
        v215 = v756;
        v456 = sub_1B0E45D78();
        v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v457 = sub_1B03949A8(0);
        v458 = sub_1B03949A8(2);
        v459 = &v799;
        v799 = v456;
        v460 = &v798;
        v798 = v457;
        v461 = &v797;
        v797 = v458;
        sub_1B0394A48(3, &v799);
        sub_1B0394A48(9, v459);
        v795 = v691;
        v796 = v495;
        sub_1B03949FC(&v795, v459, v460, v461);
        v462 = v215;
        if (v215)
        {

          __break(1u);
        }

        else
        {
          v795 = v692;
          v796 = v496;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v454 = 0;
          v795 = v693;
          v796 = v497;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v453 = 0;
          v795 = v694;
          v796 = v498;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v452 = 0;
          v795 = v695;
          v796 = v499;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v451 = 0;
          v795 = v696;
          v796 = v500;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v450 = 0;
          v795 = v697;
          v796 = v501;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v449 = 0;
          v795 = v698;
          v796 = v502;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v448 = 0;
          v795 = v699;
          v796 = v503;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v447 = 0;
          v795 = v700;
          v796 = v504;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v446 = 0;
          v795 = v701;
          v796 = v505;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v445 = 0;
          v795 = v702;
          v796 = v506;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v444 = 0;
          v795 = v703;
          v796 = v507;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v443 = 0;
          v795 = v704;
          v796 = v508;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v442 = 0;
          v795 = v705;
          v796 = v509;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v441 = 0;
          v795 = v706;
          v796 = v510;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v440 = 0;
          v795 = v707;
          v796 = v511;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v439 = 0;
          v795 = v708;
          v796 = v512;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v438 = 0;
          v795 = v709;
          v796 = v513;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v437 = 0;
          v795 = v710;
          v796 = v514;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v436 = 0;
          v795 = v711;
          v796 = v515;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v435 = 0;
          v795 = v712;
          v796 = v516;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v434 = 0;
          v795 = v713;
          v796 = v517;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v433 = 0;
          v795 = v714;
          v796 = v518;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v432 = 0;
          v795 = v715;
          v796 = v519;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v431 = 0;
          v795 = v716;
          v796 = v520;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v430 = 0;
          v795 = v717;
          v796 = v522;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          _os_log_impl(&dword_1B0389000, v525, v526, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for %ld fragmented messages (in latest %ld). Excluding UIDs %{public}s", v456, 0x49u);
          sub_1B03998A8(v457);
          sub_1B03998A8(v458);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v525);
      return (*(v774 + 8))(v779, v773);
    }
  }
}