uint64_t sub_24E159858(uint64_t a1)
{
  sub_24E1596A4(0);
  v3 = OBJC_IVAR____TtC12GameCenterUI10DetailView_accessory;
  swift_beginAccess();
  sub_24E15B8F4(a1, v1 + v3);
  swift_endAccess();
  sub_24E159728();
  return sub_24DF8F34C(a1, &qword_27F1DEE88);
}

id sub_24E1598DC()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel];
  v2 = OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled;
  v3 = v0[OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled];
  result = [v1 textColor];
  v5 = result;
  if (v3 == 1)
  {
    v6 = 0.5;
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = 1.0;
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  v7 = [result colorWithAlphaComponent_];

  [v1 setTextColor_];
  [v0 setUserInteractionEnabled_];

  return [v0 setNeedsDisplay];
}

id sub_24E1599CC()
{
  v1 = v0;
  switch(*(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_style))
  {
    case 1:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      v10 = objc_opt_self();
      v11 = [v10 labelColor];
      [v2 setTextColor_];

      v19 = 1;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0;
      v24 = 7;
      v12 = sub_24E073800();
      sub_24DF9D524(&v19);
      sub_24E1595B4(v12);
      v13 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView);
      v14 = GKIsRemoteUI();
      v15 = &selRef_whiteColor;
      if (!v14)
      {
        v15 = &selRef_labelColor;
      }

      v16 = [v10 *v15];
      [v13 setTintColor_];

      return [v2 setNeedsDisplay];
    case 2:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for PlayerCardTheme();
      [v2 setTextColor_];
      v19 = 1;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0;
      v24 = 7;
      v18 = sub_24E073800();
      sub_24DF9D524(&v19);
      v8 = v18;
      goto LABEL_12;
    case 3:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for PlayerCardTheme();
      [v2 setTextColor_];
      goto LABEL_11;
    case 5:
    case 7:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      v3 = [objc_opt_self() systemRedColor];
      goto LABEL_10;
    case 6:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for PlayerCardTheme();
      v6 = __swift_project_value_buffer(v5, qword_27F20BF00);
      sub_24E0AEC50(v6 + *(v5 + 32));
      v3 = [objc_opt_self() secondaryLabelColor];
      goto LABEL_10;
    default:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
      v3 = [objc_opt_self() labelColor];
LABEL_10:
      v7 = v3;
      [v2 setTextColor_];

LABEL_11:
      v8 = 0;
LABEL_12:
      sub_24E1595B4(v8);
      return [v2 setNeedsDisplay];
  }
}

void sub_24E159D40()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_selectionHandler);
  if (v1)
  {

    v1(v2);

    sub_24DE73FA0(v1);
  }
}

uint64_t sub_24E159DF0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v43 = v4;
  v44 = v3;
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, sel_layoutSubviews, v5);
  v8 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView];
  v9 = [v8 image];
  v10 = v9;
  if ((v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_style] & 0xFE) == 4)
  {
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  sub_24E157F70(v9, v11, v49);

  v39 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel];
  v13 = type metadata accessor for DynamicTypeLabel();
  v47 = v13;
  v48 = MEMORY[0x277D22A68];
  *&v45 = v12;
  v40 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel];
  v41 = v12;
  v14 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView];
  v42 = v7;
  if (v14)
  {
    v38 = sub_24DF88A8C(0, &qword_27F1E1D30);
    v37 = MEMORY[0x277D22A58];
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v15 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView];
  if (v15)
  {
    v16 = sub_24DF88A8C(0, &qword_27F1E1D30);
    v17 = MEMORY[0x277D22A58];
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = *&v1[OBJC_IVAR____TtC12GameCenterUI10DetailView_separator];
  memcpy(v50, v49, sizeof(v50));
  v51 = v8;
  v52 = v39;
  v53 = MEMORY[0x277D22A58];
  sub_24DE56CE8(&v45, v54);
  v19 = v40;
  v54[5] = v40;
  v54[8] = v13;
  v54[9] = MEMORY[0x277D22A68];
  v54[10] = v14;
  v54[12] = 0;
  v54[11] = 0;
  v54[13] = v38;
  v54[14] = v37;
  v54[15] = v15;
  v54[16] = 0;
  v54[17] = 0;
  v54[18] = v16;
  v54[19] = v17;
  v54[20] = v18;
  v20 = v15;
  v21 = v18;
  v22 = v8;
  v23 = v41;
  v24 = v19;
  v25 = v14;
  [v1 bounds];
  [v1 layoutMargins];
  v26 = [v1 traitCollection];
  v27 = sub_24E3483C8();

  if (v27)
  {
    v28 = OUTLINED_FUNCTION_4_61();
    sub_24DFCF7A4(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6]);
  }

  else
  {
    OUTLINED_FUNCTION_4_61();
    sub_24DFD076C();
  }

  (*(v43 + 8))(v15, v44);
  return sub_24E15BADC(v50);
}

double sub_24E15A19C(void *a1, double a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView];
  v7 = [v6 image];
  v8 = v7;
  if ((v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_style] & 0xFE) == 4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  sub_24E157F70(v7, v9, __src);

  v38 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v10 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel];
  v11 = type metadata accessor for DynamicTypeLabel();
  v42 = v11;
  v43 = MEMORY[0x277D22A68];
  v39 = v10;
  *&v41 = v10;
  v12 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel];
  v13 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView];
  if (v13)
  {
    v37 = sub_24DF88A8C(0, &qword_27F1E1D30);
    v36 = MEMORY[0x277D22A58];
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v14 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_chevronView];
  v40 = a1;
  if (v14)
  {
    v15 = sub_24DF88A8C(0, &qword_27F1E1D30);
    v16 = MEMORY[0x277D22A58];
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_separator];
  memcpy(__dst, __src, sizeof(__dst));
  v46 = v6;
  v47 = v38;
  v48 = MEMORY[0x277D22A58];
  sub_24DE56CE8(&v41, v49);
  v49[5] = v12;
  v49[8] = v11;
  v49[9] = MEMORY[0x277D22A68];
  v49[10] = v13;
  v49[12] = 0;
  v49[11] = 0;
  v49[13] = v37;
  v49[14] = v36;
  v49[15] = v14;
  v49[16] = 0;
  v49[17] = 0;
  v49[18] = v15;
  v49[19] = v16;
  v49[20] = v17;
  v18 = v14;
  v19 = v17;
  v20 = v6;
  v21 = v39;
  v22 = v12;
  v23 = v13;
  [v3 layoutMargins];
  v26 = a2 - v24 - v25;
  v27 = [v40 traitCollection];
  v28 = sub_24E3483C8();

  if (v28)
  {
    sub_24DFD108C(v40);
  }

  else
  {
    sub_24DFD1DE0(v40, v26);
  }

  v30 = v29;
  [v3 layoutMargins];
  v32 = v31;
  v34 = v33;
  sub_24E15BADC(__dst);
  return v30 + v32 + v34;
}

uint64_t sub_24E15A520(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction);
  if (v2)
  {
    v3 = result;
    v5[3] = sub_24DF88A8C(0, &qword_27F1E5BD8);
    v5[0] = v3;
    sub_24DE56C38(v2);
    v4 = v3;
    v2(v5);
    sub_24DE73FA0(v2);
    return sub_24DF8F34C(v5, &qword_27F1E0370);
  }

  return result;
}

void sub_24E15A630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  LODWORD(v6) = 1.0;
  [v5 setHyphenationFactor_];
  v2[OBJC_IVAR____TtC12GameCenterUI10DetailView_style] = *(a1 + 40);
  sub_24E1599CC();
  v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  v11 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  v51 = sub_24DF88A8C(0, &qword_27F1E5BD0);
  *(inited + 64) = v51;
  *(inited + 40) = v5;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_2_71();
  sub_24E15BA2C(v12, v13);
  v50 = v11;

  v14 = v5;
  v15 = sub_24E347C28();
  v16 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v17 = sub_24E15B964(v9, v8, v15);
  [v7 setAttributedText_];

  [v7 setIsAccessibilityElement_];
  v18 = sub_24E347CB8();
  [v7 setAccessibilityValue_];

  v19 = *(a1 + 80);
  v20 = v19;
  sub_24E159454(v19);
  v21 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel];
  if (*(a1 + 72))
  {
    v22 = *(a1 + 64);
    v23 = *(a1 + 72);
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_24E367D20;
  *(v24 + 64) = v51;
  *(v24 + 32) = v50;
  *(v24 + 40) = v14;
  v25 = v14;

  v26 = sub_24E347C28();
  v27 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v28 = sub_24E15B964(v22, v23, v26);
  [v21 setAttributedText_];

  v29 = [v21 attributedText];
  if (v29 && (v30 = v29, v31 = [v29 length], v30, !v31))
  {
    if (qword_27F1DDF90 != -1)
    {
      OUTLINED_FUNCTION_0_115();
    }

    v32 = &unk_27F20BAB0;
  }

  else
  {
    if (qword_27F1DDF98 != -1)
    {
      swift_once();
    }

    v32 = &unk_27F20BAC8;
  }

  v33 = sub_24E344158();
  v34 = __swift_project_value_buffer(v33, v32);
  sub_24E0AEC50(v34);
  sub_24DF8F3A8(a1 + 88, v54, &qword_27F1DEE88);
  sub_24E159858(v54);
  v35 = *(a1 + 160);
  v36 = *(a1 + 168);
  v37 = &v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction];
  v38 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction];
  *v37 = v35;
  v37[1] = v36;
  sub_24DE56C38(v35);
  sub_24DE73FA0(v38);
  v39 = *(a1 + 177);
  v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled] = v39 ^ 1;
  sub_24E1598DC();
  v40 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryView];
  if (v40)
  {
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    v42 = v41 == 0;
    if (!v41)
    {
      v41 = v40;
    }

    v43 = &selRef_setUserInteractionEnabled_;
    if (!v42)
    {
      v43 = &selRef_setEnabled_;
    }

    [v41 *v43];
  }

  if (!v39)
  {
    goto LABEL_22;
  }

  sub_24DF8F3A8(a1 + 184, &v52, &qword_27F1DEE90);
  if (!v53)
  {
    sub_24DF8F34C(&v52, &qword_27F1DEE90);
LABEL_22:
    v47 = OUTLINED_FUNCTION_8_48(OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler);
    *v48 = 0;
    v48[1] = 0;
    goto LABEL_23;
  }

  sub_24DE56CE8(&v52, v54);
  sub_24DE56CE8(v54, &v52);
  v44 = swift_allocObject();
  *(v44 + 16) = v49;
  sub_24DE56CE8(&v52, v44 + 24);
  v45 = &v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler];
  v46 = *&v3[OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler];
  *v45 = sub_24E15BA74;
  v45[1] = v44;

  v47 = v46;
LABEL_23:
  sub_24DE73FA0(v47);
  [v3 setNeedsLayout];
}

uint64_t sub_24E15AB4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_24DF8F34C(v6, &unk_27F1EAC90);
    result = sub_24E3472E8();
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    (*(v1 + 104))(v3, *MEMORY[0x277D21E18], v0);
    sub_24E3473B8();

    (*(v1 + 8))(v3, v0);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_24E15ADC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler);
  if (v1)
  {

    v1(v2);

    sub_24DE73FA0(v1);
  }
}

uint64_t sub_24E15AE28()
{
  sub_24E159454(0);
  sub_24E1593D8(0, 0, &OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
  sub_24E1593D8(0, 0, &OBJC_IVAR____TtC12GameCenterUI10DetailView_subtitleLabel);
  memset(v8, 0, sizeof(v8));
  v9 = -1;
  sub_24E159858(v8);
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction);
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_accessoryAction);
  *v1 = 0;
  v1[1] = 0;
  sub_24DE73FA0(v2);
  v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_titleLabel);
  v4 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  [v3 setIsAccessibilityElement_];
  [v3 setAccessibilityValue_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_imageView) setTintColor_];
  v5 = (v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler);
  v6 = *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_gameControllerSelectHandler);
  *v5 = 0;
  v5[1] = 0;

  return sub_24DE73FA0(v6);
}

double sub_24E15AF68(double a1, uint64_t a2, void *a3)
{
  v5 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E50C0);
  sub_24E347128();

  if (LOBYTE(v53[8]) == 255)
  {
    sub_24DF8F34C(v53, &qword_27F1DEE88);
    v44 = 0;
  }

  else
  {
    v44 = sub_24E073800();
    sub_24DF9D524(v53);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_90();
  sub_24E347128();

  if (LOBYTE(v53[0]) == 6)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v11 = type metadata accessor for PlayerCardTheme();
    v12 = __swift_project_value_buffer(v11, qword_27F20BF00) + *(v11 + 32);
  }

  else
  {
    if (qword_27F1DDF90 != -1)
    {
      OUTLINED_FUNCTION_0_115();
    }

    v12 = __swift_project_value_buffer(v5, &unk_27F20BAB0);
  }

  v47 = v7;
  (*(v7 + 16))(v10, v12, v5);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_90();
  sub_24E347128();

  v13 = sub_24DF88A8C(0, &qword_27F1DEE28);
  ObjectType = swift_getObjectType();
  v14 = a3;
  v15 = [a3 traitCollection];
  v46 = v10;
  v41[1] = v13;
  MEMORY[0x25303F0C0](v10, v15);

  sub_24E344398();
  v16 = sub_24E344868();
  swift_allocObject();
  v42 = OUTLINED_FUNCTION_9_39();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_90();
  sub_24E347128();

  if (qword_27F1DE008 != -1)
  {
    swift_once();
  }

  v48 = v5;
  v17 = __swift_project_value_buffer(v5, &unk_27F20BC18);
  v45 = v14;
  v18 = [v14 traitCollection];
  MEMORY[0x25303F0C0](v17, v18);

  sub_24E344398();
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_9_39();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_90();
  sub_24E347128();

  if (LOBYTE(v53[0]) == 1)
  {
    v20 = v44;
    v21 = v42;
LABEL_16:
    v22 = MEMORY[0x277D22A58];
    memset(&v53[1], 0, 56);
    v53[0] = 1;
    LOBYTE(v53[8]) = 7;
    v23 = sub_24E073800();
    sub_24DF9D524(v53);
    *(&v60 + 1) = sub_24DF88A8C(0, &qword_27F1E1D30);
    v61 = v22;
    *&v59 = v23;
    goto LABEL_18;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_1_90();
  sub_24E347128();

  v20 = v44;
  v21 = v42;
  if (LOBYTE(v53[0]) == 2)
  {
    goto LABEL_16;
  }

  v61 = 0;
  v59 = 0u;
  v60 = 0u;
LABEL_18:
  type metadata accessor for SystemImage();
  v24 = [objc_opt_self() configurationWithTextStyle_];
  v25 = sub_24E18EFCC(0x2E6E6F7276656863, 0xEF64726177726F66, v24);

  [v25 size];
  v27 = v26;
  v29 = v28;

  if (qword_27F1DD8B0 != -1)
  {
    swift_once();
  }

  sub_24E15BA80(&xmmword_27F1E5A28, v52);
  v52[0] = 0;
  v52[1] = 0;
  v52[38] = v27;
  v52[39] = v29;
  v52[7] = 4;
  v30 = MEMORY[0x277D228F0];
  v50 = v16;
  v51 = MEMORY[0x277D228F0];
  *&v49 = v21;
  if (v20)
  {
    v31 = sub_24DF88A8C(0, &qword_27F1E1D30);
    v32 = MEMORY[0x277D22A58];
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  sub_24DF8F3A8(&v59, v58, &qword_27F1DEE30);
  memcpy(v53, v52, sizeof(v53));
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  sub_24DE56CE8(&v49, v57);
  v57[5] = v19;
  v57[8] = v16;
  v57[9] = v30;
  v57[10] = v20;
  v57[12] = 0;
  v57[11] = 0;
  v57[13] = v31;
  v57[14] = v32;
  v58[5] = 0;
  v33 = v20;

  v34 = sub_24DFC1764();
  v35 = [v34 traitCollection];
  v36 = sub_24E3483C8();

  if (v36)
  {
    sub_24DFD108C(v34);
  }

  else
  {
    sub_24DFD1DE0(v34, a1);
  }

  v38 = v37;
  v39 = v46;

  swift_unknownObjectRelease();

  sub_24E15BADC(v53);
  (*(v47 + 8))(v39, v48);
  sub_24DF8F34C(&v59, &qword_27F1DEE30);
  return v38;
}

id sub_24E15B66C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E50C0);
  sub_24E347128();

  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_style) = v3;
  sub_24E1599CC();
  swift_getKeyPath();
  sub_24E347128();

  *(v0 + OBJC_IVAR____TtC12GameCenterUI10DetailView_disabled) = (v2 & 1) == 0;
  return sub_24E1598DC();
}

uint64_t sub_24E15B8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE88);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_24E15B964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24E347CB8();

  if (a3)
  {
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_2_71();
    sub_24E15BA2C(v6, v7);
    v8 = sub_24E347BE8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 initWithString:v5 attributes:v8];

  return v9;
}

uint64_t sub_24E15BA2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_115()
{

  return swift_once();
}

char *OUTLINED_FUNCTION_5_64()
{

  return sub_24E0AEF24(v0, 0, 0, 0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_9_39()
{

  return sub_24E344858();
}

double OUTLINED_FUNCTION_11_31@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = -1;
  return result;
}

id sub_24E15BC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DF88A8C(0, &qword_280BE0110);
  v8 = sub_24E011930(a1, a2);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage_];

  MEMORY[0x25303E950](0x2E6B726F77747261, 0xE800000000000000);

  MEMORY[0x25303E950](a1, a2);

  sub_24DFD8050(a3, a4, v9);

  return v9;
}

id sub_24E15BE90(uint64_t *a1, void *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
  }

  else
  {
    v8 = [*&v3[*a2] *a3];
    v9 = [v3 *a3];
    v10 = [v8 constraintEqualToAnchor_];

    v11 = *&v3[v4];
    *&v3[v4] = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

char *sub_24E15BF50(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView;
  sub_24DF88A8C(0, &qword_27F1DFF00);
  v12 = OUTLINED_FUNCTION_2_72(0xD000000000000016, 0x800000024E3A94F0, v11, 0x800000024E3A9510);
  *&v4[v10] = v12;
  v13 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView;
  *&v4[v13] = OUTLINED_FUNCTION_1_91(v12, 0xED0000676F44676ELL);
  v14 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView;
  v16 = OUTLINED_FUNCTION_2_72(0xD000000000000016, 0x800000024E3A9540, v15, 0x800000024E3A9510);
  *&v4[v14] = v16;
  v17 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView;
  v18 = OUTLINED_FUNCTION_1_91(v16, 0xED00006E614D676ELL);
  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView;
  v20 = OUTLINED_FUNCTION_1_91(v18, 0xEF746F626F52676ELL);
  *&v4[v19] = v20;
  v21 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView;
  *&v4[v21] = OUTLINED_FUNCTION_1_91(v20, 0xEF6E616D6F57676ELL);
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterYConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___logoCenterYConstraint] = 0;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v24 = ShouldUsePadUI == 0;
  if (ShouldUsePadUI)
  {
    v25 = 0xD000000000000012;
  }

  else
  {
    v25 = 0x696472616F626E4FLL;
  }

  if (v24)
  {
    v26 = 0xEE006F676F4C676ELL;
  }

  else
  {
    v26 = 0x800000024E3A9590;
  }

  v27 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView;
  *&v4[v27] = OUTLINED_FUNCTION_2_72(v25, v26, v23, 0x800000024E3A9510);
  v43.receiver = v4;
  v43.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_74(v28);
  v29 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView;
  OUTLINED_FUNCTION_4_62();
  v30 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView;
  OUTLINED_FUNCTION_4_62();
  v31 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView;
  OUTLINED_FUNCTION_4_62();
  v32 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView;
  OUTLINED_FUNCTION_4_62();
  v33 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView;
  OUTLINED_FUNCTION_4_62();
  v34 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView;
  OUTLINED_FUNCTION_4_62();
  v35 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView;
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_3_74(*&v28[v29]);
  OUTLINED_FUNCTION_3_74(*&v28[v30]);
  OUTLINED_FUNCTION_3_74(*&v28[v31]);
  OUTLINED_FUNCTION_3_74(*&v28[v35]);
  OUTLINED_FUNCTION_3_74(*&v28[v32]);
  OUTLINED_FUNCTION_3_74(*&v28[v33]);
  OUTLINED_FUNCTION_3_74(*&v28[v34]);
  sub_24E15C510();
  v36 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_24E37D390;
  *(v37 + 32) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterXConstraint);
  *(v37 + 40) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterYConstraint);
  *(v37 + 48) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterXConstraint);
  *(v37 + 56) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterYConstraint);
  *(v37 + 64) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterXConstraint);
  *(v37 + 72) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterYConstraint);
  *(v37 + 80) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterXConstraint);
  *(v37 + 88) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterYConstraint);
  *(v37 + 96) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterXConstraint);
  *(v37 + 104) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterYConstraint);
  *(v37 + 112) = OUTLINED_FUNCTION_5_65(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterXConstraint);
  *(v37 + 120) = OUTLINED_FUNCTION_6_56(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterYConstraint);
  v38 = [*&v28[v35] centerXAnchor];
  v39 = [v28 centerXAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v37 + 128) = v40;
  *(v37 + 136) = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___logoCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView, &selRef_centerYAnchor);
  sub_24DF88A8C(0, &qword_27F1E1F10);
  v41 = sub_24E347EE8();

  [v36 activateConstraints_];

  return v28;
}

void sub_24E15C510()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView);
  v2 = [v1 widthAnchor];
  sub_24E15CEE0(v36);
  v3 = [v2 constraintEqualToConstant_];

  [v3 setActive_];
  v4 = [v1 heightAnchor];
  sub_24E15CEE0(v38);
  v5 = [v4 constraintEqualToConstant_];

  [v5 setActive_];
  v6 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView);
  v7 = [v6 widthAnchor];
  sub_24E15CEE0(v40);
  v8 = [v7 constraintEqualToConstant_];

  [v8 setActive_];
  v9 = [v6 heightAnchor];
  sub_24E15CEE0(v42);
  v10 = [v9 constraintEqualToConstant_];

  [v10 setActive_];
  v11 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView);
  v12 = [v11 widthAnchor];
  sub_24E15CEE0(v44);
  v13 = [v12 constraintEqualToConstant_];

  [v13 setActive_];
  v14 = [v11 heightAnchor];
  sub_24E15CEE0(v46);
  v15 = [v14 constraintEqualToConstant_];

  [v15 setActive_];
  v16 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView);
  v17 = [v16 widthAnchor];
  sub_24E15CEE0(v48);
  v18 = [v17 constraintEqualToConstant_];

  [v18 setActive_];
  v19 = [v16 heightAnchor];
  sub_24E15CEE0(v50);
  v20 = [v19 constraintEqualToConstant_];

  [v20 setActive_];
  v21 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView);
  v22 = [v21 widthAnchor];
  sub_24E15CEE0(v52);
  v23 = [v22 constraintEqualToConstant_];

  [v23 setActive_];
  v24 = [v21 heightAnchor];
  sub_24E15CEE0(v54);
  v25 = [v24 constraintEqualToConstant_];

  [v25 setActive_];
  v26 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView);
  v27 = [v26 widthAnchor];
  sub_24E15CEE0(v56);
  v28 = [v27 constraintEqualToConstant_];

  [v28 setActive_];
  v29 = [v26 heightAnchor];
  sub_24E15CEE0(v58);
  v30 = [v29 constraintEqualToConstant_];

  [v30 setActive_];
  v31 = *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView);
  v32 = [v31 widthAnchor];
  sub_24E15CEE0(v60);
  v33 = [v32 constraintEqualToConstant_];

  [v33 setActive_];
  v34 = [v31 heightAnchor];
  sub_24E15CEE0(v62);
  v35 = [v34 constraintEqualToConstant_];

  [v35 setActive_];
}

void sub_24E15CA7C()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_24E15CAB8();
}

void sub_24E15CAB8()
{
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v1 = -1.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v22);
  [v2 setConstant_];

  v3 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v24);
  v4 = v25;
  sub_24E15CEE0(v26);
  [v3 setConstant_];

  v5 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v28);
  [v5 setConstant_];

  v6 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v30);
  v7 = v31;
  sub_24E15CEE0(v32);
  [v6 setConstant_];

  v8 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v34);
  [v8 setConstant_];

  v9 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v36);
  v10 = v37;
  sub_24E15CEE0(v38);
  [v9 setConstant_];

  v11 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v40);
  [v11 setConstant_];

  v12 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v42);
  v13 = v43;
  sub_24E15CEE0(v44);
  [v12 setConstant_];

  v14 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v46);
  [v14 setConstant_];

  v15 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v48);
  v16 = v49;
  sub_24E15CEE0(v50);
  [v15 setConstant_];

  v17 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterXConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView, &selRef_centerXAnchor);
  sub_24E15CEE0(v52);
  [v17 setConstant_];

  v18 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v54);
  v19 = v55;
  sub_24E15CEE0(v56);
  [v18 setConstant_];

  v21 = sub_24E15BE90(&OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___logoCenterYConstraint, &OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView, &selRef_centerYAnchor);
  sub_24E15CEE0(v58);
  v20 = v59;
  sub_24E15CEE0(v60);
  [v21 setConstant_];
}

void sub_24E15CEE0(uint64_t a1@<X8>)
{
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    type metadata accessor for OnboardingTemplateView();
    if (sub_24E3262B0())
    {
      v14 = [v1 superview];
      if (v14)
      {
        v15 = v14;
        [v14 frame];
        v17 = v16;

        if (v17 > 436.0)
        {
          v3 = xmmword_24E37D4E0;
          v4 = xmmword_24E37D4F0;
          v5 = xmmword_24E37D500;
          v7 = xmmword_24E37D510;
          v8 = xmmword_24E37D520;
          v9 = xmmword_24E37D530;
          v10 = xmmword_24E37D540;
          v11 = xmmword_24E37D550;
          v12 = 0x4065000000000000;
          v13 = xmmword_24E37D560;
          v6 = xmmword_24E37D470;
          goto LABEL_10;
        }
      }

      v13 = xmmword_24E37D570;
    }

    else
    {
      v13 = xmmword_24E37D4D0;
    }

    v12 = 0x4065000000000000;
    v3 = xmmword_24E37D440;
    v6 = xmmword_24E37D470;
    v5 = xmmword_24E37D460;
    v4 = xmmword_24E37D450;
    v8 = xmmword_24E37D490;
    v7 = xmmword_24E37D480;
    v10 = xmmword_24E37D4B0;
    v9 = xmmword_24E37D4A0;
    v11 = xmmword_24E37D4C0;
    goto LABEL_10;
  }

  v3 = xmmword_24E37D3A0;
  v4 = xmmword_24E37D3B0;
  v5 = xmmword_24E37D3C0;
  v6 = xmmword_24E37D3D0;
  v7 = xmmword_24E37D3E0;
  v8 = xmmword_24E37D3F0;
  v9 = xmmword_24E37D400;
  v10 = xmmword_24E37D410;
  v11 = xmmword_24E37D420;
  v12 = 0x4060000000000000;
  v13 = xmmword_24E37D430;
LABEL_10:
  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v9;
  *(a1 + 64) = v8;
  *(a1 + 80) = v7;
  *(a1 + 96) = v6;
  *(a1 + 112) = v5;
  *(a1 + 128) = v4;
  *(a1 + 144) = v3;
  *(a1 + 160) = v12;
  *(a1 + 168) = 0;
}

void sub_24E15D0E8()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_achievementsImageView;
  sub_24DF88A8C(0, &qword_27F1DFF00);
  v3 = OUTLINED_FUNCTION_2_72(0xD000000000000016, 0x800000024E3A94F0, v2, 0x800000024E3A9510);
  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_dogImageView;
  *(v0 + v4) = OUTLINED_FUNCTION_0_116(v3, 0xED0000676F44676ELL);
  v5 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_leaderboardsImageView;
  v7 = OUTLINED_FUNCTION_2_72(0xD000000000000016, 0x800000024E3A9540, v6, 0x800000024E3A9510);
  *(v0 + v5) = v7;
  v8 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_manImageView;
  v9 = OUTLINED_FUNCTION_0_116(v7, 0xED00006E614D676ELL);
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_robotImageView;
  v11 = OUTLINED_FUNCTION_0_116(v9, 0xEF746F626F52676ELL);
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_womanImageView;
  *(v0 + v12) = OUTLINED_FUNCTION_0_116(v11, 0xEF6E616D6F57676ELL);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___manCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___dogCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___achievementsCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___womanCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___robotCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___leaderboardsCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView____lazy_storage___logoCenterYConstraint) = 0;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v15 = ShouldUsePadUI == 0;
  if (ShouldUsePadUI)
  {
    v16 = 0xD000000000000012;
  }

  else
  {
    v16 = 0x696472616F626E4FLL;
  }

  if (v15)
  {
    v17 = 0xEE006F676F4C676ELL;
  }

  else
  {
    v17 = 0x800000024E3A9590;
  }

  v18 = OBJC_IVAR____TtC12GameCenterUI18WelcomeArtworkView_logoImageView;
  *(v0 + v18) = OUTLINED_FUNCTION_2_72(v16, v17, v14, 0x800000024E3A9510);
  sub_24E348AE8();
  __break(1u);
}

id OUTLINED_FUNCTION_0_116(uint64_t a1, uint64_t a2)
{

  return sub_24E15BC0C(v2, a2, 0xD000000000000022, v3 | 0x8000000000000000);
}

id OUTLINED_FUNCTION_1_91(uint64_t a1, uint64_t a2)
{

  return sub_24E15BC0C(v2, a2, 0xD000000000000022, v3 | 0x8000000000000000);
}

id OUTLINED_FUNCTION_2_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_24E15BC0C(a1, a2, 0xD000000000000022, a4);
}

id OUTLINED_FUNCTION_3_74(void *a1)
{

  return [a1 (v1 + 1466)];
}

id OUTLINED_FUNCTION_4_62()
{

  return [v0 (v1 + 2040)];
}

id OUTLINED_FUNCTION_5_65(uint64_t *a1)
{

  return sub_24E15BE90(a1, v2, v1);
}

id OUTLINED_FUNCTION_6_56(uint64_t *a1)
{

  return sub_24E15BE90(a1, v2, v1);
}

uint64_t sub_24E15D5B0()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
  __swift_allocate_value_buffer(v4, qword_27F1E5C80);
  v31 = v4;
  v5 = __swift_project_value_buffer(v4, qword_27F1E5C80);
  if (qword_27F1DDF80 != -1)
  {
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, &unk_27F20BA80);
  v8 = *(v6 - 8);
  v30 = *(v8 + 16);
  v29 = v8 + 16;
  v30(v3, v7, v6);
  v9 = v1[13];
  v28 = *MEMORY[0x277D22618];
  v27 = v9;
  v9(v3);
  v10 = sub_24E3444F8();
  v42 = v10;
  v43 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v41);
  v39 = v0;
  v40 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
  v12 = v1[2];
  v12(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  v13 = v1[1];
  v13(v3, v0);
  if (qword_27F1DDF88 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, &unk_27F20BA98);
  v30(v3, v14, v6);
  v27(v3, v28, v0);
  v39 = v10;
  v40 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v38);
  v36 = v0;
  v37 = MEMORY[0x277D22628];
  v15 = __swift_allocate_boxed_opaque_existential_1(&v35);
  v12(v15, v3, v0);
  sub_24E344508();
  v13(v3, v0);
  v16 = MEMORY[0x277D839F8];
  v17 = MEMORY[0x277D22A30];
  v36 = MEMORY[0x277D839F8];
  v37 = MEMORY[0x277D22A30];
  *&v35 = 0x4044000000000000;
  if (qword_27F1DDA08 != -1)
  {
    swift_once();
  }

  v18 = qword_27F20B158;
  v19 = MEMORY[0x277D225F8];
  *(v5 + 18) = MEMORY[0x277D85048];
  *(v5 + 19) = v19;
  *(v5 + 15) = v18;
  v20 = v31;
  v21 = *(v31 + 32);
  v22 = *MEMORY[0x277D227E8];
  v23 = sub_24E344658();
  (*(*(v23 - 8) + 104))(&v5[v21], v22, v23);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32[4] = v17;
  v32[3] = v16;
  v32[0] = 0x4064000000000000;
  v24 = &v5[*(v20 + 36)];
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = &v5[*(v20 + 40)];
  *(v25 + 32) = 0;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  sub_24DF88BF0(&v41, v5);
  sub_24DF88BF0(&v38, (v5 + 40));
  sub_24DF88BF0(&v35, (v5 + 80));
  sub_24DFB6B5C(v33, v25);
  return sub_24DFB6B5C(v32, v24);
}

char *sub_24E15DA1C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_centerContentInScrollView] = 1;
  v10 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_separators] = v10;
  v11 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v12 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_gradient;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 8);
  v16 = *(MEMORY[0x277D768C8] + 16);
  v17 = *(MEMORY[0x277D768C8] + 24);
  v18 = v13;
  [v18 setLayoutMargins_];
  v19 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView;
  [*&v18[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView] setShowsHorizontalScrollIndicator_];
  [*&v18[v19] setShowsVerticalScrollIndicator_];
  v20 = *&v18[v19];
  sub_24E02909C();

  [*&v18[v19] setDelegate_];
  [v18 addSubview_];

  return v18;
}

void sub_24E15DBE0()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_centerContentInScrollView) = 1;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_separators) = v1;
  v2 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_gradient;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_24E348AE8();
  __break(1u);
}

void sub_24E15DCD4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v6 = *(v4 - 1);
      v7 = v5;
      [v6 removeFromSuperview];
      [v7 removeFromSuperview];

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  v8 = *(v2 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs);
  v9 = *(v8 + 16);
  v10 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView;

  v11 = 0;
  v12 = (v8 + 40);
  while (v9 != v11)
  {
    if (v11 >= *(v8 + 16))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = *v12;
    v14 = *(v2 + v10);
    v15 = *(v12 - 1);
    v16 = v13;
    [v14 addSubview_];
    [v14 addSubview_];
    v17 = *&v15[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView];
    if (!v17)
    {
      goto LABEL_13;
    }

    ++v11;
    v18 = v17;
    sub_24E02909C();

    sub_24E02909C();
    v12 += 2;
  }
}

uint64_t sub_24E15DE38(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs) = a1;
  sub_24E15DCD4(v2);
}

uint64_t sub_24E15DE80(uint64_t a1)
{
  result = sub_24DFD8654(a1);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_18;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25303F560](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }

  v8 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_separators;
  swift_beginAccess();
  v9 = *(v1 + v8);
  result = sub_24DFD8654(v9);
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (result < 1)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v11 = *(v1 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView);

  for (j = 0; j != v10; ++j)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x25303F560](j, v9);
    }

    else
    {
      v13 = *(v9 + 8 * j + 32);
    }

    v14 = v13;
    [v11 addSubview_];
  }
}

uint64_t sub_24E15DFC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_separators;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_24E15DE80(v4);
}

uint64_t sub_24E15E08C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24E344658();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
  MEMORY[0x28223BE20](v44);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs];
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v38 = v5;
    v39 = v4;
    v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = v1;
    v42 = a1;
    v49 = MEMORY[0x277D84F90];

    sub_24E12F6E0(0, v10, 0);
    v11 = v49;
    v12 = type metadata accessor for VibrancyHostView();
    v13 = type metadata accessor for DynamicTypeLabel();
    v37 = v9;
    v14 = (v9 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v49 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      v19 = v15;
      v20 = v16;
      if (v18 >= v17 >> 1)
      {
        sub_24E12F6E0((v17 > 1), v18 + 1, 1);
        v11 = v49;
      }

      *(v11 + 16) = v18 + 1;
      v21 = v11 + 80 * v18;
      *(v21 + 32) = v19;
      *(v21 + 40) = v45;
      *(v21 + 56) = v12;
      *(v21 + 64) = MEMORY[0x277D22A58];
      *(v21 + 72) = v20;
      *(v21 + 80) = v48;
      *(v21 + 96) = v13;
      *(v21 + 104) = MEMORY[0x277D22A68];
      v14 += 2;
      --v10;
    }

    while (v10);

    v2 = v41;
    a1 = v42;
    v4 = v39;
    v8 = v40;
    v5 = v38;
  }

  v22 = v44;
  if (qword_27F1DD8B8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v22, qword_27F1E5C80);
  sub_24E160A6C(v23, v8);
  v24 = [v2 traitCollection];
  v25 = sub_24E3483C8();

  if (v25)
  {
    v26 = [v2 traitCollection];
    v27 = sub_24E3483B8();

    v28 = MEMORY[0x277D227F8];
    if ((v27 & 1) == 0)
    {
      v28 = MEMORY[0x277D227F0];
    }

    v29 = v43;
    (*(v5 + 104))(v43, *v28, v4);
    (*(v5 + 40))(&v8[*(v22 + 32)], v29, v4);
  }

  v30 = [v2 traitCollection];
  sub_24E344A98();
  v32 = v31;

  v46 = MEMORY[0x277D85048];
  v47 = MEMORY[0x277D225F8];
  *&v45 = v32;
  __swift_destroy_boxed_opaque_existential_1((v8 + 120));
  sub_24DF88BF0(&v45, (v8 + 120));
  sub_24E160A6C(v8, a1);
  swift_beginAccess();

  sub_24E07A134();
  v34 = v33;

  v35 = type metadata accessor for PlayerProfileInfoBarLayout(0);
  *(a1 + *(v35 + 20)) = v11;
  *(a1 + *(v35 + 24)) = v34;
  return sub_24E160AD0(v8, type metadata accessor for PlayerProfileInfoBarLayout.Metrics);
}

uint64_t sub_24E15E524()
{
  ObjectType = swift_getObjectType();
  v2 = sub_24E344048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlayerProfileInfoBarLayout(0);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = (&v44.receiver - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44.receiver = v0;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_layoutSubviews, v7);
  v10 = *&v0[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_scrollView];
  OUTLINED_FUNCTION_1_92();
  [v10 setFrame_];
  [v0 layoutMargins];
  [v10 setContentInset_];
  [v10 contentSize];
  v12 = v11;
  [v10 bounds];
  Width = CGRectGetWidth(v45);
  v14 = [v0 layer];
  v15 = v14;
  if (Width >= v12)
  {
    [v14 setMask_];
  }

  else
  {
    [v14 setMask_];

    sub_24E15E8B0();
    sub_24E15EB5C(v10);
  }

  sub_24E15E08C(v9);
  sub_24E15FB80(v0, v9, 1.79769313e308, 1.79769313e308);
  v17 = v16;
  OUTLINED_FUNCTION_1_92();
  v19 = v18;
  v21 = v20;
  [v0 layoutMargins];
  v23 = v22;
  v46.origin.x = v24;
  v26 = v19 - v24 - v25;
  v46.size.height = v21 - v23 - v27;
  v46.origin.y = v23;
  v46.size.width = v26;
  v28 = CGRectGetWidth(v46);
  if (v17 < v28)
  {
    if (v0[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_centerContentInScrollView] == 1)
    {
      OUTLINED_FUNCTION_1_92();
      v32 = v31;
      v34 = v33;
      [v0 layoutMargins];
      v36 = v35;
      v48.origin.x = v37;
      v39 = v32 - v37 - v38;
      v48.size.height = v34 - v36 - v40;
      v48.origin.y = v36;
      v48.size.width = v39;
      CGRectGetWidth(v48);
    }

    OUTLINED_FUNCTION_1_92();
    v30 = v41;
    Height = v42;
  }

  else
  {
    OUTLINED_FUNCTION_1_92();
    Height = CGRectGetHeight(v47);
    v30 = v17;
  }

  [v10 setContentSize_];
  [v10 setScrollEnabled_];
  [v10 contentSize];
  sub_24E30ABAC();
  (*(v3 + 8))(v5, v2);
  return sub_24E160AD0(v9, type metadata accessor for PlayerProfileInfoBarLayout);
}

id sub_24E15E8B0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_gradient];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24E36D5F0;
  sub_24DF88A8C(0, &qword_27F1E50D0);
  *(v3 + 32) = sub_24E3485F8();
  *(v3 + 40) = sub_24E3485F8();
  *(v3 + 48) = sub_24E3485F8();
  *(v3 + 56) = sub_24E3485F8();
  sub_24E317694(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E369E30;
  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  v7 = [v6 CGColor];

  type metadata accessor for CGColor(0);
  v9 = v8;
  *(v4 + 56) = v8;
  *(v4 + 32) = v7;
  v10 = [v5 blackColor];
  v11 = [v10 CGColor];

  *(v4 + 88) = v9;
  *(v4 + 64) = v11;
  v12 = [v5 blackColor];
  v13 = [v12 CGColor];

  *(v4 + 120) = v9;
  *(v4 + 96) = v13;
  v14 = [v5 clearColor];
  v15 = [v14 CGColor];

  *(v4 + 152) = v9;
  *(v4 + 128) = v15;
  sub_24E27B56C(v4, v2);
  [v1 bounds];
  [v2 setFrame_];
  v16 = [v1 traitCollection];
  v17 = sub_24E3483B8();

  if (v17)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  if (v17)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  [v2 setStartPoint_];

  return [v2 setEndPoint_];
}

void sub_24E15EB5C(void *a1)
{
  [a1 contentOffset];
  [a1 contentSize];
  [a1 bounds];
  CGRectGetWidth(v6);
  [a1 contentOffset];
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_gradient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E36D5F0;
  sub_24DF88A8C(0, &qword_27F1E50D0);
  *(v4 + 32) = sub_24E3485F8();
  *(v4 + 40) = sub_24E3480E8();
  *(v4 + 48) = sub_24E3480E8();
  *(v4 + 56) = sub_24E3485F8();

  sub_24E317694(v4, v3);
}

uint64_t sub_24E15ED0C()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = *(*(v0 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs) + 16);
  if (!v3)
  {
    return sub_24E15DFC8(v2);
  }

  v4 = OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_separators;
  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    v6 = *(v1 + v4);
    if (v6 >> 62)
    {
      v7 = sub_24E348878();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5 >= v7)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      v14 = [objc_opt_self() separatorColor];
      [v13 setBackgroundColor_];

      v15 = v13;
      MEMORY[0x25303EA30]();
      OUTLINED_FUNCTION_2_73();
      if (v12)
      {
        OUTLINED_FUNCTION_0_117();
      }

      sub_24E347F88();

      goto LABEL_15;
    }

    result = swift_beginAccess();
    v9 = *(v1 + v4);
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25303F560](v5);
      goto LABEL_9;
    }

    if (v5 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v10 = *(v9 + 8 * v5 + 32);
LABEL_9:
    v11 = swift_endAccess();
    MEMORY[0x25303EA30](v11);
    OUTLINED_FUNCTION_2_73();
    if (v12)
    {
      OUTLINED_FUNCTION_0_117();
    }

    sub_24E347F88();
LABEL_15:
    if (v3 == ++v5)
    {
      v2 = v16;
      return sub_24E15DFC8(v2);
    }
  }

  __break(1u);
  return result;
}

void sub_24E15EEF0(void *a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_traitCollectionDidChange_, a1);
  v4 = [v2 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || v5 != [a1 layoutDirection])
  {
    sub_24E02909C();
    v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs];
    v7 = *(v6 + 16);

    v8 = 0;
    v9 = (v6 + 40);
    while (1)
    {
      if (v7 == v8)
      {

        return;
      }

      if (v8 >= *(v6 + 16))
      {
        break;
      }

      v10 = *(v9 - 1);
      v11 = *&v10[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView];
      if (!v11)
      {
        goto LABEL_11;
      }

      ++v8;
      v12 = *v9;
      v9 += 2;
      v13 = v10;
      v14 = v12;
      v15 = v11;
      sub_24E02909C();

      sub_24E02909C();
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }
}

id sub_24E15F11C()
{
  sub_24E15DE38(MEMORY[0x277D84F90]);
  sub_24E15ED0C();

  return [v0 setNeedsLayout];
}

void sub_24E15F15C()
{
  v1 = v0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5CD8);
  sub_24E347128();

  v2 = v18;
  v3 = *(v18 + 16);
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24E12F6C0(0, v3, 0);
    v4 = 0;
    v5 = v17;
    v6 = (v18 + 56);
    while (v4 < *(v2 + 16))
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v13 = *(v6 - 3);
      v14 = v7;
      v15 = v8;
      sub_24E15F2E8(&v13, &v16);
      v9 = v16;
      v17 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = v16;
        sub_24E12F6C0((v10 > 1), v11 + 1, 1);
        v9 = v12;
        v5 = v17;
      }

      ++v4;
      *(v5 + 16) = v11 + 1;
      *(v5 + 16 * v11 + 32) = v9;
      v6 += 4;
      if (v3 == v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
LABEL_9:
    sub_24E15DE38(v5);
    sub_24E15ED0C();
    [v1 setNeedsLayout];
  }
}

void sub_24E15F2E8(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v28 = a1[3];
  v29 = v8;
  if (qword_27F1DDF80 != -1)
  {
    swift_once();
  }

  v9 = sub_24E344158();
  v10 = __swift_project_value_buffer(v9, &unk_27F20BA80);
  v11 = *(*(v9 - 8) + 16);
  v11(v5, v10, v9);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  v12 = *MEMORY[0x277D74368];
  v13 = type metadata accessor for DynamicTypeLabel();
  v14 = objc_allocWithZone(v13);
  v15 = v12;
  v16 = sub_24E0AEF24(v5, v12, 1, 0, 1, 0);
  sub_24DFFA600(v7, v6, v16);
  if (qword_27F1DDF88 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, &unk_27F20BA98);
  v11(v5, v17, v9);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  v18 = objc_allocWithZone(v13);
  v19 = sub_24E0AEF24(v5, 0, 1, 0, 1, 0);
  sub_24DFFA600(v29, v28, v19);
  v20 = [objc_opt_self() secondaryLabelColor];
  [v19 setTextColor_];

  v21 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_24DF88A8C(0, &qword_27F1E9F20);
  v22 = sub_24E347F08();

  v23 = v16;
  LOBYTE(v21) = GKIsRemoteUI();
  v24 = objc_allocWithZone(type metadata accessor for VibrancyHostView());
  v25 = sub_24E300F20(v23, v22, v21 ^ 1u);

  v26 = v30;
  *v30 = v25;
  v26[1] = v19;
}

uint64_t sub_24E15F66C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12GameCenterUI24PlayerProfileInfoBarView_infoItemPairs) + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = ( + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(v2 - 1);
    v5 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5CF0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24E36A270;
    v7 = *&v4[OBJC_IVAR____TtC12GameCenterUI16VibrancyHostView_embeddedView];
    *(v6 + 32) = v7;
    *(v6 + 40) = v5;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5CF8);
    *&v15 = v6;
    v8 = v7;
    v9 = v5;
    v10 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E077F98();
      v3 = v12;
    }

    v11 = *(v3 + 16);
    if (v11 >= *(v3 + 24) >> 1)
    {
      sub_24E077F98();
      v3 = v13;
    }

    *(v3 + 16) = v11 + 1;
    sub_24E024710(&v15, (v3 + 32 * v11 + 32));
    v2 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

double sub_24E15F928(void *a1, void *a2, double a3)
{
  v6 = type metadata accessor for PlayerProfileInfoBarLayout(0);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a2 layoutMargins];
  sub_24E348538();
  v11 = v10;
  v13 = v12;
  sub_24E15E08C(v9);
  sub_24E15FB80(a1, v9, v11, v13);
  [a2 layoutMargins];
  sub_24E160AD0(v9, type metadata accessor for PlayerProfileInfoBarLayout);
  return a3;
}

double sub_24E15FA4C(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for PlayerProfileInfoBarLayout(0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 layoutMargins];
  sub_24E348538();
  sub_24E15E08C(v8);
  sub_24E30B6B8();
  [a3 layoutMargins];
  sub_24E160AD0(v8, type metadata accessor for PlayerProfileInfoBarLayout);
  return a1;
}

uint64_t sub_24E15FB80(void *a1, void *a2, double a3, double a4)
{
  v51 = a4;
  v50 = a3;
  v6 = sub_24E348BC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24E15FFDC(a1, a2);
  v11 = result;
  v12 = 0;
  v13 = *(result + 16);
  v48 = result + 32;
  v14 = (v7 + 8);
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v49 = v13;
  while (1)
  {
    if (v12 == v13)
    {
      v19 = 0;
      v20 = 0uLL;
      v21 = v13;
      v22 = 0uLL;
      v23 = 0uLL;
      goto LABEL_6;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    v21 = v12 + 1;
    *&v58 = v12;
    sub_24E1608A0(v48 + 48 * v12, &v58 + 8);
    v20 = v58;
    v22 = v59;
    v23 = v60;
    v19 = v61;
LABEL_6:
    v62[0] = v20;
    v62[1] = v22;
    v62[2] = v23;
    v63 = v19;
    if (!v23)
    {
    }

    v52 = v20;
    v53 = v21;
    v54 = v15;
    sub_24DFFE564((v62 + 8), &v58);
    __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
    sub_24E3440D8();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
    sub_24E160904(a2 + *(v32 + 36), v55);
    v33 = v56;
    if (v56)
    {
      v34 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      sub_24E2548A0(v33, v34);
      sub_24E344198();
      v36 = v35;
      (*v14)(v9, v6);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v37 = [a1 traitCollection];
      v38 = sub_24E3483C8();

      if (v36 >= v25)
      {
        v39 = v25;
      }

      else
      {
        v39 = v36;
      }

      if ((v38 & 1) == 0)
      {
        v25 = v39;
      }
    }

    else
    {
      sub_24DF8A960(v55);
    }

    sub_24E160904(a2 + *(v32 + 40), v55);
    v40 = v56;
    if (v56)
    {
      v41 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      sub_24E2548A0(v40, v41);
      sub_24E344198();
      v43 = v42;
      (*v14)(v9, v6);
      __swift_destroy_boxed_opaque_existential_1(v55);
      if (v25 <= v43)
      {
        v25 = v43;
      }
    }

    else
    {
      sub_24DF8A960(v55);
    }

    v18 = v18 + v25;
    if (v52 != *(v11 + 16) - 1)
    {
      v44 = a2[13];
      v45 = a2[14];
      __swift_project_boxed_opaque_existential_1(a2 + 10, v44);
      sub_24E2548A0(v44, v45);
      sub_24E344198();
      v47 = v46;
      (*v14)(v9, v6);
      v18 = v18 + v47;
    }

    v13 = v49;
    if (v17 <= v27)
    {
      v17 = v27;
    }

    if (v16 <= v29)
    {
      v16 = v29;
    }

    v15 = v54;
    if (v54 <= v31)
    {
      v15 = v31;
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v58);
    v12 = v53;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E15FFDC(void *a1, uint64_t a2)
{
  v59 = sub_24E344648();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24E3445E8();
  v5 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v57 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24E3446A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v80 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = v50 - v12;
  v14 = [a1 traitCollection];
  LOBYTE(a1) = sub_24E3483B8();

  v15 = *(type metadata accessor for PlayerProfileInfoBarLayout(0) + 20);
  v82 = a2;
  v16 = *(a2 + v15);

  if (a1)
  {
    v16 = sub_24E30B12C(v16);
  }

  v17 = *(v16 + 16);
  if (v17)
  {
    v79 = v82 + *(type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0) + 32);
    v50[1] = v16;
    v18 = v16 + 32;
    v78 = (v5 + 104);
    v77 = *MEMORY[0x277D227C8];
    v76 = v60 + 8;
    v54 = (v5 + 8);
    v19 = (v8 + 16);
    v52 = (v8 + 8);
    v20 = MEMORY[0x277D84F90];
    v51 = xmmword_24E36A270;
    v75 = xmmword_24E367D20;
    v56 = v7;
    v55 = v13;
    v53 = v19;
    do
    {
      v72 = v20;
      v74 = v17;
      v73 = v18;
      sub_24E160974(v18, v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
      v21 = *(sub_24E344688() - 8);
      v70 = *(v21 + 72);
      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v23 = swift_allocObject();
      v71 = v23;
      *(v23 + 16) = v51;
      v62 = v23 + v22;
      v85 = 0;
      v84 = 0u;
      v83 = 0u;
      v69 = *v78;
      v24 = v57;
      v25 = v81;
      v69(v57, v77, v81);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
      v26 = v60;
      v67 = *(v60 + 72);
      v27 = swift_allocObject();
      *(v27 + 16) = v75;
      sub_24E344618();
      *&v88[0] = v27;
      v65 = sub_24E1609D0(&qword_27F1E5D20, MEMORY[0x277D227D8]);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
      v66 = sub_24DF8A8FC();
      v28 = v58;
      v29 = v59;
      sub_24E3487E8();
      sub_24E344678();
      v63 = *(v26 + 8);
      v63(v28, v29);
      v61 = *v54;
      v61(v24, v25);
      sub_24DF8A960(&v83);
      v31 = v92;
      v30 = v93;
      v32 = __swift_project_boxed_opaque_existential_1(&v91, v92);
      *(&v84 + 1) = v31;
      v85 = *(v30 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v83);
      v34 = v80;
      (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v32, v31);
      sub_24E160A18(v90);
      v89 = 0;
      memset(v88, 0, sizeof(v88));
      v35 = v81;
      v69(v24, v77, v81);
      v36 = swift_allocObject();
      *(v36 + 16) = v75;
      sub_24E344618();
      v87 = v36;
      sub_24E3487E8();
      v37 = v55;
      sub_24E344678();
      v38 = v28;
      v39 = v56;
      v63(v38, v29);
      v40 = v24;
      v20 = v72;
      v61(v40, v35);
      v41 = v53;
      sub_24DF8A960(v88);
      __swift_destroy_boxed_opaque_existential_1(&v83);
      sub_24E344668();
      v42 = *v41;
      (*v41)(v34, v37, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076B00();
        v20 = v47;
      }

      v43 = *(v20 + 16);
      if (v43 >= *(v20 + 24) >> 1)
      {
        sub_24E076B00();
        v20 = v48;
      }

      v44 = *v52;
      (*v52)(v37, v39);
      *(&v84 + 1) = v39;
      v85 = MEMORY[0x277D22808];
      v86 = MEMORY[0x277D22810];
      v45 = __swift_allocate_boxed_opaque_existential_1(&v83);
      v46 = v80;
      v42(v45, v80, v39);
      *(v20 + 16) = v43 + 1;
      sub_24DFFE564(&v83, (v20 + 48 * v43 + 32));
      v44(v46, v39);
      v18 = v73 + 80;
      v17 = v74 - 1;
    }

    while (v74 != 1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v20;
}

uint64_t sub_24E1608A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24E160904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1609D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E160A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerProfileInfoBarLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E160AD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_117()
{

  return sub_24E347F48();
}

id OUTLINED_FUNCTION_1_92()
{

  return [v0 (v1 + 3832)];
}

uint64_t sub_24E160B80(char a1)
{
  result = 0x6979616C50776F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6D65766569686361;
      break;
    case 2:
      result = 0x6F6272656461656CLL;
      break;
    case 3:
      result = 0x656461637261;
      break;
    case 4:
      result = 0x676E656C6C616863;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E160C2C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 17) = a2;
  return v4;
}

uint64_t *sub_24E160C40(uint64_t a1, void *a2)
{
  v3 = v2;
  v159 = a2;
  sub_24E3433A8();
  OUTLINED_FUNCTION_2_7();
  v153 = v6;
  v154 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_38();
  v150 = v7;
  MEMORY[0x28223BE20](v8);
  v151 = &v136 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  v152 = &v136 - v12;
  OUTLINED_FUNCTION_18_1();
  v13 = type metadata accessor for JetDashboardSectionData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  v18 = sub_24E347478();
  v19 = OUTLINED_FUNCTION_4_5(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v147 = v21 - v20;
  OUTLINED_FUNCTION_18_1();
  sub_24E3474B8();
  OUTLINED_FUNCTION_2_7();
  v157 = v23;
  v158 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_1();
  v161 = v25 - v24;
  OUTLINED_FUNCTION_18_1();
  v26 = sub_24E347458();
  v27 = OUTLINED_FUNCTION_4_5(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_1();
  v146 = v29 - v28;
  OUTLINED_FUNCTION_18_1();
  v30 = sub_24E347088();
  OUTLINED_FUNCTION_2_7();
  v145 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_1();
  v35 = v34 - v33;
  sub_24E347208();
  OUTLINED_FUNCTION_2_7();
  v155 = v37;
  v156 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_1();
  v160 = v39 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  v41 = OUTLINED_FUNCTION_4_5(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_38();
  *&v148 = v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v136 - v44;
  v149 = a1;
  sub_24DF95B98(a1, &v136 - v44, &qword_27F1DF018);
  v46 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
  {
    sub_24DF8BFF4(v45, &qword_27F1DF018);
    return 0;
  }

  memcpy(v165, v45 + 16, 0x199uLL);
  sub_24DF95B98(v165, v164, &qword_27F1DF030);
  OUTLINED_FUNCTION_5_66();
  sub_24E1644CC(v45, v47);
  memcpy(v166, v165, 0x199uLL);
  if (sub_24DF8BF80(v166) == 1)
  {
    return 0;
  }

  v142 = v46;
  v143 = v13;
  v144 = v17;
  sub_24DF95978();
  v48 = [v166[1] playerID];
  sub_24E347CF8();

  v49 = sub_24E1C6A3C();
  v50 = [objc_opt_self() gameRecordForPlayer:v49 game:*(v3 + 24)];

  if ([v50 supportsAchievements])
  {
    OUTLINED_FUNCTION_18_27();
    v51 = OUTLINED_FUNCTION_20_22();
    sub_24E161C1C(v51, v52, 0, v53);
    sub_24E076EE4();
    v55 = OUTLINED_FUNCTION_13_35(v54);
    if (*(v55 + 16) >= *(v55 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_39();
      OUTLINED_FUNCTION_13_35(v129);
    }

    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_2_7();
    MEMORY[0x28223BE20](v56);
    OUTLINED_FUNCTION_7_1();
    v58 = OUTLINED_FUNCTION_4_63(v57);
    v59(v58);
    OUTLINED_FUNCTION_9_40();
    __swift_destroy_boxed_opaque_existential_1(v162);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  if ([v50 supportsLeaderboards])
  {
    OUTLINED_FUNCTION_18_27();
    v60 = OUTLINED_FUNCTION_20_22();
    sub_24E162760(v60, v61, v62, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_8_49();
      OUTLINED_FUNCTION_13_35(v130);
    }

    if (v49[2] >= v49[3] >> 1)
    {
      OUTLINED_FUNCTION_10_39();
      OUTLINED_FUNCTION_13_35(v131);
    }

    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_2_7();
    MEMORY[0x28223BE20](v65);
    OUTLINED_FUNCTION_7_1();
    v67 = OUTLINED_FUNCTION_4_63(v66);
    v68(v67);
    OUTLINED_FUNCTION_9_40();
    __swift_destroy_boxed_opaque_existential_1(v162);
  }

  if (LOBYTE(v166[51]) == 1)
  {
    OUTLINED_FUNCTION_18_27();
    sub_24E1630D4(v164, v50, v49[2], v162);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v163 = v49;
    if ((v69 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_49();
      OUTLINED_FUNCTION_13_35(v132);
    }

    if (v49[2] >= v49[3] >> 1)
    {
      OUTLINED_FUNCTION_10_39();
      OUTLINED_FUNCTION_13_35(v133);
    }

    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_2_7();
    MEMORY[0x28223BE20](v70);
    OUTLINED_FUNCTION_7_1();
    v72 = OUTLINED_FUNCTION_4_63(v71);
    v73(v72);
    OUTLINED_FUNCTION_9_40();
    __swift_destroy_boxed_opaque_existential_1(v162);
  }

  if ([v50 isArcadeGame])
  {
    v159 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
    v74 = swift_allocObject();
    v141 = xmmword_24E367D20;
    *(v74 + 16) = xmmword_24E367D20;
    v75 = MEMORY[0x277D837D0];
    *(v74 + 32) = 0x79546E6F69746361;
    *(v74 + 40) = 0xEA00000000006570;
    *(v74 + 72) = v75;
    *(v74 + 48) = 0x657461676976616ELL;
    *(v74 + 56) = 0xE800000000000000;
    v76 = sub_24E347C28();
    if (qword_27F1DD808 != -1)
    {
      swift_once();
    }

    v77 = sub_24E347058();
    v78 = __swift_project_value_buffer(v77, qword_27F20AE00);
    MEMORY[0x25303DB90](0x656461637261, 0xE600000000000000, 0x74656C63696863, 0xE700000000000000, v76, v78);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
    v79 = v145;
    v80 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = v141;
    (*(v79 + 16))(v81 + v80, v35, v30);
    sub_24E347448();
    sub_24E3471D8();
    (*(v79 + 8))(v35, v30);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_24E36A270;
    v83 = OUTLINED_FUNCTION_16_26(v82);
    v83[6] = 0x74656C63696863;
    v83[7] = 0xE700000000000000;
    v83[9] = v75;
    v83[10] = 0x6973736572706D69;
    v83[11] = 0xEF7865646E496E6FLL;
    v84 = v49[2];
    v83[15] = MEMORY[0x277D83B88];
    v83[12] = v84;
    sub_24E347C28();

    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_24E369E30;
    v86 = OUTLINED_FUNCTION_16_26(v85);
    v86[6] = 0x74656C63696863;
    v86[7] = 0xE700000000000000;
    v86[9] = v75;
    v86[10] = 0x6973736572706D69;
    v86[11] = 0xEF7865646E496E6FLL;
    v86[12] = v84;
    v86[15] = MEMORY[0x277D83B88];
    v86[16] = 0x657079546469;
    v86[17] = 0xE600000000000000;
    v86[18] = 0x636974617473;
    v86[19] = 0xE600000000000000;
    v86[21] = v75;
    v86[22] = 1701667182;
    v86[27] = v75;
    v86[23] = 0xE400000000000000;
    v86[24] = 0x656461637241;
    v86[25] = 0xE600000000000000;
    sub_24E347C28();
    sub_24E347468();
    sub_24E347448();
    v87 = MEMORY[0x277D84F90];
    sub_24E0241AC(MEMORY[0x277D84F90]);
    sub_24E0241AC(v87);
    sub_24E347488();
    v88 = sub_24E347CB8();
    v89 = GKGameCenterUIFrameworkBundle();
    v90 = GKGetLocalizedStringFromTableInBundle();

    v91 = sub_24E347CF8();
    v146 = v92;
    v147 = v91;

    v93 = sub_24E347CB8();
    v94 = GKGameCenterUIFrameworkBundle();
    v95 = GKGetLocalizedStringFromTableInBundle();

    v145 = sub_24E347CF8();
    *&v141 = v96;

    v97 = v148;
    sub_24DF95B98(v149, v148, &qword_27F1DF018);
    v98 = v142;
    if (__swift_getEnumTagSinglePayload(v97, 1, v142) == 1)
    {
      v99 = v159;
      sub_24DF8BFF4(v97, &qword_27F1DF018);
      v149 = 0;
      v142 = 0;
      v148 = 0u;
      v139 = 0u;
      v140 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
    }

    else
    {
      v99 = v159;
      memcpy(v164, (v97 + *(v98 + 72)), 0x70uLL);
      sub_24DF95B98(v164, v162, &qword_27F1DF038);
      OUTLINED_FUNCTION_5_66();
      sub_24E1644CC(v97, v100);
      v148 = v164[0];
      v139 = v164[2];
      v140 = v164[1];
      v136 = v164[3];
      v137 = v164[5];
      v138 = v164[4];
      v142 = *(&v164[6] + 1);
      v149 = *&v164[6];
    }

    v101 = v158;
    v102 = v152;
    (*(v157 + 16))(v152, v161, v158);
    OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v101);
    v106 = type metadata accessor for ArcadePageAction();
    *(&v164[1] + 1) = v106;
    *&v164[2] = sub_24E164524(&qword_27F1E3AB0, type metadata accessor for ArcadePageAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v164);
    (*(v155 + 16))(boxed_opaque_existential_1 + *(v106 + 20), v160, v156);
    *boxed_opaque_existential_1 = v99;
    v108 = v99;
    v109 = v151;
    sub_24E343398();
    v111 = v153;
    v110 = v154;
    (*(v153 + 16))(v150, v109, v154);
    sub_24E164524(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
    v112 = v144;
    sub_24E348918();
    (*(v111 + 8))(v109, v110);
    *(v112 + 104) = 0;
    *(v112 + 88) = 0u;
    *(v112 + 72) = 0u;
    v113 = v143;
    v114 = *(v143 + 40);
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v101);
    v118 = v146;
    *(v112 + 40) = v147;
    *(v112 + 48) = v118;
    v119 = v141;
    *(v112 + 56) = v145;
    *(v112 + 64) = v119;
    *(v112 + 112) = 2;
    *(v112 + 120) = 0;
    sub_24DF95BE4(v164, v112 + 72, &qword_27F1DEE90);
    sub_24DF95BE4(v102, v112 + v114, &qword_27F1E58A0);
    v120 = v112 + *(v113 + 44);
    v121 = v140;
    *v120 = v148;
    *(v120 + 16) = v121;
    v122 = v136;
    *(v120 + 32) = v139;
    *(v120 + 48) = v122;
    v123 = v137;
    *(v120 + 64) = v138;
    *(v120 + 80) = v123;
    v124 = v142;
    *(v120 + 96) = v149;
    *(v120 + 104) = v124;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_49();
      v49 = v134;
    }

    v125 = v49[2];
    if (v125 >= v49[3] >> 1)
    {
      sub_24E076EE4();
      v49 = v135;
    }

    sub_24DF8BFF4(v165, &qword_27F1DF030);

    (*(v157 + 8))(v161, v158);
    (*(v155 + 8))(v160, v156);
    *(&v164[1] + 1) = v143;
    *&v164[2] = sub_24E164524(&qword_27F1E0C48, type metadata accessor for JetDashboardSectionData);
    v126 = __swift_allocate_boxed_opaque_existential_1(v164);
    v127 = v144;
    sub_24E164470(v144, v126, type metadata accessor for JetDashboardSectionData);
    v49[2] = v125 + 1;
    sub_24DE56CE8(v164, &v49[5 * v125 + 4]);
    sub_24E1644CC(v127, type metadata accessor for JetDashboardSectionData);
  }

  else
  {

    sub_24DF8BFF4(v165, &qword_27F1DF030);
  }

  if (!v49[2])
  {

    return 0;
  }

  return v49;
}

uint64_t sub_24E161C1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v86 = a3;
  v88 = a2;
  v92 = a4;
  v5 = sub_24E3433A8();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x28223BE20](v5);
  v91 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v79 - v10;
  v11 = sub_24E347478();
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_24E3474B8();
  v89 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v97 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24E347458();
  MEMORY[0x28223BE20](v14 - 8);
  v84 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24E347088();
  v16 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_24E347208();
  v87 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v99 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(a1 + 24);
  LODWORD(v82) = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  memcpy(__dst, (a1 + 56), 0x70uLL);
  v21 = sub_24E347CB8();
  v22 = GKGameCenterUIFrameworkBundle();
  v23 = GKGetLocalizedStringFromTableInBundle();

  *&v79 = sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24E36A270;
  if (v20)
  {
    v25 = 0;
  }

  else
  {
    v25 = v19;
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v27 = objc_opt_self();
  v28 = [v27 localizedStringFromNumber:v26 numberStyle:1];
  v29 = sub_24E347CF8();
  v31 = v30;

  v32 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v33 = sub_24DF95A7C();
  *(v24 + 64) = v33;
  *(v24 + 32) = v29;
  *(v24 + 40) = v31;
  if (v82)
  {
    v34 = 0;
  }

  else
  {
    v34 = v83;
  }

  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v36 = [v27 localizedStringFromNumber:v35 numberStyle:1];
  v37 = sub_24E347CF8();
  v39 = v38;

  *(v24 + 96) = v32;
  *(v24 + 104) = v33;
  *(v24 + 72) = v37;
  *(v24 + 80) = v39;
  v40 = sub_24E347D18();
  v82 = v41;
  v83 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v79 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v32;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  v43 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v44 = sub_24E347058();
  v45 = __swift_project_value_buffer(v44, qword_27F20AE00);
  v46 = v80;
  MEMORY[0x25303DB90](0x6D65766569686361, 0xEC00000073746E65, 0x74656C63696863, 0xE700000000000000, v43, v45);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v47 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v79;
  v49 = v81;
  (*(v16 + 16))(v48 + v47, v46, v81);
  sub_24E347448();
  sub_24E3471D8();
  (*(v16 + 8))(v46, v49);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_24E369E30;
  strcpy((v50 + 32), "impressionType");
  *(v50 + 47) = -18;
  *(v50 + 48) = 0x74656C63696863;
  *(v50 + 56) = 0xE700000000000000;
  *(v50 + 72) = v32;
  *(v50 + 80) = 0x6973736572706D69;
  v51 = MEMORY[0x277D83B88];
  v52 = v86;
  *(v50 + 88) = 0xEF7865646E496E6FLL;
  *(v50 + 96) = v52;
  *(v50 + 120) = v51;
  *(v50 + 128) = 0x657079546469;
  *(v50 + 136) = 0xE600000000000000;
  *(v50 + 144) = 0x636974617473;
  *(v50 + 152) = 0xE600000000000000;
  *(v50 + 168) = v32;
  *(v50 + 176) = 1701667182;
  *(v50 + 216) = v32;
  *(v50 + 184) = 0xE400000000000000;
  strcpy((v50 + 192), "Achievements");
  *(v50 + 205) = 0;
  *(v50 + 206) = -5120;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v53 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v53);
  v54 = v97;
  sub_24E347488();
  v55 = sub_24E347CB8();
  v56 = GKGameCenterUIFrameworkBundle();
  v57 = GKGetLocalizedStringFromTableInBundle();

  v58 = sub_24E347CF8();
  v85 = v59;
  v86 = v58;

  v60 = v89;
  v61 = v98;
  v62 = v93;
  (*(v89 + 16))(v98, v54, v93);
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
  v63 = type metadata accessor for GameAchievementsAction();
  v101[3] = v63;
  v101[4] = sub_24E164524(&qword_27F1E2698, type metadata accessor for GameAchievementsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
  v65 = v87;
  (*(v87 + 16))(boxed_opaque_existential_1 + *(v63 + 24), v99, v96);
  v66 = v88;
  *boxed_opaque_existential_1 = v88;
  boxed_opaque_existential_1[1] = v53;
  v67 = (boxed_opaque_existential_1 + *(v63 + 28));
  *v67 = 0x72616F6268736164;
  v67[1] = 0xE900000000000064;
  sub_24DF95B98(__dst, &v100, &qword_27F1DF038);
  v68 = v66;
  v69 = v90;
  sub_24E343398();
  v71 = v94;
  v70 = v95;
  (*(v94 + 16))(v91, v69, v95);
  v72 = type metadata accessor for JetDashboardSectionData();
  v73 = v92;
  v92[3] = v72;
  v73[4] = sub_24E164524(&qword_27F1E0C48, type metadata accessor for JetDashboardSectionData);
  v74 = __swift_allocate_boxed_opaque_existential_1(v73);
  sub_24E164524(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v71 + 8))(v69, v70);
  v74[13] = 0;
  *(v74 + 11) = 0u;
  *(v74 + 9) = 0u;
  v75 = *(v72 + 40);
  __swift_storeEnumTagSinglePayload(v74 + v75, 1, 1, v62);
  v76 = v85;
  v74[5] = v86;
  v74[6] = v76;
  v77 = v82;
  v74[7] = v83;
  v74[8] = v77;
  *(v74 + 112) = 0;
  v74[15] = 0;
  sub_24DF95BE4(v101, (v74 + 9), &qword_27F1DEE90);
  sub_24DF95BE4(v98, v74 + v75, &qword_27F1E58A0);
  memcpy(v74 + *(v72 + 44), __dst, 0x70uLL);
  (*(v60 + 8))(v97, v62);
  return (*(v65 + 8))(v99, v96);
}

uint64_t sub_24E162760@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v58 = a3;
  v62 = a2;
  v66 = a4;
  v5 = sub_24E3433A8();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v56 - v10;
  v11 = sub_24E347478();
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24E3474B8();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v71 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24E347458();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_24E347088();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_24E347208();
  v61 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v73 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1 + 21, 0x70uLL);
  v20 = a1[50];
  v59 = a1[49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v56 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v22 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v22;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  sub_24DF95B98(__dst, v74, &qword_27F1DF038);
  v60 = v20;

  v23 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v24 = sub_24E347058();
  v25 = __swift_project_value_buffer(v24, qword_27F20AE00);
  MEMORY[0x25303DB90](0x6F6272656461656CLL, 0xEC00000073647261, 0x74656C63696863, 0xE700000000000000, v23, v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v26 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v56;
  (*(v16 + 16))(v27 + v26, v18, v15);
  sub_24E347448();
  sub_24E3471D8();
  (*(v16 + 8))(v18, v15);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_24E369E30;
  strcpy((v28 + 32), "impressionType");
  *(v28 + 47) = -18;
  *(v28 + 48) = 0x74656C63696863;
  *(v28 + 56) = 0xE700000000000000;
  *(v28 + 72) = v22;
  *(v28 + 80) = 0x6973736572706D69;
  v29 = MEMORY[0x277D83B88];
  v30 = v58;
  *(v28 + 88) = 0xEF7865646E496E6FLL;
  *(v28 + 96) = v30;
  *(v28 + 120) = v29;
  *(v28 + 128) = 0x657079546469;
  *(v28 + 136) = 0xE600000000000000;
  *(v28 + 144) = 0x636974617473;
  *(v28 + 152) = 0xE600000000000000;
  *(v28 + 168) = v22;
  *(v28 + 176) = 1701667182;
  *(v28 + 216) = v22;
  *(v28 + 184) = 0xE400000000000000;
  strcpy((v28 + 192), "Leaderboards");
  *(v28 + 205) = 0;
  *(v28 + 206) = -5120;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v31 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v31);
  v32 = v71;
  sub_24E347488();
  v33 = sub_24E347CB8();
  v34 = GKGameCenterUIFrameworkBundle();
  v35 = GKGetLocalizedStringFromTableInBundle();

  v36 = sub_24E347CF8();
  v57 = v37;
  v58 = v36;

  v38 = v63;
  v39 = v72;
  v40 = v67;
  (*(v63 + 16))(v72, v32, v67);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
  v41 = type metadata accessor for DashboardLeaderboardsChicletAction();
  v74[3] = v41;
  v74[4] = sub_24E164524(&qword_27F1E5D40, type metadata accessor for DashboardLeaderboardsChicletAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  v43 = v61;
  (*(v61 + 16))(boxed_opaque_existential_1 + *(v41 + 24), v73, v70);
  v44 = v62;
  *boxed_opaque_existential_1 = v62;
  boxed_opaque_existential_1[1] = 0;
  v45 = v44;
  v46 = v64;
  sub_24E343398();
  v48 = v68;
  v47 = v69;
  (*(v68 + 16))(v65, v46, v69);
  v49 = type metadata accessor for JetDashboardSectionData();
  v50 = v66;
  v66[3] = v49;
  v50[4] = sub_24E164524(&qword_27F1E0C48, type metadata accessor for JetDashboardSectionData);
  v51 = __swift_allocate_boxed_opaque_existential_1(v50);
  sub_24E164524(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v48 + 8))(v46, v47);
  v51[13] = 0;
  *(v51 + 11) = 0u;
  *(v51 + 9) = 0u;
  v52 = *(v49 + 40);
  __swift_storeEnumTagSinglePayload(v51 + v52, 1, 1, v40);
  v53 = v57;
  v51[5] = v58;
  v51[6] = v53;
  v54 = v60;
  v51[7] = v59;
  v51[8] = v54;
  *(v51 + 112) = 1;
  v51[15] = 0;
  sub_24DF95BE4(v74, (v51 + 9), &qword_27F1DEE90);
  sub_24DF95BE4(v72, v51 + v52, &qword_27F1E58A0);
  memcpy(v51 + *(v49 + 44), __dst, 0x70uLL);
  (*(v38 + 8))(v71, v40);
  return (*(v43 + 8))(v73, v70);
}

uint64_t sub_24E1630D4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v64 = a3;
  v66 = a2;
  v70 = a4;
  v5 = sub_24E3433A8();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &v62 - v10;
  v11 = sub_24E347478();
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24E3474B8();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v77 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24E347458();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_24E347088();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24E347208();
  v65 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, (a1 + 280), 0x70uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v74 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v21 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v21;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  sub_24DF95B98(__dst, v79, &qword_27F1DF038);
  v22 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v23 = sub_24E347058();
  v24 = __swift_project_value_buffer(v23, qword_27F20AE00);
  MEMORY[0x25303DB90](0x676E656C6C616863, 0xEA00000000007365, 0x74656C63696863, 0xE700000000000000, v22, v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v74;
  (*(v16 + 16))(v26 + v25, v18, v15);
  sub_24E347448();
  v27 = v75;
  sub_24E3471D8();
  (*(v16 + 8))(v18, v15);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_24E369E30;
  strcpy((v28 + 32), "impressionType");
  *(v28 + 47) = -18;
  *(v28 + 48) = 0x74656C63696863;
  *(v28 + 56) = 0xE700000000000000;
  *(v28 + 72) = v21;
  *(v28 + 80) = 0x6973736572706D69;
  v29 = MEMORY[0x277D83B88];
  v30 = v64;
  *(v28 + 88) = 0xEF7865646E496E6FLL;
  *(v28 + 96) = v30;
  *(v28 + 120) = v29;
  *(v28 + 128) = 0x657079546469;
  *(v28 + 136) = 0xE600000000000000;
  *(v28 + 144) = 0x636974617473;
  *(v28 + 152) = 0xE600000000000000;
  *(v28 + 168) = v21;
  *(v28 + 176) = 1701667182;
  *(v28 + 216) = v21;
  *(v28 + 184) = 0xE400000000000000;
  *(v28 + 192) = 0x676E656C6C616843;
  *(v28 + 200) = 0xEA00000000007365;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v31 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v31);
  v32 = v77;
  sub_24E347488();
  v33 = sub_24E347CB8();
  v34 = GKGameCenterUIFrameworkBundle();
  v35 = GKGetLocalizedStringFromTableInBundle();

  v36 = sub_24E347CF8();
  v63 = v37;
  v64 = v36;

  v38 = sub_24E347CB8();
  v39 = GKGameCenterUIFrameworkBundle();
  v40 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
  v41 = swift_allocObject();
  *(v41 + 16) = v74;
  v42 = MEMORY[0x277D83C10];
  *(v41 + 56) = v29;
  *(v41 + 64) = v42;
  *(v41 + 32) = 0;
  *&v74 = sub_24E347D18();
  v62 = v43;

  v44 = v69;
  v45 = v78;
  v46 = v71;
  (*(v69 + 16))(v78, v32, v71);
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
  v47 = type metadata accessor for ChallengeListAction();
  v79[3] = v47;
  v79[4] = sub_24E164524(&qword_27F1E59E0, type metadata accessor for ChallengeListAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
  v49 = v65;
  (*(v65 + 16))(boxed_opaque_existential_1 + *(v47 + 20), v27, v76);
  v50 = v66;
  *boxed_opaque_existential_1 = v66;
  v51 = v50;
  v52 = v67;
  sub_24E343398();
  v54 = v72;
  v53 = v73;
  (*(v72 + 16))(v68, v52, v73);
  v55 = type metadata accessor for JetDashboardSectionData();
  v56 = v70;
  v70[3] = v55;
  v56[4] = sub_24E164524(&qword_27F1E0C48, type metadata accessor for JetDashboardSectionData);
  v57 = __swift_allocate_boxed_opaque_existential_1(v56);
  sub_24E164524(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v54 + 8))(v52, v53);
  v57[13] = 0;
  *(v57 + 11) = 0u;
  *(v57 + 9) = 0u;
  v58 = *(v55 + 40);
  __swift_storeEnumTagSinglePayload(v57 + v58, 1, 1, v46);
  v59 = v63;
  v57[5] = v64;
  v57[6] = v59;
  v60 = v62;
  v57[7] = v74;
  v57[8] = v60;
  *(v57 + 112) = 3;
  v57[15] = 0;
  sub_24DF95BE4(v79, (v57 + 9), &qword_27F1DEE90);
  sub_24DF95BE4(v78, v57 + v58, &qword_27F1E58A0);
  memcpy(v57 + *(v55 + 44), __dst, 0x70uLL);
  (*(v44 + 8))(v77, v46);
  return (*(v49 + 8))(v75, v76);
}

uint64_t sub_24E163AF4()
{
  v1 = sub_24E347458();
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v3 = sub_24E347478();
  v4 = OUTLINED_FUNCTION_4_5(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v5 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v7 = OUTLINED_FUNCTION_3_41(inited, xmmword_24E369E30);
  v8 = OUTLINED_FUNCTION_15_25(v7);
  v11 = OUTLINED_FUNCTION_14_26(v8, v9, v10);
  v11[11] = v12;
  v11[12] = v5;
  OUTLINED_FUNCTION_3_75(v11, v13);
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v14 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v14);
  sub_24E347488();
  sub_24E3474B8();
  OUTLINED_FUNCTION_22_1();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_24E163C90@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v101 = v5 - v4;
  OUTLINED_FUNCTION_18_1();
  v6 = sub_24E347478();
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v100 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  v102 = &v93 - v12;
  OUTLINED_FUNCTION_18_1();
  v98 = sub_24E3433A8();
  OUTLINED_FUNCTION_2_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050);
  v20 = OUTLINED_FUNCTION_4_5(v19);
  MEMORY[0x28223BE20](v20);
  v104 = &v93 - v21;
  v22 = OUTLINED_FUNCTION_18_1();
  v23 = type metadata accessor for TitleHeaderView.Style(v22);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_1();
  v27 = v26 - v25;
  v28 = type metadata accessor for HeaderData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_1();
  v32 = v31 - v30;
  v99 = *(v1 + 24);
  v33 = [v99 name];
  v34 = sub_24E347CF8();
  v95 = v35;
  v96 = v34;

  sub_24E098FB8();
  sub_24E099550();
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for PlayerCardTheme();
  v41 = *(__swift_project_value_buffer(v40, qword_27F20BF00) + *(v40 + 40));
  v42 = v23[8];
  *(v27 + v23[6]) = 0;
  *(v27 + v23[7]) = 1;
  *(v27 + v42) = 0;
  *(v27 + v23[9]) = 1;
  *(v27 + v23[11]) = 0;
  *(v27 + v23[13]) = v41;
  *(v27 + v23[10]) = 0;
  *(v27 + v23[12]) = 0;
  memset(v111, 0, sizeof(v111));
  v112 = -1;
  memset(v109, 0, sizeof(v109));
  v110 = -1;
  sub_24E3444F8();
  memset(v107, 0, sizeof(v107));
  v108 = 0;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v47 = v41;
  sub_24E343398();
  v48 = sub_24E343378();
  v93 = v49;
  v94 = v48;
  (*(v14 + 8))(v18, v98);
  v50 = v32 + v28[7];
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  *(v50 + 64) = -1;
  v51 = v32 + v28[9];
  *(v51 + 32) = 0u;
  *(v51 + 48) = 0u;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 64) = -1;
  v52 = (v32 + v28[10]);
  v53 = v32 + v28[11];
  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v54 = v28[12];
  v55 = v32 + v28[13];
  *(v55 + 32) = 0;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  v98 = v28[14];
  v97 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v105 = v94;
  v106 = v93;
  sub_24E348918();
  sub_24E164470(v27, v32 + v28[5], type metadata accessor for TitleHeaderView.Style);
  v60 = (v32 + v28[6]);
  *v60 = 0;
  v60[1] = 0xE000000000000000;
  sub_24DF95B4C(v111, v50, &qword_27F1DEE88);
  v61 = (v32 + v28[8]);
  v62 = v95;
  *v61 = v96;
  v61[1] = v62;
  sub_24DF95B4C(v109, v51, &qword_27F1DEE88);
  v96 = v54;
  *(v32 + v54) = 0;
  *v52 = 0;
  v52[1] = 0;
  sub_24DF95B4C(v107, v53, &qword_27F1DEE90);
  v63 = v104;
  sub_24DF95B98(v104, v32 + v28[17], &qword_27F1DF050);
  v64 = v32 + v28[16];
  *v64 = 0;
  *(v64 + 8) = 0;
  *(v32 + v28[15]) = xmmword_24E3699A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v66 = OUTLINED_FUNCTION_3_41(inited, xmmword_24E369E30);
  v67 = OUTLINED_FUNCTION_15_25(v66);
  v69 = OUTLINED_FUNCTION_14_26(v67, MEMORY[0x277D837D0], v68);
  v69[11] = v70;
  v69[12] = 0;
  OUTLINED_FUNCTION_3_75(v69, v71);
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v72 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v72);
  v73 = v102;
  sub_24E347488();
  sub_24DF8BFF4(v63, &qword_27F1DF050);
  sub_24DF8BFF4(v107, &qword_27F1DEE90);
  sub_24DF8BFF4(v109, &qword_27F1DEE88);
  sub_24DF8BFF4(v111, &qword_27F1DEE88);
  sub_24E1644CC(v27, type metadata accessor for TitleHeaderView.Style);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v97);
  sub_24DF95BE4(v73, v32 + v98, &qword_27F1E58A0);
  v77 = sub_24E22A3C4();
  if (v77)
  {
    *(v32 + v96) = v77;
  }

  v78 = v103;
  sub_24E164470(v32, v103, type metadata accessor for HeaderData);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v28);
  v82 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  v87 = v78 + v82[11];
  *v87 = 0u;
  *(v87 + 16) = 0u;
  *(v87 + 32) = 1;
  v88 = v78 + v82[12];
  *v88 = 0;
  *(v88 + 8) = 1;
  v89 = (v78 + v82[13]);
  v90 = (v78 + v82[14]);
  v91 = (v78 + v82[15]);
  *(v78 + v82[6]) = 1;
  *v89 = 0;
  v89[1] = 0;
  *v90 = 0;
  v90[1] = 0;
  *v91 = 0;
  v91[1] = 0;
  *(v78 + v82[7]) = 1;
  *(v78 + v82[8]) = 1;
  *(v78 + v82[9]) = 1;
  *(v78 + v82[10]) = 0;
  return sub_24E1644CC(v32, type metadata accessor for HeaderData);
}

uint64_t sub_24E164414()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_24E164470(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E1644CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E164524(unint64_t *a1, void (*a2)(uint64_t))
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

void *OUTLINED_FUNCTION_3_75(void *result, uint64_t a2)
{
  result[15] = v2;
  result[16] = 0x657079546469;
  result[17] = 0xE600000000000000;
  result[18] = 0x636974617473;
  result[19] = 0xE600000000000000;
  result[21] = a2;
  result[22] = 1701667182;
  result[27] = a2;
  result[23] = 0xE400000000000000;
  result[24] = 0;
  result[25] = 0xE000000000000000;
  return result;
}

void OUTLINED_FUNCTION_8_49()
{

  sub_24E076EE4();
}

uint64_t OUTLINED_FUNCTION_9_40()
{

  return sub_24E078F8C(v1, v4, (v0 + 384), v2, v3);
}

void OUTLINED_FUNCTION_10_39()
{

  sub_24E076EE4();
}

uint64_t OUTLINED_FUNCTION_14_26@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 72) = a2;
  *(result + 80) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_25(uint64_t result)
{
  *(result + 48) = 0x666C656873;
  *(result + 56) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_26(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = 0xEE00657079546E6FLL;
  return result;
}

void *OUTLINED_FUNCTION_18_27()
{

  return memcpy((v0 + 392), (v0 + 1224), 0x199uLL);
}

uint64_t OUTLINED_FUNCTION_19_22()
{
  v2 = *(v0 + 296);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 272, v2);
}

uint64_t sub_24E1646F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 64))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_24E164748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

char *sub_24E1647C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = v6;
  sub_24E09B300(v1, v2, v3);
  if (qword_27F1DD8F0 != -1)
  {
    swift_once();
  }

  v10 = byte_27F20AFF8;
  v7 = objc_allocWithZone(type metadata accessor for AchievementBadge());
  v8 = sub_24E2C06F0(&v11, &v10, 0.0, 0.0, v4, v5);
  *&v11 = v1;
  *(&v11 + 1) = v2;
  v12 = v3;
  AchievementBadge.status.setter(&v11);
  return v8;
}

uint64_t sub_24E1648A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E1649EC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E164908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E1649EC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E16496C()
{
  sub_24E1649EC();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24E164998()
{
  result = qword_27F1E5D48;
  if (!qword_27F1E5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D48);
  }

  return result;
}

unint64_t sub_24E1649EC()
{
  result = qword_27F1E5D50;
  if (!qword_27F1E5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D50);
  }

  return result;
}

uint64_t sub_24E164A40(uint64_t a1)
{
  v2 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  OUTLINED_FUNCTION_4_5(v11);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  v15 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v19 = v18 - v17;
  sub_24DFAE87C(a1, v14, &qword_27F1DF018);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_24DF8BFF4(v14, &qword_27F1DF018);
    return 0;
  }

  sub_24E0EF370(v14, v19);
  if (*(v19 + v15[9]) == 1)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_118();
    sub_24E165DB8(v19, v72);
    return 0;
  }

  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v20 = *(v19 + v15[10]);
  if (v20)
  {
    *&v83 = *(v19 + v15[10]);
    v21 = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
    sub_24DF88A8C(0, &qword_27F1DFD38);
    if (swift_dynamicCast())
    {
      v23 = v82;
      if ([v82 gkIsNotConnectedToInternetError])
      {
        v81 = v4;
        v24 = sub_24E347CB8();
        v25 = GKGameCenterUIFrameworkBundle();
        v26 = OUTLINED_FUNCTION_5_67();

        v27 = sub_24E347CF8();
        v79 = v28;
        v80 = v27;

        [objc_opt_self() wapiCapability];
        v29 = sub_24E347CB8();
        v30 = GKGameCenterUIFrameworkBundle();
        v31 = OUTLINED_FUNCTION_5_67();

        v32 = sub_24E347CF8();
        v77 = v33;
        v78 = v32;

        v34 = sub_24E347CB8();
        v35 = GKGameCenterUIFrameworkBundle();
        v36 = OUTLINED_FUNCTION_5_67();

        v37 = sub_24E347CF8();
        v75 = v38;
        v76 = v37;

        if (qword_27F1DD628 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for ExternalUrlAction();
        v40 = __swift_project_value_buffer(v39, qword_27F20A950);
        *(&v84 + 1) = v39;
        v85 = sub_24DFCED48(&qword_27F1DF0A8, type metadata accessor for ExternalUrlAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v83);
        sub_24DFCED90(v40, boxed_opaque_existential_1, type metadata accessor for ExternalUrlAction);

        sub_24DF8BFF4(&v86, &qword_27F1DEE90);
        v86 = v83;
        v87 = v84;
        v88 = v85;
        v42 = "_INTERNET_CONNECTION_MESSAGE";
        v43 = 0xD000000000000014;
        goto LABEL_20;
      }
    }
  }

  v44 = *(v19 + v15[8]);
  if (!v44 || (v45 = [v44 sections]) == 0)
  {
LABEL_24:
    sub_24DF8BFF4(&v86, &qword_27F1DEE90);
    goto LABEL_25;
  }

  v46 = v45;
  sub_24DF88A8C(0, &qword_280BDFA80);
  v47 = sub_24E347F08();

  if (!sub_24DFD8654(v47))
  {

    goto LABEL_24;
  }

  sub_24DFFA844(0, (v47 & 0xC000000000000001) == 0, v47);
  if ((v47 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x25303F560](0, v47);
  }

  else
  {
    v48 = *(v47 + 32);
  }

  v49 = v48;

  v50 = sub_24E165CD8(v49);
  if (!v50)
  {
    goto LABEL_24;
  }

  v51 = *(v50 + 16);

  if (v51)
  {
    goto LABEL_24;
  }

  v81 = v4;
  v43 = 0xD000000000000013;
  v52 = sub_24E347CB8();
  v53 = GKGameCenterUIFrameworkBundle();
  v54 = GKGetLocalizedStringFromTableInBundle();

  v55 = sub_24E347CF8();
  v77 = v56;
  v78 = v55;

  v75 = 0;
  v76 = 0;
  v42 = "ErrorProfileSection";
  v79 = 0xE000000000000000;
  v80 = 0;
LABEL_20:
  v57 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:30.0];
  sub_24DF88A8C(0, &qword_280BE0110);
  v58 = v57;
  v59 = sub_24E1A5748(v43, v42 | 0x8000000000000000, v57);
  v74 = v58;

  if (!v59)
  {
    v59 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_24E367D20;
  sub_24DFAE87C(&v86, &v83, &qword_27F1DEE90);
  *(v60 + 56) = type metadata accessor for EmptyStateData();
  *(v60 + 64) = sub_24DFCED48(&qword_27F1DFD30, type metadata accessor for EmptyStateData);
  v61 = __swift_allocate_boxed_opaque_existential_1((v60 + 32));
  *(v61 + 19) = 0u;
  v61[21] = 0;
  *(v61 + 17) = 0u;
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  v61[5] = v59;
  v61[6] = 0;
  *(v61 + 56) = 1;
  v66 = v79;
  v61[8] = v80;
  v61[9] = v66;
  v67 = v77;
  v61[10] = v78;
  v61[11] = v67;
  v68 = v75;
  v61[12] = v76;
  v61[13] = v68;
  v61[14] = 0;
  v61[15] = 0;
  *(v61 + 128) = 1;
  v69 = v59;
  sub_24DFAE710(&v83, (v61 + 17), &qword_27F1DEE90);
  sub_24E343398();
  v70 = v81;
  (*(v81 + 16))(v7, v10, v2);
  sub_24DFCED48(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v70 + 8))(v10, v2);
  sub_24DF8BFF4(&v83, &qword_27F1DEE90);

  sub_24DF8BFF4(&v86, &qword_27F1DEE90);
  OUTLINED_FUNCTION_0_118();
  sub_24E165DB8(v19, v71);
  return v60;
}

void sub_24E1652C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E347458();
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v111 = v7 - v6;
  OUTLINED_FUNCTION_18_1();
  v8 = sub_24E347478();
  v9 = OUTLINED_FUNCTION_4_5(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v110 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  OUTLINED_FUNCTION_4_5(v12);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v112 = &v102 - v14;
  OUTLINED_FUNCTION_18_1();
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v108 = v16;
  v109 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050);
  OUTLINED_FUNCTION_4_5(v20);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  v115 = &v102 - v22;
  OUTLINED_FUNCTION_18_1();
  v23 = type metadata accessor for HeaderData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_1();
  v113 = v26 - v25;
  v27 = OUTLINED_FUNCTION_18_1();
  v28 = type metadata accessor for TitleHeaderView.Style(v27);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v29);
  v114 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v102 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018);
  OUTLINED_FUNCTION_4_5(v34);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v102 - v36;
  sub_24DFAE87C(a1, &v102 - v36, &qword_27F1DF018);
  v38 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    sub_24DF8BFF4(v37, &qword_27F1DF018);
LABEL_13:
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v23);
    v94 = type metadata accessor for Shelf.Presentation(0);
    type metadata accessor for FooterData(0);
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
    OUTLINED_FUNCTION_5_17();
    *(v99 + 32) = 1;
    v100 = a2 + v94[12];
    *v100 = 0;
    *(v100 + 8) = 1;
    OUTLINED_FUNCTION_1_26();
    *(a2 + v101) = 1;
    *(a2 + v94[8]) = 1;
    *(a2 + v94[9]) = 1;
    *(a2 + v94[10]) = 0;
    return;
  }

  v39 = *&v37[*(v38 + 32)];
  v40 = v39;
  OUTLINED_FUNCTION_0_118();
  sub_24E165DB8(v37, v41);
  if (!v39)
  {
    goto LABEL_13;
  }

  v42 = sub_24E165D40(v40);
  if (!v42)
  {
    goto LABEL_13;
  }

  v43 = v42;
  if (!sub_24DFD8654(v42))
  {

    goto LABEL_13;
  }

  sub_24DFFA844(0, (v43 & 0xC000000000000001) == 0, v43);
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x25303F560](0, v43);
  }

  else
  {
    v44 = *(v43 + 32);
  }

  v45 = v44;

  v46 = sub_24E165C68(v45);
  if (!v47)
  {
    goto LABEL_13;
  }

  v106 = v47;
  v107 = v46;
  sub_24E099B2C(v33);
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for PlayerCardTheme();
  v53 = *(__swift_project_value_buffer(v52, qword_27F20BF00) + *(v52 + 40));
  v54 = v28[8];
  v33[v28[6]] = 0;
  v33[v28[7]] = 0;
  v33[v54] = 0;
  v33[v28[9]] = 0;
  *&v33[v28[11]] = 0;
  *&v33[v28[13]] = v53;
  v33[v28[10]] = 1;
  v33[v28[12]] = 0;
  v104 = type metadata accessor for TitleHeaderView.Style;
  sub_24DFCED90(v33, v114, type metadata accessor for TitleHeaderView.Style);
  memset(v122, 0, sizeof(v122));
  v123 = -1;
  memset(v120, 0, sizeof(v120));
  v121 = -1;
  sub_24E3444F8();
  memset(v118, 0, sizeof(v118));
  v119 = 0;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  v59 = v53;
  sub_24E343398();
  v102 = sub_24E343378();
  v105 = v33;
  v61 = v60;
  (*(v108 + 8))(v19, v109);
  v62 = v113;
  v63 = v113 + v23[7];
  *(v63 + 32) = 0u;
  *(v63 + 48) = 0u;
  *v63 = 0u;
  *(v63 + 16) = 0u;
  *(v63 + 64) = -1;
  v64 = v62 + v23[9];
  *(v64 + 32) = 0u;
  *(v64 + 48) = 0u;
  *v64 = 0u;
  *(v64 + 16) = 0u;
  *(v64 + 64) = -1;
  v65 = (v62 + v23[10]);
  v66 = v62 + v23[11];
  *(v66 + 32) = 0;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  v67 = v23[13];
  v103 = v23[12];
  v68 = v62 + v67;
  *(v68 + 32) = 0;
  *v68 = 0u;
  *(v68 + 16) = 0u;
  v109 = v23[14];
  v108 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  v116 = v102;
  v117 = v61;
  sub_24E348918();
  sub_24DFCED90(v114, v62 + v23[5], v104);
  v73 = (v62 + v23[6]);
  v74 = v106;
  *v73 = v107;
  v73[1] = v74;

  sub_24DFAE710(v122, v63, &qword_27F1DEE88);
  v75 = (v62 + v23[8]);
  *v75 = 0;
  v75[1] = 0;
  sub_24DFAE710(v120, v64, &qword_27F1DEE88);
  *(v62 + v103) = 0;
  *v65 = 0;
  v65[1] = 0;
  sub_24DFAE710(v118, v66, &qword_27F1DEE90);
  sub_24DFAE87C(v115, v62 + v23[17], &qword_27F1DF050);
  v76 = v62 + v23[16];
  *v76 = 0;
  *(v76 + 8) = 0;
  *(v62 + v23[15]) = xmmword_24E3699A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  v78 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = 0x6973736572706D69;
  v79 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v79;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v78;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v78;
  v80 = v107;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v80;
  *(inited + 200) = v74;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v81 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v81);
  v82 = v112;
  sub_24E347488();
  sub_24DF8BFF4(v115, &qword_27F1DF050);
  sub_24DF8BFF4(v118, &qword_27F1DEE90);
  sub_24DF8BFF4(v120, &qword_27F1DEE88);
  sub_24DF8BFF4(v122, &qword_27F1DEE88);
  sub_24E165DB8(v114, type metadata accessor for TitleHeaderView.Style);
  sub_24E165DB8(v105, type metadata accessor for TitleHeaderView.Style);
  __swift_storeEnumTagSinglePayload(v82, 0, 1, v108);
  sub_24DF8BEB4(v82, v62 + v109);
  sub_24DFCED90(v62, a2, type metadata accessor for HeaderData);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v23);
  v83 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
  OUTLINED_FUNCTION_5_17();
  *(v88 + 32) = 1;
  v89 = a2 + v83[12];
  *v89 = 0;
  *(v89 + 8) = 1;
  OUTLINED_FUNCTION_1_26();
  *(a2 + v90) = 1;
  *(a2 + v83[8]) = 1;
  *(a2 + v83[9]) = 1;
  *(a2 + v83[10]) = 0;
  sub_24E165DB8(v62, type metadata accessor for HeaderData);
}

uint64_t sub_24E165C68(void *a1)
{
  v2 = [a1 title];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347CF8();

  return v3;
}

uint64_t sub_24E165CD8(void *a1)
{
  v2 = [a1 items];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347F08();

  return v3;
}

uint64_t sub_24E165D40(void *a1)
{
  v2 = [a1 sections];

  if (!v2)
  {
    return 0;
  }

  sub_24DF88A8C(0, &qword_280BDFA80);
  v3 = sub_24E347F08();

  return v3;
}

uint64_t sub_24E165DB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_67()
{

  return GKGetLocalizedStringFromTableInBundle();
}

unint64_t sub_24E165E4C()
{
  result = qword_27F1E5D58;
  if (!qword_27F1E5D58)
  {
    type metadata accessor for SmallLockupData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D58);
  }

  return result;
}

uint64_t type metadata accessor for SmallLockupData()
{
  result = qword_27F1E5D60;
  if (!qword_27F1E5D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E165F84()
{
  sub_24E1660C8(319, &qword_27F1E5D70, type metadata accessor for Artwork);
  if (v0 <= 0x3F)
  {
    sub_24E0ADC44();
    if (v1 <= 0x3F)
    {
      sub_24E1660C8(319, &qword_27F1E5D78, sub_24DFEA770);
      if (v2 <= 0x3F)
      {
        sub_24DF9E07C();
        if (v3 <= 0x3F)
        {
          sub_24E1660C8(319, &qword_280BE0650, MEMORY[0x277D21F70]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E1660C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_24E16611C()
{
  result = [objc_opt_self() sharedTheme];
  if (result)
  {
    v1 = result;
    v2 = [result eventIconImage];

    v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    v4 = v3;
    [v4 setContentMode_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *AchievementBannerImageContainerView.init(achievementImage:)(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_achievementImageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setContentMode_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_gameCenterImageView;
  *&v1[v5] = sub_24E16611C();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AchievementBannerImageContainerView();
  v6 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = *&v6[OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_achievementImageView];
  v8 = v6;
  [v7 setImage_];
  sub_24E166530();

  return v8;
}

void sub_24E166358()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_achievementImageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setContentMode_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_gameCenterImageView;
  *(v0 + v3) = sub_24E16611C();
  sub_24E348AE8();
  __break(1u);
}

id sub_24E166440()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AchievementBannerImageContainerView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_achievementImageView];
  v2 = [v1 layer];
  [v1 bounds];
  [v2 setCornerRadius_];

  return [v1 setClipsToBounds_];
}

void sub_24E166530()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_achievementImageView];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI35AchievementBannerImageContainerView_gameCenterImageView];
  [v0 addSubview_];
  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E37D8E0;
  v5 = [v1 topAnchor];
  v6 = [v2 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = OUTLINED_FUNCTION_0_61([v2 leadingAnchor]);

  *(v4 + 40) = v9;
  v10 = [v1 trailingAnchor];
  v11 = OUTLINED_FUNCTION_0_61([v2 trailingAnchor]);

  *(v4 + 48) = v11;
  v12 = [v1 bottomAnchor];
  v13 = OUTLINED_FUNCTION_0_61([v2 bottomAnchor]);

  *(v4 + 56) = v13;
  v14 = [v2 heightAnchor];
  v15 = OUTLINED_FUNCTION_0_61([v2 widthAnchor]);

  *(v4 + 64) = v15;
  v16 = [v1 trailingAnchor];
  v17 = OUTLINED_FUNCTION_0_61([v3 trailingAnchor]);

  *(v4 + 72) = v17;
  v18 = [v1 bottomAnchor];
  v19 = [v3 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v4 + 80) = v20;
  v21 = [v3 widthAnchor];
  v22 = [v2 widthAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 multiplier:0.4];

  *(v4 + 88) = v23;
  v24 = [v3 heightAnchor];
  v25 = [v2 heightAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 multiplier:0.4];

  *(v4 + 96) = v26;
  sub_24DFE83EC();
  v28 = sub_24E347EE8();

  [v27 activateConstraints_];
}

id AchievementBannerImageContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AchievementBannerImageContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AchievementBannerImageContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AppStoreContentMetadataPresenter.highlightsPublisher()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5D90);
  swift_allocObject();

  sub_24E344E18();
  sub_24E166BF4();
  v0 = sub_24E344E88();

  return v0;
}

uint64_t sub_24E166B38(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24E166C58;
  *(v5 + 24) = v4;

  sub_24E0E9444(0, sub_24E166C64, v5);
}

unint64_t sub_24E166BF4()
{
  result = qword_27F1E5D98;
  if (!qword_27F1E5D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5D98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s5Error_pSgIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_24E166D0C(void *a1, double a2)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_119();
  WitnessTable = swift_getWitnessTable();
  sub_24E2D41CC(ObjectType, WitnessTable, v7);
  if (sub_24E2541B4(*(v7[9] + 16), v7, a1, a2) < 1)
  {
    a2 = *MEMORY[0x277D22A78];
  }

  sub_24DF97F28(v7);
  return a2;
}

id sub_24E166DF4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[qword_27F1E5DA0] = 0;
  v10 = qword_27F1E5DA8;
  swift_getAssociatedTypeWitness();
  *&v4[v10] = sub_24E347F58();
  v11 = qword_27F1E5DB0;
  *&v4[v11] = sub_24E347F58();
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setLayoutMargins_];
  return v12;
}

void sub_24E166F48()
{
  *(v0 + qword_27F1E5DA0) = 0;
  v1 = qword_27F1E5DA8;
  swift_getAssociatedTypeWitness();
  *(v0 + v1) = sub_24E347F58();
  v2 = qword_27F1E5DB0;
  *(v0 + v2) = sub_24E347F58();
  sub_24E348AE8();
  __break(1u);
}

double sub_24E167058()
{
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  result = 8.0;
  if (ShouldUsePadUI)
  {
    return 2.0;
  }

  return result;
}

uint64_t sub_24E1670A8()
{
  ObjectType = swift_getObjectType();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  [v0 bounds];
  v3 = v2;
  [v0 layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v3 - v6 - v8;
  OUTLINED_FUNCTION_0_119();
  WitnessTable = swift_getWitnessTable();
  return sub_24E2D4058(v0, ObjectType, WitnessTable, v7, v5, v9);
}

void sub_24E167168(void *a1)
{
  v1 = a1;
  sub_24E1670A8();
}

double sub_24E1671B8(void *a1, double a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_24E166D0C(a4, a2);
  swift_unknownObjectRelease();

  return v8;
}

void sub_24E167240(void *a1)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v3 = ObjectType;
    v4 = [a1 view];
    if (v4)
    {
      v8 = v4;
      v5 = swift_dynamicCastUnknownClass();
      if (v5)
      {
        v6 = v5;
        WitnessTable = swift_getWitnessTable();
        sub_24E2D4298(v6, v3, WitnessTable);
      }
    }
  }
}

void sub_24E16733C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_24E167240(a3);
}

uint64_t sub_24E1673A8()
{
}

uint64_t sub_24E167484(unsigned __int8 *a1, char a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  result = a3;
  if (a4)
  {
    if (__OFADD__(a3, 1))
    {
      __break(1u);
      return result;
    }

    if (a3 + 1 >= 10)
    {
      result = 10;
    }

    else
    {
      result = a3 + 1;
    }
  }

  switch(v7)
  {
    case 1:
      type metadata accessor for GameCenter();
      swift_initStaticObject();
      sub_24E2F0F0C(1, 0, 0, v9, v10, v11, v12, v13, v22, v23[0], v23[1], v23[2], v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
      break;
    case 2:
      sub_24E1683CC(result, *MEMORY[0x277CEC200]);
      break;
    case 3:
      sub_24E168510(result, *MEMORY[0x277CEC200]);
      break;
    default:
      sub_24E16813C();
      break;
  }

  OUTLINED_FUNCTION_21_2();
  *(swift_allocObject() + 16) = a4;
  v24 = sub_24E3474D8();
  v25 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v23);
  v14 = a4;

  sub_24E3474C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E21E8);
  v15 = sub_24E347A58();

  __swift_destroy_boxed_opaque_existential_1(v23);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAAA0);
    v16 = sub_24E347AD8();
    OUTLINED_FUNCTION_21_2();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a4;
    *(v18 + 32) = v7;
    *(v18 + 40) = a3;
    *(v18 + 48) = v16;
    v19 = sub_24DF88A8C(0, &qword_27F1DFCD0);
    swift_retain_n();
    v20 = v14;
    v21 = sub_24E348368();
    v24 = v19;
    v25 = MEMORY[0x277D225C0];
    v23[0] = v21;
    sub_24E347A78();

    __swift_destroy_boxed_opaque_existential_1(v23);
    return v16;
  }

  else
  {
  }

  return v15;
}

void sub_24E167748(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (a2)
  {
    v15 = MEMORY[0x277D84F90];
    v6 = sub_24DFD8654(v4);
    v7 = a2;
    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        v4 = v15;
        a3 = v14;
        goto LABEL_15;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25303F560](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v11 = [v7 adamID];
      v12 = [v10 numberValue];
      sub_24DF88A8C(0, &qword_27F1E50D0);
      v13 = sub_24E348628();

      if (v13)
      {
      }

      else
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {

LABEL_15:
    *a3 = v4;
  }
}

void sub_24E1678EC(uint64_t *a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v8 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a3)
    {
      v19 = a5;
      v20[0] = MEMORY[0x277D84F90];
      v9 = sub_24DFD8654(v8);
      v10 = a3;
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          a5 = v19;
          goto LABEL_16;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x25303F560](i, v8);
        }

        else
        {
          if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v12 = *(v8 + 8 * i + 32);
        }

        v13 = v12;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v14 = [v10 adamID];
        v15 = [v13 numberValue];
        sub_24DF88A8C(0, &qword_27F1E50D0);
        v16 = sub_24E348628();

        if (v16)
        {
        }

        else
        {
          sub_24E348A48();
          sub_24E348A78();
          sub_24E348A88();
          sub_24E348A58();
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {

LABEL_16:
      LOBYTE(v20[0]) = a4;
      sub_24E168834(v20);

      sub_24E25D0F4(a5);
      v17 = sub_24DF88A8C(0, &qword_27F1DFCD0);
      swift_retain_n();
      v18 = sub_24E348368();
      v20[3] = v17;
      v20[4] = MEMORY[0x277D225C0];
      v20[0] = v18;
      sub_24E347A78();

      __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }
}

uint64_t sub_24E167BCC(char *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5E40);
  v6 = sub_24E347AD8();
  LOBYTE(v11[0]) = v5;
  sub_24E167484(v11, 1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = sub_24DF88A8C(0, &qword_27F1DFCD0);
  swift_retain_n();
  v9 = sub_24E348368();
  v11[3] = v8;
  v11[4] = MEMORY[0x277D225C0];
  v11[0] = v9;
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v6;
}

void sub_24E167D0C(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = *a1;
  v6 = sub_24DFD8654(*a1);
  if (v6)
  {
    v7 = v6;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24E348A68();
    if (v7 < 0)
    {
      __break(1u);
      return;
    }

    v17 = a3;
    v8 = a2;
    sub_24DF88A8C(0, &qword_27F1DEFE0);
    v9 = 0;
    v10 = *MEMORY[0x277CEC230];
    v11 = MEMORY[0x277CEC1F8];
    if ((v8 - 1) < 3)
    {
      v11 = MEMORY[0x277CEC200];
    }

    v12 = *v11;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25303F560](v9, v5);
      }

      else
      {
        v13 = *(v5 + 8 * v9 + 32);
      }

      ++v9;
      sub_24E1C69D4(v13, v10, v12);
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }

    while (v7 != v9);
    a3 = v17;
  }

  if (qword_27F1DDB50 != -1)
  {
    swift_once();
  }

  v14 = qword_27F20B218;
  sub_24DF88A8C(0, &qword_27F1DEFE0);
  v15 = sub_24E347EE8();

  aBlock[4] = sub_24E168C10;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E1680B8;
  aBlock[3] = &block_descriptor_11_1;
  v16 = _Block_copy(aBlock);

  [v14 _prefetchLockupsWithRequests_withCompletionBlock_];
  _Block_release(v16);
}

void sub_24E167F70(uint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  v2 = sub_24DFD8654(a1);
  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      sub_24E347AC8();

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x25303F560](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v7 = [v4 lockup];

    ++v3;
    if (v7)
    {
      MEMORY[0x25303EA30]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      v3 = v6;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_24E1680B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_24DF88A8C(0, &qword_27F1E5E48);
  v2 = sub_24E347F08();

  v1(v2);
}

uint64_t sub_24E16813C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAAA0);
  v1 = sub_24E347AD8();
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  sub_24E2F07F8(*(v0 + 16), 0);
  v2 = sub_24DF88A8C(0, &qword_27F1DFCD0);
  swift_retain_n();
  v3 = sub_24E348368();
  v5[3] = v2;
  v5[4] = MEMORY[0x277D225C0];
  v5[0] = v3;
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

void sub_24E16824C(void *a1)
{
  v1 = *a1;
  v9 = MEMORY[0x277D84F90];
  v2 = sub_24DFD8654(*a1);
  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      sub_24E347AC8();

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x25303F560](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = [v4 adamID];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x277CEC258]) initWithNumberValue_];

      if (!v8)
      {
        goto LABEL_13;
      }

      MEMORY[0x25303EA30]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      ++v3;
    }

    else
    {

LABEL_13:
      ++v3;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

id sub_24E1683F4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithID:a1 kind:a2 context:a3 limit:a4];

  return v7;
}

uint64_t sub_24E16846C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24DF88A8C(0, &qword_27F1DEFE0);
    v4 = sub_24E347F08();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_24E168538(uint64_t a1, void *a2, id *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAAA0);
  v10 = sub_24E347AD8();
  if (qword_27F1DDB50 != -1)
  {
    OUTLINED_FUNCTION_0_120();
  }

  v11 = qword_27F20B218;
  sub_24DF88A8C(0, &qword_27F1E5E38);
  v12 = sub_24E1683F4(*a3, *MEMORY[0x277CEC230], a2, a1);
  v15[4] = a4;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E16846C;
  v15[3] = a5;
  v13 = _Block_copy(v15);

  [v11 _cacheLockupsWithCollectionRequest_withCompletionBlock_];
  _Block_release(v13);

  return v10;
}

void sub_24E1686B8(uint64_t a1, id a2)
{
  if (!a2)
  {
    if (a1)
    {
      v5 = sub_24DFD8654(a1);
      if (v5)
      {
        v6 = v5;
        sub_24E348A68();
        if (v6 < 0)
        {
          __break(1u);
          return;
        }

        v7 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x25303F560](v7, a1);
          }

          else
          {
            v8 = *(a1 + 8 * v7 + 32);
          }

          v9 = v8;
          ++v7;
          v10 = [v8 id];

          sub_24E348A48();
          sub_24E348A78();
          sub_24E348A88();
          sub_24E348A58();
        }

        while (v6 != v7);
      }
    }

    sub_24E347AC8();

    return;
  }

  v3 = a2;
  sub_24E347AB8();
}

uint64_t sub_24E168834(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v16[0] = *a1;
  v4 = sub_24E1689F4(v16);
  v6 = v5;
  swift_beginAccess();
  v7 = *(v1 + 24);

  v8 = sub_24E130ED4(v4, v6, v7);

  if (v8)
  {
  }

  else
  {
    v9 = MEMORY[0x277CEC200];
    if ((v3 - 1) >= 3)
    {
      v9 = MEMORY[0x277CEC1F8];
    }

    v10 = *v9;
    if (qword_27F1DDB50 != -1)
    {
      OUTLINED_FUNCTION_0_120();
    }

    v11 = qword_27F20B218;
    type metadata accessor for ASCLockupBatchPresenter();
    swift_allocObject();
    v12 = v11;

    v8 = sub_24E25C424(v13, 20, v12, v10);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 24);
    sub_24E058AEC();
    *(v2 + 24) = v15;

    swift_endAccess();
  }

  return v8;
}

uint64_t sub_24E1689F4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 0xEE00646579616C50;
  v3 = 0x796C746E65636572;
  switch(v1)
  {
    case 1:
      v2 = 0x800000024E39CCA0;
      v3 = 0xD000000000000011;
      break;
    case 2:
      v2 = 0xEE0073656D614765;
      v3 = 0x646163724177656ELL;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x756F59726F66;
      break;
    default:
      break;
  }

  MEMORY[0x25303E950](v3, v2);

  MEMORY[0x25303E950](95, 0xE100000000000000);
  sub_24DF88A8C(0, &qword_27F1E3560);
  sub_24DFAE910();
  sub_24E347FD8();
  v4 = sub_24E348BA8();
  MEMORY[0x25303E950](v4);

  return 0;
}

uint64_t sub_24E168B70()
{
  sub_24E168B48();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_0_120()
{

  return swift_once();
}

id sub_24E168C88()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5E78);
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_74();
  v6 = type metadata accessor for ProfileHeaderData();
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  [objc_msgSend(v2 container)];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28();
  sub_24E348538();
  if ((ShouldUsePadUI & 1) == 0)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v13 = type metadata accessor for PlayerCardTheme();
    __swift_project_value_buffer(v13, qword_27F20BF00);
    v14 = [v2 traitCollection];
    sub_24E336638();

    sub_24E348538();
  }

  sub_24E16985C(v11, v8);
  sub_24E169814(&qword_27F1E5E68, type metadata accessor for ProfileHeaderData);
  sub_24E347158();
  type metadata accessor for PlayerProfileHeaderView();
  sub_24E2CA150(v0, v2);
  v16 = v15;
  (*(v4 + 8))(v0, v3);
  v17 = objc_opt_self();
  v18 = [v17 fractionalWidthDimension_];
  v19 = [v17 fractionalHeightDimension_];
  v20 = objc_opt_self();
  v21 = [v20 sizeWithWidthDimension:v18 heightDimension:v19];

  v22 = [objc_opt_self() itemWithLayoutSize_];
  v23 = [v17 fractionalWidthDimension_];
  v24 = [v17 absoluteDimension_];
  v25 = [v20 sizeWithWidthDimension:v23 heightDimension:v24];

  v26 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24E369990;
  *(v27 + 32) = v22;
  sub_24E1698C0();
  v28 = v22;
  v29 = sub_24E347EE8();

  v30 = [v26 verticalGroupWithLayoutSize:v25 subitems:v29];

  v31 = [objc_opt_self() sectionWithGroup_];
  sub_24E169904(v11);
  return v31;
}

double sub_24E1691A0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_4_55();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_74();
  sub_24E120A58(a1, v4);
  sub_24E120A58(a2, v4 + *(v3 + 56));
  sub_24E120AC8(v4);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 3;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 1;
  return result;
}

double sub_24E169270(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_4_55();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_74();
  sub_24E120A58(a2, v5);
  sub_24E120A58(a3, v5 + *(v4 + 56));
  [objc_msgSend(a4 container)];
  v11 = v10;
  swift_unknownObjectRelease();
  sub_24E120AC8(v5);
  return v11;
}

double sub_24E169358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_4_55();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_24E120A58(a2, &v13 - v7);
  sub_24E120A58(a3, &v8[*(v3 + 56)]);
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v9 = sub_24E3444F8();
  __swift_project_value_buffer(v9, qword_27F20B4E8);
  sub_24E3444E8();
  v11 = v10;
  sub_24E120AC8(v8);
  return v11;
}

id sub_24E16944C()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for PlayerProfileHeaderCollectionViewCell();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

double sub_24E169560()
{
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v0 = type metadata accessor for PlayerCardTheme();
  return *(__swift_project_value_buffer(v0, qword_27F20BF00) + *(v0 + 76));
}

id sub_24E1695C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerProfileHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PlayerProfileHeaderCollectionViewCell()
{
  result = qword_27F1E5E50;
  if (!qword_27F1E5E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1696D4(uint64_t a1)
{
  result = sub_24E169814(&qword_27F1E5E60, type metadata accessor for PlayerProfileHeaderCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E1697BC(uint64_t a1)
{
  result = sub_24E169814(&qword_27F1E5E70, type metadata accessor for PlayerProfileHeaderCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E169814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E16985C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileHeaderData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E1698C0()
{
  result = qword_27F1EA590;
  if (!qword_27F1EA590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1EA590);
  }

  return result;
}

uint64_t sub_24E169904(uint64_t a1)
{
  v2 = type metadata accessor for ProfileHeaderData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_24E169970(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_progressBarView;
  type metadata accessor for ProgressBarView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v4[OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkSize];
  v12 = type metadata accessor for ProgressLockupView();
  *v11 = 0;
  *(v11 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v12;
  v13 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 8);
  v16 = *(MEMORY[0x277D768C8] + 16);
  v17 = *(MEMORY[0x277D768C8] + 24);
  v18 = v13;
  [v18 setLayoutMargins_];
  [v18 addSubview_];
  [v18 addSubview_];

  return v18;
}

void sub_24E169AD8()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_progressBarView;
  type metadata accessor for ProgressBarView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkSize);
  *v3 = 0;
  v3[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E169BB4()
{
  [v0 layoutMargins];
  sub_24E348538();
  [*&v0[OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_progressBarView] sizeThatFits_];
  [v0 layoutMargins];

  return sub_24E348558();
}

id sub_24E169CC0()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for ProgressLockupView();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkView];
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_16(v2, v3);
  OUTLINED_FUNCTION_0_33();
  MinX = CGRectGetMinX(v27);
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_16(v5, v6);
  OUTLINED_FUNCTION_0_33();
  MidY = CGRectGetMidY(v28);
  v8 = &v0[OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_artworkSize];
  [v1 setFrame_];
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_16(v9, v10);
  OUTLINED_FUNCTION_0_33();
  v11 = CGRectGetWidth(v29) + -20.0 - *v8;
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_16(v12, v13);
  OUTLINED_FUNCTION_0_33();
  Height = CGRectGetHeight(v30);
  v15 = *&v0[OBJC_IVAR____TtC12GameCenterUI18ProgressLockupView_progressBarView];
  [v15 measurementsWithFitting:v0 in:{v11, Height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v1 frame];
  v22 = CGRectGetMaxX(v31) + 20.0;
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_2_75();
  OUTLINED_FUNCTION_4_16(v23, v24);
  OUTLINED_FUNCTION_0_33();
  return [v15 setFrame_];
}

id sub_24E169F08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressLockupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OUTLINED_FUNCTION_2_75()
{

  return [v0 (v1 + 3448)];
}

id OUTLINED_FUNCTION_3_76()
{

  return [v0 (v1 + 3832)];
}

uint64_t sub_24E169FDC(uint64_t a1, unint64_t a2)
{
  v5 = sub_24E348DA8();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v12 = &v24 - v11;
  v13 = HIBYTE(a2) & 0xF;
  v31 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v28 = v13;
  if (v13)
  {
    v14 = 0;
    v26 = a2 & 0xFFFFFFFFFFFFFFLL;
    v27 = a2;
    v24 = v2;
    v25 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v15 = (v10 + 8);
    v29 = v9;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_24E348988();
        v18 = v17;
      }

      else
      {
        if ((a2 & 0x2000000000000000) == 0)
        {
          v16 = v25;
          if ((v31 & 0x1000000000000000) == 0)
          {
            v16 = sub_24E348A28();
          }

          if (*(v16 + v14) < 0)
          {
            switch(__clz(*(v16 + v14) ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }

LABEL_13:
          v18 = 1;
          goto LABEL_14;
        }

        v30[0] = v31;
        v30[1] = v26;
        if ((*(v30 + v14) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        switch(__clz(*(v30 + v14) ^ 0xFF))
        {
          case 0x1Au:
LABEL_19:
            v18 = 2;
            break;
          case 0x1Bu:
LABEL_20:
            v18 = 3;
            break;
          case 0x1Cu:
LABEL_21:
            v18 = 4;
            break;
          default:
            goto LABEL_13;
        }
      }

LABEL_14:
      sub_24E348DB8();
      v19 = sub_24E348D78();
      v20 = *v15;
      v21 = v29;
      (*v15)(v12, v29);
      if (v19)
      {
        return 1;
      }

      sub_24E348DB8();
      v22 = sub_24E348D98();
      v20(v8, v21);
      if (v22)
      {
        return 1;
      }

      v14 += v18;
      a2 = v27;
      if (v14 >= v28)
      {
        return 0;
      }
    }
  }

  return 0;
}

BOOL sub_24E16A2D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_24E348DA8();
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  v17[2] = a1;
  v17[3] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v17[4] = 0;
  v17[5] = v8;
  v9 = (v5 + 8);

  while (1)
  {
    v10 = sub_24E347E08();
    v12 = v11;
    if (!v11)
    {
      break;
    }

    v13 = v10;
    if (OUTLINED_FUNCTION_0_121() == 1 && (sub_24E002B38(v13, v12) & 0x100000000) == 0)
    {
      sub_24E348DB8();
      v14 = sub_24E348D88();
      (*v9)(v7, v4);
      if (v14)
      {

        break;
      }
    }

    if (OUTLINED_FUNCTION_0_121() < 2)
    {
    }

    else
    {

      v15 = sub_24E169FDC(v13, v12);
      swift_bridgeObjectRelease_n();
      if (v15)
      {
        break;
      }
    }
  }

  return v12 != 0;
}

unint64_t sub_24E16A4A8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_24E16A548(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_24E004AB4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_24E16A548(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_24E00FC14(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24E16A5B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_24E16A4A8(a1, a3, a4);
  result = sub_24E16A4A8(a2, a3, a4);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_24E347D98();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_24E348A28();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_24E347DA8();
        v7 = result;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_24E348A28();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_38;
  }

  return 0;
}

unint64_t OUTLINED_FUNCTION_0_121()
{

  return sub_24E16A5B8(0xFuLL, v2, v1, v0);
}

uint64_t sub_24E16A7F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E16A830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24E16A8AC@<D0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_24E346958();
  v4 = sub_24E3469B8();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  result = 14.0;
  *(a1 + 32) = xmmword_24E37DBF0;
  *(a1 + 48) = xmmword_24E37DC00;
  *(a1 + 64) = 0x3FE0000000000000;
  return result;
}

uint64_t sub_24E16A928@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19E0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_3();
  v81 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5E98);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v68 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EA0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v80 = v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EA8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v12);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EB0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v14);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EB8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v16);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EC0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v18);
  v19 = sub_24E345B68();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(v1 + 8);
  v82 = v1;
  v23 = *v1;
  v84 = *v1;
  if (v85 == 1)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_24E348268();
    v24 = sub_24E346198();
    v69 = v8;
    v25 = v7;
    v26 = v24;
    sub_24E343EA8();

    v7 = v25;
    v8 = v69;
    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DF8BFF4(&v84, &qword_27F1E5EC8);
    (*(v20 + 8))(v22, v19);
    if (__src[0] != 1)
    {
LABEL_6:
      v27 = sub_24E3469C8();
      v28 = sub_24E3469C8();
      goto LABEL_8;
    }
  }

  if (sub_24E345F98())
  {
    goto LABEL_6;
  }

  v28 = v82[2];
  v27 = v82[3];

LABEL_8:
  v29 = v81;
  sub_24E345F88();
  v30 = sub_24E346288();
  KeyPath = swift_getKeyPath();
  v32 = &v7[*(v4 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  sub_24E3462E8();
  sub_24E16B0D8();
  v33 = v80;
  sub_24E346558();
  sub_24DF8BFF4(v7, &qword_27F1E5E98);
  v34 = v82[6];
  v35 = swift_getKeyPath();
  v36 = (v33 + *(v8 + 36));
  *v36 = v35;
  v36[1] = v34;
  v37 = *MEMORY[0x277CDF998];
  v38 = sub_24E345658();
  OUTLINED_FUNCTION_5_2();
  (*(v39 + 104))(v29, v37, v38);
  sub_24E16B1C0(&qword_27F1E1A18, MEMORY[0x277CDFA28]);
  result = sub_24E347CA8();
  if (result)
  {
    sub_24E16B208();
    sub_24DFB4C28(&qword_27F1E19E8, &qword_27F1E19E0);
    v41 = v27;
    v42 = v78;
    sub_24E346678();
    sub_24DF8BFF4(v29, &qword_27F1E19E0);
    sub_24DE65DBC(v33);
    v43 = sub_24E346248();
    v44 = v82;
    sub_24E3451B8();
    OUTLINED_FUNCTION_3_77();
    v46 = v42 + v45;
    *v46 = v43;
    *(v46 + 8) = v47;
    *(v46 + 16) = v48;
    *(v46 + 24) = v49;
    *(v46 + 32) = v50;
    *(v46 + 40) = 0;
    sub_24E346E28();
    sub_24E3457F8();
    v51 = v79;
    sub_24E0A8D84(v42, v79, &qword_27F1E5EA8);
    OUTLINED_FUNCTION_3_77();
    memcpy((v51 + v52), __src, 0x70uLL);
    v53 = swift_getKeyPath();
    v54 = v51;
    v55 = v76;
    sub_24E0A8D84(v54, v76, &qword_27F1E5EB0);
    OUTLINED_FUNCTION_3_77();
    v57 = (v55 + v56);
    *v57 = v53;
    v57[1] = v41;
    LOBYTE(v53) = sub_24E3461E8();
    v58 = v71;
    sub_24E0A8D84(v55, v71, &qword_27F1E5EB8);
    OUTLINED_FUNCTION_3_77();
    v60 = v58 + v59;
    *v60 = v28;
    *(v60 + 8) = v53;
    v61 = v44[4];
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5EF8);
    v63 = v72;
    v64 = (v72 + *(v62 + 36));
    v65 = *(sub_24E3457C8() + 20);
    v66 = *MEMORY[0x277CE0118];
    sub_24E345C68();
    OUTLINED_FUNCTION_5_2();
    (*(v67 + 104))(&v64[v65], v66);
    *v64 = v61;
    *(v64 + 1) = v61;
    *&v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0) + 36)] = 256;
    return sub_24E0A8D84(v58, v63, &qword_27F1E5EC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24E16B0D8()
{
  result = qword_27F1E5ED0;
  if (!qword_27F1E5ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5E98);
    sub_24E16B1C0(&qword_27F1E5ED8, MEMORY[0x277CDE278]);
    sub_24DFB4C28(&qword_27F1DF648, &qword_27F1DF650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5ED0);
  }

  return result;
}

uint64_t sub_24E16B1C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E16B208()
{
  result = qword_27F1E5EE0;
  if (!qword_27F1E5EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5E98);
    sub_24E16B0D8();
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1E5EE8, &qword_27F1E5EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5EE0);
  }

  return result;
}

unint64_t sub_24E16B2FC()
{
  result = qword_27F1E5F00;
  if (!qword_27F1E5F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EF8);
    sub_24E16B3B4();
    sub_24DFB4C28(&qword_27F1DF820, &qword_27F1DF7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5F00);
  }

  return result;
}

unint64_t sub_24E16B3B4()
{
  result = qword_27F1E5F08;
  if (!qword_27F1E5F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EC0);
    sub_24E16B46C();
    sub_24DFB4C28(&unk_27F1DF810, &qword_27F1DF4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5F08);
  }

  return result;
}

unint64_t sub_24E16B46C()
{
  result = qword_27F1E5F10;
  if (!qword_27F1E5F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EB8);
    sub_24E16B524();
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5F10);
  }

  return result;
}

unint64_t sub_24E16B524()
{
  result = qword_27F1E5F18;
  if (!qword_27F1E5F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EB0);
    sub_24E16B5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5F18);
  }

  return result;
}

unint64_t sub_24E16B5B0()
{
  result = qword_27F1E5F20;
  if (!qword_27F1E5F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E19E0);
    sub_24E16B208();
    sub_24DFB4C28(&qword_27F1E19E8, &qword_27F1E19E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5F20);
  }

  return result;
}

uint64_t sub_24E16B6E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a1, v4);
  type metadata accessor for GKLogTimer();
  swift_allocObject();
  v11 = sub_24E16B7EC(v10, a2, 1);
  (*(v6 + 8))(a1, v4);
  return v11;
}

uint64_t sub_24E16B7EC(uint64_t a1, uint64_t a2, char a3)
{
  sub_24E343358();
  v7 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  v8 = sub_24E343368();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_children) = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_level;
  v10 = sub_24E347358();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  *(v3 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_messages) = a2;
  *(v3 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_isRoot) = a3;
  return v3;
}

uint64_t sub_24E16B8CC()
{
  v1 = v0;
  v2 = sub_24E347018();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = sub_24E343368();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  swift_beginAccess();
  sub_24E1578C4(v1 + v13, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_24DFA9298(v8, &unk_27F1E5890);
  }

  (*(v10 + 32))(v12, v8, v9);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  MEMORY[0x25303E950](40, 0xE100000000000000);
  sub_24E343318();
  sub_24E343318();
  sub_24E348118();
  MEMORY[0x25303E950](41, 0xE100000000000000);
  v19[3] = MEMORY[0x277D837D0];
  sub_24E346FE8();
  sub_24DFA9298(v19, &qword_27F1E0370);
  v15 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_messages;
  swift_beginAccess();
  sub_24E011200();
  v16 = *(*(v1 + v15) + 16);
  sub_24E1242E8(v16);
  v17 = *(v1 + v15);
  *(v17 + 16) = v16 + 1;
  (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v5, v2);
  *(v1 + v15) = v17;
  swift_endAccess();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24E16BC04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  swift_beginAccess();
  sub_24E16C89C(a1, v1 + v3);
  swift_endAccess();
  sub_24E16B8CC();
  return sub_24DFA9298(a1, &unk_27F1E5890);
}

uint64_t sub_24E16BC80(uint64_t a1)
{
  v2 = v1;
  sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  (*(v8 + 16))(v6 - v5, v2 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_level);
  type metadata accessor for GKLogTimer();
  swift_allocObject();

  v9 = sub_24E16B7EC(v7, a1, 0);
  sub_24E16BEA8();
  return v9;
}

uint64_t sub_24E16BD78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  OUTLINED_FUNCTION_5_16();
  sub_24E1578C4(v0 + v7, v6);
  v8 = sub_24E343368();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
  result = sub_24DFA9298(v6, &unk_27F1E5890);
  if (EnumTagSinglePayload == 1)
  {
    sub_24E343358();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
    return sub_24E16BC04(v3);
  }

  return result;
}

uint64_t sub_24E16BEA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  v4 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  OUTLINED_FUNCTION_5_16();
  sub_24E1578C4(v0 + v4, v3);
  v5 = sub_24E343368();
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v3, 1, v5);
  result = sub_24DFA9298(v3, &unk_27F1E5890);
  if (v4 == 1)
  {
    v7 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_children;
    swift_beginAccess();

    MEMORY[0x25303EA30](v8);
    sub_24E12448C(*((*(v0 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_24E347F88();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_24E16BFE8()
{
  v1 = v0;
  v2 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  sub_24E343C98();
  v9 = sub_24E347348();
  v10 = sub_24E343F78();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    v13 = sub_24E16C1BC(0, 0xE000000000000000);
    v15 = sub_24E1C2BE0(v13, v14, v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24DE53000, v10, v9, "GKLogTimer\n%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x253040EE0](v12, -1, -1);
    MEMORY[0x253040EE0](v11, -1, -1);
  }

  (*(v4 + 8))(v8, v2);
  v16 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_children;
  swift_beginAccess();
  *(v1 + v16) = MEMORY[0x277D84F90];
}

uint64_t sub_24E16C1BC(uint64_t a1, unint64_t a2)
{
  v35 = a1;
  v4 = sub_24E347018();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_messages;
  OUTLINED_FUNCTION_5_16();
  v15 = *(v2 + v14);
  v16 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime;
  OUTLINED_FUNCTION_5_16();
  sub_24E1578C4(v2 + v16, v13);
  v17 = sub_24E343368();
  LODWORD(v16) = __swift_getEnumTagSinglePayload(v13, 1, v17);

  sub_24DFA9298(v13, &unk_27F1E5890);
  if (v16 != 1 || (*(v2 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_isRoot) & 1) != 0)
  {
    goto LABEL_7;
  }

  v41[3] = MEMORY[0x277D837D0];
  v41[0] = 0xD000000000000010;
  v41[1] = 0x800000024E3A9A10;
  sub_24E346FE8();
  sub_24DFA9298(v41, &qword_27F1E0370);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v18 = *(v15 + 16);
    if (v18 >= *(v15 + 24) >> 1)
    {
      sub_24E0776BC();
      v15 = v32;
    }

    *(v15 + 16) = v18 + 1;
    (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v10, v4);
LABEL_7:
    sub_24E346FC8();
    v19 = sub_24E346FF8();
    v21 = v20;

    v39 = v19;
    v40 = v21;
    v6 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_children;
    OUTLINED_FUNCTION_5_16();
    v36 = *(v2 + v6);
    v22 = sub_24DFD8654(v36);
    if (!v22)
    {
      break;
    }

    v4 = v22;
    if (v22 >= 1)
    {
      v34 = v36 & 0xC000000000000001;

      v23 = 0;
      do
      {
        if (v34)
        {
          MEMORY[0x25303F560](v23, v36);
        }

        else
        {
        }

        ++v23;
        v37 = 10;
        v38 = 0xE100000000000000;
        v24 = v35;
        MEMORY[0x25303E950](v35, a2);

        MEMORY[0x25303E950](538976288, 0xE400000000000000);

        v25 = v37;
        v26 = v38;
        v37 = v24;
        v38 = a2;

        MEMORY[0x25303E950](538976288, 0xE400000000000000);
        v27 = sub_24E16C1BC(v37, v38);
        v29 = v28;

        v37 = v25;
        v38 = v26;

        MEMORY[0x25303E950](v27, v29);

        MEMORY[0x25303E950](v37, v38);
      }

      while (v4 != v23);

      return v39;
    }

    __break(1u);
LABEL_17:
    sub_24E0776BC();
    v15 = v31;
  }

  return v19;
}

uint64_t sub_24E16C5B4()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_level;
  sub_24E347358();
  OUTLINED_FUNCTION_0_26();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_startTime;
  sub_24E343368();
  OUTLINED_FUNCTION_0_26();
  (*(v4 + 8))(v0 + v3);
  sub_24DFA9298(v0 + OBJC_IVAR____TtC12GameCenterUI10GKLogTimer_endTime, &unk_27F1E5890);

  return v0;
}

uint64_t sub_24E16C67C()
{
  sub_24E16C5B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for GKLogTimer()
{
  result = qword_27F1E5F40;
  if (!qword_27F1E5F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E16C728()
{
  sub_24E347358();
  if (v0 <= 0x3F)
  {
    sub_24E343368();
    if (v1 <= 0x3F)
    {
      sub_24E16C844();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24E16C844()
{
  if (!qword_280BE0C18)
  {
    sub_24E343368();
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE0C18);
    }
  }
}

uint64_t sub_24E16C89C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_24E16C930()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage;
  OUTLINED_FUNCTION_5_16();
  return *(v0 + v1);
}

uint64_t sub_24E16C990(double a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage;
  result = OUTLINED_FUNCTION_5_68();
  *(v1 + v3) = a1;
  return result;
}

id OverlappingPlayersPhotoView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

id OverlappingPlayersPhotoView.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_78(OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews) = MEMORY[0x277D84F90];
  __asm { FMOV            V0.2D, #24.0 }

  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace) = 0;
  v10 = type metadata accessor for OverlappingPlayersPhotoView();
  v6 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v7, v8, v6, v0, v10);
}

id OverlappingPlayersPhotoView.__allocating_init(frame:layoutStyle:enableKnockoutSpace:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_29();
  v5 = objc_allocWithZone(v2);
  OUTLINED_FUNCTION_28();
  return OverlappingPlayersPhotoView.init(frame:layoutStyle:enableKnockoutSpace:)(a1, a2);
}

id OverlappingPlayersPhotoView.init(frame:layoutStyle:enableKnockoutSpace:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_29();
  v5 = *v4;
  OUTLINED_FUNCTION_3_78(OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage);
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews) = MEMORY[0x277D84F90];
  __asm { FMOV            V0.2D, #24.0 }

  *(v2 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize) = _Q0;
  v11 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle) = 0;
  v12 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace) = 0;
  swift_beginAccess();
  *(v2 + v11) = v5;
  swift_beginAccess();
  *(v2 + v12) = a2;
  v18 = type metadata accessor for OverlappingPlayersPhotoView();
  v13 = OUTLINED_FUNCTION_28();
  v16 = objc_msgSendSuper2(v14, v15, v13, v2, v18);
  [v16 setLayoutMargins_];
  return v16;
}

void sub_24E16CCB0()
{
  OUTLINED_FUNCTION_3_78(OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews) = MEMORY[0x277D84F90];
  __asm { FMOV            V0.2D, #24.0 }

  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E16CE70(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews) = a1;
  sub_24E16CEB8(v2);
}

uint64_t sub_24E16CEB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerViews;

  sub_24E12D790(v4, a1);
  v6 = v5;

  if (v6)
  {
    return result;
  }

  result = sub_24DFD8654(a1);
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_21;
    }

    for (i = 0; i != v8; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25303F560](i, a1);
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      v11 = v10;
      [v10 removeFromSuperview];
    }
  }

  v12 = *&v1[v3];
  result = sub_24DFD8654(v12);
  if (!result)
  {
    return result;
  }

  v13 = result;
  if (result < 1)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  for (j = 0; j != v13; ++j)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x25303F560](j, v12);
    }

    else
    {
      v15 = *(v12 + 8 * j + 32);
    }

    v16 = v15;
    [v1 addSubview_];
  }
}

uint64_t sub_24E16D024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E16D098(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_24E16D098@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle;
  result = OUTLINED_FUNCTION_5_16();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24E16D0E4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle;
  result = OUTLINED_FUNCTION_5_68();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24E16D1B0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace;
  OUTLINED_FUNCTION_5_16();
  return *(v0 + v1);
}

uint64_t sub_24E16D214(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace;
  result = OUTLINED_FUNCTION_5_68();
  *(v1 + v3) = a1;
  return result;
}

double sub_24E16D2FC()
{
  [v0 layoutMargins];
  sub_24E348538();
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize];
  v2 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage;
  OUTLINED_FUNCTION_5_16();
  v3 = *&v0[v2];
  OUTLINED_FUNCTION_5_16();

  sub_24E07A310();
  v5 = v4;

  v6 = *(v5 + 16);

  [v0 layoutMargins];
  return v1 * v6 - floor(v1 * v3) * (v6 + -1.0) + v7 + v8;
}

uint64_t sub_24E16D49C()
{
  v1 = v0;
  v2 = sub_24E344048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OverlappingPlayersPhotoView();
  v27.receiver = v0;
  v27.super_class = v6;
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  v7 = *&v0[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize];
  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize + 8];
  v9 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_overlapPercentage;
  OUTLINED_FUNCTION_5_16();
  v10 = *&v1[v9];
  v11 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_layoutStyle;
  OUTLINED_FUNCTION_5_16();
  v12 = v1[v11];

  sub_24E07A310();
  v14 = v13;

  v24[1] = v7;
  v24[2] = v8;
  v24[3] = v10;
  v25 = v12;
  v26 = v14;
  [v1 bounds];
  v16 = v15;
  v18 = v17;
  [v1 layoutMargins];
  sub_24E1FB2E4(v22, v21, v16 - v22 - v19, v18 - v21 - v20);
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E16D6B0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_24DFD8654(a1);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    result = sub_24E348A68();
    if ((v4 & 0x8000000000000000) == 0)
    {
      result = sub_24DFD8654(a1);
      v7 = 0;
      v8 = result & ~(result >> 63);
      while (v8 != v7)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25303F560](v7, a1);
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v9 = *(a1 + 8 * v7 + 32);
        }

        v10 = v9;
        sub_24E16D830(v7, v9, v2, a1);

        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        result = sub_24E348A58();
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }

        if (v4 == ++v7)
        {
          v5 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_24E16CE70(v5);

    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_24E16D830(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(GKDashboardPlayerPhotoView) init];
  [v8 setPlayer_];
  v9 = OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_enableKnockoutSpace;
  swift_beginAccess();
  if (a3[v9] != 1)
  {
    return v8;
  }

  result = sub_24DFD8654(a4);
  if (!__OFSUB__(result, 1))
  {
    if (result - 1 > a1)
    {
      v11 = &a3[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize];
      v12 = *&a3[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize];
      v13 = *&a3[OBJC_IVAR____TtC12GameCenterUI27OverlappingPlayersPhotoView_playerSize + 8];
      v14 = objc_opt_self();
      v15 = 0.0;
      v16 = [v14 bezierPathWithRect_];
      v17 = [a3 effectiveUserInterfaceLayoutDirection];
      if (v17 == 1)
      {
        v15 = *v11;
      }

      v18 = [v14 bezierPathWithArcCenter:v17 != 1 radius:v15 startAngle:v11[1] * 0.5 endAngle:v12 * 0.5 + 2.0 clockwise:{1.57079633, 4.71238898}];
      [v18 closePath];
      [v16 setUsesEvenOddFillRule_];
      [v16 appendPath_];
      v19 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
      v20 = v8;
      [v20 bounds];
      [v19 setFrame_];
      v21 = [v16 CGPath];
      [v19 setPath_];

      v22 = [v20 layer];
      [v22 setMask_];

      v23 = [v20 layer];
      [v23 setMasksToBounds_];
    }

    return v8;
  }

  __break(1u);
  return result;
}

id OverlappingPlayersPhotoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlappingPlayersPhotoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_5_68()
{

  return swift_beginAccess();
}

uint64_t sub_24E16DE00()
{
  type metadata accessor for PrivateProfileDescriptionProfileSection();
  result = swift_allocObject();
  *(result + 16) = 2577;
  return result;
}

uint64_t sub_24E16DE2C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E3433A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  memcpy(v42, __src, sizeof(v42));
  v9 = 0;
  if (sub_24DF8BF80(v42) != 1)
  {
    v34 = v5;
    memcpy(v43, v42, sizeof(v43));
    v10 = objc_opt_self();
    memcpy(v41, __dst, sizeof(v41));
    sub_24DF8BF98(v41, v39);
    v11 = [v10 configurationWithPointSize:5 weight:3 scale:30.0];
    sub_24DFC2C38();
    v12 = v11;
    v13 = sub_24E1A5748(0x73616C732E657965, 0xEE006C6C69662E68, v11);
    v33 = v12;

    v37 = v2;
    v38 = __src;
    v35 = v8;
    v36 = v3;
    if (!v13)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24E367D20;
    v32 = v13;
    v14 = sub_24E347CB8();
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();

    v17 = sub_24E347CF8();
    v31 = v18;

    v19 = sub_24E16E26C(v43);
    v21 = v20;
    v22 = type metadata accessor for EmptyStateData();
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    *(v9 + 56) = v22;
    *(v9 + 64) = sub_24E16E440(&qword_27F1DFD30, type metadata accessor for EmptyStateData);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
    *(boxed_opaque_existential_1 + 19) = 0u;
    boxed_opaque_existential_1[21] = 0;
    *(boxed_opaque_existential_1 + 17) = 0u;
    v24 = *(v22 + 52);
    v25 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v24, 1, 1, v25);
    boxed_opaque_existential_1[5] = v13;
    boxed_opaque_existential_1[6] = 0;
    *(boxed_opaque_existential_1 + 56) = 1;
    v26 = v31;
    boxed_opaque_existential_1[8] = v17;
    boxed_opaque_existential_1[9] = v26;
    boxed_opaque_existential_1[10] = v19;
    boxed_opaque_existential_1[11] = v21;
    *(boxed_opaque_existential_1 + 6) = 0u;
    *(boxed_opaque_existential_1 + 7) = 0u;
    *(boxed_opaque_existential_1 + 128) = 1;
    sub_24DF8BDF0(v39, (boxed_opaque_existential_1 + 17));
    v27 = v35;
    sub_24E343398();
    v29 = v36;
    v28 = v37;
    (*(v36 + 16))(v34, v27, v37);
    sub_24E16E440(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
    sub_24E348918();
    (*(v29 + 8))(v27, v28);
    sub_24DF8C95C(v39, &qword_27F1DEE90);

    sub_24DF8C95C(v38, &qword_27F1DEEA0);
  }

  return v9;
}

uint64_t sub_24E16E26C(id *a1)
{
  [*a1 achievementsVisibility];
  v1 = sub_24E347CB8();
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  v4 = sub_24E347CF8();
  return v4;
}

double sub_24E16E33C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HeaderData();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Shelf.Presentation(0);
  v4 = v3[5];
  v5 = type metadata accessor for FooterData(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[11];
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  v8 = a1 + v3[12];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a1 + v3[13]);
  v10 = (a1 + v3[14]);
  v11 = (a1 + v3[15]);
  *(a1 + v3[6]) = 0;
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v3[7]) = 1;
  *(a1 + v3[8]) = 1;
  *(a1 + v3[9]) = 1;
  *(a1 + v3[10]) = 0;
  return result;
}

uint64_t sub_24E16E440(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_24E16E498()
{
  sub_24DFEA770();
  OUTLINED_FUNCTION_0_122();
  v0 = sub_24E3485B8();
  OUTLINED_FUNCTION_0_122();
  v1 = sub_24E3485B8();
  v2 = [objc_opt_self() gk:v0 dynamicColorWithLightColor:v1 darkColor:?];

  qword_27F20AF10 = v2;
  result = 6.0;
  unk_27F20AF18 = xmmword_24E3792C0;
  qword_27F20AF28 = 0x4014000000000000;
  return result;
}

double sub_24E16E544()
{
  sub_24DFEA770();
  OUTLINED_FUNCTION_0_122();
  qword_27F20AF30 = sub_24E3485B8();
  result = 5.0;
  *algn_27F20AF38 = xmmword_24E37C4E0;
  qword_27F20AF48 = 0x4008000000000000;
  return result;
}

double sub_24E16E59C()
{
  sub_24DFEA770();
  OUTLINED_FUNCTION_0_122();
  qword_27F20AF50 = sub_24E3485B8();
  result = 6.0;
  *algn_27F20AF58 = xmmword_24E3792C0;
  qword_27F20AF68 = 0x4014000000000000;
  return result;
}

double sub_24E16E5F4()
{
  sub_24DFEA770();
  OUTLINED_FUNCTION_0_122();
  qword_27F20AF70 = sub_24E3485B8();
  result = 6.0;
  *algn_27F20AF78 = xmmword_24E3792C0;
  qword_27F20AF88 = 0x4000000000000000;
  return result;
}

id sub_24E16E684()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2820);
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  type metadata accessor for TitledParagraphData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  [objc_msgSend(v1 container)];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28();
  sub_24E348538();
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v14 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v14, qword_27F20BF00);
  v15 = [v1 traitCollection];
  sub_24E336638();

  sub_24E348538();
  sub_24E16F614(v13, v10);
  sub_24E16F5CC(&qword_27F1E2818, type metadata accessor for TitledParagraphData);
  sub_24E347158();
  type metadata accessor for TitledParagraphView();
  v16 = sub_24E0879D0(v7, v1);
  v18 = v17;
  (*(v4 + 8))(v7, v2, v16);
  v19 = objc_opt_self();
  v20 = [v19 fractionalWidthDimension_];
  v21 = [v19 absoluteDimension_];
  v22 = objc_opt_self();
  v23 = [v22 sizeWithWidthDimension:v20 heightDimension:v21];

  v24 = [objc_opt_self() itemWithLayoutSize_];
  v25 = [v23 widthDimension];
  v26 = [v23 heightDimension];
  v27 = [v22 sizeWithWidthDimension:v25 heightDimension:v26];

  v28 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_24E369990;
  *(v29 + 32) = v24;
  sub_24E1698C0();
  v30 = v24;
  v31 = sub_24E347EE8();

  v32 = [v28 verticalGroupWithLayoutSize:v27 subitems:v31];

  v33 = [objc_opt_self() sectionWithGroup_];
  sub_24E16F678(v13);
  return v33;
}

double sub_24E16EB84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = a4;
  v60 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v59 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  sub_24DF8BD90(a2, &v52 - v15, &unk_27F1E1CB0);
  sub_24DF8BD90(a3, &v16[*(v11 + 56)], &unk_27F1E1CB0);
  sub_24DF8BD90(v16, v13, &unk_27F1E1CA0);
  v17 = *(v11 + 56);
  sub_24E16EF44(v13, &v13[v17], v61);
  sub_24DF8BFF4(&v13[v17], &unk_27F1E1CB0);
  sub_24DF8BFF4(v13, &unk_27F1E1CB0);
  v18 = v61[0];
  v19 = v61[1];
  v20 = v61[2];
  v21 = v61[3];
  v22 = v61[4];
  v23 = v61[5];
  v24 = v62;
  if (v62 > 2u)
  {
    v45 = OUTLINED_FUNCTION_0_123();
    sub_24DFEC8B4(v45, v46, v47, v48, v49, v50, 3);
    OUTLINED_FUNCTION_3_79();
    v41 = *MEMORY[0x277D768C8];
  }

  else
  {
    v25 = OUTLINED_FUNCTION_0_123();
    sub_24DFD7E3C(v25, v26, v27, v28, v29, v30, v24);
    v31 = OUTLINED_FUNCTION_0_123();
    sub_24DFEC8B4(v31, v32, v33, v34, v35, v36, v24);
    OUTLINED_FUNCTION_3_79();
    v53 = v18;
    v54 = v19;
    v55 = v20;
    v56 = v21;
    v57 = v23;
    if (qword_27F1DDC40 != -1)
    {
      swift_once();
    }

    v37 = sub_24E3444F8();
    __swift_project_value_buffer(v37, qword_27F20B4D0);
    v38 = v58;
    v39 = [v58 traitCollection];
    sub_24E343F98();
    sub_24E3444C8();
    v41 = v40;

    v42 = *(v59 + 8);
    v43 = v60;
    v42(v9, v60);
    v44 = [v38 traitCollection];
    sub_24E343F98();
    sub_24E3444C8();

    sub_24DFEC8B4(v53, v54, v55, v56, v22, v57, v24);
    v42(v9, v43);
  }

  sub_24DF8BFF4(v16, &unk_27F1E1CA0);
  return v41;
}

uint64_t sub_24E16EF44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  sub_24DF8BD90(a1, &v14[-v8], &unk_27F1E1CB0);
  sub_24DF8BD90(a2, &v9[*(v7 + 56)], &unk_27F1E1CB0);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  sub_24DF8BFF4(v9, &unk_27F1E1CA0);
  v10 = type metadata accessor for PlayerCardTheme();
  v11 = __swift_project_value_buffer(v10, qword_27F20BF00);
  v12 = *(v10 + 68);
  memcpy(v15, (v11 + v12), 0x89uLL);
  memcpy(a3, (v11 + v12), 0x89uLL);
  return sub_24E15063C(v15, v14);
}

double sub_24E16F0A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  sub_24DF8BD90(a2, &v22 - v15, &unk_27F1E1CB0);
  sub_24DF8BD90(a3, &v16[*(v14 + 56)], &unk_27F1E1CB0);
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v17 = sub_24E3444F8();
  __swift_project_value_buffer(v17, qword_27F20B4E8);
  v18 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v20 = v19;

  (*(v9 + 8))(v12, v7);
  sub_24DF8BFF4(v16, &unk_27F1E1CA0);
  return v20;
}

id sub_24E16F2AC()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for TitledParagraphCollectionViewCell();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_24E16F320(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TitledParagraphCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24E16F3B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledParagraphCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TitledParagraphCollectionViewCell()
{
  result = qword_27F1E5F78;
  if (!qword_27F1E5F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E16F48C(uint64_t a1)
{
  result = sub_24E16F5CC(&qword_27F1E5F88, type metadata accessor for TitledParagraphCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E16F574(uint64_t a1)
{
  result = sub_24E16F5CC(&unk_27F1E5F90, type metadata accessor for TitledParagraphCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E16F5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E16F614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitledParagraphData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E16F678(uint64_t a1)
{
  v2 = type metadata accessor for TitledParagraphData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_3_79()
{

  sub_24DFEC8B4(0, 0, 0, 0, 0, 0, 3);
}

uint64_t sub_24E16F758(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenNavigationBar);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenNavigationBar) = a1;
  return sub_24E16FAE0(v2);
}

uint64_t sub_24E16F770(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver) = a1;

  sub_24E16FC9C(v2);
}

void sub_24E16F7D0()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    [v2 setDelegate_];
  }

  v4 = v1();
  if (v4)
  {
    v5 = v4;
    sub_24E010F0C();
  }
}

id BaseViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseViewController.init()()
{
  v0[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenNavigationBar] = 2;
  v0[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenTitle] = 0;
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_manualScrollEdgeAppearanceProgress];
  *v1 = 0;
  v1[8] = 1;
  v2 = OBJC_IVAR____TtC12GameCenterUI18BaseViewController_scrollObserver;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for ScrollViewDelegateObserver()) init];
  *&v0[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

void sub_24E16FA00()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenNavigationBar) = 2;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenTitle) = 0;
  v1 = v0 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_manualScrollEdgeAppearanceProgress;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC12GameCenterUI18BaseViewController_scrollObserver;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ScrollViewDelegateObserver()) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E16FAE0(uint64_t result)
{
  v2 = v1;
  v3 = v1[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenNavigationBar];
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else
  {
    if (result != 2 && ((v3 ^ result) & 1) == 0)
    {
      return result;
    }

    if (v3)
    {
      v4 = [v1 navigationItem];
      [v4 _setManualScrollEdgeAppearanceEnabled_];

      v5 = [v2 navigationItem];
      [v5 _setAutoScrollEdgeTransitionDistance_];

      v6 = [v2 navigationItem];
      [v6 _setManualScrollEdgeAppearanceEnabled_];

      goto LABEL_9;
    }
  }

  v7 = [v1 navigationItem];
  [v7 _setManualScrollEdgeAppearanceEnabled_];

  sub_24E16F770(0);
LABEL_9:
  v8 = [v2 navigationItem];
  type metadata accessor for NavigationBarVisibilityScrollObserver();
  swift_allocObject();
  v9 = sub_24DFEA1D8(v8);
  result = sub_24E16F770(v9);
  if (*&v2[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver])
  {
    v10 = v2[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenTitle];

    sub_24DFEA410(v10);
  }

  return result;
}

uint64_t sub_24E16FC9C(uint64_t result)
{
  v2 = v1;
  if (result)
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_wantsHiddenTitle);

    sub_24DFEA410(v3);

    sub_24E2261D8(v4);
  }

  if (*(v2 + OBJC_IVAR____TtC12GameCenterUI18BaseViewController_navbarScrollObserver))
  {

    sub_24E226244(v5, &off_286115AA0);
  }

  return result;
}

void sub_24E16FDC4()
{
  v1 = v0;
  if (([v0 isViewLoaded] & 1) == 0)
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(type metadata accessor for InsetViewControllerContentView()) initWithFrame_];
    [v11 setAutoresizingMask_];
    [v11 setLayoutMargins_];
    v12 = v11;
    sub_24DFEB9A0(0x6579614C656D6167, 0xEE0070756F724772);
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for PlayerCardTheme();
    v14 = __swift_project_value_buffer(v13, qword_27F20BF00);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *(v14 + 32);
    v18 = *(v14 + 40);
    v19 = *(v14 + 48);
    v20 = *(v14 + 56);
    v30[0] = *(v14 + 8);
    v30[1] = v15;
    v30[2] = v16;
    v30[3] = v17;
    v30[4] = v18;
    v30[5] = v19;
    v31 = v20;
    sub_24DFD7E3C(v30[0], v15, v16, v17, v18, v19, v20);
    sub_24DFEB8F4(v30);

    [v1 setView_];
    v21 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E367D20;
    v23 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 labelColor];
    v27 = [v26 colorWithAlphaComponent_];

    *(inited + 64) = sub_24DFEA770();
    *(inited + 40) = v27;
    type metadata accessor for Key(0);
    sub_24DFEA7B4();
    sub_24E347C28();
    v28 = sub_24E347BE8();

    [v21 setTitleTextAttributes_];

    v29 = [v1 navigationItem];
    [v29 setStandardAppearance_];
  }
}

id sub_24E17012C(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BaseViewController();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1 & 1);
  result = [v1 transitionCoordinator];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_24E17053C;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24DFFFA1C;
    v7[3] = &block_descriptor_57;
    v6 = _Block_copy(v7);

    [v4 animateAlongsideTransition:v6 completion:0];
    _Block_release(v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24E170250()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x88))();
    if (v2)
    {
      v3 = v2;
      v4 = *&v1[OBJC_IVAR____TtC12GameCenterUI18BaseViewController_scrollObserver];
      sub_24E010F0C();

      v1 = v4;
    }
  }
}

id BaseViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_24E1704B4(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E1705B0()
{
  type metadata accessor for DeviceRestrictedProfileSection();
  result = swift_allocObject();
  *(result + 16) = 5404;
  return result;
}

uint64_t sub_24E1705DC()
{
  v0 = sub_24E347458();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24E347478();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_24E3433A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  type metadata accessor for PrivacyAndSettingsProfileSection();
  v16 = 0;
  if (sub_24E2EE0CC())
  {
    v40 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24E367D20;
    v17 = sub_24E347CB8();
    v39 = v5;
    v18 = v17;
    v19 = GKGameCenterUIFrameworkBundle();
    v20 = GKGetLocalizedStringFromTableInBundle();
    v38 = v2;
    v21 = v20;

    v22 = sub_24E347CF8();
    v24 = v23;

    memset(v44, 0, 64);
    v44[64] = -1;
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    sub_24E343398();
    (*(v10 + 16))(v12, v15, v9);
    sub_24DF9D4DC(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
    sub_24E348918();
    (*(v10 + 8))(v15, v9);
    v25 = type metadata accessor for DetailData();
    *(v16 + 56) = v25;
    *(v16 + 64) = sub_24DF9D4DC(&qword_27F1DEE80, type metadata accessor for DetailData);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
    *(boxed_opaque_existential_1 + 25) = 0u;
    boxed_opaque_existential_1[27] = 0;
    *(boxed_opaque_existential_1 + 23) = 0u;
    v27 = *(v25 + 56);
    v37 = v27;
    v28 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v27, 1, 1, v28);
    v29 = boxed_opaque_existential_1 + *(v25 + 60);
    sub_24DF8BD34(v41, boxed_opaque_existential_1);
    *(boxed_opaque_existential_1 + 40) = 6;
    boxed_opaque_existential_1[6] = v22;
    boxed_opaque_existential_1[7] = v24;
    boxed_opaque_existential_1[9] = 0;
    boxed_opaque_existential_1[10] = 0;
    boxed_opaque_existential_1[8] = 0;
    sub_24DF8C8EC(v44, (boxed_opaque_existential_1 + 11));
    boxed_opaque_existential_1[20] = 0;
    boxed_opaque_existential_1[21] = 0;
    *(boxed_opaque_existential_1 + 88) = 0;
    *v29 = 0;
    v29[8] = 0;

    sub_24DF8BDF0(v42, (boxed_opaque_existential_1 + 23));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E369E30;
    strcpy((inited + 32), "impressionType");
    *(inited + 47) = -18;
    v31 = MEMORY[0x277D837D0];
    *(inited + 48) = 0x74656C63696863;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v31;
    *(inited + 80) = 0x6973736572706D69;
    v32 = MEMORY[0x277D83B88];
    *(inited + 88) = 0xEF7865646E496E6FLL;
    *(inited + 96) = 0;
    *(inited + 120) = v32;
    *(inited + 128) = 0x657079546469;
    *(inited + 136) = 0xE600000000000000;
    *(inited + 144) = 0x636974617473;
    *(inited + 152) = 0xE600000000000000;
    *(inited + 168) = v31;
    *(inited + 176) = 1701667182;
    *(inited + 216) = v31;
    *(inited + 184) = 0xE400000000000000;
    *(inited + 192) = v22;
    *(inited + 200) = v24;

    sub_24E347C28();
    sub_24E347468();
    sub_24E347448();
    v33 = MEMORY[0x277D84F90];
    sub_24E0241AC(MEMORY[0x277D84F90]);
    sub_24E0241AC(v33);
    v34 = v40;
    sub_24E347488();
    sub_24DF8BE60(v41);
    sub_24DF8C95C(v42, &qword_27F1DEE90);
    sub_24DF8C95C(v44, &qword_27F1DEE88);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v28);
    sub_24DF8BEB4(v34, boxed_opaque_existential_1 + v37);
  }

  return v16;
}

uint64_t sub_24E170BC8()
{
  type metadata accessor for ProfileSettingsProfileSection();
  result = swift_allocObject();
  *(result + 16) = 279;
  return result;
}

uint64_t sub_24E170BF4(uint64_t a1, void *a2)
{
  v4 = sub_24E347458();
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v80 = v7 - v6;
  v8 = sub_24E347478();
  v9 = OUTLINED_FUNCTION_4_5(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v78 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v13 = OUTLINED_FUNCTION_4_5(v12);
  MEMORY[0x28223BE20](v13);
  v79 = &v73 - v14;
  v15 = sub_24E3433A8();
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  v75 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  v74 = type metadata accessor for AlertAction();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v23 = (v22 - v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24E36BFC0;
  sub_24E05C1FC();
  v25 = sub_24E347CB8();
  v26 = GKGameCenterUIFrameworkBundle();
  v27 = OUTLINED_FUNCTION_1_94();

  v28 = sub_24E347CF8();
  v30 = v29;

  *(v24 + 32) = sub_24E3190AC(v28, v30, 1, 0, 0);
  v31 = sub_24E347CB8();
  v32 = GKGameCenterUIFrameworkBundle();
  v33 = OUTLINED_FUNCTION_1_94();

  v34 = sub_24E347CF8();
  v36 = v35;

  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  v38 = a2;
  *(v24 + 40) = sub_24E3190AC(v34, v36, 0, sub_24E171B3C, v37);
  v39 = sub_24E347CB8();
  v40 = GKGameCenterUIFrameworkBundle();
  v41 = GKGetLocalizedStringFromTableInBundle();

  v42 = sub_24E347CF8();
  v44 = v43;

  v45 = sub_24E347CB8();
  v46 = GKGameCenterUIFrameworkBundle();
  v47 = OUTLINED_FUNCTION_1_94();

  v48 = sub_24E347CF8();
  v50 = v49;

  v51 = v74;
  sub_24E3471C8();
  *v23 = v42;
  v23[1] = v44;
  v23[2] = v48;
  v23[3] = v50;
  v23[4] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_24E367D20;
  v53 = sub_24E347CB8();
  v54 = GKGameCenterUIFrameworkBundle();
  v55 = GKGetLocalizedStringFromTableInBundle();

  v56 = sub_24E347CF8();
  v58 = v57;

  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 2;
  v87 = 0;
  v88 = 7;
  v82[3] = v51;
  v82[4] = sub_24E171B9C(&qword_27F1E39A8, type metadata accessor for AlertAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  v74 = type metadata accessor for AlertAction;
  sub_24E171BE4(v23, boxed_opaque_existential_1, type metadata accessor for AlertAction);
  sub_24E343398();
  v60 = v76;
  v61 = v77;
  (*(v76 + 16))(v75, v19, v77);
  sub_24E171B9C(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v60 + 8))(v19, v61);
  v62 = type metadata accessor for DetailData();
  *(v52 + 56) = v62;
  *(v52 + 64) = sub_24E171B9C(&qword_27F1DEE80, type metadata accessor for DetailData);
  v63 = __swift_allocate_boxed_opaque_existential_1((v52 + 32));
  *(v63 + 25) = 0u;
  v63[27] = 0;
  *(v63 + 23) = 0u;
  v64 = *(v62 + 56);
  v77 = v64;
  v65 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v63 + v64, 1, 1, v65);
  v66 = v63 + *(v62 + 60);
  sub_24DF8BD34(v81, v63);
  *(v63 + 40) = 0;
  v63[6] = v56;
  v63[7] = v58;
  v63[9] = 0;
  v63[10] = 0;
  v63[8] = 0;
  sub_24DF8BD90(&v83, (v63 + 11), &qword_27F1DEE88);
  v63[20] = 0;
  v63[21] = 0;
  *(v63 + 88) = 256;
  *v66 = 0;
  v66[8] = 0;

  sub_24DF8BDF0(v82, (v63 + 23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  v68 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x74656C63696863;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 72) = v68;
  *(inited + 80) = 0x6973736572706D69;
  v69 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v69;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v68;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v68;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v56;
  *(inited + 200) = v58;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v70 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v70);
  v71 = v79;
  sub_24E347488();
  sub_24DF8BE60(v81);
  sub_24DF8BFF4(&v83, &qword_27F1DEE88);
  sub_24DF8BFF4(v82, &qword_27F1DEE90);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v65);
  sub_24DF8BEB4(v71, v63 + v77);
  sub_24E171B44(v23, v74);
  return v52;
}

void sub_24E171488(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26[-1] - v11;
  v13 = type metadata accessor for ExternalUrlAction();
  MEMORY[0x28223BE20](v13);
  v15 = &v26[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_objectGraph))
  {
    v25 = v4;

    sub_24E343268();
    v16 = sub_24E343288();
    if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
    {
      __break(1u);
    }

    else
    {
      v17 = sub_24E347CF8();
      v19 = v18;
      v20 = sub_24E347CF8();
      ActionMetrics.init(domain:eventType:)(v17, v19, v20, v21);
      (*(*(v16 - 8) + 32))(v15, v12, v16);
      v15[*(v13 + 20)] = 1;
      v15[*(v13 + 24)] = 0;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
      sub_24E347328();
      if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
      {
        sub_24E171B44(v15, type metadata accessor for ExternalUrlAction);

        sub_24DF8BFF4(v9, &unk_27F1EAC90);
      }

      else
      {
        v26[3] = v13;
        v26[4] = sub_24E171B9C(&qword_27F1DF0A8, type metadata accessor for ExternalUrlAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
        sub_24E171BE4(v15, boxed_opaque_existential_1, type metadata accessor for ExternalUrlAction);
        v24 = v25;
        (*(v25 + 104))(v6, *MEMORY[0x277D21E18], v3);
        sub_24E3473B8();

        (*(v24 + 8))(v6, v3);
        sub_24E171B44(v15, type metadata accessor for ExternalUrlAction);
        __swift_destroy_boxed_opaque_existential_1(v26);
        (*(*(v22 - 8) + 8))(v9, v22);
      }
    }
  }
}

double sub_24E1718C4@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70);
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v24 - v4;
  v6 = type metadata accessor for HeaderData();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  v7 = type metadata accessor for Shelf.Presentation(0);
  v8 = (a1 + v7[5]);
  v9 = sub_24E347CB8();
  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();

  v12 = sub_24E347CF8();
  v14 = v13;

  v15 = type metadata accessor for FooterData.Attachment(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v15);
  memset(v24, 0, 57);
  *v8 = v12;
  v8[1] = v14;
  sub_24DF8BBD0(v24, (v8 + 3));
  v16 = type metadata accessor for FooterData(0);
  sub_24DF8BD90(v5, v8 + *(v16 + 28), &qword_27F1DEE70);
  v17 = [objc_opt_self() labelColor];
  sub_24DF8BC2C(v24);
  sub_24DF8BFF4(v5, &qword_27F1DEE70);
  v8[2] = v17;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
  v18 = a1 + v7[11];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 1;
  v20 = a1 + v7[12];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (a1 + v7[13]);
  v22 = (a1 + v7[14]);
  v23 = (a1 + v7[15]);
  *(a1 + v7[6]) = 1;
  *v21 = 0;
  v21[1] = 0;
  *v22 = 0;
  v22[1] = 0;
  *v23 = 0;
  v23[1] = 0;
  *(a1 + v7[7]) = 1;
  *(a1 + v7[8]) = 1;
  *(a1 + v7[9]) = 1;
  *(a1 + v7[10]) = 0;
  return result;
}

uint64_t sub_24E171B44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E171B9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E171BE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_94()
{

  return GKGetLocalizedStringFromTableInBundle();
}

void sub_24E171C64()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v5 = sub_24E3476F8();
  v6 = OUTLINED_FUNCTION_4_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView) = 0;
  v7 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryImpressionsCalculator) = 0;
  v8 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_leftPaneBackgroundView;
  v9 = objc_allocWithZone(type metadata accessor for GradientView());
  v10 = OUTLINED_FUNCTION_1_38();
  *(v0 + v8) = [v11 v12];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_currentLayoutType) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_shouldDisplayCustomHeader) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCompositionalLayout) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource) = 0;
  v13 = (v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController____lazy_storage___updateCollectionViewConstraintOnce);
  *v13 = 0;
  v13[1] = 0;
  if (v2)
  {
    sub_24E347748();
    swift_unknownObjectRetain();
    sub_24E3476E8();
    *(v0 + v7) = sub_24E347708();
  }

  else
  {
    *(v0 + v7) = 0;
  }

  sub_24DFAE87C(v4, &v14, &qword_27F1E1B70);
  sub_24E137668();
  sub_24DF8BFF4(v4, &qword_27F1E1B70);
  OUTLINED_FUNCTION_18();
}

void sub_24E171E14()
{
  OUTLINED_FUNCTION_32();
  v1 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  sub_24DFFE8A4();
  v8 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_5_16();
  v17 = v0;
  v9 = *&v0[v8];
  if (v9)
  {
    v10 = sub_24E0002EC(v9);
    if (!v10)
    {
LABEL_9:
      OUTLINED_FUNCTION_18();
      return;
    }

    v11 = v10;
    v12 = 0;
    v13 = *(v10 + 16);
    while (1)
    {
      if (v13 == v12)
      {

        goto LABEL_9;
      }

      if (v12 >= *(v11 + 16))
      {
        break;
      }

      (*(v3 + 16))(v7, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v1);
      v14 = [v17 collectionView];
      if (!v14)
      {
        goto LABEL_11;
      }

      v15 = v14;
      ++v12;
      v16 = sub_24E343488();
      [v15 deselectItemAtIndexPath:v16 animated:1];

      (*(v3 + 8))(v7, v1);
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  __break(1u);
}

void sub_24E171FBC()
{
  if (GKIsPadUIIdiom() || GKIsXRUIIdiomShouldUsePadUI())
  {
    if ((*((*MEMORY[0x277D85000] & *v0) + 0x370))())
    {
      v1 = [v0 view];
      if (v1)
      {
        v2 = v1;
        [v1 frame];
        OUTLINED_FUNCTION_8_2();

        v4.origin.x = OUTLINED_FUNCTION_7_2();
        CGRectGetWidth(v4);
        GKIsXRUIIdiomShouldUsePadUI();
        OUTLINED_FUNCTION_34_9();
        OUTLINED_FUNCTION_42_6();
        if (qword_27F1DD8E0 != -1)
        {
          OUTLINED_FUNCTION_1_95();
        }

        GKIsXRUIIdiomShouldUsePadUI();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v3 = [v0 safeAreaLayoutGuide];
      [v3 layoutFrame];
      OUTLINED_FUNCTION_8_2();

      v5.origin.x = OUTLINED_FUNCTION_7_2();
      CGRectGetWidth(v5);
      if (qword_27F1DD8E0 != -1)
      {
        OUTLINED_FUNCTION_1_95();
      }
    }
  }
}

void *sub_24E172184()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_17_28();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24E1721C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_22_6();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24E17226C()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x370))();
  if (result)
  {
    result = GKIsPadUIIdiom();
    if (result)
    {
      result = [v0 view];
      if (result)
      {
        v2 = result;
        [result frame];
        OUTLINED_FUNCTION_8_2();

        v3.origin.x = OUTLINED_FUNCTION_7_2();
        CGRectGetWidth(v3);
        GKIsXRUIIdiomShouldUsePadUI();
        OUTLINED_FUNCTION_34_9();
        OUTLINED_FUNCTION_42_6();
        if (qword_27F1DD8E0 != -1)
        {
          OUTLINED_FUNCTION_1_95();
        }

        return GKIsXRUIIdiomShouldUsePadUI();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_24E1723A4()
{
  if (v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_currentLayoutType] != 1)
  {
    v1 = OUTLINED_FUNCTION_19_16();
    if (v1)
    {
      v2 = v1;
      [v1 setScrollsToTop_];

      v3 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
      OUTLINED_FUNCTION_17_28();
      v4 = *&v0[v3];
      if (v4)
      {
        [v4 setScrollsToTop_];
        v5 = OUTLINED_FUNCTION_19_16();
        if (v5)
        {
          v6 = v5;
          [v5 _gkRemoveAllConstraints];

          v7 = *&v0[v3];
          if (v7)
          {
            [v7 _gkRemoveAllConstraints];
            if (v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_shouldDisplayCustomHeader])
            {
              v8 = 165.0;
            }

            else
            {
              v8 = 0.0;
            }

            v9 = [v0 traitCollection];
            v10 = [v9 userInterfaceIdiom];

            v11 = &unk_24E36D000;
            v12 = &selRef_applyTextStyle_;
            if (v10 == 1 || GKIsXRUIIdiomShouldUsePadUI())
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
              v13 = OUTLINED_FUNCTION_26_18();
              *(v13 + 16) = xmmword_24E36D5F0;
              v14 = OUTLINED_FUNCTION_19_16();
              if (!v14)
              {
LABEL_50:
                __break(1u);
                goto LABEL_51;
              }

              v15 = OUTLINED_FUNCTION_55_2(v14);

              v16 = OUTLINED_FUNCTION_24_14();
              if (!v16)
              {
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }

              v17 = OUTLINED_FUNCTION_55_2(v16);

              v18 = OUTLINED_FUNCTION_22_20();
              v20 = [v18 v19];

              *(v13 + 32) = v20;
              v21 = OUTLINED_FUNCTION_19_16();
              if (!v21)
              {
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

              v22 = v21;
              v23 = [v21 topAnchor];

              v24 = OUTLINED_FUNCTION_24_14();
              if (!v24)
              {
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              v25 = v24;
              v26 = [v24 topAnchor];

              v27 = OUTLINED_FUNCTION_22_20();
              v29 = [v27 v28];

              *(v13 + 40) = v29;
              v30 = OUTLINED_FUNCTION_19_16();
              if (!v30)
              {
LABEL_54:
                __break(1u);
                goto LABEL_55;
              }

              v31 = v30;
              v32 = [v30 bottomAnchor];

              v33 = OUTLINED_FUNCTION_24_14();
              if (!v33)
              {
LABEL_55:
                __break(1u);
                goto LABEL_56;
              }

              v34 = v33;
              v35 = &selRef_applyTextStyle_;
              v36 = [v33 bottomAnchor];

              v37 = OUTLINED_FUNCTION_22_20();
              v39 = [v37 v38];

              *(v13 + 48) = v39;
              v40 = OUTLINED_FUNCTION_19_16();
              if (!v40)
              {
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

              v11 = v40;
              v12 = &selRef_trailingAnchor;
              v41 = [v40 trailingAnchor];

              v42 = OUTLINED_FUNCTION_24_14();
              if (v42)
              {
LABEL_28:
                v70 = v42;
                v71 = objc_opt_self();
                v72 = [v70 *v12];

                v73 = OUTLINED_FUNCTION_13_36();
                v75 = [v73 v74];

                *(v13 + 56) = v75;
                sub_24DF88A8C(0, &qword_27F1E1F10);
                v76 = sub_24E347EE8();

                [v71 activateConstraints_];

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
                v77 = OUTLINED_FUNCTION_26_18();
                *(v77 + 16) = xmmword_24E36D5F0;
                v78 = *&v0[v3];
                if (v78)
                {
                  v79 = [v78 trailingAnchor];
                  v80 = OUTLINED_FUNCTION_24_14();
                  if (v80)
                  {
                    v81 = v80;
                    v82 = [v80 trailingAnchor];

                    v83 = OUTLINED_FUNCTION_11_32();
                    v85 = [v83 v84];

                    *(v77 + 32) = v85;
                    v86 = *&v0[v3];
                    if (v86)
                    {
                      v87 = [v86 topAnchor];
                      v88 = OUTLINED_FUNCTION_24_14();
                      if (v88)
                      {
                        v89 = OUTLINED_FUNCTION_53_3(v88);

                        v90 = OUTLINED_FUNCTION_11_32();
                        v92 = [v90 v91];

                        *(v77 + 40) = v92;
                        v93 = *&v0[v3];
                        if (v93)
                        {
                          v94 = [v93 v35 + 3365];
                          v95 = OUTLINED_FUNCTION_24_14();
                          if (v95)
                          {
                            v96 = v95;
                            v97 = [v95 v35 + 3365];

                            v98 = OUTLINED_FUNCTION_11_32();
                            v100 = [v98 v99];

                            *(v77 + 48) = v100;
                            v101 = *&v0[v3];
                            if (v101)
                            {
                              v102 = objc_opt_self();
                              v103 = [v101 widthAnchor];
                              v104 = [v103 constraintEqualToConstant_];

                              *(v77 + 56) = v104;
                              v105 = sub_24E347EE8();

                              [v102 activateConstraints_];

                              v106 = OUTLINED_FUNCTION_24_14();
                              if (v106)
                              {
                                v107 = v106;
                                [v106 setNeedsLayout];

                                return;
                              }

                              goto LABEL_49;
                            }

LABEL_48:
                            __break(1u);
LABEL_49:
                            __break(1u);
                            goto LABEL_50;
                          }

LABEL_47:
                          __break(1u);
                          goto LABEL_48;
                        }

LABEL_46:
                        __break(1u);
                        goto LABEL_47;
                      }

LABEL_45:
                      __break(1u);
                      goto LABEL_46;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

              __break(1u);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
            v13 = OUTLINED_FUNCTION_26_18();
            *(v13 + 16) = v11[95];
            v43 = OUTLINED_FUNCTION_19_16();
            if (!v43)
            {
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

            v44 = OUTLINED_FUNCTION_55_2(v43);

            v45 = OUTLINED_FUNCTION_24_14();
            if (!v45)
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            v46 = OUTLINED_FUNCTION_55_2(v45);

            v47 = OUTLINED_FUNCTION_22_20();
            v49 = [v47 v48];

            *(v13 + 32) = v49;
            v50 = OUTLINED_FUNCTION_19_16();
            if (!v50)
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            v51 = v50;
            v52 = [v50 topAnchor];

            v53 = OUTLINED_FUNCTION_24_14();
            if (!v53)
            {
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v54 = v53;
            v55 = [v53 topAnchor];

            v56 = OUTLINED_FUNCTION_22_20();
            v58 = [v56 v57];

            *(v13 + 40) = v58;
            v59 = OUTLINED_FUNCTION_19_16();
            if (!v59)
            {
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            v60 = v59;
            v61 = [v59 v12[119]];

            v62 = OUTLINED_FUNCTION_24_14();
            if (!v62)
            {
LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

            v63 = v62;
            v35 = v12;
            v64 = [v62 v12[119]];

            v65 = OUTLINED_FUNCTION_22_20();
            v67 = [v65 v66];

            *(v13 + 48) = v67;
            v68 = OUTLINED_FUNCTION_19_16();
            if (!v68)
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

            v69 = v68;
            v12 = &selRef_widthAnchor;
            v41 = [v68 widthAnchor];

            v42 = OUTLINED_FUNCTION_24_14();
            if (!v42)
            {
LABEL_64:
              __break(1u);
              return;
            }

            goto LABEL_28;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_40;
  }
}

void sub_24E172BF4()
{
  if (v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_currentLayoutType] != 2)
  {
    v2 = OUTLINED_FUNCTION_18_28();
    if (v2)
    {
      v3 = v2;
      [v2 setScrollsToTop_];

      v4 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
      OUTLINED_FUNCTION_5_16();
      v5 = *&v0[v4];
      if (v5)
      {
        [v5 setScrollsToTop_];
        v6 = OUTLINED_FUNCTION_18_28();
        if (v6)
        {
          v7 = v6;
          [v6 _gkRemoveAllConstraints];

          v8 = *&v0[v4];
          if (v8)
          {
            [v8 _gkRemoveAllConstraints];
            if (v0[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_shouldDisplayCustomHeader])
            {
              v9 = 165.0;
            }

            else
            {
              v9 = 0.0;
            }

            v10 = [v0 view];
            if (v10)
            {
              v11 = v10;
              v12 = [v10 traitCollection];

              v13 = [v12 userInterfaceIdiom];
              if (v13 == 2)
              {
                v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
                v92 = OUTLINED_FUNCTION_26_18();
                *(v92 + 16) = xmmword_24E36D5F0;
                v93 = OUTLINED_FUNCTION_18_28();
                if (!v93)
                {
LABEL_109:
                  __break(1u);
LABEL_110:
                  __break(1u);
                  goto LABEL_111;
                }

                v94 = v93;
                v95 = [v93 topAnchor];

                v96 = [v0 view];
                if (!v96)
                {
LABEL_111:
                  __break(1u);
                  goto LABEL_112;
                }

                v97 = v96;
                v98 = [v96 topAnchor];

                v99 = [v95 constraintEqualToAnchor:v98 constant:v9];
                *(v92 + 32) = v99;
                v100 = OUTLINED_FUNCTION_18_28();
                if (!v100)
                {
LABEL_113:
                  __break(1u);
                  goto LABEL_114;
                }

                v101 = v100;
                v102 = [v100 bottomAnchor];

                v103 = [v0 view];
                if (!v103)
                {
LABEL_115:
                  __break(1u);
                  goto LABEL_116;
                }

                v104 = v103;
                v105 = [v103 bottomAnchor];

                v106 = [v102 constraintEqualToAnchor_];
                *(v92 + 40) = v106;
                v107 = OUTLINED_FUNCTION_18_28();
                if (!v107)
                {
LABEL_117:
                  __break(1u);
                  goto LABEL_118;
                }

                v108 = v107;
                v109 = [v107 trailingAnchor];

                v110 = *&v0[v4];
                if (!v110)
                {
LABEL_119:
                  __break(1u);
                  goto LABEL_120;
                }

                v111 = [v110 leadingAnchor];
                ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
                v113 = -44.0;
                if (ShouldUsePadUI)
                {
                  v113 = -24.0;
                }

                v114 = [v109 constraintEqualToAnchor:v111 constant:{v113, 4, 9}];

                *(v92 + 48) = v114;
                v115 = OUTLINED_FUNCTION_18_28();
                if (!v115)
                {
                  goto LABEL_121;
                }

                v116 = v115;
                v117 = objc_opt_self();
                v118 = [v116 widthAnchor];

                v119 = [v118 constraintEqualToConstant_];
                *(v92 + 56) = v119;
                sub_24DF88A8C(0, &qword_27F1E1F10);
                v120 = sub_24E347EE8();

                [v117 activateConstraints_];

                v121 = [v0 view];
                if (!v121)
                {
LABEL_123:
                  __break(1u);
                  goto LABEL_124;
                }

                v122 = v121;
                [v121 frame];
                OUTLINED_FUNCTION_14_27();

                if (OUTLINED_FUNCTION_19_23() <= 0.0)
                {
                  v124 = [objc_opt_self() mainScreen];
                  [v124 bounds];
                }

                else
                {
                  v123 = [v0 view];
                  if (!v123)
                  {
LABEL_154:
                    __break(1u);
                    goto LABEL_155;
                  }

                  v124 = v123;
                  [v123 frame];
                }

                OUTLINED_FUNCTION_14_27();

                v262 = OUTLINED_FUNCTION_19_23();
                if (GKIsXRUIIdiomShouldUsePadUI())
                {
                  v263 = 1244.0;
                }

                else
                {
                  v263 = 1264.0;
                }

                v264 = OUTLINED_FUNCTION_21_22();
                v272 = OUTLINED_FUNCTION_8_50(v264, v265, v266, v267, v268, v269, v270, v271, v294);
                if (!v272)
                {
                  goto LABEL_125;
                }

                v273 = [v272 topAnchor];
                v274 = [v0 view];
                if (!v274)
                {
LABEL_127:
                  __break(1u);
                  goto LABEL_128;
                }

                v275 = v274;
                v276 = [v274 &selRef_updateNavHeaderHeightAndOpacity];

                v277 = [v273 constraintEqualToAnchor:v276 constant:v9];
                v278 = OUTLINED_FUNCTION_46_5();
                if (!v278)
                {
LABEL_129:
                  __break(1u);
                  goto LABEL_130;
                }

                v279 = OUTLINED_FUNCTION_56_2(v278);
                v280 = [v0 view];
                if (!v280)
                {
LABEL_131:
                  __break(1u);
                  goto LABEL_132;
                }

                v281 = OUTLINED_FUNCTION_50_3(v280);

                v282 = [v279 constraintEqualToAnchor_];
                v283 = OUTLINED_FUNCTION_45_5();
                if (!v283)
                {
LABEL_133:
                  __break(1u);
                  goto LABEL_134;
                }

                v284 = [v283 widthAnchor];
                v285 = [v284 constraintEqualToConstant_];

                v286 = OUTLINED_FUNCTION_43_5();
                if (!v286)
                {
LABEL_135:
                  __break(1u);
                  goto LABEL_136;
                }

                v287 = OUTLINED_FUNCTION_52_2(v286);
                v288 = [v0 view];
                if (!v288)
                {
LABEL_137:
                  __break(1u);
                  goto LABEL_138;
                }

                v289 = v288;
                v290 = [v288 v281[197]];

                v291 = [v287 constraintEqualToAnchor:v290 constant:(v262 - v263) * -0.5];
                *(v91 + 56) = v291;
                v261 = sub_24E347EE8();

                [v117 &selRef:v261 :? gkModifyTopConstraintToLayoutGuideForSubview:? + 3];
              }

              else
              {
                if (v13 == 1)
                {
                  v14 = [v0 view];
                  if (!v14)
                  {
LABEL_108:
                    __break(1u);
                    goto LABEL_109;
                  }

                  v15 = v14;
                  [v14 frame];
                  OUTLINED_FUNCTION_14_27();

                  v16 = OUTLINED_FUNCTION_19_23();
                  GKIsXRUIIdiomShouldUsePadUI();
                  OUTLINED_FUNCTION_34_9();
                  if (v18)
                  {
                    v19 = v17;
                  }

                  else
                  {
                    v19 = 24.0;
                  }

                  if (qword_27F1DD8E0 != -1)
                  {
                    OUTLINED_FUNCTION_1_95();
                  }

                  v20 = *&qword_27F1E5FD8;
                  v21 = 22.0;
                  if (GKIsXRUIIdiomShouldUsePadUI())
                  {
                    v22 = 12.0;
                  }

                  else
                  {
                    v22 = 22.0;
                  }

                  v23 = *&qword_27F1E5FD8;
                  if (GKIsXRUIIdiomShouldUsePadUI())
                  {
                    v21 = 12.0;
                  }

                  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
                  v25 = OUTLINED_FUNCTION_26_18();
                  *(v25 + 16) = xmmword_24E36D5F0;
                  v26 = OUTLINED_FUNCTION_18_28();
                  if (!v26)
                  {
                    goto LABEL_110;
                  }

                  v27 = OUTLINED_FUNCTION_39_4(v26);

                  v28 = [v0 view];
                  if (!v28)
                  {
LABEL_112:
                    __break(1u);
                    goto LABEL_113;
                  }

                  v29 = OUTLINED_FUNCTION_53_3(v28);

                  v30 = OUTLINED_FUNCTION_11_32();
                  v32 = [v30 v31];

                  *(v25 + 32) = v32;
                  v33 = OUTLINED_FUNCTION_18_28();
                  if (!v33)
                  {
LABEL_114:
                    __break(1u);
                    goto LABEL_115;
                  }

                  v34 = OUTLINED_FUNCTION_38_7(v33);

                  v35 = [v0 view];
                  if (!v35)
                  {
LABEL_116:
                    __break(1u);
                    goto LABEL_117;
                  }

                  v36 = v35;
                  v37 = [v35 v29 + 3365];

                  v38 = OUTLINED_FUNCTION_11_32();
                  v40 = [v38 v39];

                  *(v25 + 40) = v40;
                  v41 = OUTLINED_FUNCTION_18_28();
                  if (!v41)
                  {
LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }

                  v42 = OUTLINED_FUNCTION_54_2(v41);

                  v43 = [v0 view];
                  if (!v43)
                  {
LABEL_120:
                    __break(1u);
LABEL_121:
                    __break(1u);
                    goto LABEL_122;
                  }

                  v44 = OUTLINED_FUNCTION_54_2(v43);

                  v45 = OUTLINED_FUNCTION_11_32();
                  v47 = [v45 v46];

                  *(v25 + 48) = v47;
                  v48 = OUTLINED_FUNCTION_18_28();
                  if (!v48)
                  {
LABEL_122:
                    __break(1u);
                    goto LABEL_123;
                  }

                  v49 = v48;
                  v50 = (v16 + -320.0 - v19 - v20) * 0.5;
                  v51 = objc_opt_self();
                  v52 = [v49 widthAnchor];

                  v53 = [v52 constraintEqualToConstant_];
                  *(v25 + 56) = v53;
                  sub_24DF88A8C(0, &qword_27F1E1F10);
                  v54 = OUTLINED_FUNCTION_40_7();

                  v55 = OUTLINED_FUNCTION_11_32();
                  [v55 v56];

                  v57 = OUTLINED_FUNCTION_21_22();
                  v65 = OUTLINED_FUNCTION_8_50(v57, v58, v59, v60, v61, v62, v63, v64, xmmword_24E36D5F0);
                  if (!v65)
                  {
LABEL_124:
                    __break(1u);
LABEL_125:
                    __break(1u);
                    goto LABEL_126;
                  }

                  v66 = [v65 topAnchor];
                  v67 = [v0 view];
                  if (!v67)
                  {
LABEL_126:
                    __break(1u);
                    goto LABEL_127;
                  }

                  v68 = v67;
                  v69 = [v67 topAnchor];

                  v70 = OUTLINED_FUNCTION_13_36();
                  v72 = [v70 v71];

                  v73 = OUTLINED_FUNCTION_46_5();
                  if (!v73)
                  {
LABEL_128:
                    __break(1u);
                    goto LABEL_129;
                  }

                  v74 = OUTLINED_FUNCTION_56_2(v73);
                  v75 = [v0 view];
                  if (!v75)
                  {
LABEL_130:
                    __break(1u);
                    goto LABEL_131;
                  }

                  v76 = OUTLINED_FUNCTION_50_3(v75);

                  v77 = OUTLINED_FUNCTION_13_36();
                  v79 = [v77 v78];

                  v80 = OUTLINED_FUNCTION_45_5();
                  if (!v80)
                  {
LABEL_132:
                    __break(1u);
                    goto LABEL_133;
                  }

                  v81 = OUTLINED_FUNCTION_52_2(v80);
                  v82 = [v0 view];
                  if (!v82)
                  {
LABEL_134:
                    __break(1u);
                    goto LABEL_135;
                  }

                  v83 = v82;
                  v84 = [v82 v76[197]];

                  v85 = OUTLINED_FUNCTION_13_36();
                  v87 = [v85 v86];

                  v88 = OUTLINED_FUNCTION_43_5();
                  if (!v88)
                  {
LABEL_136:
                    __break(1u);
                    goto LABEL_137;
                  }

                  v89 = [v88 widthAnchor];
                  v90 = [v89 constraintEqualToConstant_];
                }

                else
                {
                  v125 = GKIsXRUIIdiomShouldUsePadUI();
                  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
                  v126 = OUTLINED_FUNCTION_26_18();
                  *(v126 + 16) = xmmword_24E36D5F0;
                  v127 = OUTLINED_FUNCTION_18_28();
                  v128 = v127;
                  if (v125)
                  {
                    if (!v127)
                    {
LABEL_138:
                      __break(1u);
                      goto LABEL_139;
                    }

                    v129 = [v127 leadingAnchor];

                    v130 = [v0 view];
                    if (!v130)
                    {
LABEL_140:
                      __break(1u);
                      goto LABEL_141;
                    }

                    v131 = OUTLINED_FUNCTION_54_2(v130);

                    v132 = OUTLINED_FUNCTION_11_32();
                    v134 = [v132 v133];

                    *(v126 + 32) = v134;
                    v135 = OUTLINED_FUNCTION_18_28();
                    if (!v135)
                    {
LABEL_142:
                      __break(1u);
                      goto LABEL_143;
                    }

                    v136 = OUTLINED_FUNCTION_39_4(v135);

                    v137 = [v0 view];
                    if (!v137)
                    {
LABEL_144:
                      __break(1u);
                      goto LABEL_145;
                    }

                    v138 = OUTLINED_FUNCTION_53_3(v137);

                    v139 = OUTLINED_FUNCTION_11_32();
                    v141 = [v139 v140];

                    *(v126 + 40) = v141;
                    v142 = OUTLINED_FUNCTION_18_28();
                    if (!v142)
                    {
LABEL_146:
                      __break(1u);
                      goto LABEL_147;
                    }

                    v143 = OUTLINED_FUNCTION_38_7(v142);

                    v144 = [v0 view];
                    if (!v144)
                    {
LABEL_148:
                      __break(1u);
                      goto LABEL_149;
                    }

                    v145 = v144;
                    v146 = [v144 v138 + 3365];

                    v147 = OUTLINED_FUNCTION_11_32();
                    v149 = [v147 v148];

                    *(v126 + 48) = v149;
                    v150 = OUTLINED_FUNCTION_18_28();
                    if (!v150)
                    {
LABEL_150:
                      __break(1u);
                      goto LABEL_151;
                    }

                    v151 = v150;
                    v152 = [v150 widthAnchor];

                    v153 = [v0 view];
                    if (!v153)
                    {
LABEL_152:
                      __break(1u);
                      goto LABEL_153;
                    }

                    v154 = v153;
                    v51 = objc_opt_self();
                    v155 = [v154 widthAnchor];

                    v156 = [v152 constraintEqualToAnchor:v155 multiplier:0.387755102];
                    *(v126 + 56) = v156;
                    sub_24DF88A8C(0, &qword_27F1E1F10);
                    v157 = OUTLINED_FUNCTION_40_7();

                    v158 = OUTLINED_FUNCTION_11_32();
                    [v158 v159];

                    v160 = OUTLINED_FUNCTION_21_22();
                    v168 = OUTLINED_FUNCTION_8_50(v160, v161, v162, v163, v164, v165, v166, v167, xmmword_24E36D5F0);
                    if (!v168)
                    {
LABEL_155:
                      __break(1u);
                      goto LABEL_156;
                    }

                    v169 = OUTLINED_FUNCTION_52_2(v168);
                    v170 = [v0 view];
                    if (!v170)
                    {
LABEL_157:
                      __break(1u);
                      goto LABEL_158;
                    }

                    v171 = v170;
                    v172 = [v170 MEMORY[0x277CCB0F8]];

                    v173 = OUTLINED_FUNCTION_13_36();
                    v175 = [v173 v174];

                    v176 = OUTLINED_FUNCTION_46_5();
                    if (!v176)
                    {
LABEL_159:
                      __break(1u);
                      goto LABEL_160;
                    }

                    v177 = [v176 topAnchor];
                    v178 = [v0 view];
                    if (!v178)
                    {
LABEL_161:
                      __break(1u);
                      goto LABEL_162;
                    }

                    v179 = v178;
                    v180 = [v178 topAnchor];

                    v181 = OUTLINED_FUNCTION_13_36();
                    v183 = [v181 v182];

                    v184 = OUTLINED_FUNCTION_45_5();
                    if (!v184)
                    {
LABEL_163:
                      __break(1u);
                      goto LABEL_164;
                    }

                    v185 = OUTLINED_FUNCTION_56_2(v184);
                    v186 = [v0 view];
                    if (!v186)
                    {
LABEL_165:
                      __break(1u);
                      goto LABEL_166;
                    }

                    v187 = OUTLINED_FUNCTION_50_3(v186);

                    v188 = OUTLINED_FUNCTION_13_36();
                    v190 = [v188 v189];

                    v191 = OUTLINED_FUNCTION_43_5();
                    if (!v191)
                    {
LABEL_167:
                      __break(1u);
                      goto LABEL_168;
                    }

                    v192 = [v191 widthAnchor];
                    v193 = [v0 view];
                    if (!v193)
                    {
LABEL_169:
                      __break(1u);
                      goto LABEL_170;
                    }
                  }

                  else
                  {
                    if (!v127)
                    {
LABEL_139:
                      __break(1u);
                      goto LABEL_140;
                    }

                    v194 = [v127 leadingAnchor];

                    v195 = [v0 view];
                    if (!v195)
                    {
LABEL_141:
                      __break(1u);
                      goto LABEL_142;
                    }

                    v196 = OUTLINED_FUNCTION_54_2(v195);

                    v197 = OUTLINED_FUNCTION_11_32();
                    v199 = [v197 v198];

                    *(v126 + 32) = v199;
                    v200 = OUTLINED_FUNCTION_18_28();
                    if (!v200)
                    {
LABEL_143:
                      __break(1u);
                      goto LABEL_144;
                    }

                    v201 = OUTLINED_FUNCTION_39_4(v200);

                    v202 = [v0 view];
                    if (!v202)
                    {
LABEL_145:
                      __break(1u);
                      goto LABEL_146;
                    }

                    v203 = OUTLINED_FUNCTION_53_3(v202);

                    v204 = OUTLINED_FUNCTION_11_32();
                    v206 = [v204 v205];

                    *(v126 + 40) = v206;
                    v207 = OUTLINED_FUNCTION_18_28();
                    if (!v207)
                    {
LABEL_147:
                      __break(1u);
                      goto LABEL_148;
                    }

                    v208 = OUTLINED_FUNCTION_38_7(v207);

                    v209 = [v0 view];
                    if (!v209)
                    {
LABEL_149:
                      __break(1u);
                      goto LABEL_150;
                    }

                    v210 = v209;
                    v211 = [v209 v203 + 3365];

                    v212 = OUTLINED_FUNCTION_11_32();
                    v214 = [v212 v213];

                    *(v126 + 48) = v214;
                    v215 = OUTLINED_FUNCTION_18_28();
                    if (!v215)
                    {
LABEL_151:
                      __break(1u);
                      goto LABEL_152;
                    }

                    v216 = v215;
                    v217 = [v215 widthAnchor];

                    v218 = [v0 view];
                    if (!v218)
                    {
LABEL_153:
                      __break(1u);
                      goto LABEL_154;
                    }

                    v219 = v218;
                    v51 = objc_opt_self();
                    v220 = [v219 widthAnchor];

                    v221 = [v217 constraintEqualToAnchor:v220 multiplier:0.5];
                    *(v126 + 56) = v221;
                    sub_24DF88A8C(0, &qword_27F1E1F10);
                    v222 = OUTLINED_FUNCTION_40_7();

                    v223 = OUTLINED_FUNCTION_11_32();
                    [v223 v224];

                    v225 = OUTLINED_FUNCTION_21_22();
                    v233 = OUTLINED_FUNCTION_8_50(v225, v226, v227, v228, v229, v230, v231, v232, xmmword_24E36D5F0);
                    if (!v233)
                    {
LABEL_156:
                      __break(1u);
                      goto LABEL_157;
                    }

                    v234 = OUTLINED_FUNCTION_52_2(v233);
                    v235 = [v0 view];
                    if (!v235)
                    {
LABEL_158:
                      __break(1u);
                      goto LABEL_159;
                    }

                    v236 = v235;
                    v237 = [v235 MEMORY[0x277CCB0F8]];

                    v238 = OUTLINED_FUNCTION_13_36();
                    v240 = [v238 v239];

                    v241 = OUTLINED_FUNCTION_46_5();
                    if (!v241)
                    {
LABEL_160:
                      __break(1u);
                      goto LABEL_161;
                    }

                    v242 = [v241 topAnchor];
                    v243 = [v0 view];
                    if (!v243)
                    {
LABEL_162:
                      __break(1u);
                      goto LABEL_163;
                    }

                    v244 = v243;
                    v245 = [v243 topAnchor];

                    v246 = OUTLINED_FUNCTION_13_36();
                    v248 = [v246 v247];

                    v249 = OUTLINED_FUNCTION_45_5();
                    if (!v249)
                    {
LABEL_164:
                      __break(1u);
                      goto LABEL_165;
                    }

                    v250 = OUTLINED_FUNCTION_56_2(v249);
                    v251 = [v0 view];
                    if (!v251)
                    {
LABEL_166:
                      __break(1u);
                      goto LABEL_167;
                    }

                    v252 = OUTLINED_FUNCTION_50_3(v251);

                    v253 = OUTLINED_FUNCTION_13_36();
                    v255 = [v253 v254];

                    v256 = OUTLINED_FUNCTION_43_5();
                    if (!v256)
                    {
LABEL_168:
                      __break(1u);
                      goto LABEL_169;
                    }

                    v192 = [v256 widthAnchor];
                    v193 = [v0 view];
                    if (!v193)
                    {
LABEL_170:
                      __break(1u);
                      return;
                    }
                  }

                  v257 = v193;
                  v258 = [v193 widthAnchor];

                  v259 = OUTLINED_FUNCTION_13_36();
                  v90 = [v259 v260];
                }

                *(v24 + 56) = v90;
                v261 = sub_24E347EE8();

                [v51 activateConstraints_];
              }

              v292 = [v0 view];
              if (v292)
              {
                v293 = v292;
                [v292 setNeedsLayout];

                return;
              }

LABEL_107:
              __break(1u);
              goto LABEL_108;
            }

LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_104;
  }
}