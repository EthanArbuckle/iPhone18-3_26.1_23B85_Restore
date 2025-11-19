unint64_t sub_1AC377B44()
{
  v2 = qword_1EB5549C0;
  if (!qword_1EB5549C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5549C0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC377BD0()
{
  v2 = qword_1EB5549D0;
  if (!qword_1EB5549D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5549D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC377C34()
{
  v2 = qword_1EB5549E0;
  if (!qword_1EB5549E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5549D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5549E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC377CBC()
{
  v2 = qword_1EB554F80;
  if (!qword_1EB554F80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554F80);
    return ObjCClassMetadata;
  }

  return v2;
}

__n128 sub_1AC377D20(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1AC377D3C()
{
  v2 = qword_1EB5549F0;
  if (!qword_1EB5549F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5549F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC377DA0()
{
  v2 = qword_1EB5549F8;
  if (!qword_1EB5549F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5549F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC377E18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = sub_1AC3B8484() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = sub_1AC3B84B4();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x1EEE9AC00](v22);
    v15 = v28;
    v16 = v10;
    sub_1AC378054(v9, sub_1AC379120, v14, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v12, MEMORY[0x1E69E7CA8]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t sub_1AC378054@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_1AC3B84B4();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

void *sub_1AC378288(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  sub_1AC3B8354();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_1AC378394@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1AC3783DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1AC378450();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1AC377E18(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1AC378450()
{
  v2 = qword_1EB554A00;
  if (!qword_1EB554A00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554A00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3784C8()
{
  v2 = qword_1EB554A08;
  if (!qword_1EB554A08)
  {
    type metadata accessor for UIUserInterfaceStyle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554A08);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_memcpy6_4(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  return result;
}

uint64_t getEnumTagSinglePayload for BatteryIconStyle(unsigned int *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFFD && *(a1 + 6))
    {
      v5 = *a1 + 4093;
    }

    else
    {
      v2 = *a1 | (*(a1 + 2) << 32);
      LODWORD(v2) = ((v2 & 0xFFFFFFFFFFFFLL) >> 33) & 0x7F | ((v2 & 0xFFFFFFFFFFFFLL) >> 34) & 0xF80;
      v3 = 4095 - (((4 * v2) | (v2 >> 10)) & 0xFFF);
      if (v3 >= 0xFFD)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BatteryIconStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFD)
  {
    *result = a2 - 4094;
    *(result + 4) = 0;
    if (a3 > 0xFFD)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 > 0xFFD)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      v3 = ((~(a2 - 1) & 0xFFF) >> 2) | ((~(a2 - 1) & 0xFFF) << 10);
      v4 = (v3 << 33) & 0xFE00000000 | (v3 << 34) & 0x3E0000000000;
      *result = v4;
      *(result + 4) = WORD2(v4);
    }
  }

  return result;
}

unint64_t sub_1AC3788DC(unsigned int *a1)
{
  if (((((*a1 | (*(a1 + 2) << 32)) & 0xFFFFFFFFFFFFLL) >> 44) & 3) < 2)
  {
    return (((*a1 | (*(a1 + 2) << 32)) & 0xFFFFFFFFFFFFLL) >> 44) & 3;
  }

  else
  {
    return *a1 + 2;
  }
}

unsigned int *sub_1AC378908(unsigned int *result)
{
  v1 = (*result | (*(result + 2) << 32)) & 0xFFFFCFFFFFFFFFFFLL;
  *result = *result;
  *(result + 2) = WORD2(v1);
  return result;
}

unsigned int *sub_1AC37892C(unsigned int *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = ((a2 & 3) << 44) & 0x300000000000 | (*result | (*(result + 2) << 32)) & 0xFFFFC101FFFFFFFFLL;
    *result = *result;
    *(result + 2) = WORD2(v2);
  }

  else
  {
    *result = a2 - 2;
    *(result + 2) = 0x2000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BatteryIconStyle.BatteryChargeType(unsigned int *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x3FFD && *(a1 + 6))
    {
      v5 = *a1 + 16381;
    }

    else
    {
      v2 = *a1 | (*(a1 + 2) << 32);
      LODWORD(v2) = ((v2 & 0xFFFFFFFFFFFFLL) >> 33) & 0x7F | ((v2 & 0xFFFFFFFFFFFFLL) >> 34) & 0x3F80;
      v3 = 0x3FFF - (((4 * v2) | (v2 >> 12)) & 0x3FFF);
      if (v3 >= 0x3FFD)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BatteryIconStyle.BatteryChargeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 4) = 0;
    if (a3 > 0x3FFD)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 > 0x3FFD)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      v3 = ((~(a2 - 1) & 0x3FFF) >> 2) | ((~(a2 - 1) & 0x3FFF) << 12);
      v4 = (v3 << 33) & 0xFE00000000 | (v3 << 34) & 0xFFFFFE0000000000;
      *result = v4;
      *(result + 4) = WORD2(v4);
    }
  }

  return result;
}

unsigned int *sub_1AC378D50(unsigned int *result)
{
  v1 = (*result | (*(result + 2) << 32)) & 0x3FFFFFFFFFFFLL;
  *result = *result;
  *(result + 2) = WORD2(v1);
  return result;
}

unsigned int *sub_1AC378D74(unsigned int *result, char a2)
{
  v2 = ((a2 & 3) << 46) | (*result | (*(result + 2) << 32)) & 0x101FFFFFFFFLL;
  *result = *result;
  *(result + 2) = WORD2(v2);
  return result;
}

unint64_t sub_1AC378FF4()
{
  v2 = qword_1EB554A18;
  if (!qword_1EB554A18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554A18);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC379058()
{
  v2 = qword_1EB554A20;
  if (!qword_1EB554A20)
  {
    sub_1AC378FF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554A20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC379150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_1AC3791E8()
{
  v2 = qword_1EB554A30;
  if (!qword_1EB554A30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554A30);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC37924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for PillBadgeTextAttachment();

  v11 = sub_1AC3793AC();
  v13 = sub_1AC3793FC();
  v14 = sub_1AC37943C();
  v17 = sub_1AC37947C();
  v18 = sub_1AC379484();
  v15 = sub_1AC37948C();
  v16 = sub_1AC3794D4();
  v19 = sub_1AC379528();
  v22 = sub_1AC37953C(a3, a4, v11, a5 & 1, v13, v14, v15, v16, v17, v18, v19, v5, v6, v7);
  v23 = sub_1AC3795E4(a1, a2, v22);
  MEMORY[0x1E69E5920](v22);
  return v23;
}

id sub_1AC3793AC()
{
  v0 = [objc_opt_self() systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB980]];

  return v0;
}

id sub_1AC3793FC()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id sub_1AC37943C()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id sub_1AC3795E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = a2;
  v32 = a3;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v40 = 0;
  v30 = 0;
  v24 = sub_1AC3B7294();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v28 = &v8 - v27;
  v54 = v3;
  v55 = v4;
  v53 = v5;
  sub_1AC37A108();
  v29 = sub_1AC3692C0();
  v52 = v29;
  MEMORY[0x1E69E5928](v32);
  v51 = v32;
  v31 = sub_1AC37A16C();
  MEMORY[0x1E69E5928](v32);
  v33 = sub_1AC379B10(v32);
  v50 = v33;
  v35 = sub_1AC3B7254();
  v47 = v35;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554AA8);
  sub_1AC37A1D0();
  sub_1AC3B8214();
  v36 = v45;
  v37 = v46;

  v43 = v36;
  v44 = v37;
  if (v37)
  {
    v48 = v43;
    v49 = v44;
  }

  else
  {
    v48 = sub_1AC3B7F54();
    v49 = v6;
    if (v44)
    {
      sub_1AC360750();
    }
  }

  sub_1AC3B7274();
  v18 = sub_1AC3B7284();
  (*(v25 + 8))(v28, v24);
  v21 = &v42;
  v42 = v18;
  v19 = &v41;
  v41 = 2;
  v20 = type metadata accessor for LanguageDirection();
  sub_1AC37A258();
  v17 = (sub_1AC3B8594() & 1) != 0;
  v40 = v17;
  v16 = &v39;
  v39 = v17;
  v14 = &v38;
  v38 = 0;
  v15 = type metadata accessor for UITraitEnvironmentLayoutDirection();
  sub_1AC37A2D8();
  if (sub_1AC3B8594())
  {
    v12 = 0x1FB92B000uLL;
    [v29 0x1FB92B19BLL];
    sub_1AC3B7F54();
    v11 = sub_1AC379B6C();
    [v29 (v12 + 411)];
    MEMORY[0x1E69E5920](v11);

    v13 = sub_1AC379B6C();
    [v29 (v12 + 411)];
    MEMORY[0x1E69E5920](v13);
  }

  else
  {

    v8 = sub_1AC379B6C();
    v10 = 0x1FB92B000uLL;
    [v29 0x1FB92B19BLL];
    MEMORY[0x1E69E5920](v8);
    sub_1AC3B7F54();
    v9 = sub_1AC379B6C();
    [v29 (v10 + 411)];
    MEMORY[0x1E69E5920](v9);
    [v29 (v10 + 411)];
  }

  MEMORY[0x1E69E5920](v33);
  MEMORY[0x1E69E5920](v32);
  return v29;
}

id sub_1AC379B10(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1AC379BB4()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeText);

  return v2;
}

uint64_t sub_1AC379C00()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeFont);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC379C48()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeColor);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC379C90()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_backgroundColor);
  MEMORY[0x1E69E5928]();
  return v2;
}

char *sub_1AC379DA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v50 = 0;
  v48 = a1;
  v49 = a2;
  v47 = a3;
  v46 = a4 & 1;
  v45 = a5;
  v44 = a6;
  v43 = a9;
  v42 = a10;
  v41 = a7;
  v40 = a8;
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v39 = a14;

  v14 = OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeText;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeText = a1;
  *(v14 + 8) = a2;
  MEMORY[0x1E69E5928](a3);
  *&v50[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeFont] = a3;
  if (a4)
  {
    MEMORY[0x1E69E5928](a6);
    v20 = a6;
  }

  else
  {
    MEMORY[0x1E69E5928](a5);
    v20 = a5;
  }

  *&v50[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeColor] = v20;
  if (a4)
  {
    MEMORY[0x1E69E5928](a8);
    v19 = a8;
  }

  else
  {
    MEMORY[0x1E69E5928](a7);
    v19 = a7;
  }

  *&v50[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_backgroundColor] = v19;
  v15 = &v50[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding];
  *v15 = a11;
  v15[1] = a12;
  v15[2] = a13;
  v15[3] = a14;
  *&v50[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_hightDelta] = a10;
  *&v50[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_yAdjust] = a9;
  v35.receiver = v50;
  v35.super_class = type metadata accessor for PillBadgeTextAttachment();
  v18 = objc_msgSendSuper2(&v35, sel_initWithData_ofType_, 0);
  MEMORY[0x1E69E5928](v18);
  v50 = v18;
  MEMORY[0x1E69E5928](v18);
  v17 = sub_1AC37A434();
  [v18 setImage_];
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v18);
  MEMORY[0x1E69E5920](a8);
  MEMORY[0x1E69E5920](a7);
  MEMORY[0x1E69E5920](a6);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v50);
  return v18;
}

unint64_t sub_1AC37A108()
{
  v2 = qword_1EB554F10;
  if (!qword_1EB554F10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554F10);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC37A16C()
{
  v2 = qword_1EB554AA0;
  if (!qword_1EB554AA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554AA0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC37A1D0()
{
  v2 = qword_1EB554AB0;
  if (!qword_1EB554AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554AA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554AB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC37A258()
{
  v2 = qword_1EB554AB8;
  if (!qword_1EB554AB8)
  {
    type metadata accessor for LanguageDirection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554AB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC37A2D8()
{
  v2 = qword_1EB554AC0;
  if (!qword_1EB554AC0)
  {
    type metadata accessor for UITraitEnvironmentLayoutDirection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554AC0);
    return WitnessTable;
  }

  return v2;
}

void sub_1AC37A358()
{
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

unint64_t sub_1AC37A434()
{
  v30 = 0.0;
  v31 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v27 = 0;
  v34 = v0;

  v8 = sub_1AC3B7EE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554B00);
  sub_1AC3B8574();
  v5 = v1;
  sub_1AC37A840(MEMORY[0x1E69DB648], v1);
  v6 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeFont);
  MEMORY[0x1E69E5928](v6);
  v5[4] = sub_1AC37A880();
  v5[1] = v6;
  sub_1AC36EE1C();
  type metadata accessor for Key();
  sub_1AC35D214();
  sub_1AC3B7E74();
  v7 = sub_1AC3B7E64();

  [v8 sizeWithAttributes_];
  v32 = v2;
  v33 = v3;
  v10 = v2;
  v11 = v3;
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);

  v30 = v10;
  v31 = v11;
  v13 = v11 + *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding) + *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 16) + *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_hightDelta);
  v28 = v10 + *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 8) + *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 24);
  v12 = v28;
  v29 = v13;
  sub_1AC37A8E4();
  v15 = sub_1AC37A948(v28, v13);
  v27 = v15;
  (MEMORY[0x1E69E5928])();
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  *(v14 + 32) = v11;
  *(v14 + 40) = v12;
  *(v14 + 48) = v13;

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AC37AD4C;
  *(v18 + 24) = v14;

  v25 = sub_1AC37AE1C;
  v26 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_1AC37AE28;
  v24 = &block_descriptor;
  v16 = _Block_copy(&aBlock);

  v17 = [v15 imageWithActions_];
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

    return v17;
  }

  return result;
}

void *sub_1AC37A840(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928]();
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_1AC37A880()
{
  v2 = qword_1EB554B08;
  if (!qword_1EB554B08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554B08);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC37A8E4()
{
  v2 = qword_1EB554B10;
  if (!qword_1EB554B10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554B10);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC37A990(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_yAdjust);
  v10 = a1 + *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 8) + *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 24);
  v11 = a2 + *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding) + *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 16);
  sub_1AC37B1F0();
  v23 = sub_1AC3A34EC(0.0, v9, v10, v11, a4 / 2.0);
  v12 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_backgroundColor);
  MEMORY[0x1E69E5928](v12);
  [v12 setFill];
  MEMORY[0x1E69E5920](v12);
  [v23 fill];
  v17 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 8);
  v18 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding) + *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_yAdjust);

  v22 = sub_1AC3B7EE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554B00);
  sub_1AC3B8574();
  v15 = v6;
  sub_1AC37A840(MEMORY[0x1E69DB648], v6);
  v13 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeFont);
  MEMORY[0x1E69E5928](v13);
  v15[4] = sub_1AC37A880();
  v15[1] = v13;
  sub_1AC37A840(MEMORY[0x1E69DB650], v15 + 5);
  v16 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeColor);
  MEMORY[0x1E69E5928](v16);
  v15[9] = sub_1AC37B254();
  v15[6] = v16;
  sub_1AC36EE1C();
  type metadata accessor for Key();
  sub_1AC35D214();
  sub_1AC3B7E74();
  v21 = sub_1AC3B7E64();

  [v22 drawInRect:v21 withAttributes:{v17, v18, a1, a2}];
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5920](v22);

  return MEMORY[0x1E69E5920](v23);
}

uint64_t sub_1AC37AE28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  MEMORY[0x1E69E5928]();
  v3(a2);
  return MEMORY[0x1E69E5920](a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_1AC37B03C()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PillBadgeTextAttachment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AC37B12C()
{
  v2 = sub_1AC3B7EE4();
  v3 = [v1 initWithString_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

unint64_t sub_1AC37B1F0()
{
  v2 = qword_1EB554B18;
  if (!qword_1EB554B18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554B18);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC37B254()
{
  v2 = qword_1EB554B20;
  if (!qword_1EB554B20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554B20);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC37B2B8()
{
  result = sub_1AC3B7F54();
  qword_1EB554B28 = result;
  qword_1EB554B30 = v1;
  return result;
}

uint64_t *sub_1AC37B2FC()
{
  if (qword_1EB554328 != -1)
  {
    swift_once();
  }

  return &qword_1EB554B28;
}

uint64_t HeadphoneSwiftUIHostingControllerKey.getter()
{
  v1 = *sub_1AC37B2FC();

  return v1;
}

uint64_t sub_1AC37B398()
{
  v2 = (v0 + *((*v0 & *MEMORY[0x1E69E7D40]) + 0x60));
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1AC37B450(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D40];
  MEMORY[0x1E69E5928](a1);
  v5 = (v1 + *((*v1 & *v4) + 0x60));
  swift_beginAccess();
  v2 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

char *HeadphoneSwiftUIHostingController.init(withRootView:)(uint64_t a1)
{
  v20 = a1;
  v24 = 0;
  v23 = 0;
  v2 = *v1;
  v11 = MEMORY[0x1E69E7D40];
  v14 = v2 & *MEMORY[0x1E69E7D40];
  v19 = *(v14 + 80);
  v25 = v19;
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v9 - v3;
  v23 = v4;
  v24 = v10;
  v5 = *((*v10 & *v11) + 0x60);
  v6 = v17;
  v15 = 0;
  *&v10[v5] = 0;
  v12 = v24;
  (*(v6 + 16))();
  (*(v17 + 32))(&v12[*((*v12 & *v11) + 0x68)], v13, v19);
  v16 = v24;
  v7 = type metadata accessor for HeadphoneSwiftUIHostingController();
  v22.receiver = v16;
  v22.super_class = v7;
  v21 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0);
  MEMORY[0x1E69E5928](v21);
  v24 = v21;
  (*(v17 + 8))(v20, v19);
  MEMORY[0x1E69E5920](v24);
  return v21;
}

void sub_1AC37B934()
{
  **((MEMORY[0] & *MEMORY[0x1E69E7D40]) + 0x60) = 0;
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

uint64_t sub_1AC37BA68(uint64_t a1)
{
  v72 = "Fatal error";
  v73 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v74 = "HeadphoneCommonUIKit/SwiftUIHostingController.swift";
  v98 = 0;
  v96 = 0;
  v2 = *v1;
  v80 = MEMORY[0x1E69E7D40];
  v3 = v2 & *MEMORY[0x1E69E7D40];
  v77 = v1;
  v76 = v3;
  v82 = *(v3 + 80);
  v99 = v82;
  v83 = *(v82 - 8);
  v81 = v82 - 8;
  v75 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v84 = &v15 - v75;
  v98 = v1;
  MEMORY[0x1E69E5928](v1);
  v79 = *(v76 + 88);
  v78 = 0;
  v4 = type metadata accessor for HeadphoneSwiftUIHostingController();
  v97.receiver = v1;
  v97.super_class = v4;
  objc_msgSendSuper2(&v97, sel_viewDidLoad);
  MEMORY[0x1E69E5920](v85);
  sub_1AC3B78A4();
  (*(v83 + 16))(v84, &v85[*((*v85 & *v80) + 0x68)], v82);
  v86 = sub_1AC3B7884();
  v96 = v86;
  MEMORY[0x1E69E5928](v86);
  sub_1AC37B450(v86);
  [v85 addChildViewController_];
  MEMORY[0x1E69E5928](v86);
  v87 = [v86 view];
  MEMORY[0x1E69E5920](v86);
  if (v87)
  {
    v71 = v87;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v69 = v71;
  [v71 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v69);
  MEMORY[0x1E69E5928](v86);
  v70 = [v86 view];
  MEMORY[0x1E69E5920](v86);
  if (v70)
  {
    v68 = v70;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v66 = v68;
  MEMORY[0x1E69E5928](v85);
  v67 = [v85 view];
  MEMORY[0x1E69E5920](v85);
  if (v67)
  {
    v65 = v67;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v63 = v65;
  [v65 bounds];
  v92 = v5;
  v93 = v6;
  v94 = v7;
  v95 = v8;
  v88 = v5;
  v89 = v6;
  v90 = v7;
  v91 = v8;
  [v66 setFrame_];
  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5920](v66);
  MEMORY[0x1E69E5928](v85);
  v64 = [v85 view];
  MEMORY[0x1E69E5920](v85);
  if (v64)
  {
    v62 = v64;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v60 = v62;
  MEMORY[0x1E69E5928](v86);
  v61 = [v86 view];
  MEMORY[0x1E69E5920](v86);
  if (v61)
  {
    v59 = v61;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v53 = v59;
  [v60 addSubview_];
  MEMORY[0x1E69E5920](v53);
  MEMORY[0x1E69E5920](v60);
  v54 = objc_opt_self();
  v55 = sub_1AC377CBC();
  v56 = sub_1AC3B8574();
  v57 = v9;
  MEMORY[0x1E69E5928](v85);
  v58 = [v85 view];
  MEMORY[0x1E69E5920](v85);
  if (v58)
  {
    v52 = v58;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v49 = v52;
  v50 = [v52 leadingAnchor];
  MEMORY[0x1E69E5920](v49);
  MEMORY[0x1E69E5928](v86);
  v51 = [v86 view];
  MEMORY[0x1E69E5920](v86);
  if (v51)
  {
    v48 = v51;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v44 = v48;
  v45 = [v48 leadingAnchor];
  MEMORY[0x1E69E5920](v44);
  v46 = [v50 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v45);
  MEMORY[0x1E69E5920](v50);
  v10 = v85;
  *v57 = v46;
  MEMORY[0x1E69E5928](v10);
  v47 = [v85 view];
  MEMORY[0x1E69E5920](v85);
  if (v47)
  {
    v43 = v47;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v40 = v43;
  v41 = [v43 trailingAnchor];
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5928](v86);
  v42 = [v86 view];
  MEMORY[0x1E69E5920](v86);
  if (v42)
  {
    v39 = v42;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v35 = v39;
  v36 = [v39 trailingAnchor];
  MEMORY[0x1E69E5920](v35);
  v37 = [v41 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v41);
  v11 = v85;
  v57[1] = v37;
  MEMORY[0x1E69E5928](v11);
  v38 = [v85 view];
  MEMORY[0x1E69E5920](v85);
  if (v38)
  {
    v34 = v38;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v31 = v34;
  v32 = [v34 topAnchor];
  MEMORY[0x1E69E5920](v31);
  MEMORY[0x1E69E5928](v86);
  v33 = [v86 view];
  MEMORY[0x1E69E5920](v86);
  if (v33)
  {
    v30 = v33;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v26 = v30;
  v27 = [v30 topAnchor];
  MEMORY[0x1E69E5920](v26);
  v28 = [v32 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v27);
  MEMORY[0x1E69E5920](v32);
  v12 = v85;
  v57[2] = v28;
  MEMORY[0x1E69E5928](v12);
  v29 = [v85 view];
  MEMORY[0x1E69E5920](v85);
  if (v29)
  {
    v25 = v29;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v22 = v25;
  v23 = [v25 bottomAnchor];
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5928](v86);
  v24 = [v86 view];
  MEMORY[0x1E69E5920](v86);
  if (v24)
  {
    v21 = v24;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v16 = [v21 bottomAnchor];
  MEMORY[0x1E69E5920](v15);
  v17 = [v23 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v23);
  v13 = v56;
  v57[3] = v17;
  sub_1AC36EE1C();
  v18 = v13;
  v19 = sub_1AC3B8074();

  [v54 activateConstraints_];
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5928](v85);
  v20 = v85;
  [v86 didMoveToParentViewController_];
  MEMORY[0x1E69E5920](v20);
  return MEMORY[0x1E69E5920](v86);
}

uint64_t sub_1AC37CBFC(uint64_t a1)
{
  v1 = MEMORY[0x1E69E5928](a1);
  sub_1AC37BA68(v1);
  return MEMORY[0x1E69E5920](a1);
}

id HeadphoneSwiftUIHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

void sub_1AC37CDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    sub_1AC3B7EF4();
    v6 = v4;
    MEMORY[0x1E69E5920](a3);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  HeadphoneSwiftUIHostingController.init(nibName:bundle:)(v5);
}

id HeadphoneSwiftUIHostingController.__deallocating_deinit()
{
  v5 = 0;
  v2 = *v0 & *MEMORY[0x1E69E7D40];
  v5 = v0;
  v4 = *(v2 + 80);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HeadphoneSwiftUIHostingController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1AC37CF3C(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*a1 & *MEMORY[0x1E69E7D40]) + 0x50);
  sub_1AC35E758(&a1[*((*a1 & *MEMORY[0x1E69E7D40]) + 0x60)]);
  return (*(*(v3 - 8) + 8))(&a1[*((*a1 & *v2) + 0x68)]);
}

uint64_t sub_1AC37D020()
{
  inited = swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    inited = swift_initClassMetadata2();
    if (!inited)
    {
      return 0;
    }
  }

  return inited;
}

__int128 *SplitContainerPair.init(leadingContent:trailingContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = 0u;
  v14 = 0u;
  v16 = a5;
  v15 = a6;

  *&v13 = a1;
  *(&v13 + 1) = a2;

  *&v14 = a3;
  *(&v14 + 1) = a4;
  sub_1AC37D224(&v13, a7);

  result = &v13;
  sub_1AC366A10();
  return result;
}

void *sub_1AC37D224(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];

  *a2 = v4;
  a2[1] = v5;
  v7 = a1[2];
  v8 = a1[3];

  result = a2;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_1AC37D29C()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1AC37D2F0()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t SplitContainerPair.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v8 = a1;
  v5[2] = MEMORY[0x1E6981F48];
  v11 = sub_1AC37DBF0;
  v16 = MEMORY[0x1E69817F8];
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v21 = *(a1 + 16);
  v41 = v21;
  v22 = *(a1 + 24);
  v40 = v22;
  v5[1] = 255;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v24 = sub_1AC3B7E24();
  WitnessTable = swift_getWitnessTable();
  v17 = 0;
  v26 = sub_1AC3B7D54();
  v6 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v20 = v5 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5 - v6);
  v27 = v5 - v7;
  v39 = v5 - v7;
  v9 = *v2;
  v14 = v2[1];
  v10 = v2[2];
  v15 = v2[3];
  *&v37 = v9;
  *(&v37 + 1) = v14;
  *&v38 = v10;
  *(&v38 + 1) = v15;

  v12 = &v28;
  v29 = v21;
  v30 = v22;
  v31 = *(v8 + 32);
  v32 = *(v8 + 40);
  v33 = v9;
  v34 = v14;
  v35 = v10;
  v36 = v15;
  sub_1AC3647AC();
  sub_1AC3B7D44();

  v19 = swift_getWitnessTable();
  sub_1AC35745C(v20, v26, v27);
  v25 = sub_1AC3B7724();
  sub_1AC37DC24(v20, v21, v22, TupleTypeMetadata3, v24, v25);
  sub_1AC37DCCC(v27, v20, v21, v22, TupleTypeMetadata3, v24, v25);
  sub_1AC35745C(v20, v26, v18);
  sub_1AC37DC24(v20, v21, v22, TupleTypeMetadata3, v24, v25);
  return sub_1AC37DC24(v27, v21, v22, TupleTypeMetadata3, v24, v25);
}

uint64_t sub_1AC37D6D4@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a9;
  v26 = a1;
  v27 = a2;
  v29 = a3;
  v30 = a4;
  v48 = a5;
  v44 = a6;
  v36 = a7;
  v38 = a8;
  v65 = 0;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v28 = &v60;
  v60 = 0;
  v61 = 0;
  v67 = a5;
  v66 = a6;
  v33 = *(a6 - 8);
  v34 = a6 - 8;
  v22 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](a1);
  v41 = &v22 - v22;
  v23 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v43 = &v22 - v23;
  v65 = &v22 - v23;
  v31 = *(v13 - 8);
  v32 = v13 - 8;
  v24 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v42 = &v22 - v24;
  v25 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v47 = &v22 - v25;
  v64 = &v22 - v25;
  *&v62 = v16;
  *(&v62 + 1) = a2;
  *&v63 = v17;
  *(&v63 + 1) = v18;

  v26();
  sub_1AC35745C(v42, v48, v47);
  v50 = *(v31 + 8);
  v49 = v31 + 8;
  v50(v42, v48);

  v58 = sub_1AC3B7D64();
  v59 = v19 & 1;
  v35 = MEMORY[0x1E6981840];
  v37 = MEMORY[0x1E6981838];
  sub_1AC35745C(&v58, MEMORY[0x1E6981840], v28);

  v29(v20);
  sub_1AC35745C(v41, v44, v43);
  v46 = *(v33 + 8);
  v45 = v33 + 8;
  v46(v41, v44);

  (*(v31 + 16))(v42, v47, v48);
  v40 = v57;
  v57[0] = v42;
  v55 = v60;
  v56 = v61;
  v57[1] = &v55;
  (*(v33 + 16))(v41, v43, v44);
  v57[2] = v41;
  v54[0] = v48;
  v54[1] = v35;
  v54[2] = v44;
  v51 = v36;
  v52 = v37;
  v53 = v38;
  sub_1AC394250(v40, 3uLL, v54, v39);
  v46(v41, v44);
  v50(v42, v48);
  v46(v43, v44);
  return (v50)(v47, v48);
}

uint64_t sub_1AC37DC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 + *(a6 + 44);
  (*(*(a2 - 8) + 8))();
  (*(*(a3 - 8) + 8))(v8 + *(a4 + 64));
  return a1;
}

uint64_t sub_1AC37DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v11 = a2 + *(a7 + 44);
  v12 = a1 + *(a7 + 44);
  (*(*(a3 - 8) + 16))();
  v7 = v12 + *(a5 + 48);
  v8 = v11 + *(a5 + 48);
  *v8 = *v7;
  *(v8 + 8) = *(v7 + 8);
  (*(*(a4 - 8) + 16))(v11 + *(a5 + 64), v12 + *(a5 + 64));
  return a2;
}

uint64_t sub_1AC37DDD8()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1AC37DE24()
{
  v2 = *(v0 + 16);

  return v2;
}

__int128 *sub_1AC37DE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = 0u;
  v13 = 0u;
  v14 = a5;

  *&v12 = a1;
  *(&v12 + 1) = a2;

  *&v13 = a3;
  *(&v13 + 1) = a4;
  sub_1AC37D224(&v12, a6);

  result = &v12;
  sub_1AC366A10();
  return result;
}

uint64_t SplitContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v8 = a1;
  v5[1] = MEMORY[0x1E6981F48];
  v11 = sub_1AC37E6DC;
  v16 = MEMORY[0x1E69817F8];
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v21 = *(a1 + 16);
  v37 = v21;
  v5[0] = 255;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v23 = sub_1AC3B7E24();
  WitnessTable = swift_getWitnessTable();
  v17 = 0;
  v25 = sub_1AC3B7D54();
  v6 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v20 = v5 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5 - v6);
  v26 = v5 - v7;
  v36 = v5 - v7;
  v9 = *v2;
  v14 = v2[1];
  v10 = v2[2];
  v15 = v2[3];
  *&v34 = v9;
  *(&v34 + 1) = v14;
  *&v35 = v10;
  *(&v35 + 1) = v15;

  v12 = &v27;
  v28 = v21;
  v29 = *(v8 + 24);
  v30 = v9;
  v31 = v14;
  v32 = v10;
  v33 = v15;
  sub_1AC3647AC();
  sub_1AC3B7D44();

  v19 = swift_getWitnessTable();
  sub_1AC35745C(v20, v25, v26);
  v24 = sub_1AC3B7724();
  sub_1AC37E704(v20, v21, TupleTypeMetadata3, v23, v24);
  sub_1AC37E79C(v26, v20, v21, TupleTypeMetadata3, v23, v24);
  sub_1AC35745C(v20, v25, v18);
  sub_1AC37E704(v20, v21, TupleTypeMetadata3, v23, v24);
  return sub_1AC37E704(v26, v21, TupleTypeMetadata3, v23, v24);
}

uint64_t sub_1AC37E264@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v32 = a1;
  v40 = a2;
  v24 = a3;
  v25 = a4;
  v37 = a5;
  v34 = a6;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v41 = &v53;
  v53 = 0;
  v54 = 0;
  v50 = 0;
  v58 = a5;
  v35 = *(a5 - 8);
  v36 = a5 - 8;
  v26 = (v35[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v27 = v20 - v26;
  v28 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v29 = v20 - v28;
  v30 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v42 = v20 - v30;
  v31 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v33 = v20 - v31;
  v57 = v20 - v31;
  *&v55 = v14;
  *(&v55 + 1) = a2;
  *&v56 = v15;
  *(&v56 + 1) = v16;

  v32();
  sub_1AC35745C(v42, v37, v33);
  v38 = v35[1];
  v39 = v35 + 1;
  v38(v42, v37);

  v51 = sub_1AC3B7D64();
  v52 = v17 & 1;
  sub_1AC35745C(&v51, MEMORY[0x1E6981840], v41);
  v50 = v42;

  v24(v18);
  sub_1AC35745C(v29, v37, v42);
  v38(v29, v37);

  v21 = v35[2];
  v20[1] = v35 + 2;
  v21(v29, v33, v37);
  v22 = v49;
  v49[0] = v29;
  v47 = v53;
  v48 = v54;
  v49[1] = &v47;
  v21(v27, v42, v37);
  v49[2] = v27;
  v46[0] = v37;
  v46[1] = MEMORY[0x1E6981840];
  v46[2] = v37;
  v43 = v34;
  v44 = MEMORY[0x1E6981838];
  v45 = v34;
  sub_1AC394250(v22, 3uLL, v46, v23);
  v38(v27, v37);
  v38(v29, v37);
  v38(v42, v37);
  return (v38)(v33, v37);
}

uint64_t sub_1AC37E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(a2 - 8) + 8);
  v7 = a1 + *(a5 + 44);
  v9();
  (v9)(v7 + *(a3 + 64), a2);
  return a1;
}

uint64_t sub_1AC37E79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v13 = *(*(a3 - 8) + 16);
  v10 = a2 + *(a6 + 44);
  v11 = a1 + *(a6 + 44);
  v13();
  v6 = v11 + *(a4 + 48);
  v7 = v10 + *(a4 + 48);
  *v7 = *v6;
  *(v7 + 8) = *(v6 + 8);
  (v13)(v10 + *(a4 + 64), v11 + *(a4 + 64), a3);
  return a2;
}

__int128 *SplitContainer<>.init(leadingContent:trailing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  v22 = a1;
  v23 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  sub_1AC37DE70(sub_1AC37EA90, v14, sub_1AC37ED2C, v7, MEMORY[0x1E6981148], v17);
  v24 = v17[0];
  v25 = v17[1];
  sub_1AC37D224(&v24, a7);

  result = &v24;
  sub_1AC366A10();
  return result;
}

uint64_t sub_1AC37EA20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1AC37EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = 0u;
  v45 = 0u;
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v49 = a4;

  v41 = 0;
  v42 = 0;
  v43 = 256;
  v37 = sub_1AC3B7A54();
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  sub_1AC3B7C54();
  v33 = v37;
  v34 = v12;
  v35 = v13 & 1;
  v36 = v14;
  v29 = sub_1AC3B7A24();
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v15 = v8;
  v16 = v9;
  v17 = v10;

  sub_1AC364A88(v37, v12, v13 & 1);

  v26[0] = v29;
  v26[1] = v15;
  v27 = v16 & 1;
  v28 = v17;
  v22 = MEMORY[0x1E6981148];
  sub_1AC35745C(v26, MEMORY[0x1E6981148], &v44);
  sub_1AC367A04(v26);
  v18 = v44;
  v19 = v45;
  v20 = *(&v45 + 1);
  sub_1AC367800(v44, *(&v44 + 1), v45 & 1);

  v23 = v18;
  v24 = v19 & 1;
  v25 = v20;
  sub_1AC35745C(&v23, v22, a5);
  sub_1AC367A04(&v23);
  return sub_1AC367A04(&v44);
}

__int128 *SplitContainer<>.init(leading:trailingContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v18 = a5;
  v19 = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;

  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  sub_1AC37DE70(sub_1AC37F098, v14, sub_1AC37EA90, v7, MEMORY[0x1E6981148], v17);
  v24 = v17[0];
  v25 = v17[1];
  sub_1AC37D224(&v24, a7);

  result = &v24;
  sub_1AC366A10();
  return result;
}

uint64_t sub_1AC37EEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = 0u;
  v28 = 0u;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;

  v24 = 0;
  v25 = 0;
  v26 = 256;
  v20 = sub_1AC3B7A54();
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v17[0] = v20;
  v17[1] = v5;
  v18 = v6 & 1;
  v19 = v7;
  v13 = MEMORY[0x1E6981148];
  sub_1AC35745C(v17, MEMORY[0x1E6981148], &v27);
  sub_1AC367A04(v17);
  v9 = v27;
  v10 = v28;
  v11 = *(&v28 + 1);
  sub_1AC367800(v27, *(&v27 + 1), v28 & 1);

  v14 = v9;
  v15 = v10 & 1;
  v16 = v11;
  sub_1AC35745C(&v14, v13, a5);
  sub_1AC367A04(&v14);
  return sub_1AC367A04(&v27);
}

__int128 *SplitContainer<>.init(leading:trailing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v30 = 0u;
  v31 = 0u;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;
  *(v9 + 32) = a7;
  *(v9 + 40) = a8;
  sub_1AC37DE70(sub_1AC37F098, v19, sub_1AC37ED2C, v9, MEMORY[0x1E6981148], v21);
  v30 = v21[0];
  v31 = v21[1];
  sub_1AC37D224(&v30, a9);
  result = &v30;
  sub_1AC366A10();
  return result;
}

uint64_t sub_1AC37F24C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v7 = v1[3];

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  return result;
}

uint64_t sub_1AC37F2D0()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t *sub_1AC37F31C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memset(__b, 0, 0x30uLL);
  __b[6] = a4;
  v8 = *a1;
  v13 = a1[1];
  v9 = a1[2];
  v14 = a1[3];

  __b[0] = v8;
  __b[1] = v13;
  __b[2] = v9;
  __b[3] = v14;

  __b[4] = a2;
  __b[5] = a3;
  sub_1AC37F434(__b, a5);

  result = __b;
  sub_1AC37F4D8();
  return result;
}

void *sub_1AC37F434(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  v6 = a1[2];
  v7 = a1[3];

  a2[2] = v6;
  a2[3] = v7;
  v9 = a1[4];
  v10 = a1[5];

  result = a2;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AC37F4D8()
{
}

uint64_t SplitTopFullBottom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v5[1] = 0;
  v5[4] = MEMORY[0x1E6981F48];
  v9 = sub_1AC37FF38;
  v13 = MEMORY[0x1E6981870];
  v34 = 0;
  v21 = *(a1 + 16);
  v35 = v21;
  v8 = *(a1 + 24);
  v5[3] = 255;
  v5[2] = type metadata accessor for SplitContainer();
  v22 = sub_1AC3B7734();
  v5[0] = MEMORY[0x1E6981840];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = sub_1AC3B7E24();
  swift_getWitnessTable();
  v26 = sub_1AC3B7D54();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v18 = sub_1AC3B7E24();
  WitnessTable = swift_getWitnessTable();
  v14 = 0;
  v20 = sub_1AC3B7D94();
  v6 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v17 = v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5 - v6);
  v28 = v5 - v7;
  v34 = v5 - v7;
  v12 = __dst;
  memcpy(__dst, v3, sizeof(__dst));
  sub_1AC37F434(__dst, &v33);
  v10 = &v29;
  v30 = v21;
  v31 = v8;
  v32 = v12;
  sub_1AC3802C0();
  sub_1AC3B7D84();
  sub_1AC37F4D8();
  v16 = swift_getWitnessTable();
  sub_1AC35745C(v17, v20, v28);
  v25 = sub_1AC3B7724();
  v19 = sub_1AC3B7724();
  sub_1AC3802E4(v17, v21, v22, TupleTypeMetadata2, v24, v25, v26, TupleTypeMetadata3, v18, v19);
  sub_1AC380384(v28, v17, v21, v22, TupleTypeMetadata2, v24, v25, v26, TupleTypeMetadata3, v18, v19);
  sub_1AC35745C(v17, v20, v15);
  sub_1AC3802E4(v17, v21, v22, TupleTypeMetadata2, v24, v25, v26, TupleTypeMetadata3, v18, v19);
  return sub_1AC3802E4(v28, v21, v22, TupleTypeMetadata2, v24, v25, v26, TupleTypeMetadata3, v18, v19);
}

uint64_t *sub_1AC37FA5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  __src = a1;
  v37 = a2;
  v20 = a3;
  __n[1] = 0;
  __n[3] = MEMORY[0x1E6981F48];
  v17 = &protocol conformance descriptor for SplitContainer<A>;
  v22 = sub_1AC381BA8;
  v26 = MEMORY[0x1E69817F8];
  v59 = 0;
  __n[0] = 48;
  memset(&v58[5], 0, 0x30uLL);
  v44 = v58;
  memset(v58, 0, 32);
  v19 = &v54;
  v54 = 0;
  v55 = 0;
  v63 = v37;
  memcpy(__dst, __src, sizeof(__dst));
  __n[4] = __dst[0];
  __n[5] = __dst[1];
  __n[6] = __dst[2];
  v13 = __dst[3];
  v14 = __dst[4];
  v15 = __dst[5];
  __n[2] = 255;
  v38 = sub_1AC3B7734();
  v29 = MEMORY[0x1E6981840];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = sub_1AC3B7E24();
  WitnessTable = swift_getWitnessTable();
  v27 = 0;
  v42 = sub_1AC3B7D54();
  v12 = *(*(v42 - 8) + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v35 = __n - v11;
  v16 = v11;
  MEMORY[0x1EEE9AC00](__n - v11);
  v43 = __n - v16;
  v59 = __n - v16;
  v58[5] = v4;
  v58[6] = v5;
  v58[7] = v6;
  v58[8] = v13;
  v58[9] = v14;
  v58[10] = v15;
  v61 = *v7;
  v62 = v7[1];
  sub_1AC37D224(&v61, v57);
  v18 = v56;
  v56[0] = v61;
  v56[1] = v62;
  v28 = type metadata accessor for SplitContainer();
  v30 = swift_getWitnessTable();
  sub_1AC35745C(v18, v28, v44);
  sub_1AC366A10();
  v21 = 1;
  v52 = sub_1AC3B7D64();
  v53 = v8 & 1;
  v31 = MEMORY[0x1E6981838];
  sub_1AC35745C(&v52, v29, v19);
  sub_1AC37F434(__src, v51);
  v23 = v45;
  v45[2] = v37;
  v45[3] = v20;
  v45[4] = __src;
  sub_1AC3647AC();
  sub_1AC3B7D44();
  sub_1AC37F4D8();
  v32 = swift_getWitnessTable();
  sub_1AC35745C(v35, v42, v43);
  v41 = sub_1AC3B7724();
  sub_1AC381BC4(v35, v37, v38, TupleTypeMetadata2, v40, v41);
  v36 = v49;
  sub_1AC37D224(v44, v49);
  v34 = v50;
  v50[0] = v36;
  v47 = v54;
  v48 = v55;
  v50[1] = &v47;
  sub_1AC381C20(v43, v35, v37, v38, TupleTypeMetadata2, v40, v41);
  v50[2] = v35;
  v46[0] = v28;
  v46[1] = v29;
  v46[2] = v42;
  v45[5] = v30;
  v45[6] = v31;
  v45[7] = v32;
  sub_1AC394250(v34, 3uLL, v46, v33);
  sub_1AC381BC4(v35, v37, v38, TupleTypeMetadata2, v40, v41);
  sub_1AC366A10();
  sub_1AC381BC4(v43, v37, v38, TupleTypeMetadata2, v40, v41);
  result = v44;
  sub_1AC366A10();
  return result;
}

uint64_t sub_1AC37FF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v12 = a1;
  v30 = a2;
  v20 = a3;
  v21 = MEMORY[0x1E697E858];
  v46 = 0;
  v45 = 0;
  v24 = &v41;
  v41 = 0;
  v42 = 0;
  v47 = a2;
  v16 = *(a2 - 8);
  v17 = a2 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v10 - v11;
  v23 = 0;
  v31 = sub_1AC3B7734();
  v13 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v12);
  v29 = &v10 - v13;
  v14 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v32 = &v10 - v14;
  v46 = &v10 - v14;
  v45 = v6;
  v15 = *(v6 + 32);
  v19 = *(v6 + 40);

  v15(v7);
  sub_1AC3B7E14();
  v22 = 0;
  sub_1AC3B7BB4();
  (*(v16 + 8))(v18, v30);

  v43 = v20;
  v44 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1AC35745C(v29, v31, v32);
  sub_1AC381CFC(v29, v30);
  v39 = sub_1AC3B7D64();
  v40 = v8 & 1;
  v25 = MEMORY[0x1E6981840];
  v27 = MEMORY[0x1E6981838];
  sub_1AC35745C(&v39, MEMORY[0x1E6981840], v24);
  sub_1AC381D50(v32, v29, v30, v31);
  v38[0] = v29;
  v36 = v41;
  v37 = v42;
  v38[1] = &v36;
  v35[0] = v31;
  v35[1] = v25;
  v33 = WitnessTable;
  v34 = v27;
  sub_1AC394250(v38, 2uLL, v35, v28);
  sub_1AC381CFC(v29, v30);
  result = v32;
  sub_1AC381CFC(v32, v30);
  return result;
}

uint64_t sub_1AC3802E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a1 + *(a10 + 44);

  (*(*(a2 - 8) + 8))(v13 + *(a8 + 64) + *(a6 + 44));
  return a1;
}

uint64_t sub_1AC380384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v16 = *(a11 + 44);
  v21 = a1 + v16;
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);

  v22 = a2 + v16;
  *v22 = v17;
  *(v22 + 8) = v18;
  v19 = *(v21 + 16);
  v20 = *(v21 + 24);

  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  *(v22 + 32) = *(v21 + 32);
  *(v22 + 40) = *(v21 + 40);
  v11 = v21 + *(a9 + 64);
  v12 = a2 + v16 + *(a9 + 64);
  *v12 = *v11;
  *(v12 + 16) = *(v11 + 16);
  v29 = v12 + *(a7 + 44);
  v28 = v11 + *(a7 + 44);
  (*(*(a3 - 8) + 16))();
  memcpy((v29 + *(a4 + 36)), (v28 + *(a4 + 36)), 0x30uLL);
  result = a2;
  v14 = *(a5 + 48);
  v15 = v29 + v14;
  *v15 = *(v28 + v14);
  *(v15 + 8) = *(v28 + v14 + 8);
  return result;
}

uint64_t *SplitTopFullBottom<>.init(leading:trailing:bottom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10, unsigned __int8 a11, uint64_t a12)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  memset(__b, 0, sizeof(__b));
  v30 = v14;
  v31 = a3;
  v32 = a4;
  v27 = v17;
  v28 = a7;
  v29 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  SplitContainer<>.init(leading:trailing:)(v14, *(&v14 + 1), a3 & 1, a4, v17, *(&v17 + 1), a7 & 1, a8, v22);
  v21[0] = v22[0];
  v21[1] = v22[1];
  v21[2] = v22[2];
  v21[3] = v22[3];
  v12 = swift_allocObject();
  *(v12 + 16) = a10;
  *(v12 + 32) = a11;
  *(v12 + 40) = a12;
  sub_1AC37F31C(v21, sub_1AC380A70, v12, MEMORY[0x1E6981148], v23);
  __b[0] = v23[0];
  __b[1] = v23[1];
  __b[2] = v23[2];
  __b[3] = v23[3];
  __b[4] = v23[4];
  __b[5] = v23[5];
  sub_1AC37F434(__b, a9);
  result = __b;
  sub_1AC37F4D8();
  return result;
}

uint64_t sub_1AC380740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = 0u;
  v59 = 0u;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v63 = a4;

  v55 = 0;
  v56 = 0;
  v57 = 256;
  v51 = sub_1AC3B7A54();
  v52 = v5;
  v53 = v6;
  v54 = v7;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  sub_1AC3B79E4();
  v47 = v51;
  v48 = v15;
  v49 = v16 & 1;
  v50 = v17;
  v43 = sub_1AC3B7A44();
  v44 = v8;
  v45 = v9;
  v46 = v10;
  v18 = v8;
  v19 = v9;
  v20 = v10;

  sub_1AC364A88(v51, v15, v16 & 1);

  sub_1AC3B7C54();
  v39 = v43;
  v40 = v18;
  v41 = v19 & 1;
  v42 = v20;
  v35 = sub_1AC3B7A24();
  v36 = v11;
  v37 = v12;
  v38 = v13;
  v21 = v11;
  v22 = v12;
  v23 = v13;

  sub_1AC364A88(v43, v18, v19 & 1);

  v32[0] = v35;
  v32[1] = v21;
  v33 = v22 & 1;
  v34 = v23;
  v28 = MEMORY[0x1E6981148];
  sub_1AC35745C(v32, MEMORY[0x1E6981148], &v58);
  sub_1AC367A04(v32);
  v24 = v58;
  v25 = v59;
  v26 = *(&v59 + 1);
  sub_1AC367800(v58, *(&v58 + 1), v59 & 1);

  v29 = v24;
  v30 = v25 & 1;
  v31 = v26;
  sub_1AC35745C(&v29, v28, a5);
  sub_1AC367A04(&v29);
  return sub_1AC367A04(&v58);
}

uint64_t Toggle<>.init(name:binding:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a9;
  v22 = a1;
  v31 = a2;
  v23 = a3;
  v32 = a4;
  v27 = a5;
  v24 = a6;
  v25 = a7;
  v30 = a8;
  v26 = sub_1AC380F6C;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554BB8);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v20 = *(v33 + 64);
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v31);
  v28 = &v19 - v19;
  v21 = v19;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v35 = &v19 - v21;
  v48 = &v19 - v21;
  *&v46 = v11;
  *(&v46 + 1) = v10;
  LOBYTE(v47) = v12;
  *(&v47 + 1) = v13;
  v43 = v14;
  v44 = v15;
  v45 = v16;
  v42 = v17;

  MEMORY[0x1E69E5928](v30);
  v37 = v22;
  v38 = v31;
  v39 = v23;
  v40 = v32;
  v41 = v30;
  sub_1AC3B7D74();

  MEMORY[0x1E69E5920](v30);
  (*(v33 + 32))(v35, v28, v36);
  (*(v33 + 16))(v29, v35, v36);
  MEMORY[0x1E69E5920](v30);

  return (*(v33 + 8))(v35, v36);
}

uint64_t sub_1AC380D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = 0u;
  v30 = 0u;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v31 = a5;

  MEMORY[0x1E69E5928](a5);
  v26 = 0;
  v27 = 0;
  v28 = 256;
  v22 = sub_1AC3B7A54();
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v19[0] = v22;
  v19[1] = v6;
  v20 = v7 & 1;
  v21 = v8;
  v15 = MEMORY[0x1E6981148];
  sub_1AC35745C(v19, MEMORY[0x1E6981148], &v29);
  sub_1AC367A04(v19);
  v11 = v29;
  v12 = v30;
  v13 = *(&v30 + 1);
  sub_1AC367800(v29, *(&v29 + 1), v30 & 1);

  v16 = v11;
  v17 = v12 & 1;
  v18 = v13;
  sub_1AC35745C(&v16, v15, a6);
  sub_1AC367A04(&v16);
  return sub_1AC367A04(&v29);
}

uint64_t Button<>.init(key:bundle:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a8;
  v24 = a1;
  v33 = a2;
  v25 = a3;
  v34 = a4;
  v32 = a5;
  v23 = a6;
  v31 = a7;
  v28 = sub_1AC381318;
  v27 = sub_1AC380F6C;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB554BC0);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v21 = *(v35 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v31);
  v29 = &v19 - v20;
  v22 = v20;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v19 - v22;
  v49 = &v19 - v22;
  *&v47 = v10;
  *(&v47 + 1) = v11;
  LOBYTE(v48) = v12;
  *(&v48 + 1) = v13;
  v46 = v14;
  v44 = v15;
  v45 = v9;

  v16 = swift_allocObject();
  v17 = v31;
  v26 = v16;
  *(v16 + 16) = v23;
  *(v16 + 24) = v17;

  MEMORY[0x1E69E5928](v32);
  v39 = v24;
  v40 = v33;
  v41 = v25;
  v42 = v34;
  v43 = v32;
  sub_1AC3B7D24();

  MEMORY[0x1E69E5920](v32);
  (*(v35 + 32))(v37, v29, v38);
  (*(v35 + 16))(v30, v37, v38);

  MEMORY[0x1E69E5920](v32);

  return (*(v35 + 8))(v37, v38);
}

uint64_t sub_1AC3812B8(void (*a1)(void))
{

  a1();
}

uint64_t sub_1AC381440()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AC381490(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1AC3815D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1AC3817CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AC381814()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AC38188C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1AC3819A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1AC381C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v14 = a2 + *(a7 + 44);
  v13 = a1 + *(a7 + 44);
  (*(*(a3 - 8) + 16))();
  memcpy((v14 + *(a4 + 36)), (v13 + *(a4 + 36)), 0x30uLL);
  result = a2;
  v8 = v13 + *(a5 + 48);
  v9 = v14 + *(a5 + 48);
  *v9 = *v8;
  *(v9 + 8) = *(v8 + 8);
  return result;
}

uint64_t sub_1AC381D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x30uLL);
  return a2;
}

BOOL sub_1AC381E28()
{
  sub_1AC3B8574();
  *v0 = "ChargingReminders";
  *(v0 + 8) = 17;
  *(v0 + 16) = 2;
  sub_1AC36EE1C();
  v2 = sub_1AC3B8544();

  return v2 != 0;
}

unint64_t sub_1AC381F80()
{
  v2 = qword_1EB554D60;
  if (!qword_1EB554D60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554D60);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1AC3820CC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1AC381E28();
  *a1 = result;
  return result;
}

uint64_t sub_1AC38210C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC381F00();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1AC38216C()
{
  v1 = sub_1AC3B7524();
  __swift_allocate_value_buffer(v1, qword_1EB554D48);
  __swift_project_value_buffer(v1, qword_1EB554D48);
  sub_1AC3B7F54();
  sub_1AC3B7F54();
  return sub_1AC3B7514();
}

uint64_t sub_1AC382210()
{
  if (qword_1EB554330 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B7524();
  return __swift_project_value_buffer(v0, qword_1EB554D48);
}

uint64_t static Logger.battery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC382210();
  v1 = sub_1AC3B7524();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Bool __swiftcall HPCUIBatteryStatusView.engravingIsSupported(_:)(Swift::UInt32 a1)
{
  sub_1AC3823DC();
  v6 = sub_1AC382440(a1);
  if (v6)
  {
    v3 = [v6 supportsDigitalEngraving];
    MEMORY[0x1E69E5920](v6);
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (v4 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

unint64_t sub_1AC3823DC()
{
  v2 = qword_1EB554D68;
  if (!qword_1EB554D68)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554D68);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t HPCUIBatteryStatusView.getEngravedCaseImage(_:productID:)(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 516) = a3;
  *(v4 + 304) = a2;
  *(v4 + 296) = a1;
  *(v4 + 224) = v4;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 512) = 0;
  *(v4 + 232) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 288) = 0;
  v5 = sub_1AC3B7304();
  *(v4 + 312) = v5;
  *(v4 + 320) = *(v5 - 8);
  *(v4 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554D70);
  *(v4 + 336) = swift_task_alloc();
  v6 = sub_1AC3B7334();
  *(v4 + 344) = v6;
  *(v4 + 352) = *(v6 - 8);
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  v7 = sub_1AC3B7524();
  *(v4 + 376) = v7;
  *(v4 + 384) = *(v7 - 8);
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  v8 = sub_1AC3B7374();
  *(v4 + 408) = v8;
  *(v4 + 416) = *(v8 - 8);
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  *(v4 + 512) = a3;
  *(v4 + 232) = v3;
  sub_1AC3B8134();
  *(v4 + 440) = sub_1AC3B8124();
  v14 = sub_1AC3B8114();
  *(v4 + 448) = v14;
  *(v4 + 456) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1AC38285C, v14, v9);
}

uint64_t sub_1AC38285C()
{
  v54 = v0;
  v0[28] = v0;
  v47 = sub_1AC3B7F54();
  v0[58] = v1;
  v0[16] = v47;
  v0[17] = v1;
  sub_1AC3845BC();

  sub_1AC3B7F54();
  v48 = sub_1AC3B8304();
  v0[59] = v48;
  v0[30] = v48;
  sub_1AC3B7364();
  v27 = *(v46 + 400);
  v29 = *(v46 + 376);
  v32 = *(v46 + 516);
  v28 = *(v46 + 384);
  *(v46 + 160) = sub_1AC3B7F24();
  *(v46 + 168) = v2;
  *(v46 + 176) = sub_1AC3B7F54();
  *(v46 + 184) = v3;
  *(v46 + 192) = sub_1AC3B7F54();
  *(v46 + 200) = v4;
  sub_1AC385AA4();
  sub_1AC385B1C();
  sub_1AC384620();
  sub_1AC3B8234();
  sub_1AC360750();
  sub_1AC360750();
  sub_1AC360750();
  v30 = *(v46 + 144);
  v31 = *(v46 + 152);
  *(v46 + 480) = v31;
  *(v46 + 208) = v30;
  *(v46 + 216) = v31;
  v5 = sub_1AC382210();
  (*(v28 + 16))(v27, v5, v29);

  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  oslog = sub_1AC3B7504();
  v45 = sub_1AC3B8264();
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1AC385B94;
  *(v34 + 24) = v33;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1AC377AC8;
  *(v39 + 24) = v34;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 4;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1AC385BA0;
  *(v36 + 24) = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1AC386784;
  *(v42 + 24) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
  sub_1AC3B8574();
  v43 = v6;

  *v43 = sub_1AC377AC0;
  v43[1] = v37;

  v43[2] = sub_1AC377AC0;
  v43[3] = v38;

  v43[4] = sub_1AC377AD4;
  v43[5] = v39;

  v43[6] = sub_1AC377AC0;
  v43[7] = v40;

  v43[8] = sub_1AC377AC0;
  v43[9] = v41;

  v43[10] = sub_1AC386790;
  v43[11] = v42;
  sub_1AC36EE1C();

  if (os_log_type_enabled(oslog, v45))
  {
    buf = sub_1AC3B8334();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
    v25 = sub_1AC374C60(0);
    v26 = sub_1AC374C60(1);
    v49 = buf;
    v50 = v25;
    v51 = v26;
    sub_1AC374CB4(2, &v49);
    sub_1AC374CB4(2, &v49);
    v52 = sub_1AC377AC0;
    v53 = v37;
    sub_1AC374CC8(&v52, &v49, &v50, &v51);
    v52 = sub_1AC377AC0;
    v53 = v38;
    sub_1AC374CC8(&v52, &v49, &v50, &v51);
    v52 = sub_1AC377AD4;
    v53 = v39;
    sub_1AC374CC8(&v52, &v49, &v50, &v51);
    v52 = sub_1AC377AC0;
    v53 = v40;
    sub_1AC374CC8(&v52, &v49, &v50, &v51);
    v52 = sub_1AC377AC0;
    v53 = v41;
    sub_1AC374CC8(&v52, &v49, &v50, &v51);
    v52 = sub_1AC386790;
    v53 = v42;
    sub_1AC374CC8(&v52, &v49, &v50, &v51);
    _os_log_impl(&dword_1AC345000, oslog, v45, "Headphone Engraving: BluetoothAddress: %s %u", buf, 0x12u);
    sub_1AC374D14(v25);
    sub_1AC374D14(v26);
    sub_1AC3B8314();
  }

  else
  {
  }

  v13 = *(v46 + 432);
  v15 = *(v46 + 424);
  v14 = *(v46 + 408);
  v10 = *(v46 + 400);
  v11 = *(v46 + 376);
  v21 = *(v46 + 368);
  v23 = *(v46 + 360);
  v22 = *(v46 + 344);
  v19 = *(v46 + 336);
  v12 = *(v46 + 416);
  v9 = *(v46 + 384);
  v20 = *(v46 + 352);
  MEMORY[0x1E69E5920](oslog);
  (*(v9 + 8))(v10, v11);
  (*(v12 + 16))(v15, v13, v14);
  sub_1AC384670();
  sub_1AC3B7314();

  sub_1AC3B7394();
  v16 = *MEMORY[0x1E69C5DF0];
  v18 = sub_1AC3B73A4();
  v17 = *(v18 - 8);
  (*(v17 + 104))(v19, v16);
  (*(v17 + 56))(v19, 0, 1, v18);
  MEMORY[0x1AC5B1680](v19);
  (*(v20 + 16))(v23, v21, v22);
  sub_1AC3B72E4();
  v7 = swift_task_alloc();
  *(v46 + 488) = v7;
  *v7 = *(v46 + 224);
  v7[1] = sub_1AC383B24;

  return MEMORY[0x1EEE2F0E8]();
}

uint64_t sub_1AC383B24(uint64_t a1)
{
  v7 = *v2;
  v7[28] = *v2;
  v7[62] = a1;
  v7[63] = v1;

  if (v1)
  {
    v3 = v7[57];
    v4 = v7[56];
    v5 = sub_1AC383F7C;
  }

  else
  {
    v3 = v7[57];
    v4 = v7[56];
    v5 = sub_1AC383CA4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1AC383CA4()
{
  v3 = *(v0 + 496);
  v13 = *(v0 + 472);
  v11 = *(v0 + 432);
  v10 = *(v0 + 416);
  v12 = *(v0 + 408);
  v8 = *(v0 + 368);
  v7 = *(v0 + 352);
  v9 = *(v0 + 344);
  v5 = *(v0 + 328);
  v4 = *(v0 + 320);
  v6 = *(v0 + 312);
  *(v0 + 224) = v0;
  *(v0 + 288) = v3;

  *(v0 + 96) = sub_1AC38687C;
  *(v0 + 104) = v3;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 76) = 0;
  *(v0 + 80) = sub_1AC384794;
  *(v0 + 88) = &block_descriptor_34;
  v14 = _Block_copy((v0 + 64));

  (*(v4 + 8))(v5, v6);
  (*(v7 + 8))(v8, v9);

  (*(v10 + 8))(v11, v12);
  MEMORY[0x1E69E5920](v13);

  v1 = *(*(v0 + 224) + 8);

  return v1(v14);
}

uint64_t sub_1AC383F7C()
{
  v24 = v0[59];
  v22 = v0[54];
  v21 = v0[52];
  v23 = v0[51];
  v19 = v0[46];
  v18 = v0[44];
  v20 = v0[43];
  v1 = v0[41];
  v2 = v0[40];
  v3 = v0[39];
  v0[28] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v18 + 8))(v19, v20);

  (*(v21 + 8))(v22, v23);
  MEMORY[0x1E69E5920](v24);

  v25 = v0[63];
  v4 = v0[49];
  v26 = v0[48];
  v27 = v0[47];
  v5 = v25;
  v0[31] = v25;
  v6 = sub_1AC382210();
  (*(v26 + 16))(v4, v6, v27);
  v29 = sub_1AC3B7504();
  v28 = sub_1AC3B8264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
  v30 = sub_1AC3B8574();
  if (os_log_type_enabled(v29, v28))
  {
    buf = sub_1AC3B8334();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
    v14 = sub_1AC374C60(0);
    v15 = sub_1AC374C60(0);
    *(v17 + 256) = buf;
    *(v17 + 264) = v14;
    *(v17 + 272) = v15;
    sub_1AC374CB4(0, (v17 + 256));
    sub_1AC374CB4(0, (v17 + 256));
    *(v17 + 280) = v30;
    v16 = swift_task_alloc();
    v16[2] = v17 + 256;
    v16[3] = v17 + 264;
    v16[4] = v17 + 272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554D80);
    sub_1AC385A1C();
    sub_1AC3B8014();

    _os_log_impl(&dword_1AC345000, v29, v28, "Headphone Engraving: Could not fetch assets:", buf, 2u);
    sub_1AC374D14(v14);
    sub_1AC374D14(v15);
    sub_1AC3B8314();
  }

  v10 = *(v17 + 392);
  v11 = *(v17 + 376);
  v9 = *(v17 + 384);
  MEMORY[0x1E69E5920](v29);
  (*(v9 + 8))(v10, v11);
  *(v17 + 48) = sub_1AC384800;
  *(v17 + 56) = 0;
  *(v17 + 16) = MEMORY[0x1E69E9820];
  *(v17 + 24) = 1107296256;
  *(v17 + 28) = 0;
  *(v17 + 32) = sub_1AC384794;
  *(v17 + 40) = &block_descriptor_0;
  v12 = _Block_copy((v17 + 16));

  v7 = *(*(v17 + 224) + 8);

  return v7(v12);
}

unint64_t sub_1AC3845BC()
{
  v2 = qword_1EB554D78;
  if (!qword_1EB554D78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554D78);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC384688(uint64_t a1)
{
  v10 = 0;
  v7 = sub_1AC3B7344();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v8 = &v3 - v4;
  v10 = a1;
  (*(v5 + 104))();
  v9 = sub_1AC3B7354();
  (*(v5 + 8))(v8, v7);
  return v9;
}

id sub_1AC384794(uint64_t a1)
{
  v3 = *(a1 + 32);

  v4 = v3(v1);

  return v4;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC38492C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  *(v4 + 32) = a3;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  *(v4 + 16) = v4;
  sub_1AC3B8134();
  *(v4 + 48) = sub_1AC3B8124();
  v7 = sub_1AC3B8114();

  return MEMORY[0x1EEE6DFA0](sub_1AC3849DC, v7, v5);
}

uint64_t sub_1AC3849DC()
{
  v7 = v0[5];
  aBlock = v0[4];
  v1 = v0[3];
  v0[2] = v0;
  MEMORY[0x1E69E5928](v1);
  v0[7] = _Block_copy(aBlock);
  MEMORY[0x1E69E5928](v7);
  v10 = sub_1AC3B7EF4();
  v9 = v2;
  v0[8] = v2;
  v3 = swift_task_alloc();
  *(v8 + 72) = v3;
  *v3 = *(v8 + 16);
  v3[1] = sub_1AC384AEC;
  v4 = *(v8 + 80);

  return HPCUIBatteryStatusView.getEngravedCaseImage(_:productID:)(v10, v9, v4);
}

uint64_t sub_1AC384AEC(const void *a1)
{
  v8 = *v1;
  aBlock = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  *(v8 + 16) = *v1;

  aBlock[2](aBlock, a1);
  _Block_release(aBlock);
  _Block_release(a1);

  v2 = *(*(v8 + 16) + 8);

  return v2();
}

uint64_t sub_1AC384CD4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v24 = &unk_1AC3BB590;
  v27 = &unk_1AC3BB5A0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DC8);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v17 - v17;
  v25 = 0;
  v3 = sub_1AC3B8154();
  (*(*(v3 - 8) + 56))(v26, 1);
  v20 = 48;
  v21 = 7;
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v4;
  v7 = v19;
  v28 = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v7;
  v6[5] = v5;
  v22 = v6[2];
  v23 = v6[3];
  swift_unknownObjectRetain();
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v8;
  v15 = v28;
  v14[2] = v22;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v15;
  sub_1AC385EE8(v11, v11, v12, v13, v14);
}

NSNumber_optional __swiftcall HPCUIBatteryStatusView.combinedBatteryValue(_:)(HPCUIDevice a1)
{
  isa = a1.super.isa;
  v100 = 0;
  v99 = 0;
  v73 = 0;
  v88 = 0;
  v87 = 0;
  v84 = 0;
  v75 = sub_1AC3B7524();
  v76 = *(v75 - 8);
  v77 = v76;
  v78 = *(v76 + 64);
  v2 = MEMORY[0x1EEE9AC00](isa);
  v80 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v79 = &v17 - v80;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v81 = &v17 - v80;
  v100 = v3;
  v99 = v1;
  v97 = &unk_1F2109450;
  v98 = sub_1AC3869E0();
  v82 = &v96;
  v83 = sub_1AC3B7414();
  __swift_destroy_boxed_opaque_existential_1(v82);
  if (v83)
  {
    v72 = [(objc_class *)isa headphoneDevice];
    if (v72)
    {
      v71 = v72;
      v65 = v72;
      v88 = v72;
      v66 = sub_1AC3B7424();
      v4 = sub_1AC3B7484();
      v67 = v4;

      v87 = v4;
      v68 = sub_1AC3B7474();
      v69 = [v68 type];

      v86 = v69;
      v85 = 0;
      v70 = type metadata accessor for AABatteryType();
      sub_1AC386A5C();
      v5 = sub_1AC3B7EB4();
      if ((v5 & 1) == 0)
      {
        v60 = sub_1AC3B7474();
        [v60 level];
        v61 = v6;
        v84 = v6;

        sub_1AC386ADC();
        v62 = sub_1AC3858C4();

        v63 = v62;
        v64 = v73;
        goto LABEL_20;
      }
    }

    v7 = v81;
    v8 = sub_1AC382210();
    (*(v77 + 16))(v7, v8, v75);
    v58 = sub_1AC3B7504();
    v55 = v58;
    v57 = sub_1AC3B8244();
    v56 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
    v59 = sub_1AC3B8574();
    if (os_log_type_enabled(v58, v57))
    {
      v9 = v73;
      v46 = sub_1AC3B8334();
      v42 = v46;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
      v44 = 0;
      v47 = sub_1AC374C60(0);
      v45 = v47;
      v48 = sub_1AC374C60(v44);
      v92[0] = v46;
      v91 = v47;
      v90 = v48;
      v49 = 0;
      v50 = v92;
      sub_1AC374CB4(0, v92);
      sub_1AC374CB4(v49, v50);
      v89 = v59;
      v51 = &v17;
      MEMORY[0x1EEE9AC00](&v17);
      v52 = &v17 - 6;
      *(&v17 - 4) = v10;
      *(&v17 - 3) = &v91;
      *(&v17 - 2) = &v90;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554D80);
      sub_1AC385A1C();
      sub_1AC3B8014();
      v54 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC345000, v55, v56, "Headphone Battery: no combined value", v42, 2u);
        v40 = 0;
        sub_1AC374D14(v45);
        sub_1AC374D14(v48);
        sub_1AC3B8314();

        v41 = v54;
      }
    }

    else
    {

      v41 = v73;
    }

    v39 = v41;

    (*(v77 + 8))(v81, v75);
    v63 = 0;
    v64 = v39;
  }

  else
  {
    v11 = v79;
    v12 = sub_1AC382210();
    (*(v77 + 16))(v11, v12, v75);
    v37 = sub_1AC3B7504();
    v34 = v37;
    v36 = sub_1AC3B8254();
    v35 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
    v38 = sub_1AC3B8574();
    if (os_log_type_enabled(v37, v36))
    {
      v13 = v73;
      v25 = sub_1AC3B8334();
      v21 = v25;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
      v23 = 0;
      v26 = sub_1AC374C60(0);
      v24 = v26;
      v27 = sub_1AC374C60(v23);
      v95 = v25;
      v94 = v26;
      v93 = v27;
      v28 = 0;
      v29 = &v95;
      sub_1AC374CB4(0, &v95);
      sub_1AC374CB4(v28, v29);
      v92[2] = v38;
      v30 = &v17;
      MEMORY[0x1EEE9AC00](&v17);
      v31 = &v17 - 6;
      *(&v17 - 4) = v14;
      *(&v17 - 3) = &v94;
      *(&v17 - 2) = &v93;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554D80);
      sub_1AC385A1C();
      sub_1AC3B8014();
      v33 = v13;
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC345000, v34, v35, "Headphone Battery: Feature not enabled", v21, 2u);
        v19 = 0;
        sub_1AC374D14(v24);
        sub_1AC374D14(v27);
        sub_1AC3B8314();

        v20 = v33;
      }
    }

    else
    {

      v20 = v73;
    }

    v18 = v20;

    (*(v77 + 8))(v79, v75);
    v63 = 0;
    v64 = v18;
  }

LABEL_20:
  v15 = v63;
  v16 = v64;
  result.value.super.super.isa = v15;
  result.is_nil = v16;
  return result;
}

unint64_t sub_1AC385A1C()
{
  v2 = qword_1EB554D88;
  if (!qword_1EB554D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554D80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554D88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC385AA4()
{
  v2 = qword_1EB554D90;
  if (!qword_1EB554D90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC385B1C()
{
  v2 = qword_1EB554D98;
  if (!qword_1EB554D98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554D98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC385B94()
{
  result = *(v0 + 16);
  sub_1AC38463C();
  return result;
}

uint64_t sub_1AC385BA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v7 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1AC385CB4;

  return v7();
}

uint64_t sub_1AC385CB4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1AC385DDC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v8 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1AC385CB4;

  return v8();
}

uint64_t sub_1AC385EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v47 = a4;
  v48 = a5;
  v49 = &unk_1AC3BB5B8;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &unk_1AC3BB5B0;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v54);
  v56 = v16 - v55;
  sub_1AC387104(v5, v16 - v55);
  v57 = sub_1AC3B8154();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_1AC38722C(v56);
    v44 = 0;
  }

  else
  {
    v43 = sub_1AC3B8144();
    (*(v58 + 8))(v56, v57);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v48 + 16);
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();
  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_1AC3B8114();
    v35 = v6;
    swift_unknownObjectRelease();
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

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v22 = v46;
    v23 = sub_1AC3B7F34();

    v24 = v23 + 32;

    v7 = swift_allocObject();
    v8 = v48;
    v9 = v31;
    v10 = v30;
    v25 = v7;
    *(v7 + 16) = v47;
    *(v7 + 24) = v8;
    v26 = 0;
    if (v9 != 0 || v10 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v31;
      v63[3] = v30;
      v26 = v63;
    }

    v60 = 7;
    v61 = v26;
    v62 = v24;
    v21 = swift_task_create();

    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  v20 = v27;
  if (v27)
  {
    v16[1] = v20;
    v16[0] = v20;
    sub_1AC38722C(v54);

    return v16[0];
  }

  else
  {

    sub_1AC38722C(v54);
    v11 = swift_allocObject();
    v12 = v48;
    v13 = v31;
    v14 = v30;
    v18 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v19 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v31;
      v64[3] = v30;
      v19 = v64;
    }

    return swift_task_create();
  }
}

uint64_t sub_1AC386508(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC38661C;

  return v6(a1);
}

uint64_t sub_1AC38661C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1AC386748@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1AC386790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1AC386804();
  v5 = MEMORY[0x1E69E7668];

  return sub_1AC377E18(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1AC386804()
{
  v2 = qword_1EB554DA0;
  if (!qword_1EB554DA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC3868E8()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1AC385CB4;

  return sub_1AC38492C(v8, v5, v6, v7);
}

unint64_t sub_1AC3869E0()
{
  v2 = qword_1EB554DA8;
  if (!qword_1EB554DA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC386A5C()
{
  v2 = qword_1EB554DB0;
  if (!qword_1EB554DB0)
  {
    type metadata accessor for AABatteryType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC386ADC()
{
  v2 = qword_1EB554DB8;
  if (!qword_1EB554DB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554DB8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC386B44(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1AC386C94(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1AC386E90()
{
  v2 = qword_1EB554DC0;
  if (!qword_1EB554DC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC386F0C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1AC385CB4;

  return sub_1AC385BA8(v7, v5, v6);
}

uint64_t sub_1AC387004(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC385CB4;

  return sub_1AC385DDC(a1, v6, v7, v8);
}

void *sub_1AC387104(const void *a1, void *a2)
{
  v6 = sub_1AC3B8154();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DC8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC38722C(uint64_t a1)
{
  v3 = sub_1AC3B8154();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC3872D4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC385CB4;

  return sub_1AC386508(a1, v6);
}

uint64_t sub_1AC3873BC(uint64_t a1, uint64_t a2)
{
  v7[1] = a1;
  v18 = 0;
  v17 = 0;
  v19 = a2;
  v11 = 0;
  v7[0] = (*(*(sub_1AC3B72A4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = v7 - v7[0];
  v3 = sub_1AC3B7ED4();
  v9 = *(v3 - 8);
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v10 = v7 - v8;
  v18 = v5;
  v17 = v2;
  (*(v9 + 16))(v4);
  sub_1AC377B44();
  type metadata accessor for HeadphoneSpecifier();
  v12 = sub_1AC36A3A8();
  sub_1AC387540();
  v14 = 0;
  v15 = 0;
  v16 = 256;
  return sub_1AC3B7F04();
}

uint64_t sub_1AC387558(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v13 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v30 = a5;
  v19 = 0;
  v12 = (*(*(sub_1AC3B72A4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = &v11 - v12;
  v6 = sub_1AC3B7ED4();
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v18 = &v11 - v7;
  v29 = v8;
  v26 = v15;
  v27 = v16;
  v28 = v9;
  v25 = v5;
  (*(v14 + 16))();
  sub_1AC377B44();
  type metadata accessor for HeadphoneSpecifier();
  v20 = sub_1AC36A3A8();
  sub_1AC387540();
  v22 = v15;
  v23 = v16;
  v24 = v17;
  return sub_1AC3B7F04();
}

uint64_t sub_1AC387714()
{
  v2 = *v0;

  return v2;
}

HeadphoneCommonUIKit::BulletPointRow __swiftcall BulletPointRow.init(bulletSymbol:text:)(Swift::String bulletSymbol, Swift::String text)
{
  v9 = v2;
  countAndFlagsBits = bulletSymbol._countAndFlagsBits;
  object = bulletSymbol._object;
  v8 = text._countAndFlagsBits;
  v10 = text._object;
  v12 = 0u;
  v13 = 0u;

  *&v12 = countAndFlagsBits;
  *(&v12 + 1) = object;

  *&v13 = v8;
  *(&v13 + 1) = v10;
  sub_1AC387814(&v12, v9);

  v3 = &v12;
  sub_1AC38787C();
  result.text._object = v6;
  result.text._countAndFlagsBits = v5;
  result.bulletSymbol._object = v4;
  result.bulletSymbol._countAndFlagsBits = v3;
  return result;
}

void *sub_1AC387814(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  a2[1] = v4;
  a2[2] = a1[2];
  v6 = a1[3];

  result = a2;
  a2[3] = v6;
  return result;
}

uint64_t BulletPointRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v13 = 0u;
  v14 = 0u;
  memset(__b, 0, 0x69uLL);
  v4 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  *&v13 = *v1;
  *(&v13 + 1) = v4;
  *&v14 = v3;
  *(&v14 + 1) = v5;
  sub_1AC3B77C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DD0);
  sub_1AC3880C0();
  sub_1AC3B7D44();

  memcpy(__dst, v11, sizeof(__dst));
  memcpy(v10, __dst, 0x69uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DE0);
  sub_1AC388148();
  sub_1AC35745C(v10, v7, __b);
  sub_1AC3881D0(v10);
  memcpy(v16, __b, 0x69uLL);
  sub_1AC38825C(v16, v9);
  memcpy(v8, v16, 0x69uLL);
  sub_1AC35745C(v8, v7, a1);
  sub_1AC3881D0(v8);
  return sub_1AC3881D0(__b);
}

uint64_t *sub_1AC387AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = &v106;
  v61 = a5;
  v26 = a1;
  v27 = a2;
  v41 = a3;
  v42 = a4;
  v106 = 0u;
  v107 = 0u;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554958);
  v24 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v33 = v23 - v24;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v27);
  v28 = v23 - v25;
  *&v106 = v7;
  *(&v106 + 1) = v6;
  *&v107 = v8;
  *(&v107 + 1) = v9;

  v29 = sub_1AC3B7C84();
  sub_1AC3B7864();
  v31 = 0;
  v10 = *(*(sub_1AC3B7874() - 8) + 56);
  v53 = 0;
  v55 = 1;
  v10(v28);
  v30 = sub_1AC3B7CB4();
  sub_1AC388744(v28);

  v35 = v103;
  v103[0] = v30;
  sub_1AC3B7994();
  v32 = v11;
  v12 = sub_1AC3B7974();
  (*(*(v12 - 8) + 56))(v33, v55);
  v34 = sub_1AC3B79B4();
  sub_1AC367A4C(v33);
  sub_1AC3B7B84();

  sub_1AC367428();
  v39 = v102;
  v102[0] = v103[1];
  v102[1] = v103[2];
  v102[2] = v103[3];
  v13 = sub_1AC3883A4();
  v38 = &v101;
  v101 = v13;
  v14 = sub_1AC3883BC();
  v37 = &v100;
  v100 = v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DF8);
  v15 = sub_1AC3887EC();
  MEMORY[0x1AC5B1E90](v104, v38, v37, v36, MEMORY[0x1E69815C0], MEMORY[0x1E69815C0], v15, MEMORY[0x1E6981568]);
  sub_1AC367428();
  sub_1AC367428();
  sub_1AC361CB4();
  v40 = v99;
  v99[0] = v104[0];
  v99[1] = v104[1];
  v99[2] = v104[2];
  v99[3] = v104[3];
  v99[4] = v104[4];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554E08);
  v59 = sub_1AC388890();
  v66 = v105;
  sub_1AC35745C(v40, v57, v105);
  sub_1AC368278();

  v43 = v93;
  v93[0] = v41;
  v93[1] = v42;
  sub_1AC35FEAC();
  v89 = sub_1AC3B7A64();
  v90 = v16;
  v91 = v17;
  v92 = v18;
  v45 = v89;
  v46 = v16;
  v47 = v17;
  v48 = v18;
  v44 = sub_1AC3B7964();
  v85 = v45;
  v86 = v46;
  v87 = v47 & 1 & v55;
  v88 = v48;
  v81 = sub_1AC3B7A44();
  v82 = v19;
  v83 = v20;
  v84 = v21;
  v49 = v81;
  v50 = v19;
  v51 = v20;
  v52 = v21;

  sub_1AC364A88(v45, v46, v47 & 1);

  v54 = v78;
  v78[0] = v49;
  v78[1] = v50;
  v79 = v51 & 1 & v55;
  v80 = v52;
  sub_1AC3B7B74();
  sub_1AC367A04(v54);
  v56 = v73;
  v73[0] = v93[2];
  v73[1] = v93[3];
  v74 = v94 & 1 & v55;
  v75 = v95;
  v76 = v96;
  v77 = v97;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB555020);
  v60 = sub_1AC3889C0();
  v65 = v98;
  sub_1AC35745C(v56, v58, v98);
  sub_1AC388AEC(v56);
  v64 = v71;
  sub_1AC388B40(v66, v71);
  v62 = v72;
  v72[0] = v64;
  v63 = v70;
  sub_1AC388BEC(v65, v70);
  v72[1] = v63;
  v69[0] = v57;
  v69[1] = v58;
  v67 = v59;
  v68 = v60;
  sub_1AC394250(v62, 2uLL, v69, v61);
  sub_1AC388AEC(v63);
  sub_1AC368278();
  sub_1AC388AEC(v65);
  result = v66;
  sub_1AC368278();
  return result;
}

unint64_t sub_1AC3880C0()
{
  v2 = qword_1EB554DD8;
  if (!qword_1EB554DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554DD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC388148()
{
  v2 = qword_1EB554DE8;
  if (!qword_1EB554DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554DE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC3881D0(uint64_t a1)
{

  sub_1AC364A88(*(a1 + 64), *(a1 + 72), *(a1 + 80) & 1);

  return a1;
}

uint64_t sub_1AC38825C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  v4 = *(a1 + 32);

  *(a2 + 32) = v4;
  v5 = *(a1 + 40);

  *(a2 + 40) = v5;
  v6 = *(a1 + 48);

  *(a2 + 48) = v6;
  v7 = *(a1 + 56);

  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  sub_1AC367800(v8, v9, v10 & 1);
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10 & 1;
  v11 = *(a1 + 88);

  *(a2 + 88) = v11;
  v13 = *(a1 + 96);

  result = a2;
  *(a2 + 96) = v13;
  *(a2 + 104) = *(a1 + 104);
  return result;
}

uint64_t sub_1AC388420(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1AC388560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1AC388744(uint64_t a1)
{
  v3 = sub_1AC3B7874();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1AC3887EC()
{
  v2 = qword_1EB554E00;
  if (!qword_1EB554E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554DF8);
    sub_1AC367AF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554E00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC388890()
{
  v2 = qword_1EB554E10;
  if (!qword_1EB554E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554E08);
    sub_1AC3887EC();
    sub_1AC388938();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554E10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC388938()
{
  v2 = qword_1EB554E18;
  if (!qword_1EB554E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554E20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554E18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3889C0()
{
  v2 = qword_1EB554E28;
  if (!qword_1EB554E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB555020);
    sub_1AC388A64();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554E28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC388A64()
{
  v2 = qword_1EB555030;
  if (!qword_1EB555030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554E30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555030);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC388AEC(uint64_t a1)
{
  sub_1AC364A88(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

void *sub_1AC388B40(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v7 = a1[3];

  a2[3] = v7;
  v9 = a1[4];

  result = a2;
  a2[4] = v9;
  return result;
}

uint64_t sub_1AC388BEC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1AC367800(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  v8 = *(a1 + 32);

  result = a2;
  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 40);
  return result;
}

uint64_t sub_1AC388CDC()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_player);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC388D24@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_url;
  v2 = sub_1AC3B7204();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1AC388D98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  MEMORY[0x1E69E5928]();
  *a2 = sub_1AC388E98();
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1AC388E0C(double *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v3 = *a2;
  MEMORY[0x1E69E5928]();
  sub_1AC388F20(v4, v5, v6, v7);
  return MEMORY[0x1E69E5920](v3);
}

double sub_1AC388E98()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_desiredBounds);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1AC388F20(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_desiredBounds);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return swift_endAccess();
}

uint64_t sub_1AC389030@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928]();
  *a2 = sub_1AC389128();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1AC38909C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928]();
  v5 = *a2;
  MEMORY[0x1E69E5928]();
  sub_1AC389198(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1AC389128()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLooper);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928]();
  swift_endAccess();
  return v3;
}

uint64_t sub_1AC389198(uint64_t a1)
{
  MEMORY[0x1E69E5928]();
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLooper);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

id sub_1AC3892A0()
{
  sub_1AC38A8B8();
  v1 = sub_1AC389320(0);
  MEMORY[0x1E69E5928](v1);
  [v1 setOpacity_];
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id sub_1AC389320(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() playerLayerWithPlayer_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1AC38937C()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLayer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1AC3893EC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

id sub_1AC3894F4()
{
  sub_1AC38B310();
  v1 = sub_1AC3692C0();
  MEMORY[0x1E69E5928](v1);
  [v1 setMuted_];
  MEMORY[0x1E69E5920](v1);
  MEMORY[0x1E69E5928](v1);
  [v1 setAllowsExternalPlayback_];
  MEMORY[0x1E69E5920](v1);
  return v1;
}

uint64_t sub_1AC3895A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928]();
  *a2 = sub_1AC3896A0();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1AC389614(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928]();
  v5 = *a2;
  MEMORY[0x1E69E5928]();
  sub_1AC389710(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1AC3896A0()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_videoPlayer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928]();
  swift_endAccess();
  return v3;
}

uint64_t sub_1AC389710(uint64_t a1)
{
  MEMORY[0x1E69E5928]();
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_videoPlayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

char *HPCUIMovieLoopPlayer.init(frame:urlForResource:bounds:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v68 = a2;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v80 = a1;
  v88 = a6;
  v89 = a7;
  v90 = a8;
  v91 = a9;
  v120 = *MEMORY[0x1E69E9840];
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  v105 = 0;
  v73 = 0;
  v87 = sub_1AC3B7204();
  v83 = *(v87 - 8);
  v84 = v87 - 8;
  v72 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v86 = &v38 - v72;
  *&v110 = MEMORY[0x1EEE9AC00](0);
  *(&v110 + 1) = v10;
  *&v111 = v11;
  *(&v111 + 1) = v12;
  v109 = v13;
  *&v107 = v14;
  *(&v107 + 1) = v15;
  *&v108 = v16;
  *(&v108 + 1) = v17;
  v112 = v9;
  v75 = v9;
  v74 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_player;
  sub_1AC38A080();
  v18 = sub_1AC388C9C(v73);
  *(v75 + v74) = v18;
  v77 = v112;
  v76 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLayer;
  *(v77 + v76) = sub_1AC3892A0();
  v79 = v112;
  v78 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_videoPlayer;
  v19 = sub_1AC3894F4();
  v20 = v80;
  v21 = v83;
  v22 = v87;
  v23 = v19;
  v24 = v86;
  *(v79 + v78) = v23;
  v85 = v112;
  v81 = *(v21 + 16);
  v82 = v21 + 16;
  v81(v24, v20, v22);
  (*(v83 + 32))(v85 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_url, v86, v87);
  v25 = v89;
  v26 = v90;
  v27 = v91;
  v28 = (v112 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_desiredBounds);
  *v28 = v88;
  v28[1] = v25;
  v28[2] = v26;
  v28[3] = v27;
  v119 = 0;
  v94 = [objc_opt_self() sharedInstance];
  v93 = *MEMORY[0x1E6958038];
  MEMORY[0x1E69E5928](v93);
  v106 = v119;
  v95 = [v94 setCategory:v93 withOptions:1 error:&v106];
  v92 = v106;
  MEMORY[0x1E69E5928](v106);
  v29 = v119;
  v119 = v92;
  MEMORY[0x1E69E5920](v29);
  MEMORY[0x1E69E5920](v93);
  MEMORY[0x1E69E5920](v94);
  if (v95)
  {
    v67 = 0;
  }

  else
  {
    v39 = v119;
    v40 = sub_1AC3B71D4();
    MEMORY[0x1E69E5920](v39);
    swift_willThrow();

    v67 = 1;
  }

  v105 = v67;
  v113 = v67 & 1;
  v66 = (v67 & 1) == 0;
  v59 = 0x1EB554000uLL;
  v41 = (v112 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLayer);
  v42 = &v118;
  v60 = 32;
  v61 = 0;
  swift_beginAccess();
  v46 = *v41;
  MEMORY[0x1E69E5928](v46);
  swift_endAccess();
  v54 = &unk_1EB555000;
  v43 = (v112 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_videoPlayer);
  v44 = &v117;
  swift_beginAccess();
  v45 = *v43;
  MEMORY[0x1E69E5928](v45);
  swift_endAccess();
  [v46 setPlayer_];
  MEMORY[0x1E69E5920](v45);
  MEMORY[0x1E69E5920](v46);
  v51 = v112;
  v52 = 0;
  v49 = sub_1AC38A0E4();
  v47 = (v112 + v54[260]);
  v48 = &v116;
  swift_beginAccess();
  v50 = *v47;
  MEMORY[0x1E69E5928](v50);
  swift_endAccess();
  sub_1AC38A148();
  v81(v86, v112 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_url, v87);
  v30 = sub_1AC38A1AC(v86);
  v31 = sub_1AC38A1EC(v50, v30);
  *(v51 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLooper) = v31;
  v53 = v112;
  v32 = type metadata accessor for HPCUIMovieLoopPlayer();
  v104.receiver = v53;
  v104.super_class = v32;
  v96 = v68;
  v97 = v69;
  v98 = v70;
  v99 = v71;
  v58 = objc_msgSendSuper2(&v104, sel_initWithFrame_, v68, v69, v70, v71);
  MEMORY[0x1E69E5928](v58);
  v112 = v58;
  v55 = &v58[v54[260]];
  v56 = &v115;
  swift_beginAccess();
  v57 = *v55;
  MEMORY[0x1E69E5928](v57);
  swift_endAccess();
  v33 = *(MEMORY[0x1E6960CC0] + 8);
  v34 = *(MEMORY[0x1E6960CC0] + 12);
  v35 = *(MEMORY[0x1E6960CC0] + 16);
  v100 = *MEMORY[0x1E6960CC0];
  v101 = v33;
  v102 = v34;
  v103 = v35;
  [v57 seekToTime_];
  MEMORY[0x1E69E5920](v57);
  MEMORY[0x1E69E5928](v58);
  v65 = [v58 layer];
  MEMORY[0x1E69E5920](v58);
  v62 = (v112 + *(v59 + 3656));
  v63 = &v114;
  swift_beginAccess();
  v64 = *v62;
  MEMORY[0x1E69E5928](v64);
  swift_endAccess();
  [v65 addSublayer_];
  MEMORY[0x1E69E5920](v64);
  v36 = MEMORY[0x1E69E5920](v65);
  (*((*v112 & *MEMORY[0x1E69E7D40]) + 0xE8))(v36);
  sub_1AC38A7A4();
  (*(v83 + 8))(v80, v87);
  MEMORY[0x1E69E5920](v112);
  return v58;
}

unint64_t sub_1AC38A080()
{
  v2 = qword_1EB554E50;
  if (!qword_1EB554E50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554E50);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC38A0E4()
{
  v2 = qword_1EB554E58;
  if (!qword_1EB554E58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554E58);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC38A148()
{
  v2 = qword_1EB554E60;
  if (!qword_1EB554E60)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554E60);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC38A1EC(uint64_t a1, uint64_t a2)
{
  v5 = [swift_getObjCClassFromMetadata() playerLooperWithPlayer:a1 templateItem:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v5;
}

uint64_t type metadata accessor for HPCUIMovieLoopPlayer()
{
  v1 = qword_1EB554E70;
  if (!qword_1EB554E70)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1AC38A354()
{
  v12 = v0;
  v6 = sub_1AC3896A0();
  v1 = *(MEMORY[0x1E6960CC0] + 8);
  v2 = *(MEMORY[0x1E6960CC0] + 12);
  v3 = *(MEMORY[0x1E6960CC0] + 16);
  v8 = *MEMORY[0x1E6960CC0];
  v9 = v1;
  v10 = v2;
  v11 = v3;
  [v6 seekToTime_];
  MEMORY[0x1E69E5920](v6);
  v7 = sub_1AC3896A0();
  LODWORD(v4) = 1.0;
  [v7 playImmediatelyAtRate_];
  return MEMORY[0x1E69E5920](v7);
}

double sub_1AC38A404()
{
  v18 = v0;
  MEMORY[0x1E69E5928](v0);
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HPCUIMovieLoopPlayer();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  MEMORY[0x1E69E5920](v0);
  v7 = sub_1AC38937C();
  v16 = sub_1AC388E98();
  [v7 setBounds_];
  MEMORY[0x1E69E5920](v7);
  (MEMORY[0x1E69E5928])();
  v8 = [v10 0x1FADAE878];
  (MEMORY[0x1E69E5920])();
  [v8 setMasksToBounds_];
  MEMORY[0x1E69E5920](v8);
  (MEMORY[0x1E69E5928])();
  v9 = [v10 0x1FADAE878];
  (MEMORY[0x1E69E5920])();
  [v9 setCornerRadius_];
  MEMORY[0x1E69E5920](v9);
  v13 = sub_1AC38937C();
  (MEMORY[0x1E69E5928])();
  v11 = [v10 0x1FADAE878];
  (MEMORY[0x1E69E5920])();
  [v11 0x1FAA53EF8];
  MEMORY[0x1E69E5920](v11);
  (MEMORY[0x1E69E5928])();
  v12 = [v10 0x1FADAE878];
  (MEMORY[0x1E69E5920])();
  [v12 0x1FAA53EF8];
  MEMORY[0x1E69E5920](v12);
  CGPointMake();
  [v13 setPosition_];
  MEMORY[0x1E69E5920](v13);
  v15 = sub_1AC38937C();
  v14 = *MEMORY[0x1E69874F0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69874F0]);
  [v15 setVideoGravity_];
  MEMORY[0x1E69E5920](v14);
  *&result = MEMORY[0x1E69E5920](v15).n128_u64[0];
  return result;
}

void sub_1AC38A7A4()
{
  v11 = v0;
  v2 = objc_opt_self();
  MEMORY[0x1E69E5928](v0);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v9 = sub_1AC38A9AC;
  v10 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = 0;
  v7 = sub_1AC38A9B4;
  v8 = &block_descriptor_1;
  v3 = _Block_copy(&aBlock);

  [v2 animateWithDuration:v3 animations:0.15];
  _Block_release(v3);
}

unint64_t sub_1AC38A8B8()
{
  v2 = qword_1EB554E68;
  if (!qword_1EB554E68)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554E68);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC38A950()
{
  v2 = sub_1AC38937C();
  LODWORD(v0) = 1.0;
  [v2 setOpacity_];
  return MEMORY[0x1E69E5920](v2);
}

uint64_t sub_1AC38A9B4(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id HPCUIMovieLoopPlayer.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void HPCUIMovieLoopPlayer.init(coder:)()
{
  v0 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_player;
  sub_1AC38A080();
  *v0 = sub_1AC388C9C(0);
  v1 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLayer;
  *v1 = sub_1AC3892A0();
  v2 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_videoPlayer;
  *v2 = sub_1AC3894F4();
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

id HPCUIMovieLoopPlayer.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPCUIMovieLoopPlayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AC38AE88(uint64_t a1)
{
  v4 = [v1 initWithPlayerItem_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1AC38AED8(uint64_t a1)
{
  v4 = sub_1AC3B71E4();
  v6 = [v1 initWithURL_];
  MEMORY[0x1E69E5920](v4);
  v2 = sub_1AC3B7204();
  (*(*(v2 - 8) + 8))(a1);
  return v6;
}

uint64_t sub_1AC38AF98()
{
  updated = sub_1AC3B7204();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1AC38B310()
{
  v2 = qword_1EB554E80;
  if (!qword_1EB554E80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554E80);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC38B374()
{
  v1 = sub_1AC3B7524();
  __swift_allocate_value_buffer(v1, qword_1EB555828);
  __swift_project_value_buffer(v1, qword_1EB555828);
  sub_1AC3B7F54();
  sub_1AC3B7F54();
  return sub_1AC3B7514();
}

uint64_t sub_1AC38B418()
{
  if (qword_1EB554338 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B7524();
  return __swift_project_value_buffer(v0, qword_1EB555828);
}

uint64_t sub_1AC38B484@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC38B418();
  v1 = sub_1AC3B7524();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC38B4E8()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier);
  MEMORY[0x1E69E5928]();
  return v2;
}

char *sub_1AC38B56C(uint64_t a1)
{
  v10 = 0;
  v9 = a1;
  v1 = OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange = 0;
  *(v1 + 8) = 0;
  MEMORY[0x1E69E5928](a1);
  *&v10[OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier] = a1;
  v8.receiver = v10;
  v8.super_class = type metadata accessor for MultiLinkableTextView();
  v7 = objc_msgSendSuper2(&v8, sel_initWithFrame_textContainer_, 0, 0.0, 0.0, 0.0, 0.0);
  MEMORY[0x1E69E5928](v7);
  v10 = v7;
  MEMORY[0x1E69E5928](v7);
  [v7 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v7);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v7);
  v4 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v7);
  [v7 setShowsVerticalScrollIndicator_];
  MEMORY[0x1E69E5920](v7);
  [v7 setSelectable_];
  MEMORY[0x1E69E5920](v7);
  [v7 setEditable_];
  MEMORY[0x1E69E5920](v7);
  v5 = [v7 textContainer];
  MEMORY[0x1E69E5920](v7);
  [v5 setLineFragmentPadding_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v7);
  [v7 setTextContainerInset_];
  MEMORY[0x1E69E5920](v7);
  [v7 setScrollEnabled_];
  v2 = MEMORY[0x1E69E5920](v7);
  v2.n128_u32[0] = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v2.n128_f64[0]];
  [v7 _setInteractiveTextSelectionDisabled_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](a1);
  sub_1AC38D358();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v10);
  return v7;
}

double sub_1AC38B9D0()
{
  v46 = 0;
  v51 = v0;
  MEMORY[0x1E69E5928](v0);
  v43 = [v0 text];
  if (v43)
  {
    v39 = sub_1AC3B7EF4();
    v40 = v1;
    MEMORY[0x1E69E5920](v43);
    v41 = v39;
    v42 = v40;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  MEMORY[0x1E69E5920](v0);
  v49 = v41;
  v50 = v42;
  sub_1AC360750();
  MEMORY[0x1E69E5928](v0);
  if (v42)
  {
    v36 = &v0[OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange];
    swift_beginAccess();
    v37 = *(v36 + 1);
    swift_endAccess();
    v38 = v37 != 0;
  }

  else
  {
    v38 = 0;
  }

  *&result = MEMORY[0x1E69E5920](v0).n128_u64[0];
  if (v38)
  {
    v34 = [objc_opt_self() appearance];
    v35 = [v34 altTextColor];
    MEMORY[0x1E69E5920](v34);
    v47 = v35;
    if (v35)
    {
      v48 = v47;
    }

    else
    {
      v48 = PreferencesTableViewFooterColor();
    }

    v31 = v48;
    v46 = v48;
    v32 = [objc_opt_self() appearance];
    v33 = [v32 footerHyperlinkColor];
    MEMORY[0x1E69E5920](v32);
    v44 = v33;
    if (v33)
    {
      v45 = v44;
    }

    else
    {
      v45 = [objc_opt_self() systemBlueColor];
    }

    v30 = v45;
    sub_1AC38C4EC();
    v8 = sub_1AC3B7EE4();
    v9 = [v8 length];
    MEMORY[0x1E69E5920](v8);
    v53 = 0;
    v52 = v9;
    v54 = 0;
    v55 = v9;

    sub_1AC37A108();
    sub_1AC38C4EC();
    v29 = sub_1AC379B6C();
    MEMORY[0x1E69E5928](v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554B00);
    sub_1AC3B8574();
    v11 = v3;
    v24 = MEMORY[0x1E69DB650];
    sub_1AC37A840(MEMORY[0x1E69DB650], v3);
    v10 = [v0 0x1FBA859C1];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F20);
    v11[4] = v25;
    v11[1] = v10;
    v15 = MEMORY[0x1E69DB648];
    sub_1AC37A840(MEMORY[0x1E69DB648], v11 + 5);
    v12 = PreferencesTableViewFooterFont();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F28);
    v11[9] = v16;
    v11[6] = v12;
    sub_1AC36EE1C();
    type metadata accessor for Key();
    sub_1AC35D214();
    sub_1AC3B7E74();
    v13 = sub_1AC3B7E64();

    [v29 0x1FAB01985];
    MEMORY[0x1E69E5920](v13);
    sub_1AC3B8574();
    v19 = v4;
    sub_1AC37A840(v24, v4);
    MEMORY[0x1E69E5928](v30);
    v14 = [v0 0x1FBA859C1];
    MEMORY[0x1E69E5920](v30);
    v19[4] = v25;
    v19[1] = v14;
    sub_1AC37A840(v15, v19 + 5);
    v5 = PreferencesTableViewFooterFont();
    v19[9] = v16;
    v19[6] = v5;
    sub_1AC37A840(MEMORY[0x1E69DB670], v19 + 10);
    sub_1AC38D458();
    sub_1AC3B7F54();
    v17 = sub_1AC38C2F0();
    v19[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB554F40);
    v19[11] = v17;
    sub_1AC37A840(MEMORY[0x1E69DB758], v19 + 15);
    v18 = sub_1AC386ADC();
    v6 = sub_1AC3B82A4();
    v19[19] = v18;
    v19[16] = v6;
    sub_1AC36EE1C();
    sub_1AC3B7E74();
    v23 = sub_1AC3B7E64();

    v20 = &v0[OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange];
    swift_beginAccess();
    v21 = *v20;
    v22 = *(v20 + 1);
    swift_endAccess();
    [v29 0x1FAB01985];
    MEMORY[0x1E69E5920](v23);
    MEMORY[0x1E69E5928](v0);
    sub_1AC3B8574();
    v26 = v7;
    sub_1AC37A840(v24, v7);
    MEMORY[0x1E69E5928](v30);
    v27 = [v0 0x1FBA859C1];
    MEMORY[0x1E69E5920](v30);
    v26[4] = v25;
    v26[1] = v27;
    sub_1AC36EE1C();
    sub_1AC3B7E74();
    v28 = sub_1AC3B7E64();

    [v0 setLinkTextAttributes_];
    MEMORY[0x1E69E5920](v28);
    MEMORY[0x1E69E5920](v0);
    MEMORY[0x1E69E5928](v0);
    [v0 setAttributedText_];
    MEMORY[0x1E69E5920](v29);
    MEMORY[0x1E69E5920](v0);
    MEMORY[0x1E69E5920](v29);
    MEMORY[0x1E69E5920](v30);
    *&result = MEMORY[0x1E69E5920](v31).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC38C338()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_1AC38C3A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_endAccess();
  return sub_1AC38B9D0();
}

void (*sub_1AC38C42C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1AC38C49C;
}

void sub_1AC38C49C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1AC38B9D0();
  }
}

uint64_t sub_1AC38C4EC()
{
  v11 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier);
  MEMORY[0x1E69E5928](v4);
  v2 = *MEMORY[0x1E69C58F8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58F8]);
  sub_1AC3B7EF4();
  v3 = sub_1AC3B7EE4();

  v5 = [v4 propertyForKey_];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  if (v5)
  {
    sub_1AC3B8384();
    sub_1AC377D20(v6, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v9 = 0;
  }

  if (!v9)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  sub_1AC377D20(v8, v10);
  swift_dynamicCast();
  return v7;
}

uint64_t sub_1AC38C6DC()
{
  v16 = v0;
  v6 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier);
  MEMORY[0x1E69E5928](v6);
  v4 = *MEMORY[0x1E69C58F0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58F0]);
  sub_1AC3B7EF4();
  v5 = sub_1AC3B7EE4();

  v7 = [v6 propertyForKey_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  if (v7)
  {
    sub_1AC3B8384();
    sub_1AC377D20(v8, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v14 = 0;
  }

  if (!v14)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  sub_1AC377D20(v13, v15);
  sub_1AC38D4BC();
  swift_dynamicCast();
  v3 = v12;
  if ([v12 nonretainedObjectValue])
  {
    sub_1AC3B8384();
    sub_1AC377D20(v9, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  MEMORY[0x1E69E5920](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F58);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_1AC38CABC())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = v0;
  v7 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier);
  MEMORY[0x1E69E5928](v7);
  v5 = *MEMORY[0x1E69C58E0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58E0]);
  sub_1AC3B7EF4();
  v6 = sub_1AC3B7EE4();

  v8 = [v7 propertyForKey_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  if (v8)
  {
    sub_1AC3B8384();
    sub_1AC377D20(v9, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v13 = 0;
  }

  if (!v13)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  sub_1AC377D20(v12, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F60);
  swift_dynamicCast();
  v3 = v10;
  v4 = v11;
  v1 = swift_allocObject();
  result = sub_1AC38D584;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1AC38CD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v17 = a2;
  v16 = a3;
  v19 = a4;
  v20 = a5;
  v9 = a4;
  v10 = a5;
  v15 = sub_1AC3B7204();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v7 - v8;
  v11 = *(v5 + 32);
  v18 = *(v5 + 40);

  MEMORY[0x1E69E5928](v17);
  MEMORY[0x1E69E5928](v16);
  sub_1AC3B71F4();
  v11(v17, v14, v9, v10);
  (*(v12 + 8))(v14, v15);
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
}

uint64_t sub_1AC38CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, void *))
{
  v7 = a1;
  v6[0] = a3;
  v6[1] = a4;
  return a5(&v7, a2, v6);
}

uint64_t sub_1AC38CEC4()
{
  v11 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier);
  MEMORY[0x1E69E5928](v4);
  v2 = *MEMORY[0x1E69C58E8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58E8]);
  sub_1AC3B7EF4();
  v3 = sub_1AC3B7EE4();

  v5 = [v4 propertyForKey_];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  if (v5)
  {
    sub_1AC3B8384();
    sub_1AC377D20(v6, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v9 = 0;
  }

  if (!v9)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  sub_1AC377D20(v8, v10);
  swift_dynamicCast();
  return v7;
}

uint64_t sub_1AC38D0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_1AC38CABC();
  if (v10)
  {
    v5 = v10;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v5(a1, a2, a3, a4);

  return 0;
}

double sub_1AC38D358()
{
  MEMORY[0x1E69E5928](v0);
  sub_1AC38C4EC();
  v3 = sub_1AC3B7EE4();

  [v4 setText_];
  MEMORY[0x1E69E5920](v3);
  (MEMORY[0x1E69E5920])();
  sub_1AC38CEC4();
  aString = sub_1AC3B7EE4();

  v1 = NSRangeFromString(aString);
  MEMORY[0x1E69E5920](aString);
  return sub_1AC38C3A8(v1.location, v1.length);
}

unint64_t sub_1AC38D458()
{
  v2 = qword_1EB554F38;
  if (!qword_1EB554F38)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554F38);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC38D4BC()
{
  v2 = qword_1EB554F50;
  if (!qword_1EB554F50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554F50);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1AC38D608()
{
  v0 = OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange = 0;
  *(v0 + 8) = 0;
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

id sub_1AC38D80C()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiLinkableTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC38D898()
{
  result = sub_1AC3B7F54();
  qword_1EB554E90 = result;
  qword_1EB554E98 = v1;
  return result;
}

uint64_t *sub_1AC38D8DC()
{
  if (qword_1EB554340 != -1)
  {
    swift_once();
  }

  return &qword_1EB554E90;
}

uint64_t static MultiLinkableFooterView.footerLinkStringsKey.getter()
{
  v1 = *sub_1AC38D8DC();

  return v1;
}

uint64_t sub_1AC38D9E8()
{
  result = sub_1AC3B7F54();
  qword_1EB554EA0 = result;
  qword_1EB554EA8 = v1;
  return result;
}

uint64_t *sub_1AC38DA2C()
{
  if (qword_1EB554348 != -1)
  {
    swift_once();
  }

  return &qword_1EB554EA0;
}

uint64_t static MultiLinkableFooterView.footerLinkTargetsKey.getter()
{
  v1 = *sub_1AC38DA2C();

  return v1;
}

uint64_t sub_1AC38DB38()
{
  result = sub_1AC3B7F54();
  qword_1EB554EB0 = result;
  qword_1EB554EB8 = v1;
  return result;
}

uint64_t *sub_1AC38DB7C()
{
  if (qword_1EB554350 != -1)
  {
    swift_once();
  }

  return &qword_1EB554EB0;
}

uint64_t static MultiLinkableFooterView.footerLinkActionsKey.getter()
{
  v1 = *sub_1AC38DB7C();

  return v1;
}

uint64_t sub_1AC38DC88()
{
  result = sub_1AC3B7F54();
  qword_1EB554EC0 = result;
  qword_1EB554EC8 = v1;
  return result;
}

uint64_t *sub_1AC38DCCC()
{
  if (qword_1EB554358 != -1)
  {
    swift_once();
  }

  return &qword_1EB554EC0;
}

uint64_t static MultiLinkableFooterView.footerLinkRangesKey.getter()
{
  v1 = *sub_1AC38DCCC();

  return v1;
}

uint64_t sub_1AC38DDD8()
{
  result = sub_1AC3B7F54();
  qword_1EB554ED0 = result;
  qword_1EB554ED8 = v1;
  return result;
}

uint64_t *sub_1AC38DE1C()
{
  if (qword_1EB554360 != -1)
  {
    swift_once();
  }

  return &qword_1EB554ED0;
}

uint64_t static MultiLinkableFooterView.footerLinkReuseIDKey.getter()
{
  v1 = *sub_1AC38DE1C();

  return v1;
}

uint64_t sub_1AC38DF28()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_backingStore);

  return v2;
}

uint64_t sub_1AC38DF68()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_heightConstraints);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC38DFD0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_heightConstraints);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id sub_1AC38E0C0()
{
  v7 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1AC38E1CC();
  MEMORY[0x1E69E5928](v4);
  v3 = (v6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

id sub_1AC38E1CC()
{
  sub_1AC39413C();
  v1 = sub_1AC3692C0();
  [v1 setAlignment_];
  [v1 setAxis_];
  [v1 0x1FAECA5BALL];
  MEMORY[0x1E69E5920](v1);
  [v1 0x1FAECA5BALL];
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5928](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160);
  sub_1AC3941C8();
  sub_1AC3B8014();
  MEMORY[0x1E69E5920](v1);
  sub_1AC358148();
  [v1 setSpacing_];
  return v1;
}

double sub_1AC38E3A0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  type metadata accessor for MultiLinkableTextView();
  MEMORY[0x1E69E5928](v4);
  v15 = sub_1AC38B530(v4);
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [a2 addArrangedSubview_];
  v13 = objc_opt_self();
  sub_1AC377CBC();
  sub_1AC3B8574();
  v12 = v2;
  v6 = [a2 0x1FBB5C529];
  MEMORY[0x1E69E5920](a2);
  v5 = [v15 0x1FBB5C529];
  v7 = [v6 0x1FBB28F65];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  *v12 = v7;
  v10 = [a2 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](a2);
  v9 = [v15 0x1FBBB59CCLL];
  v11 = [v10 0x1FBB28F65];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  v12[1] = v11;
  sub_1AC36EE1C();
  v14 = sub_1AC3B8074();

  [v13 activateConstraints_];
  MEMORY[0x1E69E5920](v14);
  *&result = MEMORY[0x1E69E5920](v15).n128_u64[0];
  return result;
}

double sub_1AC38E6AC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*sub_1AC38E744(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC38E0C0();
  return sub_1AC38E7A0;
}

double sub_1AC38E7A0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC38E6AC(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC38E6AC(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

id MultiLinkableFooterView.init(specifier:)(void *a1)
{
  v212 = v251;
  v223 = a1;
  v222 = 0;
  v255 = 0;
  v254 = 0;
  v213 = 0;
  v245 = 0;
  v242 = 0;
  v239 = 0;
  v236 = 0;
  v233 = 0;
  v214 = sub_1AC3B7524();
  v215 = *(v214 - 8);
  v216 = v215;
  v217 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](0);
  v218 = v52 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = v2;
  v255 = v1;
  v221 = v1;
  v220 = OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_heightConstraints;
  v219 = sub_1AC377CBC();
  v3 = sub_1AC3B7E44();
  v4 = v222;
  v5 = v3;
  v6 = v223;
  *&v221[v220] = v5;
  *&v255[OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container] = v4;
  v7 = v6;
  if (v223)
  {
    v211 = v223;
  }

  else
  {
    LODWORD(v50) = 0;
    v49 = 131;
    v48 = 2;
    sub_1AC3B8494();
    __break(1u);
  }

  v209 = v211;
  v210 = [v211 userInfo];
  if (v210)
  {
    v208 = v210;
    v207 = v210;
    v206 = v224;
    sub_1AC3B8384();
    sub_1AC377D20(v206, v251);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v251, 0, sizeof(v251));
  }

  v8 = v209;
  v9 = v212;
  v10 = *v212;
  v212[3] = v212[1];
  v9[2] = v10;

  if (v253)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555018);
    if (swift_dynamicCast())
    {
      v204 = v224[4];
    }

    else
    {
      v204 = 0;
    }

    v205 = v204;
  }

  else
  {
    sub_1AC38FF40(v252);
    v205 = 0;
  }

  v203 = v205;
  if (!v205)
  {
    goto LABEL_66;
  }

  v202 = v203;
  v199 = v203;
  v245 = v203;
  v11 = sub_1AC38D8DC();
  v197 = *v11;
  v198 = v11[1];

  v243[0] = v197;
  v243[1] = v198;
  v200 = v243;
  sub_1AC3B7E94();
  sub_1AC360750();
  v201 = v244;
  if (v244)
  {
    v196 = v201;
    v224[6] = v201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554AA8);
    if (swift_dynamicCast())
    {
      v194 = v224[5];
    }

    else
    {
      v194 = 0;
    }

    v195 = v194;
  }

  else
  {
    v195 = 0;
  }

  v193 = v195;
  if (!v195)
  {

LABEL_66:
    v33 = v218;
    v34 = sub_1AC38B418();
    (*(v216 + 16))(v33, v34, v214);
    v35 = v223;
    v75 = 7;
    v77 = swift_allocObject();
    *(v77 + 16) = v223;
    sub_1AC38FFE4();

    v86 = sub_1AC3B7504();
    v71 = v86;
    v85 = sub_1AC3B8254();
    v72 = v85;
    v73 = 17;
    v79 = swift_allocObject();
    v74 = v79;
    *(v79 + 16) = 64;
    v80 = swift_allocObject();
    v76 = v80;
    *(v80 + 16) = 8;
    v36 = swift_allocObject();
    v37 = v77;
    v83 = v36;
    v78 = v36;
    *(v36 + 16) = sub_1AC38FFDC;
    *(v36 + 24) = v37;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
    v81 = sub_1AC3B8574();
    v82 = v38;

    v39 = v79;
    v40 = v82;
    *v82 = sub_1AC377AC0;
    v40[1] = v39;

    v41 = v80;
    v42 = v82;
    v82[2] = sub_1AC377AC0;
    v42[3] = v41;

    v43 = v82;
    v44 = v83;
    v82[4] = sub_1AC3936DC;
    v43[5] = v44;
    sub_1AC36EE1C();

    if (os_log_type_enabled(v86, v85))
    {
      v45 = v213;
      v64 = sub_1AC3B8334();
      v61 = v64;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
      v67 = 1;
      v65 = sub_1AC374C60(1);
      v63 = v65;
      v66 = sub_1AC374C60(0);
      v250 = v64;
      v249 = v65;
      v248 = v66;
      v68 = &v250;
      sub_1AC374CB4(2, &v250);
      sub_1AC374CB4(v67, v68);
      v246 = sub_1AC377AC0;
      v247 = v74;
      sub_1AC374CC8(&v246, v68, &v249, &v248);
      v69 = v45;
      v70 = v45;
      if (v45)
      {
        v59 = 0;

        __break(1u);
      }

      else
      {
        v246 = sub_1AC377AC0;
        v247 = v76;
        sub_1AC374CC8(&v246, &v250, &v249, &v248);
        v57 = 0;
        v58 = 0;
        v246 = sub_1AC3936DC;
        v247 = v78;
        sub_1AC374CC8(&v246, &v250, &v249, &v248);
        v55 = 0;
        v56 = 0;
        _os_log_impl(&dword_1AC345000, v71, v72, "Depedencies not met %@", v61, 0xCu);
        sub_1AC374D14(v63);
        sub_1AC374D14(v66);
        sub_1AC3B8314();

        v60 = v55;
      }
    }

    else
    {
      v46 = v213;

      v60 = v46;
    }

    v54 = v60;

    (*(v216 + 8))(v218, v214);
    sub_1AC358148();
    sub_1AC35E758(&v255[OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container]);
    v52[1] = v255;
    v53 = 0;
    v52[2] = type metadata accessor for MultiLinkableFooterView();
    swift_deallocPartialClassInstance();
    v131 = v53;
    v132 = v54;
    return v131;
  }

  v192 = v193;
  v187 = v193;
  v242 = v193;
  v13 = sub_1AC38DA2C();
  v188 = *v13;
  v189 = v13[1];

  v240[0] = v188;
  v240[1] = v189;
  v190 = v240;
  sub_1AC3B7E94();
  sub_1AC360750();
  v191 = v241;
  if (v241)
  {
    v186 = v191;
    v224[8] = v191;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FA0);
    if (swift_dynamicCast())
    {
      v184 = v224[7];
    }

    else
    {
      v184 = 0;
    }

    v185 = v184;
  }

  else
  {
    v185 = 0;
  }

  v183 = v185;
  if (!v185)
  {

    goto LABEL_66;
  }

  v182 = v183;
  v177 = v183;
  v239 = v183;
  v15 = sub_1AC38DB7C();
  v178 = *v15;
  v179 = v15[1];

  v237[0] = v178;
  v237[1] = v179;
  v180 = v237;
  sub_1AC3B7E94();
  sub_1AC360750();
  v181 = v238;
  if (v238)
  {
    v176 = v181;
    v224[10] = v181;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F98);
    if (swift_dynamicCast())
    {
      v174 = v224[9];
    }

    else
    {
      v174 = 0;
    }

    v175 = v174;
  }

  else
  {
    v175 = 0;
  }

  v173 = v175;
  if (!v175)
  {

    goto LABEL_66;
  }

  v172 = v173;
  v167 = v173;
  v236 = v173;
  v17 = sub_1AC38DCCC();
  v168 = *v17;
  v169 = v17[1];

  v234[0] = v168;
  v234[1] = v169;
  v170 = v234;
  sub_1AC3B7E94();
  sub_1AC360750();
  v171 = v235;
  if (v235)
  {
    v166 = v171;
    v224[12] = v171;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FA0);
    if (swift_dynamicCast())
    {
      v164 = v224[11];
    }

    else
    {
      v164 = 0;
    }

    v165 = v164;
  }

  else
  {
    v165 = 0;
  }

  v163 = v165;
  if (!v165)
  {

    goto LABEL_66;
  }

  v162 = v163;
  v159 = v163;
  v233 = v163;
  v160 = sub_1AC3B80B4();
  v161 = sub_1AC3B80B4();

  if (v160 == v161)
  {
    v157 = sub_1AC3B80B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F60);
    v158 = v157 == sub_1AC3B80B4();
  }

  else
  {
    v158 = 0;
  }

  v156 = v158;

  if (v156)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F60);
    v154 = sub_1AC3B80B4();
    v155 = v154 == sub_1AC3B80B4();
  }

  else
  {
    v155 = 0;
  }

  v153 = v155;

  if (!v153)
  {

    goto LABEL_66;
  }

  v19 = v213;
  v133 = v255;
  v232[10] = v187;
  v232[6] = v177;
  v232[3] = v167;
  v232[2] = v159;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F98);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FA0);
  v135 = sub_1AC393710();
  v138 = sub_1AC393798();
  sub_1AC3B85E4();
  v232[0] = v232[4];
  v232[1] = v232[5];
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FB8);
  sub_1AC393820();
  v139 = v232;
  sub_1AC3B85E4();
  sub_1AC3938A8();
  v231[0] = v232[7];
  v231[1] = v232[8];
  v231[2] = v232[9];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554AA8);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FD0);
  v142 = sub_1AC3938E0();
  sub_1AC393968();
  v143 = v231;
  sub_1AC3B85E4();
  sub_1AC3939F0();
  v227 = v232[11];
  v228 = v232[12];
  v229 = v232[13];
  v230 = v232[14];
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FE8);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FF0);
  sub_1AC393A34();
  v226 = sub_1AC3B80E4();
  v146 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v148 = &v48;
  v50 = sub_1AC390010;
  v147 = 0;
  v51 = 0;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555000);
  v150 = sub_1AC393AEC();
  v20 = sub_1AC393B50();
  v22 = sub_1AC3904D8(sub_1AC393ABC, v148, v149, v150, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  v151 = v19;
  v152 = v22;
  if (!v19)
  {
    v87 = v152;
    sub_1AC358148();
    *&v133[OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_backingStore] = v87;
    v89 = v255;
    sub_1AC3B7F54();
    v88 = v23;
    v90 = sub_1AC3B7EE4();

    v24 = type metadata accessor for MultiLinkableFooterView();
    v225.receiver = v89;
    v225.super_class = v24;
    v129 = objc_msgSendSuper2(&v225, sel_initWithReuseIdentifier_, v90);

    v25 = v129;
    v255 = v129;
    v26 = v129;
    v115 = 0x1FB774000uLL;
    v92 = [v129 0x1FB774AF8];

    v91 = sub_1AC38E0C0();
    [v92 addSubview_];

    v127 = objc_opt_self();
    v125 = sub_1AC3B8574();
    v123 = v27;
    v93 = sub_1AC38E0C0();
    v95 = 0x1FBB5C000uLL;
    v98 = [v93 0x1FBB5C529];

    v28 = v129;
    v94 = [v129 (v115 + 2808)];

    v116 = 0x1FBB5C000uLL;
    v96 = [v94 0x1FBB5C2A9];

    v97 = [v96 (v95 + 1321)];
    v120 = 0x1FBB28000uLL;
    v99 = [v98 0x1FBB28F65];

    *v123 = v99;
    v100 = sub_1AC38E0C0();
    v102 = 0x1FBBB5000uLL;
    v105 = [v100 0x1FBBB59CCLL];

    v29 = v129;
    v101 = [v129 (v115 + 2808)];

    v103 = [v101 (v116 + 681)];
    v104 = [v103 (v102 + 2508)];

    v106 = [v105 (v120 + 3941)];
    v123[1] = v106;
    v107 = sub_1AC38E0C0();
    v109 = 0x1FBBB4000uLL;
    v112 = [v107 0x1FBBB4950];

    v30 = v129;
    v108 = [v129 (v115 + 2808)];

    v110 = [v108 (v116 + 681)];
    v111 = [v110 (v109 + 2384)];

    v113 = [v112 (v120 + 3941)];
    v123[2] = v113;
    v114 = sub_1AC38E0C0();
    v118 = 0x1FBB20000uLL;
    v122 = [v114 0x1FBB20D25];

    v31 = v129;
    v117 = [v129 (v115 + 2808)];

    v119 = [v117 (v116 + 681)];
    v121 = [v119 (v118 + 3365)];

    v124 = [v122 (v120 + 3941)];
    v32 = v125;
    v123[3] = v124;
    sub_1AC36EE1C();
    v126 = v32;
    v128 = sub_1AC3B8074();

    [v127 activateConstraints_];

    v130 = v129;

    v131 = v130;
    v132 = v151;
    return v131;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1AC38FF40(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t sub_1AC38FF7C(uint64_t a1)
{
  MEMORY[0x1E69E5928]();
  if (a1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id sub_1AC390010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AC393AEC();
  v22 = sub_1AC3692C0();

  v10 = sub_1AC3B7EE4();

  v8 = *MEMORY[0x1E69C58F8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58F8]);
  sub_1AC3B7EF4();
  v9 = sub_1AC3B7EE4();

  [v22 0x1FB10D778];
  MEMORY[0x1E69E5920](v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  v11 = *MEMORY[0x1E69C58F0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58F0]);
  sub_1AC3B7EF4();
  v12 = sub_1AC3B7EE4();

  [v22 0x1FB10D778];
  MEMORY[0x1E69E5920](v12);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F60);
  v16 = sub_1AC3B8584();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = *MEMORY[0x1E69C58E0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58E0]);
  sub_1AC3B7EF4();
  v15 = sub_1AC3B7EE4();

  [v22 0x1FB10D778];
  MEMORY[0x1E69E5920](v15);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  v19 = *MEMORY[0x1E69C58E8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58E8]);
  sub_1AC3B7EF4();
  v20 = sub_1AC3B7EE4();

  [v22 0x1FB10D778];
  MEMORY[0x1E69E5920](v20);
  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_1AC3903EC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, void)@<X1>, void *a3@<X8>)
{
  v9 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v4 = a1[3];
  v5 = a1[4];

  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *a3 = a2(v9, v6, v7, sub_1AC38D584);
}

uint64_t sub_1AC3904D8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v15 - v54;
  v56 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v15 - v63;
  v65 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v15 - v65;
  v67 = sub_1AC3B81E4();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69 = sub_1AC3B8454();
  v33 = sub_1AC3B8464();
  sub_1AC3B8434();
  result = sub_1AC3B81D4();
  if (v67 < 0)
  {
    sub_1AC3B8494();
    __break(1u);
LABEL_24:
    v17 = sub_1AC3B8094();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_1AC3B81F4();
    swift_getAssociatedConformanceWitness();
    v22 = sub_1AC3B7EB4();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_1AC3B84B4();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69;

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_1AC3B8494();
      __break(1u);
LABEL_18:
      sub_1AC3B84B4();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_1AC3B8224();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_1AC367428();
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_1AC3B8444();
    sub_1AC3B8204();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

double sub_1AC390ED8()
{
  v2 = sub_1AC38E0C0();
  [v2 intrinsicContentSize];
  v3 = v0;
  MEMORY[0x1E69E5920](v2);
  return v3;
}

double sub_1AC390FA0()
{
  v2 = sub_1AC38E0C0();
  [v2 intrinsicContentSize];
  v3 = v0;
  MEMORY[0x1E69E5920](v2);
  return v3;
}

void sub_1AC391098()
{
  v0 = OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_heightConstraints;
  sub_1AC377CBC();
  *v0 = sub_1AC3B7E44();
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container = 0;
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

id MultiLinkableFooterView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  v9 = objc_allocWithZone(v2);
  if (a2)
  {
    v7 = sub_1AC3B7EE4();

    v3 = [v9 initWithReuseIdentifier_];
  }

  else
  {
    v3 = [v9 initWithReuseIdentifier_];
  }

  v6 = v3;
  MEMORY[0x1E69E5920](v5);
  return v6;
}

id MultiLinkableFooterView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiLinkableFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC391450()
{
  result = sub_1AC3B7F54();
  qword_1EB554EE0 = result;
  qword_1EB554EE8 = v1;
  return result;
}

uint64_t *sub_1AC391494()
{
  if (qword_1EB554368 != -1)
  {
    swift_once();
  }

  return &qword_1EB554EE0;
}

uint64_t static HPCUIVisionOSSubtitleOnOffIndicatorCell.onOffKey.getter()
{
  v1 = *sub_1AC391494();

  return v1;
}

uint64_t sub_1AC3915A0()
{
  result = sub_1AC3B7F54();
  qword_1EB554EF0 = result;
  qword_1EB554EF8 = v1;
  return result;
}

uint64_t *sub_1AC3915E4()
{
  if (qword_1EB554370 != -1)
  {
    swift_once();
  }

  return &qword_1EB554EF0;
}

uint64_t static HPCUIVisionOSSubtitleOnOffIndicatorCell.cellDisabledKey.getter()
{
  v1 = *sub_1AC3915E4();

  return v1;
}

id sub_1AC3916F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = objc_allocWithZone(v4);
  if (a3)
  {
    v9 = sub_1AC3B7EE4();

    v5 = [v13 initWithStyle:a1 reuseIdentifier:v9 specifier:?];
  }

  else
  {
    v5 = [v13 initWithStyle:a1 reuseIdentifier:0 specifier:?];
  }

  v8 = v5;
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](v7);
  return v8;
}

id sub_1AC3917CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v16 = a1;
  v14 = a2;
  v15 = a3;
  v13 = a4;

  if (a3)
  {
    v7 = sub_1AC3B7EE4();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = 0;
  v12.super_class = type metadata accessor for HPCUIVisionOSSubtitleOnOffIndicatorCell();
  v6 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_specifier_, a1, v8, a4);
  MEMORY[0x1E69E5920](v8);
  if (v6)
  {
    MEMORY[0x1E69E5928](v6);
    v17 = v6;
    [v6 setAccessoryType_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v17);
    return v6;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

id sub_1AC391A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a3)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithStyle:a1 reuseIdentifier:?];
  MEMORY[0x1E69E5920](v7);
  return v5;
}

id sub_1AC391B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v12 = a1;
  v10 = a2;
  v11 = a3;

  if (a3)
  {
    v5 = sub_1AC3B7EE4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for HPCUIVisionOSSubtitleOnOffIndicatorCell();
  v4 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;
  [v4 setAccessoryType_];
  MEMORY[0x1E69E5920](v4);
  [v4 setHoverStyle_];
  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](v13);
  return v4;
}

void sub_1AC391D98()
{
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

uint64_t sub_1AC391E74(void *a1)
{
  v114 = a1;
  v100 = "Fatal error";
  v101 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v102 = "HeadphoneCommonUIKit/MultiLinkableFooterView.swift";
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v149 = 0;
  v150 = 0;
  v140 = 0;
  v141 = 0;
  v131 = 0;
  v132 = 0;
  v125 = 0;
  v103 = 0;
  v104 = sub_1AC3B7584();
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v108 = &v15 - v107;
  v109 = sub_1AC3B75E4();
  v110 = *(v109 - 8);
  v111 = v109 - 8;
  v112 = (*(v110 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v15 - v112;
  v153 = &v15 - v112;
  v152 = v2;
  v151 = v1;
  *&v3 = MEMORY[0x1E69E5928](v2).n128_u64[0];
  if (v114)
  {
    v98 = v114;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v96 = v98;
  v97 = [v98 name];
  if (v97)
  {
    v95 = v97;
    v90 = v97;
    v91 = sub_1AC3B7EF4();
    v92 = v4;
    MEMORY[0x1E69E5920](v90);
    v93 = v91;
    v94 = v92;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v88 = v94;
  v89 = v93;
  v149 = v93;
  v150 = v94;
  MEMORY[0x1E69E5920](v96);
  MEMORY[0x1E69E5928](v114);
  if (v114)
  {
    v87 = v114;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v85 = v87;
  v83 = *MEMORY[0x1E69C59A0];
  MEMORY[0x1E69E5928](v83);
  sub_1AC3B7EF4();
  v82 = v5;
  v84 = sub_1AC3B7EE4();

  *&v6 = MEMORY[0x1E69E5920](v83).n128_u64[0];
  v86 = [v85 propertyForKey_];
  MEMORY[0x1E69E5920](v84);
  MEMORY[0x1E69E5920](v85);
  if (v86)
  {
    v81 = v86;
    v80 = v86;
    v79 = v115;
    sub_1AC3B8384();
    sub_1AC377D20(v79, &v144);
    swift_unknownObjectRelease();
  }

  else
  {
    v144 = 0uLL;
    v145 = 0uLL;
  }

  v146[0] = v144;
  v146[1] = v145;
  if (*(&v145 + 1))
  {
    if (swift_dynamicCast())
    {
      v77 = v115[4];
      v78 = v115[5];
    }

    else
    {
      v77 = 0;
      v78 = 0;
    }

    v75 = v77;
    v76 = v78;
  }

  else
  {
    sub_1AC38FF40(v146);
    v75 = 0;
    v76 = 0;
  }

  v142 = v75;
  v143 = v76;
  if (v76)
  {
    v147 = v142;
    v148 = v143;
  }

  else
  {
    v147 = sub_1AC3B7F54();
    v148 = v7;
    if (v143)
    {
      sub_1AC360750();
    }
  }

  v73 = v147;
  v74 = v148;
  v140 = v147;
  v141 = v148;
  MEMORY[0x1E69E5928](v114);
  if (v114)
  {
    v72 = v114;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v70 = v72;
  v8 = sub_1AC391494();
  v67 = *v8;
  v68 = v8[1];

  v69 = sub_1AC3B7EE4();

  v71 = [v70 propertyForKey_];
  MEMORY[0x1E69E5920](v69);
  MEMORY[0x1E69E5920](v70);
  if (v71)
  {
    v66 = v71;
    v65 = v71;
    v64 = v116;
    sub_1AC3B8384();
    sub_1AC377D20(v64, &v135);
    swift_unknownObjectRelease();
  }

  else
  {
    v135 = 0uLL;
    v136 = 0uLL;
  }

  v137[0] = v135;
  v137[1] = v136;
  if (*(&v136 + 1))
  {
    if (swift_dynamicCast())
    {
      v62 = v116[4];
      v63 = v116[5];
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    v60 = v62;
    v61 = v63;
  }

  else
  {
    sub_1AC38FF40(v137);
    v60 = 0;
    v61 = 0;
  }

  v133 = v60;
  v134 = v61;
  if (v61)
  {
    v138 = v133;
    v139 = v134;
  }

  else
  {
    v138 = sub_1AC3B7F54();
    v139 = v9;
    if (v134)
    {
      sub_1AC360750();
    }
  }

  v58 = v138;
  v59 = v139;
  v131 = v138;
  v132 = v139;
  MEMORY[0x1E69E5928](v114);
  if (v114)
  {
    v57 = v114;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v55 = v57;
  v10 = sub_1AC3915E4();
  v52 = *v10;
  v53 = v10[1];

  v54 = sub_1AC3B7EE4();

  v56 = [v55 propertyForKey_];
  MEMORY[0x1E69E5920](v54);
  MEMORY[0x1E69E5920](v55);
  if (v56)
  {
    v51 = v56;
    v50 = v56;
    v49 = v117;
    sub_1AC3B8384();
    sub_1AC377D20(v49, &v127);
    swift_unknownObjectRelease();
  }

  else
  {
    v127 = 0uLL;
    v128 = 0uLL;
  }

  v129[0] = v127;
  v129[1] = v128;
  if (*(&v128 + 1))
  {
    sub_1AC386ADC();
    if (swift_dynamicCast())
    {
      v48 = v117[4];
    }

    else
    {
      v48 = 0;
    }

    v47 = v48;
  }

  else
  {
    sub_1AC38FF40(v129);
    v47 = 0;
  }

  v126 = v47;
  if (v47)
  {
    v130 = v126;
  }

  else
  {
    sub_1AC386ADC();
    v130 = sub_1AC3B82A4();
    if (v126)
    {
      sub_1AC35E758(&v126);
    }
  }

  v43 = v130;
  v125 = v130;
  sub_1AC3B7534();

  sub_1AC3B75D4();
  v44 = objc_opt_self();
  v45 = *MEMORY[0x1E69DDCF8];
  MEMORY[0x1E69E5928](v45);
  v46 = [v44 _preferredFontForTextStyle_weight_];
  MEMORY[0x1E69E5920](v45);
  if (v46)
  {
    v42 = v46;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v39 = v42;
  v40 = &v124;
  v41 = sub_1AC3B7594();
  sub_1AC3B7554();
  v41();
  if ([v43 BOOLValue])
  {
    v38 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    sub_1AC3B75A4();
    v37 = sub_1AC3B7564();
    (*(v105 + 8))(v108, v104);
    v38 = v37;
  }

  v31 = v38;
  v32 = &v123;
  v33 = sub_1AC3B7594();
  sub_1AC3B7574();
  v33();

  sub_1AC3B7544();
  v34 = objc_opt_self();
  v35 = *MEMORY[0x1E69DDD28];
  MEMORY[0x1E69E5928](v35);
  v36 = [v34 _preferredFontForTextStyle_weight_];
  MEMORY[0x1E69E5920](v35);
  if (v36)
  {
    v30 = v36;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v27 = v30;
  v28 = &v122;
  v29 = sub_1AC3B75B4();
  sub_1AC3B7554();
  v29();
  if ([v43 BOOLValue])
  {
    v26 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    v26 = [objc_opt_self() secondaryLabelColor];
  }

  v19 = v26;
  v20 = &v121;
  v21 = sub_1AC3B75B4();
  sub_1AC3B7574();
  v23 = 0;
  v21();
  sub_1AC3B75C4();
  MEMORY[0x1E69E5928](v99);
  v22 = v120;
  v120[3] = v109;
  v120[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v120);
  (*(v110 + 16))(boxed_opaque_existential_1, v113, v109);
  MEMORY[0x1AC5B25D0](v22);
  MEMORY[0x1E69E5920](v99);
  v24 = sub_1AC386ADC();
  v119 = v43;
  v118 = sub_1AC3B82A4();
  v25 = sub_1AC3B82B4();
  v12 = MEMORY[0x1E69E5920](v118);
  if (v25)
  {
    MEMORY[0x1E69E5928](v99);
    v15 = objc_opt_self();
    v16 = *MEMORY[0x1E69DDCF8];
    MEMORY[0x1E69E5928](v16);
    v17 = [v15 _preferredFontForTextStyle_weight_];
    *&v13 = MEMORY[0x1E69E5920](v16).n128_u64[0];
    [v99 _setBadgeFont_];
    MEMORY[0x1E69E5920](v17);
    MEMORY[0x1E69E5920](v99);
    MEMORY[0x1E69E5928](v99);

    v18 = sub_1AC3B7EE4();

    [v99 _setBadgeText_];
    MEMORY[0x1E69E5920](v18);
    v12 = MEMORY[0x1E69E5920](v99);
  }

  (*(v110 + 8))(v113, v109, v12);
  MEMORY[0x1E69E5920](v43);
}

id HPCUIVisionOSSubtitleOnOffIndicatorCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPCUIVisionOSSubtitleOnOffIndicatorCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t View.linkableFooter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = 0;
  v69 = a5;
  v61 = a1;
  v62 = a2;
  v63 = a3;
  v64 = a4;

  v47 = "Section footer";
  v48 = 14;
  v49 = 2;
  v43 = sub_1AC3B7A54();
  v44 = v6;
  v45 = v7;
  v46 = v8;
  v14 = v6;
  v13 = v7;
  v15 = v8;
  v42 = sub_1AC3934DC();
  v38 = v43;
  v39 = v14;
  v40 = v13 & 1;
  v41 = v15;
  v34 = sub_1AC3B7A34();
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  sub_1AC364A88(v43, v14, v13 & 1);

  v31[0] = v34;
  v31[1] = v16;
  v32 = v17 & 1;
  v33 = v18;
  sub_1AC3B7B74();
  sub_1AC367A04(v31);
  v26[0] = v50;
  v26[1] = v51;
  v27 = v52 & 1;
  v28 = v53;
  v29 = v54;
  v30 = v55;
  sub_1AC3B79D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB555020);
  sub_1AC3889C0();
  sub_1AC3B7B84();

  sub_1AC388AEC(v26);
  memcpy(__dst, v56, sizeof(__dst));
  memcpy(v25, __dst, sizeof(v25));
  sub_1AC3B7E14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555040);
  sub_1AC393C80();
  sub_1AC3B7BC4();
  sub_1AC393D28(v25);
  memcpy(v66, v57, sizeof(v66));
  memcpy(v24, v66, sizeof(v24));
  sub_1AC3B7944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555060);
  sub_1AC393D94();
  sub_1AC3B7BE4();
  sub_1AC393D28(v24);
  memcpy(v67, v58, sizeof(v67));
  memcpy(v23, v67, 0xD9uLL);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555070);
  sub_1AC393E38();
  sub_1AC35745C(v23, v20, v59);
  sub_1AC393D28(v23);
  memcpy(v68, v59, 0xD9uLL);
  sub_1AC393EDC(v68, v22);
  memcpy(v21, v68, 0xD9uLL);
  sub_1AC35745C(v21, v20, a6);
  sub_1AC393D28(v21);
  return sub_1AC393D28(v59);
}

id sub_1AC3934F4()
{
  v2 = sub_1AC3B7EE4();
  v3 = [v1 initWithString_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

void sub_1AC393558(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v7 = *a1;
  MEMORY[0x1E69E5928](v8);
  sub_1AC3B8354();
  if (v8)
  {
    MEMORY[0x1E69E5920](v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    MEMORY[0x1E69E5928](v8);
    *v4 = v8;
    MEMORY[0x1E69E5920](v8);
    *a2 = v4 + 1;
  }

  else
  {
    MEMORY[0x1E69E5920](v8);
  }
}

unint64_t sub_1AC393710()
{
  v2 = qword_1EB554FA8;
  if (!qword_1EB554FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554F98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC393798()
{
  v2 = qword_1EB554FB0;
  if (!qword_1EB554FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554FA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC393820()
{
  v2 = qword_1EB554FC0;
  if (!qword_1EB554FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554FB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3938E0()
{
  v2 = qword_1EB554FD8;
  if (!qword_1EB554FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554AA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC393968()
{
  v2 = qword_1EB554FE0;
  if (!qword_1EB554FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554FD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FE0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AC3939F0()
{
}

unint64_t sub_1AC393A34()
{
  v2 = qword_1EB554FF8;
  if (!qword_1EB554FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554FF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC393AEC()
{
  v2 = qword_1EB555008;
  if (!qword_1EB555008)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555008);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC393B50()
{
  v2 = qword_1EB555010;
  if (!qword_1EB555010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555010);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

unint64_t sub_1AC393C80()
{
  v2 = qword_1EB555048;
  if (!qword_1EB555048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555040);
    sub_1AC3889C0();
    sub_1AC367AF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC393D28(uint64_t a1)
{
  sub_1AC364A88(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_1AC393D94()
{
  v2 = qword_1EB555068;
  if (!qword_1EB555068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555060);
    sub_1AC393C80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC393E38()
{
  v2 = qword_1EB555078;
  if (!qword_1EB555078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555070);
    sub_1AC393D94();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555078);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC393EDC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1AC367800(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  v7 = *(a1 + 32);

  *(a2 + 32) = v7;
  *(a2 + 40) = *(a1 + 40);
  v8 = *(a1 + 48);

  *(a2 + 48) = v8;
  v9 = *(a1 + 56);

  *(a2 + 56) = v9;
  memcpy((a2 + 64), (a1 + 64), 0x70uLL);
  memcpy((a2 + 176), (a1 + 176), 0x29uLL);
  return a2;
}

unint64_t sub_1AC39413C()
{
  v2 = qword_1EB555158;
  if (!qword_1EB555158)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555158);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3941C8()
{
  v2 = qword_1EB555168;
  if (!qword_1EB555168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555168);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1AC394250@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    MEMORY[0x1EEE9AC00](&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  MEMORY[0x1EEE9AC00](&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_1AC3B7E34();
  return v15;
}

uint64_t sub_1AC3944AC()
{
  v1 = sub_1AC3B7524();
  __swift_allocate_value_buffer(v1, qword_1EB5551D0);
  __swift_project_value_buffer(v1, qword_1EB5551D0);
  sub_1AC3B7F54();
  sub_1AC3B7F54();
  return sub_1AC3B7514();
}

uint64_t sub_1AC394550()
{
  if (qword_1EB554378 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B7524();
  return __swift_project_value_buffer(v0, qword_1EB5551D0);
}

uint64_t static Logger.placeCardUI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC394550();
  v1 = sub_1AC3B7524();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC394620()
{
  result = sub_1AC3B7F54();
  qword_1EB5551E8 = result;
  qword_1EB5551F0 = v1;
  return result;
}

uint64_t *sub_1AC394664()
{
  if (qword_1EB554380 != -1)
  {
    swift_once();
  }

  return &qword_1EB5551E8;
}

uint64_t static PlaceCardTypeCell.useCaseKey.getter()
{
  v1 = *sub_1AC394664();

  return v1;
}

uint64_t sub_1AC394770()
{
  result = sub_1AC3B7F54();
  qword_1EB5551F8 = result;
  qword_1EB555200 = v1;
  return result;
}

uint64_t *sub_1AC3947B4()
{
  if (qword_1EB554388 != -1)
  {
    swift_once();
  }

  return &qword_1EB5551F8;
}

uint64_t static PlaceCardTypeCell.deviceKey.getter()
{
  v1 = *sub_1AC3947B4();

  return v1;
}

uint64_t sub_1AC3948C0()
{
  result = sub_1AC3B7F54();
  qword_1EB555208 = result;
  qword_1EB555210 = v1;
  return result;
}

uint64_t *sub_1AC394904()
{
  if (qword_1EB554390 != -1)
  {
    swift_once();
  }

  return &qword_1EB555208;
}

uint64_t static PlaceCardTypeCell.hideDisclosureKey.getter()
{
  v1 = *sub_1AC394904();

  return v1;
}

id sub_1AC394A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v16 = a1;
  v14 = a2;
  v15 = a3;
  v13 = a4;

  if (a3)
  {
    v7 = sub_1AC3B7EE4();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = 0;
  v12.super_class = type metadata accessor for PlaceCardTypeCell();
  v6 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_specifier_, a1, v8, a4);
  MEMORY[0x1E69E5920](v8);
  if (v6)
  {
    MEMORY[0x1E69E5928](v6);
    v17 = v6;
    [v6 setAccessoryType_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v17);
    return v6;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

id sub_1AC394CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v12 = a1;
  v10 = a2;
  v11 = a3;

  if (a3)
  {
    v5 = sub_1AC3B7EE4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for PlaceCardTypeCell();
  v4 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;
  [v4 setAccessoryType_];
  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](v13);
  return v4;
}

id PlaceCardTypeCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void PlaceCardTypeCell.init(coder:)()
{
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

uint64_t sub_1AC395040(void *a1)
{
  v228 = v259;
  v244 = a1;
  v235 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v230 = 0;
  v290 = 0;
  v275 = 0;
  v265 = 0;
  v264 = 0;
  v263 = 0;
  v262 = 0;
  v257 = 0;
  v256 = 0;
  v231 = sub_1AC3B7524();
  v232 = *(v231 - 8);
  v233 = v232;
  MEMORY[0x1EEE9AC00](0);
  v234 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_1AC3B7584();
  v237 = *(v236 - 8);
  v238 = v237;
  MEMORY[0x1EEE9AC00](v235);
  v239 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_1AC3B75E4();
  v241 = *(v240 - 8);
  v242 = v241;
  MEMORY[0x1EEE9AC00](v244);
  v243 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = v243;
  v300 = v5;
  v299 = v1;
  v6 = v5;
  if (v244)
  {
    v227 = v244;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v225 = v227;
  v226 = [v227 userInfo];
  if (v226)
  {
    v224 = v226;
    v223 = v226;
    v222 = v245;
    sub_1AC3B8384();
    sub_1AC377D20(v222, v296);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v296, 0, sizeof(v296));
  }

  v7 = v225;
  v8 = v228;
  v9 = v228[43];
  v228[46] = v228[44];
  v8[45] = v9;

  if (v298)
  {
    sub_1AC39B678();
    if (swift_dynamicCast())
    {
      v221 = v245[4];
    }

    else
    {
      v221 = 0;
    }

    v220 = v221;
  }

  else
  {
    sub_1AC38FF40(v297);
    v220 = 0;
  }

  v219 = v220;
  if (!v220)
  {
    goto LABEL_95;
  }

  v218 = v219;
  v214 = v219;
  v290 = v219;
  v10 = sub_1AC394664();
  v207 = *v10;
  v208 = v10[1];

  v280[3] = MEMORY[0x1E69E6158];
  v280[0] = v207;
  v280[1] = v208;
  v211 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v280, MEMORY[0x1E69E6158]);
  v209 = *(v211 - 8);
  v210 = v209;
  v213 = &v64;
  v11 = MEMORY[0x1EEE9AC00](&v64);
  v212 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v210 + 16))(v11);
  v215 = sub_1AC3B8584();
  (*(v210 + 8))(v212, v211);
  v217 = [v214 __swift_objectForKeyedSubscript_];
  v216 = v217;
  swift_unknownObjectRelease();
  if (v217)
  {
    v206 = v216;
    v205 = v216;
    v204 = &v246;
    sub_1AC3B8384();
    sub_1AC377D20(v204, v279);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v279, 0, sizeof(v279));
  }

  v13 = v228;
  v14 = v228[28];
  v228[33] = v228[29];
  v13[32] = v14;
  if (v281[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555228);
    if (!swift_dynamicCast())
    {
      v282 = 0;
      v283 = 0;
      v284 = 0;
      v285 = 0;
      v286 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v280);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v280);
    sub_1AC38FF40(v281);
    v282 = 0;
    v283 = 0;
    v284 = 0;
    v285 = 0;
    v286 = 0;
  }

  if (!v285)
  {
    sub_1AC38FF40(&v282);

LABEL_95:
    v49 = v234;
    v50 = sub_1AC394550();
    (*(v233 + 16))(v49, v50, v231);
    v51 = v244;
    v86 = 7;
    v88 = swift_allocObject();
    *(v88 + 16) = v244;
    sub_1AC38FFE4();

    v97 = sub_1AC3B7504();
    v82 = v97;
    v96 = sub_1AC3B8254();
    v83 = v96;
    v84 = 17;
    v90 = swift_allocObject();
    v85 = v90;
    *(v90 + 16) = 64;
    v91 = swift_allocObject();
    v87 = v91;
    *(v91 + 16) = 8;
    v52 = swift_allocObject();
    v53 = v88;
    v94 = v52;
    v89 = v52;
    *(v52 + 16) = sub_1AC38FFDC;
    *(v52 + 24) = v53;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
    v92 = sub_1AC3B8574();
    v93 = v54;

    v55 = v90;
    v56 = v93;
    *v93 = sub_1AC377AC0;
    v56[1] = v55;

    v57 = v91;
    v58 = v93;
    v93[2] = sub_1AC377AC0;
    v58[3] = v57;

    v59 = v93;
    v60 = v94;
    v93[4] = sub_1AC3936DC;
    v59[5] = v60;
    sub_1AC36EE1C();

    if (os_log_type_enabled(v97, v96))
    {
      v61 = v230;
      v75 = sub_1AC3B8334();
      v72 = v75;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
      v78 = 1;
      v76 = sub_1AC374C60(1);
      v74 = v76;
      v77 = sub_1AC374C60(0);
      v295 = v75;
      v294 = v76;
      v293 = v77;
      v79 = &v295;
      sub_1AC374CB4(2, &v295);
      sub_1AC374CB4(v78, v79);
      v291 = sub_1AC377AC0;
      v292 = v85;
      sub_1AC374CC8(&v291, v79, &v294, &v293);
      v80 = v61;
      v81 = v61;
      if (v61)
      {
        v70 = 0;

        __break(1u);
      }

      else
      {
        v291 = sub_1AC377AC0;
        v292 = v87;
        sub_1AC374CC8(&v291, &v295, &v294, &v293);
        v68 = 0;
        v69 = 0;
        v291 = sub_1AC3936DC;
        v292 = v89;
        sub_1AC374CC8(&v291, &v295, &v294, &v293);
        v66 = 0;
        v67 = 0;
        _os_log_impl(&dword_1AC345000, v82, v83, "HearingTopLevelCell refreshCellContents dependencies not meet %@", v72, 0xCu);
        sub_1AC374D14(v74);
        sub_1AC374D14(v77);
        sub_1AC3B8314();

        v71 = v66;
      }
    }

    else
    {
      v62 = v230;

      v71 = v62;
    }

    v65 = v71;

    (*(v233 + 8))(v234, v231);
    return v65;
  }

  sub_1AC39B63C(&v282, __dst);
  v15 = sub_1AC3947B4();
  v194 = *v15;
  v195 = v15[1];

  v277[3] = MEMORY[0x1E69E6158];
  v277[0] = v194;
  v277[1] = v195;
  v198 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v277, MEMORY[0x1E69E6158]);
  v196 = *(v198 - 8);
  v197 = v196;
  v200 = &v64;
  v16 = MEMORY[0x1EEE9AC00](&v64);
  v199 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v197 + 16))(v16);
  v201 = sub_1AC3B8584();
  (*(v197 + 8))(v199, v198);
  v203 = [v214 __swift_objectForKeyedSubscript_];
  v202 = v203;
  swift_unknownObjectRelease();
  if (v203)
  {
    v193 = v202;
    v192 = v202;
    v191 = v247;
    sub_1AC3B8384();
    sub_1AC377D20(v191, v276);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v276, 0, sizeof(v276));
  }

  v18 = v228;
  v19 = v228[22];
  v228[27] = v228[23];
  v18[26] = v19;
  if (v278[3])
  {
    sub_1AC3B7434();
    if (swift_dynamicCast())
    {
      v190 = v247[4];
    }

    else
    {
      v190 = 0;
    }

    v188 = v190;
    __swift_destroy_boxed_opaque_existential_1(v277);
    v189 = v188;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v277);
    sub_1AC38FF40(v278);
    v189 = 0;
  }

  v187 = v189;
  if (!v189)
  {
    __swift_destroy_boxed_opaque_existential_1(__dst);

    goto LABEL_95;
  }

  v186 = v187;
  v175 = v187;
  v275 = v187;
  v20 = v229;
  v21 = sub_1AC394904();
  v176 = *v21;
  v177 = v21[1];

  v273[3] = MEMORY[0x1E69E6158];
  v273[0] = v176;
  v273[1] = v177;
  v180 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v273, MEMORY[0x1E69E6158]);
  v178 = *(v180 - 8);
  v179 = v178;
  v182 = &v64;
  v22 = MEMORY[0x1EEE9AC00](&v64);
  v181 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v179 + 16))(v22);
  v183 = sub_1AC3B8584();
  (*(v179 + 8))(v181, v180);
  v185 = [v214 __swift_objectForKeyedSubscript_];
  v184 = v185;
  swift_unknownObjectRelease();
  if (v185)
  {
    v174 = v184;
    v173 = v184;
    v172 = v248;
    sub_1AC3B8384();
    sub_1AC377D20(v172, v272);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v272, 0, sizeof(v272));
  }

  v24 = v228;
  v25 = v228[15];
  v228[20] = v228[16];
  v24[19] = v25;
  if (v274[3])
  {
    if (swift_dynamicCast())
    {
      v171 = v248[39];
    }

    else
    {
      v171 = 2;
    }

    v169 = v171;
    __swift_destroy_boxed_opaque_existential_1(v273);
    v170 = v169;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v273);
    sub_1AC38FF40(v274);
    v170 = 2;
  }

  v271 = v170;
  if (v170 == 2)
  {
    v168 = 0;
  }

  else
  {
    v168 = v271;
  }

  v167 = (v168 & 1) == 0;
  [v229 setAccessoryType_];

  v26 = v229;
  v27 = sub_1AC394904();
  v157 = *v27;
  v158 = v27[1];

  v269[3] = MEMORY[0x1E69E6158];
  v269[0] = v157;
  v269[1] = v158;
  v161 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v269, MEMORY[0x1E69E6158]);
  v159 = *(v161 - 8);
  v160 = v159;
  v163 = &v64;
  v28 = MEMORY[0x1EEE9AC00](&v64);
  v162 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v160 + 16))(v28);
  v164 = sub_1AC3B8584();
  (*(v160 + 8))(v162, v161);
  v166 = [v214 __swift_objectForKeyedSubscript_];
  v165 = v166;
  swift_unknownObjectRelease();
  if (v166)
  {
    v156 = v165;
    v155 = v165;
    v154 = v249;
    sub_1AC3B8384();
    sub_1AC377D20(v154, v268);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v268, 0, sizeof(v268));
  }

  v30 = v228;
  v31 = v228[8];
  v228[13] = v228[9];
  v30[12] = v31;
  if (v270[3])
  {
    if (swift_dynamicCast())
    {
      v153 = v249[39];
    }

    else
    {
      v153 = 2;
    }

    v151 = v153;
    __swift_destroy_boxed_opaque_existential_1(v269);
    v152 = v151;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v269);
    sub_1AC38FF40(v270);
    v152 = 2;
  }

  v267 = v152;
  if (v152 == 2)
  {
    v150 = 0;
  }

  else
  {
    v150 = v267;
  }

  if (v150)
  {
    v149 = 0;
  }

  else
  {
    v32 = v229;
    v33 = type metadata accessor for PlaceCardTypeCell();
    v266.receiver = v229;
    v266.super_class = v33;
    v148 = objc_msgSendSuper2(&v266, sel_selectionStyle);

    v149 = v148;
  }

  [v229 setSelectionStyle_];

  v139 = v288;
  v140 = v289;
  v143 = __dst;
  __swift_project_boxed_opaque_existential_0(__dst, v288);
  v141 = (*(v140 + 8))(v175, v139);
  v142 = v34;
  v264 = v141;
  v265 = v34;

  v144 = v288;
  v145 = v289;
  __swift_project_boxed_opaque_existential_0(v143, v288);
  (*(v145 + 8))(v175, v144);
  v146 = v35;
  v147 = v36;
  v262 = v35;
  v263 = v36;

  v37 = v244;
  if (v244)
  {
    v138 = v244;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v136 = v138;
  v133 = *MEMORY[0x1E69C58C8];
  v38 = v133;
  sub_1AC3B7EF4();
  v132 = v39;
  v134 = sub_1AC3B7EE4();

  v137 = [v136 propertyForKey_];
  v135 = v137;

  if (v137)
  {
    v131 = v135;
    v130 = v135;
    v129 = v250;
    sub_1AC3B8384();
    sub_1AC377D20(v129, v259);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v259, 0, sizeof(v259));
  }

  v40 = v228;
  v41 = *v228;
  v228[3] = v228[1];
  v40[2] = v41;
  if (v260[3])
  {
    sub_1AC386ADC();
    if (swift_dynamicCast())
    {
      v128 = v250[4];
    }

    else
    {
      v128 = 0;
    }

    v127 = v128;
  }

  else
  {
    sub_1AC38FF40(v260);
    v127 = 0;
  }

  v258 = v127;
  if (v127)
  {
    v261 = v258;
  }

  else
  {
    sub_1AC386ADC();
    v261 = sub_1AC396B90(1);
    if (v258)
    {
      sub_1AC35E758(&v258);
    }
  }

  v121 = v261;
  v257 = v261;
  v42 = [v261 BOOLValue];
  v122 = v42 ^ 1;
  v256 = v42 ^ 1;
  sub_1AC3B7534();

  sub_1AC3B75D4();
  v123 = objc_opt_self();
  v124 = *MEMORY[0x1E69DDCF8];
  v43 = v124;
  v126 = [v123 _preferredFontForTextStyle_weight_];
  v125 = v126;

  if (v126)
  {
    v120 = v125;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v117 = v120;
  v118 = &v255;
  v119 = sub_1AC3B7594();
  sub_1AC3B7554();
  v119(v118, 0);
  if (v122)
  {
    v116 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    sub_1AC3B75A4();
    v115 = sub_1AC3B7564();
    (*(v238 + 8))(v239, v236);
    v116 = v115;
  }

  v108 = v116;
  v109 = &v254;
  v110 = sub_1AC3B7594();
  sub_1AC3B7574();
  v110(v109, 0);

  sub_1AC3B7544();
  v111 = objc_opt_self();
  v112 = *MEMORY[0x1E69DDD00];
  v44 = v112;
  v114 = [v111 _preferredFontForTextStyle_weight_];
  v113 = v114;

  if (v114)
  {
    v107 = v113;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v104 = v107;
  v105 = &v253;
  v106 = sub_1AC3B75B4();
  sub_1AC3B7554();
  v106(v105, 0);
  if (v122)
  {
    v103 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    v103 = [objc_opt_self() secondaryLabelColor];
  }

  v98 = v103;
  v99 = &v252;
  v100 = sub_1AC3B75B4();
  sub_1AC3B7574();
  v100(v99, 0);
  sub_1AC3B75C4();
  v45 = v229;
  v46 = v229;
  [v45 setUserInteractionEnabled_];

  v47 = v45;
  v251[3] = v240;
  v251[4] = MEMORY[0x1E69DC110];
  v101 = v251;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v251);
  (*(v242 + 16))(boxed_opaque_existential_1, v243, v240);
  MEMORY[0x1AC5B25D0](v101);

  (*(v242 + 8))(v243, v240);

  __swift_destroy_boxed_opaque_existential_1(__dst);
  return v230;
}

id PlaceCardTypeCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceCardTypeCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC396CAC@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555238);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v3 - v4;
  v8 = v1;
  sub_1AC39B6DC(v1, (&v3 - v4));
  sub_1AC3B76C4();
  return sub_1AC39B7B0(v7);
}

uint64_t sub_1AC396DA8(uint64_t a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555238) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v5 = v4 - v4[0];
  v8 = v2;
  v7 = v1;
  sub_1AC39B6DC(v2, (v4 - v4[0]));
  sub_1AC39B84C(v5, v4[1]);
  return sub_1AC39B7B0(v6);
}

uint64_t sub_1AC396E60()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard() + 20));

  return v2;
}

uint64_t sub_1AC396EA4(uint64_t a1)
{

  *(v1 + *(type metadata accessor for ModernPlaceCard() + 20)) = a1;
}

uint64_t sub_1AC396F04()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard() + 24));

  return v2;
}

uint64_t sub_1AC396F54(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ModernPlaceCard() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC396FD0()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard() + 28));

  return v2;
}

uint64_t sub_1AC397020(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ModernPlaceCard() + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC39709C()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard() + 32));

  return v2;
}

uint64_t sub_1AC3970EC(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ModernPlaceCard() + 32));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC397168()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard() + 36));

  return v2;
}

uint64_t sub_1AC3971B8(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ModernPlaceCard() + 36));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC397234()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard() + 40));

  return v2;
}

uint64_t sub_1AC397284(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ModernPlaceCard() + 40));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t ModernPlaceCard.init(image:title:subtitle:buttonTitle:buttonAction:xButtonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a9;
  v47 = a1;
  v35 = a2;
  v46 = a3;
  v36 = a4;
  v45 = a5;
  v37 = a6;
  v44 = a7;
  v38 = a8;
  v43 = a10;
  v40 = a11;
  v42 = a12;
  v39 = type metadata accessor for ModernPlaceCard();
  MEMORY[0x1EEE9AC00](v47);
  v48 = (&v34 - v12);
  v60 = &v34 - v12;
  v59 = v13;
  v57 = v35;
  v58 = v14;
  v55 = v15;
  v56 = v16;
  v53 = v17;
  v54 = v18;
  v51 = v19;
  v52 = a10;
  v49 = a11;
  v50 = v20;
  swift_getKeyPath();
  sub_1AC3B76E4();

  *(v48 + v39[5]) = v47;

  v21 = v46;
  v22 = (v48 + v39[6]);
  *v22 = v35;
  v22[1] = v21;

  v23 = v45;
  v24 = (v48 + v39[7]);
  *v24 = v36;
  v24[1] = v23;

  v25 = v44;
  v26 = (v48 + v39[8]);
  *v26 = v37;
  v26[1] = v25;

  v27 = v43;
  v28 = (v48 + v39[9]);
  *v28 = v38;
  v28[1] = v27;

  v29 = v48;
  v30 = v41;
  v31 = v42;
  v32 = (v48 + v39[10]);
  *v32 = v40;
  v32[1] = v31;
  sub_1AC39B9AC(v29, v30);

  return sub_1AC39BC04(v48);
}

uint64_t ModernPlaceCard.body.getter@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v31 = sub_1AC39BD34;
  v49 = 0;
  v48 = 0;
  v30 = 0;
  v10 = (*(*(sub_1AC3B77E4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = v7 - v10;
  v12 = sub_1AC3B7754();
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v14 = v7 - v13;
  v39 = sub_1AC3B76A4();
  v35 = *(v39 - 8);
  v36 = v39 - 8;
  v15 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v37 = v7 - v15;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7 - v15);
  v38 = v7 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555248);
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v29 = v7 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555250);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v7 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555258);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v7 - v23;
  v25 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7 - v23);
  v26 = v7 - v25;
  v27 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7 - v25);
  v28 = v7 - v27;
  v49 = v7 - v27;
  v48 = v1;
  v32 = &v43;
  v44 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555260);
  v34 = sub_1AC39BD3C();
  sub_1AC3802C0();
  sub_1AC3B7D84();
  sub_1AC396CAC(v38);
  (*(v35 + 104))(v37, *MEMORY[0x1E697DBA8], v39);
  v42 = sub_1AC3B7694();
  v41 = *(v35 + 8);
  v40 = v35 + 8;
  v41(v37, v39);
  v41(v38, v39);
  if (v42)
  {
    v8 = [objc_opt_self() secondarySystemBackgroundColor];
  }

  else
  {
    v8 = [objc_opt_self() systemBackgroundColor];
  }

  v5 = sub_1AC3B7C14();
  v7[3] = &v47;
  v47 = v5;
  v7[1] = sub_1AC39BDC4();
  v7[0] = MEMORY[0x1E69815C0];
  v7[2] = MEMORY[0x1E6981568];
  sub_1AC399DD8();
  sub_1AC3B7AA4();
  sub_1AC367428();
  sub_1AC34B2BC(v29);
  sub_1AC399E00(v11);
  sub_1AC3B7744();
  v7[4] = sub_1AC39BE4C();
  v7[5] = sub_1AC39BF7C();
  v46 = sub_1AC399E6C();
  v45 = v46;
  sub_1AC3B7C04();
  sub_1AC39BFFC(v14);
  sub_1AC34B4EC(v21);
  v7[6] = sub_1AC39C078();
  sub_1AC35745C(v26, v22, v28);
  sub_1AC34B744(v26);
  sub_1AC34BA18(v28, v24);
  sub_1AC35745C(v24, v22, v9);
  sub_1AC34B744(v24);
  return sub_1AC34B744(v28);
}

uint64_t sub_1AC397C2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v32 = a1;
  v21 = sub_1AC39C524;
  v39 = sub_1AC39C850;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v31 = type metadata accessor for ModernPlaceCard();
  v13 = *(v31 - 8);
  v35 = v13;
  v36 = *(v13 + 64);
  v14 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v38 = &v13 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB554BC0);
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v15 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v13 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552B8);
  v16 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v53 = &v13 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v16);
  v55 = &v13 - v17;
  v66 = &v13 - v17;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555350);
  v18 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v13 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555310);
  v19 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v54 = &v13 - v19;
  v20 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v13 - v20;
  v65 = &v13 - v20;
  v64 = v5;
  v22 = &v57;
  v58 = v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555358);
  v24 = sub_1AC39C52C();
  sub_1AC3647AC();
  sub_1AC3B7D44();
  sub_1AC3B7684();
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  sub_1AC39C5B4();
  sub_1AC3B7BD4();
  sub_1AC34C25C(v30);
  v49 = sub_1AC39C63C();
  sub_1AC35745C(v54, v47, v56);
  sub_1AC34C25C(v54);
  v10 = (v32 + *(v31 + 32));
  v33 = *v10;
  v34 = v10[1];

  v41 = v63;
  v63[0] = v33;
  v63[1] = v34;
  sub_1AC39B9AC(v32, v38);
  v37 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v40 = swift_allocObject();
  sub_1AC39C6E0(v38, (v40 + v37));
  sub_1AC35FEAC();
  sub_1AC3B7D34();
  v11 = [objc_opt_self() systemBlueColor];
  v42 = sub_1AC3B7C14();
  sub_1AC39C8B4();
  View.solariumOvalTintedButton(_:)(v42, v46);

  (*(v43 + 8))(v45, v46);
  v50 = sub_1AC39C93C();
  sub_1AC35745C(v53, v48, v55);
  sub_1AC39CA5C(v53);
  sub_1AC34C59C(v56, v54);
  v52 = v62;
  v62[0] = v54;
  sub_1AC39CAEC(v55, v53);
  v62[1] = v53;
  v61[0] = v47;
  v61[1] = v48;
  v59 = v49;
  v60 = v50;
  sub_1AC394250(v52, 2uLL, v61, v51);
  sub_1AC39CA5C(v53);
  sub_1AC34C25C(v54);
  sub_1AC39CA5C(v55);
  return sub_1AC34C25C(v56);
}

uint64_t sub_1AC3982D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v61 = a1;
  v59 = MEMORY[0x1E697CEC0];
  v36 = sub_1AC39CCB4;
  v62 = sub_1AC39CEDC;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555390);
  v17 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v17 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555300);
  v18 = (*(*(v77 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v17 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555308);
  v19 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83);
  v89 = &v17 - v19;
  v20 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v19);
  v92 = &v17 - v20;
  v126 = &v17 - v20;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555298);
  v81 = *(v93 - 8);
  v82 = v93 - 8;
  v21 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v17 - v21;
  v22 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v21);
  v96 = &v17 - v22;
  v125 = &v17 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555288);
  v79 = *(v98 - 8);
  v80 = v98 - 8;
  v23 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v91 = &v17 - v23;
  v24 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v17 - v24;
  v124 = &v17 - v24;
  v123 = v6;
  v69 = 0;
  v25 = *(v61 + *(type metadata accessor for ModernPlaceCard() + 20));

  v28 = v117;
  v117[0] = v25;
  v26 = MEMORY[0x1E6981910];
  v27 = MEMORY[0x1E6981900];
  sub_1AC364ACC();
  v46 = 0;
  sub_1AC3B7BB4();
  sub_1AC367428();
  v33 = v111;
  v111[0] = v117[1];
  v111[1] = v117[2];
  v66 = 1;
  v70 = 1;
  v112 = v118 & 1;
  v113 = v119;
  v114 = v120 & 1;
  v115 = v121;
  v116 = v122;
  v60 = 1;
  v47 = MEMORY[0x1E6980D50];
  v30 = sub_1AC3B8574();
  v29 = v7;
  v8 = sub_1AC3B7924();
  v9 = v30;
  *v29 = v8;
  sub_1AC36EE1C();
  v31 = v9;
  v54 = sub_1AC39CB9C();
  sub_1AC3B8394();
  v32 = v110;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5553A0);
  v35 = sub_1AC39CC14();
  sub_1AC3B7B04();
  sub_1AC367428();
  v109[25] = v34;
  v109[26] = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC35745C(v91, v98, v97);
  v100 = *(v79 + 8);
  v99 = v79 + 8;
  v100(v91, v98);
  v39 = sub_1AC3B7844();
  v37 = v102;
  v102[2] = v61;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5553B0);
  sub_1AC39CCBC();
  v40 = &v108;
  sub_1AC3B7D84();
  v41 = v127;
  v42 = 88;
  memcpy(v127, v40, sizeof(v127));
  v48 = v107;
  memcpy(v107, v127, sizeof(v107));
  v43 = sub_1AC3B7E14();
  v44 = v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5553C0);
  sub_1AC39CD44();
  v49 = v109;
  v67 = 0x7FF0000000000000;
  sub_1AC3B7BC4();
  sub_1AC39CDCC(v48);
  v50 = __dst;
  v51 = 200;
  memcpy(__dst, v49, sizeof(__dst));
  v56 = v106;
  memcpy(v106, __dst, sizeof(v106));
  v53 = sub_1AC3B8574();
  v52 = v11;
  *v11 = sub_1AC3B7924();
  sub_1AC36EE1C();
  sub_1AC3B8394();
  v55 = v105;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5553D0);
  v58 = sub_1AC39CE38();
  sub_1AC3B7B04();
  sub_1AC39CDCC(v56);
  v104[3] = v57;
  v104[4] = v58;
  v85 = swift_getOpaqueTypeConformance2();
  sub_1AC35745C(v90, v93, v96);
  v95 = *(v81 + 8);
  v94 = v81 + 8;
  v95(v90, v93);
  v65 = sub_1AC3B7854();
  v63 = v101;
  v101[2] = v61;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5553E0);
  sub_1AC39CEE4();
  sub_1AC3B7D84();
  v71 = sub_1AC39CF6C();
  sub_1AC364ACC();
  sub_1AC3B7BC4();
  sub_1AC39CFF4(v72);
  sub_1AC3B7684();
  v73 = v12;
  v74 = v13;
  v75 = v14;
  v76 = v15;
  sub_1AC39D080();
  sub_1AC3B7BD4();
  sub_1AC39CFF4(v78);
  v86 = sub_1AC39D124();
  sub_1AC35745C(v89, v83, v92);
  sub_1AC39CFF4(v89);
  (*(v79 + 16))(v91, v97, v98);
  v88 = v104;
  v104[0] = v91;
  (*(v81 + 16))(v90, v96, v93);
  v104[1] = v90;
  sub_1AC39D1C8(v92, v89);
  v104[2] = v89;
  v103[0] = v98;
  v103[1] = v93;
  v103[2] = v83;
  v102[4] = OpaqueTypeConformance2;
  v102[5] = v85;
  v102[6] = v86;
  sub_1AC394250(v88, 3uLL, v103, v87);
  sub_1AC39CFF4(v89);
  v95(v90, v93);
  v100(v91, v98);
  sub_1AC39CFF4(v92);
  v95(v96, v93);
  return (v100)(v97, v98);
}

uint64_t sub_1AC398D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v111, 0, 32);
  memset(v84, 0, 32);
  v112 = a1;
  v39 = type metadata accessor for ModernPlaceCard();
  v2 = (a1 + *(v39 + 24));
  v25 = *v2;
  v26 = v2[1];

  v109 = v25;
  v110 = v26;
  sub_1AC35FEAC();
  v105 = sub_1AC3B7A64();
  v106 = v3;
  v107 = v4;
  v108 = v5;
  v27 = v105;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  sub_1AC3B7964();
  sub_1AC3B79A4();
  sub_1AC3B79C4();

  v101 = v27;
  v102 = v28;
  v103 = v29 & 1;
  v104 = v30;
  v97 = sub_1AC3B7A44();
  v98 = v6;
  v99 = v7;
  v100 = v8;
  v33 = v97;
  v31 = v6;
  v32 = v7;
  v34 = v8;

  sub_1AC364A88(v27, v28, v29 & 1);

  v9 = [objc_opt_self() labelColor];
  v96 = sub_1AC3B7C14();
  v92 = v33;
  v93 = v31;
  v94 = v32 & 1;
  v95 = v34;
  v88 = sub_1AC3B7A34();
  v89 = v10;
  v90 = v11;
  v91 = v12;
  v35 = v88;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  sub_1AC367428();
  sub_1AC364A88(v33, v31, v32 & 1);

  v85[0] = v35;
  v85[1] = v36;
  v86 = v37 & 1;
  v87 = v38;
  v52 = MEMORY[0x1E6981148];
  sub_1AC35745C(v85, MEMORY[0x1E6981148], v111);
  sub_1AC367A04(v85);
  v13 = (a1 + *(v39 + 28));
  v41 = *v13;
  v42 = v13[1];

  v82 = v41;
  v83 = v42;
  v78 = sub_1AC3B7A64();
  v79 = v14;
  v80 = v15;
  v81 = v16;
  v43 = v14;
  v44 = v15;
  v45 = v16;
  sub_1AC3B79D4();
  sub_1AC3B7994();
  sub_1AC3B79C4();

  v74 = v78;
  v75 = v43;
  v76 = v44 & 1;
  v77 = v45;
  v70 = sub_1AC3B7A44();
  v71 = v17;
  v72 = v18;
  v73 = v19;
  v46 = v17;
  v47 = v18;
  v48 = v19;

  sub_1AC364A88(v78, v43, v44 & 1);

  v20 = [objc_opt_self() secondaryLabelColor];
  v69 = sub_1AC3B7C14();
  v65 = v70;
  v66 = v46;
  v67 = v47 & 1;
  v68 = v48;
  v61 = sub_1AC3B7A34();
  v62 = v21;
  v63 = v22;
  v64 = v23;
  v49 = v21;
  v50 = v22;
  v51 = v23;
  sub_1AC367428();
  sub_1AC364A88(v65, v46, v47 & 1);

  v58[0] = v61;
  v58[1] = v49;
  v59 = v50 & 1;
  v60 = v51;
  sub_1AC35745C(v58, v52, v84);
  sub_1AC367A04(v58);
  sub_1AC3682D4(v111, v56);
  v57[0] = v56;
  sub_1AC3682D4(v84, v55);
  v57[1] = v55;
  v54[0] = v52;
  v54[1] = v52;
  sub_1AC394250(v57, 2uLL, v54, a2);
  sub_1AC367A04(v55);
  sub_1AC367A04(v56);
  sub_1AC367A04(v84);
  return sub_1AC367A04(v111);
}

uint64_t sub_1AC399318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v12 = a1;
  v21 = 0;
  v23 = sub_1AC39D338;
  v20 = sub_1AC399790;
  v48 = 0;
  v47 = 0;
  v25 = &v45;
  v45 = 0;
  v46 = 0;
  v24 = 0;
  v2 = type metadata accessor for ModernPlaceCard();
  v10 = *(v2 - 8);
  v15 = v10;
  v16 = *(v10 + 64);
  v11 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v18 = &v9 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552A8);
  v26 = *(v34 - 8);
  v27 = v34 - 8;
  v13 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v9 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v9 - v14;
  v48 = &v9 - v14;
  v47 = v5;
  sub_1AC39B9AC(v5, v6);
  v17 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  sub_1AC39C6E0(v18, (v19 + v17));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555408);
  sub_1AC39D39C();
  sub_1AC3B7D24();
  v29 = sub_1AC39D440();
  sub_1AC35745C(v32, v34, v33);
  v36 = *(v26 + 8);
  v35 = v26 + 8;
  v36(v32, v34);
  v43 = sub_1AC3B7D64();
  v44 = v7 & 1;
  v28 = MEMORY[0x1E6981840];
  v30 = MEMORY[0x1E6981838];
  sub_1AC35745C(&v43, MEMORY[0x1E6981840], v25);
  (*(v26 + 16))(v32, v33, v34);
  v42[0] = v32;
  v40 = v45;
  v41 = v46;
  v42[1] = &v40;
  v39[0] = v34;
  v39[1] = v28;
  v37 = v29;
  v38 = v30;
  sub_1AC394250(v42, 2uLL, v39, v31);
  v36(v32, v34);
  return (v36)(v33, v34);
}

uint64_t sub_1AC39971C(uint64_t a1)
{
  v3 = *(a1 + *(type metadata accessor for ModernPlaceCard() + 40));

  v3(v1);
}

const void *sub_1AC399790@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554958);
  v15 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v15 - v15;
  v30 = 0;
  v26 = sub_1AC3B7C94();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v16 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v15 - v16;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DF0);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v18 = &v15 - v17;
  v31 = 1;
  sub_1AC3B7F54();
  v19 = sub_1AC3B7C84();
  sub_1AC3B7864();
  v3 = *(*(sub_1AC3B7874() - 8) + 56);
  v41 = 0;
  v3(v18);
  v28 = sub_1AC3B7CB4();
  sub_1AC388744(v18);

  v20 = sub_1AC399CE4();
  v21 = v4;
  v22 = v5;
  v23 = v6;
  sub_1AC399CF8(v27);
  v29 = sub_1AC3B7CC4();
  (*(v24 + 8))(v27, v26);

  v35 = v62;
  v62[0] = v29;
  sub_1AC3B7984();
  v32 = v7;
  v8 = sub_1AC3B7974();
  (*(*(v8 - 8) + 56))(v33, v31);
  v34 = sub_1AC3B79B4();
  sub_1AC367A4C(v33);
  sub_1AC3B7B84();

  sub_1AC367428();
  v40 = v61;
  v61[0] = v62[1];
  v61[1] = v62[2];
  v61[2] = v62[3];
  v36 = 0x1E69DC000uLL;
  v9 = [objc_opt_self() tertiaryLabelColor];
  v10 = sub_1AC3B7C14();
  v39 = &v60;
  v60 = v10;
  v11 = [objc_opt_self() quaternaryLabelColor];
  v12 = sub_1AC3B7C14();
  v38 = &v59;
  v59 = v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DF8);
  v13 = sub_1AC3887EC();
  MEMORY[0x1AC5B1E90](v63, v39, v38, v37, MEMORY[0x1E69815C0], MEMORY[0x1E69815C0], v13, MEMORY[0x1E6981568]);
  sub_1AC367428();
  sub_1AC367428();
  sub_1AC361CB4();
  v44 = v58;
  v58[0] = v63[0];
  v58[1] = v63[1];
  v58[2] = v63[2];
  v58[3] = v63[3];
  v58[4] = v63[4];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554E08);
  v43 = sub_1AC388890();
  sub_1AC364ACC();
  v45 = &v64;
  sub_1AC3B7BB4();
  sub_1AC368278();
  v46 = __dst;
  v49 = 88;
  memcpy(__dst, v45, sizeof(__dst));
  v47 = v57;
  memcpy(v57, __dst, sizeof(v57));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555408);
  v52 = sub_1AC39D39C();
  v54 = v65;
  sub_1AC35745C(v47, v51, v65);
  sub_1AC368278();
  v48 = v67;
  memcpy(v67, v54, v49);
  sub_1AC39D4C8(v48, v56);
  v53 = v55;
  memcpy(v55, v48, v49);
  sub_1AC35745C(v53, v51, v50);
  sub_1AC368278();
  result = v54;
  sub_1AC368278();
  return result;
}

uint64_t sub_1AC399CF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6981630];
  v1 = sub_1AC3B7C94();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1AC399D64(uint64_t a1)
{
  v3 = *(a1 + *(type metadata accessor for ModernPlaceCard() + 36));

  v3(v1);
}

uint64_t sub_1AC399E00@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E697F468];
  v1 = sub_1AC3B77E4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}