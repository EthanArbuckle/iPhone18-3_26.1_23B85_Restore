uint64_t sub_232C0D594(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  sub_232B124A8(&qword_27DDC7B98, &qword_232CFBE18);
  result = sub_232C0DBB8();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 4 * v5++);
    v8 = *(v3 + 40);
    sub_232CEA820();
    sub_232CEA840();
    result = sub_232CEA850();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 4 * v10) == v7)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + 4 * v10) = v7;
    v14 = *(v3 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_232C0D710(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_232CE9D50();
  }

  return sub_232B2080C();
}

uint64_t sub_232C0D76C(void *a1)
{
  if (![a1 subResults])
  {
    return 0;
  }

  sub_232B4D640();
  sub_232B55094();
  v2 = sub_232CE9FE0();

  return v2;
}

uint64_t sub_232C0D7F4()
{
  v1 = sub_232B4D640();
  v3 = v2(v1);
  sub_232B13F24(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_232C0D848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_232B13F24(v4);
  v6 = *(v5 + 16);
  v7 = sub_232B2080C();
  v8(v7);
  return a2;
}

uint64_t sub_232C0D8A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_232B13F24(v4);
  v6 = *(v5 + 32);
  v7 = sub_232B2080C();
  v8(v7);
  return a2;
}

uint64_t sub_232C0D900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232C0D948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_232B124A8(a3, a4);
  sub_232B13F24(v5);
  v7 = *(v6 + 40);
  v8 = sub_232B2080C();
  v9(v8);
  return a2;
}

void sub_232C0D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v26[(v29 >> 6) + 8] |= 1 << v29;
  *(v26[6] + 8 * v29) = a26;
  v30 = (v26[7] + 16 * v29);
  *v30 = v28;
  v30[1] = v27;
  v31 = v26[2];
}

uint64_t sub_232C0DA00()
{

  return sub_232C0D7F4();
}

uint64_t sub_232C0DA64()
{

  return sub_232CEA750();
}

uint64_t sub_232C0DA88()
{
  v5 = (*(v0 + 56) + 16 * v3);
  v6 = v5[1];
  *v5 = v2;
  v5[1] = v1;
}

void sub_232C0DAA8()
{
  v3 = *(*(v0 + 56) + 16 * v1 + 8);

  type metadata accessor for NSTextCheckingKey();
}

uint64_t sub_232C0DAD8()
{

  return sub_232CEA5C0();
}

uint64_t sub_232C0DAF8()
{

  return sub_232CEA5C0();
}

void sub_232C0DB68()
{
  v3 = *(*(*(v1 - 88) + 48) + 8 * v0);
}

uint64_t sub_232C0DB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v27 - 88) = v26;

  return sub_232B20540(a26);
}

uint64_t sub_232C0DBB8()
{

  return sub_232CEA4C0();
}

uint64_t sub_232C0DBD4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232C0DBF0()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_232C0DC48()
{
  v3 = *(v1 - 320);

  return sub_232C0A394(v0, v3);
}

void sub_232C0DC64()
{
  v1 = *(v0 - 184);
  v2 = *(v0 - 176);
  v3 = *(v0 - 192);
}

uint64_t sub_232C0DC84()
{

  return sub_232C0D710(v1, v0);
}

uint64_t sub_232C0DC9C(uint64_t a1, SEL *a2)
{

  return sub_232C0D710(v2, a2);
}

id sub_232C0DCB4(id a1, SEL a2)
{
  v4 = *(v2 - 104);

  return [a1 a2];
}

uint64_t sub_232C0DCCC()
{
}

void sub_232C0DD2C()
{
  sub_232CE8AE0();
  if (v0 <= 0x3F)
  {
    sub_232C0DF78(319, &unk_2814E25F0, MEMORY[0x277CC8990]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_232C0DE24()
{
  sub_232B28F10();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_232C0DF78(319, &qword_2814E25E8, MEMORY[0x277CC9260]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_232C0DFCC();
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_232C0DF78(319, &qword_27DDC7BC0, type metadata accessor for CalendarEvent);
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      type metadata accessor for CGRect();
      v1 = v7;
      if (v8 <= 0x3F)
      {
        type metadata accessor for CGPoint();
        v1 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_232C0DF78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_232C0DFCC()
{
  if (!qword_27DDC7BB0)
  {
    sub_232B27EEC(&qword_27DDC7BB8, &unk_232CFBE60);
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC7BB0);
    }
  }
}

void sub_232C0E030(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  v10 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v7 = *(type metadata accessor for DUStructuredExtractionResult(0) - 8);
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

    sub_232C0E678((a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5), a2, &v9);
    if (v2)
    {

      return;
    }

    ++v5;
    if (v9)
    {
      MEMORY[0x238391D50]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_232CEA000();
      }

      sub_232CEA020();
      v5 = v8;
    }
  }
}

uint64_t sub_232C0E1D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  v4 = swift_task_alloc();
  *(v2 + 200) = v4;
  *v4 = v2;
  v4[1] = sub_232C0E288;

  return sub_232B504C0(a2);
}

uint64_t sub_232C0E288(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_232C0E388, 0, 0);
}

uint64_t sub_232C0E388()
{
  v39 = v0;
  v1 = v0[26];
  if (v1)
  {
    v2 = v0[24];
    v37 = 0xD00000000000001BLL;
    v38 = 0x8000000232D08FE0;
    sub_232C0E030(v1, &v37);
    v4 = v3;

    v5 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (v6)
    {
      v7 = *(v2 + v5);
      v8 = v7;
    }

    else
    {
      v8 = [objc_allocWithZone(type metadata accessor for DUStructuredEntityResponse()) init];
      v7 = 0;
      v6 = *(v2 + v5);
    }

    *(v2 + v5) = v8;
    v9 = v8;
    v10 = v7;

    v11 = *(v2 + v5);
    if (v11 && (v12 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities, swift_beginAccess(), (v13 = *(v11 + v12)) != 0))
    {
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    v14 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
    swift_beginAccess();
    v15 = *&v9[v14];
    *&v9[v14] = v13;

    v16 = *(v2 + v5);
    if (v16)
    {
      v17 = v16;
      v18 = sub_232C09164();
      if (*v19)
      {
        sub_232C5E478(v4);
      }

      else
      {
      }

      (v18)(v0 + 2, 0);
    }

    else
    {
    }

    v20 = *(v2 + v5);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
      swift_beginAccess();
      v22 = *&v20[v21];
      if (v22)
      {
        v23 = v20;
        v24 = v22;
        v25 = v22;
      }

      else
      {
        v26 = objc_allocWithZone(type metadata accessor for DUDebugInfo());
        v27 = v20;
        v25 = [v26 init];
        v24 = *&v20[v21];
      }

      *&v20[v21] = v25;
      v28 = v22;

      v29 = *(v2 + v5);
      if (v29)
      {
        v30 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
        swift_beginAccess();
        v31 = *(v29 + v30);
        if (v31)
        {
          v32 = v37;
          v33 = v38;
          swift_beginAccess();
          v34 = v31;
          MEMORY[0x238391C30](v32, v33);
          swift_endAccess();
        }
      }
    }
  }

  v35 = v0[1];

  return v35();
}

void sub_232C0E678(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v92 = a2;
  v95 = a3;
  v4 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  *&v93 = &v89 - v6;
  v7 = sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v89 - v9;
  *&v94 = type metadata accessor for CalendarEvent(0);
  v11 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v89 - v15;
  v17 = [objc_allocWithZone(type metadata accessor for DUStructuredEntity()) init];
  v19 = *a1;
  v18 = a1[1];
  v20 = &v17[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title];
  swift_beginAccess();
  v21 = *(v20 + 1);
  *v20 = v19;
  *(v20 + 1) = v18;

  v23 = a1[2];
  v22 = a1[3];
  v24 = &v17[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type];
  swift_beginAccess();
  v25 = *(v24 + 1);
  *v24 = v23;
  *(v24 + 1) = v22;

  v27 = a1[6];
  v26 = a1[7];
  v28 = &v17[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_phoneNumber];
  swift_beginAccess();
  v29 = *(v28 + 1);
  *v28 = v27;
  *(v28 + 1) = v26;

  v31 = a1[10];
  v30 = a1[11];
  v32 = &v17[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_email];
  swift_beginAccess();
  v33 = *(v32 + 1);
  *v32 = v31;
  *(v32 + 1) = v30;

  v34 = type metadata accessor for DUStructuredExtractionResult(0);
  sub_232B26744(a1 + v34[10], v16, &qword_27DDC6AD8, &unk_232CF82F0);
  v35 = sub_232CE8C00();
  if (sub_232B12480(v16, 1, v35) == 1)
  {
    sub_232B267AC(v16, &qword_27DDC6AD8, &unk_232CF82F0);
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v36 = sub_232CE8B60();
    v37 = v38;
    (*(*(v35 - 8) + 8))(v16, v35);
  }

  v39 = &v17[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_url];
  swift_beginAccess();
  v40 = v39[1];
  *v39 = v36;
  v39[1] = v37;

  v41 = *(a1 + v34[11]);
  v42 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
  swift_beginAccess();
  v43 = *&v17[v42];
  *&v17[v42] = v41;

  sub_232B26744(a1 + v34[12], v10, &qword_27DDC70A8, &unk_232CF81B0);
  v44 = v94;
  if (sub_232B12480(v10, 1, v94) == 1)
  {
    sub_232B267AC(v10, &qword_27DDC70A8, &unk_232CF81B0);
    v45 = &off_2789A8000;
  }

  else
  {
    v90 = v34;
    v46 = v91;
    sub_232BA4C2C(v10, v91);
    v45 = &off_2789A8000;
    v47 = [objc_allocWithZone(type metadata accessor for DUCalendarEvent()) init];
    v48 = *v46;
    v49 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
    swift_beginAccess();
    v47[v49] = v48;
    v50 = *(v44 + 20);
    v51 = sub_232CE8AE0();
    v52 = &v46[v50];
    v53 = v93;
    (*(*(v51 - 8) + 32))(v93, v52, v51);
    sub_232B12504(v53, 0, 1, v51);
    v54 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_startDateComponents;
    swift_beginAccess();
    sub_232B55134(v53, &v47[v54]);
    swift_endAccess();
    v55 = &v46[*(v44 + 24)];
    v34 = v90;
    sub_232C0EFBC(v55, v53);
    v56 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_endDateComponents;
    swift_beginAccess();
    sub_232B55134(v53, &v47[v56]);
    swift_endAccess();
    v57 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
    swift_beginAccess();
    v58 = *&v17[v57];
    *&v17[v57] = v47;
  }

  v59 = (a1 + v34[13]);
  v61 = *v59;
  v60 = v59[1];
  v62 = &v17[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_homeAutomationID];
  swift_beginAccess();
  v63 = *(v62 + 1);
  *v62 = v61;
  *(v62 + 1) = v60;

  v64 = [objc_allocWithZone(type metadata accessor for DUDisplayInfo()) v45[128]];
  v65 = (a1 + v34[14]);
  v66 = &v64[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow];
  v67 = *v65;
  v93 = v65[1];
  v94 = v67;
  swift_beginAccess();
  v68 = v93;
  *v66 = v94;
  v66[1] = v68;
  v69 = (a1 + v34[15]);
  v70 = *v69;
  v71 = v69[1];
  v72 = &v64[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
  swift_beginAccess();
  *v72 = v70;
  v72[1] = v71;
  LOBYTE(v72) = *(a1 + v34[16]);
  v73 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  swift_beginAccess();
  v64[v73] = v72;
  v74 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
  swift_beginAccess();
  v75 = *&v17[v74];
  *&v17[v74] = v64;
  v76 = v64;

  v77 = a1[5];
  if (v77)
  {
    *&v94 = a1[4];
    sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_232CF5E60;
    v79 = v92;
    v81 = *v92;
    v80 = v92[1];
    v82 = MEMORY[0x277D837D0];
    *(v78 + 56) = MEMORY[0x277D837D0];
    v83 = sub_232B27F34();
    *(v78 + 32) = v81;
    *(v78 + 40) = v80;
    *(v78 + 96) = v82;
    *(v78 + 104) = v83;
    v84 = v94;
    *(v78 + 64) = v83;
    *(v78 + 72) = v84;
    *(v78 + 80) = v77;

    v85 = sub_232CE9D80();
    v87 = v86;

    v88 = v79[1];
    *v79 = v85;
    v79[1] = v87;
  }

  else
  {
  }

  *v95 = v17;
}

id sub_232C0EDF8()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 4;
  v13.receiver = v1;
  v13.super_class = v0;
  v2 = objc_msgSendSuper2(&v13, sel_init);
  v3 = objc_allocWithZone(v0);
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 8;
  v12.receiver = v3;
  v12.super_class = v0;
  v4 = objc_msgSendSuper2(&v12, sel_init);
  DURequestContentType.formUnion(_:)();

  v5 = objc_allocWithZone(v0);
  *&v5[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 16;
  v11.receiver = v5;
  v11.super_class = v0;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  DURequestContentType.formUnion(_:)();

  v7 = objc_allocWithZone(v0);
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 32;
  v10.receiver = v7;
  v10.super_class = v0;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  DURequestContentType.formUnion(_:)();

  return v2;
}

uint64_t sub_232C0EEFC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_232BB0620;

  return sub_232C0E1D8(a1, a2);
}

uint64_t sub_232C0EFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *DUTopicDetectionResponse.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v104 = a1;
  v101 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v6 = sub_232B13F24(v101);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v98 = v10 - v9;
  v11 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v12 = sub_232B2D120(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_232B3516C();
  v97 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v100 = &v93 - v18;
  v19 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v102 = *(v19 - 8);
  v20 = *(v102 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  sub_232B3516C();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v93 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v93 - v28;
  v30 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  sub_232B2D120(v30);
  v32 = *(v31 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v33);
  sub_232C11024();
  v34 = *(a2 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  sub_232B20704();
  v39 = v38 - v37;
  v40 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v41 = sub_232B13F24(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_232B20704();
  v46 = (v45 - v44);
  v103 = [objc_allocWithZone(v4) init];
  v47 = v104;
  (*(v34 + 16))(v39);
  if (swift_dynamicCast())
  {
    v95 = v34;
    v96 = a2;
    v94 = v40;
    sub_232B12504(v3, 0, 1, v40);
    sub_232C10ECC(v3, v46, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
    v99 = v46;
    v48 = *v46;
    v49 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v50 = *(v48 + 16);
    if (v50)
    {
      sub_232C11058();
      v53 = v51 + v52;
      v55 = *(v54 + 72);
      v56 = MEMORY[0x277D84F90];
      do
      {
        sub_232C0FDD0(v53, v29);
        sub_232C0FDD0(v29, v23);
        v57 = sub_232C0FAF0(v23);
        sub_232C10F2C();
        v59 = sub_232C10E74(v29, v58);
        if (v57)
        {
          MEMORY[0x238391D50](v59);
          v60 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v60 >> 1)
          {
            sub_232BC1BBC(v60);
            sub_232CEA000();
          }

          sub_232CEA020();
          v56 = v106;
        }

        v53 += v55;
        --v50;
      }

      while (v50);
    }

    else
    {
      v56 = MEMORY[0x277D84F90];
    }

    v62 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics;
    v61 = v103;
    sub_232B13F5C();
    v63 = *&v61[v62];
    *&v61[v62] = v56;

    v64 = v99[1];
    v105 = v49;
    v65 = *(v64 + 16);
    if (v65)
    {
      sub_232C11058();
      v68 = v66 + v67;
      v70 = *(v69 + 72);
      v49 = MEMORY[0x277D84F90];
      do
      {
        sub_232C0FDD0(v68, v27);
        sub_232C0FDD0(v27, v23);
        v71 = sub_232C0FAF0(v23);
        sub_232C10F2C();
        v73 = sub_232C10E74(v27, v72);
        if (v71)
        {
          MEMORY[0x238391D50](v73);
          v74 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v74 >> 1)
          {
            sub_232BC1BBC(v74);
            sub_232CEA000();
          }

          sub_232CEA020();
          v49 = v105;
        }

        v68 += v70;
        --v65;
      }

      while (v65);
    }

    v75 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics;
    sub_232B13F5C();
    v76 = *&v61[v75];
    *&v61[v75] = v49;

    v77 = *(v94 + 28);
    v79 = v99;
    v78 = v100;
    sub_232B34D3C(v99 + v77, v100, &qword_27DDC67C8, &unk_232CF5E70);
    v80 = v101;
    if (sub_232B12480(v78, 1, v101) == 1)
    {
      (*(v95 + 8))(v104, v96);
      sub_232B13790(v78, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C10FFC();
    }

    else
    {
      sub_232B13790(v78, &qword_27DDC67C8, &unk_232CF5E70);
      v81 = v97;
      sub_232B34D3C(v79 + v77, v97, &qword_27DDC67C8, &unk_232CF5E70);
      v82 = sub_232B12480(v81, 1, v80);
      v83 = v104;
      v84 = v95;
      if (v82 == 1)
      {
        v85 = v98;
        sub_232CE9330();
        v86 = (v85 + *(v80 + 20));
        *v86 = 0;
        v86[1] = 0;
        v87 = sub_232B12480(v81, 1, v80);
        v88 = v96;
        if (v87 != 1)
        {
          sub_232B13790(v81, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C10ECC(v81, v98, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
        v88 = v96;
      }

      v89 = sub_232B4C530();
      (*(v84 + 8))(v83, v88);
      sub_232C10FFC();
      v90 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
      sub_232B13F5C();
      v91 = *&v61[v90];
      *&v61[v90] = v89;
    }
  }

  else
  {
    (*(v34 + 8))(v47, a2);

    sub_232B12504(v3, 1, 1, v40);
    sub_232B13790(v3, &qword_27DDC7A40, &unk_232CFE960);
    return 0;
  }

  return v61;
}

uint64_t sub_232C0F71C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232C0F710(v4);
}

id sub_232C0F7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    type metadata accessor for DUTopicResult();
    v3 = sub_232CE9FD0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_232C0F840(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = a3;
  if (a3)
  {
    type metadata accessor for DUTopicResult();
    v5 = sub_232CE9FE0();
  }

  v7 = a1;
  a4(v5);
}

uint64_t sub_232C0F8D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232C0F8C4(v4);
}

void *sub_232C0F980()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
  sub_232B13F74();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232C0FA20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C0FA70(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232C0FA20(v2);
}

char *sub_232C0FAF0(uint64_t a1)
{
  v3 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v3);
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232C11024();
  v7 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  v8 = sub_232B13F24(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v12 = sub_232B13F24(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_232B20704();
  v17 = (v16 - v15);
  v18 = [objc_allocWithZone(type metadata accessor for DUTopicResult()) init];
  sub_232C0FDD0(a1, v17);
  sub_232B34D3C(v17 + v11[6], v1, &qword_27DDC6AC0, &unk_232CFBF50);
  sub_232C10FD8();
  if (v19)
  {
    sub_232C11034();
    sub_232C10FD8();
    if (!v19)
    {
      sub_232B13790(v1, &qword_27DDC6AC0, &unk_232CFBF50);
    }
  }

  else
  {
    sub_232C10FAC();
  }

  v20 = [objc_allocWithZone(type metadata accessor for DUGlobalTopicSetIdentifier()) init];
  sub_232C10F2C();
  sub_232C10E74(a1, v21);
  sub_232C11080();
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = v22;
  }

  v26 = DUGlobalTopicSetName.init(rawValue:)(v25);
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  sub_232B13F5C();
  sub_232C10F64();
  v29 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  sub_232B13F5C();
  *&v20[v29] = v28;
  v30 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  sub_232B13F5C();
  v31 = *&v18[v30];
  *&v18[v30] = v20;

  v32 = (v17 + v11[7]);
  if (v32[1])
  {
    v33 = *v32;
    v34 = v32[1];
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  v35 = &v18[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier];
  sub_232B13F5C();
  v36 = *(v35 + 1);
  *v35 = v33;
  *(v35 + 1) = v34;

  v37 = sub_232C1106C(v17 + v11[8]);
  if (v19)
  {
    v39 = v37;
  }

  else
  {
    v39 = v38;
  }

  v40 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
  sub_232B13F5C();
  *&v18[v40] = v39;
  v41 = *v17;

  sub_232C10F2C();
  sub_232C10E74(v17, v42);
  v43 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
  sub_232B13F5C();
  v44 = *&v18[v43];
  *&v18[v43] = v41;

  return v18;
}

uint64_t sub_232C0FDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_232C0FE34(uint64_t a1)
{
  v3 = v1;
  v5 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v5);
  v7 = *(v6 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  sub_232C11024();
  v9 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  v10 = sub_232B13F24(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v13 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v14 = sub_232B13F24(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v19 = (v18 - v17);
  v20 = [objc_allocWithZone(v3) init];
  sub_232C0FDD0(a1, v19);
  sub_232B34D3C(v19 + v13[6], v2, &qword_27DDC6AC0, &unk_232CFBF50);
  sub_232C10FD8();
  if (v21)
  {
    sub_232C11034();
    sub_232C10FD8();
    if (!v21)
    {
      sub_232B13790(v2, &qword_27DDC6AC0, &unk_232CFBF50);
    }
  }

  else
  {
    sub_232C10FAC();
  }

  v22 = [objc_allocWithZone(type metadata accessor for DUGlobalTopicSetIdentifier()) init];
  sub_232C10F2C();
  sub_232C10E74(a1, v23);
  sub_232C11080();
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = v24;
  }

  v28 = DUGlobalTopicSetName.init(rawValue:)(v27);
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  sub_232B13F5C();
  sub_232C10F64();
  v31 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  sub_232B13F5C();
  *&v22[v31] = v30;
  v32 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  sub_232B13F5C();
  v33 = *&v20[v32];
  *&v20[v32] = v22;

  v34 = (v19 + v13[7]);
  if (v34[1])
  {
    v35 = *v34;
    v36 = v34[1];
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
  }

  v37 = &v20[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier];
  sub_232B13F5C();
  v38 = *(v37 + 1);
  *v37 = v35;
  *(v37 + 1) = v36;

  v39 = sub_232C1106C(v19 + v13[8]);
  if (v21)
  {
    v41 = v39;
  }

  else
  {
    v41 = v40;
  }

  v42 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
  sub_232B13F5C();
  *&v20[v42] = v41;
  v43 = *v19;

  sub_232C10F2C();
  sub_232C10E74(v19, v44);
  v45 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
  sub_232B13F5C();
  v46 = *&v20[v45];
  *&v20[v45] = v43;

  return v20;
}

id sub_232C10114@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B3516C();
  v70 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - v8;
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  sub_232B2D120(v10);
  v12 = *(v11 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v17 = sub_232B13F24(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B3516C();
  v22 = v20 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = (&v68 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v68 - v27;
  v29 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v29;
  v30 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v31 = a1 + *(v30 + 24);
  sub_232CE9330();
  v32 = *(v30 + 28);
  v68 = a1;
  v33 = a1 + v32;
  v34 = v69;
  sub_232C11094(v33, 1);
  v35 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
  sub_232B13F74();
  v36 = *(v34 + v35);
  if (v36)
  {
    v37 = v36;
    sub_232B55A40(v26);

    v38 = swift_dynamicCast();
    sub_232C11094(v15, v38 ^ 1u);
    if (sub_232B12480(v15, 1, v16) != 1)
    {
      sub_232C10ECC(v15, v28, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      sub_232C10ECC(v28, v22, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      v39 = v68;
      sub_232B13790(v68 + v32, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C10ECC(v22, v39 + v32, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      sub_232C11094(v39 + v32, 0);
      goto LABEL_6;
    }
  }

  else
  {
    sub_232C11094(v15, 1);
  }

  sub_232B13790(v15, &qword_27DDC67C8, &unk_232CF5E70);
LABEL_6:
  v40 = v70;
  v41 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics;
  sub_232B13F74();
  v42 = *(v34 + v41);
  if (v42)
  {
    v43 = sub_232B26B10(*(v34 + v41));

    v45 = 0;
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v43 == v45)
      {

        v34 = v69;
        *v68 = v46;
        v40 = v70;
        goto LABEL_20;
      }

      if ((v42 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2383922C0](v45, v42);
      }

      else
      {
        if (v45 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        result = *(v42 + 8 * v45 + 32);
      }

      v47 = result;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      sub_232C13010(v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = *(v46 + 16);
        sub_232B36C84();
        v46 = v53;
      }

      v49 = *(v46 + 16);
      v48 = *(v46 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_232BC1BBC(v48);
        sub_232B36C84();
        v46 = v54;
      }

      *(v46 + 16) = v49 + 1;
      sub_232C10F44(v46 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
      result = sub_232C10ECC(v9, v50, v51);
      ++v45;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_20:
    v55 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics;
    result = sub_232B13F74();
    v56 = *(v34 + v55);
    if (v56)
    {
      v57 = sub_232B26B10(v56);

      v58 = 0;
      v59 = MEMORY[0x277D84F90];
      while (v57 != v58)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x2383922C0](v58, v56);
        }

        else
        {
          if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          result = *(v56 + 8 * v58 + 32);
        }

        v60 = result;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_37;
        }

        sub_232C13010(v40);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = *(v59 + 16);
          sub_232B36C84();
          v59 = v66;
        }

        v62 = *(v59 + 16);
        v61 = *(v59 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_232BC1BBC(v61);
          sub_232B36C84();
          v59 = v67;
        }

        *(v59 + 16) = v62 + 1;
        sub_232C10F44(v59 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
        result = sub_232C10ECC(v40, v63, v64);
        ++v58;
      }

      v68[1] = v59;
    }
  }

  return result;
}

uint64_t sub_232C10640@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  sub_232C10114((v7 - v6));
  sub_232BFBB1C();
  v9 = v8;
  result = sub_232B124A8(&qword_27DDC7BE0, &qword_232CFBED0);
  a1[3] = result;
  *a1 = v9;
  return result;
}

void sub_232C10734(void *a1)
{
  type metadata accessor for DUTopicDetectionResponse();
  sub_232C10F94();
  sub_232C10E2C(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUTopicDetectionResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C10F94();
  sub_232C10E2C(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B3A3E0();
    return 0;
  }

  swift_getObjectType();
  sub_232B3A3E0();
  return v5;
}

id DUTopicDetectionResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUTopicDetectionResponse.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUTopicDetectionResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DUTopicDetectionResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUTopicDetectionResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232C10E2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232C10E74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232C10ECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232C10F64()
{
  *(v2 + v3) = v0;
  v5 = *(v1 + 16);

  return sub_232C10E74(v1, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
}

uint64_t sub_232C10FAC()
{

  return sub_232C10ECC(v1, v0, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
}

uint64_t sub_232C10FFC()
{

  return sub_232C10E74(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
}

uint64_t sub_232C11034()
{
  *v0 = 0;
  *(v0 + 8) = v2;
  *(v0 + 16) = 0;
  v4 = v0 + *(v1 + 24);

  return sub_232CE9330();
}

double sub_232C1106C@<D0>(uint64_t a1@<X8>)
{
  result = *a1;
  v2 = *(a1 + 8);
  return result;
}

uint64_t sub_232C11094(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

uint64_t sub_232C110AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUTopicEncodingSmolBERToSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_2819325A0;
  *a1 = result;
  return result;
}

uint64_t sub_232C110F4(uint64_t a1)
{
  type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
  *(v1 + 64) = swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_232C111C0;

  return sub_232B4EC3C(a1);
}

uint64_t sub_232C111C0()
{
  v1 = *v0;
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *(v4 + 64);
  v7 = *v0;
  sub_232B482C0();
  *v8 = v7;
  *(v10 + 80) = v9;

  return MEMORY[0x2822009F8](sub_232C112D8, 0, 0);
}

uint64_t sub_232C112D8()
{
  v1 = v0[10];
  if (v1)
  {
    type metadata accessor for DUTrialAssetLoader();
    v0[11] = swift_initStackObject();
    v0[12] = sub_232C14534();
    v2 = sub_232C149A0();
    v3 = sub_232C15424(0xD00000000000002DLL, 0x8000000232D043D0, 0xD000000000000012, 0x8000000232D090A0, v2 & 1);
    v0[13] = v3;
    if (v3)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CBFF68]);
      v5 = v1;
      v6 = [v4 init];
      v0[14] = v6;
      v7 = *(MEMORY[0x277CBFDF0] + 4);
      v8 = swift_task_alloc();
      v0[15] = v8;
      *v8 = v0;
      v8[1] = sub_232C11504;

      return MEMORY[0x282111978](v5, v6);
    }

    sub_232B4A95C();
    v9 = sub_232B4EC24();
    *v11 = 0xD000000000000027;
    *(v11 + 8) = 0x8000000232D090C0;
    *(v11 + 16) = 0;
  }

  else
  {
    sub_232B4A95C();
    v9 = sub_232B4EC24();
    *v10 = 0xD00000000000002BLL;
    *(v10 + 8) = 0x8000000232D04710;
    *(v10 + 16) = 0;
  }

  v12 = v0[1];

  return v12(v9, 1);
}

uint64_t sub_232C11504()
{
  v2 = *v1;
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v1;
  *(v2 + 128) = v6;
  *(v2 + 136) = v0;

  if (v0)
  {
    v7 = sub_232C11824;
  }

  else
  {
    v8 = *(v2 + 80);

    v7 = sub_232C11624;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_232C11624()
{
  v1 = v0[16];
  v2 = sub_232CE9D20();
  v3 = [v1 featureValueForName_];

  if (v3)
  {
    v4 = objc_allocWithZone(type metadata accessor for DUEncodingModelOutput());
    v5 = v3;
    v6 = DUEncodingModelOutput.init(modelName:hiddenLayerSize:nHiddenLayers:pooledFeatureValue:)(0x747265626C6F6D73, 0xEF6369706F542D6FLL, 256, 6, v5);
    v7 = v0[16];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[10];
    if (v6)
    {
      v11 = v6;

      swift_unknownObjectRelease();

      v12 = 0;
      goto LABEL_7;
    }

    sub_232B4A95C();
    v11 = sub_232B4EC24();
    *v18 = 0xD000000000000046;
    *(v18 + 8) = 0x8000000232D09150;
    *(v18 + 16) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = v0[16];
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[10];
    sub_232B4A95C();
    v11 = sub_232B4EC24();
    *v17 = 0xD000000000000028;
    *(v17 + 8) = 0x8000000232D09120;
    *(v17 + 16) = 0;

    swift_unknownObjectRelease();
  }

  v12 = 1;
LABEL_7:
  v19 = v0[1];

  return v19(v11, v12);
}

uint64_t sub_232C11824()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);

  sub_232CEA4F0();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x238391C30](0xD00000000000002CLL, 0x8000000232D090F0);
  *(v0 + 56) = v1;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  sub_232CEA5B0();
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_232B4A95C();
  v7 = sub_232B4EC24();
  *v8 = v5;
  *(v8 + 8) = v6;
  *(v8 + 16) = 0;

  v9 = *(v0 + 8);

  return v9(v7, 1);
}

uint64_t sub_232C119B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4EA38;

  return sub_232C110F4(a2);
}

char *DUTopicResult.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v7);
  v9 = *(v8 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  v70 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  v13 = sub_232B13F24(v70);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v18 = v17 - v16;
  v19 = sub_232B124A8(&qword_27DDC7BF8, &qword_232CFBFE8);
  sub_232B2D120(v19);
  v21 = *(v20 + 64);
  sub_232B2D114();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v70 - v24;
  v26 = *(a2 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_232B20704();
  v30 = v29 - v28;
  v31 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v32 = sub_232B13F24(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_232B20704();
  sub_232C071E8();
  v35 = [objc_allocWithZone(v4) init];
  (*(v26 + 16))(v30, a1, a2);
  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v36, v37, v38, v31);
    sub_232C13FD0();
    sub_232C1262C(v25, v3, v39);
    sub_232C12540(v3 + v31[6], v12);
    v40 = v70;
    if (sub_232B12480(v12, 1, v70) == 1)
    {
      *v18 = 0;
      *(v18 + 8) = 1;
      *(v18 + 16) = 0;
      v41 = v18 + *(v40 + 24);
      sub_232CE9330();
      if (sub_232B12480(v12, 1, v40) != 1)
      {
        sub_232B13790(v12, &qword_27DDC6AC0, &unk_232CFBF50);
      }
    }

    else
    {
      sub_232C13FB8();
      sub_232C1262C(v12, v18, v45);
    }

    v46 = [objc_allocWithZone(type metadata accessor for DUGlobalTopicSetIdentifier()) init];
    (*(v26 + 8))(a1, a2);
    v47 = *v18;
    if (*(v18 + 8))
    {
      v48 = *v18 != 0;
    }

    else
    {
      v48 = *v18;
    }

    v49 = DUGlobalTopicSetName.init(rawValue:)(v48);
    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = v49;
    }

    v52 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
    sub_232B13F5C();
    *&v46[v52] = v51;
    v53 = *(v18 + 16);
    sub_232C13FA0();
    sub_232C125D4(v18, v54);
    v55 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
    sub_232B13F5C();
    *&v46[v55] = v53;
    v56 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
    sub_232B13F5C();
    v57 = *&v35[v56];
    *&v35[v56] = v46;

    v58 = (v3 + v31[7]);
    if (v58[1])
    {
      v59 = *v58;
      v60 = v58[1];
    }

    else
    {
      v59 = 0;
      v60 = 0xE000000000000000;
    }

    v61 = &v35[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier];
    sub_232B13F5C();
    v62 = *(v61 + 1);
    *v61 = v59;
    *(v61 + 1) = v60;

    v63 = (v3 + v31[8]);
    if (*(v63 + 8))
    {
      v64 = 0.0;
    }

    else
    {
      v64 = *v63;
    }

    v65 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
    sub_232B13F5C();
    *&v35[v65] = v64;
    v66 = *v3;

    sub_232C125D4(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
    v67 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
    sub_232B13F5C();
    v68 = *&v35[v67];
    *&v35[v67] = v66;
  }

  else
  {
    (*(v26 + 8))(a1, a2);

    sub_232B55484();
    sub_232B12504(v42, v43, v44, v31);
    sub_232B13790(v25, &qword_27DDC7BF8, &qword_232CFBFE8);
    return 0;
  }

  return v35;
}

unint64_t DUGlobalTopicSetName.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_232C11F74@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DUGlobalTopicSetName.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_232C11FD8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
  sub_232B26BFC();
  return *(v0 + v1);
}

uint64_t sub_232C12034(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
  result = sub_232B26C50();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232C120E4()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  sub_232B26BFC();
  return *(v0 + v1);
}

uint64_t sub_232C12140(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  result = sub_232B26C50();
  *(v1 + v3) = a1;
  return result;
}

char *sub_232C121CC(uint64_t a1)
{
  v3 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [objc_allocWithZone(v1) init];
  sub_232C1262C(a1, v6, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
  v8 = *v6;
  if (v6[8])
  {
    v9 = *v6 != 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = DUGlobalTopicSetName.init(rawValue:)(v9);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
  swift_beginAccess();
  *&v7[v13] = v12;
  v14 = *(v6 + 2);
  sub_232C125D4(v6, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
  v15 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  swift_beginAccess();
  *&v7[v15] = v14;
  return v7;
}

char *DUGlobalTopicSetIdentifier.__allocating_init<A>(proto:)()
{
  v2 = v0;
  v3 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v3);
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232C071E8();
  v7 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  v8 = sub_232B13F24(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v13 = v12 - v11;
  v14 = [objc_allocWithZone(v2) init];
  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v15, v16, v17, v7);
    sub_232C13FB8();
    sub_232C1262C(v1, v13, v18);
    v19 = *v13;
    if (*(v13 + 8))
    {
      v20 = *v13 != 0;
    }

    else
    {
      v20 = *v13;
    }

    v21 = DUGlobalTopicSetName.init(rawValue:)(v20);
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = v21;
    }

    v24 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
    sub_232B13F5C();
    *&v14[v24] = v23;
    v25 = *(v13 + 16);
    sub_232C13FA0();
    sub_232C125D4(v13, v26);
    v27 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
    sub_232B13F5C();
    *&v14[v27] = v25;
  }

  else
  {

    sub_232B55484();
    sub_232B12504(v28, v29, v30, v7);
    sub_232B13790(v1, &qword_27DDC6AC0, &unk_232CFBF50);
    return 0;
  }

  return v14;
}

uint64_t sub_232C124AC@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + *(type metadata accessor for DocumentUnderstanding_TopicSetIdentifier() + 24);
  sub_232CE9330();
  v4 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
  sub_232B13F74();
  v5 = *(v1 + v4);
  sub_232C7C5F4();
  if ((v7 & 0x100) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *a1 = v8;
  *(a1 + 8) = v7 & 1 | HIBYTE(v7) & 1;
  v9 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  result = sub_232B13F74();
  *(a1 + 16) = *(v1 + v9);
  return result;
}

uint64_t sub_232C12540(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C125D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232C1262C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232C1268C@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  v4 = sub_232B2D120(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  sub_232C071E8();
  sub_232C124AC(v1);
  v7 = [objc_allocWithZone(type metadata accessor for DUGlobalTopicSetIdentifier()) init];
  v8 = *v1;
  if (*(v1 + 8))
  {
    v9 = *v1 != 0;
  }

  else
  {
    v9 = *v1;
  }

  v10 = DUGlobalTopicSetName.init(rawValue:)(v9);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
  sub_232B13F5C();
  *&v7[v13] = v12;
  v14 = *(v1 + 16);
  sub_232C13FA0();
  sub_232C125D4(v1, v15);
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  sub_232B13F5C();
  *&v7[v16] = v14;
  result = sub_232B124A8(&qword_27DDC7C30, &qword_232CFBFF0);
  a1[3] = result;
  *a1 = v7;
  return result;
}

id DUGlobalTopicSetIdentifier.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUGlobalTopicSetIdentifier();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *sub_232C129A0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232C121CC(a1);
  *a2 = result;
  return result;
}

id sub_232C129FC()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  sub_232B26BFC();
  v2 = *(v0 + v1);

  return v2;
}

void sub_232C12A9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232C12BA8()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier);
  sub_232B13F74();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_232C12C68(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier);
  sub_232B13F5C();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232C12CC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232C12C68(v2, v3);
}

double sub_232C12D70()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
  sub_232B26BFC();
  return *(v0 + v1);
}

uint64_t sub_232C12DC8(double a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
  result = sub_232B13F5C();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232C12EB0()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
  sub_232B26BFC();
  v2 = *(v0 + v1);
}

uint64_t sub_232C12F50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232C12F98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232C12F50(v4);
}

uint64_t sub_232C13010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v3);
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - v7;
  v9 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  v10 = sub_232B13F24(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v56 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v55 = &v54 - v18;
  v19 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  sub_232B20704();
  v24 = (v23 - v22);
  *(v23 - v22) = MEMORY[0x277D84F90];
  v25 = v23 - v22 + v20[7];
  sub_232CE9330();
  v26 = v20[8];
  sub_232B55484();
  sub_232B12504(v27, v28, v29, v9);
  v30 = (v24 + v20[9]);
  *v30 = 0;
  v30[1] = 0;
  v31 = v24 + v20[10];
  *v31 = 0;
  v31[8] = 1;
  v32 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  sub_232B13F74();
  v33 = *(v2 + v32);
  sub_232C124AC(v17);

  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v34, v35, v36, v9);
    v37 = v8;
    v38 = v55;
    sub_232C1262C(v37, v55, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    v39 = v38;
    v40 = v56;
    sub_232C1262C(v39, v56, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    sub_232B13790(v24 + v26, &qword_27DDC6AC0, &unk_232CFBF50);
    sub_232C1262C(v40, v24 + v26, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    sub_232B351FC();
    sub_232B12504(v41, v42, v43, v9);
  }

  else
  {
    sub_232B55484();
    sub_232B12504(v44, v45, v46, v9);
    sub_232B13790(v8, &qword_27DDC6AC0, &unk_232CFBF50);
  }

  v47 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier);
  sub_232B13F74();
  v48 = *v47;
  v49 = v47[1];
  *v30 = v48;
  v30[1] = v49;
  v50 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
  sub_232B13F74();
  *v31 = *(v2 + v50);
  v31[8] = 0;
  v51 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
  sub_232B13F74();
  *v24 = *(v2 + v51);
  sub_232C13FD0();
  sub_232C1262C(v24, v57, v52);
}

uint64_t sub_232C1332C@<X0>(char **a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v4 = sub_232B2D120(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  sub_232C071E8();
  sub_232C13010(v1);
  v7 = sub_232C0FAF0(v1);
  result = sub_232B124A8(&qword_27DDC7C40, &qword_232CFBFF8);
  a1[3] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_232C133D4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_232B203C8(v8, v8[3]);
  v6 = sub_232CEA740();
  sub_232B2040C(v8);
  return v6;
}

void sub_232C13484(void *a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2();
  sub_232C13F54(a3, v7, a4);
  v8 = sub_232CE98A0();
  if (v8)
  {
    v9 = v8;
    v10 = sub_232CE9D20();
    [a1 encodeObject:v9 forKey:v10];
  }
}

uint64_t sub_232C13640(void *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C13F54(a2, v6, a3);
  sub_232CE98B0();

  v7 = v9;
  if (!v9)
  {
LABEL_5:
    swift_getObjectType();
    sub_232C072C8();
    return 0;
  }

  swift_getObjectType();
  sub_232C072C8();
  return v7;
}

id DUTopicResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUTopicResult.init()()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for DUGlobalTopicSetIdentifier()) init];
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames] = MEMORY[0x277D84F90];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DUTopicResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_232C13870(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_232C138AC()
{
  result = qword_27DDC7C50;
  if (!qword_27DDC7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7C50);
  }

  return result;
}

char *sub_232C139BC@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232C0FE34(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C13F54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_232C13FE8(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_232CE8B90();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_232CE8C00();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_232CE8B30();

    swift_willThrow();
    v11 = sub_232CE8C00();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t FileType.hashValue.getter()
{
  v1 = *v0;
  sub_232CEA820();
  MEMORY[0x2383925C0](v1);
  return sub_232CEA850();
}

unint64_t sub_232C141EC()
{
  result = qword_27DDC7C70;
  if (!qword_27DDC7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7C70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FileType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232C1431C()
{
  v0 = sub_232CEA220();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232CEA210();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_232CE9AD0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_232BA4DEC(0, &qword_27DDC75D8, 0x277D85C78);
  sub_232CE9AB0();
  v10[1] = MEMORY[0x277D84F90];
  sub_232C15A40();
  sub_232B124A8(&qword_27DDC7C80, &unk_232CFC260);
  sub_232C15A98();
  sub_232CEA440();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_232CEA250();
  qword_27DDC7C68 = result;
  return result;
}

uint64_t sub_232C14534()
{
  v1 = v0;
  *(v0 + 16) = [objc_opt_self() client];
  if (qword_2814DFA50 != -1)
  {
    sub_232BB2CAC();
  }

  v2 = sub_232CE9A30();
  sub_232B135C4(v2, qword_2814E3DA8);
  v3 = sub_232CE9A00();
  v4 = sub_232CEA1A0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = 313;
    _os_log_impl(&dword_232B02000, v3, v4, "Initializing trial client for client id:%d", v5, 8u);
    sub_232BA6A84();
  }

  return v1;
}

id sub_232C14630(id result, _BYTE *a2)
{
  if (*a2)
  {
    result = [result directoryValue];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result fileValue];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_232C14684()
{
  sub_232C15B18();
  v2 = *v1;
  v3 = *(v0 + 16);
  sub_232BAE188();
  v4 = sub_232CE9D20();
  sub_232BA5C94();
  v5 = sub_232CE9D20();
  v6 = [v3 levelForFactor:v4 withNamespaceName:v5];

  if (v6)
  {
    LOBYTE(v39) = v2;
    v7 = sub_232C14630(v6, &v39);
    if (([v7 hasPath] & 1) == 0)
    {
      if (qword_2814DFA50 != -1)
      {
        sub_232BB2CAC();
      }

      v8 = sub_232CE9A30();
      sub_232B135C4(v8, qword_2814E3DA8);

      v9 = sub_232CE9A00();
      v10 = sub_232CEA1A0();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = sub_232C15B2C();
        v39 = swift_slowAlloc();
        *v11 = 136315394;
        v12 = sub_232BAE188();
        *(v11 + 4) = sub_232BAD2D4(v12, v13, v14);
        *(v11 + 12) = 2080;
        v15 = sub_232BA5C94();
        *(v11 + 14) = sub_232BAD2D4(v15, v16, v17);
        _os_log_impl(&dword_232B02000, v9, v10, "Trial asset has no path, attempting download for factor: %s in namespace: %s", v11, 0x16u);
        swift_arrayDestroy();
        sub_232BA6A84();
        sub_232BA6A84();
      }

      v18 = sub_232C15B04();
      sub_232C14B7C(v18, v19, v20, v21);
    }
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v22 = sub_232CE9A30();
    sub_232B135C4(v22, qword_2814E3DA8);

    v23 = sub_232CE9A00();
    v24 = sub_232CEA1C0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_232C15B2C();
      v39 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = sub_232BAE188();
      *(v25 + 4) = sub_232BAD2D4(v26, v27, v28);
      *(v25 + 12) = 2080;
      v29 = sub_232BA5C94();
      *(v25 + 14) = sub_232BAD2D4(v29, v30, v31);
      sub_232BD42D8(&dword_232B02000, v32, v33, "Error retrieving level for factor: %s in namespace: %s");
      swift_arrayDestroy();
      sub_232BA6A84();
      sub_232BA6A84();
    }

    v34 = sub_232C15B04();
    sub_232C14B7C(v34, v35, v36, v37);
    return 0;
  }

  return v7;
}

uint64_t sub_232C149A0()
{
  sub_232C15B18();
  v1 = *(v0 + 16);
  sub_232BAE188();
  v2 = sub_232CE9D20();
  sub_232BA5C94();
  v3 = sub_232CE9D20();
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v6 = sub_232CE9A30();
    sub_232B135C4(v6, qword_2814E3DA8);

    v7 = sub_232CE9A00();
    v8 = sub_232CEA1C0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_232C15B2C();
      swift_slowAlloc();
      *v9 = 136315394;
      v10 = sub_232BAE188();
      *(v9 + 4) = sub_232BAD2D4(v10, v11, v12);
      *(v9 + 12) = 2080;
      v13 = sub_232BA5C94();
      *(v9 + 14) = sub_232BAD2D4(v13, v14, v15);
      sub_232BD42D8(&dword_232B02000, v16, v17, "Error retrieving level for factor: %s in namespace: %s");
      swift_arrayDestroy();
      sub_232BA6A84();
      sub_232BA6A84();
    }

    v18 = sub_232C15B04();
    sub_232C14B7C(v18, v19, v20, v21);
    return 2;
  }

  return v5;
}

void sub_232C14B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  sub_232BD42B8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_232CF6460;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v18 = v9;

  v11 = sub_232CE9FD0();

  v12 = sub_232CE9D20();
  if (qword_27DDC63C8 != -1)
  {
    swift_once();
  }

  v17 = qword_27DDC7C68;
  sub_232BD42B8();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v23 = sub_232C159D4;
  v24 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_232C14F9C;
  v22 = &unk_284812938;
  v14 = _Block_copy(&aBlock);

  sub_232BD42B8();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  v23 = sub_232C15A34;
  v24 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_232C153AC;
  v22 = &unk_284812988;
  v16 = _Block_copy(&aBlock);

  [v18 downloadLevelsForFactors:v11 withNamespace:v12 queue:v17 options:0 progress:v14 completion:v16];
  _Block_release(v16);
  _Block_release(v14);
}

void sub_232C14DE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (qword_2814DFA50 != -1)
  {
    swift_once();
  }

  v10 = sub_232CE9A30();
  sub_232B135C4(v10, qword_2814E3DA8);

  oslog = sub_232CE9A00();
  v11 = sub_232CEA1A0();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_232BAD2D4(a2, a3, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_232BAD2D4(a4, a5, &v15);
    *(v12 + 22) = 2048;
    *(v12 + 24) = a1;
    _os_log_impl(&dword_232B02000, oslog, v11, "Trial download for factor: %s in namespace %s is %ld%% complete", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238393870](v13, -1, -1);
    MEMORY[0x238393870](v12, -1, -1);
  }
}

uint64_t sub_232C14F9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_232C14FF0(int a1, NSObject *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {
    v11 = a2;
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v12 = sub_232CE9A30();
    sub_232B135C4(v12, qword_2814E3DA8);
    v13 = a2;

    v14 = sub_232CE9A00();
    v15 = sub_232CEA1C0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_232BAD2D4(a3, a4, &v27);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_232BAD2D4(a5, a6, &v27);
      *(v16 + 22) = 2080;
      swift_getErrorValue();
      v18 = sub_232CEA7B0();
      v20 = sub_232BAD2D4(v18, v19, &v27);

      *(v16 + 24) = v20;
      _os_log_impl(&dword_232B02000, v14, v15, "Error downloading levels for factor: %s in namespace: %s. Error: %s ", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x238393870](v17, -1, -1);
      MEMORY[0x238393870](v16, -1, -1);

      return;
    }

    v25 = a2;
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v21 = sub_232CE9A30();
    sub_232B135C4(v21, qword_2814E3DA8);

    oslog = sub_232CE9A00();
    v22 = sub_232CEA1A0();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_232BAD2D4(a3, a4, &v27);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_232BAD2D4(a5, a6, &v27);
      _os_log_impl(&dword_232B02000, oslog, v22, "Successfully downloaded levels for factor: %s in namespace: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238393870](v24, -1, -1);
      MEMORY[0x238393870](v23, -1, -1);

      return;
    }

    v25 = oslog;
  }
}

void sub_232C153AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_232C15424(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v44 = a5;
  v7 = sub_232CE8B40();
  v8 = sub_232B48F0C(v7);
  v43 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - v16;
  v18 = sub_232CE8C00();
  v19 = sub_232B48F0C(v18);
  v45 = v20;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v46 = a3;
  v47 = &v42 - v26;
  LOBYTE(v48) = 1;
  v27 = a4;
  v28 = sub_232C14684();
  if (!v28)
  {
    goto LABEL_6;
  }

  v29 = v28;
  if (![v28 hasPath])
  {

LABEL_6:
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v36 = sub_232CE9A30();
    sub_232B135C4(v36, qword_2814E3DA8);

    v37 = sub_232CE9A00();
    v38 = sub_232CEA1C0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_232BAD2D4(v46, v27, &v48);
      _os_log_impl(&dword_232B02000, v37, v38, "Unable to find a path to model asset factor: %s", v39, 0xCu);
      sub_232B2040C(v40);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    return 0;
  }

  result = sub_232C3B410(v29);
  if (v31)
  {
    v32 = v18;
    sub_232B12504(v17, 1, 1, v18);
    (*(v43 + 104))(v13, *MEMORY[0x277CC91D8], v7);
    v33 = v47;
    sub_232CE8BE0();
    v34 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    [v34 setExperimentalMLE5EngineUsage_];
    sub_232BA4DEC(0, &qword_2814DF8D0, 0x277CBFF20);
    v35 = v45;
    (*(v45 + 16))(v25, v33, v32);
    v41 = sub_232C13FE8(v25, v34);
    (*(v35 + 8))(v33, v32);

    return v41;
  }

  __break(1u);
  return result;
}

uint64_t sub_232C159E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232C159F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_232BD42B8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

unint64_t sub_232C15A40()
{
  result = qword_27DDC7C78;
  if (!qword_27DDC7C78)
  {
    sub_232CEA210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7C78);
  }

  return result;
}

unint64_t sub_232C15A98()
{
  result = qword_27DDC7C88;
  if (!qword_27DDC7C88)
  {
    sub_232B27EEC(&qword_27DDC7C80, &unk_232CFC260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7C88);
  }

  return result;
}

uint64_t sub_232C15B2C()
{

  return swift_slowAlloc();
}

uint64_t sub_232C15B44@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUUserInterfaceUnderstandingSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281932770;
  *a1 = result;
  return result;
}

uint64_t sub_232C15BAC()
{
  v1 = *(*(v0 + 64) + 24);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    v2 = [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResult()) init];
    v3 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier];
    swift_beginAccess();
    v4 = *(v3 + 1);
    *v3 = 0x6564692D74736574;
    *(v3 + 1) = 0xEF7265696669746ELL;

    v5 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
    v6 = swift_beginAccess();
    *&v2[v5] = 0x3FF0000000000000;
    MEMORY[0x238391D50](v6);
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_232CEA000();
    }

    sub_232CEA020();
    v7 = v11;
  }

  else
  {
    sub_232B4A95C();
    v7 = swift_allocError();
    *v8 = 0xD000000000000015;
    *(v8 + 8) = 0x8000000232D04650;
    *(v8 + 16) = 0;
  }

  v9 = *(v0 + 8);

  return v9(v7, v1 == 0);
}

uint64_t sub_232C15D9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232C15B8C(a2);
}

char *DUUserInterfaceUnderstandingResponse.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v6 = sub_232B13F24(v86);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v87 = v10 - v9;
  v11 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v12 = sub_232B2D120(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_232B3516C();
  v84 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v85 = &v77 - v18;
  v19 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  v88 = *(v19 - 8);
  v89 = v19;
  v20 = *(v88 + 64);
  MEMORY[0x28223BE20](v19);
  sub_232B3516C();
  v23 = (v21 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v77 - v25;
  v27 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  v28 = sub_232B2D120(v27);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v77 - v32;
  v34 = *(a2 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_232B20704();
  v38 = v37 - v36;
  v39 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v40 = sub_232B13F24(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_232B20704();
  v45 = (v44 - v43);
  v46 = [objc_allocWithZone(v3) init];
  (*(v34 + 16))(v38, a1, a2);
  v47 = v39;
  if (swift_dynamicCast())
  {
    v48 = a1;
    v83 = v34;
    v82 = v47;
    sub_232B12504(v33, 0, 1, v47);
    sub_232C16530(v33, v45, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
    v49 = *v45;
    v50 = MEMORY[0x277D84F90];
    v90 = MEMORY[0x277D84F90];
    v51 = *(v49 + 16);
    if (v51)
    {
      v78 = v45;
      v79 = v46;
      v80 = v48;
      v81 = a2;
      v52 = v49 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
      v88 = *(v88 + 72);
      do
      {
        sub_232C164CC(v52, v26);
        sub_232C164CC(v26, v23);
        v53 = [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResult()) init];
        sub_232C17130(v26, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
        v55 = *v23;
        v54 = v23[1];
        v56 = &v53[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier];
        sub_232B13F5C();
        v57 = *(v56 + 1);
        *v56 = v55;
        *(v56 + 1) = v54;

        v58 = (v23 + *(v89 + 24));
        v59 = *v58;
        LODWORD(v54) = *(v58 + 8);
        sub_232C17130(v23, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
        if (v54)
        {
          v59 = 0.0;
        }

        v60 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
        v61 = sub_232B13F5C();
        *&v53[v60] = v59;
        MEMORY[0x238391D50](v61);
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v52 += v88;
        --v51;
      }

      while (v51);
      v50 = v90;
      a2 = v81;
      v48 = v80;
      v62 = v87;
      v46 = v79;
      v45 = v78;
    }

    else
    {
      v62 = v87;
    }

    v63 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
    sub_232B13F5C();
    v64 = *&v46[v63];
    *&v46[v63] = v50;

    v65 = *(v82 + 24);
    v66 = v85;
    sub_232B21B7C(v45 + v65, v85);
    v67 = v86;
    v68 = sub_232B12480(v66, 1, v86);
    v69 = v83;
    if (v68 == 1)
    {
      (*(v83 + 8))(v48, a2);
      sub_232B13790(v66, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C1743C();
    }

    else
    {
      sub_232B13790(v66, &qword_27DDC67C8, &unk_232CF5E70);
      v70 = v45 + v65;
      v71 = v84;
      sub_232B21B7C(v70, v84);
      if (sub_232B12480(v71, 1, v67) == 1)
      {
        sub_232CE9330();
        v72 = (v62 + *(v67 + 20));
        *v72 = 0;
        v72[1] = 0;
        if (sub_232B12480(v71, 1, v67) != 1)
        {
          sub_232B13790(v71, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C16530(v71, v62, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      }

      v73 = sub_232B4C530();
      (*(v69 + 8))(v48, a2);
      sub_232C1743C();
      v74 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
      sub_232B13F5C();
      v75 = *&v46[v74];
      *&v46[v74] = v73;
    }
  }

  else
  {
    (*(v34 + 8))(a1, a2);

    sub_232B12504(v33, 1, 1, v39);
    sub_232B13790(v33, &qword_27DDC7A30, &unk_232CFE950);
    return 0;
  }

  return v46;
}

uint64_t sub_232C164CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C16530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232C165EC()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
  sub_232B26BFC();
  v2 = *(v0 + v1);
}

uint64_t sub_232C16694(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232C166E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232C16694(v4);
}

void *sub_232C16794()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232C1682C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C1687C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232C1682C(v2);
}

id sub_232C168FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v5 = sub_232B2D120(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v10 = (v9 - v8);
  v11 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v12 = sub_232B2D120(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43[-v15];
  v17 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v18 = sub_232B13F24(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_232B3516C();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v43[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v43[-v28];
  *a1 = MEMORY[0x277D84F90];
  v30 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v31 = a1 + *(v30 + 20);
  sub_232CE9330();
  v32 = *(v30 + 24);
  sub_232C17464(a1 + v32, 1);
  v33 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
  swift_beginAccess();
  v34 = *(v2 + v33);
  if (!v34)
  {
    sub_232C17464(v16, 1);
    goto LABEL_5;
  }

  v35 = v34;
  sub_232B55A40(v27);

  v36 = swift_dynamicCast();
  sub_232C17464(v16, v36 ^ 1u);
  if (sub_232B12480(v16, 1, v17) == 1)
  {
LABEL_5:
    sub_232B13790(v16, &qword_27DDC67C8, &unk_232CF5E70);
    goto LABEL_6;
  }

  sub_232C16530(v16, v29, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232C16530(v29, v23, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232B13790(a1 + v32, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232C16530(v23, a1 + v32, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232C17464(a1 + v32, 0);
LABEL_6:
  v37 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
  swift_beginAccess();
  v38 = *(v2 + v37);
  v39 = sub_232B26B10(v38);

  for (i = 0; ; ++i)
  {
    if (v39 == i)
    {

      *a1 = MEMORY[0x277D84F90];
      return result;
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383922C0](i, v38);
    }

    else
    {
      if (i >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      result = *(v38 + 8 * i + 32);
    }

    v42 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_232C17ABC(v10);

    result = sub_232C17130(v10, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_232C16C48@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232C168FC((v7 - v6));
  v9 = sub_232BFCB90(v8);
  result = sub_232B124A8(&qword_27DDC7CA0, &qword_232CFC2D0);
  a1[3] = result;
  *a1 = v9;
  return result;
}

void sub_232C16D3C(void *a1)
{
  type metadata accessor for DUUserInterfaceUnderstandingResponse();
  sub_232C17424();
  sub_232C173DC(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUUserInterfaceUnderstandingResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C17424();
  sub_232C173DC(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B4D64C();
    return 0;
  }

  swift_getObjectType();
  sub_232B4D64C();
  return v5;
}

id DUUserInterfaceUnderstandingResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUUserInterfaceUnderstandingResponse.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUUserInterfaceUnderstandingResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DUUserInterfaceUnderstandingResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUUserInterfaceUnderstandingResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232C17108@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232BFCFF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C17130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232C173DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232C1743C()
{

  return sub_232C17130(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
}

uint64_t sub_232C17464(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

id DUUserInterfaceUnderstandingResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DUUserInterfaceUnderstandingResult.__allocating_init<A>(proto:)()
{
  v2 = sub_232B124A8(&qword_27DDC7CB8, &qword_232CFC360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B521C8();
  v8 = [objc_allocWithZone(v0) init];
  if (swift_dynamicCast())
  {
    sub_232B12504(v5, 0, 1, v6);
    sub_232C17748(v5, v1);
    v10 = *v1;
    v9 = v1[1];
    v11 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier];
    sub_232B13F5C();
    v12 = *(v11 + 1);
    *v11 = v10;
    *(v11 + 1) = v9;

    v13 = (v1 + *(v6 + 24));
    v14 = *v13;
    v15 = *(v13 + 8);
    sub_232C17C80(v1, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
    if (v15)
    {
      v14 = 0.0;
    }

    v16 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
    sub_232B13F5C();
    *&v8[v16] = v14;
  }

  else
  {

    sub_232B12504(v5, 1, 1, v6);
    sub_232C176E0(v5);
    return 0;
  }

  return v8;
}

uint64_t sub_232C176E0(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7CB8, &qword_232CFC360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C17748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C177F8()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier);
  sub_232B13F74();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_232C178B8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier);
  sub_232B13F5C();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232C17910(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232C178B8(v2, v3);
}

double sub_232C179C4()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
  sub_232B13F74();
  return *(v0 + v1);
}

uint64_t sub_232C17A24(double a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
  result = sub_232B13F5C();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232C17ABC@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v4 = a1 + v3[5];
  sub_232CE9330();
  v5 = v3[6];
  v6 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier();
  sub_232B12504(a1 + v5, 1, 1, v6);
  v7 = (a1 + v3[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1 + v3[8];
  *v8 = 0;
  v8[8] = 1;
  v9 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier);
  sub_232B13F74();
  v10 = *v9;
  v11 = v9[1];
  *v7 = v10;
  v7[1] = v11;
  v12 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
  sub_232B13F74();
  *v8 = *(v1 + v12);
  v8[8] = 0;
}

uint64_t sub_232C17BA0@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_232B521C8();
  sub_232C17ABC(v1);
  v5 = [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResult()) init];
  sub_232C17C80(v1, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);

  result = sub_232B124A8(&qword_27DDC7CD0, &qword_232CFC368);
  a1[3] = result;
  *a1 = 0;
  return result;
}

uint64_t sub_232C17C80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_232C17D40(void *a1)
{
  type metadata accessor for DUUserInterfaceUnderstandingResult();
  sub_232C18340();
  sub_232C182F8(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUUserInterfaceUnderstandingResult.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C18340();
  sub_232C182F8(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B3A3E0();
    return 0;
  }

  swift_getObjectType();
  sub_232B3A3E0();
  return v5;
}

id DUUserInterfaceUnderstandingResult.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DUUserInterfaceUnderstandingResult();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DUUserInterfaceUnderstandingResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUUserInterfaceUnderstandingResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232C180BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_232C174B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C182F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232C183B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 232) = a1;
  v4 = swift_task_alloc();
  *(v2 + 240) = v4;
  *v4 = v2;
  v4[1] = sub_232C18468;

  return sub_232B4FBC0(a2);
}

uint64_t sub_232C18468(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](sub_232C18568, 0, 0);
}

uint64_t sub_232C18568()
{
  v1 = v0[31];
  if (v1)
  {
    v2 = v0[29];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4)
    {
      v5 = *(v2 + v3);
      v6 = v5;
    }

    else
    {
      v6 = [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResponse()) init];
      v5 = 0;
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = v6;
    v7 = v6;
    v8 = v5;

    v9 = *(v2 + v3);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
      sub_232B13F74();
      v11 = *(v9 + v10);
    }

    else
    {

      v11 = v1;
    }

    v12 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
    swift_beginAccess();
    v13 = *&v7[v12];
    *&v7[v12] = v11;

    v14 = *(v2 + v3);
    if (v14)
    {
      swift_beginAccess();
      v15 = v14;
      sub_232C5E44C(v1);
      swift_endAccess();
    }

    else
    {
    }

    v16 = *(v2 + v3);
    if (v16)
    {
      v17 = v0[29];
      v18 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
      sub_232B13F74();
      v19 = *(v17 + v18);
      if (v19 && (v20 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo, sub_232B13F74(), (v21 = *(v19 + v20)) != 0))
      {
        v22 = v16;
        v23 = v21;
      }

      else
      {
        v24 = objc_allocWithZone(type metadata accessor for DUDebugInfo());
        v22 = v16;
        v21 = [v24 init];
      }

      v25 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
      swift_beginAccess();
      v26 = *&v22[v25];
      *&v22[v25] = v21;

      v27 = *(v2 + v3);
      if (v27)
      {
        v28 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
        sub_232B13F74();
        v29 = *(v27 + v28);
        if (v29)
        {
          swift_beginAccess();
          v30 = v29;
          MEMORY[0x238391C30](0xD000000000000022, 0x8000000232D095A0);
          swift_endAccess();
        }
      }
    }
  }

  v31 = v0[1];

  return v31();
}

id sub_232C18824()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 128;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232C18880(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_232BB0620;

  return sub_232C183B8(a1, a2);
}

uint64_t sub_232C18940(uint64_t a1)
{
  sub_232C18A2C(a1);
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2 == 0.0)
  {
    if (v3)
    {
      v14 = MEMORY[0x277D84F90];
      sub_232C18C20();
      result = v14;
      v5 = *(v14 + 16);
      do
      {
        v15 = result;
        v6 = *(result + 24);
        if (v5 >= v6 >> 1)
        {
          sub_232C18BFC(v6);
          result = v15;
        }

        *(result + 16) = v5 + 1;
        *(result + 4 * v5++ + 32) = 0;
        --v3;
      }

      while (v3);
    }
  }

  else if (v3)
  {
    v7 = v2;
    v16 = MEMORY[0x277D84F90];
    sub_232C18C20();
    result = v16;
    v8 = *(v16 + 16);
    do
    {
      v9 = *(a1 + 32);
      v10 = sub_232C18C5C(result);
      if (v12)
      {
        sub_232C18BFC(v11);
        v10 = v16;
      }

      result = sub_232C18C40(v10, v9 / v7);
    }

    while (!v13);
  }

  return result;
}

uint64_t sub_232C18A2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = a1;
    v12 = MEMORY[0x277D84F90];
    sub_232C18C20();
    v2 = v12;
    v3 = *(v12 + 16);
    do
    {
      v4 = *(v1 + 32);
      v5 = sub_232C18C5C(v2);
      if (v7)
      {
        sub_232C18BFC(v6);
        v5 = v12;
      }

      v2 = sub_232C18C40(v5, v4 * v4);
    }

    while (!v8);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
    v1 = *(MEMORY[0x277D84F90] + 16);
    if (!v1)
    {
    }
  }

  v9 = 0.0;
  v10 = 32;
  do
  {
    v9 = v9 + *(v2 + v10);
    v10 += 4;
    --v1;
  }

  while (v1);
}

uint64_t sub_232C18B10(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_232CE8C10();
      }

      else
      {
        v3 = sub_232CE89F0();
        v4 = *(v3 + 48);
        v5 = *(v3 + 52);
        swift_allocObject();
        sub_232CE89E0();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_232CE8C40();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v2;
        }

        else
        {
          return v1 << 34;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_232C18BFC(unint64_t a1@<X8>)
{

  sub_232B64AFC(a1 > 1, v1, 1);
}

void sub_232C18C20()
{

  sub_232B64AFC(0, v0, 0);
}

uint64_t sub_232C18C40(uint64_t result, float a2)
{
  *(result + 16) = v2;
  *(result + 4 * v3 + 32) = a2;
  return result;
}

uint64_t sub_232C18C70@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUWordPieceTokenizerSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281932858;
  *a1 = result;
  return result;
}

uint64_t sub_232C18CB8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_232CE9700();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_232B124A8(&qword_27DDC7CE0, &qword_232CFC4C8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_232CE9740();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C18E0C, 0, 0);
}

uint64_t sub_232C18E0C()
{
  v1 = 0xD000000000000015;
  sub_232CE9810();
  if (MEMORY[0x238391530]())
  {
    if (*(v0[3] + 24))
    {
      type metadata accessor for DUConcatenatedDocumentTextSpecification();
      v0[11] = swift_allocObject();
      v2 = swift_task_alloc();
      v0[12] = v2;
      *v2 = v0;
      v2[1] = sub_232C18FC4;
      v3 = v0[3];

      return sub_232B4F570(v3);
    }

    v5 = "ationRuleBasedImplementation";
  }

  else
  {
    v5 = "molBERToImplementation";
    v1 = 0xD00000000000001ALL;
  }

  v6 = v0[2];
  v7 = v5 | 0x8000000000000000;
  sub_232B4A95C();
  v8 = swift_allocError();
  *v9 = v1;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  *v6 = v8;
  sub_232B124A8(&qword_27DDC7CE8, &unk_232CFC4D0);
  swift_storeEnumTagMultiPayload();
  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_232C18FC4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return MEMORY[0x2822009F8](sub_232C190E4, 0, 0);
}

uint64_t sub_232C190E4()
{
  if (v0[14])
  {
    v2 = v0[7];
    v1 = v0[8];
    sub_232CE9730();
    if (sub_232B12480(v2, 1, v1) == 1)
    {
      v3 = v0[7];
      v4 = v0[2];

      sub_232C19418(v3);
      sub_232B4A95C();
      v5 = swift_allocError();
      *v6 = 0xD000000000000029;
      *(v6 + 8) = 0x8000000232D09640;
      *(v6 + 16) = 0;
      *v4 = v5;
    }

    else
    {
      v10 = v0[13];
      v12 = v0[9];
      v11 = v0[10];
      v13 = v0[8];
      v15 = v0[5];
      v14 = v0[6];
      v16 = v0[4];
      v17 = v0[2];
      (*(v12 + 32))(v11, v0[7], v13);
      sub_232CE9720();

      (*(v12 + 8))(v11, v13);
      (*(v15 + 32))(v17, v14, v16);
    }

    sub_232B124A8(&qword_27DDC7CE8, &unk_232CFC4D0);
  }

  else
  {
    v7 = v0[2];
    sub_232B4A95C();
    v8 = swift_allocError();
    *v9 = 0xD000000000000031;
    *(v9 + 8) = 0x8000000232D07CC0;
    *(v9 + 16) = 0;
    *v7 = v8;
    sub_232B124A8(&qword_27DDC7CE8, &unk_232CFC4D0);
  }

  swift_storeEnumTagMultiPayload();
  v18 = v0[10];
  v19 = v0[6];
  v20 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_232C19378(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232BB0620;

  return sub_232C18CB8(a1, a2);
}

uint64_t sub_232C19418(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7CE0, &qword_232CFC4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FeatureProviderWithMask()
{
  result = qword_27DDC7CF0;
  if (!qword_27DDC7CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C19554()
{
  sub_232C195F0();
  if (v0 <= 0x3F)
  {
    sub_232B5F2A0();
    if (v1 <= 0x3F)
    {
      sub_232C1964C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_232C195F0()
{
  result = qword_27DDC7D00;
  if (!qword_27DDC7D00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DDC7D00);
  }

  return result;
}

void sub_232C1964C()
{
  if (!qword_27DDC7D08)
  {
    sub_232CE9700();
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC7D08);
    }
  }
}

uint64_t FilesDocumentIngesterError.hashValue.getter()
{
  sub_232CEA820();
  MEMORY[0x2383925C0](0);
  return sub_232CEA850();
}

uint64_t sub_232C19714(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000232D03580 == a2;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000232D035A0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_232CEA750();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_232C1983C(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000010;
}

void sub_232C19898()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  v17 = sub_232B124A8(&qword_27DDC7D50, &qword_232CFC798);
  sub_232B48F0C(v17);
  v6 = *(v5 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  v8 = v2[4];
  sub_232B203C8(v2, v2[3]);
  sub_232C20C38();
  sub_232CEA870();
  if (v0)
  {
    sub_232B2040C(v2);
  }

  else
  {
    v16 = v4;
    LOBYTE(v19[0]) = 0;
    v9 = sub_232CEA680();
    v11 = v10;
    v15 = v9;
    sub_232B124A8(&qword_27DDC7D60, &qword_232CFC7A0);
    LOBYTE(v18[0]) = 1;
    sub_232C20C8C();
    sub_232CEA690();
    v14 = v19[0];
    sub_232C20D64();
    sub_232CEA690();
    v12 = sub_232C21DFC();
    v13(v12);
    memcpy(v22, v21, sizeof(v22));
    v18[0] = v15;
    v18[1] = v11;
    v18[2] = v14;
    memcpy(&v18[3], v21, 0x60uLL);
    sub_232C20DB8(v18, v19);
    sub_232B2040C(v2);
    v19[0] = v15;
    v19[1] = v11;
    v19[2] = v14;
    memcpy(v20, v22, sizeof(v20));
    sub_232C207C8(v19);
    memcpy(v16, v18, 0x78uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232C19B4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v3 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x48746E756F636361 && a2 == 0xED0000656C646E61;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6974636172747865 && a2 == 0xEE00657461446E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_232CEA750();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_232C19C6C(char a1)
{
  if (!a1)
  {
    return 2036625250;
  }

  if (a1 == 1)
  {
    return 0x48746E756F636361;
  }

  return 0x6974636172747865;
}

void sub_232C19CD4()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  v5 = sub_232B124A8(&qword_27DDC7D80, &qword_232CFC7A8);
  sub_232B48F0C(v5);
  v7 = *(v6 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  sub_232B203C8(v2, v2[3]);
  sub_232C20DF0();
  sub_232CEA870();
  if (v0)
  {
    sub_232B2040C(v2);
  }

  else
  {
    v10 = sub_232CEA680();
    v20 = v11;
    v18 = sub_232CEA680();
    v19 = v12;
    v13 = sub_232CEA680();
    v14 = sub_232C21DD0();
    v16 = v15;
    v17(v14, v5);
    sub_232B2040C(v2);
    *v4 = v10;
    v4[1] = v20;
    v4[2] = v18;
    v4[3] = v19;
    v4[4] = v13;
    v4[5] = v16;
  }

  sub_232BA6688();
}

uint64_t sub_232C19EF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697274536C6D7468 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000232D03870 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_232CEA750();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_232C19FD0(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x697274536C6D7468;
  }
}

void sub_232C1A010()
{
  sub_232BA66A0();
  v2 = v1;
  v14 = v3;
  v4 = sub_232B124A8(&qword_27DDC7DE8, qword_232CFCB28);
  sub_232B48F0C(v4);
  v6 = *(v5 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  sub_232C21ECC();
  v8 = v2[4];
  sub_232B203C8(v2, v2[3]);
  sub_232C213FC();
  sub_232CEA870();
  if (v0)
  {
    sub_232B2040C(v2);
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    v9 = sub_232CEA680();
    v11 = v10;
    sub_232C21450();
    sub_232CEA690();
    v12 = sub_232C21D60();
    v13(v12);
    memcpy(v19, v18, sizeof(v19));
    v15[0] = v9;
    v15[1] = v11;
    memcpy(&v15[2], v18, 0x50uLL);
    sub_232C214A4(v15, v16);
    sub_232B2040C(v2);
    v16[0] = v9;
    v16[1] = v11;
    memcpy(v17, v19, sizeof(v17));
    sub_232C214DC(v16);
    memcpy(v14, v15, 0x60uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232C1A22C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E7265646E6573 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D457265646E6573 && a2 == 0xEB000000006C6961;
      if (v7 || (sub_232CEA750() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F447265646E6573 && a2 == 0xEC0000006E69616DLL;
        if (v8 || (sub_232CEA750() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65697069636572 && a2 == 0xEE0073656D614E74;
          if (v9 || (sub_232CEA750() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E65697069636572 && a2 == 0xEF736C69616D4574)
          {

            return 5;
          }

          else
          {
            v11 = sub_232CEA750();

            if (v11)
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

uint64_t sub_232C1A43C(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x614E7265646E6573;
      break;
    case 2:
      result = 0x6D457265646E6573;
      break;
    case 3:
      result = 0x6F447265646E6573;
      break;
    case 4:
    case 5:
      result = 0x6E65697069636572;
      break;
    default:
      return result;
  }

  return result;
}

void sub_232C1A50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232BA66A0();
  v12 = v11;
  v14 = v13;
  v15 = sub_232B124A8(&qword_27DDC7E30, &qword_232CFCDD0);
  sub_232B48F0C(v15);
  v17 = *(v16 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v18);
  v19 = v12[3];
  v20 = v12[4];
  v21 = sub_232B35090();
  sub_232B203C8(v21, v22);
  sub_232C219A8();
  sub_232CEA870();
  if (v10)
  {
    sub_232B2040C(v12);
  }

  else
  {
    v23 = sub_232C21DDC();
    v25 = v24;
    v34 = sub_232C21DDC();
    v37 = v26;
    v33 = sub_232C21DDC();
    v36 = v27;
    LOBYTE(v39[0]) = 3;
    v32 = sub_232C21DDC();
    v35 = v28;
    LOBYTE(v38[0]) = 4;
    sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
    sub_232BB6358(&qword_27DDC7608, &qword_27DDC6908, &unk_232CF64D0);
    sub_232CEA690();
    v31 = v39[0];
    v40 = 5;
    sub_232CEA690();
    v29 = sub_232C21D50();
    v30(v29);
    v38[0] = v23;
    v38[1] = v25;
    v38[2] = v34;
    v38[3] = v37;
    v38[4] = v33;
    v38[5] = v36;
    v38[6] = v32;
    v38[7] = v35;
    v38[8] = v31;
    v38[9] = a10;
    sub_232C219FC(v38, v39);
    sub_232B2040C(v12);
    v39[0] = v23;
    v39[1] = v25;
    v39[2] = v34;
    v39[3] = v37;
    v39[4] = v33;
    v39[5] = v36;
    v39[6] = v32;
    v39[7] = v35;
    v39[8] = v31;
    v39[9] = a10;
    sub_232C21A34(v39);
    memcpy(v14, v38, 0x50uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232C1A960(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000232D03E80 == a2;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000232D03FB0 == a2;
      if (v7 || (sub_232CEA750() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
        if (v8 || (sub_232CEA750() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6F7250656C797473 && a2 == 0xEF73656974726570)
        {

          return 4;
        }

        else
        {
          v10 = sub_232CEA750();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_232C1AB10(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x65676E6172;
      break;
    case 4:
      result = 0x6F7250656C797473;
      break;
    default:
      return result;
  }

  return result;
}

void sub_232C1ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232BA66A0();
  v12 = v11;
  v14 = v13;
  v15 = sub_232B124A8(&qword_27DDC7DD8, &qword_232CFCB18);
  sub_232B48F0C(v15);
  v17 = *(v16 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v18);
  sub_232C21ECC();
  v19 = v12[4];
  sub_232B203C8(v12, v12[3]);
  sub_232C213A8();
  sub_232CEA870();
  if (v10)
  {
    sub_232B2040C(v12);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_232C21FEC();
    v25 = sub_232CEA680();
    v26 = v20;
    sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
    sub_232BB6358(&qword_27DDC7608, &qword_27DDC6908, &unk_232CF64D0);
    sub_232C21FEC();
    sub_232CEA690();
    v21 = sub_232BA7230();
    sub_232B124A8(v21, v22);
    sub_232BB6358(&qword_27DDC7610, &qword_27DDC75C0, &qword_232CFCB20);
    sub_232C21F20();
    sub_232CEA690();
    sub_232C21F20();
    sub_232C21FEC();
    sub_232CEA690();
    sub_232C21FEC();
    sub_232CEA690();
    v23 = sub_232C21D80();
    v24(v23);
    sub_232B2040C(v12);
    *v14 = v25;
    v14[1] = v26;
    v14[2] = a10;
    v14[3] = a10;
    v14[4] = a10;
    v14[5] = a10;
  }

  sub_232BA6688();
}

uint64_t sub_232C1AF50()
{
  sub_232CEA820();
  MEMORY[0x2383925C0](0);
  return sub_232CEA850();
}

uint64_t sub_232C1AF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C19714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C1AFC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232C19834();
  *a1 = result;
  return result;
}

uint64_t sub_232C1AFE8(uint64_t a1)
{
  v2 = sub_232C20C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C1B024(uint64_t a1)
{
  v2 = sub_232C20C38();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_232C1B060(void *a1@<X8>)
{
  sub_232C19898();
  if (!v1)
  {
    memcpy(a1, __src, 0x78uLL);
  }
}

uint64_t sub_232C1B0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C19B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C1B0DC(uint64_t a1)
{
  v2 = sub_232C20DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C1B118(uint64_t a1)
{
  v2 = sub_232C20DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_232C1B154@<D0>(_OWORD *a1@<X8>)
{
  sub_232C19CD4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_232C1B1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C19EF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C1B1C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232C19FC8();
  *a1 = result;
  return result;
}

uint64_t sub_232C1B1F0(uint64_t a1)
{
  v2 = sub_232C213FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C1B22C(uint64_t a1)
{
  v2 = sub_232C213FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_232C1B268(void *a1@<X8>)
{
  sub_232C1A010();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

uint64_t sub_232C1B2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C1A22C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C1B2E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232C1A434();
  *a1 = result;
  return result;
}

uint64_t sub_232C1B30C(uint64_t a1)
{
  v2 = sub_232C219A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C1B348(uint64_t a1)
{
  v2 = sub_232C219A8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_232C1B384(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_232C1A50C(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  if (!v9)
  {
    memcpy(a9, v11, 0x50uLL);
  }
}

uint64_t sub_232C1B3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C1A960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C1B400(uint64_t a1)
{
  v2 = sub_232C213A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C1B43C(uint64_t a1)
{
  v2 = sub_232C213A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_232C1B478@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_232C1ABB8(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v15;
    result = *&v16;
    a9[2] = v16;
  }

  return result;
}

uint64_t sub_232C1B4BC(uint64_t a1)
{
  v3 = sub_232CE8C00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232CE9A30();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  sub_232CE9A20();
  v14 = *(v4 + 16);
  v39 = a1;
  v14(v7, a1, v3);
  v15 = sub_232CE9A00();
  v16 = sub_232CEA1A0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v8;
    v18 = v17;
    v35[0] = swift_slowAlloc();
    v40 = v35[0];
    *v18 = 136315138;
    v19 = sub_232CE8B60();
    v35[1] = v1;
    v21 = v20;
    (*(v4 + 8))(v7, v3);
    v22 = sub_232BAD2D4(v19, v21, &v40);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_232B02000, v15, v16, "Checking if url %s is a dataless fault", v18, 0xCu);
    v23 = v35[0];
    sub_232B2040C(v35[0]);
    MEMORY[0x238393870](v23, -1, -1);
    v24 = v18;
    v8 = v36;
    MEMORY[0x238393870](v24, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v25 = *(v38 + 8);
  v25(v13, v8);
  v26 = objc_opt_self();
  v27 = sub_232CE8B90();
  v28 = [v26 isURLDatalessFault_];

  if (!v28)
  {
    v29 = 0;
    return v29 & 1;
  }

  if (v28 == 2)
  {
LABEL_12:
    sub_232C20E44();
    swift_allocError();
    swift_willThrow();
    return v29 & 1;
  }

  if (v28 != 1)
  {
    v30 = v37;
    sub_232CE9A20();
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1D0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_232B02000, v31, v32, "Received unknown return value from isURLDatalessFault", v33, 2u);
      MEMORY[0x238393870](v33, -1, -1);
    }

    v25(v30, v8);
    goto LABEL_12;
  }

  v29 = 1;
  return v29 & 1;
}

void static FilesDocumentIngester.ingestDocumentFromFile(fileURL:)()
{
  sub_232B35110();
  v1 = v0;
  v2 = sub_232CE8C00();
  v3 = sub_232B48F0C(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  sub_232C21ECC();
  v6 = sub_232CE9A30();
  v7 = sub_232B48F0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  sub_232BA6FF8();
  if ((sub_232C1B4BC(v1) & 1) == 0)
  {
    sub_232CE9A20();
    v12 = sub_232C21F08();
    v13(v12);
    v14 = sub_232CE9A00();
    v15 = sub_232CEA1A0();
    if (sub_232C21F58(v15))
    {
      v16 = sub_232BC1F80();
      v31 = sub_232BD41CC();
      v32 = v31;
      *v16 = 136315138;
      v30 = sub_232CE8B60();
      v18 = v17;
      v19 = sub_232C21D60();
      v20(v19);
      v21 = sub_232BAD2D4(v30, v18, &v32);

      *(v16 + 4) = v21;
      sub_232C21EA4(&dword_232B02000, v22, v23, "url %s is not a dataless fault.  Will attempt to ingest the file.");
      sub_232B2040C(v31);
      sub_232BD719C();
      sub_232BA6A84();
    }

    else
    {

      v24 = sub_232C21D60();
      v25(v24);
    }

    v26 = *(v9 + 8);
    v27 = sub_232BA5C94();
    v28(v27);
    sub_232C22024();
    sub_232C1BB34();
    switch(v29)
    {
      case 1:
        static FilesDocumentIngester.readFromOffice(fileURL:)();
        break;
      case 2:
        sub_232C22024();
        static FilesDocumentIngester.readFromJson(fileURL:)();
        break;
      case 3:
        static FilesDocumentIngester.readFromText(fileURL:)();
        break;
      case 4:
        static FilesDocumentIngester.readFromEML(fileURL:)();
        break;
      case 5:
        break;
      default:
        static FilesDocumentIngester.readFromPDF(fileURL:)();
        break;
    }
  }

  sub_232B20A00();
}

void sub_232C1BB34()
{
  sub_232C22098();
  sub_232C1EE24();
  v2 = v1;
  v4 = v3;
  sub_232CE9890();
  v5 = sub_232CE9840();
  v19 = v2;
  v20 = v4;
  v18[2] = &v19;
  sub_232C0A5F8(sub_232B551FC, v18, v5);
  sub_232C22050();
  if ((v0 & 1) == 0)
  {
    sub_232CE9880();
    sub_232C21E34();
    MEMORY[0x28223BE20](v6);
    sub_232B55380();
    *(v7 - 16) = &v19;
    sub_232C0A5F8(sub_232B55340, v8, v5);
    sub_232C22050();
    sub_232CE9860();
    sub_232C21E34();
    MEMORY[0x28223BE20](v9);
    sub_232B55380();
    *(v10 - 16) = &v19;
    sub_232C0A5F8(sub_232B55340, v11, v5);
    sub_232C22050();
    sub_232CE9850();
    sub_232C21E34();
    MEMORY[0x28223BE20](v12);
    sub_232B55380();
    *(v13 - 16) = &v19;
    sub_232C0A5F8(sub_232B55340, v14, v5);
    sub_232C22050();
    v15 = sub_232CE9830();
    v19 = v2;
    v20 = v4;
    MEMORY[0x28223BE20](v15);
    sub_232B55380();
    *(v16 - 16) = &v19;
    sub_232C0A5F8(sub_232B55340, v17, v15);
  }

  sub_232B20A58();
}

void static FilesDocumentIngester.readFromJson(fileURL:)()
{
  sub_232B35110();
  v96 = v0;
  sub_232B37B54();
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v104 = v4;
  v105 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_232B20628();
  v102 = v11;
  sub_232B20600();
  MEMORY[0x28223BE20](v12);
  v98 = &v94 - v13;
  v14 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v14);
  v16 = *(v15 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v17);
  v95 = &v94 - v18;
  v19 = sub_232CE9DA0();
  v20 = sub_232B48F0C(v19);
  v99 = v21;
  v100 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v26 = v25 - v24;
  v27 = sub_232CE8C00();
  v28 = sub_232B48F0C(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_232B3516C();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  sub_232B20628();
  v101 = v37;
  sub_232B20600();
  MEMORY[0x28223BE20](v38);
  sub_232B20628();
  v97 = v39;
  sub_232B20600();
  MEMORY[0x28223BE20](v40);
  v42 = &v94 - v41;
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  v103 = v30;
  v43 = *(v30 + 16);
  v106 = v1;
  v107 = v27;
  v43(v42, v1, v27);
  v44 = sub_232C1F090(v42);
  if (v44 && (v45 = v44, v109[0] = xmmword_232CFBB70, sub_232CE8C70(), v45, v46 = *(&v109[0] + 1), *(&v109[0] + 1) >> 60 != 15))
  {
    v59 = *&v109[0];
    sub_232CE9D90();
    sub_232C21EE4();
    sub_232CE9D70();
    if (v60)
    {
      sub_232CE9D90();
      v61 = sub_232CE9D60();
      v63 = v62;

      (*(v99 + 8))(v26, v100);
      if (v63 >> 60 != 15)
      {
        v81 = sub_232CE8940();
        v82 = *(v81 + 48);
        v83 = *(v81 + 52);
        swift_allocObject();
        sub_232CE8930();
        sub_232C20774();
        sub_232CE8920();

        memcpy(v109, v108, 0x78uLL);
        v84 = sub_232C1F418();
        sub_232C207C8(v109);
        v85 = v95;
        v86 = v107;
        v43(v95, v106, v107);
        sub_232B351FC();
        sub_232B12504(v87, v88, v89, v86);
        v90 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
        sub_232B207D4();
        sub_232B5BD4C(v85, &v84[v90], &qword_27DDC6AD8, &unk_232CF82F0);
        swift_endAccess();
        v91 = objc_allocWithZone(type metadata accessor for DUDocument());
        sub_232C22030();
        sub_232BB6018(v61, v63);
        v92 = sub_232C21EE4();
        sub_232BB6018(v92, v93);
        goto LABEL_14;
      }
    }

    v64 = v102;
    sub_232CE9A20();
    v65 = v101;
    v66 = v107;
    v43(v101, v106, v107);
    v67 = v64;
    v68 = sub_232CE9A00();
    v69 = sub_232CEA1C0();
    if (sub_232C21F58(v69))
    {
      v70 = sub_232BC1F80();
      v106 = v59;
      v71 = v65;
      v72 = v70;
      *&v109[0] = sub_232BD41CC();
      *v72 = 136315138;
      sub_232C21CF8();
      sub_232C20918(v73, v74);
      sub_232CEA720();
      sub_232C21F38();
      v75(v71, v76);
      v77 = sub_232BAD2D4(v71, v66, v109);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_232B02000, v68, v69, "Unable to convert JSON data from filepath %s's data", v72, 0xCu);
      sub_232C21D90();
      sub_232BA6A84();
      sub_232BB6018(v106, v46);
    }

    else
    {
      v78 = sub_232C21EE4();
      sub_232BB6018(v78, v79);

      sub_232C22004();
      v80(v65, v66);
    }

    sub_232C21FF8();
    v58 = v67;
  }

  else
  {
    sub_232CE9A20();
    v47 = v107;
    v43(v35, v106, v107);
    v48 = sub_232CE9A00();
    v49 = sub_232CEA1C0();
    if (sub_232C21F58(v49))
    {
      v50 = sub_232BC1F80();
      *&v109[0] = sub_232BD41CC();
      *v50 = 136315138;
      sub_232C21CF8();
      sub_232C20918(v51, v52);
      sub_232CEA720();
      sub_232C21F38();
      v53(v35, v54);
      v55 = sub_232BAD2D4(v35, v47, v109);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_232B02000, v48, v49, "Unable to obtain data from filepath: %s", v50, 0xCu);
      sub_232C21D90();
      sub_232BA6A84();
    }

    else
    {

      sub_232C22004();
      v56(v35, v47);
    }

    sub_232C21FF8();
    v58 = v9;
  }

  v57(v58, v105);
LABEL_14:
  sub_232B20A00();
}

void static FilesDocumentIngester.readFromPDF(fileURL:)()
{
  sub_232C22098();
  v2 = v1;
  v3 = sub_232CE9A30();
  v4 = sub_232B48F0C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v7 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v7);
  v9 = *(v8 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  sub_232C21E84();
  v11 = sub_232C330E0(v2, 5120);
  v13 = v12;
  v14 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
  v15 = &v14[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C();
  v16 = v15[1];
  *v15 = v11;
  v15[1] = v13;

  v17 = sub_232CE8C00();
  sub_232B13F24(v17);
  v19 = *(v18 + 16);
  v20 = sub_232B35090();
  v21(v20);
  sub_232B351FC();
  sub_232B12504(v22, v23, v24, v17);
  v25 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
  sub_232B207D4();
  sub_232B5BD4C(v0, &v14[v25], &qword_27DDC6AD8, &unk_232CF82F0);
  swift_endAccess();
  v26 = objc_allocWithZone(type metadata accessor for DUDocument());
  sub_232C21F70();
  sub_232B20A58();
}

void static FilesDocumentIngester.readFromOffice(fileURL:)()
{
  sub_232C22098();
  v0 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v0);
  v2 = *(v1 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = objc_opt_self();
  v7 = sub_232CE8B90();
  v8 = [v6 searchableAttributesForOfficeFile_];

  if (v8)
  {
    v9 = v8;
    v10 = sub_232C207F8(v9, &selRef_textContent);
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
      v15 = &v14[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
      sub_232B13F5C();
      v16 = v15[1];
      *v15 = v12;
      v15[1] = v13;

      v17 = sub_232CE8C00();
      sub_232B13F24(v17);
      v19 = *(v18 + 16);
      v20 = sub_232B2080C();
      v21(v20);
      sub_232B351FC();
      sub_232B12504(v22, v23, v24, v17);
      v25 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
      sub_232B207D4();
      sub_232B5BD4C(v5, &v14[v25], &qword_27DDC6AD8, &unk_232CF82F0);
      swift_endAccess();
      objc_allocWithZone(type metadata accessor for DUDocument());
      DUDocument.init(rawDocument:maxLength:)(v14, 5120);
    }
  }

  sub_232B20A58();
}

void static FilesDocumentIngester.readFromText(fileURL:)()
{
  sub_232C22098();
  sub_232B5139C();
  v1 = sub_232CE9A30();
  v2 = sub_232B48F0C(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v5 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v5);
  v7 = *(v6 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  sub_232C21E84();
  v9 = sub_232CE9DA0();
  v10 = sub_232B2D120(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  sub_232CE9D90();
  sub_232BC1E48();
  v13 = sub_232CE9D00();
  v15 = v14;
  v16 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
  v17 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232C0A090();
  v18 = v17[1];
  *v17 = v13;
  v17[1] = v15;

  v19 = sub_232CE8C00();
  sub_232B13F24(v19);
  v21 = *(v20 + 16);
  sub_232C21FE0();
  v22();
  sub_232B351FC();
  sub_232B12504(v23, v24, v25, v19);
  v26 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
  sub_232B207D4();
  sub_232B5BD4C(v0, &v16[v26], &qword_27DDC6AD8, &unk_232CF82F0);
  swift_endAccess();
  v27 = objc_allocWithZone(type metadata accessor for DUDocument());
  sub_232C21F70();
  sub_232B20A58();
}

void static FilesDocumentIngester.readFromEML(fileURL:)()
{
  sub_232B35110();
  v3 = v2;
  v4 = sub_232CE8C00();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v10 = sub_232CE9A30();
  v11 = sub_232B48F0C(v10);
  v237 = v12;
  v238 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  sub_232BA6FF8();
  v15 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v15);
  v17 = *(v16 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v18);
  sub_232C21E84();
  v19 = sub_232CE9DA0();
  v20 = sub_232B2D120(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  sub_232C21ECC();
  v23 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v23);
  v25 = *(v24 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v26);
  v28 = &v226 - v27;
  v29 = sub_232CE8C20();
  v233 = v1;
  v234 = v28;
  v227 = v0;
  v231 = v7;
  v232 = v4;
  v30 = v29;
  v32 = v31;
  v33 = objc_opt_self();
  v34 = sub_232CE8C50();
  v35 = [v33 parseRfc822_];

  v36 = [objc_allocWithZone(type metadata accessor for DUDocumentEmailData()) init];
  v37 = v35;
  sub_232C207F8(v37, &selRef_subject);
  v38 = objc_allocWithZone(MEMORY[0x277D070D0]);
  v39 = sub_232BA7230();
  v41 = sub_232C20654(v39, v40);
  v42 = [v41 subjectWithoutPrefix];

  v43 = sub_232CE9D50();
  v45 = v44;

  v236 = v36;
  v46 = &v36[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
  sub_232B13F5C();
  v47 = v46[1];
  *v46 = v43;
  v46[1] = v45;

  v237 = v37;
  v48 = [v37 from];
  if (v48)
  {
    v49 = sub_232C207F8(v48, &selRef_name);
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v52 = &v236[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName];
  sub_232B13F5C();
  v53 = v52[1];
  *v52 = v49;
  v52[1] = v51;

  v54 = [v237 from];
  v55 = v54;
  v228 = v3;
  v229 = v32;
  if (v54)
  {
    v56 = [v54 emailAddress];

    v55 = sub_232CE9D50();
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v59 = v236;
  v60 = &v236[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
  sub_232B13F5C();
  v61 = *(v60 + 1);
  *v60 = v55;
  *(v60 + 1) = v58;

  v62 = v237;
  v63 = [v237 senderDomain];
  sub_232CE9D50();
  sub_232C22068();
  v64 = &v59[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain];
  sub_232B13F5C();
  v65 = *(v64 + 1);
  *v64 = v58;
  *(v64 + 1) = v60;

  v66 = &off_2789A8000;
  v67 = [v62 to];
  v235 = sub_232BA4DEC(0, &qword_27DDC7D20, 0x277D020E0);
  v68 = sub_232CE9FE0();

  v69 = sub_232B26B10(v68);
  v70 = MEMORY[0x277D84F90];
  v230 = v30;
  if (v69)
  {
    sub_232C21D10(v69);
    v238 = v62;
    if ((v62 & 0x8000000000000000) != 0)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v28 = 0;
    v71 = v239;
    v62 = v68 & 0xC000000000000001;
    v3 = v68;
    do
    {
      if (v62)
      {
        v72 = MEMORY[0x2383922C0](0, v68);
      }

      else
      {
        v72 = *(v68 + 32);
      }

      sub_232C20860(v72);
      sub_232C22068();
      if (!v66)
      {
        v66 = 0xE000000000000000;
      }

      sub_232C21E20();
      if (v74)
      {
        v75 = sub_232C21D70(v73);
        sub_232B649F4(v75, v70, 1);
        v71 = v239;
      }

      sub_232C21E0C();
      v68 = v3;
    }

    while (v238);

    v70 = MEMORY[0x277D84F90];
    v66 = &off_2789A8000;
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v76 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
  sub_232C21ED8();
  sub_232B13F5C();
  sub_232C21FA4();
  v77 = [v237 v66[242]];
  v78 = sub_232C21FBC();

  v79 = sub_232B26B10(v78);
  if (v79)
  {
    sub_232C21D10(v79);
    if ((v62 & 0x8000000000000000) != 0)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v28 = 0;
    sub_232C21E94();
    v3 = v78;
    do
    {
      if (v238)
      {
        v80 = MEMORY[0x2383922C0](0, v78);
      }

      else
      {
        v80 = v78[4];
      }

      v81 = v80;
      v78 = [v80 emailAddress];
      sub_232CE9D50();

      sub_232C22010();
      if (v74)
      {
        v84 = sub_232C21D70(v82);
        sub_232B649F4(v84, v78, 1);
        v71 = v239;
      }

      sub_232C21E68();
    }

    while (!v83);

    v70 = MEMORY[0x277D84F90];
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v85 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
  sub_232C21ED8();
  sub_232B13F5C();
  sub_232C21FA4();
  v86 = &off_2789A8000;
  v87 = [v237 cc];
  v88 = sub_232C21FBC();

  v89 = sub_232B26B10(v88);
  if (v89)
  {
    sub_232C21D10(v89);
    if ((v62 & 0x8000000000000000) != 0)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    sub_232C21EF0();
    do
    {
      if (v238)
      {
        v90 = MEMORY[0x2383922C0](v28, v88);
      }

      else
      {
        v90 = *(v88 + 8 * v28 + 32);
      }

      sub_232C20860(v90);
      sub_232C22068();
      if (!v86)
      {
        v86 = 0xE000000000000000;
      }

      sub_232C21E20();
      if (v74)
      {
        v92 = sub_232C21D70(v91);
        sub_232B649F4(v92, v70, 1);
        v71 = v239;
      }

      sub_232C21E0C();
      v88 = v3;
    }

    while (v62 != v28);

    v70 = MEMORY[0x277D84F90];
    v86 = &off_2789A8000;
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v93 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames;
  sub_232C21ED8();
  sub_232B13F5C();
  sub_232C21FA4();
  v94 = [v237 v86[243]];
  v95 = sub_232C21FBC();

  v96 = sub_232B26B10(v95);
  if (v96)
  {
    sub_232C21D10(v96);
    if ((v62 & 0x8000000000000000) != 0)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v28 = 0;
    sub_232C21E94();
    v3 = v95;
    do
    {
      if (v238)
      {
        v97 = MEMORY[0x2383922C0](0, v95);
      }

      else
      {
        v97 = v95[4];
      }

      v98 = v97;
      v95 = [v97 emailAddress];
      sub_232CE9D50();

      sub_232C22010();
      if (v74)
      {
        v100 = sub_232C21D70(v99);
        sub_232B649F4(v100, v95, 1);
        v71 = v239;
      }

      sub_232C21E68();
    }

    while (!v83);

    v70 = MEMORY[0x277D84F90];
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v101 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails;
  sub_232C21ED8();
  sub_232B13F5C();
  sub_232C21FA4();
  v102 = &off_2789A8000;
  v103 = [v237 bcc];
  v104 = sub_232C21FBC();

  v105 = sub_232B26B10(v104);
  if (v105)
  {
    sub_232C21D10(v105);
    if ((v62 & 0x8000000000000000) != 0)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    sub_232C21EF0();
    do
    {
      if (v238)
      {
        v106 = MEMORY[0x2383922C0](v28, v104);
      }

      else
      {
        v106 = *(v104 + 8 * v28 + 32);
      }

      sub_232C20860(v106);
      sub_232C22068();
      if (!v102)
      {
        v102 = 0xE000000000000000;
      }

      sub_232C21E20();
      if (v74)
      {
        v108 = sub_232C21D70(v107);
        sub_232B649F4(v108, v70, 1);
        v71 = v239;
      }

      sub_232C21E0C();
      v104 = v3;
    }

    while (v62 != v28);

    v70 = MEMORY[0x277D84F90];
    v102 = &off_2789A8000;
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v109 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames;
  sub_232C21ED8();
  sub_232B13F5C();
  sub_232C21FA4();
  v110 = [v237 v102[244]];
  v111 = sub_232C21FBC();

  v112 = sub_232B26B10(v111);
  v113 = v234;
  if (v112)
  {
    v114 = v112;
    v239 = v70;
    sub_232B649F4(0, v112 & ~(v112 >> 63), 0);
    if (v114 < 0)
    {
LABEL_107:
      __break(1u);
      return;
    }

    v115 = 0;
    sub_232C21E94();
    v116 = v111;
    v117 = v114;
    do
    {
      if (v238)
      {
        v118 = MEMORY[0x2383922C0](v115, v111);
      }

      else
      {
        v118 = *(v111 + 8 * v115 + 32);
      }

      v119 = v118;
      v120 = [v118 emailAddress];
      v121 = sub_232CE9D50();
      v123 = v122;

      v239 = v71;
      v125 = *(v71 + 16);
      v124 = *(v71 + 24);
      if (v125 >= v124 >> 1)
      {
        v127 = sub_232C21D70(v124);
        sub_232B649F4(v127, v125 + 1, 1);
        v71 = v239;
      }

      ++v115;
      *(v71 + 16) = v125 + 1;
      v126 = v71 + 16 * v125;
      *(v126 + 32) = v121;
      *(v126 + 40) = v123;
      v111 = v116;
    }

    while (v117 != v115);

    v113 = v234;
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v128 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails;
  v129 = v236;
  sub_232B13F5C();
  v130 = *&v129[v128];
  *&v129[v128] = v71;

  v131 = v237;
  v132 = [v237 date];
  sub_232CE8CF0();

  sub_232CE8D10();
  sub_232B351FC();
  v235 = v133;
  sub_232B12504(v134, v135, v136, v133);
  v137 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  sub_232B207D4();
  sub_232B5BD4C(v113, &v129[v137], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  sub_232BA4DEC(0, &qword_27DDC7D28, 0x277D71420);
  v138 = [v131 htmlBody];
  sub_232CE9D50();

  v139 = sub_232B80670();
  v140 = [v139 textContent];

  v141 = sub_232CE9D50();
  v143 = v142;

  v144 = &v129[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
  sub_232C0A090();
  v145 = v144[1];
  *v144 = v141;
  v144[1] = v143;
  v226 = v144;

  v146 = [v131 headersDictionary];
  sub_232B124A8(&qword_27DDC75A8, &qword_232CFA518);
  v147 = sub_232CE9C40();

  sub_232B124A8(&qword_27DDC77D0, &unk_232CFAA50);
  v148 = sub_232CEA630();
  v149 = v148;
  v150 = 0;
  v151 = 1 << *(v147 + 32);
  v152 = -1;
  if (v151 < 64)
  {
    v152 = ~(-1 << v151);
  }

  v153 = v152 & *(v147 + 64);
  v154 = (v151 + 63) >> 6;
  v238 = v148 + 64;
  if (v153)
  {
    while (1)
    {
      v155 = __clz(__rbit64(v153));
      v153 &= v153 - 1;
LABEL_90:
      v158 = v155 | (v150 << 6);
      v159 = (*(v147 + 48) + 16 * v158);
      v160 = *v159;
      v161 = v159[1];
      v162 = *(*(v147 + 56) + 8 * v158);
      if (*(v162 + 16))
      {
        sub_232B204B4(v162 + 32, &v239);

        v163 = sub_232CE9DC0();
      }

      else
      {

        v163 = 0;
        v164 = 0xE000000000000000;
      }

      *(v238 + ((v158 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v158;
      v165 = (v149[6] + 16 * v158);
      *v165 = v160;
      v165[1] = v161;
      v166 = (v149[7] + 16 * v158);
      *v166 = v163;
      v166[1] = v164;
      v167 = v149[2];
      v168 = __OFADD__(v167, 1);
      v169 = v167 + 1;
      if (v168)
      {
        break;
      }

      v149[2] = v169;
      if (!v153)
      {
        goto LABEL_85;
      }
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_85:
  v156 = v150;
  while (1)
  {
    v150 = v156 + 1;
    if (__OFADD__(v156, 1))
    {
      __break(1u);
      goto LABEL_101;
    }

    if (v150 >= v154)
    {
      break;
    }

    v157 = *(v147 + 64 + 8 * v150);
    ++v156;
    if (v157)
    {
      v155 = __clz(__rbit64(v157));
      v153 = (v157 - 1) & v157;
      goto LABEL_90;
    }
  }

  v170 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
  v171 = v236;
  sub_232B13F5C();
  v172 = *&v171[v170];
  *&v171[v170] = v149;

  v173 = [objc_allocWithZone(type metadata accessor for DUDocumentHTMLData()) init];
  v174 = v237;
  v175 = [v237 htmlContentData];
  v176 = sub_232CE8C80();
  v178 = v177;

  sub_232CE9D90();
  v179 = sub_232CE9D70();
  v181 = v180;
  sub_232B41BEC(v176, v178);
  v182 = &v173[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  sub_232B13F5C();
  v183 = v182[1];
  *v182 = v179;
  v182[1] = v181;

  v184 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F5C();
  v185 = *&v173[v184];
  *&v173[v184] = v171;
  v186 = v171;

  v187 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
  v188 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F5C();
  v189 = *&v187[v188];
  *&v187[v188] = v173;
  v190 = v173;

  v191 = v174;
  sub_232C207F8(v191, &selRef_subject);
  v192 = objc_allocWithZone(MEMORY[0x277D070D0]);
  v193 = sub_232BA7230();
  v195 = sub_232C20654(v193, v194);
  v196 = [v195 subjectWithoutPrefix];

  v197 = sub_232CE9D50();
  v199 = v198;

  v200 = &v187[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
  sub_232B13F5C();
  v201 = v200[1];
  *v200 = v197;
  v200[1] = v199;

  v202 = v232;
  v203 = v227;
  (*(v231 + 16))(v227, v228, v232);
  sub_232B351FC();
  sub_232B12504(v204, v205, v206, v202);
  v207 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
  sub_232B207D4();
  sub_232B5BD4C(v203, &v187[v207], &qword_27DDC6AD8, &unk_232CF82F0);
  swift_endAccess();
  v208 = [v191 date];

  v209 = v234;
  sub_232CE8CF0();

  sub_232B351FC();
  sub_232B12504(v210, v211, v212, v235);
  v213 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
  sub_232B207D4();
  sub_232B5BD4C(v209, &v187[v213], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  v214 = [v191 from];
  if (v214)
  {
    v215 = sub_232C207F8(v214, &selRef_name);
    v217 = v216;
  }

  else
  {
    v215 = 0;
    v217 = 0;
  }

  v218 = v226;
  v219 = &v187[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
  sub_232B13F5C();
  v220 = v219[1];
  *v219 = v215;
  v219[1] = v217;

  v222 = *v218;
  v221 = v218[1];
  v223 = &v187[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C();
  v224 = *(v223 + 1);
  *v223 = v222;
  *(v223 + 1) = v221;

  v225 = objc_allocWithZone(type metadata accessor for DUDocument());
  DUDocument.init(rawDocument:maxLength:)(v187, 5120);
  sub_232B41BEC(v230, v229);

  sub_232B20A00();
}

void static FilesDocumentIngester.readFromMessageJson(fileURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232B35110();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v131 = sub_232CE9A30();
  v24 = sub_232B48F0C(v131);
  v130 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_232B3516C();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  sub_232B20628();
  v128 = v32;
  sub_232B20600();
  MEMORY[0x28223BE20](v33);
  v125 = &v122 - v34;
  v35 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v35);
  v37 = *(v36 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v38);
  v123 = &v122 - v39;
  v40 = sub_232CE9DA0();
  v41 = sub_232B48F0C(v40);
  v126 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_232B20704();
  v47 = v46 - v45;
  v48 = sub_232CE8C00();
  v49 = sub_232B48F0C(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  sub_232B3516C();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  sub_232B20628();
  v127 = v58;
  sub_232B20600();
  MEMORY[0x28223BE20](v59);
  sub_232B20628();
  v124 = v60;
  sub_232B20600();
  MEMORY[0x28223BE20](v61);
  v63 = &v122 - v62;
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  v129 = v51;
  v64 = *(v51 + 16);
  v132 = v23;
  (v64)(v63, v23, v48);
  v65 = sub_232C1F090(v63);
  if (v65 && (v66 = v65, v136 = xmmword_232CFBB70, sub_232CE8C70(), v66, v67 = *(&v136 + 1), *(&v136 + 1) >> 60 != 15))
  {
    v82 = v136;
    sub_232CE9D90();
    v122 = v82;
    sub_232CE9D70();
    if (v83)
    {
      sub_232CE9D90();
      v84 = sub_232CE9D60();
      v86 = v85;

      sub_232C21DC4(&a13);
      v87(v47, v40);
      if (v86 >> 60 != 15)
      {
        v128 = v67;
        v102 = sub_232CE8940();
        v103 = *(v102 + 48);
        v104 = *(v102 + 52);
        swift_allocObject();
        sub_232CE8930();
        sub_232C208C4();
        sub_232CE8920();

        v136 = v133;
        v137 = v134;
        v138 = v135;
        sub_232C1F12C();
        v106 = v105;
        v139 = v136;
        sub_232C21FE0();
        sub_232B13790(v107, v108, v109);
        v140 = v137;
        sub_232C21FE0();
        sub_232B13790(v110, v111, v112);
        v141 = v138;
        sub_232C21FE0();
        sub_232B13790(v113, v114, v115);
        v116 = v123;
        sub_232C21FD4();
        v64();
        sub_232B351FC();
        sub_232B12504(v117, v118, v119, v48);
        v120 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
        sub_232B207D4();
        sub_232B5BD4C(v116, v106 + v120, &qword_27DDC6AD8, &unk_232CF82F0);
        swift_endAccess();
        v121 = objc_allocWithZone(type metadata accessor for DUDocument());
        sub_232C21F70();
        sub_232BB6018(v84, v86);
        sub_232C21E48();
        goto LABEL_14;
      }
    }

    v88 = v128;
    sub_232CE9A20();
    sub_232C21FD4();
    v64();
    v89 = sub_232CE9A00();
    v90 = sub_232CEA1C0();
    if (sub_232C22080(v90))
    {
      v91 = sub_232BC1F80();
      *&v136 = sub_232BD41CC();
      *v91 = 136315138;
      sub_232C21CF8();
      sub_232C20918(v92, v93);
      sub_232CEA720();
      v94 = sub_232C21D38();
      v95(v94);
      v96 = sub_232BC1E48();
      v99 = sub_232BAD2D4(v96, v97, v98);

      *(v91 + 4) = v99;
      _os_log_impl(&dword_232B02000, v89, v90, "Unable to convert JSON data from filepath %s's data", v91, 0xCu);
      sub_232C21D90();
      sub_232BD719C();
      sub_232BB6018(v122, v67);
    }

    else
    {
      sub_232BB6018(v122, v67);

      v100 = sub_232C21D38();
      v101(v100);
    }

    sub_232C21DC4(&a17);
    v81 = v88;
  }

  else
  {
    sub_232CE9A20();
    sub_232C21FD4();
    v64();
    v68 = sub_232CE9A00();
    v69 = sub_232CEA1C0();
    if (sub_232C21F58(v69))
    {
      v70 = sub_232BC1F80();
      v71 = sub_232BD41CC();
      *&v136 = v71;
      *v70 = 136315138;
      sub_232C21CF8();
      sub_232C20918(v72, v73);
      v74 = sub_232CEA720();
      v76 = v75;
      sub_232C21DC4(&a16);
      v77(v56, v48);
      v78 = sub_232BAD2D4(v74, v76, &v136);

      *(v70 + 4) = v78;
      _os_log_impl(&dword_232B02000, v68, v69, "Unable to obtain data from filepath: %s", v70, 0xCu);
      sub_232B2040C(v71);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    else
    {

      sub_232C21DC4(&a16);
      v79(v56, v48);
    }

    sub_232C21DC4(&a17);
    v81 = v30;
  }

  v80(v81, v131);
LABEL_14:
  sub_232B20A00();
}

void static FilesDocumentIngester.readFromMessageText(fileURL:)()
{
  sub_232B35110();
  v1 = sub_232CE9A30();
  v2 = sub_232B48F0C(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v5 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v5);
  v7 = *(v6 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v11);
  v13 = *(v12 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v14);
  sub_232BA6FF8();
  v15 = sub_232CE9DA0();
  v16 = sub_232B2D120(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  sub_232CE9D90();
  v19 = sub_232CE9D00();
  v21 = v20;
  v22 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
  v23 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232C0A090();
  v24 = v23[1];
  *v23 = v19;
  v23[1] = v21;

  v25 = sub_232CE8C00();
  sub_232B13F24(v25);
  v27 = *(v26 + 16);
  v28 = sub_232BA5C94();
  v29(v28);
  sub_232B351FC();
  sub_232B12504(v30, v31, v32, v25);
  v33 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
  sub_232B207D4();
  sub_232B5BD4C(v0, &v22[v33], &qword_27DDC6AD8, &unk_232CF82F0);
  swift_endAccess();
  v34 = [objc_allocWithZone(type metadata accessor for DUDocumentMessageData()) init];
  v35 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F5C();
  v36 = *&v22[v35];
  *&v22[v35] = v34;
  v37 = v34;

  sub_232CE8D00();
  sub_232CE8D10();
  sub_232B351FC();
  sub_232B12504(v38, v39, v40, v41);
  v42 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
  sub_232B207D4();
  sub_232B5BD4C(v10, &v22[v42], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  v43 = objc_allocWithZone(type metadata accessor for DUDocument());
  sub_232C22030();

  sub_232B20A00();
}

void sub_232C1EE24()
{
  sub_232C22098();
  sub_232B37B54();
  v0 = sub_232CE8C00();
  v1 = sub_232B48F0C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232CE8B50();
  v9 = sub_232CE9DD0();
  v11 = v10;

  sub_232CE9890();
  if (v9 == sub_232CE9870() && v11 == v12)
  {
  }

  else
  {
    sub_232BA5C94();
    v14 = sub_232CEA750();

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_232CE8BA0();
  sub_232CE8B50();
  (*(v3 + 8))(v8, v0);
  sub_232BC1E48();
  sub_232CE9DD0();

LABEL_9:
  sub_232BA5C94();
  sub_232B20A58();
}

id sub_232C1F090(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_232CE8B90();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_232CE8C00();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_232C1F12C()
{
  sub_232C22098();
  v1 = v0;
  v2 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
  v38 = *v1;
  v13 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232C0A090();
  v14 = *(v13 + 1);
  *v13 = v38;
  sub_232B5D6C0(&v38, &v36, &qword_27DDC77E8, &qword_232CFAA68);

  v15 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  if (*(v1 + 5))
  {
    v16 = *(v1 + 4);
    v17 = sub_232CE9D20();
    v18 = [v15 dateFromString_];

    if (v18)
    {
      sub_232CE8CF0();

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    v27 = sub_232CE8D10();
    sub_232B12504(v11, v19, 1, v27);
    v28 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
    sub_232B207D4();
    v25 = &v12[v28];
    v26 = v11;
  }

  else
  {
    sub_232CE8D00();
    sub_232CE8D10();
    sub_232B351FC();
    sub_232B12504(v20, v21, v22, v23);
    v24 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
    sub_232B207D4();
    v25 = &v12[v24];
    v26 = v8;
  }

  sub_232B5BD4C(v26, v25, &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  v29 = [objc_allocWithZone(type metadata accessor for DUDocumentMessageData()) init];

  v37 = v1[1];
  v30 = &v29[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
  sub_232B13F5C();
  v31 = *(v30 + 1);
  *v30 = v37;
  sub_232B5D6C0(&v37, &v35, &qword_27DDC77E8, &qword_232CFAA68);

  v32 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F5C();
  v33 = *&v12[v32];
  *&v12[v32] = v29;

  sub_232B20A58();
}

char *sub_232C1F418()
{
  sub_232B37B54();
  v1 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
  v2 = sub_232C1F634();
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F5C();
  v4 = *&v1[v3];
  *&v1[v3] = v2;

  v5 = sub_232C1F6FC(v0);
  v6 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
  sub_232B13F5C();
  v7 = *&v1[v6];
  *&v1[v6] = v5;

  v12 = *v0;
  v8 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C();
  v9 = *(v8 + 1);
  *v8 = v12;
  sub_232B5D6C0(&v12, v11, &qword_27DDC77E8, &qword_232CFAA68);

  return v1;
}

id sub_232C1F530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_232B37B54();
  v5 = sub_232CE8C00();
  v6 = sub_232B48F0C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v13 = v12 - v11;
  sub_232CE8BB0();
  swift_getObjCClassMetadata();
  v14 = a4(v13);
  v15 = *(v8 + 8);
  v16 = sub_232B35090();
  v17(v16);

  return v14;
}

char *sub_232C1F634()
{
  sub_232B5139C();
  v1 = [objc_allocWithZone(type metadata accessor for DUDocumentHTMLData()) init];
  v2 = 0;
  v3 = 0;
  if (*(v0 + 32) != 1)
  {
    v2 = *(v0 + 24);
  }

  v4 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  sub_232C0A090();
  v5 = *(v4 + 1);
  *v4 = v2;
  *(v4 + 1) = v3;

  v6 = sub_232C1F96C();
  v7 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F5C();
  v8 = *&v1[v7];
  *&v1[v7] = v6;

  return v1;
}

uint64_t sub_232C1F6FC(uint64_t a1)
{
  v27 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v1 = *(a1 + 16);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = type metadata accessor for DUDocumentUIElement();

    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v8 = v3[4];
      v26 = v3[3];
      v9 = objc_allocWithZone(v25);

      v10 = [v9 init];
      v11 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
      sub_232B13F5C();
      v12 = *&v10[v11];
      *&v10[v11] = v8;

      v13 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
      sub_232B13F5C();
      v14 = *(v13 + 1);
      *v13 = v5;
      *(v13 + 1) = v4;

      v15 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
      sub_232B13F5C();
      v16 = *&v10[v15];
      *&v10[v15] = v6;

      v17 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices;
      sub_232B13F5C();
      v18 = *&v10[v17];
      *&v10[v17] = v7;

      v19 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range;
      sub_232B13F5C();
      v20 = *&v10[v19];
      *&v10[v19] = v26;

      v21 = v10;
      MEMORY[0x238391D50]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_232CEA000();
      }

      v3 += 6;
      sub_232B35090();
      sub_232CEA020();

      --v2;
    }

    while (v2);
    v22 = v27;
  }

  else
  {
    v23 = *(a1 + 16);

    return MEMORY[0x277D84F90];
  }

  return v22;
}

char *sub_232C1F96C()
{
  sub_232B5139C();
  v1 = [objc_allocWithZone(type metadata accessor for DUDocumentEmailData()) init];
  v2 = v1;
  v3 = *(v0 + 48);
  if (*(v0 + 32) != 1 && v3 != 1)
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    *&v31 = *(v0 + 40);
    *(&v31 + 1) = v3;
    v7 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
    sub_232C0A090();
    v8 = *(v7 + 1);
    *v7 = v31;
    sub_232C21F8C(&v31, v25);

    v30 = *(v0 + 56);
    v9 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName];
    sub_232B13F5C();
    v10 = *(v9 + 1);
    *v9 = v30;
    sub_232C21F8C(&v30, v24);

    v29 = *(v0 + 72);
    v11 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
    sub_232B13F5C();
    v12 = *(v11 + 1);
    *v11 = v29;
    sub_232C21F8C(&v29, v23);

    v28 = *(v0 + 88);
    v13 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain];
    sub_232B13F5C();
    v14 = *(v13 + 1);
    *v13 = v28;
    sub_232C21F8C(&v28, v22);

    v27 = v6;
    v15 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
    sub_232B13F5C();
    v16 = *&v2[v15];
    *&v2[v15] = v6;
    sub_232C21F8C(&v27, v21);

    v26 = v5;
    v17 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
    sub_232B13F5C();
    v18 = *&v2[v17];
    *&v2[v17] = v5;
    sub_232C21F8C(&v26, v20);
  }

  return v2;
}

void static FilesDocumentIngester.readTextFromImage(on:)()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v90[1] = *MEMORY[0x277D85DE8];
  v4 = sub_232CE9A30();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B3516C();
  v12 = (v10 - v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v83 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v83 - v17;
  v19 = sub_232CE8C00();
  v20 = sub_232B48F0C(v19);
  v89 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v26 = v25 - v24;
  sub_232CE8B70();
  v88 = v26;
  v27 = sub_232CE8B90();
  v28 = CGImageSourceCreateWithURL(v27, 0);

  if (!v28)
  {
    sub_232CE9A20();

    v62 = sub_232CE9A00();
    v63 = sub_232CEA1C0();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v4;
      v65 = sub_232BC1F80();
      v90[0] = sub_232BD41CC();
      *v65 = 136315138;
      *(v65 + 4) = sub_232BAD2D4(v3, v1, v90);
      _os_log_impl(&dword_232B02000, v62, v63, "File not found %s.", v65, 0xCu);
      sub_232C21D90();
      sub_232BA6A84();

      (*(v7 + 8))(v16, v64);
      goto LABEL_38;
    }

    v69 = *(v7 + 8);
    v70 = v16;
LABEL_37:
    v69(v70, v4);
LABEL_38:
    (*(v89 + 8))(v88, v19);
LABEL_39:
    v82 = *MEMORY[0x277D85DE8];
    sub_232B2080C();
    sub_232B20A00();
    return;
  }

  v87 = v28;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v28, 0, 0);
  if (!ImageAtIndex)
  {
    sub_232CE9A20();
    v66 = sub_232CE9A00();
    v67 = sub_232CEA1C0();
    if (sub_232C22080(v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_232B02000, v66, v67, "Failed to create CGImage from imageSource.", v68, 2u);
      sub_232BA6A84();
    }

    v69 = *(v7 + 8);
    v70 = v18;
    goto LABEL_37;
  }

  v30 = ImageAtIndex;
  type metadata accessor for VNImageOption();
  sub_232C20918(&qword_27DDC65B8, type metadata accessor for VNImageOption);
  v31 = v30;
  sub_232CE9C60();
  v32 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  v85 = v31;
  v33 = sub_232C206B8(v31);
  v34 = [objc_allocWithZone(MEMORY[0x277CE2DB8]) init];
  [v34 setRecognitionLevel_];
  sub_232CE9810();
  if (sub_232CE9800())
  {
    [v34 setAutomaticallyDetectsLanguage_];
  }

  sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_232CF64E0;
  *(v35 + 32) = v34;
  sub_232BA4DEC(0, &qword_27DDC7D38, 0x277CE2DF0);
  v36 = v34;
  sub_232BC1E48();
  v37 = sub_232CE9FD0();

  v90[0] = 0;
  v38 = [v33 performRequests:v37 error:v90];

  v39 = v36;
  if (!v38)
  {
    v71 = v90[0];
    v72 = sub_232CE8B30();

    swift_willThrow();
    sub_232CE9A20();
    v73 = v72;
    v74 = sub_232CE9A00();
    v75 = sub_232CEA1C0();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = sub_232BC1F80();
      v77 = swift_slowAlloc();
      v84 = v33;
      v78 = v4;
      v79 = v77;
      *v76 = 138412290;
      v80 = v72;
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 4) = v81;
      *v79 = v81;
      _os_log_impl(&dword_232B02000, v74, v75, "Error performing OCR request: %@", v76, 0xCu);
      sub_232B13790(v79, &qword_27DDC6FD0, &unk_232CFA240);
      v4 = v78;
      v33 = v84;
      sub_232BA6A84();
      sub_232BA6A84();
    }

    v69 = *(v7 + 8);
    v70 = v12;
    goto LABEL_37;
  }

  v83 = v19;
  v84 = v33;
  v40 = v90[0];
  v41 = sub_232C20960(v36);
  if (v41)
  {
    v42 = v41;
    v43 = sub_232B26B10(v41);
    v44 = 0;
    v86 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v43 == v44)
      {

        v90[0] = v86;
        sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
        sub_232B27E88();
        sub_232CE9CD0();

        (*(v89 + 8))(v88, v83);
        goto LABEL_39;
      }

      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x2383922C0](v44, v42);
      }

      else
      {
        if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v45 = *(v42 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
      }

      v48 = [v45 topCandidates_];
      sub_232BA4DEC(0, &qword_27DDC7D40, 0x277CE2DD0);
      v49 = sub_232CE9FE0();

      if (v49 >> 62)
      {
        if (sub_232CEA610())
        {
          goto LABEL_18;
        }

LABEL_15:

        ++v44;
        v36 = v39;
      }

      else
      {
        if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

LABEL_18:
        if ((v49 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x2383922C0](0, v49);
        }

        else
        {
          if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v50 = *(v49 + 32);
        }

        v51 = v50;

        v52 = [v51 string];

        v53 = sub_232CE9D50();
        v55 = v54;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = v86[2];
          sub_232B35ECC();
          v86 = v60;
        }

        v56 = v86[2];
        if (v56 >= v86[3] >> 1)
        {
          sub_232B35ECC();
          v86 = v61;
        }

        v57 = v86;
        v86[2] = v56 + 1;
        v58 = &v57[2 * v56];
        v58[4] = v53;
        v58[5] = v55;
        v44 = v47;
        v36 = v39;
      }
    }
  }

  __break(1u);
}

id sub_232C204B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_232CE8C00();
  v6 = sub_232B48F0C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v13 = v12 - v11;
  sub_232CE8BB0();
  v14 = a4(v13);
  (*(v8 + 8))(v13, v5);

  return v14;
}

id FilesDocumentIngester.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FilesDocumentIngester.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilesDocumentIngester();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FilesDocumentIngester.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilesDocumentIngester();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232C20654(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_232CE9D20();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithString_];

  return v4;
}

id sub_232C206B8(void *a1)
{
  type metadata accessor for VNImageOption();
  sub_232C20918(&qword_27DDC65B8, type metadata accessor for VNImageOption);
  v3 = sub_232CE9C20();

  v4 = [v1 initWithCGImage:a1 options:v3];

  return v4;
}

unint64_t sub_232C20774()
{
  result = qword_27DDC7D18;
  if (!qword_27DDC7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D18);
  }

  return result;
}

uint64_t sub_232C207F8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_232CE9D50();
  }

  return sub_232BC1E48();
}

uint64_t sub_232C20860(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232CE9D50();

  return v3;
}

unint64_t sub_232C208C4()
{
  result = qword_27DDC7D30;
  if (!qword_27DDC7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D30);
  }

  return result;
}

uint64_t sub_232C20918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232C20960(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_232BA4DEC(0, &qword_27DDC7D90, 0x277CE2DE0);
  v3 = sub_232CE9FE0();

  return v3;
}

unint64_t sub_232C209F8()
{
  result = qword_27DDC7D48;
  if (!qword_27DDC7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilesDocumentIngesterError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for FilesDocumentIngesterError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_232C20B64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 120))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C20BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_232C20C38()
{
  result = qword_27DDC7D58;
  if (!qword_27DDC7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D58);
  }

  return result;
}

unint64_t sub_232C20C8C()
{
  result = qword_27DDC7D68;
  if (!qword_27DDC7D68)
  {
    sub_232B27EEC(&qword_27DDC7D60, &qword_232CFC7A0);
    sub_232C20D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D68);
  }

  return result;
}

unint64_t sub_232C20D10()
{
  result = qword_27DDC7D70;
  if (!qword_27DDC7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D70);
  }

  return result;
}

unint64_t sub_232C20D64()
{
  result = qword_27DDC7D78;
  if (!qword_27DDC7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D78);
  }

  return result;
}

unint64_t sub_232C20DF0()
{
  result = qword_27DDC7D88;
  if (!qword_27DDC7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D88);
  }

  return result;
}

unint64_t sub_232C20E44()
{
  result = qword_27DDC7DA0;
  if (!qword_27DDC7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DA0);
  }

  return result;
}

uint64_t sub_232C20EA8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_232C21F50(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return sub_232C21F50((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_232C21F50((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_232C21F50((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_232C21F50(v8);
}

_BYTE *sub_232C20F2C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232C21008(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C2105C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_232C210D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return sub_232C21F50(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return sub_232C21F50(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return sub_232C21F50(v4);
}

uint64_t sub_232C21128(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_232C2119C()
{
  result = qword_27DDC7DA8;
  if (!qword_27DDC7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DA8);
  }

  return result;
}

unint64_t sub_232C211F4()
{
  result = qword_27DDC7DB0;
  if (!qword_27DDC7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DB0);
  }

  return result;
}

unint64_t sub_232C2124C()
{
  result = qword_27DDC7DB8;
  if (!qword_27DDC7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DB8);
  }

  return result;
}

unint64_t sub_232C212A4()
{
  result = qword_27DDC7DC0;
  if (!qword_27DDC7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DC0);
  }

  return result;
}

unint64_t sub_232C212FC()
{
  result = qword_27DDC7DC8;
  if (!qword_27DDC7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DC8);
  }

  return result;
}

unint64_t sub_232C21354()
{
  result = qword_27DDC7DD0;
  if (!qword_27DDC7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DD0);
  }

  return result;
}

unint64_t sub_232C213A8()
{
  result = qword_27DDC7DE0;
  if (!qword_27DDC7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DE0);
  }

  return result;
}

unint64_t sub_232C213FC()
{
  result = qword_27DDC7DF0;
  if (!qword_27DDC7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DF0);
  }

  return result;
}

unint64_t sub_232C21450()
{
  result = qword_27DDC7DF8;
  if (!qword_27DDC7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FilesDocumentIngester.DocumentHTMLData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FilesDocumentIngester.DocumentUIElement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232C216CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C21720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_232C2179C()
{
  result = qword_27DDC7E00;
  if (!qword_27DDC7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E00);
  }

  return result;
}

unint64_t sub_232C217F4()
{
  result = qword_27DDC7E08;
  if (!qword_27DDC7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E08);
  }

  return result;
}

unint64_t sub_232C2184C()
{
  result = qword_27DDC7E10;
  if (!qword_27DDC7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E10);
  }

  return result;
}

unint64_t sub_232C218A4()
{
  result = qword_27DDC7E18;
  if (!qword_27DDC7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E18);
  }

  return result;
}

unint64_t sub_232C218FC()
{
  result = qword_27DDC7E20;
  if (!qword_27DDC7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E20);
  }

  return result;
}

unint64_t sub_232C21954()
{
  result = qword_27DDC7E28;
  if (!qword_27DDC7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E28);
  }

  return result;
}

unint64_t sub_232C219A8()
{
  result = qword_27DDC7E38;
  if (!qword_27DDC7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilesDocumentIngester.DocumentEmailData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FilesDocumentIngester.DocumentEmailData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232C21BCC()
{
  result = qword_27DDC7E40;
  if (!qword_27DDC7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E40);
  }

  return result;
}

unint64_t sub_232C21C24()
{
  result = qword_27DDC7E48;
  if (!qword_27DDC7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E48);
  }

  return result;
}

unint64_t sub_232C21C7C()
{
  result = qword_27DDC7E50;
  if (!qword_27DDC7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E50);
  }

  return result;
}

void sub_232C21D10(uint64_t a1)
{
  *(v1 + 248) = v2;

  sub_232B649F4(0, a1 & ~(a1 >> 63), 0);
}

void sub_232C21D90()
{
  sub_232B2040C(v0);

  JUMPOUT(0x238393870);
}

uint64_t sub_232C21DDC()
{

  return sub_232CEA680();
}

void sub_232C21E0C()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

void sub_232C21E20()
{
  *(v0 + 248) = v1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

uint64_t sub_232C21E48()
{
  v2 = *(v0 - 336);
  v3 = *(v0 - 288);

  return sub_232BB6018(v2, v3);
}

void sub_232C21E68()
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v3;
  *(v5 + 32) = v0;
  *(v5 + 40) = v4;
}

void sub_232C21EA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 116);
  v8 = *(v5 - 116);
  v9 = *(v5 - 112);

  _os_log_impl(a1, v9, v8, a4, v4, 0xCu);
}

BOOL sub_232C21F58(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_232C21F70()
{

  return DUDocument.init(rawDocument:maxLength:)(v0, 5120);
}

uint64_t sub_232C21F8C(uint64_t a1, uint64_t a2)
{

  return sub_232B5D6C0(a1, a2, v2, v3);
}

uint64_t sub_232C21FA4()
{
  v4 = *(v1 + v0);
  *(v1 + v0) = v2;
}

uint64_t sub_232C21FBC()
{
  v2 = *(v0 + 72);

  return sub_232CE9FE0();
}

void sub_232C22010()
{
  *(v0 + 248) = v1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

uint64_t sub_232C22030()
{

  return DUDocument.init(rawDocument:maxLength:)(v0, 5120);
}

uint64_t sub_232C22050()
{
}

void sub_232C22068()
{
}

BOOL sub_232C22080(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult()
{
  result = qword_27DDC7E58;
  if (!qword_27DDC7E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C22120()
{
  sub_232CE9340();
  if (v0 <= 0x3F)
  {
    sub_232C221B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232C221B0()
{
  if (!qword_27DDC64D8)
  {
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC64D8);
    }
  }
}

int *sub_232C22200@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t sub_232C22258()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5060);
  sub_232B135C4(v0, qword_27DDD5060);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF7250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "isSupportedLocale";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "containsDataDetectors";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isClassifiedAsEvent";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "textLengthPass";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isEventCandidate";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C224DC()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B13EE0();
        sub_232C2259C();
        break;
      case 2:
        sub_232B13EE0();
        sub_232C22600();
        break;
      case 3:
        sub_232B13EE0();
        sub_232C22664();
        break;
      case 4:
        sub_232B13EE0();
        sub_232C226C8();
        break;
      case 5:
        sub_232B13EE0();
        sub_232C2272C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C22790()
{
  v1 = sub_232B13EF4();
  result = sub_232C2280C(v1);
  if (!v0)
  {
    v3 = sub_232B13EF4();
    sub_232C22884(v3);
    v4 = sub_232B13EF4();
    sub_232C228FC(v4);
    v5 = sub_232B13EF4();
    sub_232C22974(v5);
    v6 = sub_232B13EF4();
    sub_232C229EC(v6);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C2280C(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232C22884(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232C228FC(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232C22974(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232C229EC(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232C22A64()
{
  v0 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  sub_232C23018(*(v0 + 20));
  if (v4)
  {
    if (v2 != 2)
    {
      return 0;
    }
  }

  else if (v2 == 2 || ((v3 ^ v2) & 1) != 0)
  {
    return 0;
  }

  sub_232C23018(*(v1 + 24));
  if (v4)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else if (v6 == 2 || ((v7 ^ v6) & 1) != 0)
  {
    return 0;
  }

  sub_232C23018(*(v5 + 28));
  if (v4)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else if (v9 == 2 || ((v10 ^ v9) & 1) != 0)
  {
    return 0;
  }

  sub_232C23018(*(v8 + 32));
  if (v4)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v13 ^ v12) & 1) != 0)
  {
    return 0;
  }

  sub_232C23018(*(v11 + 36));
  if (v4)
  {
    if (v14 == 2)
    {
      goto LABEL_32;
    }

    return 0;
  }

  if (v14 == 2 || ((v15 ^ v14) & 1) != 0)
  {
    return 0;
  }

LABEL_32:
  sub_232CE9340();
  sub_232C22FD0(&qword_27DDC6590, MEMORY[0x277D216C8]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232C22BC4()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  sub_232C22FD0(&qword_27DDC7E70, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C22C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C22FD0(&qword_27DDC7E80, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C22D18@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC63D0 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5060);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C22DC0(uint64_t a1)
{
  v2 = sub_232C22FD0(&qword_27DDC75A0, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C22E30()
{
  sub_232C22FD0(&qword_27DDC75A0, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);

  return sub_232CE9500();
}

uint64_t sub_232C22FD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_232C23028(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

unint64_t sub_232C23064@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_232C23028(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C23090@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232C23038(*v1);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for FoundInEventDataDetectorsOutput()
{
  result = qword_2814E0968;
  if (!qword_2814E0968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232C23130()
{
  sub_232C232E0(319, &unk_2814E25F0, MEMORY[0x277CC8990]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_232C232E0(319, &qword_2814E25C0, MEMORY[0x277CC9A70]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_232B21E3C(319, &qword_2814DFA10);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_232C232E0(319, &qword_2814E25E8, MEMORY[0x277CC9260]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_232C0DFCC();
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_232B21E3C(319, &qword_27DDC7E88);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_232C232E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DUFoundInEventDDType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DUFoundInEventDDType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232C2349C()
{
  result = qword_27DDC7E90;
  if (!qword_27DDC7E90)
  {
    sub_232B27EEC(&qword_27DDC7E98, qword_232CFD0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E90);
  }

  return result;
}

unint64_t sub_232C23514()
{
  result = qword_2814E1018[0];
  if (!qword_2814E1018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E1018);
  }

  return result;
}

void sub_232C23568(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  v4 = sub_232CE96D0();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v20 = a2;
    v7 = 0;
    v26 = v4 + 32;
    v8 = 0xE400000000000000;
    v9 = -1;
    v10 = 1162760014;
    v11 = 40;
    v22 = v4;
    v23 = v3;
    v21 = *(v4 + 16);
    while (v7 < *(v5 + 16))
    {
      if (v7)
      {
        v12 = *(v26 + 8 * v7);
        if (v12 == -1)
        {
          goto LABEL_18;
        }

        if (v12 == v9)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_232C237E0(v3);
            v3 = v18;
          }

          if (v7 >= *(v3 + 16))
          {
            goto LABEL_22;
          }

          v13 = (v3 + v11);
          v14 = *(v3 + v11);
          *(v13 - 1) = v10;
          *v13 = v8;
        }

        else
        {

          if (v7 >= *(v23 + 16))
          {
            goto LABEL_23;
          }

          v24 = *(v23 + v11 - 8);
          v25 = *(v23 + v11);
          sub_232B48080();
          sub_232C23A48();
          sub_232CEA3B0();
          sub_232C23A48();
          v10 = sub_232CEA3B0();
          v8 = v15;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_232C237E0(v3);
            v3 = v19;
          }

          v6 = v21;
          v5 = v22;
          if (v7 >= *(v3 + 16))
          {
            goto LABEL_24;
          }

          v16 = (v3 + v11);
          v17 = *(v3 + v11);
          *(v16 - 1) = v10;
          *v16 = v8;

          v9 = v12;
        }
      }

      ++v7;
      v11 += 16;
      if (v6 == v7)
      {
LABEL_18:

        a2 = v20;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {

LABEL_20:
    *a2 = v3;
  }
}

uint64_t sub_232C237F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_232CEA610();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_232CEA540();
}

uint64_t type metadata accessor for FoundInEventModelOutput()
{
  result = qword_27DDC7EA0;
  if (!qword_27DDC7EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C238CC()
{
  sub_232C23978();
  if (v0 <= 0x3F)
  {
    sub_232C239D0();
    if (v1 <= 0x3F)
    {
      sub_232CE9700();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C23978()
{
  if (!qword_27DDC7EB0)
  {
    type metadata accessor for FoundInEventDataDetectorsOutput();
    v0 = sub_232CEA030();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC7EB0);
    }
  }
}