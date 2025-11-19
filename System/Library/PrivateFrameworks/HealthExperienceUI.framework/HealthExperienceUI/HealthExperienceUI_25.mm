uint64_t sub_1BA1AE500(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v6;
  return sub_1BA1AE55C(v4, v5);
}

uint64_t sub_1BA1AE55C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_1BA1AE600()
{
  sub_1BA1B058C(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_1BA4A1338();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A79A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [objc_opt_self() systemBlueColor];
  [v10 setTitleColor:v11 forState:0];

  sub_1BA4A7968();
  sub_1BA4A7878();
  v12 = sub_1BA4A78C8();
  v14 = v13;
  v15 = sub_1BA4A12C8();
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    sub_1BA4A1328();
    sub_1BA4A11A8();
    (*(v19 + 8))(v5, v3);
  }

  v12(v20, 0);
  (*(v7 + 16))(v2, v9, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  sub_1BA4A79D8();
  LODWORD(v16) = 1148846080;
  [v10 setContentHuggingPriority:1 forAxis:v16];
  (*(v7 + 8))(v9, v6);
  return v10;
}

char *FeatureOnboardingBulletListItemView.__allocating_init(image:title:description:buttonConfiguration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = sub_1BA1AFB78(a1, a2, a3, a4, a5, a6);

  return v14;
}

char *FeatureOnboardingBulletListItemView.init(image:title:description:buttonConfiguration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = sub_1BA1AFB78(a1, a2, a3, a4, a5, a6);

  return v7;
}

void sub_1BA1AEA0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsUpdateConstraints];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsLayout];
  }
}

id FeatureOnboardingBulletListItemView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA1AEB40()
{
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_button];

  return [v0 addSubview_];
}

void sub_1BA1AEBCC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionLabel];
  v3 = [v2 text];
  if (v3)
  {
  }

  else
  {
    sub_1B9F109F8();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5470;
    v5 = [v2 heightAnchor];
    v6 = [v5 constraintEqualToConstant_];

    *(v4 + 32) = v6;
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionHeightConstraints] = v4;
  }

  sub_1B9F109F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5890;
  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageView];
  v9 = [v8 topAnchor];
  v10 = [v1 topAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v7 + 32) = v11;
  v12 = [v1 trailingAnchor];
  v13 = [v8 trailingAnchor];
  v14 = [v12 constraintGreaterThanOrEqualToAnchor_];

  *(v7 + 40) = v14;
  v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel];
  v16 = [v15 leadingAnchor];
  v17 = [v1 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v7 + 48) = v18;
  v19 = [v15 topAnchor];
  v20 = [v8 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:14.0];

  *(v7 + 56) = v21;
  v88 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextStackedConstraints];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextStackedConstraints] = v7;

  if (_UISolariumEnabled())
  {
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B5890;
    v23 = [v8 topAnchor];
    v24 = [v1 topAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    *(v22 + 32) = v25;
    v26 = v1;
    v27 = [v1 bottomAnchor];
    v28 = [v8 bottomAnchor];
    v29 = [v27 constraintGreaterThanOrEqualToAnchor_];

    *(v22 + 40) = v29;
    v30 = [v15 leadingAnchor];
    v31 = [v8 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:14.0];

    *(v22 + 48) = v32;
    v33 = (v22 + 56);
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B5880;
    v34 = [v8 topAnchor];
    v35 = [v1 topAnchor];
    v36 = [v34 constraintGreaterThanOrEqualToAnchor_];

    *(v22 + 32) = v36;
    v37 = [v1 bottomAnchor];
    v38 = [v8 bottomAnchor];
    v39 = [v37 constraintGreaterThanOrEqualToAnchor_];

    *(v22 + 40) = v39;
    v40 = [v8 centerYAnchor];
    v41 = [v1 centerYAnchor];
    v26 = v1;
    v42 = [v40 constraintEqualToAnchor_];

    *(v22 + 48) = v42;
    v43 = [v15 leadingAnchor];
    v44 = [v8 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:14.0];

    *(v22 + 56) = v45;
    v33 = (v22 + 64);
  }

  v46 = [v15 topAnchor];
  v47 = v26;
  v48 = [v26 topAnchor];
  v49 = [v46 constraintEqualToAnchor_];

  *v33 = v49;
  v87 = &v26[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextSideBySideConstraints];
  *&v26[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextSideBySideConstraints] = v22;

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BA4C27B0;
  v51 = [v47 trailingAnchor];
  v52 = [v15 trailingAnchor];
  v53 = [v51 &selRef:v52 numberWithInteger:? + 5];

  *(v50 + 32) = v53;
  v54 = [v8 leadingAnchor];
  v55 = [v47 leadingAnchor];
  v56 = [v54 &selRef:v55 numberWithInteger:? + 5];

  *(v50 + 40) = v56;
  v57 = [v2 topAnchor];
  v58 = [v15 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:3.0];

  *(v50 + 48) = v59;
  v60 = [v2 leadingAnchor];
  v61 = [v15 leadingAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(v50 + 56) = v62;
  v63 = [v2 trailingAnchor];
  v64 = [v47 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v50 + 64) = v65;
  v66 = *&v47[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_button];
  v67 = [v66 topAnchor];
  v68 = [v2 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:2.0];

  *(v50 + 72) = v69;
  v70 = [v66 leadingAnchor];
  v71 = [v2 leadingAnchor];
  v72 = [v70 constraintEqualToAnchor_];

  *(v50 + 80) = v72;
  v73 = [v47 trailingAnchor];
  v74 = [v66 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v50 + 88) = v75;
  v76 = [v47 bottomAnchor];
  v77 = [v66 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v50 + 96) = v78;
  v79 = [v47 traitCollection];
  v80 = [v79 horizontalSizeClass];

  v81 = v88;
  if (v80 == 1 || (v82 = [v47 traitCollection], v83 = objc_msgSend(v82, sel_preferredContentSizeCategory), v82, LOBYTE(v82) = sub_1BA4A74F8(), v83, (v82 & 1) != 0))
  {
    v81 = v87;
  }

  v84 = *v81;

  v85 = objc_opt_self();
  sub_1B9F73B50(v84);

  sub_1B9F73B50(v86);
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v89 = sub_1BA4A6AE8();

  [v85 activateConstraints_];
}

id sub_1BA1AF6BC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 1)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    sub_1BA4A74F8();
  }

  v5 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);

  v6 = sub_1BA4A6AE8();

  [v5 activateConstraints_];

  v7 = sub_1BA4A6AE8();

  [v5 deactivateConstraints_];

  v9.receiver = v0;
  v9.super_class = type metadata accessor for FeatureOnboardingBulletListItemView();
  return objc_msgSendSuper2(&v9, sel_updateConstraints);
}

uint64_t sub_1BA1AF898()
{
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration];
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if (v3)
  {
    sub_1BA1AE4BC(v2, v3);

    sub_1BA1AE55C(v2, v3);
    v5 = [v0 viewController];
    v4();
  }

  else
  {
    sub_1BA1AE4BC(v2, 0);
    return sub_1BA1AE55C(v2, 0);
  }
}

id FeatureOnboardingBulletListItemView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FeatureOnboardingBulletListItemView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureOnboardingBulletListItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BA1AFB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = *a6;
  v7 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  v11 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageView;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setContentMode_];

  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v14];
  *&v6[v11] = v12;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel;
  *&v6[v15] = sub_1BA1AE0E4();
  v16 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionLabel;
  *&v6[v16] = sub_1BA1AE1F8();
  v17 = &v6[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_button;
  *&v6[v18] = sub_1BA1AE600();
  v19 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextStackedConstraints] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextSideBySideConstraints] = v19;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionHeightConstraints] = v19;
  swift_beginAccess();
  v20 = *v17;
  v21 = *(v17 + 1);
  *v17 = v8;
  *(v17 + 1) = v7;
  *(v17 + 2) = v9;
  *(v17 + 3) = v10;
  v68 = v8;
  v22 = v8;
  v23 = v7;
  sub_1BA1AE4BC(v22, v7);
  sub_1BA1AE55C(v20, v21);
  v72.receiver = v6;
  v72.super_class = type metadata accessor for FeatureOnboardingBulletListItemView();
  v24 = objc_msgSendSuper2(&v72, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v25 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageView;
  [*&v24[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageView] setImage_];
  v26 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel;
  v27 = *&v24[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel];
  v28 = sub_1BA4A6758();

  [v27 setText_];

  v29 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionLabel;
  v30 = *&v24[OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionLabel];
  v31 = v30;
  if (a5)
  {
    v32 = sub_1BA4A6758();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText_];

  [v24 addSubview_];
  [v24 addSubview_];
  [v24 addSubview_];
  v33 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_button;
  [v24 addSubview_];
  sub_1BA1AEBCC();
  v34 = [*&v24[v29] text];
  v35 = MEMORY[0x1E69DDD80];
  if (!v34)
  {
    v53 = *&v24[v26];
    v54 = objc_opt_self();
    v55 = *v35;
    v56 = v53;
    v57 = [v54 preferredFontForTextStyle_];
    [v56 setFont_];

    LODWORD(v58) = 1148846080;
    [*&v24[v26] setContentCompressionResistancePriority:1 forAxis:v58];
    v36 = &unk_1BA4B5000;
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_8:
    v59 = [*&v24[v33] heightAnchor];
    v60 = [v59 constraintEqualToConstant_];

    [v60 setActive_];
    goto LABEL_9;
  }

  v36 = &unk_1BA4B5000;
  if (!v23)
  {
    goto LABEL_8;
  }

LABEL_6:
  v71 = v23;
  sub_1BA1B058C(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  v37 = v35;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v39 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v40 = objc_opt_self();
  v41 = *v37;
  v42 = v39;
  v43 = [v40 preferredFontForTextStyle_];
  v44 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v43;
  v45 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v44;
  *(inited + 72) = v45;
  v46 = objc_opt_self();
  v47 = v45;
  v48 = [v46 systemBlueColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v48;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  v49 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v50 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v51 = sub_1BA4A6618();

  v52 = [v49 initWithString:v50 attributes:v51];

  v36 = &unk_1BA4B5000;
  [*&v24[v33] setAttributedTitle:v52 forState:0];
  [*&v24[v33] addTarget:v24 action:sel_buttonWasTapped forControlEvents:64];

  sub_1BA1AE55C(v68, v71);
LABEL_9:
  sub_1BA1B058C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v61 = swift_allocObject();
  *(v61 + 16) = v36[70];
  v62 = sub_1BA4A4858();
  v63 = MEMORY[0x1E69DC2B0];
  *(v61 + 32) = v62;
  *(v61 + 40) = v63;
  v64 = sub_1BA4A4438();
  v65 = MEMORY[0x1E69DC130];
  *(v61 + 48) = v64;
  *(v61 + 56) = v65;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9FE8ED0();
  sub_1BA4A7708();

  swift_unknownObjectRelease();

  return v24;
}

void _s18HealthExperienceUI35FeatureOnboardingBulletListItemViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setContentMode_];

  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_titleLabel;
  *(v0 + v5) = sub_1BA1AE0E4();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionLabel;
  *(v0 + v6) = sub_1BA1AE1F8();
  v7 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_buttonConfiguration);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_button;
  *(v0 + v8) = sub_1BA1AE600();
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextStackedConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_imageAndTextSideBySideConstraints) = v9;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35FeatureOnboardingBulletListItemView_descriptionHeightConstraints) = v9;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA1B058C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA1B05F0(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA2FD9C4();
  if (!result)
  {
    v20 = 0;
    sub_1BA4A3D88();
    v7 = a1;
    v8 = sub_1BA4A3E88();
    v9 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v10 = 136315394;
      *(v10 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4EF8B0, &v21);
      *(v10 + 12) = 2080;
      v11 = v7;
      v12 = [v11 description];
      v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v15 = v14;

      v16 = sub_1B9F0B82C(v13, v15, &v21);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_1B9F07000, v8, v9, "[%s] Could not get bundle app delegate class as PluginSharingAuthorizationDelegate: %s", v10, 0x16u);
      v17 = v19;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return v20;
  }

  return result;
}

uint64_t sub_1BA1B0828(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA2FD9C4();
  if (!result)
  {
    v20 = 0;
    sub_1BA4A3D88();
    v7 = a1;
    v8 = sub_1BA4A3E88();
    v9 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v10 = 136315394;
      *(v10 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4C36F0, &v21);
      *(v10 + 12) = 2080;
      v11 = v7;
      v12 = [v11 description];
      v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v15 = v14;

      v16 = sub_1B9F0B82C(v13, v15, &v21);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_1B9F07000, v8, v9, "[%s] Could not get bundle app delegate class as PluginSharingAuthorizationDelegate: %s", v10, 0x16u);
      v17 = v19;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return v20;
  }

  return result;
}

uint64_t sub_1BA1B0A60()
{
  v0 = sub_1BA4A72F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1BA4A64C8();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  result = MEMORY[0x1BFAF3940](v6);
  if (!result)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    sub_1BA4A64A8();
    v8[1] = MEMORY[0x1E69E7CC0];
    sub_1BA1B443C(&unk_1EDC5E480, 255, MEMORY[0x1E69E8030]);
    sub_1B9F66328(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1B9F21B28();
    sub_1BA4A7C38();
    (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
    return sub_1BA4A7328();
  }

  return result;
}

uint64_t sub_1BA1B0CCC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v46 = MEMORY[0x1E69E8050];
  sub_1B9F66328(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v36 - v4;
  sub_1BA1B45BC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1B46F4(0, &qword_1EBBED7E8, sub_1BA03CEA0, MEMORY[0x1E695C0C0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  sub_1BA1B4768();
  v16 = *(v15 - 8);
  v38 = v15;
  v39 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1B4994();
  v20 = *(v19 - 8);
  v42 = v19;
  v43 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1B4A98();
  v24 = *(v23 - 8);
  v44 = v23;
  v45 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v37 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  sub_1B9F66328(0, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
  sub_1BA1B466C();
  sub_1BA4A6A18();
  v48 = MEMORY[0x1E69E7CC8];
  sub_1BA03CEA0();
  sub_1BA4A4C78();
  (*(v7 + 8))(v9, v6);
  sub_1BA4A4D08();
  sub_1BA1B4858();
  sub_1BA1B490C();
  sub_1BA1B443C(&qword_1EBBED800, 255, sub_1BA1B4858);
  sub_1BA4A5178();
  (*(v12 + 8))(v14, v11);
  v49 = v41;
  v26 = sub_1BA4A72A8();
  v27 = v40;
  (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  sub_1BA1B443C(&qword_1EBBED818, 255, sub_1BA1B4768);
  sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0);
  v28 = v38;
  sub_1BA4A50A8();
  sub_1BA1B4CD0(v27, &qword_1EDC6B5B8, v46);
  (*(v39 + 8))(v18, v28);
  v29 = swift_allocObject();
  v30 = v47;
  *(v29 + 16) = sub_1BA1B4B48;
  *(v29 + 24) = v30;
  sub_1BA1B4268();
  sub_1BA1B443C(&qword_1EBBED828, 255, sub_1BA1B4994);

  v31 = v37;
  v32 = v42;
  sub_1BA4A4FA8();

  (*(v43 + 8))(v22, v32);
  sub_1BA1B443C(&qword_1EBBED830, 255, sub_1BA1B4A98);
  v33 = v44;
  v34 = sub_1BA4A4F98();
  (*(v45 + 8))(v31, v33);
  return v34;
}

uint64_t sub_1BA1B13E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  sub_1B9F66328(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v37 - v17);
  sub_1BA1B4C50(a2 + *(v7 + 40), &v37 - v17, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v19 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    sub_1BA1B4CD0(v18, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
LABEL_7:
    sub_1BA4A3D88();
    sub_1BA1B4B88(a2, v12, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4C36F0, &v40);
      *(v28 + 12) = 2080;
      sub_1BA1B4B88(v12, v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v30 = sub_1BA4A6808();
      v32 = v31;
      sub_1BA1B4BF0(v12, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v33 = sub_1B9F0B82C(v30, v32, &v40);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s] Could not get bundle for %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    else
    {

      sub_1BA1B4BF0(v12, type metadata accessor for SummarySharingSelectableDataTypeItem);
    }

    (*(v38 + 8))(v6, v39);

    return a1;
  }

  v20 = *v18;
  v21 = *v18;
  sub_1BA1B4BF0(v18, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v20)
  {
    goto LABEL_7;
  }

  v40 = a1;
  v22 = *(a1 + 16);

  if (v22 && (v23 = sub_1B9FDA9BC(v21), (v24 & 1) != 0))
  {
    v25 = *(*(a1 + 56) + 8 * v23);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  sub_1BA1B4B88(a2, v15, type metadata accessor for SummarySharingSelectableDataTypeItem);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1BA27F5C8(0, v25[2] + 1, 1, v25);
  }

  v35 = v25[2];
  v34 = v25[3];
  if (v35 >= v34 >> 1)
  {
    v25 = sub_1BA27F5C8(v34 > 1, v35 + 1, 1, v25);
  }

  v25[2] = v35 + 1;
  sub_1BA025350(v15, v25 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35);
  sub_1BA202AB0(v25, v21);

  return v40;
}

void sub_1BA1B1948()
{
  v22 = objc_opt_self();
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA0FD5B4();
  v3 = [v2 topAnchor];

  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v8 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button] bottomAnchor];
  v9 = [v0 contentView];
  v10 = [v9 bottomAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v11;
  v12 = [*&v0[v7] leadingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 layoutMarginsGuide];

  v15 = [v14 leadingAnchor];
  v16 = [v12 constraintEqualToAnchor_];

  *(v1 + 48) = v16;
  v17 = [*&v0[v7] trailingAnchor];
  v18 = [v0 contentView];
  v19 = [v18 layoutMarginsGuide];

  v20 = [v19 trailingAnchor];
  v21 = [v17 constraintLessThanOrEqualToAnchor_];

  *(v1 + 56) = v21;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v23 = sub_1BA4A6AE8();

  [v22 activateConstraints_];
}

uint64_t sub_1BA1B1C40()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1BA1B4B88(v1 + v6, v32, sub_1B9F7B6F8);
  if (!v33)
  {
    sub_1BA1B4BF0(v32, sub_1B9F7B6F8);
LABEL_7:
    sub_1BA4A3D88();
    v16 = v1;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v2;
      v31 = v20;
      v21 = v20;
      *v19 = 136315394;
      v22 = sub_1BA4A85D8();
      v24 = sub_1B9F0B82C(v22, v23, &v31);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      sub_1BA1B4B88(v1 + v6, v32, sub_1B9F7B6F8);
      sub_1B9F7B6F8();
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v31);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Item is not a SummarySharingPreviewSummariesItem: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);

      return (*(v3 + 8))(v5, v30);
    }

    else
    {

      return (*(v3 + 8))(v5, v2);
    }
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  type metadata accessor for SummarySharingPreviewSummariesItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v31;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton;
  swift_beginAccess();
  *(v1 + v8) = 0;
  sub_1BA0FE74C();
  v9 = *(v7 + 64);
  v10 = *(v7 + 48);
  v11 = *(v7 + 56);
  if (v9)
  {
    v12 = v9;

    v13 = sub_1BA1B23F8();
    sub_1BA0FEA50(v10, v11, v12, v13, v14, *(v7 + 136));
  }

  else
  {

    v28 = sub_1BA1B23F8();
    sub_1BA0FE864(v10, v11, v28, v29, *(v7 + 136));
  }
}

uint64_t sub_1BA1B2008()
{
  v1 = v0;
  sub_1B9F66328(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = sub_1BA4A40A8();
  v9 = type metadata accessor for SummarySharingPreviewSummariesCell();
  v14.receiver = v1;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, sel__bridgedUpdateConfigurationUsingState_, v8);

  MEMORY[0x1BFAF1F00]();
  v10 = sub_1BA4A4168();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    v11 = MEMORY[0x1E69DC0D8];
    sub_1BA1B4C50(v7, v4, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v4);
    return sub_1BA1B4CD0(v7, &qword_1EDC6B770, v11);
  }

  else
  {
    v13 = [objc_opt_self() clearColor];
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v7);
  }
}

id sub_1BA1B23A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingPreviewSummariesCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1BA1B23F8())(void *a1)
{
  v1 = v0[20];
  if (v1)
  {
    v2 = v0[20];
  }

  else
  {
    v3 = *v0;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v3;
    v2 = sub_1BA1B41A4;
    v0[20] = sub_1BA1B41A4;
    v0[21] = v4;

    sub_1B9F0E310(0);
  }

  sub_1B9F0F1B8(v1);
  return v2;
}

uint64_t sub_1BA1B24C8(void *a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v57 = a1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F66328(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  sub_1BA1B41AC();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1B43A4();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1B4484();
  v58 = *(v19 - 8);
  v59 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = *(a2 + 152);
    v54 = Strong;
    ObjectType = swift_getObjectType();
    v25 = (*(v23 + 8))(ObjectType, v23);
    v26 = sub_1BA1B0A60();
    v53 = a2;
    v27 = v26;
    v28 = sub_1BA1B0CCC(v25, v26);

    v61 = v28;
    sub_1BA1B46F4(0, &qword_1EBBED780, sub_1BA1B4268, MEMORY[0x1E695BED0]);
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    sub_1BA1B431C();
    sub_1BA4A4FA8();

    sub_1BA1B443C(&qword_1EBBED7A8, 255, sub_1BA1B41AC);
    sub_1BA4A5068();
    (*(v13 + 8))(v15, v12);
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v29 = sub_1BA4A7308();
    v61 = v29;
    v30 = sub_1BA4A72A8();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
    sub_1BA1B443C(&qword_1EBBED7B8, 255, sub_1BA1B43A4);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0);
    v31 = v56;
    sub_1BA4A50A8();
    sub_1BA1B4CD0(v10, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

    (*(v55 + 8))(v18, v31);
    v32 = swift_allocObject();
    v33 = v60;
    *(v32 + 16) = v60;
    v34 = swift_allocObject();
    v35 = v57;
    v34[2] = v53;
    v34[3] = v35;
    v34[4] = v33;
    sub_1BA1B443C(&qword_1EBBED7D0, 255, sub_1BA1B4484);

    v36 = v35;
    v37 = v59;
    sub_1BA4A4F88();
    swift_unknownObjectRelease();

    return (*(v58 + 8))(v21, v37);
  }

  else
  {
    v59 = v4;
    sub_1BA4A3DD8();

    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v63 = v42;
      *v41 = 136315394;
      v43 = sub_1BA4A85D8();
      v45 = a2;
      v46 = sub_1B9F0B82C(v43, v44, &v63);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      v47 = swift_unknownObjectWeakLoadStrong();
      v48 = *(v45 + 152);
      v61 = v47;
      v62 = v48;
      sub_1B9F35724(0, &qword_1EBBED7C0, &qword_1EBBED7C8, &protocol descriptor for SummarySharingPreviewSummariesProviding, MEMORY[0x1E69E6720]);
      v49 = sub_1BA4A6808();
      v51 = sub_1B9F0B82C(v49, v50, &v63);

      *(v41 + 14) = v51;
      _os_log_impl(&dword_1B9F07000, v39, v40, "[%s] Could not run didTapAction from previewSummariesProviding %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    return (*(v5 + 8))(v7, v59);
  }
}

uint64_t sub_1BA1B2CA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 24))(v4, ObjectType, v3);
  *a2 = result;
  return result;
}

uint64_t sub_1BA1B2CFC()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = sub_1BA4A85D8();
    v10 = sub_1B9F0B82C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s] Fetch summaries predicates stream completed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BA1B2EA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  sub_1BA4A6C68();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  return sub_1BA1E0AA4(sub_1BA1B459C, v9);
}

void sub_1BA1B2F2C(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = sub_1BA4A3EA8();
  v7 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();

  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25[0] = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25[2] = v3;
    v15 = v14;
    v27 = v14;
    *v13 = 136315394;
    v16 = sub_1BA4A85D8();
    v18 = sub_1B9F0B82C(v16, v17, &v27);
    v25[1] = a2;
    v19 = v18;

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v21 = MEMORY[0x1BFAF1560](a1, v20);
    v23 = sub_1B9F0B82C(v21, v22, &v27);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v10, v11, "[%s] Fetched summaries predicates: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    v24 = v13;
    a3 = v25[0];
    MEMORY[0x1BFAF43A0](v24, -1, -1);
  }

  (*(v7 + 8))(v9, v26);
  sub_1BA1B3178(a1, a3);
}

void sub_1BA1B3178(uint64_t a1, void *a2)
{
  v3 = v2;
  v71 = a2;
  v64 = *v2;
  *&v68 = sub_1BA4A3EA8();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A27B8();
  v69 = sub_1BA4A25B8();
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v6 = sub_1BA4A6AE8();
  v7 = [objc_opt_self() orPredicateWithSubpredicates_];

  type metadata accessor for ProfileGradientsProviderFactory();
  swift_initStaticObject();
  v8 = v3[14];
  __swift_project_boxed_opaque_existential_1(v3 + 9, v3[12]);
  v9 = sub_1BA4A1B68();
  sub_1B9F109F8();
  inited = swift_initStackObject();
  v72 = xmmword_1BA4B5470;
  *(inited + 16) = xmmword_1BA4B5470;
  *(inited + 32) = v7;
  v11 = v7;
  v65 = v8;
  v12 = sub_1B9FE10EC(v8, v9);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BA4A3DD8();
  v13 = v11;
  v66 = v5;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v63 = v12;
    v17 = v16;
    v62 = swift_slowAlloc();
    v73[0] = v62;
    *v17 = 136315394;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, v73);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = v13;
    v22 = [v21 description];
    v23 = v13;
    v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = v25;

    v27 = sub_1B9F0B82C(v24, v26, v73);

    *(v17 + 14) = v27;
    v13 = v23;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Presenting SharedProfileOverviewViewController with additional predicate %s", v17, 0x16u);
    v28 = v62;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    v29 = v17;
    v12 = v63;
    MEMORY[0x1BFAF43A0](v29, -1, -1);
  }

  (*(v67 + 8))(v66, v68);
  v70 = v13;
  sub_1B9F0A534((v3 + 9), v73);
  v68 = *(v3 + 15);
  v30 = swift_initStackObject();
  *(v30 + 16) = v72;
  v31 = v69;
  *(v30 + 32) = v69;
  v32 = swift_allocObject();
  *(v32 + 16) = v72;
  *(v32 + 32) = v13;
  v33 = objc_allocWithZone(type metadata accessor for PreviewSharedProfileOverviewViewController());
  v33[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_providedPresentation] = 9;
  v34 = &v33[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView];
  type metadata accessor for ProfileGradientWithFadeView();
  v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v36 = v12;
  *&v72 = v31;
  *v34 = [v35 init];
  v34[1] = &protocol witness table for ProfileGradientWithFadeView;
  *&v33[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientSubscriber] = 0;
  v33[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_hasConfiguredGradientView] = 0;
  *&v33[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController____lazy_storage___previewSummariesLabel] = 0;
  v37 = &v33[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientColorProvider];
  v37[3] = type metadata accessor for ProfileGradientsProvider();
  v37[4] = &protocol witness table for ProfileGradientsProvider;
  *v37 = v36;
  __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  v38 = v36;
  v39 = sub_1BA4A1B68();
  type metadata accessor for PreviewSharedProfileOverviewDataSource(0);
  v69 = swift_allocObject();
  type metadata accessor for PreviewProfileContactOptionsDataSource(0);
  swift_allocObject();
  v40 = sub_1BA32CD38();
  v41 = v39;
  v42 = v65;
  v43 = sub_1BA4A6F38();
  v44 = objc_allocWithZone(type metadata accessor for SharedProfileNoticesDataSource());
  v45 = sub_1BA26C5A4(v41, v43, v30);
  v46 = v41;
  v47 = [v42 profileIdentifier];
  type metadata accessor for SummaryFeedTrendsSectionDataSource(0);
  swift_allocObject();

  v48 = SummaryFeedTrendsSectionDataSource.init(context:sourceProfile:additionalPredicates:significantTrendsDataSourceLoadingCompletion:)(v46, v47, v32, 0, 0);
  v49 = objc_allocWithZone(type metadata accessor for SharedSummariesDataSource());
  v50 = v46;
  v51 = sub_1BA20F6B4(v42, v32, v50);

  v52 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v51);

  type metadata accessor for NoDataDataSource();
  swift_allocObject();
  v53 = v52;
  v54 = NoDataDataSource.init()();
  sub_1BA1B3C90();
  swift_allocObject();
  v55 = sub_1BA06413C(v53, v54);

  sub_1B9F35724(0, &qword_1EDC5DC70, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, MEMORY[0x1E69E6F90]);
  v56 = swift_allocObject();
  *(v56 + 48) = v40;
  *(v56 + 56) = &protocol witness table for MutableArrayDataSource;
  *(v56 + 64) = v45;
  *(v56 + 72) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  *(v56 + 80) = v48;
  *(v56 + 88) = &protocol witness table for HideableDataSource<A>;
  *(v56 + 96) = v55;
  *(v56 + 104) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  v57 = v68;
  *(v56 + 16) = xmmword_1BA4B9A90;
  *(v56 + 32) = v57;
  swift_unknownObjectRetain();

  v58 = v45;

  v59 = CompoundSectionedDataSource.init(_:)(v56);

  v60 = CompoundDataSourceCollectionViewController.init(dataSource:)(v59);

  __swift_destroy_boxed_opaque_existential_1(v73);
  v61 = [objc_allocWithZone(MEMORY[0x1E69A4418]) initWithRootViewController_];
  [v71 presentViewController:v61 animated:1 completion:0];
}

uint64_t sub_1BA1B3970()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  swift_unknownObjectRelease();
  sub_1B9FAB600(v0 + 144);
  sub_1B9F0E310(*(v0 + 160));
  return v0;
}

uint64_t sub_1BA1B39D0()
{
  sub_1BA1B3970();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1B3A3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA1B3AE8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBED758 = result;
  unk_1EBBED760 = v1;
  return result;
}

void sub_1BA1B3BA0()
{
  v0 = sub_1BA4A6758();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = *MEMORY[0x1E69DDCF8];
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 configurationWithTextStyle_];

    v6 = [v1 imageWithConfiguration_];
  }

  else
  {
    v6 = 0;
  }

  qword_1EBBED768 = v6;
}

void sub_1BA1B3C90()
{
  if (!qword_1EBBED770)
  {
    type metadata accessor for SharedSummariesDataSource();
    type metadata accessor for NoDataDataSource();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED770);
    }
  }
}

uint64_t sub_1BA1B3D14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1BA1B13E0(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA1B3D40(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v12 = sub_1BA1B0828(a1);
  if (v12)
  {
    v13 = v11;
    sub_1BA4A3D88();
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v5;
      v18 = v17;
      v42 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4C36F0, &v42);
      *(v16 + 12) = 2080;
      v41[0] = v12;
      v41[1] = v13;
      sub_1B9F0D9AC(0, &qword_1EBBED790);
      swift_unknownObjectRetain();
      v19 = sub_1BA4A6808();
      v21 = sub_1B9F0B82C(v19, v20, &v42);
      v40 = v4;
      v22 = v21;

      *(v16 + 14) = v22;
      *(v16 + 22) = 2048;
      v23 = *(a2 + 16);

      *(v16 + 24) = v23;

      _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Successfully fetched auth delegate %s for %ld items", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);

      (*(v39 + 8))(v10, v40);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    sub_1BA4A3D88();
    v24 = a1;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41[0] = v39;
      *v27 = 136315394;
      *(v27 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4C36F0, v41);
      *(v27 + 12) = 2080;
      v28 = v24;
      v40 = v4;
      v29 = v28;
      v30 = [v28 description];
      v31 = v5;
      v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v34 = v33;

      v35 = sub_1B9F0B82C(v32, v34, v41);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%s] Bundle does not conform to PluginSharingAuthorizationDelegate: %s", v27, 0x16u);
      v36 = v39;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);

      (*(v31 + 8))(v7, v40);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return v12;
}

void sub_1BA1B41AC()
{
  if (!qword_1EBBED778)
  {
    sub_1BA1B46F4(255, &qword_1EBBED780, sub_1BA1B4268, MEMORY[0x1E695BED0]);
    sub_1B9F0ADF8(255, &qword_1EDC6B630);
    sub_1BA1B431C();
    v0 = sub_1BA4A4AC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED778);
    }
  }
}

void sub_1BA1B4268()
{
  if (!qword_1EBBED788)
  {
    sub_1B9F0D9AC(255, &qword_1EBBED790);
    sub_1B9F66328(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBED788);
    }
  }
}

unint64_t sub_1BA1B431C()
{
  result = qword_1EBBED798;
  if (!qword_1EBBED798)
  {
    sub_1BA1B46F4(255, &qword_1EBBED780, sub_1BA1B4268, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED798);
  }

  return result;
}

void sub_1BA1B43A4()
{
  if (!qword_1EBBED7A0)
  {
    sub_1BA1B41AC();
    sub_1BA1B443C(&qword_1EBBED7A8, 255, sub_1BA1B41AC);
    v0 = sub_1BA4A4C18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED7A0);
    }
  }
}

uint64_t sub_1BA1B443C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1BA1B4484()
{
  if (!qword_1EBBED7B0)
  {
    sub_1BA1B43A4();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA1B443C(&qword_1EBBED7B8, 255, sub_1BA1B43A4);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0);
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED7B0);
    }
  }
}

void sub_1BA1B45BC()
{
  if (!qword_1EBBED7D8)
  {
    sub_1B9F66328(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
    sub_1BA1B466C();
    v0 = sub_1BA4A4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED7D8);
    }
  }
}

unint64_t sub_1BA1B466C()
{
  result = qword_1EBBED7E0;
  if (!qword_1EBBED7E0)
  {
    sub_1B9F66328(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED7E0);
  }

  return result;
}

void sub_1BA1B46F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA1B4768()
{
  if (!qword_1EBBED7F0)
  {
    sub_1BA1B4858();
    sub_1BA1B46F4(255, &qword_1EBBED7E8, sub_1BA03CEA0, MEMORY[0x1E695C0C0]);
    sub_1BA1B443C(&qword_1EBBED800, 255, sub_1BA1B4858);
    sub_1BA1B490C();
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED7F0);
    }
  }
}

void sub_1BA1B4858()
{
  if (!qword_1EBBED7F8)
  {
    sub_1BA03CEA0();
    sub_1BA1B443C(&qword_1EBBEA8E8, 255, sub_1BA03CEA0);
    v0 = sub_1BA4A4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED7F8);
    }
  }
}

unint64_t sub_1BA1B490C()
{
  result = qword_1EBBED808;
  if (!qword_1EBBED808)
  {
    sub_1BA1B46F4(255, &qword_1EBBED7E8, sub_1BA03CEA0, MEMORY[0x1E695C0C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED808);
  }

  return result;
}

void sub_1BA1B4994()
{
  if (!qword_1EBBED810)
  {
    sub_1BA1B4768();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA1B443C(&qword_1EBBED818, 255, sub_1BA1B4768);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0);
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED810);
    }
  }
}

void sub_1BA1B4A98()
{
  if (!qword_1EBBED820)
  {
    sub_1BA1B4994();
    sub_1BA1B4268();
    sub_1BA1B443C(&qword_1EBBED828, 255, sub_1BA1B4994);
    v0 = sub_1BA4A4AC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED820);
    }
  }
}

uint64_t sub_1BA1B4B4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1BA1B4B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA1B4BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA1B4C50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F66328(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA1B4CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F66328(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static DataTypeDetailDataManagementDataSource.makeShowAllDataItem(hkType:healthStore:customTitle:secondaryText:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v52 = a6;
  v53 = a3;
  v57 = a2;
  v58 = a7;
  v10 = MEMORY[0x1E69E6720];
  sub_1B9F6638C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v51 - v12;
  sub_1B9F6638C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = &v51 - v14;
  v56 = sub_1BA4A3FB8();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A3F18();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A4428();
  v60 = *(v21 - 8);
  v61 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4418();
  if (!a4)
  {
    v51 = a5;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
  }

  sub_1BA4A43B8();

  sub_1BA4A41A8();
  strcpy(&v62, "ShowAllData_");
  BYTE13(v62) = 0;
  HIWORD(v62) = -5120;
  v24 = [a1 description];
  v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v26 = a1;
  v28 = v27;

  MEMORY[0x1BFAF1350](v25, v28);

  v52 = *(&v62 + 1);
  v53 = v62;
  v29 = v61;
  v63 = v61;
  v64 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
  (*(v60 + 16))(boxed_opaque_existential_1, v23, v29);
  sub_1B9F6638C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5480;
  (*(v18 + 104))(v20, *MEMORY[0x1E69DBF28], v17);
  v32 = sub_1BA4A3F48();
  (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v54 + 8))(v16, v56);
  (*(v18 + 8))(v20, v17);
  v33 = swift_allocObject();
  v34 = v57;
  *(v33 + 16) = v57;
  *(v33 + 24) = v26;
  v35 = v34;
  v36 = v26;
  v37 = v59;
  sub_1BA4A4158();
  v38 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_1BA4A4118();
  v39 = sub_1BA4A4168();
  (*(*(v39 - 8) + 56))(v37, 0, 1, v39);
  v40 = sub_1BA4A6AE8();
  v41 = HKUIJoinStringsForAutomationIdentifier();

  if (v41)
  {
    v42 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = type metadata accessor for ContentConfigurationItem();
  v46 = v58;
  v58[3] = v45;
  v46[4] = sub_1B9F2F868(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem);
  v47 = __swift_allocate_boxed_opaque_existential_1(v46);
  *(v47 + v45[12]) = 0;
  *(v47 + v45[13]) = 0;
  v48 = v52;
  *v47 = v53;
  v47[1] = v48;
  sub_1B9F1134C(&v62, (v47 + 9));
  *(v47 + 112) = 0;
  v47[15] = v31;
  v47[2] = sub_1BA1B6228;
  v47[3] = v33;
  v47[5] = &type metadata for BasicCellSelectionWithDeselectionOnRegularHorizontalSizeClassHandler;
  v47[6] = &off_1F381BCA0;
  sub_1B9F2F728(v37, v47 + v45[10]);
  v47[7] = v42;
  v47[8] = v44;
  v49 = (v47 + v45[11]);
  *v49 = sub_1BA1B760C;
  v49[1] = 0;
  return (*(v60 + 8))(v23, v61);
}

uint64_t DataTypeDetailDataManagementDataSource.__allocating_init(for:unitPreferencesController:healthStore:includeShowAllData:contentInsetsReference:)(void *a1, void *a2, void *a3, char a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1BA1B63CC(a1, a3, a4, a5);

  return v10;
}

uint64_t DataTypeDetailDataManagementDataSource.init(for:unitPreferencesController:healthStore:includeShowAllData:contentInsetsReference:)(void *a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v8 = sub_1BA1B63CC(a1, a3, a4, a5);

  return v8;
}

uint64_t static DataTypeDetailDataManagementDataSource.makeDataSourcesAndAccessItemIfNeeded(hkType:healthStore:customTitle:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_1B9F6638C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v46 - v9;
  v56 = sub_1BA4A3FB8();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A3F18();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A4428();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a2;
  if (!a3)
  {
    v19 = [a2 profileIdentifier];
    v20 = [v19 type];

    if (v20 == 1 && ([a1 requiresPerObjectAuthorization] & 1) == 0)
    {
      if (qword_1EDC5E100 == -1)
      {
LABEL_7:
        sub_1BA4A1318();
        goto LABEL_8;
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      goto LABEL_7;
    }

    swift_once();
    goto LABEL_7;
  }

LABEL_8:

  sub_1BA4A43A8();
  v47 = v18;
  sub_1BA4A43B8();
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v58 = 0xD000000000000015;
  v59 = 0x80000001BA4F2050;
  v48 = a1;
  v21 = [a1 description];
  v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v24 = v23;

  MEMORY[0x1BFAF1350](v22, v24);

  v49 = v59;
  v50 = v58;
  v25 = type metadata accessor for ContentConfigurationItem();
  a4[3] = v25;
  a4[4] = sub_1B9F2F868(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v27 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1[12] = v14;
  boxed_opaque_existential_1[13] = v27;
  v46 = v14;
  v28 = __swift_allocate_boxed_opaque_existential_1(boxed_opaque_existential_1 + 9);
  (*(v15 + 16))(v28, v18, v14);
  sub_1B9F6638C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5480;
  v30 = v51;
  v31 = v13;
  v32 = v13;
  v33 = v52;
  (*(v51 + 104))(v32, *MEMORY[0x1E69DBF28], v52);
  v34 = sub_1BA4A3F48();
  (*(*(v34 - 8) + 56))(v55, 1, 1, v34);
  v35 = v53;
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v54 + 8))(v35, v56);
  (*(v30 + 8))(v31, v33);
  v36 = swift_allocObject();
  v37 = v57;
  v38 = v48;
  *(v36 + 16) = v57;
  *(v36 + 24) = v38;
  boxed_opaque_existential_1[5] = &type metadata for BasicCellSelectionWithDeselectionOnRegularHorizontalSizeClassHandler;
  boxed_opaque_existential_1[6] = &off_1F381BCA0;
  boxed_opaque_existential_1[2] = sub_1BA1B717C;
  boxed_opaque_existential_1[3] = v36;
  v39 = v25[10];
  v40 = v37;
  v41 = v38;
  sub_1BA4A4158();
  v42 = sub_1BA4A4168();
  (*(*(v42 - 8) + 56))(boxed_opaque_existential_1 + v39, 0, 1, v42);
  *(boxed_opaque_existential_1 + v25[12]) = 0;
  *(boxed_opaque_existential_1 + v25[13]) = 0;
  v43 = v49;
  *boxed_opaque_existential_1 = v50;
  boxed_opaque_existential_1[1] = v43;
  *(boxed_opaque_existential_1 + 112) = 0;
  boxed_opaque_existential_1[15] = v29;
  boxed_opaque_existential_1[7] = 0;
  boxed_opaque_existential_1[8] = 0;
  v44 = (boxed_opaque_existential_1 + v25[11]);
  *v44 = sub_1BA1B760C;
  v44[1] = 0;
  return (*(v15 + 8))(v47, v46);
}

id static DataTypeDetailDataManagementDataSource.makeUnitItem(displayType:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DataTypeDetailUnitCell();
  sub_1BA1B71A0();
  v3 = sub_1BA4A6808();
  v5 = v4;
  a2[3] = &type metadata for DataTypeDetailUnitCell.Item;
  a2[4] = sub_1BA1B71E8();
  v6 = swift_allocObject();
  *a2 = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = 0;
  v6[5] = 0;
  v6[6] = a1;

  return a1;
}

void *sub_1BA1B5DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    v12 = v5;
    swift_once();
    v5 = v12;
  }

  v9 = __swift_project_value_buffer(v5, qword_1EDC6CB90);
  sub_1B9F37E38(v9, v7);
  *(v7 + 18) = a2;
  v10 = ListLayoutConfiguration.layout(for:)(v8);
  sub_1BA047354(v7);
  return v10;
}

uint64_t DataTypeDetailDataManagementDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DataTypeDetailDataManagementDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1B6148(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = [objc_opt_self() sharedInstanceForHealthStore_];
  v7 = [v6 *a4];

  memset(v9, 0, sizeof(v9));
  sub_1BA4A7238();

  return sub_1BA1B7524(v9, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA1B624C()
{
  v0 = HKUnitPreferenceControllerAvailableUnitsForDisplayType();
  sub_1BA1B75A0();
  sub_1B9F2F868(&qword_1EDC6B4C8, sub_1BA1B75A0);
  v1 = sub_1BA4A6D78();

  v2 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (sub_1BA4A7CC8() != 1)
    {
      v3 = 0;
LABEL_15:
      v7 = sub_1BA4A7CC8();
      goto LABEL_16;
    }
  }

  else if (*(v1 + 16) != 1)
  {
    v3 = 0;
    v7 = *(v1 + 16);
    goto LABEL_16;
  }

  v4 = sub_1BA159194(v1);
  v5 = [objc_opt_self() countUnit];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v3 = sub_1BA4A7798();

      if (v2)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    v6 = v4;
  }

  else if (!v5)
  {
    v3 = 1;
    if (v2)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v3 = 0;
  if (v2)
  {
    goto LABEL_15;
  }

LABEL_8:
  v7 = *(v1 + 16);
LABEL_16:

  return (v7 != 0) & (v3 ^ 1u);
}

uint64_t sub_1BA1B63CC(void *a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v104 = a2;
  v103 = sub_1BA4A1798();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1B9F6638C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v97 = &v91 - v12;
  sub_1B9F6638C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v91 - v14;
  v96 = sub_1BA4A3FB8();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A3F18();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1BA4A4428();
  v98 = *(v99 - 8);
  v22 = MEMORY[0x1EEE9AC00](v99);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  v25 = [a1 objectType];
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI38DataTypeDetailDataManagementDataSource_hkType) = v25;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI38DataTypeDetailDataManagementDataSource_contentInsetsReference) = a4;
  v26 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v93 = a4;
    v94 = v5;
    v27 = v25;
    sub_1BA4A4418();
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA4A43B8();
    sub_1BA4A41A8();
    strcpy(&v108, "ShowAllData_");
    BYTE13(v108) = 0;
    HIWORD(v108) = -5120;
    v28 = [v27 description];
    v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v31 = v30;

    MEMORY[0x1BFAF1350](v29, v31);

    v91 = *(&v108 + 1);
    v92 = v108;
    v32 = v99;
    v106 = v99;
    v107 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
    (*(v98 + 16))(boxed_opaque_existential_1, v24, v32);
    sub_1B9F6638C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BA4B5480;
    (*(v19 + 104))(v21, *MEMORY[0x1E69DBF28], v18);
    v35 = sub_1BA4A3F48();
    (*(*(v35 - 8) + 56))(v15, 1, 1, v35);
    sub_1BA4A3FA8();
    sub_1BA4A3F78();
    (*(v95 + 8))(v17, v96);
    (*(v19 + 8))(v21, v18);
    v36 = swift_allocObject();
    v37 = v104;
    *(v36 + 16) = v104;
    *(v36 + 24) = v27;
    v38 = v27;
    v39 = v37;
    v40 = v97;
    sub_1BA4A4158();
    v41 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_1BA4A4118();
    v42 = sub_1BA4A4168();
    (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
    v43 = sub_1BA4A6AE8();
    v44 = HKUIJoinStringsForAutomationIdentifier();

    if (v44)
    {
      v45 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v48 = type metadata accessor for ContentConfigurationItem();
    v109 = v48;
    v110 = sub_1B9F2F868(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem);
    v49 = __swift_allocate_boxed_opaque_existential_1(&v108);
    *(v49 + v48[12]) = 0;
    *(v49 + v48[13]) = 0;
    v50 = v91;
    *v49 = v92;
    v49[1] = v50;
    sub_1B9F1134C(&v105, (v49 + 9));
    *(v49 + 112) = 0;
    v49[15] = v34;
    v49[2] = sub_1BA1B7610;
    v49[3] = v36;
    v49[5] = &type metadata for BasicCellSelectionWithDeselectionOnRegularHorizontalSizeClassHandler;
    v49[6] = &off_1F381BCA0;
    sub_1B9F2F728(v40, v49 + v48[10]);

    v49[7] = v45;
    v49[8] = v47;
    v51 = (v49 + v48[11]);
    *v51 = sub_1BA1B760C;
    v51[1] = 0;
    (*(v98 + 8))(v24, v99);
    v26 = sub_1BA27EFB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v111 = v26;
    v53 = v26[2];
    v52 = v26[3];
    if (v53 >= v52 >> 1)
    {
      v26 = sub_1BA27EFB4((v52 > 1), v53 + 1, 1, v26);
      v111 = v26;
    }

    a4 = v93;
    v54 = v109;
    v55 = v110;
    v56 = __swift_mutable_project_boxed_opaque_existential_1(&v108, v109);
    v57 = MEMORY[0x1EEE9AC00](v56);
    v59 = &v91 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v59, v57);
    sub_1B9F1C4F4(v53, v59, &v111, v54, v55);
    __swift_destroy_boxed_opaque_existential_1(&v108);
  }

  v61 = v100;
  v62 = [v100 objectType];
  static DataTypeDetailDataManagementDataSource.makeDataSourcesAndAccessItemIfNeeded(hkType:healthStore:customTitle:)(v62, v104, 0, &v105);

  if (v106)
  {
    sub_1B9F1134C(&v105, &v108);
    sub_1B9F0A534(&v108, &v105);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1BA27EFB4(0, v26[2] + 1, 1, v26);
      v111 = v26;
    }

    v65 = v26[2];
    v64 = v26[3];
    if (v65 >= v64 >> 1)
    {
      v26 = sub_1BA27EFB4((v64 > 1), v65 + 1, 1, v26);
      v111 = v26;
    }

    __swift_destroy_boxed_opaque_existential_1(&v108);
    v66 = v106;
    v67 = v107;
    v68 = __swift_mutable_project_boxed_opaque_existential_1(&v105, v106);
    v69 = MEMORY[0x1EEE9AC00](v68);
    v71 = &v91 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v71, v69);
    sub_1B9F1C4F4(v65, v71, &v111, v66, v67);
    __swift_destroy_boxed_opaque_existential_1(&v105);
  }

  else
  {
    sub_1BA1B7524(&v105, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F6638C);
  }

  if (sub_1BA1B624C())
  {
    *&v108 = type metadata accessor for DataTypeDetailUnitCell();
    sub_1BA1B71A0();
    v73 = sub_1BA4A6808();
    v75 = v74;
    v76 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1BA27EFB4(0, v26[2] + 1, 1, v26);
    }

    v78 = v26[2];
    v77 = v26[3];
    if (v78 >= v77 >> 1)
    {
      v26 = sub_1BA27EFB4((v77 > 1), v78 + 1, 1, v26);
    }

    v109 = &type metadata for DataTypeDetailUnitCell.Item;
    v110 = sub_1BA1B71E8();
    v79 = swift_allocObject();
    *&v108 = v79;
    v79[2] = v73;
    v79[3] = v75;
    v79[4] = 0;
    v79[5] = 0;
    v79[6] = v76;
    v26[2] = v78 + 1;
    sub_1B9F1134C(&v108, &v26[5 * v78 + 4]);
  }

  sub_1B9F23348(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v81 = sub_1B9FE4F98(v26);

  v82 = v101;
  sub_1BA4A1788();
  v83 = sub_1BA4A1748();
  v85 = v84;
  (*(v102 + 8))(v82, v103);
  v86 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v86);
  *(inited + 32) = xmmword_1BA4C37E0;

  *(inited + 48) = v81;
  v87 = Array<A>.identifierToIndexDict()(v81);

  *(inited + 56) = v87;
  *(inited + 64) = v83;
  *(inited + 72) = v85;
  v88 = swift_allocObject();
  *(v88 + 16) = a4;
  v89 = sub_1B9F2E074(inited, 1, sub_1BA1B7584, v88);

  return v89;
}

unint64_t sub_1BA1B71A0()
{
  result = qword_1EDC67250;
  if (!qword_1EDC67250)
  {
    type metadata accessor for DataTypeDetailUnitCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC67250);
  }

  return result;
}

unint64_t sub_1BA1B71E8()
{
  result = qword_1EDC67258;
  if (!qword_1EDC67258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67258);
  }

  return result;
}

uint64_t type metadata accessor for DataTypeDetailDataManagementDataSource()
{
  result = qword_1EDC6A818;
  if (!qword_1EDC6A818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1B733C(void *a1)
{
  sub_1B9F6638C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  MEMORY[0x1BFAF1F00](v6);
  v9 = sub_1BA4A4168();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    sub_1B9F66128(v8, v4);
    MEMORY[0x1BFAF1F10](v4);
    return sub_1BA1B7524(v8, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720], sub_1B9F6638C);
  }

  else
  {
    v11 = [a1 traitCollection];
    sub_1B9F3AEE8();
    sub_1BA4A7358();

    v12[14] = v12[15];
    Presentation.cellBackgroundColor(for:)();
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v8);
  }
}

uint64_t sub_1BA1B7524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1BA1B75A0()
{
  result = qword_1EDC6B4D0;
  if (!qword_1EDC6B4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B4D0);
  }

  return result;
}

void __swiftcall PDFEmptySpace.init(origin:size:)(HealthExperienceUI::PDFEmptySpace *__return_ptr retstr, CGPoint_optional origin, CGSize size)
{
  retstr->origin.value.x = *&origin.is_nil;
  retstr->origin.value.y = v3;
  retstr->origin.is_nil = v4 & 1;
  retstr->size.width = origin.value.x;
  retstr->size.height = origin.value.y;
}

void sub_1BA1B7630()
{
  if (*(v0 + 16))
  {
    PDFBuilder.Document.drawingContext.getter();
  }
}

uint64_t sub_1BA1B7678(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA1B7698(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t CollectionViewLayoutContext.init(section:environment:numberOfItemsInSection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id SnapshotDataSource<>.createCompositionalLayoutFromDataSource(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v5;
  v11[6] = a1;
  v11[7] = a2;
  v12 = objc_opt_self();
  swift_unknownObjectRetain();
  sub_1B9F0F1B8(a1);
  v13 = [v12 defaultConfiguration];
  [v13 setContentInsetsReference_];
  v14 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v18[4] = sub_1BA1B7958;
  v18[5] = v11;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1B9F54940;
  v18[3] = &block_descriptor_45;
  v15 = _Block_copy(v18);
  v16 = [v14 initWithSectionProvider:v15 configuration:v13];

  _Block_release(v15);

  return v16;
}

uint64_t sub_1BA1B785C(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[2] = SnapshotDataSource.numberOfItems(in:)(a1);
  v15[3] = a3;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(a7 + 8);
  swift_unknownObjectRetain();
  v13 = v12(v15, a6, a7);
  swift_unknownObjectRelease();
  return v13;
}

uint64_t CollectionViewLayoutContext.environment.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t CompoundSectionedDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA1B7B18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA1B7C2C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_collapseEmptySections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA1B7C70(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_collapseEmptySections;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1BA1B7D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
  MEMORY[0x1BFAF1350](a3, a4);
}

unint64_t sub_1BA1B7D90(uint64_t a1)
{
  v3 = sub_1BA4A1998();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9F55C08(v6, a1);
  if (!v1)
  {
    v8 = result;
    (*(v4 + 8))(v6, v3);
    return v8;
  }

  return result;
}

uint64_t sub_1BA1B7E84@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B9F3A92C();
  sub_1B9F3A3B4(v7, v8, v9, v10, &v22);

  if (v23)
  {
    sub_1B9F1134C(&v22, v24);
    v11 = a3;
    return sub_1B9F1134C(v24, v11);
  }

  else
  {
    v21 = a3;
    result = sub_1B9F3B8FC(&v22, &qword_1EDC6AD40, &qword_1EDC6AD50);
    v13 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = (v13 + 40);
      while (v15 < *(v13 + 16))
      {
        v17 = *v16;
        type metadata accessor for CompoundSectionedDataSource();
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectRetain_n();
          sub_1BA1B7E84(&v22, a1, a2);
          swift_unknownObjectRelease();
          if (v23)
          {
            swift_unknownObjectRelease();
LABEL_16:
            sub_1B9F1134C(&v22, v24);
            v11 = v21;
            return sub_1B9F1134C(v24, v11);
          }

          sub_1B9F3B8FC(&v22, &qword_1EDC6AD40, &qword_1EDC6AD50);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        ObjectType = swift_getObjectType();
        v19 = (*(v17 + 8))(ObjectType, v17);
        sub_1B9F3A3B4(v19, v20, a1, a2, &v22);

        swift_unknownObjectRelease();
        if (v23)
        {
          goto LABEL_16;
        }

        ++v15;
        result = sub_1B9F3B8FC(&v22, &qword_1EDC6AD40, &qword_1EDC6AD50);
        v16 += 2;
        if (v14 == v15)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
      *(v21 + 32) = 0;
      *v21 = 0u;
      *(v21 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_1BA1B809C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1B9F3A92C();
  sub_1B9F3A3B4(v5, v6, v7, v8, &v31);

  v9 = v33;
  result = sub_1B9F3B8FC(&v31, &qword_1EDC6AD40, &qword_1EDC6AD50);
  if (v9)
  {

    return a1;
  }

  v11 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v28 = *(v11 + 16);
  if (!v28)
  {
    return 0;
  }

  v29 = a2;
  v30 = a1;
  v12 = 0;
  v13 = (v11 + 40);
  while (v12 < *(v11 + 16))
  {
    v14 = *v13;
    type metadata accessor for CompoundSectionedDataSource();
    v15 = swift_dynamicCastClass();
    swift_unknownObjectRetain();
    if (v15)
    {
      swift_unknownObjectRetain();
      v16 = sub_1BA1B809C(v30, v29);
      if (v17)
      {
        v24 = v16;
        v25 = v17;
        ObjectType = swift_getObjectType();
        v31 = (*(v14 + 8))(ObjectType, v14);
        v32 = v27;
        MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
        MEMORY[0x1BFAF1350](v24, v25);
        swift_unknownObjectRelease_n();

        return v31;
      }

      swift_unknownObjectRelease();
    }

    v18 = v11;
    v19 = swift_getObjectType();
    v20 = *(v14 + 8);
    v21 = v20(v19, v14);
    sub_1B9F3A3B4(v21, v22, v30, v29, &v31);

    if (v33)
    {
      sub_1B9F3B8FC(&v31, &qword_1EDC6AD40, &qword_1EDC6AD50);
      v31 = v20(v19, v14);
      v32 = v23;
      MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
      MEMORY[0x1BFAF1350](v30, v29);
      swift_unknownObjectRelease();
      return v31;
    }

    ++v12;
    swift_unknownObjectRelease();
    result = sub_1B9F3B8FC(&v31, &qword_1EDC6AD40, &qword_1EDC6AD50);
    v13 += 2;
    v11 = v18;
    if (v28 == v12)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA1B833C()
{
  v0 = sub_1B9F3A92C();
  v2 = v1;
  v4 = v3;
  v6 = sub_1B9F3A69C(v0, v5);
  v8 = v7;

  if (!v6)
  {

LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  v16[0] = v6;
  v16[1] = v8;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1BA10CBC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
LABEL_7:

    if (*(&v14 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    goto LABEL_9;
  }

  if (!*(&v14 + 1))
  {
    goto LABEL_7;
  }

  sub_1B9F1134C(&v13, v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  *&v13 = v2;
  *(&v13 + 1) = v4;
  v11 = (*(v10 + 40))(&v13, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v11 & 1;
}

uint64_t sub_1BA1B847C(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  sub_1BA1BA074();
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v54 - v8);
  v10 = sub_1BA4A1998();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  v57 = v2;
  v23 = sub_1B9F55C08(v19, a1);
  v54 = v6;
  v56 = v16;
  v24 = v59;
  v25 = *(v59 + 48);
  *v9 = v23;
  v9[1] = v26;
  v27 = v22;
  v28 = *(v11 + 32);
  v28(v9 + v25, v19, v10);
  v29 = *v9;
  v55 = v9[1];
  v28(v27, v9 + *(v24 + 48), v10);
  v30 = sub_1B9F55C08(v13, v58);
  v58 = v27;
  v31 = v59;
  v32 = *(v59 + 48);
  v33 = v54;
  *v54 = v30;
  v33[1] = v34;
  v28(v33 + v32, v13, v10);
  v35 = v33[1];
  v36 = v56;
  (v28)(v56, v33 + *(v31 + 48));
  v37 = v55;
  v62 = v29;
  v63 = v55;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, &qword_1EDC66C70);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v60, v64);
    ObjectType = swift_getObjectType();
    v39 = (*(v37 + 8))(ObjectType, v37);
    v41 = v40;
    v42 = swift_getObjectType();
    if (v39 == (*(v35 + 8))(v42, v35) && v41 == v43)
    {
      v45 = 1;
    }

    else
    {
      v45 = sub_1BA4A8338();
    }

    v48 = v65;
    v49 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v50 = v58;
    v51 = (*(v49 + 56))(v58, v36, v48, v49);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v52 = *(v11 + 8);
    v52(v36, v10);
    v52(v50, v10);
    v47 = v45 & v51;
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    v46 = *(v11 + 8);
    v46(v36, v10);
    v46(v58, v10);
    sub_1B9F3B8FC(v60, &unk_1EBBED870, &qword_1EDC66C70);
    v47 = 0;
  }

  return v47 & 1;
}

uint64_t sub_1BA1B8944(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B9FDBAF0(MEMORY[0x1E69E7CC0]);
  v36 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1B9F117BC(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
    v7 = *(v6 - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      sub_1BA1B9434(v8, v2, &v36);
      v8 += v9;
      --v5;
    }

    while (v5);
    v10 = v36;
  }

  else
  {
    v10 = v4;
  }

  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  while (v14)
  {
LABEL_16:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v17 << 6);
    v21 = (*(v10 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(v10 + 56) + 8 * v20);

    if (sub_1B9F3A69C(v22, v23) && (sub_1B9F0D9AC(0, &qword_1EDC67F10), sub_1BA10CBC8(), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v31 + 1))
      {
        sub_1B9F1134C(&v30, v33);
        v28 = v34;
        v29 = v10;
        v25 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v26 = *(v25 + 48);
        v27 = v25;
        v10 = v29;
        v26(v24, v28, v27);
        __swift_destroy_boxed_opaque_existential_1(v33);
      }
    }

    else
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *sub_1BA1B8BCC()
{
  sub_1B9F261DC(0, &unk_1EBBED8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EF0]);
  sub_1BA1BA6FC();
  v0 = sub_1BA4A6E18();
  v1 = MEMORY[0x1E69E7CC0];
  if (!v0)
  {
LABEL_14:
    v34 = v1;
    sub_1BA1BA778(0, &unk_1EBBED8D0, &qword_1EBBEAAA8, MEMORY[0x1E69E6EE8], MEMORY[0x1E69E62F8]);
    sub_1BA1BA7E8();
    return sub_1BA4A80E8();
  }

  v2 = v0;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1BA066EE0(0, v0 & ~(v0 >> 63), 0);
  result = sub_1BA4A6DF8();
  if (v2 < 0)
  {
    goto LABEL_19;
  }

  v33 = v38;
  while (1)
  {
    v4 = sub_1BA4A6E88();
    v6 = v5[1];
    v7 = v5[2];
    v8 = *(v5 + 33);
    v30 = v5[3];
    v31 = *v5;
    v28 = *(v5 + 32);
    sub_1BA051CD4();
    v4(&v34, 0);
    v32 = v2;
    v29 = v8;
    if (v8)
    {
      break;
    }

    v34 = v6;
    v35 = v7;
    sub_1BA164F44();
    result = sub_1BA4A6E08();
    if (!result[2])
    {
      goto LABEL_16;
    }

    v14 = result[4];
    v15 = result[5];
    v17 = result[6];
    v16 = result[7];

    MEMORY[0x1BFAF12A0](v14, v15, v17, v16);

    v34 = v6;
    v35 = v7;
    result = sub_1BA4A6E08();
    v13 = result[2];
    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_10:
    v34 = result;
    v35 = result + 4;
    v36 = 1;
    v37 = (2 * v13) | 1;
    sub_1B9F261DC(0, &qword_1EDC5E068, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6948]);
    sub_1B9F407D0();
    sub_1B9F439FC();
    v18 = sub_1BA4A6A48();
    v20 = v19;

    v34 = v18;
    v35 = v20;
    v21 = sub_1BA4A69D8();
    v23 = v22;
    sub_1BA051CDC();

    v24 = v33;
    v38 = v33;
    v26 = v33[2];
    v25 = v33[3];
    if (v26 >= v25 >> 1)
    {
      sub_1BA066EE0((v25 > 1), v26 + 1, 1);
      v24 = v38;
    }

    v24[2] = v26 + 1;
    v33 = v24;
    v27 = &v24[5 * v26];
    v27[4] = v31;
    v27[5] = v21;
    v27[6] = v23;
    v27[7] = v30;
    *(v27 + 64) = v28 & 1;
    *(v27 + 65) = v29;
    sub_1BA4A6E48();
    v2 = v32 - 1;
    if (v32 == 1)
    {
      v1 = v33;
      goto LABEL_14;
    }
  }

  v34 = v6;
  v35 = v7;
  sub_1BA164F44();
  result = sub_1BA4A6E08();
  if (result[2])
  {
    v9 = result[4];
    v10 = result[5];
    v11 = result[6];
    v12 = result[7];

    MEMORY[0x1BFAF12A0](v9, v10, v11, v12);

    v34 = v6;
    v35 = v7;
    result = sub_1BA4A6E08();
    v13 = result[2];
    if (!v13)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t CompoundSectionedDataSource.__allocating_init(makeChildren:)(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 208);

  return v3(v2);
}

uint64_t sub_1BA1B9200@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA1B92B0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t CompoundSectionedDataSource.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);

  return v1;
}

uint64_t sub_1BA1B9434(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1B9F117BC(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
  v5 = v4;
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - v6;
  v7 = MEMORY[0x1E69E6EF0];
  sub_1BA1BA778(0, &qword_1EBBED8F8, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  sub_1B9F261DC(0, &unk_1EBBED8B0, MEMORY[0x1E69E6158], v7);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = sub_1B9F3A92C();
  v31 = v18;
  v34 = v19;
  v35 = v16;
  v36 = v17;
  v37 = a3;
  v20 = *a3;
  if (*(*a3 + 16) && (v21 = sub_1B9F24A34(v16, v17), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_1BA1B8BCC();
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {

    sub_1BA1BA920(v10);
  }

  else
  {
    (*(v13 + 32))(v15, v10, v12);
    v24 = v32;
    (*(v13 + 16))(&v32[*(v5 + 52)], v15, v12);
    v25 = v34;
    *v24 = v31;
    v24[1] = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1BA280644(0, v23[2] + 1, 1, v23);
    }

    v27 = v23[2];
    v26 = v23[3];
    if (v27 >= v26 >> 1)
    {
      v23 = sub_1BA280644(v26 > 1, v27 + 1, 1, v23);
    }

    (*(v13 + 8))(v15, v12);
    v23[2] = v27 + 1;
    sub_1BA10CAD8(v24, v23 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27);
  }

  v28 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v28;
  *v28 = 0x8000000000000000;
  sub_1B9FF1EB4(v23, v35, v36, isUniquelyReferenced_nonNull_native);

  *v28 = v38;
  return result;
}

uint64_t CompoundSectionedDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

HealthExperienceUI::FallbackHeaderItem __swiftcall FallbackHeaderItem.init()()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v1 = 0xD00000000000001CLL;
  v1[1] = 0x80000001BA4EB5F0;
  v13 = &type metadata for FallbackHeaderItem;
  sub_1BA1BA14C();
  v13 = sub_1BA4A6808();
  v14 = v6;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1B9F46F90(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v7 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v7);

  v8 = (*(v3 + 8))(v5, v2);
  v12 = v14;
  v1[2] = v13;
  v1[3] = v12;
  result.uniqueIdentifier._object = v11;
  result.uniqueIdentifier._countAndFlagsBits = v10;
  result.reuseIdentifier._object = v9;
  result.reuseIdentifier._countAndFlagsBits = v8;
  return result;
}

uint64_t CompoundSectionedDataSource.description.getter()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001DLL, 0x80000001BA4F2440);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BA1B9C00()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001DLL, 0x80000001BA4F2440);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

uint64_t FallbackHeaderItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FallbackHeaderItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FallbackHeaderItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FallbackHeaderItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1BA1B9DB0(uint64_t a1)
{
  v2 = sub_1BA1BA8CC();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

HealthExperienceUI::FallbackCollectionViewItem __swiftcall FallbackCollectionViewItem.init()()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v1 = 0xD00000000000001ALL;
  v1[1] = 0x80000001BA4F2460;
  v13 = &type metadata for FallbackCollectionViewItem;
  sub_1BA1BA194();
  v13 = sub_1BA4A6808();
  v14 = v6;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1B9F46F90(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v7 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v7);

  v8 = (*(v3 + 8))(v5, v2);
  v12 = v14;
  v1[2] = v13;
  v1[3] = v12;
  result.uniqueIdentifier._object = v11;
  result.uniqueIdentifier._countAndFlagsBits = v10;
  result.reuseIdentifier._object = v9;
  result.reuseIdentifier._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_1BA1B9FBC(uint64_t a1)
{
  v2 = sub_1BA1BA878();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA1BA008(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  *(v5 + 16) = result + 1;
  v6 = v5 + 16 * result;
  *(v6 + 32) = a2;
  *(v6 + 40) = a5;
  return result;
}

unint64_t sub_1BA1BA020()
{
  result = qword_1EBBED848;
  if (!qword_1EBBED848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED848);
  }

  return result;
}

void sub_1BA1BA074()
{
  if (!qword_1EBBED860)
  {
    sub_1B9F0D9AC(255, &qword_1EDC67F10);
    sub_1BA4A1998();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBED860);
    }
  }
}

unint64_t sub_1BA1BA0F8()
{
  result = qword_1EBBED880;
  if (!qword_1EBBED880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED880);
  }

  return result;
}

unint64_t sub_1BA1BA14C()
{
  result = qword_1EBBED890;
  if (!qword_1EBBED890)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBED890);
  }

  return result;
}

unint64_t sub_1BA1BA194()
{
  result = qword_1EBBED8A0;
  if (!qword_1EBBED8A0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBED8A0);
  }

  return result;
}

unint64_t sub_1BA1BA1E4()
{
  result = qword_1EBBED8A8;
  if (!qword_1EBBED8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED8A8);
  }

  return result;
}

uint64_t dispatch thunk of CompoundSectionedDataSource.dataSource(for:)()
{
  return (*(*v0 + 280))();
}

{
  return (*(*v0 + 288))();
}

unint64_t sub_1BA1BA6FC()
{
  result = qword_1EBBEAAA0;
  if (!qword_1EBBEAAA0)
  {
    sub_1B9F261DC(255, &unk_1EBBED8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAAA0);
  }

  return result;
}

void sub_1BA1BA778(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B9F261DC(255, a3, MEMORY[0x1E69E6158], a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA1BA7E8()
{
  result = qword_1EBBED8E0;
  if (!qword_1EBBED8E0)
  {
    sub_1BA1BA778(255, &unk_1EBBED8D0, &qword_1EBBEAAA8, MEMORY[0x1E69E6EE8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED8E0);
  }

  return result;
}

unint64_t sub_1BA1BA878()
{
  result = qword_1EBBED8E8;
  if (!qword_1EBBED8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED8E8);
  }

  return result;
}

unint64_t sub_1BA1BA8CC()
{
  result = qword_1EBBED8F0;
  if (!qword_1EBBED8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED8F0);
  }

  return result;
}

uint64_t sub_1BA1BA920(uint64_t a1)
{
  sub_1BA1BA778(0, &qword_1EBBED8F8, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA1BAAE8()
{
  swift_unknownObjectRelease();

  sub_1B9F0E310(*(v0 + qword_1EBBED920));
  v1 = *(v0 + qword_1EBBED908);

  return sub_1B9F0E310(v1);
}

id HideablePregnancyArticlesFRCDataSource.__deallocating_deinit()
{
  [*&v0[qword_1EBBED900] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HideablePregnancyArticlesFRCDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA1BABB4(char *a1)
{
  v1 = *&a1[qword_1EBBED900];
  v2 = a1;
  [v1 unregisterObserver_];
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HideablePregnancyArticlesFRCDataSource();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BA1BAC1C(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_1B9F0E310(*(a1 + qword_1EBBED920));
  v2 = *(a1 + qword_1EBBED908);

  return sub_1B9F0E310(v2);
}

id sub_1BA1BACA0(uint64_t a1, int a2)
{
  v44 = a2;
  v43 = a1;
  sub_1B9F0A7B0(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42 - v4;
  v6 = *(v2 + qword_1EBBED910);
  v7 = *(v2 + qword_1EBBED910 + 8);
  sub_1BA4A27B8();
  sub_1B9F0A7B0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v8 = sub_1BA4A1C68();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v42 = xmmword_1BA4B5480;
  *(v11 + 16) = xmmword_1BA4B5480;
  v12 = *MEMORY[0x1E69A3BD0];
  (*(v9 + 104))(v11 + v10, v12, v8);
  if (v7)
  {
    v13 = sub_1BA4A0FA8();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = *(v2 + qword_1EBBED918);
    v15 = v6;
    v16 = MEMORY[0x1BFAED020](v11, 0, v5, v14);

    sub_1B9F1C1B0(v5);
    sub_1B9F109F8();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BA4B7510;
    *(v17 + 32) = v16;
    *(v17 + 40) = v15;
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v18 = v15;
    v19 = v16;
    v20 = sub_1BA4A6AE8();

    v21 = [objc_opt_self() andPredicateWithSubpredicates_];

    if (v44)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1B9F109F8();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B5470;
    *(v22 + 32) = v6;
    v23 = sub_1BA4A0FA8();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
    v14 = *(v2 + qword_1EBBED918);
    v24 = v6;
    v21 = MEMORY[0x1BFAED020](v11, v22, v5, v14);

    sub_1B9F1C1B0(v5);
    if (v44)
    {
      goto LABEL_7;
    }
  }

  if ((v43 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return v21;
  }

LABEL_7:
  v26 = v14;
  sub_1B9F0A7B0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v27 = sub_1BA4A1C68();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v42;
  (*(v28 + 104))(v30 + v29, v12, v27);
  sub_1B9F109F8();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5470;
  result = [objc_opt_self() pregnancyType];
  if (result)
  {
    v32 = result;
    sub_1BA4A27B8();
    *(v31 + 32) = v32;
    v33 = sub_1BA4A0FA8();
    (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
    v34 = MEMORY[0x1BFAED020](v30, v31, v5, v26);

    sub_1B9F1C1B0(v5);
    v35 = objc_opt_self();
    v36 = [v35 notPredicateWithSubpredicate_];
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BA4B7510;
    *(v37 + 32) = v21;
    *(v37 + 40) = v36;
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v38 = v21;
    v39 = v36;
    v40 = sub_1BA4A6AE8();

    v41 = [v35 andPredicateWithSubpredicates_];

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA1BB2D8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EBBED908);
  v4 = *(v2 + qword_1EBBED908);
  *v3 = a1;
  v3[1] = a2;

  return sub_1B9F0E310(v4);
}

uint64_t HideablePregnancyArticlesFRCDataSource.pregnancyModelDidUpdate(_:)(void *a1)
{
  v32 = a1;
  swift_getObjectType();
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    v31 = v2;
    sub_1BA4A3DA8();
    v12 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v12, v30))
    {
      v13 = swift_slowAlloc();
      v27 = v13;
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v13 = 136315138;
      v14 = sub_1BA4A85D8();
      v29 = v1;
      v16 = sub_1B9F0B82C(v14, v15, aBlock);
      v1 = v29;

      v17 = v27;
      *(v27 + 1) = v16;
      _os_log_impl(&dword_1B9F07000, v12, v30, "[%s] Received pregnancy model update", v17, 0xCu);
      v18 = v28;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v2 = v31;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v19 = sub_1BA4A7308();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  aBlock[4] = sub_1BA1BBD78;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_47;
  v23 = _Block_copy(aBlock);

  v24 = v22;
  sub_1BA4A64A8();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A7B0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v7, v4, v23);
  _Block_release(v23);

  (*(v2 + 8))(v4, v1);
  (*(v33 + 8))(v7, v34);
}

void sub_1BA1BB7DC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 state];
    v6 = *&v4[qword_1EBBED920];
    if (v6)
    {
      v7 = v5;

      v8 = v6(v7, 0);
      sub_1B9F0E310(v6);
    }

    else
    {
      v8 = sub_1BA1BACA0(v5, 0);
    }

    v9 = qword_1EDC84AD8;
    swift_beginAccess();
    v10 = *&v4[v9];
    v11 = v4;
    v12 = [v10 fetchRequest];
    v13 = [v12 predicate];

    if (v13)
    {
      sub_1B9F0ADF8(0, &qword_1EDC6B630);
      v14 = v8;
      v15 = sub_1BA4A7798();

      if (v15)
      {

        v8 = v14;
LABEL_12:

        return;
      }
    }

    else
    {
      v16 = v8;
    }

    v17 = [*&v4[v9] fetchRequest];
    [v17 setPredicate_];

    sub_1B9F128B4();
    sub_1BA047948();

    v18 = *&v11[qword_1EBBED908];
    if (v18)
    {

      v18(v19);

      sub_1B9F0E310(v18);
      v8 = v11;
    }

    else
    {
    }

    goto LABEL_12;
  }
}

char *sub_1BA1BBA58(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = objc_allocWithZone(type metadata accessor for HideablePregnancyArticlesFRCDataSource());

  return sub_1BA1BBAEC(a1, a2, a3, a4, a5, a6, a7, v14);
}

char *sub_1BA1BBAEC(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = (a8 + qword_1EBBED908);
  *v13 = 0;
  v13[1] = 0;
  *(a8 + qword_1EBBED900) = a5;
  v14 = a8 + qword_1EBBED910;
  *v14 = v11;
  *(v14 + 8) = v12;
  *(a8 + qword_1EBBED918) = a2;
  v15 = (a8 + qword_1EBBED920);
  *v15 = a6;
  v15[1] = a7;
  v31 = v11;
  v32 = v12;
  v30 = *a4;
  v16 = v11;

  v17 = a1;
  sub_1B9F0F1B8(a6);
  v18 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v17, a2, &v31, &v30);
  v19 = qword_1EBBED900;
  v20 = *&v18[qword_1EBBED900];
  v21 = v18;
  v22 = [v20 getCurrentPregnancyModel];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 state];
  }

  else
  {
    v24 = 0;
  }

  v25 = *&v21[qword_1EBBED920];
  if (v25)
  {

    v26 = v25(v24, v23 == 0);
    sub_1B9F0E310(v25);
  }

  else
  {
    v26 = sub_1BA1BACA0(v24, v23 == 0);
  }

  v27 = qword_1EDC84AD8;
  swift_beginAccess();
  v28 = [*&v21[v27] fetchRequest];
  [v28 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  [*&v18[v19] registerObserver:v21 isUserInitiated:1];
  sub_1B9F0E310(a6);

  return v21;
}

uint64_t type metadata accessor for HideablePregnancyArticlesFRCDataSource()
{
  result = qword_1EDC60A10;
  if (!qword_1EDC60A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1BBE68(uint64_t a1)
{
  v2 = sub_1BA1BC048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1BBEA4(uint64_t a1)
{
  v2 = sub_1BA1BC048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmptySnidgetVisualizationView.ViewModel.encode(to:)(void *a1)
{
  sub_1BA1BBFEC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1BC048();
  sub_1BA4A8548();
  return (*(v4 + 8))(v6, v3);
}

void sub_1BA1BBFEC()
{
  if (!qword_1EBBED988)
  {
    sub_1BA1BC048();
    v0 = sub_1BA4A8298();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED988);
    }
  }
}

unint64_t sub_1BA1BC048()
{
  result = qword_1EBBED990;
  if (!qword_1EBBED990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED990);
  }

  return result;
}

uint64_t sub_1BA1BC0EC(void *a1)
{
  sub_1BA1BBFEC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA1BC048();
  sub_1BA4A8548();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BA1BC220(uint64_t a1)
{
  result = sub_1BA1BC248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA1BC248()
{
  result = qword_1EDC63F40;
  if (!qword_1EDC63F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63F40);
  }

  return result;
}

unint64_t sub_1BA1BC2D0()
{
  result = qword_1EBBED998;
  if (!qword_1EBBED998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED998);
  }

  return result;
}

unint64_t sub_1BA1BC328()
{
  result = qword_1EBBED9A0;
  if (!qword_1EBBED9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9A0);
  }

  return result;
}

uint64_t HKTypeGroup.keywordID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKTypeGroup.displayName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HKTypeGroup.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  v2 = sub_1BA4A84D8();
  return MEMORY[0x1BFAF2ED0](v2);
}

id sub_1BA1BC458(SEL *a1)
{
  v3 = [objc_opt_self() categoryWithID_];
  v4 = [v3 *a1];

  return v4;
}

uint64_t HKTypeGroup.iconName.getter()
{
  v1 = [objc_opt_self() categoryWithID_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 largeListIconName];

  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  return v4;
}

uint64_t HKTypeGroup.displayNameForEmbedding.getter()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() categoryWithID_];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 embeddedDisplayName];
    v1 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
  }

  return v1;
}

void *sub_1BA1BC5F0()
{
  result = sub_1BA1BC610();
  off_1EDC6EA10 = result;
  return result;
}

uint64_t sub_1BA1BC610()
{
  v29 = objc_opt_self();
  v0 = [v29 sortedCategories];
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0);
  v1 = sub_1BA4A6B08();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v4 = MEMORY[0x1E69E7CC0];
LABEL_23:

    return v4;
  }

LABEL_21:
  v2 = sub_1BA4A7CC8();
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = 0;
  v28 = v1 & 0xC000000000000001;
  v4 = MEMORY[0x1E69E7CC0];
  v26 = v1;
  v27 = v1 & 0xFFFFFFFFFFFFFF8;
  v5 = &selRef_createHKUnitPreferenceController;
  v25 = v2;
  while (1)
  {
    if (v28)
    {
      v6 = MEMORY[0x1BFAF2860](v3, v1);
    }

    else
    {
      if (v3 >= *(v27 + 16))
      {
        goto LABEL_20;
      }

      v6 = *(v1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    [v6 v5[332]];
    v9 = HKDisplayCategoryIdentifierToString();
    if (!v9)
    {
      break;
    }

    v10 = v9;
    v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v31 = v12;

    v13 = [v7 v5[332]];
    v14 = [v7 displayName];
    v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v16 = v15;

    v17 = [v29 categoryWithID_];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1BA4A7258();
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B9F2A754(0, *(v4 + 2) + 1, 1, v4);
    }

    v22 = *(v4 + 2);
    v21 = *(v4 + 3);
    if (v22 >= v21 >> 1)
    {
      v4 = sub_1B9F2A754((v21 > 1), v22 + 1, 1, v4);
    }

    *(v4 + 2) = v22 + 1;
    v23 = &v4[48 * v22];
    *(v23 + 4) = v20;
    *(v23 + 5) = v31;
    *(v23 + 6) = v13;
    *(v23 + 7) = v30;
    *(v23 + 8) = v16;
    *(v23 + 9) = v19;
    ++v3;
    v1 = v26;
    v5 = &selRef_createHKUnitPreferenceController;
    if (v8 == v25)
    {
      goto LABEL_23;
    }
  }

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

void *sub_1BA1BC908()
{
  result = sub_1BA1BC928();
  off_1EDC6EA20 = result;
  return result;
}

uint64_t sub_1BA1BC928()
{
  if (qword_1EDC6EA08 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v0 = off_1EDC6EA10;
    v1 = sub_1B9FDB2E4(MEMORY[0x1E69E7CC0]);
    v26 = v0[2];
    if (!v26)
    {
      return v1;
    }

    v2 = 0;
    v3 = v0 + 9;
    v25 = v0;
    while (v2 < v0[2])
    {
      v6 = *(v3 - 5);
      v5 = *(v3 - 4);
      v7 = *(v3 - 3);
      v27 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = *v3;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_1B9F24A34(v6, v5);
      v13 = v1[2];
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_19;
      }

      v17 = v12;
      if (v1[3] < v16)
      {
        sub_1BA0F3974(v16, isUniquelyReferenced_nonNull_native);
        v11 = sub_1B9F24A34(v6, v5);
        if ((v17 & 1) != (v18 & 1))
        {
          result = sub_1BA4A83B8();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v17)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v23 = v11;
      sub_1BA0F194C();
      v11 = v23;
      if (v17)
      {
LABEL_4:
        v4 = (v1[7] + 48 * v11);
        *v4 = v6;
        v4[1] = v5;
        v4[2] = v7;
        v4[3] = v27;
        v4[4] = v8;
        v4[5] = v9;

        goto LABEL_5;
      }

LABEL_13:
      v1[(v11 >> 6) + 8] |= 1 << v11;
      v19 = (v1[6] + 16 * v11);
      *v19 = v6;
      v19[1] = v5;
      v20 = (v1[7] + 48 * v11);
      *v20 = v6;
      v20[1] = v5;
      v20[2] = v7;
      v20[3] = v27;
      v20[4] = v8;
      v20[5] = v9;

      v21 = v1[2];
      v15 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v15)
      {
        goto LABEL_20;
      }

      v1[2] = v22;
LABEL_5:
      ++v2;
      v3 += 6;
      v0 = v25;
      if (v26 == v2)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

void static HKTypeGroup.typeGroup(for:)(void *a1@<X8>)
{
  if (qword_1EDC6EA08 != -1)
  {
LABEL_11:
    swift_once();
  }

  v15 = off_1EDC6EA10;
  v14 = *(off_1EDC6EA10 + 2);
  if (v14)
  {
    v1 = 0;
    v2 = (off_1EDC6EA10 + 72);
    while (1)
    {
      if (v1 >= v15[2])
      {
        __break(1u);
        goto LABEL_11;
      }

      v3 = *(v2 - 5);
      v4 = *(v2 - 4);
      v6 = *(v2 - 3);
      v5 = *(v2 - 2);
      v7 = *(v2 - 1);
      v8 = *v2;
      v9 = objc_opt_self();

      v10 = [v9 categoryWithID_];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      sub_1B9F0ADF8(0, &qword_1EDC6E350);
      v12 = sub_1BA4A7798();

      if (v12)
      {
        *a1 = v3;
        a1[1] = v4;
        a1[2] = v6;
        a1[3] = v5;
        a1[4] = v7;
        a1[5] = v8;
        return;
      }

      ++v1;

      v2 += 6;
      if (v14 == v1)
      {
        goto LABEL_13;
      }
    }

    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000029, 0x80000001BA4F2650);
    type metadata accessor for HKDisplayCategoryIdentifier(0);
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](8236, 0xE200000000000000);
    MEMORY[0x1BFAF1350](v5, v7);
  }

LABEL_13:
  sub_1BA4A8018();
  __break(1u);
}

void static HKTypeGroup.typeGroup(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() categoryWithID_];
  if (v3)
  {
    v4 = v3;
    static HKTypeGroup.typeGroup(for:)(a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t HKTypeGroup.style.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = [objc_opt_self() categoryWithID_];
  v7 = [v6 largeListIcon];

  if (!v7)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  *a1 = v7;
  a1[1] = v4;
  a1[2] = v5;
  a1[6] = 0;
  a1[7] = 0;
}

uint64_t HKTypeGroup.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1BA4A8488();
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  v2 = sub_1BA4A84D8();
  MEMORY[0x1BFAF2ED0](v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1BCFD8()
{
  v1 = *(v0 + 16);
  sub_1BA4A8488();
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  v2 = sub_1BA4A84D8();
  MEMORY[0x1BFAF2ED0](v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1BD03C()
{
  v1 = *(v0 + 16);
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  v2 = sub_1BA4A84D8();
  return MEMORY[0x1BFAF2ED0](v2);
}

uint64_t sub_1BA1BD098()
{
  v1 = *(v0 + 16);
  sub_1BA4A8488();
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  v2 = sub_1BA4A84D8();
  MEMORY[0x1BFAF2ED0](v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA1BD0F8@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = [objc_opt_self() categoryWithID_];
  v7 = [v6 largeListIcon];

  if (!v7)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  *a1 = v7;
  a1[1] = v4;
  a1[2] = v5;
  a1[6] = 0;
  a1[7] = 0;
}

uint64_t _s18HealthExperienceUI11HKTypeGroupV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BA4A8338() & 1) == 0 || v2 != v7 || (v3 != v6 || v4 != v9) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  return sub_1B9FF1258(v5, v8);
}

unint64_t sub_1BA1BD298()
{
  result = qword_1EDC69600;
  if (!qword_1EDC69600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69600);
  }

  return result;
}

unint64_t sub_1BA1BD318()
{
  result = qword_1EBBF2E70;
  if (!qword_1EBBF2E70)
  {
    sub_1B9F7E0A0(255, &qword_1EBBED9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2E70);
  }

  return result;
}

id sub_1BA1BD458(uint64_t (*a1)(double), double a2, double a3, double a4, double a5)
{
  sub_1B9F7E0A0(0, &qword_1EDC5ECE0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v25[-1] - v15;
  v17 = a1(v14);
  v26.receiver = v5;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a2, a3, a4, a5);
  sub_1B9F7E0A0(0, &qword_1EBBED9A8);
  v25[3] = v19;
  v25[4] = sub_1BA1BD318();
  __swift_allocate_boxed_opaque_existential_1(v25);
  v20 = objc_opt_self();
  v21 = v18;
  v22 = [v20 isAppleInternalInstall];
  if (v22)
  {
    MEMORY[0x1EEE9AC00](v22);
    *(&v24 - 2) = 1819043139;
    *(&v24 - 1) = 0xE400000000000000;
  }

  sub_1BA4A59B8();
  sub_1BA4A5998();
  (*(v13 + 8))(v16, v12);
  MEMORY[0x1BFAF1EF0](v25);

  return v21;
}

id sub_1BA1BD708(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(double))
{
  sub_1B9F7E0A0(0, &qword_1EDC5ECE0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v27[-1] - v17;
  v19 = a7(v16);
  v28.receiver = a1;
  v28.super_class = v19;
  v20 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a2, a3, a4, a5);
  sub_1B9F7E0A0(0, &qword_1EBBED9A8);
  v27[3] = v21;
  v27[4] = sub_1BA1BD318();
  __swift_allocate_boxed_opaque_existential_1(v27);
  v22 = objc_opt_self();
  v23 = v20;
  v24 = [v22 isAppleInternalInstall];
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    *(&v26 - 2) = 1819043139;
    *(&v26 - 1) = 0xE400000000000000;
  }

  sub_1BA4A59B8();
  sub_1BA4A5998();
  (*(v15 + 8))(v18, v14);
  MEMORY[0x1BFAF1EF0](v27);

  return v23;
}

id sub_1BA1BDA00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t FallbackView.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FallbackView.body.getter()
{
  v1 = sub_1BA4A57E8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *v0;
  v2 = v0[1];
  sub_1BA4A57D8();
  sub_1BA4A57C8();
  sub_1BA4A57B8();
  sub_1BA4A57C8();
  sub_1BA4A5808();
  v4 = sub_1BA4A5DF8();
  v6 = v5;
  v8 = v7;
  sub_1BA4A5988();
  v9 = sub_1BA4A5DC8();
  v11 = v10;
  v13 = v12;
  sub_1BA102AF4(v4, v6, v8 & 1);

  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v2;

  sub_1BA4A5F08();

  sub_1BA102AF4(v9, v11, v13 & 1);
}

void sub_1BA1BDC80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A15D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    v10 = objc_opt_self();
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v18 = 0xD000000000000010;
    v19 = 0x80000001BA4F27D0;
    MEMORY[0x1BFAF1350](a1, a2);
    MEMORY[0x1BFAF1350](93, 0xE100000000000000);
    v11 = sub_1BA4A6758();

    v12 = sub_1BA4A6758();
    sub_1BA0B5A7C();
    v13 = MEMORY[0x1E69E7CC0];
    v14 = sub_1BA4A6AE8();
    v15 = [v10 hk:v11 tapToHealthRadarURLWithTitle:v12 description:5 classification:0 reproducibility:v14 keywords:2 autoDiagnostics:0 attachments:?];

    sub_1BA4A1588();
    v16 = sub_1BA4A1548();
    (*(v5 + 8))(v7, v4);
    sub_1B9FDB798(v13);
    v17 = sub_1BA4A6618();

    [v9 openSensitiveURL:v16 withOptions:v17];
  }
}

uint64_t sub_1BA1BDEF8@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA1BE558();

  result = sub_1BA4A6288();
  *a1 = result;
  return result;
}

uint64_t sub_1BA1BDF58@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA1BE2CC(0, &qword_1EBBED9B0, sub_1BA1BE1B0, &type metadata for PlatformCellCornerRadius, MEMORY[0x1E697E830]);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  v5 = sub_1BA4A60A8();
  sub_1BA1BE1B0();
  v7 = &v4[*(v6 + 36)];
  sub_1BA4A63B8();
  v8 = sub_1BA4A5B78();
  sub_1BA1BE2CC(0, &qword_1EBBED9C8, MEMORY[0x1E6981C80], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
  v7[*(v9 + 36)] = v8;
  *v4 = v5;
  *(v4 + 4) = 256;
  sub_1BA1BE338();
  result = sub_1BA4A6288();
  *a1 = result;
  return result;
}

uint64_t sub_1BA1BE0A0@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA4A63C8();
  sub_1BA4A5278();
  sub_1BA1BE5AC();
  sub_1BA1BE604();
  result = sub_1BA4A6288();
  *a1 = result;
  return result;
}

uint64_t sub_1BA1BE138@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A6288();
  *a1 = result;
  return result;
}

void sub_1BA1BE1B0()
{
  if (!qword_1EBBED9B8)
  {
    sub_1BA1BE250();
    sub_1BA1BE2CC(255, &qword_1EBBED9C8, MEMORY[0x1E6981C80], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED9B8);
    }
  }
}

void sub_1BA1BE250()
{
  if (!qword_1EBBED9C0)
  {
    sub_1B9F58524();
    v0 = sub_1BA4A5198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED9C0);
    }
  }
}

void sub_1BA1BE2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1BA1BE338()
{
  result = qword_1EBBED9D0;
  if (!qword_1EBBED9D0)
  {
    sub_1BA1BE2CC(255, &qword_1EBBED9B0, sub_1BA1BE1B0, &type metadata for PlatformCellCornerRadius, MEMORY[0x1E697E830]);
    sub_1BA1BE3F0();
    sub_1B9F8A01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9D0);
  }

  return result;
}

unint64_t sub_1BA1BE3F0()
{
  result = qword_1EBBED9D8;
  if (!qword_1EBBED9D8)
  {
    sub_1BA1BE1B0();
    sub_1BA1BE470();
    sub_1BA1BE4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9D8);
  }

  return result;
}

unint64_t sub_1BA1BE470()
{
  result = qword_1EBBED9E0;
  if (!qword_1EBBED9E0)
  {
    sub_1BA1BE250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9E0);
  }

  return result;
}

unint64_t sub_1BA1BE4C8()
{
  result = qword_1EBBED9E8;
  if (!qword_1EBBED9E8)
  {
    sub_1BA1BE2CC(255, &qword_1EBBED9C8, MEMORY[0x1E6981C80], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9E8);
  }

  return result;
}

unint64_t sub_1BA1BE558()
{
  result = qword_1EBBED9F0;
  if (!qword_1EBBED9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED9F0);
  }

  return result;
}

void sub_1BA1BE5AC()
{
  if (!qword_1EBBED9F8)
  {
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED9F8);
    }
  }
}

unint64_t sub_1BA1BE604()
{
  result = qword_1EBBEDA00;
  if (!qword_1EBBEDA00)
  {
    sub_1BA1BE5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDA00);
  }

  return result;
}

uint64_t sub_1BA1BE684(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA1BE734(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id InternalFeedItemListViewController.__allocating_init(contentKinds:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *&v3[v4] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_initWithCollectionViewLayout_, 0);
}

id InternalFeedItemListViewController.init(contentKinds:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *&v1[v3] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InternalFeedItemListViewController();
  return objc_msgSendSuper2(&v5, sel_initWithCollectionViewLayout_, 0);
}

id InternalFeedItemListViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InternalFeedItemListViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds] = MEMORY[0x1E69E7CC0];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InternalFeedItemListViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1BA1BEB54()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = type metadata accessor for ContentKindFeedItemDataSourceProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v8[3] = v3;
  v8[4] = &off_1F380C5F8;
  v8[0] = v4;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();

  sub_1B9F10C48(v8, &v0[v5]);
  swift_endAccess();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for InternalFeedItemListViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v6 = sub_1BA4A6758();

  [v0 setTitle_];
}

id InternalFeedItemListViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id InternalFeedItemListViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalFeedItemListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1BEE60()
{
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UIViewController.resolvedHealthExperienceStore.getter(v27);
  sub_1BA4A27B8();
  v4 = MEMORY[0x1BFAED110]();
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v6 = sub_1BA4A6758();
  v7 = [v5 initWithKey:v6 ascending:1 selector:sel_localizedStandardCompare_];

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5470;
  *(v8 + 32) = v7;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v9 = v7;
  v10 = sub_1BA4A6AE8();

  [v4 setSortDescriptors_];

  v11 = *(v0 + 16);
  v12 = sub_1BA4A0FA8();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = sub_1BA4A1D78();
  *(v13 + 40) = 0;
  v14 = MEMORY[0x1BFAED020](v11, 0, v3, v13);

  sub_1B9F1C1B0(v3);
  [v4 setPredicate_];

  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v15 = v4;
  v16 = sub_1BA4A1B68();
  v17 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v15 managedObjectContext:v16 sectionNameKeyPath:0 cacheName:0];

  v18 = qword_1EDC6D410;
  v19 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v28[4] = xmmword_1EDC6D458;
  v28[5] = *&qword_1EDC6D468;
  v28[6] = xmmword_1EDC6D478;
  v28[7] = xmmword_1EDC6D488;
  v28[0] = xmmword_1EDC6D418;
  v28[1] = *&qword_1EDC6D428;
  v28[2] = xmmword_1EDC6D438;
  v28[3] = xmmword_1EDC6D448;
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v26[4] = xmmword_1EDC6D458;
  v26[5] = *&qword_1EDC6D468;
  v26[6] = xmmword_1EDC6D478;
  v26[7] = xmmword_1EDC6D488;
  v26[0] = xmmword_1EDC6D418;
  v26[1] = *&qword_1EDC6D428;
  v26[2] = xmmword_1EDC6D438;
  v26[3] = xmmword_1EDC6D448;
  sub_1B9F1D9A4(v28, v25);
  v20 = sub_1B9F293A8(v26);
  v21 = objc_allocWithZone(type metadata accessor for ListFeedItemsDataSource());
  *&v21[qword_1EBBF0168] = 0;
  *&v21[qword_1EBC09850] = v20;
  v22 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v19);
  sub_1B9F1DEA0();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B5480;
  *(v23 + 32) = v22;
  *(v23 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v23;
}

uint64_t sub_1BA1BF25C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1BF3E4()
{
  v1 = v0;
  v2 = sub_1BA4A28B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 104);
  v7(v6, *MEMORY[0x1E69A3138], v2, v4);
  v8 = sub_1BA4A2898();
  v9 = *(v3 + 8);
  v9(v6, v2);
  (v7)(v6, *MEMORY[0x1E69A3140], v2);
  v10 = sub_1BA4A2898();
  v9(v6, v2);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v1 + v11, v44);
  v12 = v45;
  v13 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v14 = (*(v13 + 72))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v44);
  v15 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7D40];
  if (v8 & 1) != 0 && (v14 & 1) != 0 && (v10)
  {
    sub_1BA1C01E0();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BA4B5480;
    sub_1B9F109F8();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BA4B7510;
    v19 = sub_1BA4A6758();
    v42 = objc_opt_self();
    v20 = [v42 systemImageNamed_];

    sub_1B9F0ADF8(0, &unk_1EDC5E0B0);
    (*((*v16 & *v1) + 0x230))();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = v20;
    v22 = sub_1BA4A77E8();
    v44[0] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v44[1] = v23;
    v24 = v22;

    MEMORY[0x1BFAF1350](0x617461446464412ELL, 0xE800000000000000);

    v25 = sub_1BA4A6758();

    [v24 setAccessibilityIdentifier_];

    *(v18 + 32) = v24;
    if (qword_1EBBE84C0 != -1)
    {
      swift_once();
    }

    v26 = qword_1EBBE84C8;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = qword_1EBC09650;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v27;
    *(v18 + 40) = sub_1BA4A77E8();
    v29 = sub_1BA4A6758();
    v30 = [v42 systemImageNamed_];

    sub_1B9F0ADF8(0, &qword_1EBBEDA10);
    sub_1BA4A76C8();
    sub_1B9F0ADF8(0, &qword_1EDC6B600);
    swift_unknownObjectRetain();
    *(v17 + 32) = sub_1BA4A7138();
    v43 = v17;
    v16 = MEMORY[0x1E69E7D40];
    goto LABEL_20;
  }

  sub_1B9F0A534(v1 + v11, v44);
  v31 = v45;
  v32 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v33 = (*(v32 + 72))(v31, v32);
  __swift_destroy_boxed_opaque_existential_1(v44);
  if ((v33 & 1) == 0)
  {
    v17 = MEMORY[0x1E69E7CC0];
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v34 = sub_1BA328364();
  MEMORY[0x1BFAF1510]();
  if (*(v43 + 16) >= *(v43 + 24) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  v17 = v43;
  if (v10)
  {
LABEL_15:
    sub_1B9F0ADF8(0, &qword_1EDC6B600);
    if (qword_1EBBE84C8 != -1)
    {
      swift_once();
    }

    v35 = qword_1EBC09650;
    v36 = v1;
    sub_1BA4A7138();
    MEMORY[0x1BFAF1510]();
    if (*(v43 + 16) >= *(v43 + 24) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v17 = v43;
  }

LABEL_20:
  v37 = (*((*v16 & *v1) + 0x280))();
  if (v37)
  {
    v1 = v37;
    MEMORY[0x1BFAF1510]();
    if (*(v43 + 16) >= *(v43 + 24) >> 1)
    {
LABEL_32:
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v17 = v43;
  }

  v38 = 0;
  v44[0] = v15;
  v39 = *(v17 + 16);
  while (v39 != v38)
  {
    if (v38 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v40 = *(v17 + 8 * v38++ + 32);
    if (v40)
    {
      v1 = v40;
      MEMORY[0x1BFAF1510]();
      if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v15 = v44[0];
    }
  }

  return v15;
}

void sub_1BA1BFC4C(uint64_t a1, uint64_t a2, const char **a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *a3;
    v7 = Strong;
    [Strong v6];
  }
}

id sub_1BA1BFCB8()
{
  sub_1B9F0ADF8(0, &qword_1EDC6B600);
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x230);
  v1();
  v2 = sub_1BA4A6758();
  v3 = [objc_opt_self() systemImageNamed_];

  swift_unknownObjectRetain();
  v4 = sub_1BA4A7138();
  sub_1BA4A7DF8();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4F2960);
  v5 = sub_1BA4A6758();

  [v4 setAccessibilityIdentifier_];

  v6 = v4;
  v1();
  v7 = sub_1BA4A6758();

  [v6 setAccessibilityValue_];

  return v6;
}

uint64_t sub_1BA1BFFF0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC09640 = result;
  *algn_1EBC09648 = v1;
  return result;
}

void sub_1BA1C00A4()
{
  v0 = sub_1BA4A6758();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EBC09650 = v1;
}

void sub_1BA1C01E0()
{
  if (!qword_1EDC5DBC8)
  {
    sub_1BA1C0238();
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DBC8);
    }
  }
}

void sub_1BA1C0238()
{
  if (!qword_1EDC5E510)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B600);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E510);
    }
  }
}

Swift::Void __swiftcall CardStackPresentation.present(_:dismissVC:)(UIViewController *_, UIViewController *dismissVC)
{
  if (*v2 >= 2u)
  {
    v6 = [(UIViewController *)dismissVC navigationController];
    if (v6 && (v7 = v6, v8 = [(UINavigationController *)v6 presentingViewController], v7, v8) && (sub_1B9F21ADC(), sub_1B9F0D950(0, &qword_1EBBEDA20), (swift_dynamicCast() & 1) != 0))
    {
      v9 = *(&v18 + 1);
      if (*(&v18 + 1))
      {
        v10 = v19;
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v18 + 1));
        v11 = (*(v10 + 3))(v9, v10);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_13:
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = _;
        v19 = sub_1BA1C0548;
        v20 = v12;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v18 = sub_1B9F0B040;
        *(&v18 + 1) = &block_descriptor_48;
        v13 = _Block_copy(&aBlock);
        v14 = v11;
        v15 = _;

        [(UIViewController *)dismissVC dismissViewControllerAnimated:1 completion:v13];

        _Block_release(v13);
        return;
      }
    }

    else
    {
      v19 = 0;
      aBlock = 0u;
      v18 = 0u;
    }

    sub_1B9F43A50(&aBlock, &qword_1EBBEDA18, &qword_1EBBEDA20);
    v11 = 0;
    goto LABEL_13;
  }

  v5 = [(UIViewController *)dismissVC parentViewController];
  if (v5)
  {
    v16 = v5;
    [(UIViewController *)v5 presentViewController:_ animated:1 completion:0];
  }
}

id sub_1BA1C0548()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result presentViewController:*(v0 + 24) animated:1 completion:0];
  }

  return result;
}

Swift::Void __swiftcall CardStackPresentation.pushViewController(_:dismissVC:)(UIViewController *_, UIViewController *dismissVC)
{
  if (*v2 >= 2u)
  {
    v6 = [(UIViewController *)dismissVC navigationController];
    if (v6 && (v7 = v6, v8 = [(UINavigationController *)v6 presentingViewController], v7, v8) && (sub_1B9F21ADC(), sub_1B9F0D950(0, &qword_1EBBEDA20), (swift_dynamicCast() & 1) != 0))
    {
      v9 = *(&v19 + 1);
      if (*(&v19 + 1))
      {
        v10 = v20;
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v19 + 1));
        v11 = (*(v10 + 3))(v9, v10);
        v12 = [v11 navigationController];

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_13:
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = _;
        v20 = sub_1BA1C07E0;
        v21 = v13;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v19 = sub_1B9F0B040;
        *(&v19 + 1) = &block_descriptor_6_5;
        v14 = _Block_copy(&aBlock);
        v15 = v12;
        v16 = _;

        [(UIViewController *)dismissVC dismissViewControllerAnimated:1 completion:v14];

        _Block_release(v14);
        return;
      }
    }

    else
    {
      v20 = 0;
      aBlock = 0u;
      v19 = 0u;
    }

    sub_1B9F43A50(&aBlock, &qword_1EBBEDA18, &qword_1EBBEDA20);
    v12 = 0;
    goto LABEL_13;
  }

  v5 = [(UIViewController *)dismissVC navigationController];
  if (v5)
  {
    v17 = v5;
    [(UINavigationController *)v5 pushViewController:_ animated:1];
  }
}

id sub_1BA1C07E0()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result pushViewController:*(v0 + 24) animated:1];
  }

  return result;
}

uint64_t CardStackPresentation.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

void sub_1BA1C088C(char *a1@<X8>)
{
  v3 = sub_1B9F21ADC();
  v27 = v3;
  v26[0] = v1;
  sub_1B9F0AD9C(v26, v22 + 1);
  sub_1B9F0D950(0, &qword_1EDC63A28);
  v4 = v1;
  if (swift_dynamicCast())
  {
    v5 = *(&v24 + 1);
    v6 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    (*(v6 + 8))(v22, v5, v6);
    v7 = v22[0];
    __swift_destroy_boxed_opaque_existential_1(&v23);
    __swift_destroy_boxed_opaque_existential_1(v26);
    goto LABEL_23;
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_1B9F43A50(&v23, &qword_1EDC63A20, &qword_1EDC63A28);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v8 = sub_1BA096838();
  v9 = v8;
  v20 = v4;
  v21 = a1;
  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_5:
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFAF2860](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          v14 = *(&v24 + 1);
          v15 = v25;
          __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
          (*(v15 + 8))(v22, v14, v15);
          v7 = v22[0];
          __swift_destroy_boxed_opaque_existential_1(&v23);
          __swift_destroy_boxed_opaque_existential_1(v26);
          a1 = v21;
          goto LABEL_23;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_17:
          v10 = sub_1BA4A7CC8();
          if (!v10)
          {
            break;
          }

          goto LABEL_5;
        }

        v12 = *(v9 + 8 * v11 + 32);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_14;
        }
      }

      v27 = v3;
      v26[0] = v12;
      sub_1B9F0AD9C(v26, v22 + 1);
      if (swift_dynamicCast())
      {
        goto LABEL_15;
      }

      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      sub_1B9F43A50(&v23, &qword_1EDC63A20, &qword_1EDC63A28);
      __swift_destroy_boxed_opaque_existential_1(v26);
      ++v11;
    }

    while (v13 != v10);
  }

  v16 = [v4 parentViewController];
  a1 = v21;
  if (!v16 || (v17 = v16, sub_1BA1C088C(&v23), v17, v7 = v23, v23 == 3))
  {
    v18 = [v20 presentingViewController];
    if (!v18 || (v19 = v18, sub_1BA1C088C(&v23), v19, v7 = v23, v23 == 3))
    {
      v7 = 3;
    }
  }

LABEL_23:
  *a1 = v7;
}

unint64_t sub_1BA1C0BAC()
{
  result = qword_1EBBEDA28;
  if (!qword_1EBBEDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDA28);
  }

  return result;
}

uint64_t CollectionViewGroupedFooterItem.init(text:uniqueIdentifier:accessibilityIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA0603B0();
  *a7 = sub_1BA4A6808();
  a7[1] = v14;
  v15 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v16 = a7 + *(v15 + 32);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = (a7 + *(v15 + 28));
  *v17 = a1;
  v17[1] = a2;
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  result = swift_storeEnumTagMultiPayload();
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1BA1C0D30(uint64_t a1)
{
  v59 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1C3AEC();
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D31C(0, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v58 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54 - v23;
  v25 = OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item;
  swift_beginAccess();
  v65 = v1;
  sub_1BA1C3BD4(v1 + v25, v67, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v68)
  {
    v55 = v10;
    v57 = v7;
    sub_1B9FCD918();
    v26 = swift_dynamicCast();
    v27 = *(v20 + 56);
    v27(v18, v26 ^ 1u, 1, v19);
    v56 = *(v20 + 48);
    if (v56(v18, 1, v19) != 1)
    {
      v28 = v24;
      sub_1BA18F0B8(v18, v24);
      sub_1BA1C3BD4(v59, v67, &qword_1EDC6E1A0, sub_1B9FCD918);
      if (v68)
      {
        v29 = v61;
        v30 = swift_dynamicCast() ^ 1;
        v31 = v29;
      }

      else
      {
        sub_1B9F43FD8(v67, &qword_1EDC6E1A0, sub_1B9FCD918);
        v29 = v61;
        v31 = v61;
        v30 = 1;
      }

      v27(v31, v30, 1, v19);
      v45 = v56;
      sub_1BA1C3B6C(v28, v13, type metadata accessor for CollectionViewGroupedFooterItem);
      v27(v13, 0, 1, v19);
      v46 = *(v60 + 48);
      v47 = v57;
      sub_1BA1C3BD4(v29, v57, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
      sub_1BA1C3BD4(v13, v47 + v46, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
      if (v45(v47, 1, v19) == 1)
      {
        sub_1B9F43FD8(v13, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
        if (v45(v47 + v46, 1, v19) == 1)
        {
          sub_1B9F43FD8(v47, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
          sub_1B9F43FD8(v29, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
          return sub_1BA1C3C40(v28, type metadata accessor for CollectionViewGroupedFooterItem);
        }
      }

      else
      {
        v48 = v55;
        sub_1BA1C3BD4(v47, v55, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
        if (v45(v47 + v46, 1, v19) != 1)
        {
          v52 = v58;
          sub_1BA18F0B8(v47 + v46, v58);
          v53 = _s18HealthExperienceUI31CollectionViewGroupedFooterItemV2eeoiySbAC_ACtFZ_0(v48, v52);
          sub_1BA1C3C40(v52, type metadata accessor for CollectionViewGroupedFooterItem);
          sub_1B9F43FD8(v13, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
          sub_1BA1C3C40(v48, type metadata accessor for CollectionViewGroupedFooterItem);
          sub_1B9F43FD8(v47, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
          sub_1B9F43FD8(v29, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
          v49 = v65;
          if (v53)
          {
            return sub_1BA1C3C40(v28, type metadata accessor for CollectionViewGroupedFooterItem);
          }

          goto LABEL_16;
        }

        sub_1B9F43FD8(v13, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
        sub_1BA1C3C40(v48, type metadata accessor for CollectionViewGroupedFooterItem);
      }

      sub_1BA1C3C40(v47, sub_1BA1C3AEC);
      sub_1B9F43FD8(v29, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
      v49 = v65;
LABEL_16:
      sub_1BA1C1D44(v28);
      v50 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1BA1C2790(v50, v51);

      [v49 setAccessibilityTraits_];
      return sub_1BA1C3C40(v28, type metadata accessor for CollectionViewGroupedFooterItem);
    }
  }

  else
  {
    sub_1B9F43FD8(v67, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v20 + 56))(v18, 1, 1, v19);
  }

  sub_1B9F43FD8(v18, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
  sub_1BA4A3E48();
  v32 = v65;
  v33 = v65;
  v34 = sub_1BA4A3E88();
  v35 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v66 = v37;
    *v36 = 136446466;
    v67[0] = ObjectType;
    swift_getMetatypeMetadata();
    v38 = sub_1BA4A6808();
    v40 = sub_1B9F0B82C(v38, v39, &v66);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    sub_1BA1C3BD4(v32 + v25, v67, &qword_1EDC6E1A0, sub_1B9FCD918);
    sub_1B9F0D31C(0, &qword_1EDC6E1A0, sub_1B9FCD918);
    v41 = sub_1BA4A6808();
    v43 = sub_1B9F0B82C(v41, v42, &v66);

    *(v36 + 14) = v43;
    _os_log_impl(&dword_1B9F07000, v34, v35, "[%{public}s] item %s is not an CollectionViewGroupedFooterItem", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v37, -1, -1);
    MEMORY[0x1BFAF43A0](v36, -1, -1);
  }

  return (*(v63 + 8))(v4, v64);
}

uint64_t sub_1BA1C161C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item;
  swift_beginAccess();
  return sub_1BA1C3BD4(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA1C1690(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item;
  swift_beginAccess();
  sub_1BA1C3BD4(v1 + v3, v5, &qword_1EDC6E1A0, sub_1B9FCD918);
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA1C0D30(v5);
  sub_1B9F43FD8(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
  return sub_1B9F43FD8(v5, &qword_1EDC6E1A0, sub_1B9FCD918);
}

void (*sub_1BA1C1764(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_1BA1C3BD4(v1 + v5, v4, &qword_1EDC6E1A0, sub_1B9FCD918);
  return sub_1BA1C1818;
}

void sub_1BA1C1818(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_1BA1C3BD4(*a1, v2 + 40, &qword_1EDC6E1A0, sub_1B9FCD918);
    sub_1BA1C3BD4(v3 + v4, v2 + 80, &qword_1EDC6E1A0, sub_1B9FCD918);
    swift_beginAccess();
    sub_1B9F63E74(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_1BA1C0D30(v2 + 80);
    sub_1B9F43FD8(v2 + 80, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  else
  {
    sub_1BA1C3BD4(v3 + v4, v2 + 40, &qword_1EDC6E1A0, sub_1B9FCD918);
    swift_beginAccess();
    sub_1B9F63E74(v2, v3 + v4);
    swift_endAccess();
    sub_1BA1C0D30(v2 + 40);
  }

  sub_1B9F43FD8(v2 + 40, &qword_1EDC6E1A0, sub_1B9FCD918);
  sub_1B9F43FD8(v2, &qword_1EDC6E1A0, sub_1B9FCD918);

  free(v2);
}

id CollectionViewGroupedFooterCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CollectionViewGroupedFooterCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  sub_1B9F0D31C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-1] - v10;
  v12 = &v4[OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item];
  v13 = type metadata accessor for CollectionViewGroupedFooterCell();
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v20.receiver = v4;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v19[3] = sub_1BA4A4428();
  v19[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v19);
  v15 = v14;
  sub_1BA4A43E8();
  MEMORY[0x1BFAF1EF0](v19);
  sub_1BA4A40E8();
  v16 = sub_1BA4A4168();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  MEMORY[0x1BFAF1F10](v11);

  return v15;
}

id CollectionViewGroupedFooterCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CollectionViewGroupedFooterCell.init(coder:)(void *a1)
{
  sub_1B9F0D31C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-1] - v4;
  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31CollectionViewGroupedFooterCell_item];
  v7 = type metadata accessor for CollectionViewGroupedFooterCell();
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v14.receiver = v1;
  v14.super_class = v7;
  v8 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  if (v8)
  {
    v13[3] = sub_1BA4A4428();
    v13[4] = MEMORY[0x1E69DC110];
    __swift_allocate_boxed_opaque_existential_1(v13);
    v9 = v8;
    sub_1BA4A43E8();
    MEMORY[0x1BFAF1EF0](v13);
    sub_1BA4A40E8();
    v10 = sub_1BA4A4168();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    MEMORY[0x1BFAF1F10](v5);
  }

  return v8;
}

uint64_t sub_1BA1C1D44(uint64_t a1)
{
  v28 = sub_1BA4A12C8();
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A4428();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v17 = a1 + *(v15 + 32);
  if (*(v17 + 32))
  {
    v17 = MEMORY[0x1E69DC5C0];
  }

  *&v16 = *(v17 + 24);
  v32 = v16;
  *&v16 = *(v17 + 16);
  v31 = v16;
  *&v16 = *(v17 + 8);
  v29 = v16;
  *&v16 = *v17;
  v30 = v16;
  sub_1BA4A43E8();
  sub_1BA1C3B6C(a1 + *(v15 + 28), v10, type metadata accessor for CollectionViewGroupedFooterItem.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BA4A43B8();
  }

  else
  {
    v18 = v10;
    v19 = v28;
    (*(v2 + 32))(v7, v18, v28);
    sub_1BA1C39F8();
    (*(v2 + 16))(v4, v7, v19);
    sub_1BA4A73A8();
    sub_1BA4A4228();
    (*(v2 + 8))(v7, v19);
  }

  v20 = sub_1BA4A4328();
  *&v21.f64[0] = v30;
  *&v21.f64[1] = v29;
  *&v23.f64[0] = v31;
  *&v23.f64[1] = v32;
  v24 = vaddq_f64(v23, v22[1]);
  *v22 = vaddq_f64(v21, *v22);
  v22[1] = v24;
  v20(v33, 0);
  v33[3] = v11;
  v33[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(v12 + 16))(boxed_opaque_existential_1, v14, v11);
  MEMORY[0x1BFAF1EF0](v33);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1BA1C209C()
{
  v1 = sub_1BA4A4428();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D31C(0, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v24, v6);
  if (v25)
  {
    sub_1B9FCD918();
    v9 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    v10 = swift_dynamicCast();
    v11 = *(v9 - 8);
    (*(v11 + 56))(v8, v10 ^ 1u, 1, v9);
    if ((*(v11 + 48))(v8, 1, v9) != 1)
    {
      v12 = &v8[*(v9 + 32)];
      v13 = *(v12 + 1);
      v22 = *v12;
      v23 = v13;
      v14 = v12[32];
      sub_1BA1C3C40(v8, type metadata accessor for CollectionViewGroupedFooterItem);
      if (v14 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_1B9F43FD8(v24, &qword_1EDC6E1A0, sub_1B9FCD918);
    v15 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  sub_1B9F43FD8(v8, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
LABEL_7:
  v16 = *(MEMORY[0x1E69DC5C0] + 16);
  v22 = *MEMORY[0x1E69DC5C0];
  v23 = v16;
LABEL_8:
  sub_1BA4A43E8();

  sub_1BA4A43B8();
  v17 = sub_1BA4A4328();
  v19 = vaddq_f64(v23, v18[1]);
  *v18 = vaddq_f64(v22, *v18);
  v18[1] = v19;
  v17(v24, 0);
  v25 = v1;
  v26 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
  MEMORY[0x1BFAF1EF0](v24);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1BA1C2420(void *a1)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D31C(0, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v27, v8);
  if (v28)
  {
    sub_1B9FCD918();
    v11 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    v12 = swift_dynamicCast();
    v13 = *(v11 - 8);
    (*(v13 + 56))(v10, v12 ^ 1u, 1, v11);
    if ((*(v13 + 48))(v10, 1, v11) != 1)
    {
      v14 = &v10[*(v11 + 32)];
      v15 = *(v14 + 1);
      v25 = *v14;
      v26 = v15;
      v16 = v14[32];
      sub_1BA1C3C40(v10, type metadata accessor for CollectionViewGroupedFooterItem);
      if (v16 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_1B9F43FD8(v27, &qword_1EDC6E1A0, sub_1B9FCD918);
    v17 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  }

  sub_1B9F43FD8(v10, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
LABEL_7:
  v18 = *(MEMORY[0x1E69DC5C0] + 16);
  v25 = *MEMORY[0x1E69DC5C0];
  v26 = v18;
LABEL_8:
  sub_1BA4A43E8();
  v19 = a1;
  sub_1BA4A4228();
  v20 = sub_1BA4A4328();
  v22 = vaddq_f64(v26, v21[1]);
  *v21 = vaddq_f64(v25, *v21);
  v21[1] = v22;
  v20(v27, 0);
  v28 = v3;
  v29 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
  MEMORY[0x1BFAF1EF0](v27);
  return (*(v4 + 8))(v6, v3);
}

void sub_1BA1C2790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0D31C(0, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18[-1] - v8;
  if (!a2)
  {
    goto LABEL_8;
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))(v18, v7);
  if (!v18[3])
  {
    sub_1B9F43FD8(v18, &qword_1EDC6E1A0, sub_1B9FCD918);
    v16 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    goto LABEL_7;
  }

  sub_1B9FCD918();
  v10 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  v11 = swift_dynamicCast();
  v12 = *(v10 - 8);
  (*(v12 + 56))(v9, v11 ^ 1u, 1, v10);
  if ((*(v12 + 48))(v9, 1, v10) == 1)
  {
LABEL_7:
    sub_1B9F43FD8(v9, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
    goto LABEL_8;
  }

  v14 = *(v9 + 4);
  v13 = *(v9 + 5);

  sub_1BA1C3C40(v9, type metadata accessor for CollectionViewGroupedFooterItem);
  if (v13)
  {
    v18[0] = a1;
    v18[1] = a2;

    MEMORY[0x1BFAF1350](46, 0xE100000000000000);
    MEMORY[0x1BFAF1350](v14, v13);

    v15 = sub_1BA4A6758();

    [v3 setAccessibilityIdentifier_];

    return;
  }

LABEL_8:
  [v3 setAccessibilityIdentifier_];
}

id CollectionViewGroupedFooterCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewGroupedFooterCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1BA1C2B40(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))();
  return sub_1B9FCF2C4;
}

uint64_t (*sub_1BA1C2C88(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x68))();
  return sub_1B9FCDCF4;
}

uint64_t CollectionViewGroupedFooterItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CollectionViewGroupedFooterItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CollectionViewGroupedFooterItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CollectionViewGroupedFooterItem.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

__n128 CollectionViewGroupedFooterItem.additionalLayoutMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CollectionViewGroupedFooterItem(0) + 32);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 CollectionViewGroupedFooterItem.additionalLayoutMargins.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CollectionViewGroupedFooterItem(0) + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t CollectionViewGroupedFooterItem.init(attributedText:uniqueIdentifier:accessibilityIdentifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA0603B0();
  *a5 = sub_1BA4A6808();
  a5[1] = v10;
  v11 = a5 + *(type metadata accessor for CollectionViewGroupedFooterItem(0) + 32);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  sub_1BA4A1308();
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  result = swift_storeEnumTagMultiPayload();
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

void static CollectionViewGroupedFooterItem.favoriteCellDescription.getter(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 features];

    if (v4)
    {
      [v4 isPinnedInBrowse];

      type metadata accessor for DataTypeDetailFavoritesDataSource(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v7 = sub_1BA4A1318();
      v9 = v8;

      type metadata accessor for CollectionViewGroupedFooterCell();
      sub_1BA0603B0();
      *a1 = sub_1BA4A6808();
      a1[1] = v10;
      v11 = type metadata accessor for CollectionViewGroupedFooterItem(0);
      v12 = a1 + *(v11 + 32);
      *v12 = 0u;
      *(v12 + 1) = 0u;
      v12[32] = 1;
      v13 = (a1 + *(v11 + 28));
      *v13 = v7;
      v13[1] = v9;
      type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
      swift_storeEnumTagMultiPayload();
      a1[2] = 0xD000000000000019;
      a1[3] = 0x80000001BA4F2A60;
      a1[4] = 0xD000000000000019;
      a1[5] = 0x80000001BA4F2A60;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA1C3200(uint64_t a1)
{
  v2 = sub_1BA1C3A44(&qword_1EDC63270);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t _s18HealthExperienceUI31CollectionViewGroupedFooterItemV7ContentO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v29 = sub_1BA4A12C8();
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  sub_1BA1C3A88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 56)];
  sub_1BA1C3B6C(a1, v15, type metadata accessor for CollectionViewGroupedFooterItem.Content);
  sub_1BA1C3B6C(a2, v17, type metadata accessor for CollectionViewGroupedFooterItem.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BA1C3B6C(v15, v9, type metadata accessor for CollectionViewGroupedFooterItem.Content);
    v19 = *v9;
    v18 = v9[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v19 == *v17 && v18 == *(v17 + 1))
      {

        LOBYTE(v22) = 1;
      }

      else
      {
        v21 = sub_1BA4A8338();

        v22 = v21 << 31 >> 31;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_1BA1C3B6C(v15, v12, type metadata accessor for CollectionViewGroupedFooterItem.Content);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = v17;
      v25 = v29;
      (*(v4 + 32))(v6, v24, v29);
      LOBYTE(v22) = sub_1BA4A1218();
      v26 = *(v4 + 8);
      v26(v6, v25);
      v26(v12, v25);
LABEL_14:
      v23 = type metadata accessor for CollectionViewGroupedFooterItem.Content;
      goto LABEL_15;
    }

    (*(v4 + 8))(v12, v29);
  }

  LOBYTE(v22) = 0;
  v23 = sub_1BA1C3A88;
LABEL_15:
  sub_1BA1C3C40(v15, v23);
  return v22 & 1;
}

uint64_t _s18HealthExperienceUI31CollectionViewGroupedFooterItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_1BA4A8338() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  if (_s18HealthExperienceUI31CollectionViewGroupedFooterItemV7ContentO2eeoiySbAE_AEtFZ_0(a1 + *(v8 + 28), a2 + *(v8 + 28)))
  {
    v9 = *(v8 + 32);
    v10 = (a1 + v9);
    v11 = *(a1 + v9 + 32);
    v12 = (a2 + v9);
    if (v11)
    {
      if ((LOBYTE(v12[2].f64[0]) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((LOBYTE(v12[2].f64[0]) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v10, *v12), vceqq_f64(v10[1], v12[1])), xmmword_1BA4C4100)) & 0xF) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t dispatch thunk of CollectionViewGroupedFooterCell.updateFooter(with:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
}

void sub_1BA1C38C8()
{
  sub_1B9F2F388();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CollectionViewGroupedFooterItem.Content(319);
    if (v1 <= 0x3F)
    {
      sub_1B9F0D31C(319, &qword_1EDC5E348, type metadata accessor for NSDirectionalEdgeInsets);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA1C3990()
{
  result = sub_1BA4A12C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BA1C39F8()
{
  result = qword_1EDC6B580;
  if (!qword_1EDC6B580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B580);
  }

  return result;
}

uint64_t sub_1BA1C3A44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionViewGroupedFooterItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA1C3A88()
{
  if (!qword_1EDC63280[0])
  {
    type metadata accessor for CollectionViewGroupedFooterItem.Content(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDC63280);
    }
  }
}

void sub_1BA1C3AEC()
{
  if (!qword_1EDC63218)
  {
    sub_1B9F0D31C(255, qword_1EDC63220, type metadata accessor for CollectionViewGroupedFooterItem);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC63218);
    }
  }
}

uint64_t sub_1BA1C3B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA1C3BD4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F0D31C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA1C3C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

UIInterfaceOrientation __swiftcall UIViewController.interfaceOrientation()()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 interfaceOrientation];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BrowseTileViewController.Style.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56) >> 61;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        sub_1BA4A7DF8();
        MEMORY[0x1BFAF1350](0x7865546567616D69, 0xEA00000000002874);
        v18 = [v1 description];
        v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v21 = v20;

        MEMORY[0x1BFAF1350](v19, v21);

        MEMORY[0x1BFAF1350](8236, 0xE200000000000000);
        sub_1BA4A7FB8();
        MEMORY[0x1BFAF1350](8236, 0xE200000000000000);
        MEMORY[0x1BFAF1350](v2, v3);
        v16 = 0xE000000000000000;
        v15 = 0;
        goto LABEL_15;
      }

      v5 = *(v0 + 8);
      sub_1BA4A7DF8();

      v23 = 0x6373694474786574;
      v24 = 0xEF28657275736F6CLL;
      v7 = v1;
      goto LABEL_10;
    }

    v12 = *(v0 + 8);
    v13 = 0x6974634174786574;
    v14 = 0xEB00000000286E6FLL;
LABEL_13:
    v23 = v13;
    v24 = v14;
    v7 = *v0;
    goto LABEL_14;
  }

  if (!v4)
  {
    v5 = *(v0 + 16);
    v22 = *(v0 + 8);
    sub_1BA4A7DF8();

    v23 = 0xD000000000000014;
    v24 = 0x80000001BA4F2B00;
    v6 = [v1 description];
    goto LABEL_9;
  }

  if (v4 != 1)
  {
    v12 = *(v0 + 8);
    v13 = 0x2874786574;
    v14 = 0xE500000000000000;
    goto LABEL_13;
  }

  v5 = *(v0 + 16);
  v22 = *(v0 + 8);
  sub_1BA4A7DF8();

  v23 = 0x7865546567616D69;
  v24 = 0xEA00000000002874;
  v6 = [v1 description];
LABEL_9:
  v8 = v6;
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  MEMORY[0x1BFAF1350](v9, v11);

  MEMORY[0x1BFAF1350](8236, 0xE200000000000000);
  v7 = v22;
LABEL_10:
  v12 = v5;
LABEL_14:
  MEMORY[0x1BFAF1350](v7, v12);
  v16 = v24;
  v15 = v23;
LABEL_15:
  MEMORY[0x1BFAF1350](v15, v16);

  return 0x203E656C7974533CLL;
}

uint64_t sub_1BA1C40D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  v5 = result;
  if (v4)
  {
    v6 = v4;
    v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v7;

    MEMORY[0x1BFAF1350](0x2E6573776F72422ELL, 0xE800000000000000);

    MEMORY[0x1BFAF1350](v5, v6);

    v5 = v9;
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v5;
  a2[1] = v8;
  return result;
}

uint64_t sub_1BA1C41D8()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  if (v2)
  {
    v3 = v2;
    v4 = result;
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    MEMORY[0x1BFAF1350](0x2E6573776F72422ELL, 0xE800000000000000);

    MEMORY[0x1BFAF1350](v4, v3);

    return v5;
  }

  return result;
}

uint64_t (*sub_1BA1C42D0(uint64_t *a1))()
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x188))();
  if (v3)
  {
    v5 = v3;
    v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v6;

    MEMORY[0x1BFAF1350](0x2E6573776F72422ELL, 0xE800000000000000);

    MEMORY[0x1BFAF1350](v4, v5);

    v4 = v9;
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v4;
  a1[1] = v7;
  return sub_1B9FF3F48;
}

uint64_t sub_1BA1C43F0(uint64_t a1, void **a2)
{
  sub_1BA1CADA0(a1, v6, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_context;
  swift_beginAccess();
  sub_1BA1CAE24(v6, v3 + v4, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  swift_endAccess();
  if ([v3 isViewLoaded])
  {
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x170))();
  }

  return sub_1BA1CB808(v6, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
}

uint64_t sub_1BA1C453C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_context;
  swift_beginAccess();
  sub_1BA1CAE24(a1, v1 + v3, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  swift_endAccess();
  if ([v1 isViewLoaded])
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))();
  }

  return sub_1BA1CB808(a1, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
}

id (*sub_1BA1C4638(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1C469C;
}

id sub_1BA1C469C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x170))();
    }
  }

  return result;
}

uint64_t sub_1BA1C471C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1B9F6BFCC(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1BA1CACCC(a1, &v7 - v4, qword_1EDC6E9C8, type metadata accessor for SectionContext, v2, sub_1B9F6BFCC);
  return sub_1BA1C48A4(v5);
}

uint64_t sub_1BA1C4808@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  swift_beginAccess();
  return sub_1BA1CACCC(v1 + v3, a1, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
}

uint64_t sub_1BA1C48A4(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1B9F6BFCC(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for SectionContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  swift_beginAccess();
  sub_1B9F75CCC(a1, v1 + v11);
  swift_endAccess();
  sub_1BA1CACCC(v1 + v11, v6, qword_1EDC6E9C8, type metadata accessor for SectionContext, v3, sub_1B9F6BFCC);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = MEMORY[0x1E69E6720];
    sub_1BA1CAD40(a1, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
    return sub_1BA1CAD40(v6, qword_1EDC6E9C8, type metadata accessor for SectionContext, v12, sub_1B9F6BFCC);
  }

  else
  {
    sub_1B9FE1020(v6, v10);
    v14 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
    if (v14)
    {
      v15 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x128);
      v16 = v14;
      LOBYTE(v15) = v15(v10);
      v17 = sub_1BA1C8B70();
      [v17 setHidden_];
    }

    sub_1BA1CAD40(a1, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
    return sub_1BA1CBBAC(v10, type metadata accessor for SectionContext);
  }
}

void (*sub_1BA1C4BD0(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  sub_1B9F6BFCC(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[4] = v8;
  v9 = type metadata accessor for SectionContext(0);
  v5[5] = v9;
  v10 = *(v9 - 8);
  v5[6] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v12 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  v5[7] = v11;
  v5[8] = v12;
  swift_beginAccess();
  return sub_1BA1C4D24;
}

void sub_1BA1C4D24(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = v3[4];
    sub_1BA1CACCC(v3[3] + v3[8], v6, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_1BA1CAD40(v3[4], qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
    }

    else
    {
      v7 = v3[3];
      sub_1B9FE1020(v3[4], v3[7]);
      v8 = *(v7 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
      v9 = v3[7];
      if (v8)
      {
        v10 = *((*MEMORY[0x1E69E7D40] & *v3[3]) + 0x128);
        v11 = v8;
        LOBYTE(v10) = v10(v9);
        v12 = sub_1BA1C8B70();
        [v12 setHidden_];
      }

      sub_1BA1CBBAC(v9, type metadata accessor for SectionContext);
    }
  }

  v13 = v3[4];
  free(v3[7]);
  free(v13);

  free(v3);
}

uint64_t sub_1BA1C4F10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v15 = *(v3 + 80);
  v14[3] = v6;
  v14[4] = v7;
  v14[2] = v5;
  v8 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v8;
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  v11 = *(v3 + 64);
  *(a2 + 80) = *(v3 + 80);
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 32) = v9;
  return sub_1BA1CACCC(v14, &v13, &unk_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA1C4FE0(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v18 = a1[2];
  v19 = v2;
  v20 = a1[4];
  v21 = *(a1 + 10);
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle;
  v16 = *a1;
  v17 = v3;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v22[0] = *v4;
  v22[1] = v5;
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v23 = *(v4 + 80);
  v22[3] = v7;
  v22[4] = v8;
  v22[2] = v6;
  v10 = v19;
  v9 = v20;
  v11 = v18;
  *(v4 + 80) = v21;
  *(v4 + 48) = v10;
  *(v4 + 64) = v9;
  *(v4 + 32) = v11;
  v12 = v17;
  *v4 = v16;
  *(v4 + 16) = v12;
  v13 = MEMORY[0x1E69E6720];
  sub_1BA1CACCC(&v16, &v15, &unk_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
  return sub_1BA1CAD40(v22, &unk_1EBBEDA48, &type metadata for BrowseTileViewController.Style, v13, sub_1B9F23348);
}

uint64_t sub_1BA1C5104@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v12 = *(v3 + 32);
  v4 = v12;
  v13 = v5;
  v14 = *(v3 + 64);
  v6 = v14;
  v15 = *(v3 + 80);
  v8 = *(v3 + 16);
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  *(a1 + 80) = v15;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *a1 = v7;
  *(a1 + 16) = v8;
  return sub_1BA1CACCC(v11, &v10, &unk_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA1C51C0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  return sub_1BA1CAD40(v9, &unk_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA1C52E8(uint64_t a1, uint64_t *a2)
{
  sub_1BA1CADA0(a1, v6, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider;
  swift_beginAccess();
  sub_1BA1CAE24(v6, v3 + v4, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider);
  swift_endAccess();
  sub_1BA1C53B8();
  return sub_1BA1CB808(v6, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider, sub_1B9F0D950);
}

uint64_t sub_1BA1C53B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v157[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v157[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v157[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v157[-v14];
  v16 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider;
  swift_beginAccess();
  sub_1BA1CADA0(v1 + v16, &v210, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider);
  if (!v211)
  {
    return sub_1BA1CB808(&v210, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider, sub_1B9F0D950);
  }

  v161 = v15;
  v162 = v12;
  v163 = v9;
  v164 = ObjectType;
  v165 = v6;
  v166 = v4;
  v167 = v3;
  sub_1B9F1134C(&v210, v212);
  v17 = v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle;
  swift_beginAccess();
  v18 = *(v17 + 3);
  v206 = *(v17 + 2);
  v207 = v18;
  v208 = *(v17 + 4);
  v209 = *(v17 + 10);
  v19 = *(v17 + 1);
  v204 = *v17;
  v205 = v19;
  v20 = v213;
  v21 = v214;
  __swift_project_boxed_opaque_existential_1(v212, v213);
  v22 = *(v21 + 8);
  sub_1BA1CACCC(&v204, v185, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
  v22(&v198, v20, v21);
  v23 = v201;
  v195 = v204;
  v196 = v205;
  v197 = v206;
  v24 = v207;
  v194 = v209;
  v193 = v208;
  if (v207 < 0xFFFFFFFE00000000 || (*(&v207 + 1) & 0xFFFFFFFE00000000) != 0x200000000)
  {
    v185[0] = v204;
    v185[1] = v205;
    v185[2] = v206;
    v185[3] = v207;
    v185[4] = v208;
    v186 = v209;
    v179 = v204;
    v180 = v205;
    v184 = v209;
    v181 = v206;
    v182 = v207;
    v183 = v208;
    if (v201 < 0xFFFFFFFE00000000 || (*(&v201 + 1) & 0xFFFFFFFE00000000) != 0x200000000)
    {
      v173 = v198;
      v174 = v199;
      v175 = v200;
      v177 = v202;
      v178 = v203;
      v176 = v201;
      v48 = MEMORY[0x1E69E6720];
      sub_1BA1CACCC(v185, &v170, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
      v49 = _s18HealthExperienceUI24BrowseTileViewControllerC5StyleO2eeoiySbAE_AEtFZ_0(&v179, &v173);
      v168[2] = v175;
      v168[3] = v176;
      v168[4] = v177;
      v169 = v178;
      v168[0] = v173;
      v168[1] = v174;
      sub_1BA1CBB44(v168);
      v171[1] = v181;
      v171[2] = v182;
      v171[3] = v183;
      v172 = v184;
      v170 = v179;
      v171[0] = v180;
      sub_1BA1CBB44(&v170);
      v173 = v195;
      v174 = v196;
      v175 = v197;
      v176 = v24;
      v177 = v193;
      v178 = v194;
      sub_1BA1CAD40(&v173, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, v48, sub_1B9F23348);
      if (v49)
      {
        return __swift_destroy_boxed_opaque_existential_1(v212);
      }

LABEL_12:
      v26 = v213;
      v27 = v214;
      __swift_project_boxed_opaque_existential_1(v212, v213);
      (*(v27 + 8))(&v173, v26, v27);
      v28 = *(v17 + 3);
      v181 = *(v17 + 2);
      v182 = v28;
      v183 = *(v17 + 4);
      v184 = *(v17 + 10);
      v29 = *(v17 + 1);
      v179 = *v17;
      v180 = v29;
      v30 = v176;
      *(v17 + 2) = v175;
      *(v17 + 3) = v30;
      *(v17 + 4) = v177;
      *(v17 + 10) = v178;
      v31 = v174;
      *v17 = v173;
      *(v17 + 1) = v31;
      sub_1BA1CAD40(&v179, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
      v32 = v213;
      v33 = v214;
      __swift_project_boxed_opaque_existential_1(v212, v213);
      (*(v33 + 8))(&v198, v32, v33);
      v185[2] = v200;
      v185[3] = v201;
      v185[4] = v202;
      v186 = v203;
      v185[0] = v198;
      v185[1] = v199;
      v34 = *(&v201 + 1) >> 61;
      if ((*(&v201 + 1) >> 61) > 2)
      {
        if (v34 != 3)
        {
          if (v34 != 4)
          {
            v64 = v186;
            *(&v185[3] + 1) = *(&v201 + 1) & 0x1FFFFFFFFFFFFFFFLL;
            v65 = *(&v185[4] + 1);
            v66 = *&v185[0];
            type metadata accessor for BrowseTileContentViewImageTextAccessory();
            v67 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v170 = *(v185 + 8);
            v171[0] = *(&v185[1] + 8);
            v171[1] = *(&v185[2] + 8);
            v171[2] = *(&v185[3] + 8);
            v67[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 1;
            v68 = v66;
            v39 = v67;
            sub_1BA1C8B10();
            v69 = sub_1BA1C9970();
            sub_1B9FE7890(v66, v65, v64, &v170);

            [v39 setNeedsLayout];
            [v39 invalidateIntrinsicContentSize];

            sub_1BA1CBAF0(v185 + 8);
            v40 = v39;
LABEL_46:

            v141 = MEMORY[0x1E69E7D40];
            v142 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x188))();
            if (v143)
            {
              v144 = v142;
              v145 = v143;
              *&v170 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              *(&v170 + 1) = v146;

              MEMORY[0x1BFAF1350](0x2E6573776F72422ELL, 0xE800000000000000);

              MEMORY[0x1BFAF1350](v144, v145);

              (*((*v141 & *v40) + 0x1B0))(v170, *(&v170 + 1));
            }

            else
            {
              v147 = v165;
              sub_1BA4A3E28();
              v148 = sub_1BA4A3E88();
              v149 = sub_1BA4A6FA8();
              if (os_log_type_enabled(v148, v149))
              {
                v150 = swift_slowAlloc();
                v151 = swift_slowAlloc();
                *&v170 = v151;
                *v150 = 136315138;
                v152 = sub_1BA4A85D8();
                v154 = sub_1B9F0B82C(v152, v153, &v170);

                *(v150 + 4) = v154;
                _os_log_impl(&dword_1B9F07000, v148, v149, "[%s] Could not get content identifier for browse tile, so cannot set the Browse tile accessibility identifier.", v150, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v151);
                MEMORY[0x1BFAF43A0](v151, -1, -1);
                MEMORY[0x1BFAF43A0](v150, -1, -1);
              }

              (*(v166 + 8))(v147, v167);
            }

            v155 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
            *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView) = v40;
            v156 = v40;
            sub_1BA1C73F0(v155);

            sub_1BA1C7B8C();
            return __swift_destroy_boxed_opaque_existential_1(v212);
          }

          *(&v185[3] + 1) = *(&v201 + 1) & 0x1FFFFFFFFFFFFFFFLL;
          v162 = *(&v185[0] + 1);
          type metadata accessor for BrowseTileContentViewTextAccessory();
          v42 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v43 = *MEMORY[0x1E69DDCF8];
          v44 = objc_opt_self();
          v45 = [v44 preferredFontDescriptorWithTextStyle:v43 compatibleWithTraitCollection:0];
          v46 = [v45 fontDescriptorWithSymbolicTraits_];

          if (v46)
          {
            v47 = [objc_opt_self() fontWithDescriptor:v46 size:0.0];
          }

          else
          {
            v89 = v163;
            sub_1BA4A3DD8();
            v90 = v43;
            v91 = sub_1BA4A3E88();
            v92 = sub_1BA4A6FB8();

            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              v159 = swift_slowAlloc();
              v160 = swift_slowAlloc();
              *&v168[0] = v160;
              *v93 = 136315906;
              v94 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v161 = v90;
              v96 = sub_1B9F0B82C(v94, v95, v168);
              v158 = v92;
              v97 = v96;

              *(v93 + 4) = v97;
              *(v93 + 12) = 2080;
              *&v170 = 0;
              BYTE8(v170) = 1;
              sub_1B9F6BFCC(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
              v98 = sub_1BA4A6808();
              v100 = sub_1B9F0B82C(v98, v99, v168);

              *(v93 + 14) = v100;
              *(v93 + 22) = 2080;
              LODWORD(v170) = 32770;
              type metadata accessor for SymbolicTraits(0);
              v101 = sub_1BA4A6808();
              v103 = sub_1B9F0B82C(v101, v102, v168);
              v90 = v161;

              *(v93 + 24) = v103;
              *(v93 + 32) = 2112;
              v104 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
              *(v93 + 34) = v104;
              v105 = v159;
              *v159 = v104;
              _os_log_impl(&dword_1B9F07000, v91, v158, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v93, 0x2Au);
              sub_1BA1CB808(v105, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
              MEMORY[0x1BFAF43A0](v105, -1, -1);
              v106 = v160;
              swift_arrayDestroy();
              MEMORY[0x1BFAF43A0](v106, -1, -1);
              MEMORY[0x1BFAF43A0](v93, -1, -1);

              (*(v166 + 8))(v163, v167);
            }

            else
            {

              (*(v166 + 8))(v89, v167);
            }

            v46 = [v44 preferredFontDescriptorWithTextStyle_];
            v47 = [objc_opt_self() fontWithDescriptor:v46 size:0.0];
          }

          v129 = v47;

          v130 = objc_opt_self();
          v39 = v129;
          v131 = [v130 labelColor];
          v42[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 1;
          v40 = v42;
          sub_1BA1C8B10();
          v132 = sub_1BA1C94A0();
          v133 = sub_1BA4A6758();
          sub_1BA1CBB44(&v198);
          [v132 setText_];

          v134 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label;
          [*(v40 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label) setFont_];
          [*(v40 + v134) setTextColor_];
          [v40 setNeedsLayout];
          [v40 invalidateIntrinsicContentSize];

LABEL_45:
          goto LABEL_46;
        }

        *(&v185[3] + 1) = *(&v201 + 1) & 0x1FFFFFFFFFFFFFFFLL;
        v51 = *(&v185[0] + 1);
        type metadata accessor for BrowseTileContentViewTextAccessory();
        v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v53 = *MEMORY[0x1E69DDCF8];
        v54 = objc_opt_self();
        v55 = [v54 preferredFontDescriptorWithTextStyle:v53 compatibleWithTraitCollection:0];
        v56 = [v55 fontDescriptorWithSymbolicTraits_];

        if (v56)
        {
          v57 = [objc_opt_self() fontWithDescriptor:v56 size:0.0];
        }

        else
        {
          v70 = v161;
          sub_1BA4A3DD8();
          v71 = v53;
          v72 = sub_1BA4A3E88();
          v73 = sub_1BA4A6FB8();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v163 = v51;
            v75 = v74;
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            *&v168[0] = v160;
            *v75 = 136315906;
            v76 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v162 = v71;
            v78 = sub_1B9F0B82C(v76, v77, v168);
            v158 = v73;
            v79 = v78;

            *(v75 + 4) = v79;
            *(v75 + 12) = 2080;
            *&v170 = 0;
            BYTE8(v170) = 1;
            sub_1B9F6BFCC(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
            v80 = sub_1BA4A6808();
            v82 = sub_1B9F0B82C(v80, v81, v168);

            *(v75 + 14) = v82;
            *(v75 + 22) = 2080;
            LODWORD(v170) = 0x8000;
            type metadata accessor for SymbolicTraits(0);
            v83 = sub_1BA4A6808();
            v85 = sub_1B9F0B82C(v83, v84, v168);
            v71 = v162;

            *(v75 + 24) = v85;
            *(v75 + 32) = 2112;
            v86 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
            *(v75 + 34) = v86;
            v87 = v159;
            *v159 = v86;
            _os_log_impl(&dword_1B9F07000, v72, v158, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v75, 0x2Au);
            sub_1BA1CB808(v87, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
            MEMORY[0x1BFAF43A0](v87, -1, -1);
            v88 = v160;
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v88, -1, -1);
            MEMORY[0x1BFAF43A0](v75, -1, -1);

            (*(v166 + 8))(v161, v167);
          }

          else
          {

            (*(v166 + 8))(v70, v167);
          }

          v56 = [v54 preferredFontDescriptorWithTextStyle_];
          v57 = [objc_opt_self() fontWithDescriptor:v56 size:0.0];
        }

        v126 = v57;

        v127 = objc_opt_self();
        v39 = v126;
        v128 = [v127 hk_appTintColor];
      }

      else
      {
        if (!v34)
        {
          *(&v185[3] + 1) = *(&v201 + 1) & 0x1FFFFFFFFFFFFFFFLL;
          v36 = *(&v185[0] + 1);
          v35 = *&v185[0];
          v37 = *&v185[1];
          type metadata accessor for BrowseTileContentViewImageTextAccessory();
          v50 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v50[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 1;
          v39 = v35;
          v40 = v50;
          sub_1BA1C8B10();
          v41 = sub_1BA1C9970();
          v170 = 0uLL;
          *&v171[0] = 1;
          goto LABEL_23;
        }

        if (v34 == 1)
        {
          *(&v185[3] + 1) = *(&v201 + 1) & 0x1FFFFFFFFFFFFFFFLL;
          v36 = *(&v185[0] + 1);
          v35 = *&v185[0];
          v37 = *&v185[1];
          type metadata accessor for BrowseTileContentViewImageTextAccessory();
          v38 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v38[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 0;
          v39 = v35;
          v40 = v38;
          sub_1BA1C8B10();
          v41 = sub_1BA1C9970();
          v170 = 0uLL;
          *&v171[0] = 1;
LABEL_23:
          *(v171 + 8) = 0u;
          *(&v171[1] + 8) = 0u;
          *(&v171[2] + 1) = 0;
          sub_1B9FE7890(v35, v36, v37, &v170);

          [v40 setNeedsLayout];
          [v40 invalidateIntrinsicContentSize];

          goto LABEL_45;
        }

        *(&v185[3] + 1) = *(&v201 + 1) & 0x1FFFFFFFFFFFFFFFLL;
        v58 = *(&v185[0] + 1);
        type metadata accessor for BrowseTileContentViewTextAccessory();
        v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v59 = *MEMORY[0x1E69DDCF8];
        v60 = objc_opt_self();
        v61 = [v60 preferredFontDescriptorWithTextStyle:v59 compatibleWithTraitCollection:0];
        v62 = [v61 fontDescriptorWithSymbolicTraits_];

        if (v62)
        {
          v63 = [objc_opt_self() fontWithDescriptor:v62 size:0.0];
        }

        else
        {
          v107 = v162;
          sub_1BA4A3DD8();
          v108 = v59;
          v109 = sub_1BA4A3E88();
          v110 = sub_1BA4A6FB8();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v163 = v58;
            v112 = v111;
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            *&v168[0] = v160;
            *v112 = 136315906;
            v113 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v161 = v108;
            v115 = sub_1B9F0B82C(v113, v114, v168);
            v158 = v110;
            v116 = v115;

            *(v112 + 4) = v116;
            *(v112 + 12) = 2080;
            *&v170 = 0;
            BYTE8(v170) = 1;
            sub_1B9F6BFCC(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
            v117 = sub_1BA4A6808();
            v119 = sub_1B9F0B82C(v117, v118, v168);

            *(v112 + 14) = v119;
            *(v112 + 22) = 2080;
            LODWORD(v170) = 32770;
            type metadata accessor for SymbolicTraits(0);
            v120 = sub_1BA4A6808();
            v122 = sub_1B9F0B82C(v120, v121, v168);
            v108 = v161;

            *(v112 + 24) = v122;
            *(v112 + 32) = 2112;
            v123 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
            *(v112 + 34) = v123;
            v124 = v159;
            *v159 = v123;
            _os_log_impl(&dword_1B9F07000, v109, v158, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v112, 0x2Au);
            sub_1BA1CB808(v124, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
            MEMORY[0x1BFAF43A0](v124, -1, -1);
            v125 = v160;
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v125, -1, -1);
            MEMORY[0x1BFAF43A0](v112, -1, -1);

            (*(v166 + 8))(v162, v167);
          }

          else
          {

            (*(v166 + 8))(v107, v167);
          }

          v62 = [v60 preferredFontDescriptorWithTextStyle_];
          v63 = [objc_opt_self() fontWithDescriptor:v62 size:0.0];
        }

        v135 = v63;

        v136 = objc_opt_self();
        v39 = v135;
        v128 = [v136 labelColor];
      }

      v137 = v128;
      v52[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 0;
      v40 = v52;
      sub_1BA1C8B10();
      v138 = sub_1BA1C94A0();
      v139 = sub_1BA4A6758();
      sub_1BA1CBB44(&v198);
      [v138 setText_];

      v140 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label;
      [*(v40 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label) setFont_];
      [*(v40 + v140) setTextColor_];
      [v40 setNeedsLayout];
      [v40 invalidateIntrinsicContentSize];

      goto LABEL_45;
    }

    v175 = v185[2];
    v176 = v185[3];
    v177 = v185[4];
    v178 = v186;
    v173 = v185[0];
    v174 = v185[1];
    sub_1BA1CACCC(v185, &v170, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
    sub_1BA1CBB44(&v173);
LABEL_11:
    v185[0] = v195;
    v185[1] = v196;
    v185[2] = v197;
    v185[4] = v193;
    v187 = v198;
    v185[3] = v24;
    v188 = v199;
    v189 = v200;
    v186 = v194;
    v190 = v23;
    v192 = v203;
    v191 = v202;
    sub_1BA1CBBAC(v185, sub_1BA1CBA68);
    goto LABEL_12;
  }

  if (v201 < 0xFFFFFFFE00000000 || (*(&v201 + 1) & 0xFFFFFFFE00000000) != 0x200000000)
  {
    goto LABEL_11;
  }

  v185[0] = v204;
  v185[1] = v205;
  v185[2] = v206;
  v185[3] = v207;
  v185[4] = v208;
  v186 = v209;
  sub_1BA1CAD40(v185, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720], sub_1B9F23348);
  return __swift_destroy_boxed_opaque_existential_1(v212);
}

uint64_t sub_1BA1C6B74@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  return sub_1BA1CADA0(v5 + v10, a5, a2, a3, a4);
}

uint64_t sub_1BA1C6BE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider;
  swift_beginAccess();
  sub_1BA1CAE24(a1, v1 + v3, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider);
  swift_endAccess();
  sub_1BA1C53B8();
  return sub_1BA1CB808(a1, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider, sub_1B9F0D950);
}

uint64_t (*sub_1BA1C6CA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1C6D04;
}

uint64_t sub_1BA1C6D04(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA1C53B8();
  }

  return result;
}

void sub_1BA1C6D78(void (*a1)(void), const char *a2)
{
  v5 = v2;
  swift_getObjectType();
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
  if (v10 && (type metadata accessor for BrowseTileContentViewImageTextAccessory(), swift_dynamicCastClass()))
  {
    v19 = v10;
    a1();
    v11 = v19;
  }

  else
  {
    sub_1BA4A3E28();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      v16 = sub_1BA4A85D8();
      v18 = sub_1B9F0B82C(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1B9F07000, v12, v13, a2, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

id sub_1BA1C6FA4(id result)
{
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView))
  {
    return [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView) setUserInteractionEnabled_];
  }

  return result;
}

uint64_t sub_1BA1C6FCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
  if (v1)
  {
    return [v1 isUserInteractionEnabled];
  }

  else
  {
    return 1;
  }
}

id (*sub_1BA1C7008(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = [v4 isUserInteractionEnabled];
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 16) = v5;
  return sub_1BA1C7070;
}

id sub_1BA1C7070(uint64_t a1)
{
  result = *(*a1 + *(a1 + 8));
  if (result)
  {
    return [result setUserInteractionEnabled_];
  }

  return result;
}

id sub_1BA1C7094()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView];
LABEL_5:
    v4 = v1;
    return v2;
  }

  result = [v0 view];
  if (result)
  {
    v2 = result;
    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA1C70F8(void *a1)
{
  type metadata accessor for SectionContext(0);
  result = sub_1BA4A1958();
  if (!__OFSUB__(*a1, 1))
  {
    return result != *a1 - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA1C7150()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1B9F6BFCC(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for SectionContext(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  swift_beginAccess();
  sub_1BA1CACCC(v0 + v9, v4, qword_1EDC6E9C8, type metadata accessor for SectionContext, v1, sub_1B9F6BFCC);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1BA1CAD40(v4, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
  }

  sub_1B9FE1020(v4, v8);
  v11 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
  if (v11)
  {
    v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x128);
    v13 = v11;
    LOBYTE(v12) = v12(v8);
    v14 = sub_1BA1C8B70();
    [v14 setHidden_];
  }

  return sub_1BA1CBBAC(v8, type metadata accessor for SectionContext);
}

void sub_1BA1C73F0(void *a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView];
  if (v2)
  {
    v28 = v2;
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 addSubview_];

      sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1BA4B5890;
      v6 = [v28 topAnchor];
      v7 = [v1 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 topAnchor];

        v10 = [v6 constraintEqualToAnchor_];
        *(v5 + 32) = v10;
        v11 = [v28 bottomAnchor];
        v12 = [v1 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 bottomAnchor];

          v15 = [v11 constraintEqualToAnchor_];
          *(v5 + 40) = v15;
          v16 = [v28 leadingAnchor];
          v17 = [v1 view];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 leadingAnchor];

            v20 = [v16 constraintEqualToAnchor_];
            *(v5 + 48) = v20;
            v21 = [v28 trailingAnchor];

            v22 = [v1 view];
            if (v22)
            {
              v23 = v22;
              v24 = objc_opt_self();
              v25 = [v23 trailingAnchor];

              v26 = [v21 constraintEqualToAnchor_];
              *(v5 + 56) = v26;
              sub_1B9F0ADF8(0, &qword_1EDC6B570);
              v27 = sub_1BA4A6AE8();

              [v24 activateConstraints_];

              sub_1BA1C7B8C();
              sub_1BA1C7150();

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_1BA1C7B8C();
}

id sub_1BA1C778C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for BrowseTileViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result heightAnchor];

    v4 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();
    v5 = [v3 constraintEqualToConstant_];

    LODWORD(v6) = 1148829696;
    [v5 setPriority_];
    v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint);
    *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint) = v5;
    v8 = v5;

    (*((*v4 & *v0) + 0x170))([v8 setActive_]);
    sub_1BA1C7B8C();
    sub_1B9F6BFCC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4B5480;
    v10 = sub_1BA4A4858();
    v11 = MEMORY[0x1E69DC2B0];
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1B9FE8ED0();
    sub_1BA4A7228();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA1C79E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BA1C7B8C();
  }
}

void sub_1BA1C7ADC()
{
  sub_1BA4A7DF8();
  swift_getObjectType();
  sub_1BA4A85D8();

  MEMORY[0x1BFAF1350](0xD000000000000028, 0x80000001BA4F2B60);
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA1C7B8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
  if (v1)
  {
    v19 = v1;
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    Width = CGRectGetWidth(v21);
    v13 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();
    [v19 sizeThatFits_];
    if (v13 > v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint);
    [v16 setConstant_];
  }

  else
  {
    v17 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint);
    if (!v17)
    {
      return;
    }

    v18 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x130);
    v19 = v17;
    v18();
    [v19 setConstant_];
  }
}

void sub_1BA1C7D68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
    if (v3)
    {
      v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0);
      v7 = v3;
      v4(a1, a2);
    }
  }
}

id sub_1BA1C7E2C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider;
  swift_beginAccess();
  sub_1BA1CADA0(v0 + v1, &v17, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider);
  if (!v18)
  {
    sub_1BA1CB808(&v17, &qword_1EDC6C6C0, &unk_1EDC6C6C8, &protocol descriptor for BrowseTileContentProvider, sub_1B9F0D950);
    return 0;
  }

  sub_1B9F1134C(&v17, v19);
  v2 = v20;
  v3 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v3 + 8))(v13, v2, v3);
  v4 = v13[1];
  v5 = v14 >> 61;
  if ((v14 >> 61) <= 2)
  {
    if (v5 <= 1)
    {

      __swift_destroy_boxed_opaque_existential_1(v19);
      return v4;
    }

    goto LABEL_8;
  }

  if (v5 == 3 || v5 == 4)
  {
LABEL_8:
    v7 = v13[0];
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v7;
  }

  v8 = v16;
  v9 = v15;
  v11 = v13[4];
  v10 = v13[5];
  v12 = v13[3];

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v8;
}

id BrowseTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BrowseTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_context];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  v8 = type metadata accessor for SectionContext(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = xmmword_1BA4C42D0;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 8) = 0;
  v10 = &v3[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView] = 0;
  if (a2)
  {
    v11 = sub_1BA4A6758();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for BrowseTileViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id BrowseTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BrowseTileViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  v5 = type metadata accessor for SectionContext(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_currentStyle];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = xmmword_1BA4C42D0;
  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  *(v6 + 8) = 0;
  v7 = &v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentProvider];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_heightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for BrowseTileViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1BA1C84D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_context;
  swift_beginAccess();
  return sub_1BA1CADA0(v1 + v3, a1, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
}

uint64_t (*sub_1BA1C8548(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1C85AC;
}

uint64_t sub_1BA1C85AC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x170))();
    }
  }

  return result;
}

uint64_t sub_1BA1C862C()
{
  result = (*((*MEMORY[0x1E69E7D40] & **v0) + 0x188))();
  if (v2)
  {
    v3 = v2;
    v4 = result;
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    MEMORY[0x1BFAF1350](0x2E6573776F72422ELL, 0xE800000000000000);

    MEMORY[0x1BFAF1350](v4, v3);

    return v5;
  }

  return result;
}

uint64_t (*sub_1BA1C8720(uint64_t **a1))()
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
  v2[4] = sub_1BA1C42D0(v2);
  return sub_1B9FCF2C4;
}

void sub_1BA1C8794(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*v2 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
    if (v3)
    {
      v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0);
      v7 = v3;
      v4(a1, a2);
    }
  }
}

uint64_t (*sub_1BA1C8860(uint64_t **a1))()
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
  v2[4] = sub_1BA1C4BD0(v2);
  return sub_1B9FCDCF4;
}

void sub_1BA1C88D0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  v4 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView;
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView];
  if (v3)
  {
    if (v5)
    {
      sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
      v6 = v5;
      v7 = v3;
      v8 = sub_1BA4A7798();

      if (v8)
      {
        return;
      }

      v3 = *&v1[v2];
      v5 = *&v1[v4];
    }
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v3 = 0;
  }

  *&v1[v4] = v3;
  v9 = v3;

  v10 = sub_1BA1C8F14();
  v11 = *&v1[v2];
  *&v1[v2] = v10;

  [*&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator] startAnimating];

  [v1 setNeedsLayout];
}

void sub_1BA1C89E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  v4 = v3;
  v5 = sub_1BA1C8F14();
  if (v3)
  {
    v12 = v5;
    sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
    v6 = sub_1BA4A7798();

    if (v6)
    {
      [*&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator] stopAnimating];
      v7 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView;
      v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView];
      v9 = *&v1[v2];
      *&v1[v2] = v8;
      v10 = v8;

      v11 = *&v1[v7];
      *&v1[v7] = 0;

      [v1 setNeedsLayout];
    }
  }

  else
  {
  }
}

id sub_1BA1C8B10()
{
  if (v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType])
  {
    v1 = sub_1BA1C8D4C();
  }

  else
  {
    v1 = 0;
  }

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView] = v1;

  return [v0 setNeedsLayout];
}

id sub_1BA1C8B70()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

double sub_1BA1C8C24()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_separatorInset];
  v2 = v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_separatorInset + 8];
  [v0 bounds];
  CGRectGetWidth(v7);
  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1BA4A74F8();
  if ((v3 & 1) == 0)
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 scale];
  }

  if (v2)
  {
    v1 = 16.0;
  }

  [v0 bounds];
  CGRectGetHeight(v8);
  return v1;
}

id sub_1BA1C8D4C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___disclosureImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___disclosureImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___disclosureImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setContentMode_];
    v5 = [objc_opt_self() tertiaryLabelColor];
    [v4 setTintColor_];

    [v4 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v6 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
    v7 = [objc_opt_self() configurationWithFont:v6 scale:1];
    v8 = sub_1BA4A6758();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    [v4 setImage_];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA1C8F14()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 setHidesWhenStopped_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA1C8FA0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_enabled] = 1;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_separatorInset];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___disclosureImageView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessorySpace] = 0x4010000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for BrowseTileContentViewBase();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_1BA1C8B70();
  [v10 addSubview_];

  v12 = sub_1BA1C8D4C();
  [v10 addSubview_];

  v13 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v10 setBackgroundColor_];

  return v10;
}

void sub_1BA1C9180()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for BrowseTileContentViewBase();
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  v2 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  if (v1 == 1)
  {
    if (v3)
    {
      v4 = v3;
      [v0 bounds];
      v5 = CGRectGetHeight(v31) + -30.0;
      v6 = *&v0[v2];
      if (v6)
      {
        [v6 sizeThatFits_];
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      [v0 bounds];
      v14 = CGRectGetWidth(v33) - v8 + -16.0;
      [v0 bounds];
      v15 = CGRectGetWidth(v34) - v14;
      v35.origin.y = 15.0;
      v35.origin.x = v14;
      v35.size.width = v8;
      v35.size.height = v5;
      [v4 setFrame_];
    }

    v16 = sub_1BA1C8B70();
    v17 = sub_1BA1C8C24();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [v0 bounds];
    v24 = CGRectGetWidth(v36) - v17;
    v37.origin.x = v17;
    v37.origin.y = v19;
    v37.size.width = v21;
    v37.size.height = v23;
    Width = CGRectGetWidth(v37);
    v26 = v23;
    v27 = v21;
    v28 = v19;
    v29 = v24 - Width;
  }

  else
  {
    if (v3)
    {
      v9 = v3;
      [v0 bounds];
      v10 = CGRectGetHeight(v32) + -30.0;
      v11 = *&v0[v2];
      if (v11)
      {
        [v11 sizeThatFits_];
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      [v0 bounds];
      [v9 setFrame_];
    }

    v16 = sub_1BA1C8B70();
    v29 = sub_1BA1C8C24();
  }

  [v16 setFrame_];
}

id sub_1BA1C94A0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setNumberOfLines_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setTextAlignment_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1BA1C97A8()
{
  v0 = sub_1BA1C94A0();

  MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
  v1 = sub_1BA4A6758();

  [v0 setAccessibilityIdentifier_];
}

uint64_t sub_1BA1C9864()
{
  swift_getObjectType();
  v0 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v0);

  MEMORY[0x1BFAF1350](0x3A6C6562616C203ELL, 0xE900000000000020);
  v1 = sub_1BA1C94A0();
  v2 = [v1 description];
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  MEMORY[0x1BFAF1350](v3, v5);

  return 60;
}

char *sub_1BA1C9970()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory____lazy_storage___categoryView;
  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory____lazy_storage___categoryView);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory____lazy_storage___categoryView);
  }

  else
  {
    v47 = v4;
    v10 = [objc_allocWithZone(type metadata accessor for LabelAndImageView()) initWithFrame_];
    v11 = *MEMORY[0x1E69DDCF8];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    v14 = [v13 fontDescriptorWithSymbolicTraits_];

    if (v14)
    {
      v15 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v16 = v11;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v46 = v12;
        v20 = v19;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50 = v44;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v23 = sub_1B9F0B82C(v21, v22, &v50);
        v45 = v16;
        v24 = v23;

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        v48 = 0;
        v49 = 1;
        sub_1B9F6BFCC(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v25 = sub_1BA4A6808();
        v27 = sub_1B9F0B82C(v25, v26, &v50);

        *(v20 + 14) = v27;
        *(v20 + 22) = 2080;
        LODWORD(v48) = 32770;
        type metadata accessor for SymbolicTraits(0);
        v28 = sub_1BA4A6808();
        v30 = sub_1B9F0B82C(v28, v29, &v50);
        v16 = v45;

        *(v20 + 24) = v30;
        *(v20 + 32) = 2112;
        v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v31;
        v32 = v43;
        *v43 = v31;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1BA1CB808(v32, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        v33 = v44;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v33, -1, -1);
        v34 = v20;
        v12 = v46;
        MEMORY[0x1BFAF43A0](v34, -1, -1);
      }

      (*(v3 + 8))(v6, v47);
      v35 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
    }

    v36 = OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font;
    v37 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font];
    *&v10[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_font] = v15;
    v38 = v15;

    v39 = sub_1B9FE7DE0();
    [v39 setFont_];

    [v10 setNeedsLayout];
    [v10 invalidateIntrinsicContentSize];

    v10[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_doubleLabelImageSpaceForBrowse] = 1;
    [v10 setNeedsLayout];
    [v10 invalidateIntrinsicContentSize];
    v40 = *(v1 + v7);
    *(v1 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v41 = v8;
  return v9;
}

id sub_1BA1C9E54(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17139BrowseTileContentViewImageTextAccessory____lazy_storage___categoryView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for BrowseTileContentViewImageTextAccessory();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_1BA1C9970();
  [v9 addSubview_];

  sub_1B9F6BFCC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  v12 = sub_1BA4A4858();
  v13 = MEMORY[0x1E69DC2B0];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1B9FE8ED0();
  sub_1BA4A7708();

  swift_unknownObjectRelease();

  return v9;
}

void sub_1BA1CA074()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for BrowseTileContentViewImageTextAccessory();
  objc_msgSendSuper2(&v32, sel_layoutSubviews);
  v2 = [v0 effectiveUserInterfaceLayoutDirection];
  v3 = sub_1BA1C9970();
  [v1 bounds];
  v4 = CGRectGetHeight(v33) + -30.0;
  [v1 bounds];
  v5 = CGRectGetHeight(v34) + -30.0;
  v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  if (v2 == 1)
  {
    if (v6)
    {
      [v6 sizeThatFits_];
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    [v1 bounds];
    v36.origin.x = CGRectGetWidth(v35) - v8 + -16.0;
    v11 = 15.0;
    v36.origin.y = 15.0;
    v36.size.width = v8;
    v36.size.height = v5;
    v12 = CGRectGetMinX(v36) + -16.0 + -4.0;
    [v1 bounds];
    v13 = CGRectGetWidth(v37) + -16.0;
    v38.origin.x = 16.0;
    v38.origin.y = 15.0;
    v38.size.width = v12;
    v38.size.height = v4;
    v14 = v13 - CGRectGetWidth(v38);
  }

  else
  {
    if (v6)
    {
      [v6 sizeThatFits_];
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    [v1 bounds];
    v40.origin.x = CGRectGetWidth(v39) - v10 + -16.0;
    v11 = 15.0;
    v40.origin.y = 15.0;
    v40.size.width = v10;
    v40.size.height = v5;
    v12 = CGRectGetMinX(v40) + -16.0 + -4.0;
    v14 = 16.0;
  }

  [v3 setFrame_];

  [v1 bounds];
  v15 = CGRectGetHeight(v41) + -30.0;
  [v1 bounds];
  v16 = CGRectGetHeight(v42) + -30.0;
  v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView];
  if (v17)
  {
    [v17 sizeThatFits_];
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  [v1 bounds];
  v44.origin.x = CGRectGetWidth(v43) - v19 + -16.0;
  v44.origin.y = 15.0;
  v44.size.width = v19;
  v44.size.height = v16;
  v45.size.width = CGRectGetMinX(v44) + -16.0 + -4.0;
  v45.origin.x = 16.0;
  v45.origin.y = 15.0;
  v45.size.height = v15;
  MinX = CGRectGetMinX(v45);
  v21 = sub_1BA1C9970();
  [v1 bounds];
  CGRectGetHeight(v46);
  if (!*(*&v21[OBJC_IVAR____TtC18HealthExperienceUI17LabelAndImageView_imageView] + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image))
  {

    v29 = 4.0;
LABEL_19:
    v30 = &v1[OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_separatorInset];
    *v30 = MinX + v29;
    *(v30 + 8) = 0;
    v31 = sub_1BA1C8B70();
    [v31 setFrame_];

    return;
  }

  v22 = sub_1B9FE7DE0();
  v23 = [v22 font];

  if (v23)
  {
    [v23 lineHeight];
    v25 = v24;

    v26 = 36.0;
    if (v25 > 36.0)
    {
      v26 = v25;
    }

    v27 = v26 + 4.0;
    v28 = sub_1B9FE7EBC();

    v29 = v28 + v27;
    goto LABEL_19;
  }

  __break(1u);
}

double sub_1BA1CA42C(uint64_t (*a1)(void), double a2, double a3)
{
  v5 = a2;
  if (a2 > 0.0)
  {
    if (*(v3 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView))
    {
      v6 = a1;
      [*(v3 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView) sizeThatFits_];
      a1 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    a2 = v5 + -32.0 + -4.0 - v7;
  }

  if (a2 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  v9 = a1();
  [v9 sizeThatFits_];

  return v5;
}

void sub_1BA1CA564(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView);
  if (v5)
  {

    v6 = v5;
    MEMORY[0x1BFAF1350](0x6F7373656363412ELL, 0xEA00000000007972);
    v7 = sub_1BA4A6758();

    [v6 setAccessibilityIdentifier_];
  }

  v8 = sub_1BA1C9970();
  sub_1B9FE7BE4(a1, a2);
}

id sub_1BA1CA668(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1BA4A6758();

  return v5;
}

uint64_t sub_1BA1CA6D8()
{
  v1 = v0;
  swift_getObjectType();
  sub_1BA4A7DF8();

  v2 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v2);

  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4F2E20);
  v3 = sub_1BA1C9970();
  v4 = [v3 description];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  MEMORY[0x1BFAF1350](v5, v7);

  MEMORY[0x1BFAF1350](0x6F73736563636120, 0xEC000000203A7972);
  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView);
  sub_1B9F40DD8(0, &unk_1EDC5E200, &qword_1EDC6B4A0, 0x1E69DD250, sub_1B9F0ADF8);
  v9 = v8;
  v10 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v10);

  return 60;
}

id sub_1BA1CA890(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s18HealthExperienceUI24BrowseTileViewControllerC5StyleO2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v46 = a1[2];
  v47 = v3;
  v4 = a1[3];
  v48 = a1[4];
  v5 = a1[1];
  v44 = *a1;
  v45 = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  *&v50[32] = *(a2 + 32);
  *&v50[48] = v6;
  v8 = *(a2 + 48);
  v51 = *(a2 + 64);
  v9 = *(a2 + 16);
  *v50 = *a2;
  *&v50[16] = v9;
  v53[0] = v44;
  v53[1] = v2;
  v10 = a1[4];
  v53[3] = v4;
  v53[4] = v10;
  v53[2] = v46;
  v57 = *&v50[32];
  v58 = v8;
  v59 = *(a2 + 64);
  v56 = v7;
  v49 = *(a1 + 10);
  v52 = *(a2 + 80);
  v11 = *(a2 + 80);
  v54 = *(a1 + 10);
  v60 = v11;
  v55 = *v50;
  v12 = *(&v44 + 1);
  v13 = *(&v47 + 1);
  v14 = *(&v47 + 1) >> 61;
  if ((*(&v47 + 1) >> 61) > 2)
  {
    if (v14 == 3)
    {
      if (*&v50[56] >> 61 != 3)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v14 != 4)
      {
        v20 = *&v50[56];
        if (*&v50[56] >> 61 == 5)
        {
          v34 = v45;
          v21 = v47;
          v22 = v48;
          v27 = v49;
          v30 = *&v50[8];
          v31 = v46;
          v28 = *&v50[40];
          v29 = *&v50[24];
          v23 = *(&v51 + 1);
          v26 = v52;
          v24 = v51;
          sub_1B9F0ADF8(0, &qword_1EDC6E350);
          sub_1BA1CBB74(v50, &v38);
          sub_1BA1CBB74(&v44, &v38);
          if (sub_1BA4A7798())
          {
            v38 = v12;
            v39 = v34;
            v40 = v31;
            v41 = v21;
            v42 = v13 & 0x1FFFFFFFFFFFFFFFLL;
            v43 = v22;
            v35[0] = v30;
            v35[1] = v29;
            v35[2] = v28;
            v36 = v20 & 0x1FFFFFFFFFFFFFFFLL;
            v37 = v24;
            if (_s18HealthExperienceUI10ImageStyleV2eeoiySbAC_ACtFZ_0(&v38, v35))
            {
              if (*(&v22 + 1) != v23 || v27 != v26)
              {
                goto LABEL_17;
              }

              goto LABEL_28;
            }
          }

          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (*&v50[56] >> 61 != 4)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (!v14)
    {
      if (!(*&v50[56] >> 61))
      {
        v33 = v45;
        v18 = *&v50[8];
        v17 = *&v50[16];
        sub_1B9F0ADF8(0, &qword_1EDC6E350);
        sub_1BA1CBB74(v50, &v38);
        sub_1BA1CBB74(&v44, &v38);
        if (sub_1BA4A7798())
        {
          if (v12 != v18 || v33 != v17)
          {
            goto LABEL_17;
          }

          goto LABEL_28;
        }

LABEL_30:
        v19 = 0;
        goto LABEL_31;
      }

LABEL_29:
      sub_1BA1CBB74(v50, &v38);
      sub_1BA1CBB74(&v44, &v38);
      goto LABEL_30;
    }

    if (v14 == 1)
    {
      if (*&v50[56] >> 61 == 1)
      {
        v32 = v45;
        v16 = *&v50[8];
        v15 = *&v50[16];
        sub_1B9F0ADF8(0, &qword_1EDC6E350);
        sub_1BA1CBB74(v50, &v38);
        sub_1BA1CBB74(&v44, &v38);
        if (sub_1BA4A7798())
        {
          if (v12 != v16 || v32 != v15)
          {
LABEL_17:
            v19 = sub_1BA4A8338();
            goto LABEL_31;
          }

LABEL_28:
          v19 = 1;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (*&v50[56] >> 61 != 2)
    {
      goto LABEL_29;
    }
  }

  if (v44 == *v50)
  {
    sub_1BA1CBB74(v50, &v38);
    sub_1BA1CBB74(&v44, &v38);
    v19 = 1;
  }

  else
  {
    v19 = sub_1BA4A8338();
    sub_1BA1CBB74(v50, &v38);
    sub_1BA1CBB74(&v44, &v38);
  }

LABEL_31:
  sub_1BA1CBBAC(v53, sub_1BA1CBC0C);
  return v19 & 1;
}

uint64_t sub_1BA1CACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA1CAD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA1CADA0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F40DD8(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1BA1CAE24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F40DD8(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 24))(a2, a1, v7);
  return a2;
}

uint64_t type metadata accessor for BrowseTileViewController()
{
  result = qword_1EDC6C710;
  if (!qword_1EDC6C710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_1Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unint64_t *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  swift_beginAccess();
  return sub_1BA1CADA0(v10 + v11, a6, a3, a4, a5);
}

void sub_1BA1CAFB4()
{
  sub_1B9F6BFCC(319, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA1CB654(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 56) >> 2) & 0x80000000 | (*(a1 + 48) >> 33);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1BA1CB6B0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = -a2 << 33;
      *(a1 + 56) = 0x200000000;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA1CB730(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56) & 0x1FFFFFFFFLL | (a2 << 61);
  *(result + 48) &= 0x1FFFFFFFFuLL;
  *(result + 56) = v2;
  return result;
}

unint64_t sub_1BA1CB7B4()
{
  result = qword_1EBBEDAC0;
  if (!qword_1EBBEDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDAC0);
  }

  return result;
}

uint64_t sub_1BA1CB808(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F40DD8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA1CB864()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_previousAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryType) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_enabled) = 1;
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_separatorInset;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___disclosureImageView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase____lazy_storage___activityIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessorySpace) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17125BrowseTileContentViewBase_accessoryView) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA1CB93C(void *a1, void *a2, int a3, void *a4, void *a5, void *a6, unint64_t a7, unint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  if (a7 < 0xFFFFFFFE00000000 || (a8 & 0xFFFFFFFE00000000) != 0x200000000)
  {
    sub_1BA1CB970(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

void sub_1BA1CB970(void *a1, id a2, int a3, void *a4, void *a5, void *a6, int a7, unint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v11 = a8 >> 61;
  if ((a8 >> 61) <= 2)
  {
    if (v11 < 2)
    {
    }

    else if (v11 != 2)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v11 == 3 || v11 == 4)
  {
LABEL_13:

    return;
  }

  if (v11 == 5)
  {
  }
}

void sub_1BA1CBA68()
{
  if (!qword_1EBBEDAD0)
  {
    sub_1B9F23348(255, &qword_1EBBEDA48, &type metadata for BrowseTileViewController.Style, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEDAD0);
    }
  }
}

uint64_t sub_1BA1CBBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA1CBC0C()
{
  if (!qword_1EBBEDAD8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEDAD8);
    }
  }
}

uint64_t SummarySharingSetupAnalyticsBaseEvent.__allocating_init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:activeWatchProductType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = swift_allocObject();
  SummarySharingSetupAnalyticsBaseEvent.init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:activeWatchProductType:)(a1, a2, a3, v10, a5);
  return v9;
}

void *SummarySharingSetupAnalyticsBaseEvent.init(sharingEntriesAnalytics:userDemographicsAnalytics:location:version:usedDataSelectionWizard:activeWatchProductType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = *(a1 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 25);
  v5[4] = 0;
  v5[5] = 0;
  v11 = 0;
  v5[3] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if ((v9 & 1) == 0)
  {
    sub_1BA4A70F8();
    v11 = sub_1BA4A6758();
  }

  v12 = v5[5];
  v5[5] = v11;

  v13 = UserDemographicsAnalytics.ageValueForAnalytics()();
  v14 = v5[4];
  v5[4] = v13;

  if (v8 == 2)
  {
    sub_1BA1CBF94();
    v15 = sub_1BA4A2CA8();
    v16 = &selRef_createHKUnitPreferenceController;
  }

  else
  {
    v16 = &selRef_createHKUnitPreferenceController;
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v5[2] = v15;
  v17 = sub_1BA4A6758();

  v6[9] = v17;
  sub_1BA0B2740();
  v6[6] = sub_1BA4A77C8();
  v6[7] = sub_1BA4A77C8();
  v6[8] = [objc_allocWithZone(MEMORY[0x1E696AD98]) v16[101]];
  return v6;
}