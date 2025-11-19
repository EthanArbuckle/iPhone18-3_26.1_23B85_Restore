id sub_1C564B474()
{
  v1 = OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1144750080;
    [v4 setContentCompressionResistancePriority:0 forAxis:v6];
    v7 = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_];
    [v4 setFont_];

    [v4 setAdjustsFontForContentSizeCategory_];
    v8 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1C564B5D0()
{
  v1 = OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v4 setContentCompressionResistancePriority:0 forAxis:v6];
    v7 = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_weight_];
    [v4 setFont_];

    [v4 setAdjustsFontForContentSizeCategory_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1C564B700()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1C584FA50();
  v4 = objc_opt_self();
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v5 = (v3 & 1) == 0;
  if (v3)
  {
    v6 = &OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_horizontalArrangementConstraints;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_verticalArrangementConstraints;
  }

  v7 = *v6;
  v8 = *&v0[v7];
  if (v5)
  {
    v9 = &OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_horizontalArrangementConstraints;
  }

  else
  {
    v9 = &OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_verticalArrangementConstraints;
  }

  v10 = *&v0[v7];

  v11 = sub_1C584F750();

  [v4 deactivateConstraints_];

  v12 = *&v0[*v9];

  v13 = sub_1C584F750();

  [v4 activateConstraints_];

  v14 = [v0 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  LOBYTE(v14) = sub_1C584FA50();
  v0[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_areLabelsArrangedVertically] = v14 & 1;
}

id sub_1C564BCA0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_titleString];
  v3 = [objc_opt_self() moreButtonLabel];
  v4 = sub_1C584F660();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  v7 = &v0[OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_symbolName];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_actionBlock];
  *v8 = 0;
  v8[1] = 0;
  v0[OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_isEnabled] = 1;
  *&v0[OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_actionStyle] = 0;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

char *sub_1C564BE00(uint64_t a1, void *a2)
{
  v3 = v2;
  v88 = a1;
  ObjectType = swift_getObjectType();
  v84 = sub_1C584E8B0();
  v89 = *(v84 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v84, v8);
  v87 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_areLabelsArrangedVertically] = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_horizontalArrangementConstraints] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_verticalArrangementConstraints] = v10;
  *&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel] = 0;
  *&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel] = 0;
  v12 = *(v11 + 16);
  v85 = v11 + 16;
  v86 = v12;
  (v12)(&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_leadingText], a1);
  *&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_trailingText] = a2;
  v90.receiver = v3;
  v90.super_class = ObjectType;
  v13 = a2;
  v14 = objc_msgSendSuper2(&v90, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = sub_1C564B474();
  [v14 addSubview_];

  v16 = sub_1C564B5D0();
  [v14 addSubview_];

  [v14 setDirectionalLayoutMargins_];
  v17 = objc_opt_self();
  v82[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C58682A0;
  v19 = sub_1C564B474();
  v20 = [v19 leadingAnchor];

  v21 = [v14 layoutMarginsGuide];
  v22 = [v21 &selRef_mode + 1];

  v23 = [v20 constraintEqualToAnchor_];
  *(v18 + 32) = v23;
  v24 = OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel;
  v25 = [*&v14[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel] topAnchor];
  v26 = [v14 layoutMarginsGuide];
  v27 = [v26 topAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v18 + 40) = v28;
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v29 = sub_1C584F750();

  [v17 activateConstraints_];

  v30 = swift_allocObject();
  v83 = xmmword_1C5868610;
  *(v30 + 16) = xmmword_1C5868610;
  v31 = [*&v14[v24] bottomAnchor];
  v32 = [v14 layoutMarginsGuide];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v30 + 32) = v34;
  v35 = [*&v14[v24] trailingAnchor];
  v36 = sub_1C564B5D0();
  v37 = [v36 leadingAnchor];

  v38 = [v35 constraintLessThanOrEqualToAnchor:v37 constant:-kMUPlaceHorizontalStackSpacing(1)];
  *(v30 + 40) = v38;
  v39 = OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel;
  v40 = [*&v14[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel] &selRef_transitionDuration_ + 4];
  v41 = [v14 layoutMarginsGuide];
  v42 = [v41 &selRef_transitionDuration_ + 4];

  v43 = [v40 constraintEqualToAnchor_];
  *(v30 + 48) = v43;
  v44 = [*&v14[v39] topAnchor];
  v45 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
  v46 = [v45 topAnchor];

  v47 = [v44 constraintEqualToAnchor_];
  *(v30 + 56) = v47;
  v48 = [*&v14[v39] bottomAnchor];
  v49 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
  v50 = [v49 bottomAnchor];

  v51 = [v48 constraintEqualToAnchor_];
  *(v30 + 64) = v51;
  v52 = *&v14[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_horizontalArrangementConstraints];
  *&v14[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_horizontalArrangementConstraints] = v30;

  v53 = swift_allocObject();
  *(v53 + 16) = v83;
  v54 = [*&v14[v24] trailingAnchor];
  v55 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v53 + 32) = v57;
  v58 = [*&v14[v39] topAnchor];
  v59 = [*&v14[v24] bottomAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:11.0];

  *(v53 + 40) = v60;
  v61 = [*&v14[v39] leadingAnchor];
  v62 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
  v63 = [v62 leadingAnchor];

  v64 = [v61 constraintEqualToAnchor_];
  *(v53 + 48) = v64;
  v65 = [*&v14[v39] bottomAnchor];
  v66 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
  v67 = [v66 bottomAnchor];

  v68 = [v65 constraintEqualToAnchor_];
  *(v53 + 56) = v68;
  v69 = [*&v14[v39] trailingAnchor];
  v70 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
  v71 = [v70 trailingAnchor];

  v72 = [v69 constraintEqualToAnchor_];
  *(v53 + 64) = v72;
  v73 = *&v14[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_verticalArrangementConstraints];
  *&v14[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_verticalArrangementConstraints] = v53;

  sub_1C564B700();
  v74 = *&v14[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel];
  sub_1C5626E40(0, &unk_1EC170B70, 0x1E696AAB0);
  v75 = v84;
  v86(v87, &v14[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_leadingText], v84);
  v76 = v74;
  v77 = sub_1C584FA40();
  [v76 setAttributedText_];

  [*&v14[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel] setAttributedText_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE90, &qword_1C5876290);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1C5867900;
  v79 = sub_1C584F310();
  v80 = MEMORY[0x1E69DC2B0];
  *(v78 + 32) = v79;
  *(v78 + 40) = v80;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
  sub_1C584FAA0();

  swift_unknownObjectRelease();

  (*(v89 + 8))(v88, v75);
  return v14;
}

uint64_t sub_1C564C854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C564C894(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C564C8DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C564C95C()
{
  result = sub_1C584E8B0();
  if (v1 <= 0x3F)
  {
    result = sub_1C5626E40(319, &unk_1EC170B70, 0x1E696AAB0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C564CA60(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C564CA98()
{
  result = sub_1C584E8B0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for MUActionStyle()
{
  if (!qword_1EC16DE88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC16DE88);
    }
  }
}

void sub_1C564CBC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_areLabelsArrangedVertically];
    v3 = [Strong traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    LODWORD(v3) = sub_1C584FA50() & 1;
    if (v2 != v3)
    {
      sub_1C564B700();
    }
  }
}

uint64_t sub_1C564CC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EVChargingRow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C564CCD4(uint64_t a1)
{
  v2 = type metadata accessor for EVChargingRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C564CD3C()
{
  v5 = v0;
  v6 = MEMORY[0x1E69E7CC0];
  v188 = MEMORY[0x1E69E7CC0];
  v7 = *(v0 + 32);
  if (!*(v7 + 16))
  {
    *&v197 = *(v0 + 40);
    LODWORD(v205[0]) = sub_1C57246C0();
    LODWORD(v180) = 0;
    type metadata accessor for UILayoutPriority(0);
    sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority);
    if (sub_1C584F610())
    {
      sub_1C5625EE8(v0, v205);
      v13 = *(v0 + 24);
      v14 = sub_1C570FB88(*(v5 + 24));
      v15 = *(v5 + 56);
      v16 = *(v5 + 64);
      v17 = *(v5 + 72);
      v18 = *(v5 + 80);
      sub_1C570FC58(v13);
      v20 = v19;
      sub_1C570FCBC(v13);
      v22 = v20 + v21;
      *&v180 = *(v5 + 40);
      v23 = sub_1C57246C0();
      sub_1C5705704(v205, v14, 0, 0x657A69536F72657ALL, 0xE800000000000000, &v197, v22, v23);
      v24 = sub_1C5625864(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1C5625864((v25 > 1), v26 + 1, 1, v24);
      }

      v24[2] = v26 + 1;
      sub_1C5625808(&v197, &v24[14 * v26 + 4]);
      return v24;
    }

    return v188;
  }

  sub_1C564E90C(&v187);
  v8 = v187;
  v9 = v187 >> 29;
  v179 = v0;
  if (v187 >> 29 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        if (*(v7 + 16) == 1)
        {
          v27 = sub_1C564EA4C();
          v12 = v27[2];
          if (!v12)
          {
            __break(1u);
            goto LABEL_168;
          }

          sub_1C5651DB8((v27 + 4), &v197);
        }

        else
        {
          sub_1C5651AD8(&v197);
          v62 = sub_1C564EA4C();
          sub_1C5651AD8(v205);
          sub_1C563E588(&v180);
          LOBYTE(v195) = v180;
          DWORD1(v195) = DWORD1(v180);
          sub_1C563E588(&v192);
          LOBYTE(v190) = LOBYTE(v192);
          v191 = v193;
          v63 = sub_1C564F848(v62, v205, &v195, &v190);

          sub_1C5651D88(v205);
          sub_1C5650E8C(v63);
        }

        v64 = *(&v8 + 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_1C5867900;
        sub_1C5651DB8(&v197, v65 + 32);
        sub_1C564E90C(v205);
        if (((1 << (LODWORD(v205[0]) >> 29)) & 0x3A) != 0)
        {
          sub_1C5625EE8(v0, v205);
          v206 = 0.0;
        }

        else
        {
          sub_1C5625EE8(v0, v205);
          v206 = sub_1C5651BA4();
        }

        v207 = sub_1C5651C6C();
        v208 = v75;
        v209 = v76;
        v210 = v77;
        v211 = 4;
        sub_1C563E56C(v8 & 1, &v180, 0.0);
        LOBYTE(v195) = v180;
        DWORD1(v195) = DWORD1(v180);
        sub_1C563E56C(v8 & 1, &v192, 0.0);
        LOBYTE(v190) = LOBYTE(v192);
        v191 = v193;
        v78 = sub_1C564F848(v65, v205, &v195, &v190);
        swift_setDeallocating();
        sub_1C5651D88(v65 + 32);
        swift_deallocClassInstance();
        sub_1C5651D88(v205);
        sub_1C5650E8C(v78);
        sub_1C564E90C(v205);
        if (((1 << (LODWORD(v205[0]) >> 29)) & 0x3A) != 0)
        {
          sub_1C5625EE8(v0, v205);
          v206 = 0.0;
        }

        else
        {
          sub_1C5625EE8(v0, v205);
          v206 = sub_1C5651BA4();
        }

        v207 = sub_1C5651C6C();
        v208 = v79;
        v209 = v80;
        v210 = v81;
        v211 = 4;
        sub_1C5652004(&v195);
        if (v196 == 255)
        {
          v96 = &v195;
        }

        else
        {
          sub_1C56251C8(&v195, &v180);
          sub_1C5652004(&v192);
          if (v194 != 255)
          {
            sub_1C56251C8(&v192, &v195);
            sub_1C5651E28();
            v82 = *(v0 + 24);
            sub_1C570FC58(v82);
            v84 = v83;
            sub_1C5651E28();
            sub_1C570FCBC(v82);
            v86 = (v84 - v85) * 0.5;
            sub_1C5651F1C();
            sub_1C570FD20(v82);
            v4 = v86 + v87;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E8B0, &qword_1C5869AC0);
            v88 = swift_allocObject();
            *(v88 + 16) = xmmword_1C5867900;
            sub_1C5625EE8(&v180, &v192);
            v89 = sub_1C570FAB8(v82);
            sub_1C5625EE8(&v195, &v190);
            v90 = sub_1C570FAB8(v82);
            v91 = sub_1C56521A0();
            v93 = v92;
            v94 = sub_1C5625100();
            v95 = sub_1C57056F8();
            sub_1C5625108(&v192, v89, 0, &v190, v90, v91, v93, v88 + 32, v94, v4, v95);
            sub_1C5626250(&v195);
            sub_1C5626250(&v180);
LABEL_97:
            sub_1C5651D88(v205);
            sub_1C5650E8C(v88);
            v1 = swift_allocObject();
            *(v1 + 16) = xmmword_1C5867990;
            sub_1C5651DB8(&v197, v1 + 32);
            sub_1C564E90C(v205);
            v97 = v1 + 128;
            if (((1 << (LODWORD(v205[0]) >> 29)) & 0x3A) != 0)
            {
              sub_1C5625EE8(v5, v97);
              *(v1 + 152) = 0;
            }

            else
            {
              sub_1C5625EE8(v5, v97);
              *(v1 + 152) = sub_1C5651BA4();
            }

            *(v1 + 160) = sub_1C5651C6C();
            *(v1 + 168) = v98;
            *(v1 + 176) = v99;
            *(v1 + 184) = v100;
            *(v1 + 216) = 4;
            v101 = sub_1C5650F84(v1, v64);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_1C5650E8C(v101);
            sub_1C5651D88(&v197);
            goto LABEL_101;
          }

          sub_1C5626250(&v180);
          v96 = &v192;
        }

        sub_1C5625230(v96, &unk_1EC16FE40, &qword_1C5876370);
        v88 = MEMORY[0x1E69E7CC0];
        goto LABEL_97;
      }

      v39 = HIDWORD(v187);
      v1 = sub_1C564EA4C();
      sub_1C564E90C(&v197);
      if (((1 << (v197 >> 29)) & 0x3A) != 0)
      {
        sub_1C5625EE8(v0, &v197);
        v199 = 0.0;
      }

      else
      {
        sub_1C5625EE8(v0, &v197);
        v199 = sub_1C5651BA4();
      }

      v200 = sub_1C5651C6C();
      v201 = v70;
      v202 = v71;
      v203 = v72;
      v204 = 4;
      LOBYTE(v205[0]) = v8 & 1;
      HIDWORD(v205[0]) = v39;
      sub_1C563E588(&v180);
      LOBYTE(v195) = v180;
      DWORD1(v195) = DWORD1(v180);
      v69 = v205;
    }

    else
    {
      v38 = HIDWORD(v187);
      v1 = sub_1C564EA4C();
      sub_1C564E90C(&v197);
      if (((1 << (v197 >> 29)) & 0x3A) != 0)
      {
        sub_1C5625EE8(v0, &v197);
        v199 = 0.0;
      }

      else
      {
        sub_1C5625EE8(v0, &v197);
        v199 = sub_1C5651BA4();
      }

      v200 = sub_1C5651C6C();
      v201 = v66;
      v202 = v67;
      v203 = v68;
      v204 = 4;
      sub_1C563E588(v205);
      LOBYTE(v180) = v205[0];
      DWORD1(v180) = HIDWORD(v205[0]);
      LOBYTE(v195) = v8 & 1;
      DWORD1(v195) = v38;
      v69 = &v180;
    }

    v73 = &v195;
    goto LABEL_84;
  }

  if (v187 >> 29 > 4)
  {
    if (v9 == 5)
    {
      goto LABEL_19;
    }

    v1 = sub_1C564EA4C();
    if (v8 != 3221225472)
    {
      sub_1C564E90C(&v197);
      if (((1 << (v197 >> 29)) & 0x3A) != 0)
      {
        sub_1C5625EE8(v0, &v197);
        v199 = 0.0;
      }

      else
      {
        sub_1C5625EE8(v0, &v197);
        v199 = sub_1C5651BA4();
      }

      v200 = sub_1C5651C6C();
      v201 = v141;
      v202 = v142;
      v203 = v143;
      v204 = 4;
      sub_1C563E588(v205);
      LOBYTE(v180) = v205[0];
      DWORD1(v180) = HIDWORD(v205[0]);
      sub_1C563E588(&v195);
      LOBYTE(v192) = v195;
      v193 = DWORD1(v195);
      v144 = sub_1C564F848(v1, &v197, &v180, &v192);

      sub_1C5651D88(&v197);
      sub_1C5650E8C(v144);
      v1 = sub_1C564EA4C();
      v2 = sub_1C5650F84(v1, 1000.0);

      goto LABEL_86;
    }

    sub_1C564E90C(&v197);
    if (((1 << (v197 >> 29)) & 0x3A) != 0)
    {
      sub_1C5625EE8(v0, &v197);
      v199 = 0.0;
    }

    else
    {
      sub_1C5625EE8(v0, &v197);
      v199 = sub_1C5651BA4();
    }

    v200 = sub_1C5651C6C();
    v201 = v138;
    v202 = v139;
    v203 = v140;
    v204 = 4;
    sub_1C563E588(v205);
    LOBYTE(v180) = v205[0];
    DWORD1(v180) = HIDWORD(v205[0]);
    sub_1C563E588(&v195);
    LOBYTE(v192) = v195;
    v193 = DWORD1(v195);
    v69 = &v180;
    v73 = &v192;
LABEL_84:
    v2 = sub_1C564F848(v1, &v197, v69, v73);

    v74 = &v197;
LABEL_85:
    sub_1C5651D88(v74);
LABEL_86:
    sub_1C5650E8C(v2);
    goto LABEL_101;
  }

  if (v9 == 3)
  {
    v3 = HIDWORD(v187);
    v10 = *(&v187 + 1);
    if (*(v7 + 16) == 2)
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1C5867900;
      v11 = sub_1C564EA4C();
      v12 = v11[2];
      if (v12)
      {
        sub_1C5651DB8((v11 + 4), v2 + 32);

        sub_1C564E90C(&v197);
        if (((1 << (v197 >> 29)) & 0x3A) != 0)
        {
          sub_1C5625EE8(v0, &v197);
          v199 = 0.0;
        }

        else
        {
          sub_1C5625EE8(v0, &v197);
          v199 = sub_1C5651BA4();
        }

        v200 = sub_1C5651C6C();
        v201 = v145;
        v202 = v146;
        v203 = v147;
        v204 = 4;
        sub_1C563E588(v205);
        LOBYTE(v180) = v205[0];
        DWORD1(v180) = HIDWORD(v205[0]);
        sub_1C563E560(&v195);
        LOBYTE(v192) = v195;
        v193 = DWORD1(v195);
        v148 = sub_1C564F848(v2, &v197, &v180, &v192);
        swift_setDeallocating();
        sub_1C5651D88(v2 + 32);
        swift_deallocClassInstance();
        sub_1C5651D88(&v197);
        sub_1C5650E8C(v148);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_1C5867900;
        v149 = sub_1C564EA4C();
        v12 = v149[2];
        if (v12 >= 2)
        {
          sub_1C5651DB8((v149 + 16), v1 + 32);

          sub_1C564E90C(&v197);
          if (((1 << (v197 >> 29)) & 0x3A) != 0)
          {
            sub_1C5625EE8(v0, &v197);
            v199 = 0.0;
          }

          else
          {
            sub_1C5625EE8(v0, &v197);
            v199 = sub_1C5651BA4();
          }

          v200 = sub_1C5651C6C();
          v201 = v150;
          v202 = v151;
          v203 = v152;
          v204 = 4;
          sub_1C563E560(v205);
          LOBYTE(v180) = v205[0];
          DWORD1(v180) = HIDWORD(v205[0]);
          sub_1C563E588(&v195);
          LOBYTE(v192) = v195;
          v193 = DWORD1(v195);
          v2 = sub_1C564F848(v1, &v197, &v180, &v192);
          swift_setDeallocating();
          sub_1C5651D88(v1 + 32);
          swift_deallocClassInstance();
          sub_1C5651D88(&v197);
          sub_1C5650E8C(v2);
          v153 = sub_1C564EA4C();
          v12 = v153[2];
          if (v12)
          {
            sub_1C5651DB8((v153 + 4), v205);

            v154 = sub_1C564EA4C();
            v12 = v154[2];
            if (v12 >= 2)
            {
              sub_1C5651DB8((v154 + 16), &v180);

              v155 = *(v0 + 48);
              sub_1C5652004(&v197);
              if (v198 != 255)
              {
                sub_1C56251C8(&v197, &v195);
                sub_1C5652004(&v197);
                if (v198 != 255)
                {
                  sub_1C56251C8(&v197, &v192);
                  sub_1C5651E28();
                  v1 = *(v0 + 24);
                  sub_1C570FCBC(v1);
                  v157 = v156;
                  sub_1C5651F1C();
                  sub_1C570FD20(v1);
                  v159 = v155 + v157 - v158;
                  sub_1C5651E28();
                  sub_1C570FC58(v1);
                  v161 = v159 + v160;
                  sub_1C5651F1C();
                  sub_1C570FD20(v1);
                  v4 = -(v161 + v162);
                  LODWORD(v197) = v3;
                  v190 = 0;
                  type metadata accessor for UILayoutPriority(0);
                  sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority);
                  if ((sub_1C584F610() & 1) == 0)
                  {
LABEL_154:
                    v2 = MEMORY[0x1E69E7CC0];
LABEL_155:
                    LODWORD(v197) = v3;
                    v190 = 1148846080;
                    sub_1C5653044(&qword_1ED77E830, type metadata accessor for UILayoutPriority);
                    if (sub_1C584F2D0())
                    {
                      sub_1C5625EE8(&v195, &v190);
                      v169 = sub_1C570FB20(v1);
                      sub_1C5625EE8(&v192, v189);
                      v1 = sub_1C570FA50(v1);
                      v170 = sub_1C56521A0();
                      v172 = v171;
                      v173 = sub_1C5625100();
                      v174 = sub_1C57056F8();
                      sub_1C5625108(&v190, v169, -1, v189, v1, v170, v172, &v197, v173, v4, v174);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v2 = sub_1C5625864(0, *(v2 + 16) + 1, 1, v2);
                      }

                      v176 = *(v2 + 16);
                      v175 = *(v2 + 24);
                      if (v176 >= v175 >> 1)
                      {
                        v2 = sub_1C5625864((v175 > 1), v176 + 1, 1, v2);
                      }

                      sub_1C5626250(&v192);
                      sub_1C5626250(&v195);
                      *(v2 + 16) = v176 + 1;
                      sub_1C5625808(&v197, v2 + 112 * v176 + 32);
                    }

                    else
                    {
                      sub_1C5626250(&v192);
                      sub_1C5626250(&v195);
                    }

                    goto LABEL_162;
                  }

                  sub_1C5625EE8(&v195, &v190);
                  v163 = sub_1C570FB20(v1);
                  sub_1C5625EE8(&v192, v189);
                  v164 = sub_1C570FA50(v1);
                  v165 = sub_1C56521A0();
                  v167 = v166;
                  v168 = sub_1C5625100();
                  sub_1C5625108(&v190, v163, 0, v189, v164, v165, v167, &v197, v168, v4, v10);
                  v2 = sub_1C5625864(0, 1, 1, MEMORY[0x1E69E7CC0]);
                  v7 = *(v2 + 16);
                  v12 = *(v2 + 24);
                  v0 = v7 + 1;
                  if (v7 < v12 >> 1)
                  {
LABEL_150:
                    *(v2 + 16) = v0;
                    sub_1C5625808(&v197, v2 + 112 * v7 + 32);
                    goto LABEL_155;
                  }

LABEL_172:
                  v2 = sub_1C5625864((v12 > 1), v0, 1, v2);
                  goto LABEL_150;
                }

                sub_1C5626250(&v195);
              }

              sub_1C5625230(&v197, &unk_1EC16FE40, &qword_1C5876370);
              v2 = MEMORY[0x1E69E7CC0];
LABEL_162:
              sub_1C5651D88(&v180);
              v74 = v205;
              goto LABEL_85;
            }

LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(&v187 + 1);
LABEL_20:
  v28 = sub_1C564EA4C();
  sub_1C564E90C(&v197);
  if (((1 << (v197 >> 29)) & 0x3A) != 0)
  {
    sub_1C5625EE8(v0, &v197);
    v199 = 0.0;
  }

  else
  {
    sub_1C5625EE8(v0, &v197);
    v199 = sub_1C5651BA4();
  }

  v200 = sub_1C5651C6C();
  v201 = v29;
  v202 = v30;
  v203 = v31;
  v204 = 4;
  sub_1C563E588(v205);
  LOBYTE(v180) = v205[0];
  DWORD1(v180) = HIDWORD(v205[0]);
  sub_1C563E588(&v195);
  LOBYTE(v192) = v195;
  v193 = DWORD1(v195);
  v32 = sub_1C564F848(v28, &v197, &v180, &v192);

  sub_1C5651D88(&v197);
  sub_1C5650E8C(v32);
  v33 = sub_1C564EA4C();
  v34 = v33;
  v35 = v33[2];
  if (!v35)
  {
LABEL_32:

    v185 = 0;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v180 = 0u;
    v186 = -1;
    goto LABEL_41;
  }

  v36 = 0;
  v1 = (v33 + 4);
  v37 = &unk_1EC16E860;
  while (1)
  {
    if (v36 >= v34[2])
    {
      goto LABEL_165;
    }

    sub_1C5651DB8(v1, &v197);
    sub_1C5651DB8(&v197, v205);
    if (v211 > 2u)
    {
      if (v211 != 3)
      {
        sub_1C5626250(v205);
      }

      goto LABEL_27;
    }

    if (v211)
    {
      break;
    }

    sub_1C5625230(v205, &unk_1EC16E860, &qword_1C5868750);
LABEL_27:
    ++v36;
    sub_1C5651D88(&v197);
    v1 += 96;
    if (v35 == v36)
    {
      goto LABEL_32;
    }
  }

  sub_1C5625230(v205, &unk_1EC16E860, &qword_1C5868750);
  sub_1C5651DF0(&v197, &v180);
LABEL_41:
  v4 = *(v5 + 48);
  sub_1C56466CC(&v180, &v197, &qword_1EC16DE98, &qword_1C5868758);
  if (v204 == 255)
  {
    sub_1C5625230(&v197, &qword_1EC16DE98, &qword_1C5868758);
    v45 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C5651DF0(&v197, v205);
    sub_1C5652004(&v197);
    if (v198 == 255)
    {
      goto LABEL_176;
    }

    if ((v198 & 1) == 0)
    {
LABEL_174:
      sub_1C5626250(&v197);
      while (1)
      {
        sub_1C584FD00();
        __break(1u);
LABEL_176:
        sub_1C5625230(&v197, &unk_1EC16FE40, &qword_1C5876370);
      }
    }

    v40 = v197;
    *&v197 = v10;
    LODWORD(v195) = 0;
    type metadata accessor for UILayoutPriority(0);
    sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority);
    if (sub_1C584F610())
    {
      v195 = v40;
      v196 = 1;
      v41 = *(v5 + 24);

      v42 = sub_1C570FB88(v41);
      v43 = sub_1C56521A0();
      sub_1C5705704(&v195, v42, 0, v43, v44, &v197, v4, v10);
      v45 = sub_1C5625864(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v47 = v45[2];
      v46 = v45[3];
      if (v47 >= v46 >> 1)
      {
        v45 = sub_1C5625864((v46 > 1), v47 + 1, 1, v45);
      }

      v45[2] = v47 + 1;
      sub_1C5625808(&v197, &v45[14 * v47 + 4]);
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC0];
    }

    *&v197 = v10;
    LODWORD(v195) = 1148846080;
    sub_1C5653044(&qword_1ED77E830, type metadata accessor for UILayoutPriority);
    if (sub_1C584F2D0())
    {
      v195 = v40;
      v196 = 1;
      v48 = sub_1C570FB88(*(v5 + 24));
      v49 = sub_1C56521A0();
      v51 = v50;
      v52 = sub_1C57056F8();
      sub_1C5705704(&v195, v48, 1, v49, v51, &v197, v4, v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1C5625864(0, v45[2] + 1, 1, v45);
      }

      v54 = v45[2];
      v53 = v45[3];
      if (v54 >= v53 >> 1)
      {
        v45 = sub_1C5625864((v53 > 1), v54 + 1, 1, v45);
      }

      sub_1C5651D88(v205);
      v45[2] = v54 + 1;
      sub_1C5625808(&v197, &v45[14 * v54 + 4]);
    }

    else
    {
      sub_1C5651D88(v205);
    }
  }

  sub_1C5625230(&v180, &qword_1EC16DE98, &qword_1C5868758);
  sub_1C5650E8C(v45);
  v55 = sub_1C564EA4C();
  v1 = v55;
  v56 = v55[2];
  if (!v56)
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_73:

    v1 = sub_1C5650F84(v58, 1000.0);

    sub_1C5650E8C(v1);
    v6 = MEMORY[0x1E69E7CC0];
LABEL_101:
    *&v180 = v6;
    v102 = sub_1C564EA4C();
    sub_1C5650D94(v102);
    sub_1C5651AD8(&v197);
    v37 = v180;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_102;
  }

  v57 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  v37 = v55 + 4;
  while (v57 < *(v1 + 16))
  {
    sub_1C5651DB8(v37, &v197);
    sub_1C5651DB8(&v197, v205);
    if (v211 > 2u)
    {
      if (v211 != 3)
      {
        sub_1C5626250(v205);
      }
    }

    else
    {
      if (v211 - 1 < 2)
      {
        sub_1C5625230(v205, &unk_1EC16E860, &qword_1C5868750);
        sub_1C5651DF0(&v197, v205);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v180 = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C5652B0C(0, *(v58 + 16) + 1, 1);
          v58 = v180;
        }

        v61 = *(v58 + 16);
        v60 = *(v58 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1C5652B0C((v60 > 1), v61 + 1, 1);
          v58 = v180;
        }

        *(v58 + 16) = v61 + 1;
        sub_1C5651DF0(v205, v58 + 96 * v61 + 32);
        goto LABEL_61;
      }

      sub_1C5625230(v205, &unk_1EC16E860, &qword_1C5868750);
    }

    sub_1C5651D88(&v197);
LABEL_61:
    ++v57;
    v37 += 12;
    if (v56 == v57)
    {
      goto LABEL_73;
    }
  }

  while (2)
  {
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    v37 = sub_1C5652C6C(0, v37[2] + 1, 1, v37);
LABEL_102:
    v104 = v37[2];
    v103 = v37[3];
    v105 = v104 + 1;
    if (v104 >= v103 >> 1)
    {
      v37 = sub_1C5652C6C((v103 > 1), v104 + 1, 1, v37);
    }

    v37[2] = v105;
    v106 = (v37 + 4);
    sub_1C5651DF0(&v197, &v37[12 * v104 + 4]);
    v6 = 0;
    v107 = MEMORY[0x1E69E7CC0];
    v3 = &qword_1C5868750;
    while (2)
    {
      if (v6 >= v37[2])
      {
        __break(1u);
        goto LABEL_154;
      }

      sub_1C5651DB8(v106, &v197);
      sub_1C5651DB8(&v197, v205);
      if (v211 > 2u)
      {
        if (v211 != 3)
        {
          sub_1C5626250(v205);
          goto LABEL_106;
        }

LABEL_113:
        sub_1C5651DF0(&v197, v205);
        v108 = swift_isUniquelyReferenced_nonNull_native();
        *&v195 = v107;
        if ((v108 & 1) == 0)
        {
          sub_1C5652B0C(0, *(v107 + 16) + 1, 1);
          v107 = v195;
        }

        v1 = *(v107 + 16);
        v109 = *(v107 + 24);
        if (v1 >= v109 >> 1)
        {
          sub_1C5652B0C((v109 > 1), v1 + 1, 1);
          v107 = v195;
        }

        *(v107 + 16) = v1 + 1;
        sub_1C5651DF0(v205, v107 + 96 * v1 + 32);
      }

      else
      {
        if (v211 - 1 < 2)
        {
          sub_1C5625230(v205, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_113;
        }

        sub_1C5625230(v205, &unk_1EC16E860, &qword_1C5868750);
LABEL_106:
        sub_1C5651D88(&v197);
      }

      ++v6;
      v106 += 96;
      if (v105 != v6)
      {
        continue;
      }

      break;
    }

    v110 = v179;
    v178 = *(v107 + 16);
    if (v178)
    {
      v111 = 0;
      v112 = v107 + 32;
      v37 = MEMORY[0x1E69E7CC0];
      v177 = v107;
      while (v111 < *(v107 + 16))
      {
        sub_1C5651DB8(v112, v205);
        sub_1C5652004(&v197);
        if (v198 == 255)
        {
          goto LABEL_176;
        }

        if ((v198 & 1) == 0)
        {
          goto LABEL_174;
        }

        v113 = v197;
        v180 = v197;
        LOBYTE(v181) = 1;
        v114 = *(v110 + 24);

        v115 = sub_1C570FBF0(v114);
        v116 = sub_1C570FA50(v115);
        sub_1C5625EE8(v110, &v195);
        v117 = sub_1C570FBF0(v114);
        v118 = sub_1C570FA50(v117);
        v119 = sub_1C56521A0();
        v121 = v120;
        v122 = sub_1C5625100();
        v123 = sub_1C57057B4();
        v124 = sub_1C57056F8();
        sub_1C5625108(&v180, v116, 0, &v195, v118, v119, v121, &v197, v122, v123, v124);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1C5625864(0, v37[2] + 1, 1, v37);
        }

        v126 = v37[2];
        v125 = v37[3];
        v110 = v179;
        if (v126 >= v125 >> 1)
        {
          v37 = sub_1C5625864((v125 > 1), v126 + 1, 1, v37);
        }

        v37[2] = v126 + 1;
        sub_1C5625808(&v197, &v37[14 * v126 + 4]);
        v180 = v113;
        LOBYTE(v181) = 1;
        v127 = sub_1C570FBF0(v114);
        v128 = sub_1C570FB20(v127);
        sub_1C5625EE8(v179, &v195);
        v129 = sub_1C570FBF0(v114);
        v130 = sub_1C570FB20(v129);
        v131 = sub_1C56521A0();
        v133 = v132;
        v134 = sub_1C5625100();
        v4 = sub_1C57057B4();
        v135 = sub_1C57056F8();
        sub_1C5625108(&v180, v128, 0, &v195, v130, v131, v133, &v197, v134, v4, v135);
        v1 = v37[2];
        v136 = v37[3];
        if (v1 >= v136 >> 1)
        {
          v37 = sub_1C5625864((v136 > 1), v1 + 1, 1, v37);
        }

        ++v111;
        sub_1C5651D88(v205);
        v37[2] = v1 + 1;
        sub_1C5625808(&v197, &v37[14 * v1 + 4]);
        v112 += 96;
        v107 = v177;
        if (v178 == v111)
        {
          goto LABEL_133;
        }
      }

      __break(1u);
      continue;
    }

    break;
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_133:

  sub_1C5650E8C(v37);
  return v188;
}

uint64_t sub_1C564E90C@<X0>(unint64_t *a1@<X8>)
{
  v10 = *(v1 + 40);
  result = sub_1C57245D8(&v9);
  v4 = v9;
  v5 = v9 >> 29;
  if (v9 >> 29 <= 3)
  {
    if (v5 < 3)
    {
LABEL_3:
      *a1 = v4;
      return result;
    }

    goto LABEL_11;
  }

  if (v5 - 4 >= 2)
  {
    if (v9 == 3221225472)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*(*(v1 + 32) + 16) != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v6 = HIDWORD(v9);
  LODWORD(v10) = HIDWORD(v9);
  LODWORD(v9) = 1148846080;
  type metadata accessor for UILayoutPriority(0);
  sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority);
  result = sub_1C584F610();
  if ((result & 1) == 0)
  {
LABEL_12:
    v8 = 3221225472;
    goto LABEL_13;
  }

  if (*(*(v1 + 32) + 16) != 1)
  {
    goto LABEL_3;
  }

  result = sub_1C563E56C(1, &v10, *&v6);
  v7 = 0x20000000;
  if (v10)
  {
    v7 = 536870913;
  }

  v8 = v7 | (HIDWORD(v10) << 32);
LABEL_13:
  *a1 = v8;
  return result;
}

uint64_t *sub_1C564EA4C()
{
  sub_1C564E90C(&v59);
  v6 = v59 >> 29;
  if (v59 >> 29 <= 2)
  {
    goto LABEL_26;
  }

  if (v59 >> 29 > 4)
  {
    if (v6 == 5)
    {
      v3 = *(v0 + 32);
      v51 = v3[2];
      if (!v51)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v4 = 0;
      v14 = (v3 + 4);
      v9 = MEMORY[0x1E69E7CC0];
      v1 = &unk_1EC16E860;
      v2 = &qword_1C5868750;
      while (1)
      {
        v8 = v3[2];
        if (v4 >= v8)
        {
          break;
        }

        v62 = v4;
        sub_1C56466CC(v14, v63, &unk_1EC16E860, &qword_1C5868750);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1C5867980;
        sub_1C56466CC(v63, v15 + 32, &unk_1EC16E860, &qword_1C5868750);
        *(v15 + 120) = 1;
        sub_1C56466CC(v63, v15 + 128, &unk_1EC16E860, &qword_1C5868750);
        *(v15 + 208) = v4;
        *(v15 + 216) = 0;
        sub_1C56466CC(v63, v15 + 224, &unk_1EC16E860, &qword_1C5868750);
        *(v15 + 312) = 2;
        sub_1C5625230(&v62, &qword_1EC16DEF8, &qword_1C5868C28);
        v16 = v9[2];
        v5 = v16 + 3;
        if (__OFADD__(v16, 3))
        {
          goto LABEL_99;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v18 = v9[3] >> 1, v18 < v5))
        {
          if (v16 <= v5)
          {
            v19 = v16 + 3;
          }

          else
          {
            v19 = v16;
          }

          v9 = sub_1C5652C6C(isUniquelyReferenced_nonNull_native, v19, 1, v9);
          v18 = v9[3] >> 1;
        }

        v8 = v18 - v9[2];
        if (v8 < 3)
        {
          goto LABEL_101;
        }

        swift_arrayInitWithCopy();

        v20 = v9[2];
        v21 = __OFADD__(v20, 3);
        v8 = v20 + 3;
        if (v21)
        {
          goto LABEL_102;
        }

        ++v4;
        v9[2] = v8;
        v14 += 80;
        if (v51 == v4)
        {
          return v9;
        }
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

LABEL_26:
    v22 = *(v0 + 32);
    v1 = *(v22 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (!v1)
    {
      return v9;
    }

    *&v68 = MEMORY[0x1E69E7CC0];
    sub_1C5652B0C(0, v1, 0);
    v4 = 0;
    v23 = v68;
    v2 = v22 + 32;
    v52 = *(v22 + 16);
    v3 = &unk_1EC16E860;
    v9 = &qword_1C5868750;
    while (1)
    {
      v8 = v52;
      if (v52 == v4)
      {
        break;
      }

      v8 = *(v22 + 16);
      if (v4 >= v8)
      {
        goto LABEL_96;
      }

      sub_1C56466CC(v2, v58, &unk_1EC16E860, &qword_1C5868750);
      v55 = v4;
      sub_1C56534F4(v58, v56, &unk_1EC16E860, &qword_1C5868750);
      sub_1C56466CC(v56, &v62, &unk_1EC16E860, &qword_1C5868750);
      v65 = v4;
      v66 = 0;
      sub_1C5625230(&v55, &qword_1EC16DEF8, &qword_1C5868C28);
      v24 = v23;
      *&v68 = v23;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      v5 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_1C5652B0C((v25 > 1), v26 + 1, 1);
        v24 = v68;
      }

      ++v4;
      *(v24 + 16) = v5;
      v23 = v24;
      sub_1C5651DF0(&v62, v24 + 96 * v26 + 32);
      v2 += 80;
      if (v1 == v4)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v6 != 3)
  {
    v27 = *(v0 + 32);
    v53 = *(v27 + 16);
    if (!v53)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = 0;
    v1 = (v27 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v2 = &unk_1EC16E860;
    v3 = &qword_1C5868750;
    v4 = &qword_1C5868C30;
    v47 = v27 + 32;
    v49 = *(v0 + 32);
    while (1)
    {
      v8 = *(v27 + 16);
      if (v5 >= v8)
      {
        goto LABEL_98;
      }

      v57 = v5;
      sub_1C56466CC(v1, v58, &unk_1EC16E860, &qword_1C5868750);
      sub_1C56466CC(v58, &v55, &unk_1EC16E860, &qword_1C5868750);
      if (*(v27 + 16))
      {
        sub_1C56466CC(v47, &v68, &unk_1EC16E860, &qword_1C5868750);
      }

      else
      {
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v72 = 0;
        v73 = 2147483646;
      }

      sub_1C56466CC(&v55, &v62, &qword_1EC16DF00, &qword_1C5868C30);
      sub_1C56466CC(&v68, &v65, &qword_1EC16DF00, &qword_1C5868C30);
      if ((v64 & 0xFFFFFFFE) == 0x7FFFFFFE)
      {
        sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
        sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
        if ((v67 & 0xFFFFFFFE) != 0x7FFFFFFE)
        {
          goto LABEL_47;
        }

        sub_1C5625230(&v62, &qword_1EC16DF00, &qword_1C5868C30);
      }

      else
      {
        sub_1C56466CC(&v62, v61, &qword_1EC16DF00, &qword_1C5868C30);
        if ((v67 & 0xFFFFFFFE) == 0x7FFFFFFE)
        {
          sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
          sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
          sub_1C5625230(v61, &unk_1EC16E860, &qword_1C5868750);
LABEL_47:
          sub_1C5625230(&v62, &qword_1EC16DF08, &qword_1C5868C38);
LABEL_48:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1C5867990;
          sub_1C56466CC(v58, v28 + 32, &unk_1EC16E860, &qword_1C5868750);
          *(v28 + 112) = v5;
          *(v28 + 120) = 0;
          sub_1C56466CC(v58, v28 + 128, &unk_1EC16E860, &qword_1C5868750);
          *(v28 + 216) = 2;
          goto LABEL_51;
        }

        sub_1C56534F4(&v65, v60, &unk_1EC16E860, &qword_1C5868750);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
        sub_1C56534A4(&qword_1EC16DED0);
        v29 = sub_1C584F620();
        sub_1C5625230(v60, &unk_1EC16E860, &qword_1C5868750);
        sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
        sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
        sub_1C5625230(v61, &unk_1EC16E860, &qword_1C5868750);
        sub_1C5625230(&v62, &qword_1EC16DF00, &qword_1C5868C30);
        if ((v29 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1C5867980;
      sub_1C56466CC(v58, v28 + 32, &unk_1EC16E860, &qword_1C5868750);
      *(v28 + 120) = 1;
      sub_1C56466CC(v58, v28 + 128, &unk_1EC16E860, &qword_1C5868750);
      *(v28 + 208) = v5;
      *(v28 + 216) = 0;
      sub_1C56466CC(v58, v28 + 224, &unk_1EC16E860, &qword_1C5868750);
      *(v28 + 312) = 2;
LABEL_51:
      sub_1C5625230(&v57, &qword_1EC16DEF8, &qword_1C5868C28);
      v30 = *(v28 + 16);
      v31 = v9[2];
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_100;
      }

      v33 = swift_isUniquelyReferenced_nonNull_native();
      if (v33 && v32 <= (v9[3] >> 1))
      {
        if (!*(v28 + 16))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v9 = sub_1C5652C6C(v33, v34, 1, v9);
        if (!*(v28 + 16))
        {
LABEL_36:

          if (v30)
          {
            goto LABEL_103;
          }

          goto LABEL_37;
        }
      }

      v8 = v9[2];
      if (((v9[3] >> 1) - v8) < v30)
      {
        goto LABEL_104;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v35 = v9[2];
        v21 = __OFADD__(v35, v30);
        v8 = v35 + v30;
        if (v21)
        {
          goto LABEL_108;
        }

        v9[2] = v8;
      }

LABEL_37:
      ++v5;
      v1 += 80;
      v27 = v49;
      if (v53 == v5)
      {
        return v9;
      }
    }
  }

  v5 = *(v0 + 32);
  v7 = *(v5 + 16);
  if (v7 != 2)
  {
    if (v7)
    {
      v36 = 0;
      v1 = (v5 + 32);
      v48 = v5 - 48;
      v9 = MEMORY[0x1E69E7CC0];
      v2 = &unk_1EC16E860;
      v3 = &qword_1C5868750;
      v4 = &qword_1C5868C30;
      v50 = *(v0 + 32);
      v54 = *(v5 + 16);
      while (1)
      {
        v8 = *(v5 + 16);
        if (v36 >= v8)
        {
          goto LABEL_105;
        }

        v57 = v36;
        sub_1C56466CC(v1, v58, &unk_1EC16E860, &qword_1C5868750);
        sub_1C56466CC(v58, &v55, &unk_1EC16E860, &qword_1C5868750);
        v38 = *(v5 + 16);
        if (v38)
        {
          sub_1C56466CC(v48 + 80 * v38, &v68, &unk_1EC16E860, &qword_1C5868750);
        }

        else
        {
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v72 = 0;
          v73 = 2147483646;
        }

        sub_1C56466CC(&v55, &v62, &qword_1EC16DF00, &qword_1C5868C30);
        sub_1C56466CC(&v68, &v65, &qword_1EC16DF00, &qword_1C5868C30);
        if ((v64 & 0xFFFFFFFE) == 0x7FFFFFFE)
        {
          sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
          sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
          if ((v67 & 0xFFFFFFFE) != 0x7FFFFFFE)
          {
            goto LABEL_77;
          }

          sub_1C5625230(&v62, &qword_1EC16DF00, &qword_1C5868C30);
        }

        else
        {
          sub_1C56466CC(&v62, v61, &qword_1EC16DF00, &qword_1C5868C30);
          if ((v67 & 0xFFFFFFFE) == 0x7FFFFFFE)
          {
            sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
            sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
            sub_1C5625230(v61, &unk_1EC16E860, &qword_1C5868750);
LABEL_77:
            sub_1C5625230(&v62, &qword_1EC16DF08, &qword_1C5868C38);
LABEL_78:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_1C5867990;
            sub_1C56466CC(v58, v39 + 32, &unk_1EC16E860, &qword_1C5868750);
            *(v39 + 112) = v36;
            *(v39 + 120) = 0;
            sub_1C56466CC(v58, v39 + 128, &unk_1EC16E860, &qword_1C5868750);
            *(v39 + 216) = 2;
            goto LABEL_81;
          }

          sub_1C56534F4(&v65, v60, &unk_1EC16E860, &qword_1C5868750);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
          sub_1C56534A4(&qword_1EC16DED0);
          v40 = sub_1C584F620();
          sub_1C5625230(v60, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
          sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
          sub_1C5625230(v61, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(&v62, &qword_1EC16DF00, &qword_1C5868C30);
          if ((v40 & 1) == 0)
          {
            goto LABEL_78;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1C5867900;
        sub_1C56466CC(v58, v39 + 32, &unk_1EC16E860, &qword_1C5868750);
        *(v39 + 112) = v36;
        *(v39 + 120) = 0;
LABEL_81:
        sub_1C5625230(&v57, &qword_1EC16DEF8, &qword_1C5868C28);
        v5 = *(v39 + 16);
        v41 = v9[2];
        v42 = v41 + v5;
        if (__OFADD__(v41, v5))
        {
          goto LABEL_106;
        }

        v43 = swift_isUniquelyReferenced_nonNull_native();
        if (!v43 || v42 > (v9[3] >> 1))
        {
          if (v41 <= v42)
          {
            v44 = v41 + v5;
          }

          else
          {
            v44 = v41;
          }

          v9 = sub_1C5652C6C(v43, v44, 1, v9);
        }

        if (*(v39 + 16))
        {
          v8 = v9[2];
          if (((v9[3] >> 1) - v8) < v5)
          {
            goto LABEL_109;
          }

          swift_arrayInitWithCopy();

          v37 = v54;
          if (v5)
          {
            v45 = v9[2];
            v21 = __OFADD__(v45, v5);
            v8 = v45 + v5;
            if (v21)
            {
              goto LABEL_110;
            }

            v9[2] = v8;
          }
        }

        else
        {

          v37 = v54;
          if (v5)
          {
            goto LABEL_107;
          }
        }

        ++v36;
        v1 += 80;
        v5 = v50;
        if (v37 == v36)
        {
          return v9;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  *&v68 = MEMORY[0x1E69E7CC0];
  sub_1C5652B0C(0, 2, 0);
  v9 = *(v5 + 16);
  if (!v9)
  {
    goto LABEL_111;
  }

  v10 = v68;
  v3 = &v57;
  v2 = &v55;
  sub_1C56466CC(v5 + 32, v58, &unk_1EC16E860, &qword_1C5868750);
  v55 = 0;
  sub_1C56534F4(v58, v56, &unk_1EC16E860, &qword_1C5868750);
  sub_1C56466CC(v56, &v62, &unk_1EC16E860, &qword_1C5868750);
  v65 = 0;
  v66 = 0;
  sub_1C5625230(&v55, &qword_1EC16DEF8, &qword_1C5868C28);
  v11 = v10;
  v4 = *(v10 + 16);
  v8 = *(v10 + 24);
  v1 = (v4 + 1);
  if (v4 >= v8 >> 1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    *(v11 + 16) = v1;
    v12 = v11;
    sub_1C5651DF0(&v62, v11 + 96 * v4 + 32);
    if (v9 != 1)
    {
      break;
    }

LABEL_111:
    __break(1u);
LABEL_112:
    sub_1C5652B0C((v8 > 1), v1, 1);
    v11 = v68;
  }

  v13 = *(v5 + 16);
  if (v13 < 2)
  {
    __break(1u);
    goto LABEL_114;
  }

  sub_1C56466CC(v5 + 112, (v3 + 1), &unk_1EC16E860, &qword_1C5868750);
  v55 = 1;
  sub_1C56534F4((v3 + 1), v2 + 8, &unk_1EC16E860, &qword_1C5868750);
  sub_1C56466CC(v2 + 8, &v62, &unk_1EC16E860, &qword_1C5868750);
  v65 = 1;
  v66 = 0;
  sub_1C5625230(&v55, &qword_1EC16DEF8, &qword_1C5868C28);
  v9 = v12;
  *&v68 = v12;
  v2 = *(v12 + 16);
  v13 = *(v12 + 24);
  v1 = (v2 + 1);
  if (v2 >= v13 >> 1)
  {
LABEL_114:
    sub_1C5652B0C((v13 > 1), v1, 1);
    v9 = v68;
  }

  v9[2] = v1;
  sub_1C5651DF0(&v62, &v9[12 * v2 + 4]);
  return v9;
}

uint64_t sub_1C564F848(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v5 = v4;
  v7 = *a3;
  v8 = *a4;
  v105 = a4[1];
  v106 = a3[1];
  sub_1C5652004(&v114);
  if (v115 == 255)
  {
    sub_1C5625230(&v114, &unk_1EC16FE40, &qword_1C5876370);
    return MEMORY[0x1E69E7CC0];
  }

  v103 = v8;
  v104 = v7;
  result = sub_1C56251C8(&v114, v135);
  v10 = 0;
  v11 = a1 + 32;
  v12 = *(a1 + 16);
  v110 = MEMORY[0x1E69E7CC0];
  v13 = *(MEMORY[0x1E69DC5C0] + 8);
  v14 = *(MEMORY[0x1E69DC5C0] + 16);
  v109 = *MEMORY[0x1E69DC5C0];
  v15 = *MEMORY[0x1E69DE258];
  v107 = *(MEMORY[0x1E69DE258] + 8);
  while (1)
  {
    while (1)
    {
      if (v10 == v12)
      {
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v10 = v12;
        v120[0] = -1;
      }

      else
      {
        if (v10 >= v12)
        {
          goto LABEL_158;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_159;
        }

        v131 = v10;
        sub_1C5651DB8(v11 + 96 * v10, &v132);
        sub_1C56534F4(&v131, &v114, &qword_1EC16DEE0, &qword_1C5868C10);
        ++v10;
      }

      sub_1C56534F4(&v114, &v133, &qword_1EC16DEE8, &qword_1C5868C18);
      if (v134[88] == 255)
      {
        sub_1C5626250(v135);
        return v110;
      }

      v17 = v133;
      sub_1C5651DF0(v134, &v131);
      sub_1C5651DB8(&v131, &v114);
      if (BYTE8(v119) <= 1u)
      {
        if (!BYTE8(v119))
        {
          sub_1C56534F4(&v114, v129, &unk_1EC16E860, &qword_1C5868750);
          v19 = v129;
LABEL_21:
          sub_1C56251C8(v19, &v122);
          goto LABEL_25;
        }

        sub_1C56534F4(&v114, v129, &unk_1EC16E860, &qword_1C5868750);
        v20 = sub_1C5705A60();
        if (!v23)
        {
LABEL_3:
          sub_1C5625230(v129, &unk_1EC16E860, &qword_1C5868750);
          v122 = 0uLL;
          LOBYTE(v123) = -1;
LABEL_4:
          sub_1C5651D88(&v131);
          v16 = &v122;
          goto LABEL_5;
        }

        v112 = 0x6542726563617073;
        v22 = 0xED00003A65726F66;
      }

      else
      {
        if (BYTE8(v119) != 2)
        {
          if (BYTE8(v119) == 3)
          {
            *&v122 = GEOLocationCoordinate2DMake(0xD000000000000011, 0x80000001C58922F0);
            *(&v122 + 1) = v18;
            LOBYTE(v123) = 1;
            goto LABEL_25;
          }

          v19 = &v114;
          goto LABEL_21;
        }

        sub_1C56534F4(&v114, v129, &unk_1EC16E860, &qword_1C5868750);
        v20 = sub_1C5705A60();
        if (!v21)
        {
          goto LABEL_3;
        }

        v112 = 0x6641726563617073;
        v22 = 0xEC0000003A726574;
      }

      v113 = v22;
      MEMORY[0x1C6949D90](v20);

      v24 = GEOLocationCoordinate2DMake(v112, v113);
      v26 = v25;
      sub_1C5625230(v129, &unk_1EC16E860, &qword_1C5868750);
      *&v122 = v24;
      *(&v122 + 1) = v26;
      LOBYTE(v123) = 1;
LABEL_25:
      if (v123 == 255)
      {
        goto LABEL_4;
      }

      sub_1C56251C8(&v122, v130);
      sub_1C5651DB8(&v131, v129);
      if (v12)
      {
        sub_1C5651DB8(v11, &v122);
      }

      else
      {
        v127 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        v128 = -1;
      }

      sub_1C56466CC(v129, &v114, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C56466CC(&v122, v120, &qword_1EC16DE98, &qword_1C5868758);
      if (BYTE8(v119) == 255)
      {
        sub_1C5625230(&v122, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5625230(v129, &qword_1EC16DE98, &qword_1C5868758);
        if (v121 == 255)
        {
          sub_1C5625230(&v114, &qword_1EC16DE98, &qword_1C5868758);
          goto LABEL_35;
        }

        goto LABEL_39;
      }

      sub_1C56466CC(&v114, &v112, &qword_1EC16DE98, &qword_1C5868758);
      if (v121 == 255)
      {
        break;
      }

      sub_1C5651DF0(v120, v111);
      v27 = sub_1C5652DAC(&v112, v111);
      sub_1C5651D88(v111);
      sub_1C5625230(&v122, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5625230(v129, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5651D88(&v112);
      result = sub_1C5625230(&v114, &qword_1EC16DE98, &qword_1C5868758);
      if ((v27 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_35:
      sub_1C5651DB8(a2, &v114);
      if (BYTE8(v119) <= 2u)
      {
        sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
      }

      else if (BYTE8(v119) != 3)
      {
        sub_1C5626250(&v114);
      }

      v34 = *(v5 + 24);
      sub_1C570FC58(v34);
      v36 = v35;
      sub_1C5651DB8(&v131, &v114);
      if (BYTE8(v119) <= 1u)
      {
        if (!BYTE8(v119))
        {
          sub_1C56534F4(&v114, v129, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v129, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_70;
        }

LABEL_69:
        sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_70;
      }

      if (BYTE8(v119) == 2)
      {
        goto LABEL_69;
      }

      if (BYTE8(v119) != 3)
      {
        sub_1C5626250(&v114);
      }

LABEL_70:
      sub_1C570FC58(v34);
      v38 = v37;
      sub_1C5651DB8(&v131, &v114);
      if (BYTE8(v119) <= 1u)
      {
        if (!BYTE8(v119))
        {
          sub_1C56534F4(&v114, v129, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v129, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_77;
        }

LABEL_76:
        sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_77;
      }

      if (BYTE8(v119) == 2)
      {
        goto LABEL_76;
      }

      if (BYTE8(v119) != 3)
      {
        sub_1C5626250(&v114);
      }

LABEL_77:
      sub_1C570FD20(v34);
      v40 = v36 + v38 + v39;
      *&v114 = v106;
      v129[0] = 0;
      type metadata accessor for UILayoutPriority(0);
      sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority);
      v101 = v34;
      if (sub_1C584F610())
      {
        sub_1C5625EE8(v130, v129);
        v98 = sub_1C570FA50(v34);
        sub_1C5625EE8(v135, &v122);
        v41 = sub_1C570FA50(v34);
        v42 = sub_1C56521A0();
        v44 = v43;
        v45 = sub_1C5625100();
        sub_1C5625108(v129, v98, 0, &v122, v41, v42, v44, &v114, v45, v40, v106);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_1C5625864(0, v110[2] + 1, 1, v110);
        }

        v46 = v110;
        v48 = v110[2];
        v47 = v110[3];
        if (v48 >= v47 >> 1)
        {
          v46 = sub_1C5625864((v47 > 1), v48 + 1, 1, v110);
        }

        v46[2] = v48 + 1;
        v110 = v46;
        sub_1C5625808(&v114, &v46[14 * v48 + 4]);
        v34 = v101;
      }

      *&v114 = v106;
      v129[0] = 1148846080;
      sub_1C5653044(&qword_1ED77E830, type metadata accessor for UILayoutPriority);
      if (sub_1C584F2D0() & v104)
      {
        sub_1C5625EE8(v130, v129);
        v49 = sub_1C570FA50(v34);
        sub_1C5625EE8(v135, &v122);
        v50 = sub_1C570FA50(v34);
        v51 = sub_1C56521A0();
        v53 = v52;
        v54 = sub_1C5625100();
        v55 = sub_1C57056F8();
        sub_1C5625108(v129, v49, 1, &v122, v50, v51, v53, &v114, v54, v40, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_1C5625864(0, v110[2] + 1, 1, v110);
        }

        v56 = v110;
        v58 = v110[2];
        v57 = v110[3];
        v34 = v101;
        if (v58 >= v57 >> 1)
        {
          v56 = sub_1C5625864((v57 > 1), v58 + 1, 1, v110);
        }

        v56[2] = v58 + 1;
        v110 = v56;
        sub_1C5625808(&v114, &v56[14 * v58 + 4]);
      }

      sub_1C5651DB8(&v131, v129);
      if (!v12)
      {
        v127 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        v128 = -1;
        goto LABEL_112;
      }

LABEL_111:
      sub_1C5651DB8(a1 + 96 * v12 - 64, &v122);
LABEL_112:
      sub_1C56466CC(v129, &v114, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C56466CC(&v122, v120, &qword_1EC16DE98, &qword_1C5868758);
      if (BYTE8(v119) == 255)
      {
        sub_1C5625230(&v122, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5625230(v129, &qword_1EC16DE98, &qword_1C5868758);
        if (v121 != 255)
        {
          goto LABEL_122;
        }

        sub_1C5625230(&v114, &qword_1EC16DE98, &qword_1C5868758);
        goto LABEL_118;
      }

      sub_1C56466CC(&v114, &v112, &qword_1EC16DE98, &qword_1C5868758);
      if (v121 == 255)
      {
        sub_1C5625230(&v122, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5625230(v129, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5651D88(&v112);
LABEL_122:
        sub_1C5625230(&v114, &qword_1EC16DEF0, &qword_1C5868C20);
        goto LABEL_123;
      }

      sub_1C5651DF0(v120, v111);
      v74 = sub_1C5652DAC(&v112, v111);
      sub_1C5651D88(v111);
      sub_1C5625230(&v122, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5625230(v129, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5651D88(&v112);
      sub_1C5625230(&v114, &qword_1EC16DE98, &qword_1C5868758);
      if (v74)
      {
LABEL_118:
        sub_1C5651DB8(a2, &v114);
        if (BYTE8(v119) <= 2u)
        {
          sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
        }

        else if (BYTE8(v119) != 3)
        {
          sub_1C5626250(&v114);
        }

        sub_1C570FCBC(v34);
        v76 = v75;
        sub_1C5651DB8(&v131, &v114);
        if (BYTE8(v119) <= 1u)
        {
          if (!BYTE8(v119))
          {
            sub_1C56534F4(&v114, v129, &unk_1EC16E860, &qword_1C5868750);
            sub_1C5625230(v129, &unk_1EC16E860, &qword_1C5868750);
            goto LABEL_132;
          }

LABEL_131:
          sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_132;
        }

        if (BYTE8(v119) == 2)
        {
          goto LABEL_131;
        }

        if (BYTE8(v119) != 3)
        {
          sub_1C5626250(&v114);
        }

LABEL_132:
        sub_1C570FCBC(v34);
        v78 = v77;
        sub_1C5651DB8(&v131, &v114);
        if (BYTE8(v119) <= 1u)
        {
          if (!BYTE8(v119))
          {
            sub_1C56534F4(&v114, v129, &unk_1EC16E860, &qword_1C5868750);
            sub_1C5625230(v129, &unk_1EC16E860, &qword_1C5868750);
            goto LABEL_139;
          }

LABEL_138:
          sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_139;
        }

        if (BYTE8(v119) == 2)
        {
          goto LABEL_138;
        }

        if (BYTE8(v119) != 3)
        {
          sub_1C5626250(&v114);
        }

LABEL_139:
        sub_1C570FD20(v34);
        v80 = v79 - (v76 + v78);
        *&v114 = v105;
        v129[0] = 0;
        type metadata accessor for UILayoutPriority(0);
        sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority);
        if (sub_1C584F610())
        {
          sub_1C5625EE8(v130, v129);
          v99 = sub_1C570FB20(v34);
          sub_1C5625EE8(v135, &v122);
          v102 = v34;
          v81 = sub_1C570FB20(v34);
          v82 = sub_1C56521A0();
          v84 = v83;
          v85 = sub_1C5625100();
          sub_1C5625108(v129, v99, 0, &v122, v81, v82, v84, &v114, v85, v80, v105);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1C5625864(0, v110[2] + 1, 1, v110);
          }

          v86 = v110;
          v88 = v110[2];
          v87 = v110[3];
          if (v88 >= v87 >> 1)
          {
            v86 = sub_1C5625864((v87 > 1), v88 + 1, 1, v110);
          }

          v86[2] = v88 + 1;
          v110 = v86;
          sub_1C5625808(&v114, &v86[14 * v88 + 4]);
          v34 = v102;
        }

        *&v114 = v105;
        v129[0] = 1148846080;
        sub_1C5653044(&qword_1ED77E830, type metadata accessor for UILayoutPriority);
        if ((sub_1C584F2D0() & v103 & 1) == 0)
        {
          goto LABEL_123;
        }

        sub_1C5625EE8(v130, v129);
        v89 = sub_1C570FB20(v34);
        sub_1C5625EE8(v135, &v122);
        v90 = sub_1C570FB20(v34);
        v91 = sub_1C56521A0();
        v93 = v92;
        v94 = sub_1C5625100();
        v95 = sub_1C57056F8();
        sub_1C5625108(v129, v89, -1, &v122, v90, v91, v93, &v114, v94, v80, v95);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_1C5625864(0, v110[2] + 1, 1, v110);
        }

        v97 = v110[2];
        v96 = v110[3];
        if (v97 >= v96 >> 1)
        {
          v110 = sub_1C5625864((v96 > 1), v97 + 1, 1, v110);
        }

        sub_1C5626250(v130);
        sub_1C5651D88(&v131);
        v110[2] = v97 + 1;
        result = sub_1C5625808(&v114, &v110[14 * v97 + 4]);
      }

      else
      {
LABEL_123:
        sub_1C5626250(v130);
        result = sub_1C5651D88(&v131);
      }
    }

    sub_1C5625230(&v122, &qword_1EC16DE98, &qword_1C5868758);
    sub_1C5625230(v129, &qword_1EC16DE98, &qword_1C5868758);
    sub_1C5651D88(&v112);
LABEL_39:
    result = sub_1C5625230(&v114, &qword_1EC16DEF0, &qword_1C5868C20);
LABEL_40:
    v28 = v17 - 1;
    if (__OFSUB__(v17, 1))
    {
      break;
    }

    if (v28 >= v12)
    {
      goto LABEL_157;
    }

    sub_1C5651DB8(v11 + 96 * v28, v129);
    sub_1C5652004(&v114);
    if (v115 != 255)
    {
      sub_1C56251C8(&v114, &v112);
      sub_1C5651DB8(v129, &v114);
      if (BYTE8(v119) <= 1u)
      {
        if (!BYTE8(v119))
        {
          sub_1C56534F4(&v114, &v122, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(&v122, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_51;
        }
      }

      else if (BYTE8(v119) != 2)
      {
        if (BYTE8(v119) != 3)
        {
          sub_1C5626250(&v114);
        }

LABEL_51:
        v29 = *(v5 + 24);
        sub_1C570FCBC(v29);
        v100 = v30;
        sub_1C5651DB8(v129, &v114);
        if (BYTE8(v119) <= 1u)
        {
          if (!BYTE8(v119))
          {
            sub_1C56534F4(&v114, &v122, &unk_1EC16E860, &qword_1C5868750);
            sub_1C5625230(&v122, &unk_1EC16E860, &qword_1C5868750);
            goto LABEL_58;
          }
        }

        else if (BYTE8(v119) != 2)
        {
          if (BYTE8(v119) != 3)
          {
            sub_1C5626250(&v114);
          }

LABEL_58:
          sub_1C570FD20(v29);
          v32 = v31;
          sub_1C5651DB8(a2, &v114);
          if (BYTE8(v119) <= 2u)
          {
            sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
            v33 = 0.0;
          }

          else if (BYTE8(v119) == 3)
          {
            v33 = *&v114;
          }

          else
          {
            v33 = *(&v115 + 1);
            sub_1C5626250(&v114);
          }

          sub_1C5651DB8(&v131, &v114);
          if (BYTE8(v119) <= 1u)
          {
            if (!BYTE8(v119))
            {
              sub_1C56534F4(&v114, &v122, &unk_1EC16E860, &qword_1C5868750);
              sub_1C5625230(&v122, &unk_1EC16E860, &qword_1C5868750);
              goto LABEL_99;
            }
          }

          else if (BYTE8(v119) != 2)
          {
            if (BYTE8(v119) != 3)
            {
              sub_1C5626250(&v114);
            }

LABEL_99:
            sub_1C570FC58(v29);
            v60 = v59;
            sub_1C5651DB8(&v131, &v114);
            if (BYTE8(v119) <= 1u)
            {
              if (BYTE8(v119))
              {
                goto LABEL_105;
              }

              sub_1C56534F4(&v114, &v122, &unk_1EC16E860, &qword_1C5868750);
              sub_1C5625230(&v122, &unk_1EC16E860, &qword_1C5868750);
            }

            else
            {
              if (BYTE8(v119) != 2)
              {
                if (BYTE8(v119) != 3)
                {
                  sub_1C5626250(&v114);
                }

                goto LABEL_106;
              }

LABEL_105:
              sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
            }

LABEL_106:
            sub_1C570FD20(v29);
            v62 = -(v100 - v32 + v33 + v60 + v61);
            sub_1C5625EE8(&v112, &v122);
            v63 = sub_1C570FB20(v29);
            sub_1C5625EE8(v130, v111);
            v64 = v29;
            v65 = sub_1C570FA50(v29);
            v66 = sub_1C56521A0();
            v68 = v67;
            v69 = sub_1C5625100();
            v70 = sub_1C57056F8();
            sub_1C5625108(&v122, v63, 0, v111, v65, v66, v68, &v114, v69, v62, v70);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v71 = v110;
            }

            else
            {
              v71 = sub_1C5625864(0, v110[2] + 1, 1, v110);
            }

            v73 = v71[2];
            v72 = v71[3];
            v34 = v64;
            if (v73 >= v72 >> 1)
            {
              v110 = sub_1C5625864((v72 > 1), v73 + 1, 1, v71);
            }

            else
            {
              v110 = v71;
            }

            sub_1C5626250(&v112);
            sub_1C5651D88(v129);
            v110[2] = v73 + 1;
            sub_1C5625808(&v114, &v110[14 * v73 + 4]);
            sub_1C5651DB8(&v131, v129);
            goto LABEL_111;
          }

          sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_99;
        }

        sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_58;
      }

      sub_1C5625230(&v114, &unk_1EC16E860, &qword_1C5868750);
      goto LABEL_51;
    }

    sub_1C5651D88(v129);
    sub_1C5626250(v130);
    sub_1C5651D88(&v131);
    v16 = &v114;
LABEL_5:
    result = sub_1C5625230(v16, &unk_1EC16FE40, &qword_1C5876370);
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

void *sub_1C5650D94(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C5652C6C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C5650E8C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C5625864(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C5650F84(uint64_t a1, float a2)
{
  v3 = a2;
  *&v49 = a2;
  LODWORD(v62) = 0;
  type metadata accessor for UILayoutPriority(0);
  sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority);
  result = sub_1C584F610();
  if ((result & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v44 = v2;
  v6 = 0;
  v7 = a1 + 32;
  v45 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  v10 = *MEMORY[0x1E69DC5C0];
  v9 = *(MEMORY[0x1E69DC5C0] + 8);
  v12 = *(MEMORY[0x1E69DC5C0] + 16);
  v11 = *(MEMORY[0x1E69DC5C0] + 24);
  while (1)
  {
    while (1)
    {
      if (v6 == v8)
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v6 = v8;
        v55[0] = -1;
      }

      else
      {
        if (v6 >= v8)
        {
          goto LABEL_82;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_83;
        }

        v60 = v6;
        sub_1C5651DB8(v7 + 96 * v6, &v61);
        sub_1C56534F4(&v60, &v49, &qword_1EC16DEE0, &qword_1C5868C10);
        ++v6;
      }

      sub_1C56534F4(&v49, &v62, &qword_1EC16DEE8, &qword_1C5868C18);
      if (v63[88] == 255)
      {
        return v45;
      }

      v13 = v62;
      sub_1C5651DF0(v63, &v60);
      sub_1C5651DB8(&v60, v59);
      if (v8)
      {
        sub_1C5651DB8(v7, v57);
      }

      else
      {
        memset(v57, 0, sizeof(v57));
        v58 = -1;
      }

      sub_1C56466CC(v59, &v49, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C56466CC(v57, v55, &qword_1EC16DE98, &qword_1C5868758);
      if (BYTE8(v54) == 255)
      {
        sub_1C5625230(v57, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5625230(v59, &qword_1EC16DE98, &qword_1C5868758);
        if (v56 != 255)
        {
          goto LABEL_20;
        }

        sub_1C5625230(&v49, &qword_1EC16DE98, &qword_1C5868758);
        goto LABEL_3;
      }

      sub_1C56466CC(&v49, v47, &qword_1EC16DE98, &qword_1C5868758);
      if (v56 == 255)
      {
        sub_1C5625230(v57, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5625230(v59, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5651D88(v47);
LABEL_20:
        result = sub_1C5625230(&v49, &qword_1EC16DEF0, &qword_1C5868C20);
        break;
      }

      sub_1C5651DF0(v55, v46);
      v14 = sub_1C5652DAC(v47, v46);
      sub_1C5651D88(v46);
      sub_1C5625230(v57, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5625230(v59, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5651D88(v47);
      result = sub_1C5625230(&v49, &qword_1EC16DE98, &qword_1C5868758);
      if ((v14 & 1) == 0)
      {
        break;
      }

LABEL_3:
      result = sub_1C5651D88(&v60);
    }

    v15 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      break;
    }

    if (v15 >= v8)
    {
      goto LABEL_81;
    }

    sub_1C5651DB8(v7 + 96 * v15, v59);
    sub_1C5652004(&v49);
    if (v50 == 255)
    {
LABEL_26:
      sub_1C5651D88(v59);
      sub_1C5651D88(&v60);
      result = sub_1C5625230(&v49, &unk_1EC16FE40, &qword_1C5876370);
    }

    else
    {
      sub_1C56251C8(&v49, v47);
      sub_1C5652004(&v49);
      if (v50 == 255)
      {
        sub_1C5626250(v47);
        goto LABEL_26;
      }

      sub_1C56251C8(&v49, v46);
      sub_1C5651DB8(v59, &v49);
      if (BYTE8(v54) <= 1u)
      {
        v16 = v44;
LABEL_32:
        sub_1C5625230(&v49, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_33;
      }

      v16 = v44;
      if (BYTE8(v54) == 2)
      {
        goto LABEL_32;
      }

      if (BYTE8(v54) != 3)
      {
        sub_1C5626250(&v49);
      }

LABEL_33:
      v17 = *(v16 + 24);
      sub_1C570FC58(v17);
      v40 = v18;
      sub_1C5651DB8(v59, &v49);
      if (BYTE8(v54) <= 1u)
      {
        if (!BYTE8(v54))
        {
          sub_1C56534F4(&v49, v57, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v57, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_40;
        }

LABEL_39:
        sub_1C5625230(&v49, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_40;
      }

      if (BYTE8(v54) == 2)
      {
        goto LABEL_39;
      }

      if (BYTE8(v54) != 3)
      {
        sub_1C5626250(&v49);
      }

LABEL_40:
      sub_1C570FC58(v17);
      v39 = v19;
      sub_1C5651DB8(v59, &v49);
      if (BYTE8(v54) <= 2u)
      {
        sub_1C5625230(&v49, &unk_1EC16E860, &qword_1C5868750);
      }

      else if (BYTE8(v54) != 3)
      {
        sub_1C5626250(&v49);
      }

      sub_1C570FCBC(v17);
      v38 = v20;
      sub_1C5651DB8(v59, &v49);
      if (BYTE8(v54) <= 1u)
      {
        if (!BYTE8(v54))
        {
          sub_1C56534F4(&v49, v57, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v57, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_51;
        }

LABEL_50:
        sub_1C5625230(&v49, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_51;
      }

      if (BYTE8(v54) == 2)
      {
        goto LABEL_50;
      }

      if (BYTE8(v54) != 3)
      {
        sub_1C5626250(&v49);
      }

LABEL_51:
      sub_1C570FCBC(v17);
      v37 = v21;
      sub_1C5651DB8(&v60, &v49);
      if (BYTE8(v54) <= 2u)
      {
        sub_1C5625230(&v49, &unk_1EC16E860, &qword_1C5868750);
      }

      else if (BYTE8(v54) != 3)
      {
        sub_1C5626250(&v49);
      }

      sub_1C570FC58(v17);
      v36 = v22;
      sub_1C5651DB8(&v60, &v49);
      v42 = v3;
      if (BYTE8(v54) <= 1u)
      {
        if (!BYTE8(v54))
        {
          sub_1C56534F4(&v49, v57, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v57, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_62;
        }

LABEL_61:
        sub_1C5625230(&v49, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_62;
      }

      if (BYTE8(v54) == 2)
      {
        goto LABEL_61;
      }

      if (BYTE8(v54) != 3)
      {
        sub_1C5626250(&v49);
      }

LABEL_62:
      sub_1C570FC58(v17);
      v24 = v23;
      sub_1C5651DB8(&v60, &v49);
      v43 = v12;
      if (BYTE8(v54) <= 2u)
      {
        sub_1C5625230(&v49, &unk_1EC16E860, &qword_1C5868750);
      }

      else if (BYTE8(v54) != 3)
      {
        sub_1C5626250(&v49);
      }

      sub_1C570FCBC(v17);
      v26 = v25;
      sub_1C5651DB8(&v60, &v49);
      if (BYTE8(v54) <= 1u)
      {
        if (!BYTE8(v54))
        {
          sub_1C56534F4(&v49, v57, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v57, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_73;
        }

LABEL_72:
        sub_1C5625230(&v49, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_73;
      }

      if (BYTE8(v54) == 2)
      {
        goto LABEL_72;
      }

      if (BYTE8(v54) != 3)
      {
        sub_1C5626250(&v49);
      }

LABEL_73:
      sub_1C570FCBC(v17);
      v28 = v40 - v39 + v38 - v37 - (v36 - v24 + v26 - v27);
      sub_1C5625EE8(v46, v57);
      v41 = sub_1C570FB88(v17);
      sub_1C5625EE8(v47, v48);
      v29 = sub_1C570FB88(v17);
      v30 = sub_1C56521A0();
      v32 = v31;
      v33 = sub_1C5625100();
      v3 = v42;
      sub_1C5625108(v57, v41, 0, v48, v29, v30, v32, &v49, v33, v28, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1C5625864(0, v45[2] + 1, 1, v45);
      }

      v12 = v43;
      v35 = v45[2];
      v34 = v45[3];
      if (v35 >= v34 >> 1)
      {
        v45 = sub_1C5625864((v34 > 1), v35 + 1, 1, v45);
      }

      sub_1C5626250(v46);
      sub_1C5626250(v47);
      sub_1C5651D88(v59);
      sub_1C5651D88(&v60);
      v45[2] = v35 + 1;
      result = sub_1C5625808(&v49, &v45[14 * v35 + 4]);
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

void sub_1C5651AD8(uint64_t a1@<X8>)
{
  sub_1C564E90C(&v9);
  if ((v9 & 0xE0000000) == 0x20000000)
  {
    if (*(*(v1 + 32) + 16) != 1)
    {
      *a1 = *(v1 + 48);
      v7 = 3;
      goto LABEL_10;
    }

    sub_1C564E90C(&v8);
    v3 = v8;
  }

  else
  {
    sub_1C564E90C(&v9);
    v3 = v9;
  }

  if (((1 << (v3 >> 29)) & 0x3A) != 0)
  {
    sub_1C5625EE8(v1, a1);
    *(a1 + 24) = 0;
  }

  else
  {
    sub_1C5625EE8(v1, a1);
    *(a1 + 24) = sub_1C5651BA4();
  }

  *(a1 + 32) = sub_1C5651C6C();
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  v7 = 4;
LABEL_10:
  *(a1 + 88) = v7;
}

double sub_1C5651BA4()
{
  v3 = *(v0 + 40);
  sub_1C57245D8(&v2);
  if ((v2 & 0xE0000000) == 0xA0000000 && (LODWORD(v3) = HIDWORD(v2), LODWORD(v2) = 1148846080, type metadata accessor for UILayoutPriority(0), sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority), (sub_1C584F610() & 1) == 0))
  {
    return *(v0 + 48) + *(v0 + 48);
  }

  else
  {
    return *(v0 + 48);
  }
}

double sub_1C5651C6C()
{
  v13 = *(v0 + 40);
  sub_1C57245D8(&v12);
  if ((v12 & 0xC0000000) == 0x80000000 && (LODWORD(v13) = HIDWORD(v12), LODWORD(v12) = 1148846080, type metadata accessor for UILayoutPriority(0), sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority), (sub_1C584F610() & 1) == 0))
  {
    v5 = *(v0 + 24);
    if (v5 == 1)
    {
      v6 = *(v0 + 48);
      v7 = 0.0;
      v8 = *(v0 + 64) + 0.0;
    }

    else
    {
      v9 = *(v0 + 64);
      if (v5)
      {
        v6 = 0.0;
        v7 = 0.0;
      }

      else
      {
        v7 = *(v0 + 48);
        v6 = 0.0;
      }
    }

    v10 = *(v0 + 72) + v6;
    result = *(v0 + 56) + v6;
    v11 = v7 + *(v0 + 80);
  }

  else
  {
    result = *(v0 + 56);
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
  }

  return result;
}

__n128 sub_1C5651E28()
{
  sub_1C5651DB8(v0, v8);
  if (v9 <= 1u)
  {
    if (!v9)
    {
      sub_1C56534F4(v8, v6, &unk_1EC16E860, &qword_1C5868750);
      v3 = v7;
      sub_1C5625230(v6, &unk_1EC16E860, &qword_1C5868750);
      return v3;
    }

LABEL_7:
    v3 = *MEMORY[0x1E69DC5C0];
    v4 = *(MEMORY[0x1E69DC5C0] + 16);
    sub_1C5625230(v8, &unk_1EC16E860, &qword_1C5868750);
    return v3;
  }

  if (v9 == 2)
  {
    goto LABEL_7;
  }

  if (v9 == 3)
  {
    result = *MEMORY[0x1E69DC5C0];
    v2 = *(MEMORY[0x1E69DC5C0] + 16);
    return result;
  }

  v3 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 16);
  sub_1C5626250(v8);
  return v3;
}

double sub_1C5651F1C()
{
  sub_1C5651DB8(v0, v6);
  if (v7 <= 1u)
  {
    if (!v7)
    {
      sub_1C56534F4(v6, v5, &unk_1EC16E860, &qword_1C5868750);
      v1 = *&v5[7];
      sub_1C5625230(v5, &unk_1EC16E860, &qword_1C5868750);
      return v1;
    }

LABEL_7:
    v1 = *MEMORY[0x1E69DE258];
    v3 = *(MEMORY[0x1E69DE258] + 8);
    sub_1C5625230(v6, &unk_1EC16E860, &qword_1C5868750);
    return v1;
  }

  if (v7 == 2)
  {
    goto LABEL_7;
  }

  v1 = *MEMORY[0x1E69DE258];
  v2 = *(MEMORY[0x1E69DE258] + 8);
  if (v7 != 3)
  {
    sub_1C5626250(v6);
  }

  return v1;
}

uint64_t sub_1C5652004@<X0>(uint64_t a1@<X8>)
{
  sub_1C5651DB8(v1, v18);
  if (v19 <= 1u)
  {
    if (!v19)
    {
      sub_1C56534F4(v18, v17, &unk_1EC16E860, &qword_1C5868750);
      v5 = v17;
      return sub_1C56251C8(v5, a1);
    }

    sub_1C56534F4(v18, v17, &unk_1EC16E860, &qword_1C5868750);
    v6 = sub_1C5705A60();
    if (v10)
    {
      v8 = 0x6542726563617073;
      v9 = 0xED00003A65726F66;
      goto LABEL_13;
    }

LABEL_15:
    result = sub_1C5625230(v17, &unk_1EC16E860, &qword_1C5868750);
    *a1 = 0;
    *(a1 + 8) = 0;
    v14 = -1;
    goto LABEL_16;
  }

  if (v19 == 2)
  {
    sub_1C56534F4(v18, v17, &unk_1EC16E860, &qword_1C5868750);
    v6 = sub_1C5705A60();
    if (v7)
    {
      v8 = 0x6641726563617073;
      v9 = 0xEC0000003A726574;
LABEL_13:
      v15 = v8;
      v16 = v9;
      MEMORY[0x1C6949D90](v6);

      v11 = GEOLocationCoordinate2DMake(v15, v16);
      v13 = v12;
      result = sub_1C5625230(v17, &unk_1EC16E860, &qword_1C5868750);
      *a1 = v11;
      *(a1 + 8) = v13;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v19 != 3)
  {
    v5 = v18;
    return sub_1C56251C8(v5, a1);
  }

  result = GEOLocationCoordinate2DMake(0xD000000000000011, 0x80000001C58922F0);
  *a1 = result;
  *(a1 + 8) = v4;
LABEL_14:
  v14 = 1;
LABEL_16:
  *(a1 + 16) = v14;
  return result;
}

unint64_t sub_1C56521A0()
{
  sub_1C5651DB8(v0, v6);
  if (v8 > 2u)
  {
    if (v8 != 3)
    {
      v3 = 0xD000000000000016;
      sub_1C5626250(v6);
      return v3;
    }
  }

  else
  {
    if (v8 - 1 >= 2)
    {
      sub_1C584FC50();

      v4 = sub_1C584FD90();
      MEMORY[0x1C6949D90](v4);

      MEMORY[0x1C6949D90](93, 0xE100000000000000);
      v3 = 0xD00000000000001ALL;
      sub_1C5625230(v6, &unk_1EC16E860, &qword_1C5868750);
      return v3;
    }

    sub_1C5625230(v6, &unk_1EC16E860, &qword_1C5868750);
  }

  sub_1C5652004(v6);
  if (v7 == 255)
  {
    sub_1C5625230(v6, &unk_1EC16FE40, &qword_1C5876370);
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    sub_1C5626250(v6);
    return 0;
  }

  v1 = v6[0];
  v2 = v6[1];
  strcpy(v6, "distribution.");
  HIWORD(v6[1]) = -4864;
  MEMORY[0x1C6949D90](v1, v2);

  return v6[0];
}

uint64_t sub_1C5652360()
{
  sub_1C5651DB8(v0, v12);
  if (v17 <= 1u)
  {
    if (!v17)
    {
      v4 = v16;
      sub_1C56534F4(v12, v10, &unk_1EC16E860, &qword_1C5868750);
      MEMORY[0x1C694A560](0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
      sub_1C56534A4(&qword_1EC16DEA8);
      sub_1C584F5F0();
      MEMORY[0x1C694A560](v4);
      return sub_1C5625230(v10, &unk_1EC16E860, &qword_1C5868750);
    }

    sub_1C56534F4(v12, v10, &unk_1EC16E860, &qword_1C5868750);
    v5 = 1;
LABEL_14:
    MEMORY[0x1C694A560](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
    sub_1C56534A4(&qword_1EC16DEA8);
    sub_1C584F5F0();
    return sub_1C5625230(v10, &unk_1EC16E860, &qword_1C5868750);
  }

  if (v17 == 2)
  {
    sub_1C56534F4(v12, v10, &unk_1EC16E860, &qword_1C5868750);
    v5 = 2;
    goto LABEL_14;
  }

  if (v17 == 3)
  {
    v1 = *v12;
    MEMORY[0x1C694A560](3);
    v2 = 0.0;
    if (v1 != 0.0)
    {
      v2 = v1;
    }

    return MEMORY[0x1C694A590](*&v2);
  }

  else
  {
    v6 = v13;
    if (v13 == 0.0)
    {
      v6 = 0.0;
    }

    v7 = v6;
    v8 = v15;
    v9 = v14;
    sub_1C56251C8(v12, v11);
    MEMORY[0x1C694A560](4);
    sub_1C5633434();
    sub_1C584F5F0();
    MEMORY[0x1C694A590](*&v7);
    v10[1] = v8;
    v10[0] = v9;
    type metadata accessor for NSDirectionalEdgeInsets(0);
    sub_1C5653044(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
    sub_1C584F5F0();
    return sub_1C5626250(v11);
  }
}

uint64_t sub_1C565260C()
{
  sub_1C584FEA0();
  sub_1C5652360();
  return sub_1C584FEF0();
}

uint64_t sub_1C5652650()
{
  sub_1C584FEA0();
  sub_1C5652360();
  return sub_1C584FEF0();
}

uint64_t sub_1C5652690(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
      do
      {
        sub_1C56466CC(v3, v8, &unk_1EC16E860, &qword_1C5868750);
        sub_1C56466CC(v4, v7, &unk_1EC16E860, &qword_1C5868750);
        sub_1C56534A4(&qword_1EC16DED0);
        v5 = sub_1C584F620();
        sub_1C5625230(v7, &unk_1EC16E860, &qword_1C5868750);
        sub_1C5625230(v8, &unk_1EC16E860, &qword_1C5868750);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 80;
        v4 += 80;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C56527CC()
{
  sub_1C5633434();
  sub_1C584F5F0();
  MEMORY[0x1C694A560](*(v0 + 24));
  v1 = *(v0 + 32);
  MEMORY[0x1C694A560](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1C56466CC(v3, v7, &unk_1EC16E860, &qword_1C5868750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
      sub_1C56534A4(&qword_1EC16DEA8);
      sub_1C584F5F0();
      sub_1C5625230(v7, &unk_1EC16E860, &qword_1C5868750);
      v3 += 80;
      --v2;
    }

    while (v2);
  }

  *&v7[0] = *(v0 + 40);
  sub_1C5653140();
  sub_1C584F5F0();
  v4 = *(v0 + 48);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1C694A590](*&v4);
  v5 = *(v0 + 72);
  v7[0] = *(v0 + 56);
  v7[1] = v5;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5653044(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
  return sub_1C584F5F0();
}

uint64_t sub_1C565297C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>)
{
  v18 = *a4;
  result = sub_1C56251C8(a1, a5);
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = v18;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a8;
  *(a5 + 72) = a9;
  *(a5 + 80) = a10;
  return result;
}

uint64_t sub_1C56529FC()
{
  sub_1C584FEA0();
  sub_1C56527CC();
  return sub_1C584FEF0();
}

uint64_t sub_1C5652A40()
{
  sub_1C584FEA0();
  sub_1C56527CC();
  return sub_1C584FEF0();
}

uint64_t sub_1C5652A80()
{
  v1 = *v0;
  sub_1C584FEA0();
  MEMORY[0x1C694A560](v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5652AC8()
{
  v1 = *v0;
  sub_1C584FEA0();
  MEMORY[0x1C694A560](v1);
  return sub_1C584FEF0();
}

void *sub_1C5652B0C(void *a1, int64_t a2, char a3)
{
  result = sub_1C5652B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C5652B2C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C5652C6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C5652DAC(uint64_t a1, uint64_t a2)
{
  sub_1C5651DB8(a1, v23);
  sub_1C5651DB8(a2, v25);
  if (v24 <= 1u)
  {
    if (v24)
    {
      sub_1C5651DB8(v23, v19);
      if (v29 == 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C5651DB8(v23, v19);
      if (!v29)
      {
        v4 = v22;
        v5 = v28;
        sub_1C56534F4(v25, v18, &unk_1EC16E860, &qword_1C5868750);
        v6 = sub_1C5633434();
        v7 = sub_1C563E134(v19, v18, &type metadata for LayoutItemSpecification, v6);
        sub_1C5625230(v18, &unk_1EC16E860, &qword_1C5868750);
        sub_1C5625230(v19, &unk_1EC16E860, &qword_1C5868750);
        if (v7)
        {
          v3 = v4 == v5;
LABEL_10:
          v8 = v3;
          goto LABEL_15;
        }

        goto LABEL_22;
      }
    }

LABEL_21:
    sub_1C5625230(v19, &unk_1EC16E860, &qword_1C5868750);
    goto LABEL_24;
  }

  if (v24 != 2)
  {
    if (v24 == 3)
    {
      sub_1C5651DB8(v23, v19);
      if (v29 == 3)
      {
        v3 = v19[0] == v25[0];
        goto LABEL_10;
      }

      goto LABEL_24;
    }

    sub_1C5651DB8(v23, v19);
    if (v29 == 4)
    {
      v10 = v19[3];
      v16 = v20;
      v17 = v21;
      v11 = v25[3];
      v14 = v26;
      v15 = v27;
      sub_1C56251C8(v25, v18);
      v12 = sub_1C57057BC(v19, v18);
      sub_1C5626250(v18);
      sub_1C5626250(v19);
      if ((v12 & 1) != 0 && v10 == v11)
      {
        v8 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v16, v14), vceqq_f64(v17, v15))));
        goto LABEL_15;
      }

LABEL_22:
      sub_1C5651D88(v23);
LABEL_25:
      v8 = 0;
      return v8 & 1;
    }

    sub_1C5626250(v19);
LABEL_24:
    sub_1C5625230(v23, &qword_1EC16DED8, &unk_1C5868C00);
    goto LABEL_25;
  }

  sub_1C5651DB8(v23, v19);
  if (v29 != 2)
  {
    goto LABEL_21;
  }

LABEL_14:
  sub_1C56534F4(v25, v18, &unk_1EC16E860, &qword_1C5868750);
  v9 = sub_1C5633434();
  v8 = sub_1C563E134(v19, v18, &type metadata for LayoutItemSpecification, v9);
  sub_1C5625230(v18, &unk_1EC16E860, &qword_1C5868750);
  sub_1C5625230(v19, &unk_1EC16E860, &qword_1C5868750);
LABEL_15:
  sub_1C5651D88(v23);
  return v8 & 1;
}

uint64_t sub_1C5653044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C565308C(uint64_t a1, uint64_t a2)
{
  if (sub_1C57057BC(a1, a2) & 1) != 0 && *(a1 + 24) == *(a2 + 24) && (sub_1C5652690(*(a1 + 32), *(a2 + 32)) & 1) != 0 && (v4 = *(a1 + 40), v7 = *(a2 + 40), v8 = v4, (static StackLayout.Distribution.== infix(_:_:)(&v8, &v7)) && *(a1 + 48) == *(a2 + 48))
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 56), *(a2 + 56)), vceqq_f64(*(a1 + 72), *(a2 + 72)))));
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1C5653140()
{
  result = qword_1EC16DEB0;
  if (!qword_1EC16DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DEB0);
  }

  return result;
}

unint64_t sub_1C5653198()
{
  result = qword_1EC16DEB8;
  if (!qword_1EC16DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DEB8);
  }

  return result;
}

unint64_t sub_1C56531EC(uint64_t a1)
{
  result = sub_1C5653214();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5653214()
{
  result = qword_1EC16DEC0;
  if (!qword_1EC16DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DEC0);
  }

  return result;
}

unint64_t sub_1C565326C()
{
  result = qword_1EC16DEC8;
  if (!qword_1EC16DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DEC8);
  }

  return result;
}

uint64_t sub_1C56532C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5653308(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1C5653378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 89))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 88);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C56533B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C5653408(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    v2 = a2 - 5;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t sub_1C56534A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC16E860, &qword_1C5868750);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C56534F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t WatchPlaceAccoladesViewModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WatchPlaceAccoladesViewModel.accoladeText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *WatchPlaceAccoladesViewModel.icon.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t WatchPlaceAccoladesViewModel.accessibilityLabel.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void sub_1C5653614(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 _accolades];
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = v4;
  sub_1C5653884();
  v6 = sub_1C584F770();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_22:

    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  if (!sub_1C584FB90())
  {
    goto LABEL_22;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v6 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v7 = MEMORY[0x1C694A320](0, v6);
LABEL_7:
  v8 = v7;

  v9 = [v8 vendorName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1C584F660();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      goto LABEL_13;
    }
  }

  v15 = [objc_opt_self() accoladesRibbonTitle];
  v11 = sub_1C584F660();
  v13 = v16;

LABEL_13:
  if ([v8 shouldDisplayAccoladeText] && (v17 = objc_msgSend(v8, sel_accoladeText)) != 0)
  {
    v18 = v17;
    v19 = sub_1C584F660();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [v8 accoladeText];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C584F660();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = [objc_opt_self() imageForIconID:objc_msgSend(v8 contentScale:sel_iconId) sizeGroup:1 nightMode:{0, 2.0}];

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v21;
  *(a2 + 32) = v27;
  *(a2 + 40) = v24;
  *(a2 + 48) = v26;
}

unint64_t sub_1C5653884()
{
  result = qword_1EC16DF10;
  if (!qword_1EC16DF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16DF10);
  }

  return result;
}

uint64_t sub_1C56538D0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1C5653900()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *sub_1C5653930()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1C5653958()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

id sub_1C5653A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() imageForIconID:a3 contentScale:1 sizeGroup:0 nightMode:2.0];

  return v3;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C5653ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5653B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1C5653BA0()
{
  result = [*(v0 + 8) name];
  if (result)
  {
    v2 = result;
    v3 = sub_1C584F660();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5653C14()
{
  v1 = [*v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C584F660();

  return v3;
}

uint64_t sub_1C5653C9C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2 | a4;
  v6 = a2;
  v7 = a4;
  if (v5)
  {
    v8 = v7;
    v9 = [v6 isEqual:v7];

    if (!v9)
    {
      return 0;
    }
  }

  v10 = sub_1C584F750();
  v11 = sub_1C584F750();
  v12 = v10 | v11;
  v13 = v10;
  v14 = v11;
  if (v12)
  {
    v15 = [v13 isEqual:v14];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

uint64_t GEOBothNilOrEqual(unint64_t a1, unint64_t a2)
{
  v3 = a1 | a2;
  v4 = a1;
  v5 = a2;
  if (v3)
  {
    v6 = [v4 isEqual:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

unint64_t sub_1C5653DE0(uint64_t a1)
{
  result = sub_1C5653E08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5653E08()
{
  result = qword_1EC16DF20;
  if (!qword_1EC16DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DF20);
  }

  return result;
}

unint64_t sub_1C5653E5C(uint64_t a1)
{
  result = sub_1C5653E84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5653E84()
{
  result = qword_1EC16DF28;
  if (!qword_1EC16DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DF28);
  }

  return result;
}

uint64_t sub_1C5653ED8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C5653F20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1C5653F7C()
{
  v1 = OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton);
  }

  else
  {
    v4 = [objc_allocWithZone(MUCardButton) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1C584F630();
    [v4 setSymbolName_];

    [v4 setDirectionalLayoutMargins_];
    [v4 setBlurBackground_];
    [v4 addTarget:v0 action:sel_closeButtonTapped forControlEvents:64];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1C56540A4(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton] = 0;
  *&v5[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_bridge] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_webView] = 0;
  v6 = &v5[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_dismissHandler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1C56541E4()
{
  v1 = v0;
  v2 = sub_1C584E6F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v67 - v11;
  v13 = sub_1C584EA90();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v67 - v21;
  result = GEOConfigGetString();
  if (result)
  {
    v69 = v3;
    v70 = v22;
    v24 = result;
    sub_1C584F660();
    v26 = v25;

    v27 = v26;
    sub_1C584EA80();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_1C5654BD8(v12);
    }

    v68 = v2;
    v28 = v70;
    (*(v14 + 32))(v70, v12, v13);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      (*(v14 + 8))(v28, v13);
    }

    v30 = Strong;
    v67[2] = v27;
    (*(v14 + 16))(v19, v28, v13);
    v31 = v7;
    sub_1C584E6D0();
    type metadata accessor for MUWebPlacecardBridge();
    v32 = sub_1C566CC14();
    v33 = OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_bridge;
    v34 = *&v1[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_bridge];
    *&v1[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_bridge] = v32;

    v35 = *&v1[v33];
    if (v35)
    {
      v36 = v35;
      swift_unknownObjectRetain();
      sub_1C566AEC8();
    }

    v37 = OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_webView;
    swift_beginAccess();
    v38 = *&v1[v37];
    v39 = v69;
    if (!v38)
    {
      v40 = *&v1[v33];
      if (v40)
      {
        v41 = v40;
        v42 = sub_1C566AF74();

        v40 = *&v1[v37];
      }

      else
      {
        v42 = 0;
      }

      *&v1[v37] = v42;

      v38 = *&v1[v37];
      if (!v38)
      {
        swift_unknownObjectRelease();

        goto LABEL_19;
      }
    }

    v67[1] = v30;
    v43 = v38;
    v44 = sub_1C584F630();
    [v43 setAccessibilityIdentifier_];

    result = [v1 view];
    if (result)
    {
      v45 = result;
      v46 = v43;
      [v45 addSubview_];

      v67[0] = v7;
      v47 = sub_1C584E6B0();

      [v46 setTranslatesAutoresizingMaskIntoConstraints_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1C5868600;
      v49 = [v46 topAnchor];

      result = [v1 view];
      if (result)
      {
        v50 = result;
        v51 = [result topAnchor];

        v52 = [v49 constraintEqualToAnchor_];
        *(v48 + 32) = v52;
        v53 = [v46 bottomAnchor];

        result = [v1 view];
        if (result)
        {
          v54 = result;
          v55 = [result bottomAnchor];

          v56 = [v53 &selRef:v55 getAppAction:? + 5];
          *(v48 + 40) = v56;
          v57 = [v46 leadingAnchor];

          result = [v1 view];
          if (result)
          {
            v58 = result;
            v59 = [result leadingAnchor];

            v60 = [v57 &selRef:v59 getAppAction:? + 5];
            *(v48 + 48) = v60;
            v61 = [v46 trailingAnchor];

            result = [v1 view];
            if (result)
            {
              v62 = result;

              v63 = objc_opt_self();
              v64 = [v62 trailingAnchor];

              v65 = [v61 &selRef:v64 getAppAction:? + 5];
              *(v48 + 56) = v65;
              sub_1C5654C40();
              v66 = sub_1C584F750();

              [v63 activateConstraints_];
              swift_unknownObjectRelease();

              v39 = v69;
              v31 = v67[0];
LABEL_19:
              (*(v39 + 8))(v31, v68);
              return (*(v14 + 8))(v70, v13);
            }

LABEL_26:
            __break(1u);
            return result;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

void sub_1C5654948()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_1C5653F7C();
  [v2 addSubview_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [objc_opt_self() systemBackgroundColor];
  [v5 setBackgroundColor_];

  v7 = OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton;
  [*&v0[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton] setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C58682A0;
  v9 = [*&v0[v7] topAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [v9 constraintEqualToAnchor:v12 constant:16.0];
  *(v8 + 32) = v13;
  v14 = [*&v0[v7] trailingAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v16 trailingAnchor];

  v19 = [v14 constraintEqualToAnchor:v18 constant:-16.0];
  *(v8 + 40) = v19;
  sub_1C5654C40();
  v20 = sub_1C584F750();

  [v17 activateConstraints_];
}

uint64_t sub_1C5654BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5654C40()
{
  result = qword_1ED77E810;
  if (!qword_1ED77E810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED77E810);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1C5654ED0()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C569C700(v5);
  sub_1C569C6D0(0xD00000000000001BLL, 0x80000001C5892520);
  sub_1C569C6E8(0xD00000000000001BLL, 0x80000001C5892520);
  *v5 = MapsFeature_IsEnabled_ApplePayEnhancementsEnabled();
  v6 = sub_1C5655018(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1C5655018(v7 > 1, v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8;
  v10 = v6;
  sub_1C56551F0(v5, v9);
  return v10;
}

size_t sub_1C5655018(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DFB8, &qword_1C58795A0);
  v10 = *(type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1C56551F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5655254@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, float a9@<S0>, float a10@<S1>)
{
  *a8 = result;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 8) = a9;
  *(a8 + 12) = a10;
  *(a8 + 16) = a6;
  *(a8 + 24) = a7;
  return result;
}

uint64_t sub_1C5655274(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C56552D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1C565537C()
{
  v1 = *v0;
  sub_1C584FEA0();
  MEMORY[0x1C694A560](v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5655410()
{
  v1 = *v0;
  sub_1C584FEA0();
  MEMORY[0x1C694A560](v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5655474()
{
  sub_1C565744C(v20);
  v0 = v20[0];
  if (v21)
  {
    if (v21 == 1)
    {
      sub_1C56559C8(v20[0], v20[1], 1);
      v1 = [objc_opt_self() callAccessibilityLabel];
    }

    else
    {
      v17 = objc_opt_self();
      if (v0)
      {
        v1 = [v17 removeDroppedPinTitle];
      }

      else
      {
        v1 = [v17 dropPinAtCurrentLocationTitle];
      }
    }

    v18 = v1;
    v19 = sub_1C584F660();

    return v19;
  }

  else
  {
    v2 = [objc_opt_self() axLabelForTransportType_];
    v3 = sub_1C584F660();
    v5 = v4;

    v6 = [objc_opt_self() transportTypeEtaAccessibilityLabelFormat];
    sub_1C584F660();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C5867990;
    v8 = sub_1C56572C4();
    v10 = v9;
    v11 = MEMORY[0x1E69E6158];
    *(v7 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1C563D3B0();
    if (v10)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    v14 = 0xE000000000000000;
    if (v10)
    {
      v14 = v10;
    }

    *(v7 + 32) = v13;
    *(v7 + 40) = v14;
    *(v7 + 96) = v11;
    *(v7 + 104) = v12;
    *(v7 + 64) = v12;
    *(v7 + 72) = v3;
    *(v7 + 80) = v5;
    v15 = sub_1C584F670();

    return v15;
  }
}

uint64_t sub_1C5655660()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_etaProvider);
  v2 = sub_1C570E684();
  v3 = [objc_opt_self() axLabelForTransportType_];
  v4 = sub_1C584F660();
  v6 = v5;

  v7 = [objc_opt_self() transportTypeEtaAccessibilityLabelFormat];
  sub_1C584F660();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C5867990;
  v9 = sub_1C5659FF4();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1C563D3B0();
  if (v11)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v11)
  {
    v15 = v11;
  }

  *(v8 + 32) = v14;
  *(v8 + 40) = v15;
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 64) = v13;
  *(v8 + 72) = v4;
  *(v8 + 80) = v6;
  v16 = sub_1C584F670();

  return v16;
}

uint64_t WatchHeaderButtonViewModelProviding.accessibilityLabel.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v24);
  v4 = v24[0];
  if (v25)
  {
    if (v25 == 1)
    {
      sub_1C56559C8(v24[0], v24[1], 1);
      v5 = [objc_opt_self() callAccessibilityLabel];
    }

    else
    {
      v21 = objc_opt_self();
      if (v4)
      {
        v5 = [v21 removeDroppedPinTitle];
      }

      else
      {
        v5 = [v21 dropPinAtCurrentLocationTitle];
      }
    }

    v22 = v5;
    v23 = sub_1C584F660();

    return v23;
  }

  else
  {
    v6 = [objc_opt_self() axLabelForTransportType_];
    v7 = sub_1C584F660();
    v9 = v8;

    v10 = [objc_opt_self() transportTypeEtaAccessibilityLabelFormat];
    sub_1C584F660();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C5867990;
    v12 = (*(a2 + 8))(a1, a2);
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1C563D3B0();
    if (v14)
    {
      v17 = v12;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (v14)
    {
      v18 = v14;
    }

    *(v11 + 32) = v17;
    *(v11 + 40) = v18;
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 64) = v16;
    *(v11 + 72) = v7;
    *(v11 + 80) = v9;
    v19 = sub_1C584F670();

    return v19;
  }
}

uint64_t sub_1C56559C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t WatchSecondaryHeaderButtonViewModel.titleText.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_1C5655AA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t WatchSecondaryHeaderButtonViewModel.titleText.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (sub_1C584FDC0())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v10);
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF30();
}

void (*WatchSecondaryHeaderButtonViewModel.titleText.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5655E40;
}

uint64_t WatchSecondaryHeaderButtonViewModel.symbolName.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_1C5655F10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t WatchSecondaryHeaderButtonViewModel.symbolName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (v6 = *(v2 + 40), (sub_1C584FDC0() & 1) != 0))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
    sub_1C584EF30();
  }
}

void (*WatchSecondaryHeaderButtonViewModel.symbolName.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C565627C;
}

uint64_t WatchSecondaryHeaderButtonViewModel.type.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 64);
  *(a1 + 16) = v5;
  return sub_1C565B1D0(v3, v4, v5);
}

uint64_t sub_1C5656350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 64);
  *(a2 + 16) = v6;
  return sub_1C565B1D0(v4, v5, v6);
}

uint64_t sub_1C5656418(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF30();
}

uint64_t WatchSecondaryHeaderButtonViewModel.type.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF30();
  sub_1C56559C8(v1, v2, v3);
}

uint64_t sub_1C56565E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  v10 = *(a1 + 64);
  *(a1 + 64) = a4;
  sub_1C565B1D0(a2, a3, a4);
  return sub_1C56559C8(v8, v9, v10);
}

void (*WatchSecondaryHeaderButtonViewModel.type.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C56567B4;
}

uint64_t WatchSecondaryHeaderButtonViewModel.isEnabled.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  return *(v0 + 65);
}

uint64_t sub_1C5656874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a2 = *(v3 + 65);
  return result;
}

uint64_t WatchSecondaryHeaderButtonViewModel.isEnabled.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 65) == v2)
  {
    *(v1 + 65) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
    sub_1C584EF30();
  }

  return result;
}

void (*WatchSecondaryHeaderButtonViewModel.isEnabled.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5656BBC;
}

uint64_t WatchSecondaryHeaderButtonViewModel.loadingState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v1 + 66);
  return result;
}

uint64_t sub_1C5656C84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a2 = *(v3 + 66);
  return result;
}

uint64_t sub_1C5656D40(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF30();
}

uint64_t WatchSecondaryHeaderButtonViewModel.loadingState.setter(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF30();
}

void (*WatchSecondaryHeaderButtonViewModel.loadingState.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C565701C;
}

uint64_t WatchSecondaryHeaderButtonViewModel.style.getter@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  v4 = *(v1 + 64) == 2 && (*(v1 + 48) & 1) != 0;
  *a1 = v4;
  return result;
}

uint64_t sub_1C5657100(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  v14 = *a1;
  v15 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  *(v13 + 65) = 257;
  sub_1C584EF70();
  *(v13 + 48) = v14;
  *(v13 + 56) = v15;
  *(v13 + 64) = a1;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  return v13;
}

uint64_t WatchSecondaryHeaderButtonViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1C56559C8(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  v4 = sub_1C584EF80();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t WatchSecondaryHeaderButtonViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1C56559C8(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  v4 = sub_1C584EF80();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56572C4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_1C5657388()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t sub_1C565744C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v3 + 64);
  *(a1 + 16) = v6;
  return sub_1C565B1D0(v4, v5, v6);
}

uint64_t sub_1C5657514()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  return *(v1 + 65);
}

uint64_t sub_1C56575C8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v3 + 66);
  return result;
}

uint64_t WatchPrimaryHeaderButtonViewModel.titleText.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_1C5657790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t WatchPrimaryHeaderButtonViewModel.titleText.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (sub_1C584FDC0())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v10);
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF30();
}

void (*WatchPrimaryHeaderButtonViewModel.titleText.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5657B0C;
}

uint64_t WatchPrimaryHeaderButtonViewModel.loadingState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_1C5657BD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1C5657C90(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF30();
}

uint64_t WatchPrimaryHeaderButtonViewModel.loadingState.setter(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF30();
}

void (*WatchPrimaryHeaderButtonViewModel.loadingState.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5657F6C;
}

uint64_t WatchPrimaryHeaderButtonViewModel.axIdentifier.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_1C565803C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_1C5658114(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t WatchPrimaryHeaderButtonViewModel.axIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 40) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 48);
      if (sub_1C584FDC0())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v10);
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF30();
}

void (*WatchPrimaryHeaderButtonViewModel.axIdentifier.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5658400;
}

uint64_t WatchPrimaryHeaderButtonViewModel.symbolName.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v0 + 56);
  v1 = *(v4 + 64);

  return v2;
}

uint64_t sub_1C56584D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_1C56585A8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t WatchPrimaryHeaderButtonViewModel.symbolName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (v6 = *(v2 + 64), (sub_1C584FDC0() & 1) != 0))
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
    sub_1C584EF30();
  }
}

void (*WatchPrimaryHeaderButtonViewModel.symbolName.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5658884;
}

id WatchPrimaryHeaderButtonViewModel.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_etaProvider);
  result = sub_1C570E684();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t WatchPrimaryHeaderButtonViewModel.isEnabled.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_1C565897C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t WatchPrimaryHeaderButtonViewModel.isEnabled.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 72) == v2)
  {
    *(v1 + 72) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
    sub_1C584EF30();
  }

  return result;
}

void (*WatchPrimaryHeaderButtonViewModel.isEnabled.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5658CC4;
}

uint64_t WatchPrimaryHeaderButtonViewModel.style.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v1 + 73);
  return result;
}

uint64_t sub_1C5658D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a2 = *(v3 + 73);
  return result;
}

uint64_t sub_1C5658E48(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return WatchPrimaryHeaderButtonViewModel.style.setter(&v4);
}

uint64_t WatchPrimaryHeaderButtonViewModel.style.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v2 == *(v1 + 73))
  {
    *(v1 + 73) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
    sub_1C584EF30();
  }

  return result;
}

void (*WatchPrimaryHeaderButtonViewModel.style.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C56590E4;
}

void sub_1C56590F0(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C584EF50();

  free(v1);
}

uint64_t sub_1C5659174(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_1C56591DC(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_1C56591DC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = [objc_opt_self() directionsTitleString];
  v11 = sub_1C584F660();
  v13 = v12;

  *(v5 + 16) = v11;
  *(v5 + 24) = v13;
  *(v5 + 32) = 2;
  *(v5 + 73) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  sub_1C584EF70();
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  v14 = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_calendar;
  v15 = sub_1C584ED50();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5 + v14, a3, v15);
  *(v5 + 72) = 1;
  *(v5 + OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_etaProvider) = a4;
  v21 = a1;
  v17 = a2;
  v18 = a4;
  *(v5 + 56) = sub_1C570ED08();
  *(v5 + 64) = v19;
  [v17 isAuthorizedForPreciseLocation];
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF30();

  WatchPrimaryHeaderButtonViewModel.axIdentifier.setter(0xD00000000000001BLL, 0x80000001C5892540);
  swift_allocObject();
  swift_weakInit();
  sub_1C584EF20();

  (*(v16 + 8))(a3, v15);

  return v5;
}

uint64_t sub_1C56594F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_etaProvider);
    v2 = WatchPlaceETAProvider.etaTravelTime.getter();
    sub_1C5659560(v2, v3 & 1);
  }

  return result;
}

uint64_t sub_1C5659560(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = *&result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
    sub_1C584EF30();

    v7 = *(v2 + OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_etaProvider);
    v8 = sub_1C570ED08();
    WatchPrimaryHeaderButtonViewModel.symbolName.setter(v8, v9);
    if (v4 == 0.0)
    {
      if (qword_1EC17C140 == -1)
      {
LABEL_12:
        v16 = sub_1C584F2C0();
        __swift_project_value_buffer(v16, qword_1EC17C148);
        v17 = sub_1C584F2A0();
        v18 = sub_1C584F9A0();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_1C5620000, v17, v18, "Did not receive an eta update", v19, 2u);
          MEMORY[0x1C694B7A0](v19, -1, -1);
        }

        v15 = [objc_opt_self() directionsTitleString];
        goto LABEL_15;
      }

LABEL_20:
      swift_once();
      goto LABEL_12;
    }

    if (qword_1EC17C140 != -1)
    {
      swift_once();
    }

    v10 = sub_1C584F2C0();
    __swift_project_value_buffer(v10, qword_1EC17C148);
    v11 = sub_1C584F2A0();
    v12 = sub_1C584F9A0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v3;
      _os_log_impl(&dword_1C5620000, v11, v12, "Receiving eta update with %f", v13, 0xCu);
      MEMORY[0x1C694B7A0](v13, -1, -1);
    }

    v14 = objc_opt_self();
    if ((~v3 & 0x7FF0000000000000) != 0)
    {
      if (v4 > -9.22337204e18)
      {
        if (v4 < 9.22337204e18)
        {
          v15 = [v14 etaStringFromSeconds:v4 isRenderingInFullWidth:0];
LABEL_15:
          v20 = v15;
          v21 = sub_1C584F660();
          v23 = v22;

          WatchPrimaryHeaderButtonViewModel.titleText.setter(v21, v23);
          sub_1C584FC50();

          v24 = objc_opt_self();
          v25 = [v24 axIDStringForTransportType_];
          v26 = sub_1C584F660();
          v28 = v27;

          MEMORY[0x1C6949D90](v26, v28);

          return WatchPrimaryHeaderButtonViewModel.axIdentifier.setter(0xD00000000000001FLL, 0x80000001C5892560);
        }

        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C5659950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v12 - v5;
  v7 = sub_1C584F8A0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1C584F880();

  v8 = sub_1C584F870();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  sub_1C5659C04(0, 0, v6, &unk_1C5869600, v9);
}

uint64_t sub_1C5659A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1C584F880();
  *(v4 + 48) = sub_1C584F870();
  v6 = sub_1C584F830();

  return MEMORY[0x1EEE6DFA0](sub_1C5659B0C, v6, v5);
}

uint64_t sub_1C5659B0C()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_allocObject();
    swift_weakInit();
    sub_1C584EF20();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C5659C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v28 - v12;
  sub_1C565C68C(a3, v28 - v12);
  v14 = sub_1C584F8A0();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1C565C6FC(v13);
  }

  else
  {
    sub_1C584F890();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1C584F830();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1C584F6B0() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1C565C6FC(a3);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C565C6FC(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t WatchPrimaryHeaderButtonViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_calendar;
  v5 = sub_1C584ED50();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  v7 = sub_1C584EF80();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t WatchPrimaryHeaderButtonViewModel.__deallocating_deinit()
{
  WatchPrimaryHeaderButtonViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5659FF4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_1C565A0B8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  return v2;
}

id sub_1C565A17C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_etaProvider);
  result = sub_1C570E684();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1C565A1B8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t sub_1C565A26C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v3 + 32);
  return result;
}

uint64_t sub_1C565A328@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v3 + 73);
  return result;
}

uint64_t WatchPlaceNavAndPhoneViewModel.Config.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C584ED50();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t WatchPlaceNavAndPhoneViewModel.primaryButtonViewModel.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF40();

  v1 = *(v0 + 16);
}

uint64_t sub_1C565A518@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF40();

  *a2 = *(v3 + 16);
}

uint64_t WatchPlaceNavAndPhoneViewModel.secondaryButtonViewModel.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF40();

  v1 = *(v0 + 24);
}

uint64_t sub_1C565A688@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF40();

  *a2 = *(v3 + 24);
}

uint64_t sub_1C565A754(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF30();
}

void *WatchPlaceNavAndPhoneViewModel.__allocating_init(placeItem:availability:locationManager:config:etaProvider:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  sub_1C584EF70();
  v13[4] = a1;
  v13[5] = a3;
  sub_1C565B660(a4, v13 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_config);
  *(v13 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_availability) = a2;
  swift_unknownObjectRetain();
  v15 = a3;
  v16 = a2;
  sub_1C565B6E4(a1, v15, a4, v16, a5);
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF30();

  swift_getKeyPath();
  sub_1C584EF30();

  swift_getKeyPath();
  sub_1C584EF40();

  if (v13[2])
  {
    swift_unknownObjectRelease();

    sub_1C565BA80(a4);
  }

  else
  {
    swift_getKeyPath();
    sub_1C584EF40();
    swift_unknownObjectRelease();

    sub_1C565BA80(a4);
    if (!v13[3])
    {

      return 0;
    }
  }

  return v13;
}

void *WatchPlaceNavAndPhoneViewModel.init(placeItem:availability:locationManager:config:etaProvider:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v6[2] = 0;
  v6[3] = 0;
  sub_1C584EF70();
  v6[4] = a1;
  v6[5] = a3;
  sub_1C565B660(a4, v6 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_config);
  *(v6 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_availability) = a2;
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = a2;
  sub_1C565B6E4(a1, v13, a4, v14, a5);
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF30();

  swift_getKeyPath();
  sub_1C584EF30();

  swift_getKeyPath();
  sub_1C584EF40();

  if (v6[2])
  {
    swift_unknownObjectRelease();

    sub_1C565BA80(a4);
  }

  else
  {
    swift_getKeyPath();
    sub_1C584EF40();
    swift_unknownObjectRelease();

    sub_1C565BA80(a4);
    if (!v6[3])
    {

      return 0;
    }
  }

  return v6;
}

uint64_t WatchPlaceNavAndPhoneViewModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  swift_unknownObjectRelease();

  sub_1C565BA80(v0 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_config);
  v4 = OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel___observationRegistrar;
  v5 = sub_1C584EF80();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t WatchPlaceNavAndPhoneViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  swift_unknownObjectRelease();

  sub_1C565BA80(v0 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_config);
  v4 = OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel___observationRegistrar;
  v5 = sub_1C584EF80();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C565AED4()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC17C148);
  __swift_project_value_buffer(v0, qword_1EC17C148);
  type metadata accessor for WatchPlaceNavAndPhoneViewModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E070, &qword_1C58695E8);
  sub_1C584F680();
  return sub_1C584F2B0();
}

uint64_t sub_1C565AF78(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C565B070;

  return v7(a1);
}

uint64_t sub_1C565B070()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C565B168()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t sub_1C565B1D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C565B21C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 65) = v2;
  return result;
}

uint64_t sub_1C565B270()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 66) = v2;
  return result;
}

uint64_t sub_1C565B2C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C565B344()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t sub_1C565B3AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1C565B400()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 48);
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
}

uint64_t sub_1C565B468()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 64);
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
}

uint64_t sub_1C565B4D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 72) = v2;
  return result;
}

uint64_t sub_1C565B524()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 73) = v2;
  return result;
}

uint64_t (*sub_1C565B580())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C565C4FC;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C565B660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchPlaceNavAndPhoneViewModel.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C565B6E4(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_1C584ED50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a4 canShowDirections] || (objc_msgSend(a1, sel_options) & 1) != 0)
  {
    v21 = 0;
  }

  else
  {
    result = [a1 mapItem];
    if (!result)
    {
      __break(1u);
      goto LABEL_17;
    }

    v17 = result;
    (*(v11 + 16))(v15, a3, v10);
    v18 = type metadata accessor for WatchPrimaryHeaderButtonViewModel(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    sub_1C56591DC(v17, a2, v15, a5);
  }

  if ([a1 options])
  {
    v36 = [objc_opt_self() dropPinAtCurrentLocationTitle];
    v37 = sub_1C584F660();
    v30 = v38;

    v39 = type metadata accessor for WatchSecondaryHeaderButtonViewModel(0);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    v34 = swift_allocObject();
    *(v34 + 65) = 257;
    sub_1C584EF70();
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 2;
    *(v34 + 16) = v37;
    v42 = 0xE600000000000000;
    v43 = 0x6E697070616DLL;
LABEL_14:
    *(v34 + 24) = v30;
    *(v34 + 32) = v43;
    *(v34 + 40) = v42;
    return v21;
  }

  if (([a1 options] & 2) != 0)
  {
    v44 = [objc_opt_self() removeDroppedPinTitle];
    v45 = sub_1C584F660();
    v30 = v46;

    v47 = type metadata accessor for WatchSecondaryHeaderButtonViewModel(0);
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    v34 = swift_allocObject();
    *(v34 + 65) = 257;
    sub_1C584EF70();
    *(v34 + 48) = xmmword_1C5868F20;
    *(v34 + 64) = 2;
    *(v34 + 16) = v45;
    v35 = 0x2E6873617274;
LABEL_13:
    v43 = v35 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
    v42 = 0xEA00000000006C6CLL;
    goto LABEL_14;
  }

  result = [a1 mapItem];
  if (result)
  {
    v22 = result;
    v23 = [result phoneNumber];

    if (!v23)
    {
      return v21;
    }

    v24 = sub_1C584F660();
    v26 = v25;

    v27 = [objc_opt_self() phoneCallToActionTitle];
    v28 = sub_1C584F660();
    v30 = v29;

    v31 = type metadata accessor for WatchSecondaryHeaderButtonViewModel(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    *(v34 + 65) = 257;
    sub_1C584EF70();
    *(v34 + 48) = v24;
    *(v34 + 56) = v26;
    *(v34 + 64) = 1;
    *(v34 + 16) = v28;
    v35 = 0x2E656E6F6870;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C565BA80(uint64_t a1)
{
  v2 = type metadata accessor for WatchPlaceNavAndPhoneViewModel.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C565BAE0()
{
  result = qword_1EC16DFE8;
  if (!qword_1EC16DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DFE8);
  }

  return result;
}

unint64_t sub_1C565BB38()
{
  result = qword_1EC16DFF0;
  if (!qword_1EC16DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DFF0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C565BBC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C565BC10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RollingLabelsView.RollDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RollingLabelsView.RollDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LoadingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for LoadingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C565BF44(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C565BF60(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1C565C01C()
{
  result = sub_1C584EF80();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C565C100()
{
  result = sub_1C584ED50();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C584EF80();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C565C224()
{
  result = sub_1C584ED50();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C584EF80();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C565C364()
{
  result = sub_1C584ED50();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for MKDirectionsTransportType()
{
  if (!qword_1EC16E060)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC16E060);
    }
  }
}

uint64_t sub_1C565C420()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_1C565C45C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1C565C504()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C565C598;

  return sub_1C5659A74(v3, v4, v5, v2);
}

uint64_t sub_1C565C598()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C565C68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C565C6FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C565C764(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C565C934;

  return sub_1C565AF78(a1, v5);
}

uint64_t sub_1C565C81C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C565C598;

  return sub_1C565AF78(a1, v5);
}

uint64_t sub_1C565C99C()
{
  v0 = sub_1C584F350();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C584F390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v25[-1] - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v25[-1] - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  sub_1C584F370();
  sub_1C584F340();
  v22 = *(v7 + 8);
  v22(v12, v6);
  sub_1C584F380();
  v22(v16, v6);
  (*(v1 + 104))(v5, *MEMORY[0x1E69DC358], v0);
  sub_1C584F360();
  (*(v1 + 8))(v5, v0);
  v22(v20, v6);
  v25[3] = sub_1C584F3A0();
  v25[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_1C584F3B0();
  return sub_1C584FA80();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1C565CC80(void *a1)
{
  v1 = a1;
  sub_1C565C99C();
}

uint64_t sub_1C565CCC8()
{
  v29 = sub_1C584F350();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v29, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C584F390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v28 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v28 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v28 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  sub_1C584F370();
  sub_1C584F330();
  v25 = *(v6 + 8);
  v25(v11, v5);
  sub_1C584F340();
  v25(v15, v5);
  sub_1C584F380();
  v25(v19, v5);
  v26 = v29;
  (*(v0 + 104))(v4, *MEMORY[0x1E69DC358], v29);
  sub_1C584F360();
  (*(v0 + 8))(v4, v26);
  v25(v23, v5);
  v30[3] = sub_1C584F3A0();
  v30[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v30);
  sub_1C584F3B0();
  return sub_1C584FA80();
}

void sub_1C565CFA0(void *a1)
{
  v1 = a1;
  sub_1C565CCC8();
}

uint64_t sub_1C565CFE8()
{
  v29 = sub_1C584F350();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v29, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C584F390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v28 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v28 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v28 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  sub_1C584F370();
  sub_1C584F340();
  v25 = *(v6 + 8);
  v25(v11, v5);
  sub_1C584F380();
  v25(v15, v5);
  v26 = v29;
  (*(v0 + 104))(v4, *MEMORY[0x1E69DC358], v29);
  sub_1C584F360();
  (*(v0 + 8))(v4, v26);
  v25(v19, v5);
  sub_1C584F320();
  v25(v23, v5);
  v30[3] = sub_1C584F3A0();
  v30[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v30);
  sub_1C584F3B0();
  return sub_1C584FA80();
}

void sub_1C565D2AC(void *a1)
{
  v1 = a1;
  sub_1C565CFE8();
}

void sub_1C565D2F4()
{
  v1 = [objc_allocWithZone(MUDisclosureActionViewModel) init];
  v2 = OBJC_IVAR____TtC6MapsUI22TransitIncidentRowView_incidentViewModel;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v3;
    if ([v4 showImage])
    {
      v5 = [v4 symbolName];
      if (v5)
      {
        v6 = v5;
        v7 = [objc_opt_self() _mapsui_systemImageNamed_];

        [v1 setImage_];
      }
    }

    v8 = *&v0[v2];
    if (v8)
    {
      v9 = [v8 message];
      if (v9)
      {
        v10 = v9;
        sub_1C584F660();
      }
    }
  }

  v11 = sub_1C584F630();

  [v1 setTitleString_];

  v12 = *&v0[v2];
  if (v12)
  {
    v13 = [v12 symbolColor];
  }

  else
  {
    v13 = 0;
  }

  [v1 setImageTintColor_];

  v14 = *&v0[v2];
  if (v14)
  {
    v15 = [v14 backgroundColor];
  }

  else
  {
    v15 = 0;
  }

  [v0 setBackgroundColor_];

  [v0 setViewModel_];
  v16 = sub_1C584F630();
  [v0 setAccessibilityIdentifier_];
}

void sub_1C565D528(void *a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI22TransitIncidentRowView_incidentViewModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1C565D2F4();
}

void sub_1C565D590(char a1, char a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_setSelected_animated_, a1 & 1, a2 & 1);
  if ((a1 & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC6MapsUI22TransitIncidentRowView_incidentViewModel;
    swift_beginAccess();
    v6 = *&v2[v5];
    if (v6)
    {
      v7 = [v6 backgroundColor];
    }

    else
    {
      v7 = 0;
    }

    [v2 setBackgroundColor_];
  }
}

id sub_1C565D6A4(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1C565D83C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      v4 = &OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_selectedBackgroundColor;
    }

    else
    {
      v4 = &OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_unselectedBackgroundColor;
    }

    v5 = *&v1[*v4];
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v5;
    aBlock[4] = sub_1C565E328;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C56444F8;
    aBlock[3] = &block_descriptor_17;
    v8 = _Block_copy(aBlock);
    v9 = v5;
    v10 = v1;

    [v6 animateWithDuration:v8 animations:0.15];

    _Block_release(v8);
    if (v1[v3] == 1)
    {
      [v10 bounds];
      CGRectGetMidX(v14);
      [v10 bounds];
      CGRectGetMidY(v15);
      sub_1C5626E40(0, &qword_1EC16E118, 0x1E69DC9D8);
      sub_1C584FBF0();
      v11 = sub_1C584FA60();
      [v11 setPreferredArrowDirection_];
      v12 = *&v10[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_editMenuInteraction];
      if (v12)
      {
        [v12 presentEditMenuWithConfiguration_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_1C565DA70(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_text];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_selectedBackgroundColor;
  v12 = objc_opt_self();
  *&v4[v11] = [v12 rowSelectedColor];
  v13 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_unselectedBackgroundColor;
  *&v4[v13] = [v12 rowUnselectedColor];
  *&v4[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_editMenuInteraction] = 0;
  v4[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected] = 0;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1C565DB80();

  return v14;
}

void sub_1C565DB80()
{
  [v0 setBackgroundColor_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
  v2 = *&v0[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_editMenuInteraction];
  *&v0[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_editMenuInteraction] = v1;
  v3 = v1;

  if (v3)
  {
    [v0 addInteraction_];

    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v0 action:sel_didLongPress_];
    [v0 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1C565DC98(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_text];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_selectedBackgroundColor;
  v6 = objc_opt_self();
  *&v1[v5] = [v6 rowSelectedColor];
  v7 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_unselectedBackgroundColor;
  *&v1[v7] = [v6 rowUnselectedColor];
  *&v1[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_editMenuInteraction] = 0;
  v1[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected] = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_1C565DB80();
  }

  return v9;
}

void sub_1C565DE94(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = 0;
  sub_1C565D83C(v3);
}

uint64_t sub_1C565E04C()
{
  v1 = (v0 + OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_text);
  swift_beginAccess();
  v2 = v1[1];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *v1;
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_1C5626E40(0, &qword_1EC16E110, 0x1E69DC628);
    v5 = objc_opt_self();

    v6 = [v5 placeCardTextSelectionActionText];
    sub_1C584F660();

    v7 = sub_1C584F630();
    v8 = [objc_opt_self() systemImageNamed_];

    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v2;
    v10 = sub_1C584FAD0();
    sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C5867970;
    *(v11 + 32) = v10;
    return sub_1C584FA70();
  }

  else
  {
LABEL_6:
    v13 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected;
    swift_beginAccess();
    v14 = *(v0 + v13);
    *(v0 + v13) = 0;
    sub_1C565D83C(v14);
    return 0;
  }
}

void sub_1C565E2A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = [objc_opt_self() generalPasteboard];
  v3 = sub_1C584F630();
  [v4 setString_];
}

__n128 PlaceRibbonItemBuilder.init(configuration:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

char *PlaceRibbonItemBuilder.createRibbonItems()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = sub_1C565E50C(v2);
  if (v5)
  {
    *&v21 = v2;
    *(&v21 + 1) = v1;
    *&v22 = v4;
    *(&v22 + 1) = v3;
    v6 = sub_1C565F98C(v5, v2, v4, v1);

    v7 = v6[2];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_12:

    return MEMORY[0x1E69E7CC0];
  }

  *&v21 = v2;
  *(&v21 + 1) = v1;
  *&v22 = v4;
  *(&v22 + 1) = v3;
  sub_1C5660288(v2, v1, v4);
  v6 = v19;
  v7 = v19[2];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = (v6 + 4);
  v9 = v7 - 1;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C5633310(v8, v24);
    v11 = v25;
    v12 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v12 + 8))(&v21, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1C565F148(0, *(v10 + 2) + 1, 1, v10);
    }

    v14 = *(v10 + 2);
    v13 = *(v10 + 3);
    if (v14 >= v13 >> 1)
    {
      v10 = sub_1C565F148((v13 > 1), v14 + 1, 1, v10);
    }

    *(v10 + 2) = v14 + 1;
    v15 = &v10[64 * v14];
    v16 = v21;
    v17 = v22;
    v18 = v23[0];
    *(v15 + 73) = *(v23 + 9);
    *(v15 + 3) = v17;
    *(v15 + 4) = v18;
    *(v15 + 2) = v16;
    if (!v9)
    {
      break;
    }

    --v9;
    v8 += 40;
  }

  return v10;
}

id sub_1C565E50C(void *a1)
{
  result = [a1 _placecardLayout];
  if (result)
  {
    v2 = result;
    v3 = [result modules];

    if (v3)
    {
      sub_1C5626E40(0, &qword_1EC16E120, 0x1E69A2248);
      v4 = sub_1C584F770();

      if (v4 >> 62)
      {
LABEL_21:
        v5 = sub_1C584FB90();
        if (v5)
        {
LABEL_5:
          v6 = 0;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x1C694A320](v6, v4);
            }

            else
            {
              if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v7 = *(v4 + 8 * v6 + 32);
            }

            v8 = v7;
            v9 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            if ([v7 type] == 35)
            {
              break;
            }

            ++v6;
            if (v9 == v5)
            {
              goto LABEL_22;
            }
          }

          v10 = [v8 configuration];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 placeRibbonConfig];

            if (v12)
            {
              v13 = [v12 ribbonItems];

              if (v13)
              {
                sub_1C5626E40(0, &qword_1EC16E128, 0x1E69A2388);
                v14 = sub_1C584F770();

                return v14;
              }
            }
          }

          return 0;
        }
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
          goto LABEL_5;
        }
      }

LABEL_22:
    }

    return 0;
  }

  return result;
}

void *sub_1C565E704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v25 - v5;
  v7 = sub_1C584ECE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  sub_1C584EC80();
  v14 = sub_1C584EC10();
  (*(v8 + 8))(v12, v7);
  v15 = [v13 priceRangeForMapItem:a1 locale:v14];

  if (v15)
  {
    v16 = sub_1C584F660();
    v18 = v17;

    if (sub_1C584F6D0())
    {
      type metadata accessor for WatchPlaceRibbonItemViewModel();
      v19 = [objc_opt_self() priceRangeRibbonTitle];
      v20 = sub_1C584F660();
      v22 = v21;

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E138, &qword_1C5869668);
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      return WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:initialText:textPublisher:axIDPrefix:)(v20, v22, 0, 0, 0, v16, v18, v6, 0x6E61526563697250, 0xEA00000000006567);
    }
  }

  return 0;
}

__n128 sub_1C565E970@<Q0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = *v2;
  if (!MapsFeature_IsEnabled_ApplePayEnhancementsEnabled())
  {
    goto LABEL_54;
  }

  v7 = [v5 _amenities];
  if (!v7)
  {
    goto LABEL_54;
  }

  v8 = v7;
  sub_1C5626E40(0, &qword_1EC16E140, 0x1E69A1B50);
  v9 = sub_1C584F770();

  v10 = [a1 contactlessPaymentsItem];
  if (!v10)
  {
    goto LABEL_53;
  }

  v11 = v10;
  v12 = [v10 indexesWithinAmenityComponent];
  if (!v12)
  {

LABEL_54:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v13 = v12;
  sub_1C5626E40(0, &qword_1EC16E148, 0x1E696AD98);
  v14 = sub_1C584F770();

  v50 = v14;
  if (v14 >> 62)
  {
    goto LABEL_29;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_52;
  }

  v45 = a2;
  v46 = v11;
  v64 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v16 = 0;
    v11 = (v14 & 0xC000000000000001);
    v17 = v9;
    v9 &= 0xFFFFFFFFFFFFFF8uLL;
    v48 = v17 + 32;
    v49 = v17 & 0xC000000000000001;
    v18 = MEMORY[0x1E69E7CC0];
    a2 = &selRef_hasAmenityType_;
    v47 = v17;
    v19 = v17 >> 62;
    while (1)
    {
      if (v11)
      {
        v20 = MEMORY[0x1C694A320](v16, v14);
      }

      else
      {
        v20 = *(v14 + 8 * v16 + 32);
      }

      v21 = v20;
      v22 = [v20 integerValue];
      if (v22 < 0)
      {
        goto LABEL_9;
      }

      if (v19)
      {
        break;
      }

      if (v22 < *(v9 + 16))
      {
        goto LABEL_17;
      }

LABEL_9:

LABEL_10:
      if (v15 == ++v16)
      {
        goto LABEL_33;
      }
    }

    v24 = v22;
    v25 = sub_1C584FB90();
    v22 = v24;
    if (v24 >= v25)
    {
      goto LABEL_9;
    }

LABEL_17:
    if (v49)
    {
      MEMORY[0x1C694A320]();
      goto LABEL_20;
    }

    if (v22 < *(v9 + 16))
    {
      v23 = *(v48 + 8 * v22);
LABEL_20:
      MEMORY[0x1C6949DF0]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C584F7A0();
      }

      sub_1C584F7E0();

      v18 = v64;
      v14 = v50;
      goto LABEL_10;
    }

    __break(1u);
LABEL_29:
    if (sub_1C584FB90() <= 0)
    {
LABEL_52:

LABEL_53:

      goto LABEL_54;
    }

    v46 = v11;
    v47 = v9;
    v45 = a2;
    v18 = MEMORY[0x1E69E7CC0];
    v64 = MEMORY[0x1E69E7CC0];
    v26 = sub_1C584FB90();
    if (v26)
    {
      v15 = v26;
      if (v26 >= 1)
      {
        goto LABEL_62;
      }

      __break(1u);
    }

LABEL_33:
    if (v18 >> 62)
    {
LABEL_57:
      v27 = sub_1C584FB90();
      v15 = v60;
      if (v27)
      {
        goto LABEL_35;
      }

      goto LABEL_58;
    }

    v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v60;
    if (!v27)
    {
LABEL_58:
      v29 = MEMORY[0x1E69E7CC0];
      goto LABEL_59;
    }

LABEL_35:
    v28 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    do
    {
      v30 = v29;
      v31 = v28;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1C694A320](v31, v18);
          v28 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v31 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v32 = *(v18 + 8 * v31 + 32);
          v28 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }
        }

        WatchPlaceDataAmenityItemViewModel.init(amenityItem:)(v32, v60);
        if (*&v60[8])
        {
          break;
        }

        v57 = v61;
        v58 = v62;
        v59 = v63;
        v55 = *v60;
        v56 = *&v60[16];
        sub_1C5625230(&v55, &qword_1EC16E150, &qword_1C5869670);
        ++v31;
        if (v28 == v27)
        {
          v29 = v30;
          goto LABEL_59;
        }
      }

      v57 = v61;
      v58 = v62;
      v59 = v63;
      v55 = *v60;
      v56 = *&v60[16];
      v33 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1C565F254(0, *(v30 + 16) + 1, 1, v30);
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      v36 = v33;
      if (v35 >= v34 >> 1)
      {
        v36 = sub_1C565F254((v34 > 1), v35 + 1, 1, v33);
      }

      v53 = v58;
      v54 = v59;
      v51 = v56;
      v52 = v57;
      v37 = v55;
      *(v36 + 2) = v35 + 1;
      v29 = v36;
      v38 = &v36[80 * v35];
      *(v38 + 2) = v37;
      *(v38 + 5) = v53;
      *(v38 + 6) = v54;
      *(v38 + 3) = v51;
      *(v38 + 4) = v52;
    }

    while (v28 != v27);
LABEL_59:
    v39 = [v46 ribbonText];
    if (!v39)
    {
      __break(1u);
LABEL_62:
      v9 = v47;
      v14 = v50;
      continue;
    }

    break;
  }

  v40 = v39;

  v41 = sub_1C584F660();
  v43 = v42;

  v44 = sub_1C565EEB0(v29);

  WatchPlaceAcceptsPaymentsViewModel.init(title:amenityItemViewModels:)(v41, v43, v44, v60);

  *v45 = *v60;
  result = *&v60[8];
  *(v45 + 1) = *&v60[8];
  return result;
}

uint64_t sub_1C565EEB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C565F374(0, v1, 0);
    v2 = v21;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v18 = v4[2];
      v19 = v5;
      v20 = v4[4];
      v6 = v4[1];
      v16 = *v4;
      v17 = v6;
      sub_1C5660844(&v16, &v13);
      v21 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1C565F374((v7 > 1), v8 + 1, 1);
        v2 = v21;
      }

      v14 = &type metadata for WatchPlaceDataAmenityItemViewModel;
      v15 = &protocol witness table for WatchPlaceDataAmenityItemViewModel;
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v19;
      v9[3] = v18;
      v9[4] = v10;
      v9[5] = v20;
      v11 = v17;
      v9[1] = v16;
      v9[2] = v11;
      *(v2 + 16) = v8 + 1;
      sub_1C5632F90(&v13, v2 + 40 * v8 + 32);
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t PlaceRibbonItemBuilder.Configuration.init(mapItem:availability:locationManager:etaProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void *sub_1C565F000(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E178, &qword_1C5869730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E180, &qword_1C5869738);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C565F148(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E188, &unk_1C5869740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C565F254(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E168, &qword_1C5869720);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C565F374(void *a1, int64_t a2, char a3)
{
  result = sub_1C565F394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C565F394(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E158, &qword_1C5869710);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E160, &qword_1C5869718);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C565F4DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C5632F90(&v12, v10 + 40 * a1 + 32);
}

void *sub_1C565F574(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v38 - v7;
  if (![a1 isAuthorizedForPreciseLocation] || !objc_msgSend(a1, sel_hasLocation))
  {
    return 0;
  }

  result = [a1 currentLocation];
  if (!result)
  {
    return result;
  }

  v10 = result;
  result = [result latLng];
  if (!result)
  {
    goto LABEL_29;
  }

  v11 = result;
  [result lat];
  v13 = v12;

  result = [v10 latLng];
  if (!result)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v14 = result;
  [result lng];
  v16 = v15;

  v17 = CLLocationCoordinate2DMake(v13, v16);
  if (!a2)
  {
LABEL_14:

    return 0;
  }

  v18 = a2;
  [v18 _coordinate];
  if (fabs(v20) > 180.0 || fabs(v19) > 90.0 || fabs(v17.longitude) > 180.0 || fabs(v17.latitude) > 90.0)
  {

    goto LABEL_14;
  }

  [v18 _coordinate];
  v22 = v21;
  [v18 _coordinate];
  v24 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v22 longitude:v23];
  v25 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v17.latitude longitude:v17.longitude];
  [v24 distanceFromLocation_];
  if (v26 == 0.0)
  {

    return 0;
  }

  v27 = v26;
  result = objc_opt_self();
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v27 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v27 >= 4294967300.0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v28 = [result _mapkit_localizedDistanceStringWithMeters_abbreviated_];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1C584F660();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = [objc_opt_self() placeCardDistanceFactoidTitle];
  v39 = sub_1C584F660();
  v35 = v34;

  if (!v32)
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  type metadata accessor for WatchPlaceRibbonItemViewModel();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E138, &qword_1C5869668);
  (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
  v37 = WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:initialText:textPublisher:axIDPrefix:)(v39, v35, 0xD000000000000037, 0x80000001C5892870, 0, v30, v32, v8, 0x65636E6174736944, 0xE800000000000000);

  return v37;
}

void *sub_1C565F98C(unint64_t a1, void *a2, void *a3, void *a4)
{
  v82 = a4;
  v77 = a3;
  v84 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v73 = &v70 - v9;
  v76 = sub_1C584ECE0();
  v10 = *(v76 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v76, v12);
  v75 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v4[1];
  v81 = *v4;
  v80 = v14;
  v15 = v4[3];
  v79 = v4[2];
  v78 = v15;
  if (a1 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    v17 = 0;
    v18 = a1 & 0xC000000000000001;
    v74 = v10 + 1;
    v85 = MEMORY[0x1E69E7CC0];
    v19 = &selRef_shouldBlurChromeHeaderButtons;
    v83 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v18)
      {
        v20 = MEMORY[0x1C694A320](v17, a1);
      }

      else
      {
        if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v20 = *(a1 + 8 * v17 + 32);
      }

      v10 = v20;
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v22 = [v20 v19[320]];
      if (v22 > 5)
      {
        if (v22 <= 8)
        {
          if (v22 == 6)
          {
            v44 = [v10 factoidItem];
            if (v44)
            {
              v45 = v44;
              v46 = [v84 _encyclopedicInfo];
              if (v46)
              {
                v47 = [v46 factoidAtIndex_];
                swift_unknownObjectRelease();
                if (v47)
                {
                  swift_getObjectType();
                  v48 = GEOFactoid.makeRibbonViewModel()();
                  *(&v93 + 1) = type metadata accessor for WatchPlaceRibbonItemViewModel();
                  v94 = &protocol witness table for WatchPlaceRibbonItemViewModel;
                  *&v92 = v48;
                  swift_unknownObjectRelease();

                  goto LABEL_37;
                }
              }
            }

            v18 = v83;
          }

          else
          {
            if (v22 != 7)
            {
              *&v86 = v81;
              *(&v86 + 1) = v80;
              *&v87 = v79;
              *(&v87 + 1) = v78;
              v27 = sub_1C565F574(v77, v84);
              if (v27)
              {
                v28 = v27;
                *(&v93 + 1) = type metadata accessor for WatchPlaceRibbonItemViewModel();
                v94 = &protocol witness table for WatchPlaceRibbonItemViewModel;
                *&v92 = v28;
                goto LABEL_37;
              }
            }

LABEL_4:
          }

LABEL_5:
          v94 = 0;
          v92 = 0u;
          v93 = 0u;
          goto LABEL_6;
        }

        switch(v22)
        {
          case 9:
            goto LABEL_4;
          case 10:
            if (!MapsFeature_IsEnabled_ExpertPartners())
            {
              goto LABEL_4;
            }

            sub_1C5653614(v84, &v86);
            v54 = *(&v86 + 1);
            if (!*(&v86 + 1))
            {
              goto LABEL_4;
            }

            v55 = v89;
            v56 = v86;
            *(&v93 + 1) = &type metadata for WatchPlaceAccoladesViewModel;
            v94 = &protocol witness table for WatchPlaceAccoladesViewModel;
            v57 = swift_allocObject();
            *&v92 = v57;
            *(v57 + 16) = v56;
            *(v57 + 24) = v54;
            v19 = &selRef_shouldBlurChromeHeaderButtons;
            v58 = v88;
            *(v57 + 32) = v87;
            *(v57 + 48) = v58;
            *(v57 + 64) = v55;
            break;
          case 11:
            *&v86 = v81;
            *(&v86 + 1) = v80;
            *&v87 = v79;
            *(&v87 + 1) = v78;
            sub_1C565E970(v10, &v90);
            if (!*(&v90 + 1))
            {
              goto LABEL_4;
            }

            v94 = &protocol witness table for WatchPlaceAcceptsPaymentsViewModel;
            v92 = v90;
            *&v93 = v91;
            *(&v93 + 1) = &type metadata for WatchPlaceAcceptsPaymentsViewModel;
            break;
          default:
            goto LABEL_4;
        }
      }

      else
      {
        if (v22 > 2)
        {
          if (v22 != 4)
          {
            goto LABEL_4;
          }

          v29 = objc_opt_self();
          v30 = v75;
          sub_1C584EC80();
          v31 = sub_1C584EC10();
          (*v74)(v30, v76);
          v32 = [v29 priceRangeForMapItem:v84 locale:v31];

          if (v32)
          {
            v33 = sub_1C584F660();
            v35 = v34;

            if (sub_1C584F6D0())
            {
              *&v72 = type metadata accessor for WatchPlaceRibbonItemViewModel();
              v36 = [objc_opt_self() priceRangeRibbonTitle];
              v71 = sub_1C584F660();
              v38 = v37;

              v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E138, &qword_1C5869668);
              v40 = v73;
              (*(*(v39 - 8) + 56))(v73, 1, 1, v39);
              v41 = v35;
              v42 = v72;
              v43 = WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:initialText:textPublisher:axIDPrefix:)(v71, v38, 0, 0, 0, v33, v41, v40, 0x6E61526563697250, 0xEA00000000006567);
              *(&v93 + 1) = v42;
              v94 = &protocol witness table for WatchPlaceRibbonItemViewModel;
              *&v92 = v43;
              goto LABEL_37;
            }

            v18 = v83;
          }

          v19 = &selRef_shouldBlurChromeHeaderButtons;
          goto LABEL_5;
        }

        if (!v22)
        {
          goto LABEL_4;
        }

        if (v22 != 1)
        {
          if (v22 == 2)
          {
            static WatchPlaceRatingRowViewModel.overallRatingViewModel(for:mapItem:)(v82, v84, &v86);
            v23 = BYTE8(v87);
            if (BYTE8(v87) != 255)
            {
              v24 = v88;
              v25 = v87;
              v72 = v86;
              *(&v93 + 1) = &type metadata for WatchPlaceRatingRowViewModel;
              v94 = &protocol witness table for WatchPlaceRatingRowViewModel;
              v26 = swift_allocObject();
              *&v92 = v26;
              *(v26 + 16) = v72;
              *(v26 + 32) = v25;
              *(v26 + 40) = v23 & 1;
              *(v26 + 48) = v24;
LABEL_37:

LABEL_45:
              sub_1C5632F90(&v92, &v86);
              v59 = v85;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v95 = v59;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v59 = sub_1C565F000(0, v59[2] + 1, 1, v59);
                v95 = v59;
              }

              v10 = v59[2];
              v61 = v59[3];
              if (v10 >= v61 >> 1)
              {
                v85 = sub_1C565F000((v61 > 1), v10 + 1, 1, v59);
                v95 = v85;
              }

              else
              {
                v85 = v59;
              }

              v62 = *(&v87 + 1);
              v63 = v88;
              v64 = __swift_mutable_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
              v65 = *(*(v62 - 8) + 64);
              MEMORY[0x1EEE9AC00](v64, v64);
              v67 = &v70 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v68 + 16))(v67);
              sub_1C565F4DC(v10, v67, &v95, v62, v63);
              __swift_destroy_boxed_opaque_existential_1(&v86);
              v18 = v83;
              v19 = &selRef_shouldBlurChromeHeaderButtons;
              goto LABEL_7;
            }
          }

          goto LABEL_4;
        }

        if (![v82 supportsHours])
        {
          goto LABEL_4;
        }

        WatchPlaceHoursViewModel.init(mapItem:)(v84, &v86);
        v49 = *(&v86 + 1);
        if (!*(&v86 + 1))
        {
          goto LABEL_4;
        }

        LODWORD(v72) = v88;
        v50 = *(&v87 + 1);
        v51 = v87;
        v52 = v86;
        *(&v93 + 1) = &type metadata for WatchPlaceHoursViewModel;
        v94 = &protocol witness table for WatchPlaceHoursViewModel;
        v53 = swift_allocObject();
        *&v92 = v53;
        *(v53 + 16) = v52;
        *(v53 + 24) = v49;
        *(v53 + 32) = v51;
        *(v53 + 40) = v50;
        v18 = v83;
        v19 = &selRef_shouldBlurChromeHeaderButtons;
        *(v53 + 48) = v72;
      }

      if (*(&v93 + 1))
      {
        goto LABEL_45;
      }

LABEL_6:
      sub_1C5625230(&v92, &qword_1EC16E170, &qword_1C5869728);
LABEL_7:
      ++v17;
      if (v21 == i)
      {
        return v85;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}