void _s11FMFindingUI0A14ViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isInternalBuild;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style;
  if (qword_27EF4EA38 != -1)
  {
    swift_once();
  }

  v40[8] = xmmword_27EF5C5E0;
  v40[9] = unk_27EF5C5F0;
  v40[10] = xmmword_27EF5C600;
  v41 = qword_27EF5C610;
  v40[4] = xmmword_27EF5C5A0;
  v40[5] = unk_27EF5C5B0;
  v40[6] = xmmword_27EF5C5C0;
  v40[7] = unk_27EF5C5D0;
  v40[0] = xmmword_27EF5C560;
  v40[1] = *&qword_27EF5C570;
  v40[2] = xmmword_27EF5C580;
  v40[3] = unk_27EF5C590;
  memmove((v1 + v5), &xmmword_27EF5C560, 0xB8uLL);
  v6 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *(v1 + v6) = swift_initStaticObject();
  v7 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_snapshotContainer;
  v8 = objc_allocWithZone(MEMORY[0x277D75D18]);
  sub_24A5D1AFC(v40, v39);
  *(v1 + v7) = [v8 init];
  v9 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_reducedMotion;
  *(v1 + v9) = UIAccessibilityIsReduceMotionEnabled();
  v10 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerView);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v14 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v15 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v16 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v17 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton;
  v18 = type metadata accessor for FMR1GlyphButton();
  v19 = objc_allocWithZone(v18);
  *(v1 + v17) = sub_24A629644(0, 0, 0, 0);
  v20 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
  v21 = type metadata accessor for FMR1HapticsController();
  v22 = [objc_allocWithZone(v21) init];
  v20[3] = v21;
  v20[4] = &off_285DA5E60;
  *v20 = v22;
  v23 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton;
  v24 = objc_allocWithZone(v18);
  *(v1 + v23) = sub_24A629644(0, 0, 0, 0);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem) = 0;
  v25 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton;
  v26 = objc_allocWithZone(v18);
  *(v1 + v25) = sub_24A629644(0, 0, 0, 0);
  v27 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView;
  v28 = objc_allocWithZone(type metadata accessor for FMR1DistanceView());
  v39[0] = 1;
  *(v1 + v27) = sub_24A5F75FC(0, 1, 0x100000000);
  v29 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo;
  *(v29 + 112) = 0;
  *(v29 + 80) = 0u;
  *(v29 + 96) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *v29 = 0u;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundItemWorkItem) = 0;
  v30 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  *v30 = 0;
  *(v30 + 24) = 1;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem) = 0;
  v31 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView;
  *(v1 + v31) = [objc_allocWithZone(type metadata accessor for FMBTDistanceView()) init];
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pulseTimer) = 0;
  v32 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView;
  *(v1 + v32) = [objc_allocWithZone(type metadata accessor for FMIncorrectOrientationView()) init];
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_inBand) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_insufficientFeaturesARTrackingErrorCount) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_updateTorchPeriodicCount) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_gotFirstARFrame) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount) = 0;
  v33 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration;
  if (qword_27EF4EA58 != -1)
  {
    swift_once();
  }

  *(v1 + v33) = qword_27EF5C6F8;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_FMR1MaxErrorAlertCount) = 3;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying) = 2;
  v34 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_playSoundHandler);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willAppearHandler);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willDisappearHandler);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_flashLightHandler);
  *v38 = 0;
  v38[1] = 0;
  sub_24A62F444();
  __break(1u);
}

uint64_t type metadata accessor for FMFindingViewController()
{
  result = qword_27EF516D8;
  if (!qword_27EF516D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A5D0488()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5D04C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5D04E0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A5D0530@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_24A5D0588(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_24A5CC998(v5);
}

uint64_t sub_24A5D0614()
{
  result = type metadata accessor for FMFindingViewState();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24A5D0C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A5D0D6C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown) = 0;
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_24A5D0DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A5D0E10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A5D0E7C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_24A5D0EC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v4([*(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_snapshotContainer) insertSubview:v2 atIndex:0]);

  return [v2 setAlpha_];
}

uint64_t sub_24A5D0F38()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5D0FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingViewState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5D1084()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5D10BC(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_24A5D1100@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_24A5D113C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A5D1164(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_24A5D1190(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_24A5D11C8()
{
  v1 = *(type metadata accessor for FMFindingSession.Error(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_12;
    }

LABEL_8:
    v7 = sub_24A62E214();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      goto LABEL_8;
    case 3:
      v9 = sub_24A62E214();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v8 = *(v5 + *(sub_24A508FA4(&qword_27EF4F658, &unk_24A633E10) + 48));
      goto LABEL_11;
    case 4:
LABEL_9:
      v8 = *v5;
LABEL_11:

      break;
  }

LABEL_12:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A5D1350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24A5D13B8()
{
  v1 = *(type metadata accessor for FMFindingSession.Error(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_24A5CAC44(v2);
}

uint64_t sub_24A5D141C()
{
  v1 = type metadata accessor for FMFindingViewState();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v1[5];
  v6 = sub_24A62E214();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v0 + v3 + v1[6] + 8);

  v8 = v0 + v3 + v1[8];
  v9 = *(v8 + 96);
  if ((v9 | 0x2000000u) >> 25 != 3)
  {
    *(v8 + 100);
    sub_24A508BE4(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), v9, SBYTE2(v9));
  }

  v10 = *(v0 + v3 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A5D158C()
{
  v1 = *(type metadata accessor for FMFindingViewState() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24A5CDA18(v2, v3);
}

uint64_t sub_24A5D15F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF50948, &qword_24A63AA70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v35 - v9;
  v11 = sub_24A62E024();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[2] = 0xD0000000000000C5;
  v35[3] = 0x800000024A641BC0;
  if (a2)
  {
    v16 = 8250;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    v17 = 0xE200000000000000;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v35[0] = 0xD000000000000027;
  v35[1] = 0x800000024A641C90;
  if (a2)
  {
    v18 = a1;
  }

  else
  {
    v18 = 0;
  }

  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  MEMORY[0x24C21A5D0](v16, v17);

  MEMORY[0x24C21A5D0](v18, v19);

  sub_24A62E004();
  sub_24A55BEBC();
  v20 = sub_24A62F204();
  v22 = v21;
  (*(v12 + 8))(v15, v11);

  if (v22)
  {
    strcpy(v35, "&Description=");
    HIWORD(v35[1]) = -4864;
    MEMORY[0x24C21A5D0](v20, v22);

    MEMORY[0x24C21A5D0](v35[0], v35[1]);
  }

  sub_24A62E0E4();

  v23 = [objc_opt_self() defaultWorkspace];
  if (v23)
  {
    v24 = v23;
    sub_24A50D63C(v10, v8, &qword_27EF50948, &qword_24A63AA70);
    v25 = sub_24A62E0F4();
    v26 = *(v25 - 8);
    v27 = 0;
    if ((*(v26 + 48))(v8, 1, v25) != 1)
    {
      v27 = sub_24A62E0B4();
      (*(v26 + 8))(v8, v25);
    }

    sub_24A59C5C8(MEMORY[0x277D84F90]);
    v28 = sub_24A62EB74();

    v29 = [v24 openSensitiveURL:v27 withOptions:v28];

    if ((v29 & 1) == 0)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v30 = sub_24A62E314();
      sub_24A506EB8(v30, qword_27EF5C118);
      v31 = sub_24A62E2F4();
      v32 = sub_24A62EF64();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_24A503000, v31, v32, "🧭 FMFindingViewCtrl: Failed sending request to Tap-To-Radar", v33, 2u);
        MEMORY[0x24C21BBE0](v33, -1, -1);
      }
    }
  }

  return sub_24A50D6A4(v10, &qword_27EF50948, &qword_24A63AA70);
}

unint64_t sub_24A5D1A78()
{
  result = qword_27EF516F8;
  if (!qword_27EF516F8)
  {
    sub_24A50D7EC(255, &qword_27EF516F0, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF516F8);
  }

  return result;
}

double sub_24A5D1B58(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 161) = 0u;
  return result;
}

uint64_t sub_24A5D1CD8()
{
  result = sub_24A55BB74(0x393531433830, 0xE600000000000000);
  qword_27EF5C738 = result;
  return result;
}

uint64_t sub_24A5D1D08()
{
  result = sub_24A55BB74(0x373441393630, 0xE600000000000000);
  qword_27EF5C740 = result;
  return result;
}

uint64_t sub_24A5D1D38()
{
  v0 = sub_24A62E814();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_24A62E874();
  qword_27EF5C748 = result;
  return result;
}

uint64_t sub_24A5D1E5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24A62E814();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&unk_27EF51700, qword_24A63AAA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24A636580;
  v9 = *MEMORY[0x277CE0EE0];
  v10 = *(v4 + 104);
  v10(v7, v9, v3);
  sub_24A62E874();
  *(v8 + 32) = sub_24A62E9A4();
  *(v8 + 40) = v11;
  v10(v7, v9, v3);
  sub_24A62E874();
  *(v8 + 48) = sub_24A62E9A4();
  *(v8 + 56) = v12;
  v10(v7, v9, v3);
  sub_24A62E874();
  *(v8 + 64) = sub_24A62E9A4();
  *(v8 + 72) = v13;
  result = sub_24A62E9B4();
  *a2 = result;
  return result;
}

uint64_t sub_24A5D203C()
{
  v0 = sub_24A62E814();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&unk_27EF51700, qword_24A63AAA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24A633A00;
  v6 = *MEMORY[0x277CE0EE0];
  v7 = *(v1 + 104);
  v7(v4, v6, v0);
  sub_24A62E874();
  *(v5 + 32) = sub_24A62E9A4();
  *(v5 + 40) = v8;
  v7(v4, v6, v0);
  sub_24A62E874();
  *(v5 + 48) = sub_24A62E9A4();
  *(v5 + 56) = v9;
  result = sub_24A62E9B4();
  qword_27EF5C760 = result;
  return result;
}

uint64_t sub_24A5D2200(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMFindingUILocalizer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_24A62F384();

  MEMORY[0x24C21A5D0](a1, a2);
  v6 = sub_24A62E054();

  return v6;
}

uint64_t sub_24A5D22F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMFindingUILocalizer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_24A62F384();

  MEMORY[0x24C21A5D0](a1, a2);
  v6 = sub_24A62E054();

  return v6;
}

uint64_t sub_24A5D2428(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMFindingUILocalizer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_24A62F384();

  MEMORY[0x24C21A5D0](a1, a2);
  v6 = sub_24A62E054();

  return v6;
}

void sub_24A5D253C(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedRadiusFactor;
  *v3 = a1;
  *(v3 + 8) = 0;
  v4 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style;
  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style + 72);
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_pixelsPerInch);
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = (1.0 - a1) * *(v4 + 48) + *(v4 + 40) * a1;
  v11 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
  v12 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode);
  if (v12)
  {
    [v12 setScale_];
  }

  v13 = [*(v4 + 56) colorWithAlphaComponent_];
  v14 = *(v1 + v11);
  if (v14)
  {
    v16 = v13;
    v15 = v14;
    [v15 setColor_];

    v13 = v16;
  }
}

void sub_24A5D26B4(double a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDiskRadius] == 1)
  {
    v4 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring;
    v5 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
    if (!sub_24A5B19C4())
    {
      sub_24A55C858(a1);
      *(v5 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v6 = *&v2[v4];
      v7 = (v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v8 = v7[35] + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      if (vabdd_f64(v8, *v7 + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v8 = *v7 + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      }

      v9 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
      *v9 = v8;
      *(v9 + 8) = 0;
      [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDotScale] == 1)
  {
    v10 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring;
    v11 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring];
    if (!sub_24A5B19C4())
    {
      sub_24A55C858(a1);
      *(v11 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v12 = *&v2[v10];
      v13 = (v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v14 = *v13 + *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v13[35] + *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v14) <= *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v14 = v13[35] + *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v15 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale];
      *v15 = v14;
      *(v15 + 8) = 0;
      [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] setScale_];
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyAngle] == 1)
  {
    v16 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring;
    v17 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring];
    if (!sub_24A5B19C4() && v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interactiveAngleFactor + 8] == 1)
    {
      sub_24A55C858(a1);
      *(v17 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v18 = *&v2[v16];
      v19 = (v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v20 = *v19 + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v19[35] + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v20) <= *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v20 = v19[35] + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v21 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle];
      *v21 = v20;
      *(v21 + 8) = 0;
      if (!*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
      {
        [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode] setZRotation_];
      }
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOpacity] == 1)
  {
    v22 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacitySpring;
    v23 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacitySpring];
    if (!sub_24A5B19C4())
    {
      sub_24A55C858(a1);
      *(v23 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v24 = *&v2[v22];
      v25 = (v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      if (vabdd_f64(v25[35] + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v25 + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v26 = *v25 + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      }

      else
      {
        v26 = v25[35] + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v27 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity];
      *v27 = v26;
      *(v27 + 8) = 0;
      [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] setAlpha_];
      [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] setAlpha_];
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyBrightness] == 1)
  {
    v28 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightnessSpring;
    v29 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightnessSpring];
    if (!sub_24A5B19C4())
    {
      sub_24A55C858(a1);
      *(v29 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v30 = *&v2[v28];
      v31 = (v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      if (vabdd_f64(v31[35] + *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v31 + *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v32 = *v31 + *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      }

      else
      {
        v32 = v31[35] + *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v33 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness];
      *v33 = v32;
      *(v33 + 8) = 0;
      v34 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor];
      v35 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode];
      v36 = v34;
      sub_24A60CFCC(v36, v32);
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOffset] == 1)
  {
    v37 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_xOffsetSpring;
    v38 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_xOffsetSpring];
    if (!sub_24A5B19C4() || (v39 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring], !sub_24A5B19C4()))
    {
      sub_24A55C858(a1);
      *(v38 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v40 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring;
      v41 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring];
      sub_24A55C858(a1);
      *(v41 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v42 = *&v2[v37];
      v43 = (v42 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      if (vabdd_f64(v43[35] + *(v42 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v43 + *(v42 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v42 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v44 = *v43 + *(v42 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      }

      else
      {
        v44 = v43[35] + *(v42 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v45 = *&v2[v40];
      v46 = (v45 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v47 = v46[35] + *(v45 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      if (vabdd_f64(v47, *v46 + *(v45 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v45 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v47 = *v46 + *(v45 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      }

      v48 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOffset];
      *v48 = v44;
      v48[1] = v47;
      *(v48 + 16) = 0;
      [v2 setPosition_];
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] == 1)
  {
    v49 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactorSpring;
    v50 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactorSpring];
    if (!sub_24A5B19C4() && (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactor + 8] & 1) == 0)
    {
      sub_24A55C858(a1);
      *(v50 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v51 = *&v2[v49];
      v52 = (v51 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v53 = *v52 + *(v51 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v52[35] + *(v51 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v53) <= *(v51 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v53 = v52[35] + *(v51 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      sub_24A5D253C(v53);
    }
  }

  v54 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_headingSpring;
  v55 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_headingSpring];
  if (!sub_24A5B19C4() && *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
  {
    sub_24A55C858(a1);
    *(v55 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    v56 = *&v2[v54];
    v57 = (v56 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    v58 = *v57 + *(v56 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    if (vabdd_f64(v57[35] + *(v56 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v58) <= *(v56 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v58 = v57[35] + *(v56 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading] = v58;
    [v2 setZRotation_];
  }

  v59 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode];
  v60 = *(v59 + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDiskNode);
  v61 = *(v60 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_sizeSpring);
  sub_24A55C858(a1);
  *(v61 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v62 = *(v60 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_opacitySpring);
  sub_24A55C858(a1);
  *(v62 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  sub_24A5D8CD4();
  v63 = *(v59 + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDotNode);
  sub_24A6082B8(a1);
  v64 = *(v59 + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_levelRingsNode);
  sub_24A61F414(*&a1, 0);
}

uint64_t sub_24A5D2FB0()
{
  result = PRArmsReachThresholdEnter();
  qword_27EF5C768 = v1;
  return result;
}

uint64_t sub_24A5D2FD0()
{
  result = PRArmsReachThresholdExit();
  qword_27EF5C770 = v1;
  return result;
}

uint64_t sub_24A5D2FF0()
{
  result = PRVerticalThresholdEnter();
  qword_27EF5C778 = v1;
  return result;
}

uint64_t sub_24A5D3010()
{
  result = PRVerticalThresholdExit();
  qword_27EF5C780 = v1;
  return result;
}

double sub_24A5D3030()
{
  PRItemFoundThresholdEnter();
  if (qword_27EF4EA90 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  result = v0 / *&qword_27EF5C768;
  qword_27EF5C788 = *&result;
  return result;
}

double sub_24A5D309C()
{
  if (qword_27EF4EAA0 != -1)
  {
    swift_once();
  }

  result = *&qword_27EF5C778 * 1.1;
  *&qword_27EF5C790 = *&qword_27EF5C778 * 1.1;
  return result;
}

void sub_24A5D30FC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

char *sub_24A5D3188(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v9 = v8;
  v79 = a6;
  v82 = a5;
  v80 = a4;
  v76 = sub_24A62F004();
  v15 = *(v76 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v76);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A62EFD4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_24A62EAD4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v77 = *a1;
  v78 = *a2;
  v23 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_style];
  __asm { FMOV            V0.2D, #0.5 }

  *v23 = _Q0;
  *(v23 + 2) = 0;
  v81 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_ringView;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_ringView] = 0;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_axisesNode] = 0;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode] = 0;
  v29 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_previousHeading];
  *v29 = 0;
  v29[8] = 1;
  v30 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_motionManager;
  *&v8[v30] = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_dotCountObservation] = 0;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_debugModeObservation] = 0;
  v31 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_lastRenderTime];
  *v31 = 0;
  v31[8] = 1;
  v32 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  sub_24A62EAC4();
  sub_24A62EFC4();
  (*(v15 + 104))(v18, *MEMORY[0x277D85260], v76);
  *&v8[v32] = sub_24A62F044();
  v33 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation];
  *v34 = 0;
  *(v34 + 1) = 0;
  v34[16] = 1;
  v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_usingDebuggingTouches] = 0;
  v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_shouldApplyOpacity] = 1;
  v35 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacity];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_presentedOpacity];
  *v36 = 0;
  v36[8] = 1;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isInteractivelyDebugging] = 0;
  v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_experienceType] = v77;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_findingType] = v78;
  v37 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config];
  v38 = *(a3 + 144);
  *(v37 + 8) = *(a3 + 128);
  *(v37 + 9) = v38;
  *(v37 + 10) = *(a3 + 160);
  v37[176] = *(a3 + 176);
  v39 = *(a3 + 80);
  *(v37 + 4) = *(a3 + 64);
  *(v37 + 5) = v39;
  v40 = *(a3 + 112);
  *(v37 + 6) = *(a3 + 96);
  *(v37 + 7) = v40;
  v41 = *(a3 + 16);
  *v37 = *a3;
  *(v37 + 1) = v41;
  v42 = *(a3 + 48);
  *(v37 + 2) = *(a3 + 32);
  *(v37 + 3) = v42;
  v43 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_sceneSize];
  *v43 = a7;
  v43[1] = a8;
  v44 = *&v8[v81];
  v45 = v80;
  *&v9[v81] = v80;
  v81 = a3;
  sub_24A5D7C00(a3, aBlock);
  v80 = v45;

  *&v9[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacitySpring] = sub_24A5B1B3C(0, 1, 0x3F847AE147AE147BLL, 0, 0, 1);
  v46 = type metadata accessor for FMPFSKScene();
  v83.receiver = v9;
  v83.super_class = v46;
  v47 = objc_msgSendSuper2(&v83, sel_initWithSize_, a7, a8);
  *&v47[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate + 8] = v79;
  swift_unknownObjectWeakAssign();
  v48 = objc_opt_self();
  v49 = v47;
  v50 = [v48 clearColor];
  [v49 setBackgroundColor_];

  [v49 setAnchorPoint_];
  [v49 setScaleMode_];
  sub_24A5D44FC();
  v51 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_motionManager;
  [*&v49[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_motionManager] setDeviceMotionUpdateInterval_];
  v52 = *&v49[v51];
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 mainQueue];
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A5D7DB4;
  aBlock[5] = v56;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5D30FC;
  aBlock[3] = &unk_285DA9190;
  v57 = _Block_copy(aBlock);

  [v54 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v55 withHandler:v57];
  _Block_release(v57);

  v58 = objc_opt_self();
  v59 = [v58 standardUserDefaults];
  aBlock[0] = v59;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = sub_24A62E094();

  v61 = *&v49[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_dotCountObservation];
  *&v49[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_dotCountObservation] = v60;

  v62 = [v58 standardUserDefaults];
  aBlock[0] = v62;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_24A62E094();

  v64 = *&v49[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_debugModeObservation];
  *&v49[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_debugModeObservation] = v63;

  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v65 = sub_24A62E314();
  sub_24A506EB8(v65, qword_27EF5C0E8);
  v66 = sub_24A62E2F4();
  v67 = sub_24A62EF64();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v68 = 138412546;
    *(v68 + 4) = v49;
    *v69 = v49;
    *(v68 + 12) = 2080;
    v71 = v49;
    v72 = sub_24A62F0E4();
    v74 = sub_24A509BA8(v72, v73, aBlock);

    *(v68 + 14) = v74;
    _os_log_impl(&dword_24A503000, v66, v67, "🧭 FMPFSKScene%@: init with size={%s}", v68, 0x16u);
    sub_24A58FDEC(v69);
    MEMORY[0x24C21BBE0](v69, -1, -1);
    sub_24A508C54(v70);
    MEMORY[0x24C21BBE0](v70, -1, -1);
    MEMORY[0x24C21BBE0](v68, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_24A5D7E8C(v81);

  return v49;
}

void sub_24A5D3AE4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_24A5D5AA8(a1);
  }
}

uint64_t sub_24A5D3B40()
{
  v0 = sub_24A62EAD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EA94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(result + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue);
    v12 = result;
    sub_24A62EA84();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    aBlock[4] = sub_24A5D7F24;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA9230;
    v14 = _Block_copy(aBlock);
    v15 = v12;
    sub_24A62EAB4();
    MEMORY[0x24C21A950](0, v4, v9, v14);
    _Block_release(v14);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_24A5D3D94(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (!v1)
  {
    return;
  }

  v2 = v1[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType];
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v5 = v1;
      v4 = v1;
      sub_24A5E44D4(0, 1);
      goto LABEL_8;
    }

    if (v1[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType])
    {
      return;
    }
  }

  v5 = v1;
  v3 = v1;
  sub_24A5E0EB0(0, 1);
LABEL_8:
}

uint64_t sub_24A5D3E44()
{
  v0 = sub_24A62EAD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EA94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = [v12 fmpfDebugMode];

    v14 = *&v11[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
    sub_24A62EA84();
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = v13;
    aBlock[4] = sub_24A5D7F18;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA91E0;
    v16 = _Block_copy(aBlock);
    v17 = v11;
    sub_24A62EAB4();
    MEMORY[0x24C21A950](0, v4, v9, v16);
    _Block_release(v16);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_24A5D40D4(uint64_t a1, char a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_axisesNode);
  if (v4)
  {
    [v4 setHidden_];
  }

  v5 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v5)
  {
    v6 = v5;
    sub_24A5FBFB8(a2 & 1);
  }
}

id sub_24A5D4198()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_debugModeObservation];
  if (v2)
  {
    v3 = v2;
    sub_24A62E064();
  }

  [*&v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_motionManager] stopDeviceMotionUpdates];
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C0E8);
  v5 = v1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 description];
    v11 = sub_24A62EC14();
    v13 = v12;

    v14 = sub_24A509BA8(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMPFSKScene%s: deinit", v8, 0xCu);
    sub_24A508C54(v9);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  v15 = type metadata accessor for FMPFSKScene();
  v18.receiver = v5;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t sub_24A5D44FC()
{
  v1 = sub_24A62EAD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EA94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_sceneSize];
  v12 = *&v0[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_sceneSize + 8];
  v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_ringView];
  v14 = *&v0[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
  v15 = v13;
  sub_24A62EA84();
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v13;
  aBlock[4] = sub_24A5D82CC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA9690;
  v17 = _Block_copy(aBlock);
  v18 = v15;
  v19 = v0;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v5, v10, v17);
  _Block_release(v17);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void sub_24A5D4764(char *a1, void *a2, double a3, double a4)
{
  v7 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_axisesNode;
  [*&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_axisesNode] removeFromParent];
  v8 = *&a1[v7];
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 standardUserDefaults];
    v12 = [v11 fmpfDebugMode];

    [v10 setHidden_];
  }

  v117 = type metadata accessor for FMPFSKNode();
  v13 = [objc_allocWithZone(v117) init];
  [v13 setZPosition_];
  [a1 addChild_];
  v14 = *&a1[v7];
  *&a1[v7] = v13;

  [a1 size];
  v16 = v15 * -0.5;
  [a1 size];
  v18 = v17 * 0.5;
  v19 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v19 moveToPoint_];
  [v19 addLineToPoint_];
  [v19 closePath];
  type metadata accessor for FMPFSKShapeNode();
  v125 = v19;
  v20 = [v19 CGPath];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v23 = v22;
  [v23 setPosition_];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 whiteColor];
  [v25 setStrokeColor_];

  [v25 setAlpha_];
  v124 = v25;
  [v13 addChild_];
  [a1 size];
  v28 = v27 * 0.5;
  [a1 size];
  v30 = v29 * -0.5;
  v31 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v31 moveToPoint_];
  [v31 addLineToPoint_];
  [v31 closePath];
  v123 = v31;
  v32 = [v31 CGPath];
  v33 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v34 = v33;
  v35 = [v24 whiteColor];
  [v34 setStrokeColor_];

  [v34 setAlpha_];
  v122 = v34;
  [v13 addChild_];
  sub_24A50D7EC(0, &unk_27EF51830, 0x277D75208);
  [a1 size];
  v37 = v36;
  [a1 size];
  v121 = sub_24A578A28(0.0, 0.0, v37, v38);
  v39 = [v121 CGPath];
  v40 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v41 = v40;
  v42 = [v24 whiteColor];
  [v41 setStrokeColor_];

  [v41 setAlpha_];
  v126 = v13;
  v113 = v41;
  [v13 addChild_];
  v120 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode;
  v43 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode];
  if (v43)
  {
    v44 = *&v43[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor];
    v45 = v43[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor + 8];
    [v43 removeFromParent];
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v44;
    }

    v116 = v46;
  }

  else
  {
    v116 = 0;
  }

  v47 = a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_experienceType];
  v114 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_findingType];
  v48 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 144];
  v151 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 128];
  v152 = v48;
  v153 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 160];
  v154 = a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 176];
  v49 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 80];
  v147 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 64];
  v148 = v49;
  v50 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 112];
  v149 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 96];
  v150 = v50;
  v51 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 16];
  v143 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config];
  v144 = v51;
  v52 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 48];
  v145 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 32];
  v146 = v52;
  v119 = type metadata accessor for FMPFSKPatternNode();
  v53 = objc_allocWithZone(v119);
  v54 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView] = 0;
  v55 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDebugNode;
  v56 = objc_allocWithZone(v117);
  sub_24A5D7C00(&v143, &v130);
  v115 = a2;
  *&v53[v55] = [v56 init];
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode] = 0;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode] = 0;
  v57 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode;
  *&v53[v57] = [objc_allocWithZone(MEMORY[0x277CDCF58]) init];
  v58 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode;
  *&v53[v58] = [objc_allocWithZone(v117) init];
  v59 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode;
  *&v53[v59] = [objc_allocWithZone(v117) init];
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes] = MEMORY[0x277D84F90];
  v60 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode;
  *&v53[v60] = [objc_allocWithZone(v117) init];
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode] = 0;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode] = 0;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode] = 0;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping] = 0;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_forceHideNoonNode] = 0;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting] = 0;
  v61 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track];
  *v61 = 0;
  v61[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackDidChange] = 0;
  v62 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackTop];
  *v62 = 0;
  *(v62 + 1) = 0;
  v62[16] = 1;
  v63 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackBottom];
  *v63 = 0;
  *(v63 + 1) = 0;
  v63[16] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_needsRecomputeVisibleFragments] = 0;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_inFOV] = 2;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformedToExplodedFactor] = 1;
  v64 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor];
  *v64 = 0;
  v64[8] = 1;
  v65 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor];
  *v65 = 0;
  v65[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformationFactor] = 1;
  v66 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor];
  *v66 = 0;
  v66[8] = 1;
  v67 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor];
  *v67 = 0;
  v67[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyBearing] = 1;
  v68 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing];
  *v68 = 0;
  v68[8] = 1;
  v69 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing];
  *v69 = 0;
  v69[8] = 1;
  v70 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing];
  *v70 = 0;
  v70[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyCenterFactor] = 1;
  v71 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor];
  *v71 = 0;
  v71[8] = 1;
  v72 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor];
  *v72 = 0;
  v72[8] = 1;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor] = 0;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLookout] = 1;
  v73 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookout];
  *v73 = 0;
  v73[8] = 1;
  v74 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout];
  *v74 = 0;
  v74[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLabelsOpacity] = 1;
  v75 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsOpacity];
  *v75 = 0;
  v75[8] = 1;
  v76 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLabelsOpacity];
  *v76 = 0;
  v76[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType] = v47;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_findingType] = v114;
  v118 = v47;
  if (v47 == 1)
  {
    if (qword_27EF4EA28 != -1)
    {
      swift_once();
    }

    v77 = &xmmword_27EF5C488;
  }

  else
  {
    if (qword_27EF4EA20 != -1)
    {
      swift_once();
    }

    v77 = &xmmword_27EF5C3B8;
  }

  v78 = v77[11];
  v140 = v77[10];
  v141 = v78;
  v142 = v77[12];
  v79 = v77[7];
  v136 = v77[6];
  v137 = v79;
  v80 = v77[9];
  v138 = v77[8];
  v139 = v80;
  v81 = v77[3];
  v132 = v77[2];
  v133 = v81;
  v82 = v77[5];
  v134 = v77[4];
  v135 = v82;
  v83 = v77[1];
  v130 = *v77;
  v131 = v83;
  v84 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style];
  *v84 = v130;
  *(v84 + 4) = v134;
  *(v84 + 3) = v133;
  *(v84 + 2) = v132;
  *(v84 + 1) = v131;
  *(v84 + 8) = v138;
  *(v84 + 7) = v137;
  *(v84 + 6) = v136;
  *(v84 + 5) = v135;
  *(v84 + 11) = v141;
  *(v84 + 10) = v140;
  *(v84 + 9) = v139;
  v85 = v143;
  *(v84 + 12) = v142;
  v86 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config];
  v87 = v144;
  v88 = v146;
  *(v86 + 2) = v145;
  *(v86 + 3) = v88;
  *v86 = v85;
  *(v86 + 1) = v87;
  v89 = v147;
  v90 = v148;
  v91 = v150;
  *(v86 + 6) = v149;
  *(v86 + 7) = v91;
  *(v86 + 4) = v89;
  *(v86 + 5) = v90;
  v92 = v151;
  v93 = v152;
  v94 = v153;
  v86[176] = v154;
  *(v86 + 9) = v93;
  *(v86 + 10) = v94;
  *(v86 + 8) = v92;
  v95 = objc_opt_self();
  sub_24A5D7C00(&v143, v129);

  v96 = sub_24A62EBE4();
  v97 = MGGetSInt32Answer();

  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pixelsPerInch] = v97;
  v98 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_sceneSize];
  *v98 = a3;
  v98[1] = a4;
  v99 = *&v53[v54];
  *&v53[v54] = a2;
  v100 = v115;

  if (qword_27EF4EA08 != -1)
  {
    swift_once();
  }

  v101 = qword_27EF5C228;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonDotColor] = qword_27EF5C228;
  v102 = qword_27EF5C230;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeDotColor] = qword_27EF5C230;
  v103 = 1.0;
  if (v118 == 1)
  {
    v103 = 0.5;
  }

  v104 = v103 * *v98;
  v105 = v103 * v98[1];
  if (v105 >= v104)
  {
    v105 = v104;
  }

  v106 = v105 * 0.5;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_explodedDiskRadius] = *(v84 + 6) * v106;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius] = v106 * *(v84 + 8);
  *v64 = 0;
  v64[8] = 0;
  *v66 = v116;
  v66[8] = 0;
  v107 = *(v84 + 22);
  v108 = v101;
  v109 = v102;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactorSpring] = sub_24A5B1B3C(v116, 0, 0x3F50624DD2F1A9FCLL, 0, v107, 0);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactorSpring] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, *(v84 + 22), 0);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_energeticAngleSpring] = sub_24A5B1B3C(0, 0, 0x3F69BC65B68B71C3, 0, 0, 1);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring] = sub_24A5B1F80(0, 0, 0x3F69BC65B68B71C3, 0);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactorSpring] = sub_24A5B1B3C(0, 1, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookoutSpring] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring] = sub_24A5B1F80(0x3FE0000000000000, 0, 0x3F1A36E2EB1C432DLL, 0);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsOpacitySpring] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v128.receiver = v53;
  v128.super_class = v119;
  v110 = objc_msgSendSuper2(&v128, sel_init);
  [v110 addChild_];

  sub_24A5D7E8C(&v143);
  v111 = v110;
  [v111 setPosition_];
  [v111 setAlpha_];

  *&v111[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate + 8] = &off_285DA9F48;
  swift_unknownObjectWeakAssign();
  [a1 addChild_];

  v112 = *&a1[v120];
  *&a1[v120] = v111;
}

uint64_t sub_24A5D5650(double a1)
{
  v2 = &v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_lastRenderTime];
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_lastRenderTime];
  if (v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_lastRenderTime + 8])
  {
    v3 = a1;
  }

  v4 = a1 - v3;
  *v2 = a1;
  *(v2 + 8) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  v6 = objc_opt_self();
  v7 = v1;
  if ([v6 isMainThread])
  {
    v8 = *&v7[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24A5D82DC;
    *(v9 + 24) = v5;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_24A5493F0;
    *(v10 + 24) = v9;
    v14[4] = sub_24A517E48;
    v14[5] = v10;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_24A592ED8;
    v14[3] = &unk_285DA9730;
    v11 = _Block_copy(v14);

    dispatch_sync(v8, v11);

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_24A5D5878(v7, v4);
  }

  return result;
}

uint64_t sub_24A5D5878(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode;
  v5 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v5)
  {
    v6 = v5;
    sub_24A6045B0(*&a2, 0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_24A59AE5C(a2);
    result = swift_unknownObjectRelease();
  }

  if ((*(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacity + 8) & 1) != 0 || *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacity) >= 0.5)
  {
    *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_shouldApplyOpacity) = 1;
LABEL_11:
    v10 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacitySpring;
    v11 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacitySpring);
    result = sub_24A5B19C4();
    if ((result & 1) == 0)
    {
      sub_24A55C858(a2);
      *(v11 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v12 = *(a1 + v10);
      v13 = (v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v14 = *v13 + *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v13[35] + *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v14) <= *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v14 = v13[35] + *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v15 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_presentedOpacity;
      *v15 = v14;
      *(v15 + 8) = 0;
      result = *(a1 + v4);
      if (result)
      {
        return [result setAlpha_];
      }
    }

    return result;
  }

  v8 = *(a1 + v4);
  if (!v8 || (v9 = v8 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor, (*(v9 + 8) & 1) != 0))
  {
    *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_shouldApplyOpacity) = 0;
    return result;
  }

  v16 = *v9 > 0.0;
  *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_shouldApplyOpacity) = *v9 <= 0.0;
  if (!v16)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_24A5D5AA8(void *a1)
{
  v3 = sub_24A62EAD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EA94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_experienceType] != 2 || !UIAccessibilityIsReduceMotionEnabled()) && a1)
  {
    v13 = a1;
    [v13 heading];
    v15 = v14;
    v16 = &v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_previousHeading];
    if (v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_previousHeading + 8])
    {
    }

    else
    {
      v17 = v14 - *v16;
      v18 = v17 + -360.0;
      if (v17 <= 180.0)
      {
        v18 = v15 - *v16;
      }

      if (v17 >= -180.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17 + 360.0;
      }

      v23[1] = *&v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
      sub_24A62EA84();
      v20 = swift_allocObject();
      *(v20 + 16) = v1;
      *(v20 + 24) = v19;
      aBlock[4] = sub_24A5D8280;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DA9640;
      v21 = _Block_copy(aBlock);
      v22 = v1;
      sub_24A62EAB4();
      MEMORY[0x24C21A950](0, v7, v12, v21);

      _Block_release(v21);
      (*(v4 + 8))(v7, v3);
      (*(v9 + 8))(v12, v8);
    }

    *v16 = v15;
    *(v16 + 8) = 0;
  }
}

void sub_24A5D5D94(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v5 = *&v2[v4];
    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
    {
      v18 = v2;

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C21ACB0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v5 + 8 * v7 + 32);
        }

        v11 = v10;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v2 = *&v10[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_headingSpring];
        v13 = &v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
        swift_beginAccess();
        v14 = &v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
        v15 = v13[35] + *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40];
        v16 = v15 + a2;
        if (v15 == 1.79769313e308)
        {
          sub_24A55C6B4(v15 + a2);
          v17 = v2;

          v17[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
        }

        else
        {
          v8 = v2;
        }

        v9 = v16 - v14[5];
        v13[35] = v9;
        v13[30] = v9;
        v13[31] = 0.0;

        ++v7;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_15:

    if (*&v18[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode])
    {
      sub_24A51F940(a2);
    }
  }
}

id sub_24A5D602C(double a1, double a2)
{
  result = [v2 size];
  if (v7 != a1 || v6 != a2)
  {
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v9 = sub_24A62E314();
    sub_24A506EB8(v9, qword_27EF5C0E8);
    v10 = v2;
    v11 = sub_24A62E2F4();
    v12 = sub_24A62EF64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v13 = 138412546;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2080;
      v16 = v10;
      v17 = sub_24A62F0E4();
      v19 = sub_24A509BA8(v17, v18, &v21);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_24A503000, v11, v12, "🧭 FMPFSKScene%@: set size={%s}", v13, 0x16u);
      sub_24A58FDEC(v14);
      MEMORY[0x24C21BBE0](v14, -1, -1);
      sub_24A508C54(v15);
      MEMORY[0x24C21BBE0](v15, -1, -1);
      MEMORY[0x24C21BBE0](v13, -1, -1);
    }

    v20 = type metadata accessor for FMPFSKScene();
    v22.receiver = v10;
    v22.super_class = v20;
    objc_msgSendSuper2(&v22, sel_setSize_, a1, a2);
    return sub_24A5D44FC();
  }

  return result;
}

uint64_t sub_24A5D6218(void *a1, char a2)
{
  v5 = sub_24A62EAD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A62EA94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v2[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
  sub_24A62EA84();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a1;
  *(v16 + 32) = v2;
  aBlock[4] = sub_24A5D81C4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA95F0;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = v2;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v9, v14, v17);
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_24A5D6450(char a1, uint64_t a2, int a3)
{
  v22 = a3;
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24A62EA94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *&v3[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
  sub_24A62EA84();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = v22 & 1;
  aBlock[4] = sub_24A5D8170;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA95A0;
  v18 = _Block_copy(aBlock);
  v19 = v3;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v10, v15, v18);
  _Block_release(v18);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

void sub_24A5D6698(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v4)
  {
    v8 = v4;
    sub_24A5FC2BC(a2 & 1, a3, a4 & 1);
  }
}

void sub_24A5D6740(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v5 = &v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor];
    *v5 = a3;
    *(v5 + 8) = 0;
    if ((a2 & 1) != 0 && (v6 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactorSpring], v7 = v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
    {
      v18 = v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v18 = a3;
      *(v18 + 8) = 0;
      sub_24A5B18FC();
    }

    else
    {
      v8 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactorSpring];
      sub_24A55C6B4(a3);
      *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v9 = &v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor];
      *v9 = a3;
      *(v9 + 8) = 0;
      v10 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
      swift_beginAccess();
      v11 = *&v3[v10];
      if (v11 >> 62)
      {
        goto LABEL_20;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v3 = v3;

      if (v12)
      {
        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x24C21ACB0](v13, v11);
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_15:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_20:
              v12 = sub_24A62F464();
              goto LABEL_6;
            }

            v14 = *(v11 + 8 * v13 + 32);
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_15;
            }
          }

          v16 = *(v5 + 8);
          v17 = &v14[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor];
          *v17 = *v5;
          v17[8] = v16;

          ++v13;
        }

        while (v15 != v12);
      }
    }
  }
}

void sub_24A5D69AC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v4)
  {
    v8 = v4;
    sub_24A5FC854(a2, a3 & 1, a4 & 1);
  }
}

void sub_24A5D6A54(uint64_t a1, char a2, void (*a3)(void, double), double a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v4)
  {
    v8 = v4;
    a3(a2 & 1, a4);
  }
}

uint64_t sub_24A5D6AD4(char a1, char a2)
{
  v5 = sub_24A62EAD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A62EA94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v2[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
  sub_24A62EA84();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1;
  *(v16 + 25) = a2;
  aBlock[4] = sub_24A5D8088;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA9460;
  v17 = _Block_copy(aBlock);
  v18 = v2;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v9, v14, v17);
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void sub_24A5D6D0C(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode];
    if (v4)
    {
      v8 = v3;
      v7 = v4;
      sub_24A51EF90(a2 & 1, a3 & 1);
    }
  }
}

uint64_t sub_24A5D6DB0()
{
  v1 = sub_24A62EAD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EA94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
  sub_24A62EA84();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_24A5D8048;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA9410;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v5, v10, v13);
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void sub_24A5D6FD8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode];
    if (v2)
    {
      v3 = *(*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDotNode);
      v5 = v1;
      v4 = v2;
      sub_24A608578();
    }
  }
}

uint64_t sub_24A5D70A0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v24 = a2;
  v25 = a3;
  v8 = sub_24A62EAD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A62EA94();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&v6[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
  sub_24A62EA84();
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = a1;
  *(v19 + 32) = v24 & 1;
  *(v19 + 33) = v25;
  aBlock[4] = v26;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = v27;
  v20 = _Block_copy(aBlock);
  v21 = v6;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v12, v17, v20);
  _Block_release(v20);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

void sub_24A5D72D8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode];
    if (v5)
    {
      v10 = v4;
      v9 = v5;
      sub_24A51FB30(a2, a3 & 1, a4 & 1);
    }
  }
}

void sub_24A5D73AC(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode];
    if (v4)
    {
      v7 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode];
      v8 = *(v7 + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_levelRingsNode);
      v12 = v3;
      v9 = v4;
      v10 = a2 & 1;
      if (a3 <= 0.0)
      {
        sub_24A61E440(v10);
      }

      else
      {
        sub_24A61DF70(v10);
      }

      v11 = *(v7 + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDotNode);
      sub_24A608408(a2 & 1, a3);
    }
  }
}

void sub_24A5D74C0(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode];
    if (v4)
    {
      v7 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode];
      v8 = *(v7 + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_levelRingsNode);
      v12 = v3;
      v9 = v4;
      sub_24A61E90C(a2 & 1, a3);
      v10 = *(*(v7 + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDiskNode) + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_sizeSpring);
      if (a2)
      {
        v11 = v10 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
        *v11 = a3;
        *(v11 + 8) = 0;
        sub_24A5B18FC();
      }

      else
      {
        sub_24A55C6B4(a3);
        *(v10 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        sub_24A5D8CD4();
      }
    }
  }
}

uint64_t sub_24A5D7608(char a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v8 = sub_24A62EAD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A62EA94();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&v5[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
  sub_24A62EA84();
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = a2;
  *(v19 + 32) = a1;
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);
  v21 = v5;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v12, v17, v20);
  _Block_release(v20);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

void sub_24A5D783C(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode];
    if (v4)
    {
      v5 = *(*(*&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDiskNode) + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_opacitySpring);
      if (a2)
      {
        v6 = v5 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
        *v6 = a3;
        *(v6 + 8) = 0;
        sub_24A5B18FC();
      }

      else
      {
        sub_24A55C6B4(a3);
        *(v5 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v8 = v3;
        v7 = v4;
        sub_24A5D8CD4();
      }
    }
  }
}

uint64_t sub_24A5D7928(char a1)
{
  v3 = sub_24A62EAD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EA94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
  sub_24A62EA84();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_24A5D7F2C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA9280;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v7, v12, v15);
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

__n128 initializeBufferWithCopyOfBuffer for FMPFSKSceneStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_24A5D7C5C(char a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacity;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacitySpring), v7 = v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v11 = v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v11 = a2;
    *(v11 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacitySpring);
    sub_24A55C6B4(a2);
    *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_presentedOpacity;
    *v9 = a2;
    *(v9 + 8) = 0;
    v10 = *(v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
    if (v10)
    {
      [v10 setAlpha_];
    }
  }
}

uint64_t sub_24A5D7D7C()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5D7DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24A5D7DE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fmpfArrowDotCount];
  *a2 = result;
  return result;
}

id sub_24A5D7E3C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 fmpfDebugMode];
  *a2 = result;
  return result;
}

uint64_t sub_24A5D7EE0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void sub_24A5D7F2C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v1)
  {
    *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_inFOV) = *(v0 + 24);
  }
}

uint64_t sub_24A5D7F58()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24A5D7FC0()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_24A5D8010()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5D8050()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_24A5D8138()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24A5D8184()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_24A5D81C4()
{
  v1 = *(v0 + 24);
  v2 = sel_presentScene_;
  if (*(v0 + 16) == 1)
  {
    [*(v0 + 24) presentScene_];
    v2 = sel_setAsynchronous_;
    v3 = v1;
    v4 = 1;
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = 0;
  }

  return [v3 v2];
}

uint64_t sub_24A5D8248()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5D828C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A5D82E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A5D8330()
{
  v1 = v0;
  v2 = sub_24A62F004();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EFD4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24A62EAD4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_style;
  __asm { FMOV            V0.2D, #0.5 }

  *v11 = _Q0;
  *(v11 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_ringView) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_axisesNode) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode) = 0;
  v17 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_previousHeading;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_motionManager;
  *(v1 + v18) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_dotCountObservation) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_debugModeObservation) = 0;
  v19 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_lastRenderTime;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  sub_24A62EAC4();
  sub_24A62EFC4();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v2);
  *(v1 + v20) = sub_24A62F044();
  v21 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_usingDebuggingTouches) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_shouldApplyOpacity) = 1;
  v23 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacity;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_presentedOpacity;
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isInteractivelyDebugging) = 0;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5D8788()
{
  v1 = type metadata accessor for FMFindingViewState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A52934C(v0 + v5, v4);
  v6 = *v4;
  v7 = (v6 >> 13) & 3;
  if (v7 && (v7 == 1 || (v6 & 0x80000000) == 0))
  {
    sub_24A5D8A0C(v4);
    return 0;
  }

  if (*(v4 + *(v1 + 44)))
  {
    sub_24A5D8A0C(v4);
    return 8;
  }

  v9 = v4 + *(v1 + 32);
  v10 = *(v9 + 5);
  v22 = *(v9 + 4);
  *v23 = v10;
  *&v23[13] = *(v9 + 93);
  v11 = *(v9 + 1);
  v18 = *v9;
  v19 = v11;
  v12 = *(v9 + 3);
  v20 = *(v9 + 2);
  v21 = v12;
  sub_24A508CE4(&v18, v17);
  sub_24A5D8A0C(v4);
  if ((*&v23[16] & 0xFC000000 | 0x2000000) == 0x6000000 || (*&v23[16] & 0xFF0000) != 0x40000)
  {
    sub_24A517ABC(&v18);
    return 1;
  }

  if (v19 == 1)
  {
    return 1;
  }

  v13 = BYTE8(v20);
  v14 = BYTE8(v21);
  v15 = BYTE9(v21);
  sub_24A517ABC(&v18);
  if (v13)
  {
    if (v14)
    {
      if ((v15 & 1) == 0)
      {
        return 4;
      }

      return 8;
    }

    if (v15)
    {
      return 8;
    }

    return 2;
  }

  else if (v15)
  {
    return 8;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_24A5D8A0C(uint64_t a1)
{
  v2 = type metadata accessor for FMFindingViewState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24A5D8B2C()
{
  v11.origin.x = -320.0;
  v11.size.width = 640.0;
  v11.origin.y = -320.0;
  v11.size.height = 640.0;
  v1 = CGPathCreateWithEllipseInRect(v11, 0);
  [v0 setPath_];

  [v0 setLineWidth_];
  v2 = objc_opt_self();
  v3 = [v2 systemBlueColor];
  v4 = objc_opt_self();
  v5 = [v4 traitCollectionWithUserInterfaceStyle_];
  v6 = [v3 resolvedColorWithTraitCollection_];

  [v0 setFillColor_];
  v7 = [v2 systemBlueColor];
  v8 = [v4 traitCollectionWithUserInterfaceStyle_];
  v9 = [v7 resolvedColorWithTraitCollection_];

  [v0 setStrokeColor_];
}

id sub_24A5D8CD4()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_opacitySpring];
  v2 = (v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  v3 = *v2 + *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  if (vabdd_f64(v2[35] + *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v3) <= *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v3 = v2[35] + *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  }

  [v0 setAlpha_];
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_sizeSpring];
  v5 = (v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  v5[35];
  *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  *v5;
  *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold);
  sub_24A5D8DFC();
  return [v0 setScale_];
}

void sub_24A5D8DFC()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_findingType];
  v2 = (v1 >> 13) & 3;
  if (!v2)
  {
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if ((v1 & 0x8100) != 0x100)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      return;
    }

    goto LABEL_7;
  }

  v3 = sub_24A62DF44();
  v9[3] = v3;
  v9[4] = sub_24A5964D0();
  v4 = sub_24A5292E8(v9);
  (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D089D0], v3);
  LOBYTE(v3) = MEMORY[0x24C219850](v9);
  sub_24A508C54(v9);
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = [v0 scene];
  if (v7)
  {
    v8 = v7;
    [v7 size];
  }
}

void sub_24A5D8FA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_opacitySpring);
}

id sub_24A5D8FE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKBTRangeDiskNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24A5D9118()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeObservation];
  if (v2)
  {
    v3 = v2;
    sub_24A62E064();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for FMR1DebugView();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_24A5D93C8(void *a1)
{
  v7 = [objc_opt_self() standardUserDefaults];
  v3 = [a1 selectedSegmentIndex];
  v4 = 40;
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_experienceType) == 1)
  {
    v4 = 48;
  }

  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_style + v4);
  if (v3 >= *(v5 + 16))
  {
    v6 = 0;
  }

  else
  {
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v3 + 32);
  }

  [v7 setFmpfArrowDotCount_];
}

void sub_24A5D9528(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = objc_opt_self();
  v9 = a1;
  v8 = [v7 standardUserDefaults];
  [v8 *a4];
}

id sub_24A5D95D4()
{
  result = [*&v0[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsSwitch] isOn];
  if (result)
  {
    result = [*&v0[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingSwitch] setEnabled_];
    v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_autoTestsActionHandler];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_autoTestsActionHandler + 8];
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      sub_24A5173CC(v2);
      v5 = v0;
      v2(sub_24A5D9B50, v4);
      sub_24A50D354(v2);
    }
  }

  return result;
}

id sub_24A5D96C8(uint64_t a1, char *a2)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&a2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingSwitch] setEnabled_];
  result = [*&a2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsSwitch] isOn];
  if (result)
  {
    sub_24A545E8C();
    v14 = sub_24A62F014();
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    aBlock[4] = sub_24A5D9B58;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA97F8;
    v16 = _Block_copy(aBlock);
    v17 = a2;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v12, v7, v16);
    _Block_release(v16);

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

id sub_24A5D9984(char *a1)
{
  result = [*&a1[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsSwitch] isOn];
  if (result)
  {
    result = [*&a1[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingSwitch] setEnabled_];
    v3 = *&a1[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_autoTestsActionHandler];
    if (v3)
    {
      v4 = *&a1[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_autoTestsActionHandler + 8];
      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      sub_24A5173CC(v3);
      v6 = a1;
      v3(sub_24A5DA1A4, v5);
      sub_24A50D354(v3);
    }
  }

  return result;
}

uint64_t sub_24A5D9B18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5D9B60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24A5D9B78()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_style;
  if (qword_27EF4EA40 != -1)
  {
    swift_once();
  }

  v21[2] = xmmword_27EF5C638;
  v21[3] = *&qword_27EF5C648;
  v21[4] = unk_27EF5C658;
  v21[0] = xmmword_27EF5C618;
  v21[1] = xmmword_27EF5C628;
  memmove((v0 + v1), &xmmword_27EF5C618, 0x50uLL);
  v2 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugLabel;
  type metadata accessor for FMR1InsetLabel();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_24A5DA138(v21, v20);
  *(v0 + v2) = [v3 init];
  v4 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_controlsView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_dotCountLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_dotCountSegmentedControl;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  v7 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_ecoModeLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_ecoModeSwitch;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  v9 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingLabel;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingSwitch;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  v11 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsLabel;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsSwitch;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeObservation) = 0;
  v13 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_lastSamplingTimeIntervalForSKFPS;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_sampleCountForSKFPS;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_lastLoggedSKFPS;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_lastSamplingTimeIntervalForARFPS;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_sampleCountForARFPS;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_lastLoggedARFPS;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = (v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_autoTestsActionHandler);
  *v19 = 0;
  v19[1] = 0;
  sub_24A62F444();
  __break(1u);
}

void sub_24A5D9E20(double a1, double a2)
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A63AC30;
  v6 = *&v2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugLabel];
  *(inited + 32) = v6;
  v7 = *&v2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_ecoModeSwitch];
  *(inited + 40) = v7;
  v8 = *&v2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingSwitch];
  *(inited + 48) = v8;
  v9 = *&v2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsSwitch];
  *(inited + 56) = v9;
  v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_dotCountSegmentedControl];
  *(inited + 64) = v10;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = 0;
  while (1)
  {
    if (v16 == 5)
    {
LABEL_9:

      return;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C21ACB0](v16, inited);
      goto LABEL_6;
    }

    if (v16 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v17 = *(inited + 8 * v16 + 32);
LABEL_6:
    v18 = v17;
    ++v16;
    [v2 convertPoint:v17 toCoordinateSpace:{a1, a2}];
    v20 = v19;
    v22 = v21;
    [v18 bounds];
    v24.x = v20;
    v24.y = v22;
    v23 = CGRectContainsPoint(v25, v24);

    if (v23)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_24A5D9FC0()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_controlsView;
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_controlsView) alpha];
  v3 = v2 == 0.0;
  v4 = *(v0 + v1);
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v9[4] = sub_24A5DA114;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A5A8458;
  v9[3] = &unk_285DA9870;
  v7 = _Block_copy(v9);
  v8 = v4;

  [v5 animateWithDuration:v7 animations:0.5];

  _Block_release(v7);
}

uint64_t sub_24A5DA0DC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

id sub_24A5DA114()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

uint64_t sub_24A5DA1BC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 6);
  v6 = *(a4 + 16);
  v7 = *(a2 + 4);
  v9 = *a2;
  v10 = v4;
  v11 = v5;
  v12 = v7;
  return v6(a1, &v9);
}

id sub_24A5DA24C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_backgroundLayer;
  v7 = [objc_opt_self() effectWithStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v3[v6] = v8;
  v9 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_stackView;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v10 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_topStackView;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v11 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v12 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_bottomStackView;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v13 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton;
  *&v3[v13] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v14 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton;
  *&v3[v14] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v15 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton;
  *&v3[v15] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v16 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton;
  *&v3[v16] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v17 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton;
  *&v3[v17] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v18 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton;
  *&v3[v18] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v19 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmStateButton;
  *&v3[v19] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v20 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton;
  *&v3[v20] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v21 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton;
  *&v3[v21] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v22 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton;
  *&v3[v22] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v23 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider;
  v24 = type metadata accessor for FMFindingDebugSlider();
  v25 = objc_allocWithZone(v24);
  *&v3[v23] = sub_24A60C168(0x63614620676E6952, 0xEB00000000726F74, 0.0, 6.0, 0.01);
  v26 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider;
  v27 = objc_allocWithZone(v24);
  *&v3[v26] = sub_24A60C168(0x61704F20676E6952, 0xEC00000079746963, 0.0, 1.0, 0.01);
  v28 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider;
  v29 = objc_allocWithZone(v24);
  *&v3[v28] = sub_24A60C168(0x4620636974706148, 0xEC0000006563726FLL, 0.0, 1.0, 0.01);
  v30 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider;
  v31 = objc_allocWithZone(v24);
  *&v3[v30] = sub_24A60C168(0xD000000000000010, 0x800000024A642950, 0.0, 1.0, 0.01);
  v32 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider;
  v33 = objc_allocWithZone(v24);
  *&v3[v32] = sub_24A60C168(0x65502065736C7550, 0xEC000000646F6972, 0.0, 2.0, 0.001);
  v34 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton;
  *&v3[v34] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v35 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton;
  *&v3[v35] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v36 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton;
  *&v3[v36] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v37 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton;
  *&v3[v37] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  *&v3[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession] = a2;
  v40.receiver = v3;
  v40.super_class = type metadata accessor for FMFindingDebugViewController();

  v38 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  sub_24A5DA734();

  return v38;
}

id sub_24A5DA734()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = result;
  [result addSubview_];

  sub_24A5DA7EC();
  sub_24A5DB168();
  sub_24A5DBAE4();

  return sub_24A5DB888();
}

id sub_24A5DA7EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_stackView);
  [v1 setAxis_];
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_topStackView);
  [v2 setAxis_];
  v94 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView);
  [v94 setAxis_];
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_bottomStackView);
  [(SEL *)v3 setAxis:0];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  v93 = xmmword_24A63AC30;
  *(inited + 16) = xmmword_24A63AC30;
  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton);
  *(inited + 32) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton);
  *(inited + 40) = v6;
  v7 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v8 = v5;
  v9 = v6;
  *(inited + 48) = [v7 init];
  v10 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton);
  *(inited + 56) = v10;
  v95 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton);
  *(inited + 64) = v11;
  v12 = inited & 0xC000000000000001;
  v13 = (inited & 0xFFFFFFFFFFFFFF8);
  v14 = v10;
  v15 = v11;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_69;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_66;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v17 = i;
    [v2 addArrangedSubview_];

    if (v12)
    {
      v18 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (v13[2] < 2uLL)
      {
        goto LABEL_66;
      }

      v18 = *(inited + 40);
    }

    v19 = v18;
    [v2 addArrangedSubview_];

    if (v12)
    {
      v20 = MEMORY[0x24C21ACB0](2, inited);
    }

    else
    {
      if (v13[2] < 3uLL)
      {
        goto LABEL_66;
      }

      v20 = *(inited + 48);
    }

    v21 = v20;
    [v2 addArrangedSubview_];

    if (v12)
    {
      v22 = MEMORY[0x24C21ACB0](3, inited);
    }

    else
    {
      if (v13[2] < 4uLL)
      {
        goto LABEL_66;
      }

      v22 = *(inited + 56);
    }

    v23 = v22;
    [v2 addArrangedSubview_];

    v92 = v3;
    if (v12)
    {
      v24 = v1;
      v25 = MEMORY[0x24C21ACB0](4, inited);
    }

    else
    {
      if (v13[2] < 5uLL)
      {
        goto LABEL_66;
      }

      v24 = v1;
      v25 = *(inited + 64);
    }

    v26 = v25;
    v91 = v2;
    [v2 addArrangedSubview_];

    swift_setDeallocating();
    v27 = *(inited + 16);
    swift_arrayDestroy();
    inited = swift_initStackObject();
    *(inited + 16) = v93;
    v28 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider);
    *(inited + 32) = v28;
    v29 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider);
    *(inited + 40) = v29;
    v30 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider);
    *(inited + 48) = v30;
    v1 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider);
    *(inited + 56) = v1;
    v31 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider);
    *(inited + 64) = v31;
    v12 = inited & 0xC000000000000001;
    v13 = (inited & 0xFFFFFFFFFFFFFF8);
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = v1;
    v36 = v31;
    if ((inited & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x24C21ACB0](0, inited);
      v2 = v94;
      v3 = &property descriptor for FMFindingViewController.dismissedHandler;
    }

    else
    {
      v2 = v94;
      v3 = &property descriptor for FMFindingViewController.dismissedHandler;
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v37 = v32;
    }

    [v2 v3[153]];

    if (v12)
    {
      v38 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_67;
      }

      v38 = *(inited + 40);
    }

    v39 = v38;
    [v2 v3[153]];

    if (v12)
    {
      v40 = MEMORY[0x24C21ACB0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_67;
      }

      v40 = *(inited + 48);
    }

    v41 = v40;
    [v2 v3[153]];

    if (v12)
    {
      v42 = MEMORY[0x24C21ACB0](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_67;
      }

      v42 = *(inited + 56);
    }

    v43 = v42;
    [v2 v3[153]];

    v90 = v24;
    if (v12)
    {
      v44 = MEMORY[0x24C21ACB0](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_67;
      }

      v44 = *(inited + 64);
    }

    v45 = v44;
    [v2 v3[153]];

    swift_setDeallocating();
    v46 = *(inited + 16);
    swift_arrayDestroy();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A63AC60;
    v47 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton);
    *(inited + 32) = v47;
    *&v93 = inited + 32;
    v2 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton);
    *(inited + 40) = v2;
    v48 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton);
    *(inited + 48) = v48;
    v49 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmStateButton);
    *(inited + 56) = v49;
    v1 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton);
    *(inited + 64) = v1;
    v50 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton);
    *(inited + 72) = v50;
    v13 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton);
    *(inited + 80) = v13;
    v12 = inited & 0xC000000000000001;
    v51 = v47;
    v52 = v2;
    v53 = v48;
    v54 = v49;
    v55 = v1;
    v56 = v50;
    v57 = v13;
    if ((inited & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x24C21ACB0](0, inited);
      v3 = v92;
      v58 = &property descriptor for FMFindingViewController.dismissedHandler;
    }

    else
    {
      v3 = v92;
      v58 = &property descriptor for FMFindingViewController.dismissedHandler;
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v59 = v51;
    }

    [v3 v58[153]];

    if (v12)
    {
      v60 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_65;
      }

      v60 = *(inited + 40);
    }

    v61 = v60;
    [v3 v58[153]];

    if (v12)
    {
      v62 = MEMORY[0x24C21ACB0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_65;
      }

      v62 = *(inited + 48);
    }

    v63 = v62;
    [v3 v58[153]];

    if (v12)
    {
      v64 = MEMORY[0x24C21ACB0](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_65;
      }

      v64 = *(inited + 56);
    }

    v65 = v64;
    [v3 v58[153]];

    if (v12)
    {
      v66 = MEMORY[0x24C21ACB0](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_65;
      }

      v66 = *(inited + 64);
    }

    v67 = v66;
    [v3 v58[153]];

    if (v12)
    {
      v68 = MEMORY[0x24C21ACB0](5, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_65;
      }

      v68 = *(inited + 72);
    }

    v69 = v68;
    [v3 v58[153]];

    if (v12)
    {
      v70 = MEMORY[0x24C21ACB0](6, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 7uLL)
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v70 = *(inited + 80);
    }

    v71 = v70;
    [v3 v58[153]];

    swift_setDeallocating();
    v72 = *(inited + 16);
    swift_arrayDestroy();
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_24A633820;
    v73 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    *(v12 + 32) = v73;
    inited = v12 + 32;
    v74 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
    *(v12 + 40) = v74;
    v75 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton);
    *(v12 + 48) = v75;
    v76 = *(v95 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton);
    *(v12 + 56) = v76;
    v77 = v12 & 0xC000000000000001;
    v13 = (v12 & 0xFFFFFFFFFFFFFF8);
    v78 = v74;
    v79 = v75;
    v80 = v76;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v81 = MEMORY[0x24C21ACB0](0, v12);
      v2 = v91;
    }

    else
    {
      v2 = v91;
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v81 = v73;
    }

    [v3 v58[153]];

    if (v77)
    {
      v82 = MEMORY[0x24C21ACB0](1, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_68;
      }

      v82 = *(v12 + 40);
    }

    v83 = v82;
    [v3 v58[153]];

    if (v77)
    {
      v84 = MEMORY[0x24C21ACB0](2, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_68;
      }

      v84 = *(v12 + 48);
    }

    v85 = v84;
    [v3 v58[153]];

    if (v77)
    {
      break;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v86 = *(v12 + 56);
      goto LABEL_64;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v86 = MEMORY[0x24C21ACB0](3, v12);
LABEL_64:
  v87 = v86;
  [v3 v58[153]];

  swift_setDeallocating();
  v88 = *(v12 + 16);
  swift_arrayDestroy();
  [v90 v58[153]];
  [v90 v58[153]];
  return [v90 v58[153]];
}

void sub_24A5DB168()
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A63AC70;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_stackView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider];
  *(inited + 72) = v7;
  v73 = v0;
  v74 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider];
  *(inited + 80) = v74;
  v8 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_backgroundLayer];
  *(inited + 88) = v8;
  v76 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton];
  *(inited + 96) = v76;
  v9 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton];
  *(inited + 104) = v9;
  v72 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v74;
  v75 = v8;
  v16 = v76;
  v17 = v9;
  for (i = 4; i != 14; ++i)
  {
    v19 = i - 4;
    if ((inited & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x24C21ACB0](v19, inited);
    }

    else
    {
      if (v19 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v20 = *(inited + 8 * i);
    }

    v21 = v20;
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  swift_setDeallocating();
  v22 = *(inited + 16);
  swift_arrayDestroy();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24A633820;
  v24 = [v72 topAnchor];
  v25 = [v73 view];
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = v25;
  v27 = [v25 safeAreaLayoutGuide];

  v28 = [v27 topAnchor];
  v29 = [v24 constraintEqualToAnchor_];

  *(v23 + 32) = v29;
  v30 = [v72 leadingAnchor];
  v31 = [v73 view];
  if (!v31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = v31;
  v33 = [v31 safeAreaLayoutGuide];

  v34 = [v33 leadingAnchor];
  v35 = [v30 constraintEqualToAnchor_];

  *(v23 + 40) = v35;
  v36 = [v72 trailingAnchor];
  v37 = [v73 view];
  if (!v37)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = v37;
  v39 = [v37 safeAreaLayoutGuide];

  v40 = [v39 trailingAnchor];
  v41 = [v36 constraintEqualToAnchor_];

  *(v23 + 48) = v41;
  v42 = [v72 bottomAnchor];
  v43 = [v73 view];
  if (!v43)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v44 = v43;
  v45 = objc_opt_self();
  v46 = [v44 safeAreaLayoutGuide];

  v47 = [v46 bottomAnchor];
  v48 = [v42 constraintEqualToAnchor_];

  *(v23 + 56) = v48;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v49 = sub_24A62ED54();

  [v45 activateConstraints_];

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_24A633820;
  v51 = [v75 topAnchor];
  v52 = [v73 view];
  if (!v52)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v53 = v52;
  v54 = [v52 topAnchor];

  v55 = [v51 constraintEqualToAnchor_];
  *(v50 + 32) = v55;
  v56 = [v75 bottomAnchor];
  v57 = [v73 view];
  if (!v57)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v58 = v57;
  v59 = [v57 bottomAnchor];

  v60 = [v56 constraintEqualToAnchor_];
  *(v50 + 40) = v60;
  v61 = [v75 leadingAnchor];
  v62 = [v73 view];
  if (!v62)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v63 = v62;
  v64 = [v62 leadingAnchor];

  v65 = [v61 constraintEqualToAnchor_];
  *(v50 + 48) = v65;
  v66 = [v75 trailingAnchor];
  v67 = [v73 view];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 trailingAnchor];

    v70 = [v66 constraintEqualToAnchor_];
    *(v50 + 56) = v70;
    v71 = sub_24A62ED54();

    [v45 activateConstraints_];

    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_24A5DB888()
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A63AC30;
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider);
  *(inited + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider);
  *(inited + 64) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  for (i = v8; ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v14 = i;
    [i addTarget:v0 action:sel_handleWithSlider_ forControlEvents:4096];

    if (v7)
    {
      v15 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_17;
      }

      v15 = *(inited + 40);
    }

    v16 = v15;
    [v15 addTarget:v0 action:sel_handleWithSlider_ forControlEvents:4096];

    if (v7)
    {
      v17 = MEMORY[0x24C21ACB0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_17;
      }

      v17 = *(inited + 48);
    }

    v18 = v17;
    [v17 addTarget:v0 action:sel_handleWithSlider_ forControlEvents:4096];

    if (v7)
    {
      v19 = MEMORY[0x24C21ACB0](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_17;
      }

      v19 = *(inited + 56);
    }

    v20 = v19;
    [v19 addTarget:v0 action:sel_handleWithSlider_ forControlEvents:4096];

    if (v7)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v21 = *(inited + 64);
      goto LABEL_16;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v21 = MEMORY[0x24C21ACB0](4, inited);
LABEL_16:
  v22 = v21;
  [v21 addTarget:v0 action:sel_handleWithSlider_ forControlEvents:4096];

  swift_setDeallocating();
  v23 = *(inited + 16);
  return swift_arrayDestroy();
}

void sub_24A5DBAE4()
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A63AC80;
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton);
  *(inited + 32) = v2;
  v30 = inited + 32;
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmStateButton);
  *(inited + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton);
  *(inited + 64) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton);
  *(inited + 72) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton);
  *(inited + 80) = v8;
  v38 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton);
  *(inited + 88) = v38;
  v40 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton);
  *(inited + 96) = v40;
  v42 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton);
  *(inited + 104) = v42;
  v44 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton);
  *(inited + 112) = v44;
  v45 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton);
  *(inited + 120) = v45;
  v46 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
  *(inited + 128) = v46;
  v31 = v2;
  v32 = v3;
  v33 = v4;
  v34 = v5;
  v35 = v6;
  v36 = v7;
  v37 = v8;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v9 = v44;
  v10 = v45;
  v47 = v46;
  v11 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C21ACB0](v11, inited);
      goto LABEL_5;
    }

    if (v11 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v12 = *(inited + 8 * v11 + 32);
LABEL_5:
    v13 = v12;
    ++v11;
    [v12 addTarget:v0 action:sel_handleWithButton_ forControlEvents:{64, v30}];

    if (v11 == 13)
    {
      swift_setDeallocating();
      v14 = *(inited + 16);
      swift_arrayDestroy();
      v15 = sub_24A5DE800();
      [v10 setImage:v15 forState:0];

      v16 = sub_24A5DE800();
      [v9 setImage:v16 forState:0];

      v17 = sub_24A5DE800();
      [v41 setImage:v17 forState:0];

      v18 = sub_24A5DE800();
      [v43 setImage:v18 forState:0];

      v19 = sub_24A5DE800();
      [v31 setImage:v19 forState:0];

      v20 = sub_24A5DE800();
      [v32 setImage:v20 forState:0];

      v21 = sub_24A5DE800();
      [v33 setImage:v21 forState:0];

      v22 = sub_24A5DE800();
      [v34 setImage:v22 forState:0];

      v23 = sub_24A5DE800();
      [v35 setImage:v23 forState:0];

      v24 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton);
      v25 = sub_24A5DE800();
      [v24 setImage:v25 forState:0];

      v26 = sub_24A5DE800();
      [v36 setImage:v26 forState:0];

      v27 = sub_24A5DE800();
      [v47 setImage:v27 forState:0];

      v28 = sub_24A5DE800();
      [v37 setImage:v28 forState:0];

      v29 = sub_24A5DE800();
      [v39 setImage:v29 forState:0];

      return;
    }
  }

  __break(1u);
}

float sub_24A5DC0F4(uint64_t a1)
{
  v3 = *(a1 + 8);
  *&v3 = v3;
  *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v3);
  sub_24A60BF8C(v3);
  v4 = *a1;
  *&v4 = *a1;
  *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v4);
  sub_24A60BF8C(v4);
  LODWORD(v5) = *(a1 + 24);
  *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v5);
  sub_24A60BF8C(v5);
  v6 = *(a1 + 32);
  *&v6 = v6;
  *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v6);
  sub_24A60BF8C(v6);
  v7 = *(a1 + 16);
  *&v7 = v7;
  *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v7);
  sub_24A60BF8C(v7);
  return result;
}

double sub_24A5DC1C4@<D0>(uint64_t a1@<X8>)
{
  result = *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v3 = *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v4 = *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v5 = *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v6 = *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24A5DC244(uint64_t a1)
{
  v3 = sub_24A62E0F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_24A62DFA4();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_24A62DF94();
  v28 = a1;
  sub_24A5DF2F8();
  v14 = sub_24A62DF84();
  v16 = v15;

  v27 = v1;
  v17 = [objc_opt_self() defaultManager];
  v18 = [v17 temporaryDirectory];

  sub_24A62E0D4();
  sub_24A62E0C4();
  v19 = *(v4 + 8);
  v19(v8, v3);
  sub_24A62E124();
  sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24A633830;
  *(v20 + 56) = v3;
  v21 = sub_24A5292E8((v20 + 32));
  (*(v4 + 16))(v21, v10, v3);
  v22 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v23 = sub_24A62ED54();

  v24 = [v22 initWithActivityItems:v23 applicationActivities:0];

  [v27 presentViewController:v24 animated:1 completion:0];
  sub_24A5DF248(v14, v16);

  return (v19)(v10, v3);
}

id sub_24A5DC5A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton);
  v2 = sub_24A5DE800();
  [v1 setImage:v2 forState:0];

  [*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_bottomStackView) setHidden_];
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton);
  v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton);
  v6 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v22 = [v6 init];
  v23 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton);
  v10 = v1;

  v21 = v10;
  v20 = v8;

  v11 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_topStackView);
  v12 = [v11 arrangedSubviews];
  sub_24A50D7EC(0, &qword_27EF513A8, 0x277D75D18);
  v13 = sub_24A62ED64();

  if (v13 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C21ACB0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      [v16 removeFromSuperview];

      ++v15;
      if (v18 == i)
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

  [v11 addArrangedSubview_];
  [v11 addArrangedSubview_];
  [v11 addArrangedSubview_];
  [v11 addArrangedSubview_];

  [v11 addArrangedSubview_];

  return [v11 addArrangedSubview_];
}

id sub_24A5DC860()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton);
  v2 = sub_24A5DE800();
  v53 = v1;
  [v1 setImage:v2 forState:0];

  [*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView) setHidden_];
  v52 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_bottomStackView);
  [v52 setHidden_];
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton);
  v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton);
  v5 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v6 = v3;
  v7 = v4;
  v47 = [v5 init];
  v49 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton);
  v43 = v6;

  v45 = v7;
  v8 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_topStackView);
  v9 = [v8 arrangedSubviews];
  sub_24A50D7EC(0, &qword_27EF513A8, 0x277D75D18);
  v10 = sub_24A62ED64();

  if (v10 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C21ACB0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 removeFromSuperview];

      ++v12;
      if (v15 == i)
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

  [v8 addArrangedSubview_];
  [v8 addArrangedSubview_];
  [v8 addArrangedSubview_];

  [v8 addArrangedSubview_];
  [v8 addArrangedSubview_];
  v16 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton);
  v17 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton);
  v18 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton);
  v19 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmStateButton);
  v20 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton);
  v21 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton);
  v50 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton);
  v22 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v23 = v16;
  v54 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28 = v50;
  v29 = [v22 init];
  v30 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton);
  v48 = v29;
  v51 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton);
  v31 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
  v32 = v30;

  v42 = v31;
  v41 = v26;

  v33 = [v52 arrangedSubviews];
  v34 = sub_24A62ED64();

  v44 = v27;
  v46 = v32;
  if (v34 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24A62F464())
  {
    v36 = 0;
    while (1)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x24C21ACB0](v36, v34);
      }

      else
      {
        if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v37 = *(v34 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v37 removeFromSuperview];

      ++v36;
      if (v39 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];

  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];

  return [v52 addArrangedSubview_];
}

void sub_24A5DCDB0()
{
  v1 = objc_allocWithZone(MEMORY[0x277D75458]);
  v2 = sub_24A62ED54();
  v3 = [v1 initWithDocumentTypes:v2 inMode:0];

  [v3 setDelegate_];
  [v3 setModalPresentationStyle_];
  [v3 setAllowsMultipleSelection_];
  [v3 setShouldShowFileExtensions_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_24A5DCEA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
  v2 = sub_24A5DE800();
  [v1 setImage:v2 forState:0];

  v3 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer;
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer) invalidate];
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;
}

void sub_24A5DCF40()
{
  v1 = v0;
  v2 = sub_24A62E214();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMFindingSessionState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession];
  v12 = *(v11 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
  v13 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A592BFC(v11 + v13, v10);
  v14 = *(v10 + 1);
  if (!*(v14 + 16))
  {

    goto LABEL_8;
  }

  v15 = *(v7 + 36);

  v16 = sub_24A515AC8(&v10[v15]);
  if ((v17 & 1) == 0)
  {
LABEL_8:
    sub_24A62F444();
    __break(1u);
    return;
  }

  sub_24A508AE4(*(v14 + 56) + 40 * v16, v33);
  sub_24A508CA0(v33, aBlock);
  sub_24A592C60(v10);
  v18 = v30;
  v19 = v31;
  sub_24A50A204(aBlock, v30);
  (*(v19 + 2))(v18, v19);
  v20 = COERCE_DOUBLE(sub_24A5A7870(v6));
  LOBYTE(v18) = v21;

  (*(v3 + 8))(v6, v2);
  sub_24A508C54(aBlock);
  if (v18)
  {
    v22 = 3.0;
  }

  else
  {
    v22 = v20;
  }

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  v31 = sub_24A5DF2D4;
  v32 = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5BE9EC;
  v30 = &unk_285DA9938;
  v25 = _Block_copy(aBlock);
  v26 = v1;

  v27 = [v23 scheduledTimerWithTimeInterval:0 repeats:v25 block:v22];
  _Block_release(v25);
  v28 = *&v26[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer];
  *&v26[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer] = v27;
}

void sub_24A5DD2A8()
{
  v126 = sub_24A62E214();
  v127 = *(v126 - 8);
  v1 = *(v127 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for FMFindingSessionState();
  v3 = *(*(v124 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v124);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v121 = &v119 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v122 = &v119 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v123 = &v119 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v119 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v119 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v119 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v119 - v21;
  v23 = v0;
  v24 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton);
  sub_24A50D7EC(0, &unk_27EF51A50, 0x277D75220);
  v25 = v24;
  LOBYTE(v24) = sub_24A62F164();

  if (v24)
  {
    v26 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v27 = *(v26 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v28 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    sub_24A592BFC(v26 + v28, v22);
    v29 = *(v22 + 1);
    if (!*(v29 + 16))
    {
      goto LABEL_69;
    }

    v30 = *(v124 + 36);

    v31 = sub_24A515AC8(&v22[v30]);
    if (v32)
    {
      sub_24A508AE4(*(v29 + 56) + 40 * v31, &v130);
      sub_24A508CA0(&v130, &v133);
      sub_24A592C60(v22);
      v33 = *(&v134 + 1);
      v34 = v135;
      sub_24A50A204(&v133, *(&v134 + 1));
      v35 = v125;
      (*(v34 + 16))(v33, v34);
      sub_24A5A7870(v35);
LABEL_9:

      (*(v127 + 8))(v35, v126);
      v47 = &v133;
LABEL_37:
      sub_24A508C54(v47);
      return;
    }

    goto LABEL_70;
  }

  v36 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton);
  v37 = sub_24A62F164();

  if (v37)
  {
    v38 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v39 = *(v38 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v40 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    sub_24A592BFC(v38 + v40, v20);
    v41 = *(v20 + 1);
    if (!*(v41 + 16))
    {
      goto LABEL_69;
    }

    v42 = *(v124 + 36);

    v43 = sub_24A515AC8(&v20[v42]);
    if (v44)
    {
      sub_24A508AE4(*(v41 + 56) + 40 * v43, &v130);
      sub_24A508CA0(&v130, &v133);
      sub_24A592C60(v20);
      v45 = *(&v134 + 1);
      v46 = v135;
      sub_24A50A204(&v133, *(&v134 + 1));
      v35 = v125;
      (*(v46 + 16))(v45, v46);
      sub_24A5A7888(v35);
      goto LABEL_9;
    }

    while (1)
    {
LABEL_70:
      sub_24A62F444();
      __break(1u);
LABEL_69:
    }
  }

  v48 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton);
  v49 = sub_24A62F164();

  if (v49)
  {
    v50 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v51 = *(v50 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v52 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    sub_24A592BFC(v50 + v52, v17);
    v53 = *(v17 + 1);
    if (!*(v53 + 16))
    {
      goto LABEL_69;
    }

    v54 = *(v124 + 36);

    v55 = sub_24A515AC8(&v17[v54]);
    if ((v56 & 1) == 0)
    {
      goto LABEL_70;
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v140 = 0;
    v139 = 0x4000000;
    sub_24A508AE4(*(v53 + 56) + 40 * v55, v129);
    sub_24A508CA0(v129, &v130);
    v57 = v17;
    goto LABEL_35;
  }

  v58 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton);
  v59 = sub_24A62F164();

  if (v59)
  {
    v60 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v61 = *(v60 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v62 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    sub_24A592BFC(v60 + v62, v14);
    v63 = *(v14 + 1);
    if (!*(v63 + 16))
    {
      goto LABEL_69;
    }

    v64 = *(v124 + 36);

    v65 = sub_24A515AC8(&v14[v64]);
    if ((v66 & 1) == 0)
    {
      goto LABEL_70;
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v140 = 0;
    v139 = 83886080;
    sub_24A508AE4(*(v63 + 56) + 40 * v65, v129);
    sub_24A508CA0(v129, &v130);
    sub_24A592C60(v14);
    v67 = v131;
    v68 = v132;
    sub_24A50A204(&v130, v131);
    v69 = v125;
    (*(v68 + 16))(v67, v68);
    swift_beginAccess();
    v70 = *(v61 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v61 + 40);
    *(v61 + 40) = 0x8000000000000000;
    sub_24A5578E0(&v133, v69, isUniquelyReferenced_nonNull_native);
    *(v61 + 40) = v128;
    swift_endAccess();
    sub_24A5A7334();
LABEL_36:

    (*(v127 + 8))(v69, v126);
    v47 = &v130;
    goto LABEL_37;
  }

  v72 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton);
  v73 = sub_24A62F164();

  if (v73)
  {
    v74 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v51 = *(v74 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v75 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    v76 = v123;
    sub_24A592BFC(v74 + v75, v123);
    v77 = *(v76 + 8);
    if (!*(v77 + 16))
    {
      goto LABEL_69;
    }

    v78 = *(v124 + 36);

    v79 = sub_24A515AC8(v76 + v78);
    if ((v80 & 1) == 0)
    {
      goto LABEL_70;
    }

    *&v133 = 0;
    v81 = 768;
LABEL_34:
    HIWORD(v139) = v81;
    v140 = 3;
    sub_24A508AE4(*(v77 + 56) + 40 * v79, v129);
    sub_24A508CA0(v129, &v130);
    v57 = v76;
LABEL_35:
    sub_24A592C60(v57);
    v100 = v131;
    v101 = v132;
    sub_24A50A204(&v130, v131);
    v69 = v125;
    (*(v101 + 16))(v100, v101);
    swift_beginAccess();
    v102 = *(v51 + 40);
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v51 + 40);
    *(v51 + 40) = 0x8000000000000000;
    sub_24A5578E0(&v133, v69, v103);
    *(v51 + 40) = v128;
    swift_endAccess();
    sub_24A5A7334();
    goto LABEL_36;
  }

  v82 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton);
  v83 = sub_24A62F164();

  if (v83)
  {
    v84 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v51 = *(v84 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v85 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    v76 = v122;
    sub_24A592BFC(v84 + v85, v122);
    v77 = *(v76 + 8);
    if (!*(v77 + 16))
    {
      goto LABEL_69;
    }

    v86 = *(v124 + 36);

    v79 = sub_24A515AC8(v76 + v86);
    if ((v87 & 1) == 0)
    {
      goto LABEL_70;
    }

    *&v133 = 0;
    v81 = 769;
    goto LABEL_34;
  }

  v88 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton);
  v89 = sub_24A62F164();

  if (v89)
  {
    v90 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v51 = *(v90 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v91 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    v76 = v121;
    sub_24A592BFC(v90 + v91, v121);
    v77 = *(v76 + 8);
    if (!*(v77 + 16))
    {
      goto LABEL_69;
    }

    v92 = *(v124 + 36);

    v79 = sub_24A515AC8(v76 + v92);
    if ((v93 & 1) == 0)
    {
      goto LABEL_70;
    }

    *&v133 = 0;
    v81 = 770;
    goto LABEL_34;
  }

  v94 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton);
  v95 = sub_24A62F164();

  if (v95)
  {
    v96 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v51 = *(v96 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v97 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    v76 = v120;
    sub_24A592BFC(v96 + v97, v120);
    v77 = *(v76 + 8);
    if (!*(v77 + 16))
    {
      goto LABEL_69;
    }

    v98 = *(v124 + 36);

    v79 = sub_24A515AC8(v76 + v98);
    if ((v99 & 1) == 0)
    {
      goto LABEL_70;
    }

    *&v133 = 0;
    v81 = 771;
    goto LABEL_34;
  }

  v104 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton);
  v105 = sub_24A62F164();

  if (v105)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer) setHidden_];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v107 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton);
    v108 = sub_24A62F164();

    if (v108)
    {

      sub_24A5DCDB0();
    }

    else
    {
      v109 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton);
      v110 = sub_24A62F164();

      if (v110)
      {
        v111 = swift_unknownObjectWeakLoadStrong();
        if (v111)
        {
          v112 = *(v111 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);

          sub_24A5DC244(v113);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v114 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton);
        v115 = sub_24A62F164();

        if (v115)
        {
          if ([*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView) isHidden])
          {

            sub_24A5DC860();
          }

          else
          {

            sub_24A5DC5A0();
          }
        }

        else
        {
          v116 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
          v117 = sub_24A62F164();

          if (v117)
          {
            if (*(v23 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer))
            {

              sub_24A5DCEA4();
            }

            else
            {
              v118 = sub_24A5DE800();
              [v116 setImage:v118 forState:0];

              sub_24A5DCF40();
            }
          }
        }
      }
    }
  }
}

id sub_24A5DE1C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingDebugViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A5DE404()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_24A62E104();
    v4 = v3;
    v5 = sub_24A62DF74();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_24A62DF64();
    sub_24A5DF1F4();
    sub_24A62DF54();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_24A5BEC98(v8);
      swift_unknownObjectRelease();
      sub_24A5DF248(v2, v4);
    }

    else
    {
      sub_24A5DF248(v2, v4);
    }
  }
}

void sub_24A5DE55C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75110]) init];
  v3 = sub_24A62EBE4();
  [v2 setTitle_];

  swift_getErrorValue();
  sub_24A62F6A4();
  v4 = sub_24A62EBE4();

  [v2 setMessage_];

  v5 = sub_24A62EBE4();
  v6 = [objc_opt_self() actionWithTitle:v5 style:0 handler:0];

  [v2 addAction_];
  [v1 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_24A5DE6A0(uint64_t a1)
{
  v2 = sub_24A62E0F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_24A62E0D4();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

id sub_24A5DE800()
{
  v0 = [objc_opt_self() configurationWithPointSize_];
  v1 = sub_24A62EBE4();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = [objc_opt_self() whiteColor];
    v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  }

  else
  {

    return 0;
  }

  return v4;
}

void sub_24A5DE908()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_backgroundLayer;
  v3 = [objc_opt_self() effectWithStyle_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_stackView;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_topStackView;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v7 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v8 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_bottomStackView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v9 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v10 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v11 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v12 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v13 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v14 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v15 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmStateButton;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v16 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v17 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton;
  *(v1 + v17) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v18 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton;
  *(v1 + v18) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v19 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider;
  v20 = type metadata accessor for FMFindingDebugSlider();
  v21 = objc_allocWithZone(v20);
  *(v1 + v19) = sub_24A60C168(0x63614620676E6952, 0xEB00000000726F74, 0.0, 6.0, 0.01);
  v22 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider;
  v23 = objc_allocWithZone(v20);
  *(v1 + v22) = sub_24A60C168(0x61704F20676E6952, 0xEC00000079746963, 0.0, 1.0, 0.01);
  v24 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider;
  v25 = objc_allocWithZone(v20);
  *(v1 + v24) = sub_24A60C168(0x4620636974706148, 0xEC0000006563726FLL, 0.0, 1.0, 0.01);
  v26 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider;
  v27 = objc_allocWithZone(v20);
  *(v1 + v26) = sub_24A60C168(0xD000000000000010, 0x800000024A642950, 0.0, 1.0, 0.01);
  v28 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider;
  v29 = objc_allocWithZone(v20);
  *(v1 + v28) = sub_24A60C168(0x65502065736C7550, 0xEC000000646F6972, 0.0, 2.0, 0.001);
  v30 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton;
  *(v1 + v30) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v31 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton;
  *(v1 + v31) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v32 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton;
  *(v1 + v32) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v33 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton;
  *(v1 + v33) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5DED80()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v2 = *(*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v3 = *(*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v4 = *(*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v16[0] = *(*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v16[1] = v1;
  v16[2] = v2;
  v17 = v3;
  v18 = v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);
    v7 = result + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    v8 = v7 + *(type metadata accessor for FMFindingViewState() + 32);
    v9 = *(v8 + 48);
    v10 = *(v8 + 64);
    v11 = *(v8 + 80);
    *(v20 + 13) = *(v8 + 93);
    v19[4] = v10;
    v20[0] = v11;
    v19[3] = v9;
    v12 = *v8;
    v13 = *(v8 + 32);
    v19[1] = *(v8 + 16);
    v19[2] = v13;
    v19[0] = v12;
    swift_bridgeObjectRetain_n();
    sub_24A508CE4(v19, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = v6;
    sub_24A557E84(v16, v19, isUniquelyReferenced_nonNull_native);

    sub_24A517ABC(v19);
    sub_24A5BEC98(v15[0]);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A5DEF14(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v1 = *(sub_24A62E0F4() - 8);
    v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v3 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
    v4 = sub_24A62E0B4();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = sub_24A5DF19C;
    v6[3] = v5;
    aBlock[4] = sub_24A5DF1B4;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5DE6A0;
    aBlock[3] = &unk_285DA98E8;
    v7 = _Block_copy(aBlock);

    aBlock[0] = 0;
    [v3 coordinateReadingItemAtURL:v4 options:0 error:aBlock byAccessor:v7];
    _Block_release(v7);

    v8 = aBlock[0];
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    if (v8)
    {
      v9 = v8;
      sub_24A5DE55C();
    }

    else
    {
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A5DF164()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5DF1B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A5DF1DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24A5DF1F4()
{
  result = qword_27EF51A48;
  if (!qword_27EF51A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A48);
  }

  return result;
}

uint64_t sub_24A5DF248(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24A5DF29C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24A5DF2F8()
{
  result = qword_27EF51A60;
  if (!qword_27EF51A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A60);
  }

  return result;
}

void sub_24A5DF354(double a1)
{
  v2 = v1;
  if ((v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction + 32] & 1) == 0 && (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 288] & 1) == 0)
  {
    v3 = &v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction];
    a1 = pow(a1 * a1 * a1 * v3[3] + a1 * a1 * ((1.0 - a1) * (v3[2] * 3.0)) + (1.0 - a1) * ((1.0 - a1) * (1.0 - a1)) * *v3 + (1.0 - a1) * (1.0 - a1) * (v3[1] * 3.0) * a1, *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 280]);
  }

  v13 = a1;
  sub_24A5A5308(v14, a1);
  if ((v15 & 1) == 0)
  {
    v4 = v14[0];
    if ((v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor + 8] & 1) == 0 && (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset + 16] & 1) == 0)
    {
      v4 = vaddq_f64(v14[0], vmulq_n_f64(*&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset], v13 * (1.0 - *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor])));
    }

    if (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition + 16] & 1) != 0 || (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor + 8])
    {
      [*&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode] setPosition_];
      v5 = v13;
      v6 = 1.0 - v13;
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode] setPosition_];
      v6 = 1.0 - v13;
      v5 = v13;
    }

    v12 = v6;
    v7 = v6 * *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_nonConformedBrightness] + v5 * *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedBrightness];
    v8 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_renderingColor];
    v9 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode];
    v10 = v8;
    sub_24A60CFCC(v10, v7);

    v11 = v12 * *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 104] + v13 * *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 96];

    [v2 setAlpha_];
  }
}

id sub_24A5DF5EC(double a1)
{
  v2 = 1.0;
  v3 = 1.0 - a1;
  v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_maxScaleFactor) * a1 + (1.0 - a1) * *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_minScaleFactor);
  v5 = v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style;
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 192);
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 200))
  {
    v6 = 1.0;
  }

  v7 = *(v5 + 208);
  if (*(v5 + 216))
  {
    v7 = 1.0;
  }

  v8 = *(v5 + 224);
  if (*(v5 + 232))
  {
    v8 = 1.0;
  }

  v9 = *(v5 + 240);
  if (!*(v5 + 248))
  {
    v2 = *(v5 + 240);
  }

  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_useAlternateScaling) == 1 && (*(v5 + 264) & 1) == 0)
  {
    v10 = *(v5 + 256);
    v11 = 1.0;
    if (v6 > 1.0)
    {
      v6 = v6 * v10;
      if (v7 <= 1.0)
      {
LABEL_13:
        if (v8 <= 1.0)
        {
          goto LABEL_14;
        }

        goto LABEL_25;
      }
    }

    else if (v7 <= 1.0)
    {
      goto LABEL_13;
    }

    v7 = v7 * v10;
    if (v8 <= 1.0)
    {
LABEL_14:
      if (v2 <= 1.0)
      {
LABEL_16:
        v2 = v2 * v11;
        goto LABEL_17;
      }

LABEL_15:
      v11 = *(v5 + 256);
      goto LABEL_16;
    }

LABEL_25:
    v8 = v8 * v10;
    if (v2 <= 1.0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v12 = v3 * v7 + v2 * a1;
  v13 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode;
  [*(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode) setXScale_];
  [*(v1 + v13) setYScale_];
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_experienceType) == 1)
  {
    [*(v1 + v13) size];
    v15 = v14;
    [*(v1 + v13) xScale];
    v17 = v15 / v16;
    [*(v1 + v13) size];
    v19 = (v18 - v17) * 0.5;
    v20 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode);
  }

  else
  {
    v20 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode);
    v19 = 0.0;
  }

  return [v20 setPosition_];
}

void sub_24A5DF804(double a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset] != 1)
  {
    goto LABEL_29;
  }

  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = &v4[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
  swift_beginAccess();
  v7 = &v4[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
  if (v6[35] + *&v4[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40] == 1.79769313e308)
  {
    goto LABEL_29;
  }

  v8 = &v5[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
  swift_beginAccess();
  v9 = &v5[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
  if (v8[35] + *&v5[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40] == 1.79769313e308)
  {
    goto LABEL_29;
  }

  v10 = &v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style];
  if (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 136] & 1) != 0 || (v10[120])
  {
    goto LABEL_29;
  }

  v47 = *(v10 + 16);
  v11 = *(v10 + 14);
  sub_24A55C858(a1);
  v4[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 1;
  sub_24A55C858(a1);
  v5[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 1;
  v12 = *v6 + *v7;
  if (vabdd_f64(v6[35] + v7[5], v12) <= *&v4[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold])
  {
    v12 = v6[35] + v7[5];
  }

  v13 = *v8 + *v9;
  if (vabdd_f64(v8[35] + v9[5], v13) <= *&v5[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold])
  {
    v13 = v8[35] + v9[5];
  }

  v14 = &v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset];
  *v14 = v12;
  v14[1] = v13;
  *(v14 + 16) = 0;
  if (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8])
  {
    v15 = v4;
    v16 = v5;
  }

  else
  {
    v17 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
    v18 = v4;
    v19 = v5;
    sub_24A5DF354(v17);
  }

  v20 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_60;
  }

  *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter] = v22;
  if (!v47)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v22 == 0x8000000000000000 && v47 == -1)
  {
    goto LABEL_61;
  }

  if (!(v22 % v47))
  {
    v23 = fmax(v11 * *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralDiskRadius], 1.0);
    v24 = v23 + v23;
    if (COERCE__INT64(fabs(v23 + v23)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v25 = sub_24A5EB5CC(0x20000000000001);
      v26 = v24 * vcvtd_n_f64_u64(v25, 0x35uLL) - v23;
      if (v25 == 0x20000000000000)
      {
        v27 = v23;
      }

      else
      {
        v27 = v26;
      }

      v28 = sub_24A5EB5CC(0x20000000000001);
      v29 = v24 * vcvtd_n_f64_u64(v28, 0x35uLL) - v23;
      if (v28 == 0x20000000000000)
      {
        v30 = v23;
      }

      else
      {
        v30 = v29;
      }

      sub_24A5A4C78(1, v27, v30);
      goto LABEL_28;
    }

LABEL_62:
    __break(1u);
    return;
  }

LABEL_28:

LABEL_29:
  if (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor] == 1)
  {
    v31 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring];
    if (v31)
    {
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(a1);
        *(v31 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v32 = (v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v33 = *v32 + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v32[35] + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v33) <= *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v33 = v32[35] + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v34 = &v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor];
        *v34 = v33;
        *(v34 + 8) = 0;
      }
    }
  }

  v35 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_headingSpring;
  v36 = *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_headingSpring];
  if (!sub_24A5B19C4() && *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction])
  {
    sub_24A55C858(a1);
    *(v36 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    v37 = *&v2[v35];
    v38 = (v37 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    v39 = *v38 + *(v37 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    if (vabdd_f64(v38[35] + *(v37 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v39) <= *(v37 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v39 = v38[35] + *(v37 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading] = v39;
    [v2 setZRotation_];
  }

  v40 = *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_noiseSubSpring];
  sub_24A55C858(a1);
  *(v40 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v41 = &v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
  if ((v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
  {
    v42 = *v41;
    if (*v41 <= 0.0 && v42 <= *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 56])
    {
      sub_24A5A4608();
      return;
    }

    if (v42 > 0.0)
    {
      sub_24A5A47D0();
      return;
    }

    if (v42 == 1.0)
    {
      v44 = &v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
      v45 = &v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition];
      if (v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        if ((v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition + 16] & 1) == 0)
        {
LABEL_58:
          sub_24A5A4B5C();
        }
      }

      else
      {
        if (v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition + 16])
        {
          goto LABEL_58;
        }

        if (*v44 != *v45 || v44[1] != v45[1])
        {
          goto LABEL_58;
        }
      }
    }
  }
}

FMFindingUI::FindingModel_optional __swiftcall FindingModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A62F4B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t FindingModel.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x74696D69786F7270;
  }

  *v0;
  return result;
}

uint64_t sub_24A5DFE7C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A62F4B4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A5DFEDC(unint64_t *a1@<X8>)
{
  v2 = 0x800000024A63CED0;
  v3 = 0x74696D69786F7270;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEB00000000495579;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_24A5DFF28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x74696D69786F7270;
  }

  if (v3)
  {
    v5 = 0xEB00000000495579;
  }

  else
  {
    v5 = 0x800000024A63CED0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x74696D69786F7270;
  }

  if (*a2)
  {
    v7 = 0x800000024A63CED0;
  }

  else
  {
    v7 = 0xEB00000000495579;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A62F634();
  }

  return v9 & 1;
}

uint64_t sub_24A5DFFDC()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A5E006C()
{
  *v0;
  sub_24A62EC74();
}

uint64_t sub_24A5E00E8()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t FindingExperienceType.hash(into:)()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (!v2)
  {
    v3 = v1 >> 8;
    v4 = 0;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = (v1 >> 8) & 0xFFFFFF9F;
    v4 = 1;
LABEL_5:
    MEMORY[0x24C21B040](v4);
    sub_24A62EC74();

    return MEMORY[0x24C21B040](v3);
  }

  MEMORY[0x24C21B040](2);
  if ((v1 & 0x8000) != 0)
  {
    v3 = (v1 >> 8) & 0x1F;
    MEMORY[0x24C21B040](1);
    sub_24A62F734();
    return MEMORY[0x24C21B040](v3);
  }

  MEMORY[0x24C21B040](0);
  MEMORY[0x24C21B040](v1);
  return sub_24A62F734();
}

uint64_t FindingExperienceType.hashValue.getter()
{
  v2 = *v0;
  sub_24A62F714();
  FindingExperienceType.hash(into:)();
  return sub_24A62F754();
}

uint64_t sub_24A5E02C4()
{
  v2 = *v0;
  sub_24A62F714();
  FindingExperienceType.hash(into:)();
  return sub_24A62F754();
}

uint64_t sub_24A5E0314()
{
  v2 = *v0;
  sub_24A62F714();
  FindingExperienceType.hash(into:)();
  return sub_24A62F754();
}

uint64_t FMFindingTechnology.hash(into:)()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    MEMORY[0x24C21B040](1);
    sub_24A62F734();
    return MEMORY[0x24C21B040]((v1 >> 8) & 0x7F);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    MEMORY[0x24C21B040](v1);
    return sub_24A62F734();
  }
}

uint64_t FMFindingTechnology.hashValue.getter()
{
  v1 = *v0;
  v2 = *v0;
  sub_24A62F714();
  if (v1 < 0)
  {
    MEMORY[0x24C21B040](1);
    sub_24A62F734();
    MEMORY[0x24C21B040]((v2 >> 8) & 0x7F);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    MEMORY[0x24C21B040](v2);
    sub_24A62F734();
  }

  return sub_24A62F754();
}

uint64_t sub_24A5E049C()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    MEMORY[0x24C21B040](1);
    sub_24A62F734();
    return MEMORY[0x24C21B040]((v1 >> 8) & 0x7F);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    MEMORY[0x24C21B040](v1);
    return sub_24A62F734();
  }
}

uint64_t sub_24A5E050C()
{
  v1 = *v0;
  v2 = *v0;
  sub_24A62F714();
  if (v1 < 0)
  {
    MEMORY[0x24C21B040](1);
    sub_24A62F734();
    MEMORY[0x24C21B040]((v2 >> 8) & 0x7F);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    MEMORY[0x24C21B040](v2);
    sub_24A62F734();
  }

  return sub_24A62F754();
}

uint64_t sub_24A5E05A8(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(result + 48) + ((v6 << 7) | (2 * v7))) < 0)
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11FMFindingUI0A10TechnologyO2eeoiySbAC_ACtFZ_0(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((v2 & 0x80000000) == 0)
  {
    if ((v3 & 0x80000000) == 0 && v3 == v2)
    {
      return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
    }

    return 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  return ((v3 ^ v2) < 0x100) & (v3 ^ v2 ^ 1);
}

uint64_t _s11FMFindingUI21FindingExperienceTypeO2eeoiySbAC_ACtFZ_0(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 >> 13) & 3;
  v5 = v3 & 0x6000;
  if (!v4)
  {
    if ((v3 & 0x6000) == 0)
    {
      if (v2)
      {
        v10 = 0xD000000000000011;
      }

      else
      {
        v10 = 0x74696D69786F7270;
      }

      if (v2)
      {
        v11 = 0x800000024A63CED0;
      }

      else
      {
        v11 = 0xEB00000000495579;
      }

      if (v3)
      {
        v12 = 0xD000000000000011;
      }

      else
      {
        v12 = 0x74696D69786F7270;
      }

      if (v3)
      {
        v13 = 0x800000024A63CED0;
      }

      else
      {
        v13 = 0xEB00000000495579;
      }

      if (v10 == v12 && v11 == v13)
      {
      }

      else
      {
        v15 = sub_24A62F634();

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      return (v3 ^ v2) < 0x100;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v5 == 0x2000)
    {
      if (v2)
      {
        v6 = 0xD000000000000011;
      }

      else
      {
        v6 = 0x74696D69786F7270;
      }

      if (v2)
      {
        v7 = 0x800000024A63CED0;
      }

      else
      {
        v7 = 0xEB00000000495579;
      }

      if (v3)
      {
        v8 = 0xD000000000000011;
      }

      else
      {
        v8 = 0x74696D69786F7270;
      }

      if (v3)
      {
        v9 = 0x800000024A63CED0;
      }

      else
      {
        v9 = 0xEB00000000495579;
      }

      if (v6 == v8 && v7 == v9)
      {

        return ((v3 ^ v2) & 0xFFFF9F00) == 0;
      }

      v16 = sub_24A62F634();

      if (v16)
      {
        return ((v3 ^ v2) & 0xFFFF9F00) == 0;
      }
    }

    return 0;
  }

  if (v5 != 0x4000)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if (v3 & 0x80000000) == 0 || ((v3 ^ v2) & 0x1F00) != 0 || ((v3 ^ v2))
    {
      return 0;
    }
  }

  else if (v3 < 0 || v3 != v2 || ((((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8)) & 1) == 0)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_24A5E0890()
{
  result = qword_27EF51A68;
  if (!qword_27EF51A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A68);
  }

  return result;
}

unint64_t sub_24A5E08E8()
{
  result = qword_27EF51A70;
  if (!qword_27EF51A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A70);
  }

  return result;
}

unint64_t sub_24A5E0940()
{
  result = qword_27EF51A78;
  if (!qword_27EF51A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A78);
  }

  return result;
}

unint64_t sub_24A5E0998()
{
  result = qword_27EF51A80;
  if (!qword_27EF51A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A80);
  }

  return result;
}

unint64_t sub_24A5E09F0()
{
  result = qword_27EF51A88;
  if (!qword_27EF51A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindingExperienceType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FE)
  {
    goto LABEL_17;
  }

  if (a2 + 63490 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 63490 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 63490;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 63490;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 63490;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x700 | *a1 & 0xFC | (*a1 >> 13) & 3) ^ 0x7FF;
  if (v6 >= 0x7FD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for FindingExperienceType(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63490 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 63490 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7FE)
  {
    v4 = 0;
  }

  if (a2 > 0x7FD)
  {
    v5 = ((a2 - 2046) >> 16) + 1;
    *result = a2 - 2046;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 2) & 0x1FF) - (a2 << 9);
    *result = (16 * v6) & 0x7C00 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFindingTechnology(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFFF)
  {
    goto LABEL_17;
  }

  if (a2 + 61441 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61441 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61441;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 61441;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61441;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 15) | (2 * ((*a1 >> 4) & 0x7C0 | (*a1 >> 2)))) ^ 0xFFF;
  if (v6 >= 0xFFE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for FMFindingTechnology(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61441 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61441 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFFE)
  {
    v5 = ((a2 - 4095) >> 16) + 1;
    *result = a2 - 4095;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 1) & 0x7FF) - (a2 << 11);
    *result = (16 * v6) & 0xFC00 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_24A5E0E0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v5 setNumberStyle_];
  [v5 setMaximumFractionDigits_];

  *a3 = v5;
}

void sub_24A5E0EB0(char *a1, char a2)
{
  v3 = v2;
  v172 = objc_opt_self();
  v5 = [v172 standardUserDefaults];
  v166 = [v5 fmpfDebugMode];

  if (a2)
  {
    a1 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor);
    v162 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor + 8);
  }

  else
  {
    v162 = 0;
  }

  v164 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDebugNode);
  v6 = [v164 children];
  sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
  v7 = sub_24A62ED64();

  v159 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode);
  v8 = [v159 children];
  v9 = sub_24A62ED64();

  v176[3] = v7;
  sub_24A5E5FD0(v9, sub_24A5E84B4);
  v10 = v7;
  v11 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12 >> 62)
  {
    goto LABEL_18;
  }

  v13 = *(v3 + v11);
  swift_bridgeObjectRetain_n();
  sub_24A62F644();
  for (i = v12; ; i = sub_24A62F454())
  {

    v176[0] = v10;
    sub_24A5E5FD0(i, sub_24A5E84B4);
    v15 = v10;
    if (v10 >> 62)
    {
      break;
    }

    v16 = *((v176[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_20;
    }

LABEL_8:
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x24C21ACB0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v10 = v18;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 removeFromParent];

      ++v17;
      if (v19 == v16)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
  }

  v16 = sub_24A62F464();
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_20:

  v20 = *(v3 + v11);
  *(v3 + v11) = MEMORY[0x277D84F90];

  v21 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_sceneSize);
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_sceneSize + 8) < v21)
  {
    v21 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_sceneSize + 8);
  }

  v22 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style);
  v23 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style);
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 8))
  {
    v23 = 1.0;
  }

  v24 = v21 * v23;
  v25 = *(v22 + 2);
  v26 = *(v22 + 3);
  v27 = v21 * v23 - v25;
  v28 = v25 + 2.22044605e-16;
  v155 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style);
  if (v25 + 2.22044605e-16 <= v21 * v23 * *(v22 + 4))
  {
    v28 = v24 * *(v22 + 4);
  }

  v153 = *(v22 + 2);
  v170 = v28 * 0.5;
  v29 = v28 * 0.5 + v25 * -0.5;
  v30 = 0.0 - v29;
  v169 = v29 / tan(v26);
  v31 = v27 * 0.5 - v169;
  v32 = v29 + 0.0;
  v167 = cos(v26);
  v33 = &property descriptor for FMFindingViewController.dismissedHandler;
  [v159 addChild_];
  v34 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode);
  [v164 addChild_];
  v35 = &property descriptor for FMFindingViewController.dismissedHandler;
  v36 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v36 moveToPoint_];
  [v36 addLineToPoint_];
  [v36 closePath];
  type metadata accessor for FMPFSKShapeNode();
  v147 = v36;
  v37 = [v36 CGPath];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 whiteColor];
  [v41 setStrokeColor_];

  [v41 setLineCap_];
  v43 = qword_27EF4EA08;
  v44 = v41;
  if (v43 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v45 = *&qword_27EF5C238;
    [v44 setAlpha_];

    v146 = v44;
    [v34 v33[251]];
    v46 = [objc_allocWithZone(MEMORY[0x277D75208]) v35[162]];
    [v46 moveToPoint_];
    [v46 addLineToPoint_];
    [v46 closePath];
    v145 = v46;
    v47 = [v46 CGPath];
    v48 = v35;
    v49 = v33;
    v50 = v34;
    v51 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v52 = v51;
    v53 = [v40 whiteColor];
    [v52 setStrokeColor_];

    [v52 setLineCap_];
    [v52 setAlpha_];
    v144 = v52;
    [v50 v49 + 1411];
    v54 = [objc_allocWithZone(MEMORY[0x277D75208]) v48[162]];
    [v54 moveToPoint_];
    [v54 addLineToPoint_];
    [v54 closePath];
    v143 = v54;
    v55 = [v54 CGPath];
    v56 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v57 = v56;
    v58 = [v40 whiteColor];
    [v57 setStrokeColor_];

    [v57 setLineCap_];
    [v57 setAlpha_];
    v151 = v50;
    v142 = v57;
    [v50 addChild_];
    sub_24A50D7EC(0, &unk_27EF51830, 0x277D75208);
    v141 = sub_24A578A28(0.0, 0.0, v170 + v170, v24);
    v59 = [v141 CGPath];
    v60 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v61 = v60;
    v62 = [v40 whiteColor];
    [v61 setStrokeColor_];

    v63 = v61;
    [v63 setAlpha_];
    v33 = &property descriptor for FMFindingViewController.dismissedHandler;
    [v164 addChild_];
    v64 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode;
    v65 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode);
    *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) = v63;

    v168 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius;
    v24 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius);
    v140 = [objc_opt_self() bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v24 clockwise:{-3.14159265, 3.14159265}];
    v66 = [v140 CGPath];
    v67 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v68 = v67;
    v154 = v40;
    v69 = [v40 whiteColor];
    [v68 setStrokeColor_];

    v70 = v68;
    [v70 setAlpha_];
    [v70 setZPosition_];
    [v164 addChild_];
    v40 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode;
    v71 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode);
    *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode) = v70;

    v44 = [v172 standardUserDefaults];
    v72 = [v44 fmpfArrowDotCount];

    if (__OFSUB__(v72, 1))
    {
      break;
    }

    v73 = fmax((v27 + v169 / v167 + v169 / v167) / (v72 - 1), 2.22044605e-16);
    v74 = round(v169 / v167 / v73);
    if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_52;
    }

    if (v74 <= -9.22337204e18)
    {
      goto LABEL_53;
    }

    if (v74 >= 9.22337204e18)
    {
      goto LABEL_54;
    }

    if (__OFADD__(v74, 1))
    {
      goto LABEL_55;
    }

    v160 = v74 + 1;
    v75 = round(v27 / v73);
    if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_56;
    }

    if (v75 <= -9.22337204e18)
    {
      goto LABEL_57;
    }

    if (v75 >= 9.22337204e18)
    {
      goto LABEL_58;
    }

    if (__OFADD__(v75, 1))
    {
      goto LABEL_59;
    }

    v72 = &property descriptor for FMFindingViewController.dismissedHandler;
    v152 = (v75 + 1);
    v149 = v40;
    v139 = v63;
    v157 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_explodedDiskRadius;
    v156 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor);
    v158 = qword_27EF5C220;
    v44 = v3;
    v76 = sub_24A5E8854(v160, 1, qword_27EF5C220, *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor), *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor + 8), a1, v162, 0, v30, v31, 0.0, v27 * 0.5, *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_explodedDiskRadius), *&v168[v3]);
    v33 = v77;
    v167 = *&OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode;
    v137 = v76;
    [*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) &selRef_frame + 3];
    v138 = v70;
    v150 = v64;
    if (v33 >> 62)
    {
      goto LABEL_60;
    }

    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v148 = v33;
    if (!v34)
    {
      goto LABEL_61;
    }

LABEL_38:
    v35 = 0;
    ObjCClassFromMetadata = (v33 & 0xC000000000000001);
    v72 = v33 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (ObjCClassFromMetadata)
      {
        v78 = MEMORY[0x24C21ACB0](v35, v33);
      }

      else
      {
        if (v35 >= *(v72 + 16))
        {
          goto LABEL_49;
        }

        v78 = v33[v35 + 4];
      }

      v44 = v78;
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      swift_beginAccess();
      v79 = v44;
      MEMORY[0x24C21A660]();
      if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v80 = *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24A62ED84();
        v33 = v148;
      }

      v44 = (v3 + v11);
      sub_24A62EDA4();
      swift_endAccess();

      v35 = (v35 + 1);
      if (v40 == v34)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  v34 = sub_24A62F464();
  v148 = v33;
  if (v34)
  {
    goto LABEL_38;
  }

LABEL_61:
  v81 = sub_24A5E8854(v160, 1, v158, *v156, *(v156 + 8), a1, v162, v160, v32, v31, 0.0, v27 * 0.5, *(v3 + v157), *&v168[v3]);
  v83 = v82;
  v136 = v81;
  [*(v3 + *&v167) addChild_];
  v171 = v11;
  v173 = v3;
  if (v83 >> 62)
  {
    goto LABEL_75;
  }

  for (j = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24A62F464())
  {
    v85 = 0;
    *&v169 = v83 & 0xC000000000000001;
    while (1)
    {
      if (v169 == 0.0)
      {
        if (v85 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v86 = *(v83 + 8 * v85 + 32);
      }

      else
      {
        v86 = MEMORY[0x24C21ACB0](v85, v83);
      }

      v87 = v86;
      v88 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      v3 = v83;
      v72 = v171;
      swift_beginAccess();
      v89 = v87;
      MEMORY[0x24C21A660]();
      if (*((*(v173 + v72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v173 + v72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A62ED84();
      }

      sub_24A62EDA4();
      swift_endAccess();

      ++v85;
      if (v88 == j)
      {
        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

LABEL_76:
  if (v160 + 0x4000000000000000 < 0)
  {
    goto LABEL_115;
  }

  v3 = v173;
  v90 = COERCE_DOUBLE(sub_24A5E8854(v152, 0, v158, *v156, *(v156 + 8), a1, v162, 2 * v160, 0.0, v27 * -0.5, 0.0, v27 * 0.5, *(v173 + v157), *&v168[v173]));
  v72 = v91;
  [*(v173 + *&v167) addChild_];
  v169 = v90;
  if (v72 >> 62)
  {
    goto LABEL_116;
  }

  v92 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v93 = v171;
    if (v92)
    {
      v94 = 0;
      v171 = v72 & 0xC000000000000001;
      while (1)
      {
        if (v171)
        {
          v95 = MEMORY[0x24C21ACB0](v94, v72);
        }

        else
        {
          if (v94 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          v95 = *(v72 + 8 * v94 + 32);
        }

        v96 = v95;
        v97 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        swift_beginAccess();
        v98 = v96;
        MEMORY[0x24C21A660]();
        if (*((*(v3 + v93) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v93) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A62ED84();
          v3 = v173;
        }

        sub_24A62EDA4();
        swift_endAccess();

        ++v94;
        if (v97 == v92)
        {
          goto LABEL_90;
        }
      }

      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      v92 = sub_24A62F464();
      continue;
    }

    break;
  }

LABEL_90:
  [v159 addChild_];
  if (v166)
  {
    v99 = [v154 yellowColor];
  }

  else
  {
    v99 = qword_27EF5C228;
  }

  v100 = v99;
  v171 = v83;
  v101 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode;
  v102 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode);
  if (v102)
  {
    [v102 removeFromParent];
  }

  v174 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType;
  v175 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType);
  v103 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_findingType;
  LOWORD(v176[0]) = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_findingType);
  v104 = *&v168[v3];
  v105 = *(v155 + 14);
  v106 = type metadata accessor for FMPFSKPeripheralDotNode();
  objc_allocWithZone(v106);
  v163 = v100;
  v107 = sub_24A51D718(&v175, v176, v153, 1852796750, 0xE400000000000000, v100, v104, 0, v105, 0, 0, 0, 0x3FF0000000000000, 0, 0, 0, 1);
  [v3 addChild_];
  [*&v107[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] removeFromParent];
  v83 = *(v3 + v101);
  *(v3 + v101) = v107;
  v108 = v107;

  if (v166)
  {
    v109 = [v154 purpleColor];
  }

  else
  {
    v109 = qword_27EF5C230;
  }

  v110 = v109;
  v161 = v108;
  v111 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode;
  v112 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode);
  if (v112)
  {
    [v112 removeFromParent];
  }

  v175 = *(v3 + v174);
  LOWORD(v176[0]) = *(v3 + v103);
  v113 = *&v168[v3];
  v114 = *(v155 + 12);
  v115 = objc_allocWithZone(v106);
  v173 = v110;
  v116 = sub_24A51D718(&v175, v176, v153, 0x6565746E696F50, 0xE700000000000000, v110, v113, 0, v114, 0, 0, 0, 0x3FF0000000000000, 0, 0, 0, 1);
  [v3 addChild_];
  v117 = *(v3 + v111);
  *(v3 + v111) = v116;
  v168 = v116;

  [v164 setHidden_];
  [*(v3 + v150) setHidden_];
  [*&v149[v3] setHidden_];
  v118 = [v151 children];
  v119 = sub_24A62ED64();

  if (!(v119 >> 62))
  {
    v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v120)
    {
      goto LABEL_118;
    }

    goto LABEL_102;
  }

  v120 = sub_24A62F464();
  if (v120)
  {
LABEL_102:
    v121 = 0;
    v72 = 0x277CDC000uLL;
    do
    {
      if ((v119 & 0xC000000000000001) != 0)
      {
        v122 = MEMORY[0x24C21ACB0](v121, v119);
      }

      else
      {
        if (v121 >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_114;
        }

        v122 = *(v119 + 8 * v121 + 32);
      }

      v123 = v122;
      v83 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_113;
      }

      objc_opt_self();
      v124 = swift_dynamicCastObjCClass();
      if (v124)
      {
        [v124 setLineWidth_];
      }

      ++v121;
    }

    while (v83 != v120);
  }

LABEL_118:

  [*(v3 + *&v167) setHidden_];
  if (v166)
  {
    v125 = [v154 yellowColor];
    v126 = [v125 colorWithAlphaComponent_];

    v127 = v161;
    sub_24A51E82C(v126);
    v128 = [v154 purpleColor];
    v129 = [v128 colorWithAlphaComponent_];

    v130 = v129;
    v132 = v138;
    v131 = v139;
    v133 = v169;
    v134 = v163;
    v135 = v173;
  }

  else
  {
    v134 = v163;
    v127 = v161;
    sub_24A51E82C(v163);
    v135 = v173;
    v130 = v173;
    v132 = v138;
    v131 = v139;
    v133 = v169;
  }

  sub_24A51E82C(v130);
  [v127 setHidden_];

  [v168 setHidden_];
}

uint64_t sub_24A5E23D0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  v5 = *(v4 + 16);
  v20[0] = v4 + 32;
  v20[1] = v5;
  result = sub_24A62F5F4();
  if (result >= v5)
  {
    if (v5 >= 2)
    {
      v10 = (v4 + 48);
      v11 = -1;
      for (i = 1; i != v5; ++i)
      {
        v13 = *(v4 + 32 + 16 * i + 8);
        v14 = v11;
        v15 = v10;
        do
        {
          if (v13 >= *(v15 - 1))
          {
            break;
          }

          v16 = *v15;
          *v15 = *(v15 - 1);
          *(v15 - 1) = v13;
          *(v15 - 2) = v16;
          v15 -= 2;
        }

        while (!__CFADD__(v14++, 1));
        v10 += 2;
        --v11;
      }
    }
  }

  else
  {
    v7 = result;
    v8 = v5 >> 1;
    if (v5 >= 2)
    {
      type metadata accessor for CGPoint(0);
      v9 = sub_24A62ED94();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v18[0] = v9 + 32;
    v18[1] = v8;
    sub_24A5E63F4(v18, v19, v20, v7);
    *(v9 + 16) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24A5E252C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24A5E8840(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v22[0] = v4 + 32;
  v22[1] = v6;
  result = sub_24A62F5F4();
  if (result < v6)
  {
    v8 = result;
    v9 = v6 >> 1;
    if (v6 >= 2)
    {
      type metadata accessor for FMPFSKPatternFragmentNode();
      v10 = sub_24A62ED94();
      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v21[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
    v21[1] = v9;
    sub_24A5E700C(v21, v23, v22, v8, a2);
    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return sub_24A62F3F4();
  }

  if (v6 < 2)
  {
    return sub_24A62F3F4();
  }

  v11 = -1;
  v12 = 1;
  v13 = (v4 + 32);
LABEL_9:
  v14 = *(v4 + 32 + 8 * v12);
  v15 = v11;
  v16 = v13;
  while (1)
  {
    v17 = v14 + *a2;
    if (*(v17 + 16))
    {
      break;
    }

    v18 = *v16;
    v19 = *v16 + *a2;
    if (*(v19 + 16))
    {
      goto LABEL_20;
    }

    if (*(v17 + 8) < *(v19 + 8))
    {
      *v16 = v14;
      v16[1] = v18;
      --v16;
      if (!__CFADD__(v15++, 1))
      {
        continue;
      }
    }

    ++v12;
    ++v13;
    --v11;
    if (v12 == v6)
    {
      return sub_24A62F3F4();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24A5E26B0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24A5E8840(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24A5E6228(v6);
  return sub_24A62F3F4();
}

uint64_t sub_24A5E272C(uint64_t result, char a2)
{
  if (v2[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType] != 1 || (v2[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 48] & 1) != 0 || *&v2[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 40] < 1)
  {
    return result;
  }

  v173 = &v2[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config];
  LOBYTE(v195) = a2;
  v194 = *&result;
  v4 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v193[0] = v2;
  v5 = *&v2[v4];
  v196[0] = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_232;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v8 = 0;
  while ((v5 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x24C21ACB0](v8, v5);
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_18;
    }

LABEL_13:
    if (*(v9 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16) & 1) != 0 || (*(v9 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
    {
    }

    else
    {
      sub_24A62F3E4();
      v11 = *(v196[0] + 16);
      sub_24A62F414();
      sub_24A62F424();
      sub_24A62F3F4();
    }

    ++v8;
    if (v10 == v6)
    {
      goto LABEL_19;
    }
  }

  if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_217;
  }

  v9 = *(v5 + 8 * v8 + 32);
  v10 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  v12 = v196[0];
  v7 = MEMORY[0x277D84F90];
LABEL_21:

  v196[0] = sub_24A5E8420(v13);
  v5 = 0;
  sub_24A5E252C(v196, &OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
  v14 = v196[0];
  v196[0] = v7;
  v15 = (v14 >> 62) & 1;
  if (v14 < 0)
  {
    LODWORD(v15) = 1;
  }

  v177 = v15;
  if (v15 == 1)
  {
    v16 = sub_24A62F464();
    if (v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = *(v14 + 16);
    if (v16)
    {
LABEL_25:
      v17 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x24C21ACB0](v17, v14);
        }

        else
        {
          if (v17 >= *(v14 + 16))
          {
            goto LABEL_219;
          }

          v19 = *(v14 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_218;
        }

        if ([v19 isHidden])
        {
        }

        else
        {
          sub_24A62F3E4();
          v18 = *(v196[0] + 16);
          sub_24A62F414();
          sub_24A62F424();
          sub_24A62F3F4();
        }

        ++v17;
      }

      while (v21 != v16);
      v7 = v196[0];
    }
  }

  v22 = v7 < 0 || (v7 & 0x4000000000000000) != 0;
  if (!v22)
  {
    if (*(v7 + 16))
    {
      goto LABEL_41;
    }

LABEL_236:
    v196[0] = 0;
    v196[1] = 0xE000000000000000;
    v7 = v196;
    sub_24A62F384();
    MEMORY[0x24C21A5D0](0x1000000000000016, 0x800000024A6429D0);
    v26 = [v193[0] description];
    v5 = sub_24A62EC14();
    v25 = v148;

    MEMORY[0x24C21A5D0](v5, v25);

    MEMORY[0x24C21A5D0](0xD00000000000002ALL, 0x800000024A6429F0);
    LODWORD(v171) = 0;
    v170 = 377;
    sub_24A62F444();
    __break(1u);
LABEL_237:
    v149 = sub_24A62F464();
    v28 = v149 - v25;
    if (!__OFSUB__(v149, v25))
    {
      goto LABEL_54;
    }

LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  if (!sub_24A62F464())
  {
    goto LABEL_236;
  }

LABEL_41:
  if (v177)
  {
    v23 = sub_24A62F464();
  }

  else
  {
    v23 = *(v14 + 16);
  }

  v24 = v23;
  if (v195)
  {
    v3 = v24 * 0.5;
    if (!v22)
    {
      goto LABEL_46;
    }

LABEL_48:
    v25 = sub_24A62F464();
  }

  else
  {
    v3 = (1.0 - v194) * v24;
    if (v22)
    {
      goto LABEL_48;
    }

LABEL_46:
    v25 = *(v7 + 16);
  }

  LODWORD(v26) = v12 < 0 || (v12 & 0x4000000000000000) != 0;
  if (v26 == 1)
  {
    goto LABEL_237;
  }

  v27 = *(v12 + 16);
  v28 = v27 - v25;
  if (__OFSUB__(v27, v25))
  {
    goto LABEL_239;
  }

LABEL_54:
  v29 = v3 - (v25 / 2);
  if (COERCE__INT64(fabs(v29)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v184 = v7;
  v175 = v16;
  if (v29 < 0)
  {
    if (v28 <= 0)
    {
      goto LABEL_60;
    }

    v28 = 0;
    if ((v26 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_61:
    v30 = v25;
    v179 = v28;
    v31 = sub_24A62F464();
  }

  else
  {
    if (v28 >= v29)
    {
      v28 = v29;
    }

LABEL_60:
    if (v26)
    {
      goto LABEL_61;
    }

LABEL_64:
    v30 = v25;
    v179 = v28;
    v31 = *(v12 + 16);
  }

  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  while (v31 != v32)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x24C21ACB0](v32, v12);
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_215;
      }
    }

    else
    {
      if (v32 >= *(v12 + 16))
      {
        goto LABEL_216;
      }

      v34 = *(v12 + 8 * v32 + 32);
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        v6 = sub_24A62F464();
        goto LABEL_6;
      }
    }

    v195 = *&v34[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
    v36 = v34[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16];

    ++v32;
    if ((v36 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_24A617A30(0, *(v33 + 2) + 1, 1, v33);
      }

      v38 = *(v33 + 2);
      v37 = *(v33 + 3);
      v39 = v195;
      if (v38 >= v37 >> 1)
      {
        v40 = sub_24A617A30((v37 > 1), v38 + 1, 1, v33);
        v39 = v195;
        v33 = v40;
      }

      *(v33 + 2) = v38 + 1;
      *&v33[16 * v38 + 32] = v39;
      v32 = v35;
    }
  }

  v196[0] = v33;

  sub_24A5E23D0(v196, sub_24A5E882C);
  v172 = v5;
  if (v5)
  {
    goto LABEL_248;
  }

  v187 = v14;

  if (v30 < 0)
  {
    goto LABEL_243;
  }

  v186 = v196[0];
  v41 = v179;
  v183 = v30;
  if (v30)
  {
    v42 = 0;
    v181 = v196[0] + 32;
    v3 = 3.14159265;
    v174 = 0xC01921FB54442D18;
    do
    {
      if (v41 < 0)
      {
        goto LABEL_220;
      }

      if (v42 + v41 >= *(v186 + 16))
      {
        goto LABEL_221;
      }

      v195 = *(v181 + 16 * (v42 + v41));
      if ((v184 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x24C21ACB0](v42, v184);
      }

      else
      {
        if (v42 >= *(v184 + 16))
        {
          goto LABEL_229;
        }

        v45 = *(v184 + 32 + 8 * v42);
      }

      v46 = v45;
      v47 = &v45[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
      *v47 = v195;
      *(v47 + 16) = 0;
      v48 = &v45[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
      if (v45[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        v49 = 1;
        v50 = *v48;
      }

      else
      {
        v51 = *v48;
        if (v45[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle])
        {
          v52 = sub_24A62F634();

          v41 = v179;
          if ((v52 & 1) == 0)
          {
            v49 = v48[16];
            v50 = *v48;
            goto LABEL_100;
          }
        }

        else
        {
        }

        *&v195 = *&v46[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius];
        v54 = *&v46[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style];
        sub_24A5E5268(v53, 0.0, 3.14159265);
        v56 = v55 * 0.25;
        v57 = 2.0;
        if (v51 > 0.0)
        {
          v57 = -2.0;
        }

        v59 = __sincos_stret(v54 * (v57 * v56) + 1.57079633);
        v58.f64[0] = v59.__cosval;
        v49 = 0;
        v58.f64[1] = v59.__sinval;
        v50 = vmulq_n_f64(v58, *&v195);
      }

LABEL_100:
      v5 = &v46[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
      *v5 = v50;
      *(v5 + 16) = v49;
      v60 = 0.0;
      if ((v47[2] & 1) == 0 && (v49 & 1) == 0)
      {
        v191 = v50;
        *v193 = *v47;
        v63 = v47[1];
        v64 = sub_24A5A4124(*v47);
        v66 = v65;
        v67 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
        *&v68.f64[0] = v64;
        v68.f64[1] = v69;
        v189 = v68;
        v62 = 0.0;
        v70 = *v193;
        v71 = 1;
        while (1)
        {
          *&v195 = vcvtd_n_f64_u64(v71, 4uLL);
          v194 = 1.0 - *&v195;
          if (v46[v67])
          {
            v73 = sub_24A62F634();

            if (v73)
            {
              goto LABEL_112;
            }

            if (!v46[v67] || v46[v67] != 1)
            {
              v74 = sub_24A62F634();

              if ((v74 & 1) == 0)
              {
                goto LABEL_104;
              }

              goto LABEL_112;
            }
          }

LABEL_112:
          if ((v66 & 1) == 0)
          {
            v72 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v189, *&v195), vmulq_n_f64(*v193, v194)), v194), vmulq_n_f64(vaddq_f64(vmulq_n_f64(v191, *&v195), vmulq_n_f64(v189, v194)), *&v195));
            goto LABEL_105;
          }

LABEL_104:
          v72 = vaddq_f64(vmulq_n_f64(v191, *&v195), vmulq_n_f64(*v193, v194));
LABEL_105:
          v62 = v62 + sqrt((v72.f64[0] - v70) * (v72.f64[0] - v70) + (v72.f64[1] - v63) * (v72.f64[1] - v63));
          ++v71;
          v63 = v72.f64[1];
          v70 = v72.f64[0];
          if (v71 == 17)
          {
            v61 = 0;
            v41 = v179;
            goto LABEL_115;
          }
        }
      }

      v61 = 1;
      v62 = 0.0;
LABEL_115:
      v75 = &v46[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
      *v75 = v62;
      *(v75 + 8) = v61;
      if (*(v5 + 16) & 1) != 0 || (v48[16])
      {
        v43 = 1;
      }

      else
      {
        v76 = *v48;
        v77 = *(v48 + 1);
        v79 = *v5;
        v78 = *(v5 + 8);
        v80 = hypot(*v48, v77);
        v81 = atan2(v78, v79);
        v82 = atan2(v77, v76);
        v83 = v82 - v81;
        if (vabdd_f64(v82, v81) > 3.14159265)
        {
          if (v81 >= 0.0 || v82 < 0.0)
          {
            if (v82 < 0.0 && v81 >= 0.0)
            {
              v83 = v83 + 6.28318531;
            }
          }

          else
          {
            v83 = v83 + -6.28318531;
          }
        }

        v43 = 0;
        v60 = fabs((v80 + v80) * v83);
      }

      ++v42;
      v44 = &v46[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
      *v44 = v60;
      *(v44 + 8) = v43;
    }

    while (v42 != v183);
  }

  v85 = MEMORY[0x277D84F90];
  v196[0] = MEMORY[0x277D84F90];
  if (v175)
  {
    v86 = 0;
    v87 = v187;
    do
    {
      if ((v187 & 0xC000000000000001) != 0)
      {
        v88 = MEMORY[0x24C21ACB0](v86, v87);
      }

      else
      {
        if (v86 >= *(v87 + 16))
        {
          goto LABEL_223;
        }

        v88 = *(v87 + 8 * v86 + 32);
      }

      v5 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_222;
      }

      if (v88[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        goto LABEL_246;
      }

      if (*&v88[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 8] >= 0.0)
      {
      }

      else
      {
        sub_24A62F3E4();
        v89 = *(v196[0] + 16);
        sub_24A62F414();
        sub_24A62F424();
        sub_24A62F3F4();
      }

      ++v86;
      v87 = v187;
    }

    while (v5 != v175);
    v90 = v196[0];
    v41 = v179;
  }

  else
  {
    v90 = MEMORY[0x277D84F90];
    v87 = v187;
  }

  v196[0] = sub_24A5E8420(v90);
  sub_24A5E827C();
  v91 = v196[0];
  v196[0] = v85;
  if (v177)
  {
    v92 = sub_24A62F464();
    if (v92)
    {
      goto LABEL_143;
    }

LABEL_156:
    v97 = MEMORY[0x277D84F90];
    goto LABEL_157;
  }

  v92 = *(v87 + 16);
  if (!v92)
  {
    goto LABEL_156;
  }

LABEL_143:
  v93 = 0;
  v5 = v87 & 0xC000000000000001;
  do
  {
    if (v5)
    {
      v94 = MEMORY[0x24C21ACB0](v93, v87);
    }

    else
    {
      if (v93 >= *(v87 + 16))
      {
        goto LABEL_225;
      }

      v94 = *(v87 + 8 * v93 + 32);
    }

    v95 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      goto LABEL_224;
    }

    if (v94[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
    {
      goto LABEL_247;
    }

    if (*&v94[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 8] < 0.0)
    {
    }

    else
    {
      sub_24A62F3E4();
      v96 = *(v196[0] + 16);
      sub_24A62F414();
      sub_24A62F424();
      sub_24A62F3F4();
    }

    ++v93;
    v87 = v187;
  }

  while (v95 != v92);
  v97 = v196[0];
  v41 = v179;
LABEL_157:

  v196[0] = sub_24A5E8420(v97);
  sub_24A5E827C();
  v98 = v196[0];
  v196[0] = v91;
  sub_24A5E5FD0(v98, sub_24A5E8654);
  v99 = v196[0];
  v174 = v196[0];
  if (v196[0] >> 62)
  {
LABEL_244:
    v150 = sub_24A62F464();
    if ((v150 & 0x8000000000000000) == 0)
    {
      v5 = v150;
      v41 = v179;
      v99 = v174;
      if (v150)
      {
        goto LABEL_159;
      }

      goto LABEL_250;
    }

    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    v151 = v172;
LABEL_287:

    *&result = COERCE_DOUBLE();
    __break(1u);
    return result;
  }

  v5 = *((v196[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_159:
    v100 = 0;
    v101 = 0;
    v188 = v99 & 0xC000000000000001;
    v176 = v99 + 32;
    v178 = v99 & 0xFFFFFFFFFFFFFF8;
    v3 = 3.14159265;
    v102 = __OFADD__(v41, v183);
    v183 += v41;
    v103 = v102;
    v182 = v103;
    v180 = v5;
    do
    {
      if (v188)
      {
        v104 = MEMORY[0x24C21ACB0](v101, v99);
      }

      else
      {
        if (v101 >= *(v178 + 16))
        {
          goto LABEL_230;
        }

        v104 = *(v176 + 8 * v101);
      }

      v105 = v104;
      if (![v104 isHidden])
      {

        goto LABEL_164;
      }

      if (v100 == v41)
      {
        v106 = v183;
      }

      else
      {
        v106 = v100;
      }

      if (((v100 == v41) & v182) != 0)
      {
        goto LABEL_231;
      }

      if ((v106 & 0x8000000000000000) != 0)
      {
        goto LABEL_226;
      }

      if (v106 >= *(v186 + 16))
      {
        goto LABEL_227;
      }

      v107 = &v105[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
      *v107 = *(v186 + 32 + 16 * v106);
      *(v107 + 16) = 0;
      v108 = &v105[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
      v185 = &v105[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
      if (v105[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        v109 = 1;
        v110 = *v108;
      }

      else
      {
        v111 = v108->f64[0];
        if (v105[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle])
        {
          v112 = sub_24A62F634();

          v41 = v179;
          if ((v112 & 1) == 0)
          {
            v109 = v185[16];
            v110 = *v185;
            goto LABEL_185;
          }
        }

        else
        {
        }

        *&v195 = *&v105[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius];
        v114 = *&v105[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style];
        sub_24A5E5268(v113, 0.0, 3.14159265);
        v116 = v115 * 0.25;
        v117 = 2.0;
        if (v111 > 0.0)
        {
          v117 = -2.0;
        }

        v119 = __sincos_stret(v114 * (v117 * v116) + 1.57079633);
        v118.f64[0] = v119.__cosval;
        v109 = 0;
        v118.f64[1] = v119.__sinval;
        v110 = vmulq_n_f64(v118, *&v195);
      }

LABEL_185:
      v120 = &v105[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
      *v120 = v110;
      v120[16] = v109;
      v121 = 0.0;
      if ((v107[2] & 1) == 0 && (v109 & 1) == 0)
      {
        v192 = v110;
        *v193 = *v107;
        v124 = v107[1];
        v125 = sub_24A5A4124(*v107);
        v127 = v126;
        v128 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
        *&v129.f64[0] = v125;
        v129.f64[1] = v130;
        v190 = v129;
        v123 = 0.0;
        v131 = *v193;
        v132 = 1;
        while (1)
        {
          *&v195 = vcvtd_n_f64_u64(v132, 4uLL);
          v194 = 1.0 - *&v195;
          if (v105[v128])
          {
            v134 = sub_24A62F634();

            if (v134)
            {
              goto LABEL_197;
            }

            if (!v105[v128] || v105[v128] != 1)
            {
              v135 = sub_24A62F634();

              if ((v135 & 1) == 0)
              {
                goto LABEL_189;
              }

              goto LABEL_197;
            }
          }

LABEL_197:
          if ((v127 & 1) == 0)
          {
            v133 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v190, *&v195), vmulq_n_f64(*v193, v194)), v194), vmulq_n_f64(vaddq_f64(vmulq_n_f64(v192, *&v195), vmulq_n_f64(v190, v194)), *&v195));
            goto LABEL_190;
          }

LABEL_189:
          v133 = vaddq_f64(vmulq_n_f64(v192, *&v195), vmulq_n_f64(*v193, v194));
LABEL_190:
          v123 = v123 + sqrt((v133.f64[0] - v131) * (v133.f64[0] - v131) + (v133.f64[1] - v124) * (v133.f64[1] - v124));
          ++v132;
          v124 = v133.f64[1];
          v131 = v133.f64[0];
          if (v132 == 17)
          {
            v122 = 0;
            v41 = v179;
            v99 = v174;
            goto LABEL_200;
          }
        }
      }

      v122 = 1;
      v123 = 0.0;
LABEL_200:
      v136 = &v105[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
      *v136 = v123;
      *(v136 + 8) = v122;
      v5 = v180;
      if (v120[16] & 1) != 0 || (v185[16])
      {
        v137 = 1;
      }

      else
      {
        v138 = *v185;
        v139 = *(v185 + 1);
        v141 = *v120;
        v140 = *(v120 + 1);
        v142 = hypot(*v185, v139);
        v143 = atan2(v140, v141);
        v144 = atan2(v139, v138);
        v145 = v144 - v143;
        if (vabdd_f64(v144, v143) > 3.14159265)
        {
          if (v143 >= 0.0 || v144 < 0.0)
          {
            if (v144 < 0.0 && v143 >= 0.0)
            {
              v145 = v145 + 6.28318531;
            }
          }

          else
          {
            v145 = v145 + -6.28318531;
          }
        }

        v137 = 0;
        v121 = fabs((v142 + v142) * v145);
      }

      v147 = &v105[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
      *v147 = v121;
      *(v147 + 8) = v137;

      v100 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_228;
      }

LABEL_164:
      ++v101;
    }

    while (v101 != v5);
  }

LABEL_250:

  if (v173[16] == 1)
  {

    v152 = v172;
  }

  else
  {
    v153 = *(v173 + 1);

    v196[0] = sub_24A5E8420(v154);
    v152 = v172;
    sub_24A5E252C(v196, &OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
    if (v172)
    {
LABEL_286:
      v151 = v152;
      goto LABEL_287;
    }

    v156 = v196[0];
    if (v196[0] < 0 || (v196[0] & 0x4000000000000000) != 0)
    {
      v155 = sub_24A62F464();
      if ((v155 & 0x8000000000000000) == 0)
      {
        goto LABEL_267;
      }

      __break(1u);
      goto LABEL_265;
    }

    v157 = *(v196[0] + 16);
    if (v157)
    {
      do
      {
        v102 = __OFADD__(v153++, 1);
        if (v102)
        {
LABEL_265:
          __break(1u);
        }

        else if (v153)
        {
          v158 = 0;
          do
          {
            if ((v156 & 0xC000000000000001) != 0)
            {
              v159 = MEMORY[0x24C21ACB0](v158, v156);
            }

            else
            {
              v159 = *(v156 + 8 * v158 + 32);
            }

            v159[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_useAlternateScaling] = v158 % v153 == 0;

            ++v158;
          }

          while (v157 != v158);
          break;
        }

        __break(1u);
LABEL_267:
        v157 = v155;
      }

      while (v155);
    }
  }

  v196[0] = sub_24A5E8420(v160);
  sub_24A5E26B0(v196);
  if (v152)
  {
    goto LABEL_286;
  }

  v161 = v196[0];
  if (v196[0] < 0 || (v196[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_283;
  }

  v162 = *(v196[0] + 16);
  for (i = v162; v162; v162 = sub_24A62F464())
  {
    v164 = 0;
    v165 = 0.0;
    v166 = 1.0 / i;
    while ((v161 & 0xC000000000000001) != 0)
    {
      v167 = MEMORY[0x24C21ACB0](v164, v161);
      v168 = v164 + 1;
      if (__OFADD__(v164, 1))
      {
        goto LABEL_281;
      }

LABEL_277:
      v169 = &v167[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction];
      *v169 = 0;
      *(v169 + 8) = vmulq_n_f64(xmmword_24A63B020, 1.0 - v165);
      *(v169 + 3) = 0x3FF0000000000000;
      v169[32] = 0;

      v165 = v166 + v165;
      ++v164;
      if (v168 == v162)
      {
        goto LABEL_284;
      }
    }

    if (v164 >= *(v161 + 16))
    {
      goto LABEL_282;
    }

    v167 = *(v161 + 8 * v164 + 32);
    v168 = v164 + 1;
    if (!__OFADD__(v164, 1))
    {
      goto LABEL_277;
    }

LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    i = sub_24A62F464();
  }

LABEL_284:
  *&result = COERCE_DOUBLE();
  return result;
}

void *sub_24A5E3C3C(void *result, void *a2)
{
  v2 = *result + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
  if (*(v2 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *result + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
  if (*(v3 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = *a2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
  if (*(v4 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = *a2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
  if ((*(v5 + 16) & 1) == 0)
  {
    v6 = *(v2 + 8) - *(v3 + 8);
    return (v6 * v6 + (*v2 - *v3) * (*v2 - *v3) < (*(v4 + 8) - *(v5 + 8)) * (*(v4 + 8) - *(v5 + 8)) + (*v4 - *v5) * (*v4 - *v5));
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24A5E3CE0(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackTop + 16))
  {
    return 0;
  }

  v2 = v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackBottom;
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackBottom + 16))
  {
    return 0;
  }

  v3 = (v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config);
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 48))
  {
    return 0;
  }

  if (__OFSUB__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackTop + 8);
    v6 = *(v2 + 8);
    v7 = (v5 - v6) / (*v3 - 1) * v3[5] * 0.5;
    if (v7 + a1 < v5)
    {
      v5 = v7 + a1;
    }

    if (v6 > a1 - v7)
    {
      v8 = *(v2 + 8);
    }

    return *&v5;
  }

  return result;
}

uint64_t sub_24A5E3D98()
{
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode) position];
  *&result = COERCE_DOUBLE(sub_24A5E3CE0(-v1));
  if ((v4 & 1) == 0)
  {
    v5 = *&result;
    v6 = v3;
    v7 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v8 = *(v0 + v7);
    if (v8 >> 62)
    {
      goto LABEL_64;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
    {
      v10 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style;
      v84 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius;

      if (!i)
      {
        break;
      }

      v11 = 0;
      v12 = (v5 + *&v6) * 0.5;
      v5 = 4.45014772e-308;
      v83 = v0 + v10;
      v13 = v8 & 0xC000000000000001;
      v6 = v8 & 0xFFFFFFFFFFFFFF8;
      v85 = v8 + 32;
      v14 = -0.5;
      v15 = 0.5;
      v80 = i;
      v81 = v8 & 0xFFFFFFFFFFFFFF8;
      v82 = v8 & 0xC000000000000001;
      v78 = v8;
      v79 = v0;
      v77 = v12;
      while (1)
      {
        if (v13)
        {
          v18 = MEMORY[0x24C21ACB0](v11, v8);
        }

        else
        {
          if (v11 >= *(v6 + 16))
          {
            goto LABEL_62;
          }

          v18 = *(v85 + 8 * v11);
        }

        v19 = v18;
        if (__OFADD__(v11++, 1))
        {
          break;
        }

        if (([v18 isHidden] & 1) == 0)
        {
          v21 = &v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
          if ((v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16] & 1) == 0)
          {
            if (v12 <= v21[1])
            {
              do
              {
                v89 = 0;
                v22 = MEMORY[0x24C21BC00](&v89, 8);
              }

              while (0x20000000000001 * v89 < 0x1FFFFFFFFFF801);
              v26 = (v89 * 0x20000000000001uLL) >> 64;
              v25 = 3.14159265;
              if (v26 != 0x20000000000000)
              {
                v25 = vcvtd_n_f64_u64(v26, 0x35uLL) * 3.14159265 + 0.0;
              }
            }

            else
            {
              do
              {
                v89 = 0;
                v22 = MEMORY[0x24C21BC00](&v89, 8);
              }

              while (0x20000000000001 * v89 < 0x1FFFFFFFFFF801);
              v23 = (v89 * 0x20000000000001uLL) >> 64;
              v24 = -(vcvtd_n_f64_u64(v23, 0x35uLL) * 3.14159265 + 2.22044605e-16);
              if (v23 == 0x20000000000000)
              {
                v25 = -3.14159265;
              }

              else
              {
                v25 = v24;
              }
            }

            v27 = *(v83 + 72);
            v28 = v27 * v14;
            v29 = v27 * v15;
            if (v28 > v29)
            {
              goto LABEL_63;
            }

            sub_24A5E5268(v22, v28, v29);
            v31 = *(v0 + v84) * (1.0 - v30);
            v32 = __sincos_stret(v25);
            v33 = v32.__cosval * v31;
            v34 = &v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
            *v34 = v32.__cosval * v31;
            v34[1] = v32.__sinval * v31;
            *(v34 + 16) = 0;
            v35 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
            if (v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle])
            {
              v36 = sub_24A62F634();

              i = v80;
              if ((v36 & 1) == 0)
              {
                v38 = *v34;
                v39 = v34[1];
                v40 = *(v34 + 16);
                goto LABEL_31;
              }
            }

            else
            {
            }

            v41 = *&v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius];
            v42 = *&v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style];
            sub_24A5E5268(v37, 0.0, 3.14159265);
            v44 = v43 * 0.25;
            v45 = 2.0;
            if (v33 > 0.0)
            {
              v45 = -2.0;
            }

            v46 = __sincos_stret(v42 * (v45 * v44) + 1.57079633);
            v40 = 0;
            v38 = v41 * v46.__cosval;
            v39 = v41 * v46.__sinval;
LABEL_31:
            v47 = &v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
            *v47 = v38;
            *(v47 + 1) = v39;
            v47[16] = v40;
            v48 = 0.0;
            if (v21[2] & 1) != 0 || (v40)
            {
              v49 = 1;
              v50 = 0.0;
LABEL_46:
              v67 = &v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
              *v67 = v50;
              *(v67 + 8) = v49;
              if (v47[16] & 1) != 0 || (v34[2])
              {
                v16 = 1;
                v5 = 4.45014772e-308;
                v6 = v81;
                v13 = v82;
              }

              else
              {
                v68 = *v34;
                v69 = v34[1];
                v71 = *v47;
                v70 = *(v47 + 1);
                v72 = hypot(*v34, v69);
                v73 = atan2(v70, v71);
                v74 = atan2(v69, v68);
                v75 = v74 - v73;
                if (vabdd_f64(v74, v73) > 3.14159265)
                {
                  if (v73 >= 0.0 || v74 < 0.0)
                  {
                    if (v74 < 0.0 && v73 >= 0.0)
                    {
                      v75 = v75 + 6.28318531;
                    }
                  }

                  else
                  {
                    v75 = v75 + -6.28318531;
                  }
                }

                v5 = 4.45014772e-308;
                v6 = v81;
                v13 = v82;
                v14 = -0.5;
                v15 = 0.5;
                v16 = 0;
                v48 = fabs((v72 + v72) * v75);
              }

              v17 = &v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
              *v17 = v48;
              *(v17 + 8) = v16;
              goto LABEL_8;
            }

            v87 = v39;
            v88 = v38;
            v52 = *v21;
            v51 = v21[1];
            *&v53 = COERCE_DOUBLE(sub_24A5A4124(*v21));
            v55 = v54;
            v86 = *&v53;
            v57 = v56;
            v50 = 0.0;
            v58 = v51;
            v59 = v52;
            v60 = 1;
            while (2)
            {
              v63 = vcvtd_n_f64_u64(v60, 4uLL);
              v64 = 1.0 - v63;
              if (!v19[v35])
              {
LABEL_41:

                goto LABEL_43;
              }

              v65 = sub_24A62F634();

              if (v65)
              {
                goto LABEL_43;
              }

              if (v19[v35] && v19[v35] == 1)
              {
                goto LABEL_41;
              }

              v66 = sub_24A62F634();

              if (v66)
              {
LABEL_43:
                if ((v55 & 1) == 0)
                {
                  v61 = v64 * (v63 * v86 + v59 * v64) + v63 * (v88 * v63 + v64 * v86);
                  v62 = v64 * (v63 * v57 + v58 * v64) + v63 * (v87 * v63 + v64 * v57);
LABEL_36:
                  v50 = v50 + sqrt((v61 - v52) * (v61 - v52) + (v62 - v51) * (v62 - v51));
                  ++v60;
                  v51 = v62;
                  v52 = v61;
                  if (v60 == 17)
                  {
                    v49 = 0;
                    v8 = v78;
                    v0 = v79;
                    i = v80;
                    v12 = v77;
                    v14 = -0.5;
                    v15 = 0.5;
                    v48 = 0.0;
                    goto LABEL_46;
                  }

                  continue;
                }
              }

              break;
            }

            v61 = v88 * v63 + v59 * v64;
            v62 = v87 * v63 + v58 * v64;
            goto LABEL_36;
          }
        }

LABEL_8:

        if (v11 == i)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      ;
    }

LABEL_59:
    *&result = COERCE_DOUBLE();
  }

  return result;
}

void sub_24A5E44D4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v92 = [v6 fmpfDebugMode];

  if (a2)
  {
    v94 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor);
    LOBYTE(v93) = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor + 8);
  }

  else
  {
    v94 = a1;
    LOBYTE(v93) = 0;
  }

  v95 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDebugNode);
  v7 = [v95 children];
  sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
  v8 = sub_24A62ED64();

  v96 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode);
  v9 = [v96 children];
  v10 = sub_24A62ED64();

  sub_24A5E5FD0(v10, sub_24A5E84B4);
  v11 = v8;
  v12 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v98 = v12;
  v13 = *(v3 + v12);
  if (v13 >> 62)
  {
    goto LABEL_18;
  }

  v14 = *(v3 + v12);
  swift_bridgeObjectRetain_n();
  sub_24A62F644();
  for (i = v13; ; i = sub_24A62F454())
  {

    sub_24A5E5FD0(i, sub_24A5E84B4);
    v16 = v11;
    if (v11 >> 62)
    {
      break;
    }

    v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_20;
    }

LABEL_8:
    v18 = 0;
    v19 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v19)
      {
        v20 = MEMORY[0x24C21ACB0](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v20 = *(v16 + 8 * v18 + 32);
      }

      v11 = v20;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v20 removeFromParent];

      ++v18;
      if (v21 == v17)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
  }

  v17 = sub_24A62F464();
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_20:
  v22 = *(v3 + v98);
  *(v3 + v98) = MEMORY[0x277D84F90];

  v23 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config);
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 32))
  {
    __break(1u);
    return;
  }

  v24 = *v23;
  v25 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius;
  v26 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius);
  v27 = v23[3];

  v91 = v24;
  v28 = (v26 + v26) * v24 / v27;
  v29 = -*(v3 + v25);
  v30 = v28 * 0.5;
  v31 = v28 * -0.5;
  v32 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackTop);
  *v32 = v29;
  v32[1] = v28 * 0.5;
  *(v32 + 16) = 0;
  v33 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackBottom);
  *v33 = v29;
  v33[1] = v28 * -0.5;
  *(v33 + 16) = 0;
  v34 = &property descriptor for FMFindingViewController.dismissedHandler;
  v35 = v95;
  [v96 addChild_];
  v36 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode);
  [v95 addChild_];
  v37 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v37 moveToPoint_];
  [v37 addLineToPoint_];
  [v37 closePath];
  type metadata accessor for FMPFSKShapeNode();
  v89 = v37;
  v38 = [v37 CGPath];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 whiteColor];
  v44 = &selRef_effectForBlurEffect_style_;
  [v42 setStrokeColor_];

  [v42 setLineCap_];
  v45 = qword_27EF4EA08;
  v46 = v42;
  if (v45 != -1)
  {
    goto LABEL_37;
  }

  while (2)
  {
    v47 = *&qword_27EF5C238;
    [v46 setAlpha_];

    v97 = v36;
    v88 = v46;
    [v36 v34[251]];
    v87 = [objc_opt_self() bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:*(v3 + v25) clockwise:{-3.14159265, 3.14159265}];
    v48 = [v87 CGPath];
    v49 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v50 = v49;
    v51 = [v41 whiteColor];
    [v50 v44[48]];

    v52 = v50;
    [v52 setAlpha_];
    [v52 setZPosition_];
    [v35 v34[251]];
    v53 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode);
    v86 = v52;
    v90 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode;
    *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode) = v52;

    v44 = v3;
    v54 = sub_24A5E9A4C(v91, qword_27EF5C220, v94, v93, 0, v29, v31, v29, v30, *(v3 + v25));
    v56 = v55;
    v93 = v57;
    v94 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode;
    v91 = v54;
    [*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) v34[251]];
    if (!(v56 >> 62))
    {
      v46 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = v36;
      if (!v46)
      {
        break;
      }

      goto LABEL_24;
    }

    v46 = sub_24A62F464();
    v41 = v36;
    if (v46)
    {
LABEL_24:
      v25 = 0;
      v36 = (v56 & 0xC000000000000001);
      ObjCClassFromMetadata = (v56 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v36)
        {
          v58 = MEMORY[0x24C21ACB0](v25, v56);
        }

        else
        {
          if (v25 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v58 = v56[v25 + 4];
        }

        v44 = v58;
        v41 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v34 = v56;
        swift_beginAccess();
        v35 = v44;
        MEMORY[0x24C21A660]();
        v59 = v98;
        if (*((*(v3 + v59) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v59) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A62ED84();
          v59 = v98;
        }

        v44 = (v3 + v59);
        sub_24A62EDA4();
        swift_endAccess();

        ++v25;
        v60 = v41 == v46;
        v41 = v97;
        if (v60)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
      continue;
    }

    break;
  }

LABEL_39:
  [v96 addChild_];
  v61 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode);
  *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode) = v93;
  v62 = v93;

  [v96 addChild_];
  [v95 setHidden_];
  [*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) setHidden_];
  [*(v3 + v90) setHidden_];
  v63 = [v41 children];
  v64 = sub_24A62ED64();

  v85 = v56;
  if (v64 >> 62)
  {
    goto LABEL_52;
  }

  for (j = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24A62F464())
  {
    v66 = 0;
    while (1)
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x24C21ACB0](v66, v64);
      }

      else
      {
        if (v66 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v67 = *(v64 + 8 * v66 + 32);
      }

      v68 = v67;
      v69 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      objc_opt_self();
      v70 = swift_dynamicCastObjCClass();
      if (v70)
      {
        [v70 setLineWidth_];
      }

      ++v66;
      if (v69 == j)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

LABEL_53:

  [*(v3 + v94) setHidden_];
  [v96 position];
  *&v72 = COERCE_DOUBLE(sub_24A5E3CE0(-v71));
  if ((v74 & 1) == 0)
  {
    v75 = *&v72;
    v76 = v73;
    v77 = *(v3 + v98);
    if (v77 >> 62)
    {
      goto LABEL_73;
    }

    for (k = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_24A62F464())
    {

      if (!k)
      {
        break;
      }

      v79 = 0;
      v80 = v75 + 1.0;
      while (1)
      {
        if ((v77 & 0xC000000000000001) != 0)
        {
          v81 = COERCE_DOUBLE(MEMORY[0x24C21ACB0](v79, v77));
        }

        else
        {
          if (v79 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          *&v81 = *(v77 + 8 * v79 + 32);
        }

        v75 = v81;
        v82 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          break;
        }

        if ((*(*&v81 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16) & 1) == 0)
        {
          v83 = *(*&v81 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 8);
          v84 = v76 + -1.0 > v83 || v83 > v80;
          [*&v81 setHidden_];
        }

        ++v79;
        if (v82 == k)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

LABEL_69:
  }

  sub_24A5E272C(0, 1);
}