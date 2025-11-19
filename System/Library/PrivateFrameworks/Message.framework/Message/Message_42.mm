uint64_t sub_1B0A2100C(void (*a1)(void))
{

  sub_1B0E46A48();
  a1();
}

void *sub_1B0A21094(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[1] = v4;
  a2[2] = a1[2];
  return result;
}

unint64_t sub_1B0A210EC()
{
  v2 = qword_1EB6E3870;
  if (!qword_1EB6E3870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3868, &qword_1B0EA2E90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A2119C()
{
  v2 = qword_1EB6E3888;
  if (!qword_1EB6E3888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3878, &qword_1B0EA2E98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A21224()
{
  v2 = qword_1EB6E3898;
  if (!qword_1EB6E3898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3890, &qword_1B0EA2EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3898);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A212AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a3);

  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B0A21DE0;
  *(v5 + 24) = v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38B0, &qword_1B0EA2ED0);
  sub_1B0E452E8();
  return swift_endAccess();
}

uint64_t sub_1B0A21444(uint64_t a1)
{
  v56 = a1;
  v55 = sub_1B0A21EEC;
  v78 = 0;
  v77 = 0;
  v73 = 0;
  v71[0] = 0;
  v71[1] = 0;
  v64 = 0u;
  v65 = 0u;
  v61 = sub_1B0E44468();
  v59 = *(v61 - 8);
  v60 = v61 - 8;
  v57 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v62 = (&v14 - v57);
  v78 = MEMORY[0x1EEE9AC00](v56);
  v77 = v1;

  v58 = *(v1 + 48);
  MEMORY[0x1E69E5928](v58);
  v2 = v59;
  *v62 = v58;
  v3 = *MEMORY[0x1E69E8020];
  (*(v2 + 104))();
  v63 = sub_1B0E44488();
  (*(v59 + 8))(v62, v61);
  result = v63;
  if (v63)
  {

    v45 = v54[7];
    v42 = v54[8];
    MEMORY[0x1E69E5928](v45);
    ObjectType = swift_getObjectType();
    v43 = (*(v42 + 8))(ObjectType);
    v44 = &v76;
    v48 = 33;
    v49 = 0;
    swift_beginAccess();
    v6 = v54[2];
    v54[2] = v43;

    swift_endAccess();
    MEMORY[0x1E69E5920](v45);
    v46 = &v75;
    swift_beginAccess();
    v7 = v54;
    v54[3] = v56;
    *(v7 + 32) = 0;
    swift_endAccess();
    v47 = &v74;
    swift_beginAccess();
    v52 = v54[5];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v73 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3860, &unk_1B0EA2E80);
    v50 = sub_1B0E46A48();
    v51 = &v72;
    swift_beginAccess();
    v8 = v54[5];
    v54[5] = v50;

    swift_endAccess();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v70 = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38B0, &qword_1B0EA2ED0);
    sub_1B0A21E28();
    sub_1B0E45798();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38B8, &qword_1B0EA2ED8);
      sub_1B0E46518();
      v38 = v66;
      v39 = v67;
      v40 = v68;
      v41 = v69;
      if (v67)
      {
        v34 = v38;
        v35 = v39;
        v36 = v40;
        v37 = v41;
        v27 = v41;
        v26 = v40;
        v29 = v39;
        v28 = v38;
        v9 = swift_allocObject();
        v10 = v27;
        v11 = v28;
        v12 = v29;
        v13 = v55;
        *(v9 + 16) = v26;
        *(v9 + 24) = v10;
        v30 = v11;
        v31 = v12;
        v32 = v13;
        v33 = v9;
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
      }

      v22 = v33;
      v23 = v32;
      v24 = v31;
      v25 = v30;
      if (!v31)
      {
        break;
      }

      *&v20 = v25;
      *(&v20 + 1) = v24;
      *&v21 = v23;
      *(&v21 + 1) = v22;
      v19 = v22;
      v16 = v23;
      v18 = v24;
      v15 = v25;
      v64 = v20;
      v65 = v21;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v17 = sub_1B039ED78(v15, v18);
      v16();
    }

    sub_1B039E440(v71);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A21B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v16 = a3;
  v17 = a4;
  v18 = sub_1B039C8F0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v20 = 0;
  v24 = sub_1B0E44238();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v14 - v14;
  v28 = sub_1B0E44288();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v15 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v17);
  v27 = &v14 - v15;
  v40 = v6;
  v39 = a2;
  v37 = v7;
  v38 = v5;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = swift_allocObject();
  v9 = v17;
  v10 = v18;
  v11 = v8;
  v12 = v19;
  v11[2] = v16;
  v11[3] = v9;
  v11[4] = v12;
  v35 = v10;
  v36 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = 0;
  v33 = sub_1B038C908;
  v34 = &block_descriptor_32;
  v29 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v20, v27, v23, v29);
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);
}

unint64_t sub_1B0A21E28()
{
  v2 = qword_1EB6DB050;
  if (!qword_1EB6DB050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E38B0, &qword_1B0EA2ED0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB050);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A21EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v10 = a1[1];
  v6 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = MEMORY[0x1B2726DE0](v7, v10, a2, a3);

  result = v11;
  if (v11)
  {
    *a4 = v6;
    *(a4 + 8) = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 1;
  }

  return result;
}

uint64_t sub_1B0A220EC()
{
  v2 = 0;
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

uint64_t sub_1B0A22140(int a1)
{
  v14 = a1;
  v13 = v1;
  v10 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  sub_1B07F193C();
  sub_1B0A222E8();
  v11 = sub_1B0E450A8();
  sub_1B039E440(&v12);
  if (v11)
  {
    v4 = 1;
    return v4 & 1;
  }

  v7 = *v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B0E452A8();

  if (v8 <= 20)
  {
LABEL_8:
    sub_1B0E452E8();
    v4 = 0;
    return v4 & 1;
  }

  v5 = *v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E452A8();

  result = v6;
  if (!__OFSUB__(v6, 20))
  {
    sub_1B0A22360();
    sub_1B0E457D8();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0A222E8()
{
  v2 = qword_1EB6DE1D8;
  if (!qword_1EB6DE1D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A22360()
{
  v2 = qword_1EB6DB540;
  if (!qword_1EB6DB540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2610, &unk_1B0E9C610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB540);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A223E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  sub_1B0A225B0();
  sub_1B0A22360();
  return sub_1B0E45898();
}

uint64_t sub_1B0A22508(int *a1)
{
  v2 = *a1;
  sub_1B0714E4C();
  return sub_1B0E45ED8() & 1;
}

unint64_t sub_1B0A225B0()
{
  v2 = qword_1EB6DB550;
  if (!qword_1EB6DB550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2610, &unk_1B0E9C610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A22638()
{
  v2 = qword_1EB6E38C8;
  if (!qword_1EB6E38C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E38C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A226F4()
{
  v2 = qword_1EB6E38D0;
  if (!qword_1EB6E38D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E38D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A22770(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  v13 = 0;
  v11 = sub_1B039BF24(*a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = v11;
  v13 = v10;
  sub_1B039E440(&v12);
  return v11;
}

uint64_t sub_1B0A22800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v6 = a1;
  result = MailboxRowID.init(_:)(a1, &v4);
  if (v5)
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  else
  {
    *a2 = v4;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t MailboxRowID.hashValue.getter()
{
  v2 = *v0;
  sub_1B0417568();
  return sub_1B0E46198();
}

uint64_t sub_1B0A22A20()
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v2 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = v2;
  LODWORD(v4) = SyncRequest.ID.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38F8, &unk_1B0EA3190);
  sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B8BD8();
  v1 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v1;
  sub_1B06E38F8(&v3);
  return v2;
}

uint64_t sub_1B0A22B00()
{
  v11 = 0;
  v10[0] = 0;
  v10[1] = 0;
  memset(__b, 0, sizeof(__b));
  v12 = v0;
  v5 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = v5;
  sub_1B041AF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  sub_1B0E45338();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9[10] = v5;
  sub_1B0A22D58();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38F0, &qword_1B0EA3188);
    sub_1B0E46518();
    memcpy(__dst, v7, sizeof(__dst));
    memcpy(v9, __dst, 0x50uLL);
    if (!v9[8])
    {
      break;
    }

    v3 = v9[0];
    v4 = v9[6];
    v2 = v9[8];
    LODWORD(__b[0]) = v9[0];
    LOBYTE(__b[1]) = v9[1];
    __b[2] = v9[2];
    LOWORD(__b[3]) = v9[3];
    __b[4] = v9[4];
    LOBYTE(__b[5]) = v9[5];
    __b[6] = v9[6];
    __b[7] = v9[7];
    __b[8] = v9[8];
    __b[9] = v9[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38F8, &unk_1B0EA3190);
    sub_1B0E46A48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03B8BD8();
    sub_1B0E445D8();
    v2(v3);

    sub_1B041589C(v4);
  }

  sub_1B039E440(v10);
}

unint64_t sub_1B0A22D58()
{
  v2 = qword_1EB6DB278;
  if (!qword_1EB6DB278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E38E0, &qword_1B0EA3180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB278);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A22DE0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9[1] = a1;
  v9[2] = a2;
  v9[3] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9[0] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  v3 = sub_1B0A22D58();
  v5 = sub_1B039CA88(sub_1B0A24154, 0, v7, &type metadata for SyncRequest.ID, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v8);
  sub_1B039E440(v9);
  return v5;
}

uint64_t sub_1B0A22EC8()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  sub_1B0A22D58();
  v1 = sub_1B0E45748();

  return v1 & 1;
}

uint64_t (*sub_1B0A22F5C(unsigned int a1))()
{
  v53 = &v74;
  v57 = a1;
  v85 = 0;
  v84 = 0;
  v75 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0u;
  v69 = 0u;
  v66 = 0;
  v65 = 0;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = v27 - v55;
  v85 = MEMORY[0x1EEE9AC00](v57);
  v84 = v1;
  v58 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v82[0] = v58;
  v62 = v57;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  v59 = v60;
  sub_1B0A22D58();
  sub_1B0E456F8();
  v61 = 0;
  sub_1B039E440(v82);
  v52 = v82[1];
  if (v83)
  {
    v28 = 0;
    v29 = 0;
    v30 = v61;
    return v28;
  }

  v51 = v52;
  v2 = v61;
  v41 = v52;
  v75 = v52;
  v3 = *v54;
  sub_1B0E453A8();
  v87 = *(v53 + 5);
  v4 = *(v53 + 6);
  v5 = *(v53 + 7);
  v6 = *(v53 + 8);
  v91 = *(v53 + 9);
  v90 = v6;
  v89 = v5;
  v88 = v4;
  v76 = *(v53 + 5);
  v7 = *(v53 + 6);
  v8 = *(v53 + 7);
  v9 = *(v53 + 8);
  v80 = *(v53 + 9);
  v79 = v9;
  v78 = v8;
  v77 = v7;
  sub_1B0E45308();
  v81[0] = *v53;
  v10 = *(v53 + 1);
  v11 = *(v53 + 2);
  v12 = *(v53 + 3);
  v81[4] = *(v53 + 4);
  v81[3] = v12;
  v81[2] = v11;
  v81[1] = v10;
  sub_1B0A241A0(v81);
  v46 = v54[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = &v87;
  sub_1B0A24204(&v87, &v73);
  v43 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v45 = &v27[-4];
  v27[-2] = v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v44 = v47;
  v48 = sub_1B03B8BD8();
  v14 = sub_1B0E44688();
  v49 = v2;
  v50 = v14;
  if (!v2)
  {
    v38 = v50;
    sub_1B0A241A0(&v87);
    v72 = v38;
    v39 = &type metadata for OpaqueMailboxID;
    v15 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726710](v86, v15, v39, v44, v48);
    v16 = *(v53 + 24);
    v17 = *(v53 + 25);
    v71 = v86[4];
    v70 = v17;
    v69 = v16;
    for (i = v49; ; i = v32)
    {
      v35 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3928, &qword_1B0EA31B0);
      sub_1B0E44608();
      v36 = v67;
      v37 = v68;
      if (!v67)
      {
        break;
      }

      v33 = v36;
      v34 = v37;
      v31 = v36;
      v32 = v35;
      v65 = v36;
      v66 = v37;
      v63 = v36;
      v64 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3800, &qword_1B0EA2E08);
      sub_1B0E445B8();
      sub_1B074EB58(v56);
    }

    sub_1B06B91B0(&v69);
    v18 = swift_allocObject();
    v19 = v57;
    v20 = v38;
    v21 = v18;
    v22 = v35;
    v27[1] = v21;
    *(v21 + 16) = v87;
    v23 = v88;
    v24 = v89;
    v25 = v90;
    *(v21 + 80) = v91;
    *(v21 + 64) = v25;
    *(v21 + 48) = v24;
    *(v21 + 32) = v23;
    *(v21 + 96) = v19;
    *(v21 + 104) = v20;
    v28 = sub_1B0A24328;
    v29 = v21;
    v30 = v22;
    return v28;
  }

  result = sub_1B0A241A0(&v87);
  __break(1u);
  return result;
}

uint64_t sub_1B0A234C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v24 = a2;
  v25 = a3;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v13 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v14 = v12 - v13;
  v15 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12 - v13);
  v31 = v12 - v15;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v28 = *(v30 - 8);
  v29 = v30 - 8;
  v20 = *(v28 + 64);
  v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v24);
  v18 = v12 - v17;
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v21 = v12 - v19;
  v39 = v12 - v19;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v23 = v12 - v22;
  v38 = v12 - v22;
  v37 = v9;
  v35 = v8;
  v36 = v10;
  v34 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = *(v3 + 16);
  v27 = v33;
  v33[0] = v24;
  v33[1] = v25;
  sub_1B03B8BD8();
  sub_1B0E44778();
  sub_1B039E440(v27);
  if ((*(v28 + 48))(v31, 1, v30) == 1)
  {
    sub_1B074EB58(v31);
    sub_1B03D08AC(v16, v18);
    sub_1B074BA2C(v18, v23);
  }

  else
  {
    sub_1B074BA2C(v31, v21);
    MessageIdentifierSet.union(_:)(v21, v18);
    sub_1B074BA2C(v18, v23);
    sub_1B03D09B8(v21);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03D08AC(v23, v14);
  (*(v28 + 56))(v14, 0, 1, v30);
  v12[1] = v32;
  v32[0] = v24;
  v32[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3800, &qword_1B0EA2E08);
  sub_1B0E44788();
  return sub_1B03D09B8(v23);
}

uint64_t sub_1B0A23848()
{
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A23890(char a1, uint64_t a2, char a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = *(v3 + 16);
  *(v3 + 8) = a1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
}

uint64_t sub_1B0A238FC()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_1B0A24364(v2);
  return v2;
}

uint64_t sub_1B0A23934(uint64_t a1, uint64_t a2)
{
  sub_1B0A24364(a1);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  sub_1B041589C(v3);
  return sub_1B041589C(a1);
}

uint64_t sub_1B0A23984()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return v2;
}

uint64_t sub_1B0A239BC(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1B0A23B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v11 = a2;
  v15 = a3;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3830, &qword_1B0EA2E20);
  v10 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v9 - v10;
  v22 = &v9 - v10;
  v12 = *v3;
  v13 = v3[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = v11;
  v5 = v13;
  v6 = v14;
  v7 = v19;
  *v19 = v12;
  *(v7 + 1) = v5;
  sub_1B03D08AC(v4, &v7[*(v6 + 48)]);
  v21 = v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = SyncRequest.includes(_:)(*v19, *(v19 + 1), v16, v18);

  sub_1B0A24E88(v19);
  return v20 & 1;
}

uint64_t sub_1B0A23C78(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);

  v6(a2, a3);
}

uint64_t sub_1B0A23CF4(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858);
  v9 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v6 - v9;
  v21 = type metadata accessor for Activity.MailboxStatus(0);
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v12 = *(v18 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v6 - v11;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v6 - v11);
  v15 = &v6 - v14;
  v25 = &v6 - v14;
  v16 = *v4;
  v17 = v4[1];
  v23 = v16;
  v24 = v17;
  v22 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  Activity.subscript.getter(v16, v17, v20);
  if ((*(v18 + 48))(v20, 1, v21) != 1)
  {
    sub_1B0415DC0(v20, v15);

    sub_1B0416014(v15, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B06BB840(v13);
      }

      else if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_6;
      }

      sub_1B0416B60(v15);
      v8 = 0;
      return v8 & 1;
    }

LABEL_6:
    sub_1B0416B60(v15);
    v8 = 1;
    return v8 & 1;
  }

  sub_1B0415C08(v20);

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1B0A23FC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if ((*(result + 25) & 1) != 0 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), , result = static SyncRequest.Kind.__derived_enum_equals(_:_:)(v4, 4u), (result & 1) == 0))
  {
    *a2 = 0;
    *(a2 + 4) = 1;
  }

  else
  {
    *a2 = v3;
    *(a2 + 4) = 0;
  }

  return result;
}

BOOL sub_1B0A24078(int *a1, int *a2)
{
  v4 = *a1;
  v3 = *a2;
  return static MonotonicTime.> infix(_:_:)(*(a1 + 1), *(a2 + 1));
}

uint64_t sub_1B0A240D4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  return result;
}

void *sub_1B0A241A0(void *a1)
{
  v1 = a1[2];

  if (a1[6])
  {
    v2 = a1[6];
    swift_unknownObjectRelease();
    v3 = a1[7];
    swift_unknownObjectRelease();
  }

  v4 = a1[9];

  return a1;
}

uint64_t sub_1B0A24204(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v8 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v8;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 25) = *(a1 + 25);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
    swift_unknownObjectRetain();
    *(a2 + 48) = v5;
    v6 = *(a1 + 56);
    swift_unknownObjectRetain();
    *(a2 + 56) = v6;
  }

  else
  {
    *(a2 + 48) = *(a1 + 48);
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 72);

  result = a2;
  *(a2 + 64) = v3;
  *(a2 + 72) = v4;
  return result;
}

uint64_t sub_1B0A24364(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_1B0A243A4()
{
  v2 = qword_1EB6E3948;
  if (!qword_1EB6E3948)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A24420()
{
  v2 = qword_1EB6E3950;
  if (!qword_1EB6E3950)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A244D0(uint64_t a1)
{
  swift_unknownObjectRetain();
  v2 = *v1;
  *v1 = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

unint64_t sub_1B0A24570()
{
  v2 = qword_1EB6E3988;
  if (!qword_1EB6E3988)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A2479C()
{
  v2 = qword_1EB6E3990;
  if (!qword_1EB6E3990)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3990);
    return WitnessTable;
  }

  return v2;
}

void *__swift_memcpy14_8(void *result, void *a2)
{
  *result = *a2;
  *(result + 6) = *(a2 + 6);
  return result;
}

uint64_t sub_1B0A248DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 14))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
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

void *sub_1B0A24A24(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 14;
  if (a2 < 0)
  {
    result = 0;
    *(v3 + 6) = 0;
    *(v3 + 2) = 0;
    *v3 = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1B0A24C50()
{
  v2 = qword_1EB6E3998;
  if (!qword_1EB6E3998)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A24CE4()
{
  v2 = qword_1EB6E39A0;
  if (!qword_1EB6E39A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E39A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A24D78()
{
  v2 = qword_1EB6E39A8;
  if (!qword_1EB6E39A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E39A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A24E0C()
{
  v2 = qword_1EB6E39B0;
  if (!qword_1EB6E39B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E39B0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0A24E88(char *a1)
{
  v1 = *a1;

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3830, &qword_1B0EA2E20) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(&a1[v4]);
  return a1;
}

uint64_t sub_1B0A24F1C@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a3;
  v142 = a1;
  v159 = a2;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v179 = 0;
  v177 = 0;
  v178 = 0;
  v174 = 0;
  v175 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v162 = 0;
  v163 = 0;
  v161 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C8, &qword_1B0EA35E8);
  v114 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v115 = v35 - v114;
  v135 = 0;
  v116 = (*(*(sub_1B0E43438() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v117 = v35 - v116;
  v118 = sub_1B0E43498();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v122 = v35 - v121;
  v123 = sub_1B0E433B8();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v126 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v135);
  v127 = v35 - v126;
  v128 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v129 = v35 - v128;
  v188 = v35 - v128;
  v157 = sub_1B0E43108();
  v153 = *(v157 - 8);
  v154 = v157 - 8;
  v130 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v135);
  v131 = v35 - v130;
  v132 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v156 = v35 - v132;
  v133 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v155 = v35 - v133;
  v187 = v35 - v133;
  v134 = (*(*(type metadata accessor for IndexableMessageInfo(v10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v152 = v35 - v134;
  v136 = sub_1B0E433E8();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v135);
  v140 = v35 - v139;
  v141 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v151 = v35 - v141;
  v186 = v35 - v141;
  v143 = sub_1B0E43428();
  v144 = *(v143 - 8);
  v145 = v143 - 8;
  v147 = *(v144 + 64);
  v146 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v142);
  v148 = v35 - v146;
  v149 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v150 = v35 - v149;
  v185 = v35 - v149;
  v184 = v14;
  v183 = v15;
  sub_1B08A9C20(v14, v16);
  sub_1B0A268AC(v152, v151);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v158 = [v159 dateReceived];
  sub_1B0E430D8();
  (*(v153 + 32))(v155, v156, v157);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v158);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v160 = [v159 headersDictionary];
  if (v160)
  {
    v112 = v160;
    v109 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    v110 = sub_1B0E445A8();
    MEMORY[0x1E69E5920](v109);
    v111 = v110;
  }

  else
  {
    v111 = 0;
  }

  v108 = v111;
  swift_unknownObjectRelease();
  if (v108)
  {
    v107 = v108;
    v104 = v108;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39D0, &qword_1B0EA35F0);
    v105 = sub_1B0E465D8();

    v106 = v105;
  }

  else
  {
    v106 = 0;
  }

  v101 = v106;
  v182 = v106;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v102 = [v159 isPartOfExistingThread];
  v181 = v102 & 1;
  v17 = swift_unknownObjectRelease();
  v180[0] = MEMORY[0x1B27254E0](v17);
  v180[1] = v18;
  v100 = (v18 & 0xF000000000000000) != 0xF000000000000000;
  v98 = v100;
  sub_1B043C03C(v180);
  v179 = v98;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v99 = [v159 account];
  swift_unknownObjectRelease();
  if (v99)
  {
    v97 = v99;
    v91 = v99;
    swift_getObjectType();
    v92 = [v91 identifier];
    v93 = sub_1B0E44AD8();
    v94 = v19;
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v92);
    v95 = v93;
    v96 = v94;
  }

  else
  {
    v95 = 0;
    v96 = 0;
  }

  v88 = v96;
  v89 = v95;
  v177 = v95;
  v178 = v96;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v90 = [v159 account];
  swift_unknownObjectRelease();
  if (v90)
  {
    v87 = v90;
    v84 = v90;
    swift_getObjectType();
    v85 = [v84 isManaged];
    swift_unknownObjectRelease();
    v86 = v85;
  }

  else
  {
    v86 = 2;
  }

  v176 = v86;
  if (v86 == 2)
  {
    v83 = 0;
  }

  else
  {
    v83 = v176;
  }

  if (v83)
  {
    (*(v124 + 104))(v129, *MEMORY[0x1E699B378], v123);
  }

  else
  {
    (*(v124 + 104))(v129, *MEMORY[0x1E699B380], v123);
  }

  v81 = [objc_opt_self() csAccountTypeString];
  v174 = sub_1B0E44AD8();
  v175 = v20;
  MEMORY[0x1E69E5920](v81);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v82 = [v159 account];
  if (v82)
  {
    v80 = v82;
    v79 = v82;
    v161 = v82;
    swift_unknownObjectRelease();
    swift_getObjectType();
    v78 = [swift_getObjCClassFromMetadata() csAccountTypeString];
    v174 = sub_1B0E44AD8();
    v175 = v21;

    MEMORY[0x1E69E5920](v78);
  }

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v77 = [v159 account];
  swift_unknownObjectRelease();
  if (v77)
  {
    v76 = v77;
    v72 = v77;
    swift_getObjectType();
    v73 = [v72 emailAddressStrings];
    v74 = sub_1B0E451B8();
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v73);
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  v172 = v75;
  if (v75)
  {
    v173 = v172;
  }

  else
  {
    v173 = sub_1B0E46A48();
    if (v172)
    {
      sub_1B039E440(&v172);
    }
  }

  v22 = v122;
  v66 = v173;
  v171 = v173;
  v67 = objc_opt_self();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v68 = [v67 searchableMessageUpdateForBaseMessage_];
  swift_unknownObjectRelease();
  v170 = v68;
  sub_1B0A271F0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v70 = [ObjCClassFromMetadata searchableMessageAttachmentsForBaseMessage:v159 includeEncryptedBody:0];
  swift_unknownObjectRelease();
  v169 = v70;
  (*(v119 + 104))(v22, *MEMORY[0x1E69ADB08], v118);
  v71 = sub_1B0E43478();
  (*(v119 + 8))(v122, v118);
  if (v71)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v61 = [v159 notificationID];
    v62 = sub_1B0E44AD8();
    v63 = v23;
    swift_unknownObjectRelease();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v167 = v62;
    v168 = v63;
    MEMORY[0x1E69E5920](v61);
    v64 = v62;
    v65 = v63;
  }

  else
  {
    v167 = 0;
    v168 = 0;
    v64 = 0;
    v65 = 0;
  }

  v46 = v65;
  v47 = v64;
  v51 = 0;
  v24 = sub_1B0E46A28();
  v54 = &v165;
  v165 = v24;
  v166 = v25;
  v50 = "";
  v52 = 1;
  v26 = sub_1B0E44838();
  v48 = v27;
  MEMORY[0x1B2728B30](v26);

  swift_getObjectType();
  swift_unknownObjectRetain();
  v49 = [v159 globalMessageID];
  swift_unknownObjectRelease();
  v164 = v49;
  sub_1B0E469F8();
  v28 = sub_1B0E44838();
  v53 = v29;
  MEMORY[0x1B2728B30](v28);

  v56 = v165;
  v55 = v166;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v54);
  v57 = sub_1B0E44C88();
  v58 = v30;
  v162 = v57;
  v163 = v30;
  (*(v137 + 16))(v140, v151, v136);
  (*(v153 + 16))(v131, v155, v157);
  (*(v124 + 16))(v127, v129, v123);
  v59 = v174;
  v60 = v175;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E45C88();
  MEMORY[0x1E69E5928](v70);
  if (v70)
  {
    v45 = v70;
    v44 = v70;
    sub_1B0E45C98();
    MEMORY[0x1E69E5920](v44);
    v32 = sub_1B0E43468();
    (*(*(v32 - 8) + 56))(v115, 0, 1);
  }

  else
  {
    v31 = sub_1B0E43468();
    (*(*(v31 - 8) + 56))(v115, 1);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v42 = [v159 category];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v43 = [v159 summary];
  if (v43)
  {
    v41 = v43;
    v36 = v43;
    v37 = sub_1B0E44AD8();
    v38 = v33;
    MEMORY[0x1E69E5920](v36);
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v35[2] = v40;
  v35[1] = v39;
  swift_unknownObjectRelease();
  sub_1B0E433F8();
  (*(v144 + 32))(v150, v148, v143);

  sub_1B03B1198(&v167);
  MEMORY[0x1E69E5920](v70);
  MEMORY[0x1E69E5920](v68);
  sub_1B03B1198(&v174);
  (*(v124 + 8))(v129, v123);
  (*(v153 + 8))(v155, v157);
  (*(v137 + 8))(v151, v136);
  (*(v144 + 16))(v113, v150, v143);
  swift_unknownObjectRelease();
  sub_1B08AA168(v142);
  return (*(v144 + 8))(v150, v143);
}

uint64_t sub_1B0A268AC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v88 = a1;
  v63 = sub_1B0A27254;
  v64 = sub_1B0A27398;
  v65 = sub_1B0A27398;
  v66 = sub_1B0A27398;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v118 = 0;
  v119 = 0;
  v67 = 0;
  v102 = 0;
  v99 = 0;
  v97 = 0;
  v95 = 0;
  v93 = 0;
  v94 = 0;
  memset(v92, 0, sizeof(v92));
  v79 = 0;
  v68 = sub_1B0E433A8();
  v69 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v70 = v21 - v69;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39D8, &qword_1B0EA35F8);
  v71 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v72 = v21 - v71;
  v73 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21 - v71);
  v74 = v21 - v73;
  v127 = v21 - v73;
  v75 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v79);
  v76 = v21 - v75;
  v77 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v78 = v21 - v77;
  v126 = v21 - v77;
  v80 = sub_1B0E433E8();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v84 = *(v81 + 64);
  v83 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v79);
  v85 = v21 - v83;
  v86 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v87 = v21 - v86;
  v125 = v21 - v86;
  v124 = v8;
  v89 = type metadata accessor for IndexableMessageInfo(v7);
  v9 = &v88[v89[9]];
  v90 = *v9;
  v91 = *(v9 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v120 = v90;
  v121 = v91;
  if (v91)
  {
    v122 = v120;
    v123 = v121;
  }

  else
  {
    v122 = sub_1B0E44838();
    v123 = v10;
    if (v121)
    {
      sub_1B03B1198(&v120);
    }
  }

  v11 = v67;
  v57 = v122;
  v58 = v123;
  v118 = v122;
  v119 = v123;
  sub_1B06BC2F4(&v88[v89[6]], v78);
  v12 = &v88[v89[11]];
  v13 = *v12;
  LOBYTE(v12) = v12[1];
  v116 = v13;
  v117 = v12 & 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39E0, &qword_1B0EA3600);
  v14 = sub_1B0E43418();
  result = sub_1B039A570(v63, 0, v59, MEMORY[0x1E69E73E0], v14, v60, v74);
  v61 = v11;
  if (v11)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    __break(1u);
    __break(1u);
    return result;
  }

  v102 = sub_1B0E46A48();
  v16 = &v88[v89[7]];
  v55 = v103;
  v56 = 96;
  memcpy(v103, v16, sizeof(v103));
  sub_1B0A27294(v103, v101);
  memcpy(&__dst, v55, v56);
  if (v107)
  {
    v49 = __dst;
    v51 = v105;
    v50 = v106;
    v52 = v107;
    v53 = v111;
    v54 = v115;
    v92[0] = __dst;
    v92[1] = v105;
    v92[2] = v106;
    v92[3] = v107;
    v92[4] = v108;
    v92[5] = v109;
    v92[6] = v110;
    v92[7] = v111;
    v92[8] = v112;
    v92[9] = v113;
    v92[10] = v114;
    v92[11] = v115;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E43398();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E39F0, &unk_1B0EA3610);
    sub_1B0E452E8();
  }

  v17 = v61;
  v44 = *&v88[v89[10]];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v100 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39E8, &qword_1B0EA3608);
  v46 = sub_1B0A27410();
  result = sub_1B039CA88(v64, 0, v45, v68, MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v60);
  v47 = v17;
  v48 = result;
  if (v17)
  {
    goto LABEL_16;
  }

  v40 = v48;
  sub_1B039E440(&v100);
  v99 = v40;
  v41 = *(v88 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v98 = v41;
  v18 = sub_1B039CA88(v65, 0, v45, v68, MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v60);
  v42 = 0;
  v43 = v18;
  v37 = v18;
  sub_1B039E440(&v98);
  v97 = v37;
  v38 = *v88;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v96 = v38;
  v39 = sub_1B039CA88(v66, 0, v45, v68, MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v60);
  v33 = v39;
  sub_1B039E440(&v96);
  v95 = v33;
  v19 = &v88[v89[15]];
  v34 = *v19;
  v35 = *(v19 + 1);
  v36 = v19[16];
  sub_1B08AA33C(v34, v35, v36);
  if (v36 == 255)
  {
    v28 = 0;
    v29 = 0xF000000000000000;
  }

  else
  {
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v23 = v36;
    v25 = v35;
    v24 = v34;
    v26 = IndexableMessageInfo.Content.data.getter();
    v27 = v20;
    sub_1B08A9938();
    v28 = v26;
    v29 = v27;
  }

  v21[2] = v29;
  v21[1] = v28;
  v93 = v28;
  v94 = v29;
  sub_1B06BC2F4(v78, v76);
  sub_1B0A27498(v74, v72);
  v22 = &v102;
  v21[3] = v102;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E433D8();
  (*(v81 + 32))(v87, v85, v80);
  sub_1B039E440(v22);
  sub_1B0A275C0(v74);
  sub_1B06B97A8(v78);
  (*(v81 + 16))(v62, v87, v80);
  sub_1B08AA168(v88);
  return (*(v81 + 8))(v87, v80);
}

unint64_t sub_1B0A271F0()
{
  v2 = qword_1EB6DA850;
  if (!qword_1EB6DA850)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA850);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1B0A27294(void *a1, void *a2)
{
  if (a1[3])
  {
    *a2 = *a1;
    v3 = a1[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[1] = v3;
    a2[2] = a1[2];
    v4 = a1[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[3] = v4;
    a2[4] = a1[4];
    a2[5] = a1[5];
    a2[6] = a1[6];
    v5 = a1[7];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[7] = v5;
    a2[8] = a1[8];
    a2[9] = a1[9];
    a2[10] = a1[10];
    v6 = a1[11];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[11] = v6;
  }

  else
  {
    memcpy(a2, a1, 0x60uLL);
  }

  return a2;
}

uint64_t sub_1B0A27398(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return sub_1B0E43398();
}

unint64_t sub_1B0A27410()
{
  v2 = qword_1EB6DB0A8;
  if (!qword_1EB6DB0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E39E8, &qword_1B0EA3608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0A8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0A27498(const void *a1, void *a2)
{
  v6 = sub_1B0E43418();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39D8, &qword_1B0EA35F8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B0A275C0(uint64_t a1)
{
  v3 = sub_1B0E43418();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B0A27668@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A2C36C();
  v1 = sub_1B0E439A8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A27778(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v11 = sub_1B0A28920(a1, a2, a3, a4);
  if (v9)
  {
    return v5;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_1B0A2781C()
{
  v73 = 0;
  v48 = sub_1B0A2C624;
  v49 = sub_1B0A2C62C;
  v50 = sub_1B039BC08;
  v51 = sub_1B0398F5C;
  v52 = sub_1B0398F5C;
  v53 = sub_1B03991EC;
  v54 = sub_1B0A2C618;
  v55 = *v0;
  v91 = 0;
  v90 = 0;
  v56 = 0;
  v62 = 0;
  v57 = sub_1B0E44238();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v61 = &v20 - v60;
  v63 = sub_1B0E44288();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v62);
  v67 = &v20 - v66;
  v68 = sub_1B0E439A8();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v20 - v71;
  v91 = v0;
  static IndexRequest.ID.makeNext()();
  v74 = v1;
  v90 = v1;
  v75 = &v89;
  swift_beginAccess();
  v76 = sub_1B0A3A058(v74);
  swift_endAccess();
  if (v76)
  {
    v22 = *(v47 + 16);
    MEMORY[0x1E69E5928](v22);

    v17 = swift_allocObject();
    v18 = v74;
    v19 = v54;
    *(v17 + 16) = v47;
    *(v17 + 24) = v18;
    v87 = v19;
    v88 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v83 = 1107296256;
    v84 = 0;
    v85 = sub_1B038C908;
    v86 = &block_descriptor_19;
    v21 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v67, v61, v21);
    (*(v58 + 8))(v61, v57);
    (*(v64 + 8))(v67, v63);
    _Block_release(v21);

    return MEMORY[0x1E69E5920](v22);
  }

  else
  {
    sub_1B0A27668(v72);

    v35 = 32;
    v36 = 7;
    v2 = swift_allocObject();
    v3 = v47;
    v37 = v2;
    *(v2 + 16) = v48;
    *(v2 + 24) = v3;

    v45 = sub_1B0E43988();
    v46 = sub_1B0E458E8();
    v34 = 17;
    v39 = swift_allocObject();
    *(v39 + 16) = 2;
    v40 = swift_allocObject();
    *(v40 + 16) = 4;
    v4 = swift_allocObject();
    v5 = v37;
    v38 = v4;
    *(v4 + 16) = v49;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v38;
    v42 = v6;
    *(v6 + 16) = v50;
    *(v6 + 24) = v7;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v41 = sub_1B0E46A48();
    v43 = v8;

    v9 = v39;
    v10 = v43;
    *v43 = v51;
    v10[1] = v9;

    v11 = v40;
    v12 = v43;
    v43[2] = v52;
    v12[3] = v11;

    v13 = v42;
    v14 = v43;
    v43[4] = v53;
    v14[5] = v13;
    sub_1B0394964();

    if (os_log_type_enabled(v45, v46))
    {
      v15 = v56;
      v27 = sub_1B0E45D78();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v26 = 0;
      v28 = sub_1B03949A8(0);
      v29 = sub_1B03949A8(v26);
      v30 = &v81;
      v81 = v27;
      v31 = &v80;
      v80 = v28;
      v32 = &v79;
      v79 = v29;
      sub_1B0394A48(0, &v81);
      sub_1B0394A48(1, v30);
      v77 = v51;
      v78 = v39;
      sub_1B03949FC(&v77, v30, v31, v32);
      v33 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v77 = v52;
        v78 = v40;
        sub_1B03949FC(&v77, &v81, &v80, &v79);
        v24 = 0;
        v77 = v53;
        v78 = v42;
        sub_1B03949FC(&v77, &v81, &v80, &v79);
        _os_log_impl(&dword_1B0389000, v45, v46, "[%{public}u] Download & index already running.", v27, 8u);
        v23 = 0;
        sub_1B03998A8(v28);
        sub_1B03998A8(v29);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v45);
    return (*(v69 + 8))(v72, v68);
  }
}

uint64_t sub_1B0A28634()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v0 + 40);
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B0A28698(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B0A28714()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_1B0A28740()
{
  swift_beginAccess();
  v2 = *(v0 + 88);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B0A2878C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
  return swift_endAccess();
}

uint64_t sub_1B0A287D8()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B0A28824(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
  return swift_endAccess();
}

uint64_t sub_1B0A28870()
{
  swift_beginAccess();
  v2 = *(v0 + 104);

  swift_endAccess();
  return v2;
}

uint64_t sub_1B0A288C0(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;

  swift_endAccess();
}

uint64_t sub_1B0A28920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = a1;
  v85 = a2;
  v84 = a3;
  v99 = a4;
  v90 = 0;
  v106 = sub_1B0A397CC;
  v104 = sub_1B0A397D8;
  v72 = sub_1B0A397E0;
  v73 = sub_1B0A3984C;
  v74 = *v4;
  v131 = 0;
  v129 = 0;
  v130 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v98 = 0;
  v75 = sub_1B0E44208();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v79 = (v43 - v78);
  v80 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v81 = (v43 - v80);
  v82 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98);
  v96 = v43 - v82;
  v83 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98);
  v95 = v43 - v83;
  v86 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98);
  v94 = v43 - v86;
  v131 = v7;
  v129 = v8;
  v130 = v9;
  v128 = v10;
  v127 = v4;
  v89 = sub_1B06CCC58();
  v91 = 1;
  v87 = sub_1B0E44838();
  v88 = v11;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v96);
  v12 = sub_1B0E45A08();
  v13 = v97;
  *(v97 + 16) = v12;
  *(v13 + 40) = 0;
  swift_unknownObjectWeakInit();
  v14 = sub_1B0A39FEC();
  v15 = v97;
  *(v97 + 72) = v14;
  v15[11] = 0;
  v15[12] = 0;
  v15[13] = 0;
  v92 = sub_1B0E44838();
  v93 = v16;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v96);
  v17 = sub_1B0E45A08();
  v18 = v97;
  v100 = v17;
  v126 = v17;
  swift_unknownObjectRetain();
  *(v18 + 24) = v99;
  type metadata accessor for SyncSession();
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](v100);
  v101 = 7;
  v19 = swift_allocObject();
  v20 = v100;
  v21 = v19;
  v22 = v102;
  v103 = v21;
  *(v21 + 16) = v99;
  *(v21 + 24) = v20;
  MEMORY[0x1E69E5928](v22);
  v23 = swift_allocObject();
  v24 = v103;
  v25 = v104;
  v26 = v105;
  v27 = v23;
  v28 = v106;
  *(v27 + 16) = v102;
  v29 = SyncSession.__allocating_init(generateCredentials:updateIndexingStatistics:)(v28, v24, v25, v27);
  v107 = v26;
  v108 = v29;
  v109 = v26;
  if (v26)
  {
    v47 = v109;
    MEMORY[0x1E69E5920](v100);
    v48 = v47;
    v49 = 1863;
  }

  else
  {
    *(v97 + 80) = v108;
    swift_unknownObjectRetain();
    v67 = v97 + 32;
    v68 = &v125;
    swift_beginAccess();
    *(v97 + 40) = v84;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_endAccess();
    MEMORY[0x1E69E5928](v102);
    *(v97 + 48) = v102;
    *(v97 + 56) = sub_1B0A297E4();
    v30 = static MonotonicTime.now()();
    v31 = v97;
    *(v97 + 64) = v30;
    v69 = *(v31 + 80);

    SyncSession.activate()();
    v70 = v32;
    v71 = v32;
    if (!v32)
    {

      type metadata accessor for RestartableTimer();
      v55 = *(v97 + 16);
      MEMORY[0x1E69E5928](v55);
      v33 = v76;
      *v81 = 10;
      v50 = MEMORY[0x1E69E7F48];
      v34 = *MEMORY[0x1E69E7F48];
      v52 = *(v33 + 104);
      v51 = v33 + 104;
      v52();
      v35 = v50;
      v36 = v52;
      *v79 = 1;
      v37 = *v35;
      v36();
      v59 = &unk_1F270A398;
      v60 = 24;
      v61 = 7;
      v56 = swift_allocObject();
      v53 = v56 + 16;

      v54 = v97;
      swift_weakInit();

      v123 = v72;
      v124 = v56;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v119 = 1107296256;
      v120 = 0;
      v121 = sub_1B038C908;
      v122 = &block_descriptor_28;
      v38 = _Block_copy(&aBlock);
      v57 = RestartableTimer.__allocating_init(queue:repeating:leeway:closure:)(v55, v81, v79, v38);

      v58 = &v117;
      swift_beginAccess();
      v39 = *(v97 + 104);
      *(v97 + 104) = v57;

      swift_endAccess();
      v65 = swift_allocObject();
      v62 = v65 + 16;

      v63 = v97;
      swift_weakInit();

      v115 = v73;
      v116 = v65;
      v110 = MEMORY[0x1E69E9820];
      v111 = v64;
      v112 = 0;
      v113 = sub_1B0A2C1B8;
      v114 = &block_descriptor_32_0;
      v66 = _Block_copy(&v110);

      [v102 setExpirationHandlerWithReason_];
      _Block_release(v66);
      MEMORY[0x1E69E5920](v100);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](v102);
      return v97;
    }

    v46 = v71;

    MEMORY[0x1E69E5920](v100);
    v48 = v46;
    v49 = 2047;
  }

  v44 = v49;
  v45 = v48;
  if ((v49 & 0x7FF) == 0x7FF)
  {
  }

  else
  {
    MEMORY[0x1E69E5920](*(v97 + 16));
    v41 = *(v97 + 24);
    swift_unknownObjectRelease();
    sub_1B06D56EC();
    if ((v44 & 8) != 0)
    {
      MEMORY[0x1E69E5920](*(v97 + 48));
    }

    sub_1B0391AD4((v97 + 72));
    if ((v44 & 0x80) != 0)
    {
      v42 = *(v97 + 80);
    }

    v43[3] = v97;
    v43[2] = v97;
    sub_1B0391AD4((v97 + 104));
    swift_deallocPartialClassInstance();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v102);
  return v43[1];
}

uint64_t sub_1B0A29704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0A35904(a1, a2, a3, a4);
  sub_1B0A36D38(a1, a2, a3, a4);
  result = IndexingStatistics.fractionCompletedAsInt.getter(a1, a2);
  if (result >= 95)
  {
    v5 = [objc_opt_self() standardUserDefaults];
    sub_1B0A37F44();
    return MEMORY[0x1E69E5920](v5);
  }

  return result;
}

uint64_t sub_1B0A297E4()
{
  v1 = *sub_1B0A2C4B4();

  sub_1B03E1B3C(sub_1B0A2C514, 0, v1, &unk_1F270BB80, &unk_1F270BB80);

  return v2;
}

uint64_t sub_1B0A29878(uint64_t a1)
{
  v2[4] = a1 + 16;
  swift_beginAccess();
  v2[0] = swift_weakLoadStrong();
  if (v2[0])
  {

    sub_1B0391AD4(v2);
    swift_endAccess();
    sub_1B0A29928();
  }

  else
  {
    sub_1B0391AD4(v2);
    return swift_endAccess();
  }
}

uint64_t sub_1B0A29928()
{
  v72 = sub_1B0A2C624;
  v73 = sub_1B0A2C62C;
  v74 = sub_1B039BC08;
  v75 = sub_1B0A398B8;
  v76 = sub_1B074E950;
  v77 = sub_1B0398F5C;
  v78 = sub_1B0398F5C;
  v79 = sub_1B03991EC;
  v80 = sub_1B0398F5C;
  v81 = sub_1B0398F5C;
  v82 = sub_1B074E9C8;
  v83 = *v0;
  v105 = 0;
  v84 = 0;
  v85 = 0;
  v86 = sub_1B0E439A8();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v90 = v32 - v89;
  v95 = sub_1B0E44468();
  v93 = *(v95 - 8);
  v94 = v95 - 8;
  v91 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v95);
  v96 = (v32 - v91);
  v105 = v0;

  v92 = v0[2];
  MEMORY[0x1E69E5928](v92);
  v1 = v93;
  *v96 = v92;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v97 = sub_1B0E44488();
  (*(v93 + 8))(v96, v95);
  result = v97;
  if ((v97 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v69 = v71[6];
  MEMORY[0x1E69E5928](v69);
  v70 = [v69 eligibleToRun];
  MEMORY[0x1E69E5920](v69);
  if (v70)
  {
    result = swift_beginAccess();
    v4 = v71[11];
    v68 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      v71[11] = v68;
      swift_endAccess();
      v66 = &v103;
      swift_beginAccess();
      v67 = v71[11];
      result = swift_endAccess();
      if (!(v67 % 6))
      {
        sub_1B0A27668(v90);

        v52 = 32;
        v53 = 7;
        v6 = swift_allocObject();
        v7 = v71;
        v49 = v6;
        *(v6 + 16) = v72;
        *(v6 + 24) = v7;

        v64 = sub_1B0E43988();
        v65 = sub_1B0E45908();
        v51 = 17;
        v55 = swift_allocObject();
        *(v55 + 16) = 2;
        v56 = swift_allocObject();
        *(v56 + 16) = 4;
        v8 = swift_allocObject();
        v9 = v49;
        v50 = v8;
        *(v8 + 16) = v73;
        *(v8 + 24) = v9;
        v10 = swift_allocObject();
        v11 = v50;
        v57 = v10;
        *(v10 + 16) = v74;
        *(v10 + 24) = v11;
        v58 = swift_allocObject();
        *(v58 + 16) = 0;
        v59 = swift_allocObject();
        *(v59 + 16) = 8;
        v12 = swift_allocObject();
        v13 = v71;
        v54 = v12;
        *(v12 + 16) = v75;
        *(v12 + 24) = v13;
        v14 = swift_allocObject();
        v15 = v54;
        v61 = v14;
        *(v14 + 16) = v76;
        *(v14 + 24) = v15;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v60 = sub_1B0E46A48();
        v62 = v16;

        v17 = v55;
        v18 = v62;
        *v62 = v77;
        v18[1] = v17;

        v19 = v56;
        v20 = v62;
        v62[2] = v78;
        v20[3] = v19;

        v21 = v57;
        v22 = v62;
        v62[4] = v79;
        v22[5] = v21;

        v23 = v58;
        v24 = v62;
        v62[6] = v80;
        v24[7] = v23;

        v25 = v59;
        v26 = v62;
        v62[8] = v81;
        v26[9] = v25;

        v27 = v61;
        v28 = v62;
        v62[10] = v82;
        v28[11] = v27;
        sub_1B0394964();

        if (os_log_type_enabled(v64, v65))
        {
          v29 = v84;
          v42 = sub_1B0E45D78();
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v41 = 0;
          v43 = sub_1B03949A8(0);
          v44 = sub_1B03949A8(v41);
          v45 = &v102;
          v102 = v42;
          v46 = &v101;
          v101 = v43;
          v47 = &v100;
          v100 = v44;
          sub_1B0394A48(0, &v102);
          sub_1B0394A48(2, v45);
          v98 = v77;
          v99 = v55;
          sub_1B03949FC(&v98, v45, v46, v47);
          v48 = v29;
          if (v29)
          {

            __break(1u);
          }

          else
          {
            v98 = v78;
            v99 = v56;
            sub_1B03949FC(&v98, &v102, &v101, &v100);
            v39 = 0;
            v98 = v79;
            v99 = v57;
            sub_1B03949FC(&v98, &v102, &v101, &v100);
            v38 = 0;
            v98 = v80;
            v99 = v58;
            sub_1B03949FC(&v98, &v102, &v101, &v100);
            v37 = 0;
            v98 = v81;
            v99 = v59;
            sub_1B03949FC(&v98, &v102, &v101, &v100);
            v36 = 0;
            v98 = v82;
            v99 = v61;
            sub_1B03949FC(&v98, &v102, &v101, &v100);
            _os_log_impl(&dword_1B0389000, v64, v65, "[%{public}u] Still eligible to run after %f seconds.", v42, 0x12u);
            v35 = 0;
            sub_1B03998A8(v43);
            sub_1B03998A8(v44);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v64);
        return (*(v87 + 8))(v90, v86);
      }

      return result;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  v30 = v71[12];
  v34 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v71[12] = v34;
  swift_endAccess();
  v32[1] = &v104;
  swift_beginAccess();
  v33 = v71[12];
  result = swift_endAccess();
  if (v33 > 1)
  {
    return sub_1B0A2B748(1u);
  }

  return result;
}

uint64_t sub_1B0A2A6F0(uint64_t a1, uint64_t a2)
{
  v93 = a1;
  v92 = a2;
  v91 = 0;
  v74 = sub_1B0A2C624;
  v75 = sub_1B0A2C62C;
  v76 = sub_1B039BC08;
  v77 = sub_1B06BD0C0;
  v78 = sub_1B06D5270;
  v79 = sub_1B0A398B8;
  v80 = sub_1B074E950;
  v81 = sub_1B0398F5C;
  v82 = sub_1B0398F5C;
  v83 = sub_1B03991EC;
  v84 = sub_1B0398F5C;
  v85 = sub_1B0398F5C;
  v86 = sub_1B06D527C;
  v87 = sub_1B0398F5C;
  v88 = sub_1B0398F5C;
  v89 = sub_1B074E9C8;
  v110 = 0;
  v109 = 0;
  v107 = 0;
  v90 = 0;
  v94 = sub_1B0E439A8();
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93);
  v98 = v40 - v97;
  v110 = v2;
  v99 = v3 + 16;
  v109 = v3 + 16;
  v100 = &v108;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v73 = Strong;
    v55 = Strong;
    v107 = Strong;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v98);

    v56 = 32;
    v57 = 7;
    v5 = swift_allocObject();
    v6 = v55;
    v49 = v5;
    *(v5 + 16) = v74;
    *(v5 + 24) = v6;

    v51 = swift_allocObject();
    *(v51 + 16) = v93;

    v71 = sub_1B0E43988();
    v72 = sub_1B0E45908();
    v53 = 17;
    v59 = swift_allocObject();
    *(v59 + 16) = 2;
    v60 = swift_allocObject();
    *(v60 + 16) = 4;
    v7 = swift_allocObject();
    v8 = v49;
    v50 = v7;
    *(v7 + 16) = v75;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v50;
    v61 = v9;
    *(v9 + 16) = v76;
    *(v9 + 24) = v10;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    v63 = swift_allocObject();
    v54 = 8;
    *(v63 + 16) = 8;
    v11 = swift_allocObject();
    v12 = v51;
    v52 = v11;
    *(v11 + 16) = v77;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v52;
    v64 = v13;
    *(v13 + 16) = v78;
    *(v13 + 24) = v14;
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    v66 = swift_allocObject();
    *(v66 + 16) = v54;
    v15 = swift_allocObject();
    v16 = v55;
    v58 = v15;
    *(v15 + 16) = v79;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v58;
    v68 = v17;
    *(v17 + 16) = v80;
    *(v17 + 24) = v18;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v67 = sub_1B0E46A48();
    v69 = v19;

    v20 = v59;
    v21 = v69;
    *v69 = v81;
    v21[1] = v20;

    v22 = v60;
    v23 = v69;
    v69[2] = v82;
    v23[3] = v22;

    v24 = v61;
    v25 = v69;
    v69[4] = v83;
    v25[5] = v24;

    v26 = v62;
    v27 = v69;
    v69[6] = v84;
    v27[7] = v26;

    v28 = v63;
    v29 = v69;
    v69[8] = v85;
    v29[9] = v28;

    v30 = v64;
    v31 = v69;
    v69[10] = v86;
    v31[11] = v30;

    v32 = v65;
    v33 = v69;
    v69[12] = v87;
    v33[13] = v32;

    v34 = v66;
    v35 = v69;
    v69[14] = v88;
    v35[15] = v34;

    v36 = v68;
    v37 = v69;
    v69[16] = v89;
    v37[17] = v36;
    sub_1B0394964();

    if (os_log_type_enabled(v71, v72))
    {
      v38 = v90;
      v42 = sub_1B0E45D78();
      v40[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v41 = 0;
      v43 = sub_1B03949A8(0);
      v44 = sub_1B03949A8(v41);
      v45 = &v106;
      v106 = v42;
      v46 = &v105;
      v105 = v43;
      v47 = &v104;
      v104 = v44;
      sub_1B0394A48(0, &v106);
      sub_1B0394A48(3, v45);
      v102 = v81;
      v103 = v59;
      sub_1B03949FC(&v102, v45, v46, v47);
      v48 = v38;
      if (v38)
      {

        __break(1u);
      }

      else
      {
        v102 = v82;
        v103 = v60;
        sub_1B03949FC(&v102, &v106, &v105, &v104);
        v40[7] = 0;
        v102 = v83;
        v103 = v61;
        sub_1B03949FC(&v102, &v106, &v105, &v104);
        v40[6] = 0;
        v102 = v84;
        v103 = v62;
        sub_1B03949FC(&v102, &v106, &v105, &v104);
        v40[5] = 0;
        v102 = v85;
        v103 = v63;
        sub_1B03949FC(&v102, &v106, &v105, &v104);
        v40[4] = 0;
        v102 = v86;
        v103 = v64;
        sub_1B03949FC(&v102, &v106, &v105, &v104);
        v40[3] = 0;
        v102 = v87;
        v103 = v65;
        sub_1B03949FC(&v102, &v106, &v105, &v104);
        v40[2] = 0;
        v102 = v88;
        v103 = v66;
        sub_1B03949FC(&v102, &v106, &v105, &v104);
        v40[1] = 0;
        v102 = v89;
        v103 = v68;
        sub_1B03949FC(&v102, &v106, &v105, &v104);
        _os_log_impl(&dword_1B0389000, v71, v72, "[%{public}u] Download & index task did expire (reason: %lu) after %f seconds.", v42, 0x1Cu);
        v40[0] = 0;
        sub_1B03998A8(v43);
        sub_1B03998A8(v44);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v71);
    (*(v95 + 8))(v98, v94);
    v39 = sub_1B0394868();
    sub_1B0A2B748(v39 & 1);
  }

  return result;
}

uint64_t sub_1B0A2B4F8(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v17 = sub_1B0A2C62C;
  v8 = 0;
  v9 = (*(*(sub_1B0E43908() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = (&v8 - v9);
  v10 = (*(*(sub_1B0E43808() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v21 = &v8 - v10;

  v2 = swift_allocObject();
  v3 = v12;
  v22 = v2;
  *(v2 + 16) = v11;
  *(v2 + 24) = v3;
  sub_1B0E437D8();
  v29 = sub_1B0A276D4();
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v13 = v29;
  v14 = v4;
  v15 = BYTE1(v4);
  v16 = BYTE2(v4);
  v20 = v5;
  v19 = v6;
  sub_1B0507508();
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v20;
  v28 = v19;
  sub_1B0E438B8();
  sub_1B0A398C0(v18);
  sub_1B04197E4(v20);
  sub_1B0A39958(v21);
}

uint64_t sub_1B0A2B748(unsigned int a1)
{
  v73 = a1;
  v72 = 0;
  v52 = sub_1B0A2C624;
  v53 = sub_1B0A2C62C;
  v54 = sub_1B039BC08;
  v55 = sub_1B0398F5C;
  v56 = sub_1B0398F5C;
  v57 = sub_1B03991EC;
  v58 = sub_1B0A39A0C;
  v59 = *v1;
  v97 = 0;
  v96 = 0;
  v94 = 0;
  v60 = 0;
  v66 = 0;
  v61 = sub_1B0E44238();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v65 = &v22 - v64;
  v67 = sub_1B0E44288();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v71 = &v22 - v70;
  v74 = sub_1B0E439A8();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v78 = &v22 - v77;
  v97 = v2 & 1;
  v96 = v1;
  v79 = &v95;
  swift_beginAccess();
  v80 = sub_1B0A3A114();
  v81 = v3;
  result = swift_endAccess();
  if ((v81 & 1) == 0)
  {
    v50 = v80;
    v49 = v80;
    v94 = v80;
    if (v73)
    {
      sub_1B0A27668(v78);

      v37 = 32;
      v38 = 7;
      v5 = swift_allocObject();
      v6 = v51;
      v39 = v5;
      *(v5 + 16) = v52;
      *(v5 + 24) = v6;

      v47 = sub_1B0E43988();
      v48 = sub_1B0E458F8();
      v36 = 17;
      v41 = swift_allocObject();
      *(v41 + 16) = 2;
      v42 = swift_allocObject();
      *(v42 + 16) = 4;
      v7 = swift_allocObject();
      v8 = v39;
      v40 = v7;
      *(v7 + 16) = v53;
      *(v7 + 24) = v8;
      v9 = swift_allocObject();
      v10 = v40;
      v44 = v9;
      *(v9 + 16) = v54;
      *(v9 + 24) = v10;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v43 = sub_1B0E46A48();
      v45 = v11;

      v12 = v41;
      v13 = v45;
      *v45 = v55;
      v13[1] = v12;

      v14 = v42;
      v15 = v45;
      v45[2] = v56;
      v15[3] = v14;

      v16 = v44;
      v17 = v45;
      v45[4] = v57;
      v17[5] = v16;
      sub_1B0394964();

      if (os_log_type_enabled(v47, v48))
      {
        v18 = v60;
        v29 = sub_1B0E45D78();
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v28 = 0;
        v30 = sub_1B03949A8(0);
        v31 = sub_1B03949A8(v28);
        v32 = &v86;
        v86 = v29;
        v33 = &v85;
        v85 = v30;
        v34 = &v84;
        v84 = v31;
        sub_1B0394A48(0, &v86);
        sub_1B0394A48(1, v32);
        v82 = v55;
        v83 = v41;
        sub_1B03949FC(&v82, v32, v33, v34);
        v35 = v18;
        if (v18)
        {

          __break(1u);
        }

        else
        {
          v82 = v56;
          v83 = v42;
          sub_1B03949FC(&v82, &v86, &v85, &v84);
          v26 = 0;
          v82 = v57;
          v83 = v44;
          sub_1B03949FC(&v82, &v86, &v85, &v84);
          _os_log_impl(&dword_1B0389000, v47, v48, "[%{public}u] No longer eligible to run. dasd may have crashed. Forcing task expiry.", v29, 8u);
          v25 = 0;
          sub_1B03998A8(v30);
          sub_1B03998A8(v31);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v47);
      (*(v75 + 8))(v78, v74);
    }

    v24 = *(v51 + 16);
    MEMORY[0x1E69E5928](v24);

    v19 = swift_allocObject();
    v20 = v49;
    v21 = v58;
    *(v19 + 16) = v51;
    *(v19 + 24) = v20;
    v92 = v21;
    v93 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v88 = 1107296256;
    v89 = 0;
    v90 = sub_1B038C908;
    v91 = &block_descriptor_76;
    v23 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v71, v65, v23);
    (*(v62 + 8))(v65, v61);
    (*(v68 + 8))(v71, v67);
    _Block_release(v23);

    return MEMORY[0x1E69E5920](v24);
  }

  return result;
}

uint64_t sub_1B0A2C1B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1B0A2C210()
{
  MEMORY[0x1E69E5920](v0[2]);
  v1 = v0[3];
  swift_unknownObjectRelease();
  sub_1B06D56EC();
  MEMORY[0x1E69E5920](v0[6]);
  sub_1B0391AD4(v0 + 9);
  v2 = v0[10];

  sub_1B0391AD4(v0 + 13);
  return v4;
}

uint64_t sub_1B0A2C2C8()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6DB9C0);
  __swift_project_value_buffer(v1, qword_1EB6DB9C0);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B0A2C36C()
{
  if (qword_1EB6DB9B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6DB9C0);
}

uint64_t sub_1B0A2C46C()
{
  sub_1B06E5F98();
  v2 = v0;
  result = sub_1B06C70B0(&v2, &unk_1F270BB80);
  qword_1EB6DBA58 = result;
  return result;
}

uint64_t *sub_1B0A2C4B4()
{
  if (qword_1EB6DBA50 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBA58;
}

void sub_1B0A2C514(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  v6 = *a1;
  v2 = *a1;
  sub_1B0A2C440();
  *a1 = v3;
  *a2 = v6;
}

uint64_t sub_1B0A2C578(void (*a1)(void))
{

  a1();
  sub_1B06E5F98();
  v4 = v1;

  return v4;
}

uint64_t sub_1B0A2C638(uint64_t a1)
{
  v14 = a1;
  v11 = "Fatal error";
  v12 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v13 = "Message/SearchIndexerBackgroundTask.swift";
  v24 = 0;
  v23 = 0;
  v19 = sub_1B0E44468();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v15 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v20 = (v6 - v15);
  v24 = v2;
  v23 = v1;

  v16 = *(v1 + 16);
  MEMORY[0x1E69E5928](v16);
  v3 = v17;
  *v20 = v16;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v21 = sub_1B0E44488();
  (*(v17 + 8))(v20, v19);
  result = v21;
  if (v21)
  {

    v8 = &v22;
    swift_beginAccess();
    v9 = *(v10 + 104);

    swift_endAccess();
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v6[1] = v7;
    RestartableTimer.start()();

    return sub_1B0A2C880(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A2C880(uint64_t a1)
{
  v79 = a1;
  v64 = sub_1B03F7AE0;
  v65 = sub_1B0A2C62C;
  v66 = sub_1B039BC08;
  v67 = sub_1B0398F5C;
  v68 = sub_1B0398F5C;
  v69 = sub_1B03991EC;
  v70 = sub_1B0A39AF8;
  v71 = *v1;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v72 = 0;
  v73 = 0;
  v74 = sub_1B0E439A8();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v78 = &v27 - v77;
  v84 = sub_1B0E44468();
  v82 = *(v84 - 8);
  v83 = v84 - 8;
  v80 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79);
  v85 = (&v27 - v80);
  v95 = v2;
  v94 = v1;

  v81 = v1[2];
  MEMORY[0x1E69E5928](v81);
  v3 = v82;
  *v85 = v81;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v86 = sub_1B0E44488();
  (*(v82 + 8))(v85, v84);
  result = v86;
  if (v86)
  {

    v48 = *(v63 + 56);
    v93 = v48;
    sub_1B0A27668(v78);
    v52 = 7;
    v49 = swift_allocObject();
    *(v49 + 16) = v48;

    v51 = 32;
    v6 = swift_allocObject();
    v7 = v49;
    v53 = v6;
    *(v6 + 16) = v64;
    *(v6 + 24) = v7;

    v61 = sub_1B0E43988();
    v62 = sub_1B0E45908();
    v50 = 17;
    v55 = swift_allocObject();
    *(v55 + 16) = 2;
    v56 = swift_allocObject();
    *(v56 + 16) = 4;
    v8 = swift_allocObject();
    v9 = v53;
    v54 = v8;
    *(v8 + 16) = v65;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v54;
    v58 = v10;
    *(v10 + 16) = v66;
    *(v10 + 24) = v11;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v57 = sub_1B0E46A48();
    v59 = v12;

    v13 = v55;
    v14 = v59;
    *v59 = v67;
    v14[1] = v13;

    v15 = v56;
    v16 = v59;
    v59[2] = v68;
    v16[3] = v15;

    v17 = v58;
    v18 = v59;
    v59[4] = v69;
    v18[5] = v17;
    sub_1B0394964();

    if (os_log_type_enabled(v61, v62))
    {
      v19 = v72;
      v41 = sub_1B0E45D78();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v40 = 0;
      v42 = sub_1B03949A8(0);
      v43 = sub_1B03949A8(v40);
      v44 = &v91;
      v91 = v41;
      v45 = &v90;
      v90 = v42;
      v46 = &v89;
      v89 = v43;
      sub_1B0394A48(0, &v91);
      sub_1B0394A48(1, v44);
      v87 = v67;
      v88 = v55;
      sub_1B03949FC(&v87, v44, v45, v46);
      v47 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v87 = v68;
        v88 = v56;
        sub_1B03949FC(&v87, &v91, &v90, &v89);
        v38 = 0;
        v87 = v69;
        v88 = v58;
        sub_1B03949FC(&v87, &v91, &v90, &v89);
        _os_log_impl(&dword_1B0389000, v61, v62, "[%{public}u] Starting download & index.", v41, 8u);
        v37 = 0;
        sub_1B03998A8(v42);
        sub_1B03998A8(v43);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v61);
    (*(v75 + 8))(v78, v74);
    v28 = *(v63 + 48);
    MEMORY[0x1E69E5928](v28);
    sub_1B0A2DE7C();
    MEMORY[0x1E69E5920](v28);
    v29 = *(v63 + 24);
    swift_unknownObjectRetain();
    ObjectType = swift_getObjectType();
    v36 = sub_1B090F870(ObjectType);
    v92 = v36;
    swift_unknownObjectRelease();
    v35 = *(v63 + 80);

    v32 = 7;
    v34 = swift_allocObject();
    v30 = v34 + 16;

    v31 = v63;
    swift_weakInit();

    v21 = swift_allocObject();
    v22 = v48;
    v23 = v70;
    v24 = v36;
    v25 = v21;
    v26 = v79;
    v33 = v25;
    *(v25 + 16) = v34;
    *(v25 + 24) = v22;
    SyncSession.start(_:configurations:_:)(v26, v24, v23, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A2D2D0(Swift::Int a1)
{
  v78.underlying = a1;
  v59 = sub_1B03F7AE0;
  v60 = sub_1B0A2C62C;
  v61 = sub_1B039BC08;
  v62 = sub_1B0A398B8;
  v63 = sub_1B074E950;
  v64 = sub_1B0398F5C;
  v65 = sub_1B0398F5C;
  v66 = sub_1B03991EC;
  v67 = sub_1B0398F5C;
  v68 = sub_1B0398F5C;
  v69 = sub_1B074E9C8;
  v70 = *v1;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v71 = 0;
  v72 = 0;
  v73 = sub_1B0E439A8();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v77 = v30 - v76;
  v83 = sub_1B0E44468();
  v81 = *(v83 - 8);
  v82 = v83 - 8;
  v79 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78.underlying);
  v84 = (v30 - v79);
  v93 = v2;
  v92 = v1;

  v80 = v1[2];
  MEMORY[0x1E69E5928](v80);
  v3 = v81;
  *v84 = v80;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v85 = sub_1B0E44488();
  (*(v81 + 8))(v84, v83);
  result = v85;
  if (v85)
  {

    v39 = *(v58 + 56);
    v91 = v39;
    sub_1B0A27668(v77);
    v45 = 7;
    v40 = swift_allocObject();
    *(v40 + 16) = v39;

    v44 = 32;
    v6 = swift_allocObject();
    v7 = v40;
    v41 = v6;
    *(v6 + 16) = v59;
    *(v6 + 24) = v7;

    v56 = sub_1B0E43988();
    v57 = sub_1B0E45908();
    v43 = 17;
    v47 = swift_allocObject();
    *(v47 + 16) = 2;
    v48 = swift_allocObject();
    *(v48 + 16) = 4;
    v8 = swift_allocObject();
    v9 = v41;
    v42 = v8;
    *(v8 + 16) = v60;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v42;
    v49 = v10;
    *(v10 + 16) = v61;
    *(v10 + 24) = v11;
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v12 = swift_allocObject();
    v13 = v58;
    v46 = v12;
    *(v12 + 16) = v62;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v46;
    v53 = v14;
    *(v14 + 16) = v63;
    *(v14 + 24) = v15;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v52 = sub_1B0E46A48();
    v54 = v16;

    v17 = v47;
    v18 = v54;
    *v54 = v64;
    v18[1] = v17;

    v19 = v48;
    v20 = v54;
    v54[2] = v65;
    v20[3] = v19;

    v21 = v49;
    v22 = v54;
    v54[4] = v66;
    v22[5] = v21;

    v23 = v50;
    v24 = v54;
    v54[6] = v67;
    v24[7] = v23;

    v25 = v51;
    v26 = v54;
    v54[8] = v68;
    v26[9] = v25;

    v27 = v53;
    v28 = v54;
    v54[10] = v69;
    v28[11] = v27;
    sub_1B0394964();

    if (os_log_type_enabled(v56, v57))
    {
      v29 = v71;
      v32 = sub_1B0E45D78();
      v30[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v31 = 0;
      v33 = sub_1B03949A8(0);
      v34 = sub_1B03949A8(v31);
      v35 = &v90;
      v90 = v32;
      v36 = &v89;
      v89 = v33;
      v37 = &v88;
      v88 = v34;
      sub_1B0394A48(0, &v90);
      sub_1B0394A48(2, v35);
      v86 = v64;
      v87 = v47;
      sub_1B03949FC(&v86, v35, v36, v37);
      v38 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v86 = v65;
        v87 = v48;
        sub_1B03949FC(&v86, &v90, &v89, &v88);
        v30[6] = 0;
        v86 = v66;
        v87 = v49;
        sub_1B03949FC(&v86, &v90, &v89, &v88);
        v30[5] = 0;
        v86 = v67;
        v87 = v50;
        sub_1B03949FC(&v86, &v90, &v89, &v88);
        v30[4] = 0;
        v86 = v68;
        v87 = v51;
        sub_1B03949FC(&v86, &v90, &v89, &v88);
        v30[3] = 0;
        v86 = v69;
        v87 = v53;
        sub_1B03949FC(&v86, &v90, &v89, &v88);
        _os_log_impl(&dword_1B0389000, v56, v57, "[%{public}u] Stopping download & index after %f seconds.", v32, 0x12u);
        v30[2] = 0;
        sub_1B03998A8(v33);
        sub_1B03998A8(v34);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v56);
    (*(v74 + 8))(v77, v73);
    v30[1] = *(v58 + 80);

    SyncSession.stop(_:)(v78);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A2DE7C()
{
  v69 = sub_1B07135E4;
  v70 = sub_1B070B324;
  v71 = sub_1B0398F5C;
  v72 = sub_1B0398F5C;
  v73 = sub_1B070B4B4;
  v111 = *MEMORY[0x1E69E9840];
  v107 = 0;
  v106 = 0;
  v104 = 0;
  v79 = 0;
  v74 = sub_1B0E439A8();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v78 = v45 - v77;
  v107 = v0;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C88, &unk_1B0EA3630);
  v87 = sub_1B0E46A48();
  v85 = v1;
  v91 = *MEMORY[0x1E698E4D8];
  MEMORY[0x1E69E5928](v91);
  v2 = sub_1B0E44AD8();
  v3 = v85;
  *v85 = v2;
  v3[1] = v4;
  v80 = sub_1B039A494();
  v5 = sub_1B041A060(302);
  v6 = v85;
  v85[5] = v80;
  v6[2] = v5;
  v90 = *MEMORY[0x1E698E4F0];
  MEMORY[0x1E69E5928](v90);
  v7 = sub_1B0E44AD8();
  v8 = v85;
  v9 = v7;
  v10 = v81;
  v85[6] = v9;
  v8[7] = v11;
  v89 = [v10 identifier];
  v12 = sub_1B0E44AD8();
  v13 = v85;
  v93 = MEMORY[0x1E69E6158];
  v85[11] = MEMORY[0x1E69E6158];
  v13[8] = v12;
  v13[9] = v14;
  v88 = *MEMORY[0x1E698E4E0];
  MEMORY[0x1E69E5928](v88);
  v15 = sub_1B0E44AD8();
  v16 = v85;
  v85[12] = v15;
  v16[13] = v17;
  v83 = sub_1B0E46A48();
  v82 = v18;
  v19 = sub_1B0E44838();
  v20 = v82;
  v21 = v19;
  v22 = v83;
  *v82 = v21;
  v20[1] = v23;
  sub_1B0394964();
  v84 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  v25 = v84;
  v26 = v85;
  v27 = v24;
  v28 = v87;
  v85[17] = v27;
  v26[14] = v25;
  sub_1B0394964();
  v92 = v28;
  MEMORY[0x1E69E5920](v88);
  MEMORY[0x1E69E5920](v89);
  MEMORY[0x1E69E5920](v90);
  MEMORY[0x1E69E5920](v91);
  v94 = MEMORY[0x1E69E7CA0] + 8;
  v95 = MEMORY[0x1E69E6168];
  v96 = sub_1B0E445D8();
  v106 = v96;
  v110 = 0;
  v99 = [objc_opt_self() sharedScheduler];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v98 = sub_1B0E44598();

  v105 = v110;
  v100 = [v99 taskStartedWithParameters:v98 error:&v105];
  v97 = v105;
  MEMORY[0x1E69E5928](v105);
  v29 = v110;
  v110 = v97;
  MEMORY[0x1E69E5920](v29);
  MEMORY[0x1E69E5920](v98);
  MEMORY[0x1E69E5920](v99);
  if ((v100 & 1) == 0)
  {
    v53 = v110;
    v55 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v53);
    swift_willThrow();
    v54 = 0;
    v31 = v55;
    v104 = v55;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v78);
    v32 = v55;
    v58 = 7;
    v59 = swift_allocObject();
    *(v59 + 16) = v55;
    v67 = sub_1B0E43988();
    v68 = sub_1B0E458E8();
    v56 = 17;
    v61 = swift_allocObject();
    *(v61 + 16) = 64;
    v62 = swift_allocObject();
    *(v62 + 16) = 8;
    v57 = 32;
    v33 = swift_allocObject();
    v34 = v59;
    v60 = v33;
    *(v33 + 16) = v69;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v60;
    v64 = v35;
    *(v35 + 16) = v70;
    *(v35 + 24) = v36;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v63 = sub_1B0E46A48();
    v65 = v37;

    v38 = v61;
    v39 = v65;
    *v65 = v71;
    v39[1] = v38;

    v40 = v62;
    v41 = v65;
    v65[2] = v72;
    v41[3] = v40;

    v42 = v64;
    v43 = v65;
    v65[4] = v73;
    v43[5] = v42;
    sub_1B0394964();

    if (os_log_type_enabled(v67, v68))
    {
      v44 = v54;
      v46 = sub_1B0E45D78();
      v45[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v47 = sub_1B03949A8(1);
      v48 = sub_1B03949A8(0);
      v49 = &v103;
      v103 = v46;
      v50 = &v109;
      v109 = v47;
      v51 = &v108;
      v108 = v48;
      sub_1B0394A48(2, &v103);
      sub_1B0394A48(1, v49);
      v101 = v71;
      v102 = v61;
      sub_1B03949FC(&v101, v49, v50, v51);
      v52 = v44;
      if (v44)
      {

        __break(1u);
      }

      else
      {
        v101 = v72;
        v102 = v62;
        sub_1B03949FC(&v101, &v103, &v109, &v108);
        v45[1] = 0;
        v101 = v73;
        v102 = v64;
        sub_1B03949FC(&v101, &v103, &v109, &v108);
        _os_log_impl(&dword_1B0389000, v67, v68, "Failed to report taskStarted: %@", v46, 0xCu);
        sub_1B03998A8(v47);
        sub_1B03998A8(v48);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v67);
    (*(v75 + 8))(v78, v74);
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0A2E920(unsigned int a1, uint64_t a2, int a3)
{
  v144 = a1;
  v143 = a2;
  v141 = a3;
  v142 = 0;
  v118 = sub_1B03F7AE0;
  v119 = sub_1B0A2C62C;
  v120 = sub_1B039BC08;
  v121 = sub_1B0A398B8;
  v122 = sub_1B074E950;
  v123 = sub_1B0398F5C;
  v124 = sub_1B0398F5C;
  v125 = sub_1B03991EC;
  v126 = sub_1B0398F5C;
  v127 = sub_1B0398F5C;
  v128 = sub_1B074E9C8;
  v129 = sub_1B03F7AE0;
  v130 = sub_1B0A2C62C;
  v131 = sub_1B039BC08;
  v132 = sub_1B0A398B8;
  v133 = sub_1B074E950;
  v134 = sub_1B0398F5C;
  v135 = sub_1B0398F5C;
  v136 = sub_1B03991EC;
  v137 = sub_1B0398F5C;
  v138 = sub_1B0398F5C;
  v139 = sub_1B074E9C8;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v165 = 0;
  v140 = 0;
  v145 = sub_1B0E439A8();
  v146 = *(v145 - 8);
  v147 = v145 - 8;
  v148 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v144);
  v149 = v57 - v148;
  v150 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v151 = v57 - v150;
  v169 = v5;
  v152 = v6 + 16;
  v168 = v6 + 16;
  v167 = v7;
  v153 = &v166;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v117 = Strong;
    v116 = v117;
    v165 = v117;
    if (!v144 || v144 == 1 || v144 == 2 || v144 == 3)
    {
      type metadata accessor for SearchIndexerBackgroundTask();
      sub_1B0A27668(v149);
      v71 = 7;
      v66 = swift_allocObject();
      *(v66 + 16) = v141;

      v70 = 32;
      v33 = swift_allocObject();
      v34 = v66;
      v67 = v33;
      *(v33 + 16) = v118;
      *(v33 + 24) = v34;

      v82 = sub_1B0E43988();
      v83 = sub_1B0E45908();
      v69 = 17;
      v73 = swift_allocObject();
      *(v73 + 16) = 2;
      v74 = swift_allocObject();
      *(v74 + 16) = 4;
      v35 = swift_allocObject();
      v36 = v67;
      v68 = v35;
      *(v35 + 16) = v119;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v68;
      v75 = v37;
      *(v37 + 16) = v120;
      *(v37 + 24) = v38;
      v76 = swift_allocObject();
      *(v76 + 16) = 0;
      v77 = swift_allocObject();
      *(v77 + 16) = 8;
      v39 = swift_allocObject();
      v40 = v116;
      v72 = v39;
      *(v39 + 16) = v121;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v72;
      v79 = v41;
      *(v41 + 16) = v122;
      *(v41 + 24) = v42;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v78 = sub_1B0E46A48();
      v80 = v43;

      v44 = v73;
      v45 = v80;
      *v80 = v123;
      v45[1] = v44;

      v46 = v74;
      v47 = v80;
      v80[2] = v124;
      v47[3] = v46;

      v48 = v75;
      v49 = v80;
      v80[4] = v125;
      v49[5] = v48;

      v50 = v76;
      v51 = v80;
      v80[6] = v126;
      v51[7] = v50;

      v52 = v77;
      v53 = v80;
      v80[8] = v127;
      v53[9] = v52;

      v54 = v79;
      v55 = v80;
      v80[10] = v128;
      v55[11] = v54;
      sub_1B0394964();

      if (os_log_type_enabled(v82, v83))
      {
        v56 = v140;
        v59 = sub_1B0E45D78();
        v57[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v58 = 0;
        v60 = sub_1B03949A8(0);
        v61 = sub_1B03949A8(v58);
        v62 = &v164;
        v164 = v59;
        v63 = &v163;
        v163 = v60;
        v64 = &v162;
        v162 = v61;
        sub_1B0394A48(0, &v164);
        sub_1B0394A48(2, v62);
        v160 = v123;
        v161 = v73;
        sub_1B03949FC(&v160, v62, v63, v64);
        v65 = v56;
        if (v56)
        {

          __break(1u);
        }

        else
        {
          v160 = v124;
          v161 = v74;
          sub_1B03949FC(&v160, &v164, &v163, &v162);
          v57[5] = 0;
          v160 = v125;
          v161 = v75;
          sub_1B03949FC(&v160, &v164, &v163, &v162);
          v57[4] = 0;
          v160 = v126;
          v161 = v76;
          sub_1B03949FC(&v160, &v164, &v163, &v162);
          v57[3] = 0;
          v160 = v127;
          v161 = v77;
          sub_1B03949FC(&v160, &v164, &v163, &v162);
          v57[2] = 0;
          v160 = v128;
          v161 = v79;
          sub_1B03949FC(&v160, &v164, &v163, &v162);
          _os_log_impl(&dword_1B0389000, v82, v83, "[%{public}u] Download & index did complete after %f seconds.", v59, 0x12u);
          v57[1] = 0;
          sub_1B03998A8(v60);
          sub_1B03998A8(v61);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v82);
      (*(v146 + 8))(v149, v145);
    }

    else
    {
      type metadata accessor for SearchIndexerBackgroundTask();
      sub_1B0A27668(v151);
      v103 = 7;
      v98 = swift_allocObject();
      *(v98 + 16) = v141;

      v102 = 32;
      v9 = swift_allocObject();
      v10 = v98;
      v99 = v9;
      *(v9 + 16) = v129;
      *(v9 + 24) = v10;

      v114 = sub_1B0E43988();
      v115 = sub_1B0E458E8();
      v101 = 17;
      v105 = swift_allocObject();
      *(v105 + 16) = 2;
      v106 = swift_allocObject();
      *(v106 + 16) = 4;
      v11 = swift_allocObject();
      v12 = v99;
      v100 = v11;
      *(v11 + 16) = v130;
      *(v11 + 24) = v12;
      v13 = swift_allocObject();
      v14 = v100;
      v107 = v13;
      *(v13 + 16) = v131;
      *(v13 + 24) = v14;
      v108 = swift_allocObject();
      *(v108 + 16) = 0;
      v109 = swift_allocObject();
      *(v109 + 16) = 8;
      v15 = swift_allocObject();
      v16 = v116;
      v104 = v15;
      *(v15 + 16) = v132;
      *(v15 + 24) = v16;
      v17 = swift_allocObject();
      v18 = v104;
      v111 = v17;
      *(v17 + 16) = v133;
      *(v17 + 24) = v18;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v110 = sub_1B0E46A48();
      v112 = v19;

      v20 = v105;
      v21 = v112;
      *v112 = v134;
      v21[1] = v20;

      v22 = v106;
      v23 = v112;
      v112[2] = v135;
      v23[3] = v22;

      v24 = v107;
      v25 = v112;
      v112[4] = v136;
      v25[5] = v24;

      v26 = v108;
      v27 = v112;
      v112[6] = v137;
      v27[7] = v26;

      v28 = v109;
      v29 = v112;
      v112[8] = v138;
      v29[9] = v28;

      v30 = v111;
      v31 = v112;
      v112[10] = v139;
      v31[11] = v30;
      sub_1B0394964();

      if (os_log_type_enabled(v114, v115))
      {
        v32 = v140;
        v91 = sub_1B0E45D78();
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v90 = 0;
        v92 = sub_1B03949A8(0);
        v93 = sub_1B03949A8(v90);
        v94 = &v159;
        v159 = v91;
        v95 = &v158;
        v158 = v92;
        v96 = &v157;
        v157 = v93;
        sub_1B0394A48(0, &v159);
        sub_1B0394A48(2, v94);
        v155 = v134;
        v156 = v105;
        sub_1B03949FC(&v155, v94, v95, v96);
        v97 = v32;
        if (v32)
        {

          __break(1u);
        }

        else
        {
          v155 = v135;
          v156 = v106;
          sub_1B03949FC(&v155, &v159, &v158, &v157);
          v88 = 0;
          v155 = v136;
          v156 = v107;
          sub_1B03949FC(&v155, &v159, &v158, &v157);
          v87 = 0;
          v155 = v137;
          v156 = v108;
          sub_1B03949FC(&v155, &v159, &v158, &v157);
          v86 = 0;
          v155 = v138;
          v156 = v109;
          sub_1B03949FC(&v155, &v159, &v158, &v157);
          v85 = 0;
          v155 = v139;
          v156 = v111;
          sub_1B03949FC(&v155, &v159, &v158, &v157);
          _os_log_impl(&dword_1B0389000, v114, v115, "[%{public}u] Download & index did fail after %f seconds.", v91, 0x12u);
          v84 = 0;
          sub_1B03998A8(v92);
          sub_1B03998A8(v93);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v114);
      (*(v146 + 8))(v151, v145);
    }

    sub_1B0A2FE60(v144);
  }

  return result;
}

uint64_t sub_1B0A2FE60(unsigned int a1)
{
  v11 = a1;
  v10 = sub_1B0A39B2C;
  v31 = 0;
  v30 = 0;
  v12 = 0;
  v16 = sub_1B0E44238();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = &v7 - v7;
  v20 = sub_1B0E44288();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v19 = &v7 - v8;
  v31 = v2;
  v30 = v1;
  v22 = *(v1 + 16);
  MEMORY[0x1E69E5928](v22);

  v3 = swift_allocObject();
  v4 = v10;
  v5 = v3;
  LOBYTE(v3) = v11;
  *(v5 + 16) = v9;
  *(v5 + 24) = v3;
  v28 = v4;
  v29 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_1B038C908;
  v27 = &block_descriptor_185;
  v21 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v12, v19, v15, v21);
  (*(v13 + 8))(v15, v16);
  (*(v17 + 8))(v19, v20);
  _Block_release(v21);

  return MEMORY[0x1E69E5920](v22);
}

uint64_t sub_1B0A30120(unsigned int a1)
{
  v16 = a1;
  v13 = "Fatal error";
  v14 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v15 = "Message/SearchIndexerBackgroundTask.swift";
  v28 = 0;
  v27 = 0;
  v24 = 0;
  v21 = sub_1B0E44468();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v17 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v22 = (v6 - v17);
  v28 = v2;
  v27 = v1;

  v18 = *(v1 + 16);
  MEMORY[0x1E69E5928](v18);
  v3 = v19;
  *v22 = v18;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v23 = sub_1B0E44488();
  (*(v19 + 8))(v22, v21);
  result = v23;
  if (v23)
  {

    v10 = &v26;
    swift_beginAccess();
    v11 = v12[13];

    swift_endAccess();
    if (v11)
    {
      v9 = v11;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v6[0] = v9;
    RestartableTimer.stop()();

    v6[1] = &v25;
    swift_beginAccess();
    v8 = sub_1B0A3A1D0(v16);
    swift_endAccess();
    v24 = v8;
    v7 = v12[6];
    MEMORY[0x1E69E5928](v7);
    sub_1B0A30C10(*(v12 + 14), v8);
    MEMORY[0x1E69E5920](v7);
    return sub_1B0A303EC(v8, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A303EC(unsigned int a1, void *a2)
{
  v57 = a1;
  v56 = a2;
  v48 = sub_1B0A2C624;
  v49 = sub_1B0A2C62C;
  v50 = sub_1B039BC08;
  v51 = sub_1B0398F5C;
  v52 = sub_1B0398F5C;
  v53 = sub_1B03991EC;
  v54 = *a2;
  v71 = 0;
  v70 = 0;
  v55 = 0;
  v58 = sub_1B0E439A8();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v62 = v22 - v61;
  v71 = v2;
  v70 = v3;
  if (!v2 || v57 == 1 || v57 == 2 || v57 == 3 || v57 == 4 || v57 == 5)
  {
    v47 = v56 + 4;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v56[5];
    v63 = Strong;
    v64 = v5;
    if (Strong)
    {
      v44 = &v63;
      v46 = v63;
      v45 = v64;
      swift_unknownObjectRetain();
      sub_1B03FD360(v44);
      swift_endAccess();
      ObjectType = swift_getObjectType();
      (*(v45 + 8))(v56, ObjectType);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1B03FD360(&v63);
      return swift_endAccess();
    }
  }

  else
  {
    sub_1B0A27668(v62);

    v32 = 32;
    v33 = 7;
    v8 = swift_allocObject();
    v9 = v56;
    v34 = v8;
    *(v8 + 16) = v48;
    *(v8 + 24) = v9;

    v42 = sub_1B0E43988();
    v43 = sub_1B0E45908();
    v31 = 17;
    v36 = swift_allocObject();
    *(v36 + 16) = 2;
    v37 = swift_allocObject();
    *(v37 + 16) = 4;
    v10 = swift_allocObject();
    v11 = v34;
    v35 = v10;
    *(v10 + 16) = v49;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v35;
    v39 = v12;
    *(v12 + 16) = v50;
    *(v12 + 24) = v13;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v38 = sub_1B0E46A48();
    v40 = v14;

    v15 = v36;
    v16 = v40;
    *v40 = v51;
    v16[1] = v15;

    v17 = v37;
    v18 = v40;
    v40[2] = v52;
    v18[3] = v17;

    v19 = v39;
    v20 = v40;
    v40[4] = v53;
    v20[5] = v19;
    sub_1B0394964();

    if (os_log_type_enabled(v42, v43))
    {
      v21 = v55;
      v24 = sub_1B0E45D78();
      v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v23 = 0;
      v25 = sub_1B03949A8(0);
      v26 = sub_1B03949A8(v23);
      v27 = &v69;
      v69 = v24;
      v28 = &v68;
      v68 = v25;
      v29 = &v67;
      v67 = v26;
      sub_1B0394A48(0, &v69);
      sub_1B0394A48(1, v27);
      v65 = v51;
      v66 = v36;
      sub_1B03949FC(&v65, v27, v28, v29);
      v30 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v65 = v52;
        v66 = v37;
        sub_1B03949FC(&v65, &v69, &v68, &v67);
        v22[1] = 0;
        v65 = v53;
        v66 = v39;
        sub_1B03949FC(&v65, &v69, &v68, &v67);
        _os_log_impl(&dword_1B0389000, v42, v43, "[%{public}u] Did complete, but was already done.", v24, 8u);
        v22[0] = 0;
        sub_1B03998A8(v25);
        sub_1B03998A8(v26);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v42);
    return (*(v59 + 8))(v62, v58);
  }
}

uint64_t sub_1B0A30C10(unsigned int a1, int a2)
{
  v338 = a1;
  v337 = a2;
  v294 = sub_1B03F7AE0;
  v295 = sub_1B0A2C62C;
  v296 = sub_1B039BC08;
  v297 = sub_1B0398F5C;
  v298 = sub_1B0398F5C;
  v299 = sub_1B03991EC;
  v300 = sub_1B03F7AE0;
  v301 = sub_1B0A2C62C;
  v302 = sub_1B039BC08;
  v303 = sub_1B0398F5C;
  v304 = sub_1B0398F5C;
  v305 = sub_1B03991EC;
  v306 = sub_1B03F7AE0;
  v307 = sub_1B0A2C62C;
  v308 = sub_1B039BC08;
  v309 = sub_1B0398F5C;
  v310 = sub_1B0398F5C;
  v311 = sub_1B03991EC;
  v312 = sub_1B03F7AE0;
  v313 = sub_1B0A2C62C;
  v314 = sub_1B039BC08;
  v315 = sub_1B0398F5C;
  v316 = sub_1B0398F5C;
  v317 = sub_1B03991EC;
  v318 = sub_1B03F7AE0;
  v319 = sub_1B0A2C62C;
  v320 = sub_1B039BC08;
  v321 = sub_1B0398F5C;
  v322 = sub_1B0398F5C;
  v323 = sub_1B03991EC;
  v324 = sub_1B03F7AE0;
  v325 = sub_1B0A2C62C;
  v326 = sub_1B039BC08;
  v327 = sub_1B0398F5C;
  v328 = sub_1B0398F5C;
  v329 = sub_1B03991EC;
  v330 = sub_1B03F7AE0;
  v331 = sub_1B0A2C62C;
  v332 = sub_1B039BC08;
  v333 = sub_1B0398F5C;
  v334 = sub_1B0398F5C;
  v335 = sub_1B03991EC;
  v394 = 0;
  v393 = 0;
  v392 = 0;
  v391 = 0;
  v336 = 0;
  v339 = sub_1B0E439A8();
  v340 = *(v339 - 8);
  v341 = v339 - 8;
  v342 = (*(v340 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v338);
  v343 = &v116[-v342];
  v344 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v345 = &v116[-v344];
  v346 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v347 = &v116[-v346];
  v348 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v349 = &v116[-v348];
  v350 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v351 = &v116[-v350];
  v352 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v353 = &v116[-v352];
  v354 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v355 = &v116[-v354];
  v394 = v15;
  v393 = v16;
  v392 = v2;
  if (v16)
  {
    switch(v337)
    {
      case 1u:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v349);
        v207 = 7;
        v204 = swift_allocObject();
        *(v204 + 16) = v338;

        v206 = 32;
        v59 = swift_allocObject();
        v60 = v204;
        v208 = v59;
        *(v59 + 16) = v312;
        *(v59 + 24) = v60;

        v216 = sub_1B0E43988();
        v217 = sub_1B0E458E8();
        v205 = 17;
        v210 = swift_allocObject();
        *(v210 + 16) = 2;
        v211 = swift_allocObject();
        *(v211 + 16) = 4;
        v61 = swift_allocObject();
        v62 = v208;
        v209 = v61;
        *(v61 + 16) = v313;
        *(v61 + 24) = v62;
        v63 = swift_allocObject();
        v64 = v209;
        v213 = v63;
        *(v63 + 16) = v314;
        *(v63 + 24) = v64;
        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v212 = sub_1B0E46A48();
        v214 = v65;

        v66 = v210;
        v67 = v214;
        *v214 = v315;
        v67[1] = v66;

        v68 = v211;
        v69 = v214;
        v214[2] = v316;
        v69[3] = v68;

        v70 = v213;
        v71 = v214;
        v214[4] = v317;
        v71[5] = v70;
        sub_1B0394964();

        if (os_log_type_enabled(v216, v217))
        {
          v72 = v336;
          v197 = sub_1B0E45D78();
          v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v196 = 0;
          v198 = sub_1B03949A8(0);
          v199 = sub_1B03949A8(v196);
          v200 = &v375;
          v375 = v197;
          v201 = &v374;
          v374 = v198;
          v202 = &v373;
          v373 = v199;
          sub_1B0394A48(0, &v375);
          sub_1B0394A48(1, v200);
          v371 = v315;
          v372 = v210;
          sub_1B03949FC(&v371, v200, v201, v202);
          v203 = v72;
          if (v72)
          {

            __break(1u);
          }

          else
          {
            v371 = v316;
            v372 = v211;
            sub_1B03949FC(&v371, &v375, &v374, &v373);
            v194 = 0;
            v371 = v317;
            v372 = v213;
            sub_1B03949FC(&v371, &v375, &v374, &v373);
            _os_log_impl(&dword_1B0389000, v216, v217, "[%{public}u] Did defer.", v197, 8u);
            v193 = 0;
            sub_1B03998A8(v198);
            sub_1B03998A8(v199);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v216);
        (*(v340 + 8))(v349, v339);
        sub_1B0A330D8(1, 1, v338);
        break;
      case 2u:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v345);
        v157 = 7;
        v154 = swift_allocObject();
        *(v154 + 16) = v338;

        v156 = 32;
        v87 = swift_allocObject();
        v88 = v154;
        v158 = v87;
        *(v87 + 16) = v300;
        *(v87 + 24) = v88;

        v166 = sub_1B0E43988();
        v167 = sub_1B0E458E8();
        v155 = 17;
        v160 = swift_allocObject();
        *(v160 + 16) = 2;
        v161 = swift_allocObject();
        *(v161 + 16) = 4;
        v89 = swift_allocObject();
        v90 = v158;
        v159 = v89;
        *(v89 + 16) = v301;
        *(v89 + 24) = v90;
        v91 = swift_allocObject();
        v92 = v159;
        v163 = v91;
        *(v91 + 16) = v302;
        *(v91 + 24) = v92;
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v162 = sub_1B0E46A48();
        v164 = v93;

        v94 = v160;
        v95 = v164;
        *v164 = v303;
        v95[1] = v94;

        v96 = v161;
        v97 = v164;
        v164[2] = v304;
        v97[3] = v96;

        v98 = v163;
        v99 = v164;
        v164[4] = v305;
        v99[5] = v98;
        sub_1B0394964();

        if (os_log_type_enabled(v166, v167))
        {
          v100 = v336;
          v147 = sub_1B0E45D78();
          v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v146 = 0;
          v148 = sub_1B03949A8(0);
          v149 = sub_1B03949A8(v146);
          v150 = &v385;
          v385 = v147;
          v151 = &v384;
          v384 = v148;
          v152 = &v383;
          v383 = v149;
          sub_1B0394A48(0, &v385);
          sub_1B0394A48(1, v150);
          v381 = v303;
          v382 = v160;
          sub_1B03949FC(&v381, v150, v151, v152);
          v153 = v100;
          if (v100)
          {

            __break(1u);
          }

          else
          {
            v381 = v304;
            v382 = v161;
            sub_1B03949FC(&v381, &v385, &v384, &v383);
            v144 = 0;
            v381 = v305;
            v382 = v163;
            sub_1B03949FC(&v381, &v385, &v384, &v383);
            _os_log_impl(&dword_1B0389000, v166, v167, "[%{public}u] Did not complete. More work.", v147, 8u);
            v143 = 0;
            sub_1B03998A8(v148);
            sub_1B03998A8(v149);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v166);
        (*(v340 + 8))(v345, v339);
        sub_1B0A330D8(3, 1, v338);
        break;
      case 3u:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v347);
        v182 = 7;
        v179 = swift_allocObject();
        *(v179 + 16) = v338;

        v181 = 32;
        v73 = swift_allocObject();
        v74 = v179;
        v183 = v73;
        *(v73 + 16) = v306;
        *(v73 + 24) = v74;

        v191 = sub_1B0E43988();
        v192 = sub_1B0E458E8();
        v180 = 17;
        v185 = swift_allocObject();
        *(v185 + 16) = 2;
        v186 = swift_allocObject();
        *(v186 + 16) = 4;
        v75 = swift_allocObject();
        v76 = v183;
        v184 = v75;
        *(v75 + 16) = v307;
        *(v75 + 24) = v76;
        v77 = swift_allocObject();
        v78 = v184;
        v188 = v77;
        *(v77 + 16) = v308;
        *(v77 + 24) = v78;
        v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v187 = sub_1B0E46A48();
        v189 = v79;

        v80 = v185;
        v81 = v189;
        *v189 = v309;
        v81[1] = v80;

        v82 = v186;
        v83 = v189;
        v189[2] = v310;
        v83[3] = v82;

        v84 = v188;
        v85 = v189;
        v189[4] = v311;
        v85[5] = v84;
        sub_1B0394964();

        if (os_log_type_enabled(v191, v192))
        {
          v86 = v336;
          v172 = sub_1B0E45D78();
          v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v171 = 0;
          v173 = sub_1B03949A8(0);
          v174 = sub_1B03949A8(v171);
          v175 = &v380;
          v380 = v172;
          v176 = &v379;
          v379 = v173;
          v177 = &v378;
          v378 = v174;
          sub_1B0394A48(0, &v380);
          sub_1B0394A48(1, v175);
          v376 = v309;
          v377 = v185;
          sub_1B03949FC(&v376, v175, v176, v177);
          v178 = v86;
          if (v86)
          {

            __break(1u);
          }

          else
          {
            v376 = v310;
            v377 = v186;
            sub_1B03949FC(&v376, &v380, &v379, &v378);
            v169 = 0;
            v376 = v311;
            v377 = v188;
            sub_1B03949FC(&v376, &v380, &v379, &v378);
            _os_log_impl(&dword_1B0389000, v191, v192, "[%{public}u] Currently unavailable.", v172, 8u);
            v168 = 0;
            sub_1B03998A8(v173);
            sub_1B03998A8(v174);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v191);
        (*(v340 + 8))(v347, v339);
        sub_1B0A330D8(6, 1, v338);
        break;
      case 4u:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v351);
        v232 = 7;
        v229 = swift_allocObject();
        *(v229 + 16) = v338;

        v231 = 32;
        v45 = swift_allocObject();
        v46 = v229;
        v233 = v45;
        *(v45 + 16) = v318;
        *(v45 + 24) = v46;

        v241 = sub_1B0E43988();
        v242 = sub_1B0E45908();
        v230 = 17;
        v235 = swift_allocObject();
        *(v235 + 16) = 2;
        v236 = swift_allocObject();
        *(v236 + 16) = 4;
        v47 = swift_allocObject();
        v48 = v233;
        v234 = v47;
        *(v47 + 16) = v319;
        *(v47 + 24) = v48;
        v49 = swift_allocObject();
        v50 = v234;
        v238 = v49;
        *(v49 + 16) = v320;
        *(v49 + 24) = v50;
        v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v237 = sub_1B0E46A48();
        v239 = v51;

        v52 = v235;
        v53 = v239;
        *v239 = v321;
        v53[1] = v52;

        v54 = v236;
        v55 = v239;
        v239[2] = v322;
        v55[3] = v54;

        v56 = v238;
        v57 = v239;
        v239[4] = v323;
        v57[5] = v56;
        sub_1B0394964();

        if (os_log_type_enabled(v241, v242))
        {
          v58 = v336;
          v222 = sub_1B0E45D78();
          v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v221 = 0;
          v223 = sub_1B03949A8(0);
          v224 = sub_1B03949A8(v221);
          v225 = &v370;
          v370 = v222;
          v226 = &v369;
          v369 = v223;
          v227 = &v368;
          v368 = v224;
          sub_1B0394A48(0, &v370);
          sub_1B0394A48(1, v225);
          v366 = v321;
          v367 = v235;
          sub_1B03949FC(&v366, v225, v226, v227);
          v228 = v58;
          if (v58)
          {

            __break(1u);
          }

          else
          {
            v366 = v322;
            v367 = v236;
            sub_1B03949FC(&v366, &v370, &v369, &v368);
            v219 = 0;
            v366 = v323;
            v367 = v238;
            sub_1B03949FC(&v366, &v370, &v369, &v368);
            _os_log_impl(&dword_1B0389000, v241, v242, "[%{public}u] Did complete.", v222, 8u);
            v218 = 0;
            sub_1B03998A8(v223);
            sub_1B03998A8(v224);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v241);
        (*(v340 + 8))(v351, v339);
        [v293 setTaskCompleted];
        break;
      case 5u:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v353);
        v257 = 7;
        v254 = swift_allocObject();
        *(v254 + 16) = v338;

        v256 = 32;
        v31 = swift_allocObject();
        v32 = v254;
        v258 = v31;
        *(v31 + 16) = v324;
        *(v31 + 24) = v32;

        v266 = sub_1B0E43988();
        v267 = sub_1B0E458E8();
        v255 = 17;
        v260 = swift_allocObject();
        *(v260 + 16) = 2;
        v261 = swift_allocObject();
        *(v261 + 16) = 4;
        v33 = swift_allocObject();
        v34 = v258;
        v259 = v33;
        *(v33 + 16) = v325;
        *(v33 + 24) = v34;
        v35 = swift_allocObject();
        v36 = v259;
        v263 = v35;
        *(v35 + 16) = v326;
        *(v35 + 24) = v36;
        v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v262 = sub_1B0E46A48();
        v264 = v37;

        v38 = v260;
        v39 = v264;
        *v264 = v327;
        v39[1] = v38;

        v40 = v261;
        v41 = v264;
        v264[2] = v328;
        v41[3] = v40;

        v42 = v263;
        v43 = v264;
        v264[4] = v329;
        v43[5] = v42;
        sub_1B0394964();

        if (os_log_type_enabled(v266, v267))
        {
          v44 = v336;
          v247 = sub_1B0E45D78();
          v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v246 = 0;
          v248 = sub_1B03949A8(0);
          v249 = sub_1B03949A8(v246);
          v250 = &v365;
          v365 = v247;
          v251 = &v364;
          v364 = v248;
          v252 = &v363;
          v363 = v249;
          sub_1B0394A48(0, &v365);
          sub_1B0394A48(1, v250);
          v361 = v327;
          v362 = v260;
          sub_1B03949FC(&v361, v250, v251, v252);
          v253 = v44;
          if (v44)
          {

            __break(1u);
          }

          else
          {
            v361 = v328;
            v362 = v261;
            sub_1B03949FC(&v361, &v365, &v364, &v363);
            v244 = 0;
            v361 = v329;
            v362 = v263;
            sub_1B03949FC(&v361, &v365, &v364, &v363);
            _os_log_impl(&dword_1B0389000, v266, v267, "[%{public}u] Did expire.", v247, 8u);
            v243 = 0;
            sub_1B03998A8(v248);
            sub_1B03998A8(v249);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v266);
        (*(v340 + 8))(v353, v339);
        sub_1B0A330D8(5, 0, v338);
        break;
      default:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v343);
        v132 = 7;
        v129 = swift_allocObject();
        *(v129 + 16) = v338;

        v131 = 32;
        v101 = swift_allocObject();
        v102 = v129;
        v133 = v101;
        *(v101 + 16) = v294;
        *(v101 + 24) = v102;

        v141 = sub_1B0E43988();
        v142 = sub_1B0E458E8();
        v130 = 17;
        v135 = swift_allocObject();
        *(v135 + 16) = 2;
        v136 = swift_allocObject();
        *(v136 + 16) = 4;
        v103 = swift_allocObject();
        v104 = v133;
        v134 = v103;
        *(v103 + 16) = v295;
        *(v103 + 24) = v104;
        v105 = swift_allocObject();
        v106 = v134;
        v138 = v105;
        *(v105 + 16) = v296;
        *(v105 + 24) = v106;
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v137 = sub_1B0E46A48();
        v139 = v107;

        v108 = v135;
        v109 = v139;
        *v139 = v297;
        v109[1] = v108;

        v110 = v136;
        v111 = v139;
        v139[2] = v298;
        v111[3] = v110;

        v112 = v138;
        v113 = v139;
        v139[4] = v299;
        v113[5] = v112;
        sub_1B0394964();

        if (os_log_type_enabled(v141, v142))
        {
          v114 = v336;
          v122 = sub_1B0E45D78();
          v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v121 = 0;
          v123 = sub_1B03949A8(0);
          v124 = sub_1B03949A8(v121);
          v125 = &v390;
          v390 = v122;
          v126 = &v389;
          v389 = v123;
          v127 = &v388;
          v388 = v124;
          sub_1B0394A48(0, &v390);
          sub_1B0394A48(1, v125);
          v386 = v297;
          v387 = v135;
          sub_1B03949FC(&v386, v125, v126, v127);
          v128 = v114;
          if (v114)
          {

            __break(1u);
          }

          else
          {
            v386 = v298;
            v387 = v136;
            sub_1B03949FC(&v386, &v390, &v389, &v388);
            v119 = 0;
            v386 = v299;
            v387 = v138;
            sub_1B03949FC(&v386, &v390, &v389, &v388);
            _os_log_impl(&dword_1B0389000, v141, v142, "[%{public}u] didComplete() called multiple times.", v122, 8u);
            v118 = 0;
            sub_1B03998A8(v123);
            sub_1B03998A8(v124);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v141);
        (*(v340 + 8))(v343, v339);
        break;
    }
  }

  else
  {
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v355);
    v282 = 7;
    v279 = swift_allocObject();
    *(v279 + 16) = v338;

    v281 = 32;
    v17 = swift_allocObject();
    v18 = v279;
    v283 = v17;
    *(v17 + 16) = v330;
    *(v17 + 24) = v18;

    v291 = sub_1B0E43988();
    v292 = sub_1B0E458E8();
    v280 = 17;
    v285 = swift_allocObject();
    *(v285 + 16) = 2;
    v286 = swift_allocObject();
    *(v286 + 16) = 4;
    v19 = swift_allocObject();
    v20 = v283;
    v284 = v19;
    *(v19 + 16) = v331;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v284;
    v288 = v21;
    *(v21 + 16) = v332;
    *(v21 + 24) = v22;
    v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v287 = sub_1B0E46A48();
    v289 = v23;

    v24 = v285;
    v25 = v289;
    *v289 = v333;
    v25[1] = v24;

    v26 = v286;
    v27 = v289;
    v289[2] = v334;
    v27[3] = v26;

    v28 = v288;
    v29 = v289;
    v289[4] = v335;
    v29[5] = v28;
    sub_1B0394964();

    if (os_log_type_enabled(v291, v292))
    {
      v30 = v336;
      v272 = sub_1B0E45D78();
      v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v271 = 0;
      v273 = sub_1B03949A8(0);
      v274 = sub_1B03949A8(v271);
      v275 = &v360;
      v360 = v272;
      v276 = &v359;
      v359 = v273;
      v277 = &v358;
      v358 = v274;
      sub_1B0394A48(0, &v360);
      sub_1B0394A48(1, v275);
      v356 = v333;
      v357 = v285;
      sub_1B03949FC(&v356, v275, v276, v277);
      v278 = v30;
      if (v30)
      {

        __break(1u);
      }

      else
      {
        v356 = v334;
        v357 = v286;
        sub_1B03949FC(&v356, &v360, &v359, &v358);
        v269 = 0;
        v356 = v335;
        v357 = v288;
        sub_1B03949FC(&v356, &v360, &v359, &v358);
        _os_log_impl(&dword_1B0389000, v291, v292, "[%{public}u] Did fail.", v272, 8u);
        v268 = 0;
        sub_1B03998A8(v273);
        sub_1B03998A8(v274);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v291);
    (*(v340 + 8))(v355, v339);
    sub_1B0A330D8(12, 1, v338);
  }

  v117 = sub_1B0971120(v337, 1) || sub_1B0971120(v337, 2);
  v391 = v117;
  return sub_1B0A34A40(v117);
}

void sub_1B0A330D8(uint64_t a1, int a2, int a3)
{
  v173 = a1;
  v172 = a2;
  v171 = a3;
  v143 = sub_1B03F7AE0;
  v144 = sub_1B0A2C62C;
  v145 = sub_1B039BC08;
  v146 = sub_1B0A1F568;
  v147 = sub_1B074E950;
  v148 = sub_1B07135E4;
  v149 = sub_1B070B324;
  v150 = sub_1B0398F5C;
  v151 = sub_1B0398F5C;
  v152 = sub_1B03991EC;
  v153 = sub_1B0398F5C;
  v154 = sub_1B0398F5C;
  v155 = sub_1B074E9C8;
  v156 = sub_1B0398F5C;
  v157 = sub_1B0398F5C;
  v158 = sub_1B070B4B4;
  v159 = sub_1B03F7AE0;
  v160 = sub_1B0A2C62C;
  v161 = sub_1B039BC08;
  v162 = sub_1B0A1F568;
  v163 = sub_1B074E950;
  v164 = sub_1B0398F5C;
  v165 = sub_1B0398F5C;
  v166 = sub_1B03991EC;
  v167 = sub_1B0398F5C;
  v168 = sub_1B0398F5C;
  v169 = sub_1B074E9C8;
  v203 = *MEMORY[0x1E69E9840];
  v201 = 0;
  v202 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v170 = 0;
  v191 = 0;
  v174 = sub_1B0E439A8();
  v175 = *(v174 - 8);
  v176 = v174 - 8;
  v177 = (*(v175 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v173);
  v178 = v73 - v177;
  v179 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v180 = v73 - v179;
  v201 = v6;
  v202 = v7 & 1;
  v195 = v8;
  v194 = v3;
  sub_1B0A355B4(v6, v7 & 1);
  v182 = v9;
  v193 = v9;
  v200 = 0;
  v192 = 0;
  v184 = [v181 setTaskExpiredWithRetryAfter:&v192 error:?];
  v183 = v192;
  MEMORY[0x1E69E5928](v192);
  v10 = v200;
  v200 = v183;
  MEMORY[0x1E69E5920](v10);
  if (v184)
  {
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v180);
    v129 = 7;
    v124 = swift_allocObject();
    *(v124 + 16) = v171;

    v128 = 32;
    v11 = swift_allocObject();
    v12 = v124;
    v125 = v11;
    *(v11 + 16) = v159;
    *(v11 + 24) = v12;

    v130 = swift_allocObject();
    *(v130 + 16) = v182;
    v141 = sub_1B0E43988();
    v142 = sub_1B0E45908();
    v127 = 17;
    v132 = swift_allocObject();
    *(v132 + 16) = 2;
    v133 = swift_allocObject();
    *(v133 + 16) = 4;
    v13 = swift_allocObject();
    v14 = v125;
    v126 = v13;
    *(v13 + 16) = v160;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v126;
    v134 = v15;
    *(v15 + 16) = v161;
    *(v15 + 24) = v16;
    v135 = swift_allocObject();
    *(v135 + 16) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = 8;
    v17 = swift_allocObject();
    v18 = v130;
    v131 = v17;
    *(v17 + 16) = v162;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v131;
    v138 = v19;
    *(v19 + 16) = v163;
    *(v19 + 24) = v20;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v137 = sub_1B0E46A48();
    v139 = v21;

    v22 = v132;
    v23 = v139;
    *v139 = v164;
    v23[1] = v22;

    v24 = v133;
    v25 = v139;
    v139[2] = v165;
    v25[3] = v24;

    v26 = v134;
    v27 = v139;
    v139[4] = v166;
    v27[5] = v26;

    v28 = v135;
    v29 = v139;
    v139[6] = v167;
    v29[7] = v28;

    v30 = v136;
    v31 = v139;
    v139[8] = v168;
    v31[9] = v30;

    v32 = v138;
    v33 = v139;
    v139[10] = v169;
    v33[11] = v32;
    sub_1B0394964();

    if (os_log_type_enabled(v141, v142))
    {
      v34 = v170;
      v117 = sub_1B0E45D78();
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v116 = 0;
      v118 = sub_1B03949A8(0);
      v119 = sub_1B03949A8(v116);
      v120 = &v187;
      v187 = v117;
      v121 = &v197;
      v197 = v118;
      v122 = &v196;
      v196 = v119;
      sub_1B0394A48(0, &v187);
      sub_1B0394A48(2, v120);
      v185 = v164;
      v186 = v132;
      sub_1B03949FC(&v185, v120, v121, v122);
      v123 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {
        v185 = v165;
        v186 = v133;
        sub_1B03949FC(&v185, &v187, &v197, &v196);
        v114 = 0;
        v185 = v166;
        v186 = v134;
        sub_1B03949FC(&v185, &v187, &v197, &v196);
        v113 = 0;
        v185 = v167;
        v186 = v135;
        sub_1B03949FC(&v185, &v187, &v197, &v196);
        v112 = 0;
        v185 = v168;
        v186 = v136;
        sub_1B03949FC(&v185, &v187, &v197, &v196);
        v111 = 0;
        v185 = v169;
        v186 = v138;
        sub_1B03949FC(&v185, &v187, &v197, &v196);
        _os_log_impl(&dword_1B0389000, v141, v142, "[%{public}u] Did request retry after %f s.", v117, 0x12u);
        v110 = 0;
        sub_1B03998A8(v118);
        sub_1B03998A8(v119);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v141);
    (*(v175 + 8))(v180, v174);
  }

  else
  {
    v81 = v200;
    v85 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v81);
    swift_willThrow();
    v82 = 0;
    v35 = v85;
    v191 = v85;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v178);
    v93 = 7;
    v83 = swift_allocObject();
    *(v83 + 16) = v171;

    v92 = 32;
    v36 = swift_allocObject();
    v37 = v83;
    v86 = v36;
    *(v36 + 16) = v143;
    *(v36 + 24) = v37;

    v84 = 24;
    v38 = swift_allocObject();
    v39 = v85;
    v88 = v38;
    *(v38 + 16) = v182;
    v40 = v39;
    v94 = swift_allocObject();
    *(v94 + 16) = v85;
    v108 = sub_1B0E43988();
    v109 = sub_1B0E458E8();
    v90 = 17;
    v96 = swift_allocObject();
    *(v96 + 16) = 2;
    v97 = swift_allocObject();
    *(v97 + 16) = 4;
    v41 = swift_allocObject();
    v42 = v86;
    v87 = v41;
    *(v41 + 16) = v144;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v87;
    v98 = v43;
    *(v43 + 16) = v145;
    *(v43 + 24) = v44;
    v99 = swift_allocObject();
    *(v99 + 16) = 0;
    v100 = swift_allocObject();
    v91 = 8;
    *(v100 + 16) = 8;
    v45 = swift_allocObject();
    v46 = v88;
    v89 = v45;
    *(v45 + 16) = v146;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v89;
    v101 = v47;
    *(v47 + 16) = v147;
    *(v47 + 24) = v48;
    v102 = swift_allocObject();
    *(v102 + 16) = 64;
    v103 = swift_allocObject();
    *(v103 + 16) = v91;
    v49 = swift_allocObject();
    v50 = v94;
    v95 = v49;
    *(v49 + 16) = v148;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v95;
    v105 = v51;
    *(v51 + 16) = v149;
    *(v51 + 24) = v52;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v104 = sub_1B0E46A48();
    v106 = v53;

    v54 = v96;
    v55 = v106;
    *v106 = v150;
    v55[1] = v54;

    v56 = v97;
    v57 = v106;
    v106[2] = v151;
    v57[3] = v56;

    v58 = v98;
    v59 = v106;
    v106[4] = v152;
    v59[5] = v58;

    v60 = v99;
    v61 = v106;
    v106[6] = v153;
    v61[7] = v60;

    v62 = v100;
    v63 = v106;
    v106[8] = v154;
    v63[9] = v62;

    v64 = v101;
    v65 = v106;
    v106[10] = v155;
    v65[11] = v64;

    v66 = v102;
    v67 = v106;
    v106[12] = v156;
    v67[13] = v66;

    v68 = v103;
    v69 = v106;
    v106[14] = v157;
    v69[15] = v68;

    v70 = v105;
    v71 = v106;
    v106[16] = v158;
    v71[17] = v70;
    sub_1B0394964();

    if (os_log_type_enabled(v108, v109))
    {
      v72 = v82;
      v74 = sub_1B0E45D78();
      v73[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v75 = sub_1B03949A8(1);
      v76 = sub_1B03949A8(0);
      v77 = &v190;
      v190 = v74;
      v78 = &v199;
      v199 = v75;
      v79 = &v198;
      v198 = v76;
      sub_1B0394A48(2, &v190);
      sub_1B0394A48(3, v77);
      v188 = v150;
      v189 = v96;
      sub_1B03949FC(&v188, v77, v78, v79);
      v80 = v72;
      if (v72)
      {

        __break(1u);
      }

      else
      {
        v188 = v151;
        v189 = v97;
        sub_1B03949FC(&v188, &v190, &v199, &v198);
        v73[6] = 0;
        v188 = v152;
        v189 = v98;
        sub_1B03949FC(&v188, &v190, &v199, &v198);
        v73[5] = 0;
        v188 = v153;
        v189 = v99;
        sub_1B03949FC(&v188, &v190, &v199, &v198);
        v73[4] = 0;
        v188 = v154;
        v189 = v100;
        sub_1B03949FC(&v188, &v190, &v199, &v198);
        v73[3] = 0;
        v188 = v155;
        v189 = v101;
        sub_1B03949FC(&v188, &v190, &v199, &v198);
        v73[2] = 0;
        v188 = v156;
        v189 = v102;
        sub_1B03949FC(&v188, &v190, &v199, &v198);
        v73[1] = 0;
        v188 = v157;
        v189 = v103;
        sub_1B03949FC(&v188, &v190, &v199, &v198);
        v73[0] = 0;
        v188 = v158;
        v189 = v105;
        sub_1B03949FC(&v188, &v190, &v199, &v198);
        _os_log_impl(&dword_1B0389000, v108, v109, "[%{public}u] Failed to request retry after %f s: %@", v74, 0x1Cu);
        sub_1B03998A8(v75);
        sub_1B03998A8(v76);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v108);
    (*(v175 + 8))(v178, v174);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0A34A40(unsigned int a1)
{
  v94 = a1;
  v78 = sub_1B07135E4;
  v79 = sub_1B070B324;
  v80 = sub_1B0398F5C;
  v81 = sub_1B0398F5C;
  v82 = sub_1B070B4B4;
  v124 = *MEMORY[0x1E69E9840];
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v116 = 0;
  v88 = 0;
  v83 = sub_1B0E439A8();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v87 = v54 - v86;
  v90 = 1;
  v120 = v2 & 1;
  v119 = v1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C88, &unk_1B0EA3630);
  v98 = sub_1B0E46A48();
  v96 = v3;
  v103 = *MEMORY[0x1E698E4D8];
  MEMORY[0x1E69E5928](v103);
  v4 = sub_1B0E44AD8();
  v5 = v96;
  *v96 = v4;
  v5[1] = v6;
  v95 = sub_1B039A494();
  v7 = sub_1B041A060(302);
  v8 = v96;
  v96[5] = v95;
  v8[2] = v7;
  v102 = *MEMORY[0x1E698E4F0];
  MEMORY[0x1E69E5928](v102);
  v9 = sub_1B0E44AD8();
  v10 = v96;
  v11 = v9;
  v12 = v89;
  v96[6] = v11;
  v10[7] = v13;
  v101 = [v12 identifier];
  v14 = sub_1B0E44AD8();
  v15 = v96;
  v105 = MEMORY[0x1E69E6158];
  v96[11] = MEMORY[0x1E69E6158];
  v15[8] = v14;
  v15[9] = v16;
  v100 = *MEMORY[0x1E698E4E0];
  MEMORY[0x1E69E5928](v100);
  v17 = sub_1B0E44AD8();
  v18 = v96;
  v96[12] = v17;
  v18[13] = v19;
  v92 = sub_1B0E46A48();
  v91 = v20;
  v21 = sub_1B0E44838();
  v22 = v91;
  v23 = v21;
  v24 = v92;
  *v91 = v23;
  v22[1] = v25;
  sub_1B0394964();
  v93 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  v27 = v96;
  v28 = v26;
  v29 = v93;
  v96[17] = v28;
  v27[14] = v29;
  v99 = *MEMORY[0x1E698E4E8];
  MEMORY[0x1E69E5928](v99);
  v30 = sub_1B0E44AD8();
  v31 = v96;
  v32 = v30;
  LOBYTE(v30) = v94;
  v96[18] = v32;
  v31[19] = v33;
  v34 = sub_1B0A38BD8(v30 & 1);
  v35 = v96;
  v36 = v34;
  v37 = v98;
  v96[23] = v95;
  v35[20] = v36;
  sub_1B0394964();
  v104 = v37;
  MEMORY[0x1E69E5920](v99);
  MEMORY[0x1E69E5920](v100);
  MEMORY[0x1E69E5920](v101);
  MEMORY[0x1E69E5920](v102);
  MEMORY[0x1E69E5920](v103);
  v106 = MEMORY[0x1E69E7CA0] + 8;
  v107 = MEMORY[0x1E69E6168];
  v108 = sub_1B0E445D8();
  v118 = v108;
  v123 = 0;
  v111 = [objc_opt_self() sharedScheduler];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v110 = sub_1B0E44598();

  v117 = v123;
  v112 = [v111 taskStoppedWithParameters:v110 error:&v117];
  v109 = v117;
  MEMORY[0x1E69E5928](v117);
  v38 = v123;
  v123 = v109;
  MEMORY[0x1E69E5920](v38);
  MEMORY[0x1E69E5920](v110);
  MEMORY[0x1E69E5920](v111);
  if ((v112 & 1) == 0)
  {
    v62 = v123;
    v64 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v62);
    swift_willThrow();
    v63 = 0;
    v40 = v64;
    v116 = v64;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v87);
    v41 = v64;
    v67 = 7;
    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v76 = sub_1B0E43988();
    v77 = sub_1B0E458E8();
    v65 = 17;
    v70 = swift_allocObject();
    *(v70 + 16) = 64;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v66 = 32;
    v42 = swift_allocObject();
    v43 = v68;
    v69 = v42;
    *(v42 + 16) = v78;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v69;
    v73 = v44;
    *(v44 + 16) = v79;
    *(v44 + 24) = v45;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v72 = sub_1B0E46A48();
    v74 = v46;

    v47 = v70;
    v48 = v74;
    *v74 = v80;
    v48[1] = v47;

    v49 = v71;
    v50 = v74;
    v74[2] = v81;
    v50[3] = v49;

    v51 = v73;
    v52 = v74;
    v74[4] = v82;
    v52[5] = v51;
    sub_1B0394964();

    if (os_log_type_enabled(v76, v77))
    {
      v53 = v63;
      v55 = sub_1B0E45D78();
      v54[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v56 = sub_1B03949A8(1);
      v57 = sub_1B03949A8(0);
      v58 = &v115;
      v115 = v55;
      v59 = &v122;
      v122 = v56;
      v60 = &v121;
      v121 = v57;
      sub_1B0394A48(2, &v115);
      sub_1B0394A48(1, v58);
      v113 = v80;
      v114 = v70;
      sub_1B03949FC(&v113, v58, v59, v60);
      v61 = v53;
      if (v53)
      {

        __break(1u);
      }

      else
      {
        v113 = v81;
        v114 = v71;
        sub_1B03949FC(&v113, &v115, &v122, &v121);
        v54[1] = 0;
        v113 = v82;
        v114 = v73;
        sub_1B03949FC(&v113, &v115, &v122, &v121);
        _os_log_impl(&dword_1B0389000, v76, v77, "Failed to report taskStopped: %@", v55, 0xCu);
        sub_1B03998A8(v56);
        sub_1B03998A8(v57);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v76);
    (*(v84 + 8))(v87, v83);
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0A355B4(uint64_t result, char a2)
{
  if (a2)
  {
    if (result < 0)
    {
      v6 = 0;
      v7 = 1;
    }

    else
    {
      v6 = result;
      v7 = 0;
    }

    if (v7)
    {
      v2 = 0;
    }

    else
    {
      v2 = v6;
    }

    if (is_mul_ok(v2, 0x3CuLL))
    {
      if (is_mul_ok(60 * v2, 0x3CuLL))
      {
LABEL_18:
        sub_1B041A044();
        sub_1B0E46B68();
        sub_1B041A044();
        sub_1B0E46B78();
        sub_1B0912230();
        return sub_1B0E453D8();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (result < 0)
    {
      v4 = 0;
      v5 = 1;
    }

    else
    {
      v4 = result;
      v5 = 0;
    }

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v4;
    }

    if (is_mul_ok(v3, 0x3CuLL))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0A35904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v148 = a1;
  v146 = a2;
  v133 = a3;
  v134 = a4;
  v117 = sub_1B07135E4;
  v118 = sub_1B070B324;
  v119 = sub_1B0398F5C;
  v120 = sub_1B0398F5C;
  v121 = sub_1B070B4B4;
  v122 = sub_1B0A39C00;
  v123 = sub_1B03B0DF8;
  v124 = sub_1B0A39C14;
  v125 = sub_1B03B0DF8;
  v126 = sub_1B0398F5C;
  v127 = sub_1B0398F5C;
  v128 = sub_1B0399260;
  v129 = sub_1B0398F5C;
  v130 = sub_1B0398F5C;
  v131 = sub_1B0399260;
  v180 = *MEMORY[0x1E69E9840];
  v173 = 0u;
  v174 = 0u;
  v172 = 0;
  v171 = 0;
  v132 = 0;
  v169 = 0;
  v145 = 0;
  v135 = sub_1B0E439A8();
  v136 = *(v135 - 8);
  v137 = v135 - 8;
  v139 = *(v136 + 64);
  v138 = (v139 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v140 = v59 - v138;
  v141 = v138;
  MEMORY[0x1EEE9AC00](v5);
  v142 = v59 - v141;
  *&v173 = v6;
  *(&v173 + 1) = v7;
  *&v174 = v8;
  *(&v174 + 1) = v9;
  v172 = v4;
  v149 = sub_1B0A39B9C();
  v143 = 0x1FB55D000uLL;
  v158 = [v144 0x1FB55D678];
  v156 = sub_1B0E44AD8();
  v150 = v10;
  v157 = [v144 (v143 + 1656)];
  v151 = sub_1B0E44AD8();
  v152 = v11;
  v147 = sub_1B039A494();
  v12 = qos_class_self();
  v153 = sub_1B074A93C(v12);
  v154 = sub_1B041A060(3600);
  v155 = sub_1B041A060(v146);
  v13 = sub_1B041A060(v148);
  v159 = sub_1B0A38B34(v156, v150, v151, v152, v153, 30, v154, v155, v13);
  MEMORY[0x1E69E5920](v157);
  MEMORY[0x1E69E5920](v158);
  v171 = v159;
  v179 = 0;
  v161 = [objc_opt_self() sharedScheduler];
  v170 = v179;
  v162 = [v161 reportProgressMetrics:v159 error:&v170];
  v160 = v170;
  MEMORY[0x1E69E5928](v170);
  v14 = v179;
  v179 = v160;
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v161);
  if (v162)
  {
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v142);
    v97 = 48;
    v103 = 7;
    v15 = swift_allocObject();
    v16 = v146;
    v17 = v133;
    v18 = v134;
    v98 = v15;
    v15[2] = v148;
    v15[3] = v16;
    v15[4] = v17;
    v15[5] = v18;
    v19 = swift_allocObject();
    v20 = v146;
    v21 = v133;
    v22 = v134;
    v104 = v19;
    v19[2] = v148;
    v19[3] = v20;
    v19[4] = v21;
    v19[5] = v22;
    v115 = sub_1B0E43988();
    v116 = sub_1B0E458C8();
    v100 = 17;
    v106 = swift_allocObject();
    *(v106 + 16) = 0;
    v107 = swift_allocObject();
    v101 = 8;
    *(v107 + 16) = 8;
    v102 = 32;
    v23 = swift_allocObject();
    v24 = v98;
    v99 = v23;
    *(v23 + 16) = v122;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v99;
    v108 = v25;
    *(v25 + 16) = v123;
    *(v25 + 24) = v26;
    v109 = swift_allocObject();
    *(v109 + 16) = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v101;
    v27 = swift_allocObject();
    v28 = v104;
    v105 = v27;
    *(v27 + 16) = v124;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v105;
    v112 = v29;
    *(v29 + 16) = v125;
    *(v29 + 24) = v30;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v111 = sub_1B0E46A48();
    v113 = v31;

    v32 = v106;
    v33 = v113;
    *v113 = v126;
    v33[1] = v32;

    v34 = v107;
    v35 = v113;
    v113[2] = v127;
    v35[3] = v34;

    v36 = v108;
    v37 = v113;
    v113[4] = v128;
    v37[5] = v36;

    v38 = v109;
    v39 = v113;
    v113[6] = v129;
    v39[7] = v38;

    v40 = v110;
    v41 = v113;
    v113[8] = v130;
    v41[9] = v40;

    v42 = v112;
    v43 = v113;
    v113[10] = v131;
    v43[11] = v42;
    sub_1B0394964();

    if (os_log_type_enabled(v115, v116))
    {
      v44 = v132;
      v90 = sub_1B0E45D78();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v89 = 0;
      v91 = sub_1B03949A8(0);
      v92 = sub_1B03949A8(v89);
      v93 = &v165;
      v165 = v90;
      v94 = &v176;
      v176 = v91;
      v95 = &v175;
      v175 = v92;
      sub_1B0394A48(0, &v165);
      sub_1B0394A48(2, v93);
      v163 = v126;
      v164 = v106;
      sub_1B03949FC(&v163, v93, v94, v95);
      v96 = v44;
      if (v44)
      {

        __break(1u);
      }

      else
      {
        v163 = v127;
        v164 = v107;
        sub_1B03949FC(&v163, &v165, &v176, &v175);
        v87 = 0;
        v163 = v128;
        v164 = v108;
        sub_1B03949FC(&v163, &v165, &v176, &v175);
        v86 = 0;
        v163 = v129;
        v164 = v109;
        sub_1B03949FC(&v163, &v165, &v176, &v175);
        v85 = 0;
        v163 = v130;
        v164 = v110;
        sub_1B03949FC(&v163, &v165, &v176, &v175);
        v84 = 0;
        v163 = v131;
        v164 = v112;
        sub_1B03949FC(&v163, &v165, &v176, &v175);
        _os_log_impl(&dword_1B0389000, v115, v116, "Reported progress metrics. completed: %ld/%ld)", v90, 0x16u);
        v83 = 0;
        sub_1B03998A8(v91);
        sub_1B03998A8(v92);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v115);
    (*(v136 + 8))(v142, v135);
    MEMORY[0x1E69E5920](v159);
  }

  else
  {
    v67 = v179;
    v69 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v67);
    swift_willThrow();
    v68 = 0;
    MEMORY[0x1E69E5920](v159);
    v45 = v69;
    v169 = v69;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v140);
    v46 = v69;
    v72 = 7;
    v73 = swift_allocObject();
    *(v73 + 16) = v69;
    v81 = sub_1B0E43988();
    v82 = sub_1B0E458E8();
    v70 = 17;
    v75 = swift_allocObject();
    *(v75 + 16) = 64;
    v76 = swift_allocObject();
    *(v76 + 16) = 8;
    v71 = 32;
    v47 = swift_allocObject();
    v48 = v73;
    v74 = v47;
    *(v47 + 16) = v117;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v74;
    v78 = v49;
    *(v49 + 16) = v118;
    *(v49 + 24) = v50;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v77 = sub_1B0E46A48();
    v79 = v51;

    v52 = v75;
    v53 = v79;
    *v79 = v119;
    v53[1] = v52;

    v54 = v76;
    v55 = v79;
    v79[2] = v120;
    v55[3] = v54;

    v56 = v78;
    v57 = v79;
    v79[4] = v121;
    v57[5] = v56;
    sub_1B0394964();

    if (os_log_type_enabled(v81, v82))
    {
      v58 = v68;
      v60 = sub_1B0E45D78();
      v59[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v61 = sub_1B03949A8(1);
      v62 = sub_1B03949A8(0);
      v63 = &v168;
      v168 = v60;
      v64 = &v178;
      v178 = v61;
      v65 = &v177;
      v177 = v62;
      sub_1B0394A48(2, &v168);
      sub_1B0394A48(1, v63);
      v166 = v119;
      v167 = v75;
      sub_1B03949FC(&v166, v63, v64, v65);
      v66 = v58;
      if (v58)
      {

        __break(1u);
      }

      else
      {
        v166 = v120;
        v167 = v76;
        sub_1B03949FC(&v166, &v168, &v178, &v177);
        v59[0] = 0;
        v166 = v121;
        v167 = v78;
        sub_1B03949FC(&v166, &v168, &v178, &v177);
        _os_log_impl(&dword_1B0389000, v81, v82, "Failed to report progress metrics: %@", v60, 0xCu);
        sub_1B03998A8(v61);
        sub_1B03998A8(v62);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v81);
    (*(v136 + 8))(v140, v135);
  }

  *MEMORY[0x1E69E9840];
}

void sub_1B0A36D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v141 = a1;
  v133 = a2;
  v131 = a3;
  v132 = a4;
  v142 = 0;
  v115 = sub_1B07135E4;
  v116 = sub_1B070B324;
  v117 = sub_1B0398F5C;
  v118 = sub_1B0398F5C;
  v119 = sub_1B070B4B4;
  v120 = sub_1B0A39C14;
  v121 = sub_1B03B0DF8;
  v122 = sub_1B0A39C28;
  v123 = sub_1B03B0DF8;
  v124 = sub_1B0398F5C;
  v125 = sub_1B0398F5C;
  v126 = sub_1B0399260;
  v127 = sub_1B0398F5C;
  v128 = sub_1B0398F5C;
  v129 = sub_1B0399260;
  v162 = *MEMORY[0x1E69E9840];
  v155 = 0u;
  v156 = 0u;
  v154 = 0;
  v130 = 0;
  v152 = 0;
  v134 = sub_1B0E439A8();
  v135 = *(v134 - 8);
  v136 = v134 - 8;
  v137 = (*(v135 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v141);
  v138 = v57 - v137;
  v139 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v140 = v57 - v139;
  *&v155 = v7;
  *(&v155 + 1) = v8;
  *&v156 = v9;
  *(&v156 + 1) = v10;
  v154 = v4;
  v161 = 0;
  v11 = IndexingStatistics.fractionCompletedAsInt.getter(v7, v8);
  v153 = v161;
  v145 = [v143 reportTaskWorkloadProgress:v141 completed:v11 category:30 subCategory:v142 error:&v153];
  v144 = v153;
  MEMORY[0x1E69E5928](v153);
  v12 = v161;
  v161 = v144;
  MEMORY[0x1E69E5920](v12);
  if (v145)
  {
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v140);
    v95 = 48;
    v101 = 7;
    v13 = swift_allocObject();
    v14 = v133;
    v15 = v131;
    v16 = v132;
    v96 = v13;
    v13[2] = v141;
    v13[3] = v14;
    v13[4] = v15;
    v13[5] = v16;
    v17 = swift_allocObject();
    v18 = v133;
    v19 = v131;
    v20 = v132;
    v102 = v17;
    v17[2] = v141;
    v17[3] = v18;
    v17[4] = v19;
    v17[5] = v20;
    v113 = sub_1B0E43988();
    v114 = sub_1B0E458C8();
    v98 = 17;
    v104 = swift_allocObject();
    *(v104 + 16) = 0;
    v105 = swift_allocObject();
    v99 = 8;
    *(v105 + 16) = 8;
    v100 = 32;
    v21 = swift_allocObject();
    v22 = v96;
    v97 = v21;
    *(v21 + 16) = v120;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v97;
    v106 = v23;
    *(v23 + 16) = v121;
    *(v23 + 24) = v24;
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    v108 = swift_allocObject();
    *(v108 + 16) = v99;
    v25 = swift_allocObject();
    v26 = v102;
    v103 = v25;
    *(v25 + 16) = v122;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v103;
    v110 = v27;
    *(v27 + 16) = v123;
    *(v27 + 24) = v28;
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v109 = sub_1B0E46A48();
    v111 = v29;

    v30 = v104;
    v31 = v111;
    *v111 = v124;
    v31[1] = v30;

    v32 = v105;
    v33 = v111;
    v111[2] = v125;
    v33[3] = v32;

    v34 = v106;
    v35 = v111;
    v111[4] = v126;
    v35[5] = v34;

    v36 = v107;
    v37 = v111;
    v111[6] = v127;
    v37[7] = v36;

    v38 = v108;
    v39 = v111;
    v111[8] = v128;
    v39[9] = v38;

    v40 = v110;
    v41 = v111;
    v111[10] = v129;
    v41[11] = v40;
    sub_1B0394964();

    if (os_log_type_enabled(v113, v114))
    {
      v42 = v130;
      v88 = sub_1B0E45D78();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v87 = 0;
      v89 = sub_1B03949A8(0);
      v90 = sub_1B03949A8(v87);
      v91 = &v148;
      v148 = v88;
      v92 = &v158;
      v158 = v89;
      v93 = &v157;
      v157 = v90;
      sub_1B0394A48(0, &v148);
      sub_1B0394A48(2, v91);
      v146 = v124;
      v147 = v104;
      sub_1B03949FC(&v146, v91, v92, v93);
      v94 = v42;
      if (v42)
      {

        __break(1u);
      }

      else
      {
        v146 = v125;
        v147 = v105;
        sub_1B03949FC(&v146, &v148, &v158, &v157);
        v85 = 0;
        v146 = v126;
        v147 = v106;
        sub_1B03949FC(&v146, &v148, &v158, &v157);
        v84 = 0;
        v146 = v127;
        v147 = v107;
        sub_1B03949FC(&v146, &v148, &v158, &v157);
        v83 = 0;
        v146 = v128;
        v147 = v108;
        sub_1B03949FC(&v146, &v148, &v158, &v157);
        v82 = 0;
        v146 = v129;
        v147 = v110;
        sub_1B03949FC(&v146, &v148, &v158, &v157);
        _os_log_impl(&dword_1B0389000, v113, v114, "Reported task workload progress (total: %ld, completed: %ld%%)", v88, 0x16u);
        v81 = 0;
        sub_1B03998A8(v89);
        sub_1B03998A8(v90);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v113);
    (*(v135 + 8))(v140, v134);
  }

  else
  {
    v65 = v161;
    v67 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v65);
    swift_willThrow();
    v66 = 0;
    v43 = v67;
    v152 = v67;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v138);
    v44 = v67;
    v70 = 7;
    v71 = swift_allocObject();
    *(v71 + 16) = v67;
    v79 = sub_1B0E43988();
    v80 = sub_1B0E458E8();
    v68 = 17;
    v73 = swift_allocObject();
    *(v73 + 16) = 64;
    v74 = swift_allocObject();
    *(v74 + 16) = 8;
    v69 = 32;
    v45 = swift_allocObject();
    v46 = v71;
    v72 = v45;
    *(v45 + 16) = v115;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v72;
    v76 = v47;
    *(v47 + 16) = v116;
    *(v47 + 24) = v48;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v75 = sub_1B0E46A48();
    v77 = v49;

    v50 = v73;
    v51 = v77;
    *v77 = v117;
    v51[1] = v50;

    v52 = v74;
    v53 = v77;
    v77[2] = v118;
    v53[3] = v52;

    v54 = v76;
    v55 = v77;
    v77[4] = v119;
    v55[5] = v54;
    sub_1B0394964();

    if (os_log_type_enabled(v79, v80))
    {
      v56 = v66;
      v58 = sub_1B0E45D78();
      v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v59 = sub_1B03949A8(1);
      v60 = sub_1B03949A8(0);
      v61 = &v151;
      v151 = v58;
      v62 = &v160;
      v160 = v59;
      v63 = &v159;
      v159 = v60;
      sub_1B0394A48(2, &v151);
      sub_1B0394A48(1, v61);
      v149 = v117;
      v150 = v73;
      sub_1B03949FC(&v149, v61, v62, v63);
      v64 = v56;
      if (v56)
      {

        __break(1u);
      }

      else
      {
        v149 = v118;
        v150 = v74;
        sub_1B03949FC(&v149, &v151, &v160, &v159);
        v57[0] = 0;
        v149 = v119;
        v150 = v76;
        sub_1B03949FC(&v149, &v151, &v160, &v159);
        _os_log_impl(&dword_1B0389000, v79, v80, "Failed to report task workload progress: %@", v58, 0xCu);
        sub_1B03998A8(v59);
        sub_1B03998A8(v60);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v79);
    (*(v135 + 8))(v138, v134);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0A37F44()
{
  v110 = *MEMORY[0x1E69E9840];
  v104 = 0;
  v89 = 0;
  v102 = 0;
  v90 = sub_1B0E439A8();
  v91 = *(v90 - 8);
  v92 = v91;
  v93 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90 - 8);
  v95 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  v94 = &v23 - v95;
  MEMORY[0x1EEE9AC00](&v23 - v95);
  v96 = &v23 - v95;
  v104 = v0;
  if (sub_1B0A38C1C())
  {
    v63 = v89;
  }

  else
  {
    v109 = 0;
    v1 = objc_opt_self();
    v103 = v109;
    v88 = [v1 reportFeatureCheckpoint:50 forFeature:302 error:&v103];
    v87 = v103;
    v2 = v103;
    v3 = v109;
    v109 = v87;

    if (v88)
    {
      sub_1B0A38CA8();
      v83 = 0;
      type metadata accessor for SearchIndexerBackgroundTask();
      sub_1B0A27668(v96);
      v85 = sub_1B0E43988();
      v81 = v85;
      v84 = sub_1B0E45908();
      v82 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v86 = sub_1B0E46A48();
      if (os_log_type_enabled(v85, v84))
      {
        v4 = v89;
        v72 = sub_1B0E45D78();
        v68 = v72;
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v70 = 0;
        v73 = sub_1B03949A8(0);
        v71 = v73;
        v74 = sub_1B03949A8(v70);
        v98 = v72;
        v106 = v73;
        v105 = v74;
        v75 = 0;
        v76 = &v98;
        sub_1B0394A48(0, &v98);
        sub_1B0394A48(v75, v76);
        v97 = v86;
        v77 = &v23;
        MEMORY[0x1EEE9AC00](&v23);
        v78 = &v23 - 6;
        *(&v23 - 4) = v5;
        *(&v23 - 3) = &v106;
        *(&v23 - 2) = &v105;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
        sub_1B06D3AB0();
        sub_1B0E45018();
        v80 = v4;
        if (v4)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1B0389000, v81, v82, "Reported feature availability.", v68, 2u);
          v66 = 0;
          sub_1B03998A8(v71);
          sub_1B03998A8(v74);
          sub_1B0E45D58();

          v67 = v80;
        }
      }

      else
      {

        v67 = v89;
      }

      v64 = v67;

      (*(v92 + 8))(v96, v90);
      v65 = v64;
    }

    else
    {
      v40 = v109;
      v44 = sub_1B0E42CD8();
      v41 = v44;

      swift_willThrow();
      v43 = 0;
      v42 = 0;
      v8 = v44;
      v102 = v44;
      type metadata accessor for SearchIndexerBackgroundTask();
      sub_1B0A27668(v94);
      v9 = v44;
      v51 = 7;
      v52 = swift_allocObject();
      *(v52 + 16) = v44;
      v62 = sub_1B0E43988();
      v45 = v62;
      v61 = sub_1B0E458E8();
      v46 = v61;
      v47 = 17;
      v55 = swift_allocObject();
      v48 = v55;
      *(v55 + 16) = 64;
      v56 = swift_allocObject();
      v49 = v56;
      *(v56 + 16) = 8;
      v50 = 32;
      v10 = swift_allocObject();
      v11 = v52;
      v53 = v10;
      *(v10 + 16) = sub_1B07135E4;
      *(v10 + 24) = v11;
      v12 = swift_allocObject();
      v13 = v53;
      v59 = v12;
      v54 = v12;
      *(v12 + 16) = sub_1B070B324;
      *(v12 + 24) = v13;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v57 = sub_1B0E46A48();
      v58 = v14;

      v15 = v55;
      v16 = v58;
      *v58 = sub_1B0398F5C;
      v16[1] = v15;

      v17 = v56;
      v18 = v58;
      v58[2] = sub_1B0398F5C;
      v18[3] = v17;

      v19 = v58;
      v20 = v59;
      v58[4] = sub_1B070B4B4;
      v19[5] = v20;
      sub_1B0394964();

      if (os_log_type_enabled(v62, v61))
      {
        v21 = v42;
        v33 = sub_1B0E45D78();
        v30 = v33;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v36 = 1;
        v34 = sub_1B03949A8(1);
        v32 = v34;
        v35 = sub_1B03949A8(0);
        v101 = v33;
        v108 = v34;
        v107 = v35;
        v37 = &v101;
        sub_1B0394A48(2, &v101);
        sub_1B0394A48(v36, v37);
        v99 = sub_1B0398F5C;
        v100 = v48;
        sub_1B03949FC(&v99, v37, &v108, &v107);
        v38 = v21;
        v39 = v21;
        if (v21)
        {
          v28 = 0;

          __break(1u);
        }

        else
        {
          v99 = sub_1B0398F5C;
          v100 = v49;
          sub_1B03949FC(&v99, &v101, &v108, &v107);
          v26 = 0;
          v27 = 0;
          v99 = sub_1B070B4B4;
          v100 = v54;
          sub_1B03949FC(&v99, &v101, &v108, &v107);
          v24 = 0;
          v25 = 0;
          _os_log_impl(&dword_1B0389000, v45, v46, "Failed to report feature availability: %@", v30, 0xCu);
          sub_1B03998A8(v32);
          sub_1B03998A8(v35);
          sub_1B0E45D58();

          v29 = v24;
        }
      }

      else
      {
        v22 = v42;

        v29 = v22;
      }

      v23 = v29;

      (*(v92 + 8))(v94, v90);
      v65 = v23;
    }

    v63 = v65;
  }

  result = v63;
  v7 = __OFSUB__(*MEMORY[0x1E69E9840], v110);
  return result;
}

uint64_t sub_1B0A38C1C()
{
  sub_1B0E44838();
  v2 = sub_1B0E44AC8();

  v3 = [v1 BOOLForKey_];
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B0A38CA8()
{
  v3 = sub_1B0E453B8();
  sub_1B0E44838();
  v2 = sub_1B0E44AC8();

  [v1 setValue:v3 forKey:v2];
  MEMORY[0x1E69E5920](v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B0A38D58()
{
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v55 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18D8, &unk_1B0E99EF0);
  v42 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v43 = &v11[-v42];
  v44 = sub_1B0E43BB8();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53);
  v48 = &v11[-v47];
  v62 = &v11[-v47];
  v49 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v11[-v49];
  v51 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v11[-v51];
  v61 = &v11[-v51];
  v60 = v5;
  MEMORY[0x1E69E5928](v5);
  v54 = [v53 hostname];
  if (v54)
  {
    v41 = v54;
    v36 = v54;
    v37 = sub_1B0E44AD8();
    v38 = v6;
    MEMORY[0x1E69E5920](v36);
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v34 = v40;
  v35 = v39;
  if (!v40)
  {
    MEMORY[0x1E69E5920](v53);
LABEL_30:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    return v18;
  }

  v32 = v35;
  v33 = v34;
  v29 = v34;
  v30 = v35;
  v58 = v35;
  v59 = v34;
  MEMORY[0x1E69E5920](v53);
  MEMORY[0x1E69E5928](v53);
  v31 = [v53 portNumber];
  MEMORY[0x1E69E5920](v53);
  if (v31 <= 0xFFFF)
  {
    v56 = v31;
    v57 = 0;
  }

  else
  {
    v56 = 0;
    v57 = 1;
  }

  v28 = v56;
  if (v57)
  {

    goto LABEL_30;
  }

  v27 = v28;
  v25 = v28;
  v55 = v28;
  v7 = sub_1B0A61548();
  v26 = v7;
  if ((v7 & 0xFC) != 0xFC)
  {
    v24 = v26;
    v23 = (v26 >> 6) & 3;
    if (v23)
    {
      if (v23 == 1)
      {
        if (v25)
        {
          goto LABEL_26;
        }

        sub_1B0E43B88();
        (*(v45 + 32))(v52, v50, v44);
LABEL_29:
        (*(v45 + 16))(v50, v52, v44);
        v12 = sub_1B0E43BA8();
        v14 = *(v45 + 8);
        v13 = v45 + 8;
        v14(v50, v44);
        v15 = AccountConfiguration.Endpoint.init(host:port:)(v30, v29, v12);
        v16 = v8;
        v17 = v9;
        v14(v52, v44);
        v18 = v15;
        v19 = v16;
        v20 = v17;
        return v18;
      }

      if (v25)
      {
        goto LABEL_26;
      }

LABEL_22:
      sub_1B0E43B78();
      (*(v45 + 32))(v52, v50, v44);
      goto LABEL_29;
    }

    if (!v25)
    {
      goto LABEL_22;
    }
  }

LABEL_26:
  sub_1B0E43B98();
  if ((*(v45 + 48))(v43, 1, v44) != 1)
  {
    v22 = *(v45 + 32);
    v21 = v45 + 32;
    v22(v48, v43, v44);
    (*(v45 + 16))(v50, v48, v44);
    v22(v52, v50, v44);
    (*(v45 + 8))(v48, v44);
    goto LABEL_29;
  }

  sub_1B06E31EC(v43);

  v18 = 0;
  v19 = 0;
  v20 = 0;
  return v18;
}

uint64_t sub_1B0A394B4()
{
  v5 = [v0 defaultConnectionSettings];
  if (v5)
  {
    v3 = [v5 usesSSL];
    v4 = [v5 tryDirectSSL];
    if (v3)
    {
      MEMORY[0x1E69E5920](v5);
      if (v4)
      {
        return 64;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v5);
      return 65408;
    }
  }

  else
  {
    return 65532;
  }
}

id sub_1B0A395D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = sub_1B0E44AC8();
  if (a4)
  {
    v11 = sub_1B0E44AC8();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = [v16 initWithIdentifier:v18 taskName:a9 qos:? workloadCategory:? expectedMetricValue:? itemsCompleted:? totalItemCount:?];
  MEMORY[0x1E69E5920](a9);
  MEMORY[0x1E69E5920](a8);
  MEMORY[0x1E69E5920](a7);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v18);

  return v10;
}

uint64_t sub_1B0A39750(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 24) = v5;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 34) = *(a1 + 34);
  return result;
}

uint64_t block_copy_helper_30_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_1B0A398C0(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
  }

  v4 = a1 + *(sub_1B0E43908() + 20);
  v2 = sub_1B0E438E8();
  (*(*(v2 - 8) + 8))(v4);
  return a1;
}

uint64_t sub_1B0A39958(uint64_t a1)
{
  v1 = sub_1B0E43798();
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1B0E43808() + 20);
  v2 = sub_1B0E437A8();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0A39A7C()
{
  v2 = qword_1EB6E3A00;
  if (!qword_1EB6E3A00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A00);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_183(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0A39B9C()
{
  v2 = qword_1EB6E3A08;
  if (!qword_1EB6E3A08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3A08);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0A39C00()
{
  v1 = v0[4];
  v2 = v0[5];
  return sub_1B06B90E8(v0[2], v0[3]);
}

double sub_1B0A39C14()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v0[2]);
}

uint64_t sub_1B0A39C28()
{
  v1 = v0[4];
  v2 = v0[5];
  return sub_1B0A38BC0(v0[2], v0[3]);
}

uint64_t sub_1B0A39C50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 9))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0A39D74(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B0A39F70()
{
  v2 = qword_1EB6E3A10;
  if (!qword_1EB6E3A10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A39FEC()
{
  v4 = 0;
  v2 = 0;
  v3 = 1;
  v1 = sub_1B06C70B0(&v2, &unk_1F270C2E8);

  v4 = v1;
  sub_1B0391AD4(&v4);
  return v1;
}

uint64_t sub_1B0A3A058(uint64_t a1)
{
  v9 = a1;
  v8 = v1;
  v4 = *v1;

  v6 = a1;
  sub_1B03E1B3C(sub_1B0A3A338, v5, v4, &unk_1F270C2E8, &unk_1F270C378);

  return v7 & 1;
}

uint64_t sub_1B0A3A114()
{
  v3 = *v0;

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A18, &qword_1B0EA3780);
  sub_1B03E1B3C(sub_1B0A3A3DC, 0, v3, &unk_1F270C2E8, v1);

  return v4;
}

uint64_t sub_1B0A3A1D0(char a1)
{
  v7 = a1;
  v6 = v1;
  v4 = *v1;

  v5[16] = a1;
  sub_1B03E1B3C(sub_1B0A3A508, v5, v4, &unk_1F270C2E8, &unk_1F270C408);

  return v5[31];
}

uint64_t sub_1B0A3A288@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(result + 8) & 1) != 0 && !*result)
  {
    *result = a2;
    *(result + 8) = 0;
    *a3 = 1;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t *sub_1B0A3A3DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (result[1])
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  else
  {
    *result = 1;
    *(result + 8) = 1;
    *a2 = v2;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B0A3A4B0@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  result = sub_1B0A3A5AC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1B0A3A530()
{
  v2 = qword_1EB6E3A20;
  if (!qword_1EB6E3A20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A3A5AC(char a1)
{
  v5 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          if (a1 == 3)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }

LABEL_19:
        sub_1B0A3A7C0(v4);
        return 3;
      }

LABEL_20:
      sub_1B0A3A7C0(v4);
      return 2;
    }

LABEL_18:
    sub_1B0A3A7C0(v4);
    return 1;
  }

  if (!v5)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          if (a1 == 3)
          {
LABEL_17:
            sub_1B0A3A7C0(v4);
            return 4;
          }

LABEL_21:
          sub_1B0A3A7C0(v4);
          return 0;
        }

        goto LABEL_19;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1B0A3A7C0(v4);
  if (v5 == 1)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1B0A3A7C0(uint64_t result)
{
  *result = 2;
  *(result + 8) = 1;
  return result;
}

unint64_t sub_1B0A3A7F0()
{
  v2 = qword_1EB6E3A28;
  if (!qword_1EB6E3A28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3A980()
{
  v2 = qword_1EB6E3A30;
  if (!qword_1EB6E3A30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3AA14()
{
  v2 = qword_1EB6E3A38;
  if (!qword_1EB6E3A38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A3AA90(void *a1)
{
  v338 = v373;
  v349 = a1;
  v339 = "Fatal error";
  v340 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v341 = "Message/SearchRequestPredicate+FromCriterion.swift";
  v342 = "Negative value is not representable";
  v343 = "Swift/Integers.swift";
  v344 = "Unexpectedly found nil while unwrapping an Optional value";
  v345 = "Not enough bits to represent the passed value";
  v346 = sub_1B0A3E1D0;
  v347 = sub_1B0A3E638;
  v420 = 0;
  v418 = 0;
  v411 = 0;
  v410 = 0;
  v407 = 0;
  v348 = 0;
  v369 = 0;
  v367 = 0;
  v350 = sub_1B0E43108();
  v351 = *(v350 - 8);
  v352 = v350 - 8;
  v353 = (*(v351 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v349);
  v354 = &v85 - v353;
  v355 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v356 = &v85 - v355;
  v420 = &v85 - v355;
  v418 = v3;
  v357 = [v3 criterionType] - 1;
  if (v357 > 0x30)
  {
LABEL_162:
    MEMORY[0x1E69E5928](v349);
    v73 = sub_1B0E46A28();
    v102 = &v416;
    v416 = v73;
    v417 = v74;
    v103 = 0;
    v75 = sub_1B0E44838();
    v100 = v76;
    MEMORY[0x1B2728B30](v75);

    v77 = [v349 criterionType];
    v101 = &v415;
    v415 = v77;
    type metadata accessor for CriterionType();
    sub_1B0E469E8();
    v78 = sub_1B0E44838();
    v104 = v79;
    MEMORY[0x1B2728B30](v78);

    v105 = [v349 expression];
    if (v105)
    {
      v99 = v105;
      v94 = v105;
      v95 = sub_1B0E44AD8();
      v96 = v80;
      MEMORY[0x1E69E5920](v94);
      v97 = v95;
      v98 = v96;
    }

    else
    {
      v97 = 0;
      v98 = 0;
    }

    v88 = v414;
    v414[0] = v97;
    v414[1] = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    v81 = sub_1B0E44B88();
    v89 = v413;
    v413[0] = v81;
    v413[1] = v82;
    v91 = &v416;
    sub_1B0E46A08();
    sub_1B03B1198(v89);
    v83 = sub_1B0E44838();
    v90 = v84;
    MEMORY[0x1B2728B30](v83);

    v93 = v416;
    v92 = v417;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v91);
    sub_1B0E44C88();
    sub_1B0E465B8();
    __break(1u);
  }

  else
  {
    switch(v357)
    {
      case 1uLL:
      case 0x20uLL:
        v306 = swift_allocObject();
        v305 = v306 + 16;
        v367 = v306 + 16;
        *(v306 + 16) = sub_1B0E46A48();

        v365 = v347;
        v366 = v306;
        v360 = MEMORY[0x1E69E9820];
        v361 = 1107296256;
        v362 = 0;
        v363 = sub_1B0A3E640;
        v364 = &block_descriptor_20;
        v304 = _Block_copy(&v360);

        [v349 tokenizeUsingTokenizationHandler_];
        _Block_release(v304);
        v307 = &v359;
        swift_beginAccess();
        v309 = *(v306 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        v358[3] = v309;
        v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A50, &qword_1B0EA3918);
        sub_1B0A3E364();
        v310 = sub_1B0E45748();

        if (v310)
        {

          goto LABEL_167;
        }

        v301 = v358;
        swift_beginAccess();
        v302 = *(v306 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        v303 = static SearchRequest.Predicate.and(_:)(v302);

        v419 = v303;

        break;
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 9uLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x15uLL:
      case 0x16uLL:
      case 0x17uLL:
      case 0x1CuLL:
      case 0x1DuLL:
      case 0x1EuLL:
      case 0x1FuLL:
      case 0x21uLL:
      case 0x23uLL:
      case 0x24uLL:
      case 0x25uLL:
      case 0x26uLL:
      case 0x29uLL:
      case 0x2AuLL:
      case 0x2BuLL:
      case 0x2CuLL:
      case 0x2EuLL:
      case 0x2FuLL:
        goto LABEL_162;
      case 8uLL:
        v333 = 32;
        v334 = 7;
        v335 = swift_allocObject();
        v336 = swift_allocObject();
        v337 = [v349 expression];
        if (v337)
        {
          v332 = v337;
          v327 = v337;
          v328 = sub_1B0E44AD8();
          v329 = v4;
          MEMORY[0x1E69E5920](v327);
          v330 = v328;
          v331 = v329;
        }

        else
        {
          v330 = 0;
          v331 = 0;
        }

        v325 = v331;
        v326 = v330;
        if (v331)
        {
          v323 = v326;
          v324 = v325;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v5 = v335;
        v6 = v336;
        v7 = v324;
        *(v336 + 16) = v323;
        *(v6 + 24) = v7;
        *(v5 + 16) = v6 | 0xB000000000000000;
        v321 = swift_allocObject();
        v322 = [v349 expression];
        if (v322)
        {
          v320 = v322;
          v315 = v322;
          v316 = sub_1B0E44AD8();
          v317 = v8;
          MEMORY[0x1E69E5920](v315);
          v318 = v316;
          v319 = v317;
        }

        else
        {
          v318 = 0;
          v319 = 0;
        }

        v313 = v319;
        v314 = v318;
        if (v319)
        {
          v311 = v314;
          v312 = v313;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v9 = v335;
        v10 = v321;
        v11 = v312;
        *(v321 + 16) = v311;
        *(v10 + 24) = v11;
        *(v9 + 24) = v10 | 0x3000000000000000;
        v419 = (v9 | 0x8000000000000000);
        break;
      case 0xAuLL:
      case 0xBuLL:
        v277 = [v349 expression];
        if (v277)
        {
          v276 = v277;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v271 = v276;
        [v276 doubleValue];
        v272 = v17;
        MEMORY[0x1E69E5920](v271);
        sub_1B0E430A8();
        v18 = [v349 qualifier];
        v275 = &v372;
        v372 = v18;
        v273 = &v371;
        v371 = 6;
        v274 = type metadata accessor for MessageRuleQualifier();
        sub_1B0A3E224();
        if (sub_1B0E46AE8())
        {
          v270 = swift_allocObject();
          (*(v351 + 16))(v354, v356, v350);
          v19 = sub_1B0A3DC74(v354);
          v20 = v270;
          *(v270 + 16) = v19;
          *(v20 + 24) = v21;
          *(v20 + 32) = v22;
          v419 = (v20 | 0x9000000000000000);
        }

        else
        {
          v269 = swift_allocObject();
          (*(v351 + 16))(v354, v356, v350);
          v23 = sub_1B0A3DC74(v354);
          v24 = v269;
          *(v269 + 16) = v23;
          *(v24 + 24) = v25;
          *(v24 + 32) = v26;
          v419 = (v24 | 0x1000000000000000);
        }

        (*(v351 + 8))(v356, v350);
        break;
      case 0x18uLL:
        v288 = [v349 criteria];
        if (v288)
        {
          v287 = v288;
          v284 = v288;
          sub_1B08F5E90();
          v285 = sub_1B0E451B8();
          MEMORY[0x1E69E5920](v284);
          v286 = v285;
        }

        else
        {
          v286 = 0;
        }

        v283 = v286;
        if (v286)
        {
          v282 = v283;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v15 = v348;
        v370 = v282;
        v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A40, &qword_1B0EA3910);
        sub_1B0A3E2DC();
        result = sub_1B0E44F58();
        v281 = result;
        if (v15)
        {
          __break(1u);
          return result;
        }

        v278 = v281;
        sub_1B039E440(&v370);
        v369 = v278;
        v368 = v278;
        v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A50, &qword_1B0EA3918);
        sub_1B0A3E364();
        if (sub_1B0E45748())
        {

          goto LABEL_167;
        }

        if ([v349 allCriteriaMustBeSatisfied])
        {
          v419 = static SearchRequest.Predicate.and(_:)(v278);
        }

        else
        {
          v419 = static SearchRequest.Predicate.or(_:)(v278);
        }

        break;
      case 0x19uLL:
        v146 = [v349 criteria];
        if (v146)
        {
          v145 = v146;
          v142 = v146;
          sub_1B08F5E90();
          v143 = sub_1B0E451B8();
          MEMORY[0x1E69E5920](v142);
          v144 = v143;
        }

        else
        {
          v144 = 0;
        }

        v412 = v144;
        if (v144)
        {
          v137 = &v412;
          v139 = v412;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B039E440(v137);
          v409[2] = v139;
          v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A40, &qword_1B0EA3910);
          sub_1B0A3CF60();
          sub_1B0E45728();
          v140 = v409[1];

          v141 = v140;
        }

        else
        {
          sub_1B039E440(&v412);
          v141 = 0;
        }

        v136 = v141;
        if (!v141)
        {
          goto LABEL_167;
        }

        v135 = v136;
        v133 = v136;
        v411 = v136;
        MEMORY[0x1E69E5928](v136);
        v64 = sub_1B0A3AA90(v133);
        v134 = v64;
        if ((v64 & 0xF000000000000007) != 0xF000000000000007)
        {
          v132 = v134;
          v131 = v134;
          v410 = v134;
          v130 = swift_allocObject();
          sub_1B09AE83C(v131);
          v65 = v130;
          v66 = v131;
          *(v130 + 16) = v131;
          v419 = (v65 | 0x7000000000000000);
          sub_1B09AEA14(v66);
          MEMORY[0x1E69E5920](v133);
          break;
        }

        MEMORY[0x1E69E5920](v133);
LABEL_167:
        MEMORY[0x1E69E5920](v349);
        return 0xF000000000000007;
      case 0x1AuLL:
        v268 = [v349 expression];
        if (v268)
        {
          v267 = v268;
          v262 = v268;
          v263 = sub_1B0E44AD8();
          v264 = v27;
          MEMORY[0x1E69E5920](v262);
          v265 = v263;
          v266 = v264;
        }

        else
        {
          v265 = 0;
          v266 = 0;
        }

        v259 = v266;
        v258 = v265;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v257 = @"MessageWasRepliedTo";
        MEMORY[0x1E69E5928](@"MessageWasRepliedTo");
        v260 = sub_1B0E44AD8();
        v261 = v28;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v406[0] = v258;
        v406[1] = v259;
        v402 = v260;
        v403 = v261;
        sub_1B070B280(v406, &v404);
        if (v403)
        {
          sub_1B070B280(&v402, v374);
          if (v405)
          {
            v29 = v338[22];
            v253 = v373;
            *v338 = v29;
            v254 = v374;
            v255 = MEMORY[0x1B2726DE0](v374[0], v374[1], v373[0], v373[1]);
            sub_1B03B1198(v253);
            sub_1B03B1198(v254);
            sub_1B03B1198(&v402);
            v256 = v255;
            goto LABEL_55;
          }

          sub_1B03B1198(v374);
          goto LABEL_57;
        }

        if (v405)
        {
LABEL_57:
          sub_1B06FF6F0(&v402);
          v256 = 0;
          goto LABEL_55;
        }

        sub_1B03B1198(&v402);
        v256 = 1;
LABEL_55:
        v252 = v256;

        MEMORY[0x1E69E5920](v257);
        if (v252)
        {

          v419 = 0xC000000000000000;

          goto LABEL_97;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v249 = @"MessageIsDeleted";
        MEMORY[0x1E69E5928](@"MessageIsDeleted");
        v250 = sub_1B0E44AD8();
        v251 = v30;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v401[0] = v258;
        v401[1] = v259;
        v397 = v250;
        v398 = v251;
        sub_1B070B280(v401, &v399);
        if (v398)
        {
          sub_1B070B280(&v397, v376);
          if (v400)
          {
            v31 = v338[19];
            v245 = v375;
            v338[2] = v31;
            v246 = v376;
            v247 = MEMORY[0x1B2726DE0](v376[0], v376[1], v375[0], v375[1]);
            sub_1B03B1198(v245);
            sub_1B03B1198(v246);
            sub_1B03B1198(&v397);
            v248 = v247;
            goto LABEL_66;
          }

          sub_1B03B1198(v376);
          goto LABEL_68;
        }

        if (v400)
        {
LABEL_68:
          sub_1B06FF6F0(&v397);
          v248 = 0;
          goto LABEL_66;
        }

        sub_1B03B1198(&v397);
        v248 = 1;
LABEL_66:
        v244 = v248;

        MEMORY[0x1E69E5920](v249);
        if (v244)
        {

          v419 = 0xC000000000000008;

          goto LABEL_97;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v241 = @"MessageIsFlagged";
        MEMORY[0x1E69E5928](@"MessageIsFlagged");
        v242 = sub_1B0E44AD8();
        v243 = v32;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v396[0] = v258;
        v396[1] = v259;
        v392 = v242;
        v393 = v243;
        sub_1B070B280(v396, &v394);
        if (v393)
        {
          sub_1B070B280(&v392, v378);
          if (v395)
          {
            v33 = v338[16];
            v237 = v377;
            v338[4] = v33;
            v238 = v378;
            v239 = MEMORY[0x1B2726DE0](v378[0], v378[1], v377[0], v377[1]);
            sub_1B03B1198(v237);
            sub_1B03B1198(v238);
            sub_1B03B1198(&v392);
            v240 = v239;
            goto LABEL_77;
          }

          sub_1B03B1198(v378);
          goto LABEL_79;
        }

        if (v395)
        {
LABEL_79:
          sub_1B06FF6F0(&v392);
          v240 = 0;
          goto LABEL_77;
        }

        sub_1B03B1198(&v392);
        v240 = 1;
LABEL_77:
        v236 = v240;

        MEMORY[0x1E69E5920](v241);
        if (v236)
        {

          v419 = 0xC000000000000010;

          goto LABEL_97;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v233 = @"MessageIsRead";
        MEMORY[0x1E69E5928](@"MessageIsRead");
        v234 = sub_1B0E44AD8();
        v235 = v34;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v391[0] = v258;
        v391[1] = v259;
        v387 = v234;
        v388 = v235;
        sub_1B070B280(v391, &v389);
        if (v388)
        {
          sub_1B070B280(&v387, v380);
          if (v390)
          {
            v35 = v338[13];
            v229 = v379;
            v338[6] = v35;
            v230 = v380;
            v231 = MEMORY[0x1B2726DE0](v380[0], v380[1], v379[0], v379[1]);
            sub_1B03B1198(v229);
            sub_1B03B1198(v230);
            sub_1B03B1198(&v387);
            v232 = v231;
            goto LABEL_88;
          }

          sub_1B03B1198(v380);
          goto LABEL_90;
        }

        if (v390)
        {
LABEL_90:
          sub_1B06FF6F0(&v387);
          v232 = 0;
          goto LABEL_88;
        }

        sub_1B03B1198(&v387);
        v232 = 1;
LABEL_88:
        v228 = v232;

        MEMORY[0x1E69E5920](v233);
        if (v228)
        {

          v419 = 0xC000000000000018;
        }

        else
        {

          MEMORY[0x1E69E5928](v349);
          v225 = 29;
          v385 = sub_1B0E46A28();
          v386 = v36;
          v37 = sub_1B0E44838();
          v226 = v38;
          MEMORY[0x1B2728B30](v37);

          v39 = [v349 expression];
          v227 = v39;
          if (v39)
          {
            v224 = v227;
            v219 = v227;
            v220 = sub_1B0E44AD8();
            v221 = v40;
            MEMORY[0x1E69E5920](v219);
            v222 = v220;
            v223 = v221;
          }

          else
          {
            v222 = 0;
            v223 = 0;
          }

          v213 = v384;
          v384[0] = v222;
          v384[1] = v223;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
          v41 = sub_1B0E44B88();
          v214 = v383;
          v383[0] = v41;
          v383[1] = v42;
          v216 = &v385;
          sub_1B0E46A08();
          sub_1B03B1198(v214);
          v43 = sub_1B0E44838();
          v215 = v44;
          MEMORY[0x1B2728B30](v43);

          v218 = v385;
          v217 = v386;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B1198(v216);
          sub_1B0E44C88();
          sub_1B0E465B8();
          __break(1u);
        }

LABEL_97:
        v45 = [v349 qualifier];
        v212 = &v382;
        v382 = v45;
        v210 = &v381;
        v381 = 7;
        v211 = type metadata accessor for MessageRuleQualifier();
        sub_1B0A3E224();
        if (sub_1B0E46AE8())
        {
          v209 = swift_allocObject();
          sub_1B0A3E2A4(&v419, (v209 + 16));
          v46 = v419;
          v419 = (v209 | 0x7000000000000000);
          sub_1B09AEA14(v46);
        }

        break;
      case 0x1BuLL:
        v208 = [v349 expression];
        if (v208)
        {
          v207 = v208;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v205 = v207;
        v206 = [v207 integerValue];
        MEMORY[0x1E69E5920](v205);
        if ((v206 & 0x8000000000000000) != 0)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        sub_1B0391B00();
        v204 = v47;
        if (v48)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        else
        {
          v203 = v204;
        }

        v201 = v203;
        v407 = v203;
        v202 = swift_allocObject();
        v49 = sub_1B0A3D9AC(v201);
        v50 = v202;
        *(v202 + 16) = v49;
        v419 = (v50 | 0x4000000000000000);
        break;
      case 0x22uLL:
        v128 = swift_allocObject();
        v129 = [v349 expression];
        if (v129)
        {
          v127 = v129;
          v122 = v129;
          v123 = sub_1B0E44AD8();
          v124 = v67;
          MEMORY[0x1E69E5920](v122);
          v125 = v123;
          v126 = v124;
        }

        else
        {
          v125 = 0;
          v126 = 0;
        }

        v120 = v126;
        v121 = v125;
        if (v126)
        {
          v118 = v121;
          v119 = v120;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v68 = v128;
        v69 = v119;
        *(v128 + 16) = v118;
        *(v68 + 24) = v69;
        v419 = (v68 | 0x5000000000000000);
        break;
      case 0x27uLL:
        v116 = swift_allocObject();
        v117 = [v349 expression];
        if (v117)
        {
          v115 = v117;
          v110 = v117;
          v111 = sub_1B0E44AD8();
          v112 = v70;
          MEMORY[0x1E69E5920](v110);
          v113 = v111;
          v114 = v112;
        }

        else
        {
          v113 = 0;
          v114 = 0;
        }

        v108 = v114;
        v109 = v113;
        if (v114)
        {
          v106 = v109;
          v107 = v108;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v71 = v116;
        v72 = v107;
        *(v116 + 16) = v106;
        *(v71 + 24) = v72;
        v419 = (v71 | 0xB000000000000000);
        break;
      case 0x28uLL:
        v299 = swift_allocObject();
        v300 = [v349 expression];
        if (v300)
        {
          v298 = v300;
          v293 = v300;
          v294 = sub_1B0E44AD8();
          v295 = v12;
          MEMORY[0x1E69E5920](v293);
          v296 = v294;
          v297 = v295;
        }

        else
        {
          v296 = 0;
          v297 = 0;
        }

        v291 = v297;
        v292 = v296;
        if (v297)
        {
          v289 = v292;
          v290 = v291;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v13 = v299;
        v14 = v290;
        *(v299 + 16) = v289;
        *(v13 + 24) = v14;
        v419 = (v13 | 0x3000000000000000);
        break;
      case 0x2DuLL:
      case 0x30uLL:
        goto LABEL_167;
      default:
        v200 = [v349 criterionIdentifier];
        if (v200)
        {
          v199 = v200;
          v194 = v200;
          v195 = sub_1B0E44AD8();
          v196 = v51;
          MEMORY[0x1E69E5920](v194);
          v197 = v195;
          v198 = v196;
        }

        else
        {
          v197 = 0;
          v198 = 0;
        }

        v192 = v198;
        v193 = v197;
        if (v198)
        {
          v190 = v193;
          v191 = v192;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v183 = v191;
        v182 = v190;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v185 = sub_1B0E44AC8();
        MEMORY[0x1E69E5928](v185);

        MEMORY[0x1E69E5920](v185);
        MEMORY[0x1E69E5928](v185);
        v184 = *MEMORY[0x1E699B178];
        MEMORY[0x1E69E5928](v184);
        v188 = v409;
        v409[0] = v184;
        v186 = &v408;
        v408 = v185;
        v187 = type metadata accessor for ECMessageHeaderKey();
        sub_1B0693188();
        v189 = sub_1B0E44A28();
        sub_1B06D4E94(v188);
        if (v189)
        {
          MEMORY[0x1E69E5920](v185);
          v180 = swift_allocObject();
          v181 = [v349 expression];
          if (v181)
          {
            v179 = v181;
            v174 = v181;
            v175 = sub_1B0E44AD8();
            v176 = v52;
            MEMORY[0x1E69E5920](v174);
            v177 = v175;
            v178 = v176;
          }

          else
          {
            v177 = 0;
            v178 = 0;
          }

          v172 = v178;
          v173 = v177;
          if (v178)
          {
            v170 = v173;
            v171 = v172;
          }

          else
          {
            sub_1B0E465A8();
            __break(1u);
          }

          v53 = v185;
          v54 = v180;
          v55 = v171;
          *(v180 + 16) = v170;
          *(v54 + 24) = v55;
          v419 = (v54 | 0xA000000000000000);
          MEMORY[0x1E69E5920](v53);
        }

        else
        {
          MEMORY[0x1E69E5920](v185);
          v168 = swift_allocObject();
          v169 = [v349 criterionIdentifier];
          if (v169)
          {
            v167 = v169;
            v162 = v169;
            v163 = sub_1B0E44AD8();
            v164 = v56;
            MEMORY[0x1E69E5920](v162);
            v165 = v163;
            v166 = v164;
          }

          else
          {
            v165 = 0;
            v166 = 0;
          }

          v160 = v166;
          v161 = v165;
          if (v166)
          {
            v158 = v161;
            v159 = v160;
          }

          else
          {
            sub_1B0E465A8();
            __break(1u);
          }

          v57 = v349;
          v58 = v168;
          v59 = v159;
          *(v168 + 16) = v158;
          *(v58 + 24) = v59;
          v157 = [v57 expression];
          if (v157)
          {
            v156 = v157;
            v151 = v157;
            v152 = sub_1B0E44AD8();
            v153 = v60;
            MEMORY[0x1E69E5920](v151);
            v154 = v152;
            v155 = v153;
          }

          else
          {
            v154 = 0;
            v155 = 0;
          }

          v149 = v155;
          v150 = v154;
          if (v155)
          {
            v147 = v150;
            v148 = v149;
          }

          else
          {
            sub_1B0E465A8();
            __break(1u);
          }

          v61 = v185;
          v62 = v168;
          v63 = v148;
          *(v168 + 32) = v147;
          *(v62 + 40) = v63;
          v419 = (v62 | 0x6000000000000000);
          MEMORY[0x1E69E5920](v61);
        }

        break;
    }
  }

  v85 = &v419;
  v86 = v419;
  sub_1B09AE83C(v419);
  MEMORY[0x1E69E5920](v349);
  sub_1B0A3CF34(v85);
  return v86;
}

unint64_t sub_1B0A3CF60()
{
  v2 = qword_1EB6E3A48;
  if (!qword_1EB6E3A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3A40, &qword_1B0EA3910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3CFE8(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 1uLL:
    case 4uLL:
    case 9uLL:
    case 0xCuLL:
      sub_1B09AE83C(a1);
      v54 = a1;
      break;
    case 2uLL:
      v45 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v50 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v48 = swift_allocObject();
      v46 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v47 = sub_1B0E44AC8();

      v49 = [v46 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v47);
      *(v48 + 16) = sub_1B0E44AD8();
      *(v48 + 24) = v1;
      MEMORY[0x1E69E5920](v49);

      v54 = v48 | 0x2000000000000000;
      break;
    case 3uLL:
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v42 = swift_allocObject();
      v40 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v41 = sub_1B0E44AC8();

      v43 = [v40 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v41);
      *(v42 + 16) = sub_1B0E44AD8();
      *(v42 + 24) = v2;
      MEMORY[0x1E69E5920](v43);

      v54 = v42 | 0x3000000000000000;
      break;
    case 5uLL:
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v36 = swift_allocObject();
      v34 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v35 = sub_1B0E44AC8();

      v37 = [v34 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v35);
      *(v36 + 16) = sub_1B0E44AD8();
      *(v36 + 24) = v3;
      MEMORY[0x1E69E5920](v37);

      v54 = v36 | 0x5000000000000000;
      break;
    case 6uLL:
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v29 + 16) = v25;
      *(v29 + 24) = v32;
      v27 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v28 = sub_1B0E44AC8();

      v30 = [v27 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v28);
      *(v29 + 32) = sub_1B0E44AD8();
      *(v29 + 40) = v4;
      MEMORY[0x1E69E5920](v30);

      v54 = v29 | 0x6000000000000000;
      break;
    case 7uLL:
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1B09AE83C(v24);
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1B0A3CFE8(v24);
      sub_1B09AEA14(v24);
      v54 = v23 | 0x7000000000000000;
      break;
    case 8uLL:
      v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      sub_1B09AE83C(v22);
      sub_1B09AE83C(v21);
      v20 = swift_allocObject();
      *(v20 + 16) = sub_1B0A3CFE8(v22);
      *(v20 + 24) = sub_1B0A3CFE8(v21);
      sub_1B09AEA14(v21);
      sub_1B09AEA14(v22);
      v54 = v20 | 0x8000000000000000;
      break;
    case 0xAuLL:
      v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v17 = swift_allocObject();
      v15 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v16 = sub_1B0E44AC8();

      v18 = [v15 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v16);
      *(v17 + 16) = sub_1B0E44AD8();
      *(v17 + 24) = v5;
      MEMORY[0x1E69E5920](v18);

      v54 = v17 | 0xA000000000000000;
      break;
    case 0xBuLL:
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = swift_allocObject();
      v9 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v10 = sub_1B0E44AC8();

      v12 = [v9 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v10);
      *(v11 + 16) = sub_1B0E44AD8();
      *(v11 + 24) = v6;
      MEMORY[0x1E69E5920](v12);

      v54 = v11 | 0xB000000000000000;
      break;
    default:
      v53 = *(a1 + 16);
      v52 = *(a1 + 24);
      sub_1B09AE83C(v53);
      sub_1B09AE83C(v52);
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1B0A3CFE8(v53);
      *(v51 + 24) = sub_1B0A3CFE8(v52);
      sub_1B09AEA14(v52);
      sub_1B09AEA14(v53);
      v54 = v51;
      break;
  }

  return v54;
}

uint64_t sub_1B0A3D9AC(uint64_t a1)
{
  v6[2] = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 1;
      return 1;
    }

    else if (a1 == 2)
    {
      v7 = 2;
      return 2;
    }

    else if (a1 == 3)
    {
      v7 = 3;
      return 3;
    }

    else if (a1 == 4)
    {
      v7 = 4;
      return 4;
    }

    else if (a1 == 5)
    {
      v7 = 5;
      return 5;
    }

    else if (a1 == 6)
    {
      v7 = 6;
      return 6;
    }

    else
    {
      if (a1 == 7)
      {
        sub_1B0E44838();
        sub_1B0E465B8();
        __break(1u);
      }

      v6[0] = sub_1B0E46A28();
      v6[1] = v1;
      v2 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v2);

      type metadata accessor for ECMessageFlagColor();
      sub_1B0E469E8();
      v3 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v3);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v6);
      sub_1B0E44C88();
      sub_1B0E465B8();
      __break(1u);
    }
  }

  else
  {
    v7 = 0;
    return 0;
  }

  return v5;
}

Swift::Int sub_1B0A3DC74(char *a1)
{
  v33 = a1;
  v25 = "Fatal error";
  v26 = "Unexpectedly found nil while unwrapping an Optional value";
  v27 = "Message/SearchRequestPredicate+FromCriterion.swift";
  memset(&v44, 0, sizeof(v44));
  v43 = 0;
  v42 = 0;
  v34 = 0;
  v28 = sub_1B0E43108();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (v29[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v32 = &v9 - v31;
  v35 = sub_1B0E431A8();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v9 - v38;
  v43 = v1;
  sub_1B0A3E6C8();
  v40 = *MEMORY[0x1E695D850];
  MEMORY[0x1E69E5928](v40);
  v41 = sub_1B0A3E174(v40);
  if (v41)
  {
    v24 = v41;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v20 = v24;
  v42 = v24;
  v9 = [objc_opt_self() ef_posixLocale];
  sub_1B0E43188();
  v2 = sub_1B0E43178();
  v3 = v32;
  v10 = v2;
  (*(v36 + 8))(v39, v35);
  MEMORY[0x1E69E5920](v9);
  [v20 setLocale_];
  MEMORY[0x1E69E5920](v10);
  v14 = v29[2];
  v13 = v29 + 2;
  v14(v3, v33, v28);
  v4 = sub_1B0E43068();
  v5 = v32;
  v11 = v4;
  v22 = v29[1];
  v21 = v29 + 1;
  v22(v32, v28);
  v15 = 0x1FB92C000uLL;
  v17 = [v20 0x1FB92C1D2];
  MEMORY[0x1E69E5920](v11);
  v14(v5, v33, v28);
  v6 = sub_1B0E43068();
  v7 = v32;
  v12 = v6;
  v22(v32, v28);
  v18 = [v20 (v15 + 466)];
  MEMORY[0x1E69E5920](v12);
  v14(v7, v33, v28);
  v16 = sub_1B0E43068();
  v22(v32, v28);
  v19 = [v20 (v15 + 466)];
  MEMORY[0x1E69E5920](v16);
  v23 = SearchRequest.Predicate.Day.init(year:month:day:)(v17, v18, v19);
  v44 = v23;
  MEMORY[0x1E69E5920](v20);
  v22(v33, v28);
  return v23.year;
}

id sub_1B0A3E174(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() calendarWithIdentifier_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B0A3E1D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = sub_1B0A3AA90(v3);
  *a2 = result;
  return result;
}

unint64_t sub_1B0A3E224()
{
  v2 = qword_1EB6DAA20;
  if (!qword_1EB6DAA20)
  {
    type metadata accessor for MessageRuleQualifier();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA20);
    return WitnessTable;
  }

  return v2;
}

unint64_t *sub_1B0A3E2A4(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  sub_1B09AE83C(*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_1B0A3E2DC()
{
  v2 = qword_1EB6DAFA8;
  if (!qword_1EB6DAFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3A40, &qword_1B0EA3910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3E364()
{
  v2 = qword_1EB6DB3C0;
  if (!qword_1EB6DB3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3A50, &qword_1B0EA3918);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A3E3EC(uint64_t a1, uint64_t a2)
{
  v8 = sub_1B0E46A48();
  v12 = v2;
  v4 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *v12 = v4 | 0x5000000000000000;
  v5 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v12[1] = v5 | 0xA000000000000000;
  v6 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v12[2] = v6 | 0xB000000000000000;
  v7 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12[3] = v7 | 0x3000000000000000;
  v11 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12[4] = v11 | 0x2000000000000000;
  sub_1B0394964();
  static SearchRequest.Predicate.or(_:)(v8);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A50, &qword_1B0EA3918);
  sub_1B0E452E8();
  swift_endAccess();
}

uint64_t sub_1B0A3E640(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);

  MEMORY[0x1E69E5928](a2);
  v2 = sub_1B0E44AD8();
  v4(v2);

  MEMORY[0x1E69E5920](a2);
}

unint64_t sub_1B0A3E6C8()
{
  v2 = qword_1EB6E3A58;
  if (!qword_1EB6E3A58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3A58);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0A3E72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v30 = a1;
  v36 = a2;
  v35 = a3;
  v19 = sub_1B0A3FDF0;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A60, &qword_1B0EA3920);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v14 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A68, &unk_1B0EA3928);
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v14 - v24;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v26 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v31 = v14 - v26;
  VMa = _s9UIDsQueryVMa();
  v27 = (*(*(VMa - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](VMa);
  v33 = v14 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v30);
  v32 = v14 - v29;
  v43 = v14 - v29;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  v39 = v4;
  v34 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v34);
  sub_1B03D08AC(v30, v31);
  sub_1B0A3ECF4(v31, v33);
  sub_1B0A3F6A8(v33, v32);
  sub_1B0A3FD00(v33);
  MEMORY[0x1E69E5920](v34);
  sub_1B070E90C(v36);
  if (v36)
  {
    v16 = v36;
    v17 = v35;
    v15 = v35;
    v14[0] = v36;
    v37 = v36;
    v38 = v35;
    v10 = sub_1B0721160();
    MEMORY[0x1B27270C0](v28, v10);

    v11 = swift_allocObject();
    v12 = v15;
    v14[1] = v11;
    *(v11 + 16) = v14[0];
    *(v11 + 24) = v12;
    sub_1B0A3FDFC();
    sub_1B0E46738();

    v14[2] = sub_1B074B97C();
    sub_1B0A3FE84();
    sub_1B0E46098();
  }

  else
  {
    sub_1B03D08AC(v32, v18);
  }

  return sub_1B03D09B8(v32);
}

uint64_t _s9UIDsQueryVMa()
{
  v1 = qword_1EB6DBAD0;
  if (!qword_1EB6DBAD0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B0A3EB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v15 = 0;
  v14 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v7 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v10 = &v6 - v7;
  v8 = (*(*(_s9UIDsQueryVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v6 - v8;
  v15 = v4;
  v14 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v13);
  sub_1B03D08AC(v9, v10);
  sub_1B0A3ECF4(v10, v12);
  sub_1B0A3F6A8(v12, v11);
  sub_1B0A3FD00(v12);
  return MEMORY[0x1E69E5920](v13);
}

char *sub_1B0A3ECF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = v95;
  v41 = a2;
  v67 = a1;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v101 = 0;
  v95[1] = 0;
  v95[0] = 0;
  v93 = 0;
  v90 = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24D8, &qword_1B0E9CCD8);
  v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v19 - v43;
  v109 = &v19 - v43;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v45 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v19 - v45;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A80, &qword_1B0EA3938);
  v46 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v19 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A88, &unk_1B0EA3940);
  v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v73 = &v19 - v48;
  v55[16] = &v19 - v48;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v49 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v50 = &v19 - v49;
  v51 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v19 - v49);
  v52 = &v19 - v51;
  v53 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](&v19 - v51);
  v5 = &v19 - v53;
  v69 = &v19 - v53;
  v54 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v19 - v54;
  v55[15] = &v19 - v54;
  v62 = 0;
  VMa = _s9UIDsQueryVMa();
  v58 = *(*(VMa - 8) + 64);
  v57 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v67);
  v59 = &v19 - v57;
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v61 = &v19 - v60;
  *(v9 + 112) = &v19 - v60;
  *(v9 + 104) = v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v65 = sub_1B0E46A48();
  v66 = sub_1B041C1E8();
  MessageIdentifierSet.init(arrayLiteral:)(v65, &type metadata for UID);
  sub_1B03D08AC(v67, v5);
  MessageIdentifierSet.ranges.getter(v72);
  sub_1B03D09B8(v69);
  v10 = sub_1B0A3FF0C();
  MEMORY[0x1B2727080](v70, v10);
  sub_1B07D772C(v72);
  sub_1B0E465F8();
  while (1)
  {
    sub_1B0E46608();
    v39 = v55[10];
    v40 = v55[11];
    if (v104)
    {
      break;
    }

    v37 = v39;
    v38 = v40;
    v13 = v37;
    v14 = v38;
    v15 = HIDWORD(v38);
    v32 = HIDWORD(v38);
    v33 = v38;
    v34 = v37;
    v55[1] = v37;
    v95[0] = __PAIR64__(v15, v14);
    if (v13 > 0)
    {
      sub_1B03D08AC(v67, v69);
      MessageIdentifierSet.ranges.getter(v72);
      result = sub_1B03D09B8(v69);
      v31 = v34 - 1;
      if (__OFSUB__(v34, 1))
      {
        __break(1u);
        return result;
      }

      MessageIdentifierSet.RangeView.subscript.getter(v70, &v94);
      v27 = v94;
      v93 = v94;
      sub_1B07D772C(v72);
      v92 = v27;
      MessageIdentifierRange.upperBound.getter(v63, &v91);
      v28 = v91;
      v90 = v91;
      v30 = &v89;
      v89 = v91;
      v29 = &type metadata for UID;
      static MessageIdentifier.max.getter(&type metadata for UID, v66);
      v87[1] = v87[2];
      MessageIdentifier.advanced(by:)(-4, v29, v66, &v88);
      v87[0] = v88;
      if (static MessageIdentifier.< infix(_:_:)(v30, v87, v29, v66))
      {
        v26 = v86;
        v86[0] = v33;
        v86[1] = v32;
        v84[1] = v28;
        MessageIdentifier.advanced(by:)(2, &type metadata for UID, v66, &v85);
        v84[0] = v85;
        if (MessageIdentifierRange.contains(_:)(v84, v63))
        {
          v75[1] = v28;
          MessageIdentifier.advanced(by:)(1, &type metadata for UID, v66, &v76);
          v75[0] = v76;
          MessageIdentifierSet.insert(_:)(v77, v75, v68);
        }

        else
        {
          v25 = v83;
          v83[0] = v33;
          v83[1] = v32;
          v81[2] = v28;
          MessageIdentifier.advanced(by:)(3, &type metadata for UID, v66, &v82);
          v81[1] = v82;
          if (MessageIdentifierRange.contains(_:)(&v81[1], v63))
          {
            v79[2] = v28;
            v24 = &type metadata for UID;
            MessageIdentifier.advanced(by:)(1, &type metadata for UID, v66, &v80);
            v79[1] = v80;
            MessageIdentifierSet.insert(_:)(v81, &v79[1], v68);
            v77[2] = v28;
            MessageIdentifier.advanced(by:)(2, v24, v66, &v78);
            v77[1] = v78;
            MessageIdentifierSet.insert(_:)(v79, &v77[1], v68);
          }
        }
      }
    }
  }

  v11 = v52;
  sub_1B07D772C(v73);
  v35 = 0;
  v36 = sub_1B0E46A48();
  v12 = sub_1B0E46A48();
  MessageIdentifierSet.init(arrayLiteral:)(v12, &type metadata for UID);
  sub_1B03D08AC(v64, v11);
  sub_1B0A40AB8(v36, v69, v11, v59);
  sub_1B0A40B20(v59, v61);
  sub_1B03D08AC(v67, v11);
  sub_1B03D08AC(v64, v50);
  MessageIdentifierSet.union(_:)(v50, v69);
  sub_1B03D09B8(v50);
  sub_1B03D09B8(v52);
  MessageIdentifierSet.ranges.getter(v72);
  sub_1B03D09B8(v69);
  sub_1B07D76A4();
  sub_1B0E45798();
  while (1)
  {
    sub_1B0E46518();
    v23 = v102;
    if (v103)
    {
      break;
    }

    v22 = v23;
    v20 = HIDWORD(v23);
    v21 = v23;
    v101 = v23;
    v100 = v23;
    if (MessageIdentifierRange.count.getter(v63) <= 1)
    {
      v98[1] = v21;
      v98[2] = v20;
      MessageIdentifierRange.lowerBound.getter(v63, v98);
      v97 = v98[0];
      v18 = &v61[*(VMa + 20)];
      MessageIdentifierSet.insert(_:)(v99, &v97, v68);
    }

    else
    {
      v19 = v96;
      v96[0] = v21;
      v96[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24F8, &qword_1B0E9CD00);
      sub_1B0E452E8();
    }
  }

  sub_1B07D772C(v44);
  sub_1B03D09B8(v64);
  sub_1B0A40C04(v61, v41);
  sub_1B03D09B8(v67);
  return sub_1B0A3FD00(v61);
}

uint64_t sub_1B0A3F6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v40 = a1;
  v45 = sub_1B0A40D6C;
  v35 = sub_1B074E9DC;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v37 = 0;
  v48 = sub_1B0E43308();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v36 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v2 = v13 - v36;
  v49 = v13 - v36;
  v38 = (*(*(_s9UIDsQueryVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v42 = v13 - v38;
  V7EncodedVMa = _s9UIDsQueryV7EncodedVMa();
  v41 = (*(*(V7EncodedVMa - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v40);
  v52 = v13 - v41;
  v68 = v13 - v41;
  v67 = v3;
  v66 = v4;
  sub_1B0A40C04(v3, v5);
  sub_1B0A3FF94(v42, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v44 = swift_allocBox();
  v43 = v6;
  v65 = v6;
  v7 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v7);

  v63 = v45;
  v64 = v44;
  (*(v46 + 16))(v2, v52, v48);
  v50 = sub_1B0E43258();
  (*(v46 + 8))(v49, v48);
  v8 = (v52 + *(V7EncodedVMa + 20));
  v53 = *v8;
  v54 = v8[1];
  sub_1B070E18C(v53, v54);
  if ((v54 & 0xF000000000000000) == 0xF000000000000000)
  {
    v31 = 0;
  }

  else
  {
    v32 = v53;
    v33 = v54;
    v28 = v54;
    v29 = v53;
    v30 = sub_1B0E42F18();
    sub_1B0391D50(v29, v28);
    v31 = v30;
  }

  v25 = v31;
  v9 = (v52 + *(V7EncodedVMa + 24));
  v26 = *v9;
  v27 = v9[1];
  sub_1B070E18C(v26, v27);
  if ((v27 & 0xF000000000000000) == 0xF000000000000000)
  {
    v22 = 0;
  }

  else
  {
    v23 = v26;
    v24 = v27;
    v19 = v27;
    v20 = v26;
    v21 = sub_1B0E42F18();
    sub_1B0391D50(v20, v19);
    v22 = v21;
  }

  v15 = v22;

  v10 = swift_allocObject();
  v11 = v44;
  v14 = v10;
  *(v10 + 16) = v45;
  *(v10 + 24) = v11;

  v61 = v35;
  v62 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = 0;
  v59 = sub_1B0740D3C;
  v60 = &block_descriptor_21;
  v17 = v14;
  v16 = _Block_copy(&aBlock);

  [v39 enumerateUIDsInIndexSet:v50 includingJSON:v25 excludingJSON:v15 withBlock:v16];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v25);
    MEMORY[0x1E69E5920](v50);
    v13[1] = &v55;
    swift_beginAccess();
    sub_1B03D08AC(v43, v34);
    swift_endAccess();

    sub_1B0A40D74(v52);
    return sub_1B04197E4(v45);
  }

  return result;
}

char *sub_1B0A3FD00(char *a1)
{
  v1 = *a1;

  VMa = _s9UIDsQueryVMa();
  v3 = *(VMa + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v6 = *(*(v5 - 8) + 8);
  v6(&a1[v3]);
  (v6)(&a1[*(VMa + 24)], v5);
  return a1;
}

unint64_t sub_1B0A3FDFC()
{
  v2 = qword_1EB6E3A70;
  if (!qword_1EB6E3A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3A60, &qword_1B0EA3920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3FE84()
{
  v2 = qword_1EB6E3A78;
  if (!qword_1EB6E3A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3A68, &unk_1B0EA3928);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3FF0C()
{
  v2 = qword_1EB6DE4B8[0];
  if (!qword_1EB6DE4B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EB6DE4B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A3FF94@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v52 = a1;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v35 = 0;
  v51 = 0;
  V7EncodedV13UIDSetAsArrayVMa = _s9UIDsQueryV7EncodedV13UIDSetAsArrayVMa();
  v37 = (*(*(V7EncodedV13UIDSetAsArrayVMa - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](V7EncodedV13UIDSetAsArrayVMa);
  v38 = v13 - v37;
  v39 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13 - v37);
  v40 = v13 - v39;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v41 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v55 = v13 - v41;
  v42 = (*(*(sub_1B0E43308() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v50 = v13 - v42;
  v44 = *(*(_s9UIDsQueryV7EncodedVMa() - 8) + 64);
  v43 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v51);
  v45 = v13 - v43;
  v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v47 = v13 - v46;
  v59 = v13 - v46;
  v58 = v4;
  sub_1B0E42928();
  v5 = sub_1B0E42908();
  v6 = v55;
  v48 = v5;
  v57 = v5;
  v49 = *v52;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A4126C(v49, v50);
  VMa = _s9UIDsQueryVMa();
  sub_1B03D08AC(&v52[*(VMa + 20)], v6);
  v56 = MessageIdentifierSet.isEmpty.getter();
  sub_1B03D09B8(v55);
  if (v56)
  {
    v31 = 0;
    v32 = 0xF000000000000000;
    v33 = v35;
  }

  else
  {
    v7 = v35;
    sub_1B03D08AC(&v52[*(VMa + 20)], v55);
    sub_1B0A416E8(v55, v40);
    sub_1B0A41704();
    v8 = sub_1B0E428F8();
    v27 = v7;
    v28 = v8;
    v29 = v9;
    v30 = v7;
    if (v7)
    {
      v13[1] = v30;
      sub_1B03D09B8(v40);
      swift_unexpectedError();
      __break(1u);
      goto LABEL_11;
    }

    v26 = v29;
    v25 = v28;
    sub_1B03D09B8(v40);
    v31 = v25;
    v32 = v26;
    v33 = v27;
  }

  v21 = v33;
  v22 = v32;
  v23 = v31;
  sub_1B03D08AC(&v52[*(VMa + 24)], v55);
  v24 = MessageIdentifierSet.isEmpty.getter();
  sub_1B03D09B8(v55);
  if (v24)
  {
    v19 = 0;
    v20 = 0xF000000000000000;
LABEL_9:
    sub_1B0A411BC(v50, v23, v22, v19, v20, v45);
    sub_1B0A41784(v45, v47);

    sub_1B0A4181C(v47, v34);
    sub_1B0A3FD00(v52);
    return sub_1B0A40D74(v47);
  }

  v10 = v21;
  sub_1B03D08AC(&v52[*(VMa + 24)], v55);
  sub_1B0A416E8(v55, v38);
  sub_1B0A41704();
  v16 = sub_1B0E428F8();
  v17 = v11;
  v18 = v10;
  if (!v10)
  {
    v15 = v17;
    v14 = v16;
    sub_1B03D09B8(v38);
    v19 = v14;
    v20 = v15;
    goto LABEL_9;
  }

LABEL_11:
  v13[0] = v18;
  sub_1B03D09B8(v38);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B0A4055C(int a1)
{
  v8 = 0;
  v13 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = swift_projectBox();
  v9 = a1;
  v5 = sub_1B041C1E8();
  v1 = sub_1B07467B8();
  result = MessageIdentifier.init<A>(exactly:)(&v9, &type metadata for UID, MEMORY[0x1E69E7668], v5, v1, &v10);
  if ((v11 & 1) == 0)
  {
    v8 = v10;
    v6 = v10;
    swift_beginAccess();
    MessageIdentifierSet.insert(_:)(v7, &v6, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B0A406B8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  VMa = _s9UIDsQueryVMa();
  sub_1B074F0FC(v7, v1 + *(VMa + 20));
  return sub_1B03D09B8(v8);
}