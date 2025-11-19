void sub_24A5F6DB0()
{
  v1 = v0;
  v2 = sub_24A62F004();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_24A62EFD4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_style) = 0x3FE8000000000000;
  v10 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277CDCFA8]) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_ringView) = 0;
  v11 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  *(v0 + v11) = [objc_allocWithZone(type metadata accessor for FMPFARSCNView()) initWithFrame_];
  v12 = v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring;
  *(v0 + v13) = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v14 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropAlphaSpring;
  *(v0 + v14) = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene) = 0;
  v15 = v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor) = 2;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity) = 0;
  v16 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_videoHelpers;
  type metadata accessor for FMPFVideoHelpers();
  v17 = swift_allocObject();
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = 0;
  *(v0 + v16) = v17;
  v18 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalDevice;
  *(v0 + v18) = MTLCreateSystemDefaultDevice();
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalCommandQueue) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerPipelineState) = 0;
  v19 = (v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerParameters);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v21 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  sub_24A5F726C(&unk_27EF4F9E0, 255, MEMORY[0x277D85230]);
  sub_24A508FA4(&unk_27EF50240, &unk_24A634A08);
  sub_24A569B20();
  sub_24A62F254();
  sub_24A62EAB4();
  (*(v24 + 104))(v5, *MEMORY[0x277D85260], v25);
  *(v0 + v20) = sub_24A62F044();
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRATextures) = v21;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRANextTextureIndex) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalHasLoggedSetup) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingBusy) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_locationManager) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation) = 0;
  v22 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_cameraGimbalNode;
  *(v1 + v22) = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_sceneIsRunning) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown) = 0;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5F726C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_24A5F72C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 fmpfEcoMode];
  *a2 = result;
  return result;
}

uint64_t sub_24A5F7310()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24A5F7380()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D74418];
  v2 = sub_24A62EBE4();
  v3 = [v0 systemFontOfSize:v2 weight:60.0 design:v1];

  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = sub_24A62EBE4();
  v5 = [v0 systemFontOfSize:v4 weight:56.0 design:v1];

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_24A62EBE4();
  v7 = [v0 systemFontOfSize:v6 weight:60.0 design:v1];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = sub_24A62EBE4();
  v9 = [v0 systemFontOfSize:v8 weight:56.0 design:v1];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = *MEMORY[0x277D743F8];
  v11 = sub_24A62EBE4();
  v12 = [v0 systemFontOfSize:v11 weight:20.0 design:v10];

  if (v12)
  {
    v13 = objc_opt_self();
    v14 = [v13 whiteColor];
    v15 = [v13 whiteColor];
    v16 = [v15 colorWithAlphaComponent_];

    *&xmmword_27EF5C7A8 = v3;
    *(&xmmword_27EF5C7A8 + 1) = v5;
    qword_27EF5C7B8 = v7;
    unk_27EF5C7C0 = v9;
    *&xmmword_27EF5C7C8 = v12;
    *(&xmmword_27EF5C7C8 + 1) = 0x4010000000000000;
    qword_27EF5C7D8 = v14;
    qword_27EF5C7E0 = v16;
    xmmword_27EF5C7E8 = xmmword_24A63B8E0;
    unk_27EF5C7F8 = xmmword_24A63B8F0;
    xmmword_27EF5C808 = xmmword_24A63B900;
    return;
  }

LABEL_11:
  __break(1u);
}

char *sub_24A5F75FC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style];
  if (qword_27EF4EAD0 != -1)
  {
    swift_once();
  }

  v51 = a2 & 1;
  v55[4] = xmmword_27EF5C7E8;
  v55[5] = unk_27EF5C7F8;
  v55[6] = xmmword_27EF5C808;
  v55[0] = xmmword_27EF5C7A8;
  v55[1] = *&qword_27EF5C7B8;
  v55[2] = xmmword_27EF5C7C8;
  v55[3] = *&qword_27EF5C7D8;
  memmove(v6, &xmmword_27EF5C7A8, 0x70uLL);
  v50 = a2;
  v7 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  v8 = objc_allocWithZone(MEMORY[0x277D756B8]);
  sub_24A5FBE0C(v55, v54);
  *&v3[v7] = [v8 init];
  v9 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabelFont] = 0;
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint] = 0;
  v10 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_initialAboveOrBelowTimestamp];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide];
  *v11 = 0;
  v11[4] = 1;
  v12 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring;
  *&v3[v12] = sub_24A5B1F70(0, 1, 0, 1);
  v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold] = 2;
  v13 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_deviceName];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distance];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance];
  *v15 = 0;
  v15[8] = 1;
  v16 = [objc_opt_self() mainScreen];
  [v16 bounds];
  v18 = v17;

  v19 = 16;
  if (v18 < 414.0)
  {
    v19 = 24;
  }

  v20 = 64;
  if (v18 < 414.0)
  {
    v20 = 72;
  }

  v21 = *&v6[8 * (v18 < 414.0)];
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleDistanceLabelFont] = v21;
  v22 = *&v6[v19];
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleDirectionLabelFont] = v22;
  v23 = *&v6[v20];
  v24 = v21;
  v25 = v22;
  *&v3[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleLabelHeight] = v23;
  v53.receiver = v3;
  v53.super_class = type metadata accessor for FMR1DistanceView();
  v26 = objc_msgSendSuper2(&v53, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v27 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  v28 = *&v26[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel];
  v29 = objc_opt_self();
  v30 = v26;
  v31 = [v29 constraintWithItem:v28 attribute:4 relatedBy:0 toItem:v30 attribute:4 multiplier:1.0 constant:0.0];
  v32 = *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint];
  *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint] = v31;

  v33 = [v29 constraintWithItem:*&v26[v27] attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
  v34 = *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
  *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint] = v33;

  [*&v26[v27] setFont_];
  v35 = *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleDirectionLabelFont];
  v36 = *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabelFont];
  *&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabelFont] = v35;
  v37 = v35;

  [*&v30[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel] setFont_];
  sub_24A5F7D00();
  sub_24A5F7F8C();
  v38 = objc_opt_self();
  v39 = v30;
  v40 = [v38 clearColor];
  [v39 setBackgroundColor_];

  v41 = &v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distance];
  *v41 = *&a1;
  *(v41 + 8) = v51;
  v42 = &v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide];
  *v42 = a3;
  v42[4] = BYTE4(a3) & 1;
  v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold] = 2;
  if (v50)
  {
    v43 = *&v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring];
    sub_24A55C6B4(1.79769313e308);
    *(v43 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
  }

  else
  {
    v44 = *&v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring];
    v45 = v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    swift_beginAccess();
    v46 = *(v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    if (*(v45 + 280) + v46 == 1.79769313e308)
    {
      sub_24A55C6B4(*&a1);
      *(v44 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v47 = &v39[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance];
      *v47 = *&a1;
      *(v47 + 8) = 0;
    }

    else
    {
      v48 = *&a1 - v46;
      *(v45 + 280) = v48;
      *(v45 + 240) = v48;
      *(v45 + 248) = 0;
    }
  }

  return v39;
}

uint64_t sub_24A5F7BA8()
{
  sub_24A62F384();

  v0 = sub_24A62F784();
  v2 = sub_24A516B88(6, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x24C21A580](v2, v4, v6, v8);
  v11 = v10;

  MEMORY[0x24C21A5D0](v9, v11);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](62, 0xE100000000000000);
  v12 = sub_24A62EC24();

  return v12;
}

id sub_24A5F7D00()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel] setFont_];
  [*&v0[v1] setAdjustsFontForContentSizeCategory_];
  [*&v0[v1] setAdjustsFontSizeToFitWidth_];
  [*&v0[v1] setNumberOfLines_];
  v2 = *&v0[v1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  [v4 setTextColor_];

  [*&v0[v1] setTextAlignment_];
  v6 = *&v0[v1];
  v7 = [v3 clearColor];
  [v6 setBackgroundColor_];

  [*&v0[v1] setAlpha_];
  [v0 addSubview_];
  v8 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel] setFont_];
  [*&v0[v8] setAdjustsFontForContentSizeCategory_];
  [*&v0[v8] setAdjustsFontSizeToFitWidth_];
  [*&v0[v8] setNumberOfLines_];
  v9 = *&v0[v8];
  v10 = [v3 whiteColor];
  [v9 setTextColor_];

  [*&v0[v8] setTextAlignment_];
  v11 = *&v0[v8];
  v12 = [v3 clearColor];
  [v11 setBackgroundColor_];

  [*&v0[v8] setAlpha_];
  v13 = *&v0[v8];

  return [v0 addSubview_];
}

void sub_24A5F7F8C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24A63AC30;
  v3 = [*&v0[v1] topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v2 + 32) = v5;
  v6 = [*&v0[v1] leadingAnchor];
  v7 = [v0 safeAreaLayoutGuide];
  v8 = [v7 leadingAnchor];

  v9 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 88];
  v10 = [v6 constraintEqualToAnchor:v8 constant:v9];

  *(v2 + 40) = v10;
  v11 = [*&v0[v1] trailingAnchor];
  v12 = [v0 safeAreaLayoutGuide];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-v9];
  *(v2 + 48) = v14;
  v15 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 56) = v15;
  v16 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v17 = objc_opt_self();
  *(v2 + 64) = v16;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v18 = v15;
  v19 = v16;
  v20 = sub_24A62ED54();

  [v17 activateConstraints_];

  v21 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24A633820;
  v23 = [*&v0[v21] leadingAnchor];
  v24 = [v0 safeAreaLayoutGuide];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:v9];
  *(v22 + 32) = v26;
  v27 = [*&v0[v21] trailingAnchor];
  v28 = [v0 safeAreaLayoutGuide];
  v29 = [v28 trailingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:-v9];
  *(v22 + 40) = v30;
  v31 = [*&v0[v21] bottomAnchor];
  v32 = [v0 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v22 + 48) = v33;
  v34 = [*&v0[v21] heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v22 + 56) = v35;
  v36 = sub_24A62ED54();

  [v17 activateConstraints_];
}

id sub_24A5F8440(double a1)
{
  v3 = sub_24A508FA4(&qword_27EF51F28, &unk_24A63B9B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v62 - v5;
  v70 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v69 = *(v70 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v71 = &v62 - v7;
  sub_24A508FA4(&qword_27EF4F408, &qword_24A633B30);
  inited = swift_initStackObject();
  v72 = xmmword_24A633830;
  *(inited + 16) = xmmword_24A633830;
  v9 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v10 = v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style;
  v11 = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 48);
  v12 = sub_24A50D7EC(0, &qword_27EF4F418, 0x277D75348);
  *(inited + 64) = v12;
  *(inited + 40) = v11;
  v13 = v9;
  v14 = v11;
  v68 = sub_24A59C378(inited);
  swift_setDeallocating();
  sub_24A50D6A4(inited + 32, &qword_27EF4F420, qword_24A633B40);
  v15 = swift_initStackObject();
  *(v15 + 16) = v72;
  *(v15 + 32) = v13;
  v16 = *(v10 + 56);
  *(v15 + 64) = v12;
  *(v15 + 40) = v16;
  v17 = v16;
  sub_24A59C378(v15);
  swift_setDeallocating();
  sub_24A50D6A4(v15 + 32, &qword_27EF4F420, qword_24A633B40);
  v18 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v18 setUnitOptions_];
  [v18 setUnitStyle_];
  v19 = objc_opt_self();
  v20 = [v19 meters];
  if (a1 >= 10.0)
  {
    if (qword_27EF4EAC0 != -1)
    {
      swift_once();
    }

    v21 = &qword_27EF5C798;
  }

  else
  {
    if (qword_27EF4EAC8 != -1)
    {
      swift_once();
    }

    v21 = &qword_27EF5C7A0;
  }

  v22 = v71;
  v23 = qword_27EF4EA30;
  v24 = *v21;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = [qword_27EF5C558 measurementSystem];
  v26 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold;
  if ((*(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold) & 1) == 0)
  {
    if (qword_27EF4EAB0 == -1 || (*&v72 = v24, v60 = v25, swift_once(), v25 = v60, v24 = v72, (*(v1 + v26) & 1) == 0))
    {
      if (qword_27EF4EAB0 != -1)
      {
        v61 = v25;
        swift_once();
        v25 = v61;
      }
    }
  }

  v27 = v22;
  if (v25 == 3)
  {
    if (a1 * 3.28084 >= 2.0)
    {
      if (qword_27EF4EAC0 != -1)
      {
        swift_once();
      }

      v28 = &qword_27EF5C798;
    }

    else
    {
      if (qword_27EF4EAC8 != -1)
      {
        swift_once();
      }

      v28 = &qword_27EF5C7A0;
    }

    v29 = *v28;

    v30 = [v19 feet];
    v24 = v29;
    v20 = v30;
  }

  *&v72 = v24;
  [v18 setNumberFormatter_];
  sub_24A50D7EC(0, &qword_27EF4FEA0, 0x277CCAE20);
  v31 = v20;
  sub_24A62DFC4();
  v32 = v18;
  v33 = sub_24A62F0C4();
  v35 = v34;
  v36 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v37 = v27;
  v38 = sub_24A62EBE4();
  _s3__C3KeyVMa_0(0);
  v40 = v39;
  sub_24A5FBAA4();
  v66 = v40;
  v41 = sub_24A62EB74();

  v42 = [v36 initWithString:v38 attributes:v41];

  v43 = v72;
  v44 = sub_24A62E274();
  v45 = [v43 stringFromNumber_];

  if (v45)
  {
    v63 = v31;
    v64 = v42;
    v65 = v32;
    v46 = sub_24A62EC14();
    v48 = v47;

    v75 = v33;
    v76 = v35;
    v73 = v46;
    v74 = v48;
    v49 = sub_24A62E264();
    v50 = v67;
    (*(*(v49 - 8) + 56))(v67, 1, 1, v49);
    sub_24A55BEBC();
    v51 = sub_24A62F214();
    v53 = v52;
    v55 = v54;
    sub_24A50D6A4(v50, &qword_27EF51F28, &unk_24A63B9B8);

    if (v55)
    {
      (*(v69 + 8))(v71, v70);

      return v64;
    }

    else
    {
      v56 = sub_24A62EB74();

      v75 = v51;
      v76 = v53;
      v73 = v33;
      v74 = v35;
      sub_24A508FA4(&qword_27EF51F30, qword_24A63B9C8);
      sub_24A5FBBCC();
      v57 = sub_24A62F194();
      v42 = v64;
      [v64 setAttributes:v56 range:{v57, v58}];

      (*(v69 + 8))(v71, v70);
    }
  }

  else
  {
    (*(v69 + 8))(v37, v70);
  }

  return v42;
}

uint64_t sub_24A5F8DE4(uint64_t a1, char a2, char a3)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 0;
  }

  v4 = a1;
  v5 = 0;
  if (a1 > 127)
  {
    if (a1 > 1023)
    {
      if (a1 <= 4095)
      {
        if (a1 != 1024)
        {
          if (a1 == 2048)
          {
            v78 = sub_24A5D2200(0xD000000000000019, 0x800000024A6430C0);
            v82 = v6;

            MEMORY[0x24C21A5D0](10, 0xE100000000000000);

            v8 = v78;
            v7 = v82;
            v9 = "BT_DIRECTION_CLOSE_HINT_2";
LABEL_43:
            v22 = (v9 - 32);
            v14 = 0xD000000000000019;
            goto LABEL_46;
          }

          return v5;
        }

        v80 = sub_24A5D2200(0xD000000000000018, 0x800000024A643060);
        v84 = v23;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v8 = v80;
        v7 = v84;
        v24 = "BT_DIRECTION_NEAR_HINT_2";
        goto LABEL_41;
      }

      if (a1 == 4096)
      {
        v81 = sub_24A5D2200(0xD00000000000001ALL, 0x800000024A643100);
        v85 = v25;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v8 = v81;
        v7 = v85;
        v22 = "BT_DIRECTION_NEARBY_HINT_1";
        v14 = 0xD00000000000001ALL;
      }

      else
      {
        if (a1 != 0x2000)
        {
          return v5;
        }

        v8 = sub_24A5D2200(0xD000000000000028, 0x800000024A643180);
        v7 = v21;
        v22 = "DISTANCE_CONNECTED_HINT1";
        v14 = 0xD000000000000028;
      }

LABEL_46:
      v13 = v22 | 0x8000000000000000;
      goto LABEL_47;
    }

    switch(a1)
    {
      case 0x80:
        v8 = sub_24A5D2200(0xD00000000000001CLL, 0x800000024A643350);
        v7 = v26;
        v27 = "R1_DIRECTION_ABOVE_YOU_HINT2";
        break;
      case 0x100:
        v8 = sub_24A5D2200(0xD00000000000001CLL, 0x800000024A643310);
        v7 = v28;
        v27 = "R1_DIRECTION_BELOW_YOU_HINT2";
        break;
      case 0x200:
        v79 = sub_24A5D2200(0xD000000000000017, 0x800000024A643140);
        v83 = v12;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v8 = v79;
        v7 = v83;
        v11 = "BT_DIRECTION_FAR_HINT_2";
LABEL_17:
        v13 = (v11 - 32) | 0x8000000000000000;
        v14 = 0xD000000000000017;
LABEL_47:
        v76 = sub_24A5D2200(v14, v13);
        v77 = v35;
        goto LABEL_48;
      default:
        return v5;
    }

    v22 = (v27 - 32);
    v14 = 0xD00000000000001CLL;
    goto LABEL_46;
  }

  if (a1 <= 15)
  {
    if (a1 == 2)
    {
      v8 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A643490);
      v7 = v30;
      if (a3)
      {
        v31 = "R1_DIRECTION_IN_FRONT_HINT3";
      }

      else
      {
        v31 = "R1_DIRECTION_IN_FRONT_HINT2";
      }

      v22 = (v31 - 32);
      v14 = 0xD00000000000001BLL;
      goto LABEL_46;
    }

    if (a1 != 4)
    {
      if (a1 != 8)
      {
        return v5;
      }

      v8 = sub_24A5D2200(0xD000000000000017, 0x800000024A643410);
      v7 = v10;
      v11 = "R1_DIRECTION_LEFT_HINT2";
      goto LABEL_17;
    }

    v8 = sub_24A5D2200(0xD000000000000018, 0x800000024A643450);
    v7 = v33;
    v24 = "R1_DIRECTION_AHEAD_HINT2";
LABEL_41:
    v13 = (v24 - 32) | 0x8000000000000000;
    v14 = 0xD000000000000018;
    goto LABEL_47;
  }

  if (a1 == 16)
  {
    v8 = sub_24A5D2200(0xD000000000000018, 0x800000024A6433D0);
    v7 = v32;
    v24 = "R1_DIRECTION_RIGHT_HINT2";
    goto LABEL_41;
  }

  if (a1 == 32)
  {
    v8 = sub_24A5D2200(0xD000000000000019, 0x800000024A643390);
    v7 = v34;
    v9 = "R1_DIRECTION_BEHIND_HINT2";
    goto LABEL_43;
  }

  if (a1 != 64)
  {
    return v5;
  }

  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold))
  {
    v8 = sub_24A5D22F4(0xD00000000000002CLL, 0x800000024A643270);
    v7 = v16;
    if (a2)
    {
      v17 = 0xD000000000000030;
    }

    else
    {
      v17 = 0xD00000000000002CLL;
    }

    if (a2)
    {
      v18 = "SON_ABOVE_OR_BELOW_YOU_HINT2";
    }

    else
    {
      v18 = "SON_ABOVE_OR_BELOW_YOU_HINT1";
    }

    v19 = sub_24A5D22F4(v17, v18 | 0x8000000000000000);
  }

  else
  {
    v8 = sub_24A5D2200(0xD000000000000025, 0x800000024A6431E0);
    v7 = v69;
    if (a2)
    {
      v70 = 0xD000000000000029;
    }

    else
    {
      v70 = 0xD000000000000025;
    }

    if (a2)
    {
      v71 = "VE_OR_BELOW_YOU_HINT2";
    }

    else
    {
      v71 = "VE_OR_BELOW_YOU_HINT1";
    }

    v19 = sub_24A5D2200(v70, v71 | 0x8000000000000000);
  }

  v76 = v19;
  v77 = v20;

LABEL_48:
  v36 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v36 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    v37 = HIBYTE(v77) & 0xF;
    if ((v77 & 0x2000000000000000) == 0)
    {
      v37 = v76 & 0xFFFFFFFFFFFFLL;
    }

    if (!v37)
    {

      return 0;
    }
  }

  v75 = v4;
  sub_24A508FA4(&qword_27EF4F408, &qword_24A633B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633830;
  v39 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v40 = v3 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style;
  v41 = *(v3 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 48);
  v42 = sub_24A50D7EC(0, &qword_27EF4F418, 0x277D75348);
  *(inited + 64) = v42;
  *(inited + 40) = v41;
  v43 = v39;
  v44 = v41;
  sub_24A59C378(inited);
  swift_setDeallocating();
  sub_24A50D6A4(inited + 32, &qword_27EF4F420, qword_24A633B40);
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_24A633830;
  *(v45 + 32) = v43;
  v74 = v40;
  v46 = *(v40 + 56);
  *(v45 + 64) = v42;
  *(v45 + 40) = v46;
  v47 = v46;
  sub_24A59C378(v45);
  swift_setDeallocating();
  sub_24A50D6A4(v45 + 32, &qword_27EF4F420, qword_24A633B40);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  sub_24A5D2200(0xD000000000000013, 0x800000024A6430A0);
  v48 = sub_24A55BEBC();
  v49 = MEMORY[0x24C21AB40](124, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v48);

  v51 = *(v49 + 16);
  if (!v51)
  {
LABEL_79:

    return v5;
  }

  v52 = 0;
  v73 = *MEMORY[0x277D74118];
  v53 = (v49 + 56);
  while (v52 < *(v49 + 16))
  {
    v58 = *(v53 - 1);
    v59 = *v53;
    v60 = *(v53 - 3) >> 16;
    v61 = *(v53 - 2) >> 16;
    if (v58 == 2371877)
    {
      if (v59 == 0xE300000000000000)
      {
        v62 = v60 == 0;
        *(v53 - 3);
      }

      else
      {
        v62 = 0;
      }

      v63 = v62 && v61 == 3;
      if (!v63 && (sub_24A62F604() & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      LOBYTE(v72) = 0;
      if ((sub_24A62F604() & 1) == 0)
      {
        if (v58 != 2372133 || v59 != 0xE300000000000000 || v60 || v61 != 3)
        {
LABEL_75:
          LOBYTE(v72) = 0;
          result = sub_24A62F604();
          if ((result & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        v64 = objc_allocWithZone(MEMORY[0x277CCAB48]);

        v65 = sub_24A62EBE4();
        _s3__C3KeyVMa_0(0);
        sub_24A5FBAA4();
        v66 = sub_24A62EB74();
        if (v75 == 64)
        {
          v67 = [v64 initWithString:v65 attributes:v66];

          v68 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
          [v68 setLineSpacing_];
          v57 = v68;
          [v67 addAttribute:v73 value:v57 range:{0, objc_msgSend(v67, sel_length)}];

          [v5 appendAttributedString_];
        }

        else
        {
          v57 = [v64 initWithString:v65 attributes:{v66, v72}];

          [v5 appendAttributedString_];
        }

        goto LABEL_57;
      }
    }

    v54 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v55 = sub_24A62EBE4();
    _s3__C3KeyVMa_0(0);
    sub_24A5FBAA4();
    v56 = sub_24A62EB74();
    v57 = [v54 initWithString:v55 attributes:v56];

    [v5 appendAttributedString_];
LABEL_57:

LABEL_58:
    ++v52;
    v53 += 4;
    if (v51 == v52)
    {
      goto LABEL_79;
    }
  }

  __break(1u);
  return result;
}

void sub_24A5F9824(uint64_t a1, char a2, char a3, void (*a4)(uint64_t), uint64_t a5)
{
  v11 = [*&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel] attributedText];
  if (v11)
  {
    v34 = a5;
    v12 = v11;
    v13 = [v11 string];

    if (!v13)
    {
      sub_24A62EC14();
      v13 = sub_24A62EBE4();
    }

    sub_24A508FA4(&qword_27EF4F408, &qword_24A633B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A633830;
    v15 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v16 = *&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleDirectionLabelFont];
    *(inited + 64) = sub_24A50D7EC(0, &qword_27EF51F20, 0x277D74300);
    *(inited + 40) = v16;
    v17 = v15;
    v18 = v16;
    sub_24A59C378(inited);
    swift_setDeallocating();
    sub_24A50D6A4(inited + 32, &qword_27EF4F420, qword_24A633B40);
    _s3__C3KeyVMa_0(0);
    sub_24A5FBAA4();
    v19 = sub_24A62EB74();

    [v13 sizeWithAttributes_];
    v21 = v20;

    a5 = v34;
  }

  else
  {
    [*&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleDistanceLabelFont] lineHeight];
    v21 = v22;
  }

  v23 = *&a1;
  if (a2)
  {
    v23 = v21;
  }

  v24 = 0.0;
  if (v23 == 0.0)
  {
    if (a3)
    {
LABEL_10:
      v25 = objc_opt_self();
      v27 = *&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
      v26 = *&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
      v28 = swift_allocObject();
      *(v28 + 16) = v5;
      *(v28 + 24) = v24;
      v39 = sub_24A5FBB34;
      v40 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_24A5A8458;
      v38 = &unk_285DAAC30;
      v29 = _Block_copy(&aBlock);
      v30 = v5;

      v31 = swift_allocObject();
      *(v31 + 16) = a4;
      *(v31 + 24) = a5;
      v39 = sub_24A5FBB94;
      v40 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_24A5A1470;
      v38 = &unk_285DAAC80;
      v32 = _Block_copy(&aBlock);
      sub_24A5173CC(a4);

      [v25 animateWithDuration:0 delay:v29 usingSpringWithDamping:v32 initialSpringVelocity:v26 options:0.0 animations:v27 completion:0.0];
      _Block_release(v32);
      _Block_release(v29);
      return;
    }
  }

  else
  {
    v24 = -v23 - *&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 80];
    if (a3)
    {
      goto LABEL_10;
    }
  }

  v33 = *&v5[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint];
  if (v33)
  {
    [v33 setConstant_];
    if (a4)
    {
      a4(1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_24A5F9BF4(uint64_t a1, char a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_24A62E1A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v27 = v11;
    v28 = sub_24A5F8440(*&a1);
    v30 = v29;
    v31 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
    v32 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel];
    v33 = v28;
    v34 = [v32 attributedText];
    v120 = v33;

    if (v34)
    {

      v35 = *&v4[v31];
      if (v30)
      {
        v34 = 0;
        v36 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v35 = *&v4[v31];
      v36 = 1;
      if (v30 & 0x100) != 0 || (v30)
      {
LABEL_16:
        v42 = v35;
        [v42 setAttributedText_];

        v43 = &v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_initialAboveOrBelowTimestamp];
        if ((a3 & 0x100000000) != 0 || a3 != 64)
        {
          v46 = 0;
          *v43 = 0;
          v43[8] = 1;
        }

        else if (v43[8] == 1)
        {
          sub_24A62E194();
          sub_24A62E134();
          v45 = v44;
          (*(v9 + 8))(v13, v27);
          v46 = 0;
          *v43 = v45;
          v43[8] = 0;
        }

        else
        {
          v47 = *v43;
          sub_24A62E194();
          sub_24A62E134();
          v49 = v48;
          (*(v9 + 8))(v13, v27);
          v46 = v47 + 5.0 <= v49;
        }

        v50 = HIDWORD(a3) & 1;
        v51 = a3;
        v52 = sub_24A5F8DE4(a3 | (v50 << 32), v46, v36);
        if (!v52)
        {
          v61 = *&v4[v31];
          [v61 alpha];
          if (v62 == 1.0)
          {
          }

          else
          {
            sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
            v24 = *&v4[v31];
            v89 = sub_24A62F164();

            if (v89)
            {
              v90 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
              if (!v90)
              {
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              [v90 setConstant_];
            }

            v91 = objc_opt_self();
            v93 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
            v92 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
            v94 = swift_allocObject();
            *(v94 + 16) = v61;
            *(v94 + 24) = 1;
            v125 = sub_24A5FBEB4;
            v126 = v94;
            aBlock = MEMORY[0x277D85DD0];
            v122 = 1107296256;
            v123 = sub_24A5A8458;
            v124 = &unk_285DAA7A8;
            v95 = _Block_copy(&aBlock);
            v96 = v61;

            v97 = swift_allocObject();
            *(v97 + 16) = 0;
            *(v97 + 24) = 0;
            v125 = sub_24A5FBF20;
            v126 = v97;
            aBlock = MEMORY[0x277D85DD0];
            v122 = 1107296256;
            v123 = sub_24A5A1470;
            v124 = &unk_285DAA7F8;
            v98 = _Block_copy(&aBlock);

            [v91 animateWithDuration:0 delay:v95 usingSpringWithDamping:v98 initialSpringVelocity:v92 options:0.0 animations:v93 completion:0.0];

            _Block_release(v98);
            _Block_release(v95);
          }

          v99 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
          v100 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel];
          v101 = swift_allocObject();
          *(v101 + 16) = v4;
          v24 = v4;
          v102 = v100;
          [v102 alpha];
          if (v103 == 0.0)
          {
            [*&v4[v99] setFont_];
            [*&v4[v99] setAttributedText_];
            sub_24A5F9824(0, 0, 1, 0, 0);

            return;
          }

          sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
          v104 = *&v4[v31];
          v105 = sub_24A62F164();

          if (v105)
          {
            v106 = *&v24[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
            if (!v106)
            {
LABEL_62:

              __break(1u);
              return;
            }

            [v106 setConstant_];
          }

          v107 = objc_opt_self();
          v109 = *&v24[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
          v108 = *&v24[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
          v110 = swift_allocObject();
          *(v110 + 16) = v102;
          *(v110 + 24) = 0;
          v125 = sub_24A5FBEB4;
          v126 = v110;
          aBlock = MEMORY[0x277D85DD0];
          v122 = 1107296256;
          v123 = sub_24A5A8458;
          v124 = &unk_285DAA870;
          v70 = _Block_copy(&aBlock);
          v111 = v102;

          v112 = swift_allocObject();
          *(v112 + 16) = sub_24A5FB998;
          *(v112 + 24) = v101;
          v125 = sub_24A5FBF20;
          v126 = v112;
          aBlock = MEMORY[0x277D85DD0];
          v122 = 1107296256;
          v123 = sub_24A5A1470;
          v124 = &unk_285DAA8C0;
          v73 = _Block_copy(&aBlock);

          [v107 animateWithDuration:0 delay:v70 usingSpringWithDamping:v73 initialSpringVelocity:v108 options:0.0 animations:v109 completion:0.0];

          goto LABEL_53;
        }

        v53 = v52;
        v54 = [*&v4[v31] attributedText];
        v55 = v54;
        if (v54)
        {
        }

        v56 = *&v4[v31];
        v24 = swift_allocObject();
        *(v24 + 2) = v4;
        *(v24 + 6) = a3;
        v24[28] = v50;
        *(v24 + 4) = v53;
        v57 = v4;
        v58 = v53;
        v23 = v57;
        v25 = v58;
        v59 = v56;
        [v59 alpha];
        if (v55)
        {
          if (v60 == 1.0)
          {
LABEL_27:
            sub_24A5FB894(v23, v51 | (v50 << 32), v25, &unk_285DAA9C0, sub_24A5FBA94);

            return;
          }
        }

        else if (v60 == 0.0)
        {
          goto LABEL_27;
        }

        sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
        v74 = *&v4[v31];
        v75 = sub_24A62F164();

        if (v75)
        {
          v76 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
          if (!v76)
          {
LABEL_59:

            __break(1u);
            goto LABEL_60;
          }

          if (v55)
          {
            v77 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_styleLabelHeight];
          }

          else
          {
            v77 = 0.0;
          }

          [v76 setConstant_];
        }

        v113 = objc_opt_self();
        v115 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
        v114 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
        v116 = swift_allocObject();
        *(v116 + 16) = v59;
        *(v116 + 24) = v55 != 0;
        v125 = sub_24A5FBEB4;
        v126 = v116;
        aBlock = MEMORY[0x277D85DD0];
        v122 = 1107296256;
        v123 = sub_24A5A8458;
        v124 = &unk_285DAA938;
        v70 = _Block_copy(&aBlock);
        v117 = v59;

        v118 = swift_allocObject();
        *(v118 + 16) = sub_24A5FB9F4;
        *(v118 + 24) = v24;
        v125 = sub_24A5FBF20;
        v126 = v118;
        aBlock = MEMORY[0x277D85DD0];
        v122 = 1107296256;
        v123 = sub_24A5A1470;
        v124 = &unk_285DAA988;
        v119 = _Block_copy(&aBlock);

        [v113 animateWithDuration:0 delay:v70 usingSpringWithDamping:v119 initialSpringVelocity:v114 options:0.0 animations:v115 completion:0.0];

        v88 = v119;
        goto LABEL_57;
      }
    }

    v34 = v120;
    v36 = 0;
    goto LABEL_16;
  }

  v14 = HIDWORD(a3) & 1;
  v15 = a3;
  v16 = sub_24A5F8DE4(a3 | (v14 << 32), 0, 0);
  if (!v16)
  {
    v37 = &v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_initialAboveOrBelowTimestamp];
    *v37 = 0;
    v37[8] = 1;
    v38 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
    v39 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel];
    v40 = swift_allocObject();
    *(v40 + 16) = v4;
    v23 = v4;
    v24 = v39;
    [v24 alpha];
    if (v41 == 0.0)
    {
      sub_24A5FB0A0(1, v23);
      goto LABEL_10;
    }

    sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
    v78 = *&v4[v38];
    v79 = sub_24A62F164();

    if (v79)
    {
      v80 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
      if (!v80)
      {
LABEL_60:

        __break(1u);
        goto LABEL_61;
      }

      [v80 setConstant_];
    }

    v81 = objc_opt_self();
    v83 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
    v82 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
    v84 = swift_allocObject();
    *(v84 + 16) = v24;
    *(v84 + 24) = 0;
    v125 = sub_24A5DA114;
    v126 = v84;
    aBlock = MEMORY[0x277D85DD0];
    v122 = 1107296256;
    v123 = sub_24A5A8458;
    v124 = &unk_285DAA640;
    v70 = _Block_copy(&aBlock);
    v85 = v24;

    v86 = swift_allocObject();
    *(v86 + 16) = sub_24A5FB854;
    *(v86 + 24) = v40;
    v125 = sub_24A5FBF20;
    v126 = v86;
    aBlock = MEMORY[0x277D85DD0];
    v122 = 1107296256;
    v123 = sub_24A5A1470;
    v124 = &unk_285DAA690;
    v87 = _Block_copy(&aBlock);

    [v81 animateWithDuration:0 delay:v70 usingSpringWithDamping:v87 initialSpringVelocity:v82 options:0.0 animations:v83 completion:0.0];

    v88 = v87;
LABEL_57:
    _Block_release(v88);
    _Block_release(v70);
    return;
  }

  v17 = v16;
  v18 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  v19 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel];
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = a3;
  *(v20 + 28) = v14;
  *(v20 + 32) = v17;
  v21 = v4;
  v22 = v17;
  v23 = v21;
  v24 = v22;
  v25 = v19;
  [v25 alpha];
  if (v26 != 0.0)
  {
    sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
    v63 = *&v4[v18];
    v64 = sub_24A62F164();

    if ((v64 & 1) == 0)
    {
LABEL_33:
      v66 = objc_opt_self();
      v68 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
      v67 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
      v69 = swift_allocObject();
      *(v69 + 16) = v25;
      *(v69 + 24) = 0;
      v125 = sub_24A5FBEB4;
      v126 = v69;
      aBlock = MEMORY[0x277D85DD0];
      v122 = 1107296256;
      v123 = sub_24A5A8458;
      v124 = &unk_285DAA708;
      v70 = _Block_copy(&aBlock);
      v71 = v25;

      v72 = swift_allocObject();
      *(v72 + 16) = sub_24A5FB874;
      *(v72 + 24) = v20;
      v125 = sub_24A5FBF20;
      v126 = v72;
      aBlock = MEMORY[0x277D85DD0];
      v122 = 1107296256;
      v123 = sub_24A5A1470;
      v124 = &unk_285DAA758;
      v73 = _Block_copy(&aBlock);

      [v66 animateWithDuration:0 delay:v70 usingSpringWithDamping:v73 initialSpringVelocity:v67 options:0.0 animations:v68 completion:0.0];

LABEL_53:

      v88 = v73;
      goto LABEL_57;
    }

    v65 = *&v23[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
    if (v65)
    {
      [v65 setConstant_];
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_59;
  }

  sub_24A5FB894(v23, v15 | (v14 << 32), v24, &unk_285DAAA88, sub_24A5FBA9C);

LABEL_10:
}

void sub_24A5FAB80(uint64_t a1, uint64_t a2)
{
  v15 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel);
  [v15 alpha];
  if (v3 != 1.0)
  {
    sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
    v4 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel);
    v5 = sub_24A62F164();

    if (v5)
    {
      v6 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint);
      if (!v6)
      {
        __break(1u);
        return;
      }

      [v6 setConstant_];
    }

    v7 = objc_opt_self();
    v9 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96);
    v8 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104);
    v10 = swift_allocObject();
    *(v10 + 16) = v15;
    *(v10 + 24) = 1;
    v20 = sub_24A5FBEB4;
    v21 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_24A5A8458;
    v19 = &unk_285DAAA00;
    v11 = _Block_copy(&aBlock);
    v12 = v15;

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v20 = sub_24A5FBF20;
    v21 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_24A5A1470;
    v19 = &unk_285DAAA50;
    v14 = _Block_copy(&aBlock);

    [v7 animateWithDuration:0 delay:v11 usingSpringWithDamping:v14 initialSpringVelocity:v8 options:0.0 animations:v9 completion:0.0];

    _Block_release(v14);
    _Block_release(v11);
    return;
  }
}

void sub_24A5FAE10(uint64_t a1, uint64_t a2)
{
  v15 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel);
  [v15 alpha];
  if (v3 != 1.0)
  {
    sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
    v4 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel);
    v5 = sub_24A62F164();

    if (v5)
    {
      v6 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint);
      if (!v6)
      {
        __break(1u);
        return;
      }

      [v6 setConstant_];
    }

    v7 = objc_opt_self();
    v9 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96);
    v8 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104);
    v10 = swift_allocObject();
    *(v10 + 16) = v15;
    *(v10 + 24) = 1;
    v20 = sub_24A5FBEB4;
    v21 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_24A5A8458;
    v19 = &unk_285DAAAC8;
    v11 = _Block_copy(&aBlock);
    v12 = v15;

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v20 = sub_24A5FBF20;
    v21 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_24A5A1470;
    v19 = &unk_285DAAB18;
    v14 = _Block_copy(&aBlock);

    [v7 animateWithDuration:0 delay:v11 usingSpringWithDamping:v14 initialSpringVelocity:v8 options:0.0 animations:v9 completion:0.0];

    _Block_release(v14);
    _Block_release(v11);
    return;
  }
}

void sub_24A5FB0A0(char a1, char *a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
    [*&a2[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel] setAttributedText_];
    v4 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
    v5 = *&a2[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel];
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v7 = a2;
    v8 = v5;
    [v8 alpha];
    if (v9 == 0.0)
    {
      [*&a2[v4] setFont_];
      [*&a2[v4] setAttributedText_];
      sub_24A5F9824(0, 0, 1, 0, 0);
    }

    else
    {
      sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
      v10 = *&a2[v3];
      v11 = sub_24A62F164();

      if (v11)
      {
        v12 = *&v7[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
        if (!v12)
        {

          __break(1u);
          return;
        }

        [v12 setConstant_];
      }

      v13 = objc_opt_self();
      v15 = *&v7[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
      v14 = *&v7[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
      v16 = swift_allocObject();
      *(v16 + 16) = v8;
      *(v16 + 24) = 0;
      v25 = sub_24A5FBEB4;
      v26 = v16;
      v21 = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_24A5A8458;
      v24 = &unk_285DAAB90;
      v17 = _Block_copy(&v21);
      v18 = v8;

      v19 = swift_allocObject();
      *(v19 + 16) = sub_24A5FBF24;
      *(v19 + 24) = v6;
      v25 = sub_24A5FBF20;
      v26 = v19;
      v21 = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_24A5A1470;
      v24 = &unk_285DAABE0;
      v20 = _Block_copy(&v21);

      [v13 animateWithDuration:0 delay:v17 usingSpringWithDamping:v20 initialSpringVelocity:v14 options:0.0 animations:v15 completion:0.0];

      _Block_release(v20);
      _Block_release(v17);
    }
  }
}

void sub_24A5FB3E4(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
    [*(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel) setFont_];
    [*(a2 + v3) setAttributedText_];
    sub_24A5F9824(0, 0, 1, 0, 0);
  }
}

void sub_24A5FB45C(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring);
  v4 = (v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  v5 = (v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  v6 = v4[35] + *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  if (v6 == 1.79769313e308)
  {
    v7 = 0;
    v8 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance;
    *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance) = 0;
  }

  else
  {
    sub_24A55C858(a1);
    *(v3 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    v9 = *v4 + *v5;
    if (vabdd_f64(v4[35] + v5[5], v9) <= *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v9 = v4[35] + v5[5];
    }

    v8 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance;
    *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance) = v9;
    v7 = *&v9;
  }

  *(v1 + v8 + 8) = v6 == 1.79769313e308;
  sub_24A5F9BF4(v7, v6 == 1.79769313e308, *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide) | (*(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide + 4) << 32));
}

id sub_24A5FB5E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMR1DistanceView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A5FB768(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24A5FB7B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A5FB81C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5FB85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5FB894(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
  v9 = *&a1[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel];
  if ((a2 & 0x1FFFFFFFFLL) == 0x40)
  {
    v10 = *&a1[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 32];
  }

  else
  {
    v10 = *&a1[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabelFont];
  }

  v11 = v10;
  v12 = v9;
  [v12 setFont_];

  [*&a1[v8] setAttributedText_];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = a1;
  sub_24A5F9824(0, 1, 1, a5, v13);
}

uint64_t sub_24A5FB9B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A5FBA58()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

unint64_t sub_24A5FBAA4()
{
  result = qword_27EF4F200;
  if (!qword_27EF4F200)
  {
    _s3__C3KeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F200);
  }

  return result;
}

uint64_t sub_24A5FBAFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_24A5FBB34()
{
  v1 = *(v0 + 16);
  result = *&v1[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint];
  if (result)
  {
    [result setConstant_];

    return [v1 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5FBB98(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(result & 1);
  }

  return result;
}

unint64_t sub_24A5FBBCC()
{
  result = qword_27EF51F38;
  if (!qword_27EF51F38)
  {
    sub_24A50E1E0(&qword_27EF51F30, qword_24A63B9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51F38);
  }

  return result;
}

void sub_24A5FBC30()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style;
  if (qword_27EF4EAD0 != -1)
  {
    swift_once();
  }

  v12[4] = xmmword_27EF5C7E8;
  v12[5] = unk_27EF5C7F8;
  v12[6] = xmmword_27EF5C808;
  v12[0] = xmmword_27EF5C7A8;
  v12[1] = *&qword_27EF5C7B8;
  v12[2] = xmmword_27EF5C7C8;
  v12[3] = *&qword_27EF5C7D8;
  memmove((v0 + v1), &xmmword_27EF5C7A8, 0x70uLL);
  v2 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  v3 = objc_allocWithZone(MEMORY[0x277D756B8]);
  sub_24A5FBE0C(v12, v11);
  *(v0 + v2) = [v3 init];
  v4 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabelFont) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint) = 0;
  v5 = v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_initialAboveOrBelowTimestamp;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring;
  *(v0 + v7) = sub_24A5B1F70(0, 1, 0, 1);
  *(v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold) = 2;
  v8 = (v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_deviceName);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distance;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance;
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5FBFB8(char a1)
{
  v2 = v1;
  [*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDebugNode) setHidden_];
  [*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) setHidden_];
  [*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode) setHidden_];
  v4 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode;
  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode);
  if (v5)
  {
    [v5 setHidden_];
  }

  v6 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode;
  v7 = *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode);
  if (v7)
  {
    [v7 setHidden_];
  }

  [*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) setHidden_];
  v8 = *(v1 + v4);
  if (v8)
  {
    if (a1)
    {
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 yellowColor];
      v12 = [v11 colorWithAlphaComponent_];

      v13 = v12;
    }

    else
    {
      v14 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonDotColor);
      v10 = v8;
      v13 = v14;
    }

    sub_24A51E82C(v13);
  }

  v15 = *(v2 + v6);
  if (v15)
  {
    if (a1)
    {
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 purpleColor];
      v19 = [v18 colorWithAlphaComponent_];

      v20 = v19;
    }

    else
    {
      v21 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeDotColor);
      v17 = v15;
      v20 = v21;
    }

    sub_24A51E82C(v20);
  }

  v22 = [*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode) children];
  sub_24A5FD0E0();
  v23 = sub_24A62ED64();

  if (v23 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v25 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C21ACB0](v25, v23);
      }

      else
      {
        if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        [v29 setLineWidth_];
      }

      ++v25;
      if (v28 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
}

void sub_24A5FC2BC(char a1, uint64_t a2, char a3)
{
  [v3 removeAllActions];
  if (a1)
  {
    if ((a3 & 1) != 0 || *&a2 <= 0.0)
    {
      [v3 setAlpha_];
      *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_forceHideNoonNode) = 0;
    }

    else
    {
      v7 = [objc_opt_self() fadeAlphaTo:1.0 duration:*&a2];
      [v7 setTimingMode_];
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      aBlock[4] = sub_24A5FD0B4;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DAACD0;
      v9 = _Block_copy(aBlock);
      v10 = v3;

      [v10 runAction:v7 completion:v9];
      _Block_release(v9);
    }
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_forceHideNoonNode) = 1;
    if ((a3 & 1) != 0 || *&a2 <= 0.0)
    {

      [v3 setAlpha_];
    }

    else
    {
      v11 = [objc_opt_self() fadeAlphaTo:0.0 duration:*&a2];
      [v11 setTimingMode_];
      [v3 runAction_];
    }
  }
}

void sub_24A5FC508(char a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor;
  *v5 = a2;
  *(v5 + 8) = 0;
  v6 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor;
  if ((*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor + 8) & 1) == 0)
  {
    if (*v6 == 0.0 && a2 > 0.0)
    {
      v7 = a1;
      v8 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        (*(v9 + 24))(ObjectType, v9);
        swift_unknownObjectRelease();
      }

      sub_24A5E272C(*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track), *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track + 8));
LABEL_15:
      a1 = v7;
      goto LABEL_16;
    }

    if (*v6 == 1.0 && a2 < 1.0)
    {
      v7 = a1;
      v12 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 8);
        v14 = swift_getObjectType();
        (*(v13 + 32))(v14, v13);
        swift_unknownObjectRelease();
      }

      sub_24A5E3D98();
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((a1 & 1) != 0 && (v15 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactorSpring), v16 = v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v16 + 280) + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v29 = v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v29 = a2;
    *(v29 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v17 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactorSpring);
    sub_24A55C6B4(a2);
    *(v17 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v18 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 184);
    if ((a2 - v18) / (1.0 - v18) < 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = (a2 - v18) / (1.0 - v18);
    }

    *v6 = a2;
    *(v6 + 8) = 0;
    v20 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v21 = *(v3 + v20);
    if (v21 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
    {

      if (!i)
      {
        break;
      }

      v23 = 0;
      v18 = fmin(a2 / v18, 1.0);
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x24C21ACB0](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v27 = &v24[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
        *v27 = v18;
        *(v27 + 8) = 0;
        sub_24A5DF354(v18);
        v28 = &v25[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor];
        *v28 = v19;
        *(v28 + 8) = 0;
        sub_24A5DF5EC(v19);
        sub_24A5A4E9C(1, a2);

        ++v23;
        if (v26 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

LABEL_32:

    sub_24A60510C();
  }
}

void sub_24A5FC854(uint64_t a1, char a2, char a3)
{
  if (a2)
  {
    v4 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing;
    *v4 = *&a1;
    *(v4 + 8) = 1;
    v5 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing;
    *v5 = 0;
    *(v5 + 8) = 1;
    v6 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing;
    *v6 = 0;
    *(v6 + 8) = 1;
    goto LABEL_25;
  }

  v8 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing;
  v9 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing);
  v10 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing + 8);
  v11 = 0.0;
  if ((v10 & 1) == 0)
  {
    v12 = a3;
    v11 = fmod(*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing), 360.0);
    if (v11 <= 180.0)
    {
      a3 = v12;
      if (v11 < -180.0)
      {
        v11 = v11 + 360.0;
      }
    }

    else
    {
      v11 = v11 + -360.0;
      a3 = v12;
    }
  }

  v13 = *&a1 - v11;
  if (vabdd_f64(*&a1, v11) > 180.0)
  {
    if (v11 >= 0.0 || *&a1 < 0.0)
    {
      if (*&a1 < 0.0 && v11 >= 0.0)
      {
        v13 = v13 + 360.0;
      }

      v14 = 0.0;
      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    v13 = v13 + -360.0;
  }

  v14 = 0.0;
  if ((v10 & 1) == 0)
  {
LABEL_13:
    if (fabs(v13) <= 2.22044605e-16)
    {
      goto LABEL_25;
    }

    v14 = v9;
  }

LABEL_21:
  v16 = v13 + v14;
  *v8 = v13 + v14;
  *(v8 + 8) = 0;
  v17 = (v13 + v14) / 180.0 * 3.14159265;
  if ((a3 & 1) == 0)
  {
    goto LABEL_24;
  }

  v18 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_energeticAngleSpring);
  v19 = v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
  swift_beginAccess();
  v20 = v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  if (*(v19 + 280) + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308 || (v21 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring, v22 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring), v23 = v22 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v23 + 280) + *(v22 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308))
  {
LABEL_24:
    v24 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_energeticAngleSpring);
    sub_24A55C6B4(v17);
    *(v24 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v25 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing;
    *v25 = v16;
    *(v25 + 8) = 0;
    v26 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring);
    sub_24A55C6B4(v17);
    *(v26 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v27 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing;
    *v27 = v16;
    *(v27 + 8) = 0;
  }

  else
  {
    v28 = v17 - *(v20 + 40);
    *(v19 + 280) = v28;
    *(v19 + 240) = v28;
    *(v19 + 248) = 0;
    v29 = *(v3 + v21);
    v30 = v29 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    swift_beginAccess();
    v31 = v29 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
    v32 = *(v29 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    if (*(v30 + 280) + v32 == 1.79769313e308)
    {
      sub_24A55C6B4(v17);
      *(v29 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v32 = *(v31 + 40);
    }

    v33 = v17 - v32;
    *(v30 + 280) = v33;
    *(v30 + 240) = v33;
    *(v30 + 248) = 0;
  }

LABEL_25:
  sub_24A60510C();
}

void sub_24A5FCBD0(char a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor;
  if ((*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor + 8) & 1) == 0)
  {
    if (*v5 >= a2)
    {
      v6 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor;
      if (*v5 <= a2)
      {
        v7 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor);
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v6 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor;
      v7 = 1;
    }

    *(v2 + v6) = v7;
  }

  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactorSpring), v9 = v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v9 + 280) + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v12 = v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v12 = a2;
    *(v12 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v10 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactorSpring);
    sub_24A55C6B4(a2);
    *(v10 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v11 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor;
    *v11 = a2;
    *(v11 + 8) = 0;
  }

  sub_24A60510C();
}

void sub_24A5FCD18(char a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookout;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookoutSpring), v7 = v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v10 = v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v10 = a2;
    *(v10 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookoutSpring);
    sub_24A55C6B4(a2);
    *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout;
    *v9 = a2;
    *(v9 + 8) = 0;
  }

  sub_24A60510C();
}

id sub_24A5FCE50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKPatternNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A5FD07C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5FD0C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24A5FD0E0()
{
  result = qword_27EF4F948;
  if (!qword_27EF4F948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF4F948);
  }

  return result;
}

void sub_24A5FD12C()
{
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView) = 0;
  v1 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDebugNode;
  v2 = type metadata accessor for FMPFSKNode();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode) = 0;
  v3 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CDCF58]) init];
  v4 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode;
  *(v0 + v5) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode;
  *(v0 + v6) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_forceHideNoonNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting) = 0;
  v7 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackDidChange) = 0;
  v8 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackTop;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackBottom;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_inFOV) = 2;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformedToExplodedFactor) = 1;
  v10 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformationFactor) = 1;
  v12 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyBearing) = 1;
  v14 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyCenterFactor) = 1;
  v17 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLookout) = 1;
  v19 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookout;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLabelsOpacity) = 1;
  v21 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsOpacity;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLabelsOpacity;
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5FD548()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  sub_24A62F384();

  v3 = sub_24A62F784();
  v5 = sub_24A516B88(6, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x24C21A580](v5, v7, v9, v11);
  v14 = v13;

  MEMORY[0x24C21A5D0](v12, v14);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](32, 0xE100000000000000);
  v15 = [v0 name];
  if (v15)
  {
    v16 = v15;
    v17 = sub_24A62EC14();
    v2 = v18;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x24C21A5D0](v17, v2);

  MEMORY[0x24C21A5D0](0x3E4025202CLL, 0xE500000000000000);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A633830;
  v20 = [v1 isHidden];
  v21 = sub_24A508FEC();
  v22 = 0x656C6269736976;
  if (v20)
  {
    v22 = 0x6E6564646968;
  }

  v23 = 0xE700000000000000;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = v21;
  if (v20)
  {
    v23 = 0xE600000000000000;
  }

  *(v19 + 32) = v22;
  *(v19 + 40) = v23;
  v24 = sub_24A62EC24();

  return v24;
}

void sub_24A5FD7C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_style + 8);

  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_labelNode);
}

id sub_24A5FD81C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKLabelNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A5FD8E0(__int16 *a1)
{
  v3 = type metadata accessor for FMFindingViewState();
  v4 = a1 + *(v3 + 32);
  v5 = *(v4 + 24) | (v4[100] << 32);
  v6 = *(v4 + 24) & 0xFE000000;
  if (v6 == 0x4000000)
  {
    v7 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected);
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected) = 0;
    sub_24A5FF5BC(v7);
    v8 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging);
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging) = 0;
    sub_24A5FFB58(v8);
    v9 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState;
    v10 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    v11 = 1;
LABEL_6:
    *(v1 + v9) = v11;
LABEL_7:

    sub_24A5FFD04(v10);
    return;
  }

  v4[100];
  if ((*(v4 + 24) & 0xFF000000) == 0x6000000)
  {
    v12 = *a1;
    v13 = (v12 >> 13) & 3;
    if (v13 && (v13 == 1 || (v12 & 0x80000000) == 0))
    {
      return;
    }

    if (*(a1 + *(v3 + 44)))
    {
      goto LABEL_14;
    }

    if (v6 != 100663296 && (*(v4 + 24) & 0xFF0000) == 0x40000)
    {
      v19 = v4[40];
      v20 = v4[56];
      v21 = v4[57];
      if (*(v4 + 2) != 1)
      {
        if (v4[40])
        {
          v4[56];
        }

        else if ((v4[57] & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_14:
        v14 = sub_24A62F634();

        if ((v14 & 1) == 0)
        {
          return;
        }

        goto LABEL_27;
      }

      v32 = *v4;
      v33 = 1;
      v34 = *(v4 + 24);
      v35 = v19;
      *v36 = *(v4 + 41);
      *&v36[7] = *(v4 + 6);
      v37 = v20;
      v38 = v21;
      *&v40[14] = *(v4 + 11);
      *v40 = *(v4 + 74);
      v39 = *(v4 + 58);
      v42 = BYTE4(v5);
      v41 = v5;
      sub_24A604158(&v32, v31);
    }

LABEL_26:

LABEL_27:
    v22 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState) = 2;
    sub_24A5FFD04(v22);
    return;
  }

  v4[100];
  if ((*(v4 + 24) & 0xFF000000) == 0x7000000)
  {
    v9 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState;
    v10 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    v11 = 4;
    goto LABEL_6;
  }

  v15 = v3;
  v16 = HIDWORD(v5);
  v17 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected) = 1;
  sub_24A5FF5BC(v17);
  v18 = sub_24A62715C();
  if (v18 > 1)
  {
    if (v18 != 2 && v18 != 3)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v18)
  {
LABEL_29:
    v23 = sub_24A62F634();

    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_30:
  v24 = *(a1 + *(v15 + 36));
  if (v24 != 10)
  {
    if (sub_24A596B24(v24) == 0xD000000000000018 && 0x800000024A63CCD0 == v29)
    {
      v25 = 1;
    }

    else
    {
      v25 = sub_24A62F634();
    }

    if (v16 != 2)
    {
      goto LABEL_32;
    }

LABEL_49:
    if (v25)
    {
      v30 = 2;
    }

    else
    {
      v30 = 10;
    }

    v10 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState) = v30;
    goto LABEL_7;
  }

LABEL_31:
  v25 = 0;
  if (v16 == 2)
  {
    goto LABEL_49;
  }

LABEL_32:
  if (v16 == 3)
  {
    if (v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = 10;
    }
  }

  else
  {
    if (v16)
    {
      v26 = 8;
    }

    else
    {
      v26 = 9;
    }

    if ((v25 & 1) == 0)
    {
      v26 = 10;
    }
  }

  v27 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState) = v26;
  sub_24A5FFD04(v27);
  v28 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging) = (v25 & 1) == 0;

  sub_24A5FFB58(v28);
}

id sub_24A5FDD70(uint64_t a1, char a2, char a3)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 0;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0xD000000000000018;
  if (a1 > 127)
  {
    if (a1 > 1023)
    {
      if (a1 <= 4095)
      {
        if (a1 != 1024)
        {
          if (a1 == 2048)
          {
            v83 = sub_24A5D2200(0xD000000000000019, 0x800000024A6430C0);
            v84 = v7;

            MEMORY[0x24C21A5D0](10, 0xE100000000000000);

            v9 = v83;
            v8 = v84;
            v10 = "BT_DIRECTION_CLOSE_HINT_2";
LABEL_43:
            v29 = (v10 - 32);
            v15 = 0xD000000000000019;
            goto LABEL_46;
          }

          return v5;
        }

        v83 = sub_24A5D2200(0xD000000000000018, 0x800000024A643060);
        v84 = v30;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v9 = v83;
        v8 = v84;
        v31 = "BT_DIRECTION_NEAR_HINT_2";
        goto LABEL_41;
      }

      if (a1 == 4096)
      {
        v83 = sub_24A5D2200(0xD00000000000001ALL, 0x800000024A643100);
        v84 = v32;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v9 = v83;
        v8 = v84;
        v29 = "BT_DIRECTION_NEARBY_HINT_1";
        v15 = 0xD00000000000001ALL;
      }

      else
      {
        if (a1 != 0x2000)
        {
          return v5;
        }

        v9 = sub_24A5D2200(0xD000000000000028, 0x800000024A643180);
        v8 = v28;
        v29 = "DISTANCE_CONNECTED_HINT1";
        v15 = 0xD000000000000028;
      }

LABEL_46:
      v14 = v29 | 0x8000000000000000;
      goto LABEL_47;
    }

    switch(a1)
    {
      case 0x80:
        v9 = sub_24A5D2200(0xD00000000000001CLL, 0x800000024A643350);
        v8 = v33;
        v34 = "R1_DIRECTION_ABOVE_YOU_HINT2";
        break;
      case 0x100:
        v9 = sub_24A5D2200(0xD00000000000001CLL, 0x800000024A643310);
        v8 = v35;
        v34 = "R1_DIRECTION_BELOW_YOU_HINT2";
        break;
      case 0x200:
        v83 = sub_24A5D2200(0xD000000000000017, 0x800000024A643140);
        v84 = v13;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v9 = v83;
        v8 = v84;
        v12 = "BT_DIRECTION_FAR_HINT_2";
LABEL_17:
        v14 = (v12 - 32) | 0x8000000000000000;
        v15 = 0xD000000000000017;
LABEL_47:
        v78 = sub_24A5D2200(v15, v14);
        v79 = v42;
LABEL_48:
        v43 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v43 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (v43)
        {
          goto LABEL_54;
        }

        v44 = HIBYTE(v79) & 0xF;
        if ((v79 & 0x2000000000000000) == 0)
        {
          v44 = v78 & 0xFFFFFFFFFFFFLL;
        }

        if (v44)
        {
LABEL_54:
          v77 = v4;
          sub_24A508FA4(&qword_27EF4F408, &qword_24A633B30);
          inited = swift_initStackObject();
          v80 = xmmword_24A633830;
          inited[1] = xmmword_24A633830;
          v46 = *MEMORY[0x277D740C0];
          *(inited + 4) = *MEMORY[0x277D740C0];
          v47 = inited + 2;
          v48 = qword_27EF4EAD0;
          v49 = v46;
          if (v48 != -1)
          {
            goto LABEL_93;
          }

          while (1)
          {
            v50 = qword_27EF5C7D8;
            v51 = sub_24A50D7EC(0, &qword_27EF4F418, 0x277D75348);
            *(inited + 8) = v51;
            *(inited + 5) = v50;
            v52 = v50;
            sub_24A59C378(inited);
            swift_setDeallocating();
            sub_24A50D6A4(v47, &qword_27EF4F420, qword_24A633B40);
            v53 = swift_initStackObject();
            *(v53 + 16) = v80;
            *(v53 + 32) = v49;
            v47 = (v53 + 32);
            v54 = qword_27EF5C7E0;
            *(v53 + 64) = v51;
            *(v53 + 40) = v54;
            v55 = v54;
            *&v80 = sub_24A59C378(v53);
            swift_setDeallocating();
            sub_24A50D6A4(v53 + 32, &qword_27EF4F420, qword_24A633B40);
            v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
            v56 = sub_24A5D2200(v6 - 5, 0x800000024A6430A0);
            inited = v57;
            v83 = v56;
            v84 = v57;
            v58 = sub_24A55BEBC();
            v59 = MEMORY[0x24C21AB40](124, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v58);

            v60 = *(v59 + 16);
            if (!v60)
            {
LABEL_80:

              return v5;
            }

            v6 = 0;
            v76 = *MEMORY[0x277D74118];
            v61 = (v59 + 56);
            while (v6 < *(v59 + 16))
            {
              v64 = *(v61 - 1);
              v49 = *v61;
              v47 = (*(v61 - 3) >> 16);
              inited = (*(v61 - 2) >> 16);
              if (v64 == 2371877)
              {
                if (v49 == 0xE300000000000000)
                {
                  v65 = v47 == 0;
                  *(v61 - 3);
                }

                else
                {
                  v65 = 0;
                }

                v66 = v65 && inited == 3;
                if (!v66 && (sub_24A62F604() & 1) == 0)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                LOBYTE(v75) = 0;
                if ((sub_24A62F604() & 1) == 0)
                {
                  if (v64 != 2372133 || v49 != 0xE300000000000000 || v47 || inited != 3)
                  {
LABEL_76:
                    LOBYTE(v75) = 0;
                    if ((sub_24A62F604() & 1) == 0)
                    {
                      goto LABEL_59;
                    }
                  }

                  v67 = objc_allocWithZone(MEMORY[0x277CCAB48]);

                  v47 = sub_24A62EBE4();
                  _s3__C3KeyVMa_0(0);
                  sub_24A604110(&qword_27EF4F200, _s3__C3KeyVMa_0);
                  v68 = sub_24A62EB74();
                  if (v77 == 64)
                  {
                    v69 = [v67 initWithString:v47 attributes:v68];

                    v70 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
                    [v70 setLineSpacing_];
                    inited = v70;
                    [v69 addAttribute:v76 value:inited range:{0, objc_msgSend(v69, sel_length)}];

                    [v5 appendAttributedString_];
                  }

                  else
                  {
                    inited = [v67 initWithString:v47 attributes:{v68, v75}];

                    [v5 appendAttributedString_];
                  }

                  goto LABEL_58;
                }
              }

              v62 = objc_allocWithZone(MEMORY[0x277CCA898]);

              v47 = sub_24A62EBE4();
              _s3__C3KeyVMa_0(0);
              sub_24A604110(&qword_27EF4F200, _s3__C3KeyVMa_0);
              v63 = sub_24A62EB74();
              inited = [v62 initWithString:v47 attributes:v63];

              [v5 appendAttributedString_];
LABEL_58:

LABEL_59:
              ++v6;
              v61 += 4;
              if (v60 == v6)
              {
                goto LABEL_80;
              }
            }

            __break(1u);
LABEL_93:
            swift_once();
          }
        }

        return 0;
      default:
        return v5;
    }

    v29 = (v34 - 32);
    v15 = 0xD00000000000001CLL;
    goto LABEL_46;
  }

  if (a1 <= 15)
  {
    if (a1 == 2)
    {
      v9 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A643490);
      v8 = v37;
      if (a3)
      {
        v38 = "R1_DIRECTION_IN_FRONT_HINT3";
      }

      else
      {
        v38 = "R1_DIRECTION_IN_FRONT_HINT2";
      }

      v29 = (v38 - 32);
      v15 = 0xD00000000000001BLL;
      goto LABEL_46;
    }

    if (a1 != 4)
    {
      if (a1 != 8)
      {
        return v5;
      }

      v9 = sub_24A5D2200(0xD000000000000017, 0x800000024A643410);
      v8 = v11;
      v12 = "R1_DIRECTION_LEFT_HINT2";
      goto LABEL_17;
    }

    v9 = sub_24A5D2200(0xD000000000000018, 0x800000024A643450);
    v8 = v40;
    v31 = "R1_DIRECTION_AHEAD_HINT2";
LABEL_41:
    v14 = (v31 - 32) | 0x8000000000000000;
    v15 = 0xD000000000000018;
    goto LABEL_47;
  }

  switch(a1)
  {
    case 0x10:
      v9 = sub_24A5D2200(0xD000000000000018, 0x800000024A6433D0);
      v8 = v39;
      v31 = "R1_DIRECTION_RIGHT_HINT2";
      goto LABEL_41;
    case 0x20:
      v9 = sub_24A5D2200(0xD000000000000019, 0x800000024A643390);
      v8 = v41;
      v10 = "R1_DIRECTION_BEHIND_HINT2";
      goto LABEL_43;
    case 0x40:
      sub_24A508AE4(v3 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, &v83);
      v17 = v85;
      v18 = v86;
      sub_24A50A204(&v83, v85);
      (*(v18 + 24))(v81, v17, v18);
      v19 = v81[0];
      v20 = v81[1];
      v21 = v81[2];
      v22 = v82;
      sub_24A508C54(&v83);
      if (v22 == 1)
      {

        v9 = sub_24A5D22F4(0xD00000000000002CLL, 0x800000024A643270);
        v8 = v23;
        if (a2)
        {
          v24 = 0xD000000000000030;
        }

        else
        {
          v24 = 0xD00000000000002CLL;
        }

        if (a2)
        {
          v25 = "SON_ABOVE_OR_BELOW_YOU_HINT2";
        }

        else
        {
          v25 = "SON_ABOVE_OR_BELOW_YOU_HINT1";
        }

        v26 = sub_24A5D22F4(v24, v25 | 0x8000000000000000);
      }

      else
      {
        sub_24A55B284(v19, v20, v21, v22);
        v9 = sub_24A5D2200(0xD000000000000025, 0x800000024A6431E0);
        v8 = v72;
        if (a2)
        {
          v73 = 0xD000000000000029;
        }

        else
        {
          v73 = 0xD000000000000025;
        }

        if (a2)
        {
          v74 = "VE_OR_BELOW_YOU_HINT2";
        }

        else
        {
          v74 = "VE_OR_BELOW_YOU_HINT1";
        }

        v26 = sub_24A5D2200(v73, v74 | 0x8000000000000000);
      }

      v78 = v26;
      v79 = v27;

      goto LABEL_48;
  }

  return v5;
}

unint64_t sub_24A5FE88C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x65676E6168636E75;
    v7 = 0x6F4D7463656A626FLL;
    v8 = 0xD000000000000014;
    if (a1 != 3)
    {
      v8 = 0x6172656E65676564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6E69686372616573;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0xD00000000000001ELL;
    if (a1 != 9)
    {
      v1 = 0x7974706D65;
    }

    if (a1 != 8)
    {
      v2 = v1;
    }

    v3 = 0xD000000000000014;
    v4 = 0xD000000000000019;
    if (a1 != 6)
    {
      v4 = 0x45676E69676E6172;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_24A5FEA14(char a1)
{
  result = 0x6F4D7463656A626FLL;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 10:
      result = 0xD000000000000019;
      break;
    case 4:
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6172656E65676564;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x45676E69676E6172;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x7974706D65;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_24A5FEC04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A603E7C();
  *a2 = result;
  return result;
}

unint64_t sub_24A5FEC34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A5FE88C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A5FED70(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24A62F634();
  }

  return v12 & 1;
}

uint64_t sub_24A5FEE04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A603EC8();
  *a2 = result;
  return result;
}

unint64_t sub_24A5FEE34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A5FEA14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A5FEE78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_24A62F714();
  a3(v5);
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A5FEEFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_24A62EC74();
}

uint64_t sub_24A5FEF6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_24A62F714();
  a4(v6);
  sub_24A62EC74();

  return sub_24A62F754();
}

id sub_24A5FF084(uint64_t *a1, char *a2)
{
  v4 = *a2;
  v5 = &v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_constants];
  *v5 = xmmword_24A63BA20;
  *(v5 + 1) = xmmword_24A63BA30;
  *(v5 + 4) = 6;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_previousInState] = 11;
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState] = 14;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_tryMovingNoBTConnectionWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingWithBTConnectionWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_stillSearchingWithBTConnectionWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState] = 10;
  sub_24A508AE4(a1, &v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable]);
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_experienceType] = v4;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FMR1InstructionsController();
  v6 = objc_msgSendSuper2(&v16, sel_init);
  v7 = qword_27EF4E9A0;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_24A62E314();
  sub_24A506EB8(v9, qword_27EF5C118);
  v10 = sub_24A62E2F4();
  v11 = sub_24A62EF64();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v8;
    *v13 = v8;
    v14 = v8;
    _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMR1InstrCtrl%@: init", v12, 0xCu);
    sub_24A50D6A4(v13, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v13, -1, -1);
    MEMORY[0x24C21BBE0](v12, -1, -1);
  }

  sub_24A508C54(a1);
  return v8;
}

id sub_24A5FF2F4()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C118);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = sub_24A62EC14();
    v10 = v9;

    v11 = sub_24A509BA8(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMR1InstrCtrl%s: deinit", v5, 0xCu);
    sub_24A508C54(v6);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v12 = type metadata accessor for FMR1InstructionsController();
  v15.receiver = v2;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

uint64_t sub_24A5FF5BC(uint64_t result)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected;
  if (v1[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected] == (result & 1))
  {
    return result;
  }

  v3 = v1;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C118);
  v5 = v1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v8 = 138412802;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v3[v2];
    *(v8 + 18) = 2080;
    v41 = v5[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState];
    v11 = sub_24A62EC44();
    v13 = sub_24A509BA8(v11, v12, &v42);

    *(v8 + 20) = v13;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1InstrCtrl%@: set isBTConnected to %{BOOL}d: outState: %s", v8, 0x1Cu);
    sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    sub_24A508C54(v10);
    MEMORY[0x24C21BBE0](v10, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  else
  {
  }

  if (v3[v2] != 1)
  {
    v19 = v5;
    v20 = sub_24A62E2F4();
    v21 = sub_24A62EF64();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_24A503000, v20, v21, "🧭 FMR1InstrCtrl%@: bt connected false don't understand", v22, 0xCu);
      sub_24A50D6A4(v23, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v23, -1, -1);
      MEMORY[0x24C21BBE0](v22, -1, -1);
    }

    v25 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
    if (sub_24A5FEA14(v19[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) != 0xD000000000000019 || 0x800000024A63D030 != v26)
    {
      v27 = sub_24A62F634();

      if (v27)
      {
        goto LABEL_23;
      }

      if (sub_24A5FEA14(v19[v25]) != 0xD00000000000001ELL || 0x800000024A63D050 != v34)
      {
        v35 = sub_24A62F634();

        if (v35)
        {
          goto LABEL_23;
        }

        if (sub_24A5FEA14(v19[v25]) != 0xD000000000000016 || 0x800000024A63D070 != v36)
        {
          v37 = sub_24A62F634();

          if ((v37 & 1) == 0)
          {
            return result;
          }

          goto LABEL_23;
        }
      }
    }

LABEL_23:
    v28 = v19;
    v29 = sub_24A62E2F4();
    v30 = sub_24A62EF64();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_24A503000, v29, v30, "🧭 FMR1InstrCtrl%@: UPDATINGGGGGG", v31, 0xCu);
      sub_24A50D6A4(v32, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v32, -1, -1);
      MEMORY[0x24C21BBE0](v31, -1, -1);
    }

    return sub_24A600A64();
  }

  v14 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  if (sub_24A5FEA14(v5[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) == 0xD000000000000017 && 0x800000024A63CFD0 == v15)
  {
    goto LABEL_15;
  }

  v17 = sub_24A62F634();

  if (v17)
  {
    return sub_24A60177C();
  }

  if (sub_24A5FEA14(v5[v14]) == 0xD000000000000017 && 0x800000024A63CFF0 == v18)
  {
    goto LABEL_15;
  }

  v38 = sub_24A62F634();

  if (v38)
  {
    return sub_24A60177C();
  }

  if (sub_24A5FEA14(v5[v14]) == 0xD000000000000014 && 0x800000024A63D010 == v39)
  {
LABEL_15:

    return sub_24A60177C();
  }

  v40 = sub_24A62F634();

  if (v40)
  {
    return sub_24A60177C();
  }

  return result;
}

void sub_24A5FFB58(char a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging;
  if (v1[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging] != (a1 & 1))
  {
    v3 = v1;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = v1;
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v3[v2];
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1InstrCtrl%@: set isRanging to %{BOOL}d", v8, 0x12u);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    else
    {

      v6 = v5;
    }

    if (v3[v2] == 1)
    {
      sub_24A600574();
      *(&v5->isa + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 14;
      sub_24A6002CC(0, 0, 0, 0, 14);
    }
  }
}

void sub_24A5FFD04(unsigned __int8 a1)
{
  v1[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_previousInState] = a1;
  v3 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState;
  v4 = sub_24A5FE88C(v1[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState]);
  v6 = v5;
  if (v4 == sub_24A5FE88C(a1) && v6 == v7)
  {
  }

  else
  {
    v9 = sub_24A62F634();

    if (v9)
    {
      return;
    }

    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24A62E314();
    sub_24A506EB8(v10, qword_27EF5C118);
    v11 = v1;
    v12 = v1;
    v13 = sub_24A62E2F4();
    v14 = sub_24A62EF64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v43 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2080;
      v42 = v11[v3];
      v18 = v12;
      v19 = sub_24A62EC44();
      v21 = sub_24A509BA8(v19, v20, &v43);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1InstrCtrl%@: asking state '%s'", v15, 0x16u);
      sub_24A50D6A4(v16, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v16, -1, -1);
      sub_24A508C54(v17);
      MEMORY[0x24C21BBE0](v17, -1, -1);
      MEMORY[0x24C21BBE0](v15, -1, -1);
    }

    v22 = v11[v3];
    if (v22 <= 4)
    {
      if (v11[v3] <= 1u)
      {
        if (!v11[v3])
        {
          return;
        }

        v29 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
        if (sub_24A5FEA14(v12[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) == 0x6F4D7463656A626FLL && v30 == 0xEC000000676E6976)
        {
          goto LABEL_54;
        }

        v31 = sub_24A62F634();

        if (v31)
        {
          return;
        }

        if (sub_24A5FEA14(v12[v29]) == 0x6172656E65676564 && v32 == 0xEF68746150646574)
        {
          goto LABEL_54;
        }

        v33 = sub_24A62F634();

        if ((v33 & 1) == 0)
        {
          *&v12[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount] = 0;
          sub_24A600684();
        }
      }

      else if (v22 == 2)
      {
        sub_24A6026EC();
      }

      else if (v22 == 3)
      {
        v12[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState] = 7;
      }

      else
      {
        sub_24A602B84();
      }
    }

    else
    {
      if (v11[v3] <= 7u)
      {
        if (v22 == 5)
        {
          sub_24A602F00();
        }

        else if (v22 == 6)
        {
          sub_24A60327C();
        }

        else
        {
          sub_24A603624();
        }

        return;
      }

      if (v22 == 8)
      {
        v34 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
        if (sub_24A5FEA14(v12[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) != 0x6F4D7463656A626FLL || v35 != 0xEC000000676E6976)
        {
          v36 = sub_24A62F634();

          if (v36)
          {
            return;
          }

          if (sub_24A5FEA14(v12[v34]) != 0x6172656E65676564 || v37 != 0xEF68746150646574)
          {
            v38 = sub_24A62F634();

            if (v38)
            {
              return;
            }

            v28 = 1;
LABEL_49:
            sub_24A60220C(v28);
            return;
          }
        }

LABEL_54:

        return;
      }

      if (v22 == 9)
      {
        v23 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
        if (sub_24A5FEA14(v12[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) != 0x6F4D7463656A626FLL || v24 != 0xEC000000676E6976)
        {
          v25 = sub_24A62F634();

          if (v25)
          {
            return;
          }

          if (sub_24A5FEA14(v12[v23]) != 0x6172656E65676564 || v26 != 0xEF68746150646574)
          {
            v27 = sub_24A62F634();

            if (v27)
            {
              return;
            }

            v28 = 0;
            goto LABEL_49;
          }
        }

        goto LABEL_54;
      }

      v39 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
      if (sub_24A5FEA14(v12[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) == 0x6F4D7463656A626FLL && v40 == 0xEC000000676E6976)
      {
        goto LABEL_54;
      }

      v41 = sub_24A62F634();

      if ((v41 & 1) == 0)
      {
        sub_24A600574();
        v12[v39] = 14;
        sub_24A6002CC(0, 0, 0, 0, 14);
      }
    }
  }
}

uint64_t sub_24A6002CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v11 = sub_24A62E314();
  sub_24A506EB8(v11, qword_27EF5C118);

  v12 = v5;
  v13 = sub_24A62E2F4();
  v14 = sub_24A62EF64();

  v32 = a1;
  if (os_log_type_enabled(v13, v14))
  {
    v30 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v15 = 138412802;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v31 = a4;
    if (a2)
    {
      v18 = a1;
    }

    else
    {
      v18 = 7104878;
    }

    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = v12;

    v21 = sub_24A509BA8(v18, v19, &v33);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    v22 = sub_24A62EC44();
    v24 = sub_24A509BA8(v22, v23, &v33);

    *(v15 + 24) = v24;
    a4 = v31;
    _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1InstrCtrl%@: message=%s, state='%s'", v15, 0x20u);
    sub_24A50D6A4(v16, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v17, -1, -1);
    v25 = v15;
    a3 = v30;
    MEMORY[0x24C21BBE0](v25, -1, -1);
  }

  v26 = &v12[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 1);
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(v12, v32, a2, a3, a4, a5, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A600574()
{
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem))
  {

    sub_24A62EB34();
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_stillSearchingWithBTConnectionWorkItem))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_stillSearchingWithBTConnectionWorkItem);

    sub_24A62EB34();
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingWithBTConnectionWorkItem))
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingWithBTConnectionWorkItem);

    sub_24A62EB34();
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_tryMovingNoBTConnectionWorkItem))
  {
    v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_tryMovingNoBTConnectionWorkItem);

    sub_24A62EB34();
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionWorkItem))
  {
    v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionWorkItem);

    sub_24A62EB34();
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem))
  {
    v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem);

    sub_24A62EB34();
  }

  return result;
}

uint64_t sub_24A600684()
{
  v1 = v0;
  v22[0] = sub_24A62EB14();
  v2 = *(v22[0] - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v22[0]);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_24A600574();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A604108;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DAB0B0;
  _Block_copy(aBlock);
  v22[1] = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v12 = sub_24A62EB44();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_24A62EB24();

  v16 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem) = v15;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v17 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v18 = *(v2 + 8);
  v19 = v6;
  v20 = v22[0];
  v18(v19, v22[0]);
  sub_24A62EFE4();

  return v18(v8, v20);
}

void sub_24A6009A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging) == 1)
    {
      sub_24A600574();
      v1[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState] = 14;
      sub_24A6002CC(0, 0, 0, 0, 14);
    }

    else if (*(Strong + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected) == 1)
    {
      sub_24A60177C();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount) = 0;
      sub_24A600A64();
    }
  }
}

uint64_t sub_24A600A64()
{
  v1 = v0;
  v2 = 0xD00000000000001BLL;
  v3 = sub_24A62EB14();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v49 = sub_24A62EA94();
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  sub_24A600574();
  v11 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable;
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, aBlock);
  v12 = v55;
  v13 = v56;
  sub_24A50A204(aBlock, v55);
  (*(v13 + 3))(&v58, v12, v13);
  v14 = v58;
  v15 = v59;
  v16 = v60;
  v17 = v61;
  sub_24A595770(v58, v59, v60, v61);
  sub_24A508C54(aBlock);
  if (v17 == 1)
  {

    result = sub_24A5D22F4(0xD000000000000021, 0x800000024A6440E0);
  }

  else
  {
    sub_24A55B284(v14, v15, v16, v17);
    result = sub_24A5D2200(0xD00000000000001FLL, 0x800000024A644150);
  }

  v20 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_experienceType);
  v50 = result;
  v51 = v19;
  if (v20 == 2)
  {
    sub_24A55B284(v14, v15, v16, v17);
    sub_24A508AE4(v1 + v11, aBlock);
    v21 = v55;
    v22 = v56;
    sub_24A50A204(aBlock, v55);
    (*(v22 + 3))(&v58, v21, v22);
    v47 = v59;
    v48 = v58;
    v46 = v60;
    v23 = v61;
    sub_24A508C54(aBlock);
    sub_24A508AE4(v1 + v11, aBlock);
    v24 = v55;
    v25 = v56;
    sub_24A50A204(aBlock, v55);
    (*(v25 + 3))(&v58, v24, v25);
    v26 = v59;
    if (v61)
    {
      if (v61 == 1)
      {
        sub_24A55B284(v58, v59, v60, 1);
      }

      v26 = 0;
    }

    sub_24A508C54(aBlock);
    if (v23)
    {
      sub_24A55B284(v48, v47, v46, v23);
      v27 = "R1_SEARCHING_FOR_ITEM_NO_BT_TOP";
    }

    else
    {
      if (v26)
      {
        v2 = 0xD00000000000001ALL;
      }

      else
      {
        v2 = 0xD000000000000015;
      }

      if (v26)
      {
        v27 = "BT_SEARCHING_FOR_ITEM";
      }

      else
      {
        v27 = "R1_SEARCHING_FOR_ITEM_NO_BT";
      }
    }

    sub_24A508AE4(v1 + v11, aBlock);
    v48 = sub_24A604220(v2, v27 | 0x8000000000000000, aBlock);
    v33 = v34;

    sub_24A508C54(aBlock);
    goto LABEL_23;
  }

  v28 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount) = v30;
    if (v17 == 1)
    {

      v31 = sub_24A5D22F4(0xD00000000000001DLL, 0x800000024A6440C0);
    }

    else
    {
      sub_24A55B284(v14, v15, v16, v17);
      v31 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A644170);
    }

    v48 = v31;
    v33 = v32;
LABEL_23:
    v35 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 0;
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = sub_24A6040D8;
    v57 = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    v55 = &unk_285DAB088;
    _Block_copy(aBlock);
    v58 = MEMORY[0x277D84F90];
    sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    v37 = sub_24A62EB44();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_24A62EB24();

    v41 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionWorkItem);
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionWorkItem) = v40;

    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v42 = sub_24A62F014();
    sub_24A62EB04();
    sub_24A62EB54();
    v43 = *(v52 + 8);
    v44 = v7;
    v45 = v53;
    v43(v44, v53);
    sub_24A62EFE4();

    v43(v9, v45);
    sub_24A6002CC(v48, v33, v50, v51, *(v1 + v35));
  }

  __break(1u);
  return result;
}

uint64_t sub_24A60109C()
{
  v1 = v0;
  v2 = sub_24A62EB14();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, aBlock);
  v11 = v42;
  v12 = v43;
  sub_24A50A204(aBlock, v42);
  (*(v12 + 3))(&v45, v11, v12);
  v13 = v45;
  v14 = v46;
  v15 = v47;
  v16 = v48;
  sub_24A595770(v45, v46, v47, v48);
  sub_24A508C54(aBlock);
  if (v16 == 1)
  {

    v37 = sub_24A5D22F4(0xD000000000000021, 0x800000024A6440E0);
    v38 = v17;

    v18 = sub_24A5D22F4(0xD00000000000001DLL, 0x800000024A6440C0);
  }

  else
  {
    sub_24A55B284(v13, v14, v15, v16);
    v37 = sub_24A5D2200(0xD000000000000017, 0x800000024A644110);
    v38 = v20;
    sub_24A55B284(v13, v14, v15, v16);
    v18 = sub_24A5D2200(0xD000000000000013, 0x800000024A644130);
  }

  v35 = v18;
  v36 = v19;
  v21 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 1;
  v22 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount) < 6;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v43 = sub_24A6040CC;
  v44 = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  v42 = &unk_285DAB060;
  _Block_copy(aBlock);
  v45 = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v25 = sub_24A62EB44();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_24A62EB24();

  v29 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_tryMovingNoBTConnectionWorkItem);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_tryMovingNoBTConnectionWorkItem) = v28;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v30 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v31 = *(v39 + 8);
  v32 = v6;
  v33 = v40;
  v31(v32, v40);
  sub_24A62EFE4();

  v31(v8, v33);
  sub_24A6002CC(v35, v36, v37, v38, *(v1 + v21));
}

void sub_24A601564(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      sub_24A600A64();
    }

    else
    {
      sub_24A6015C8();
    }
  }
}

uint64_t sub_24A6015C8()
{
  v1 = v0;
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, v19);
  v2 = v20;
  v3 = v21;
  sub_24A50A204(v19, v20);
  (*(v3 + 24))(&v15, v2, v3);
  v4 = v15;
  v5 = v16;
  v6 = v17;
  v7 = v18;
  sub_24A595770(v15, v16, v17, v18);
  sub_24A508C54(v19);
  if (v7 == 1)
  {

    v8 = sub_24A5D22F4(0xD000000000000021, 0x800000024A6440E0);
    v10 = v9;

    v11 = sub_24A5D22F4(0xD00000000000001DLL, 0x800000024A6440C0);
  }

  else
  {
    sub_24A55B284(v4, v5, v6, v7);
    v8 = sub_24A5D2200(0xD00000000000001ELL, 0x800000024A644080);
    v10 = v13;
    sub_24A55B284(v4, v5, v6, v7);
    v11 = sub_24A5D2200(0xD00000000000001ALL, 0x800000024A6440A0);
  }

  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 2;
  sub_24A6002CC(v11, v12, v8, v10, 2);
}

uint64_t sub_24A60177C()
{
  v1 = v0;
  v2 = sub_24A62EB14();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, aBlock);
  v11 = v40;
  v12 = v41;
  sub_24A50A204(aBlock, v40);
  (*(v12 + 3))(v43, v11, v12);
  v13 = v43[0];
  v14 = v43[1];
  v15 = v43[2];
  v16 = v44;
  sub_24A508C54(aBlock);
  if (v16 == 1)
  {

    v17 = sub_24A5D22F4(0xD000000000000023, 0x800000024A643F30);
  }

  else
  {
    sub_24A55B284(v13, v14, v15, v16);
    v17 = sub_24A5D2200(0xD000000000000021, 0x800000024A643EA0);
  }

  v35 = v17;
  v36 = v18;
  v19 = sub_24A5D2200(0xD00000000000001DLL, 0x800000024A644060);
  v33 = v20;
  v34 = v19;
  v21 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 3;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = sub_24A60409C;
  v42 = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  v40 = &unk_285DAB010;
  _Block_copy(aBlock);
  v43[0] = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v23 = sub_24A62EB44();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_24A62EB24();

  v27 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingWithBTConnectionWorkItem);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingWithBTConnectionWorkItem) = v26;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v28 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v29 = *(v37 + 8);
  v30 = v6;
  v31 = v38;
  v29(v30, v38);
  sub_24A62EFE4();

  v29(v8, v31);
  sub_24A6002CC(v34, v33, v35, v36, *(v1 + v21));
}

uint64_t sub_24A601BBC()
{
  v1 = v0;
  v2 = sub_24A62EB14();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, aBlock);
  v11 = v40;
  v12 = v41;
  sub_24A50A204(aBlock, v40);
  (*(v12 + 3))(v43, v11, v12);
  v13 = v43[0];
  v14 = v43[1];
  v15 = v43[2];
  v16 = v44;
  sub_24A508C54(aBlock);
  if (v16 == 1)
  {

    v17 = sub_24A5D22F4(0xD000000000000029, 0x800000024A644030);
  }

  else
  {
    sub_24A55B284(v13, v14, v15, v16);
    v17 = sub_24A5D2200(0xD000000000000027, 0x800000024A643FD0);
  }

  v35 = v17;
  v36 = v18;
  v19 = sub_24A5D2200(0xD000000000000023, 0x800000024A644000);
  v33 = v20;
  v34 = v19;
  v21 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 4;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = sub_24A60406C;
  v42 = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  v40 = &unk_285DAAFE8;
  _Block_copy(aBlock);
  v43[0] = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v23 = sub_24A62EB44();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_24A62EB24();

  v27 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_stillSearchingWithBTConnectionWorkItem);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_stillSearchingWithBTConnectionWorkItem) = v26;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v28 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v29 = *(v37 + 8);
  v30 = v6;
  v31 = v38;
  v29(v30, v38);
  sub_24A62EFE4();

  v29(v8, v31);
  sub_24A6002CC(v34, v33, v35, v36, *(v1 + v21));
}

void sub_24A601FFC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_24A602058()
{
  v1 = v0;
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, v19);
  v2 = v20;
  v3 = v21;
  sub_24A50A204(v19, v20);
  (*(v3 + 24))(&v15, v2, v3);
  v4 = v15;
  v5 = v16;
  v6 = v17;
  v7 = v18;
  sub_24A595770(v15, v16, v17, v18);
  sub_24A508C54(v19);
  if (v7 == 1)
  {

    v8 = sub_24A5D22F4(0xD000000000000021, 0x800000024A643FA0);
    v10 = v9;

    v11 = sub_24A5D22F4(0xD00000000000001DLL, 0x800000024A643ED0);
  }

  else
  {
    sub_24A55B284(v4, v5, v6, v7);
    v8 = sub_24A5D2200(0xD00000000000001FLL, 0x800000024A643F60);
    v10 = v13;
    sub_24A55B284(v4, v5, v6, v7);
    v11 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A643F80);
  }

  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 5;
  sub_24A6002CC(v11, v12, v8, v10, 5);
}

uint64_t sub_24A60220C(char a1)
{
  v2 = v1;
  v25[0] = sub_24A62EB14();
  v4 = *(v25[0] - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v25[0]);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  v11 = sub_24A62EA94();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  sub_24A600574();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_24A604060;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DAAFC0;
  _Block_copy(aBlock);
  v25[1] = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v15 = sub_24A62EB44();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_24A62EB24();

  v19 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem);
  *(v2 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem) = v18;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v20 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v21 = *(v4 + 8);
  v22 = v8;
  v23 = v25[0];
  v21(v22, v25[0]);
  sub_24A62EFE4();

  return v21(v10, v23);
}

uint64_t sub_24A60254C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_24A508AE4(result + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, v22);
    v5 = v23;
    v6 = v24;
    sub_24A50A204(v22, v23);
    (*(v6 + 24))(v20, v5, v6);
    v7 = v20[0];
    v8 = v20[1];
    v9 = v20[2];
    v10 = v21;
    sub_24A508C54(v22);
    if (v10 == 1)
    {

      v11 = sub_24A5D22F4(0xD000000000000023, 0x800000024A643F30);
    }

    else
    {
      sub_24A55B284(v7, v8, v9, v10);
      v11 = sub_24A5D2200(0xD000000000000021, 0x800000024A643EA0);
    }

    v13 = v11;
    v14 = v12;
    v15 = "_ITEM_WITH_BT_TOP";
    if (a2)
    {
      v15 = "NI_UNREACHABLE_FRIEND_WITH_BT";
      v16 = 0xD000000000000032;
    }

    else
    {
      v16 = 0xD00000000000001DLL;
    }

    if (a2)
    {
      v17 = 12;
    }

    else
    {
      v17 = 13;
    }

    v18 = sub_24A5D22F4(v16, v15 | 0x8000000000000000);
    v4[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState] = v17;
    sub_24A6002CC(v18, v19, v13, v14, v17);
  }

  return result;
}

uint64_t sub_24A6026EC()
{
  v1 = v0;
  v2 = sub_24A62EB14();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, aBlock);
  v11 = v40;
  v12 = v41;
  sub_24A50A204(aBlock, v40);
  (*(v12 + 3))(&v43, v11, v12);
  v13 = v43;
  v14 = v44;
  v15 = v45;
  v16 = v46;
  sub_24A595770(v43, v44, v45, v46);
  sub_24A508C54(aBlock);
  if (v16 == 1)
  {

    v35 = sub_24A5D22F4(0xD000000000000026, 0x800000024A643E70);
    v36 = v17;

    v18 = sub_24A5D22F4(0xD00000000000002ELL, 0x800000024A643E40);
  }

  else
  {
    sub_24A55B284(v13, v14, v15, v16);
    v35 = sub_24A5D2200(0xD000000000000024, 0x800000024A643DE0);
    v36 = v20;
    sub_24A55B284(v13, v14, v15, v16);
    v18 = sub_24A5D2200(0xD00000000000002CLL, 0x800000024A643E10);
  }

  v33 = v18;
  v34 = v19;
  v21 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 6;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = sub_24A60400C;
  v42 = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  v40 = &unk_285DAAF70;
  _Block_copy(aBlock);
  v43 = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v23 = sub_24A62EB44();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_24A62EB24();

  v27 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem) = v26;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v28 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v29 = *(v37 + 8);
  v30 = v6;
  v31 = v38;
  v29(v30, v38);
  sub_24A62EFE4();

  v29(v8, v31);
  sub_24A6002CC(v33, v34, v35, v36, *(v1 + v21));
}

uint64_t sub_24A602B84()
{
  v1 = v0;
  v28 = sub_24A62EB14();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v28);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_24A600574();
  v11 = sub_24A5D2200(0xD000000000000020, 0x800000024A643DB0);
  v26 = v12;
  v27 = v11;
  v25 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 8;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A6041F4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DAAF48;
  _Block_copy(aBlock);
  v29 = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v14 = sub_24A62EB44();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_24A62EB24();

  v18 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem) = v17;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v19 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v20 = *(v2 + 8);
  v21 = v6;
  v22 = v28;
  v20(v21, v28);
  sub_24A62EFE4();

  v20(v8, v22);
  sub_24A6002CC(v27, v26, 0, 0, *(v1 + v25));
}

uint64_t sub_24A602F00()
{
  v1 = v0;
  v28 = sub_24A62EB14();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v28);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_24A600574();
  v11 = sub_24A5D2200(0xD000000000000029, 0x800000024A643D80);
  v26 = v12;
  v27 = v11;
  v25 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 9;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A6041F4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DAAF20;
  _Block_copy(aBlock);
  v29 = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v14 = sub_24A62EB44();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_24A62EB24();

  v18 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem) = v17;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v19 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v20 = *(v2 + 8);
  v21 = v6;
  v22 = v28;
  v20(v21, v28);
  sub_24A62EFE4();

  v20(v8, v22);
  sub_24A6002CC(v27, v26, 0, 0, *(v1 + v25));
}

uint64_t sub_24A60327C()
{
  v1 = v0;
  v32 = sub_24A62EB14();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v32);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_24A600574();
  v11 = sub_24A5D2200(0xD00000000000002ELL, 0x800000024A643D10);
  v30 = v12;
  v31 = v11;
  v13 = sub_24A5D2200(0xD000000000000036, 0x800000024A643D40);
  v28 = v14;
  v29 = v13;
  v27 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 10;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A6041F4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DAAEF8;
  _Block_copy(aBlock);
  v33 = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v16 = sub_24A62EB44();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_24A62EB24();

  v20 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem) = v19;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v21 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v22 = *(v2 + 8);
  v23 = v6;
  v24 = v32;
  v22(v23, v32);
  sub_24A62EFE4();

  v22(v8, v24);
  sub_24A6002CC(v29, v28, v31, v30, *(v1 + v27));
}

uint64_t sub_24A603624()
{
  v1 = sub_24A62EB14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  if (sub_24A5FEA14(*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState)) == 0xD000000000000019 && 0x800000024A63CF60 == v12)
  {
  }

  else
  {
    v30 = v2;
    v14 = sub_24A62F634();

    if ((v14 & 1) == 0)
    {
      v16 = v0;
      sub_24A600574();
      v17 = sub_24A5D2200(0xD000000000000024, 0x800000024A643CE0);
      v28 = v18;
      v29 = v17;
      *(v0 + v11) = 11;
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_24A6041F4;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DAAED0;
      v27[1] = _Block_copy(aBlock);
      v31 = MEMORY[0x277D84F90];
      sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198]);

      sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
      sub_24A529464();
      sub_24A62F254();
      v20 = sub_24A62EB44();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v23 = sub_24A62EB24();

      v24 = *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem);
      *(v16 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem) = v23;

      sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
      v25 = sub_24A62F014();
      sub_24A62EB04();
      sub_24A62EB54();
      v26 = *(v30 + 8);
      v26(v6, v1);
      sub_24A62EFE4();

      v26(v8, v1);
      sub_24A6002CC(v29, v28, 0, 0, *(v16 + v11));
    }
  }

  return result;
}

void sub_24A603A1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    v1[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState] = 3;
    sub_24A5FFD04(v2);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    v4[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState] = 1;
    sub_24A5FFD04(v5);
  }
}

uint64_t getEnumTagSinglePayload for FMR1InstructionsOutState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMR1InstructionsOutState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMR1InstructionsInState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMR1InstructionsInState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A603DD0()
{
  result = qword_27EF521C0;
  if (!qword_27EF521C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF521C0);
  }

  return result;
}

unint64_t sub_24A603E28()
{
  result = qword_27EF521C8;
  if (!qword_27EF521C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF521C8);
  }

  return result;
}

uint64_t sub_24A603E7C()
{
  v0 = sub_24A62F4B4();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A603EC8()
{
  v0 = sub_24A62F4B4();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24A603F14()
{
  result = qword_27EF521D0;
  if (!qword_27EF521D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF521D0);
  }

  return result;
}

unint64_t sub_24A603F68()
{
  result = qword_27EF521D8;
  if (!qword_27EF521D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF521D8);
  }

  return result;
}

uint64_t sub_24A603FBC()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A603FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A604028()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A604110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A604158(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF4F670, &qword_24A634D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A604220(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  sub_24A50A204(a3, v5);
  (*(v6 + 24))(&v24, v5, v6);
  v22 = a1;
  v23 = a2;
  if (v26)
  {
    if (v26 == 1)
    {
    }

    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24A633830;

    MEMORY[0x24C21A5D0](0x4D4554495F5FLL, 0xE600000000000000);
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
  }

  else
  {
    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24A633A00;

    MEMORY[0x24C21A5D0](0x444F505249415F5FLL, 0xEA00000000005F53);
    v8 = sub_24A62F614();
    MEMORY[0x24C21A5D0](v8);

    *(v7 + 32) = a1;
    *(v7 + 40) = a2;

    MEMORY[0x24C21A5D0](0x444F505249415F5FLL, 0xE900000000000053);
    *(v7 + 48) = a1;
    *(v7 + 56) = a2;
  }

  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_16:

    return sub_24A5D2200(v22, v23);
  }

  type metadata accessor for FMFindingUILocalizer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = (v7 + 40);
  while (1)
  {
    v13 = *(v11 - 1);
    v12 = *v11;
    v14 = objc_opt_self();

    v15 = [v14 bundleForClass_];
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_24A62F384();

    v24 = 0xD000000000000019;
    v25 = 0x800000024A641DC0;
    MEMORY[0x24C21A5D0](v13, v12);
    v16 = sub_24A62E054();
    v18 = v17;

    if (v16 != v13 || v18 != v12)
    {
      break;
    }

LABEL_9:

    v11 += 2;
    if (!--v9)
    {
      goto LABEL_16;
    }
  }

  v20 = sub_24A62F634();

  if (v20)
  {
    goto LABEL_9;
  }

  return v16;
}

void sub_24A6045B0(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing + 8))
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 1;
    v8 = 1;
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing);
    v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing + 8);
    if ((v8 & 1) == 0)
    {
      v6 = v6 / 180.0 * 3.14159265;
    }

    v5 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing);
    if (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing + 8))
    {
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v5 = v5 / 180.0 * 3.14159265;
    }
  }

  v9 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor);
  v10 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8);
  v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout);
  v12 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout + 8);
  if ((a2 & 1) == 0)
  {
    v99 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing + 8);
    v94 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout);
    v95 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor);
    v96 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout + 8);
    v97 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8);
    v98 = v5;
    if (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformedToExplodedFactor) == 1)
    {
      v13 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactorSpring;
      v14 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactorSpring);
      if (!sub_24A5B19C4())
      {
        v92 = v6;
        sub_24A55C858(*&a1);
        *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v15 = *(v3 + v13);
        v16 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v17 = *v16 + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v16[35] + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v17) <= *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v17 = v16[35] + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v18 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor;
        *v18 = v17;
        *(v18 + 8) = 0;
        v19 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
        swift_beginAccess();
        v20 = *(v3 + v19);
        if (v20 >> 62)
        {
          v21 = sub_24A62F464();
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v22 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor;

        if (v21)
        {
          v23 = 0;
          v24 = v3 + v22;
          do
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x24C21ACB0](v23, v20);
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                goto LABEL_24;
              }
            }

            else
            {
              if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_98;
              }

              v25 = *(v20 + 8 * v23 + 32);
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
LABEL_24:
                __break(1u);
                break;
              }
            }

            v27 = *(v24 + 8);
            v28 = &v25[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor];
            *v28 = *v24;
            v28[8] = v27;

            ++v23;
          }

          while (v26 != v21);
        }

        v6 = v92;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformationFactor) == 1)
    {
      v29 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactorSpring;
      v30 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactorSpring);
      if (!sub_24A5B19C4())
      {
        v91 = v7;
        sub_24A55C858(*&a1);
        *(v30 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v31 = *(v3 + v29);
        v32 = (v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        if (vabdd_f64(v32[35] + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v32 + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v33 = *v32 + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        }

        else
        {
          v33 = v32[35] + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v34 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 184);
        if ((v33 - v34) / (1.0 - v34) < 0.0)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = (v33 - v34) / (1.0 - v34);
        }

        v36 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor;
        *v36 = v33;
        *(v36 + 8) = 0;
        v37 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
        swift_beginAccess();
        v38 = *(v3 + v37);
        v93 = v6;
        if (v38 >> 62)
        {
          v39 = sub_24A62F464();
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v39)
        {
          v40 = 0;
          v41 = fmin(v33 / v34, 1.0);
          v24 = &OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor;
          do
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x24C21ACB0](v40, v38);
            }

            else
            {
              if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v42 = *(v38 + 8 * v40 + 32);
            }

            v43 = v42;
            v44 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_99;
            }

            v45 = &v42[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
            *v45 = v41;
            *(v45 + 8) = 0;
            sub_24A5DF354(v41);
            v46 = &v43[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor];
            *v46 = v35;
            *(v46 + 8) = 0;
            sub_24A5DF5EC(v35);
            sub_24A5A4E9C(1, v33);

            ++v40;
          }

          while (v44 != v39);
        }

        sub_24A60510C();
        v6 = v93;
        v7 = v91;
      }
    }

    v47 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyBearing;
    if (!(v99 & 1 | ((*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyBearing) & 1) == 0)))
    {
      v48 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_energeticAngleSpring;
      v49 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_energeticAngleSpring);
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(*&a1);
        *(v49 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v50 = *(v3 + v48);
        v51 = (v50 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v8 = 0;
        v52 = *v51 + *(v50 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v51[35] + *(v50 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v52) <= *(v50 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v52 = v51[35] + *(v50 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v6 = v52;
      }
    }

    if (!(v99 & 1 | ((*(v3 + v47) & 1) == 0)))
    {
      v53 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring;
      v54 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring);
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(*&a1);
        *(v54 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v55 = *(v3 + v53);
        v56 = (v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v7 = 0;
        v57 = *v56 + *(v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v56[35] + *(v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v57) <= *(v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v57 = v56[35] + *(v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v98 = v57;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyCenterFactor) == 1)
    {
      v58 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactorSpring;
      v59 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactorSpring);
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(*&a1);
        *(v59 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v60 = *(v3 + v58);
        v61 = (v60 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v97 = 0;
        v62 = *v61 + *(v60 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v61[35] + *(v60 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v62) <= *(v60 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v62 = v61[35] + *(v60 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v95 = *&v62;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLookout) == 1)
    {
      v63 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookoutSpring;
      v64 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookoutSpring);
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(*&a1);
        *(v64 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v65 = *(v3 + v63);
        v66 = (v65 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v96 = 0;
        v67 = *v66 + *(v65 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v66[35] + *(v65 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v67) <= *(v65 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v67 = v66[35] + *(v65 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v94 = *&v67;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLabelsOpacity) == 1)
    {
      v68 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsOpacitySpring;
      v69 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsOpacitySpring);
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(*&a1);
        *(v69 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v70 = *(v3 + v68);
        v71 = (v70 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v72 = *v71 + *(v70 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v71[35] + *(v70 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v72) <= *(v70 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v72 = v71[35] + *(v70 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v73 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLabelsOpacity;
        *v73 = v72;
        *(v73 + 8) = 0;
        [*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode) setAlpha_];
      }
    }

    v74 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring;
    v75 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring);
    if (!sub_24A5B19C4())
    {
      sub_24A55C858(*&a1);
      *(v75 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v76 = *(v3 + v74);
      v77 = (v76 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v78 = *v77 + *(v76 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v77[35] + *(v76 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v78) <= *(v76 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v78 = v77[35] + *(v76 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      sub_24A606E10(v78);
    }

    v5 = v98;
    v12 = v96;
    v10 = v97;
    v11 = v94;
    v9 = v95;
  }

  sub_24A605A48(*&v6, v8, *&v5, v7, v9, v10, v11, v12);
  v79 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v24 = *(v3 + v79);
  if (v24 >> 62)
  {
    goto LABEL_101;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    v81 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v82 = MEMORY[0x24C21ACB0](v81, v24);
      }

      else
      {
        if (v81 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v82 = *(v24 + 8 * v81 + 32);
      }

      v83 = v82;
      v84 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if ((a2 & 1) == 0)
      {
        sub_24A5DF804(*&a1);
      }

      ++v81;
      if (v84 == i)
      {
        goto LABEL_88;
      }
    }

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
    ;
  }

LABEL_88:

  if ((a2 & 1) == 0)
  {
    v85 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode);
    if (v85)
    {
      v86 = v85;
      sub_24A5D26B4(*&a1);
    }

    v87 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode);
    if (v87)
    {
      v88 = v87;
      sub_24A5D26B4(*&a1);
    }

    v89 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView);
    if (v89)
    {
      v90 = v89;
      sub_24A59DC58(*&a1);
    }
  }

  sub_24A60510C();
}

void sub_24A60510C()
{
  v2 = v0;
  v3 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor;
  v4 = (*(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor) > 0.0) & ~*(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor + 8);
  v5 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor;
  if ((*(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor + 8) & 1) == 0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 184);
    v7 = *v5 - v6;
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    if (*(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 200) <= v7 / (1.0 - *v5 - v6) || (*(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) != 0 || (v8 = (*(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor) > 0.0) & ~*(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor + 8), *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor) >= 0.0))
    {
      v8 = 1;
    }

    v9 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v10 = *(v0 + v9);
    v76 = v8;
    if (v10 >> 62)
    {
      v11 = sub_24A62F464();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11)
    {
      v12 = 0;
      v1 = v4 ^ 1u;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x24C21ACB0](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_19:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          v13 = *(v10 + 8 * v12 + 32);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_19;
          }
        }

        v13[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset] = v4 ^ 1;

        ++v12;
      }

      while (v14 != v11);
    }

    v2 = v78;
    *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyCenterFactor) = v76;
  }

  *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyBearing) = 1;
  if (*(v5 + 8))
  {
LABEL_22:
    if ((*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) == 0 && *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor) >= 1.0)
    {
      goto LABEL_24;
    }

LABEL_51:
    *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) = 0;
    goto LABEL_52;
  }

  v18 = *v5;
  if (*v5 > 0.0)
  {
    if (*(v3 + 8))
    {
      goto LABEL_22;
    }

    if (v18 >= 1.0 && *v3 <= 0.0 && ((*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) != 0 || *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor) < 1.0))
    {
      v68 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = *(v68 + 8);
        ObjectType = swift_getObjectType();
        (*(v69 + 48))(ObjectType, v69);
        goto LABEL_108;
      }
    }

    else
    {
      v19 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor);
      v20 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8);
      if (v20 == 1 || v19 < 1.0)
      {
        if (*(v3 + 8))
        {
          goto LABEL_51;
        }
      }

      else if ((*(v3 + 8) & 1) != 0 || v18 < 1.0 || *v3 > 0.0)
      {
LABEL_24:
        v15 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v16 = *(v15 + 8);
          v17 = swift_getObjectType();
          (*(v16 + 56))(v17, v16);
LABEL_41:
          swift_unknownObjectRelease();
          goto LABEL_52;
        }

        goto LABEL_52;
      }

      v25 = v18 < 1.0;
      if (*v3 > 0.0)
      {
        v25 = 1;
      }

      if (((v20 | v25) & 1) != 0 || v19 < 1.0)
      {
        goto LABEL_51;
      }

      v26 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v26 + 8);
        v28 = swift_getObjectType();
        (*(v27 + 64))(v28, v27);
LABEL_108:
        swift_unknownObjectRelease();
      }
    }

    *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) = 1;
    goto LABEL_52;
  }

  v22 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v22 + 8);
    v24 = swift_getObjectType();
    (*(v23 + 40))(v24, v23);
    goto LABEL_41;
  }

LABEL_52:
  v29 = 0.0;
  if ((*(v5 + 8) & 1) == 0)
  {
    v30 = (v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor);
    if ((*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) == 0 && *v30 >= 0.0)
    {
      v29 = *v5 * *v30;
      if (((*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor) != -1) & v4) == 0)
      {
        v29 = 0.0;
      }
    }
  }

  [*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) setAlpha_];
  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) == 1)
  {
    [*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode) position];
    *&v32 = COERCE_DOUBLE(sub_24A5E3CE0(-v31));
    if ((v34 & 1) == 0)
    {
      v35 = *&v32;
      v36 = v33;
      v37 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
      swift_beginAccess();
      v10 = *(v2 + v37);
      if (v10 >> 62)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          v74 = *(v2 + v37);
        }

        v38 = sub_24A62F464();
      }

      else
      {
        v38 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v38)
      {
        v39 = 0;
        v40 = v35 + 1.0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x24C21ACB0](v39, v10);
          }

          else
          {
            if (v39 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_115;
            }

            v41 = *(v10 + 8 * v39 + 32);
          }

          v42 = v41;
          v1 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if ((v41[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16] & 1) == 0)
          {
            v43 = *&v41[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 8];
            v44 = v36 + -1.0 > v43 || v43 > v40;
            [v41 setHidden_];
          }

          ++v39;
          if (v1 == v38)
          {
            goto LABEL_74;
          }
        }

LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

LABEL_74:
    }
  }

  v45 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v10 = *(v2 + v45);
  v75 = v45;
  v1 = v10 & 0xFFFFFFFFFFFFFF8;
  if (!(v10 >> 62))
  {
    v46 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_77;
  }

LABEL_116:
  v46 = sub_24A62F464();
LABEL_77:

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
LABEL_78:
  v77 = v49;
  v79 = v48;
  v51 = v47;
  while (v46 != v51)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x24C21ACB0](v51, v10);
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (v51 >= *(v1 + 16))
      {
        goto LABEL_111;
      }

      v52 = *(v10 + 8 * v51 + 32);
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }
    }

    v54 = *&v52[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction];

    if (!v54)
    {
      v47 = v53;
      v49 = v50;
      v48 = v79 + 1;
      if (!__OFADD__(v79, 1))
      {
        goto LABEL_78;
      }

      __break(1u);
      break;
    }

    ++v51;
    if (__OFADD__(v50++, 1))
    {
      goto LABEL_112;
    }
  }

  v56 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting;
  v57 = *(v78 + v75);
  if (*(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting))
  {
    if (!(v57 >> 62))
    {
LABEL_95:
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_96;
    }

LABEL_123:
    v58 = sub_24A62F464();
LABEL_96:
    if (v58 == v79)
    {
      *(v78 + v56) = 0;
      v59 = v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v60 = *(v59 + 8);
        v61 = swift_getObjectType();
        (*(v60 + 16))(v61, v60);
        swift_unknownObjectRelease();
      }

      if ((*(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track + 8) & 1) == 0)
      {
        v62 = *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring);
        sub_24A55C6B4(*(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track));
        *(v62 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      }

      return;
    }

    goto LABEL_124;
  }

  v63 = v46 + v77 - v47;
  if (v57 >> 62)
  {
    if ((v57 & 0x8000000000000000) != 0)
    {
      v71 = *(v78 + v75);
    }

    if (sub_24A62F464() == v63)
    {
      goto LABEL_103;
    }

LABEL_121:
    if (*(v78 + v56) != 1)
    {
LABEL_124:
      if (*(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackDidChange) == 1 && (*(v78 + v56) & 1) == 0 && (*(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track + 8) & 1) == 0)
      {
        v72 = *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track);
        *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackDidChange) = 0;
        v73 = *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring) + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
        *v73 = v72;
        *(v73 + 8) = 0;
        sub_24A5B18FC();
      }

      return;
    }

    v57 = *(v78 + v75);
    if (!(v57 >> 62))
    {
      goto LABEL_95;
    }

    goto LABEL_123;
  }

  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) != v63)
  {
    goto LABEL_121;
  }

LABEL_103:
  *(v78 + v56) = 1;
  v64 = v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v65 = *(v64 + 8);
    v66 = swift_getObjectType();
    (*(v65 + 8))(v66, v65);
    swift_unknownObjectRelease();
  }

  v67 = *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring);
  sub_24A55C6B4(0.5);
  *(v67 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
  sub_24A606E10(0.5);
}

void sub_24A605A48(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v9 = v8;
  v196 = a2;
  v17 = sub_24A62EA94();
  v193 = *(v17 - 8);
  v194 = v17;
  v18 = *(v193 + 64);
  MEMORY[0x28223BE20](v17);
  v192 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A62EAD4();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v25 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode);
  if (v25)
  {
    v26 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode);
    if (v26)
    {
      if ((*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor + 8) & 1) == 0)
      {
        v175 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        v176 = v24;
        v188 = a8;
        v177 = v22;
        v27 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor);
        v28 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor;
        *v28 = *&a5;
        *(v28 + 8) = a6 & 1;
        if (a6)
        {
          v29 = 0.0;
        }

        else
        {
          v29 = *&a5;
        }

        v30 = objc_opt_self();
        v191 = v25;
        v195 = v26;
        v31 = [v30 standardUserDefaults];
        v32 = [v31 fmpfDebugMode];

        v33 = 1.0;
        if (!v32)
        {
          v33 = 0.0;
        }

        [*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode) setAlpha_];
        v34 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode);
        if (a4)
        {
          [*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode) zRotation];
        }

        else
        {
          v35 = *&a3;
        }

        v36 = v196;
        [v34 setZRotation_];
        v37 = *&a1;
        if ((v36 & 1) == 0)
        {
          v37 = *&a1 / 3.14159265 * 180.0;
        }

        v38 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing;
        *v38 = v37;
        *(v38 + 8) = v36 & 1;
        if ((a4 & 1) == 0)
        {
          *&a3 = *&a3 / 3.14159265 * 180.0;
        }

        v39 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing;
        *v39 = *&a3;
        *(v39 + 8) = a4 & 1;
        [*&v195[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode] zRotation];
        v40 = 6.28318531;
        v42 = fmod(v41, 6.28318531);
        v190 = 3.14159265;
        if (v42 <= 3.14159265)
        {
          v43 = v188;
          if (v42 < -3.14159265)
          {
            v42 = v42 + 6.28318531;
          }
        }

        else
        {
          v42 = v42 + -6.28318531;
          v43 = v188;
        }

        v44 = fmod(v42, 6.28318531);
        if (v44 <= v190)
        {
          if (v44 < -3.14159265)
          {
            v44 = v44 + 6.28318531;
          }
        }

        else
        {
          v44 = v44 + -6.28318531;
        }

        if ((v36 & 1) == 0)
        {
          v44 = *&a1;
        }

        v45 = (v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style);
        v46 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 112);
        v47 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 120);
        v49 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 96);
        v48 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 104);
        v50 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 136);
        v174 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 144);
        v173 = v50;
        v187 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 128);
        v51 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout;
        *v51 = *&a7;
        *(v51 + 8) = v43 & 1;
        v52 = remainder(v44, 6.28318531);
        v53 = fmod(v52, 6.28318531);
        v54 = v53;
        if (v53 <= v190)
        {
          if (v53 < -3.14159265)
          {
            v54 = v53 + 6.28318531;
          }
        }

        else
        {
          v54 = v53 + -6.28318531;
        }

        v55 = (v27 - v45[20]) / (1.0 - v45[20]);
        if (v55 < 0.0)
        {
          v55 = 0.0;
        }

        v179 = *&a7;
        if (v43)
        {
          v56 = 0.0;
        }

        else
        {
          v56 = *&a7;
        }

        v58 = (1.0 - v29) * v55;
        v59 = (1.0 - v56) * v58;
        v60 = v27;
        if (*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_forceHideNoonNode))
        {
          v61 = 0.0;
        }

        else
        {
          v61 = v55;
        }

        v62 = (v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor);
        v63 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor + 8);
        v185 = v60;
        if (v63)
        {
          v183 = (1.0 - v56) * v58;
          v64 = 1.0;
        }

        else
        {
          v64 = 1.0 - *v62;
          v65 = v60 * *v62;
          v55 = v65 + v55 * v64;
          v56 = v65 + v56 * v64;
          v183 = v59 * v64;
        }

        v57 = 1.0 - v29;
        v180 = v64 * -(*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_sceneSize + 8) * (v29 * (v29 * v29) + v29 * v29 * (v57 * 0.0) + v57 * (v57 * v57) * 0.0 + v29 * (v57 * v57 * 0.0)));
        v186 = v48 * v55 + v49 * (1.0 - v55);
        v182 = v47 * v55 + v46 * (1.0 - v55);
        v189 = v56;
        v66 = v187 * v56;
        v172 = v45[21];
        v171 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pixelsPerInch);
        v67 = [objc_opt_self() mainScreen];
        [v67 scale];
        v69 = v68;

        v70 = v45[2];
        v71 = v195;
        v72 = &v195[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity];
        *v72 = 0x3FF0000000000000;
        v72[8] = 0;
        v73 = *&v71[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacitySpring];
        sub_24A55C6B4(1.0);
        *(v73 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v74 = &v71[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity];
        *v74 = 0x3FF0000000000000;
        v74[8] = 0;
        v178 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode;
        [*&v71[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] setAlpha_];
        [*&v71[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] setAlpha_];
        v75 = v191;
        v76 = &v191[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity];
        *v76 = v61;
        *(v76 + 8) = 0;
        v77 = *&v75[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacitySpring];
        sub_24A55C6B4(v61);
        *(v77 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v78 = &v75[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity];
        *v78 = v61;
        *(v78 + 8) = 0;
        v79 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode;
        [*&v75[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] setAlpha_];
        [*&v75[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] setAlpha_];
        v80 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor + 8);
        v184 = v66;
        if ((v80 & 1) != 0 || (v81 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_inFOV), v81 == 2) || (v82 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor), (v81 & 1) == 0) && v29 < 2.22044605e-16)
        {
          v83 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping;
          v84 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping);
          v85 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode;
          v86 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) == 1;
          *&v181 = 6.28318531;
          if (v86)
          {
            v87 = 0.0;
            sub_24A5FCD18(1, 0.0);
            if (v84 <= 0.0)
            {
              *(v9 + v85) = 0;
              v91 = v189;
            }

            else
            {
              v88 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v89 = *(v88 + 8);
                ObjectType = swift_getObjectType();
                (*(v89 + 80))(ObjectType, v89);
                swift_unknownObjectRelease();
              }

              *(v9 + v85) = 0;
              v91 = v189;
              v87 = v54 * v189;
            }
          }

          else
          {
            *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) = 0;
            v87 = 0.0;
            v91 = v189;
            if (v84 > 0.0)
            {
              v87 = v54 * v189;
            }
          }

          v92 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius;
          v93 = v91 * *(v9 + v83);
          v94 = -((v93 + *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius)) * v29);
          v95 = -(v94 * cos(1.57079633 - v54));
          v96 = sin(1.57079633 - fabs(v54)) * v94;
          if (*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType) != 1)
          {
            [*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) setPosition_];
          }

          v97 = v195;
          sub_24A51F790(0, v95, v96);
          v98 = v191;
          sub_24A51F790(0, v95, v96);
          sub_24A51F53C(1, v182);
          sub_24A51F664(0, v87);
          v99 = v93 + *(v9 + v92);
          v100 = &v98[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
          *v100 = v99;
          *(v100 + 8) = 0;
          v101 = *&v98[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
          sub_24A55C6B4(v99);
          *(v101 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
          v102 = &v98[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
          *v102 = v99;
          *(v102 + 8) = 0;
          [*&v98[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
          sub_24A51F53C(1, v186);
          v103 = v93 + *(v9 + v92);
          v104 = &v97[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
          *v104 = v103;
          v104[8] = 0;
          v105 = *&v97[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
          sub_24A55C6B4(v103);
          *(v105 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
          v106 = &v97[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
          *v106 = v103;
          v106[8] = 0;
          [*&v97[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
          v98[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] = 0;
          sub_24A51EF90(0, 0);
          v107 = v184;
          if (v84 <= 0.0)
          {
            v107 = 0.0;
          }

          v108 = v196;
          v109 = v185;
          v40 = *&v181;
          goto LABEL_59;
        }

        v123 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode;
        if (*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode))
        {
          *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) = 1;
          v124 = v82 >= 0.5;
          if (v81)
          {
            v108 = v196;
            v125 = v189;
            if (v82 >= 0.5)
            {
              v124 = 1;
              v126 = v54;
LABEL_100:
              v170 = v126;
              v139 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType;
              v140 = 0.0;
              v141 = 1.0;
              v142 = 0.0;
              if (*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType) != 2)
              {
                v143 = 1.0;
                v144 = 0.0;
                if (v124)
                {
                  v144 = v125;
                  v143 = 1.0 - v125;
                }

                v142 = 1.0 - v125 + v173 * v144;
                v141 = v29 * (v172 * v171 / v69 / v70 / v186 - v174) + v143 + v174 * v144;
              }

              v173 = v142;
              v174 = v141;
              v145 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius;
              v146 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius);
              if (v81)
              {
                v140 = v125;
              }

              v147 = v140 * (v187 * v146);
              *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping) = v147;
              v148 = -((v146 + v147) * v29);
              v149 = -(v148 * cos(1.57079633 - v54));
              v150 = sin(1.57079633 - fabs(v54)) * v148;
              if (*(v9 + v139) != 1)
              {
                [*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) setPosition_];
              }

              v151 = v195;
              sub_24A51F790(0, v149, v150);
              v152 = v191;
              sub_24A51F790(0, v149, v150);
              v153 = v182 * v173;
              v154 = &v152[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale];
              *v154 = v182 * v173;
              *(v154 + 8) = 0;
              v155 = *&v152[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring];
              sub_24A55C6B4(v153);
              *(v155 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
              v156 = &v152[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale];
              *v156 = v153;
              *(v156 + 8) = 0;
              [*&v152[v79] setScale_];
              sub_24A51F664(0, v170);
              v157 = v147 + *(v9 + v145);
              v158 = &v152[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
              *v158 = v157;
              *(v158 + 8) = 0;
              v159 = *&v152[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
              sub_24A55C6B4(v157);
              *(v159 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
              v160 = &v152[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
              *v160 = v157;
              *(v160 + 8) = 0;
              [*&v152[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
              v161 = v186 * v174;
              v162 = &v151[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale];
              *v162 = v186 * v174;
              v162[8] = 0;
              v163 = *&v151[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring];
              sub_24A55C6B4(v161);
              *(v163 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
              v164 = &v151[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale];
              *v164 = v161;
              v164[8] = 0;
              [*&v151[v178] setScale_];
              v165 = v147 + *(v9 + v145);
              v166 = &v151[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
              *v166 = v165;
              v166[8] = 0;
              v167 = *&v151[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
              sub_24A55C6B4(v165);
              *(v167 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
              v168 = &v151[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
              *v168 = v165;
              v168[8] = 0;
              [*&v151[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
              v169 = 0;
              if (v29 >= 1.0)
              {
                v169 = sub_24A51ED78() == 0;
              }

              v191[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] = v169;
              v109 = v185;
              v107 = v184;
LABEL_59:
              v110 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView;
              v111 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView);
              if (v111)
              {
                v112 = *&v183;
                v113 = v111;
                sub_24A59E410(v112, 0, 1);
              }

              if ((v191[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle + 8] & 1) == 0)
              {
                v114 = fmod(*&v191[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle], v40);
                if (v114 <= v190)
                {
                  if (v114 < -3.14159265)
                  {
                    v114 = v114 + v40;
                  }
                }

                else
                {
                  v114 = v114 + -6.28318531;
                }

                v115 = *(v9 + v110);
                if (v115 && v114 <= fabs(v54))
                {
                  v116 = swift_allocObject();
                  *(v116 + 16) = v107;
                  *(v116 + 24) = 0;
                  *(v116 + 32) = v115;
                  *(v116 + 40) = v114;
                  *(v116 + 48) = v54;
                  v117 = objc_opt_self();
                  v118 = v115;
                  if ([v117 isMainThread])
                  {
                    v119 = *&v118[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngleSpring];
                    sub_24A55C6B4(v114);
                    *(v119 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
                    v120 = *&v118[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngleSpring];
                    sub_24A55C6B4(v54);
                    *(v120 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
                    v121 = *&v118[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScaleSpring];
                    v122 = sub_24A55C6B4(v107);
                    *(v121 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
                    *&v118[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngle] = v114;
                    *&v118[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngle] = v54;
                    *&v118[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScale] = v107;
                    [v118 bounds];
                    [v118 drawRect_];
                  }

                  else
                  {
                    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
                    v127 = sub_24A62F014();
                    v128 = swift_allocObject();
                    *(v128 + 16) = sub_24A6073E4;
                    *(v128 + 24) = v116;
                    aBlock[4] = sub_24A517E48;
                    aBlock[5] = v128;
                    aBlock[0] = MEMORY[0x277D85DD0];
                    aBlock[1] = 1107296256;
                    aBlock[2] = sub_24A5A8458;
                    aBlock[3] = &unk_285DAB128;
                    v129 = _Block_copy(aBlock);

                    v130 = v175;
                    sub_24A62EAB4();
                    aBlock[0] = MEMORY[0x277D84F90];
                    sub_24A545F60();
                    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
                    sub_24A529464();
                    v131 = v192;
                    v132 = v194;
                    sub_24A62F254();
                    MEMORY[0x24C21A950](0, v130, v131, v129);
                    _Block_release(v129);

                    (*(v193 + 8))(v131, v132);
                    (*(v176 + 8))(v130, v177);
                  }

                  v108 = v196;
                }
              }

              if (v189 <= 0.0)
              {
                v133 = v108 ^ 1;
                if ((v188 & 1) == 0 && v179 > 0.0)
                {
LABEL_81:
                  if (*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType) == 1)
                  {
                    if (v109 > 0.0)
                    {
                      goto LABEL_88;
                    }
                  }

                  else if (v109 > 0.75)
                  {
                    goto LABEL_88;
                  }

                  if ((*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor + 8) & 1) == 0 && *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor) == 0.0)
                  {
                    v134 = &v195[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interactiveAngleFactor];
                    *v134 = 0;
                    v134[8] = 1;
                    sub_24A51E8F0();
LABEL_89:

                    return;
                  }

LABEL_88:
                  sub_24A51EB58();
                  sub_24A51FA00(COERCE_ID(v109 * (v109 * v109) + v109 * v109 * ((1.0 - v109) * 3.0) + (1.0 - v109) * ((1.0 - v109) * (1.0 - v109)) * 0.0 + v109 * ((1.0 - v109) * (1.0 - v109) * 3.0)), 0);
                  goto LABEL_89;
                }
              }

              else
              {
                v133 = 0;
              }

              sub_24A51F664(v133 & 1, v54);
              goto LABEL_81;
            }

LABEL_95:
            v126 = v54 * v125;
            v124 = 1;
            goto LABEL_100;
          }

          v108 = v196;
          v125 = v189;
        }

        else
        {
          sub_24A5FCD18(1, 1.0);
          if (v81)
          {
            v135 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
            Strong = swift_unknownObjectWeakLoadStrong();
            v108 = v196;
            if (Strong)
            {
              v137 = *(v135 + 8);
              v138 = swift_getObjectType();
              (*(v137 + 72))(v138, v137);
              swift_unknownObjectRelease();
            }

            v124 = 1;
            *(v9 + v123) = 1;
            v126 = v54;
            v125 = v189;
            if (v82 >= 0.5)
            {
              goto LABEL_100;
            }

            goto LABEL_95;
          }

          *(v9 + v123) = 1;
          v124 = v82 >= 0.5;
          v108 = v196;
          v125 = v189;
        }

        v126 = 0.0;
        if (v124)
        {
          v126 = v54;
        }

        goto LABEL_100;
      }
    }
  }
}

uint64_t sub_24A606E10(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config;
  v4 = 0.0;
  if ((*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 32) & 1) == 0)
  {
    v4 = (a1 + -0.5) * ((*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius) + *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius)) * *v3 / *(v3 + 24));
  }

  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode);
  [v5 position];
  [v5 setPosition_];
  v6 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v23 = v1;
  j = *(v1 + v6);
  if (j >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((j & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (i)
    {
      v9 = 0;
      while (1)
      {
        if ((j & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C21ACB0](v9, j);
        }

        else
        {
          if (v9 >= *((j & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v10 = *(j + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = &v10[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_trackOffset];
        *v13 = v4;
        *(v13 + 8) = 0;
        if ((v10[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
        {
          sub_24A5DF354(*&v10[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor]);
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_15:

    if (*(v3 + 112))
    {
      return result;
    }

    v4 = *(v3 + 104);
    v15 = [*(v23 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode) children];
    sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
    v16 = sub_24A62ED64();

    v17 = sub_24A607140(v16);

    if (!v17)
    {
      return result;
    }

    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
      }

      goto LABEL_19;
    }

    v18 = sub_24A62F464();
    if (!v18)
    {
      break;
    }

LABEL_19:
    for (j = 0; ; ++j)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C21ACB0](j, v17);
      }

      else
      {
        if (j >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v19 = *(v17 + 8 * j + 32);
      }

      v20 = v19;
      v21 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v22 = v4 * ((*&v19[OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_normalizedIndex] - a1) * *v3);
      if (v22 < 0.0)
      {
        v22 = 0.0;
      }

      [v19 setAlpha_];

      if (v21 == v18)
      {
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }
}

uint64_t sub_24A607140(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_24A62F404();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C21ACB0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for FMPFSKLabelNode();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_24A62F3E4();
      v8 = *(v10 + 16);
      sub_24A62F414();
      sub_24A62F424();
      sub_24A62F3F4();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_24A62F464();
    sub_24A62F404();
  }

  return v10;
}

uint64_t (*sub_24A6072A4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C21ACB0](a2, a3);
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
    return sub_24A60744C;
  }

  __break(1u);
  return result;
}

void (*sub_24A607324(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C21ACB0](a2, a3);
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
    return sub_24A6073A4;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A6073AC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6073FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A607434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6074C0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 fmpfEcoMode];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = &OBJC_METACLASS____TtC11FMFindingUI27FMPFARTrackingConfiguration;
  v53.receiver = ObjCClassFromMetadata;
  v53.super_class = &OBJC_METACLASS____TtC11FMFindingUI27FMPFARTrackingConfiguration;
  v4 = &selRef_effectForBlurEffect_style_;
  v5 = objc_msgSendSuper2(&v53, sel_supportedVideoFormats);
  sub_24A50D7EC(0, &qword_27EF521E0, 0x277CE5398);
  v6 = sub_24A62ED64();

  v7 = MEMORY[0x277D84F90];
  v48 = v6;
  if (!v1)
  {
    goto LABEL_28;
  }

  if (v6 >> 62)
  {
    goto LABEL_27;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_4:
  v3 = (v6 & 0xC000000000000001);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v9 = *(v6 + 32);
    goto LABEL_7;
  }

LABEL_92:
  v9 = MEMORY[0x24C21ACB0](0, v6);
LABEL_7:
  ObjCClassFromMetadata = v9;
  if (v8 == 1)
  {
    goto LABEL_8;
  }

  v4 = (v6 & 0xFFFFFFFFFFFFFF8);
  v11 = 1;
  do
  {
    while (1)
    {
      if (v3)
      {
        v12 = MEMORY[0x24C21ACB0](v11, v6);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (v11 >= v4[2])
        {
          goto LABEL_26;
        }

        v12 = *(v6 + 8 * v11 + 32);
      }

      v10 = v12;
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v8 = sub_24A62F464();
        if (v8)
        {
          goto LABEL_4;
        }

LABEL_28:
        v52.receiver = ObjCClassFromMetadata;
        v52.super_class = v3;
        v21 = objc_msgSendSuper2(&v52, v4[132]);
        v22 = sub_24A62ED64();

        v51 = v7;
        if (v22 >> 62)
        {
          goto LABEL_46;
        }

        for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
        {
          v24 = 0;
          v7 = v22 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x24C21ACB0](v24, v22);
            }

            else
            {
              if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }

              v25 = *(v22 + 8 * v24 + 32);
            }

            v3 = v25;
            v6 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            [(objc_class *)v25 imageResolution];
            v27 = v26;
            [(objc_class *)v3 imageResolution];
            if (v27 > v28)
            {
              v29 = v27;
            }

            else
            {
              v29 = v28;
            }

            if (v29 > 1920.0)
            {
            }

            else
            {
              sub_24A62F3E4();
              v30 = *(v51 + 16);
              sub_24A62F414();
              sub_24A62F424();
              sub_24A62F3F4();
            }

            ++v24;
            v20 = v6 == i;
            v6 = v48;
            if (v20)
            {
              v8 = v51;
              v7 = MEMORY[0x277D84F90];
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          ;
        }

        v8 = MEMORY[0x277D84F90];
LABEL_48:

        if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
        {
          goto LABEL_85;
        }

        for (ObjCClassFromMetadata = *(v8 + 16); !ObjCClassFromMetadata; ObjCClassFromMetadata = sub_24A62F464())
        {

          if (!(v6 >> 62))
          {
            goto LABEL_58;
          }

LABEL_87:
          v33 = sub_24A62F464();
          if (!v33)
          {
            goto LABEL_88;
          }

LABEL_59:
          v51 = v7;
          v8 = &v51;
          sub_24A62F404();
          if (v33 < 0)
          {
            __break(1u);
LABEL_90:
            v31 = MEMORY[0x24C21ACB0](0, v8);
            goto LABEL_54;
          }

          for (j = 0; ; ++j)
          {
            v7 = j + 1;
            if (__OFADD__(j, 1))
            {
              break;
            }

            if ((v6 & 0xC000000000000001) != 0)
            {
              v35 = MEMORY[0x24C21ACB0](j, v6);
            }

            else
            {
              if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_81;
              }

              v35 = *(v6 + 8 * j + 32);
            }

            v36 = v35;
            v49 = v35;
            sub_24A607AE4(&v49, &v50);

            v3 = v50;
            sub_24A62F3E4();
            v37 = *(v51 + 16);
            sub_24A62F414();
            sub_24A62F424();
            v8 = &v51;
            sub_24A62F3F4();
            if (v7 == v33)
            {

              return v51;
            }
          }

          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          ;
        }

        v3 = (v8 & 0xC000000000000001);
        if ((v8 & 0xC000000000000001) != 0)
        {
          goto LABEL_90;
        }

        if (*(v8 + 16))
        {
          v31 = *(v8 + 32);
LABEL_54:
          v32 = v31;

          if (ObjCClassFromMetadata != 1)
          {
            v6 = 1;
            while (1)
            {
              if (v3)
              {
                v39 = MEMORY[0x24C21ACB0](v6, v8);
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  goto LABEL_83;
                }

                if (v6 >= *(v8 + 16))
                {
                  goto LABEL_84;
                }

                v39 = *(v8 + 8 * v6 + 32);
              }

              v10 = v39;
              v40 = (v6 + 1);
              if (__OFADD__(v6, 1))
              {
                goto LABEL_82;
              }

              [v32 imageResolution];
              v42 = v41;
              [v32 imageResolution];
              v44 = v42 * v43;
              [v10 imageResolution];
              v46 = v45;
              [v10 imageResolution];
              if (v44 < v46 * v47)
              {

                v32 = v10;
                ++v6;
                if (v40 == ObjCClassFromMetadata)
                {
                  goto LABEL_56;
                }
              }

              else
              {

                ++v6;
                if (v40 == ObjCClassFromMetadata)
                {
                  break;
                }
              }
            }
          }

          v10 = v32;
LABEL_56:

          goto LABEL_57;
        }

        __break(1u);
        goto LABEL_92;
      }

      [v12 imageResolution];
      v14 = v13;
      [v10 imageResolution];
      v16 = v14 * v15;
      [ObjCClassFromMetadata imageResolution];
      v18 = v17;
      [ObjCClassFromMetadata imageResolution];
      if (v16 >= v18 * v19)
      {
        break;
      }

      ObjCClassFromMetadata = v10;
      ++v11;
      v20 = v6 == v8;
      v6 = v48;
      if (v20)
      {
        goto LABEL_9;
      }
    }

    ++v11;
    v20 = v6 == v8;
    v6 = v48;
  }

  while (!v20);
LABEL_8:
  v10 = ObjCClassFromMetadata;
LABEL_9:

LABEL_57:
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A6339F0;
  *(v6 + 32) = v10;
  if (v6 >> 62)
  {
    goto LABEL_87;
  }

LABEL_58:
  v33 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v33)
  {
    goto LABEL_59;
  }

LABEL_88:

  return MEMORY[0x277D84F90];
}

void sub_24A607AE4(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (qword_27EF4E988 != -1)
  {
    swift_once();
  }

  if (byte_27EF5C0A0 == 1)
  {
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24A636580;
    v4 = [v2 captureDeviceType];
    v5 = sub_24A62EC14();
    v7 = v6;

    v8 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v9 = sub_24A508FEC();
    *(v3 + 64) = v9;
    *(v3 + 32) = v5;
    *(v3 + 40) = v7;
    [v2 imageResolution];
    v10 = sub_24A62F0E4();
    *(v3 + 96) = v8;
    *(v3 + 104) = v9;
    *(v3 + 72) = v10;
    *(v3 + 80) = v11;
    v12 = [v2 frameRatesByPowerUsage];
    v13 = sub_24A50D7EC(0, &qword_27EF4F428, 0x277CCABB0);
    v14 = sub_24A62ED64();

    v15 = MEMORY[0x24C21A690](v14, v13);
    v17 = v16;

    *(v3 + 136) = v8;
    *(v3 + 144) = v9;
    *(v3 + 112) = v15;
    *(v3 + 120) = v17;
    v18 = sub_24A62EC24();
    v20 = v19;
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v21 = sub_24A62E314();
    sub_24A506EB8(v21, qword_27EF5C0E8);

    v22 = sub_24A62E2F4();
    v23 = sub_24A62EF64();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54 = v25;
      *v24 = 136315138;
      v26 = sub_24A509BA8(v18, v20, &v54);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_24A503000, v22, v23, "%s", v24, 0xCu);
      sub_24A508C54(v25);
      MEMORY[0x24C21BBE0](v25, -1, -1);
      MEMORY[0x24C21BBE0](v24, -1, -1);
    }

    else
    {
    }

    *a2 = v2;
    v52 = v2;
  }

  else
  {
    v27 = [v2 videoFormatWithUnthrottledLowPowerUsageFramerate];
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24A636580;
    v29 = [v27 captureDeviceType];
    v30 = sub_24A62EC14();
    v32 = v31;

    v33 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v34 = sub_24A508FEC();
    *(v28 + 64) = v34;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    [v27 imageResolution];
    v35 = sub_24A62F0E4();
    *(v28 + 96) = v33;
    *(v28 + 104) = v34;
    *(v28 + 72) = v35;
    *(v28 + 80) = v36;
    v37 = [v27 frameRatesByPowerUsage];
    v38 = sub_24A50D7EC(0, &qword_27EF4F428, 0x277CCABB0);
    v39 = sub_24A62ED64();

    v40 = MEMORY[0x24C21A690](v39, v38);
    v42 = v41;

    *(v28 + 136) = v33;
    *(v28 + 144) = v34;
    *(v28 + 112) = v40;
    *(v28 + 120) = v42;
    v43 = sub_24A62EC24();
    v45 = v44;
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v46 = sub_24A62E314();
    sub_24A506EB8(v46, qword_27EF5C0E8);

    v47 = sub_24A62E2F4();
    v48 = sub_24A62EF64();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v54 = v50;
      *v49 = 136315138;
      v51 = sub_24A509BA8(v43, v45, &v54);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_24A503000, v47, v48, "%s", v49, 0xCu);
      sub_24A508C54(v50);
      MEMORY[0x24C21BBE0](v50, -1, -1);
      MEMORY[0x24C21BBE0](v49, -1, -1);
    }

    else
    {
    }

    *a2 = v27;
  }
}

id sub_24A608078(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FMPFARTrackingConfiguration();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_24A6080B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFARTrackingConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24A608110()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI20FMPFSKBTRangeDotNode_sizeSpring;
  *&v0[v1] = sub_24A5B1B2C(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v2 = sub_24A5F1D08();
  v3 = [objc_opt_self() whiteColor];
  [v2 size];
  v5 = v4;
  v7 = v6;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMPFSKBTRangeDotNode();
  v8 = objc_msgSendSuper2(&v10, sel_initWithTexture_color_size_, v2, v3, v5, v7);

  return v8;
}

id sub_24A6082B8(double a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI20FMPFSKBTRangeDotNode_sizeSpring];
  sub_24A55C858(a1);
  *(v3 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v4 = (v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  if (vabdd_f64(v4[35] + *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v4 + *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v5 = *v4 + *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v5 = v4[35] + *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  }

  v6 = [v2 scene];
  v7 = 1.0;
  if (v6)
  {
    v8 = v6;
    [v6 size];
    v10 = v9;

    v11 = [v2 texture];
    if (v11)
    {
      v12 = v11;
      [v11 size];
      v14 = v13;

      v7 = round(v5 * v10) / v14;
    }
  }

  return [v2 setScale_];
}

void sub_24A608408(char a1, double a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC11FMFindingUI20FMPFSKBTRangeDotNode_sizeSpring];
  if (a1)
  {
    v5 = v4 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v5 = a2;
    *(v5 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    sub_24A55C6B4(a2);
    *(v4 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v6 = (v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    if (vabdd_f64(v6[35] + *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v6 + *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v7 = *v6 + *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    }

    else
    {
      v7 = v6[35] + *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    v8 = [v3 scene];
    v9 = 1.0;
    if (v8)
    {
      v10 = v8;
      [v8 size];
      v12 = v11;

      v13 = [v3 texture];
      if (v13)
      {
        v14 = v13;
        [v13 size];
        v16 = v15;

        v9 = round(v7 * v12) / v16;
      }
    }

    [v3 setScale_];
  }
}

void sub_24A608578()
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v1 = [v0 texture];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for FMPFSKSpriteNode();
      v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_24A6339F0;
      v5 = objc_opt_self();
      v6 = objc_opt_self();
      v7 = v3;
      v8 = [v6 rangeWithConstantValue_];
      v9 = [v5 distance:v8 toNode:v0];

      *(v4 + 32) = v9;
      sub_24A50D7EC(0, &qword_27EF4F940, 0x277CDCF38);
      v10 = sub_24A62ED54();

      [v7 setConstraints_];

      v11 = v7;
      [v11 setTexture_];
      [v2 size];
      [v11 setSize_];

      [v11 setScale_];
      v12 = objc_opt_self();
      v13 = [v12 scaleTo:2.0 duration:0.5];
      [v13 setTimingMode_];
      v14 = [v12 fadeAlphaTo:0.0 duration:0.5];
      [v14 setTimingMode_];
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_24A633810;
      *(v15 + 32) = v14;
      *(v15 + 40) = v13;
      sub_24A50D7EC(0, &unk_27EF4F950, 0x277CDCF30);
      v16 = v14;
      v17 = v13;
      v18 = sub_24A62ED54();

      v19 = [v12 group_];

      [v0 addChild_];
      v20 = swift_allocObject();
      *(v20 + 16) = v11;
      v23[4] = sub_24A520304;
      v23[5] = v20;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 1107296256;
      v23[2] = sub_24A5A8458;
      v23[3] = &unk_285DAB178;
      v21 = _Block_copy(v23);
      v22 = v11;

      [v22 runAction:v19 completion:v21];
      _Block_release(v21);
    }
  }
}

id sub_24A60895C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKBTRangeDotNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A6089C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6089FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24A608A14()
{
  v1 = v0;
  v2 = sub_24A62E1A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 timestamp];
  sub_24A62E174();

  [v1 coordinate];
  v36 = v8;
  [v1 coordinate];
  v35 = v9;
  [v1 altitude];
  v11 = v10;
  [v1 ellipsoidalAltitude];
  v13 = v12;
  [v1 horizontalAccuracy];
  v15 = v14;
  [v1 verticalAccuracy];
  v17 = v16;
  [v1 speed];
  v19 = v18;
  [v1 speedAccuracy];
  v21 = v20;
  [v1 course];
  v23 = v22;
  [v1 courseAccuracy];
  v25 = v24;
  v26 = [v1 floor];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 level];
  }

  else
  {
    v28 = 0;
  }

  v29 = [v1 type];
  v30 = [v1 signalEnvironmentType];
  v31 = objc_allocWithZone(MEMORY[0x277CD8A50]);
  v32 = sub_24A62E154();
  v33 = [v31 initWithTimestamp:v32 latitude:v28 longitude:v29 altitude:v30 ellipsoidalAltitude:v36 horizontalAccuracy:v35 verticalAccuracy:v11 speed:v13 speedAccuracy:v15 course:v17 courseAccuracy:v19 floor:v21 locationType:v23 signalEnvironment:v25];

  (*(v3 + 8))(v6, v2);
  return v33;
}

id sub_24A608CBC()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_style;
  if (qword_27EF4EA38 != -1)
  {
    swift_once();
  }

  v14[8] = xmmword_27EF5C5E0;
  v14[9] = unk_27EF5C5F0;
  v14[10] = xmmword_27EF5C600;
  v15 = qword_27EF5C610;
  v14[4] = xmmword_27EF5C5A0;
  v14[5] = unk_27EF5C5B0;
  v14[6] = xmmword_27EF5C5C0;
  v14[7] = unk_27EF5C5D0;
  v14[0] = xmmword_27EF5C560;
  v14[1] = *&qword_27EF5C570;
  v14[2] = xmmword_27EF5C580;
  v14[3] = unk_27EF5C590;
  memmove(&v0[v3], &xmmword_27EF5C560, 0xB8uLL);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  sub_24A5D1AFC(v14, v13);
  v6 = [v5 bundleForClass_];
  v7 = sub_24A62EBE4();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6 withConfiguration:0];

  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v0[OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_imageView] = v9;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for FMIncorrectOrientationView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A608FE0();
  sub_24A6093AC();

  return v10;
}

id sub_24A608FE0()
{
  v1 = v0;
  [v0 addSubview_];
  v2 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76A28];
  v6 = v3;
  v7 = [v4 preferredFontForTextStyle_];
  v8 = sub_24A59679C(2);

  [v6 setFont_];
  [*&v1[v2] setAdjustsFontForContentSizeCategory_];
  [*&v1[v2] setAdjustsFontSizeToFitWidth_];
  [*&v1[v2] setNumberOfLines_];
  v9 = *&v1[v2];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 whiteColor];
  [v11 setTextColor_];

  [*&v1[v2] setTextAlignment_];
  v13 = *&v1[v2];
  v14 = [v10 clearColor];
  [v13 setBackgroundColor_];

  v15 = *&v1[v2];
  sub_24A5D2428(0xD00000000000001DLL, 0x800000024A644410);
  v16 = sub_24A62EBE4();

  [v15 setText_];

  [v1 addSubview_];
  v17 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel;
  v18 = *MEMORY[0x277D76918];
  v19 = *&v1[OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel];
  v20 = [v4 preferredFontForTextStyle_];
  [v19 setFont_];

  [*&v1[v17] setAdjustsFontForContentSizeCategory_];
  [*&v1[v17] setAdjustsFontSizeToFitWidth_];
  [*&v1[v17] setNumberOfLines_];
  v21 = *&v1[v17];
  v22 = [v10 whiteColor];
  [v21 setTextColor_];

  [*&v1[v17] setTextAlignment_];
  v23 = *&v1[v17];
  v24 = [v10 clearColor];
  [v23 setBackgroundColor_];

  v25 = *&v1[v17];
  sub_24A5D2428(0xD000000000000020, 0x800000024A644430);
  v26 = sub_24A62EBE4();

  [v25 setText_];

  v27 = *&v1[v17];

  return [v1 addSubview_];
}

void sub_24A6093AC()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_imageView;
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_imageView) setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel;
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel) setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel;
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel) setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = objc_opt_self();
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24A633810;
  v3 = [*(v0 + v1) centerXAnchor];
  v4 = [v0 centerXAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v2 + 32) = v5;
  v6 = [*(v0 + v1) centerYAnchor];
  v7 = [v0 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v2 + 40) = v8;
  sub_24A509158();
  v9 = sub_24A62ED54();

  [v30 activateConstraints_];

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A633810;
  v11 = [*&v32[v0] centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [*&v32[v0] topAnchor];
  v15 = [*(v0 + v1) bottomAnchor];
  v16 = (v0 + OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_style);
  v17 = [v14 constraintEqualToAnchor:v15 constant:*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_style + 88)];

  *(v10 + 40) = v17;
  v18 = sub_24A62ED54();

  [v30 activateConstraints_];

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A635FE0;
  v20 = [*(v0 + v31) topAnchor];
  v21 = [*&v32[v0] bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:v16[22]];

  *(v19 + 32) = v22;
  v23 = [*(v0 + v31) leadingAnchor];
  v24 = [v0 leadingAnchor];
  v25 = v16[16];
  v26 = [v23 constraintEqualToAnchor:v24 constant:v25];

  *(v19 + 40) = v26;
  v27 = [*(v0 + v31) trailingAnchor];
  v28 = [v0 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-v25];

  *(v19 + 48) = v29;
  v33 = sub_24A62ED54();

  [v30 activateConstraints_];
}

id sub_24A609874()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMIncorrectOrientationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A6099C0(uint64_t a1)
{
  v3 = type metadata accessor for FMFindingSessionState();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMFindingViewState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 56))(v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState, 1, 1);
  sub_24A62E194();
  *(v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A60BEB8(a1, v6, type metadata accessor for FMFindingSessionState);
  sub_24A626F08(v6, 10, v10);
  sub_24A529028(v10, v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_currentState);
  sub_24A60BEB8(a1, v6, type metadata accessor for FMFindingSessionState);
  sub_24A626F08(v6, 10, v10);
  sub_24A60BF20(a1, type metadata accessor for FMFindingSessionState);
  sub_24A529028(v10, v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_previousState);
  return v1;
}

uint64_t sub_24A609B94(uint64_t a1)
{
  v3 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v147 = &v134 - v5;
  v6 = sub_24A62E1A4();
  v141 = *(v6 - 8);
  v142 = v6;
  v7 = *(v141 + 64);
  MEMORY[0x28223BE20](v6);
  v140 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A62E214();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMFindingViewState();
  v146 = *(v14 - 8);
  v15 = *(v146 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v137 = &v134 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v136 = &v134 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v145 = &v134 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v139 = &v134 - v25;
  MEMORY[0x28223BE20](v24);
  v153 = a1;
  v150 = &v134 - v26;
  sub_24A60BEB8(a1, &v134 - v26, type metadata accessor for FMFindingViewState);
  v27 = v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_currentState;
  swift_beginAccess();
  v151 = v27;
  v152 = v14;
  v28 = *(v14 + 32);
  v29 = *(v27 + v28 + 96);
  v148 = v1;
  LODWORD(v149) = (v29 & 0xFC000000 | 0x2000000) != 0x6000000 && (v61 = *(v27 + v28 + 100), (*&v29 & 0xFF0000) == 0x30000) && *(v153 + v28 + 99) << 24 == 0x4000000;
  v30 = v151;
  v31 = v152;
  (*(v10 + 16))(v13, v151 + *(v152 + 20), v9);
  v32 = *(v31 + 20);
  sub_24A5B7014();
  v33 = v153;
  v34 = sub_24A62EBD4();
  (*(v10 + 8))(v13, v9);
  v35 = *(v31 + 28);
  v36 = *(v30 + v35);
  v144 = v34;
  if (v36)
  {
    v138 = 0;
  }

  else
  {
    v138 = *(v33 + v35) ^ 1;
  }

  v37 = v149;
  v38 = v148;
  v39 = v150;
  if (v34)
  {
    v37 = 0;
  }

  v143 = v37;
  v40 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_lastStateUpdateTime;
  swift_beginAccess();
  v42 = v141;
  v41 = v142;
  v43 = v38 + v40;
  v44 = v140;
  (*(v141 + 16))(v140, v43, v142);
  sub_24A62E164();
  v46 = v45;
  (*(v42 + 8))(v44, v41);
  v47 = v139;
  sub_24A60BEB8(v151, v139, type metadata accessor for FMFindingViewState);
  v48 = v152;
  v49 = v47 + *(v152 + 32);
  v50 = *(v49 + 64);
  v51 = *(v49 + 80);
  v52 = *(v49 + 32);
  v166 = *(v49 + 48);
  v167 = v50;
  v168[0] = v51;
  *(v168 + 13) = *(v49 + 93);
  v53 = *(v49 + 16);
  v163 = *v49;
  v164 = v53;
  v165 = v52;
  sub_24A508CE4(&v163, v160);
  sub_24A60BF20(v47, type metadata accessor for FMFindingViewState);
  v54 = v39 + *(v48 + 32);
  v55 = *(v54 + 5);
  v169[4] = *(v54 + 4);
  *v170 = v55;
  *&v170[13] = *(v54 + 93);
  v56 = *(v54 + 3);
  v169[2] = *(v54 + 2);
  v169[3] = v56;
  v57 = *(v54 + 1);
  v169[0] = *v54;
  v169[1] = v57;
  if ((v168[1] & 0xFF000000) == 0x4000000)
  {
    LODWORD(v142) = v170[19] << 24 != 0x4000000;
    v58 = v153;
    v59 = v145;
  }

  else
  {
    v58 = v153;
    v59 = v145;
    if ((v168[1] & 0xFF000000) == 0x5000000)
    {
      v60 = v170[19] << 24 != 83886080;
    }

    else
    {
      v60 = (v168[1] & 0xFE000000) == 0x6000000 || (*&v170[16] & 0xFC000000) == 0x4000000;
    }

    LODWORD(v142) = v60;
  }

  v160[4] = v167;
  *v161 = v168[0];
  *(&v161[1] + 5) = *(v168 + 13);
  v160[0] = v163;
  v160[1] = v164;
  v160[2] = v165;
  v160[3] = v166;
  v62 = *(v54 + 3);
  *&v161[7] = *(v54 + 2);
  v63 = *v54;
  *&v161[5] = *(v54 + 1);
  *&v161[3] = v63;
  v64 = *(v54 + 4);
  v65 = *(v54 + 5);
  *(v162 + 13) = *(v54 + 93);
  v162[0] = v65;
  *&v161[11] = v64;
  *&v161[9] = v62;
  sub_24A508CE4(v169, &v154);
  sub_24A50D6A4(v160, &qword_27EF52250, qword_24A63BE30);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v66 = fabs(v46);
  v67 = sub_24A62E314();
  v68 = sub_24A506EB8(v67, qword_27EF5C118);
  sub_24A60BEB8(v58, v59, type metadata accessor for FMFindingViewState);
  v69 = sub_24A62E2F4();
  v70 = sub_24A62EF34();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = v38;
    v73 = swift_slowAlloc();
    v154 = v73;
    *v71 = 136316674;
    v74 = sub_24A628E50();
    v75 = v59;
    v76 = v68;
    v78 = v77;
    sub_24A60BF20(v75, type metadata accessor for FMFindingViewState);
    v79 = sub_24A509BA8(v74, v78, &v154);
    v68 = v76;

    *(v71 + 4) = v79;
    *(v71 + 12) = 1024;
    *(v71 + 14) = v149;
    *(v71 + 18) = 1024;
    LODWORD(v76) = v143;
    v80 = v144;
    *(v71 + 20) = (v144 & 1) == 0;
    *(v71 + 24) = 1024;
    *(v71 + 26) = v138 & 1;
    *(v71 + 30) = 1024;
    *(v71 + 32) = v76;
    *(v71 + 36) = 1024;
    *(v71 + 38) = v66 < 1.0;
    v39 = v150;
    *(v71 + 42) = 1024;
    *(v71 + 44) = v142;
    _os_log_impl(&dword_24A503000, v69, v70, "    FMFindingStateTransCoord: Enqueuing state update: %s.\n    didTransitionFromFoundToNonFound: %{BOOL}d\n    didTransitionToDifferentBeacon: %{BOOL}d\n    groupedStateTransition: %{BOOL}d\n    shouldShowAutomaticReconnection: %{BOOL}d\n    isQuickUpdate: %{BOOL}d\n    isDifferentLevel: %{BOOL}d", v71, 0x30u);
    sub_24A508C54(v73);
    v81 = v73;
    v38 = v72;
    MEMORY[0x24C21BBE0](v81, -1, -1);
    v82 = v71;
    v58 = v153;
    MEMORY[0x24C21BBE0](v82, -1, -1);

    if (!v76)
    {
      goto LABEL_22;
    }

LABEL_27:
    v92 = v136;
    sub_24A60BEB8(v58, v136, type metadata accessor for FMFindingViewState);
    v149 = v68;
    v93 = sub_24A62E2F4();
    v94 = sub_24A62EF34();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v154 = v96;
      *v95 = 136315138;
      v97 = sub_24A628E50();
      v99 = v98;
      sub_24A60BF20(v92, type metadata accessor for FMFindingViewState);
      v100 = sub_24A509BA8(v97, v99, &v154);
      v58 = v153;

      *(v95 + 4) = v100;
      _os_log_impl(&dword_24A503000, v93, v94, "FMFindingStateTransCoord: Delaying state update to: %s.", v95, 0xCu);
      sub_24A508C54(v96);
      MEMORY[0x24C21BBE0](v96, -1, -1);
      MEMORY[0x24C21BBE0](v95, -1, -1);
    }

    else
    {

      sub_24A60BF20(v92, type metadata accessor for FMFindingViewState);
    }

    v103 = v147;
    sub_24A60BEB8(v58, v147, type metadata accessor for FMFindingViewState);
    v104 = v152;
    (*(v146 + 56))(v103, 0, 1, v152);
    v105 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState;
    swift_beginAccess();
    sub_24A60B788(v103, v38 + v105);
    swift_endAccess();
    v106 = objc_opt_self();
    v158 = sub_24A60BF88;
    v159 = v38;
    v154 = MEMORY[0x277D85DD0];
    v155 = 1107296256;
    v156 = sub_24A5BE9EC;
    v157 = &unk_285DAB1F0;
    v107 = _Block_copy(&v154);

    v108 = [v106 scheduledTimerWithTimeInterval:0 repeats:v107 block:2.0];
    _Block_release(v107);
    v109 = *(v38 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer);
    *(v38 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer) = v108;

    v110 = v151;
    swift_beginAccess();
    sub_24A60BF20(v39, type metadata accessor for FMFindingViewState);
    sub_24A60BEB8(v110, v39, type metadata accessor for FMFindingViewState);
    swift_endAccess();
    v111 = (v58 + *(v104 + 24));
    v112 = *v111;
    v113 = v111[1];
    v114 = (v39 + *(v104 + 60));
    v115 = v114[1];

    *v114 = v112;
    v114[1] = v113;
    v116 = v137;
    sub_24A60BEB8(v58, v137, type metadata accessor for FMFindingViewState);
    v117 = sub_24A62E2F4();
    v118 = sub_24A62EF34();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v154 = v120;
      *v119 = 136315138;
      v121 = sub_24A628E50();
      v123 = v122;
      sub_24A60BF20(v116, type metadata accessor for FMFindingViewState);
      v124 = sub_24A509BA8(v121, v123, &v154);

      *(v119 + 4) = v124;
      _os_log_impl(&dword_24A503000, v117, v118, "FMFindingStateTransCoord: Transitional state will be displayed: %s.", v119, 0xCu);
      sub_24A508C54(v120);
      v125 = v120;
      v39 = v150;
      MEMORY[0x24C21BBE0](v125, -1, -1);
      MEMORY[0x24C21BBE0](v119, -1, -1);
    }

    else
    {

      sub_24A60BF20(v116, type metadata accessor for FMFindingViewState);
    }

    goto LABEL_37;
  }

  sub_24A60BF20(v59, type metadata accessor for FMFindingViewState);
  v80 = v144;
  if (v143)
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((v66 < 1.0) & v142) == 1 && ((v80 | v138))
  {
    v83 = v135;
    sub_24A60BEB8(v58, v135, type metadata accessor for FMFindingViewState);
    v84 = sub_24A62E2F4();
    v85 = sub_24A62EF34();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v154 = v87;
      *v86 = 136315138;
      v88 = sub_24A628E50();
      v90 = v89;
      sub_24A60BF20(v83, type metadata accessor for FMFindingViewState);
      v91 = sub_24A509BA8(v88, v90, &v154);
      v58 = v153;

      *(v86 + 4) = v91;
      _os_log_impl(&dword_24A503000, v84, v85, "FMFindingStateTransCoord: Delaying State Update to: %s.", v86, 0xCu);
      sub_24A508C54(v87);
      MEMORY[0x24C21BBE0](v87, -1, -1);
      MEMORY[0x24C21BBE0](v86, -1, -1);
    }

    else
    {

      sub_24A60BF20(v83, type metadata accessor for FMFindingViewState);
    }

    v126 = v147;
    sub_24A60BEB8(v58, v147, type metadata accessor for FMFindingViewState);
    (*(v146 + 56))(v126, 0, 1, v152);
    v127 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState;
    swift_beginAccess();
    sub_24A60B788(v126, v38 + v127);
    swift_endAccess();
    v128 = objc_opt_self();
    v158 = sub_24A60BC04;
    v159 = v38;
    v154 = MEMORY[0x277D85DD0];
    v155 = 1107296256;
    v156 = sub_24A5BE9EC;
    v157 = &unk_285DAB1C8;
    v129 = _Block_copy(&v154);

    v130 = [v128 scheduledTimerWithTimeInterval:0 repeats:v129 block:1.0];
    _Block_release(v129);
    v131 = *(v38 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer);
    *(v38 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer) = v130;

    v132 = v151;
    swift_beginAccess();
    sub_24A60BF20(v39, type metadata accessor for FMFindingViewState);
    sub_24A60BEB8(v132, v39, type metadata accessor for FMFindingViewState);
  }

  else
  {
    [*(v38 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer) invalidate];
    v101 = v147;
    (*(v146 + 56))(v147, 1, 1, v152);
    v102 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState;
    swift_beginAccess();
    sub_24A60B788(v101, v38 + v102);
  }

  swift_endAccess();
LABEL_37:
  sub_24A60AB3C(v39);
  return sub_24A60BF20(v39, type metadata accessor for FMFindingViewState);
}

uint64_t sub_24A60AB3C(_WORD *a1)
{
  v2 = v1;
  v4 = sub_24A62E1A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMFindingViewState();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v44 - v14);
  v16 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_currentState;
  swift_beginAccess();
  sub_24A60BEB8(v2 + v16, v15, type metadata accessor for FMFindingViewState);
  v17 = sub_24A629198(a1, v15);
  result = sub_24A60BF20(v15, type metadata accessor for FMFindingViewState);
  if (v17)
  {
    return result;
  }

  v49 = v13;
  sub_24A60BEB8(v2 + v16, v15, type metadata accessor for FMFindingViewState);
  v19 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_previousState;
  swift_beginAccess();
  sub_24A60BBA0(v15, v2 + v19);
  swift_endAccess();
  swift_beginAccess();
  sub_24A5D0FCC(a1, v2 + v16);
  swift_endAccess();
  v20 = sub_24A62715C();
  v48 = v19;
  v21 = sub_24A62715C();
  if (v20 != 4)
  {
    if (v21 == 4 || (sub_24A60D8D4(v20, v21) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v22 = sub_24A62E314();
    sub_24A506EB8(v22, qword_27EF5C118);

    v23 = sub_24A62E2F4();
    v24 = sub_24A62EF34();
    goto LABEL_13;
  }

  if (v21 == 4)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v25 = sub_24A62E314();
  sub_24A506EB8(v25, qword_27EF5C118);

  v23 = sub_24A62E2F4();
  v24 = sub_24A62EF64();
LABEL_13:
  v26 = v24;

  if (os_log_type_enabled(v23, v26))
  {
    v27 = swift_slowAlloc();
    v47 = v4;
    v28 = v27;
    v29 = swift_slowAlloc();
    v46 = v5;
    v30 = v29;
    v50[0] = v29;
    *v28 = 136315138;
    sub_24A60BEB8(v2 + v16, v15, type metadata accessor for FMFindingViewState);
    v31 = sub_24A628E50();
    v45 = v8;
    v33 = v32;
    sub_24A60BF20(v15, type metadata accessor for FMFindingViewState);
    v34 = sub_24A509BA8(v31, v33, v50);
    v8 = v45;

    *(v28 + 4) = v34;
    _os_log_impl(&dword_24A503000, v23, v26, "🧭 FMFindingStateTransCoord: %s", v28, 0xCu);
    sub_24A508C54(v30);
    v35 = v30;
    v5 = v46;
    MEMORY[0x24C21BBE0](v35, -1, -1);
    v36 = v28;
    v4 = v47;
    MEMORY[0x24C21BBE0](v36, -1, -1);
  }

  v37 = v2 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v37 + 8);
    v39 = v8;
    ObjectType = swift_getObjectType();
    sub_24A60BEB8(v2 + v16, v15, type metadata accessor for FMFindingViewState);
    v41 = v49;
    sub_24A60BEB8(v2 + v48, v49, type metadata accessor for FMFindingViewState);
    v42 = ObjectType;
    v8 = v39;
    (*(v38 + 16))(v2, v15, v41, v42, v38);
    swift_unknownObjectRelease();
    sub_24A60BF20(v41, type metadata accessor for FMFindingViewState);
    sub_24A60BF20(v15, type metadata accessor for FMFindingViewState);
  }

  sub_24A62E194();
  v43 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_lastStateUpdateTime;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v43, v8, v4);
  return swift_endAccess();
}

void sub_24A60B054()
{
  v1 = v0;
  v2 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for FMFindingViewState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v31 - v15);
  v17 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState;
  swift_beginAccess();
  sub_24A60B718(v1 + v17, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24A50D6A4(v8, &qword_27EF4FA80, &qword_24A634D40);
  }

  else
  {
    sub_24A529028(v8, v16);
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v18 = sub_24A62E314();
    sub_24A506EB8(v18, qword_27EF5C118);
    sub_24A60BEB8(v16, v13, type metadata accessor for FMFindingViewState);
    v19 = sub_24A62E2F4();
    v20 = sub_24A62EF34();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = v21;
      v33 = swift_slowAlloc();
      v35 = v33;
      *v21 = 136315138;
      v22 = sub_24A628E50();
      v34 = v5;
      v24 = v23;
      sub_24A60BF20(v13, type metadata accessor for FMFindingViewState);
      v25 = sub_24A509BA8(v22, v24, &v35);
      v5 = v34;

      v26 = v32;
      *(v32 + 1) = v25;
      v27 = v26;
      _os_log_impl(&dword_24A503000, v19, v20, "FMFindingStateTransCoord: Commiting delayed state update to: %s.", v26, 0xCu);
      v28 = v33;
      sub_24A508C54(v33);
      MEMORY[0x24C21BBE0](v28, -1, -1);
      MEMORY[0x24C21BBE0](v27, -1, -1);
    }

    else
    {

      sub_24A60BF20(v13, type metadata accessor for FMFindingViewState);
    }

    sub_24A60AB3C(v16);
    (*(v10 + 56))(v5, 1, 1, v9);
    swift_beginAccess();
    sub_24A60B788(v5, v1 + v17);
    swift_endAccess();
    v29 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer;
    [*(v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer) invalidate];
    sub_24A60BF20(v16, type metadata accessor for FMFindingViewState);
    v30 = *(v1 + v29);
    *(v1 + v29) = 0;
  }
}

uint64_t sub_24A60B43C()
{
  sub_24A60BF20(v0 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_currentState, type metadata accessor for FMFindingViewState);
  sub_24A50D6A4(v0 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState, &qword_27EF4FA80, &qword_24A634D40);
  sub_24A60BF20(v0 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_previousState, type metadata accessor for FMFindingViewState);
  v1 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_lastStateUpdateTime;
  v2 = sub_24A62E1A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24A52358C(v0 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFindingStateTransitionCoordinator()
{
  result = qword_27EF52238;
  if (!qword_27EF52238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A60B5A8()
{
  v0 = type metadata accessor for FMFindingViewState();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_24A60B6C0();
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      v5 = sub_24A62E1A4();
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24A60B6C0()
{
  if (!qword_27EF52248)
  {
    type metadata accessor for FMFindingViewState();
    v0 = sub_24A62F1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF52248);
    }
  }
}

uint64_t sub_24A60B718(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A60B788(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A60B7F8(uint64_t a1, unsigned __int16 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingViewState();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_currentState;
  swift_beginAccess();
  sub_24A60BEB8(v3 + v16, v13, type metadata accessor for FMFindingViewState);
  sub_24A628644(a2, v15);
  sub_24A60BF20(v13, type metadata accessor for FMFindingViewState);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C118);
  sub_24A60BEB8(v15, v10, type metadata accessor for FMFindingViewState);
  v18 = sub_24A62E2F4();
  v19 = sub_24A62EF34();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    v22 = sub_24A628E50();
    v24 = v23;
    sub_24A60BF20(v10, type metadata accessor for FMFindingViewState);
    v25 = sub_24A509BA8(v22, v24, &v29);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_24A503000, v18, v19, "FMFindingStateTransCoord: Received new session state: %s.", v20, 0xCu);
    sub_24A508C54(v21);
    MEMORY[0x24C21BBE0](v21, -1, -1);
    MEMORY[0x24C21BBE0](v20, -1, -1);
  }

  else
  {

    sub_24A60BF20(v10, type metadata accessor for FMFindingViewState);
  }

  v26 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v27 = (v26 >> 13) & 3;
  if (v27 && (v27 == 1 || (v26 & 0x80000000) == 0))
  {
    sub_24A609B94(v15);
  }

  else
  {
    sub_24A60AB3C(v15);
  }

  return sub_24A60BF20(v15, type metadata accessor for FMFindingViewState);
}

void *sub_24A60BAFC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24A60BB70@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24A60BBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingViewState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A60BC08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A60BC20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFindingSession.Error(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v11 = sub_24A62E314();
  sub_24A506EB8(v11, qword_27EF5C118);
  sub_24A60BEB8(a1, v10, type metadata accessor for FMFindingSession.Error);
  v12 = sub_24A62E2F4();
  v13 = sub_24A62EF64();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    sub_24A60BEB8(v10, v7, type metadata accessor for FMFindingSession.Error);
    v16 = sub_24A62EC44();
    v18 = v17;
    sub_24A60BF20(v10, type metadata accessor for FMFindingSession.Error);
    v19 = sub_24A509BA8(v16, v18, &v25);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24A503000, v12, v13, "FMFindingStateTransCoord: Forwarding error from finding session: %s.", v14, 0xCu);
    sub_24A508C54(v15);
    MEMORY[0x24C21BBE0](v15, -1, -1);
    MEMORY[0x24C21BBE0](v14, -1, -1);
  }

  else
  {

    sub_24A60BF20(v10, type metadata accessor for FMFindingSession.Error);
  }

  v20 = v2 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    (*(v22 + 24))(v2, a1, ObjectType, v22);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A60BEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A60BF20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24A60BF8C(double a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value;
  LODWORD(a1) = *&v1[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value];
  [*&v1[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider] setValue_];
  [*&v2[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper] setValue_];
  v4 = roundf(fabsf(log10f(*&v1[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue])));
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.2234e18)
  {
    v5 = sub_24A62F614();
    MEMORY[0x24C21A5D0](v5);

    MEMORY[0x24C21A5D0](102, 0xE100000000000000);
    v6 = *&v1[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_valueLabel];
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v7 = swift_allocObject();
    v8 = *&v1[v3];
    v9 = MEMORY[0x277D83A90];
    *(v7 + 16) = xmmword_24A633830;
    v10 = MEMORY[0x277D83B08];
    *(v7 + 56) = v9;
    *(v7 + 64) = v10;
    *(v7 + 32) = v8;
    sub_24A62EC24();

    v11 = sub_24A62EBE4();

    [v6 setText_];

    [v2 sendActionsForControlEvents_];
    return;
  }

LABEL_7:
  __break(1u);
}

char *sub_24A60C168(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  v11 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_titleLabel;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_valueLabel;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v13 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  v14 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper;
  *&v5[v14] = [objc_allocWithZone(MEMORY[0x277D75AC0]) init];
  v15 = &v5[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_title];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v5[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue] = 1008981770;
  *&v5[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_minimumValue] = 0;
  *&v5[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_maximumValue] = 1065353216;
  *&v5[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value] = 0;
  v29.receiver = v5;
  v29.super_class = type metadata accessor for FMFindingDebugSlider();
  v16 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A60C3EC();
  v17 = &v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_title];
  v18 = *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_title + 8];
  *v17 = a1;
  *(v17 + 1) = a2;

  v19 = *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_titleLabel];

  v20 = sub_24A62EBE4();
  [v19 setText_];

  *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value] = a3;
  sub_24A60BF8C(v21);
  v22 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_minimumValue;
  *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_minimumValue] = a3;
  v23 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider;
  *&v24 = a3;
  [*&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider] setMinimumValue_];
  v25 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper;
  [*&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper] setMinimumValue_];
  v26 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_maximumValue;
  *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_maximumValue] = a4;
  *&v27 = a4;
  [*&v16[v23] setMaximumValue_];
  [*&v16[v25] setMaximumValue_];
  *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue] = a5;
  [*&v16[v25] setStepValue_];

  return v16;
}

void sub_24A60C3EC()
{
  [v0 setLayoutMargins_];
  v63 = v0;
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_titleLabel];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  v62 = v1;
  [v1 setFont_];

  v3 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v3 setAxis_];
  [v4 setAxis_];
  [v5 setAxis_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A635FE0;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v7 = inited & 0xC000000000000001;
  v8 = inited & 0xFFFFFFFFFFFFFF8;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  for (i = v9; ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v13 = i;
    [i setSpacing_];

    if (v7)
    {
      v14 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*(v8 + 16) < 2uLL)
      {
        goto LABEL_33;
      }

      v14 = *(inited + 40);
    }

    v15 = v14;
    [v14 setSpacing_];

    if (v7)
    {
      break;
    }

    if (*(v8 + 16) >= 3uLL)
    {
      v16 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v16 = MEMORY[0x24C21ACB0](2, inited);
LABEL_10:
  v17 = v16;
  [v16 setSpacing_];

  swift_setDeallocating();
  v18 = *(inited + 16);
  swift_arrayDestroy();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A63AC60;
  *(inited + 32) = v9;
  v59 = (inited + 32);
  *(inited + 40) = v10;
  *(inited + 48) = v11;
  *(inited + 56) = v62;
  v19 = *&v63[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_valueLabel];
  *(inited + 64) = v19;
  v20 = *&v63[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider];
  *(inited + 72) = v20;
  v21 = *&v63[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper];
  *(inited + 80) = v21;
  v8 = inited & 0xC000000000000001;
  v7 = inited & 0xFFFFFFFFFFFFFF8;
  v9 = v9;
  v10 = v10;
  v61 = v11;
  v22 = v62;
  v11 = v19;
  v62 = v20;
  v23 = v21;
  if ((inited & 0xC000000000000001) == 0)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = v9;
      goto LABEL_13;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v24 = MEMORY[0x24C21ACB0](0, inited);
LABEL_13:
  v25 = v24;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v8)
  {
    v26 = MEMORY[0x24C21ACB0](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_32;
    }

    v26 = *(inited + 40);
  }

  v27 = v26;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v8)
  {
    v28 = MEMORY[0x24C21ACB0](2, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      goto LABEL_32;
    }

    v28 = *(inited + 48);
  }

  v29 = v28;
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v8)
  {
    v30 = MEMORY[0x24C21ACB0](3, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
      goto LABEL_32;
    }

    v30 = *(inited + 56);
  }

  v31 = v30;
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v8)
  {
    v32 = MEMORY[0x24C21ACB0](4, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
    {
      goto LABEL_32;
    }

    v32 = *(inited + 64);
  }

  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v8)
  {
    v34 = MEMORY[0x24C21ACB0](5, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
    {
      goto LABEL_32;
    }

    v34 = *(inited + 72);
  }

  v35 = v34;
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];

  if (!v8)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v36 = v11;
      v37 = *(inited + 80);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v36 = v11;
  v37 = MEMORY[0x24C21ACB0](6, inited);
LABEL_31:
  v38 = v37;
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];

  swift_setDeallocating();
  v39 = *(inited + 16);
  swift_arrayDestroy();
  [v10 addArrangedSubview_];
  v40 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v10 addArrangedSubview_];

  [v10 addArrangedSubview_];
  [v61 addArrangedSubview_];
  [v61 addArrangedSubview_];
  [v9 addArrangedSubview_];
  [v9 addArrangedSubview_];
  [v63 addSubview_];
  v60 = objc_opt_self();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_24A633820;
  v42 = [v9 topAnchor];
  v64 = v23;
  v43 = [v63 layoutMarginsGuide];
  v44 = [v43 topAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v41 + 32) = v45;
  v46 = [v9 bottomAnchor];
  v47 = [v63 layoutMarginsGuide];
  v48 = [v47 bottomAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v41 + 40) = v49;
  v50 = [v9 leadingAnchor];
  v51 = [v63 layoutMarginsGuide];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v41 + 48) = v53;
  v54 = [v9 trailingAnchor];

  v55 = [v63 layoutMarginsGuide];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v41 + 56) = v57;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v58 = sub_24A62ED54();

  [v60 activateConstraints_];

  [v62 addTarget:v63 action:sel_handleValueChangedWithSender_ forControlEvents:4096];
  [v64 addTarget:v63 action:sel_handleValueChangedWithSender_ forControlEvents:4096];
}