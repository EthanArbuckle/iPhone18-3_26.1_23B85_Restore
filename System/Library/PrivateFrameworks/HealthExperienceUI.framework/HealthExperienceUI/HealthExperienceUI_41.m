uint64_t sub_1BA363E58(void *a1)
{
  v1 = a1;
  v2 = sub_1BA3656C0(type metadata accessor for HealthDetailsDemographicsCell);

  return v2 & 1;
}

void sub_1BA363EA0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1BA3657B8(a3, type metadata accessor for HealthDetailsDemographicsCell, type metadata accessor for HealthDetailsDemographicsCell);
}

uint64_t sub_1BA363F20(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = sub_1BA4A7AA8();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = qword_1EBBF11A0;
  swift_beginAccess();
  sub_1BA367CC0(v1 + v14, v36, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v36[3])
  {
    return sub_1B9F444C4(v36, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  type metadata accessor for HealthDetailsDemographicsItem();
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v35;
    v17 = [a1 text];
    if (v17)
    {
      v33 = v6;
      v18 = v4;
      v19 = v13;
      v20 = v16;
      v21 = v10;
      v22 = v17;
      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v25 = v24;

      v10 = v21;
      v16 = v20;
      v13 = v19;
      v4 = v18;
      v6 = v33;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v36[0] = v23;
    v36[1] = v25;
    sub_1B9F216C8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (swift_dynamicCast())
    {
      v26 = *(v10 + 56);
      v26(v9, 0, 1, v3);
      (*(v10 + 32))(v13, v9, v3);
      (*(v10 + 16))(v6, v13, v3);
      v26(v6, 0, 1, v3);
      v27 = *(*v16 + 152);
      swift_beginAccess();
      (*(v34 + 40))(v16 + v27, v6, v4);
      swift_endAccess();
      v28 = [v1 superview];
      if (v28)
      {
        v29 = v28;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = [v30 collectionViewLayout];

          [v31 invalidateLayout];
        }

        else
        {
        }
      }

      else
      {
      }

      return (*(v10 + 8))(v13, v3);
    }

    else
    {

      (*(v10 + 56))(v9, 1, 1, v3);
      return (*(v34 + 8))(v9, v4);
    }
  }

  return result;
}

void sub_1BA3643D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1BA363F20(v4);
}

void sub_1BA364458(uint64_t a1)
{
  sub_1B9F444C4(a1 + qword_1EBBF11A0, &qword_1EDC6E1A0, sub_1B9FCD918);
  v2 = *(a1 + qword_1EBBF11A8);
}

uint64_t (*sub_1BA36452C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1BA363138(v2);
  return sub_1B9FCDCF4;
}

uint64_t sub_1BA364604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1BA367CC0(v2 + v4, a2, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA364694(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v6);
  v7 = swift_endAccess();
  a3(v7);
  return sub_1B9F444C4(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t (*sub_1BA364720(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA364784;
}

uint64_t sub_1BA36479C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

char *sub_1BA3647E0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[qword_1EBBF1230];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = qword_1EBBF1238;
  type metadata accessor for TitleDetailLabelsWithPickerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [*(*&v11[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView] + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField) setUserInteractionEnabled_];
  *&v4[v10] = v11;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for HealthDetailsDemographicsCellWithPicker();
  v12 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA3649B8();
  sub_1BA364EB8();
  v13 = qword_1EBBF1238;
  [*(*&v12[qword_1EBBF1238] + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker) setDelegate_];
  [*(*&v12[v13] + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker) setDataSource_];

  return v12;
}

void sub_1BA3649B8()
{
  v1 = [v0 contentView];
  [v1 addSubview_];
}

uint64_t sub_1BA364A1C()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = sub_1BA4A7AA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = qword_1EBBF1230;
  swift_beginAccess();
  sub_1BA367CC0(v0 + v7, v26, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v27)
  {
    return sub_1B9F444C4(v26, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  type metadata accessor for HealthDetailsDemographicsItem();
  result = swift_dynamicCast();
  if (result)
  {
    v24 = v4;
    v9 = v25;
    v10 = *(*(*(v0 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel);

    v11 = sub_1BA4A6758();

    [v10 setText_];

    v12 = *(*(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField);
    sub_1BA29518C();
    v13 = sub_1BA4A6758();

    [v12 setText_];

    v14 = *(*(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField);
    v15 = type metadata accessor for HealthDetailsDemographicsCellWithPicker();
    v16 = v14;
    WitnessTable = swift_getWitnessTable();
    if (sub_1BA36276C(v15, WitnessTable))
    {
      v18 = HKHealthKeyColor();
    }

    else
    {
      v18 = [objc_opt_self() labelColor];
    }

    v19 = v24;
    v20 = v18;
    [v16 setTextColor_];

    [*(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker) reloadAllComponents];
    sub_1BA365290();
    v21 = *(*v9 + 152);
    swift_beginAccess();
    (*(v19 + 16))(v6, v9 + v21, v3);
    if ((*(*(v2 - 8) + 48))(v6, 1, v2) == 1)
    {

      return (*(v19 + 8))(v6, v3);
    }

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
    }

    v22 = v25;
    if (v25 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v25 <= 0x7FFFFFFF)
    {
      v23 = *(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker);
      [v23 selectRow:v22 inColumn:0 animated:0];
    }

    __break(1u);
  }

  return result;
}

void sub_1BA364EB8()
{
  v1 = [v0 heightAnchor];
  v25 = [v1 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v2) = 1148829696;
  [v25 setPriority_];
  [v25 setActive_];
  v3 = objc_opt_self();
  sub_1B9F216C8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5880;
  v5 = [*&v0[qword_1EBBF1238] leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:20.0];
  *(v4 + 32) = v8;
  v9 = [*&v0[qword_1EBBF1238] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintGreaterThanOrEqualToAnchor:v11 constant:20.0];
  *(v4 + 40) = v12;
  v13 = [v0 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [*&v0[qword_1EBBF1238] bottomAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15 constant:20.0];

  *(v4 + 48) = v16;
  v17 = [*&v0[qword_1EBBF1238] centerYAnchor];
  v18 = [v0 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v4 + 56) = v19;
  v20 = [v0 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [*&v0[qword_1EBBF1238] trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:12.0];

  *(v4 + 64) = v23;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v24 = sub_1BA4A6AE8();

  [v3 activateConstraints_];

  sub_1BA365290();
}

uint64_t sub_1BA365290()
{
  sub_1B9F0D658(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v18 = &v17 - v2;
  v3 = sub_1BA4A3FB8();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A3F18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + qword_1EBBF1238);
  v11 = sub_1BA3658F4();
  v12 = sub_1BA3667E8();
  [v12 setActive_];

  v13 = type metadata accessor for HealthDetailsDemographicsCellWithPicker();
  WitnessTable = swift_getWitnessTable();
  if ((sub_1BA36276C(v13, WitnessTable) & 1) == 0)
  {
    sub_1B9F0D658(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    *(swift_allocObject() + 16) = xmmword_1BA4B5480;
    (*(v7 + 104))(v9, *MEMORY[0x1E69DBF28], v6);
    v15 = sub_1BA4A3F48();
    (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
    sub_1BA4A3FA8();
    sub_1BA4A3F78();
    (*(v19 + 8))(v5, v20);
    (*(v7 + 8))(v9, v6);
  }

  return sub_1BA4A75F8();
}

uint64_t sub_1BA365678(void *a1)
{
  v1 = a1;
  v2 = sub_1BA3656C0(type metadata accessor for HealthDetailsDemographicsCellWithPicker);

  return v2 & 1;
}

id sub_1BA3656C0(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_isSelected);
}

void sub_1BA365738(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1BA3657B8(a3, type metadata accessor for HealthDetailsDemographicsCellWithPicker, type metadata accessor for HealthDetailsDemographicsCellWithPicker);
}

uint64_t sub_1BA3657B8(char a1, uint64_t (*a2)(void, void, void), uint64_t (*a3)(void, void, void))
{
  v6 = a2(0, *((*MEMORY[0x1E69E7D40] & *v3) + 0x50), *((*MEMORY[0x1E69E7D40] & *v3) + 0x58));
  v8.receiver = v3;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel_setSelected_, a1 & 1);
  return sub_1BA36585C(a3);
}

uint64_t sub_1BA36585C(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  WitnessTable = swift_getWitnessTable();

  return sub_1BA362BB8(v2, WitnessTable);
}

uint64_t sub_1BA3658F4()
{
  v1 = qword_1EBBF1230;
  swift_beginAccess();
  sub_1BA367CC0(v0 + v1, v5, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v6)
  {
    sub_1B9FCD918();
    type metadata accessor for HealthDetailsDemographicsItem();
    if (swift_dynamicCast())
    {
      v2 = *(v4 + *(*v4 + 160));

      if (v2)
      {
        return 1;
      }
    }
  }

  else
  {
    sub_1B9F444C4(v5, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  return 0;
}

uint64_t sub_1BA365A34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1BA367198();

  return v6;
}

id sub_1BA365A80(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1BA3672C0(a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1BA4A6758();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1BA365B10(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1BA36765C(a4);
}

id sub_1BA365B94(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BA365C0C(uint64_t a1)
{
  sub_1B9F444C4(a1 + qword_1EBBF1230, &qword_1EDC6E1A0, sub_1B9FCD918);
  v2 = *(a1 + qword_1EBBF1238);
}

uint64_t (*sub_1BA365C90(uint64_t *a1))()
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
  *(v2 + 32) = sub_1BA364720(v2);
  return sub_1B9FCF2C4;
}

id sub_1BA365D5C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setScrollEnabled_];
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  [v0 setTextContainerInset_];
  [v0 setTextAlignment_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  [v0 setFont_];

  v4 = [v0 textContainer];
  [v4 setLineBreakMode_];

  v5 = [v0 textContainer];
  [v5 setHeightTracksTextView_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v6 setAlignment_];
  sub_1B9F0D658(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v9 = v8;
  v10 = [v1 secondaryLabelColor];
  v11 = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 40) = v10;
  v12 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC5E340);
  *(inited + 80) = v6;
  v13 = v12;
  v14 = v6;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v16 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v17 = sub_1BA4A6618();

  v18 = [v15 initWithString:v16 attributes:v17];

  [v0 setAttributedPlaceholder_];
  return v0;
}

char *sub_1BA3660EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setNumberOfLines_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v11 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  [v10 setFont_];

  *&v4[v9] = v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField;
  *&v4[v12] = sub_1BA365D5C();
  v18.receiver = v4;
  v18.super_class = type metadata accessor for TitleDetailLabelsView();
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  sub_1BA3662B0(v16);

  return v15;
}

void sub_1BA3662B0(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel];
  LODWORD(a1) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:a1];
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v3];
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField];
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v5];
  v34 = objc_opt_self();
  sub_1B9F216C8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4C27B0;
  v7 = [v2 leadingAnchor];
  v8 = [v1 &selRef__totalDistance + 1];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v2 topAnchor];
  v11 = [v1 topAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v1 bottomAnchor];
  v14 = [v2 bottomAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v2 centerYAnchor];
  v17 = [v1 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  v19 = [v4 leadingAnchor];
  v20 = [v2 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v6 + 64) = v21;
  v22 = [v4 topAnchor];
  v23 = [v1 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v6 + 72) = v24;
  v25 = [v4 trailingAnchor];
  v26 = [v1 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v6 + 80) = v27;
  v28 = [v4 bottomAnchor];
  v29 = [v1 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v6 + 88) = v30;
  v31 = [v4 centerYAnchor];
  v32 = [v1 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v6 + 96) = v33;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v35 = sub_1BA4A6AE8();

  [v34 activateConstraints_];
}

id sub_1BA3667E8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView____lazy_storage___pickerHeightZeroConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView____lazy_storage___pickerHeightZeroConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView____lazy_storage___pickerHeightZeroConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker) heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1BA366890(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView;
  type metadata accessor for TitleDetailLabelsView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCD78]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView____lazy_storage___pickerHeightZeroConstraint] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TitleDetailLabelsWithPickerView();
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  sub_1BA366A14();

  return v15;
}

void sub_1BA366A14()
{
  v25 = objc_opt_self();
  sub_1B9F216C8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4C27A0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v1 + 40) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v1 + 48) = v11;
  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker];
  v13 = [v12 topAnchor];
  v14 = [v2 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  v16 = [v12 leadingAnchor];
  v17 = [v0 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v1 + 64) = v18;
  v19 = [v12 trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v1 + 72) = v21;
  v22 = [v12 bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v1 + 80) = v24;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v26 = sub_1BA4A6AE8();

  [v25 activateConstraints_];
}

id sub_1BA366DBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA366E74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA36276C(a2, a3);
  if (result)
  {
    (*(a3 + 32))(v9, a2, a3);
    if (v9[3])
    {
      sub_1B9FCD918();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for HealthDetailsDemographicsItem();
      result = swift_dynamicCast();
      if (result)
      {
        type metadata accessor for HealthDetailsViewController();
        if (swift_dynamicCastClass())
        {
          v7 = a1;
          _s18HealthExperienceUI0A21DetailsViewControllerC10dataSource3forAA021CompoundSectionedDataH0CSo06UIViewF0C_tF_0();

          sub_1BA2F0D34(v8);
        }
      }
    }

    else
    {
      return sub_1B9F444C4(v9, &qword_1EDC6E1A0, sub_1B9FCD918);
    }
  }

  return result;
}

void sub_1BA367008()
{
  v1 = v0 + qword_1EBBF11A0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = qword_1EBBF11A8;
  type metadata accessor for TitleDetailLabelsView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA3670BC()
{
  v1 = v0 + qword_1EBBF1230;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = qword_1EBBF1238;
  type metadata accessor for TitleDetailLabelsWithPickerView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [*(*&v3[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView] + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField) setUserInteractionEnabled_];
  *(v0 + v2) = v3;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA367198()
{
  v1 = qword_1EBBF1230;
  swift_beginAccess();
  sub_1BA367CC0(v0 + v1, v6, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v7)
  {
    sub_1B9F444C4(v6, &qword_1EDC6E1A0, sub_1B9FCD918);
    return 0;
  }

  sub_1B9FCD918();
  type metadata accessor for HealthDetailsDemographicsItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v5 + 48);
  v3 = *(v5 + 56);

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA3672C0(uint64_t a1)
{
  v19[0] = a1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v3 = sub_1BA4A7AA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  v14 = qword_1EBBF1230;
  swift_beginAccess();
  sub_1BA367CC0(v1 + v14, v20, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v20[3])
  {
    sub_1B9FCD918();
    type metadata accessor for HealthDetailsDemographicsItem();
    if (swift_dynamicCast())
    {
      v15 = v19[1];
      v20[0] = v19[0];
      if (swift_dynamicCast())
      {
        v16 = *(v10 + 56);
        v16(v9, 0, 1, v2);
        (*(v10 + 32))(v13, v9, v2);
        v19[0] = *(v15 + 64);
        (*(v10 + 16))(v6, v13, v2);
        v16(v6, 0, 1, v2);
        v17 = (v19[0])(v6);
        (*(v4 + 8))(v6, v3);
        (*(v10 + 8))(v13, v2);

        return v17;
      }

      (*(v10 + 56))(v9, 1, 1, v2);
      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    sub_1B9F444C4(v20, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  return 0;
}

uint64_t sub_1BA36765C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = sub_1BA4A7AA8();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = qword_1EBBF1230;
  swift_beginAccess();
  sub_1BA367CC0(v1 + v14, v30, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v30[3])
  {
    return sub_1B9F444C4(v30, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  type metadata accessor for HealthDetailsDemographicsItem();
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v29;
    v30[0] = a1;
    if (swift_dynamicCast())
    {
      v17 = *(v10 + 56);
      v17(v9, 0, 1, v3);
      v18 = *(v10 + 32);
      v25 = v17;
      v26 = v18;
      v27 = v10 + 32;
      v18(v13, v9, v3);
      v19 = *(*(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField);
      v24 = *(v16 + 8);
      (*(v10 + 16))(v6, v13, v3);
      v17(v6, 0, 1, v3);
      v20 = v19;
      v24(v6);
      v21 = v28;
      (*(v28 + 8))(v6, v4);
      v22 = sub_1BA4A6758();

      [v20 setText_];

      v26(v6, v13, v3);
      v25(v6, 0, 1, v3);
      v23 = *(*v16 + 152);
      swift_beginAccess();
      (*(v21 + 40))(&v16[v23], v6, v4);
      swift_endAccess();
    }

    else
    {

      (*(v10 + 56))(v9, 1, 1, v3);
      return (*(v28 + 8))(v9, v4);
    }
  }

  return result;
}

void sub_1BA367AC4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  [v2 setFont_];

  *(v0 + v1) = v2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField;
  *(v0 + v4) = sub_1BA365D5C();
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA367BE4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView;
  type metadata accessor for TitleDetailLabelsView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCD78]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView____lazy_storage___pickerHeightZeroConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA367CC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0D658(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA367D58(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E48();
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = a2;
    v16 = v15;
    *&v34[0] = v15;
    *v14 = 136446210;
    *&v36[0] = v6;
    swift_getMetatypeMetadata();
    v17 = sub_1BA4A6808();
    v19 = sub_1B9F0B82C(v17, v18, v34);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s]: Tapped end sharing relationship", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v20 = v16;
    a2 = v32;
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    v21 = v14;
    a1 = v33;
    MEMORY[0x1BFAF43A0](v21, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v22 = [v3[25] profileIdentifier];
  sub_1BA071040((v3 + 26), v34);
  v23 = *(v3 + 19);
  v36[2] = *(v3 + 17);
  v36[3] = v23;
  v24 = *(v3 + 23);
  v36[4] = *(v3 + 21);
  v36[5] = v24;
  v25 = *(v3 + 15);
  v36[0] = *(v3 + 13);
  v36[1] = v25;
  type metadata accessor for EndSharingRelationshipFlow();
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  v27 = v34[1];
  *(v26 + 24) = v34[0];
  *(v26 + 40) = v27;
  *(v26 + 56) = v35;
  v28 = *(v3 + 19);
  *(v26 + 96) = *(v3 + 17);
  *(v26 + 112) = v28;
  v29 = *(v3 + 23);
  *(v26 + 128) = *(v3 + 21);
  *(v26 + 144) = v29;
  v30 = *(v3 + 15);
  *(v26 + 64) = *(v3 + 13);
  *(v26 + 80) = v30;
  v3[31] = v26;
  sub_1BA0711AC(v36, v34);

  sub_1BA15E280(a2, a1);
}

id *sub_1BA368044()
{

  sub_1BA071124((v0 + 26));

  return v0;
}

uint64_t sub_1BA368100()
{
  sub_1BA368044();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3681A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA36820C(uint64_t a1)
{
  result = sub_1BA3682C8(&qword_1EBBF12F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA368250(uint64_t a1)
{
  result = sub_1BA3682C8(&qword_1EBBF12F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA3682C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EndSharingRelationshipItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA368308(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007265646165;
  v3 = 0x686E6F6974636573;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x666E6F6974636573;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007265746F6FLL;
    }

    else
    {
      v6 = 0x80000001BA4E1560;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x686E6F6974636573;
    }

    if (v4)
    {
      v6 = 0x80000001BA4E1530;
    }

    else
    {
      v6 = 0xED00007265646165;
    }
  }

  v7 = 0x666E6F6974636573;
  v8 = 0x80000001BA4E1560;
  if (a2 == 2)
  {
    v8 = 0xED00007265746F6FLL;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001BA4E1530;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA36846C()
{
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
  v0 = sub_1BA4A77C8();
  v1 = sub_1BA4A77C8();
  v2 = sub_1BA4A7798();

  return v2 & 1;
}

uint64_t sub_1BA368560(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007472656C41;
  v3 = 0xD000000000000015;
  v4 = 0x207972616D6D7553;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x207972616D6D7553;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (v5 == 2)
    {
      v7 = 0xED00007472656C41;
    }

    else
    {
      v7 = 0x80000001BA4E1460;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (v5)
    {
      v7 = 0x80000001BA4E1430;
    }

    else
    {
      v7 = 0x80000001BA4E1410;
    }
  }

  if (a2 != 2)
  {
    v4 = 0xD000000000000015;
    v2 = 0x80000001BA4E1460;
  }

  v8 = 0x80000001BA4E1430;
  if (a2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v8 = 0x80000001BA4E1410;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA36868C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x776F6C6C41;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x73676E6974746553;
    }

    else
    {
      v4 = 0x664F20657661654CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE900000000000066;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4120746F4E206F44;
    }

    else
    {
      v4 = 0x776F6C6C41;
    }

    if (v3)
    {
      v5 = 0xEC000000776F6C6CLL;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x73676E6974746553;
  if (a2 != 2)
  {
    v8 = 0x664F20657661654CLL;
    v7 = 0xE900000000000066;
  }

  if (a2)
  {
    v2 = 0x4120746F4E206F44;
    v6 = 0xEC000000776F6C6CLL;
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
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA3687E4()
{
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
  v0 = sub_1BA4A77C8();
  v1 = sub_1BA4A77C8();
  v2 = sub_1BA4A7798();

  return v2 & 1;
}

uint64_t sub_1BA3688D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7470697263736564;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v7 = 0xD000000000000019;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (v4)
    {
      v8 = 0x80000001BA4E1080;
    }

    else
    {
      v8 = 0x80000001BA4E1060;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x737574617473;
    if (a1 == 3)
    {
      v6 = 0x7470697263736564;
      v5 = 0xEB000000006E6F69;
    }

    if (a1 == 2)
    {
      v7 = 0xD00000000000001ALL;
    }

    else
    {
      v7 = v6;
    }

    if (v4 == 2)
    {
      v8 = 0x80000001BA4E10A0;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = 0xD000000000000019;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (a2)
    {
      v2 = 0x80000001BA4E1080;
    }

    else
    {
      v2 = 0x80000001BA4E1060;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v2 = 0x80000001BA4E10A0;
      if (v7 != 0xD00000000000001ALL)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (a2 != 3)
    {
      v2 = 0xE600000000000000;
      if (v7 != 0x737574617473)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }
  }

  if (v7 != v3)
  {
LABEL_31:
    v9 = sub_1BA4A8338();
    goto LABEL_32;
  }

LABEL_28:
  if (v8 != v2)
  {
    goto LABEL_31;
  }

  v9 = 1;
LABEL_32:

  return v9 & 1;
}

uint64_t sub_1BA368A60()
{
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
  v0 = sub_1BA4A77C8();
  v1 = sub_1BA4A77C8();
  v2 = sub_1BA4A7798();

  return v2 & 1;
}

uint64_t sub_1BA368BAC(unsigned __int8 a1, char a2)
{
  if (a1)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E360);
    v3 = sub_1BA4A7758();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_12:
    v7 = 1;
    return v7 & 1;
  }

  v3 = a1;
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1B9F0ADF8(0, &qword_1EDC6E360);
  v4 = sub_1BA4A7758();
  v5 = v4;
  if (!v3)
  {
    if (v4)
    {
      v7 = 0;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!v4)
  {
LABEL_8:
    v7 = 0;
    v5 = v3;
    goto LABEL_11;
  }

  v6 = v3;
  v5 = v5;
  v7 = sub_1BA4A7798();

LABEL_11:
  return v7 & 1;
}

uint64_t sub_1BA368CBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E696F70;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702125924;
    }

    else
    {
      v4 = 0x6968747972657665;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEA0000000000676ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4C65676172657661;
    }

    else
    {
      v4 = 0x746E696F70;
    }

    if (v3)
    {
      v5 = 0xEB00000000656E69;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702125924;
  if (a2 != 2)
  {
    v8 = 0x6968747972657665;
    v7 = 0xEA0000000000676ELL;
  }

  if (a2)
  {
    v2 = 0x4C65676172657661;
    v6 = 0xEB00000000656E69;
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
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA368E04@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v22 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v25 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      sub_1B9F63EF0(*(a2 + 48) + *(v25 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1B9F6307C(v9, v6, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v17 = v24(v6);
      if (v3)
      {
        sub_1B9F617A8(v6, type metadata accessor for SummarySharingSelectableDataTypeItem);
      }

      if (v17)
      {
        break;
      }

      v12 &= v12 - 1;
      result = sub_1B9F617A8(v6, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v20 = v23;
    sub_1B9F6307C(v6, v23, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v19 = v20;
    v18 = 0;
    return (*(v25 + 56))(v19, v18, 1, v22);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v18 = 1;
        v19 = v23;
        return (*(v25 + 56))(v19, v18, 1, v22);
      }

      v12 = *(a2 + 56 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA369090(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BA4A7C88();
    sub_1BA4A2EE8();
    sub_1B9F48334(&qword_1EBBF01E0, MEMORY[0x1E69A3368]);
    result = sub_1BA4A6DA8();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        v19 = a1(&v27);
        if (v4)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_23;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_1BA4A7CF8())
        {
          sub_1BA4A2EE8();
          swift_dynamicCast();
          v18 = v27;
          v16 = v9;
          v17 = v10;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

LABEL_23:
      sub_1B9F52E48();
    }

    else
    {
LABEL_20:
      sub_1B9F52E48();
      return 0;
    }

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA3692EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SwiftChartPoint();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1B9F63EF0(v12, v10, type metadata accessor for SwiftChartPoint);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1B9F617A8(v10, type metadata accessor for SwiftChartPoint);
      }

      if (v14)
      {
        break;
      }

      sub_1B9F617A8(v10, type metadata accessor for SwiftChartPoint);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1B9F6307C(v10, v18, type metadata accessor for SwiftChartPoint);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t SnidgetSwiftChartView.ChartParameters.init(dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA4A0F98();
  v5 = v4;
  v6 = sub_1BA4A0FA8();
  result = (*(*(v6 - 8) + 8))(a1, v6);
  v8 = 4.0;
  if (v5 > 86400.0)
  {
    v8 = 6.0;
  }

  v9 = vdup_n_s32(v5 > 86400.0);
  v10.i64[0] = v9.u32[0];
  v10.i64[1] = v9.u32[1];
  v11 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL)), xmmword_1BA4D3280, xmmword_1BA4D3270);
  *a2 = v11.i64[0];
  *(a2 + 8) = v11;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0x4000000000000000;
  return result;
}

uint64_t SnidgetSwiftChartView.viewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SnidgetSwiftChartView.$viewModel.getter()
{
  type metadata accessor for SnidgetSwiftChartViewModel(0);
  sub_1B9F48334(&qword_1EDC6C438, type metadata accessor for SnidgetSwiftChartViewModel);

  return sub_1BA4A5358();
}

uint64_t sub_1BA369660()
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

id sub_1BA3697C4()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = *(v0 + 48);

    sub_1BA4A6FB8();
    v7 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA232F2C(v8[0], 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

uint64_t sub_1BA369930@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F51630(0, &qword_1EDC6B6E8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnidgetSwiftChartView(0);
  sub_1BA36F574(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BA4A51B8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1BA4A6FB8();
    v13 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SnidgetSwiftChartView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v4 = *(type metadata accessor for SnidgetSwiftChartView(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_1B9F51630(0, &qword_1EDC6B6E8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SnidgetSwiftChartViewModel(0);
  sub_1B9F48334(&qword_1EDC6C438, type metadata accessor for SnidgetSwiftChartViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v5;

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1BA369D68@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v105 = sub_1BA4A6418();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BA4A51B8();
  v106 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v74 - v5;
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A18A8();
  v74 = v8;
  v112 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1BA4A1728();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v107 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v88 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v74 - v22;
  v93 = sub_1BA4A4A48();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E05C();
  v109 = v25;
  v94 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v91 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E0E0();
  v111 = v27;
  v95 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v108 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E1A8();
  v98 = v29;
  v97 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v110 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A57F8();
  sub_1BA4A0F88();
  v86 = type metadata accessor for SnidgetSwiftChartView.AverageLine(0);
  v31 = *(v86 + 28);
  v32 = *(v112 + 56);
  v80 = v112 + 56;
  v79 = v32;
  v32(v14, 1, 1, v8);
  v87 = v23;
  v33 = v83;
  sub_1BA4A4978();

  v90 = v14;
  sub_1B9F617A8(v14, sub_1B9F7CBC0);
  v34 = v82;
  v35 = *(v82 + 8);
  v36 = v84;
  v35(v18, v84);
  v76 = sub_1BA4A57F8();
  v78 = v37;
  v75 = v38;
  v77 = v39;
  v40 = v85;
  sub_1BA4A1878();
  sub_1BA4A0F58();
  v81 = v31;
  sub_1BA4A1848();
  v35(v18, v36);
  v41 = v40;
  v42 = v74;
  (*(v112 + 8))(v41);
  v43 = *(v34 + 48);
  v44 = v43(v33, 1, v36);
  v112 = v1;
  if (v44 == 1)
  {
    sub_1BA4A0F58();
    if (v43(v33, 1, v36) != 1)
    {
      sub_1B9F617A8(v33, sub_1B9F7B6A0);
    }
  }

  else
  {
    (*(v34 + 32))(v107, v33, v36);
  }

  v45 = v90;
  v79(v90, 1, 1, v42);
  v46 = v112;
  v47 = v107;
  sub_1BA4A4978();

  sub_1B9F617A8(v45, sub_1B9F7CBC0);
  v35(v47, v36);
  sub_1BA4A57F8();
  v48 = v86;
  v118 = *(v46 + *(v86 + 20));
  sub_1BA4A4988();

  v49 = v89;
  sub_1BA4A4A38();
  sub_1BA4A51F8();
  v50 = MEMORY[0x1E695B2B8];
  v51 = v91;
  v52 = v93;
  sub_1BA4A4968();
  sub_1BA36E2A8(&v118);
  (*(v92 + 8))(v49, v52);
  v117 = *(v46 + *(v48 + 24));
  v113 = v52;
  v114 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = MEMORY[0x1E69815C0];
  v55 = v109;
  sub_1BA4A4918();
  (*(v94 + 8))(v51, v55);
  v56 = *(v48 + 36);
  v57 = *(v106 + 16);
  v58 = v106;
  v59 = v99;
  v60 = v101;
  v57(v99, v46 + v56, v101);
  v61 = *(v58 + 88);
  if (v61(v59, v60) != *MEMORY[0x1E697DBA8])
  {
    (*(v58 + 8))(v59, v60);
  }

  v113 = v109;
  v114 = v54;
  v115 = OpaqueTypeConformance2;
  v116 = MEMORY[0x1E6981568];
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v111;
  v64 = v108;
  sub_1BA4A4948();
  (*(v95 + 8))(v64, v63);
  v65 = v100;
  v57(v100, v112 + v56, v60);
  v66 = v61(v65, v60);
  v67 = v103;
  v68 = *(v103 + 104);
  v69 = v102;
  v70 = v105;
  if (v66 == *MEMORY[0x1E697DBB8])
  {
    v68(v102, *MEMORY[0x1E6981DA0], v105);
  }

  else
  {
    v68(v102, *MEMORY[0x1E6981DF0], v105);
    (*(v106 + 8))(v65, v60);
  }

  v113 = v111;
  v114 = v62;
  swift_getOpaqueTypeConformance2();
  v71 = v98;
  v72 = v110;
  sub_1BA4A4958();
  (*(v67 + 8))(v69, v70);
  return (*(v97 + 8))(v72, v71);
}

uint64_t sub_1BA36AAC4@<X0>(uint64_t a1@<X8>)
{
  v144 = a1;
  sub_1BA36E2FC();
  v143 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v142 = v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E63C();
  v131 = v4;
  v116 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v115 = v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v113 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v103 = v99 - v11;
  v110 = sub_1BA4A4A68();
  v107 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v104 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36EA8C(0, &qword_1EDC5F788, MEMORY[0x1E695B2F0]);
  v111 = v13;
  v108 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v105 = v99 - v14;
  sub_1BA36E958();
  v114 = v15;
  v112 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v109 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E7D8();
  v122 = v17;
  v121 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v106 = v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36EB68(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v119 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for SwiftChartPoint();
  v118 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v124 = v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E7A4(0);
  v139 = *(v22 - 8);
  v140 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v120 = v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v125 = v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BA4A1728();
  v133 = *(v26 - 8);
  v134 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v101 = v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v126 = v99 - v29;
  sub_1BA36E770(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v141 = v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v138 = v99 - v33;
  v34 = type metadata accessor for SnidgetSwiftChartView.LineChartMarks(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1B9F89A30(0, &qword_1EDC5EA20, sub_1BA36E388);
  v136 = *(v37 - 8);
  v137 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v135 = v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v99 - v40;
  v42 = v1;
  v127 = v1;
  v43 = *v1;
  v149 = v43;
  sub_1B9F63EF0(v42, v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SnidgetSwiftChartView.LineChartMarks);
  v44 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v45 = swift_allocObject();
  sub_1B9F6307C(v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for SnidgetSwiftChartView.LineChartMarks);
  sub_1B9F53A5C(0);
  v130 = v46;
  sub_1BA36E388();
  v129 = v47;
  v128 = sub_1B9F48334(&qword_1EDC5E6D8, sub_1B9F53A5C);
  sub_1BA36E508();
  v49 = v48;
  v50 = MEMORY[0x1E695B2A0];
  sub_1BA36EA8C(255, &qword_1EDC5F798, MEMORY[0x1E695B2A8]);
  v52 = v51;
  v53 = sub_1BA4A4A18();
  v54 = sub_1BA36E6C8();
  v55 = sub_1BA36E71C();
  v117 = v43;

  v145 = MEMORY[0x1E69817E8];
  v146 = v54;
  v99[1] = v54;
  v99[0] = v55;
  v147 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v145 = v53;
  v57 = v131;
  v146 = v131;
  v147 = v50;
  v100 = OpaqueTypeConformance2;
  v148 = OpaqueTypeConformance2;
  v58 = swift_getOpaqueTypeConformance2();
  v145 = v52;
  v146 = v58;
  v59 = v127;
  v60 = swift_getOpaqueTypeConformance2();
  v145 = v49;
  v146 = MEMORY[0x1E69815C0];
  v147 = v60;
  v148 = MEMORY[0x1E6981568];
  swift_getOpaqueTypeConformance2();
  sub_1B9F48334(&qword_1EDC68E98, type metadata accessor for SwiftChartPoint);
  v132 = v41;
  sub_1BA4A62E8();
  v130 = v34;
  v61 = v59 + *(v34 + 20);
  v62 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  if (*(v61 + *(v62 + 20)) == 2)
  {

    v64 = v133;
    v63 = v134;
  }

  else
  {
    v64 = v133;
    v63 = v134;
    v65 = sub_1BA4A8338();

    if ((v65 & 1) == 0)
    {
LABEL_6:
      v67 = v138;
      (*(v139 + 56))(v138, 1, 1, v140);
      goto LABEL_11;
    }
  }

  v66 = v125;
  sub_1B9F63EF0(v61 + *(v62 + 24), v125, sub_1B9F7B6A0);
  if ((*(v64 + 48))(v66, 1, v63) == 1)
  {
    sub_1B9F617A8(v66, sub_1B9F7B6A0);
    goto LABEL_6;
  }

  v68 = (*(v64 + 32))(v126, v66, v63);
  MEMORY[0x1EEE9AC00](v68);
  v69 = v119;
  sub_1BA3692EC(sub_1BA36EF2C, v117, v119);
  if ((*(v118 + 48))(v69, 1, v123) == 1)
  {
    sub_1B9F617A8(v69, sub_1BA36EB68);
    v70 = 1;
    v71 = v122;
    v72 = v121;
    v67 = v138;
    v73 = v120;
  }

  else
  {
    sub_1B9F6307C(v69, v124, type metadata accessor for SwiftChartPoint);
    v134 = sub_1BA4A57F8();
    v74 = v101;
    sub_1BA4A0F88();
    v75 = sub_1BA4A18A8();
    v76 = v102;
    (*(*(v75 - 8) + 56))(v102, 1, 1, v75);
    sub_1BA4A4978();

    sub_1B9F617A8(v76, sub_1B9F7CBC0);
    (*(v64 + 8))(v74, v63);
    sub_1BA4A57F8();
    v145 = *(v124 + *(v123 + 24));
    sub_1BA4A4988();

    v77 = v104;
    sub_1BA4A4A58();
    v78 = v115;
    sub_1BA4A49B8();
    v79 = v105;
    v80 = v110;
    v81 = v100;
    sub_1BA4A4938();
    (*(v116 + 8))(v78, v57);
    (*(v107 + 8))(v77, v80);
    v145 = v80;
    v146 = v57;
    v147 = MEMORY[0x1E695B2E0];
    v148 = v81;
    v82 = swift_getOpaqueTypeConformance2();
    v83 = v109;
    v84 = v111;
    sub_1BA4A4908();
    (*(v108 + 8))(v79, v84);
    v149 = *(v59 + *(v130 + 28));
    v145 = v84;
    v146 = v82;
    swift_getOpaqueTypeConformance2();
    v85 = v106;
    v86 = v114;
    sub_1BA4A4918();
    (*(v112 + 8))(v83, v86);
    sub_1B9F617A8(v124, type metadata accessor for SwiftChartPoint);
    v72 = v121;
    v73 = v120;
    v71 = v122;
    (*(v121 + 32))(v120, v85, v122);
    v70 = 0;
    v67 = v138;
  }

  (*(v72 + 56))(v73, v70, 1, v71);
  sub_1B9F643C4(v73, v67, sub_1BA36E7A4);
  (*(v139 + 56))(v67, 0, 1, v140);
  (*(v64 + 8))(v126, v63);
LABEL_11:
  v88 = v135;
  v87 = v136;
  v89 = *(v136 + 16);
  v90 = v132;
  v91 = v137;
  v89(v135, v132, v137);
  v92 = v141;
  sub_1B9F64138(v67, v141, sub_1BA36E770);
  sub_1BA36EBC8();
  v93 = v142;
  v89(v142, v88, v91);
  sub_1B9F58348(&qword_1EDC5F7C0, sub_1BA36E770, sub_1BA36ED88);
  v94 = v143;
  v95 = *(v143 + 48);
  sub_1B9F64138(v92, &v93[v95], sub_1BA36E770);
  v96 = v144;
  (*(v87 + 32))(v144, v93, v91);
  sub_1B9F643C4(&v93[v95], v96 + *(v94 + 48), sub_1BA36E770);
  sub_1B9F6442C(v67, sub_1BA36E770);
  v97 = *(v87 + 8);
  v97(v90, v91);
  sub_1B9F6442C(v92, sub_1BA36E770);
  return (v97)(v88, v91);
}

uint64_t sub_1BA36BDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v44 = a1;
  v61 = a3;
  sub_1BA36E63C();
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A1728();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v51 = sub_1BA4A4A18();
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36EA8C(0, &qword_1EDC5F798, MEMORY[0x1E695B2A8]);
  v52 = v16;
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v43 - v17;
  sub_1BA36E508();
  v59 = *(v18 - 8);
  v60 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A57F8();
  v20 = type metadata accessor for SwiftChartPoint();
  sub_1BA4A0F88();
  v45 = type metadata accessor for SnidgetSwiftChartView.LineChartMarks(0);
  v21 = sub_1BA4A18A8();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_1BA4A4978();

  sub_1B9F617A8(v10, sub_1B9F7CBC0);
  (*(v49 + 8))(v13, v50);
  sub_1BA4A57F8();
  v64 = *(v44 + *(v20 + 24));
  sub_1BA4A4988();

  v22 = v46;
  sub_1BA4A4A08();
  v23 = v45;
  v24 = sub_1BA36E6C8();
  v25 = sub_1BA36E71C();
  v26 = MEMORY[0x1E69817E8];
  v27 = v56;
  sub_1BA4A49B8();
  v64 = v26;
  v65 = v24;
  v66 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v48;
  v30 = v51;
  v31 = v57;
  v32 = MEMORY[0x1E695B2A0];
  sub_1BA4A4938();
  (*(v58 + 8))(v27, v31);
  v33 = v47;
  (*(v53 + 8))(v22, v30);
  v64 = v30;
  v65 = v31;
  v66 = v32;
  v67 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v52;
  sub_1BA4A4908();
  (*(v54 + 8))(v29, v35);
  v36 = v62;
  v37 = v62 + *(v23 + 20);
  if (*(v37 + *(type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0) + 20)) > 2u)
  {

    goto LABEL_7;
  }

  v38 = sub_1BA4A8338();

  if (v38)
  {
LABEL_7:
    v39 = (v36 + *(v23 + 28));
    goto LABEL_8;
  }

  if (qword_1EDC67350 != -1)
  {
    swift_once();
  }

  v39 = &qword_1EDC84C20;
LABEL_8:
  v40 = *v39;

  v63 = v40;
  v64 = v35;
  v65 = v34;
  swift_getOpaqueTypeConformance2();
  v41 = v60;
  sub_1BA4A4918();

  return (*(v59 + 8))(v33, v41);
}

uint64_t sub_1BA36C654()
{
  v0 = sub_1BA4A1728();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwiftChartPoint();
  sub_1BA4A0F88();
  v4 = sub_1BA4A16E8();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_1BA36C754@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  sub_1B9F64E60(0, &qword_1EDC5EA30, sub_1BA36EF4C, sub_1BA36F044);
  v104 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v103 = &v78 - v3;
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v78 - v9;
  v85 = sub_1BA4A4A68();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36F25C();
  v88 = v11;
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36F18C();
  v90 = v13;
  v89 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36F078();
  v100 = *(v15 - 8);
  v101 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v95 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A1728();
  v93 = *(v19 - 8);
  v94 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36F044(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v102 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v78 - v24;
  v25 = type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1BA36EF4C();
  v96 = *(v28 - 8);
  v97 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v98 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v78 - v31;
  v107 = *v1;
  sub_1B9F63EF0(v1, &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks);
  v33 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v34 = swift_allocObject();
  sub_1B9F6307C(&v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks);
  sub_1B9F53A5C(0);
  sub_1B9F51630(0, &qword_1EDC5F808, sub_1BA36E0E0, MEMORY[0x1E69E6720]);
  sub_1B9F48334(&qword_1EDC5E6D8, sub_1B9F53A5C);
  sub_1BA36F320();
  sub_1B9F48334(&qword_1EDC68E98, type metadata accessor for SwiftChartPoint);

  v35 = v32;
  v36 = v1;
  sub_1BA4A62E8();
  v37 = v25;
  v38 = v1 + *(v25 + 20);
  v39 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  if (v38[v39[5]] > 1u)
  {
    v40 = v95;
LABEL_5:
    v41 = sub_1BA4A8338();

    if ((v41 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v40 = v95;
  if (v38[v39[5]])
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1B9F63EF0(&v38[v39[6]], v40, sub_1B9F7B6A0);
  v42 = v93;
  v43 = v94;
  if ((*(v93 + 48))(v40, 1, v94) == 1)
  {
    sub_1B9F617A8(v40, sub_1B9F7B6A0);
  }

  else
  {
    v44 = v92;
    (*(v42 + 32))(v92, v40, v43);
    v45 = &v38[v39[7]];
    if ((v45[8] & 1) == 0)
    {
      v61 = *v45;
      sub_1BA4A57F8();
      v78 = v37;
      v62 = sub_1BA4A18A8();
      v63 = v79;
      (*(*(v62 - 8) + 56))(v79, 1, 1, v62);
      sub_1BA4A4978();

      sub_1B9F617A8(v63, sub_1B9F7CBC0);
      sub_1BA4A57F8();
      v107 = v61;
      sub_1BA4A4988();

      v64 = v81;
      v65 = v94;
      sub_1BA4A4A58();
      v66 = sub_1BA36E6C8();
      v67 = MEMORY[0x1E69817E8];
      v68 = MEMORY[0x1E695B2E0];
      v69 = v82;
      v70 = v85;
      sub_1BA4A4938();
      (*(v83 + 8))(v64, v70);
      v71 = v78;
      v107 = v70;
      v108 = v67;
      v109 = v68;
      v110 = v66;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v73 = v87;
      v74 = v88;
      sub_1BA4A4908();
      (*(v86 + 8))(v69, v74);
      v106 = *(v36 + *(v71 + 28));
      v107 = v74;
      v108 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v75 = v84;
      v76 = v90;
      sub_1BA4A4918();
      (*(v89 + 8))(v73, v76);
      (*(v93 + 8))(v92, v65);
      v49 = v99;
      v48 = v100;
      v77 = v101;
      (*(v100 + 32))(v99, v75, v101);
      v47 = v77;
      v46 = 0;
      goto LABEL_11;
    }

    (*(v42 + 8))(v44, v43);
  }

LABEL_10:
  v46 = 1;
  v48 = v100;
  v47 = v101;
  v49 = v99;
LABEL_11:
  (*(v48 + 56))(v49, v46, 1, v47);
  v50 = v96;
  v51 = v97;
  v52 = *(v96 + 16);
  v53 = v98;
  v52(v98, v35, v97);
  v54 = v102;
  sub_1B9F64138(v49, v102, sub_1BA36F044);
  sub_1B9F58348(&qword_1EDC5EA40, sub_1BA36EF4C, sub_1BA36F320);
  v55 = v103;
  v52(v103, v53, v51);
  sub_1BA36F43C();
  v56 = v104;
  v57 = *(v104 + 48);
  sub_1B9F64138(v54, &v55[v57], sub_1BA36F044);
  v58 = v105;
  (*(v50 + 32))(v105, v55, v51);
  sub_1B9F643C4(&v55[v57], v58 + *(v56 + 48), sub_1BA36F044);
  sub_1B9F6442C(v49, sub_1BA36F044);
  v59 = *(v50 + 8);
  v59(v35, v51);
  sub_1B9F6442C(v54, sub_1BA36F044);
  return (v59)(v53, v51);
}

uint64_t sub_1BA36D538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v44 - v10;
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BA4A1728();
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v48 = v44 - v18;
  v52 = sub_1BA4A4A48();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E05C();
  v53 = *(v21 - 8);
  v54 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E0E0();
  v25 = *(v24 - 8);
  v55 = v24;
  v56 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v49 = v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SwiftChartPoint();
  v28 = (a1 + *(v27 + 28));
  if (v28[1])
  {
    v29 = v55;
    v30 = *(v56 + 56);

    return v30(a3, 1, 1, v29);
  }

  else
  {
    v32 = v27;
    v33 = *v28;
    sub_1BA4A57F8();
    v44[2] = a2;
    v45 = v23;
    v44[3] = v8;
    v44[1] = v11;
    v44[0] = a1;
    v46 = a3;
    sub_1BA4A0F88();
    v44[4] = type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks(0);
    v34 = sub_1BA4A18A8();
    (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
    sub_1BA4A4978();

    sub_1B9F617A8(v14, sub_1B9F7CBC0);
    (*(v47 + 8))(v16, v51);
    sub_1BA4A57F8();
    v35 = v44[0];
    v60[0] = *(v44[0] + *(v32 + 24));
    sub_1BA4A4988();

    sub_1BA4A57F8();
    v60[0] = v33;
    sub_1BA4A4988();

    sub_1BA4A4A28();
    sub_1BA4A51F8();
    v36 = MEMORY[0x1E695B2B8];
    v37 = v45;
    v38 = v52;
    sub_1BA4A4968();
    sub_1BA36E2A8(v60);
    (*(v50 + 8))(v20, v38);
    v39 = sub_1B9F7CBF4(v35, type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks);
    v58 = v36;
    v59 = v39;
    v57 = v38;
    swift_getOpaqueTypeConformance2();
    v40 = v49;
    v41 = v54;
    sub_1BA4A4918();
    (*(v53 + 8))(v37, v41);
    v42 = v55;
    v43 = v46;
    (*(v56 + 32))(v46, v40, v55);
    return (*(v56 + 56))(v43, 0, 1, v42);
  }
}

uint64_t sub_1BA36DC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t __swift_get_extra_inhabitant_index_49Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BA4A1898();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_50Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BA4A1898();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1BA36E05C()
{
  if (!qword_1EDC5F780)
  {
    sub_1BA4A4A48();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F780);
    }
  }
}

void sub_1BA36E0E0()
{
  if (!qword_1EDC5F810)
  {
    sub_1BA36E05C();
    sub_1BA4A4A48();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F810);
    }
  }
}

void sub_1BA36E1A8()
{
  if (!qword_1EBBF1300)
  {
    sub_1BA36E0E0();
    sub_1BA36E05C();
    sub_1BA4A4A48();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF1300);
    }
  }
}

void sub_1BA36E2FC()
{
  if (!qword_1EDC5EA18)
  {
    sub_1B9F89A30(255, &qword_1EDC5EA20, sub_1BA36E388);
    sub_1BA36E770(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5EA18);
    }
  }
}

void sub_1BA36E388()
{
  if (!qword_1EDC5F7F8)
  {
    sub_1BA36E508();
    sub_1BA36EA8C(255, &qword_1EDC5F798, MEMORY[0x1E695B2A8]);
    sub_1BA4A4A18();
    sub_1BA36E63C();
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F7F8);
    }
  }
}

void sub_1BA36E508()
{
  if (!qword_1EDC5F830)
  {
    sub_1BA36EA8C(255, &qword_1EDC5F798, MEMORY[0x1E695B2A8]);
    sub_1BA4A4A18();
    sub_1BA36E63C();
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F830);
    }
  }
}

void sub_1BA36E63C()
{
  if (!qword_1EDC5F768)
  {
    sub_1BA36E6C8();
    sub_1BA36E71C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F768);
    }
  }
}

unint64_t sub_1BA36E6C8()
{
  result = qword_1EDC5EB68;
  if (!qword_1EDC5EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EB68);
  }

  return result;
}

unint64_t sub_1BA36E71C()
{
  result = qword_1EDC5EB60;
  if (!qword_1EDC5EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EB60);
  }

  return result;
}

void sub_1BA36E7D8()
{
  if (!qword_1EDC5F7D8)
  {
    sub_1BA36E958();
    sub_1BA36EA8C(255, &qword_1EDC5F788, MEMORY[0x1E695B2F0]);
    sub_1BA4A4A68();
    sub_1BA36E63C();
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F7D8);
    }
  }
}

void sub_1BA36E958()
{
  if (!qword_1EDC5F820)
  {
    sub_1BA36EA8C(255, &qword_1EDC5F788, MEMORY[0x1E695B2F0]);
    sub_1BA4A4A68();
    sub_1BA36E63C();
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F820);
    }
  }
}

void sub_1BA36EA8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1BA36E63C();
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1BA36EBC8()
{
  result = qword_1EDC5EA28;
  if (!qword_1EDC5EA28)
  {
    sub_1B9F89A30(255, &qword_1EDC5EA20, sub_1BA36E388);
    sub_1BA36E508();
    sub_1BA36EA8C(255, &qword_1EDC5F798, MEMORY[0x1E695B2A8]);
    sub_1BA4A4A18();
    sub_1BA36E63C();
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EA28);
  }

  return result;
}

unint64_t sub_1BA36ED88()
{
  result = qword_1EDC5F7B8;
  if (!qword_1EDC5F7B8)
  {
    sub_1BA36E7A4(255);
    sub_1BA36E958();
    sub_1BA36EA8C(255, &qword_1EDC5F788, MEMORY[0x1E695B2F0]);
    sub_1BA4A4A68();
    sub_1BA36E63C();
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F7B8);
  }

  return result;
}

void sub_1BA36EF4C()
{
  if (!qword_1EDC5EA38)
  {
    sub_1B9F53A5C(255);
    sub_1B9F51630(255, &qword_1EDC5F808, sub_1BA36E0E0, MEMORY[0x1E69E6720]);
    sub_1B9F48334(&qword_1EDC5E6D8, sub_1B9F53A5C);
    v0 = sub_1BA4A6318();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EA38);
    }
  }
}

void sub_1BA36F078()
{
  if (!qword_1EDC5F7F0)
  {
    sub_1BA36F18C();
    sub_1BA36F25C();
    sub_1BA4A4A68();
    sub_1BA36E6C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F7F0);
    }
  }
}

void sub_1BA36F18C()
{
  if (!qword_1EDC5F828)
  {
    sub_1BA36F25C();
    sub_1BA4A4A68();
    sub_1BA36E6C8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F828);
    }
  }
}

void sub_1BA36F25C()
{
  if (!qword_1EDC5F790)
  {
    sub_1BA4A4A68();
    sub_1BA36E6C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F790);
    }
  }
}

unint64_t sub_1BA36F320()
{
  result = qword_1EDC5F800;
  if (!qword_1EDC5F800)
  {
    sub_1B9F51630(255, &qword_1EDC5F808, sub_1BA36E0E0, MEMORY[0x1E69E6720]);
    sub_1BA36E05C();
    sub_1BA4A4A48();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F800);
  }

  return result;
}

unint64_t sub_1BA36F43C()
{
  result = qword_1EDC5F7E0;
  if (!qword_1EDC5F7E0)
  {
    sub_1BA36F044(255);
    sub_1BA36F18C();
    sub_1BA36F25C();
    sub_1BA4A4A68();
    sub_1BA36E6C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F7E0);
  }

  return result;
}

uint64_t sub_1BA36F574(uint64_t a1, uint64_t a2)
{
  sub_1B9F51630(0, &qword_1EDC6B6E8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA36F608()
{
  result = qword_1EDC5F850;
  if (!qword_1EDC5F850)
  {
    sub_1BA36F6D4();
    sub_1BA36EBC8();
    sub_1B9F58348(&qword_1EDC5F7C0, sub_1BA36E770, sub_1BA36ED88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F850);
  }

  return result;
}

void sub_1BA36F6D4()
{
  if (!qword_1EDC5F848)
  {
    sub_1B9F89A30(255, &qword_1EDC5EA20, sub_1BA36E388);
    sub_1BA36E770(255);
    v0 = sub_1BA4A48A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F848);
    }
  }
}

unint64_t sub_1BA36F764()
{
  result = qword_1EDC5F860;
  if (!qword_1EDC5F860)
  {
    sub_1B9F56D28(255, &qword_1EDC5F858, sub_1BA36EF4C, sub_1BA36F044);
    sub_1B9F58348(&qword_1EDC5EA40, sub_1BA36EF4C, sub_1BA36F320);
    sub_1BA36F43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F860);
  }

  return result;
}

id sub_1BA36F870()
{
  sub_1B9F1D220(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1BA4A3FB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3F18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA31D5B4();
  sub_1B9F1D220(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  (*(v9 + 104))(v11, *MEMORY[0x1E69DBF28], v8);
  v12 = sub_1BA4A3F48();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_1BA4A75F8();
  v13 = *MEMORY[0x1E69796E8];
  v14 = [v0 layer];
  [v14 setCornerCurve_];

  v15 = [v0 layer];
  [v15 setCornerRadius_];

  v16 = [v0 layer];
  [v16 setMaskedCorners_];

  return [v0 setClipsToBounds_];
}

uint64_t sub_1BA36FC30()
{
  v1 = sub_1BA4A4428();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v5, v15);
  if (v16)
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      if (v17)
      {
        v6 = *(&v22 + 1);

        sub_1BA180A38(&v17);
        if (v6)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    sub_1B9F7B644(v15);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
  }

  sub_1BA3701BC(&v17);
LABEL_9:

LABEL_10:
  sub_1B9F68124(v0 + v5, v15);
  if (!v16)
  {
    sub_1B9F7B644(v15);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_17;
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    goto LABEL_17;
  }

  if (!v17)
  {
LABEL_17:
    sub_1BA3701BC(&v17);
LABEL_18:
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    v8 = v9;
    goto LABEL_19;
  }

  v7 = v23;
  v8 = v23;
  v9 = sub_1BA180A38(&v17);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_19:
  MEMORY[0x1BFAF2040](v9);
  sub_1BA4A43B8();
  v10 = v8;
  sub_1BA4A43D8();
  v11 = sub_1BA4A42D8();
  sub_1BA4A4268();
  v11(&v17, 0);
  sub_1BA4A4348();
  *(&v18 + 1) = v1;
  *&v19 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
  (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
  MEMORY[0x1BFAF1EF0](&v17);

  return (*(v2 + 8))(v4, v1);
}

id sub_1BA370038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileNavigationCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA370090()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_99;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

uint64_t sub_1BA3701BC(uint64_t a1)
{
  sub_1BA370218();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA370218()
{
  if (!qword_1EBBF1308[0])
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, qword_1EBBF1308);
    }
  }
}

uint64_t MappedDataSource.__allocating_init(dataSource:transformation:)(uint64_t a1, __int128 *a2)
{
  v2 = sub_1BA3718D4(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t MappedDataSource.init(dataSource:transformation:)(uint64_t a1, __int128 *a2)
{
  v2 = sub_1BA37189C(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_1BA370300(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();

  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6F88();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v4;
    v4 = v15;
    v27 = v15;
    *v14 = 136315394;
    v16 = sub_1BA4A85D8();
    v25 = v8;
    v18 = sub_1B9F0B82C(v16, v17, &v27);
    v24 = v7;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1B9F0B82C(v23, a2, &v27);
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] snapshotDidChange for %s", v14, 0x16u);
    swift_arrayDestroy();
    v20 = v4;
    LOBYTE(v4) = v26;
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);

    v21 = (*(v25 + 8))(v10, v24);
  }

  else
  {

    v21 = (*(v8 + 8))(v10, v7);
  }

  sub_1BA370794(v21);
  type metadata accessor for MappedDataSourceWithContext();
  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(v4 & 1);
}

uint64_t sub_1BA3705BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  swift_beginAccess();
  return (*(*(*(v3 + 480) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1BA37065C(uint64_t a1)
{
  v3 = *v1;
  sub_1BA371948(a1);
  v4 = *(*(*(v3 + 480) - 8) + 8);

  return v4(a1);
}

uint64_t (*sub_1BA3706D8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA370748;
}

uint64_t sub_1BA370748(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA370BB0();
  }

  return result;
}

uint64_t sub_1BA370794(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 480);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - v5;
  v7 = *(v1 + qword_1EDC84BB8);
  v9 = *(v8 + 488);
  sub_1BA3705BC(&v15 - v5);
  v10 = *(v1 + *(*v1 + 520));
  v11 = *(v2 + qword_1EDC64EB0 + 8);
  v12 = *(v2 + qword_1EDC64EB0 + 16);
  v16 = *(v2 + qword_1EDC64EB0);
  v17 = v11;
  v18 = v12;
  sub_1B9F17BE8(v16, v11, v12);
  v13 = sub_1BA370EC0(v7, v9, v6, v10, &v16);
  sub_1B9F18460(v16, v17, v18);
  (*(v4 + 8))(v6, v3);
  sub_1BA0E7F10(v13, 1);
}

uint64_t MappedDataSourceWithContext.init(dataSource:context:allowEmptySections:transformation:)(uint64_t a1, uint64_t (*a2)(void, void), char a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_1BA371638(a1, a2, a3, a4);
  (*(*(*(v6 + 480) - 8) + 8))(a2);
  swift_unknownObjectRelease();
  return v7;
}

id *MappedDataSourceWithContext.deinit()
{
  v1 = *v0;

  v2 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));
  swift_unknownObjectRelease();
  (*(*(v1[60] - 8) + 8))(v0 + *(*v0 + 64));
  return v0;
}

uint64_t MappedDataSourceWithContext.__allocating_init(dataSource:context:allowEmptySections:transformation:)(uint64_t a1, uint64_t (*a2)(void, void), char a3, uint64_t a4)
{
  v5 = v4;
  swift_allocObject();
  v10 = sub_1BA371638(a1, a2, a3, a4);
  (*(*(*(v5 + 480) - 8) + 8))(a2);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1BA370BB0()
{
  v1 = v0;
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = sub_1BA4A4578();
  (*(v4 + 8))(v6, v3);
  v9 = *(v8 + 16);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  result = swift_beginAccess();
  if (v9)
  {
    v12 = 0;
    v13 = v8 + 40;
    v38 = v9 - 1;
    v14 = MEMORY[0x1E69E7CC0];
    v39 = v8 + 40;
    while (1)
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v17 = *(v1 + v10);
        if (*(v17 + 16))
        {
          break;
        }

LABEL_4:
        ++v16;
        v15 += 2;
        if (v9 == v16)
        {
          goto LABEL_16;
        }
      }

      v18 = *(v15 - 1);
      v19 = *v15;

      v20 = sub_1B9F24A34(v18, v19);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = (*(v17 + 56) + 48 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[2];
      v25 = v22[4];
      v26 = v22[5];
      v33 = v22[3];
      v34 = v25;
      v35 = v23;

      v36 = v24;
      v27 = v33;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B9F21540(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_1B9F21540((v28 > 1), v29 + 1, 1, v14);
        v14 = result;
      }

      v12 = v16 + 1;
      *(v14 + 16) = v29 + 1;
      v30 = (v14 + 48 * v29);
      v31 = v35;
      v30[4] = v37;
      v30[5] = v31;
      v30[6] = v36;
      v30[7] = v27;
      v30[8] = v34;
      v30[9] = v26;
      v13 = v39;
      if (v38 == v16)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_16:

  sub_1BA0E7F10(v14, 1);
}

uint64_t sub_1BA370EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), char a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a5;
  v10 = *(a5 + 8);
  v12 = *(a5 + 16);
  ObjectType = swift_getObjectType();
  v14 = SnapshotDataSource.contentsAsArray()(ObjectType, a2);
  v15 = v14;
  if (v12)
  {
    if (v12 == 1)
    {
      MEMORY[0x1EEE9AC00](v14);
      v36 = *(v6 + 472);
      v37 = *(v6 + 488);
      v38 = v11;
      v39 = v10;
      v40 = a3;
      v16 = sub_1BA2F4270(sub_1BA371BB8, &v35, v15);
      v41 = 0;

      v18 = 0;
      v19 = *(v16 + 2);
      v20 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v21 = &v16[48 * v18 + 16];
      while (1)
      {
        if (v19 == v18)
        {

          return v20;
        }

        if (v18 >= *(v16 + 2))
        {
          break;
        }

        ++v18;
        v22 = (v21 + 48);
        v23 = *(v21 + 32);
        v21 += 48;
        if (*(v23 + 16))
        {
          v24 = *(v22 - 3);
          v42 = *(v22 - 4);
          v25 = *(v22 - 1);
          v26 = *v22;
          v27 = v22[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          v44 = v25;
          v45 = v20;
          v43 = v26;
          if ((result & 1) == 0)
          {
            result = sub_1B9F277B0(0, *(v20 + 2) + 1, 1);
            v20 = v45;
          }

          v29 = *(v20 + 2);
          v28 = *(v20 + 3);
          if (v29 >= v28 >> 1)
          {
            result = sub_1B9F277B0((v28 > 1), v29 + 1, 1);
            v20 = v45;
          }

          *(v20 + 2) = v29 + 1;
          v30 = &v20[48 * v29];
          *(v30 + 4) = v42;
          *(v30 + 5) = v24;
          v31 = v43;
          v32 = v44;
          *(v30 + 6) = v23;
          *(v30 + 7) = v32;
          *(v30 + 8) = v31;
          *(v30 + 9) = v27;
          goto LABEL_4;
        }
      }

      __break(1u);
    }

    else
    {
      v33 = v11(v14, a3);

      return v33;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    v35 = *(v6 + 472);
    *&v36 = *(v6 + 488);
    *(&v36 + 1) = v11;
    v37 = v10;
    v38 = a3;
    LOBYTE(v39) = a4 & 1;
    v20 = sub_1BA2F4270(sub_1BA371B90, &v34, v15);

    return v20;
  }

  return result;
}

double sub_1BA371160@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, _OWORD *, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = v5;
  v14 = v6;
  a2(v15, v12, a3);
  v8 = v16;
  v9 = v17;
  result = *v15;
  v11 = v15[1];
  *a4 = v15[0];
  *(a4 + 16) = v11;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  return result;
}

uint64_t sub_1BA3711D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[5];
  v30 = a1[4];
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;

  swift_bridgeObjectRetain_n();

  v15 = sub_1BA26CFFC(sub_1BA371BDC, v23, v13);
  swift_bridgeObjectRelease_n();
  v16 = Array<A>.identifierToIndexDict()(v15);

  if (v15[2])
  {
    v18 = v12;
    v19 = v15;
    v20 = v16;
    v21 = v14;
  }

  else
  {
    if (a5)
    {
      v18 = v12;

      v22 = v11;
      v19 = v15;
      v20 = v16;
      v21 = v14;
    }

    else
    {
      v18 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v30 = 0;
      v21 = 0;
    }

    v11 = v22;
  }

  *a9 = v18;
  a9[1] = v11;
  a9[2] = v19;
  a9[3] = v20;
  a9[4] = v30;
  a9[5] = v21;
  return result;
}

uint64_t sub_1BA371358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;
  sub_1BA4A45C8();

  sub_1BA370300(v11, v13, v14, a5);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1BA3714D4()
{
  v1 = *v0;
  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));
  swift_unknownObjectRelease();
  v2 = *(*(*(v1 + 480) - 8) + 8);
  v3 = v0 + *(*v0 + 512);

  return v2(v3);
}

uint64_t sub_1BA3715B0()
{
  MappedDataSourceWithContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA371638(uint64_t a1, uint64_t (*a2)(void, void), char a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = v5 + qword_1EDC64EB0;
  *v11 = *a4;
  *(v11 + 8) = v10;
  v12 = *(a4 + 16);
  *(v11 + 16) = v12;
  *(v5 + qword_1EDC84BB8) = a1;
  (*(*(v8[60] - 8) + 16))(v5 + *(*v5 + 512));
  *(v5 + *(*v5 + 520)) = a3;
  v13 = v8[61];
  v22 = v9;
  v23 = v10;
  v24 = v12;
  sub_1B9F17BE8(v9, v10, v12);
  v14 = swift_unknownObjectRetain();
  v15 = sub_1BA370EC0(v14, v13, a2, a3, &v22);
  sub_1B9F18460(v9, v10, v12);
  v22 = 0x534464657070614DLL;
  v23 = 0xE90000000000003CLL;
  v16 = v8[59];
  v17 = (*(v13 + 8))(v16, v13);
  MEMORY[0x1BFAF1350](v17);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v18 = MutableArrayDataSource.init(arrangedSections:identifier:)(v15, v22, v23);
  v19 = *(v13 + 40);

  swift_unknownObjectRetain();
  v20 = v19(v16, v13);
  swift_unknownObjectRelease();
  [v20 registerObserver_];

  return v18;
}

uint64_t sub_1BA37189C(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 16);
  v4 = *a2;
  v5 = v2;
  return sub_1BA371638(a1, a2, 0, &v4);
}

uint64_t sub_1BA3718D4(uint64_t a1, __int128 *a2)
{
  type metadata accessor for MappedDataSource();
  swift_allocObject();
  v4 = *(a2 + 16);
  v7 = *a2;
  v8 = v4;
  return sub_1BA371638(a1, v5, 0, &v7);
}

uint64_t sub_1BA371948(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  swift_beginAccess();
  (*(*(*(v3 + 480) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  return sub_1BA370BB0();
}

uint64_t sub_1BA371AFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BA371BDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 40))(a1, *(v2 + 56));
  *a2 = result;
  return result;
}

uint64_t NSUserActivityProtocol.makeModernActivity()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v19 = a3;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A36A8();
  v12 = sub_1BA4A8108();

  if (v12 > 1)
  {
    sub_1BA4A3E28();
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6F98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B9F07000, v15, v16, "Encountered an activity type that we didn't recognize when migrating to the new NSUserActivity format, assuming it's new and passing along", v17, 2u);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    return (*(*(a1 - 8) + 16))(v19, v5, a1);
  }

  else
  {
    result = sub_1BA371E64();
    if (!v4)
    {
      v14 = sub_1BA3732E0(result);

      sub_1BA371FAC(v14, a1, a2, v19);
    }
  }

  return result;
}

uint64_t sub_1BA371E64()
{
  v0 = sub_1BA4A36B8();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_1BA4A7D58();
  if (!*(v1 + 16) || (v2 = sub_1B9FDA8E4(v6), (v3 & 1) == 0))
  {

    sub_1B9FDC768(v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  sub_1B9F0AD9C(*(v1 + 56) + 32 * v2, &v7);
  sub_1B9FDC768(v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    sub_1B9F23224(&v7);
    goto LABEL_10;
  }

  sub_1BA3737D0();
  if (swift_dynamicCast())
  {
    return v6[0];
  }

LABEL_10:
  sub_1BA3734D4();
  swift_allocError();
  *v5 = 0xD000000000000049;
  v5[1] = 0x80000001BA5030D0;
  return swift_willThrow();
}

uint64_t sub_1BA371FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a3;
  v135 = a2;
  v134 = a4;
  v5 = sub_1BA4A35F8();
  v137 = *(v5 - 8);
  v138 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v129 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v129 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v131 = &v129 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v132 = &v129 - v23;
  v24 = sub_1BA4A3678();
  v25 = *(v24 - 8);
  v140 = v24;
  v141 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v129 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v142 = &v129 - v32;
  v150 = a1;

  v33 = sub_1BA372E3C();
  if (v33 == 5)
  {

    v147 = 0;
    v148 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v147 = 0xD000000000000017;
    v148 = 0x80000001BA502F30;
    *&v145 = a1;
    sub_1B9F1D880(0, &qword_1EBBF1390, &type metadata for LegacyUserActivity.Breadcrumb, MEMORY[0x1E69E62F8]);
    sub_1BA373458();
    v35 = sub_1BA4A6E78();
    v36 = (v35 & 1) == 0;
    if (v35)
    {
      v37 = 0x6E756F6620746F4ELL;
    }

    else
    {
      v37 = 0x6E676F6365726E75;
    }

    if (v36)
    {
      v38 = 0xEC00000064657A69;
    }

    else
    {
      v38 = 0xE900000000000064;
    }

    MEMORY[0x1BFAF1350](v37, v38);

    v39 = v147;
    v40 = v148;
    sub_1BA3734D4();
    swift_allocError();
    *v41 = v39;
    v41[1] = v40;
    return swift_willThrow();
  }

  v43 = v33;
  v130 = v34;
  v44 = sub_1B9FDB524(MEMORY[0x1E69E7CC0]);
  v149 = v44;
  if (v43 <= 1u)
  {
    if (v43)
    {

      v58 = v141;
      v59 = v142;
      v75 = v140;
      (*(v141 + 104))(v142, *MEMORY[0x1E69A2C60], v140);
      v77 = v137;
      v76 = v138;
      (*(v137 + 104))(v19, *MEMORY[0x1E69A2B98], v138);
      v78 = sub_1BA4A35E8();
      v80 = v79;
      (*(v77 + 8))(v19, v76);
      *&v145 = v78;
      *(&v145 + 1) = v80;
      sub_1BA4A7D58();
      v146 = MEMORY[0x1E69E6530];
      *&v145 = v130;
      sub_1B9F46920(&v145, v144);
      v81 = v149;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = v81;
      sub_1B9FF1AE4(v144, &v147, isUniquelyReferenced_nonNull_native);
      sub_1B9FDC768(&v147);
      v149 = v143;
    }

    else
    {

      v56 = v139;
      sub_1BA373118(v130, v27);
      v57 = v140;
      v58 = v141;
      v59 = v142;
      if (v56)
      {
      }

      (*(v141 + 32))(v142, v27, v140);
      v75 = v57;
    }

    goto LABEL_36;
  }

  v129 = v44;
  if (v43 == 2)
  {

    v60 = v141;
    v61 = v140;
    (*(v141 + 104))(v142, *MEMORY[0x1E69A2C00], v140);
    v62 = *MEMORY[0x1E69A2B88];
    v63 = v137;
    v64 = v138;
    v133 = *(v137 + 104);
    v133(v16, v62, v138);
    v65 = sub_1BA4A35E8();
    v67 = v66;
    v137 = *(v63 + 8);
    (v137)(v16, v64);
    *&v145 = v65;
    *(&v145 + 1) = v67;
    sub_1BA4A7D58();
    v68 = v130;
    v69 = v139;
    sub_1BA373528(v130);
    if (v69)
    {
      sub_1B9FDC768(&v147);
      (*(v60 + 8))(v142, v61);
    }

    v83 = v70;
    v84 = sub_1BA0B5A7C();
    v146 = v84;
    *&v145 = v83;
    sub_1B9F46920(&v145, v144);
    v85 = v149;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v85;
    sub_1B9FF1AE4(v144, &v147, v86);
    sub_1B9FDC768(&v147);
    v149 = v143;
    v133(v13, *MEMORY[0x1E69A2B98], v64);
    v87 = sub_1BA4A35E8();
    v89 = v88;
    (v137)(v13, v64);
    *&v145 = v87;
    *(&v145 + 1) = v89;
    sub_1BA4A7D58();
    v90 = sub_1BA3736A0(v68);
    if (v90)
    {
      v146 = v84;
      *&v145 = v90;
      sub_1B9F46920(&v145, v144);
      v91 = v149;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      v143 = v91;
      sub_1B9FF1AE4(v144, &v147, v92);
      sub_1B9FDC768(&v147);
      v149 = v143;
    }

    else
    {
      sub_1BA0F6614(&v147, v144);
      sub_1B9F23224(v144);
      sub_1B9FDC768(&v147);
    }

    v58 = v141;
    v59 = v142;
    v75 = v140;
LABEL_36:
    sub_1BA4A3658();
    sub_1BA4A3698();
    return (*(v58 + 8))(v59, v75);
  }

  if (v43 != 3)
  {
    v71 = sub_1BA372E3C();
    v73 = v72;

    v58 = v141;
    v59 = v142;
    if (v71 == 5)
    {
      goto LABEL_43;
    }

    if (v71 > 1u)
    {
      if (v71 == 2)
      {
        v74 = "_HealthPushCategoryActivityKey";
LABEL_38:
        if ((v74 | 0x8000000000000000) == 0x80000001BA4E1310)
        {

LABEL_41:
          v105 = v139;
          sub_1BA372FD8(v130, v30);
          if (v105)
          {
          }

          (*(v58 + 32))(v59, v30, v140);
          v107 = *MEMORY[0x1E69A2B88];
          v108 = v137;
          v109 = v138;
          v110 = *(v137 + 104);
          v111 = v132;
          v139 = v137 + 104;
          v133 = v110;
          v110(v132, v107, v138);
          v112 = sub_1BA4A35E8();
          v114 = v113;
          v137 = *(v108 + 8);
          (v137)(v111, v109);
          *&v145 = v112;
          *(&v145 + 1) = v114;
          sub_1BA4A7D58();
          sub_1BA373528(v73);
          v116 = v115;
          v117 = sub_1BA0B5A7C();
          v132 = 0;
          v118 = v117;
          v146 = v117;
          *&v145 = v116;
          sub_1B9F46920(&v145, v144);
          v119 = v149;
          v120 = swift_isUniquelyReferenced_nonNull_native();
          v143 = v119;
          sub_1B9FF1AE4(v144, &v147, v120);
          sub_1B9FDC768(&v147);
          v149 = v143;
          v121 = v131;
          v122 = v138;
          v133(v131, *MEMORY[0x1E69A2B98], v138);
          v123 = sub_1BA4A35E8();
          v125 = v124;
          (v137)(v121, v122);
          *&v145 = v123;
          *(&v145 + 1) = v125;
          sub_1BA4A7D58();
          v126 = sub_1BA3736A0(v132);
          if (v126)
          {
            v146 = v118;
            *&v145 = v126;
            sub_1B9F46920(&v145, v144);
            v127 = v149;
            v128 = swift_isUniquelyReferenced_nonNull_native();
            v143 = v127;
            sub_1B9FF1AE4(v144, &v147, v128);
            sub_1B9FDC768(&v147);
            v149 = v143;
          }

          else
          {
            sub_1BA0F6614(&v147, v144);
            sub_1B9F23224(v144);
            sub_1B9FDC768(&v147);
          }

          v75 = v140;
          goto LABEL_36;
        }

        goto LABEL_40;
      }

      if (v71 == 3)
      {
        v74 = "PushDataActivityKey";
        goto LABEL_38;
      }
    }

LABEL_40:
    v104 = sub_1BA4A8338();

    if (v104)
    {
      goto LABEL_41;
    }

LABEL_43:

    sub_1BA3734D4();
    swift_allocError();
    *v106 = 0xD000000000000076;
    v106[1] = 0x80000001BA502F50;
    return swift_willThrow();
  }

  v45 = v141;
  v46 = v140;
  (*(v141 + 104))(v142, *MEMORY[0x1E69A2C00], v140);
  v47 = *MEMORY[0x1E69A2B88];
  v49 = v137;
  v48 = v138;
  v133 = *(v137 + 104);
  v133(v10, v47, v138);
  v50 = sub_1BA4A35E8();
  v52 = v51;
  v137 = *(v49 + 8);
  (v137)(v10, v48);
  *&v145 = v50;
  *(&v145 + 1) = v52;
  sub_1BA4A7D58();
  v53 = v130;
  v54 = v139;
  sub_1BA373528(v130);
  if (!v54)
  {
    v93 = v55;
    v94 = sub_1BA0B5A7C();
    v146 = v94;
    *&v145 = v93;
    sub_1B9F46920(&v145, v144);
    v95 = v149;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v95;
    sub_1B9FF1AE4(v144, &v147, v96);
    sub_1B9FDC768(&v147);
    v149 = v143;
    v97 = v138;
    v133(v7, *MEMORY[0x1E69A2B98], v138);
    v98 = sub_1BA4A35E8();
    v100 = v99;
    (v137)(v7, v97);
    *&v145 = v98;
    *(&v145 + 1) = v100;
    sub_1BA4A7D58();
    v101 = sub_1BA3736A0(v53);
    if (v101)
    {
      v146 = v94;
      *&v145 = v101;
      sub_1B9F46920(&v145, v144);
      v102 = v149;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v143 = v102;
      sub_1B9FF1AE4(v144, &v147, v103);
      sub_1B9FDC768(&v147);
      v149 = v143;
    }

    else
    {
      sub_1BA0F6614(&v147, v144);
      sub_1B9F23224(v144);
      sub_1B9FDC768(&v147);
    }

    v75 = v140;
    v58 = v141;
    v59 = v142;
    goto LABEL_36;
  }

  sub_1B9FDC768(&v147);
  (*(v45 + 8))(v142, v46);
}

uint64_t sub_1BA372E3C()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BA373220())
  {
    v5 = v4;

    sub_1BA159278(v5);
    v7 = v6;

    if (v7)
    {
      LOBYTE(result) = sub_1BA373294();
      if (result != 5)
      {
        return result;
      }
    }
  }

  sub_1BA4A3E28();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6F88();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B9F07000, v9, v10, "Encountered a breadcrumb with no discernable keys and values", v11, 2u);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 5;
}

uint64_t sub_1BA372FD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = MEMORY[0x1E69A2C08];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v3 = MEMORY[0x1E69A2C10];
LABEL_5:
    v4 = *v3;
    v5 = sub_1BA4A3678();
    return (*(*(v5 - 8) + 104))(a2, v4, v5);
  }

  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000042, 0x80000001BA502FD0);
  v7 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v7);

  sub_1BA3734D4();
  swift_allocError();
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1BA373118@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = MEMORY[0x1E69A2C18];
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v3 = MEMORY[0x1E69A2C70];
      goto LABEL_11;
    }

LABEL_8:
    sub_1BA3734D4();
    swift_allocError();
    *v4 = 0xD000000000000033;
    v4[1] = 0x80000001BA503020;
    return swift_willThrow();
  }

  if (!a1)
  {
    v3 = MEMORY[0x1E69A2C58];
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69A2BF0];
LABEL_11:
  v6 = *v3;
  v7 = sub_1BA4A3678();
  return (*(*(v7 - 8) + 104))(a2, v6, v7);
}

uint64_t sub_1BA373220()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *(v1 + 16 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_1BA2F6860(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA373294()
{
  v0 = sub_1BA4A8108();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BA3732E0(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v4 = 0;
    v5 = v3 - 1;
    for (i = a1 + 40; ; i += 16)
    {

      v8 = sub_1BA3FD71C(v7);

      if (!v8)
      {
        break;
      }

      v10 = sub_1BA3FD71C(v9);

      if (!v10)
      {

        break;
      }

      v4 += 2;
      sub_1B9F1D880(0, &qword_1EBBF1390, &type metadata for LegacyUserActivity.Breadcrumb, MEMORY[0x1E69E62F8]);
      sub_1BA4A6BD8();
      if (v4 >= v5)
      {
        return v12;
      }
    }

    sub_1BA3734D4();
    swift_allocError();
    *v11 = 0xD00000000000004ELL;
    v11[1] = 0x80000001BA503080;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1BA373458()
{
  result = qword_1EBBF1398;
  if (!qword_1EBBF1398)
  {
    sub_1B9F1D880(255, &qword_1EBBF1390, &type metadata for LegacyUserActivity.Breadcrumb, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1398);
  }

  return result;
}

unint64_t sub_1BA3734D4()
{
  result = qword_1EBBF13A0;
  if (!qword_1EBBF13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF13A0);
  }

  return result;
}

void sub_1BA373528(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v3 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v6 = [v4 displayTypeWithIdentifier_];

    if (v6)
    {
      v7 = [v6 objectType];
      v8 = [v7 code];

      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      return;
    }
  }

  sub_1BA3734D4();
  swift_allocError();
  *v9 = 0xD000000000000014;
  v9[1] = 0x80000001BA503060;
  swift_willThrow();
}

id sub_1BA3736A0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v3 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v6 = [v4 displayTypeWithIdentifier_];

    if (v6)
    {
      v7 = [v6 displayCategory];
      v8 = [v7 categoryID];

      v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      return v9;
    }
  }

  return 0;
}

void sub_1BA3737D0()
{
  if (!qword_1EBBF13A8)
  {
    sub_1BA2DE250();
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF13A8);
    }
  }
}

uint64_t *DiffableTableViewAdaptor.__allocating_init(tableView:dataSource:allowAnimations:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_allocObject();
  v8 = sub_1BA374C90(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t *DiffableTableViewAdaptor.init(tableView:dataSource:allowAnimations:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1BA374C90(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

id sub_1BA373904(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v64 = a2;
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0AA6C(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v61 - v16);
  ObjectType = swift_getObjectType();
  v19 = *(a6 + 24);
  v63 = ObjectType;
  v19(&aBlock, a3, a4);
  if (!v67)
  {
    v64 = v12;
    sub_1B9F43A50(&aBlock, &qword_1EDC6AD40, &qword_1EDC6AD50);
    sub_1BA4A3DD8();

    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&aBlock = v51;
      *v50 = 136446722;
      v52 = sub_1BA4A85D8();
      v54 = sub_1B9F0B82C(v52, v53, &aBlock);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_1B9F0B82C(0xD00000000000002BLL, 0x80000001BA5031B0, &aBlock);
      *(v50 + 22) = 2082;
      *(v50 + 24) = sub_1B9F0B82C(a3, a4, &aBlock);
      _os_log_impl(&dword_1B9F07000, v48, v49, "[%{public}s.%{public}s]: The CellProvider block called us back with an item that no longer exists. Item Identifier: %{public}s", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v51, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
    }

    (*(v64 + 8))(v14, v11);
    return [objc_allocWithZone(MEMORY[0x1E69DD028]) init];
  }

  sub_1B9F1134C(&aBlock, v73);
  sub_1B9F0A534(v73, &aBlock);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v70, v72);
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    sub_1BA4A2E58();
    v20 = sub_1BA4A6758();

    v21 = [a1 dequeueReusableCellWithIdentifier_];

    if (v21)
    {
      v22 = swift_getObjectType();
      v23 = swift_conformsToProtocol2();
      if (v23)
      {
        v24 = v23;
        sub_1B9F0A534(v72, &aBlock);
        v62 = a6;
        v25 = a1;
        v26 = *(v24 + 16);
        v27 = v21;
        v26(&aBlock, v22, v24);
        a1 = v25;
      }

      v28 = swift_getObjectType();
      v29 = swift_conformsToProtocol2();
      if (v29)
      {
        v30 = v29;
        v31 = v21;
        v32 = v64;
        v33 = sub_1BA4A1968();
        v34 = SnapshotDataSource.numberOfItems(in:)(v33);
        v35 = type metadata accessor for SectionContext(0);
        v36 = a1;
        v37 = *(v35 + 20);
        v38 = sub_1BA4A1998();
        v39 = v17 + v37;
        a1 = v36;
        (*(*(v38 - 8) + 16))(v39, v32, v38);
        *v17 = v34;
        (*(*(v35 - 8) + 56))(v17, 0, 1, v35);
        (*(v30 + 16))(v17, v28, v30);
      }

      if ([a1 style] == 2)
      {
        v40 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v41 = v21;
        v42 = [v40 initWithRed:0.960784314 green:0.960784314 blue:0.976470588 alpha:1.0];
        v43 = [objc_opt_self() secondarySystemBackgroundColor];
        v44 = swift_allocObject();
        v44[2] = 0;
        v44[3] = v43;
        v44[4] = 0;
        v44[5] = v42;
        v45 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v68 = sub_1B9FD7F54;
        v69 = v44;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v66 = sub_1B9F7EBBC;
        v67 = &block_descriptor_28_2;
        v46 = _Block_copy(&aBlock);
        v47 = [v45 initWithDynamicProvider_];
        _Block_release(v46);

        [v41 setBackgroundColor_];
      }

      else
      {
        v55 = objc_opt_self();
        v56 = v21;
        v57 = [v55 systemBackgroundColor];
        [v56 setBackgroundColor_];
      }
    }

    else
    {
      [a1 style];
    }

    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v73);
    return v21;
  }

  v71 = 0;
  memset(v70, 0, sizeof(v70));
  sub_1B9F43A50(v70, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](91, 0xE100000000000000);
  v59 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v59);

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);
  MEMORY[0x1BFAF1350](0xD00000000000002BLL, 0x80000001BA5031B0);
  MEMORY[0x1BFAF1350](2112093, 0xE300000000000000);
  __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  v60 = sub_1BA4A2D58();
  MEMORY[0x1BFAF1350](v60);

  MEMORY[0x1BFAF1350](0xD0000000000000AELL, 0x80000001BA503220);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA3741A8()
{
  v1 = *v0;
  v2 = sub_1BA4A6478();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F38BF4();
  v10 = sub_1BA4A7308();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = v1;
  aBlock[4] = sub_1BA374E78;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_100;
  v12 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0AA6C(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1BA374478(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_1BA4A3EA8();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v40 = v5;
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  *(a1 + 41) = 1;
  v39 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  v34 = a1;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v37 = v7;
  v38 = v8;
  result = SnapshotDataSource.sectionIdentifiers.getter(ObjectType, v7);
  v10 = result;
  v11 = *(result + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (result + 40);
    v35 = xmmword_1BA4B5480;
    while (v12 < *(v10 + 16))
    {
      ++v12;
      v15 = *(v13 - 1);
      v14 = *v13;
      sub_1B9F25350();
      v16 = swift_allocObject();
      *(v16 + 16) = v35;
      *(v16 + 32) = v15;
      *(v16 + 40) = v14;
      swift_bridgeObjectRetain_n();
      sub_1BA4A44C8();

      SnapshotDataSource.itemIdentifiers(in:)(v15, v14, ObjectType, v37);

      v41[0] = v15;
      v41[1] = v14;
      sub_1BA4A4448();

      v13 += 2;
      if (v11 == v12)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v17 = v30;
    sub_1BA4A3DD8();
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41[0] = v21;
      *v20 = 136446466;
      v22 = sub_1BA4A85D8();
      v24 = sub_1B9F0B82C(v22, v23, v41);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1B9F0B82C(0x614464616F6C6572, 0xEC00000029286174, v41);
      _os_log_impl(&dword_1B9F07000, v18, v19, "[%{public}s.%{public}s]: Applying diffable snapshot", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v31 + 8))(v17, v32);
    v25 = v34;
    v26 = v39;
    v27 = *(v34 + 40);
    *(v34 + 64) = v27;

    if (v27 == 1)
    {
      sub_1BA4A4678();
      v28 = v33;
      if ((*(v25 + 42) & 1) == 0 || sub_1BA4A4548() < 1)
      {
        (*(v28 + 8))(v26, v40);
      }
    }

    else
    {
      sub_1BA4A4648();
      v28 = v33;
      if (*(v25 + 42) == 1)
      {
        sub_1BA4A4548();
      }
    }

    sub_1BA4A4648();

    result = (*(v28 + 8))(v26, v40);
    *(v25 + 42) = 0;
  }

  return result;
}

uint64_t sub_1BA374914()
{
  if ((*(v0 + 41) & 1) == 0)
  {
    return sub_1BA3741A8();
  }

  return result;
}

uint64_t DiffableTableViewAdaptor.deinit()
{
  swift_unknownObjectRelease();

  sub_1B9F0E310(*(v0 + 48));
  return v0;
}

uint64_t DiffableTableViewAdaptor.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  sub_1B9F0E310(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3749A4(uint64_t a1)
{
  sub_1B9F12538();
  v12 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 40);
  *(a1 + 64) = v6;
  v7 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);

  v9(ObjectType, v7);

  if (v6 == 1)
  {
    sub_1BA4A4678();
  }

  else
  {
    sub_1BA4A4648();
  }

  return (*(v3 + 8))(v5, v12);
}

uint64_t sub_1BA374B2C(uint64_t result)
{
  *(result + 64) = 0;
  v1 = *(result + 48);
  if (v1)
  {

    v1(v2);

    return sub_1B9F0E310(v1);
  }

  return result;
}

uint64_t *sub_1BA374C90(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v5;
  *(v5 + 41) = 256;
  v5[6] = 0;
  v5[7] = 0;
  *(v5 + 64) = 0;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v10;
  *(objc_allocWithZone(type metadata accessor for DiffableTableViewDataSource()) + qword_1EBBF23F0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BA3751CC;
  *(v12 + 24) = v11;
  swift_unknownObjectRetain();
  v13 = a1;

  v14 = sub_1BA4A4658();
  v5[3] = a3;
  v5[4] = v14;
  v5[2] = a2;
  *(v5 + 40) = a4;
  swift_unknownObjectRetain();
  v15 = v14;
  sub_1BA4A4668();

  v16 = v5[4] + qword_1EBBF23F0;
  swift_beginAccess();
  *(v16 + 8) = a3;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  v18 = (*(a3 + 40))(ObjectType, a3);
  [v18 registerObserver_];

  return v5;
}

uint64_t sub_1BA374E80()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F38BF4();
  v9 = sub_1BA4A7308();
  aBlock[4] = sub_1BA3751A8;
  v14 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_16_0;
  v10 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v12[1] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0AA6C(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t HealthImageActivityItemProvider.__allocating_init(image:thumbnailImage:title:subtitle:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30 = a6;
  sub_1BA011090();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A15D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v7;
  v20 = objc_allocWithZone(v7);
  *&v20[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_image] = a1;
  *&v20[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_thumbnailImage] = a2;
  v21 = &v20[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_title];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v20[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_subtitle];
  v23 = v30;
  *v22 = a5;
  *(v22 + 1) = v23;
  v24 = a2;
  v25 = a1;
  sub_1BA4A15C8();
  result = (*(v17 + 48))(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v27 = sub_1BA4A1548();
    (*(v17 + 8))(v19, v16);
    v31.receiver = v20;
    v31.super_class = v29;
    v28 = objc_msgSendSuper2(&v31, sel_initWithPlaceholderItem_, v27);

    return v28;
  }

  return result;
}

uint64_t sub_1BA37542C()
{
  if (qword_1EBBE8588 != -1)
  {
    swift_once();
  }

  qword_1EBBF13B0 = qword_1EBBEF2A8;
  *algn_1EBBF13B8 = unk_1EBBEF2B0;
}

uint64_t static String.defaultImageProviderSubtitle.getter()
{
  if (qword_1EBBE88B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBF13B0;

  return v0;
}

uint64_t HealthImageActivityItemProvider.init(image:thumbnailImage:title:subtitle:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30 = a6;
  sub_1BA011090();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A15D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_image] = a1;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_thumbnailImage] = a2;
  v20 = &v7[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_title];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v7[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_subtitle];
  v22 = v30;
  *v21 = a5;
  *(v21 + 1) = v22;
  v23 = a2;
  v24 = a1;
  sub_1BA4A15C8();
  result = (*(v17 + 48))(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v26 = sub_1BA4A1548();
    (*(v17 + 8))(v19, v16);
    v27 = type metadata accessor for HealthImageActivityItemProvider();
    v31.receiver = v7;
    v31.super_class = v27;
    v28 = objc_msgSendSuper2(&v31, sel_initWithPlaceholderItem_, v26);

    return v28;
  }

  return result;
}

id HealthImageActivityItemProvider.__allocating_init(placeholderItem:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithPlaceholderItem_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id HealthImageActivityItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthImageActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA3759E8()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v2 = sub_1BA4A6758();
  [v1 setTitle_];

  v3 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];
  [v1 setImageProvider_];

  v4 = sub_1BA4A6758();
  [v1 setSummary_];

  return v1;
}

id sub_1BA375AD0()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v1);
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_thumbnailImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_thumbnailImage);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_image);
    v2 = 0;
  }

  v4 = v2;
  v5 = UIImagePNGRepresentation(v3);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BA4A1608();
    v9 = v8;

    type metadata accessor for CGImage(0);
    v10 = sub_1BA4A6EC8();
    v11 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    sub_1B9F2BB4C(v7, v9);
    return v11;
  }

  else
  {

    return 0;
  }
}

id HeightPickerItem.__allocating_init(initialValue:valueFormatter:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight] = 0;
  v5[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
  *&v5[v6] = a1;
  sub_1B9F0A534(a2, &v5[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter]);
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v7;
}

void sub_1BA375F0C()
{
  v0 = [objc_opt_self() meterUnitWithMetricPrefix_];
  [objc_opt_self() defaultCentimeterValue];
  v2 = [objc_opt_self() quantityWithUnit:v0 doubleValue:v1];

  qword_1EBC09938 = v2;
}

uint64_t sub_1BA375FAC()
{
  type metadata accessor for PickerTableViewCell();
  sub_1BA376354(0, &qword_1EBBF0850, 255, type metadata accessor for PickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA376008()
{
  swift_getObjectType();
  sub_1BA376354(0, &qword_1EBBF1408, v0, type metadata accessor for HeightPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA3760B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA37611C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate;
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

uint64_t sub_1BA3761BC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem____lazy_storage___usesImperialUnits;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem____lazy_storage___usesImperialUnits);
  if (v2 == 2)
  {
    sub_1BA1B75A0();
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter + 24);
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter), v3);
    v8 = 1;
    v5 = (*(v4 + 8))(&v8, v3, v4);
    v6 = [objc_opt_self() footUnit];
    LOBYTE(v2) = sub_1BA4A7798();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id HeightPickerItem.init(initialValue:valueFormatter:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
  *&v2[v5] = a1;
  sub_1B9F0A534(a2, &v2[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter]);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for HeightPickerItem();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

uint64_t sub_1BA376354(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id HeightPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeightPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeightPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA3764E8()
{
  swift_getObjectType();
  sub_1BA376354(0, &qword_1EBBF1408, v0, type metadata accessor for HeightPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA376540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t HeightPickerItem.initialSelections.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight);
  if (!v1)
  {
    if (qword_1EBBE88C0 != -1)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight);
  while (1)
  {
    v3 = v1;
    if ((sub_1BA3761BC() & 1) == 0)
    {
      break;
    }

    sub_1BA3768F8(v2);
    v5 = v4;
    v7 = v6;
    sub_1BA31EC5C();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5460;
    if (!__OFSUB__(v5, 1))
    {
      v9 = v8;
      *(v8 + 32) = v5 - 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = v7;
      *(v8 + 56) = 1;
      goto LABEL_10;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
LABEL_4:
    v2 = qword_1EBC09938;
    v1 = 0;
  }

  sub_1BA31EC5C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  sub_1BA376A04(v2);
  if (__OFSUB__(v10, 30))
  {
    goto LABEL_12;
  }

  *(v9 + 32) = v10 - 30;
  *(v9 + 40) = 0;
LABEL_10:

  return v9;
}

Swift::Int __swiftcall HeightPickerItem.numberOfComponents(in:)(UIPickerView *in)
{
  if (sub_1BA3761BC())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int __swiftcall HeightPickerItem.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  v3 = sub_1BA3761BC();
  v4 = 246;
  if (numberOfRowsInComponent)
  {
    v4 = 0;
  }

  v5 = 12;
  if (numberOfRowsInComponent != 1)
  {
    v5 = 0;
  }

  if (!numberOfRowsInComponent)
  {
    v5 = 9;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

Swift::String_optional __swiftcall HeightPickerItem.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  v3 = sub_1BA376AF8(titleForRow, forComponent);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void sub_1BA3768F8(void *a1)
{
  v2 = [objc_opt_self() inchUnit];
  [a1 doubleValueForUnit_];
  v4 = v3;

  v5 = round(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    sub_1BA4A66E8();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BA376A04(void *a1)
{
  v2 = [objc_opt_self() meterUnitWithMetricPrefix_];
  [a1 doubleValueForUnit_];
  v4 = v3;

  v5 = round(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    sub_1BA4A66E8();
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BA376AF8(uint64_t a1, uint64_t a2)
{
  if ((sub_1BA3761BC() & 1) == 0)
  {
    if (!a2)
    {
      result = [objc_opt_self() meterUnitWithMetricPrefix_];
      if (!__OFADD__(a1, 30))
      {
        v8 = result;
        v9 = [objc_opt_self() quantityWithUnit:result doubleValue:(a1 + 30)];

        v10 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter + 24);
        v11 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter), v10);
        v14 = 1;
        v12 = (*(v11 + 16))(&v14, v9, v10, v11);
LABEL_14:
        v13 = v12;

        return v13;
      }

      __break(1u);
      goto LABEL_17;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      result = [objc_opt_self() sharedFormatter];
      if (!result)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (!__OFADD__(a1, 1))
      {
        v6 = result;
        v7 = [result formattedValueForFeet_];
        goto LABEL_12;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    return 0;
  }

  result = [objc_opt_self() sharedFormatter];
  if (result)
  {
    v6 = result;
    v7 = [result formattedValueForInches_];
LABEL_12:
    v9 = v7;

    if (v9)
    {
      v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      goto LABEL_14;
    }

    return 0;
  }

LABEL_19:
  __break(1u);
  return result;
}

void _s18HealthExperienceUI16HeightPickerItemC10pickerView_12didSelectRow11inComponentySo08UIPickerH0C_S2itF_0(void *a1, uint64_t a2)
{
  if (sub_1BA3761BC())
  {
    v5 = [a1 selectedRowInComponent_];
    v6 = (v5 + 1);
    if (!__OFADD__(v5, 1))
    {
      v7 = [a1 selectedRowInComponent_];
      v8 = 12 * v6;
      if ((v6 * 12) >> 64 == (12 * v6) >> 63)
      {
        v9 = v7 + v8;
        if (!__OFADD__(v8, v7))
        {
          v10 = [objc_opt_self() inchUnit];
          goto LABEL_8;
        }

LABEL_14:
        __break(1u);
        return;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = __OFADD__(a2, 30);
  v9 = a2 + 30;
  if (v11)
  {
    goto LABEL_12;
  }

  v10 = [objc_opt_self() meterUnitWithMetricPrefix_];
LABEL_8:
  v12 = v10;
  v13 = [objc_opt_self() quantityWithUnit:v12 doubleValue:v9];

  v14 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight) = v13;
  v15 = v13;

  v16 = v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(v2, v15, ObjectType, v17);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_1BA376E78()
{
  result = qword_1EBBF1410;
  if (!qword_1EBBF1410)
  {
    type metadata accessor for HeightPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1410);
  }

  return result;
}

uint64_t SegmentedControlItem.Segment.init(title:selectionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t SegmentedControlItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SegmentedControlItem.selectedSegmentChanged.getter()
{
  v1 = *(v0 + 48);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t sub_1BA3770B8()
{
  v14 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1B9F1C360((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_1B9F1D8D0(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B9F1D768();
  v9 = sub_1BA4A66D8();
  v11 = v10;

  MEMORY[0x1BFAF1350](v9, v11);

  return v14;
}

void *SegmentedControlItem.__allocating_init(segments:selectedSegmentIndex:selectedSegmentChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  type metadata accessor for SegmentedControlCell();
  sub_1BA3785A0();
  v8[2] = sub_1BA4A6808();
  v8[3] = v9;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  v8[7] = a4;
  return v8;
}

void *SegmentedControlItem.init(segments:selectedSegmentIndex:selectedSegmentChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SegmentedControlCell();
  sub_1BA3785A0();
  v4[2] = sub_1BA4A6808();
  v4[3] = v9;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return v4;
}

uint64_t SegmentedControlItem.deinit()
{

  sub_1B9F0E310(*(v0 + 48));
  return v0;
}

uint64_t SegmentedControlItem.__deallocating_deinit()
{

  sub_1B9F0E310(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3773D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA37743C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA3780F0();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA3774AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA377504(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA3780F0();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA377570(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3775D4;
}

void sub_1BA3775D4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA3780F0();
  }
}

id SegmentedControlCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SegmentedControlCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_segmentedControl;
  v11 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
  v12 = sub_1BA4A6AE8();
  v13 = [v11 initWithItems_];

  *&v4[v10] = v13;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SegmentedControlCell();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA3779BC();

  return v14;
}

id SegmentedControlCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SegmentedControlCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_segmentedControl;
  v5 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
  v6 = sub_1BA4A6AE8();
  v7 = [v5 initWithItems_];

  *&v1[v4] = v7;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SegmentedControlCell();
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_1BA3779BC();
  }

  return v9;
}

id sub_1BA3779BC()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_segmentedControl];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 contentView];
  [v3 addSubview_];

  v4 = objc_opt_self();
  sub_1B9F1D8D0(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5890;
  v6 = [v2 topAnchor];
  v7 = [v0 contentView];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  *(v5 + 32) = v9;
  v10 = [v0 contentView];
  v11 = [v10 leadingAnchor];

  v12 = [v2 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v5 + 40) = v13;
  v14 = [v2 trailingAnchor];
  v15 = [v0 contentView];
  v16 = [v15 trailingAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v5 + 48) = v17;
  v18 = [v2 bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v5 + 56) = v21;
  sub_1B9F740B0();
  v22 = sub_1BA4A6AE8();

  [v4 activateConstraints_];

  return [v2 addTarget:v0 action:sel_segmentedControlChanged_ forControlEvents:4096];
}

unint64_t sub_1BA377D20(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  sub_1B9F68124(v2 + v9, v29);
  if (!v29[3])
  {
    sub_1B9F7B644(v29);
    goto LABEL_9;
  }

  sub_1B9FCD918();
  type metadata accessor for SegmentedControlItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_1BA4A3E28();
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v29[0] = ObjectType;
      swift_getMetatypeMetadata();
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1B9F07000, v20, v21, "[%s]: Segmented control changed, but no viewmodel!", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }

  v10 = v28;
  v11 = *(v28 + 48);
  if (v11)
  {
    v11([a1 selectedSegmentIndex]);
  }

  sub_1B9F1D8D0(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5460;
  *(v12 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v12 + 40) = v13;
  *(v12 + 48) = 0xD00000000000001DLL;
  *(v12 + 56) = 0x80000001BA5034F0;
  v14 = sub_1BA4A6AE8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  [a1 setAccessibilityIdentifier_];
  v16 = *(v10 + 32);
  result = [a1 selectedSegmentIndex];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v16 + 16))
  {
    v18 = *(v16 + 32 * result + 48);

    v18(v19);
  }

  __break(1u);
  return result;
}

void sub_1BA3780F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_segmentedControl);
  [v8 removeAllSegments];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v9, v40);
  if (v40[3])
  {
    sub_1B9FCD918();
    type metadata accessor for SegmentedControlItem();
    if (swift_dynamicCast())
    {
      v34 = ObjectType;
      v35 = v4;
      v36 = v3;
      v37 = v7;
      v38 = v39;
      v10 = *(v39 + 32);
      v11 = *(v10 + 16);

      if (v11)
      {
        v12 = 0;
        v13 = v10 + 56;
        while (v12 < *(v10 + 16))
        {

          v14 = sub_1BA4A6758();
          [v8 insertSegmentWithTitle:v14 atIndex:v12 animated:0];

          v13 += 32;
          if (v11 == ++v12)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_7:

        v15 = v38;
        v16 = *(v38 + 40);
        if (v16 < 0 || v16 >= *(*(v38 + 32) + 16))
        {
          v17 = v37;
          sub_1BA4A3E28();

          v18 = sub_1BA4A3E88();
          v19 = sub_1BA4A6FA8();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = v17;
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v39 = v22;
            *v21 = 136315650;
            v40[0] = v34;
            swift_getMetatypeMetadata();
            v23 = sub_1BA4A6808();
            v25 = sub_1B9F0B82C(v23, v24, &v39);

            *(v21 + 4) = v25;
            *(v21 + 12) = 2080;
            v40[0] = *(v15 + 40);
            v26 = sub_1BA4A82D8();
            v28 = sub_1B9F0B82C(v26, v27, &v39);

            *(v21 + 14) = v28;
            *(v21 + 22) = 2080;

            v30 = MEMORY[0x1BFAF1560](v29, &type metadata for SegmentedControlItem.Segment);
            v32 = v31;

            v33 = sub_1B9F0B82C(v30, v32, &v39);

            *(v21 + 24) = v33;
            _os_log_impl(&dword_1B9F07000, v18, v19, "[%s]: Incorrectly configured item: selectedIndex is %s, actions are %s", v21, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v22, -1, -1);
            MEMORY[0x1BFAF43A0](v21, -1, -1);

            (*(v35 + 8))(v20, v36);
          }

          else
          {

            (*(v35 + 8))(v17, v36);
          }
        }

        else
        {
          [v8 setSelectedSegmentIndex_];
        }
      }
    }
  }

  else
  {
    sub_1B9F7B644(v40);
  }
}

id SegmentedControlCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedControlCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA3785A0()
{
  result = qword_1EBBE9D98;
  if (!qword_1EBBE9D98)
  {
    type metadata accessor for SegmentedControlCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9D98);
  }

  return result;
}

unint64_t sub_1BA3785E8()
{
  result = qword_1EBBF1428;
  if (!qword_1EBBF1428)
  {
    type metadata accessor for SegmentedControlItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1428);
  }

  return result;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.imageRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel() + 20);
  v4 = sub_1BA4A2BF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel()
{
  result = qword_1EBBF1460;
  if (!qword_1EBBF1460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.imageRepresentation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel() + 20);
  v4 = sub_1BA4A2BF8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel() + 24));

  return v1;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.actionText.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel() + 28));

  return v1;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.actionText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.init(title:imageRepresentation:body:actionText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel();
  v15 = v14[5];
  v16 = sub_1BA4A2BF8();
  result = (*(*(v16 - 8) + 32))(&a8[v15], a3, v16);
  v18 = &a8[v14[6]];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &a8[v14[7]];
  *v19 = a6;
  *(v19 + 1) = a7;
  return result;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.encode()()
{
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel();
  sub_1BA37AD08(&qword_1EBBF1430, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
  v0 = sub_1BA4A0EC8();

  return v0;
}

uint64_t static FeatureInactiveWithNoDataTileView.ViewModel.decode(from:)@<X0>(uint64_t a1@<X8>)
{
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v2 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel();
  sub_1BA37AD08(&qword_1EBBEECA8, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
  sub_1BA4A0E98();

  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

unint64_t sub_1BA378E70()
{
  v1 = 0x656C746974;
  v2 = 2036625250;
  if (*v0 != 2)
  {
    v2 = 0x65546E6F69746361;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA378EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA37AA44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA378F10(uint64_t a1)
{
  v2 = sub_1BA3791B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA378F4C(uint64_t a1)
{
  v2 = sub_1BA3791B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.encode(to:)(void *a1)
{
  sub_1BA37962C(0, &qword_1EBBF1438, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA3791B4();
  sub_1BA4A8548();
  v9[15] = 0;
  sub_1BA4A8248();
  if (!v1)
  {
    type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel();
    v9[14] = 1;
    sub_1BA4A2BF8();
    sub_1BA37AD08(&qword_1EDC6AD68, MEMORY[0x1E69A32A0]);
    sub_1BA4A8288();
    v9[13] = 2;
    sub_1BA4A8248();
    v9[12] = 3;
    sub_1BA4A8248();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BA3791B4()
{
  result = qword_1EBBF1440;
  if (!qword_1EBBF1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1440);
  }

  return result;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1BA4A2BF8();
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA37962C(0, &qword_1EBBF1448, MEMORY[0x1E69E6F48]);
  v28 = v6;
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA3791B4();
  v27 = v8;
  v12 = v29;
  sub_1BA4A8528();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v25;
  v33 = 0;
  v14 = v11;
  *v11 = sub_1BA4A8188();
  v11[1] = v15;
  v29 = v15;
  v32 = 1;
  sub_1BA37AD08(&qword_1EDC6AD58, MEMORY[0x1E69A32A0]);
  sub_1BA4A81C8();
  (*(v13 + 32))(v11 + v9[5], v5, v3);
  v31 = 2;
  v16 = sub_1BA4A8188();
  v17 = (v11 + v9[6]);
  *v17 = v16;
  v17[1] = v18;
  v30 = 3;
  v19 = sub_1BA4A8188();
  v21 = v20;
  (*(v26 + 8))(v27, v28);
  v22 = (v14 + v9[7]);
  *v22 = v19;
  v22[1] = v21;
  sub_1BA3797E8(v14, v24, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BA37A5A0(v14, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
}

void sub_1BA37962C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA3791B4();
    v7 = a3(a1, &type metadata for FeatureInactiveWithNoDataTileView.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA3796E8(uint64_t a1, uint64_t *a2)
{
  sub_1BA3797E8(a1, v6, sub_1BA04B39C);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  swift_beginAccess();
  sub_1BA0BACD4(v6, v3 + v4);
  swift_endAccess();
  sub_1BA379C5C();
  return sub_1BA37A5A0(v6, sub_1BA04B39C);
}

uint64_t sub_1BA37977C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  swift_beginAccess();
  return sub_1BA3797E8(v1 + v3, a1, sub_1BA04B39C);
}

uint64_t sub_1BA3797E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA379850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  sub_1BA379C5C();
  return sub_1BA37A5A0(a1, sub_1BA04B39C);
}

uint64_t (*sub_1BA3798D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA379934;
}

uint64_t sub_1BA379934(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA379C5C();
  }

  return result;
}

id sub_1BA379968()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView);
  }

  else
  {
    type metadata accessor for MessageWithActionTileViewWithImage();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1BA3799FC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for FeatureInactiveWithNoDataTileView();
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_1BA379968();
  [v10 addSubview_];

  v12 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView;
  [*&v10[OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v10[v12] hk:v10 alignConstraintsWithView:?];

  return v10;
}

id FeatureInactiveWithNoDataTileView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void FeatureInactiveWithNoDataTileView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA379C5C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v76 = *(v1 - 8);
  v77 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v75 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA37ABB4(0, &qword_1EBBF1488, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v66 - v4;
  v6 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel();
  v74 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v71 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  swift_beginAccess();
  v72 = v0;
  result = sub_1BA3797E8(v0 + v8, &v79, sub_1BA04B39C);
  v10 = *(&v80 + 1);
  if (!*(&v80 + 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = v81;
  v12 = __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
  v13 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v14);
  v17 = (*(v11 + 8))(v10, v11);
  v19 = v18;
  (*(v13 + 8))(v16, v10);
  __swift_destroy_boxed_opaque_existential_1(&v79);
  if (v19 >> 60 != 15)
  {
    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1BA4A0EA8();
    sub_1BA37AD08(&qword_1EBBEECA8, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
    sub_1BA4A0E98();

    (*(v74 + 56))(v5, 0, 1, v6);
    v28 = v71;
    sub_1BA37ACA4(v5, v71);
    v29 = sub_1BA4A2BB8();
    v77 = v29;
    if (!v29)
    {
      v77 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }

    v75 = v19;
    v76 = v17;
    v30 = *v28;
    v69 = v28[1];
    v70 = v30;
    v31 = (v28 + *(v6 + 24));
    v32 = *v31;
    v33 = v31[1];
    v34 = (v28 + *(v6 + 28));
    v35 = v34[1];
    ObjectType = *v34;
    v74 = v32;
    result = sub_1BA3797E8(v72 + v8, v84, sub_1BA04B39C);
    v36 = v85;
    if (v85)
    {
      v37 = v86;
      v38 = __swift_project_boxed_opaque_existential_1(v84, v85);
      v68 = &v66;
      v39 = *(v36 - 8);
      v40 = MEMORY[0x1EEE9AC00](v38);
      v42 = &v66 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v42, v40);
      v43 = *(v37 + 72);

      v44 = v43(v36, v37);
      v45 = v33;
      v47 = v46;
      (*(v39 + 8))(v42, v36);
      if (v47)
      {
        v48 = v44;
      }

      else
      {
        v48 = 0;
      }

      v67 = v48;
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0xE000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(v84);
      v50 = objc_opt_self();
      v66 = [v50 clearColor];
      sub_1BA37ABB4(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5460;
      v52 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      v53 = *MEMORY[0x1E69DDCF8];
      v54 = *MEMORY[0x1E69DB980];
      v55 = v52;
      v56 = sub_1B9F6B774(v53, v54, 0, 0, 0, 0, 1);
      v57 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
      *(inited + 40) = v56;
      v58 = *MEMORY[0x1E69DB650];
      *(inited + 64) = v57;
      *(inited + 72) = v58;
      v59 = v58;
      v60 = [v50 labelColor];
      *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
      *(inited + 80) = v60;
      sub_1B9FDB1C4(inited);
      swift_setDeallocating();
      sub_1B9FE9628();
      swift_arrayDestroy();
      v61 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v62 = sub_1BA4A6758();
      type metadata accessor for Key(0);
      sub_1BA37AD08(&qword_1EDC5E3D0, type metadata accessor for Key);
      v63 = sub_1BA4A6618();

      v64 = [v61 initWithString:v62 attributes:v63];

      *&v79 = v77;
      *(&v79 + 1) = v64;
      *&v80 = v74;
      *(&v80 + 1) = v45;
      *&v81 = ObjectType;
      *(&v81 + 1) = v35;
      LOBYTE(v82) = 0;
      *(&v82 + 1) = v66;
      *&v83 = v67;
      *(&v83 + 1) = v49;
      v65 = sub_1BA379968();
      v78[2] = v81;
      v78[3] = v82;
      v78[4] = v83;
      v78[0] = v79;
      v78[1] = v80;
      (*((*MEMORY[0x1E69E7D40] & *v65) + 0xF8))(v78);
      sub_1B9F6AC8C(v76, v75);

      sub_1BA37A5A0(v71, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
      return sub_1BA37AD50(&v79);
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v20 = v75;
  sub_1BA4A3DD8();
  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v79 = v24;
    *v23 = 136315138;
    v25 = sub_1BA4A85D8();
    v27 = sub_1B9F0B82C(v25, v26, &v79);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] Error occurred while decoding the user data.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  return (*(v76 + 8))(v20, v77);
}

uint64_t sub_1BA37A5A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id FeatureInactiveWithNoDataTileView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureInactiveWithNoDataTileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA37A658(uint64_t a1)
{
  *(a1 + 16) = sub_1BA37AD08(&qword_1EBBEECA8, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
  result = sub_1BA37AD08(&qword_1EBBF1430, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA37A8A8()
{
  result = sub_1BA4A2BF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BA37A940()
{
  result = qword_1EBBF1470;
  if (!qword_1EBBF1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1470);
  }

  return result;
}

unint64_t sub_1BA37A998()
{
  result = qword_1EBBF1478;
  if (!qword_1EBBF1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1478);
  }

  return result;
}

unint64_t sub_1BA37A9F0()
{
  result = qword_1EBBF1480;
  if (!qword_1EBBF1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1480);
  }

  return result;
}

uint64_t sub_1BA37AA44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65546E6F69746361 && a2 == 0xEA00000000007478)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1BA37ABB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA37AC18(uint64_t a1)
{
  sub_1BA37ABB4(0, &qword_1EBBF1488, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA37ACA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA37AD08(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall UINavigationController.restoreUserActivityState(_:)(NSUserActivity a1)
{
  v3 = [v1 viewControllers];
  sub_1B9F21ADC();
  v4 = sub_1BA4A6B08();

  if (v4 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFAF2860](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  [v6 restoreUserActivityState_];
}

void sub_1BA37AEC0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = a1;
  v5 = [v9 viewControllers];
  sub_1B9F21ADC();
  v6 = sub_1BA4A6B08();

  if (v6 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1BFAF2860](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  [v8 restoreUserActivityState_];

LABEL_9:
}

Swift::String_optional __swiftcall UINavigationController.rootViewControllerType()()
{
  v1 = [v0 viewControllers];
  sub_1B9F21ADC();
  v2 = sub_1BA4A6B08();

  if (v2 >> 62)
  {
    v4 = sub_1BA4A7CC8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    v7 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFAF2860](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }

    v5 = *(v2 + 32);
  }

  v6 = v5;

  swift_getObjectType();
  sub_1B9FE957C();
  v7 = sub_1BA4A6808();
  v9 = v8;

LABEL_9:
  v4 = v7;
  v3 = v9;
LABEL_12:
  result.value._object = v3;
  result.value._countAndFlagsBits = v4;
  return result;
}

unint64_t sub_1BA37B0E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v6 = sub_1BA4A6488();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A6478();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A64C8();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A64F8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v17 = sub_1BA4A7308();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v18 = sub_1BA4A6528();
  result = (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = *(v4 + 24);
  if (!v20)
  {
LABEL_8:
    v26 = sub_1BA4A7308();
    v33 = swift_allocObject();
    v34 = v48;
    *(v33 + 16) = v47;
    *(v33 + 24) = v34;
    v58 = sub_1BA37C404;
    v59 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1B9F0B040;
    v57 = &block_descriptor_101;
    v35 = _Block_copy(&aBlock);

    sub_1BA4A64A8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F3F378();
    sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378);
    v31 = v46;
    v32 = v52;
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v13, v31, v35);
    _Block_release(v35);
    goto LABEL_9;
  }

  result = [v20 pageCount];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (result <= a1)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v21 = *(v4 + 32);
  if (*(v21 + 16))
  {
    v22 = sub_1B9FDA928(a1);
    if (v23)
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      swift_endAccess();
      v25 = v24;
      v26 = sub_1BA4A7308();
      v27 = swift_allocObject();
      v28 = v48;
      v27[2] = v47;
      v27[3] = v28;
      v27[4] = v25;
      v58 = sub_1BA37C43C;
      v59 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v55 = 1107296256;
      v56 = sub_1B9F0B040;
      v57 = &block_descriptor_17_0;
      v29 = _Block_copy(&aBlock);
      v30 = v25;

      sub_1BA4A64A8();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
      sub_1B9F3F378();
      sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378);
      v31 = v46;
      v32 = v52;
      sub_1BA4A7C38();
      MEMORY[0x1BFAF1D50](0, v13, v31, v29);
      _Block_release(v29);

LABEL_9:
      (*(v51 + 8))(v31, v32);
      return (*(v49 + 8))(v13, v50);
    }
  }

  swift_endAccess();
  v36 = v45;
  (*(v45 + 104))(v8, *MEMORY[0x1E69E7F98], v6);
  v37 = sub_1BA4A7338();
  (*(v36 + 8))(v8, v6);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = a1;
  v40 = v48;
  v39[4] = v47;
  v39[5] = v40;
  v58 = sub_1BA37C430;
  v59 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1B9F0B040;
  v57 = &block_descriptor_11_2;
  v41 = _Block_copy(&aBlock);

  sub_1BA4A64A8();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3F378();
  sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378);
  v42 = v46;
  v43 = v52;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v13, v42, v41);
  _Block_release(v41);

  (*(v51 + 8))(v42, v43);
  (*(v49 + 8))(v13, v50);
}

void *PDFImagePreviews.__allocating_init(document:cacheSize:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1BA37C300(a1, a2);

  return v4;
}

void *PDFImagePreviews.init(document:cacheSize:)(void *a1, uint64_t a2)
{
  v3 = sub_1BA37C300(a1, a2);

  return v3;
}

uint64_t sub_1BA37B9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_1BA4A6478();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BA4A64C8();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v13 = *(Strong + 24), v14 = v13, , v13) && (v15 = [v14 pageAtIndex_], v14, v15))
  {
    v16 = sub_1BA37BD84();
  }

  else
  {
    v16 = 0;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v17 = sub_1BA4A7308();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v16;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = v24;
  aBlock[4] = sub_1BA37C46C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_23_1;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3F378();
  sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v11, v9, v19);
  _Block_release(v19);

  (*(v26 + 8))(v9, v7);
  return (*(v23 + 8))(v11, v25);
}

uint64_t sub_1BA37BD84()
{
  [v0 boundsForBox_];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v10 = swift_allocObject();
  *(v10 + 2) = v2;
  *(v10 + 3) = v4;
  v10[4] = v6;
  v10[5] = v8;
  *(v10 + 6) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BA37C47C;
  *(v11 + 24) = v10;
  v16[4] = sub_1BA37C48C;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1BA20E308;
  v16[3] = &block_descriptor_32_0;
  v12 = _Block_copy(v16);
  v13 = v0;

  v14 = [v9 imageWithActions_];

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA37BF48(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v7 = a2;
      sub_1BA37BFF4(a3, v7);
    }

    else
    {
    }
  }

  return a4(a2);
}

uint64_t sub_1BA37BFF4(uint64_t a1, void *a2)
{
  v7 = v3[6];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v3;
  v8 = v3[5];
  if (v7 >= *(v8 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = a2;
  v4 = a1;
  v9 = *(v8 + 8 * v7 + 32);
  swift_beginAccess();
  sub_1B9FEF934(0, v9);
  v3 = v3[5];
  v6 = v2[6];
  result = swift_isUniquelyReferenced_nonNull_native();
  v2[5] = v3;
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_13:
  result = sub_1BA2F6874(v3);
  v3 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v6 >= v3[2])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3[v6 + 4] = v4;
  v2[5] = v3;
  v11 = v2[6];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v2[2];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 != 0x8000000000000000 || v14 != -1)
  {
    v2[6] = v13 % v14;
    v15 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v2[4];
    v2[4] = 0x8000000000000000;
    sub_1B9FF23EC(v15, v4, isUniquelyReferenced_nonNull_native);
    v2[4] = v17;
    return swift_endAccess();
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t PDFImagePreviews.deinit()
{

  return v0;
}

uint64_t PDFImagePreviews.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1BA37C1C0(void *a1, void *a2, double a3, double a4, double a5, CGFloat a6)
{
  v12 = [objc_opt_self() whiteColor];
  [v12 set];

  [a1 fillRect_];
  v13 = [a1 CGContext];
  CGContextTranslateCTM(v13, 0.0, a6);

  v14 = [a1 CGContext];
  CGContextScaleCTM(v14, 1.0, -1.0);

  v15 = [a1 CGContext];
  [a2 drawWithBox:0 toContext:v15];
}

void *sub_1BA37C300(void *result, uint64_t a2)
{
  v2[6] = 0;
  v2[2] = a2;
  v2[3] = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = sub_1BA4A6B98();
      *(v5 + 16) = a2;
      memset((v5 + 32), 255, 8 * a2);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v2[5] = v5;
    v6 = sub_1B9F0ADF8(0, &qword_1EDC6E370);
    v2[4] = MEMORY[0x1BFAF1080](a2, MEMORY[0x1E69E6530], v6, MEMORY[0x1E69E6540]);
    return v2;
  }

  return result;
}

uint64_t sub_1BA37C4A8(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v104 = a5;
  v105 = a6;
  v101 = a3;
  v102 = a1;
  v87 = a2;
  sub_1BA142AEC();
  v99 = *(v7 - 8);
  v100 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142B40();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142C90();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3805C4(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v85 - v19;
  sub_1BA142D3C();
  v22 = v21;
  v88 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142F4C();
  v97 = *(v25 - 8);
  v98 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1431B4();
  v28 = v27;
  v86 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BA4A1798();
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v41 = objc_allocWithZone(MEMORY[0x1E696C408]);
      v42 = [v41 initWithHealthStore_];
      v43 = HKSharedSummaryCloudSyncManager.fetchProfileInformation()();

      v107 = v43;
      sub_1B9F38BF4();
      v44 = sub_1BA4A7308();
      v106 = v44;
      v45 = sub_1BA4A72A8();
      (*(*(v45 - 8) + 56))(v20, 1, 1, v45);
      sub_1BA1DAF04();
      sub_1BA380690(&qword_1EBBEC778, sub_1BA1DAF04);
      sub_1BA380690(&qword_1EDC6B5B0, sub_1B9F38BF4);
      sub_1BA4A50A8();
      sub_1BA3808F8(v20, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1BA3805C4);

      sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
      sub_1BA380690(&qword_1EBBEC780, sub_1BA142D3C);
      sub_1BA4A4FE8();
      sub_1BA380690(&qword_1EBBEC7C8, sub_1BA142C90);
      v46 = v94;
      v47 = sub_1BA4A4F98();
      (*(v93 + 8))(v17, v46);
      (*(v88 + 8))(v24, v22);
      v107 = v47;
      v48 = swift_allocObject();
      v50 = v101;
      v49 = v102;
      *(v48 + 16) = v102;
      *(v48 + 24) = v50;
      sub_1BA3806D8();
      sub_1BA1430C4();
      sub_1BA380690(&qword_1EBBEC7A0, sub_1BA3806D8);
      sub_1BA380690(&qword_1EBBEC7A8, sub_1BA1430C4);
      v51 = v49;
      v52 = v50;
      v53 = v95;
      sub_1BA4A5018();

      sub_1BA380690(&qword_1EBBEC7D0, sub_1BA142F4C);
      v54 = v98;
      v40 = sub_1BA4A4F98();
      (*(v97 + 8))(v53, v54);

      v55 = &selRef_systemWhiteColor;
LABEL_13:
      v71 = [objc_opt_self() *v55];
      v72 = [v103 navigationItem];
      v73 = objc_allocWithZone(type metadata accessor for TitleWithSubHeadingView());
      v74 = v71;
      v75 = [v73 initWithFrame_];
      v76 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
      [*&v75[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel] setText_];
      v77 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
      [*&v75[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel] setText_];
      v78 = *&v75[v76];
      v79 = v74;
      [v78 setTextColor_];
      v80 = *&v75[v77];
      [v80 setTextColor_];

      [v72 setTitleView_];
      v107 = v40;
      v81 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v82 = swift_allocObject();
      v83 = v104;
      v82[2] = v81;
      v82[3] = v83;
      v82[4] = v105;
      sub_1BA1430C4();
      sub_1BA380690(&qword_1EBBEC7A8, sub_1BA1430C4);

      v65 = sub_1BA4A5148();

      return v65;
    }

    v66 = [v101 identifier];
    sub_1BA4A1778();

    type metadata accessor for SharingEntryProfileInformationDataSource();
    swift_allocObject();
    v107 = *(sub_1BA19BEB8(v102, v34, 0, 0, 0, 0) + qword_1EDC6A560);
    v67 = MEMORY[0x1E69A3430];
    v68 = MEMORY[0x1E695BF98];
    sub_1BA380808(0, &qword_1EBBEE020, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BF98]);
    sub_1BA380894(&qword_1EBBEB080, &qword_1EBBEE020, v68);
    v107 = sub_1BA4A4F98();
    v69 = MEMORY[0x1E695BED0];
    sub_1BA380808(0, &unk_1EBBEE000, &qword_1EBBEA318, v67, MEMORY[0x1E695BED0]);
    sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
    sub_1BA380894(&qword_1EBBEE010, &unk_1EBBEE000, v69);
    sub_1BA4A4FE8();
    sub_1BA380690(&qword_1EBBEC7D8, sub_1BA1431B4);
    v40 = sub_1BA4A4F98();

    (*(v86 + 8))(v30, v28);
LABEL_10:
    v70 = sub_1BA4A8338();

    if (v70)
    {
      v55 = &selRef_systemWhiteColor;
    }

    else
    {
      v55 = &selRef_labelColor;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    type metadata accessor for HealthKitProfileInformationDataSource();
    swift_allocObject();
    v35 = v102;
    v107 = *(sub_1BA2B8F0C(v35, v101, 0, 0, 0, 0) + qword_1EDC6A560);
    v36 = MEMORY[0x1E69A3108];
    v37 = MEMORY[0x1E695BF98];
    sub_1BA380808(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
    sub_1BA380774(&qword_1EDC6B730, &qword_1EDC6B720, v37);
    v107 = sub_1BA4A4F98();
    v38 = MEMORY[0x1E695BED0];
    sub_1BA380808(0, &qword_1EDC6B738, &qword_1EDC6E200, v36, MEMORY[0x1E695BED0]);
    sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
    sub_1BA380774(&qword_1EDC6B740, &qword_1EDC6B738, v38);
    sub_1BA4A4FE8();
    sub_1BA380690(&qword_1EBBEC7C0, sub_1BA142B40);
    v39 = v92;
    v40 = sub_1BA4A4F98();

    (*(v91 + 8))(v14, v39);
    goto LABEL_10;
  }

  sub_1BA4A3DD8();
  v56 = sub_1BA4A3E88();
  v57 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v107 = v59;
    *v58 = 136315138;
    v106 = type metadata accessor for DataTypeDetailViewController();
    sub_1BA380958(0, &qword_1EDC646D8, 255, type metadata accessor for DataTypeDetailViewController);
    v60 = sub_1BA4A6808();
    v62 = sub_1B9F0B82C(v60, v61, &v107);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_1B9F07000, v56, v57, "[%s]: Asking for profile context for the primary profile; why?", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x1BFAF43A0](v59, -1, -1);
    MEMORY[0x1BFAF43A0](v58, -1, -1);
  }

  (*(v89 + 8))(v11, v90);
  v63 = v96;
  sub_1BA4A4E78();
  sub_1BA380690(&qword_1EBBEC7B8, sub_1BA142AEC);
  v64 = v100;
  v65 = sub_1BA4A5148();
  (*(v99 + 8))(v63, v64);
  return v65;
}

uint64_t sub_1BA37D5B4(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v105 = a5;
  v106 = a6;
  v102 = a3;
  v103 = a1;
  v88 = a2;
  sub_1BA142AEC();
  v101 = v7;
  v99 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142B40();
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142C90();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3805C4(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v86 - v19;
  sub_1BA142D3C();
  v22 = v21;
  v89 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142F4C();
  v100 = v25;
  v98 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1431B4();
  v28 = v27;
  v87 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BA4A1798();
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v41 = objc_allocWithZone(MEMORY[0x1E696C408]);
      v42 = [v41 initWithHealthStore_];
      v43 = HKSharedSummaryCloudSyncManager.fetchProfileInformation()();

      v108 = v43;
      sub_1B9F38BF4();
      v44 = sub_1BA4A7308();
      v107 = v44;
      v45 = sub_1BA4A72A8();
      (*(*(v45 - 8) + 56))(v20, 1, 1, v45);
      sub_1BA1DAF04();
      sub_1BA380690(&qword_1EBBEC778, sub_1BA1DAF04);
      sub_1BA380690(&qword_1EDC6B5B0, sub_1B9F38BF4);
      sub_1BA4A50A8();
      sub_1BA3808F8(v20, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1BA3805C4);

      sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
      sub_1BA380690(&qword_1EBBEC780, sub_1BA142D3C);
      sub_1BA4A4FE8();
      sub_1BA380690(&qword_1EBBEC7C8, sub_1BA142C90);
      v46 = v95;
      v47 = sub_1BA4A4F98();
      (*(v94 + 8))(v17, v46);
      (*(v89 + 8))(v24, v22);
      v108 = v47;
      v48 = swift_allocObject();
      v50 = v102;
      v49 = v103;
      *(v48 + 16) = v103;
      *(v48 + 24) = v50;
      sub_1BA3806D8();
      sub_1BA1430C4();
      sub_1BA380690(&qword_1EBBEC7A0, sub_1BA3806D8);
      sub_1BA380690(&qword_1EBBEC7A8, sub_1BA1430C4);
      v51 = v49;
      v52 = v50;
      v53 = v96;
      sub_1BA4A5018();

      sub_1BA380690(&qword_1EBBEC7D0, sub_1BA142F4C);
      v54 = v100;
      v40 = sub_1BA4A4F98();
      (*(v98 + 8))(v53, v54);

      v55 = &selRef_systemWhiteColor;
LABEL_13:
      v72 = [objc_opt_self() *v55];
      v73 = [v104 navigationItem];
      v74 = objc_allocWithZone(type metadata accessor for TitleWithSubHeadingView());
      v75 = v72;
      v76 = [v74 initWithFrame_];
      v77 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
      [*&v76[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel] setText_];
      v78 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
      [*&v76[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel] setText_];
      v79 = *&v76[v77];
      v80 = v75;
      [v79 setTextColor_];
      v81 = *&v76[v78];
      [v81 setTextColor_];

      [v73 setTitleView_];
      v108 = v40;
      v82 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v83 = swift_allocObject();
      v84 = v105;
      v83[2] = v82;
      v83[3] = v84;
      v83[4] = v106;
      sub_1BA1430C4();
      sub_1BA380690(&qword_1EBBEC7A8, sub_1BA1430C4);

      v66 = sub_1BA4A5148();

      return v66;
    }

    v67 = [v102 identifier];
    sub_1BA4A1778();

    type metadata accessor for SharingEntryProfileInformationDataSource();
    swift_allocObject();
    v108 = *(sub_1BA19BEB8(v103, v34, 0, 0, 0, 0) + qword_1EDC6A560);
    v68 = MEMORY[0x1E69A3430];
    v69 = MEMORY[0x1E695BF98];
    sub_1BA380808(0, &qword_1EBBEE020, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BF98]);
    sub_1BA380894(&qword_1EBBEB080, &qword_1EBBEE020, v69);
    v108 = sub_1BA4A4F98();
    v70 = MEMORY[0x1E695BED0];
    sub_1BA380808(0, &unk_1EBBEE000, &qword_1EBBEA318, v68, MEMORY[0x1E695BED0]);
    sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
    sub_1BA380894(&qword_1EBBEE010, &unk_1EBBEE000, v70);
    sub_1BA4A4FE8();
    sub_1BA380690(&qword_1EBBEC7D8, sub_1BA1431B4);
    v40 = sub_1BA4A4F98();

    (*(v87 + 8))(v30, v28);
LABEL_10:
    v71 = sub_1BA4A8338();

    if (v71)
    {
      v55 = &selRef_systemWhiteColor;
    }

    else
    {
      v55 = &selRef_labelColor;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    type metadata accessor for HealthKitProfileInformationDataSource();
    swift_allocObject();
    v35 = v103;
    v108 = *(sub_1BA2B8F0C(v35, v102, 0, 0, 0, 0) + qword_1EDC6A560);
    v36 = MEMORY[0x1E69A3108];
    v37 = MEMORY[0x1E695BF98];
    sub_1BA380808(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
    sub_1BA380774(&qword_1EDC6B730, &qword_1EDC6B720, v37);
    v108 = sub_1BA4A4F98();
    v38 = MEMORY[0x1E695BED0];
    sub_1BA380808(0, &qword_1EDC6B738, &qword_1EDC6E200, v36, MEMORY[0x1E695BED0]);
    sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
    sub_1BA380774(&qword_1EDC6B740, &qword_1EDC6B738, v38);
    sub_1BA4A4FE8();
    sub_1BA380690(&qword_1EBBEC7C0, sub_1BA142B40);
    v39 = v93;
    v40 = sub_1BA4A4F98();

    (*(v92 + 8))(v14, v39);
    goto LABEL_10;
  }

  sub_1BA4A3DD8();
  v56 = sub_1BA4A3E88();
  v57 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v108 = v59;
    *v58 = 136315138;
    v107 = type metadata accessor for AllTrendsViewController();
    sub_1BA380958(0, &qword_1EBBF14B8, v60, type metadata accessor for AllTrendsViewController);
    v61 = sub_1BA4A6808();
    v63 = sub_1B9F0B82C(v61, v62, &v108);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_1B9F07000, v56, v57, "[%s]: Asking for profile context for the primary profile; why?", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x1BFAF43A0](v59, -1, -1);
    MEMORY[0x1BFAF43A0](v58, -1, -1);
  }

  (*(v90 + 8))(v11, v91);
  v64 = v97;
  sub_1BA4A4E78();
  sub_1BA380690(&qword_1EBBEC7B8, sub_1BA142AEC);
  v65 = v101;
  v66 = sub_1BA4A5148();
  (*(v99 + 8))(v64, v65);
  return v66;
}

uint64_t sub_1BA37E6C0(void *a1, void *a2, void *a3)
{
  sub_1BA142B40();
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v13 = a1;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v38 = a3;
    v19 = v18;
    v43 = v18;
    *v17 = 136315394;
    v42 = type metadata accessor for DataTypeDetailViewController();
    sub_1BA380958(0, &qword_1EDC646D8, 255, type metadata accessor for DataTypeDetailViewController);
    v20 = sub_1BA4A6808();
    v37 = v9;
    v22 = sub_1B9F0B82C(v20, v21, &v43);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v42 = a1;
    v23 = a1;
    sub_1B9F0D9AC(0, &qword_1EDC6E310);
    v24 = sub_1BA4A6808();
    v26 = sub_1B9F0B82C(v24, v25, &v43);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s]: Unable to fetch iCloud name for profile context: %s", v17, 0x16u);
    swift_arrayDestroy();
    v27 = v19;
    a3 = v38;
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    v28 = v17;
    v7 = v39;
    MEMORY[0x1BFAF43A0](v28, -1, -1);

    (*(v10 + 8))(v12, v37);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  type metadata accessor for HealthKitProfileInformationDataSource();
  swift_allocObject();
  v43 = *(sub_1BA2B8F0C(a2, a3, 0, 0, 0, 0) + qword_1EDC6A560);
  v29 = MEMORY[0x1E69A3108];
  v30 = MEMORY[0x1E695BF98];
  sub_1BA380808(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
  sub_1BA380774(&qword_1EDC6B730, &qword_1EDC6B720, v30);

  v31 = sub_1BA4A4F98();

  v43 = v31;
  v32 = MEMORY[0x1E695BED0];
  sub_1BA380808(0, &qword_1EDC6B738, &qword_1EDC6E200, v29, MEMORY[0x1E695BED0]);
  sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
  sub_1BA380774(&qword_1EDC6B740, &qword_1EDC6B738, v32);
  v33 = v40;
  sub_1BA4A4FE8();
  sub_1BA380690(&qword_1EBBEC7C0, sub_1BA142B40);
  v34 = sub_1BA4A4F98();

  (*(v41 + 8))(v33, v7);
  return v34;
}

uint64_t sub_1BA37EBEC(void *a1, void *a2, void *a3)
{
  sub_1BA142B40();
  v7 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v13 = a1;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v39 = a3;
    v19 = v18;
    v44 = v18;
    *v17 = 136315394;
    v43 = type metadata accessor for AllTrendsViewController();
    sub_1BA380958(0, &qword_1EBBF14B8, v20, type metadata accessor for AllTrendsViewController);
    v21 = sub_1BA4A6808();
    v38 = v9;
    v23 = sub_1B9F0B82C(v21, v22, &v44);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v43 = a1;
    v24 = a1;
    sub_1B9F0D9AC(0, &qword_1EDC6E310);
    v25 = sub_1BA4A6808();
    v27 = sub_1B9F0B82C(v25, v26, &v44);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s]: Unable to fetch iCloud name for profile context: %s", v17, 0x16u);
    swift_arrayDestroy();
    v28 = v19;
    a3 = v39;
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    v29 = v17;
    v7 = v40;
    MEMORY[0x1BFAF43A0](v29, -1, -1);

    (*(v10 + 8))(v12, v38);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  type metadata accessor for HealthKitProfileInformationDataSource();
  swift_allocObject();
  v44 = *(sub_1BA2B8F0C(a2, a3, 0, 0, 0, 0) + qword_1EDC6A560);
  v30 = MEMORY[0x1E69A3108];
  v31 = MEMORY[0x1E695BF98];
  sub_1BA380808(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
  sub_1BA380774(&qword_1EDC6B730, &qword_1EDC6B720, v31);

  v32 = sub_1BA4A4F98();

  v44 = v32;
  v33 = MEMORY[0x1E695BED0];
  sub_1BA380808(0, &qword_1EDC6B738, &qword_1EDC6E200, v30, MEMORY[0x1E695BED0]);
  sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
  sub_1BA380774(&qword_1EDC6B740, &qword_1EDC6B738, v33);
  v34 = v41;
  sub_1BA4A4FE8();
  sub_1BA380690(&qword_1EBBEC7C0, sub_1BA142B40);
  v35 = sub_1BA4A4F98();

  (*(v42 + 8))(v34, v7);
  return v35;
}

uint64_t sub_1BA37F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  sub_1BA3805C4(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24[-1] - v7;
  v9 = sub_1BA4A33C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA071040(a1, v24);
  v13 = v25;
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v14 = sub_1BA4A2AB8();
    v13 = v15;
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_1BA3808F8(v24, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], sub_1B9F0CE40);
    v14 = 0;
  }

  sub_1BA071040(a1, v24);
  if (!v25)
  {
    sub_1BA3808F8(v24, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], sub_1B9F0CE40);
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_8;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1F0);
  v16 = swift_dynamicCast();
  (*(v10 + 56))(v8, v16 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_8:
    sub_1BA3808F8(v8, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720], sub_1BA3805C4);
    goto LABEL_9;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = sub_1BA4A3328();
  v13 = v17;
  (*(v10 + 8))(v12, v9);
LABEL_9:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [Strong navigationItem];

    v21 = [v20 titleView];
    if (v21)
    {
      type metadata accessor for TitleWithSubHeadingView();
      if (swift_dynamicCastClass())
      {
        sub_1BA31BD44(a3, v23, v14, v13);
      }
    }
  }
}

char *AllTrendsViewController.__allocating_init(healthStore:healthExperienceStore:additionalPredicates:presentation:customProvenance:)(void *a1, uint64_t a2, unint64_t a3, char *a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = *a4;
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables] = MEMORY[0x1E69E7CD0];
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore] = a1;
  sub_1B9F0A534(a2, &v14[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore]);
  if (!a6)
  {
    v31[0] = v15;
    a5 = Presentation.description.getter();
    a6 = v16;
  }

  v17 = &v14[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance];
  *v17 = a5;
  v17[1] = a6;
  sub_1B9F0A534(a2, v31);
  type metadata accessor for AllTrendsDataSource(0);
  swift_allocObject();
  sub_1B9F0A534(v31, v30);
  v29 = v15;
  type metadata accessor for AllTrendsHeaderDataSource(0);
  swift_allocObject();
  v18 = a1;
  v19 = sub_1BA297AC0(v18, v30, &v29);

  sub_1B9F0A534(v31, v30);
  type metadata accessor for AllTrendsSectionedDataSource(0);
  swift_allocObject();
  v20 = v18;
  v21 = sub_1BA296558(v20, v30, a3);
  type metadata accessor for NoDataDataSource();
  swift_allocObject();

  v22 = NoDataDataSource.init()();
  sub_1BA1E8DB4();
  swift_allocObject();
  v23 = sub_1BA063C54(v21, v22);

  swift_beginAccess();
  v23[5] = sub_1BA29613C;
  v23[6] = 0;

  sub_1B9F1DEA0();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5460;
  *(v24 + 32) = v19;
  *(v24 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v24 + 48) = v23;
  *(v24 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  v25 = CompoundSectionedDataSource.init(_:)(v24);

  __swift_destroy_boxed_opaque_existential_1(v31);
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_trendDataSource] = v25;

  v27 = CompoundDataSourceCollectionViewController.init(dataSource:)(v26);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v27;
}

char *AllTrendsViewController.init(healthStore:healthExperienceStore:additionalPredicates:presentation:customProvenance:)(void *a1, uint64_t a2, unint64_t a3, char *a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v13 = *a4;
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore) = a1;
  sub_1B9F0A534(a2, v7 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore);
  if (!a6)
  {
    v29[0] = v13;
    a5 = Presentation.description.getter();
    a6 = v14;
  }

  v15 = (v7 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance);
  *v15 = a5;
  v15[1] = a6;
  sub_1B9F0A534(a2, v29);
  type metadata accessor for AllTrendsDataSource(0);
  swift_allocObject();
  sub_1B9F0A534(v29, v28);
  v27 = v13;
  type metadata accessor for AllTrendsHeaderDataSource(0);
  swift_allocObject();
  v16 = a1;
  v17 = sub_1BA297AC0(v16, v28, &v27);

  sub_1B9F0A534(v29, v28);
  type metadata accessor for AllTrendsSectionedDataSource(0);
  swift_allocObject();
  v18 = v16;
  v19 = sub_1BA296558(v18, v28, a3);
  type metadata accessor for NoDataDataSource();
  swift_allocObject();

  v20 = NoDataDataSource.init()();
  sub_1BA1E8DB4();
  swift_allocObject();
  v21 = sub_1BA063C54(v19, v20);

  swift_beginAccess();
  v21[5] = sub_1BA29613C;
  v21[6] = 0;

  sub_1B9F1DEA0();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5460;
  *(v22 + 32) = v17;
  *(v22 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v22 + 48) = v21;
  *(v22 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  v23 = CompoundSectionedDataSource.init(_:)(v22);

  __swift_destroy_boxed_opaque_existential_1(v29);
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_trendDataSource) = v23;

  v25 = CompoundDataSourceCollectionViewController.init(dataSource:)(v24);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v25;
}

id sub_1BA37FB78()
{
  sub_1BA37FD5C();
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AllTrendsViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  [result setPreservesSuperviewLayoutMargins_];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = sub_1BA4A6AE8();
  v5 = HKUIJoinStringsForAutomationIdentifier();

  [v3 setAccessibilityIdentifier_];
  v10 = 9;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance + 8])
  {
    v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance];
    v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance + 8];
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  type metadata accessor for HealthAppAnalyticsManager();
  v9 = 0;
  memset(v8, 0, sizeof(v8));

  static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v10, v0, v6, v7, v8);

  return sub_1BA3808F8(v8, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CE40);
}

void sub_1BA37FD5C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore];
  v3 = [v2 profileIdentifier];
  UIViewController.resolvedPresentation.getter(v13);
  v4 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v3, v13);

  UIViewController.resolvedHealthExperienceStore.getter(v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v5 = sub_1BA4A1B68();
  v6 = [v2 profileIdentifier];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v12 = 0xE000000000000000;
  v8 = sub_1BA4A1318();
  if (v4 == 1)
  {
    v9 = [v1 navigationItem];
    v10 = sub_1BA4A6758();
    [v9 setTitle_];

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1BA37D5B4(v5, v2, v6, v4, v8, v7);

    __swift_destroy_boxed_opaque_existential_1(v13);
    swift_beginAccess();
    sub_1BA4A4D28();
    swift_endAccess();
  }

  v11 = [v1 navigationItem];
  [v11 setLargeTitleDisplayMode_];
}

void sub_1BA37FFBC()
{
  v1 = v0;
  v24[0] = sub_1BA4A3618();
  v2 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0]);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A3678();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore] profileIdentifier];
  v11 = [v1 title];
  if (v11)
  {
    v12 = v11;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  (*(v6 + 104))(v9, *MEMORY[0x1E69A2C68], v5);
  v13 = v10;
  v14 = sub_1BA4A35B8();

  (*(v6 + 8))(v9, v5);
  [v1 setUserActivity_];

  v15 = [v1 userActivity];
  if (v15)
  {
    v16 = v15;
    sub_1BA3805C4(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5480;
    v18 = v24[0];
    (*(v2 + 104))(v4, *MEMORY[0x1E69A2BE0], v24[0]);
    v19 = sub_1BA4A3608();
    v21 = v20;
    (*(v2 + 8))(v4, v18);
    v24[1] = v19;
    v24[2] = v21;
    v22 = MEMORY[0x1E69E6158];
    sub_1BA4A7D58();
    *(inited + 96) = v22;
    strcpy((inited + 72), "alltrendsview");
    *(inited + 86) = -4864;
    sub_1B9FDB524(inited);
    swift_setDeallocating();
    sub_1BA128538(inited + 32);
    v23 = sub_1BA4A6618();

    [v16 addUserInfoEntriesFromDictionary_];
  }
}

id AllTrendsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA380478()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore);
}

id AllTrendsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllTrendsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA3805C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA380690(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA3806D8()
{
  if (!qword_1EBBEC790)
  {
    sub_1B9F0CE40(255, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
    sub_1B9F0D9AC(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC790);
    }
  }
}

uint64_t sub_1BA380774(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA380808(255, a2, &qword_1EDC6E200, MEMORY[0x1E69A3108], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA3807D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA37EBEC(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

void sub_1BA380808(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA3805C4(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA380894(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA380808(255, a2, &qword_1EBBEA318, MEMORY[0x1E69A3430], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA3808F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA380958(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_5Tm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA380A04@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA37E6C0(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

void sub_1BA380A48()
{
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
  v0 = sub_1BA4A77C8();
  sub_1BA4A77A8();
}

void sub_1BA380B30(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E360);
    v2 = sub_1BA4A7758();
    sub_1BA4A84A8();
    v3 = v2;
    sub_1BA4A77A8();
  }

  else
  {
    sub_1BA4A84A8();
  }
}

uint64_t sub_1BA380C00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BA44454C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BA386390(v6);
  return sub_1BA4A7EE8();
}

void *sub_1BA380C7C()
{
  v0 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_18;
  }

LABEL_2:
  for (i = MEMORY[0x1E69E7CD0]; ; i = sub_1B9FF611C(MEMORY[0x1E69E7CC0]))
  {
    v15[4] = i;
    v15[5] = 0;
    v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v17 = v0;
    v3 = HKAllFeatureIdentifiers();
    type metadata accessor for HKFeatureIdentifier(0);
    v4 = sub_1BA4A6B08();

    v0 = v2;
    sub_1BA38730C(v4, v0, &v17);

    v16[0] = sub_1BA030530(v5);
    sub_1BA380C00(v16);

    v6 = v16[0];
    v7 = v17;
    v15[2] = v16[0];
    v15[3] = v7;
    v14 = v0;
    if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
    {
      v0 = v7;
      v8 = sub_1BA4A7CC8();
    }

    else
    {
      v8 = *(v6 + 16);
    }

    if (!v8)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFAF2860](v9, v6);
      }

      else
      {
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      type metadata accessor for InternalSettingsFeatureStateModel(0);
      sub_1BA38793C(&qword_1EBBF15C8, 255, type metadata accessor for InternalSettingsFeatureStateModel);
      v0 = sub_1BA4A4D78();
      v16[0] = v0;
      swift_allocObject();
      swift_weakInit();
      sub_1BA4A4E28();
      sub_1BA4A5148();

      swift_beginAccess();
      sub_1BA4A4D28();
      swift_endAccess();

      ++v9;
      if (v12 == v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_2;
    }
  }

LABEL_15:

  return v15;
}

char *sub_1BA380FB0@<X0>(void **a1@<X0>, void *a2@<X1>, void **a3@<X2>, char **a4@<X8>)
{
  v8 = *a1;
  objc_allocWithZone(type metadata accessor for InternalSettingsFeatureStateModel(0));
  v9 = v8;
  result = sub_1BA3818AC(v9, a2);
  if (v4)
  {
    v11 = *a3;
    v12 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1BA280EAC(0, v11[2] + 1, 1, v11);
      *a3 = v11;
    }

    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      v11 = sub_1BA280EAC((v14 > 1), v15 + 1, 1, v11);
      *a3 = v11;
    }

    v11[2] = v15 + 1;
    v11[v15 + 4] = v12;
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v16 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v16, qword_1EBC09940);
    v17 = v12;
    v18 = v4;
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315394;
      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v25 = sub_1B9F0B82C(v23, v24, &v29);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_1BA4A8418();
      v28 = sub_1B9F0B82C(v26, v27, &v29);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[Internal Settings] Failed to create FeatureStateModel for %s: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t sub_1BA38125C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v4 = NSStringFromHKFeatureIdentifier();
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  v8 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v9 = NSStringFromHKFeatureIdentifier();
  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1BA4A8338();
  }

  return v14 & 1;
}

uint64_t sub_1BA38136C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for InternalSettingsFeatureListModel();
    sub_1BA38793C(&unk_1EBBF15F0, v1, type metadata accessor for InternalSettingsFeatureListModel);
    sub_1BA4A4D78();

    sub_1BA4A4E08();
  }

  return result;
}

id sub_1BA38141C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD08]) init];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1BA381488()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1BA38141C();
  v3 = *(v1 + 16);
  if (v3)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B9F468EC(0, v3, 0);
    v4 = v22;
    v5 = (v1 + 32);
    v6 = MEMORY[0x1E69E6158];
    do
    {
      v7 = *v5;
      v8 = NSStringFromHKFeatureIdentifier();
      v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v11 = v10;

      v21 = v6;
      *&v20 = v9;
      *(&v20 + 1) = v11;
      v22 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B9F468EC((v12 > 1), v13 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v13 + 1;
      sub_1B9F46920(&v20, (v4 + 32 * v13 + 32));
      ++v5;
      --v3;
    }

    while (v3);
  }

  v14 = sub_1BA4A6AE8();

  v15 = [v2 stringFromItems_];

  if (!v15)
  {
    return 0;
  }

  v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v18 = v17;

  *&v20 = 0;
  *(&v20 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v20 = 0x742064656C696146;
  *(&v20 + 1) = 0xEF2064616F6C206FLL;
  MEMORY[0x1BFAF1350](v16, v18);

  MEMORY[0x1BFAF1350](0xD00000000000001FLL, 0x80000001BA503A10);
  return v20;
}

uint64_t sub_1BA381690()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA381704@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternalSettingsFeatureListModel();
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

uint64_t sub_1BA381740@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A1798();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_1BA3817C4()
{
  swift_getObjectType();
  v0 = [swift_getObjCClassFromMetadata() requirementIdentifier];

  return v0;
}

uint64_t sub_1BA38183C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

char *sub_1BA3818AC(void *a1, void *a2)
{
  v88 = a2;
  v89 = a1;
  sub_1B9F3E26C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v76 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0B9C58();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v77 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for InternalSettingsFeatureState();
  MEMORY[0x1EEE9AC00](v70);
  v69 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = v67 - v8;
  v9 = MEMORY[0x1E695C070];
  sub_1BA38781C(0, &qword_1EBBF1528, sub_1BA385CB0, MEMORY[0x1E695C070]);
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v82 = v67 - v11;
  sub_1BA385CB0(0);
  v81 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v67 - v16;
  sub_1BA38781C(0, &qword_1EBBF1518, sub_1BA385C7C, v9);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v67 - v21;
  sub_1BA385C7C(0);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v68 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v67 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v67 - v30;
  v32 = OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel__featureStatus;
  v33 = sub_1BA4A3938();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v73 = v33;
  v72 = v35;
  v71 = v34 + 56;
  (v35)(v31, 1, 1);
  sub_1BA38770C(v31, v28, sub_1BA385C7C);
  v67[1] = v28;
  v75 = v24;
  v36 = v83;
  sub_1BA4A4EE8();
  v74 = v31;
  sub_1BA3878D4(v31, sub_1BA385C7C);
  v85 = v32;
  v86 = v20;
  v37 = *(v20 + 32);
  v87 = v19;
  v37(&v36[v32], v22, v19);
  v38 = OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel__errorMessage;
  v39 = type metadata accessor for ErrorMessage(0);
  (*(*(v39 - 8) + 56))(v17, 1, 1, v39);
  sub_1BA38770C(v17, v14, sub_1BA385CB0);
  v40 = v82;
  sub_1BA4A4EE8();
  sub_1BA3878D4(v17, sub_1BA385CB0);
  (v90)[4](&v36[v38], v40, v91);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v41 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CD0];
  }

  v42 = v88;
  v43 = v89;
  v44 = v84;
  *&v36[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_subscriptions] = v41;
  v45 = OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel____lazy_storage___dateFormatter;
  *&v36[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel____lazy_storage___dateFormatter] = 0;
  v46 = [v42 featureAvailabilityProvidingForFeatureIdentifier_];
  if (v46)
  {
    v84 = v38;
    *&v36[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] = v46;
    v47 = v46;
    v48 = objc_allocWithZone(MEMORY[0x1E696C178]);
    swift_unknownObjectRetain();
    v49 = [v48 initWithFeatureIdentifier:v43 healthStore:v42];
    v50 = OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureStatusManager;
    *&v36[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureStatusManager] = v49;
    swift_getObjectType();
    v51 = v80;
    sub_1BA2DD58C(v44);
    if (!v51)
    {
      v90 = v47;
      swift_beginAccess();
      sub_1BA38770C(v44, v69, type metadata accessor for InternalSettingsFeatureState);
      sub_1BA4A4EE8();
      sub_1BA3878D4(v44, type metadata accessor for InternalSettingsFeatureState);
      swift_endAccess();
      v52 = *&v36[v50];
      sub_1B9F0ADF8(0, &qword_1EBBF15E0);
      v53 = v52;
      v54 = v68;
      sub_1BA4A39B8();
      v91 = 0;

      v72(v54, 0, 1, v73);
      v55 = v85;
      swift_beginAccess();
      (*(v86 + 8))(&v36[v55], v87);
      sub_1BA38770C(v54, v74, sub_1BA385C7C);
      sub_1BA4A4EE8();
      sub_1BA3878D4(v54, sub_1BA385C7C);
      swift_endAccess();
      v56 = type metadata accessor for InternalSettingsFeatureStateModel(0);
      v92.receiver = v36;
      v92.super_class = v56;
      v57 = objc_msgSendSuper2(&v92, sel_init);
      sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
      v45 = v57;
      v58 = sub_1BA4A7308();
      [v90 registerObserver:v45 queue:v58];

      v59 = *&v45[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureStatusManager];
      v60 = sub_1BA4A39C8();

      v93 = v60;
      v61 = sub_1BA4A7308();
      v94 = v61;
      v62 = sub_1BA4A72A8();
      v63 = v76;
      (*(*(v62 - 8) + 56))(v76, 1, 1, v62);
      sub_1BA0B9D44();
      sub_1BA38793C(&qword_1EDC5F500, 255, sub_1BA0B9D44);
      sub_1B9F3DC80();
      v64 = v77;
      sub_1BA4A50A8();
      sub_1BA3878D4(v63, sub_1B9F3E26C);

      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1BA38793C(&qword_1EBBEB670, 255, sub_1BA0B9C58);
      v65 = v79;
      sub_1BA4A5148();

      (*(v78 + 8))(v64, v65);
      swift_beginAccess();
      sub_1BA4A4D28();
      swift_endAccess();

      swift_unknownObjectRelease();

      return v45;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v42 = *&v36[v50];
    v38 = v84;
  }

  else
  {
    sub_1BA387880();
    swift_allocError();
    swift_willThrow();
  }

  (*(v86 + 8))(&v36[v85], v87);
  (v90[1])(&v36[v38], v91);

  type metadata accessor for InternalSettingsFeatureStateModel(0);
  swift_deallocPartialClassInstance();
  return v45;
}

uint64_t sub_1BA382688(uint64_t a1)
{
  sub_1BA385C7C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = sub_1BA4A3938();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v7, a1, v9);
    (*(v10 + 56))(v7, 0, 1, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BA38770C(v7, v4, sub_1BA385C7C);
    sub_1BA4A4F38();
    return sub_1BA3878D4(v7, sub_1BA385C7C);
  }

  return result;
}

uint64_t sub_1BA382848()
{
  sub_1BA385CB0(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BA385C7C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for InternalSettingsFeatureState();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  swift_getObjectType();
  sub_1BA2DD58C(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA38770C(v16, v13, type metadata accessor for InternalSettingsFeatureState);
  v17 = v0;
  sub_1BA4A4F38();
  sub_1BA3878D4(v16, type metadata accessor for InternalSettingsFeatureState);
  sub_1B9F0ADF8(0, &qword_1EBBF15E0);
  sub_1BA4A39B8();
  v18 = sub_1BA4A3938();
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA38770C(v10, v7, sub_1BA385C7C);
  v19 = v0;
  sub_1BA4A4F38();
  return sub_1BA3878D4(v10, sub_1BA385C7C);
}

id sub_1BA382EC0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v4 setDateStyle_];
    [v4 setTimeStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA382F5C()
{
  sub_1BA385C7C(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A38E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v7 = sub_1BA4A3938();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_1BA3878D4(v2, sub_1BA385C7C);
  }

  else
  {
    if ((*(v8 + 88))(v2, v7) == *MEMORY[0x1E69A3888])
    {
      (*(v8 + 96))(v2, v7);
      (*(v4 + 32))(v6, v2, v3);
      v9 = sub_1BA4A38D8();
      (*(v4 + 8))(v6, v3);
      v10 = *(v9 + 16);

      return v10;
    }

    (*(v8 + 8))(v2, v7);
  }

  return 0;
}