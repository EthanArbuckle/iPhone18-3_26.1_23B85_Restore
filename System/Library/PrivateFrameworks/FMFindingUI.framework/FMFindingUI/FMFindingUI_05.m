id sub_24A579790()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticCapability;
  *&v0[v1] = [objc_opt_self() capabilitiesForHardware];
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink] = 0;
  v2 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastRenderTime];
  *v2 = 0;
  v2[8] = 1;
  v3 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticLastPlayTimestamp];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext];
  *v6 = 0u;
  v6[1] = 0u;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern] = 0;
  v7 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity];
  *v7 = 0;
  v7[4] = 1;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap1HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap2HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap3HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap4HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap5HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_connectedHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_buildHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_scatterHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadOffHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachOffHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_preNearbyHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelIncreaseHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelDecreaseHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_farNearHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_farHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_pulseViewPattern] = 0;
  v8 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp];
  *v8 = 0;
  v8[8] = 1;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer] = 0;
  v9 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactor];
  *v9 = 0;
  v9[4] = 1;
  v10 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticRampingFactorSpring;
  *&v0[v10] = sub_24A5B1B3C(0x3FF0000000000000, 0, 0, 1, 0, 1);
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_setup] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_startContinuousHapticWorkItem] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_restartContinuousHapticWorkItem] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_enablePlayingAheadHaptic] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactorLogCounter] = 0;
  v11 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastLoggedContinuousHapticFactor];
  *v11 = 0;
  v11[4] = 1;
  v12 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
  v13 = type metadata accessor for FMR1HapticsController();
  *v12 = 0;
  v12[1] = 0;
  v24.receiver = v0;
  v24.super_class = v13;
  v14 = objc_msgSendSuper2(&v24, sel_init);
  v15 = qword_27EF4E9A0;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C118);
  v18 = sub_24A62E2F4();
  v19 = sub_24A62EF64();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMR1HaptiCtrl%@: init", v20, 0xCu);
    sub_24A50D6A4(v21, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v21, -1, -1);
    MEMORY[0x24C21BBE0](v20, -1, -1);
  }

  return v16;
}

id sub_24A579BE4()
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
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMR1HaptiCtrl%s: deinit", v5, 0xCu);
    sub_24A508C54(v6);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v12 = type metadata accessor for FMR1HapticsController();
  v15.receiver = v2;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

uint64_t sub_24A57A06C(uint64_t a1, unint64_t a2, int a3)
{
  v48 = a3;
  v6 = sub_24A62E0F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  type metadata accessor for FMR1HapticsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = a2;
  v17 = sub_24A62EBE4();
  v18 = sub_24A62EBE4();
  v49 = v15;
  v19 = [v15 URLForResource:v17 withExtension:v18];

  if (!v19)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v21 = sub_24A62E314();
    sub_24A506EB8(v21, qword_27EF5C118);

    v22 = v3;
    v23 = sub_24A62E2F4();
    v24 = sub_24A62EF64();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50 = v27;
      *v25 = 138412546;
      *(v25 + 4) = v22;
      *v26 = v22;
      *(v25 + 12) = 2080;
      v28 = v22;
      *(v25 + 14) = sub_24A509BA8(a1, v16, &v50);
      _os_log_impl(&dword_24A503000, v23, v24, "🧭 FMR1HaptiCtrl%@: unable to load '%s' haptic pattern", v25, 0x16u);
      sub_24A50D6A4(v26, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v26, -1, -1);
      sub_24A508C54(v27);
      MEMORY[0x24C21BBE0](v27, -1, -1);
      MEMORY[0x24C21BBE0](v25, -1, -1);
    }

    goto LABEL_8;
  }

  sub_24A62E0D4();

  type metadata accessor for FMR1HapticPattern();
  (*(v7 + 16))(v11, v13, v6);
  v20 = sub_24A5791E0(v11);
  if (!v20)
  {
    (*(v7 + 8))(v13, v6);
LABEL_8:

    return 0;
  }

  v47 = v20;
  v30 = v20;

  v31 = sub_24A5823AC(4, a1, v16);

  result = sub_24A62F1D4();
  if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = result;
  }

  if (v33 >> 14 < v31 >> 14)
  {
    __break(1u);
  }

  else
  {
    v34 = sub_24A62F1E4();
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v41 = MEMORY[0x24C21A580](v34, v36, v38, v40);
    v43 = v42;

    (*(v7 + 8))(v13, v6);
    v44 = &v30[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name];
    v45 = *&v30[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name + 8];
    *v44 = v41;
    v44[1] = v43;

    v30[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_isTap] = v48 & 1;

    return v47;
  }

  return result;
}

void sub_24A57A50C()
{
  v97 = *MEMORY[0x277D85DE8];
  if (v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_setup])
  {
    goto LABEL_16;
  }

  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_setup] = 1;
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
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMR1HaptiCtrl%@: setting up haptic engine", v5, 0xCu);
    sub_24A50D6A4(v6, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  sub_24A508FA4(&qword_27EF507B0, &unk_24A636E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A636580;
  v9 = *MEMORY[0x277CBF628];
  *(inited + 32) = *MEMORY[0x277CBF628];
  v10 = MEMORY[0x277D837D0];
  *(inited + 40) = 0x746C7561666544;
  *(inited + 48) = 0xE700000000000000;
  v11 = *MEMORY[0x277CBF620];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = *MEMORY[0x277CBF698];
  type metadata accessor for CHHapticPowerUsage(0);
  *(inited + 80) = v12;
  v13 = *MEMORY[0x277CBF630];
  *(inited + 104) = v14;
  *(inited + 112) = v13;
  v15 = *MEMORY[0x277CBF6A0];
  type metadata accessor for CHHapticUsageCategory(0);
  *(inited + 144) = v16;
  *(inited + 120) = v15;
  v17 = v9;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v15;
  v22 = sub_24A59C6F8(inited);
  swift_setDeallocating();
  sub_24A508FA4(&qword_27EF507B8, &qword_24A638320);
  swift_arrayDestroy();
  sub_24A57B06C(v22);

  v23 = objc_allocWithZone(MEMORY[0x277CBF6B0]);
  v24 = sub_24A62EB74();

  aBlock = 0;
  v25 = [v23 initWithAudioSession:0 sessionIsShared:0 options:v24 error:&aBlock];

  v26 = aBlock;
  if (v25)
  {
    v27 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
    *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine] = v25;
    v28 = v25;
    v29 = v26;

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = sub_24A582FAC;
    v96 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = sub_24A5A8458;
    v94 = &unk_285DA60A0;
    v31 = _Block_copy(&aBlock);

    [v28 setResetHandler:v31];
    _Block_release(v31);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = sub_24A582FB4;
    v96 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = sub_24A57B880;
    v94 = &unk_285DA60C8;
    v33 = _Block_copy(&aBlock);

    [v28 setStoppedHandler:v33];
    _Block_release(v33);
    [v28 setPlaysHapticsOnly:0];
    [v28 setAutoShutdownEnabled:1];
    [v28 setIsMutedForAudio:0];
    [v28 setFollowAudioRoute:0];
    [v28 startWithCompletionHandler:0];
    v34 = v2;
    v35 = sub_24A62E2F4();
    v36 = sub_24A62EF64();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&dword_24A503000, v35, v36, "🧭 FMR1HaptiCtrl%@: started haptic engine", v37, 0xCu);
      sub_24A50D6A4(v38, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v38, -1, -1);
      MEMORY[0x24C21BBE0](v37, -1, -1);
    }
  }

  else
  {
    v40 = aBlock;
    v41 = sub_24A62E084();

    swift_willThrow();
    v42 = v2;
    v43 = v41;
    v28 = sub_24A62E2F4();
    v44 = sub_24A62EF64();

    if (!os_log_type_enabled(v28, v44))
    {

      goto LABEL_13;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    aBlock = v90;
    *v45 = 138412546;
    *(v45 + 4) = v42;
    *v46 = v42;
    *(v45 + 12) = 2080;
    swift_getErrorValue();
    v47 = v42;
    v48 = sub_24A62F6A4();
    v50 = sub_24A509BA8(v48, v49, &aBlock);

    *(v45 + 14) = v50;
    _os_log_impl(&dword_24A503000, v28, v44, "🧭 FMR1HaptiCtrl%@: failed creating haptic engine: %s", v45, 0x16u);
    sub_24A50D6A4(v46, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v46, -1, -1);
    sub_24A508C54(v90);
    MEMORY[0x24C21BBE0](v90, -1, -1);
    MEMORY[0x24C21BBE0](v45, -1, -1);
  }

LABEL_13:
  v51 = sub_24A57A06C(0xD000000000000011, 0x800000024A63FDD0, 1);
  v52 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap1HapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap1HapticPattern] = v51;

  v53 = sub_24A57A06C(0xD000000000000011, 0x800000024A63FDF0, 1);
  v54 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap2HapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap2HapticPattern] = v53;

  v55 = sub_24A57A06C(0xD000000000000013, 0x800000024A63FE10, 1);
  v56 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap3HapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap3HapticPattern] = v55;

  v57 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FE30, 1);
  v58 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap4HapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap4HapticPattern] = v57;

  v59 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FE50, 1);
  v60 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap5HapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap5HapticPattern] = v59;

  v61 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FE70, 0);
  v62 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_connectedHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_connectedHapticPattern] = v61;

  v63 = sub_24A57A06C(0xD000000000000014, 0x800000024A63FE90, 0);
  v64 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_buildHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_buildHapticPattern] = v63;

  v65 = sub_24A57A06C(0xD000000000000016, 0x800000024A63FEB0, 0);
  v66 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_scatterHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_scatterHapticPattern] = v65;

  v67 = sub_24A57A06C(0x6165684131524D46, 0xEE00393833422D64, 1);
  v68 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadHapticPattern] = v67;

  v69 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FED0, 0);
  v70 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadOffHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadOffHapticPattern] = v69;

  v71 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FEF0, 0);
  v72 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachHapticPattern] = v71;

  v73 = sub_24A57A06C(0xD000000000000016, 0x800000024A63FF10, 0);
  v74 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachOffHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachOffHapticPattern] = v73;

  v75 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FF30, 0);
  v76 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_preNearbyHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_preNearbyHapticPattern] = v75;

  v77 = sub_24A57A06C(0x7261654E31524D46, 0xEF393833422D7962, 0);
  v78 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticPattern] = v77;

  v79 = sub_24A57A06C(0x462D495353524D46, 0xEF7261654E2D7261, 0);
  v80 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_farNearHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_farNearHapticPattern] = v79;

  v81 = sub_24A57A06C(0xD000000000000015, 0x800000024A63FF50, 0);
  v82 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelIncreaseHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelIncreaseHapticPattern] = v81;

  v83 = sub_24A57A06C(0xD000000000000015, 0x800000024A63FF70, 0);
  v84 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelDecreaseHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelDecreaseHapticPattern] = v83;

  v85 = [objc_opt_self() displayLinkWithTarget:v2 selector:sel_hapticDisplayLinkUpdateWithDisplaylink_];
  v86 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink] = v85;
  v87 = v85;

  if (v87)
  {
    v88 = [objc_opt_self() currentRunLoop];
    [v87 addToRunLoop:v88 forMode:*MEMORY[0x277CBE738]];
  }

  sub_24A57B9E0();
LABEL_16:
  v89 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A57B06C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_24A508FA4(&unk_27EF507C0, &qword_24A636E20);
    v2 = sub_24A62F494();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_24A50A248(*(a1 + 56) + 32 * v13, v35 + 8);
    *&v35[0] = v14;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v34 = v36;
    *&v32[0] = v14;
    type metadata accessor for CHHapticEngineOptionKey(0);
    v15 = v14;
    swift_dynamicCast();
    sub_24A582FBC((v33 + 8), v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24A582FBC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24A582FBC(v31, v32);
    v16 = *(v2 + 40);
    result = sub_24A62F324();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_24A582FBC(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_24A57B334()
{
  v26[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine);
  if (!v2)
  {
    goto LABEL_5;
  }

  v26[0] = 0;
  if ([v2 startAndReturnError_])
  {
    v3 = v26[0];
LABEL_5:
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
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v1;
      v10 = v5;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1HaptiCtrl%@: restarted haptic engine", v8, 0xCu);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  v12 = v26[0];
  v13 = sub_24A62E084();

  swift_willThrow();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24A62E314();
  sub_24A506EB8(v14, qword_27EF5C118);
  v15 = v1;
  v16 = v13;
  v17 = sub_24A62E2F4();
  v18 = sub_24A62EF64();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = v21;
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *v20 = v1;
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v22 = v15;
    v23 = sub_24A62F6A4();
    v25 = sub_24A509BA8(v23, v24, v26);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1HaptiCtrl%@: failed restarting haptic engine: %s", v19, 0x16u);
    sub_24A50D6A4(v20, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v20, -1, -1);
    sub_24A508C54(v21);
    MEMORY[0x24C21BBE0](v21, -1, -1);
    MEMORY[0x24C21BBE0](v19, -1, -1);
  }

  else
  {
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_24A57B6F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = v3;
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v3;
      *(v8 + 12) = 2048;
      *(v8 + 14) = a1;
      v10 = v5;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1HaptiCtrl%@: stopped haptic engine (%ld)", v8, 0x16u);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      v5 = v6;
      v6 = v10;
    }
  }
}

uint64_t sub_24A57B880(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_24A57B8D4()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_setup;
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_setup) == 1)
  {
    sub_24A57BFC4();
    v2 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink;
    v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = v3;
      v6 = [v4 currentRunLoop];
      [v5 removeFromRunLoop:v6 forMode:*MEMORY[0x277CBE738]];

      v7 = *(v0 + v2);
    }

    else
    {
      v7 = 0;
    }

    [v7 invalidate];
    v8 = *(v0 + v2);
    *(v0 + v2) = 0;

    v9 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine;
    v10 = *(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine);
    if (v10)
    {
      [v10 stopWithCompletionHandler_];
      v11 = *(v0 + v9);
    }

    else
    {
      v11 = 0;
    }

    *(v0 + v9) = 0;

    *(v0 + v1) = 0;
  }
}

void sub_24A57B9E0()
{
  v57[1] = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v1)
  {
    v2 = v0;
    v3 = *MEMORY[0x277CBF638];
    v4 = objc_allocWithZone(MEMORY[0x277CBF6C0]);
    v5 = v1;
    LODWORD(v6) = 0.5;
    v7 = [v4 initWithParameterID:v3 value:v6];
    v8 = *MEMORY[0x277CBF640];
    v9 = objc_allocWithZone(MEMORY[0x277CBF6C0]);
    LODWORD(v10) = 0.5;
    v11 = [v9 initWithParameterID:v8 value:v10];
    v12 = *MEMORY[0x277CBF648];
    sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24A633810;
    *(v13 + 32) = v7;
    *(v13 + 40) = v11;
    v14 = objc_allocWithZone(MEMORY[0x277CBF6B8]);
    sub_24A50D7EC(0, &qword_27EF507A0, 0x277CBF6C0);
    v15 = v7;
    v16 = v11;
    v17 = sub_24A62ED54();

    v18 = [v14 initWithEventType:v12 parameters:v17 relativeTime:0.0 duration:100.0];

    type metadata accessor for FMR1HapticPattern();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24A6339F0;
    *(v19 + 32) = v18;
    v20 = v18;
    v21 = sub_24A578B24();
    v34 = *&v21[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name + 8];
    *&v21[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name] = xmmword_24A636D70;
    v35 = v21;

    v36 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPattern];
    *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPattern] = v35;
    v37 = v35;

    v57[0] = 0;
    v38 = [v5 createPlayerWithPattern:v37 error:v57];
    v39 = v57[0];
    if (v38)
    {
      v40 = v20;
      v55 = v15;
      v41 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
      *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer] = v38;
      v42 = v39;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v43 = sub_24A62E314();
      sub_24A506EB8(v43, qword_27EF5C118);
      v44 = v2;
      v45 = sub_24A62E2F4();
      v46 = sub_24A62EF64();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = v44;
        *v48 = v44;
        v49 = v44;
        _os_log_impl(&dword_24A503000, v45, v46, "🧭 FMR1HaptiCtrl%@: created continuous haptic player", v47, 0xCu);
        sub_24A50D6A4(v48, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v48, -1, -1);
        MEMORY[0x24C21BBE0](v47, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v51 = v57[0];
      v52 = sub_24A62E084();

      swift_willThrow();
      v56 = v5;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v22 = sub_24A62E314();
      sub_24A506EB8(v22, qword_27EF5C118);
      v23 = v2;
      v24 = v52;
      v25 = sub_24A62E2F4();
      v26 = sub_24A62EF64();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = v15;
        v28 = swift_slowAlloc();
        v53 = v20;
        v29 = swift_slowAlloc();
        v57[0] = v29;
        *v27 = 138412546;
        *(v27 + 4) = v23;
        *v28 = v23;
        *(v27 + 12) = 2080;
        swift_getErrorValue();
        v30 = v23;
        v31 = sub_24A62F6A4();
        v33 = sub_24A509BA8(v31, v32, v57);

        *(v27 + 14) = v33;
        _os_log_impl(&dword_24A503000, v25, v26, "🧭 FMR1HaptiCtrl%@: failed creating continuous haptic player: %s", v27, 0x16u);
        sub_24A50D6A4(v28, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v28, -1, -1);
        sub_24A508C54(v29);
        MEMORY[0x24C21BBE0](v29, -1, -1);
        MEMORY[0x24C21BBE0](v27, -1, -1);
      }

      else
      {
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A57BFC4()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer;
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer);
  if (v2)
  {
    v9[0] = 0;
    if ([v2 stopAtTime:v9 error:0.0])
    {
      v3 = v9[0];
    }

    else
    {
      v4 = v9[0];
      v5 = sub_24A62E084();

      swift_willThrow();
    }
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;
  result = swift_unknownObjectRelease();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24A57C088(uint64_t a1)
{
  v50 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = sub_24A62EB14();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - v7;
  v9 = sub_24A62EA94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v11 = sub_24A62E314();
  sub_24A506EB8(v11, qword_27EF5C118);
  v12 = v1;
  v13 = sub_24A62E2F4();
  v14 = sub_24A62EF64();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1HaptiCtrl%@: playing continuous haptic", v15, 0xCu);
    sub_24A50D6A4(v16, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v16, -1, -1);
    MEMORY[0x24C21BBE0](v15, -1, -1);
  }

  v18 = *&v12[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
  if (v18)
  {
    aBlock[0] = 0;
    if (![v18 startAtTime:aBlock error:0.0])
    {
      v37 = aBlock[0];
      v38 = sub_24A62E084();

      swift_willThrow();
      v39 = v12;
      v40 = v38;
      v41 = sub_24A62E2F4();
      v42 = sub_24A62EF64();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v43 = 138412546;
        *(v43 + 4) = v39;
        *v44 = v39;
        *(v43 + 12) = 2080;
        swift_getErrorValue();
        v46 = v39;
        v47 = sub_24A62F6A4();
        v49 = sub_24A509BA8(v47, v48, aBlock);

        *(v43 + 14) = v49;
        _os_log_impl(&dword_24A503000, v41, v42, "🧭 FMR1HaptiCtrl%@: failed starting continuous haptic player: %s", v43, 0x16u);
        sub_24A50D6A4(v44, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v44, -1, -1);
        sub_24A508C54(v45);
        MEMORY[0x24C21BBE0](v45, -1, -1);
        MEMORY[0x24C21BBE0](v43, -1, -1);
      }

      else
      {
      }

      goto LABEL_13;
    }

    v19 = aBlock[0];
  }

  v12[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
  v20 = *&v12[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
  if (v20)
  {
    v21 = *&v12[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
    v22 = *&v12[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPattern];
    sub_24A5173CC(*&v12[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler]);
    v23 = v22;
    v20(v22, v50);
    sub_24A50D354(v20);
  }

  v24 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_restartContinuousHapticWorkItem;
  if (*&v12[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_restartContinuousHapticWorkItem])
  {
    v25 = *&v12[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_restartContinuousHapticWorkItem];

    sub_24A62EB34();
  }

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A582FA4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA6078;
  _Block_copy(aBlock);
  v53 = MEMORY[0x277D84F90];
  sub_24A582FCC(&qword_27EF4F970, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  v27 = sub_24A62EB44();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_24A62EB24();

  v31 = *&v12[v24];
  *&v12[v24] = v30;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v32 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v33 = *(v51 + 8);
  v34 = v6;
  v35 = v52;
  v33(v34, v52);
  sub_24A62EFE4();

  v33(v8, v35);
LABEL_13:
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A57C71C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v2 = sub_24A62E314();
    sub_24A506EB8(v2, qword_27EF5C118);
    v3 = v1;
    v4 = sub_24A62E2F4();
    v5 = sub_24A62EF64();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_24A503000, v4, v5, "🧭 FMR1HaptiCtrl%@: will restart continuous haptic", v6, 0xCu);
      sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    memset(v9, 0, sizeof(v9));
    sub_24A57C088(v9);

    return sub_24A50D6A4(v9, &unk_27EF50780, &qword_24A638470);
  }

  return result;
}

void sub_24A57C8B4()
{
  v1 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  if (*&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_restartContinuousHapticWorkItem])
  {

    sub_24A62EB34();
  }

  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
  if (!v2)
  {
    goto LABEL_6;
  }

  v26[0] = 0;
  if ([v2 stopAtTime:v26 error:0.0])
  {
    v3 = v26[0];
LABEL_6:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = v0;
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1HaptiCtrl%@: stopped continuous haptic player", v8, 0xCu);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    goto LABEL_11;
  }

  v12 = v26[0];
  v13 = sub_24A62E084();

  swift_willThrow();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24A62E314();
  sub_24A506EB8(v14, qword_27EF5C118);
  v15 = v1;
  v16 = v13;
  v17 = sub_24A62E2F4();
  v18 = sub_24A62EF64();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = v21;
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *v20 = v15;
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v22 = v15;
    v23 = sub_24A62F6A4();
    v25 = sub_24A509BA8(v23, v24, v26);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1HaptiCtrl%@: failed stopping continuous haptic player: %s", v19, 0x16u);
    sub_24A50D6A4(v20, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v20, -1, -1);
    sub_24A508C54(v21);
    MEMORY[0x24C21BBE0](v21, -1, -1);
    MEMORY[0x24C21BBE0](v19, -1, -1);
  }

  else
  {
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_24A57CC58(unint64_t a1, float a2)
{
  v4 = v2;
  v5 = a1;
  v7 = &v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactor];
  *v7 = a2;
  *(v7 + 4) = 0;
  if (a1 != 2 && (a1 & 1) != 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticRampingFactorSpring];
    sub_24A55C6B4(0.0);
    *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
  }

  v9 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticRampingFactorSpring];
  v10 = v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
  swift_beginAccess();
  v11 = v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  v12 = *(v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  if (*(v10 + 280) + v12 == 1.79769313e308)
  {
    sub_24A55C6B4(1.0);
    *(v9 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v12 = *(v11 + 40);
  }

  v13 = 1.0 - v12;
  *(v10 + 280) = v13;
  *(v10 + 240) = v13;
  *(v10 + 248) = 0;
  v14 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactorLogCounter;
  v15 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactorLogCounter];
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v15 + 0x888888888888888, 2) > 0x444444444444444uLL)
  {
    goto LABEL_20;
  }

  v3 = &v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastLoggedContinuousHapticFactor];
  v16 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastLoggedContinuousHapticFactor];
  if (v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastLoggedContinuousHapticFactor + 4])
  {
    v16 = 3.4028e38;
  }

  if (vabds_f32(a2, v16) < 0.01)
  {
    goto LABEL_19;
  }

  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_24A62F384();
  MEMORY[0x24C21A5D0](0x1000000000000012, 0x800000024A63FD70);
  v17 = [v4 description];
  v18 = sub_24A62EC14();
  v20 = v19;

  MEMORY[0x24C21A5D0](v18, v20);

  MEMORY[0x24C21A5D0](0x1000000000000034, 0x800000024A63FD90);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v21 = swift_allocObject();
  v22 = v21;
  *(v21 + 16) = xmmword_24A633A00;
  if (v5 == 2 || (v5 & 1) == 0)
  {
    v24 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v23 = 0xE800000000000000;
    v24 = 0x20676E69706D6172;
  }

  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_24A508FEC();
  *(v22 + 32) = v24;
  *(v22 + 40) = v23;
  v25 = MEMORY[0x277D83B08];
  *(v22 + 96) = MEMORY[0x277D83A90];
  *(v22 + 104) = v25;
  *(v22 + 72) = a2 * 100.0;
  v10 = sub_24A62EC24();
  v5 = v26;

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v27 = sub_24A62E314();
    sub_24A506EB8(v27, qword_27EF5C118);

    v28 = sub_24A62E2F4();
    v29 = sub_24A62EF64();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34[0] = v31;
      *v30 = 136315138;
      v10 = sub_24A509BA8(v10, v5, v34);

      *(v30 + 4) = v10;
      _os_log_impl(&dword_24A503000, v28, v29, "%s", v30, 0xCu);
      sub_24A508C54(v31);
      MEMORY[0x24C21BBE0](v31, -1, -1);
      MEMORY[0x24C21BBE0](v30, -1, -1);
    }

    else
    {
    }

LABEL_19:
    *v3 = a2;
    *(v3 + 4) = 0;
    v15 = *&v4[v14];
LABEL_20:
    v32 = __OFADD__(v15, 1);
    v33 = v15 + 1;
    if (!v32)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  *&v4[v14] = v33;
}

void sub_24A57D08C()
{
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CBF610];
  v2 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
  LODWORD(v3) = 1.0;
  v4 = [v2 initWithParameterID:v1 value:v3 relativeTime:0.0];
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
  if (!v5)
  {
    goto LABEL_4;
  }

  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A6339F0;
  *(v6 + 32) = v4;
  sub_24A50D7EC(0, &qword_27EF50798, 0x277CBF6A8);
  swift_unknownObjectRetain();
  v7 = v4;
  v8 = sub_24A62ED54();

  v32[0] = 0;
  v9 = [v5 sendParameters:v8 atTime:v32 error:0.0];
  swift_unknownObjectRelease();

  if (v9)
  {
    v10 = v32[0];
LABEL_4:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v11 = sub_24A62E314();
    sub_24A506EB8(v11, qword_27EF5C118);
    v12 = v0;
    v13 = sub_24A62E2F4();
    v14 = sub_24A62EF64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1HaptiCtrl%@: reset continuous haptic player intensity to 1.0", v15, 0xCu);
      sub_24A50D6A4(v16, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v16, -1, -1);
      MEMORY[0x24C21BBE0](v15, -1, -1);
    }

    goto LABEL_9;
  }

  v19 = v32[0];
  v20 = sub_24A62E084();

  swift_willThrow();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v21 = sub_24A62E314();
  sub_24A506EB8(v21, qword_27EF5C118);
  v22 = v0;
  v23 = v20;
  v4 = sub_24A62E2F4();
  v24 = sub_24A62EF64();

  if (!os_log_type_enabled(v4, v24))
  {

    goto LABEL_10;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v32[0] = v27;
  *v25 = 138412546;
  *(v25 + 4) = v22;
  *v26 = v22;
  *(v25 + 12) = 2080;
  swift_getErrorValue();
  v28 = v22;
  v29 = sub_24A62F6A4();
  v31 = sub_24A509BA8(v29, v30, v32);

  *(v25 + 14) = v31;
  _os_log_impl(&dword_24A503000, v4, v24, "🧭 FMR1HaptiCtrl%@: failed parametering continuous haptic player: %s", v25, 0x16u);
  sub_24A50D6A4(v26, &qword_27EF4FED0, &unk_24A635E00);
  MEMORY[0x24C21BBE0](v26, -1, -1);
  sub_24A508C54(v27);
  MEMORY[0x24C21BBE0](v27, -1, -1);
  MEMORY[0x24C21BBE0](v25, -1, -1);

LABEL_9:
LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_24A57D4E4()
{
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CBF610];
  v2 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
  LODWORD(v3) = 1058642330;
  v4 = [v2 initWithParameterID:v1 value:v3 relativeTime:0.0];
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
  if (!v5)
  {
    goto LABEL_4;
  }

  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A6339F0;
  *(v6 + 32) = v4;
  sub_24A50D7EC(0, &qword_27EF50798, 0x277CBF6A8);
  swift_unknownObjectRetain();
  v7 = v4;
  v8 = sub_24A62ED54();

  v32[0] = 0;
  v9 = [v5 sendParameters:v8 atTime:v32 error:0.0];
  swift_unknownObjectRelease();

  if (v9)
  {
    v10 = v32[0];
LABEL_4:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v11 = sub_24A62E314();
    sub_24A506EB8(v11, qword_27EF5C118);
    v12 = v0;
    v13 = sub_24A62E2F4();
    v14 = sub_24A62EF64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 0x3FE3333340000000;
      v17 = v12;
      _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1HaptiCtrl%@: reset continuous haptic player intensity to %f", v15, 0x16u);
      sub_24A50D6A4(v16, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v16, -1, -1);
      MEMORY[0x24C21BBE0](v15, -1, -1);
    }

    goto LABEL_9;
  }

  v19 = v32[0];
  v20 = sub_24A62E084();

  swift_willThrow();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v21 = sub_24A62E314();
  sub_24A506EB8(v21, qword_27EF5C118);
  v22 = v0;
  v23 = v20;
  v4 = sub_24A62E2F4();
  v24 = sub_24A62EF64();

  if (!os_log_type_enabled(v4, v24))
  {

    goto LABEL_10;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v32[0] = v27;
  *v25 = 138412546;
  *(v25 + 4) = v22;
  *v26 = v22;
  *(v25 + 12) = 2080;
  swift_getErrorValue();
  v28 = v22;
  v29 = sub_24A62F6A4();
  v31 = sub_24A509BA8(v29, v30, v32);

  *(v25 + 14) = v31;
  _os_log_impl(&dword_24A503000, v4, v24, "🧭 FMR1HaptiCtrl%@: failed parametering continuous haptic player: %s", v25, 0x16u);
  sub_24A50D6A4(v26, &qword_27EF4FED0, &unk_24A635E00);
  MEMORY[0x24C21BBE0](v26, -1, -1);
  sub_24A508C54(v27);
  MEMORY[0x24C21BBE0](v27, -1, -1);
  MEMORY[0x24C21BBE0](v25, -1, -1);

LABEL_9:
LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
}

id sub_24A57D95C(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_enablePlayingAheadHaptic;
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_enablePlayingAheadHaptic) == 1)
  {
    memset(v24, 0, sizeof(v24));
    sub_24A5803DC(v24);
    sub_24A50D6A4(v24, &unk_27EF50780, &qword_24A638470);
    *(v1 + v4) = 0;
  }

  else if ((*(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod + 8) & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod);
    v6 = v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticLastPlayTimestamp;
    if (*(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticLastPlayTimestamp + 8) & 1) != 0 || (v7 = v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay, (*(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay + 8)))
    {
      [a1 timestamp];
      *v6 = v8;
      *(v6 + 8) = 0;
      v9 = v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay;
      *v9 = v5;
      *(v9 + 8) = 0;
    }

    else
    {
      v17 = *(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod);
      v18 = *v7;
      v19 = *v6;
      [a1 timestamp];
      v21 = v20 - v19;
      if (v18 > v5)
      {
        v22 = v18;
      }

      else
      {
        v22 = v5;
      }

      if (v22 > v21)
      {
        goto LABEL_8;
      }

      [a1 timestamp];
      *v6 = v23;
      *(v6 + 8) = 0;
      *v7 = v5;
      *(v7 + 8) = 0;
    }

    sub_24A5828AC();
  }

LABEL_8:
  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern) == 1 && (*(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastRenderTime + 8) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactor + 4) & 1) == 0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactor);
    v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastRenderTime);
    [a1 timestamp];
    v13 = *(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticRampingFactorSpring);
    sub_24A55C858(v12 - v11);
    *(v13 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    sub_24A58245C(v10);
  }

  result = [a1 timestamp];
  v15 = v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastRenderTime;
  *v15 = v16;
  *(v15 + 8) = 0;
  return result;
}

float sub_24A57DBDC(double a1)
{
  if (a1 < 0.2)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap1HapticPattern;
LABEL_7:
    v4 = *(v1 + v3);
    v5 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern;
    v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern);
    goto LABEL_8;
  }

  if (a1 < 0.4)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap2HapticPattern;
    goto LABEL_7;
  }

  if (a1 < 0.6)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap3HapticPattern;
    goto LABEL_7;
  }

  v5 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern;
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern);
  if (a1 >= 0.8)
  {
    v12 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap5HapticPattern;
  }

  else
  {
    v12 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap4HapticPattern;
  }

  v4 = *(v1 + v12);
LABEL_8:
  *(v1 + v5) = v4;
  v7 = v4;

  v8 = 1.0 - a1;
  v9 = a1;
  result = (v9 * 0.65) + (v8 * 0.4);
  v11 = v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity;
  *v11 = result;
  *(v11 + 4) = 0;
  return result;
}

void sub_24A57DCF4(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  sub_24A57DDE4(a1, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_buildHapticPattern, "🧭 FMR1HaptiCtrl%@: playing build haptic", "🧭 FMR1HaptiCtrl%@: failed playing build haptic (%s)");
}

void sub_24A57DD6C(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  sub_24A57DDE4(a1, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_scatterHapticPattern, "🧭 FMR1HaptiCtrl%@: playing scatter haptic", "🧭 FMR1HaptiCtrl%@: failed playing scatter haptic (%s)");
}

void sub_24A57DDE4(uint64_t a1, uint64_t *a2, void *a3, const char *a4, const char *a5)
{
  v10 = v5;
  v77 = *MEMORY[0x277D85DE8];
  v12 = &v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v12 = 0;
  v12[8] = 1;
  memset(v76, 0, sizeof(v76));
  v13 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v76, &v5[v13]);
  swift_endAccess();
  sub_24A57FD10();
  v14 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();

    v15 = *&v5[v14];
  }

  *&v5[v14] = 0;

  v16 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {
    v17 = *&v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem];

    sub_24A62EB34();

    v18 = *&v5[v16];
  }

  *&v5[v16] = 0;

  v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v19 = *a2;
  if (*&v5[*a2])
  {
    v20 = *&v5[*a2];

    sub_24A62EB34();

    v21 = *&v5[v19];
  }

  *&v5[v19] = 0;

  v22 = *&v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v22)
  {
    v23 = *&v5[*a3];
    if (v23)
    {
      *&v76[0] = 0;
      v24 = v23;
      v25 = v22;
      v26 = [v25 createPlayerWithPattern:v24 error:v76];
      if (v26)
      {
        v27 = v26;
        v75 = a1;
        v28 = qword_27EF4E9A0;
        v29 = *&v76[0];
        if (v28 != -1)
        {
          swift_once();
        }

        v30 = sub_24A62E314();
        sub_24A506EB8(v30, qword_27EF5C118);
        v31 = v10;
        v32 = sub_24A62E2F4();
        v33 = sub_24A62EF64();

        v74 = v27;
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = v23;
          v36 = v24;
          v37 = v25;
          v38 = a5;
          v39 = swift_slowAlloc();
          *v34 = 138412290;
          *(v34 + 4) = v31;
          *v39 = v31;
          v40 = v31;
          _os_log_impl(&dword_24A503000, v32, v33, a4, v34, 0xCu);
          sub_24A50D6A4(v39, &qword_27EF4FED0, &unk_24A635E00);
          v41 = v39;
          a5 = v38;
          v25 = v37;
          v24 = v36;
          v23 = v35;
          MEMORY[0x24C21BBE0](v41, -1, -1);
          v42 = v34;
          v27 = v74;
          MEMORY[0x24C21BBE0](v42, -1, -1);
        }

        *&v76[0] = 0;
        v43 = [v27 startAtTime:v76 error:0.0];
        v44 = *&v76[0];
        if (v43)
        {
          v31[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v45 = v44;
          v46 = v75;
        }

        else
        {
          v72 = a5;
          v49 = *&v76[0];
          v50 = sub_24A62E084();

          swift_willThrow();
          v51 = v31;
          v52 = v50;
          v53 = sub_24A62E2F4();
          v54 = sub_24A62EF64();

          if (os_log_type_enabled(v53, v54))
          {
            v71 = v53;
            v55 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *&v76[0] = v73;
            *v55 = 138412546;
            *(v55 + 4) = v51;
            *v70 = v51;
            *(v55 + 12) = 2080;
            swift_getErrorValue();
            v56 = v51;
            v57 = sub_24A62F6A4();
            v59 = sub_24A509BA8(v57, v58, v76);

            *(v55 + 14) = v59;
            _os_log_impl(&dword_24A503000, v71, v54, v72, v55, 0x16u);
            sub_24A50D6A4(v70, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v70, -1, -1);
            sub_24A508C54(v73);
            MEMORY[0x24C21BBE0](v73, -1, -1);
            MEMORY[0x24C21BBE0](v55, -1, -1);
          }

          else
          {
          }

          v46 = v75;
        }

        v60 = *&v31[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v60)
        {
          v61 = *&v31[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v62 = v24;
          sub_24A5173CC(v60);
          v60(v23, v46);
          sub_24A50D354(v60);
        }

        v63 = *&v31[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink];
        if (v63)
        {
          v64 = v63;
          [v64 timestamp];
          v66 = v65;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v66 = 0;
        }

        v67 = &v31[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticLastPlayTimestamp];
        *v67 = v66;
        v67[8] = 0;
        v68 = &v31[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay];
        *v68 = 0x3FF0000000000000;
        v68[8] = 0;
      }

      else
      {
        v47 = *&v76[0];
        v48 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }

  v69 = *MEMORY[0x277D85DE8];
}

void sub_24A57E3EC(char a1, uint64_t a2)
{
  v3 = v2;
  v59 = *MEMORY[0x277D85DE8];
  v5 = &v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v5 = 0;
  v5[8] = 1;
  memset(v58, 0, sizeof(v58));
  v6 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v58, &v3[v6]);
  swift_endAccess();
  if ((a1 & 1) == 0)
  {
    sub_24A57FD10();
  }

  v7 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {
    v8 = *&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem];

    sub_24A62EB34();

    v9 = *&v3[v7];
  }

  *&v3[v7] = 0;

  v10 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {
    v11 = *&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem];

    sub_24A62EB34();

    v12 = *&v3[v10];
  }

  *&v3[v10] = 0;

  v13 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {
    v14 = *&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem];

    sub_24A62EB34();

    v15 = *&v3[v13];
  }

  *&v3[v13] = 0;

  v16 = *&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v16)
  {
    v17 = *&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachHapticPattern];
    if (v17)
    {
      *&v58[0] = 0;
      v18 = v17;
      v56 = v16;
      v19 = [v56 createPlayerWithPattern:v18 error:v58];
      if (v19)
      {
        v20 = v19;
        v21 = qword_27EF4E9A0;
        v22 = *&v58[0];
        if (v21 != -1)
        {
          swift_once();
        }

        v23 = sub_24A62E314();
        sub_24A506EB8(v23, qword_27EF5C118);
        v24 = v3;
        v25 = sub_24A62E2F4();
        v26 = sub_24A62EF64();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = v20;
          v29 = swift_slowAlloc();
          *v27 = 138412290;
          *(v27 + 4) = v24;
          *v29 = v24;
          v30 = v24;
          _os_log_impl(&dword_24A503000, v25, v26, "🧭 FMR1HaptiCtrl%@: playing arm's reach haptic", v27, 0xCu);
          sub_24A50D6A4(v29, &qword_27EF4FED0, &unk_24A635E00);
          v31 = v29;
          v20 = v28;
          MEMORY[0x24C21BBE0](v31, -1, -1);
          MEMORY[0x24C21BBE0](v27, -1, -1);
        }

        *&v58[0] = 0;
        v32 = [v20 startAtTime:v58 error:0.0];
        v33 = *&v58[0];
        if (v32)
        {
          v24[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v34 = v33;
        }

        else
        {
          v37 = *&v58[0];
          v38 = sub_24A62E084();

          swift_willThrow();
          v39 = v24;
          v40 = v38;
          v41 = sub_24A62E2F4();
          v42 = sub_24A62EF64();

          if (os_log_type_enabled(v41, v42))
          {
            v54 = v42;
            v43 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *&v58[0] = v55;
            buf = v43;
            *v43 = 138412546;
            *(v43 + 4) = v39;
            *v53 = v39;
            *(v43 + 12) = 2080;
            swift_getErrorValue();
            v44 = v39;
            v45 = sub_24A62F6A4();
            v47 = sub_24A509BA8(v45, v46, v58);

            *(buf + 14) = v47;
            _os_log_impl(&dword_24A503000, v41, v54, "🧭 FMR1HaptiCtrl%@: failed playing arm's reach haptic (%s)", buf, 0x16u);
            sub_24A50D6A4(v53, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v53, -1, -1);
            sub_24A508C54(v55);
            MEMORY[0x24C21BBE0](v55, -1, -1);
            MEMORY[0x24C21BBE0](buf, -1, -1);
          }

          else
          {
          }
        }

        v48 = *&v24[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v48)
        {
          v49 = *&v24[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v50 = v18;
          sub_24A5173CC(v48);
          v48(v17, a2);

          sub_24A50D354(v48);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v35 = *&v58[0];
        v36 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_24A57E970(uint64_t a1)
{
  v2 = v1;
  v108 = a1;
  v113 = *MEMORY[0x277D85DE8];
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A62EAF4();
  v105 = *(v12 - 8);
  v13 = *(v105 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v96 - v17;
  v19 = &v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v19 = 0;
  v19[8] = 1;
  aBlock = 0u;
  v110 = 0u;
  v20 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(&aBlock, &v2[v20]);
  swift_endAccess();
  sub_24A57FD10();
  v21 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {
    v22 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem];

    sub_24A62EB34();

    v23 = *&v2[v21];
  }

  *&v2[v21] = 0;

  v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v24 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {
    v25 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem];

    sub_24A62EB34();

    v26 = *&v2[v24];
  }

  *&v2[v24] = 0;

  v27 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {
    v28 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem];

    sub_24A62EB34();

    v29 = *&v2[v27];
  }

  *&v2[v27] = 0;

  sub_24A57D08C();
  v30 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v30)
  {
    v31 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticPattern];
    if (v31)
    {
      v100 = v4;
      v101 = v3;
      *&aBlock = 0;
      v32 = v31;
      v33 = v30;
      v34 = [v33 createPlayerWithPattern:v32 error:&aBlock];
      if (!v34)
      {
        v42 = aBlock;
        v43 = sub_24A62E084();

        swift_willThrow();
        goto LABEL_37;
      }

      v103 = v34;
      v102 = v32;
      v104 = v33;
      v35 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink];
      v98 = v31;
      if (v35)
      {
        v36 = aBlock;
        [v35 timestamp];
        v38 = v37;
        v39 = &v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp];
        v40 = &v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp + 8];
        if (*v40)
        {
          v41 = v104;
          if (v37 >= 2.0)
          {
            goto LABEL_24;
          }

          goto LABEL_19;
        }

        v41 = v104;
      }

      else
      {
        v39 = &v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp];
        v44 = v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp + 8];
        v45 = aBlock;
        v41 = v104;
        if (v44)
        {
LABEL_19:
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v46 = sub_24A62E314();
          sub_24A506EB8(v46, qword_27EF5C118);
          v47 = v2;
          v48 = sub_24A62E2F4();
          v49 = sub_24A62EF64();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            *v50 = 138412290;
            *(v50 + 4) = v47;
            *v51 = v47;
            v52 = v47;
            _os_log_impl(&dword_24A503000, v48, v49, "🧭 FMR1HaptiCtrl%@: not playing nearby haptic (we just played it)", v50, 0xCu);
            sub_24A50D6A4(v51, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v51, -1, -1);
            MEMORY[0x24C21BBE0](v50, -1, -1);
          }

          swift_unknownObjectRelease();
          goto LABEL_37;
        }

        v40 = v39 + 1;
        v38 = 0.0;
      }

      if (*v39 + 2.0 <= v38)
      {
LABEL_24:
        v97 = v40;
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v53 = sub_24A62E314();
        sub_24A506EB8(v53, qword_27EF5C118);
        v54 = v2;
        v55 = sub_24A62E2F4();
        v56 = sub_24A62EF64();
        v99 = v54;

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v96 = v39;
          v58 = v57;
          v59 = swift_slowAlloc();
          *v58 = 138412290;
          v60 = v99;
          *(v58 + 4) = v99;
          *v59 = v60;
          v61 = v60;
          _os_log_impl(&dword_24A503000, v55, v56, "🧭 FMR1HaptiCtrl%@: playing nearby haptic", v58, 0xCu);
          sub_24A50D6A4(v59, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v59, -1, -1);
          v62 = v58;
          v39 = v96;
          MEMORY[0x24C21BBE0](v62, -1, -1);
        }

        *&aBlock = 0;
        v63 = [v103 startAtTime:&aBlock error:0.0];
        v64 = aBlock;
        if (v63)
        {
          v65 = v99;
          v99[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v66 = v65;
          sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
          v67 = v64;
          v96 = sub_24A62F014();
          sub_24A62EAE4();
          sub_24A62EB54();
          v105 = *(v105 + 8);
          (v105)(v16, v12);
          v68 = swift_allocObject();
          *(v68 + 16) = v66;
          v111 = sub_24A58235C;
          v112 = v68;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v110 = sub_24A5A8458;
          *(&v110 + 1) = &unk_285DA6050;
          v69 = _Block_copy(&aBlock);
          v70 = v66;

          sub_24A62EAB4();
          *&aBlock = MEMORY[0x277D84F90];
          sub_24A582FCC(&qword_27EF4F970, MEMORY[0x277D85198]);
          sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
          sub_24A529464();
          v71 = v39;
          v72 = v101;
          sub_24A62F254();
          v73 = v96;
          MEMORY[0x24C21A910](v18, v11, v7, v69);
          _Block_release(v69);

          v74 = v72;
          v39 = v71;
          v75 = v99;
          (*(v100 + 8))(v7, v74);
          (*(v106 + 8))(v11, v107);
          (v105)(v18, v12);
        }

        else
        {
          v76 = aBlock;
          v77 = sub_24A62E084();

          swift_willThrow();
          v75 = v99;
          v78 = v99;
          v79 = v77;
          v80 = sub_24A62E2F4();
          v81 = sub_24A62EF64();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v96 = v39;
            v85 = v84;
            *&aBlock = v84;
            *v82 = 138412546;
            *(v82 + 4) = v78;
            *v83 = v78;
            *(v82 + 12) = 2080;
            swift_getErrorValue();
            v86 = v78;
            v75 = v99;
            v87 = sub_24A62F6A4();
            v89 = sub_24A509BA8(v87, v88, &aBlock);

            *(v82 + 14) = v89;
            _os_log_impl(&dword_24A503000, v80, v81, "🧭 FMR1HaptiCtrl%@: failed playing nearby haptic (%s)", v82, 0x16u);
            sub_24A50D6A4(v83, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v83, -1, -1);
            sub_24A508C54(v85);
            v90 = v85;
            v39 = v96;
            MEMORY[0x24C21BBE0](v90, -1, -1);
            MEMORY[0x24C21BBE0](v82, -1, -1);
          }

          else
          {
          }
        }

        v91 = v104;
        v92 = *&v75[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v92)
        {
          v93 = *&v75[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v94 = v102;
          sub_24A5173CC(v92);
          v92(v98, v108);

          sub_24A50D354(v92);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        *v39 = v38;
        *v97 = 0;
        goto LABEL_37;
      }

      goto LABEL_19;
    }
  }

LABEL_37:
  v95 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A57F540(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A62EB14();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = sub_24A62EA94();
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x28223BE20](v14);
  v17 = *a1;
  if (!*(v3 + *a1))
  {
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = a2;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = a3;
    v28[1] = _Block_copy(aBlock);
    v30 = MEMORY[0x277D84F90];
    sub_24A582FCC(&qword_27EF4F970, MEMORY[0x277D85198]);

    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    v19 = v7;
    sub_24A529464();
    v20 = v3;
    sub_24A62F254();
    v21 = sub_24A62EB44();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_24A62EB24();

    v25 = *(v3 + v17);
    *(v20 + v17) = v24;

    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v26 = sub_24A62F014();
    sub_24A62EB04();
    sub_24A62EB54();
    v27 = *(v29 + 8);
    v27(v11, v19);
    sub_24A62EFE4();

    return (v27)(v13, v19);
  }

  return result;
}

uint64_t sub_24A57F864(char a1)
{
  v3 = sub_24A62EB14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v11 = sub_24A62EA94();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v14 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (!*(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem))
  {
    v15 = swift_allocObject();
    v29 = v3;
    v16 = v15;
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1 & 1;
    aBlock[4] = sub_24A5822B8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA5FB0;
    v28[1] = _Block_copy(aBlock);
    v30 = MEMORY[0x277D84F90];
    sub_24A582FCC(&qword_27EF4F970, MEMORY[0x277D85198]);

    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    v18 = v1;
    sub_24A62F254();
    v19 = sub_24A62EB44();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_24A62EB24();

    v23 = *(v1 + v14);
    *(v18 + v14) = v22;

    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v24 = sub_24A62F014();
    sub_24A62EB04();
    sub_24A62EB54();
    v25 = *(v4 + 8);
    v26 = v8;
    v27 = v29;
    v25(v26, v29);
    sub_24A62EFE4();

    return (v25)(v10, v27);
  }

  return result;
}

uint64_t sub_24A57FBB4(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    memset(v6, 0, sizeof(v6));
    sub_24A57E3EC(a2 & 1, v6);
    sub_24A50D6A4(v6, &unk_27EF50780, &qword_24A638470);
    v5 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem];
    *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem] = 0;
  }

  return result;
}

void sub_24A57FC78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern))
    {
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern) = 1;
      memset(v2, 0, sizeof(v2));
      sub_24A57C088(v2);

      sub_24A50D6A4(v2, &unk_27EF50780, &qword_24A638470);
    }
  }
}

void sub_24A57FD10()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_startContinuousHapticWorkItem;
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_startContinuousHapticWorkItem))
  {

    sub_24A62EB34();

    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern) == 1)
  {
    *(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern) = 0;

    sub_24A57C8B4();
  }
}

uint64_t sub_24A57FDD8(uint64_t a1, void (*a2)(_OWORD *))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    memset(v5, 0, sizeof(v5));
    a2(v5);

    return sub_24A50D6A4(v5, &unk_27EF50780, &qword_24A638470);
  }

  return result;
}

void sub_24A57FE58(uint64_t a1)
{
  v2 = v1;
  v56 = *MEMORY[0x277D85DE8];
  v3 = &v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v3 = 0;
  v3[8] = 1;
  memset(v55, 0, sizeof(v55));
  v4 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v55, &v1[v4]);
  swift_endAccess();
  sub_24A57FD10();
  v5 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();

    v6 = *&v1[v5];
  }

  *&v1[v5] = 0;

  v7 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {
    v8 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem];

    sub_24A62EB34();

    v9 = *&v1[v7];
  }

  *&v1[v7] = 0;

  v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v10 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {
    v11 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem];

    sub_24A62EB34();

    v12 = *&v1[v10];
  }

  *&v1[v10] = 0;

  v13 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v13)
  {
    v14 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_connectedHapticPattern];
    if (v14)
    {
      *&v55[0] = 0;
      v15 = v14;
      v53 = v13;
      v16 = [v53 createPlayerWithPattern:v15 error:v55];
      if (v16)
      {
        v17 = v16;
        v18 = qword_27EF4E9A0;
        v19 = *&v55[0];
        if (v18 != -1)
        {
          swift_once();
        }

        v20 = sub_24A62E314();
        sub_24A506EB8(v20, qword_27EF5C118);
        v21 = v2;
        v22 = sub_24A62E2F4();
        v23 = sub_24A62EF64();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = v17;
          v26 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v21;
          *v26 = v21;
          v27 = v21;
          _os_log_impl(&dword_24A503000, v22, v23, "🧭 FMR1HaptiCtrl%@: playing connected haptic", v24, 0xCu);
          sub_24A50D6A4(v26, &qword_27EF4FED0, &unk_24A635E00);
          v28 = v26;
          v17 = v25;
          MEMORY[0x24C21BBE0](v28, -1, -1);
          MEMORY[0x24C21BBE0](v24, -1, -1);
        }

        *&v55[0] = 0;
        v29 = [v17 startAtTime:v55 error:0.0];
        v30 = *&v55[0];
        if (v29)
        {
          v21[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v31 = v30;
        }

        else
        {
          v34 = *&v55[0];
          v35 = sub_24A62E084();

          swift_willThrow();
          v36 = v21;
          v37 = v35;
          v38 = sub_24A62E2F4();
          v39 = sub_24A62EF64();

          if (os_log_type_enabled(v38, v39))
          {
            v51 = v39;
            v40 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *&v55[0] = v52;
            buf = v40;
            *v40 = 138412546;
            *(v40 + 4) = v36;
            *v50 = v36;
            *(v40 + 12) = 2080;
            swift_getErrorValue();
            v41 = v36;
            v42 = sub_24A62F6A4();
            v44 = sub_24A509BA8(v42, v43, v55);

            *(buf + 14) = v44;
            _os_log_impl(&dword_24A503000, v38, v51, "🧭 FMR1HaptiCtrl%@: failed playing connected haptic (%s)", buf, 0x16u);
            sub_24A50D6A4(v50, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v50, -1, -1);
            sub_24A508C54(v52);
            MEMORY[0x24C21BBE0](v52, -1, -1);
            MEMORY[0x24C21BBE0](buf, -1, -1);
          }

          else
          {
          }
        }

        v45 = *&v21[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v45)
        {
          v46 = *&v21[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v47 = v15;
          sub_24A5173CC(v45);
          v45(v14, a1);

          sub_24A50D354(v45);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v32 = *&v55[0];
        v33 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_24A5803DC(uint64_t a1)
{
  v2 = v1;
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();

    v4 = *&v1[v3];
  }

  *&v1[v3] = 0;

  v5 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {
    v6 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem];

    sub_24A62EB34();

    v7 = *&v1[v5];
  }

  *&v1[v5] = 0;

  v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v8 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {
    v9 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem];

    sub_24A62EB34();

    v10 = *&v1[v8];
  }

  *&v1[v8] = 0;

  v11 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {
    v12 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem];

    sub_24A62EB34();

    v13 = *&v1[v11];
  }

  *&v1[v11] = 0;

  v14 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v14)
  {
    v15 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadHapticPattern];
    if (v15)
    {
      v60[0] = 0;
      v16 = v15;
      v17 = v14;
      v18 = [v17 createPlayerWithPattern:v16 error:v60];
      if (v18)
      {
        v19 = v18;
        v20 = qword_27EF4E9A0;
        v21 = v60[0];
        if (v20 != -1)
        {
          swift_once();
        }

        v22 = sub_24A62E314();
        sub_24A506EB8(v22, qword_27EF5C118);
        v23 = v2;
        v24 = sub_24A62E2F4();
        v25 = sub_24A62EF64();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          *(v26 + 4) = v23;
          *v27 = v23;
          v28 = v23;
          _os_log_impl(&dword_24A503000, v24, v25, "🧭 FMR1HaptiCtrl%@: playing ahead (green) haptic", v26, 0xCu);
          sub_24A50D6A4(v27, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v27, -1, -1);
          MEMORY[0x24C21BBE0](v26, -1, -1);
        }

        v60[0] = 0;
        v29 = [v19 startAtTime:v60 error:0.0];
        v30 = v60[0];
        if (v29)
        {
          v23[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v31 = v30;
        }

        else
        {
          v58 = v17;
          v34 = v60[0];
          v35 = sub_24A62E084();

          swift_willThrow();
          v36 = v23;
          v37 = v35;
          v38 = sub_24A62E2F4();
          v39 = sub_24A62EF64();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v60[0] = v57;
            *v40 = 138412546;
            *(v40 + 4) = v36;
            *v56 = v36;
            *(v40 + 12) = 2080;
            swift_getErrorValue();
            v55 = v39;
            v41 = v36;
            v42 = sub_24A62F6A4();
            v44 = sub_24A509BA8(v42, v43, v60);

            *(v40 + 14) = v44;
            _os_log_impl(&dword_24A503000, v38, v55, "🧭 FMR1HaptiCtrl%@: failed playing ahead haptic (%s)", v40, 0x16u);
            sub_24A50D6A4(v56, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v56, -1, -1);
            sub_24A508C54(v57);
            MEMORY[0x24C21BBE0](v57, -1, -1);
            MEMORY[0x24C21BBE0](v40, -1, -1);
          }

          else
          {
          }

          v17 = v58;
        }

        v45 = *&v23[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v45)
        {
          v46 = *&v23[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v47 = v16;
          sub_24A5173CC(v45);
          v45(v15, a1);
          sub_24A50D354(v45);
        }

        v48 = *&v23[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink];
        if (v48)
        {
          v49 = v48;
          [v49 timestamp];
          v51 = v50;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v51 = 0;
        }

        v52 = &v23[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticLastPlayTimestamp];
        *v52 = v51;
        v52[8] = 0;
        v53 = &v23[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay];
        *v53 = 0;
        v53[8] = 0;
      }

      else
      {
        v32 = v60[0];
        v33 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

void sub_24A580990(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  sub_24A580C04(a1, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadOffHapticPattern, "🧭 FMR1HaptiCtrl%@: playing ahead off (green) haptic", "🧭 FMR1HaptiCtrl%@: failed playing ahead off haptic (%s)");
}

uint64_t sub_24A580A00(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  sub_24A57FD10();
  v8 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem))
  {

    sub_24A62EB34();

    v9 = *(v3 + v8);
  }

  *(v3 + v8) = 0;

  v10 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem))
  {
    v11 = *(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem);

    sub_24A62EB34();

    v12 = *(v3 + v10);
  }

  *(v3 + v10) = 0;

  *(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 0;
  v13 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem))
  {
    v14 = *(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem);

    sub_24A62EB34();

    v15 = *(v3 + v13);
  }

  *(v3 + v13) = 0;

  v16 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem))
  {
    v17 = *(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem);

    sub_24A62EB34();

    v18 = *(v3 + v16);
  }

  *(v3 + v16) = 0;

  sub_24A57DBDC(a2);
  sub_24A57FD10();
  v19 = v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod;
  *v19 = a3;
  *(v19 + 8) = 0;
  sub_24A582188(a1, v22);
  v20 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v22, v4 + v20);
  return swift_endAccess();
}

void sub_24A580B94(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  sub_24A580C04(a1, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachOffHapticPattern, "🧭 FMR1HaptiCtrl%@: playing arm's reach off haptic", "🧭 FMR1HaptiCtrl%@: failed playing arm's reach off haptic (%s)");
}

void sub_24A580C04(uint64_t a1, void *a2, const char *a3, char *a4)
{
  v8 = v4;
  v70 = *MEMORY[0x277D85DE8];
  v10 = &v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v10 = 0;
  v10[8] = 1;
  memset(v69, 0, sizeof(v69));
  v11 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v69, &v4[v11]);
  swift_endAccess();
  sub_24A57FD10();
  v12 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();

    v13 = *&v4[v12];
  }

  *&v4[v12] = 0;

  v14 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {
    v15 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem];

    sub_24A62EB34();

    v16 = *&v4[v14];
  }

  *&v4[v14] = 0;

  v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v17 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {
    v18 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem];

    sub_24A62EB34();

    v19 = *&v4[v17];
  }

  *&v4[v17] = 0;

  v20 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {
    v21 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem];

    sub_24A62EB34();

    v22 = *&v4[v20];
  }

  *&v4[v20] = 0;

  v23 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v23)
  {
    v24 = *&v4[*a2];
    if (v24)
    {
      *&v69[0] = 0;
      v25 = v24;
      v26 = v23;
      v27 = [v26 createPlayerWithPattern:v25 error:v69];
      if (v27)
      {
        v28 = v27;
        v68 = a1;
        v29 = qword_27EF4E9A0;
        v30 = *&v69[0];
        if (v29 != -1)
        {
          swift_once();
        }

        v31 = sub_24A62E314();
        sub_24A506EB8(v31, qword_27EF5C118);
        v32 = v8;
        v33 = sub_24A62E2F4();
        v34 = sub_24A62EF64();

        if (os_log_type_enabled(v33, v34))
        {
          v64 = v26;
          formata = v25;
          v35 = a4;
          v36 = swift_slowAlloc();
          v37 = v28;
          v38 = swift_slowAlloc();
          *v36 = 138412290;
          *(v36 + 4) = v32;
          *v38 = v32;
          v39 = v32;
          _os_log_impl(&dword_24A503000, v33, v34, a3, v36, 0xCu);
          sub_24A50D6A4(v38, &qword_27EF4FED0, &unk_24A635E00);
          v40 = v38;
          v28 = v37;
          MEMORY[0x24C21BBE0](v40, -1, -1);
          v41 = v36;
          a4 = v35;
          v26 = v64;
          v25 = formata;
          MEMORY[0x24C21BBE0](v41, -1, -1);
        }

        *&v69[0] = 0;
        v42 = [v28 startAtTime:v69 error:0.0];
        v43 = *&v69[0];
        if (v42)
        {
          v32[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v44 = v43;
        }

        else
        {
          format = a4;
          v47 = *&v69[0];
          v48 = sub_24A62E084();

          swift_willThrow();
          v49 = v32;
          v50 = v48;
          v51 = sub_24A62E2F4();
          v52 = sub_24A62EF64();

          if (os_log_type_enabled(v51, v52))
          {
            v63 = v52;
            v53 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *&v69[0] = v65;
            *v53 = 138412546;
            *(v53 + 4) = v49;
            *v62 = v49;
            *(v53 + 12) = 2080;
            swift_getErrorValue();
            v54 = v49;
            v55 = sub_24A62F6A4();
            v57 = sub_24A509BA8(v55, v56, v69);

            *(v53 + 14) = v57;
            _os_log_impl(&dword_24A503000, v51, v63, format, v53, 0x16u);
            sub_24A50D6A4(v62, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v62, -1, -1);
            sub_24A508C54(v65);
            MEMORY[0x24C21BBE0](v65, -1, -1);
            MEMORY[0x24C21BBE0](v53, -1, -1);
          }

          else
          {
          }
        }

        v58 = *&v32[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v58)
        {
          v59 = *&v32[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v60 = v25;
          sub_24A5173CC(v58);
          v58(v24, v68);

          sub_24A50D354(v58);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v45 = *&v69[0];
        v46 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

void sub_24A5811D4(uint64_t a1)
{
  v2 = v1;
  v59 = *MEMORY[0x277D85DE8];
  v3 = &v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v3 = 0;
  v3[8] = 1;
  memset(v58, 0, sizeof(v58));
  v4 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v58, &v1[v4]);
  swift_endAccess();
  sub_24A57FD10();
  v5 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();

    v6 = *&v1[v5];
  }

  *&v1[v5] = 0;

  v7 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {
    v8 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem];

    sub_24A62EB34();

    v9 = *&v1[v7];
  }

  *&v1[v7] = 0;

  v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v10 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {
    v11 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem];

    sub_24A62EB34();

    v12 = *&v1[v10];
  }

  *&v1[v10] = 0;

  v13 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {
    v14 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem];

    sub_24A62EB34();

    v15 = *&v1[v13];
  }

  *&v1[v13] = 0;

  sub_24A57D08C();
  v16 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v16)
  {
    v17 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_preNearbyHapticPattern];
    if (v17)
    {
      *&v58[0] = 0;
      v18 = v17;
      v56 = v16;
      v19 = [v56 createPlayerWithPattern:v18 error:v58];
      if (v19)
      {
        v20 = v19;
        v21 = qword_27EF4E9A0;
        v22 = *&v58[0];
        if (v21 != -1)
        {
          swift_once();
        }

        v23 = sub_24A62E314();
        sub_24A506EB8(v23, qword_27EF5C118);
        v24 = v2;
        v25 = sub_24A62E2F4();
        v26 = sub_24A62EF64();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = v20;
          v29 = swift_slowAlloc();
          *v27 = 138412290;
          *(v27 + 4) = v24;
          *v29 = v24;
          v30 = v24;
          _os_log_impl(&dword_24A503000, v25, v26, "🧭 FMR1HaptiCtrl%@: playing pre-nearby haptic", v27, 0xCu);
          sub_24A50D6A4(v29, &qword_27EF4FED0, &unk_24A635E00);
          v31 = v29;
          v20 = v28;
          MEMORY[0x24C21BBE0](v31, -1, -1);
          MEMORY[0x24C21BBE0](v27, -1, -1);
        }

        *&v58[0] = 0;
        v32 = [v20 startAtTime:v58 error:0.0];
        v33 = *&v58[0];
        if (v32)
        {
          v24[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v34 = v33;
        }

        else
        {
          v37 = *&v58[0];
          v38 = sub_24A62E084();

          swift_willThrow();
          v39 = v24;
          v40 = v38;
          v41 = sub_24A62E2F4();
          v42 = sub_24A62EF64();

          if (os_log_type_enabled(v41, v42))
          {
            v54 = v42;
            v43 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *&v58[0] = v55;
            buf = v43;
            *v43 = 138412546;
            *(v43 + 4) = v39;
            *v53 = v39;
            *(v43 + 12) = 2080;
            swift_getErrorValue();
            v44 = v39;
            v45 = sub_24A62F6A4();
            v47 = sub_24A509BA8(v45, v46, v58);

            *(buf + 14) = v47;
            _os_log_impl(&dword_24A503000, v41, v54, "🧭 FMR1HaptiCtrl%@: failed playing -prenearby haptic (%s)", buf, 0x16u);
            sub_24A50D6A4(v53, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v53, -1, -1);
            sub_24A508C54(v55);
            MEMORY[0x24C21BBE0](v55, -1, -1);
            MEMORY[0x24C21BBE0](buf, -1, -1);
          }

          else
          {
          }
        }

        v48 = *&v24[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v48)
        {
          v49 = *&v24[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v50 = v18;
          sub_24A5173CC(v48);
          v48(v17, a1);

          sub_24A50D354(v48);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v35 = *&v58[0];
        v36 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_24A581798()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  sub_24A581878(&OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelIncreaseHapticPattern, "🧭 FMR1HaptiCtrl%@: playing level increased haptic", "🧭 FMR1HaptiCtrl%@: failed playing level increased haptic (%s)");
}

void sub_24A581808()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  sub_24A581878(&OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelDecreaseHapticPattern, "🧭 FMR1HaptiCtrl%@: playing level decreased haptic", "🧭 FMR1HaptiCtrl%@: failed playing level decreased haptic (%s)");
}

void sub_24A581878(void *a1, const char *a2, const char *a3)
{
  v7 = v3;
  v58 = *MEMORY[0x277D85DE8];
  v8 = &v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v8 = 0;
  v8[8] = 1;
  memset(v57, 0, sizeof(v57));
  v9 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v57, &v7[v9]);
  swift_endAccess();
  sub_24A57FD10();
  v10 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {
    v11 = *&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem];

    sub_24A62EB34();

    v12 = *&v7[v10];
  }

  *&v7[v10] = 0;

  v13 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {
    v14 = *&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem];

    sub_24A62EB34();

    v15 = *&v7[v13];
  }

  *&v7[v13] = 0;

  v16 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {
    v17 = *&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem];

    sub_24A62EB34();

    v18 = *&v7[v16];
  }

  *&v7[v16] = 0;

  v19 = *&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v19)
  {
    v20 = *&v7[*a1];
    if (v20)
    {
      *&v57[0] = 0;
      v21 = v20;
      v22 = v19;
      v23 = [v22 createPlayerWithPattern:v21 error:v57];
      v24 = *&v57[0];
      if (v23)
      {
        v25 = v23;
        *&v57[0] = 0;
        v26 = v24;
        v27 = [v25 startAtTime:v57 error:0.0];
        v28 = *&v57[0];
        if (v27)
        {
          v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v29 = qword_27EF4E9A0;
          v30 = v28;
          if (v29 != -1)
          {
            swift_once();
          }

          v31 = sub_24A62E314();
          sub_24A506EB8(v31, qword_27EF5C118);
          v32 = v7;
          v33 = sub_24A62E2F4();
          v34 = sub_24A62EF64();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *v35 = 138412290;
            *(v35 + 4) = v32;
            *v36 = v32;
            v37 = v32;
            _os_log_impl(&dword_24A503000, v33, v34, a2, v35, 0xCu);
            sub_24A50D6A4(v36, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v36, -1, -1);
            MEMORY[0x24C21BBE0](v35, -1, -1);
          }

          swift_unknownObjectRelease();
          goto LABEL_23;
        }

        v56 = v22;
        v41 = *&v57[0];
        v42 = sub_24A62E084();

        swift_willThrow();
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v43 = sub_24A62E314();
        sub_24A506EB8(v43, qword_27EF5C118);
        v44 = v7;
        v45 = v42;
        v46 = sub_24A62E2F4();
        v47 = sub_24A62EF64();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *&v57[0] = v55;
          *v48 = 138412546;
          *(v48 + 4) = v44;
          *v54 = v44;
          *(v48 + 12) = 2080;
          swift_getErrorValue();
          v49 = v44;
          v50 = sub_24A62F6A4();
          v52 = sub_24A509BA8(v50, v51, v57);

          *(v48 + 14) = v52;
          _os_log_impl(&dword_24A503000, v46, v47, a3, v48, 0x16u);
          sub_24A50D6A4(v54, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v54, -1, -1);
          sub_24A508C54(v55);
          MEMORY[0x24C21BBE0](v55, -1, -1);
          MEMORY[0x24C21BBE0](v48, -1, -1);

          swift_unknownObjectRelease();
          goto LABEL_23;
        }

        swift_unknownObjectRelease();
        v40 = v42;
      }

      else
      {
        v38 = *&v57[0];
        v39 = sub_24A62E084();

        swift_willThrow();
        v40 = v39;
      }
    }
  }

LABEL_23:
  v53 = *MEMORY[0x277D85DE8];
}

void sub_24A581DDC()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  sub_24A581878(&OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_farNearHapticPattern, "🧭 FMR1HaptiCtrl%@: playing level far->near haptic", "🧭 FMR1HaptiCtrl%@: failed playing far->near haptic (%s)");
}

void sub_24A581E4C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying;
  if (v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] == 1)
  {
    v2 = v0;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v0;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMR1HaptiCtrl%@: stopping haptics", v7, 0xCu);
      sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

    v10 = &v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
    *v10 = 0;
    v10[8] = 1;
    memset(v24, 0, sizeof(v24));
    v11 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
    swift_beginAccess();
    sub_24A582118(v24, &v4[v11]);
    swift_endAccess();
    sub_24A57FD10();
    v12 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
    {
      v13 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem];

      sub_24A62EB34();

      v14 = *&v4[v12];
    }

    *&v4[v12] = 0;

    v15 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
    {
      v16 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem];

      sub_24A62EB34();

      v17 = *&v4[v15];
    }

    *&v4[v15] = 0;

    v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
    v18 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
    {
      v19 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem];

      sub_24A62EB34();

      v20 = *&v4[v18];
    }

    *&v4[v18] = 0;

    v21 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
    {
      v22 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem];

      sub_24A62EB34();

      v23 = *&v4[v21];
    }

    *&v4[v21] = 0;

    v2[v1] = 0;
  }
}

uint64_t sub_24A5820F4(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_24A50D354(v4);
}

uint64_t sub_24A582118(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF50780, &qword_24A638470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A582188(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF50780, &qword_24A638470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5821F8()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A582260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A582280()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A582324()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5823AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_24A62EC94();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

void sub_24A58245C(float a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern] != 1)
  {
LABEL_13:
    v35 = *MEMORY[0x277D85DE8];
    return;
  }

  v2 = 1.0 - a1;
  v3 = (a1 * 0.6) + ((1.0 - a1) * 0.5);
  v4 = *MEMORY[0x277CBF610];
  v6 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
  *&v7 = v3;
  v36 = [v6 initWithParameterID:v4 value:v7 relativeTime:0.0];
  v8 = *MEMORY[0x277CBF618];
  v9 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
  *&v10 = (a1 * 0.1) - v2;
  v11 = [v9 initWithParameterID:v8 value:v10 relativeTime:0.0];
  v12 = v11;
  v13 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
  if (v13)
  {
    sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24A633810;
    *(v14 + 32) = v36;
    *(v14 + 40) = v12;
    sub_24A50D7EC(0, &qword_27EF50798, 0x277CBF6A8);
    swift_unknownObjectRetain();
    v15 = v36;
    v16 = v12;
    v17 = sub_24A62ED54();

    v37[0] = 0;
    v18 = [v13 sendParameters:v17 atTime:v37 error:0.0];
    swift_unknownObjectRelease();

    if (v18)
    {
      v19 = v37[0];
    }

    else
    {
      v21 = v37[0];
      v22 = sub_24A62E084();

      swift_willThrow();
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v23 = sub_24A62E314();
      sub_24A506EB8(v23, qword_27EF5C118);
      v24 = v1;
      v25 = v22;
      v26 = sub_24A62E2F4();
      v27 = sub_24A62EF64();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37[0] = v30;
        *v28 = 138412546;
        *(v28 + 4) = v24;
        *v29 = v24;
        *(v28 + 12) = 2080;
        swift_getErrorValue();
        v31 = v24;
        v32 = sub_24A62F6A4();
        v34 = sub_24A509BA8(v32, v33, v37);

        *(v28 + 14) = v34;
        _os_log_impl(&dword_24A503000, v26, v27, "🧭 FMR1HaptiCtrl%@: failed parametering continuous haptic player: %s", v28, 0x16u);
        sub_24A50D6A4(v29, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v29, -1, -1);
        sub_24A508C54(v30);
        MEMORY[0x24C21BBE0](v30, -1, -1);
        MEMORY[0x24C21BBE0](v28, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_13;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_24A5828AC()
{
  v62[4] = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern];
    if (v2)
    {
      v62[0] = 0;
      v3 = v1;
      v4 = v2;
      v5 = [v3 createPlayerWithPattern:v4 error:v62];
      v6 = v62[0];
      if (v5)
      {
        v7 = v5;
        if (v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity + 4])
        {
          v8 = v62[0];
        }

        else
        {
          v12 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity];
          v13 = *MEMORY[0x277CBF610];
          v14 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
          v15 = v6;
          LODWORD(v16) = v12;
          v17 = [v14 initWithParameterID:v13 value:v16 relativeTime:0.0];
          sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_24A6339F0;
          *(v18 + 32) = v17;
          sub_24A50D7EC(0, &qword_27EF50798, 0x277CBF6A8);
          v19 = v17;
          v20 = sub_24A62ED54();

          v62[0] = 0;
          LOBYTE(v13) = [v7 sendParameters:v20 atTime:v62 error:0.0];

          if (v13)
          {
            v21 = v62[0];
          }

          else
          {
            v58 = v19;
            v59 = v4;
            v22 = v62[0];
            v23 = sub_24A62E084();

            swift_willThrow();
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v24 = sub_24A62E314();
            sub_24A506EB8(v24, qword_27EF5C118);
            v57 = v0;
            v25 = v0;
            v26 = v23;
            v27 = sub_24A62E2F4();
            v28 = sub_24A62EF64();

            if (os_log_type_enabled(v27, v28))
            {
              v61 = v7;
              v29 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v62[0] = v56;
              *v29 = 138412546;
              *(v29 + 4) = v25;
              *v55 = v25;
              *(v29 + 12) = 2080;
              swift_getErrorValue();
              v30 = v25;
              v31 = sub_24A62F6A4();
              v33 = sub_24A509BA8(v31, v32, v62);

              *(v29 + 14) = v33;
              _os_log_impl(&dword_24A503000, v27, v28, "🧭 FMR1HaptiCtrl%@: failed parametering tap haptic player: %s", v29, 0x16u);
              sub_24A50D6A4(v55, &qword_27EF4FED0, &unk_24A635E00);
              MEMORY[0x24C21BBE0](v55, -1, -1);
              sub_24A508C54(v56);
              MEMORY[0x24C21BBE0](v56, -1, -1);
              v34 = v29;
              v7 = v61;
              MEMORY[0x24C21BBE0](v34, -1, -1);
            }

            else
            {
            }

            v0 = v57;
            v4 = v59;
          }
        }

        v35 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v35)
        {
          v36 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v37 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
          swift_beginAccess();
          sub_24A582188(&v0[v37], v62);
          v38 = v4;
          sub_24A5173CC(v35);
          v35(v2, v62);

          sub_24A50D354(v35);
          sub_24A50D6A4(v62, &unk_27EF50780, &qword_24A638470);
        }

        v62[0] = 0;
        if ([v7 startAtTime:v62 error:{0.0, v55}])
        {
          v39 = v62[0];

          swift_unknownObjectRelease();
          v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          goto LABEL_25;
        }

        v40 = v62[0];
        v41 = sub_24A62E084();

        swift_willThrow();
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v42 = sub_24A62E314();
        sub_24A506EB8(v42, qword_27EF5C118);
        v43 = v0;
        v44 = v41;
        v45 = sub_24A62E2F4();
        v46 = sub_24A62EF64();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v60 = v4;
          v49 = swift_slowAlloc();
          v62[0] = v49;
          *v47 = 138412546;
          *(v47 + 4) = v43;
          *v48 = v43;
          *(v47 + 12) = 2080;
          swift_getErrorValue();
          v50 = v43;
          v51 = sub_24A62F6A4();
          v53 = sub_24A509BA8(v51, v52, v62);

          *(v47 + 14) = v53;
          _os_log_impl(&dword_24A503000, v45, v46, "🧭 FMR1HaptiCtrl%@: failed playing single tap haptic (%s)", v47, 0x16u);
          sub_24A50D6A4(v48, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v48, -1, -1);
          sub_24A508C54(v49);
          MEMORY[0x24C21BBE0](v49, -1, -1);
          MEMORY[0x24C21BBE0](v47, -1, -1);

          swift_unknownObjectRelease();
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
        v11 = v41;
      }

      else
      {
        v9 = v62[0];
        v10 = sub_24A62E084();

        swift_willThrow();
        v11 = v10;
      }
    }
  }

LABEL_25:
  v54 = *MEMORY[0x277D85DE8];
}

_OWORD *sub_24A582FBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24A582FCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A583054()
{
  sub_24A62EC74();
}

uint64_t sub_24A583164()
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A583288()
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

void sub_24A5833C4(int a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if ((sub_24A60D6B4(v26, a1) & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
    swift_beginAccess();
    if (*(v1 + v4))
    {
      *(v1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_pendingState) = a1;
      if (qword_27EF4E9A8 != -1)
      {
        swift_once();
      }

      v5 = sub_24A62E314();
      sub_24A506EB8(v5, qword_27EF5C130);
      v6 = sub_24A62E2F4();
      v7 = sub_24A62EF64();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v25 = v9;
        *v8 = 136315138;
        v10 = sub_24A62EC44();
        v12 = sub_24A509BA8(v10, v11, &v25);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_24A503000, v6, v7, "VFXManager: setState pendingState %s..", v8, 0xCu);
        sub_24A508C54(v9);
        MEMORY[0x24C21BBE0](v9, -1, -1);
        MEMORY[0x24C21BBE0](v8, -1, -1);
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      v13 = v25;
      *(v1 + v4) = 1;
      v14 = objc_opt_self();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      sub_24A58B61C(v13, a1);
      v15 = [v14 scheduledTimerWithTimeInterval:v2 target:sel_onAnimationTimerCompleted selector:0 userInfo:0 repeats:?];
      v16 = *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_animationCompletionTimer);
      *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_animationCompletionTimer) = v15;

      sub_24A5843A4();
      sub_24A52BC40(a1, v13, 0, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v25) = a1;

      sub_24A62E364();
      sub_24A583D84();
      if (qword_27EF4E9A8 != -1)
      {
        swift_once();
      }

      v17 = sub_24A62E314();
      sub_24A506EB8(v17, qword_27EF5C130);
      v18 = sub_24A62E2F4();
      v19 = sub_24A62EF64();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136315138;
        v22 = sub_24A62EC44();
        v24 = sub_24A509BA8(v22, v23, &v25);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_24A503000, v18, v19, "VFXManager: setState %s..", v20, 0xCu);
        sub_24A508C54(v21);
        MEMORY[0x24C21BBE0](v21, -1, -1);
        MEMORY[0x24C21BBE0](v20, -1, -1);
      }

      sub_24A5869E4(0, 0);
      sub_24A5871C0(0, 0);
      sub_24A5879C8(0, 0);
      sub_24A5881B0(0);
    }
  }
}

void sub_24A58384C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view);
  if (v1)
  {
    v2 = v0;
    sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 16) = xmmword_24A633830;
    *(v3 + 56) = v4;
    *(v3 + 32) = 0x6E69726170657250;
    *(v3 + 40) = 0xEF2E2E5846562067;
    v5 = v1;
    sub_24A62F314();

    v6 = [objc_opt_self() mainScreen];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    v11 = (v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_viewSize);
    *v11 = v8;
    v11[1] = v10;
    sub_24A5841E0();
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v12 = sub_24A62E314();
    sub_24A506EB8(v12, qword_27EF5C130);
    v13 = sub_24A62E2F4();
    v14 = sub_24A62EF34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      *(v15 + 4) = 0;
      _os_log_impl(&dword_24A503000, v13, v14, "Preparing world progress: %{public}f", v15, 0xCu);
      MEMORY[0x24C21BBE0](v15, -1, -1);
    }

    v16 = *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_world);
    v19[4] = sub_24A585698;
    v19[5] = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_24A585908;
    v19[3] = &unk_285DA6450;
    v17 = _Block_copy(v19);
    v18 = v5;
    [v16 prepareForRenderer:v18 progressHandler:v17];
    _Block_release(v17);
  }
}

BOOL sub_24A583AD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v2 != 3)
  {
    return 0;
  }

  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return fabs(v1 * 57.2957795) < 30.0;
}

void sub_24A583BD0(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 behaviorGraph];
  if (v6)
  {
    v7 = v6;
    sub_24A5889BC(a1);
    sub_24A50D63C(a2, v16, &unk_27EF50780, &qword_24A638470);
    v8 = v17;
    if (v17)
    {
      v9 = sub_24A50A204(v16, v17);
      v10 = *(v8 - 8);
      v11 = *(v10 + 64);
      MEMORY[0x28223BE20](v9);
      v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13);
      v14 = sub_24A62F624();
      (*(v10 + 8))(v13, v8);
      sub_24A508C54(v16);
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_24A62EBE4();

    [v7 setObject:v14 forKeyedSubscript:v15];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_24A583D84()
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C130);

  v1 = sub_24A62E2F4();
  v2 = sub_24A62EF34();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v20 = v4;
    *v3 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v5 = 0xE700000000000000;
    v6 = 0x6C616974696E69;
    if (v19 != 6)
    {
      v6 = 0x726F727265;
      v5 = 0xE500000000000000;
    }

    v7 = 0xE400000000000000;
    v8 = 1918985582;
    if (v19 != 4)
    {
      v8 = 0x646E756F66;
      v7 = 0xE500000000000000;
    }

    if (v19 <= 5u)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0xE300000000000000;
    v10 = 6517345;
    if (v19 != 2)
    {
      v10 = 0x776F727261;
      v9 = 0xE500000000000000;
    }

    v11 = 0xE300000000000000;
    if (v19)
    {
      v12 = 7496038;
    }

    else
    {
      v12 = 0x63656E6E6F436F6ELL;
    }

    if (!v19)
    {
      v11 = 0xEC0000006E6F6974;
    }

    if (v19 <= 1u)
    {
      v10 = v12;
      v9 = v11;
    }

    if (v19 <= 3u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v6;
    }

    if (v19 <= 3u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v5;
    }

    v15 = sub_24A509BA8(v13, v14, &v20);

    *(v3 + 4) = v15;
    _os_log_impl(&dword_24A503000, v1, v2, "VFXManager: State Updated: %s", v3, 0xCu);
    sub_24A508C54(v4);
    MEMORY[0x24C21BBE0](v4, -1, -1);
    MEMORY[0x24C21BBE0](v3, -1, -1);
  }

  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v22 > 1u || v22)
  {
    v17 = sub_24A62F634();

    v16 = v17 ^ 1;
  }

  else
  {

    v16 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v16 & 1;
  return sub_24A62E364();
}

uint64_t sub_24A58416C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return v1;
}

uint64_t sub_24A5841E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_viewSize);
  v2 = 12.0 / v1;
  v3 = 300.0 / v1;
  v4 = 189.0 / v1;
  v5 = 15.0 / v1;
  v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);
  v7 = MEMORY[0x277D83A90];
  v8 = 30.0 / v1;
  v11 = MEMORY[0x277D83A90];
  *v10 = v3;
  sub_24A583BD0(12, v10);
  sub_24A50D6A4(v10, &unk_27EF50780, &qword_24A638470);
  v11 = v7;
  *v10 = v4;
  sub_24A583BD0(13, v10);
  sub_24A50D6A4(v10, &unk_27EF50780, &qword_24A638470);
  v11 = v7;
  *v10 = v2;
  sub_24A583BD0(14, v10);
  sub_24A50D6A4(v10, &unk_27EF50780, &qword_24A638470);
  v11 = v7;
  *v10 = v5;
  sub_24A583BD0(15, v10);
  sub_24A50D6A4(v10, &unk_27EF50780, &qword_24A638470);
  v11 = v7;
  *v10 = v4;
  sub_24A583BD0(16, v10);
  sub_24A50D6A4(v10, &unk_27EF50780, &qword_24A638470);
  v11 = v7;
  *v10 = v8;
  sub_24A583BD0(17, v10);
  return sub_24A50D6A4(v10, &unk_27EF50780, &qword_24A638470);
}

uint64_t sub_24A5843D8(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    v9 = a2();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();

    v6 = a3(v12);

    v13 = *(v8 + v4);
    *(v8 + v4) = v6;
  }

  return v6;
}

uint64_t sub_24A584470()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24A5844B4(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_24A584564(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A62E0F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v27[3] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v27 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v27 - v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_24A62EBE4();
  v17 = sub_24A62EBE4();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (v18)
  {
    sub_24A62E0D4();

    sub_24A50D7EC(0, &qword_27EF50900, 0x277D78170);
    (*(v5 + 16))(v11, v13, v4);
    v19 = sub_24A59C4A0(MEMORY[0x277D84F90]);
    v25 = sub_24A584AF4(v11, v19);
    (*(v5 + 8))(v13, v4);
    return v25;
  }

  else
  {
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v20 = sub_24A62E314();
    sub_24A506EB8(v20, qword_27EF5C130);

    v21 = sub_24A62E2F4();
    v22 = sub_24A62EF44();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_24A509BA8(a1, a2, &v28);
      _os_log_impl(&dword_24A503000, v21, v22, "Error getting VFX source file url for %s", v23, 0xCu);
      sub_24A508C54(v24);
      MEMORY[0x24C21BBE0](v24, -1, -1);
      MEMORY[0x24C21BBE0](v23, -1, -1);
    }

    return 0;
  }
}

id sub_24A584AF4(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24A62E0B4();
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_24A58CF48(&qword_27EF4F1B0, type metadata accessor for VFXWorldLoaderOption);
    v5 = sub_24A62EB74();
  }

  else
  {
    v5 = 0;
  }

  v15[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() worldWithURL:v4 options:v5 error:v15];

  v7 = v15[0];
  if (v6)
  {
    v8 = sub_24A62E0F4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v15[0];
    sub_24A62E084();

    swift_willThrow();
    v12 = sub_24A62E0F4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t VFXManager.deinit()
{
  sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D837D0];
  *(v1 + 16) = xmmword_24A633830;
  *(v1 + 56) = v2;
  *(v1 + 32) = 0x74696E696564;
  *(v1 + 40) = 0xE600000000000000;
  sub_24A62F314();

  v3 = OBJC_IVAR____TtC11FMFindingUI10VFXManager__state;
  v4 = sub_24A508FA4(&qword_27EF507E8, &qword_24A636E68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___values);

  v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___animationCoordinator);

  v7 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 80);
  v12[4] = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 64);
  v12[5] = v7;
  v12[6] = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 96);
  v13 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 112);
  v8 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset);
  v12[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 32);
  v12[3] = v9;
  sub_24A5294D0(v12);
  v10 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_actionsManager);

  return v0;
}

uint64_t sub_24A584E98(void *a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24A508FA4(&qword_27EF507E8, &qword_24A636E68);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v52 - v13;
  v15 = *a2;
  v16 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v16 setUnitOptions_];
  [v16 setUnitStyle_];
  *(v5 + 16) = v16;
  v17 = OBJC_IVAR____TtC11FMFindingUI10VFXManager__state;
  LOBYTE(v52[0]) = 6;
  sub_24A62E344();
  (*(v11 + 32))(v5 + v17, v14, v10);
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view) = 0;
  v18 = (v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_viewSize);
  *v18 = 0;
  v18[1] = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___values) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___animationCoordinator) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxHasDistance) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_pendingState) = 8;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_currentAnimation) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_animationCompletionTimer) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_actionsManager) = a4;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType) = v15;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_world) = a1;

  v19 = a1;
  v20 = [v19 rootNode];
  v21 = sub_24A62EBE4();
  v22 = [v20 childNodeWithName_];

  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = [v19 rootNode];
  v24 = sub_24A62EBE4();
  v25 = [v23 childNodeWithName_];

  if (!v25)
  {

LABEL_15:
    result = sub_24A62F444();
    __break(1u);
    return result;
  }

  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_camera) = v22;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter) = v25;
  v26 = v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset;
  v27 = *(a3 + 80);
  *(v26 + 64) = *(a3 + 64);
  *(v26 + 80) = v27;
  *(v26 + 96) = *(a3 + 96);
  *(v26 + 112) = *(a3 + 112);
  v28 = *(a3 + 16);
  *v26 = *a3;
  *(v26 + 16) = v28;
  v29 = *(a3 + 48);
  *(v26 + 32) = *(a3 + 32);
  *(v26 + 48) = v29;
  v30 = (v15 >> 13) & 3;
  if (v30)
  {
    if (v30 == 1)
    {
      v31 = (v15 >> 8) & 0x9F;
    }

    else if ((v15 & 0x80000000) != 0)
    {
      v31 = (v15 >> 8) & 0x1F;
    }

    else
    {
      v31 = v15;
    }
  }

  else
  {
    v31 = BYTE1(v15);
  }

  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_threshold) = v31 == 2;
  v32 = v25;
  v33 = v22;
  sub_24A5843A4();
  swift_weakAssign();

  v34 = *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);
  v53 = MEMORY[0x277D83A90];
  v52[0] = 1065353216;
  sub_24A583BD0(8, v52);
  sub_24A50D6A4(v52, &unk_27EF50780, &qword_24A638470);
  v35 = [objc_opt_self() mainScreen];
  [v35 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = [objc_allocWithZone(MEMORY[0x277D78160]) initWithFrame_];
  v45 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_view;
  v46 = *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view);
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view) = v44;

  v47 = *(v5 + v45);
  if (v47)
  {
    [v47 setRendersContinuously_];
    v48 = *(v5 + v45);
    if (v48)
    {
      v49 = v19;
      v50 = v48;
      [v50 setWorld_];
    }
  }

  return v5;
}

uint64_t sub_24A5853DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VFXManager(0);
  result = sub_24A62E334();
  *a1 = result;
  return result;
}

uint64_t sub_24A58541C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24A585474(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_24A5854F0()
{
  sub_24A52A2FC(319, &qword_27EF50818);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24A585698(NSObject *a1, float a2)
{
  if (!a1)
  {
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v12 = sub_24A62E314();
    sub_24A506EB8(v12, qword_27EF5C130);
    oslog = sub_24A62E2F4();
    v13 = sub_24A62EF34();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = a2;
      _os_log_impl(&dword_24A503000, oslog, v13, "Preparing world progress: %{public}f", v14, 0xCu);
      MEMORY[0x24C21BBE0](v14, -1, -1);
    }

    goto LABEL_10;
  }

  v3 = a1;
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C130);
  v5 = a1;
  oslog = sub_24A62E2F4();
  v6 = sub_24A62EF44();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24A503000, oslog, v6, "Failure preparing world: %{public}@", v7, 0xCu);
    sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v8, -1, -1);
    MEMORY[0x24C21BBE0](v7, -1, -1);

LABEL_10:
    v15 = oslog;

    goto LABEL_12;
  }

  v15 = a1;

LABEL_12:
}

void sub_24A585908(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  v8(a2, a3, a4);
}

uint64_t sub_24A5859B0()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC11FMFindingUI10VFXManager_actionsManager);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24A5859DC, v1, 0);
}

uint64_t sub_24A5859DC()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_24A5160C8(3u), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 16 * v3;
    v6 = *v5;
    v7 = *(v5 + 8);

    v6(v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_24A58CF90();
    v0[7] = swift_allocError();
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_24A58D01C, 0, 0);
  }
}

uint64_t sub_24A585B14()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC11FMFindingUI10VFXManager_actionsManager);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24A585B40, v1, 0);
}

uint64_t sub_24A585B40()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_24A5160C8(2u), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 16 * v3;
    v6 = *v5;
    v7 = *(v5 + 8);

    v6(v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_24A58CF90();
    v0[7] = swift_allocError();
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_24A585C58, 0, 0);
  }
}

uint64_t sub_24A585C58()
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);
  v3 = v1;
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A503000, v4, v5, "Failure executing dismiss flow action: %{public}@", v8, 0xCu);
    sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24A585E1C()
{
  v1 = *(v0 + 64);
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v2 = *(v0 + 16);
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_actionsManager);
  *(v0 + 72) = v3;
  if (v2 == 1)
  {
    v4 = sub_24A585F04;
  }

  else
  {
    v4 = sub_24A5861BC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24A585F04()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_24A5160C8(1u), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 16 * v3;
    v6 = *v5;
    v7 = *(v5 + 8);

    v6(v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_24A58CF90();
    v0[10] = swift_allocError();
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_24A58601C, 0, 0);
  }
}

uint64_t sub_24A58601C()
{
  v1 = *(v0 + 80);
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);
  v3 = v1;
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24A503000, v4, v5, "Failure executing dismiss flow action: %{public}@", v6, 0xCu);
    sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24A5861BC()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_24A5160C8(0), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 16 * v3;
    v6 = *v5;
    v7 = *(v5 + 8);

    v6(v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_24A58CF90();
    v0[11] = swift_allocError();
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_24A5862D4, 0, 0);
  }
}

uint64_t sub_24A5862D4()
{
  v1 = *(v0 + 88);
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);
  v3 = v1;
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24A503000, v4, v5, "Failure executing dismiss flow action: %{public}@", v6, 0xCu);
    sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24A586474()
{
  v1 = sub_24A62EA94();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A62EAD4();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v9 = sub_24A62F014();
  aBlock[4] = sub_24A58CF40;
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA6428;
  v10 = _Block_copy(aBlock);

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v8, v4, v10);
  _Block_release(v10);

  (*(v13 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v12);
}

void sub_24A586754(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_animationCompletionTimer) invalidate];
  v2 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
  swift_beginAccess();
  *(a1 + v2) = 0;
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_pendingState);
  if (v3 == 8)
  {
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C130);
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24A503000, v5, v6, "All Animations Completed Successfully 🎉", v7, 2u);
      v8 = v7;
LABEL_10:
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_pendingState) = 8;
    sub_24A5833C4(v3);
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A62E314();
    sub_24A506EB8(v9, qword_27EF5C130);
    v5 = sub_24A62E2F4();
    v10 = sub_24A62EF64();
    if (os_log_type_enabled(v5, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      v13 = sub_24A62EC44();
      v15 = sub_24A509BA8(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24A503000, v5, v10, "Animations completed with pending state. Running pending state %s..", v11, 0xCu);
      sub_24A508C54(v12);
      MEMORY[0x24C21BBE0](v12, -1, -1);
      v8 = v11;
      goto LABEL_10;
    }
  }
}

uint64_t sub_24A5869E4(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v37 = a2;
  v4 = sub_24A62EA94();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A62E654();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A5888B0();
  sub_24A5843A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v16 != LOBYTE(aBlock[0]))
  {
    v18 = dispatch_group_create();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (LOBYTE(aBlock[0]) - 4 >= 2)
    {
      if (LOBYTE(aBlock[0]) == 3)
      {
        sub_24A584370();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24A62E354();

        v22 = *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___animationCoordinator);
        v23 = qword_27EF4EB50;
        if (fabs(aBlock[0] * 57.2957795) >= 30.0)
        {
          v21 = v18;

          if (v23 == -1)
          {
LABEL_14:
            dispatch_group_enter(v21);
            sub_24A62E644();
            v26 = swift_allocObject();
            v26[2] = 0;
            v26[3] = 0;
            v26[4] = v18;
            v27 = v21;
            sub_24A62E3E4();

            (*(v32 + 8))(v15, v33);
            sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
            v28 = sub_24A62F014();
            v29 = swift_allocObject();
            v30 = v37;
            *(v29 + 16) = a1;
            *(v29 + 24) = v30;
            *&aBlock[4] = sub_24A58D014;
            *&aBlock[5] = v29;
            *&aBlock[0] = MEMORY[0x277D85DD0];
            *&aBlock[1] = 1107296256;
            *&aBlock[2] = sub_24A5A8458;
            *&aBlock[3] = &unk_285DA61D0;
            v31 = _Block_copy(aBlock);
            sub_24A519360(a1, v30);
            sub_24A62EAB4();
            v38 = MEMORY[0x277D84F90];
            sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198]);
            sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
            sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
            sub_24A62F254();
            sub_24A62EFB4();
            _Block_release(v31);

            (*(v36 + 8))(v7, v4);
            (*(v34 + 8))(v11, v35);
          }
        }

        else
        {

          v21 = v18;
          if (v23 == -1)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v24 = *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___animationCoordinator);
        v25 = qword_27EF4EB50;
        v21 = v18;

        if (v25 == -1)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v19 = *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___animationCoordinator);
      v20 = qword_27EF4EB50;
      v21 = v18;

      if (v20 == -1)
      {
        goto LABEL_14;
      }
    }

    swift_once();
    goto LABEL_14;
  }

  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_24A5871C0(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v71 = a2;
  v3 = sub_24A62E654();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_24A62EA94();
  v69 = *(v73 - 8);
  v6 = *(v69 + 8);
  MEMORY[0x28223BE20](v73);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24A62EAD4();
  v75 = *(v72 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A62EAF4();
  v54 = v11;
  v74 = *(v11 - 8);
  v12 = *(v74 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v18 = dispatch_group_create();
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v2;
  sub_24A62E354();

  v19 = aBlock == 3;
  v20 = sub_24A5843A4();
  v21 = v18;
  dispatch_group_enter(v21);
  v64 = sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v22 = sub_24A62F014();
  sub_24A62EAE4();
  sub_24A62EB54();
  v23 = *(v74 + 8);
  v74 += 8;
  v55 = v23;
  v23(v15, v11);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v19;
  *(v24 + 32) = 0;
  *(v24 + 40) = 0;
  v65 = v18;
  *(v24 + 48) = v18;
  v81 = sub_24A58CB7C;
  v82 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v78 = 1107296256;
  v79 = sub_24A5A8458;
  v80 = &unk_285DA6298;
  v25 = _Block_copy(&aBlock);
  v57 = v21;

  v26 = v56;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v27 = sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198]);
  v28 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v29 = sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  v62 = v28;
  v61 = v29;
  v30 = v73;
  v63 = v27;
  sub_24A62F254();
  MEMORY[0x24C21A910](v17, v26, v8, v25);
  _Block_release(v25);

  v31 = *(v69 + 1);
  v69 = v8;
  v32 = v8;
  v33 = v26;
  v60 = v31;
  v31(v32, v30);
  v34 = *(v75 + 8);
  v75 += 8;
  v59 = v34;
  v34(v26, v72);
  v55(v17, v54);
  v35 = v58;
  v36 = sub_24A583AD8();
  v37 = *(v35 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___animationCoordinator);
  v38 = qword_27EF4EB70;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = v57;
  dispatch_group_enter(v57);
  v40 = v66;
  v41 = sub_24A62E644();
  MEMORY[0x28223BE20](v41);
  *(&v53 - 2) = v37;
  *(&v53 - 8) = v36;
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v65;
  v43 = v39;
  sub_24A62E3E4();

  (*(v67 + 8))(v40, v68);
  v44 = sub_24A62F014();
  v45 = swift_allocObject();
  v47 = v70;
  v46 = v71;
  *(v45 + 16) = v70;
  *(v45 + 24) = v46;
  v81 = sub_24A58CBB0;
  v82 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v78 = 1107296256;
  v79 = sub_24A5A8458;
  v80 = &unk_285DA6310;
  v48 = _Block_copy(&aBlock);
  sub_24A519360(v47, v46);
  sub_24A62EAB4();
  v76 = MEMORY[0x277D84F90];
  v49 = v33;
  v50 = v69;
  v51 = v73;
  sub_24A62F254();
  sub_24A62EFB4();
  _Block_release(v48);

  v60(v50, v51);
  v59(v49, v72);
}

uint64_t sub_24A5879C8(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v3 = sub_24A62EA94();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v45 - v12;
  v14 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  MEMORY[0x28223BE20](v20);
  v47 = &v45 - v23;
  v24 = dispatch_group_create();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (LOBYTE(aBlock[0]) == 4)
  {
  }

  else
  {
    v25 = sub_24A62F634();

    v26 = 0.0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v45 = v24;
  v46 = v9;
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v2;
  sub_24A62E354();

  if ((*(v15 + 48))(v13, 1, v14))
  {
    sub_24A50D6A4(v13, &unk_27EF4FE20, &qword_24A634BA0);
    v26 = 0.0;
    v24 = v45;
    v9 = v46;
  }

  else
  {
    (*(v15 + 16))(v19, v13, v14);
    sub_24A50D6A4(v13, &unk_27EF4FE20, &qword_24A634BA0);
    v28 = [objc_opt_self() meters];
    sub_24A62DFE4();

    v29 = *(v15 + 8);
    v29(v19, v14);
    v30 = v47;
    (*(v15 + 32))(v47, v22, v14);
    if (*(v27 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_threshold))
    {
      v31 = 1.8288;
      v32 = 1.88976;
      v24 = v45;
      v9 = v46;
    }

    else
    {
      v9 = v46;
      if (qword_27EF4EAB0 != -1)
      {
        swift_once();
      }

      v31 = *&qword_27EF5C788;
      v24 = v45;
      if (qword_27EF4EA90 != -1)
      {
        swift_once();
      }

      v32 = *&qword_27EF5C768;
    }

    sub_24A62DFD4();
    v34 = v33;
    v29(v30, v14);
    v35 = (v34 - v31) / (v32 - v31);
    if (v35 > 1.0)
    {
      v35 = 1.0;
    }

    if (v35 < 0.0)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v35;
    }
  }

LABEL_18:
  sub_24A5843A4();
  v36 = v24;
  sub_24A52A860(v24, 0, 0, v26);

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v37 = sub_24A62F014();
  v38 = swift_allocObject();
  v40 = v48;
  v39 = v49;
  *(v38 + 16) = v48;
  *(v38 + 24) = v39;
  aBlock[4] = sub_24A58D014;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA6360;
  v41 = _Block_copy(aBlock);
  sub_24A519360(v40, v39);
  sub_24A62EAB4();
  v55 = MEMORY[0x277D84F90];
  sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  v42 = v52;
  v43 = v54;
  sub_24A62F254();
  sub_24A62EFB4();
  _Block_release(v41);

  (*(v53 + 8))(v42, v43);
  (*(v50 + 8))(v9, v51);
}

uint64_t sub_24A5881B0(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);
  v5 = *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing);
  v6 = MEMORY[0x277D839B0];
  v11 = MEMORY[0x277D839B0];
  v10[0] = v5;
  sub_24A583BD0(2, v10);
  sub_24A50D6A4(v10, &unk_27EF50780, &qword_24A638470);
  v7 = *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow);
  v11 = v6;
  v10[0] = v7;
  sub_24A583BD0(3, v10);
  sub_24A50D6A4(v10, &unk_27EF50780, &qword_24A638470);
  v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere);
  v11 = v6;
  v10[0] = v8;
  sub_24A583BD0(4, v10);
  result = sub_24A50D6A4(v10, &unk_27EF50780, &qword_24A638470);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_24A5882BC()
{
  v1 = v0;
  v2 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - v4;
  v6 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v31 > 3u && v31 <= 5u && v31 != 4)
  {

    goto LABEL_13;
  }

  v11 = sub_24A62F634();

  if (v11)
  {
LABEL_13:
    sub_24A584370();
    v18 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A640450);
    v20 = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v18;
    v32 = v20;
    sub_24A62E364();
    v21 = OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___values;
    v22 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___values);
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = 0;
    v32 = 0xE000000000000000;

    sub_24A62E364();
    v23 = *(v1 + v21);
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_14;
  }

  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24A50D6A4(v5, &unk_27EF4FE20, &qword_24A634BA0);
    v12 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___values);
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = 0;
    v32 = 0xE000000000000000;
LABEL_14:

    return sub_24A62E364();
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_24A50D7EC(0, &qword_27EF4FEA0, 0x277CCAE20);
  v13 = sub_24A62DFB4();
  v14 = [objc_opt_self() meters];
  v15 = sub_24A62F164();

  sub_24A62DFD4();
  if ((v15 & 1) == 0)
  {
    if (v16 >= 2.0)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (qword_27EF4EAC8 != -1)
    {
      swift_once();
    }

    v17 = &qword_27EF5C7A0;
    goto LABEL_19;
  }

  if (v16 < 10.0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (qword_27EF4EAC0 != -1)
  {
    swift_once();
  }

  v17 = &qword_27EF5C798;
LABEL_19:
  v25 = *(v0 + 16);
  v26 = *v17;
  [v25 setNumberFormatter_];
  v27 = *(v1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___values);

  v28 = sub_24A62F0C4();
  v30 = v29;
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v28;
  v32 = v30;
  sub_24A62E364();
  sub_24A5879C8(0, 0);

  return (*(v7 + 8))(v10, v6);
}

BOOL sub_24A5888B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v2 - 4 < 2)
  {
    return 1;
  }

  if (v2 != 3)
  {
    return 0;
  }

  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return fabs(v1 * 57.2957795) < 30.0;
}

unint64_t sub_24A5889BC(char a1)
{
  result = 0x416874756D697A61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6C75466372417369;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x7053746567726174;
      break;
    case 5:
      result = 0x6F69746365726964;
      break;
    case 6:
    case 14:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x6169446372417369;
      break;
    case 8:
      result = 0x656C636974726170;
      break;
    case 9:
      result = 0x656C637269436F74;
      break;
    case 10:
      result = 0x65706168536F74;
      break;
    case 11:
      result = 0x63614679616C6564;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A588C5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A58C944();
  *a2 = result;
  return result;
}

void sub_24A588C8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E6F6974;
  v4 = 0x63656E6E6F436F6ELL;
  v5 = 0xE700000000000000;
  v6 = 0x6C616974696E69;
  if (v2 != 6)
  {
    v6 = 0x726F727265;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1918985582;
  if (v2 != 4)
  {
    v8 = 0x646E756F66;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6517345;
  if (v2 != 2)
  {
    v10 = 0x776F727261;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 7496038;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A588D7C()
{
  v1 = OBJC_IVAR____TtCCC11FMFindingUI10VFXManager6Values16CoreMotionValues__motionRotationX;
  v2 = sub_24A508FA4(&qword_27EF4FC68, qword_24A635960);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCCC11FMFindingUI10VFXManager6Values16CoreMotionValues__motionRotationY, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A588E54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VFXManager.Values.CoreMotionValues(0);
  result = sub_24A62E334();
  *a1 = result;
  return result;
}

uint64_t sub_24A588E94()
{
  v0 = sub_24A62EA94();
  v19 = *(v0 - 8);
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A62EAD4();
  v17 = *(v4 - 8);
  v18 = v4;
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  (*(v9 + 104))(v12, *MEMORY[0x277D851C8], v8);
  v13 = sub_24A62F054();
  (*(v9 + 8))(v12, v8);
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24A58CEF4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA63B0;
  v15 = _Block_copy(aBlock);

  sub_24A62EAB4();
  v20 = MEMORY[0x277D84F90];
  sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v7, v3, v15);
  _Block_release(v15);

  (*(v19 + 8))(v3, v0);
  (*(v17 + 8))(v7, v18);
}

void sub_24A589258()
{
  v0 = sub_24A62EA94();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EAD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v10)
  {
    v19 = v10;
    if ([v10 hasTorch] && objc_msgSend(v19, sel_isTorchAvailable))
    {
      v11 = [v19 torchMode] == 1;
      sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
      v18 = v1;
      v17 = sub_24A62F014();
      v12 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v11;
      aBlock[4] = sub_24A58CF34;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DA6400;
      v14 = _Block_copy(aBlock);

      sub_24A62EAB4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198]);
      sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
      sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
      sub_24A62F254();
      v15 = v17;
      MEMORY[0x24C21A950](0, v9, v4, v14);
      _Block_release(v14);

      (*(v18 + 8))(v4, v0);
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v16 = v19;
    }
  }
}

uint64_t sub_24A589644()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24A62E364();
  }

  return result;
}

uint64_t sub_24A589724()
{
  v0 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);

  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_24A509BA8(0x65636E6174736964, 0xE800000000000000, &v11);
    *(v5 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v7 = sub_24A62EC44();
    v9 = sub_24A509BA8(v7, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_24A503000, v3, v4, "Updated value VFXManager.Values.%s to %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24A5882BC();
  }

  return result;
}

uint64_t sub_24A589978()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();
}

uint64_t sub_24A589A2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return v1;
}

uint64_t sub_24A589A98(double a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (LOBYTE(v5[0]) != 6)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      *(v1 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values_azimuthVelocity) = fmod(a1 * 57.2957795 - v5[0] * 57.2957795 + 180.0, 360.0) + -180.0;
      result = swift_weakLoadStrong();
      if (result)
      {
        v4 = *(result + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_24A62E354();

        *&v5[3] = MEMORY[0x277D839F8];
        v5[0] = v5[0] * 57.2957795;
        sub_24A583BD0(0, v5);

        return sub_24A50D6A4(v5, &unk_27EF50780, &qword_24A638470);
      }
    }
  }

  return result;
}

void sub_24A589CAC()
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C130);

  oslog = sub_24A62E2F4();
  v1 = sub_24A62EF34();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v6 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_24A509BA8(0x61635365736C7570, 0xEA0000000000656CLL, &v6);
    *(v2 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    *(v2 + 14) = v5;
    _os_log_impl(&dword_24A503000, oslog, v1, "Updated value VFXManager.Values.%s to %f", v2, 0x16u);
    sub_24A508C54(v3);
    MEMORY[0x24C21BBE0](v3, -1, -1);
    MEMORY[0x24C21BBE0](v2, -1, -1);
  }

  else
  {
  }
}

void sub_24A589E98(uint64_t a1, unint64_t a2)
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C130);

  oslog = sub_24A62E2F4();
  v5 = sub_24A62EF34();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_24A509BA8(a1, a2, &v10);
    *(v6 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    *(v6 + 14) = v9;
    _os_log_impl(&dword_24A503000, oslog, v5, "Updated value VFXManager.Values.%s to %f", v6, 0x16u);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  else
  {
  }
}

void sub_24A58A088()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v8[3] = MEMORY[0x277D839F8];
    *v8 = *v8 * 57.2957795;
    sub_24A583BD0(5, v8);

    sub_24A50D6A4(v8, &unk_27EF50780, &qword_24A638470);
  }

  if (swift_weakLoadStrong())
  {
    sub_24A5871C0(0, 0);
  }

  if (swift_weakLoadStrong())
  {
    sub_24A5869E4(0, 0);
  }

  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);

  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_24A509BA8(0x746E6F7A69726F68, 0xEF656C676E416C61, v8);
    *(v5 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    *(v5 + 14) = v7 * 57.2957795;
    _os_log_impl(&dword_24A503000, v3, v4, "Updated value VFXManager.Values.%s to %f", v5, 0x16u);
    sub_24A508C54(v6);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }
}

void sub_24A58A360()
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C130);

  oslog = sub_24A62E2F4();
  v1 = sub_24A62EF34();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 134217984;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    *(v2 + 4) = v4;
    _os_log_impl(&dword_24A503000, oslog, v1, "Update SwiftUI value .arcToArrowDuration to %f", v2, 0xCu);
    MEMORY[0x24C21BBE0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A58A4F4()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isPlaySoundEnabled;
  v3 = sub_24A508FA4(&qword_27EF4FC70, &qword_24A637600);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isFlashLightOn, v3);
  v4(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isFlashLightVisible, v3);
  v5 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__currentFindableName;
  v6 = sub_24A508FA4(&qword_27EF508E8, &qword_24A637608);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__distance;
  v9 = sub_24A508FA4(&qword_27EF508F0, &qword_24A637610);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v7(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__formattedDistance, v6);
  v7(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__hintSubtitle, v6);
  v7(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__findingSubtitle, v6);
  v10 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__azimuthAngle;
  v11 = sub_24A508FA4(&qword_27EF508F8, &qword_24A637618);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v13 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseFrequency;
  v14 = sub_24A508FA4(&qword_27EF4FC68, qword_24A635960);
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v13, v14);
  v16 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseScale;
  v17 = sub_24A508FA4(&qword_27EF4FC60, &unk_24A637620);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v15(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseDuration, v14);
  v12(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__horizontalAngle, v11);
  v15(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__arcToArrowDuration, v14);
  return v0;
}

uint64_t sub_24A58A80C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_24A58A890()
{
  sub_24A52A2FC(319, &qword_27EF4FC48);
  if (v1 <= 0x3F)
  {
    v15 = *(v0 - 8) + 64;
    sub_24A52A2FC(319, &qword_27EF508A0);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_24A58AAD0();
      if (v6 <= 0x3F)
      {
        v16 = *(v5 - 8) + 64;
        sub_24A52A2FC(319, &qword_27EF508B0);
        if (v8 <= 0x3F)
        {
          v9 = *(v7 - 8) + 64;
          sub_24A52A2FC(319, &qword_27EF4FC50);
          if (v11 <= 0x3F)
          {
            v12 = *(v10 - 8) + 64;
            sub_24A52A2FC(319, &qword_27EF4FC58);
            if (v14 <= 0x3F)
            {
              v17 = *(v13 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_24A58AAD0()
{
  if (!qword_27EF508A8)
  {
    sub_24A50E1E0(&unk_27EF4FE20, &qword_24A634BA0);
    v0 = sub_24A62E374();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF508A8);
    }
  }
}

void sub_24A58AB5C()
{
  sub_24A52A2FC(319, &qword_27EF4FC50);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for VFXManager.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VFXManager.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A58AD94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VFXManager.Values(0);
  result = sub_24A62E334();
  *a1 = result;
  return result;
}

void sub_24A58AEA0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v10 = *a1;
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E364();
  sub_24A589E98(a7, a8);
}

uint64_t sub_24A58AF70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  *a2 = v5;
  return result;
}

uint64_t sub_24A58AFF0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E364();
  return sub_24A583D84();
}

uint64_t sub_24A58B0B8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();
}

uint64_t sub_24A58B134(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_24A50D63C(a1, &v13 - v9, &unk_27EF4FE20, &qword_24A634BA0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A50D63C(v10, v8, &unk_27EF4FE20, &qword_24A634BA0);

  sub_24A62E364();
  sub_24A589724();
  return sub_24A50D6A4(v10, &unk_27EF4FE20, &qword_24A634BA0);
}

uint64_t sub_24A58B2CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24A58B35C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

uint64_t sub_24A58B3F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E364();
  return sub_24A589A98(v5);
}

uint64_t sub_24A58B500(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v10 = sub_24A62E364();
  return a7(v10);
}

void sub_24A58B59C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E364();
  sub_24A58A360();
}

uint64_t sub_24A58B61C(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if (result > 3u || result <= 1u || result == 2)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (result > 3u)
        {
          if (result > 5u)
          {
            v4 = result;
          }

          else
          {
            if (result == 4)
            {
            }

            v4 = result;
          }
        }

        else
        {
          v4 = result;
        }

        v6 = sub_24A62F634();

        if (v6)
        {
          return result;
        }

        if (v4 <= 3u || v4 > 5u || v4 == 4)
        {
          goto LABEL_74;
        }
      }
    }

    if (!a2)
    {
      if (result <= 3u)
      {
        v2 = result;
        goto LABEL_43;
      }

      if (result <= 5u)
      {
        v2 = result;
        goto LABEL_43;
      }

      if (result != 6)
      {
        v2 = result;
LABEL_43:
        v7 = sub_24A62F634();

        if (v7)
        {
          return result;
        }

        if (v2 <= 3u && v2 > 1u && v2 != 2)
        {
        }

        v10 = sub_24A62F634();

        if (v10)
        {
          return result;
        }

        if (v2 == 4)
        {
        }

        v12 = sub_24A62F634();

        if (v12)
        {
          return result;
        }

        if (v2 > 3u && v2 <= 5u && v2 != 4)
        {
        }

LABEL_74:
        sub_24A62F634();
      }
    }

    if (result > 3u)
    {
      v3 = result;
    }

    else if (result > 1u)
    {
      if (result != 2)
      {
      }

      v3 = result;
    }

    else
    {
      v3 = result;
    }

    v5 = sub_24A62F634();

    if (v5)
    {
      return result;
    }

    if (v3 <= 3u || v3 != 4)
    {
      v8 = sub_24A62F634();

      if (v8)
      {
        return result;
      }

      if (v3 <= 3u)
      {
        v9 = v3;
        goto LABEL_63;
      }

      if (v3 > 5u)
      {
        v9 = v3;
LABEL_63:
        v11 = sub_24A62F634();

        if (v11)
        {
          return result;
        }

        if (v9 == 2)
        {
        }

        goto LABEL_74;
      }

      if (v3 == 4)
      {
        v9 = v3;
        goto LABEL_63;
      }
    }
  }

  return result;
}

uint64_t sub_24A58C10C(uint64_t a1)
{
  v73 = a1;
  v2 = sub_24A508FA4(&qword_27EF4FC60, &unk_24A637620);
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v2);
  v70 = &v58 - v4;
  v5 = sub_24A508FA4(&qword_27EF4FC68, qword_24A635960);
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v5);
  v67 = &v58 - v7;
  v66 = sub_24A508FA4(&qword_27EF508F8, &qword_24A637618);
  v74 = *(v66 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v58 - v9;
  v10 = sub_24A508FA4(&qword_27EF508F0, &qword_24A637610);
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v58 - v12;
  v61 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v13 = *(*(v61 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v61);
  v60 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v59 = sub_24A508FA4(&qword_27EF508E8, &qword_24A637608);
  v18 = *(v59 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v59);
  v21 = &v58 - v20;
  v22 = sub_24A508FA4(&qword_27EF4FC70, &qword_24A637600);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  swift_weakInit();
  v27 = type metadata accessor for VFXManager.Values.CoreMotionValues(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v75 = 0;
  sub_24A62E344();
  v75 = 0;
  sub_24A62E344();
  *(v1 + 24) = v30;
  v31 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isPlaySoundEnabled;
  LOBYTE(v75) = 0;
  sub_24A62E344();
  v32 = *(v23 + 32);
  v32(v1 + v31, v26, v22);
  v33 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isFlashLightOn;
  LOBYTE(v75) = 0;
  sub_24A62E344();
  v32(v1 + v33, v26, v22);
  v34 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isFlashLightVisible;
  LOBYTE(v75) = 0;
  sub_24A62E344();
  v32(v1 + v34, v26, v22);
  v35 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__currentFindableName;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_24A62E344();
  v36 = *(v18 + 32);
  v58 = v18 + 32;
  v37 = v59;
  v36(v1 + v35, v21, v59);
  v38 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__distance;
  v39 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  (*(*(v39 - 8) + 56))(v17, 1, 1, v39);
  sub_24A50D63C(v17, v60, &unk_27EF4FE20, &qword_24A634BA0);
  v40 = v62;
  sub_24A62E344();
  sub_24A50D6A4(v17, &unk_27EF4FE20, &qword_24A634BA0);
  (*(v63 + 32))(v1 + v38, v40, v64);
  v41 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__formattedDistance;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_24A62E344();
  v36(v1 + v41, v21, v37);
  v42 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__hintSubtitle;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_24A62E344();
  v36(v1 + v42, v21, v37);
  v43 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__findingSubtitle;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_24A62E344();
  v36(v1 + v43, v21, v37);
  v44 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__azimuthAngle;
  v75 = 0;
  v45 = v65;
  sub_24A62E344();
  v46 = *(v74 + 32);
  v74 += 32;
  v47 = v66;
  v46(v1 + v44, v45, v66);
  *(v1 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values_azimuthVelocity) = 0;
  v48 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseFrequency;
  v75 = 0x3FE0000000000000;
  v49 = v67;
  sub_24A62E344();
  v50 = v69;
  v51 = *(v68 + 32);
  v51(v1 + v48, v49, v69);
  v52 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseScale;
  v75 = 0x4012000000000000;
  v53 = v70;
  sub_24A62E344();
  (*(v71 + 32))(v1 + v52, v53, v72);
  v54 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseDuration;
  v75 = 0x3FE0000000000000;
  sub_24A62E344();
  v51(v1 + v54, v49, v50);
  v55 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__horizontalAngle;
  v75 = 0;
  sub_24A62E344();
  v46(v1 + v55, v45, v47);
  v56 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__arcToArrowDuration;
  v75 = 0x3FD3333333333333;
  sub_24A62E344();
  v51(v1 + v56, v49, v50);
  swift_weakAssign();
  sub_24A588E94();
  return v1;
}

uint64_t sub_24A58C944()
{
  v0 = sub_24A62F4B4();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A58CAA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A58CB2C()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A58CB90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A52A394();
}

uint64_t sub_24A58CE1C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A58CEBC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A58CEFC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A58CF34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24A589644();
}

uint64_t sub_24A58CF48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A58CF90()
{
  result = qword_27EF50910;
  if (!qword_27EF50910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50910);
  }

  return result;
}

uint64_t FMMockFindingSession.__allocating_init(findables:primaryPart:findingType:groupedItemIdentifiers:arSession:)(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v41 = sub_24A508FA4(&qword_27EF50918, &unk_24A637650);
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v41);
  v14 = &v33 - v13;
  v15 = *(v5 + 48);
  v16 = *(v5 + 52);
  v38 = swift_allocObject();
  LODWORD(a3) = *a3;
  type metadata accessor for FMFindingMockLocalizer();
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  v37 = a3;
  v36 = v17;
  *(v17 + 32) = a3;
  v18 = *(a1 + 16);
  v40 = a1;
  if (v18)
  {
    v33 = a4;
    v35 = a2;
    v45 = MEMORY[0x277D84F90];
    v34 = a5;
    v19 = a5;
    sub_24A58D928(0, v18, 0);
    v20 = v45;
    v21 = a1 + 32;
    do
    {
      sub_24A508AE4(v21, v42);
      v22 = &v14[*(v41 + 48)];
      v23 = v43;
      v24 = v44;
      sub_24A50A204(v42, v43);
      (*(v24 + 16))(v23, v24);
      *(v22 + 4) = 0u;
      *(v22 + 5) = 0u;
      *(v22 + 2) = 0u;
      *(v22 + 3) = 0u;
      *v22 = 0u;
      *(v22 + 1) = 0u;
      v22[100] = 0;
      *(v22 + 24) = 0x4000000;
      sub_24A508C54(v42);
      v45 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_24A58D928(v25 > 1, v26 + 1, 1);
        v20 = v45;
      }

      *(v20 + 16) = v26 + 1;
      sub_24A58D948(v14, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26);
      v21 += 40;
      --v18;
    }

    while (v18);
    a5 = v34;
    a2 = v35;
    a4 = v33;
    if (*(v20 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v28 = a5;
    v20 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
      v27 = sub_24A62F494();
      goto LABEL_10;
    }
  }

  v27 = MEMORY[0x277D84F98];
LABEL_10:
  v42[0] = v27;
  v29 = v39;
  sub_24A58DA38(v20, 1, v42);
  if (v29)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v30 = v36;
    *(v36 + 40) = v42[0];
    *(v38 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer) = v30;
    sub_24A50D63C(a2, v42, &unk_27EF522E0, qword_24A637660);
    LOWORD(v45) = v37;
    v31 = sub_24A60E654(v40, v42, &v45, a4, a5);
    sub_24A58E048(a2);
    *(*(v31 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer) + 24) = &off_285DAB2A0;
    swift_unknownObjectWeakAssign();
    return v31;
  }

  return result;
}

uint64_t FMMockFindingSession.init(findables:primaryPart:findingType:groupedItemIdentifiers:arSession:)(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v6 = v5;
  v42 = sub_24A508FA4(&qword_27EF50918, &unk_24A637650);
  v12 = *(v42 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v34 - v14;
  LODWORD(a3) = *a3;
  type metadata accessor for FMFindingMockLocalizer();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  v39 = a3;
  v38 = v16;
  *(v16 + 32) = a3;
  v17 = *(a1 + 16);
  v41 = a1;
  if (v17)
  {
    v34 = a4;
    v36 = v6;
    v37 = a2;
    v46 = MEMORY[0x277D84F90];
    v35 = a5;
    v18 = a5;
    sub_24A58D928(0, v17, 0);
    v19 = v46;
    v20 = a1 + 32;
    do
    {
      sub_24A508AE4(v20, v43);
      v21 = &v15[*(v42 + 48)];
      v22 = v44;
      v23 = v45;
      sub_24A50A204(v43, v44);
      (*(v23 + 16))(v22, v23);
      *(v21 + 4) = 0u;
      *(v21 + 5) = 0u;
      *(v21 + 2) = 0u;
      *(v21 + 3) = 0u;
      *v21 = 0u;
      *(v21 + 1) = 0u;
      v21[100] = 0;
      *(v21 + 24) = 0x4000000;
      sub_24A508C54(v43);
      v46 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_24A58D928(v24 > 1, v25 + 1, 1);
        v19 = v46;
      }

      *(v19 + 16) = v25 + 1;
      sub_24A58D948(v15, v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25);
      v20 += 40;
      --v17;
    }

    while (v17);
    v6 = v36;
    a2 = v37;
    v26 = v34;
    a5 = v35;
    if (*(v19 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v26 = a4;
    v28 = a5;
    v19 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
      v27 = sub_24A62F494();
      goto LABEL_10;
    }
  }

  v27 = MEMORY[0x277D84F98];
LABEL_10:
  v30 = v40;
  v29 = v41;
  v43[0] = v27;
  sub_24A58DA38(v19, 1, v43);
  if (v30)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v31 = v38;
    *(v38 + 40) = v43[0];
    *(v6 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer) = v31;
    sub_24A50D63C(a2, v43, &unk_27EF522E0, qword_24A637660);
    LOWORD(v46) = v39;
    v32 = sub_24A60E654(v29, v43, &v46, v26, a5);
    sub_24A58E048(a2);
    *(*(v32 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer) + 24) = &off_285DAB2A0;
    swift_unknownObjectWeakAssign();
    return v32;
  }

  return result;
}

uint64_t FMMockFindingSession.deinit()
{
  v0 = FMFindingSession.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);

  return v0;
}

uint64_t FMMockFindingSession.__deallocating_deinit()
{
  v0 = FMFindingSession.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A58D808(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v13 = *a3;
  v9 = type metadata accessor for FMMockFindingSession();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  return FMMockFindingSession.init(findables:primaryPart:findingType:groupedItemIdentifiers:arSession:)(a1, a2, &v13, a4, a5);
}

char *sub_24A58D888(char *a1, int64_t a2, char a3)
{
  result = sub_24A5E532C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24A58D8A8(size_t a1, int64_t a2, char a3)
{
  result = sub_24A5E545C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A58D8C8(char *a1, int64_t a2, char a3)
{
  result = sub_24A5E5634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24A58D8E8(size_t a1, int64_t a2, char a3)
{
  result = sub_24A5E5744(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58D908(void *a1, int64_t a2, char a3)
{
  result = sub_24A5E5438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24A58D928(size_t a1, int64_t a2, char a3)
{
  result = sub_24A5E5768(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_24A58D948(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF50918, &unk_24A637650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_24A58D9B8(char *a1, int64_t a2, char a3)
{
  result = sub_24A5E5974(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58D9D8(void *a1, int64_t a2, char a3)
{
  result = sub_24A5E5A78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58D9F8(void *a1, int64_t a2, char a3)
{
  result = sub_24A5E5A9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58DA18(void *a1, int64_t a2, char a3)
{
  result = sub_24A5E5C08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_24A58DA38(uint64_t a1, char a2, uint64_t *a3)
{
  v7 = sub_24A62E214();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A508FA4(&qword_27EF50918, &unk_24A637650);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = v79 - v16;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v80 = *(a1 + 16);
  v79[1] = v3;
  v18 = &v17[*(v14 + 48)];
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v81 = *(v15 + 72);
  v82 = a1;
  v79[0] = v19;
  sub_24A50D63C(a1 + v19, v79 - v16, &qword_27EF50918, &unk_24A637650);
  v83 = v8;
  v84 = v7;
  v22 = *(v8 + 32);
  v21 = (v8 + 32);
  v20 = v22;
  v22(v11, v17, v7);
  v23 = *(v18 + 5);
  v92 = *(v18 + 4);
  v93[0] = v23;
  *(v93 + 13) = *(v18 + 93);
  v24 = *(v18 + 1);
  v88 = *v18;
  v89 = v24;
  v25 = *(v18 + 3);
  v90 = *(v18 + 2);
  v91 = v25;
  v85 = a3;
  v26 = *a3;
  v27 = sub_24A515AC8(v11);
  v29 = *(v26 + 16);
  v30 = (v28 & 1) == 0;
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = v28;
  if (*(v26 + 24) < v32)
  {
    v34 = v85;
    sub_24A5558A0(v32, a2 & 1);
    v35 = *v34;
    v27 = sub_24A515AC8(v11);
    if ((v33 & 1) != (v36 & 1))
    {
LABEL_5:
      sub_24A62F674();
      __break(1u);
      goto LABEL_14;
    }

LABEL_8:
    if (v33)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v39 = v27;
  sub_24A55891C();
  v27 = v39;
  if (v33)
  {
LABEL_9:
    v37 = swift_allocError();
    swift_willThrow();

    v94 = v37;
    v38 = v37;
    sub_24A508FA4(&unk_27EF4F990, &unk_24A6349E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_24A517ABC(&v88);
      (*(v83 + 8))(v11, v84);

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v40 = v84;
  v41 = *v85;
  *(*v85 + 8 * (v27 >> 6) + 64) |= 1 << v27;
  v42 = v27;
  v20(v41[6] + *(v83 + 72) * v27, v11, v40);
  v43 = v41[7] + 104 * v42;
  v44 = v88;
  v45 = v90;
  *(v43 + 16) = v89;
  *(v43 + 32) = v45;
  *v43 = v44;
  v46 = v91;
  v47 = v92;
  v48 = v93[0];
  *(v43 + 93) = *(v93 + 13);
  *(v43 + 64) = v47;
  *(v43 + 80) = v48;
  *(v43 + 48) = v46;
  v49 = v41[2];
  v31 = __OFADD__(v49, 1);
  v50 = v49 + 1;
  if (!v31)
  {
    v41[2] = v50;
    if (v80 == 1)
    {
LABEL_14:

      return;
    }

    if (*(v82 + 16) < 2uLL)
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v51 = v82 + v81 + v79[0];
      v80 = 2 - v80;
      v52 = 1;
      while (1)
      {
        sub_24A50D63C(v51, v17, &qword_27EF50918, &unk_24A637650);
        v53 = *v21;
        (*v21)(v11, v17, v84);
        v54 = *(v18 + 5);
        v92 = *(v18 + 4);
        v93[0] = v54;
        *(v93 + 13) = *(v18 + 93);
        v55 = *(v18 + 1);
        v88 = *v18;
        v89 = v55;
        v56 = *(v18 + 3);
        v90 = *(v18 + 2);
        v91 = v56;
        v57 = *v85;
        v58 = sub_24A515AC8(v11);
        v60 = *(v57 + 16);
        v61 = (v59 & 1) == 0;
        v31 = __OFADD__(v60, v61);
        v62 = v60 + v61;
        if (v31)
        {
          break;
        }

        v63 = v59;
        if (*(v57 + 24) < v62)
        {
          v64 = v85;
          sub_24A5558A0(v62, 1);
          v65 = *v64;
          v58 = sub_24A515AC8(v11);
          if ((v63 & 1) != (v66 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v63)
        {
          goto LABEL_9;
        }

        v67 = v84;
        v68 = *v85;
        *(*v85 + 8 * (v58 >> 6) + 64) |= 1 << v58;
        v69 = v58;
        v53((v68[6] + *(v83 + 72) * v58), v11, v67);
        v70 = v68[7] + 104 * v69;
        v71 = v88;
        v72 = v90;
        *(v70 + 16) = v89;
        *(v70 + 32) = v72;
        *v70 = v71;
        v73 = v91;
        v74 = v92;
        v75 = v93[0];
        *(v70 + 93) = *(v93 + 13);
        *(v70 + 64) = v74;
        *(v70 + 80) = v75;
        *(v70 + 48) = v73;
        v76 = v68[2];
        v31 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (v31)
        {
          goto LABEL_26;
        }

        v78 = v80 + v52;
        v68[2] = v77;
        if (v78 == 1)
        {
          goto LABEL_14;
        }

        ++v52;
        v51 += v81;
        if (v52 >= *(v82 + 16))
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_24A62F384();
  MEMORY[0x24C21A5D0](0xD00000000000001BLL, 0x800000024A63ECC0);
  sub_24A62F434();
  MEMORY[0x24C21A5D0](39, 0xE100000000000000);
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A58E048(uint64_t a1)
{
  v2 = sub_24A508FA4(&unk_27EF522E0, qword_24A637660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FMMockFindingSession()
{
  result = qword_27EF50920;
  if (!qword_27EF50920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FMPFMetalBGRABackdropMixerParameters(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24A58E1A8()
{
  v1 = sub_24A62EA94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalDevice];
  if (v12)
  {
    v16[0] = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue];
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v0;
    aBlock[4] = sub_24A58FF4C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA65F0;
    v14 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v15 = v0;
    sub_24A62EAB4();
    v16[1] = MEMORY[0x277D84F90];
    sub_24A58FDA4(&qword_27EF4F970, MEMORY[0x277D85198]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v11, v5, v14);
    _Block_release(v14);
    swift_unknownObjectRelease();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v11, v6);
  }

  return result;
}

void sub_24A58E478(id metalDevice, char *a2)
{
  cacheOut[1] = *MEMORY[0x277D85DE8];
  cacheOut[0] = 0;
  CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], 0, metalDevice, 0, cacheOut);
  v4 = cacheOut[0];
  v5 = *&a2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache];
  *&a2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache] = cacheOut[0];
  v6 = v4;

  v7 = [metalDevice newCommandQueue];
  v8 = *&a2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalCommandQueue];
  *&a2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalCommandQueue] = v7;
  swift_unknownObjectRelease();
  type metadata accessor for FMPFView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v37 = 0;
  v11 = [metalDevice newDefaultLibraryWithBundle:v10 error:&v37];
  v12 = v37;
  if (v11)
  {
    v13 = v11;
    swift_unknownObjectRetain();
    v14 = v12;
    v15 = sub_24A62EBE4();
    v16 = [v13 newFunctionWithName_];
    swift_unknownObjectRelease();

    if (v16)
    {
      v37 = 0;
      v17 = [metalDevice newComputePipelineStateWithFunction:v16 error:&v37];
      v18 = v37;
      if (v17)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v19 = *&a2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerPipelineState];
        *&a2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerPipelineState] = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = v18;
        v23 = sub_24A62E084();

        swift_willThrow();
        if (qword_27EF4E990 != -1)
        {
          swift_once();
        }

        v24 = sub_24A62E314();
        sub_24A506EB8(v24, qword_27EF5C0E8);
        v25 = a2;
        v26 = v23;
        v27 = sub_24A62E2F4();
        v28 = sub_24A62EF64();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v37 = v36;
          *v29 = 138412546;
          *(v29 + 4) = v25;
          *v35 = v25;
          *(v29 + 12) = 2080;
          swift_getErrorValue();
          v30 = v25;
          v31 = sub_24A62F6A4();
          v33 = sub_24A509BA8(v31, v32, &v37);

          *(v29 + 14) = v33;
          _os_log_impl(&dword_24A503000, v27, v28, "🧭 FMPFView%@: failed loading Metal Shader (%s)", v29, 0x16u);
          sub_24A58FDEC(v35);
          MEMORY[0x24C21BBE0](v35, -1, -1);
          sub_24A508C54(v36);
          MEMORY[0x24C21BBE0](v36, -1, -1);
          MEMORY[0x24C21BBE0](v29, -1, -1);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v20 = v37;
    v21 = sub_24A62E084();

    swift_willThrow();
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_24A58E8A4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache;
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache);
  if (v3)
  {
    CVMetalTextureCacheFlush(v3, 0);
    v3 = *(a1 + v2);
  }

  *(a1 + v2) = 0;
}

id sub_24A58E8F8(__CVBuffer *a1, double a2)
{
  textureOut[1] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache);
  if (!v3)
  {
    goto LABEL_5;
  }

  v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_videoHelpers);

  v7 = v3;
  v8 = sub_24A61C2D0(a1, a2);

  if (!v8)
  {

    result = 0;
    goto LABEL_11;
  }

  Width = CVPixelBufferGetWidth(v8);
  Height = CVPixelBufferGetHeight(v8);
  textureOut[0] = 0;
  if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], v7, v8, 0, MTLPixelFormatBGRA8Unorm_sRGB, Width, Height, 0, textureOut))
  {

LABEL_5:
    result = 0;
    goto LABEL_11;
  }

  if (textureOut[0])
  {
    v12 = textureOut[0];
    v13 = CVMetalTextureGetTexture(v12);
  }

  else
  {

    v13 = 0;
  }

  result = v13;
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24A58EA70(void *a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalDevice);
  if (!v3 || (v4 = *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalCommandQueue)) == 0 || (v5 = *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerPipelineState)) == 0)
  {
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v8 = sub_24A62E314();
    sub_24A506EB8(v8, qword_27EF5C0E8);
    v9 = v2;
    oslog = sub_24A62E2F4();
    v10 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v9;
      v13 = v9;
      _os_log_impl(&dword_24A503000, oslog, v10, "🧭 FMPFView%@: cannot use Metal Shader as it is not set up", v11, 0xCu);
      sub_24A58FDEC(v12);
      MEMORY[0x24C21BBE0](v12, -1, -1);
      MEMORY[0x24C21BBE0](v11, -1, -1);
    }

    goto LABEL_38;
  }

  v7 = &property descriptor for FMFindingViewController.dismissedHandler;
  if (*(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalHasLoggedSetup))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalHasLoggedSetup) = 1;
    v14 = qword_27EF4E990;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_24A62E314();
    sub_24A506EB8(v15, qword_27EF5C0E8);
    swift_unknownObjectRetain_n();
    osloga = v2;
    v16 = v2;
    v17 = sub_24A62E2F4();
    v18 = sub_24A62EF64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412802;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 2048;
      v21 = v16;
      v22 = [a1 width];
      swift_unknownObjectRelease();
      *(v19 + 14) = v22;
      swift_unknownObjectRelease();
      *(v19 + 22) = 2048;
      v23 = [a1 height];
      swift_unknownObjectRelease();
      *(v19 + 24) = v23;
      v7 = &property descriptor for FMFindingViewController.dismissedHandler;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMPFView%@: set up Metal Shader %ldx%ld in/out texture", v19, 0x20u);
      sub_24A58FDEC(v20);
      MEMORY[0x24C21BBE0](v20, -1, -1);
      MEMORY[0x24C21BBE0](v19, -1, -1);

      v2 = osloga;
    }

    else
    {

      swift_unknownObjectRelease_n();
      v2 = osloga;
      v7 = &property descriptor for FMFindingViewController.dismissedHandler;
    }
  }

  oslog = [objc_opt_self() texture2DDescriptorWithPixelFormat:objc_msgSend(a1 width:sel_pixelFormat) height:objc_msgSend(a1 mipmapped:v7[408]), objc_msgSend(a1, sel_height), 1];
  [oslog setUsage:3];
  v24 = [v3 newTextureWithDescriptor_];
  if (v24)
  {
    v25 = v24;
    v26 = [v4 commandBuffer];
    if (v26)
    {
      v27 = v26;
      v28 = [v4 commandBuffer];
      if (v28)
      {
        v29 = v28;
        v30 = swift_allocObject();
        *(v30 + 16) = a2;
        *(v30 + 24) = v25;
        v61 = sub_24A58FE94;
        v62 = v30;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v59 = sub_24A58F36C;
        v60 = &unk_285DA65A0;
        v31 = _Block_copy(&aBlock);
        v32 = a2;
        swift_unknownObjectRetain();

        [v29 addCompletedHandler_];
        _Block_release(v31);
        if (*(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_experienceType) < 2u)
        {
          v33 = *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring);
          v34 = (v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
          swift_beginAccess();
          v35 = *v34 + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v34[35] + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v35) <= *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v35 = v34[35] + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          v36 = v35;
          v37 = objc_allocWithZone(MEMORY[0x277CD7520]);
          *&v38 = v36;
          v39 = [v37 initWithDevice:v3 sigma:v38];
          [v39 encodeToCommandBuffer:v27 sourceTexture:a1 destinationTexture:v25];
          [v27 commit];
        }

        v40 = [v29 computeCommandEncoder];
        if (!v40)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_43;
        }

        v41 = v40;
        v57 = *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerParameters);
        [v40 setComputePipelineState_];
        [v41 setBytes:&v57 length:16 atIndex:0];
        swift_unknownObjectRetain();
        [v41 setTexture:v25 atIndex:0];
        [v41 setTexture:v25 atIndex:1];
        swift_unknownObjectRelease();
        v42 = sqrt([v5 maxTotalThreadsPerThreadgroup]);
        if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v42 > -9.22337204e18)
        {
          if (v42 < 9.22337204e18)
          {
            v43 = v42 + 15;
            if (v42 >= 0)
            {
              v43 = v42;
            }

            sub_24A58FEFC(v43 & 0xFFFFFFFFFFFFFFF0, v43 & 0xFFFFFFFFFFFFFFF0, &aBlock);
            v44 = aBlock;
            v52 = v59;
            v45 = [a1 width];
            if (v44)
            {
              v46 = v45;
              if (v45 == 0x8000000000000000 && v44 == -1)
              {
                goto LABEL_49;
              }

              v47 = [a1 height];
              if (*(&v44 + 1))
              {
                if (v47 != 0x8000000000000000 || *(&v44 + 1) != -1)
                {
                  sub_24A58FEFC(v46 / v44, v47 / *(&v44 + 1), &aBlock);
                  v55 = v44;
                  v56 = v52;
                  [v41 dispatchThreadgroups:&aBlock threadsPerThreadgroup:&v55];
                  [v41 endEncoding];
                  [v50 commit];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
LABEL_43:
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  v49 = *MEMORY[0x277D85DE8];
                  return;
                }

LABEL_50:
                __break(1u);
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

        __break(1u);
        goto LABEL_46;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_37:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_38:
  v48 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A58F36C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_24A58F3CC(void *a1, void *a2)
{
  v5 = sub_24A62EA94();
  v6 = *(v5 - 8);
  isa = v6[8].isa;
  MEMORY[0x28223BE20](v5);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A62EAD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CVPixelBufferGetPixelFormatType(a1) == 875704422)
  {
    v45 = v6;
    v15 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
    [*&v2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] bounds];
    v17 = v16;
    [*&v2[v15] bounds];
    if ((v2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingBusy] & 1) == 0)
    {
      v37 = v17 / v18;
      v44[1] = *&v2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue];
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      *(v39 + 24) = a1;
      *(v39 + 32) = v37;
      *(v39 + 40) = a2;
      aBlock[4] = sub_24A58FD7C;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DA6550;
      v40 = _Block_copy(aBlock);

      v41 = a1;
      v42 = a2;
      sub_24A62EAB4();
      v46 = MEMORY[0x277D84F90];
      sub_24A58FDA4(&qword_27EF4F970, MEMORY[0x277D85198]);
      sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
      sub_24A529464();
      sub_24A62F254();
      MEMORY[0x24C21A950](0, v14, v9, v40);
      _Block_release(v40);
      (v45[1].isa)(v9, v5);
      (*(v11 + 8))(v14, v10);

      return;
    }

    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v19 = sub_24A62E314();
    sub_24A506EB8(v19, qword_27EF5C0E8);
    v20 = v2;
    v45 = sub_24A62E2F4();
    v21 = sub_24A62EF64();

    if (os_log_type_enabled(v45, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v20;
      *v23 = v20;
      v24 = v20;
      _os_log_impl(&dword_24A503000, v45, v21, "🧭 FMPFView%@: dropping frame - metal processing queue is busy", v22, 0xCu);
      sub_24A58FDEC(v23);
      MEMORY[0x24C21BBE0](v23, -1, -1);
      MEMORY[0x24C21BBE0](v22, -1, -1);
    }
  }

  else
  {
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24A633A00;
    *(v25 + 56) = type metadata accessor for FMPFView();
    *(v25 + 64) = sub_24A58FDA4(&qword_27EF50938, type metadata accessor for FMPFView);
    *(v25 + 32) = v2;
    v26 = v2;
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v28 = MEMORY[0x277D84D30];
    *(v25 + 96) = MEMORY[0x277D84CC0];
    *(v25 + 104) = v28;
    *(v25 + 72) = PixelFormatType;
    v29 = sub_24A62EC24();
    v31 = v30;
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v32 = sub_24A62E314();
    sub_24A506EB8(v32, qword_27EF5C0E8);

    v45 = sub_24A62E2F4();
    v33 = sub_24A62EF64();

    if (os_log_type_enabled(v45, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      v36 = sub_24A509BA8(v29, v31, aBlock);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_24A503000, v45, v33, "%s", v34, 0xCu);
      sub_24A508C54(v35);
      MEMORY[0x24C21BBE0](v35, -1, -1);
      MEMORY[0x24C21BBE0](v34, -1, -1);

      return;
    }
  }

  v43 = v45;
}

void sub_24A58FA50(double a1, uint64_t a2, __CVBuffer *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingBusy;
    *(Strong + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingBusy) = 1;
    Width = CVPixelBufferGetWidth(a3);
    v11 = 0.5;
    if (Width < 1920)
    {
      v11 = 0.75;
    }

    v12 = sub_24A58E8F8(a3, v11);
    if (v12)
    {
      v13 = v12;
      v14 = [v12 width];
      v15 = 1.0 / (v14 / [v13 height]);
      v33 = 0uLL;
      v32 = 0uLL;
      v31 = 0uLL;
      v16 = v15 < a1;
      v17 = a1 / v15;
      v18 = v15 / a1;
      if (v16)
      {
        v19 = v18;
      }

      else
      {
        v19 = 1.0;
      }

      if (v16)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = v17;
      }

      SCNMatrix4MakeRotation(&a, 1.5708, 0.0, 0.0, 1.0);
      b.m11 = v19;
      *&b.m12 = v33;
      b.m22 = v20;
      *&b.m23 = v32;
      b.m33 = 1.0;
      *&b.m34 = v31;
      b.m44 = 1.0;
      SCNMatrix4Mult(&v28, &a, &b);
      [a4 setContentsTransform_];
      sub_24A58EA70(v13, a4);
      swift_unknownObjectRelease();
      v8[v9] = 0;
    }

    else
    {
      if (qword_27EF4E990 != -1)
      {
        swift_once();
      }

      v21 = sub_24A62E314();
      sub_24A506EB8(v21, qword_27EF5C0E8);
      v22 = v8;
      v23 = sub_24A62E2F4();
      v24 = sub_24A62EF64();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v8;
        v27 = v22;
        _os_log_impl(&dword_24A503000, v23, v24, "🧭 FMPFView%@: cannot process camera frame as it could not be converted to BGRA", v25, 0xCu);
        sub_24A58FDEC(v26);
        MEMORY[0x24C21BBE0](v26, -1, -1);
        MEMORY[0x24C21BBE0](v25, -1, -1);
      }

      v8[v9] = 0;
    }
  }
}

uint64_t sub_24A58FCFC()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A58FD34()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A58FD8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A58FDA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A58FDEC(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A58FE54()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_24A58FE94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 setWrapT_];
  [v1 setWrapS_];

  return [v1 setContents_];
}

uint64_t sub_24A58FEFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t sub_24A58FF0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A58FF64()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton];
  v3 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A6405E0);
  v4 = &v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend];
  v5 = *&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend + 8];
  *v4 = v3;
  v4[1] = v6;

  v7 = *&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label];

  v8 = v7;
  v9 = sub_24A62EBE4();

  [v8 setText_];

  v10 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (!v10)
  {
LABEL_13:
    v27 = *&v0[v1];
    v126 = type metadata accessor for FMFindingViewController();
    v125[0] = v0;
    v28 = v0;
    v29 = v27;
    v30 = sub_24A5D2200(0xD000000000000024, 0x800000024A640600);
    v32 = v31;
    v33 = [v29 layer];
    [v33 removeAllAnimations];

    v34 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
    v35 = [*&v29[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    [v35 removeAllAnimations];

    v36 = [*&v29[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
    [v36 removeAllAnimations];

    v37 = *&v29[v34];
    sub_24A582188(v125, v123);
    v38 = v124;
    if (v124)
    {
      v39 = sub_24A50A204(v123, v124);
      v40 = *(v38 - 8);
      v41 = *(v40 + 64);
      MEMORY[0x28223BE20](v39);
      v43 = &v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v43);
      v44 = v37;
      v45 = sub_24A62F624();
      (*(v40 + 8))(v43, v38);
      sub_24A508C54(v123);
    }

    else
    {
      v46 = v37;
      v45 = 0;
    }

    [v37 addTarget:v45 action:sel_torchActionWithSender_ forControlEvents:64];

    swift_unknownObjectRelease();

    v47 = sub_24A62EBE4();
    [v29 setAccessibilityLabel_];

    sub_24A50D7EC(0, &qword_27EF50940, 0x277D75088);
    sub_24A582188(v125, v123);
    v48 = sub_24A5921B4(v30, v32, v123, sel_torchActionWithSender_);
    sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_24A6339F0;
    *(v49 + 32) = v48;
    v50 = v48;
    v51 = sub_24A62ED54();

    [v29 setAccessibilityCustomActions_];

    sub_24A50D6A4(v125, &unk_27EF50780, &qword_24A638470);
    return 0;
  }

  v11 = v10;
  if (![v10 hasTorch])
  {

    goto LABEL_13;
  }

  v12 = [v11 torchMode];
  v13 = *&v0[v1];
  v14 = *&v13[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named];
  v15 = *&v13[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named + 8];
  if (v12 != 1)
  {
    if (v15 && (v14 == 0xD000000000000013 ? (v53 = v15 == 0x800000024A640630) : (v53 = 0), v53 || (sub_24A62F634() & 1) != 0))
    {
    }

    else
    {
      v54 = objc_opt_self();
      v55 = v13;
      v56 = [v54 whiteColor];
      v57 = [v54 whiteColor];
      v58 = [v57 colorWithAlphaComponent_];

      sub_24A62A8A4(0xD000000000000013, 0x800000024A640630, v56, v58);
      v59 = *&v0[v1];
      v126 = type metadata accessor for FMFindingViewController();
      v125[0] = v0;
      v60 = v0;
      v61 = v59;
      v62 = sub_24A5D2200(0xD000000000000024, 0x800000024A640600);
      v64 = v63;
      v65 = [v61 layer];
      [v65 removeAllAnimations];

      v66 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
      v67 = [*&v61[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
      [v67 removeAllAnimations];

      v68 = [*&v61[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
      [v68 removeAllAnimations];

      v69 = *&v61[v66];
      sub_24A582188(v125, v123);
      v70 = v124;
      if (v124)
      {
        v71 = sub_24A50A204(v123, v124);
        v122 = &v121;
        v72 = *(v70 - 8);
        v73 = *(v72 + 64);
        MEMORY[0x28223BE20](v71);
        v75 = &v121 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v72 + 16))(v75);
        v76 = v69;
        v77 = sub_24A62F624();
        (*(v72 + 8))(v75, v70);
        sub_24A508C54(v123);
      }

      else
      {
        v101 = v69;
        v77 = 0;
      }

      [v69 addTarget:v77 action:sel_torchActionWithSender_ forControlEvents:64];

      swift_unknownObjectRelease();

      v102 = sub_24A62EBE4();
      [v61 setAccessibilityLabel_];

      sub_24A50D7EC(0, &qword_27EF50940, 0x277D75088);
      sub_24A582188(v125, v123);
      v103 = sub_24A5921B4(v62, v64, v123, sel_torchActionWithSender_);
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_24A6339F0;
      *(v104 + 32) = v103;
      v105 = v103;
      v106 = sub_24A62ED54();

      [v61 setAccessibilityCustomActions_];

      sub_24A50D6A4(v125, &unk_27EF50780, &qword_24A638470);
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v107 = sub_24A62E314();
      sub_24A506EB8(v107, qword_27EF5C118);
      v108 = sub_24A62E2F4();
      v109 = sub_24A62EF64();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&dword_24A503000, v108, v109, "🧭 FMFindingViewCtrl: Updated torch button (light is off)", v110, 2u);
        MEMORY[0x24C21BBE0](v110, -1, -1);
      }
    }

    return 0;
  }

  if (!v15 || (v14 == 0xD000000000000012 ? (v16 = v15 == 0x800000024A640650) : (v16 = 0), !v16 && (sub_24A62F634() & 1) == 0))
  {
    v17 = v0;
    if (*(*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView] + OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown) == 1)
    {
      v18 = objc_opt_self();
      v19 = v13;
      v20 = [v18 standardUserDefaults];
      [v20 fmpfGreenBackdropHue];
      v22 = v21;
      [v20 fmpfGreenBackdropSaturation];
      v24 = v23;
      [v20 fmpfGreenBackdropValue];
      v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v22 saturation:v24 brightness:v25 alpha:1.0];
    }

    else
    {
      v78 = objc_opt_self();
      v79 = v13;
      v26 = [v78 systemBlackColor];
    }

    v80 = [objc_opt_self() whiteColor];
    v81 = [v80 colorWithAlphaComponent_];

    sub_24A62A8A4(0xD000000000000012, 0x800000024A640650, v26, v81);
    v82 = *&v17[v1];
    v126 = type metadata accessor for FMFindingViewController();
    v125[0] = v17;
    v83 = v82;
    v84 = v17;
    v85 = sub_24A5D2200(0xD000000000000025, 0x800000024A640670);
    v87 = v86;
    v88 = [v83 layer];
    [v88 removeAllAnimations];

    v89 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
    v90 = [*&v83[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    [v90 removeAllAnimations];

    v91 = [*&v83[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
    [v91 removeAllAnimations];

    v92 = *&v83[v89];
    sub_24A582188(v125, v123);
    v93 = v124;
    if (v124)
    {
      v94 = sub_24A50A204(v123, v124);
      v122 = &v121;
      v95 = *(v93 - 8);
      v96 = *(v95 + 64);
      MEMORY[0x28223BE20](v94);
      v98 = &v121 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v95 + 16))(v98);
      v99 = v92;
      v100 = sub_24A62F624();
      (*(v95 + 8))(v98, v93);
      sub_24A508C54(v123);
    }

    else
    {
      v111 = v92;
      v100 = 0;
    }

    [v92 addTarget:v100 action:sel_torchActionWithSender_ forControlEvents:64];

    swift_unknownObjectRelease();

    v112 = sub_24A62EBE4();
    [v83 setAccessibilityLabel_];

    sub_24A50D7EC(0, &qword_27EF50940, 0x277D75088);
    sub_24A582188(v125, v123);
    v113 = sub_24A5921B4(v85, v87, v123, sel_torchActionWithSender_);
    sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_24A6339F0;
    *(v114 + 32) = v113;
    v115 = v113;
    v116 = sub_24A62ED54();

    [v83 setAccessibilityCustomActions_];

    sub_24A50D6A4(v125, &unk_27EF50780, &qword_24A638470);
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v117 = sub_24A62E314();
    sub_24A506EB8(v117, qword_27EF5C118);
    v118 = sub_24A62E2F4();
    v119 = sub_24A62EF64();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_24A503000, v118, v119, "🧭 FMFindingViewCtrl: Updated torch button (light is on)", v120, 2u);
      MEMORY[0x24C21BBE0](v120, -1, -1);
    }
  }

  return 1;
}

void sub_24A590DEC(char a1, char a2)
{
  v3 = v2;
  v6 = sub_24A62EB14();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = sub_24A62EA94();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem;
  v16 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem];
  if (a1)
  {
    if (!v16)
    {
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = a2 & 1;
      v43 = sub_24A592D80;
      v44 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_24A5A8458;
      v42 = &unk_285DA6758;
      _Block_copy(&aBlock);
      v38 = MEMORY[0x277D84F90];
      sub_24A592D8C(&qword_27EF4F970, MEMORY[0x277D85198]);

      sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
      v36 = v6;
      sub_24A529464();
      sub_24A62F254();
      v19 = sub_24A62EB44();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      v22 = sub_24A62EB24();

      v23 = *&v2[v15];
      *&v3[v15] = v22;

      sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
      v24 = sub_24A62F014();
      sub_24A62EB04();
      sub_24A62EB54();
      v25 = *(v37 + 8);
      v26 = v10;
      v27 = v36;
      v25(v26, v36);
      sub_24A62EFE4();

      v25(v12, v27);
    }
  }

  else
  {
    if (v16)
    {
      v28 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem];

      sub_24A62EB34();

      v29 = *&v2[v15];
    }

    *&v2[v15] = 0;

    v30 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton];
    if (a2)
    {
      v31 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = 0;
      v43 = sub_24A592D3C;
      v44 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_24A5A8458;
      v42 = &unk_285DA6708;
      v33 = _Block_copy(&aBlock);
      v34 = v30;

      [v31 animateWithDuration:v33 animations:0.5];
      _Block_release(v33);
    }

    else
    {
      [v30 setAlpha_];
    }

    [v3 accessibilityShowViewHandler];
  }
}

uint64_t sub_24A59127C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_sleepPreventer);
  sub_24A598DB4();
  v3 = a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler;
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(v7);
    return sub_24A50D354(v5);
  }

  return result;
}

void sub_24A5913F4(uint64_t a1)
{
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A582188(a1, v36);
  if (!v36[3])
  {
    v21 = &unk_27EF50780;
    v22 = &qword_24A638470;
    v23 = v36;
LABEL_10:
    sub_24A50D6A4(v23, v21, v22);
    goto LABEL_11;
  }

  sub_24A508FA4(&qword_27EF50950, &unk_24A637728);
  if (swift_dynamicCast())
  {
    v31 = v1;
    v8 = v33;
    ObjectType = swift_getObjectType();
    (*(*(&v8 + 1) + 8))(&v33, ObjectType, *(&v8 + 1));
    if (v34)
    {
      sub_24A508CA0(&v33, v36);
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v10 = sub_24A62E314();
      sub_24A506EB8(v10, qword_27EF5C118);
      sub_24A508AE4(v36, &v33);
      v11 = sub_24A62E2F4();
      v12 = sub_24A62EF64();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32 = v30;
        *v13 = 136315138;
        v14 = v34;
        v15 = v35;
        sub_24A50A204(&v33, v34);
        (*(v15 + 16))(v14, v15);
        sub_24A592D8C(&qword_27EF4F660, MEMORY[0x277CC95F0]);
        v16 = sub_24A62F614();
        v18 = v17;
        (*(v4 + 8))(v7, v3);
        sub_24A508C54(&v33);
        v19 = sub_24A509BA8(v16, v18, &v32);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_24A503000, v11, v12, "🧭 FMFindingViewCtrl: User selected %s through part picker.", v13, 0xCu);
        v20 = v30;
        sub_24A508C54(v30);
        MEMORY[0x24C21BBE0](v20, -1, -1);
        MEMORY[0x24C21BBE0](v13, -1, -1);
      }

      else
      {

        sub_24A508C54(&v33);
      }

      v28 = *(v31 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
      sub_24A60FEC8(v36);

      sub_24A508C54(v36);
      return;
    }

    v21 = &unk_27EF522E0;
    v22 = qword_24A637660;
    v23 = &v33;
    goto LABEL_10;
  }

LABEL_11:
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v24 = sub_24A62E314();
  sub_24A506EB8(v24, qword_27EF5C118);
  v25 = sub_24A62E2F4();
  v26 = sub_24A62EF44();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24A503000, v25, v26, "🧭 FMFindingViewCtrl: Unknown part selected.", v27, 2u);
    MEMORY[0x24C21BBE0](v27, -1, -1);
  }
}

void sub_24A591960(char a1, char a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v4)
  {
    v5 = v4;
    if ([v4 hasTorch])
    {
      v30[0] = 0;
      if (![v5 lockForConfiguration_])
      {
        v12 = v30[0];
        v13 = sub_24A62E084();

        swift_willThrow();
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v14 = sub_24A62E314();
        sub_24A506EB8(v14, qword_27EF5C118);
        v15 = sub_24A62E2F4();
        v16 = sub_24A62EF64();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_24A503000, v15, v16, "🧭 FMFindingViewCtrl: Failed setting torch mode", v17, 2u);
          MEMORY[0x24C21BBE0](v17, -1, -1);
        }

        goto LABEL_35;
      }

      if (a2 == 2 || (a2 & 1) == 0)
      {
        if (a1 == 2)
        {
          v18 = v30[0];
LABEL_34:
          [v5 unlockForConfiguration];
          sub_24A58FF64();

LABEL_35:
          v28 = *MEMORY[0x277D85DE8];
          return;
        }

        v7 = a1 & 1;
        v19 = v30[0];
      }

      else
      {
        v6 = v30[0];
        v7 = [v5 torchMode] != 1;
      }

      [v5 setTorchMode_];
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v20 = sub_24A62E314();
      sub_24A506EB8(v20, qword_27EF5C118);
      v21 = sub_24A62E2F4();
      v22 = sub_24A62EF64();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30[0] = v24;
        *v23 = 136315138;
        if (v7 == 1)
        {
          v25 = 28271;
        }

        else
        {
          v25 = 6710895;
        }

        if (v7 == 1)
        {
          v26 = 0xE200000000000000;
        }

        else
        {
          v26 = 0xE300000000000000;
        }

        v27 = sub_24A509BA8(v25, v26, v30);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_24A503000, v21, v22, "🧭 FMFindingViewCtrl: Did set torch mode %s", v23, 0xCu);
        sub_24A508C54(v24);
        MEMORY[0x24C21BBE0](v24, -1, -1);
        MEMORY[0x24C21BBE0](v23, -1, -1);
      }

      sub_24A591F94(v7);
      goto LABEL_34;
    }
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v8 = sub_24A62E314();
  sub_24A506EB8(v8, qword_27EF5C118);
  oslog = sub_24A62E2F4();
  v9 = sub_24A62EF64();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24A503000, oslog, v9, "🧭 FMFindingViewCtrl: Unable to set torch mode", v10, 2u);
    MEMORY[0x24C21BBE0](v10, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_24A591E28(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton);
    if (a2)
    {
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = 1;
      aBlock[4] = sub_24A592E9C;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DA67A8;
      v8 = _Block_copy(aBlock);
      v9 = v5;

      [v6 animateWithDuration:v8 animations:0.5];
      _Block_release(v8);
    }

    else
    {
      [v5 setAlpha_];
    }

    [v4 accessibilityShowViewHandler];
  }
}

uint64_t sub_24A591F94(uint64_t a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = v1;
  v5 = sub_24A62E2F4();
  v6 = sub_24A62EF64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    if (a1 == 1)
    {
      v10 = 28271;
    }

    else
    {
      v10 = 6710895;
    }

    if (a1 == 1)
    {
      v11 = 0xE200000000000000;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    v12 = v4;
    v13 = sub_24A509BA8(v10, v11, v18);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMR1RangingVC%@: Analytics: Torch button changed state to %s", v7, 0x16u);
    sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v8, -1, -1);
    sub_24A508C54(v9);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v7, -1, -1);
  }

  v14 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session];
  sub_24A60F570(v18);
  v15 = v19;
  v16 = v20;
  sub_24A50A204(v18, v19);
  (*(v16 + 80))(a1, v15, v16);
  return sub_24A508C54(v18);
}

id sub_24A5921B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = sub_24A62EBE4();

  v7 = a3[3];
  if (v7)
  {
    v8 = sub_24A50A204(a3, a3[3]);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_24A62F624();
    (*(v9 + 8))(v12, v7);
    sub_24A508C54(a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v13 selector:a4];

  swift_unknownObjectRelease();
  return v14;
}

void sub_24A59232C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton);
  v3[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_isEnabled] = a1;
  v4 = v3;
  [v4 setUserInteractionEnabled_];
  v5 = objc_opt_self();
  v6 = *&v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button];
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v11[4] = sub_24A5924BC;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A5A8458;
  v11[3] = &unk_285DA6640;
  v8 = _Block_copy(v11);
  v9 = v4;
  v10 = v6;

  [v5 transitionWithView:v10 duration:5242880 options:v8 animations:0 completion:0.25];
  _Block_release(v8);
}

uint64_t sub_24A592484()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5924C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5924DC()
{
  v1 = v0;
  sub_24A59232C(0);
  v2 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMFindingViewCtrl: Asked to play ranging sound", v8, 2u);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    v9 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_sleepPreventer);
    sub_24A598770();
    v10 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_playSoundHandler;
    result = swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {
      v12 = *(v10 + 8);
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_24A519360(v11, v12);

      v11(1, 0, sub_24A592CF4, v13);
      sub_24A50D354(v11);
    }
  }

  return result;
}

void sub_24A5926B4()
{
  v1 = sub_24A508FA4(&qword_27EF50948, &qword_24A63AA70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v33 - v3;
  v5 = sub_24A62E0F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFindingSessionState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
  v15 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A592BFC(v14 + v15, v13);
  v16 = *(v13 + 1);
  if (*(v16 + 16) && (v17 = sub_24A515AC8(&v13[*(v10 + 36)]), (v18 & 1) != 0))
  {
    sub_24A508AE4(*(v16 + 56) + 40 * v17, &v34);
    sub_24A508CA0(&v34, &v37);
    sub_24A592C60(v13);
    v19 = v39;
    v20 = v40;
    sub_24A50A204(&v37, v39);
    (*(v20 + 24))(&v34, v19, v20);
    v21 = *(&v34 + 1);
    v22 = v35;
    if (v36 != 1)
    {
      sub_24A55B284(v34, *(&v34 + 1), v35, v36);
      sub_24A508C54(&v37);
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v23 = sub_24A62E314();
      sub_24A506EB8(v23, qword_27EF5C118);
      v24 = sub_24A62E2F4();
      v25 = sub_24A62EF44();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_16;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "FMFindingViewCtrl: Can't open messages without a friend";
      goto LABEL_15;
    }

    sub_24A508C54(&v37);
    if (v22)
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_24A62F384();

      v37 = 0xD000000000000012;
      v38 = 0x800000024A6406A0;
      MEMORY[0x24C21A5D0](v21, v22);
    }

    sub_24A62E0E4();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_24A50D6A4(v4, &qword_27EF50948, &qword_24A63AA70);
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v28 = sub_24A62E314();
      sub_24A506EB8(v28, qword_27EF5C118);
      v24 = sub_24A62E2F4();
      v25 = sub_24A62EF44();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_16;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "FMFindingViewCtrl: Error opening settings. Invalid URL";
LABEL_15:
      _os_log_impl(&dword_24A503000, v24, v25, v27, v26, 2u);
      MEMORY[0x24C21BBE0](v26, -1, -1);
LABEL_16:

      return;
    }

    (*(v6 + 32))(v9, v4, v5);
    v29 = [objc_opt_self() defaultWorkspace];
    if (v29)
    {
      v30 = v29;
      v31 = sub_24A62E0B4();
      v32 = sub_24A62EB74();
      [v30 openSensitiveURL:v31 withOptions:v32];
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    sub_24A62F444();
    __break(1u);
  }
}

uint64_t sub_24A592BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingSessionState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A592C60(uint64_t a1)
{
  v2 = type metadata accessor for FMFindingSessionState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A592CBC()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A592D04()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A592D48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A592D8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A592DD4()
{
  v0 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v0)
  {
    v1 = v0;
    if ([v0 hasTorch] && objc_msgSend(v1, sel_isTorchModeSupported_, 0))
    {
      v2 = 1;
      v3 = [v1 isTorchModeSupported_];

      if (v3)
      {
        return v2;
      }
    }

    else
    {
    }
  }

  return 0;
}