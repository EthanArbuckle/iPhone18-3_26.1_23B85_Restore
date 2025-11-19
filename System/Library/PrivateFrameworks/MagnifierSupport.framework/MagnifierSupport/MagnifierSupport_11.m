id sub_257CA0E28()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label);
  }

  else
  {
    v4 = sub_257CA0E8C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257CA0E8C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control);
  if (v3 <= 9)
  {
    if (v3 != 5 && v3 != 6 && v3 != 9)
    {
      goto LABEL_15;
    }
  }

  else if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control) > 0xCu)
  {
    if (v3 != 13 && v3 != 14)
    {
      goto LABEL_15;
    }
  }

  else if (v3 != 10 && v3 != 12)
  {
    goto LABEL_15;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v2 setText_];

LABEL_15:
  [v2 setTextAlignment_];
  v9 = v2;
  [v9 setAlpha_];
  v10 = [v9 layer];

  [v10 setCornerRadius_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setLineBreakMode_];
  [v9 setAdjustsFontSizeToFitWidth_];
  [v9 setMinimumScaleFactor_];
  v11 = [objc_opt_self() systemFontOfSize_];
  [v9 setFont_];

  [v9 setNumberOfLines_];
  LODWORD(v12) = 1.0;
  [v9 _setHyphenationFactor_];
  return v9;
}

id sub_257CA150C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_config + 8);
    v6 = objc_allocWithZone(type metadata accessor for RoundButton());
    v7 = v5;
    v8 = v0;
    v9 = sub_257D47B08(v4, v7);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 clearColor];
    [v11 setBackgroundColor_];

    v13 = *(v8 + v1);
    *(v8 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void sub_257CA15F0(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = sub_257CA0E28();
  v5 = v4;
  v6 = 0.0;
  if (v1[v3] == 1)
  {
    v6 = 1.0;
    if (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
    {
      v6 = 0.25;
    }
  }

  [v4 setAlpha_];

  sub_257C9FD54();
  if (v1[v3] == 1)
  {
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void (*sub_257CA16B8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_257CA1740;
}

void sub_257CA1740(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_257CA0E28();
    v7 = v6;
    v8 = *(v4 + v5);
    v9 = v3[3];
    v10 = 0.0;
    if (v8 == 1)
    {
      v10 = 1.0;
      if (*(v9 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed))
      {
        v10 = 0.25;
      }
    }

    v11 = v3[4];
    [v6 setAlpha_];

    sub_257C9FD54();
    if (*(v9 + v11) == 1)
    {
      v12 = v3[3];
      [v12 setNeedsLayout];
      [v12 layoutIfNeeded];
    }
  }

  free(v3);
}

id sub_257CA1814()
{
  v1 = sub_257CA0E28();
  v2 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2) == 1)
  {
    v3 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed))
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  sub_257CA0A8C();
  sub_257CA0C98();
  v4 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label;
  v5 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed;
  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label) setEnabled_];
  return [*(v0 + v4) setUserInteractionEnabled_];
}

id sub_257CA18EC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = *a1;
  v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_peopleDetectionGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_doorDetectionGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_detectionModeGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_imageCaptionGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_pointSpeakGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_textDetectionGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_focusLockGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_freezeFrameReviewSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_detectionModeSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control] = a1;
  v8 = &v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_config];
  *v8 = a2;
  v8[1] = a3;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_257CA1ACC();
  sub_257CA1E7C();
  sub_257CA3A1C();
  v10 = v9;
  [v10 setShowsLargeContentViewer_];
  [v10 setScalesLargeContentImage_];

  v11 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v10 addInteraction_];

  return v10;
}

void sub_257CA1ACC()
{
  v1 = v0;
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v0 setBackgroundColor_];
  v2 = [objc_opt_self() whiteColor];
  [v1 setTintColor_];

  v3 = sub_257D14B7C();
  v4 = sub_257CA150C();
  [v4 setImage:v3 forState:0];

  v5 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  v1[v5] = 0;
  v6 = sub_257CA0E28();
  v7 = v6;
  v8 = 0.0;
  if (v1[v5] == 1)
  {
    v8 = 1.0;
    if (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
    {
      v8 = 0.25;
    }
  }

  [v6 setAlpha_];

  sub_257C9FD54();
  if (v1[v5] == 1)
  {
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }

  v9 = [v1 layer];
  [v9 setCornerRadius_];

  v10 = [v1 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v10 setCornerCurve_];

  v11 = [v1 layer];
  [v11 setMasksToBounds_];

  v12 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton;
  v13 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton] layer];
  [v13 setCornerRadius_];

  v14 = [*&v1[v12] layer];
  [v14 setMasksToBounds_];

  [*&v1[v12] addTarget:v1 action:sel_didTap_ forControlEvents:64];
  v15 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_labelTapped_];
  v16 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label] addGestureRecognizer_];
  [*&v1[v16] setUserInteractionEnabled_];
  [*&v1[v16] setAlpha_];
  [v1 addSubview_];
  [v1 addSubview_];
  sub_257CA3B08();
}

uint64_t sub_257CA1E7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v1 - 8);
  v74 = v70 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6F80);
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v70 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A50);
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = v70 - v8;
  v9 = sub_257ECF130();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECFD10();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v84 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6F88);
  v20 = MEMORY[0x28223BE20](v19);
  v23 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control);
  if (v23 <= 9)
  {
    switch(v23)
    {
      case 5u:
        v78 = v16;
        v79 = v22;
        v47 = v70 - v21;
        v80 = v20;
        v81 = v0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
        sub_257ECDD30();
        swift_endAccess();
        sub_257ECFD00();
        sub_257BD2C2C(0, &qword_281543F10);
        (*(v10 + 104))(v12, *MEMORY[0x277D851C0], v9);
        v48 = sub_257ECFD90();
        (*(v10 + 8))(v12, v9);
        v85 = v48;
        sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
        sub_257CA64A0(&qword_281543F20, &qword_281543F10);
        v49 = v78;
        sub_257ECDE00();

        (*(v82 + 8))(v15, v83);
        (*(v84 + 8))(v18, v49);
        swift_allocObject();
        v27 = v81;
        swift_unknownObjectWeakInit();
        sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88);
        v50 = v80;
        v29 = sub_257ECDE50();

        (*(v79 + 8))(v47, v50);
        v30 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_peopleDetectionGlowSubscription;
        goto LABEL_35;
      case 6u:
        v78 = v16;
        v79 = v22;
        v65 = v70 - v21;
        v80 = v20;
        v81 = v0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
        sub_257ECDD30();
        swift_endAccess();
        sub_257ECFD00();
        sub_257BD2C2C(0, &qword_281543F10);
        (*(v10 + 104))(v12, *MEMORY[0x277D851C0], v9);
        v66 = sub_257ECFD90();
        (*(v10 + 8))(v12, v9);
        v85 = v66;
        sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
        sub_257CA64A0(&qword_281543F20, &qword_281543F10);
        v67 = v78;
        sub_257ECDE00();

        (*(v82 + 8))(v15, v83);
        (*(v84 + 8))(v18, v67);
        swift_allocObject();
        v27 = v81;
        swift_unknownObjectWeakInit();
        sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88);
        v68 = v80;
        v29 = sub_257ECDE50();

        (*(v79 + 8))(v65, v68);
        v30 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_focusLockGlowSubscription;
        goto LABEL_35;
      case 9u:
        v78 = v16;
        v79 = v22;
        v71 = v70 - v21;
        v80 = v20;
        v81 = v0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v70[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
        sub_257ECDD30();
        swift_endAccess();
        sub_257ECFD00();
        sub_257BD2C2C(0, &qword_281543F10);
        (*(v10 + 104))(v12, *MEMORY[0x277D851C0], v9);
        v31 = sub_257ECFD90();
        (*(v10 + 8))(v12, v9);
        v85 = v31;
        v70[2] = MEMORY[0x277CBCEC8];
        v70[1] = sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
        sub_257CA64A0(&qword_281543F20, &qword_281543F10);
        v32 = v71;
        v33 = v78;
        sub_257ECDE00();

        (*(v82 + 8))(v15, v83);
        (*(v84 + 8))(v18, v33);
        swift_allocObject();
        v34 = v81;
        swift_unknownObjectWeakInit();
        sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88);
        v35 = v80;
        v36 = sub_257ECDE50();

        (*(v79 + 8))(v32, v35);
        *(v34 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_detectionModeGlowSubscription) = v36;

        swift_beginAccess();
        sub_257ECDD30();
        swift_endAccess();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
        sub_257ECDD30();
        swift_endAccess();
        sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40);
        sub_257ECDC50();
        v37 = [objc_opt_self() mainRunLoop];
        v85 = v37;
        v38 = sub_257ED0080();
        v39 = v74;
        (*(*(v38 - 8) + 56))(v74, 1, 1, v38);
        sub_257BD2C2C(0, &unk_281543D40);
        sub_257BD2D4C(&qword_2815444A0, &qword_27F8F6F80);
        v27 = v34;
        sub_257CA64A0(&qword_281543D50, &unk_281543D40);
        v40 = v75;
        v41 = v73;
        sub_257ECDDF0();
        sub_257BE4084(v39, &unk_27F8F4DB0);

        (*(v72 + 8))(v6, v41);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_257BD2D4C(&qword_281544210, &unk_27F8F7A50);
        v42 = v77;
        v29 = sub_257ECDE50();

        (*(v76 + 8))(v40, v42);
        goto LABEL_25;
    }

LABEL_22:
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
    sub_257ECDD30();
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
    sub_257ECDD30();
    swift_endAccess();
    sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
    sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40);
    sub_257ECDC50();
    v51 = [objc_opt_self() mainRunLoop];
    v85 = v51;
    v52 = sub_257ED0080();
    v53 = v74;
    (*(*(v52 - 8) + 56))(v74, 1, 1, v52);
    sub_257BD2C2C(0, &unk_281543D40);
    sub_257BD2D4C(&qword_2815444A0, &qword_27F8F6F80);
    sub_257CA64A0(&qword_281543D50, &unk_281543D40);
    v54 = v75;
    v55 = v73;
    sub_257ECDDF0();
    sub_257BE4084(v53, &unk_27F8F4DB0);

    (*(v72 + 8))(v6, v55);
    swift_allocObject();
    v27 = v0;
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&qword_281544210, &unk_27F8F7A50);
    v56 = v77;
    v29 = sub_257ECDE50();

    (*(v76 + 8))(v54, v56);
LABEL_25:
    v30 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_freezeFrameReviewSubscription;
    goto LABEL_35;
  }

  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control) > 0xCu)
  {
    if (v23 == 13)
    {
      v78 = v16;
      v79 = v22;
      v61 = v70 - v21;
      v80 = v20;
      v81 = v0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
      sub_257ECDD30();
      swift_endAccess();
      sub_257ECFD00();
      sub_257BD2C2C(0, &qword_281543F10);
      (*(v10 + 104))(v12, *MEMORY[0x277D851C0], v9);
      v62 = sub_257ECFD90();
      (*(v10 + 8))(v12, v9);
      v85 = v62;
      sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
      sub_257CA64A0(&qword_281543F20, &qword_281543F10);
      v63 = v78;
      sub_257ECDE00();

      (*(v82 + 8))(v15, v83);
      (*(v84 + 8))(v18, v63);
      swift_allocObject();
      v27 = v81;
      swift_unknownObjectWeakInit();
      sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88);
      v64 = v80;
      v29 = sub_257ECDE50();

      (*(v79 + 8))(v61, v64);
      v30 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_pointSpeakGlowSubscription;
      goto LABEL_35;
    }

    if (v23 == 14)
    {
      v78 = v16;
      v79 = v22;
      v43 = v70 - v21;
      v80 = v20;
      v81 = v0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
      sub_257ECDD30();
      swift_endAccess();
      sub_257ECFD00();
      sub_257BD2C2C(0, &qword_281543F10);
      (*(v10 + 104))(v12, *MEMORY[0x277D851C0], v9);
      v44 = sub_257ECFD90();
      (*(v10 + 8))(v12, v9);
      v85 = v44;
      sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
      sub_257CA64A0(&qword_281543F20, &qword_281543F10);
      v45 = v78;
      sub_257ECDE00();

      (*(v82 + 8))(v15, v83);
      (*(v84 + 8))(v18, v45);
      swift_allocObject();
      v27 = v81;
      swift_unknownObjectWeakInit();
      sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88);
      v46 = v80;
      v29 = sub_257ECDE50();

      (*(v79 + 8))(v43, v46);
      v30 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_textDetectionGlowSubscription;
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  if (v23 != 10)
  {
    if (v23 == 12)
    {
      v78 = v16;
      v79 = v22;
      v24 = v70 - v21;
      v80 = v20;
      v81 = v0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
      sub_257ECDD30();
      swift_endAccess();
      sub_257ECFD00();
      sub_257BD2C2C(0, &qword_281543F10);
      (*(v10 + 104))(v12, *MEMORY[0x277D851C0], v9);
      v25 = sub_257ECFD90();
      (*(v10 + 8))(v12, v9);
      v85 = v25;
      sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
      sub_257CA64A0(&qword_281543F20, &qword_281543F10);
      v26 = v78;
      sub_257ECDE00();

      (*(v82 + 8))(v15, v83);
      (*(v84 + 8))(v18, v26);
      swift_allocObject();
      v27 = v81;
      swift_unknownObjectWeakInit();
      sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88);
      v28 = v80;
      v29 = sub_257ECDE50();

      (*(v79 + 8))(v24, v28);
      v30 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_imageCaptionGlowSubscription;
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  v78 = v16;
  v79 = v22;
  v57 = v70 - v21;
  v80 = v20;
  v81 = v0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10);
  (*(v10 + 104))(v12, *MEMORY[0x277D851C0], v9);
  v58 = sub_257ECFD90();
  (*(v10 + 8))(v12, v9);
  v85 = v58;
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257CA64A0(&qword_281543F20, &qword_281543F10);
  v59 = v78;
  sub_257ECDE00();

  (*(v82 + 8))(v15, v83);
  (*(v84 + 8))(v18, v59);
  swift_allocObject();
  v27 = v81;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88);
  v60 = v80;
  v29 = sub_257ECDE50();

  (*(v79 + 8))(v57, v60);
  v30 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_doorDetectionGlowSubscription;
LABEL_35:
  *(v27 + *v30) = v29;
}

void sub_257CA3A1C()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control] - 5 <= 1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D75E40]) initWithDelegate_];
    v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction];
    *&v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction] = v1;
    v3 = v1;

    if (v3)
    {
      [v0 addInteraction_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257CA3B08()
{
  v1 = v0;
  v2 = sub_257CA0E28();
  [v2 setIsAccessibilityElement_];

  v3 = sub_257CA150C();
  [v3 setIsAccessibilityElement_];

  v4 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton;
  v5 = *&v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton];
  sub_257D14A40();
  v6 = sub_257ECF4C0();

  [v5 setAccessibilityLabel_];

  v7 = *&v1[v4];
  Control.rawValue.getter();
  v8 = v1;
  v9 = v7;
  v10 = sub_257ECF4C0();

  [v9 setAccessibilityIdentifier_];

  v11 = *&v8[v4];
  v12 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  if (v8[v12])
  {
    v13 = v11;
    v14 = 0;
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = objc_opt_self();
    v13 = v11;
    v17 = [v16 bundleForClass_];
    v18 = sub_257ECF4C0();
    v19 = sub_257ECF4C0();
    v14 = [v17 localizedStringForKey:v18 value:0 table:v19];

    if (!v14)
    {
      sub_257ECF500();
      v14 = sub_257ECF4C0();
    }
  }

  [v13 setAccessibilityHint_];

  v20 = *MEMORY[0x277D765A0];
  v21 = *&v8[v4];
  [v21 setAccessibilityTraits_];

  [v8 setAccessibilityTraits_];
  sub_257C9FD54();
}

void sub_257CA3DC8()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = *(v4 + 40);
  v11 = v10(v3, v4);
  v12 = v10(v3, v4);
  v13 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    v14 = (v9 - v11) * 0.5;
    v15 = sub_257CA9B90();
    v16 = sub_257CA9B88();
    [v1 bounds];
    v18 = v17 - v6 - v15 - v16;
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = v6;
    v25.size.height = v7;
    v19 = v15 + CGRectGetMaxX(v25);
    v20 = sub_257CA0E28();
    v21 = [objc_opt_self() systemFontOfSize_];
    [v20 setFont_];
  }

  else
  {
    v12 = v7;
    v18 = v6;
    v14 = 0.0;
    v19 = 0.0;
  }

  v22 = sub_257CA150C();
  [v22 setFrame_];

  v23 = sub_257CA0E28();
  [v23 setFrame_];
}

uint64_t sub_257CA4070(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v8 = sub_257ECF120();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_257ECF190();
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_257BD2C2C(0, &qword_281543F10);
  v15 = sub_257ECFD30();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v14;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v13, v10, v17);
  _Block_release(v17);

  (*(v22 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v21);
}

void sub_257CA4338(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn;
    v6 = Strong[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn];
    Strong[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] = a2 & 1;
    if (v6 != (a2 & 1))
    {
      [Strong sendActionsForControlEvents_];
      v7 = v4[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing];
      v4[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing] = v4[v5];
      sub_257CA0708(v7);
      sub_257C9FD54();
    }
  }
}

void sub_257CA43E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v3)
    {
      v2 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v3 && v3 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = sub_257ED0640();
      }
    }

    v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed] = v2 & 1;
    sub_257CA1814();
    sub_257C9FD54();
  }
}

void sub_257CA45A0()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control];
  v3 = &v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v2 == 6)
  {
    if (Strong)
    {
      v5 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 16))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v11 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
    swift_beginAccess();
    if (v1[v11] != 1 || (v7 & 1) != 0)
    {
      if (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
      {
        return;
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();
LABEL_19:
      v15 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn;
      v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] = (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] & 1) == 0;
      [v1 sendActionsForControlEvents_];
      v16 = v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing];
      v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing] = v1[v15];
      sub_257CA0708(v16);
      sub_257C9FD54();
      return;
    }
  }

  else
  {
    if (Strong)
    {
      v8 = *(v3 + 1);
      v9 = swift_getObjectType();
      v10 = (*(v8 + 16))(v9, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
    }

    v12 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
    swift_beginAccess();
    if (v1[v12] != 1 || (v10 & 1) != 0)
    {
      if (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
      {
        return;
      }

      goto LABEL_19;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v3 + 1);
    v14 = swift_getObjectType();
    (*(v13 + 8))(v1, &off_28690A770, v14, v13);
    swift_unknownObjectRelease();
  }
}

void sub_257CA4818()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  if (v0[v1] == 1 && (v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed] & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn;
    v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] = (v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] & 1) == 0;
    [v0 sendActionsForControlEvents_];
    v6 = v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing];
    v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing] = v0[v5];
    sub_257CA0708(v6);
    sub_257C9FD54();
  }

  else
  {
    v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 1);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v0, &off_28690A770, ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_257CA4938(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_257BE4084(v9, &unk_27F8F62F0);
}

id sub_257CA49C8()
{
  ObjectType = swift_getObjectType();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_257D53928();
  v3 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control;
  v4 = sub_257C3EF48(v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control], v2);

  if (v4)
  {
    v8 = v0[v3];
    sub_257D56A50(&v8);
    v7 = v0;
    v5 = &v7;
  }

  else
  {
    v9.receiver = v0;
    v5 = &v9;
  }

  v5->super_class = ObjectType;
  return [(objc_super *)v5 removeFromSuperview];
}

uint64_t sub_257CA4C3C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_257CA4C84(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_257CA16B8(v2);
  return sub_257CA4CF4;
}

void sub_257CA4CF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_257CA4D74(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_257C9FD54();

  return swift_unknownObjectRelease();
}

uint64_t sub_257CA4DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257CA150C();
  return v0;
}

double sub_257CA4ED8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  if (*(v0 + v1) == 1 && (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed) & 1) == 0)
  {
    v2 = sub_257CA0E28();
  }

  else
  {
    v2 = sub_257CA150C();
  }

  v3 = v2;
  [v2 accessibilityActivationPoint];
  v5 = v4;

  return v5;
}

uint64_t sub_257CA4FE8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

BOOL sub_257CA5218()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      swift_getObjectType();
      v4 = *(v3 + 8);
      v5 = v1;
      v4();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return v1 != 0;
}

void sub_257CA5454(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction;
  v9 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction];
  if (v9)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0);
    v10 = v9;
    v11 = a1;
    v12 = sub_257ECFF50();

    if (v12)
    {
      v13 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
      swift_beginAccess();
      v14 = v2[v13];
      sub_257ECD350();
      v15 = v2;
      v16 = sub_257ECDA20();
      v17 = sub_257ECFBD0();
      if (os_log_type_enabled(v16, v17))
      {
        v27 = v15;
        v18 = v14 ^ 1;
        v19 = swift_slowAlloc();
        v26 = v14;
        v20 = v19;
        *v19 = 67109632;
        *(v19 + 4) = v18;
        v15 = v27;
        *(v19 + 8) = 1024;
        *(v19 + 10) = v2[v13];
        *(v19 + 14) = 1024;
        *(v19 + 16) = *(&v15->isa + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v16, v17, "should begin: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v20, 0x14u);
        v21 = v20;
        v14 = v26;
        MEMORY[0x259C74820](v21, -1, -1);
      }

      else
      {

        v16 = v15;
      }

      (*(v5 + 8))(v7, v4);
      if (v14)
      {
        v22 = *&v2[v8];
        if (v22)
        {
          [v22 cancelInteraction];
          v23 = *&v2[v8];
          if (v23)
          {
            v24 = v23;
            sub_257CA62DC(1);

            if (*&v2[v8])
            {
              [v15 removeInteraction:?];
              sub_257CA3A1C();
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

void sub_257CA5740(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction;
  v12 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction];
  if (v12)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0);
    v13 = v12;
    v14 = a1;
    v15 = sub_257ECFF50();

    if (v15)
    {
      if ((v2[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed] & 1) == 0)
      {
        sub_257ECD350();
        v19 = sub_257ECDA20();
        v22 = sub_257ECFBD0();
        if (!os_log_type_enabled(v19, v22))
        {
          goto LABEL_15;
        }

        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_257BAC000, v19, v22, "will present", v21, 2u);
        goto LABEL_12;
      }

      v16 = *&v2[v11];
      if (v16)
      {
        [v16 cancelInteraction];
        v17 = *&v2[v11];
        if (v17)
        {
          v18 = v17;
          sub_257CA62DC(1);

          if (*&v2[v11])
          {
            [v2 removeInteraction_];
            sub_257CA3A1C();
            sub_257ECD350();
            v19 = sub_257ECDA20();
            v20 = sub_257ECFBD0();
            if (!os_log_type_enabled(v19, v20))
            {
              v10 = v8;
              goto LABEL_15;
            }

            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_257BAC000, v19, v20, "will not present", v21, 2u);
            v10 = v8;
LABEL_12:
            MEMORY[0x259C74820](v21, -1, -1);
LABEL_15:

            (*(v5 + 8))(v10, v4);
            return;
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }
}

id sub_257CA5AC8(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction];
  if (!v8)
  {
    return 0;
  }

  sub_257BD2C2C(0, &qword_27F8F62E0);
  v9 = v8;
  v10 = a1;
  v11 = sub_257ECFF50();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_257ECD350();
  v12 = v2;
  v13 = sub_257ECDA20();
  v14 = sub_257ECFBD0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315650;
    v17 = sub_257ECFEC0();
    v19 = sub_257BF1FC8(v17, v18, &v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 1024;
    v20 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
    swift_beginAccess();
    LODWORD(v20) = v12[v20];

    *(v15 + 14) = v20;
    *(v15 + 18) = 1024;
    v21 = v12[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed];

    *(v15 + 20) = v21;
    _os_log_impl(&dword_257BAC000, v13, v14, "location: %s, expanded: %{BOOL}d, dimmed: %{BOOL}d", v15, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x259C74820](v16, -1, -1);
    MEMORY[0x259C74820](v15, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  return [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
}

uint64_t sub_257CA5DFC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257CA5E7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257CA5F10()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_peopleDetectionGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_doorDetectionGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_detectionModeGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_imageCaptionGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_pointSpeakGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_textDetectionGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_focusLockGlowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_freezeFrameReviewSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_detectionModeSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257CA6044(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction];
  if (v8)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0);
    v9 = v8;
    v10 = a1;
    v11 = sub_257ECFF50();

    if (v11)
    {
      sub_257ECD350();
      v12 = v2;
      v13 = sub_257ECDA20();
      v14 = sub_257ECFBD0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109376;
        v16 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
        swift_beginAccess();
        *(v15 + 4) = *(&v12->isa + v16);
        *(v15 + 8) = 1024;
        *(v15 + 10) = *(&v12->isa + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v13, v14, "expanded: %{BOOL}d, dimmed: %{BOOL}d", v15, 0xEu);
        MEMORY[0x259C74820](v15, -1, -1);
      }

      else
      {

        v13 = v12;
      }

      (*(v5 + 8))(v7, v4);
      if (*(&v12->isa + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed) != 1 || (v17 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded, swift_beginAccess(), *(&v12->isa + v17) == 1))
      {
        v18 = v12 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v18 + 1);
          ObjectType = swift_getObjectType();
          (*(v19 + 8))(v12, &off_28690A770, ObjectType, v19);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return 0;
}

uint64_t sub_257CA62DC(char a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v7 = v1;
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109632;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 1024;
    v11 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
    swift_beginAccess();
    *(v10 + 10) = *(&v7->isa + v11);
    *(v10 + 14) = 1024;
    *(v10 + 16) = *(&v7->isa + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed);

    _os_log_impl(&dword_257BAC000, v8, v9, "was cancelled: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v10, 0x14u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_257CA64A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_257BD2C2C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257CA6764(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6640);
  result = sub_257ED02B0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_257ED07B0();

    sub_257ECF5D0();
    result = sub_257ED0800();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_257CA6988(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Occupant();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6580);
  result = sub_257ED02B0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v15 = v31;
  v30 = a4;
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_257CA80C0(v19 + v20 * (v16 | (v13 << 6)), v15);
    sub_257ED07B0();
    sub_257ECCCF0();
    sub_257CA8180();
    sub_257ECF400();
    result = sub_257ED0800();
    v21 = -1 << *(v10 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v15 = v31;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v15 = v31;
LABEL_26:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_257C587D8(v15, *(v10 + 48) + v24 * v20);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v17 = v13;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v13];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v12 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_257CA6C50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6540);
  result = sub_257ED02B0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_257ECFF40();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_257CA6E44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6548);
  result = sub_257ED02B0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    result = MEMORY[0x259C732B0](*(v9 + 40), v16, 4);
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_257CA7034(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_257CA72B4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_257CA70C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for Occupant();
  v29 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_257CA80C0(*(v31 + 48) + *(v29 + 72) * v21, v9);
    v22 = v30(v9);
    result = sub_257CA8124(v9);
    if (v4)
    {
      return result;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;
        sub_257ECC3F0();
        return sub_257CA6988(v27, v26, v28, v24);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_257CA72B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:
        sub_257ECC3F0();
        sub_257CA6C50(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_257CA7420(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = v3;
    if (!v3)
    {
      return v3;
    }

    --v3;
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x259C72E20](v4 - 1, a1);
      goto LABEL_9;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    if (v3 >= *(v2 + 16))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      v3 = sub_257ED0210();
    }

    else
    {
      v5 = *(a1 + 32 + 8 * v3);
LABEL_9:
      v6 = v5;
      v7 = [v5 isKeyWindow];

      if (v7)
      {
        return v3;
      }
    }
  }
}

unint64_t sub_257CA7508@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x259C72E20](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_257CA7574()
{
  v0 = 0;
  v69 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  v3 = sub_257BD2C2C(0, &unk_281543DE0);
  v61 = sub_257C82BC4();
  v4 = sub_257ECFA70();

  v60 = 0;
  if ((v4 & 0xC000000000000001) == 0)
  {
    v20 = *(v4 + 32);
    v8 = ((1 << v20) + 63) >> 6;
    if ((v20 & 0x3Fu) > 0xD)
    {
      goto LABEL_40;
    }

LABEL_23:
    v58[1] = v58;
    v59 = v8;
    MEMORY[0x28223BE20](v5);
    v22 = v58 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v22, v21);
    v23 = 0;
    v24 = 0;
    v8 = v4 + 56;
    v25 = 1 << *(v4 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v0 = v26 & *(v4 + 56);
    v27 = (v25 + 63) >> 6;
    while (1)
    {
      if (!v0)
      {
        v29 = v24;
        while (1)
        {
          v24 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_39;
          }

          if (v24 >= v27)
          {
            goto LABEL_37;
          }

          v30 = *(v8 + 8 * v24);
          ++v29;
          if (v30)
          {
            v28 = __clz(__rbit64(v30));
            v0 = (v30 - 1) & v30;
            goto LABEL_33;
          }
        }
      }

      v28 = __clz(__rbit64(v0));
      v0 &= v0 - 1;
LABEL_33:
      v31 = v28 | (v24 << 6);
      if (![*(*(v4 + 48) + 8 * v31) activationState])
      {
        *&v22[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
        if (__OFADD__(v23++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_37:
    v6 = sub_257CA6C50(v22, v59, v23, v4);
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v6 = MEMORY[0x277D84FA0];
  v64 = MEMORY[0x277D84FA0];
  sub_257ED01D0();
  v7 = sub_257ED0230();
  if (!v7)
  {
LABEL_20:

    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v0 = 63;
  v8 = 1;
  while (1)
  {
    v62 = v7;
    swift_dynamicCast();
    v9 = v63;
    if (![v63 activationState])
    {
      break;
    }

LABEL_5:
    v7 = sub_257ED0230();
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  if (*(v6 + 24) <= *(v6 + 16))
  {
    sub_257C51BC4();
  }

  v6 = v64;
  v4 = v63;
  v10 = sub_257ECFF40();
  v11 = v64 + 56;
  v12 = -1 << *(v64 + 32);
  v13 = v10 & ~v12;
  v14 = v13 >> 6;
  if (((-1 << v13) & ~*(v64 + 56 + 8 * (v13 >> 6))) != 0)
  {
    v15 = __clz(__rbit64((-1 << v13) & ~*(v64 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(*(v6 + 48) + 8 * v15) = v9;
    ++*(v6 + 16);
    goto LABEL_5;
  }

  v16 = 0;
  v17 = (63 - v12) >> 6;
  while (++v14 != v17 || (v16 & 1) == 0)
  {
    v18 = v14 == v17;
    if (v14 == v17)
    {
      v14 = 0;
    }

    v16 |= v18;
    v19 = *(v11 + 8 * v14);
    if (v19 != -1)
    {
      v15 = __clz(__rbit64(~v19)) + (v14 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_23;
  }

  v38 = swift_slowAlloc();
  v6 = sub_257CA7034(v38, v8, v4, sub_257CA6728);
  v60 = v0;

  MEMORY[0x259C74820](v38, -1, -1);
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_38:
    swift_unknownObjectRetain();
    sub_257ED01D0();
    sub_257ECFAA0();
    v34 = v64;
    v33 = v65;
    v35 = v66;
    v36 = v67;
    v37 = v68;
    goto LABEL_47;
  }

LABEL_43:
  v39 = -1 << *(v6 + 32);
  v33 = v6 + 56;
  v35 = ~v39;
  v40 = -v39;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v37 = v41 & *(v6 + 56);
  sub_257ECC3F0();
  v36 = 0;
  v34 = v6;
LABEL_47:
  v61 = v35;
  v42 = (v35 + 64) >> 6;
  if (v34 < 0)
  {
    goto LABEL_54;
  }

LABEL_48:
  v43 = v36;
  v44 = v37;
  v45 = v36;
  if (v37)
  {
LABEL_52:
    v46 = (v44 - 1) & v44;
    v47 = *(*(v34 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));
    if (!v47)
    {
      goto LABEL_59;
    }

    while (1)
    {
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (v49)
      {
        break;
      }

      v36 = v45;
      v37 = v46;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_48;
      }

LABEL_54:
      v48 = sub_257ED0230();
      if (v48)
      {
        v62 = v48;
        swift_dynamicCast();
        v47 = v63;
        v45 = v36;
        v46 = v37;
        if (v63)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v52 = v49;
    sub_257C02520();

    v53 = [v52 windows];

    sub_257BD2C2C(0, &qword_27F8F6F90);
    v3 = sub_257ECF810();

    if (v3 >> 62)
    {
      goto LABEL_77;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
    {
      v55 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x259C72E20](v55, v3);
        }

        else
        {
          if (v55 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_76;
          }

          v56 = *(v3 + 8 * v55 + 32);
        }

        v50 = v56;
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if ([v56 isKeyWindow])
        {

          return v50;
        }

        ++v55;
        if (v57 == i)
        {
          goto LABEL_78;
        }
      }

LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      ;
    }

LABEL_78:
  }

  else
  {
    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_75;
      }

      if (v45 >= v42)
      {
        break;
      }

      v44 = *(v33 + 8 * v45);
      ++v43;
      if (v44)
      {
        goto LABEL_52;
      }
    }

LABEL_59:
    sub_257C02520();
  }

  return 0;
}

unint64_t sub_257CA7C64()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  v2 = sub_257BD2C2C(0, &unk_281543DE0);
  sub_257C82BC4();
  v3 = sub_257ECFA70();

  v38 = MEMORY[0x277D84F90];
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_257ED01D0();
    sub_257ECFAA0();
    v3 = v32;
    v4 = v33;
    v5 = v34;
    v6 = v35;
    v7 = v36;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_257ED0230())
    {
      goto LABEL_21;
    }

    swift_dynamicCast();
    v16 = v37;
    v14 = v6;
    v15 = v7;
    if (!v37)
    {
      goto LABEL_21;
    }

LABEL_19:
    if ([v16 activationState])
    {
    }

    else
    {
      sub_257ED0330();
      sub_257ED0370();
      sub_257ED0380();
      sub_257ED0340();
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v14 >= v11)
    {
      break;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

LABEL_21:
  sub_257C02520();
  v2 = v38;
  if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v17 = *(v38 + 16);
  if (v17)
  {
    while (2)
    {
      while (!__OFSUB__(v17--, 1))
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x259C72E20](v17, v2);
        }

        else
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          if (v17 >= *(v2 + 16))
          {
            goto LABEL_37;
          }

          v19 = *(v2 + 32 + 8 * v17);
        }

        v20 = v19;
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();

        if (v21)
        {
          MEMORY[0x28223BE20](v22);
          v37 = v17;
          sub_257CA80A0(&v37, &v38);
          v23 = v38;
          goto LABEL_40;
        }

        if (!v17)
        {
          goto LABEL_39;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v17 = sub_257ED0210();
      if (!v17)
      {
        break;
      }

      continue;
    }
  }

LABEL_39:
  v23 = 0;
LABEL_40:

  if (!v23)
  {
    return 0;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {

    return 0;
  }

  v25 = [v24 windows];

  sub_257BD2C2C(0, &qword_27F8F6F90);
  v26 = sub_257ECF810();

  v27 = sub_257CA7420(v26);
  v28 = MEMORY[0x28223BE20](v27);
  v29 = 0;
  if ((v30 & 1) == 0)
  {
    v37 = v28;
    sub_257CA81D8(&v37, &v38);
    v29 = v38;
  }

  return v29;
}

uint64_t sub_257CA80C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Occupant();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CA8124(uint64_t a1)
{
  v2 = type metadata accessor for Occupant();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257CA8180()
{
  result = qword_27F8F57B0;
  if (!qword_27F8F57B0)
  {
    sub_257ECCCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F57B0);
  }

  return result;
}

uint64_t sub_257CA8200()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

id sub_257CA837C(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 - 5 < 2)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (a1 <= 1u || a1 == 2)
  {
LABEL_7:
    v1 = sub_257ECF4C0();
    v2 = [objc_opt_self() systemImageNamed_];

    if (v2)
    {
      return v2;
    }

    goto LABEL_13;
  }

  v4 = sub_257ECF4C0();
  v5 = objc_opt_self();
  v6 = [v5 systemImageNamed_];

  if (v6)
  {
    return v6;
  }

  v7 = sub_257ECF4C0();
  v8 = [v5 systemImageNamed_];

  if (v8)
  {
    return v8;
  }

LABEL_13:
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v9 init];
}

uint64_t sub_257CA85E8()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

unint64_t sub_257CA8764@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257CA9794(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_257CA8854()
{
  result = qword_27F8F6F98;
  if (!qword_27F8F6F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6F98);
  }

  return result;
}

unint64_t sub_257CA88BC()
{
  result = qword_27F8F6FA8;
  if (!qword_27F8F6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6FA8);
  }

  return result;
}

uint64_t (*sub_257CA8910(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C72E20](a2, a3);
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
    return sub_257CA9B84;
  }

  __break(1u);
  return result;
}

void (*sub_257CA8990(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C72E20](a2, a3);
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
    return sub_257CA8A10;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_257CA8A18(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C72E20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = sub_257ECC3F0();
LABEL_5:
    *v3 = v4;
    return sub_257CA8A98;
  }

  __break(1u);
  return result;
}

void sub_257CA8AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FB0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277CE5860];
  *(v0 + 16) = xmmword_257EDBE50;
  v2 = *v1;
  v3 = *MEMORY[0x277CE5840];
  *(v0 + 32) = *v1;
  *(v0 + 40) = v3;
  v4 = *MEMORY[0x277CE5878];
  v5 = *MEMORY[0x277CE5870];
  *(v0 + 48) = *MEMORY[0x277CE5878];
  *(v0 + 56) = v5;
  v6 = *MEMORY[0x277CE5EA8];
  type metadata accessor for DeviceType(0);
  v7 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = sub_257ECF7F0();

  v74 = objc_opt_self();
  v18 = [v74 discoverySessionWithDeviceTypes:v17 mediaType:v16 position:1];

  v68 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDFA20;
  v69 = v12;
  *(inited + 32) = v12;
  *(inited + 40) = 0;
  *(inited + 48) = v14;
  *(inited + 56) = 1;
  *(inited + 64) = v13;
  *(inited + 72) = 2;
  *(inited + 80) = v15;
  *(inited + 88) = 3;
  v20 = *MEMORY[0x277CE5880];
  *(inited + 96) = *MEMORY[0x277CE5880];
  *(inited + 104) = 5;
  v21 = *MEMORY[0x277CE5888];
  *(inited + 112) = *MEMORY[0x277CE5888];
  *(inited + 120) = 6;
  v22 = *MEMORY[0x277CE5890];
  *(inited + 128) = *MEMORY[0x277CE5890];
  *(inited + 136) = 7;
  v23 = v20;
  v24 = v21;
  v25 = v22;
  v73 = v23;
  v72 = v24;
  v71 = v25;
  v26 = sub_257BE8E28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FC0);
  swift_arrayDestroy();
  v67 = v18;
  v27 = [v18 devices];
  sub_257CA9748();
  v28 = sub_257ECF810();

  if (v28 >> 62)
  {
    goto LABEL_20;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
LABEL_21:
    v31 = MEMORY[0x277D84F90];
LABEL_22:

    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_257ED6D30;
    *(v42 + 32) = v69;
    v43 = v68;
    v44 = sub_257ECF7F0();

    v45 = [v74 discoverySessionWithDeviceTypes:v44 mediaType:v43 position:2];

    v70 = v45;
    v46 = [v45 devices];
    v47 = sub_257ECF810();

    if (v47 >> 62)
    {
      goto LABEL_49;
    }

    for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
    {

      if (i)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_257BFCF08(0, *(v31 + 2) + 1, 1, v31);
        }

        v50 = *(v31 + 2);
        v49 = *(v31 + 3);
        if (v50 >= v49 >> 1)
        {
          v31 = sub_257BFCF08((v49 > 1), v50 + 1, 1, v31);
        }

        *(v31 + 2) = v50 + 1;
        v31[v50 + 32] = 4;
      }

      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_257EDBBA0;
      *(v51 + 32) = v71;
      *(v51 + 40) = v73;
      *(v51 + 48) = v72;
      v52 = sub_257ECF7F0();

      v53 = [v74 discoverySessionWithDeviceTypes:v52 mediaType:v43 position:0];

      v74 = v53;
      v54 = [v53 devices];
      v55 = sub_257ECF810();

      if (v55 >> 62)
      {
        v56 = sub_257ED0210();
        if (!v56)
        {
LABEL_51:

          return;
        }
      }

      else
      {
        v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v56)
        {
          goto LABEL_51;
        }
      }

      v43 = 0;
      v76 = v55 & 0xFFFFFFFFFFFFFF8;
      v78 = v55 & 0xC000000000000001;
      v57 = v55;
      while (1)
      {
        if (v78)
        {
          v58 = MEMORY[0x259C72E20](v43, v55);
        }

        else
        {
          if (v43 >= *(v76 + 16))
          {
            goto LABEL_48;
          }

          v58 = *(v55 + 8 * v43 + 32);
        }

        v59 = v58;
        v60 = (v43 + 1);
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v61 = [v58 deviceType];
        inited = v61;
        if (!*(v26 + 16))
        {
          goto LABEL_53;
        }

        v62 = sub_257C09E74(v61);
        if ((v63 & 1) == 0)
        {
          goto LABEL_53;
        }

        v64 = *(*(v26 + 56) + v62);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_257BFCF08(0, *(v31 + 2) + 1, 1, v31);
        }

        v66 = *(v31 + 2);
        v65 = *(v31 + 3);
        if (v66 >= v65 >> 1)
        {
          v31 = sub_257BFCF08((v65 > 1), v66 + 1, 1, v31);
        }

        *(v31 + 2) = v66 + 1;
        v31[v66 + 32] = v64;
        ++v43;
        v41 = v60 == v56;
        v55 = v57;
        if (v41)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      ;
    }
  }

LABEL_3:
  v30 = 0;
  v75 = v28 & 0xFFFFFFFFFFFFFF8;
  v77 = v28 & 0xC000000000000001;
  v31 = MEMORY[0x277D84F90];
  v32 = v28;
  while (1)
  {
    if (v77)
    {
      v33 = MEMORY[0x259C72E20](v30, v28);
    }

    else
    {
      if (v30 >= *(v75 + 16))
      {
        goto LABEL_19;
      }

      v33 = *(v28 + 8 * v30 + 32);
    }

    v34 = v33;
    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v29 = sub_257ED0210();
      if (!v29)
      {
        goto LABEL_21;
      }

      goto LABEL_3;
    }

    v35 = [v33 deviceType];
    v36 = v35;
    if (!*(v26 + 16))
    {
      break;
    }

    v37 = sub_257C09E74(v35);
    if ((v38 & 1) == 0)
    {
      break;
    }

    inited = *(*(v26 + 56) + v37);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_257BFCF08(0, *(v31 + 2) + 1, 1, v31);
    }

    v40 = *(v31 + 2);
    v39 = *(v31 + 3);
    if (v40 >= v39 >> 1)
    {
      v31 = sub_257BFCF08((v39 > 1), v40 + 1, 1, v31);
    }

    *(v31 + 2) = v40 + 1;
    v31[v40 + 32] = inited;
    ++v30;
    v41 = v28 == v29;
    v28 = v32;
    if (v41)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_53:

  __break(1u);
}

BOOL sub_257CA9238()
{
  sub_257CA8AA0();
  v1 = sub_257C592D0(2u, v0);

  if (!v1)
  {
    return 0;
  }

  v2 = 1;
  v3 = [objc_opt_self() defaultDeviceWithDeviceType:*MEMORY[0x277CE5870] mediaType:*MEMORY[0x277CE5EA8] position:1];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 activeFormat];
    v6 = [v5 autoFocusSystem];

    return v6 != 0;
  }

  return v2;
}

uint64_t sub_257CA930C()
{
  sub_257CA8AA0();
  v1 = v0;
  if (sub_257C592D0(2u, v0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5940);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_257ED6D30;
    *(v2 + 32) = 2;
    if (sub_257CA9238())
    {
      if (sub_257C592D0(3u, v1))
      {
        v2 = sub_257BFCF08(1, 2, 1, v2);
        *(v2 + 16) = 2;
        *(v2 + 33) = 3;
      }

      v3 = sub_257C592D0(4u, v1);

      if (v3)
      {
        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          v2 = sub_257BFCF08((v4 > 1), v5 + 1, 1, v2);
        }

        *(v2 + 16) = v5 + 1;
        v6 = v2 + v5;
        v7 = 4;
LABEL_42:
        *(v6 + 32) = v7;
        return v2;
      }

      return v2;
    }

LABEL_11:
    v8 = sub_257C592D0(4u, v1);

    if (v8)
    {
      v2 = sub_257BFCF08(1, 2, 1, v2);
      *(v2 + 16) = 2;
      *(v2 + 33) = 4;
    }

    return v2;
  }

  if (sub_257C592D0(1u, v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5940);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_257ED6D30;
    *(v2 + 32) = 1;
    goto LABEL_11;
  }

  if (sub_257C592D0(0, v1))
  {
    v2 = sub_257BFCF08(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    v11 = v10 + 1;
    if (v10 >= v9 >> 1)
    {
      v25 = sub_257BFCF08((v9 > 1), v10 + 1, 1, v2);
      v11 = v10 + 1;
      v2 = v25;
    }

    *(v2 + 16) = v11;
    *(v2 + v10 + 32) = 0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if (sub_257C592D0(4u, v1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_257BFCF08(0, *(v2 + 16) + 1, 1, v2);
    }

    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v26 = sub_257BFCF08((v12 > 1), v13 + 1, 1, v2);
      v14 = v13 + 1;
      v2 = v26;
    }

    *(v2 + 16) = v14;
    *(v2 + v13 + 32) = 4;
  }

  if (sub_257C592D0(7u, v1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_257BFCF08(0, *(v2 + 16) + 1, 1, v2);
    }

    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v27 = sub_257BFCF08((v15 > 1), v16 + 1, 1, v2);
      v17 = v16 + 1;
      v2 = v27;
    }

    *(v2 + 16) = v17;
    *(v2 + v16 + 32) = 7;
  }

  if (sub_257C592D0(5u, v1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_257BFCF08(0, *(v2 + 16) + 1, 1, v2);
    }

    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v28 = sub_257BFCF08((v18 > 1), v19 + 1, 1, v2);
      v20 = v19 + 1;
      v2 = v28;
    }

    *(v2 + 16) = v20;
    *(v2 + v19 + 32) = 5;
  }

  v21 = sub_257C592D0(6u, v1);

  if (v21)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_257BFCF08(0, *(v2 + 16) + 1, 1, v2);
    }

    v23 = *(v2 + 16);
    v22 = *(v2 + 24);
    if (v23 >= v22 >> 1)
    {
      v2 = sub_257BFCF08((v22 > 1), v23 + 1, 1, v2);
    }

    *(v2 + 16) = v23 + 1;
    v6 = v2 + v23;
    v7 = 6;
    goto LABEL_42;
  }

  return v2;
}

unint64_t sub_257CA9748()
{
  result = qword_281543F70;
  if (!qword_281543F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543F70);
  }

  return result;
}

unint64_t sub_257CA9794(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t sub_257CA97A4()
{
  result = qword_281545A78;
  if (!qword_281545A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545A78);
  }

  return result;
}

void sub_257CA97F8(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FB8);
  inited = swift_initStackObject();
  v3 = MEMORY[0x277CE5878];
  *(inited + 16) = xmmword_257EDFA20;
  v4 = *v3;
  *(inited + 32) = v4;
  *(inited + 40) = 0;
  v5 = *MEMORY[0x277CE5840];
  *(inited + 48) = *MEMORY[0x277CE5840];
  *(inited + 56) = 1;
  v6 = *MEMORY[0x277CE5860];
  *(inited + 64) = *MEMORY[0x277CE5860];
  *(inited + 72) = 2;
  v7 = *MEMORY[0x277CE5870];
  *(inited + 80) = *MEMORY[0x277CE5870];
  *(inited + 88) = 3;
  v8 = *MEMORY[0x277CE5880];
  *(inited + 96) = *MEMORY[0x277CE5880];
  *(inited + 104) = 5;
  v9 = *MEMORY[0x277CE5888];
  *(inited + 112) = *MEMORY[0x277CE5888];
  *(inited + 120) = 6;
  v10 = *MEMORY[0x277CE5890];
  *(inited + 128) = *MEMORY[0x277CE5890];
  *(inited + 136) = 7;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = sub_257BE8E28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FC0);
  swift_arrayDestroy();
  if (a1 >> 62)
  {
LABEL_30:
    v19 = sub_257ED0210();
    if (!v19)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_31;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v38 = v18;
  while (1)
  {
LABEL_6:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x259C72E20](v20, a1);
    }

    else
    {
      if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v22 = *(a1 + 32 + 8 * v20);
    }

    v23 = v22;
    if (__OFADD__(v20++, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v22 position] == 2)
    {
      break;
    }

    v29 = [v23 deviceType];
    v30 = v29;
    if (!*(v18 + 16) || (v31 = sub_257C09E74(v29), (v32 & 1) == 0))
    {

      __break(1u);
      return;
    }

    v33 = *(*(v18 + 56) + v31);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_257BFCF08(0, *(v21 + 2) + 1, 1, v21);
    }

    v35 = *(v21 + 2);
    v34 = *(v21 + 3);
    if (v35 >= v34 >> 1)
    {
      v21 = sub_257BFCF08((v34 > 1), v35 + 1, 1, v21);
    }

    *(v21 + 2) = v35 + 1;
    v21[v35 + 32] = v33;
LABEL_5:
    v18 = v38;
    if (v20 == v19)
    {
      goto LABEL_31;
    }
  }

  v25 = *(v21 + 2);
  v26 = (v21 + 32);
  v27 = v25;
  do
  {
    if (!v27)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_257BFCF08(0, v25 + 1, 1, v21);
      }

      v37 = *(v21 + 2);
      v36 = *(v21 + 3);
      if (v37 >= v36 >> 1)
      {
        v21 = sub_257BFCF08((v36 > 1), v37 + 1, 1, v21);
      }

      *(v21 + 2) = v37 + 1;
      v21[v37 + 32] = 4;
      goto LABEL_5;
    }

    v28 = *v26++;
    --v27;
  }

  while (v28 != 4);

  if (v20 != v19)
  {
    goto LABEL_6;
  }

LABEL_31:
}

id sub_257CA9B98()
{
  v0 = sub_257ECF030();
  v1 = objc_opt_self();
  v2 = &selRef_secondarySystemFillColor;
  if ((v0 & 1) == 0)
  {
    v2 = &selRef_secondarySystemBackgroundColor;
  }

  result = [v1 *v2];
  qword_281548308 = result;
  return result;
}

uint64_t sub_257CA9C10()
{
  result = AXDeviceHasJindo();
  v1 = 8.0;
  if (result)
  {
    v1 = 24.0;
  }

  qword_2815482F8 = *&v1;
  return result;
}

CGFloat sub_257CA9C70()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetHeight(v10) / 3.0;
  qword_27F912F38 = *&result;
  return result;
}

uint64_t sub_257CA9D24()
{
  if (qword_27F8F4668 != -1)
  {
    result = swift_once();
  }

  v0 = 16.0;
  if (byte_27F8F8D88)
  {
    v0 = 12.0;
  }

  qword_2815482F0 = *&v0;
  return result;
}

double sub_257CA9D98()
{
  if (qword_281544A58 != -1)
  {
    swift_once();
  }

  return *&qword_2815482F0;
}

id sub_257CA9DF0()
{
  v0 = sub_257ECCD90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultMetrics];
  [objc_opt_self() defaultFontSize];
  sub_257ECCD80();
  v5 = sub_257ECCD60();
  (*(v1 + 8))(v3, v0);
  CEKIsSFCameraSupportedForLocale();

  v6 = CEKFontOfSizeAndStyle();
  v7 = [v4 scaledFontForFont_];

  return v7;
}

id sub_257CA9F5C()
{
  v28 = objc_opt_self();
  [v28 defaultFontSize];
  v0 = CEKFontOfSizeAndStyle();
  v27 = [v0 fontDescriptor];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v2 = *MEMORY[0x277D74338];
  *(inited + 32) = *MEMORY[0x277D74338];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_257EDBBA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FD8);
  v4 = swift_initStackObject();
  v5 = MEMORY[0x277D76908];
  *(v4 + 16) = xmmword_257ED9BD0;
  v6 = *v5;
  *(v4 + 32) = v6;
  v7 = *MEMORY[0x277D76900];
  *(v4 + 40) = 6;
  *(v4 + 48) = v7;
  *(v4 + 56) = 0;
  v8 = v6;
  v9 = v7;
  v10 = v8;
  v11 = v9;
  v12 = v10;
  v13 = v11;
  v14 = v2;
  v15 = sub_257BE99E0(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FE0);
  swift_arrayDestroy();
  *(v3 + 32) = v15;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_257ED9BD0;
  *(v16 + 32) = v12;
  *(v16 + 40) = 35;
  *(v16 + 48) = v13;
  *(v16 + 56) = 2;
  v17 = sub_257BE99E0(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v3 + 40) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_257ED9BD0;
  *(v18 + 32) = v12;
  *(v18 + 40) = 2;
  *(v18 + 48) = v13;
  *(v18 + 56) = 4;
  v19 = sub_257BE99E0(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v3 + 48) = v19;
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6FE8);
  *(inited + 40) = v3;
  sub_257BE9ACC(inited);
  swift_setDeallocating();
  sub_257CAA308(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_257CAA370();
  v20 = sub_257ECF3C0();

  v21 = [v27 fontDescriptorByAddingAttributes_];

  v22 = [objc_opt_self() defaultMetrics];
  v23 = v21;
  [v28 defaultFontSize];
  v24 = [v28 fontWithDescriptor:v23 size:?];

  v25 = [v22 scaledFontForFont_];
  return v25;
}

uint64_t sub_257CAA308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257CAA370()
{
  result = qword_281543E68;
  if (!qword_281543E68)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543E68);
  }

  return result;
}

uint64_t sub_257CAA3E8()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

id sub_257CAA5D8(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_257CAA650(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 - 3) >= 8u)
  {
    MEMORY[0x259C732E0](1);
    v2 = a2;
  }

  else
  {
    v2 = qword_257EDFFD8[(a2 - 3)];
  }

  return MEMORY[0x259C732E0](v2);
}

uint64_t sub_257CAA6A8()
{
  v1 = *v0;
  sub_257ED07B0();
  sub_257CAA650(v3, v1);
  return sub_257ED0800();
}

uint64_t sub_257CAA6F8()
{
  v1 = *v0;
  sub_257ED07B0();
  sub_257CAA650(v3, v1);
  return sub_257ED0800();
}

uint64_t sub_257CAA748(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_257ECF500();
  return v8;
}

uint64_t sub_257CAA870(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_257ECF500();
  return v8;
}

id sub_257CAAA3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257CAE178(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_257CAAA98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetectionModeSettingsViewController.DataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_257CAAB24()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___dataSource;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___dataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___dataSource];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_tableView];
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    objc_allocWithZone(type metadata accessor for DetectionModeSettingsViewController.DataSource());
    v6 = swift_allocObject();
    *(v6 + 16) = sub_257CAE144;
    *(v6 + 24) = v5;
    v7 = v4;
    v8 = v0;
    v9 = v0;
    v10 = sub_257ECDBD0();
    v11 = *&v0[v1];
    *&v9[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_257CAAC20(void *a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  if (a3 > 6u)
  {
    if (a3 > 8u)
    {
      if (a3 == 9)
      {
        v118 = sub_257ECF4C0();
        v119 = sub_257ECCE30();
        v23 = [a1 dequeueReusableCellWithIdentifier:v118 forIndexPath:v119];

        v120 = [v23 textLabel];
        if (v120)
        {
          v121 = v120;
          type metadata accessor for MAGUtilities();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v123 = [objc_opt_self() bundleForClass_];
          v124 = sub_257ECF4C0();
          v125 = sub_257ECF4C0();
          v126 = [v123 localizedStringForKey:v124 value:0 table:v125];

          if (!v126)
          {
            sub_257ECF500();
            v126 = sub_257ECF4C0();
          }

          [v121 setText_];
        }

        v127 = [v23 textLabel];
        if (v127)
        {
          v128 = v127;
          [v127 setNumberOfLines_];
        }

        v129 = [v23 textLabel];
        if (v129)
        {
          v130 = v129;
          [v129 setLineBreakMode_];
        }

        if (sub_257ECF030())
        {
          v131 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x6569762E74786574, 0xEF7265646E696677, a4);
          if (v131)
          {
            v42 = v131;
            v43 = [v23 imageView];
            if (!v43)
            {
LABEL_141:

              goto LABEL_142;
            }

            goto LABEL_107;
          }

          goto LABEL_142;
        }

        v155 = [v23 imageView];
        if (!v155)
        {
          goto LABEL_142;
        }

        v132 = v155;
        v156 = sub_257ECF4C0();
        v42 = [objc_opt_self() systemImageNamed_];

        if (!v42)
        {
          goto LABEL_140;
        }

        v157 = objc_opt_self();
        v158 = v42;
        v159 = [v157 configurationWithPointSize:4 weight:-1 scale:25.0];
        v149 = [v158 imageByApplyingSymbolConfiguration_];

        if (v149)
        {
          goto LABEL_138;
        }

        goto LABEL_139;
      }

      if (a3 != 10)
      {
        goto LABEL_108;
      }

      v58 = sub_257ECF4C0();
      v59 = sub_257ECCE30();
      v23 = [a1 dequeueReusableCellWithIdentifier:v58 forIndexPath:v59];

      v60 = [v23 textLabel];
      if (v60)
      {
        v61 = v60;
        type metadata accessor for MAGUtilities();
        v62 = swift_getObjCClassFromMetadata();
        v63 = [objc_opt_self() bundleForClass_];
        v64 = sub_257ECF4C0();
        v65 = sub_257ECF4C0();
        v66 = [v63 localizedStringForKey:v64 value:0 table:v65];

        if (!v66)
        {
          sub_257ECF500();
          v66 = sub_257ECF4C0();
        }

        [v61 setText_];
      }

      v67 = [v23 textLabel];
      if (v67)
      {
        v68 = v67;
        [v67 setNumberOfLines_];
      }

      v69 = [v23 textLabel];
      if (v69)
      {
        v70 = v69;
        [v69 setLineBreakMode_];
      }

      if ((sub_257ECF030() & 1) == 0)
      {
        v170 = [v23 imageView];
        if (!v170)
        {
          goto LABEL_142;
        }

        v132 = v170;
        v171 = sub_257ECF4C0();
        v42 = [objc_opt_self() systemImageNamed_];

        if (!v42)
        {
          goto LABEL_140;
        }

        v172 = objc_opt_self();
        v173 = v42;
        v174 = [v172 configurationWithPointSize:4 weight:-1 scale:25.0];
        v149 = [v173 imageByApplyingSymbolConfiguration_];

        if (v149)
        {
          goto LABEL_138;
        }

        goto LABEL_139;
      }

      v71 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000020, 0x8000000257EFD170, a4);
      if (!v71)
      {
        goto LABEL_142;
      }

      v42 = v71;
      v43 = [v23 imageView];
      if (!v43)
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (a3 != 7)
      {
        if (a3 == 8)
        {
          v28 = sub_257ECF4C0();
          v29 = sub_257ECCE30();
          v23 = [a1 dequeueReusableCellWithIdentifier:v28 forIndexPath:v29];

          v30 = [v23 textLabel];
          if (v30)
          {
            v31 = v30;
            type metadata accessor for MAGUtilities();
            v32 = swift_getObjCClassFromMetadata();
            v33 = [objc_opt_self() bundleForClass_];
            v34 = sub_257ECF4C0();
            v35 = sub_257ECF4C0();
            v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

            if (!v36)
            {
              sub_257ECF500();
              v36 = sub_257ECF4C0();
            }

            [v31 setText_];
          }

          v37 = [v23 textLabel];
          if (v37)
          {
            v38 = v37;
            [v37 setNumberOfLines_];
          }

          v39 = [v23 textLabel];
          if (v39)
          {
            v40 = v39;
            [v39 setLineBreakMode_];
          }

          if (sub_257ECF030())
          {
            v41 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x6C69662E61666F73, 0xE90000000000006CLL, a4);
            if (v41)
            {
              v42 = v41;
              v43 = [v23 imageView];
              if (!v43)
              {
                goto LABEL_141;
              }

              goto LABEL_107;
            }

            goto LABEL_142;
          }

          v160 = [v23 imageView];
          if (!v160)
          {
            goto LABEL_142;
          }

          v132 = v160;
          v161 = sub_257ECF4C0();
          v42 = [objc_opt_self() systemImageNamed_];

          if (!v42)
          {
            goto LABEL_140;
          }

          v162 = objc_opt_self();
          v163 = v42;
          v164 = [v162 configurationWithPointSize:4 weight:-1 scale:25.0];
          v149 = [v163 imageByApplyingSymbolConfiguration_];

          if (v149)
          {
LABEL_138:
            v175 = [objc_opt_self() whiteColor];
            v42 = [v149 imageWithTintColor:v175 renderingMode:1];

            goto LABEL_140;
          }

LABEL_139:
          v42 = 0;
          goto LABEL_140;
        }

LABEL_108:
        v133 = sub_257ECF4C0();
        v134 = sub_257ECCE30();
        v23 = [a1 dequeueReusableCellWithIdentifier:v133 forIndexPath:v134];

        v135 = [v23 textLabel];
        if (v135)
        {
          v136 = v135;
          sub_257CAA3E8();
          v137 = sub_257ECF4C0();

          [v136 setText_];
        }

        v138 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v139 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
        swift_beginAccess();
        v179 = *v139;
        v182 = v139[1];
        v185 = v139[2];
        v140 = qword_2815447E0;

        if (v140 != -1)
        {
          v141 = swift_once();
        }

        MEMORY[0x28223BE20](v141);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
        sub_257ECFD50();

        v142 = sub_257C592D0(a3, v186);

        [v138 setOn_];
        v143 = v138;
        [v143 setTag_];
        [v143 addTarget:a4 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
        [v23 setAccessoryView_];

        [v23 setAccessoryType_];
        return v23;
      }

      v90 = sub_257ECF4C0();
      v91 = sub_257ECCE30();
      v23 = [a1 dequeueReusableCellWithIdentifier:v90 forIndexPath:v91];

      v92 = [v23 textLabel];
      if (v92)
      {
        v93 = v92;
        type metadata accessor for MAGUtilities();
        v94 = swift_getObjCClassFromMetadata();
        v95 = [objc_opt_self() bundleForClass_];
        v96 = sub_257ECF4C0();
        v97 = sub_257ECF4C0();
        v98 = [v95 localizedStringForKey:v96 value:0 table:v97];

        if (!v98)
        {
          sub_257ECF500();
          v98 = sub_257ECF4C0();
        }

        [v93 setText_];
      }

      v99 = [v23 textLabel];
      if (v99)
      {
        v100 = v99;
        [v99 setNumberOfLines_];
      }

      v101 = [v23 textLabel];
      if (v101)
      {
        v102 = v101;
        [v101 setLineBreakMode_];
      }

      if ((sub_257ECF030() & 1) == 0)
      {
        v144 = [v23 imageView];
        if (!v144)
        {
          goto LABEL_142;
        }

        v132 = v144;
        v145 = sub_257ECF4C0();
        v42 = [objc_opt_self() systemImageNamed_];

        if (!v42)
        {
          goto LABEL_140;
        }

        v146 = objc_opt_self();
        v147 = v42;
        v148 = [v146 configurationWithPointSize:4 weight:-1 scale:25.0];
        v149 = [v147 imageByApplyingSymbolConfiguration_];

        if (v149)
        {
          goto LABEL_138;
        }

        goto LABEL_139;
      }

      v103 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000016, 0x8000000257EFBC30, a4);
      if (!v103)
      {
        goto LABEL_142;
      }

      v42 = v103;
      v43 = [v23 imageView];
      if (!v43)
      {
        goto LABEL_141;
      }
    }

LABEL_107:
    v132 = v43;
LABEL_140:
    [v132 setImage_];

    goto LABEL_141;
  }

  if (a3 > 4u)
  {
    if (a3 != 5)
    {
      if (a3 == 6)
      {
        v44 = sub_257ECF4C0();
        v45 = sub_257ECCE30();
        v23 = [a1 dequeueReusableCellWithIdentifier:v44 forIndexPath:v45];

        v46 = [v23 textLabel];
        if (v46)
        {
          v47 = v46;
          type metadata accessor for MAGUtilities();
          v48 = swift_getObjCClassFromMetadata();
          v49 = [objc_opt_self() bundleForClass_];
          v50 = sub_257ECF4C0();
          v51 = sub_257ECF4C0();
          v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

          if (!v52)
          {
            sub_257ECF500();
            v52 = sub_257ECF4C0();
          }

          [v47 setText_];
        }

        v53 = [v23 textLabel];
        if (v53)
        {
          v54 = v53;
          [v53 setNumberOfLines_];
        }

        v55 = [v23 textLabel];
        if (v55)
        {
          v56 = v55;
          [v55 setLineBreakMode_];
        }

        if (sub_257ECF030())
        {
          v57 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0xD000000000000025, 0x8000000257EFBBE0, a4);
          if (v57)
          {
            v42 = v57;
            v43 = [v23 imageView];
            if (!v43)
            {
              goto LABEL_141;
            }

            goto LABEL_107;
          }

LABEL_142:
          [v23 setAccessoryType_];
          return v23;
        }

        v165 = [v23 imageView];
        if (!v165)
        {
          goto LABEL_142;
        }

        v132 = v165;
        v166 = sub_257ECF4C0();
        v42 = [objc_opt_self() systemImageNamed_];

        if (!v42)
        {
          goto LABEL_140;
        }

        v167 = objc_opt_self();
        v168 = v42;
        v169 = [v167 configurationWithPointSize:4 weight:-1 scale:25.0];
        v149 = [v168 imageByApplyingSymbolConfiguration_];

        if (v149)
        {
          goto LABEL_138;
        }

        goto LABEL_139;
      }

      goto LABEL_108;
    }

    v104 = sub_257ECF4C0();
    v105 = sub_257ECCE30();
    v23 = [a1 dequeueReusableCellWithIdentifier:v104 forIndexPath:v105];

    v106 = [v23 textLabel];
    if (v106)
    {
      v107 = v106;
      type metadata accessor for MAGUtilities();
      v108 = swift_getObjCClassFromMetadata();
      v109 = [objc_opt_self() bundleForClass_];
      v110 = sub_257ECF4C0();
      v111 = sub_257ECF4C0();
      v112 = [v109 localizedStringForKey:v110 value:0 table:v111];

      if (!v112)
      {
        sub_257ECF500();
        v112 = sub_257ECF4C0();
      }

      [v107 setText_];
    }

    v113 = [v23 textLabel];
    if (v113)
    {
      v114 = v113;
      [v113 setNumberOfLines_];
    }

    v115 = [v23 textLabel];
    if (v115)
    {
      v116 = v115;
      [v115 setLineBreakMode_];
    }

    if ((sub_257ECF030() & 1) == 0)
    {
      v150 = [v23 imageView];
      if (!v150)
      {
        goto LABEL_142;
      }

      v132 = v150;
      v151 = sub_257ECF4C0();
      v42 = [objc_opt_self() _systemImageNamed_];

      if (!v42)
      {
        goto LABEL_140;
      }

      v152 = objc_opt_self();
      v153 = v42;
      v154 = [v152 configurationWithPointSize:4 weight:-1 scale:25.0];
      v149 = [v153 imageByApplyingSymbolConfiguration_];

      if (v149)
      {
        goto LABEL_138;
      }

      goto LABEL_139;
    }

    v117 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(0x75622E6F746F6870, 0xEC000000656C6262, a4);
    if (!v117)
    {
      goto LABEL_142;
    }

    v42 = v117;
    v43 = [v23 imageView];
    if (!v43)
    {
      goto LABEL_141;
    }

    goto LABEL_107;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      v7 = sub_257ECF4C0();
      v8 = sub_257ECCE30();
      v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:v8];

      v10 = [v9 textLabel];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for MAGUtilities();
        v12 = swift_getObjCClassFromMetadata();
        v13 = [objc_opt_self() bundleForClass_];
        v14 = sub_257ECF4C0();
        v15 = sub_257ECF4C0();
        v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

        if (!v16)
        {
          sub_257ECF500();
          v16 = sub_257ECF4C0();
        }

        [v11 setText_];
      }

      v17 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v18 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
      swift_beginAccess();
      v177 = *v18;
      v180 = *(v18 + 8);
      LOBYTE(v183) = *(v18 + 16);
      v19 = qword_2815447E0;

      if (v19 != -1)
      {
        v20 = swift_once();
      }

      MEMORY[0x28223BE20](v20);
      sub_257ECFD50();

      [v17 setOn_];
      [v17 addTarget:a4 action:sel_didToggleDetectLanguagesSwitch_ forControlEvents:4096];
      [v9 setAccessoryView_];
      [v9 setAccessoryType_];
      type metadata accessor for MAGUtilities();
      v21 = swift_getObjCClassFromMetadata();
      v22 = objc_opt_self();
      v23 = v9;
      v24 = [v22 bundleForClass_];
      v25 = sub_257ECF4C0();
      v26 = sub_257ECF4C0();
      v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

      if (!v27)
      {
        sub_257ECF500();
        v27 = sub_257ECF4C0();
      }

      [v23 setAccessibilityLabel_];

      return v23;
    }

    goto LABEL_108;
  }

  v72 = sub_257ECF4C0();
  v73 = sub_257ECCE30();
  v23 = [a1 dequeueReusableCellWithIdentifier:v72 forIndexPath:v73];

  v74 = [v23 textLabel];
  if (v74)
  {
    v75 = v74;
    type metadata accessor for MAGUtilities();
    v76 = swift_getObjCClassFromMetadata();
    v77 = [objc_opt_self() bundleForClass_];
    v78 = sub_257ECF4C0();
    v79 = sub_257ECF4C0();
    v80 = [v77 localizedStringForKey:v78 value:0 table:v79];

    if (!v80)
    {
      sub_257ECF500();
      v80 = sub_257ECF4C0();
    }

    [v75 setText_];
  }

  v81 = [v23 textLabel];
  if (v81)
  {
    v82 = v81;
    [v81 setNumberOfLines_];
  }

  v83 = [v23 textLabel];
  if (v83)
  {
    v84 = v83;
    [v83 setLineBreakMode_];
  }

  v85 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v86 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mainControls);
  swift_beginAccess();
  v178 = *v86;
  v181 = v86[1];
  v184 = v86[2];
  v87 = qword_2815447E0;

  if (v87 != -1)
  {
    v88 = swift_once();
  }

  MEMORY[0x28223BE20](v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  v89 = sub_257C592D0(2u, v186);

  [v85 setOn_];
  [v85 addTarget:a4 action:sel_didToggleDetectionSwitch_ forControlEvents:4096];
  [v23 setAccessoryView_];
  [v23 setAccessoryType_];

  return v23;
}

id sub_257CACA5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F70B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  result = [v1 view];
  if (result)
  {
    v8 = result;
    v9 = *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_tableView];
    [result addSubview_];

    [v9 setDelegate_];
    sub_257C60F40();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = sub_257ECF4C0();
    [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v11];

    v12 = sub_257ECF4C0();
    [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

    [v9 setAllowsSelectionDuringEditing_];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v1 view];
    if (result)
    {
      v13 = result;
      sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      v14 = sub_257CAAB24();
      sub_257CACCCC();
      sub_257ECDBF0();

      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_257CACCCC()
{
  sub_257CAEC58();
  sub_257CAECAC();
  sub_257ECDBB0();
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  v0 = byte_27F8F78A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F70B8);
  sub_257ECDB50();
  sub_257ECDB20();
  sub_257ECDB50();
  sub_257ECDB20();
  sub_257ECDB50();
  sub_257ECDB20();
  sub_257ECDB50();
  if (v0 == 1)
  {
    sub_257ECDB20();
    sub_257ECDB20();
    sub_257ECDB20();
  }

  sub_257ECDB20();
  sub_257ECDB20();
  return sub_257ECDB20();
}

id sub_257CAD110(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___peopleDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___imageCaptionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___objectUnderstandingSettingsViewController] = 0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_languageTranslator;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CE6AC8]) init];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___pointSpeakSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___textDetectionSettingsViewController] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_availablePauseDetectionModeFeedbacks] = &unk_286904970;
  v8 = OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_tableView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemYellowColor];
  [v11 setTintColor_];

  *&v3[v8] = v11;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___dataSource] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v13 = sub_257ECF4C0();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id sub_257CAD344(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___peopleDetectionSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___imageCaptionSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___objectUnderstandingSettingsViewController] = 0;
  v4 = OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_languageTranslator;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CE6AC8]) init];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___pointSpeakSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___textDetectionSettingsViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_availablePauseDetectionModeFeedbacks] = &unk_286904998;
  v5 = OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_tableView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemYellowColor];
  [v8 setTintColor_];

  *&v1[v5] = v8;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t type metadata accessor for DetectionModeSettingsViewController.DataSource()
{
  result = qword_27F8F7060;
  if (!qword_27F8F7060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257CAD984(void *a1)
{
  v2 = v1;
  v4 = sub_257CAAB24();
  sub_257ECDBE0();

  if (v16 != 11)
  {
    v5 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v5 animated:1];

    if (v16 > 7u)
    {
      switch(v16)
      {
        case 8u:
          v12 = [v2 navigationController];
          if (!v12)
          {
            return;
          }

          v7 = v12;
          v8 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___objectUnderstandingSettingsViewController;
          v9 = type metadata accessor for ObjectUnderstandingSettingsViewController;
          goto LABEL_21;
        case 9u:
          v14 = [v2 navigationController];
          if (!v14)
          {
            return;
          }

          v7 = v14;
          v8 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___textDetectionSettingsViewController;
          v9 = type metadata accessor for TextDetectionSettingsViewController;
          goto LABEL_21;
        case 0xAu:
          v10 = [v2 navigationController];
          if (v10)
          {
            v7 = v10;
            v8 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___pointSpeakSettingsViewController;
            v9 = type metadata accessor for PointSpeakSettingsViewController;
            goto LABEL_21;
          }

          break;
      }
    }

    else
    {
      switch(v16)
      {
        case 5u:
          v11 = [v2 navigationController];
          if (!v11)
          {
            return;
          }

          v7 = v11;
          v8 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___imageCaptionSettingsViewController;
          v9 = type metadata accessor for ImageCaptionSettingsViewController;
          goto LABEL_21;
        case 6u:
          v13 = [v2 navigationController];
          if (!v13)
          {
            return;
          }

          v7 = v13;
          v8 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___peopleDetectionSettingsViewController;
          v9 = type metadata accessor for PeopleDetectionSettingsViewController;
          goto LABEL_21;
        case 7u:
          v6 = [v2 navigationController];
          if (v6)
          {
            v7 = v6;
            v8 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController;
            v9 = type metadata accessor for DoorDetectionSettingsViewController;
LABEL_21:
            v15 = sub_257CAA5D8(v8, v9);
            [v7 pushViewController:v15 animated:1];
          }

          break;
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DetectionModeSettingsViewController.Item(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
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
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 9)
  {
    return v8 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DetectionModeSettingsViewController.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
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

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_257CADE38(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_257CADE4C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_257CADE8C()
{
  result = qword_27F8F7070;
  if (!qword_27F8F7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7070);
  }

  return result;
}

unint64_t sub_257CADF44()
{
  result = qword_27F8F7098;
  if (!qword_27F8F7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7098);
  }

  return result;
}

unint64_t sub_257CADF9C()
{
  result = qword_27F8F70A0;
  if (!qword_27F8F70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F70A0);
  }

  return result;
}

BOOL sub_257CADFF0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 6u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        return a2 == 9;
      }

      if (a1 == 10)
      {
        return a2 == 10;
      }
    }

    else
    {
      if (a1 == 7)
      {
        return a2 == 7;
      }

      if (a1 == 8)
      {
        return a2 == 8;
      }
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    if (a1 == 6)
    {
      return a2 == 6;
    }
  }

  else
  {
    if (a1 == 3)
    {
      return a2 == 3;
    }

    if (a1 == 4)
    {
      return a2 == 4;
    }
  }

  if (a2 - 3 < 8)
  {
    return 0;
  }

  return a1 == a2;
}

unint64_t sub_257CAE0F0()
{
  result = qword_281544598;
  if (!qword_281544598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544598);
  }

  return result;
}

uint64_t sub_257CAE178(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

uint64_t sub_257CAE1AC(int64_t a1)
{
  if (qword_281544FE0 == -1)
  {
    goto LABEL_2;
  }

LABEL_40:
  swift_once();
LABEL_2:
  swift_beginAccess();
  v2 = qword_2815447E0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  v4 = v21;
  if ([a1 isOn])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_257BFD908(0, *(v21 + 16) + 1, 1, v21);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_257BFD908((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v4[v6 + 32] = 2;
    goto LABEL_29;
  }

  v7 = *(v21 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

  a1 = 0;
  do
  {
    if (*(v21 + a1 + 32) == 2)
    {
      v8 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_44;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_45;
      }

      while (1)
      {
        v7 = *(v4 + 2);
        if (v8 != v7)
        {
          v15 = v4 + 32;
          v16 = &v4[a1 + 33];
          while (v8 < v7)
          {
            v18 = *v16;
            if (v18 != 2)
            {
              if (v8 != a1)
              {
                if (a1 >= v7)
                {
                  __break(1u);
                  break;
                }

                v17 = v15[a1];
                v15[a1] = v18;
                *v16 = v17;
                v7 = *(v4 + 2);
              }

              ++a1;
            }

            ++v8;
            ++v16;
            if (v8 == v7)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v7 = v8;
LABEL_19:
        if (v7 < a1)
        {
          goto LABEL_42;
        }

        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v4 = sub_257C7DF14(v4);
      }
    }

    ++a1;
  }

  while (v7 != a1);
LABEL_14:
  a1 = *(v21 + 16);
LABEL_21:
  v8 = a1;
  if (__OFADD__(v7, a1 - v7))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v4 + 3) >> 1)
  {
    if (v7 <= a1)
    {
      v10 = a1;
    }

    else
    {
      v10 = v7;
    }

    v4 = sub_257BFD908(isUniquelyReferenced_nonNull_native, v10, 1, v4);
  }

  sub_257E541E0(a1, v7, 0);
LABEL_29:
  v11 = swift_beginAccess();
  MEMORY[0x28223BE20](v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  v12 = swift_beginAccess();
  MEMORY[0x28223BE20](v12);

  sub_257ECFD50();

  v13 = sub_257D53928();
  sub_257D53B38(v4, v19, v20, v13);
}

id sub_257CAE694(void *a1)
{
  result = [a1 tag];
  if (result <= 2)
  {
    v3 = result;
    if ([a1 isOn])
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v4 = qword_2815447E0;

      if (v4 != -1)
      {
        v5 = swift_once();
      }

      MEMORY[0x28223BE20](v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
      sub_257ECFD50();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F68A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v3;
      sub_257EB0EA4(inited);
      sub_257D57C64(v16, 1);
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = qword_2815447E0;

      if (v7 != -1)
      {
        v8 = swift_once();
      }

      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
      sub_257ECFD50();

      v9 = *(v16 + 16);
      if (v9)
      {
        v10 = (v16 + 32);
        v11 = MEMORY[0x277D84F90];
        do
        {
          v15 = *v10++;
          v14 = v15;
          if (v15 != v3)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF28E4(0, *(v11 + 16) + 1, 1);
            }

            v13 = *(v11 + 16);
            v12 = *(v11 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_257BF28E4((v12 > 1), v13 + 1, 1);
            }

            *(v11 + 16) = v13 + 1;
            *(v11 + v13 + 32) = v14;
          }

          --v9;
        }

        while (v9);
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      sub_257D57C64(v11, 1);
    }
  }

  return result;
}

uint64_t sub_257CAEA74(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348;
  v7 = [a1 isOn];
  v8 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
  swift_beginAccess();
  v12 = v7;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v9 = sub_257ECF110();
  MEMORY[0x28223BE20](v9);
  *&v11[-16] = &v12;
  *&v11[-8] = v8;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  return swift_endAccess();
}

unint64_t sub_257CAEC58()
{
  result = qword_27F8F70C8;
  if (!qword_27F8F70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F70C8);
  }

  return result;
}

unint64_t sub_257CAECAC()
{
  result = qword_27F8F70D0;
  if (!qword_27F8F70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F70D0);
  }

  return result;
}

uint64_t sub_257CAED1C()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECF190();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD52CC();
  v9 = sub_257ECFD30();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_257C1C6EC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_18;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_257CAF010(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 56);
  v29 = ObjectType;
  v6((&v30 + 4), ObjectType, a2);
  if (Control.rawValue.getter() == 0x67696C6873616C66 && v7 == 0xEA00000000007468)
  {

LABEL_12:
    v12 = 0;
    return v12 & 1;
  }

  v9 = sub_257ED0640();

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons;
  if (*(*(v2 + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons) + 16) < 2uLL)
  {
    goto LABEL_12;
  }

  if (qword_281544FE0 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (BYTE3(v30) != 1 || (v10 = *(v3 + v10), *(v10 + 16) != 2))
    {
      v12 = 1;
      return v12 & 1;
    }

    v27 = a2;

    a2 = 0;
    v11 = (v10 + 40);
    v26 = v10;
LABEL_17:
    if (a2 < *(v10 + 16))
    {
      break;
    }

    __break(1u);
LABEL_76:
    swift_once();
  }

  v14 = *(v11 - 1);
  v15 = *v11;
  ++a2;
  v16 = swift_getObjectType();
  v17 = *(v15 + 56);
  v28 = v14;
  v17((&v30 + 2), v16, v15);
  v18 = BYTE2(v30);
  v6((&v30 + 1), v29, v27);
  v19 = 0xEA00000000007468;
  v20 = 0x67696C6873616C66;
  switch(v18)
  {
    case 1:
      v20 = 0xD000000000000011;
      v19 = 0x8000000257EF7780;
      break;
    case 2:
      v20 = 0x4379616C70736964;
      v19 = 0xEF74736172746E6FLL;
      break;
    case 3:
      v19 = 0xE700000000000000;
      v20 = 0x737265746C6966;
      break;
    case 4:
      break;
    case 5:
      v20 = 0x6544656C706F6570;
      v19 = 0xEF6E6F6974636574;
      break;
    case 6:
      v20 = 0x636F4C7375636F66;
      v19 = 0xE90000000000006BLL;
      break;
    case 7:
      v19 = 0xEA00000000006570;
      v20 = 0x79546172656D6163;
      break;
    case 8:
      v20 = 0x4D65727574706163;
      v19 = 0xEB0000000065646FLL;
      break;
    case 9:
      v20 = 0x6F69746365746564;
      v19 = 0xED000065646F4D6ELL;
      break;
    case 10:
      v21 = 1919905636;
      goto LABEL_33;
    case 11:
      v20 = 0xD000000000000013;
      v19 = 0x8000000257EF74D0;
      break;
    case 12:
      v20 = 0x7061436567616D69;
      v19 = 0xEC0000006E6F6974;
      break;
    case 13:
      v19 = 0xEA00000000006B61;
      v20 = 0x657053746E696F70;
      break;
    case 14:
      v21 = 1954047348;
LABEL_33:
      v20 = v21 | 0x6574654400000000;
      v19 = 0xED00006E6F697463;
      break;
    case 15:
      v19 = 0xEA00000000007365;
      v20 = 0x6974697669746361;
      break;
    default:
      v19 = 0xEA0000000000726FLL;
      v20 = 0x746361466D6F6F7ALL;
      break;
  }

  v22 = 0x67696C6873616C66;
  v23 = 0xEA00000000007468;
  switch(BYTE1(v30))
  {
    case 1:
      v23 = 0x8000000257EF7780;
      if (v20 == 0xD000000000000011)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    case 2:
      v23 = 0xEF74736172746E6FLL;
      if (v20 != 0x4379616C70736964)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 3:
      v23 = 0xE700000000000000;
      if (v20 != 0x737265746C6966)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 4:
      goto LABEL_63;
    case 5:
      v23 = 0xEF6E6F6974636574;
      if (v20 != 0x6544656C706F6570)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 6:
      v23 = 0xE90000000000006BLL;
      if (v20 != 0x636F4C7375636F66)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 7:
      v23 = 0xEA00000000006570;
      if (v20 != 0x79546172656D6163)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 8:
      v23 = 0xEB0000000065646FLL;
      if (v20 != 0x4D65727574706163)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 9:
      v24 = 0x6F69746365746564;
      v25 = 0x65646F4D6ELL;
      goto LABEL_46;
    case 0xA:
      v22 = 0x65746544726F6F64;
      v23 = 0xED00006E6F697463;
LABEL_63:
      if (v20 == v22)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    case 0xB:
      v23 = 0x8000000257EF74D0;
      if (v20 != 0xD000000000000013)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 0xC:
      v23 = 0xEC0000006E6F6974;
      if (v20 != 0x7061436567616D69)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 0xD:
      v23 = 0xEA00000000006B61;
      if (v20 != 0x657053746E696F70)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 0xE:
      v24 = 0x6574654474786574;
      v25 = 0x6E6F697463;
LABEL_46:
      v23 = v25 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      if (v20 != v24)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    case 0xF:
      v23 = 0xEA00000000007365;
      if (v20 != 0x6974697669746361)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    default:
      v23 = 0xEA0000000000726FLL;
      if (v20 != 0x746361466D6F6F7ALL)
      {
        goto LABEL_65;
      }

LABEL_64:
      if (v19 == v23)
      {

        goto LABEL_15;
      }

LABEL_65:
      v3 = sub_257ED0640();

      if (v3)
      {
LABEL_15:

        v10 = v26;
LABEL_16:
        v11 += 2;
        if (a2 == 2)
        {

          v12 = 1;
          return v12 & 1;
        }

        goto LABEL_17;
      }

      v17(&v30, v16, v15);
      v10 = v26;
      switch(v30)
      {
        case 4:

          break;
        default:
          v3 = sub_257ED0640();

          if ((v3 & 1) == 0)
          {
            goto LABEL_16;
          }

          break;
      }

      v12 = (*(v27 + 8))(v29) ^ 1;
      return v12 & 1;
  }
}

void sub_257CAF984(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons);
    v5 = *(v4 + 16);

    if (v5)
    {
      v6 = 0;
      v7 = v4 + 32;
      v20 = v4 + 32;
      v21 = v5;
      v22 = v4;
      while (v6 < *(v4 + 16))
      {
        v8 = *(v7 + 16 * v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70F0);
        if (swift_dynamicCast())
        {
          v9 = *(&v24 + 1);
          v10 = v25;
          __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
          v11 = (*(v10 + 8))(v9, v10);
          v12 = v11;
          if (v11 >> 62)
          {
            v13 = sub_257ED0210();
            v14 = v8;
            if (v13)
            {
LABEL_10:
              v15 = 0;
              while (1)
              {
                if ((v12 & 0xC000000000000001) != 0)
                {
                  v16 = MEMORY[0x259C72E20](v15, v12);
                }

                else
                {
                  if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_23;
                  }

                  v16 = *(v12 + 8 * v15 + 32);
                }

                v17 = v16;
                v18 = v15 + 1;
                if (__OFADD__(v15, 1))
                {
                  break;
                }

                [v16 rotateIfPossibleTo_];

                ++v15;
                v14 = v8;
                if (v18 == v13)
                {
                  goto LABEL_19;
                }
              }

              __break(1u);
LABEL_23:
              __break(1u);
              break;
            }
          }

          else
          {
            v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v14 = v8;
            if (v13)
            {
              goto LABEL_10;
            }
          }

LABEL_19:

          __swift_destroy_boxed_opaque_existential_0(&v23);
          v5 = v21;
          v4 = v22;
          v7 = v20;
        }

        else
        {

          v25 = 0;
          v23 = 0u;
          v24 = 0u;
          sub_257CAFCF4(&v23);
        }

        if (++v6 == v5)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
    }
  }
}

id sub_257CAFC20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonRowBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257CAFCF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_257CAFD5C()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257C60F40();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      sub_257EB6FD8(v7, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257CAFFEC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray] = MEMORY[0x277D84F90];
  v8 = AXIsInternalInstall();
  v9 = &unk_2869049C0;
  if (!v8)
  {
    v9 = v7;
  }

  *&v3[OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections] = v9;
  v10 = AXIsInternalInstall();
  v11 = &unk_2869049E8;
  if (!v10)
  {
    v11 = v7;
  }

  *&v3[OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionFeedbacks] = v11;
  v12 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_tableView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemYellowColor];
  [v15 setTintColor_];

  [v15 setClipsToBounds_];
  *&v3[v12] = v15;
  if (AXIsInternalInstall())
  {
    if (a2)
    {
      v17 = sub_257ECF4C0();
    }

    else
    {
      v17 = 0;
    }

    v20.receiver = v3;
    v20.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, v17, a3);

    return v18;
  }

  else
  {
    result = sub_257ED0410();
    __break(1u);
  }

  return result;
}

id sub_257CB0334(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_257ECF4C0();
  v7 = sub_257ECCE30();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  v9 = sub_257ECCEA0();
  v10 = sub_257C6B1C0(v9);
  if (v10 <= 1)
  {
    if (v10)
    {
      v36 = sub_257ECCE60();
      if (v36 > 2)
      {
        return v8;
      }

      v37 = v36;
      v38 = [v8 textLabel];
      if (v38)
      {
        v39 = v38;
        sub_257C6A188();
        v40 = sub_257ECF4C0();

        [v39 setText_];
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v41 = qword_2815447E0;

      if (v41 != -1)
      {
        v42 = swift_once();
      }

      MEMORY[0x28223BE20](v42);
      sub_257ECFD50();

      if (v47 == v37)
      {
        v35 = 3;
      }

      else
      {
        v35 = 0;
      }

      goto LABEL_48;
    }

    v18 = [v8 textLabel];
    if (v18)
    {
      v19 = v18;
      v20 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionFeedbacks);
      v21 = sub_257ECCE60();
      if ((v21 & 0x8000000000000000) != 0)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v21 >= *(v20 + 16))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        a2 = MEMORY[0x259C72E20](a2);
LABEL_10:
        swift_endAccess();
        v15 = [v8 textLabel];
        if (v15)
        {
          v16 = v15;
          if (*(a2 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8))
          {

            v17 = sub_257ECF4C0();
          }

          else
          {
            v17 = 0;
          }

          [v16 setText_];
        }

        if (qword_281544FE0 == -1)
        {
          goto LABEL_52;
        }

        goto LABEL_65;
      }

      sub_257C69DB4();
      v22 = sub_257ECF4C0();

      [v19 setText_];
    }

    v23 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionFeedbacks);
    v24 = sub_257ECCE60();
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *(v23 + 16))
    {
      if (*(v23 + v24 + 32) != 1)
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v43 = qword_2815447E0;

        if (v43 == -1)
        {
          goto LABEL_45;
        }

        goto LABEL_68;
      }

      if (qword_281544FE0 == -1)
      {
LABEL_22:
        swift_beginAccess();
        v25 = qword_2815447E0;

        if (v25 == -1)
        {
LABEL_45:
          MEMORY[0x28223BE20](v26);
          sub_257ECFD50();

          if (v47)
          {
            v35 = 3;
          }

          else
          {
            v35 = 0;
          }

          goto LABEL_48;
        }

LABEL_68:
        v26 = swift_once();
        goto LABEL_45;
      }

LABEL_67:
      swift_once();
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_61;
  }

  if (v10 == 2)
  {
    if (sub_257ECCE60())
    {
      return v8;
    }

    v27 = [v8 textLabel];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass_];
      v31 = sub_257ECF4C0();
      v32 = sub_257ECF4C0();
      v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

      sub_257ECF500();
      v34 = sub_257ECF4C0();

      [v28 setText_];
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    if (*(*(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions) + 16))
    {
      v35 = 3;
    }

    else
    {
      v35 = 0;
    }

LABEL_48:
    [v8 setAccessoryType_];
    [v8 setAccessoryView_];
    return v8;
  }

  if (v10 != 3)
  {
    return v8;
  }

  v11 = sub_257ECCE60();
  v12 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (v13 >> 62)
  {
    if (v11 >= sub_257ED0210())
    {
      return v8;
    }
  }

  else if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v8;
  }

  a2 = sub_257ECCE60();
  swift_beginAccess();
  v14 = *(v3 + v12);
  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      a2 = *(v14 + 8 * a2 + 32);
      sub_257ECC3F0();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_67;
  }

  __break(1u);
LABEL_65:
  swift_once();
LABEL_52:
  v44 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile);
  sub_257ECC3F0();
  if (sub_257C6AB98(a2, v44))
  {
    v45 = 3;
  }

  else
  {
    v45 = 0;
  }

  [v8 setAccessoryType_];
  [v8 setAccessoryView_];

  return v8;
}

void sub_257CB0D68(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v91 = *(v4 - 8);
  v92 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v89 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v88 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v88 - v10;
  v94 = sub_257ECCEB0();
  v90 = *(v94 - 8);
  v12 = MEMORY[0x28223BE20](v94);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v88 - v15;
  v17 = sub_257ECF120();
  v93 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECCE30();
  v95 = [a1 cellForRowAtIndexPath_];

  if (!v95)
  {
    return;
  }

  v21 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v21 animated:1];

  v22 = sub_257ECCEA0();
  v23 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections);
  if (v22 >= *(v23 + 16))
  {
    goto LABEL_33;
  }

  v24 = sub_257ECCEA0();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (v24 >= *(v23 + 16))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (*(v23 + v24 + 32) > 1u)
  {
    if (*(v23 + v24 + 32) != 2)
    {
      v9 = sub_257ECCE60();
      v23 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
      swift_beginAccess();
      v47 = *(v1 + v23);
      if (!(v47 >> 62))
      {
        if (v9 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_62:

          return;
        }

LABEL_38:
        v48 = sub_257ECCE60();
        swift_beginAccess();
        v49 = *(v1 + v23);
        if ((v49 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x259C72E20](v48);
        }

        else
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_72:
            swift_once();
LABEL_43:
            v50 = qword_281548348;
            v51 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile;
            v52 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile);
            sub_257ECC3F0();
            if (sub_257C6AB98(v48, v52))
            {

LABEL_85:

              return;
            }

            v60 = *(v2 + v23);
            v93 = v50;
            v88 = v51;
            if (v60 >> 62)
            {
              v74 = sub_257ED0210();
              if (v74 < 0)
              {
                __break(1u);
              }

              v61 = v74;
              if (!v74)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v61)
              {
LABEL_80:
                [v95 setAccessoryType_];
                v75 = v89;
                sub_257ECD420();
                sub_257ECC3F0();
                v76 = sub_257ECDA20();
                v77 = sub_257ECFBD0();

                if (os_log_type_enabled(v76, v77))
                {
                  v78 = swift_slowAlloc();
                  v79 = swift_slowAlloc();
                  v97 = v79;
                  *v78 = 136315138;
                  v80 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
                  if (!v80)
                  {
                    __break(1u);
                    return;
                  }

                  v81 = v79;
                  v82 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);

                  v83 = sub_257BF1FC8(v82, v80, &v97);

                  *(v78 + 4) = v83;
                  _os_log_impl(&dword_257BAC000, v76, v77, "New people detection replay file: %s", v78, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v81);
                  MEMORY[0x259C74820](v81, -1, -1);
                  MEMORY[0x259C74820](v78, -1, -1);
                }

                (*(v91 + 8))(v75, v92);
                v84 = v93;
                v85 = v88;
                v86 = sub_257ECC3F0();
                v87 = sub_257C6AB98(v86, v48);

                if ((v87 & 1) == 0)
                {
                  *(v84 + v85) = v48;
                }

                goto LABEL_85;
              }
            }

            v62 = 0;
            v63 = (v90 + 8);
            do
            {
              MEMORY[0x259C6F970](v62, 3);
              v64 = sub_257ECCE30();
              v65 = [a1 cellForRowAtIndexPath_];

              if (v65)
              {
                [v65 setAccessoryType_];
              }

              ++v62;
              (*v63)(v14, v94);
            }

            while (v61 != v62);
            goto LABEL_80;
          }

          if (v48 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_75;
          }

          v48 = *(v49 + 8 * v48 + 32);
          sub_257ECC3F0();
        }

        swift_endAccess();
        if (qword_281544FE0 == -1)
        {
          goto LABEL_43;
        }

        goto LABEL_72;
      }

LABEL_66:
      if (v9 >= sub_257ED0210())
      {
        goto LABEL_62;
      }

      goto LABEL_38;
    }

    if (!sub_257ECCE60())
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v30 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions);
      if (*(v30 + 16))
      {
        [v95 setAccessoryType_];
        v31 = MEMORY[0x277D84F90];
      }

      else
      {

        [v95 setAccessoryType_];
        v100[0] = v30;
        sub_257EB0FF0(&unk_286904A88);
        v31 = v100[0];
      }

      sub_257ECD420();

      v66 = sub_257ECDA20();
      v67 = sub_257ECFBD0();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v100[0] = v69;
        *v68 = 136315138;
        v70 = MEMORY[0x259C72340](v31, &type metadata for DetectionRecording);
        v72 = v71;

        v73 = sub_257BF1FC8(v70, v72, v100);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_257BAC000, v66, v67, "New people detection recording options: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x259C74820](v69, -1, -1);
        MEMORY[0x259C74820](v68, -1, -1);
      }

      else
      {
      }

      (*(v91 + 8))(v9, v92);
      sub_257D5854C(v31);

      goto LABEL_62;
    }
  }

  else
  {
    if (!*(v23 + v24 + 32))
    {
      v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionFeedbacks);
      v25 = sub_257ECCE60();
      if ((v25 & 0x8000000000000000) == 0)
      {
        if (v25 < *(v9 + 2))
        {
          if (v9[v25 + 32] == 1)
          {
            if (qword_281544FE0 != -1)
            {
              swift_once();
            }

            v26 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionCenterDetection;
            v27 = swift_beginAccess();
            v28 = *(v26 + 8);
            v29 = *(v26 + 16);
            v97 = *v26;
            v98 = v28;
            v99 = v29;
            if (qword_2815447E0 == -1)
            {
              goto LABEL_47;
            }

            goto LABEL_76;
          }

          if (qword_281544FE0 == -1)
          {
LABEL_46:
            v26 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionAudioBalancing;
            v27 = swift_beginAccess();
            v53 = *(v26 + 8);
            v54 = *(v26 + 16);
            v97 = *v26;
            v98 = v53;
            v99 = v54;
            if (qword_2815447E0 == -1)
            {
LABEL_47:
              MEMORY[0x28223BE20](v27);
              *(&v88 - 2) = &v97;
              sub_257ECFD50();
              LOBYTE(v97) = (v96 & 1) == 0;
              v55 = sub_257ECF110();
              MEMORY[0x28223BE20](v55);
              *(&v88 - 2) = &v97;
              *(&v88 - 1) = v26;
              sub_257ECFD40();
              (*(v93 + 8))(v19, v17);
              v56 = swift_endAccess();
              v57 = *(v26 + 8);
              v58 = *(v26 + 16);
              v100[0] = *v26;
              v100[1] = v57;
              v101 = v58;
              MEMORY[0x28223BE20](v56);
              *(&v88 - 2) = v100;

              sub_257ECFD50();

              if (v97)
              {
                v59 = 3;
              }

              else
              {
                v59 = 0;
              }

              [v95 setAccessoryType_];
              goto LABEL_62;
            }

LABEL_76:
            v27 = swift_once();
            goto LABEL_47;
          }

LABEL_75:
          swift_once();
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_69;
      }

      goto LABEL_65;
    }

    v32 = sub_257ECCE60();
    if (v32 < 3)
    {
      v9 = v32;
      if (qword_281544FE0 == -1)
      {
LABEL_22:
        v33 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionDebugOption;
        swift_beginAccess();
        LOBYTE(v97) = v9;
        if (qword_2815447E0 != -1)
        {
          swift_once();
        }

        v34 = sub_257ECF110();
        MEMORY[0x28223BE20](v34);
        *(&v88 - 2) = &v97;
        *(&v88 - 1) = v33;
        sub_257ECFD40();
        (*(v93 + 8))(v19, v17);
        swift_endAccess();
        v35 = (v90 + 8);
        MEMORY[0x259C6F970](byte_286904A80, 1);
        v36 = sub_257ECCE30();
        v37 = [a1 cellForRowAtIndexPath_];

        if (v37)
        {
          [v37 setAccessoryType_];
        }

        v38 = *v35;
        (*v35)(v16, v94);
        MEMORY[0x259C6F970](byte_286904A81, 1);
        v39 = sub_257ECCE30();
        v40 = [a1 cellForRowAtIndexPath_];

        if (v40)
        {
          [v40 setAccessoryType_];
        }

        v38(v16, v94);
        MEMORY[0x259C6F970](byte_286904A82, 1);
        v41 = sub_257ECCE30();
        v42 = [a1 cellForRowAtIndexPath_];

        if (v42)
        {
          [v42 setAccessoryType_];
        }

        v38(v16, v94);
        [v95 setAccessoryType_];
        sub_257ECD420();
        v43 = sub_257ECDA20();
        v44 = sub_257ECFBD0();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 134217984;
          *(v45 + 4) = v9;
          _os_log_impl(&dword_257BAC000, v43, v44, "New people detection debug option: %ld", v45, 0xCu);
          MEMORY[0x259C74820](v45, -1, -1);
        }

        (*(v91 + 8))(v11, v92);
        return;
      }

LABEL_69:
      swift_once();
      goto LABEL_22;
    }
  }

LABEL_33:
  v46 = v95;
}

uint64_t sub_257CB2040(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v60 = a2;
  v55 = a1;
  v61[9] = *MEMORY[0x277D85DE8];
  v6 = sub_257ECDA30();
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECCEB0();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = sub_257ECCB70();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_257ECCEA0();
  if (result != 3)
  {
    return result;
  }

  v19 = sub_257ECCE60();
  v20 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
  swift_beginAccess();
  v21 = *(v4 + v20);
  if (v21 >> 62)
  {
    result = sub_257ED0210();
    if (v19 >= result)
    {
      return result;
    }
  }

  else
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 >= result)
    {
      return result;
    }
  }

  v54 = v6;
  v22 = v17;
  v23 = v14;
  v24 = v15;
  v25 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections);
  v26 = a3;
  result = sub_257ECCEA0();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (result >= *(v25 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    v28 = MEMORY[0x259C72E20](v26);
LABEL_11:
    swift_endAccess();
    v29 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
    swift_beginAccess();
    sub_257C1C614(v28 + v29, v13);
    if ((*(v25 + 48))(v13, 1, v24) == 1)
    {

      return sub_257BE4084(v13, &qword_27F8F5F30);
    }

    (*(v25 + 32))(v22, v13, v24);
    if (v60 != 1)
    {
      (*(v25 + 8))(v22, v24);
    }

    v60 = v28;
    if (qword_281544FE0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

  if (*(v25 + result + 32) != 3)
  {
    return result;
  }

  v25 = v24;
  v24 = v23;
  v26 = sub_257ECCE60();
  swift_beginAccess();
  v27 = *(v4 + v20);
  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v26 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v27 + 8 * v26 + 32);
    sub_257ECC3F0();
    goto LABEL_11;
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_15:
  v30 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile);
  sub_257ECC3F0();
  v31 = sub_257C6AB98(v60, v30);

  v32 = v22;
  if (v31)
  {
    v33 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_tableView);
    v34 = sub_257ECCEA0();
    MEMORY[0x259C6F970](0, v34);
    sub_257CB0D68(v33);
    (*(v58 + 8))(v10, v59);
  }

  v35 = [objc_opt_self() defaultManager];
  v36 = sub_257ECCAE0();
  v61[0] = 0;
  v37 = [v35 removeItemAtURL:v36 error:v61];

  if (v37)
  {
    v38 = v61[0];
    v39 = sub_257ECCE60();
    swift_beginAccess();
    sub_257C1C9AC(v39);
    swift_endAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
    v40 = v58;
    v41 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_257ED6D30;
    (*(v40 + 16))(v42 + v41, a3, v59);
    v43 = sub_257ECF7F0();

    [v55 deleteRowsAtIndexPaths:v43 withRowAnimation:0];
  }

  else
  {
    v44 = v61[0];
    v45 = sub_257ECC9F0();

    swift_willThrow();
    v46 = v56;
    sub_257ECD420();
    v47 = v45;
    v48 = sub_257ECDA20();
    v49 = sub_257ECFBD0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      v52 = v45;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&dword_257BAC000, v48, v49, "Cannot delete recorded file: %@", v50, 0xCu);
      sub_257BE4084(v51, &unk_27F8F5490);
      MEMORY[0x259C74820](v51, -1, -1);
      MEMORY[0x259C74820](v50, -1, -1);
    }

    (*(v57 + 8))(v46, v54);
  }

  return (*(v25 + 8))(v32, v24);
}

void sub_257CB28D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
  if (v3 == 2)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v3)
  {
    return;
  }

  v4 = *a2;
  v5 = *(*a2 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
  if (v5 == 2)
  {
    goto LABEL_27;
  }

  if (v5)
  {
    return;
  }

  v6 = sub_257ECF4C0();
  v7 = [v6 stringByDeletingPathExtension];

  v8 = sub_257ECF500();
  v10 = v9;

  v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
  v12 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
  if (!v12)
  {
    v14 = (v4 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
    v15 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v13 = v11 == v8 && v12 == v10;
  if (v13 || (sub_257ED0640() & 1) != 0)
  {

    return;
  }

  v14 = (v4 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
  v15 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = *v14;
  v17 = *v14 == v8 && v15 == v10;
  if (v17 || (sub_257ED0640() & 1) != 0)
  {

    return;
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  if (v15 != v12 || v16 != v11)
  {
    sub_257ED0640();
  }
}

uint64_t sub_257CB2A94(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_257C69A3C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_257CB2B10(v6);
  return sub_257ED0340();
}

void sub_257CB2B10(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_257ED05F0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DetectionRecordedFile();
        v6 = sub_257ECF850();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_257CB2EC4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_257CB2C14(0, v2, 1, a1);
  }
}

void sub_257CB2C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = *a4;
  v5 = (*a4 + 8 * a3 - 8);
  v6 = a1 - a3;
  v30 = *a4;
LABEL_7:
  v28 = v5;
  v29 = a3;
  v7 = *(v4 + 8 * a3);
  v27 = v6;
  while (1)
  {
    v8 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
    if (v8 == 2)
    {
      break;
    }

    if ((v8 & 1) == 0)
    {
      v9 = *v5;
      v10 = *(*v5 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
      if (v10 == 2)
      {
        goto LABEL_38;
      }

      if (v10)
      {
        goto LABEL_6;
      }

      sub_257ECC3F0();
      sub_257ECC3F0();
      v11 = sub_257ECF4C0();
      v12 = [v11 stringByDeletingPathExtension];

      v13 = sub_257ECF500();
      v15 = v14;

      v16 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v17 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (v17)
      {
        v18 = v16 == v13 && v17 == v15;
        if (v18 || (sub_257ED0640() & 1) != 0)
        {

          v4 = v30;
          goto LABEL_31;
        }

        v31 = v16;
        v19 = (v9 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v20 = *(v9 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v20)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v31 = *(v7 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v19 = (v9 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v20 = *(v9 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v20)
        {
          goto LABEL_39;
        }
      }

      v21 = *v19;
      v22 = *v19 == v13 && v20 == v15;
      if (v22 || (sub_257ED0640() & 1) != 0)
      {

LABEL_5:
        v4 = v30;
LABEL_6:
        a3 = v29 + 1;
        v5 = v28 + 1;
        v6 = v27 - 1;
        if (v29 + 1 == a2)
        {
          return;
        }

        goto LABEL_7;
      }

      if (!v17)
      {
        goto LABEL_39;
      }

      if (v20 == v17 && v21 == v31)
      {

        goto LABEL_5;
      }

      v23 = sub_257ED0640();

      v4 = v30;
      if ((v23 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_31:
    if (!v4)
    {
      goto LABEL_37;
    }

    v24 = *v5;
    v7 = v5[1];
    *v5 = v7;
    v5[1] = v24;
    --v5;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_257CB2EC4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_149:
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_182;
      }

      goto LABEL_151;
    }

    goto LABEL_195;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
  while (1)
  {
    v10 = v7;
    v11 = v7 + 1;
    v130 = v8;
    if (v7 + 1 < v6)
    {
      break;
    }

LABEL_52:
    v43 = a3[1];
    if (v11 >= v43)
    {
      goto LABEL_95;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_178;
    }

    if (v11 - v10 >= a4)
    {
      goto LABEL_95;
    }

    v44 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
      goto LABEL_179;
    }

    if (v44 >= v43)
    {
      v44 = a3[1];
    }

    if (v44 < v10)
    {
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    if (v11 == v44)
    {
      goto LABEL_95;
    }

    v119 = v5;
    v121 = v10;
    v45 = *a3;
    v46 = (*a3 + 8 * v11 - 8);
    v47 = v10 - v11;
    v123 = v44;
    v132 = *a3;
    while (2)
    {
      v125 = v46;
      v127 = v11;
      v48 = *(v45 + 8 * v11);
      v124 = v47;
      while (1)
      {
        v49 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
        if (v49 == 2)
        {
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
          return;
        }

        if ((v49 & 1) == 0)
        {
          break;
        }

LABEL_89:
        if (!v45)
        {
          goto LABEL_184;
        }

        v65 = *v46;
        v48 = v46[1];
        *v46 = v48;
        v46[1] = v65;
        --v46;
        if (__CFADD__(v47++, 1))
        {
          goto LABEL_64;
        }
      }

      v50 = *v46;
      v51 = *(*v46 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
      if (v51 == 2)
      {
        goto LABEL_185;
      }

      if (v51)
      {
        goto LABEL_63;
      }

      sub_257ECC3F0();
      sub_257ECC3F0();
      v52 = sub_257ECF4C0();
      v53 = [v52 stringByDeletingPathExtension];

      v54 = sub_257ECF500();
      v56 = v55;

      v57 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v58 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (!v58)
      {
        v134 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v60 = (v50 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v61 = *(v50 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v61)
        {
          goto LABEL_186;
        }

        goto LABEL_80;
      }

      v59 = v57 == v54 && v58 == v56;
      if (v59 || (sub_257ED0640() & 1) != 0)
      {

        v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
        v45 = v132;
        goto LABEL_89;
      }

      v134 = v57;
      v60 = (v50 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v61 = *(v50 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (!v61)
      {
        goto LABEL_189;
      }

LABEL_80:
      v62 = *v60;
      v63 = *v60 == v54 && v61 == v56;
      if (v63 || (sub_257ED0640() & 1) != 0)
      {

        goto LABEL_62;
      }

      if (!v58)
      {
        goto LABEL_186;
      }

      if (v61 != v58 || v62 != v134)
      {
        v64 = sub_257ED0640();

        v8 = v130;
        v45 = v132;
        v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
        if ((v64 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_89;
      }

LABEL_62:
      v8 = v130;
      v45 = v132;
LABEL_63:
      v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
LABEL_64:
      v11 = v127 + 1;
      v46 = v125 + 1;
      v47 = v124 - 1;
      if (v127 + 1 != v123)
      {
        continue;
      }

      break;
    }

    v11 = v123;
    v5 = v119;
    v10 = v121;
LABEL_95:
    if (v11 < v10)
    {
      goto LABEL_177;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_257BFCB00(0, *(v8 + 2) + 1, 1, v8);
    }

    v68 = *(v8 + 2);
    v67 = *(v8 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v8 = sub_257BFCB00((v67 > 1), v68 + 1, 1, v8);
    }

    *(v8 + 2) = v69;
    v70 = &v8[16 * v68];
    *(v70 + 4) = v10;
    *(v70 + 5) = v11;
    v128 = v11;
    v71 = *a1;
    if (!*a1)
    {
      goto LABEL_193;
    }

    if (v68)
    {
      while (1)
      {
        v72 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v73 = *(v8 + 4);
          v74 = *(v8 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_115:
          if (v76)
          {
            goto LABEL_166;
          }

          v89 = &v8[16 * v69];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_169;
          }

          v95 = &v8[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_172;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_173;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v69 - 2;
            }

            goto LABEL_136;
          }

          goto LABEL_129;
        }

        v99 = &v8[16 * v69];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_129:
        if (v94)
        {
          goto LABEL_168;
        }

        v102 = &v8[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_171;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_136:
        v110 = v72 - 1;
        if (v72 - 1 >= v69)
        {
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        if (!*a3)
        {
          goto LABEL_187;
        }

        v111 = *&v8[16 * v110 + 32];
        v112 = *&v8[16 * v72 + 40];
        sub_257CB3910((*a3 + 8 * v111), (*a3 + 8 * *&v8[16 * v72 + 32]), (*a3 + 8 * v112), v71);
        if (v5)
        {
          goto LABEL_159;
        }

        if (v112 < v111)
        {
          goto LABEL_162;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_257C66E20(v8);
        }

        if (v110 >= *(v8 + 2))
        {
          goto LABEL_163;
        }

        v113 = &v8[16 * v110];
        *(v113 + 4) = v111;
        *(v113 + 5) = v112;
        v137 = v8;
        sub_257C66D94(v72);
        v8 = v137;
        v69 = *(v137 + 2);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v8[16 * v69 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_164;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_165;
      }

      v84 = &v8[16 * v69];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_167;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_170;
      }

      if (v88 >= v80)
      {
        v106 = &v8[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_174;
        }

        if (v75 < v109)
        {
          v72 = v69 - 2;
        }

        goto LABEL_136;
      }

      goto LABEL_115;
    }

LABEL_3:
    v7 = v128;
    v6 = a3[1];
    if (v128 >= v6)
    {
      goto LABEL_149;
    }
  }

  v133 = v6;
  v12 = v7;
  v13 = *a3;
  v14 = *(*a3 + 8 * v11);
  v135 = *(*a3 + 8 * v7);
  v136 = v14;
  sub_257ECC3F0();
  sub_257ECC3F0();
  v15 = v5;
  sub_257CB28D0(&v136, &v135);
  if (v5)
  {

    return;
  }

  v131 = v16;

  v11 = v12 + 2;
  v17 = v133;
  v120 = v12;
  if (v12 + 2 >= v133)
  {
    v19 = v131;
LABEL_41:
    v10 = v120;
    if ((v19 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_44:
    if (v11 < v10)
    {
      goto LABEL_181;
    }

    goto LABEL_45;
  }

  v18 = (v13 + 8 * v12 + 16);
  v19 = v131;
  while (1)
  {
    v20 = *v18;
    v21 = *(*v18 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
    if (v21 == 2)
    {
      goto LABEL_188;
    }

    if (v21)
    {
      goto LABEL_9;
    }

    v22 = *(v18 - 1);
    v23 = *(v22 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
    if (v23 == 2)
    {
      goto LABEL_190;
    }

    if (v23)
    {
      if (v19)
      {
        break;
      }

      goto LABEL_10;
    }

    sub_257ECC3F0();
    sub_257ECC3F0();
    v24 = sub_257ECF4C0();
    v25 = [v24 stringByDeletingPathExtension];

    v26 = sub_257ECF500();
    v28 = v27;

    v29 = *(v20 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
    v30 = *(v20 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
    if (v30)
    {
      v31 = v29 == v26 && v30 == v28;
      if (v31 || (sub_257ED0640() & 1) != 0)
      {

        v8 = v130;
        v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
        v17 = v133;
        v19 = v131;
LABEL_9:
        if ((v19 & 1) == 0)
        {
          v10 = v120;
          goto LABEL_52;
        }

        goto LABEL_10;
      }

      v126 = v29;
      v32 = (v22 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v33 = *(v22 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (!v33)
      {
        goto LABEL_196;
      }
    }

    else
    {
      v126 = *(v20 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v32 = (v22 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v33 = *(v22 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (!v33)
      {
        goto LABEL_194;
      }
    }

    v34 = *v32;
    v35 = *v32 == v26 && v33 == v28;
    if (v35 || (sub_257ED0640() & 1) != 0)
    {
    }

    else
    {
      if (!v30)
      {
        goto LABEL_194;
      }

      if (v33 != v30 || v34 != v126)
      {
        v36 = sub_257ED0640();

        v19 = v131;
        v5 = v15;
        v8 = v130;
        v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
        v17 = v133;
        if ((v131 ^ v36))
        {
          goto LABEL_41;
        }

        goto LABEL_10;
      }
    }

    v5 = v15;
    v8 = v130;
    v9 = &OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive;
    v17 = v133;
    v19 = v131;
    if (v131)
    {
      break;
    }

LABEL_10:
    ++v18;
    if (v17 == ++v11)
    {
      v11 = v17;
      v10 = v120;
      if ((v19 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_44;
    }
  }

  v10 = v120;
  if (v11 >= v120)
  {
LABEL_45:
    if (v10 < v11)
    {
      v37 = 8 * v11 - 8;
      v38 = 8 * v10;
      v39 = v11;
      v40 = v10;
      while (1)
      {
        if (v40 != --v39)
        {
          v41 = *a3;
          if (!*a3)
          {
            goto LABEL_191;
          }

          v42 = *(v41 + v38);
          *(v41 + v38) = *(v41 + v37);
          *(v41 + v37) = v42;
        }

        ++v40;
        v37 -= 8;
        v38 += 8;
        if (v40 >= v39)
        {
          goto LABEL_52;
        }
      }
    }

    goto LABEL_52;
  }

LABEL_181:
  __break(1u);
LABEL_182:
  v8 = sub_257C66E20(v8);
LABEL_151:
  v114 = v5;
  v137 = v8;
  v115 = *(v8 + 2);
  if (v115 >= 2)
  {
    while (*a3)
    {
      v116 = *&v8[16 * v115];
      v5 = *&v8[16 * v115 + 24];
      sub_257CB3910((*a3 + 8 * v116), (*a3 + 8 * *&v8[16 * v115 + 16]), (*a3 + 8 * v5), v9);
      if (v114)
      {
        goto LABEL_159;
      }

      if (v5 < v116)
      {
        goto LABEL_175;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_257C66E20(v8);
      }

      if (v115 - 2 >= *(v8 + 2))
      {
        goto LABEL_176;
      }

      v117 = &v8[16 * v115];
      *v117 = v116;
      *(v117 + 1) = v5;
      v137 = v8;
      sub_257C66D94(v115 - 1);
      v8 = v137;
      v115 = *(v137 + 2);
      if (v115 <= 1)
      {
        goto LABEL_159;
      }
    }

    goto LABEL_192;
  }

LABEL_159:
}

void sub_257CB3910(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != a2 || &a2[8 * v11] <= a4)
    {
      v34 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v34;
    }

    v35 = a2;
    v14 = &v4[8 * v11];
    if (v9 < 8 || a2 <= __src)
    {
      goto LABEL_91;
    }

    v63 = v4;
    while (1)
    {
      __dsta = v35;
      v36 = v35 - 8;
      v5 -= 8;
      v37 = v14;
      v56 = v35 - 8;
      while (1)
      {
        v39 = *(v37 - 1);
        v37 -= 8;
        v38 = v39;
        v40 = *(v39 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
        if (v40 == 2)
        {
          goto LABEL_96;
        }

        if (v40)
        {
          goto LABEL_84;
        }

        v41 = *v36;
        v42 = *(*v36 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
        if (v42 == 2)
        {
          goto LABEL_97;
        }

        if (v42)
        {
          goto LABEL_75;
        }

        v61 = v5;
        v65 = v14;
        sub_257ECC3F0();
        sub_257ECC3F0();
        v43 = sub_257ECF4C0();
        v44 = [v43 stringByDeletingPathExtension];

        v45 = sub_257ECF500();
        v47 = v46;

        v49 = *(v38 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v48 = *(v38 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v48)
        {
          v51 = (v41 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
          v52 = *(v41 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
          if (!v52)
          {
            goto LABEL_99;
          }

          goto LABEL_68;
        }

        v50 = v49 == v45 && v48 == v47;
        if (v50 || (sub_257ED0640() & 1) != 0)
        {
          break;
        }

        v51 = (v41 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v52 = *(v41 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v52)
        {
          goto LABEL_100;
        }

LABEL_68:
        v53 = *v51;
        v54 = *v51 == v45 && v52 == v47;
        if (v54 || (sub_257ED0640() & 1) != 0)
        {
        }

        else
        {
          if (!v48)
          {
            goto LABEL_99;
          }

          if (v52 != v48 || v53 != v49)
          {
            v55 = sub_257ED0640();

            v5 = v61;
            v4 = v63;
            v14 = v65;
            v36 = v56;
            if (v55)
            {
              goto LABEL_84;
            }

            goto LABEL_75;
          }
        }

        v5 = v61;
        v4 = v63;
        v14 = v65;
        v36 = v56;
LABEL_75:
        if (v5 + 8 != v14)
        {
          *v5 = *v37;
        }

        v5 -= 8;
        v14 = v37;
        if (v37 <= v4)
        {
          v14 = v37;
          v35 = __dsta;
          goto LABEL_91;
        }
      }

      v14 = v65;
      v36 = v56;
      v5 = v61;
LABEL_84:
      if (v5 + 8 != __dsta)
      {
        *v5 = *v36;
      }

      if (v14 > v4)
      {
        v35 = v36;
        if (v36 > __src)
        {
          continue;
        }
      }

      v35 = v36;
LABEL_91:
      if (v35 != v4 || v35 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v35, v4, 8 * ((v14 - v4) / 8));
      }

      return;
    }
  }

  v12 = a2;
  v13 = __src;
  if (a4 != __src || &__src[8 * v8] <= a4)
  {
    memmove(a4, __src, 8 * v8);
  }

  v14 = &v4[8 * v8];
  if (v6 < 8 || (v15 = v12, v12 >= v5))
  {
LABEL_89:
    v35 = v13;
    goto LABEL_91;
  }

  v64 = v14;
  while (1)
  {
    v16 = *v15;
    v17 = *(*v15 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
    if (v17 == 2)
    {
      break;
    }

    if (v17)
    {
      goto LABEL_14;
    }

    v19 = *v4;
    v20 = *(*v4 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
    if (v20 == 2)
    {
      goto LABEL_98;
    }

    if ((v20 & 1) == 0)
    {
      v57 = v13;
      __dst = v15;
      v62 = v4;
      sub_257ECC3F0();
      sub_257ECC3F0();
      v21 = sub_257ECF4C0();
      v22 = [v21 stringByDeletingPathExtension];

      v23 = sub_257ECF500();
      v25 = v24;

      v27 = *(v16 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
      v26 = *(v16 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
      if (v26)
      {
        v28 = v27 == v23 && v26 == v25;
        if (v28 || (sub_257ED0640() & 1) != 0)
        {

          v4 = v62;
          v13 = v57;
          v15 = __dst;
LABEL_14:
          v18 = v15;
          v28 = v13 == v15;
          v15 += 8;
          if (v28)
          {
            goto LABEL_16;
          }

LABEL_15:
          *v13 = *v18;
          goto LABEL_16;
        }

        v29 = (v19 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v30 = *(v19 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v30)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v29 = (v19 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        v30 = *(v19 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name + 8);
        if (!v30)
        {
          goto LABEL_101;
        }
      }

      v31 = *v29;
      v32 = *v29 == v23 && v30 == v25;
      if (v32 || (sub_257ED0640() & 1) != 0)
      {

LABEL_37:
        v4 = v62;
        v13 = v57;
        v15 = __dst;
        v14 = v64;
        goto LABEL_38;
      }

      if (!v26)
      {
        goto LABEL_101;
      }

      if (v30 == v26 && v31 == v27)
      {

        goto LABEL_37;
      }

      v33 = sub_257ED0640();

      v4 = v62;
      v13 = v57;
      v15 = __dst;
      v14 = v64;
      if (v33)
      {
        goto LABEL_14;
      }
    }

LABEL_38:
    v18 = v4;
    v28 = v13 == v4;
    v4 += 8;
    if (!v28)
    {
      goto LABEL_15;
    }

LABEL_16:
    v13 += 8;
    if (v4 >= v14 || v15 >= v5)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
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
}

uint64_t sub_257CB3F94(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_257ED0210();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

id sub_257CB4058()
{
  v71[3] = *MEMORY[0x277D85DE8];
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v64 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v63 = &v55 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v55 - v7;
  MEMORY[0x28223BE20](v6);
  v56 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257ED9BF0;
  v61 = type metadata accessor for DetectionRecordedFile();
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
  v57 = v1;
  v16 = *(v1 + 56);
  v16(v14 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url, 1, 1, v0);
  v17 = v0;
  v59 = v16;
  v60 = v1 + 56;
  v16(v12, 1, 1, v0);
  swift_beginAccess();
  v62 = v12;
  sub_257CB4B80(v12, v14 + v15);
  swift_endAccess();
  *(v14 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive) = 1;
  *(v14 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name) = xmmword_257EE00C0;
  *(v13 + 32) = v14;
  v70 = v13;
  sub_257CF4C78();
  if (!v18)
  {
    return v13;
  }

  v19 = v56;
  sub_257ECCAB0();

  v20 = [objc_opt_self() defaultManager];
  v21 = sub_257ECCAE0();
  v71[0] = 0;
  v22 = [v20 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:0 options:1 error:v71];

  v23 = v71[0];
  if (v22)
  {
    v24 = sub_257ECF810();
    v25 = v23;

    v26 = v24;
    v27 = *(v24 + 16);
    v28 = v57;
    if (v27)
    {
      v68 = *(v57 + 16);
      v69 = v57 + 16;
      v29 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v55 = v26;
      v30 = v26 + v29;
      v31 = *(v57 + 72);
      v65 = (v57 + 8);
      v66 = v31;
      v58 = v8;
      v68(v8, v26 + v29, v17);
      while (1)
      {
        sub_257ECCA80();
        v32 = sub_257ECF580();
        v34 = v33;

        if (v32 == 5656397 && v34 == 0xE300000000000000)
        {
        }

        else
        {
          v35 = sub_257ED0640();

          if ((v35 & 1) == 0)
          {
            (*v65)(v8, v17);
            goto LABEL_6;
          }
        }

        v67 = v27;
        v36 = v63;
        v37 = v68;
        v68(v63, v8, v17);
        v38 = swift_allocObject();
        v39 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
        v40 = v59;
        v59(v38 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url, 1, 1, v17);
        v41 = v62;
        v37(v62, v36, v17);
        v40(v41, 0, 1, v17);
        swift_beginAccess();
        sub_257CB4B80(v41, v38 + v39);
        swift_endAccess();
        *(v38 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive) = 0;
        v42 = v58;
        v43 = v17;
        v44 = v64;
        sub_257ECCAF0();
        v45 = sub_257ECCAD0();
        v47 = v46;
        v48 = *v65;
        (*v65)(v44, v43);
        v17 = v43;
        v49 = (v48)(v36, v43);
        v50 = (v38 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_name);
        *v50 = v45;
        v50[1] = v47;
        MEMORY[0x259C72300](v49);
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_257ECF830();
        }

        sub_257ECF860();
        v48(v42, v43);
        v8 = v42;
        v27 = v67;
LABEL_6:
        v30 += v66;
        if (!--v27)
        {

          v19 = v56;
          v28 = v57;
          goto LABEL_19;
        }

        v68(v8, v30, v17);
      }
    }

LABEL_19:

    v71[0] = sub_257CB3F94(v54, sub_257C69A4C, sub_257EB4D88);
    sub_257CB2A94(v71);
    (*(v28 + 8))(v19, v17);

    return v71[0];
  }

  else
  {
    v52 = v71[0];
    v53 = sub_257ECC9F0();

    swift_willThrow();
    (*(v57 + 8))(v19, v17);
    return v13;
  }
}

void sub_257CB473C()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray) = MEMORY[0x277D84F90];
  v2 = AXIsInternalInstall();
  v3 = &unk_286904A10;
  if (!v2)
  {
    v3 = v1;
  }

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections) = v3;
  v4 = AXIsInternalInstall();
  v5 = &unk_286904A38;
  if (!v4)
  {
    v5 = v1;
  }

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionFeedbacks) = v5;
  v6 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_tableView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 systemYellowColor];
  [v9 setTintColor_];

  [v9 setClipsToBounds_];
  *(v0 + v6) = v9;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257CB4894(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_availableInternalPeopleDetectionSections);
  if (*(v2 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    return sub_257ED0210();
  }

  v3 = *(v2 + a1 + 32);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return 1;
    }

    v5 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (!(v6 >> 62))
    {
      return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return sub_257ED0210();
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_257CB4954()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  if (sub_257ECCEA0() != 3)
  {
    return 0;
  }

  v5 = sub_257ECCE60();
  v6 = OBJC_IVAR____TtC16MagnifierSupport44InternalPeopleDetectionOptionsViewController_recordedFileArray;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7 >> 62)
  {
    if (v5 < sub_257ED0210())
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v5 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_4:
  v8 = sub_257ECCE60();
  result = swift_beginAccess();
  v10 = *(v1 + v6);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x259C72E20](v8);
    goto LABEL_8;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 8 * v8 + 32);
    sub_257ECC3F0();
LABEL_8:
    swift_endAccess();
    v12 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
    swift_beginAccess();
    sub_257C1C614(v11 + v12, v4);

    v13 = sub_257ECCB70();
    v14 = (*(*(v13 - 8) + 48))(v4, 1, v13) != 1;
    sub_257BE4084(v4, &qword_27F8F5F30);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_257CB4B48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D14394(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_257CB4B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MAGAREventHandler.register(_:asActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_257EC7760(&unk_257EDCE60, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v13;
  return swift_endAccess();
}

uint64_t MAGAREventHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BE9BF4(MEMORY[0x277D84F90]);
  return v0;
}

Swift::Void __swiftcall MAGAREventHandler.unregister(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  v5 = sub_257C03F6C(countAndFlagsBits, object);
  v7 = v6;

  if (v7)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_257C08CD4();
    }

    sub_257C09E7C(v5, v9);
    *(v2 + 16) = v9;
  }

  swift_endAccess();
}

uint64_t MAGAREventHandler.send(_:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v4 = sub_257ECDA30();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *a1;
  *(v2 + 81) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 144) = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  *(v2 + 152) = v6;
  *(v2 + 160) = v5;

  return MEMORY[0x2822009F8](sub_257CB4F20, v6, v5);
}

uint64_t sub_257CB4F20()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  v3 = *(v2 + 32);
  *(v0 + 82) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 176) = v6;
    *(v0 + 184) = v7;
    v9 = *(v0 + 81);
    v10 = (v7 << 10) | (16 * __clz(__rbit64(v6)));
    v11 = (*(v2 + 48) + v10);
    *(v0 + 192) = *v11;
    *(v0 + 200) = v11[1];
    v12 = (*(v2 + 56) + v10);
    v13 = *v12;
    *(v0 + 208) = v12[1];
    *(v0 + 64) = *(v0 + 128);
    *(v0 + 80) = v9;

    sub_257ECC3F0();
    v17 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_257CB5150;

    return v17();
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_257CB5150()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_257CB5474;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_257CB527C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_257CB527C()
{
  v1 = *(v0 + 184);
  v2 = (*(v0 + 176) - 1) & *(v0 + 176);
  if (v2)
  {
    v3 = *(v0 + 168);
LABEL_7:
    *(v0 + 176) = v2;
    *(v0 + 184) = v1;
    v5 = *(v0 + 81);
    v6 = (v1 << 10) | (16 * __clz(__rbit64(v2)));
    v7 = (*(v3 + 48) + v6);
    *(v0 + 192) = *v7;
    *(v0 + 200) = v7[1];
    v8 = (*(v3 + 56) + v6);
    v9 = *v8;
    *(v0 + 208) = v8[1];
    *(v0 + 64) = *(v0 + 128);
    *(v0 + 80) = v5;

    sub_257ECC3F0();
    v12 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    *v10 = v0;
    v10[1] = sub_257CB5150;

    v12();
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 168);
      if (v4 >= (((1 << *(v0 + 82)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v11 = *(v0 + 8);

    v11();
  }
}

uint64_t sub_257CB5474()
{
  v35 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 136);
  v3 = *(v0 + 128);
  v4 = *(v0 + 81);

  sub_257ECD4F0();

  sub_257C73068(v3, v2, v4);
  v5 = v1;
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBE0();

  sub_257CB57A8(v3, v2, v4);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 81);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v26 = *(v0 + 112);
    v27 = *(v0 + 104);
    v28 = *(v0 + 120);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315650;
    v15 = sub_257BF1FC8(v9, v8, &v29);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v30 = 0x746E657645205241;
    v31 = 0xEA0000000000203ALL;
    v32 = v11;
    v33 = v12;
    v34 = v10;
    v16 = MAGAREvent.AREventType.description.getter();
    MEMORY[0x259C72150](v16);

    v17 = sub_257BF1FC8(v30, v31, &v29);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v18 = sub_257ED0720();
    v20 = sub_257BF1FC8(v18, v19, &v29);

    *(v13 + 24) = v20;
    _os_log_impl(&dword_257BAC000, v6, v7, "Handler=%s error handling event=%s. Error=%s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v14, -1, -1);
    MEMORY[0x259C74820](v13, -1, -1);

    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 104);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t MAGAREventHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_257CB57A8(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2 && a3 != 3 && a3 != 4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

LABEL_5:

    return;
  }
}

uint64_t MAGTextDetectionService.__allocating_init()()
{
  v0 = swift_allocObject();
  MAGTextDetectionService.init()();
  return v0;
}

uint64_t MAGTextDetectionService.init()()
{
  v9 = sub_257ECFD20();
  v0 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_257ECF190();
  MEMORY[0x28223BE20](v4 - 8);
  v8 = sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF180();
  v11 = MEMORY[0x277D84F90];
  sub_257CB8538(&qword_281543F30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v9);
  v5 = sub_257ECFD80();
  v6 = v10;
  *(v10 + 16) = v5;
  return v6;
}

uint64_t sub_257CB5B50(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_257CB5B70, 0, 0);
}

uint64_t sub_257CB5B70()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_257BD2C2C(0, &qword_27F8F97F0);
  *v2 = v0;
  v2[1] = sub_257CB5C80;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000257EFD650, sub_257CB7D2C, v1, v3);
}

uint64_t sub_257CB5C80()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257CB8DC8;
  }

  else
  {

    v2 = sub_257CB8DDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257CB5D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a3;
  v5 = sub_257ECF120();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7128);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v20[1] = *(a2 + 16);
  (*(v12 + 16))(v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v20[0];
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_257CB8D20;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_39_1;
  v18 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECF150();
  v24 = MEMORY[0x277D84F90];
  sub_257CB8538(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72800](0, v10, v7, v18);
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_257CB613C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  sub_257CB7AE4(v2, 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7128);
  return sub_257ECF8D0();
}

void sub_257CB61DC(uint64_t a1, char a2, void (*a3)(void *))
{
  v5 = *(a1 + 16);
  sub_257CB7AE4(v5, a2);
  v7 = v6;

  v8 = v7;
  a3(v7);
}

void sub_257CB62A8(uint64_t a1, char a2, void (*a3)(void *))
{
  sub_257CB7AE4(a1, a2);
  v5 = v4;
  v6 = v4;
  a3(v5);
}

uint64_t sub_257CB6350(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_257CB6370, 0, 0);
}

uint64_t sub_257CB6370()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_257BD2C2C(0, &qword_27F8F97F0);
  *v2 = v0;
  v2[1] = sub_257CB5C80;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000018, 0x8000000257EFD680, sub_257CB7D34, v1, v3);
}

uint64_t sub_257CB64A8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_257CB64C8, 0, 0);
}

uint64_t sub_257CB64C8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_257BD2C2C(0, &qword_27F8F97F0);
  *v2 = v0;
  v2[1] = sub_257CB65D8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000018, 0x8000000257EFD6A0, sub_257CB7D74, v1, v3);
}