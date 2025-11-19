unint64_t sub_1B08DEFE0()
{
  v2 = qword_1EB6DED10;
  if (!qword_1EB6DED10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08DF0B4()
{
  v3 = sub_1B08DF180();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B08DF21C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B08DF180()
{
  v4 = qword_1EB6DB960;
  if (!qword_1EB6DB960)
  {
    sub_1B0E444E8();
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB960);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B08DF21C()
{
  v4 = qword_1EB6E2CA0;
  if (!qword_1EB6E2CA0)
  {
    v3 = sub_1B0E44708();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6E2CA0);
      return v1;
    }
  }

  return v4;
}

void *sub_1B08DF2C4(const void *a1, void *a2)
{
  v6 = sub_1B0E444E8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *sub_1B08DF42C(char *a1, char *a2)
{
  v11 = _s5StateVMa_0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C80, &qword_1B0EA02B0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v7 = sub_1B0E444E8();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a1, 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
      memcpy(a2, a1, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }

    v5 = *(v11 + 20);
    v6 = *&a1[v5];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *&a2[v5] = v6;
    (*(v12 + 56))();
  }

  return a2;
}

uint64_t sub_1B08DF64C(uint64_t a1)
{
  v6 = _s5StateVMa_0();
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v3 = sub_1B0E444E8();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(a1, 1))
    {
      (*(v4 + 8))(a1, v3);
    }

    v1 = *(a1 + *(v6 + 20));
  }

  return a1;
}

uint64_t sub_1B08DF77C()
{
  v2 = (v0 + OBJC_IVAR___MFMailMessageLibrarySwiftProperties_recentMailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B08DF7E4(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___MFMailMessageLibrarySwiftProperties_recentMailboxes);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

id sub_1B08DF8A4(void *a1)
{
  ObjectType = swift_getObjectType();
  v14 = a1;
  v15 = v1;
  type metadata accessor for RecentMailboxes();
  v11 = [a1 mailboxFrecencyController];
  v12 = [a1 persistence];
  if (v12)
  {
    v8 = v12;
  }

  else
  {
    LOBYTE(v3) = 2;
    v4 = 18;
    LODWORD(v5) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  v6 = [v8 mailboxPersistence];
  MEMORY[0x1E69E5920](v8);
  *&v1[OBJC_IVAR___MFMailMessageLibrarySwiftProperties_recentMailboxes] = sub_1B0A1F630(v11, v6);
  v13.receiver = v15;
  v13.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v13, sel_init);
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v15);
  return v7;
}

uint64_t sub_1B08DFB7C()
{
  [v0 swiftProperties];
  _s15SwiftPropertiesCMa();
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1B08DFC10()
{
  v2 = sub_1B08DFB7C();
  v1 = (v2 + OBJC_IVAR___MFMailMessageLibrarySwiftProperties_recentMailboxes);
  swift_beginAccess();
  v3 = *v1;

  swift_endAccess();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t MFMailMessageLibrary.test_setRecentMailboxes(_:)(uint64_t a1)
{
  v5 = sub_1B08DFB7C();

  v4 = (v5 + OBJC_IVAR___MFMailMessageLibrarySwiftProperties_recentMailboxes);
  swift_beginAccess();
  v1 = *v4;
  *v4 = a1;

  swift_endAccess();
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1B08DFD34()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6E2D20);
  __swift_project_value_buffer(v1, qword_1EB6E2D20);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B08DFDD8()
{
  if (qword_1EB6E0B58 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6E2D20);
}

uint64_t sub_1B08DFE44()
{
  v2 = *(v0 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  return v2;
}

id sub_1B08DFE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCallbackQueue:a1 mailMessageLibrary:a2 legacyLoader:a3];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id sub_1B08DFF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v11 = a1;
  v10 = a2;
  v9 = a3;
  _s14ImplementationCMa_0();
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a2);
  swift_unknownObjectRetain();
  *OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation = sub_1B08E0050(a1, a2, a3);
  v8.receiver = v12;
  v8.super_class = MFNanoServerFullMessageLoader2;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x1E69E5928](v7);
  v12 = v7;
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v12);
  return v7;
}

uint64_t sub_1B08E0120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v19 = a2;
  v20 = a3;
  v21 = sub_1B08E427C;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v23 = 0;
  v27 = sub_1B0E44238();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v15 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = &v14 - v15;
  v31 = sub_1B0E44288();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v16 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v30 = &v14 - v16;
  v44 = v4;
  v42 = v5;
  v43 = v6;
  v41 = v3;
  v17 = *(v3 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  v33 = *(v17 + 16);
  MEMORY[0x1E69E5928](v33);

  MEMORY[0x1E69E5928](v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v7 = swift_allocObject();
  v8 = v19;
  v9 = v20;
  v10 = v21;
  v11 = v7;
  v12 = v22;
  v11[2] = v18;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  v39 = v10;
  v40 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = 0;
  v37 = sub_1B038C908;
  v38 = &block_descriptor_11;
  v32 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v23, v30, v26, v32);
  (*(v24 + 8))(v26, v27);
  (*(v28 + 8))(v30, v31);
  _Block_release(v32);

  return MEMORY[0x1E69E5920](v33);
}

uint64_t sub_1B08E046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v23 = sub_1B08E0960;
  v24 = sub_1B08E430C;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v25 = 0;
  v37 = 0;
  v34 = sub_1B0E44468();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v29 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v35 = (v17 - v29);
  v43 = v4;
  v41 = v5;
  v42 = v6;
  v40 = v3;
  MEMORY[0x1E69E5928](v3);
  v30 = *(v3 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  v31 = *(v30 + 16);
  MEMORY[0x1E69E5928](v31);

  v7 = v32;
  *v35 = v31;
  v8 = *MEMORY[0x1E69E8020];
  (*(v7 + 104))();
  v36 = sub_1B0E44488();
  (*(v32 + 8))(v35, v34);
  result = v36;
  if (v36)
  {
    v10 = v25;
    MEMORY[0x1E69E5920](v22);
    v38[1] = v28;
    sub_1B08E4290();
    v11 = sub_1B0E44588();
    v21 = v38;
    v38[0] = v11;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B06E3764();
    result = sub_1B0E44FD8();
    if (!v10)
    {
      v18 = v39;
      v37 = v39;
      v17[2] = *(v22 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

      v12 = swift_allocObject();
      v13 = v26;
      v14 = v24;
      v15 = v12;
      v16 = v18;
      v17[1] = v15;
      *(v15 + 16) = v27;
      *(v15 + 24) = v13;
      sub_1B08E0FC0(v16, v14, v15);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B08E087C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    v5 = sub_1B0E44598();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v3 = sub_1B0E43368();
  (*(a3 + 16))(a3, v6, v3 & 1);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1B08E0960(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E0A0C(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B0E454D8();
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1B08E0A0C(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v11 = 0;
  v10 = sub_1B08F3314;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v6 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v7 = v4 - v6;
  v18 = v3;
  v19 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = v8;
  v21 = v9;
  sub_1B0E42E38();
  sub_1B039A570(v10, v11, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7360], v13, &v16);
  sub_1B06E3800(v7);
  v14 = v16;
  v15 = v17 & 1;
  if (v17)
  {
    v5 = 0;
  }

  else
  {
    v5 = v14;
  }

  v4[1] = v5;
  v4[0] = &v20;
  v22 = v5;

  sub_1B03B1198(v4[0]);
}

uint64_t sub_1B08E0BDC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  v2 = sub_1B08E4290();
  if (MEMORY[0x1B27267E0](a1, &unk_1F26DF238, v10, v2))
  {

    a2(0, 0);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DA8, &qword_1B0EA0380);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2ED0, &qword_1B0EA05F8);
    v4 = sub_1B08F6650();
    sub_1B039CA88(sub_1B08E0E18, 0, v6, v7, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2EE0, &qword_1B0EA0600);
    sub_1B08F66D8();
    v5 = sub_1B0E44718();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2(v5, 1);
  }
}

uint64_t sub_1B08E0E18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v8 = a1[1];
  v5 = a1[2];
  v10 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_unknownObjectRetain();
  v6 = sub_1B08E0EE8(v4, v8);
  v7 = v2;
  swift_unknownObjectRelease();
  *a2 = v6;
  a2[1] = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_unknownObjectRetain();
  a2[2] = v10;
}

uint64_t sub_1B08E0EE8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = a1;
  v6 = a2;

  sub_1B03B1198(&v5);
  return a1;
}

uint64_t sub_1B08E0F74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = *a2;
  result = swift_unknownObjectRetain();
  *a3 = v5;
  return result;
}

uint64_t sub_1B08E0FC0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v115 = a1;
  v114 = a2;
  v113 = a3;
  v91 = sub_1B070B278;
  v92 = sub_1B039BC08;
  v93 = sub_1B08F362C;
  v94 = sub_1B03B0DF8;
  v95 = sub_1B08F362C;
  v96 = sub_1B03B0DF8;
  v97 = sub_1B0398F5C;
  v98 = sub_1B0398F5C;
  v99 = sub_1B03991EC;
  v100 = sub_1B0398F5C;
  v101 = sub_1B0398F5C;
  v102 = sub_1B0399260;
  v103 = sub_1B0398F5C;
  v104 = sub_1B0398F5C;
  v105 = sub_1B0399260;
  v136 = 0;
  v134 = 0;
  v135 = 0;
  v133 = 0;
  v131 = 0;
  v129 = 0;
  v106 = 0;
  v107 = 0;
  v108 = sub_1B0E439A8();
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v112 = v45 - v111;
  v120 = sub_1B0E44468();
  v118 = *(v120 - 8);
  v119 = v120 - 8;
  v116 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v115);
  v121 = (v45 - v116);
  v136 = v4;
  v134 = v5;
  v135 = v6;
  v133 = v3;

  v117 = *(v3 + 16);
  MEMORY[0x1E69E5928](v117);
  v7 = v118;
  *v121 = v117;
  v8 = *MEMORY[0x1E69E8020];
  (*(v7 + 104))();
  v122 = sub_1B0E44488();
  (*(v118 + 8))(v121, v120);
  result = v122;
  if (v122)
  {

    v89 = sub_1B08E4290();
    if (sub_1B0E454F8())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D48, &qword_1B0EA0348);
      v45[0] = sub_1B0E46A48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
      v45[1] = sub_1B0E445D8();
      v114();
    }

    else
    {
      v54 = &v132;
      v55 = 0;
      swift_beginAccess();
      v10 = sub_1B08E443C();
      v11 = v112;
      v62 = v10;
      swift_endAccess();
      v131 = v62;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v56 = &v130;
      v71 = 32;
      swift_beginAccess();
      v58 = *(v90 + 40);
      v59 = *(v90 + 48);
      v60 = *(v90 + 56);
      v57 = *(v90 + 64);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v61 = sub_1B08EBE30();

      v63 = sub_1B0E45418();

      v129 = v63;
      v12 = sub_1B08DFDD8();
      (*(v109 + 16))(v11, v12, v108);
      v72 = 7;
      v65 = swift_allocObject();
      *(v65 + 16) = v62;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v64 = 24;
      v67 = swift_allocObject();
      *(v67 + 16) = v63;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v73 = swift_allocObject();
      *(v73 + 16) = v115;
      v87 = sub_1B0E43988();
      v88 = sub_1B0E45908();
      v69 = 17;
      v75 = swift_allocObject();
      *(v75 + 16) = 0;
      v76 = swift_allocObject();
      *(v76 + 16) = 4;
      v13 = swift_allocObject();
      v14 = v65;
      v66 = v13;
      *(v13 + 16) = v91;
      *(v13 + 24) = v14;
      v15 = swift_allocObject();
      v16 = v66;
      v77 = v15;
      *(v15 + 16) = v92;
      *(v15 + 24) = v16;
      v78 = swift_allocObject();
      *(v78 + 16) = 0;
      v79 = swift_allocObject();
      v70 = 8;
      *(v79 + 16) = 8;
      v17 = swift_allocObject();
      v18 = v67;
      v68 = v17;
      *(v17 + 16) = v93;
      *(v17 + 24) = v18;
      v19 = swift_allocObject();
      v20 = v68;
      v80 = v19;
      *(v19 + 16) = v94;
      *(v19 + 24) = v20;
      v81 = swift_allocObject();
      *(v81 + 16) = 0;
      v82 = swift_allocObject();
      *(v82 + 16) = v70;
      v21 = swift_allocObject();
      v22 = v73;
      v74 = v21;
      *(v21 + 16) = v95;
      *(v21 + 24) = v22;
      v23 = swift_allocObject();
      v24 = v74;
      v84 = v23;
      *(v23 + 16) = v96;
      *(v23 + 24) = v24;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v83 = sub_1B0E46A48();
      v85 = v25;

      v26 = v75;
      v27 = v85;
      *v85 = v97;
      v27[1] = v26;

      v28 = v76;
      v29 = v85;
      v85[2] = v98;
      v29[3] = v28;

      v30 = v77;
      v31 = v85;
      v85[4] = v99;
      v31[5] = v30;

      v32 = v78;
      v33 = v85;
      v85[6] = v100;
      v33[7] = v32;

      v34 = v79;
      v35 = v85;
      v85[8] = v101;
      v35[9] = v34;

      v36 = v80;
      v37 = v85;
      v85[10] = v102;
      v37[11] = v36;

      v38 = v81;
      v39 = v85;
      v85[12] = v103;
      v39[13] = v38;

      v40 = v82;
      v41 = v85;
      v85[14] = v104;
      v41[15] = v40;

      v42 = v84;
      v43 = v85;
      v85[16] = v105;
      v43[17] = v42;
      sub_1B0394964();

      if (os_log_type_enabled(v87, v88))
      {
        v44 = v106;
        v47 = sub_1B0E45D78();
        v45[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v46 = 0;
        v48 = sub_1B03949A8(0);
        v49 = sub_1B03949A8(v46);
        v50 = &v127;
        v127 = v47;
        v51 = &v126;
        v126 = v48;
        v52 = &v125;
        v125 = v49;
        sub_1B0394A48(0, &v127);
        sub_1B0394A48(3, v50);
        v123 = v97;
        v124 = v75;
        sub_1B03949FC(&v123, v50, v51, v52);
        v53 = v44;
        if (v44)
        {

          __break(1u);
        }

        else
        {
          v123 = v98;
          v124 = v76;
          sub_1B03949FC(&v123, &v127, &v126, &v125);
          v45[10] = 0;
          v123 = v99;
          v124 = v77;
          sub_1B03949FC(&v123, &v127, &v126, &v125);
          v45[9] = 0;
          v123 = v100;
          v124 = v78;
          sub_1B03949FC(&v123, &v127, &v126, &v125);
          v45[8] = 0;
          v123 = v101;
          v124 = v79;
          sub_1B03949FC(&v123, &v127, &v126, &v125);
          v45[7] = 0;
          v123 = v102;
          v124 = v80;
          sub_1B03949FC(&v123, &v127, &v126, &v125);
          v45[6] = 0;
          v123 = v103;
          v124 = v81;
          sub_1B03949FC(&v123, &v127, &v126, &v125);
          v45[5] = 0;
          v123 = v104;
          v124 = v82;
          sub_1B03949FC(&v123, &v127, &v126, &v125);
          v45[4] = 0;
          v123 = v105;
          v124 = v84;
          sub_1B03949FC(&v123, &v127, &v126, &v125);
          _os_log_impl(&dword_1B0389000, v87, v88, "[%u] Requesting %ld message(s) (of %ld total).", v47, 0x1Cu);
          v45[3] = 0;
          sub_1B03998A8(v48);
          sub_1B03998A8(v49);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v87);
      (*(v109 + 8))(v112, v108);
      sub_1B08EC054(v62, v63);
      v45[2] = &v128;
      swift_beginAccess();
      sub_1B08E4AE0();
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08E2208(uint64_t a1)
{
  v21 = a1;
  v28 = 0;
  v27 = sub_1B08E0960;
  v14 = sub_1B08F4860;
  v43 = 0;
  v42 = 0;
  v39 = 0;
  v15 = 0;
  v16 = sub_1B0E44238();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = &v8 - v19;
  v22 = sub_1B0E44288();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v8 - v25;
  v43 = v2;
  v42 = v1;
  v40[1] = v2;
  sub_1B08E4290();
  v3 = sub_1B0E44588();
  v31 = v40;
  v40[0] = v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B06E3764();
  sub_1B0E44FD8();
  v12 = v41;
  v39 = v41;
  v9 = *(v13 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  v11 = *(v9 + 16);
  MEMORY[0x1E69E5928](v11);

  MEMORY[0x1E69E5928](v13);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = swift_allocObject();
  v5 = v14;
  v6 = v12;
  *(v4 + 16) = v13;
  *(v4 + 24) = v6;
  v37 = v5;
  v38 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = 0;
  v35 = sub_1B038C908;
  v36 = &block_descriptor_65;
  v10 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v26, v20, v10);
  (*(v17 + 8))(v20, v16);
  (*(v23 + 8))(v26, v22);
  _Block_release(v10);

  MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1B08E25D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  sub_1B08E2634(a2);
}

uint64_t sub_1B08E2634(uint64_t a1)
{
  v54 = a1;
  v42 = sub_1B08F362C;
  v43 = sub_1B03B0DF8;
  v44 = sub_1B0398F5C;
  v45 = sub_1B0398F5C;
  v46 = sub_1B0399260;
  v71 = 0;
  v70 = 0;
  v47 = 0;
  v48 = 0;
  v49 = sub_1B0E439A8();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v53 = v20 - v52;
  v59 = sub_1B0E44468();
  v57 = *(v59 - 8);
  v58 = v59 - 8;
  v55 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v60 = (v20 - v55);
  v71 = v2;
  v70 = v1;

  v56 = *(v1 + 16);
  MEMORY[0x1E69E5928](v56);
  v3 = v57;
  *v60 = v56;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v61 = sub_1B0E44488();
  (*(v57 + 8))(v60, v59);
  result = v61;
  if (v61)
  {
    v6 = v53;

    v7 = sub_1B08DFDD8();
    (*(v50 + 16))(v6, v7, v49);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v31 = 7;
    v32 = swift_allocObject();
    *(v32 + 16) = v54;
    v40 = sub_1B0E43988();
    v41 = sub_1B0E45908();
    v29 = 17;
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v30 = 32;
    v8 = swift_allocObject();
    v9 = v32;
    v33 = v8;
    *(v8 + 16) = v42;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v33;
    v37 = v10;
    *(v10 + 16) = v43;
    *(v10 + 24) = v11;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v36 = sub_1B0E46A48();
    v38 = v12;

    v13 = v34;
    v14 = v38;
    *v38 = v44;
    v14[1] = v13;

    v15 = v35;
    v16 = v38;
    v38[2] = v45;
    v16[3] = v15;

    v17 = v37;
    v18 = v38;
    v38[4] = v46;
    v18[5] = v17;
    sub_1B0394964();

    if (os_log_type_enabled(v40, v41))
    {
      v19 = v47;
      v22 = sub_1B0E45D78();
      v20[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v21 = 0;
      v23 = sub_1B03949A8(0);
      v24 = sub_1B03949A8(v21);
      v25 = &v66;
      v66 = v22;
      v26 = &v65;
      v65 = v23;
      v27 = &v64;
      v64 = v24;
      sub_1B0394A48(0, &v66);
      sub_1B0394A48(1, v25);
      v62 = v44;
      v63 = v34;
      sub_1B03949FC(&v62, v25, v26, v27);
      v28 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v62 = v45;
        v63 = v35;
        sub_1B03949FC(&v62, &v66, &v65, &v64);
        v20[7] = 0;
        v62 = v46;
        v63 = v37;
        sub_1B03949FC(&v62, &v66, &v65, &v64);
        _os_log_impl(&dword_1B0389000, v40, v41, "Cancelling %ld message request(s).", v22, 0xCu);
        v20[6] = 0;
        sub_1B03998A8(v23);
        sub_1B03998A8(v24);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v40);
    (*(v50 + 8))(v53, v49);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20[1] = &v69;
    v69 = v54;
    v20[2] = &v68;
    v20[3] = 33;
    v20[4] = 0;
    swift_beginAccess();
    v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B08F48D0();
    sub_1B0E45568();
    swift_endAccess();
    v20[5] = &v67;
    swift_beginAccess();
    sub_1B08E4AE0();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08E2FA4()
{
  v9 = sub_1B08F4958;
  v28 = 0;
  v10 = 0;
  v14 = sub_1B0E44238();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v5 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = &v4 - v5;
  v18 = sub_1B0E44288();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v6 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v17 = &v4 - v6;
  v28 = v0;
  v7 = *(v0 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  v20 = *(v7 + 16);
  MEMORY[0x1E69E5928](v20);

  MEMORY[0x1E69E5928](v8);
  v1 = swift_allocObject();
  v2 = v9;
  *(v1 + 16) = v8;
  v26 = v2;
  v27 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = 0;
  v24 = sub_1B038C908;
  v25 = &block_descriptor_90;
  v19 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v10, v17, v13, v19);
  (*(v11 + 8))(v13, v14);
  (*(v15 + 8))(v17, v18);
  _Block_release(v19);

  return MEMORY[0x1E69E5920](v20);
}

uint64_t sub_1B08E322C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  sub_1B08E3280();
}

uint64_t sub_1B08E3280()
{
  v47 = sub_1B08F362C;
  v48 = sub_1B03B0DF8;
  v49 = sub_1B0398F5C;
  v50 = sub_1B0398F5C;
  v51 = sub_1B0399260;
  v76 = 0;
  v74 = 0;
  v52 = 0;
  v53 = 0;
  v54 = sub_1B0E439A8();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v58 = v18 - v57;
  v63 = sub_1B0E44468();
  v61 = *(v63 - 8);
  v62 = v63 - 8;
  v59 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v64 = (v18 - v59);
  v76 = v0;

  v60 = *(v0 + 16);
  MEMORY[0x1E69E5928](v60);
  v1 = v61;
  *v64 = v60;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v65 = sub_1B0E44488();
  (*(v61 + 8))(v64, v63);
  result = v65;
  if (v65)
  {
    v4 = v58;

    v27 = &v75;
    v34 = 32;
    swift_beginAccess();
    v29 = *(v46 + 40);
    v30 = *(v46 + 48);
    v31 = *(v46 + 56);
    v28 = *(v46 + 64);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v32 = sub_1B08EBFA4(v29, v30, v31, v28);
    v74 = v32;

    v5 = sub_1B08DFDD8();
    (*(v55 + 16))(v4, v5, v54);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = 7;
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    v44 = sub_1B0E43988();
    v45 = sub_1B0E45908();
    v33 = 17;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v6 = swift_allocObject();
    v7 = v36;
    v37 = v6;
    *(v6 + 16) = v47;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v37;
    v41 = v8;
    *(v8 + 16) = v48;
    *(v8 + 24) = v9;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v40 = sub_1B0E46A48();
    v42 = v10;

    v11 = v38;
    v12 = v42;
    *v42 = v49;
    v12[1] = v11;

    v13 = v39;
    v14 = v42;
    v42[2] = v50;
    v14[3] = v13;

    v15 = v41;
    v16 = v42;
    v42[4] = v51;
    v16[5] = v15;
    sub_1B0394964();

    if (os_log_type_enabled(v44, v45))
    {
      v17 = v52;
      v20 = sub_1B0E45D78();
      v18[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v19 = 0;
      v21 = sub_1B03949A8(0);
      v22 = sub_1B03949A8(v19);
      v23 = &v70;
      v70 = v20;
      v24 = &v69;
      v69 = v21;
      v25 = &v68;
      v68 = v22;
      sub_1B0394A48(0, &v70);
      sub_1B0394A48(1, v23);
      v66 = v49;
      v67 = v38;
      sub_1B03949FC(&v66, v23, v24, v25);
      v26 = v17;
      if (v17)
      {

        __break(1u);
      }

      else
      {
        v66 = v50;
        v67 = v39;
        sub_1B03949FC(&v66, &v70, &v69, &v68);
        v18[7] = 0;
        v66 = v51;
        v67 = v41;
        sub_1B03949FC(&v66, &v70, &v69, &v68);
        _os_log_impl(&dword_1B0389000, v44, v45, "Cancelling %ld pending message request(s).", v20, 0xCu);
        v18[6] = 0;
        sub_1B03998A8(v21);
        sub_1B03998A8(v22);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v44);
    (*(v55 + 8))(v58, v54);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18[1] = &v73;
    v73 = v32;
    v18[2] = &v72;
    v18[3] = 33;
    v18[4] = 0;
    swift_beginAccess();
    v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B08F48D0();
    sub_1B0E45568();
    swift_endAccess();
    v18[5] = &v71;
    swift_beginAccess();
    sub_1B08E4AE0();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08E3CB4()
{
  v2 = *(v0 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  v3 = *(v2 + 32);
  swift_unknownObjectRetain();

  swift_getObjectType();
  [v3 start];
  return swift_unknownObjectRelease();
}

uint64_t sub_1B08E3E40()
{
  v2 = *(v0 + 32);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B08E3E6C()
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v4 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D48, &qword_1B0EA0348);
  sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  sub_1B08E4290();
  v2 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = v2;
  sub_1B0E46A48();
  v3 = sub_1B0E45438();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = v3;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(1);
  v8 = v0;
  sub_1B08F6520(&v5);
  return v4;
}

uint64_t sub_1B08E3F90()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B08E4014(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  v5 = *(v4 + 40);
  v8 = *(v4 + 48);
  v9 = *(v4 + 56);
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;

  swift_endAccess();
}

uint64_t sub_1B08E40D8()
{
  swift_beginAccess();
  v2 = *(v0 + 72);

  swift_endAccess();
  return v2;
}

uint64_t sub_1B08E4128(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;

  swift_endAccess();
}

void *sub_1B08E4188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = sub_1B08E3E6C();
  *(v3 + 48) = v4;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  type metadata accessor for Cache();
  Cache.__allocating_init()();
  v12[9] = v7;
  MEMORY[0x1E69E5928](a1);
  v12[2] = a1;
  MEMORY[0x1E69E5928](a2);
  v12[3] = a2;
  swift_unknownObjectRetain();
  v12[4] = a3;
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v12;
}

unint64_t sub_1B08E4290()
{
  v2 = qword_1EB6DA670;
  if (!qword_1EB6DA670)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08E4324()
{
  MEMORY[0x1E69E5920](v0[2]);
  MEMORY[0x1E69E5920](v0[3]);
  v1 = v0[4];
  swift_unknownObjectRelease();
  sub_1B08F6520(v0 + 5);
  v2 = v0[9];

  return v4;
}

uint64_t sub_1B08E443C()
{
  v3 = *(v0 + 24);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v3 + 1);
  *(v0 + 24) = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D68, &qword_1B0EA0358);
  sub_1B0E452E8();
  return v3;
}

uint64_t sub_1B08E4508(uint64_t a1, uint64_t a2, char a3)
{
  v51 = 0;
  memset(__b, 0, sizeof(__b));
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v56 = a1;
  v55 = a2;
  v54 = a3 & 1;
  v53 = v3;
  if ((a3 & 1) != 0 && (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), a2))
  {
    v51 = a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    sub_1B0E445C8();
    memcpy(__b, v57, sizeof(__b));
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D70, &qword_1B0EA0360);
      sub_1B0E446D8();
      v21 = v47;
      v22 = v48;
      if (!v48)
      {
        break;
      }

      v34 = v47;
      v35 = v48;
      v33 = v49;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B08E0A0C(v21, v22);
      v18 = v4;
      v19 = v5;
      v30 = v21;
      v31 = v4;
      v32 = v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = *(v23 + 8);
      v28[0] = v21;
      v28[1] = v18;
      v28[2] = v19;
      sub_1B08E4290();
      sub_1B0E44778();
      sub_1B03B1198(v28);
      v27 = v29;
      v17 = v29 == 0;
      sub_1B03FD360(&v27);
      if (v17)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DA8, &qword_1B0EA0380);
        sub_1B0E44788();
      }

      swift_unknownObjectRelease();
    }

    sub_1B06B91B0(__b);
    v43[1] = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D78, &qword_1B0EA0368);
    v6 = sub_1B08F4A40();
    MEMORY[0x1B27270C0](v43, v9, v6);
    v10 = v43[0];

    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D88, &qword_1B0EA0370);
    sub_1B08F4AC8();
    sub_1B0E46728();
    sub_1B039E440(&v42);
    v15 = v44;
    v11 = v45;
    v16 = v46;
    v39 = v44;
    v40 = v45;
    v41 = v46;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38[0] = v15;
    v38[1] = v11;
    v38[2] = v16;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D98, &qword_1B0EA0378);
    v13 = sub_1B08E4290();
    v7 = sub_1B08F4B50();
    v14 = MEMORY[0x1B2727540](v38, a1, &unk_1F26DF238, v12, v13, v7);
    v37 = v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B08F48D0();
    sub_1B0E45568();
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v52 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B08F48D0();
    return sub_1B0E45568();
  }
}

uint64_t sub_1B08E4A80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = v5;
  sub_1B08E0A0C(v5, v6);
  *a2 = v5;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_1B08E4AE0()
{
  sub_1B08E4B84();
  sub_1B08E8684();
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v2 = *(v1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E89A8(v3, v4, v5, v2);
}

uint64_t sub_1B08E4B84()
{
  v519 = 0;
  v518 = 0;
  v497 = 0;
  v515 = 0;
  v511 = 0u;
  v510 = 0u;
  v509 = 0;
  v485 = sub_1B0E439A8();
  v486 = *(v485 - 8);
  v487 = v486;
  v488 = *(v486 + 64);
  MEMORY[0x1EEE9AC00](v485 - 8);
  v490 = (v488 + 15) & 0xFFFFFFFFFFFFFFF0;
  v489 = &v104 - v490;
  MEMORY[0x1EEE9AC00](&v104 - v490);
  v491 = &v104 - v490;
  v519 = v0;
  v493 = *v0;
  v495 = v0[1];
  v496 = v0[2];
  v492 = *(v0 + 6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v494 = sub_1B08EB604();
  v518 = v494;

  for (i = v497; ; i = v105)
  {
    v1 = i;
    v477 = *v484;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v516[0] = v477;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v481 = &v104;
    MEMORY[0x1EEE9AC00](&v104);
    v479 = &v104 - 4;
    *(&v104 - 2) = v2;
    v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D68, &qword_1B0EA0358);
    v478 = v480;
    sub_1B08F4C04();
    sub_1B0E456F8();
    v482 = v1;
    v483 = v481;
    if (v1)
    {
      break;
    }

    sub_1B039E440(v516);
    v476 = v516[1];
    if (v517)
    {
    }

    v475 = v476;
    v3 = v482;
    v515 = v476;
    sub_1B0E45308();
    v460 = v512;
    v458 = v512;
    v462 = v513;
    *&v469 = v513;
    v461 = *(&v514 + 1);
    v4 = v514;
    *(&v469 + 1) = v4 >> 64;
    v463 = v4;
    v459 = v514;
    LODWORD(v510) = v512;
    *(&v510 + 1) = v513;
    v511 = v514;
    v466 = v484[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v470 = &v104;
    MEMORY[0x1EEE9AC00](&v104);
    v5 = v462;
    v6 = v463;
    v465 = &v104 - 6;
    *(&v104 - 8) = v7;
    *(&v104 - 3) = v5;
    *(&v104 - 2) = v6;
    *(&v104 - 1) = v8;
    v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    v464 = v467;
    v468 = sub_1B08E4290();
    v9 = sub_1B0E44688();
    v471 = v3;
    v472 = v9;
    v473 = v469;
    v474 = v470;
    if (v3)
    {
      goto LABEL_21;
    }

    v454 = v472;

    v509 = v454;
    v455 = &unk_1F26DF238;
    v457 = sub_1B0E44628();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v456 = sub_1B0E454A8();

    if (v457 == v456)
    {
      v69 = v489;
      v70 = sub_1B08DFDD8();
      (*(v487 + 16))(v69, v70, v485);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v177 = 48;
      v190 = 7;
      v71 = swift_allocObject();
      v72 = v459;
      v73 = *(&v469 + 1);
      v74 = v71;
      v75 = v469;
      v182 = v74;
      *(v74 + 16) = v458;
      *(v74 + 24) = v75;
      *(v74 + 32) = v72;
      *(v74 + 40) = v73;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v76 = swift_allocObject();
      v77 = v469;
      v78 = v459;
      v79 = *(&v469 + 1);
      v191 = v76;
      *(v76 + 16) = v458;
      *(v76 + 24) = v77;
      *(v76 + 32) = v78;
      *(v76 + 40) = v79;
      v204 = sub_1B0E43988();
      v178 = v204;
      v203 = sub_1B0E45908();
      v179 = v203;
      v186 = 17;
      v194 = swift_allocObject();
      v180 = v194;
      v185 = 0;
      *(v194 + 16) = 0;
      v195 = swift_allocObject();
      v181 = v195;
      *(v195 + 16) = 4;
      v189 = 32;
      v80 = swift_allocObject();
      v81 = v182;
      v183 = v80;
      *(v80 + 16) = sub_1B08F4CC4;
      *(v80 + 24) = v81;
      v82 = swift_allocObject();
      v83 = v183;
      v196 = v82;
      v184 = v82;
      *(v82 + 16) = sub_1B039BC08;
      *(v82 + 24) = v83;
      v197 = swift_allocObject();
      v187 = v197;
      *(v197 + 16) = v185;
      v198 = swift_allocObject();
      v188 = v198;
      *(v198 + 16) = 8;
      v84 = swift_allocObject();
      v85 = v191;
      v192 = v84;
      *(v84 + 16) = sub_1B08F4CD8;
      *(v84 + 24) = v85;
      v86 = swift_allocObject();
      v87 = v192;
      v201 = v86;
      v193 = v86;
      *(v86 + 16) = sub_1B03B0DF8;
      *(v86 + 24) = v87;
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v199 = sub_1B0E46A48();
      v200 = v88;

      v89 = v194;
      v90 = v200;
      *v200 = sub_1B0398F5C;
      v90[1] = v89;

      v91 = v195;
      v92 = v200;
      v200[2] = sub_1B0398F5C;
      v92[3] = v91;

      v93 = v196;
      v94 = v200;
      v200[4] = sub_1B03991EC;
      v94[5] = v93;

      v95 = v197;
      v96 = v200;
      v200[6] = sub_1B0398F5C;
      v96[7] = v95;

      v97 = v198;
      v98 = v200;
      v200[8] = sub_1B0398F5C;
      v98[9] = v97;

      v99 = v200;
      v100 = v201;
      v200[10] = sub_1B0399260;
      v99[11] = v100;
      sub_1B0394964();

      if (os_log_type_enabled(v204, v203))
      {
        v101 = v471;
        v165 = sub_1B0E45D78();
        v161 = v165;
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v163 = 0;
        v166 = sub_1B03949A8(0);
        v164 = v166;
        v167 = sub_1B03949A8(v163);
        v508 = v165;
        v507 = v166;
        v506 = v167;
        v168 = &v508;
        sub_1B0394A48(0, &v508);
        sub_1B0394A48(2, v168);
        v504 = sub_1B0398F5C;
        v505 = v180;
        sub_1B03949FC(&v504, v168, &v507, &v506);
        v169 = v101;
        v170 = v180;
        v171 = v181;
        v172 = v184;
        v173 = v187;
        v174 = v188;
        v175 = v193;
        v176 = v101;
        if (v101)
        {
          v153 = v170;
          v154 = v171;
          v155 = v172;
          v156 = v173;
          v157 = v174;
          v158 = v175;
          v159 = 0;
          v111 = v175;
          v110 = v174;
          v109 = v173;
          v108 = v172;
          v107 = v171;

          __break(1u);
        }

        else
        {
          v504 = sub_1B0398F5C;
          v505 = v181;
          sub_1B03949FC(&v504, &v508, &v507, &v506);
          v145 = 0;
          v146 = v180;
          v147 = v181;
          v148 = v184;
          v149 = v187;
          v150 = v188;
          v151 = v193;
          v152 = 0;
          v504 = sub_1B03991EC;
          v505 = v184;
          sub_1B03949FC(&v504, &v508, &v507, &v506);
          v137 = 0;
          v138 = v180;
          v139 = v181;
          v140 = v184;
          v141 = v187;
          v142 = v188;
          v143 = v193;
          v144 = 0;
          v504 = sub_1B0398F5C;
          v505 = v187;
          sub_1B03949FC(&v504, &v508, &v507, &v506);
          v129 = 0;
          v130 = v180;
          v131 = v181;
          v132 = v184;
          v133 = v187;
          v134 = v188;
          v135 = v193;
          v136 = 0;
          v504 = sub_1B0398F5C;
          v505 = v188;
          sub_1B03949FC(&v504, &v508, &v507, &v506);
          v121 = 0;
          v122 = v180;
          v123 = v181;
          v124 = v184;
          v125 = v187;
          v126 = v188;
          v127 = v193;
          v128 = 0;
          v504 = sub_1B0399260;
          v505 = v193;
          sub_1B03949FC(&v504, &v508, &v507, &v506);
          v113 = 0;
          v114 = v180;
          v115 = v181;
          v116 = v184;
          v117 = v187;
          v118 = v188;
          v119 = v193;
          v120 = 0;
          _os_log_impl(&dword_1B0389000, v178, v179, "[%u] Calling completion handler for %ld messages.", v161, 0x12u);
          v112 = 0;
          sub_1B03998A8(v164);
          sub_1B03998A8(v167);
          sub_1B0E45D58();

          v160 = v113;
        }
      }

      else
      {
        v102 = v471;

        v160 = v102;
      }

      v106 = v160;

      (*(v487 + 8))(v489, v485);
      v206 = v106;
    }

    else
    {
      v10 = v491;
      v11 = sub_1B08DFDD8();
      (*(v487 + 16))(v10, v11, v485);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v409 = 48;
      v433 = 7;
      v12 = swift_allocObject();
      v13 = v459;
      v14 = *(&v469 + 1);
      v15 = v12;
      v16 = v469;
      v414 = v15;
      *(v15 + 16) = v458;
      *(v15 + 24) = v16;
      *(v15 + 32) = v13;
      *(v15 + 40) = v14;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v17 = swift_allocObject();
      v18 = v469;
      v19 = v459;
      v20 = *(&v469 + 1);
      v419 = v17;
      *(v17 + 16) = v458;
      *(v17 + 24) = v18;
      *(v17 + 32) = v19;
      *(v17 + 40) = v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v424 = swift_allocObject();
      *(v424 + 16) = v454;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v21 = swift_allocObject();
      v22 = v469;
      v23 = v459;
      v24 = *(&v469 + 1);
      v25 = v454;
      v434 = v21;
      *(v21 + 16) = v458;
      *(v21 + 24) = v22;
      *(v21 + 32) = v23;
      *(v21 + 40) = v24;
      *(v21 + 48) = v25;
      v453 = sub_1B0E43988();
      v410 = v453;
      v452 = sub_1B0E458E8();
      v411 = v452;
      v428 = 17;
      v437 = swift_allocObject();
      v412 = v437;
      v427 = 0;
      *(v437 + 16) = 0;
      v438 = swift_allocObject();
      v413 = v438;
      *(v438 + 16) = 4;
      v432 = 32;
      v26 = swift_allocObject();
      v27 = v414;
      v415 = v26;
      *(v26 + 16) = sub_1B08F4CC4;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v415;
      v439 = v28;
      v416 = v28;
      *(v28 + 16) = sub_1B039BC08;
      *(v28 + 24) = v29;
      v440 = swift_allocObject();
      v417 = v440;
      *(v440 + 16) = v427;
      v441 = swift_allocObject();
      v418 = v441;
      v430 = 8;
      *(v441 + 16) = 8;
      v30 = swift_allocObject();
      v31 = v419;
      v420 = v30;
      *(v30 + 16) = sub_1B08F4CD8;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v420;
      v442 = v32;
      v421 = v32;
      *(v32 + 16) = sub_1B03B0DF8;
      *(v32 + 24) = v33;
      v443 = swift_allocObject();
      v422 = v443;
      *(v443 + 16) = v427;
      v444 = swift_allocObject();
      v423 = v444;
      *(v444 + 16) = v430;
      v34 = swift_allocObject();
      v35 = v424;
      v425 = v34;
      *(v34 + 16) = sub_1B08F4CEC;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v425;
      v445 = v36;
      v426 = v36;
      *(v36 + 16) = sub_1B03B0DF8;
      *(v36 + 24) = v37;
      v446 = swift_allocObject();
      v429 = v446;
      *(v446 + 16) = v427;
      v447 = swift_allocObject();
      v431 = v447;
      *(v447 + 16) = v430;
      v38 = swift_allocObject();
      v39 = v434;
      v435 = v38;
      *(v38 + 16) = sub_1B08F4CF4;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v435;
      v450 = v40;
      v436 = v40;
      *(v40 + 16) = sub_1B03B0DF8;
      *(v40 + 24) = v41;
      v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v448 = sub_1B0E46A48();
      v449 = v42;

      v43 = v437;
      v44 = v449;
      *v449 = sub_1B0398F5C;
      v44[1] = v43;

      v45 = v438;
      v46 = v449;
      v449[2] = sub_1B0398F5C;
      v46[3] = v45;

      v47 = v439;
      v48 = v449;
      v449[4] = sub_1B03991EC;
      v48[5] = v47;

      v49 = v440;
      v50 = v449;
      v449[6] = sub_1B0398F5C;
      v50[7] = v49;

      v51 = v441;
      v52 = v449;
      v449[8] = sub_1B0398F5C;
      v52[9] = v51;

      v53 = v442;
      v54 = v449;
      v449[10] = sub_1B0399260;
      v54[11] = v53;

      v55 = v443;
      v56 = v449;
      v449[12] = sub_1B0398F5C;
      v56[13] = v55;

      v57 = v444;
      v58 = v449;
      v449[14] = sub_1B0398F5C;
      v58[15] = v57;

      v59 = v445;
      v60 = v449;
      v449[16] = sub_1B0399260;
      v60[17] = v59;

      v61 = v446;
      v62 = v449;
      v449[18] = sub_1B0398F5C;
      v62[19] = v61;

      v63 = v447;
      v64 = v449;
      v449[20] = sub_1B0398F5C;
      v64[21] = v63;

      v65 = v449;
      v66 = v450;
      v449[22] = sub_1B0399260;
      v65[23] = v66;
      sub_1B0394964();

      if (os_log_type_enabled(v453, v452))
      {
        v67 = v471;
        v391 = sub_1B0E45D78();
        v387 = v391;
        v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v389 = 0;
        v392 = sub_1B03949A8(0);
        v390 = v392;
        v393 = sub_1B03949A8(v389);
        v503 = v391;
        v502 = v392;
        v501 = v393;
        v394 = &v503;
        sub_1B0394A48(0, &v503);
        sub_1B0394A48(4, v394);
        v499 = sub_1B0398F5C;
        v500 = v412;
        sub_1B03949FC(&v499, v394, &v502, &v501);
        v395 = v67;
        v396 = v412;
        v397 = v413;
        v398 = v416;
        v399 = v417;
        v400 = v418;
        v401 = v421;
        v402 = v422;
        v403 = v423;
        v404 = v426;
        v405 = v429;
        v406 = v431;
        v407 = v436;
        v408 = v67;
        if (v67)
        {
          v373 = v396;
          v374 = v397;
          v375 = v398;
          v376 = v399;
          v377 = v400;
          v378 = v401;
          v379 = v402;
          v380 = v403;
          v381 = v404;
          v382 = v405;
          v383 = v406;
          v384 = v407;
          v385 = 0;
          v217 = v407;
          v216 = v406;
          v215 = v405;
          v214 = v404;
          v213 = v403;
          v212 = v402;
          v211 = v401;
          v210 = v400;
          v209 = v399;
          v208 = v398;
          v207 = v397;

          __break(1u);
        }

        else
        {
          v499 = sub_1B0398F5C;
          v500 = v413;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v359 = 0;
          v360 = v412;
          v361 = v413;
          v362 = v416;
          v363 = v417;
          v364 = v418;
          v365 = v421;
          v366 = v422;
          v367 = v423;
          v368 = v426;
          v369 = v429;
          v370 = v431;
          v371 = v436;
          v372 = 0;
          v499 = sub_1B03991EC;
          v500 = v416;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v345 = 0;
          v346 = v412;
          v347 = v413;
          v348 = v416;
          v349 = v417;
          v350 = v418;
          v351 = v421;
          v352 = v422;
          v353 = v423;
          v354 = v426;
          v355 = v429;
          v356 = v431;
          v357 = v436;
          v358 = 0;
          v499 = sub_1B0398F5C;
          v500 = v417;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v331 = 0;
          v332 = v412;
          v333 = v413;
          v334 = v416;
          v335 = v417;
          v336 = v418;
          v337 = v421;
          v338 = v422;
          v339 = v423;
          v340 = v426;
          v341 = v429;
          v342 = v431;
          v343 = v436;
          v344 = 0;
          v499 = sub_1B0398F5C;
          v500 = v418;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v317 = 0;
          v318 = v412;
          v319 = v413;
          v320 = v416;
          v321 = v417;
          v322 = v418;
          v323 = v421;
          v324 = v422;
          v325 = v423;
          v326 = v426;
          v327 = v429;
          v328 = v431;
          v329 = v436;
          v330 = 0;
          v499 = sub_1B0399260;
          v500 = v421;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v303 = 0;
          v304 = v412;
          v305 = v413;
          v306 = v416;
          v307 = v417;
          v308 = v418;
          v309 = v421;
          v310 = v422;
          v311 = v423;
          v312 = v426;
          v313 = v429;
          v314 = v431;
          v315 = v436;
          v316 = 0;
          v499 = sub_1B0398F5C;
          v500 = v422;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v289 = 0;
          v290 = v412;
          v291 = v413;
          v292 = v416;
          v293 = v417;
          v294 = v418;
          v295 = v421;
          v296 = v422;
          v297 = v423;
          v298 = v426;
          v299 = v429;
          v300 = v431;
          v301 = v436;
          v302 = 0;
          v499 = sub_1B0398F5C;
          v500 = v423;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v275 = 0;
          v276 = v412;
          v277 = v413;
          v278 = v416;
          v279 = v417;
          v280 = v418;
          v281 = v421;
          v282 = v422;
          v283 = v423;
          v284 = v426;
          v285 = v429;
          v286 = v431;
          v287 = v436;
          v288 = 0;
          v499 = sub_1B0399260;
          v500 = v426;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v261 = 0;
          v262 = v412;
          v263 = v413;
          v264 = v416;
          v265 = v417;
          v266 = v418;
          v267 = v421;
          v268 = v422;
          v269 = v423;
          v270 = v426;
          v271 = v429;
          v272 = v431;
          v273 = v436;
          v274 = 0;
          v499 = sub_1B0398F5C;
          v500 = v429;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v247 = 0;
          v248 = v412;
          v249 = v413;
          v250 = v416;
          v251 = v417;
          v252 = v418;
          v253 = v421;
          v254 = v422;
          v255 = v423;
          v256 = v426;
          v257 = v429;
          v258 = v431;
          v259 = v436;
          v260 = 0;
          v499 = sub_1B0398F5C;
          v500 = v431;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v233 = 0;
          v234 = v412;
          v235 = v413;
          v236 = v416;
          v237 = v417;
          v238 = v418;
          v239 = v421;
          v240 = v422;
          v241 = v423;
          v242 = v426;
          v243 = v429;
          v244 = v431;
          v245 = v436;
          v246 = 0;
          v499 = sub_1B0399260;
          v500 = v436;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v219 = 0;
          v220 = v412;
          v221 = v413;
          v222 = v416;
          v223 = v417;
          v224 = v418;
          v225 = v421;
          v226 = v422;
          v227 = v423;
          v228 = v426;
          v229 = v429;
          v230 = v431;
          v231 = v436;
          v232 = 0;
          _os_log_impl(&dword_1B0389000, v410, v411, "[%u] Calling completion handler for %ld messages, (%ld completed, %ld failed).", v387, 0x26u);
          v218 = 0;
          sub_1B03998A8(v390);
          sub_1B03998A8(v393);
          sub_1B0E45D58();

          v386 = v219;
        }
      }

      else
      {
        v68 = v471;

        v386 = v68;
      }

      v205 = v386;

      (*(v487 + 8))(v491, v485);
      v206 = v205;
    }

    v105 = v206;

    v459(v454);
  }

  __break(1u);
LABEL_21:
  v104 = *(&v473 + 1);

  __break(1u);
  return result;
}

uint64_t sub_1B08E8684()
{
  v35 = 0;
  v33 = 0;
  v28 = 0;
  v30 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v34 = v30;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D68, &qword_1B0EA0358);
  sub_1B08F4C04();
  v31 = sub_1B0E45748();

  if (v31)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    v10 = sub_1B08E4290();
    v9 = &unk_1F26DF238;
    v8 = sub_1B06A3D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DA8, &qword_1B0EA0380);
    sub_1B0E446F8();
    v11 = sub_1B041AF18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B0E45578();
    return v28;
  }

  else
  {
    v1 = v28;
    v16 = *v27;
    v18 = *(v27 + 8);
    v19 = *(v27 + 16);
    v15 = *(v27 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = sub_1B08EBA04(v16, v18, v19, v15);
    v17 = v20;
    v33 = v20;

    v23 = *(v27 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = &v7;
    v2 = MEMORY[0x1EEE9AC00](v20);
    v22 = v6;
    v6[2] = v2;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    sub_1B08E4290();
    v3 = sub_1B0E44688();
    v25 = v1;
    v26 = v3;
    v12 = v3;

    v4 = *(v27 + 8);
    *(v27 + 8) = v12;

    v32 = v17;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B08F48D0();
    sub_1B0E45468();

    return v25;
  }
}

uint64_t sub_1B08E89A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v352 = a4;
  v351 = a3;
  v353 = a2;
  v364 = a1;
  v388 = 0;
  v349 = 0;
  v387 = 0;
  v386 = 0;
  v385 = 0;
  v383 = 0;
  v382[1] = 0;
  v382[0] = 0;
  v377 = 0u;
  v376 = 0u;
  v375 = 0;
  v350 = 0;
  v354 = sub_1B0E439A8();
  v355 = *(v354 - 8);
  v356 = v355;
  v357 = *(v355 + 64);
  v4 = MEMORY[0x1EEE9AC00](v364);
  v359 = (v357 + 15) & 0xFFFFFFFFFFFFFFF0;
  v358 = &v65 - v359;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v360 = &v65 - v359;
  v385 = v5;
  v386 = v6;
  v387 = v7;
  v388 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v384 = v364;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D68, &qword_1B0EA0358);
  v361 = v362;
  v363 = sub_1B08F4C04();
  v365 = sub_1B0E45748();

  if (v365)
  {
    v9 = v360;
    v10 = sub_1B08DFDD8();
    (*(v356 + 16))(v9, v10, v354);
    v347 = sub_1B0E43988();
    v344 = v347;
    v346 = sub_1B0E45908();
    v345 = v346;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v348 = sub_1B0E46A48();
    if (os_log_type_enabled(v347, v346))
    {
      v11 = v350;
      v335 = sub_1B0E45D78();
      v331 = v335;
      v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v333 = 0;
      v336 = sub_1B03949A8(0);
      v334 = v336;
      v337 = sub_1B03949A8(v333);
      v369 = v335;
      v368 = v336;
      v367 = v337;
      v338 = 0;
      v339 = &v369;
      sub_1B0394A48(0, &v369);
      sub_1B0394A48(v338, v339);
      v366 = v348;
      v340 = &v65;
      MEMORY[0x1EEE9AC00](&v65);
      v341 = &v65 - 6;
      *(&v65 - 4) = v12;
      *(&v65 - 3) = &v368;
      *(&v65 - 2) = &v367;
      v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v343 = v11;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v344, v345, "No remaining requests.", v331, 2u);
        v329 = 0;
        sub_1B03998A8(v334);
        sub_1B03998A8(v337);
        sub_1B0E45D58();

        v330 = v343;
      }
    }

    else
    {

      v330 = v350;
    }

    v327 = v330;

    (*(v356 + 8))(v360, v354);
    return v327;
  }

  else
  {
    v325 = sub_1B08EB604();
    v383 = v325;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v381 = v364;
    sub_1B0E45798();
    for (i = v350; ; i = v66)
    {
      v321 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DB8, &qword_1B0EA0388);
      sub_1B0E46518();
      v322 = v378;
      v323 = v379;
      v324 = v380;
      if (!v379)
      {
        break;
      }

      v318 = v322;
      v319 = v323;
      v320 = v324;
      v13 = v358;
      v271 = v324;
      v270 = v323;
      v269 = v322;
      LODWORD(v376) = v322;
      *(&v376 + 1) = v323;
      v377 = v324;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B08E4290();
      v273 = sub_1B0E45418();
      v267 = v273;
      v375 = v273;
      v14 = sub_1B08DFDD8();
      (*(v356 + 16))(v13, v14, v354);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v268 = 48;
      v297 = 7;
      v15 = swift_allocObject();
      v16 = v270;
      v17 = v271;
      v278 = v15;
      *(v15 + 16) = v269;
      *(v15 + 24) = v16;
      *(v15 + 32) = v17;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v272 = 24;
      v283 = swift_allocObject();
      *(v283 + 16) = v273;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v18 = swift_allocObject();
      v19 = v270;
      v20 = v271;
      v289 = v18;
      *(v18 + 16) = v269;
      *(v18 + 24) = v19;
      *(v18 + 32) = v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v298 = swift_allocObject();
      *(v298 + 16) = v273;
      v317 = sub_1B0E43988();
      v274 = v317;
      v316 = sub_1B0E458D8();
      v275 = v316;
      v292 = 17;
      v301 = swift_allocObject();
      v276 = v301;
      v286 = 0;
      *(v301 + 16) = 0;
      v302 = swift_allocObject();
      v277 = v302;
      *(v302 + 16) = 4;
      v296 = 32;
      v21 = swift_allocObject();
      v22 = v278;
      v279 = v21;
      *(v21 + 16) = sub_1B08F4CC4;
      *(v21 + 24) = v22;
      v23 = swift_allocObject();
      v24 = v279;
      v303 = v23;
      v280 = v23;
      *(v23 + 16) = sub_1B039BC08;
      *(v23 + 24) = v24;
      v304 = swift_allocObject();
      v281 = v304;
      *(v304 + 16) = v286;
      v305 = swift_allocObject();
      v282 = v305;
      v294 = 8;
      *(v305 + 16) = 8;
      v25 = swift_allocObject();
      v26 = v283;
      v284 = v25;
      *(v25 + 16) = sub_1B08F362C;
      *(v25 + 24) = v26;
      v27 = swift_allocObject();
      v28 = v284;
      v306 = v27;
      v285 = v27;
      *(v27 + 16) = sub_1B03B0DF8;
      *(v27 + 24) = v28;
      v307 = swift_allocObject();
      v287 = v307;
      *(v307 + 16) = v286;
      v308 = swift_allocObject();
      v288 = v308;
      *(v308 + 16) = v294;
      v29 = swift_allocObject();
      v30 = v289;
      v290 = v29;
      *(v29 + 16) = sub_1B08F4CD8;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v290;
      v309 = v31;
      v291 = v31;
      *(v31 + 16) = sub_1B03B0DF8;
      *(v31 + 24) = v32;
      v310 = swift_allocObject();
      v293 = v310;
      *(v310 + 16) = 34;
      v311 = swift_allocObject();
      v295 = v311;
      *(v311 + 16) = v294;
      v33 = swift_allocObject();
      v34 = v298;
      v299 = v33;
      *(v33 + 16) = sub_1B08F4D38;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v299;
      v314 = v35;
      v300 = v35;
      *(v35 + 16) = sub_1B039BCF8;
      *(v35 + 24) = v36;
      v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v312 = sub_1B0E46A48();
      v313 = v37;

      v38 = v301;
      v39 = v313;
      *v313 = sub_1B0398F5C;
      v39[1] = v38;

      v40 = v302;
      v41 = v313;
      v313[2] = sub_1B0398F5C;
      v41[3] = v40;

      v42 = v303;
      v43 = v313;
      v313[4] = sub_1B03991EC;
      v43[5] = v42;

      v44 = v304;
      v45 = v313;
      v313[6] = sub_1B0398F5C;
      v45[7] = v44;

      v46 = v305;
      v47 = v313;
      v313[8] = sub_1B0398F5C;
      v47[9] = v46;

      v48 = v306;
      v49 = v313;
      v313[10] = sub_1B0399260;
      v49[11] = v48;

      v50 = v307;
      v51 = v313;
      v313[12] = sub_1B0398F5C;
      v51[13] = v50;

      v52 = v308;
      v53 = v313;
      v313[14] = sub_1B0398F5C;
      v53[15] = v52;

      v54 = v309;
      v55 = v313;
      v313[16] = sub_1B0399260;
      v55[17] = v54;

      v56 = v310;
      v57 = v313;
      v313[18] = sub_1B0398F5C;
      v57[19] = v56;

      v58 = v311;
      v59 = v313;
      v313[20] = sub_1B0398F5C;
      v59[21] = v58;

      v60 = v313;
      v61 = v314;
      v313[22] = sub_1B039BCEC;
      v60[23] = v61;
      sub_1B0394964();

      if (os_log_type_enabled(v317, v316))
      {
        v62 = v321;
        v249 = sub_1B0E45D78();
        v246 = v249;
        v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v250 = sub_1B03949A8(0);
        v248 = v250;
        v251 = sub_1B03949A8(1);
        v374 = v249;
        v373 = v250;
        v372 = v251;
        v252 = &v374;
        sub_1B0394A48(2, &v374);
        sub_1B0394A48(4, v252);
        v370 = sub_1B0398F5C;
        v371 = v276;
        sub_1B03949FC(&v370, v252, &v373, &v372);
        v253 = v62;
        v254 = v276;
        v255 = v277;
        v256 = v280;
        v257 = v281;
        v258 = v282;
        v259 = v285;
        v260 = v287;
        v261 = v288;
        v262 = v291;
        v263 = v293;
        v264 = v295;
        v265 = v300;
        v266 = v62;
        if (v62)
        {
          v232 = v254;
          v233 = v255;
          v234 = v256;
          v235 = v257;
          v236 = v258;
          v237 = v259;
          v238 = v260;
          v239 = v261;
          v240 = v262;
          v241 = v263;
          v242 = v264;
          v243 = v265;
          v244 = 0;
          v77 = v265;
          v76 = v264;
          v75 = v263;
          v74 = v262;
          v73 = v261;
          v72 = v260;
          v71 = v259;
          v70 = v258;
          v69 = v257;
          v68 = v256;
          v67 = v255;

          __break(1u);
        }

        else
        {
          v370 = sub_1B0398F5C;
          v371 = v277;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v218 = 0;
          v219 = v276;
          v220 = v277;
          v221 = v280;
          v222 = v281;
          v223 = v282;
          v224 = v285;
          v225 = v287;
          v226 = v288;
          v227 = v291;
          v228 = v293;
          v229 = v295;
          v230 = v300;
          v231 = 0;
          v370 = sub_1B03991EC;
          v371 = v280;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v204 = 0;
          v205 = v276;
          v206 = v277;
          v207 = v280;
          v208 = v281;
          v209 = v282;
          v210 = v285;
          v211 = v287;
          v212 = v288;
          v213 = v291;
          v214 = v293;
          v215 = v295;
          v216 = v300;
          v217 = 0;
          v370 = sub_1B0398F5C;
          v371 = v281;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v190 = 0;
          v191 = v276;
          v192 = v277;
          v193 = v280;
          v194 = v281;
          v195 = v282;
          v196 = v285;
          v197 = v287;
          v198 = v288;
          v199 = v291;
          v200 = v293;
          v201 = v295;
          v202 = v300;
          v203 = 0;
          v370 = sub_1B0398F5C;
          v371 = v282;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v176 = 0;
          v177 = v276;
          v178 = v277;
          v179 = v280;
          v180 = v281;
          v181 = v282;
          v182 = v285;
          v183 = v287;
          v184 = v288;
          v185 = v291;
          v186 = v293;
          v187 = v295;
          v188 = v300;
          v189 = 0;
          v370 = sub_1B0399260;
          v371 = v285;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v162 = 0;
          v163 = v276;
          v164 = v277;
          v165 = v280;
          v166 = v281;
          v167 = v282;
          v168 = v285;
          v169 = v287;
          v170 = v288;
          v171 = v291;
          v172 = v293;
          v173 = v295;
          v174 = v300;
          v175 = 0;
          v370 = sub_1B0398F5C;
          v371 = v287;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v148 = 0;
          v149 = v276;
          v150 = v277;
          v151 = v280;
          v152 = v281;
          v153 = v282;
          v154 = v285;
          v155 = v287;
          v156 = v288;
          v157 = v291;
          v158 = v293;
          v159 = v295;
          v160 = v300;
          v161 = 0;
          v370 = sub_1B0398F5C;
          v371 = v288;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v134 = 0;
          v135 = v276;
          v136 = v277;
          v137 = v280;
          v138 = v281;
          v139 = v282;
          v140 = v285;
          v141 = v287;
          v142 = v288;
          v143 = v291;
          v144 = v293;
          v145 = v295;
          v146 = v300;
          v147 = 0;
          v370 = sub_1B0399260;
          v371 = v291;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v120 = 0;
          v121 = v276;
          v122 = v277;
          v123 = v280;
          v124 = v281;
          v125 = v282;
          v126 = v285;
          v127 = v287;
          v128 = v288;
          v129 = v291;
          v130 = v293;
          v131 = v295;
          v132 = v300;
          v133 = 0;
          v370 = sub_1B0398F5C;
          v371 = v293;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v106 = 0;
          v107 = v276;
          v108 = v277;
          v109 = v280;
          v110 = v281;
          v111 = v282;
          v112 = v285;
          v113 = v287;
          v114 = v288;
          v115 = v291;
          v116 = v293;
          v117 = v295;
          v118 = v300;
          v119 = 0;
          v370 = sub_1B0398F5C;
          v371 = v295;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v92 = 0;
          v93 = v276;
          v94 = v277;
          v95 = v280;
          v96 = v281;
          v97 = v282;
          v98 = v285;
          v99 = v287;
          v100 = v288;
          v101 = v291;
          v102 = v293;
          v103 = v295;
          v104 = v300;
          v105 = 0;
          v370 = sub_1B039BCEC;
          v371 = v300;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v78 = 0;
          v79 = v276;
          v80 = v277;
          v81 = v280;
          v82 = v281;
          v83 = v282;
          v84 = v285;
          v85 = v287;
          v86 = v288;
          v87 = v291;
          v88 = v293;
          v89 = v295;
          v90 = v300;
          v91 = 0;
          _os_log_impl(&dword_1B0389000, v274, v275, "[%u] Still waiting for %ld (of %ld): {%{public}s}", v246, 0x26u);
          sub_1B03998A8(v248);
          sub_1B03998A8(v251);
          sub_1B0E45D58();

          v245 = v78;
        }
      }

      else
      {
        v63 = v321;

        v245 = v63;
      }

      v66 = v245;

      (*(v356 + 8))(v358, v354);
    }

    sub_1B039E440(v382);

    return v321;
  }
}

uint64_t sub_1B08EB604()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  sub_1B08E4290();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DC0, &qword_1B0EA0390);
  sub_1B08F4D40();
  sub_1B0E45598();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B08F48D0();
  return sub_1B0E454B8();
}

uint64_t sub_1B08EB744(uint64_t a1)
{
  v2 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E4290();
  v3 = sub_1B0E45538();

  return v3 & 1;
}

uint64_t sub_1B08EB7C4(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E4290();
  v3 = sub_1B0E45528();

  return v3 & 1;
}

uint64_t sub_1B08EB8A8()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E4290();
  v1 = sub_1B0E454A8();

  return v1;
}

uint64_t sub_1B08EB900()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  sub_1B08E4290();
  return sub_1B0E44628();
}

uint64_t sub_1B08EB958()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E4290();
  v3 = sub_1B0E454A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  v0 = sub_1B0E44628();
  result = v3;
  v4 = v3 - v0;
  if (!__OFSUB__(v3, v0))
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B08EBA04(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6[0] = a1;
  sub_1B08E4290();
  sub_1B0E44588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D68, &qword_1B0EA0358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B08F4DC8();
  sub_1B0E44FD8();
  sub_1B039E440(v6);
  return v6[1];
}

uint64_t sub_1B08EBB14(uint64_t *a1, uint64_t *a2)
{
  v6 = *a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_1B08E4290();
  return sub_1B0E45528() & 1;
}

uint64_t sub_1B08EBBE4(uint64_t a1)
{
  v6[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  v1 = sub_1B08F4ED8();
  v6[0] = sub_1B039CA88(sub_1B08EBD18, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v5);
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v3 = sub_1B0E448E8();

  sub_1B039E440(v6);
  return v3;
}

uint64_t sub_1B08EBD18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = 0;
  v7 = *(a1 + 16);
  v10 = a1;
  v9[0] = sub_1B0E46A28();
  v9[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v9);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B08EBE30()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  sub_1B08E4290();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DC0, &qword_1B0EA0390);
  sub_1B08F4D40();
  return sub_1B0E45598();
}

uint64_t sub_1B08EBF14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B08F48D0();
  return sub_1B0E45568();
}

uint64_t sub_1B08EBFA4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1B08EBA04(a1, a2, a3, a4);
  sub_1B08EB604();
  sub_1B08E4290();
  v5 = sub_1B0E45418();

  return v5;
}

uint64_t sub_1B08EC054(unsigned int a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v17 = a1;
  v16 = a2;
  v15 = v2;
  v6 = *(v2 + 24);
  MEMORY[0x1E69E5928](v6);
  v9 = sub_1B08EC214(a2);
  v8 = v3;
  MEMORY[0x1E69E5920](v6);
  v13 = v9;
  v14 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08EC618(a1, v8);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DD8, &qword_1B0EA0398);
  sub_1B08F4E50();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DE8, &qword_1B0EA03A0);
    sub_1B0E46518();
    if (!v10)
    {
      break;
    }

    sub_1B08EDD3C(a1, v10, v11);

    (MEMORY[0x1E69E5920])();
  }

  sub_1B039E440(v12);
}

uint64_t sub_1B08EC214(uint64_t a1)
{
  v31 = 0;
  v29 = 0;
  v30 = 0;
  memset(__b, 0, sizeof(__b));
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v33 = a1;
  v32 = v1;
  v31 = sub_1B08F3F34(a1);
  v29 = sub_1B08F38D4();
  v30 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E4290();
  sub_1B0E45448();
  memcpy(__b, v34, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2DF0, &qword_1B0EA03A8);
    sub_1B0E45508();
    v16 = v25;
    v17 = v26;
    v18 = v27;
    if (!v26)
    {
      break;
    }

    v22 = v25;
    v23 = v26;
    v24 = v27;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20[0] = v16;
    v20[1] = v17;
    v20[2] = v18;
    sub_1B07F1AFC();
    sub_1B0E44778();
    sub_1B03B1198(v20);
    v15 = v21;
    MEMORY[0x1E69E5928](v21);
    if (v15)
    {
      v14 = [v15 account];
      MEMORY[0x1E69E5920](v15);
      if (v14)
      {
        v13 = v14;
      }

      else
      {
        LOBYTE(v4) = 2;
        v5 = 588;
        LODWORD(v6) = 0;
        sub_1B0E465A8();
        __break(1u);
      }

      v11 = [v13 taskManager];
      MEMORY[0x1E69E5920](v13);
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      type metadata accessor for TaskManager();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v9 = v10;
      }

      else
      {
        swift_unknownObjectRelease();
        v9 = 0;
      }

      v8 = v9;
    }

    else
    {
      v8 = 0;
    }

    sub_1B08F3984(v8, v16, v17, v18, v15);
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v15);
  }

  sub_1B06B91B0(__b);
  v7 = v29;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F22C0(&v29);

  return v7;
}

uint64_t sub_1B08EC618(unsigned int a1, uint64_t a2)
{
  v167 = a1;
  v175 = a2;
  v144 = sub_1B070B278;
  v145 = sub_1B039BC08;
  v146 = sub_1B08F362C;
  v147 = sub_1B03B0DF8;
  v148 = sub_1B0398F5C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B03991EC;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v153 = sub_1B0399260;
  v154 = sub_1B070B278;
  v155 = sub_1B039BC08;
  v156 = sub_1B08F4D38;
  v157 = sub_1B039BCF8;
  v158 = sub_1B0398F5C;
  v159 = sub_1B0398F5C;
  v160 = sub_1B03991EC;
  v161 = sub_1B0398F5C;
  v162 = sub_1B0398F5C;
  v163 = sub_1B039BCEC;
  v164 = sub_1B08F27B0;
  v165 = sub_1B08F4F60;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v166 = 0;
  v168 = sub_1B0E439A8();
  v169 = *(v168 - 8);
  v170 = v168 - 8;
  v171 = (v169[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v167);
  v172 = v64 - v171;
  v173 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v174 = v64 - v173;
  v196 = v5;
  v195 = v6;
  v194 = v2;
  sub_1B08E4290();
  result = sub_1B0E454F8();
  if ((result & 1) == 0)
  {
    v8 = v174;
    v9 = sub_1B08DFDD8();
    v123 = v169[2];
    v124 = v169 + 2;
    v123(v8, v9, v168);
    v129 = 7;
    v125 = swift_allocObject();
    *(v125 + 16) = v167;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v130 = swift_allocObject();
    *(v130 + 16) = v175;
    v141 = sub_1B0E43988();
    v142 = sub_1B0E45908();
    v127 = 17;
    v132 = swift_allocObject();
    *(v132 + 16) = 0;
    v133 = swift_allocObject();
    *(v133 + 16) = 4;
    v128 = 32;
    v10 = swift_allocObject();
    v11 = v125;
    v126 = v10;
    *(v10 + 16) = v144;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v126;
    v134 = v12;
    *(v12 + 16) = v145;
    *(v12 + 24) = v13;
    v135 = swift_allocObject();
    *(v135 + 16) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = 8;
    v14 = swift_allocObject();
    v15 = v130;
    v131 = v14;
    *(v14 + 16) = v146;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v131;
    v138 = v16;
    *(v16 + 16) = v147;
    *(v16 + 24) = v17;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v137 = sub_1B0E46A48();
    v139 = v18;

    v19 = v132;
    v20 = v139;
    *v139 = v148;
    v20[1] = v19;

    v21 = v133;
    v22 = v139;
    v139[2] = v149;
    v22[3] = v21;

    v23 = v134;
    v24 = v139;
    v139[4] = v150;
    v24[5] = v23;

    v25 = v135;
    v26 = v139;
    v139[6] = v151;
    v26[7] = v25;

    v27 = v136;
    v28 = v139;
    v139[8] = v152;
    v28[9] = v27;

    v29 = v138;
    v30 = v139;
    v139[10] = v153;
    v30[11] = v29;
    sub_1B0394964();

    if (os_log_type_enabled(v141, v142))
    {
      v31 = v166;
      v116 = sub_1B0E45D78();
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v115 = 0;
      v117 = sub_1B03949A8(0);
      v118 = sub_1B03949A8(v115);
      v119 = &v180;
      v180 = v116;
      v120 = &v179;
      v179 = v117;
      v121 = &v178;
      v178 = v118;
      sub_1B0394A48(0, &v180);
      sub_1B0394A48(2, v119);
      v176 = v148;
      v177 = v132;
      sub_1B03949FC(&v176, v119, v120, v121);
      v122 = v31;
      if (v31)
      {

        __break(1u);
      }

      else
      {
        v176 = v149;
        v177 = v133;
        sub_1B03949FC(&v176, &v180, &v179, &v178);
        v111 = 0;
        v176 = v150;
        v177 = v134;
        sub_1B03949FC(&v176, &v180, &v179, &v178);
        v110 = 0;
        v176 = v151;
        v177 = v135;
        sub_1B03949FC(&v176, &v180, &v179, &v178);
        v109 = 0;
        v176 = v152;
        v177 = v136;
        sub_1B03949FC(&v176, &v180, &v179, &v178);
        v108 = 0;
        v176 = v153;
        v177 = v138;
        sub_1B03949FC(&v176, &v180, &v179, &v178);
        v107 = 0;
        _os_log_impl(&dword_1B0389000, v141, v142, "[%u] Requesting %ld message(s) from legacy loader.", v116, 0x12u);
        v106 = 0;
        sub_1B03998A8(v117);
        sub_1B03998A8(v118);
        sub_1B0E45D58();

        v112 = v107;
      }
    }

    else
    {
      v32 = v166;

      v112 = v32;
    }

    v33 = v172;
    v86 = v112;
    MEMORY[0x1E69E5920](v141);
    v87 = v169[1];
    v88 = v169 + 1;
    v87(v174, v168);
    v34 = sub_1B08DFDD8();
    v123(v33, v34, v168);
    v93 = 7;
    v89 = swift_allocObject();
    *(v89 + 16) = v167;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v94 = swift_allocObject();
    *(v94 + 16) = v175;
    v104 = sub_1B0E43988();
    v105 = sub_1B0E458D8();
    v91 = 17;
    v96 = swift_allocObject();
    *(v96 + 16) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = 4;
    v92 = 32;
    v35 = swift_allocObject();
    v36 = v89;
    v90 = v35;
    *(v35 + 16) = v154;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v90;
    v98 = v37;
    *(v37 + 16) = v155;
    *(v37 + 24) = v38;
    v99 = swift_allocObject();
    *(v99 + 16) = 34;
    v100 = swift_allocObject();
    *(v100 + 16) = 8;
    v39 = swift_allocObject();
    v40 = v94;
    v95 = v39;
    *(v39 + 16) = v156;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v42 = v95;
    v102 = v41;
    *(v41 + 16) = v157;
    *(v41 + 24) = v42;
    v101 = sub_1B0E46A48();
    v103 = v43;

    v44 = v96;
    v45 = v103;
    *v103 = v158;
    v45[1] = v44;

    v46 = v97;
    v47 = v103;
    v103[2] = v159;
    v47[3] = v46;

    v48 = v98;
    v49 = v103;
    v103[4] = v160;
    v49[5] = v48;

    v50 = v99;
    v51 = v103;
    v103[6] = v161;
    v51[7] = v50;

    v52 = v100;
    v53 = v103;
    v103[8] = v162;
    v53[9] = v52;

    v54 = v102;
    v55 = v103;
    v103[10] = v163;
    v55[11] = v54;
    sub_1B0394964();

    if (os_log_type_enabled(v104, v105))
    {
      v56 = v86;
      v78 = sub_1B0E45D78();
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v79 = sub_1B03949A8(0);
      v80 = sub_1B03949A8(1);
      v82 = &v185;
      v185 = v78;
      v83 = &v184;
      v184 = v79;
      v84 = &v183;
      v183 = v80;
      v81 = 2;
      sub_1B0394A48(2, &v185);
      sub_1B0394A48(v81, v82);
      v181 = v158;
      v182 = v96;
      sub_1B03949FC(&v181, v82, v83, v84);
      v85 = v56;
      if (v56)
      {

        __break(1u);
      }

      else
      {
        v181 = v159;
        v182 = v97;
        sub_1B03949FC(&v181, &v185, &v184, &v183);
        v75 = 0;
        v181 = v160;
        v182 = v98;
        sub_1B03949FC(&v181, &v185, &v184, &v183);
        v74 = 0;
        v181 = v161;
        v182 = v99;
        sub_1B03949FC(&v181, &v185, &v184, &v183);
        v73 = 0;
        v181 = v162;
        v182 = v100;
        sub_1B03949FC(&v181, &v185, &v184, &v183);
        v72 = 0;
        v181 = v163;
        v182 = v102;
        sub_1B03949FC(&v181, &v185, &v184, &v183);
        v71 = 0;
        _os_log_impl(&dword_1B0389000, v104, v105, "[%u] {%{public}s}", v78, 0x12u);
        sub_1B03998A8(v79);
        sub_1B03998A8(v80);
        sub_1B0E45D58();

        v76 = v71;
      }
    }

    else
    {
      v57 = v86;

      v76 = v57;
    }

    v58 = v76;
    MEMORY[0x1E69E5920](v104);
    v87(v172, v168);
    v68 = *(v143 + 32);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v193 = v175;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    v59 = sub_1B08F4ED8();
    result = sub_1B039CA88(v164, 0, v69, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v59, MEMORY[0x1E69E7410], v113);
    v70 = result;
    if (v58)
    {
      __break(1u);
    }

    else
    {
      v64[1] = v70;
      v67 = sub_1B0E451A8();

      v64[4] = 7;
      v65 = swift_allocObject();
      v64[2] = v65 + 16;

      v64[3] = v143;
      swift_weakInit();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v60 = swift_allocObject();
      v61 = v167;
      v62 = v175;
      v63 = v165;
      *(v60 + 16) = v65;
      *(v60 + 24) = v61;
      *(v60 + 32) = v62;
      v191 = v63;
      v192 = v60;
      aBlock = MEMORY[0x1E69E9820];
      v187 = 1107296256;
      v188 = 0;
      v189 = sub_1B08F3218;
      v190 = &block_descriptor_382;
      v66 = _Block_copy(&aBlock);

      [v68 loadFullMessagesForMessageIds:v67 completion:v66];
      _Block_release(v66);
      MEMORY[0x1E69E5920](v67);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t *sub_1B08EDD3C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v159 = a1;
  v162 = a2;
  v160 = a3;
  v147 = 0;
  v163 = sub_1B070B278;
  v165 = sub_1B039BC08;
  v167 = sub_1B08F4FD8;
  v169 = sub_1B03B0DF8;
  v173 = sub_1B08F4FE0;
  v177 = sub_1B039BCF8;
  v179 = sub_1B0398F5C;
  v181 = sub_1B0398F5C;
  v183 = sub_1B03991EC;
  v185 = sub_1B0398F5C;
  v187 = sub_1B0398F5C;
  v189 = sub_1B0399260;
  v191 = sub_1B0398F5C;
  v193 = sub_1B0398F5C;
  v196 = sub_1B039BCEC;
  v137 = sub_1B070B278;
  v138 = sub_1B039BC08;
  v139 = sub_1B08F4FE8;
  v140 = sub_1B039BCF8;
  v141 = sub_1B0398F5C;
  v142 = sub_1B0398F5C;
  v143 = sub_1B03991EC;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v146 = sub_1B039BCEC;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  memset(__b, 0, sizeof(__b));
  v213 = 0;
  v214 = 0;
  v215 = 0;
  v212 = 0;
  v148 = 0;
  v156 = sub_1B0E439A8();
  v154 = *(v156 - 8);
  v155 = v156 - 8;
  v150 = v154[8];
  v149 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v159);
  v151 = &v69 - v149;
  v152 = v149;
  MEMORY[0x1EEE9AC00](v3);
  v4 = &v69 - v152;
  v153 = &v69 - v152;
  v225 = v5;
  v224 = v6;
  v223 = v7;
  v222 = v8;
  v221 = v6;
  v9 = sub_1B08DFDD8();
  v157 = v154[2];
  v158 = v154 + 2;
  v157(v4, v9, v156);
  v175 = 7;
  v164 = swift_allocObject();
  *(v164 + 16) = v159;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v161 = 24;
  v168 = swift_allocObject();
  *(v168 + 16) = v160;
  v176 = swift_allocObject();
  *(v176 + 16) = v162;
  v200 = sub_1B0E43988();
  v201 = sub_1B0E45908();
  v171 = 17;
  v180 = swift_allocObject();
  *(v180 + 16) = 0;
  v182 = swift_allocObject();
  *(v182 + 16) = 4;
  v174 = 32;
  v10 = swift_allocObject();
  v11 = v164;
  v166 = v10;
  *(v10 + 16) = v163;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v166;
  v184 = v12;
  *(v12 + 16) = v165;
  *(v12 + 24) = v13;
  v186 = swift_allocObject();
  *(v186 + 16) = 0;
  v188 = swift_allocObject();
  v172 = 8;
  *(v188 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v168;
  v170 = v14;
  *(v14 + 16) = v167;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v170;
  v190 = v16;
  *(v16 + 16) = v169;
  *(v16 + 24) = v17;
  v192 = swift_allocObject();
  *(v192 + 16) = 32;
  v194 = swift_allocObject();
  *(v194 + 16) = v172;
  v18 = swift_allocObject();
  v19 = v176;
  v178 = v18;
  *(v18 + 16) = v173;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v178;
  v197 = v20;
  *(v20 + 16) = v177;
  *(v20 + 24) = v21;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v195 = sub_1B0E46A48();
  v198 = v22;

  v23 = v180;
  v24 = v198;
  *v198 = v179;
  v24[1] = v23;

  v25 = v182;
  v26 = v198;
  v198[2] = v181;
  v26[3] = v25;

  v27 = v184;
  v28 = v198;
  v198[4] = v183;
  v28[5] = v27;

  v29 = v186;
  v30 = v198;
  v198[6] = v185;
  v30[7] = v29;

  v31 = v188;
  v32 = v198;
  v198[8] = v187;
  v32[9] = v31;

  v33 = v190;
  v34 = v198;
  v198[10] = v189;
  v34[11] = v33;

  v35 = v192;
  v36 = v198;
  v198[12] = v191;
  v36[13] = v35;

  v37 = v194;
  v38 = v198;
  v198[14] = v193;
  v38[15] = v37;

  v39 = v197;
  v40 = v198;
  v198[16] = v196;
  v40[17] = v39;
  sub_1B0394964();

  if (os_log_type_enabled(v200, v201))
  {
    v41 = v148;
    v130 = sub_1B0E45D78();
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v131 = sub_1B03949A8(0);
    v132 = sub_1B03949A8(1);
    v133 = &v206;
    v206 = v130;
    v134 = &v205;
    v205 = v131;
    v135 = &v204;
    v204 = v132;
    sub_1B0394A48(2, &v206);
    sub_1B0394A48(3, v133);
    v202 = v179;
    v203 = v180;
    sub_1B03949FC(&v202, v133, v134, v135);
    v136 = v41;
    if (v41)
    {

      __break(1u);
    }

    else
    {
      v202 = v181;
      v203 = v182;
      sub_1B03949FC(&v202, &v206, &v205, &v204);
      v127 = 0;
      v202 = v183;
      v203 = v184;
      sub_1B03949FC(&v202, &v206, &v205, &v204);
      v126 = 0;
      v202 = v185;
      v203 = v186;
      sub_1B03949FC(&v202, &v206, &v205, &v204);
      v125 = 0;
      v202 = v187;
      v203 = v188;
      sub_1B03949FC(&v202, &v206, &v205, &v204);
      v124 = 0;
      v202 = v189;
      v203 = v190;
      sub_1B03949FC(&v202, &v206, &v205, &v204);
      v123 = 0;
      v202 = v191;
      v203 = v192;
      sub_1B03949FC(&v202, &v206, &v205, &v204);
      v122 = 0;
      v202 = v193;
      v203 = v194;
      sub_1B03949FC(&v202, &v206, &v205, &v204);
      v121 = 0;
      v202 = v196;
      v203 = v197;
      sub_1B03949FC(&v202, &v206, &v205, &v204);
      v120 = 0;
      _os_log_impl(&dword_1B0389000, v200, v201, "[%u] Requesting %ld message(s) from task manager %s.", v130, 0x1Cu);
      sub_1B03998A8(v131);
      sub_1B03998A8(v132);
      sub_1B0E45D58();

      v128 = v120;
    }
  }

  else
  {
    v42 = v148;

    v128 = v42;
  }

  v43 = v151;
  v100 = v128;
  MEMORY[0x1E69E5920](v200);
  v101 = v154[1];
  v102 = v154 + 1;
  v101(v153, v156);
  v44 = sub_1B08DFDD8();
  v157(v43, v44, v156);
  v107 = 7;
  v103 = swift_allocObject();
  *(v103 + 16) = v159;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v108 = swift_allocObject();
  *(v108 + 16) = v160;
  v118 = sub_1B0E43988();
  v119 = sub_1B0E458D8();
  v105 = 17;
  v110 = swift_allocObject();
  *(v110 + 16) = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = 4;
  v106 = 32;
  v45 = swift_allocObject();
  v46 = v103;
  v104 = v45;
  *(v45 + 16) = v137;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v104;
  v112 = v47;
  *(v47 + 16) = v138;
  *(v47 + 24) = v48;
  v113 = swift_allocObject();
  *(v113 + 16) = 34;
  v114 = swift_allocObject();
  *(v114 + 16) = 8;
  v49 = swift_allocObject();
  v50 = v108;
  v109 = v49;
  *(v49 + 16) = v139;
  *(v49 + 24) = v50;
  v51 = swift_allocObject();
  v52 = v109;
  v116 = v51;
  *(v51 + 16) = v140;
  *(v51 + 24) = v52;
  v115 = sub_1B0E46A48();
  v117 = v53;

  v54 = v110;
  v55 = v117;
  *v117 = v141;
  v55[1] = v54;

  v56 = v111;
  v57 = v117;
  v117[2] = v142;
  v57[3] = v56;

  v58 = v112;
  v59 = v117;
  v117[4] = v143;
  v59[5] = v58;

  v60 = v113;
  v61 = v117;
  v117[6] = v144;
  v61[7] = v60;

  v62 = v114;
  v63 = v117;
  v117[8] = v145;
  v63[9] = v62;

  v64 = v116;
  v65 = v117;
  v117[10] = v146;
  v65[11] = v64;
  sub_1B0394964();

  if (os_log_type_enabled(v118, v119))
  {
    v66 = v100;
    v92 = sub_1B0E45D78();
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v93 = sub_1B03949A8(0);
    v94 = sub_1B03949A8(1);
    v96 = &v211;
    v211 = v92;
    v97 = &v210;
    v210 = v93;
    v98 = &v209;
    v209 = v94;
    v95 = 2;
    sub_1B0394A48(2, &v211);
    sub_1B0394A48(v95, v96);
    v207 = v141;
    v208 = v110;
    sub_1B03949FC(&v207, v96, v97, v98);
    v99 = v66;
    if (v66)
    {

      __break(1u);
    }

    else
    {
      v207 = v142;
      v208 = v111;
      sub_1B03949FC(&v207, &v211, &v210, &v209);
      v89 = 0;
      v207 = v143;
      v208 = v112;
      sub_1B03949FC(&v207, &v211, &v210, &v209);
      v88 = 0;
      v207 = v144;
      v208 = v113;
      sub_1B03949FC(&v207, &v211, &v210, &v209);
      v87 = 0;
      v207 = v145;
      v208 = v114;
      sub_1B03949FC(&v207, &v211, &v210, &v209);
      v86 = 0;
      v207 = v146;
      v208 = v116;
      sub_1B03949FC(&v207, &v211, &v210, &v209);
      v85 = 0;
      _os_log_impl(&dword_1B0389000, v118, v119, "[%u] {%{public}s}", v92, 0x12u);
      sub_1B03998A8(v93);
      sub_1B03998A8(v94);
      sub_1B0E45D58();

      v90 = v85;
    }
  }

  else
  {
    v67 = v100;

    v90 = v67;
  }

  v83 = v90;
  MEMORY[0x1E69E5920](v118);
  v101(v151, v156);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v81 = sub_1B07F1AFC();
  sub_1B08E4290();
  v82 = &v226;
  sub_1B0E445C8();
  memcpy(__b, v82, sizeof(__b));
  for (i = v83; ; i = v76)
  {
    v76 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E08, &qword_1B0EA03B0);
    sub_1B0E446D8();
    v77 = v216;
    v78 = v217;
    v79 = v218;
    v80 = v219;
    if (!v217)
    {
      break;
    }

    v72 = v77;
    v73 = v78;
    v74 = v79;
    v75 = v80;
    v70 = v80;
    v71 = v78;
    v213 = v77;
    v214 = v78;
    v215 = v79;
    v212 = v80;
    sub_1B08EF338(v159, v162, v77, v78, v79, v80);
    MEMORY[0x1E69E5920](v70);
  }

  return sub_1B06B91B0(__b);
}

uint64_t sub_1B08EF08C()
{
  sub_1B07F1AFC();
  sub_1B08E4290();
  return sub_1B0E44628();
}

uint64_t sub_1B08EF0D8()
{
  v4[0] = sub_1B0E46A28();
  v4[1] = v0;
  v1 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v1);

  sub_1B0E469E8();
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v4);
  return sub_1B0E44C88();
}

uint64_t sub_1B08EF1C4()
{
  sub_1B07F1AFC();
  sub_1B08E4290();
  v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2EA8, &qword_1B0EA05E8);
  v0 = sub_1B08F65C8();
  v2 = sub_1B039CA88(sub_1B08EBD18, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v0, MEMORY[0x1E69E7410], v5);
  sub_1B039E440(&v7);
  v6 = v2;
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v3 = sub_1B0E448E8();

  sub_1B039E440(&v6);
  return v3;
}

uint64_t sub_1B08EF338(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v17 = *(v7 + 16);
  MEMORY[0x1E69E5928](v17);
  v16 = swift_allocObject();

  swift_weakInit();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a6);
  v15 = swift_allocObject();
  *(v15 + 16) = v16;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  sub_1B0A47F1C(a6, v17, sub_1B08F4FF0, v15);

  return MEMORY[0x1E69E5920](v17);
}

uint64_t sub_1B08EF4F0(const void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v19 = a1;
  v18 = a2 + 16;
  v17 = a3;
  v16[8] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v16[4] = a8;
  swift_beginAccess();
  v16[0] = swift_weakLoadStrong();
  if (v16[0])
  {

    sub_1B0391AD4(v16);
    swift_endAccess();
    sub_1B08EF610(a3, a4, a5, a6, a7, a8, a1);
  }

  else
  {
    sub_1B0391AD4(v16);
    return swift_endAccess();
  }
}

uint64_t sub_1B08EF610(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, const void *a7)
{
  v319 = a1;
  v318 = a2;
  v313 = a3;
  v314 = a4;
  v315 = a5;
  v316 = a6;
  v317 = a7;
  v250 = sub_1B070B278;
  v251 = sub_1B039BC08;
  v252 = sub_1B08F4FE0;
  v253 = sub_1B039BCF8;
  v254 = sub_1B08F5138;
  v255 = sub_1B06BCD8C;
  v256 = sub_1B0398F5C;
  v257 = sub_1B0398F5C;
  v258 = sub_1B03991EC;
  v259 = sub_1B0398F5C;
  v260 = sub_1B0398F5C;
  v261 = sub_1B039BCEC;
  v262 = sub_1B0398F5C;
  v263 = sub_1B0398F5C;
  v264 = sub_1B03992D4;
  v265 = sub_1B070B278;
  v266 = sub_1B039BC08;
  v267 = sub_1B08F4FE0;
  v268 = sub_1B039BCF8;
  v269 = sub_1B08F5138;
  v270 = sub_1B06BCD8C;
  v271 = sub_1B0398F5C;
  v272 = sub_1B0398F5C;
  v273 = sub_1B03991EC;
  v274 = sub_1B0398F5C;
  v275 = sub_1B0398F5C;
  v276 = sub_1B039BCEC;
  v277 = sub_1B0398F5C;
  v278 = sub_1B0398F5C;
  v279 = sub_1B03992D4;
  v280 = sub_1B070B278;
  v281 = sub_1B039BC08;
  v282 = sub_1B08F4FE0;
  v283 = sub_1B039BCF8;
  v284 = sub_1B08F5138;
  v285 = sub_1B06BCD8C;
  v286 = sub_1B0398F5C;
  v287 = sub_1B0398F5C;
  v288 = sub_1B03991EC;
  v289 = sub_1B0398F5C;
  v290 = sub_1B0398F5C;
  v291 = sub_1B039BCEC;
  v292 = sub_1B0398F5C;
  v293 = sub_1B0398F5C;
  v294 = sub_1B03992D4;
  v358 = 0;
  v357 = 0;
  v356 = 0;
  v353 = 0;
  v354 = 0;
  v355 = 0;
  v352 = 0;
  v351 = 0;
  v350 = 0;
  v295 = 0;
  v335 = 0;
  v307 = 0;
  v296 = sub_1B0E439A8();
  v297 = *(v296 - 8);
  v298 = v296 - 8;
  v299 = (*(v297 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v296);
  v300 = v132 - v299;
  v301 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v132 - v299);
  v302 = v132 - v301;
  v303 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v132 - v301);
  v304 = v132 - v303;
  v305 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v307);
  v306 = v132 - v305;
  v308 = type metadata accessor for Message(v10);
  v309 = *(v308 - 8);
  v310 = v308 - 8;
  v311 = (*(v309 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v307);
  v312 = v132 - v311;
  v358 = v132 - v311;
  v324 = sub_1B0E44468();
  v322 = *(v324 - 8);
  v323 = v324 - 8;
  v320 = (*(v322 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v319);
  v325 = (v132 - v320);
  v357 = v11;
  v356 = v12;
  v353 = v13;
  v354 = v14;
  v355 = v15;
  v352 = v16;
  v351 = v17;
  v350 = v7;

  v321 = *(v7 + 16);
  MEMORY[0x1E69E5928](v321);
  v18 = v322;
  *v325 = v321;
  v19 = *MEMORY[0x1E69E8020];
  (*(v18 + 104))();
  v326 = sub_1B0E44488();
  (*(v322 + 8))(v325, v324);
  result = v326;
  if (v326)
  {

    sub_1B08F5010(v317, v306);
    if ((*(v309 + 48))(v306, 1, v308) == 1)
    {
      v95 = v300;
      sub_1B07AF920(v306);
      v96 = sub_1B08DFDD8();
      (*(v297 + 16))(v95, v96, v296);
      v147 = 7;
      v140 = swift_allocObject();
      *(v140 + 16) = v319;
      v142 = swift_allocObject();
      *(v142 + 16) = v318;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v97 = swift_allocObject();
      v98 = v314;
      v99 = v315;
      v148 = v97;
      v97[2] = v313;
      v97[3] = v98;
      v97[4] = v99;
      v162 = sub_1B0E43988();
      v163 = sub_1B0E458E8();
      v144 = 17;
      v150 = swift_allocObject();
      *(v150 + 16) = 0;
      v151 = swift_allocObject();
      *(v151 + 16) = 4;
      v146 = 32;
      v100 = swift_allocObject();
      v101 = v140;
      v141 = v100;
      *(v100 + 16) = v250;
      *(v100 + 24) = v101;
      v102 = swift_allocObject();
      v103 = v141;
      v152 = v102;
      *(v102 + 16) = v251;
      *(v102 + 24) = v103;
      v153 = swift_allocObject();
      *(v153 + 16) = 32;
      v154 = swift_allocObject();
      v145 = 8;
      *(v154 + 16) = 8;
      v104 = swift_allocObject();
      v105 = v142;
      v143 = v104;
      *(v104 + 16) = v252;
      *(v104 + 24) = v105;
      v106 = swift_allocObject();
      v107 = v143;
      v155 = v106;
      *(v106 + 16) = v253;
      *(v106 + 24) = v107;
      v156 = swift_allocObject();
      *(v156 + 16) = 0;
      v157 = swift_allocObject();
      *(v157 + 16) = v145;
      v108 = swift_allocObject();
      v109 = v148;
      v149 = v108;
      *(v108 + 16) = v254;
      *(v108 + 24) = v109;
      v110 = swift_allocObject();
      v111 = v149;
      v159 = v110;
      *(v110 + 16) = v255;
      *(v110 + 24) = v111;
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v158 = sub_1B0E46A48();
      v160 = v112;

      v113 = v150;
      v114 = v160;
      *v160 = v256;
      v114[1] = v113;

      v115 = v151;
      v116 = v160;
      v160[2] = v257;
      v116[3] = v115;

      v117 = v152;
      v118 = v160;
      v160[4] = v258;
      v118[5] = v117;

      v119 = v153;
      v120 = v160;
      v160[6] = v259;
      v120[7] = v119;

      v121 = v154;
      v122 = v160;
      v160[8] = v260;
      v122[9] = v121;

      v123 = v155;
      v124 = v160;
      v160[10] = v261;
      v124[11] = v123;

      v125 = v156;
      v126 = v160;
      v160[12] = v262;
      v126[13] = v125;

      v127 = v157;
      v128 = v160;
      v160[14] = v263;
      v128[15] = v127;

      v129 = v159;
      v130 = v160;
      v160[16] = v264;
      v130[17] = v129;
      sub_1B0394964();

      if (os_log_type_enabled(v162, v163))
      {
        v131 = v295;
        v133 = sub_1B0E45D78();
        v132[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v134 = sub_1B03949A8(0);
        v135 = sub_1B03949A8(1);
        v136 = &v347;
        v347 = v133;
        v137 = &v346;
        v346 = v134;
        v138 = &v345;
        v345 = v135;
        sub_1B0394A48(2, &v347);
        sub_1B0394A48(3, v136);
        v343 = v256;
        v344 = v150;
        sub_1B03949FC(&v343, v136, v137, v138);
        v139 = v131;
        if (v131)
        {

          __break(1u);
        }

        else
        {
          v343 = v257;
          v344 = v151;
          sub_1B03949FC(&v343, &v347, &v346, &v345);
          v132[8] = 0;
          v343 = v258;
          v344 = v152;
          sub_1B03949FC(&v343, &v347, &v346, &v345);
          v132[7] = 0;
          v343 = v259;
          v344 = v153;
          sub_1B03949FC(&v343, &v347, &v346, &v345);
          v132[6] = 0;
          v343 = v260;
          v344 = v154;
          sub_1B03949FC(&v343, &v347, &v346, &v345);
          v132[5] = 0;
          v343 = v261;
          v344 = v155;
          sub_1B03949FC(&v343, &v347, &v346, &v345);
          v132[4] = 0;
          v343 = v262;
          v344 = v156;
          sub_1B03949FC(&v343, &v347, &v346, &v345);
          v132[3] = 0;
          v343 = v263;
          v344 = v157;
          sub_1B03949FC(&v343, &v347, &v346, &v345);
          v132[2] = 0;
          v343 = v264;
          v344 = v159;
          sub_1B03949FC(&v343, &v347, &v346, &v345);
          _os_log_impl(&dword_1B0389000, v162, v163, "[%u] Task manager %s failed to download message %lld.", v133, 0x1Cu);
          sub_1B03998A8(v134);
          sub_1B03998A8(v135);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v162);
      (*(v297 + 8))(v300, v296);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v132[0] = v349;
      v349[0] = v313;
      v349[1] = v314;
      v349[2] = v315;
      v132[1] = &v348;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
      sub_1B0E454D8();
      swift_endAccess();

      return sub_1B08F1984();
    }

    else
    {
      (*(v309 + 32))(v312, v306, v308);
      v249 = sub_1B08F19DC(v316, v312);
      if (v249)
      {
        v248 = v249;
        v21 = v304;
        v223 = v249;
        v335 = v249;
        v22 = sub_1B08DFDD8();
        (*(v297 + 16))(v21, v22, v296);
        v231 = 7;
        v224 = swift_allocObject();
        *(v224 + 16) = v319;
        v226 = swift_allocObject();
        *(v226 + 16) = v318;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v23 = swift_allocObject();
        v24 = v314;
        v25 = v315;
        v232 = v23;
        v23[2] = v313;
        v23[3] = v24;
        v23[4] = v25;
        v246 = sub_1B0E43988();
        v247 = sub_1B0E45908();
        v228 = 17;
        v234 = swift_allocObject();
        *(v234 + 16) = 0;
        v235 = swift_allocObject();
        *(v235 + 16) = 4;
        v230 = 32;
        v26 = swift_allocObject();
        v27 = v224;
        v225 = v26;
        *(v26 + 16) = v265;
        *(v26 + 24) = v27;
        v28 = swift_allocObject();
        v29 = v225;
        v236 = v28;
        *(v28 + 16) = v266;
        *(v28 + 24) = v29;
        v237 = swift_allocObject();
        *(v237 + 16) = 32;
        v238 = swift_allocObject();
        v229 = 8;
        *(v238 + 16) = 8;
        v30 = swift_allocObject();
        v31 = v226;
        v227 = v30;
        *(v30 + 16) = v267;
        *(v30 + 24) = v31;
        v32 = swift_allocObject();
        v33 = v227;
        v239 = v32;
        *(v32 + 16) = v268;
        *(v32 + 24) = v33;
        v240 = swift_allocObject();
        *(v240 + 16) = 0;
        v241 = swift_allocObject();
        *(v241 + 16) = v229;
        v34 = swift_allocObject();
        v35 = v232;
        v233 = v34;
        *(v34 + 16) = v269;
        *(v34 + 24) = v35;
        v36 = swift_allocObject();
        v37 = v233;
        v243 = v36;
        *(v36 + 16) = v270;
        *(v36 + 24) = v37;
        v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v242 = sub_1B0E46A48();
        v244 = v38;

        v39 = v234;
        v40 = v244;
        *v244 = v271;
        v40[1] = v39;

        v41 = v235;
        v42 = v244;
        v244[2] = v272;
        v42[3] = v41;

        v43 = v236;
        v44 = v244;
        v244[4] = v273;
        v44[5] = v43;

        v45 = v237;
        v46 = v244;
        v244[6] = v274;
        v46[7] = v45;

        v47 = v238;
        v48 = v244;
        v244[8] = v275;
        v48[9] = v47;

        v49 = v239;
        v50 = v244;
        v244[10] = v276;
        v50[11] = v49;

        v51 = v240;
        v52 = v244;
        v244[12] = v277;
        v52[13] = v51;

        v53 = v241;
        v54 = v244;
        v244[14] = v278;
        v54[15] = v53;

        v55 = v243;
        v56 = v244;
        v244[16] = v279;
        v56[17] = v55;
        sub_1B0394964();

        if (os_log_type_enabled(v246, v247))
        {
          v57 = v295;
          v216 = sub_1B0E45D78();
          v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v217 = sub_1B03949A8(0);
          v218 = sub_1B03949A8(1);
          v219 = &v331;
          v331 = v216;
          v220 = &v330;
          v330 = v217;
          v221 = &v329;
          v329 = v218;
          sub_1B0394A48(2, &v331);
          sub_1B0394A48(3, v219);
          v327 = v271;
          v328 = v234;
          sub_1B03949FC(&v327, v219, v220, v221);
          v222 = v57;
          if (v57)
          {

            __break(1u);
          }

          else
          {
            v327 = v272;
            v328 = v235;
            sub_1B03949FC(&v327, &v331, &v330, &v329);
            v214 = 0;
            v327 = v273;
            v328 = v236;
            sub_1B03949FC(&v327, &v331, &v330, &v329);
            v213 = 0;
            v327 = v274;
            v328 = v237;
            sub_1B03949FC(&v327, &v331, &v330, &v329);
            v212 = 0;
            v327 = v275;
            v328 = v238;
            sub_1B03949FC(&v327, &v331, &v330, &v329);
            v211 = 0;
            v327 = v276;
            v328 = v239;
            sub_1B03949FC(&v327, &v331, &v330, &v329);
            v210 = 0;
            v327 = v277;
            v328 = v240;
            sub_1B03949FC(&v327, &v331, &v330, &v329);
            v209 = 0;
            v327 = v278;
            v328 = v241;
            sub_1B03949FC(&v327, &v331, &v330, &v329);
            v208 = 0;
            v327 = v279;
            v328 = v243;
            sub_1B03949FC(&v327, &v331, &v330, &v329);
            _os_log_impl(&dword_1B0389000, v246, v247, "[%u] Task manager %s completed a message %lld.", v216, 0x1Cu);
            sub_1B03998A8(v217);
            sub_1B03998A8(v218);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v246);
        (*(v297 + 8))(v304, v296);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_unknownObjectRetain();
        v206 = &v334;
        v334 = v223;
        v205 = v333;
        v333[0] = v313;
        v333[1] = v314;
        v333[2] = v315;
        v207 = &v332;
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DA8, &qword_1B0EA0380);
        sub_1B0E44788();
        swift_endAccess();
        swift_unknownObjectRelease();
        (*(v309 + 8))(v312, v308);
        return sub_1B08F1984();
      }

      else
      {
        v58 = v302;
        v59 = sub_1B08DFDD8();
        (*(v297 + 16))(v58, v59, v296);
        v188 = 7;
        v181 = swift_allocObject();
        *(v181 + 16) = v319;
        v183 = swift_allocObject();
        *(v183 + 16) = v318;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v60 = swift_allocObject();
        v61 = v314;
        v62 = v315;
        v189 = v60;
        v60[2] = v313;
        v60[3] = v61;
        v60[4] = v62;
        v203 = sub_1B0E43988();
        v204 = sub_1B0E458E8();
        v185 = 17;
        v191 = swift_allocObject();
        *(v191 + 16) = 0;
        v192 = swift_allocObject();
        *(v192 + 16) = 4;
        v187 = 32;
        v63 = swift_allocObject();
        v64 = v181;
        v182 = v63;
        *(v63 + 16) = v280;
        *(v63 + 24) = v64;
        v65 = swift_allocObject();
        v66 = v182;
        v193 = v65;
        *(v65 + 16) = v281;
        *(v65 + 24) = v66;
        v194 = swift_allocObject();
        *(v194 + 16) = 32;
        v195 = swift_allocObject();
        v186 = 8;
        *(v195 + 16) = 8;
        v67 = swift_allocObject();
        v68 = v183;
        v184 = v67;
        *(v67 + 16) = v282;
        *(v67 + 24) = v68;
        v69 = swift_allocObject();
        v70 = v184;
        v196 = v69;
        *(v69 + 16) = v283;
        *(v69 + 24) = v70;
        v197 = swift_allocObject();
        *(v197 + 16) = 0;
        v198 = swift_allocObject();
        *(v198 + 16) = v186;
        v71 = swift_allocObject();
        v72 = v189;
        v190 = v71;
        *(v71 + 16) = v284;
        *(v71 + 24) = v72;
        v73 = swift_allocObject();
        v74 = v190;
        v200 = v73;
        *(v73 + 16) = v285;
        *(v73 + 24) = v74;
        v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v199 = sub_1B0E46A48();
        v201 = v75;

        v76 = v191;
        v77 = v201;
        *v201 = v286;
        v77[1] = v76;

        v78 = v192;
        v79 = v201;
        v201[2] = v287;
        v79[3] = v78;

        v80 = v193;
        v81 = v201;
        v201[4] = v288;
        v81[5] = v80;

        v82 = v194;
        v83 = v201;
        v201[6] = v289;
        v83[7] = v82;

        v84 = v195;
        v85 = v201;
        v201[8] = v290;
        v85[9] = v84;

        v86 = v196;
        v87 = v201;
        v201[10] = v291;
        v87[11] = v86;

        v88 = v197;
        v89 = v201;
        v201[12] = v292;
        v89[13] = v88;

        v90 = v198;
        v91 = v201;
        v201[14] = v293;
        v91[15] = v90;

        v92 = v200;
        v93 = v201;
        v201[16] = v294;
        v93[17] = v92;
        sub_1B0394964();

        if (os_log_type_enabled(v203, v204))
        {
          v94 = v295;
          v174 = sub_1B0E45D78();
          v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v175 = sub_1B03949A8(0);
          v176 = sub_1B03949A8(1);
          v177 = &v340;
          v340 = v174;
          v178 = &v339;
          v339 = v175;
          v179 = &v338;
          v338 = v176;
          sub_1B0394A48(2, &v340);
          sub_1B0394A48(3, v177);
          v336 = v286;
          v337 = v191;
          sub_1B03949FC(&v336, v177, v178, v179);
          v180 = v94;
          if (v94)
          {

            __break(1u);
          }

          else
          {
            v336 = v287;
            v337 = v192;
            sub_1B03949FC(&v336, &v340, &v339, &v338);
            v172 = 0;
            v336 = v288;
            v337 = v193;
            sub_1B03949FC(&v336, &v340, &v339, &v338);
            v171 = 0;
            v336 = v289;
            v337 = v194;
            sub_1B03949FC(&v336, &v340, &v339, &v338);
            v170 = 0;
            v336 = v290;
            v337 = v195;
            sub_1B03949FC(&v336, &v340, &v339, &v338);
            v169 = 0;
            v336 = v291;
            v337 = v196;
            sub_1B03949FC(&v336, &v340, &v339, &v338);
            v168 = 0;
            v336 = v292;
            v337 = v197;
            sub_1B03949FC(&v336, &v340, &v339, &v338);
            v167 = 0;
            v336 = v293;
            v337 = v198;
            sub_1B03949FC(&v336, &v340, &v339, &v338);
            v166 = 0;
            v336 = v294;
            v337 = v200;
            sub_1B03949FC(&v336, &v340, &v339, &v338);
            _os_log_impl(&dword_1B0389000, v203, v204, "[%u] Task manager %s: Unable to parse message %lld.", v174, 0x1Cu);
            sub_1B03998A8(v175);
            sub_1B03998A8(v176);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v203);
        (*(v297 + 8))(v302, v296);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v164 = v342;
        v342[0] = v313;
        v342[1] = v314;
        v342[2] = v315;
        v165 = &v341;
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
        sub_1B0E454D8();
        swift_endAccess();

        (*(v309 + 8))(v312, v308);
        return sub_1B08F1984();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08F1984()
{
  swift_beginAccess();
  sub_1B08E4AE0();
  return swift_endAccess();
}

id sub_1B08F19DC(void *a1, uint64_t a2)
{
  v3 = *v2;
  swift_beginAccess();
  v7 = v2[9];

  swift_endAccess();
  v8 = sub_1B08F1AAC(a1, a2, v7);

  return v8;
}

id sub_1B08F1AAC(void *a1, uint64_t a2, void *a3)
{
  v55 = a1;
  v44 = a2;
  v43 = a3;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v41 = 0;
  v24 = type metadata accessor for Message(0);
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v14 - v27;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E20, &qword_1B0EA03B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v30 = &v14 - v29;
  v31 = type metadata accessor for WatchOSRender.Message();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v14 - v34;
  v68 = &v14 - v34;
  v36 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E28, &qword_1B0EA03C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v58 = &v14 - v36;
  v59 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
  v56 = *(v59 - 8);
  v57 = v59 - 8;
  v37 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v14 - v37;
  v39 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v14 - v39;
  v67 = &v14 - v39;
  v50 = sub_1B0E439A8();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v42 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v14 - v42;
  v45 = (*(*(_s6LoggerVMa_2() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55);
  v46 = &v14 - v45;
  v47 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v14 - v47;
  v66 = &v14 - v47;
  v65 = v8;
  v64 = v9;
  v63 = v10;
  v62 = v3;
  v11 = sub_1B08DFDD8();
  (*(v48 + 16))(v53, v11, v50);
  v51 = [v55 persistedMessageID];
  v54 = [v51 databaseID];
  MEMORY[0x1E69E5920](v51);
  sub_1B0A6F674(v53, v54, v52);
  MEMORY[0x1E69E5928](v55);
  sub_1B0A7B704(v55, v58);
  if ((*(v56 + 48))(v58, 1, v59) == 1)
  {
    sub_1B08F5148(v58);
LABEL_9:
    sub_1B039480C(v52);
    return 0;
  }

  sub_1B08F524C(v58, v40);
  v20 = [v55 persistedMessageID];
  v21 = [v20 databaseID];
  MEMORY[0x1E69E5920](v20);
  v22 = sub_1B08F2210(v44, v40, v21, v43, v52);
  v23 = v12;
  if (!v12)
  {
    sub_1B08F533C(v40);
    goto LABEL_9;
  }

  v18 = v22;
  v19 = v23;
  v17 = v23;
  v16 = v22;
  v60 = v22;
  v61 = v23;
  (*(v25 + 16))(v28, v44, v24);
  sub_1B08F53FC(v40, v38);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B08F5590(v52, v46);
  sub_1B0A7C898(v28, v38, v16, v17, v43, v46, v30);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1B08F5618(v30);

    sub_1B08F533C(v40);
    goto LABEL_9;
  }

  sub_1B08F57EC(v30, v35);
  v14 = sub_1B0A7D9FC();
  sub_1B08F597C(v35);

  sub_1B08F533C(v40);
  sub_1B039480C(v52);
  return v14;
}

uint64_t sub_1B08F2210(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a1;
  v42 = a2;
  v40 = a3;
  v47 = a4;
  v41 = a5;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v38 = 0;
  v30 = (*(*(type metadata accessor for MessageSummary.Accumulator() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v31 = &v17 - v30;
  v32 = _s6ParserV4TextVMa();
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v17 - v33;
  v66 = &v17 - v33;
  v35 = (*(*(type metadata accessor for WatchOSRender.Message.InfoFromLibrary() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v17 - v35;
  v6 = sub_1B0E431A8();
  v37 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v17 - v37;
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E30, &unk_1B0EA0620) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v50 = &v17 - v39;
  v51 = _s6ParserVMa();
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v44 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v17 - v44;
  v65 = &v17 - v44;
  v64 = v7;
  v63 = v8;
  v62 = v9;
  v61 = v10;
  v60 = v11;
  v59 = v5;
  sub_1B0E43198();

  sub_1B0A6FED8(100000, v46, v47, v50, 1000.0);
  if ((*(v48 + 48))(v50, 1, v51) == 1)
  {
    sub_1B08F5B10(v50);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    sub_1B08F5BEC(v50, v45);
    sub_1B08F53FC(v42, v36);
    v56 = sub_1B0A6A714(v40, v36);
    v57 = v12;
    v58 = v13;
    sub_1B0A7024C(v43, &v56, v41, v34);
    sub_1B08C49A4(&v34[*(v32 + 24)], v31);
    v28 = sub_1B08C4AC8(v31);
    v29 = v14;
    if (v14)
    {
      v26 = v28;
      v27 = v29;
      v23 = v29;
      v22 = v28;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v24 = v22;
      v25 = v23;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    v52 = v24;
    v53 = v25;
    if (v25)
    {
      v54 = v52;
      v55 = v53;
    }

    else
    {
      v54 = sub_1B0E44838();
      v55 = v15;
      if (v53)
      {
        sub_1B03B1198(&v52);
      }
    }

    v18 = v54;
    v19 = v55;
    sub_1B08F5CB4(v34);
    sub_1B039E440(&v56);
    sub_1B08F5DC8(v45);
    v20 = v18;
    v21 = v19;
  }

  return v20;
}

uint64_t sub_1B08F27B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B08E0EE8(v4, v5);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B08F282C(uint64_t a1, char a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v14 = a1;
  v13 = a2 & 1;
  v12 = a3 + 16;
  v11 = a4;
  v10[4] = a5;
  swift_beginAccess();
  v10[0] = swift_weakLoadStrong();
  if (v10[0])
  {

    sub_1B0391AD4(v10);
    swift_endAccess();
    sub_1B08F2928(a4, a5, a1, a2 & 1);
  }

  else
  {
    sub_1B0391AD4(v10);
    return swift_endAccess();
  }
}

uint64_t sub_1B08F2928(unsigned int a1, uint64_t a2, uint64_t a3, int a4)
{
  v63 = a1;
  v62 = a2;
  v60 = a3;
  v61 = a4;
  v48 = sub_1B070B278;
  v49 = sub_1B039BC08;
  v50 = sub_1B0398F5C;
  v51 = sub_1B0398F5C;
  v52 = sub_1B03991EC;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v53 = 0;
  v54 = 0;
  v55 = sub_1B0E439A8();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v59 = v26 - v58;
  v68 = sub_1B0E44468();
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v64 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v63);
  v69 = (v26 - v64);
  v82 = v5;
  v81 = v6;
  v80 = v7;
  v79 = v8 & 1;
  v78 = v4;

  v65 = *(v4 + 16);
  MEMORY[0x1E69E5928](v65);
  v9 = v66;
  *v69 = v65;
  v10 = *MEMORY[0x1E69E8020];
  (*(v9 + 104))();
  v70 = sub_1B0E44488();
  (*(v66 + 8))(v69, v68);
  result = v70;
  if (v70)
  {
    v12 = v59;

    v13 = sub_1B08DFDD8();
    (*(v56 + 16))(v12, v13, v55);
    v37 = 7;
    v38 = swift_allocObject();
    *(v38 + 16) = v63;
    v46 = sub_1B0E43988();
    v47 = sub_1B0E45908();
    v35 = 17;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    v41 = swift_allocObject();
    *(v41 + 16) = 4;
    v36 = 32;
    v14 = swift_allocObject();
    v15 = v38;
    v39 = v14;
    *(v14 + 16) = v48;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v39;
    v43 = v16;
    *(v16 + 16) = v49;
    *(v16 + 24) = v17;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v42 = sub_1B0E46A48();
    v44 = v18;

    v19 = v40;
    v20 = v44;
    *v44 = v50;
    v20[1] = v19;

    v21 = v41;
    v22 = v44;
    v44[2] = v51;
    v22[3] = v21;

    v23 = v43;
    v24 = v44;
    v44[4] = v52;
    v24[5] = v23;
    sub_1B0394964();

    if (os_log_type_enabled(v46, v47))
    {
      v25 = v53;
      v28 = sub_1B0E45D78();
      v26[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v27 = 0;
      v29 = sub_1B03949A8(0);
      v30 = sub_1B03949A8(v27);
      v31 = &v75;
      v75 = v28;
      v32 = &v74;
      v74 = v29;
      v33 = &v73;
      v73 = v30;
      sub_1B0394A48(0, &v75);
      sub_1B0394A48(1, v31);
      v71 = v50;
      v72 = v40;
      sub_1B03949FC(&v71, v31, v32, v33);
      v34 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v71 = v51;
        v72 = v41;
        sub_1B03949FC(&v71, &v75, &v74, &v73);
        v26[6] = 0;
        v71 = v52;
        v72 = v43;
        sub_1B03949FC(&v71, &v75, &v74, &v73);
        _os_log_impl(&dword_1B0389000, v46, v47, "[%u] Legacy loader did complete.", v28, 8u);
        v26[5] = 0;
        sub_1B03998A8(v29);
        sub_1B03998A8(v30);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v46);
    (*(v56 + 8))(v59, v55);
    v26[1] = &v77;
    v26[2] = 33;
    v26[3] = 0;
    swift_beginAccess();
    sub_1B08E4508(v62, v60, v61 & 1);
    swift_endAccess();
    v26[4] = &v76;
    swift_beginAccess();
    sub_1B08E4AE0();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08F3218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    sub_1B0E445A8();
    MEMORY[0x1E69E5920](a2);
  }

  v3();
}

uint64_t sub_1B08F3314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  v17 = 0;
  v13 = 0;
  v27 = a1;
  v9 = sub_1B0E42D28();
  v26 = v9;
  if (sub_1B0E452A8() != 2)
  {
    goto LABEL_18;
  }

  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0750598();
  sub_1B0E45728();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E44838();
  v7 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21[0] = v23;
  v21[1] = v24;
  *&v22 = v6;
  *(&v22 + 1) = v7;
  if (!v24)
  {
    if (!*(&v22 + 1))
    {
      sub_1B03B1198(v21);
      v5 = 1;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B070B280(v21, &v12);
  if (!*(&v22 + 1))
  {
    sub_1B03B1198(&v12);
LABEL_10:
    sub_1B06FF6F0(v21);
    v5 = 0;
    goto LABEL_8;
  }

  v11 = v12;
  v10 = v22;
  v4 = MEMORY[0x1B2726DE0](v12, *(&v12 + 1), v22, *(&v22 + 1));
  sub_1B03B1198(&v10);
  sub_1B03B1198(&v11);
  sub_1B03B1198(v21);
  v5 = v4;
LABEL_8:

  if (v5)
  {
    v20 = v9;
    sub_1B03B11C4();
    sub_1B0E44888();
    if (v19)
    {
      v16 = v18;
      v17 = v19;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B06BCD98();
      sub_1B0E46598();
      if ((v15 & 1) == 0)
      {
        v13 = v14;
        *a2 = v14;
        *(a2 + 8) = 0;
      }
    }
  }

LABEL_18:
  *a2 = 0;
  *(a2 + 8) = 1;
}

BOOL sub_1B08F3634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = MEMORY[0x1B2726DE0](a1, a2, a4, a5);

  return (v14 & 1) != 0 && a3 == a6;
}

uint64_t sub_1B08F3728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = a1;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7[0] = a2;
  v7[1] = a3;
  sub_1B0E46C48();
  sub_1B03B1198(v7);
  return sub_1B0E46C48();
}

uint64_t sub_1B08F3850()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1B08F37E8();
}

uint64_t sub_1B08F38D4()
{
  v3 = 0;
  v4 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2EC0, &qword_1B0EA05F0);
  v2 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = v2;
  sub_1B0E46A48();
  sub_1B08E4290();
  v1 = sub_1B0E45438();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = v1;
  sub_1B07F22C0(&v3);
  return v2;
}

void sub_1B08F3984(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = a5;
  v44 = a4;
  v45 = a3;
  v46 = a2;
  v49 = a1;
  v47 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v48 = 0;
  v55 = 0;
  v67 = a1;
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v63 = a5;
  v5 = a1;
  if (!v49)
  {
    goto LABEL_11;
  }

  v41 = v49;
  v40 = v49;
  v61 = v49;
  v6 = v43;
  if (!v43)
  {

LABEL_11:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B0E454D8();

    return;
  }

  v39 = v43;
  v7 = v48;
  v32 = v43;
  v60 = v43;
  v33 = *v42;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v58[0] = v33;
  v8 = v40;
  v34 = &v21;
  MEMORY[0x1EEE9AC00](&v21);
  v36 = v20;
  v20[2] = v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DD8, &qword_1B0EA0398);
  v35 = v37;
  sub_1B08F4E50();
  sub_1B0E456F8();
  v38 = v7;

  sub_1B039E440(v58);
  v31 = v58[1];
  if (v59)
  {
    v11 = v40;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E38, &qword_1B0EA03C8);
    v24 = sub_1B0E46A48();
    v22 = v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = v45;
    v14 = v44;
    v15 = v22;
    v16 = v32;
    *v22 = v46;
    v15[1] = v13;
    v15[2] = v14;
    v17 = v16;
    v18 = v24;
    v22[3] = v32;
    sub_1B0394964();
    v26 = v18;
    v25 = sub_1B07F1AFC();
    sub_1B08E4290();
    v19 = sub_1B0E445D8();
    v56 = v40;
    v57 = v19;
    sub_1B0E452E8();
  }

  else
  {
    v30 = v31;
    v27 = v31;
    v55 = v31;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = v32;
    v54 = v32;
    v51 = v46;
    v52 = v45;
    v53 = v44;
    v28 = &v50;
    v29 = sub_1B0E45398();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E40, &qword_1B0EA03D0);
    sub_1B0E44788();
    v29(v28, 0);
  }

  v21 = v38;
}

uint64_t sub_1B08F3EC4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1B08A67A0();
  return sub_1B0E45CD8() & 1;
}

uint64_t sub_1B08F3F34(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B08F5E90();
  sub_1B08F48D0();
  sub_1B0E44F58();
  v8 = sub_1B08C0C38();
  [v8 setCriterionType_];
  [v8 setAllCriteriaMustBeSatisfied_];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E451A8();

  [v8 setCriteria_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v8);
  v9 = [v11 messagesMatchingCriterion:v8 options:6144];
  MEMORY[0x1E69E5920](v8);
  if (v9)
  {
    sub_1B07F1AFC();
    v5 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v9);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v3 = sub_1B08F4318(a1, v6);

    MEMORY[0x1E69E5920](v8);

    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E38, &qword_1B0EA03C8);
    sub_1B0E46A48();
    sub_1B07F1AFC();
    sub_1B08E4290();
    v2 = sub_1B0E445D8();
    MEMORY[0x1E69E5920](v8);

    return v2;
  }
}

id sub_1B08F4228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_1B08F6564();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E0EE8(v4, v5);
  result = sub_1B08F6760();
  v7 = result;
  if (result)
  {
    *a2 = [result mf_messageCriterion];
    return MEMORY[0x1E69E5920](v7);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B08F4318(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v25 = 0;
  v36 = a1;
  v35 = a2;
  v34 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E50, &qword_1B0EA03D8);
  sub_1B08F48D0();
  v28 = 0;
  v29 = sub_1B0E44F58();
  v33 = v29;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E58, &qword_1B0EA03E0);
  sub_1B08F5EF4();
  v22 = 0;
  v23 = sub_1B0E44718();
  v14 = v23;
  v32 = v23;
  v31 = v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = &v6;
  MEMORY[0x1EEE9AC00](&v6);
  v16 = v5;
  v5[2] = v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E38, &qword_1B0EA03C8);
  sub_1B07F1A74();
  v3 = sub_1B0E44F58();
  v19 = 0;
  v20 = v3;
  v8 = v3;

  v30 = v8;
  v9 = 0;
  v10 = sub_1B07F1AFC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E68, &qword_1B0EA03E8);
  v12 = sub_1B08E4290();
  sub_1B08F5FA4();
  v13 = sub_1B0E44718();
  v7 = v13;

  return v7;
}

uint64_t sub_1B08F460C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v6;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v6;
  return result;
}

uint64_t sub_1B08F4684@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v7;
  return result;
}

uint64_t sub_1B08F4718@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  [*a1 libraryID];
  result = sub_1B0E44778();
  if (v6)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5928](v4);
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v4;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  return result;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B08F48D0()
{
  v2 = qword_1EB6E2D58;
  if (!qword_1EB6E2D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2D58);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B08F49C4()
{
  v2 = qword_1EB6E2D60;
  if (!qword_1EB6E2D60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2D60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4A40()
{
  v2 = qword_1EB6E2D80;
  if (!qword_1EB6E2D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D78, &qword_1B0EA0368);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2D80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4AC8()
{
  v2 = qword_1EB6E2D90;
  if (!qword_1EB6E2D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D88, &qword_1B0EA0370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4B50()
{
  v2 = qword_1EB6E2DA0;
  if (!qword_1EB6E2DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D98, &qword_1B0EA0378);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2DA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4C04()
{
  v2 = qword_1EB6E2DB0;
  if (!qword_1EB6E2DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D68, &qword_1B0EA0358);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2DB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08F4C8C(__int128 *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  return sub_1B08EB7C4(a1, a2) & 1;
}

void sub_1B08F4CC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1B06ECC14();
}

uint64_t sub_1B08F4CD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_1B08EB8A8();
}

uint64_t sub_1B08F4CF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return sub_1B08EB958();
}

unint64_t sub_1B08F4D40()
{
  v2 = qword_1EB6E2DC8;
  if (!qword_1EB6E2DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2DC0, &qword_1B0EA0390);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2DC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4DC8()
{
  v2 = qword_1EB6E2DD0;
  if (!qword_1EB6E2DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D68, &qword_1B0EA0358);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2DD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4E50()
{
  v2 = qword_1EB6E2DE0;
  if (!qword_1EB6E2DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2DD8, &qword_1B0EA0398);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2DE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4ED8()
{
  v2 = qword_1EB6E2E00;
  if (!qword_1EB6E2E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2E00);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_380(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_1B08F5010(const void *a1, void *a2)
{
  v6 = type metadata accessor for Message(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1B08F5148(void *a1)
{
  v11 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
  if (!(*(*(v11 - 8) + 48))(a1, 1))
  {
    v1 = a1[1];

    v2 = a1[3];

    v3 = a1[5];

    v4 = a1[7];

    v5 = a1[9];

    v6 = a1[11];

    v9 = a1 + *(v11 + 40);
    v7 = sub_1B0E43108();
    (*(*(v7 - 8) + 8))(v9);
  }

  return a1;
}

char *sub_1B08F524C(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = *(a1 + 5);
  v5 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
  v4 = v5[10];
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = a2;
  *&a2[v5[11]] = *&a1[v5[11]];
  *&a2[v5[12]] = *&a1[v5[12]];
  return result;
}

char *sub_1B08F533C(char *a1)
{
  v1 = *(a1 + 1);

  v2 = *(a1 + 3);

  v3 = *(a1 + 5);

  v4 = *(a1 + 7);

  v5 = *(a1 + 9);

  v6 = *(a1 + 11);

  v9 = *(type metadata accessor for WatchOSRender.Message.InfoFromLibrary() + 40);
  v7 = sub_1B0E43108();
  (*(*(v7 - 8) + 8))(&a1[v9]);
  return a1;
}

char *sub_1B08F53FC(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 1) = v4;
  *(a2 + 2) = *(a1 + 2);
  v5 = *(a1 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 3) = v5;
  *(a2 + 4) = *(a1 + 4);
  v6 = *(a1 + 5);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 5) = v6;
  *(a2 + 6) = *(a1 + 6);
  v7 = *(a1 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 7) = v7;
  *(a2 + 8) = *(a1 + 8);
  v8 = *(a1 + 9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 9) = v8;
  *(a2 + 10) = *(a1 + 10);
  v9 = *(a1 + 11);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 11) = v9;
  v11 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
  v10 = v11[10];
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(&a2[v10], &a1[v10]);
  result = a2;
  *&a2[v11[11]] = *&a1[v11[11]];
  *&a2[v11[12]] = *&a1[v11[12]];
  return result;
}

uint64_t sub_1B08F5590(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = _s6LoggerVMa_2();
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

void *sub_1B08F5618(void *a1)
{
  v19 = type metadata accessor for WatchOSRender.Message();
  if (!(*(*(v19 - 1) + 48))(a1, 1))
  {
    v1 = a1[1];

    v2 = a1[3];

    v3 = a1[5];

    v4 = a1[7];

    v5 = a1[9];

    v6 = a1[11];

    v15 = a1 + v19[10];
    v16 = sub_1B0E43108();
    v17 = *(*(v16 - 8) + 8);
    v17(v15);
    (v17)(a1 + v19[11], v16);
    v7 = *(a1 + v19[12] + 8);

    v8 = *(a1 + v19[13]);

    v9 = *(a1 + v19[14]);

    v10 = *(a1 + v19[15]);

    v11 = *(a1 + v19[16] + 8);

    v12 = *(a1 + v19[17] + 8);

    v13 = *(a1 + v19[18] + 8);
  }

  return a1;
}

__n128 sub_1B08F57EC(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = *(a1 + 5);
  v6 = type metadata accessor for WatchOSRender.Message();
  v3 = v6[10];
  v4 = sub_1B0E43108();
  v5 = *(*(v4 - 8) + 32);
  v5(&a2[v3], &a1[v3]);
  (v5)(&a2[v6[11]], &a1[v6[11]], v4);
  *&a2[v6[12]] = *&a1[v6[12]];
  *&a2[v6[13]] = *&a1[v6[13]];
  *&a2[v6[14]] = *&a1[v6[14]];
  *&a2[v6[15]] = *&a1[v6[15]];
  *&a2[v6[16]] = *&a1[v6[16]];
  *&a2[v6[17]] = *&a1[v6[17]];
  result = *&a1[v6[18]];
  *&a2[v6[18]] = result;
  *&a2[v6[19]] = *&a1[v6[19]];
  return result;
}

char *sub_1B08F597C(char *a1)
{
  v1 = *(a1 + 1);

  v2 = *(a1 + 3);

  v3 = *(a1 + 5);

  v4 = *(a1 + 7);

  v5 = *(a1 + 9);

  v6 = *(a1 + 11);

  v18 = type metadata accessor for WatchOSRender.Message();
  v15 = v18[10];
  v16 = sub_1B0E43108();
  v17 = *(*(v16 - 8) + 8);
  v17(&a1[v15]);
  (v17)(&a1[v18[11]], v16);
  v7 = *&a1[v18[12] + 8];

  v8 = *&a1[v18[13]];

  v9 = *&a1[v18[14]];

  v10 = *&a1[v18[15]];

  v11 = *&a1[v18[16] + 8];

  v12 = *&a1[v18[17] + 8];

  v13 = *&a1[v18[18] + 8];

  return a1;
}

uint64_t *sub_1B08F5B10(uint64_t *a1)
{
  v7 = _s6ParserVMa();
  if (!(*(*(v7 - 8) + 48))(a1, 1))
  {
    v1 = *a1;

    v5 = a1 + *(v7 + 28);
    v2 = sub_1B0E431A8();
    (*(*(v2 - 8) + 8))(v5);
    v3 = *(a1 + *(v7 + 32));
  }

  return a1;
}

char *sub_1B08F5BEC(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v5 = _s6ParserVMa();
  v4 = *(v5 + 28);
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = a2;
  *&a2[*(v5 + 32)] = *&a1[*(v5 + 32)];
  return result;
}

void *sub_1B08F5CB4(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  v1 = a1[3];

  sub_1B0391D50(a1[4], a1[5]);
  v11 = _s6ParserV4TextVMa();
  v10 = a1 + *(v11 + 24);
  v2 = *(v10 + 1);

  v9 = type metadata accessor for MessageSummary.Accumulator();
  v8 = v9[6];
  v3 = sub_1B0E431A8();
  (*(*(v3 - 8) + 8))(&v10[v8]);
  v4 = *&v10[v9[7] + 8];

  v5 = *&v10[v9[8]];

  v6 = *(a1 + *(v11 + 36));

  return a1;
}

char *sub_1B08F5DC8(char *a1)
{
  v1 = *a1;

  v6 = _s6ParserVMa();
  v5 = *(v6 + 28);
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 8))(&a1[v5]);
  v3 = *&a1[*(v6 + 32)];

  return a1;
}

unint64_t sub_1B08F5E90()
{
  v2 = qword_1EB6DAA78;
  if (!qword_1EB6DAA78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAA78);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B08F5EF4()
{
  v2 = qword_1EB6E2E60;
  if (!qword_1EB6E2E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2E58, &qword_1B0EA03E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2E60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F5FA4()
{
  v2 = qword_1EB6E2E70;
  if (!qword_1EB6E2E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2E68, &qword_1B0EA03E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2E70);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFNanoServerFullMessageLoader2()
{
  v2 = qword_1EB6E2E80;
  if (!qword_1EB6E2E80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2E80);
    return ObjCClassMetadata;
  }

  return v2;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

uint64_t sub_1B08F60A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1B08F61BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B08F6410()
{
  v2 = qword_1EB6E2E88;
  if (!qword_1EB6E2E88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2E88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F64A4()
{
  v2 = qword_1EB6DA660;
  if (!qword_1EB6DA660)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA660);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B08F6520(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  return a1;
}

unint64_t sub_1B08F6564()
{
  v2 = qword_1EB6E2E98;
  if (!qword_1EB6E2E98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2E98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B08F65C8()
{
  v2 = qword_1EB6E2EB0;
  if (!qword_1EB6E2EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2EA8, &qword_1B0EA05E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2EB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F6650()
{
  v2 = qword_1EB6E2ED8;
  if (!qword_1EB6E2ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2DA8, &qword_1B0EA0380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2ED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F66D8()
{
  v2 = qword_1EB6E2EE8;
  if (!qword_1EB6E2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2EE0, &qword_1B0EA0600);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2EE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t MFNanoServerMessageContentLoader2.messageId.getter()
{
  v2 = *(v0 + OBJC_IVAR___MFNanoServerMessageContentLoader2_messageId);
  v3 = *(v0 + OBJC_IVAR___MFNanoServerMessageContentLoader2_messageId + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t MFNanoServerMessageContentLoader2.highPriority.getter()
{
  v2 = (v0 + OBJC_IVAR___MFNanoServerMessageContentLoader2_highPriority);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t MFNanoServerMessageContentLoader2.highPriority.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___MFNanoServerMessageContentLoader2_highPriority);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B08F6A3C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  [v3 highPriority];
  *a2 = sub_1B0E43378() & 1;
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1B08F6AB0(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  [v3 setHighPriority_];
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1B08F6B2C()
{
  v2 = (v0 + OBJC_IVAR___MFNanoServerMessageContentLoader2_implementation);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B08F6B94(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___MFNanoServerMessageContentLoader2_implementation);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

id sub_1B08F6C14(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_1B0E44AC8();
  v12 = [v8 initWithMessageId:a1 highPriority:? mailMessageLibrary:? maximumImageWidth:? workQueue:? delegate:?];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a6);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v11);

  return v12;
}

_BYTE *sub_1B08F6CE8(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  v31 = 0;
  v29 = a1;
  v30 = a2;
  v28 = a3 & 1;
  v27 = a4;
  v26 = a7;
  v25 = a5;
  v24 = a6;
  *OBJC_IVAR___MFNanoServerMessageContentLoader2_implementation = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = &v31[OBJC_IVAR___MFNanoServerMessageContentLoader2_messageId];
  *v7 = a1;
  v7[1] = a2;
  v31[OBJC_IVAR___MFNanoServerMessageContentLoader2_highPriority] = a3;
  v23.receiver = v31;
  v23.super_class = MFNanoServerMessageContentLoader2;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  MEMORY[0x1E69E5928](v20);
  v31 = v20;
  _s14ImplementationCMa_1();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  swift_unknownObjectRetain();
  v22 = sub_1B08F7020(a1, a2, a3 & 1, a4, a5, v20, a6, a7);
  if (v22)
  {
    v10 = v31;

    v11 = &v10[OBJC_IVAR___MFNanoServerMessageContentLoader2_implementation];
    swift_beginAccess();
    v8 = *v11;
    *v11 = v22;

    swift_endAccess();

    v12 = v31;
    MEMORY[0x1E69E5928](v31);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](a5);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v31);
    return v12;
  }

  else
  {
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](a5);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v31);
    return 0;
  }
}

uint64_t _s14ImplementationCMa_1()
{
  v1 = qword_1EB6E2F48;
  if (!qword_1EB6E2F48)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1B08F7020(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_1B08F8338(a1, a2, a3 & 1, a4, a5, a6, a7, a8);
}

Swift::Void __swiftcall MFNanoServerMessageContentLoader2.start()()
{
  v1 = (v0 + OBJC_IVAR___MFNanoServerMessageContentLoader2_implementation);
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  if (!v2)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B08F728C();
}

uint64_t sub_1B08F728C()
{
  v65 = sub_1B08FA1F8;
  v67 = sub_1B08FA1E8;
  v68 = sub_1B06BCD8C;
  v71 = sub_1B07AB020;
  v75 = sub_1B039BC08;
  v77 = sub_1B0398F5C;
  v79 = sub_1B0398F5C;
  v81 = sub_1B03992D4;
  v83 = sub_1B0398F5C;
  v85 = sub_1B0398F5C;
  v88 = sub_1B03991EC;
  v45 = sub_1B0901DA0;
  v106 = 0;
  v46 = 0;
  v57 = 0;
  v47 = sub_1B0E44238();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v51 = &v29 - v50;
  v52 = sub_1B0E44288();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v29 - v55;
  v63 = sub_1B0E439A8();
  v61 = *(v63 - 8);
  v62 = v63 - 8;
  v58 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v0 = &v29 - v58;
  v59 = &v29 - v58;
  v1 = _s6LoggerVMa_2();
  v60 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v64 = &v29 - v60;
  v106 = v2;
  sub_1B08F5590(v2 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, &v29 - v60);
  (*(v61 + 16))(v0, v64, v63);
  sub_1B039480C(v64);

  v72 = 32;
  v73 = 7;
  v3 = swift_allocObject();
  v4 = v66;
  v74 = v3;
  *(v3 + 16) = v65;
  *(v3 + 24) = v4;

  v5 = sub_1B0E43988();
  v6 = v66;
  v92 = v5;
  v93 = sub_1B0E45908();
  v70 = 17;
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = 8;
  v7 = swift_allocObject();
  v69 = v7;
  *(v7 + 16) = v67;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  v9 = v69;
  v82 = v8;
  *(v8 + 16) = v68;
  *(v8 + 24) = v9;
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = 4;
  v10 = swift_allocObject();
  v11 = v74;
  v76 = v10;
  *(v10 + 16) = v71;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v76;
  v89 = v12;
  *(v12 + 16) = v75;
  *(v12 + 24) = v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v87 = sub_1B0E46A48();
  v90 = v14;

  v15 = v78;
  v16 = v90;
  *v90 = v77;
  v16[1] = v15;

  v17 = v80;
  v18 = v90;
  v90[2] = v79;
  v18[3] = v17;

  v19 = v82;
  v20 = v90;
  v90[4] = v81;
  v20[5] = v19;

  v21 = v84;
  v22 = v90;
  v90[6] = v83;
  v22[7] = v21;

  v23 = v86;
  v24 = v90;
  v90[8] = v85;
  v24[9] = v23;

  v25 = v89;
  v26 = v90;
  v90[10] = v88;
  v26[11] = v25;
  sub_1B0394964();

  if (os_log_type_enabled(v92, v93))
  {
    v27 = v46;
    v38 = sub_1B0E45D78();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v37 = 0;
    v39 = sub_1B03949A8(0);
    v40 = sub_1B03949A8(v37);
    v41 = &v98;
    v98 = v38;
    v42 = &v97;
    v97 = v39;
    v43 = &v96;
    v96 = v40;
    sub_1B0394A48(0, &v98);
    sub_1B0394A48(2, v41);
    v94 = v77;
    v95 = v78;
    sub_1B03949FC(&v94, v41, v42, v43);
    v44 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v94 = v79;
      v95 = v80;
      sub_1B03949FC(&v94, &v98, &v97, &v96);
      v35 = 0;
      v94 = v81;
      v95 = v82;
      sub_1B03949FC(&v94, &v98, &v97, &v96);
      v34 = 0;
      v94 = v83;
      v95 = v84;
      sub_1B03949FC(&v94, &v98, &v97, &v96);
      v33 = 0;
      v94 = v85;
      v95 = v86;
      sub_1B03949FC(&v94, &v98, &v97, &v96);
      v32 = 0;
      v94 = v88;
      v95 = v89;
      sub_1B03949FC(&v94, &v98, &v97, &v96);
      _os_log_impl(&dword_1B0389000, v92, v93, "[%lld] (%u) Starting instance.", v38, 0x12u);
      v31 = 0;
      sub_1B03998A8(v39);
      sub_1B03998A8(v40);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v92);
  (*(v61 + 8))(v59, v63);
  v30 = *(v66 + 72);
  MEMORY[0x1E69E5928](v30);

  v104 = v45;
  v105 = v66;
  aBlock = MEMORY[0x1E69E9820];
  v100 = 1107296256;
  v101 = 0;
  v102 = sub_1B038C908;
  v103 = &block_descriptor_12;
  v29 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v56, v51, v29);
  (*(v48 + 8))(v51, v47);
  (*(v53 + 8))(v56, v52);
  _Block_release(v29);

  return MEMORY[0x1E69E5920](v30);
}

uint64_t sub_1B08F8080()
{
  v2 = *(v0 + 32);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B08F80B4()
{
  v2 = *(v0 + 40);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B08F8100()
{
  v2 = *(v0 + 72);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B08F8134()
{
  v2 = *(v0 + 80);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B08F8168()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B08F81C0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B08F8268()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B08F82C8()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void *sub_1B08F8338(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v242 = a1;
  v243 = a2;
  v225 = a3;
  v244 = a4;
  v226 = a8;
  v227 = a5;
  v228 = a6;
  v229 = a7;
  v241 = 0;
  v194 = sub_1B03F7AE0;
  v195 = sub_1B0901E30;
  v196 = sub_1B06BCD8C;
  v197 = sub_1B07AB020;
  v198 = sub_1B039BC08;
  v199 = sub_1B0398F5C;
  v200 = sub_1B0398F5C;
  v201 = sub_1B03992D4;
  v202 = sub_1B0398F5C;
  v203 = sub_1B0398F5C;
  v204 = sub_1B03991EC;
  v205 = sub_1B0901E30;
  v206 = sub_1B06BCD8C;
  v207 = sub_1B0398F5C;
  v208 = sub_1B0398F5C;
  v209 = sub_1B03992D4;
  v210 = sub_1B070B550;
  v211 = sub_1B039BCF8;
  v212 = sub_1B0398F5C;
  v213 = sub_1B0398F5C;
  v214 = sub_1B039BCEC;
  v215 = *v240;
  v278 = 0;
  v276 = 0;
  v277 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0.0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v216 = 0;
  v263 = 0;
  v254 = 0;
  v248 = 0;
  v217 = 0;
  v218 = *(_s6LoggerVMa_2() - 8);
  v219 = v218;
  v220 = *(v218 + 64);
  v221 = (v220 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v222 = &v92 - v221;
  v223 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v224 = &v92 - v223;
  v278 = &v92 - v223;
  v230 = sub_1B0E439A8();
  v231 = *(v230 - 8);
  v232 = v230 - 8;
  v236 = *(v231 + 64);
  v233 = (v236 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v242);
  v234 = &v92 - v233;
  v235 = (v236 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v237 = &v92 - v235;
  v238 = (v236 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v239 = &v92 - v238;
  v276 = v13;
  v277 = v243;
  v275 = v14 & 1;
  v274 = v15;
  v273 = v12;
  v272 = v16;
  v271 = v17;
  v270 = v18;
  v269 = v19;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v245 = sub_1B08F9AC8(v242, v243, v244);
  if (!v245)
  {
    sub_1B0A6F6F4(v239);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v181 = 32;
    v182 = 7;
    v20 = swift_allocObject();
    v21 = v243;
    v183 = v20;
    *(v20 + 16) = v242;
    *(v20 + 24) = v21;
    v191 = sub_1B0E43988();
    v192 = sub_1B0E458E8();
    v180 = 17;
    v185 = swift_allocObject();
    *(v185 + 16) = 32;
    v186 = swift_allocObject();
    *(v186 + 16) = 8;
    v22 = swift_allocObject();
    v23 = v183;
    v184 = v22;
    *(v22 + 16) = v210;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v184;
    v188 = v24;
    *(v24 + 16) = v211;
    *(v24 + 24) = v25;
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v187 = sub_1B0E46A48();
    v189 = v26;

    v27 = v185;
    v28 = v189;
    *v189 = v212;
    v28[1] = v27;

    v29 = v186;
    v30 = v189;
    v189[2] = v213;
    v30[3] = v29;

    v31 = v188;
    v32 = v189;
    v189[4] = v214;
    v32[5] = v31;
    sub_1B0394964();

    if (os_log_type_enabled(v191, v192))
    {
      v88 = v216;
      v96 = sub_1B0E45D78();
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v97 = sub_1B03949A8(0);
      v98 = sub_1B03949A8(1);
      v99 = &v268;
      v268 = v96;
      v100 = &v267;
      v267 = v97;
      v101 = &v266;
      v266 = v98;
      sub_1B0394A48(2, &v268);
      sub_1B0394A48(1, v99);
      v264 = v212;
      v265 = v185;
      sub_1B03949FC(&v264, v99, v100, v101);
      v102 = v88;
      if (v88)
      {

        __break(1u);
      }

      else
      {
        v264 = v213;
        v265 = v186;
        sub_1B03949FC(&v264, &v268, &v267, &v266);
        v94 = 0;
        v264 = v214;
        v265 = v188;
        sub_1B03949FC(&v264, &v268, &v267, &v266);
        _os_log_impl(&dword_1B0389000, v191, v192, "Failed to load library message for %s.", v96, 0xCu);
        sub_1B03998A8(v97);
        sub_1B03998A8(v98);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v191);
    (*(v231 + 8))(v239, v230);
    v114 = v240;
    goto LABEL_25;
  }

  v193 = v245;
  v176 = v245;
  v263 = v245;
  v33 = [v245 libraryID];
  sub_1B0A6F758(v33, v224);
  v34 = [v176 uid];
  v178 = &v260;
  v260 = v34;
  v177 = sub_1B041C1E8();
  v35 = sub_1B07467B8();
  MessageIdentifier.init<A>(exactly:)(v178, &type metadata for UID, MEMORY[0x1E69E7668], v177, v35, &v261);
  v179 = v261;
  if (v262)
  {
    (*(v231 + 16))(v237, v224, v230);
    sub_1B08F5590(v224, v222);
    v161 = (*(v219 + 80) + 16) & ~*(v219 + 80);
    v164 = 7;
    v165 = swift_allocObject();
    sub_1B0901DA8(v222, v165 + v161);
    v173 = sub_1B0E43988();
    v174 = sub_1B0E45908();
    v162 = 17;
    v167 = swift_allocObject();
    *(v167 + 16) = 0;
    v168 = swift_allocObject();
    *(v168 + 16) = 8;
    v163 = 32;
    v36 = swift_allocObject();
    v37 = v165;
    v166 = v36;
    *(v36 + 16) = v205;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v166;
    v170 = v38;
    *(v38 + 16) = v206;
    *(v38 + 24) = v39;
    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v169 = sub_1B0E46A48();
    v171 = v40;

    v41 = v167;
    v42 = v171;
    *v171 = v207;
    v42[1] = v41;

    v43 = v168;
    v44 = v171;
    v171[2] = v208;
    v44[3] = v43;

    v45 = v170;
    v46 = v171;
    v171[4] = v209;
    v46[5] = v45;
    sub_1B0394964();

    if (os_log_type_enabled(v173, v174))
    {
      v87 = v216;
      v107 = sub_1B0E45D78();
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v106 = 0;
      v108 = sub_1B03949A8(0);
      v109 = sub_1B03949A8(v106);
      v110 = &v259;
      v259 = v107;
      v111 = &v258;
      v258 = v108;
      v112 = &v257;
      v257 = v109;
      sub_1B0394A48(0, &v259);
      sub_1B0394A48(1, v110);
      v255 = v207;
      v256 = v167;
      sub_1B03949FC(&v255, v110, v111, v112);
      v113 = v87;
      if (v87)
      {

        __break(1u);
      }

      else
      {
        v255 = v208;
        v256 = v168;
        sub_1B03949FC(&v255, &v259, &v258, &v257);
        v104 = 0;
        v255 = v209;
        v256 = v170;
        sub_1B03949FC(&v255, &v259, &v258, &v257);
        _os_log_impl(&dword_1B0389000, v173, v174, "[%lld] Message has no UID.", v107, 0xCu);
        v103 = 0;
        sub_1B03998A8(v108);
        sub_1B03998A8(v109);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v173);
    (*(v231 + 8))(v237, v230);
    sub_1B039480C(v224);
    MEMORY[0x1E69E5920](v176);
    v114 = v240;
    goto LABEL_25;
  }

  v175 = v179;
  v159 = v179;
  v254 = v179;
  v47 = sub_1B08F9DAC();
  v160 = v47;
  if (!v47)
  {
    (*(v231 + 16))(v234, v224, v230);
    sub_1B08F5590(v224, v222);
    v129 = (*(v219 + 80) + 16) & ~*(v219 + 80);
    v135 = 7;
    v131 = swift_allocObject();
    sub_1B0901DA8(v222, v131 + v129);
    v130 = swift_allocObject();
    *(v130 + 16) = v159;

    v134 = 32;
    v63 = swift_allocObject();
    v64 = v130;
    v136 = v63;
    *(v63 + 16) = v194;
    *(v63 + 24) = v64;

    v147 = sub_1B0E43988();
    v148 = sub_1B0E45908();
    v133 = 17;
    v138 = swift_allocObject();
    *(v138 + 16) = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = 8;
    v65 = swift_allocObject();
    v66 = v131;
    v132 = v65;
    *(v65 + 16) = v195;
    *(v65 + 24) = v66;
    v67 = swift_allocObject();
    v68 = v132;
    v140 = v67;
    *(v67 + 16) = v196;
    *(v67 + 24) = v68;
    v141 = swift_allocObject();
    *(v141 + 16) = 0;
    v142 = swift_allocObject();
    *(v142 + 16) = 4;
    v69 = swift_allocObject();
    v70 = v136;
    v137 = v69;
    *(v69 + 16) = v197;
    *(v69 + 24) = v70;
    v71 = swift_allocObject();
    v72 = v137;
    v144 = v71;
    *(v71 + 16) = v198;
    *(v71 + 24) = v72;
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v143 = sub_1B0E46A48();
    v145 = v73;

    v74 = v138;
    v75 = v145;
    *v145 = v199;
    v75[1] = v74;

    v76 = v139;
    v77 = v145;
    v145[2] = v200;
    v77[3] = v76;

    v78 = v140;
    v79 = v145;
    v145[4] = v201;
    v79[5] = v78;

    v80 = v141;
    v81 = v145;
    v145[6] = v202;
    v81[7] = v80;

    v82 = v142;
    v83 = v145;
    v145[8] = v203;
    v83[9] = v82;

    v84 = v144;
    v85 = v145;
    v145[10] = v204;
    v85[11] = v84;
    sub_1B0394964();

    if (os_log_type_enabled(v147, v148))
    {
      v86 = v216;
      v122 = sub_1B0E45D78();
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v121 = 0;
      v123 = sub_1B03949A8(0);
      v124 = sub_1B03949A8(v121);
      v125 = &v253;
      v253 = v122;
      v126 = &v252;
      v252 = v123;
      v127 = &v251;
      v251 = v124;
      sub_1B0394A48(0, &v253);
      sub_1B0394A48(2, v125);
      v249 = v199;
      v250 = v138;
      sub_1B03949FC(&v249, v125, v126, v127);
      v128 = v86;
      if (v86)
      {

        __break(1u);
      }

      else
      {
        v249 = v200;
        v250 = v139;
        sub_1B03949FC(&v249, &v253, &v252, &v251);
        v119 = 0;
        v249 = v201;
        v250 = v140;
        sub_1B03949FC(&v249, &v253, &v252, &v251);
        v118 = 0;
        v249 = v202;
        v250 = v141;
        sub_1B03949FC(&v249, &v253, &v252, &v251);
        v117 = 0;
        v249 = v203;
        v250 = v142;
        sub_1B03949FC(&v249, &v253, &v252, &v251);
        v116 = 0;
        v249 = v204;
        v250 = v144;
        sub_1B03949FC(&v249, &v253, &v252, &v251);
        _os_log_impl(&dword_1B0389000, v147, v148, "[%lld] (%u) Message has no task manager.", v122, 0x12u);
        v115 = 0;
        sub_1B03998A8(v123);
        sub_1B03998A8(v124);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v147);
    (*(v231 + 8))(v234, v230);
    sub_1B039480C(v224);
    MEMORY[0x1E69E5920](v176);
    v114 = v240;
LABEL_25:
    v93 = v114;
    MEMORY[0x1B272C2D0](v114 + 11);
    sub_1B06D56EC();
    v89 = *(*v93 + 48);
    v90 = *(*v93 + 52);
    swift_deallocPartialClassInstance();
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v228);
    MEMORY[0x1E69E5920](v227);
    MEMORY[0x1E69E5920](v244);

    return 0;
  }

  v158 = v160;
  v155 = v160;
  v248 = v160;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v48 = v155;
  v49 = v240;
  v50 = v243;
  v240[2] = v242;
  v49[3] = v50;
  MEMORY[0x1E69E5928](v48);
  v51 = v222;
  v52 = v224;
  v240[10] = v155;
  sub_1B08F5590(v52, v51);
  sub_1B0901DA8(v222, v240 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger);
  MEMORY[0x1E69E5928](v244);
  v53 = v176;
  v240[4] = v244;
  MEMORY[0x1E69E5928](v53);
  v54 = v159;
  v55 = v240;
  v56 = v176;
  v240[5] = v176;
  *(v55 + 12) = v54;
  v57 = [v56 libraryID];
  v58 = v226;
  v59 = v240;
  v60 = v57;
  v61 = v227;
  v240[7] = v60;
  v59[8] = v58;
  MEMORY[0x1E69E5928](v61);
  v62 = v228;
  v240[9] = v227;
  MEMORY[0x1E69E5928](v62);
  v149 = v240 + 11;
  v150 = &v247;
  v151 = 33;
  v152 = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](v228);
  swift_endAccess();
  swift_unknownObjectRetain();
  v153 = v240 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_delegate;
  v154 = &v246;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  MEMORY[0x1E69E5920](v155);
  sub_1B039480C(v224);
  MEMORY[0x1E69E5920](v176);
  v156 = v240;
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v228);
  MEMORY[0x1E69E5920](v227);
  MEMORY[0x1E69E5920](v244);

  return v156;
}

uint64_t sub_1B08F9AC8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B08F6564();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = sub_1B08F6760();
  if (!v10)
  {
    return 0;
  }

  v7 = [v10 mf_messageCriterion];
  v8 = [a3 messagesMatchingCriterion_options_];
  if (v8)
  {
    sub_1B07F1AFC();
    v5 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v8);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  sub_1B086F29C();
  sub_1B0E45728();

  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v10);
  if (v11)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B08F9DAC()
{
  v8 = [v0 account];
  if (!v8)
  {
    return 0;
  }

  MEMORY[0x1E69E5928](v8);
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v7 = v1;
  }

  else
  {
    MEMORY[0x1E69E5920](v8);
    v7 = 0;
  }

  if (!v7)
  {
    MEMORY[0x1E69E5920](v8);
    return 0;
  }

  MEMORY[0x1E69E5928](v7);
  if (![v7 taskManager])
  {
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
    return 0;
  }

  MEMORY[0x1E69E5920](v7);
  swift_unknownObjectRetain();
  type metadata accessor for TaskManager();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    swift_unknownObjectRelease();
    v6 = 0;
  }

  if (!v6)
  {
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
    return 0;
  }

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return v6;
}

uint64_t sub_1B08FA034()
{
  sub_1B03B1198((v0 + 2));
  MEMORY[0x1E69E5920](v0[4]);
  MEMORY[0x1E69E5920](v0[5]);
  MEMORY[0x1E69E5920](v0[9]);
  MEMORY[0x1E69E5920](v0[10]);
  MEMORY[0x1B272C2D0](v0 + 11);
  sub_1B039480C(v0 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger);
  sub_1B06D56EC();
  return v2;
}

uint64_t sub_1B08FA0D8()
{
  v0 = *sub_1B08FA034();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B08FA13C(uint64_t a1)
{
  v4 = a1;
  v6 = _s6LoggerVMa_2();
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v3 - v5;
  sub_1B08F5590(v1 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, &v3 - v5);
  v8 = *(v7 + *(v6 + 20));
  sub_1B039480C(v7);
  return v8;
}

uint64_t sub_1B08FA238()
{

  sub_1B08FCB1C(sub_1B0901E94, v0);
}

uint64_t sub_1B08FA2A4(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v10 = 0;
  v9 = 0;
  v5 = (*(*(_s6LoggerVMa_2() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v5 - v5;
  v10 = v3;
  v9 = a2;
  v8 = *(a2 + 40);
  MEMORY[0x1E69E5928](v8);
  sub_1B08F5590(a2 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v7);
  sub_1B08FA394(v8, v6, v7);
  sub_1B039480C(v7);
  return MEMORY[0x1E69E5920](v8);
}

uint64_t sub_1B08FA394(void *a1, uint64_t a2, uint64_t a3)
{
  v349 = a1;
  v348 = a2;
  v347 = a3;
  v262 = sub_1B08FA1F8;
  v263 = sub_1B0901E30;
  v264 = sub_1B06BCD8C;
  v265 = sub_1B07AB020;
  v266 = sub_1B039BC08;
  v267 = sub_1B0398F5C;
  v268 = sub_1B0398F5C;
  v269 = sub_1B03992D4;
  v270 = sub_1B0398F5C;
  v271 = sub_1B0398F5C;
  v272 = sub_1B03991EC;
  v273 = sub_1B08FA1F8;
  v274 = sub_1B0901E30;
  v275 = sub_1B06BCD8C;
  v276 = sub_1B07AB020;
  v277 = sub_1B039BC08;
  v278 = sub_1B0398F5C;
  v279 = sub_1B0398F5C;
  v280 = sub_1B03992D4;
  v281 = sub_1B0398F5C;
  v282 = sub_1B0398F5C;
  v283 = sub_1B03991EC;
  v284 = sub_1B08FA1F8;
  v285 = sub_1B0901E30;
  v286 = sub_1B06BCD8C;
  v287 = sub_1B07AB020;
  v288 = sub_1B039BC08;
  v289 = sub_1B0398F5C;
  v290 = sub_1B0398F5C;
  v291 = sub_1B03992D4;
  v292 = sub_1B0398F5C;
  v293 = sub_1B0398F5C;
  v294 = sub_1B03991EC;
  v295 = sub_1B08FA1F8;
  v296 = sub_1B0901E30;
  v297 = sub_1B06BCD8C;
  v298 = sub_1B07AB020;
  v299 = sub_1B039BC08;
  v300 = sub_1B0398F5C;
  v301 = sub_1B0398F5C;
  v302 = sub_1B03992D4;
  v303 = sub_1B0398F5C;
  v304 = sub_1B0398F5C;
  v305 = sub_1B03991EC;
  v389 = 0;
  v388 = 0;
  v387 = 0;
  v386 = 0;
  v385 = 0;
  v384 = 0;
  v383 = 0;
  v382 = 0;
  v380 = 0;
  v378 = 0;
  v306 = 0;
  v341 = 0;
  v307 = *(_s6LoggerVMa_2() - 8);
  v308 = v307;
  v309 = *(v307 + 64);
  v310 = (v309 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v311 = v120 - v310;
  v312 = sub_1B0E439A8();
  v313 = *(v312 - 8);
  v314 = v312 - 8;
  v315 = (*(v313 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v312);
  v316 = v120 - v315;
  v317 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v120 - v315);
  v318 = v120 - v317;
  v319 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v120 - v317);
  v320 = v120 - v319;
  v321 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v120 - v319);
  v322 = v120 - v321;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2F18, &qword_1B0EA0608);
  v323 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v324 = v120 - v323;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610);
  v326 = *(v325 - 8);
  v327 = v325 - 8;
  v328 = (*(v326 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v325);
  v329 = v120 - v328;
  v389 = v120 - v328;
  v330 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E28, &qword_1B0EA03C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v341);
  v331 = v120 - v330;
  v332 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
  v333 = *(v332 - 8);
  v334 = v332 - 8;
  v335 = (*(v333 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v341);
  v336 = v120 - v335;
  v388 = v120 - v335;
  v8 = sub_1B0E431A8();
  v337 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v338 = v120 - v337;
  v339 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E30, &unk_1B0EA0620) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v341);
  v340 = v120 - v339;
  v342 = _s6ParserVMa();
  v343 = *(v342 - 8);
  v344 = v342 - 8;
  v345 = (*(v343 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v341);
  v346 = v120 - v345;
  v387 = v120 - v345;
  v354 = sub_1B0E44468();
  v352 = *(v354 - 8);
  v353 = v354 - 8;
  v350 = (*(v352 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v349);
  v355 = (v120 - v350);
  v386 = v9;
  v385 = v10;
  v384 = v11;
  v383 = v3;

  v351 = *(v3 + 72);
  MEMORY[0x1E69E5928](v351);
  v12 = v352;
  *v355 = v351;
  v13 = *MEMORY[0x1E69E8020];
  (*(v12 + 104))();
  v356 = sub_1B0E44488();
  (*(v352 + 8))(v355, v354);
  result = v356;
  if ((v356 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  type metadata accessor for Cache();
  Cache.__allocating_init()();
  v257 = v15;
  v382 = v15;
  v258 = v261 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_delegate;
  v259 = &v381;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
  }

  v256 = Strong;
  v252 = Strong;
  v380 = Strong;
  v253 = v261 + 88;
  v254 = &v379;
  swift_beginAccess();
  v255 = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!v255)
  {
    swift_unknownObjectRelease();
  }

  v251 = v255;
  v249 = v255;
  v378 = v255;
  v250 = *(v261 + 64);
  sub_1B0E43198();

  sub_1B0A6FED8(500000, v338, v257, v340, v250);
  v16 = (*(v343 + 48))(v340, 1, v342);
  if (v16 == 1)
  {
    v95 = v316;
    sub_1B08F5B10(v340);
    (*(v313 + 16))(v95, v347, v312);
    sub_1B08F5590(v347, v311);
    v129 = (*(v308 + 80) + 16) & ~*(v308 + 80);
    v134 = 7;
    v130 = swift_allocObject();
    sub_1B0901DA8(v311, v130 + v129);

    v133 = 32;
    v96 = swift_allocObject();
    v97 = v261;
    v135 = v96;
    *(v96 + 16) = v262;
    *(v96 + 24) = v97;

    v146 = sub_1B0E43988();
    v147 = sub_1B0E458E8();
    v132 = 17;
    v137 = swift_allocObject();
    *(v137 + 16) = 0;
    v138 = swift_allocObject();
    *(v138 + 16) = 8;
    v98 = swift_allocObject();
    v99 = v130;
    v131 = v98;
    *(v98 + 16) = v263;
    *(v98 + 24) = v99;
    v100 = swift_allocObject();
    v101 = v131;
    v139 = v100;
    *(v100 + 16) = v264;
    *(v100 + 24) = v101;
    v140 = swift_allocObject();
    *(v140 + 16) = 0;
    v141 = swift_allocObject();
    *(v141 + 16) = 4;
    v102 = swift_allocObject();
    v103 = v135;
    v136 = v102;
    *(v102 + 16) = v265;
    *(v102 + 24) = v103;
    v104 = swift_allocObject();
    v105 = v136;
    v143 = v104;
    *(v104 + 16) = v266;
    *(v104 + 24) = v105;
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v142 = sub_1B0E46A48();
    v144 = v106;

    v107 = v137;
    v108 = v144;
    *v144 = v267;
    v108[1] = v107;

    v109 = v138;
    v110 = v144;
    v144[2] = v268;
    v110[3] = v109;

    v111 = v139;
    v112 = v144;
    v144[4] = v269;
    v112[5] = v111;

    v113 = v140;
    v114 = v144;
    v144[6] = v270;
    v114[7] = v113;

    v115 = v141;
    v116 = v144;
    v144[8] = v271;
    v116[9] = v115;

    v117 = v143;
    v118 = v144;
    v144[10] = v272;
    v118[11] = v117;
    sub_1B0394964();

    if (os_log_type_enabled(v146, v147))
    {
      v119 = v306;
      v122 = sub_1B0E45D78();
      v120[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v121 = 0;
      v123 = sub_1B03949A8(0);
      v124 = sub_1B03949A8(v121);
      v125 = &v377;
      v377 = v122;
      v126 = &v376;
      v376 = v123;
      v127 = &v375;
      v375 = v124;
      sub_1B0394A48(0, &v377);
      sub_1B0394A48(2, v125);
      v373 = v267;
      v374 = v137;
      sub_1B03949FC(&v373, v125, v126, v127);
      v128 = v119;
      if (v119)
      {

        __break(1u);
      }

      else
      {
        v373 = v268;
        v374 = v138;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v120[5] = 0;
        v373 = v269;
        v374 = v139;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v120[4] = 0;
        v373 = v270;
        v374 = v140;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v120[3] = 0;
        v373 = v271;
        v374 = v141;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v120[2] = 0;
        v373 = v272;
        v374 = v143;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        _os_log_impl(&dword_1B0389000, v146, v147, "[%lld] (%u) Unable to create parser.", v122, 0x12u);
        v120[1] = 0;
        sub_1B03998A8(v123);
        sub_1B03998A8(v124);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v146);
    (*(v313 + 8))(v316, v312);
    swift_getObjectType();
    [v252 messageContentLoaderDidFailLoadingContent_];
    MEMORY[0x1E69E5920](v249);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B08F5BEC(v340, v346);
    MEMORY[0x1E69E5928](v349);
    sub_1B0A7B704(v349, v331);
    if ((*(v333 + 48))(v331, 1, v332) == 1)
    {
      v70 = v318;
      sub_1B08F5148(v331);
      (*(v313 + 16))(v70, v347, v312);
      sub_1B08F5590(v347, v311);
      v162 = (*(v308 + 80) + 16) & ~*(v308 + 80);
      v167 = 7;
      v163 = swift_allocObject();
      sub_1B0901DA8(v311, v163 + v162);

      v166 = 32;
      v71 = swift_allocObject();
      v72 = v261;
      v168 = v71;
      *(v71 + 16) = v273;
      *(v71 + 24) = v72;

      v179 = sub_1B0E43988();
      v180 = sub_1B0E458E8();
      v165 = 17;
      v170 = swift_allocObject();
      *(v170 + 16) = 0;
      v171 = swift_allocObject();
      *(v171 + 16) = 8;
      v73 = swift_allocObject();
      v74 = v163;
      v164 = v73;
      *(v73 + 16) = v274;
      *(v73 + 24) = v74;
      v75 = swift_allocObject();
      v76 = v164;
      v172 = v75;
      *(v75 + 16) = v275;
      *(v75 + 24) = v76;
      v173 = swift_allocObject();
      *(v173 + 16) = 0;
      v174 = swift_allocObject();
      *(v174 + 16) = 4;
      v77 = swift_allocObject();
      v78 = v168;
      v169 = v77;
      *(v77 + 16) = v276;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v169;
      v176 = v79;
      *(v79 + 16) = v277;
      *(v79 + 24) = v80;
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v175 = sub_1B0E46A48();
      v177 = v81;

      v82 = v170;
      v83 = v177;
      *v177 = v278;
      v83[1] = v82;

      v84 = v171;
      v85 = v177;
      v177[2] = v279;
      v85[3] = v84;

      v86 = v172;
      v87 = v177;
      v177[4] = v280;
      v87[5] = v86;

      v88 = v173;
      v89 = v177;
      v177[6] = v281;
      v89[7] = v88;

      v90 = v174;
      v91 = v177;
      v177[8] = v282;
      v91[9] = v90;

      v92 = v176;
      v93 = v177;
      v177[10] = v283;
      v93[11] = v92;
      sub_1B0394964();

      if (os_log_type_enabled(v179, v180))
      {
        v94 = v306;
        v155 = sub_1B0E45D78();
        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v154 = 0;
        v156 = sub_1B03949A8(0);
        v157 = sub_1B03949A8(v154);
        v158 = &v372;
        v372 = v155;
        v159 = &v371;
        v371 = v156;
        v160 = &v370;
        v370 = v157;
        sub_1B0394A48(0, &v372);
        sub_1B0394A48(2, v158);
        v368 = v278;
        v369 = v170;
        sub_1B03949FC(&v368, v158, v159, v160);
        v161 = v94;
        if (v94)
        {

          __break(1u);
        }

        else
        {
          v368 = v279;
          v369 = v171;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v152 = 0;
          v368 = v280;
          v369 = v172;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v151 = 0;
          v368 = v281;
          v369 = v173;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v150 = 0;
          v368 = v282;
          v369 = v174;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          v149 = 0;
          v368 = v283;
          v369 = v176;
          sub_1B03949FC(&v368, &v372, &v371, &v370);
          _os_log_impl(&dword_1B0389000, v179, v180, "[%lld] (%u) Unable to get library info for message.", v155, 0x12u);
          v148 = 0;
          sub_1B03998A8(v156);
          sub_1B03998A8(v157);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v179);
      (*(v313 + 8))(v318, v312);
      sub_1B08F5DC8(v346);
      MEMORY[0x1E69E5920](v249);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B08F524C(v331, v336);
      v17 = [v349 libraryID];
      sub_1B0A704E4(v17, v348, v336, v347, v324);
      if ((*(v326 + 48))(v324, 1, v325) == 1)
      {
        v45 = v320;
        sub_1B0901E9C(v324);
        (*(v313 + 16))(v45, v347, v312);
        sub_1B08F5590(v347, v311);
        v195 = (*(v308 + 80) + 16) & ~*(v308 + 80);
        v200 = 7;
        v196 = swift_allocObject();
        sub_1B0901DA8(v311, v196 + v195);

        v199 = 32;
        v46 = swift_allocObject();
        v47 = v261;
        v201 = v46;
        *(v46 + 16) = v284;
        *(v46 + 24) = v47;

        v212 = sub_1B0E43988();
        v213 = sub_1B0E458E8();
        v198 = 17;
        v203 = swift_allocObject();
        *(v203 + 16) = 0;
        v204 = swift_allocObject();
        *(v204 + 16) = 8;
        v48 = swift_allocObject();
        v49 = v196;
        v197 = v48;
        *(v48 + 16) = v285;
        *(v48 + 24) = v49;
        v50 = swift_allocObject();
        v51 = v197;
        v205 = v50;
        *(v50 + 16) = v286;
        *(v50 + 24) = v51;
        v206 = swift_allocObject();
        *(v206 + 16) = 0;
        v207 = swift_allocObject();
        *(v207 + 16) = 4;
        v52 = swift_allocObject();
        v53 = v201;
        v202 = v52;
        *(v52 + 16) = v287;
        *(v52 + 24) = v53;
        v54 = swift_allocObject();
        v55 = v202;
        v209 = v54;
        *(v54 + 16) = v288;
        *(v54 + 24) = v55;
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v208 = sub_1B0E46A48();
        v210 = v56;

        v57 = v203;
        v58 = v210;
        *v210 = v289;
        v58[1] = v57;

        v59 = v204;
        v60 = v210;
        v210[2] = v290;
        v60[3] = v59;

        v61 = v205;
        v62 = v210;
        v210[4] = v291;
        v62[5] = v61;

        v63 = v206;
        v64 = v210;
        v210[6] = v292;
        v64[7] = v63;

        v65 = v207;
        v66 = v210;
        v210[8] = v293;
        v66[9] = v65;

        v67 = v209;
        v68 = v210;
        v210[10] = v294;
        v68[11] = v67;
        sub_1B0394964();

        if (os_log_type_enabled(v212, v213))
        {
          v69 = v306;
          v188 = sub_1B0E45D78();
          v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v187 = 0;
          v189 = sub_1B03949A8(0);
          v190 = sub_1B03949A8(v187);
          v191 = &v367;
          v367 = v188;
          v192 = &v366;
          v366 = v189;
          v193 = &v365;
          v365 = v190;
          sub_1B0394A48(0, &v367);
          sub_1B0394A48(2, v191);
          v363 = v289;
          v364 = v203;
          sub_1B03949FC(&v363, v191, v192, v193);
          v194 = v69;
          if (v69)
          {

            __break(1u);
          }

          else
          {
            v363 = v290;
            v364 = v204;
            sub_1B03949FC(&v363, &v367, &v366, &v365);
            v185 = 0;
            v363 = v291;
            v364 = v205;
            sub_1B03949FC(&v363, &v367, &v366, &v365);
            v184 = 0;
            v363 = v292;
            v364 = v206;
            sub_1B03949FC(&v363, &v367, &v366, &v365);
            v183 = 0;
            v363 = v293;
            v364 = v207;
            sub_1B03949FC(&v363, &v367, &v366, &v365);
            v182 = 0;
            v363 = v294;
            v364 = v209;
            sub_1B03949FC(&v363, &v367, &v366, &v365);
            _os_log_impl(&dword_1B0389000, v212, v213, "[%lld] (%u) Parsing message failed.", v188, 0x12u);
            v181 = 0;
            sub_1B03998A8(v189);
            sub_1B03998A8(v190);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v212);
        (*(v313 + 8))(v320, v312);
        swift_getObjectType();
        [v252 messageContentLoaderDidFailLoadingContent_];
        sub_1B08F533C(v336);
        sub_1B08F5DC8(v346);
        MEMORY[0x1E69E5920](v249);
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = v322;
        sub_1B0902120(v324, v329);
        (*(v313 + 16))(v18, v347, v312);
        sub_1B08F5590(v347, v311);
        v230 = (*(v308 + 80) + 16) & ~*(v308 + 80);
        v235 = 7;
        v231 = swift_allocObject();
        sub_1B0901DA8(v311, v231 + v230);

        v234 = 32;
        v19 = swift_allocObject();
        v20 = v261;
        v236 = v19;
        *(v19 + 16) = v295;
        *(v19 + 24) = v20;

        v247 = sub_1B0E43988();
        v248 = sub_1B0E45908();
        v233 = 17;
        v238 = swift_allocObject();
        *(v238 + 16) = 0;
        v239 = swift_allocObject();
        *(v239 + 16) = 8;
        v21 = swift_allocObject();
        v22 = v231;
        v232 = v21;
        *(v21 + 16) = v296;
        *(v21 + 24) = v22;
        v23 = swift_allocObject();
        v24 = v232;
        v240 = v23;
        *(v23 + 16) = v297;
        *(v23 + 24) = v24;
        v241 = swift_allocObject();
        *(v241 + 16) = 0;
        v242 = swift_allocObject();
        *(v242 + 16) = 4;
        v25 = swift_allocObject();
        v26 = v236;
        v237 = v25;
        *(v25 + 16) = v298;
        *(v25 + 24) = v26;
        v27 = swift_allocObject();
        v28 = v237;
        v244 = v27;
        *(v27 + 16) = v299;
        *(v27 + 24) = v28;
        v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v243 = sub_1B0E46A48();
        v245 = v29;

        v30 = v238;
        v31 = v245;
        *v245 = v300;
        v31[1] = v30;

        v32 = v239;
        v33 = v245;
        v245[2] = v301;
        v33[3] = v32;

        v34 = v240;
        v35 = v245;
        v245[4] = v302;
        v35[5] = v34;

        v36 = v241;
        v37 = v245;
        v245[6] = v303;
        v37[7] = v36;

        v38 = v242;
        v39 = v245;
        v245[8] = v304;
        v39[9] = v38;

        v40 = v244;
        v41 = v245;
        v245[10] = v305;
        v41[11] = v40;
        sub_1B0394964();

        if (os_log_type_enabled(v247, v248))
        {
          v42 = v306;
          v223 = sub_1B0E45D78();
          v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v222 = 0;
          v224 = sub_1B03949A8(0);
          v225 = sub_1B03949A8(v222);
          v226 = &v361;
          v361 = v223;
          v227 = &v360;
          v360 = v224;
          v228 = &v359;
          v359 = v225;
          sub_1B0394A48(0, &v361);
          sub_1B0394A48(2, v226);
          v357 = v300;
          v358 = v238;
          sub_1B03949FC(&v357, v226, v227, v228);
          v229 = v42;
          if (v42)
          {

            __break(1u);
          }

          else
          {
            v357 = v301;
            v358 = v239;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v220 = 0;
            v357 = v302;
            v358 = v240;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v219 = 0;
            v357 = v303;
            v358 = v241;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v218 = 0;
            v357 = v304;
            v358 = v242;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v217 = 0;
            v357 = v305;
            v358 = v244;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            _os_log_impl(&dword_1B0389000, v247, v248, "[%lld] (%u) Did parse message.", v223, 0x12u);
            v216 = 0;
            sub_1B03998A8(v224);
            sub_1B03998A8(v225);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v247);
        (*(v313 + 8))(v322, v312);
        v43 = &v329[*(v325 + 48)];
        v214 = 80;
        memcpy(v362, v43, sizeof(v362));
        v44 = &v329[*(v325 + 48)];
        v215 = __dst;
        memcpy(__dst, v44, sizeof(__dst));
        sub_1B08FF308(v329, __dst);
        sub_1B09022F0(v329);
        sub_1B08F533C(v336);
        sub_1B08F5DC8(v346);
        MEMORY[0x1E69E5920](v249);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1B08FCB1C(uint64_t a1, uint64_t a2)
{
  v121 = a1;
  v120 = a2;
  v92 = sub_1B08FA1F8;
  v93 = sub_1B08FA1E8;
  v94 = sub_1B06BCD8C;
  v95 = sub_1B07AB020;
  v96 = sub_1B039BC08;
  v97 = sub_1B0398F5C;
  v98 = sub_1B0398F5C;
  v99 = sub_1B03992D4;
  v100 = sub_1B0398F5C;
  v101 = sub_1B0398F5C;
  v102 = sub_1B03991EC;
  v103 = sub_1B0902558;
  v139 = 0;
  v137 = 0;
  v138 = 0;
  v136 = 0;
  v104 = 0;
  v110 = 0;
  v105 = sub_1B0E439A8();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v109 = v50 - v108;
  v111 = *(_s6LoggerVMa_2() - 8);
  v112 = v111;
  v113 = *(v111 + 64);
  v114 = (v113 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v110);
  v115 = v50 - v114;
  v116 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v117 = v50 - v116;
  v139 = v50 - v116;
  v118 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v119 = v50 - v118;
  v126 = sub_1B0E44468();
  v124 = *(v126 - 8);
  v125 = v126 - 8;
  v122 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v121);
  v127 = (v50 - v122);
  v137 = v7;
  v138 = v8;
  v136 = v2;

  v123 = *(v2 + 72);
  MEMORY[0x1E69E5928](v123);
  v9 = v124;
  *v127 = v123;
  v10 = *MEMORY[0x1E69E8020];
  (*(v9 + 104))();
  v128 = sub_1B0E44488();
  (*(v124 + 8))(v127, v126);
  result = v128;
  if (v128)
  {
    v12 = v109;

    sub_1B08F5590(v91 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v119);
    (*(v106 + 16))(v12, v119, v105);
    sub_1B039480C(v119);

    v76 = 32;
    v77 = 7;
    v13 = swift_allocObject();
    v14 = v91;
    v78 = v13;
    *(v13 + 16) = v92;
    *(v13 + 24) = v14;

    v89 = sub_1B0E43988();
    v90 = sub_1B0E458C8();
    v75 = 17;
    v80 = swift_allocObject();
    *(v80 + 16) = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = 8;
    v15 = swift_allocObject();
    v16 = v91;
    v74 = v15;
    *(v15 + 16) = v93;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v74;
    v82 = v17;
    *(v17 + 16) = v94;
    *(v17 + 24) = v18;
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    v84 = swift_allocObject();
    *(v84 + 16) = 4;
    v19 = swift_allocObject();
    v20 = v78;
    v79 = v19;
    *(v19 + 16) = v95;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v79;
    v86 = v21;
    *(v21 + 16) = v96;
    *(v21 + 24) = v22;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v85 = sub_1B0E46A48();
    v87 = v23;

    v24 = v80;
    v25 = v87;
    *v87 = v97;
    v25[1] = v24;

    v26 = v81;
    v27 = v87;
    v87[2] = v98;
    v27[3] = v26;

    v28 = v82;
    v29 = v87;
    v87[4] = v99;
    v29[5] = v28;

    v30 = v83;
    v31 = v87;
    v87[6] = v100;
    v31[7] = v30;

    v32 = v84;
    v33 = v87;
    v87[8] = v101;
    v33[9] = v32;

    v34 = v86;
    v35 = v87;
    v87[10] = v102;
    v35[11] = v34;
    sub_1B0394964();

    if (os_log_type_enabled(v89, v90))
    {
      v36 = v104;
      v67 = sub_1B0E45D78();
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v66 = 0;
      v68 = sub_1B03949A8(0);
      v69 = sub_1B03949A8(v66);
      v70 = &v133;
      v133 = v67;
      v71 = &v132;
      v132 = v68;
      v72 = &v131;
      v131 = v69;
      sub_1B0394A48(0, &v133);
      sub_1B0394A48(2, v70);
      v129 = v97;
      v130 = v80;
      sub_1B03949FC(&v129, v70, v71, v72);
      v73 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v129 = v98;
        v130 = v81;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        v64 = 0;
        v129 = v99;
        v130 = v82;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        v63 = 0;
        v129 = v100;
        v130 = v83;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        v62 = 0;
        v129 = v101;
        v130 = v84;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        v61 = 0;
        v129 = v102;
        v130 = v86;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        _os_log_impl(&dword_1B0389000, v89, v90, "[%lld] (%u) Requesting download.", v67, 0x12u);
        v60 = 0;
        sub_1B03998A8(v68);
        sub_1B03998A8(v69);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v89);
    (*(v106 + 8))(v109, v105);
    v59 = v91[10];
    MEMORY[0x1E69E5928](v59);
    v58 = v91[5];
    MEMORY[0x1E69E5928](v58);
    v57 = v91[9];
    MEMORY[0x1E69E5928](v57);
    v50[0] = v91 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_delegate;
    v50[1] = &v135;
    v50[2] = 32;
    v50[3] = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    v50[4] = v91 + 11;
    v50[5] = &v134;
    swift_beginAccess();
    v55 = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    sub_1B08F5590(v91 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v117);
    swift_unknownObjectRetain();
    MEMORY[0x1E69E5928](v55);
    sub_1B08F5590(v117, v115);

    v51 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v52 = (v51 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v38 = v51;
    v39 = v55;
    v40 = v37;
    v41 = v115;
    v54 = v40;
    *(v40 + 16) = Strong;
    *(v40 + 24) = v39;
    sub_1B0901DA8(v41, v40 + v38);
    v42 = v53;
    v43 = v121;
    v44 = v120;
    v45 = v103;
    v46 = v54;
    v47 = v57;
    v48 = v58;
    *(v54 + v52) = v91;
    v49 = (v46 + v42);
    *v49 = v43;
    v49[1] = v44;
    sub_1B0A480E4(v48, v47, v45, v46);

    sub_1B039480C(v117);
    MEMORY[0x1E69E5920](v55);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v57);
    MEMORY[0x1E69E5920](v58);
    return MEMORY[0x1E69E5920](v59);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08FDB38(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v162 = a1;
  v173 = a2;
  v163 = a3;
  v164 = a4;
  v165 = a5;
  v166 = a6;
  v167 = a7;
  v129 = sub_1B08FA1F8;
  v130 = sub_1B08FA1E8;
  v131 = sub_1B06BCD8C;
  v132 = sub_1B07AB020;
  v133 = sub_1B039BC08;
  v134 = sub_1B0398F5C;
  v135 = sub_1B0398F5C;
  v136 = sub_1B03992D4;
  v137 = sub_1B0398F5C;
  v138 = sub_1B0398F5C;
  v139 = sub_1B03991EC;
  v140 = sub_1B08FA1F8;
  v141 = sub_1B08FA1E8;
  v142 = sub_1B06BCD8C;
  v143 = sub_1B07AB020;
  v144 = sub_1B039BC08;
  v145 = sub_1B0398F5C;
  v146 = sub_1B0398F5C;
  v147 = sub_1B03992D4;
  v148 = sub_1B0398F5C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B03991EC;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v186 = 0;
  v187 = 0;
  v185 = 0;
  v184 = 0;
  v151 = 0;
  v159 = 0;
  v152 = sub_1B0E439A8();
  v153 = *(v152 - 8);
  v154 = v152 - 8;
  v155 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v152);
  v156 = v68 - v155;
  v157 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68 - v155);
  v158 = v68 - v157;
  v160 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v159);
  v161 = v68 - v160;
  v168 = type metadata accessor for Message(v8);
  v169 = *(v168 - 8);
  v170 = v168 - 8;
  v171 = (*(v169 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v173);
  v172 = v68 - v171;
  v193 = v68 - v171;
  v192 = v9;
  v191 = v10;
  v190 = v11;
  v189 = v12;
  v188 = v13;
  v186 = v14;
  v187 = v15;
  result = swift_unknownObjectRetain();
  if (v173)
  {
    v128 = v173;
    v127 = v173;
    v185 = v173;
    MEMORY[0x1E69E5928](v163);
    if (v163)
    {
      v126 = v163;
      v125 = v163;
      v184 = v163;
      sub_1B08F5010(v162, v161);
      v17 = (*(v169 + 48))(v161, 1, v168);
      if (v17 == 1)
      {
        v43 = v156;
        sub_1B07AF920(v161);
        (*(v153 + 16))(v43, v164, v152);

        v79 = 32;
        v80 = 7;
        v44 = swift_allocObject();
        v45 = v165;
        v81 = v44;
        *(v44 + 16) = v129;
        *(v44 + 24) = v45;

        v92 = sub_1B0E43988();
        v93 = sub_1B0E458E8();
        v78 = 17;
        v83 = swift_allocObject();
        *(v83 + 16) = 0;
        v84 = swift_allocObject();
        *(v84 + 16) = 8;
        v46 = swift_allocObject();
        v47 = v165;
        v77 = v46;
        *(v46 + 16) = v130;
        *(v46 + 24) = v47;
        v48 = swift_allocObject();
        v49 = v77;
        v85 = v48;
        *(v48 + 16) = v131;
        *(v48 + 24) = v49;
        v86 = swift_allocObject();
        *(v86 + 16) = 0;
        v87 = swift_allocObject();
        *(v87 + 16) = 4;
        v50 = swift_allocObject();
        v51 = v81;
        v82 = v50;
        *(v50 + 16) = v132;
        *(v50 + 24) = v51;
        v52 = swift_allocObject();
        v53 = v82;
        v89 = v52;
        *(v52 + 16) = v133;
        *(v52 + 24) = v53;
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v88 = sub_1B0E46A48();
        v90 = v54;

        v55 = v83;
        v56 = v90;
        *v90 = v134;
        v56[1] = v55;

        v57 = v84;
        v58 = v90;
        v90[2] = v135;
        v58[3] = v57;

        v59 = v85;
        v60 = v90;
        v90[4] = v136;
        v60[5] = v59;

        v61 = v86;
        v62 = v90;
        v90[6] = v137;
        v62[7] = v61;

        v63 = v87;
        v64 = v90;
        v90[8] = v138;
        v64[9] = v63;

        v65 = v89;
        v66 = v90;
        v90[10] = v139;
        v66[11] = v65;
        sub_1B0394964();

        if (os_log_type_enabled(v92, v93))
        {
          v67 = v151;
          v70 = sub_1B0E45D78();
          v68[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v69 = 0;
          v71 = sub_1B03949A8(0);
          v72 = sub_1B03949A8(v69);
          v73 = &v183;
          v183 = v70;
          v74 = &v182;
          v182 = v71;
          v75 = &v181;
          v181 = v72;
          sub_1B0394A48(0, &v183);
          sub_1B0394A48(2, v73);
          v179 = v134;
          v180 = v83;
          sub_1B03949FC(&v179, v73, v74, v75);
          v76 = v67;
          if (v67)
          {

            __break(1u);
          }

          else
          {
            v179 = v135;
            v180 = v84;
            sub_1B03949FC(&v179, &v183, &v182, &v181);
            v68[4] = 0;
            v179 = v136;
            v180 = v85;
            sub_1B03949FC(&v179, &v183, &v182, &v181);
            v68[3] = 0;
            v179 = v137;
            v180 = v86;
            sub_1B03949FC(&v179, &v183, &v182, &v181);
            v68[2] = 0;
            v179 = v138;
            v180 = v87;
            sub_1B03949FC(&v179, &v183, &v182, &v181);
            v68[1] = 0;
            v179 = v139;
            v180 = v89;
            sub_1B03949FC(&v179, &v183, &v182, &v181);
            _os_log_impl(&dword_1B0389000, v92, v93, "[%lld] (%u) Download failed.", v70, 0x12u);
            v68[0] = 0;
            sub_1B03998A8(v71);
            sub_1B03998A8(v72);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v92);
        (*(v153 + 8))(v156, v152);
        swift_getObjectType();
        [v127 messageContentLoaderDidFailLoadingContent_];
        MEMORY[0x1E69E5920](v125);
        return swift_unknownObjectRelease();
      }

      else
      {
        v18 = v158;
        (*(v169 + 32))(v172, v161, v168);
        (*(v153 + 16))(v18, v164, v152);

        v110 = 32;
        v111 = 7;
        v19 = swift_allocObject();
        v20 = v165;
        v112 = v19;
        *(v19 + 16) = v140;
        *(v19 + 24) = v20;

        v123 = sub_1B0E43988();
        v124 = sub_1B0E45908();
        v109 = 17;
        v114 = swift_allocObject();
        *(v114 + 16) = 0;
        v115 = swift_allocObject();
        *(v115 + 16) = 8;
        v21 = swift_allocObject();
        v22 = v165;
        v108 = v21;
        *(v21 + 16) = v141;
        *(v21 + 24) = v22;
        v23 = swift_allocObject();
        v24 = v108;
        v116 = v23;
        *(v23 + 16) = v142;
        *(v23 + 24) = v24;
        v117 = swift_allocObject();
        *(v117 + 16) = 0;
        v118 = swift_allocObject();
        *(v118 + 16) = 4;
        v25 = swift_allocObject();
        v26 = v112;
        v113 = v25;
        *(v25 + 16) = v143;
        *(v25 + 24) = v26;
        v27 = swift_allocObject();
        v28 = v113;
        v120 = v27;
        *(v27 + 16) = v144;
        *(v27 + 24) = v28;
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v119 = sub_1B0E46A48();
        v121 = v29;

        v30 = v114;
        v31 = v121;
        *v121 = v145;
        v31[1] = v30;

        v32 = v115;
        v33 = v121;
        v121[2] = v146;
        v33[3] = v32;

        v34 = v116;
        v35 = v121;
        v121[4] = v147;
        v35[5] = v34;

        v36 = v117;
        v37 = v121;
        v121[6] = v148;
        v37[7] = v36;

        v38 = v118;
        v39 = v121;
        v121[8] = v149;
        v39[9] = v38;

        v40 = v120;
        v41 = v121;
        v121[10] = v150;
        v41[11] = v40;
        sub_1B0394964();

        if (os_log_type_enabled(v123, v124))
        {
          v42 = v151;
          v101 = sub_1B0E45D78();
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v100 = 0;
          v102 = sub_1B03949A8(0);
          v103 = sub_1B03949A8(v100);
          v104 = &v178;
          v178 = v101;
          v105 = &v177;
          v177 = v102;
          v106 = &v176;
          v176 = v103;
          sub_1B0394A48(0, &v178);
          sub_1B0394A48(2, v104);
          v174 = v145;
          v175 = v114;
          sub_1B03949FC(&v174, v104, v105, v106);
          v107 = v42;
          if (v42)
          {

            __break(1u);
          }

          else
          {
            v174 = v146;
            v175 = v115;
            sub_1B03949FC(&v174, &v178, &v177, &v176);
            v98 = 0;
            v174 = v147;
            v175 = v116;
            sub_1B03949FC(&v174, &v178, &v177, &v176);
            v97 = 0;
            v174 = v148;
            v175 = v117;
            sub_1B03949FC(&v174, &v178, &v177, &v176);
            v96 = 0;
            v174 = v149;
            v175 = v118;
            sub_1B03949FC(&v174, &v178, &v177, &v176);
            v95 = 0;
            v174 = v150;
            v175 = v120;
            sub_1B03949FC(&v174, &v178, &v177, &v176);
            _os_log_impl(&dword_1B0389000, v123, v124, "[%lld] (%u) Did download.", v101, 0x12u);
            v94 = 0;
            sub_1B03998A8(v102);
            sub_1B03998A8(v103);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v123);
        (*(v153 + 8))(v158, v152);

        v166(v172);

        (*(v169 + 8))(v172, v168);
        MEMORY[0x1E69E5920](v125);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1B08FF308(char *a1, uint64_t a2)
{
  v348 = a1;
  v347 = a2;
  v277 = sub_1B08FA1F8;
  v278 = sub_1B08FA1E8;
  v279 = sub_1B06BCD8C;
  v280 = sub_1B07AB020;
  v281 = sub_1B039BC08;
  v282 = sub_1B090297C;
  v283 = sub_1B039BCF8;
  v284 = sub_1B09029E0;
  v285 = sub_1B039BCF8;
  v286 = sub_1B0902A44;
  v287 = sub_1B039BCF8;
  v288 = sub_1B0398F5C;
  v289 = sub_1B0398F5C;
  v290 = sub_1B03992D4;
  v291 = sub_1B0398F5C;
  v292 = sub_1B0398F5C;
  v293 = sub_1B03991EC;
  v294 = sub_1B0398F5C;
  v295 = sub_1B0398F5C;
  v296 = sub_1B039BCEC;
  v297 = sub_1B0398F5C;
  v298 = sub_1B0398F5C;
  v299 = sub_1B039BCEC;
  v300 = sub_1B0398F5C;
  v301 = sub_1B0398F5C;
  v302 = sub_1B039BCEC;
  v303 = sub_1B08FA1F8;
  v304 = sub_1B08FA1E8;
  v305 = sub_1B06BCD8C;
  v306 = sub_1B07AB020;
  v307 = sub_1B039BC08;
  v308 = sub_1B0398F5C;
  v309 = sub_1B0398F5C;
  v310 = sub_1B03992D4;
  v311 = sub_1B0398F5C;
  v312 = sub_1B0398F5C;
  v313 = sub_1B03991EC;
  v314 = sub_1B08FA1F8;
  v315 = sub_1B08FA1E8;
  v316 = sub_1B06BCD8C;
  v317 = sub_1B07AB020;
  v318 = sub_1B039BC08;
  v319 = sub_1B0398F5C;
  v320 = sub_1B0398F5C;
  v321 = sub_1B03992D4;
  v322 = sub_1B0398F5C;
  v323 = sub_1B0398F5C;
  v324 = sub_1B03991EC;
  v388 = 0;
  v387 = 0;
  v386 = 0;
  v325 = 0;
  v379 = 0;
  v372 = 0;
  v371 = 0;
  v370 = 0;
  memset(v369, 0, sizeof(v369));
  v363 = 0;
  v364 = 0;
  v361 = 0;
  v362 = 0;
  v340 = 0;
  v326 = *(type metadata accessor for WatchOSRender.Message() - 8);
  v327 = v326;
  v328 = *(v326 + 64);
  v329 = (v328 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v330 = v124 - v329;
  v331 = sub_1B0E439A8();
  v332 = *(v331 - 8);
  v333 = v331 - 8;
  v334 = (*(v332 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v340);
  v335 = v124 - v334;
  v336 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v337 = v124 - v336;
  v338 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v339 = v124 - v338;
  v341 = (*(*(_s6LoggerVMa_2() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v340);
  v342 = v124 - v341;
  v343 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v344 = v124 - v343;
  v345 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v346 = v124 - v345;
  v353 = sub_1B0E44468();
  v351 = *(v353 - 8);
  v352 = v353 - 8;
  v349 = (*(v351 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v348);
  v354 = (v124 - v349);
  v388 = v11;
  v387 = v12;
  v386 = v2;

  v350 = *(v2 + 72);
  MEMORY[0x1E69E5928](v350);
  v13 = v351;
  *v354 = v350;
  v14 = *MEMORY[0x1E69E8020];
  (*(v13 + 104))();
  v355 = sub_1B0E44488();
  (*(v351 + 8))(v354, v353);
  result = v355;
  if (v355)
  {

    v273 = v276 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_delegate;
    v274 = &v385;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    if (Strong)
    {
      v272 = Strong;
      v268 = Strong;
      v379 = Strong;
      v269 = v276 + 88;
      v270 = &v378;
      swift_beginAccess();
      v271 = swift_unknownObjectWeakLoadStrong();
      swift_endAccess();
      if (v271)
      {
        v267 = v271;
        v224 = v271;
        v372 = v271;
        v225 = sub_1B0A7D9FC();
        v371 = v225;
        v226 = *(v276 + 16);
        v227 = *(v276 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v16 = sub_1B0A70B04(v226, v227);
        v17 = v339;
        v228 = v16;

        v370 = v228;
        sub_1B08F5590(v276 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v346);
        (*(v332 + 16))(v17, v346, v331);
        sub_1B039480C(v346);

        v243 = 32;
        v244 = 7;
        v18 = swift_allocObject();
        v19 = v276;
        v234 = v18;
        *(v18 + 16) = v277;
        *(v18 + 24) = v19;

        sub_1B0902624(v348, v330);
        v231 = *(v327 + 80);
        v229 = (v231 + 16) & ~v231;
        v236 = swift_allocObject();
        sub_1B08F57EC(v330, (v236 + v229));
        sub_1B0902624(v348, v330);
        v230 = (v231 + 16) & ~v231;
        v238 = swift_allocObject();
        sub_1B08F57EC(v330, (v238 + v230));
        sub_1B0902624(v348, v330);
        v232 = (v231 + 16) & ~v231;
        v245 = swift_allocObject();
        sub_1B08F57EC(v330, (v245 + v232));
        v265 = sub_1B0E43988();
        v266 = sub_1B0E458D8();
        v241 = 17;
        v247 = swift_allocObject();
        *(v247 + 16) = 0;
        v248 = swift_allocObject();
        v242 = 8;
        *(v248 + 16) = 8;
        v20 = swift_allocObject();
        v21 = v276;
        v233 = v20;
        *(v20 + 16) = v278;
        *(v20 + 24) = v21;
        v22 = swift_allocObject();
        v23 = v233;
        v249 = v22;
        *(v22 + 16) = v279;
        *(v22 + 24) = v23;
        v250 = swift_allocObject();
        *(v250 + 16) = 0;
        v251 = swift_allocObject();
        *(v251 + 16) = 4;
        v24 = swift_allocObject();
        v25 = v234;
        v235 = v24;
        *(v24 + 16) = v280;
        *(v24 + 24) = v25;
        v26 = swift_allocObject();
        v27 = v235;
        v252 = v26;
        *(v26 + 16) = v281;
        *(v26 + 24) = v27;
        v253 = swift_allocObject();
        v240 = 32;
        *(v253 + 16) = 32;
        v254 = swift_allocObject();
        *(v254 + 16) = v242;
        v28 = swift_allocObject();
        v29 = v236;
        v237 = v28;
        *(v28 + 16) = v282;
        *(v28 + 24) = v29;
        v30 = swift_allocObject();
        v31 = v237;
        v255 = v30;
        *(v30 + 16) = v283;
        *(v30 + 24) = v31;
        v256 = swift_allocObject();
        *(v256 + 16) = v240;
        v257 = swift_allocObject();
        *(v257 + 16) = v242;
        v32 = swift_allocObject();
        v33 = v238;
        v239 = v32;
        *(v32 + 16) = v284;
        *(v32 + 24) = v33;
        v34 = swift_allocObject();
        v35 = v239;
        v258 = v34;
        *(v34 + 16) = v285;
        *(v34 + 24) = v35;
        v259 = swift_allocObject();
        *(v259 + 16) = v240;
        v260 = swift_allocObject();
        *(v260 + 16) = v242;
        v36 = swift_allocObject();
        v37 = v245;
        v246 = v36;
        *(v36 + 16) = v286;
        *(v36 + 24) = v37;
        v38 = swift_allocObject();
        v39 = v246;
        v262 = v38;
        *(v38 + 16) = v287;
        *(v38 + 24) = v39;
        v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v261 = sub_1B0E46A48();
        v263 = v40;

        v41 = v247;
        v42 = v263;
        *v263 = v288;
        v42[1] = v41;

        v43 = v248;
        v44 = v263;
        v263[2] = v289;
        v44[3] = v43;

        v45 = v249;
        v46 = v263;
        v263[4] = v290;
        v46[5] = v45;

        v47 = v250;
        v48 = v263;
        v263[6] = v291;
        v48[7] = v47;

        v49 = v251;
        v50 = v263;
        v263[8] = v292;
        v50[9] = v49;

        v51 = v252;
        v52 = v263;
        v263[10] = v293;
        v52[11] = v51;

        v53 = v253;
        v54 = v263;
        v263[12] = v294;
        v54[13] = v53;

        v55 = v254;
        v56 = v263;
        v263[14] = v295;
        v56[15] = v55;

        v57 = v255;
        v58 = v263;
        v263[16] = v296;
        v58[17] = v57;

        v59 = v256;
        v60 = v263;
        v263[18] = v297;
        v60[19] = v59;

        v61 = v257;
        v62 = v263;
        v263[20] = v298;
        v62[21] = v61;

        v63 = v258;
        v64 = v263;
        v263[22] = v299;
        v64[23] = v63;

        v65 = v259;
        v66 = v263;
        v263[24] = v300;
        v66[25] = v65;

        v67 = v260;
        v68 = v263;
        v263[26] = v301;
        v68[27] = v67;

        v69 = v262;
        v70 = v263;
        v263[28] = v302;
        v70[29] = v69;
        sub_1B0394964();

        if (os_log_type_enabled(v265, v266))
        {
          v71 = v325;
          v217 = sub_1B0E45D78();
          v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v218 = sub_1B03949A8(0);
          v219 = sub_1B03949A8(3);
          v220 = &v360;
          v360 = v217;
          v221 = &v359;
          v359 = v218;
          v222 = &v358;
          v358 = v219;
          sub_1B0394A48(2, &v360);
          sub_1B0394A48(5, v220);
          v356 = v288;
          v357 = v247;
          sub_1B03949FC(&v356, v220, v221, v222);
          v223 = v71;
          if (v71)
          {

            __break(1u);
          }

          else
          {
            v356 = v289;
            v357 = v248;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v214 = 0;
            v356 = v290;
            v357 = v249;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v213 = 0;
            v356 = v291;
            v357 = v250;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v212 = 0;
            v356 = v292;
            v357 = v251;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v211 = 0;
            v356 = v293;
            v357 = v252;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v210 = 0;
            v356 = v294;
            v357 = v253;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v209 = 0;
            v356 = v295;
            v357 = v254;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v208 = 0;
            v356 = v296;
            v357 = v255;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v207 = 0;
            v356 = v297;
            v357 = v256;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v206 = 0;
            v356 = v298;
            v357 = v257;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v205 = 0;
            v356 = v299;
            v357 = v258;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v204 = 0;
            v356 = v300;
            v357 = v259;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v203 = 0;
            v356 = v301;
            v357 = v260;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v202 = 0;
            v356 = v302;
            v357 = v262;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v201 = 0;
            _os_log_impl(&dword_1B0389000, v265, v266, "[%lld] (%u) Sending message, ID: '%s', account: '%s', mailbox: '%s'.", v217, 0x30u);
            sub_1B03998A8(v218);
            sub_1B03998A8(v219);
            sub_1B0E45D58();

            v215 = v201;
          }
        }

        else
        {
          v72 = v325;

          v215 = v72;
        }

        v199 = v215;
        MEMORY[0x1E69E5920](v265);
        (*(v332 + 8))(v339, v331);
        swift_getObjectType();
        [v268 messageContentLoader:v224 receivedMailContent:v228 forMessage:v225 loadedProtected:0];
        v197 = *(v347 + 72);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0902AA8();
        v198 = &v389;
        sub_1B0E445C8();
        memcpy(v369, v198, sizeof(v369));
        for (i = v199; ; i = v192)
        {
          v192 = i;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2F30, &unk_1B0EA0630);
          sub_1B0E446D8();
          v193 = v365;
          v194 = v366;
          v195 = v367;
          v196 = v368;
          if (!v366)
          {
            break;
          }

          v188 = v193;
          v189 = v194;
          v190 = v195;
          v191 = v196;
          v186 = v196;
          v185 = v195;
          v187 = v194;
          v181 = v193;
          v363 = v193;
          v364 = v194;
          v361 = v195;
          v362 = v196;
          swift_getObjectType();
          sub_1B03B2000(v185, v186);
          v184 = sub_1B0E42F18();
          sub_1B0391D50(v185, v186);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0A6A7C8(v181, v187);
          v182 = v73;
          v183 = sub_1B0E44AC8();

          [v268 messageContentLoader:v224 receivedAttachmentData:v184 contentId:v183 loadedProtected:0];
          MEMORY[0x1E69E5920](v183);
          MEMORY[0x1E69E5920](v184);
          sub_1B0391D50(v185, v186);
        }

        sub_1B06B91B0(v369);
        swift_getObjectType();
        [v268 messageContentLoaderDidFinishLoading_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        MEMORY[0x1E69E5920](v224);
        return swift_unknownObjectRelease();
      }

      else
      {
        v74 = v337;
        sub_1B08F5590(v276 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v344);
        (*(v332 + 16))(v74, v344, v331);
        sub_1B039480C(v344);

        v166 = 32;
        v167 = 7;
        v75 = swift_allocObject();
        v76 = v276;
        v168 = v75;
        *(v75 + 16) = v303;
        *(v75 + 24) = v76;

        v179 = sub_1B0E43988();
        v180 = sub_1B0E458E8();
        v165 = 17;
        v170 = swift_allocObject();
        *(v170 + 16) = 0;
        v171 = swift_allocObject();
        *(v171 + 16) = 8;
        v77 = swift_allocObject();
        v78 = v276;
        v164 = v77;
        *(v77 + 16) = v304;
        *(v77 + 24) = v78;
        v79 = swift_allocObject();
        v80 = v164;
        v172 = v79;
        *(v79 + 16) = v305;
        *(v79 + 24) = v80;
        v173 = swift_allocObject();
        *(v173 + 16) = 0;
        v174 = swift_allocObject();
        *(v174 + 16) = 4;
        v81 = swift_allocObject();
        v82 = v168;
        v169 = v81;
        *(v81 + 16) = v306;
        *(v81 + 24) = v82;
        v83 = swift_allocObject();
        v84 = v169;
        v176 = v83;
        *(v83 + 16) = v307;
        *(v83 + 24) = v84;
        v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v175 = sub_1B0E46A48();
        v177 = v85;

        v86 = v170;
        v87 = v177;
        *v177 = v308;
        v87[1] = v86;

        v88 = v171;
        v89 = v177;
        v177[2] = v309;
        v89[3] = v88;

        v90 = v172;
        v91 = v177;
        v177[4] = v310;
        v91[5] = v90;

        v92 = v173;
        v93 = v177;
        v177[6] = v311;
        v93[7] = v92;

        v94 = v174;
        v95 = v177;
        v177[8] = v312;
        v95[9] = v94;

        v96 = v176;
        v97 = v177;
        v177[10] = v313;
        v97[11] = v96;
        sub_1B0394964();

        if (os_log_type_enabled(v179, v180))
        {
          v98 = v325;
          v157 = sub_1B0E45D78();
          v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v156 = 0;
          v158 = sub_1B03949A8(0);
          v159 = sub_1B03949A8(v156);
          v160 = &v377;
          v377 = v157;
          v161 = &v376;
          v376 = v158;
          v162 = &v375;
          v375 = v159;
          sub_1B0394A48(0, &v377);
          sub_1B0394A48(2, v160);
          v373 = v308;
          v374 = v170;
          sub_1B03949FC(&v373, v160, v161, v162);
          v163 = v98;
          if (v98)
          {

            __break(1u);
          }

          else
          {
            v373 = v309;
            v374 = v171;
            sub_1B03949FC(&v373, &v377, &v376, &v375);
            v154 = 0;
            v373 = v310;
            v374 = v172;
            sub_1B03949FC(&v373, &v377, &v376, &v375);
            v153 = 0;
            v373 = v311;
            v374 = v173;
            sub_1B03949FC(&v373, &v377, &v376, &v375);
            v152 = 0;
            v373 = v312;
            v374 = v174;
            sub_1B03949FC(&v373, &v377, &v376, &v375);
            v151 = 0;
            v373 = v313;
            v374 = v176;
            sub_1B03949FC(&v373, &v377, &v376, &v375);
            _os_log_impl(&dword_1B0389000, v179, v180, "[%lld] (%u) Loader has been deallocated.", v157, 0x12u);
            v150 = 0;
            sub_1B03998A8(v158);
            sub_1B03998A8(v159);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v179);
        (*(v332 + 8))(v337, v331);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v99 = v335;
      sub_1B08F5590(v276 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v342);
      (*(v332 + 16))(v99, v342, v331);
      sub_1B039480C(v342);

      v135 = 32;
      v136 = 7;
      v100 = swift_allocObject();
      v101 = v276;
      v137 = v100;
      *(v100 + 16) = v314;
      *(v100 + 24) = v101;

      v148 = sub_1B0E43988();
      v149 = sub_1B0E458E8();
      v134 = 17;
      v139 = swift_allocObject();
      *(v139 + 16) = 0;
      v140 = swift_allocObject();
      *(v140 + 16) = 8;
      v102 = swift_allocObject();
      v103 = v276;
      v133 = v102;
      *(v102 + 16) = v315;
      *(v102 + 24) = v103;
      v104 = swift_allocObject();
      v105 = v133;
      v141 = v104;
      *(v104 + 16) = v316;
      *(v104 + 24) = v105;
      v142 = swift_allocObject();
      *(v142 + 16) = 0;
      v143 = swift_allocObject();
      *(v143 + 16) = 4;
      v106 = swift_allocObject();
      v107 = v137;
      v138 = v106;
      *(v106 + 16) = v317;
      *(v106 + 24) = v107;
      v108 = swift_allocObject();
      v109 = v138;
      v145 = v108;
      *(v108 + 16) = v318;
      *(v108 + 24) = v109;
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v144 = sub_1B0E46A48();
      v146 = v110;

      v111 = v139;
      v112 = v146;
      *v146 = v319;
      v112[1] = v111;

      v113 = v140;
      v114 = v146;
      v146[2] = v320;
      v114[3] = v113;

      v115 = v141;
      v116 = v146;
      v146[4] = v321;
      v116[5] = v115;

      v117 = v142;
      v118 = v146;
      v146[6] = v322;
      v118[7] = v117;

      v119 = v143;
      v120 = v146;
      v146[8] = v323;
      v120[9] = v119;

      v121 = v145;
      v122 = v146;
      v146[10] = v324;
      v122[11] = v121;
      sub_1B0394964();

      if (os_log_type_enabled(v148, v149))
      {
        v123 = v325;
        v126 = sub_1B0E45D78();
        v124[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v125 = 0;
        v127 = sub_1B03949A8(0);
        v128 = sub_1B03949A8(v125);
        v129 = &v384;
        v384 = v126;
        v130 = &v383;
        v383 = v127;
        v131 = &v382;
        v382 = v128;
        sub_1B0394A48(0, &v384);
        sub_1B0394A48(2, v129);
        v380 = v319;
        v381 = v139;
        sub_1B03949FC(&v380, v129, v130, v131);
        v132 = v123;
        if (v123)
        {

          __break(1u);
        }

        else
        {
          v380 = v320;
          v381 = v140;
          sub_1B03949FC(&v380, &v384, &v383, &v382);
          v124[4] = 0;
          v380 = v321;
          v381 = v141;
          sub_1B03949FC(&v380, &v384, &v383, &v382);
          v124[3] = 0;
          v380 = v322;
          v381 = v142;
          sub_1B03949FC(&v380, &v384, &v383, &v382);
          v124[2] = 0;
          v380 = v323;
          v381 = v143;
          sub_1B03949FC(&v380, &v384, &v383, &v382);
          v124[1] = 0;
          v380 = v324;
          v381 = v145;
          sub_1B03949FC(&v380, &v384, &v383, &v382);
          _os_log_impl(&dword_1B0389000, v148, v149, "[%lld] (%u) Delegate has been deallocated.", v126, 0x12u);
          v124[0] = 0;
          sub_1B03998A8(v127);
          sub_1B03998A8(v128);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v148);
      return (*(v332 + 8))(v335, v331);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}