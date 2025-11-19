unint64_t sub_257CED7B0()
{
  result = qword_281544BF0;
  if (!qword_281544BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544BF0);
  }

  return result;
}

uint64_t sub_257CED804()
{
  v1 = v0;
  v50 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v50);
  v53 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v52);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF120();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v60 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECCC80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff;
  v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff] = 0;
  sub_257CEE17C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v59 = v4;
  v13 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v13;
  sub_257ECDD60();

  if (aBlock == 1)
  {
    v49 = v9;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_257ECF4C0();
    v17 = sub_257ECF4C0();
    v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

    v19 = v18;
    if (!v18)
    {
      sub_257ECF500();
      v19 = sub_257ECF4C0();
    }

    aBlock = sub_257ECF500();
    v63 = v20;
    sub_257BDAB08();
    v21 = sub_257ED0100();
    v23 = v22;

    v24 = sub_257E003E8();
    v25 = sub_257E00504();
    sub_257DFD370(v21, v23, v24, v25);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
    sub_257D1A130();
    v9 = v49;
  }

  v26 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService];
  sub_257ECCC70();
  v27 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
  swift_beginAccess();
  (*(v10 + 40))(v26 + v27, v12, v9);
  swift_endAccess();
  sub_257BD52CC();
  v28 = sub_257ECFD30();
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  v66 = sub_257CEFAD0;
  v67 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_257D231C0;
  v65 = &block_descriptor_23;
  v30 = _Block_copy(&aBlock);
  v31 = v1;

  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  v32 = v60;
  v33 = v59;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v8, v32, v30);
  _Block_release(v30);

  v34 = *(v58 + 8);
  v34(v32, v33);
  (*(v56 + 8))(v8, v57);
  if (v31[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v55;
    sub_257ECDD60();

    if ((aBlock & 1) == 0)
    {
      v36 = v35 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;
      swift_beginAccess();
      v37 = *(v36 + 8);
      v38 = *(v36 + 16);
      aBlock = *v36;
      v63 = v37;
      LOBYTE(v64) = v38;
      v39 = qword_2815447E0;

      if (v39 != -1)
      {
        v40 = swift_once();
      }

      MEMORY[0x28223BE20](v40);
      *(&v49 - 2) = &aBlock;
      sub_257ECFD50();

      if (v61 == 1 && (v1[v54] & 1) == 0)
      {
        if (v31[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback] == 1)
        {
          v58 = *&v31[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEngine];
          v41 = v53;
          *v53 = 4;
          swift_storeEnumTagMultiPayload();
          v42 = v51;
          sub_257ECCCE0();
          v43 = v52;
          sub_257C15EC0(v41, v42 + *(v52 + 20));
          *(v42 + v43[6]) = 0;
          *(v42 + v43[7]) = 0;
          v44 = v55;
          sub_257ECC3F0();
          sub_257C15F24(v41, type metadata accessor for MAGOutputEvent.EventType);
          *(v42 + v43[8]) = v44;
          sub_257CBBC80(v42);
          sub_257C15F24(v42, type metadata accessor for MAGOutputEvent);
        }

        sub_257BD7F48();
      }
    }
  }

  v45 = qword_281548350 + 88;
  swift_beginAccess();
  v61 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v46 = v60;
  v47 = sub_257ECF110();
  MEMORY[0x28223BE20](v47);
  *(&v49 - 2) = &v61;
  *(&v49 - 1) = v45;
  sub_257ECFD40();
  v34(v46, v33);
  return swift_endAccess();
}

uint64_t sub_257CEE17C()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECF190();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v8 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v9 = v8[1];
  v10 = v8[2];
  aBlock = *v8;
  v25 = v9;
  v26 = v10;
  v11 = qword_2815447E0;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x28223BE20](v12);
  *(&v21 - 2) = &aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
  sub_257ECFD50();

  v13 = v30;
  v14 = sub_257C592D0(2u, v30);
  v15 = sub_257C592D0(3u, v13);
  v16 = sub_257C592D0(1u, v13);

  v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v14;
  *(v17 + 25) = v15;
  v28 = sub_257CEFAF0;
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_257D231C0;
  v27 = &block_descriptor_23;
  v18 = _Block_copy(&aBlock);
  v19 = v1;
  sub_257ECF150();
  v30 = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v7, v4, v18);
  _Block_release(v18);
  (*(v23 + 8))(v4, v2);
  (*(v21 + 8))(v7, v22);
}

void sub_257CEE5A8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  sub_257ECFD50();

  if ((v2 & 1) == 0)
  {
    sub_257CEE6F8();
  }
}

void sub_257CEE6F8()
{
  if (qword_2815455E0 != -1)
  {
    swift_once();
  }

  v25 = v0;
  if (byte_2815483A8 == 1)
  {
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }
  }

  else if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  sub_257ECF500();
  type metadata accessor for MAGUtilities();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 &selRef:v7 reloadSections:0 withRowAnimation:v8 + 4];

  sub_257ECF500();
  v10 = sub_257ECF4C0();

  v11 = sub_257ECF4C0();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakInstructionsAlertController];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakInstructionsAlertController] = v12;
  v14 = v12;

  if (v14)
  {
    v15 = [v5 bundleForClass_];
    v16 = sub_257ECF4C0();
    v17 = sub_257ECF4C0();
    v18 = [v15 &selRef:v16 reloadSections:0 withRowAnimation:v17 + 4];

    sub_257ECF500();
    v19 = sub_257ECF4C0();

    aBlock[4] = sub_257CEF214;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257CED4E8;
    aBlock[3] = &block_descriptor_16_0;
    v20 = _Block_copy(aBlock);

    v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
    _Block_release(v20);

    v22 = [objc_opt_self() systemYellowColor];
    v23 = sub_257ECF4C0();
    [v21 setValue:v22 forKey:v23];

    [v14 addAction_];
    [v25 presentViewController:v14 animated:1 completion:0];
  }
}

void sub_257CEEC84()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257DFF054();
  v9 = [v8 view];
  if (v9)
  {
    v10 = v9;
    [v9 alpha];
    v12 = v11;

    if (v12 == 0.0)
    {
      v32[1] = v2;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass_];
      v15 = sub_257ECF4C0();
      v16 = sub_257ECF4C0();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      v18 = v17;
      if (!v17)
      {
        sub_257ECF500();
        v18 = sub_257ECF4C0();
      }

      v34 = sub_257ECF500();
      v35 = v19;
      sub_257BDAB08();
      v20 = sub_257ED0100();
      v22 = v21;

      v23 = sub_257E003E8();
      v24 = sub_257E00504();
      sub_257DFD370(v20, v22, v23, v24);

      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }

    *v4 = MEMORY[0x277D84F90];
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    sub_257C15EC0(v4, &v7[v5[5]]);
    v7[v5[6]] = 1;
    v7[v5[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v25 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v4, type metadata accessor for MAGOutputEvent.EventType);
    *&v7[v5[8]] = v25;
    sub_257CBBC80(v7);
    sub_257C15F24(v7, type metadata accessor for MAGOutputEvent);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) = 0;
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn) = 0;
    v26 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
    v27 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
    swift_beginAccess();
    [*(v26 + v27) setUseHapticFeedback_];
    [*(v26 + v27) setUseSoundFeedback_];
    [*(v26 + v27) stopPulse];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v33 == 1)
    {
      sub_257D1A130();
    }

    v28 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer;
    v29 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer);
    if (v29)
    {
      [v29 removeFromSuperlayer];
      v30 = *(v1 + v28);
      *(v1 + v28) = 0;
    }

    v31 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService);
    *(v31 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue) = 0;
    *(v31 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage) = 0;
    *(v31 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand) = 0;
    *(v31 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback) = 0;
    *(v31 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = 0;
    *(v31 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback) = 0;
  }

  else
  {
    __break(1u);
  }
}

id sub_257CEF174(uint64_t a1, char a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v6 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  swift_beginAccess();
  [*(v5 + v6) setUseSoundFeedback_];
  [*(v5 + v6) setUseHapticFeedback_];
  return [*(v5 + v6) setDetectionType_];
}

uint64_t sub_257CEF214()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v4 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakInstructionsDisplayed;
  swift_beginAccess();
  v8 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v5 = sub_257ECF110();
  MEMORY[0x28223BE20](v5);
  *&v7[-16] = &v8;
  *&v7[-8] = v4;
  sub_257ECFD40();
  (*(v1 + 8))(v3, v0);
  return swift_endAccess();
}

uint64_t sub_257CEF3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MAGOutputEvent.EventType(0);
  v4[4] = swift_task_alloc();
  v4[5] = type metadata accessor for MAGOutputEvent(0);
  v4[6] = swift_task_alloc();
  sub_257ECF900();
  v4[7] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CEF4D4, v6, v5);
}

uint64_t sub_257CEF4D4()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  *v2 = 10;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v2, v1 + v3[5]);
  *(v1 + v3[6]) = 0;
  *(v1 + v3[7]) = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v6, type metadata accessor for MAGOutputEvent.EventType);
  *(v4 + *(v5 + 32)) = v7;
  sub_257CBBC80(v4);
  sub_257C15F24(v4, type metadata accessor for MAGOutputEvent);

  v8 = v0[1];

  return v8();
}

void sub_257CEF63C(uint64_t a1, char a2, void *a3)
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView;
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
  if (!v5)
  {
    return;
  }

  [v5 bounds];
  if (a2)
  {
    v8 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerDebugLayer);
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer);
  if (v8)
  {
LABEL_7:
    [v8 removeFromSuperlayer];
  }

LABEL_8:
  v9 = [objc_opt_self() currentDevice];
  [v9 orientation];

  v10 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v12 = v11;
  if (qword_27F8F4670 != -1)
  {
    v11 = swift_once();
  }

  v27.origin.x = CGSizeMake(v11);
  v25 = CGPathCreateWithRoundedRect(v27, 16.0, 16.0, 0);
  [v12 setPath_];
  v13 = [objc_opt_self() clearColor];
  v14 = [v13 CGColor];

  [v12 setFillColor_];
  v15 = [a3 CGColor];
  [v12 setStrokeColor_];

  v16 = v12;
  v17 = [a3 CGColor];
  [v16 setBorderColor_];

  [v16 setLineWidth_];
  LODWORD(v18) = 1.0;
  [v16 setOpacity_];
  [v16 setCornerRadius_];

  [v10 addSublayer_];
  [v10 setDrawsAsynchronously_];
  v19 = &OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerDebugLayer;
  if ((a2 & 1) == 0)
  {
    v19 = &OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer;
  }

  v20 = *v19;
  v21 = *(a1 + v20);
  *(a1 + v20) = v10;
  v22 = v10;

  v23 = *(a1 + v4);
  if (v23)
  {
    v24 = [v23 layer];
    [v24 insertSublayer:v22 atIndex:0];
  }
}

void sub_257CEFA74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257CEFB00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257CEF3DC(a1, v4, v5, v6);
}

void sub_257CEFBF8(void *a1, void *a2)
{
  if (a1)
  {
    v3 = v2;
    *&v11[0] = 0x6675426C65786970;
    *(&v11[0] + 1) = 0xEB00000000726566;
    v5 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v5)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(v11, v12);
      sub_257BE41F4(v12, v11);
      type metadata accessor for CVBuffer(0);
      swift_dynamicCast();
      Width = CVPixelBufferGetWidth(pixelBuffer);

      sub_257BE41F4(v12, v11);
      swift_dynamicCast();
      Height = CVPixelBufferGetHeight(pixelBuffer);

      v8 = Width * Height;
      if ((Width * Height) >> 64 == (Width * Height) >> 63)
      {
        if ((v8 - 0x2000000000000000) >> 62 == 3)
        {
          [*(v3 + 16) setObject:a1 forKey:a2 cost:4 * v8];
          swift_beginAccess();
          Height = a2;
          MEMORY[0x259C72300]();
          if (*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_6:
            sub_257ECF860();
            swift_endAccess();

            __swift_destroy_boxed_opaque_existential_0(v12);
            return;
          }

LABEL_14:
          sub_257ECF830();
          goto LABEL_6;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {
  }
}

id sub_257CEFE48(void *a1)
{
  v38 = a1;
  v1 = sub_257ECCDC0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_257ECCDD0();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_257ECCC80();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  sub_257ECCDB0();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9930], v1);
  sub_257ECCC70();
  sub_257ECCDA0();
  v35 = *(v12 + 8);
  v35(v15, v11);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v36);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_257ECCC70();
    if (v18(v10, 1, v11) != 1)
    {
      sub_257CF0448(v10);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  result = sub_257ECCC30();
  v21 = round(v20 * 1000.0);
  v23 = v37;
  v22 = v38;
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [v38 timeIntervalSince1970];
  v25 = round(v24 * 1000.0);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v25 >= v21)
  {
    goto LABEL_15;
  }

  [*(v23 + 16) removeObjectForKey_];
  swift_beginAccess();
  v26 = *(v23 + 24);

  sub_257DB8588(v22, v26);
  v28 = v27;

  if (v28)
  {
    goto LABEL_15;
  }

  v29 = *(v23 + 24);

  v30 = sub_257DB8588(v22, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    swift_beginAccess();
    v33 = sub_257C1C9AC(v30);
    swift_endAccess();

LABEL_15:
    v34 = [*(v23 + 16) objectForKey_];
    v35(v17, v11);
    return v34;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_257CF0354()
{
  type metadata accessor for DetectionModeImageCache();
  v0 = swift_allocObject();
  *(v0 + 24) = MEMORY[0x277D84F90];
  v1 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v0 + 16) = v1;
  v2 = v1;
  [v2 setCountLimit_];
  [v2 setTotalCostLimit_];

  qword_27F912F78 = v0;
}

uint64_t sub_257CF03E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257CF0448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *_s16MagnifierSupport16MAGActivityStoreC10activitiesSayAA0C0VGvg_0()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v0 = qword_281548348;
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v26[0] = *(v0 + 88);
  v26[1] = v1;
  v26[2] = v2;
  v3 = qword_2815447E0;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v5 = v27;
  v6 = *(v27 + 16);
  if (v6)
  {
    v7 = sub_257C63CC4(*(v27 + 16), 0);
    v8 = sub_257C67A48(v26, v7 + 4, v6, v5);
    sub_257C02520();
    if (v8 == v6)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_9:
  v26[0] = v7;
  sub_257ECC3F0();
  sub_257C63C58(v26);

  v9 = v26[0];
  v10 = *(v26[0] + 2);
  if (v10)
  {
    v26[0] = MEMORY[0x277D84F90];
    sub_257BF2984(0, v10, 0);
    v11 = v26[0];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();
    v14 = v9 + 40;
    do
    {

      v15 = [v13 bundleForClass_];
      v16 = sub_257ECF4C0();
      v17 = sub_257ECF4C0();
      v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

      v19 = sub_257ECF500();
      v21 = v20;

      v26[0] = v11;
      v23 = *(v11 + 2);
      v22 = *(v11 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_257BF2984((v22 > 1), v23 + 1, 1);
        v11 = v26[0];
      }

      *(v11 + 2) = v23 + 1;
      v24 = &v11[16 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      v14 += 16;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t sub_257CF08A4()
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

uint64_t sub_257CF09A8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    result = swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v16[0] = v5[11];
        v16[1] = v6;
        v16[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
        sub_257ECFD50();

        if (*(v15[0] + 16))
        {
          v10 = sub_257C03F6C(v3, v2);
          v12 = v11;

          if (v12)
          {
            v13 = (*(v15[0] + 56) + 296 * v10);
            memcpy(v14, v13, sizeof(v14));
            memmove(v15, v13, 0x128uLL);
            CGSizeMake(v15);
            sub_257C09C58(v14, v16);

            memcpy(v16, v15, sizeof(v16));
LABEL_16:
            memcpy(v15, (v4 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity), v16, 0x128uLL);
            return sub_257C109C8(v15);
          }
        }

        else
        {
        }

        sub_257C10998(v16);
        goto LABEL_16;
      }
    }
  }

  return result;
}

void sub_257CF0CCC()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView];
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

void sub_257CF0E68(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  sub_257CF09A8();
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView] reloadData];
  v3 = [v1 navigationItem];
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

  [v3 setTitle_];
}

id sub_257CF1040(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v7], __src, 0x128uLL);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemYellowColor];
  [v11 setTintColor_];

  [v11 setClipsToBounds_];
  *&v3[v8] = v11;
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

id sub_257CF1224(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v1[v4], __src, 0x128uLL);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemYellowColor];
  [v8 setTintColor_];

  [v8 setClipsToBounds_];
  *&v1[v5] = v8;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id sub_257CF1448(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF4C0();
  v5 = sub_257ECCE30();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  v7 = sub_257ECCEA0();
  if (v7 != 1)
  {
    if (!v7)
    {
      v8 = sub_257ECCE60();
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView) numberOfRowsInSection_];
  v10 = sub_257ECCE60();
  v11 = __OFADD__(v10, v9);
  v8 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_7:
    v8 = 0;
  }

LABEL_8:
  ColorFilter.init(rawValue:)(v8);
  v12 = __dst[0];
  if (__dst[0] != 12)
  {
    v13 = [v6 textLabel];
    if (v13)
    {
      v14 = v13;
      sub_257D188B4();
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      v17 = sub_257ECF4C0();

      v18 = sub_257ECF4C0();
      v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

      if (!v19)
      {
        sub_257ECF500();
        v19 = sub_257ECF4C0();
      }

      [v14 setText_];
    }

    v20 = v2 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity), sizeof(__dst));
    if (sub_257C108C4(__dst) != 1)
    {
      if (sub_257C592D0(v12, *(v20 + 40)))
      {
        v21 = 3;
      }

      else
      {
        v21 = 0;
      }

      [v6 setAccessoryType_];
    }
  }

  return v6;
}

void sub_257CF19A8(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECCE30();
  v9 = [a1 cellForRowAtIndexPath_];

  if (!v9)
  {
    return;
  }

  v10 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v10 animated:1];

  v11 = sub_257ECCEA0();
  if (v11 != 1)
  {
    if (!v11)
    {
      v12 = sub_257ECCE60();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView) numberOfRowsInSection_];
  v14 = sub_257ECCE60();
  v15 = __OFADD__(v14, v13);
  v12 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_8:
    v12 = 0;
  }

LABEL_9:
  ColorFilter.init(rawValue:)(v12);
  v16 = v43;
  if (v43 != 12)
  {
    v17 = v1 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity;
    memcpy(v42, (v2 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity), 0x128uLL);
    if (sub_257C108C4(v42) != 1)
    {
      v40 = v7;
      v18 = *(v17 + 40);
      v19 = sub_257C592D0(v16, v18);
      v39 = v5;
      if (v19)
      {
        v20 = *(v18 + 16);
        if (v20)
        {
          v36 = v4;
          v37 = v9;
          v38 = v2;

          v21 = MEMORY[0x277D84F90];
          v22 = 32;
          do
          {
            v25 = *(v18 + v22);
            if (v25 != v16)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v41[0] = v21;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_257BF2944(0, *(v21 + 16) + 1, 1);
                v21 = v41[0];
              }

              v24 = *(v21 + 16);
              v23 = *(v21 + 24);
              if (v24 >= v23 >> 1)
              {
                sub_257BF2944((v23 > 1), v24 + 1, 1);
                v21 = v41[0];
              }

              *(v21 + 16) = v24 + 1;
              *(v21 + v24 + 32) = v25;
            }

            ++v22;
            --v20;
          }

          while (v20);

          v9 = v37;
          v4 = v36;
        }

        else
        {
          v21 = MEMORY[0x277D84F90];
        }

        v5 = v39;
        v28 = v40;
        if (!*(v21 + 16))
        {

          return;
        }

        [v9 setAccessoryType_];
      }

      else
      {

        [v9 setAccessoryType_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F74D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v16;
        v41[0] = v18;
        sub_257EB10DC(inited);
        v28 = v40;
        v21 = v41[0];
      }

      sub_257ECD420();

      v29 = sub_257ECDA20();
      v30 = sub_257ECFBD0();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v41[0] = v38;
        *v31 = 136315138;
        v32 = MEMORY[0x259C72340](v21, &type metadata for ColorFilter);
        v34 = sub_257BF1FC8(v32, v33, v41);

        *(v31 + 4) = v34;
        _os_log_impl(&dword_257BAC000, v29, v30, "New filters: %s", v31, 0xCu);
        v35 = v38;
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x259C74820](v35, -1, -1);
        MEMORY[0x259C74820](v31, -1, -1);

        (*(v39 + 8))(v40, v4);
      }

      else
      {

        (*(v5 + 8))(v28, v4);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_257CE3084(v21);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_257CF09A8();
    }
  }
}

uint64_t sub_257CF1F2C(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257CF2034()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_activity), sizeof(__dst));
  result = sub_257C108C4(__dst);
  if (result == 1)
  {
    return result;
  }

  if (*(v1[5] + 16) != 1)
  {
    return 1;
  }

  v3 = sub_257ECCEA0();
  if (v3 != 1)
  {
    if (!v3)
    {
      v4 = sub_257ECCE60();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport41ActivityFilterCustomizationViewController_tableView) numberOfRowsInSection_];
  v6 = sub_257ECCE60();
  v7 = __OFADD__(v6, v5);
  v4 = v5 + v6;
  if (v7)
  {
    __break(1u);
LABEL_10:
    v4 = 0;
  }

LABEL_11:
  ColorFilter.init(rawValue:)(v4);
  v8 = v14[303];
  memcpy(v14, v1, 0x128uLL);
  if (sub_257C108C4(v14) == 1 || (v9 = v1[5], !*(v9 + 16)))
  {
    v10 = 12;
  }

  else
  {
    v10 = *(v9 + 32);
  }

  v11 = v10 == 12;
  v13 = v10 != 12 && v8 == v10;
  if (v8 == 12)
  {
    v13 = v11;
  }

  return !v13;
}

char *sub_257CF218C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard] = 0;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard] = 0;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX] = 0;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_topInset] = 0x4018000000000000;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_bottomInset] = 0x4018000000000000;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_leftInset] = 0x4020000000000000;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_rightInset] = 0x4020000000000000;
  v3 = v2;
  [v3 setTextAlignment_];
  [v3 setNumberOfLines_];
  [v3 setLineBreakMode_];
  v4 = [v3 layer];
  [v4 setMasksToBounds_];

  v5 = [v3 layer];
  [v5 setCornerRadius_];

  v6 = [v3 layer];
  if (qword_281544A70 != -1)
  {
    swift_once();
  }

  [v6 setCornerCurve_];

  return v3;
}

id sub_257CF2390()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_setNeedsLayout);
  result = [v0 superview];
  if (result)
  {

    result = [v0 superview];
    if (result)
    {
      v2 = result;
      [result frame];
      v4 = v3;

      if (qword_281544A68 != -1)
      {
        swift_once();
      }

      [v0 sizeThatFits_];
      return [v0 setPreferredMaxLayoutWidth_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_257CF25C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY);
}

uint64_t sub_257CF26B4(unsigned __int8 a1)
{
  if (!a1)
  {
    return a1;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

void sub_257CF27D8()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  [v1 setTitle_];
}

uint64_t sub_257CF2978()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    result = swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v16[0] = v5[11];
        v16[1] = v6;
        v16[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
        sub_257ECFD50();

        if (*(v15[0] + 16))
        {
          v10 = sub_257C03F6C(v3, v2);
          v12 = v11;

          if (v12)
          {
            v13 = (*(v15[0] + 56) + 296 * v10);
            memcpy(v14, v13, sizeof(v14));
            memmove(v15, v13, 0x128uLL);
            CGSizeMake(v15);
            sub_257C09C58(v14, v16);

            memcpy(v16, v15, sizeof(v16));
LABEL_16:
            memcpy(v15, (v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), v16, 0x128uLL);
            return sub_257C109C8(v15);
          }
        }

        else
        {
        }

        sub_257C10998(v16);
        goto LABEL_16;
      }
    }
  }

  return result;
}

id sub_257CF2C44()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257C60F40();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result addSubview_];

    result = [v1 view];
    if (result)
    {
      v8 = result;
      sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return sub_257CF2978();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_257CF2E30(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v7], __src, 0x128uLL);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_availableTextDetectionFeedbacks] = &unk_286904F78;
  v8 = OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_tableView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemYellowColor];
  [v11 setTintColor_];

  [v11 setClipsToBounds_];
  *&v3[v8] = v11;
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

id sub_257CF3028(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v1[v4], __src, 0x128uLL);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_availableTextDetectionFeedbacks] = &unk_286904FA0;
  v5 = OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_tableView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemYellowColor];
  [v8 setTintColor_];

  [v8 setClipsToBounds_];
  *&v1[v5] = v8;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

unint64_t sub_257CF3344(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCEA0();
  switch(v4)
  {
    case 0:
      v6 = sub_257ECF4C0();
      v7 = sub_257ECCE30();
      v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

      sub_257CF2978();
      v9 = [v8 textLabel];
      if (v9)
      {
        v10 = v9;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass_];
        v13 = sub_257ECF4C0();
        v14 = sub_257ECF4C0();
        v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

        if (!v15)
        {
          sub_257ECF500();
          v15 = sub_257ECF4C0();
        }

        [v10 setText_];
      }

      v16 = [v8 textLabel];
      if (v16)
      {
        v17 = v16;
        [v16 setNumberOfLines_];
      }

      v18 = [v8 textLabel];
      if (v18)
      {
        v19 = v18;
        [v18 setLineBreakMode_];
      }

      v20 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      v21 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
      memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), sizeof(__dst));
      if (sub_257C108C4(__dst) == 1)
      {
      }

      else
      {
        [v20 setOn_];
        v45 = v20;
        [v45 setTag_];
        [v45 addTarget:v2 action:sel_toggleTextDetectionSwitchChanged_ forControlEvents:4096];
        [v8 setAccessoryView_];
      }

      return v8;
    case 1:
      v5 = 1;
      break;
    case 2:
      v5 = 2;
      break;
    default:
      v5 = 3;
      break;
  }

  v22 = sub_257ECF4C0();
  v23 = sub_257ECCE30();
  v8 = [a1 dequeueReusableCellWithIdentifier:v22 forIndexPath:v23];

  sub_257CF2978();
  if (v5 != 1)
  {
    if (v5 != 2)
    {
      return v8;
    }

    v24 = [v8 textLabel];
    if (v24)
    {
      v25 = v24;
      type metadata accessor for MAGUtilities();
      v26 = swift_getObjCClassFromMetadata();
      v27 = [objc_opt_self() bundleForClass_];
      v28 = sub_257ECF4C0();
      v29 = sub_257ECF4C0();
      v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

      if (!v30)
      {
        sub_257ECF500();
        v30 = sub_257ECF4C0();
      }

      [v25 setText_];
    }

    v31 = [v8 textLabel];
    if (v31)
    {
      v32 = v31;
      [v31 setNumberOfLines_];
    }

    v33 = [v8 textLabel];
    if (v33)
    {
      v34 = v33;
      [v33 setLineBreakMode_];
    }

    v35 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), sizeof(__dst));
    if (sub_257C108C4(__dst) == 1)
    {
      return v8;
    }

    v36 = *(v35 + 241);
    v37 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    [v37 setOn_];
    [v37 addTarget:v2 action:sel_didToggleFlashlightSwitch_ forControlEvents:4096];
    [v8 setAccessoryView_];
    goto LABEL_35;
  }

  v38 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_availableTextDetectionFeedbacks);
  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v38 + 16))
  {
    v40 = *(v38 + result + 32);
    v41 = [v8 textLabel];
    if (v41)
    {
      v42 = v41;
      sub_257BE42A0();
      v43 = sub_257ECF4C0();

      [v42 setText_];
    }

    v37 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v44 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), sizeof(__dst));
    if (sub_257C108C4(__dst) == 1)
    {
      goto LABEL_36;
    }

    [v37 setOn_];
    v37 = v37;
    [v37 setTag_];
    [v37 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
    [v8 setAccessoryView_];

LABEL_35:
    [v8 setAccessoryType_];
LABEL_36:

    return v8;
  }

  __break(1u);
  return result;
}

id sub_257CF3B44(void *a1)
{
  v2 = v1;
  sub_257CF2978();
  result = [a1 tag];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
  memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), 0x128uLL);
  result = sub_257C108C4(__dst);
  if (result != 1)
  {
    v7 = *(v6 + 200);

    if ([a1 isOn])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5550);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v5;
      sub_257EB05F8(inited);
      sub_257CF3D1C(v7);
    }

    else
    {
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = (v7 + 32);
        v11 = MEMORY[0x277D84F90];
        do
        {
          v14 = *v10;
          if (v5 != v14)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF2704(0, *(v11 + 16) + 1, 1);
            }

            v13 = *(v11 + 16);
            v12 = *(v11 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_257BF2704((v12 > 1), v13 + 1, 1);
            }

            *(v11 + 16) = v13 + 1;
            *(v11 + v13 + 32) = v14;
          }

          ++v10;
          --v9;
        }

        while (v9);
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      sub_257CF3D1C(v11);
    }
  }

  return result;
}

uint64_t sub_257CF3D1C(char *a1)
{
  sub_257CF2978();
  v7 = a1;

  sub_257CF41A8(&v7);
  v3 = v7;
  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityTextDetectionCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D74310(*(v4 + 200), v3) & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_257CE3F40(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_257CF41A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C6705C(v2);
  }

  v3 = *(v2 + 2);
  v17[0] = (v2 + 32);
  v17[1] = v3;
  result = sub_257ED05F0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if ((*v13 & (v11 ^ 1) & 1) == 0)
          {
            break;
          }

          v13[1] = *v13;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v15[0] = v7 + 32;
    v15[1] = v6;
    sub_257CF42E8(v15, v16, v17, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_257CF42E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v83 = *v83;
    if (!v83)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_257C66E20(v9);
      v9 = result;
    }

    v75 = v9 + 16;
    v76 = *(v9 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v9[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_257CF4828((*a3 + *v77), (*a3 + *v79), *a3 + v80, v83);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_112;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_113;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_114;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10) & (v11 ^ 1);
      v13 = v10 + 2;
      while (v6 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = v11 & (v14 ^ 1);
        ++v13;
        v11 = v14;
        if (v12 != v15)
        {
          v8 = v13 - 1;
          if (!v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (!v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v16 = v8 - 1;
        v17 = v10;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v18 = *(v20 + v17);
            *(v20 + v17) = *(v20 + v16);
            *(v20 + v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_257BFCB00(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_257BFCB00((v28 > 1), v29 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v29];
    *(v31 + 4) = v10;
    *(v31 + 5) = v8;
    v32 = *v83;
    if (!*v83)
    {
      goto LABEL_125;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v9 + 4);
          v35 = *(v9 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_103;
          }

          v50 = &v9[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v9[16 * v33 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_110;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v60 = &v9[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_71:
        if (v55)
        {
          goto LABEL_105;
        }

        v63 = &v9[16 * v33];
        v65 = *(v63 + 4);
        v64 = *(v63 + 5);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_108;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_78:
        v71 = v33 - 1;
        if (v33 - 1 >= v30)
        {
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
LABEL_111:
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
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v72 = *&v9[16 * v71 + 32];
        v73 = *&v9[16 * v33 + 40];
        sub_257CF4828((*a3 + v72), (*a3 + *&v9[16 * v33 + 32]), *a3 + v73, v32);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_257C66E20(v9);
        }

        if (v71 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v74 = &v9[16 * v71];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        result = sub_257C66D94(v33);
        v30 = *(v9 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_101;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_102;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_104;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_111;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + v8 - 1;
  v23 = v10 - v8;
LABEL_30:
  v24 = *(v21 + v8);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    if ((*v26 & (v24 ^ 1)) != 1)
    {
LABEL_29:
      ++v8;
      ++v22;
      --v23;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = *v26;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_257CF4828(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        while (1)
        {
          v16 = v5 + 1;
          if (*v15 == 1 && *(v10 - 1) == 0)
          {
            break;
          }

          v18 = v10 - 1;
          if (v16 < v10 || v5 >= v10)
          {
            *v5 = *v18;
          }

          --v5;
          --v10;
          if (v18 <= v4)
          {
            v10 = v18;
            goto LABEL_46;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

LABEL_46:
    if (v6 != v4)
    {
LABEL_48:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*v4 == 1 && *v6 == 0)
        {
          v14 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v14)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = v4 + 1;
          v13 = v4;
          v14 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v12)
            {
              goto LABEL_19;
            }
          }
        }

        *v7 = *v13;
LABEL_19:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_48;
    }
  }

LABEL_47:
  if (v6 >= v10)
  {
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_257CF4A2C(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

id sub_257CF4B34()
{
  result = AXDeviceSupportsDetectionMode();
  if (result)
  {
    sub_257CF5168();
    result = [swift_getObjCClassFromMetadata() supportsFrameSemantics_];
  }

  byte_27F8F78A0 = result;
  return result;
}

uint64_t sub_257CF4B98()
{
  result = AXDeviceSupportsHuman();
  byte_27F8F78A1 = result;
  return result;
}

uint64_t sub_257CF4BDC(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_257CF4C78()
{
  v43[1] = *MEMORY[0x277D85DE8];
  v0 = sub_257ECDA30();
  v42 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v41 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_257ECCB70();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = [v10 URLsForDirectory:9 inDomains:1];

  v12 = sub_257ECF810();
  v13 = *(v12 + 16);

  if (!v13)
  {
    return 0;
  }

  v14 = [v9 defaultManager];
  v15 = [v14 URLsForDirectory:9 inDomains:1];

  v16 = sub_257ECF810();
  if (!*(v16 + 16))
  {
    __break(1u);
  }

  v40 = v0;
  (*(v3 + 16))(v6, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

  sub_257ECCB00();
  v17 = *(v3 + 8);
  v17(v6, v2);
  v18 = sub_257ECCB50();
  v19 = [v9 &selRef__setOutputMode_ + 3];
  v20 = sub_257ECF4C0();
  v21 = [v19 fileExistsAtPath_];

  if (v21)
  {
    goto LABEL_6;
  }

  v39 = v17;
  v22 = [v9 defaultManager];
  v23 = sub_257ECF4C0();
  v43[0] = 0;
  v24 = [v22 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:0 error:v43];

  v25 = v40;
  if (!v24)
  {
    v27 = v43[0];

    v28 = sub_257ECC9F0();

    swift_willThrow();
    v29 = v41;
    sub_257ECD3B0();
    v30 = v28;
    v31 = sub_257ECDA20();
    v32 = sub_257ECFBD0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v28;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_257BAC000, v31, v32, "Cannot create recording URL: %@", v33, 0xCu);
      sub_257C11B14(v34);
      MEMORY[0x259C74820](v34, -1, -1);
      MEMORY[0x259C74820](v33, -1, -1);
    }

    (*(v42 + 8))(v29, v25);
    v39(v8, v2);
    return 0;
  }

  v26 = v43[0];
  v17 = v39;
LABEL_6:
  v17(v8, v2);
  return v18;
}

unint64_t sub_257CF5168()
{
  result = qword_27F8F8060;
  if (!qword_27F8F8060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F8060);
  }

  return result;
}

id sub_257CF51B4()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultConfiguration];
  sub_257BD2C2C(0, &unk_281543D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78C0);
  v3 = sub_257ED06A0();
  v4 = sub_257ECF4C0();
  v5 = [v2 tweakedConfigurationForCaller:v3 usage:v4];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBBA0;
  v7 = v5;
  v8 = MEMORY[0x277D837D0];
  sub_257ED0280();
  *(inited + 96) = v8;
  *(inited + 72) = 0x6D6F74737563;
  *(inited + 80) = 0xE600000000000000;
  sub_257ED0280();
  *(inited + 168) = MEMORY[0x277D83E88];
  *(inited + 144) = 29527;
  v18 = 0xD000000000000010;
  v19 = 0x8000000257EFEB60;
  sub_257ED0280();
  v9 = sub_257BEA014(&unk_286904FC8);
  sub_257BE4084(&unk_286904FE8, &qword_27F8F9EF0);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB2E0);
  *(inited + 216) = v9;
  sub_257BE88A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54A0);
  swift_arrayDestroy();
  v10 = sub_257ECF3C0();

  v11 = [objc_opt_self() feedbackWithDictionaryRepresentation_];

  [v7 setInteractionStartedFeedback_];
  v12 = [v7 interactionStartedFeedback];
  [v7 setInteractionEndedFeedback_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75E20]) initWithConfiguration_];
  [v13 _setOutputMode_];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport14MFHapticButton_buttonFeedbackGenerator] = v13;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v14 = v13;
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v15 setExclusiveTouch_];
  [v15 addTarget:v15 action:sel_shutterButtonDown_ forControlEvents:1];

  return v15;
}

id sub_257CF56F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_257BD2C2C(0, &qword_27F8F78B0);
  sub_257CF5978();
  v5 = sub_257ECFA60();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_touchesEnded_withEvent_, v5, a2);

  v6 = [v2 isTouchInside];
  v7 = *&v2[OBJC_IVAR____TtC16MagnifierSupport14MFHapticButton_buttonFeedbackGenerator];
  if (v6)
  {
    [*&v2[OBJC_IVAR____TtC16MagnifierSupport14MFHapticButton_buttonFeedbackGenerator] userInteractionEnded];
    v8 = &selRef_prepare;
  }

  else
  {
    v8 = &selRef_userInteractionCancelled;
  }

  return [v7 *v8];
}

unint64_t sub_257CF5978()
{
  result = qword_27F8F78B8;
  if (!qword_27F8F78B8)
  {
    sub_257BD2C2C(255, &qword_27F8F78B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F78B8);
  }

  return result;
}

uint64_t sub_257CF59E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7980);
  v1 = *(v0 - 8);
  v35 = v0;
  v36 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - v2;
  v4 = sub_257ECC400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7988);
  MEMORY[0x28223BE20](v8);
  sub_257C7B704();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v9 = *MEMORY[0x277CB9F50];
  v32 = *(v5 + 104);
  v30 = v9;
  v29 = v4;
  v32(v7, v9, v4);
  v33 = v5 + 104;
  sub_257ECC4B0();
  v31 = *(v5 + 8);
  v31(v7, v4);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v28 = sub_257ECC420();
  v34 = *(v36 + 8);
  v36 += 8;
  v34(v3, v35);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v10 = v29;
  v11 = v32;
  v32(v7, v9, v29);
  sub_257ECC4B0();
  v12 = v31;
  v31(v7, v10);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v27 = sub_257ECC420();
  v13 = v35;
  v34(v3, v35);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v14 = v29;
  v11(v7, v30, v29);
  sub_257ECC4B0();
  v12(v7, v14);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v26 = sub_257ECC420();
  v15 = v13;
  v16 = v34;
  v34(v3, v15);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v32(v7, v30, v14);
  sub_257ECC4B0();
  v31(v7, v14);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v17 = sub_257ECC420();
  v18 = v35;
  v16(v3, v35);
  sub_257ECC4A0();
  v19 = sub_257ECC420();
  v16(v3, v18);
  sub_257ECC4A0();
  v20 = sub_257ECC420();
  v16(v3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7990);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_257EE23E0;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v26;
  *(v21 + 56) = v17;
  *(v21 + 64) = v19;
  *(v21 + 72) = v20;
  v23 = sub_257ECC410();

  return v23;
}

uint64_t sub_257CF6018()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7980);
  v1 = *(v0 - 8);
  v35 = v0;
  v36 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - v2;
  v4 = sub_257ECC400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7988);
  MEMORY[0x28223BE20](v8);
  sub_257C7B704();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v9 = *MEMORY[0x277CB9F50];
  v32 = *(v5 + 104);
  v30 = v9;
  v29 = v4;
  v32(v7, v9, v4);
  v33 = v5 + 104;
  sub_257ECC4B0();
  v31 = *(v5 + 8);
  v31(v7, v4);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v28 = sub_257ECC420();
  v34 = *(v36 + 8);
  v36 += 8;
  v34(v3, v35);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v10 = v29;
  v11 = v32;
  v32(v7, v9, v29);
  sub_257ECC4B0();
  v12 = v31;
  v31(v7, v10);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v27 = sub_257ECC420();
  v13 = v35;
  v34(v3, v35);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v14 = v29;
  v11(v7, v30, v29);
  sub_257ECC4B0();
  v12(v7, v14);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v26 = sub_257ECC420();
  v15 = v13;
  v16 = v34;
  v34(v3, v15);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v32(v7, v30, v14);
  sub_257ECC4B0();
  v31(v7, v14);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v17 = sub_257ECC420();
  v18 = v35;
  v16(v3, v35);
  sub_257ECC4A0();
  v19 = sub_257ECC420();
  v16(v3, v18);
  sub_257ECC4A0();
  v20 = sub_257ECC420();
  v16(v3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7990);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_257EE23E0;
  v22 = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = v22;
  *(v21 + 48) = v26;
  *(v21 + 56) = v17;
  *(v21 + 64) = v19;
  *(v21 + 72) = v20;
  v23 = sub_257ECC410();

  return v23;
}

uint64_t sub_257CF664C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7980);
  v1 = *(v0 - 8);
  v38 = v0;
  v39 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v28 - v2;
  v4 = sub_257ECC400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7988);
  MEMORY[0x28223BE20](v8);
  sub_257C7B704();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v9 = *MEMORY[0x277CB9F50];
  v35 = *(v5 + 104);
  v33 = v9;
  v32 = v4;
  v35(v7, v9, v4);
  v36 = v5 + 104;
  sub_257ECC4B0();
  v10 = *(v5 + 8);
  v34 = v5 + 8;
  v10(v7, v4);
  v11 = v10;
  sub_257ECC4D0();
  sub_257ECC4F0();
  v31 = sub_257ECC420();
  v37 = *(v39 + 8);
  v39 += 8;
  v37(v3, v38);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v12 = v9;
  v13 = v32;
  v14 = v35;
  v35(v7, v12, v32);
  sub_257ECC4B0();
  v15 = v11;
  v11(v7, v13);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v30 = sub_257ECC420();
  v16 = v38;
  v37(v3, v38);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v17 = v32;
  v14(v7, v33, v32);
  sub_257ECC4B0();
  v15(v7, v17);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v29 = sub_257ECC420();
  v37(v3, v16);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v35(v7, v33, v17);
  sub_257ECC4B0();
  v15(v7, v17);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v18 = sub_257ECC420();
  v20 = v37;
  v19 = v38;
  v37(v3, v38);
  sub_257ECC4A0();
  v21 = sub_257ECC420();
  v20(v3, v19);
  sub_257ECC4A0();
  v22 = sub_257ECC420();
  v20(v3, v19);
  sub_257ECC4A0();
  v23 = sub_257ECC420();
  v20(v3, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7990);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_257EDFA20;
  v25 = v30;
  *(v24 + 32) = v31;
  *(v24 + 40) = v25;
  *(v24 + 48) = v29;
  *(v24 + 56) = v18;
  *(v24 + 64) = v21;
  *(v24 + 72) = v22;
  *(v24 + 80) = v23;
  v26 = sub_257ECC410();

  return v26;
}

uint64_t sub_257CF6CD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7980);
  v1 = *(v0 - 8);
  v30 = v0;
  v31 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - v2;
  v4 = sub_257ECC400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7988);
  MEMORY[0x28223BE20](v8);
  sub_257C7B704();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v27 = *MEMORY[0x277CB9F50];
  v29 = *(v5 + 104);
  v29(v7);
  v28 = v5 + 104;
  sub_257ECC4B0();
  v26 = *(v5 + 8);
  v22 = v5 + 8;
  v26(v7, v4);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v25 = sub_257ECC420();
  v9 = v30;
  v21 = *(v31 + 8);
  v31 += 8;
  v21(v3, v30);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v10 = v27;
  v20 = v4;
  (v29)(v7, v27, v4);
  sub_257ECC4B0();
  v11 = v26;
  v26(v7, v4);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v24 = sub_257ECC420();
  v12 = v21;
  v21(v3, v9);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v13 = v10;
  v14 = v20;
  (v29)(v7, v13, v20);
  sub_257ECC4B0();
  v11(v7, v14);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v23 = sub_257ECC420();
  v12(v3, v30);
  sub_257ECC4E0();
  sub_257ECC4D0();
  (v29)(v7, v27, v14);
  sub_257ECC4B0();
  v26(v7, v14);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v15 = sub_257ECC420();
  v12(v3, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7990);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_257EDBE50;
  v17 = v24;
  *(v16 + 32) = v25;
  *(v16 + 40) = v17;
  *(v16 + 48) = v23;
  *(v16 + 56) = v15;
  v18 = sub_257ECC410();

  return v18;
}

uint64_t sub_257CF7240()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7968);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - v2;
  v4 = sub_257ECC400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7970);
  MEMORY[0x28223BE20](v8);
  sub_257CE5428();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v23 = *MEMORY[0x277CB9F50];
  v25 = *(v5 + 104);
  v25(v7);
  sub_257ECC4B0();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v22 = sub_257ECC420();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_257ECC4E0();
  sub_257ECC4D0();
  (v25)(v7, v23, v4);
  sub_257ECC4B0();
  v24(v7, v4);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v21 = sub_257ECC420();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_257ECC4E0();
  sub_257ECC4D0();
  (v25)(v7, v23, v4);
  sub_257ECC4B0();
  v24(v7, v4);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v13 = sub_257ECC420();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7978);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257EDBBA0;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_257ECC410();

  return v16;
}

uint64_t sub_257CF76BC()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7950);
  v19 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v1 = &v17 - v0;
  v2 = sub_257ECC400();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7958);
  MEMORY[0x28223BE20](v6);
  sub_257CF9714();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v23 = *MEMORY[0x277CB9F50];
  v25 = *(v3 + 104);
  v21 = v2;
  v25(v5);
  sub_257ECC4B0();
  v22 = *(v3 + 8);
  v24 = v3 + 8;
  v22(v5, v2);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v20 = sub_257ECC420();
  v18 = *(v19 + 8);
  v7 = v26;
  v18(v1, v26);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v8 = v21;
  (v25)(v5, v23, v21);
  sub_257ECC4B0();
  v22(v5, v8);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v19 = sub_257ECC420();
  v9 = v7;
  v10 = v18;
  v18(v1, v9);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v11 = v21;
  (v25)(v5, v23, v21);
  sub_257ECC4B0();
  v22(v5, v11);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v12 = sub_257ECC420();
  v10(v1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7960);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257EDBBA0;
  v14 = v19;
  *(v13 + 32) = v20;
  *(v13 + 40) = v14;
  *(v13 + 48) = v12;
  v15 = sub_257ECC410();

  return v15;
}

uint64_t sub_257CF7B58(uint64_t a1)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7938);
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = v24 - v3;
  v5 = sub_257ECC400();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7940);
  MEMORY[0x28223BE20](v9);
  v10 = sub_257CF9768();
  sub_257ECC4E0();
  sub_257ECC4D0();
  swift_getKeyPath();
  v33 = sub_257CF9864();
  sub_257ECC3F0();

  sub_257ECC4C0();

  sub_257ECC4D0();
  v31 = *MEMORY[0x277CB9F50];
  v26 = *(v6 + 104);
  v26(v8);
  v24[0] = v6 + 104;
  sub_257ECC4B0();
  v11 = *(v6 + 8);
  v24[1] = v6 + 8;
  v25 = v11;
  v11(v8, v5);
  sub_257ECC4D0();
  v30 = v4;
  sub_257ECC4F0();
  v29 = v10;
  v28 = sub_257ECC420();
  v12 = *(v36 + 8);
  v36 += 8;
  v32 = v12;
  v12(v4, v35);
  sub_257ECC4E0();
  sub_257ECC4D0();
  swift_getKeyPath();
  sub_257ECC3F0();

  sub_257ECC4C0();

  sub_257ECC4D0();
  v13 = v5;
  v14 = v26;
  (v26)(v8, v31, v5);
  sub_257ECC4B0();
  v15 = v5;
  v16 = v25;
  v25(v8, v15);
  sub_257ECC4D0();
  v17 = v30;
  sub_257ECC4F0();
  v27 = sub_257ECC420();
  v32(v17, v35);
  sub_257ECC4E0();
  sub_257ECC4D0();
  (v14)(v8, v31, v13);
  sub_257ECC4B0();
  v16(v8, v13);
  sub_257ECC4D0();
  swift_getKeyPath();
  sub_257ECC3F0();

  sub_257ECC4C0();

  sub_257ECC4D0();
  v18 = v30;
  sub_257ECC4F0();
  v19 = sub_257ECC420();
  v32(v18, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7948);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_257EDBBA0;
  v21 = v27;
  *(v20 + 32) = v28;
  *(v20 + 40) = v21;
  *(v20 + 48) = v19;
  v22 = sub_257ECC410();

  return v22;
}

uint64_t sub_257CF8118()
{
  v0 = sub_257ECC490();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_257CF9864();
  sub_257ECC3F0();

  sub_257CF9768();
  sub_257ECC480();
  v4 = sub_257ECC470();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7930);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257ED6D30;
  *(v5 + 32) = v4;
  v6 = sub_257ECC460();

  return v6;
}

uint64_t sub_257CF8288()
{
  v0 = sub_257ECC440();
  v1 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BD0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_257ECC430();

  return v3;
}

uint64_t sub_257CF8334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7910);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - v2;
  v4 = sub_257ECC400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7918);
  MEMORY[0x28223BE20](v8);
  sub_257CF97BC();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v25 = *MEMORY[0x277CB9F50];
  v20 = *(v5 + 104);
  v20(v7);
  sub_257ECC4B0();
  v23 = *(v5 + 8);
  v24 = v5 + 8;
  v23(v7, v4);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v22 = sub_257ECC420();
  v9 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v10 = v20;
  (v20)(v7, v25, v4);
  sub_257ECC4B0();
  v23(v7, v4);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v21 = sub_257ECC420();
  v11 = v9;
  v12 = v19;
  v19(v3, v11);
  sub_257ECC4E0();
  sub_257ECC4D0();
  (v10)(v7, v25, v4);
  sub_257ECC4B0();
  v23(v7, v4);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v13 = sub_257ECC420();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7920);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257EDBBA0;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_257ECC410();

  return v16;
}

uint64_t sub_257CF87B8()
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78F8);
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = v17 - v1;
  v3 = sub_257ECC400();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7900);
  MEMORY[0x28223BE20](v7);
  sub_257CF9810();
  sub_257ECC4E0();
  sub_257ECC4D0();
  v20 = *MEMORY[0x277CB9F50];
  v19 = *(v4 + 104);
  v17[0] = v3;
  v19(v6);
  sub_257ECC4B0();
  v8 = *(v4 + 8);
  v17[1] = v4 + 8;
  v18 = v8;
  v8(v6, v3);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v22 = sub_257ECC420();
  v9 = *(v0 + 8);
  v10 = v23;
  v9(v2, v23);
  sub_257ECC4A0();
  v21 = sub_257ECC420();
  v9(v2, v10);
  sub_257ECC4E0();
  sub_257ECC4D0();
  v11 = v17[0];
  (v19)(v6, v20, v17[0]);
  sub_257ECC4B0();
  v18(v6, v11);
  sub_257ECC4D0();
  sub_257ECC4F0();
  v12 = sub_257ECC420();
  v9(v2, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7908);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257EDBBA0;
  v14 = v21;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  *(v13 + 48) = v12;
  v15 = sub_257ECC410();

  return v15;
}

uint64_t sub_257CF8BBC()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8C40()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8CC4()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8D48()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8DCC()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8E50()
{
  v0 = sub_257ECC440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  *(v1 + 32) = v0;
  v2 = sub_257ECC430();

  return v2;
}

uint64_t sub_257CF8EF0()
{
  v0 = sub_257ECC520();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18) = 0;
  v18 = sub_257C7B3C8(&v18);
  sub_257C7B704();
  sub_257ECC530();
  v17 = sub_257ECC510();
  v4 = *(v1 + 8);
  v4(v3, v0);
  LOBYTE(v18) = 1;
  v18 = sub_257C7B3C8(&v18);
  sub_257ECC530();
  v16 = sub_257ECC510();
  v4(v3, v0);
  LOBYTE(v18) = 3;
  v18 = sub_257C7B3C8(&v18);
  sub_257ECC530();
  v15 = sub_257ECC510();
  v4(v3, v0);
  LOBYTE(v18) = 2;
  v18 = sub_257C7B3C8(&v18);
  sub_257ECC530();
  v5 = sub_257ECC510();
  v4(v3, v0);
  sub_257CE5428();
  sub_257ECC530();
  v6 = sub_257ECC510();
  v4(v3, v0);
  sub_257CF9714();
  sub_257ECC530();
  v7 = sub_257ECC510();
  v4(v3, v0);
  v18 = sub_257D7E0D4();
  sub_257CF9768();
  sub_257ECC530();
  v8 = sub_257ECC510();
  v4(v3, v0);
  sub_257CF97BC();
  sub_257ECC530();
  v9 = sub_257ECC510();
  v4(v3, v0);
  sub_257CF9810();
  sub_257ECC530();
  v10 = sub_257ECC510();
  v4(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257EDB2E0;
  v12 = v16;
  *(v11 + 32) = v17;
  *(v11 + 40) = v12;
  *(v11 + 48) = v15;
  *(v11 + 56) = v5;
  *(v11 + 64) = v6;
  *(v11 + 72) = v7;
  *(v11 + 80) = v8;
  *(v11 + 88) = v9;
  *(v11 + 96) = v10;
  v13 = sub_257ECC500();

  return v13;
}

uint64_t sub_257CF9410()
{
  v0 = sub_257ECC3E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C7B704();
  sub_257ECC3D0();
  v4 = sub_257ECC3C0();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_257CE5428();
  sub_257ECC3D0();
  v6 = sub_257ECC3C0();
  v5(v3, v0);
  sub_257CF9714();
  sub_257ECC3D0();
  v7 = sub_257ECC3C0();
  v5(v3, v0);
  sub_257CF9768();
  sub_257ECC3D0();
  v8 = sub_257ECC3C0();
  v5(v3, v0);
  sub_257CF97BC();
  sub_257ECC3D0();
  v9 = sub_257ECC3C0();
  v5(v3, v0);
  sub_257CF9810();
  sub_257ECC3D0();
  v10 = sub_257ECC3C0();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F78E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257EE23E0;
  *(v11 + 32) = v4;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  *(v11 + 72) = v10;
  v12 = sub_257ECC3B0();

  return v12;
}

unint64_t sub_257CF9714()
{
  result = qword_27F8F78C8;
  if (!qword_27F8F78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F78C8);
  }

  return result;
}

unint64_t sub_257CF9768()
{
  result = qword_27F8F78D0;
  if (!qword_27F8F78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F78D0);
  }

  return result;
}

unint64_t sub_257CF97BC()
{
  result = qword_27F8F78D8;
  if (!qword_27F8F78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F78D8);
  }

  return result;
}

unint64_t sub_257CF9810()
{
  result = qword_281545A90;
  if (!qword_281545A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545A90);
  }

  return result;
}

unint64_t sub_257CF9864()
{
  result = qword_27F8F7928;
  if (!qword_27F8F7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7928);
  }

  return result;
}

id sub_257CF98BC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_config + 8);
    v6 = objc_allocWithZone(type metadata accessor for RoundButton());
    v7 = v4;
    v8 = v0;
    v9 = sub_257D47B08(v7, v5);
    v10 = *(v0 + v1);
    *(v8 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_257CF994C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label);
  }

  else
  {
    v4 = sub_257CF99B0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257CF99B0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control) == 7)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_257ECF4C0();
    v6 = sub_257ECF4C0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    if (!v7)
    {
      sub_257ECF500();
      v7 = sub_257ECF4C0();
    }

    [v2 setText_];
  }

  [v2 setTextAlignment_];
  [v2 setAlpha_];
  v8 = [objc_opt_self() systemFontOfSize_];
  [v2 setFont_];

  return v2;
}

id sub_257CF9B6C()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control] == 7)
  {
    v2 = sub_257CF98BC();
    sub_257D14A40();
    v3 = sub_257ECF4C0();

    [v2 setAccessibilityLabel_];

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_257ECF500();
    v9 = sub_257ECF4C0();

    [v1 setAccessibilityHint_];

    sub_257BD2C2C(0, &qword_281543E70);
    v10 = sub_257ECF7F0();
    [v1 setAccessibilityCustomActions_];
  }

  v11 = v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed];
  v12 = *MEMORY[0x277D76580];
  v13 = [v1 accessibilityTraits];
  if (v11)
  {
    v14 = v13 | v12;
  }

  else
  {
    v14 = v13 & ~v12;
  }

  [v1 setAccessibilityTraits_];
  v15 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  LODWORD(v15) = v1[v15];
  v16 = *MEMORY[0x277D76598];
  v17 = [v1 accessibilityTraits];
  if (v15)
  {
    v18 = v17 | v16;
  }

  else
  {
    v18 = v17 & ~v16;
  }

  [v1 setAccessibilityTraits_];
  return [v1 setAccessibilityTraits_];
}

id sub_257CF9E28(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_257CF994C();
  v5 = v4;
  v6 = 0.0;
  if (*(v1 + v3) == 1)
  {
    v6 = 1.0;
    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed))
    {
      v6 = 0.25;
    }
  }

  [v4 setAlpha_];

  return sub_257CF9B6C();
}

void (*sub_257CF9EC4(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_257CF9F4C;
}

void sub_257CF9F4C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_257CF994C();
    v7 = v6;
    v8 = 0.0;
    if (*(v4 + v5) == 1)
    {
      v8 = 1.0;
      if (*(v3[3] + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed))
      {
        v8 = 0.25;
      }
    }

    [v6 setAlpha_];

    sub_257CF9B6C();
  }

  free(v3);
}

id sub_257CF9FEC()
{
  v1 = sub_257CF994C();
  v2 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (v0[v2] == 1)
  {
    v3 = 1.0;
    if (v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed])
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  sub_257CFA0D8();
  sub_257CF9B6C();
  v4 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label;
  v5 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label] setEnabled_];
  [*&v0[v4] setUserInteractionEnabled_];
  return [v0 setUserInteractionEnabled_];
}

void sub_257CFA0D8()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed] == 1)
  {
    v1 = [objc_opt_self() whiteColor];
    v2 = [v0 traitCollection];
    v6 = sub_257C1C83C(v1, v2);
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing];
    v4 = objc_opt_self();
    if (v3 == 1)
    {
      v5 = [v4 systemYellowColor];
    }

    else
    {
      v5 = [v4 whiteColor];
    }

    v6 = v5;
  }

  [v0 setTintColor_];
}

void sub_257CFA1E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = *a1;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_freezeFrameReviewSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuButtonSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuOptionsSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_detectionModeSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_glowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_cameraMenu] = 0;
  v9 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_availableCameraTypes;
  *&v3[v9] = sub_257CA930C();
  v10 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable;
  v3[v10] = sub_257CA9238();
  v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu] = 1;
  v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control] = v8;
  v11 = &v3[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_config];
  *v11 = a2;
  v11[1] = a3;
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_257CFA468();
  sub_257CFA754();
  v13 = [objc_allocWithZone(MEMORY[0x277D75E40]) initWithDelegate_];
  v14 = *&v12[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction];
  *&v12[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction] = v13;

  if (v13)
  {
    v15 = v12;
    [v15 addInteraction_];
    if (v8 == 7)
    {
      if (v15[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable])
      {
        v16 = 1;
      }

      else
      {
        v17 = sub_257CA930C();
        v16 = sub_257C592D0(7u, v17);
      }

      v15[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu] = v16;
    }

    [v15 setShowsLargeContentViewer_];

    [v15 setScalesLargeContentImage_];
    v18 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
    [v15 addInteraction_];
  }

  else
  {
    __break(1u);
  }
}

id sub_257CFA468()
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
  v4 = sub_257CF98BC();
  [v4 setImage:v3 forState:0];

  v5 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  v1[v5] = 0;
  v6 = sub_257CF994C();
  v7 = v6;
  v8 = 0.0;
  if (v1[v5] == 1)
  {
    v8 = 1.0;
    if (v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed])
    {
      v8 = 0.25;
    }
  }

  [v6 setAlpha_];

  sub_257CF9B6C();
  v9 = [v1 layer];
  [v9 setCornerRadius_];

  v10 = [v1 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v10 setCornerCurve_];

  v11 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton;
  v12 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton] layer];
  [v12 setCornerRadius_];

  [*&v1[v11] addTarget:v1 action:sel_didTap_ forControlEvents:64];
  if (v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu] == 1)
  {
    sub_257CFB280();
  }

  v13 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label] setAlpha_];
  [v1 addSubview_];
  [v1 addSubview_];
  return sub_257CFB7D8();
}

uint64_t sub_257CFA754()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v58 = v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = v37 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A48);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40);
  MEMORY[0x28223BE20](v10);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6F80);
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A50);
  result = MEMORY[0x28223BE20](v16);
  v20 = v37 - v19;
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control) == 7)
  {
    v44 = v18;
    v46 = v3;
    v47 = v2;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
    v42 = v12;
    sub_257ECDD30();
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
    sub_257ECDD30();
    swift_endAccess();
    v49 = MEMORY[0x277CBCEC8];
    v43 = sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
    sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40);
    sub_257ECDC50();
    v41 = objc_opt_self();
    v21 = [v41 mainRunLoop];
    v60 = v21;
    v38 = sub_257ED0080();
    v22 = *(v38 - 8);
    v39 = *(v22 + 56);
    v40 = v22 + 56;
    v23 = v52;
    v39(v52, 1, 1, v38);
    v37[1] = sub_257BD2C2C(0, &unk_281543D40);
    sub_257BD2D4C(&qword_2815444A0, &qword_27F8F6F80);
    v37[0] = sub_257BD2C74();
    sub_257ECDDF0();
    sub_257BE4084(v23, &unk_27F8F4DB0);

    (*(v48 + 8))(v15, v13);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&qword_281544210, &unk_27F8F7A50);
    v24 = sub_257ECDE50();

    (*(v44 + 8))(v20, v16);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_freezeFrameReviewSubscription) = v24;

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0);
    v25 = v50;
    sub_257ECDD30();
    swift_endAccess();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_281544180, &qword_27F8F7A48);
    v26 = v53;
    v27 = sub_257ECDE50();

    (*(v51 + 8))(v25, v26);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuButtonSubscription) = v27;

    swift_beginAccess();
    v28 = v42;
    sub_257ECDD30();
    swift_endAccess();
    v29 = [v41 mainRunLoop];
    v60 = v29;
    v39(v23, 1, 1, v38);
    v30 = v55;
    v31 = v59;
    sub_257ECDDF0();
    sub_257BE4084(v23, &unk_27F8F4DB0);

    (*(v54 + 8))(v28, v31);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
    v32 = v57;
    v33 = sub_257ECDE50();

    (*(v56 + 8))(v30, v32);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_detectionModeSubscription) = v33;

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A70);
    v34 = v58;
    sub_257ECDD30();
    swift_endAccess();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&qword_27F8F7A78, &unk_27F8F7A38);
    v35 = v47;
    v36 = sub_257ECDE50();

    (*(v46 + 8))(v34, v35);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuOptionsSubscription) = v36;
  }

  return result;
}

void sub_257CFB280()
{
  v29 = MEMORY[0x277D84F90];
  if (v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control] == 7)
  {
    v1 = v0;
    v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_availableCameraTypes];
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_257BD2C2C(0, &unk_281543D90);
      v27 = *MEMORY[0x277CE5890];
      v26 = *MEMORY[0x277CE5EA8];

      v4 = 32;
      do
      {
        v5 = *(v2 + v4);
        if (v5 == 7 && (v6 = [objc_opt_self() defaultDeviceWithDeviceType:v27 mediaType:v26 position:0]) != 0)
        {
          v7 = v6;
          v8 = [v6 localizedName];
          sub_257ECF500();
        }

        else
        {
          sub_257CA8200();
        }

        sub_257CA837C(v5);
        v9 = swift_allocObject();
        *(v9 + 16) = v5;
        *(v9 + 24) = v1;
        v10 = v1;
        v11 = sub_257ECFF90();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v12 = qword_2815447E0;

        if (v12 != -1)
        {
          v13 = swift_once();
        }

        MEMORY[0x28223BE20](v13);
        sub_257ECFD50();

        [v11 setState_];
        v14 = v11;
        MEMORY[0x259C72300]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_257ECF830();
        }

        sub_257ECF860();

        ++v4;
        --v3;
      }

      while (v3);
      v15 = v29;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v18 = sub_257ECF4C0();
    v19 = sub_257ECF4C0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    sub_257ECF500();
    if (sub_257C7C40C(v15) >> 62)
    {
      sub_257BD2C2C(0, &unk_281543F80);
      sub_257ED0420();
    }

    else
    {

      sub_257ED0660();
      sub_257BD2C2C(0, &unk_281543F80);
    }

    sub_257BD2C2C(0, qword_281543E10);
    v21 = sub_257ECFEA0();
    v22 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_cameraMenu;
    v23 = *&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_cameraMenu];
    *&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_cameraMenu] = v21;

    v24 = sub_257CF98BC();
    v25 = *&v1[v22];
    [v24 setMenu_];

    [*&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton] setShowsMenuAsPrimaryAction_];
  }
}

id sub_257CFB7D8()
{
  v1 = v0;
  v2 = sub_257CF994C();
  [v2 setIsAccessibilityElement_];

  v3 = sub_257CF98BC();
  [v3 setIsAccessibilityElement_];

  v4 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton;
  v5 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control;
  v6 = *&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton];
  sub_257D14A40();
  v7 = sub_257ECF4C0();

  [v6 setAccessibilityLabel_];

  v8 = *&v1[v4];
  Control.rawValue.getter();
  v9 = v1;
  v10 = v8;
  v11 = sub_257ECF4C0();

  [v10 setAccessibilityIdentifier_];

  if (v9[v5] == 7)
  {
    v12 = *&v9[v4];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();
    v15 = v12;
    v16 = [v14 bundleForClass_];
    v17 = sub_257ECF4C0();
    v18 = sub_257ECF4C0();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    sub_257ECF500();
    v20 = sub_257ECF4C0();

    [v15 setAccessibilityHint_];
  }

  v21 = *MEMORY[0x277D765A0];
  v22 = *&v9[v4];
  [v22 setAccessibilityTraits_];

  [v9 setAccessibilityTraits_];

  return sub_257CF9B6C();
}

void sub_257CFBAB0()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = *(v4 + 40);
  v11 = v10(v3, v4);
  v12 = v10(v3, v4);
  v13 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    v14 = (v9 - v11) * 0.5;
    v15 = sub_257CA9B90();
    v16 = sub_257CA9B88();
    [v1 bounds];
    v18 = v17 - v6 - v15 - v16;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v6;
    v23.size.height = v7;
    v19 = v15 + CGRectGetMaxX(v23);
  }

  else
  {
    v12 = v7;
    v18 = v6;
    v14 = 0.0;
    v19 = 0.0;
  }

  v20 = sub_257CF98BC();
  [v20 setFrame_];

  v21 = sub_257CF994C();
  [v21 setFrame_];

  sub_257CFBCB0();
}

void sub_257CFBCB0()
{
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control) == 7)
  {
    v1 = v0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable) != 1)
    {
      goto LABEL_12;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_2815447E0;

    if (v2 != -1)
    {
      v3 = swift_once();
    }

    MEMORY[0x28223BE20](v3);
    sub_257ECFD50();

    if (v18 == 3)
    {
      v5 = sub_257ECF4C0();
      v6 = objc_opt_self();
      v7 = [v6 systemImageNamed_];

      if (v7)
      {
      }

      v16 = sub_257ECF4C0();
      v17 = [v6 systemImageNamed_];

      v12 = sub_257CF98BC();
      [v12 setImage:v17 forState:0];

      goto LABEL_21;
    }

    MEMORY[0x28223BE20](v4);

    sub_257ECFD50();

    if (v18 == 4)
    {
      v8 = sub_257D14B7C();
    }

    else
    {
LABEL_12:
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = qword_2815447E0;

      if (v9 != -1)
      {
        v10 = swift_once();
      }

      MEMORY[0x28223BE20](v10);
      sub_257ECFD50();

      if (v19 != 7)
      {
        v13 = sub_257D14B7C();
        v14 = sub_257CF98BC();
        [v14 setImage:v13 forState:0];

        v15 = 0;
LABEL_22:
        *(v1 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing) = v15;
        sub_257CFA0D8();
        return;
      }

      v11 = sub_257ECF4C0();
      v8 = [objc_opt_self() systemImageNamed_];
    }

    v12 = sub_257CF98BC();
    [v12 setImage:v8 forState:0];

LABEL_21:
    v15 = 1;
    goto LABEL_22;
  }
}

void sub_257CFC1BC()
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

    v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed] = v2;
    sub_257CF9FEC();
  }
}

uint64_t sub_257CFC2A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v6 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v9 = sub_257ECFD30();
  aBlock[4] = sub_257CFE8E4;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_44;
  v10 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v8, v5, v10);
  _Block_release(v10);

  (*(v13 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v12);
}

void sub_257CFC554()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_257CFBCB0();
    sub_257CFB280();
  }
}

void sub_257CFC5AC()
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

    v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed] = v2;
    sub_257CF9FEC();
  }
}

uint64_t sub_257CFC694(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v6 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v9 = sub_257ECFD30();
  aBlock[4] = sub_257CFE8B8;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_24;
  v10 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v8, v5, v10);
  _Block_release(v10);

  (*(v13 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v12);
}

void sub_257CFC944()
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

    v2 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_availableCameraTypes;
    *&v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_availableCameraTypes] = v4;

    v3 = (v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable] & 1) != 0 || sub_257C592D0(7u, *&v1[v2]);
    v1[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu] = v3;
    sub_257CFBCB0();
    sub_257CFB280();
  }
}

void sub_257CFCA6C(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v18)
  {
    if (![v18 isRunning])
    {
LABEL_17:

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    v5 = sub_257ECDD70();
    sub_257CFB280(v5);
    switch(a2)
    {
      case 7:
        v13 = sub_257ECF4C0();
        v14 = [objc_opt_self() systemImageNamed_];

        v15 = sub_257CF98BC();
        [v15 setImage:v14 forState:0];

        *(a3 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing) = 1;
        break;
      case 4:
        if (*(a3 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable) == 1)
        {
          v9 = sub_257D14B7C();
          v10 = sub_257CF98BC();
          [v10 setImage:v9 forState:0];

LABEL_15:
          *(a3 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing) = 1;
          break;
        }

        break;
      case 3:
        v6 = sub_257ECF4C0();
        v7 = objc_opt_self();
        v8 = [v7 systemImageNamed_];

        if (v8)
        {
        }

        v16 = sub_257ECF4C0();
        v17 = [v7 systemImageNamed_];

        v10 = sub_257CF98BC();
        [v10 setImage:v17 forState:0];

        goto LABEL_15;
      default:
        v11 = sub_257D14B7C();
        v12 = sub_257CF98BC();
        [v12 setImage:v11 forState:0];

        *(a3 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing) = 0;
        break;
    }

    sub_257CFA0D8();
    goto LABEL_17;
  }
}

void sub_257CFCE0C()
{
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control) == 7)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v1)
    {
      if ([v1 isRunning])
      {
        if ((*(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu) & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          sub_257ECDD70();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          sub_257ECDD70();
        }
      }
    }
  }
}

id sub_257CFD0AC()
{
  ObjectType = swift_getObjectType();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_257D53928();
  v3 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control;
  v4 = sub_257C3EF48(v0[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control], v2);

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

uint64_t sub_257CFD300()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_257CFD348(uint64_t **a1))(void *a1)
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
  v2[4] = sub_257CF9EC4(v2);
  return sub_257CA4CF4;
}

uint64_t sub_257CFD3F0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_257CF9B6C();

  return swift_unknownObjectRelease();
}

uint64_t sub_257CFD440()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257CF98BC();
  return v0;
}

uint64_t sub_257CFD524()
{
  result = 0;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_control) == 7)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_2815447E0;

    if (v2 != -1)
    {
      v3 = swift_once();
    }

    MEMORY[0x28223BE20](v3);
    sub_257ECFD50();

    return sub_257CA8200();
  }

  return result;
}

id sub_257CFD6DC()
{
  sub_257D14A40();
  v0 = sub_257ECF4C0();

  return v0;
}

void sub_257CFD804(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction;
  v9 = *&v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction];
  if (v9)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0);
    v10 = v9;
    v11 = a1;
    v12 = sub_257ECFF50();

    if (v12)
    {
      v13 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
      swift_beginAccess();
      v14 = v2[v13];
      sub_257ECD350();
      v15 = v2;
      v16 = sub_257ECDA20();
      v17 = sub_257ECFBD0();
      if (os_log_type_enabled(v16, v17))
      {
        v29 = v15;
        v18 = v14 ^ 1;
        v19 = swift_slowAlloc();
        v28 = v14;
        v20 = v19;
        *v19 = 67109632;
        *(v19 + 4) = v18;
        v15 = v29;
        *(v19 + 8) = 1024;
        *(v19 + 10) = v2[v13];
        *(v19 + 14) = 1024;
        *(v19 + 16) = *(&v15->isa + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v16, v17, "should begin: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v20, 0x14u);
        v21 = v20;
        v14 = v28;
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
            sub_257CFE6C4(1);

            if (*&v2[v8])
            {
              [v15 removeInteraction:?];
              v25 = [objc_allocWithZone(MEMORY[0x277D75E40]) initWithDelegate_];
              v26 = *&v2[v8];
              *&v2[v8] = v25;

              if (v25)
              {
                [v15 addInteraction:v25];
                return;
              }

LABEL_17:
              __break(1u);
              return;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_16;
      }
    }
  }
}

void sub_257CFDB30(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction;
  v12 = *&v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction];
  if (v12)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0);
    v13 = v12;
    v14 = a1;
    v15 = sub_257ECFF50();

    if (v15)
    {
      if ((v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed] & 1) == 0)
      {
        sub_257ECD350();
        v21 = sub_257ECDA20();
        v24 = sub_257ECFBD0();
        if (!os_log_type_enabled(v21, v24))
        {
          goto LABEL_16;
        }

        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_257BAC000, v21, v24, "will present", v23, 2u);
        goto LABEL_13;
      }

      v16 = *&v2[v11];
      if (v16)
      {
        [v16 cancelInteraction];
        v17 = *&v2[v11];
        if (v17)
        {
          v18 = v17;
          sub_257CFE6C4(1);

          if (*&v2[v11])
          {
            [v2 removeInteraction_];
            v19 = [objc_allocWithZone(MEMORY[0x277D75E40]) initWithDelegate_];
            v20 = *&v2[v11];
            *&v2[v11] = v19;

            if (v19)
            {
              [v2 addInteraction_];
              sub_257ECD350();
              v21 = sub_257ECDA20();
              v22 = sub_257ECFBD0();
              if (!os_log_type_enabled(v21, v22))
              {
                v10 = v8;
                goto LABEL_16;
              }

              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&dword_257BAC000, v21, v22, "will not present", v23, 2u);
              v10 = v8;
LABEL_13:
              MEMORY[0x259C74820](v23, -1, -1);
LABEL_16:

              (*(v5 + 8))(v10, v4);
              return;
            }

            goto LABEL_20;
          }

LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }
  }
}

id sub_257CFDEF8(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction];
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
    v20 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
    swift_beginAccess();
    LODWORD(v20) = v12[v20];

    *(v15 + 14) = v20;
    *(v15 + 18) = 1024;
    v21 = v12[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed];

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

uint64_t sub_257CFE284@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257CFE304()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257CFE380()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_freezeFrameReviewSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuButtonSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_menuOptionsSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_detectionModeSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_glowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_cameraMenu) = 0;
  v1 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_availableCameraTypes;
  *(v0 + v1) = sub_257CA930C();
  v2 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isMacroAvailable;
  *(v0 + v2) = sub_257CA9238();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_shouldShowMenu) = 1;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257CFE4BC(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport10MenuButton_clickInteraction];
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
        v16 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
        swift_beginAccess();
        *(v15 + 4) = *(&v12->isa + v16);
        *(v15 + 8) = 1024;
        *(v15 + 10) = *(&v12->isa + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v13, v14, "expanded: %{BOOL}d, dimmed: %{BOOL}d", v15, 0xEu);
        MEMORY[0x259C74820](v15, -1, -1);
      }

      else
      {

        v13 = v12;
      }

      (*(v5 + 8))(v7, v4);
    }
  }

  return 0;
}

uint64_t sub_257CFE6C4(char a1)
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
    v11 = OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isExpanded;
    swift_beginAccess();
    *(v10 + 10) = *(&v7->isa + v11);
    *(v10 + 14) = 1024;
    *(v10 + 16) = *(&v7->isa + OBJC_IVAR____TtC16MagnifierSupport10MenuButton_isDimmed);

    _os_log_impl(&dword_257BAC000, v8, v9, "was cancelled: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v10, 0x14u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t type metadata accessor for MFReaderModeHostingController()
{
  result = qword_27F8F7A80;
  if (!qword_27F8F7A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257CFE9FC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MAGThermalMonitor.thermalEvents()@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v70 = *MEMORY[0x277D85DE8];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A90);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v43 - v1;
  v56 = sub_257ECFE60();
  MEMORY[0x28223BE20](v56);
  v55 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_257ECFD20();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECF190();
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A98);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v15;
  v57 = v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5D80);
  v60 = *(v18 - 8);
  v61 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  (*(v8 + 104))(v10, *MEMORY[0x277D85778], v7);
  v58 = v20;
  sub_257ECF940();
  (*(v8 + 8))(v10, v7);
  out_token = -1;
  v21 = swift_allocObject();
  *(v21 + 16) = -1;
  v47 = (v21 + 16);
  v22 = *(v12 + 16);
  v22(v15, v17, v11);
  v23 = *(v12 + 80);
  v49 = swift_allocObject();
  v62 = v12;
  v24 = *(v12 + 32);
  v25 = v50;
  v24(v49 + ((v23 + 16) & ~v23), v50, v11);
  v59 = v17;
  v22(v25, v17, v11);
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  v50 = v11;
  v24(v26 + ((v23 + 24) & ~v23), v25, v11);
  sub_257CFF978();
  v57 = v21;
  sub_257ECC3F0();
  sub_257ECF160();
  (*(v53 + 104))(v52, *MEMORY[0x277D85268], v54);
  aBlock = MEMORY[0x277D84F90];
  sub_257CFF9C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7458);
  sub_257CD58DC();
  sub_257ED0180();
  v27 = v49;
  v28 = sub_257ECFE70();
  v29 = *MEMORY[0x277D85E40];
  v68 = sub_257CFF6A4;
  v69 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_257CFFA1C;
  v67 = &block_descriptor_25;
  v30 = _Block_copy(&aBlock);
  v31 = v28;
  sub_257ECC3F0();

  LODWORD(v29) = notify_register_dispatch(v29, &out_token, v31, v30);
  _Block_release(v30);
  if (v29)
  {

LABEL_4:
    sub_257CFFA88();
    swift_allocError();
    swift_willThrow();

    (*(v62 + 8))(v59, v50);
    (*(v60 + 8))(v58, v61);
  }

  v32 = v48;
  v33 = *MEMORY[0x277D85E48];
  v68 = sub_257CFF8F8;
  v69 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_257CFFA1C;
  v67 = &block_descriptor_9;
  v34 = _Block_copy(&aBlock);
  sub_257ECC3F0();

  v35 = v47;
  swift_beginAccess();
  LODWORD(v33) = notify_register_dispatch(v33, v35, v31, v34);
  swift_endAccess();
  _Block_release(v34);

  if (v33)
  {
    goto LABEL_4;
  }

  v37 = out_token;
  v38 = *(v57 + 16);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 20) = v38;
  v40 = v50;
  v41 = v59;
  sub_257ECF950();
  v42 = OSThermalNotificationCurrentLevel();
  BYTE4(aBlock) = 0;
  LODWORD(aBlock) = v42;
  sub_257ECF960();

  (*(v44 + 8))(v32, v45);
  (*(v62 + 8))(v41, v40);
  (*(v60 + 32))(v46, v58, v61);
}

_DWORD *sub_257CFF434@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t MAGThermalMonitor.ThermalPressure.description.getter()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    v2 = 0x6C616E696D6F4ELL;
    v3 = 0x7976616548;
    v4 = 0x676E697070617254;
    if (v1 != 4)
    {
      v4 = 0x676E697065656C53;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x746867694CLL;
    if (v1 != 1)
    {
      v5 = 0x6574617265646F4DLL;
    }

    if (v1)
    {
      v2 = v5;
    }

    if (v1 <= 2)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v7 = sub_257ED0600();
    MEMORY[0x259C72150](v7);

    MEMORY[0x259C72150](41, 0xE100000000000000);
    return 0x206E776F6E6B6E55;
  }
}

uint64_t sub_257CFF5AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A90);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v4 = OSThermalNotificationCurrentLevel();
  v7 = 0;
  v6[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0);
  sub_257ECF960();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_257CFF6A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0);

  return sub_257CFF5AC();
}

uint64_t sub_257CFF720(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &state64 - v5;
  state64 = 0;
  swift_beginAccess();
  notify_get_state(*(a2 + 16), &state64);
  v7 = state64;
  if (HIDWORD(state64))
  {
    __break(1u);
  }

  if (state64 <= 19)
  {
    if (!state64)
    {
      v8 = 0x100000000;
      goto LABEL_14;
    }

    if (state64 == 10)
    {
      v8 = 0x100000000;
      v7 = 1;
      goto LABEL_14;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (state64 == 20)
  {
    v8 = 0x100000000;
    v7 = 2;
    goto LABEL_14;
  }

  if (state64 == 40)
  {
    v8 = 0x100000000;
    v7 = 4;
    goto LABEL_14;
  }

  if (state64 != 50)
  {
    goto LABEL_13;
  }

  v8 = 0x100000000;
  v7 = 5;
LABEL_14:
  v9 = v8 | v7;
  v12 = v9;
  v13 = (v9 | 0x8000000000uLL) >> 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0);
  sub_257ECF960();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_257CFF8F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AA0);
  v3 = *(v1 + 16);

  return sub_257CFF720(a1, v3);
}

unint64_t sub_257CFF978()
{
  result = qword_27F8F7AA8;
  if (!qword_27F8F7AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F7AA8);
  }

  return result;
}

unint64_t sub_257CFF9C4()
{
  result = qword_27F8F7450;
  if (!qword_27F8F7450)
  {
    sub_257ECFE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7450);
  }

  return result;
}

uint64_t sub_257CFFA1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v3(a2);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257CFFA88()
{
  result = qword_27F8F7AB0;
  if (!qword_27F8F7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7AB0);
  }

  return result;
}

uint64_t sub_257CFFADC()
{
  v1 = *(v0 + 20);
  notify_cancel(*(v0 + 16));

  return notify_cancel(v1);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MAGThermalMonitor.ThermalPressure(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MAGThermalMonitor.ThermalPressure(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_257CFFBEC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_257CFFC08(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MAGThermalMonitor.ThermalEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 5))
  {
    return (*a1 + 127);
  }

  v3 = ((*(a1 + 4) >> 7) & 0xFFFFFF81 | (2 * ((*(a1 + 4) >> 1) & 0x3F))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MAGThermalMonitor.ThermalEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 4) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_257CFFD48()
{
  result = qword_27F8F7AB8;
  if (!qword_27F8F7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7AB8);
  }

  return result;
}

uint64_t static ActivitySymbolSource.firstAvailableSymbol(excluding:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 <= 0x2B)
  {
    v5 = 43;
  }

  else
  {
    v5 = v2;
  }

  while (v2 != v5)
  {
    v6 = &unk_286905000 + 16 * v2;
    v8 = *(v6 + 4);
    v7 = *(v6 + 5);
    ++v2;
    if (!*(v1 + 16))
    {

LABEL_16:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BF26A4(0, v4[2] + 1, 1);
      }

      v16 = v4[2];
      v15 = v4[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_257BF26A4((v15 > 1), v16 + 1, 1);
      }

      v4[2] = v16 + 1;
      v17 = &v4[2 * v16];
      v17[4] = v8;
      v17[5] = v7;
      if (v2 == 43)
      {
LABEL_24:
        v18 = v4[4];

        goto LABEL_26;
      }

      goto LABEL_2;
    }

    sub_257ED07B0();

    sub_257ECF5D0();
    v9 = sub_257ED0800();
    v10 = -1 << *(v1 + 32);
    v11 = v9 & ~v10;
    if (((*(v3 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }

    v12 = ~v10;
    while (1)
    {
      v13 = (*(v1 + 48) + 16 * v11);
      v14 = *v13 == v8 && v13[1] == v7;
      if (v14 || (sub_257ED0640() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v3 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v2 == 43)
    {
      if (v4[2])
      {
        goto LABEL_24;
      }

      v18 = 0;
LABEL_26:

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MAGVQATranscriptHostingController()
{
  result = qword_27F8F7AC0;
  if (!qword_27F8F7AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257D00094(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for MFReaderTextFormatterView()
{
  result = qword_27F8F7AD0;
  if (!qword_27F8F7AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257D00234()
{
  sub_257C09F4C();
  if (v0 <= 0x3F)
  {
    sub_257D00350();
    if (v1 <= 0x3F)
    {
      sub_257D00478(319, &qword_27F8F7AE8, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_257D003E4();
        if (v3 <= 0x3F)
        {
          sub_257C09FE0();
          if (v4 <= 0x3F)
          {
            sub_257D00478(319, &qword_27F8F6750, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_257D00350()
{
  if (!qword_27F8F7AE0)
  {
    type metadata accessor for MFReaderSpeechFormatterModel(255);
    sub_257D062A4(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel);
    v0 = sub_257ECE180();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F7AE0);
    }
  }
}

void sub_257D003E4()
{
  if (!qword_27F8F7AF0)
  {
    type metadata accessor for MFReaderBlockManager();
    sub_257D062A4(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
    v0 = sub_257ECE340();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F7AF0);
    }
  }
}

void sub_257D00478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_257D004E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MFReaderTextFormatterView();
  sub_257BE401C(v1 + *(v10 + 32), v9, &qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_257ECE1D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_257ECFBF0();
    v13 = sub_257ECE900();
    sub_257ECD960();

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_257D006F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B00);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B08);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B10);
  MEMORY[0x28223BE20](v7);
  v9 = (&v37 - v8);
  v45 = a1;
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257D062A4(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v43 = v53;
  v44 = v52;
  v42 = v54;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90);
  swift_storeEnumTagMultiPayload();
  v10 = v7[13];
  *(v9 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  swift_storeEnumTagMultiPayload();
  v11 = (v9 + v7[14]);
  *v11 = xmmword_257EDB760;
  v11[1] = xmmword_257EDB770;
  v12 = (v9 + v7[15]);
  v49 = 0;
  sub_257ECEE50();
  v13 = v51;
  *v12 = v50;
  v12[1] = v13;
  v14 = v9 + v7[16];
  LOBYTE(v49) = 0;
  sub_257ECEE50();
  v15 = v51;
  *v14 = v50;
  *(v14 + 1) = v15;
  v16 = (v9 + v7[17]);
  v49 = 0;
  sub_257ECEE50();
  v17 = v51;
  *v16 = v50;
  v16[1] = v17;
  v18 = (v9 + v7[18]);
  v49 = 0;
  sub_257ECEE50();
  v19 = v51;
  *v18 = v50;
  v18[1] = v19;
  v20 = v7[20];
  *(v9 + v20) = 2;
  v22 = v7[21];
  v21 = v7[22];
  v41 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B18);
  v24 = *(v23 - 8);
  v39 = *(v24 + 56);
  v40 = v24 + 56;
  v39(v9 + v21, 1, 1, v23);
  v25 = v7[23];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B20);
  v27 = *(*(v26 - 8) + 56);
  v27(v9 + v25, 1, 1, v26);
  v28 = v7[25];
  v29 = v9 + v7[24];
  v37 = (v9 + v7[26]);
  v38 = v28;
  *(v9 + v20) = 0;
  *(v9 + v22) = 0;
  v31 = v45;
  v30 = v46;
  sub_257D00C84(v45, v46);
  v27(v30, 0, 1, v26);
  sub_257C0DA64(v30, v9 + v25, &qword_27F8F7B08);
  v32 = v47;
  sub_257D04208(v31, v47);
  v39(v32, 0, 1, v23);
  sub_257C0DA64(v32, v9 + v41, &qword_27F8F7B00);
  v33 = v9 + v7[19];
  v34 = v43;
  *v33 = v44;
  *(v33 + 1) = v34;
  v33[16] = v42;
  *v29 = 0x4072C00000000000;
  v29[8] = 0;
  v35 = v37;
  *(v9 + v38) = 0;
  *v35 = 0;
  v35[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B28);
  sub_257BD2D4C(&qword_27F8F7B30, &qword_27F8F7B10);
  sub_257BD2D4C(&qword_27F8F7B38, &qword_27F8F7B28);
  sub_257ECECA0();
  return sub_257BE4084(v9, &qword_27F8F7B10);
}

uint64_t sub_257D00C84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C18);
  v3 = MEMORY[0x28223BE20](v165);
  v177 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v167 = (&v134 - v5);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C20);
  v6 = MEMORY[0x28223BE20](v164);
  v183 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v166 = (&v134 - v8);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C28);
  v9 = MEMORY[0x28223BE20](v163);
  v182 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v181 = (&v134 - v11);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C58) - 8;
  MEMORY[0x28223BE20](v159);
  v154 = &v134 - v12;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7738);
  v13 = MEMORY[0x28223BE20](v162);
  v176 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v161 = &v134 - v16;
  MEMORY[0x28223BE20](v15);
  v180 = &v134 - v17;
  v158 = sub_257ECE1D0();
  v156 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v155 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_257ECE840();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v140 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C30);
  MEMORY[0x28223BE20](v141);
  v138 = (&v134 - v20);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C38);
  v149 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v139 = &v134 - v21;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C40) - 8;
  MEMORY[0x28223BE20](v146);
  v144 = &v134 - v22;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C48) - 8;
  MEMORY[0x28223BE20](v151);
  v148 = &v134 - v23;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C50) - 8;
  v24 = MEMORY[0x28223BE20](v150);
  v175 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v145 = &v134 - v27;
  MEMORY[0x28223BE20](v26);
  v179 = &v134 - v28;
  v29 = type metadata accessor for MFMenuDivider();
  v30 = MEMORY[0x28223BE20](v29);
  v174 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = (&v134 - v32);
  v34 = type metadata accessor for MFReaderTextFormatterView();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34 - 8);
  v136 = v36;
  v37 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C58);
  v173 = *(v178 - 8);
  v38 = MEMORY[0x28223BE20](v178);
  v171 = &v134 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v134 - v40;
  v137 = type metadata accessor for MFReaderTextFormatterView;
  v134 = v37;
  sub_257D06030(a1, v37, type metadata accessor for MFReaderTextFormatterView);
  v42 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v43 = swift_allocObject();
  v135 = type metadata accessor for MFReaderTextFormatterView;
  sub_257D0623C(v37, v43 + v42, type metadata accessor for MFReaderTextFormatterView);
  v184 = a1;
  v44 = a1;
  v169 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C60);
  sub_257D05898(&qword_27F8F7C68, &qword_27F8F7C60, &unk_257EE2C40, sub_257D0591C);
  v170 = v41;
  sub_257ECEEA0();
  v153 = objc_opt_self();
  v45 = [v153 tertiarySystemBackgroundColor];
  v46 = sub_257ECED30();
  *v33 = swift_getKeyPath();
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90);
  swift_storeEnumTagMultiPayload();
  v47 = v29[5];
  *(v33 + v47) = swift_getKeyPath();
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  swift_storeEnumTagMultiPayload();
  v48 = v29[6];
  v49 = v29[7];
  v160 = v29;
  v50 = v29[8];
  *(v33 + v48) = 0x4020000000000000;
  *(v33 + v49) = 0x4072C00000000000;
  v172 = v33;
  *(v33 + v50) = v46;
  v51 = sub_257ECE500();
  v52 = v138;
  *v138 = v51;
  *(v52 + 8) = 0x4034000000000000;
  *(v52 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C90);
  *&v187 = &unk_2869052D0;
  swift_getKeyPath();
  v53 = v134;
  sub_257D06030(v44, v134, v137);
  v54 = swift_allocObject();
  sub_257D0623C(v53, v54 + v42, v135);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C98);
  sub_257BD2D4C(&qword_27F8F7CA0, &qword_27F8F5590);
  sub_257D05BBC();
  sub_257D05C10();
  sub_257ECEF80();
  v55 = v140;
  sub_257ECE830();
  v56 = sub_257BD2D4C(&qword_27F8F7D08, &qword_27F8F7C30);
  v57 = v139;
  v58 = v141;
  sub_257ECEC50();
  (*(v142 + 8))(v55, v143);
  sub_257BE4084(v52, &qword_27F8F7C30);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = [objc_opt_self() bundleForClass_];
  v61 = sub_257ECF4C0();
  v62 = sub_257ECF4C0();
  v63 = [v60 localizedStringForKey:v61 value:0 table:v62];

  v64 = v154;
  v65 = sub_257ECF500();
  v67 = v66;

  *&v187 = v65;
  *(&v187 + 1) = v67;
  *&v186 = v58;
  *(&v186 + 1) = v56;
  swift_getOpaqueTypeConformance2();
  sub_257BDAB08();
  v68 = v144;
  v69 = v147;
  sub_257ECEBF0();

  (*(v149 + 8))(v57, v69);
  v70 = sub_257ECE920();
  v71 = &v68[*(v146 + 44)];
  v72 = v68;
  *v71 = v70;
  *(v71 + 8) = 0u;
  *(v71 + 24) = 0u;
  v71[40] = 1;
  LOBYTE(v56) = sub_257ECE990();
  v73 = v155;
  sub_257D004E8(v155);
  sub_257ECE1C0();
  v74 = *(v156 + 8);
  v75 = v158;
  v74(v73, v158);
  sub_257ECDF40();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v148;
  sub_257C0DD14(v72, v148, &qword_27F8F7C40);
  v85 = v84 + *(v151 + 44);
  *v85 = v56;
  *(v85 + 8) = v77;
  *(v85 + 16) = v79;
  *(v85 + 24) = v81;
  *(v85 + 32) = v83;
  *(v85 + 40) = 0;
  v86 = v145;
  sub_257C0DD14(v84, v145, &qword_27F8F7C48);
  *(v86 + *(v150 + 44)) = 0x4008000000000000;
  sub_257C0DD14(v86, v179, &qword_27F8F7C50);
  sub_257ECEF70();
  v87 = sub_257ECED60();
  v88 = sub_257ECE930();
  v89 = v64 + *(v159 + 44);
  *v89 = v87;
  *(v89 + 8) = v88;
  sub_257D004E8(v73);
  LOBYTE(v84) = sub_257ECE1C0();
  v74(v73, v75);
  if (v84)
  {
    v90 = [objc_opt_self() mainScreen];
    [v90 bounds];
  }

  sub_257ECF060();
  sub_257ECE080();
  v91 = v161;
  sub_257C0DD14(v64, v161, &qword_27F8F5C58);
  v92 = (v91 + *(v162 + 36));
  v93 = v188;
  *v92 = v187;
  v92[1] = v93;
  v92[2] = v189;
  sub_257C0DD14(v91, v180, &qword_27F8F7738);
  KeyPath = swift_getKeyPath();
  v95 = type metadata accessor for MFReaderCustomFontPickerMenu();
  v96 = v181;
  *(v181 + *(v95 + 20)) = KeyPath;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257D062A4(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
  sub_257ECC3F0();
  *v96 = sub_257ECE150();
  v96[1] = v97;
  LOBYTE(KeyPath) = sub_257ECE920();
  v98 = v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D10) + 36);
  *v98 = KeyPath;
  *(v98 + 8) = 0u;
  *(v98 + 24) = 0u;
  v98[40] = 1;
  LOBYTE(KeyPath) = sub_257ECE990();
  sub_257ECDF40();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D18) + 36);
  *v107 = KeyPath;
  *(v107 + 1) = v100;
  *(v107 + 2) = v102;
  *(v107 + 3) = v104;
  *(v107 + 4) = v106;
  v107[40] = 0;
  *(v96 + *(v163 + 36)) = 0x4000000000000000;
  v108 = [v153 tertiarySystemBackgroundColor];
  v109 = sub_257ECED30();
  v110 = swift_getKeyPath();
  v111 = v166;
  *v166 = v110;
  swift_storeEnumTagMultiPayload();
  v112 = v160;
  v113 = v160[5];
  *(v111 + v113) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v114 = v112[7];
  v115 = v112[8];
  *(v111 + v112[6]) = 0x4020000000000000;
  *(v111 + v114) = 0x4072C00000000000;
  *(v111 + v115) = v109;
  *(v111 + *(v164 + 36)) = 0x4000000000000000;
  v116 = sub_257ECE500();
  v117 = v167;
  *v167 = v116;
  *(v117 + 8) = 0;
  *(v117 + 16) = 1;
  v118 = v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D20) + 44);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v119 = type metadata accessor for MFReaderDynamicTypeSizeStepper();
  v120 = v119[5];
  v185 = 0;
  sub_257ECEE50();
  *(v118 + v120) = v186;
  v121 = v119[6];
  *(v118 + v121) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v118 + v119[7]) = 0;
  *(v118 + v119[8]) = 11;
  LOBYTE(v118) = sub_257ECE920();
  v122 = v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D28) + 36);
  *v122 = v118;
  *(v122 + 8) = 0u;
  *(v122 + 24) = 0u;
  *(v122 + 40) = 1;
  *(v117 + *(v165 + 36)) = 0x3FF0000000000000;
  v123 = *(v173 + 16);
  v124 = v171;
  v123(v171, v170, v178);
  v125 = v174;
  sub_257D06030(v172, v174, type metadata accessor for MFMenuDivider);
  v126 = v175;
  sub_257BE401C(v179, v175, &qword_27F8F7C50);
  v127 = v176;
  sub_257BE401C(v180, v176, &qword_27F8F7738);
  sub_257BE401C(v181, v182, &qword_27F8F7C28);
  sub_257BE401C(v111, v183, &qword_27F8F7C20);
  sub_257BE401C(v117, v177, &qword_27F8F7C18);
  v128 = v168;
  v123(v168, v124, v178);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D30);
  sub_257D06030(v125, &v128[v129[12]], type metadata accessor for MFMenuDivider);
  sub_257BE401C(v126, &v128[v129[16]], &qword_27F8F7C50);
  sub_257BE401C(v127, &v128[v129[20]], &qword_27F8F7738);
  sub_257BE401C(v182, &v128[v129[24]], &qword_27F8F7C28);
  sub_257BE401C(v183, &v128[v129[28]], &qword_27F8F7C20);
  v130 = v177;
  sub_257BE401C(v177, &v128[v129[32]], &qword_27F8F7C18);
  sub_257BE4084(v117, &qword_27F8F7C18);
  sub_257BE4084(v111, &qword_27F8F7C20);
  sub_257BE4084(v181, &qword_27F8F7C28);
  sub_257BE4084(v180, &qword_27F8F7738);
  sub_257BE4084(v179, &qword_27F8F7C50);
  sub_257D06098(v172, type metadata accessor for MFMenuDivider);
  v131 = *(v173 + 8);
  v132 = v178;
  v131(v170, v178);
  sub_257BE4084(v130, &qword_27F8F7C18);
  sub_257BE4084(v183, &qword_27F8F7C20);
  sub_257BE4084(v182, &qword_27F8F7C28);
  sub_257BE4084(v176, &qword_27F8F7738);
  sub_257BE4084(v175, &qword_27F8F7C50);
  sub_257D06098(v174, type metadata accessor for MFMenuDivider);
  return (v131)(v171, v132);
}

uint64_t sub_257D022E4(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720);
  MEMORY[0x259C71A50](v34);
  if ((v34[0] & 1) == 0)
  {
    v30 = v9;
    v31 = v10;
    v32 = v11;
    sub_257ECC3F0();
    sub_257ECC3F0();
    MEMORY[0x259C71A50](&v36, v12);
    v34[0] = v9;
    v34[1] = v10;
    v35 = v11;
    v33 = (v36 & 1) == 0;
    sub_257ECEF40();
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    sub_257ECDD60();

    v15 = LOBYTE(v34[0]);
    v16 = sub_257ECF930();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_257ECF900();
    v17 = v14;
    v18 = sub_257ECF8F0();
    if (!v15)
    {
      v19 = swift_allocObject();
      v22 = MEMORY[0x277D85700];
      v19[2] = v18;
      v19[3] = v22;
      v19[4] = v17;
      v21 = &unk_257EE1470;
      goto LABEL_8;
    }

    if (v15 == 1)
    {
      v19 = swift_allocObject();
      v20 = MEMORY[0x277D85700];
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v17;
      v21 = &unk_257EE2E40;
LABEL_8:
      sub_257C3FBD4(0, 0, v8, v21, v19);

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v30) = 2;
      v23 = v17;
      sub_257ECDD70();
      sub_257CD1E08();
      sub_257DCD40C();
    }

    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    v25[2] = v18;
    v25[3] = v26;
    v25[4] = v17;
    sub_257C3FBD4(0, 0, v8, &unk_257EE2E48, v25);

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v27 = qword_281548350 + 208;
    swift_beginAccess();
    LOBYTE(v36) = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v28 = sub_257ECF110();
    MEMORY[0x28223BE20](v28);
    *(&v29 - 2) = &v36;
    *(&v29 - 1) = v27;
    sub_257ECFD40();
    (*(v3 + 8))(v5, v2);
    return swift_endAccess();
  }

  else
  {
    type metadata accessor for MFReaderBlockManager();
    sub_257D062A4(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

uint64_t sub_257D02800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_257ECE500();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D58);
  sub_257D028F4(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = sub_257ECE920();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C78) + 36);
  *v5 = a1;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  LOBYTE(a1) = sub_257ECE940();
  sub_257ECDF40();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C60);
  v15 = a2 + *(result + 36);
  *v15 = a1;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_257D028F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67E0);
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4960);
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v61 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6808);
  MEMORY[0x28223BE20](v63);
  v64 = &v61 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F67E8);
  v10 = MEMORY[0x28223BE20](v62);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v61 = &v61 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - v15;
  v17 = *(a1 + 56);
  if (v17)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;
    sub_257ECDD60();

    v70 = v12;
    v71 = a2;
    v68 = v7;
    v69 = v16;
    v67 = v4;
    if (v72)
    {
      v19 = sub_257ED0640();

      if ((v19 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v20 = v18;
        sub_257ECDD60();

        if (v72 && v72 == 1)
        {
        }

        else
        {
          sub_257ED0640();
        }
      }
    }

    else
    {
    }

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v23 = sub_257ECF4C0();
    v24 = sub_257ECF4C0();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v26 = sub_257ECF500();
    v28 = v27;

    v72 = v26;
    v73 = v28;
    sub_257BDAB08();
    v29 = sub_257ECEAF0();
    v31 = v30;
    v33 = v32;
    v72 = sub_257ECED90();
    v34 = sub_257ECEAB0();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_257C0300C(v29, v31, v33 & 1);

    v72 = v34;
    v73 = v36;
    v41 = v38 & 1;
    v74 = v38 & 1;
    v75 = v40;
    v42 = *MEMORY[0x277CDFA10];
    v43 = sub_257ECE1D0();
    (*(*(v43 - 8) + 104))(v6, v42, v43);
    sub_257D062A4(&qword_27F8F67F8, MEMORY[0x277CDFA28]);
    if (sub_257ECF450())
    {
      sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0);
      v44 = v65;
      sub_257ECEBB0();
      sub_257BE4084(v6, &qword_27F8F67E0);
      sub_257C0300C(v34, v36, v41);

      v45 = v64;
      (*(v66 + 32))(v64, v44, v68);
      *(v45 + *(v63 + 36)) = 256;
      KeyPath = swift_getKeyPath();
      v47 = v61;
      sub_257C0DD14(v45, v61, &qword_27F8F6808);
      v48 = v47 + *(v62 + 36);
      *v48 = KeyPath;
      *(v48 + 8) = 0;
      v49 = v69;
      sub_257C0DD14(v47, v69, &unk_27F8F67E8);
      v50 = sub_257ECEE10();
      sub_257ECEA30();
      sub_257ECE9F0();
      v51 = sub_257ECEA50();

      v52 = swift_getKeyPath();
      v53 = sub_257ECED90();
      v54 = swift_getKeyPath();
      v55 = v70;
      sub_257BE401C(v49, v70, &unk_27F8F67E8);
      v56 = v71;
      sub_257BE401C(v55, v71, &unk_27F8F67E8);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D60);
      v58 = v56 + *(v57 + 48);
      *v58 = 0;
      *(v58 + 8) = 1;
      v59 = (v56 + *(v57 + 64));
      *v59 = v50;
      v59[1] = v52;
      v59[2] = v51;
      v59[3] = v54;
      v59[4] = v53;
      sub_257ECC3F0();
      sub_257ECC3F0();
      sub_257ECC3F0();
      sub_257ECC3F0();
      sub_257ECC3F0();
      sub_257BE4084(v49, &unk_27F8F67E8);

      return sub_257BE4084(v55, &unk_27F8F67E8);
    }

    __break(1u);
  }

  type metadata accessor for MFReaderBlockManager();
  sub_257D062A4(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
  result = sub_257ECE320();
  __break(1u);
  return result;
}

uint64_t sub_257D03184@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v5 = type metadata accessor for MFReaderCustomThemeSelectionMenu(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7CF8);
  MEMORY[0x28223BE20](v71);
  v9 = &v53 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D38);
  MEMORY[0x28223BE20](v69);
  v70 = &v53 - v10;
  v61 = sub_257ECE5A0();
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_257ECE750();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MFReaderTextFormatterView();
  v57 = *(v14 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7CC8);
  MEMORY[0x28223BE20](v63);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D40);
  v58 = *(v18 - 8);
  v59 = v18;
  MEMORY[0x28223BE20](v18);
  v62 = &v53 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7CC0);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v25 = *a1;
  v72 = a3;
  v68 = v22;
  if (v25 <= 1)
  {
    v55 = v24;
    v56 = &v53 - v23;
  }

  else if (v25 == 2)
  {
    v55 = v24;
    v56 = &v53 - v23;
  }

  else
  {
    if (v25 != 3)
    {

LABEL_12:
      *(v7 + *(v5 + 20)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for MFReaderTextFormatterModel(0);
      sub_257D062A4(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
      sub_257ECC3F0();
      *v7 = sub_257ECE150();
      v7[1] = v39;
      sub_257ECE740();
      sub_257D062A4(&qword_27F8F7D00, type metadata accessor for MFReaderCustomThemeSelectionMenu);
      sub_257D062A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
      v40 = v67;
      sub_257ECEB60();
      (*(v65 + 8))(v13, v40);
      sub_257D06098(v7, type metadata accessor for MFReaderCustomThemeSelectionMenu);
      v41 = &v9[*(v71 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218);
      sub_257ECE310();
      *v41 = 0;
      v42 = &qword_27F8F7CF8;
      sub_257BE401C(v9, v70, &qword_27F8F7CF8);
      swift_storeEnumTagMultiPayload();
      sub_257D05C9C();
      sub_257D05EC8();
      sub_257ECE6F0();
      v43 = v9;
      return sub_257BE4084(v43, v42);
    }

    v55 = v24;
    v56 = &v53 - v23;
  }

  v26 = sub_257ED0640();

  if (v26)
  {
    goto LABEL_12;
  }

  LOBYTE(v74) = v25;
  v27 = sub_257BE6B24();
  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = v66;
  v29 = v27;
  sub_257D06030(v66, &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MFReaderTextFormatterView);
  v30 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v31 = swift_allocObject();
  v32 = sub_257D0623C(&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for MFReaderTextFormatterView);
  *(v31 + v30 + v15) = v25;
  MEMORY[0x28223BE20](v32);
  v57 = v29;
  *(&v53 - 4) = v29;
  *(&v53 - 3) = v28;
  *(&v53 - 16) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D48);
  sub_257D06184();
  sub_257ECEEA0();
  v33 = &v17[*(v63 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218);
  sub_257ECE310();
  *v33 = 0;
  sub_257ECE740();
  v34 = sub_257D05DE4();
  v35 = sub_257D062A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  v36 = v67;
  v54 = v34;
  v53 = v35;
  sub_257ECEB60();
  (*(v65 + 8))(v13, v36);
  sub_257BE4084(v17, &qword_27F8F7CC8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v37 = sub_257D41B3C(v74, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BC8);
  if (v37)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_257ED9BD0;
    sub_257ECE580();
  }

  else
  {
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_257ED6D30;
  }

  sub_257ECE590();
  v74 = v38;
  sub_257D062A4(&qword_27F8F5BD0, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BD8);
  sub_257BD2D4C(&qword_27F8F5BE0, &qword_27F8F5BD8);
  v45 = v60;
  v44 = v61;
  sub_257ED0180();
  v46 = v70;
  v74 = v63;
  v75 = v36;
  v76 = v54;
  v77 = v53;
  swift_getOpaqueTypeConformance2();
  v47 = v55;
  v48 = v59;
  v49 = v62;
  sub_257ECEC80();
  (*(v64 + 8))(v45, v44);
  (*(v58 + 8))(v49, v48);
  v73 = v25;
  v74 = sub_257BE6C10();
  v75 = v50;
  sub_257BDAB08();
  v51 = v56;
  sub_257ECE200();

  v42 = &qword_27F8F7CC0;
  sub_257BE4084(v47, &qword_27F8F7CC0);
  sub_257BE401C(v51, v46, &qword_27F8F7CC0);
  swift_storeEnumTagMultiPayload();
  sub_257D05C9C();
  sub_257D05EC8();
  sub_257ECE6F0();

  v43 = v51;
  return sub_257BE4084(v43, v42);
}

uint64_t sub_257D03D38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_257ECDD70();
}

double sub_257D03DE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v34 = a1;
  v6 = type metadata accessor for MFReaderThemeSelectionOverlay(0);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C10);
  MEMORY[0x28223BE20](v32);
  v31 = &v30 - v8;
  v9 = sub_257ECE1D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  sub_257D004E8(v12);
  LOBYTE(a2) = sub_257ECE1C0();
  v13 = *(v10 + 8);
  v13(v12, v9);
  if (a2)
  {
    v14 = [objc_opt_self() mainScreen];
    [v14 bounds];
  }

  sub_257D004E8(v12);
  v15 = sub_257ECE1C0();
  v13(v12, v9);
  if (v15)
  {
    v16 = [objc_opt_self() &selRef_contextMenuInteraction];
    [v16 &selRef__accessibilitySupplementaryFooterViews];
  }

  sub_257ECF060();
  sub_257ECE080();
  *&v37[6] = v38;
  *&v37[22] = v39;
  *&v37[38] = v40;
  KeyPath = swift_getKeyPath();
  v18 = v30;
  *v30 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v34;
  sub_257ECC3F0();
  sub_257ECDD60();

  if (sub_257D41B3C(v36, v33))
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = v18;
  v22 = v31;
  sub_257D0623C(v21, v31, type metadata accessor for MFReaderThemeSelectionOverlay);
  *(v22 + *(v32 + 36)) = v20;
  v23 = sub_257ECF060();
  v25 = v24;
  v26 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D48) + 36);
  sub_257C0DD14(v22, v26, &qword_27F8F5C10);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C20) + 36));
  *v27 = v23;
  v27[1] = v25;
  *(a4 + 56) = *&v37[46];
  *(a4 + 42) = *&v37[32];
  result = *&v37[16];
  v29 = *v37;
  *(a4 + 26) = *&v37[16];
  *a4 = v19;
  *(a4 + 8) = 256;
  *(a4 + 10) = v29;
  return result;
}

uint64_t sub_257D04208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v119 = *MEMORY[0x277D85DE8];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B40);
  v3 = MEMORY[0x28223BE20](v94);
  v92 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = &v90 - v5;
  *(&v103 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B48);
  MEMORY[0x28223BE20](*(&v103 + 1));
  v95 = &v90 - v6;
  *&v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B50);
  MEMORY[0x28223BE20](v103);
  v99 = &v90 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B58);
  v8 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v96 = &v90 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B60);
  MEMORY[0x28223BE20](v101);
  v102 = &v90 - v10;
  v11 = sub_257ECE1D0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v106 = &v90 - v16;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B68);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v18 = &v90 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B70);
  MEMORY[0x28223BE20](v100);
  v20 = &v90 - v19;
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  *&v114 = *(a1 + 32);
  *(&v114 + 1) = v21;
  LOBYTE(v115) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720);
  MEMORY[0x259C71A50](&v109, v23);
  if (v109)
  {
    v98 = v15;
    v24 = sub_257ECEE10();
    sub_257ECEA30();
    sub_257ECE9F0();
    v25 = sub_257ECEA50();

    KeyPath = swift_getKeyPath();
    sub_257D42694();
    sub_257C0DACC();
    sub_257ECC3F0();
    v27 = sub_257ECFEF0();
    *&v114 = 0;
    [v27 getWhite:&v114 alpha:0];

    v90 = v8;
    v91 = v12;
    if (*&v114 <= 0.5)
    {
      v28 = sub_257ECED90();
    }

    else
    {
      v28 = sub_257ECED70();
    }

    v61 = v28;

    v62 = swift_getKeyPath();
    *&v114 = v24;
    *(&v114 + 1) = KeyPath;
    *&v115 = v25;
    *(&v115 + 1) = v62;
    *&v116 = v61;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v64 = [objc_opt_self() bundleForClass_];
    v65 = sub_257ECF4C0();
    v66 = sub_257ECF4C0();
    v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

    v68 = sub_257ECF500();
    v70 = v69;

    *&v109 = v68;
    *(&v109 + 1) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C00);
    sub_257D05778();
    sub_257BDAB08();
    sub_257ECEBF0();

    v71 = v91;
    v72 = *(v91 + 104);
    v73 = v106;
    v72(v106, *MEMORY[0x277CDFA00], v11);
    v74 = v98;
    v72(v98, *MEMORY[0x277CDF988], v11);
    sub_257D062A4(&qword_27F8F7C10, MEMORY[0x277CDFA28]);
    if ((sub_257ECF440() & 1) == 0)
    {
      __break(1u);
    }

    v75 = *(v71 + 32);
    v76 = v93;
    v75(v93, v73, v11);
    v77 = v92;
    v78 = v94;
    v75((v76 + *(v94 + 48)), v74, v11);
    sub_257BE401C(v76, v77, &qword_27F8F7B40);
    v79 = *(v78 + 48);
    v80 = v95;
    v75(v95, v77, v11);
    v81 = *(v71 + 8);
    v81(v77 + v79, v11);
    sub_257C0DD14(v76, v77, &qword_27F8F7B40);
    v82 = *(&v103 + 1);
    v75((v80 + *(*(&v103 + 1) + 36)), (v77 + *(v78 + 48)), v11);
    v81(v77, v11);
    v83 = sub_257D056BC();
    v84 = sub_257BD2D4C(&qword_27F8F7C08, &qword_27F8F7B48);
    v85 = v96;
    v86 = v103;
    v87 = v99;
    sub_257ECEBB0();
    sub_257BE4084(v80, &qword_27F8F7B48);
    sub_257BE4084(v87, &qword_27F8F7B50);
    v88 = v90;
    v89 = v104;
    (*(v90 + 16))(v102, v85, v104);
    swift_storeEnumTagMultiPayload();
    sub_257D055C4();
    *&v114 = v86;
    *(&v114 + 1) = v82;
    *&v115 = v83;
    *(&v115 + 1) = v84;
    swift_getOpaqueTypeConformance2();
    sub_257ECE6F0();
    return (*(v88 + 8))(v85, v89);
  }

  else
  {
    v29 = v12;
    v30 = sub_257ECEE10();
    sub_257ECEA30();
    sub_257ECE9F0();
    v31 = sub_257ECEA50();

    v32 = swift_getKeyPath();
    v33 = sub_257ECE930();
    sub_257ECDF40();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    LOBYTE(v114) = 0;
    v42 = sub_257ECED90();
    if (qword_281544A78 != -1)
    {
      swift_once();
    }

    v43 = qword_281548308;
    v44 = sub_257ECED30();
    v45 = sub_257ECE930();
    *&v109 = v30;
    *(&v109 + 1) = v32;
    *&v110 = v31;
    BYTE8(v110) = v33;
    *&v111 = v35;
    *(&v111 + 1) = v37;
    *&v112 = v39;
    *(&v112 + 1) = v41;
    v113[0] = 0;
    *&v113[8] = v42;
    *&v113[16] = v44;
    v113[24] = v45;
    *&v113[25] = 256;
    v46 = v106;
    (*(v29 + 104))(v106, *MEMORY[0x277CDF988], v11);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B78);
    v48 = sub_257D052B8();
    sub_257ECEBA0();
    (*(v29 + 8))(v46, v11);
    v116 = v111;
    v117 = v112;
    *v118 = *v113;
    *&v118[11] = *&v113[11];
    v114 = v109;
    v115 = v110;
    sub_257BE4084(&v114, &qword_27F8F7B78);
    type metadata accessor for MAGUtilities();
    v49 = swift_getObjCClassFromMetadata();
    v50 = [objc_opt_self() bundleForClass_];
    v51 = sub_257ECF4C0();
    v52 = sub_257ECF4C0();
    v53 = [v50 localizedStringForKey:v51 value:0 table:v52];

    v54 = sub_257ECF500();
    v56 = v55;

    *&v109 = v54;
    *(&v109 + 1) = v56;
    v107 = v47;
    v108 = v48;
    swift_getOpaqueTypeConformance2();
    sub_257BDAB08();
    v57 = v98;
    sub_257ECEBF0();

    (*(v97 + 8))(v18, v57);
    sub_257BE401C(v20, v102, &qword_27F8F7B70);
    swift_storeEnumTagMultiPayload();
    sub_257D055C4();
    v58 = sub_257D056BC();
    v59 = sub_257BD2D4C(&qword_27F8F7C08, &qword_27F8F7B48);
    v109 = v103;
    *&v110 = v58;
    *(&v110 + 1) = v59;
    swift_getOpaqueTypeConformance2();
    sub_257ECE6F0();
    return sub_257BE4084(v20, &qword_27F8F7B70);
  }
}

__n128 sub_257D05058@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_257ECE5B0();
  sub_257D050C4(&v7);
  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_257D050C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE10();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_257ECF500();
  sub_257BDAB08();
  v8 = sub_257ECEAF0();
  v10 = v9;
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  LOBYTE(v7) = v11 & 1;
  *(a1 + 24) = v11 & 1;
  *(a1 + 32) = v12;
  sub_257ECC3F0();
  sub_257BD1B90(v8, v10, v7);

  sub_257C0300C(v8, v10, v7);
}

uint64_t sub_257D05264@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_257ECE500();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7AF8);
  return sub_257D006F0(v1, a1 + *(v3 + 44));
}

unint64_t sub_257D052B8()
{
  result = qword_27F8F7B80;
  if (!qword_27F8F7B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B78);
    sub_257D05370();
    sub_257BD2D4C(&qword_27F8F7BD8, &qword_27F8F7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7B80);
  }

  return result;
}

unint64_t sub_257D05370()
{
  result = qword_27F8F7B88;
  if (!qword_27F8F7B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B90);
    sub_257D05428();
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7B88);
  }

  return result;
}

unint64_t sub_257D05428()
{
  result = qword_27F8F7B98;
  if (!qword_27F8F7B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7BA0);
    sub_257D05898(&qword_27F8F7BA8, &qword_27F8F7BB0, &unk_257EEDB00, sub_257D0550C);
    sub_257BD2D4C(&qword_27F8F67B0, &qword_27F8F67B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7B98);
  }

  return result;
}

unint64_t sub_257D0550C()
{
  result = qword_27F8F7BB8;
  if (!qword_27F8F7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7BC0);
    sub_257BD2D4C(&qword_27F8F7BC8, &qword_27F8F7BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7BB8);
  }

  return result;
}

unint64_t sub_257D055C4()
{
  result = qword_27F8F7BE8;
  if (!qword_27F8F7BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B78);
    sub_257D052B8();
    swift_getOpaqueTypeConformance2();
    sub_257D062A4(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7BE8);
  }

  return result;
}

unint64_t sub_257D056BC()
{
  result = qword_27F8F7BF0;
  if (!qword_27F8F7BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B50);
    sub_257D05778();
    sub_257D062A4(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7BF0);
  }

  return result;
}

unint64_t sub_257D05778()
{
  result = qword_27F8F7BF8;
  if (!qword_27F8F7BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7C00);
    sub_257D0550C();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7BF8);
  }

  return result;
}

uint64_t sub_257D05830()
{
  v1 = *(type metadata accessor for MFReaderTextFormatterView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_257D022E4(v2);
}

uint64_t sub_257D05898(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257D0591C()
{
  result = qword_27F8F7C70;
  if (!qword_27F8F7C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7C78);
    sub_257BD2D4C(&qword_27F8F7C80, &qword_27F8F7C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7C70);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for MFReaderTextFormatterView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_257ECE1D0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257D05B3C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MFReaderTextFormatterView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_257D03184(a1, v6, a2);
}

unint64_t sub_257D05BBC()
{
  result = qword_27F8F7CA8;
  if (!qword_27F8F7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7CA8);
  }

  return result;
}

unint64_t sub_257D05C10()
{
  result = qword_27F8F7CB0;
  if (!qword_27F8F7CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7C98);
    sub_257D05C9C();
    sub_257D05EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7CB0);
  }

  return result;
}

unint64_t sub_257D05C9C()
{
  result = qword_27F8F7CB8;
  if (!qword_27F8F7CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7CC8);
    sub_257ECE750();
    sub_257D05DE4();
    sub_257D062A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_257D062A4(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7CB8);
  }

  return result;
}

unint64_t sub_257D05DE4()
{
  result = qword_27F8F7CD0;
  if (!qword_27F8F7CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7CC8);
    sub_257BD2D4C(&qword_27F8F7CD8, &qword_27F8F7CE0);
    sub_257BD2D4C(&qword_27F8F7CE8, &qword_27F8F6218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7CD0);
  }

  return result;
}

unint64_t sub_257D05EC8()
{
  result = qword_27F8F7CF0;
  if (!qword_27F8F7CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7CF8);
    type metadata accessor for MFReaderCustomThemeSelectionMenu(255);
    sub_257ECE750();
    sub_257D062A4(&qword_27F8F7D00, type metadata accessor for MFReaderCustomThemeSelectionMenu);
    sub_257D062A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F7CE8, &qword_27F8F6218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7CF0);
  }

  return result;
}

uint64_t sub_257D06030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257D06098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257D060F8()
{
  type metadata accessor for MFReaderTextFormatterView();

  return sub_257D03D38();
}

unint64_t sub_257D06184()
{
  result = qword_27F8F7D50;
  if (!qword_27F8F7D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7D48);
    sub_257C5F304();
    sub_257BD2D4C(&qword_27F8F5C40, &qword_27F8F5C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7D50);
  }

  return result;
}

uint64_t sub_257D0623C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257D062A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257D062EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257CD46F4(a1, v4, v5, v6);
}

uint64_t sub_257D063A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257CD3DF8(a1, v4, v5, v6);
}

uint64_t sub_257D06454(int a1)
{
  if ((a1 - 1) < 8)
  {
    return qword_257EE2E58[a1 - 1];
  }

  type metadata accessor for CGImagePropertyOrientation(0);
  result = sub_257ED0690();
  __break(1u);
  return result;
}

uint64_t sub_257D064AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECF500();
  v4 = v3;
  if (v2 == sub_257ECF500() && v4 == v5)
  {
    v8 = MEMORY[0x277CDF9F8];
LABEL_8:

    goto LABEL_9;
  }

  v7 = sub_257ED0640();

  if (v7)
  {
    v8 = MEMORY[0x277CDF9F8];
    goto LABEL_9;
  }

  v13 = sub_257ECF500();
  v15 = v14;
  if (v13 == sub_257ECF500() && v15 == v16)
  {
    v8 = MEMORY[0x277CDF9E0];
    goto LABEL_8;
  }

  v18 = sub_257ED0640();

  if (v18)
  {
    v8 = MEMORY[0x277CDF9E0];
    goto LABEL_9;
  }

  v19 = sub_257ECF500();
  v21 = v20;
  if (v19 == sub_257ECF500() && v21 == v22)
  {
    v8 = MEMORY[0x277CDF9E8];
    goto LABEL_8;
  }

  v23 = sub_257ED0640();

  v24 = MEMORY[0x277CDF9E8];
  v8 = MEMORY[0x277CDF9E8];
  if ((v23 & 1) == 0)
  {
    v25 = sub_257ECF500();
    v27 = v26;
    if (v25 == sub_257ECF500() && v27 == v28)
    {
      v8 = MEMORY[0x277CDF9D8];
      goto LABEL_8;
    }

    v29 = sub_257ED0640();

    if (v29)
    {
      v8 = MEMORY[0x277CDF9D8];
    }

    else
    {
      v30 = sub_257ECF500();
      v32 = v31;
      if (v30 == sub_257ECF500() && v32 == v33)
      {
        v8 = MEMORY[0x277CDF9F0];
        goto LABEL_8;
      }

      v34 = sub_257ED0640();

      if (v34)
      {
        v8 = MEMORY[0x277CDF9F0];
      }

      else
      {
        v35 = sub_257ECF500();
        v37 = v36;
        if (v35 == sub_257ECF500() && v37 == v38)
        {
          v8 = MEMORY[0x277CDFA00];
          goto LABEL_8;
        }

        v39 = sub_257ED0640();

        if (v39)
        {
          v8 = MEMORY[0x277CDFA00];
        }

        else
        {
          v40 = sub_257ECF500();
          v42 = v41;
          if (v40 == sub_257ECF500() && v42 == v43)
          {
            v8 = MEMORY[0x277CDFA10];
            goto LABEL_8;
          }

          v44 = sub_257ED0640();

          if (v44)
          {
            v8 = MEMORY[0x277CDFA10];
          }

          else
          {
            v45 = sub_257ECF500();
            v47 = v46;
            if (v45 == sub_257ECF500() && v47 == v48)
            {
              v8 = MEMORY[0x277CDF988];
              goto LABEL_8;
            }

            v49 = sub_257ED0640();

            if (v49)
            {
              v8 = MEMORY[0x277CDF988];
            }

            else
            {
              v50 = sub_257ECF500();
              v52 = v51;
              if (v50 == sub_257ECF500() && v52 == v53)
              {
                v8 = MEMORY[0x277CDF998];
                goto LABEL_8;
              }

              v54 = sub_257ED0640();

              if (v54)
              {
                v8 = MEMORY[0x277CDF998];
              }

              else
              {
                v55 = sub_257ECF500();
                v57 = v56;
                if (v55 == sub_257ECF500() && v57 == v58)
                {
                  v8 = MEMORY[0x277CDF9A8];
                  goto LABEL_8;
                }

                v59 = sub_257ED0640();

                if (v59)
                {
                  v8 = MEMORY[0x277CDF9A8];
                }

                else
                {
                  v60 = sub_257ECF500();
                  v62 = v61;
                  if (v60 == sub_257ECF500() && v62 == v63)
                  {
                    v8 = MEMORY[0x277CDF9B8];
                    goto LABEL_8;
                  }

                  v64 = sub_257ED0640();

                  if (v64)
                  {
                    v8 = MEMORY[0x277CDF9B8];
                  }

                  else
                  {
                    v65 = sub_257ECF500();
                    v67 = v66;
                    v68 = sub_257ECF500();
                    v8 = MEMORY[0x277CDF9D0];
                    if (v65 == v68 && v67 == v69)
                    {
                      goto LABEL_8;
                    }

                    v70 = sub_257ED0640();

                    if ((v70 & 1) == 0)
                    {
                      v8 = v24;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  v9 = *v8;
  v10 = sub_257ECE1D0();
  v11 = *(*(v10 - 8) + 104);

  return v11(a1, v9, v10);
}

uint64_t MAGImageCaptionService.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  *(v0 + 24) = 0;
  return v0;
}

uint64_t MAGImageCaptionService.init()()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) init];
  *(v0 + 24) = 0;
  return v0;
}

uint64_t MAGImageCaptionService.generateImageCaption(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_257ECF900();
  v2[4] = sub_257ECF8F0();
  v4 = sub_257ECF8B0();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_257D06C1C, v4, v3);
}

uint64_t sub_257D06C1C()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {

    sub_257BEBEF0();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 16;
    *(v2 + 24) = 4;
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[2];
    *(v1 + 24) = v5;
    v6 = *(v5 + 16);
    v0[7] = v6;
    sub_257ECC3F0();
    v7 = v6;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_257D06D5C;

    return sub_257D06F84(v7);
  }
}

uint64_t sub_257D06D5C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
    v9 = sub_257D06F0C;
  }

  else
  {

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
    v9 = sub_257D06E98;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_257D06E98()
{
  v1 = v0[3];

  *(v1 + 24) = 0;

  v2 = v0[1];
  v4 = v0[10];
  v3 = v0[11];

  return v2(v3, v4);
}

uint64_t sub_257D06F0C()
{
  v1 = v0[7];
  v2 = v0[3];

  *(v2 + 24) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_257D06F84(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = sub_257ECF900();
  v2[7] = sub_257ECF8F0();
  v4 = sub_257ECF8B0();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_257D07020, v4, v3);
}

uint64_t sub_257D07020()
{
  v1 = [*(*(v0 + 40) + 16) imageNode];
  *(v0 + 80) = v1;
  if (v1)
  {
    v2 = v1;
    v11 = *(v0 + 32);
    v3 = sub_257ECF8F0();
    *(v0 + 88) = v3;
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v11;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_257D071E4;
    v6 = MEMORY[0x277D85700];
    v7 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 16, v3, v6, 0xD000000000000022, 0x8000000257EFF410, sub_257D07E40, v4, v7);
  }

  else
  {

    sub_257BEBEF0();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 3;
    *(v8 + 24) = 4;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_257D071E4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_257D0737C;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_257D07308;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257D07308()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_257D0737C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void sub_257D07404(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_257D07E4C();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_257D08060;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257BE8054;
  aBlock[3] = &block_descriptor_26;
  v13 = _Block_copy(aBlock);

  [a2 triggerWithPixelBuffer:a3 exifOrientation:6 options:v10 cacheKey:0 resultHandler:v13];
  _Block_release(v13);
}

void sub_257D075DC(void *a1, void *a2)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = AXRuntimeCheck_MediaAnalysisSupport();
  if (a1)
  {
    v12 = v11;
    v13 = a1;
    v14 = v13;
    if (v12)
    {
      v15 = [v13 mediaAnalysisImageCaptionFeatures];
      sub_257D08104();
      v16 = sub_257ECF810();

      if (v16 >> 62)
      {
        if (sub_257ED0210())
        {
          goto LABEL_5;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x259C72E20](0, v16);
LABEL_8:
          v18 = v17;

          if ([v18 isLowConfidence])
          {
            goto LABEL_19;
          }

          goto LABEL_22;
        }

        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v17 = *(v16 + 32);
          goto LABEL_8;
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_28:

LABEL_29:
      sub_257BEA118(MEMORY[0x277D84F90]);
      type metadata accessor for AXMFeatureDescriptionOption(0);
      sub_257D08150();
      v37 = sub_257ECF3C0();

      v38 = [v14 detectedSceneClassificationFeatureDescriptionWithOptions_];

      if (v38)
      {
        v34 = sub_257ECF500();
        v36 = v39;

        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v29 = [v13 captionFeatures];
    sub_257D08104();
    v30 = sub_257ECF810();

    if (v30 >> 62)
    {
      if (!sub_257ED0210())
      {
        goto LABEL_28;
      }
    }

    else if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x259C72E20](0, v30);
    }

    else
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v31 = *(v30 + 32);
    }

    v18 = v31;

    if ([v18 isLowConfidence])
    {
LABEL_19:

      goto LABEL_29;
    }

LABEL_22:
    sub_257BEA118(MEMORY[0x277D84F90]);
    type metadata accessor for AXMFeatureDescriptionOption(0);
    sub_257D08150();
    v32 = sub_257ECF3C0();

    v33 = [v14 detectedCaptionFeatureDescriptionWithOptions_];

    if (v33)
    {
      v34 = sub_257ECF500();
      v36 = v35;

LABEL_32:

      v40 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v40 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (!v40)
      {

        sub_257ECD340();
        v46 = sub_257ECDA20();
        v47 = sub_257ECFBE0();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_257BAC000, v46, v47, "Image caption service produced no caption for image", v48, 2u);
          MEMORY[0x259C74820](v48, -1, -1);
        }

        (*(v5 + 8))(v10, v4);
        sub_257BEBEF0();
        v49 = swift_allocError();
        *(v50 + 8) = 0;
        *(v50 + 16) = 0;
        *v50 = 6;
        *(v50 + 24) = 4;
        v53[0] = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78);
        sub_257ECF8C0();
        goto LABEL_40;
      }

      v41 = sub_257ECF4C0();
      v42 = [v41 axCapitalizeFirstLetter];

      if (v42)
      {

        v43 = sub_257ECF500();
        v45 = v44;

        v53[0] = v43;
        v53[1] = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78);
        sub_257ECF8D0();
LABEL_40:

        return;
      }

      goto LABEL_45;
    }

LABEL_31:
    v34 = 0;
    v36 = 0xE000000000000000;
    goto LABEL_32;
  }

  if (!a2)
  {
LABEL_46:
    sub_257ED0410();
    __break(1u);
    return;
  }

  v19 = a2;
  sub_257ECD340();
  v20 = a2;
  v21 = sub_257ECDA20();
  v22 = sub_257ECFBE0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v52 = v4;
    v53[0] = v24;
    v25 = v24;
    *v23 = 136315138;
    swift_getErrorValue();
    v26 = sub_257ED0720();
    v28 = sub_257BF1FC8(v26, v27, v53);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_257BAC000, v21, v22, "Image caption error: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x259C74820](v25, -1, -1);
    MEMORY[0x259C74820](v23, -1, -1);

    (*(v5 + 8))(v8, v52);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v53[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78);
  sub_257ECF8C0();
}

uint64_t MAGImageCaptionService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_257D07E4C()
{
  v0 = sub_257ECCD90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CE6AE0]) init];
  v5 = AXRuntimeCheck_MediaAnalysisSupport();
  [v4 setDetectMADCaptions_];
  [v4 setDetectMADScenes_];
  [v4 setDetectScenes_];
  [v4 setDetectObjects_];
  [v4 setDetectProminentObjects_];
  [v4 setDetectCaptions_];
  [v4 setDetectText_];
  v6 = [objc_opt_self() defaultOptions];
  [v4 setTextDetectionOptions_];

  [v4 setDetectTraits_];
  [v4 setDetectModelClassifications_];
  [v4 setIncludeImageInResult_];
  sub_257ECCD80();
  v7 = sub_257ECCD60();
  (*(v1 + 8))(v3, v0);
  [v4 setPreferredOutputLocale_];

  return v4;
}

void sub_257D08060(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D78);

  sub_257D075DC(a1, a2);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257D08104()
{
  result = qword_27F8F5730;
  if (!qword_27F8F5730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F5730);
  }

  return result;
}

unint64_t sub_257D08150()
{
  result = qword_27F8F4FF8;
  if (!qword_27F8F4FF8)
  {
    type metadata accessor for AXMFeatureDescriptionOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4FF8);
  }

  return result;
}

uint64_t _s16MagnifierSupport0A9ShortcutsV03appC0Say10AppIntents0E8ShortcutVGvgZ_0()
{
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D80);
  v0 = MEMORY[0x28223BE20](v146);
  v147 = v133 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v145 = v133 - v2;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D88);
  v3 = MEMORY[0x28223BE20](v143);
  v144 = v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v142 = v133 - v5;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D90);
  v6 = MEMORY[0x28223BE20](v137);
  v140 = v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v139 = v133 - v9;
  MEMORY[0x28223BE20](v8);
  v136 = v133 - v10;
  v133[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7D98);
  v11 = MEMORY[0x28223BE20](v133[0]);
  v160 = v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v159 = v133 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v158 = v133 - v16;
  MEMORY[0x28223BE20](v15);
  v157 = v133 - v17;
  v18 = sub_257ECCA30();
  MEMORY[0x28223BE20](v18 - 8);
  v167 = v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECC270();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DA0);
  v25 = MEMORY[0x28223BE20](v24);
  v163 = v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = sub_257ECC310();
  v28 = *(v27 - 8);
  v168 = v27;
  v169 = v28;
  MEMORY[0x28223BE20](v27);
  v166 = v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DA8);
  v161 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DB0) - 8) + 72);
  v162 = 2 * v161;
  v30 = swift_allocObject();
  v138 = xmmword_257EDBBA0;
  v164 = v30;
  *(v30 + 16) = xmmword_257EDBBA0;
  sub_257CF97BC();
  sub_257ECC220();
  sub_257ECC210();
  v174 = *MEMORY[0x277CB9BE8];
  v31 = v21;
  v32 = v21 + 104;
  v33 = *(v21 + 104);
  v172 = v32;
  v173 = v20;
  v33(v23);
  v171 = v33;
  sub_257ECC200();
  v34 = *(v31 + 8);
  v34(v23, v20);
  v165 = v34;
  v170 = v31 + 8;
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v35 = v173;
  (v33)(v23, v174, v173);
  sub_257ECC200();
  v36 = v23;
  v34(v23, v35);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC1F0();
  sub_257ECCA00();
  v37 = v166;
  sub_257ECC300();
  v141 = sub_257ECC250();
  v38 = *(v169 + 8);
  v169 += 8;
  v164 = v38;
  v38(v37, v168);
  LOBYTE(v175) = 0;
  v175 = sub_257C7B3C8(&v175);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DB8);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DC0) - 8);
  v163 = *(v39 + 72);
  *&v154 = *(v39 + 80);
  v40 = (v154 + 32) & ~v154;
  v153 = v40;
  v161 = 2 * v163;
  v162 = 3 * v163;
  v151 = 6 * v163;
  v41 = swift_allocObject();
  v134 = xmmword_257EE23E0;
  v135 = v41;
  *(v41 + 16) = xmmword_257EE23E0;
  v148 = v41 + v40;
  v42 = sub_257C7B704();
  sub_257ECC220();
  sub_257ECC210();
  v43 = v36;
  v44 = v36;
  v45 = v174;
  v46 = v173;
  v171(v44, v174, v173);
  sub_257ECC200();
  v47 = v165;
  v165(v43, v46);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v48 = v45;
  v49 = v171;
  v171(v43, v48, v46);
  sub_257ECC200();
  v47(v43, v46);
  sub_257ECC210();
  v156 = v42;
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v50 = v43;
  v51 = v174;
  v52 = v173;
  v49(v43, v174, v173);
  sub_257ECC200();
  v53 = v52;
  v54 = v47;
  v47(v43, v53);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v55 = v51;
  v56 = v173;
  v171(v43, v55, v173);
  sub_257ECC200();
  v47(v43, v56);
  sub_257ECC210();
  sub_257ECC230();
  v57 = v163;
  v149 = 4 * v163;
  sub_257ECC1F0();
  v150 = 5 * v57;
  sub_257ECC1F0();
  sub_257ECCA00();
  v58 = v166;
  sub_257ECC300();
  v135 = sub_257ECC250();
  v164(v58, v168);
  LOBYTE(v175) = 1;
  v175 = sub_257C7B3C8(&v175);
  v59 = v153;
  v60 = swift_allocObject();
  v148 = v60;
  *(v60 + 16) = v134;
  v61 = v60 + v59;
  sub_257ECC220();
  sub_257ECC210();
  v62 = v174;
  v171(v50, v174, v56);
  sub_257ECC200();
  v47(v50, v56);
  sub_257ECC210();
  *&v134 = v61;
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v63 = v173;
  v64 = v171;
  v171(v50, v62, v173);
  sub_257ECC200();
  v54(v50, v63);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v64(v50, v174, v63);
  sub_257ECC200();
  v54(v50, v63);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v65 = v50;
  v66 = v50;
  v67 = v173;
  v64(v66, v174, v173);
  v68 = v65;
  sub_257ECC200();
  v54(v65, v67);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC1F0();
  sub_257ECC1F0();
  sub_257ECCA00();
  v69 = v166;
  sub_257ECC300();
  *&v134 = sub_257ECC250();
  v164(v69, v168);
  LOBYTE(v175) = 3;
  v175 = sub_257C7B3C8(&v175);
  v70 = v153;
  v71 = swift_allocObject();
  v133[1] = v71;
  *(v71 + 16) = xmmword_257EDFA20;
  v148 = v71 + v70;
  sub_257ECC220();
  sub_257ECC210();
  v72 = v68;
  v73 = v68;
  v74 = v174;
  v75 = v173;
  v171(v73, v174, v173);
  sub_257ECC200();
  v165(v72, v75);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v76 = v171;
  v171(v72, v74, v75);
  sub_257ECC200();
  v77 = v75;
  v78 = v165;
  v165(v72, v77);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v79 = v173;
  v76(v72, v174, v173);
  sub_257ECC200();
  v78(v72, v79);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v152 = v72;
  v76(v72, v174, v79);
  sub_257ECC200();
  v78(v72, v79);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC1F0();
  sub_257ECC1F0();
  sub_257ECC1F0();
  sub_257ECCA00();
  v80 = v166;
  sub_257ECC300();
  v151 = sub_257ECC250();
  v164(v80, v168);
  LOBYTE(v175) = 2;
  v175 = sub_257C7B3C8(&v175);
  v81 = v153;
  v82 = swift_allocObject();
  v154 = xmmword_257EDBE50;
  v150 = v82;
  *(v82 + 16) = xmmword_257EDBE50;
  v83 = v82 + v81;
  sub_257ECC220();
  sub_257ECC210();
  v84 = v152;
  v85 = v174;
  v86 = v173;
  v87 = v171;
  v171(v152, v174, v173);
  sub_257ECC200();
  v88 = v165;
  v165(v84, v86);
  sub_257ECC210();
  v155 = v83;
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v89 = v152;
  v87(v152, v85, v86);
  sub_257ECC200();
  v88(v89, v86);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v90 = v171;
  v171(v89, v85, v86);
  sub_257ECC200();
  v91 = v165;
  v165(v89, v86);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v92 = v85;
  v93 = v173;
  v90(v89, v92, v173);
  sub_257ECC200();
  v91(v89, v93);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECCA00();
  v94 = v166;
  sub_257ECC300();
  v160 = sub_257ECC250();
  v164(v94, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DC8);
  v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DD0) - 8);
  v163 = *(v95 + 72);
  v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v97 = swift_allocObject();
  v159 = v97;
  *(v97 + 16) = v154;
  v162 = v97 + v96;
  v161 = sub_257CF9714();
  sub_257ECC220();
  sub_257ECC210();
  v98 = v173;
  v99 = v171;
  v171(v89, v174, v173);
  sub_257ECC200();
  v100 = v98;
  v101 = v165;
  v165(v89, v98);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v102 = v174;
  v99(v89, v174, v100);
  sub_257ECC200();
  v101(v89, v100);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v103 = v102;
  v104 = v173;
  v171(v89, v103, v173);
  sub_257ECC200();
  v101(v89, v104);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC1F0();
  sub_257ECCA00();
  v105 = v166;
  sub_257ECC300();
  v162 = sub_257ECC250();
  v164(v105, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DD8);
  v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DE0) - 8);
  v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v158 = *(v106 + 72);
  v159 = (2 * v158);
  v108 = swift_allocObject();
  v161 = v108;
  *(v108 + 16) = v138;
  v163 = v108 + v107;
  sub_257CE5428();
  sub_257ECC220();
  sub_257ECC210();
  v109 = v152;
  v110 = v174;
  v111 = v171;
  v171(v152, v174, v104);
  sub_257ECC200();
  v112 = v104;
  v113 = v165;
  v165(v109, v112);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v114 = v110;
  v115 = v173;
  v111(v109, v114, v173);
  sub_257ECC200();
  v113(v109, v115);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC1F0();
  sub_257ECCA00();
  v116 = v166;
  sub_257ECC300();
  v161 = sub_257ECC250();
  v164(v116, v168);
  v175 = sub_257D7E0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DE8);
  v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DF0) - 8);
  v158 = *(v117 + 72);
  v118 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v119 = swift_allocObject();
  v159 = v119;
  *(v119 + 16) = xmmword_257ED9BD0;
  v163 = v119 + v118;
  sub_257CF9768();
  sub_257ECC220();
  sub_257ECC210();
  v120 = v174;
  v121 = v173;
  v122 = v171;
  v171(v109, v174, v173);
  sub_257ECC200();
  v123 = v165;
  v165(v109, v121);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECC220();
  sub_257ECC210();
  v122(v109, v120, v121);
  sub_257ECC200();
  v123(v109, v121);
  sub_257ECC210();
  sub_257ECC230();
  sub_257ECCA00();
  v124 = v166;
  sub_257ECC300();
  v125 = sub_257ECC250();
  v164(v124, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7DF8);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_257EE2EF0;
  v127 = v135;
  *(v126 + 32) = v141;
  *(v126 + 40) = v127;
  v128 = v151;
  *(v126 + 48) = v134;
  *(v126 + 56) = v128;
  v129 = v161;
  v130 = v162;
  *(v126 + 64) = v160;
  *(v126 + 72) = v130;
  *(v126 + 80) = v129;
  *(v126 + 88) = v125;
  v131 = sub_257ECC240();

  return v131;
}

id sub_257D0A4AC(uint64_t *a1, void (*a2)(void))
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

uint64_t sub_257D0A524()
{
  v1 = *v0;
  sub_257ED07B0();
  if (!(v1 >> 6))
  {
    MEMORY[0x259C732E0](0);
    v2 = v1;
LABEL_6:
    MEMORY[0x259C732E0](v2);
    return sub_257ED0800();
  }

  if (v1 >> 6 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x259C732E0](1);
  Control.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257D0A5D8()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    MEMORY[0x259C732E0](0);
    v3 = v1;
    return MEMORY[0x259C732E0](v3);
  }

  if (v1 >> 6 != 1)
  {
    v3 = 2;
    return MEMORY[0x259C732E0](v3);
  }

  MEMORY[0x259C732E0](1);
  Control.rawValue.getter();
  sub_257ECF5D0();
}

uint64_t sub_257D0A698()
{
  v1 = *v0;
  sub_257ED07B0();
  if (!(v1 >> 6))
  {
    MEMORY[0x259C732E0](0);
    v2 = v1;
LABEL_6:
    MEMORY[0x259C732E0](v2);
    return sub_257ED0800();
  }

  if (v1 >> 6 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x259C732E0](1);
  Control.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257D0A748(unsigned __int8 a1)
{
  v1 = 0;
  if (a1 <= 1u)
  {
    if (a1)
    {
LABEL_6:
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass_];
      v4 = sub_257ECF4C0();
      v5 = sub_257ECF4C0();
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

      v1 = sub_257ECF500();
    }
  }

  else if (a1 == 2 || a1 == 3)
  {
    goto LABEL_6;
  }

  return v1;
}

id sub_257D0A89C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___dataSource;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___dataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController____lazy_storage___dataSource];
  }

  else
  {
    v4 = sub_257D0A900(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257D0A900(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_tableView];
  *(swift_allocObject() + 16) = a1;
  v3 = objc_allocWithZone(type metadata accessor for EditControlsViewController.DataSource()) + qword_27F8F7E48;
  *v3 = 0;
  v3[1] = 0;
  v4 = v2;
  v5 = a1;
  v6 = sub_257ECDBD0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = (v6 + qword_27F8F7E48);
  v9 = *(v6 + qword_27F8F7E48);
  *v8 = sub_257D0F934;
  v8[1] = v7;
  sub_257ECC3F0();
  sub_257BBD88C(v9);

  return v6;
}

id sub_257D0AA14(void *a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v5 = *a3;
  if (!(v5 >> 6))
  {
    v18 = objc_allocWithZone(MEMORY[0x277D75B48]);
    v19 = sub_257ECF4C0();
    v9 = [v18 initWithStyle:1 reuseIdentifier:v19];

    if (sub_257ECF030())
    {
      v20 = 0xED0000656C637269;
      v21 = 0x632E656C63726963;
      if (v5 != 1)
      {
        v21 = 0x646E696677656976;
        v20 = 0xEA00000000007265;
      }

      if (v5)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0xD000000000000017;
      }

      if (v5)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0x8000000257EFA680;
      }

      v24 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(v22, v23, a4);

      if (v24)
      {
        v25 = [v9 imageView];
        if (!v25)
        {
LABEL_48:

          goto LABEL_49;
        }

        v26 = v25;
        [v25 setImage_];
LABEL_47:

        goto LABEL_48;
      }
    }

    else
    {
      v54 = [v9 imageView];
      if (v54)
      {
        v55 = v54;
        v56 = sub_257E8D7A0();
        if (v56)
        {
          v57 = v56;
          v58 = [objc_opt_self() whiteColor];
          v59 = [v57 imageWithTintColor:v58 renderingMode:1];
        }

        else
        {
          v59 = 0;
        }

        [v55 setImage_];
      }

      v65 = [v9 imageView];
      if (v65)
      {
        v26 = v65;
        v24 = [objc_opt_self() whiteColor];
        [v26 setTintColor_];
        goto LABEL_47;
      }
    }

LABEL_49:
    v66 = [v9 textLabel];
    if (v66)
    {
      v67 = v66;
      [v66 setNumberOfLines_];
    }

    v68 = [v9 textLabel];
    if (v68)
    {
      v69 = v68;
      [v68 setLineBreakMode_];
    }

    [v9 setAccessoryType_];
    [v9 setShowsReorderControl_];
    v70 = [v9 textLabel];
    if (v70)
    {
      v71 = v70;
      sub_257E8D8DC();
      v72 = sub_257ECF4C0();

      [v71 setText_];
    }

    v73 = [v9 detailTextLabel];
    if (v73)
    {
      v74 = v73;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v75 = qword_2815447E0;

      if (v75 != -1)
      {
        v76 = swift_once();
      }

      MEMORY[0x28223BE20](v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
      sub_257ECFD50();

      sub_257C592D0(v5, v84);

      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v78 = [objc_opt_self() bundleForClass_];
      v79 = sub_257ECF4C0();
      v80 = sub_257ECF4C0();
      v81 = [v78 localizedStringForKey:v79 value:0 table:v80];

      sub_257ECF500();
      v62 = sub_257ECF4C0();

      [v74 setText_];

      goto LABEL_61;
    }

    return v9;
  }

  if (v5 >> 6 == 1)
  {
    v6 = v5 & 0x3F;
    v7 = objc_allocWithZone(MEMORY[0x277D75B48]);
    v8 = sub_257ECF4C0();
    v9 = [v7 initWithStyle:1 reuseIdentifier:v8];

    v10 = [v9 textLabel];
    if (v10)
    {
      v11 = v10;
      LOBYTE(aBlock) = v6;
      sub_257D14A40();
      v12 = sub_257ECF4C0();

      [v11 setText_];
    }

    v13 = [v9 textLabel];
    if (v13)
    {
      v14 = v13;
      [v13 setNumberOfLines_];
    }

    v15 = [v9 textLabel];
    if (v15)
    {
      v16 = v15;
      [v15 setLineBreakMode_];
    }

    [v9 setShowsReorderControl_];
    LOBYTE(aBlock) = v6;
    if (Control.rawValue.getter() == 0x737265746C6966 && v17 == 0xE700000000000000)
    {
    }

    else
    {
      v37 = sub_257ED0640();

      if ((v37 & 1) == 0)
      {
        [v9 setEditingAccessoryType_];
        if ((sub_257ECF030() & 1) == 0)
        {
          return v9;
        }

LABEL_40:
        LOBYTE(aBlock) = v6;
        v60 = sub_257D15518();
        v62 = _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(v60, v61, a4);

        if (!v62)
        {
          return v9;
        }

        v63 = [v9 imageView];
        if (v63)
        {
          v64 = v63;
          [v63 setImage_];
        }

LABEL_61:

        return v9;
      }
    }

    v83 = v6;
    [v9 setEditingAccessoryType_];
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v89 = sub_257D0F93C;
    v90 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_257D47A84;
    v88 = &block_descriptor_25;
    v39 = _Block_copy(&aBlock);
    v40 = v9;

    [v40 setAccessibilityLabelBlock_];
    _Block_release(v39);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v89 = sub_257D0F944;
    v90 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_257D0B9D8;
    v88 = &block_descriptor_29_0;
    v42 = _Block_copy(&aBlock);

    [v40 setAccessibilityActivationPointBlock_];
    _Block_release(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_257ED9BF0;
    type metadata accessor for MAGUtilities();
    v44 = swift_getObjCClassFromMetadata();
    v45 = [objc_opt_self() bundleForClass_];
    v46 = sub_257ECF4C0();
    v47 = sub_257ECF4C0();
    v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

    if (!v48)
    {
      sub_257ECF500();
      v48 = sub_257ECF4C0();
    }

    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = objc_allocWithZone(MEMORY[0x277D75088]);
    v89 = sub_257D0F94C;
    v90 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_257D96328;
    v88 = &block_descriptor_33_2;
    v51 = _Block_copy(&aBlock);
    sub_257ECC3F0();
    v52 = [v50 initWithName:v48 actionHandler:v51];

    _Block_release(v51);

    *(v43 + 32) = v52;
    sub_257BD2C2C(0, &qword_281543E70);
    v53 = sub_257ECF7F0();

    [v40 setAccessibilityCustomActions_];

    v6 = v83;
    if ((sub_257ECF030() & 1) == 0)
    {
      return v9;
    }

    goto LABEL_40;
  }

  v28 = sub_257ECF4C0();
  v29 = sub_257ECCE30();
  v9 = [a1 dequeueReusableCellWithIdentifier:v28 forIndexPath:v29];

  v30 = [v9 textLabel];
  if (v30)
  {
    v31 = v30;
    v32 = sub_257ECF4C0();
    [v31 setText_];
  }

  v33 = [v9 textLabel];
  if (v33)
  {
    v34 = v33;
    [v33 setNumberOfLines_];
  }

  v35 = [v9 textLabel];
  if (v35)
  {
    v36 = v35;
    [v35 setLineBreakMode_];
  }

  [v9 setEditingAccessoryType_];
  [v9 setShowsReorderControl_];
  return v9;
}

uint64_t sub_257D0B6C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong editingStyle];
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

double sub_257D0B80C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return *MEMORY[0x277CBF348];
  }

  v1 = Strong;
  v2 = [Strong subviews];
  sub_257BD2C2C(0, &unk_281543E00);
  v3 = sub_257ECF810();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = 0;
      v6 = *MEMORY[0x277D76548];
      while ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C72E20](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_13:
          __break(1u);
          return *MEMORY[0x277CBF348];
        }

LABEL_8:
        v9 = v7;
        if ((v6 & ~[v9 accessibilityTraits]) == 0)
        {

          [v9 accessibilityActivationPoint];
          v10 = v11;

          goto LABEL_19;
        }

        ++v5;
        if (v8 == v4)
        {
          goto LABEL_18;
        }
      }

      if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_17:
      v4 = sub_257ED0210();
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    v7 = *(v3 + 8 * v5 + 32);
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

LABEL_18:

  v10 = *MEMORY[0x277CBF348];
LABEL_19:

  return v10;
}