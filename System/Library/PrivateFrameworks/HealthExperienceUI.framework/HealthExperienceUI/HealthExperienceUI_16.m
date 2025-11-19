id sub_1BA0BB498()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA0BB55C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel);
  }

  else
  {
    v4 = sub_1BA0BB5C0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA0BB5C0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setTextColor_];
  [v2 setFont_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setNumberOfLines_];
  [v2 setLineBreakMode_];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v3];
  return v2;
}

id sub_1BA0BB6A0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setContentMode_];

    [v4 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA0BB75C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
    v6 = [objc_opt_self() configurationWithFont:v5 scale:1];
    v7 = sub_1BA4A6758();
    v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    [v4 setImage_];
    [v4 setContentMode_];

    v9 = [objc_opt_self() tertiaryLabelColor];
    [v4 setTintColor_];

    [v4 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA0BB944()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ListStyleAccessoryView()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1BA0BB9F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  v16 = &v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier];
  *v16 = 0;
  *(v16 + 1) = 0;
  swift_unknownObjectWeakInit();
  v17 = &v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_actionHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = &qword_1EBBEB000;
  v20 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_containerViewBackgroundColor;
  v21 = objc_opt_self();
  *&v5[v20] = [v21 secondarySystemGroupedBackgroundColor];
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView] = 0;
  v22 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryFootnoteColor;
  *&v5[v22] = [v21 secondaryLabelColor];
  v23 = *MEMORY[0x1E69DDD28];
  v24 = objc_opt_self();
  v25 = [v24 preferredFontDescriptorWithTextStyle:v23 compatibleWithTraitCollection:0];
  v26 = [v25 fontDescriptorWithSymbolicTraits_];

  v27 = &selRef_createHKUnitPreferenceController;
  if (v26)
  {
    v28 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
  }

  else
  {
    v79 = v10;
    v80 = v11;
    sub_1BA4A3DD8();
    v29 = v23;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v84 = v78;
      *v32 = 136315906;
      v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v35 = sub_1B9F0B82C(v33, v34, &v84);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      v82 = 0;
      v83 = 1;
      sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v36 = sub_1BA4A6808();
      v38 = sub_1B9F0B82C(v36, v37, &v84);

      *(v32 + 14) = v38;
      *(v32 + 22) = 2080;
      LODWORD(v82) = 2;
      type metadata accessor for SymbolicTraits(0);
      v39 = sub_1BA4A6808();
      v41 = sub_1B9F0B82C(v39, v40, &v84);

      *(v32 + 24) = v41;
      *(v32 + 32) = 2112;
      v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v32 + 34) = v42;
      v43 = v77;
      *v77 = v42;
      _os_log_impl(&dword_1B9F07000, v30, v31, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v32, 0x2Au);
      sub_1B9F8C6C8(v43);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      v44 = v78;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v44, -1, -1);
      v45 = v32;
      v19 = &qword_1EBBEB000;
      MEMORY[0x1BFAF43A0](v45, -1, -1);
    }

    v10 = v79;
    v11 = v80;
    (*(v80 + 8))(v15, v79);
    v46 = [v24 preferredFontDescriptorWithTextStyle_];
    v27 = &selRef_createHKUnitPreferenceController;
    v28 = [objc_opt_self() fontWithDescriptor:v46 size:0.0];
  }

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryFootnoteFont] = v28;
  v47 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryLinkColor;
  *&v5[v47] = [v21 systemBlueColor];
  v48 = *MEMORY[0x1E69DDD80];
  v49 = [v24 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
  if (v49)
  {
    v50 = v49;
    v51 = [objc_opt_self() fontWithDescriptor:v49 size:0.0];
  }

  else
  {
    v80 = v11;
    v52 = v81;
    sub_1BA4A3DD8();
    v53 = v48;
    v54 = sub_1BA4A3E88();
    v55 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v84 = v78;
      *v56 = 136315906;
      v58 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v60 = sub_1B9F0B82C(v58, v59, &v84);
      v79 = v10;
      v61 = v60;

      *(v56 + 4) = v61;
      *(v56 + 12) = 2080;
      v82 = 0;
      v83 = 1;
      sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v62 = sub_1BA4A6808();
      v64 = sub_1B9F0B82C(v62, v63, &v84);

      *(v56 + 14) = v64;
      *(v56 + 22) = 2080;
      LODWORD(v82) = 0;
      type metadata accessor for SymbolicTraits(0);
      v65 = sub_1BA4A6808();
      v67 = sub_1B9F0B82C(v65, v66, &v84);
      v19 = &qword_1EBBEB000;

      *(v56 + 24) = v67;
      *(v56 + 32) = 2112;
      v68 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v56 + 34) = v68;
      *v57 = v68;
      _os_log_impl(&dword_1B9F07000, v54, v55, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v56, 0x2Au);
      sub_1B9F8C6C8(v57);
      MEMORY[0x1BFAF43A0](v57, -1, -1);
      v69 = v78;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v69, -1, -1);
      v70 = v56;
      v27 = &selRef_createHKUnitPreferenceController;
      MEMORY[0x1BFAF43A0](v70, -1, -1);

      (*(v80 + 8))(v81, v79);
    }

    else
    {

      (*(v80 + 8))(v52, v10);
    }

    v50 = [v24 preferredFontDescriptorWithTextStyle_];
    v51 = [objc_opt_self() v27[99]];
  }

  v71 = v51;

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryLinkFont] = v71;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint] = 0;
  v72 = type metadata accessor for FeatureStatusPlatformFeedItemView();
  v85.receiver = v5;
  v85.super_class = v72;
  v73 = objc_msgSendSuper2(&v85, sel_initWithFrame_, a1, a2, a3, a4);
  v74 = *&v73[v19[212]];
  v75 = v73;
  [v75 setBackgroundColor_];
  sub_1BA0BC364();
  sub_1BA0BC44C();

  return v75;
}

id FeatureStatusPlatformFeedItemView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA0BC364()
{
  v1 = sub_1BA0BAFB8();
  [v0 addSubview_];

  v2 = sub_1BA0BB6A0();
  [v0 addSubview_];

  v3 = sub_1BA0BB498();
  [v0 addSubview_];

  v4 = sub_1BA0BB55C();
  [v0 addSubview_];

  v5 = sub_1BA0BB75C();
  [v0 addSubview_];

  v6 = sub_1BA0BB944();
  [v0 addSubview_];
}

void sub_1BA0BC44C()
{
  v0 = sub_1BA0BC550();
  sub_1B9F73B50(v0);
  sub_1BA0BC970();
  sub_1B9F73B50(v1);
  v2 = sub_1BA0BCB6C();
  sub_1B9F73B50(v2);
  v3 = sub_1BA0BCD94();
  sub_1B9F73B50(v3);
  v4 = sub_1BA0BC798();
  sub_1B9F73B50(v4);
  v5 = sub_1BA0BD01C();
  sub_1B9F73B50(v5);
  v6 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v7 = sub_1BA4A6AE8();

  [v6 activateConstraints_];
}

uint64_t sub_1BA0BC550()
{
  v1 = sub_1BA0BB6A0();
  LODWORD(v2) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:v2];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView;
  LODWORD(v4) = 1148846080;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView] setContentCompressionResistancePriority:0 forAxis:v4];
  v5 = [*&v0[v3] widthAnchor];
  v6 = [v5 constraintEqualToConstant_];

  v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint] = v6;
  v8 = v6;

  sub_1B9F109F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5890;
  v10 = [*&v0[v3] topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:16.0];

  *(v9 + 32) = v12;
  v13 = [*&v0[v3] leadingAnchor];
  v14 = [v0 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:16.0];

  *(v9 + 40) = v15;
  *(v9 + 48) = v8;
  v16 = *&v0[v3];
  v17 = v8;
  v18 = [v16 heightAnchor];
  v19 = [*&v0[v3] widthAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v9 + 56) = v20;
  return v9;
}

uint64_t sub_1BA0BC798()
{
  v1 = sub_1BA0BB75C();
  LODWORD(v2) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:v2];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView;
  LODWORD(v4) = 1148846080;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView] setContentCompressionResistancePriority:0 forAxis:v4];
  v5 = [*&v0[v3] trailingAnchor];
  v6 = [v0 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:-16.0];

  v8 = [*&v0[v3] widthAnchor];
  v9 = [v8 constraintEqualToConstant_];

  v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint] = v9;

  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint] = v7;
  v12 = v7;

  sub_1B9F109F8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B7510;
  v14 = [*&v0[v3] firstBaselineAnchor];
  v15 = sub_1BA0BAFB8();
  v16 = [v15 firstBaselineAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v13 + 32) = v17;
  *(v13 + 40) = v12;
  return v13;
}

double sub_1BA0BC970()
{
  v1 = sub_1BA0BAFB8();
  LODWORD(v2) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v2];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel;
  v4 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel] topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:16.0];

  v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint] = v6;
  v8 = v6;

  v9 = [*&v0[v3] leadingAnchor];
  v10 = sub_1BA0BB6A0();
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:11.0];
  v13 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint] = v12;
  v14 = v12;

  v15 = [*&v0[v3] trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-16.0];

  v18 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint] = v17;
  v19 = v17;

  sub_1B9F109F8();
  v20 = swift_allocObject();
  *&result = 3;
  *(v20 + 16) = xmmword_1BA4B8B60;
  *(v20 + 32) = v8;
  *(v20 + 40) = v14;
  *(v20 + 48) = v19;
  return result;
}

uint64_t sub_1BA0BCB6C()
{
  v1 = sub_1BA0BB498();
  LODWORD(v2) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v2];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView;
  v4 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView] topAnchor];
  v5 = sub_1BA0BAFB8();
  v6 = [v5 bottomAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:4.0];
  v8 = [*&v0[v3] heightAnchor];
  v9 = [v8 constraintEqualToConstant_];

  v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint] = v9;

  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint] = v7;
  v12 = v7;

  sub_1B9F109F8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B8B60;
  v14 = [*&v0[v3] leadingAnchor];
  v15 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel] leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v13 + 32) = v16;
  v17 = [*&v0[v3] trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-16.0];

  *(v13 + 40) = v19;
  *(v13 + 48) = v12;
  return v13;
}

uint64_t sub_1BA0BCD94()
{
  v1 = sub_1BA0BB55C();
  v2 = [v1 topAnchor];

  v3 = sub_1BA0BB498();
  v4 = [v3 bottomAnchor];

  v5 = [v2 constraintEqualToAnchor:v4 constant:6.0];
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint] = v5;
  v7 = v5;

  v8 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel;
  v9 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel] bottomAnchor];
  v10 = [v0 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-16.0];

  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint] = v11;
  v13 = v11;

  v14 = [*&v0[v8] heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  v16 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint] = v15;

  sub_1B9F109F8();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5890;
  v18 = [*&v0[v8] leadingAnchor];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView;
  v20 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView] leadingAnchor];
  v21 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v21;
  v22 = [*&v0[v8] trailingAnchor];
  v23 = [*&v0[v19] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v17 + 40) = v24;
  *(v17 + 48) = v7;
  *(v17 + 56) = v13;
  return v17;
}

uint64_t sub_1BA0BD01C()
{
  v1 = sub_1BA0BB944();
  v2 = [v1 heightAnchor];

  v3 = [v2 constraintEqualToConstant_];
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint] = v3;
  v5 = v3;

  v6 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView] bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint] = v9;
  v11 = v9;

  sub_1B9F109F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5890;
  v13 = [*&v0[v6] leadingAnchor];
  v14 = sub_1BA0BAFB8();
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v12 + 32) = v16;
  v17 = [*&v0[v6] trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v12 + 40) = v19;
  v20 = [*&v0[v6] topAnchor];
  v21 = sub_1BA0BB55C();
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:16.0];
  *(v12 + 48) = v23;
  *(v12 + 56) = v11;

  return v12;
}

uint64_t sub_1BA0BD294()
{
  v1 = sub_1BA4A0F08();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F6BF24(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1BA4A30B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  sub_1BA0BADEC();
  v14 = sub_1BA4A6C88();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  (*(v8 + 16))(v10, v13, v7);
  sub_1BA4A6C68();
  v15 = v0;
  v16 = sub_1BA4A6C58();
  v17 = *(v8 + 80);
  v30 = v8;
  v18 = (v17 + 40) & ~v17;
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 2) = v16;
  *(v19 + 3) = v20;
  *(v19 + 4) = v15;
  (*(v8 + 32))(&v19[v18], v10, v7);
  sub_1BA0BF220(0, 0, v6, &unk_1BA4BC938, v19);

  sub_1BA0BD6E8(v13);
  sub_1BA0BF544();
  sub_1BA0BDCD0(v13);
  sub_1BA0BE40C();
  sub_1BA0BF6F8(v13);
  v33 = sub_1BA4A3048();
  v34 = v21;
  sub_1BA4A0EF8();
  sub_1B9F252FC();
  v22 = sub_1BA4A7B48();
  v24 = v23;
  (*(v31 + 8))(v3, v32);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v27 = v26;

  v33 = v25;
  v34 = v27;
  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4E8CA0);
  MEMORY[0x1BFAF1350](v22, v24);

  sub_1BA0C0DDC(v33, v34);

  return (*(v30 + 8))(v13, v7);
}

uint64_t sub_1BA0BD670(uint64_t a1)
{
  sub_1B9F40D78(0, &qword_1EDC6C130, &qword_1EDC6C140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA0BD6E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A2A88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  v13 = sub_1BA0BAFB8();
  sub_1BA4A30A8();
  v14 = sub_1BA4A6758();

  [v13 setText_];

  v15 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel;
  v16 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel];
  v17 = [v16 text];
  [v16 setAccessibilityLabel_];

  v18 = *&v2[v15];
  v63 = a1;
  sub_1BA4A3018();
  (*(v5 + 16))(v9, v12, v4);
  v62 = *(v5 + 88);
  v19 = v62(v9, v4);
  v20 = (v5 + 8);
  if (v19 == *MEMORY[0x1E69A31C8] || v19 == *MEMORY[0x1E69A31C0])
  {
    [v18 setAlpha_];

    v60 = *v20;
    v60(v12, v4);
  }

  else
  {
    [v18 setAlpha_];

    v21 = *v20;
    (*v20)(v12, v4);
    v60 = v21;
    v21(v9, v4);
  }

  v22 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint;
  v23 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint];
  if (v23)
  {
    [v23 setActive_];
  }

  v61 = v4;
  v24 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint;
  v25 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint];
  if (v25)
  {
    [v25 setActive_];
  }

  v59 = v5 + 8;
  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v27 = [*&v2[v15] topAnchor];
  v28 = v15;
  if (IsUsingAccessibilityContentSizeCategory)
  {
    v29 = sub_1BA0BB6A0();
    v30 = [v29 bottomAnchor];

    v31 = [v27 constraintEqualToAnchor:v30 constant:11.0];
    v32 = *&v2[v22];
    *&v2[v22] = v31;

    v33 = [*&v2[v15] leadingAnchor];
    v34 = [v2 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:16.0];
  }

  else
  {
    v36 = [v2 topAnchor];
    v37 = [v27 constraintEqualToAnchor:v36 constant:16.0];

    v38 = *&v2[v22];
    *&v2[v22] = v37;

    v33 = [*&v2[v15] leadingAnchor];
    v39 = sub_1BA0BB6A0();
    v34 = [v39 trailingAnchor];

    v35 = [v33 constraintEqualToAnchor:v34 constant:11.0];
  }

  v40 = v35;

  v41 = *&v2[v24];
  *&v2[v24] = v40;

  v42 = *&v2[v22];
  v43 = v61;
  if (v42)
  {
    [v42 setActive_];
  }

  v44 = *&v2[v24];
  v45 = v64;
  if (v44)
  {
    [v44 setActive_];
  }

  v46 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint;
  v47 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint];
  if (v47)
  {
    [v47 setActive_];
  }

  sub_1BA4A3018();
  v48 = v62(v45, v43);
  v49 = *MEMORY[0x1E69A31D0];
  v50 = [*&v2[v28] trailingAnchor];
  if (v48 == v49)
  {
    v51 = sub_1BA0BB75C();
    v52 = [v51 leadingAnchor];

    v53 = [v50 constraintEqualToAnchor:v52 constant:-8.0];
    v54 = *&v2[v46];
    *&v2[v46] = v53;
  }

  else
  {
    v55 = [v2 trailingAnchor];
    v56 = [v50 constraintEqualToAnchor:v55 constant:-16.0];

    v57 = *&v2[v46];
    *&v2[v46] = v56;

    v60(v45, v43);
  }

  result = *&v2[v46];
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

void sub_1BA0BDCD0(uint64_t a1)
{
  v70 = a1;
  v73 = sub_1BA4A2A88();
  v1 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v63 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v58 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v58 - v6;
  v7 = sub_1BA0BB498();
  v8 = [v7 arrangedSubviews];

  sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
  v9 = sub_1BA4A6B08();

  if (v9 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFAF2860](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 removeFromSuperview];

      ++v11;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v15 = sub_1BA4A3068();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + 16);
    v18 = &qword_1EBBEB000;
    if (v17)
    {
      v19 = *MEMORY[0x1E69DC5C0];
      v20 = *(MEMORY[0x1E69DC5C0] + 8);
      v21 = *(MEMORY[0x1E69DC5C0] + 16);
      v22 = *(MEMORY[0x1E69DC5C0] + 24);
      v74 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView;
      v60 = (v15 + 32);
      v23 = v15 + 32 + 16 * v17;
      v65 = (v1 + 88);
      v66 = (v1 + 16);
      v69 = *MEMORY[0x1E69A31D0];
      v62 = *MEMORY[0x1E69A31D8];
      v64 = *MEMORY[0x1E69A31B8];
      v72 = (v1 + 8);
      v61 = (v1 + 104);
      v24 = (v15 + 40);
      v25 = &unk_1EBBEC000;
      v59 = (v15 + 40);
      v26 = v17;
      v27 = v67;
      v75 = v17;
      while (1)
      {
        v36 = *(v16 + 16);
        if (v17 > v36)
        {
          break;
        }

        v37 = *(v24 - 1);
        v38 = *v24;
        v39 = v37 == *(v23 - 16) && v38 == *(v23 - 8);
        if (v39 || (sub_1BA4A8338() & 1) != 0)
        {

          if (v36 <= 1)
          {
            v28 = v19;
          }

          else
          {
            v28 = 4.0;
          }

          v29 = 3;
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_1BA4A3018();
          v40 = v71;
          v41 = v73;
          (*v66)(v71, v27, v73);
          v42 = (*v65)(v40, v41);
          if (v42 == v69 || v42 == v62 || v42 == v64)
          {
            v45 = *v61;
            v46 = v63;
            v47 = v73;
            (*v61)(v63, v69, v73);
            v48 = sub_1BA4A2A78();
            v68 = *v72;
            v68(v46, v47);
            if (v48 & 1) != 0 || (v49 = v63, v50 = v73, v45(v63, v64, v73), v51 = sub_1BA4A2A78(), v68(v49, v50), (v51))
            {
              if (!*(v16 + 16))
              {
                goto LABEL_51;
              }

              if (v37 == *v60 && v38 == *v59)
              {
                v52 = 1;
              }

              else
              {
                v52 = sub_1BA4A8338();
              }
            }

            else
            {
              v52 = 0;
            }

            v27 = v67;
            v25 = &unk_1EBBEC000;

            v68(v27, v73);
            v29 = v52 & 1;
            v28 = v19;
          }

          else
          {

            v43 = v73;
            v44 = *v72;
            (*v72)(v27, v73);
            v44(v71, v43);
            v29 = 2;
            v28 = v19;
            v25 = &unk_1EBBEC000;
          }
        }

        v30 = type metadata accessor for LabelWithIndicatorView();
        v31 = objc_allocWithZone(v30);
        v32 = &v31[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier];
        *v32 = 0;
        v32[1] = 0;
        *&v31[v25[483]] = 0;
        *&v31[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView] = 0;
        *&v31[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint] = 0;
        *&v31[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewTrailingConstraint] = 0;
        *&v31[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor] = 0;
        v31[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_style] = v29;
        v33 = &v31[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_title];
        *v33 = v37;
        v33[1] = v38;
        v34 = &v31[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_contentInsets];
        *v34 = v28;
        *(v34 + 1) = v20;
        *(v34 + 2) = v21;
        *(v34 + 3) = v22;
        v77.receiver = v31;
        v77.super_class = v30;
        v35 = objc_msgSendSuper2(&v77, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        sub_1BA17404C();
        [*(v76 + v74) addArrangedSubview_];

        v24 += 2;
        --v26;
        v17 = v75;
        if (!v26)
        {

          v18 = &qword_1EBBEB000;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
    }

    else
    {

LABEL_47:
      v55 = v18[214];
      v56 = v76;
      [*(v76 + v55) setHidden_];
      [*(v56 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint) setActive_];
      v57 = *(v56 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint);
      if (v57)
      {
        [v57 setConstant_];
      }
    }
  }

  else
  {
    v53 = v76;
    [*(v76 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView) setHidden_];
    [*(v53 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint) setActive_];
    v54 = *(v53 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint);
    if (v54)
    {

      [v54 setConstant_];
    }
  }
}

id sub_1BA0BE40C()
{
  v1 = v0;
  v2 = sub_1BA4A2A88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3058();
  v7 = v6;
  if (v6)
  {

    v8 = sub_1BA0BB55C();
    [v8 setHidden_];

    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint) setActive_];
    v9 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint);
    if (v9)
    {
      [v9 setConstant_];
    }
  }

  else
  {
    v10 = sub_1BA0BB55C();
    [v10 setHidden_];

    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint) setActive_];
    v11 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint);
    if (v11)
    {
      [v11 setConstant_];
    }
  }

  v12 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint);
  if (v12)
  {
    [v12 setActive_];
  }

  v13 = sub_1BA0BB55C();
  sub_1BA4A3058();
  if (v14)
  {
    v15 = sub_1BA4A6758();
  }

  else
  {
    v15 = 0;
  }

  [v13 setText_];

  sub_1BA4A3018();
  v16 = (*(v3 + 88))(v5, v2);
  if (v16 != *MEMORY[0x1E69A31D0] && v16 != *MEMORY[0x1E69A31D8])
  {
    if (v16 == *MEMORY[0x1E69A31C8] || v16 == *MEMORY[0x1E69A31C0])
    {
      v22 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel;
      [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel) setTextColor_];
      v19 = *(v1 + v22);
      v20 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryLinkFont;
      return [v19 setFont_];
    }

    if (v16 != *MEMORY[0x1E69A31B8])
    {
      return (*(v3 + 8))(v5, v2);
    }
  }

  v18 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel;
  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel) setTextColor_];
  v19 = *(v1 + v18);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryFootnoteFont;
  return [v19 setFont_];
}

uint64_t sub_1BA0BE718(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1B9F6BF24(0, &qword_1EDC6E1C8, MEMORY[0x1E69A32A0]);
  v2[4] = swift_task_alloc();
  v3 = sub_1BA4A2BF8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1BA4A6C68();
  v2[9] = sub_1BA4A6C58();
  v5 = sub_1BA4A6C28();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BA0BE860, v5, v4);
}

uint64_t sub_1BA0BE860()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_1BA4A3098();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[4];

    sub_1BA0C3508(v4, &qword_1EDC6E1C8, MEMORY[0x1E69A32A0]);
    v5 = 0;
LABEL_10:

    v25 = v0[1];

    return v25(v5);
  }

  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  (*(v9 + 32))(v7, v0[4], v8);
  (*(v9 + 16))(v6, v7, v8);
  if ((*(v9 + 88))(v6, v8) != *MEMORY[0x1E69A3298])
  {
    v20 = v0[8];
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];

    v5 = sub_1BA4A2BB8();
    v24 = *(v22 + 8);
    v24(v20, v23);
    v24(v21, v23);
    goto LABEL_10;
  }

  v10 = v0[7];
  v11 = v0[3];
  (*(v0[6] + 96))(v10, v0[5]);
  v12 = *(v10 + 25);

  v13 = [v11 traitCollection];
  [v13 displayScale];
  v15 = v14;

  v16 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:45.0 scale:{45.0, v15}];
  v17 = v16;
  v0[12] = v16;
  if (v12 == 1)
  {
    [v16 setShape_];
  }

  v18 = v17;
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_1BA0BEB4C;

  return MEMORY[0x1EEE0D8E0](v17);
}

uint64_t sub_1BA0BEB4C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 112) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BA0BEC94, v5, v4);
}

uint64_t sub_1BA0BEC94()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);
  v5 = v0[14];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1BA0BED44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1BA4A2A88();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = sub_1BA4A6C68();
  v5[9] = sub_1BA4A6C58();
  v8 = swift_task_alloc();
  v5[10] = v8;
  *v8 = v5;
  v8[1] = sub_1BA0BEE6C;

  return sub_1BA0BE718(a5);
}

uint64_t sub_1BA0BEE6C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  v3 = sub_1BA4A6C28();

  return MEMORY[0x1EEE6DFA0](sub_1BA0BEFB0, v3, v2);
}

uint64_t sub_1BA0BEFB0()
{
  v1 = v0[11];

  v2 = sub_1BA0BB6A0();
  v3 = v2;
  if (v1)
  {
    v4 = v0[11];
    v5 = v0[2];
    [v2 setHidden_];

    [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView) setImage_];
    v6 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint);
    if (v6)
    {
      v7 = v6;
      [v7 setActive_];
    }

    else
    {
    }
  }

  else
  {
    v8 = v0[2];
    [v2 setHidden_];

    [*(v8 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView) setImage_];
    v9 = *(v8 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint);
    if (v9)
    {
      [v9 setActive_];
    }
  }

  v11 = v0 + 7;
  v10 = v0[7];
  v12 = v0[6];
  v13 = v0[4];
  v14 = v0[5];
  v15 = sub_1BA0BB6A0();
  sub_1BA4A3018();
  (*(v14 + 16))(v12, v10, v13);
  v16 = (*(v14 + 88))(v12, v13);
  v17 = (v14 + 8);
  if (v16 == *MEMORY[0x1E69A31C8] || v16 == *MEMORY[0x1E69A31C0])
  {
    [v15 setAlpha_];

    v20 = *v17;
  }

  else
  {
    v18 = v0[7];
    v19 = v0[4];
    [v15 setAlpha_];

    v20 = *v17;
    (*v17)(v18, v19);
    v11 = v0 + 6;
  }

  v20(*v11, v0[4]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BA0BF220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F6BF24(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BA0C3488(a3, v25 - v10);
  v12 = sub_1BA4A6C88();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BA0C3508(v11, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1BA4A6C78();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BA4A6C28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BA4A6848() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BA0C3508(a3, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);

      return v23;
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

  sub_1BA0C3508(a3, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1BA0BF544()
{
  v1 = v0;
  v2 = sub_1BA4A2A88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3018();
  v6 = (*(v3 + 88))(v5, v2);
  v7 = *MEMORY[0x1E69A31D0];
  v8 = sub_1BA0BB75C();
  v9 = v8;
  if (v6 == v7)
  {
    [v8 setHidden_];

    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint) setActive_];
    result = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint);
    if (result)
    {
      return [result setConstant_];
    }
  }

  else
  {
    [v8 setHidden_];

    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint) setActive_];
    v11 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint);
    if (v11)
    {
      [v11 setConstant_];
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

id sub_1BA0BF6F8(uint64_t a1)
{
  v2 = v1;
  v57 = sub_1BA4A2A88();
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA0BB944();
  v55 = a1;
  sub_1BA4A3028();
  v12 = v11;
  v13 = sub_1BA44666C();
  v56 = v4;
  if (v12)
  {
    v14 = sub_1BA4A6758();
  }

  else
  {
    v14 = 0;
  }

  [v13 setText_];

  v15 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView____lazy_storage___label];
  v16 = *MEMORY[0x1E69DDCF8];
  v17 = objc_opt_self();
  v54 = v15;
  v18 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
  v19 = [v18 fontDescriptorWithSymbolicTraits_];

  if (v19)
  {
    v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v21 = v16;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v49 = v22;
      v25 = v24;
      v47 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v25 = 136315906;
      v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v51 = v21;
      v28 = sub_1B9F0B82C(v26, v27, &v60);
      LODWORD(v48) = v23;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v58 = 0;
      v59 = 1;
      sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, &v60);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2080;
      LODWORD(v58) = 2;
      type metadata accessor for SymbolicTraits(0);
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v60);
      v21 = v51;

      *(v25 + 24) = v35;
      *(v25 + 32) = 2112;
      v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v25 + 34) = v36;
      v37 = v47;
      *v47 = v36;
      v38 = v49;
      _os_log_impl(&dword_1B9F07000, v49, v48, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v25, 0x2Au);
      sub_1B9F8C6C8(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      v48 = v9;
      v39 = v50;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);

      (*(v52 + 8))(v48, v53);
    }

    else
    {

      (*(v52 + 8))(v9, v53);
    }

    v19 = [v17 preferredFontDescriptorWithTextStyle_];
    v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  }

  v40 = v20;

  v41 = v54;
  [v54 setFont_];

  sub_1BA4A3018();
  v43 = v56;
  v42 = v57;
  v44 = (*(v56 + 88))(v6, v57);
  v45 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView);
  if (v44 == *MEMORY[0x1E69A31D8] || v44 == *MEMORY[0x1E69A31B8])
  {
    [v45 setHidden_];
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint) setActive_];
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint) setActive_];
    return [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint) setActive_];
  }

  else
  {
    [v45 setHidden_];
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint) setActive_];
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint) setActive_];
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint) setActive_];
    return (*(v43 + 8))(v6, v42);
  }
}

uint64_t sub_1BA0BFD14(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for FeatureStatusPlatformFeedItemView();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    return sub_1BA0BD294();
  }

  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;
  if (v5 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v7 == v8)
  {
  }

  v10 = sub_1BA4A8338();

  if ((v10 & 1) == 0)
  {
    return sub_1BA0BD294();
  }

  return result;
}

uint64_t sub_1BA0BFEB8@<X0>(char *a1@<X8>)
{
  v2 = sub_1BA4A2A88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = sub_1BA4A30B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0BADEC();
  sub_1BA4A3018();
  (*(v3 + 104))(v5, *MEMORY[0x1E69A31D0], v2);
  v13 = sub_1BA4A2A78();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_1BA0C00B0()
{
  ObjectType = swift_getObjectType();
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v54 = &v43[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1BA4A2A88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43[-v10];
  v12 = sub_1BA4A30B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA0BADEC();
  if ((sub_1BA4A3008() & 1) != 0 && (HKImproveHealthAndActivityAnalyticsAllowed() & 1) == 0)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v50 = v1;
  v56 = v13;
  v51 = v0;
  v57 = v12;
  sub_1BA4A3018();
  v16 = v4[13];
  v16(v8, *MEMORY[0x1E69A31D0], v3);
  v55 = sub_1BA0C3398(&qword_1EBBE9D90, MEMORY[0x1E69A31E0]);
  v17 = sub_1BA4A6728();
  v18 = v4[1];
  v18(v8, v3);
  v18(v11, v3);
  if (v17)
  {
    return (*(v56 + 8))(v15, v57);
  }

  sub_1BA4A3018();
  v16(v8, *MEMORY[0x1E69A31D8], v3);
  v19 = sub_1BA4A6728();
  v18(v8, v3);
  v18(v11, v3);
  if (v19)
  {
    return (*(v56 + 8))(v15, v57);
  }

  v49 = sub_1BA4A3048();
  v48 = v21;
  sub_1BA4A3018();
  sub_1BA4A2F48();
  v47 = sub_1BA4A2F38();
  v44 = sub_1BA4A2F28();
  v22 = v4[2];
  v22(v8, v11, v3);
  v23 = v53;
  v22(v53, v11, v3);
  sub_1BA4A2A68();
  v46 = sub_1BA4A6758();

  sub_1BA4A2A68();
  v45 = sub_1BA4A6758();

  v55 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v25 = [v24 initWithBool_];
  v26 = sub_1BA4A6758();

  v27 = sub_1BA4A6758();

  v18(v23, v3);
  v18(v8, v3);
  v18(v11, v3);
  *&v63 = v26;
  *(&v63 + 1) = v27;
  *&v64 = v46;
  *(&v64 + 1) = v45;
  *&v65 = v55;
  *(&v65 + 1) = v25;
  v66 = xmmword_1BA4BC920;
  v28 = v54;
  sub_1BA4A3E58();
  v29 = sub_1BA4A3E88();
  v30 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v58[0] = v32;
    *v31 = 136446466;
    *&v59 = ObjectType;
    swift_getMetatypeMetadata();
    v33 = sub_1BA4A6808();
    v35 = sub_1B9F0B82C(v33, v34, v58);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    swift_beginAccess();
    v37 = qword_1EBBEDEA0;
    v36 = off_1EBBEDEA8;

    v38 = sub_1B9F0B82C(v37, v36, v58);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_1B9F07000, v29, v30, "[%{public}s]: Submitting %s analytics event (unavailable)", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v31, -1, -1);
  }

  (*(v50 + 8))(v28, v51);
  v39 = v57;
  v40 = v56;
  v59 = v63;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v41 = sub_1BA4A29B8();
  v42 = sub_1BA4A29A8();
  v58[3] = v41;
  v58[4] = MEMORY[0x1E69A3198];
  v58[0] = v42;
  sub_1BA0C33E0();
  sub_1BA4A2B58();
  (*(v40 + 8))(v15, v39);
  __swift_destroy_boxed_opaque_existential_1(v58);
  return sub_1BA0C3434(&v63);
}

void *sub_1BA0C08D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v45 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v45 - v11;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA04B338(v1 + v13, &v47);
  if (v48[1])
  {
    sub_1B9F1134C(&v47, v49);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v45[1] = ObjectType;
      sub_1B9F0A534(v49, v48);
      *&v47 = v1;
      *(&v47 + 1) = v15;
      v16 = v50;
      v17 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v18 = *(v17 + 80);
      v19 = v1;
      v20 = v15;
      v21 = v18(&v47, v16, v17);
      if (v21)
      {
        v22 = v21;
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          sub_1BA0C3344(&v47);

          __swift_destroy_boxed_opaque_existential_1(v49);
          return v22;
        }
      }

      sub_1BA4A3E28();
      v38 = sub_1BA4A3E88();
      v39 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46 = v41;
        *v40 = 136315138;
        v42 = sub_1BA4A85D8();
        v44 = sub_1B9F0B82C(v42, v43, &v46);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_1B9F07000, v38, v39, "%s makePluginActionHandler actionHandler is nil, legacy subclass is handling action", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x1BFAF43A0](v41, -1, -1);
        MEMORY[0x1BFAF43A0](v40, -1, -1);
      }

      (*(v4 + 8))(v12, v3);
      sub_1BA0C3344(&v47);
    }

    else
    {
      sub_1BA4A3E28();
      v31 = sub_1BA4A3E88();
      v32 = sub_1BA4A6FB8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v47 = v34;
        *v33 = 136315138;
        v35 = sub_1BA4A85D8();
        v37 = sub_1B9F0B82C(v35, v36, &v47);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_1B9F07000, v31, v32, "%s makePluginActionHandler parentViewController is nil", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1BFAF43A0](v34, -1, -1);
        MEMORY[0x1BFAF43A0](v33, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
    }

    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    sub_1BA0BD670(&v47);
    sub_1BA4A3E28();
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v47 = v27;
      *v26 = 136315138;
      v28 = sub_1BA4A85D8();
      v30 = sub_1B9F0B82C(v28, v29, &v47);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1B9F07000, v24, v25, "%s makePluginActionHandler context is nil", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

void sub_1BA0C0DDC(uint64_t a1, unint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier];
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  if (a2)
  {
    v6 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v7 = sub_1BA0BAFB8();

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v8 = sub_1BA4A6758();

    [v7 setAccessibilityIdentifier_];

    sub_1BA0C1124(a1, a2);
    v9 = sub_1BA0BB55C();

    MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4E8CC0);
    v10 = sub_1BA4A6758();

    [v9 setAccessibilityIdentifier_];

    v11 = sub_1BA0BB944();
    v20 = a2;

    MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E8CE0);
    v12 = &v11[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier];
    swift_beginAccess();
    *v12 = a1;
    v12[1] = a2;

    v13 = sub_1BA4A6758();
    [v11 setAccessibilityIdentifier_];

    v14 = sub_1BA44666C();

    MEMORY[0x1BFAF1350](0x7972616D6972502ELL, 0xEE006E6F74747542);
    v15 = sub_1BA4A6758();

    [v14 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v16 = sub_1BA0BAFB8();
    [v16 setAccessibilityIdentifier_];

    sub_1BA0C1124(a1, 0);
    v17 = sub_1BA0BB55C();
    [v17 setAccessibilityIdentifier_];

    v18 = sub_1BA0BB944();
    v19 = &v18[OBJC_IVAR____TtC18HealthExperienceUI22ListStyleAccessoryView_baseIdentifier];
    swift_beginAccess();
    *v19 = a1;
    v19[1] = 0;

    [v18 setAccessibilityIdentifier_];
    v11 = sub_1BA44666C();
    [v11 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1BA0C1124(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v5 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    v18 = sub_1BA0BB498();
    [v18 setAccessibilityIdentifier_];

    v19 = [*(v4 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView) arrangedSubviews];
    sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
    v6 = sub_1BA4A6B08();

    v50 = v5;
    if (v6 >> 62)
    {
      v20 = sub_1BA4A7CC8();
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_20:
        v21 = 0;
        v11 = v6 & 0xC000000000000001;
        v22 = MEMORY[0x1E69E7CC0];
LABEL_21:
        v23 = v21;
        while (1)
        {
          if (v11)
          {
            v24 = MEMORY[0x1BFAF2860](v23, v6);
          }

          else
          {
            if (v23 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v24 = *(v6 + 8 * v23 + 32);
          }

          v3 = v24;
          v21 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          type metadata accessor for LabelWithIndicatorView();
          if (swift_dynamicCastClass())
          {
            MEMORY[0x1BFAF1510]();
            if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
            v22 = v5;
            if (v21 == v20)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          }

          ++v23;
          if (v21 == v20)
          {
            goto LABEL_56;
          }
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_56:

    if (v22 >> 62)
    {
      goto LABEL_68;
    }

    v36 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
    }

    while (1)
    {
      for (i = 0; ; ++i)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1BFAF2860](i, v22);
        }

        else
        {
          if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v38 = *(v22 + 8 * i + 32);
        }

        v39 = v38;
        v40 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v41 = &v38[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier];
        swift_beginAccess();
        *v41 = 0;
        *(v41 + 1) = 0;

        [v39 setAccessibilityIdentifier_];
        v42 = sub_1BA173D1C();
        [v42 setAccessibilityIdentifier_];

        v43 = sub_1BA17389C();
        [v43 setAccessibilityIdentifier_];

        if (v40 == v36)
        {
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      v36 = sub_1BA4A7CC8();
      if (!v36)
      {
      }
    }
  }

  v6 = a2;
  v8 = sub_1BA0BB498();
  v49 = a1;

  MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4E9130);
  v9 = sub_1BA4A6758();

  [v8 setAccessibilityIdentifier_];

  v10 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView) arrangedSubviews];
  sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
  v3 = sub_1BA4A6B08();

  v50 = v5;
  v11 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_39:
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

LABEL_38:
  v12 = sub_1BA4A7CC8();
  if (!v12)
  {
    goto LABEL_39;
  }

LABEL_4:
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    v15 = v13;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFAF2860](v15, v3);
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_35;
        }

        v16 = *(v3 + 8 * v15 + 32);
      }

      v17 = v16;
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      type metadata accessor for LabelWithIndicatorView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v15;
      if (v13 == v12)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1BFAF1510]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v14 = v50;
  }

  while (v13 != v12);
LABEL_40:

  if (v14 >> 62)
  {
    goto LABEL_52;
  }

  for (j = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1BA4A7CC8())
  {
    v26 = 0;
    v47 = v14 & 0xC000000000000001;
    v48 = v6;
    v45 = v14;
    v46 = v14 & 0xFFFFFFFFFFFFFF8;
    while (v47)
    {
      v14 = MEMORY[0x1BFAF2860](v26, v14);
      v27 = v48;
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_50;
      }

LABEL_46:

      MEMORY[0x1BFAF1350](0x656E6F706D6F432ELL, 0xEA0000000000746ELL);
      v29 = v27;
      v30 = (v14 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
      swift_beginAccess();
      *v30 = v49;
      v30[1] = v29;

      v31 = sub_1BA4A6758();
      v6 = &selRef_preferredContentSizeCategory;
      [v14 setAccessibilityIdentifier_];

      v32 = sub_1BA173D1C();

      MEMORY[0x1BFAF1350](0x74616369646E492ELL, 0xEA0000000000726FLL);
      v33 = sub_1BA4A6758();

      [v32 setAccessibilityIdentifier_];

      v34 = sub_1BA17389C();

      MEMORY[0x1BFAF1350](0x6C6562614C2ELL, 0xE600000000000000);
      v35 = sub_1BA4A6758();

      [v34 setAccessibilityIdentifier_];

      ++v26;
      v14 = v45;
      if (v28 == j)
      {
      }
    }

    v27 = v48;
    if (v26 >= *(v46 + 16))
    {
      goto LABEL_51;
    }

    v14 = *(v14 + 8 * v26 + 32);
    v28 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      goto LABEL_46;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }
}

id FeatureStatusPlatformFeedItemView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStatusPlatformFeedItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0C1A60()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA0C1ABC(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void (*sub_1BA0C1B84(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA0C1C88(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA0C1D80;

  return v6(a1);
}

uint64_t sub_1BA0C1D80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1BA0C1E78()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0C00B0();
  v5 = sub_1BA0C08D0();
  v6 = &v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_actionHandler];
  v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_actionHandler];
  *v6 = v5;
  *(v6 + 1) = v8;

  sub_1BA4A3E28();
  v9 = v0;
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v27 = *v6;
    v17 = v27;
    sub_1B9F40D78(0, &qword_1EBBEB768, &qword_1EBBEB770);
    v18 = v17;
    v19 = sub_1BA4A6808();
    v21 = sub_1B9F0B82C(v19, v20, &v28);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1B9F07000, v10, v11, "%s didSelectCell actionHandler: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v22 = *v6;
  if (*v6)
  {
    v23 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 16);
    v26 = v22;
    v25(ObjectType, v23);
  }
}

void sub_1BA0C2110(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_containerViewBackgroundColor];
LABEL_11:
    [v2 setBackgroundColor_];

    return;
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA04B338(v2 + v3, v31);
  v4 = v32;
  if (v32)
  {
    v5 = v33;
    v6 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    (*(v5 + 40))(&v30, v4, v5);
    (*(v7 + 8))(v10, v4);
    if (v30 - 6 < 2)
    {
      v18 = objc_opt_self();
      v19 = [v18 systemGray5Color];
      v20 = [v18 tertiarySystemGroupedBackgroundColor];
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = v20;
      v21[4] = 0;
      v21[5] = v19;
      v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v28 = sub_1B9FD7F54;
      v29 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v16 = &block_descriptor_20;
    }

    else
    {
      if (v30 != 4 && v30 != 12)
      {
        v17 = [objc_opt_self() systemGray5Color];
        goto LABEL_10;
      }

      v11 = objc_opt_self();
      v12 = [v11 systemGray5Color];
      v13 = [v11 systemGray4Color];
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = v13;
      v14[4] = 0;
      v14[5] = v12;
      v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v28 = sub_1B9FE1088;
      v29 = v14;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v16 = &block_descriptor_77_1;
    }

    v26 = sub_1B9F7EBBC;
    v27 = v16;
    v22 = _Block_copy(&aBlock);
    v17 = [v15 initWithDynamicProvider_];
    _Block_release(v22);

LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v31);
    goto LABEL_11;
  }

  __break(1u);
}

void _s18HealthExperienceUI33FeatureStatusPlatformFeedItemViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - v7;
  v9 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier);
  *v9 = 0;
  v9[1] = 0;
  swift_unknownObjectWeakInit();
  v10 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_actionHandler);
  *v10 = 0;
  v10[1] = 0;
  v11 = v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_containerViewBackgroundColor;
  v13 = objc_opt_self();
  *(v1 + v12) = [v13 secondarySystemGroupedBackgroundColor];
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___primaryDescriptionStackView) = 0;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryFootnoteColor;
  *(v1 + v14) = [v13 secondaryLabelColor];
  v15 = *MEMORY[0x1E69DDD28];
  v16 = objc_opt_self();
  v17 = [v16 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
  v18 = [v17 fontDescriptorWithSymbolicTraits_];

  v19 = &selRef_createHKUnitPreferenceController;
  if (v18)
  {
    v20 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  }

  else
  {
    v68 = v5;
    v69 = v3;
    sub_1BA4A3DD8();
    v21 = v15;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v67 = v2;
      v25 = v24;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = v66;
      *v25 = 136315906;
      v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v28 = sub_1B9F0B82C(v26, v27, &v72);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v70 = 0;
      v71 = 1;
      sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v72);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      LODWORD(v70) = 2;
      type metadata accessor for SymbolicTraits(0);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v72);

      *(v25 + 24) = v34;
      *(v25 + 32) = 2112;
      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v25 + 34) = v35;
      v36 = v65;
      *v65 = v35;
      _os_log_impl(&dword_1B9F07000, v22, v23, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v25, 0x2Au);
      sub_1B9F8C6C8(v36);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      v37 = v66;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      v38 = v25;
      v2 = v67;
      MEMORY[0x1BFAF43A0](v38, -1, -1);
    }

    v3 = v69;
    (*(v69 + 8))(v8, v2);
    v39 = [v16 preferredFontDescriptorWithTextStyle_];
    v19 = &selRef_createHKUnitPreferenceController;
    v20 = [objc_opt_self() fontWithDescriptor:v39 size:0.0];

    v5 = v68;
  }

  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryFootnoteFont) = v20;
  v40 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryLinkColor;
  *(v1 + v40) = [v13 systemBlueColor];
  v41 = *MEMORY[0x1E69DDD80];
  v42 = [v16 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v45 = v41;
    v46 = sub_1BA4A3E88();
    v47 = v5;
    v48 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v46, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = v66;
      *v49 = 136315906;
      v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v67 = v2;
      v53 = sub_1B9F0B82C(v51, v52, &v72);
      v69 = v3;
      v54 = v53;

      *(v49 + 4) = v54;
      v68 = v47;
      *(v49 + 12) = 2080;
      v70 = 0;
      v71 = 1;
      sub_1B9F6BF24(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v55 = sub_1BA4A6808();
      v57 = sub_1B9F0B82C(v55, v56, &v72);

      *(v49 + 14) = v57;
      *(v49 + 22) = 2080;
      LODWORD(v70) = 0;
      type metadata accessor for SymbolicTraits(0);
      v58 = sub_1BA4A6808();
      v60 = sub_1B9F0B82C(v58, v59, &v72);

      *(v49 + 24) = v60;
      *(v49 + 32) = 2112;
      v61 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v49 + 34) = v61;
      *v50 = v61;
      _os_log_impl(&dword_1B9F07000, v46, v48, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v49, 0x2Au);
      sub_1B9F8C6C8(v50);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      v62 = v66;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v62, -1, -1);
      v63 = v49;
      v19 = &selRef_createHKUnitPreferenceController;
      MEMORY[0x1BFAF43A0](v63, -1, -1);

      (*(v69 + 8))(v68, v67);
    }

    else
    {

      (*(v3 + 8))(v47, v2);
    }

    v43 = [v16 preferredFontDescriptorWithTextStyle_];
    v44 = [objc_opt_self() v19[99]];
  }

  v64 = v44;

  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryLinkFont) = v64;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___secondaryDescriptionLabel) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___iconImageView) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___disclosureImageView) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView____lazy_storage___bottomAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_iconImageViewLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_disclosureImageViewTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_titleLabelTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_primaryDescriptionStackViewTopSpacingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelTopSpacingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_secondaryDescriptionLabelBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_bottomAccessoryViewBottomConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA0C2D44(uint64_t a1)
{
  v4 = *(sub_1BA4A30B8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA0C2E3C;

  return sub_1BA0BED44(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1BA0C2E3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA0C3398(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA0C33E0()
{
  result = qword_1EBBEB778;
  if (!qword_1EBBEB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB778);
  }

  return result;
}

uint64_t sub_1BA0C3488(uint64_t a1, uint64_t a2)
{
  sub_1B9F6BF24(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA0C3508(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F6BF24(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA0C3564(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0C36D8;

  return sub_1BA0C1C88(a1, v4);
}

uint64_t sub_1BA0C361C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0C2E3C;

  return sub_1BA0C1C88(a1, v4);
}

uint64_t RootNavigationMode.hashValue.getter(char a1)
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a1 & 1);
  return sub_1BA4A84D8();
}

uint64_t static TraitRootNavigationMode.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EDC66668 = a1 & 1;
  return result;
}

uint64_t static TraitRootNavigationMode.identifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBEB780;

  return v0;
}

uint64_t static TraitRootNavigationMode.identifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBEB780 = a1;
  off_1EBBEB788 = a2;
}

uint64_t sub_1BA0C3954(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBEB780 = v2;
  off_1EBBEB788 = v1;
}

uint64_t sub_1BA0C39B8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EDC66668;
  return result;
}

uint64_t sub_1BA0C3A04()
{
  swift_beginAccess();
  v0 = qword_1EBBEB780;

  return v0;
}

uint64_t UIMutableTraits.rootNavigationMode.getter()
{
  sub_1BA0C3AC4();
  sub_1BA4A3FF8();
  return v1;
}

unint64_t sub_1BA0C3AC4()
{
  result = qword_1EDC66660;
  if (!qword_1EDC66660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC66660);
  }

  return result;
}

uint64_t (*UIMutableTraits.rootNavigationMode.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_1BA0C3AC4();
  sub_1BA4A3FF8();
  *(a1 + 25) = *(a1 + 24);
  return sub_1BA0C3BF8;
}

uint64_t sub_1BA0C3BF8(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 25);
  sub_1BA0C3AC4();
  return sub_1BA4A4008();
}

uint64_t UITraitCollection.rootNavigationMode.getter()
{
  sub_1BA0C3AC4();
  sub_1BA4A7358();
  return v1;
}

unint64_t sub_1BA0C3C94()
{
  result = qword_1EDC67F18;
  if (!qword_1EDC67F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67F18);
  }

  return result;
}

uint64_t HKTAlertDetailFactory.makeViewController(hkType:context:)(void *a1, uint64_t a2)
{
  v4 = [a1 identifier];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  v8 = v5 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v7;
  if (v8 || (sub_1BA4A8338() & 1) != 0 || (v5 == 0xD000000000000029 ? (v9 = 0x80000001BA4E9230 == v7) : (v9 = 0), v9 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000031 && 0x80000001BA4E9260 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD00000000000002ALL && 0x80000001BA4E92A0 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000033 && 0x80000001BA4E92D0 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD00000000000002DLL && 0x80000001BA4E9310 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000033 && 0x80000001BA4E9340 == v7 || (sub_1BA4A8338() & 1) != 0))
  {

    return HKTDataTypeDetailFactory.makeViewController(hkType:context:)(a1, a2);
  }

  if (v5 == 0xD000000000000038 && 0x80000001BA4E9380 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000031 && 0x80000001BA4E93C0 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000030 && 0x80000001BA4E9400 == v7 || (sub_1BA4A8338() & 1) != 0 || v5 == 0xD000000000000031 && 0x80000001BA4E9440 == v7 || (sub_1BA4A8338() & 1) != 0)
  {

    v11 = "ugin.healthplugin";
    v12 = 0xD000000000000025;
    return sub_1BA045704(a1, v12, v11 | 0x8000000000000000, a2);
  }

  if (v5 == 0xD000000000000027 && 0x80000001BA4E9480 == v7 || (sub_1BA4A8338() & 1) != 0)
  {

    v11 = "entifierHypertensionEvent";
    v12 = 0xD000000000000021;
    return sub_1BA045704(a1, v12, v11 | 0x8000000000000000, a2);
  }

  if (v5 == 0xD000000000000029 && 0x80000001BA4E94B0 == v7)
  {

    return HKTDataTypeDetailFactory.makeViewController(hkType:context:)(a1, a2);
  }

  v13 = sub_1BA4A8338();

  if (v13)
  {
    return HKTDataTypeDetailFactory.makeViewController(hkType:context:)(a1, a2);
  }

  sub_1BA045D5C();
  swift_allocError();
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 2;
  return swift_willThrow();
}

void sub_1BA0C4168(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  [*&v1[v2] removeFromSuperview];
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 insertSubview:*&v1[v2] atIndex:0];

    v5 = *&v1[v2];
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA0C4288@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_actionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BA0C695C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B9F0F1B8(v4);
}

uint64_t sub_1BA0C4328(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0C6958;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_actionHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1B9F0F1B8(v3);
  return sub_1B9F0E310(v8);
}

uint64_t sub_1BA0C4468@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BA0A4A28;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B9F0F1B8(v4);
}

uint64_t sub_1BA0C4508(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0C68C8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1B9F0F1B8(v3);
  return sub_1B9F0E310(v8);
}

uint64_t sub_1BA0C45DC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1B9F0F1B8(*v2);
  return v3;
}

uint64_t sub_1BA0C4640(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return sub_1B9F0E310(v7);
}

id sub_1BA0C46FC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  return [*(v3 + v5) setHidden_];
}

uint64_t sub_1BA0C4780()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1BA0C47C4(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  return [*(v1 + v4) setHidden_];
}

void (*sub_1BA0C4848(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA0C48D0;
}

void sub_1BA0C48D0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
    swift_beginAccess();
    [*(v5 + v6) setHidden_];
  }

  free(v3);
}

id sub_1BA0C4958()
{
  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton);
  if (result)
  {
    return [result isUserInteractionEnabled];
  }

  return result;
}

id sub_1BA0C4988(id result)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton;
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton))
  {
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton) setUserInteractionEnabled_];
    result = *(v1 + v2);
    if (result)
    {

      return [result setNeedsUpdateConfiguration];
    }
  }

  return result;
}

id (*sub_1BA0C49F4(uint64_t a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    LOBYTE(v4) = [v4 isUserInteractionEnabled];
  }

  *(a1 + 16) = v4;
  return sub_1BA0C4A54;
}

id sub_1BA0C4A54(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  result = *(*a1 + v2);
  if (result)
  {
    [result setUserInteractionEnabled_];
    result = *(v3 + v2);
    if (result)
    {

      return [result setNeedsUpdateConfiguration];
    }
  }

  return result;
}

void sub_1BA0C4ABC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA0C4B1C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA0C4B70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CameraScannerOverlayWithButtonsViewController.__allocating_init(title:detail:detailMaxNumberOfLines:primaryButtonTitle:primaryButtonImage:cancelButtonTitle:headerView:headerHeight:overlayMode:automationIdentifierPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, uint64_t a10, uint64_t a11, void *a12, uint64_t *a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v23 = objc_allocWithZone(v16);
  v24 = *a13;
  v25 = *(a13 + 8);
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton] = 0;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButton] = 0;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_topPaddingConstraint] = 0;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_customContentView] = 0;
  v26 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_actionHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelHandler];
  *v27 = 0;
  v27[1] = 0;
  v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground] = 1;
  v28 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButtonTitle];
  *v28 = a6;
  v28[1] = a7;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButtonImage] = a8;
  v29 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButtonTitle];
  *v29 = a10;
  v29[1] = a11;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderView] = a12;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderHeight] = a9;
  v30 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_titleText];
  *v30 = a1;
  v30[1] = a2;
  v31 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailText];
  *v31 = a3;
  v31[1] = a4;
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailMaxNumberOfLines] = a5;
  v32 = &v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix];
  *v32 = a14;
  v32[1] = a15;
  v51 = v24;
  v52 = v25;
  v33 = a12;

  v34 = a8;

  CameraScannerOverlayMode.createView()(v35);
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView] = v36;
  v37 = sub_1BA4A6758();
  v50.receiver = v23;
  v50.super_class = v49;
  v38 = objc_msgSendSuper2(&v50, sel_initWithTitle_detailText_icon_contentLayout_, v37, 0, 0, 2);

  v39 = v38;
  result = [v39 view];
  if (result)
  {
    v41 = result;

    v42 = objc_opt_self();
    v43 = [v42 clearColor];
    [v41 setBackgroundColor_];

    v44 = [v39 contentView];
    v45 = [v42 clearColor];
    [v44 setBackgroundColor_];

    [v39 setOverrideUserInterfaceStyle_];
    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CameraScannerOverlayWithButtonsViewController.init(title:detail:detailMaxNumberOfLines:primaryButtonTitle:primaryButtonImage:cancelButtonTitle:headerView:headerHeight:overlayMode:automationIdentifierPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, uint64_t a10, uint64_t a11, void *a12, uint64_t *a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v18 = *a13;
  v19 = *(a13 + 8);
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton] = 0;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButton] = 0;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_topPaddingConstraint] = 0;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_customContentView] = 0;
  v20 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_actionHandler];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelHandler];
  *v21 = 0;
  v21[1] = 0;
  v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground] = 1;
  v22 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButtonTitle];
  *v22 = a6;
  v22[1] = a7;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButtonImage] = a8;
  v23 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButtonTitle];
  *v23 = a10;
  v23[1] = a11;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderView] = a12;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderHeight] = a9;
  v24 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_titleText];
  *v24 = a1;
  v24[1] = a2;
  v25 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailText];
  *v25 = a3;
  v25[1] = a4;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailMaxNumberOfLines] = a5;
  v26 = &v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix];
  *v26 = a14;
  v26[1] = a15;
  v41 = v18;
  v42 = v19;
  v27 = a12;

  v28 = a8;

  CameraScannerOverlayMode.createView()(v29);
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView] = v30;
  v31 = sub_1BA4A6758();
  v40.receiver = v16;
  v40.super_class = type metadata accessor for CameraScannerOverlayWithButtonsViewController();
  v32 = objc_msgSendSuper2(&v40, sel_initWithTitle_detailText_icon_contentLayout_, v31, 0, 0, 2);

  v33 = v32;
  result = [v33 view];
  if (result)
  {
    v35 = result;

    v36 = objc_opt_self();
    v37 = [v36 clearColor];
    [v35 setBackgroundColor_];

    v38 = [v33 contentView];
    v39 = [v36 clearColor];
    [v38 setBackgroundColor_];

    [v33 setOverrideUserInterfaceStyle_];
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA0C5328(void *a1, const char *a2)
{
  v5 = v2;
  swift_getObjectType();
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v5 + *a1);
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {

    v11(v5);
    return sub_1B9F0E310(v11);
  }

  else
  {
    sub_1BA4A3DF8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136446210;
      v17 = sub_1BA4A85D8();
      v19 = sub_1B9F0B82C(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B9F07000, v13, v14, a2, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

void sub_1BA0C5588()
{
  v1 = v0;
  sub_1BA0C6900();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A7838();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A79A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A6758();
  sub_1B9F1C048(0, &qword_1EDC6E330);
  v11 = swift_allocObject();
  v31 = xmmword_1BA4B5460;
  *(v11 + 16) = xmmword_1BA4B5460;
  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix];
  v13 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix + 8];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  strcpy((v11 + 48), "PrimaryButton");
  *(v11 + 62) = -4864;

  v14 = sub_1BA4A6AE8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  v16 = [v1 hxui:v10 addPrimaryFooterButtonWithTitle:v15 accessibilityIdentifier:?];
  if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButtonTitle + 8])
  {
    v17 = sub_1BA4A6758();
    v18 = swift_allocObject();
    *(v18 + 16) = v31;
    *(v18 + 32) = v12;
    *(v18 + 40) = v13;
    strcpy((v18 + 48), "CancelButton");
    *(v18 + 61) = 0;
    *(v18 + 62) = -5120;

    v19 = sub_1BA4A6AE8();

    v20 = HKUIJoinStringsForAutomationIdentifier();

    v21 = [v1 hxui:v17 addSecondaryFooterButtonWithTitle:0 bold:v20 accessibilityIdentifier:?];
    v22 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButton];
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_cancelButton] = v21;

    sub_1BA4A7988();
    (*(v33 + 104))(v32, *MEMORY[0x1E69DC508], v34);
    sub_1BA4A7848();
    v23 = objc_opt_self();
    v24 = [v23 tintColor];
    sub_1BA4A78F8();
    v25 = [v23 whiteColor];
    v26 = sub_1BA4A7808();
    sub_1BA4A4118();
    v26(v36, 0);
  }

  else
  {
    sub_1BA4A7948();
  }

  v27 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButtonImage];
  sub_1BA4A7958();
  sub_1BA4A7898();
  v28 = v35;
  (*(v7 + 16))(v35, v9, v6);
  (*(v7 + 56))(v28, 0, 1, v6);
  v29 = v16;
  sub_1BA4A79D8();

  (*(v7 + 8))(v9, v6);
  v30 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton] = v29;
}

void sub_1BA0C5A44()
{
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_titleText);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_titleText + 8);
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailMaxNumberOfLines);
  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderView);
  v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_contentHeaderHeight);
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailText);
  v6 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_detailText + 8);
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix);
  v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_automationIdentifierPrefix + 8);
  v10 = type metadata accessor for CameraScannerOverlayContentView();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView] = 0;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___titleLabel] = 0;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___detailLabel] = 0;
  v12 = &v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_title];
  *v12 = v2;
  *(v12 + 1) = v1;
  v13 = &v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detail];
  *v13 = v7;
  *(v13 + 1) = v6;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_detailMaxNumberOfLines] = v3;
  if (v4)
  {

    v14 = v4;
  }

  else
  {
    v15 = objc_allocWithZone(MEMORY[0x1E69DD250]);

    v14 = [v15 init];
    v4 = 0;
  }

  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView] = v14;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerHeight] = v5;
  v16 = &v11[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_automationIdentifierPrefix];
  *v16 = v8;
  *(v16 + 1) = v9;
  v56.receiver = v11;
  v56.super_class = v10;
  v17 = v4;
  v18 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B8B60;
  v53 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView;
  v20 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView_headerView];
  *(inited + 32) = v20;
  v54 = v18;
  v21 = v18;
  v22 = v20;
  *(inited + 40) = sub_1BA2DE928();
  *(inited + 48) = sub_1BA2DEB5C();
  v23 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerOverlayContentView____lazy_storage___stackView;
  v24 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1BFAF2860](0, inited))
  {
    v26 = i;
    v27 = sub_1BA2DE850();
    [v27 addArrangedSubview_];

    [v26 hk:*&v21[v23] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v24)
    {
      v28 = MEMORY[0x1BFAF2860](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v28 = *(inited + 40);
    }

    v29 = v28;
    v30 = sub_1BA2DE850();
    [v30 addArrangedSubview_];

    [v29 hk:*&v21[v23] alignHorizontalConstraintsWithView:0.0 margin:?];
    if (v24)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v31 = *(inited + 48);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v31 = MEMORY[0x1BFAF2860](2, inited);
LABEL_13:
  v32 = v31;
  v33 = sub_1BA2DE850();
  [v33 addArrangedSubview_];

  [v32 hk:*&v21[v23] alignHorizontalConstraintsWithView:0.0 margin:?];
  swift_setDeallocating();
  swift_arrayDestroy();
  v34 = v21;
  v35 = sub_1BA2DE850();
  [v34 addSubview_];

  v52 = objc_opt_self();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BA4B5880;
  v37 = [*&v54[v53] heightAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v36 + 32) = v38;
  v39 = [*&v21[v23] leadingAnchor];
  v40 = [v34 leadingAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v36 + 40) = v41;
  v42 = [*&v21[v23] trailingAnchor];
  v43 = [v34 trailingAnchor];

  v44 = [v42 constraintEqualToAnchor_];
  *(v36 + 48) = v44;
  v45 = [*&v21[v23] topAnchor];
  v46 = [v34 topAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  *(v36 + 56) = v47;
  v48 = [v34 heightAnchor];

  v49 = [*&v21[v23] heightAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v36 + 64) = v50;
  sub_1B9F740B0();
  v51 = sub_1BA4A6AE8();

  [v52 activateConstraints_];

  [v55 setCenteredContentView_];
}

id CameraScannerOverlayWithButtonsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CameraScannerOverlayWithButtonsViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CameraScannerOverlayWithButtonsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraScannerOverlayWithButtonsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA0C6460(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA0C48D0;
}

uint64_t sub_1BA0C68C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1BA0C6900()
{
  if (!qword_1EDC5E0A8)
  {
    sub_1BA4A79A8();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E0A8);
    }
  }
}

uint64_t SummarySharingOnboardingError.init(error:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v4 = a1;
  v5 = a1;
  v6 = MEMORY[0x1BFAED310](a1);
  if (v6 > 4 || ((1 << v6) & 0x13) == 0)
  {

    v8 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    type metadata accessor for HKError(0);
    if (swift_dynamicCast())
    {
      sub_1BA0C6B4C();
      v9 = sub_1BA4A1468();

      *a2 = v9;
      type metadata accessor for SummarySharingOnboardingError();
      return swift_storeEnumTagMultiPayload();
    }

LABEL_10:
    type metadata accessor for SummarySharingOnboardingError();
    return swift_storeEnumTagMultiPayload();
  }

  v7 = MEMORY[0x1BFAED310](a1);

  *a2 = v7;
  sub_1BA4A2918();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SummarySharingOnboardingError();

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for SummarySharingOnboardingError()
{
  result = qword_1EBBEB908;
  if (!qword_1EBBEB908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA0C6B4C()
{
  result = qword_1EBBE9090;
  if (!qword_1EBBE9090)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9090);
  }

  return result;
}

void sub_1BA0C6BA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v69 = a8;
  v70 = a7;
  v67 = a2;
  v68 = a3;
  v71 = a1;
  v12 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - v16;
  v18 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA0CAA54(v8, v20, type metadata accessor for SummarySharingOnboardingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v66 = a6;
    if ((EnumCaseMultiPayload - 5) < 4)
    {
LABEL_10:
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v32 = sub_1BA4A1318();
      sub_1BA2C84D8(v71, v67, v68, v32, v33, MEMORY[0x1E69E7CC0], v70, v69);

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1BA2C84D8(v71, v67, v68, a4, a5, v66, v70, v69);
    }

    else
    {
      v68 = v8;
      v39 = *v20;
      v40 = v20[1];
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      sub_1BA4A1318();
      sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v41 = swift_allocObject();
      v64 = xmmword_1BA4B5480;
      *(v41 + 16) = xmmword_1BA4B5480;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      v42 = sub_1B9F1BE20();
      *(v41 + 64) = v42;
      *(v41 + 32) = v39;
      *(v41 + 40) = v40;

      v65 = sub_1BA4A6768();
      v67 = v43;

      sub_1BA4A1318();
      v44 = swift_allocObject();
      *(v44 + 16) = v64;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = v42;
      *(v44 + 32) = v39;
      *(v44 + 40) = v40;
      v63 = sub_1BA4A6768();
      *&v64 = v45;

      *&v77 = MEMORY[0x1E69E7CC0];
      sub_1BA4A1318();
      v46 = swift_allocObject();
      v48 = v69;
      v47 = v70;
      *(v46 + 16) = v70;
      *(v46 + 24) = v48;
      sub_1B9F0F1B4(v47, v48);
      v49 = sub_1BA4A6758();

      v74 = sub_1BA0CAC90;
      v75 = v46;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v73 = sub_1BA0B06D4;
      *(&v73 + 1) = &block_descriptor_23;
      v50 = _Block_copy(&aBlock);

      v51 = objc_opt_self();
      v52 = [v51 actionWithTitle:v49 style:0 handler:v50];
      _Block_release(v50);

      sub_1BA4A1318();
      v53 = sub_1BA4A6758();

      v74 = sub_1BA0C8344;
      v75 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v73 = sub_1BA0B06D4;
      *(&v73 + 1) = &block_descriptor_26;
      v54 = _Block_copy(&aBlock);

      v55 = [v51 actionWithTitle:v53 style:0 handler:v54];
      _Block_release(v54);

      v56 = v52;
      MEMORY[0x1BFAF1510]();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v57 = v55;
      MEMORY[0x1BFAF1510]();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();

      sub_1B9FE23D0(v58);
      sub_1BA2C84D8(v71, v65, v67, v63, v64, v77, v70, v48);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1BA0C851C(v71, *v20, v70, v69);
        goto LABEL_21;
      }

      if (*v20 == 730)
      {
        v22 = v71;
        v76 = v71;
        sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
        sub_1B9F0D950(0, &qword_1EBBEB918);
        v23 = v22;
        if (swift_dynamicCast())
        {
          v24 = *__swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1)) + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact;
          aBlock = *v24;
          v73 = *(v24 + 16);
          v74 = *(v24 + 32);
          v25 = sub_1BA1FAFCC();
          v27 = v26;
          __swift_destroy_boxed_opaque_existential_1(&v77);
          if (qword_1EDC5E100 != -1)
          {
            swift_once();
          }

          sub_1BA4A1318();
          sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1BA4B5480;
          *(v28 + 56) = MEMORY[0x1E69E6158];
          *(v28 + 64) = sub_1B9F1BE20();
          *(v28 + 32) = v25;
          *(v28 + 40) = v27;
          v29 = sub_1BA4A6768();
          v31 = v30;
        }

        else
        {
          v79 = 0;
          v77 = 0u;
          v78 = 0u;
          sub_1BA0CAC08(&v77);
          if (qword_1EDC5E100 != -1)
          {
            swift_once();
          }

          v29 = sub_1BA4A1318();
          v31 = v59;
        }

        if (qword_1EDC5E100 != -1)
        {
          swift_once();
        }

        v60 = sub_1BA4A1318();
        sub_1BA2C84D8(v23, v29, v31, v60, v61, MEMORY[0x1E69E7CC0], 0, 0);

        goto LABEL_21;
      }

      goto LABEL_10;
    }

    if (swift_getEnumCaseMultiPayload() == 1 && (sub_1BA0CAA54(v20, v17, MEMORY[0x1E69A3190]), *v17 == 4))
    {
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v34 = sub_1BA4A1318();
      v36 = v35;
      v37 = sub_1BA4A1318();
      sub_1BA2C84D8(v71, v34, v36, v37, v38, MEMORY[0x1E69E7CC0], v70, v69);

      sub_1BA0CAC94(v20, MEMORY[0x1E69A3190]);
    }

    else
    {
      sub_1BA0CA998(v20, v14, MEMORY[0x1E69A3190]);
      sub_1BA0C8C3C(v14, v71, v70, v69);
      sub_1BA0CAC94(v14, MEMORY[0x1E69A3190]);
    }
  }

LABEL_21:
  SummarySharingOnboardingError.submitAnalyticsIfNeeded()();
}

void static SummarySharingOnboardingErrorHandling.displayError(on:title:message:customActions:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v50 = a7;
  v53 = a2;
  v54 = a4;
  v13 = sub_1BA4A3EA8();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A64F8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v19 = sub_1BA4A7308();
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v20 = sub_1BA4A6528();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BA4A3DD8();

  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v21, v22))
  {
    v48 = a8;
    v23 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55 = v47;
    *v23 = 136315650;
    v24 = sub_1BA4A85D8();
    v26 = sub_1B9F0B82C(v24, v25, &v55);
    v49 = a1;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    aBlock = v53;
    v57 = a3;
    sub_1B9F63FA8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

    v28 = sub_1BA4A6808();
    v30 = sub_1B9F0B82C(v28, v29, &v55);
    a1 = v49;

    *(v23 + 14) = v30;
    *(v23 + 22) = 2080;
    aBlock = v54;
    v57 = a5;

    v31 = sub_1BA4A6808();
    v33 = sub_1B9F0B82C(v31, v32, &v55);

    *(v23 + 24) = v33;
    a8 = v48;
    _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] Received an error: %s, %s", v23, 0x20u);
    v34 = v47;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v34, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  (*(v51 + 8))(v15, v52);
  if (a3)
  {
    v35 = sub_1BA4A6758();
    if (a5)
    {
LABEL_6:
      v36 = sub_1BA4A6758();
      goto LABEL_9;
    }
  }

  else
  {
    v35 = 0;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  v36 = 0;
LABEL_9:
  v15 = [objc_opt_self() alertControllerWithTitle:v35 message:v36 preferredStyle:1];

  if (a6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v38 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1BFAF2860](v38, a6);
      }

      else
      {
        if (v38 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v39 = *(a6 + 8 * v38 + 32);
      }

      v40 = v39;
      a8 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      [v15 addAction_];

      ++v38;
      if (a8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v41 = swift_allocObject();
  v42 = v50;
  *(v41 + 16) = v50;
  *(v41 + 24) = a8;
  sub_1B9F0F1B4(v42, a8);
  v43 = sub_1BA4A6758();

  v60 = sub_1BA0CAF80;
  v61 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1BA0B06D4;
  v59 = &block_descriptor_21;
  v44 = _Block_copy(&aBlock);

  v45 = [objc_opt_self() actionWithTitle:v43 style:0 handler:v44];
  _Block_release(v44);

  [v15 addAction_];
LABEL_26:
  [a1 presentViewController:v15 animated:1 completion:0];
}

uint64_t static SummarySharingOnboardingErrorHandling.displayGenericError(on:title:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v10 = sub_1BA4A1318();
  static SummarySharingOnboardingErrorHandling.displayError(on:title:message:customActions:completion:)(a1, a2, a3, v10, v11, MEMORY[0x1E69E7CC0], a4, a5);
}

uint64_t SummarySharingOnboardingError.init(syncStatus:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummarySharingOnboardingError();
  v12 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 syncEnabled] & 1) == 0)
  {

LABEL_8:
    sub_1BA4A2918();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1BA0CA998(v7, a2, type metadata accessor for SummarySharingOnboardingError);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }

  if (([a1 accountSupportsSecureContainer] & 1) == 0)
  {
    v10 = [a1 syncEnabled];

    *v7 = v10;
    goto LABEL_8;
  }

  v8 = *(v12 + 56);

  return v8(a2, 1, 1, v4);
}

uint64_t sub_1BA0C8198()
{
  sub_1B9F63FA8(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBEB818);
  __swift_project_value_buffer(v1, qword_1EBBEB818);
  sub_1B9F0ADF8(0, &qword_1EDC6B610);
  sub_1BA4A70E8();
  return sub_1BA4A1CC8();
}

uint64_t sub_1BA0C8270()
{
  sub_1B9F63FA8(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EDC63A58);
  __swift_project_value_buffer(v1, qword_1EDC63A58);
  sub_1B9F0ADF8(0, &qword_1EDC6B610);
  sub_1BA4A70E8();
  return sub_1BA4A1CC8();
}

uint64_t sub_1BA0C8344()
{
  sub_1BA011090();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A15D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A15C8();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1BA0CAC94(v2, sub_1BA011090);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BA4A1548();
    [v9 hk:v10 asyncOpenURL:?];
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BA0C851C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v24 = a1;
  sub_1B9F63FA8(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v10 = sub_1BA4A1318();
  v12 = v11;
  if (!a2)
  {
    v23 = v10;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v23 = v10;
LABEL_7:
    sub_1BA4A1318();
    sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5480;
    if (qword_1EBBE8328 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_1EBBEB818);
    (*(v7 + 16))(v9, v14, v6);
    sub_1BA4A1CA8();
    (*(v7 + 8))(v9, v6);
    v15 = sub_1BA4A82D8();
    v17 = v16;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1B9F1BE20();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    v18 = sub_1BA4A6768();
    v20 = v19;

    sub_1BA2C84D8(v24, v23, v12, v18, v20, MEMORY[0x1E69E7CC0], v25, v26);
  }
}

uint64_t static SummarySharingOnboardingErrorHandling.displayMaxNumberRelationshipsError(on:for:completion:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v25 = a5;
  v26 = a3;
  v27 = a4;
  v24 = a1;
  sub_1B9F63FA8(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v11 = sub_1BA4A1318();
  v13 = v12;
  if (!a2)
  {
    v23 = v11;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v23 = v11;
LABEL_7:
    sub_1BA4A1318();
    sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5480;
    if (qword_1EBBE8328 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_1EBBEB818);
    (*(v8 + 16))(v10, v15, v7);
    sub_1BA4A1CA8();
    (*(v8 + 8))(v10, v7);
    v16 = sub_1BA4A82D8();
    v18 = v17;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1B9F1BE20();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = sub_1BA4A6768();
    v21 = v20;

    static SummarySharingOnboardingErrorHandling.displayError(on:title:message:customActions:completion:)(v24, v23, v13, v19, v21, MEMORY[0x1E69E7CC0], v26, v27);
  }
}

void sub_1BA0C8C3C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1BA4A2918();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1BA0CA004(&aBlock);
  if (v40)
  {
    v30 = v9;
    v31 = a1;
    v11 = v41;
    v12 = v42;
    v33 = v44;
    v34 = v43;
    v37 = aBlock;
    v38 = a2;
    v32 = v40;
    v13 = sub_1BA4A6758();
    v35 = v12;
    v36 = v11;
    v14 = sub_1BA4A6758();
    v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    sub_1B9F0F1B4(a3, a4);
    v17 = sub_1BA4A6758();

    v43 = sub_1BA0CAF80;
    v44 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1BA0B06D4;
    v42 = &block_descriptor_33_0;
    v18 = _Block_copy(&aBlock);

    v19 = objc_opt_self();
    v20 = [v19 actionWithTitle:v17 style:1 handler:v18];
    _Block_release(v18);

    sub_1BA0CAA54(v31, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x1E69A3190]);
    v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v22 = swift_allocObject();
    sub_1BA0CA998(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, MEMORY[0x1E69A3190]);
    v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = a3;
    v23[1] = a4;
    sub_1B9F0F1B4(a3, a4);
    v24 = sub_1BA4A6758();
    v43 = sub_1BA0CAF84;
    v44 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1BA0B06D4;
    v42 = &block_descriptor_40_1;
    v25 = _Block_copy(&aBlock);

    v26 = [v19 actionWithTitle:v24 style:0 handler:v25];
    _Block_release(v25);

    sub_1BA0CAA04(v37, v32);
    [v15 addAction_];
    [v15 addAction_];
    [v38 presentViewController:v15 animated:1 completion:0];
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v27 = sub_1BA4A1318();
    sub_1BA2C84D8(a2, 0, 0, v27, v28, MEMORY[0x1E69E7CC0], a3, a4);
  }
}

void static SummarySharingOnboardingErrorHandling.displayHealthCloudError(for:on:completion:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1BA4A2918();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1BA0CA004(&aBlock);
  if (v38)
  {
    v28 = v9;
    v36 = a2;
    v11 = v39;
    v12 = v40;
    v31 = v42;
    v32 = v41;
    v35 = aBlock;
    v30 = v38;
    v13 = sub_1BA4A6758();
    v33 = v12;
    v34 = v11;
    v14 = sub_1BA4A6758();
    v29 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    sub_1B9F0F1B4(a3, a4);
    v16 = sub_1BA4A6758();

    v41 = sub_1BA0CAF80;
    v42 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1BA0B06D4;
    v40 = &block_descriptor_6_0;
    v17 = _Block_copy(&aBlock);

    v18 = objc_opt_self();
    v19 = [v18 actionWithTitle:v16 style:1 handler:v17];
    _Block_release(v17);

    sub_1BA0CAA54(a1, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x1E69A3190]);
    v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v21 = swift_allocObject();
    sub_1BA0CA998(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, MEMORY[0x1E69A3190]);
    v22 = (v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = a3;
    v22[1] = a4;
    sub_1B9F0F1B4(a3, a4);
    v23 = sub_1BA4A6758();
    v41 = sub_1BA0CAA00;
    v42 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1BA0B06D4;
    v40 = &block_descriptor_12;
    v24 = _Block_copy(&aBlock);

    v25 = [v18 actionWithTitle:v23 style:0 handler:v24];
    _Block_release(v24);

    sub_1BA0CAA04(v35, v30);
    v26 = v29;
    [v29 addAction_];
    [v26 addAction_];
    [v36 presentViewController:v26 animated:1 completion:0];
  }

  else
  {
    static SummarySharingOnboardingErrorHandling.displayGenericError(on:title:completion:)(a2, 0, 0, a3, a4);
  }
}

Swift::Void __swiftcall SummarySharingOnboardingError.submitAnalyticsIfNeeded()()
{
  v1 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SummarySharingOnboardingError.uiAnalyticsOperation.getter(v10);
  if (LOBYTE(v10[0]) != 5)
  {
    sub_1BA0CAA54(v0, v3, type metadata accessor for SummarySharingOnboardingError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_13;
      }

      if (!EnumCaseMultiPayload)
      {
        sub_1BA0CAC94(v3, type metadata accessor for SummarySharingOnboardingError);
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_1BA0CAC94(v3, type metadata accessor for SummarySharingOnboardingError);
        }

        goto LABEL_13;
      }

      if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
      {
LABEL_13:
        sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
        v5 = sub_1BA4A77C8();
        v6 = sub_1BA4A6758();

        v10[5] = v5;
        v10[6] = v6;
        v7 = sub_1BA4A29B8();
        v8 = sub_1BA4A29A8();
        v10[3] = v7;
        v10[4] = MEMORY[0x1E69A3198];
        v10[0] = v8;
        sub_1BA0CAABC();
        sub_1BA4A2B58();
        __swift_destroy_boxed_opaque_existential_1(v10);
      }
    }
  }
}

HealthExperienceUI::SummarySharingOnboardingError::SharingOperation_optional __swiftcall SummarySharingOnboardingError.SharingOperation.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0);
  v4 = rawValue;
  v5 = sub_1BA4A77C8();
  v6 = sub_1BA4A7798();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = sub_1BA4A77C8();
    v11 = sub_1BA4A7798();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = v9;
      v13 = sub_1BA4A77C8();
      v14 = sub_1BA4A7798();

      if (v14)
      {

        v8 = 2;
      }

      else
      {
        v15 = v12;
        v16 = sub_1BA4A77C8();
        v17 = sub_1BA4A7798();

        if (v17)
        {

          v8 = 3;
        }

        else
        {
          v18 = sub_1BA4A77C8();
          v19 = sub_1BA4A7798();

          if (v19)
          {
            v8 = 4;
          }

          else
          {
            v8 = 5;
          }
        }
      }
    }
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1BA0C9B3C()
{
  sub_1BA4A8488();
  sub_1BA380A48();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA0C9B8C()
{
  sub_1BA4A8488();
  sub_1BA380A48();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA0C9BD8@<X0>(uint64_t *a1@<X8>)
{
  result = SummarySharingOnboardingError.SharingOperation.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t SummarySharingOnboardingError.uiAnalyticsOperation.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0CAA54(v2, v6, type metadata accessor for SummarySharingOnboardingError);
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if ((result - 5) < 2)
    {
LABEL_11:
      v8 = 0;
      goto LABEL_15;
    }

    if ((result - 7) >= 2)
    {
      result = sub_1BA0CAC94(v6, type metadata accessor for SummarySharingOnboardingError);
      goto LABEL_11;
    }

LABEL_8:
    v8 = 5;
LABEL_15:
    *a1 = v8;
    return result;
  }

  if (result <= 1)
  {
    if (!result)
    {
      result = sub_1BA0CAC94(v6, type metadata accessor for SummarySharingOnboardingError);
    }

    goto LABEL_8;
  }

  if (result != 2)
  {
    v8 = *v6;
    goto LABEL_15;
  }

  v9 = *v6;
  if (!*v6)
  {
    goto LABEL_11;
  }

  if (v9 == 1)
  {
    v8 = 1;
    goto LABEL_15;
  }

  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000020, 0x80000001BA4E9900);
  v10[1] = v9;
  type metadata accessor for HKSharingMessageDirection(0);
  sub_1BA4A7FB8();
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t SummarySharingOnboardingError.uiAnalyticsDescription.getter()
{
  v1 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0CAA54(v0, v3, type metadata accessor for SummarySharingOnboardingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        return 0xD000000000000016;
      }

      else
      {
        return 0xD000000000000010;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_1BA0CAC94(v3, type metadata accessor for SummarySharingOnboardingError);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1BA0CAC94(v3, type metadata accessor for SummarySharingOnboardingError);
      return 0x4364696C61766E69;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 0xD00000000000001FLL;
  }

  else if (EnumCaseMultiPayload == 7)
  {
    return 0xD000000000000010;
  }

  return result;
}

uint64_t sub_1BA0C9FD4(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1BA0CA004@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  sub_1BA0CAA54(v2, &v18 - v8, MEMORY[0x1E69A3190]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      if (qword_1EBBE8350 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EBBEB8C0;
      goto LABEL_19;
    case 1:
      sub_1BA0CAA54(v9, v6, MEMORY[0x1E69A3190]);
      if (!*v6)
      {
        if (qword_1EBBE8340 != -1)
        {
          swift_once();
        }

        v11 = &qword_1EBBEB860;
        goto LABEL_19;
      }

      if (*v6 == 1)
      {
        if (qword_1EBBE8338 != -1)
        {
          swift_once();
        }

        v11 = &qword_1EBBEB830;
        goto LABEL_19;
      }

      break;
    case 3:
      if (qword_1EBBE8348 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EBBEB890;
LABEL_19:
      v12 = v11[1];
      v13 = v11[2];
      v14 = v11[3];
      v15 = v11[4];
      v16 = v11[5];
      *a1 = *v11;
      a1[1] = v12;
      a1[2] = v13;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;

      return sub_1BA0CAC94(v9, MEMORY[0x1E69A3190]);
  }

  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  return sub_1BA0CAC94(v9, MEMORY[0x1E69A3190]);
}

void sub_1BA0CA25C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = [objc_allocWithZone(type metadata accessor for CloudSyncFlow()) init];
  sub_1BA2FAA50(a2);

  if (a3)
  {
    a3();
  }
}

uint64_t sub_1BA0CA2C8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = sub_1BA4A1318();
  v2 = v1;
  v3 = sub_1BA4A1318();
  v5 = v4;
  result = sub_1BA4A1318();
  qword_1EBBEB830 = v0;
  *algn_1EBBEB838 = v2;
  qword_1EBBEB840 = v3;
  unk_1EBBEB848 = v5;
  qword_1EBBEB850 = result;
  unk_1EBBEB858 = v7;
  return result;
}

uint64_t sub_1BA0CA424()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = sub_1BA4A1318();
  v2 = v1;
  result = sub_1BA4A1318();
  qword_1EBBEB860 = v0;
  *algn_1EBBEB868 = v2;
  qword_1EBBEB870 = result;
  unk_1EBBEB878 = v4;
  qword_1EBBEB880 = 0xD00000000000002DLL;
  unk_1EBBEB888 = 0x80000001BA4E9D20;
  return result;
}

uint64_t sub_1BA0CA558()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = sub_1BA4A1318();
  v2 = v1;
  v3 = sub_1BA4A1318();
  v5 = v4;
  result = sub_1BA4A1318();
  qword_1EBBEB890 = v0;
  *algn_1EBBEB898 = v2;
  qword_1EBBEB8A0 = v3;
  unk_1EBBEB8A8 = v5;
  qword_1EBBEB8B0 = result;
  unk_1EBBEB8B8 = v7;
  return result;
}

uint64_t sub_1BA0CA6B4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = sub_1BA4A1318();
  v2 = v1;
  v3 = sub_1BA4A1318();
  v5 = v4;
  result = sub_1BA4A1318();
  qword_1EBBEB8C0 = v0;
  *algn_1EBBEB8C8 = v2;
  qword_1EBBEB8D0 = v3;
  unk_1EBBEB8D8 = v5;
  qword_1EBBEB8E0 = result;
  unk_1EBBEB8E8 = v7;
  return result;
}

uint64_t (*sub_1BA0CA818(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BA0CAF60;
  }

  __break(1u);
  return result;
}

void (*sub_1BA0CA898(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BA04AB5C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BA0CA918(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1BA0CAF64;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA0CA998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA0CAA04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BA0CAA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA0CAABC()
{
  result = qword_1EBBEB8F8;
  if (!qword_1EBBEB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB8F8);
  }

  return result;
}

unint64_t sub_1BA0CAB14()
{
  result = qword_1EBBEB900;
  if (!qword_1EBBEB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB900);
  }

  return result;
}

void sub_1BA0CAB68()
{
  sub_1BA4A2918();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKSharingMessageDirection(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1BA0CAC08(uint64_t a1)
{
  sub_1B9F1B310(0, &qword_1EBBEB920, &qword_1EBBEB918, &protocol descriptor for SharingContactNameProviding, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0CAC94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA0CACF4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1BA0CAD24(uint64_t a1)
{
  v3 = *(sub_1BA4A2918() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA0CA25C(a1, v1 + v4, v5);
}

uint64_t (*sub_1BA0CADC4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1B9FCF2B8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BA0CAE44(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1BA0CAEC4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BA0CAECC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFAF2860](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1B9FCDD1C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA0CAF88()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1B9F0D08C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v25 = &v22 - v2;
  v3 = sub_1BA4A3FB8();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A3F18();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D08C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], v0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = sub_1BA31D5B4();
  MEMORY[0x1BFAF1F00](v15);
  v16 = sub_1BA4A4168();
  if ((*(*(v16 - 8) + 48))(v14, 1, v16))
  {
    v17 = MEMORY[0x1E69DC0D8];
    sub_1BA0CBC80(v14, v11, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v11);
    sub_1B9F43D14(v14, &qword_1EDC6B770, v17);
  }

  else
  {
    v18 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v14);
  }

  sub_1B9F0D08C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  v19 = v23;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBF28], v23);
  v20 = sub_1BA4A3F48();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v24 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
  return sub_1BA4A75F8();
}

id sub_1BA0CB4F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UninstalledAppSourcesCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0CB550()
{
  type metadata accessor for UninstalledAppSourcesCell();
  sub_1BA0CB5AC();
  return sub_1BA4A6808();
}

unint64_t sub_1BA0CB5AC()
{
  result = qword_1EBBE9E28;
  if (!qword_1EBBE9E28)
  {
    type metadata accessor for UninstalledAppSourcesCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E28);
  }

  return result;
}

uint64_t UninstalledAppsItem.__allocating_init(uninstalledAppSources:)(uint64_t a1)
{
  v2 = swift_allocObject();
  UninstalledAppsItem.init(uninstalledAppSources:)(a1);
  return v2;
}

uint64_t UninstalledAppsItem.init(uninstalledAppSources:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 32) = v2;
  *(v1 + 56) = 1;
  return v1;
}

uint64_t UninstalledAppsItem.deinit()
{

  return v0;
}

uint64_t UninstalledAppsItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1BA0CB83C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA0CBC80(v2 + v12, v37, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v37[3])
  {
    sub_1B9FCD918();
    type metadata accessor for UninstalledAppsItem();
    if (swift_dynamicCast())
    {
      v13 = v36;
      type metadata accessor for SourcesViewController();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = *(v13 + 64);
        v16 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName);
        v17 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI21SourcesViewController_profileName + 8);
        v18 = v14;
        *(objc_allocWithZone(type metadata accessor for UninstalledAppSourcesViewController()) + OBJC_IVAR____TtC18HealthExperienceUI35UninstalledAppSourcesViewController_uninstalledApps) = v15;
        LOBYTE(v37[0]) = 1;

        v19 = a1;

        v20 = SourcesViewController.init(sourceType:profileName:)(v37, v16, v17);
        [v18 showViewController:v20 sender:0];
      }

      else
      {
        sub_1BA4A3E48();
        v28 = sub_1BA4A3E88();
        v29 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v36 = v31;
          *v30 = 136446210;
          v37[0] = ObjectType;
          swift_getMetatypeMetadata();
          v32 = sub_1BA4A6808();
          v34 = sub_1B9F0B82C(v32, v33, &v36);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_1B9F07000, v28, v29, "[%{public}s] view coontroller was not a SourcesViewController", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x1BFAF43A0](v31, -1, -1);
          MEMORY[0x1BFAF43A0](v30, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v11, v5);
      }

      return;
    }
  }

  else
  {
    sub_1B9F43D14(v37, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3E48();
  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136446210;
    v37[0] = ObjectType;
    swift_getMetatypeMetadata();
    v25 = sub_1BA4A6808();
    v27 = sub_1B9F0B82C(v25, v26, &v36);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1B9F07000, v21, v22, "[%{public}s] item is not an UninstalledAppsItem", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BA0CBC80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0D08C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t PDFHeaderContentProvider.HeaderContent.nameString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PDFHeaderContentProvider.HeaderContent.dateOfBirthString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PDFHeaderContentProvider.HeaderContent.exportedDateString.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t static PDFHeaderContentProvider.headerContent(characteristics:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v5 = sub_1BA4A1318();
    v6 = v7;
  }

  v8 = sub_1BA0CBE90(a1);
  v10 = v9;
  result = sub_1BA0CC544();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = result;
  a2[5] = v12;
  return result;
}

uint64_t sub_1BA0CBE90(uint64_t a1)
{
  v2 = sub_1BA4A1648();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A1668();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1B9F1B448(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v42 - v8;
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v49 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F1B448(0, &qword_1EBBEA478, MEMORY[0x1E6968278], v6);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v42 - v14;
  v16 = sub_1BA4A1148();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PDFCharacteristicsProvider.Content();
  sub_1BA018958(a1 + *(v20 + 20), v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v21 = &qword_1EBBEA478;
    v22 = MEMORY[0x1E6968278];
    v23 = v15;
LABEL_5:
    sub_1BA0CC80C(v23, v21, v22);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_1BA4A1128();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v21 = &qword_1EDC6E440;
    v22 = MEMORY[0x1E6969530];
    v23 = v9;
    goto LABEL_5;
  }

  v25 = v10;
  v26 = *(v11 + 32);
  v27 = v49;
  v44 = v25;
  v26();
  v43 = v11;
  v28 = sub_1BA4A10F8();
  v29 = sub_1BA4A16B8();
  v30 = [v28 hk:v29 ageWithCurrentDate:?];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v42[1] = sub_1BA4A1318();
  v31 = v45;
  sub_1BA4A1658();
  v32 = v46;
  sub_1BA4A1638();
  v42[0] = sub_1BA4A1708();
  v34 = v33;
  (*(v50 + 8))(v32, v51);
  (*(v47 + 8))(v31, v48);
  v52 = v30;
  sub_1BA0CC87C();
  v35 = sub_1BA4A7BD8();
  v37 = v36;
  sub_1B9F1B448(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BA4B5460;
  v39 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v40 = sub_1B9F1BE20();
  *(v38 + 32) = v42[0];
  *(v38 + 40) = v34;
  *(v38 + 96) = v39;
  *(v38 + 104) = v40;
  *(v38 + 64) = v40;
  *(v38 + 72) = v35;
  *(v38 + 80) = v37;
  v41 = sub_1BA4A67D8();

  (*(v43 + 8))(v27, v44);
  (*(v17 + 8))(v19, v16);
  return v41;
}

uint64_t sub_1BA0CC544()
{
  v0 = sub_1BA4A1648();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A1668();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  type metadata accessor for PDFCharacteristicsProvider.Content();
  sub_1BA4A1658();
  sub_1BA4A1638();
  v8 = sub_1BA4A1708();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  sub_1B9F1B448(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1B9F1BE20();
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  v12 = sub_1BA4A67D8();

  return v12;
}

uint64_t sub_1BA0CC80C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F1B448(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BA0CC87C()
{
  result = qword_1EDC6B6A0;
  if (!qword_1EDC6B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B6A0);
  }

  return result;
}

uint64_t PDFThreeStringSingleLineHStack.Layout.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

__n128 PDFThreeStringSingleLineHStack.init(left:middle:right:layout:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = *(a1 + 32);
  v7 = *(a2 + 16);
  *(a5 + 40) = *a2;
  *(a5 + 56) = v7;
  *(a5 + 72) = *(a2 + 32);
  result = *a3;
  v9 = *(a3 + 16);
  *(a5 + 80) = *a3;
  *(a5 + 96) = v9;
  *(a5 + 112) = *(a3 + 32);
  *(a5 + 120) = v5;
  return result;
}

double PDFThreeStringSingleLineHStack.render(context:document:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1BA0CD0A8(v2 + 40, v71);
  if (*(a2 + 96))
  {
    v6 = v72;
  }

  else
  {
    v6 = v70;
  }

  if (*(a2 + 96))
  {
    v7 = v70;
  }

  else
  {
    v7 = v72;
  }

  sub_1BA0CD0A8(v3 + 80, v6);
  sub_1BA0CD0A8(v3, v7);
  sub_1BA0CD0A8(v72, &v65);
  if (v66)
  {
    sub_1B9F25598(&v65, v67);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v8 = sub_1BA20F244(a2);
    v9 = v68;
    v10 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    (*(v10 + 16))(a1, v8, v9, v10);

    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_1BA0CD164(&v65);
  }

  sub_1BA0CD0A8(v70, &v65);
  if (v66)
  {
    sub_1B9F25598(&v65, v67);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v11 = sub_1BA20F244(a2);
    v73.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v73);
    v74.origin.x = sub_1BA0CCF24(2, v11);
    v13 = Width - CGRectGetWidth(v74);
    v14 = *(v11 + 168);
    v15 = *(v11 + 176);
    v16 = *(v11 + 184);
    v17 = *(v11 + 192);
    v75.origin.x = v14;
    v75.origin.y = v15;
    v75.size.width = v16;
    v75.size.height = v17;
    v18 = v13 + CGRectGetMinX(v75);
    v76.origin.x = v14;
    v76.origin.y = v15;
    v76.size.width = v16;
    v76.size.height = v17;
    v19 = CGRectGetMinY(v76) + 0.0;
    v77.origin.x = v14;
    v77.origin.y = v15;
    v77.size.width = v16;
    v77.size.height = v17;
    v20 = CGRectGetWidth(v77) - v13;
    v78.origin.x = v14;
    v78.origin.y = v15;
    v78.size.width = v16;
    v78.size.height = v17;
    Height = CGRectGetHeight(v78);
    *(v11 + 168) = v18;
    *(v11 + 176) = v19;
    *(v11 + 184) = v20;
    *(v11 + 192) = Height;
    *(v11 + 200) = 0;
    v22 = v68;
    v23 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    (*(v23 + 16))(a1, v11, v22, v23);

    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_1BA0CD164(&v65);
  }

  sub_1BA0CD0A8(v71, &v65);
  if (v66)
  {
    sub_1B9F25598(&v65, v67);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v24 = sub_1BA20F244(a2);
    if (*(v3 + 120))
    {
      v79.origin.x = PDFBuilder.Document.drawingContext.getter();
      v25 = CGRectGetWidth(v79) * 0.5;
    }

    else
    {
      v80.origin.x = sub_1BA0CCF24(0, v24);
      v27 = CGRectGetWidth(v80);
      v81.origin.x = sub_1BA0CCF24(2, v24);
      v28 = CGRectGetWidth(v81);
      v82.origin.x = PDFBuilder.Document.drawingContext.getter();
      v25 = v27 + (CGRectGetWidth(v82) - v27 - v28) * 0.5;
    }

    v83.origin.x = sub_1BA0CCF24(1, v24);
    v29 = v25 + CGRectGetWidth(v83) * -0.5;
    v30 = *(v24 + 168);
    v31 = *(v24 + 176);
    v32 = *(v24 + 184);
    v33 = *(v24 + 192);
    v84.origin.x = v30;
    v84.origin.y = v31;
    v84.size.width = v32;
    v84.size.height = v33;
    v34 = v29 + CGRectGetMinX(v84);
    v85.origin.x = v30;
    v85.origin.y = v31;
    v85.size.width = v32;
    v85.size.height = v33;
    v35 = CGRectGetMinY(v85) + 0.0;
    v86.origin.x = v30;
    v86.origin.y = v31;
    v86.size.width = v32;
    v86.size.height = v33;
    v36 = CGRectGetWidth(v86) - v29;
    v87.origin.x = v30;
    v87.origin.y = v31;
    v87.size.width = v32;
    v87.size.height = v33;
    v37 = CGRectGetHeight(v87);
    *(v24 + 168) = v34;
    *(v24 + 176) = v35;
    *(v24 + 184) = v36;
    *(v24 + 192) = v37;
    *(v24 + 200) = 0;
    v38 = v68;
    v39 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    (*(v39 + 16))(a1, v24, v38, v39);

    v26 = __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    v26 = sub_1BA0CD164(&v65);
  }

  MEMORY[0x1EEE9AC00](v26);
  v64[2] = v3;
  v64[3] = a2;
  v40 = sub_1BA24A9C8(sub_1BA0CD1C0, v64, &unk_1F37FC448);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = *(v40 + 32);
    v43 = v41 - 1;
    if (v43)
    {
      v44 = (v40 + 40);
      do
      {
        v45 = *v44++;
        v46 = v45;
        if (v42 < v45)
        {
          v42 = v46;
        }

        --v43;
      }

      while (v43);
    }

    v47 = PDFBuilder.Document.drawingContext.getter();
    v49 = v48;
    v50 = CGRectGetWidth(*(a2 + 168));
  }

  else
  {

    v47 = 0.0;
    v49 = 0;
    v50 = 0.0;
    v42 = 0.0;
  }

  v51 = v47;
  v52 = v49;
  v53 = v42;
  v54 = CGRectGetHeight(*(&v50 - 2));
  v88.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v88.origin.x;
  y = v88.origin.y;
  v57 = v88.size.width;
  v58 = v88.size.height;
  v59 = CGRectGetMinX(v88) + 0.0;
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = v57;
  v89.size.height = v58;
  v60 = v54 + CGRectGetMinY(v89);
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = v57;
  v90.size.height = v58;
  v61 = CGRectGetWidth(v90);
  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = v57;
  v91.size.height = v58;
  v62 = CGRectGetHeight(v91);
  sub_1BA0CD164(v70);
  sub_1BA0CD164(v71);
  sub_1BA0CD164(v72);
  result = v62 - v54;
  *(a2 + 168) = v59;
  *(a2 + 176) = v60;
  *(a2 + 184) = v61;
  *(a2 + 192) = v62 - v54;
  *(a2 + 200) = 0;
  return result;
}

double sub_1BA0CCF24(char a1, uint64_t a2)
{
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v5 = sub_1BA20F244(a2);
  v6 = *(a2 + 96);
  v7 = *(v5 + 48);
  *(v5 + 168) = *(v5 + 32);
  *(v5 + 184) = v7;
  *(v5 + 200) = 0;
  if (v6 == 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_8:
      v8 = v2;
      goto LABEL_10;
    }

    if (a1 == 1)
    {
LABEL_7:
      v8 = v2 + 40;
      goto LABEL_10;
    }
  }

  v8 = v2 + 80;
LABEL_10:
  sub_1BA0CD0A8(v8, v13);
  v9 = v14;
  if (v14)
  {
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v11 = (*(v10 + 24))(v5, v9, v10);

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {

    sub_1BA0CD164(v13);
    return 0.0;
  }

  return v11;
}

uint64_t sub_1BA0CD0A8(uint64_t a1, uint64_t a2)
{
  sub_1BA0CD10C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA0CD10C()
{
  if (!qword_1EBBEB928)
  {
    sub_1BA0A186C();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB928);
    }
  }
}

uint64_t sub_1BA0CD164(uint64_t a1)
{
  sub_1BA0CD10C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0CD1D8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BA0CD2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double sub_1BA0CD348(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  v13[3] = a1;
  v4 = sub_1BA24A9C8(a2, v13, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 32);
    v7 = v5 - 1;
    if (v7)
    {
      v8 = (v4 + 40);
      do
      {
        v9 = *v8++;
        v10 = v9;
        if (v6 < v9)
        {
          v6 = v10;
        }

        --v7;
      }

      while (v7);
    }

    v11 = PDFBuilder.Document.drawingContext.getter();
    CGRectGetWidth(*(a1 + 168));
  }

  else
  {

    return 0.0;
  }

  return v11;
}

void sub_1BA0CD458(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, char *), uint64_t a5)
{
  v9[3] = a1;
  v6 = sub_1BA24A9C8(a4, v9, a5);
  sub_1BA0CD2E4(v6);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    PDFBuilder.Document.drawingContext.getter();
    CGRectGetWidth(*(a1 + 168));
  }
}

unint64_t sub_1BA0CD510()
{
  result = qword_1EBBEB930;
  if (!qword_1EBBEB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB930);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI13PDFRenderable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BA0CD5A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 121))
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

uint64_t sub_1BA0CD604(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1BA0CD7A0(uint64_t a1, void (*a2)(uint64_t, unint64_t))
{
  sub_1B9F0A534(a1, &v14);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v3 = [v13 userData];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1BA4A1608();
      v7 = v6;

      a2(v5, v7);
      sub_1B9F2BB4C(v5, v7);

      return;
    }

    sub_1BA4A1B08();
    sub_1BA4A1AF8();
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v11 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v11);

    v10 = 0xD000000000000023;
    v9 = 0x80000001BA4E5070;
  }

  else
  {
    sub_1BA4A1B08();
    sub_1BA4A1AF8();
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v8 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v8);

    v9 = 0x80000001BA4E5050;
    v10 = 0xD00000000000001ALL;
  }

  MEMORY[0x1BFAF1350](v10, v9);
  sub_1BA4A7FB8();

  sub_1BA4A1AD8();
  __break(1u);
  sub_1BA4A1B08();
  sub_1BA4A1AF8();
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v12 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v12);

  MEMORY[0x1BFAF1350](0xD000000000000027, 0x80000001BA4E50A0);
  sub_1B9F0D950(0, &qword_1EDC6E310);
  sub_1BA4A7FB8();

  sub_1BA4A1AD8();
  __break(1u);
}

uint64_t sub_1BA0CDA8C(void *a1, char *a2)
{
  v40 = a2;
  v37 = a1;
  sub_1BA071250();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  v15 = *(v8 + 16);
  v38 = v13;
  v15(v13, a2, v7);
  type metadata accessor for SharedProfileHeaderDataSource();
  v16 = swift_allocObject();
  v39 = v10;
  v15(v10, v13, v7);
  v36 = sub_1BA19BAD0();
  *(v16 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v16 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v17 = (v16 + qword_1EDC84CF0);
  *v17 = sub_1BA0CEEA0;
  v17[1] = 0;
  v18 = (v16 + qword_1EDC84CE0);
  sub_1BA0CF80C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *v18 = 0;
  v18[1] = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5470;
  v20 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v21 = sub_1BA4A6758();
  v22 = [v20 initWithKey:v21 ascending:1 selector:sel_localizedStandardCompare_];

  *(v19 + 32) = v22;
  v23 = v37;
  v24 = sub_1BA4A7558();

  sub_1B9F126E0();
  v26 = objc_allocWithZone(v25);
  v27 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v24);
  v28 = sub_1BA4A33C8();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  sub_1BA0CF644();
  swift_allocObject();
  *(v16 + qword_1EDC6A560) = sub_1BA4A4DF8();
  v29 = v27;
  v30 = sub_1B9F17A68(v29, sub_1BA0CF71C, v14, 0);

  v31 = *(*v30 + 760);

  v31(v32);
  sub_1BA4A4DA8();

  v33 = *(v8 + 8);
  v33(v38, v7);
  sub_1BA013068(v6);
  v33(v39, v7);
  v33(v40, v7);
  return v30;
}

uint64_t Publisher<>.asProtocolPublisher.getter()
{
  sub_1BA0CF6B4(255, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  v0 = sub_1BA4A4B78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1BA4A4FE8();
  swift_getWitnessTable();
  v4 = sub_1BA4A4F98();
  (*(v1 + 8))(v3, v0);
  return v4;
}

{
  sub_1B9F0CF6C(255, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  v0 = sub_1BA4A4B78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1BA4A4FE8();
  swift_getWitnessTable();
  v4 = sub_1BA4A4F98();
  (*(v1 + 8))(v3, v0);
  return v4;
}

{
  sub_1B9F40D10(255, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  v0 = sub_1BA4A4B78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1BA4A4FE8();
  swift_getWitnessTable();
  v4 = sub_1BA4A4F98();
  (*(v1 + 8))(v3, v0);
  return v4;
}

{
  sub_1BA2B9364(255, &qword_1EDC6E1E0, sub_1BA0B43BC, MEMORY[0x1E69E6720]);
  v0 = sub_1BA4A4B78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1BA4A4FE8();
  swift_getWitnessTable();
  v4 = sub_1BA4A4F98();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1BA0CE080(uint64_t a1)
{
  v2 = sub_1BA4A33C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0CD7A0(a1, MEMORY[0x1E69A3408]);
  v6 = sub_1BA0CEF64(v5);
  sub_1BA4A33A8();
  sub_1BA4A3398();
  sub_1BA4A79E8();
  v7 = sub_1BA4A2E48();
  swift_allocObject();
  v8 = sub_1BA4A2E38();
  v9 = v6;
  v10 = MEMORY[0x1BFAEDD40]();
  v12 = v11;
  v13 = type metadata accessor for ProfileContactOptionsItem();
  v14 = objc_allocWithZone(v13);
  v15 = sub_1BA1AAA68(v9, v10, v12, &unk_1F37FC698);

  sub_1BA0CF6B4(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B9FD0;
  v17 = MEMORY[0x1E69A3330];
  *(v16 + 56) = v7;
  *(v16 + 64) = v17;
  *(v16 + 32) = v8;
  v18 = MEMORY[0x1E69A3420];
  *(v16 + 96) = v2;
  *(v16 + 104) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 72));
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
  *(v16 + 136) = v13;
  *(v16 + 144) = sub_1B9F253E8(&qword_1EBBED6A0, type metadata accessor for ProfileContactOptionsItem);
  *(v16 + 112) = v15;

  (*(v3 + 8))(v5, v2);
  return v16;
}

void sub_1BA0CE320()
{
  sub_1B9FF5128();
  sub_1B9FF515C();
  sub_1B9FF5190();
}

uint64_t sub_1BA0CE34C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA071250();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A33C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0CF958(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1BA013068(v6);
    v12 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1BA0CF80C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5470;
    v14 = *MEMORY[0x1E695C400];
    *(v13 + 32) = *MEMORY[0x1E695C400];
    sub_1B9F0ADF8(0, &qword_1EDC5E540);
    v15 = v14;
    v16 = sub_1BA4A7068();
    v19[3] = v7;
    v19[4] = MEMORY[0x1E69A3410];
    v19[5] = MEMORY[0x1E69A3418];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
    v18 = sub_1BA4A7018();

    __swift_destroy_boxed_opaque_existential_1(v19);
    sub_1BA4A3328();
    sub_1BA4A79E8();
    sub_1BA4A2E48();
    swift_allocObject();
    v12 = sub_1BA4A2E38();

    result = (*(v8 + 8))(v10, v7);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1BA0CE620@<X0>(uint64_t a1@<X8>)
{
  sub_1BA071250();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v56 - v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - v12;
  v14 = sub_1BA1F99B0(v11);
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v62 = v14 + 32;
    v17 = 48;
    v18 = v16;
    while (!*(*(v14 + v17) + 16))
    {
      v17 += 48;
      if (!--v18)
      {
        goto LABEL_5;
      }
    }

    v56 = v7;
    v57 = v4;
    v58 = v13;
    v59 = a1;
    v22 = 0;
    v23 = 0;
    v24 = 48;
    do
    {
      if (*(*(v14 + v24) + 16))
      {

        v25 = 0;
        v66 = v15;
        v61 = v16;
        do
        {
          v26 = v23 >= v16;
          if (v23 >= v16)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          if (v22)
          {
            goto LABEL_44;
          }

          v27 = v62 + 48 * v23;
          v30 = *(v27 + 16);
          v29 = (v27 + 16);
          v28 = v30;
          v31 = *(v30 + 16);
          v26 = v25 >= v31;
          if (v25 >= v31)
          {
            goto LABEL_40;
          }

          v64 = v25;
          sub_1B9F0A534(v28 + 40 * v25 + 32, v68);
          sub_1B9F0A534(v68, v67);
          v32 = sub_1B9F0D950(0, &qword_1EDC6AD50);
          v33 = sub_1BA4A33C8();
          v34 = v63;
          v60 = v32;
          v35 = swift_dynamicCast();
          v36 = *(v33 - 8);
          v37 = *(v36 + 56);
          v37(v34, v35 ^ 1u, 1, v33);
          __swift_destroy_boxed_opaque_existential_1(v68);
          v7 = (v36 + 48);
          v38 = *(v36 + 48);
          LODWORD(v65) = v38(v34, 1, v33);
          sub_1BA013068(v34);
          v39 = *(v66 + 16);
          if (v65 != 1)
          {
            v63 = (v33 - 8);
            v65 = v38;
            if (v23 >= v39)
            {
              goto LABEL_48;
            }

            v45 = v33;
            v46 = *v29;
            v47 = *(*v29 + 16);
            v26 = v64 >= v47;
            v49 = v56;
            v48 = v57;
            if (v64 < v47)
            {
              v50 = v45;
              sub_1B9F0A534(v46 + 40 * v64 + 32, v68);
              sub_1B9F0A534(v68, v67);
              v51 = swift_dynamicCast();
              v37(v49, v51 ^ 1u, 1, v45);
              __swift_destroy_boxed_opaque_existential_1(v68);
              sub_1BA0CF958(v49, v48);
              v52 = v65(v48, 1, v45);
              v26 = v52 != 0;
              if (v52 != 1)
              {
                v7 = v58;
                (*(v36 + 32))(v58, v48, v45);
                sub_1BA013068(v49);
                v37(v7, 0, 1, v45);
                goto LABEL_37;
              }

              goto LABEL_45;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v26 = v23 >= v39;
          v16 = v61;
          if (v23 >= v39)
          {
            goto LABEL_41;
          }

          v25 = v64 + 1;
          if (v64 + 1 == *(*v29 + 16))
          {
            ++v23;
            while (1)
            {
              v22 = v23 == v39;
              if (v23 == v39)
              {
                v25 = 0;
                v23 = v39;
                goto LABEL_20;
              }

              sub_1BA0CF724();
              sub_1BA0CF8C4();
              v40 = sub_1BA1F9630(v68, v23, v66, sub_1BA0CECC0);
              v42 = *v41;

              (v40)(v68, 0);
              v43 = *(v42 + 16);

              if (v43)
              {
                break;
              }

              v26 = __CFADD__(v23, 1);
              if (__OFADD__(v23++, 1))
              {
                goto LABEL_43;
              }
            }

            v25 = 0;
          }

          else
          {
            v22 = 0;
          }

LABEL_20:
          ;
        }

        while (v23 != v16 || !v22);
        v53 = *(v66 + 16);
        v26 = v16 >= v53;
        if (v16 == v53)
        {
          goto LABEL_36;
        }

LABEL_46:
        if (!v26)
        {
          __break(1u);
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      ++v23;
      v24 += 48;
      v22 = v16 == v23;
    }

    while (v16 != v23);

LABEL_36:
    v50 = sub_1BA4A33C8();
    v7 = v58;
    (*(*(v50 - 8) + 56))(v58, 1, 1, v50);
LABEL_37:
    v54 = v59;

    sub_1BA4A33C8();
    v55 = *(v50 - 8);
    if ((*(v55 + 48))(v7, 1, v50) != 1)
    {

      (*(v55 + 32))(v54, v7, v50);
      return (*(v55 + 56))(v54, 0, 1, v50);
    }

LABEL_49:
    sub_1BA013068(v7);
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
LABEL_5:

    v19 = sub_1BA4A33C8();
    v20 = *(*(v19 - 8) + 56);

    return v20(a1, 1, 1, v19);
  }

  return result;
}

uint64_t sub_1BA0CECCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1BA0CF1F4(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E30C(a5, a6);
  return v12;
}

uint64_t sub_1BA0CED5C()
{
  _s18HealthExperienceUI0A31KitProfileInformationDataSourceCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA0CEDB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = sub_1BA4A2E48();
    v5 = MEMORY[0x1E69A3328];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v3;
  a2[3] = v4;
  a2[4] = v5;
}

uint64_t type metadata accessor for SharedProfileHeaderDataSource()
{
  result = qword_1EBBEB938;
  if (!qword_1EBBEB938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA0CEEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  sub_1BA0CF6B4(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  *(v9 + 56) = a3(0);
  *(v9 + 64) = a4;
  __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  sub_1BA0CD7A0(a1, a5);
  return v9;
}

uint64_t sub_1BA0CEF64(uint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  v2 = [objc_opt_self() descriptorForRequiredKeys];
  MEMORY[0x1BFAF1510]();
  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  v3 = sub_1BA4A7068();
  v4 = sub_1BA4A33C8();
  v8[3] = v4;
  v8[4] = MEMORY[0x1E69A3410];
  v8[5] = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  v6 = sub_1BA4A7018();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

id sub_1BA0CF0B8()
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v16[4] = xmmword_1EDC6D2B0;
  v16[5] = *&qword_1EDC6D2C0;
  v16[6] = xmmword_1EDC6D2D0;
  v16[7] = unk_1EDC6D2E0;
  v16[0] = xmmword_1EDC6D270;
  v16[1] = *&qword_1EDC6D280;
  v16[2] = xmmword_1EDC6D290;
  v16[3] = *&qword_1EDC6D2A0;
  v7 = *(&xmmword_1EDC6D270 + 8);
  v0 = *algn_1EDC6D288;
  v1 = xmmword_1EDC6D290;
  v2 = *&qword_1EDC6D2A0;
  v4 = xmmword_1EDC6D2B0;
  v3 = qword_1EDC6D2C0;
  v12 = unk_1EDC6D2C8;
  v13 = *(&xmmword_1EDC6D2D0 + 8);
  v14 = qword_1EDC6D2E8;
  sub_1B9F1D9A4(v16, v15);
  sub_1B9F1DA18(v0, v1, *(&v1 + 1), v2);
  sub_1B9F1DA18(*(&v2 + 1), v4, *(&v4 + 1), v3);
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v6 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  return sub_1B9F293A8(&v6);
}

uint64_t sub_1BA0CF1F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a2;
  v13 = *v7;
  v43 = a1;
  v44 = v13;
  sub_1BA071250();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1BA4A1798();
  v17 = *(v45 - 8);
  v18 = MEMORY[0x1EEE9AC00](v45);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a2, v18);
  v42 = sub_1BA19BAD0();
  *(v7 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v7 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v21 = (v7 + qword_1EDC84CE0);
  *v21 = a3;
  v21[1] = a4;
  v22 = (v7 + qword_1EDC84CF0);
  *v22 = a5;
  v22[1] = a6;
  sub_1BA0CF80C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B5470;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  sub_1B9F0F1B8(a5);
  v25 = sub_1BA4A6758();
  v26 = [v24 initWithKey:v25 ascending:1 selector:sel_localizedStandardCompare_];

  *(v23 + 32) = v26;
  v27 = v43;
  v28 = sub_1BA4A7558();

  sub_1B9F126E0();
  v30 = objc_allocWithZone(v29);
  v31 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v28);
  v32 = sub_1BA4A33C8();
  (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
  sub_1BA0CF644();
  swift_allocObject();
  *(v7 + qword_1EDC6A560) = sub_1BA4A4DF8();
  v33 = swift_allocObject();
  *(v33 + 16) = v44;
  v34 = v31;
  v35 = sub_1B9F17A68(v34, sub_1BA0CF6AC, v33, 0);

  v36 = *(*v35 + 760);

  v36(v37);
  sub_1BA4A4DA8();

  v38 = *(v17 + 8);
  v39 = v45;
  v38(v46, v45);
  sub_1BA013068(v16);
  v38(v20, v39);
  return v35;
}

void sub_1BA0CF644()
{
  if (!qword_1EBBEE020)
  {
    sub_1BA071250();
    v0 = sub_1BA4A4DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE020);
    }
  }
}

void sub_1BA0CF6B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA0CF724()
{
  if (!qword_1EBBEB948)
  {
    sub_1BA0CF80C(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    sub_1BA0CF6B4(255, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
    sub_1BA0CF85C(&qword_1EBBEB950);
    v0 = sub_1BA4A7F98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB948);
    }
  }
}

void sub_1BA0CF80C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA0CF85C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BA0CF80C(255, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA0CF8C4()
{
  result = qword_1EBBEB958;
  if (!qword_1EBBEB958)
  {
    sub_1BA0CF724();
    sub_1BA0CF85C(&qword_1EBBEB960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB958);
  }

  return result;
}

uint64_t sub_1BA0CF958(uint64_t a1, uint64_t a2)
{
  sub_1BA071250();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA0CF9BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAccessibilityIdentifier_];
}

void *sub_1BA0CFA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = (*(a3 + 80))(a2, a3);
  if (result)
  {
    (*(v7 + 24))(&v9, a1, *result);

    v8 = v9;
  }

  else
  {
    v8 = 2;
  }

  *a4 = v8;
  return result;
}

void *sub_1BA0CFC4C(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 24))();
  result = (*(a2 + 80))(a1, a2);
  if (result)
  {
    (*(v5 + 40))(*result);
  }

  return result;
}

void *sub_1BA0CFD14(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 80))();
  if (result)
  {
    v4 = (*(v3 + 16))(*result);

    return (v4 & 1);
  }

  return result;
}

uint64_t sub_1BA0CFD98(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 80))();
  if (!v2)
  {
    return 2;
  }

  v4 = (*(v3 + 32))(*v2);

  return v4;
}

uint64_t SwiftChartPoint.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SwiftChartPoint.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SwiftChartPoint.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwiftChartPoint() + 20);
  v4 = sub_1BA4A0FA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwiftChartPoint.dateInterval.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwiftChartPoint() + 20);
  v4 = sub_1BA4A0FA8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwiftChartPoint.value.setter(double a1)
{
  result = type metadata accessor for SwiftChartPoint();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SwiftChartPoint.value2.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SwiftChartPoint();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SwiftChartPoint.init(dateInterval:value:value2:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v14 = type metadata accessor for SwiftChartPoint();
  v15 = &a6[v14[7]];
  v16 = v14[5];
  v17 = sub_1BA4A0FA8();
  result = (*(*(v17 - 8) + 32))(&a6[v16], a1, v17);
  *&a6[v14[6]] = a7;
  *v15 = a2;
  v15[8] = a3 & 1;
  *a6 = a4;
  *(a6 + 1) = a5;
  return result;
}

uint64_t static SwiftChartPoint.daily(dateInterval:value:value2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>, double a5@<D0>)
{
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SwiftChartPoint();
  v15 = v14[5];
  v16 = sub_1BA4A0FA8();
  (*(*(v16 - 8) + 16))(&a4[v15], a1, v16);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1BA4A0F88();
  sub_1BA4A1628();
  (*(v11 + 8))(v13, v10);
  result = sub_1BA4A6CF8();
  v18 = v22;
  v19 = v23;
  v20 = v14[7];
  *&a4[v14[6]] = a5;
  v21 = &a4[v20];
  *v21 = a2;
  v21[8] = a3 & 1;
  *a4 = v18;
  *(a4 + 1) = v19;
  return result;
}

uint64_t static SwiftChartPoint.unique(dateInterval:value:value2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>, double a5@<D0>)
{
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SwiftChartPoint();
  v15 = v14[5];
  v16 = sub_1BA4A0FA8();
  (*(*(v16 - 8) + 16))(&a4[v15], a1, v16);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1BA4A0F88();
  sub_1BA4A1628();
  (*(v11 + 8))(v13, v10);
  sub_1BA4A6CF8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A6CF8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v22 = a2;
  v23 = a3 & 1;
  sub_1B9F482E4();
  v17 = sub_1BA4A7A88();
  MEMORY[0x1BFAF1350](v17);

  v19 = v24;
  v20 = v25;
  v21 = &a4[v14[7]];
  *&a4[v14[6]] = a5;
  *v21 = a2;
  v21[8] = a3 & 1;
  *a4 = v19;
  *(a4 + 1) = v20;
  return result;
}

uint64_t SwiftChartPoint.init(diagramStyle:dateInterval:value:value2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>, double a6@<D0>)
{
  v28 = a4;
  v27 = a3;
  v10 = sub_1BA4A1728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SwiftChartPoint();
  v26 = v14[7];
  v15 = v14[5];
  v16 = sub_1BA4A0FA8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&a5[v15], a2, v16);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1BA4A0F88();
  sub_1BA4A1628();
  (*(v11 + 8))(v13, v10);
  sub_1BA4A6CF8();
  if (a1 == 9)
  {
    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    sub_1BA4A6CF8();
    MEMORY[0x1BFAF1350](95, 0xE100000000000000);
    v18 = v27;
    v29 = v27;
    v19 = v28;
    v30 = v28 & 1;
    sub_1B9F482E4();
    v20 = sub_1BA4A7A88();
    MEMORY[0x1BFAF1350](v20);

    v21 = v31;
    v22 = v32;
  }

  else
  {
    v21 = v31;
    v22 = v32;
    v19 = v28;
    v18 = v27;
  }

  result = (*(v17 + 8))(a2, v16);
  *&a5[v14[6]] = a6;
  v24 = &a5[v26];
  *v24 = v18;
  v24[8] = v19 & 1;
  *a5 = v21;
  *(a5 + 1) = v22;
  return result;
}

uint64_t static SwiftChartPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwiftChartPoint();
  if ((sub_1BA4A0F38() & 1) == 0 || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = a2 + v5;
  result = *(v8 + 8);
  if ((v7 & 1) == 0)
  {
    return (*v6 == *v8) & ~result;
  }

  return result;
}

uint64_t sub_1BA0D08E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA0D0CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA0D0910(uint64_t a1)
{
  v2 = sub_1B9F79C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA0D094C(uint64_t a1)
{
  v2 = sub_1B9F79C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SwiftChartPoint.encode(to:)(void *a1)
{
  sub_1B9F79BD0(0, &qword_1EDC5DDD0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F79C98();
  sub_1BA4A8548();
  v9[15] = 0;
  sub_1BA4A8248();
  if (!v1)
  {
    type metadata accessor for SwiftChartPoint();
    v9[14] = 1;
    sub_1BA4A0FA8();
    sub_1B9F79F10(&qword_1EDC6AF18);
    sub_1BA4A8288();
    v9[13] = 2;
    sub_1BA4A8268();
    v9[12] = 3;
    sub_1BA4A8218();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA0D0BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1BA4A0F38() & 1) == 0 || *(a1 + *(a3 + 24)) != *(a2 + *(a3 + 24)))
  {
    return 0;
  }

  v6 = *(a3 + 28);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = a2 + v6;
  result = *(v9 + 8);
  if ((v8 & 1) == 0)
  {
    return (*v7 == *v9) & ~result;
  }

  return result;
}

unint64_t sub_1BA0D0C80()
{
  result = qword_1EBBEB968;
  if (!qword_1EBBEB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB968);
  }

  return result;
}

uint64_t sub_1BA0D0CD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3265756C6176 && a2 == 0xE600000000000000)
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

double static ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.defaultConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 16.0;
  *a1 = xmmword_1BA4BD220;
  return result;
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.init(contentPrimaryText:contentPrimarySubheaderText:contentSecondaryText:contentActionText:imageRepresentation:padding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v12 = *a11;
  v13 = a11[1];
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v14 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  result = sub_1BA0D6768(a10, a9 + *(v14 + 32), sub_1BA0D0F10);
  v16 = (a9 + *(v14 + 36));
  *v16 = v12;
  v16[1] = v13;
  return result;
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.init(imageBottomPadding:imageHeight:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double *a5@<X8>)
{
  v5 = *&result;
  if (a2)
  {
    v5 = 16.0;
  }

  if (a4)
  {
    a3 = 80.0;
  }

  *a5 = v5;
  a5[1] = a3;
  return result;
}

uint64_t sub_1BA0D0F44()
{
  if (*v0)
  {
    return 0x6965486567616D69;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1BA0D0F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001BA4E9FD0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6965486567616D69 && a2 == 0xEB00000000746867)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1BA0D1078(uint64_t a1)
{
  v2 = sub_1BA0D12B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA0D10B4(uint64_t a1)
{
  v2 = sub_1BA0D12B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.encode(to:)(void *a1)
{
  sub_1BA0D1EF0(0, &qword_1EBBEB970, sub_1BA0D12B0, &type metadata for ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v10 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA0D12B0();
  sub_1BA4A8548();
  v14 = v10;
  v13 = 0;
  sub_1BA013730();
  sub_1BA4A8288();
  if (!v2)
  {
    v14 = v9;
    v13 = 1;
    sub_1BA4A8288();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BA0D12B0()
{
  result = qword_1EBBEB978;
  if (!qword_1EBBEB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB978);
  }

  return result;
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_1BA0D1EF0(0, &qword_1EBBEB980, sub_1BA0D12B0, &type metadata for ProminentMessageWithActionTileViewWithImage.ViewModel.Padding.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA0D12B0();
  sub_1BA4A8528();
  if (!v2)
  {
    v9 = v6;
    v10 = v15;
    v16 = 0;
    sub_1BA013994();
    sub_1BA4A81C8();
    v11 = v17;
    v16 = 1;
    sub_1BA4A81C8();
    (*(v9 + 8))(v8, v5);
    v13 = v17;
    *v10 = v11;
    v10[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BA0D1548()
{
  v1 = *v0;
  v2 = 0x676E6964646170;
  if (v1 == 4)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0xD00000000000001BLL;
  if (v1 != 1)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA0D1608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA0D5510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA0D1630(uint64_t a1)
{
  v2 = sub_1BA0D1940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA0D166C(uint64_t a1)
{
  v2 = sub_1BA0D1940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1BA0D1EF0(0, &qword_1EBBEB988, sub_1BA0D1940, &type metadata for ProminentMessageWithActionTileViewWithImage.ViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA0D1940();
  sub_1BA4A8548();
  LOBYTE(v12) = 0;
  sub_1BA4A8248();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1BA4A8208();
    LOBYTE(v12) = 2;
    sub_1BA4A8208();
    LOBYTE(v12) = 3;
    sub_1BA4A8208();
    v11 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
    LOBYTE(v12) = 4;
    sub_1BA4A2BF8();
    sub_1B9F20854(&qword_1EDC6AD68, MEMORY[0x1E69A32A0]);
    sub_1BA4A8238();
    v12 = *(v3 + *(v11 + 36));
    v13 = 5;
    sub_1BA0D1994();
    sub_1BA4A8288();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1BA0D1940()
{
  result = qword_1EBBEB990;
  if (!qword_1EBBEB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB990);
  }

  return result;
}

unint64_t sub_1BA0D1994()
{
  result = qword_1EBBEB998;
  if (!qword_1EBBEB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB998);
  }

  return result;
}

uint64_t ProminentMessageWithActionTileViewWithImage.ViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D1EF0(0, &qword_1EBBEB9A0, sub_1BA0D1940, &type metadata for ProminentMessageWithActionTileViewWithImage.ViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v34 = v6;
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1BA0D1940();
  v13 = v8;
  v14 = v35;
  sub_1BA4A8528();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v15 = v32;
  v16 = v33;
  LOBYTE(v37) = 0;
  v17 = v34;
  v19 = v11;
  *v11 = sub_1BA4A8188();
  v11[1] = v20;
  LOBYTE(v37) = 1;
  v11[2] = sub_1BA4A8138();
  v11[3] = v21;
  LOBYTE(v37) = 2;
  v11[4] = sub_1BA4A8138();
  v11[5] = v22;
  LOBYTE(v37) = 3;
  v31 = 0;
  v23 = sub_1BA4A8138();
  v35 = 0;
  v11[6] = v23;
  v11[7] = v24;
  sub_1BA4A2BF8();
  LOBYTE(v37) = 4;
  sub_1B9F20854(&qword_1EDC6AD58, MEMORY[0x1E69A32A0]);
  v25 = v35;
  sub_1BA4A8178();
  v35 = v25;
  if (v25)
  {
    (*(v15 + 8))(v13, v17);
    v26 = 0;
  }

  else
  {
    sub_1BA0D6768(v5, v11 + *(v9 + 32), sub_1BA0D0F10);
    v38 = 5;
    sub_1BA0D1F58();
    v27 = v35;
    sub_1BA4A81C8();
    v35 = v27;
    if (!v27)
    {
      (*(v15 + 8))(v13, v17);
      *(v11 + *(v9 + 36)) = v37;
      sub_1BA0D683C(v11, v16, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v29 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel;
      v30 = v11;
      return sub_1BA0D6B24(v30, v29);
    }

    (*(v15 + 8))(v13, v17);
    v26 = 1;
  }

  v28 = v31;
  __swift_destroy_boxed_opaque_existential_1(v36);

  if (!v28)
  {
  }

  if (v26)
  {
    v29 = sub_1BA0D0F10;
    v30 = v19 + *(v9 + 32);
    return sub_1BA0D6B24(v30, v29);
  }

  return result;
}

void sub_1BA0D1EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1BA0D1F58()
{
  result = qword_1EBBEB9A8;
  if (!qword_1EBBEB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB9A8);
  }

  return result;
}

uint64_t sub_1BA0D1FAC()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
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

uint64_t ProminentMessageWithActionTileViewWithImage.didTapAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProminentMessageWithActionTileViewWithImage(0) + 28));

  return v1;
}

uint64_t ProminentMessageWithActionTileViewWithImage.init(_:didTapAction:didTapDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = type metadata accessor for ProminentMessageWithActionTileViewWithImage(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_1B9F87E7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  result = sub_1BA0D6768(a1, a4 + v8[6], type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  v11 = (a4 + v8[7]);
  *v11 = a2;
  v11[1] = a3;
  return result;
}

void ProminentMessageWithActionTileViewWithImage.body.getter(uint64_t *a1@<X8>)
{
  v2 = a1;
  *a1 = sub_1BA4A5868();
  v2[1] = 0;
  *(v2 + 16) = 0;
  sub_1BA0D4824();
  v4 = v2 + *(v3 + 44);
  *v4 = sub_1BA4A5868();
  *(v4 + 1) = 0;
  v4[16] = 0;
  sub_1BA0D4B90(0, &qword_1EBBEBA10, sub_1BA0D48EC);
  sub_1BA0D23D8(v1, &v4[*(v5 + 44)]);
  LOBYTE(v2) = sub_1BA4A5B78();
  sub_1BA4A5188();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BA0D631C(0, &qword_1EBBEB9B8, sub_1BA0D48B0);
  v15 = &v4[*(v14 + 36)];
  *v15 = v2;
  *(v15 + 1) = v7;
  *(v15 + 2) = v9;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  v15[40] = 0;
}

void sub_1BA0D23D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = type metadata accessor for ProminentMessageWithActionTileViewWithImage(0);
  v4 = v3 - 8;
  v87 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v88 = v5;
  v89 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1BA4A6138();
  v6 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D4A4C(0);
  v82 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D6E7C(0, &qword_1EBBEB9E0, sub_1BA0D4A4C, MEMORY[0x1E697CBE8]);
  v86 = v12;
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v80 - v13;
  sub_1BA0D0F10(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A2BF8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D49B8(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v80 - v24;
  v25 = *(v4 + 32);
  v92 = a1;
  v26 = (a1 + v25);
  v27 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  sub_1BA0D683C(v26 + *(v27 + 32), v16, sub_1BA0D0F10);
  v28 = *(v18 + 48);
  v84 = v17;
  v29 = v28(v16, 1, v17);
  v91 = v22;
  if (v29 == 1)
  {
    sub_1BA0D6B24(v16, sub_1BA0D0F10);
    v30 = 1;
    v31 = v93;
LABEL_5:
    (*(v85 + 56))(v31, v30, 1, v86);
    v56 = v26[1];
    v82 = *v26;
    KeyPath = swift_getKeyPath();
    v58 = v26[3];
    v83 = v26[2];
    v81 = swift_getKeyPath();
    v59 = v26[5];
    v85 = v26[4];
    v84 = v59;
    v80 = v26[6];
    v60 = v80;
    v86 = v26[7];
    v61 = v89;
    sub_1BA0D683C(v92, v89, type metadata accessor for ProminentMessageWithActionTileViewWithImage);
    v62 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v63 = swift_allocObject();
    sub_1BA0D6768(v61, v63 + v62, type metadata accessor for ProminentMessageWithActionTileViewWithImage);
    v64 = swift_getKeyPath();
    v89 = v64;
    v94 = 0;
    sub_1BA0D683C(v31, v22, sub_1BA0D49B8);
    v65 = v94;
    LODWORD(v92) = v94;
    v66 = v22;
    v67 = v90;
    sub_1BA0D683C(v66, v90, sub_1BA0D49B8);
    sub_1BA0D4920();
    v69 = v67 + v68[12];
    *v69 = KeyPath;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = v82;
    *(v69 + 32) = v56;
    v70 = v67 + v68[16];
    *v70 = 0;
    *(v70 + 8) = 0;
    v71 = v67 + v68[20];
    v72 = v81;
    *v71 = v81;
    *(v71 + 8) = 0;
    *(v71 + 16) = 0;
    *(v71 + 24) = v83;
    *(v71 + 32) = v58;
    v73 = v67 + v68[24];
    *v73 = 0;
    *(v73 + 8) = 0;
    v74 = v67 + v68[28];
    v95 = v64;
    LOBYTE(v96) = v65;
    v75 = v85;
    v76 = v84;
    *(&v96 + 1) = v85;
    *&v97 = v84;
    v77 = v86;
    *(&v97 + 1) = v60;
    *&v98 = v86;
    *(&v98 + 1) = sub_1BA0D67D0;
    v99 = v63;
    *(v74 + 64) = v63;
    v78 = v96;
    *v74 = v95;
    *(v74 + 16) = v78;
    v79 = v98;
    *(v74 + 32) = v97;
    *(v74 + 48) = v79;

    sub_1B9F84D0C(KeyPath, 0, 0);

    sub_1B9F84D0C(v72, 0, 0);

    sub_1BA0D5DA0(&v95, v100);
    sub_1BA0D6B24(v93, sub_1BA0D49B8);
    v100[0] = v89;
    v100[1] = 0;
    v101 = v92;
    v102 = v75;
    v103 = v76;
    v104 = v80;
    v105 = v77;
    v106 = sub_1BA0D67D0;
    v107 = v63;
    sub_1BA0D68A4(v100);
    sub_1B9F84D1C(v72, 0, 0);

    sub_1B9F84D1C(KeyPath, 0, 0);

    sub_1BA0D6B24(v91, sub_1BA0D49B8);
    return;
  }

  v32 = v18;
  (*(v18 + 32))(v83, v16, v84);
  sub_1BA4A2BE8();
  v33 = v81;
  (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v81);
  v34 = sub_1BA4A6198();

  (*(v6 + 8))(v8, v33);
  v35 = sub_1BA4A5BE8();
  v36 = swift_getKeyPath();
  sub_1BA0D4A9C();
  v38 = &v11[*(v37 + 36)];
  sub_1B9F89374(0);
  v40 = *(v39 + 28);
  v41 = *MEMORY[0x1E69816E0];
  v42 = sub_1BA4A6188();
  (*(*(v42 - 8) + 104))(v38 + v40, v41, v42);
  *v38 = swift_getKeyPath();
  *v11 = v34;
  *(v11 + 1) = 0;
  *(v11 + 8) = 1;
  *(v11 + 3) = v36;
  *(v11 + 4) = v35;
  sub_1BA4A63C8();
  sub_1BA4A5278();
  sub_1BA0D4A74(0);
  v44 = &v11[*(v43 + 36)];
  v45 = v109;
  *v44 = v108;
  *(v44 + 1) = v45;
  *(v44 + 2) = v110;
  LOBYTE(v34) = sub_1BA4A5B98();
  sub_1BA4A5188();
  v46 = &v11[*(v82 + 36)];
  *v46 = v34;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  sub_1B9F864BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BA4B5460;
  *(v51 + 32) = sub_1BA0D1FAC();
  *(v51 + 40) = v52;
  *(v51 + 48) = 1852793673;
  *(v51 + 56) = 0xE400000000000000;
  v53 = sub_1BA4A6AE8();

  v54 = HKUIJoinStringsForAutomationIdentifier();

  if (v54)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D6144(&qword_1EBBEBB30, sub_1BA0D4A4C, sub_1BA0D68D4);
    v55 = v80;
    sub_1BA4A5F18();

    sub_1BA0D6B24(v11, sub_1BA0D4A4C);
    (*(v32 + 8))(v83, v84);
    v31 = v93;
    sub_1BA0D6B84(v55, v93);
    v30 = 0;
    v22 = v91;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1BA0D2EA4(uint64_t *a1@<X8>)
{
  v2 = a1;
  *a1 = sub_1BA4A5868();
  v2[1] = 0;
  *(v2 + 16) = 0;
  sub_1BA0D4824();
  v4 = v2 + *(v3 + 44);
  *v4 = sub_1BA4A5868();
  *(v4 + 1) = 0;
  v4[16] = 0;
  sub_1BA0D4B90(0, &qword_1EBBEBA10, sub_1BA0D48EC);
  sub_1BA0D23D8(v1, &v4[*(v5 + 44)]);
  LOBYTE(v2) = sub_1BA4A5B78();
  sub_1BA4A5188();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1BA0D631C(0, &qword_1EBBEB9B8, sub_1BA0D48B0);
  v15 = &v4[*(v14 + 36)];
  *v15 = v2;
  *(v15 + 1) = v7;
  *(v15 + 2) = v9;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  v15[40] = 0;
}

void sub_1BA0D2FA0(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_1BA4A5718();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F87DEC(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A5D68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 4);
  *&v45 = *(v1 + 3);
  *(&v45 + 1) = v11;
  sub_1B9F252FC();

  v12 = sub_1BA4A5E18();
  v41 = v13;
  v42 = v12;
  v15 = v14;
  v40 = v16;
  KeyPath = swift_getKeyPath();
  v18 = v15 & 1;
  LOBYTE(v45) = v15 & 1;
  (*(v8 + 104))(v10, *MEMORY[0x1E6980F00], v7);
  v19 = sub_1BA4A5C28();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1BA4A5C48();
  v20 = sub_1BA4A5CD8();
  sub_1BA0D6B24(v6, sub_1B9F87DEC);
  (*(v8 + 8))(v10, v7);
  v21 = swift_getKeyPath();
  v22 = sub_1BA4A60E8();
  v23 = swift_getKeyPath();
  LOBYTE(v11) = sub_1BA4A5B98();
  sub_1BA4A5188();
  v54 = 0;
  *&v45 = v42;
  *(&v45 + 1) = v41;
  LOBYTE(v46) = v18;
  *(&v46 + 1) = v40;
  LOWORD(v47) = 256;
  *(&v47 + 1) = KeyPath;
  LOBYTE(v48) = 1;
  *(&v48 + 1) = v21;
  *&v49 = v20;
  *(&v49 + 1) = v23;
  *&v50 = v22;
  BYTE8(v50) = v11;
  *&v51 = v24;
  *(&v51 + 1) = v25;
  *&v52 = v26;
  *(&v52 + 1) = v27;
  v53 = 0;
  sub_1B9F864BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5460;
  v55 = *v1;
  v56 = *(v1 + 16);
  v29 = v55;
  if (v56 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v31 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v32 = v36;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v55);
    (*(v37 + 8))(v32, v38);
    v30 = *(&v43[0] + 1);
    v29 = *&v43[0];
  }

  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  *(v28 + 48) = 0x656C746954;
  *(v28 + 56) = 0xE500000000000000;
  v33 = sub_1BA4A6AE8();

  v34 = HKUIJoinStringsForAutomationIdentifier();

  if (v34)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D62F4(0);
    sub_1BA0D6538();
    sub_1BA4A5F18();

    v43[6] = v51;
    v43[7] = v52;
    v44 = v53;
    v43[2] = v47;
    v43[3] = v48;
    v43[4] = v49;
    v43[5] = v50;
    v43[0] = v45;
    v43[1] = v46;
    sub_1BA0D6B24(v43, sub_1BA0D62F4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA0D34BC(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v53 = a2;
  v41 = sub_1BA4A5718();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A5D18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D5F34(0);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  *&v51[0] = v12;
  *(&v51[0] + 1) = v13;
  sub_1B9F252FC();

  v43 = sub_1BA4A5E18();
  v15 = v14;
  LOBYTE(v13) = v16;
  v18 = v17;
  sub_1BA4A5C18();
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v5);
  v19 = sub_1BA4A5D38();

  (*(v6 + 8))(v8, v5);
  v20 = v11;
  KeyPath = swift_getKeyPath();
  LOBYTE(v45) = v13 & 1;
  *&v47 = v43;
  *(&v47 + 1) = v15;
  v22 = v44;
  LOBYTE(v48) = v13 & 1;
  *(&v48 + 1) = v18;
  LOWORD(v49) = 256;
  *(&v49 + 1) = KeyPath;
  v50 = v19;
  sub_1BA0D5884(0, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
  sub_1BA0D5B8C();
  sub_1BA4A5FB8();
  v51[0] = v47;
  v51[1] = v48;
  v51[2] = v49;
  v52 = v50;
  sub_1BA0D608C(v51);
  v23 = swift_getKeyPath();
  sub_1BA0D5F5C();
  v25 = &v11[*(v24 + 36)];
  *v25 = v23;
  v25[8] = 1;
  LOBYTE(v23) = sub_1BA4A5B98();
  sub_1BA4A5188();
  v26 = &v11[*(v22 + 36)];
  *v26 = v23;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_1B9F864BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5460;
  v47 = *v53;
  LOBYTE(v48) = *(v53 + 16);
  v32 = v47;
  if (v48 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v34 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v35 = v39;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v47);
    (*(v40 + 8))(v35, v41);
    v32 = v45;
    v33 = v46;
  }

  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  *(v31 + 48) = 0x656C746974627553;
  *(v31 + 56) = 0xE800000000000000;
  v36 = sub_1BA4A6AE8();

  v37 = HKUIJoinStringsForAutomationIdentifier();

  if (v37)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D6108();
    sub_1BA4A5F18();

    sub_1BA0D6294(v20, sub_1BA0D5F34);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA0D39AC()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v9 = *v0;
  v5 = v9;
  if (v10 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v6 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v9);
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return v5;
}

uint64_t sub_1BA0D3B14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v13 = *v1;
  v14 = v3;
  v4 = *(v1 + 32);
  v15 = v4;
  if (v4)
  {
    v12[0] = *(&v14 + 1);
    v12[1] = v4;

    sub_1BA0D34BC(v12, &v13, a1);

    sub_1BA0D6E7C(0, &qword_1EBBEBB00, sub_1BA0D5F34, MEMORY[0x1E697CBE8]);
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a1;
    v9 = 0;
  }

  else
  {
    sub_1BA0D6E7C(0, &qword_1EBBEBB00, sub_1BA0D5F34, MEMORY[0x1E697CBE8]);
    v6 = *(*(v10 - 8) + 56);
    v7 = v10;
    v8 = a1;
    v9 = 1;
  }

  return v6(v8, v9, 1, v7);
}

uint64_t sub_1BA0D3C64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA0D5924(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30[-v11];
  sub_1BA0D57B0(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30[-v20];
  v22 = a1[4];
  if (v22)
  {
    v31 = a1[3];
    v32 = v22;

    sub_1BA0D40A0(&v31, a1, v18);

    sub_1BA0D6E7C(0, &qword_1EDC5EE90, sub_1BA0D57D8, MEMORY[0x1E697CBE8]);
    (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  }

  else
  {
    sub_1BA0D6E7C(0, &qword_1EDC5EE90, sub_1BA0D57D8, MEMORY[0x1E697CBE8]);
    (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  }

  sub_1BA0D6768(v18, v21, sub_1BA0D57B0);
  v25 = a1[6];
  if (v25)
  {
    v31 = a1[5];
    v32 = v25;

    sub_1BA0D43AC(&v31, a1, v9);

    sub_1BA0D6E7C(0, &qword_1EBBEBAC0, sub_1BA0D594C, MEMORY[0x1E697CBE8]);
    (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
  }

  else
  {
    sub_1BA0D6E7C(0, &qword_1EBBEBAC0, sub_1BA0D594C, MEMORY[0x1E697CBE8]);
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  }

  sub_1B9F935E8(v9, v12);
  sub_1BA0D683C(v21, v15, sub_1BA0D57B0);
  sub_1B9F9364C(v12, v6);
  sub_1BA0D683C(v15, a2, sub_1BA0D57B0);
  sub_1BA0D5740();
  sub_1B9F9364C(v6, a2 + *(v28 + 48));
  sub_1BA0D6294(v12, sub_1BA0D5924);
  sub_1BA0D6B24(v21, sub_1BA0D57B0);
  sub_1BA0D6294(v6, sub_1BA0D5924);
  return sub_1BA0D6B24(v15, sub_1BA0D57B0);
}

void sub_1BA0D40A0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v32 = a2;
  v4 = sub_1BA4A5D18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  *&v27 = v8;
  *(&v27 + 1) = v9;
  sub_1B9F252FC();

  v10 = sub_1BA4A5E18();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1BA4A5C18();
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA8], v4);
  v17 = sub_1BA4A5D38();

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  LOBYTE(v27) = v14 & 1;
  v19 = swift_getKeyPath();
  *&v27 = v10;
  *(&v27 + 1) = v12;
  LOBYTE(v28) = v14 & 1;
  *(&v28 + 1) = v16;
  LOWORD(v29) = 256;
  *(&v29 + 1) = KeyPath;
  *&v30 = v17;
  *(&v30 + 1) = v19;
  v31 = 1;
  sub_1B9F864BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5460;
  *(v20 + 32) = sub_1BA0D39AC();
  *(v20 + 40) = v21;
  *(v20 + 48) = 0x7470697263736544;
  *(v20 + 56) = 0xEB000000006E6F69;
  v22 = sub_1BA4A6AE8();

  v23 = HKUIJoinStringsForAutomationIdentifier();

  if (v23)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D57D8();
    sub_1BA0D66E4(&qword_1EDC5EF08, sub_1BA0D57D8, sub_1BA0D5B8C);
    sub_1BA4A5F18();

    v25[2] = v29;
    v25[3] = v30;
    v26 = v31;
    v25[0] = v27;
    v25[1] = v28;
    sub_1BA0D6B24(v25, sub_1BA0D57D8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA0D43AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v28 = sub_1BA4A5A68();
  v32 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0D5A80(0, &qword_1EBBEBAD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  sub_1BA0D594C(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v30 = v16;
  v31 = v17;
  v18 = swift_allocObject();
  v19 = *(a2 + 48);
  *(v18 + 48) = *(a2 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a2 + 64);
  v20 = *(a2 + 16);
  *(v18 + 16) = *a2;
  *(v18 + 32) = v20;

  sub_1BA0D5DA0(a2, v29);
  sub_1B9F252FC();
  sub_1BA4A61E8();
  sub_1BA4A5A58();
  sub_1BA0D5AD4();
  sub_1B9F20854(&qword_1EBBEBAE8, MEMORY[0x1E697CB70]);
  v21 = v28;
  sub_1BA4A5EA8();
  (*(v32 + 8))(v6, v21);
  (*(v9 + 8))(v11, v8);
  v22 = &v15[*(v13 + 36)];
  sub_1BA0D5B58(0);
  sub_1BA4A5478();
  *v22 = swift_getKeyPath();
  sub_1B9F864BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B5460;
  *(v23 + 32) = sub_1BA0D39AC();
  *(v23 + 40) = v24;
  *(v23 + 48) = 1802398028;
  *(v23 + 56) = 0xE400000000000000;
  v25 = sub_1BA4A6AE8();

  v26 = HKUIJoinStringsForAutomationIdentifier();

  if (v26)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D5DD8();
    sub_1BA4A5F18();

    sub_1BA0D6294(v15, sub_1BA0D594C);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA0D47A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_1BA4A5868();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  sub_1BA0D4B90(0, &qword_1EBBEBA98, sub_1BA0D570C);
  return sub_1BA0D3C64(v7, a1 + *(v5 + 44));
}

void sub_1BA0D4824()
{
  if (!qword_1EBBEB9B0)
  {
    sub_1BA0D631C(255, &qword_1EBBEB9B8, sub_1BA0D48B0);
    v0 = sub_1BA4A52C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB9B0);
    }
  }
}

void sub_1BA0D4920()
{
  if (!qword_1EBBEB9D0)
  {
    sub_1BA0D49B8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBEB9D0);
    }
  }
}

void sub_1BA0D49E0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA0D6E7C(255, a3, a4, MEMORY[0x1E697CBE8]);
    v5 = sub_1BA4A7AA8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA0D4A9C()
{
  if (!qword_1EBBEB9F8)
  {
    sub_1BA0D5884(255, &qword_1EBBEBA00, &qword_1EDC5F170, MEMORY[0x1E6981748], MEMORY[0x1E697F578]);
    sub_1B9F89374(255);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB9F8);
    }
  }
}

void sub_1BA0D4B24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B9F864BC(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1BA4A5B08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA0D4B90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A52C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA0D4BF4(uint64_t a1)
{
  *(a1 + 16) = sub_1B9F20854(&qword_1EBBEBA18, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  result = sub_1B9F20854(&qword_1EBBEBA20, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  *(a1 + 24) = result;
  return result;
}

void sub_1BA0D4CBC()
{
  sub_1B9F864BC(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1B9F87E7C(319, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_1B9F37BB8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BA0D4DEC()
{
  sub_1B9F864BC(319, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BA0D0F10(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA0D4EBC()
{
  if (!qword_1EBBEBA50)
  {
    sub_1BA0D631C(255, &qword_1EBBEB9B8, sub_1BA0D48B0);
    sub_1BA0D4F44();
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBA50);
    }
  }
}

unint64_t sub_1BA0D4F44()
{
  result = qword_1EBBEBA58;
  if (!qword_1EBBEBA58)
  {
    sub_1BA0D631C(255, &qword_1EBBEB9B8, sub_1BA0D48B0);
    sub_1B9F20854(&qword_1EBBEBA60, sub_1BA0D48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BA0D5054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1BA0D50B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1BA0D5124(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1BA0D5180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1BA0D51EC(uint64_t a1, int a2)
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

uint64_t sub_1BA0D5234(uint64_t result, int a2, int a3)
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

unint64_t sub_1BA0D52B0()
{
  result = qword_1EBBEBA68;
  if (!qword_1EBBEBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA68);
  }

  return result;
}

unint64_t sub_1BA0D5308()
{
  result = qword_1EBBEBA70;
  if (!qword_1EBBEBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA70);
  }

  return result;
}

unint64_t sub_1BA0D53B4()
{
  result = qword_1EBBEBA78;
  if (!qword_1EBBEBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA78);
  }

  return result;
}

unint64_t sub_1BA0D540C()
{
  result = qword_1EBBEBA80;
  if (!qword_1EBBEBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA80);
  }

  return result;
}

unint64_t sub_1BA0D5464()
{
  result = qword_1EBBEBA88;
  if (!qword_1EBBEBA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA88);
  }

  return result;
}

unint64_t sub_1BA0D54BC()
{
  result = qword_1EBBEBA90;
  if (!qword_1EBBEBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBA90);
  }

  return result;
}

uint64_t sub_1BA0D5510(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001BA4E9FF0 == a2;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001BA4EA010 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001BA4EA030 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BA4EA050 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1BA0D5740()
{
  if (!qword_1EBBEBAA8)
  {
    sub_1BA0D57B0(255);
    sub_1BA0D5924(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEBAA8);
    }
  }
}

void sub_1BA0D57D8()
{
  if (!qword_1EDC5EF00)
  {
    sub_1BA0D5884(255, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
    sub_1B9F864BC(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EF00);
    }
  }
}

void sub_1BA0D5884(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1BA0D5A80(255, a3, a4, a5, MEMORY[0x1E697E830]);
    sub_1BA0D4B24(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA0D5980()
{
  if (!qword_1EBBEBAD0)
  {
    sub_1BA0D5A80(255, &qword_1EBBEBAD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1BA4A5A68();
    sub_1BA0D5AD4();
    sub_1B9F20854(&qword_1EBBEBAE8, MEMORY[0x1E697CB70]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEBAD0);
    }
  }
}

void sub_1BA0D5A80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1BA0D5AD4()
{
  result = qword_1EBBEBAE0;
  if (!qword_1EBBEBAE0)
  {
    sub_1BA0D5A80(255, &qword_1EBBEBAD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBAE0);
  }

  return result;
}

unint64_t sub_1BA0D5B8C()
{
  result = qword_1EDC5F050;
  if (!qword_1EDC5F050)
  {
    sub_1BA0D5884(255, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
    sub_1BA0D5C4C();
    sub_1B9F87828(&qword_1EDC5EC50, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F050);
  }

  return result;
}

unint64_t sub_1BA0D5C4C()
{
  result = qword_1EDC5F210;
  if (!qword_1EDC5F210)
  {
    sub_1BA0D5A80(255, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F210);
  }

  return result;
}

uint64_t sub_1BA0D5CF0(uint64_t a1)
{
  sub_1B9F864BC(0, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0D5D70()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1BA0D5DD8()
{
  result = qword_1EBBEBAF0;
  if (!qword_1EBBEBAF0)
  {
    sub_1BA0D594C(255);
    sub_1BA0D5A80(255, &qword_1EBBEBAD8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1BA4A5A68();
    sub_1BA0D5AD4();
    sub_1B9F20854(&qword_1EBBEBAE8, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1B9F20854(&qword_1EBBEBAF8, sub_1BA0D5B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBAF0);
  }

  return result;
}

void sub_1BA0D5F5C()
{
  if (!qword_1EBBEBB10)
  {
    sub_1BA0D5FE8();
    sub_1B9F864BC(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBB10);
    }
  }
}

void sub_1BA0D5FE8()
{
  if (!qword_1EBBEBB18)
  {
    sub_1BA0D5884(255, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
    sub_1BA0D5B8C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEBB18);
    }
  }
}

uint64_t sub_1BA0D608C(uint64_t a1)
{
  sub_1BA0D5884(0, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA0D6144(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA0D61C4()
{
  result = qword_1EBBEBB28;
  if (!qword_1EBBEBB28)
  {
    sub_1BA0D5F5C();
    sub_1BA0D5884(255, &qword_1EDC5F048, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8]);
    sub_1BA0D5B8C();
    swift_getOpaqueTypeConformance2();
    sub_1B9F5DB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBB28);
  }

  return result;
}

uint64_t sub_1BA0D6294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA0D631C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A5418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA0D6380()
{
  if (!qword_1EDC5EEA0)
  {
    sub_1BA0D6400();
    sub_1BA0D4B24(255, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EEA0);
    }
  }
}

void sub_1BA0D6400()
{
  if (!qword_1EDC5EF10)
  {
    sub_1BA0D6480();
    sub_1BA0D4B24(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EF10);
    }
  }
}

void sub_1BA0D6480()
{
  if (!qword_1EDC5F058)
  {
    sub_1BA0D5A80(255, &qword_1EDC5F208, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    sub_1B9F864BC(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F058);
    }
  }
}

unint64_t sub_1BA0D6574()
{
  result = qword_1EDC5EEA8;
  if (!qword_1EDC5EEA8)
  {
    sub_1BA0D6380();
    sub_1BA0D6614();
    sub_1B9F87828(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EEA8);
  }

  return result;
}

unint64_t sub_1BA0D6614()
{
  result = qword_1EDC5EF18;
  if (!qword_1EDC5EF18)
  {
    sub_1BA0D6400();
    sub_1BA0D66E4(&qword_1EDC5F060, sub_1BA0D6480, sub_1BA0D5C4C);
    sub_1B9F87828(&qword_1EDC5EC50, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EF18);
  }

  return result;
}

uint64_t sub_1BA0D66E4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1B9F5DB4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA0D6768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA0D683C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA0D6910()
{
  result = qword_1EBBEBB40;
  if (!qword_1EBBEBB40)
  {
    sub_1BA0D4A9C();
    sub_1BA0D69C0();
    sub_1B9F20854(&qword_1EDC5EC30, sub_1B9F89374);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBB40);
  }

  return result;
}