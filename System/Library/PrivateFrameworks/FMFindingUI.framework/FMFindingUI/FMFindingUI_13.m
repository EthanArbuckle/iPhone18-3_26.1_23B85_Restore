id sub_24A61F894(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24A61F900()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
  *(v0 + v1) = sub_24A5B1B2C(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v2 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
  *(v0 + v2) = sub_24A5B1B2C(0x3FF0000000000000, 0, 0x3F50624DD2F1A9FCLL, 0);
  v3 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CDCF70]) init];
  sub_24A62F444();
  __break(1u);
}

id sub_24A61FC20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMR1InsetLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A61FCA4()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    [v3 setAlpha_];
    [v3 setContentMode_];
    v4 = type metadata accessor for FMAVPlayerView();
    v52.receiver = v3;
    v52.super_class = v4;
    v5 = objc_msgSendSuper2(&v52, sel_layer);
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v6 setVideoGravity_];
    }

    v7 = [objc_opt_self() mainScreen];
    sub_24A506238();
    v9 = v8;

    CATransform3DMakeTranslation(&v50, 0.0, 0.0, 0.0);
    CATransform3DScale(&v51, &v50, v9, v9, 1.0);
    v49.receiver = v3;
    v49.super_class = v4;
    v10 = objc_msgSendSuper2(&v49, sel_layer);
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v50 = v51;
      [v11 setTransform_];
    }

    v12 = [v2 view];
    if (v12)
    {
      v13 = v12;
      [v12 addSubview_];

      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      v48 = objc_opt_self();
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24A63AC30;
      v15 = [v3 centerXAnchor];
      v16 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView;
      v17 = [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView] centerXAnchor];
      v18 = [v15 constraintEqualToAnchor_];

      *(v14 + 32) = v18;
      v19 = [v3 centerYAnchor];
      v20 = [*&v2[v16] centerYAnchor];
      v21 = [v19 &selRef:v20 setUseProcessLocalCache:? + 5];

      *(v14 + 40) = v21;
      v22 = [v3 widthAnchor];
      v23 = [*&v2[v16] widthAnchor];
      v24 = [v22 constraintLessThanOrEqualToAnchor_];

      *(v14 + 48) = v24;
      v25 = [v3 heightAnchor];
      v26 = [*&v2[v16] &selRef_initWithString_attributes_ + 2];
      v27 = [v25 constraintLessThanOrEqualToAnchor_];

      *(v14 + 56) = v27;
      v28 = [v3 widthAnchor];
      v29 = [v3 &selRef_initWithString_attributes_ + 2];
      v30 = [v28 constraintEqualToAnchor:v29 multiplier:1.0];

      *(v14 + 64) = v30;
      sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
      v31 = sub_24A62ED54();

      [v48 activateConstraints_];

      v32 = [v3 widthAnchor];
      v33 = [*&v2[v16] widthAnchor];
      v34 = [v32 constraintEqualToAnchor_];

      LODWORD(v35) = 1132068864;
      [v34 setPriority_];
      v36 = [v3 heightAnchor];

      v37 = [*&v2[v16] heightAnchor];
      v38 = [v36 constraintEqualToAnchor_];

      LODWORD(v39) = 1132068864;
      [v38 setPriority_];
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_24A633810;
      *(v40 + 32) = v34;
      *(v40 + 40) = v38;
      v41 = v34;
      v42 = v38;
      v43 = sub_24A62ED54();

      [v48 activateConstraints_];

      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = &v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler];
      v46 = *&v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler];
      v47 = *&v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler + 8];
      *v45 = sub_24A6232FC;
      v45[1] = v44;

      sub_24A50D354(v46);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24A620310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingViewState();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v109 = &v102[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v102[-v11];
  v13 = sub_24A62EB14();
  v107 = *(v13 - 8);
  v108 = v13;
  v14 = *(v107 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v105 = &v102[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v106 = &v102[-v17];
  v18 = sub_24A62EA94();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v20 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v102[-v22];
  sub_24A6231F0(a1, &v102[-v22], type metadata accessor for FMFindingViewState);
  (*(v7 + 56))(v23, 0, 1, v6);
  v24 = sub_24A628998(v23);
  if (v24 == 2 || (v24 & 1) == 0 || (v25 = v6[9], v26 = *(a2 + v25), v26 == 10))
  {
    sub_24A50D6A4(v23, &qword_27EF4FA80, &qword_24A634D40);
LABEL_5:
    v27 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    result = swift_beginAccess();
    if ((*(v27 + v6[13]) & 1) == 0 && ((*(a2 + v6[12]) & 1) != 0 || *(a2 + v6[14]) == 1))
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v29 = sub_24A62E314();
      sub_24A506EB8(v29, qword_27EF5C118);
      v30 = sub_24A62E2F4();
      v31 = sub_24A62EF64();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24A503000, v30, v31, "🧭 FMFindingViewCtrl: Should stop playing video", v32, 2u);
        MEMORY[0x24C21BBE0](v32, -1, -1);
      }

      sub_24A6223DC(0, 2);
      v33 = v109;
      sub_24A6231F0(v27, v109, type metadata accessor for FMFindingViewState);
      LODWORD(v108) = *v33;
      v34 = v6[5];
      v35 = sub_24A62E214();
      (*(*(v35 - 8) + 16))(&v12[v34], &v33[v34], v35);
      v36 = v6[7];
      v37 = &v33[v6[6]];
      v38 = *(v37 + 1);
      v105 = *v37;
      LODWORD(v106) = v33[v36];
      v39 = &v33[v6[8]];
      *&v116[13] = *(v39 + 93);
      v40 = *(v39 + 5);
      v115 = *(v39 + 4);
      *v116 = v40;
      v41 = *(v39 + 3);
      v113 = *(v39 + 2);
      v114 = v41;
      v42 = *(v39 + 1);
      v43 = v6[10];
      v44 = v33[v6[9]];
      v111 = *v39;
      v112 = v42;
      v45 = v33[v43];
      v46 = v6[11];
      v107 = v3;
      v47 = v33[v46];
      v48 = v33[v6[13]];
      LODWORD(v104) = v33[v6[14]];

      sub_24A508CE4(&v111, v110);
      sub_24A623258(v33, type metadata accessor for FMFindingViewState);
      v49 = &v12[v6[15]];
      *v49 = 0;
      *(v49 + 1) = 0;
      *v12 = v108;
      v50 = &v12[v6[6]];
      *v50 = v105;
      *(v50 + 1) = v38;
      v12[v6[7]] = v106;
      v51 = &v12[v6[8]];
      v52 = *v116;
      *(v51 + 4) = v115;
      *(v51 + 5) = v52;
      *(v51 + 93) = *&v116[13];
      v53 = v112;
      *v51 = v111;
      *(v51 + 1) = v53;
      v54 = v114;
      *(v51 + 2) = v113;
      *(v51 + 3) = v54;
      v12[v6[9]] = v44;
      v12[v6[10]] = v45;
      v12[v6[11]] = v47;
      v12[v6[12]] = 0;
      v12[v6[13]] = v48;
      v12[v6[14]] = v104;
      v55 = *(v107 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator);
      sub_24A60AB3C(v12);
      v56 = v12;
      return sub_24A623258(v56, type metadata accessor for FMFindingViewState);
    }

    return result;
  }

  if (sub_24A596B24(*(a2 + v25)) == 0xD000000000000019 && 0x800000024A63CD10 == v57)
  {
    goto LABEL_17;
  }

  LODWORD(v104) = sub_24A62F634();

  if (v104)
  {
    goto LABEL_19;
  }

  if (sub_24A596B24(v26) == 0xD000000000000030 && 0x800000024A63CD30 == v100)
  {
LABEL_17:

LABEL_19:
    result = sub_24A50D6A4(v23, &qword_27EF4FA80, &qword_24A634D40);
    goto LABEL_20;
  }

  v101 = sub_24A62F634();

  result = sub_24A50D6A4(v23, &qword_27EF4FA80, &qword_24A634D40);
  if ((v101 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  if ((*(a2 + v6[12]) & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v58 = sub_24A62E314();
    sub_24A506EB8(v58, qword_27EF5C118);
    v59 = sub_24A62E2F4();
    v60 = sub_24A62EF64();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_24A503000, v59, v60, "🧭 FMFindingViewCtrl: Should start playing video in 1 sec", v61, 2u);
      MEMORY[0x24C21BBE0](v61, -1, -1);
    }

    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v113 = sub_24A6231C8;
    *(&v113 + 1) = v62;
    *&v111 = MEMORY[0x277D85DD0];
    *(&v111 + 1) = 1107296256;
    *&v112 = sub_24A5A8458;
    *(&v112 + 1) = &unk_285DAB3F0;
    _Block_copy(&v111);
    v110[0] = MEMORY[0x277D84F90];
    sub_24A545F60();

    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    v63 = sub_24A62EB44();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    v66 = sub_24A62EB24();

    v67 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundItemWorkItem);
    *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundItemWorkItem) = v66;

    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v68 = sub_24A62F014();
    v69 = v105;
    sub_24A62EB04();
    v70 = v106;
    sub_24A62EB54();
    v71 = *(v107 + 8);
    v72 = v69;
    v73 = v108;
    v71(v72, v108);
    v107 = v66;
    sub_24A62EFE4();

    v71(v70, v73);
    v74 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    if ((*(v74 + v6[14]) & 1) == 0)
    {
      v75 = (v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
      swift_beginAccess();
      v76 = *sub_24A50A204(v75, v75[3]);
      v111 = 0u;
      v112 = 0u;
      sub_24A5811D4(&v111);
      sub_24A50D6A4(&v111, &unk_27EF50780, &qword_24A638470);
    }

    v77 = v74;
    v78 = v109;
    sub_24A6231F0(v77, v109, type metadata accessor for FMFindingViewState);
    LODWORD(v108) = *v78;
    v79 = v6[5];
    v80 = sub_24A62E214();
    (*(*(v80 - 8) + 16))(&v12[v79], &v78[v79], v80);
    v81 = v6[7];
    v82 = &v78[v6[6]];
    v83 = *(v82 + 1);
    v104 = *v82;
    LODWORD(v106) = v78[v81];
    v84 = &v78[v6[8]];
    *&v116[13] = *(v84 + 93);
    v85 = *(v84 + 5);
    v115 = *(v84 + 4);
    *v116 = v85;
    v86 = *(v84 + 3);
    v113 = *(v84 + 2);
    v114 = v86;
    v88 = *v84;
    v87 = *(v84 + 1);
    v89 = v6[10];
    v103 = v78[v6[9]];
    v111 = v88;
    v112 = v87;
    v90 = v78[v89];
    v91 = v78[v6[11]];
    v92 = v78[v6[13]];
    LODWORD(v105) = v78[v6[14]];

    sub_24A508CE4(&v111, v110);
    sub_24A623258(v78, type metadata accessor for FMFindingViewState);
    v93 = &v12[v6[15]];
    *v93 = 0;
    *(v93 + 1) = 0;
    *v12 = v108;
    v94 = &v12[v6[6]];
    *v94 = v104;
    *(v94 + 1) = v83;
    v12[v6[7]] = v106;
    v95 = &v12[v6[8]];
    v96 = *v116;
    *(v95 + 4) = v115;
    *(v95 + 5) = v96;
    *(v95 + 93) = *&v116[13];
    v97 = v112;
    *v95 = v111;
    *(v95 + 1) = v97;
    v98 = v114;
    *(v95 + 2) = v113;
    *(v95 + 3) = v98;
    v12[v6[9]] = v103;
    v12[v6[10]] = v90;
    v12[v6[11]] = v91;
    v12[v6[12]] = 1;
    v12[v6[13]] = v92;
    v12[v6[14]] = v105;
    v99 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator);
    sub_24A60AB3C(v12);

    v56 = v12;
    return sub_24A623258(v56, type metadata accessor for FMFindingViewState);
  }

  return result;
}

void sub_24A620E38(int a1, double a2)
{
  v4 = type metadata accessor for FMFindingViewState();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v13 = sub_24A62E314();
    sub_24A506EB8(v13, qword_27EF5C118);
    v14 = sub_24A62E2F4();
    v15 = sub_24A62EF64();
    v16 = os_log_type_enabled(v14, v15);
    v55 = a1;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v57 = v18;
      *v17 = 136315138;
      if (a1)
      {
        v19 = 2003789907;
      }

      else
      {
        v19 = 1701079368;
      }

      v20 = sub_24A509BA8(v19, 0xE400000000000000, &v57);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_24A503000, v14, v15, "🧭 FMFindingViewCtrl: %s FMPF scene", v17, 0xCu);
      sub_24A508C54(v18);
      MEMORY[0x24C21BBE0](v18, -1, -1);
      MEMORY[0x24C21BBE0](v17, -1, -1);
    }

    v21 = *&v12[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView];
    v22 = *&v21[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    v23 = v55;
    if (v22)
    {
      v24 = v21;
      v25 = v22;
      sub_24A5D6450((v23 & 1) == 0, *&a2, 0);
    }

    [v12 accessibilityShowViewHandler];
    v26 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    sub_24A6231F0(&v12[v26], v8, type metadata accessor for FMFindingViewState);
    v54 = *v8;
    v27 = v4[5];
    v28 = sub_24A62E214();
    (*(*(v28 - 8) + 16))(&v10[v27], &v8[v27], v28);
    v29 = v4[7];
    v30 = &v8[v4[6]];
    v31 = *(v30 + 1);
    v51 = *v30;
    v32 = v8[v29];
    v33 = &v8[v4[8]];
    *&v62[13] = *(v33 + 93);
    v34 = *(v33 + 5);
    v61 = *(v33 + 4);
    *v62 = v34;
    v35 = *(v33 + 3);
    v59 = *(v33 + 2);
    v60 = v35;
    v36 = v4[10];
    v50 = v8[v4[9]];
    v52 = v8[v36];
    v53 = v32;
    v38 = *v33;
    v37 = *(v33 + 1);
    v39 = v4[13];
    v49 = v8[v4[12]];
    v57 = v38;
    v58 = v37;
    v40 = v8[v39];
    v41 = v8[v4[14]];

    sub_24A508CE4(&v57, &v56);
    sub_24A623258(v8, type metadata accessor for FMFindingViewState);
    v42 = &v10[v4[15]];
    *v42 = 0;
    *(v42 + 1) = 0;
    *v10 = v54;
    v43 = &v10[v4[6]];
    *v43 = v51;
    *(v43 + 1) = v31;
    v10[v4[7]] = v53;
    v44 = &v10[v4[8]];
    v45 = *v62;
    *(v44 + 4) = v61;
    *(v44 + 5) = v45;
    *(v44 + 93) = *&v62[13];
    v46 = v58;
    *v44 = v57;
    *(v44 + 1) = v46;
    v47 = v60;
    *(v44 + 2) = v59;
    *(v44 + 3) = v47;
    v10[v4[9]] = v50;
    v10[v4[10]] = v52;
    v10[v4[11]] = v23 & 1;
    v10[v4[12]] = v49;
    v10[v4[13]] = v40;
    v10[v4[14]] = v41;
    v48 = *&v12[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator];
    sub_24A60AB3C(v10);
    sub_24A623258(v10, type metadata accessor for FMFindingViewState);
  }
}

uint64_t sub_24A62128C()
{
  v1 = type metadata accessor for FMFindingViewState();
  v2 = *(*(v1 - 1) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v96 = &v91 - v6;
  v7 = sub_24A62E0F4();
  v94 = *(v7 - 8);
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v7);
  v95 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFindingSessionState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v0;
  v14 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
  v15 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A6231F0(v14 + v15, v13, type metadata accessor for FMFindingSessionState);
  v16 = *(v13 + 1);
  if (*(v16 + 16) && (v17 = sub_24A515AC8(&v13[*(v10 + 36)]), (v18 & 1) != 0))
  {
    sub_24A508AE4(*(v16 + 56) + 40 * v17, v131);
    sub_24A508CA0(v131, v132);
    sub_24A623258(v13, type metadata accessor for FMFindingSessionState);
    v19 = v133;
    v20 = v134;
    sub_24A50A204(v132, v133);
    (*(v20 + 40))(&v113, v19, v20);
    sub_24A62F104();
    v22 = v21;
    v125 = v117;
    v126 = v118;
    v127 = v119;
    v23 = v113;
    v128 = v120;
    v121 = v113;
    v122 = v114;
    v123 = v115;
    v124 = v116;
    v24 = v97;
    v25 = v97 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo;
    v130 = *(v97 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 112);
    v26 = *(v97 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 96);
    v129[5] = *(v97 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 80);
    v129[6] = v26;
    v27 = *(v97 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 64);
    v129[3] = *(v97 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 48);
    v129[4] = v27;
    v28 = *(v97 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 32);
    v129[1] = *(v97 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 16);
    v129[2] = v28;
    v129[0] = *(v97 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo);
    v29 = v113;
    v30 = v114;
    v31 = v116;
    *(v25 + 32) = v115;
    *(v25 + 48) = v31;
    *v25 = v29;
    *(v25 + 16) = v30;
    v32 = v117;
    v33 = v118;
    v34 = v119;
    *(v25 + 112) = v120;
    *(v25 + 80) = v33;
    *(v25 + 96) = v34;
    *(v25 + 64) = v32;
    sub_24A595890(&v113, &v106);
    sub_24A595890(&v113, &v106);
    sub_24A50D6A4(v129, &qword_27EF50F28, &unk_24A638478);
    v35 = *(v24 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
    if (v35)
    {
      v36 = 1.0 / v23;
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v22;
      *(v38 + 32) = v36;
      v39 = &v35[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler];
      v40 = *&v35[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler];
      v41 = *&v35[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler + 8];
      *v39 = sub_24A6232F0;
      v39[1] = v38;

      sub_24A50D354(v40);
    }

    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v42 = sub_24A62E314();
    sub_24A506EB8(v42, qword_27EF5C118);
    sub_24A595890(&v113, &v106);
    v43 = sub_24A62E2F4();
    v44 = sub_24A62EF64();
    sub_24A5294D0(&v113);
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v93 = v7;
      v47 = v5;
      v48 = v46;
      *&v98 = v46;
      *v45 = 136315138;
      v49 = v35;
      v50 = *(&v119 + 1);
      v51 = v120;
      sub_24A595890(&v113, &v106);
      v52 = v51;
      v35 = v49;
      v53 = sub_24A509BA8(v50, v52, &v98);
      sub_24A5294D0(&v113);
      *(v45 + 4) = v53;
      _os_log_impl(&dword_24A503000, v43, v44, "🧭 FMFindingViewCtrl: Asked to start playing 'found item' video (%s)", v45, 0xCu);
      sub_24A508C54(v48);
      v54 = v48;
      v5 = v47;
      v7 = v93;
      MEMORY[0x24C21BBE0](v54, -1, -1);
      MEMORY[0x24C21BBE0](v45, -1, -1);
    }

    v55 = v95;
    if (v35)
    {
      v102 = v125;
      v103 = v126;
      v104 = v127;
      v105 = v128;
      v98 = v121;
      v99 = v122;
      v100 = v123;
      v101 = v124;
      sub_24A5A2344(*(&v119 + 1), v120, 0, 0, 0, 1, &v98);
      sub_24A5294D0(&v113);
      v110 = v102;
      v111[0] = v103;
      v111[1] = v104;
      v112 = v105;
      v106 = v98;
      v107 = v99;
      v108 = v100;
      v109 = v101;
      sub_24A50D6A4(&v106, &qword_27EF50F28, &unk_24A638478);
    }

    else
    {
      sub_24A5294D0(&v113);
      sub_24A5294D0(&v113);
    }

    type metadata accessor for FMFindingViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v57 = [objc_opt_self() bundleForClass_];
    v58 = sub_24A62EBE4();
    v95 = v57;
    v59 = [v57 URLForResource:v58 withExtension:0];

    if (v59)
    {
      sub_24A62E0D4();

      if (v35)
      {
        v60 = [v35 layer];
        v61 = sub_24A62E0B4();
        v62 = SFAdjustmentFiltersForAssetTypeAndURL();

        sub_24A50D7EC(0, &qword_27EF502B0, 0x277CD9EA0);
        v63 = sub_24A62ED64();

        sub_24A60DFB0(v63);

        v64 = sub_24A62ED54();

        [v60 setFilters_];
      }

      (*(v94 + 8))(v55, v7);
    }

    v65 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    v66 = v97;
    swift_beginAccess();
    sub_24A6231F0(v66 + v65, v5, type metadata accessor for FMFindingViewState);
    LODWORD(v94) = *v5;
    v67 = v1[5];
    v68 = sub_24A62E214();
    v69 = v96;
    (*(*(v68 - 8) + 16))(&v96[v67], &v5[v67], v68);
    v70 = &v5[v1[6]];
    v72 = *v70;
    v71 = *(v70 + 1);
    v73 = v5[v1[7]];
    v74 = &v5[v1[8]];
    *(v111 + 13) = *(v74 + 93);
    v75 = *(v74 + 5);
    v110 = *(v74 + 4);
    v111[0] = v75;
    v76 = *(v74 + 3);
    v108 = *(v74 + 2);
    v109 = v76;
    v77 = v1[10];
    v91 = v5[v1[9]];
    v92 = v5[v77];
    LODWORD(v93) = v73;
    v78 = *(v74 + 1);
    v79 = v1[12];
    v80 = v5[v1[11]];
    v106 = *v74;
    v107 = v78;
    LOBYTE(v66) = v5[v79];
    v81 = v5[v1[13]];

    sub_24A508CE4(&v106, &v98);
    sub_24A623258(v5, type metadata accessor for FMFindingViewState);
    v82 = (v69 + v1[15]);
    *v82 = 0;
    v82[1] = 0;
    *v69 = v94;
    v83 = (v69 + v1[6]);
    *v83 = v72;
    v83[1] = v71;
    *(v69 + v1[7]) = v93;
    v84 = v69 + v1[8];
    v85 = v111[0];
    *(v84 + 4) = v110;
    *(v84 + 5) = v85;
    *(v84 + 93) = *(v111 + 13);
    v86 = v107;
    *v84 = v106;
    *(v84 + 1) = v86;
    v87 = v109;
    *(v84 + 2) = v108;
    *(v84 + 3) = v87;
    v88 = v92;
    *(v69 + v1[9]) = v91;
    *(v69 + v1[10]) = v88;
    *(v69 + v1[11]) = v80;
    *(v69 + v1[12]) = v66;
    *(v69 + v1[13]) = v81;
    *(v69 + v1[14]) = 1;
    v89 = *(v97 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator);
    sub_24A60AB3C(v69);

    sub_24A623258(v69, type metadata accessor for FMFindingViewState);
    return sub_24A508C54(v132);
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

void sub_24A621C24(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = Strong + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo;
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = a3;
    *(v12 + 24) = 0;
    v13 = Strong + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    if (*(v13 + *(type metadata accessor for FMFindingViewState() + 52)) == 1)
    {
      sub_24A62F104();
      if (vabdd_f64(v14, a4) <= a5 * 4.0)
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v15 = sub_24A62E314();
        sub_24A506EB8(v15, qword_27EF5C118);
        v16 = sub_24A62E2F4();
        v17 = sub_24A62EF64();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_24A503000, v16, v17, "🧭 FMFindingViewCtrl: Ready to stop playing 'found item' video", v18, 2u);
          MEMORY[0x24C21BBE0](v18, -1, -1);
        }

        if (*&v11[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem])
        {
          v19 = *&v11[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem];

          sub_24A62EB34();
        }

        sub_24A621E00();
      }
    }
  }
}

uint64_t sub_24A621E00()
{
  v1 = v0;
  v2 = type metadata accessor for FMFindingViewState();
  v3 = *(*(v2 - 1) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - v7;
  if (qword_27EF4E9A0 != -1)
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
    *v12 = 0;
    _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMFindingViewCtrl: Asked to stop playing 'found item' video", v12, 2u);
    MEMORY[0x24C21BBE0](v12, -1, -1);
  }

  v13 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
  if (v13)
  {
    sub_24A5A2BD0();
    v14 = (v13 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler);
    v15 = *(v13 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler);
    v16 = *(v13 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler + 8);
    *v14 = 0;
    v14[1] = 0;
    sub_24A50D354(v15);
  }

  v17 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 1;
  v18 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
  v19 = *&v18[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v19)
  {
    v20 = *&v18[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor];
    v21 = v18[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor + 8];
    v22 = (v18[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor] == 2) | v18[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor];
    v23 = v18;
    v24 = v19;
    sub_24A5D7078(v20, v21, v22 & 1);
  }

  v25 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A6231F0(v1 + v25, v6, type metadata accessor for FMFindingViewState);
  v49 = *v6;
  v26 = v2[5];
  v27 = sub_24A62E214();
  (*(*(v27 - 8) + 16))(&v8[v26], &v6[v26], v27);
  v28 = &v6[v2[6]];
  v30 = *v28;
  v29 = *(v28 + 1);
  v31 = v6[v2[7]];
  v32 = &v6[v2[8]];
  *(v56 + 13) = *(v32 + 93);
  v33 = *(v32 + 5);
  v55 = *(v32 + 4);
  v56[0] = v33;
  v34 = *(v32 + 3);
  v53 = *(v32 + 2);
  v54 = v34;
  v35 = *(v32 + 1);
  v36 = v2[10];
  v37 = v6[v2[9]];
  v51 = *v32;
  v52 = v35;
  v48 = v1;
  v38 = v6[v36];
  v39 = v6[v2[11]];

  sub_24A508CE4(&v51, v50);
  sub_24A623258(v6, type metadata accessor for FMFindingViewState);
  v40 = &v8[v2[15]];
  *v40 = 0;
  *(v40 + 1) = 0;
  *v8 = v49;
  v41 = &v8[v2[6]];
  *v41 = v30;
  *(v41 + 1) = v29;
  v8[v2[7]] = v31;
  v42 = &v8[v2[8]];
  v43 = v56[0];
  *(v42 + 4) = v55;
  *(v42 + 5) = v43;
  *(v42 + 93) = *(v56 + 13);
  v44 = v52;
  *v42 = v51;
  *(v42 + 1) = v44;
  v45 = v54;
  *(v42 + 2) = v53;
  *(v42 + 3) = v45;
  v8[v2[9]] = v37;
  v8[v2[10]] = v38;
  v8[v2[11]] = v39;
  v8[v2[12]] = 0;
  v8[v2[13]] = 0;
  v8[v2[14]] = 0;
  v46 = *(v48 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator);
  sub_24A60AB3C(v8);
  return sub_24A623258(v8, type metadata accessor for FMFindingViewState);
}

void sub_24A6221F4(char a1)
{
  v2 = v1;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C118);
  v5 = sub_24A62E2F4();
  v6 = sub_24A62EF64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x7075206465657073;
    }

    else
    {
      v9 = 0x776F6420776F6C73;
    }

    if (a1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE90000000000006ELL;
    }

    v11 = sub_24A509BA8(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMFindingViewCtrl: Asked to %s 'found item' video", v7, 0xCu);
    sub_24A508C54(v8);
    MEMORY[0x24C21BBE0](v8, -1, -1);
    MEMORY[0x24C21BBE0](v7, -1, -1);
  }

  v13 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player);
    if (v14)
    {
      LODWORD(v12) = 1.0;
      if (a1)
      {
        *&v12 = 2.0;
      }

      [v14 setRate_];
    }
  }
}

uint64_t sub_24A6223DC(int a1, int a2)
{
  v3 = v2;
  LODWORD(v118) = a2;
  LODWORD(v119) = a1;
  v4 = type metadata accessor for FMFindingViewState();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v107 - v9;
  v11 = sub_24A62EB14();
  v115 = *(v11 - 1);
  v116 = v11;
  v12 = *(v115 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v113 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v114 = &v107 - v15;
  v111 = sub_24A62EA94();
  v16 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v112 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for FMFindingSessionState();
  v18 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v21 = sub_24A62E314();
  sub_24A506EB8(v21, qword_27EF5C118);
  v22 = sub_24A62E2F4();
  v23 = sub_24A62EF64();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = v24;
    *v24 = 67109376;
    *(v24 + 4) = v119 & 1;
    *(v24 + 8) = 1024;
    v26 = v118 != 2 && (v118 & 1) != 0;
    *(v24 + 10) = v26;
    _os_log_impl(&dword_24A503000, v22, v23, "🧭 FMFindingViewCtrl: Set playing video to %{BOOL}d, immediately=%{BOOL}d", v24, 0xEu);
    MEMORY[0x24C21BBE0](v25, -1, -1);
  }

  v27 = (v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo);
  v131 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 112);
  v28 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 80);
  v130[4] = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 64);
  v130[5] = v28;
  v130[6] = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 96);
  v29 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 16);
  v130[0] = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo);
  v130[1] = v29;
  v30 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 48);
  v130[2] = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 32);
  v130[3] = v30;
  if (v131)
  {
    v109 = v10;
    v110 = v20;
    v108 = v8;
    v31 = v27[4];
    v32 = v27[6];
    v128[0] = v27[5];
    v128[1] = v32;
    v33 = v27[1];
    v123 = *v27;
    v34 = v27[2];
    v35 = v27[3];
    v124 = v33;
    v125 = v34;
    v36 = *&v130[0];
    v129 = *(v27 + 14);
    v126 = v35;
    v127 = v31;
    sub_24A595890(&v123, &v120);
    sub_24A62F104();
    v38 = v37;
    sub_24A62F104();
    sub_24A50D6A4(v130, &qword_27EF50F28, &unk_24A638478);
    if (v119)
    {
      v20 = v110;
      goto LABEL_13;
    }

    v56 = 1.0 / v36 * 4.0;
  }

  else
  {
    if (v119)
    {
LABEL_13:
      v39 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
      result = swift_beginAccess();
      if ((*(v39 + *(v4 + 56)) & 1) == 0)
      {
        v41 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
        v42 = &v41[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor];
        *v42 = 0x3FF0000000000000;
        v42[8] = 0;
        v41[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor] = 1;
        v43 = *&v41[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
        if (v43)
        {
          v44 = v41;
          v45 = v43;
          sub_24A5D7078(0x3FF0000000000000, 0, 1);
        }

        if (*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem))
        {
          v46 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem);

          sub_24A62EB34();
        }

        v47 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
        v48 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
        swift_beginAccess();
        sub_24A6231F0(v47 + v48, v20, type metadata accessor for FMFindingSessionState);
        v49 = *(v20 + 1);
        if (*(v49 + 16) && (v50 = sub_24A515AC8(&v20[*(v117 + 36)]), (v51 & 1) != 0))
        {
          sub_24A508AE4(*(v49 + 56) + 40 * v50, &v120);
          sub_24A508CA0(&v120, &v123);
          sub_24A623258(v20, type metadata accessor for FMFindingSessionState);
          v52 = *(&v124 + 1);
          v53 = v125;
          sub_24A50A204(&v123, *(&v124 + 1));
          (*(v53 + 24))(&v120, v52, v53);
          v54 = v122;
          sub_24A55B284(v120, *(&v120 + 1), v121, v122);
          v55 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
          if (v55)
          {
            *(v55 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_disableAutoLoop) = v54 == 1;
          }

          sub_24A62128C();
          return sub_24A508C54(&v123);
        }

        else
        {
          result = sub_24A62F444();
          __break(1u);
        }
      }

      return result;
    }

    v108 = v8;
    v109 = v10;
    v56 = 0.0666666667;
    v38 = 0.0;
  }

  v57 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  result = swift_beginAccess();
  if (*(v57 + *(v4 + 56)) == 1)
  {
    if (v118 == 2 || (v118 & 1) == 0) && ((v58 = (v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo), (*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo + 24)) || (v59 = v58[1], v60 = v58[2], v61 = *v58, result = sub_24A62F104(), vabdd_f64(v62, v38) > v56)))
    {
      if ((*(v57 + *(v4 + 52)) & 1) == 0)
      {
        v63 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
        if (v63)
        {
          *(v63 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_disableAutoLoop) = 1;
        }

        v119 = v4;
        v64 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem;
        if (*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem))
        {
          v65 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem);

          sub_24A62EB34();
        }

        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v125 = sub_24A6231E8;
        *(&v125 + 1) = v66;
        *&v123 = MEMORY[0x277D85DD0];
        *(&v123 + 1) = 1107296256;
        *&v124 = sub_24A5A8458;
        *(&v124 + 1) = &unk_285DAB418;
        _Block_copy(&v123);
        *&v120 = MEMORY[0x277D84F90];
        sub_24A545F60();

        sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
        sub_24A529464();
        sub_24A62F254();
        v67 = sub_24A62EB44();
        v68 = *(v67 + 48);
        v69 = *(v67 + 52);
        swift_allocObject();
        v70 = sub_24A62EB24();

        v71 = *(v3 + v64);
        *(v3 + v64) = v70;
        v118 = v70;

        sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
        v72 = sub_24A62F014();
        v73 = v113;
        sub_24A62EB04();
        v74 = v114;
        sub_24A62EB54();
        v75 = *(v115 + 8);
        v76 = v73;
        v77 = v116;
        v75(v76, v116);
        sub_24A62EFE4();

        v75(v74, v77);
        v116 = type metadata accessor for FMFindingViewState;
        v78 = v108;
        sub_24A6231F0(v57, v108, type metadata accessor for FMFindingViewState);
        LODWORD(v117) = *v78;
        v79 = v119;
        v80 = v119[5];
        v81 = sub_24A62E214();
        v82 = v109;
        (*(*(v81 - 8) + 16))(v109 + v80, &v78[v80], v81);
        v83 = v79[6];
        v84 = v79[7];
        v85 = &v78[v79[8]];
        *(v128 + 13) = *(v85 + 93);
        v86 = *(v85 + 5);
        v127 = *(v85 + 4);
        v128[0] = v86;
        v87 = *(v85 + 3);
        v125 = *(v85 + 2);
        v126 = v87;
        v88 = *v85;
        v124 = *(v85 + 1);
        v89 = &v78[v83];
        v90 = v3;
        v92 = *v89;
        v91 = *(v89 + 1);
        v93 = v78[v84];
        v94 = v79[10];
        LODWORD(v113) = v78[v79[9]];
        LODWORD(v114) = v78[v94];
        v95 = v79[12];
        v96 = v78[v79[11]];
        v123 = v88;
        LODWORD(v112) = v78[v95];
        LODWORD(v115) = v78[v79[14]];

        sub_24A508CE4(&v123, &v120);
        v97 = v78;
        v98 = v116;
        sub_24A623258(v97, v116);
        v99 = (v82 + v79[15]);
        *v99 = 0;
        v99[1] = 0;
        *v82 = v117;
        v100 = (v82 + v79[6]);
        *v100 = v92;
        v100[1] = v91;
        *(v82 + v79[7]) = v93;
        v101 = v82 + v79[8];
        v102 = v126;
        v103 = v128[0];
        *(v101 + 4) = v127;
        *(v101 + 5) = v103;
        v104 = v124;
        v105 = v125;
        *v101 = v123;
        *(v101 + 1) = v104;
        *(v101 + 93) = *(v128 + 13);
        *(v101 + 2) = v105;
        *(v101 + 3) = v102;
        *(v82 + v79[9]) = v113;
        *(v82 + v79[10]) = v114;
        *(v82 + v79[11]) = v96;
        *(v82 + v79[12]) = v112;
        *(v82 + v79[13]) = 1;
        *(v82 + v79[14]) = v115;
        v106 = *(v90 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator);
        sub_24A60AB3C(v82);
        sub_24A6221F4(1);

        return sub_24A623258(v82, v98);
      }
    }

    else
    {
      return sub_24A621E00();
    }
  }

  return result;
}

void sub_24A622EF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v2 = sub_24A62E314();
    sub_24A506EB8(v2, qword_27EF5C118);
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMFindingViewCtrl: Autostop playing 'found item' video (timeout)", v5, 2u);
      MEMORY[0x24C21BBE0](v5, -1, -1);
    }

    sub_24A621E00();
  }
}

void sub_24A623004()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v2 = sub_24A62E314();
    sub_24A506EB8(v2, qword_27EF5C118);
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMFindingViewCtrl: Reach mode in here for 1 sec, will now play video", v5, 2u);
      MEMORY[0x24C21BBE0](v5, -1, -1);
    }

    v6 = &v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state];
    swift_beginAccess();
    if ((v6[*(type metadata accessor for FMFindingViewState() + 56)] & 1) == 0)
    {
      v7 = &v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
      swift_beginAccess();
      v8 = *sub_24A50A204(v7, *(v7 + 3));
      sub_24A57FDA8();
    }

    sub_24A6223DC(1, 2);
  }
}

uint64_t sub_24A623190()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A6231D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6231F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A623258(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A6232B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_24A62330C(void *a1, double a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0.0;
  v15[0] = 0.0;
  v12 = 0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0.0;
  if ([v2 getRed:v15 green:&v14 blue:&v13 alpha:&v12])
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || ![a1 getRed:&v11 green:&v10 blue:&v9 alpha:&v8])
  {
    result = 0;
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:(1.0 - a2) * v15[0] + v11 * a2 green:(1.0 - a2) * v14 + v10 * a2 blue:(1.0 - a2) * v13 + v9 * a2 alpha:1.0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_24A62344C()
{
  result = [objc_opt_self() blackColor];
  qword_27EF5C840 = result;
  return result;
}

double sub_24A6234E8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = *v5;
  v12 = v5[1];
  sub_24A62E764();
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMidX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMidY(v18);
  sub_24A62E724();
  sub_24A62E734();
  result = *&v14;
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v16;
  return result;
}

double sub_24A6235D8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_24A6235E4(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double (*sub_24A6235F0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_24A62361C;
}

double sub_24A62361C(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

uint64_t sub_24A62362C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A624808();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24A623690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A624808();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24A6236F4(uint64_t a1)
{
  v2 = sub_24A624808();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24A623744()
{
  result = qword_27EF52508;
  if (!qword_27EF52508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52508);
  }

  return result;
}

unint64_t sub_24A62379C()
{
  result = qword_27EF52510;
  if (!qword_27EF52510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52510);
  }

  return result;
}

unint64_t sub_24A6237F4()
{
  result = qword_27EF52518;
  if (!qword_27EF52518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52518);
  }

  return result;
}

double sub_24A623878@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24A62E764();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMidX(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMidX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMidX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMidX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMidX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMidX(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMidX(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMidX(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMidX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMidX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMidX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetMidX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetMidX(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetMinY(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetMaxX(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetMaxX(v32);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetMidX(v33);
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetMaxX(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMidX(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetMaxX(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMidX(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMaxX(v38);
  sub_24A62E724();
  sub_24A62E754();
  sub_24A62E754();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_24A623D48@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v7 = *v5;
  v8 = v5[1];
  sub_24A623878(v11, a2, a3, a4, a5);
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 32) = v12;
  return result;
}

double sub_24A623D94@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_24A623DA0(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_24A623DAC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_24A623DD8;
}

double sub_24A623DD8(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_24A623DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A624760();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24A623E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A624760();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24A623EB4(uint64_t a1)
{
  v2 = sub_24A624760();

  return MEMORY[0x282133738](a1, v2);
}

double sub_24A623F00@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D5>, double a7@<D6>)
{
  sub_24A62E764();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMidX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMidY(v20);
  v14 = a7 / a6 * 0.25;
  __sincos_stret(-0.785398163 - v14);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMidX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMidX(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMidX(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMidX(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMaxX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMidX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMidY(v27);
  __sincos_stret(v14 + 0.785398163);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetMidX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetMidX(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetMidX(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetMidX(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetMidX(v32);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetMidY(v33);
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetMidX(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMaxY(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetMaxX(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMidX(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMidX(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetMidX(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetMaxX(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetMidX(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  CGRectGetMidX(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  CGRectGetMidX(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  CGRectGetMaxX(v44);
  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = a4;
  v45.size.height = a5;
  CGRectGetMidX(v45);
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  CGRectGetMidX(v46);
  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = a4;
  v47.size.height = a5;
  CGRectGetMidX(v47);
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  CGRectGetMidX(v48);
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = a5;
  CGRectGetMaxY(v49);
  sub_24A62E724();
  sub_24A62E744();
  sub_24A62E714();
  sub_24A62E744();
  result = *&v16;
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  return result;
}

double sub_24A6243E4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v7 = *v5;
  v8 = *(v5 + 3);
  sub_24A623F00(v11, a2, a3, a4, a5, v5[1], v5[2]);
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 32) = v12;
  return result;
}

double (*sub_24A624430(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_24A624864;
}

uint64_t sub_24A62445C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A6247B4();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24A6244C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A6247B4();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24A624524(uint64_t a1)
{
  v2 = sub_24A6247B4();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24A624580()
{
  result = qword_27EF52530;
  if (!qword_27EF52530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52530);
  }

  return result;
}

unint64_t sub_24A6245D8()
{
  result = qword_27EF52538;
  if (!qword_27EF52538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52538);
  }

  return result;
}

uint64_t sub_24A62465C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A50E1E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A6246B4()
{
  result = qword_27EF52550;
  if (!qword_27EF52550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52550);
  }

  return result;
}

unint64_t sub_24A62470C()
{
  result = qword_27EF52558;
  if (!qword_27EF52558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52558);
  }

  return result;
}

unint64_t sub_24A624760()
{
  result = qword_27EF52560;
  if (!qword_27EF52560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52560);
  }

  return result;
}

unint64_t sub_24A6247B4()
{
  result = qword_27EF52568;
  if (!qword_27EF52568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52568);
  }

  return result;
}

unint64_t sub_24A624808()
{
  result = qword_27EF52570;
  if (!qword_27EF52570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52570);
  }

  return result;
}

uint64_t sub_24A624870()
{
  v1 = v0 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_24A6248C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A62492C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A5931C0;
}

char *FMProximityConnectionManager.init(findables:connectionContext:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27EF4E9C8 != -1)
  {
    swift_once();
  }

  v5 = qword_27EF5C218;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_nearbyInteractionManager) = qword_27EF5C218;
  v23 = v4;
  v6 = v5;
  v7 = sub_24A509448(a1, &v23);
  v8 = qword_27EF4E998;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A62E314();
  sub_24A506EB8(v10, qword_27EF5C100);
  v11 = sub_24A62E2F4();
  v12 = sub_24A62EF64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    v15 = *&v9[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers];

    v17 = MEMORY[0x24C21A690](v16, MEMORY[0x277D837D0]);
    v19 = v18;

    v20 = sub_24A509BA8(v17, v19, &v22);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_24A503000, v11, v12, "FMProximityConnectionManager: initialized for items: %s", v13, 0xCu);
    sub_24A508C54(v14);
    MEMORY[0x24C21BBE0](v14, -1, -1);
    MEMORY[0x24C21BBE0](v13, -1, -1);
  }

  return v9;
}

uint64_t sub_24A624C24()
{
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C100);
    v2 = v0;
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();

    v30 = v2;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock[0] = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x24C21A690](*(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers), MEMORY[0x277D837D0]);
      v9 = sub_24A509BA8(v7, v8, aBlock);

      *(v5 + 4) = v9;
      v2 = v30;
      _os_log_impl(&dword_24A503000, v3, v4, "FMProximityConnectionManager: requesting connection for items: %s", v5, 0xCu);
      sub_24A508C54(v6);
      MEMORY[0x24C21BBE0](v6, -1, -1);
      MEMORY[0x24C21BBE0](v5, -1, -1);
    }

    v10 = *(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_findables);
    v11 = MEMORY[0x277D84F90];
    v35 = MEMORY[0x277D84F90];
    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v29 = OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_nearbyInteractionManager;
    v28 = OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_connectionContext;
    v13 = v10 + 32;
    while (1)
    {
      v31 = v12;
      v14 = sub_24A508AE4(v13, v34);
      v15 = *(v2 + v29);
      v16 = *(v2 + v28) | 0x4000u;
      v17 = *&v15[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      MEMORY[0x28223BE20](v14);
      type metadata accessor for FMNearbyInteractionManagerSubscription();
      v18 = v15;
      sub_24A62F024();

      v19 = *(v2 + v29);
      v20 = *&v19[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      sub_24A508AE4(v34, v33);
      v0 = swift_allocObject();
      sub_24A508CA0(v33, (v0 + 2));
      v0[7] = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_24A594B48;
      *(v21 + 24) = v0;
      aBlock[4] = sub_24A517E48;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A592ED8;
      aBlock[3] = &unk_285DAB640;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      dispatch_sync(v20, v22);
      _Block_release(v22);
      sub_24A508C54(v34);

      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        break;
      }

      MEMORY[0x24C21A660](v24);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24A62ED84();
      }

      sub_24A62EDA4();
      v13 += 40;
      v12 = v31 - 1;
      v2 = v30;
      if (v31 == 1)
      {
        v11 = v35;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

LABEL_11:
  v26 = *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions);
  *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions) = v11;
}

void sub_24A62509C()
{
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C100);
    v2 = v0;
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock[0] = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x24C21A690](*&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers], MEMORY[0x277D837D0]);
      v9 = sub_24A509BA8(v7, v8, aBlock);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_24A503000, v3, v4, "FMProximityConnectionManager: requesting disconnection for items: %s", v5, 0xCu);
      sub_24A508C54(v6);
      MEMORY[0x24C21BBE0](v6, -1, -1);
      MEMORY[0x24C21BBE0](v5, -1, -1);
    }

    v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions];
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v25 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions];
      }

      v26 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions];
      v27 = sub_24A62F464();
      v10 = v26;
      v11 = v27;
      if (!v27)
      {
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        return;
      }
    }

    if (v11 < 1)
    {
      break;
    }

    v29 = v10 & 0xC000000000000001;
    v30 = OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_nearbyInteractionManager;
    v12 = v10;

    v13 = v12;
    v14 = 0;
    v28 = v12;
    while (1)
    {
      v0 = v11;
      v15 = v29 ? MEMORY[0x24C21ACB0](v14, v13) : *(v13 + 8 * v14 + 32);
      v16 = v15;
      v17 = v2;
      v18 = *&v2[v30];
      v19 = *&v18[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v16;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_24A55B77C;
      *(v21 + 24) = v20;
      aBlock[4] = sub_24A5193D4;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A592ED8;
      aBlock[3] = &unk_285DAB6B8;
      v22 = _Block_copy(aBlock);
      v23 = v18;
      v24 = v16;

      dispatch_sync(v19, v22);

      _Block_release(v22);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        break;
      }

      v14 = v14 + 1;
      v11 = v0;
      v2 = v17;
      v13 = v28;
      if (v0 == v14)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_24A625428()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions);

  v2 = v0 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;

  return sub_24A52358C(v2);
}

id FMProximityConnectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMProximityConnectionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A625508(unsigned __int8 a1)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C100);
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    *v6 = 136315138;
    v10 = 0xE500000000000000;
    v11 = 0x7964616572;
    v12 = 0xE500000000000000;
    v13 = 0x726F727265;
    if (a1 != 3)
    {
      v13 = 0x666F206574617473;
      v12 = 0xE900000000000066;
    }

    if (a1 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (a1)
    {
      v9 = 0x6461657220746F6ELL;
      v8 = 0xE900000000000079;
    }

    if (a1 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (a1 <= 1u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_24A509BA8(v14, v15, &v23);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_24A503000, v4, v5, "FMProximityConnectionManager: entered state: %s", v6, 0xCu);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  if (a1)
  {
    v17 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v1, a1 == 2, 0, ObjectType, v18);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_24A62E2F4();
    v20 = sub_24A62EF64();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A503000, oslog, v20, "FMProximityConnectionManager: ignoring unknown state, waiting for a decision to be made before forwarding.", v21, 2u);
      MEMORY[0x24C21BBE0](v21, -1, -1);
    }
  }
}

uint64_t sub_24A625804(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, 0, a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A6258A0(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, (a1 & 1) == 0, 0, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A625940()
{
  sub_24A508C54((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A625990(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A6259A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A625A0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A625A68(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A625BB4()
{
  result = sub_24A62EA14();
  qword_27EF5C848 = result;
  return result;
}

uint64_t sub_24A625BDC()
{
  result = sub_24A62EA14();
  qword_27EF5C850 = result;
  return result;
}

uint64_t sub_24A625C04()
{
  result = sub_24A62EA14();
  qword_27EF5C858 = result;
  return result;
}

uint64_t sub_24A625C2C()
{
  result = sub_24A62EA14();
  qword_27EF5C860 = result;
  return result;
}

uint64_t sub_24A625C58()
{
  result = sub_24A62E9F4();
  qword_27EF5C868 = result;
  return result;
}

uint64_t sub_24A625C98()
{
  result = sub_24A62E9F4();
  qword_27EF5C870 = result;
  return result;
}

uint64_t sub_24A625CD8()
{
  result = sub_24A62EA34();
  qword_27EF5C878 = result;
  return result;
}

uint64_t sub_24A625D00()
{
  result = sub_24A62EA34();
  qword_27EF5C880 = result;
  return result;
}

uint64_t sub_24A625D28()
{
  result = sub_24A62E9E4();
  qword_27EF5C888 = result;
  return result;
}

uint64_t sub_24A625D68()
{
  result = sub_24A62E9F4();
  qword_27EF5C890 = result;
  return result;
}

uint64_t sub_24A625DA8()
{
  result = sub_24A62E9E4();
  qword_27EF5C898 = result;
  return result;
}

uint64_t sub_24A625DF0()
{
  result = sub_24A62E9F4();
  qword_27EF5C8A0 = result;
  return result;
}

uint64_t sub_24A625E28()
{
  result = sub_24A62E9E4();
  qword_27EF5C8A8 = result;
  return result;
}

uint64_t sub_24A625E64()
{
  result = sub_24A62E9E4();
  qword_27EF5C8B0 = result;
  return result;
}

uint64_t sub_24A625EA0()
{
  result = sub_24A62E9E4();
  qword_27EF5C8B8 = result;
  return result;
}

uint64_t sub_24A625EDC()
{
  result = sub_24A62E9F4();
  qword_27EF5C8C0 = result;
  return result;
}

uint64_t sub_24A625F18()
{
  result = sub_24A62EA44();
  qword_27EF5C8C8 = result;
  return result;
}

uint64_t sub_24A625F44()
{
  result = sub_24A62EA44();
  qword_27EF5C8D0 = result;
  return result;
}

uint64_t sub_24A625F70()
{
  result = MEMORY[0x24C21A340](0.5, 1.0, 0.0);
  qword_27EF5C8D8 = result;
  return result;
}

uint64_t sub_24A625F9C()
{
  result = sub_24A62EA44();
  qword_27EF5C8E0 = result;
  return result;
}

uint64_t sub_24A625FC8()
{
  result = sub_24A62EA44();
  qword_27EF5C8E8 = result;
  return result;
}

uint64_t sub_24A625FF0()
{
  result = sub_24A62E9F4();
  qword_27EF5C8F0 = result;
  return result;
}

uint64_t sub_24A62602C()
{
  result = sub_24A62E9F4();
  qword_27EF5C8F8 = result;
  return result;
}

uint64_t sub_24A626064()
{
  result = sub_24A62EA34();
  qword_27EF5C900 = result;
  return result;
}

uint64_t sub_24A626088()
{
  result = sub_24A62E9E4();
  qword_27EF5C908 = result;
  return result;
}

uint64_t sub_24A6260C8()
{
  result = sub_24A62E9E4();
  qword_27EF5C910 = result;
  return result;
}

uint64_t sub_24A626104()
{
  result = sub_24A62E9E4();
  qword_27EF5C918 = result;
  return result;
}

uint64_t sub_24A62613C()
{
  result = sub_24A62E9F4();
  qword_27EF5C920 = result;
  return result;
}

uint64_t sub_24A626170()
{
  result = sub_24A62E9E4();
  qword_27EF5C928 = result;
  return result;
}

uint64_t sub_24A6261AC()
{
  result = sub_24A62E9E4();
  qword_27EF5C930 = result;
  return result;
}

uint64_t sub_24A6261EC()
{
  result = sub_24A62E9E4();
  qword_27EF5C938 = result;
  return result;
}

uint64_t sub_24A626224()
{
  result = sub_24A62E9E4();
  qword_27EF5C940 = result;
  return result;
}

uint64_t sub_24A626268()
{
  sub_24A62E9F4();
  v0 = sub_24A62EA04();

  qword_27EF5C948 = v0;
  return result;
}

uint64_t sub_24A6262C8()
{
  result = sub_24A62EA44();
  qword_27EF5C950 = result;
  return result;
}

uint64_t sub_24A6262F4()
{
  result = sub_24A62EA34();
  qword_27EF5C958 = result;
  return result;
}

uint64_t sub_24A62631C()
{
  result = sub_24A62EA44();
  qword_27EF5C960 = result;
  return result;
}

uint64_t sub_24A626348()
{
  result = sub_24A62EA44();
  qword_27EF5C968 = result;
  return result;
}

uint64_t sub_24A626374()
{
  result = sub_24A62EA44();
  qword_27EF5C970 = result;
  return result;
}

uint64_t sub_24A6263A0()
{
  result = sub_24A62EA14();
  qword_27EF5C978 = result;
  return result;
}

uint64_t sub_24A6263C8()
{
  result = sub_24A62E9E4();
  qword_27EF5C980 = result;
  return result;
}

uint64_t sub_24A626404()
{
  result = sub_24A62E9E4();
  qword_27EF5C988 = result;
  return result;
}

uint64_t sub_24A62643C()
{
  result = sub_24A62E9F4();
  qword_27EF5C990 = result;
  return result;
}

uint64_t sub_24A626474()
{
  result = sub_24A62EA14();
  qword_27EF5C998 = result;
  return result;
}

uint64_t sub_24A62665C(float a1, float a2, double a3, uint64_t a4, uint64_t *a5)
{
  v9 = type metadata accessor for PFVFXAnimation();
  sub_24A56A3FC(v9, a5);
  v10 = sub_24A506EB8(v9, a5);
  v11 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v12) = 1.0;
  *&v13 = a1;
  *&v14 = a2;
  *v10 = [v11 initWithControlPoints__:v13 :{0.0, v14, v12}];
  *(v10 + 8) = a3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24A62674C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for PFVFXAnimation();
  sub_24A56A3FC(v3, a2);
  sub_24A506EB8(v3, a2);
  sub_24A62E944();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24A6267F8(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for PFVFXAnimation();
  sub_24A56A3FC(v5, a3);
  v6 = sub_24A506EB8(v5, a3);
  v7 = *MEMORY[0x277CDA7B8];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 functionWithName_];

  *v6 = v10;
  *(v6 + 8) = a1;

  return swift_storeEnumTagMultiPayload();
}

id sub_24A6268BC()
{
  v1 = v0;
  v2 = sub_24A62E984();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PFVFXAnimation();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A5461E8(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = [objc_opt_self() functionWithCAMediaTimingFunction_];

    return v12;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_24A62E954();
    v15 = v14;
    sub_24A62E974();
    v17 = v16;
    sub_24A62E964();
    v19 = v18;
    v20 = objc_opt_self();
    *&v21 = v15;
    *&v22 = v17;
    *&v23 = v19;
    v24 = [v20 functionWithMass:v21 stiffness:v22 damping:v23 initialVelocity:0.0];
    (*(v3 + 8))(v6, v2);
    return v24;
  }
}

uint64_t type metadata accessor for PFVFXAnimation()
{
  result = qword_27EF52590;
  if (!qword_27EF52590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A626AF0()
{
  sub_24A62E984();
  if (v0 <= 0x3F)
  {
    sub_24A626B64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24A626B64()
{
  if (!qword_27EF525A0)
  {
    sub_24A626BD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF525A0);
    }
  }
}

unint64_t sub_24A626BD0()
{
  result = qword_27EF525A8;
  if (!qword_27EF525A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF525A8);
  }

  return result;
}

uint64_t sub_24A626C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24A626D08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A62E214();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FMFindingViewState()
{
  result = qword_27EF525B0;
  if (!qword_27EF525B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A626E14()
{
  sub_24A62E214();
  if (v0 <= 0x3F)
  {
    sub_24A554AFC(319, &qword_27EF525C0);
    if (v1 <= 0x3F)
    {
      sub_24A554AFC(319, &qword_27EF51178);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24A626F08@<X0>(uint64_t a1@<X0>, char a2@<W1>, _WORD *a3@<X8>)
{
  v6 = type metadata accessor for FMFindingViewState();
  v7 = (a3 + v6[15]);
  *v7 = 0;
  v7[1] = 0;
  *a3 = *a1;
  v8 = sub_24A5ABC04();
  v9 = (a3 + v6[6]);
  *v9 = v8;
  v9[1] = v10;
  sub_24A5ABB40(&v32);
  v11 = *(&v33 + 1);
  v12 = v34;
  sub_24A50A204(&v32, *(&v33 + 1));
  v13 = a3 + v6[5];
  (*(v12 + 16))(v11, v12);
  sub_24A508C54(&v32);
  sub_24A50D63C(a1 + 24, &v32, &unk_27EF522E0, qword_24A637660);
  v14 = *(&v33 + 1);
  sub_24A50D6A4(&v32, &unk_27EF522E0, qword_24A637660);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(*(a1 + 16) + 16) > 1uLL;
  }

  *(a3 + v6[7]) = v15;
  v16 = *(a1 + 64);
  if (*(v16 + 16) && (v17 = type metadata accessor for FMFindingSessionState(), v18 = sub_24A515AC8(a1 + *(v17 + 36)), (v19 & 1) != 0))
  {
    v20 = *(v16 + 56) + 104 * v18;
    v22 = *(v20 + 16);
    v21 = *(v20 + 32);
    v32 = *v20;
    v33 = v22;
    v34 = v21;
    v23 = *(v20 + 48);
    v24 = *(v20 + 64);
    v25 = *(v20 + 80);
    *(v37 + 13) = *(v20 + 93);
    v36 = v24;
    v37[0] = v25;
    v35 = v23;
    sub_24A508CE4(&v32, v31);
    result = sub_24A623258(a1, type metadata accessor for FMFindingSessionState);
    v27 = a3 + v6[8];
    v28 = v37[0];
    *(v27 + 4) = v36;
    *(v27 + 5) = v28;
    *(v27 + 93) = *(v37 + 13);
    v29 = v33;
    *v27 = v32;
    *(v27 + 1) = v29;
    v30 = v35;
    *(v27 + 2) = v34;
    *(v27 + 3) = v30;
    *(a3 + v6[9]) = a2;
    *(a3 + v6[10]) = 0;
    *(a3 + v6[11]) = 0;
    *(a3 + v6[12]) = 0;
    *(a3 + v6[13]) = 0;
    *(a3 + v6[14]) = 0;
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A62715C()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (v2 && (v2 == 1 || (v1 & 0x80000000) == 0))
  {
    return 4;
  }

  v4 = type metadata accessor for FMFindingViewState();
  if (*(v0 + *(v4 + 44)))
  {
    return 3;
  }

  v5 = v4;
  result = 0;
  v6 = v0 + *(v5 + 32);
  v7 = *(v6 + 24) | (v6[100] << 32);
  if ((*(v6 + 24) & 0xFC000000) != 0x4000000 && (*(v6 + 24) & 0xFF0000) == 0x40000)
  {
    v8 = v6[40];
    v9 = v6[56];
    v10 = v6[57];
    if (*(v6 + 2) == 1)
    {
      v13 = *v6;
      v14 = 1;
      v15 = *(v6 + 24);
      v16 = v8;
      *v17 = *(v6 + 41);
      *&v17[7] = *(v6 + 6);
      v18 = v9;
      v19 = v10;
      *&v21[14] = *(v6 + 11);
      *v21 = *(v6 + 74);
      v20 = *(v6 + 58);
      v23 = BYTE4(v7);
      v22 = v7;
      sub_24A50D63C(&v13, v12, &qword_27EF4F670, &qword_24A634D70);
      return 0;
    }

    else if (v6[40])
    {
      if (v6[56])
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      if (v6[57])
      {
        return 3;
      }

      else
      {
        return v11;
      }
    }

    else if (v6[57])
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A6272B0()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (v2 && (v2 == 1 || (v1 & 0x80000000) == 0))
  {
    return 0;
  }

  v3 = type metadata accessor for FMFindingViewState();
  v4 = v3;
  v5 = "R_CANT_RECONNECT_ERROR";
  if ((*(v0 + *(v3 + 44)) & 1) == 0)
  {
    v6 = v0 + *(v3 + 32);
    v7 = *(v6 + 24) | (v6[100] << 32);
    if ((*(v6 + 24) & 0xFC000000) == 0x4000000 || (*(v6 + 24) & 0xFF0000) != 0x40000)
    {
      goto LABEL_11;
    }

    v8 = v6[40];
    v9 = v6[56];
    v10 = v6[57];
    if (*(v6 + 2) == 1)
    {
      v35 = *v6;
      *v36 = 1;
      *&v36[8] = *(v6 + 24);
      v36[24] = v8;
      *&v36[25] = *(v6 + 41);
      *&v36[32] = *(v6 + 6);
      v36[40] = v9;
      v36[41] = v10;
      *&v36[72] = *(v6 + 11);
      *&v36[58] = *(v6 + 74);
      *&v36[42] = *(v6 + 58);
      v36[84] = BYTE4(v7);
      *&v36[80] = v7;
      sub_24A50D63C(&v35, &v29, &qword_27EF4F670, &qword_24A634D70);
      goto LABEL_11;
    }

    if (v6[40])
    {
      if (v6[56])
      {
        v17 = "compassInFOVMode";
        if (v6[57])
        {
          v17 = "compassReachMode";
        }

        v5 = (v17 - 32);
      }

      else if ((v6[57] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((v6[57] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (0x800000024A63DD60 == (v5 | 0x8000000000000000))
  {

    goto LABEL_12;
  }

LABEL_11:
  v11 = sub_24A62F634();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (*(v0 + *(v4 + 40)))
  {
    return 0;
  }

  v12 = v0 + *(v4 + 32);
  *&v36[77] = *(v12 + 93);
  v13 = *(v12 + 5);
  *&v36[48] = *(v12 + 4);
  *&v36[64] = v13;
  v14 = *(v12 + 1);
  v35 = *v12;
  *v36 = v14;
  v15 = *(v12 + 3);
  *&v36[16] = *(v12 + 2);
  *&v36[32] = v15;
  if ((*&v36[80] & 0xFC000000 | 0x2000000) == 0x6000000 || (*&v36[80] & 0xFF0000) != 0x40000)
  {
    return 0;
  }

  if (*v36 == 1)
  {
    v18 = *(v12 + 5);
    v33 = *(v12 + 4);
    v34[0] = v18;
    *(v34 + 13) = *(v12 + 93);
    v19 = *(v12 + 1);
    v29 = *v12;
    v30 = v19;
    v20 = *(v12 + 3);
    v31 = *(v12 + 2);
    v32 = v20;
    sub_24A50D63C(&v29, v28, &qword_27EF4F670, &qword_24A634D70);
    return 0;
  }

  else
  {
    v21 = *&v36[48];
    if ((*&v36[80] & 0x100) != 0)
    {
      v26 = 2.11024;
    }

    else
    {
      v22 = *(v12 + 5);
      v33 = *(v12 + 4);
      v34[0] = v22;
      *(v34 + 13) = *(v12 + 93);
      v23 = *(v12 + 1);
      v29 = *v12;
      v30 = v23;
      v24 = *(v12 + 3);
      v31 = *(v12 + 2);
      v32 = v24;
      sub_24A50D63C(&v29, v28, &qword_27EF4F670, &qword_24A634D70);
      if (qword_27EF4EA90 != -1)
      {
        swift_once();
      }

      v25 = *&qword_27EF5C768;
      sub_24A517ABC(&v35);
      v26 = 4.0 - v25;
      if (4.0 - v25 < 0.0)
      {
        v26 = 0.0;
      }
    }

    v27 = (4.0 - v21) / v26;
    if (v27 < 0.0)
    {
      v27 = 0.0;
    }

    return fmin(v27, 1.0);
  }
}

uint64_t sub_24A627670()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (v2 && (v2 == 1 || (v1 & 0x80000000) == 0))
  {
    return 0;
  }

  v3 = type metadata accessor for FMFindingViewState();
  v4 = v3;
  if (*(v0 + *(v3 + 44)))
  {
LABEL_5:
    v5 = "R_CANT_RECONNECT_ERROR";
    goto LABEL_6;
  }

  v6 = v0 + *(v3 + 32);
  v7 = *(v6 + 24) | (v6[100] << 32);
  if ((*(v6 + 24) & 0xFC000000) == 0x4000000 || (*(v6 + 24) & 0xFF0000) != 0x40000)
  {
    goto LABEL_12;
  }

  v8 = v6[40];
  v9 = v6[56];
  v10 = v6[57];
  if (*(v6 + 2) == 1)
  {
    v35 = *v6;
    *v36 = 1;
    *&v36[8] = *(v6 + 24);
    v36[24] = v8;
    *&v36[25] = *(v6 + 41);
    *&v36[32] = *(v6 + 6);
    v36[40] = v9;
    v36[41] = v10;
    *&v36[72] = *(v6 + 11);
    *&v36[58] = *(v6 + 74);
    *&v36[42] = *(v6 + 58);
    v36[84] = BYTE4(v7);
    *&v36[80] = v7;
    sub_24A50D63C(&v35, &v29, &qword_27EF4F670, &qword_24A634D70);
    goto LABEL_12;
  }

  if ((v6[40] & 1) == 0)
  {
    if ((v6[57] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if ((v6[56] & 1) == 0)
  {
    if ((v6[57] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v17 = "compassInFOVMode";
  if (v6[57])
  {
    v17 = "compassReachMode";
  }

  v5 = (v17 - 32);
LABEL_6:
  if (0x800000024A63DD40 == (v5 | 0x8000000000000000))
  {

    goto LABEL_13;
  }

LABEL_12:
  v11 = sub_24A62F634();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if (*(v0 + *(v4 + 40)))
  {
    return 0;
  }

  v12 = v0 + *(v4 + 32);
  *&v36[77] = *(v12 + 93);
  v13 = *(v12 + 5);
  *&v36[48] = *(v12 + 4);
  *&v36[64] = v13;
  v14 = *(v12 + 1);
  v35 = *v12;
  *v36 = v14;
  v15 = *(v12 + 3);
  *&v36[16] = *(v12 + 2);
  *&v36[32] = v15;
  if ((*&v36[80] & 0xFC000000 | 0x2000000) == 0x6000000 || (*&v36[80] & 0xFF0000) != 0x40000)
  {
    return 0;
  }

  if (*v36 == 1)
  {
    v18 = *(v12 + 5);
    v33 = *(v12 + 4);
    v34[0] = v18;
    *(v34 + 13) = *(v12 + 93);
    v19 = *(v12 + 1);
    v29 = *v12;
    v30 = v19;
    v20 = *(v12 + 3);
    v31 = *(v12 + 2);
    v32 = v20;
    sub_24A50D63C(&v29, v28, &qword_27EF4F670, &qword_24A634D70);
    return 0;
  }

  v21 = *(v12 + 1);
  v37 = *v12;
  v40 = *(v12 + 40);
  v41 = *(v12 + 56);
  v42 = *(v12 + 72);
  v22 = *(v12 + 11);
  v38 = *v36;
  v43 = v22;
  v39 = *(v12 + 24);
  v44 = *&v36[80];
  v29 = v37;
  v30 = v21;
  v23 = *(v12 + 2);
  v24 = *(v12 + 3);
  v25 = *(v12 + 4);
  v26 = *(v12 + 5);
  *(v34 + 13) = *(v12 + 93);
  v33 = v25;
  v34[0] = v26;
  v31 = v23;
  v32 = v24;
  sub_24A50D63C(&v29, v28, &qword_27EF4F670, &qword_24A634D70);
  v27 = sub_24A51AA70();
  sub_24A517ABC(&v35);
  return v27;
}

double sub_24A6279B4(double result)
{
  v2 = *v1;
  v3 = (v2 >> 13) & 3;
  if (v3 && (v3 == 1 || (v2 & 0x80000000) == 0))
  {
    return result;
  }

  v4 = type metadata accessor for FMFindingViewState();
  v5 = v4;
  if (*(v1 + *(v4 + 44)))
  {
    goto LABEL_5;
  }

  v7 = v1 + *(v4 + 32);
  v8 = *(v7 + 24) | (v7[100] << 32);
  if ((*(v7 + 24) & 0xFC000000) == 0x4000000 || (*(v7 + 24) & 0xFF0000) != 0x40000)
  {
LABEL_12:
    v12 = sub_24A62F634();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v9 = v7[40];
  v10 = v7[56];
  v11 = v7[57];
  if (*(v7 + 2) == 1)
  {
    v21 = *v7;
    v22 = 1;
    v23 = *(v7 + 24);
    LOBYTE(v24) = v9;
    *(&v24 + 1) = *(v7 + 41);
    *(&v24 + 1) = *(v7 + 6);
    v25[0] = v10;
    v25[1] = v11;
    *&v25[32] = *(v7 + 11);
    *&v25[18] = *(v7 + 74);
    *&v25[2] = *(v7 + 58);
    v27 = BYTE4(v8);
    v26 = v8;
    sub_24A50D63C(&v21, v20, &qword_27EF4F670, &qword_24A634D70);
    goto LABEL_12;
  }

  if ((v7[40] & 1) == 0)
  {
    if ((v7[57] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if ((v7[56] & 1) == 0)
  {
    if ((v7[57] & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_5:
    v6 = "R_CANT_RECONNECT_ERROR";
    goto LABEL_6;
  }

  v15 = "compassInFOVMode";
  if (v7[57])
  {
    v15 = "compassReachMode";
  }

  v6 = (v15 - 32);
LABEL_6:
  if (0x800000024A63DD40 != (v6 | 0x8000000000000000))
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((*(v1 + *(v5 + 40)) & 1) == 0)
  {
    v13 = v1 + *(v5 + 32);
    v14 = *(v13 + 24);
    if ((v14 & 0xFC000000 | 0x2000000) != 0x6000000)
    {
      v16 = v14 | (v13[100] << 32);
      if ((v16 & 0xFF0000) == 0x40000)
      {
        v17 = v13[8];
        if (*(v13 + 2) == 1)
        {
          *&v21 = *v13;
          BYTE8(v21) = v17;
          *(&v21 + 9) = *(v13 + 9);
          HIDWORD(v21) = *(v13 + 3);
          v24 = *(v13 + 40);
          *v25 = *(v13 + 56);
          *&v25[16] = *(v13 + 72);
          v18 = *(v13 + 11);
          v22 = 1;
          *&v25[32] = v18;
          v23 = *(v13 + 24);
          v26 = v16;
          v27 = BYTE4(v16);
          sub_24A50D63C(&v21, v20, &qword_27EF4F670, &qword_24A634D70);
        }

        else if ((v13[8] & 1) == 0)
        {
          v19 = (1.2192 - *v13) / 1.2192;
          if (v19 < 0.0)
          {
            v19 = 0.0;
          }

          return fmin(v19, 1.0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24A627CB8()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if ((v1 & 0x80000000) != 0 && v2 >= 2 && (v1 & 1) == 0)
  {
    return 0;
  }

  if (v2 && (v2 == 1 || (v1 & 0x80000000) == 0))
  {
    return 0x3FF0000000000000;
  }

  v4 = type metadata accessor for FMFindingViewState();
  v5 = v4;
  if ((*(v0 + *(v4 + 44)) & 1) == 0)
  {
    v10 = v0 + *(v4 + 32);
    v11 = *(v10 + 24) | (v10[100] << 32);
    if ((*(v10 + 24) & 0xFC000000) != 0x4000000 && (*(v10 + 24) & 0xFF0000) == 0x40000)
    {
      v12 = v10[40];
      v13 = v10[56];
      v14 = v10[57];
      if (*(v10 + 2) == 1)
      {
        v16 = *v10;
        v17 = 1;
        v18 = *(v10 + 24);
        v19 = v12;
        *&v20 = *(v10 + 41);
        *(&v20 + 7) = *(v10 + 6);
        HIBYTE(v20) = v13;
        v21[0] = v14;
        *&v21[31] = *(v10 + 11);
        *&v21[17] = *(v10 + 74);
        *&v21[1] = *(v10 + 58);
        v23 = BYTE4(v11);
        v22 = v11;
        sub_24A50D63C(&v16, v15, &qword_27EF4F670, &qword_24A634D70);
      }

      else
      {
        if (v10[40])
        {
          if (v10[56])
          {
            v10[57];
          }

          goto LABEL_9;
        }

        if (v10[57])
        {
          goto LABEL_9;
        }
      }
    }

    return 0;
  }

LABEL_9:
  v6 = sub_24A62F634();

  if (v6 & 1) != 0 || (*(v0 + *(v5 + 40)))
  {
    return 0;
  }

  v7 = v0 + *(v5 + 32);
  v8 = *(v7 + 24) | (v7[100] << 32);
  result = 0x3FF0000000000000;
  if ((*(v7 + 24) & 0xFC000000) != 0x4000000 && (*(v7 + 24) & 0xFF0000) == 0x40000)
  {
    v9 = v7[40];
    if (*(v7 + 2) == 1)
    {
      v16 = *v7;
      v17 = 1;
      v18 = *(v7 + 24);
      v19 = v9;
      v20 = *(v7 + 41);
      *v21 = *(v7 + 57);
      *&v21[16] = *(v7 + 73);
      *&v21[31] = *(v7 + 11);
      v22 = v8;
      v23 = BYTE4(v8);
      sub_24A50D63C(&v16, v15, &qword_27EF4F670, &qword_24A634D70);
      return 0x3FF0000000000000;
    }

    if (v7[40])
    {
      return 0;
    }

    else
    {
      return 0x3FF0000000000000;
    }
  }

  return result;
}

uint64_t sub_24A627F7C()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (v2 && (v2 == 1 || (v1 & 0x80000000) == 0))
  {
    v3 = v0 + *(type metadata accessor for FMFindingViewState() + 32);
    v4 = *(v3 + 24);
    if ((v4 & 0xFE000000) != 0x4000000)
    {
      if ((v4 & 0xFE000000) == 0x6000000)
      {
        return 0;
      }

      v3[100];
      v9 = (*&v4 & 0xFC0000) == 0;
      goto LABEL_17;
    }

    return 0;
  }

  v6 = type metadata accessor for FMFindingViewState();
  v7 = v6;
  if ((*(v0 + *(v6 + 44)) & 1) == 0)
  {
    v10 = v0 + *(v6 + 32);
    v11 = *(v10 + 24) | (v10[100] << 32);
    if ((*(v10 + 24) & 0xFC000000) != 0x4000000 && (*(v10 + 24) & 0xFF0000) == 0x40000)
    {
      v12 = v10[40];
      v13 = v10[56];
      v14 = v10[57];
      if (*(v10 + 2) == 1)
      {
        v16 = *v10;
        v17 = 1;
        v18 = *(v10 + 24);
        v19 = v12;
        *v20 = *(v10 + 41);
        *&v20[7] = *(v10 + 6);
        v21 = v13;
        v22 = v14;
        *&v24[14] = *(v10 + 11);
        *v24 = *(v10 + 74);
        v23 = *(v10 + 58);
        v26 = BYTE4(v11);
        v25 = v11;
        sub_24A50D63C(&v16, v15, &qword_27EF4F670, &qword_24A634D70);
      }

      else
      {
        if (v10[40])
        {
          if (v10[56])
          {
            v10[57];
          }

          goto LABEL_8;
        }

        if (v10[57])
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

LABEL_8:
  v8 = sub_24A62F634();

  if (v8)
  {
    return 0;
  }

  v9 = *(v0 + *(v7 + 40)) == 0;
LABEL_17:
  if (v9)
  {
    return 0x3FF0000000000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A6281B4()
{
  v1 = *v0;
  if (v1 >= 0xC000 && (v1 & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for FMFindingViewState();
  result = 0;
  v4 = v0 + *(v2 + 32);
  v5 = *(v4 + 24) | (v4[100] << 32);
  if ((*(v4 + 24) & 0xFC000000) != 0x4000000 && (*(v4 + 24) & 0xFF0000) == 0x40000)
  {
    v6 = v4[40];
    if (*(v4 + 2) == 1)
    {
      v8 = *v4;
      v9 = 1;
      v10 = *(v4 + 24);
      v11 = v6;
      v12 = *(v4 + 41);
      v13 = *(v4 + 57);
      *v14 = *(v4 + 73);
      *&v14[15] = *(v4 + 11);
      v15 = v5;
      v16 = BYTE4(v5);
      sub_24A50D63C(&v8, v7, &qword_27EF4F670, &qword_24A634D70);
      return 0;
    }

    if (v4[40])
    {
      return *(v4 + 4);
    }

    return 0;
  }

  return result;
}

uint64_t sub_24A6282C8()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if ((v1 & 0x80000000) != 0 && v2 >= 2 && (v1 & 1) == 0)
  {
    return 0;
  }

  if (!v2 || v2 != 1 && (v1 & 0x80000000) != 0)
  {
    v6 = type metadata accessor for FMFindingViewState();
    v7 = v6;
    if (*(v0 + *(v6 + 44)))
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
      v12 = v0 + *(v6 + 32);
      v13 = *(v12 + 24) | (v12[100] << 32);
      if ((*(v12 + 24) & 0xFC000000) != 0x4000000 && (*(v12 + 24) & 0xFF0000) == 0x40000)
      {
        v14 = v12[40];
        v15 = v12[56];
        v16 = v12[57];
        if (*(v12 + 2) == 1)
        {
          v26 = *v12;
          v27 = 1;
          v28 = *(v12 + 24);
          v29 = v14;
          *v30 = *(v12 + 41);
          *&v30[7] = *(v12 + 6);
          v31 = v15;
          v32 = v16;
          *&v34[14] = *(v12 + 11);
          *v34 = *(v12 + 74);
          v33 = *(v12 + 58);
          v36 = BYTE4(v13);
          v35 = v13;
          sub_24A50D63C(&v26, v25, &qword_27EF4F670, &qword_24A634D70);
          v8 = 0;
        }

        else if (v12[40])
        {
          if (v12[56])
          {
            if (v12[57])
            {
              v8 = 3;
            }

            else
            {
              v8 = 2;
            }
          }

          else if (v12[57])
          {
            v8 = 3;
          }

          else
          {
            v8 = 1;
          }
        }

        else if (v12[57])
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    v9 = *(v7 + 36);
    v10 = *(v0 + v9);
    if (v10 == 10)
    {
      v11 = 0;
      goto LABEL_34;
    }

    if (sub_24A596B24(*(v0 + v9)) == 0xD000000000000014 && 0x800000024A63CCF0 == v17)
    {
      goto LABEL_32;
    }

    v19 = sub_24A62F634();

    if (v19)
    {
      v11 = 1;
      goto LABEL_34;
    }

    if (sub_24A596B24(v10) == 0xD000000000000030 && 0x800000024A63CD30 == v20)
    {
LABEL_32:
      v11 = 1;
    }

    else
    {
      v11 = sub_24A62F634();
    }

LABEL_34:
    if (v8 > 1u && (v8 != 2 ? (v22 = "R_CANT_RECONNECT_ERROR") : (v22 = "compassReachMode"), 0x800000024A63DD40 == (v22 | 0x8000000000000000)))
    {
    }

    else
    {
      v23 = sub_24A62F634();

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    if (v11 & 1) != 0 || (sub_24A6281B4(), (v24))
    {
      if (*(v0 + *(v7 + 40)) != 1)
      {
        return 0x3FF0000000000000;
      }
    }

    return 0;
  }

  v3 = v0 + *(type metadata accessor for FMFindingViewState() + 32);
  v4 = *(v3 + 24);
  if ((v4 & 0xFE000000) == 0x4000000)
  {
    return 0;
  }

  if ((v4 & 0xFE000000) == 0x6000000)
  {
    return 0;
  }

  v3[100];
  if ((*(v3 + 24) & 0xFC0000) != 0)
  {
    return 0;
  }

  else
  {
    return 0x3FF0000000000000;
  }
}

uint64_t sub_24A628644@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v44 = sub_24A62E214();
  v43 = *(v44 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  sub_24A5ABB40(&v52);
  v9 = v53;
  v10 = v54;
  sub_24A50A204(&v52, v53);
  (*(v10 + 16))(v9, v10);
  v41 = sub_24A5ABC04();
  v40 = v11;
  sub_24A50D63C((a1 + 12), &v46, &unk_27EF522E0, qword_24A637660);
  v12 = *(&v47 + 1);
  sub_24A50D6A4(&v46, &unk_27EF522E0, qword_24A637660);
  if (v12)
  {
    v39 = 0;
  }

  else
  {
    v39 = *(*(a1 + 2) + 16) > 1uLL;
  }

  v13 = *(a1 + 8);
  if (*(v13 + 16) && (v14 = type metadata accessor for FMFindingSessionState(), v15 = sub_24A515AC8(a1 + *(v14 + 36)), (v16 & 1) != 0))
  {
    v17 = *(v13 + 56) + 104 * v15;
    v19 = *(v17 + 16);
    v18 = *(v17 + 32);
    v46 = *v17;
    v47 = v19;
    v48 = v18;
    v20 = *(v17 + 48);
    v21 = *(v17 + 64);
    v22 = *(v17 + 80);
    *&v51[13] = *(v17 + 93);
    v50 = v21;
    *v51 = v22;
    v49 = v20;
    v23 = type metadata accessor for FMFindingViewState();
    v24 = *(v3 + v23[9]);
    v25 = *(v3 + v23[10]);
    v26 = *(v3 + v23[11]);
    v27 = *(v3 + v23[12]);
    v28 = *(v3 + v23[13]);
    v29 = *(v3 + v23[14]);
    v30 = &a2[v23[15]];
    *v30 = 0;
    *(v30 + 1) = 0;
    *a2 = v42;
    (*(v43 + 32))(&a2[v23[5]], v8, v44);
    v31 = &a2[v23[6]];
    v32 = v40;
    *v31 = v41;
    v31[1] = v32;
    a2[v23[7]] = v39;
    v33 = &a2[v23[8]];
    v34 = *v51;
    *(v33 + 4) = v50;
    *(v33 + 5) = v34;
    *(v33 + 93) = *&v51[13];
    v35 = v47;
    *v33 = v46;
    *(v33 + 1) = v35;
    v36 = v49;
    *(v33 + 2) = v48;
    *(v33 + 3) = v36;
    a2[v23[9]] = v24;
    a2[v23[10]] = v25;
    a2[v23[11]] = v26;
    a2[v23[12]] = v27;
    a2[v23[13]] = v28;
    a2[v23[14]] = v29;
    sub_24A508CE4(&v46, v45);
    return sub_24A508C54(&v52);
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A628998(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v10 = &v41[-v9 - 8];
  sub_24A50D63C(a1, &v41[-v9 - 8], &qword_27EF4FA80, &qword_24A634D40);
  v11 = type metadata accessor for FMFindingViewState();
  v12 = *(v11 - 1);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24A50D6A4(v10, &qword_27EF4FA80, &qword_24A634D40);
    v13 = 0;
  }

  else
  {
    (*(v12 + 56))(v8, 1, 1, v11);
    v14 = sub_24A628998(v8);
    sub_24A50D6A4(v8, &qword_27EF4FA80, &qword_24A634D40);
    sub_24A623258(v10, type metadata accessor for FMFindingViewState);
    v13 = (v14 != 2) & v14;
  }

  v15 = *v2;
  v16 = (v15 >> 13) & 3;
  if (v16 && (v16 == 1 || (v15 & 0x80000000) == 0))
  {
    return 2;
  }

  if (*(v2 + v11[11]))
  {
LABEL_8:
    v17 = "R_CANT_RECONNECT_ERROR";
    goto LABEL_9;
  }

  v18 = v2 + v11[8];
  v19 = *(v18 + 24) | (v18[100] << 32);
  if ((*(v18 + 24) & 0xFC000000) == 0x4000000 || (*(v18 + 24) & 0xFF0000) != 0x40000)
  {
    goto LABEL_15;
  }

  v20 = v18[40];
  v21 = v18[56];
  v22 = v18[57];
  if (*(v18 + 2) == 1)
  {
    v48 = *v18;
    *v49 = 1;
    *&v49[8] = *(v18 + 24);
    v49[24] = v20;
    *&v49[25] = *(v18 + 41);
    *&v49[32] = *(v18 + 6);
    v49[40] = v21;
    v49[41] = v22;
    *&v49[72] = *(v18 + 11);
    *&v49[58] = *(v18 + 74);
    *&v49[42] = *(v18 + 58);
    v49[84] = BYTE4(v19);
    *&v49[80] = v19;
    sub_24A50D63C(&v48, &v42, &qword_27EF4F670, &qword_24A634D70);
    goto LABEL_15;
  }

  if ((v18[40] & 1) == 0)
  {
    if ((v18[57] & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if ((v18[56] & 1) == 0)
  {
    if ((v18[57] & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v29 = "compassInFOVMode";
  if (v18[57])
  {
    v29 = "compassReachMode";
  }

  v17 = (v29 - 32);
LABEL_9:
  if (0x800000024A63DD40 == (v17 | 0x8000000000000000))
  {

    goto LABEL_16;
  }

LABEL_15:
  v23 = sub_24A62F634();

  if ((v23 & 1) == 0)
  {
    return 2;
  }

LABEL_16:
  if (*(v2 + v11[10]))
  {
    return 2;
  }

  v24 = v2 + v11[8];
  *&v49[77] = *(v24 + 93);
  v25 = *(v24 + 5);
  *&v49[48] = *(v24 + 4);
  *&v49[64] = v25;
  v26 = *(v24 + 1);
  v48 = *v24;
  *v49 = v26;
  v27 = *(v24 + 3);
  *&v49[16] = *(v24 + 2);
  *&v49[32] = v27;
  if ((*&v49[80] & 0xFC000000 | 0x2000000) == 0x6000000 || (*&v49[80] & 0xFF0000) != 0x40000)
  {
    return 2;
  }

  if (*v49 == 1)
  {
    v30 = *(v24 + 5);
    v46 = *(v24 + 4);
    v47[0] = v30;
    *(v47 + 13) = *(v24 + 93);
    v31 = *(v24 + 1);
    v42 = *v24;
    v43 = v31;
    v32 = *(v24 + 3);
    v44 = *(v24 + 2);
    v45 = v32;
    sub_24A50D63C(&v42, v41, &qword_27EF4F670, &qword_24A634D70);
    return 2;
  }

  v33 = *(v24 + 1);
  v50 = *v24;
  v53 = *(v24 + 40);
  v54 = *(v24 + 56);
  v55 = *(v24 + 72);
  v34 = *(v24 + 11);
  v51 = *v49;
  v56 = v34;
  v52 = *(v24 + 24);
  v57 = *&v49[80];
  v42 = v50;
  v43 = v33;
  v35 = *(v24 + 2);
  v36 = *(v24 + 3);
  v37 = *(v24 + 4);
  v38 = *(v24 + 5);
  *(v47 + 13) = *(v24 + 93);
  v46 = v37;
  v47[0] = v38;
  v44 = v35;
  v45 = v36;
  sub_24A50D63C(&v42, v41, &qword_27EF4F670, &qword_24A634D70);
  v39 = sub_24A51AB70(v13);
  sub_24A517ABC(&v48);
  return v39;
}

uint64_t sub_24A628E50()
{
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24A63C700;
  v2 = COERCE_DOUBLE(sub_24A627CB8());
  if (v3)
  {
    v4 = -100.0;
  }

  else
  {
    v4 = v2 * 100.0;
  }

  v5 = MEMORY[0x277D85048];
  *(v1 + 56) = MEMORY[0x277D85048];
  v6 = sub_24A629414();
  *(v1 + 64) = v6;
  *(v1 + 32) = v4;
  v7 = COERCE_DOUBLE(sub_24A627F7C()) * 100.0;
  if (v8)
  {
    v7 = -100.0;
  }

  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  *(v1 + 72) = v7;
  v9 = COERCE_DOUBLE(sub_24A6282C8()) * 100.0;
  if (v10)
  {
    v9 = -100.0;
  }

  *(v1 + 136) = v5;
  *(v1 + 144) = v6;
  *(v1 + 112) = v9;
  v11 = type metadata accessor for FMFindingViewState();
  v12 = *(v0 + v11[10]);
  v13 = sub_24A508FEC();
  v14 = v13;
  v15 = 1702195828;
  if (v12)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  v17 = MEMORY[0x277D837D0];
  if (v12)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  *(v1 + 176) = MEMORY[0x277D837D0];
  *(v1 + 184) = v13;
  *(v1 + 152) = v16;
  *(v1 + 160) = v18;
  if (*(v0 + v11[11]))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v0 + v11[11]))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  *(v1 + 216) = v17;
  *(v1 + 224) = v13;
  *(v1 + 192) = v19;
  *(v1 + 200) = v20;
  if (*(v0 + v11[12]))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v0 + v11[12]))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  *(v1 + 256) = v17;
  *(v1 + 264) = v13;
  *(v1 + 232) = v21;
  *(v1 + 240) = v22;
  if (*(v0 + v11[14]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v0 + v11[14]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  *(v1 + 296) = v17;
  *(v1 + 304) = v13;
  *(v1 + 272) = v23;
  *(v1 + 280) = v24;
  if (*(v0 + v11[13]))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v15 = 0x65736C6166;
    v25 = 0xE500000000000000;
  }

  *(v1 + 336) = v17;
  *(v1 + 344) = v13;
  *(v1 + 312) = v15;
  *(v1 + 320) = v25;
  v26 = sub_24A62EC24();
  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_24A633E60;
  v30 = sub_24A62715C();
  if (v30 <= 1)
  {
    if (v30)
    {
      v32 = 0x800000024A63DD80;
      v31 = 0xD000000000000011;
    }

    else
    {
      v32 = 0xEF65646F4D6E6F69;
      v31 = 0x74617262696C6163;
    }
  }

  else
  {
    if (v30 == 2)
    {
      v33 = "compassInFOVMode";
    }

    else
    {
      v31 = 0;
      v32 = 0;
      if (v30 != 3)
      {
        goto LABEL_44;
      }

      v33 = "compassReachMode";
    }

    v32 = (v33 - 32) | 0x8000000000000000;
    v31 = 0xD000000000000010;
  }

LABEL_44:
  *(v29 + 56) = v17;
  *(v29 + 64) = v14;
  if (!v32)
  {
    v31 = 7104878;
    v32 = 0xE300000000000000;
  }

  *(v29 + 32) = v31;
  *(v29 + 40) = v32;
  v34 = (v0 + v11[6]);
  v36 = *v34;
  v35 = v34[1];
  *(v29 + 96) = v17;
  *(v29 + 104) = v14;
  *(v29 + 72) = v36;
  *(v29 + 80) = v35;
  v37 = (v0 + v11[8]);
  v45 = v37[4];
  *v46 = v37[5];
  *&v46[13] = *(v37 + 93);
  v43 = v37[2];
  v44 = v37[3];
  v41 = *v37;
  v42 = v37[1];

  v38 = sub_24A576980();
  *(v29 + 136) = v17;
  *(v29 + 144) = v14;
  *(v29 + 112) = v38;
  *(v29 + 120) = v39;
  *(v29 + 176) = v17;
  *(v29 + 184) = v14;
  *(v29 + 152) = v26;
  *(v29 + 160) = v28;

  return sub_24A62EC24();
}

BOOL sub_24A629198(_WORD *a1, _WORD *a2)
{
  LOWORD(v35[0]) = *a1;
  LOWORD(v33[0]) = *a2;
  if ((_s11FMFindingUI21FindingExperienceTypeO2eeoiySbAC_ACtFZ_0(v35, v33) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FMFindingViewState();
  v5 = v4[5];
  if ((sub_24A62E1E4() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_24A62F634() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v11 = a1 + v4[8];
  v12 = *(v11 + 5);
  v33[4] = *(v11 + 4);
  v34[0] = v12;
  *(v34 + 13) = *(v11 + 93);
  v13 = *(v11 + 3);
  v33[2] = *(v11 + 2);
  v33[3] = v13;
  v14 = *(v11 + 1);
  v33[0] = *v11;
  v33[1] = v14;
  v15 = a2 + v4[8];
  v16 = *(v15 + 5);
  v35[4] = *(v15 + 4);
  v36[0] = v16;
  *(v36 + 13) = *(v15 + 93);
  v17 = *(v15 + 3);
  v35[2] = *(v15 + 2);
  v35[3] = v17;
  v18 = *(v15 + 1);
  v35[0] = *v15;
  v35[1] = v18;
  if ((sub_24A5773B4(v33, v35) & 1) == 0)
  {
    return 0;
  }

  v19 = v4[9];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 10)
  {
    if (v21 == 10)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v21 == 10)
  {
    return 0;
  }

  v22 = sub_24A596B24(v20);
  v24 = v23;
  if (v22 == sub_24A596B24(v21) && v24 == v25)
  {
  }

  else
  {
    v26 = sub_24A62F634();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_18:
  if (*(a1 + v4[10]) != *(a2 + v4[10]) || *(a1 + v4[11]) != *(a2 + v4[11]) || *(a1 + v4[12]) != *(a2 + v4[12]) || *(a1 + v4[13]) != *(a2 + v4[13]) || *(a1 + v4[14]) != *(a2 + v4[14]))
  {
    return 0;
  }

  v28 = *v11;
  v11[100];
  v29 = (*(v11 + 24) & 0xFC0000) != 0 || (*(v11 + 24) & 0xFC000000) == 0x4000000;
  v30 = 0.0;
  if (v29)
  {
    v28 = 0.0;
  }

  v31 = *(v15 + 24) | (v15[100] << 32);
  if ((*(v15 + 24) & 0xFC0000) == 0 && (*(v15 + 24) & 0xFC000000) != 0x4000000)
  {
    v30 = *v15;
  }

  return v28 == v30;
}

unint64_t sub_24A629414()
{
  result = qword_27EF525C8;
  if (!qword_27EF525C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF525C8);
  }

  return result;
}

uint64_t sub_24A62947C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_24A62F294();
    v9 = v8;
    v10 = sub_24A62F304();
    v12 = v11;
    v13 = MEMORY[0x24C21ABD0](v7, v9, v10, v11);
    sub_24A55B6DC(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_24A55B6DC(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = sub_24A62F264();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24A62B464(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_24A55B6DC(v7, v9, v6 != 0);
  return v17;
}

double sub_24A6295B0()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  xmmword_27EF5CB20 = xmmword_24A63C790;
  qword_27EF5CB30 = 0x4026000000000000;
  qword_27EF5CB38 = v1;
  result = 1.15;
  xmmword_27EF5CB40 = xmmword_24A63C7A0;
  qword_27EF5CB50 = 0x3FE0000000000000;
  return result;
}

id sub_24A629644(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = &v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style];
  if (qword_27EF4ECB8 != -1)
  {
    swift_once();
  }

  v10 = qword_27EF5CB30;
  v11 = qword_27EF5CB38;
  v12 = qword_27EF5CB50;
  v13 = xmmword_27EF5CB40;
  *v9 = xmmword_27EF5CB20;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  *(v9 + 2) = v13;
  *(v9 + 6) = v12;
  v14 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  v15 = objc_opt_self();
  v16 = v11;
  *&v4[v14] = [v15 buttonWithType_];
  v17 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring] = 0;
  v18 = &v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_lastRenderTime];
  *v18 = 0;
  v18[8] = 1;
  v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_isEnabled] = 0;
  v19 = &v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named];
  v21 = type metadata accessor for FMR1GlyphButton();
  *v20 = 0;
  v20[1] = 0;
  v24.receiver = v4;
  v24.super_class = v21;
  v22 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A629A04();
  sub_24A629C20();
  if (a2)
  {
    sub_24A62A8A4(a1, a2, a3, a4);
  }

  return v22;
}

id sub_24A629864()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentRunLoop];
    [v3 removeFromRunLoop:v4 forMode:*MEMORY[0x277CBE738]];
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for FMR1GlyphButton();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id sub_24A629A04()
{
  [v0 setUserInteractionEnabled_];
  [v0 setAccessibilityRespondsToUserInteraction_];
  [v0 setIsAccessibilityElement_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] setUserInteractionEnabled_];
  [*&v0[v2] setIsAccessibilityElement_];
  [v0 addSubview_];
  v3 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label;
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D76968];
  v7 = v4;
  v8 = [v5 preferredFontForTextStyle_];
  v9 = &v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style];
  v10 = [v8 fontWithSize_];

  [v7 setFont_];
  [*&v0[v3] setNumberOfLines_];
  [*&v0[v3] setAdjustsFontForContentSizeCategory_];
  [*&v0[v3] setTextAlignment_];
  [*&v0[v3] setTextColor_];
  v11 = [*&v0[v3] layer];
  [v11 setOpacity_];

  v12 = *&v0[v3];

  return [v0 addSubview_];
}

void sub_24A629C20()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = objc_opt_self();
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24A63AC30;
  v3 = [*&v0[v1] topAnchor];
  v4 = [v0 &selRef_description];
  v5 = [v3 constraintEqualToAnchor_];

  *(v2 + 32) = v5;
  v6 = [*&v0[v1] leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v2 + 40) = v8;
  v9 = [*&v0[v1] trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v2 + 48) = v11;
  v12 = [*&v0[v1] widthAnchor];
  v13 = &v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style];
  v14 = *&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style];
  v15 = [v12 constraintEqualToConstant_];

  *(v2 + 56) = v15;
  v16 = [*&v0[v1] heightAnchor];
  v17 = [v16 constraintEqualToConstant_];

  *(v2 + 64) = v17;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v18 = sub_24A62ED54();

  [v30 activateConstraints_];

  v19 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24A635FE0;
  v21 = [*&v0[v19] topAnchor];
  v22 = [*&v0[v1] bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v13[1]];

  *(v20 + 32) = v23;
  v24 = [*&v0[v19] bottomAnchor];
  v25 = [v0 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v20 + 40) = v26;
  v27 = [*&v0[v19] centerXAnchor];
  v28 = [*&v0[v1] centerXAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v20 + 48) = v29;
  v31 = sub_24A62ED54();

  [v30 activateConstraints_];
}

void sub_24A62A060(uint64_t a1, uint64_t a2)
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  v4 = sub_24A62EE54();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v9, sel_touchesBegan_withEvent_, v4, a2);

  v5 = [*&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = [v7 CGColor];
  [v5 setBackgroundColor_];
}

void sub_24A62A1A8(uint64_t a1, uint64_t a2)
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  v5 = sub_24A62EE54();
  v17.receiver = v2;
  v17.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v17, sel_touchesEnded_withEvent_, v5, a2);

  v6 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  v7 = [*&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
  v8 = *&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor];
  if (v8)
  {
    v9 = [v8 CGColor];
  }

  else
  {
    v9 = 0;
  }

  [v7 setBackgroundColor_];

  v10 = sub_24A62947C(a1, &qword_27EF505C8, 0x277D75C68);
  if (v10)
  {
    v11 = v10;
    [v10 locationInView_];
    v13 = v12;
    v15 = v14;
    [v2 bounds];
    v18.x = v13;
    v18.y = v15;
    if (CGRectContainsPoint(v19, v18))
    {
      v16 = *&v2[v6];
      [v16 sendActionsForControlEvents_];
    }
  }
}

uint64_t sub_24A62A348(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  v8 = sub_24A62EE64();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_24A62A3F8(uint64_t a1, uint64_t a2)
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  v4 = sub_24A62EE54();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v8, sel_touchesCancelled_withEvent_, v4, a2);

  v5 = [*&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
  v6 = *&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setBackgroundColor_];
}

void sub_24A62A50C(uint64_t a1, uint64_t a2)
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  v5 = sub_24A62EE54();
  v18.receiver = v2;
  v18.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v18, sel_touchesMoved_withEvent_, v5, a2);

  v6 = sub_24A62947C(a1, &qword_27EF505C8, 0x277D75C68);
  if (v6)
  {
    v7 = v6;
    [v6 locationInView_];
    v9 = v8;
    v11 = v10;
    [v2 bounds];
    v19.x = v9;
    v19.y = v11;
    v12 = CGRectContainsPoint(v20, v19);
    v13 = [*&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    if (v12)
    {
      v14 = [objc_opt_self() whiteColor];
      v15 = [v14 colorWithAlphaComponent_];

      v16 = [v15 CGColor];
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor];
      if (v17)
      {
        v16 = [v17 CGColor];
      }

      else
      {
        v16 = 0;
      }
    }

    [v13 setBackgroundColor_];
  }
}

id sub_24A62A6F8(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_lastRenderTime];
  if ((v1[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_lastRenderTime + 8] & 1) == 0)
  {
    v3 = v1;
    v4 = *v2;
    v5 = a1;
    [a1 timestamp];
    v7 = v6 - v4;
    v8 = *&v1[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring];
    if (v8)
    {
      sub_24A55C858(v7);
      *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    }

    v9 = *&v3[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring];
    if (v9)
    {
      sub_24A55C858(v7);
      *(v9 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    }

    [v3 setNeedsDisplay];
    a1 = v5;
  }

  result = [a1 timestamp];
  *v2 = v11;
  *(v2 + 8) = 0;
  return result;
}

void sub_24A62A8A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = (v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named);
  v8 = *(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = *(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style);
  v10 = [objc_opt_self() configurationWithPointSize:7 weight:v9 / 3.0];
  v11 = sub_24A62EBE4();
  v12 = [objc_opt_self() systemImageNamed_];

  v13 = [v12 imageByApplyingSymbolConfiguration_];
  if (v13)
  {
    [*(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button) setImage:v13 forState:0];
  }

  v14 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  [*(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button) setAdjustsImageWhenHighlighted_];
  [*(v4 + v14) setShowsTouchWhenHighlighted_];
  v15 = *(v4 + v14);
  if (a3)
  {
    v16 = v15;
    v17 = a3;
  }

  else
  {
    v18 = objc_opt_self();
    v19 = v15;
    v17 = [v18 whiteColor];
  }

  v20 = a3;
  [v15 setTintColor_];

  v21 = [*(v4 + v14) layer];
  [v21 setCornerRadius_];

  if (!a4 || (v22 = [a4 CGColor]) == 0)
  {
    v23 = [objc_opt_self() whiteColor];
    v24 = [v23 colorWithAlphaComponent_];

    v22 = [v24 CGColor];
  }

  v25 = [*(v4 + v14) layer];
  [v25 setBackgroundColor_];

  v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  v27 = *(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor);
  *(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor) = v26;
}

void sub_24A62AB98()
{
  v1 = sub_24A62EBE4();
  v2 = objc_opt_self();
  v3 = [v2 animationWithKeyPath_];

  v4 = sub_24A62E274();
  [v3 setFromValue_];

  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style + 32];
  v6 = sub_24A62E274();
  [v3 setToValue_];

  v7 = v3;
  [v7 setDuration_];
  v8 = *MEMORY[0x277CDA7B8];
  v41 = objc_opt_self();
  v9 = [v41 functionWithName_];
  [v7 setTimingFunction_];

  [v7 setAutoreverses_];
  LODWORD(v10) = 2139095039;
  [v7 setRepeatCount_];
  v11 = [v0 layer];
  [v11 removeAllAnimations];

  v12 = [v0 layer];
  v13 = [v7 keyPath];
  [v12 addAnimation:v7 forKey:v13];

  v14 = *&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor];
  v15 = &selRef_effectForBlurEffect_style_;
  if (v14)
  {
    v16 = v14;
    v17 = sub_24A62EBE4();
    v18 = [v2 animationWithKeyPath_];

    v19 = [v16 CGColor];
    [v18 setFromValue_];

    v20 = [objc_opt_self() whiteColor];
    v21 = [v20 colorWithAlphaComponent_];

    v22 = [v21 CGColor];
    [v18 setToValue_];

    v23 = v18;
    [v7 duration];
    [v23 setDuration_];
    v24 = [v7 timingFunction];
    [v23 setTimingFunction_];

    [v23 setAutoreverses_];
    [v7 repeatCount];
    [v23 setRepeatCount_];

    v25 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
    v26 = [*&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    [v26 removeAllAnimations];

    v27 = [*&v0[v25] layer];
    v28 = [v23 keyPath];
    [v27 addAnimation:v23 forKey:v28];

    v15 = &selRef_effectForBlurEffect_style_;
  }

  v29 = sub_24A62EBE4();
  v30 = [v2 animationWithKeyPath_];

  v31 = sub_24A62E274();
  [v30 setFromValue_];

  v32 = sub_24A62E274();
  [v30 setToValue_];

  v33 = v30;
  [v7 duration];
  [v33 setDuration_];
  v34 = [v41 functionWithName_];
  [v33 setTimingFunction_];

  [v33 setAutoreverses_];
  [v7 v15[188]];
  v36 = v35;

  LODWORD(v37) = v36;
  [v33 setRepeatCount_];

  v38 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label;
  v39 = [*&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
  [v39 removeAllAnimations];

  v40 = [*&v0[v38] layer];
  v42 = [v33 keyPath];
  [v40 addAnimation:v33 forKey:v42];
}

double sub_24A62B1A8(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink;
  if (!*(v2 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink))
  {
    v5 = *&a1 * 0.5;
    v6 = [objc_opt_self() displayLinkWithTarget:v2 selector:sel_ringDisplayLinkUpdateWithDisplaylink_];
    v7 = [objc_opt_self() currentRunLoop];
    [v6 addToRunLoop:v7 forMode:*MEMORY[0x277CBE738]];

    v8 = *(v2 + v3);
    *(v2 + v3) = v6;
    v9 = v6;

    if (a2)
    {
      v10 = 0x3FD0000000000000;
    }

    else
    {
      v10 = *&v5;
    }

    v11 = sub_24A5B1B3C(0, 0, 0x3F50624DD2F1A9FCLL, 0, v10, 0);
    v12 = (v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    v13 = (v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    if (v12[35] + *(v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308)
    {
      sub_24A55C6B4(1.0);

      *(v11 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    }

    else
    {
    }

    v14 = 1.0 - v13[5];
    v12[35] = v14;
    v12[30] = v14;
    v12[31] = 0.0;
    v15 = *(v2 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring);
    *(v2 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring) = v11;
  }

  return result;
}

uint64_t sub_24A62B3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A62B408(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_24A62B464(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C21AC00](a1, a2, v11);
      sub_24A50D7EC(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24A50D7EC(0, a5, a6);
    if (sub_24A62F2C4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24A62F2D4();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_24A62F154();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_24A62F164();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

void sub_24A62B67C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style;
  if (qword_27EF4ECB8 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_27EF5CB30;
  v4 = qword_27EF5CB38;
  v5 = qword_27EF5CB50;
  v6 = xmmword_27EF5CB40;
  *v2 = xmmword_27EF5CB20;
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v6;
  *(v2 + 48) = v5;
  v7 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  v8 = objc_opt_self();
  v9 = v4;
  *(v0 + v7) = [v8 buttonWithType_];
  v10 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring) = 0;
  v11 = v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_lastRenderTime;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_isEnabled) = 0;
  v12 = (v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named);
  *v13 = 0;
  v13[1] = 0;
  sub_24A62F444();
  __break(1u);
}

void sub_24A62B81C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring;
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring);
  if (v2)
  {
    v3 = &v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
    swift_beginAccess();
    if (vabdd_f64(v3[35] + *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40], *v3 + *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o]) > *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold])
    {
      v4 = *v3 + *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
    }

    else
    {
      v4 = v3[35] + *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40];
    }

    v5 = &OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting;
    if (v4 >= 0.99)
    {
      v6 = *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16];
      v7 = v2;
      v8 = sub_24A5B1B3C(0, 0, 0x3F50624DD2F1A9FCLL, 0, v6, 0);
      v9 = (v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v10 = (v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (v9[35] + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308)
      {
        sub_24A55C6B4(1.0);

        *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      }

      else
      {
      }

      v13 = 1.0 - v10[5];
      v9[35] = v13;
      v9[30] = v13;
      v9[31] = 0.0;
      v5 = &OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting;
      v14 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring);
      *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring) = v8;

      v15 = *(v0 + v1);
      *(v0 + v1) = 0;
    }

    v11 = (v0 + v5[192]);
    v12 = *v11;
    if (!*v11)
    {
      v18 = v4 * 6.28318531 + -1.57079633;
LABEL_21:
      v28 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
      [*(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button) frame];
      v29 = CGRectGetWidth(v35) * 0.5;
      [*(v0 + v28) frame];
      v30 = CGRectGetHeight(v36) * 0.5;
      v31 = v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style;
      v32 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style + 40);
      v33 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v29 startAngle:v30 endAngle:(*(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style) - v32) * 0.5 clockwise:{-1.57079633, v18}];
      [v33 setLineWidth_];
      [v33 setLineCapStyle_];
      v34 = [*(v0 + v28) tintColor];
      [v34 setStroke];

      [v33 strokeWithBlendMode:0 alpha:v4 * *(v31 + 48)];
      return;
    }

LABEL_13:
    v16 = &v12[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
    swift_beginAccess();
    v17 = *v16 + *&v12[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
    if (vabdd_f64(v16[35] + *&v12[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40], v17) <= *&v12[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold])
    {
      v17 = v16[35] + *&v12[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40];
    }

    v4 = 1.0 - v17;
    v18 = 4.71238898;
    if (v17 >= 0.99)
    {
      v19 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink;
      v20 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink);
      if (v20)
      {
        v21 = objc_opt_self();
        v22 = v12;
        v23 = v20;
        v24 = [v21 currentRunLoop];
        [v23 removeFromRunLoop:v24 forMode:*MEMORY[0x277CBE738]];

        v25 = *(v0 + v19);
      }

      else
      {
        v25 = 0;
      }

      *(v0 + v19) = 0;

      v26 = v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_lastRenderTime;
      *v26 = 0;
      *(v26 + 8) = 1;
      v27 = *v11;
      *v11 = 0;
    }

    goto LABEL_21;
  }

  v11 = (v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring);
  v12 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring);
  if (v12)
  {
    goto LABEL_13;
  }
}

id sub_24A62BC70(char a1, char a2, void (*a3)(void), uint64_t a4)
{
  result = [*&v4[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel] alpha];
  if (a1)
  {
    if (v10 != 1.0)
    {
LABEL_3:
      if (a2)
      {
        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = v4;
        *(v12 + 24) = a1 & 1;
        v25 = sub_24A62CB4C;
        v26 = v12;
        v21 = MEMORY[0x277D85DD0];
        v22 = 1107296256;
        v23 = sub_24A5A8458;
        v24 = &unk_285DAB880;
        v13 = _Block_copy(&v21);
        v14 = v4;

        v15 = swift_allocObject();
        *(v15 + 16) = a3;
        *(v15 + 24) = a4;
        v25 = sub_24A545F18;
        v26 = v15;
        v21 = MEMORY[0x277D85DD0];
        v22 = 1107296256;
        v23 = sub_24A5A1470;
        v24 = &unk_285DAB8D0;
        v16 = _Block_copy(&v21);
        sub_24A519360(a3, a4);

        [v11 animateWithDuration:v13 animations:v16 completion:0.5];
        _Block_release(v16);
        _Block_release(v13);
      }

      else
      {
        v17 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel;
        v18 = 0.0;
        if (a1)
        {
          v18 = 1.0;
        }

        [*&v4[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel] setAlpha_];
        v19 = *&v4[v17];
        v20 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel];
        [v19 alpha];
        [v20 setAlpha_];

        if (a3)
        {
          a3();
        }
      }

      return [v4 accessibilityShowViewHandler];
    }
  }

  else if (v10 != 0.0)
  {
    goto LABEL_3;
  }

  if (a3)
  {
    return (a3)(result);
  }

  return result;
}

void sub_24A62BEEC(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel;
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel);
  v5 = 0.0;
  if (a2)
  {
    v5 = 1.0;
  }

  [v4 setAlpha_];
  v6 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel);
  v7 = *(a1 + v3);
  v8 = v6;
  [v7 alpha];
  [v8 setAlpha_];
}

uint64_t sub_24A62BF94(uint64_t a1)
{
  v1 = a1;
  v34 = a1;
  v2 = type metadata accessor for FMFindingViewState();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A52934C(v1 + v10, v6);
  v33 = *v6;
  v11 = v3[7];
  v12 = sub_24A62E214();
  (*(*(v12 - 8) + 16))(&v9[v11], &v6[v11], v12);
  v13 = &v6[v3[8]];
  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = v6[v3[9]];
  v17 = &v6[v3[10]];
  *(v41 + 13) = *(v17 + 93);
  v18 = *(v17 + 5);
  v40 = *(v17 + 4);
  v41[0] = v18;
  v19 = *(v17 + 3);
  v38 = *(v17 + 2);
  v39 = v19;
  v20 = *(v17 + 1);
  v36 = *v17;
  v37 = v20;
  LOBYTE(v1) = v6[v3[11]];
  v21 = v6[v3[13]];
  v32 = v6[v3[14]];
  v22 = v6[v3[15]];
  v23 = v6[v3[16]];

  sub_24A508CE4(&v36, v35);
  sub_24A5D8A0C(v6);
  v24 = &v9[v3[17]];
  *v24 = 0;
  *(v24 + 1) = 0;
  *v9 = v33;
  v25 = &v9[v3[8]];
  *v25 = v15;
  *(v25 + 1) = v14;
  v9[v3[9]] = v16;
  v26 = &v9[v3[10]];
  v27 = v41[0];
  *(v26 + 4) = v40;
  *(v26 + 5) = v27;
  *(v26 + 93) = *(v41 + 13);
  v28 = v37;
  *v26 = v36;
  *(v26 + 1) = v28;
  v29 = v39;
  *(v26 + 2) = v38;
  *(v26 + 3) = v29;
  v9[v3[11]] = v1;
  v9[v3[12]] = 0;
  v9[v3[13]] = v21;
  v9[v3[14]] = v32;
  v9[v3[15]] = v22;
  v9[v3[16]] = v23;
  v30 = *(v34 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator);
  sub_24A60AB3C(v9);
  return sub_24A5D8A0C(v9);
}

void sub_24A62C1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel);
  if (a3)
  {
    v4 = v3;
    v5 = sub_24A62EBE4();
  }

  else
  {
    v6 = v3;
    v5 = 0;
  }

  v7 = v5;
  [v3 setText_];
}

void sub_24A62C2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v74 = a5;
  v77 = a3;
  v10 = type metadata accessor for FMFindingViewState();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v67[-v15];
  v17 = &v5[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state];
  swift_beginAccess();
  if (sub_24A62715C() != 4)
  {
    v18 = sub_24A62715C();
    if (v18 <= 1)
    {
      if (!v18)
      {

        goto LABEL_10;
      }
    }

    else if (v18 != 2 && v18 != 3)
    {
LABEL_9:
      a1 = 0;
      a2 = 0;
      goto LABEL_10;
    }

    v19 = sub_24A62F634();

    if (v19)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  v75 = a1;
  v76 = v17;
  v20 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel;
  v21 = [*&v6[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel] text];
  if (!v21)
  {
    if (!a2)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v22 = v21;
  v23 = sub_24A62EC14();
  v25 = v24;

  if (!a2)
  {

    v49 = *&v6[v20];
    [v49 setText_];

    v50 = swift_allocObject();
    *(v50 + 16) = v6;
    v51 = v6;
    sub_24A62BC70(0, 1, sub_24A62CAA8, v50);

    if (a4)
    {
      v52 = sub_24A62EBE4();
    }

    else
    {
      v52 = 0;
    }

    [v51 accessibilityDidUpdateWithTopLabelMessage:v52 instruction:0];

    goto LABEL_28;
  }

  if (v23 == v75 && a2 == v25)
  {

    goto LABEL_28;
  }

  v27 = sub_24A62F634();

  if ((v27 & 1) == 0)
  {
LABEL_19:
    v28 = *&v6[v20];

    v29 = sub_24A62EBE4();

    [v28 setText_];

    sub_24A62BC70(1, 1, 0, 0);
    sub_24A52934C(v76, v13);
    v73 = *v13;
    v30 = v10[5];
    v31 = sub_24A62E214();
    (*(*(v31 - 8) + 16))(&v16[v30], &v13[v30], v31);
    v32 = &v13[v10[6]];
    v34 = *v32;
    v33 = *(v32 + 1);
    v71 = v13[v10[7]];
    v35 = &v13[v10[8]];
    *&v84[13] = *(v35 + 93);
    v36 = *(v35 + 5);
    v83 = *(v35 + 4);
    *v84 = v36;
    v37 = *(v35 + 3);
    v81 = *(v35 + 2);
    v82 = v37;
    v38 = *(v35 + 1);
    aBlock = *v35;
    v80 = v38;
    v70 = v13[v10[9]];
    v39 = v10[12];
    v69 = v13[v10[11]];
    v72 = v13[v39];
    v40 = v13[v10[13]];
    v68 = v13[v10[14]];

    sub_24A508CE4(&aBlock, v78);
    sub_24A5D8A0C(v13);
    v41 = &v16[v10[15]];
    *v41 = 0;
    *(v41 + 1) = 0;
    *v16 = v73;
    v42 = &v16[v10[6]];
    *v42 = v34;
    *(v42 + 1) = v33;
    v16[v10[7]] = v71;
    v43 = &v16[v10[8]];
    v44 = *v84;
    *(v43 + 4) = v83;
    *(v43 + 5) = v44;
    *(v43 + 93) = *&v84[13];
    v45 = v80;
    *v43 = aBlock;
    *(v43 + 1) = v45;
    v46 = v82;
    *(v43 + 2) = v81;
    *(v43 + 3) = v46;
    v16[v10[9]] = v70;
    v16[v10[10]] = 1;
    v16[v10[11]] = v69;
    v16[v10[12]] = v72;
    v16[v10[13]] = v40;
    v16[v10[14]] = v68;
    v47 = *&v6[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator];
    sub_24A60AB3C(v16);
    if (a4)
    {
      v48 = sub_24A62EBE4();
    }

    else
    {
      v48 = 0;
    }

    v53 = sub_24A62EBE4();
    [v6 accessibilityDidUpdateWithTopLabelMessage:v48 instruction:v53];

    sub_24A5D8A0C(v16);
  }

LABEL_28:
  if (a4)
  {
    v54 = 1.0;
  }

  else
  {
    v54 = 0.1;
  }

  v55 = objc_opt_self();
  v56 = *&v6[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel];
  v57 = swift_allocObject();
  v58 = v77;
  v57[2] = v6;
  v57[3] = v58;
  v57[4] = a4;
  *&v81 = sub_24A62CAF0;
  *(&v81 + 1) = v57;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v80 = sub_24A5A8458;
  *(&v80 + 1) = &unk_285DAB830;
  v59 = _Block_copy(&aBlock);

  v60 = v6;
  v61 = v56;

  [v55 transitionWithView:v61 duration:5242880 options:v59 animations:0 completion:v54];
  _Block_release(v59);

  sub_24A59232C((*(v76 + v10[8] + 96) & 0xFC000000) != 0x4000000);
  if (sub_24A5FEA14(v74) == 0xD000000000000016 && 0x800000024A63D070 == v62)
  {
  }

  else
  {
    v63 = sub_24A62F634();

    if ((v63 & 1) == 0)
    {
      v65 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton];
      v66 = [v65 layer];
      [v66 removeAllAnimations];

      v64 = [*&v65[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
      [v64 removeAllAnimations];

      goto LABEL_37;
    }
  }

  v64 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton];
  sub_24A62AB98();
LABEL_37:
}

uint64_t sub_24A62CA70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A62CAB0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A62CAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A62CB14()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A62CB58()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *FMFindingDebuggableViewController.init(mockSession:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController) = 0;
  v3 = OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];

  v5 = sub_24A5CF524(v4);

  v6 = objc_allocWithZone(type metadata accessor for FMFindingDebugViewController());
  v7 = v5;
  v8 = sub_24A5DA24C(v7, a1);
  v9 = OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController;
  v10 = *&v7[OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController];
  *&v7[OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController] = v8;

  v11 = *&v7[v9];
  if (v11)
  {
    *(v11 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_delegate + 8) = &off_285DAB8F8;
    swift_unknownObjectWeakAssign();
  }

  return v7;
}

void sub_24A62CD48()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for FMFindingDebuggableViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_24A62D238();
}

id sub_24A62CDE0(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FMFindingDebuggableViewController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  return [*&v1[OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer] setHidden_];
}

id sub_24A62CED0(id result)
{
  if (result == 1)
  {
    return [*(v1 + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer) setHidden_];
  }

  return result;
}

void sub_24A62CF20(_WORD *a1, __int16 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingViewState();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 8);
  if (!sub_24A629198(a2, a1))
  {
    v10 = *a2;
    v11 = (v10 >> 13) & 3;
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = sub_24A62DF44();
        *(&v42 + 1) = v12;
        *&v43 = sub_24A5964D0();
        v13 = sub_24A5292E8(&v41);
        (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D089D0], v12);
        LOBYTE(v12) = MEMORY[0x24C219850](&v41);
        sub_24A508C54(&v41);
        if (v12)
        {
LABEL_5:
          sub_24A5C7770(1, a2);
          v14 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController);
          v15 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
          swift_beginAccess();
          sub_24A52934C(v3 + v15, v9);
          v16 = v14;
          sub_24A5FD8E0(v9);

          sub_24A5D8A0C(v9);
          sub_24A5C6678();
          sub_24A5C4CDC(a1, a2);
          goto LABEL_8;
        }
      }

      else if ((v10 & 0x8100) == 0x100)
      {
        goto LABEL_5;
      }
    }

    sub_24A5C4930(a1, a2);
  }

LABEL_8:
  v17 = *(v3 + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController);
  if (!v17)
  {
    return;
  }

  v18 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);
  v19 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  v20 = (v19 + *(v6 + 32));
  v21 = v20[5];
  v45 = v20[4];
  v46[0] = v21;
  *(v46 + 13) = *(v20 + 93);
  v22 = v20[3];
  v43 = v20[2];
  v44 = v22;
  v23 = v20[1];
  v41 = *v20;
  v42 = v23;
  v24 = *(v18 + 16);
  v25 = v17;

  if (!v24)
  {
    sub_24A508CE4(&v41, v35);
    goto LABEL_13;
  }

  sub_24A508CE4(&v41, v35);
  v26 = sub_24A515A5C(&v41);
  if ((v27 & 1) == 0)
  {
LABEL_13:
    sub_24A577158(v38);
    v29 = v38[0];
    v30 = v38[1];
    v31 = v38[2];
    v32 = v39;
    v33 = v40;

    sub_24A517ABC(&v41);
    goto LABEL_14;
  }

  v28 = *(v18 + 56) + 40 * v26;
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  v32 = *(v28 + 24);
  v33 = *(v28 + 32);
  sub_24A517ABC(&v41);

LABEL_14:
  v35[0] = v29;
  v35[1] = v30;
  v35[2] = v31;
  v36 = v32;
  v37 = v33;
  sub_24A5DC0F4(v35);
}

void sub_24A62D238()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer;
  [v3 addSubview_];

  v6 = v2;
  [v0 addChildViewController_];
  [*&v0[v5] setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v6 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = [v6 view];
  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v9 setPreservesSuperviewLayoutMargins_];

  v10 = *&v0[v5];
  v11 = [v6 view];

  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v10 addSubview_];

  [v6 didMoveToParentViewController_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24A633820;
  v13 = [*&v0[v5] topAnchor];
  v14 = [v6 view];

  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v12 + 32) = v16;
  v17 = [*&v0[v5] bottomAnchor];
  v18 = [v6 view];

  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v12 + 40) = v20;
  v21 = [*&v0[v5] leadingAnchor];
  v22 = [v6 view];

  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v12 + 48) = v24;
  v25 = [*&v0[v5] trailingAnchor];
  v26 = [v6 view];

  if (!v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = objc_opt_self();
  v28 = [v26 trailingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v12 + 56) = v29;
  sub_24A509158();
  v30 = sub_24A62ED54();

  [v27 activateConstraints_];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24A635FE0;
  v32 = [*&v0[v5] bottomAnchor];
  v33 = [v0 view];
  if (!v33)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(v31 + 32) = v36;
  v37 = [*&v0[v5] leadingAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v31 + 40) = v41;
  v42 = [*&v0[v5] trailingAnchor];
  v43 = [v0 view];
  if (!v43)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = [v43 trailingAnchor];

  v46 = [v42 constraintEqualToAnchor_];
  *(v31 + 48) = v46;
  v47 = sub_24A62ED54();

  [v27 activateConstraints_];
}

void sub_24A62D8B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer);
}

id FMFindingDebuggableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingDebuggableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FMFindingDebuggableViewController()
{
  result = qword_27EF52638;
  if (!qword_27EF52638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A62DA70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 289))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A62DA90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 288) = 0;
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

  *(result + 289) = v3;
  return result;
}

uint64_t sub_24A62DB1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE900000000000065;
  v4 = 0x7261656E696CLL;
  if (v2 == 1)
  {
    v4 = 0x7672754364617571;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7672754364617571;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF637241646E4165;
  }

  v7 = 0xE900000000000065;
  v8 = 0x7261656E696CLL;
  if (*a2 == 1)
  {
    v8 = 0x7672754364617571;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7672754364617571;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF637241646E4165;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A62F634();
  }

  return v11 & 1;
}

uint64_t sub_24A62DC08()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A62DCA8()
{
  *v0;
  *v0;
  sub_24A62EC74();
}

uint64_t sub_24A62DD34()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A62DDD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A62DEC4();
  *a2 = result;
  return result;
}

void sub_24A62DE00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF637241646E4165;
  v4 = 0xE900000000000065;
  v5 = 0x7672754364617571;
  if (v2 != 1)
  {
    v5 = 0x7261656E696CLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7672754364617571;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24A62DE70()
{
  result = qword_27EF52648;
  if (!qword_27EF52648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52648);
  }

  return result;
}

uint64_t sub_24A62DEC4()
{
  v0 = sub_24A62F4B4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}