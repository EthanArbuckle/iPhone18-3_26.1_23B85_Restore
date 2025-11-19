uint64_t sub_254F16EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_254F16F28()
{
  result = qword_27F75F628;
  if (!qword_27F75F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F628);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UIEntityDetector.UIEntityDetectorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = MEMORY[0x259C2E460]();
  v9.value._countAndFlagsBits = a3;
  v9.value._object = a4;
  String.fullEventName(prefix:)(v9);
  v10 = sub_254F29420();

  if (a5)
  {
    sub_254EC1838();
    a5 = sub_254F293B0();
  }

  AnalyticsSendEvent();

  objc_autoreleasePoolPop(v8);
}

Swift::String __swiftcall String.fullEventName(prefix:)(Swift::String_optional prefix)
{
  v3 = v2;
  v4 = v1;
  if (prefix.value._object)
  {
    v8 = prefix;

    MEMORY[0x259C2DC50](0xD00000000000001ELL, 0x8000000254F2E4F0);
    MEMORY[0x259C2DC50](46, 0xE100000000000000);
  }

  else
  {
    v8.value._countAndFlagsBits = 0xD00000000000001FLL;
    v8.value._object = 0x8000000254F2E4D0;
  }

  MEMORY[0x259C2DC50](v4, v3);
  countAndFlagsBits = v8.value._countAndFlagsBits;
  object = v8.value._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

id Analytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Analytics.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Analytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_254F17440()
{
  v1 = sub_254F29A40();
  v2 = sub_254EB2CBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_254EB6CBC();
  v7 = sub_254F29A20();
  v8 = sub_254EB2CBC(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_254EB4120();
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_254EC8BC0(&qword_27F75F638, "f9");
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v36 - v16);
  v18 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_uiElementCollectionStart;
  sub_254EB6448();
  sub_254F17EF0(v0 + v18, v17);
  if (sub_254EB2F2C(v17, 1, v7))
  {
    sub_254F17F60(v17);
    v19 = 0.0;
  }

  else
  {
    v20 = sub_254EB68EC();
    v21(v20);
    sub_254F17F60(v17);
    v22 = sub_254EB6DF4();
    v23(v22);
    sub_254F29A00();
    v24 = *(v4 + 8);
    v25 = sub_254EB63E8();
    v26(v25);
    sub_254F29A10();
    v27 = sub_254EB802C();
    v17(v27);
    (v17)(v13, v7);
    sub_254EB63E8();
    v28 = sub_254F29C10();
    v19 = v28 * 1000.0 + v29 * 1.0e-15;
  }

  v30 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v31 = v19;
  v32 = [v30 initWithFloat_];
  v33 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_payload;
  sub_254EB520C();
  v34 = *(v0 + v33);
  swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v0 + v33);
  sub_254F06C60(v32, 0xD00000000000001ALL, 0x8000000254F2E620);
  *(v0 + v33) = v37;
  return swift_endAccess();
}

uint64_t sub_254F17714(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_totalCharacterTextCount);
  v3 = __OFADD__(v2, result);
  v4 = v2 + result;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_totalCharacterTextCount) = v4;
  }

  return result;
}

uint64_t sub_254F17734()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_screenCount);
  sub_254EB49CC(objc_allocWithZone(MEMORY[0x277CCABB0]));
  v3 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_payload;
  sub_254EB6B38();
  v4 = *(v1 + v3);
  swift_isUniquelyReferenced_nonNull_native();
  sub_254EB7B0C();
  v5 = sub_254EB7EA8();
  sub_254F06C60(v5, v6, 0xEB00000000746E75);
  sub_254EB3DC0(v7, v8, v9, v10, v11, v12, v13, v14, v53);
  v15 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_totalCharacterTextCount);
  sub_254EB49CC(objc_allocWithZone(MEMORY[0x277CCABB0]));
  sub_254EB6B38();
  v16 = *(v1 + v3);
  swift_isUniquelyReferenced_nonNull_native();
  sub_254EB7B0C();
  v17 = sub_254EB7EA8();
  sub_254F06C60(v17, 0xD000000000000017, v18);
  sub_254EB3DC0(v19, v20, v21, v22, v23, v24, v25, v26, v54);
  v27 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_uiElementCount);
  sub_254EB49CC(objc_allocWithZone(MEMORY[0x277CCABB0]));
  sub_254EB6B38();
  v28 = *(v1 + v3);
  swift_isUniquelyReferenced_nonNull_native();
  sub_254EB7B0C();
  v29 = sub_254EB7EA8();
  sub_254F06C60(v29, v30, v31);
  sub_254EB3DC0(v32, v33, v34, v35, v36, v37, v38, v39, v55);
  v40 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_windowCount);
  sub_254EB49CC(objc_allocWithZone(MEMORY[0x277CCABB0]));
  sub_254EB6B38();
  v41 = *(v1 + v3);
  swift_isUniquelyReferenced_nonNull_native();
  sub_254EB7B0C();
  v42 = sub_254EB7EA8();
  sub_254F06C60(v42, v43, 0xEB00000000746E75);
  return sub_254EB3DC0(v44, v45, v46, v47, v48, v49, v50, v51, v56);
}

float sub_254F178D0()
{
  v1 = sub_254F29A40();
  v2 = sub_254EB2CBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_254EB6CBC();
  v7 = sub_254F29A20();
  v8 = sub_254EB2CBC(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_254EB4120();
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_254EC8BC0(&qword_27F75F638, "f9");
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v37 - v16);
  v18 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_overallStart;
  sub_254EB6448();
  sub_254F17EF0(v0 + v18, v17);
  if (sub_254EB2F2C(v17, 1, v7))
  {
    sub_254F17F60(v17);
    v19 = 0.0;
  }

  else
  {
    v20 = sub_254EB68EC();
    v21(v20);
    sub_254F17F60(v17);
    v22 = sub_254EB6DF4();
    v23(v22);
    sub_254F29A00();
    v24 = *(v4 + 8);
    v25 = sub_254EB63E8();
    v26(v25);
    sub_254F29A10();
    v27 = sub_254EB802C();
    v17(v27);
    (v17)(v13, v7);
    sub_254EB63E8();
    v28 = sub_254F29C10();
    v19 = v28 * 1000.0 + v29 * 1.0e-15;
  }

  v30 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v31 = v19;
  v32 = [v30 initWithFloat_];
  v33 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_payload;
  sub_254EB520C();
  v34 = *(v0 + v33);
  swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v0 + v33);
  sub_254F06C60(v32, 0x4C6C6C617265766FLL, 0xEE0079636E657461);
  *(v0 + v33) = v38;
  swift_endAccess();
  sub_254F17734();
  v35 = *(v0 + v33);
  type metadata accessor for Analytics();

  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0xD000000000000012, 0x8000000254F2E600, 0, 0, v35);

  sub_254F17C08();
  return v19;
}

uint64_t sub_254F17C08()
{
  sub_254EC1838();
  v1 = sub_254F293D0();
  v2 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_payload;
  swift_beginAccess();
  v3 = *(v0 + v2);
  *(v0 + v2) = v1;

  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_screenCount) = 0;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_windowCount) = 0;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_uiElementCount) = 0;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_totalCharacterTextCount) = 0;
  return result;
}

uint64_t sub_254F17CB8()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_clock;
  v2 = sub_254F29A40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_254F17F60(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_overallStart);
  sub_254F17F60(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_uiElementCollectionStart);
  v3 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_payload);

  return v0;
}

uint64_t sub_254F17D48()
{
  sub_254F17CB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_254F17DA8()
{
  v0 = sub_254F29A40();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_254F17E98();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_254F17E98()
{
  if (!qword_281426028)
  {
    sub_254F29A20();
    v0 = sub_254F29810();
    if (!v1)
    {
      atomic_store(v0, &qword_281426028);
    }
  }
}

uint64_t sub_254F17EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F638, "f9");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254F17F60(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75F638, "f9");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int8x16_t sub_254F17FC8@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  v3 = a2[1].i64[0];
  v4 = a2[1].i64[1];
  v5 = a2[2].i8[0];
  v6 = fabs(*a1[1].i64 * *&a1[1].i64[1]);
  v7 = 0.0;
  if (a1[2].i8[0])
  {
    v6 = 0.0;
  }

  v8 = fabs(*a2[1].i64 * *&a2[1].i64[1]);
  if ((a2[2].i8[0] & 1) == 0)
  {
    v7 = v8;
  }

  if (v6 > v7)
  {
    v3 = a1[1].i64[0];
    v4 = a1[1].i64[1];
    v5 = a1[2].i8[0];
  }

  v9 = vdup_n_s32(v6 <= v7);
  v10.i64[0] = v9.u32[0];
  v10.i64[1] = v9.u32[1];
  result = vbslq_s8(vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL)), *a2, *a1);
  *a3 = result;
  a3[1].i64[0] = v3;
  a3[1].i64[1] = v4;
  a3[2].i8[0] = v5 & 1;
  return result;
}

uint64_t sub_254F18050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = sub_254F27DA0();
  v4 = sub_254EB2CBC(v157);
  v164 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v154 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_254EC8BC0(&qword_27F75F640, "r9");
  v9 = sub_254EB2D80(v165);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_254EB3D38();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v12);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v13);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v14);
  v156 = &v140 - v15;
  v16 = sub_254EC8BC0(&qword_27F75F308, &unk_254F2C4C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_254EB3D38();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v18);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v19);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v20);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v21);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v22);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v23);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v24);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v25);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v26);
  sub_254EB40A4();
  sub_254EB2EC0();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = (&v140 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = &v140 - v31;
  v162 = type metadata accessor for ContextValueElement();
  v33 = sub_254EB2D80(v162);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  sub_254EB3D38();
  sub_254EB2EC0();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v140 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v140 - v44;
  v46 = sub_254F281F0();
  v47 = sub_254EB2CBC(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  sub_254EB3D38();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v52);
  v54 = &v140 - v53;
  v166 = a1;
  sub_254F28100();
  sub_254EB3DDC(v45);
  if (v58)
  {
    sub_254EB306C(v45, &unk_27F75EEB0, &unk_254F2B490);
    v55 = v167;
    v56 = a2;
    return sub_254F1919C(v55, v56);
  }

  v149 = v37;
  v146 = a2;
  v57 = *(v49 + 32);
  (v57)(v54, v45, v46);
  sub_254F28100();
  sub_254EB3DDC(v43);
  if (v58)
  {
    (*(v49 + 8))(v54, v46);
    sub_254EB306C(v43, &unk_27F75EEB0, &unk_254F2B490);
    v55 = v166;
    v56 = v146;
    return sub_254F1919C(v55, v56);
  }

  v144 = v49;
  v60 = v163;
  v142 = v46;
  (v57)(v163, v43, v46);
  sub_254EB6904();
  sub_254F1919C(v61, v57);
  v143 = v54;
  v62 = sub_254F281C0();
  v63 = &v179;
  v64 = sub_254F281B0();
  sub_254EED850(v62);
  v64(&v179, 0);
  sub_254EC00D8();
  v141 = *(v65 + 20);
  sub_254F28E80();
  v67 = v164 + 104;
  v66 = *(v164 + 104);
  LODWORD(v167) = *MEMORY[0x277D745B8];
  v68 = v157;
  v145 = v66;
  v66(v30);
  sub_254EB8044(v30);
  v69 = *(v165 + 48);
  v70 = v156;
  sub_254F19200(v32, v156);
  sub_254F19200(v30, v70 + v69);
  sub_254EB3DFC(v70);
  if (v71)
  {
    v60 = &qword_27F75F308;
    sub_254EB306C(v30, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB306C(v32, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB3DFC(v70 + v69);
    v63 = v163;
    if (v58)
    {
      sub_254EB306C(v70, &qword_27F75F308, &unk_254F2C4C0);
      v72 = v144;
      goto LABEL_33;
    }

LABEL_16:
    v74 = &qword_27F75F640;
    v75 = "r9";
    v76 = v70;
    goto LABEL_17;
  }

  sub_254EB5768(v70, v176);
  sub_254EB3DFC(v70 + v69);
  if (v73)
  {
    sub_254EB306C(v30, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB306C(v32, &qword_27F75F308, &unk_254F2C4C0);
    (*(v164 + 8))(v60, v68);
    sub_254EB99B4();
    goto LABEL_16;
  }

  sub_254EB3F44();
  v140 = v67;
  v89 = v60;
  v90 = v154;
  v91(v154, v70 + v69, v68);
  sub_254F19270();
  v92 = sub_254F29410();
  v63 = &v179.u64[1];
  v57 = v179.i64[1];
  (v179.i64[1])(v90, v68);
  v60 = v70;
  sub_254EB306C(v30, &qword_27F75F308, &unk_254F2C4C0);
  sub_254EB306C(v32, &qword_27F75F308, &unk_254F2C4C0);
  (v57)(v89, v68);
  sub_254EB6904();
  sub_254EB306C(v70, &qword_27F75F308, &unk_254F2C4C0);
  v72 = v144;
  sub_254EB99B4();
  sub_254EB3B20();
  if ((v92 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_33:
  sub_254EC00D8();
  v156 = *(v93 + 20);
  v94 = v152;
  sub_254F28E80();
  v95 = v151;
  sub_254EB7B1C();
  v96();
  sub_254EB8044(v95);
  sub_254EB7EB4();
  v30 = v153;
  sub_254F19200(v94, v153);
  sub_254F19200(v95, v68 + v30);
  sub_254EB6AE0(v30);
  if (v58)
  {
    v60 = &qword_27F75F308;
    sub_254EB306C(v95, &qword_27F75F308, &unk_254F2C4C0);
    v30 = v153;
    sub_254EB306C(v94, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB6AE0(v68 + v30);
    if (!v58)
    {
      goto LABEL_47;
    }

    v74 = &qword_27F75F308;
    v75 = &unk_254F2C4C0;
    v76 = v30;
LABEL_17:
    sub_254EB306C(v76, v74, v75);
    sub_254EB3B20();
    goto LABEL_18;
  }

  sub_254EB5768(v30, v174);
  sub_254EB6AE0(v68 + v30);
  if (v108)
  {
    v109 = sub_254EB6468(v177);
    sub_254EB306C(v109, v110, &unk_254F2C4C0);
    v111 = sub_254EB6468(v178);
    sub_254EB306C(v111, v112, &unk_254F2C4C0);
    (*(v164 + 8))(v60, v68);
LABEL_47:
    sub_254EB306C(v30, &qword_27F75F640, "r9");
LABEL_48:
    v113 = sub_254F28EE0();
    sub_254EB2D80(v113);
    (*(v114 + 24))(&v57[v156], v166 + v141);
    v79 = v143;
    goto LABEL_49;
  }

  sub_254EB3F44();
  v135 = sub_254EB6984();
  v136(v135);
  sub_254F19270();
  v150 = sub_254F29410();
  v137 = v63->i64[1];
  v63 = (v63 + 8);
  v137(v68, v68);
  sub_254EB306C(v151, &qword_27F75F308, &unk_254F2C4C0);
  sub_254EB306C(v152, &qword_27F75F308, &unk_254F2C4C0);
  v137(v60, v68);
  sub_254EB99B4();
  sub_254EB3B20();
  sub_254EB306C(v138, v139, &unk_254F2C4C0);
  if ((v150 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_18:
  v72 = v160;
  sub_254F28E80();
  v57 = v159;
  sub_254EB7B1C();
  v77();
  sub_254EB8044(v57);
  v78 = v68;
  sub_254EB7EB4();
  sub_254EB5768(v72, &v184);
  sub_254F19200(v57, v68 + v60);
  sub_254EB6AE0(v60);
  if (v58)
  {
    sub_254EB306C(v57, &qword_27F75F308, &unk_254F2C4C0);
    v60 = v161;
    sub_254EB306C(v72, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB6AE0(v68 + v60);
    v79 = v143;
    v72 = v144;
    if (v58)
    {
      sub_254EB306C(v60, &qword_27F75F308, &unk_254F2C4C0);
      sub_254EB6904();
      goto LABEL_51;
    }

    goto LABEL_26;
  }

  v79 = v148;
  sub_254F19200(v60, v148);
  sub_254EB6AE0(v68 + v60);
  if (v80)
  {
    v68 = &unk_254F2C4C0;
    v81 = sub_254EB6468(&v182);
    sub_254EB306C(v81, v82, &unk_254F2C4C0);
    v83 = sub_254EB6468(&v183);
    v60 = v161;
    sub_254EB306C(v83, v84, &unk_254F2C4C0);
    (*(v164 + 8))(v79, v78);
    sub_254EB522C();
LABEL_26:
    sub_254EB306C(v60, &qword_27F75F640, "r9");
    sub_254EB6904();
    goto LABEL_27;
  }

  v100 = v79;
  v101 = v164;
  v102 = *(v164 + 32);
  v103 = sub_254EB6984();
  v104(v103);
  sub_254F19270();
  LODWORD(v166) = sub_254F29410();
  v105 = *(v101 + 8);
  v79 = v101 + 8;
  v63 = v105;
  (v105)(v68, v68);
  v30 = &qword_27F75F308;
  v68 = &unk_254F2C4C0;
  sub_254EB306C(v159, &qword_27F75F308, &unk_254F2C4C0);
  sub_254EB306C(v160, &qword_27F75F308, &unk_254F2C4C0);
  (v105)(v100, v78);
  sub_254EB99B4();
  sub_254EB3B20();
  sub_254EB306C(v106, v107, &unk_254F2C4C0);
  sub_254EB522C();
  sub_254EB6904();
  if (v166)
  {
    goto LABEL_51;
  }

LABEL_27:
  sub_254EC00D8();
  v86 = &v57[*(v85 + 20)];
  sub_254F28E80();
  v87 = v155;
  sub_254EB7B1C();
  v88();
  sub_254EB8044(v87);
  sub_254EB7EB4();
  sub_254EB5768(v30, v181);
  sub_254F19200(v87, v68 + v60);
  sub_254EB3DDC(v60);
  if (v58)
  {
    sub_254EB306C(v87, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB49E4();
    sub_254EB3DDC(&qword_27F75F308 + v68);
    v57 = v149;
    if (v58)
    {
      sub_254EB306C(&qword_27F75F308, &qword_27F75F308, &unk_254F2C4C0);
      goto LABEL_57;
    }

    goto LABEL_41;
  }

  v57 = v147;
  sub_254F19200(v60, v147);
  sub_254EB3DDC(v68 + v60);
  if (v97)
  {
    v98 = sub_254EB6468(v180);
    sub_254EB306C(v98, v99, &unk_254F2C4C0);
    sub_254EB49E4();
    (*(v164 + 8))(v57, v68);
    sub_254EB6904();
LABEL_41:
    sub_254EB306C(&qword_27F75F308, &qword_27F75F640, "r9");
    goto LABEL_51;
  }

  v115 = v30;
  v116 = v164;
  v117 = *(v164 + 32);
  v118 = sub_254EB6984();
  v119(v118);
  sub_254F19270();
  LODWORD(v167) = sub_254F29410();
  v120 = *(v116 + 8);
  v120(v68, v68);
  sub_254EB306C(v155, &qword_27F75F308, &unk_254F2C4C0);
  sub_254EB306C(v115, &qword_27F75F308, &unk_254F2C4C0);
  v120(v57, v68);
  v79 = v143;
  sub_254EB306C(v60, &qword_27F75F308, &unk_254F2C4C0);
  sub_254EB6904();
  if (v167)
  {
    goto LABEL_57;
  }

LABEL_51:
  if ((sub_254F281D0() & 1) == 0)
  {
    if ((sub_254F281D0() & 1) == 0)
    {
      goto LABEL_55;
    }

    sub_254EC00D8();
    v122 = *(v121 + 20);
    sub_254F28E40();
    v123 = v168;
    v124 = v169;
    v125 = v170;
    v126 = v171;
    sub_254F28EC0();
    if (v172)
    {
      goto LABEL_55;
    }

    v186.origin.x = v127;
    v186.origin.y = v128;
    v186.size.width = v129;
    v186.size.height = v130;
    v185.origin.x = v123;
    v185.origin.y = v124;
    v185.size.width = v125;
    v185.size.height = v126;
    if (!CGRectEqualToRect(v185, v186))
    {
LABEL_55:
      sub_254F28190();
      sub_254F28190();
      sub_254F17FC8(&v173, &v175, &v179);
      goto LABEL_56;
    }

LABEL_49:
    sub_254F28190();
LABEL_56:
    sub_254F281A0();
  }

LABEL_57:
  if ((sub_254F28130() & 1) == 0)
  {
    sub_254F28130();
  }

  sub_254F28140();
  v131 = sub_254F281D0();
  v132 = v142;
  if ((v131 & 1) == 0)
  {
    sub_254F281D0();
  }

  sub_254F281E0();
  sub_254F28160();
  sub_254F28160();
  sub_254F28170();
  v133 = v158;
  (*(v72 + 16))(v158, v63, v132);
  sub_254EB8044(v133);
  sub_254F28110();
  v134 = *(v72 + 8);
  v134(v63, v132);
  v134(v79, v132);
  return sub_254ED1FB4(v57, v146);
}

uint64_t type metadata accessor for ContextValueElement()
{
  result = qword_281427278;
  if (!qword_281427278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254F1919C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextValueElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254F19200(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F308, &unk_254F2C4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_254F19270()
{
  result = qword_27F75F648;
  if (!qword_27F75F648)
  {
    sub_254F27DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F648);
  }

  return result;
}

uint64_t sub_254F192F0()
{
  result = sub_254F28120();
  if (v1 <= 0x3F)
  {
    result = sub_254F28EE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254F19374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_254EC8BC0(&qword_27F75EEC8, &qword_254F2B628);
  v4 = sub_254EB2D90(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v102 = v98 - v7;
  v8 = sub_254EC8BC0(&qword_27F75F650, "h9");
  v9 = sub_254EB2D90(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v98 - v12;
  v14 = sub_254EC8BC0(&qword_27F75F2D0, &qword_254F2C418);
  v15 = sub_254EB2D90(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_254EB2E04();
  v105 = (v18 - v19);
  sub_254EB3D2C();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v98 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v98 - v24;
  v26 = sub_254EC8BC0(&qword_27F75F658, "h9");
  v27 = sub_254EB2D90(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_254EB2E04();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v98 - v34;
  v36 = sub_254F27890();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_254EB2E04();
  v107 = v39 - v40;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v41);
  v106 = v98 - v42;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v43);
  v104 = v98 - v44;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v45);
  v47 = v98 - v46;
  sub_254F19A54(a1, v25);
  v48 = sub_254F27710();
  sub_254EB3DFC(v25);
  v101 = v37;
  if (v62)
  {
    sub_254EB300C(v25, &qword_27F75F2D0, &qword_254F2C418);
    sub_254EB6A6C();
    sub_254EB2F04(v49, v50, v51, v36);
    sub_254F27880();
    sub_254EB6E04(v35);
    if (!v62)
    {
      sub_254EB300C(v35, &qword_27F75F658, "h9");
    }
  }

  else
  {
    sub_254F276E0();
    sub_254EB6CD4();
    (*(v52 + 8))(v25, v48);
    sub_254EB2F04(v35, 0, 1, v36);
    (*(v37 + 32))(v47, v35, v36);
  }

  v53 = sub_254F29460();
  v55 = v54;
  sub_254F19A54(a1, v23);
  sub_254EB3DFC(v23);
  v108 = v36;
  if (v62)
  {
    sub_254EB300C(v23, &qword_27F75F2D0, &qword_254F2C418);
    sub_254EB6A6C();
    sub_254EB2F04(v56, v57, v58, v36);
    v59 = v105;
  }

  else
  {
    sub_254F276F0();
    v60 = v108;
    sub_254EB6CD4();
    (*(v61 + 8))(v23, v48);
    sub_254EB6E04(v32);
    v59 = v105;
    if (!v62)
    {
      (*(v101 + 32))(v104, v32, v60);
      goto LABEL_12;
    }
  }

  sub_254F27880();
  sub_254EB6E04(v32);
  if (!v62)
  {
    sub_254EB300C(v32, &qword_27F75F658, "h9");
  }

LABEL_12:
  v63 = sub_254F29460();
  v65 = v64;
  sub_254F29350();
  sub_254EB6A6C();
  sub_254EB2F04(v66, v67, v68, v69);
  sub_254F29340();
  sub_254EB6A6C();
  sub_254EB2F04(v70, v71, v72, v73);
  sub_254F19A54(a1, v59);
  sub_254EB3DFC(v59);
  if (v62)
  {
    sub_254EB300C(v59, &qword_27F75F2D0, &qword_254F2C418);
  }

  else
  {
    v100 = v65;
    sub_254F27700();
    sub_254EB6CD4();
    v75 = v59;
    v77 = v76;
    (*(v74 + 8))(v75, v48);
    v78 = *(v77 + 16);
    if (v78)
    {
      v98[0] = v63;
      v98[1] = v55;
      v98[2] = v53;
      v98[3] = v13;
      v99 = a1;
      v80 = v101 + 16;
      v79 = *(v101 + 16);
      v81 = *(v101 + 80);
      v101 = v77;
      v82 = (v77 + ((v81 + 32) & ~v81));
      v104 = *(v80 + 56);
      v105 = v79;
      v83 = (v80 - 8);
      v84 = MEMORY[0x277D84F90];
      do
      {
        v86 = v105;
        v85 = v106;
        v87 = v108;
        v105(v106, v82, v108);
        v88 = v80;
        v86(v107, v85, v87);
        v89 = sub_254F29460();
        v91 = v90;
        (*v83)(v85, v87);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = *(v84 + 16);
          sub_254EEFF7C();
          v84 = v95;
        }

        v92 = *(v84 + 16);
        if (v92 >= *(v84 + 24) >> 1)
        {
          sub_254EEFF7C();
          v84 = v96;
        }

        *(v84 + 16) = v92 + 1;
        v93 = v84 + 16 * v92;
        *(v93 + 32) = v89;
        *(v93 + 40) = v91;
        v82 = &v104[v82];
        --v78;
        v80 = v88;
      }

      while (v78);

      a1 = v99;
    }

    else
    {
    }
  }

  sub_254F29370();
  return sub_254EB300C(a1, &qword_27F75F2D0, &qword_254F2C418);
}

uint64_t sub_254F19A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F2D0, &qword_254F2C418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254F19AC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_254F19AEC()
{
  sub_254F19AC4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_254F19B20()
{
  sub_254F19CF0();
  sub_254EC8BC0(&qword_27F75F668, &qword_254F2CC58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_254F2AE00;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_254F19D34();
  v1 = sub_254EB2ED0(0xD00000000000002BLL);
  v2 = sub_254F29420();
  v3 = [v1 evaluateWithObject_];

  return v3;
}

Swift::Bool __swiftcall String.isValidPhoneNumber()()
{
  sub_254F19CF0();
  sub_254EC8BC0(&qword_27F75F668, &qword_254F2CC58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_254F2AE00;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_254F19D34();
  v1 = sub_254EB2ED0(0xD00000000000001ALL);
  v2 = sub_254F29420();
  v3 = [v1 evaluateWithObject_];

  return v3;
}

unint64_t sub_254F19CF0()
{
  result = qword_27F75F660;
  if (!qword_27F75F660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F75F660);
  }

  return result;
}

unint64_t sub_254F19D34()
{
  result = qword_27F75F670;
  if (!qword_27F75F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F670);
  }

  return result;
}

void sub_254F19D88()
{
  sub_254EC1A1C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v7);
  v9 = *(v8 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v10);
  sub_254F22AAC(v11, v16);
  v12 = sub_254F29600();
  v13 = sub_254EB2F2C(v0, 1, v12);

  if (v13 == 1)
  {
    sub_254EB2B68(v0, &qword_27F75EE08, &qword_254F2B1A0);
  }

  else
  {
    sub_254F295F0();
    (*(*(v12 - 8) + 8))(v0, v12);
  }

  v15 = *(v2 + 16);
  v14 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_254EB2B68(v4, &qword_27F75EE08, &qword_254F2B1A0);
    sub_254F22C14();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_254F295C0();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_254F294A0();

  sub_254F22C14();

  sub_254EB2B68(v4, &qword_27F75EE08, &qword_254F2B1A0);

LABEL_9:
  sub_254EB4078();
}

void sub_254F19FE4()
{
  sub_254EC1A1C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v21 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v12);
  v14 = *(v13 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v15);
  sub_254F22AAC(v16, v21);
  v17 = sub_254F29600();
  v18 = sub_254EB2F2C(v0, 1, v17);

  if (v18 == 1)
  {
    sub_254EB2B68(v0, &qword_27F75EE08, &qword_254F2B1A0);
  }

  else
  {
    sub_254F295F0();
    (*(*(v17 - 8) + 8))(v0, v17);
  }

  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_254EB2B68(v9, &qword_27F75EE08, &qword_254F2B1A0);
    sub_254EC8BC0(v4, v2);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_254F295C0();
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_254F294A0();

  sub_254EC8BC0(v4, v2);
  swift_task_create();

  sub_254EB2B68(v9, &qword_27F75EE08, &qword_254F2B1A0);

LABEL_9:
  sub_254EB4078();
}

uint64_t sub_254F1A23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_254ECD9D8(a3, v23 - v10);
  v12 = sub_254F29600();
  v13 = sub_254EB2F2C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_254EB2B68(v11, &qword_27F75EE08, &qword_254F2B1A0);
  }

  else
  {
    sub_254F295F0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_254F295C0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a3;
      v19 = sub_254F294A0() + 32;
      type metadata accessor for ContextRetriever();

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_254EB2B68(v23[0], &qword_27F75EE08, &qword_254F2B1A0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254EB2B68(a3, &qword_27F75EE08, &qword_254F2B1A0);
  type metadata accessor for ContextRetriever();
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_254F1A4C8()
{
  *(v1 + 24) = v0;
  sub_254EB3FB8();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_254F1A4F4()
{
  sub_254EB3A3C();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_contextRetrieverSetup);
  v2 = *(MEMORY[0x277D857C8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v4 = type metadata accessor for ContextRetriever();
  v5 = sub_254EC8BC0(&qword_27F75F090, "P<");
  *v3 = v0;
  v3[1] = sub_254F1A5D4;
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v1, v4, v5, v6);
}

uint64_t sub_254F1A5D4()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_254EB2CE0();
  *v7 = v6;
  *(v8 + 40) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_254F1A700()
{
  v1 = objc_allocWithZone(v0);
  sub_254EB82CC();
  sub_254F1A740();
}

void sub_254F1A740()
{
  sub_254EC1A1C();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = sub_254F291E0();
  v10 = sub_254EB2CBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v46 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v16);
  v18 = *(v17 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v19);
  sub_254EB5780();
  v20 = OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_encoder;
  v21 = sub_254F27780();
  sub_254EB82B4(v21);
  *&v0[v20] = sub_254F27770();
  v22 = OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_decoder;
  v23 = sub_254F27750();
  sub_254EB82B4(v23);
  *&v0[v22] = sub_254F27740();
  v24 = [v5 processIdentifier];
  if ((v24 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v24;
    v42[3] = v12;
    v42[4] = v9;
    v45 = ObjectType;
    ObjectType = sub_254F28690();
    v12 = v25;
    if (qword_2814261B0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v26 = off_2814261B8;
  os_unfair_lock_lock(off_2814261B8 + 10);
  os_unfair_lock_opaque = v26[9]._os_unfair_lock_opaque;
  v28 = os_unfair_lock_opaque + 1;
  if (os_unfair_lock_opaque == -1)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_8;
  }

  v44 = v5;
  v26[8]._os_unfair_lock_opaque = v2;
  v26[9]._os_unfair_lock_opaque = v28;
  v29 = *&v26[6]._os_unfair_lock_opaque;
  *&v26[4]._os_unfair_lock_opaque = ObjectType;
  *&v26[6]._os_unfair_lock_opaque = v12;
  swift_bridgeObjectRetain_n();

  os_unfair_lock_unlock(v26 + 10);

  v30 = &v3[OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_requestId];
  *v30 = v2;
  *(v30 + 1) = v28;
  *(v30 + 1) = ObjectType;
  *(v30 + 2) = v12;
  v47 = 0;
  v48 = 0xE000000000000000;

  sub_254F29940();

  v47 = 0xD00000000000001FLL;
  v48 = 0x8000000254F2E860;
  v43 = v7;
  v31 = sub_254F28690();
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v31 = 0x436E776F6E6B6E55;
    v33 = 0xED0000746E65696CLL;
  }

  MEMORY[0x259C2DC50](v31, v33);

  sub_254F22BB0();
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  *(v34 + 20) = v28;
  *(v34 + 24) = ObjectType;
  *(v34 + 32) = v12;
  v35 = sub_254F28570();
  sub_254EB82B4(v35);

  *&v3[OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_transaction] = sub_254F28580();
  v36 = sub_254F29600();
  sub_254EC1FD0(v36);
  sub_254F22B98();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v2;
  *(v37 + 36) = v28;
  *(v37 + 40) = ObjectType;
  *(v37 + 48) = v12;

  *&v3[OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_contextRetrieverSetup] = sub_254F1A23C(0, 0, v1, &unk_254F2CD90, v37);
  if (qword_281427150 != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v38 = sub_254EB61A0();

  *&v3[OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_contextCache] = v38;
  v39 = v43;
  v49.receiver = v3;
  v49.super_class = v45;
  objc_msgSendSuper2(&v49, sel_init);

  v40 = sub_254F286A0();
  sub_254EB2D54(v40);
  (*(v41 + 8))(v39);
  sub_254EB4078();
}

uint64_t sub_254F1AD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_254F291E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F284C0();

  v13 = sub_254F291D0();
  v14 = sub_254F296E0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = a2;
    v19 = v17;
    v31 = a3;
    v32 = v17;
    *v16 = 136446210;
    v29 = a1;
    v30 = v18;
    v20 = RequestID.debugDescription.getter();
    v22 = sub_254EC2D74(v20, v21, &v32);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_254EAE000, v13, v14, "received a signal for termination for %{public}s", v16, 0xCu);
    sub_254EB2BBC(v19);
    MEMORY[0x259C2EB80](v19, -1, -1);
    v23 = v16;
    a4 = v28;
    MEMORY[0x259C2EB80](v23, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v24 = *MEMORY[0x277D41D50];
  v25 = sub_254F28560();
  return (*(*(v25 - 8) + 104))(a4, v24, v25);
}

uint64_t sub_254F1AF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a1;
  v6[6] = a6;
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a6;
  return MEMORY[0x2822009F8](sub_254F1AF60, 0, 0);
}

uint64_t sub_254F1AF60()
{
  sub_254EB3A3C();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = type metadata accessor for ContextRetriever();
  sub_254EB82B4(v3);

  *v2 = sub_254EE326C(v0 + 16);
  sub_254EB5B78();

  return v4();
}

void sub_254F1AFE4()
{
  sub_254EC1A1C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v14);
  v16 = *(v15 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v17);
  sub_254EB5780();
  v18 = sub_254F29600();
  sub_254EC1FD0(v18);
  sub_254F22888();
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = v3;
  sub_254F22B98();
  v20 = swift_allocObject();
  v20[2] = v13;
  v20[3] = v11;
  v20[4] = v0;
  v20[5] = v9;
  v20[6] = v7;

  sub_254F22608(v13, v11);
  sub_254ECB3B0();
  v21 = v0;

  sub_254F29610();

  sub_254EB2B68(v1, &qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB4078();
}

uint64_t sub_254F1B140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = sub_254F291E0();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F1B208, 0, 0);
}

uint64_t sub_254F1B208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = v14[8];
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v19 = v14[7];
    v20 = *(v14[9] + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_decoder);
    sub_254EC8BC0(&qword_27F75F0D8, &unk_254F2BD48);
    sub_254F22334(v19, v17);
    sub_254F2238C();
    sub_254EB5A28();
    if (v17)
    {
      v21 = v17;
      v22 = v14[14];
      sub_254EF2778(v14[7], v14[8]);
      sub_254F284C0();
      v23 = v17;
      v24 = sub_254F291D0();
      sub_254F29700();

      v25 = sub_254F228AC();
      v27 = v14[13];
      v26 = v14[14];
      v28 = v14[12];
      if (v25)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v15 = 136315394;
        sub_254EB2EF4();
        v31 = sub_254EC2D74(0xD000000000000029, v29, v30);
        sub_254EB5244(v31);
        v32 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v32);
        sub_254EB6994(&dword_254EAE000, v33, v34, "could not decode [ContextType] in %s. Error: %@");
        sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v35 = sub_254EB3E1C();
      v36(v35);
      v37 = v14[14];
      sub_254F22048();
      sub_254EB7D94();
      *v38 = 1;
      swift_willThrow();

      v39 = v14[1];
      goto LABEL_15;
    }

    sub_254EF2778(v14[7], v14[8]);
    v18 = v14[5];
  }

  v40 = v14[9];
  if (*(v40 + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_contextCache))
  {
    if (!v18)
    {
      v18 = sub_254F28060();
      v40 = v14[9];
    }

    v14[15] = v18;
    v41 = (v40 + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_requestId);
    v43 = v41[1];
    v42 = v41[2];
    v14[2] = *v41;
    v14[3] = v43;
    v14[4] = v42;

    v44 = swift_task_alloc();
    v14[16] = v44;
    *v44 = v14;
    v44[1] = sub_254F1B4E4;
    v45 = v14[10];
    v46 = v14[11];
    sub_254EB3B50();

    return sub_254EE1B6C();
  }

  v49 = v14[14];
  v50 = v14[6];
  sub_254ECB3B0();
  sub_254EB5144();
  *v50 = sub_254F297F0();

  sub_254EB5B78();
LABEL_15:
  sub_254EB3B50();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1B4E4()
{
  sub_254EB3A3C();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *v0;
  sub_254EB2CE0();
  *v5 = v4;

  v6 = *(v1 + 32);

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254F1B610()
{
  sub_254EB3A3C();
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  sub_254ECB3B0();
  sub_254EB5144();
  *v2 = sub_254F297F0();

  sub_254EB5B78();

  return v3();
}

void sub_254F1B7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_254F27860();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_254F1B830()
{
  sub_254EC1A1C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v9);
  v11 = *(v10 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v12);
  sub_254EB5780();
  v13 = sub_254F29600();
  sub_254EC1FD0(v13);
  sub_254F22888();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v2;
  sub_254F22BB0();
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v6;
  v15[4] = v0;

  sub_254F22608(v8, v6);
  v16 = v0;
  sub_254F29610();

  v17 = sub_254EB82CC();
  sub_254EB2B68(v17, v18, &qword_254F2B1A0);
  sub_254EB4078();
}

uint64_t sub_254F1B96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_254F29990();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = sub_254F291E0();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v11 = sub_254F29980();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F1BB00, 0, 0);
}

uint64_t sub_254F1BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 88);
  if (v17 >> 60 == 15)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v19 = *(v14 + 80);
  v20 = *(*(v14 + 96) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_decoder);
  sub_254EC8BC0(&qword_27F75F0D8, &unk_254F2BD48);
  sub_254F22334(v19, v17);
  sub_254F2238C();
  sub_254EB5A28();
  v21 = v17;
  sub_254EF2778(*(v14 + 80), *(v14 + 88));
  if (!v17)
  {
    v18 = *(v14 + 64);
LABEL_9:
    *(v14 + 192) = v18;
    v40 = *(v14 + 96);
    if (*(v40 + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_contextCache))
    {
      if (v18)
      {
        v41 = v18;
      }

      else
      {
        v41 = sub_254F28060();
        v40 = *(v14 + 96);
      }

      *(v14 + 200) = v41;
      v46 = (v40 + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_requestId);
      v47 = v46[1];
      v48 = v46[2];
      *(v14 + 16) = *v46;
      *(v14 + 24) = v47;
      *(v14 + 32) = v48;

      v49 = swift_task_alloc();
      *(v14 + 208) = v49;
      *v49 = v14;
      v49[1] = sub_254F1BF9C;
      sub_254EB3FB8();
      sub_254EB3B50();

      return sub_254EE1B6C();
    }

    else
    {
      v42 = swift_task_alloc();
      *(v14 + 216) = v42;
      *v42 = v14;
      sub_254F2283C(v42);
      v43 = *(v14 + 96);
      sub_254EB3B50();

      return sub_254F1A4C8();
    }
  }

  v22 = *(v14 + 184);
  v23 = *(v14 + 168);
  *(v14 + 40) = v21;
  v24 = v21;
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB5B58())
  {
    sub_254F22D3C();
    sub_254F284C0();
    v25 = sub_254F291D0();
    v26 = sub_254F29700();
    sub_254EB493C(v26);
    sub_254F22BBC();
    if (v27)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v28, v29, v30);
      sub_254EB4154(&dword_254EAE000, v31, v32, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v33 = sub_254EB67C8();
    v34(v33);
    sub_254F22D24();
    v35 = sub_254EB7D94();
    sub_254EB4A08(v35, v36);
    v37 = sub_254EB6B58();
    v38(v37);
    v39 = *(v14 + 40);
  }

  else
  {
    v51 = *(v14 + 120);
    v52 = *(v14 + 104);

    sub_254F22D0C();
    if (!sub_254EB5B58())
    {
      sub_254F22CAC();
      sub_254F284C0();
      v67 = v21;
      v68 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      sub_254F228AC();
      sub_254F22B8C();
      if (v69)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v15 = 136315394;
        sub_254EB2EF4();
        v73 = sub_254F22968(v70, v71, v72);
        sub_254EB5244(v73);
        v74 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v74);
        sub_254EB6994(&dword_254EAE000, v75, v76, "error in %s: %@");
        sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v77 = sub_254EB3E1C();
      v78(v77);
      swift_willThrow();
      goto LABEL_27;
    }

    sub_254F22CF4();
    sub_254F284C0();
    v53 = sub_254F291D0();
    v54 = sub_254F29700();
    sub_254EB493C(v54);
    sub_254F22BA4();
    if (v55)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v56, v57, v58);
      sub_254EB4154(&dword_254EAE000, v59, v60, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v61 = sub_254EB67C8();
    v62(v61);
    sub_254F22CDC();
    v63 = sub_254EB7D94();
    sub_254EB4AB0(v63, v64);
    v65 = sub_254EB6B58();
    v66(v65);
    v39 = *(v14 + 48);
  }

LABEL_27:
  sub_254EBBB38();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1BF9C()
{
  sub_254EB3A3C();
  v1 = *v0;
  v2 = *v0;
  sub_254EB2CE0();
  *v3 = v2;
  v4 = v1[26];
  v5 = v1[25];
  v6 = *v0;
  *v3 = *v0;

  v7 = v1[4];

  v8 = swift_task_alloc();
  v2[27] = v8;
  *v8 = v6;
  sub_254F2283C(v8);
  v9 = v1[12];

  return sub_254F1A4C8();
}

uint64_t sub_254F1C0EC()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  v5 = *(v4 + 216);
  *v3 = *v1;
  *(v2 + 224) = v6;
  *(v2 + 232) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254F1C1EC()
{
  sub_254EB3BD8();
  v1 = v0[24];
  if (!v1)
  {
    v1 = sub_254F28060();
  }

  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_254F1C298;
  v3 = v0[28];

  return sub_254EE3358();
}

uint64_t sub_254F1C298()
{
  sub_254EB3A3C();
  sub_254F22B38();
  sub_254EB63D8();
  *v4 = v3;
  v5 = *(v0 + 248);
  v6 = *v2;
  sub_254EB5BF0();
  *v7 = v6;
  *(v9 + 256) = v8;
  *(v9 + 264) = v1;

  sub_254F22B2C();
  v11 = *(v10 + 240);
  v12 = *(v0 + 224);
  if (v1)
  {
  }

  else
  {
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_254F1C3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = v14[32];
  v18 = v14[12];
  sub_254F22B80();
  *(v15 + 56) = v19;
  v20 = *(v15 + 264);
  sub_254EC8BC0(&qword_27F75F6B0, &qword_254F2CDC0);
  sub_254F2209C();
  sub_254F2287C();
  v22 = sub_254F27760();
  v23 = v14[32];
  if (!v20)
  {
    v42 = v21;
    v43 = v14[23];
    v45 = v14[19];
    v44 = v14[20];
    v46 = v14[18];
    v47 = v14[15];
    v48 = v14[9];

    *v48 = v22;
    v48[1] = v42;

    sub_254EB5B78();
    goto LABEL_16;
  }

  v24 = v14[23];
  v25 = v14[21];
  v14[5] = v20;
  v26 = v20;
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254F22998())
  {
    sub_254F22D3C();
    sub_254F284C0();
    v27 = sub_254F291D0();
    v28 = sub_254F29700();
    sub_254EB493C(v28);
    sub_254F22BBC();
    if (v29)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v24 = 136315138;
      sub_254EB2EF4();
      *(v24 + 4) = sub_254F22968(v30, v31, v32);
      sub_254EB4154(&dword_254EAE000, v33, v34, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v35 = sub_254EB67C8();
    v36(v35);
    sub_254F22D24();
    v37 = sub_254EB7D94();
    sub_254EB4A08(v37, v38);
    v39 = sub_254EB6B58();
    v40(v39);
    v41 = v14[5];
  }

  else
  {
    sub_254F22A74();
    sub_254F22D0C();
    if (!sub_254EBBB58())
    {
      sub_254F22CAC();
      sub_254F284C0();
      v63 = v20;
      v64 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      sub_254F228AC();
      sub_254F22B8C();
      if (v65)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v24 = 136315394;
        sub_254EB2EF4();
        v69 = sub_254F22968(v66, v67, v68);
        sub_254EB5244(v69);
        v70 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v70);
        sub_254EB6994(&dword_254EAE000, v71, v72, "error in %s: %@");
        sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v73 = sub_254EB3E1C();
      v74(v73);
      swift_willThrow();
      goto LABEL_15;
    }

    sub_254F22CF4();
    sub_254F284C0();
    v49 = sub_254F291D0();
    v50 = sub_254F29700();
    sub_254EB493C(v50);
    sub_254F22BA4();
    if (v51)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v24 = 136315138;
      sub_254EB2EF4();
      *(v24 + 4) = sub_254F22968(v52, v53, v54);
      sub_254EB4154(&dword_254EAE000, v55, v56, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v57 = sub_254EB67C8();
    v58(v57);
    sub_254F22CDC();
    v59 = sub_254EB7D94();
    sub_254EB4AB0(v59, v60);
    v61 = sub_254EB6B58();
    v62(v61);
    v41 = v14[6];
  }

LABEL_15:
  sub_254EBBB38();

  sub_254EB3E2C();
LABEL_16:
  sub_254EB3B50();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = v14[24];

  v18 = v14[29];
  v14[5] = v18;
  sub_254F2294C();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB7EC4())
  {
    sub_254F22D3C();
    sub_254F284C0();
    v19 = sub_254F291D0();
    v20 = sub_254F29700();
    sub_254EB493C(v20);
    sub_254F22BBC();
    if (v21)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v22, v23, v24);
      sub_254EB4154(&dword_254EAE000, v25, v26, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v27 = sub_254EB67C8();
    v28(v27);
    sub_254F22D24();
    v29 = sub_254EB7D94();
    sub_254EB4A08(v29, v30);
    v31 = sub_254EB6B58();
    v32(v31);
    v33 = v14[5];
LABEL_9:

    goto LABEL_13;
  }

  sub_254F22A74();
  sub_254F22D0C();
  if (sub_254EB3F58())
  {
    sub_254F22CF4();
    sub_254F284C0();
    v34 = sub_254F291D0();
    v35 = sub_254F29700();
    sub_254EB493C(v35);
    sub_254F22BA4();
    if (v36)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v37, v38, v39);
      sub_254EB4154(&dword_254EAE000, v40, v41, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v42 = sub_254EB67C8();
    v43(v42);
    sub_254F22CDC();
    v44 = sub_254EB7D94();
    sub_254EB4AB0(v44, v45);
    v46 = sub_254EB6B58();
    v47(v46);
    v33 = v14[6];
    goto LABEL_9;
  }

  sub_254F22CAC();
  sub_254F284C0();
  v48 = v18;
  v49 = sub_254F291D0();
  sub_254F29700();
  sub_254F228C4();
  sub_254F228AC();
  sub_254F22B8C();
  if (v50)
  {
    sub_254EB82F8();
    sub_254EB4B94();
    sub_254EB5790();
    sub_254EB81FC();
    *v15 = 136315394;
    sub_254EB2EF4();
    v54 = sub_254F22968(v51, v52, v53);
    sub_254EB5244(v54);
    v55 = _swift_stdlib_bridgeErrorToNSError();
    sub_254EBEDC0(v55);
    sub_254EB6994(&dword_254EAE000, v56, v57, "error in %s: %@");
    sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
    sub_254EB5C24();
    sub_254EB6E24();
    sub_254EB69B4();
  }

  v58 = sub_254EB3E1C();
  v59(v58);
  swift_willThrow();
LABEL_13:
  sub_254EBBB38();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1CA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = v14[33];
  v14[5] = v17;
  sub_254F2294C();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB7EC4())
  {
    sub_254F22D3C();
    sub_254F284C0();
    v18 = sub_254F291D0();
    v19 = sub_254F29700();
    sub_254EB493C(v19);
    sub_254F22BBC();
    if (v20)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v21, v22, v23);
      sub_254EB4154(&dword_254EAE000, v24, v25, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v26 = sub_254EB67C8();
    v27(v26);
    sub_254F22D24();
    v28 = sub_254EB7D94();
    sub_254EB4A08(v28, v29);
    v30 = sub_254EB6B58();
    v31(v30);
    v32 = v14[5];
LABEL_9:

    goto LABEL_13;
  }

  sub_254F22A74();
  sub_254F22D0C();
  if (sub_254EB3F58())
  {
    sub_254F22CF4();
    sub_254F284C0();
    v33 = sub_254F291D0();
    v34 = sub_254F29700();
    sub_254EB493C(v34);
    sub_254F22BA4();
    if (v35)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v36, v37, v38);
      sub_254EB4154(&dword_254EAE000, v39, v40, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v41 = sub_254EB67C8();
    v42(v41);
    sub_254F22CDC();
    v43 = sub_254EB7D94();
    sub_254EB4AB0(v43, v44);
    v45 = sub_254EB6B58();
    v46(v45);
    v32 = v14[6];
    goto LABEL_9;
  }

  sub_254F22CAC();
  sub_254F284C0();
  v47 = v17;
  v48 = sub_254F291D0();
  sub_254F29700();
  sub_254F228C4();
  sub_254F228AC();
  sub_254F22B8C();
  if (v49)
  {
    sub_254EB82F8();
    sub_254EB4B94();
    sub_254EB5790();
    sub_254EB81FC();
    *v15 = 136315394;
    sub_254EB2EF4();
    v53 = sub_254F22968(v50, v51, v52);
    sub_254EB5244(v53);
    v54 = _swift_stdlib_bridgeErrorToNSError();
    sub_254EBEDC0(v54);
    sub_254EB6994(&dword_254EAE000, v55, v56, "error in %s: %@");
    sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
    sub_254EB5C24();
    sub_254EB6E24();
    sub_254EB69B4();
  }

  v57 = sub_254EB3E1C();
  v58(v57);
  swift_willThrow();
LABEL_13:
  sub_254EBBB38();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1CE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_254F29990();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_254F291E0();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v12 = sub_254F29980();
  v5[19] = v12;
  v13 = *(v12 - 8);
  v5[20] = v13;
  v14 = *(v13 + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F1CFBC, 0, 0);
}

uint64_t sub_254F1CFBC()
{
  sub_254EB8164();
  v61 = v0;
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(*(v0 + 56) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_decoder);
  sub_254EC8BC0(&qword_27F75F0D8, &unk_254F2BD48);
  sub_254F2238C();
  sub_254EB5A28();
  if (v4)
  {
    v6 = v4;
    v7 = *(v0 + 168);
    v8 = *(v0 + 152);
    *(v0 + 24) = v6;
    v9 = v6;
    sub_254EC8BC0(&qword_27F75F090, "P<");
    if (sub_254EB5B58())
    {
      sub_254F22CC4();
      sub_254F284C0();
      v10 = sub_254F291D0();
      v11 = sub_254F29700();
      sub_254EB493C(v11);
      sub_254F22B68();
      if (v12)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254F22BC8();
        *v1 = 136315138;
        sub_254EC390C();
        *(v1 + 4) = sub_254F22934(v13, v14, v60);
        sub_254EB4154(&dword_254EAE000, v15, v16, "could not decode [ContextType] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v17 = sub_254EB67C8();
      v18(v17);
      sub_254F22C94();
      v19 = sub_254EB7D94();
      sub_254EB4A08(v19, v20);
      v21 = sub_254EB6B58();
      v22(v21);
      v23 = *(v0 + 24);
    }

    else
    {
      v28 = *(v0 + 104);
      v29 = *(v0 + 88);

      sub_254F229D8();
      if (!sub_254EB5B58())
      {
        sub_254F22C64();
        sub_254F284C0();
        v43 = v6;
        v44 = sub_254F291D0();
        sub_254F29700();
        sub_254F228C4();
        sub_254F228AC();
        sub_254F22B44();
        if (v45)
        {
          sub_254EB82F8();
          sub_254EB4B94();
          v60[0] = sub_254EB5790();
          *v1 = 136315394;
          sub_254EC390C();
          v48 = sub_254F22934(v46, v47, v60);
          sub_254EB5244(v48);
          v49 = _swift_stdlib_bridgeErrorToNSError();
          sub_254EBEDC0(v49);
          sub_254EB6994(&dword_254EAE000, v50, v51, "error in %s: %@");
          sub_254EB2B68(v2, &qword_27F75ED70, &qword_254F2AF58);
          sub_254EB5C24();
          sub_254EB6E24();
          sub_254EB69B4();
        }

        v52 = sub_254EB3E1C();
        v53(v52);
        swift_willThrow();
LABEL_16:
        sub_254F2285C();

        sub_254EB3E2C();
        sub_254EC4398();

        __asm { BRAA            X1, X16 }
      }

      sub_254F229C0();
      sub_254F284C0();
      v30 = sub_254F291D0();
      v31 = sub_254F29700();
      sub_254EB493C(v31);
      sub_254F22B50();
      if (v32)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254F22BC8();
        *v1 = 136315138;
        sub_254EC390C();
        *(v1 + 4) = sub_254F22934(v33, v34, v60);
        sub_254EB4154(&dword_254EAE000, v35, v36, "could not encode [RetrievedContext] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v37 = sub_254EB67C8();
      v38(v37);
      sub_254F22C7C();
      v39 = sub_254EB7D94();
      sub_254EB4AB0(v39, v40);
      v41 = sub_254EB6B58();
      v42(v41);
      v23 = *(v0 + 32);
    }

    goto LABEL_16;
  }

  v24 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 16);
  if (v24)
  {
    v25 = v24;
    sub_254F29670();
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  *(v0 + 184) = v27;
  v56 = swift_task_alloc();
  *(v0 + 192) = v56;
  *v56 = v0;
  v56[1] = sub_254F1D3B4;
  v57 = *(v0 + 56);
  sub_254EC4398();

  return sub_254F1A4C8();
}

uint64_t sub_254F1D3B4()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  sub_254EB63D8();
  *v6 = v5;
  v8 = *(v7 + 192);
  v9 = *v1;
  sub_254EB2CE0();
  *v10 = v9;
  v5[25] = v3;
  v5[26] = v0;

  if (v0)
  {
    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = v5[10] == 0;
    v15 = swift_task_alloc();
    v5[27] = v15;
    *v15 = v9;
    v15[1] = sub_254F1D530;
    v17 = v5[22];
    v16 = v5[23];

    return sub_254EE3358();
  }
}

uint64_t sub_254F1D530()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v6 = *(v5 + 216);
  *v4 = *v1;
  v3[28] = v7;
  v3[29] = v0;

  if (!v0)
  {
    v8 = v3[25];
    v9 = v3[22];
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_254F1D644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = v14[28];
  v18 = v14[7];
  sub_254F22B80();
  *(v15 + 40) = v19;
  v20 = *(v15 + 232);
  sub_254EC8BC0(&qword_27F75F6B0, &qword_254F2CDC0);
  sub_254F2209C();
  sub_254F2287C();
  v22 = sub_254F27760();
  v23 = v14[28];
  if (!v20)
  {
    v42 = v21;
    v43 = v14[21];
    v45 = v14[17];
    v44 = v14[18];
    v46 = v14[16];
    v47 = v14[13];
    v48 = v14[6];

    *v48 = v22;
    v48[1] = v42;

    sub_254EB5B78();
    goto LABEL_16;
  }

  v24 = v14[21];
  v25 = v14[19];
  v14[3] = v20;
  v26 = v20;
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254F22998())
  {
    sub_254F22CC4();
    sub_254F284C0();
    v27 = sub_254F291D0();
    v28 = sub_254F29700();
    sub_254EB493C(v28);
    sub_254F22B68();
    if (v29)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v24 = 136315138;
      sub_254EB2EF4();
      *(v24 + 4) = sub_254F22934(v30, v31, v32);
      sub_254EB4154(&dword_254EAE000, v33, v34, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v35 = sub_254EB67C8();
    v36(v35);
    sub_254F22C94();
    v37 = sub_254EB7D94();
    sub_254EB4A08(v37, v38);
    v39 = sub_254EB6B58();
    v40(v39);
    v41 = v14[3];
  }

  else
  {
    sub_254F22A90();
    sub_254F229D8();
    if (!sub_254EBBB58())
    {
      sub_254F22C64();
      sub_254F284C0();
      v63 = v20;
      v64 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      sub_254F228AC();
      sub_254F22B44();
      if (v65)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v24 = 136315394;
        sub_254EB2EF4();
        v69 = sub_254F22934(v66, v67, v68);
        sub_254EB5244(v69);
        v70 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v70);
        sub_254EB6994(&dword_254EAE000, v71, v72, "error in %s: %@");
        sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v73 = sub_254EB3E1C();
      v74(v73);
      swift_willThrow();
      goto LABEL_15;
    }

    sub_254F229C0();
    sub_254F284C0();
    v49 = sub_254F291D0();
    v50 = sub_254F29700();
    sub_254EB493C(v50);
    sub_254F22B50();
    if (v51)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v24 = 136315138;
      sub_254EB2EF4();
      *(v24 + 4) = sub_254F22934(v52, v53, v54);
      sub_254EB4154(&dword_254EAE000, v55, v56, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v57 = sub_254EB67C8();
    v58(v57);
    sub_254F22C7C();
    v59 = sub_254EB7D94();
    sub_254EB4AB0(v59, v60);
    v61 = sub_254EB6B58();
    v62(v61);
    v41 = v14[4];
  }

LABEL_15:
  sub_254F2285C();

  sub_254EB3E2C();
LABEL_16:
  sub_254EB3B50();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1D9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = v14[22];

  v18 = v14[26];
  v14[3] = v18;
  sub_254F2294C();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB7EC4())
  {
    sub_254F22CC4();
    sub_254F284C0();
    v19 = sub_254F291D0();
    v20 = sub_254F29700();
    sub_254EB493C(v20);
    sub_254F22B68();
    if (v21)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22934(v22, v23, v24);
      sub_254EB4154(&dword_254EAE000, v25, v26, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v27 = sub_254EB67C8();
    v28(v27);
    sub_254F22C94();
    v29 = sub_254EB7D94();
    sub_254EB4A08(v29, v30);
    v31 = sub_254EB6B58();
    v32(v31);
    v33 = v14[3];
LABEL_9:

    goto LABEL_13;
  }

  sub_254F22A90();
  sub_254F229D8();
  if (sub_254EB3F58())
  {
    sub_254F229C0();
    sub_254F284C0();
    v34 = sub_254F291D0();
    v35 = sub_254F29700();
    sub_254EB493C(v35);
    sub_254F22B50();
    if (v36)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22934(v37, v38, v39);
      sub_254EB4154(&dword_254EAE000, v40, v41, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v42 = sub_254EB67C8();
    v43(v42);
    sub_254F22C7C();
    v44 = sub_254EB7D94();
    sub_254EB4AB0(v44, v45);
    v46 = sub_254EB6B58();
    v47(v46);
    v33 = v14[4];
    goto LABEL_9;
  }

  sub_254F22C64();
  sub_254F284C0();
  v48 = v18;
  v49 = sub_254F291D0();
  sub_254F29700();
  sub_254F228C4();
  sub_254F228AC();
  sub_254F22B44();
  if (v50)
  {
    sub_254EB82F8();
    sub_254EB4B94();
    sub_254EB5790();
    sub_254EB81FC();
    *v15 = 136315394;
    sub_254EB2EF4();
    v54 = sub_254F22934(v51, v52, v53);
    sub_254EB5244(v54);
    v55 = _swift_stdlib_bridgeErrorToNSError();
    sub_254EBEDC0(v55);
    sub_254EB6994(&dword_254EAE000, v56, v57, "error in %s: %@");
    sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
    sub_254EB5C24();
    sub_254EB6E24();
    sub_254EB69B4();
  }

  v58 = sub_254EB3E1C();
  v59(v58);
  swift_willThrow();
LABEL_13:
  sub_254F2285C();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1DCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = v14[25];
  v18 = v14[22];

  v19 = v14[29];
  v14[3] = v19;
  sub_254F2294C();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB7EC4())
  {
    sub_254F22CC4();
    sub_254F284C0();
    v20 = sub_254F291D0();
    v21 = sub_254F29700();
    sub_254EB493C(v21);
    sub_254F22B68();
    if (v22)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22934(v23, v24, v25);
      sub_254EB4154(&dword_254EAE000, v26, v27, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v28 = sub_254EB67C8();
    v29(v28);
    sub_254F22C94();
    v30 = sub_254EB7D94();
    sub_254EB4A08(v30, v31);
    v32 = sub_254EB6B58();
    v33(v32);
    v34 = v14[3];
LABEL_9:

    goto LABEL_13;
  }

  sub_254F22A90();
  sub_254F229D8();
  if (sub_254EB3F58())
  {
    sub_254F229C0();
    sub_254F284C0();
    v35 = sub_254F291D0();
    v36 = sub_254F29700();
    sub_254EB493C(v36);
    sub_254F22B50();
    if (v37)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22934(v38, v39, v40);
      sub_254EB4154(&dword_254EAE000, v41, v42, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v43 = sub_254EB67C8();
    v44(v43);
    sub_254F22C7C();
    v45 = sub_254EB7D94();
    sub_254EB4AB0(v45, v46);
    v47 = sub_254EB6B58();
    v48(v47);
    v34 = v14[4];
    goto LABEL_9;
  }

  sub_254F22C64();
  sub_254F284C0();
  v49 = v19;
  v50 = sub_254F291D0();
  sub_254F29700();
  sub_254F228C4();
  sub_254F228AC();
  sub_254F22B44();
  if (v51)
  {
    sub_254EB82F8();
    sub_254EB4B94();
    sub_254EB5790();
    sub_254EB81FC();
    *v15 = 136315394;
    sub_254EB2EF4();
    v55 = sub_254F22934(v52, v53, v54);
    sub_254EB5244(v55);
    v56 = _swift_stdlib_bridgeErrorToNSError();
    sub_254EBEDC0(v56);
    sub_254EB6994(&dword_254EAE000, v57, v58, "error in %s: %@");
    sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
    sub_254EB5C24();
    sub_254EB6E24();
    sub_254EB69B4();
  }

  v59 = sub_254EB3E1C();
  v60(v59);
  swift_willThrow();
LABEL_13:
  sub_254F2285C();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
}

void sub_254F1E0CC()
{
  sub_254EC1A1C();
  v23[1] = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v12);
  v14 = *(v13 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v15);
  v17 = v23 - v16;
  v18 = sub_254F29600();
  sub_254EB2F04(v17, 1, 1, v18);
  sub_254F22888();
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = v3;
  v20 = swift_allocObject();
  v20[2] = v0;
  v20[3] = v11;
  v20[4] = v9;
  v20[5] = v7;

  v21 = v0;
  sub_254F22334(v11, v9);
  v22 = v7;
  sub_254F29610();

  sub_254EB2B68(v17, &qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB4078();
}

uint64_t sub_254F1E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_254F29990();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = sub_254F291E0();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v12 = sub_254F29980();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v15 = sub_254F284A0();
  v5[21] = v15;
  v16 = *(v15 - 8);
  v5[22] = v16;
  v17 = *(v16 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F1E410, 0, 0);
}

uint64_t sub_254F1E410()
{
  sub_254EB8164();
  v55 = v0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(*(v0 + 48) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_decoder);
  sub_254EC8BC0(&qword_27F75F0D8, &unk_254F2BD48);
  sub_254F2238C();
  sub_254EB5A28();
  if (v4)
  {
    sub_254F22BD4();
    sub_254EC8BC0(&qword_27F75F090, "P<");
    if (sub_254EB5B58())
    {
      sub_254F229C0();
      sub_254F284C0();
      v6 = sub_254F291D0();
      v7 = sub_254F29700();
      sub_254EB493C(v7);
      sub_254F22B5C();
      if (v8)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254F22BC8();
        *v1 = 136315138;
        sub_254EC390C();
        *(v1 + 4) = sub_254F228DC(v9, v10, v54);
        sub_254EB4154(&dword_254EAE000, v11, v12, "could not decode [ContextType] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v13 = sub_254EB67C8();
      v14(v13);
      sub_254F22C4C();
      v15 = sub_254EB7D94();
      sub_254EB4A08(v15, v16);
      v17 = sub_254EB6B58();
      v18(v17);
      v19 = *(v0 + 24);
    }

    else
    {
      sub_254F22B0C();

      sub_254F229D8();
      if (!sub_254EB5B58())
      {
        sub_254F22C34();
        sub_254F284C0();
        v37 = v4;
        v38 = sub_254F291D0();
        sub_254F29700();
        sub_254F228C4();
        sub_254F228AC();
        sub_254F22AF4();
        if (v39)
        {
          sub_254EB82F8();
          sub_254EB4B94();
          v54[0] = sub_254EB5790();
          *v1 = 136315394;
          sub_254EC390C();
          v42 = sub_254F228DC(v40, v41, v54);
          sub_254EB5244(v42);
          v43 = _swift_stdlib_bridgeErrorToNSError();
          sub_254EBEDC0(v43);
          sub_254EB6994(&dword_254EAE000, v44, v45, "error in %s: %@");
          sub_254EB2B68(v2, &qword_27F75ED70, &qword_254F2AF58);
          sub_254EB5C24();
          sub_254EB6E24();
          sub_254EB69B4();
        }

        v46 = sub_254EB3E1C();
        v47(v46);
        swift_willThrow();
LABEL_16:
        sub_254EB8090();

        sub_254EB3E2C();
        sub_254EC4398();

        __asm { BRAA            X1, X16 }
      }

      sub_254EBB8A8();
      sub_254F284C0();
      v24 = sub_254F291D0();
      v25 = sub_254F29700();
      sub_254EB493C(v25);
      sub_254F22B00();
      if (v26)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254F22BC8();
        *v1 = 136315138;
        sub_254EC390C();
        *(v1 + 4) = sub_254F228DC(v27, v28, v54);
        sub_254EB4154(&dword_254EAE000, v29, v30, "could not encode [RetrievedContext] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v31 = sub_254EB67C8();
      v32(v31);
      sub_254F22980();
      v33 = sub_254EB7D94();
      sub_254EB4AB0(v33, v34);
      v35 = sub_254EB6B58();
      v36(v35);
      v19 = *(v0 + 32);
    }

    goto LABEL_16;
  }

  v20 = *(v0 + 72);
  *(v0 + 192) = *(v0 + 16);
  if (v20)
  {
    v21 = v20;
    sub_254F29670();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  *(v0 + 200) = v23;
  v50 = swift_task_alloc();
  *(v0 + 208) = v50;
  *v50 = v0;
  v50[1] = sub_254F1E7FC;
  v51 = *(v0 + 48);
  sub_254EC4398();

  return sub_254F1A4C8();
}

uint64_t sub_254F1E7FC()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  sub_254EB63D8();
  *v6 = v5;
  v8 = *(v7 + 208);
  v9 = *v1;
  sub_254EB2CE0();
  *v10 = v9;
  v5[27] = v3;
  v5[28] = v0;

  if (v0)
  {
    v11 = v5[24];

    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v15 = v5[9] == 0;
    v16 = swift_task_alloc();
    v5[29] = v16;
    *v16 = v9;
    v16[1] = sub_254F1E980;
    v17 = v5[24];
    v18 = v5[25];
    v19 = v5[23];

    return sub_254EE45D0();
  }
}

uint64_t sub_254F1E980()
{
  sub_254EB3A3C();
  sub_254F22B38();
  sub_254EB63D8();
  *v4 = v3;
  v5 = *(v0 + 232);
  *v4 = *v2;
  *(v3 + 240) = v1;

  sub_254F22B2C();
  v7 = *(v6 + 216);
  v8 = *(v0 + 192);
  if (v1)
  {
  }

  else
  {
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_254F1EACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v16 = *(v14 + 240);
  v17 = *(v14 + 184);
  v18 = *(v14 + 168);
  v19 = *(*(v14 + 48) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_encoder);
  sub_254F22444(&qword_281427510, 255, MEMORY[0x277D1F150]);
  sub_254F2287C();
  v20 = sub_254F27760();
  v22 = v21;
  v23 = *(v14 + 176);
  v24 = *(v14 + 184);
  v25 = *(v14 + 168);
  if (!v16)
  {
    v41 = v20;
    v42 = *(v14 + 160);
    v44 = *(v14 + 128);
    v43 = *(v14 + 136);
    v45 = *(v14 + 120);
    v46 = *(v14 + 96);
    v47 = *(v14 + 40);
    (*(v23 + 8))(*(v14 + 184), v25);
    *v47 = v41;
    v47[1] = v22;

    sub_254EB5B78();
    goto LABEL_16;
  }

  (*(v23 + 8))(*(v14 + 184), v25);
  sub_254F22BD4();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB5B58())
  {
    sub_254F229C0();
    sub_254F284C0();
    v26 = sub_254F291D0();
    v27 = sub_254F29700();
    sub_254EB493C(v27);
    sub_254F22B5C();
    if (v28)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v22 = 136315138;
      sub_254EB2EF4();
      *(v22 + 4) = sub_254F228DC(v29, v30, v31);
      sub_254EB4154(&dword_254EAE000, v32, v33, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v34 = sub_254EB67C8();
    v35(v34);
    sub_254F22C4C();
    v36 = sub_254EB7D94();
    sub_254EB4A08(v36, v37);
    v38 = sub_254EB6B58();
    v39(v38);
    v40 = *(v14 + 24);
  }

  else
  {
    sub_254F22B0C();

    sub_254F229D8();
    if (!sub_254EB5B58())
    {
      sub_254F22C34();
      sub_254F284C0();
      v62 = v16;
      v63 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      sub_254F228AC();
      sub_254F22AF4();
      if (v64)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v22 = 136315394;
        sub_254EB2EF4();
        v68 = sub_254F228DC(v65, v66, v67);
        sub_254EB5244(v68);
        v69 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v69);
        sub_254EB6994(&dword_254EAE000, v70, v71, "error in %s: %@");
        sub_254EB2B68(v15, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v72 = sub_254EB3E1C();
      v73(v72);
      swift_willThrow();
      goto LABEL_15;
    }

    sub_254EBB8A8();
    sub_254F284C0();
    v48 = sub_254F291D0();
    v49 = sub_254F29700();
    sub_254EB493C(v49);
    sub_254F22B00();
    if (v50)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v22 = 136315138;
      sub_254EB2EF4();
      *(v22 + 4) = sub_254F228DC(v51, v52, v53);
      sub_254EB4154(&dword_254EAE000, v54, v55, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v56 = sub_254EB67C8();
    v57(v56);
    sub_254F22980();
    v58 = sub_254EB7D94();
    sub_254EB4AB0(v58, v59);
    v60 = sub_254EB6B58();
    v61(v60);
    v40 = *(v14 + 32);
  }

LABEL_15:
  sub_254EB8090();

  sub_254EB3E2C();
LABEL_16:
  sub_254EB3B50();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1EEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 224);
  sub_254F22AD0();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB7EC4())
  {
    sub_254F229C0();
    sub_254F284C0();
    v18 = sub_254F291D0();
    v19 = sub_254F29700();
    sub_254EB493C(v19);
    sub_254F22B5C();
    if (v20)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F228DC(v21, v22, v23);
      sub_254EB4154(&dword_254EAE000, v24, v25, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v26 = sub_254EB67C8();
    v27(v26);
    sub_254F22C4C();
    v28 = sub_254EB7D94();
    sub_254EB4A08(v28, v29);
    v30 = sub_254EB6B58();
    v31(v30);
    v32 = *(v14 + 24);
LABEL_9:

    goto LABEL_13;
  }

  v33 = *(v14 + 96);
  v34 = *(v14 + 80);

  sub_254F229D8();
  if (sub_254EB3F58())
  {
    sub_254EBB8A8();
    sub_254F284C0();
    v35 = sub_254F291D0();
    v36 = sub_254F29700();
    sub_254EB493C(v36);
    sub_254F22B00();
    if (v37)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v34 = 136315138;
      sub_254EB2EF4();
      *(v34 + 4) = sub_254F228DC(v38, v39, v40);
      sub_254EB4154(&dword_254EAE000, v41, v42, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v43 = sub_254EB67C8();
    v44(v43);
    sub_254F22980();
    v45 = sub_254EB7D94();
    sub_254EB4AB0(v45, v46);
    v47 = sub_254EB6B58();
    v48(v47);
    v32 = *(v14 + 32);
    goto LABEL_9;
  }

  sub_254F22C34();
  sub_254F284C0();
  v49 = v17;
  v50 = sub_254F291D0();
  sub_254F29700();
  sub_254F228C4();
  sub_254F228AC();
  sub_254F22AF4();
  if (v51)
  {
    sub_254EB82F8();
    sub_254EB4B94();
    sub_254EB5790();
    sub_254EB81FC();
    *v34 = 136315394;
    sub_254EB2EF4();
    v55 = sub_254F228DC(v52, v53, v54);
    sub_254EB5244(v55);
    v56 = _swift_stdlib_bridgeErrorToNSError();
    sub_254EBEDC0(v56);
    sub_254EB6994(&dword_254EAE000, v57, v58, "error in %s: %@");
    sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
    sub_254EB5C24();
    sub_254EB6E24();
    sub_254EB69B4();
  }

  v59 = sub_254EB3E1C();
  v60(v59);
  swift_willThrow();
LABEL_13:
  sub_254EB8090();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1F190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 240);
  sub_254F22AD0();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB7EC4())
  {
    sub_254F229C0();
    sub_254F284C0();
    v18 = sub_254F291D0();
    v19 = sub_254F29700();
    sub_254EB493C(v19);
    sub_254F22B5C();
    if (v20)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F228DC(v21, v22, v23);
      sub_254EB4154(&dword_254EAE000, v24, v25, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v26 = sub_254EB67C8();
    v27(v26);
    sub_254F22C4C();
    v28 = sub_254EB7D94();
    sub_254EB4A08(v28, v29);
    v30 = sub_254EB6B58();
    v31(v30);
    v32 = *(v14 + 24);
LABEL_9:

    goto LABEL_13;
  }

  v33 = *(v14 + 96);
  v34 = *(v14 + 80);

  sub_254F229D8();
  if (sub_254EB3F58())
  {
    sub_254EBB8A8();
    sub_254F284C0();
    v35 = sub_254F291D0();
    v36 = sub_254F29700();
    sub_254EB493C(v36);
    sub_254F22B00();
    if (v37)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v34 = 136315138;
      sub_254EB2EF4();
      *(v34 + 4) = sub_254F228DC(v38, v39, v40);
      sub_254EB4154(&dword_254EAE000, v41, v42, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v43 = sub_254EB67C8();
    v44(v43);
    sub_254F22980();
    v45 = sub_254EB7D94();
    sub_254EB4AB0(v45, v46);
    v47 = sub_254EB6B58();
    v48(v47);
    v32 = *(v14 + 32);
    goto LABEL_9;
  }

  sub_254F22C34();
  sub_254F284C0();
  v49 = v17;
  v50 = sub_254F291D0();
  sub_254F29700();
  sub_254F228C4();
  sub_254F228AC();
  sub_254F22AF4();
  if (v51)
  {
    sub_254EB82F8();
    sub_254EB4B94();
    sub_254EB5790();
    sub_254EB81FC();
    *v34 = 136315394;
    sub_254EB2EF4();
    v55 = sub_254F228DC(v52, v53, v54);
    sub_254EB5244(v55);
    v56 = _swift_stdlib_bridgeErrorToNSError();
    sub_254EBEDC0(v56);
    sub_254EB6994(&dword_254EAE000, v57, v58, "error in %s: %@");
    sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
    sub_254EB5C24();
    sub_254EB6E24();
    sub_254EB69B4();
  }

  v59 = sub_254EB3E1C();
  v60(v59);
  swift_willThrow();
LABEL_13:
  sub_254EB8090();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
}

void sub_254F1F59C()
{
  sub_254EC1A1C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v16);
  v18 = *(v17 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v19);
  sub_254EB5780();
  v20 = sub_254F29600();
  sub_254EC1FD0(v20);
  sub_254F22888();
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = v3;
  v22 = swift_allocObject();
  v22[2] = v9;
  v22[3] = v7;
  v22[4] = v0;
  v22[5] = v15;
  v22[6] = v13;
  v22[7] = v11;
  v23 = v7;
  v24 = v0;

  v25 = v9;
  sub_254F29610();

  sub_254EB2B68(v1, &qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB4078();
}

uint64_t sub_254F1F6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x2822009F8](sub_254F1F728, 0, 0);
}

uint64_t sub_254F1F728()
{
  sub_254EB3A3C();
  v1 = v0[4];
  v2 = 0;
  v3 = 0;
  if (v1)
  {
    v4 = v1;
    sub_254F29670();
    v3 = v5;
  }

  v0[10] = v3;
  v6 = v0[5];
  if (v6)
  {
    v7 = v6;
    sub_254F29670();
    v2 = v8;
  }

  v0[11] = v2;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_254F1F804;
  v10 = v0[6];

  return sub_254F1A4C8();
}

uint64_t sub_254F1F804()
{
  sub_254EC00E4();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  sub_254EB63D8();
  *v6 = v5;
  v8 = *(v7 + 96);
  v9 = *v1;
  sub_254EB2CE0();
  *v10 = v9;
  v5[13] = v3;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v13 = v5[4];
    v14 = v5[5] == 0;
    v15 = swift_task_alloc();
    v5[14] = v15;
    *v15 = v9;
    v15[1] = sub_254F1F99C;
    v16 = v5[10];
    v17 = v5[11];
    v18 = v5[8];
    v19 = v5[9];
    v20 = v5[7];

    return sub_254EE5804();
  }
}

uint64_t sub_254F1F99C()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v6 = *(v5 + 112);
  *v4 = *v1;
  v3[15] = v7;
  v3[16] = v0;

  if (!v0)
  {
    v8 = v3[13];
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_254F1FAA4()
{
  sub_254EC00E4();
  v1 = *(v0[6] + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_encoder);
  v0[2] = v0[15];
  v2 = v0[16];
  sub_254EC8BC0(&qword_27F75F6B0, &qword_254F2CDC0);
  sub_254F2209C();
  v4 = sub_254F27760();
  v5 = v0[15];
  if (v2)
  {

    v6 = v0[1];
  }

  else
  {
    v7 = v3;
    v8 = v0[3];

    *v8 = v4;
    v8[1] = v7;
    sub_254EB5B78();
  }

  return v6();
}

uint64_t sub_254F1FB80()
{
  sub_254EB3BD8();
  v1 = v0[13];

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

uint64_t sub_254F1FCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v7);
  v9 = *(v8 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v10);
  sub_254EB5780();
  v11 = sub_254F29600();
  sub_254EC1FD0(v11);
  sub_254F22888();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  sub_254F22B74();
  *(swift_allocObject() + 16) = v4;

  v13 = v4;
  sub_254F29610();

  v14 = sub_254EB82CC();
  return sub_254EB2B68(v14, v15, &qword_254F2B1A0);
}

uint64_t sub_254F1FE24(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_254F291E0();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = sub_254F29990();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[13] = v9;
  *v9 = v2;
  v9[1] = sub_254F1FF7C;

  return sub_254F1A4C8();
}

uint64_t sub_254F1FF7C()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  v5 = *(v4 + 104);
  *v3 = *v1;
  *(v2 + 112) = v6;
  *(v2 + 120) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254F2007C()
{
  sub_254EC8BC0(&qword_27F75F0D0, &qword_254F2BD40);
  sub_254EB5144();
  v1 = sub_254F28080();
  sub_254EB2CBC(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v0 + 128) = v7;
  *(v7 + 16) = xmmword_254F2CC70;
  v8 = v7 + v6;
  v9 = *(v3 + 104);
  (v9)(v8, *MEMORY[0x277D1EAB8], v1);
  (v9)(v8 + v5, *MEMORY[0x277D1EB38], v1);
  (v9)(v8 + 2 * v5, *MEMORY[0x277D1EB28], v1);
  v10 = *MEMORY[0x277D1EB48];
  v11 = sub_254F229F0(3 * v5);
  v9(v11);
  (v9)(v8 + 4 * v5, *MEMORY[0x277D1EB00], v1);
  v12 = *MEMORY[0x277D1EB18];
  v13 = sub_254F229F0(5 * v5);
  v9(v13);
  (v9)(v8 + 6 * v5, *MEMORY[0x277D1EA80], v1);
  v14 = *MEMORY[0x277D1EAA0];
  v15 = sub_254F229F0(7 * v5);
  v9(v15);
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *v16 = v0;
  sub_254F228F4(v16);

  return sub_254EE3358();
}

uint64_t sub_254F202B4()
{
  sub_254EB3A3C();
  sub_254F22B38();
  sub_254EB63D8();
  *v4 = v3;
  v5 = *(v0 + 136);
  v6 = *v2;
  sub_254EB5BF0();
  *v7 = v6;
  *(v9 + 144) = v8;
  *(v9 + 152) = v1;

  sub_254F22B2C();
  v11 = *(v10 + 128);
  v12 = *(v0 + 112);
  if (v1)
  {
    swift_setDeallocating();
    sub_254ECA57C();
  }

  else
  {

    swift_setDeallocating();
    sub_254ECA57C();
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_254F20410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v19 = *(v14 + 144);
  v20 = *(v14 + 40);
  sub_254F22B80();
  *(v15 + 24) = v21;
  v22 = *(v15 + 152);
  sub_254EC8BC0(&qword_27F75F6B0, &qword_254F2CDC0);
  sub_254F2209C();
  sub_254F2287C();
  v23 = sub_254F27760();
  v24 = *(v14 + 144);
  if (v22)
  {

    sub_254F22B0C();
    *(v14 + 16) = v22;
    v25 = v22;
    sub_254EC8BC0(&qword_27F75F090, "P<");
    if (sub_254EB3B2C())
    {
      sub_254F22A5C();
      sub_254F284C0();
      v26 = sub_254F291D0();
      v27 = sub_254F29700();
      sub_254EB493C(v27);
      sub_254F22928();
      if (v28)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254EB3F7C();
        *v16 = 136315138;
        sub_254EB2EF4();
        *(v16 + 4) = sub_254F22A44(v29, v30, v31);
        sub_254EB4154(&dword_254EAE000, v32, v33, "could not encode [RetrievedContext] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v34 = sub_254EB67C8();
      v35(v34);
      sub_254F22980();
      v36 = sub_254EB7D94();
      sub_254EB4AB0(v36, v37);
      v38 = sub_254EB6B58();
      v39(v38);
    }

    else
    {
      sub_254F22A2C();
      sub_254F284C0();
      v40 = v22;
      v41 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      sub_254F228AC();
      sub_254F2291C();
      if (v42)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v16 = 136315394;
        sub_254EB2EF4();
        v46 = sub_254F22A44(v43, v44, v45);
        sub_254EB5244(v46);
        v47 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v47);
        sub_254EB6994(&dword_254EAE000, v48, v49, "error in %s: %@");
        sub_254EB2B68(v18, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v50 = sub_254EB3E1C();
      v51(v50);
      swift_willThrow();
    }

    sub_254F22A14();

    sub_254EB3E2C();
  }

  else
  {
    sub_254F22BF4();
    *v17 = v23;
    v17[1] = v16;

    sub_254EB5B78();
  }

  sub_254EB3B50();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F206A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 120);
  sub_254EB8100();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB3B2C())
  {
    sub_254F22A5C();
    sub_254F284C0();
    v18 = sub_254F291D0();
    v19 = sub_254F29700();
    sub_254EB493C(v19);
    sub_254F22928();
    if (v20)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22A44(v21, v22, v23);
      sub_254EB4154(&dword_254EAE000, v24, v25, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v26 = sub_254EB67C8();
    v27(v26);
    sub_254F22980();
    v28 = sub_254EB7D94();
    sub_254EB4AB0(v28, v29);
    v30 = sub_254EB6B58();
    v31(v30);
  }

  else
  {
    sub_254F22A2C();
    sub_254F284C0();
    v32 = v17;
    v33 = sub_254F291D0();
    sub_254F29700();
    sub_254F228C4();
    sub_254F228AC();
    sub_254F2291C();
    if (v34)
    {
      sub_254EB82F8();
      sub_254EB4B94();
      sub_254EB5790();
      sub_254EB81FC();
      *v15 = 136315394;
      sub_254EB2EF4();
      v38 = sub_254F22A44(v35, v36, v37);
      sub_254EB5244(v38);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      sub_254EBEDC0(v39);
      sub_254EB6994(&dword_254EAE000, v40, v41, "error in %s: %@");
      sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
      sub_254EB5C24();
      sub_254EB6E24();
      sub_254EB69B4();
    }

    v42 = sub_254EB3E1C();
    v43(v42);
    swift_willThrow();
  }

  sub_254F22A14();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F208A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 152);
  sub_254EB8100();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB3B2C())
  {
    sub_254F22A5C();
    sub_254F284C0();
    v18 = sub_254F291D0();
    v19 = sub_254F29700();
    sub_254EB493C(v19);
    sub_254F22928();
    if (v20)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22A44(v21, v22, v23);
      sub_254EB4154(&dword_254EAE000, v24, v25, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v26 = sub_254EB67C8();
    v27(v26);
    sub_254F22980();
    v28 = sub_254EB7D94();
    sub_254EB4AB0(v28, v29);
    v30 = sub_254EB6B58();
    v31(v30);
  }

  else
  {
    sub_254F22A2C();
    sub_254F284C0();
    v32 = v17;
    v33 = sub_254F291D0();
    sub_254F29700();
    sub_254F228C4();
    sub_254F228AC();
    sub_254F2291C();
    if (v34)
    {
      sub_254EB82F8();
      sub_254EB4B94();
      sub_254EB5790();
      sub_254EB81FC();
      *v15 = 136315394;
      sub_254EB2EF4();
      v38 = sub_254F22A44(v35, v36, v37);
      sub_254EB5244(v38);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      sub_254EBEDC0(v39);
      sub_254EB6994(&dword_254EAE000, v40, v41, "error in %s: %@");
      sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
      sub_254EB5C24();
      sub_254EB6E24();
      sub_254EB69B4();
    }

    v42 = sub_254EB3E1C();
    v43(v42);
    swift_willThrow();
  }

  sub_254F22A14();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F20B4C(uint64_t a1, uint64_t a2)
{
  v5 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v5);
  v7 = *(v6 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v8);
  sub_254EB5780();
  v9 = sub_254F29600();
  sub_254EC1FD0(v9);
  sub_254F22888();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_254F22B74();
  *(swift_allocObject() + 16) = v2;

  v11 = v2;
  sub_254F29610();

  v12 = sub_254EB82CC();
  return sub_254EB2B68(v12, v13, &qword_254F2B1A0);
}

uint64_t sub_254F20C78(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_254F291E0();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = sub_254F29990();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[13] = v9;
  *v9 = v2;
  v9[1] = sub_254F20DD0;

  return sub_254F1A4C8();
}

uint64_t sub_254F20DD0()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  v5 = *(v4 + 104);
  *v3 = *v1;
  *(v2 + 112) = v6;
  *(v2 + 120) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254F20ED0()
{
  sub_254EC00E4();
  sub_254EC8BC0(&qword_27F75F0D0, &qword_254F2BD40);
  sub_254EB5144();
  v1 = sub_254F28080();
  sub_254EB2CBC(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v0 + 128) = v7;
  *(v7 + 16) = xmmword_254F2B730;
  v8 = v7 + v6;
  v9 = *(v3 + 104);
  (v9)(v8, *MEMORY[0x277D1EA50], v1);
  (v9)(v8 + v5, *MEMORY[0x277D1EAB8], v1);
  (v9)(v8 + 2 * v5, *MEMORY[0x277D1EA90], v1);
  v10 = *MEMORY[0x277D1EA98];
  v11 = sub_254F229F0(3 * v5);
  v9(v11);
  (v9)(v8 + 4 * v5, *MEMORY[0x277D1EAB0], v1);
  v12 = *MEMORY[0x277D1EA88];
  v13 = sub_254F229F0(5 * v5);
  v9(v13);
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  sub_254F228F4(v14);

  return sub_254EE3358();
}

uint64_t sub_254F210B8()
{
  sub_254EB3A3C();
  sub_254F22B38();
  sub_254EB63D8();
  *v4 = v3;
  v5 = *(v0 + 136);
  v6 = *v2;
  sub_254EB5BF0();
  *v7 = v6;
  *(v9 + 144) = v8;
  *(v9 + 152) = v1;

  sub_254F22B2C();
  v11 = *(v10 + 128);
  v12 = *(v0 + 112);
  if (v1)
  {
    swift_setDeallocating();
    sub_254ECA57C();
  }

  else
  {

    swift_setDeallocating();
    sub_254ECA57C();
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_254F21214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v19 = *(v14 + 144);
  v20 = *(v14 + 40);
  sub_254F22B80();
  *(v15 + 24) = v21;
  v22 = *(v15 + 152);
  sub_254EC8BC0(&qword_27F75F6B0, &qword_254F2CDC0);
  sub_254F2209C();
  sub_254F2287C();
  v23 = sub_254F27760();
  v24 = *(v14 + 144);
  if (v22)
  {

    sub_254F22B0C();
    *(v14 + 16) = v22;
    v25 = v22;
    sub_254EC8BC0(&qword_27F75F090, "P<");
    if (sub_254EB3B2C())
    {
      sub_254F22A5C();
      sub_254F284C0();
      v26 = sub_254F291D0();
      v27 = sub_254F29700();
      sub_254EB493C(v27);
      sub_254F22928();
      if (v28)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254EB3F7C();
        *v16 = 136315138;
        sub_254EB2EF4();
        *(v16 + 4) = sub_254F229FC(v29, v30, v31);
        sub_254EB4154(&dword_254EAE000, v32, v33, "could not encode [RetrievedContext] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v34 = sub_254EB67C8();
      v35(v34);
      sub_254F22980();
      v36 = sub_254EB7D94();
      sub_254EB4AB0(v36, v37);
      v38 = sub_254EB6B58();
      v39(v38);
    }

    else
    {
      sub_254F22A2C();
      sub_254F284C0();
      v40 = v22;
      v41 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      sub_254F228AC();
      sub_254F2291C();
      if (v42)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v16 = 136315394;
        sub_254EB2EF4();
        v46 = sub_254F229FC(v43, v44, v45);
        sub_254EB5244(v46);
        v47 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v47);
        sub_254EB6994(&dword_254EAE000, v48, v49, "error in %s: %@");
        sub_254EB2B68(v18, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v50 = sub_254EB3E1C();
      v51(v50);
      swift_willThrow();
    }

    sub_254F22A14();

    sub_254EB3E2C();
  }

  else
  {
    sub_254F22BF4();
    *v17 = v23;
    v17[1] = v16;

    sub_254EB5B78();
  }

  sub_254EB3B50();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F214A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 120);
  sub_254EB8100();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB3B2C())
  {
    sub_254F22A5C();
    sub_254F284C0();
    v18 = sub_254F291D0();
    v19 = sub_254F29700();
    sub_254EB493C(v19);
    sub_254F22928();
    if (v20)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F229FC(v21, v22, v23);
      sub_254EB4154(&dword_254EAE000, v24, v25, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v26 = sub_254EB67C8();
    v27(v26);
    sub_254F22980();
    v28 = sub_254EB7D94();
    sub_254EB4AB0(v28, v29);
    v30 = sub_254EB6B58();
    v31(v30);
  }

  else
  {
    sub_254F22A2C();
    sub_254F284C0();
    v32 = v17;
    v33 = sub_254F291D0();
    sub_254F29700();
    sub_254F228C4();
    sub_254F228AC();
    sub_254F2291C();
    if (v34)
    {
      sub_254EB82F8();
      sub_254EB4B94();
      sub_254EB5790();
      sub_254EB81FC();
      *v15 = 136315394;
      sub_254EB2EF4();
      v38 = sub_254F229FC(v35, v36, v37);
      sub_254EB5244(v38);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      sub_254EBEDC0(v39);
      sub_254EB6994(&dword_254EAE000, v40, v41, "error in %s: %@");
      sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
      sub_254EB5C24();
      sub_254EB6E24();
      sub_254EB69B4();
    }

    v42 = sub_254EB3E1C();
    v43(v42);
    swift_willThrow();
  }

  sub_254F22A14();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F216A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 152);
  sub_254EB8100();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB3B2C())
  {
    sub_254F22A5C();
    sub_254F284C0();
    v18 = sub_254F291D0();
    v19 = sub_254F29700();
    sub_254EB493C(v19);
    sub_254F22928();
    if (v20)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F229FC(v21, v22, v23);
      sub_254EB4154(&dword_254EAE000, v24, v25, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v26 = sub_254EB67C8();
    v27(v26);
    sub_254F22980();
    v28 = sub_254EB7D94();
    sub_254EB4AB0(v28, v29);
    v30 = sub_254EB6B58();
    v31(v30);
  }

  else
  {
    sub_254F22A2C();
    sub_254F284C0();
    v32 = v17;
    v33 = sub_254F291D0();
    sub_254F29700();
    sub_254F228C4();
    sub_254F228AC();
    sub_254F2291C();
    if (v34)
    {
      sub_254EB82F8();
      sub_254EB4B94();
      sub_254EB5790();
      sub_254EB81FC();
      *v15 = 136315394;
      sub_254EB2EF4();
      v38 = sub_254F229FC(v35, v36, v37);
      sub_254EB5244(v38);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      sub_254EBEDC0(v39);
      sub_254EB6994(&dword_254EAE000, v40, v41, "error in %s: %@");
      sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
      sub_254EB5C24();
      sub_254EB6E24();
      sub_254EB69B4();
    }

    v42 = sub_254EB3E1C();
    v43(v42);
    swift_willThrow();
  }

  sub_254F22A14();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F21938(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v4);
  v6 = *(v5 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v7);
  sub_254EB5780();
  v8 = sub_254F29600();
  sub_254EC1FD0(v8);
  sub_254F22888();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_254F29610();

  v10 = sub_254EB82CC();
  return sub_254EB2B68(v10, v11, &qword_254F2B1A0);
}

uint64_t sub_254F21A58()
{
  **(v0 + 16) = xmmword_254F2CC80;
  sub_254EB5B78();
  return v1();
}

uint64_t sub_254F21D14()
{
  swift_beginAccess();
  v0 = qword_281427CC8;
  v1 = qword_281427CC8;
  return v0;
}

void sub_254F21D60(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_281427CC8;
  qword_281427CC8 = a1;
}

uint64_t sub_254F21E50(uint64_t a1)
{
  swift_beginAccess();
  qword_281427CD0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_254F21F08()
{
  sub_254EC00E4();
  sub_254F22910();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_254EB3BE4(v4);
  *v5 = v6;
  v7 = sub_254EB413C(v5);

  return sub_254F1AF38(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_254F21FC0()
{
  sub_254EB3BD8();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_254EB3BE4(v2);
  *v3 = v4;
  v5 = sub_254F22B18(v3);

  return sub_254F20C78(v5, v6);
}

unint64_t sub_254F22048()
{
  result = qword_27F75F6A8;
  if (!qword_27F75F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F6A8);
  }

  return result;
}

unint64_t sub_254F2209C()
{
  result = qword_281426160;
  if (!qword_281426160)
  {
    sub_254EDEFE4(&qword_27F75F6B0, &qword_254F2CDC0);
    sub_254F22444(&qword_281427520, 255, MEMORY[0x277D1EE00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426160);
  }

  return result;
}

uint64_t sub_254F22154()
{
  sub_254EB3BD8();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_254EB3BE4(v2);
  *v3 = v4;
  v5 = sub_254F22B18(v3);

  return sub_254F1FE24(v5, v6);
}

uint64_t sub_254F221DC()
{
  sub_254F22910();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = sub_254EB3BE4(v5);
  *v6 = v7;
  v8 = sub_254EB413C(v6);

  return sub_254F1F6FC(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_254F22294()
{
  sub_254EC00E4();
  sub_254F22910();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_254EB3BE4(v3);
  *v4 = v5;
  v6 = sub_254EB413C(v4);

  return sub_254F1E21C(v6, v7, v8, v2, v1);
}

uint64_t sub_254F22334(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_254F2238C()
{
  result = qword_281426168;
  if (!qword_281426168)
  {
    sub_254EDEFE4(&qword_27F75F0D8, &unk_254F2BD48);
    sub_254F22444(&qword_281427528, 255, MEMORY[0x277D1EB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426168);
  }

  return result;
}

uint64_t sub_254F22444(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_254F2248C()
{
  sub_254EF278C(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254F224D4()
{
  sub_254EC00E4();
  sub_254F22910();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_254EB3BE4(v3);
  *v4 = v5;
  v6 = sub_254EB413C(v4);

  return sub_254F1CE24(v6, v7, v8, v2, v1);
}

uint64_t sub_254F22574()
{
  sub_254EB3A3C();
  sub_254F22910();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_254EB3BE4(v2);
  *v3 = v4;
  v5 = sub_254EB413C(v3);

  return sub_254F1B96C(v5, v6, v7, v1);
}

uint64_t sub_254F22608(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254F22334(a1, a2);
  }

  return a1;
}

uint64_t sub_254F22624(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_254F22650()
{
  sub_254EC00E4();
  sub_254F22910();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_254EB3BE4(v4);
  *v5 = v6;
  v7 = sub_254EB413C(v5);

  return sub_254F1B140(v7, v8, v9, v1, v2, v3);
}

_BYTE *storeEnumTagSinglePayload for ContextXPCServiceServer.ContextXPCServiceServerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254F227D8()
{
  result = qword_27F75F6B8;
  if (!qword_27F75F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F6B8);
  }

  return result;
}

uint64_t sub_254F2285C()
{
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
}

uint64_t sub_254F22894()
{

  return swift_slowAlloc();
}

BOOL sub_254F228AC()
{

  return os_log_type_enabled(v0, v1);
}

void sub_254F228C4()
{
}

uint64_t sub_254F228DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_254EC2D74(0xD00000000000003DLL, a2, a3);
}

uint64_t sub_254F228F4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 112);
  return v3;
}

void sub_254F2291C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
}

void sub_254F22928()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
}

uint64_t sub_254F22934(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_254EC2D74(0xD000000000000031, a2, a3);
}

id sub_254F2294C()
{
  v3 = *(v1 + 144);
  v4 = *(v1 + 128);

  return v0;
}

uint64_t sub_254F22968(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_254EC2D74(0xD000000000000026, a2, a3);
}

unint64_t sub_254F22980()
{
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  return sub_254F22048();
}

uint64_t sub_254F22998()
{

  return swift_dynamicCast();
}

void sub_254F229C0()
{
  v3 = *(v1 + 136);
}

id sub_254F229D8()
{
  *(v1 + 32) = v0;

  return v0;
}

uint64_t sub_254F229FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_254EC2D74(0xD000000000000024, a2, a3);
}

uint64_t sub_254F22A14()
{
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
}

void sub_254F22A2C()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
}

uint64_t sub_254F22A44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_254EC2D74(0xD000000000000022, a2, a3);
}

void sub_254F22A5C()
{
  v3 = *(v1 + 72);
}

void sub_254F22A74()
{
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[5];
}

void sub_254F22A90()
{
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[3];
}

uint64_t sub_254F22AAC@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_254ECD9D8(v2, &a2 - a1);
}

id sub_254F22AD0()
{
  v1[3] = v0;
  v3 = v1[20];
  v4 = v1[18];

  return v0;
}

void sub_254F22AF4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
}

void sub_254F22B00()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
}

void sub_254F22B44()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
}

void sub_254F22B50()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
}

void sub_254F22B5C()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
}

void sub_254F22B68()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
}

void sub_254F22B8C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
}

void sub_254F22BA4()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
}

void sub_254F22BBC()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
}

id sub_254F22BD4()
{
  v3 = v1[20];
  v4 = v1[18];
  v1[3] = v0;

  return v0;
}

uint64_t sub_254F22BF4()
{
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[4];
}

uint64_t sub_254F22C14()
{

  return swift_task_create();
}

void sub_254F22C34()
{
  v2 = *(v0 + 120);
  v3 = *(v0 + 32);
}

unint64_t sub_254F22C4C()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];

  return sub_254F22048();
}

void sub_254F22C64()
{
  v2 = *(v0 + 128);
  v3 = *(v0 + 32);
}

unint64_t sub_254F22C7C()
{
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  return sub_254F22048();
}

unint64_t sub_254F22C94()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  return sub_254F22048();
}

void sub_254F22CAC()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 48);
}

void sub_254F22CC4()
{
  v3 = *(v1 + 144);
}

unint64_t sub_254F22CDC()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  return sub_254F22048();
}

void sub_254F22CF4()
{
  v3 = *(v1 + 152);
}

id sub_254F22D0C()
{
  *(v1 + 48) = v0;

  return v0;
}

unint64_t sub_254F22D24()
{
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  return sub_254F22048();
}

void sub_254F22D3C()
{
  v3 = *(v1 + 160);
}

void static RequestID.generate(pid:clientApplicationIdentifier:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_2814261B0 != -1)
  {
    swift_once();
  }

  v8 = off_2814261B8;
  os_unfair_lock_lock(off_2814261B8 + 10);
  sub_254F22E08(&v8[4], a1, a2, a3, a4);

  os_unfair_lock_unlock(v8 + 10);
}

uint64_t sub_254F22E08@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(result + 20);
  v7 = v6 + 1;
  if (v6 == -1)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    *(result + 16) = a2;
    *(result + 20) = v7;
    v12 = *(result + 8);

    *v11 = a3;
    v11[1] = a4;
    *a5 = a2;
    *(a5 + 4) = v7;
    *(a5 + 8) = a3;
    *(a5 + 16) = a4;
  }

  return result;
}

uint64_t sub_254F22E94()
{
  sub_254EC8BC0(&qword_27F75F6C8, "d7");
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  off_2814261B8 = result;
  return result;
}

uint64_t static RequestID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 8) == *(a2 + 8) && v5 == v6;
    if (!v7 && (sub_254F29B10() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return 1;
}

uint64_t RequestID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_254F29BF0();
  sub_254F29BF0();
  if (!v4)
  {
    return sub_254F29BE0();
  }

  sub_254F29BE0();

  return sub_254F294C0();
}

uint64_t RequestID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_254F29BC0();
  sub_254F29BF0();
  sub_254F29BF0();
  sub_254F29BE0();
  if (v4)
  {
    sub_254F294C0();
  }

  return sub_254F29C00();
}

uint64_t sub_254F2306C()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_254F29BC0();
  RequestID.hash(into:)();
  return sub_254F29C00();
}

unint64_t sub_254F230C0()
{
  result = qword_27F75F6C0;
  if (!qword_27F75F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F6C0);
  }

  return result;
}

uint64_t sub_254F2311C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_254F23170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_254F231D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_254F23228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_254F232C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_254F27860();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_254F278F0();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id sub_254F233A0(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_encoder;
  v8 = sub_254F27780();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v2[v7] = sub_254F27770();
  v11 = OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_decoder;
  v12 = sub_254F27750();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v2[v11] = sub_254F27740();
  v15 = type metadata accessor for UserSessionManager();
  swift_allocObject();
  v29[3] = v15;
  v29[4] = &off_286726428;
  v29[0] = sub_254EC104C();
  type metadata accessor for UIContextRetriever();
  v16 = swift_allocObject();
  v17 = sub_254EC10A4(v29, v15);
  v18 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v16[5] = v15;
  v16[6] = &off_286726428;
  v16[2] = v22;
  sub_254EB2BBC(v29);
  *&v3[OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_retriever] = v16;
  v28.receiver = v3;
  v28.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v28, sel_init);

  v24 = sub_254F286A0();
  sub_254EB2D54(v24);
  (*(v25 + 8))(a1);
  return v23;
}

uint64_t sub_254F2358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_254F29990();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_254F291E0();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v11 = sub_254F29980();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F23720, 0, 0);
}

uint64_t sub_254F23720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 64);
  v18 = *(v14 + 72);
  v19 = *(*(v14 + 56) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_decoder);
  sub_254F28B50();
  sub_254EC3918();
  sub_254F27264(v20, 255, v21);
  sub_254EC1B24();
  if (v18)
  {
    v22 = v18;
    v23 = *(v14 + 160);
    v24 = *(v14 + 144);
    sub_254F273E8();
    sub_254EC8BC0(&qword_27F75F090, "P<");
    if (sub_254EB5B58())
    {
      v25 = *(v14 + 136);

      sub_254F284E0();
      v26 = sub_254F291D0();
      v27 = sub_254F29700();
      v28 = sub_254EB493C(v27);
      v29 = *(v14 + 136);
      v30 = *(v14 + 104);
      v31 = *(v14 + 112);
      if (v28)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254EB3F7C();
        *v15 = 136315138;
        sub_254EB2EF4();
        *(v15 + 4) = sub_254EB5A4C(v32, v33, v34);
        sub_254EB4154(&dword_254EAE000, v35, v36, "could not decode UIContextOptions in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v37 = sub_254EB67C8();
      v38(v37);
      v40 = *(v14 + 152);
      v39 = *(v14 + 160);
      v41 = *(v14 + 144);
      sub_254F26D04();
      v42 = sub_254EB7D94();
      sub_254EB4AB0(v42, v43);
      v44 = sub_254EB6B58();
      v45(v44);
      v46 = *(v14 + 24);
    }

    else
    {
      v52 = *(v14 + 96);
      v53 = *(v14 + 80);

      *(v14 + 32) = v22;
      v54 = v22;
      if (!sub_254EB5B58())
      {
        v75 = *(v14 + 120);

        sub_254F284E0();
        v76 = v22;
        v77 = sub_254F291D0();
        sub_254F29700();
        sub_254F228C4();
        v78 = sub_254F228AC();
        v80 = *(v14 + 112);
        v79 = *(v14 + 120);
        v81 = *(v14 + 104);
        if (v78)
        {
          sub_254EB82F8();
          sub_254EB4B94();
          sub_254EB5790();
          sub_254EB81FC();
          *v15 = 136315394;
          sub_254EB2EF4();
          v85 = sub_254EB5A4C(v82, v83, v84);
          sub_254EB5244(v85);
          v86 = _swift_stdlib_bridgeErrorToNSError();
          sub_254EBEDC0(v86);
          sub_254EB6994(&dword_254EAE000, v87, v88, "error in %s: %@");
          sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
          sub_254EB5C24();
          sub_254EB6E24();
          sub_254EB69B4();
        }

        v89 = sub_254EB3E1C();
        v90(v89);
        swift_willThrow();
        goto LABEL_17;
      }

      sub_254EBB8A8();
      sub_254F284E0();
      v55 = sub_254F291D0();
      v56 = sub_254F29700();
      v57 = sub_254EB493C(v56);
      v58 = *(v14 + 128);
      v59 = *(v14 + 104);
      v60 = *(v14 + 112);
      if (v57)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254EB3F7C();
        *v15 = 136315138;
        sub_254EB2EF4();
        *(v15 + 4) = sub_254EB5A4C(v61, v62, v63);
        sub_254EB4154(&dword_254EAE000, v64, v65, "could not encode [UIContextElements] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v66 = sub_254EB67C8();
      v67(v66);
      v69 = *(v14 + 88);
      v68 = *(v14 + 96);
      v70 = *(v14 + 80);
      sub_254F26D04();
      v71 = sub_254EB7D94();
      sub_254EB4AB0(v71, v72);
      v73 = sub_254EB6B58();
      v74(v73);
      v46 = *(v14 + 32);
    }

LABEL_17:
    sub_254EC1C54();

    sub_254EB3E2C();
    sub_254EB3B50();

    return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14);
  }

  v47 = *(v14 + 56);
  *(v14 + 168) = *(v14 + 16);
  v48 = *(v47 + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_retriever);
  v49 = swift_task_alloc();
  *(v14 + 176) = v49;
  *v49 = v14;
  v49[1] = sub_254F23B1C;
  sub_254EB3B50();

  return sub_254EF3730();
}

uint64_t sub_254F23B1C()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v1;
  *(v2 + 184) = v6;
  *(v2 + 192) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254F23C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v16 = *(*(v14 + 56) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_encoder);
  *(v14 + 40) = *(v14 + 184);
  v17 = *(v14 + 192);
  sub_254EC8BC0(&qword_27F75F718, &unk_254F2D160);
  sub_254F271AC();
  v19 = sub_254F27400();
  v20 = *(v14 + 184);
  v21 = *(v14 + 168);
  if (!v17)
  {
    v46 = v18;
    v47 = *(v14 + 160);
    v49 = *(v14 + 128);
    v48 = *(v14 + 136);
    v50 = *(v14 + 120);
    v51 = *(v14 + 96);
    v52 = *(v14 + 48);

    *v52 = v19;
    v52[1] = v46;

    sub_254EB4924();
    goto LABEL_16;
  }

  v22 = *(v14 + 160);
  v23 = *(v14 + 144);
  sub_254F273E8();
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (swift_dynamicCast())
  {
    v24 = *(v14 + 136);

    sub_254F284E0();
    v25 = sub_254F291D0();
    v26 = sub_254F29700();
    v27 = sub_254EB493C(v26);
    v28 = *(v14 + 136);
    v29 = *(v14 + 104);
    v30 = *(v14 + 112);
    if (v27)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v22 = 136315138;
      sub_254EB2EF4();
      *(v22 + 4) = sub_254EB5A4C(v31, v32, v33);
      sub_254EB4154(&dword_254EAE000, v34, v35, "could not decode UIContextOptions in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v36 = sub_254EB67C8();
    v37(v36);
    v39 = *(v14 + 152);
    v38 = *(v14 + 160);
    v40 = *(v14 + 144);
    sub_254F26D04();
    v41 = sub_254EB7D94();
    sub_254EB4AB0(v41, v42);
    v43 = sub_254EB6B58();
    v44(v43);
    v45 = *(v14 + 24);
  }

  else
  {
    v53 = *(v14 + 96);
    v54 = *(v14 + 80);

    *(v14 + 32) = v17;
    v55 = v17;
    if (!sub_254EBBB58())
    {
      v76 = *(v14 + 120);

      sub_254F284E0();
      v77 = v17;
      v78 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      v79 = sub_254F228AC();
      v81 = *(v14 + 112);
      v80 = *(v14 + 120);
      v82 = *(v14 + 104);
      if (v79)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v54 = 136315394;
        sub_254EB2EF4();
        v86 = sub_254EB5A4C(v83, v84, v85);
        sub_254EB5244(v86);
        v87 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v87);
        sub_254EB6994(&dword_254EAE000, v88, v89, "error in %s: %@");
        sub_254EB2B68(v15, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v90 = sub_254EB3E1C();
      v91(v90);
      swift_willThrow();
      goto LABEL_15;
    }

    sub_254EBB8A8();
    sub_254F284E0();
    v56 = sub_254F291D0();
    v57 = sub_254F29700();
    v58 = sub_254EB493C(v57);
    v59 = *(v14 + 128);
    v60 = *(v14 + 104);
    v61 = *(v14 + 112);
    if (v58)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v54 = 136315138;
      sub_254EB2EF4();
      *(v54 + 4) = sub_254EB5A4C(v62, v63, v64);
      sub_254EB4154(&dword_254EAE000, v65, v66, "could not encode [UIContextElements] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v67 = sub_254EB67C8();
    v68(v67);
    v70 = *(v14 + 88);
    v69 = *(v14 + 96);
    v71 = *(v14 + 80);
    sub_254F26D04();
    v72 = sub_254EB7D94();
    sub_254EB4AB0(v72, v73);
    v74 = sub_254EB6B58();
    v75(v74);
    v45 = *(v14 + 32);
  }

LABEL_15:
  sub_254EC1C54();

  sub_254EB3E2C();
LABEL_16:
  sub_254EB3B50();

  return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F24010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v16 = *(v14 + 168);

  v17 = *(v14 + 192);
  *(v14 + 24) = v17;
  v18 = *(v14 + 160);
  v19 = *(v14 + 144);
  v20 = v17;
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EBEDCC())
  {
    v21 = *(v14 + 136);

    sub_254F284E0();
    v22 = sub_254F291D0();
    v23 = sub_254F29700();
    v24 = sub_254EB493C(v23);
    v25 = *(v14 + 136);
    v26 = *(v14 + 104);
    v27 = *(v14 + 112);
    if (v24)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v19 = 136315138;
      sub_254EB2EF4();
      *(v19 + 4) = sub_254EB5A4C(v28, v29, v30);
      sub_254EB4154(&dword_254EAE000, v31, v32, "could not decode UIContextOptions in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v33 = sub_254EB67C8();
    v34(v33);
    v36 = *(v14 + 152);
    v35 = *(v14 + 160);
    v37 = *(v14 + 144);
    sub_254F26D04();
    v38 = sub_254EB7D94();
    sub_254EB4AB0(v38, v39);
    v40 = sub_254EB6B58();
    v41(v40);
    v42 = *(v14 + 24);
LABEL_9:

    goto LABEL_13;
  }

  v43 = *(v14 + 96);
  v44 = *(v14 + 80);

  *(v14 + 32) = v17;
  v45 = v17;
  if (sub_254EBEDCC())
  {
    sub_254EBB8A8();
    sub_254F284E0();
    v46 = sub_254F291D0();
    v47 = sub_254F29700();
    v48 = sub_254EB493C(v47);
    v49 = *(v14 + 128);
    v50 = *(v14 + 104);
    v51 = *(v14 + 112);
    if (v48)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v44 = 136315138;
      sub_254EB2EF4();
      *(v44 + 4) = sub_254EB5A4C(v52, v53, v54);
      sub_254EB4154(&dword_254EAE000, v55, v56, "could not encode [UIContextElements] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v57 = sub_254EB67C8();
    v58(v57);
    v60 = *(v14 + 88);
    v59 = *(v14 + 96);
    v61 = *(v14 + 80);
    sub_254F26D04();
    v62 = sub_254EB7D94();
    sub_254EB4AB0(v62, v63);
    v64 = sub_254EB6B58();
    v65(v64);
    v42 = *(v14 + 32);
    goto LABEL_9;
  }

  v66 = *(v14 + 120);

  sub_254F284E0();
  v67 = v17;
  v68 = sub_254F291D0();
  sub_254F29700();
  sub_254F228C4();
  v69 = sub_254F228AC();
  v71 = *(v14 + 112);
  v70 = *(v14 + 120);
  v72 = *(v14 + 104);
  if (v69)
  {
    sub_254EB82F8();
    sub_254EB4B94();
    sub_254EB5790();
    sub_254EB81FC();
    *v44 = 136315394;
    sub_254EB2EF4();
    v76 = sub_254EB5A4C(v73, v74, v75);
    sub_254EB5244(v76);
    v77 = _swift_stdlib_bridgeErrorToNSError();
    sub_254EBEDC0(v77);
    sub_254EB6994(&dword_254EAE000, v78, v79, "error in %s: %@");
    sub_254EB2B68(v15, &qword_27F75ED70, &qword_254F2AF58);
    sub_254EB5C24();
    sub_254EB6E24();
    sub_254EB69B4();
  }

  v80 = sub_254EB3E1C();
  v81(v80);
  swift_willThrow();
LABEL_13:
  sub_254EC1C54();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F24464(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_254F29600();
  sub_254EB2F04(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;

  v16 = v4;
  sub_254F22334(a1, a2);
  sub_254F29610();

  return sub_254EB2B68(v12, &qword_27F75EE08, &qword_254F2B1A0);
}

uint64_t sub_254F245C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_254F291E0();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v8 = sub_254F29990();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F246F0, 0, 0);
}

uint64_t sub_254F246F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 56);
  v18 = *(v14 + 64);
  v19 = *(*(v14 + 48) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_decoder);
  sub_254F28B50();
  sub_254EC3918();
  sub_254F27264(v20, 255, v21);
  sub_254EC1B24();
  if (v18)
  {
    v22 = v18;
    v23 = *(v14 + 120);
    v24 = *(v14 + 104);
    sub_254F273E8();
    sub_254EC8BC0(&qword_27F75F090, "P<");
    if (swift_dynamicCast())
    {
      v25 = *(v14 + 96);

      sub_254F284E0();
      v26 = sub_254F291D0();
      v27 = sub_254F29700();
      v28 = sub_254EB493C(v27);
      v29 = *(v14 + 96);
      v30 = *(v14 + 72);
      v31 = *(v14 + 80);
      if (v28)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254EB3F7C();
        *v15 = 136315138;
        sub_254EB2EF4();
        *(v15 + 4) = sub_254EB8190(v32, v33, v34);
        sub_254EB4154(&dword_254EAE000, v35, v36, "could not encode [UIContextElements] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v37 = sub_254EB67C8();
      v38(v37);
      v40 = *(v14 + 112);
      v39 = *(v14 + 120);
      v41 = *(v14 + 104);
      sub_254F26D04();
      v42 = sub_254EB7D94();
      sub_254EB4A08(v42, v43);
      v44 = sub_254EB6B58();
      v45(v44);
    }

    else
    {
      v52 = *(v14 + 88);

      sub_254F284E0();
      v53 = v22;
      v54 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      v55 = sub_254F228AC();
      v57 = *(v14 + 80);
      v56 = *(v14 + 88);
      v58 = *(v14 + 72);
      if (v55)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v15 = 136315394;
        sub_254EB2EF4();
        v62 = sub_254EB8190(v59, v60, v61);
        sub_254EB5244(v62);
        v63 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v63);
        sub_254EB6994(&dword_254EAE000, v64, v65, "error in %s: %@");
        sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v66 = sub_254EB3E1C();
      v67(v66);
      swift_willThrow();
    }

    v68 = *(v14 + 120);
    v70 = *(v14 + 88);
    v69 = *(v14 + 96);

    sub_254EB3E2C();
    sub_254EB3B50();

    return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v46 = *(v14 + 48);
    *(v14 + 128) = *(v14 + 16);
    v47 = *(v46 + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_retriever);
    v48 = swift_task_alloc();
    *(v14 + 136) = v48;
    *v48 = v14;
    v48[1] = sub_254F24A0C;
    sub_254EB3B50();

    return sub_254EF84F4(v49);
  }
}

uint64_t sub_254F24A0C()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  v5 = *(v4 + 136);
  *v3 = *v1;
  *(v2 + 144) = v6;
  *(v2 + 152) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254F24B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v16 = *(*(v14 + 48) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_encoder);
  *(v14 + 32) = *(v14 + 144);
  v17 = *(v14 + 152);
  sub_254EC8BC0(&qword_27F75F700, &qword_254F2D148);
  sub_254F26F40();
  v19 = sub_254F27400();
  v20 = *(v14 + 144);
  v21 = *(v14 + 128);
  if (v17)
  {

    v22 = *(v14 + 120);
    v23 = *(v14 + 104);
    sub_254F273E8();
    sub_254EC8BC0(&qword_27F75F090, "P<");
    if (swift_dynamicCast())
    {
      v24 = *(v14 + 96);

      sub_254F284E0();
      v25 = sub_254F291D0();
      v26 = sub_254F29700();
      v27 = sub_254EB493C(v26);
      v28 = *(v14 + 96);
      v29 = *(v14 + 72);
      v30 = *(v14 + 80);
      if (v27)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254EB3F7C();
        *v19 = 136315138;
        sub_254EB2EF4();
        *(v19 + 4) = sub_254EB8190(v31, v32, v33);
        sub_254EB4154(&dword_254EAE000, v34, v35, "could not encode [UIContextElements] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v36 = sub_254EB67C8();
      v37(v36);
      v39 = *(v14 + 112);
      v38 = *(v14 + 120);
      v40 = *(v14 + 104);
      sub_254F26D04();
      v41 = sub_254EB7D94();
      sub_254EB4A08(v41, v42);
      v43 = sub_254EB6B58();
      v44(v43);
    }

    else
    {
      v50 = *(v14 + 88);

      sub_254F284E0();
      v51 = v17;
      v52 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      v53 = sub_254F228AC();
      v55 = *(v14 + 80);
      v54 = *(v14 + 88);
      v56 = *(v14 + 72);
      if (v53)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v19 = 136315394;
        sub_254EB2EF4();
        v60 = sub_254EB8190(v57, v58, v59);
        sub_254EB5244(v60);
        v61 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v61);
        sub_254EB6994(&dword_254EAE000, v62, v63, "error in %s: %@");
        sub_254EB2B68(v15, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v64 = sub_254EB3E1C();
      v65(v64);
      swift_willThrow();
    }

    v66 = *(v14 + 120);
    v68 = *(v14 + 88);
    v67 = *(v14 + 96);

    sub_254EB3E2C();
  }

  else
  {
    v45 = v18;
    v46 = *(v14 + 120);
    v48 = *(v14 + 88);
    v47 = *(v14 + 96);
    v49 = *(v14 + 40);

    *v49 = v19;
    v49[1] = v45;

    sub_254EB4924();
  }

  sub_254EB3B50();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F24DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 128);

  v18 = *(v14 + 152);
  *(v14 + 24) = v18;
  v19 = *(v14 + 120);
  v20 = *(v14 + 104);
  v21 = v18;
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (swift_dynamicCast())
  {
    v22 = *(v14 + 96);

    sub_254F284E0();
    v23 = sub_254F291D0();
    v24 = sub_254F29700();
    v25 = sub_254EB493C(v24);
    v26 = *(v14 + 96);
    v27 = *(v14 + 72);
    v28 = *(v14 + 80);
    if (v25)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254EB8190(v29, v30, v31);
      sub_254EB4154(&dword_254EAE000, v32, v33, "could not encode [UIContextElements] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v34 = sub_254EB67C8();
    v35(v34);
    v37 = *(v14 + 112);
    v36 = *(v14 + 120);
    v38 = *(v14 + 104);
    sub_254F26D04();
    v39 = sub_254EB7D94();
    sub_254EB4A08(v39, v40);
    v41 = sub_254EB6B58();
    v42(v41);
  }

  else
  {
    v43 = *(v14 + 88);

    sub_254F284E0();
    v44 = v18;
    v45 = sub_254F291D0();
    sub_254F29700();
    sub_254F228C4();
    v46 = sub_254F228AC();
    v48 = *(v14 + 80);
    v47 = *(v14 + 88);
    v49 = *(v14 + 72);
    if (v46)
    {
      sub_254EB82F8();
      sub_254EB4B94();
      sub_254EB5790();
      sub_254EB81FC();
      *v15 = 136315394;
      sub_254EB2EF4();
      v53 = sub_254EB8190(v50, v51, v52);
      sub_254EB5244(v53);
      v54 = _swift_stdlib_bridgeErrorToNSError();
      sub_254EBEDC0(v54);
      sub_254EB6994(&dword_254EAE000, v55, v56, "error in %s: %@");
      sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
      sub_254EB5C24();
      sub_254EB6E24();
      sub_254EB69B4();
    }

    v57 = sub_254EB3E1C();
    v58(v57);
    swift_willThrow();
  }

  v59 = *(v14 + 120);
  v61 = *(v14 + 88);
  v60 = *(v14 + 96);

  sub_254EB3E2C();
  sub_254EB3B50();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F25164(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_254F29600();
  sub_254EB2F04(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;

  sub_254F29610();

  return sub_254EB2B68(v11, &qword_27F75EE08, &qword_254F2B1A0);
}

uint64_t sub_254F252CC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 120) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_254F29100();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = sub_254F28F20();
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v10 = sub_254F290B0();
  *(v3 + 80) = v10;
  v11 = *(v10 - 8);
  *(v3 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F25454, 0, 0);
}

uint64_t sub_254F25454()
{
  sub_254EB3A3C();
  v1 = *(v0 + 96);
  if (*(*(v0 + 24) + 16))
  {
    sub_254F28FB0();
  }

  else
  {
    v2 = *(v0 + 120);
    sub_254F28F70();
  }

  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  (*(*(v0 + 88) + 32))(*(v0 + 104), *(v0 + 96), *(v0 + 80));
  sub_254F29110();
  (*(v4 + 104))(v3, *MEMORY[0x277D74988], v5);
  v6 = *(MEMORY[0x277D74980] + 4);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_254F2556C;
  v8 = *(v0 + 104);
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);

  return MEMORY[0x2821DCB08](v9, v10, v8);
}

uint64_t sub_254F2556C()
{
  sub_254EB3A3C();
  sub_254EB4918();
  v2 = v1[14];
  v3 = v1[6];
  v4 = v1[5];
  v5 = v1[4];
  v10 = *v0;

  (*(v4 + 8))(v3, v5);
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254F256B8()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = sub_254F27780();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_254F27770();
  sub_254F27264(&qword_27F75F6F8, 255, MEMORY[0x277D74958]);
  v6 = sub_254F27760();
  v8 = v7;

  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[6];
  v14 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v12 + 8))(v9, v11);
  *v14 = v6;
  v14[1] = v8;

  sub_254EB4924();

  return v15();
}

uint64_t sub_254F25948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_254F29990();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = sub_254F291E0();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v11 = sub_254F29980();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v14 = sub_254F28E10();
  v4[20] = v14;
  v15 = *(v14 - 8);
  v4[21] = v15;
  v16 = *(v15 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F25B38, 0, 0);
}

uint64_t sub_254F25B38()
{
  sub_254EB9A10();
  sub_254EB8164();
  v1 = v0[22];
  v2 = v0[20];
  v4 = v0[7];
  v3 = v0[8];
  v5 = *(v0[6] + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_decoder);
  sub_254F27264(&qword_281427478, 255, MEMORY[0x277D1D4F8]);
  sub_254F27730();
  v6 = *(v0[6] + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_retriever);
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_254F25F60;
  v8 = v0[22];
  sub_254EB3B50();

  return sub_254EFBD20();
}

uint64_t sub_254F25F60()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  v5 = *(v4 + 184);
  *v3 = *v1;
  *(v2 + 192) = v6;
  *(v2 + 200) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254F26060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v16 = *(*(v14 + 48) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime25UIContextXPCServiceServer6Server_encoder);
  *(v14 + 32) = *(v14 + 192);
  v17 = *(v14 + 200);
  sub_254EC8BC0(&qword_27F75F6F0, &qword_254F2D120);
  sub_254F26D58();
  v18 = sub_254F27400();
  v20 = v19;
  v21 = v17;
  v22 = *(v14 + 192);
  v23 = *(v14 + 168);
  v24 = *(v14 + 160);
  if (!v17)
  {
    v49 = v18;
    v50 = *(v14 + 152);
    v52 = *(v14 + 120);
    v51 = *(v14 + 128);
    v53 = *(v14 + 112);
    a9 = *(v14 + 88);
    v54 = *(v14 + 40);
    (*(v23 + 8))(*(v14 + 176), v24);

    *v54 = v49;
    v54[1] = v20;

    sub_254EB4924();
    goto LABEL_16;
  }

  (*(v23 + 8))(*(v14 + 176), v24);

  v25 = *(v14 + 152);
  v26 = *(v14 + 136);
  *(v14 + 16) = v21;
  v27 = v21;
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (swift_dynamicCast())
  {
    sub_254EBB8A8();
    sub_254F284E0();
    v28 = sub_254F291D0();
    v29 = sub_254F29700();
    v30 = sub_254EB493C(v29);
    v31 = *(v14 + 128);
    v32 = *(v14 + 96);
    v33 = *(v14 + 104);
    if (v30)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *(v14 + 16) = 136315138;
      sub_254EB2EF4();
      *(v14 + 20) = sub_254EB8208(v34, v35, v36);
      sub_254EB4154(&dword_254EAE000, v37, v38, "could not decode OnScreenContentRequestParameters in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v39 = sub_254EB67C8();
    v40(v39);
    v42 = *(v14 + 144);
    v41 = *(v14 + 152);
    v43 = *(v14 + 136);
    sub_254F26D04();
    v44 = sub_254EB7D94();
    sub_254EB4AB0(v44, v45);
    v46 = sub_254EB6B58();
    v47(v46);
    v48 = *(v14 + 16);
  }

  else
  {
    v55 = *(v14 + 88);
    v56 = *(v14 + 72);

    sub_254F273E8();
    if (!sub_254EBBB58())
    {
      v78 = *(v14 + 112);

      sub_254F284E0();
      v79 = v21;
      v80 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      v81 = sub_254F228AC();
      v83 = *(v14 + 104);
      v82 = *(v14 + 112);
      v84 = *(v14 + 96);
      if (v81)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v56 = 136315394;
        sub_254EB2EF4();
        v88 = sub_254EB8208(v85, v86, v87);
        sub_254EB5244(v88);
        v89 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v89);
        sub_254EB6994(&dword_254EAE000, v90, v91, "error in %s: %@");
        sub_254EB2B68(v15, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v92 = sub_254EB3E1C();
      v93(v92);
      swift_willThrow();
      goto LABEL_15;
    }

    v57 = *(v14 + 120);

    sub_254F284E0();
    v58 = sub_254F291D0();
    v59 = sub_254F29700();
    v60 = sub_254EB493C(v59);
    v61 = *(v14 + 120);
    v62 = *(v14 + 96);
    v63 = *(v14 + 104);
    if (v60)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v56 = 136315138;
      sub_254EB2EF4();
      *(v56 + 4) = sub_254EB8208(v64, v65, v66);
      sub_254EB4154(&dword_254EAE000, v67, v68, "could not encode [OnScreenContent] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v69 = sub_254EB67C8();
    v70(v69);
    v72 = *(v14 + 80);
    v71 = *(v14 + 88);
    v73 = *(v14 + 72);
    sub_254F26D04();
    v74 = sub_254EB7D94();
    sub_254EB4AB0(v74, v75);
    v76 = sub_254EB6B58();
    v77(v76);
    v48 = *(v14 + 24);
  }

LABEL_15:
  sub_254EC013C();

  sub_254EB3E2C();
LABEL_16:
  sub_254EB3B50();

  return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F2648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  (*(*(v14 + 168) + 8))(*(v14 + 176), *(v14 + 160));
  v16 = *(v14 + 200);
  *(v14 + 16) = v16;
  v17 = *(v14 + 152);
  v18 = *(v14 + 136);
  v19 = v16;
  sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EBEDCC())
  {
    sub_254EBB8A8();
    sub_254F284E0();
    v20 = sub_254F291D0();
    v21 = sub_254F29700();
    v22 = sub_254EB493C(v21);
    v23 = *(v14 + 128);
    v24 = *(v14 + 96);
    v25 = *(v14 + 104);
    if (v22)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v18 = 136315138;
      sub_254EB2EF4();
      *(v18 + 4) = sub_254EB8208(v26, v27, v28);
      sub_254EB4154(&dword_254EAE000, v29, v30, "could not decode OnScreenContentRequestParameters in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v31 = sub_254EB67C8();
    v32(v31);
    v34 = *(v14 + 144);
    v33 = *(v14 + 152);
    v35 = *(v14 + 136);
    sub_254F26D04();
    v36 = sub_254EB7D94();
    sub_254EB4AB0(v36, v37);
    v38 = sub_254EB6B58();
    v39(v38);
    v40 = *(v14 + 16);
LABEL_9:

    goto LABEL_13;
  }

  v41 = *(v14 + 88);
  v42 = *(v14 + 72);

  sub_254F273E8();
  if (sub_254EBEDCC())
  {
    v43 = *(v14 + 120);

    sub_254F284E0();
    v44 = sub_254F291D0();
    v45 = sub_254F29700();
    v46 = sub_254EB493C(v45);
    v47 = *(v14 + 120);
    v48 = *(v14 + 96);
    v49 = *(v14 + 104);
    if (v46)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v42 = 136315138;
      sub_254EB2EF4();
      *(v42 + 4) = sub_254EB8208(v50, v51, v52);
      sub_254EB4154(&dword_254EAE000, v53, v54, "could not encode [OnScreenContent] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v55 = sub_254EB67C8();
    v56(v55);
    v58 = *(v14 + 80);
    v57 = *(v14 + 88);
    v59 = *(v14 + 72);
    sub_254F26D04();
    v60 = sub_254EB7D94();
    sub_254EB4AB0(v60, v61);
    v62 = sub_254EB6B58();
    v63(v62);
    v40 = *(v14 + 24);
    goto LABEL_9;
  }

  v64 = *(v14 + 112);

  sub_254F284E0();
  v65 = v16;
  v66 = sub_254F291D0();
  sub_254F29700();
  sub_254F228C4();
  v67 = sub_254F228AC();
  v69 = *(v14 + 104);
  v68 = *(v14 + 112);
  v70 = *(v14 + 96);
  if (v67)
  {
    sub_254EB82F8();
    sub_254EB4B94();
    sub_254EB5790();
    sub_254EB81FC();
    *v42 = 136315394;
    sub_254EB2EF4();
    v74 = sub_254EB8208(v71, v72, v73);
    sub_254EB5244(v74);
    v75 = _swift_stdlib_bridgeErrorToNSError();
    sub_254EBEDC0(v75);
    sub_254EB6994(&dword_254EAE000, v76, v77, "error in %s: %@");
    sub_254EB2B68(v15, &qword_27F75ED70, &qword_254F2AF58);
    sub_254EB5C24();
    sub_254EB6E24();
    sub_254EB69B4();
  }

  v78 = sub_254EB3E1C();
  v79(v78);
  swift_willThrow();
LABEL_13:
  sub_254EC013C();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
}

id sub_254F2695C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_254F2335C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F26A60()
{
  swift_beginAccess();
  v0 = qword_281427C98;
  v1 = qword_281427C98;
  return v0;
}

void sub_254F26AAC(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_281427C98;
  qword_281427C98 = a1;
}

uint64_t sub_254F26B9C(uint64_t a1)
{
  swift_beginAccess();
  qword_281427CA0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_254F26C44(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], a2);
}

uint64_t sub_254F26C78()
{
  sub_254EB3A3C();
  sub_254EB80B4();
  v0 = swift_task_alloc();
  v1 = sub_254EB3BE4(v0);
  *v1 = v2;
  v3 = sub_254EB5264(v1);

  return sub_254F25948(v3, v4, v5, v6);
}

unint64_t sub_254F26D04()
{
  result = qword_27F75F6E8;
  if (!qword_27F75F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F6E8);
  }

  return result;
}

unint64_t sub_254F26D58()
{
  result = qword_281426158;
  if (!qword_281426158)
  {
    sub_254EDEFE4(&qword_27F75F6F0, &qword_254F2D120);
    sub_254F27264(&qword_2814274D0, 255, MEMORY[0x277D1D3A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426158);
  }

  return result;
}

uint64_t sub_254F26E10()
{
  sub_254EB3A3C();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = sub_254EB3BE4(v5);
  *v6 = v7;
  v6[1] = sub_254F273E4;

  return sub_254F252CC(v2, v3, v4);
}

uint64_t sub_254F26EB4()
{
  sub_254EB3A3C();
  sub_254EB80B4();
  v0 = swift_task_alloc();
  v1 = sub_254EB3BE4(v0);
  *v1 = v2;
  v3 = sub_254EB5264(v1);

  return sub_254F245C4(v3, v4, v5, v6);
}

unint64_t sub_254F26F40()
{
  result = qword_27F75F708;
  if (!qword_27F75F708)
  {
    sub_254EDEFE4(&qword_27F75F700, &qword_254F2D148);
    sub_254F27264(&qword_27F75F710, 255, MEMORY[0x277D1D508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F708);
  }

  return result;
}

uint64_t sub_254F26FF8()
{
  sub_254EF278C(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254F27038()
{
  sub_254EB3A3C();
  sub_254EB80B4();
  v0 = swift_task_alloc();
  v1 = sub_254EB3BE4(v0);
  *v1 = v2;
  v3 = sub_254EB5264(v1);

  return sub_254F2358C(v3, v4, v5, v6);
}

uint64_t sub_254F270C4()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = *(v1 + 16);
  v5 = *v0;

  sub_254EB4924();

  return v3();
}

unint64_t sub_254F271AC()
{
  result = qword_281426150;
  if (!qword_281426150)
  {
    sub_254EDEFE4(&qword_27F75F718, &unk_254F2D160);
    sub_254F27264(&qword_2814274C8, 255, MEMORY[0x277D1D3C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426150);
  }

  return result;
}

uint64_t sub_254F27264(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for UIContextXPCServiceServer.UIContextXPCServiceServerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254F2738C()
{
  result = qword_27F75F720;
  if (!qword_27F75F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F720);
  }

  return result;
}

id sub_254F273E8()
{
  *(v1 + 24) = v0;

  return v0;
}

uint64_t sub_254F27400()
{

  return sub_254F27760();
}